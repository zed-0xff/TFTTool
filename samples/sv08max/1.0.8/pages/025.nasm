; page 25 'unloading': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'unloading'): x=0, y=0, w=480, h=272, name hash=0x36571b7c
; flags=0x37, aph=127, events: event_3=0x2241c
; sta=2, pic=1
; 02256b:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2241c
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x22747
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_22790
    local_2c85 = "退料中..."
    jmp lbl_22959

lbl_22790:
    if global_14 != 1 then jump lbl_227d5
    local_2c85 = "Unloading in progress..."
    jmp lbl_22959

lbl_227d5:
    if global_14 != 2 then jump lbl_22817
    local_2c85 = "アンロード中..."
    jmp lbl_22959

lbl_22817:
    if global_14 != 3 then jump lbl_22858
    local_2c85 = "Entladen im Gange..."
    jmp lbl_22959

lbl_22858:
    if global_14 != 4 then jump lbl_2289c
    local_2c85 = "Descarga en progreso..."
    jmp lbl_22959

lbl_2289c:
    if global_14 != 5 then jump lbl_228e2
    local_2c85 = "Déchargement en cours..."
    jmp lbl_22959

lbl_228e2:
    if global_14 != 6 then jump lbl_2291f
    local_2c85 = "Descarregando..."
    jmp lbl_22959

lbl_2291f:
    if global_14 != 7 then jump lbl_22959
    local_2c85 = "Scaricamento in corso..."

lbl_22959:
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
; flags=0x27, events: timer=0x22473
; tim=1000, en=1

; timer
.org 0x22473
    if global_1c <= 0 then jump lbl_224cf
    if global_20 <= 0 then jump lbl_224cf
    global_20--
    if global_20 != 0 then jump lbl_224cf
    dim = global_30

lbl_224cf:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x224e9

; touch_release
.org 0x224e9
    global_20 = global_18
    dims = global_2c

; data after the object structs, 303 bytes (9 trailing zero bytes dropped)
; 02260b:  00 00 00 00 e9 80 80 e6 96 99 e4 b8 ad 2e 2e 2e  |................|
; 02261b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02262b:  00 00 00 00 00 00 7f 00 00 00 00 00 89 00 d8 00  |................|
; 02263b:  cd 00 2c 00 55 01 03 01 00 00 00 00 00 00 00 00  |..,.U...........|
; 02264b:  00 00 6f 00 6f 00 ff ff ff ff 01 01 00 00 64 00  |..o.o.........d.|
; 02265b:  c0 bb 00 00 01 00 00 00 00 00 00 00 e8 80 97 e6  |................|
; 02266b:  9d 90 e5 b7 b2 e7 94 a8 e5 b0 bd ef bc 8c e8 af  |................|
; 02267b:  b7 e9 80 9a e8 bf 87 e9 93 81 e6 b0 9f e9 be 99  |................|
; 02268b:  e7 ae a1 e5 b0 86 e5 89 a9 e4 bd 99 e8 80 97 e6  |................|
; 02269b:  9d 90 e7 a7 bb e9 99 a4 ef bc 8c e5 b9 b6 e6 9b  |................|
; 0226ab:  b4 e6 8d a2 e6 96 b0 e7 9a 84 e8 80 97 e6 9d 90  |................|
; 0226bb:  e5 90 8e e7 bb a7 e7 bb ad e6 89 93 e5 8d b0 00  |................|
; 0226cb:  e6 8d a2 e6 96 99 ef bc 9f 00 00 00 00 00 00 00  |................|
; 0226db:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0226eb:  91 00 5e 00 46 00 26 00 d6 00 83 00 00 00 00 00  |..^.F.&.........|
; 0226fb:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 02270b:  00 00 64 00 14 bf 00 00 01 00 00 00 62 0d 00 00  |..d.........b...|
; 02271b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02272b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f     |...............|
