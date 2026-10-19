; page 40 'filament': 21 objects

; object address table, 21 objects, block loaded at 0xa3a4
.dd 0xa3f8, 0xa438, 0xa48c, 0xa4e0, 0xa534, 0xa588, 0xa5dc, 0x2240
.dd 0x2294, 0x22e8, 0x233c, 0xa630, 0xa684, 0xa6d8, 0xa6f8, 0x2390
.dd 0xa708, 0xa75c, 0xa7b0, 0xa804, 0xa824

; object id 0 (page 'filament'): x=0, y=0, w=480, h=272, name hash=0x2fb87829
; flags=0x37, aph=127, events: event_3=0x2a736
; sta=2, pic=44
; 02af6c:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2a736
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x2b998
    ref 13
    ref 19
    ref 20
    if global_14 != 0 then jump lbl_2ba46
    local_37ec = "喷嘴温度"
    local_3813 = "热床温度"
    local_388a = "PLA预热"
    local_38b3 = "ABS预热"
    local_3944 = "一键冷却"
    jmp lbl_2bed7

lbl_2ba46:
    if global_14 != 1 then jump lbl_2bae8
    local_37ec = "Nozzle temperature"
    local_3813 = "Heater bed temperature"
    local_388a = "PLA Warm-Up"
    local_38b3 = "ABS Warm-Up"
    local_3944 = "Cooling"
    jmp lbl_2bed7

lbl_2bae8:
    if global_14 != 2 then jump lbl_2bb93
    local_37ec = "ノズル温度"
    local_3813 = "加熱ベッド温度"
    local_388a = "PLAプレヒート"
    local_38b3 = "ABSプレヒート"
    local_3944 = "冷却"
    jmp lbl_2bed7

lbl_2bb93:
    if global_14 != 3 then jump lbl_2bc39
    local_37ec = "Düsentemperatur"
    local_3813 = "Heizbetttemperatur"
    local_388a = "PLA\rAufwärmen"
    local_38b3 = "ABS\rAufwärmen"
    local_3944 = "Abkühlen"
    jmp lbl_2bed7

lbl_2bc39:
    if global_14 != 4 then jump lbl_2bce8
    local_37ec = "Boquilla Temperatura"
    local_3813 = "Semillero Temperatura"
    local_388a = "PLA\rPrecalentar"
    local_38b3 = "ABS\rPrecalentar"
    local_3944 = "Enfriarse"
    jmp lbl_2bed7

lbl_2bce8:
    if global_14 != 5 then jump lbl_2bd97
    local_37ec = "Buse Température"
    local_3813 = "Lit Chaud Température"
    local_388a = "PLA\rPréchauffer"
    local_38b3 = "ABS\rPréchauffer"
    local_3944 = "Refroidir"
    jmp lbl_2bed7

lbl_2bd97:
    if global_14 != 6 then jump lbl_2be41
    local_37ec = "Bocal Temperature"
    local_3813 = "Viveiro Temperature"
    local_388a = "PLA\rPré-aquecer"
    local_38b3 = "ABS\rPré-aquecer"
    local_3944 = "Esfriar"
    jmp lbl_2bed7

lbl_2be41:
    if global_14 != 7 then jump lbl_2bed7
    local_37ec = "Ugello Temperatura"
    local_3813 = "Letto Caldo Temperatura"
    local_388a = "Riscal PLA"
    local_38b3 = "Riscal ABS"
    local_3944 = "Raffred"

lbl_2bed7:
    if global_14 != 0 then jump lbl_2bf1c
    local_38dc = "挤出"
    local_3905 = "回退"
    jmp lbl_2c118

lbl_2bf1c:
    if global_14 != 1 then jump lbl_2bf63
    local_38dc = "Extrude"
    local_3905 = "Retract"
    jmp lbl_2c118

lbl_2bf63:
    if global_14 != 2 then jump lbl_2bfae
    local_38dc = "押し出す"
    local_3905 = "戻す"
    jmp lbl_2c118

lbl_2bfae:
    if global_14 != 3 then jump lbl_2bfff
    local_38dc = "Extrudieren"
    local_3905 = "Zurückziehen"
    jmp lbl_2c118

lbl_2bfff:
    if global_14 != 4 then jump lbl_2c046
    local_38dc = "Extruir"
    local_3905 = "Retraer"
    jmp lbl_2c118

lbl_2c046:
    if global_14 != 5 then jump lbl_2c091
    local_38dc = "Extruder"
    local_3905 = "Rétracter"
    jmp lbl_2c118

lbl_2c091:
    if global_14 != 6 then jump lbl_2c0d9
    local_38dc = "Extrudir"
    local_3905 = "Retrair"
    jmp lbl_2c118

lbl_2c0d9:
    if global_14 != 7 then jump lbl_2c118
    local_38dc = "Estrudere"
    local_3905 = "Ritirare"

lbl_2c118:
    if global_14 != 0 then jump lbl_2c172
    local_396d = "XYZ轴"
    local_39bf = "挤出机"
    local_3996 = "控制"
    jmp lbl_2c3ff

lbl_2c172:
    if global_14 != 1 then jump lbl_2c1ce
    local_396d = "XYZ axis"
    local_39bf = "Extruder"
    local_3996 = "Control"
    jmp lbl_2c3ff

lbl_2c1ce:
    if global_14 != 2 then jump lbl_2c234
    local_396d = "XYZ軸"
    local_39bf = "押出機"
    local_3996 = "コントロール"
    jmp lbl_2c3ff

lbl_2c234:
    if global_14 != 3 then jump lbl_2c293
    local_396d = "XYZ-Achse"
    local_39bf = "Extruder"
    local_3996 = "Kontrolle"
    jmp lbl_2c3ff

lbl_2c293:
    if global_14 != 4 then jump lbl_2c2ee
    local_396d = "Eje XYZ"
    local_39bf = "Extrusor"
    local_3996 = "Control"
    jmp lbl_2c3ff

lbl_2c2ee:
    if global_14 != 5 then jump lbl_2c34d
    local_396d = "Axe XYZ"
    local_39bf = "Extrudeuse"
    local_3996 = "Contrôle"
    jmp lbl_2c3ff

lbl_2c34d:
    if global_14 != 6 then jump lbl_2c3ab
    local_396d = "Asse XYZ"
    local_39bf = "Extrusora"
    local_3996 = "Controle"
    jmp lbl_2c3ff

lbl_2c3ab:
    if global_14 != 7 then jump lbl_2c3ff
    local_396d = "Asse XYZ"
    local_39bf = "Estrusore"
    local_3996 = "Controllo"

lbl_2c3ff:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x2a77c
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 02afbc:  ff ff                                            |..|

; touch_release
.org 0x2a77c
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x2a7e8
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 02b010:  ff ff                                            |..|

; touch_release
.org 0x2a7e8
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x2a854
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 02b064:  ff ff                                            |..|

; touch_release
.org 0x2a854
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x2a8c0
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 02b0b8:  ff ff                                            |..|

; touch_release
.org 0x2a8c0
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up

; object id 5 (text 't0'): x=85, y=68, w=268, h=38, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="喷嘴温度"
; text:
;   0: "喷嘴温度"
;   1: "Nozzle temperature"
;   2: "ノズル温度"
;   3: "Düsentemperatur"
;   4: "Boquilla Temperatura"
;   5: "Buse Température"
;   6: "Bocal Temperature"
;   7: "Ugello Temperatura"

; object id 6 (text 't1'): x=85, y=117, w=268, h=38, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="热床温度"
; text:
;   0: "热床温度"
;   1: "Heater bed temperature"
;   2: "加熱ベッド温度"
;   3: "Heizbetttemperatur"
;   4: "Semillero Temperatura"
;   5: "Lit Chaud Température"
;   6: "Viveiro Temperature"
;   7: "Letto Caldo Temperatura"

; object id 263 (text 't3'): x=352, y=119, w=106, h=32, name hash=0x5a98bf51
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃ / 65℃"
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0x2a960
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

; object id 264 (text 't2'): x=352, y=61, w=106, h=32, name hash=0x2cf7a429
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100℃ / 165℃"
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0x2a9e4
    global_0 = 0
    global_c = dp
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 265 (button 'b5'): x=79, y=174, w=105, h=33, name hash=0x65081f19
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="PLA预热"
; text:
;   0: "PLA预热"
;   1: "PLA Warm-Up"
;   2: "PLAプレヒート"
;   3: "PLA\rAufwärmen"
;   4: "PLA\rPrecalentar"
;   5: "PLA\rPréchauffer"
;   6: "PLA\rPré-aquecer"
;   7: "Riscal PLA"
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x2aa68
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 266 (button 'b6'): x=216, y=174, w=105, h=33, name hash=0xffb93291
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="ABS预热"
; text:
;   0: "ABS预热"
;   1: "ABS Warm-Up"
;   2: "ABSプレヒート"
;   3: "ABS\rAufwärmen"
;   4: "ABS\rPrecalentar"
;   5: "ABS\rPréchauffer"
;   6: "ABS\rPré-aquecer"
;   7: "Riscal ABS"
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0x2aad2
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 11 (button 'b7'): x=188, y=219, w=72, h=33, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x2ab3c
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="挤出"
; text:
;   0: "挤出"
;   1: "Extrude"
;   2: "押し出す"
;   3: "Extrudieren"
;   4: "Extruir"
;   5: "Extruder"
;   6: "Extrudir"
;   7: "Estrudere"
; touch_release reports to the host: page <page>, widget 5
; 02b1b4:  ff ff                                            |..|

; touch_release
.org 0x2ab3c
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 12 (button 'b8'): x=278, y=219, w=72, h=33, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x2aba6
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="回退"
; text:
;   0: "回退"
;   1: "Retract"
;   2: "戻す"
;   3: "Zurückziehen"
;   4: "Retraer"
;   5: "Rétracter"
;   6: "Retrair"
;   7: "Ritirare"
; touch_release reports to the host: page <page>, widget 6
; 02b208:  ff ff                                            |..|

; touch_release
.org 0x2aba6
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer
    down
    up

; object id 13 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27
; tim=100, en=1

; object id 14 (variable 'material'): x=0, y=0, w=1, h=1, name hash=0x77367e94
; sta=0, val=0
; 02b238:  34 0e 00 07                                      |4...|

; object id 271 (button 'b3'): x=352, y=174, w=105, h=33, name hash=0x54ab59be
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="一键冷却"
; text:
;   0: "一键冷却"
;   1: "Cooling"
;   2: "冷却"
;   3: "Abkühlen"
;   4: "Enfriarse"
;   5: "Refroidir"
;   6: "Esfriar"
;   7: "Raffred"
; touch_release reports to the host: page <page>, widget 4

; touch_release
.org 0x2ac25
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 16 (button 'b0'): x=76, y=6, w=124, h=35, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2ac8f
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="XYZ轴"
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
; 02b28c:  ff ff                                            |..|

; touch_release
.org 0x2ac8f
    prints 0x65, 1
    prints dp, 1
    prints 120, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 17 (button 'b2'): x=356, y=6, w=124, h=35, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x2acfb
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="控制"
; text:
;   0: "控制"
;   1: "Control"
;   2: "コントロール"
;   3: "Kontrolle"
;   4: "Control"
;   5: "Contrôle"
;   6: "Controle"
;   7: "Controllo"
; touch_release reports to the host: page <page>, widget 122
; 02b2e0:  ff ff                                            |..|

; touch_release
.org 0x2acfb
    prints 0x65, 1
    prints dp, 1
    prints 122, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 18 (button 'b1'): x=216, y=6, w=124, h=35, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x2ad67
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="挤出机"
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
; 02b334:  ff ff                                            |..|

; touch_release
.org 0x2ad67
    prints 0x65, 1
    prints dp, 1
    prints 121, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 19 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2adca
; tim=1000, en=1

; timer
.org 0x2adca
    if global_1c <= 0 then jump lbl_2ae26
    if global_20 <= 0 then jump lbl_2ae26
    global_20--
    if global_20 != 0 then jump lbl_2ae26
    dim = global_30

lbl_2ae26:
    down
    up

; object id 20 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2ae40

; touch_release
.org 0x2ae40
    global_20 = global_18
    dims = global_2c

; data after the object structs, 1543 bytes (9 trailing zero bytes dropped)
; 02b384:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b394:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b3a4:  00 00 7f 00 00 00 00 00 d5 00 97 00 3c 00 30 00  |............<.0.|
; 02b3b4:  10 01 c6 00 00 00 00 00 00 00 00 00 00 00 28 00  |..............(.|
; 02b3c4:  29 00 ff ff ff ff 01 01 00 00 64 00 90 af 00 00  |).........d.....|
; 02b3d4:  01 00 00 00 62 12 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02b3e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b3f4:  00 00 00 00 00 00 7f 00 00 00 00 00 34 01 6d 00  |............4.m.|
; 02b404:  29 00 2e 00 5c 01 9a 00 00 00 00 00 00 00 00 00  |)...\...........|
; 02b414:  00 00 28 00 29 00 ff ff ff ff 01 01 00 00 64 00  |..(.).........d.|
; 02b424:  f8 af 00 00 01 00 00 00 62 13 00 00 00 00 00 00  |........b.......|
; 02b434:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b444:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02b454:  34 01 c4 00 00 00 2e 00 5c 01 f1 00 00 00 00 00  |4.......\.......|
; 02b464:  00 00 00 00 00 00 28 00 29 00 ff ff ff ff 01 01  |......(.).......|
; 02b474:  00 00 64 00 60 b0 00 00 01 00 00 00 62 14 00 00  |..d.`.......b...|
; 02b484:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b494:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02b4a4:  00 00 00 00 34 01 98 00 29 00 2e 00 5c 01 c5 00  |....4...)...\...|
; 02b4b4:  00 00 00 00 00 00 00 00 00 00 28 00 00 00 ff ff  |..........(.....|
; 02b4c4:  ff ff 01 01 00 00 64 00 c8 b0 00 00 01 00 00 00  |......d.........|
; 02b4d4:  62 15 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02b4e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b4f4:  00 00 7f 00 00 00 00 00 9b 00 91 00 3b 00 3d 00  |............;.=.|
; 02b504:  d5 00 cd 00 00 00 00 00 00 00 00 00 00 00 28 00  |..............(.|
; 02b514:  29 00 ff ff ff ff 01 01 00 00 64 00 30 b1 00 00  |).........d.0...|
; 02b524:  01 00 00 00 e5 96 b7 e5 98 b4 e6 b8 a9 e5 ba a6  |................|
; 02b534:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b544:  00 00 00 00 00 00 7f 00 00 00 00 00 d2 00 06 00  |................|
; 02b554:  7c 00 23 00 4d 01 28 00 00 00 00 00 00 00 00 00  ||.#.M.(.........|
; 02b564:  00 00 28 00 29 00 ff ff ff ff 01 01 00 00 64 00  |..(.).........d.|
; 02b574:  98 b1 00 00 01 00 00 00 33 17 00 00 00 00 00 00  |........3.......|
; 02b584:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b594:  00 00 00 00 64 00 01 00 34 18 00 00 00 00 00 00  |....d...4.......|
; 02b5a4:  00 00 00 00 01 00 00 00 33 1a 00 00 00 00 00 00  |........3.......|
; 02b5b4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b5c4:  00 00 00 00 e8 03 01 00 05 1b 00 00 00 00 00 00  |................|
; 02b5d4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b5e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b5f4:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 02b604:  08 b6 00 00 01 00 00 00 00 00 00 00 00 ff 00 01  |................|
; 02b614:  00 00 2c 01 00 c0 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 02b624:  74 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 02b634:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b644:  00 00 7f 00 00 00 00 00 41 00 e4 00 7b 00 26 00  |........A...{.&.|
; 02b654:  bb 00 09 01 e7 83 ad e5 ba 8a e6 b8 a9 e5 ba a6  |................|
; 02b664:  00 ff 01 01 00 00 2c 01 e4 c1 00 00 00 00 00 00  |......,.........|
; 02b674:  00 00 00 00 00 18 00 00 00 00 00 00 00 00 00 00  |................|
; 02b684:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b694:  00 00 00 00 00 00 7f 00 00 00 00 00 c0 00 9d 00  |................|
; 02b6a4:  7e 00 6f 00 3d 01 0b 01 00 00 00 00 00 00 00 00  |~.o.=...........|
; 02b6b4:  00 00 1a 00 1a 00 ff ff ff ff 01 01 e5 85 a8 e9  |................|
; 02b6c4:  83 a8 e5 9b 9e e9 9b b6 00 00 00 00 00 00 00 00  |................|
; 02b6d4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b6e4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02b6f4:  14 ff d0 00 32 00 10 00 45 ff df 00 00 00 00 00  |....2...E.......|
; 02b704:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 02b714:  7c c3 00 00 01 00 00 00 00 00 00 00 74 1a 00 00  ||...........t...|
; 02b724:  00 00 00 00 00 86 8d e6 ac a1 e6 89 93 e5 8d b0  |................|
; 02b734:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02b744:  00 00 00 00 00 ff d0 00 21 00 10 00 e6 b5 81 e9  |........!.......|
; 02b754:  87 8f 2d 00 03 00 00 00 00 01 00 00 ff ff 00 01  |..-.............|
; 02b764:  00 00 2c 01 ac c4 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 02b774:  74 1b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 02b784:  00 00 00 00 e6 8c a4 e5 87 ba 00 00 00 00 00 00  |................|
; 02b794:  00 00 7f 00 00 00 00 00 c1 00 e4 00 7b 00 26 00  |............{.&.|
; 02b7a4:  3b 01 09 01 00 00 00 00 03 00 00 00 00 01 00 00  |;...............|
; 02b7b4:  ff ff 01 01 e6 b5 81 e9 87 8f 2b 00 00 00 00 00  |..........+.....|
; 02b7c4:  00 00 00 00 62 1c 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02b7d4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b7e4:  00 00 00 00 00 00 7f 00 00 00 00 00 e5 9b 9e e9  |................|
; 02b7f4:  80 80 00 00 00 01 0b 01 00 00 00 00 00 00 00 00  |................|
; 02b804:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 02b814:  0c c7 00 00 00 00 00 00 74 1d 00 00 e9 80 9f e5  |........t.......|
; 02b824:  ba a6 2d 00 00 00 00 00 00 00 00 00 00 00 00 00  |..-.............|
; 02b834:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02b844:  93 ff d0 00 32 00 10 00 c4 ff df 00 00 00 00 00  |....2...........|
; 02b854:  03 00 00 00 58 59 5a e8 bd b4 00 01 00 00 2c 01  |....XYZ.......,.|
; 02b864:  74 c7 00 00 01 00 00 00 00 00 00 00 74 1e 00 00  |t...........t...|
; 02b874:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b884:  00 00 00 00 e9 80 9f e5 ba a6 2b 00 00 00 7f 00  |..........+.....|
; 02b894:  00 00 00 00 d7 ff d0 00 21 00 10 00 f7 ff df 00  |........!.......|
; 02b8a4:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 02b8b4:  00 00 2c 01 a4 c8 00 00 01 00 00 00 e6 8e a7 e5  |..,.............|
; 02b8c4:  88 b6 00 00 58 59 5a e8 bd b4 00 00 00 00 00 00  |....XYZ.........|
; 02b8d4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b8e4:  00 00 7f 00 00 00 00 00 40 01 e4 00 25 00 26 00  |........@...%.&.|
; 02b8f4:  ba 01 09 01 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 02b904:  ff ff 01 01 00 00 2c 01 d4 c9 00 00 00 00 00 00  |......,.........|
; 02b914:  00 00 00 00 3c 20 00 00 00 00 00 00 00 00 00 00  |....< ..........|
; 02b924:  00 00 00 00 e6 8c a4 e5 87 ba e6 9c ba 00 a7 e5  |................|
; 02b934:  88 b6 00 00 00 00 7f 00 00 00 00 00 5f 00 31 00  |............_.1.|
; 02b944:  40 00 40 00 9e 00 70 00 00 00 00 00 74 69 6d 65  |@.@...p.....time|
; 02b954:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 02b964:  31 31 34 32 2e 6a 70 67 00 00 00 00 00 00 00 00  |1142.jpg........|
; 02b974:  00 00 00 00 00 00 7f 00 00 00 00 00 df 00 31 00  |..............1.|
; 02b984:  40 00 40 00 1e 01 70                             |@.@...p|
