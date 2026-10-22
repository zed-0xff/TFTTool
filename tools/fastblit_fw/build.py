#!/usr/bin/env python3
"""Builds TFWriter_AiHmiT7.bin.make (SD-boot image with the fast-blit hooks) from the sources here.
Needs clang + pyelftools. Output: ../../../../TFWriter_AiHmiT7_fastblit.bin.make (repo root)."""
import os
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
os.chdir(HERE)
sys.path.insert(0, HERE)
from elftools.elf.elffile import ELFFile  # noqa: E402

CC = ["clang", "-target", "thumbv7em-none-eabi", "-mcpu=cortex-m4", "-mthumb"]


def text(obj, out):
    open(out, "wb").write(ELFFile(open(obj, "rb")).get_section_by_name(".text").data())


for s in ("trampoline", "boot_trampoline", "reboot_trampoline", "hmi_trampoline"):
    subprocess.run(CC + ["-c", f"{s}.S", "-o", f"{s}.o"], check=True)
    text(f"{s}.o", f"{s}.bin")
subprocess.run(CC + ["-ffreestanding", "-fno-builtin", "-nostdlib", "-fno-exceptions", "-fno-unwind-tables", "-Os",
                     "-c", "fast_blit_hook.c", "-o", "fast_blit_hook.o"], check=True)
text("fast_blit_hook.o", "fast_blit_hook.bin")
import build_patch  # noqa: E402
out = build_patch.build()
root = os.path.abspath(os.path.join(HERE, "..", "..", "..", ".."))
subprocess.run([sys.executable, os.path.join(HERE, "..", "fw_pack.py"), "sdboot", "--stock", out, "-o",
                os.path.join(root, "TFWriter_AiHmiT7_fastblit.bin.make")], check=True)
