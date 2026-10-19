; page 63 'z_init': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'z_init'): x=0, y=0, w=480, h=272, name hash=0x40661511
; flags=0x37, aph=127, events: event_3=0x40e71
; sta=2, pic=1
; 040fc0:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x40e71
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x4119c
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_411f2
    local_5d9e = "z轴位置正在初始中"
    jmp lbl_4144b

lbl_411f2:
    if global_14 != 1 then jump lbl_41247
    local_5d9e = "The z-axis position is being initialized"
    jmp lbl_4144b

lbl_41247:
    if global_14 != 2 then jump lbl_41293
    local_5d9e = "Z軸位置を初期化中です"
    jmp lbl_4144b

lbl_41293:
    if global_14 != 3 then jump lbl_412e7
    local_5d9e = "Die Z-Achsenposition wird initialisiert"
    jmp lbl_4144b

lbl_412e7:
    if global_14 != 4 then jump lbl_41341
    local_5d9e = "La posición del eje z se está inicializando"
    jmp lbl_4144b

lbl_41341:
    if global_14 != 5 then jump lbl_413a2
    local_5d9e = "La position de l'axe z est en cours d'initialisation"
    jmp lbl_4144b

lbl_413a2:
    if global_14 != 6 then jump lbl_413fd
    local_5d9e = "A posição do eixo z está sendo inicializada"
    jmp lbl_4144b

lbl_413fd:
    if global_14 != 7 then jump lbl_4144b
    local_5d9e = "La posizione dell'asse z viene inizializzata"

lbl_4144b:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=75, w=268, h=122, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="z轴位置正在初始中"
; text:
;   0: "z轴位置正在初始中"
;   1: "The z-axis position is being initialized"
;   2: "Z軸位置を初期化中です"
;   3: "Die Z-Achsenposition wird initialisiert"
;   4: "La posición del eje z se está inicializando"
;   5: "La position de l'axe z est en cours d'initialisation"
;   6: "A posição do eixo z está sendo inicializada"
;   7: "La posizione dell'asse z viene inizializzata"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x40ec8
; tim=1000, en=1

; timer
.org 0x40ec8
    if global_1c <= 0 then jump lbl_40f24
    if global_20 <= 0 then jump lbl_40f24
    global_20--
    if global_20 != 0 then jump lbl_40f24
    dim = global_30

lbl_40f24:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x40f3e

; touch_release
.org 0x40f3e
    global_20 = global_18
    dims = global_2c

; data after the object structs, 308 bytes (4 trailing zero bytes dropped)
; 041060:  00 00 00 00 7a e8 bd b4 e4 bd 8d e7 bd ae e6 ad  |....z...........|
; 041070:  a3 e5 9c a8 e5 88 9d e5 a7 8b e4 b8 ad 00 83 ad  |................|
; 041080:  e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d e5 80 99 00  |................|
; 041090:  00 00 43 00 44 00 ff ff ff ff 01 01 00 00 64 00  |..C.D.........d.|
; 0410a0:  6c a9 00 00 01 00 00 00 62 03 00 00 00 00 00 00  |l.......b.......|
; 0410b0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0410c0:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0410d0:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 0410e0:  00 00 00 00 00 00 43 00 44 00 ff ff ff ff 01 01  |......C.D.......|
; 0410f0:  00 00 64 00 d4 a9 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 041100:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041110:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 041120:  00 00 00 00 00 00 d3 00 3d 00 36 00 3c 00 08 01  |........=.6.<...|
; 041130:  00 00 00 00 00 00 00 00 00 00 43 00 44 00 ff ff  |..........C.D...|
; 041140:  ff ff 01 01 00 00 64 00 3c aa 00 00 01 00 00 00  |......d.<.......|
; 041150:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 041160:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041170:  00 00 7f 00 00 00 00 00 85 01 46 00 46 00 27 00  |..........F.F.'.|
; 041180:  ca 01 6c 00 00 00 00 00 00 00 00 00 00 00 54 00  |..l...........T.|
; 041190:  55 00 ff ff                                      |U...|
