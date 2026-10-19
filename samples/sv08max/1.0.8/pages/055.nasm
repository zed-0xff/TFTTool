; page 55 'wifi_list': 33 objects

; object address table, 33 objects, block loaded at 0xb950
.dd 0xb9d4, 0x29b8, 0x2a0c, 0x2a60, 0xba14, 0xba68, 0xbabc, 0xbb10
.dd 0xbb64, 0xbbb8, 0xbc0c, 0xbc60, 0x2ab4, 0x2b08, 0x2b5c, 0x2b98
.dd 0x2bd4, 0x2c10, 0x2c4c, 0x2c88, 0x2cc4, 0x2d00, 0x2d3c, 0x2d90
.dd 0x2de4, 0x2e38, 0x2e8c, 0x2ee0, 0x2f34, 0x2f88, 0xbcb4, 0xbcd4
.dd 0x2fdc

; object id 0 (page 'wifi_list'): x=0, y=0, w=480, h=272, name hash=0x97266466
; flags=0x37, aph=127, events: event_3=0x39701
; sta=2, pic=52
; 03a122:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x39701
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x3a822
    ref 30
    ref 31
    if global_14 != 0 then jump lbl_3a891
    local_4e12 = "系统"
    local_4e3b = "网络"
    local_4e64 = "调平校准"
    jmp lbl_3ab6b

lbl_3a891:
    if global_14 != 1 then jump lbl_3a8f2
    local_4e12 = "System"
    local_4e3b = "Network"
    local_4e64 = "Level Calibrate"
    jmp lbl_3ab6b

lbl_3a8f2:
    if global_14 != 2 then jump lbl_3a961
    local_4e12 = "システム"
    local_4e3b = "通信網"
    local_4e64 = "水平調整と校正"
    jmp lbl_3ab6b

lbl_3a961:
    if global_14 != 3 then jump lbl_3a9ce
    local_4e12 = "System"
    local_4e3b = "Netzwerk"
    local_4e64 = "Nivellierung\rKalibrierung"
    jmp lbl_3ab6b

lbl_3a9ce:
    if global_14 != 4 then jump lbl_3aa38
    local_4e12 = "Sistema"
    local_4e3b = "Red"
    local_4e64 = "Nivelación y\rcalibración"
    jmp lbl_3ab6b

lbl_3aa38:
    if global_14 != 5 then jump lbl_3aaa4
    local_4e12 = "Système"
    local_4e3b = "Réseau"
    local_4e64 = "Nivellement\rétalonnage"
    jmp lbl_3ab6b

lbl_3aaa4:
    if global_14 != 6 then jump lbl_3ab0d
    local_4e12 = "Sistema"
    local_4e3b = "Rede"
    local_4e64 = "Nivelamento\rCalibração"
    T 0x5e

lbl_3ab0d:
    if global_14 != 7 then jump lbl_3ab6b
    local_4e12 = "Sistema"
    local_4e3b = "Rete"
    local_4e64 = "Calibrazione\rdel livello"

lbl_3ab6b:
    if global_14 != 0 then jump lbl_3aba7
    local_4d45 = "无线局域网"
    jmp lbl_3ad39

lbl_3aba7:
    if global_14 != 1 then jump lbl_3abe0
    local_4d45 = "Wireless LAN"
    jmp lbl_3ad39

lbl_3abe0:
    if global_14 != 2 then jump lbl_3ac1f
    local_4d45 = "ワイヤレスLAN"
    jmp lbl_3ad39

lbl_3ac1f:
    if global_14 != 3 then jump lbl_3ac5a
    local_4d45 = "Drahtloses LAN"
    jmp lbl_3ad39

lbl_3ac5a:
    if global_14 != 4 then jump lbl_3ac97
    local_4d45 = "LAN inalámbrico"
    jmp lbl_3ad39

lbl_3ac97:
    if global_14 != 5 then jump lbl_3acd0
    local_4d45 = "LAN Sans Fil"
    jmp lbl_3ad39

lbl_3acd0:
    if global_14 != 6 then jump lbl_3ad09
    local_4d45 = "Rede Sem Fio"
    jmp lbl_3ad39

lbl_3ad09:
    if global_14 != 7 then jump lbl_3ad39
    local_4d45 = "LAN Senza Fili"

lbl_3ad39:
    doevents
    down
    up

; object id 257 (button 'b0'): x=241, y=59, w=47, h=29, name hash=0xce1a7436
; borderc=0x0000, picc=53, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0x39747
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up
    down
    up

; object id 258 (text 't1'): x=316, y=51, w=155, h=28, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="IP:0.0.0.0"

; object id 259 (text 't2'): x=316, y=81, w=155, h=31, name hash=0x2cf7a429
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="MAC:0:0:0:0:0"

; object id 4 (text 't3'): x=81, y=56, w=100, h=30, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="无线局域网"
; text:
;   0: "无线局域网"
;   1: "Wireless LAN"
;   2: "ワイヤレスLAN"
;   3: "Drahtloses LAN"
;   4: "LAN inalámbrico"
;   5: "LAN Sans Fil"
;   6: "Rede Sem Fio"
;   7: "LAN Senza Fili"

; object id 5 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x397ff
; borderc=0x0000, picc=52, picc2=52, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 03a1c6:  ff ff                                            |..|

; touch_release
.org 0x397ff
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x3986b
; borderc=0x0000, picc=52, picc2=52, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 03a21a:  ff ff                                            |..|

; touch_release
.org 0x3986b
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x398d7
; borderc=0x0000, picc=52, picc2=52, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 03a26e:  ff ff                                            |..|

; touch_release
.org 0x398d7
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x39943
; borderc=0x0000, picc=52, picc2=52, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 03a2c2:  ff ff                                            |..|

; touch_release
.org 0x39943
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b9'): x=68, y=7, w=201, h=34, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x399af
; borderc=0x0000, picc=52, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="系统"
; text:
;   0: "系统"
;   1: "System"
;   2: "システム"
;   3: "System"
;   4: "Sistema"
;   5: "Système"
;   6: "Sistema"
;   7: "Sistema"
; touch_release reports to the host: page <page>, widget 130
; 03a316:  ff ff                                            |..|

; touch_release
.org 0x399af
    prints 0x65, 1
    prints dp, 1
    prints 130, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b10'): x=268, y=6, w=200, h=34, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x39a1b
; borderc=0x0000, picc=52, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="网络"
; text:
;   0: "网络"
;   1: "Network"
;   2: "通信網"
;   3: "Netzwerk"
;   4: "Red"
;   5: "Réseau"
;   6: "Rede"
;   7: "Rete"
; touch_release reports to the host: page <page>, widget 131
; 03a36a:  ff ff                                            |..|

; touch_release
.org 0x39a1b
    prints 0x65, 1
    prints dp, 1
    prints 131, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 11 (button 'b11'): x=465, y=0, w=15, h=6, name hash=0x1e12f319
; flags=0x37, aph=0, events: touch_release=0x39a87
; borderc=0x0000, picc=52, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="调平校准"
; text:
;   0: "调平校准"
;   1: "Level Calibrate"
;   2: "水平調整と校正"
;   3: "Nivellierung\rKalibrierung"
;   4: "Nivelación y\rcalibración"
;   5: "Nivellement\rétalonnage"
;   6: "Nivelamento\rCalibração"
;   7: "Calibrazione\rdel livello"
; touch_release reports to the host: page <page>, widget 132
; 03a3be:  ff ff                                            |..|

; touch_release
.org 0x39a87
    prints 0x65, 1
    prints dp, 1
    prints 132, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 268 (button 'b3'): x=306, y=170, w=46, h=47, name hash=0x54ab59be
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0x39af3
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 269 (button 'b4'): x=306, y=219, w=46, h=47, name hash=0x13670461
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x39b5d
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
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
    down
    up

; object id 270 (crop 'q0'): x=239, y=132, w=23, h=24, name hash=0x32aa1f99

; object id 271 (crop 'q1'): x=239, y=168, w=23, h=24, name hash=0x44c504e1

; object id 272 (crop 'q2'): x=239, y=202, w=23, h=24, name hash=0xde742969

; object id 273 (crop 'q3'): x=239, y=235, w=23, h=24, name hash=0xa81b3211

; object id 274 (crop 'q4'): x=266, y=133, w=30, h=24, name hash=0xefd76fce

; object id 275 (crop 'q5'): x=266, y=168, w=30, h=24, name hash=0x99b874b6

; object id 276 (crop 'q6'): x=266, y=202, w=30, h=24, name hash=0x309593e

; object id 277 (crop 'q7'): x=266, y=238, w=30, h=24, name hash=0x75664246

; object id 278 (text 'wifi_0'): x=74, y=130, w=128, h=30, name hash=0x259889c
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0x39c97
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 279 (text 'wifi_2'): x=74, y=200, w=128, h=30, name hash=0x5019fb17
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 5

; touch_release
.org 0x39d01
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 280 (text 'wifi_3'): x=74, y=235, w=128, h=30, name hash=0xfb594c09
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0x39d6b
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 281 (text 'wifi_1'): x=74, y=165, w=128, h=30, name hash=0xa9193f82
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 4

; touch_release
.org 0x39dd5
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up
    down
    up
    timer

; object id 282 (text 't5'): x=202, y=131, w=37, h=30, name hash=0x6b3bf9f6
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object id 283 (text 't6'): x=202, y=166, w=37, h=30, name hash=0xf18ad47e
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object id 284 (text 't7'): x=202, y=201, w=37, h=30, name hash=0x87e5cf06
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object id 285 (text 't8'): x=202, y=236, w=37, h=30, name hash=0x7e126fc0
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object id 30 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x39e9e
; tim=1000, en=1

; timer
.org 0x39e9e
    if global_1c <= 0 then jump lbl_39efa
    if global_20 <= 0 then jump lbl_39efa
    global_20--
    if global_20 != 0 then jump lbl_39efa
    dim = global_30

lbl_39efa:
    down
    up

; object id 31 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x39f14

; touch_release
.org 0x39f14
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 288 (button 'refresh'): x=306, y=120, w=46, h=47, name hash=0xcb788826
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0x39f4c
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 1010 bytes (30 trailing zero bytes dropped)
; 03a40e:  00 00 00 00 e6 97 a0 e7 ba bf e5 b1 80 e5 9f 9f  |................|
; 03a41e:  e7 bd 91 00 b3 00 5c 00 00 00 00 00 03 00 00 00  |......\.........|
; 03a42e:  00 00 00 00 ff ff 00 01 00 00 2c 01 b8 c3 00 00  |..........,.....|
; 03a43e:  01 00 00 00 00 00 00 00 74 0b 00 00 00 00 00 00  |........t.......|
; 03a44e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a45e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03a46e:  58 00 b5 00 38 01 24 00 8f 01 d8 00 00 00 00 00  |X...8.$.........|
; 03a47e:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 03a48e:  e8 c4 00 00 01 00 00 00 00 00 00 00 74 0c 00 00  |............t...|
; 03a49e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a4ae:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03a4be:  00 00 00 00 5a 01 34 00 5c 00 24 00 b5 01 57 00  |....Z.4.\.$...W.|
; 03a4ce:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 03a4de:  00 00 2c 01 18 c6 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 03a4ee:  62 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03a4fe:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a50e:  00 00 7f 00 00 00 00 00 53 00 e0 00 78 01 2c 00  |........S...x.,.|
; 03a51e:  ca 01 0b 01 00 00 00 00 00 00 00 00 00 00 31 00  |..............1.|
; 03a52e:  31 00 ff ff ff ff 01 01 00 00 64 00 48 c7 00 00  |1.........d.H...|
; 03a53e:  01 00 00 00 00 b1 8f e5 b9 95 e7 89 88 e6 9c ac  |................|
; 03a54e:  ef bc 9a 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a55e:  00 00 00 00 00 00 7f 00 00 00 00 00 58 00 df 00  |............X...|
; 03a56e:  5e 00 24 00 b5 00 02 01 00 00 00 00 e7 b3 bb e7  |^.$.............|
; 03a57e:  bb 9f 00 00 ff ff 00 01 00 00 2c 01 b0 c7 00 00  |..........,.....|
; 03a58e:  01 00 00 00 00 00 00 00 33 0f 00 00 00 00 00 00  |........3.......|
; 03a59e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a5ae:  00 00 00 00 e8 03 01 00 05 10 00 00 00 00 00 00  |................|
; 03a5be:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a5ce:  00 00 00 00 00 00 00 00 62 11 00 00 00 00 00 00  |........b.......|
; 03a5de:  00 00 00 00 e7 bd 91 e7 bb 9c 00 00 00 00 00 00  |................|
; 03a5ee:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03a5fe:  52 00 5b 00 77 01 2c 00 c8 01 86 00 00 00 00 00  |R.[.w.,.........|
; 03a60e:  00 00 00 00 00 00 31 00 31 00 ff ff ff ff 01 01  |......1.1.......|
; 03a61e:  00 00 64 00 e0 c8 00 00 01 00 00 00 74 12 00 00  |..d.........t...|
; 03a62e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a63e:  00 00 00 00 00 00 00 00 00 00 00 00 e8 b0 83 e5  |................|
; 03a64e:  b9 b3 e6 a0 a1 e5 87 86 00 00 24 00 d5 00 82 00  |..........$.....|
; 03a65e:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 03a66e:  00 00 2c 01 2d 2d 2d 2d 2d 2d 00 00 00 00 00 00  |..,.------......|
; 03a67e:  62 13 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03a68e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a69e:  00 00 7f 00 00 00 00 00 51 00 86 00 77 01 2c 00  |........Q...w.,.|
; 03a6ae:  c7 01 b1 00 e8 bf 94 e5 9b 9e 00 00 00 00 31 00  |..............1.|
; 03a6be:  31 00 ff ff ff ff 01 01 00 00 64 00 78 ca 00 00  |1.........d.x...|
; 03a6ce:  01 00 00 00 74 14 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 03a6de:  00 00 00 00 e7 b3 bb e7 bb 9f 00 00 00 00 00 00  |................|
; 03a6ee:  00 00 00 00 00 00 7f 00 00 00 00 00 58 00 8a 00  |............X...|
; 03a6fe:  7e 00 24 00 d5 00 ad 00 00 00 00 00 03 00 00 00  |~.$.............|
; 03a70e:  00 00 00 00 ff ff 00 01 00 00 2c 01 00 00 00 00  |..........,.....|
; 03a71e:  01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a72e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a73e:  00 00 00 00 00 00 7f 00 00 00 00 00 e7 bd 91 e7  |................|
; 03a74e:  bb 9c 00 00 c6 00 1f 00 00 00 00 00 03 00 00 00  |................|
; 03a75e:  00 00 00 00 ff ff 02 01 00 00 64 00 30 c2 00 00  |..........d.0...|
; 03a76e:  01 00 00 00 00 00 00 00 33 18 00 00 00 00 00 00  |........3.......|
; 03a77e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03a78e:  00 00 00 00 00 03 01 00 05 19 00 00 00 00 00 00  |................|
; 03a79e:  00 00 00 00 31 2e 30 2e 38 00 00 00 00 00 00 00  |....1.0.8.......|
; 03a7ae:  4c 45 44 00 e8 b0 83 e5 b9 b3 e6 a0 a1 e5 87 86  |LED.............|
; 03a7be:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03a7ce:  e9 80 9f e5 00 a6 2b 00 7b 00 26 00 bb 00 09 01  |......+.{.&.....|
; 03a7de:  00 00 00 00 03 00 00 00 00 01 00 00 00 ff 01 01  |................|
; 03a7ee:  00 00 2c 01 00 00 00 00 00 00 00 00 00 00 00 00  |..,.............|
; 03a7fe:  00 18                                            |..|
