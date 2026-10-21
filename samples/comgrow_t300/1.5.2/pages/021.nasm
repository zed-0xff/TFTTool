; page 21 'printing': 25 objects

; object address table, 25 objects, block loaded at 0xa3a4
.dd 0xa408, 0x1804, 0x1858, 0x18ac, 0x1900, 0x1954, 0x19a8, 0x19fc
.dd 0x1a3c, 0xa448, 0xa49c, 0x1a90, 0x1ae4, 0xa4f0, 0xa544, 0x1b20
.dd 0x1b74, 0x1bc8, 0x1c1c, 0xa598, 0xa5b8, 0xa5d8, 0xa610, 0x1c70
.dd 0xa648

; object id 0 (page 'printing'): x=0, y=0, w=480, h=272, name hash=0x5b0f785a
; flags=0x37, aph=127, events: event_3=0x1c59e
; sta=2, pic=33
; 01ccdf:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1c59e
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up

; load
.org 0x1d0cf
    ref 19
    ref 20
    local_228c = ""
    if global_14 != 0 then jump lbl_1d120
    local_23eb = "微调"
    jmp lbl_1d284

lbl_1d120:
    if global_14 != 1 then jump lbl_1d153
    local_23eb = "Adjust"
    jmp lbl_1d284

lbl_1d153:
    if global_14 != 2 then jump lbl_1d189
    local_23eb = "微調整"
    jmp lbl_1d284

lbl_1d189:
    if global_14 != 3 then jump lbl_1d1be
    local_23eb = "Anpassen"
    jmp lbl_1d284

lbl_1d1be:
    if global_14 != 4 then jump lbl_1d1f2
    local_23eb = "Ajustar"
    jmp lbl_1d284

lbl_1d1f2:
    if global_14 != 5 then jump lbl_1d226
    local_23eb = "Ajuster"
    T 0x5e

lbl_1d226:
    if global_14 != 6 then jump lbl_1d25a
    local_23eb = "Ajustar"
    T 0x2a

lbl_1d25a:
    if global_14 != 7 then jump lbl_1d284
    local_23eb = "Regolare"

lbl_1d284:
    doevents
    down
    up

; object id 257 (text 't0'): x=17, y=14, w=271, h=34, name hash=0xc02992d9
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件名"
; text:
;   -1: ""

; object id 258 (text 't2'): x=37, y=74, w=85, h=21, name hash=0x2cf7a429
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0h0m"

; object id 259 (text 't3'): x=38, y=134, w=85, h=21, name hash=0x5a98bf51
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0h0m"

; object id 260 (text 't4'): x=154, y=74, w=70, h=21, name hash=0x1d54e28e
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="600mm/s"

; object id 261 (text 't5'): x=154, y=134, w=70, h=21, name hash=0x6b3bf9f6
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0.5mm"

; object id 262 (text 't6'): x=346, y=233, w=53, h=24, name hash=0xf18ad47e
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="42%"

; object id 263 (progress_bar 'j0'): x=22, y=238, w=286, h=13, name hash=0xe6a28637

; object id 264 (button 'b3'): x=21, y=169, w=48, h=46, name hash=0x54ab59be
; borderc=0x0000, picc=33, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0x1c69a
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b4'): x=91, y=169, w=48, h=46, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x1c704
; borderc=0x0000, picc=33, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 01cd2f:  ff ff                                            |..|

; touch_release
.org 0x1c704
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b5'): x=302, y=20, w=82, h=25, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x1c76e
; borderc=0x0000, picc=33, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="微调"
; text:
;   0: "微调"
;   1: "Adjust"
;   2: "微調整"
;   3: "Anpassen"
;   4: "Ajustar"
;   5: "Ajuster"
;   6: "Ajustar"
;   7: "Regolare"
; touch_release reports to the host: page <page>, widget 5
; 01cd83:  ff ff                                            |..|

; touch_release
.org 0x1c76e
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 267 (button 'b2'): x=407, y=213, w=69, h=54, name hash=0x22c442c6
; borderc=0x0000, picc=34, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x1c7d8
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 268 (crop 'q8'): x=418, y=5, w=45, h=30, name hash=0x8c91e280
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0x1c842
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 13 (button 'b1'): x=407, y=127, w=69, h=86, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x1c8ac
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 01cdd7:  ff ff                                            |..|

; touch_release
.org 0x1c8ac
    global_0 = 1
    global_c = dp
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 14 (button 'b0'): x=407, y=42, w=69, h=85, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1c930
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 01ce2b:  ff ff                                            |..|

; touch_release
.org 0x1c930
    global_0 = 0
    global_c = dp
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 271 (text 'hot_bed_temp'): x=411, y=166, w=33, h=30, name hash=0x3675c015
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; touch_press
.org 0x1c9aa
    click b1, 1
    up

; touch_release
.org 0x1c9bf
    click b1, 0
    down

; object id 272 (text 'extruder_temp'): x=410, y=90, w=33, h=30, name hash=0x8f3c4cf3
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; touch_press
.org 0x1c9da
    click b0, 1
    up

; touch_release
.org 0x1c9ef
    click b0, 0
    down

; object id 273 (text 'extru_target'): x=443, y=90, w=33, h=30, name hash=0x8bb66142
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; touch_press
.org 0x1ca0a
    click b0, 1
    up

; touch_release
.org 0x1ca1f
    click b0, 0
    down

; object id 274 (text 'bed_target'): x=444, y=166, w=33, h=30, name hash=0x5af95597
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; touch_press
.org 0x1ca3a
    click b1, 1
    up

; touch_release
.org 0x1ca4f
    click b1, 0
    timer

; object id 19 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1ca6b
; tim=1000, en=1

; timer
.org 0x1ca6b
    if global_1c <= 0 then jump lbl_1cac7
    if global_20 <= 0 then jump lbl_1cac7
    global_20--
    if global_20 != 0 then jump lbl_1cac7
    dim = global_30

lbl_1cac7:
    down
    up

; object id 20 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1cae1

; touch_release
.org 0x1cae1
    global_20 = global_18
    dims = global_2c
    down

; object id 21 (hotspot 'm0'): x=20, y=167, w=49, h=47, name hash=0xdd5ffe41
; flags=0x37, aph=0, events: touch_press=0x1cb0f, touch_release=0x1cb24

; touch_press
.org 0x1cb0f
    click b3, 1
    up

; touch_release
.org 0x1cb24
    click b3, 0
    down

; object id 22 (hotspot 'm1'): x=405, y=212, w=73, h=56, name hash=0xab30e539
; flags=0x37, aph=0, events: touch_press=0x1cb3f, touch_release=0x1cb54

; touch_press
.org 0x1cb3f
    click b2, 1
    up

; touch_release
.org 0x1cb54
    click b2, 0
    down
    up
    down

; object id 279 (unknown_0x3c 'exp0'): x=227, y=64, w=160, h=160, name hash=0x4cb85fe0

; object id 24 (hotspot 'm2'): x=407, y=0, w=73, h=40, name hash=0x3181c8b1
; flags=0x37, aph=0, events: touch_press=0x1cb89, touch_release=0x1cb9e

; touch_press
.org 0x1cb89
    click q8, 1
    up

; touch_release
.org 0x1cb9e
    click q8, 0

; data after the object structs, 418 bytes (6 trailing zero bytes dropped)
; 01cf23:  00 00 00 00 00 0c 00 00 00 00 00 00 00 00 00 00  |................|
; 01cf33:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cf43:  00 00 00 00 71 0d 00 00 00 00 00 00 00 00 00 00  |....q...........|
; 01cf53:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cf63:  00 00 00 00 00 00 7f 00 00 00 00 00 e2 01 a9 00  |................|
; 01cf73:  7b 00 24 00 5c 02 cc 00 00 00 00 00 1f 00 00 00  |{.$.\...........|
; 01cf83:  00 00 00 00 00 00 64 00 a8 ad 00 00 e5 be ae e8  |......d.........|
; 01cf93:  b0 83 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cfa3:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 01cfb3:  05 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cfc3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cfd3:  74 0e 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01cfe3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cff3:  00 00 7f 00 00 00 00 00 51 00 2d 00 40 01 2d 00  |........Q.-.@.-.|
; 01d003:  90 01 59 00 00 00 00 00 03 00 00 00 00 01 00 00  |..Y.............|
; 01d013:  ff ff 00 01 00 00 2c 01 10 ae 00 00 01 00 00 00  |......,.........|
; 01d023:  00 00 00 00 62 0f 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01d033:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01d043:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 2e 00  |................|
; 01d053:  1d 00 2c 00 00 01 59 00 00 00 00 00 00 00 00 00  |..,...Y.........|
; 01d063:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 01d073:  40 af 00 00 01 00 00 00 74 10 00 00 00 00 00 00  |@.......t.......|
; 01d083:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01d093:  00 00 00 00 e6 98 af 00 00 00 7f 00 00 00 00 00  |................|
; 01d0a3:  52 00 5b 00 40 01 2d 00 91 01 87 00 00 00 00 00  |R.[.@.-.........|
; 01d0b3:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01d0c3:  a8 af                                            |..|
