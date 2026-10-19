; page 35 'saving': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'saving'): x=0, y=0, w=480, h=272, name hash=0xbb1969cd
; flags=0x37, aph=127, events: event_3=0x25f00
; sta=2, pic=1
; 02604f:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x25f00
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x2622b
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_2627e
    local_30a3 = "保存中,请稍候..."
    jmp lbl_2648a

lbl_2627e:
    if global_14 != 1 then jump lbl_262c1
    local_30a3 = "Saving, please wait..."
    jmp lbl_2648a

lbl_262c1:
    if global_14 != 2 then jump lbl_2631e
    local_30a3 = "保存しています、お待ちください..."
    jmp lbl_2648a

lbl_2631e:
    if global_14 != 3 then jump lbl_26364
    local_30a3 = "Speichern bitte warten..."
    T 0x126

lbl_26364:
    if global_14 != 4 then jump lbl_263ae
    local_30a3 = "Guardando por favor espere..."
    jmp lbl_2648a

lbl_263ae:
    if global_14 != 5 then jump lbl_263fc
    local_30a3 = "Sauvegarde, veuillez patienter..."
    jmp lbl_2648a

lbl_263fc:
    if global_14 != 6 then jump lbl_26446
    local_30a3 = "Salvando, por favor espere..."
    jmp lbl_2648a

lbl_26446:
    if global_14 != 7 then jump lbl_2648a
    local_30a3 = "Salvataggio in corso, attendere..."

lbl_2648a:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=75, w=268, h=122, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="保存中,请稍候..."
; text:
;   0: "保存中,请稍候..."
;   1: "Saving, please wait..."
;   2: "保存しています、お待ちください..."
;   3: "Speichern bitte warten..."
;   4: "Guardando por favor espere..."
;   5: "Sauvegarde, veuillez patienter..."
;   6: "Salvando, por favor espere..."
;   7: "Salvataggio in corso, attendere..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x25f57
; tim=1000, en=1

; timer
.org 0x25f57
    if global_1c <= 0 then jump lbl_25fb3
    if global_20 <= 0 then jump lbl_25fb3
    global_20--
    if global_20 != 0 then jump lbl_25fb3
    dim = global_30

lbl_25fb3:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x25fcd

; touch_release
.org 0x25fcd
    global_20 = global_18
    dims = global_2c

; data after the object structs, 308 bytes (4 trailing zero bytes dropped)
; 0260ef:  00 00 00 00 e4 bf 9d e5 ad 98 e4 b8 ad 2c e8 af  |.............,..|
; 0260ff:  b7 e7 a8 8d e5 80 99 2e 2e 2e 00 00 00 00 00 00  |................|
; 02610f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02611f:  00 00 00 00 6b 00 ac 00 80 00 27 00 ea 00 d2 00  |....k.....'.....|
; 02612f:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 02613f:  ff ff 01 01 00 00 64 00 c4 a6 00 00 01 00 00 00  |......d.........|
; 02614f:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02615f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02616f:  00 00 7f 00 00 00 00 00 f4 00 ac 00 80 00 27 00  |..............'.|
; 02617f:  73 01 d2 00 00 00 00 00 00 00 00 00 00 00 04 00  |s...............|
; 02618f:  05 00 ff ff ff ff 01 01 00 00 64 00 2c a7 00 00  |..........d.,...|
; 02619f:  01 00 00 00 74 06 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 0261af:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0261bf:  00 00 00 00 00 00 7f 00 00 00 00 00 c0 00 77 00  |..............w.|
; 0261cf:  64 00 1e 00 23 01 94 00 00 00 00 00 01 00 00 00  |d...#...........|
; 0261df:  00 00 ff ff 00 00 01 01 00 00 0a 00 94 a7 00 00  |................|
; 0261ef:  00 00 00 00 00 00 00 00 00 00 00 00 e6 a3 80 e6  |................|
; 0261ff:  b5 8b e5 88 b0 e6 89 93 e5 8d b0 e6 97 b6 e4 bf  |................|
; 02620f:  ae e6 94 b9 7a 6f 66 66 73 65 74 ef bc 8c e6 98  |....zoffset.....|
; 02621f:  af e5 90 a6                                      |....|
