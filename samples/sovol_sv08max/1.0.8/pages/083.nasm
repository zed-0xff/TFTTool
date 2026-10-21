; page 83: 25 objects

; object address table, 25 objects, block loaded at 0xb950
.dd 0xb9b4, 0x3408, 0xb9f4, 0xba48, 0xba9c, 0x345c, 0x34b0, 0x3504
.dd 0x3558, 0x35ac, 0x35e8, 0x3624, 0x3660, 0x369c, 0x36d8, 0x3714
.dd 0x3750, 0x378c, 0x37e0, 0xbaf0, 0xbb10, 0xbb30, 0x3834, 0x3888
.dd 0x38dc

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x5118998c
; flags=0x37, aph=127, events: event_3=0x4ff3e
; sta=2, pic=102
; 050652:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x4ff3e
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x50bbe
    ref 19
    ref 20
    if global_14 != 0 then jump lbl_50c03
    local_715d = "返回"
    jmp lbl_50d6e

lbl_50c03:
    if global_14 != 1 then jump lbl_50c36
    local_715d = "Return"
    jmp lbl_50d6e

lbl_50c36:
    if global_14 != 2 then jump lbl_50c69
    local_715d = "戻る"
    jmp lbl_50d6e

lbl_50c69:
    if global_14 != 3 then jump lbl_50ca3
    local_715d = "Zurückkehren"
    jmp lbl_50d6e

lbl_50ca3:
    if global_14 != 4 then jump lbl_50cd8
    local_715d = "Regresar"
    jmp lbl_50d6e

lbl_50cd8:
    if global_14 != 5 then jump lbl_50d0e
    local_715d = "Retourner"
    jmp lbl_50d6e

lbl_50d0e:
    if global_14 != 6 then jump lbl_50d43
    local_715d = "Retornar"
    T 0x2b

lbl_50d43:
    if global_14 != 7 then jump lbl_50d6e
    local_715d = "Ritornare"

lbl_50d6e:
    doevents
    down
    up
    unload
    down
    up
    down
    up

; object id 257 (button 'b0'): x=234, y=59, w=57, h=29, name hash=0xce1a7436
; borderc=0x0000, picc=53, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0x4ff84
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up
    down
    up

; object id 2 (text 't0'): x=29, y=14, w=100, h=30, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="网络选择"

; object id 3 (text 't3'): x=45, y=58, w=100, h=30, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="无线局域网"

; object id 4 (text 't4'): x=45, y=83, w=100, h=30, name hash=0x1d54e28e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="我的网络"

; object id 261 (text 'wifi_0'): x=46, y=131, w=174, h=30, name hash=0x259889c
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0x5003c
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 262 (text 'wifi_2'): x=46, y=197, w=162, h=30, name hash=0x5019fb17
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 5

; touch_release
.org 0x500a6
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 263 (text 'wifi_3'): x=46, y=230, w=162, h=30, name hash=0xfb594c09
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0x50110
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 264 (text 'wifi_1'): x=46, y=164, w=162, h=30, name hash=0xa9193f82
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 4

; touch_release
.org 0x5017a
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    timer

; object id 265 (crop 'q0'): x=238, y=133, w=25, h=26, name hash=0x32aa1f99

; object id 266 (crop 'q1'): x=233, y=168, w=28, h=26, name hash=0x44c504e1

; object id 267 (crop 'q2'): x=234, y=204, w=30, h=24, name hash=0xde742969

; object id 268 (crop 'q3'): x=234, y=238, w=30, h=24, name hash=0xa81b3211

; object id 269 (crop 'q4'): x=262, y=132, w=31, h=25, name hash=0xefd76fce

; object id 270 (crop 'q5'): x=262, y=168, w=31, h=24, name hash=0x99b874b6

; object id 271 (crop 'q6'): x=262, y=203, w=31, h=24, name hash=0x309593e

; object id 272 (crop 'q7'): x=263, y=238, w=29, h=24, name hash=0x75664246

; object id 273 (text 't1'): x=311, y=48, w=155, h=37, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="IP:0.0.0.0"

; object id 274 (text 't2'): x=311, y=85, w=155, h=33, name hash=0x2cf7a429
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="MAC:0:0:0:0:0"

; object id 19 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x502df
; tim=1000, en=1

; timer
.org 0x502df
    if global_1c <= 0 then jump lbl_5033b
    if global_20 <= 0 then jump lbl_5033b
    global_20--
    if global_20 != 0 then jump lbl_5033b
    dim = global_30

lbl_5033b:
    down
    up

; object id 20 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x50355

; touch_release
.org 0x50355
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 21 (button 'b5'): x=387, y=5, w=82, h=38, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x5038d
; borderc=0x0000, picc=93, picc2=93, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="返回"
; text:
;   0: "返回"
;   1: "Return"
;   2: "戻る"
;   3: "Zurückkehren"
;   4: "Regresar"
;   5: "Retourner"
;   6: "Retornar"
;   7: "Ritornare"
; touch_release reports to the host: page <page>, widget 11
; 0507de:  ff ff                                            |..|

; touch_release
.org 0x5038d
    prints 0x65, 1
    prints dp, 1
    prints 11, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 278 (button 'b1'): x=305, y=121, w=46, h=48, name hash=0xb8756f4e
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0x503f8
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 279 (button 'b3'): x=307, y=171, w=46, h=47, name hash=0x54ab59be
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0x50462
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 280 (button 'b4'): x=307, y=220, w=46, h=47, name hash=0x13670461
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x504cc
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 942 bytes (30 trailing zero bytes dropped)
; 0507ee:  00 00 00 00 e7 bd 91 e7 bb 9c e9 80 89 e6 8b a9  |................|
; 0507fe:  00 00 00 00 03 00 00 00 00 00 00 00 00 00 00 00  |................|
; 05080e:  00 00 64 00 dc bd 00 00 00 00 00 00 00 00 00 00  |..d.............|
; 05081e:  74 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 05082e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 05083e:  00 00 7f 00 00 00 00 00 6f 01 93 00 14 00 17 00  |........o.......|
; 05084e:  82 01 a9 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 05085e:  ff ff 00 01 00 00 64 00 44 be 00 00 00 00 00 00  |......d.D.......|
; 05086e:  00 00 00 00 36 08 00 00 00 00 00 00 00 00 00 00  |....6...........|
; 05087e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 05088e:  00 00 00 00 00 00 7f 00 00 00 00 00 4f 01 3f 00  |............O.?.|
; 05089e:  1e 00 1e 00 6c 01 5c 00 00 00 00 00 03 00 00 00  |....l.\.........|
; 0508ae:  00 00 00 00 ff ff 02 01 00 00 00 00 00 00 00 00  |................|
; 0508be:  01 00 00 00 36 09 00 00 00 00 00 00 00 00 00 00  |....6...........|
; 0508ce:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0508de:  00 00 00 00 00 00 7f 00 00 00 00 00 4f 01 8e 00  |............O...|
; 0508ee:  1e 00 1e 00 6c 01 ab 00 00 00 00 00 03 00 00 00  |....l...........|
; 0508fe:  00 00 00 00 ff ff 02 01 00 00 00 00 00 00 00 00  |................|
; 05090e:  01 00 00 00 62 0a 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 05091e:  00 00 00 00 e6 97 a0 e7 ba bf e5 b1 80 e5 9f 9f  |................|
; 05092e:  e7 bd 91 00 00 00 7f 00 00 00 00 00 86 01 1e 00  |................|
; 05093e:  34 00 34 00 b9 01 51 00 00 00 00 00 00 00 00 00  |4.4...Q.........|
; 05094e:  00 00 62 00 5f 00 00 00 ff ff 01 01 00 00 0a 00  |..b._...........|
; 05095e:  ac be 00 00 00 00 00 00 00 00 00 00 00 00 1a 00  |................|
; 05096e:  38 01 7b 00 00 00 00 00 66 72 6f 6e 74 20 6d 6f  |8.{.....front mo|
; 05097e:  64 65 6c 20 63 6f 6f 6c 20 66 61 6e 00 00 00 00  |del cool fan....|
; 05098e:  00 00 00 00 74 0b 00 00 00 00 00 00 e4 b8 8a e4  |....t...........|
; 05099e:  b8 80 e6 ad a5 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0509ae:  00 00 00 00 00 00 7f 00 00 00 00 00 71 00 8b 00  |............q...|
; 0509be:  f7 00 1a 00 67 01 a4 00 00 00 00 00 03 00 00 00  |....g...........|
; 0509ce:  00 00 00 00 ff ff 00 01 00 00 64 00 1c c3 00 00  |..........d.....|
; 0509de:  62 61 63 6b 20 6d 6f 64 65 6c 20 63 6f 6f 6c 20  |back model cool |
; 0509ee:  66 61 6e 00 00 00 00 00 00 00 00 00 00 00 00 00  |fan.............|
; 0509fe:  00 00 00 00 e5 bc 80 e5 a7 8b 00 00 00 00 00 00  |................|
; 050a0e:  71 00 ae 00 f7 00 1a 00 67 01 c7 00 30 73 00 00  |q.......g...0s..|
; 050a1e:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 64 00  |..............d.|
; 050a2e:  84 c3 00 00 00 00 00 00 00 00 00 00 34 0d 00 00  |............4...|
; 050a3e:  00 00 00 00 00 00 00 00 25 00 00 00 62 0e 00 00  |........%...b...|
; 050a4e:  00 00 00 00 e6 88 91 e7 9a 84 e7 bd 91 e7 bb 9c  |................|
; 050a5e:  00 00 00 00 00 00 00 00 00 00 00 00 76 69 62 72  |............vibr|
; 050a6e:  61 74 69 6f 6e 00 35 00 22 00 22 00 6e 00 56 00  |ation.5.".".n.V.|
; 050a7e:  00 00 00 00 00 00 00 00 00 00 60 00 60 00 ff ff  |..........`.`...|
; 050a8e:  ff ff 01 01 00 00 0a 00 ec c3 00 00 00 00 00 00  |................|
; 050a9e:  62 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 050aae:  25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |%...............|
; 050abe:  00 00 7f 00 00 00 00 00 4d 00 5d 00 22 00 22 00  |........M.].".".|
; 050ace:  6e 00 7e 00 00 00 00 00 00 00 00 00 00 00 60 00  |n.~...........`.|
; 050ade:  60 00 ff ff ff ff 01 01 00 00 0a 00 f8 c3 00 00  |`...............|
; 050aee:  00 00 00 00 62 10 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 050afe:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 050b0e:  00 00 00 00 00 00 7f 00 00 00 00 00 4d 00 86 00  |............M...|
; 050b1e:  22 00 22 00 00 00 00 00 00 00 00 00 00 00 00 00  |".".............|
; 050b2e:  00 00 60 00 60 00 ff ff 42 65 64 20 4d 65 73 68  |..`.`...Bed Mesh|
; 050b3e:  20 43 61 6c 69 62 72 61 74 69 6f 6e e9 80 9f e5  | Calibration....|
; 050b4e:  ba a6 ef bc 9a 00 00 00 00 00 00 00 00 00 00 00  |................|
; 050b5e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 050b6e:  4d 00 ae 00 22 00 22 00 6e 00 cf 00 00 00 00 00  |M...".".n.......|
; 050b7e:  00 00 00 00 e8 bf 94 e5 9b 9e 00 ff ff ff 01 01  |................|
; 050b8e:  00 00 0a 00 10 c4 00 00 00 00 00 00 74 12        |............t.|
