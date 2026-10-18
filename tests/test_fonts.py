import os
import tempfile
import unittest

from helpers import T, load, nspanel_pairs


class DecodeGlyphTest(unittest.TestCase):
    def test_modes_anti_aliased(self):
        stream = bytes([3,
                        0x02,                 # 2 blanks
                        0x22,                 # 2 opaque
                        0x41,                 # 1 blank + 1 opaque
                        0x62,                 # 2 blanks + 2 opaque
                        0x80 | (1 << 3) | 5,  # 1 blank + alpha 5
                        0xc0 | (2 << 3) | 3])  # alpha 2, alpha 3
        self.assertEqual(T.TFTFile.decodeGlyph(stream, 15, 1), [0, 0, 7, 7, 0, 7, 0, 0, 7, 7, 0, 5, 2, 3, 0])
        self.assertEqual(T.TFTFile.glyphPixelCount(stream), 14)

    def test_modes_black_white(self):
        stream = bytes([1, 0x80 | 1, 0xa0 | 2, 0xc0 | (2 << 3) | 3])
        self.assertEqual(T.TFTFile.decodeGlyph(stream, 15, 1), [0, 7, 7, 7, 0, 0, 7, 7, 7, 7, 0, 0, 7, 7, 7])

    def test_padding_and_cut(self):
        self.assertEqual(T.TFTFile.decodeGlyph(bytes([3, 0x23]), 2, 1), [7, 7])
        self.assertEqual(T.TFTFile.decodeGlyph(bytes([3]), 2, 2), [0, 0, 0, 0])


class SampleFontsTest(unittest.TestCase):
    def _nspanel(self):
        pairs = nspanel_pairs()
        if not pairs:
            self.skipTest("nspanel samples not available")
        return load(pairs[0][0])

    def test_nspanel_glyph_sizes(self):
        """Every glyph of the nspanel fonts decodes to exactly (width + kerning) * height pixels."""
        t = self._nspanel()
        checked = 0
        for f in t.getFonts():
            gt = t._glyphTable(f)
            self.assertIsNotNone(gt)
            for g in gt[1]:
                if g["data"]:
                    self.assertEqual(T.TFTFile.glyphPixelCount(g["data"]),
                                     (g["advance"] + sum(g["kerning"])) * f["height"], (f["index"], hex(g["code"])))
                    checked += 1
        self.assertGreater(checked, 5000)

    def test_atlas_export(self):
        t = self._nspanel()
        with tempfile.TemporaryDirectory() as d:
            self.assertGreaterEqual(t.exportFontAtlases(d), 1)
            self.assertTrue(any(n.endswith("_atlas.png") for n in os.listdir(d)))


if __name__ == "__main__":
    unittest.main()
