; page 60 'level_mode': 17 objects

; object address table, 17 objects, block loaded at 0xa3a4
.dd 0xa3e8, 0xa428, 0xa47c, 0xa4d0, 0xa524, 0xa578, 0xa5cc, 0xa620
.dd 0xa674, 0xa6c8, 0xa71c, 0xa770, 0xa7c4, 0xa818, 0xa86c, 0xa88c
.dd 0xa8ac

; object id 0 (page 'level_mode'): x=0, y=0, w=480, h=272, name hash=0xbc509d73
; flags=0x37, aph=127, events: event_3=0x3e46d
; sta=2, pic=84
; 03eabe:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3e46d
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x3f87e
    ref 14
    ref 15
    if global_14 != 0 then jump lbl_3f8ed
    local_5b22 = "系统"
    local_5b4b = "网络"
    local_5b74 = "调平校准"
    jmp lbl_3fbc7

lbl_3f8ed:
    if global_14 != 1 then jump lbl_3f94e
    local_5b22 = "System"
    local_5b4b = "Network"
    local_5b74 = "Level Calibrate"
    jmp lbl_3fbc7

lbl_3f94e:
    if global_14 != 2 then jump lbl_3f9bd
    local_5b22 = "システム"
    local_5b4b = "通信網"
    local_5b74 = "水平調整と校正"
    jmp lbl_3fbc7

lbl_3f9bd:
    if global_14 != 3 then jump lbl_3fa2a
    local_5b22 = "System"
    local_5b4b = "Netzwerk"
    local_5b74 = "Nivellierung\rKalibrierung"
    jmp lbl_3fbc7

lbl_3fa2a:
    if global_14 != 4 then jump lbl_3fa94
    local_5b22 = "Sistema"
    local_5b4b = "Red"
    local_5b74 = "Nivelación y\rcalibración"
    jmp lbl_3fbc7

lbl_3fa94:
    if global_14 != 5 then jump lbl_3fb00
    local_5b22 = "Système"
    local_5b4b = "Réseau"
    local_5b74 = "Nivellement\rétalonnage"
    jmp lbl_3fbc7

lbl_3fb00:
    if global_14 != 6 then jump lbl_3fb69
    local_5b22 = "Sistema"
    local_5b4b = "Rede"
    local_5b74 = "Nivelamento\rCalibração"
    T 0x5e

lbl_3fb69:
    if global_14 != 7 then jump lbl_3fbc7
    local_5b22 = "Sistema"
    local_5b4b = "Rete"
    local_5b74 = "Calibrazione\rdel livello"

lbl_3fbc7:
    if global_14 != 0 then jump lbl_3fc68
    local_5b9b = "Z轴倾斜校准"
    local_5af9 = "Z轴校准"
    local_5ad2 = "热床调平"
    local_5a82 = "校准"
    local_5bc4 = "校准"
    local_5aab = "校准"
    jmp lbl_401a9

lbl_3fc68:
    if global_14 != 1 then jump lbl_3fd24
    local_5b9b = "Z-axis tilt calibrate"
    local_5af9 = "Z-axis Calibrate"
    local_5ad2 = "Heated Bed Leveling"
    local_5a82 = "Calibrate"
    local_5bc4 = "Calibrate"
    local_5aab = "Calibrate"
    jmp lbl_401a9

lbl_3fd24:
    if global_14 != 2 then jump lbl_3fddb
    local_5b9b = "Z軸傾き校正"
    local_5af9 = "Z軸校正"
    local_5ad2 = "加熱 ベッドのレベリング"
    local_5a82 = "較正"
    local_5bc4 = "較正"
    local_5aab = "較正"
    jmp lbl_401a9

lbl_3fddb:
    if global_14 != 3 then jump lbl_3fea7
    local_5b9b = "Z-Achse Neigung Kalibrierung"
    local_5af9 = "Z-Achse kalibrieren"
    local_5ad2 = "Erhitzt Bett Nivellierung"
    local_5a82 = "Kalibrier"
    local_5bc4 = "Kalibrier"
    local_5aab = "Kalibrier"
    jmp lbl_401a9

lbl_3fea7:
    if global_14 != 4 then jump lbl_3ff66
    local_5b9b = "Eje Z ladeo calibrar"
    local_5af9 = "Eje Z Calibración->"
    local_5ad2 = "Semillero Arrasamiento"
    local_5a82 = "Calibrar"
    local_5bc4 = "Calibrar"
    local_5aab = "Calibrar"
    jmp lbl_401a9

lbl_3ff66:
    if global_14 != 5 then jump lbl_40028
    local_5b9b = "Axe z incliner calibrer"
    local_5af9 = "Axe z étalonnage->"
    local_5ad2 = "Foyer Nivellement"
    local_5a82 = "Étalonner"
    local_5bc4 = "Étalonner"
    local_5aab = "Étalonner"
    jmp lbl_401a9

lbl_40028:
    if global_14 != 6 then jump lbl_400ed
    local_5b9b = "Eixo Z inclinar calibração"
    local_5af9 = "Eixo Z Calibração->"
    local_5ad2 = "Viveiro Nivelamento"
    local_5a82 = "Calibrar"
    local_5bc4 = "Calibrar"
    local_5aab = "Calibrar"
    jmp lbl_401a9

lbl_400ed:
    if global_14 != 7 then jump lbl_401a9
    local_5b9b = "Asse Z inclinare calibrare"
    local_5af9 = "Asse Z Taratura"
    local_5ad2 = "Letto riscaldato Livellamento"
    local_5a82 = "Taratura"
    local_5bc4 = "Taratura"
    local_5aab = "Taratura"

lbl_401a9:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x3e4b3
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 03eb0e:  ff ff                                            |..|

; touch_release
.org 0x3e4b3
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x3e51f
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 03eb62:  ff ff                                            |..|

; touch_release
.org 0x3e51f
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x3e58b
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 03ebb6:  ff ff                                            |..|

; touch_release
.org 0x3e58b
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x3e5f7
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 03ec0a:  ff ff                                            |..|

; touch_release
.org 0x3e5f7
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b0'): x=389, y=70, w=70, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x3e663
; borderc=0x0000, picc=84, picc2=85, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="校准"
; text:
;   0: "校准"
;   1: "Calibrate"
;   2: "較正"
;   3: "Kalibrier"
;   4: "Calibrar"
;   5: "Étalonner"
;   6: "Calibrar"
;   7: "Taratura"
; touch_release reports to the host: page <page>, widget 0
; 03ec5e:  ff ff                                            |..|

; touch_release
.org 0x3e663
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b7'): x=388, y=208, w=71, h=38, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x3e6cd
; borderc=0x0000, picc=84, picc2=85, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="校准"
; text:
;   0: "校准"
;   1: "Calibrate"
;   2: "較正"
;   3: "Kalibrier"
;   4: "Calibrar"
;   5: "Étalonner"
;   6: "Calibrar"
;   7: "Taratura"
; touch_release reports to the host: page <page>, widget 2
; 03ecb2:  ff ff                                            |..|

; touch_release
.org 0x3e6cd
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

; object id 7 (text 't0'): x=95, y=207, w=209, h=40, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="热床调平"
; text:
;   0: "热床调平"
;   1: "Heated Bed Leveling"
;   2: "加熱 ベッドのレベリング"
;   3: "Erhitzt Bett Nivellierung"
;   4: "Semillero Arrasamiento"
;   5: "Foyer Nivellement"
;   6: "Viveiro Nivelamento"
;   7: "Letto riscaldato Livellamento"

; object id 8 (text 't2'): x=95, y=138, w=209, h=40, name hash=0x2cf7a429
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="Z轴校准"
; text:
;   0: "Z轴校准"
;   1: "Z-axis Calibrate"
;   2: "Z軸校正"
;   3: "Z-Achse kalibrieren"
;   4: "Eje Z Calibración->"
;   5: "Axe z étalonnage->"
;   6: "Eixo Z Calibração->"
;   7: "Asse Z Taratura"

; object id 9 (button 'b9'): x=71, y=7, w=134, h=34, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x3e76b
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="系统"
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
; 03edae:  ff ff                                            |..|

; touch_release
.org 0x3e76b
    prints 0x65, 1
    prints dp, 1
    prints 130, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b10'): x=205, y=7, w=134, h=34, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x3e7d7
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="网络"
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
; 03ee02:  ff ff                                            |..|

; touch_release
.org 0x3e7d7
    prints 0x65, 1
    prints dp, 1
    prints 131, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 11 (button 'b11'): x=339, y=7, w=134, h=34, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x3e843
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="调平校准"
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
; 03ee56:  ff ff                                            |..|

; touch_release
.org 0x3e843
    prints 0x65, 1
    prints dp, 1
    prints 132, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 12 (text 't4'): x=95, y=69, w=209, h=40, name hash=0x1d54e28e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="Z轴倾斜校准"
; text:
;   0: "Z轴倾斜校准"
;   1: "Z-axis tilt calibrate"
;   2: "Z軸傾き校正"
;   3: "Z-Achse Neigung Kalibrierung"
;   4: "Eje Z ladeo calibrar"
;   5: "Axe z incliner calibrer"
;   6: "Eixo Z inclinar calibração"
;   7: "Asse Z inclinare calibrare"

; object id 13 (button 'b8'): x=388, y=144, w=71, h=38, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x3e8c9
; borderc=0x0000, picc=84, picc2=85, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="校准"
; text:
;   0: "校准"
;   1: "Calibrate"
;   2: "較正"
;   3: "Kalibrier"
;   4: "Calibrar"
;   5: "Étalonner"
;   6: "Calibrar"
;   7: "Taratura"
; touch_release reports to the host: page <page>, widget 1
; 03eefe:  ff ff                                            |..|

; touch_release
.org 0x3e8c9
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 14 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x3e92a
; tim=1000, en=1

; timer
.org 0x3e92a
    if global_1c <= 0 then jump lbl_3e986
    if global_20 <= 0 then jump lbl_3e986
    global_20--
    if global_20 != 0 then jump lbl_3e986
    dim = global_30

lbl_3e986:
    down
    up

; object id 15 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3e9a0

; touch_release
.org 0x3e9a0
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 16 (text 't3'): x=517, y=18, w=64, h=33, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0.01"

; data after the object structs, 2260 bytes (4 trailing zero bytes dropped)
; 03efa2:  00 00 00 00 00 00 00 00 8d 01 cf 00 2d 00 1e 00  |............-...|
; 03efb2:  b9 01 ec 00 00 00 00 00 00 00 e7 39 00 00 3f 00  |...........9..?.|
; 03efc2:  40 00 ff ff ff ff 01 01 00 00 03 00 2c b4 00 00  |@...........,...|
; 03efd2:  00 00 00 00 62 11 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03efe2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03eff2:  00 00 00 00 00 00 7f 00 00 00 00 00 38 00 af 00  |............8...|
; 03f002:  26 00 1e 00 5d 00 cc 00 00 00 00 00 00 00 e7 39  |&...]..........9|
; 03f012:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 03f022:  30 b4 00 00 00 00 00 00 62 12 00 00 00 00 00 00  |0.......b.......|
; 03f032:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f042:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03f052:  61 00 af 00 26 00 1e 00 86 00 cc 00 00 00 00 00  |a...&...........|
; 03f062:  00 00 e7 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 03f072:  00 00 03 00 00 b4 00 00 00 00 00 00 62 13 00 00  |............b...|
; 03f082:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f092:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03f0a2:  00 00 00 00 8a 00 af 00 26 00 1e 00 af 00 cc 00  |........&.......|
; 03f0b2:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03f0c2:  ff ff 01 01 00 00 03 00 38 b4 00 00 00 00 00 00  |........8.......|
; 03f0d2:  62 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03f0e2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f0f2:  00 00 7f 00 00 00 00 00 b3 00 af 00 26 00 1e 00  |............&...|
; 03f102:  d8 00 cc 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 03f112:  3e 00 ff ff ff ff 01 01 00 00 03 00 3c b4 00 00  |>...........<...|
; 03f122:  00 00 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03f132:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f142:  00 00 00 00 e6 a0 a1 e5 87 86 00 00 dc 00 af 00  |................|
; 03f152:  26 00 1e 00 01 01 cc 00 00 00 00 00 00 00 e7 39  |&..............9|
; 03f162:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 03f172:  40 b4 00 00 00 00 00 00 62 16 00 00 00 00 00 00  |@.......b.......|
; 03f182:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f192:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03f1a2:  05 01 af 00 26 00 1e 00 2a 01 cc 00 e6 a0 a1 e5  |....&...*.......|
; 03f1b2:  87 86 00 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 03f1c2:  00 00 03 00 44 b4 00 00 00 00 00 00 62 17 00 00  |....D.......b...|
; 03f1d2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f1e2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03f1f2:  00 00 00 00 2e 01 af 00 26 00 1e 00 53 01 cc 00  |........&...S...|
; 03f202:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03f212:  ff ff 01 01 e7 83 ad e5 ba 8a e8 b0 83 e5 b9 b3  |................|
; 03f222:  00 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f232:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f242:  00 00 7f 00 00 00 00 00 57 01 af 00 26 00 1e 00  |........W...&...|
; 03f252:  7c 01 cc 00 00 00 00 00 00 00 e7 39 00 00 3d 00  ||..........9..=.|
; 03f262:  3e 00 ff ff ff ff 01 01 00 00 03 00 4c b4 00 00  |>...........L...|
; 03f272:  00 00 00 00 62 19 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03f282:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f292:  00 00 00 00 00 00 7f 00 00 00 00 00 80 01 af 00  |................|
; 03f2a2:  26 00 1e 00 a5 01 cc 00 00 00 00 00 00 00 e7 39  |&..............9|
; 03f2b2:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 03f2c2:  50 b4 00 00 00 00 00 00 62 1a 00 00 00 00 00 00  |P.......b.......|
; 03f2d2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f2e2:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03f2f2:  24 00 cf 00 2d 00 1e 00 50 00 ec 00 00 00 00 00  |$...-...P.......|
; 03f302:  00 00 e7 39 00 00 3f 00 40 00 ff ff ff ff 01 01  |...9..?.@.......|
; 03f312:  00 00 03 00 54 b4 00 00 00 00 00 00 62 1b 00 00  |....T.......b...|
; 03f322:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f332:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03f342:  00 00 00 00 5a e8 bd b4 e6 a0 a1 e5 87 86 00 00  |....Z...........|
; 03f352:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03f362:  ff ff 01 01 00 00 03 00 58 b4 00 00 00 00 00 00  |........X.......|
; 03f372:  62 1c 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03f382:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f392:  00 00 7f 00 00 00 00 00 8a 00 cf 00 26 00 1e 00  |............&...|
; 03f3a2:  af 00 ec 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 03f3b2:  3e 00 ff ff ff ff 01 01 00 00 03 00 5c b4 00 00  |>...........\...|
; 03f3c2:  00 00 00 00 62 1d 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03f3d2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f3e2:  00 00 00 00 00 00 7f 00 00 00 00 00 b3 00 cf 00  |................|
; 03f3f2:  26 00 1e 00 d8 00 ec 00 00 00 00 00 00 00 e7 39  |&..............9|
; 03f402:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 03f412:  60 b4 00 00 00 00 00 00 62 1e 00 00 00 00 00 00  |`.......b.......|
; 03f422:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f432:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03f442:  dc 00 cf 00 26 00 1e 00 01 01 ec 00 00 00 00 00  |....&...........|
; 03f452:  00 00 e7 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 03f462:  00 00 03 00 64 b4 00 00 00 00 00 00 62 1f 00 00  |....d.......b...|
; 03f472:  00 00 00 00 e7 b3 bb e7 bb 9f 00 00 00 00 00 00  |................|
; 03f482:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03f492:  00 00 00 00 05 01 cf 00 26 00 1e 00 2a 01 ec 00  |........&...*...|
; 03f4a2:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03f4b2:  ff ff 01 01 00 00 03 00 68 b4 00 00 00 00 00 00  |........h.......|
; 03f4c2:  62 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b ..............|
; 03f4d2:  00 00 00 00 00 00 00 00 00 00 00 00 e7 bd 91 e7  |................|
; 03f4e2:  bb 9c 00 00 00 00 00 00 2e 01 cf 00 26 00 1e 00  |............&...|
; 03f4f2:  53 01 ec 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |S..........9..=.|
; 03f502:  3e 00 ff ff ff ff 01 01 00 00 03 00 6c b4 00 00  |>...........l...|
; 03f512:  00 00 00 00 62 21 00 00 00 00 00 00 00 00 00 00  |....b!..........|
; 03f522:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f532:  00 00 00 00 00 00 7f 00 00 00 00 00 57 01 cf 00  |............W...|
; 03f542:  26 00 1e 00 e8 b0 83 e5 b9 b3 e6 a0 a1 e5 87 86  |&...............|
; 03f552:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 03f562:  70 b4 00 00 00 00 00 00 62 22 00 00 00 00 00 00  |p.......b"......|
; 03f572:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f582:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03f592:  24 00 f0 00 3e 00 1d 00 61 00 0c 01 00 00 00 00  |$...>...a.......|
; 03f5a2:  00 00 e7 39 00 00 3d 00 3e 00 ff ff 5a e8 bd b4  |...9..=.>...Z...|
; 03f5b2:  e5 80 be e6 96 9c e6 a0 a1 e5 87 86 00 23 00 00  |.............#..|
; 03f5c2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f5d2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03f5e2:  00 00 00 00 64 00 ef 00 1a 01 1e 00 7d 01 0c 01  |....d.......}...|
; 03f5f2:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03f602:  ff ff 01 01 00 00 06 00 7c b4 00 00 00 00 00 00  |........|.......|
; 03f612:  62 24 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b$..............|
; 03f622:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f632:  00 00 7f 00 00 00 00 00 95 01 8f 00 26 00 1e 00  |............&...|
; 03f642:  ba 01 ac 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 03f652:  3e 00 ff ff ff ff 01 01 00 00 03 00 84 b4 00 00  |>...............|
; 03f662:  00 00 00 00 6d 25 00 00 00 00 00 00 00 00 00 00  |....m%..........|
; 03f672:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f682:  00 00 00 00 00 00 00 00 00 00 00 00 cc ff 55 00  |..............U.|
; 03f692:  1f 00 11 00 ea ff 65 00 00 00 00 00 6d 26 00 00  |......e.....m&..|
; 03f6a2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f6b2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f6c2:  00 00 00 00 cc ff 2c 00 1f 00 11 00 ea ff 3c 00  |......,.......<.|
; 03f6d2:  00 00 00 00 34 27 00 00 01 00 1e 00 e6 a0 a1 e5  |....4'..........|
; 03f6e2:  87 86 00 00 34 28 00 00 00 00 00 00 00 00 00 00  |....4(..........|
; 03f6f2:  00 00 00 00 34 29 00 00 00 00 00 00 00 00 00 00  |....4)..........|
; 03f702:  1e 00 00 00 33 2a 00 00 00 00 00 00 00 00 00 00  |....3*..........|
; 03f712:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f722:  32 00 01 00 34 2b 00 00 00 00 00 00 00 00 00 00  |2...4+..........|
; 03f732:  00 00 00 00 33 2c 00 00 00 00 00 00 00 00 00 00  |....3,..........|
; 03f742:  00 00 00 00 30 2e 30 31 00 00 00 00 00 00 00 00  |....0.01........|
; 03f752:  e8 03 01 00 05 2d 00 00 00 00 00 00 00 00 00 00  |.....-..........|
; 03f762:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f772:  00 00 00 00 00 00 00 00 5a 43 53 57 31 32 2d 32  |........ZCSW12-2|
; 03f782:  2e 34 47 00 00 00 10 00 10 00 ff ff ff ff 01 01  |.4G.............|
; 03f792:  00 00 64 00 a4 d2 00 00 01 00 00 00 62 2b 00 00  |..d.........b+..|
; 03f7a2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f7b2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03f7c2:  00 00 00 00 9f 01 a2 00 1c 00 1c 00 ba 01 bd 00  |................|
; 03f7d2:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 03f7e2:  74 69 6d 65 6c 61 70 73 65 5f 5f 32 30 32 34 30  |timelapse__20240|
; 03f7f2:  33 31 34 5f 31 31 34 33 2e 6a 70 67 00 00 00 00  |314_1143.jpg....|
; 03f802:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 03f812:  05 2d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |.-..............|
; 03f822:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03f832:  00 00 00 00 00 00 00 00 e6 8c a4 e5 e5 b1 8f e5  |................|
; 03f842:  b9 95 e4 ba ae e5 ba a6 00 00 00 00 00 00 7f 00  |................|
; 03f852:  00 00 00 00 97 01 d5 00 45 00 36 00 db 01 0a 01  |........E.6.....|
; 03f862:  00 00 00 00 00 00 00 00 00 00 16 00 18 00 ff ff  |................|
; 03f872:  ff ff 01 01                                      |....|
