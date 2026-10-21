; page 61 'z_calibrating': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'z_calibrating'): x=0, y=0, w=480, h=272, name hash=0x568fecaa
; flags=0x37, aph=127, events: event_3=0x401ca
; sta=2, pic=1
; 040319:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x401ca
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x404f5
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_40554
    local_5c48 = "Z轴倾斜校准中，请稍候..."
    jmp lbl_407f2

lbl_40554:
    if global_14 != 1 then jump lbl_405b4
    local_5c48 = "Z-axis tilt calibration in progress, please wait..."
    jmp lbl_407f2

lbl_405b4:
    if global_14 != 2 then jump lbl_40612
    local_5c48 = "Z軸の傾斜補正中、お待ちください..."
    jmp lbl_407f2

lbl_40612:
    if global_14 != 3 then jump lbl_4066c
    local_5c48 = "Z-Achsen-Nivellierung läuft, bitte warten..."
    jmp lbl_407f2

lbl_4066c:
    if global_14 != 4 then jump lbl_406cc
    local_5c48 = "Z-axis tilt calibration in progress, please wait..."
    T 0x126

lbl_406cc:
    if global_14 != 5 then jump lbl_4073d
    local_5c48 = "Calibration d'inclinaison de l'axe Z en cours, veuillez patienter..."
    jmp lbl_407f2

lbl_4073d:
    if global_14 != 6 then jump lbl_4079d
    local_5c48 = "Z-axis tilt calibration in progress, please wait..."
    jmp lbl_407f2

lbl_4079d:
    if global_14 != 7 then jump lbl_407f2
    local_5c48 = "Z-axis tilt calibration in progress, please wait..."

lbl_407f2:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=74, w=268, h=122, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="Z轴倾斜校准中，请稍候..."
; text:
;   0: "Z轴倾斜校准中，请稍候..."
;   1: "Z-axis tilt calibration in progress, please wait..."
;   2: "Z軸の傾斜補正中、お待ちください..."
;   3: "Z-Achsen-Nivellierung läuft, bitte warten..."
;   4: "Z-axis tilt calibration in progress, please wait..."
;   5: "Calibration d'inclinaison de l'axe Z en cours, veuillez patienter..."
;   6: "Z-axis tilt calibration in progress, please wait..."
;   7: "Z-axis tilt calibration in progress, please wait..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x40221
; tim=1000, en=1

; timer
.org 0x40221
    if global_1c <= 0 then jump lbl_4027d
    if global_20 <= 0 then jump lbl_4027d
    global_20--
    if global_20 != 0 then jump lbl_4027d
    dim = global_30

lbl_4027d:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x40297

; touch_release
.org 0x40297
    global_20 = global_18
    dims = global_2c

; data after the object structs, 308 bytes (4 trailing zero bytes dropped)
; 0403b9:  00 00 00 00 5a e8 bd b4 e5 80 be e6 96 9c e6 a0  |....Z...........|
; 0403c9:  a1 e5 87 86 e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d  |................|
; 0403d9:  e5 80 99 2e 2e 2e 00 00 00 00 00 00 00 00 00 00  |................|
; 0403e9:  00 00 43 00 44 00 ff ff ff ff 01 01 00 00 64 00  |..C.D.........d.|
; 0403f9:  6c a9 00 00 01 00 00 00 62 03 00 00 00 00 00 00  |l.......b.......|
; 040409:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040419:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 040429:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 040439:  00 00 00 00 00 00 43 00 44 00 ff ff ff ff 01 01  |......C.D.......|
; 040449:  00 00 64 00 d4 a9 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 040459:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040469:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 040479:  00 00 00 00 00 00 d3 00 3d 00 36 00 3c 00 08 01  |........=.6.<...|
; 040489:  00 00 00 00 00 00 00 00 00 00 43 00 44 00 ff ff  |..........C.D...|
; 040499:  ff ff 01 01 00 00 64 00 3c aa 00 00 01 00 00 00  |......d.<.......|
; 0404a9:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0404b9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0404c9:  00 00 7f 00 00 00 00 00 85 01 46 00 46 00 27 00  |..........F.F.'.|
; 0404d9:  ca 01 6c 00 00 00 00 00 00 00 00 00 00 00 54 00  |..l...........T.|
; 0404e9:  55 00 ff ff                                      |U...|
