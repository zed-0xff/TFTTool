import collections
import json
import os
import shutil
import struct
import subprocess
import unittest

from helpers import HERE, ROOT, T, load


class StructAttributes(unittest.TestCase):
    def test_text_struct(self):
        st = bytearray(84)
        st[56], st[61] = 1, 2
        struct.pack_into("<H", st, 62, 0x1234)      # bco (sta 1)
        struct.pack_into("<H", st, 64, 0xffff)      # pco
        st[66], st[67] = 1, 2
        struct.pack_into("<H", st, 70, 300)
        struct.pack_into("<I", st, 72, 0x1008 + 100)
        st[76] = 1
        blob = bytes(100) + "héllo".encode() + b"\0" + b"junk"
        a = T.TFTFile._structAttributes(0x74, bytes(st), blob, 0x1008)
        self.assertEqual(a, {"sta": 1, "font": 2, "bco": 0x1234, "pco": 0xffff, "xcen": 1, "ycen": 2, "txt_maxl": 300,
                             "isbr": 1, "txt": "héllo"})

    def test_garbage_is_rejected(self):
        st = bytearray(84)
        st[66] = 99                                   # xcen out of range
        self.assertIsNone(T.TFTFile._structAttributes(0x74, bytes(st), b"", 0))
        self.assertIsNone(T.TFTFile._structAttributes(0x05, bytes(84), b"", 0))


EXT = os.path.dirname(ROOT)
PAIRS = [os.path.join(EXT, *p) for p in (("QIDI_PLUS3", "UI", "800_480_PLUS"),
                                         ("klipmi", "hmi", "openq1", "Q1_UI_mod"),
                                         ("qidi-plus4-klipmi", "hmi", "openp4", "xindi_800_480_V1.7.1"))]
PAIRS = [p for p in PAIRS if os.path.isfile(p + ".HMI") and os.path.isfile(p + ".tft")]


@unittest.skipUnless(shutil.which("node") and PAIRS, "needs node and the QIDI / klipmi sample projects")
class SeriesFourGroundTruth(unittest.TestCase):
    """The struct fields were found by comparing series 4 .tft files with their .HMI source; check them again."""

    def test_fields(self):
        checked = collections.Counter()
        bad = collections.Counter()
        for base in PAIRS:
            out = subprocess.run(["node", os.path.join(HERE, "hmi_dump.js"), base + ".HMI"], capture_output=True, check=True)
            hmi = json.loads(out.stdout)
            tft = load(base + ".tft")
            codes = {v: k for k, v in T.TFTFile._nextion_type_names.items()}
            for pg in tft.getReadableData()["pages"]:
                sig = [int(o["type"][8:], 16) if o["type"].startswith("unknown_0x") else codes.get(o["type"])
                       for o in pg["objects"]]
                cands = [p for p in hmi if [h["attrs"]["type"]["v"] for h in p["objs"]] == sig]
                if len(cands) > 1:      # several pages with the same components: compare the positions
                    cands = [p for p in cands if all(
                        (h["attrs"]["x"]["v"], h["attrs"]["y"]["v"]) == (o["x"], o["y"])
                        for h, o in zip(p["objs"], pg["objects"]) if "v" in h["attrs"].get("x", {}))]
                if not cands:
                    continue
                for o, h in zip(pg["objects"], cands[0]["objs"]):
                    for k, v in (o.get("attributes") or {}).items():
                        if o["type"] == "page" and k == "pic":
                            continue            # pages with the same components and another background look alike here
                        if o["type"] == "button" and k in ("picc", "picc2") and h["attrs"].get("sta", {}).get("v") == 3:
                            continue            # without a background (sta 3) the picture fields are not stored
                        hv = h["attrs"].get(k, {})
                        if isinstance(v, int) and "v" in hv:
                            checked[(o["type"], k)] += 1
                            bad[(o["type"], k)] += v != hv["v"]
        self.assertGreater(sum(checked.values()), 3000)
        for key, n in checked.items():
            if n >= 8:      # (pages with the same components are matched by their positions, which is not always right)
                self.assertLess(bad[key] / n, 0.05, (key, bad[key], n))
        for typ in ("text", "button", "number", "timer", "picture", "progress_bar"):
            self.assertTrue(any(k[0] == typ for k in checked), f"no {typ} field checked")


if __name__ == "__main__":
    unittest.main()
