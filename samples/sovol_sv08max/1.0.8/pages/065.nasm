; page 65: 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba1c, 0x3360, 0x33b4

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x69811550
; flags=0x37, aph=127, events: event_3=0x42c1a
; sta=2, pic=1
; 042db1:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x42c1a
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x42f8d
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_42fdc
    local_5f03 = "正在加热热床"
    jmp lbl_43188

lbl_42fdc:
    if global_14 != 1 then jump lbl_43018
    local_5f03 = "Heating the bed"
    jmp lbl_43188

lbl_43018:
    if global_14 != 2 then jump lbl_4305a
    local_5f03 = "ベッドを温める"
    jmp lbl_43188

lbl_4305a:
    if global_14 != 3 then jump lbl_43098
    local_5f03 = "Heizen des Bettes"
    jmp lbl_43188

lbl_43098:
    if global_14 != 4 then jump lbl_430d5
    local_5f03 = "Calentar la cama"
    jmp lbl_43188

lbl_430d5:
    if global_14 != 5 then jump lbl_43111
    local_5f03 = "Chauffer le lit"
    jmp lbl_43188

lbl_43111:
    if global_14 != 6 then jump lbl_4314e
    local_5f03 = "Aquecendo a cama"
    jmp lbl_43188

lbl_4314e:
    if global_14 != 7 then jump lbl_43188
    local_5f03 = "HRiscaldamento del letto"

lbl_43188:
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
; flags=0x27, events: timer=0x42c71
; tim=1000, en=1

; timer
.org 0x42c71
    if global_1c <= 0 then jump lbl_42ccd
    if global_20 <= 0 then jump lbl_42ccd
    global_20--
    if global_20 != 0 then jump lbl_42ccd
    dim = global_30

lbl_42ccd:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x42ce7

; touch_release
.org 0x42ce7
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
; 042e51:  00 00 00 00 e6 ad a3 e5 9c a8 e5 8a a0 e7 83 ad  |................|
; 042e61:  e7 83 ad e5 ba 8a 00 00 01 00 00 00 62 08 00 00  |............b...|
; 042e71:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 042e81:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 042e91:  00 00 00 00 15 01 73 00 52 00 2f 00 66 01 a1 00  |......s.R./.f...|
; 042ea1:  00 00 00 00 00 00 00 00 00 00 56 00 57 00 ff ff  |..........V.W...|
; 042eb1:  ff ff 01 01 00 00 64 00 f0 bb 00 00 01 00 00 00  |......d.........|
; 042ec1:  62 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 042ed1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 042ee1:  00 00 7f 00 00 00 00 00 f0 00 a9 00 75 00 2a 00  |............u.*.|
; 042ef1:  64 01 d2 00 00 00 00 00 00 00 00 00 00 00 56 00  |d.............V.|
; 042f01:  57 00 ff ff ff ff 01 01 00 00 64 00 58 bc 00 00  |W.........d.X...|
; 042f11:  01 00 00 00 34 0a 00 00 00 00 00 00 00 00 00 00  |....4...........|
; 042f21:  01 00 00 00 33 0b 00 00 00 00 00 00 00 00 00 00  |....3...........|
; 042f31:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 042f41:  64 00 01 00 62 0c 00 00 00 00 00 00 00 00 00 00  |d...b...........|
; 042f51:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 042f61:  00 00 00 00 00 00 7f 00 00 00 00 00 78 00 a9 00  |............x...|
; 042f71:  75 00 2a 00 ec 00 d2 00 00 00 00 00 00 00 00 00  |u.*.............|
; 042f81:  00 00 56                                         |..V|
