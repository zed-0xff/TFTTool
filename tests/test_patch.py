import os
import unittest

from helpers import ROOT, T, load

QIDI_TFT = os.path.join(os.path.dirname(ROOT), "QIDI_PLUS3", "UI", "800_480_PLUS.tft")


@unittest.skipUnless(os.path.isfile(QIDI_TFT), "needs the QIDI_PLUS3 sample")
class PatchGeometry(unittest.TestCase):
    def test_set_object_geometry(self):
        t = load(QIDI_TFT)
        pages = t.getReadableData()["pages"]
        page = next(i for i, p in enumerate(pages) if len(p["objects"]) > 3)
        index = next(i for i, o in enumerate(pages[page]["objects"]) if o["type"] == "button")
        changed = t.setObjectGeometry(page, index, 0, 0, 480, 272)
        self.assertGreaterEqual(len(changed), 2)           # the object record and the struct
        self.assertTrue(all(v[2] for v in t.verifyChecksums().values()))
        again = T.TFTFile(t.raw).getReadableData()["pages"][page]["objects"][index]
        self.assertEqual((again["x"], again["y"], again["w"], again["h"]), (0, 0, 480, 272))
        original = open(QIDI_TFT, "rb").read()             # nothing else changed (two geometries + the file checksum)
        self.assertEqual(len(original), len(t.raw))
        self.assertLess(sum(a != b for a, b in zip(original, t.raw)), 40)

    def test_not_for_other_series(self):
        # series 0 file: HASPone / nspanel samples are not series 4
        import glob
        files = glob.glob(os.path.join(os.path.dirname(ROOT), "HASPone", "Nextion_HMI", "HASwitchPlate.tft"))
        if not files:
            self.skipTest("HASPone sample not found")
        with self.assertRaises(Exception):
            load(files[0]).setObjectGeometry(0, 0, 0, 0, 10, 10)


if __name__ == "__main__":
    unittest.main()
