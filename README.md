# TFTTool: Parse and Convert TFT Files.

## Description

TFTTool is a python script that reads the TFT file and converts it into a human readable format (nicely formatted JSON). It also allows you to change the device model to a compatible one (same resolution, same series). This includes conversions of a Nextion file to a TJC file and vice-versa.

## Requirements

Python 3.9 or higher

## Usage

Get all details about the CLI by executing `python TFTTool.py -h`.

To simply convert a TFT file into a text file, use 

```
python TFTTool.py -i TFT_SOURCE -o TEXT_FILE
```

To change the device model, use 

```
python TFTTool.py -i TFT_SOURCE -t NEW_MODEL
```

Nextion and TJC run slightly different editor version numbers. So it's possible that the converted TFT file can't be opened in the new editor. This can be fixed by using the `-e/--editor-version` command. It allows you to manually specify the editor version.  One example would be when converting a Nextion file created with v1.63.3. TJC only released a v1.63.1 (released at the same time, so likely identical). So you'd modify the previous command line input to this:

```
python TFTTool.py -i TFT_SOURCE -t NEW_MODEL -e 1.63.1
```

While this works in many cases, there is absolutely no guarantee of compatibility.


Notes:
* Conversion of models or between Nextion and TJC is only possible for the T0/Basic and K0/Enhanced series.
* The text output contains a couple keywords:
	* `op:0x1234`: 0x1234 is an encoded operator that has not yet been decoded and added to the TFTParser source. Known operators get replaced by the right instruction from the Nextion Instruction Set.
	* `local:0x1234`, `global:0x1234`: 0x1234 is the address of a local/global variable.
	* `system:0x1234`: 0x1234 is the address of a system variable that has not yet been decoded and added to the TFTParser source. Known system variables get replaced by the right name from the Nextion Instruction Set.
	* `RAW_DATA`: This block seems to contain no recognized data. Therefore its represented as hex.

## Example

In the [Example](./Example) subfolder you'll find a [TFT file](./Example/HSV%20Test.tft) and the [resulting text file](./Example/HSV%20Test.txt). 

The HMI source file (and its license) can be found in this repository: https://github.com/MMMZZZZ/Random-Stuff/tree/eea7398335ff6a92c16227dbe911bf3e18e9728d/Nextion%20HSV%20Test


## Fork additions

### What it decodes

| | series 0/1 (Nextion T0/K0) | series 100 (Nextion F) | series 4 (TJC, Sovol/QIDI screens) |
|---|---|---|---|
| headers, checksums | yes | yes (header 2 derived from the structure) | yes |
| pages, components, positions | yes | yes | yes |
| events (operators) | per-version tables | **verified** for nxt-1.65.1 and nxt-1.68.2 | series 3 table (unverified) |
| pictures | raw RGB565 | listed, not decoded (format 1, a tile dictionary) | palette + RLE, alpha, multi-segment |
| fonts | headers | headers | headers, ASCII glyph tables |
| component text | – | – | labels per language |

* **Header 2**: layout and XOR key are detected (the key is derived from `ressources_files_address`, which header 1
  and header 2 both contain) and validated with six consistency checks. If it can't be decoded (Nextion F series) the
  addresses are derived from the file structure instead (`--probe` shows which). Learned keys of two unknown models are
  in `_learnedModels`.
* **Checksums** (`verifyChecksums()`, `update_raw()`): header 1, header 2, the resource region and the whole file.
  The algorithm is byte based for series 0, 1 and 100 and word based for series 2, 3 and 4; `NextionChecksum.CRC_fast`
  computes it with zlib (about 100x faster than the original).
* **Pages**: the usercode blocks of a page are `<event code> <name hash table> <init code>`; the page record points at the
  hash table (6-byte entries, CRC of the component name + id). Events are assigned to components by their event pointers.
  Page records are 12 or 16 bytes and object records 232, 204 or 194 bytes depending on the editor version; the sizes
  are derived from the section sizes. `host_events` lists the touch events that report to the host (`65 <page> <widget> ...`).
* **Operators**: the tables of `nxt-1.68.2` and `nxt-1.65.1` (F series) were found by aligning the compiled events of the
  nspanel-lovelace-ui project with the nextion2text output of its source; 13,235 of 13,235 command words of three
  projects decode correctly. Unverified entries show as `op:<size>:<number>`. Conditionals are shown as
  `if a>=b then jump 0x..` (the instruction jumps when the comparison is false, so the opposite condition is shown). For unknown editor versions or series the closest table is used and a warning is printed.
* **Pictures**: see the format comment above `getPictureRecords()`; `--no-pictures` skips the export.
* **Fonts**: records and the glyph tables of ASCII fonts (`getFonts()`); the glyph bitmaps are a compressed bit stream
  that is **not decoded**.
* **Resources**: `getResources()` lists the 12 slots of the resource table (bootloader parts, pictures, fonts, gmovs,
  videos, audios); `--raw` writes each of them.
* **Component memory** (not part of the output yet): in the Nextion F series files the initial memory of the components is
  stored per page; the layout of a text component is `<bco:u16> <xcen> <ycen> <password> <text>`, found by comparing with the
  nextion2text dump. The font and the font colour are not stored there, they are not located yet.

### Output layout

`python TFTTool.py -i FILE.tft` writes a tree of small files to `out/` (change it with `-o DIR`; `-o name.json` writes
the old single json file instead). Pictures are decoded by default (`--no-pictures` to skip), `--raw` also writes the raw
resource region, the usercode and each resource slot.

```
out/
  info.json            general info, page index (components and host widget ids per page), resources, checksums, errors
  headers/             header1.json, header2.json
  definitions/         global.nasm: the global data image decoded (series 4: variables, objects with a struct in the image,
                       page name hash table, the rest as hexdump without the zero lines) and the start-up code
  pages/NNN.nasm       a page: a comment per component (geometry, decoded attributes, text, host event) followed by its event
                       code as a listing: one statement per line, jump targets as `lbl_<address>:` labels,
                       variables as `local_1ab3` / `global_14`, assignments as `a = b` (the .json files keep `local:0x1ab3`)
  init/NNN.nasm        init code of a page, same listing format; `--hex` adds the address and bytes in front of every
                       statement, blocks that are data / not decoded are always `.data` followed by a hex dump in comment lines (16 bytes per line); a page's first
                       data block is split into the object address table (`.dd`) and one dump per object struct
  blocks/NNNN.json     only when pages can't be split: flat code block list, 500 per file
  pictures/            NNN.png and index.json
  fonts/               index.json (font headers), fontNN_atlas.png/.json (glyph atlases)
  raw/                 resources.bin, usercode.bin, res<slot>_<kind>.bin (with --raw)
```

A part of the dump that fails is recorded under `errors` in `info.json` instead of aborting the run.

### Tests

```
python3 -m unittest discover -s tests
```

The tests use synthetic data where they can (checksums, pictures, instruction set lookup, conditionals). Integration tests run
on the `.tft` files they find (`Example/`, `$TFTTOOL_SAMPLES`, and the sibling checkouts `TFTTool.dd5md` and
`nspanel-lovelace-ui` if present) and are skipped otherwise. `test_groundtruth.py` compares the decoded
nspanel-lovelace-ui files with the nextion2text output of their source.

### Known gaps

* Operator tables: verified for series 3 / 4 (`_derive_xseries`, editors 1.65.x - 1.67.x; only 10 size-4 operators are named, the other size-4 operators decode as `op:4:<number>`) and for TJC 1.67.4 series 0 / 1 / 100 (`_derive_tjc_1_67_4`). Checked against the event source of the `.HMI` files of Gaggiuino_35, QIDI (Plus3, Plus4, Q1), powadcr and klipmi (`tests/test_commands.py`): 99.9-100% of the source's command words are found in the decoded code; the decoded code has more (compiler generated `ref`, `doevents`, drawing commands).
* `gmov` animations are not decoded.
* Component attributes other than id, geometry and text are only decoded for text and button objects of series 4 files (see below).
* Nextion T0/K0 files are only tested with the two sample files.

### Glyph bitmaps
Fonts use the `.zi` glyph format (spec: `hagronnestad/nextion-font-editor`, ZI v5/v6): a table of
`<code u16><width u8><kerning left u8><kerning right u8><offset u24><length u16>` entries (offsets relative to the end of the
encoding name), and per glyph a stream of 1-byte drawing modes (`TFTFile.decodeGlyph`; level 0-7 anti-aliased or black/white).
The glyph atlases are written by default (`--no-glyphs` skips them): `fonts/fontNN_atlas.png` + `.json` (the character code of every cell) for every font with such a table
(the nspanel NotoSans fonts, all three Sovol fonts, the 11 fonts of each HASPone file).

### Extra tools

* `tools/screen_probe.py` (needs `pyserial`): probes a Nextion / TJC serial screen (`scan` for baud rate and model, `touch`
  for `sendxy` touch frames, `draw` for the stock drawing commands, `upload` for timed `twfile` JPEG uploads, `raw`, and `flash`,
  which verifies the `.tft` checksums with this tool before writing it with `whmi-wri`). Run with `--help`.
* `sovol/widget_map.py`: joins the decoded Sovol `.tft` with the host handlers of the stock client source (`ui.h` / `ui.cpp`,
  not included) into a page-to-widget map; the result for the stock firmware is `sovol/widget_map.md`.

### Component names
The names of components and pages are stored only as hashes (CRC of the name padded with zero bytes to 14 bytes, see nxt-doc
`TFT.md`; shown as `name hash=` in the object headers of `pages/NNN.nasm`). The tool guesses them: editor defaults (`b0`, `t12`, `tm0`, `tc0`, ...) and a short word list, and
adds `name` to the page index in `info.json` and to the headings of the listings. `--names FILE` adds your
own word list (one name per line). On the Sovol file 636 of 740 components and 11 of 67 pages get a name.

### Component attributes (series 4)
For series 4 files (TJC, e.g. Sovol SV08 Max, QIDI) the init data block of a page is a table of the object addresses followed
by the runtime structs of the objects (`+28` of an object record is its address). For text and button objects the fields
were found by comparing QIDI's `800_480_PLUS.tft` with its `.HMI` source (`tests/test_attributes.py` repeats the comparison);
`TFTFile._structAttributes` lists the offsets. They are printed as a comment in `pages/NNN.nasm` and
above each object dump in `init/NNN.nasm`: sta, font, background (bco / picc / pic depending on sta), pco, xcen, ycen,
txt_maxl, isbr and the text itself for text objects; borderc, picc, picc2, pco, xcen, ycen, txt_maxl, isbr and text for buttons.
Objects with ids of 256 and up keep their struct in the global data image (the first usercode block): the struct of the object
with address A is at offset A + 40 there, text pointers too. Pages (sta, pic), crop (picc) and video (vid, en) objects have a few fields too. In `init/NNN.nasm` an object's header and
the decoded fields are printed as comment lines and only the bytes that are neither decoded nor zero are dumped (all bytes with `--hex`).
Other attributes (bco and font of buttons, ...) and other component types are not decoded yet; most of them don't vary in
the QIDI sources, so their position can't be found by comparison.

### Global data image (series 4)
The first usercode block is the global data image. An address `A` of the code is at offset `A + 40` (the first 40 bytes are a
header: sizes and positions of the page name hash table and of a second table). `definitions/global.nasm` lists the global
variables the code uses (`global_14` is the language, `global_2c` the brightness, with their initial values), every object whose
struct lives in the image (ids of 256 and up; the `0x3c` external picture objects show their `path`, e.g. `ram/176.jpg`), the page
name hash table (hash and page index of every page; the hashes match the names of the page objects) and what is left that is not zero.

## Related projects

Format documentation and tools this work relied on (or was checked against):

* [UNUF/nxt-doc](https://github.com/UNUF/nxt-doc) - `.tft` format, full instruction set, upload protocol; [UNUF/TFTTool](https://github.com/UNUF/TFTTool) is the tool this repository started from.
* [hagronnestad/nextion-font-editor](https://github.com/hagronnestad/nextion-font-editor) - the `.zi` font format (glyph codec used by `--glyphs`).
* [stg/nextion_zi_font_tools](https://github.com/stg/nextion_zi_font_tools) - `.zi` reader/writer in C, BMFont converter.
* [vladtsvetkov880-hub/nextion-hmi-format](https://github.com/vladtsvetkov880-hub/nextion-hmi-format) - the `.HMI` source format (used to get ground truth: attributes and event source of the sample projects).
* [YXerer668/tjc-usart-hmi-toolchain](https://github.com/YXerer668/tjc-usart-hmi-toolchain) - builds flashable TJC `.tft` files without the editor; confirms the name hash, event pointers and object record layout.

Other forks of TFTTool: [0xD34D](https://github.com/0xD34D/TFTTool), [andrew-harness](https://github.com/andrew-harness/TFTTool),
[CalDymos](https://github.com/CalDymos/TFTTool), [dd5md](https://github.com/dd5md/TFTTool).

Projects that contain a `.tft` together with its `.HMI` source (ground truth for operators, attributes and names):

* [joBr99/nspanel-lovelace-ui](https://github.com/joBr99/nspanel-lovelace-ui) (Nextion F series, also `nextion2text` dumps),
  [HASwitchPlate/HASPone](https://github.com/HASwitchPlate/HASPone) (series 0, 1, 100 and TJC),
  [Photonsters/Gaggiuino_35](https://github.com/Photonsters/Gaggiuino_35) (series 0, 3 and 100),
  [QIDITECH/QIDI_PLUS3](https://github.com/QIDITECH/QIDI_PLUS3) (series 4),
  [straga/klipmi](https://github.com/straga/klipmi) (series 4: the OpenQ1 UI of the QIDI Q1 Pro; also a Klipper/Moonraker bridge for TJC and Nextion screens).

Host side libraries (serial protocol only, nothing about the file formats):
[AlexanderTonn/EasyNextionLibrary](https://github.com/AlexanderTonn/EasyNextionLibrary),
[jyberg/Enhanced-Nextion-Library](https://github.com/jyberg/Enhanced-Nextion-Library),
[alambe94/STM32_Nextion](https://github.com/alambe94/STM32_Nextion),
[CuriousTech/ESP-HVAC](https://github.com/CuriousTech/ESP-HVAC).

Klipper touchscreen UIs: [prestonbrown/helixscreen](https://github.com/prestonbrown/helixscreen) (LVGL, runs on the printer or as a remote
screen via Moonraker; no Nextion support, an alternative to KlipperScreen for the Sovol screen project).
