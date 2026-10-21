; page 8: 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xd94, 0xa44c, 0xa46c

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x1f31f41b
; flags=0x37, aph=127, events: event_3=0xdfdd
; sta=2, pic=2
; 00e1a0:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xdfdd
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0xe2b4
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_e2f7
    local_af8 = "确定"
    jmp lbl_e45b

lbl_e2f7:
    if global_14 != 1 then jump lbl_e328
    local_af8 = "Sure"
    jmp lbl_e45b

lbl_e328:
    if global_14 != 2 then jump lbl_e361
    local_af8 = "もちろん"
    jmp lbl_e45b

lbl_e361:
    if global_14 != 3 then jump lbl_e394
    local_af8 = "Gewiss"
    jmp lbl_e45b

lbl_e394:
    if global_14 != 4 then jump lbl_e3c7
    local_af8 = "Seguro"
    jmp lbl_e45b

lbl_e3c7:
    if global_14 != 5 then jump lbl_e3fd
    local_af8 = "Bien sûr"
    T 0x5e

lbl_e3fd:
    if global_14 != 6 then jump lbl_e42f
    local_af8 = "Claro"
    jmp lbl_e45b

lbl_e42f:
    if global_14 != 7 then jump lbl_e45b
    local_af8 = "Certamente"

lbl_e45b:
    doevents
    down
    up

; object id 1 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xe023
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
; 00e1f0:  ff ff                                            |..|

; touch_release
.org 0xe023
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    timer

; object id 258 (text 't0'): x=105, y=61, w=268, h=96, name hash=0xc02992d9
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="192.168.1.1"

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0xe09e
; tim=1000, en=1

; timer
.org 0xe09e
    if global_1c <= 0 then jump lbl_e0fa
    if global_20 <= 0 then jump lbl_e0fa
    global_20--
    if global_20 != 0 then jump lbl_e0fa
    dim = global_30

lbl_e0fa:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0xe114

; touch_release
.org 0xe114
    global_20 = global_18
    dims = global_2c

; data after the object structs, 102 bytes (10 trailing zero bytes dropped)
; 00e240:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 00 00  |................|
; 00e250:  62 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 00e260:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e270:  00 00 7f 00 00 00 00 00 26 01 dc 00 4b 00 21 00  |........&...K.!.|
; 00e280:  70 01 fc 00 00 00 00 00 00 00 00 00 00 00 06 00  |p...............|
; 00e290:  07 00 ff ff ff ff 01 01 00 00 64 00 60 a7 00 00  |..........d.`...|
; 00e2a0:  01 00 00 00 62 04                                |....b.|
