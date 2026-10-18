"""
TFTTool by Max Zuidberg

This Source Code Form is subject to the terms of the Mozilla Public
License, v. 2.0. If a copy of the MPL was not distributed with this
file, You can obtain one at http://mozilla.org/MPL/2.0/.

"""

import sys
import struct
import json
import string
import argparse
import collections
import array
import re
from pathlib import Path
from NextionChecksum import Checksum
from NextionInstructionSets import all_instruction_sets

# Disable traceback for Nuitka compiling
if not __debug__:
    sys.tracebacklimit = 0

class pdict(dict):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    def __str__(self):
        return json.dumps(self, indent=4)

def hexStr(raw:bytes):
    return " ".join("{:02X}".format(c) for c in raw)

class Usercode:
    class CodeBlock:
        _operandTypesEncode = {
            "local:":  0x01,
            "global:": 0x05,
            "system:": 0x04,
            "":        0x03, #actual value
        }
        _operandTypesDecode = {v: k for k, v in _operandTypesEncode.items()}

        def __init__(self, instruction_set:dict, rawBlock:bytes, hexVals=True, globalVars=dict(), localVars=dict()):
            self.instruction_set = instruction_set
            self.raw = rawBlock
            self._asHex = hexVals
            self._globalVars = globalVars
            self._localVars  = localVars
            self.decoded = ""
            self._decode(hexVals)

        _compareOps = {1: "==", 2: "<", 3: ">", 4: "<=", 5: ">=", 6: "!="}
        # `i` jumps when the comparison is false, so it is shown as the opposite condition followed by the jump
        _jumpConditions = {1: "!=", 2: ">=", 3: "<=", 4: ">", 5: "<", 6: "=="}

        def _decode(self, hexVals=True):
            self._decode_raw(hexVals)
            self._beautify()

        def _beautify(self):
            """The operator `i` is a conditional: `i <a>,<b>,<comparison>,<jump>`. Comparison codes (verified against
            nextion2text output): 1 ==, 2 <, 3 >, 4 <=, 5 >=, 6 !=; the jump (bytes) skips the body when the
            condition is false."""
            if not isinstance(self.decoded, str):
                return
            m = re.fullmatch(r"i (.*),(\d),(0x[0-9a-f]+|\d+)", self.decoded, flags=re.S)
            if m and int(m.group(2)) in self._compareOps:
                args = m.group(1)
                quoted, cut = False, -1
                for i, ch in enumerate(args):          # last comma that is not inside a string literal
                    if ch == '"':
                        quoted = not quoted
                    elif ch == "," and not quoted:
                        cut = i
                if cut >= 0:
                    a, b = args[:cut], args[cut + 1:]
                    self.decoded = f"if {a}{self._jumpConditions[int(m.group(2))]}{b} then jump {m.group(3)}"

        def _decode_raw(self, hexVals=True):
            if not self.raw:
                self.decoded = "EMPTY_BLOCK"
                return
            else:
                self.decoded = ""
            operation = False
            strActive = False
            escActive = False
            skip = 0
            replaced = False
            # Check if its a (hash) value list
            # Format n * (4-byte-hash + 2-byte-index)
            isList = False
            if len(self.raw) % 6 == 0:
                entries = dict()
                for i in range(0, len(self.raw), 6):
                    value = self.raw[i + 0:i + 4]
                    key   = self.raw[i + 4:i + 6]
                    value = struct.unpack("<I", value)[0]
                    key   = struct.unpack("<H", key)[0]
                    value = self._hexOrNot(value)
                    entries[key] = value
                if (max(entries.keys()) + 1) * 6 == len(self.raw):
                    isList = True
                    for i in range(len(self.raw) // 6):
                        if i not in entries:
                            isList = False
            if isList:
                self.decoded = entries
            else:
                # Search for strings
                stringRegions = set()
                for i, b in enumerate(self.raw):
                    if strActive:
                        stringRegions.add(i)
                        if not escActive:
                            if b == ord("\\"):
                                escActive = True
                            elif b == ord("\""):
                                strActive = not strActive
                        else:
                            escActive = False
                nostrings = b"".join([chr(c).encode() for i, c in enumerate(self.raw) if i not in stringRegions])
                # Search for commands
                for op in self.instruction_set["other_operators"]["unary"]:
                    if op.encode("ascii") in nostrings:
                        operation = True
                        break
                if not operation:
                    for op in self.instruction_set["other_operators"]["binary"]:
                        if op.encode("ascii") in nostrings:
                            operation = True
                            break
                if not operation:
                    jmp = struct.pack("<H", self.instruction_set["other_operators"]["jmp"])
                    if nostrings.startswith(jmp):
                        operation = True
                        skip += len(jmp)
                        self.decoded += "jmp "

                if not operation:
                    if self.raw.startswith(b"\x09"):
                        l = 1
                        if len(self.raw) == 3:
                            operation = True
                        else:
                            l += 2
                        if l < len(self.raw):
                            c = self.raw[l]
                            if c in self._operandTypesDecode.keys() or chr(c) in string.printable:
                                operation = True

                if operation:
                    decoded = False
                    for i, b in enumerate(self.raw):
                        if skip:
                            skip -= 1
                            continue
                        if i not in stringRegions:
                            replaced = True
                            if b == 0x09:
                                localI = i
                                dataStruct = "BB"
                                localI += 1
                                skip = struct.calcsize(dataStruct)
                                op_num, op_size = struct.unpack_from(dataStruct, self.raw, localI)
                                if op_size in self.instruction_set["numerated_operators"]:
                                    op_list = self.instruction_set["numerated_operators"][op_size]
                                    if op_num < len(op_list) and op_list[op_num]:
                                        self.decoded += op_list[op_num]
                                        decoded = True
                                if not decoded:
                                    self.decoded += f"op:{op_size}:{self._hexOrNot(op_num)}"
                                if i < len(self.raw) - 1:
                                    self.decoded += " "
                            elif b in self._operandTypesDecode:
                                dataStruct = "<I"
                                skip = struct.calcsize(dataStruct)
                                try:
                                    val = struct.unpack_from(dataStruct, self.raw, i+1)[0]
                                    varLookup = dict()
                                    if b == 1: #local variable
                                        varLookup = self._localVars
                                    elif b == 5: #global variable
                                        varLookup = self._globalVars
                                    elif b == 4: #system variable
                                        # System vars are not 4 byte pointers like local or global vars.
                                        # The lowest byte actually encodes the "class" of the variable.
                                        # Similar to the operator decoding.
                                        sysvar_size = val & 0xff
                                        val >>= 8
                                        if sysvar_size in self.instruction_set["numerated_system_variables"]:
                                            sysvars = self.instruction_set["numerated_system_variables"][sysvar_size]
                                            # TODO not the cleanest solution
                                            if val < len(sysvars):
                                                varLookup = {val: sysvars[val]}
                                    if val not in varLookup:
                                        self.decoded += self._operandTypesDecode[b] + self._hexOrNot(val)
                                    else:
                                        self.decoded += varLookup[val]
                                except:
                                    replaced = False
                            else:
                                replaced = False
                        if not replaced:
                            self.decoded += chr(b)
                else:
                    printable = True
                    for c in self.raw:
                        if chr(c) not in string.printable:
                            printable = False
                            break
                    if printable:
                        self.decoded = self.raw.decode()
                    else:
                        self.decoded = "RAW_DATA: " + hexStr(self.raw)

        def setHex(self, asHex):
            self._asHex = asHex
            self._decode()

        def _hexOrNot(self, val, asHex=-1):
            if asHex == -1:
                asHex = self._asHex
            if asHex:
                return hex(val)
            else:
                return str(val)

        def rawHex(self, raw:bytes):
            return " ".join(["{:02X}".format(c) for c in raw])

        def __repr__(self):
            if len(self.raw) == 0:
                return "EMPTY_BLOCK"
            elif self.decoded:
                return self.decoded
            else:
                return hexStr(self.raw)

    def __init__(self, instruction_set:int, rawUsercode:bytes, hexVals=True):
        self.instruction_set = instruction_set
        self.raw = rawUsercode
        nextBlock = 0
        #self.rawGlobalMem, nextBlock = self._getRawBlock(nextBlock)
        #self.rawPageList, nextBlock  = self._getRawBlock(nextBlock)
        self.blocks = dict()
        while nextBlock <= len(self.raw) - 4:
            currentBlock = nextBlock
            blockSize = struct.unpack_from("<I", self.raw, currentBlock)[0]
            if currentBlock + 4 + blockSize > len(self.raw):
                break  # block size overflows available data
            raw, nextBlock = self._getRawBlock(currentBlock)
            self.blocks[currentBlock] = self.CodeBlock(self.instruction_set, raw)
        #self.pages = dict()
        #for i in range(0, len(self.rawPageList), 6):
        #    value = self.rawPageList[i+0:i+4]
        #    key   = self.rawPageList[i+4:i+6]
        #    value = struct.unpack("<I", value)[0]
        #    key   = struct.unpack("<H", key)[0]
        #    self.pages[key] = value

    def _getRawBlock(self, offset):
        blockSize = struct.unpack_from("<I", self.raw, offset)[0]
        offset += 4
        newOffset = offset + blockSize
        return self.raw[offset:newOffset], newOffset

class HeaderData:
    def __init__(self, raw:bytes, properties:dict, decode_hint:int=0):
        self.size    = properties["size"]
        self.start   = properties["start"]
        self.hasCRC  = properties["hasCRC"]
        self.content = pdict(properties["content"])

        # Read content.
        self._contentStruct = "<" + "".join(v["struct"] for v in self.content.values())
        self._contentSize = struct.calcsize(self._contentStruct)
        self._emptyRegion = self.size - self._contentSize
        if self.hasCRC:
            self._emptyRegion -= 4
        if self._emptyRegion < 0:
            raise Exception("Header size mismatch")
        if len(raw) < self.size:
            raise Exception("raw size smaller than header")

        fullStruct = self._contentStruct + str(self._emptyRegion) + "x"
        if self.hasCRC:
            fullStruct += "I"

        # Now that the structure has been parsed from the content dict, convert it to a flat, "normal" k:v dict and
        # initialize it with the given default values.
        for k, v in self.content.items():
            self.content[k] = v["val"]

        data = raw[self.start: (self.start + self.size)]

        # XOR decoding. By default the key does nothing.
        self.key = bytes(len(raw))
        self.encrypted = False
        if type(decode_hint) is int:
            self.set_key(decode_hint)
            # only decode the part that actually contains encoded data. Copy the rest as-is.
            data = bytes([b ^ self.key[i] for i, b in enumerate(data[:self._contentSize])]) + data[self._contentSize:]
            data = struct.unpack(fullStruct, data)
            for i, k in enumerate(self.content.keys()):
                self.content[k] = data[i]
            if self.hasCRC:
                self.crc = data[-1]
        # (partially) decoded header. In this case we ignore the data from raw.
        elif type(decode_hint) is str:
            # String can be hex data ("01 3a 44 [...]"), a json with values, or a file path to either one.
            # Check if it's a file path. If so, replace the hint with the file content.
            try:
                with open(decode_hint) as f:
                    decode_hint = f.read()
            except OSError:
                pass
            data = None
            # Check if it's a hex string...
            try:
                data = bytes.fromhex(decode_hint)
            except ValueError:
                pass
            if data:
                data = struct.unpack_from(self._contentStruct, data, 0)
                for i, k in enumerate(self.content.keys()):
                    self.content[k] = data[i]
            # ... else check if it's a json string...
            else:
                try:
                    # Double quotes get removed from the CLI if not escaped. Single quotes work, but the json parser
                    # doesn't like them.
                    data = json.loads(decode_hint.replace("\'", "\""))
                except json.decoder.JSONDecodeError:
                    pass
                if data:
                    # Skip all unknown keys.
                    for k, v in data.items():
                        if k in self.content:
                            if type(v) is int:
                                self.content[k] = v
                            else:
                                try:
                                    self.content[k] = int(v, 16)
                                except:
                                    try:
                                        self.content[k] = int(v, 2)
                                    except:
                                        self.content[k] = int(v)

            # Update CRC. This requires serializing the data. Both things are done by getRaw
            # even though we don't use or need the actual raw version of the header.
            self.getRaw()

    def set_key(self, key):
        if type(key) is int:
            if key:
                self.encrypted = True
            else:
                self.encrypted = False
            self.key = struct.pack("<I", key)
            self.key = self.key * (self.size // len(self.key) + 1)
        elif type(key) in (bytes, bytearray):
            self.encrypted = False
            for b in key:
                if b:
                    self.encrypted = True
                    break
            self.key = key
        else:
            raise Exception(f"Key has unknown type: {key} (type: {type(key)})")

    def getRaw(self):
        raw = struct.pack(self._contentStruct, *self.content.values())
        if self.encrypted:
            raw = bytes([b ^ self.key[i] for i, b in enumerate(raw)])
        raw += b"\xff" * self._emptyRegion
        if self.hasCRC:
            self.crc = Checksum().CRC(data=raw)
            raw += struct.pack("<I", self.crc)
        return raw


class TFTFile:

    _nextion_type_names = {
        0x79: "page",           # page
        0x74: "text",           # t
        0x37: "scrolling_text", # g
        0x36: "number",         # n
        0x3B: "xfloat",         # x
        0x62: "button",         # b
        0x35: "dual_state",     # bt
        0x01: "slider",         # h
        0x6A: "progress_bar",   # j
        0x71: "crop",           # q
        0x70: "picture",        # p
        0x00: "waveform",       # s
        0x7A: "gauge",          # z
        0x33: "timer",          # tm
        0x34: "variable",       # va
        0x38: "checkbox",       # c
        0x39: "radio",          # r
        0x6D: "hotspot",        # m
        0x3A: "qrcode",         # qr
        0x05: "touchcap",       # tc
    }

    _modelXORs = {
         "NX3224T024_011": 0x6d713e32,
         "NX3224T028_011": 0x965cdd00,
         "NX4024T032_011": 0x3b91869c,
         "NX4832T035_011": 0xebab2932,
         "NX4827T043_011": 0x1eb276b6,
         "NX8048T050_011": 0x3b66b524,
         "NX8048T070_011": 0xc079789d,

         "NX3224F024_011": 0,
         "NX3224F028_011": 0,
         "NX4832F035_011": 0,

         "NX3224K024_011": 0x1324a9d7,
         "NX3224K028_011": 0xe8094ae5,
         "NX4024K032_011": 0x45c41179,
         "NX4832K035_011": 0x95febed7,
         "NX4827K043_011": 0x60e7e153,
         "NX8048K050_011": 0x453322c1,
         "NX8048K070_011": 0xbe2cef78,

         "NX4827P043_011": 0xcdc7c258,
         "NX8048P050_011": 0xe81301ca,
         "NX8048P070_011": 0x130ccc73,
         "NX1060P070_011": 0x18a58690,
         "NX1060P101_011": 0xdcb511f5,

        "TJC3224T022_011": 0x189a66fb,
        "TJC3224T024_011": 0x54cd4ea3,
        "TJC3224T028_011": 0xafe0ad91,
        "TJC4024T032_011": 0x022df60d,
        "TJC4832T035_011": 0xd21759a3,
        "TJC4827T043_011": 0x270e0627,
        "TJC8048T050_011": 0x02dac5b5,
        "TJC8048T070_011": 0xf9c5080c,

        "TJC1612T118_011": 0,
        "TJC3224T122_011": 0,
        "TJC3224T124_011": 0,
        "TJC3224T128_011": 0,
        "TJC4024T132_011": 0,
        "TJC4832T135_011": 0,

        "TJC3224K022_011": 0x66cff11e,
        "TJC3224K024_011": 0x2a98d946,
        "TJC3224K028_011": 0xd1b53a74,
        "TJC4024K032_011": 0x7c7861e8,
        "TJC4827K043_011": 0x595b91c2,
        "TJC4832K035_011": 0xac42ce46,
        "TJC8048K050_011": 0x7c8f5250,
        "TJC8048K070_011": 0x87909fe9,

        "TJC4848X340_011": 0x9ea280d2,
        "TJC4827X343_011": 0x767c3bae,
        "TJC8048X343_011": 0x5eb5f196,
        "TJC8048X350_011": 0x53a8f83c,
        "TJC8048X370_011": 0xa8b73585,
        "TJC1060X370_011": 0xa31e7f66,
        "TJC8060X380_011": 0xd9b92b5c,
        "TJC1060X3A1_011": 0x2c3a9902,

        "TJC4848X540_011": 0x8e472af9,
        "TJC4827X543_011": 0x66999185,
        "TJC8048X543_011": 0x4e505bbd,
        "TJC8048X550_011": 0x434d5217,
        "TJC8048X570_011": 0xb8529fae,
        "TJC1060X570_011": 0xb3fbd54d,
        "TJC8060X580_011": 0xc95c8177,
        "TJC1060X5A1_011": 0x3cdf3329,
    }
    _models = list(_modelXORs.keys())
    _modelCRCs = [Checksum().CRC(data=m.encode("ascii")) for m in _models]

    _fileHeader1 = {
        "size":    0xc8,
        "start":   0x00,
        "hasCRC":  True,
        "content": {
            "old_lcd_orientation":                  {"struct": "B", "val": 0}, # editor fixes this to 0
            "editor_version_main":                  {"struct": "B", "val": 0},
            "editor_version_sub":                   {"struct": "B", "val": 0},
            "editor_vendor":                        {"struct": "B", "val": 0},
            "unknown_old_firmware_address":         {"struct": "I", "val": 0},
            "unknwon_old_firmware_size":            {"struct": "I", "val": 0},
            "old_lcd_resolution_width":             {"struct": "H", "val": 0}, # always largest resolution
            "old_lcd_resolution_height":            {"struct": "H", "val": 0}, # always smallest resolution
            "lcd_resolution_x":                     {"struct": "H", "val": 0}, # x-resolution in current orientation (cf ui_orientation)
            "lcd_resolution_y":                     {"struct": "H", "val": 0}, # y-resolution in current orientation (cf ui_orientation)
            "ui_orientation":                       {"struct": "B", "val": 0},
            "model_series":                         {"struct": "B", "val": 0}, # 0=T0, 1=K0, 2=X3, 3=X5, 100=T1
            "unknown_otp":                          {"struct": "B", "val": 0},
            "editor_version_bugfix":                {"struct": "B", "val": 3},
            "unknown_stm32_lcddriver_address":      {"struct": "I", "val": 0},
            "unknown_res1":                         {"struct": "H", "val": 0},
            "unknown_old_stm32_lcddriver_address":  {"struct": "I", "val": 0},
            "unknown_stm32_lcddriver_size":         {"struct": "I", "val": 0},
            "unknown_stm32_binary_address":         {"struct": "I", "val": 0},
            "unknown_stm32_binary_size":            {"struct": "I", "val": 0},
            "model_crc":                            {"struct": "I", "val": 0},
            "file_version":                         {"struct": "B", "val": 0},
            "unknown_encode_start":                 {"struct": "B", "val": 0},
            "ressources_files_address":             {"struct": "I", "val": 0},
            "ressources_files_count":               {"struct": "I", "val": 0},
            "file_size":                            {"struct": "I", "val": 0},
            "ressource_files_size":                 {"struct": "I", "val": 0},
            "ressource_files_crc":                  {"struct": "I", "val": 0},
            "unknown_memory_fs_size":               {"struct": "I", "val": 0},
            "unknown_next_file_address":            {"struct": "I", "val": 0},
            "unknown_file_id":                      {"struct": "I", "val": 0},
            "unknown_metadata_size":                {"struct": "I", "val": 0},
        },
    }
    _fileHeader2 = {
        "size":    0xc8,
        "start":   0xc8,
        "hasCRC":  True,
        "content": {
            "static_usercode_address":      {"struct": "I", "val": 0},
            "app_attributes_data_address":  {"struct": "I", "val": 0},
            "ressources_files_address":     {"struct": "I", "val": 0},
            "usercode_address":             {"struct": "I", "val": 0},
            "unknown_pages_address":        {"struct": "I", "val": 0},
            "unknown_objects_address":      {"struct": "I", "val": 0},
            "pictures_address":             {"struct": "I", "val": 0},
            "gmovs_address":               {"struct": "I", "val": 0},
            "videos_address":              {"struct": "I", "val": 0},
            "audios_address":              {"struct": "I", "val": 0},
            "fonts_address":               {"struct": "I", "val": 0},
            "unknown_maincode_binary":      {"struct": "I", "val": 0},
            "pages_count":                  {"struct": "H", "val": 0},
            "unknown_objects_count":        {"struct": "H", "val": 0},
            "pictures_count":               {"struct": "H", "val": 0},
            "gmovs_count":                  {"struct": "H", "val": 0},
            "videos_count":                 {"struct": "H", "val": 0},
            "audios_count":                 {"struct": "H", "val": 0},
            "fonts_count":                  {"struct": "H", "val": 0},
            "unknown_res1":                 {"struct": "H", "val": 0},
            "unknown_encode":               {"struct": "B", "val": 0},
            "unknown_res2":                 {"struct": "B", "val": 0},
            "unknown_res3":                 {"struct": "H", "val": 0},
        },
    }
    _fileHeader2_ext = {
        "size":    0xc8,
        "start":   0xc8,
        "hasCRC":  True,
        "content": {
            "static_usercode_address":      {"struct": "I", "val": 0},
            "app_vas_address":              {"struct": "I", "val": 0},
            "app_vas_count":                {"struct": "I", "val": 0},
            "app_attributes_data_address":  {"struct": "I", "val": 0},
            "ressources_files_address":     {"struct": "I", "val": 0},
            "usercode_address":             {"struct": "I", "val": 0},
            "unknown_pages_address":        {"struct": "I", "val": 0},
            "unknown_objects_address":      {"struct": "I", "val": 0},
            "pictures_address":             {"struct": "I", "val": 0},
            "gmovs_address":               {"struct": "I", "val": 0},
            "videos_address":              {"struct": "I", "val": 0},
            "audios_address":              {"struct": "I", "val": 0},
            "fonts_address":               {"struct": "I", "val": 0},
            "unknown_maincode_binary":      {"struct": "I", "val": 0},
            "pages_count":                  {"struct": "H", "val": 0},
            "unknown_objects_count":        {"struct": "H", "val": 0},
            "pictures_count":               {"struct": "H", "val": 0},
            "gmovs_count":                  {"struct": "H", "val": 0},
            "videos_count":                 {"struct": "H", "val": 0},
            "audios_count":                 {"struct": "H", "val": 0},
            "fonts_count":                  {"struct": "H", "val": 0},
            "unknown_res1":                 {"struct": "H", "val": 0},
            "unknown_encode":               {"struct": "B", "val": 0},
            "unknown_res2":                 {"struct": "B", "val": 0},
            "unknown_res3":                 {"struct": "H", "val": 0},
        },
    }

    def __init__(self, raw:bytes, hexVals=True, header2_hint:str="", decode_usercode=True):
        self.raw = raw
        self.hexVals = hexVals
        self.header1 = HeaderData(self.raw, self._fileHeader1)
        try:
            self.model = self._models[self._modelCRCs.index(self._getVal("model_crc"))]
        except:
            self.model = "Unknown display model"
        self.header2_note = ""
        self.header2 = self._load_header2(header2_hint)

        # Determine correct instruction set based on editor and model series
        self.instruction_note = ""
        self.instructions = self._find_instructions()
        if not self.instructions:
            print(f"Warning: No instruction set found that matches editor version {self.getEditorVersionStr()}. "
                  f"You won't be able to decode any usercode. ")
        elif self.instruction_note:
            print(f"Warning: {self.instruction_note}")

        # Decode Usercode if requested
        self.usercode = None
        if decode_usercode:
            self.decode_usercode(hexVals=hexVals)

    # Character encodings of the header 2 field "unknown_encode" (table found by CalDymos' fork).
    _charEncodings = ["null", "ascii", "gb2312", "iso-8859-1", "iso-8859-2", "iso-8859-3", "iso-8859-4", "iso-8859-5",
                      "iso-8859-6", "iso-8859-7", "iso-8859-8", "iso-8859-9", "iso-8859-13", "iso-8859-15",
                      "iso-8859-11", "ks_c_5601-1987", "big5", "windows-1255", "windows-1256", "windows-1257",
                      "windows-1258", "windows-874", "koi8-r", "shift-jis", "utf-8"]

    def getCharEncoding(self):
        code = self.header2.content.get("unknown_encode", -1)
        return self._charEncodings[code] if 0 <= code < len(self._charEncodings) else f"unknown ({code})"

    # ---- Header 2 detection -------------------------------------------------------------------------------------

    # Keys that were recovered from files whose model name is unknown (CRC of the name -> (label, key)).
    _learnedModels = {
        0x38a388a8: ("unknown 480x272 series-4 (Sovol SV08 Max)", 0xf3d2481f),
        0x7527dcfa: ("unknown 800x480 series-4 (QIDI Plus3)",     0xd6068b8d),
    }

    # Header 2 layouts, tried in this order. They differ only in whether the two app_vas words are present.
    @classmethod
    def _header2Layouts(cls):
        ext = cls._fileHeader2_ext
        legacy = cls._fileHeader2
        return [("ext", ext), ("legacy", legacy)]

    def _validateHeader2(self, h2):
        """Plausibility check of a decoded header 2. Returns a score (number of passed checks) and the max."""
        c = h2.content
        res_addr = self.header1.content["ressources_files_address"]
        res_size = self.header1.content["ressource_files_size"]
        fsize = len(self.raw)
        checks = [
            c["ressources_files_address"] == res_addr,
            c["usercode_address"] == res_addr + res_size,
            c["usercode_address"] < fsize,
            c["unknown_pages_address"] >= c["usercode_address"],
            c["unknown_pages_address"] < c["unknown_objects_address"] <= fsize,
            c["pages_count"] > 0 and (c["unknown_objects_address"] - c["unknown_pages_address"]) % c["pages_count"] == 0,
        ]
        return sum(checks), len(checks)

    def _load_header2(self, hint):
        """Find the header 2 layout and XOR key.
        Order of preference: explicit hint, key of the known/learned model, key derived from header 1.
        The key is derived by using the fact that header 2 repeats ressources_files_address from header 1."""
        h1 = self.header1.content
        res_addr = h1["ressources_files_address"]
        if hint:
            layout = self._header2Layouts()[0][1]
            if self._getVal("editor_version_main") == 1 and self._getVal("editor_version_sub") < 65:
                layout = self._fileHeader2
            self.header2_note = "header 2 given by user"
            return HeaderData(self.raw, layout, hint)

        candidates = []  # (label, key)
        crc = h1["model_crc"]
        if self.model in self._modelXORs:
            candidates.append(("model key", self._modelXORs[self.model]))
        if crc in self._learnedModels:
            candidates.append(("learned key", self._learnedModels[crc][1]))
        best = None
        for lname, layout in self._header2Layouts():
            keys = list(candidates)
            # Derive a key from the position of ressources_files_address in this layout.
            off = layout["start"] + 4 * list(layout["content"]).index("ressources_files_address")
            derived = struct.unpack_from("<I", self.raw, off)[0] ^ res_addr
            keys.append(("derived key", derived))
            keys.append(("no key", 0))
            for kname, key in keys:
                try:
                    h2 = HeaderData(self.raw, layout, key)
                except Exception:
                    continue
                score, total = self._validateHeader2(h2)
                if best is None or score > best[0]:
                    best = (score, total, h2, lname, kname, key)
                if score == total:
                    break
            if best and best[0] == best[1]:
                break
        score, total, h2, lname, kname, key = best
        self.header2_note = f"layout={lname}, {kname}=0x{key:08x}, validation {score}/{total}"
        if score < total:
            fresh = HeaderData(self.raw, self._header2Layouts()[0][1], 0)
            for k in fresh.content:
                fresh.content[k] = 0
            if self._derive_header2(fresh):
                self.header2_note = "header 2 derived from the file structure (it can't be decoded)"
                return fresh
            print(f"Warning: header 2 could not be fully validated ({self.header2_note}). Values may be wrong; "
                  f"consider passing --header2.")
        return h2

    # ---- Header 2 derived from the file structure ----------------------------------------------------------------

    _objRecordSizes = (232, 204, 194)

    def _scanTables(self):
        """Finds the page and object tables from the end of the file (the object records are the last section before
        the file checksum, the page table is right in front of them). Returns a dict or None."""
        raw, n = self.raw, len(self.raw)
        floor = self.header1.content["ressources_files_address"] + self.header1.content["ressource_files_size"]
        sizes = list(self._objRecordSizes) + [r for r in range(150, 300) if r not in self._objRecordSizes]
        for rec in sizes:
            for pad in range(0, 9):
                for N in range(1, 6000):
                    o = n - 4 - pad - N * rec
                    if o < floor:
                        break
                    if raw[o] != 0x79 or raw[o + 1] != 0 or raw[o + 2] != 0:      # first record: the page object, id 0
                        continue
                    for prs in (16, 12):
                        for P in range(1, 400):
                            pa = o - prs * P
                            if pa < floor:
                                break
                            first = struct.unpack_from("<HH", raw, pa)
                            if first[0] != 0:
                                continue
                            recs = [struct.unpack_from("<HH", raw, pa + prs * i) for i in range(P)]
                            if all(recs[i][0] + recs[i][1] == recs[i + 1][0] for i in range(P - 1)) \
                                    and recs[-1][0] + recs[-1][1] == N:
                                return {"pages_addr": pa, "objects_addr": o, "pages": P, "objects": N,
                                        "page_record": prs, "object_record": rec, "pad": pad}
        return None

    # Names of the slots of the resource table (header "ressources_files_count" slots of <offset> <size> <0>).
    _resourceSlotNames = {0: "bootloader0", 1: "bootloader1", 7: "pictures", 8: "fonts", 9: "gmovs", 10: "videos",
                          11: "audios"}

    def _resourceTable(self):
        """The resource files listed at the start of the resource region: <offset:u32> <size:u32> <0:u32> per slot
        (offsets are relative to the region). Returns [(absolute offset, size, slot index)] for the used slots."""
        base = self.header1.content["ressources_files_address"]
        count = min(max(self.header1.content["ressources_files_count"], 0), 64)
        out = []
        for i in range(count):
            off, size, _ = struct.unpack_from("<III", self.raw, base + 12 * i)
            if size:
                out.append((base + off, size, i))
        return out

    def getResources(self):
        """The resource files with their kind. Slots 2..6 are only used by some editor versions (F series)."""
        res = []
        for start, size, slot in self._resourceTable():
            kind = self._resourceSlotNames.get(slot, f"resource{slot}")
            if slot == 7 and self._probePictureTable(start, size) == 0:
                kind += " (unrecognised layout)"
            res.append({"slot": slot, "kind": kind, "offset": start, "size": size})
        return res

    def _probePictureTable(self, start, size):
        """Number of pictures if start holds a picture table (24-byte records followed by the picture data)."""
        try:
            first = struct.unpack_from("<I", self.raw, start + 8)[0]
            if first == 0 or first % 24 or struct.unpack_from("<I", self.raw, start + 4)[0] != 0:
                return 0
            count = first // 24
            end = 0
            for i in range(count):
                pid, off, w, h, sz = struct.unpack_from("<IIHHI", self.raw, start + 24 * i + 4)
                if pid != i or off < end:
                    return 0
                end = off + sz
            return count if end == size else 0
        except struct.error:
            return 0

    def _probeFontTable(self, start, size):
        """Number of fonts if start holds font records (44 bytes each, followed by the font data)."""
        try:
            if self.raw[start:start + 2] != b"\x04\xff":
                return 0
            first = struct.unpack_from("<I", self.raw, start + 24)[0]
            if first == 0 or first % 44 or first >= 44 * 4096:
                return 0
            count = first // 44
            end = first
            for i in range(count):
                sz, off = struct.unpack_from("<II", self.raw, start + 44 * i + 20)
                if off != end:
                    return 0
                end = off + sz
            return count if end == size else 0
        except struct.error:
            return 0

    def _derive_header2(self, h2):
        """Fills the header 2 fields that can be found from the structure of the file. Used when header 2 can't be
        decoded (encrypted differently, e.g. Nextion F series). Returns True on success."""
        h1 = self.header1.content
        c = h2.content
        base, rsize = h1["ressources_files_address"], h1["ressource_files_size"]
        tables = self._scanTables()
        if not tables:
            return False
        c["ressources_files_address"] = base
        c["usercode_address"] = base + rsize
        c["unknown_pages_address"] = tables["pages_addr"]
        c["unknown_objects_address"] = tables["objects_addr"]
        c["pages_count"] = tables["pages"]
        c["unknown_objects_count"] = tables["objects"]
        # static usercode size: end of the block chain that starts the usercode
        uc = base + rsize
        p = uc
        while p + 4 <= tables["pages_addr"]:
            ln = struct.unpack_from("<I", self.raw, p)[0]
            if ln > 0x100000 or p + 4 + ln > tables["pages_addr"]:
                break
            p += 4 + ln
        c["static_usercode_address"] = p - uc
        c["app_vas_address"] = p - uc
        for start, size, slot in self._resourceTable():
            n = self._probePictureTable(start, size)
            if n:
                c["pictures_address"], c["pictures_count"] = start, n
                continue
            n = self._probeFontTable(start, size)
            if n:
                c["fonts_address"], c["fonts_count"] = start, n
                continue
            if slot == 9:
                c["gmovs_address"] = start
            elif slot == 10:
                c["videos_address"] = start
            elif slot == 11:
                c["audios_address"] = start
        return True

    # ---- Instruction set selection ------------------------------------------------------------------------------

    @staticmethod
    def _versionTuple(v):
        nums = re.findall(r"\d+", v)
        return tuple(int(n) for n in nums)

    def _find_instructions(self):
        """Exact editor version match first. Otherwise the closest known version of the same vendor (and then of the
        other vendor). Series that aren't covered are mapped to the closest known series."""
        version_str = self.getEditorVersionStr()
        vendor = version_str.split("-")[0]
        series = self._getVal("model_series")
        want = self._versionTuple(version_str)
        cands = []  # (version priority, series missing, distance, -set priority, entry, version)
        for e in all_instruction_sets:
            for v in e["versions"]:
                vv = self._versionTuple(v)
                if v == version_str:
                    prio = 0
                elif v.split("-")[0] == vendor:
                    prio = 1
                else:
                    prio = 2
                dist = (abs(vv[0] - want[0]), abs(vv[1] - want[1]) if len(vv) > 1 else 0)
                cands.append((prio, 0 if series in e["models"] else 1, dist, -e.get("priority", 0), id(e), e, v))
        cands.sort(key=lambda x: x[:5])
        series_pref = [series, 3, 100, 0, 1, 2]
        for prio, _, dist, _, _, e, v in cands:
            for sr in series_pref:
                if sr in e["models"]:
                    notes = []
                    if v != version_str:
                        notes.append(f"no instruction set for editor {version_str}, using {v}")
                    if sr != series:
                        notes.append(f"no instruction set for model series {series}, using series {sr}")
                    self.instruction_note = "; ".join(notes)
                    return e["models"][sr]
        return None

    def getEditorVersionStr(self):
        vendor = {ord("T"): "tjc", ord("N"): "nxt"}[self._getVal("editor_vendor")]
        main   = self._getVal("editor_version_main")
        sub    = self._getVal("editor_version_sub")
        bug    = self._getVal("editor_version_bugfix")
        editor_str = f"{vendor}-{main}.{sub}"
        if main: # 0.xx versions didn't have bugfix numbers
            editor_str = editor_str + f".{bug}"
        return editor_str

    def decode_usercode(self, hexVals=True):
        if not self.instructions:
            raise Exception("A valid instruction set is required to decode the usercode. ")
        self.usercode = Usercode(self.instructions, self.getRawUsercode(), hexVals)

    # ---- Pictures -------------------------------------------------------------------------------------------------
    #
    # The picture section starts at header 2 "pictures_address" (absolute file offset) with a table of 24-byte records
    #   <4 bytes unknown (0a 60 01 04)> <id:u32> <offset:u32 (relative to the section)> <w:u16> <h:u16> <size:u32> <0:u32>
    # followed by the picture data. Each picture is
    #   <fmt:u32 = 2> <w:u32> <h:u32> <magic:u32 = 0x05ddc33c> <colour stream length:u32>
    #   <colour stream> [<alpha stream>]
    # The colour stream consists of one or more segments, each one of
    #   <0:u16> <palette size n:u16> <bits:u8> <n * RGB565 (LE)> <mask:u8 = (0xff << bits) & 0xff> <tokens>
    # Tokens: byte t, cnt = t >> bits, idx = t & ((1 << bits) - 1)
    #   cnt == (0xff >> bits): escape, the palette bank for the following tokens is idx << bits (palettes can have
    #                          more than 2^bits entries)
    #   cnt == 0:              run of <next byte> pixels of palette entry bank + idx; a count of 0 ends the segment
    #                          (the 00 00 then doubles as the leading zero word of the next segment)
    #   else:                  run of cnt pixels of palette entry bank + idx
    # Segments are used when a picture needs more colours than fit one palette (typically 256).
    # The optional alpha stream follows the colour stream: tokens as above with bits = 7, no palette, no escapes, the
    # value is the 7 bit alpha (0..127) itself.
    #
    # Format 0 (Nextion F series): <20 bytes 0> and the raw RGB565 pixels (tiny pictures).
    #
    # Format 1 (Nextion F series):
    #   <fmt:u32 = 1> <stream length:u32> <12 bytes 0>  followed by blocks of 20 bytes
    #   <eight run lengths: 4 bytes, two 4 bit values per byte, low nibble first, 0 = unused> <8 * RGB565 (LE)>
    # i.e. a run length encoding of the whole image in raster order, eight (colour, length) runs per block; a run is
    # at most 15 pixels long, longer ones are split. After the blocks comes a random access index (a table of
    # <key:u32> <offset:u32> pairs and the run lengths of each row) that is not needed for decoding.

    def getPictureRecords(self):
        start = self._getVal("pictures_address")
        count = self._getVal("pictures_count")
        recs = []
        if start == 0 or start + 24 * count > len(self.raw):
            return recs
        for i in range(count):
            o = start + 24 * i
            hdr = self.raw[o:o + 4]
            pid, off, w, h, size, _ = struct.unpack_from("<IIHHII", self.raw, o + 4)
            if start + off + size > len(self.raw):
                break
            recs.append({"id": pid, "offset": start + off, "w": w, "h": h, "size": size, "flags": hdr.hex()})
        return recs

    def _pictureDims(self, rec):
        """Width and height of a picture. For the headerless raw pictures of the Nextion T0/K0 series (0 and 1) the
        picture table holds them in the unrotated frame, so they are swapped for portrait projects (ui_orientation 1
        and 3). The F series (100) and TJC files store them as they are."""
        if self._getVal("ui_orientation") in (1, 3) and self._getVal("model_series") in (0, 1):
            return rec["h"], rec["w"]
        return rec["w"], rec["h"]

    @staticmethod
    def _rgb565(v):
        return bytes((((v >> 11) & 31) * 255 // 31, ((v >> 5) & 63) * 255 // 63, (v & 31) * 255 // 31))

    @classmethod
    def decodePicture(cls, data:bytes, w=None, h=None):
        """Returns a dict with w, h, rgb (w*h*3 bytes), alpha (w*h bytes 0..255 or None) and segments,
        or None if the picture can't be decoded. w and h (from the picture table) are only needed for raw pictures."""
        try:
            if w and h and len(data) == w * h * 2:
                # Nextion K0/T0 files: uncompressed RGB565 (little endian), no header
                px = struct.unpack(f"<{w * h}H", data)
                rgb = bytearray(w * h * 3)
                for i, v in enumerate(px):
                    rgb[3 * i:3 * i + 3] = cls._rgb565(v)
                return {"w": w, "h": h, "rgb": bytes(rgb), "alpha": None, "segments": 0, "raw": True}
            fmt = struct.unpack_from("<I", data, 0)[0]
            if fmt == 0 and w and h and len(data) == 20 + w * h * 2:
                # F series: 20 byte header (all 0) and raw RGB565, used for tiny pictures
                return cls.decodePicture(data[20:], w, h)
            if fmt == 1 and w and h:
                return cls._decodeRunBlocks(data, w, h)
            fmt, w, h, magic, len1 = struct.unpack_from("<IIIII", data, 0)
            if fmt != 2 or w * h == 0:
                return None
            total = w * h
            p = 20
            end = 20 + len1
            rgb = bytearray()
            segments = 0
            while p < end and len(rgb) < total * 3:
                if data[p:p + 2] != b"\x00\x00":
                    return None
                n = struct.unpack_from("<H", data, p + 2)[0]
                bits = data[p + 4]
                if not 1 <= bits <= 7:
                    return None
                pal = [cls._rgb565(struct.unpack_from("<H", data, p + 5 + 2 * k)[0]) for k in range(n)]
                q = p + 5 + 2 * n + 1
                mask = (1 << bits) - 1
                top = 0xff >> bits
                base = 0
                terminated = False
                while q < end and len(rgb) < total * 3:
                    t = data[q]
                    cnt = t >> bits
                    idx = t & mask
                    if cnt == top:
                        base = idx << bits
                        q += 1
                        continue
                    if cnt == 0:
                        cnt = data[q + 1]
                        if cnt == 0:
                            terminated = True
                            break
                        q += 2
                    else:
                        q += 1
                    if base + idx >= n:
                        return None
                    rgb.extend(pal[base + idx] * cnt)
                segments += 1
                p = q
                if not terminated:
                    break
            if len(rgb) != total * 3 or p != end:
                return None

            alpha = None
            if end < len(data):
                alpha = bytearray()
                q = end
                while q < len(data) and len(alpha) < total:
                    t = data[q]
                    if t & 0x80:
                        alpha.append(t & 0x7f)
                        q += 1
                    else:
                        alpha.extend(bytes([t]) * data[q + 1])
                        q += 2
                if len(alpha) != total or q != len(data):
                    alpha = None
                else:
                    alpha = bytes(min(255, a * 255 // 127) for a in alpha)
            return {"w": w, "h": h, "rgb": bytes(rgb), "alpha": alpha, "segments": segments}
        except Exception:
            return None

    @classmethod
    def _decodeRunBlocks(cls, data, w, h):
        """Picture format 1, see the format description above getPictureRecords()."""
        n1 = struct.unpack_from("<I", data, 4)[0]
        if n1 % 20 or 20 + n1 > len(data):
            return None
        total = w * h
        rgb = bytearray()
        colour = {}
        for j in range(20, 20 + n1, 20):
            cols = struct.unpack_from("<8H", data, j + 4)
            lens = []
            for byte in data[j:j + 4]:
                lens += [byte & 15, byte >> 4]
            for c, n in zip(cols, lens):
                if n:
                    if c not in colour:
                        colour[c] = cls._rgb565(c)
                    rgb += colour[c] * n
            if len(rgb) >= total * 3:
                break
        if len(rgb) < total * 3:
            return None
        return {"w": w, "h": h, "rgb": bytes(rgb[:total * 3]), "alpha": None, "segments": 1}

    @staticmethod
    def writePNG(path, w, h, rgb:bytes, alpha:bytes=None):
        import zlib
        def chunk(tag, payload):
            c = struct.pack(">I", len(payload)) + tag + payload
            return c + struct.pack(">I", zlib.crc32(tag + payload) & 0xffffffff)
        if alpha is not None:
            px = bytearray(w * h * 4)
            px[0::4] = rgb[0::3]
            px[1::4] = rgb[1::3]
            px[2::4] = rgb[2::3]
            px[3::4] = alpha
            stride, ctype = w * 4, 6
        else:
            px, stride, ctype = rgb, w * 3, 2
        rows = b"".join(b"\x00" + bytes(px[y * stride:(y + 1) * stride]) for y in range(h))
        png = (b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", struct.pack(">IIBBBBB", w, h, 8, ctype, 0, 0, 0)) +
               chunk(b"IDAT", zlib.compress(rows, 9)) + chunk(b"IEND", b""))
        with open(path, "wb") as f:
            f.write(png)

    def exportPictures(self, directory):
        """Writes all decodable pictures as PNG (with alpha if the picture has an alpha stream).
        Returns (written, failed) counts."""
        from pathlib import Path as _P
        directory = _P(directory)
        directory.mkdir(parents=True, exist_ok=True)
        ok = bad = 0
        for r in self.getPictureRecords():
            pic = self.decodePicture(self.raw[r["offset"]:r["offset"] + r["size"]], *self._pictureDims(r))
            if not pic:
                bad += 1
                continue
            self.writePNG(directory / f"{r['id']:03d}.png", pic["w"], pic["h"], pic["rgb"], pic["alpha"])
            ok += 1
        return ok, bad

    # ---- Fonts ---------------------------------------------------------------------------------------------------
    #
    # The font section starts at header 2 "fonts_address" with fonts_count records of 44 bytes
    #   <20 attribute bytes (byte 7 = height in pixels)> <data size:u32> <data offset:u32 (rel. to the section)>
    #   <ff 00 01 01> <u32> <u32> <u32 = 0>
    # The data of a font is <"1111"> <name, e.g. "4号全字库"> <encoding "utf-8"> and then a glyph table of 10-byte entries.
    # ASCII style font (one block): per glyph, consecutive codes
    #   <code:u16> <advance:u8> <0> <0> <data offset:u24> <data length:u16>
    # (the offset is relative to 16 bytes before the end of the table; the glyph data follows the table).
    # Full charset fonts: per glyph <advance:u8> <x offset:u8> <y offset:u8> <data offset:u16> <height:u8>
    # <data length:u16> <index:u8> <block:u8>, in many blocks of 256 entries with empty placeholders (advance 6, length 0).
    # The glyph data itself is a bit-oriented compressed stream (zero padded to bytes) that is NOT decoded.

    def _fontCount(self):
        """Number of font records. The fonts_count field of header 2 is not reliable (e.g. Nextion K0 1.64 files), but
        the data of the first font starts right after the records, so its offset gives the count."""
        start = self._getVal("fonts_address")
        first_off = struct.unpack_from("<I", self.raw, start + 24)[0]
        if 0 < first_off < 44 * 4096 and first_off % 44 == 0:
            return first_off // 44
        return self._getVal("fonts_count")

    def getFonts(self):
        start = self._getVal("fonts_address")
        fonts = []
        if start == 0 or start + 44 > len(self.raw):
            return fonts
        count = self._fontCount()
        if count == 0 or start + 44 * count > len(self.raw):
            return fonts
        for i in range(count):
            r = self.raw[start + 44 * i:start + 44 * i + 44]
            size, off = struct.unpack_from("<II", r, 20)
            if start + off + size > len(self.raw):
                break
            data = self.raw[start + off:start + off + size]
            f = {"index": i, "height": r[7], "data_offset": start + off, "data_size": size, "attributes": r[:20].hex(" ")}
            m = re.match(rb"1111(.*?)(utf-8|gb2312|iso-8859-\d+|big5|shift-jis)", data[:64], flags=re.I | re.S)
            if m:
                f["name"] = m.group(1).decode("utf-8", "replace")
                f["encoding"] = m.group(2).decode().lower()
                table = m.end()
                if re.match(rb"ASCII", m.group(1), flags=re.I) or m.group(1).endswith(b"ASCII"):
                    f["type"] = "ascii"
                    f.update(self._asciiFontTable(data, table))
                else:
                    f["type"] = "charset"
            fonts.append(f)
        return fonts

    @staticmethod
    def _asciiFontTable(data, table):
        """Glyph table of an ASCII style font: list of (code, advance, glyph data length)."""
        glyphs = []
        try:
            p = table
            while p + 10 <= len(data):
                code, adv = struct.unpack_from("<HB", data, p)
                if glyphs and code != glyphs[-1]["code"] + 1:
                    break
                if not glyphs and not 0 <= code < 0x100:
                    break
                off = data[p + 5] | (data[p + 6] << 8) | (data[p + 7] << 16)
                ln = struct.unpack_from("<H", data, p + 8)[0]
                glyphs.append({"code": code, "char": chr(code), "advance": adv, "length": ln, "_off": off})
                p += 10
            if glyphs:
                shift = p - glyphs[0]["_off"]
                for g in glyphs:
                    g["data_offset"] = g.pop("_off") + shift     # relative to the font data
        except Exception:
            pass
        return {"first_code": glyphs[0]["code"] if glyphs else None, "glyph_count": len(glyphs), "glyphs": glyphs}

    def _glyphTable(self, font):
        """Glyph table of a .zi style font blob (name, encoding, then <code u16><advance u8><b3><b4><offset u24><length u16>
        entries, offsets relative to the end of the encoding name). Returns (data, glyphs) or None."""
        data = self.raw[font["data_offset"]:font["data_offset"] + font["data_size"]]
        m = re.search(rb"(utf-8|gb2312|iso-8859-\d+|big5|shift-jis)", data[:96], flags=re.I)
        if not m:
            return None
        base = m.end()
        for mult in (1, 8):          # ZI v6 files > 16 MB store the data offsets divided by 8
            p, glyphs = base, []
            while p + 10 <= len(data):
                code, adv = struct.unpack_from("<HB", data, p)
                off = (data[p + 5] | (data[p + 6] << 8) | (data[p + 7] << 16)) * mult
                ln = struct.unpack_from("<H", data, p + 8)[0]
                if (glyphs and code <= glyphs[-1]["code"]) or base + off + ln > len(data):
                    break
                if glyphs and p >= base + glyphs[0]["_off"]:
                    break            # reached the glyph data
                glyphs.append({"code": code, "advance": adv, "kerning": (data[p + 3], data[p + 4]), "_off": off,
                               "data": data[base + off:base + off + ln]})
                p += 10
            first = next((g["data"][:1] for g in glyphs if g["data"]), b"")
            if glyphs and first in (b"\x01", b"\x03"):
                break
        else:
            return None
        for g in glyphs:
            del g["_off"]
        return data, glyphs

    @staticmethod
    def _glyphRuns(stream):
        """Yields (blank pixels, opaque or alpha pixels) of every drawing mode byte of a glyph stream, see decodeGlyph."""
        aa = stream[:1] == b"\x03"
        for t in stream[1:]:
            x = t & 0x1f
            if t < 0x20:
                yield x, []
            elif t < 0x40:
                yield 0, [7] * x
            elif t < 0x60:
                yield x, [7]
            elif t < 0x80:
                yield x, [7, 7]
            elif aa:
                yield (((t >> 3) & 7), [t & 7]) if t < 0xc0 else (0, [(t >> 3) & 7, t & 7])
            elif t < 0xa0:
                yield x, [7] * 3
            elif t < 0xc0:
                yield x, [7] * 4
            else:
                yield (t >> 3) & 7, [7] * (t & 7)

    @staticmethod
    def decodeGlyph(stream, width, height):
        """Decodes a glyph stream (ZI font format v5/v6, see hagronnestad/nextion-font-editor) into width*height levels
        0-7 (0 transparent, 7 opaque), row by row. The first byte is 3 for anti-aliased and 1 for black/white glyphs; every
        following byte is a drawing mode: 000x run of blank / 001x run of opaque pixels (x = low 5 bits), 010x x blanks +
        1 opaque, 011x x blanks + 2 opaque, then either (anti-aliased) 10xxxccc xxx blanks + 1 pixel of level ccc and
        11cccddd two pixels, or (black/white) 100x x blanks + 3 opaque, 101x x blanks + 4 opaque, 11wwwbbb www blanks +
        bbb opaque. The result is padded / cut to width*height."""
        o = []
        for blank, pixels in TFTFile._glyphRuns(stream):
            o += [0] * blank + pixels
        return (o + [0] * (width * height))[:width * height]

    @staticmethod
    def glyphPixelCount(stream):
        """Number of pixels a glyph stream describes (should equal (width + kerning left + kerning right) * height)."""
        return sum(b + len(p) for b, p in TFTFile._glyphRuns(stream))

    def exportFontAtlases(self, directory, columns=32):
        """Glyph atlases (one PNG per font with a readable glyph table). Returns the number written."""
        import pathlib
        directory = pathlib.Path(directory)
        written = 0
        for f in self.getFonts():
            gt = self._glyphTable(f)
            if gt is None or not f["height"]:
                continue
            _, glyphs = gt
            h = f["height"]
            cw = max(g["advance"] + sum(g["kerning"]) for g in glyphs) or 1
            rows = (len(glyphs) + columns - 1) // columns
            W, H = columns * cw, rows * h
            if W * H > 40_000_000:
                continue
            img = bytearray(W * H)
            for i, g in enumerate(glyphs):
                gw = g["advance"] + sum(g["kerning"])
                bits = [255 * v // 7 for v in self.decodeGlyph(g["data"], gw, h)]
                x0, y0 = (i % columns) * cw, (i // columns) * h
                for y in range(h):
                    row = bits[y * gw:(y + 1) * gw]
                    img[(y0 + y) * W + x0:(y0 + y) * W + x0 + len(row)] = bytes(row)
            directory.mkdir(parents=True, exist_ok=True)
            rgb = bytearray()
            for v in img:
                rgb += bytes((v, v, v))
            self.writePNG(str(directory / f"font{f['index']:02d}_atlas.png"), W, H, bytes(rgb))
            (directory / f"font{f['index']:02d}_atlas.json").write_text(json.dumps(
                {"columns": columns, "cell_w": cw, "cell_h": h,
                 "codes": [g["code"] for g in glyphs]}))
            written += 1
        return written

    def getRawBootloader(self):
        start = self._getVal("ressources_files_address")
        end = start + self._getVal("ressource_files_size")
        return self.raw[start:end]

    def getRawPictures(self):
        start = self._getVal("pictures_address")
        end = start + self._getVal("gmovs_address")
        return self.raw[start:end]

    def getRawFonts(self):
        # Hacky.
        end = -1
        for i in reversed(range(self._getVal("fonts_address"), self._getVal("usercode_address"))):
            if(self.raw[i] != 0x00):
                end = i + 1
                break
        if end > 0:
            return self.raw[self._getVal("fonts_address") : end]
        else:
            return b""

    def getRawUsercode(self):
        start = self._getVal("usercode_address")
        # static_usercode_address is the size of actual block data (tighter bound)
        static_size = self._getVal("static_usercode_address")
        pages_addr = self._getVal("unknown_pages_address")
        if static_size and static_size < pages_addr - start:
            return self.raw[start : start + static_size]
        return self.raw[start : pages_addr]

    def exportRawBootloader(self, path = "Raw/Bootloader.bin"):
        with open(path, "wb") as f:
            f.write(self.getRawBootloader())

    def exportRawPictures(self, path = "Raw/Pictures.bin"):
        with open(path, "wb") as f:
            f.write(self.getRawPictures())

    def exportRawFonts(self, path = "Raw/Fonts.bin"):
        with open(path, "wb") as f:
            f.write(self.getRawFonts())

    def exportRawUsercode(self, path = "Raw/Usercode.bin"):
        with open(path, "wb") as f:
            f.write(self.getRawUsercode())

    def getReadable(self, includeUnknowns=False):
        return str(self.getReadableData(includeUnknowns))

    def getReadableData(self, includeUnknowns=False):
        d = pdict()

        # Info section — rich metadata from both headers
        uc_addr = self._getVal("usercode_address")
        pages_addr = self._getVal("unknown_pages_address")
        static_size = self._getVal("static_usercode_address")
        uc_size = static_size if static_size and static_size < pages_addr - uc_addr else pages_addr - uc_addr
        info = {
            "model": self.model,
            "editor": self.getEditorVersionStr(),
            "resolution": [self._getVal("lcd_resolution_x"), self._getVal("lcd_resolution_y")],
            "orientation": self._getVal("ui_orientation"),
            "char_encoding": self.getCharEncoding(),
            "pages_count": self._getVal("pages_count"),
            "objects_count": self._getVal("unknown_objects_count"),
            "pictures_count": self._getVal("pictures_count"),
            "fonts_count": self._fontCount(),
            "usercode_address": f"0x{uc_addr:x}",
            "usercode_size": uc_size,
        }
        if not self.header2.encrypted:
            info["header2_key_unknown"] = True
        d["info"] = info

        pics = []
        for r in self.getPictureRecords():
            pic = self.decodePicture(self.raw[r["offset"]:r["offset"] + r["size"]], *self._pictureDims(r))
            pics.append({"id": r["id"], "w": r["w"], "h": r["h"], "size": r["size"],
                         "decoded": bool(pic),
                         "segments": pic["segments"] if pic else None,
                         "has_alpha": bool(pic and pic["alpha"] is not None)})
        d["pictures"] = pics

        # Raw headers — all integer values for parseability
        d["header1"] = dict([(k, v) for k, v in self.header1.content.items()
                             if includeUnknowns or not k.startswith("unknown")])
        d["header2"] = dict([(k, v) for k, v in self.header2.content.items()
                             if includeUnknowns or not k.startswith("unknown")])

        # Definitions (block 0) — extract meaningful strings
        blocks = list(self.usercode.blocks.items())
        if blocks:
            _, block0 = blocks[0]
            strings = self._extract_ascii_strings(block0.raw)
            d["definitions"] = {
                "size": len(block0.raw),
                "strings": [{"offset": f"0x{off:03x}", "value": s} for off, s in strings],
            }
        else:
            d["definitions"] = {"size": 0, "strings": []}

        # Parse component metadata from page/object records
        page_objects = self._parse_objects()
        texts = self.getObjectTexts(page_objects) if page_objects else {}

        pages, prolog = self._buildPages(blocks, page_objects, texts)
        if prolog:
            d["global_blocks"] = prolog
        d["pages"] = pages
        return d

    def writeOutput(self, outdir, includeUnknowns=True, pictures=True, raw=False, glyphs=True, hexListing=False):
        """Writes the decoded file as a tree of small json files (and the pictures as PNG) below outdir:
             info.json                 general info, pictures list
             headers/                  header1.json, header2.json
             definitions/              definitions.json (strings of the first usercode block)
             pages/NNN.json            page components with events, host events and text
             pages/NNN.nasm            the event code of the page as a listing
             names/NNN.json            component id -> CRC hash of its name (per page)
             init/NNN.nasm             init code of a page as an assembler style listing (address, bytes, statement)
             blocks/NNNN.json          fallback when the pages can't be split: flat code block list
             pictures/NNN.png          decoded pictures, pictures/index.json lists them
             fonts/index.json          font headers (name, height, encoding, data location, ASCII glyph tables)
             raw/                      resources.bin and usercode.bin (only with raw=True)
        Returns a dict with counts."""
        outdir = Path(outdir)
        errors = []

        def guard(what, fn, default=None):
            """Runs one part of the dump; a failure is recorded in info.json instead of aborting everything."""
            try:
                return fn()
            except Exception as e:                      # pragma: no cover (depends on the input file)
                errors.append(f"{what}: {type(e).__name__}: {e}")
                return default

        def dump(path, obj):
            path = outdir / path
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(json.dumps(obj, indent=2, ensure_ascii=False), encoding="utf-8")

        def write_text(path, text):
            path = outdir / path
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(text, encoding="utf-8")

        data = guard("decode", lambda: self.getReadableData(includeUnknowns))
        if data is None:     # still write what is known without the usercode
            data = {"info": {"model": self.model, "editor": self.getEditorVersionStr()},
                    "header1": dict(self.header1.content), "header2": dict(self.header2.content),
                    "pages": [], "pictures": []}
        info = dict(data["info"])
        pics = data.get("pictures", [])
        dump("headers/header1.json", data["header1"])
        dump("headers/header2.json", data["header2"])
        dump("definitions/definitions.json", data.get("definitions", {}))
        if data.get("global_blocks"):
            dump("definitions/global_blocks.json", data["global_blocks"])
        counts = {"pages": 0, "blocks_files": 0, "pictures": 0}
        parsed = guard("objects", self._parse_objects)
        sizes = {}
        by_type = collections.defaultdict(collections.Counter)
        for objs in parsed or []:       # struct size of a type = distance to the next object's memory address
            for a, b in zip(objs, objs[1:]):
                if 0 < b["_mem"] - a["_mem"] <= 1024:
                    by_type[a["_type_code"]][b["_mem"] - a["_mem"]] += 1
        for code, c in by_type.items():
            sizes[code] = c.most_common(1)[0][0]
        series4 = self._getVal("model_series") == 4

        def describe(o, st, blob, base):
            attrs = self._structAttributes(o["code"], st, blob, base) if series4 else None
            covered = self._structCovered(o["code"], st, o["mem"]) if series4 else []
            if attrs is None:       # layout fields are only decoded when the struct passes the validity checks
                covered = [c for c in covered if c[0] == 0]
            return (self._structHeader(o, st) if series4 else None), attrs, covered

        index = []
        flat = []
        for pg in data["pages"]:
            n = pg.get("page")
            if n is None:
                flat.append(pg)
                continue
            name = f"{n:03d}.json"
            objs = pg.get("objects", [])
            dump("pages/" + name, {"page": n, "objects": self._withoutHex(objs)})
            listing = []
            for o in objs:
                for ename, blks in o.get("events", {}).items():
                    listing.append(self.asmListing(blks, f"object id {o['id']} ({o['type']}{' ' + repr(o['name']) if o.get('name') else ''}): {ename}", hexListing))
            if listing:
                write_text("pages/" + name.replace(".json", ".nasm"), f"; page {n} event code\n\n" + "\n".join(listing))
            if pg.get("name_hashes"):
                dump("names/" + name, pg["name_hashes"])
            if pg.get("init"):
                meta = [{"type": o["type"], "id": o["id"], "mem": o["_mem"], "code": o["_type_code"],
                         "name": (objs[k].get("name") if k < len(objs) else None)}
                        for k, o in enumerate(parsed[n] if parsed and n < len(parsed) else [])]
                pname = next((o["name"] for o in objs if o.get("type") == "page" and o.get("name")), None)
                write_text("init/" + name.replace(".json", ".nasm"),
                           self.asmListing(pg["init"], f"page {n}{' ' + repr(pname) if pname else ''} init code",
                                           hexListing, meta, sizes, describe))
            index.append({"page": n, "name": next((o["name"] for o in objs if o.get("type") == "page" and o.get("name")), None),
                          "objects": len(objs),
                          "host_widgets": sorted({he["widget"] for o in objs for he in o.get("host_events", {}).values()
                                                  if isinstance(he["widget"], int)})})
            counts["pages"] += 1
        for k in range(0, len(flat), 500):
            dump(f"blocks/{k // 500:04d}.json", flat[k:k + 500])
            counts["blocks_files"] += 1
        info["pages"] = index
        info["resources"] = guard("resources", self.getResources, [])
        checks = guard("checksums", self.verifyChecksums, {})
        info["checksums"] = {k: {"stored": f"0x{a:08x}", "computed": f"0x{b:08x}", "ok": ok}
                             for k, (a, b, ok) in checks.items()}
        info["header2_note"] = self.header2_note
        info["files"] = {"headers": ["header1.json", "header2.json"], "pages": counts["pages"],
                         "flat_block_files": counts["blocks_files"], "pictures": len(pics)}
        if pictures:
            res = guard("pictures", lambda: self.exportPictures(outdir / "pictures"), (0, 0))
            ok, bad = res
            dump("pictures/index.json", pics)
            counts["pictures"], counts["pictures_failed"] = ok, bad
        fonts = guard("fonts", self.getFonts, [])
        if fonts:
            dump("fonts/index.json", fonts)
            counts["fonts"] = len(fonts)
            if glyphs:
                counts["font_atlases"] = guard("glyphs", lambda: self.exportFontAtlases(outdir / "fonts"), 0)
        if raw:
            def write_raw():
                (outdir / "raw").mkdir(parents=True, exist_ok=True)
                res_start = self._getVal("ressources_files_address")
                (outdir / "raw" / "resources.bin").write_bytes(
                    self.raw[res_start:res_start + self._getVal("ressource_files_size")])
                (outdir / "raw" / "usercode.bin").write_bytes(self.getRawUsercode())
                for r in self.getResources():
                    name = f"res{r['slot']:02d}_{r['kind'].split(' ')[0]}.bin"
                    (outdir / "raw" / name).write_bytes(self.raw[r["offset"]:r["offset"] + r["size"]])
            guard("raw export", write_raw)
        if errors:
            info["errors"] = errors
            counts["errors"] = len(errors)
        dump("info.json", info)
        return counts

    @staticmethod
    def _block_text(blk):
        """Get block content as a string, handling dict decoded values."""
        if not blk.raw:
            return ""
        if not blk.decoded:
            return ""
        if blk.decoded == "EMPTY_BLOCK":
            return ""
        if isinstance(blk.decoded, dict):
            return json.dumps(blk.decoded, indent=2)
        return str(blk.decoded) if isinstance(blk.decoded, str) else repr(blk.decoded)

    @staticmethod
    def _extract_ascii_strings(data, min_len=4):
        """Extract printable ASCII strings from binary data."""
        results = []
        current = []
        start = -1
        for i, b in enumerate(data):
            if 0x20 <= b < 0x7f:
                if not current:
                    start = i
                current.append(chr(b))
            else:
                if len(current) >= min_len:
                    results.append((start, "".join(current)))
                current = []
        if len(current) >= min_len:
            results.append((start, "".join(current)))
        return results

    # Event slot names per component type.
    # Slots not listed here use "event_N" as fallback.
    _event_names = {
        "page":  {0: "postinitialize"},
        "timer": {4: "timer"},
    }
    _default_event_names = {
        0: "event_0", 1: "event_1",
        2: "touch_press", 3: "touch_release",
        4: "event_4", 5: "event_5",
    }

    def _parse_objects(self):
        """Parse page and object metadata records from the TFT binary.
        Returns list of pages, each containing its object list with event
        pointers, or None on failure."""
        pages_addr = self._getVal("unknown_pages_address")
        obj_addr = self._getVal("unknown_objects_address")
        pages_count = self._getVal("pages_count")
        obj_count = self._getVal("unknown_objects_count")

        if pages_addr == 0 or obj_addr == 0 or pages_count == 0:
            return None
        # Page record size: 12 bytes in editor 1.61, 16 bytes in 1.65+. Derive it from the section size.
        page_sec_size = obj_addr - pages_addr
        if page_sec_size % pages_count != 0 or page_sec_size // pages_count < 4:
            return None
        page_rec_size = page_sec_size // pages_count
        self.page_record_size = page_rec_size
        # The object record size differs between editor versions (232 in 1.67, 204 in 1.65.5, ...). The object section
        # runs up to the file checksum, so derive the record size from it.
        obj_sec_size = len(self.raw) - 4 - obj_addr  # -4 for file checksum
        # (a few padding bytes after the last record are tolerated, e.g. QIDI's 1.67 files have one)
        if obj_count == 0 or obj_sec_size % obj_count > 8:
            return None
        rec_size = obj_sec_size // obj_count
        if rec_size < 48:
            return None
        self.object_record_size = rec_size

        result = []
        obj_idx = 0
        for pg in range(pages_count):
            prec = self.raw[pages_addr + pg * page_rec_size : pages_addr + (pg + 1) * page_rec_size]
            _first_id, obj_cnt = struct.unpack_from("<HH", prec, 0)

            objects = []
            for j in range(obj_cnt):
                off = obj_addr + obj_idx * rec_size
                type_code = self.raw[off]
                obj_id = self.raw[off + 1] | (self.raw[off + 2] << 8)
                event_ptrs = struct.unpack_from("<6I", self.raw, off + 4)
                x, y = struct.unpack_from("<hh", self.raw, off + 40)  # signed: components can be placed off-screen
                w, h = struct.unpack_from("<HH", self.raw, off + 44)
                type_name = self._nextion_type_names.get(type_code, f"unknown_0x{type_code:02x}")
                slots = None
                nslots = (rec_size - 56) // 2
                if nslots > 0:
                    slots = struct.unpack_from(f"<{nslots}H", self.raw, off + 56)
                objects.append({
                    "id": obj_id, "type": type_name, "_type_code": type_code,
                    "_mem": struct.unpack_from("<I", self.raw, off + 28)[0],
                    "x": x, "y": y, "w": w, "h": h,
                    "_event_ptrs": event_ptrs, "_slots": slots,
                })
                obj_idx += 1

            result.append(objects)
        return result

    # ---- Component attributes (text) -------------------------------------------------------------------------------
    #
    # Every object record has a list of 74 u16 attribute ids at +56 (0xffff = attribute not present). The ids of a page
    # are local; the ids form one global space: global id = page base + local id, where a page's base follows from the
    # previous page's base plus the id range of its objects (the id range of an object depends on its type, e.g. 41
    # for a button, 39 for text, 33 for the page itself; the spans are learned from the file).
    # Text labels are set by page code like
    #   <cjmp ",N,1,"> <local pointer = global id = "text" attribute of an object> = "<utf-8 text>" <jmp>
    # with N the language index. The pointer may belong to an object of another page. Slot 53 of text, button,
    # scrolling-text and dual-state objects is the text attribute.
    _txtTypes = (0x74, 0x62, 0x37, 0x35)

    def _pageBlocks(self, page, pages):
        """Yields (usercode offset, bytes) for the length prefixed blocks of a page."""
        uc = self._getVal("usercode_address")
        end = pages[page + 1]["code"] if page + 1 < len(pages) else self._getVal("static_usercode_address")
        p = pages[page]["code"]
        while p + 4 <= end:
            n = struct.unpack_from("<I", self.raw, uc + p)[0]
            if p + 4 + n > end:
                break
            yield p, self.raw[uc + p + 4:uc + p + 4 + n]
            p += 4 + n

    def getObjectTexts(self, page_objects=None):
        """Returns {(page, object index): {language index: text}} for the text assigned by page code."""
        page_objects = page_objects or self._parse_objects()
        if not page_objects or len(page_objects) < 3 or any(o["_slots"] is None for pg in page_objects for o in pg):
            return {}
        table = self._pageTable()
        if not table or table[0]["code"] == 0:
            return {}
        pages = [{"code": rec["code"]} for rec in table]
        # assignments per page: list of (pointer, language, text)
        assigns = []
        for pi in range(len(pages)):
            lang, lst = None, []
            for _, b in self._pageBlocks(pi, pages):
                m = re.match(rb"\x09\x00\x04\x05\x14\x00\x00\x00,(\d+),1,", b)
                if m:
                    lang = int(m.group(1))
                    continue
                m = re.match(rb"\x01(....)\x3d\x22(.*)\x22\Z", b, flags=re.S)
                if m:
                    lst.append((struct.unpack("<I", m.group(1))[0], lang, m.group(2).decode("utf-8", "replace")))
            assigns.append(lst)
        if not any(assigns):
            return {}
        ptr_sets = [{a[0] for a in lst} for lst in assigns]

        def lo(o):
            v = [x for x in o["_slots"] if x != 0xffff]
            return min(v) if v else None

        # id span per object type: distance between the first ids of consecutive objects (most common value)
        votes = {}
        for pg in page_objects:
            for a, b in zip(pg, pg[1:]):
                if lo(a) is not None and lo(b) is not None:
                    votes.setdefault(a["_type_code"], collections.Counter())[lo(b) - lo(a)] += 1
        span = {t: c.most_common(1)[0][0] for t, c in votes.items()}

        nslots = len(page_objects[0][0]["_slots"])
        # candidate text slots: present in every text object
        text_objs = [o for pg in page_objects for o in pg if o["_type_code"] == 0x74]
        if not text_objs:
            return {}
        cands = [sl for sl in range(nslots) if all(o["_slots"][sl] != 0xffff for o in text_objs)]
        # Every attribute id of an object is its first id plus a fixed per-type offset, so all candidates give the same
        # mapping as long as the offset is the same for text and buttons; a few of them are enough.
        if len(cands) > 6:
            cands = [cands[i * (len(cands) - 1) // 5] for i in range(6)]

        first_pg = next(pi for pi in range(len(page_objects)) if ptr_sets[pi])
        best = None
        for slot in cands:
            ids = []
            for pg in page_objects:
                ids.append({o["_slots"][slot]: j for j, o in enumerate(pg)
                            if o["_type_code"] in self._txtTypes and o["_slots"][slot] != 0xffff})

            def fits(pi, base):
                return all((p - base) in ids[pi] for p in ptr_sets[pi])

            def chain(first_base):
                """Page bases from the first page with assignments on: base of the next page = this base + the id range
                of this page (from the last object), adjusted a little so that the page's own assignments fit."""
                base = {first_pg: first_base}
                for pi in range(first_pg, len(page_objects) - 1):
                    last = page_objects[pi][-1]
                    m0 = lo(last)
                    if m0 is None:
                        m0 = max(x for o in page_objects[pi] for x in o["_slots"] if x != 0xffff) - span.get(last["_type_code"], 30)
                    pred = base[pi] + m0 + span.get(last["_type_code"], 30)
                    if not ptr_sets[pi + 1]:
                        base[pi + 1] = pred
                        continue
                    found = [pred + d for d in (0, 1, 2, -1, 3) if fits(pi + 1, pred + d)]
                    if not found:
                        found = sorted((b for b in range(pred - 80, pred + 81) if fits(pi + 1, b)), key=lambda b: abs(b - pred))
                    base[pi + 1] = found[0] if found else pred
                return base

            anchors = sorted({ptr - i for ptr in ptr_sets[first_pg] for i in ids[first_pg]})
            anchors = [a for a in anchors if fits(first_pg, a)]
            for c in anchors:
                base = chain(c)
                glob = {}
                for pi in range(first_pg, len(page_objects)):
                    for sl, j in ids[pi].items():
                        glob[base[pi] + sl] = (pi, j)
                score = sum(1 for lst in assigns for a in lst if a[0] in glob)
                if best is None or score > best[0]:
                    best = (score, slot, glob)
        if best is None:
            return {}
        score, slot, glob = best
        total = sum(len(l) for l in assigns)
        if score < 0.8 * total:       # not a convincing mapping
            return {}
        out = {}
        for lst in assigns:
            for ptr, lang, text in lst:
                tgt = glob.get(ptr)
                if tgt:
                    out.setdefault(tgt, {})[lang if lang is not None else -1] = text
        self.textMappedRatio = (score, total)
        self.textSlot = slot
        return out

    def _pageTable(self):
        """Page records: list of dicts first (index of the first object), count, code (usercode offset of the page
        code), attr (usercode offset of the page's attribute memory) and size (16-byte records only)."""
        pa = self._getVal("unknown_pages_address")
        oa = self._getVal("unknown_objects_address")
        n = self._getVal("pages_count")
        if not pa or not oa or not n or (oa - pa) % n:
            return None
        rs = (oa - pa) // n
        if rs < 12:
            return None
        recs = []
        for i in range(n):
            first, cnt, code, attr = struct.unpack_from("<HHII", self.raw, pa + rs * i)
            size = struct.unpack_from("<I", self.raw, pa + rs * i + 12)[0] if rs >= 16 else None
            recs.append({"first": first, "count": cnt, "code": code, "attr": attr, "size": size})
        return recs

    @staticmethod
    def _dumpLines(raw, addr):
        """Hex dump as comment lines, 16 bytes per line."""
        lines = []
        for i in range(0, len(raw), 16):
            row = raw[i:i + 16]
            asc = "".join(chr(c) if 0x20 <= c < 0x7f else "." for c in row)
            lines.append(f"; {addr + i:06x}:  {' '.join(f'{c:02x}' for c in row):<47}  |{asc}|")
        return lines

    @staticmethod
    def _objectBlocks(raw, addr, objects, structSizes, describe=None, showHex=False):
        """Lines for a page init data block that starts with the table of the object memory addresses followed by the
        object structs (runtime copies of the start of the object records), or None if the block is not of that form.
        describe(object, struct, block, base) may return (header line, attributes, decoded byte ranges); then only the
        bytes that are not decoded and not zero are dumped, unless showHex."""
        n = len(objects)
        if n == 0 or len(raw) < 4 * n:
            return None
        table = struct.unpack_from(f"<{n}I", raw, 0)
        if list(table) != [o["mem"] for o in objects]:
            return None
        base = table[0] - 4 * n
        lines = [f"; object address table, {n} objects, block loaded at 0x{base:x}"]
        for i in range(0, n, 8):
            lines.append(".dd " + ", ".join(f"0x{v:x}" for v in table[i:i + 8]))
        end_of_structs = len(raw)
        for i, o in enumerate(objects):
            start = o["mem"] - base
            if i + 1 < n:
                size = objects[i + 1]["mem"] - o["mem"]
            else:
                size = (structSizes or {}).get(o["code"], len(raw) - start)
            size = max(0, min(size, len(raw) - start))
            st = raw[start:start + size]
            lines += ["", f"; object {i}: {o['type']} id {o['id']}{' ' + repr(o['name']) if o.get('name') else ''} @0x{o['mem']:x}, {size} bytes"]
            header, attrs, covered = describe(o, st, raw, base) if describe else (None, None, [])
            if header:
                lines.append("; " + header)
            if attrs:
                lines.append("; " + ", ".join(
                    f"{k}={('0x%04x' % v) if k in ('bco', 'pco', 'pco2', 'borderc') else json.dumps(v, ensure_ascii=False)}"
                    for k, v in attrs.items()))
            if showHex or not covered:
                lines += TFTFile._dumpLines(st, addr + start)
            else:
                mask = bytearray(size)
                for c0, c1 in covered:
                    mask[c0:c1] = b"\1" * (min(c1, size) - c0)
                k = 0
                while k < size:
                    if mask[k]:
                        k += 1
                        continue
                    j = k
                    while j < size and not mask[j]:
                        j += 1
                    if any(st[k:j]):            # runs of zero bytes carry no information
                        lines += TFTFile._dumpLines(st[k:j], addr + start + k)
                    k = j
            end_of_structs = start + size
        tail = raw[end_of_structs:].rstrip(b"\0")          # trailing zero bytes are padding
        if tail:
            dropped = len(raw) - end_of_structs - len(tail)
            lines += ["", f"; data after the object structs, {len(tail)} bytes"
                          + (f" ({dropped} trailing zero bytes dropped)" if dropped else "")]
            lines += TFTFile._dumpLines(tail, addr + end_of_structs)
        return lines

    @staticmethod
    def _asmStatement(stmt):
        """Presentation of one decoded statement: variables local:0x1ab3 / global:0x14 become local_1ab3 / global_14,
        commas are followed by a space, the comparison operators of conditions and assignments (`a=b`, `a+=b`) get spaces
        around the operator. Text inside string literals is left alone."""
        parts = re.split(r'("(?:\\.|[^"\\])*")', stmt)       # odd entries are string literals
        out = []
        for i, p in enumerate(parts):
            if i % 2:
                out.append(p)
                continue
            p = re.sub(r"\b(local|global):0x([0-9a-fA-F]+)", r"\1_\2", p)
            p = re.sub(r",(?=\S)", ", ", p)
            if stmt.startswith("if "):
                p = re.sub(r"\s*(==|!=|<=|>=|<|>)\s*", r" \1 ", p)
            out.append(p)
        masked = "".join("\0" * len(p) if i % 2 else p for i, p in enumerate(out))
        text = "".join(out)
        m = re.match(r"([A-Za-z_][\w.]*)((?:<<|>>|[-+*/%&|^])?)=(?!=)", masked)
        if m and not masked.startswith("if "):
            text = f"{text[:m.end(1)]} {m.group(2)}= {text[m.end():]}"
        return text

    @staticmethod
    def asmListing(entries, title=None, withHex=False, objects=None, structSizes=None, describe=None):
        """Assembler style listing of decoded code blocks (entries with offset, size, hex and content).
        Statements are printed indented, one per line. Jumps (`jmp N`, `then jump N`; the distance counts from the start of
        the next block, which has a 4 byte size field) refer to labels `lbl_<address>` that are printed before the target
        statement. With withHex every statement is preceded by its address and bytes (8 per line). Blocks that could
        not be decoded or are data (control characters) are always printed as `.data` followed by a hex dump in comment
        lines (16 bytes per line). With objects (the page's objects with their memory addresses, see _parse_objects) a data
        block that starts with the page's object address table is split, see _objectBlocks."""
        jump = re.compile(r"(^jmp |then jump )(0x[0-9a-f]+|\d+)$")
        rows = []                      # (address, kind, text, raw)
        targets = set()
        for e in entries:
            raw = bytes.fromhex(e["hex"]) if "hex" in e else b""
            text = e["content"]
            addr = int(e["offset"], 16)
            if not isinstance(text, str):
                text = json.dumps(text)
            try:        # statements are decoded byte by byte, so UTF-8 text arrives as latin-1 mojibake
                text = text.encode("latin-1").decode("utf-8")
            except (UnicodeEncodeError, UnicodeDecodeError):
                pass
            if raw and (text.startswith("RAW_DATA:") or any(ord(c) < 0x20 and c not in "\t\n" for c in text)):
                rows.append((addr, "data", None, raw))
                continue
            stmts = [TFTFile._asmStatement(x) for x in text.split("\n")]
            m = jump.search(stmts[0])
            if m:
                dist = int(m.group(2), 0)
                if dist >= 0x80000000:      # backward jump (loops)
                    dist -= 1 << 32
                target = addr + 4 + e["size"] + dist
                targets.add(target)
                stmts[0] = stmts[0][:m.start(2)] + f"lbl_{target:x}"
            rows.append((addr, "code", stmts, raw))
        lines = [f"; {title}"] if title else []
        pending = sorted(targets)

        def flush(upto):
            while pending and (upto is None or pending[0] <= upto):
                if lines and lines[-1]:
                    lines.append("")
                lines.append(f"lbl_{pending.pop(0):x}:")

        org_done = table_done = False
        for addr, kind, stmts, raw in rows:
            flush(addr)
            if kind == "data":
                split = TFTFile._objectBlocks(raw, addr, objects, structSizes, describe, withHex) \
                    if objects and not table_done else None
                table_done = table_done or split is not None
                if split is not None:
                    lines += split
                else:
                    lines.append(f".data  ; {len(raw)} bytes")
                    lines += TFTFile._dumpLines(raw, addr)
                lines.append("")
            elif withHex:
                parts = [raw[i:i + 8] for i in range(0, len(raw), 8)] or [b""]
                for i in range(max(len(parts), len(stmts))):
                    hx = " ".join(f"{c:02x}" for c in parts[i]) if i < len(parts) else ""
                    st = stmts[i] if i < len(stmts) else ""
                    lines.append(f"{addr + 8 * i:06x}:  {hx:<23}  {st}".rstrip())
            else:
                if not org_done and not withHex:
                    lines.append(f".org 0x{addr:x}")
                    org_done = True
                lines += ["    " + st.rstrip() for st in stmts]
        flush(None)
        return "\n".join(lines) + "\n"

    # Component names are stored as a CRC (CRC of the name padded with zero bytes to 14 bytes, see nxt-doc TFT.md), so they
    # can only be recovered by guessing. Editor defaults (b0, t12, tm0, tc0, ...) and the words below are tried; more words
    # can be supplied with TFTFile.nameWords (command line: --names FILE, one name per line).
    _namePrefixes = ("b", "t", "n", "x", "j", "p", "m", "q", "g", "s", "c", "r", "va", "tm", "tc", "h", "ts", "tp", "sw",
                     "bt", "tx", "pg", "page", "wifi", "file", "tool", "input", "temp")
    _nameWords = ("logo", "main", "menu", "home", "boot", "start", "print", "printing", "set", "setting", "settings",
                  "tool", "bed", "move", "fan", "led", "wifi", "lang", "language", "about", "info", "popup", "warn",
                  "error", "done", "finish", "pause", "resume", "stop", "tune", "temp", "status", "speed", "level",
                  "zoffset", "calibrate", "filament", "load", "unload", "preheat", "cooldown", "network", "system",
                  "version", "update", "reset", "confirm", "keyboard", "input", "numpad", "password", "file", "files")
    nameWords = ()

    # Runtime object structs of series 4 (TJC, e.g. Sovol SV08 Max, QIDI): the init data block of a page starts with the
    # table of the object addresses, followed by the structs. Fields found by comparing QIDI's 800_480_PLUS.tft with the
    # attributes of its .HMI source (tests/test_attributes.py repeats the comparison; all fields listed agree in at least
    # 99% of the objects):
    #   header (types with a struct of 52 bytes or more): +0 type, +1 id u16, +3 flags, +4 six event pointers, +28 own
    #           address, +34 aph, +40 x, y (i16), +44 w, h, +48 endx, endy
    # then per type (name, offset, size): text 84 bytes, button 84 bytes, page 64 bytes, crop 64 bytes, video 104 bytes.
    # Text: the background field holds bco for sta 1 and the picture id for sta 0 / 2. Page: pic is only valid for sta 2.
    # The bytes +60 and +68 of buttons are constant in most objects and not named. A text pointer is the position of the
    # string in the block plus the block's base address.
    _structLayouts = {
        0x74: (84, (("sta", 56, 1), ("font", 61, 1), ("background", 62, 2), ("pco", 64, 2), ("xcen", 66, 1),
                    ("ycen", 67, 1), ("txt_maxl", 70, 2), ("txt", 72, 4), ("isbr", 76, 1))),
        0x62: (84, (("borderc", 58, 2), ("picc", 62, 2), ("picc2", 64, 2), ("pco", 66, 2), ("xcen", 70, 1),
                    ("ycen", 71, 1), ("txt_maxl", 74, 2), ("txt", 76, 4), ("isbr", 80, 1))),
        0x79: (64, (("sta", 60, 2), ("pic", 62, 2))),
        0x71: (64, (("picc", 56, 2),)),
        0x02: (104, (("vid", 56, 2), ("en", 58, 1))),
    }
    _structHeaderSize = 52

    @classmethod
    def _structAttributes(cls, code, st, blob, base):
        """Attributes of a struct of a series 4 file, or None for types that are not decoded (or invalid data)."""
        layout = cls._structLayouts.get(code)
        if not layout or len(st) < layout[0]:
            return None
        attrs, ptr = {}, None
        for name, off, size in layout[1]:
            v = int.from_bytes(st[off:off + size], "little")
            if name == "txt":
                ptr = v
            else:
                attrs[name] = v
        if code in (0x74, 0x62):
            if attrs["xcen"] > 2 or attrs["ycen"] > 2 or attrs["isbr"] > 1 or attrs.get("sta", 0) > 3:
                return None         # not a struct of this layout
            if code == 0x74:
                attrs[{1: "bco", 0: "picc", 2: "pic"}.get(attrs["sta"], "background")] = attrs.pop("background")
        if ptr is not None:
            pos = ptr - base
            if 0 <= pos < len(blob):
                end = blob.find(b"\0", pos)
                attrs["txt"] = blob[pos:end if end >= 0 else len(blob)].decode("utf-8", "replace")
        return attrs

    @classmethod
    def _structCovered(cls, code, st, mem):
        """Byte ranges (start, end) of a struct that are decoded: the header and the fields of its layout."""
        covered = []
        if len(st) >= cls._structHeaderSize and struct.unpack_from("<I", st, 28)[0] == mem:
            covered.append((0, cls._structHeaderSize))
        layout = cls._structLayouts.get(code)
        if layout and len(st) >= layout[0]:
            covered += [(off, off + size) for _, off, size in layout[1]]
        return covered

    def _structHeader(self, o, st):
        """One line with the header fields of a struct (see above), or None if the struct has no such header."""
        if len(st) < self._structHeaderSize or struct.unpack_from("<I", st, 28)[0] != o["mem"]:
            return None
        x, y, w, h, ex, ey = struct.unpack_from("<hhHHHH", st, 40)
        events = [f"{self._event_name(o['type'], i)}=0x{p:x}"
                  for i, p in enumerate(struct.unpack_from("<6I", st, 4)) if p != 0xffffffff]
        return (f"flags=0x{st[3]:02x}, aph={st[34]}, x={x}, y={y}, w={w}, h={h}, endx={ex}, endy={ey}"
                + (f", events: {', '.join(events)}" if events else ""))

    def _nameTable(self):
        """Dictionary hash -> name for the names that can be guessed (see _namePrefixes)."""
        table = {}
        crc = lambda name: Checksum().CRC(data=name.encode("latin-1", "replace").ljust(14, b"\0"))
        for p in self._namePrefixes:
            for i in range(300):
                for name in (f"{p}{i}", f"{p}_{i}"):
                    table[crc(name)] = name
        for w in tuple(self._nameWords) + tuple(self.nameWords):
            table[crc(w)] = w
        return table

    def _buildPages(self, blocks, page_objects, texts):
        """Assigns the usercode blocks to pages and the events to components.

        Layout of the usercode blocks (found by comparing with the component records):
          <global blocks> then per page <event code of the page's components> <name hash table> <init code of the page>
        The page record's "code" address is the name hash table: 6-byte entries <hash:u32> <component id:u16>, sorted by
        hash (the hash is a CRC of the component name). The event code of a page starts at the lowest event pointer of
        its components. Returns (pages, global blocks)."""
        table = self._pageTable()
        pages = []
        if not page_objects or not table or len(table) != len(page_objects):
            # Fallback: no object metadata, flat block list
            for addr, blk in blocks[1:]:
                text = self._block_text(blk)
                if not text:
                    continue
                entry = {"page": None, "blocks": [{"offset": f"0x{addr:x}", "size": len(blk.raw), "content": text,
                                                   "hex": blk.raw.hex()}]}
                if isinstance(blk.decoded, dict):
                    entry["name_hashes"] = {str(k): v for k, v in blk.decoded.items()}
                pages.append(entry)
            return pages, []

        name_table = self._nameTable()
        static_end = self._getVal("static_usercode_address") or (blocks[-1][0] + len(blocks[-1][1].raw) + 4 if blocks else 0)
        n = len(table)
        first_event = []
        for objs, rec in zip(page_objects, table):
            ptrs = [p for o in objs for p in o.get("_event_ptrs", ()) if p != 0xFFFFFFFF and p < rec["code"]]
            first_event.append(min(ptrs) if ptrs else rec["code"])

        def entry(addr, blk, text):
            return {"offset": f"0x{addr:x}", "size": len(blk.raw), "content": text, "hex": blk.raw.hex()}

        prolog = []
        for addr, blk in blocks:
            if addr >= first_event[0]:
                break
            text = self._block_text(blk)
            if text:
                prolog.append(entry(addr, blk, text))

        for page_num, rec in enumerate(table):
            obj_list = page_objects[page_num]
            code = rec["code"]
            init_end = first_event[page_num + 1] if page_num + 1 < n else static_end

            event_starts = {}   # event pointer -> (object index, event name)
            for obj_i, obj in enumerate(obj_list):
                for slot, ptr in enumerate(obj.get("_event_ptrs", ())):
                    if ptr != 0xFFFFFFFF:
                        event_starts[ptr] = (obj_i, self._event_name(obj["type"], slot))
            sorted_events = sorted(event_starts)

            obj_events, init, hashes = {}, [], {}
            for addr, blk in blocks:
                if addr < first_event[page_num] or addr >= init_end:
                    continue
                if addr == code:
                    if isinstance(blk.decoded, dict):
                        hashes = {str(k): v for k, v in blk.decoded.items()}
                    continue
                text = self._block_text(blk)
                if not text:
                    continue
                if addr < code:
                    owner = None
                    for ev in reversed(sorted_events):
                        if addr >= ev:
                            owner = event_starts[ev]
                            break
                    if owner is not None:
                        obj_events.setdefault(owner[0], {}).setdefault(owner[1], []).append(entry(addr, blk, text))
                        continue
                init.append(entry(addr, blk, text))

            struct_attrs = {}
            if self._getVal("model_series") == 4 and init:
                try:
                    blob = bytes.fromhex(init[0]["hex"])
                    mem = [o["_mem"] for o in obj_list]
                    if len(blob) >= 4 * len(mem) and list(struct.unpack_from(f"<{len(mem)}I", blob, 0)) == mem:
                        base = mem[0] - 4 * len(mem)
                        for i, o in enumerate(obj_list):
                            size = (mem[i + 1] - mem[i]) if i + 1 < len(mem) else \
                                self._structLayouts.get(o["_type_code"], (0,))[0]
                            a = self._structAttributes(o["_type_code"], blob[mem[i] - base:mem[i] - base + size], blob, base)
                            if a:
                                struct_attrs[i] = a
                except Exception:
                    pass
            clean_objects = []
            for obj_i, obj in enumerate(obj_list):
                clean_obj = {"id": obj["id"], "type": obj["type"], "x": obj["x"], "y": obj["y"],
                             "w": obj["w"], "h": obj["h"]}
                if obj_i in struct_attrs:
                    clean_obj["attributes"] = struct_attrs[obj_i]
                hv = hashes.get(str(obj["id"] & 0xff))
                if hv is not None and not isinstance(hv, dict):
                    nm = name_table.get(int(hv, 0) if isinstance(hv, str) else hv)
                    if nm:
                        clean_obj["name"] = nm
                if (page_num, obj_i) in texts:
                    clean_obj["text"] = {str(k): v for k, v in sorted(texts[(page_num, obj_i)].items())}
                if obj_i in obj_events:
                    clean_obj["events"] = obj_events[obj_i]
                    # Touch events that report to the host look like "prints 0x65,1 / prints dp,1 / prints N,1 /
                    # prints 0xff,1 x3", i.e. the 0x65 frame: 65 <page> <widget> <press/release> FF FF FF.
                    for ename, blks in obj_events[obj_i].items():
                        joined = "\n".join(b["content"] for b in blks)
                        m = re.search(r"prints 0x65,1\s+prints (\w+),1\s+prints (\w+),1", joined)
                        if m:
                            wid = m.group(2)
                            clean_obj.setdefault("host_events", {})[ename] = {
                                "page": "<page>" if m.group(1) == "dp" else m.group(1),
                                "widget": int(wid, 0) if re.fullmatch(r"(0x[0-9a-fA-F]+|\d+)", wid) else wid,
                            }
                clean_objects.append(clean_obj)

            pe = {"page": page_num, "objects": clean_objects, "name_hashes": hashes}
            if init:
                pe["init"] = init
            pages.append(pe)
        return pages, prolog

    @classmethod
    def _withoutHex(cls, obj):
        """Copy of a nested structure without the raw "hex" fields of code block entries."""
        if isinstance(obj, dict):
            return {k: cls._withoutHex(v) for k, v in obj.items() if k != "hex"}
        if isinstance(obj, list):
            return [cls._withoutHex(v) for v in obj]
        return obj

    def _event_name(self, type_name, slot):
        """Get human-readable event name for a component type and slot index."""
        names = self._event_names.get(type_name, self._default_event_names)
        return names.get(slot, f"event_{slot}")

    def _getVal(self, key:str):
        if key in self.header1.content:
            return self.header1.content[key]
        elif key in self.header2.content:
            return self.header2.content[key]
        else:
            raise Exception("Value \"" + key + "\" not found in headers.")

    def setModel(self, model:str, force=False):
        if model not in self._models:
            raise Exception("Unknown model " + model)
        if model not in self._modelXORs:
            raise Exception("Unable to convert to specified model because the corresponding XOR key"
                            " is missing in the database.")
        # Vendor aside, the first 6 letters of the model name contain resolution and series
        # (NX8048T070 = 80, 48, T0 f.ex.)
        # These values must match, otherwise a simple conversion is not possible.
        current = self.model.lstrip("NX").lstrip("TJC")[:6]
        new     = model.lstrip("NX").lstrip("TJC")[:6]
        if not force and new != current:
            raise Exception("Cannot convert to a model with different resolution or from a different series.")
            pass

        # Set vendor, model CRC and XOR key to the new model
        self.model = model
        self.header1.content["editor_vendor"] = ord(model[0])
        self.header1.content["model_crc"] = self._modelCRCs[self._models.index(model)]
        self.header2.set_key(self._modelXORs[model])
        self.update_raw()

    def update_raw(self):
        # Convert modified headers back to raw, which also updates the header checksums
        raw  = self.header1.getRaw()
        raw += self.header2.getRaw()

        # Copy updated raw header content into the file raw
        self.raw = raw + self.raw[len(raw):]

        # Update file checksum with the correct checksum algorithm
        series = self._getVal("model_series")
        if series not in (0, 1, 2, 3, 4, 100):
            raise Exception(f"Unknown model series ({series}).")
        # Remove old checksum
        self.raw = self.raw[:-4]
        self.raw += struct.pack("<I", self.computeFileChecksum(self.raw))

    def computeFileChecksum(self, body=None):
        """Checksum of the file (without the last 4 bytes): word based for the series 2, 3 and 4, byte based for the
        others; its low byte is xored with bytes 0x03, 0x2e and 0x3c of the header."""
        body = self.raw[:-4] if body is None else body
        series = self._getVal("model_series")
        v = Checksum().CRC_for_series(body, series)
        return v ^ (body[0x03] ^ body[0x2e] ^ body[0x3c])

    def computeResourceChecksum(self):
        """Checksum of the resource region (header 1 ressource_files_crc), same algorithm family as the file checksum."""
        h = self.header1.content
        base, size = h["ressources_files_address"], h["ressource_files_size"]
        return Checksum().CRC_for_series(self.raw[base:base + size], self._getVal("model_series"))

    def verifyChecksums(self):
        """Recomputes the checksums found in the file. Returns {name: (stored, computed, ok)}; header 2 is only
        checked if it could be decoded."""
        out = {}
        raw = self.raw
        h1 = self.header1
        stored = struct.unpack_from("<I", raw, h1.start + h1.size - 4)[0]
        calc = Checksum().CRC(data=raw[h1.start:h1.start + h1.size - 4])
        out["header1"] = (stored, calc, stored == calc)
        h2 = self.header2
        stored = struct.unpack_from("<I", raw, h2.start + h2.size - 4)[0]
        calc = Checksum().CRC(data=raw[h2.start:h2.start + h2.size - 4])
        out["header2"] = (stored, calc, stored == calc)
        stored = h1.content["ressource_files_crc"]
        calc = self.computeResourceChecksum()
        out["resources"] = (stored, calc, stored == calc)
        stored = struct.unpack_from("<I", raw, len(raw) - 4)[0]
        calc = self.computeFileChecksum()
        out["file"] = (stored, calc, stored == calc)
        return out


### Here begins the argparsing
if __name__ == '__main__':
    desc = "TFTTool v1.0.0 - Analyze and convert TFT files. " \
           "Note that the analyze part is very work-in-progress-ish. " \
           "Developped by Max Zuidberg, non-commercial usage only."
    parser = argparse.ArgumentParser(description=desc)
    parser.add_argument("-i", "--input", metavar="TFT_FILE", type=str, required=True,
                        help="Path to the TFT source file")
    parser.add_argument("-o", "--output", metavar="OUTPUT_FILE", type=str, required=False, default="",
                        help="Output directory for the decoded file (default: 'out'); see TFTFile.writeOutput for its "
                             "layout. If the name ends with .json a single json file is written instead. For "
                             "conversions (-t): path of the resulting TFT file or a folder; if only a folder is "
                             "specified, the file name is automatically determined based on the input file.")
    parser.add_argument("-t", "--target", default="TXT",
                        help="Optional parameter to specify a new model. No text file will be created but rather "
                             "a new TFT file according to the specified model. If no output file/folder is specified, "
                             "a new file will be created in the same directory with the new model as suffix to the "
                             "original file name. Use -t LIST to list all available models. Use -t NXT or -t TJC "
                             "to keep the original model but change the vendor. Note that this does not work for the "
                             "X3, X5 and P series.")
    parser.add_argument("-e", "--editor-version", default="",
                        help="Optional parameter to specify a new editor version. This is useful if you want to run "
                             "an existing file in a different editor version or migrate between Nextion and TJC where "
                             "the same editor can have a different version number (f.ex. TJC 1.63.1 equals NXT 1.63.3) "
                             "CAREFUL! There is no guarantee that the file still works properly in the new editor "
                             "version. Format: '1.23.4' (three integers separated by a dot).")
    parser.add_argument("--header2", default="",
                        help="Optional parameter to provide the decoded header 2 for T1/Discovery series files. Can "
                             "either be a string with a json (see TFTTool source for the parameters and their names "
                             "that header 2 includes), or a string with the raw hex values (\"00 01 AC D3 ...\") "
                             "or a path to a file with either a json or a hex string. In the case of the hex string "
                             "the full header is required (minus the empty part at the end). In the case of the json "
                             "the order and the number of parameters given does not matter. However, when the argument "
                             "is a json string you must enclose it with double quotes and use single quotes within the "
                             "json string like this: \"{'hello':42,'world':26}\". For the json file this is possible, "
                             "too, but not required. Alternatively, you must escape the double quotes in the json "
                             "string (\"{\\\"hello\\\":42,\\\"world\\\":26}\". This does not work for the json file.")
    parser.add_argument("-f", "--force", action="store_true",
                        help="Add this flag to skip the model check during conversion. Not recommended and probably "
                             "doesn't give you the results you want. Use at your own risk. ")
    parser.add_argument("--probe", action="store_true",
                        help="Only print what was detected about the file (model, editor version, header 2 layout and "
                             "XOR key, validation result, section addresses) and exit.")
    parser.add_argument("--names", metavar="FILE",
                        help="word list (one name per line) to try when recovering component names from their hashes")
    parser.add_argument("--hex", action="store_true",
                        help="print the address and bytes in front of every statement of the .nasm listings")
    parser.add_argument("--no-glyphs", action="store_true", help="do not write the font glyph atlases (fonts/*_atlas.png)")
    parser.add_argument("--no-pictures", action="store_true",
                        help="Don't decode and write the pictures (they are written by default).")
    parser.add_argument("--raw", action="store_true",
                        help="Also write the raw resource region and the raw usercode as binary files to OUT/raw.")
    parser.add_argument("-v", action="store_true",
                        help="Add this flag to write the decoded text to the console. Useless with -t")

    args = parser.parse_args()
    tftPath = Path(args.input)
    if not tftPath.exists():
        parser.error("Invalid source file!")
    outputPath = args.output
    if outputPath:
        outputPath = Path(outputPath)

    with open(tftPath, "rb") as f:
        tft = TFTFile(f.read(), header2_hint=args.header2, decode_usercode=not args.probe)
    if args.names:
        with open(args.names, encoding="utf-8") as nf:
            tft.nameWords = tuple(w.strip() for w in nf if w.strip())

    if args.probe:
        print(f"model:        {tft.model}")
        print(f"editor:       {tft.getEditorVersionStr()}  series {tft._getVal('model_series')}")
        print(f"resolution:   {tft._getVal('lcd_resolution_x')}x{tft._getVal('lcd_resolution_y')}")
        print(f"header 2:     {tft.header2_note}")
        if tft.instruction_note:
            print(f"instructions: {tft.instruction_note}")
        for k, v in tft.header2.content.items():
            print(f"  {k:30} {v:#x}")
        print("checksums:")
        for k, (stored, calc, ok) in tft.verifyChecksums().items():
            print(f"  {k:10} stored {stored:#010x} computed {calc:#010x} {'ok' if ok else 'MISMATCH'}")
        sys.exit(0)
    args.target = args.target.upper()
    if args.target == "TXT":
        out = outputPath if outputPath else Path("out")
        if out.suffix.lower() == ".json":
            out.parent.mkdir(parents=True, exist_ok=True)
            result = tft.getReadable(includeUnknowns=True)
            if args.v:
                print(result)
            out.write_text(result, encoding="utf-8")
            print(f"Output written to: {out}")
        else:
            counts = tft.writeOutput(out, includeUnknowns=True, pictures=not args.no_pictures, raw=args.raw, glyphs=not args.no_glyphs, hexListing=args.hex)
            if args.v:
                print(tft.getReadable(includeUnknowns=True))
            if counts.get("errors"):
                print(f"Warning: {counts['errors']} part(s) of the dump failed, see errors in {out}/info.json")
            msg = f"Output written to: {out}/ ({counts['pages']} pages"
            if counts["blocks_files"]:
                msg += f", {counts['blocks_files']} flat block files"
            if not args.no_pictures:
                msg += f", {counts['pictures']} pictures"
                if counts.get("pictures_failed"):
                    msg += f" ({counts['pictures_failed']} not decodable)"
            print(msg + ")")
    elif args.target == "LIST":
        def s(model):
            # Returns an ascending number to sort models by series, resolution, then size
            val = ["T", "K", "P", "X"].index(model[-8:-7])
            val <<= 4
            val += int(model[-7:-6])
            val <<= 8
            val += ord(model[0])
            val <<= 16
            val += int(model[-12:-10].replace("10", "100")) * int(model[-10:-8])
            val <<= 16
            val += int(model[-6:-4], 16)
            return val
        print("List of all supported models:")
        models = sorted(tft._modelXORs.keys(), key=s)
        for m in models:
            print("  " + m.replace("NX", " NX"))
    else:
        if args.target in ("NXT", "TJC"):
            args.target = args.target.rstrip("T") + tft.model[-12:]
        elif not args.target.endswith("_011"):
            args.target += "_011"

        tft.setModel(args.target, args.force)

        if args.editor_version:
            try:
                v_main, v_sub, v_bug = [int(v) for v in args.editor_version.split(".")]
            except ValueError:
                parser.error(f"Invald version string: {args.editor_version}")
            tft.header1.content["editor_version_main"] = v_main
            tft.header1.content["editor_version_sub"] = v_sub
            tft.header1.content["editor_version_bugfix"] = v_bug
            tft.update_raw()

        if not outputPath or outputPath == tftPath:
            outputPath = tftPath.with_stem(tftPath.stem + "_" + args.target)
        elif outputPath.is_dir():
            outputPath /= tftPath.with_stem(tftPath.stem + "_" + args.target).name
        else:
            outputPath = outputPath.with_suffix(".tft")
        with open(outputPath, "wb") as f:
            f.write(tft.raw)
