; page 12 'filelist_init': 11 objects

; object address table, 11 objects, block loaded at 0xb950
.dd 0xb97c, 0xb9bc, 0xba24, 0xba44, 0x1414, 0x1468, 0x14bc, 0xba64
.dd 0xbab8, 0xbb0c, 0xbb60

; object id 0 (page 'filelist_init'): x=0, y=0, w=480, h=272, name hash=0xc0351114
; flags=0x37, aph=127, events: event_3=0x16110
; sta=2, pic=25
; 0165a8:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x16110
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    playend
    timer

; load
.org 0x16a58
    ref 1
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_16acb
    local_1727 = "本地"
    local_1750 = "U盘"
    local_1779 = "延时摄影"
    jmp lbl_16d9a

lbl_16acb:
    if global_14 != 1 then jump lbl_16b32
    local_1727 = "Local"
    local_1750 = "U Disk"
    local_1779 = "time-lapse\rphotography"
    jmp lbl_16d9a

lbl_16b32:
    if global_14 != 2 then jump lbl_16b9f
    local_1727 = "ローカル"
    local_1750 = "Uディスク"
    local_1779 = "写真の遅れ"
    jmp lbl_16d9a

lbl_16b9f:
    if global_14 != 3 then jump lbl_16c09
    local_1727 = "örtlich"
    local_1750 = "U-Disk"
    local_1779 = "Verzögerte\rFotografie"
    jmp lbl_16d9a

lbl_16c09:
    if global_14 != 4 then jump lbl_16c70
    local_1727 = "Local"
    local_1750 = "Disco U"
    local_1779 = "Fotografía\rRetrasada"
    T 0x12a

lbl_16c70:
    if global_14 != 5 then jump lbl_16cda
    local_1727 = "Locale"
    local_1750 = "Disque U"
    local_1779 = "Photographie\rRetardée"
    jmp lbl_16d9a

lbl_16cda:
    if global_14 != 6 then jump lbl_16d3d
    local_1727 = "Local"
    local_1750 = "Disco U"
    local_1779 = "Fotografia\rTardia"
    jmp lbl_16d9a

lbl_16d3d:
    if global_14 != 7 then jump lbl_16d9a
    local_1727 = "Locale"
    local_1750 = "Disco U"
    local_1779 = "Fotografia\rtime-lapse"

lbl_16d9a:
    doevents
    down
    up

; object id 1 (gmov 'gm0'): x=238, y=127, w=34, h=34, name hash=0x9d43bf99
; flags=0x37, aph=127
; vid=0, en=1, dis=100
; 0165ef:  01 00 00                                         |...|
; 0165f3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 016603:  00 00 00 ff 00 b8 bb 00 00 e0 2e 00 00 58 be 00  |.............X..|
; 016613:  00 00 00 00 00 00 00 00 00                       |.........|

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x16176
; tim=1000, en=1

; timer
.org 0x16176
    if global_1c <= 0 then jump lbl_161d2
    if global_20 <= 0 then jump lbl_161d2
    global_20--
    if global_20 != 0 then jump lbl_161d2
    dim = global_30

lbl_161d2:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x161ec

; touch_release
.org 0x161ec
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 260 (button 'b0'): x=66, y=7, w=207, h=34, name hash=0xce1a7436
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; text:
;   0: "本地"
;   1: "Local"
;   2: "ローカル"
;   3: "örtlich"
;   4: "Local"
;   5: "Locale"
;   6: "Local"
;   7: "Locale"
; touch_release reports to the host: page <page>, widget 110

; touch_release
.org 0x16224
    prints 0x65, 1
    prints dp, 1
    prints 110, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 261 (button 'b1'): x=271, y=6, w=203, h=34, name hash=0xb8756f4e
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; text:
;   0: "U盘"
;   1: "U Disk"
;   2: "Uディスク"
;   3: "U-Disk"
;   4: "Disco U"
;   5: "Disque U"
;   6: "Disco U"
;   7: "Disco U"
; touch_release reports to the host: page <page>, widget 111

; touch_release
.org 0x16290
    prints 0x65, 1
    prints dp, 1
    prints 111, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 262 (button 'b17'): x=470, y=0, w=10, h=7, name hash=0x3bc12630
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; text:
;   0: "延时摄影"
;   1: "time-lapse\rphotography"
;   2: "写真の遅れ"
;   3: "Verzögerte\rFotografie"
;   4: "Fotografía\rRetrasada"
;   5: "Photographie\rRetardée"
;   6: "Fotografia\rTardia"
;   7: "Fotografia\rtime-lapse"
; touch_release reports to the host: page <page>, widget 112

; touch_release
.org 0x162fc
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x16368
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 0166a0:  ff ff                                            |..|

; touch_release
.org 0x16368
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x163d4
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 0166f4:  ff ff                                            |..|

; touch_release
.org 0x163d4
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x16440
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 016748:  ff ff                                            |..|

; touch_release
.org 0x16440
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x164ac
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 01679c:  ff ff                                            |..|

; touch_release
.org 0x164ac
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 678 bytes (2 trailing zero bytes dropped)
; 0167ac:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0167bc:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 0167cc:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 0167dc:  1a 00 ff ff ff ff 01 01 00 00 64 00 38 cb 00 00  |..........d.8...|
; 0167ec:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0167fc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01680c:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 50 00  |..............P.|
; 01681c:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 01682c:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01683c:  a0 cb 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 01684c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01685c:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01686c:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 01687c:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 01688c:  00 00 64 00 08 cc 00 00 01 00 00 00 62 08 00 00  |..d.........b...|
; 01689c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0168ac:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0168bc:  00 00 00 00 00 00 d3 00 3d 00 36 00 3c 00 08 01  |........=.6.<...|
; 0168cc:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 0168dc:  ff ff 01 01 00 00 64 00 70 cc 00 00 01 00 00 00  |......d.p.......|
; 0168ec:  62 0c 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0168fc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01690c:  00 00 7f 00 00 00 00 00 c0 00 2d 00 00 00 6f 00  |..........-...o.|
; 01691c:  3d 01 9b 00 00 00 00 00 00 00 00 00 00 00 1a 00  |=...............|
; 01692c:  1a 00 ff ff ff ff 01 01 00 00 64 00 d8 cc 00 00  |..........d.....|
; 01693c:  01 00 00 00 74 0d 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 01694c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01695c:  00 00 00 00 00 00 7f 00 00 00 00 00 14 ff 61 00  |..............a.|
; 01696c:  32 00 10 00 45 ff 70 00 00 00 00 00 03 00 00 00  |2...E.p.........|
; 01697c:  00 01 00 00 00 ff 00 01 00 00 2c 01 40 cd 00 00  |..........,.@...|
; 01698c:  01 00 00 00 00 00 00 00 74 0e 00 00 00 00 00 00  |........t.......|
; 01699c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0169ac:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0169bc:  58 ff 61 00 21 00 10 00 78 ff 70 00 00 00 00 00  |X.a.!...x.p.....|
; 0169cc:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 0169dc:  70 ce 00 00 01 00 00 00 00 00 00 00 00 0f 00 00  |p...............|
; 0169ec:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0169fc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 016a0c:  00 00 00 00 c1 00 74 00 7b 00 26 00 3b 01 99 00  |......t.{.&.;...|
; 016a1c:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 01 01  |................|
; 016a2c:  00 00 2c 01 a0 cf 00 00 00 00 00 00 00 00 00 00  |..,.............|
; 016a3c:  62 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 016a4c:  00 00 00 00 e0 2e                                |......|
