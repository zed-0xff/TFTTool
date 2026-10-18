#!/usr/bin/env python3
"""Hardware probe for the Sovol / TJC (Nextion compatible) serial screen.

Answers the questions that decide whether KlipperScreen can run on the stock screen:
  scan    which baud rate answers, model / firmware / flash size (`connect` -> `comok ...`)
  touch   raw touch frames (`sendxy=1` -> 0x67/0x68 x,y,state) next to the stock 0x65 component events
  draw    do the stock firmware's drawing commands (fill / line / cir / xstr) work, and what do they answer
  upload  timed `twfile` upload of a JPEG into the screen's ram/ file system (protocol of sent_jpg_to_tjc())
  raw     send any command, print every reply
  flash   write a .tft with `whmi-wri` (what Sovol's `uart` does), only after the .tft checksums verified

Needs pyserial. Stop the stock UI client first (it owns the port): `sudo systemctl stop <service>` / kill it.
Examples:
  screen_probe.py --port /dev/ttyS4 scan
  screen_probe.py --port /dev/ttyS4 touch --seconds 20
  screen_probe.py --port /dev/ttyS4 upload tile.jpg --repeat 5
  screen_probe.py --port /dev/ttyS4 raw 'page 1'
"""
import argparse
import os
import struct
import sys
import time

BAUDS = [115200, 921600, 230400, 460800, 57600, 38400, 19200, 9600, 4800, 2400]
END = b"\xff\xff\xff"

# Replies of the Nextion instruction set (bkcmd=3 reports success and failure)
RETURN_CODES = {
    0x00: "invalid instruction", 0x01: "instruction successful", 0x02: "invalid component id",
    0x03: "invalid page id", 0x04: "invalid picture id", 0x05: "invalid font id", 0x06: "file operation failed",
    0x09: "invalid crc", 0x11: "invalid baud rate setting", 0x12: "invalid waveform id or channel",
    0x1a: "invalid variable name or attribute", 0x1b: "invalid variable operation", 0x1c: "assignment failed",
    0x1d: "eeprom operation failed", 0x1e: "invalid parameter quantity", 0x1f: "io operation failed",
    0x20: "undefined escape characters", 0x23: "too long variable name",
    0x86: "device entered sleep", 0x87: "device woke up", 0x88: "system started", 0x89: "start sd card upgrade",
}


def modbus_crc(data: bytes) -> int:
    """CRC-16/MODBUS (init 0xffff, poly 0xa001), the check_crc() of the stock client."""
    crc = 0xffff
    for b in data:
        crc ^= b
        for _ in range(8):
            crc = (crc >> 1) ^ 0xa001 if crc & 1 else crc >> 1
    return crc


def twfile_packets(data: bytes, chunk: int = 4096 - 12 - 2):
    """Frames of the `twfile` transparent file transfer: 12 byte header + data + CRC (low byte first)."""
    head = bytes([0x3A, 0xA1, 0xBB, 0x44, 0x7F, 0xFF, 0xFE, 0x01])
    for pid, pos in enumerate(range(0, len(data), chunk)):
        part = data[pos:pos + chunk]
        yield head + struct.pack("<HH", pid, len(part) + 2) + part + struct.pack("<H", modbus_crc(part))


TWFILE_EXIT = bytes([0x3A, 0xA1, 0xBB, 0x44, 0x7F, 0xFF, 0xFE, 0x00, 0xFF, 0xFF, 0x00, 0x00])


def parse_frame(f: bytes) -> str:
    """Readable description of one reply frame (without the FF FF FF terminator)."""
    if not f:
        return "(empty)"
    c = f[0]
    if f.startswith(b"comok"):
        return "comok " + f.decode("latin-1")
    if c == 0x65 and len(f) >= 4:
        return f"touch event: page {f[1]} component {f[2]} {'press' if f[3] else 'release'}"
    if c == 0x66 and len(f) >= 2:
        return f"current page {f[1]}"
    if c in (0x67, 0x68) and len(f) >= 6:
        x, y = struct.unpack(">HH", f[1:5])
        kind = "touch" if c == 0x67 else "touch (sleep)"
        return f"{kind} x={x} y={y} {'press' if f[5] else 'release'}"
    if c == 0x70:
        return "string: " + f[1:].decode("latin-1", "replace")
    if c == 0x71 and len(f) >= 5:
        return f"number: {struct.unpack('<i', f[1:5])[0]}"
    if c in RETURN_CODES:
        return RETURN_CODES[c]
    return "unknown " + f.hex(" ")


class Screen:
    def __init__(self, port, baud, verbose=False):
        import serial
        self.ser = serial.serial_for_url(port, baudrate=baud, timeout=0.05) if "://" in port \
            else serial.Serial(port, baud, timeout=0.05)
        self.verbose = verbose
        self.buf = b""

    def close(self):
        self.ser.close()

    def send(self, cmd):
        data = cmd.encode("utf-8") if isinstance(cmd, str) else cmd
        if self.verbose:
            print(f"  > {cmd!r}")
        self.ser.write(data + END)
        self.ser.flush()

    def frames(self, seconds):
        """Collects frames (split at FF FF FF) for the given time."""
        end = time.time() + seconds
        out = []
        while time.time() < end:
            self.buf += self.ser.read(256)
            while END in self.buf:
                f, self.buf = self.buf.split(END, 1)
                out.append(f)
        return out

    def ask(self, cmd, seconds=0.5):
        self.ser.reset_input_buffer()
        self.buf = b""
        self.send(cmd)
        return self.frames(seconds)


def cmd_scan(a):
    for baud in ([a.baud] if a.baud else BAUDS):
        s = Screen(a.port, baud, a.verbose)
        s.ser.write(END)
        got = s.ask("connect", 0.6)
        s.close()
        print(f"{baud:>7}: " + ("; ".join(parse_frame(f) for f in got) if got else "no answer"))
        if any(f.startswith(b"comok") for f in got):
            fields = next(f for f in got if f.startswith(b"comok")).decode("latin-1").split(",")
            names = ["touch/status", "reserved", "model", "firmware", "mcu code", "serial", "flash size"]
            for n, v in zip(names, [fields[0][6:]] + fields[1:]):
                print(f"           {n}: {v}")
            return 0
    print("no baud rate answered; wrong port, UI client still running, or the screen is in a different state")
    return 1


def cmd_touch(a):
    s = Screen(a.port, a.baud or 115200, a.verbose)
    for c in ("bkcmd=3", "sendxy=1"):
        print(c, "->", [parse_frame(f) for f in s.ask(c)])
    print(f"touch the screen for {a.seconds} s (Ctrl-C to stop)")
    t0, n = time.time(), 0
    try:
        while time.time() - t0 < a.seconds:
            for f in s.frames(0.2):
                n += 1
                print(f"{time.time() - t0:7.2f}s  {parse_frame(f)}")
    except KeyboardInterrupt:
        pass
    s.ask("sendxy=0")
    print(f"{n} frames")


def cmd_draw(a):
    s = Screen(a.port, a.baud or 115200, a.verbose)
    s.ask("bkcmd=3")
    tests = [
        ("fill 0,0,480,272,BLACK", "fill whole screen"),
        ("fill 10,10,100,60,RED", "fill rectangle"),
        ("line 0,0,479,271,GREEN", "line"),
        ("cir 240,136,50,BLUE", "circle"),
        ("draw 120,80,360,200,WHITE", "rectangle outline"),
        ('xstr 130,90,220,40,0,WHITE,BLACK,0,1,1,"KlipperScreen"', "text (font 0)"),
        ("pic 0,0,0", "picture 0"),
    ]
    for cmd, what in tests:
        got = s.ask(cmd, 0.4)
        print(f"{what:20} {cmd:60} -> {[parse_frame(f) for f in got] or 'no reply'}")
        time.sleep(0.4)
    print("look at the screen: which of these showed up?")


def cmd_raw(a):
    s = Screen(a.port, a.baud or 115200, a.verbose)
    for cmd in a.commands:
        print(cmd, "->", [parse_frame(f) for f in s.ask(cmd, a.wait)] or "no reply")


def read_acks(ser, timeout):
    """Waits for a single byte answer of the file transfer: 0x05 ok, 0x04 failed; returns None on timeout."""
    end = time.time() + timeout
    while time.time() < end:
        b = ser.read(1)
        if b and b[0] in (0x05, 0x04):
            return b[0]
    return None


def cmd_upload(a):
    data = open(a.file, "rb").read()
    s = Screen(a.port, a.baud or 115200, a.verbose)
    rates = []
    for i in range(a.repeat):
        s.ser.reset_input_buffer()
        t0 = time.time()
        s.send(f'twfile "{a.target}",{len(data)}')
        time.sleep(0.1)
        ok = True
        for pkt in twfile_packets(data):
            s.ser.write(pkt)
            s.ser.flush()
            ack = read_acks(s.ser, 3.0)
            if ack != 0x05:
                print(f"  packet failed ({'timeout' if ack is None else 'screen answered 0x04'})")
                for _ in range(3):
                    s.ser.write(TWFILE_EXIT)
                ok = False
                break
        dt = time.time() - t0
        if ok:
            rates.append(len(data) / dt)
            print(f"upload {i + 1}: {len(data)} bytes in {dt:.2f} s = {len(data) / dt / 1024:.1f} KiB/s")
        s.frames(0.3)
    if rates:
        print(f"average {sum(rates) / len(rates) / 1024:.1f} KiB/s; a full 480x272 frame as JPEG at this speed: "
              f"~{len(data) / (sum(rates) / len(rates)):.2f} s for a file of this size")


def cmd_flash(a):
    here = os.path.dirname(os.path.abspath(__file__))
    sys.path.insert(0, os.path.join(here, ".."))
    import TFTTool
    data = open(a.file, "rb").read()
    tft = TFTTool.TFTFile(data)
    bad = {k: v for k, v in tft.verifyChecksums().items() if not v[2]}
    if bad:
        print("refusing to flash, checksum mismatch:", bad)
        return 1
    print(f"{a.file}: model {tft.model}, checksums ok, {len(data)} bytes")
    if not a.yes_flash:
        print("dry run; add --yes-flash to really write it")
        return 0
    chunk = 4096
    s = Screen(a.port, 115200, a.verbose)
    s.ser.write(END)
    s.ser.write(f"whmi-wri {len(data)},{a.flash_baud},0".encode() + END)
    s.ser.flush()
    time.sleep(0.1)
    s.ser.baudrate = a.flash_baud
    if read_acks(s.ser, 3.0) != 0x05:
        print("screen did not accept the upload command")
        return 1
    for pos in range(0, len(data), chunk):
        for p in range(pos, min(pos + chunk, len(data)), 2048):
            s.ser.write(data[p:min(p + 2048, pos + chunk, len(data))])
        s.ser.flush()
        if read_acks(s.ser, 5.0) != 0x05:
            print(f"no ack after {pos + chunk} bytes")
            return 1
        print(f"\r{min(pos + chunk, len(data)) * 100 // len(data)}%", end="", flush=True)
    print("\ndone; give the screen a few seconds to apply the update")


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--port", required=True, help="serial device, e.g. /dev/ttyS4 (or a pyserial url)")
    p.add_argument("--baud", type=int, help="baud rate (default 115200; scan tries all when omitted)")
    p.add_argument("-v", "--verbose", action="store_true")
    sub = p.add_subparsers(dest="cmd", required=True)
    sub.add_parser("scan").set_defaults(fn=cmd_scan)
    t = sub.add_parser("touch")
    t.add_argument("--seconds", type=float, default=15)
    t.set_defaults(fn=cmd_touch)
    sub.add_parser("draw").set_defaults(fn=cmd_draw)
    r = sub.add_parser("raw")
    r.add_argument("commands", nargs="+")
    r.add_argument("--wait", type=float, default=0.5)
    r.set_defaults(fn=cmd_raw)
    u = sub.add_parser("upload")
    u.add_argument("file")
    u.add_argument("--target", default="ram/probe.jpg")
    u.add_argument("--repeat", type=int, default=3)
    u.set_defaults(fn=cmd_upload)
    f = sub.add_parser("flash")
    f.add_argument("file")
    f.add_argument("--flash-baud", type=int, default=921600)
    f.add_argument("--yes-flash", action="store_true", help="really write the file (otherwise only verify it)")
    f.set_defaults(fn=cmd_flash)
    a = p.parse_args()
    sys.exit(a.fn(a) or 0)


if __name__ == "__main__":
    main()
