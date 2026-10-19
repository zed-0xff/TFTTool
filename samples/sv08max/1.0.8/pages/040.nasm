; page 40 'filament': 14 objects

; object address table, 14 objects, block loaded at 0xb950
.dd 0xb988, 0xb9c8, 0xba1c, 0xba70, 0xbac4, 0xbb18, 0xbb6c, 0xbbc0
.dd 0xbbe0, 0xbbf0, 0xbc44, 0xbc98, 0xbcb8, 0xbcd8

; object id 0 (page 'filament'): x=0, y=0, w=480, h=272, name hash=0x2fb87829
; flags=0x37, aph=127, events: event_3=0x2c2dc
; sta=2, pic=44
; 02c850:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2c2dc
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x2cf74
    ref 7
    ref 11
    ref 12
    if global_14 != 0 then jump lbl_2cfd3
    local_3927 = "进料"
    local_3950 = "退料"
    jmp lbl_2d1cf

lbl_2cfd3:
    if global_14 != 1 then jump lbl_2d01a
    local_3927 = "Extrude"
    local_3950 = "Retract"
    jmp lbl_2d1cf

lbl_2d01a:
    if global_14 != 2 then jump lbl_2d065
    local_3927 = "押し出す"
    local_3950 = "戻す"
    jmp lbl_2d1cf

lbl_2d065:
    if global_14 != 3 then jump lbl_2d0b6
    local_3927 = "Extrudieren"
    local_3950 = "Zurückziehen"
    jmp lbl_2d1cf

lbl_2d0b6:
    if global_14 != 4 then jump lbl_2d0fd
    local_3927 = "Extruir"
    local_3950 = "Retraer"
    jmp lbl_2d1cf

lbl_2d0fd:
    if global_14 != 5 then jump lbl_2d148
    local_3927 = "Extruder"
    local_3950 = "Rétracter"
    jmp lbl_2d1cf

lbl_2d148:
    if global_14 != 6 then jump lbl_2d190
    local_3927 = "Extrudir"
    local_3950 = "Retrair"
    jmp lbl_2d1cf

lbl_2d190:
    if global_14 != 7 then jump lbl_2d1cf
    local_3927 = "Estrudere"
    local_3950 = "Ritirare"

lbl_2d1cf:
    if global_14 != 0 then jump lbl_2d217
    local_398f = "XYZ轴"
    local_39b8 = "挤出机"
    jmp lbl_2d40d

lbl_2d217:
    if global_14 != 1 then jump lbl_2d260
    local_398f = "XYZ axis"
    local_39b8 = "Extruder"
    jmp lbl_2d40d

lbl_2d260:
    if global_14 != 2 then jump lbl_2d2a8
    local_398f = "XYZ軸"
    local_39b8 = "押出機"
    jmp lbl_2d40d

lbl_2d2a8:
    if global_14 != 3 then jump lbl_2d2f2
    local_398f = "XYZ-Achse"
    local_39b8 = "Extruder"
    jmp lbl_2d40d

lbl_2d2f2:
    if global_14 != 4 then jump lbl_2d33a
    local_398f = "Eje XYZ"
    local_39b8 = "Extrusor"
    jmp lbl_2d40d

lbl_2d33a:
    if global_14 != 5 then jump lbl_2d384
    local_398f = "Axe XYZ"
    local_39b8 = "Extrudeuse"
    jmp lbl_2d40d

lbl_2d384:
    if global_14 != 6 then jump lbl_2d3ce
    local_398f = "Asse XYZ"
    local_39b8 = "Extrusora"
    jmp lbl_2d40d

lbl_2d3ce:
    if global_14 != 7 then jump lbl_2d40d
    local_398f = "Asse XYZ"
    local_39b8 = "Estrusore"

lbl_2d40d:
    if global_14 != 0 then jump lbl_2d443
    local_39f6 = "长退料"
    jmp lbl_2d639

lbl_2d443:
    if global_14 != 1 then jump lbl_2d484
    local_39f6 = "Long Material Return"
    jmp lbl_2d639

lbl_2d484:
    if global_14 != 2 then jump lbl_2d4c0
    local_39f6 = "長材料返却"
    jmp lbl_2d639

lbl_2d4c0:
    if global_14 != 3 then jump lbl_2d506
    local_39f6 = "Langzeitmaterialrückgabe"
    jmp lbl_2d639

lbl_2d506:
    if global_14 != 4 then jump lbl_2d558
    local_39f6 = "Devolución de material a largo plazo"
    jmp lbl_2d639

lbl_2d558:
    if global_14 != 5 then jump lbl_2d5a6
    local_39f6 = "Retour de matériel à long terme"
    jmp lbl_2d639

lbl_2d5a6:
    if global_14 != 6 then jump lbl_2d5f9
    local_39f6 = "Devolução de material de longo prazo"
    jmp lbl_2d639

lbl_2d5f9:
    if global_14 != 7 then jump lbl_2d639
    local_39f6 = "Resa materiale a lungo termine"

lbl_2d639:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x2c322
; borderc=0x0000, picc=44, picc2=46, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 02c8a0:  ff ff                                            |..|

; touch_release
.org 0x2c322
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x2c38e
; borderc=0x0000, picc=44, picc2=46, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 02c8f4:  ff ff                                            |..|

; touch_release
.org 0x2c38e
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x2c3fa
; borderc=0x0000, picc=44, picc2=46, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 02c948:  ff ff                                            |..|

; touch_release
.org 0x2c3fa
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x2c466
; borderc=0x0000, picc=44, picc2=46, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 02c99c:  ff ff                                            |..|

; touch_release
.org 0x2c466
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b7'): x=294, y=73, w=122, h=42, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x2c4d2
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="进料"
; text:
;   0: "进料"
;   1: "Extrude"
;   2: "押し出す"
;   3: "Extrudieren"
;   4: "Extruir"
;   5: "Extruder"
;   6: "Extrudir"
;   7: "Estrudere"
; touch_release reports to the host: page <page>, widget 5
; 02c9f0:  ff ff                                            |..|

; touch_release
.org 0x2c4d2
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b8'): x=293, y=136, w=123, h=42, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x2c53c
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="退料"
; text:
;   0: "退料"
;   1: "Retract"
;   2: "戻す"
;   3: "Zurückziehen"
;   4: "Retraer"
;   5: "Rétracter"
;   6: "Retrair"
;   7: "Ritirare"
; touch_release reports to the host: page <page>, widget 6
; 02ca44:  ff ff                                            |..|

; touch_release
.org 0x2c53c
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer
    down
    up

; object id 7 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27
; tim=100, en=1

; object id 8 (variable 'material'): x=0, y=0, w=1, h=1, name hash=0x77367e94
; sta=0, val=0
; 02ca74:  34 08 00 07                                      |4...|

; object id 9 (button 'b0'): x=76, y=6, w=192, h=35, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2c5bb
; borderc=0x0000, picc=52, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="XYZ轴"
; text:
;   0: "XYZ轴"
;   1: "XYZ axis"
;   2: "XYZ軸"
;   3: "XYZ-Achse"
;   4: "Eje XYZ"
;   5: "Axe XYZ"
;   6: "Asse XYZ"
;   7: "Asse XYZ"
; touch_release reports to the host: page <page>, widget 120
; 02cac8:  ff ff                                            |..|

; touch_release
.org 0x2c5bb
    prints 0x65, 1
    prints dp, 1
    prints 120, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b1'): x=265, y=6, w=207, h=35, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x2c627
; borderc=0x0000, picc=52, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="挤出机"
; text:
;   0: "挤出机"
;   1: "Extruder"
;   2: "押出機"
;   3: "Extruder"
;   4: "Extrusor"
;   5: "Extrudeuse"
;   6: "Extrusora"
;   7: "Estrusore"
; touch_release reports to the host: page <page>, widget 121
; 02cb1c:  ff ff                                            |..|

; touch_release
.org 0x2c627
    prints 0x65, 1
    prints dp, 1
    prints 121, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 11 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2c68a
; tim=1000, en=1

; timer
.org 0x2c68a
    if global_1c <= 0 then jump lbl_2c6e6
    if global_20 <= 0 then jump lbl_2c6e6
    global_20--
    if global_20 != 0 then jump lbl_2c6e6
    dim = global_30

lbl_2c6e6:
    down
    up

; object id 12 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2c700

; touch_release
.org 0x2c700
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 13 (button): x=293, y=198, w=123, h=42, name hash=0x2a9cd661
; flags=0x37, aph=127, events: touch_release=0x2c738
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="长退料"
; text:
;   0: "长退料"
;   1: "Long Material Return"
;   2: "長材料返却"
;   3: "Langzeitmaterialrückgabe"
;   4: "Devolución de material a largo plazo"
;   5: "Retour de matériel à long terme"
;   6: "Devolução de material de longo prazo"
;   7: "Resa materiale a lungo termine"
; touch_release reports to the host: page <page>, widget 7
; 02cbb0:  ff ff                                            |..|

; touch_release
.org 0x2c738
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 940 bytes (4 trailing zero bytes dropped)
; 02cbc0:  00 00 00 00 00 00 28 00 29 00 ff ff ff ff 01 01  |......(.).......|
; 02cbd0:  00 00 64 00 04 c4 00 00 01 00 00 00 62 0f 00 00  |..d.........b...|
; 02cbe0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cbf0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02cc00:  00 00 00 00 9e 00 57 00 32 00 38 00 cf 00 8e 00  |......W.2.8.....|
; 02cc10:  00 00 00 00 00 00 00 00 00 00 28 00 29 00 ff ff  |..........(.)...|
; 02cc20:  ff ff 01 01 00 00 64 00 6c c4 00 00 00 00 00 00  |......d.l.......|
; 02cc30:  62 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02cc40:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cc50:  00 00 7f 00 00 00 00 00 60 00 97 00 3c 00 30 00  |........`...<.0.|
; 02cc60:  9b 00 c6 00 00 00 00 00 00 00 00 00 00 00 28 00  |..............(.|
; 02cc70:  29 00 ff ff ff ff 01 01 00 00 64 00 d4 c4 00 00  |).........d.....|
; 02cc80:  01 00 00 00 62 11 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02cc90:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cca0:  00 00 00 00 00 00 7f 00 00 00 00 00 d5 00 97 00  |................|
; 02ccb0:  3c 00 30 00 10 01 c6 00 00 00 00 00 00 00 00 00  |<.0.............|
; 02ccc0:  00 00 28 00 29 00 ff ff ff ff 01 01 00 00 64 00  |..(.).........d.|
; 02ccd0:  3c c5 00 00 01 00 00 00 62 12 00 00 00 00 00 00  |<.......b.......|
; 02cce0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ccf0:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02cd00:  34 01 6d 00 29 00 2e 00 5c 01 9a 00 00 00 00 00  |4.m.)...\.......|
; 02cd10:  00 00 00 00 00 00 28 00 29 00 ff ff ff ff 01 01  |......(.).......|
; 02cd20:  00 00 64 00 a4 c5 00 00 01 00 00 00 62 13 00 00  |..d.........b...|
; 02cd30:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cd40:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02cd50:  00 00 00 00 34 01 c4 00 29 00 2e 00 5c 01 f1 00  |....4...)...\...|
; 02cd60:  00 00 00 00 e8 bf 9b e6 96 99 00 00 29 00 ff ff  |............)...|
; 02cd70:  ff ff 01 01 00 00 64 00 0c c6 00 00 01 00 00 00  |......d.........|
; 02cd80:  62 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02cd90:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cda0:  00 00 7f 00 00 00 00 00 34 01 98 00 29 00 2e 00  |........4...)...|
; 02cdb0:  5c 01 c5 00 00 00 00 00 00 00 00 00 00 00 28 00  |\.............(.|
; 02cdc0:  29 00 ff ff ff ff 01 01 00 00 64 00 e9 80 80 e6  |).........d.....|
; 02cdd0:  96 99 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02cde0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cdf0:  00 00 00 00 00 00 7f 00 00 00 00 00 9b 00 91 00  |................|
; 02ce00:  3b 00 3d 00 d5 00 cd 00 00 00 00 00 00 00 00 00  |;.=.............|
; 02ce10:  00 00 28 00 29 00 ff ff ff ff 01 01 00 00 64 00  |..(.).........d.|
; 02ce20:  dc c6 00 00 01 00 00 00 62 16 00 00 00 00 00 00  |........b.......|
; 02ce30:  00 00 00 00 58 59 5a e8 bd b4 00 00 00 00 00 00  |....XYZ.........|
; 02ce40:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02ce50:  12 01 06 00 c3 00 23 00 d4 01 28 00 00 00 00 00  |......#...(.....|
; 02ce60:  00 00 00 00 00 00 30 00 31 00 ff ff ff ff 01 01  |......0.1.......|
; 02ce70:  00 00 64 00 44 c7 00 00 01 00 00 00 33 17 00 00  |..d.D.......3...|
; 02ce80:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ce90:  00 00 00 00 00 00 00 00 64 00 01 00 e6 8c a4 e5  |........d.......|
; 02cea0:  87 ba e6 9c ba 00 00 00 01 00 00 00 33 1a 00 00  |............3...|
; 02ceb0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cec0:  00 00 00 00 00 00 00 00 e8 03 01 00 05 1b 00 00  |................|
; 02ced0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cee0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cef0:  00 00 00 00 00 00 50 00 51 00 ff ff ff ff 01 01  |......P.Q.......|
; 02cf00:  00 00 64 00 e9 95 bf e9 80 80 e6 96 99 00 00 00  |..d.............|
; 02cf10:  00 ff 00 01 00 00 2c 01 60 d6 00 00 01 00 00 00  |......,.`.......|
; 02cf20:  00 00 00 00 74 17 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 02cf30:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02cf40:  00 00 00 00 00 00 7f 00 e9 80 9f e5 ba a6 2b 00  |..............+.|
; 02cf50:  7b 00 26 00 bb 00 09 01 00 00 00 00 03 00 00 00  |{.&.............|
; 02cf60:  00 01 00 00 ff ff 01 01 00 00 2c 01              |..........,.|
