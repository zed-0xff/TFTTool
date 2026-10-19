; page 55 'wifi_list': 33 objects

; object address table, 33 objects, block loaded at 0xa3a4
.dd 0xa428, 0x290c, 0x2960, 0x29b4, 0xa468, 0xa4bc, 0xa510, 0xa564
.dd 0xa5b8, 0xa60c, 0xa660, 0xa6b4, 0x2a08, 0x2a5c, 0x2ab0, 0x2aec
.dd 0x2b28, 0x2b64, 0x2ba0, 0x2bdc, 0x2c18, 0x2c54, 0x2c90, 0x2ce4
.dd 0x2d38, 0x2d8c, 0x2de0, 0x2e34, 0x2e88, 0x2edc, 0xa708, 0xa728
.dd 0x2f30

; object id 0 (page 'wifi_list'): x=0, y=0, w=480, h=272, name hash=0x97266466
; flags=0x37, aph=127, events: event_3=0x38b8a
; sta=2, pic=52
; 0395ab:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x38b8a
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x39cab
    ref 30
    ref 31
    if global_14 != 0 then jump lbl_39d1a
    local_4e9c = "系统"
    local_4ec5 = "网络"
    local_4eee = "调平校准"
    jmp lbl_39ff4

lbl_39d1a:
    if global_14 != 1 then jump lbl_39d7b
    local_4e9c = "System"
    local_4ec5 = "Network"
    local_4eee = "Level Calibrate"
    jmp lbl_39ff4

lbl_39d7b:
    if global_14 != 2 then jump lbl_39dea
    local_4e9c = "システム"
    local_4ec5 = "通信網"
    local_4eee = "水平調整と校正"
    jmp lbl_39ff4

lbl_39dea:
    if global_14 != 3 then jump lbl_39e57
    local_4e9c = "System"
    local_4ec5 = "Netzwerk"
    local_4eee = "Nivellierung\rKalibrierung"
    jmp lbl_39ff4

lbl_39e57:
    if global_14 != 4 then jump lbl_39ec1
    local_4e9c = "Sistema"
    local_4ec5 = "Red"
    local_4eee = "Nivelación y\rcalibración"
    jmp lbl_39ff4

lbl_39ec1:
    if global_14 != 5 then jump lbl_39f2d
    local_4e9c = "Système"
    local_4ec5 = "Réseau"
    local_4eee = "Nivellement\rétalonnage"
    jmp lbl_39ff4

lbl_39f2d:
    if global_14 != 6 then jump lbl_39f96
    local_4e9c = "Sistema"
    local_4ec5 = "Rede"
    local_4eee = "Nivelamento\rCalibração"
    T 0x5e

lbl_39f96:
    if global_14 != 7 then jump lbl_39ff4
    local_4e9c = "Sistema"
    local_4ec5 = "Rete"
    local_4eee = "Calibrazione\rdel livello"

lbl_39ff4:
    if global_14 != 0 then jump lbl_3a030
    local_4dcf = "无线局域网"
    jmp lbl_3a1c2

lbl_3a030:
    if global_14 != 1 then jump lbl_3a069
    local_4dcf = "Wireless LAN"
    jmp lbl_3a1c2

lbl_3a069:
    if global_14 != 2 then jump lbl_3a0a8
    local_4dcf = "ワイヤレスLAN"
    jmp lbl_3a1c2

lbl_3a0a8:
    if global_14 != 3 then jump lbl_3a0e3
    local_4dcf = "Drahtloses LAN"
    jmp lbl_3a1c2

lbl_3a0e3:
    if global_14 != 4 then jump lbl_3a120
    local_4dcf = "LAN inalámbrico"
    jmp lbl_3a1c2

lbl_3a120:
    if global_14 != 5 then jump lbl_3a159
    local_4dcf = "LAN Sans Fil"
    jmp lbl_3a1c2

lbl_3a159:
    if global_14 != 6 then jump lbl_3a192
    local_4dcf = "Rede Sem Fio"
    jmp lbl_3a1c2

lbl_3a192:
    if global_14 != 7 then jump lbl_3a1c2
    local_4dcf = "LAN Senza Fili"

lbl_3a1c2:
    doevents
    down
    up

; object id 257 (button 'b0'): x=241, y=59, w=47, h=29, name hash=0xce1a7436
; borderc=0x0000, picc=53, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0x38bd0
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
; flags=0x37, aph=127, events: touch_release=0x38c88
; borderc=0x0000, picc=52, picc2=52, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 03964f:  ff ff                                            |..|

; touch_release
.org 0x38c88
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x38cf4
; borderc=0x0000, picc=52, picc2=52, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 0396a3:  ff ff                                            |..|

; touch_release
.org 0x38cf4
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x38d60
; borderc=0x0000, picc=52, picc2=52, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 0396f7:  ff ff                                            |..|

; touch_release
.org 0x38d60
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x38dcc
; borderc=0x0000, picc=52, picc2=52, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 03974b:  ff ff                                            |..|

; touch_release
.org 0x38dcc
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b9'): x=68, y=7, w=134, h=34, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x38e38
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
; 03979f:  ff ff                                            |..|

; touch_release
.org 0x38e38
    prints 0x65, 1
    prints dp, 1
    prints 130, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b10'): x=201, y=6, w=137, h=34, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x38ea4
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
; 0397f3:  ff ff                                            |..|

; touch_release
.org 0x38ea4
    prints 0x65, 1
    prints dp, 1
    prints 131, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 11 (button 'b11'): x=339, y=7, w=134, h=34, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x38f10
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
; 039847:  ff ff                                            |..|

; touch_release
.org 0x38f10
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
.org 0x38f7c
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
.org 0x38fe6
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
.org 0x39120
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
.org 0x3918a
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
.org 0x391f4
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
.org 0x3925e
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
; flags=0x27, events: timer=0x39327
; tim=1000, en=1

; timer
.org 0x39327
    if global_1c <= 0 then jump lbl_39383
    if global_20 <= 0 then jump lbl_39383
    global_20--
    if global_20 != 0 then jump lbl_39383
    dim = global_30

lbl_39383:
    down
    up

; object id 31 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3939d

; touch_release
.org 0x3939d
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 288 (button 'b1'): x=306, y=120, w=46, h=47, name hash=0xb8756f4e
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0x393d5
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 1014 bytes (26 trailing zero bytes dropped)
; 039897:  00 00 00 00 e6 97 a0 e7 ba bf e5 b1 80 e5 9f 9f  |................|
; 0398a7:  e7 bd 91 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0398b7:  00 00 00 00 00 00 7f 00 00 00 00 00 b7 00 38 00  |..............8.|
; 0398c7:  31 00 1d 00 00 00 54 00 00 00 00 00 00 00 00 00  |1.....T.........|
; 0398d7:  00 00 31 00 31 00 ff ff ff ff 01 01 00 00 64 00  |..1.1.........d.|
; 0398e7:  cc b0 00 00 01 00 00 00 62 0b 00 00 00 00 00 00  |........b.......|
; 0398f7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 039907:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 039917:  f0 00 38 00 31 00 1d 00 20 01 54 00 00 00 00 00  |..8.1... .T.....|
; 039927:  00 00 00 00 00 00 30 00 31 00 ff ff 00 ff 01 01  |......0.1.......|
; 039937:  00 00 64 00 34 b1 00 00 01 00 00 00 74 0c 00 00  |..d.4.......t...|
; 039947:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 039957:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 039967:  00 00 00 00 58 00 2f 00 5c 00 2c 00 b3 00 5a 00  |....X./.\.,...Z.|
; 039977:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 039987:  00 00 2c 01 9c b1 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 039997:  62 0d 00 00 56 31 2e 30 2e 37 00 00 00 00 00 00  |b...V1.0.7......|
; 0399a7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0399b7:  00 00 7f 00 00 00 00 00 27 01 38 00 31 00 1d 00  |........'.8.1...|
; 0399c7:  57 01 54 00 00 00 00 00 00 00 00 00 00 00 30 00  |W.T...........0.|
; 0399d7:  31 00 ff ff ff ff 01 01 00 00 64 00 cc b2 00 00  |1.........d.....|
; 0399e7:  01 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0399f7:  00 00 00 00 00 00 00 00 00 00 00 00 e7 b3 bb e7  |................|
; 039a07:  bb 9f 00 00 00 00 7f 00 00 00 00 00 60 01 38 00  |............`.8.|
; 039a17:  31 00 1d 00 90 01 54 00 00 00 00 00 00 00 00 00  |1.....T.........|
; 039a27:  00 00 30 00 31 00 ff ff ff ff 01 01 00 00 64 00  |..0.1.........d.|
; 039a37:  34 b3 00 00 01 00 00 00 62 0f 00 00 00 00 00 00  |4.......b.......|
; 039a47:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 039a57:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 039a67:  97 01 38 00 e7 bd 91 e7 bb 9c 00 00 00 00 00 00  |..8.............|
; 039a77:  00 00 00 00 00 00 30 00 31 00 ff ff ff ff 01 01  |......0.1.......|
; 039a87:  00 00 64 00 9c b3 00 00 01 00 00 00 62 10 00 00  |..d.........b...|
; 039a97:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 039aa7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 039ab7:  00 00 00 00 b7 00 64 00 31 00 1d 00 e7 00 80 00  |......d.1.......|
; 039ac7:  00 00 00 00 56 31 2e 35 2e 32 00 00 e8 b0 83 e5  |....V1.5.2......|
; 039ad7:  b9 b3 e6 a0 a1 e5 87 86 00 b4 00 00 01 00 00 00  |................|
; 039ae7:  62 11 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 039af7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 039b07:  00 00 7f 00 00 00 00 00 f0 00 64 00 31 00 1d 00  |..........d.1...|
; 039b17:  20 01 80 00 00 00 00 00 00 00 00 00 00 00 30 00  | .............0.|
; 039b27:  31 00 ff ff ff ff 01 01 00 00 64 00 6c b4 00 00  |1.........d.l...|
; 039b37:  01 00 00 00 e8 bf 94 e5 9b 9e 00 00 00 00 00 00  |................|
; 039b47:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 039b57:  00 00 00 00 00 00 7f 00 00 00 00 00 27 01 64 00  |............'.d.|
; 039b67:  31 00 1d 00 e7 b3 bb e7 bb 9f 00 00 00 00 00 00  |1...............|
; 039b77:  00 00 30 00 31 00 ff ff ff ff 01 01 00 00 64 00  |..0.1.........d.|
; 039b87:  d4 b4 00 00 01 00 00 00 62 13 00 00 00 00 00 00  |........b.......|
; 039b97:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 039ba7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 039bb7:  60 01 64 00 31 00 1d 00 90 01 80 00 00 00 00 00  |`.d.1...........|
; 039bc7:  00 00 00 00 00 00 30 00 31 00 ff ff e7 bd 91 e7  |......0.1.......|
; 039bd7:  bb 9c 00 00 3c b5 00 00 01 00 00 00 62 14 00 00  |....<.......b...|
; 039be7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 039bf7:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 7f 00  |................|
; 039c07:  00 00 00 00 97 01 64 00 31 00 1d 00 c7 01 80 00  |......d.1.......|
; 039c17:  00 00 00 00 00 00 00 00 00 00 30 00 31 00 ff ff  |..........0.1...|
; 039c27:  ff ff 01 01 00 00 64 00 a4 b5 00 00 01 00 00 00  |......d.........|
; 039c37:  74 15 00 00 e8 b0 83 e5 b9 b3 e6 a0 a1 e5 87 86  |t...............|
; 039c47:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 039c57:  00 00 7f 00 00 00 00 00 58 00 5b 00 00 00 00 00  |........X.[.....|
; 039c67:  b3 00 86 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 039c77:  ff ff 00 01 00 00 2c 01 0c b6 00 00 01 00 00 00  |......,.........|
; 039c87:  00 00 00 00 74 16                                |....t.|
