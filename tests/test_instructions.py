import struct
import types
import unittest

import helpers
import TFTTool as T


def fake_file(vendor, main, sub, bug, series):
    """A TFTFile with only the header 1 values the instruction set lookup needs."""
    h1 = T.HeaderData(bytes(0xc8), T.TFTFile._fileHeader1)
    h1.content.update(editor_vendor=ord(vendor), editor_version_main=main, editor_version_sub=sub,
                      editor_version_bugfix=bug, model_series=series)
    f = T.TFTFile.__new__(T.TFTFile)
    f.header1 = h1
    f.header2 = types.SimpleNamespace(content={})
    f.instruction_note = ""
    return f


class InstructionLookup(unittest.TestCase):
    def test_exact_match_has_no_note(self):
        f = fake_file("T", 1, 65, 5, 3)
        self.assertIsNotNone(f._find_instructions())
        self.assertEqual(f.instruction_note, "")

    def test_unknown_version_falls_back_with_note(self):
        f = fake_file("T", 1, 65, 9, 3)
        self.assertIsNotNone(f._find_instructions())
        self.assertIn("no instruction set for editor tjc-1.65.9", f.instruction_note)

    def test_unknown_series_falls_back_with_note(self):
        f = fake_file("T", 1, 65, 5, 7)
        self.assertIsNotNone(f._find_instructions())
        self.assertIn("model series 7", f.instruction_note)

    def test_series4_tjc_verified_operators(self):
        f = fake_file("T", 1, 65, 5, 4)
        ops = f._find_instructions()["numerated_operators"]
        self.assertEqual([ops[4][i] for i in (0, 12, 17, 18, 31, 39)], ["i", "page", "repo", "wepo", "ref", "covx"])
        self.assertEqual([ops[8][i] for i in (0, 2, 15, 22, 48)], ["click", "btlen", "printh", "prints", "getpassw"])
        self.assertEqual(f.instruction_note, "")

    def test_series_is_preferred_over_version(self):
        # nxt-1.65.1 exists as a generic set and as an F series (100) override: series 0 must get the generic one
        generic = fake_file("N", 1, 65, 1, 0)._find_instructions()
        f100 = fake_file("N", 1, 65, 1, 100)._find_instructions()
        shared = next(e for e in T.all_instruction_sets if "nxt-1.63.1" in e["versions"])
        self.assertIs(generic, shared["models"][0])
        self.assertEqual(f100["numerated_operators"][4][34], "covx")
        self.assertIsNot(f100, shared["models"][100])

    def test_verified_tables_nxt_1_68_2(self):
        ops = fake_file("N", 1, 68, 2, 100)._find_instructions()["numerated_operators"]
        self.assertEqual(ops[8][16], "prints")
        self.assertEqual(ops[8][24], "crcrest")
        self.assertIsNone(ops[8][13])                 # the entry that only exists in this version
        self.assertEqual(ops[4][22], "xstr")
        self.assertEqual(ops[4][34], "draw")
        self.assertEqual(ops[4][35], "covx")

    def test_every_instruction_set_is_consistent(self):
        for e in T.all_instruction_sets:
            self.assertTrue(e["versions"])
            for series, m in e["models"].items():
                for size, lst in m["numerated_operators"].items():
                    self.assertIn(size, (4, 8))
                    self.assertTrue(all(x is None or isinstance(x, str) for x in lst))


class Conditionals(unittest.TestCase):
    def block(self, text):
        b = T.Usercode.CodeBlock.__new__(T.Usercode.CodeBlock)
        b.decoded = text
        b._beautify()
        return b.decoded

    def test_comparison_codes(self):
        # the jump is taken when the comparison is false, so the opposite condition is shown
        for code, sym in ((1, "!="), (2, ">="), (3, "<="), (4, ">"), (5, "<"), (6, "==")):
            self.assertEqual(self.block(f"i usize,1,{code},0x1346"), f"if usize{sym}1 then jump 0x1346")

    def test_strings_with_commas(self):
        self.assertEqual(self.block('i local:0x4253,"a,b",6,0x17'), 'if local:0x4253=="a,b" then jump 0x17')

    def test_other_text_is_untouched(self):
        for text in ("page 0", "i x,1,9,0x5", "RAW_DATA: 00", "prints 0x65,1"):
            self.assertEqual(self.block(text), text)

    def test_non_string_decoded_is_untouched(self):
        d = {0: "0x1"}
        self.assertEqual(self.block(d), d)


if __name__ == "__main__":
    unittest.main()


class ObjectBlocks(unittest.TestCase):
    def test_object_table_is_split(self):
        # table of two objects (page of 8 bytes, text of 12 bytes) followed by 4 bytes of other data
        base = 0x1000
        mem = [base + 8, base + 16]
        raw = struct.pack("<2I", *mem) + bytes(range(8)) + bytes(range(100, 112)) + b"tail"
        objects = [{"type": "page", "id": 0, "mem": mem[0], "code": 0x79},
                   {"type": "text", "id": 1, "mem": mem[1], "code": 0x74}]
        lines = T.TFTFile._objectBlocks(raw, 0x200, objects, {0x74: 12})
        self.assertEqual(lines[1], ".dd 0x1008, 0x1010")
        text = "\n".join(lines)
        self.assertIn("; object 0: page id 0 @0x1008, 8 bytes", text)
        self.assertIn("; object 1: text id 1 @0x1010, 12 bytes", text)
        self.assertIn("; data after the object structs, 4 bytes", text)

    def test_other_blocks_are_not_split(self):
        objects = [{"type": "page", "id": 0, "mem": 0x1008, "code": 0x79}]
        self.assertIsNone(T.TFTFile._objectBlocks(b"\x00" * 16, 0, objects, {}))


class ComponentNames(unittest.TestCase):
    def test_name_hash_is_crc_of_name_padded_to_14_bytes(self):
        # values taken from HASwitchPlate.tft (HASPone) and its .HMI source
        f = T.TFTFile.__new__(T.TFTFile)
        table = f._nameTable()
        for name, h in (("b1", 0xb8756f4e), ("b2", 0x22c442c6), ("b3", 0x54ab59be), ("b4", 0x13670461)):
            self.assertEqual(table[h], name)

    def test_extra_words(self):
        f = T.TFTFile.__new__(T.TFTFile)
        f.nameWords = ("kobold",)
        h = T.Checksum().CRC(data=b"kobold".ljust(14, b"\0"))
        self.assertEqual(f._nameTable()[h], "kobold")
