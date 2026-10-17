"""
Nextion uses a CRC32 type algorithm.
"""


import zlib

_REV8 = bytes(int(f"{i:08b}"[::-1], 2) for i in range(256))


def _rev32(v):
    return int(f"{v & 0xffffffff:032b}"[::-1], 2)


def _swap_words(data: bytes) -> bytes:
    """Little endian 32 bit words as a big endian byte stream (what the word based checksum processes)."""
    n4 = len(data) // 4 * 4
    out = bytearray(n4)
    out[0::4], out[1::4], out[2::4], out[3::4] = data[3:n4:4], data[2:n4:4], data[1:n4:4], data[0:n4:4]
    return bytes(out)


class Checksum:
    # Series whose checksums run over 32 bit words (little endian) instead of bytes.
    WORD_SERIES = (2, 3, 4)

    def CRC_stream(self, stream: bytes, salt: int = 0xffffffff):
        """MSB first CRC-32 (polynomial 0x04C11DB7, no output xor) over a byte stream; salt is xored into the first 32
        bits (equivalent to starting the register with it)."""
        b = bytearray(stream)
        b[0:4] = bytes(x ^ y for x, y in zip(b[0:4], salt.to_bytes(4, "big")))
        v = zlib.crc32(bytes(b).translate(_REV8), 0xffffffff)      # register 0 in zlib's terms
        return _rev32(v ^ 0xffffffff)

    def CRC_words(self, data: bytes, salt: int = 0xffffffff):
        """Word based variant: data read as little endian 32 bit words (a partial last word is ignored)."""
        return self.CRC_stream(_swap_words(data), salt)

    def CRC_for_series(self, data: bytes, series: int, salt: int = 0xffffffff):
        """The checksum the editor uses for the given model series: words for the X and series 4 screens, widened
        bytes (CRC_fast) for the others."""
        if series in self.WORD_SERIES:
            return self.CRC_words(data, salt)
        return self.CRC_fast(data, salt)

    def CRC(self, data, salt: int = 0xffffffff, skip: int = 0, length: int = -1):
        if length < 0:
            length = len(data)
        data = data[skip:length]
        if type(data) in (bytes, bytearray, memoryview):
            return self.CRC_fast(bytes(data), salt)
        return self._CRC32(data, salt)

    def CRC_fast(self, data: bytes, salt: int = 0xffffffff):
        """Same result as _CRC32 on a list of byte values, but fast: the algorithm is a plain MSB first CRC-32
        (polynomial 0x04C11DB7, no output xor) over the stream in which every byte is widened to the 32 bit word
        00 00 00 xx, started with the register = salt. It is computed with zlib by reflecting bytes and register."""
        widened = bytearray(4 * len(data))
        widened[3::4] = data
        reflected = bytes(widened).translate(_REV8)
        start = _rev32(salt) ^ 0xffffffff
        v = zlib.crc32(reflected, start)
        # (the zero word the slow version appends is what turns its shift-in form into this direct form)
        return _rev32(v ^ 0xffffffff)

    def _CRC32(self, l: list, xorIn=0xffffffff, xorOut=0):
        poly = 0x4c11db7
        poly |= (1 << 32)  # kill the bit that would normally be shifted out of the register
        reg = 0
        l = l + [0]
        l[0] ^= xorIn
        for word in l:
            for i in range(32):
                reg <<= 1
                if word >= (1 << 31):
                    reg += 1
                word <<= 1
                word &= 0xffffffff
                if reg >= (1 << 32):
                    reg ^= poly
        reg &= 0xffffffff  # ((1 << 32) - 1)
        reg ^= xorOut
        return reg
