import os
import subprocess
import sys
import tempfile
import unittest

import helpers

HSV = [f for f in helpers.sample_files() if f.endswith("HSV Test.tft")]


@unittest.skipUnless(HSV, "Example/HSV Test.tft not found")
class CommandLine(unittest.TestCase):
    def run_tool(self, *args):
        return subprocess.run([sys.executable, os.path.join(helpers.ROOT, "TFTTool.py"), "-i", HSV[0], *args],
                              capture_output=True, text=True, timeout=120)

    def test_probe(self):
        r = self.run_tool("--probe")
        self.assertEqual(r.returncode, 0, r.stderr)
        self.assertIn("header 2:", r.stdout)
        self.assertIn("checksums:", r.stdout)
        self.assertNotIn("MISMATCH", r.stdout)

    def test_default_output_directory(self):
        with tempfile.TemporaryDirectory() as d:
            r = subprocess.run([sys.executable, os.path.join(helpers.ROOT, "TFTTool.py"), "-i", HSV[0], "--no-pictures"],
                               capture_output=True, text=True, cwd=d, timeout=120)
            self.assertEqual(r.returncode, 0, r.stderr)
            self.assertTrue(os.path.exists(os.path.join(d, "out", "info.json")))

    def test_single_json_file(self):
        with tempfile.TemporaryDirectory() as d:
            out = os.path.join(d, "x.json")
            r = self.run_tool("-o", out)
            self.assertEqual(r.returncode, 0, r.stderr)
            self.assertTrue(os.path.getsize(out) > 1000)

    def test_conversion_keeps_file_valid(self):
        import TFTTool as T
        with tempfile.TemporaryDirectory() as d:
            out = os.path.join(d, "conv.tft")
            r = self.run_tool("-t", "TJC8048T050", "-o", out)
            self.assertEqual(r.returncode, 0, r.stderr)
            t = helpers.load(out, decode_usercode=False)
            for name, (stored, calc, ok) in t.verifyChecksums().items():
                self.assertTrue(ok, name)


if __name__ == "__main__":
    unittest.main()
