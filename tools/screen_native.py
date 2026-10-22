#!/usr/bin/env python3
"""Drives the stock Sovol/TJC screen's own `printing` page (21) directly from Moonraker state -
no KlipperScreen, no X11, no JPEG mirroring. Every field already exists as a native widget on
that page in the stock .tft (unpatched): `t0` filename, `t2` time remaining, `t4` speed, `t6`/`j0`
progress, `extruder_temp`/`extru_target`/`hot_bed_temp`/`bed_target` temperatures, `exp0` a
160x160 thumbnail. Only changed fields are sent, as plain `object.attr=value` commands - no
`twfile`/`ram/` traffic in the hot path at all, so none of the `delfile`-cascade/`ramv`-flicker
problems documented for the JPEG bridge (see screen_bridge.py's docstring) apply here. This is
the "fast and light" architecture: see the klipperscreen-goal memory for why JPEG-mirroring was
abandoned in favor of this.

  screen_native.py --port /dev/cu.usbmodemXXXX --moonraker 192.168.52.84:7125
  screen_native.py --port /dev/cu.usbmodemXXXX --latency-test 50   (measure the real per-command
                                                                     round-trip cost before trusting
                                                                     this approach at all)
"""
import argparse
import os
import sys
import time

import requests

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from screen_bridge import Link  # noqa: E402

PAGE = 21
QUERY_OBJECTS = "print_stats&extruder&heater_bed&virtual_sdcard&gcode_move&display_status"
POLL_INTERVAL = 1.0


def fmt_time(seconds):
    seconds = max(0, int(seconds))
    return f"{seconds // 3600}h{(seconds % 3600) // 60}m"


def build_fields(status):
    """printer-objects status (as returned by Moonraker) -> {widget.attr: value} for page 21."""
    ps = status.get("print_stats", {})
    ex = status.get("extruder", {})
    bed = status.get("heater_bed", {})
    sd = status.get("virtual_sdcard", {})
    gm = status.get("gcode_move", {})

    progress = sd.get("progress", 0.0) or 0.0
    percent = round(progress * 100)

    duration = ps.get("print_duration", 0.0) or 0.0
    remaining = duration / progress - duration if progress > 0.001 else 0.0

    filename = ps.get("filename") or ""

    return {
        't0.txt': f'"{filename}"',
        't2.txt': f'"{fmt_time(remaining)}"',
        't4.txt': f'"{gm.get("speed", 0.0):.0f}mm/s"',
        't6.txt': f'"{percent}%"',
        'j0.val': percent,
        'extruder_temp.txt': f'"{ex.get("temperature", 0.0):.0f}℃/"',
        'extru_target.txt': f'"{ex.get("target", 0.0):.0f}℃"',
        'hot_bed_temp.txt': f'"{bed.get("temperature", 0.0):.0f}℃/"',
        'bed_target.txt': f'"{bed.get("target", 0.0):.0f}℃"',
    }


class Moonraker:
    def __init__(self, host, port=7125):
        self.base = f"http://{host}:{port}"

    def query(self):
        # Moonraker's query string is "obj&obj2=field,field", not key=value pairs - build it raw
        r = requests.get(f"{self.base}/printer/objects/query?{QUERY_OBJECTS}", timeout=2.0)
        r.raise_for_status()
        return r.json()["result"]["status"]


def latency_test(link, n):
    """Sends n fire-and-forget attribute writes back to back, then one barrier - this is the
    core premise of the whole architecture (see klipperscreen-goal memory): if this is not
    dramatically faster than the ~0.3-1s twfile floor measured for the JPEG bridge, the native-
    widget approach isn't actually a win and the plan needs rethinking."""
    t = time.time()
    for i in range(n):
        link.command(f't0.txt="test {i}"')
    ok = link.barrier()
    elapsed = time.time() - t
    print(f"{n} commands + 1 barrier in {elapsed:.3f}s ({elapsed / n * 1000:.1f} ms/command), "
          f"barrier ok={ok}")


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--port", required=True)
    ap.add_argument("--moonraker", default="192.168.52.84:7125")
    ap.add_argument("--interval", type=float, default=POLL_INTERVAL)
    ap.add_argument("--seconds", type=float, default=None, help="stop after this long (default: run forever)")
    ap.add_argument("--latency-test", type=int, default=None, metavar="N",
                     help="instead of the real loop, send N dummy commands back to back and report timing")
    ap.add_argument("--verbose", action="store_true")
    args = ap.parse_args()

    host, _, port = args.moonraker.partition(":")
    mr = Moonraker(host, int(port) if port else 7125)

    link = Link(args.port, page=PAGE, hide=(), verbose=args.verbose)
    link.open()
    try:
        if args.latency_test:
            latency_test(link, args.latency_test)
            return

        last = {}
        end = time.time() + args.seconds if args.seconds else None
        while end is None or time.time() < end:
            t = time.time()
            try:
                status = mr.query()
            except requests.RequestException as e:
                print(f"moonraker query failed: {e}")
                time.sleep(args.interval)
                continue

            fields = build_fields(status)
            changed = {k: v for k, v in fields.items() if last.get(k) != v}
            for k, v in changed.items():
                link.command(f"{k}={v}")
            if changed:
                link.barrier()
                print(f"sent {len(changed)} field(s): {list(changed)}")
            last = fields

            sleep_left = args.interval - (time.time() - t)
            if sleep_left > 0:
                time.sleep(sleep_left)
    finally:
        link.close()


if __name__ == "__main__":
    main()
