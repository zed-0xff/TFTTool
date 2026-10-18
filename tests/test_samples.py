import os
import tempfile
import unittest

import helpers
import TFTTool as T

FILES = helpers.sample_files()


@unittest.skipUnless(FILES, "no .tft sample files found (set TFTTOOL_SAMPLES)")
class SampleFiles(unittest.TestCase):
    """Invariants that must hold for every sample file."""

    def test_checksums(self):
        for f in FILES:
            with self.subTest(file=os.path.basename(f)):
                t = helpers.load(f, decode_usercode=False)
                for name, (stored, calc, ok) in t.verifyChecksums().items():
                    self.assertTrue(ok, f"{name}: stored {stored:#x} computed {calc:#x}")

    def test_structure_scan_agrees_with_header2(self):
        """The fallback that finds the page/object tables from the end of the file must give what header 2 says."""
        for f in FILES:
            t = helpers.load(f, decode_usercode=False)
            if "derived" in t.header2_note:
                continue
            with self.subTest(file=os.path.basename(f)):
                scan = t._scanTables()
                self.assertIsNotNone(scan)
                c = t.header2.content
                self.assertEqual(scan["pages_addr"], c["unknown_pages_address"])
                self.assertEqual(scan["objects_addr"], c["unknown_objects_address"])
                self.assertEqual(scan["pages"], c["pages_count"])
                self.assertEqual(scan["objects"], c["unknown_objects_count"])

    def test_pages_and_objects(self):
        for f in FILES:
            with self.subTest(file=os.path.basename(f)):
                t = helpers.load(f)
                d = t.getReadableData(True)
                pages = [p for p in d["pages"] if p.get("page") is not None]
                self.assertEqual(len(pages), t._getVal("pages_count"))
                self.assertEqual(sum(len(p["objects"]) for p in pages), t._getVal("unknown_objects_count"))
                for p in pages:
                    for o in p["objects"]:
                        self.assertTrue(-1000 < o["x"] < 2000 and 0 <= o["w"] < 2000 and 0 <= o["h"] < 2000)

    def test_pictures_decode(self):
        for f in FILES:
            t = helpers.load(f, decode_usercode=False)
            recs = t.getPictureRecords()
            if not recs:
                continue
            with self.subTest(file=os.path.basename(f)):
                ok = sum(1 for r in recs if t.decodePicture(t.raw[r["offset"]:r["offset"] + r["size"]], *t._pictureDims(r)))
                self.assertEqual(ok, len(recs))

    def test_fonts(self):
        for f in FILES:
            with self.subTest(file=os.path.basename(f)):
                t = helpers.load(f, decode_usercode=False)
                fonts = t.getFonts()
                self.assertGreater(len(fonts), 0)
                for font in fonts:
                    self.assertGreater(font["data_size"], 0)
                    self.assertIn(font.get("type"), ("ascii", "charset", None))

    def test_resource_table(self):
        for f in FILES:
            with self.subTest(file=os.path.basename(f)):
                t = helpers.load(f, decode_usercode=False)
                res = t.getResources()
                self.assertTrue(res)
                for r in res:
                    self.assertGreater(r["size"], 0)
                    self.assertLessEqual(r["offset"] + r["size"], len(t.raw))

    def test_roundtrip_is_byte_identical(self):
        """update_raw() on an unmodified file recomputes every checksum and must reproduce the file."""
        for f in FILES:
            t = helpers.load(f, decode_usercode=False)
            if "derived" in t.header2_note:
                continue
            with self.subTest(file=os.path.basename(f)):
                before = bytes(t.raw)
                t.update_raw()
                self.assertEqual(bytes(t.raw), before)


class WriteOutput(unittest.TestCase):
    def test_small_example(self):
        hsv = [f for f in FILES if f.endswith("HSV Test.tft")]
        if not hsv:
            self.skipTest("Example/HSV Test.tft not found")
        t = helpers.load(hsv[0])
        with tempfile.TemporaryDirectory() as d:
            counts = t.writeOutput(d, raw=True)
            self.assertEqual(counts["pages"], 1)
            self.assertNotIn("errors", counts)
            for p in ("info.json", "headers/header1.json", "headers/header2.json", "pages/000.nasm", "fonts/index.json",
                      "raw/usercode.bin"):
                self.assertTrue(os.path.exists(os.path.join(d, p)), p)
            import json
            with open(os.path.join(d, "info.json"), encoding="utf-8") as fh:
                info = json.load(fh)
            self.assertTrue(all(c["ok"] for c in info["checksums"].values()))


if __name__ == "__main__":
    unittest.main()
