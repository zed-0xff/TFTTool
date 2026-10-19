; page 65: 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa470, 0x32b4, 0x3308

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x69811550
; flags=0x37, aph=127, events: event_3=0x42060
; sta=2, pic=1
; 0421f7:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x42060
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x423d3
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_42422
    local_5f8d = "正在加热热床"
    jmp lbl_425ce

lbl_42422:
    if global_14 != 1 then jump lbl_4245e
    local_5f8d = "Heating the bed"
    jmp lbl_425ce

lbl_4245e:
    if global_14 != 2 then jump lbl_424a0
    local_5f8d = "ベッドを温める"
    jmp lbl_425ce

lbl_424a0:
    if global_14 != 3 then jump lbl_424de
    local_5f8d = "Heizen des Bettes"
    jmp lbl_425ce

lbl_424de:
    if global_14 != 4 then jump lbl_4251b
    local_5f8d = "Calentar la cama"
    jmp lbl_425ce

lbl_4251b:
    if global_14 != 5 then jump lbl_42557
    local_5f8d = "Chauffer le lit"
    jmp lbl_425ce

lbl_42557:
    if global_14 != 6 then jump lbl_42594
    local_5f8d = "Aquecendo a cama"
    jmp lbl_425ce

lbl_42594:
    if global_14 != 7 then jump lbl_425ce
    local_5f8d = "HRiscaldamento del letto"

lbl_425ce:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=98, w=268, h=50, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="正在加热热床"
; text:
;   0: "正在加热热床"
;   1: "Heating the bed"
;   2: "ベッドを温める"
;   3: "Heizen des Bettes"
;   4: "Calentar la cama"
;   5: "Chauffer le lit"
;   6: "Aquecendo a cama"
;   7: "HRiscaldamento del letto"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x420b7
; tim=1000, en=1

; timer
.org 0x420b7
    if global_1c <= 0 then jump lbl_42113
    if global_20 <= 0 then jump lbl_42113
    global_20--
    if global_20 != 0 then jump lbl_42113
    dim = global_30

lbl_42113:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x4212d

; touch_release
.org 0x4212d
    global_20 = global_18
    dims = global_2c
    down
    up
    down
    up

; object id 260 (text 'hot_bed_temp'): x=206, y=144, w=33, h=30, name hash=0x3675c015
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object id 261 (text 'bed_target'): x=240, y=144, w=33, h=30, name hash=0x5af95597
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="65℃"

; data after the object structs, 307 bytes (5 trailing zero bytes dropped)
; 042297:  00 00 00 00 e6 ad a3 e5 9c a8 e5 8a a0 e7 83 ad  |................|
; 0422a7:  e7 83 ad e5 ba 8a 00 00 01 00 00 00 62 08 00 00  |............b...|
; 0422b7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0422c7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0422d7:  00 00 00 00 15 01 73 00 52 00 2f 00 66 01 a1 00  |......s.R./.f...|
; 0422e7:  00 00 00 00 00 00 00 00 00 00 56 00 57 00 ff ff  |..........V.W...|
; 0422f7:  ff ff 01 01 00 00 64 00 44 a6 00 00 01 00 00 00  |......d.D.......|
; 042307:  62 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 042317:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 042327:  00 00 7f 00 00 00 00 00 f0 00 a9 00 75 00 2a 00  |............u.*.|
; 042337:  64 01 d2 00 00 00 00 00 00 00 00 00 00 00 56 00  |d.............V.|
; 042347:  57 00 ff ff ff ff 01 01 00 00 64 00 ac a6 00 00  |W.........d.....|
; 042357:  01 00 00 00 34 0a 00 00 00 00 00 00 00 00 00 00  |....4...........|
; 042367:  01 00 00 00 33 0b 00 00 00 00 00 00 00 00 00 00  |....3...........|
; 042377:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 042387:  64 00 01 00 62 0c 00 00 00 00 00 00 00 00 00 00  |d...b...........|
; 042397:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0423a7:  00 00 00 00 00 00 7f 00 00 00 00 00 78 00 a9 00  |............x...|
; 0423b7:  75 00 2a 00 ec 00 d2 00 00 00 00 00 00 00 00 00  |u.*.............|
; 0423c7:  00 00 56                                         |..V|
