; page 25 'unloading': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'unloading'): x=0, y=0, w=480, h=272, name hash=0x36571b7c
; flags=0x37, aph=127, events: event_3=0x206aa
; sta=2, pic=1
; 0207f9:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x206aa
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x209d5
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_20a1e
    local_2b3e = "退料中..."
    jmp lbl_20be7

lbl_20a1e:
    if global_14 != 1 then jump lbl_20a63
    local_2b3e = "Unloading in progress..."
    jmp lbl_20be7

lbl_20a63:
    if global_14 != 2 then jump lbl_20aa5
    local_2b3e = "アンロード中..."
    jmp lbl_20be7

lbl_20aa5:
    if global_14 != 3 then jump lbl_20ae6
    local_2b3e = "Entladen im Gange..."
    jmp lbl_20be7

lbl_20ae6:
    if global_14 != 4 then jump lbl_20b2a
    local_2b3e = "Descarga en progreso..."
    jmp lbl_20be7

lbl_20b2a:
    if global_14 != 5 then jump lbl_20b70
    local_2b3e = "Déchargement en cours..."
    jmp lbl_20be7

lbl_20b70:
    if global_14 != 6 then jump lbl_20bad
    local_2b3e = "Descarregando..."
    jmp lbl_20be7

lbl_20bad:
    if global_14 != 7 then jump lbl_20be7
    local_2b3e = "Scaricamento in corso..."

lbl_20be7:
    doevents
    down
    up

; object id 1 (text 't0'): x=104, y=104, w=268, h=50, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="退料中..."
; text:
;   0: "退料中..."
;   1: "Unloading in progress..."
;   2: "アンロード中..."
;   3: "Entladen im Gange..."
;   4: "Descarga en progreso..."
;   5: "Déchargement en cours..."
;   6: "Descarregando..."
;   7: "Scaricamento in corso..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x20701
; tim=1000, en=1

; timer
.org 0x20701
    if global_1c <= 0 then jump lbl_2075d
    if global_20 <= 0 then jump lbl_2075d
    global_20--
    if global_20 != 0 then jump lbl_2075d
    dim = global_30

lbl_2075d:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x20777

; touch_release
.org 0x20777
    global_20 = global_18
    dims = global_2c

; data after the object structs, 290 bytes (22 trailing zero bytes dropped)
; 020899:  00 00 00 00 e9 80 80 e6 96 99 e4 b8 ad 2e 2e 2e  |................|
; 0208a9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0208b9:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0208c9:  6b 00 ac 00 80 00 27 00 ea 00 d2 00 00 00 00 00  |k.....'.........|
; 0208d9:  00 00 00 00 00 00 04 00 05 00 ff ff ff ff 01 01  |................|
; 0208e9:  00 00 64 00 6c a6 00 00 01 00 00 00 62 05 00 00  |..d.l.......b...|
; 0208f9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 020909:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 020919:  00 00 00 00 f4 00 ac 00 80 00 27 00 73 01 d2 00  |..........'.s...|
; 020929:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 020939:  ff ff 01 01 00 00 64 00 d4 a6 00 00 01 00 00 00  |......d.........|
; 020949:  00 00 00 00 e6 a3 80 e6 b5 8b e5 88 b0 e8 80 97  |................|
; 020959:  e6 9d 90 e5 b7 b2 e7 94 a8 e5 b0 bd 3b e8 80 97  |............;...|
; 020969:  e6 9d 90 e5 b7 b2 e9 80 80 e5 87 ba ef bc 8c e8  |................|
; 020979:  af b7 e5 b0 86 e8 80 97 e6 9d 90 e6 8b 94 e5 87  |................|
; 020989:  ba e7 a7 bb e9 99 a4 00 47 00 26 00 53 00 83 00  |........G.&.S...|
; 020999:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 0209a9:  ff ff 01 01 00 00 64 00 40 ab 00 00 01 00 00 00  |......d.@.......|
; 0209b9:  62 0d                                            |b.|
