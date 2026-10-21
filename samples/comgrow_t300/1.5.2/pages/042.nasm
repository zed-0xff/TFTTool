; page 42 'heat_tip': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page 'heat_tip'): x=0, y=0, w=480, h=272, name hash=0x69478025
; flags=0x37, aph=127, events: event_3=0x2de43
; sta=2, pic=2
; 02e006:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2de43
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x2e29e
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_2e320
    local_3d76 = "转动挤出机之前将喷嘴加热到180℃以上"
    local_3db4 = "确定"
    jmp lbl_2e6c1

lbl_2e320:
    if global_14 != 1 then jump lbl_2e39d
    local_3d76 = "Heat the nozzle to 180°C or above before rotating the extruder."
    local_3db4 = "Sure"
    jmp lbl_2e6c1

lbl_2e39d:
    if global_14 != 2 then jump lbl_2e43f
    local_3d76 = "押し出し機を回転させる前にノズルを180℃以上に加熱してください。"
    local_3db4 = "もちろん"
    jmp lbl_2e6c1

lbl_2e43f:
    if global_14 != 3 then jump lbl_2e4c5
    local_3d76 = "Heizen Sie die Düse vor dem Drehen des Extruders auf 180°C oder mehr."
    local_3db4 = "Gewiss"
    jmp lbl_2e6c1

lbl_2e4c5:
    if global_14 != 4 then jump lbl_2e544
    local_3d76 = "Caliente la boquilla a 180°C o más antes de girar el extrusor."
    local_3db4 = "Seguro"
    jmp lbl_2e6c1

lbl_2e544:
    if global_14 != 5 then jump lbl_2e5cd
    local_3d76 = "Chauffez la buse à 180°C ou plus avant de faire tourner l'extrudeuse."
    local_3db4 = "Bien sûr"
    jmp lbl_2e6c1

lbl_2e5cd:
    if global_14 != 6 then jump lbl_2e649
    local_3d76 = "Aqueça a ponta para 180°C ou mais antes de girar o extrusor."
    local_3db4 = "Claro"
    jmp lbl_2e6c1

lbl_2e649:
    if global_14 != 7 then jump lbl_2e6c1
    local_3d76 = "Riscalda la testa a 180°C o oltre prima di ruotare l'estrusore."
    local_3db4 = "Certamente"

lbl_2e6c1:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=54, w=268, h=104, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="请转动挤出机之前将喷嘴加热到180℃以上"
; text:
;   0: "转动挤出机之前将喷嘴加热到180℃以上"
;   1: "Heat the nozzle to 180°C or above before rotating the extruder."
;   2: "押し出し機を回転させる前にノズルを180℃以上に加熱してください。"
;   3: "Heizen Sie die Düse vor dem Drehen des Extruders auf 180°C oder mehr."
;   4: "Caliente la boquilla a 180°C o más antes de girar el extrusor."
;   5: "Chauffez la buse à 180°C ou plus avant de faire tourner l'extrudeuse."
;   6: "Aqueça a ponta para 180°C ou mais antes de girar o extrusor."
;   7: "Riscalda la testa a 180°C o oltre prima di ruotare l'estrusore."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2de9a
; tim=1000, en=1

; timer
.org 0x2de9a
    if global_1c <= 0 then jump lbl_2def6
    if global_20 <= 0 then jump lbl_2def6
    global_20--
    if global_20 != 0 then jump lbl_2def6
    dim = global_30

lbl_2def6:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2df10

; touch_release
.org 0x2df10
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2df48
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确定"
; text:
;   0: "确定"
;   1: "Sure"
;   2: "もちろん"
;   3: "Gewiss"
;   4: "Seguro"
;   5: "Bien sûr"
;   6: "Claro"
;   7: "Certamente"
; touch_release reports to the host: page <page>, widget 0
; 02e0ea:  ff ff                                            |..|

; touch_release
.org 0x2df48
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 410 bytes (6 trailing zero bytes dropped)
; 02e0fa:  00 00 00 00 e8 af b7 e8 bd ac e5 8a a8 e6 8c a4  |................|
; 02e10a:  e5 87 ba e6 9c ba e4 b9 8b e5 89 8d e5 b0 86 e5  |................|
; 02e11a:  96 b7 e5 98 b4 e5 8a a0 e7 83 ad e5 88 b0 31 38  |..............18|
; 02e12a:  30 e2 84 83 e4 bb a5 e4 b8 8a 00 00 27 00 ff ff  |0...........'...|
; 02e13a:  ff ff 01 01 00 00 0a 00 00 ab 00 00 01 00 00 00  |................|
; 02e14a:  62 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02e15a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02e16a:  00 00 7f 00 00 00 00 00 f3 00 2b 00 33 00 32 00  |..........+.3.2.|
; 02e17a:  25 01 5c 00 00 00 00 00 00 00 00 00 00 01 26 00  |%.\...........&.|
; 02e18a:  27 00 ff ff ff ff 01 01 00 00 0a 00 0c ab 00 00  |'...............|
; 02e19a:  01 00 00 00 62 05 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02e1aa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02e1ba:  00 00 00 00 00 00 7f 00 00 00 00 00 2c 01 2b 00  |............,.+.|
; 02e1ca:  33 00 32 00 5e 01 5c 00 00 00 00 00 00 00 00 00  |3.2.^.\.........|
; 02e1da:  00 01 26 00 27 00 ff ff ff ff 01 01 00 00 0a 00  |..&.'...........|
; 02e1ea:  18 ab 00 00 01 00 00 00 62 06 00 00 00 00 00 00  |........b.......|
; 02e1fa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02e20a:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02e21a:  80 00 65 00 33 00 32 00 b2 00 96 00 00 00 00 00  |..e.3.2.........|
; 02e22a:  00 00 00 00 e7 a1 ae e5 ae 9a 00 ff ff ff 01 01  |................|
; 02e23a:  00 00 0a 00 24 ab 00 00 01 00 00 00 62 07 00 00  |....$.......b...|
; 02e24a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02e25a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02e26a:  00 00 00 00 ba 00 65 00 33 00 32 00 ec 00 96 00  |......e.3.2.....|
; 02e27a:  00 00 00 00 00 00 00 00 00 01 26 00 27 00 ff ff  |..........&.'...|
; 02e28a:  ff ff 01 01 00 00 0a 00 30 ab                    |........0.|
