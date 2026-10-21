; page 32 'if_stop': 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa470, 0xa490, 0xa4e4

; object id 0 (page 'if_stop'): x=0, y=0, w=480, h=272, name hash=0x2ec115e7
; flags=0x37, aph=127, events: event_3=0x24367
; sta=2, pic=4
; 02459e:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x24367
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x248f2
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_24944
    local_2ebf = "是否停止打印？"
    jmp lbl_24b01

lbl_24944:
    if global_14 != 1 then jump lbl_2497f
    local_2ebf = "Stop printing?"
    jmp lbl_24b01

lbl_2497f:
    if global_14 != 2 then jump lbl_249c8
    local_2ebf = "印刷を停止しますか?"
    jmp lbl_24b01

lbl_249c8:
    if global_14 != 3 then jump lbl_24a05
    local_2ebf = "Drucken stoppen?"
    jmp lbl_24b01

lbl_24a05:
    if global_14 != 4 then jump lbl_24a46
    local_2ebf = "¿Dejar de imprimir?"
    jmp lbl_24b01

lbl_24a46:
    if global_14 != 5 then jump lbl_24a8b
    local_2ebf = "Arrêter l'impression ?"
    jmp lbl_24b01

lbl_24a8b:
    if global_14 != 6 then jump lbl_24aca
    local_2ebf = "Parar de imprimir?"
    jmp lbl_24b01

lbl_24aca:
    if global_14 != 7 then jump lbl_24b01
    local_2ebf = "Smettere di stampare?"

lbl_24b01:
    if global_14 != 0 then jump lbl_24b40
    local_2efd = "是"
    local_2f26 = "否"
    jmp lbl_24cf5

lbl_24b40:
    if global_14 != 1 then jump lbl_24b7e
    local_2efd = "Yes"
    local_2f26 = "No"
    jmp lbl_24cf5

lbl_24b7e:
    if global_14 != 2 then jump lbl_24bc6
    local_2efd = "はい"
    local_2f26 = "いいえ"
    T 0x12f

lbl_24bc6:
    if global_14 != 3 then jump lbl_24c05
    local_2efd = "Ja"
    local_2f26 = "NEIN"
    jmp lbl_24cf5

lbl_24c05:
    if global_14 != 4 then jump lbl_24c43
    local_2efd = "Sí"
    local_2f26 = "No"
    jmp lbl_24cf5

lbl_24c43:
    if global_14 != 5 then jump lbl_24c82
    local_2efd = "Oui"
    local_2f26 = "Non"
    jmp lbl_24cf5

lbl_24c82:
    if global_14 != 6 then jump lbl_24cc2
    local_2efd = "Sim"
    local_2f26 = "Não"
    jmp lbl_24cf5

lbl_24cc2:
    if global_14 != 7 then jump lbl_24cf5
    local_2efd = "SÌ"
    local_2f26 = "NO"

lbl_24cf5:
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
; flags=0x27, events: timer=0x243be
; tim=1000, en=1

; timer
.org 0x243be
    if global_1c <= 0 then jump lbl_2441a
    if global_20 <= 0 then jump lbl_2441a
    global_20--
    if global_20 != 0 then jump lbl_2441a
    dim = global_30

lbl_2441a:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x24434

; touch_release
.org 0x24434
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2446c
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
; 024682:  ff ff                                            |..|

; touch_release
.org 0x2446c
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x244d6
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
; 0246d6:  ff ff                                            |..|

; touch_release
.org 0x244d6
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 516 bytes (4 trailing zero bytes dropped)
; 0246e6:  00 00 00 00 e6 98 af e5 90 a6 e5 81 9c e6 ad a2  |................|
; 0246f6:  e6 89 93 e5 8d b0 ef bc 9f 00 ae a4 e8 80 97 e6  |................|
; 024706:  9d 90 e5 b7 b2 e6 8c a4 e5 87 ba 3b e8 8b a5 e6  |...........;....|
; 024716:  9c aa e8 80 97 e6 9d 90 e6 9c aa e6 8c a4 e5 87  |................|
; 024726:  ba e5 96 b7 e5 98 b4 ef bc 8c e8 af b7 e9 80 89  |................|
; 024736:  e6 8b a9 e7 bb a7 e7 bb ad e6 8c a4 e5 87 ba e3  |................|
; 024746:  80 82 00 01 00 00 64 00 40 ab 00 00 01 00 00 00  |......d.@.......|
; 024756:  62 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 024766:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024776:  00 00 7f 00 00 00 00 00 91 00 5e 00 46 00 26 00  |..........^.F.&.|
; 024786:  d6 00 83 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 024796:  25 00 ff ff ff ff 01 01 00 00 64 00 a8 ab 00 00  |%.........d.....|
; 0247a6:  01 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0247b6:  00 00 00 00 00 00 00 00 00 00 00 00 e7 bb a7 e7  |................|
; 0247c6:  bb ad e6 89 93 e5 8d b0 00 00 00 00 fc 00 5d 00  |..............].|
; 0247d6:  46 00 26 00 41 01 82 00 00 00 00 00 00 00 00 00  |F.&.A...........|
; 0247e6:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 0247f6:  10 ac 00 00 01 00 00 00 62 10 00 00 00 00 00 00  |........b.......|
; 024806:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024816:  00 00 00 00 e6 98 af 00 bb ad e6 8c a4 e5 87 ba  |................|
; 024826:  00 01 5d 00 00 00 00 00 c5 01 82 00 00 00 00 00  |..].............|
; 024836:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 024846:  00 00 64 00 78 ac 00 00 01 00 00 00 62 11 00 00  |..d.x.......b...|
; 024856:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024866:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 024876:  00 00 00 00 fc 00 93 00 46 00 26 00 e5 90 a6 00  |........F.&.....|
; 024886:  88 90 00 80 97 e6 9d 90 00 00 24 00 25 00 ff ff  |..........$.%...|
; 024896:  ff ff 01 01 00 00 64 00 e0 ac 00 00 01 00 00 00  |......d.........|
; 0248a6:  62 13 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0248b6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0248c6:  00 00 7f 00 00 00 00 00 80 01 93 00 46 00 26 00  |............F.&.|
; 0248d6:  c5 01 b8 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 0248e6:  25 00 ff ff                                      |%...|
