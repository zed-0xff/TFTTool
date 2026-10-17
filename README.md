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
  `if a<b else jump 0x..`. For unknown editor versions or series the closest table is used and a warning is printed.
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
  definitions/         definitions.json (+ global_blocks.json)
  pages/NNN.json       components of a page: position, events, host events, text
  names/NNN.json       component id -> hash of its name
  init/NNN.json        init code of a page
  blocks/NNNN.json     only when pages can't be split: flat code block list, 500 per file
  pictures/            NNN.png and index.json
  fonts/index.json     font headers and the glyph tables of ASCII fonts
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

* Series 4 operator tables (TJC) are unverified; there is no source to compare with.
* F series pictures (format 1, a dictionary of 8 pixel tiles) and `gmov` animations are not decoded.
* Glyph bitmaps of the fonts are not decoded.
* Component attributes other than id, geometry and text (font, colours, ...) are not decoded.
* Nextion T0/K0 files are only tested with the two sample files.

### Glyph bitmaps (partial)
Glyph streams are tokenised with a per-token pixel count (`TFTFile.glyphRunLengths`; sums to advance x line height for
~1600 of 1830 glyphs of the NotoSans 24 `.zi`), but the pixel level coding of the tokens is still unknown, so no glyph
bitmaps are exported.
