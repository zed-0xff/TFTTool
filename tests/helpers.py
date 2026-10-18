"""Shared helpers for the tests: locating the sample files and building small synthetic data."""
import glob
import os
import struct
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, ROOT)

import TFTTool as T  # noqa: E402


def sample_dirs():
    """Directories searched for .tft samples: Example/ of this repo, the env var TFTTOOL_SAMPLES (os.pathsep separated)
    and, if present, the sibling checkouts used while developing the tool."""
    dirs = [os.path.join(ROOT, "Example")]
    dirs += [d for d in os.environ.get("TFTTOOL_SAMPLES", "").split(os.pathsep) if d]
    parent = os.path.dirname(ROOT)
    dirs += [os.path.join(parent, "TFTTool.dd5md", "Example"),
             os.path.join(parent, "nspanel-lovelace-ui", "HMI"),
             os.path.join(parent, "HASPone", "Nextion_HMI")]
    return [d for d in dirs if os.path.isdir(d)]


def sample_files():
    files = []
    for d in sample_dirs():
        files += glob.glob(os.path.join(d, "**", "*.tft"), recursive=True)
    return sorted(set(files))


def nspanel_pairs():
    """(tft, nextion2text visual output dir) pairs of the nspanel-lovelace-ui project, if checked out."""
    base = os.path.join(os.path.dirname(ROOT), "nspanel-lovelace-ui", "HMI")
    pairs = [(os.path.join(base, "nspanel.tft"), os.path.join(base, "n2t-out-visual")),
             (os.path.join(base, "US", "landscape", "nspanel_US_L.tft"), os.path.join(base, "US", "landscape", "n2t-out-visual")),
             (os.path.join(base, "US", "portrait", "nspanel_US_P.tft"), os.path.join(base, "US", "portrait", "n2t-out-visual"))]
    return [(a, b) for a, b in pairs if os.path.isfile(a) and os.path.isdir(b)]


def load(path, **kw):
    with open(path, "rb") as f:
        return T.TFTFile(f.read(), **kw)


# ---- synthetic picture encoder (the inverse of TFTFile.decodePicture) --------------------------------------------

def rgb565(r, g, b):
    return ((r >> 3) << 11) | ((g >> 2) << 5) | (b >> 3)


def encode_runs(indices, bits):
    """Run length tokens as described above TFTFile.getPictureRecords, including the palette bank escapes."""
    out = bytearray()
    mask = (1 << bits) - 1
    top = 0xff >> bits
    bank = 0
    i = 0
    while i < len(indices):
        j = i
        while j + 1 < len(indices) and indices[j + 1] == indices[i] and j - i < 254:
            j += 1
        n = j - i + 1
        idx = indices[i]
        if idx >> bits != bank:             # switch the palette bank
            bank = idx >> bits
            out.append((top << bits) | bank)
        idx &= mask
        if n < top:                         # small counts fit into the token itself
            out.append((n << bits) | idx)
        else:
            out += bytes([idx, n])
        i = j + 1
    if bank:
        out.append(top << bits)             # back to bank 0
    return bytes(out)


def make_picture(w, h, palette, indices, bits=6, alpha=None):
    """Builds picture data (format 2): header, one palette segment, run length stream and an optional alpha stream."""
    seg = struct.pack("<HHB", 0, len(palette), bits)
    seg += b"".join(struct.pack("<H", rgb565(*c)) for c in palette)
    seg += bytes([(0xff << bits) & 0xff]) + encode_runs(indices, bits)
    data = struct.pack("<IIIII", 2, w, h, 0x05ddc33c, len(seg)) + seg
    if alpha is not None:
        a = bytearray()
        i = 0
        while i < len(alpha):
            v = alpha[i]
            j = i
            while j + 1 < len(alpha) and alpha[j + 1] == v and j - i < 254:
                j += 1
            n = j - i + 1
            if n == 1 and v:
                a.append(0x80 | v)
            else:
                a += bytes([v, n])
            i = j + 1
        data += bytes(a)
    return data


def make_picture_segments(w, h, segments, bits=6):
    """segments: list of (palette, indices); the indices of all segments together cover w*h pixels. Segments are
    separated by the 00 00 terminator, which doubles as the leading zero word of the next segment."""
    body = bytearray()
    for k, (palette, indices) in enumerate(segments):
        if k == 0:
            body += b"\x00\x00"
        body += struct.pack("<HB", len(palette), bits)
        body += b"".join(struct.pack("<H", rgb565(*c)) for c in palette)
        body += bytes([(0xff << bits) & 0xff]) + encode_runs(indices, bits)
        if k + 1 < len(segments):
            body += b"\x00\x00"
    return struct.pack("<IIIII", 2, w, h, 0x05ddc33c, len(body)) + bytes(body)


def make_picture_format1(w, h, pixels):
    """Nextion F series picture format 1: blocks of eight (colour, run length) runs, a trailing index is not needed.
    pixels: list of RGB565 values in raster order."""
    runs = []
    i = 0
    while i < len(pixels):
        j = i
        while j + 1 < len(pixels) and pixels[j + 1] == pixels[i] and j - i < 14:
            j += 1
        runs.append((pixels[i], j - i + 1))
        i = j + 1
    blocks = bytearray()
    for k in range(0, len(runs), 8):
        chunk = runs[k:k + 8] + [(0, 0)] * (8 - len(runs[k:k + 8]))
        tag = bytearray()
        for m in range(0, 8, 2):
            tag.append(chunk[m][1] | (chunk[m + 1][1] << 4))
        blocks += bytes(tag) + b"".join(struct.pack("<H", c) for c, _ in chunk)
    return struct.pack("<II", 1, len(blocks)) + bytes(12) + bytes(blocks) + b"\x00" * 16   # + some index bytes


def make_picture_format0(w, h, pixels):
    return bytes(20) + struct.pack(f"<{w * h}H", *pixels)
