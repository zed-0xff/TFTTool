#!/usr/bin/env python3
"""Tap-to-picture benchmark for the fast-blit mirror: injects taps into the KlipperScreen Xvfb
(Temperature, then the back arrow, ...) and measures, per transition, how long the real screen
needs until the new picture is fully sent (first rectangle / last rectangle) and how many bytes.

  DISPLAY=127.0.0.1:99 bench_ks.py --port /dev/cu.usbmodemXXXX --baud 115200 --n 6
"""
import argparse
import os
import statistics as st
import sys
import time

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import screen_fastblit as fb  # noqa: E402
from screen_bridge import XSource  # noqa: E402

TAPS = [("temperature", 424, 55), ("back", 23, 33), ("move", 317, 55), ("back", 23, 33)]


def run(port, baud, n, settle=0.6):
    link = fb.FastLink(port, baud)
    link.open()
    src = XSource("127.0.0.1:99")
    bridge = fb.FastBridge(link, src, fps=fb.DEFAULT_FPS, cpu_budget=fb.DEFAULT_CPU_BUDGET, log=lambda *_: None)
    results = []
    try:
        def pump(duration):
            end = time.time() + duration
            while time.time() < end:
                bridge.step()
                time.sleep(0.002)
        pump(2.0)                                   # initial full frame + settle
        for i in range(n):
            name, x, y = TAPS[i % len(TAPS)]
            sent0 = bridge.stats["rects"]
            b0 = bridge.stats["bytes"]
            t0 = time.time()
            src.inject("press", x, y)
            time.sleep(0.05)
            src.inject("release", x, y)
            first = last = None
            idle_since = time.time()
            last_rects = sent0
            while True:
                bridge.step()
                time.sleep(0.002)
                r = bridge.stats["rects"]
                now = time.time()
                if r != last_rects:
                    if first is None:
                        first = now - t0
                    last = now - t0
                    last_rects = r
                    idle_since = now
                if first is not None and now - idle_since > settle:
                    break
                if now - t0 > 15:
                    break
            lat = [l for l in bridge.stats.get("lat", []) if l[0] >= t0]
            # our pipeline latency: capture of a changed frame -> first batch on the wire / whole frame sent
            lag_first = (lat[0][1] - lat[0][0]) if lat else None
            lag_frame = st.median(l[2] - l[0] for l in lat) if lat else None
            react = (lat[0][1] - t0) if lat else None          # tap -> first pixels (includes KS's own ~66 ms)
            results.append((name, react, lag_frame, bridge.stats["bytes"] - b0, len(lat), lag_first))
            print(f"{name:12s} tap->first pixels {react if react is None else round(react, 3)}  "
                  f"pipeline lag first batch {lag_first if lag_first is None else round(lag_first, 3)}  "
                  f"median frame lag {lag_frame if lag_frame is None else round(lag_frame, 3)}  "
                  f"{bridge.stats['bytes'] - b0} B  {len(lat)} frames", flush=True)
        ok = [r for r in results if r[1] is not None]
        print(f"MEDIAN tap->first pixels {st.median(r[1] for r in ok):.3f} s   pipeline lag first batch "
              f"{st.median(r[5] for r in ok):.3f} s   frame lag {st.median(r[2] for r in ok):.3f} s   "
              f"bytes {st.median(r[3] for r in ok):.0f}   failed {bridge.stats['failed']}")
    finally:
        link.close()


if __name__ == "__main__":
    p = argparse.ArgumentParser()
    p.add_argument("--port", required=True)
    p.add_argument("--baud", type=int, default=115200)
    p.add_argument("--n", type=int, default=6)
    a = p.parse_args()
    run(a.port, a.baud, a.n)
