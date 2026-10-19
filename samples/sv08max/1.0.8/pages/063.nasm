; page 63 'z_init': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'z_init'): x=0, y=0, w=480, h=272, name hash=0x40661511
; flags=0x37, aph=127, events: event_3=0x41a2b
; sta=2, pic=1
; 041b7a:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x41a2b
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x41d56
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_41dac
    local_5d14 = "z轴位置正在初始中"
    jmp lbl_42005

lbl_41dac:
    if global_14 != 1 then jump lbl_41e01
    local_5d14 = "The z-axis position is being initialized"
    jmp lbl_42005

lbl_41e01:
    if global_14 != 2 then jump lbl_41e4d
    local_5d14 = "Z軸位置を初期化中です"
    jmp lbl_42005

lbl_41e4d:
    if global_14 != 3 then jump lbl_41ea1
    local_5d14 = "Die Z-Achsenposition wird initialisiert"
    jmp lbl_42005

lbl_41ea1:
    if global_14 != 4 then jump lbl_41efb
    local_5d14 = "La posición del eje z se está inicializando"
    jmp lbl_42005

lbl_41efb:
    if global_14 != 5 then jump lbl_41f5c
    local_5d14 = "La position de l'axe z est en cours d'initialisation"
    jmp lbl_42005

lbl_41f5c:
    if global_14 != 6 then jump lbl_41fb7
    local_5d14 = "A posição do eixo z está sendo inicializada"
    jmp lbl_42005

lbl_41fb7:
    if global_14 != 7 then jump lbl_42005
    local_5d14 = "La posizione dell'asse z viene inizializzata"

lbl_42005:
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
; flags=0x27, events: timer=0x41a82
; tim=1000, en=1

; timer
.org 0x41a82
    if global_1c <= 0 then jump lbl_41ade
    if global_20 <= 0 then jump lbl_41ade
    global_20--
    if global_20 != 0 then jump lbl_41ade
    dim = global_30

lbl_41ade:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x41af8

; touch_release
.org 0x41af8
    global_20 = global_18
    dims = global_2c

; data after the object structs, 308 bytes (4 trailing zero bytes dropped)
; 041c1a:  00 00 00 00 7a e8 bd b4 e4 bd 8d e7 bd ae e6 ad  |....z...........|
; 041c2a:  a3 e5 9c a8 e5 88 9d e5 a7 8b e4 b8 ad 00 83 ad  |................|
; 041c3a:  e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d e5 80 99 00  |................|
; 041c4a:  00 00 43 00 44 00 ff ff ff ff 01 01 00 00 64 00  |..C.D.........d.|
; 041c5a:  18 bf 00 00 01 00 00 00 62 03 00 00 00 00 00 00  |........b.......|
; 041c6a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041c7a:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 041c8a:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 041c9a:  00 00 00 00 00 00 43 00 44 00 ff ff ff ff 01 01  |......C.D.......|
; 041caa:  00 00 64 00 80 bf 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 041cba:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041cca:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 041cda:  00 00 00 00 00 00 d3 00 3d 00 36 00 3c 00 08 01  |........=.6.<...|
; 041cea:  00 00 00 00 00 00 00 00 00 00 43 00 44 00 ff ff  |..........C.D...|
; 041cfa:  ff ff 01 01 00 00 64 00 e8 bf 00 00 01 00 00 00  |......d.........|
; 041d0a:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 041d1a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041d2a:  00 00 7f 00 00 00 00 00 85 01 46 00 46 00 27 00  |..........F.F.'.|
; 041d3a:  ca 01 6c 00 00 00 00 00 00 00 00 00 00 00 54 00  |..l...........T.|
; 041d4a:  55 00 ff ff                                      |U...|
