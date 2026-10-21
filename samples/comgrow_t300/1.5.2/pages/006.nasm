; page 6 'guide_language': 13 objects

; object address table, 13 objects, block loaded at 0xa3a4
.dd 0xa3d8, 0x620, 0x674, 0x6c8, 0x71c, 0x770, 0x7c4, 0xa418
.dd 0xa46c, 0x818, 0x86c, 0xa4c0, 0xa4e0

; object id 0 (page 'guide_language'): x=0, y=0, w=480, h=272, name hash=0xc89c5f9d
; flags=0x37, aph=127, events: event_3=0xc6d8
; sta=2, pic=3
; 00cd73:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xc6d8
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0xd00b
    ref 11
    ref 12
    local_60a = local_5c3
    local_5e1 = local_5c3
    local_633 = local_5c3
    local_65c = local_5c3
    local_685 = local_5c3
    local_6ae = local_5c3
    local_727 = local_5c3
    local_750 = local_5c3
    if global_14 != 0 then jump lbl_d0c7
    local_60a = local_5c3+1
    jmp lbl_d21a

lbl_d0c7:
    if global_14 != 1 then jump lbl_d0f9
    local_5e1 = local_5c3+1
    jmp lbl_d21a

lbl_d0f9:
    if global_14 != 2 then jump lbl_d12b
    local_633 = local_5c3+1
    jmp lbl_d21a

lbl_d12b:
    if global_14 != 3 then jump lbl_d15d
    local_65c = local_5c3+1
    jmp lbl_d21a

lbl_d15d:
    if global_14 != 4 then jump lbl_d18f
    local_685 = local_5c3+1
    jmp lbl_d21a

lbl_d18f:
    if global_14 != 5 then jump lbl_d1c1
    local_6ae = local_5c3+1
    jmp lbl_d21a

lbl_d1c1:
    if global_14 != 6 then jump lbl_d1f3
    local_727 = local_5c3+1
    jmp lbl_d21a

lbl_d1f3:
    if global_14 != 7 then jump lbl_d21a
    local_750 = local_5c3+1

lbl_d21a:
    doevents
    down
    up

; object id 257 (button 'b1'): x=176, y=63, w=125, h=37, name hash=0xb8756f4e
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="英文"
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0xc71e
    global_14 = 1
    wepo global_14, 100
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    page dp
    down
    up

; object id 258 (button 'b0'): x=39, y=63, w=125, h=37, name hash=0xce1a7436
; borderc=0x0000, picc=5, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="中文"
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0xc7af
    global_14 = 0
    wepo global_14, 100
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    page dp
    down
    up

; object id 259 (button 'b2'): x=313, y=63, w=125, h=37, name hash=0x22c442c6
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="日语"
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0xc840
    global_14 = 2
    wepo global_14, 100
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    page dp
    down
    up

; object id 260 (button 'b3'): x=39, y=115, w=125, h=37, name hash=0x54ab59be
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="德语"
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0xc8d1
    global_14 = 3
    wepo global_14, 100
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    page dp
    down
    up

; object id 261 (button 'b4'): x=176, y=115, w=125, h=37, name hash=0x13670461
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="西班牙语"
; touch_release reports to the host: page <page>, widget 4

; touch_release
.org 0xc962
    global_14 = 4
    wepo global_14, 100
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    page dp
    down
    up

; object id 262 (button 'b5'): x=314, y=115, w=125, h=37, name hash=0x65081f19
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="法语"
; touch_release reports to the host: page <page>, widget 5

; touch_release
.org 0xc9f3
    global_14 = 5
    wepo global_14, 100
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    page dp
    down
    up

; object id 7 (button 'b6'): x=375, y=220, w=77, h=34, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0xca84
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="下一步"
; touch_release reports to the host: page <page>, widget 6
; 00cdc3:  ff ff                                            |..|

; touch_release
.org 0xca84
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 8 (text 't0'): x=29, y=14, w=100, h=30, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="语言选择"

; object id 265 (button 'b7'): x=39, y=167, w=125, h=37, name hash=0x89d629e9
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="葡萄牙语"
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0xcb08
    global_14 = 6
    wepo global_14, 100
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    page dp
    down
    up

; object id 266 (button 'b8'): x=176, y=167, w=125, h=37, name hash=0x7021892f
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="意大利语"
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0xcb99
    global_14 = 7
    wepo global_14, 100
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    page dp
    timer

; object id 11 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0xcc21
; tim=1000, en=1

; timer
.org 0xcc21
    if global_1c <= 0 then jump lbl_cc7d
    if global_20 <= 0 then jump lbl_cc7d
    global_20--
    if global_20 != 0 then jump lbl_cc7d
    dim = global_30

lbl_cc7d:
    down
    up

; object id 12 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0xcc97

; touch_release
.org 0xcc97
    global_20 = global_18
    dims = global_2c

; data after the object structs, 373 bytes (43 trailing zero bytes dropped)
; 00ce67:  00 00 00 00 e4 b8 8b e4 b8 80 e6 ad a5 00 7f 00  |................|
; 00ce77:  00 00 00 00 94 01 f0 00 4c 00 1f 00 df 01 0e 01  |........L.......|
; 00ce87:  00 00 00 00 01 04 00 00 00 00 72 fe 00 82 a3 10  |..........r.....|
; 00ce97:  a3 10 01 01 00 00 64 00 bc a6 00 00 01 00 00 00  |......d.........|
; 00cea7:  62 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 00ceb7:  00 00 00 00 00 00 00 00 00 00 00 00 e9 87 8d e5  |................|
; 00cec7:  90 af 66 69 72 6d 77 61 72 65 00 00 e8 af ad e8  |..firmware......|
; 00ced7:  a8 80 e9 80 89 e6 8b a9 00 04 00 00 00 00 72 fe  |..............r.|
; 00cee7:  00 82 a3 10 a3 10 01 01 00 00 64 00 24 a7 00 00  |..........d.$...|
; 00cef7:  01 00 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 00cf07:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00cf17:  00 00 00 00 00 00 7f 00 00 00 00 00 ef 00 e2 00  |................|
; 00cf27:  49 00 1e 00 00 01 ff 00 00 00 00 00 01 04 00 00  |I...............|
; 00cf37:  00 00 72 fe 00 82 a3 10 a3 10 01 01 00 00 64 00  |..r...........d.|
; 00cf47:  8c a7 00 00 01 00 00 00 00 00 00 00 e5 b7 b2 e5  |................|
; 00cf57:  bc 80 e5 90 af 00 7f 00 00 00 00 00 88 00 74 00  |..............t.|
; 00cf67:  6d 00 1e 00 f4 00 91 00 00 00 00 00 03 00 00 00  |m...............|
; 00cf77:  00 00 00 00 e7 a1 ae e5 ae 9a 00 01 7c 3a 00 00  |............|:..|
; 00cf87:  01 00 00 00 00 00 00 00 74 08 01 00 00 00 00 00  |........t.......|
; 00cf97:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00cfa7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00cfb7:  13 00 96 00 e5 b7 b2 e5 bc 80 e5 90 af 00 00 00  |................|
; 00cfc7:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00cfd7:  ac 3b 00 00 01                                   |.;...|
