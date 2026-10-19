# SPI flash of the Sovol SV08 Max screen (TJC4827X243_011C, AiHMI T7)

What is where in the 16 MiB flash chip of the stock screen (Fudan FM25Q128AI3, JEDEC `A1 40 18`, 16 MiB, 4 KiB sectors).
Taken from one dump (`dump1.bin`, md5 `715f1335a2ee02334d652c0ec0428e7a`, two identical reads); every statement says
how it was found. **Confirmed** = checked by a checksum or by parsing, **read from code** = seen in the decompiled stage 0
loader / firmware, **guess** = my reading, not checked.

## Map

| Flash offset | Size | Content | Status |
|---|---|---|---|
| `0x000000` | 0x1000 | boot descriptor table (9 dwords, below), the rest zero | read from the data, meaning is a guess |
| `0x001000–0x003FFF` | 0x3000 | zero | confirmed |
| `0x004000–0x00699D` | 0x299E | **stage 0 loader**, Thumb, runs in RAM | confirmed |
| `0x00699E–0x007FFF` | | zero | confirmed |
| `0x008000–0x00FFFF` | 0x8000 | erased (`FF`) | confirmed |
| `0x010000–0x043C1B` | 0x33C1C | **main firmware, copy A** (valid) | confirmed |
| `0x043C1C–0x08FFFF` | | erased | confirmed |
| `0x090000–0x0C3C1B` | 0x33C1C | **main firmware, copy B**, same header, payload CRC **fails** (16 247 bytes differ from A) | confirmed, reason unknown |
| `0x0C3C1C–0x10FFFF` | | erased | confirmed |
| `0x110000–0x113FFF` | 4 sectors | settings records: two 128 byte records per sector (`+0x000`, `+0x800`) | layout confirmed, fields unknown |
| `0x114000` | 4 bytes | marker `78 56 34 12`, rest erased | confirmed |
| `0x118000`, `0x119000` | 107 bytes each | two copies of one block (`88 d4 61 7b 5b 31 04 72 …`) | guess: product id / model data (firmware has `write ProductId error`, `dataModel error!`) |
| `0x120000`, `0x130000` | 114 bytes (+ data up to `+0x9FF`) | A/B pair; byte `+0x11` is `80 25 00 00` = 9600 (saved baud rate) | baud confirmed, rest unknown |
| `0x140000`, `0x150000` | 88 bytes (+ data up to `+0x403`) | A/B pair, starts `00 00 00 00` | unknown |
| `0x160000–0x160FFF` | 0x1000 | **`.tft` header** (headers 1 and 2, tables) | confirmed |
| `0x161000–0x17FFFF` | | erased (padding inside the `.tft`) | confirmed |
| `0x180000–0x9FFFFF` | 0x880000 | `.tft` **resources**: 12 files (pictures, fonts, ...), `.tft` offset `0x20000–0x89FFFF` (`ressources_files_size` 8 912 896) | confirmed (sizes match header 1) |
| `0xA00000–0xB382BB` | 0x1382BC | `.tft` **user code, pages, objects** | confirmed (the `.tft` checksums are valid) |
| `0xB382BC–0xFFFFFF` | ~4.7 MiB | erased, free | confirmed |

The `.tft` is the contiguous range `0x160000 .. 0xB382BC` (**10 322 620 bytes**). Its end is also the last non-`FF` byte of
the dump; the four checksums (header 1, header 2, resources, file) verify only with exactly this length.

## Stage 0 loader (`0x4000`)

* Boot descriptor at `0x0` (dwords): `3, 0x10000000, 0x100, 0x02000000, 0x10004000, 0x7000, 0x20001000, 0x10010000, 0x60000`.
  The flash is mapped at `0x10000000` (XIP). Reading: the entry `0x10004000 → 0x20001000` is the loader copied to RAM,
  `0x10010000, 0x60000` is where the main image is expected (and its maximum size). *Guess*, the ROM of the chip is not
  available.
* The loader is linked at `0x20000000`; its vector table is at `0x20001000` = file offset `0x4000`.
  **File offset = address − `0x20000000` + `0x3000`** (checked by the run of ten `b .` stubs at `0x4288`).
* What it does (decompiled, `sub_20002F38`): tries the SD card first (SPI at `0x40003060`, FatFs with long names, CP437), the
  file `TFWriter_AiHmiT7.bin.make`, loaded to RAM `0x80000`; otherwise it reads the main image from the flash (XIP) to
  RAM address 0. Both go through the same container check (next section) and are started with `MSP = *0, PC = *4, VTOR = 0`.
* The flash itself has its own controller (`0x40001000`, command `0x90` reads the ids, a table of sizes by id).

## Main firmware image (`0x10000`, copy B at `0x90000`)

Container (checked by the loader, `tools/fw_unscramble.py` does the same):

| Offset | |
|---|---|
| `0x000–0x1C7` | vector table and code, XORed with K |
| `0x1C8` dword 114 | CRC of bytes `460..615` |
| `0x1CC` | `0x9F` (field unknown) |
| `0x1D0` dword 116 | length (`0x33C1C`) |
| `0x1D4` dword 117 | CRC of the image |
| `0x1D8` dword 118 | key part (0 here) |
| `0x268–0x7FF` | XORed with K |
| `0x800–length` | payload, XORed with K |

`K = dword[118] ^ dword[116]` (here `0x33C1C`, the length). CRC = STM32-style hardware CRC (poly `0x04C11DB7`, init
`0xFFFFFFFF`, 32-bit words, MSB first, no final xor); the image CRC covers the *scrambled* bytes `0..0x1C8`, `0x268..0x800`,
`0x800..length`. No signature appears in the loader, only length (`< 0xC0000`) and the two CRCs.

The unscrambled image runs at address 0 in RAM (`SP = 0x800000`, reset vector `0x349`). Its strings and tables: see
`tools/fw_tables.py` (instruction tables, undocumented functions) and the README.

How the loader picks between the two copies is not known: the code reads the same flash window for both loop passes, so
the window is probably moved by the ROM (to `0x10000` for the first attempt, `0x90000` for the second); copy B fails its CRC.

## Settings and data blocks (`0x110000–0x150000`)

Every block is written in two copies (A/B or doubled sectors), the usual way to survive a power cut. In every record the
"ramp" `d4 d3 d2 …` (a byte counter that decreases by one with the position) fills the unused part, so a record is
~28 bytes of data + a counter + 4 bytes of tail. The only decoded field is the saved baud rate (9600 in the `0x120000` /
`0x130000` pair); the firmware starts at 115200 (the startup code of the `.tft` sets it, see the notes in `tools/screen_probe.py`).

## `.tft` in the flash (`0x160000`)

* The header says editor `tjc-1.66.1`, 480×272, `ui_orientation = 2` (pictures are stored turned by 180°), 91 pages,
  901 objects, 117 pictures, 4 fonts, usercode at `.tft` offset `0x8A0000` (= flash `0xA00000`).
* It is **not** the same file as `zhongchuang/…/众创klipper.tft` (Comgrow edition: editor 1.65.5, 67 pages, 88 pictures,
  orientation 0). The Sovol file contains all 67 pages of the Comgrow one plus 24 new ones (fans, network, calibrations,
  filament load / unload, chamber heater, ...); 25 old pages changed layout; 44 of the 88 pictures are pixel-identical after
  turning by 180°, ~20 are redrawn (Comgrow logo → Sovol robot, printing and filament pages).
* The screen version text lives on page 53 as plain text (`1.0.8` in this file, `V1.5.2` / `V1.0.7` in the Comgrow one); the host
  overwrites it (`curVersion` / `newVersion`). The header has only `file_version = 33` (the format) and the editor version.

## How to get the pieces out

```
dd if=dump1.bin of=firmware_a.img bs=1 skip=$((0x10000)) count=$((0x33C1C))
python3 tools/fw_unscramble.py dump1.bin app_plain.bin --offset 0x10000      # checks both CRCs, writes the plain image
python3 -c "d=open('dump1.bin','rb').read(); open('screen.tft','wb').write(d[0x160000:0x160000+10322620])"
python3 TFTTool.py -i screen.tft                                           # decodes it as any other .tft
```

For another dump the `.tft` length is the last non-`FF` byte (`max(i for i, b in enumerate(d) if b != 255) + 1 − 0x160000`);
`TFTFile.verifyChecksums()['file']` is true only for the exact length.

## How the dump was taken

* The chip is in the 8-pin SOP (pin 1 = the dimple at the top left of the package when the UART connector is at the top):
  1 CS, 2 DO, 3 WP, 4 GND, 5 DI, 6 CLK, 7 HOLD, 8 VCC. Wires were soldered to the pins (a test clip gave unreliable reads;
  the screen's own MCU also reads the flash on power-up and talks to it at the same time).
* The reads worked with the screen board **not** powered by the bench supply; the flash was most likely powered through the
  soldered VCC wire by the programmer (ESP32-S3 running ESP32-Bit-Pirate in `serprog` mode), so the screen MCU did not run
  (my reading of why it works, the supply path was not measured).
* `flashrom -p serprog:dev=<port>:921600,spispeed=500k -c "FM25Q128" -r dump.bin`, twice, `md5sum` both. 500 kHz takes
  about five minutes; 100 kHz was used for the first successful test. The chip's status register is `0x00` (nothing protected).
* The Security Registers (OTP) are not read by flashrom and are not in the dump.

## Open questions

* Fields of the settings records and the meaning of `0x118000`, `0x140000` blocks.
* Why copy B at `0x90000` fails its CRC (older firmware, an interrupted update, or damage) and which copy the loader uses.
* The boot descriptor at `0x0` and the XIP window offset, both need the chip's ROM or a logic analyzer capture of the
  boot (the capture of the MCU reading the flash at start-up is in `4.txt` / `8.txt`: `03` reads of 4 bytes from `0x6FB4` up).
