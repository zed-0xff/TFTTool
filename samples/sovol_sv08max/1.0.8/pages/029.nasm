; page 29 'loading': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'loading'): x=0, y=0, w=480, h=272, name hash=0x78c087a7
; flags=0x37, aph=127, events: event_3=0x244c0
; sta=2, pic=1
; 02460f:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x244c0
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x247eb
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_24834
    local_2e74 = "进料中..."
    jmp lbl_249eb

lbl_24834:
    if global_14 != 1 then jump lbl_24877
    local_2e74 = "Loading in progress..."
    jmp lbl_249eb

lbl_24877:
    if global_14 != 2 then jump lbl_248b3
    local_2e74 = "ロード中..."
    jmp lbl_249eb

lbl_248b3:
    if global_14 != 3 then jump lbl_248f1
    local_2e74 = "Laden im Gange..."
    jmp lbl_249eb

lbl_248f1:
    if global_14 != 4 then jump lbl_24935
    local_2e74 = "Cargando en progreso..."
    jmp lbl_249eb

lbl_24935:
    if global_14 != 5 then jump lbl_24978
    local_2e74 = "Chargement en cours..."
    jmp lbl_249eb

lbl_24978:
    if global_14 != 6 then jump lbl_249b2
    local_2e74 = "Carregando..."
    jmp lbl_249eb

lbl_249b2:
    if global_14 != 7 then jump lbl_249eb
    local_2e74 = "Caricamento in corso..."

lbl_249eb:
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
; flags=0x27, events: timer=0x24517
; tim=1000, en=1

; timer
.org 0x24517
    if global_1c <= 0 then jump lbl_24573
    if global_20 <= 0 then jump lbl_24573
    global_20--
    if global_20 != 0 then jump lbl_24573
    dim = global_30

lbl_24573:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2458d

; touch_release
.org 0x2458d
    global_20 = global_18
    dims = global_2c

; data after the object structs, 303 bytes (9 trailing zero bytes dropped)
; 0246af:  00 00 00 00 e6 ad a3 e5 9c a8 e8 bf 9b e6 96 99  |................|
; 0246bf:  e4 b8 ad 2e 2e 2e 00 00 00 00 00 00 00 00 00 00  |................|
; 0246cf:  00 00 00 00 00 00 7f 00 00 00 00 00 b0 00 ac 00  |................|
; 0246df:  80 00 27 00 2f 01 d2 00 00 00 00 00 00 00 00 00  |..'./...........|
; 0246ef:  00 00 02 00 03 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 0246ff:  c0 bb 00 00 01 00 00 00 00 00 00 00 e6 a3 80 e6  |................|
; 02470f:  b5 8b e5 88 b0 e6 b2 a1 e6 9c 89 e8 80 97 e6 9d  |................|
; 02471f:  90 ef bc 8c e8 af b7 e6 8f 92 e5 85 a5 e8 80 97  |................|
; 02472f:  e6 9d 90 00 85 a5 e9 bd bf e8 bd ae e5 a4 84 ef  |................|
; 02473f:  bc 8c e7 82 b9 e5 87 bb e7 a1 ae e8 ae a4 e8 bf  |................|
; 02474f:  9b e6 96 99 00 96 b0 e7 9a 84 e8 80 97 e6 9d 90  |................|
; 02475f:  e5 90 8e e7 bb a7 e7 bb ad e6 89 93 e5 8d b0 00  |................|
; 02476f:  e6 8d a2 e6 96 99 ef bc 9f 00 00 00 00 00 00 00  |................|
; 02477f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02478f:  91 00 5e 00 46 00 26 00 d6 00 83 00 00 00 00 00  |..^.F.&.........|
; 02479f:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 0247af:  00 00 64 00 14 bf 00 00 01 00 00 00 62 0d 00 00  |..d.........b...|
; 0247bf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0247cf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f     |...............|
