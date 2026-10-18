import json
import os
import shutil
import struct
import subprocess
import unittest

from helpers import HERE, ROOT, T, load

QIDI = os.path.join(os.path.dirname(ROOT), "QIDI_PLUS3", "UI", "800_480_PLUS")


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
        self.assertIsNone(T.TFTFile._structAttributes(0x34, bytes(84), b"", 0))


@unittest.skipUnless(shutil.which("node") and os.path.isfile(QIDI + ".HMI") and os.path.isfile(QIDI + ".tft"),
                     "needs node and the QIDI_PLUS3 sample")
class QidiGroundTruth(unittest.TestCase):
    """The struct fields were found by comparing QIDI's 800_480_PLUS.tft with its .HMI source; check them again."""

    def test_text_and_button_fields(self):
        out = subprocess.run(["node", os.path.join(HERE, "hmi_dump.js"), QIDI + ".HMI"], capture_output=True, check=True)
        tft = load(QIDI + ".tft")
        hm = [p for p in json.loads(out.stdout)]
        pages = tft.getReadableData()["pages"]
        checked = bad = 0
        for pg in pages:       # match pages by the positions of their components
            geo = [(o["x"], o["y"]) for o in pg["objects"]]
            for p in hm:
                if len(p["objs"]) == len(geo) and all(
                        (h["attrs"].get("x", {}).get("v"), h["attrs"].get("y", {}).get("v")) == g
                        for h, g in zip(p["objs"], geo) if h["attrs"]["type"]["v"] != 121):
                    for o, h in zip(pg["objects"], p["objs"]):
                        at = o.get("attributes")
                        for k in ("xcen", "ycen", "txt_maxl", "pco", "isbr"):
                            if at and k in at and "v" in h["attrs"].get(k, {}):
                                checked += 1
                                bad += at[k] != h["attrs"][k]["v"]
                    break
        self.assertGreater(checked, 1500)
        self.assertLess(bad / checked, 0.01)


if __name__ == "__main__":
    unittest.main()
