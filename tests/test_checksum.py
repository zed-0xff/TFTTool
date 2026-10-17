import random
import struct
import unittest

import helpers  # noqa: F401  (sets up sys.path)
from NextionChecksum import Checksum


class FastCRC(unittest.TestCase):
    """The zlib based implementation must agree with the original (slow) one."""

    def test_bytes_match_slow_version(self):
        c = Checksum()
        rnd = random.Random(1)
        for n in (1, 2, 3, 4, 5, 63, 64, 65, 1000):
            data = bytes(rnd.randrange(256) for _ in range(n))
            for salt in (0xffffffff, 0, 0x12345678):
                self.assertEqual(c.CRC_fast(data, salt), c._CRC32(list(data), salt), (n, hex(salt)))

    def test_words_match_slow_version(self):
        c = Checksum()
        rnd = random.Random(2)
        for n in (4, 8, 12, 400):
            data = bytes(rnd.randrange(256) for _ in range(n))
            words = list(struct.unpack(f"<{n // 4}I", data))
            self.assertEqual(c.CRC_words(data), c._CRC32(words))

    def test_crc_accepts_bytes_and_lists(self):
        c = Checksum()
        data = bytes(range(40))
        self.assertEqual(c.CRC(data=data), c.CRC(data=list(data)))

    def test_series_selects_algorithm(self):
        c = Checksum()
        data = bytes(range(64))
        for series in (0, 1, 100):
            self.assertEqual(c.CRC_for_series(data, series), c.CRC_fast(data))
        for series in (2, 3, 4):
            self.assertEqual(c.CRC_for_series(data, series), c.CRC_words(data))
        self.assertNotEqual(c.CRC_fast(data), c.CRC_words(data))

    def test_known_value(self):
        # header 1 of a real file: CRC over the first 0xc4 bytes ends up at 0xc4 (see test_samples)
        self.assertEqual(Checksum().CRC(data=b"\x00" * 4), Checksum()._CRC32([0, 0, 0, 0]))


if __name__ == "__main__":
    unittest.main()
