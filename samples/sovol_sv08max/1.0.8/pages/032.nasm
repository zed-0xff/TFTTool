; page 32 'if_stop': 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba1c, 0xba3c, 0xba90

; object id 0 (page 'if_stop'): x=0, y=0, w=480, h=272, name hash=0x2ec115e7
; flags=0x37, aph=127, events: event_3=0x260d9
; sta=2, pic=4
; 026310:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x260d9
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x26664
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_266b6
    local_3006 = "是否停止打印？"
    jmp lbl_26873

lbl_266b6:
    if global_14 != 1 then jump lbl_266f1
    local_3006 = "Stop printing?"
    jmp lbl_26873

lbl_266f1:
    if global_14 != 2 then jump lbl_2673a
    local_3006 = "印刷を停止しますか?"
    jmp lbl_26873

lbl_2673a:
    if global_14 != 3 then jump lbl_26777
    local_3006 = "Drucken stoppen?"
    jmp lbl_26873

lbl_26777:
    if global_14 != 4 then jump lbl_267b8
    local_3006 = "¿Dejar de imprimir?"
    jmp lbl_26873

lbl_267b8:
    if global_14 != 5 then jump lbl_267fd
    local_3006 = "Arrêter l'impression ?"
    jmp lbl_26873

lbl_267fd:
    if global_14 != 6 then jump lbl_2683c
    local_3006 = "Parar de imprimir?"
    jmp lbl_26873

lbl_2683c:
    if global_14 != 7 then jump lbl_26873
    local_3006 = "Smettere di stampare?"

lbl_26873:
    if global_14 != 0 then jump lbl_268b2
    local_3044 = "是"
    local_306d = "否"
    jmp lbl_26a67

lbl_268b2:
    if global_14 != 1 then jump lbl_268f0
    local_3044 = "Yes"
    local_306d = "No"
    jmp lbl_26a67

lbl_268f0:
    if global_14 != 2 then jump lbl_26938
    local_3044 = "はい"
    local_306d = "いいえ"
    T 0x12f

lbl_26938:
    if global_14 != 3 then jump lbl_26977
    local_3044 = "Ja"
    local_306d = "NEIN"
    jmp lbl_26a67

lbl_26977:
    if global_14 != 4 then jump lbl_269b5
    local_3044 = "Sí"
    local_306d = "No"
    jmp lbl_26a67

lbl_269b5:
    if global_14 != 5 then jump lbl_269f4
    local_3044 = "Oui"
    local_306d = "Non"
    jmp lbl_26a67

lbl_269f4:
    if global_14 != 6 then jump lbl_26a34
    local_3044 = "Sim"
    local_306d = "Não"
    jmp lbl_26a67

lbl_26a34:
    if global_14 != 7 then jump lbl_26a67
    local_3044 = "SÌ"
    local_306d = "NO"

lbl_26a67:
    doevents
    down
    up

; object id 1 (text 't0'): x=131, y=55, w=224, h=102, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="是否停止打印？"
; text:
;   0: "是否停止打印？"
;   1: "Stop printing?"
;   2: "印刷を停止しますか?"
;   3: "Drucken stoppen?"
;   4: "¿Dejar de imprimir?"
;   5: "Arrêter l'impression ?"
;   6: "Parar de imprimir?"
;   7: "Smettere di stampare?"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x26130
; tim=1000, en=1

; timer
.org 0x26130
    if global_1c <= 0 then jump lbl_2618c
    if global_20 <= 0 then jump lbl_2618c
    global_20--
    if global_20 != 0 then jump lbl_2618c
    dim = global_30

lbl_2618c:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x261a6

; touch_release
.org 0x261a6
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x261de
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="是"
; text:
;   0: "是"
;   1: "Yes"
;   2: "はい"
;   3: "Ja"
;   4: "Sí"
;   5: "Oui"
;   6: "Sim"
;   7: "SÌ"
; touch_release reports to the host: page <page>, widget 0
; 0263f4:  ff ff                                            |..|

; touch_release
.org 0x261de
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x26248
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="否"
; text:
;   0: "否"
;   1: "No"
;   2: "いいえ"
;   3: "NEIN"
;   4: "No"
;   5: "Non"
;   6: "Não"
;   7: "NO"
; touch_release reports to the host: page <page>, widget 1
; 026448:  ff ff                                            |..|

; touch_release
.org 0x26248
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 494 bytes (26 trailing zero bytes dropped)
; 026458:  00 00 00 00 e6 98 af e5 90 a6 e5 81 9c e6 ad a2  |................|
; 026468:  e6 89 93 e5 8d b0 ef bc 9f 00 ae a4 e8 80 97 e6  |................|
; 026478:  9d 90 e5 b7 b2 e6 8c a4 e5 87 ba 3b e8 8b a5 e6  |...........;....|
; 026488:  9c aa e8 80 97 e6 9d 90 e6 9c aa e6 8c a4 e5 87  |................|
; 026498:  ba e5 96 b7 e5 98 b4 ef bc 8c e8 af b7 e9 80 89  |................|
; 0264a8:  e6 8b a9 e7 bb a7 e7 bb ad e6 8c a4 e5 87 ba e3  |................|
; 0264b8:  80 82 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0264c8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0264d8:  00 00 00 00 00 00 00 00 46 00 26 00 41 01 82 00  |........F.&.A...|
; 0264e8:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 0264f8:  ff ff 01 01 00 00 64 00 7c bf 00 00 01 00 00 00  |......d.|.......|
; 026508:  62 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 026518:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026528:  00 00 7f 00 00 00 00 00 80 01 5d 00 e7 bb a7 e7  |..........].....|
; 026538:  bb ad e6 89 93 e5 8d b0 00 00 00 00 00 00 24 00  |..............$.|
; 026548:  25 00 ff ff ff ff 01 01 00 00 64 00 e4 bf 00 00  |%.........d.....|
; 026558:  01 00 00 00 62 10 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 026568:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026578:  00 00 00 00 00 00 7f 00 00 00 00 00 fc 00 93 00  |................|
; 026588:  46 00 26 00 e6 98 af 00 bb ad e6 8c a4 e5 87 ba  |F.&.............|
; 026598:  00 00 24 00 00 00 00 00 ff ff 01 01 00 00 64 00  |..$...........d.|
; 0265a8:  4c c0 00 00 01 00 00 00 62 12 00 00 00 00 00 00  |L.......b.......|
; 0265b8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0265c8:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0265d8:  80 01 93 00 46 00 26 00 c5 01 b8 00 00 00 00 00  |....F.&.........|
; 0265e8:  00 00 00 00 00 00 24 00 25 00 ff ff e5 90 a6 00  |......$.%.......|
; 0265f8:  88 90 00 00 b4 c0 00 00 01 00 00 00 33 13 00 00  |............3...|
; 026608:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026618:  00 00 00 00 00 00 00 00 64 00 01 00 34 14 00 00  |........d...4...|
; 026628:  00 00 00 00 00 00 00 00 00 00 00 00 34 15 00 00  |............4...|
; 026638:  00 00 00 00 00 00 00 00 00 00 00 00 33 16        |............3.|
