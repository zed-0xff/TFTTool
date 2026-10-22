#!/usr/bin/env python3
"""Patches a series 4 .tft (TJC, e.g. the Sovol SV08 Max screen): moves / resizes one object and fixes the checksums.

  patch_tft.py in.tft out.tft --page 20 --object 10 --geometry 0,0,480,272

page / object are the page number and the index of the object on that page (see pages/NNN.nasm of the TFTTool output:
"object id 10" is listed in order; use --list to print the objects of a page). The geometry is x,y,w,h. The external
picture object of the stock preview page (page 20, `ram/176.jpg`) becomes a full screen picture this way.
Flash the result with `screen_probe.py flash` (dry run by default) or the stock `uart` tool.
"""
import argparse
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
import TFTTool  # noqa: E402


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("input")
    p.add_argument("output", nargs="?")
    p.add_argument("--page", type=int, required=True)
    p.add_argument("--object", type=int, help="index of the object on the page")
    p.add_argument("--geometry", help="x,y,w,h")
    p.add_argument("--list", action="store_true", help="list the objects of the page")
    a = p.parse_args()
    tft = TFTTool.TFTFile(open(a.input, "rb").read())
    if a.list or a.object is None:
        pages = tft.getReadableData()["pages"]
        for k, o in enumerate(pages[a.page]["objects"]):
            att = o.get("attributes") or {}
            print(f"{k:3} id {o['id']:<4} {o['type']:<12} {o.get('name') or '':<8} x={o['x']} y={o['y']} w={o['w']} h={o['h']}"
                  + (f"  path={att['path']}" if "path" in att else ""))
        return 0
    if not a.geometry or not a.output:
        p.error("--geometry and an output file are required")
    x, y, w, h = (int(v) for v in a.geometry.split(","))
    for where, old, new in tft.setObjectGeometry(a.page, a.object, x, y, w, h):
        print(f"{where}: {old} -> {new}")
    bad = {k: v for k, v in tft.verifyChecksums().items() if not v[2]}
    if bad:
        print("checksum error:", bad)
        return 1
    with open(a.output, "wb") as f:
        f.write(tft.raw)
    check = TFTTool.TFTFile(tft.raw)
    o = check.getReadableData()["pages"][a.page]["objects"][a.object]
    print(f"written {a.output}; decoded again: x={o['x']} y={o['y']} w={o['w']} h={o['h']}, checksums ok")
    return 0


if __name__ == "__main__":
    sys.exit(main())
