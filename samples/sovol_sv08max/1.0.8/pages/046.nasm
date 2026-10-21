; page 46 'heating': 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba1c, 0x2630, 0x2684

; object id 0 (page 'heating'): x=0, y=0, w=480, h=272, name hash=0x8c20a521
; flags=0x37, aph=127, events: event_3=0x31bbd
; sta=2, pic=1
; 031d54:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x31bbd
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x31f30
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_31f7f
    local_41bc = "喷嘴加热中..."
    jmp lbl_32143

lbl_31f7f:
    if global_14 != 1 then jump lbl_31fbd
    local_41bc = "Nozzle heating..."
    jmp lbl_32143

lbl_31fbd:
    if global_14 != 2 then jump lbl_31fff
    local_41bc = "ノズル加熱中..."
    jmp lbl_32143

lbl_31fff:
    if global_14 != 3 then jump lbl_32041
    local_41bc = "Düse wird erhitzt..."
    jmp lbl_32143

lbl_32041:
    if global_14 != 4 then jump lbl_32087
    local_41bc = "Calentando la boquilla..."
    jmp lbl_32143

lbl_32087:
    if global_14 != 5 then jump lbl_320c6
    local_41bc = "Buse en chauffe..."
    jmp lbl_32143

lbl_320c6:
    if global_14 != 6 then jump lbl_32106
    local_41bc = "Aquecendo a bico..."
    T 0x3d

lbl_32106:
    if global_14 != 7 then jump lbl_32143
    local_41bc = "Riscaldamento del nozzle..."

lbl_32143:
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
; flags=0x27, events: timer=0x31c14
; tim=1000, en=1

; timer
.org 0x31c14
    if global_1c <= 0 then jump lbl_31c70
    if global_20 <= 0 then jump lbl_31c70
    global_20--
    if global_20 != 0 then jump lbl_31c70
    dim = global_30

lbl_31c70:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x31c8a

; touch_release
.org 0x31c8a
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
; 031df4:  00 00 00 00 e6 ad a3 e5 9c a8 e5 8a a0 e7 83 ad  |................|
; 031e04:  e6 8c a4 e5 87 ba e5 a4 b4 00 00 00 43 00 06 00  |............C...|
; 031e14:  7c 00 23 00 be 00 28 00 00 00 00 00 00 00 00 00  ||.#...(.........|
; 031e24:  00 00 2e 00 2f 00 ff ff ff ff 01 01 00 00 64 00  |..../.........d.|
; 031e34:  24 be 00 00 01 00 00 00 62 03 00 00 00 00 00 00  |$.......b.......|
; 031e44:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 031e54:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 031e64:  d0 00 06 00 7c 00 23 00 4b 01 28 00 00 00 00 00  |....|.#.K.(.....|
; 031e74:  00 00 00 00 00 00 2e 00 2f 00 ff ff ff ff 01 01  |......../.......|
; 031e84:  00 00 64 00 8c be 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 031e94:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 031ea4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 031eb4:  00 00 00 00 5d 01 06 00 7c 00 23 00 d8 01 28 00  |....]...|.#...(.|
; 031ec4:  00 00 00 00 00 00 00 00 00 00 2e 00 2f 00 ff ff  |............/...|
; 031ed4:  ff ff 01 01 00 00 64 00 f4 be 00 00 01 00 00 00  |......d.........|
; 031ee4:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 031ef4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 031f04:  00 00 7f 00 00 00 00 00 00 00 50 00 3d 00 36 00  |..........P.=.6.|
; 031f14:  3c 00 85 00 00 00 00 00 00 00 00 00 00 00 2e 00  |<...............|
; 031f24:  2f 00 ff ff                                      |/...|
