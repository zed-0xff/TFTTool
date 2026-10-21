; page 43: 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9c0, 0xb9e0

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xd0413315
; flags=0x37, aph=127, events: event_3=0x2f960
; sta=2, pic=1
; 02faaf:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2f960
    global_20 = global_18
    dims = global_2c
    unload
    timer

; load
.org 0x2fc8b
    ref 1
    ref 2
    if global_14 != 0 then jump lbl_2fcd4
    local_3e33 = "退料中..."
    jmp lbl_2fe9d

lbl_2fcd4:
    if global_14 != 1 then jump lbl_2fd19
    local_3e33 = "Unloading in progress..."
    jmp lbl_2fe9d

lbl_2fd19:
    if global_14 != 2 then jump lbl_2fd5b
    local_3e33 = "アンロード中..."
    jmp lbl_2fe9d

lbl_2fd5b:
    if global_14 != 3 then jump lbl_2fd9c
    local_3e33 = "Entladen im Gange..."
    jmp lbl_2fe9d

lbl_2fd9c:
    if global_14 != 4 then jump lbl_2fde0
    local_3e33 = "Descarga en progreso..."
    jmp lbl_2fe9d

lbl_2fde0:
    if global_14 != 5 then jump lbl_2fe26
    local_3e33 = "Déchargement en cours..."
    jmp lbl_2fe9d

lbl_2fe26:
    if global_14 != 6 then jump lbl_2fe63
    local_3e33 = "Descarregando..."
    jmp lbl_2fe9d

lbl_2fe63:
    if global_14 != 7 then jump lbl_2fe9d
    local_3e33 = "Scaricamento in corso..."

lbl_2fe9d:
    doevents
    down
    up

; object id 1 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2f99d
; tim=1000, en=1

; timer
.org 0x2f99d
    if global_1c <= 0 then jump lbl_2f9f9
    if global_20 <= 0 then jump lbl_2f9f9
    global_20--
    if global_20 != 0 then jump lbl_2f9f9
    dim = global_30

lbl_2f9f9:
    down
    up

; object id 2 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2fa13

; touch_release
.org 0x2fa13
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 3 (text 't0'): x=105, y=108, w=268, h=50, name hash=0xc02992d9
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

; data after the object structs, 303 bytes (9 trailing zero bytes dropped)
; 02fb4f:  00 00 00 00 e9 80 80 e6 96 99 e4 b8 ad 2e 2e 2e  |................|
; 02fb5f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fb6f:  00 00 00 00 00 00 7f 00 00 00 00 00 b0 00 ac 00  |................|
; 02fb7f:  80 00 27 00 2f 01 d2 00 00 00 00 00 00 00 00 00  |..'./...........|
; 02fb8f:  00 00 02 00 03 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 02fb9f:  c0 bb 00 00 01 00 00 00 00 00 00 00 e8 af b7 e8  |................|
; 02fbaf:  bd ac e5 8a a8 e6 8c a4 e5 87 ba e6 9c ba e4 b9  |................|
; 02fbbf:  8b e5 89 8d e5 b0 86 e5 96 b7 e5 98 b4 e5 8a a0  |................|
; 02fbcf:  e7 83 ad e5 88 b0 31 38 30 e2 84 83 e4 bb a5 e4  |......180.......|
; 02fbdf:  b8 8a 00 00 27 00 ff ff ff ff 01 01 00 00 0a 00  |....'...........|
; 02fbef:  ac c0 00 00 01 00 00 00 62 04 00 00 00 00 00 00  |........b.......|
; 02fbff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fc0f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02fc1f:  f3 00 2b 00 33 00 32 00 25 01 5c 00 00 00 00 00  |..+.3.2.%.\.....|
; 02fc2f:  00 00 00 00 00 01 26 00 27 00 ff ff ff ff 01 01  |......&.'.......|
; 02fc3f:  00 00 0a 00 b8 c0 00 00 01 00 00 00 62 05 00 00  |............b...|
; 02fc4f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fc5f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02fc6f:  00 00 00 00 2c 01 2b 00 33 00 32 00 5e 01 5c     |....,.+.3.2.^.\|
