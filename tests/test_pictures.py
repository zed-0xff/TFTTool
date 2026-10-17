import struct
import unittest
from pathlib import Path

import helpers
import TFTTool as T

PAL = [(0, 0, 0), (255, 0, 0), (0, 255, 0), (0, 0, 255), (255, 255, 255)]


class DecodePicture(unittest.TestCase):
    def test_palette_rle_roundtrip(self):
        w, h = 20, 7
        idx = [(x * 3 + y) % len(PAL) for y in range(h) for x in range(w)]
        pic = T.TFTFile.decodePicture(helpers.make_picture(w, h, PAL, idx))
        self.assertIsNotNone(pic)
        self.assertEqual((pic["w"], pic["h"], pic["segments"]), (w, h, 1))
        self.assertIsNone(pic["alpha"])
        expect = b"".join(T.TFTFile._rgb565(helpers.rgb565(*PAL[i])) for i in idx)
        self.assertEqual(pic["rgb"], expect)

    def test_long_runs(self):
        w, h = 100, 10
        idx = [0] * (w * h - 3) + [1, 2, 3]
        pic = T.TFTFile.decodePicture(helpers.make_picture(w, h, PAL, idx))
        self.assertEqual(len(pic["rgb"]), w * h * 3)
        self.assertEqual(pic["rgb"][-9:-6], T.TFTFile._rgb565(helpers.rgb565(*PAL[1])))

    def test_five_bit_variant(self):
        w, h = 8, 8
        idx = [(x + y) % 3 for y in range(h) for x in range(w)]
        pic = T.TFTFile.decodePicture(helpers.make_picture(w, h, PAL[:3], idx, bits=5))
        self.assertIsNotNone(pic)
        self.assertEqual(len(pic["rgb"]), w * h * 3)

    def test_alpha_stream(self):
        w, h = 16, 4
        idx = [1] * (w * h)
        alpha = [0] * 20 + [127] * 30 + [64] + [0] * (w * h - 51)
        pic = T.TFTFile.decodePicture(helpers.make_picture(w, h, PAL, idx, alpha=alpha))
        self.assertIsNotNone(pic["alpha"])
        self.assertEqual(len(pic["alpha"]), w * h)
        self.assertEqual(pic["alpha"][0], 0)
        self.assertEqual(pic["alpha"][25], 255)                 # 127 -> 255
        self.assertEqual(pic["alpha"][50], 64 * 255 // 127)

    def test_palette_banks(self):
        # 70 colours with 6 bit tokens: indices >= 64 need the bank escape
        pal = [(i * 3 % 256, i * 5 % 256, i * 7 % 256) for i in range(70)]
        w, h = 10, 7
        idx = [(x * 11 + y * 5) % 70 for y in range(h) for x in range(w)]
        self.assertTrue(any(i >= 64 for i in idx))
        pic = T.TFTFile.decodePicture(helpers.make_picture(w, h, pal, idx))
        self.assertIsNotNone(pic)
        expect = b"".join(T.TFTFile._rgb565(helpers.rgb565(*pal[i])) for i in idx)
        self.assertEqual(pic["rgb"], expect)

    def test_multiple_segments(self):
        w, h = 12, 6
        pal1 = [(0, 0, 0), (255, 0, 0)]
        pal2 = [(0, 255, 0), (0, 0, 255), (9, 9, 9)]
        idx1 = [i % 2 for i in range(30)]
        idx2 = [i % 3 for i in range(w * h - 30)]
        pic = T.TFTFile.decodePicture(helpers.make_picture_segments(w, h, [(pal1, idx1), (pal2, idx2)]))
        self.assertIsNotNone(pic)
        self.assertEqual(pic["segments"], 2)
        expect = b"".join(T.TFTFile._rgb565(helpers.rgb565(*pal1[i])) for i in idx1) + \
                 b"".join(T.TFTFile._rgb565(helpers.rgb565(*pal2[i])) for i in idx2)
        self.assertEqual(pic["rgb"], expect)

    def test_format1_run_blocks(self):
        w, h = 50, 6
        px = []
        for y in range(h):
            px += [helpers.rgb565(0, 0, 0)] * 20 + [helpers.rgb565(255, 255, 255), helpers.rgb565(9, 90, 200)] * 2 \
                  + [helpers.rgb565(255, 0, 0)] * (w - 24)
        data = helpers.make_picture_format1(w, h, px)
        pic = T.TFTFile.decodePicture(data, w, h)
        self.assertIsNotNone(pic)
        expect = b"".join(T.TFTFile._rgb565(p) for p in px)
        self.assertEqual(pic["rgb"], expect)

    def test_format1_needs_the_size(self):
        data = helpers.make_picture_format1(4, 4, [1] * 16)
        self.assertIsNone(T.TFTFile.decodePicture(data))                 # format 1 has no w/h in its header
        self.assertIsNone(T.TFTFile.decodePicture(data, 40, 40))         # not enough pixels for that size

    def test_format0_raw_with_header(self):
        w, h = 3, 2
        px = [helpers.rgb565(255, 0, 0), 0, 0xffff, 5, 6, 7]
        pic = T.TFTFile.decodePicture(helpers.make_picture_format0(w, h, px), w, h)
        self.assertEqual(pic["rgb"], b"".join(T.TFTFile._rgb565(p) for p in px))

    def test_raw_rgb565(self):
        w, h = 3, 2
        px = [helpers.rgb565(255, 0, 0)] * 3 + [helpers.rgb565(0, 0, 255)] * 3
        data = struct.pack("<6H", *px)
        pic = T.TFTFile.decodePicture(data, w, h)
        self.assertTrue(pic["raw"])
        self.assertEqual(pic["rgb"][:3], T.TFTFile._rgb565(px[0]))
        self.assertEqual(len(pic["rgb"]), w * h * 3)

    def test_corrupt_data_is_rejected(self):
        data = bytearray(helpers.make_picture(8, 8, PAL, [1] * 64))
        self.assertIsNone(T.TFTFile.decodePicture(bytes(data[:30])))     # truncated
        data[0] = 9                                                      # unknown format
        self.assertIsNone(T.TFTFile.decodePicture(bytes(data)))

    def test_png_writer(self):
        import tempfile, os, zlib
        with tempfile.TemporaryDirectory() as d:
            p = os.path.join(d, "a.png")
            T.TFTFile.writePNG(p, 2, 2, bytes(range(12)))
            raw = Path(p).read_bytes()
            self.assertTrue(raw.startswith(b"\x89PNG\r\n\x1a\n"))
            p2 = os.path.join(d, "b.png")
            T.TFTFile.writePNG(p2, 2, 2, bytes(range(12)), bytes([0, 64, 128, 255]))
            hdr = Path(p2).read_bytes()[16:29]
            self.assertEqual(struct.unpack(">IIBBBBB", hdr), (2, 2, 8, 6, 0, 0, 0))     # colour type 6 = RGBA


if __name__ == "__main__":
    unittest.main()
