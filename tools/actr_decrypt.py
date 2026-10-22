#!/usr/bin/env python3
"""
Pure-Python decryptor for the USART HMI editor's ACTR.dll assembly container.

No Windows/.NET/native-DLL dependency and no emulator: `_core_transform` below is a
line-by-line port of AppDllPass.dll's `sub_10001000` (VA 0x10001000, the function
AppDllPass_Decode calls to do the actual work), derived from a capstone disassembly
of the real x86 machine code - not from AppDllPass.c's Hex-Rays decompile, whose
collapsed local declarations left several pointer-arithmetic lines ambiguous (byte-wise
vs. dword-wise offsets into the 3 state words). Reading the raw instructions resolved
that: a5/a6/a7 (the 3 state words) are addressed byte-wise, one byte tweaked per 4-byte
block processed.

Validated two ways: (1) 200 random inputs of varying lengths matched byte-for-byte
against a Unicorn-based emulation of the real machine code; (2) end-to-end against two
real containers (editor/TJC/0.59/ACTR.dll and editor/TJC/*/ACTR.dll, newer build) - all
41 embedded assemblies decoded to valid, correctly-sized PE files with zero leftover
bytes.

No dependencies beyond the standard library.
"""
import argparse
import gzip
import struct
import sys
from pathlib import Path

M32 = 0xFFFFFFFF

# Hardcoded in AppDllPass_Decode: strcpy(key, "hgsd87HH6654dfll88ghfY987Gt3L"),
# then key[i] = (key[i] >> 1) + 2 for every byte, plus 3 fixed 32-bit state words.
# None of this depends on DateTime or the assembly index - that logic (elsewhere in
# AppDllPass_Decode, not in sub_10001000) only computes an unrelated trial-license byte.
_KEY = bytes(((b >> 1) + 2) & 0xFF for b in b"hgsd87HH6654dfll88ghfY987Gt3L")
_STATE0, _STATE1, _STATE2 = 151122615, 384760123, 410038204


def _core_transform(data: bytearray, key: bytes, state0: int, state1: int, state2: int) -> None:
    """In-place port of sub_10001000: a 3-word ARX stream cipher over 4-byte blocks,
    keyed by a short repeating byte key cycled one byte per block. Processes
    len(data) rounded down to a multiple of 4; any trailing 1-3 bytes are untouched
    (matches the real function's `a2 & 0xFFFFFFFC` block count)."""
    klen = len(key)
    n = (len(data) // 4) * 4
    km3 = klen & 3  # precomputed once in the real function, constant across the loop

    s0b = bytearray(struct.pack("<I", state0 & M32))
    s1b = bytearray(struct.pack("<I", state1 & M32))
    s2b = bytearray(struct.pack("<I", state2 & M32))

    def g(b):
        return struct.unpack("<I", bytes(b))[0]

    ki = 0
    doff = 0
    while doff < n:
        s0_in = g(s0b)
        w = struct.unpack("<I", bytes(data[doff:doff + 4]))[0]
        s1_old = g(s1b)
        s2_before = g(s2b)

        kb = key[ki]
        idx3 = (klen + doff + kb) & 3
        kb3 = kb & 3
        kb1 = kb & 1

        # Each state word is doubled/quadrupled/octupled, then one of its 4 constituent
        # bytes (byte-addressed, little-endian) gets a key-dependent value added to it.
        s0b[:] = struct.pack("<I", (s0_in * 2) & M32)
        s0b[idx3] = (s0b[idx3] + (kb ^ 0xC7)) & 0xFF

        s1b[:] = struct.pack("<I", (s1_old * 4) & M32)
        pos1 = 3 - kb3
        s1b[pos1] = (s1b[pos1] + (kb ^ 0xDD)) & 0xFF

        s2b[:] = struct.pack("<I", (s2_before * 8) & M32)
        pos2 = 3 - kb3
        s2b[pos2] = (s2b[pos2] + (kb ^ 0x33)) & 0xFF

        s0n, s1n, s2n = g(s0b), g(s1b), g(s2b)
        sum3 = (s0n + s1n + s2n) & M32

        t1 = (((sum3 << kb1) & M32) + kb3) & M32
        sh1 = ((s2n + t1) & M32) >> kb1
        r1 = (((w - sh1) & M32) ^ t1) & M32

        tmp = (s0n - s2n - s1n) & M32
        t2 = (((tmp << kb3) & M32) + kb3) & M32
        sh2 = ((s1n + t2) & M32) >> kb3
        r2 = (((r1 - sh2) & M32) ^ t2) & M32

        kb7 = kb & 7
        t3 = (((sum3 << kb7) & M32) + kb3) & M32
        sh3 = ((s0n + t3) & M32) >> kb7
        r3 = (((r2 - sh3) & M32) ^ t3) & M32

        x1 = (((s1n + s0n) & M32) ^ s2_before) & M32
        x2 = ((((~x1) & M32) - doff - klen) & M32)
        r4 = (((r3 - x2 - s2_before) & M32) ^ x2) & M32

        y1 = (((s0n << km3) & M32) + s2_before + s1_old) & M32
        km7b = (klen + kb) & 7
        y2 = (((s2_before << km7b) & M32) + s1_old + s0_in) & M32

        x3 = (((r4 - y1 - s1_old) & M32) ^ y1) & M32
        result = (((x3 - y2 - s0_in) & M32) ^ y2) & M32

        data[doff:doff + 4] = struct.pack("<I", result)

        doff += 4
        ki = ki + 1 if ki + 1 != klen else 0


def decode_payload(data: bytes) -> bytes:
    out = bytearray(data)
    _core_transform(out, _KEY, _STATE0, _STATE1, _STATE2)
    return bytes(out)


def decode_container(container_path: Path):
    """Yields (name, decoded_bytes) for every assembly in an ACTR.dll-style container."""
    data = container_path.read_bytes()
    pos = 0
    while pos + 64 <= len(data):
        header = bytearray(data[pos:pos + 64])
        pos += 64
        for i in range(len(header)):
            header[i] ^= 9
        text = header.decode("ascii", errors="replace").replace("\x00", "").strip()
        parts = text.split("#")
        if len(parts) < 2:
            break
        name = parts[0]
        try:
            size = int(parts[1])
        except ValueError:
            break
        compressed = len(parts) > 2 and parts[2] == "1"

        payload = data[pos:pos + size]
        pos += size

        out = decode_payload(payload)
        if compressed:
            out = gzip.decompress(out)
        yield name, out


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("container", type=Path, help="ACTR.dll (or similarly-encrypted container)")
    ap.add_argument("-o", "--output-dir", type=Path, default=None)
    args = ap.parse_args()

    out_dir = args.output_dir or (args.container.parent / "decrypted")
    out_dir.mkdir(parents=True, exist_ok=True)

    count = 0
    for name, blob in decode_container(args.container):
        out_path = out_dir / name
        out_path.write_bytes(blob)
        print(f"[{count}] {name} -> {out_path} ({len(blob)} bytes)")
        count += 1

    print(f"\n{count} assemblies decoded into {out_dir}")


if __name__ == "__main__":
    main()
