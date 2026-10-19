; page 60 'level_mode': 17 objects

; object address table, 17 objects, block loaded at 0xb950
.dd 0xb994, 0xb9d4, 0xba28, 0xba7c, 0xbad0, 0xbb24, 0xbb78, 0xbbcc
.dd 0xbc20, 0xbc74, 0xbcc8, 0xbd1c, 0xbd70, 0xbdc4, 0xbe18, 0xbe38
.dd 0xbe58

; object id 0 (page 'level_mode'): x=0, y=0, w=480, h=272, name hash=0xbc509d73
; flags=0x37, aph=127, events: event_3=0x3efe4
; sta=2, pic=84
; 03f635:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3efe4
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x403f5
    ref 14
    ref 15
    if global_14 != 0 then jump lbl_40464
    local_5a98 = "系统"
    local_5ac1 = "网络"
    local_5aea = "调平校准"
    jmp lbl_4073e

lbl_40464:
    if global_14 != 1 then jump lbl_404c5
    local_5a98 = "System"
    local_5ac1 = "Network"
    local_5aea = "Level Calibrate"
    jmp lbl_4073e

lbl_404c5:
    if global_14 != 2 then jump lbl_40534
    local_5a98 = "システム"
    local_5ac1 = "通信網"
    local_5aea = "水平調整と校正"
    jmp lbl_4073e

lbl_40534:
    if global_14 != 3 then jump lbl_405a1
    local_5a98 = "System"
    local_5ac1 = "Netzwerk"
    local_5aea = "Nivellierung\rKalibrierung"
    jmp lbl_4073e

lbl_405a1:
    if global_14 != 4 then jump lbl_4060b
    local_5a98 = "Sistema"
    local_5ac1 = "Red"
    local_5aea = "Nivelación y\rcalibración"
    jmp lbl_4073e

lbl_4060b:
    if global_14 != 5 then jump lbl_40677
    local_5a98 = "Système"
    local_5ac1 = "Réseau"
    local_5aea = "Nivellement\rétalonnage"
    jmp lbl_4073e

lbl_40677:
    if global_14 != 6 then jump lbl_406e0
    local_5a98 = "Sistema"
    local_5ac1 = "Rede"
    local_5aea = "Nivelamento\rCalibração"
    T 0x5e

lbl_406e0:
    if global_14 != 7 then jump lbl_4073e
    local_5a98 = "Sistema"
    local_5ac1 = "Rete"
    local_5aea = "Calibrazione\rdel livello"

lbl_4073e:
    if global_14 != 0 then jump lbl_407df
    local_5b11 = "Z轴倾斜校准"
    local_5a6f = "Z轴校准"
    local_5a48 = "热床调平"
    local_59f8 = "校准"
    local_5b3a = "校准"
    local_5a21 = "校准"
    jmp lbl_40d20

lbl_407df:
    if global_14 != 1 then jump lbl_4089b
    local_5b11 = "Z-axis tilt calibrate"
    local_5a6f = "Z-axis Calibrate"
    local_5a48 = "Heated Bed Leveling"
    local_59f8 = "Calibrate"
    local_5b3a = "Calibrate"
    local_5a21 = "Calibrate"
    jmp lbl_40d20

lbl_4089b:
    if global_14 != 2 then jump lbl_40952
    local_5b11 = "Z軸傾き校正"
    local_5a6f = "Z軸校正"
    local_5a48 = "加熱 ベッドのレベリング"
    local_59f8 = "較正"
    local_5b3a = "較正"
    local_5a21 = "較正"
    jmp lbl_40d20

lbl_40952:
    if global_14 != 3 then jump lbl_40a1e
    local_5b11 = "Z-Achse Neigung Kalibrierung"
    local_5a6f = "Z-Achse kalibrieren"
    local_5a48 = "Erhitzt Bett Nivellierung"
    local_59f8 = "Kalibrier"
    local_5b3a = "Kalibrier"
    local_5a21 = "Kalibrier"
    jmp lbl_40d20

lbl_40a1e:
    if global_14 != 4 then jump lbl_40add
    local_5b11 = "Eje Z ladeo calibrar"
    local_5a6f = "Eje Z Calibración->"
    local_5a48 = "Semillero Arrasamiento"
    local_59f8 = "Calibrar"
    local_5b3a = "Calibrar"
    local_5a21 = "Calibrar"
    jmp lbl_40d20

lbl_40add:
    if global_14 != 5 then jump lbl_40b9f
    local_5b11 = "Axe z incliner calibrer"
    local_5a6f = "Axe z étalonnage->"
    local_5a48 = "Foyer Nivellement"
    local_59f8 = "Étalonner"
    local_5b3a = "Étalonner"
    local_5a21 = "Étalonner"
    jmp lbl_40d20

lbl_40b9f:
    if global_14 != 6 then jump lbl_40c64
    local_5b11 = "Eixo Z inclinar calibração"
    local_5a6f = "Eixo Z Calibração->"
    local_5a48 = "Viveiro Nivelamento"
    local_59f8 = "Calibrar"
    local_5b3a = "Calibrar"
    local_5a21 = "Calibrar"
    jmp lbl_40d20

lbl_40c64:
    if global_14 != 7 then jump lbl_40d20
    local_5b11 = "Asse Z inclinare calibrare"
    local_5a6f = "Asse Z Taratura"
    local_5a48 = "Letto riscaldato Livellamento"
    local_59f8 = "Taratura"
    local_5b3a = "Taratura"
    local_5a21 = "Taratura"

lbl_40d20:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x3f02a
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 03f685:  ff ff                                            |..|

; touch_release
.org 0x3f02a
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x3f096
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 03f6d9:  ff ff                                            |..|

; touch_release
.org 0x3f096
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x3f102
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 03f72d:  ff ff                                            |..|

; touch_release
.org 0x3f102
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x3f16e
; borderc=0x0000, picc=67, picc2=68, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 03f781:  ff ff                                            |..|

; touch_release
.org 0x3f16e
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b0'): x=389, y=70, w=70, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x3f1da
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
; 03f7d5:  ff ff                                            |..|

; touch_release
.org 0x3f1da
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b7'): x=388, y=208, w=71, h=38, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x3f244
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
; 03f829:  ff ff                                            |..|

; touch_release
.org 0x3f244
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
; flags=0x37, aph=127, events: touch_release=0x3f2e2
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
; 03f925:  ff ff                                            |..|

; touch_release
.org 0x3f2e2
    prints 0x65, 1
    prints dp, 1
    prints 130, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b10'): x=205, y=7, w=134, h=34, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x3f34e
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
; 03f979:  ff ff                                            |..|

; touch_release
.org 0x3f34e
    prints 0x65, 1
    prints dp, 1
    prints 131, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 11 (button 'b11'): x=339, y=7, w=134, h=34, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x3f3ba
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
; 03f9cd:  ff ff                                            |..|

; touch_release
.org 0x3f3ba
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
; flags=0x37, aph=127, events: touch_release=0x3f440
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
; 03fa75:  ff ff                                            |..|

; touch_release
.org 0x3f440
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 14 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x3f4a1
; tim=1000, en=1

; timer
.org 0x3f4a1
    if global_1c <= 0 then jump lbl_3f4fd
    if global_20 <= 0 then jump lbl_3f4fd
    global_20--
    if global_20 != 0 then jump lbl_3f4fd
    dim = global_30

lbl_3f4fd:
    down
    up

; object id 15 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3f517

; touch_release
.org 0x3f517
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 16 (text 't3'): x=517, y=18, w=64, h=33, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0.01"

; data after the object structs, 2260 bytes (4 trailing zero bytes dropped)
; 03fb19:  00 00 00 00 00 00 00 00 8d 01 cf 00 2d 00 1e 00  |............-...|
; 03fb29:  b9 01 ec 00 00 00 00 00 00 00 e7 39 00 00 3f 00  |...........9..?.|
; 03fb39:  40 00 ff ff ff ff 01 01 00 00 03 00 d8 c9 00 00  |@...............|
; 03fb49:  00 00 00 00 62 11 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03fb59:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fb69:  00 00 00 00 00 00 7f 00 00 00 00 00 38 00 af 00  |............8...|
; 03fb79:  26 00 1e 00 5d 00 cc 00 00 00 00 00 00 00 e7 39  |&...]..........9|
; 03fb89:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 03fb99:  dc c9 00 00 00 00 00 00 62 12 00 00 00 00 00 00  |........b.......|
; 03fba9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fbb9:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03fbc9:  61 00 af 00 26 00 1e 00 86 00 cc 00 00 00 00 00  |a...&...........|
; 03fbd9:  00 00 e7 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 03fbe9:  00 00 03 00 00 c9 00 00 00 00 00 00 62 13 00 00  |............b...|
; 03fbf9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fc09:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03fc19:  00 00 00 00 8a 00 af 00 26 00 1e 00 af 00 cc 00  |........&.......|
; 03fc29:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03fc39:  ff ff 01 01 00 00 03 00 e4 c9 00 00 00 00 00 00  |................|
; 03fc49:  62 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03fc59:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fc69:  00 00 7f 00 00 00 00 00 b3 00 af 00 26 00 1e 00  |............&...|
; 03fc79:  d8 00 cc 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 03fc89:  3e 00 ff ff ff ff 01 01 00 00 03 00 e8 c9 00 00  |>...............|
; 03fc99:  00 00 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03fca9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fcb9:  00 00 00 00 e6 a0 a1 e5 87 86 00 00 dc 00 af 00  |................|
; 03fcc9:  26 00 1e 00 01 01 cc 00 00 00 00 00 00 00 e7 39  |&..............9|
; 03fcd9:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 03fce9:  ec c9 00 00 00 00 00 00 62 16 00 00 00 00 00 00  |........b.......|
; 03fcf9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fd09:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03fd19:  05 01 af 00 26 00 1e 00 2a 01 cc 00 e6 a0 a1 e5  |....&...*.......|
; 03fd29:  87 86 00 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 03fd39:  00 00 03 00 f0 c9 00 00 00 00 00 00 62 17 00 00  |............b...|
; 03fd49:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fd59:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03fd69:  00 00 00 00 2e 01 af 00 26 00 1e 00 53 01 cc 00  |........&...S...|
; 03fd79:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03fd89:  ff ff 01 01 e7 83 ad e5 ba 8a e8 b0 83 e5 b9 b3  |................|
; 03fd99:  00 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fda9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fdb9:  00 00 7f 00 00 00 00 00 57 01 af 00 26 00 1e 00  |........W...&...|
; 03fdc9:  7c 01 cc 00 00 00 00 00 00 00 e7 39 00 00 3d 00  ||..........9..=.|
; 03fdd9:  3e 00 ff ff ff ff 01 01 00 00 03 00 f8 c9 00 00  |>...............|
; 03fde9:  00 00 00 00 62 19 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03fdf9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fe09:  00 00 00 00 00 00 7f 00 00 00 00 00 80 01 af 00  |................|
; 03fe19:  26 00 1e 00 a5 01 cc 00 00 00 00 00 00 00 e7 39  |&..............9|
; 03fe29:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 03fe39:  fc c9 00 00 00 00 00 00 62 1a 00 00 00 00 00 00  |........b.......|
; 03fe49:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fe59:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03fe69:  24 00 cf 00 2d 00 1e 00 50 00 ec 00 00 00 00 00  |$...-...P.......|
; 03fe79:  00 00 e7 39 00 00 3f 00 40 00 ff ff ff ff 01 01  |...9..?.@.......|
; 03fe89:  00 00 03 00 00 ca 00 00 00 00 00 00 62 1b 00 00  |............b...|
; 03fe99:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03fea9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03feb9:  00 00 00 00 5a e8 bd b4 e6 a0 a1 e5 87 86 00 00  |....Z...........|
; 03fec9:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03fed9:  ff ff 01 01 00 00 03 00 04 ca 00 00 00 00 00 00  |................|
; 03fee9:  62 1c 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03fef9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03ff09:  00 00 7f 00 00 00 00 00 8a 00 cf 00 26 00 1e 00  |............&...|
; 03ff19:  af 00 ec 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 03ff29:  3e 00 ff ff ff ff 01 01 00 00 03 00 08 ca 00 00  |>...............|
; 03ff39:  00 00 00 00 62 1d 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03ff49:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03ff59:  00 00 00 00 00 00 7f 00 00 00 00 00 b3 00 cf 00  |................|
; 03ff69:  26 00 1e 00 d8 00 ec 00 00 00 00 00 00 00 e7 39  |&..............9|
; 03ff79:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 03ff89:  0c ca 00 00 00 00 00 00 62 1e 00 00 00 00 00 00  |........b.......|
; 03ff99:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03ffa9:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03ffb9:  dc 00 cf 00 26 00 1e 00 01 01 ec 00 00 00 00 00  |....&...........|
; 03ffc9:  00 00 e7 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 03ffd9:  00 00 03 00 10 ca 00 00 00 00 00 00 62 1f 00 00  |............b...|
; 03ffe9:  00 00 00 00 e7 b3 bb e7 bb 9f 00 00 00 00 00 00  |................|
; 03fff9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 040009:  00 00 00 00 05 01 cf 00 26 00 1e 00 2a 01 ec 00  |........&...*...|
; 040019:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 040029:  ff ff 01 01 00 00 03 00 14 ca 00 00 00 00 00 00  |................|
; 040039:  62 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b ..............|
; 040049:  00 00 00 00 00 00 00 00 00 00 00 00 e7 bd 91 e7  |................|
; 040059:  bb 9c 00 00 00 00 00 00 2e 01 cf 00 26 00 1e 00  |............&...|
; 040069:  53 01 ec 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |S..........9..=.|
; 040079:  3e 00 ff ff ff ff 01 01 00 00 03 00 18 ca 00 00  |>...............|
; 040089:  00 00 00 00 62 21 00 00 00 00 00 00 00 00 00 00  |....b!..........|
; 040099:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0400a9:  00 00 00 00 00 00 7f 00 00 00 00 00 57 01 cf 00  |............W...|
; 0400b9:  26 00 1e 00 e8 b0 83 e5 b9 b3 e6 a0 a1 e5 87 86  |&...............|
; 0400c9:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 0400d9:  1c ca 00 00 00 00 00 00 62 22 00 00 00 00 00 00  |........b"......|
; 0400e9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0400f9:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 040109:  24 00 f0 00 3e 00 1d 00 61 00 0c 01 00 00 00 00  |$...>...a.......|
; 040119:  00 00 e7 39 00 00 3d 00 3e 00 ff ff 5a e8 bd b4  |...9..=.>...Z...|
; 040129:  e5 80 be e6 96 9c e6 a0 a1 e5 87 86 00 23 00 00  |.............#..|
; 040139:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040149:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 040159:  00 00 00 00 64 00 ef 00 1a 01 1e 00 7d 01 0c 01  |....d.......}...|
; 040169:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 040179:  ff ff 01 01 00 00 06 00 28 ca 00 00 00 00 00 00  |........(.......|
; 040189:  62 24 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b$..............|
; 040199:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0401a9:  00 00 7f 00 00 00 00 00 95 01 8f 00 26 00 1e 00  |............&...|
; 0401b9:  ba 01 ac 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 0401c9:  3e 00 ff ff ff ff 01 01 00 00 03 00 30 ca 00 00  |>...........0...|
; 0401d9:  00 00 00 00 6d 25 00 00 00 00 00 00 00 00 00 00  |....m%..........|
; 0401e9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0401f9:  00 00 00 00 00 00 00 00 00 00 00 00 cc ff 55 00  |..............U.|
; 040209:  1f 00 11 00 ea ff 65 00 00 00 00 00 6d 26 00 00  |......e.....m&..|
; 040219:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040229:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040239:  00 00 00 00 cc ff 2c 00 1f 00 11 00 ea ff 3c 00  |......,.......<.|
; 040249:  00 00 00 00 34 27 00 00 01 00 1e 00 e6 a0 a1 e5  |....4'..........|
; 040259:  87 86 00 00 34 28 00 00 00 00 00 00 00 00 00 00  |....4(..........|
; 040269:  00 00 00 00 34 29 00 00 00 00 00 00 00 00 00 00  |....4)..........|
; 040279:  1e 00 00 00 33 2a 00 00 00 00 00 00 00 00 00 00  |....3*..........|
; 040289:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040299:  32 00 01 00 34 2b 00 00 00 00 00 00 00 00 00 00  |2...4+..........|
; 0402a9:  00 00 00 00 33 2c 00 00 00 00 00 00 00 00 00 00  |....3,..........|
; 0402b9:  00 00 00 00 30 2e 30 31 00 00 00 00 00 00 00 00  |....0.01........|
; 0402c9:  e8 03 01 00 05 2d 00 00 00 00 00 00 00 00 00 00  |.....-..........|
; 0402d9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0402e9:  00 00 00 00 00 00 00 00 5a 43 53 57 31 32 2d 32  |........ZCSW12-2|
; 0402f9:  2e 34 47 00 00 00 10 00 10 00 ff ff ff ff 01 01  |.4G.............|
; 040309:  00 00 64 00 50 e8 00 00 01 00 00 00 62 2b 00 00  |..d.P.......b+..|
; 040319:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040329:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 040339:  00 00 00 00 9f 01 a2 00 1c 00 1c 00 ba 01 bd 00  |................|
; 040349:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 040359:  74 69 6d 65 6c 61 70 73 65 5f 5f 32 30 32 34 30  |timelapse__20240|
; 040369:  33 31 34 5f 31 31 34 33 2e 6a 70 67 00 00 00 00  |314_1143.jpg....|
; 040379:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 040389:  05 2d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |.-..............|
; 040399:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0403a9:  00 00 00 00 00 00 00 00 e6 8c a4 e5 00 ba e6 9c  |................|
; 0403b9:  ba 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0403c9:  00 00 00 00 33 01 ab 00 2e 00 2f 00 60 01 d9 00  |....3...../.`...|
; 0403d9:  00 00 00 00 00 00 00 00 00 00 3b 00 3c 00 ff ff  |..........;.<...|
; 0403e9:  ff ff 01 01                                      |....|
