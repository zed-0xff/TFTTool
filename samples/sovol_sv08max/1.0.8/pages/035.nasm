; page 35 'saving': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'saving'): x=0, y=0, w=480, h=272, name hash=0xbb1969cd
; flags=0x37, aph=127, events: event_3=0x27c72
; sta=2, pic=1
; 027dc1:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x27c72
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x27f9d
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_27ff0
    local_31ea = "保存中,请稍候..."
    jmp lbl_281fc

lbl_27ff0:
    if global_14 != 1 then jump lbl_28033
    local_31ea = "Saving, please wait..."
    jmp lbl_281fc

lbl_28033:
    if global_14 != 2 then jump lbl_28090
    local_31ea = "保存しています、お待ちください..."
    jmp lbl_281fc

lbl_28090:
    if global_14 != 3 then jump lbl_280d6
    local_31ea = "Speichern bitte warten..."
    T 0x126

lbl_280d6:
    if global_14 != 4 then jump lbl_28120
    local_31ea = "Guardando por favor espere..."
    jmp lbl_281fc

lbl_28120:
    if global_14 != 5 then jump lbl_2816e
    local_31ea = "Sauvegarde, veuillez patienter..."
    jmp lbl_281fc

lbl_2816e:
    if global_14 != 6 then jump lbl_281b8
    local_31ea = "Salvando, por favor espere..."
    jmp lbl_281fc

lbl_281b8:
    if global_14 != 7 then jump lbl_281fc
    local_31ea = "Salvataggio in corso, attendere..."

lbl_281fc:
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
; flags=0x27, events: timer=0x27cc9
; tim=1000, en=1

; timer
.org 0x27cc9
    if global_1c <= 0 then jump lbl_27d25
    if global_20 <= 0 then jump lbl_27d25
    global_20--
    if global_20 != 0 then jump lbl_27d25
    dim = global_30

lbl_27d25:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x27d3f

; touch_release
.org 0x27d3f
    global_20 = global_18
    dims = global_2c

; data after the object structs, 308 bytes (4 trailing zero bytes dropped)
; 027e61:  00 00 00 00 e4 bf 9d e5 ad 98 e4 b8 ad 2c e8 af  |.............,..|
; 027e71:  b7 e7 a8 8d e5 80 99 2e 2e 2e 00 00 00 00 00 00  |................|
; 027e81:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 027e91:  00 00 00 00 6b 00 ac 00 80 00 27 00 ea 00 d2 00  |....k.....'.....|
; 027ea1:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 027eb1:  ff ff 01 01 00 00 64 00 70 bc 00 00 01 00 00 00  |......d.p.......|
; 027ec1:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 027ed1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 027ee1:  00 00 7f 00 00 00 00 00 f4 00 ac 00 80 00 27 00  |..............'.|
; 027ef1:  73 01 d2 00 00 00 00 00 00 00 00 00 00 00 04 00  |s...............|
; 027f01:  05 00 ff ff ff ff 01 01 00 00 64 00 d8 bc 00 00  |..........d.....|
; 027f11:  01 00 00 00 74 06 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 027f21:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 027f31:  00 00 00 00 00 00 7f 00 00 00 00 00 c0 00 77 00  |..............w.|
; 027f41:  64 00 1e 00 23 01 94 00 00 00 00 00 01 00 00 00  |d...#...........|
; 027f51:  00 00 ff ff 00 00 01 01 00 00 0a 00 40 bd 00 00  |............@...|
; 027f61:  00 00 00 00 00 00 00 00 00 00 00 00 e6 a3 80 e6  |................|
; 027f71:  b5 8b e5 88 b0 e6 89 93 e5 8d b0 e6 97 b6 e4 bf  |................|
; 027f81:  ae e6 94 b9 7a 6f 66 66 73 65 74 ef bc 8c e6 98  |....zoffset.....|
; 027f91:  af e5 90 a6                                      |....|
