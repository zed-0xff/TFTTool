; page 42 'heat_tip': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'heat_tip'): x=0, y=0, w=480, h=272, name hash=0x69478025
; flags=0x37, aph=127, events: event_3=0x2f0c1
; sta=2, pic=2
; 02f284:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2f0c1
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x2f51c
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_2f59e
    local_3d98 = "转动挤出机之前将喷嘴加热到180℃以上"
    local_3dd6 = "确定"
    jmp lbl_2f93f

lbl_2f59e:
    if global_14 != 1 then jump lbl_2f61b
    local_3d98 = "Heat the nozzle to 180°C or above before rotating the extruder."
    local_3dd6 = "Sure"
    jmp lbl_2f93f

lbl_2f61b:
    if global_14 != 2 then jump lbl_2f6bd
    local_3d98 = "押し出し機を回転させる前にノズルを180℃以上に加熱してください。"
    local_3dd6 = "もちろん"
    jmp lbl_2f93f

lbl_2f6bd:
    if global_14 != 3 then jump lbl_2f743
    local_3d98 = "Heizen Sie die Düse vor dem Drehen des Extruders auf 180°C oder mehr."
    local_3dd6 = "Gewiss"
    jmp lbl_2f93f

lbl_2f743:
    if global_14 != 4 then jump lbl_2f7c2
    local_3d98 = "Caliente la boquilla a 180°C o más antes de girar el extrusor."
    local_3dd6 = "Seguro"
    jmp lbl_2f93f

lbl_2f7c2:
    if global_14 != 5 then jump lbl_2f84b
    local_3d98 = "Chauffez la buse à 180°C ou plus avant de faire tourner l'extrudeuse."
    local_3dd6 = "Bien sûr"
    jmp lbl_2f93f

lbl_2f84b:
    if global_14 != 6 then jump lbl_2f8c7
    local_3d98 = "Aqueça a ponta para 180°C ou mais antes de girar o extrusor."
    local_3dd6 = "Claro"
    jmp lbl_2f93f

lbl_2f8c7:
    if global_14 != 7 then jump lbl_2f93f
    local_3d98 = "Riscalda la testa a 180°C o oltre prima di ruotare l'estrusore."
    local_3dd6 = "Certamente"

lbl_2f93f:
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
; flags=0x27, events: timer=0x2f118
; tim=1000, en=1

; timer
.org 0x2f118
    if global_1c <= 0 then jump lbl_2f174
    if global_20 <= 0 then jump lbl_2f174
    global_20--
    if global_20 != 0 then jump lbl_2f174
    dim = global_30

lbl_2f174:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2f18e

; touch_release
.org 0x2f18e
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2f1c6
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
; 02f368:  ff ff                                            |..|

; touch_release
.org 0x2f1c6
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 410 bytes (6 trailing zero bytes dropped)
; 02f378:  00 00 00 00 e8 af b7 e8 bd ac e5 8a a8 e6 8c a4  |................|
; 02f388:  e5 87 ba e6 9c ba e4 b9 8b e5 89 8d e5 b0 86 e5  |................|
; 02f398:  96 b7 e5 98 b4 e5 8a a0 e7 83 ad e5 88 b0 31 38  |..............18|
; 02f3a8:  30 e2 84 83 e4 bb a5 e4 b8 8a 00 00 27 00 ff ff  |0...........'...|
; 02f3b8:  ff ff 01 01 00 00 0a 00 ac c0 00 00 01 00 00 00  |................|
; 02f3c8:  62 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02f3d8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02f3e8:  00 00 7f 00 00 00 00 00 f3 00 2b 00 33 00 32 00  |..........+.3.2.|
; 02f3f8:  25 01 5c 00 00 00 00 00 00 00 00 00 00 01 26 00  |%.\...........&.|
; 02f408:  27 00 ff ff ff ff 01 01 00 00 0a 00 b8 c0 00 00  |'...............|
; 02f418:  01 00 00 00 62 05 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02f428:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02f438:  00 00 00 00 00 00 7f 00 00 00 00 00 2c 01 2b 00  |............,.+.|
; 02f448:  33 00 32 00 5e 01 5c 00 00 00 00 00 00 00 00 00  |3.2.^.\.........|
; 02f458:  00 01 26 00 27 00 ff ff ff ff 01 01 00 00 0a 00  |..&.'...........|
; 02f468:  c4 c0 00 00 01 00 00 00 62 06 00 00 00 00 00 00  |........b.......|
; 02f478:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02f488:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02f498:  80 00 65 00 33 00 32 00 b2 00 96 00 00 00 00 00  |..e.3.2.........|
; 02f4a8:  00 00 00 00 e7 a1 ae e5 ae 9a 00 ff ff ff 01 01  |................|
; 02f4b8:  00 00 0a 00 d0 c0 00 00 01 00 00 00 62 07 00 00  |............b...|
; 02f4c8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02f4d8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02f4e8:  00 00 00 00 ba 00 65 00 33 00 32 00 ec 00 96 00  |......e.3.2.....|
; 02f4f8:  00 00 00 00 00 00 00 00 00 01 26 00 27 00 ff ff  |..........&.'...|
; 02f508:  ff ff 01 01 00 00 0a 00 dc c0                    |..........|
