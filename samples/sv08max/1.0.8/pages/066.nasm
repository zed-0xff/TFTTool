; page 66 'auto_leveling': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'auto_leveling'): x=0, y=0, w=480, h=272, name hash=0x21fa5917
; flags=0x37, aph=127, events: event_3=0x431a9
; sta=2, pic=1
; 0432f8:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x431a9
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x434d4
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_4352f
    local_5fae = "自动调平中，请稍后..."
    jmp lbl_43787

lbl_4352f:
    if global_14 != 1 then jump lbl_4357e
    local_5fae = "Automatic leveling, please wait..."
    jmp lbl_43787

lbl_4357e:
    if global_14 != 2 then jump lbl_435db
    local_5fae = "自動レベリング、お待ちください..."
    jmp lbl_43787

lbl_435db:
    if global_14 != 3 then jump lbl_43632
    local_5fae = "Automatische Nivellierung, bitte warten..."
    jmp lbl_43787

lbl_43632:
    if global_14 != 4 then jump lbl_4368c
    local_5fae = "Nivelación automática, por favor espere...."
    jmp lbl_43787

lbl_4368c:
    if global_14 != 5 then jump lbl_436ea
    local_5fae = "Mise à niveau automatique, veuillez patienter..."
    jmp lbl_43787

lbl_436ea:
    if global_14 != 6 then jump lbl_4373a
    local_5fae = "Nivelamento automático, aguarde..."
    jmp lbl_43787

lbl_4373a:
    if global_14 != 7 then jump lbl_43787
    local_5fae = "Livellamento automatico, attendere prego..."

lbl_43787:
    doevents
    down
    up
    unload
    down
    up

; object id 1 (text 't0'): x=106, y=95, w=268, h=64, name hash=0xc02992d9
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
; flags=0x27, events: timer=0x43200
; tim=1000, en=1

; timer
.org 0x43200
    if global_1c <= 0 then jump lbl_4325c
    if global_20 <= 0 then jump lbl_4325c
    global_20--
    if global_20 != 0 then jump lbl_4325c
    dim = global_30

lbl_4325c:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x43276

; touch_release
.org 0x43276
    global_20 = global_18
    dims = global_2c

; data after the object structs, 303 bytes (9 trailing zero bytes dropped)
; 043398:  00 00 00 00 e8 87 aa e5 8a a8 e8 b0 83 e5 b9 b3  |................|
; 0433a8:  e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d e5 90 8e 2e  |................|
; 0433b8:  2e 2e 00 00 62 08 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0433c8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0433d8:  00 00 00 00 00 00 7f 00 00 00 00 00 15 01 73 00  |..............s.|
; 0433e8:  52 00 2f 00 66 01 a1 00 00 00 00 00 00 00 00 00  |R./.f...........|
; 0433f8:  00 00 56 00 57 00 ff ff ff ff 01 01 00 00 64 00  |..V.W.........d.|
; 043408:  f0 bb 00 00 01 00 00 00 62 09 00 00 00 00 00 00  |........b.......|
; 043418:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 043428:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 043438:  f0 00 a9 00 75 00 2a 00 64 01 d2 00 00 00 00 00  |....u.*.d.......|
; 043448:  00 00 00 00 00 00 56 00 57 00 ff ff ff ff 01 01  |......V.W.......|
; 043458:  00 00 64 00 58 bc 00 00 01 00 00 00 34 0a 00 00  |..d.X.......4...|
; 043468:  00 00 00 00 00 00 00 00 01 00 00 00 33 0b 00 00  |............3...|
; 043478:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 043488:  00 00 00 00 00 00 00 00 64 00 01 00 62 0c 00 00  |........d...b...|
; 043498:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0434a8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0434b8:  00 00 00 00 78 00 a9 00 75 00 2a 00 ec 00 d2     |....x...u.*....|
