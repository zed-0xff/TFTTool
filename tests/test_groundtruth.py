import collections
import re
import unittest

import helpers
import groundtruth as G

PAIRS = helpers.nspanel_pairs()


@unittest.skipUnless(PAIRS, "nspanel-lovelace-ui checkout (HMI + nextion2text output) not found next to the tool")
class AgainstNextion2Text(unittest.TestCase):
    """The nspanel-lovelace-ui project ships the source of its screens as readable text (nextion2text). The decoded
    .tft must agree with it."""

    @classmethod
    def setUpClass(cls):
        cls.cases = []
        for tft_path, vis in PAIRS:
            t = helpers.load(tft_path)
            data = t.getReadableData(True)
            pages = G.load_visual(vis)
            cls.cases.append((tft_path, t, data, pages, G.match_pages(t, pages)))

    def objects(self, data, pages, used):
        """yield (decoded object, n2t object) matched by the component id"""
        for pg in data["pages"]:
            if pg["page"] not in used:
                continue
            by_id = {int(o["attrs"]["ID"]): o for o in pages[used[pg["page"]]] if "ID" in o["attrs"]}
            for o in pg["objects"]:
                if o["id"] in by_id:
                    yield o, by_id[o["id"]]

    def test_pages_are_matched(self):
        for path, t, data, pages, used in self.cases:
            with self.subTest(file=path):
                self.assertEqual(len(used), len(pages))

    def test_geometry(self):
        for path, t, data, pages, used in self.cases:
            total = bad = 0
            for o, n in self.objects(data, pages, used):
                a = n["attrs"]
                if "x coordinate" not in a:
                    continue
                total += 1
                if (o["x"], o["y"], o["w"], o["h"]) != (int(a["x coordinate"]), int(a["y coordinate"]),
                                                        int(a["Width"]), int(a["Height"])):
                    bad += 1
            with self.subTest(file=path):
                self.assertGreater(total, 400)
                self.assertEqual(bad, 0)

    def test_event_commands(self):
        """The command words of the touch and timer events (names of the operators) must be decoded correctly."""
        for path, t, data, pages, used in self.cases:
            want_total = hit = 0
            for o, n in self.objects(data, pages, used):
                for key, en in G.EVENTS.items():
                    if key not in o.get("events", {}) or en not in n["events"]:
                        continue
                    want = collections.Counter(c for c in (G.command_word(l) for l in n["events"][en]) if c)
                    got = collections.Counter()
                    for e in o["events"][key]:
                        w = e["content"].split(" ")[0]
                        if re.fullmatch(r"[A-Za-z_]\w*", w):
                            got[w] += 1
                    for c, k in want.items():
                        want_total += k
                        hit += min(k, got.get(c, 0))
            with self.subTest(file=path):
                self.assertGreater(want_total, 3000)
                self.assertGreaterEqual(hit / want_total, 0.999, f"{hit}/{want_total}")


if __name__ == "__main__":
    unittest.main()
