; page 33 'stoping': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'stoping'): x=0, y=0, w=480, h=272, name hash=0xde9616a
; flags=0x37, aph=127, events: event_3=0x26a88
; sta=2, pic=1
; 026bd7:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x26a88
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x26db3
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_26e0b
    local_30b5 = "正在处理中请稍后..."
    jmp lbl_27033

lbl_26e0b:
    if global_14 != 1 then jump lbl_26e51
    local_30b5 = "Processing please wait..."
    jmp lbl_27033

lbl_26e51:
    if global_14 != 2 then jump lbl_26eae
    local_30b5 = "処理中です。お待​​ちください..."
    jmp lbl_27033

lbl_26eae:
    if global_14 != 3 then jump lbl_26ef8
    local_30b5 = "Verarbeite .. Bitte warten..."
    jmp lbl_27033

lbl_26ef8:
    if global_14 != 4 then jump lbl_26f46
    local_30b5 = "Procesando .. por favor espere..."
    jmp lbl_27033

lbl_26f46:
    if global_14 != 5 then jump lbl_26f9d
    local_30b5 = "Traitement en cours, veuillez patienter..."
    jmp lbl_27033

lbl_26f9d:
    if global_14 != 6 then jump lbl_26fee
    local_30b5 = "Processando ... Por favor aguarde..."
    jmp lbl_27033

lbl_26fee:
    if global_14 != 7 then jump lbl_27033
    local_30b5 = "Elaborazione in corso, attendere..."

lbl_27033:
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
; flags=0x27, events: timer=0x26adf
; tim=1000, en=1

; timer
.org 0x26adf
    if global_1c <= 0 then jump lbl_26b3b
    if global_20 <= 0 then jump lbl_26b3b
    global_20--
    if global_20 != 0 then jump lbl_26b3b
    dim = global_30

lbl_26b3b:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x26b55

; touch_release
.org 0x26b55
    global_20 = global_18
    dims = global_2c

; data after the object structs, 303 bytes (9 trailing zero bytes dropped)
; 026c77:  00 00 00 00 e6 ad a3 e5 9c a8 e5 a4 84 e7 90 86  |................|
; 026c87:  e4 b8 ad e8 af b7 e7 a8 8d e5 90 8e 2e 2e 2e 00  |................|
; 026c97:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 026ca7:  6b 00 ac 00 80 00 27 00 ea 00 d2 00 00 00 00 00  |k.....'.........|
; 026cb7:  00 00 00 00 00 00 04 00 05 00 ff ff ff ff 01 01  |................|
; 026cc7:  00 00 64 00 18 bc 00 00 01 00 00 00 62 05 00 00  |..d.........b...|
; 026cd7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026ce7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 026cf7:  00 00 00 00 f4 00 ac 00 80 00 27 00 73 01 d2 00  |..........'.s...|
; 026d07:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 026d17:  ff ff 01 01 00 00 64 00 80 bc 00 00 01 00 00 00  |......d.........|
; 026d27:  00 00 00 00 e6 98 af e5 90 a6 e5 81 9c e6 ad a2  |................|
; 026d37:  e6 89 93 e5 8d b0 ef bc 9f 00 ae a4 e8 80 97 e6  |................|
; 026d47:  9d 90 e5 b7 b2 e6 8c a4 e5 87 ba 3b e8 8b a5 e6  |...........;....|
; 026d57:  9c aa e8 80 97 e6 9d 90 e6 9c aa e6 8c a4 e5 87  |................|
; 026d67:  ba e5 96 b7 e5 98 b4 ef bc 8c e8 af b7 e9 80 89  |................|
; 026d77:  e6 8b a9 e7 bb a7 e7 bb ad e6 8c a4 e5 87 ba e3  |................|
; 026d87:  80 82 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026d97:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f     |...............|
