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

* Header 2 layout and XOR key are detected automatically. The key is derived from `ressources_files_address`,
  which header 1 and header 2 both contain. The result is validated against six consistency checks.
  `--probe` prints what was detected. This makes files from models that are missing in `_modelXORs` work
  (two such keys are recorded in `_learnedModels`).
* Page and object record sizes are derived from the section sizes (they differ between editor versions:
  page 12/16 bytes, object 232/204/194 bytes).
* Instruction sets for `tjc-1.65.5`/`tjc-1.66.1` and `nxt-1.6x`. If the editor version or model series has no
  instruction set, the closest one is used and a warning is printed.
* Output (JSON) contains pages with components (type, x/y/w/h, events) and, for touch events that report to the
  host, `host_events` with the widget id that arrives in the `0x65 <page> <widget> <press/release> FF FF FF` frame.
* `--extract DIR` writes the raw resource region and the raw usercode as binary files.

Known limitations: series 4 uses the series 3 instruction set (not verified); Nextion example files still fall back
to a flat block list instead of per-page output.
