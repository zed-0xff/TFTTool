; page 61 'z_calibrating': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'z_calibrating'): x=0, y=0, w=480, h=272, name hash=0x568fecaa
; flags=0x37, aph=127, events: event_3=0x40d41
; sta=2, pic=1
; 040e90:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x40d41
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x4106c
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_410c7
    local_5bbe = "涡流校准中，请稍候..."
    jmp lbl_413ac

lbl_410c7:
    if global_14 != 1 then jump lbl_41128
    local_5bbe = "Eddy current calibration in progress, please wait..."
    jmp lbl_413ac

lbl_41128:
    if global_14 != 2 then jump lbl_41197
    local_5bbe = "渦電流キャリブレーション中、お待ちください..."
    jmp lbl_413ac

lbl_41197:
    if global_14 != 3 then jump lbl_411f3
    local_5bbe = "Wirbelstromkalibrierung läuft, bitte warten..."
    jmp lbl_413ac

lbl_411f3:
    if global_14 != 4 then jump lbl_41266
    local_5bbe = "Calibración de corriente de Foucault en progreso, por favor espere..."
    jmp lbl_413ac

lbl_41266:
    if global_14 != 5 then jump lbl_412d7
    local_5bbe = "Étalonnage par courants de Foucault en cours, veuillez patienter..."
    jmp lbl_413ac

lbl_412d7:
    if global_14 != 6 then jump lbl_4134c
    local_5bbe = "Calibração por Corrente de Foucault em andamento, por favor aguarde..."
    jmp lbl_413ac

lbl_4134c:
    if global_14 != 7 then jump lbl_413ac
    local_5bbe = "Calibrazione a correnti parassite in corso, attendere prego..."

lbl_413ac:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=97, w=268, h=64, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="涡流校准中，请稍候..."
; text:
;   0: "涡流校准中，请稍候..."
;   1: "Eddy current calibration in progress, please wait..."
;   2: "渦電流キャリブレーション中、お待ちください..."
;   3: "Wirbelstromkalibrierung läuft, bitte warten..."
;   4: "Calibración de corriente de Foucault en progreso, por favor espere..."
;   5: "Étalonnage par courants de Foucault en cours, veuillez patienter..."
;   6: "Calibração por Corrente de Foucault em andamento, por favor aguarde..."
;   7: "Calibrazione a correnti parassite in corso, attendere prego..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x40d98
; tim=1000, en=1

; timer
.org 0x40d98
    if global_1c <= 0 then jump lbl_40df4
    if global_20 <= 0 then jump lbl_40df4
    global_20--
    if global_20 != 0 then jump lbl_40df4
    dim = global_30

lbl_40df4:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x40e0e

; touch_release
.org 0x40e0e
    global_20 = global_18
    dims = global_2c

; data after the object structs, 308 bytes (4 trailing zero bytes dropped)
; 040f30:  00 00 00 00 e6 b6 a1 e6 b5 81 e6 a0 a1 e5 87 86  |................|
; 040f40:  e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d e5 80 99 2e  |................|
; 040f50:  2e 2e 00 00 3c 00 85 00 00 00 00 00 00 00 00 00  |....<...........|
; 040f60:  00 00 43 00 44 00 ff ff ff ff 01 01 00 00 64 00  |..C.D.........d.|
; 040f70:  18 bf 00 00 01 00 00 00 62 03 00 00 00 00 00 00  |........b.......|
; 040f80:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040f90:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 040fa0:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 040fb0:  00 00 00 00 00 00 43 00 44 00 ff ff ff ff 01 01  |......C.D.......|
; 040fc0:  00 00 64 00 80 bf 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 040fd0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 040fe0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 040ff0:  00 00 00 00 00 00 d3 00 3d 00 36 00 3c 00 08 01  |........=.6.<...|
; 041000:  00 00 00 00 00 00 00 00 00 00 43 00 44 00 ff ff  |..........C.D...|
; 041010:  ff ff 01 01 00 00 64 00 e8 bf 00 00 01 00 00 00  |......d.........|
; 041020:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 041030:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041040:  00 00 7f 00 00 00 00 00 85 01 46 00 46 00 27 00  |..........F.F.'.|
; 041050:  ca 01 6c 00 00 00 00 00 00 00 00 00 00 00 54 00  |..l...........T.|
; 041060:  55 00 ff ff                                      |U...|
