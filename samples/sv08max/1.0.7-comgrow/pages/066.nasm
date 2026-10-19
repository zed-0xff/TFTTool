; page 66 'auto_leveling': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'auto_leveling'): x=0, y=0, w=480, h=272, name hash=0x21fa5917
; flags=0x37, aph=127, events: event_3=0x425ef
; sta=2, pic=1
; 04273e:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x425ef
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x4291a
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_42975
    local_6038 = "自动调平中，请稍后..."
    jmp lbl_42bcd

lbl_42975:
    if global_14 != 1 then jump lbl_429c4
    local_6038 = "Automatic leveling, please wait..."
    jmp lbl_42bcd

lbl_429c4:
    if global_14 != 2 then jump lbl_42a21
    local_6038 = "自動レベリング、お待ちください..."
    jmp lbl_42bcd

lbl_42a21:
    if global_14 != 3 then jump lbl_42a78
    local_6038 = "Automatische Nivellierung, bitte warten..."
    jmp lbl_42bcd

lbl_42a78:
    if global_14 != 4 then jump lbl_42ad2
    local_6038 = "Nivelación automática, por favor espere...."
    jmp lbl_42bcd

lbl_42ad2:
    if global_14 != 5 then jump lbl_42b30
    local_6038 = "Mise à niveau automatique, veuillez patienter..."
    jmp lbl_42bcd

lbl_42b30:
    if global_14 != 6 then jump lbl_42b80
    local_6038 = "Nivelamento automático, aguarde..."
    jmp lbl_42bcd

lbl_42b80:
    if global_14 != 7 then jump lbl_42bcd
    local_6038 = "Livellamento automatico, attendere prego..."

lbl_42bcd:
    doevents

; object id 1 (text 't0'): x=106, y=75, w=268, h=122, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="自动调平中，请稍后..."
; text:
;   0: "自动调平中，请稍后..."
;   1: "Automatic leveling, please wait..."
;   2: "自動レベリング、お待ちください..."
;   3: "Automatische Nivellierung, bitte warten..."
;   4: "Nivelación automática, por favor espere...."
;   5: "Mise à niveau automatique, veuillez patienter..."
;   6: "Nivelamento automático, aguarde..."
;   7: "Livellamento automatico, attendere prego..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x42646
; tim=1000, en=1

; timer
.org 0x42646
    if global_1c <= 0 then jump lbl_426a2
    if global_20 <= 0 then jump lbl_426a2
    global_20--
    if global_20 != 0 then jump lbl_426a2
    dim = global_30

lbl_426a2:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x426bc

; touch_release
.org 0x426bc
    global_20 = global_18
    dims = global_2c

; data after the object structs, 303 bytes (9 trailing zero bytes dropped)
; 0427de:  00 00 00 00 e8 87 aa e5 8a a8 e8 b0 83 e5 b9 b3  |................|
; 0427ee:  e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d e5 90 8e 2e  |................|
; 0427fe:  2e 2e 00 00 62 08 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 04280e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04281e:  00 00 00 00 00 00 7f 00 00 00 00 00 15 01 73 00  |..............s.|
; 04282e:  52 00 2f 00 66 01 a1 00 00 00 00 00 00 00 00 00  |R./.f...........|
; 04283e:  00 00 56 00 57 00 ff ff ff ff 01 01 00 00 64 00  |..V.W.........d.|
; 04284e:  44 a6 00 00 01 00 00 00 62 09 00 00 00 00 00 00  |D.......b.......|
; 04285e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04286e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 04287e:  f0 00 a9 00 75 00 2a 00 64 01 d2 00 00 00 00 00  |....u.*.d.......|
; 04288e:  00 00 00 00 00 00 56 00 57 00 ff ff ff ff 01 01  |......V.W.......|
; 04289e:  00 00 64 00 ac a6 00 00 01 00 00 00 34 0a 00 00  |..d.........4...|
; 0428ae:  00 00 00 00 00 00 00 00 01 00 00 00 33 0b 00 00  |............3...|
; 0428be:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0428ce:  00 00 00 00 00 00 00 00 64 00 01 00 62 0c 00 00  |........d...b...|
; 0428de:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0428ee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0428fe:  00 00 00 00 78 00 a9 00 75 00 2a 00 ec 00 d2     |....x...u.*....|
