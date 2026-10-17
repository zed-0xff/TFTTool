"""Reads the output of nextion2text (the readable dump of the HMI source) and matches it to a decoded .tft."""
import collections
import glob
import os
import re

TYPECODE = {"Page": 0x79, "Button": 0x62, "Text": 0x74, "Number": 0x36, "XFloat": 0x3b, "Timer": 0x33,
            "Variable": 0x34, "Slider": 0x01, "Hotspot": 0x6d, "Picture": 0x70, "Dual-state": 0x35, "TouchCap": 0x05,
            "Progress": 0x6a, "Crop": 0x71}
EVENTS = {"touch_press": "Touch Press Event", "touch_release": "Touch Release Event", "timer": "Timer Event"}


def parse_page(fn):
    objs, cur, sect, ev = [], None, None, None
    with open(fn, encoding="utf-8", errors="replace") as f:
        lines = f.read().splitlines()
    for l in lines:
        if l and not l.startswith(" "):
            m = re.match(r"(Variable \((\w+)\)|[\w-]+)\s+(\S+)", l)
            if not m:
                cur = None
                continue
            kind = "Variable" if l.startswith("Variable") else m.group(1)
            cur = {"kind": kind, "name": m.group(3), "attrs": {}, "events": {}}
            objs.append(cur)
            sect = ev = None
        elif cur is not None:
            s = l.strip()
            if s in ("Attributes", "Events"):
                sect = s
            elif sect == "Attributes":
                m = re.match(r"(.+?)\s*:\s?(.*)$", s)
                if m:
                    cur["attrs"][m.group(1).strip()] = m.group(2)
            elif sect == "Events":
                if re.match(r"\w[\w ]* Event$", s) and l.startswith("        ") and not l.startswith("            "):
                    ev = s
                    cur["events"][ev] = []
                elif ev and l.startswith("            "):
                    line = re.sub(r"\s*//.*$", "", s)
                    if line:
                        cur["events"][ev].append(line)
    return objs


def load_visual(directory):
    pages = {}
    for fn in sorted(glob.glob(os.path.join(directory, "*.txt"))):
        name = os.path.basename(fn)[:-4]
        if name == "Program.s" or name.endswith("Stats"):
            continue
        pages[name] = parse_page(fn)
    return pages


def match_pages(tft, pages):
    """tft page index -> name of the page file. A page is identified by its list of (component id, type)."""
    inv = {v: k for k, v in TYPECODE.items()}
    po = tft._parse_objects()
    tsig = {i: sorted((o["id"], inv.get(o["_type_code"], "?")) for o in po[i]) for i in range(len(po))}
    nsig = {n: sorted((int(o["attrs"]["ID"]), o["kind"]) for o in objs if "ID" in o["attrs"]) for n, objs in pages.items()}
    used = {}
    for i in tsig:
        c = [n for n in nsig if nsig[n] == tsig[i] and n not in used.values()]
        if len(c) == 1:
            used[i] = c[0]
    # pages whose components have no ID in the dump: fall back to the multiset of types
    kinds_t = {i: collections.Counter(k for _, k in tsig[i]) for i in tsig}
    kinds_n = {n: collections.Counter(o["kind"] for o in objs) for n, objs in pages.items()}
    for i in tsig:
        if i in used:
            continue
        c = [n for n in kinds_n if kinds_n[n] == kinds_t[i] and n not in used.values()]
        if len(c) == 1:
            used[i] = c[0]
    return used


def command_word(line):
    m = re.match(r"([A-Za-z_]\w*)(\s|$)", line)
    return m.group(1) if m and "=" not in line.split(" ")[0] else None
