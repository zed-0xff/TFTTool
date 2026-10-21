; page 6 'guide_language': 13 objects

; object address table, 13 objects, block loaded at 0xb950
.dd 0xb984, 0x6c8, 0x71c, 0x770, 0x7c4, 0x818, 0x86c, 0xb9c4
.dd 0xba18, 0x8c0, 0x914, 0xba6c, 0xba8c

; object id 0 (page 'guide_language'): x=0, y=0, w=480, h=272, name hash=0xc89c5f9d
; flags=0x37, aph=127, events: event_3=0xdfde
; sta=2, pic=91
; 00e687:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xdfde
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0xe91f
    ref 11
    ref 12
    local_681 = local_63a
    local_658 = local_63a
    local_6aa = local_63a
    local_6d3 = local_63a
    local_6fc = local_63a
    local_725 = local_63a
    local_79e = local_63a
    local_7c7 = local_63a
    if global_14 != 0 then jump lbl_e9db
    local_681 = local_63a+1
    jmp lbl_eb2e

lbl_e9db:
    if global_14 != 1 then jump lbl_ea0d
    local_658 = local_63a+1
    jmp lbl_eb2e

lbl_ea0d:
    if global_14 != 2 then jump lbl_ea3f
    local_6aa = local_63a+1
    jmp lbl_eb2e

lbl_ea3f:
    if global_14 != 3 then jump lbl_ea71
    local_6d3 = local_63a+1
    jmp lbl_eb2e

lbl_ea71:
    if global_14 != 4 then jump lbl_eaa3
    local_6fc = local_63a+1
    jmp lbl_eb2e

lbl_eaa3:
    if global_14 != 5 then jump lbl_ead5
    local_725 = local_63a+1
    jmp lbl_eb2e

lbl_ead5:
    if global_14 != 6 then jump lbl_eb07
    local_79e = local_63a+1
    jmp lbl_eb2e

lbl_eb07:
    if global_14 != 7 then jump lbl_eb2e
    local_7c7 = local_63a+1

lbl_eb2e:
    doevents
    down
    up

; object id 257 (button 'b1'): x=36, y=62, w=129, h=37, name hash=0xb8756f4e
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="English"
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0xe024
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

; object id 258 (button 'b0'): x=177, y=166, w=124, h=38, name hash=0xce1a7436
; borderc=0x0000, picc=92, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="中文"
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0xe0b5
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

; object id 259 (button 'b2'): x=311, y=62, w=126, h=38, name hash=0x22c442c6
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="日本語"
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0xe146
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

; object id 260 (button 'b3'): x=37, y=115, w=126, h=37, name hash=0x54ab59be
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Deutsch"
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0xe1d7
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

; object id 261 (button 'b4'): x=174, y=114, w=127, h=38, name hash=0x13670461
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Español"
; touch_release reports to the host: page <page>, widget 4

; touch_release
.org 0xe268
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

; object id 262 (button 'b5'): x=312, y=114, w=127, h=38, name hash=0x65081f19
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Français"
; touch_release reports to the host: page <page>, widget 5

; touch_release
.org 0xe2f9
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
; flags=0x37, aph=127, events: touch_release=0xe38a
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Next"
; touch_release reports to the host: page <page>, widget 8
; 00e6d7:  ff ff                                            |..|

; touch_release
.org 0xe38a
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints global_14, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 8 (text 't0'): x=29, y=14, w=100, h=30, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="Language"

; object id 265 (button 'b7'): x=37, y=167, w=128, h=37, name hash=0x89d629e9
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Português"
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0xe41c
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

; object id 266 (button 'b8'): x=174, y=62, w=129, h=38, name hash=0x7021892f
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Italiano"
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0xe4ad
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
; flags=0x27, events: timer=0xe535
; tim=1000, en=1

; timer
.org 0xe535
    if global_1c <= 0 then jump lbl_e591
    if global_20 <= 0 then jump lbl_e591
    global_20--
    if global_20 != 0 then jump lbl_e591
    dim = global_30

lbl_e591:
    down
    up

; object id 12 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0xe5ab

; touch_release
.org 0xe5ab
    global_20 = global_18
    dims = global_2c

; data after the object structs, 373 bytes (43 trailing zero bytes dropped)
; 00e77b:  00 00 00 00 4e 65 78 74 00 00 00 00 00 00 00 00  |....Next........|
; 00e78b:  00 00 00 00 00 00 7f 00 00 00 00 00 6b 00 ac 00  |............k...|
; 00e79b:  80 00 27 00 ea 00 d2 00 00 00 00 00 00 00 00 00  |..'.............|
; 00e7ab:  00 00 04 00 05 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 00e7bb:  f8 bc 00 00 01 00 00 00 00 00 00 00 e9 87 8d e5  |................|
; 00e7cb:  90 af 6b 6c 69 70 70 65 72 00 00 00 00 00 00 00  |..klipper.......|
; 00e7db:  00 00 00 00 00 00 00 00 00 00 7f 00 4c 61 6e 67  |............Lang|
; 00e7eb:  75 61 67 65 00 00 1e 00 dd 00 00 01 00 00 00 00  |uage............|
; 00e7fb:  01 04 00 00 00 00 72 fe 00 82 a3 10 a3 10 01 01  |......r.........|
; 00e80b:  00 00 64 00 d8 bc 00 00 01 00 00 00 62 15 00 00  |..d.........b...|
; 00e81b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e82b:  00 00 00 00 e9 87 8d e5 90 af 66 69 72 6d 77 61  |..........firmwa|
; 00e83b:  72 65 00 00 ef 00 e2 00 49 00 1e 00 37 01 ff 00  |re......I...7...|
; 00e84b:  00 00 00 00 01 04 00 00 00 00 72 fe 00 82 a3 10  |..........r.....|
; 00e85b:  a3 10 01 01 00 00 64 00 40 bd 00 00 01 00 00 00  |......d.@.......|
; 00e86b:  00 00 00 00 e5 b7 b2 e5 bc 80 e5 90 af 00 74 00  |..............t.|
; 00e87b:  6d 00 1e 00 f4 00 91 00 00 00 00 00 03 00 00 00  |m...............|
; 00e88b:  00 00 00 00 e7 a1 ae e5 ae 9a 00 01 00 40 00 00  |.............@..|
; 00e89b:  01 00 00 00 00 00 00 00 74 08 01 00 00 00 00 00  |........t.......|
; 00e8ab:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e8bb:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00e8cb:  13 00 96 00 72 00 1e 00 84 00 b3 00 e5 b7 b2 e5  |....r...........|
; 00e8db:  bc 80 e5 90 af 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00e8eb:  80 41 00 00 01                                   |.A...|
