; page 62: 8 objects

; object address table, 8 objects, block loaded at 0xb950
.dd 0xb970, 0xb9b0, 0xba04, 0xba24, 0x30c0, 0x3114, 0x3168, 0x31bc

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x20ced183
; flags=0x37, aph=127, events: event_3=0x413cd
; sta=2, pic=1
; 0415ac:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x413cd
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x41788
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_417e3
    local_5c1b = "正在加热中，请稍候..."
    jmp lbl_41a0a

lbl_417e3:
    if global_14 != 1 then jump lbl_41833
    local_5c1b = "Heating in progress, please wait..."
    jmp lbl_41a0a

lbl_41833:
    if global_14 != 2 then jump lbl_41884
    local_5c1b = "加熱中、お待ちください..."
    jmp lbl_41a0a

lbl_41884:
    if global_14 != 3 then jump lbl_418d0
    local_5c1b = "Heizung läuft, bitte warten..."
    jmp lbl_41a0a

lbl_418d0:
    if global_14 != 4 then jump lbl_4191c
    local_5c1b = "Calentando, por favor espere..."
    jmp lbl_41a0a

lbl_4191c:
    if global_14 != 5 then jump lbl_41972
    local_5c1b = "Chauffage en cours, veuillez patienter..."
    jmp lbl_41a0a

lbl_41972:
    if global_14 != 6 then jump lbl_419be
    local_5c1b = "Aquecendo, aguarde por favor..."
    jmp lbl_41a0a

lbl_419be:
    if global_14 != 7 then jump lbl_41a0a
    local_5c1b = "Riscaldamento in corso, attendere prego..."

lbl_41a0a:
    doevents
    down
    up

; object id 1 (text 't0'): x=105, y=70, w=268, h=50, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="正在加热中，请稍候"
; text:
;   0: "正在加热中，请稍候..."
;   1: "Heating in progress, please wait..."
;   2: "加熱中、お待ちください..."
;   3: "Heizung läuft, bitte warten..."
;   4: "Calentando, por favor espere..."
;   5: "Chauffage en cours, veuillez patienter..."
;   6: "Aquecendo, aguarde por favor..."
;   7: "Riscaldamento in corso, attendere prego..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x41424
; tim=1000, en=1

; timer
.org 0x41424
    if global_1c <= 0 then jump lbl_41480
    if global_20 <= 0 then jump lbl_41480
    global_20--
    if global_20 != 0 then jump lbl_41480
    dim = global_30

lbl_41480:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x4149a

; touch_release
.org 0x4149a
    global_20 = global_18
    dims = global_2c
    down
    up
    down
    up
    down
    up
    down
    up

; object id 260 (text 'hot_bed_temp'): x=206, y=171, w=33, h=30, name hash=0x3675c015
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object id 261 (text 'bed_target'): x=240, y=171, w=33, h=30, name hash=0x5af95597
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="65℃"

; object id 262 (text 'extrude_temp'): x=206, y=135, w=33, h=30, name hash=0x62682352
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object id 263 (text 'extrude_target'): x=240, y=135, w=33, h=30, name hash=0x1257a561
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="150℃"

; data after the object structs, 305 bytes (7 trailing zero bytes dropped)
; 04164c:  00 00 00 00 e6 ad a3 e5 9c a8 e5 8a a0 e7 83 ad  |................|
; 04165c:  e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d e5 80 99 00  |................|
; 04166c:  00 00 43 00 44 00 ff ff ff ff 01 01 00 00 64 00  |..C.D.........d.|
; 04167c:  18 bf 00 00 01 00 00 00 62 03 00 00 00 00 00 00  |........b.......|
; 04168c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04169c:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0416ac:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 0416bc:  00 00 00 00 00 00 43 00 44 00 ff ff ff ff 01 01  |......C.D.......|
; 0416cc:  00 00 64 00 80 bf 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 0416dc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0416ec:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0416fc:  00 00 00 00 00 00 d3 00 3d 00 36 00 3c 00 08 01  |........=.6.<...|
; 04170c:  00 00 00 00 00 00 00 00 00 00 43 00 44 00 ff ff  |..........C.D...|
; 04171c:  ff ff 01 01 00 00 64 00 e8 bf 00 00 01 00 00 00  |......d.........|
; 04172c:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 04173c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04174c:  00 00 7f 00 00 00 00 00 85 01 46 00 46 00 27 00  |..........F.F.'.|
; 04175c:  ca 01 6c 00 00 00 00 00 00 00 00 00 00 00 54 00  |..l...........T.|
; 04176c:  55 00 ff ff 00 00 00 00 00 00 64 00 50 c0 00 00  |U.........d.P...|
; 04177c:  01                                               |.|
