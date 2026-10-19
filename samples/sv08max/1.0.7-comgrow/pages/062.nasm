; page 62: 8 objects

; object address table, 8 objects, block loaded at 0xa3a4
.dd 0xa3c4, 0xa404, 0xa458, 0xa478, 0x3014, 0x3068, 0x30bc, 0x3110

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x20ced183
; flags=0x37, aph=127, events: event_3=0x40813
; sta=2, pic=1
; 0409f2:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x40813
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x40bce
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_40c29
    local_5ca5 = "正在加热中，请稍候..."
    jmp lbl_40e50

lbl_40c29:
    if global_14 != 1 then jump lbl_40c79
    local_5ca5 = "Heating in progress, please wait..."
    jmp lbl_40e50

lbl_40c79:
    if global_14 != 2 then jump lbl_40cca
    local_5ca5 = "加熱中、お待ちください..."
    jmp lbl_40e50

lbl_40cca:
    if global_14 != 3 then jump lbl_40d16
    local_5ca5 = "Heizung läuft, bitte warten..."
    jmp lbl_40e50

lbl_40d16:
    if global_14 != 4 then jump lbl_40d62
    local_5ca5 = "Calentando, por favor espere..."
    jmp lbl_40e50

lbl_40d62:
    if global_14 != 5 then jump lbl_40db8
    local_5ca5 = "Chauffage en cours, veuillez patienter..."
    jmp lbl_40e50

lbl_40db8:
    if global_14 != 6 then jump lbl_40e04
    local_5ca5 = "Aquecendo, aguarde por favor..."
    jmp lbl_40e50

lbl_40e04:
    if global_14 != 7 then jump lbl_40e50
    local_5ca5 = "Riscaldamento in corso, attendere prego..."

lbl_40e50:
    doevents
    down
    up

; object id 1 (text 't0'): x=105, y=70, w=268, h=50, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="正在加热中，请稍候"
; text:
;   0: "正在加热中，请稍候..."
;   1: "Heating in progress, please wait..."
;   2: "加熱中、お待ちください..."
;   3: "Heizung läuft, bitte warten..."
;   4: "Calentando, por favor espere..."
;   5: "Chauffage en cours, veuillez patienter..."
;   6: "Aquecendo, aguarde por favor..."
;   7: "Riscaldamento in corso, attendere prego..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x4086a
; tim=1000, en=1

; timer
.org 0x4086a
    if global_1c <= 0 then jump lbl_408c6
    if global_20 <= 0 then jump lbl_408c6
    global_20--
    if global_20 != 0 then jump lbl_408c6
    dim = global_30

lbl_408c6:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x408e0

; touch_release
.org 0x408e0
    global_20 = global_18
    dims = global_2c
    down
    up
    down
    up
    down
    up
    down
    up

; object id 260 (text 'hot_bed_temp'): x=206, y=171, w=33, h=30, name hash=0x3675c015
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object id 261 (text 'bed_target'): x=240, y=171, w=33, h=30, name hash=0x5af95597
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="65℃"

; object id 262 (text 'extrude_temp'): x=206, y=135, w=33, h=30, name hash=0x62682352
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object id 263 (text 'extrude_target'): x=240, y=135, w=33, h=30, name hash=0x1257a561
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="150℃"

; data after the object structs, 305 bytes (7 trailing zero bytes dropped)
; 040a92:  00 00 00 00 e6 ad a3 e5 9c a8 e5 8a a0 e7 83 ad  |................|
; 040aa2:  e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d e5 80 99 00  |................|
; 040ab2:  00 00 43 00 44 00 ff ff ff ff 01 01 00 00 64 00  |..C.D.........d.|
; 040ac2:  6c a9 00 00 01 00 00 00 62 03 00 00 00 00 00 00  |l.......b.......|
; 040ad2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040ae2:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 040af2:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 040b02:  00 00 00 00 00 00 43 00 44 00 ff ff ff ff 01 01  |......C.D.......|
; 040b12:  00 00 64 00 d4 a9 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 040b22:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040b32:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 040b42:  00 00 00 00 00 00 d3 00 3d 00 36 00 3c 00 08 01  |........=.6.<...|
; 040b52:  00 00 00 00 00 00 00 00 00 00 43 00 44 00 ff ff  |..........C.D...|
; 040b62:  ff ff 01 01 00 00 64 00 3c aa 00 00 01 00 00 00  |......d.<.......|
; 040b72:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 040b82:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040b92:  00 00 7f 00 00 00 00 00 85 01 46 00 46 00 27 00  |..........F.F.'.|
; 040ba2:  ca 01 6c 00 00 00 00 00 00 00 00 00 00 00 54 00  |..l...........T.|
; 040bb2:  55 00 ff ff 00 00 00 00 00 00 64 00 a4 aa 00 00  |U.........d.....|
; 040bc2:  01                                               |.|
