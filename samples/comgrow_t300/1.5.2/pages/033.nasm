; page 33 'stoping': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'stoping'): x=0, y=0, w=480, h=272, name hash=0xde9616a
; flags=0x37, aph=127, events: event_3=0x24d16
; sta=2, pic=1
; 024e65:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x24d16
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x25041
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_25099
    local_2f6e = "正在处理中请稍后..."
    jmp lbl_252c1

lbl_25099:
    if global_14 != 1 then jump lbl_250df
    local_2f6e = "Processing please wait..."
    jmp lbl_252c1

lbl_250df:
    if global_14 != 2 then jump lbl_2513c
    local_2f6e = "処理中です。お待​​ちください..."
    jmp lbl_252c1

lbl_2513c:
    if global_14 != 3 then jump lbl_25186
    local_2f6e = "Verarbeite .. Bitte warten..."
    jmp lbl_252c1

lbl_25186:
    if global_14 != 4 then jump lbl_251d4
    local_2f6e = "Procesando .. por favor espere..."
    jmp lbl_252c1

lbl_251d4:
    if global_14 != 5 then jump lbl_2522b
    local_2f6e = "Traitement en cours, veuillez patienter..."
    jmp lbl_252c1

lbl_2522b:
    if global_14 != 6 then jump lbl_2527c
    local_2f6e = "Processando ... Por favor aguarde..."
    jmp lbl_252c1

lbl_2527c:
    if global_14 != 7 then jump lbl_252c1
    local_2f6e = "Elaborazione in corso, attendere..."

lbl_252c1:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=75, w=268, h=122, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="正在处理中请稍后..."
; text:
;   0: "正在处理中请稍后..."
;   1: "Processing please wait..."
;   2: "処理中です。お待​​ちください..."
;   3: "Verarbeite .. Bitte warten..."
;   4: "Procesando .. por favor espere..."
;   5: "Traitement en cours, veuillez patienter..."
;   6: "Processando ... Por favor aguarde..."
;   7: "Elaborazione in corso, attendere..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x24d6d
; tim=1000, en=1

; timer
.org 0x24d6d
    if global_1c <= 0 then jump lbl_24dc9
    if global_20 <= 0 then jump lbl_24dc9
    global_20--
    if global_20 != 0 then jump lbl_24dc9
    dim = global_30

lbl_24dc9:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x24de3

; touch_release
.org 0x24de3
    global_20 = global_18
    dims = global_2c

; data after the object structs, 290 bytes (22 trailing zero bytes dropped)
; 024f05:  00 00 00 00 e6 ad a3 e5 9c a8 e5 a4 84 e7 90 86  |................|
; 024f15:  e4 b8 ad e8 af b7 e7 a8 8d e5 90 8e 2e 2e 2e 00  |................|
; 024f25:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 024f35:  6b 00 ac 00 80 00 27 00 ea 00 d2 00 00 00 00 00  |k.....'.........|
; 024f45:  00 00 00 00 00 00 04 00 05 00 ff ff ff ff 01 01  |................|
; 024f55:  00 00 64 00 6c a6 00 00 01 00 00 00 62 05 00 00  |..d.l.......b...|
; 024f65:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024f75:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 024f85:  00 00 00 00 f4 00 ac 00 80 00 27 00 73 01 d2 00  |..........'.s...|
; 024f95:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 024fa5:  ff ff 01 01 00 00 64 00 d4 a6 00 00 01 00 00 00  |......d.........|
; 024fb5:  00 00 00 00 e6 98 af e5 90 a6 e5 81 9c e6 ad a2  |................|
; 024fc5:  e6 89 93 e5 8d b0 ef bc 9f 00 ae a4 e8 80 97 e6  |................|
; 024fd5:  9d 90 e5 b7 b2 e6 8c a4 e5 87 ba 3b e8 8b a5 e6  |...........;....|
; 024fe5:  9c aa e8 80 97 e6 9d 90 e6 9c aa e6 8c a4 e5 87  |................|
; 024ff5:  ba e5 96 b7 e5 98 b4 ef bc 8c e8 af b7 e9 80 89  |................|
; 025005:  e6 8b a9 e7 bb a7 e7 bb ad e6 8c a4 e5 87 ba e3  |................|
; 025015:  80 82 00 01 00 00 64 00 40 ab 00 00 01 00 00 00  |......d.@.......|
; 025025:  62 0d                                            |b.|
