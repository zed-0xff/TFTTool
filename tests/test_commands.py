"""Operator names of the series 3 / 4 tables against the event source of .HMI files that come with their .tft."""
import collections
import json
import os
import re
import shutil
import subprocess
import unittest

import NextionInstructionSets as N
from helpers import HERE, ROOT, T, load

EXT = os.path.dirname(ROOT)
CASES = [
    # (.tft, .HMI, minimum share of the command words of the source that is found in the decoded code)
    (os.path.join(EXT, "Gaggiuino_35", "Nextion_43", "Nextion_43_18MAY2024_0_Deg.tft"),
     os.path.join(EXT, "Gaggiuino_35", "Nextion_43", "Nextion_43_18MAY2024.HMI"), 0.75),
    (os.path.join(EXT, "QIDI_PLUS3", "UI", "800_480_PLUS.tft"), os.path.join(EXT, "QIDI_PLUS3", "UI", "800_480_PLUS.HMI"), 0.95),
    (os.path.join(EXT, "klipmi", "hmi", "openq1", "Q1_UI_mod.tft"), os.path.join(EXT, "klipmi", "hmi", "openq1", "Q1_UI_mod.HMI"), 0.97),
    (os.path.join(EXT, "qidi-plus4-klipmi", "hmi", "openp4", "xindi_800_480_V1.7.1.tft"),
     os.path.join(EXT, "qidi-plus4-klipmi", "hmi", "openp4", "xindi_800_480_V1.7.1.HMI"), 0.97),
] + [(os.path.join(EXT, "powadcr", "HMI", "build", f"TJC4832{m}_011", f"TJC4832{m}_011.tft"),
      os.path.join(EXT, "powadcr", "HMI", "powadcr_iface.HMI"), 0.97) for m in ("T035", "K035", "T135")]
OPS = set()
for _e in N.all_instruction_sets:
    for _m in _e["models"].values():
        for _l in _m["numerated_operators"].values():
            OPS |= {x for x in _l if x}
OPS.discard("i")


def command_words(lines):
    c = collections.Counter()
    for ln in lines:
        m = re.match(r"^([a-z_][a-z_0-9]*)(?:\s|$)", re.sub(r"//.*", "", ln).strip())
        if m and m.group(1) in OPS:
            c[m.group(1)] += 1
    return c


CASES = [c for c in CASES if os.path.isfile(c[0]) and os.path.isfile(c[1])]


@unittest.skipUnless(shutil.which("node") and CASES, "needs node and the sample projects with their .HMI source")
class CommandWords(unittest.TestCase):
    def test_command_words(self):
        for tft_path, hmi_path, minimum in CASES:
            out = subprocess.run(["node", os.path.join(HERE, "hmi_dump.js"), hmi_path], capture_output=True, check=True)
            hmi = json.loads(out.stdout)
            pages = load(tft_path).getReadableData()["pages"]
            codes = {v: k for k, v in T.TFTFile._nextion_type_names.items()}
            src = collections.Counter()
            dec = collections.Counter()
            for pg in pages:
                sig = [codes.get(o["type"]) for o in pg["objects"]]
                cands = [p for p in hmi if [h["attrs"]["type"]["v"] for h in p["objs"]] == sig]
                if len(cands) > 1:      # several pages with the same components: compare the positions
                    cands = [p for p in cands if all(
                        (h["attrs"]["x"]["v"], h["attrs"]["y"]["v"]) == (o["x"], o["y"])
                        for h, o in zip(p["objs"], pg["objects"]) if "v" in h["attrs"].get("x", {}))]
                if not cands:
                    continue
                for o, h in zip(pg["objects"], cands[0]["objs"]):
                    src += command_words([l for ls in h["events"].values() for l in ls])
                    dec += command_words([ln for blks in o.get("events", {}).values() for b in blks
                                          for ln in str(b["content"]).split("\n")])
            total = sum(src.values())
            same = sum(min(src[w], dec[w]) for w in src)
            self.assertGreater(total, 100, tft_path)
            self.assertGreaterEqual(same / total, minimum, (os.path.basename(tft_path), same, total))


if __name__ == "__main__":
    unittest.main()
