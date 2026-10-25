import struct
import sys
sys.path.insert(0, ".")
from encoders import encode_bl, encode_movw, encode_movt
from elftools.elf.elffile import ELFFile

PLAIN_PATH = "/Users/zed/projects/3d/sovol/screen/app_10000_plain.bin"

# --- fast-blit hook (sub_5538 prologue) ---
HOOK_SITE = 0x5538
RESUME_ADDR = 0x553C
R5_LITERAL_FILE_ADDR = 0x56AC

# --- boot-logo hook (sub_2B0C0 startup, same call site the original fill PoC used) ---
BOOT_HOOK_SITE = 0x2B21A
BOOT_RESUME_ADDR = 0x2B21E
SUB_F9DC = 0xF9DC

# --- "reboot" ASCII command hook (sub_2898's get_StringC call site) ---
REBOOT_HOOK_SITE = 0x2A5A
REBOOT_RESUME_ADDR = 0x2A5E
STRINGS53_ADDR = 0x2F168
GET_STRINGC = 0x455E


# --- show_hmi_pic prologue hook (replaces the stock boot splash picture with the embedded Nanachi) ---
HMI_HOOK_SITE = 0x1B8AC
HMI_RESUME_ADDR = 0x1B8B0


def elf_text_and_symbols(obj_path):
    with open(obj_path, "rb") as f:
        elf = ELFFile(f)
        text = elf.get_section_by_name(".text").data()
        symtab = elf.get_section_by_name(".symtab")
        syms = {s.name: s["st_value"] & ~1 for s in symtab.iter_symbols()
                if s["st_info"]["type"] == "STT_FUNC"}
    return text, syms


def build():
    data = bytearray(open(PLAIN_PATH, "rb").read())
    plain_len = len(data)
    assert plain_len == 0x33C1C, hex(plain_len)

    hook_code, hook_syms = elf_text_and_symbols("fast_blit_hook.o")
    fast_blit_hook_off = hook_syms["fast_blit_hook"]
    draw_boot_logo_off = hook_syms["draw_boot_logo"]
    ascii_hook_off = hook_syms["ascii_command_hook"]
    print("fast_blit_hook @ +0x%x, draw_boot_logo @ +0x%x, ascii_command_hook @ +0x%x" %
          (fast_blit_hook_off, draw_boot_logo_off, ascii_hook_off))

    trampoline = bytearray(open("trampoline.bin", "rb").read())
    boot_tramp = bytearray(open("boot_trampoline.bin", "rb").read())
    reboot_tramp = bytearray(open("reboot_trampoline.bin", "rb").read())
    rle_data = open("nanachi.rle", "rb").read()
    hmi_tramp = bytearray(open("hmi_trampoline.bin", "rb").read())
    hmi_hook_off = hook_syms["hmi_pic_hook"]

    r5_value = struct.unpack("<I", data[R5_LITERAL_FILE_ADDR:R5_LITERAL_FILE_ADDR + 4])[0]
    print("r5 literal:", hex(r5_value))

    # layout of everything appended after the stock plain image:
    trampoline_addr = plain_len
    hook_addr = trampoline_addr + len(trampoline)
    fast_blit_hook_addr = hook_addr + fast_blit_hook_off
    boot_tramp_addr = hook_addr + len(hook_code)
    draw_boot_logo_addr = hook_addr + draw_boot_logo_off
    ascii_hook_addr = hook_addr + ascii_hook_off
    rle_addr = boot_tramp_addr + len(boot_tramp)
    reboot_tramp_addr = rle_addr + len(rle_data)
    hmi_tramp_addr = reboot_tramp_addr + len(reboot_tramp)
    hmi_hook_addr = hook_addr + hmi_hook_off

    # --- patch trampoline #1 (fast-blit) ---
    trampoline[2:6] = encode_movw(5, r5_value & 0xFFFF)
    trampoline[6:10] = encode_movt(5, (r5_value >> 16) & 0xFFFF)
    trampoline[0xA:0xE] = encode_bl(trampoline_addr + 0xA, fast_blit_hook_addr, link=True)
    trampoline[0x18:0x1C] = encode_bl(trampoline_addr + 0x18, RESUME_ADDR, link=False)
    data[HOOK_SITE:HOOK_SITE + 4] = encode_bl(HOOK_SITE, trampoline_addr, link=False)

    # --- patch trampoline #2 (boot logo) ---
    boot_tramp[0x0:0x4] = encode_bl(boot_tramp_addr + 0x0, SUB_F9DC, link=True)
    boot_tramp[0x32:0x36] = encode_movw(0, rle_addr & 0xFFFF)
    boot_tramp[0x36:0x3A] = encode_movt(0, (rle_addr >> 16) & 0xFFFF)
    boot_tramp[0x3A:0x3E] = encode_movw(1, len(rle_data) & 0xFFFF)
    boot_tramp[0x3E:0x42] = encode_movt(1, (len(rle_data) >> 16) & 0xFFFF)
    boot_tramp[0x54:0x58] = encode_bl(boot_tramp_addr + 0x54, draw_boot_logo_addr, link=True)
    boot_tramp[0x5A:0x5E] = encode_bl(boot_tramp_addr + 0x5A, BOOT_RESUME_ADDR, link=False)
    # old early boot hook disabled: superseded by the show_hmi_pic hook (trampoline #4)

    # --- patch trampoline #3 (hello ASCII command) ---
    reboot_tramp[0x2:0x6] = encode_bl(reboot_tramp_addr + 0x2, ascii_hook_addr, link=True)
    reboot_tramp[0x6:0xA] = encode_movw(1, draw_boot_logo_addr & 0xFFFF)  # draw_hello_world uses same addr as draw_boot_logo
    reboot_tramp[0xA:0xE] = encode_movt(1, (draw_boot_logo_addr >> 16) & 0xFFFF)
    reboot_tramp[0x14:0x18] = encode_bl(reboot_tramp_addr + 0x14, GET_STRINGC, link=True)
    reboot_tramp[0x18:0x1C] = encode_bl(reboot_tramp_addr + 0x18, REBOOT_RESUME_ADDR, link=False)
    data[REBOOT_HOOK_SITE:REBOOT_HOOK_SITE + 4] = encode_bl(REBOOT_HOOK_SITE, reboot_tramp_addr, link=False)

    # --- patch trampoline #4 (show_hmi_pic -> Nanachi instead of the stock splash) ---
    hmi_tramp[0x8:0xC] = encode_movw(1, rle_addr & 0xFFFF)
    hmi_tramp[0xC:0x10] = encode_movt(1, (rle_addr >> 16) & 0xFFFF)
    hmi_tramp[0x10:0x14] = encode_movw(2, len(rle_data) & 0xFFFF)
    hmi_tramp[0x14:0x18] = encode_movt(2, (len(rle_data) >> 16) & 0xFFFF)
    hmi_tramp[0x18:0x1C] = encode_bl(hmi_tramp_addr + 0x18, hmi_hook_addr, link=True)
    hmi_tramp[0x22:0x26] = encode_bl(hmi_tramp_addr + 0x22, HMI_RESUME_ADDR, link=False)
    data[HMI_HOOK_SITE:HMI_HOOK_SITE + 4] = encode_bl(HMI_HOOK_SITE, hmi_tramp_addr, link=False)

    data += trampoline
    data += hook_code
    data += boot_tramp
    data += rle_data
    data += reboot_tramp
    data += hmi_tramp

    print("plain_len=0x%x trampoline=0x%x hook=0x%x fast_blit_hook=0x%x" %
          (plain_len, trampoline_addr, hook_addr, fast_blit_hook_addr))
    print("boot_tramp=0x%x draw_boot_logo=0x%x rle=0x%x final_size=0x%x" %
          (boot_tramp_addr, draw_boot_logo_addr, rle_addr, len(data)))

    out_path = "app_10000_plain_fastblit.bin"
    with open(out_path, "wb") as f:
        f.write(data)
    return out_path


if __name__ == "__main__":
    build()
