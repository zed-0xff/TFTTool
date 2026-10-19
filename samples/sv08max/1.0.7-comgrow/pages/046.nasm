; page 46 'heating': 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa470, 0x2584, 0x25d8

; object id 0 (page 'heating'): x=0, y=0, w=480, h=272, name hash=0x8c20a521
; flags=0x37, aph=127, events: event_3=0x307c1
; sta=2, pic=1
; 030958:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x307c1
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x30b34
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_30b83
    local_41c3 = "喷嘴加热中..."
    jmp lbl_30d47

lbl_30b83:
    if global_14 != 1 then jump lbl_30bc1
    local_41c3 = "Nozzle heating..."
    jmp lbl_30d47

lbl_30bc1:
    if global_14 != 2 then jump lbl_30c03
    local_41c3 = "ノズル加熱中..."
    jmp lbl_30d47

lbl_30c03:
    if global_14 != 3 then jump lbl_30c45
    local_41c3 = "Düse wird erhitzt..."
    jmp lbl_30d47

lbl_30c45:
    if global_14 != 4 then jump lbl_30c8b
    local_41c3 = "Calentando la boquilla..."
    jmp lbl_30d47

lbl_30c8b:
    if global_14 != 5 then jump lbl_30cca
    local_41c3 = "Buse en chauffe..."
    jmp lbl_30d47

lbl_30cca:
    if global_14 != 6 then jump lbl_30d0a
    local_41c3 = "Aquecendo a bico..."
    T 0x3d

lbl_30d0a:
    if global_14 != 7 then jump lbl_30d47
    local_41c3 = "Riscaldamento del nozzle..."

lbl_30d47:
    doevents
    down
    up

; object id 1 (text 't0'): x=105, y=97, w=268, h=50, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="正在加热挤出头"
; text:
;   0: "喷嘴加热中..."
;   1: "Nozzle heating..."
;   2: "ノズル加熱中..."
;   3: "Düse wird erhitzt..."
;   4: "Calentando la boquilla..."
;   5: "Buse en chauffe..."
;   6: "Aquecendo a bico..."
;   7: "Riscaldamento del nozzle..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x30818
; tim=1000, en=1

; timer
.org 0x30818
    if global_1c <= 0 then jump lbl_30874
    if global_20 <= 0 then jump lbl_30874
    global_20--
    if global_20 != 0 then jump lbl_30874
    dim = global_30

lbl_30874:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3088e

; touch_release
.org 0x3088e
    global_20 = global_18
    dims = global_2c
    down
    up
    down
    up

; object id 260 (text 'extrude_temp'): x=206, y=144, w=33, h=30, name hash=0x62682352
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object id 261 (text 'extrude_target'): x=240, y=144, w=33, h=30, name hash=0x1257a561
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; data after the object structs, 308 bytes (4 trailing zero bytes dropped)
; 0309f8:  00 00 00 00 e6 ad a3 e5 9c a8 e5 8a a0 e7 83 ad  |................|
; 030a08:  e6 8c a4 e5 87 ba e5 a4 b4 00 00 00 43 00 06 00  |............C...|
; 030a18:  7c 00 23 00 be 00 28 00 00 00 00 00 00 00 00 00  ||.#...(.........|
; 030a28:  00 00 2e 00 2f 00 ff ff ff ff 01 01 00 00 64 00  |..../.........d.|
; 030a38:  78 a8 00 00 01 00 00 00 62 03 00 00 00 00 00 00  |x.......b.......|
; 030a48:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 030a58:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 030a68:  d0 00 06 00 7c 00 23 00 4b 01 28 00 00 00 00 00  |....|.#.K.(.....|
; 030a78:  00 00 00 00 00 00 2e 00 2f 00 ff ff ff ff 01 01  |......../.......|
; 030a88:  00 00 64 00 e0 a8 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 030a98:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 030aa8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 030ab8:  00 00 00 00 5d 01 06 00 7c 00 23 00 d8 01 28 00  |....]...|.#...(.|
; 030ac8:  00 00 00 00 00 00 00 00 00 00 2e 00 2f 00 ff ff  |............/...|
; 030ad8:  ff ff 01 01 00 00 64 00 48 a9 00 00 01 00 00 00  |......d.H.......|
; 030ae8:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 030af8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 030b08:  00 00 7f 00 00 00 00 00 00 00 50 00 3d 00 36 00  |..........P.=.6.|
; 030b18:  3c 00 85 00 00 00 00 00 00 00 00 00 00 00 2e 00  |<...............|
; 030b28:  2f 00 ff ff                                      |/...|
