; page 29 'loading': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'loading'): x=0, y=0, w=480, h=272, name hash=0x78c087a7
; flags=0x37, aph=127, events: event_3=0x2274e
; sta=2, pic=1
; 02289d:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2274e
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x22a79
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_22ac2
    local_2d2d = "进料中..."
    jmp lbl_22c79

lbl_22ac2:
    if global_14 != 1 then jump lbl_22b05
    local_2d2d = "Loading in progress..."
    jmp lbl_22c79

lbl_22b05:
    if global_14 != 2 then jump lbl_22b41
    local_2d2d = "ロード中..."
    jmp lbl_22c79

lbl_22b41:
    if global_14 != 3 then jump lbl_22b7f
    local_2d2d = "Laden im Gange..."
    jmp lbl_22c79

lbl_22b7f:
    if global_14 != 4 then jump lbl_22bc3
    local_2d2d = "Cargando en progreso..."
    jmp lbl_22c79

lbl_22bc3:
    if global_14 != 5 then jump lbl_22c06
    local_2d2d = "Chargement en cours..."
    jmp lbl_22c79

lbl_22c06:
    if global_14 != 6 then jump lbl_22c40
    local_2d2d = "Carregando..."
    jmp lbl_22c79

lbl_22c40:
    if global_14 != 7 then jump lbl_22c79
    local_2d2d = "Caricamento in corso..."

lbl_22c79:
    doevents
    down
    up

; object id 1 (text 't0'): x=105, y=105, w=268, h=50, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="正在进料中..."
; text:
;   0: "进料中..."
;   1: "Loading in progress..."
;   2: "ロード中..."
;   3: "Laden im Gange..."
;   4: "Cargando en progreso..."
;   5: "Chargement en cours..."
;   6: "Carregando..."
;   7: "Caricamento in corso..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x227a5
; tim=1000, en=1

; timer
.org 0x227a5
    if global_1c <= 0 then jump lbl_22801
    if global_20 <= 0 then jump lbl_22801
    global_20--
    if global_20 != 0 then jump lbl_22801
    dim = global_30

lbl_22801:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2281b

; touch_release
.org 0x2281b
    global_20 = global_18
    dims = global_2c

; data after the object structs, 290 bytes (22 trailing zero bytes dropped)
; 02293d:  00 00 00 00 e6 ad a3 e5 9c a8 e8 bf 9b e6 96 99  |................|
; 02294d:  e4 b8 ad 2e 2e 2e 00 00 00 00 00 00 00 00 00 00  |................|
; 02295d:  00 00 00 00 00 00 7f 00 00 00 00 00 b0 00 ac 00  |................|
; 02296d:  80 00 27 00 2f 01 d2 00 00 00 00 00 00 00 00 00  |..'./...........|
; 02297d:  00 00 02 00 03 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 02298d:  14 a6 00 00 01 00 00 00 00 00 00 00 e6 a3 80 e6  |................|
; 02299d:  b5 8b e5 88 b0 e6 b2 a1 e6 9c 89 e8 80 97 e6 9d  |................|
; 0229ad:  90 ef bc 8c e8 af b7 e6 8f 92 e5 85 a5 e8 80 97  |................|
; 0229bd:  e6 9d 90 00 85 a5 e9 bd bf e8 bd ae e5 a4 84 ef  |................|
; 0229cd:  bc 8c e7 82 b9 e5 87 bb e7 a1 ae e8 ae a4 e8 bf  |................|
; 0229dd:  9b e6 96 99 00 00 64 00 d4 a6 00 00 01 00 00 00  |......d.........|
; 0229ed:  00 00 00 00 e6 a3 80 e6 b5 8b e5 88 b0 e8 80 97  |................|
; 0229fd:  e6 9d 90 e5 b7 b2 e7 94 a8 e5 b0 bd 3b e8 80 97  |............;...|
; 022a0d:  e6 9d 90 e5 b7 b2 e9 80 80 e5 87 ba ef bc 8c e8  |................|
; 022a1d:  af b7 e5 b0 86 e8 80 97 e6 9d 90 e6 8b 94 e5 87  |................|
; 022a2d:  ba e7 a7 bb e9 99 a4 00 47 00 26 00 53 00 83 00  |........G.&.S...|
; 022a3d:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 022a4d:  ff ff 01 01 00 00 64 00 40 ab 00 00 01 00 00 00  |......d.@.......|
; 022a5d:  62 0d                                            |b.|
