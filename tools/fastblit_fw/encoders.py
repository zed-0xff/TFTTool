import struct

def encode_bl(pc_of_insn, target, link=True):
    offset = target - (pc_of_insn + 4)
    imm32 = offset & 0x1FFFFFF
    S, I1, I2 = (imm32 >> 24) & 1, (imm32 >> 23) & 1, (imm32 >> 22) & 1
    imm10, imm11 = (imm32 >> 12) & 0x3FF, (imm32 >> 1) & 0x7FF
    J1, J2 = (~(I1 ^ S)) & 1, (~(I2 ^ S)) & 1
    hw1 = (0b11110 << 11) | (S << 10) | imm10
    top2 = 0b11 if link else 0b10
    hw2 = (top2 << 14) | (J1 << 13) | (1 << 12) | (J2 << 11) | imm11
    return struct.pack('<HH', hw1, hw2)


def encode_movw(rd, imm16):
    imm4 = (imm16 >> 12) & 0xF
    i = (imm16 >> 11) & 0x1
    imm3 = (imm16 >> 8) & 0x7
    imm8 = imm16 & 0xFF
    hw1 = (0b11110 << 11) | (i << 10) | (0b100100 << 4) | imm4
    hw2 = (imm3 << 12) | (rd << 8) | imm8
    return struct.pack('<HH', hw1, hw2)


def encode_movt(rd, imm16):
    imm4 = (imm16 >> 12) & 0xF
    i = (imm16 >> 11) & 0x1
    imm3 = (imm16 >> 8) & 0x7
    imm8 = imm16 & 0xFF
    hw1 = (0b11110 << 11) | (i << 10) | (0b101100 << 4) | imm4
    hw2 = (imm3 << 12) | (rd << 8) | imm8
    return struct.pack('<HH', hw1, hw2)


if __name__ == "__main__":
    import capstone
    md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB)

    # known-good ground truth from the earlier PoC: bl #0xf9dc at address 0x2b21a == e4f7dffb
    b = encode_bl(0x2b21a, 0xf9dc, True)
    print("bl check:", b.hex(), "expect e4f7dffb", "OK" if b == bytes.fromhex("e4f7dffb") else "MISMATCH")

    for rd in (0, 5, 7):
        for imm in (0x0000, 0x1234, 0x5538, 0xFFFF, 0x7612, 0x8000):
            data = encode_movw(rd, imm)
            insns = list(md.disasm(data, 0x1000))
            ok = len(insns) == 1 and insns[0].mnemonic == "movw" and insns[0].op_str == f"r{rd}, #{imm}"
            print("movw", rd, hex(imm), data.hex(), insns[0].mnemonic if insns else "NONE", insns[0].op_str if insns else "", "OK" if ok else "MISMATCH")
            data = encode_movt(rd, imm)
            insns = list(md.disasm(data, 0x1000))
            ok = len(insns) == 1 and insns[0].mnemonic == "movt" and insns[0].op_str == f"r{rd}, #{imm}"
            print("movt", rd, hex(imm), data.hex(), insns[0].mnemonic if insns else "NONE", insns[0].op_str if insns else "", "OK" if ok else "MISMATCH")
