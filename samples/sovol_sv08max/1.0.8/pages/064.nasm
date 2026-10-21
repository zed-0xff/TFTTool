; page 64 'zoffset': 13 objects

; object address table, 13 objects, block loaded at 0xb950
.dd 0xb984, 0xb9c4, 0xb9e4, 0x3210, 0x3264, 0x32b8, 0x330c, 0xba04
.dd 0xba58, 0xbaac, 0xbb00, 0xbb10, 0xbb30

; object id 0 (page 'zoffset'): x=0, y=0, w=480, h=272, name hash=0x5a7f8ed1
; flags=0x37, aph=127, events: event_3=0x42026
; sta=2, pic=86
; 04263f:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x42026
    global_20 = global_18
    dims = global_2c
    unload
    timer

; load
.org 0x429b7
    ref 1
    ref 2
    ref 11
    if global_14 != 0 then jump lbl_42a15
    local_5ebb = "返回"
    local_5e7c = "保存"
    jmp lbl_42bf9

lbl_42a15:
    if global_14 != 1 then jump lbl_42a58
    local_5ebb = "Return"
    local_5e7c = "Save"
    jmp lbl_42bf9

lbl_42a58:
    if global_14 != 2 then jump lbl_42a9d
    local_5ebb = "戻る"
    local_5e7c = "保存"
    jmp lbl_42bf9

lbl_42a9d:
    if global_14 != 3 then jump lbl_42ae6
    local_5ebb = "Rückkehr"
    local_5e7c = "Sichern"
    jmp lbl_42bf9

lbl_42ae6:
    if global_14 != 4 then jump lbl_42b2e
    local_5ebb = "Devolver"
    local_5e7c = "Guardar"
    jmp lbl_42bf9

lbl_42b2e:
    if global_14 != 5 then jump lbl_42b76
    local_5ebb = "Retourner"
    local_5e7c = "Sauver"
    jmp lbl_42bf9

lbl_42b76:
    if global_14 != 6 then jump lbl_42bbd
    local_5ebb = "Retornar"
    local_5e7c = "Salvar"
    jmp lbl_42bf9

lbl_42bbd:
    if global_14 != 7 then jump lbl_42bf9
    local_5ebb = "Ritorno"
    local_5e7c = "Salvare"

lbl_42bf9:
    doevents
    down
    up

; object id 1 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x42063
; tim=1000, en=1

; timer
.org 0x42063
    if global_1c <= 0 then jump lbl_420bf
    if global_20 <= 0 then jump lbl_420bf
    global_20--
    if global_20 != 0 then jump lbl_420bf
    dim = global_30

lbl_420bf:
    down
    up

; object id 2 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x420d9

; touch_release
.org 0x420d9
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 259 (button 'b2'): x=200, y=63, w=80, h=42, name hash=0x22c442c6
; borderc=0x0000, picc=86, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0x42111
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 260 (button 'b1'): x=118, y=63, w=80, h=42, name hash=0xb8756f4e
; borderc=0x0000, picc=87, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0x4217b
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 261 (button 'b3'): x=280, y=63, w=80, h=42, name hash=0x54ab59be
; borderc=0x0000, picc=86, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x421e5
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 262 (text 't1'): x=201, y=117, w=75, h=44, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0"

; object id 7 (button 'b4'): x=120, y=115, w=82, h=47, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x42269
; borderc=0x0000, picc=86, picc2=87, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3
; 0426cf:  ff ff                                            |..|

; touch_release
.org 0x42269
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b5'): x=277, y=115, w=82, h=47, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x422d3
; borderc=0x0000, picc=86, picc2=87, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 042723:  ff ff                                            |..|

; touch_release
.org 0x422d3
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b6'): x=240, y=169, w=117, h=42, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x4233d
; borderc=0x0000, picc=86, picc2=87, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="保存"
; text:
;   0: "保存"
;   1: "Save"
;   2: "保存"
;   3: "Sichern"
;   4: "Guardar"
;   5: "Sauver"
;   6: "Salvar"
;   7: "Salvare"
; touch_release reports to the host: page <page>, widget 6
; 042777:  ff ff                                            |..|

; touch_release
.org 0x4233d
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 10 (variable 'zoffset_step'): x=0, y=0, w=1, h=1, name hash=0xd62fd013
; sta=0, val=1
; 042787:  34 0a 00 07                                      |4...|

; object id 11 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27, events: timer=0x423a2
; tim=100, en=1

; timer
.org 0x423a2
    if local_5e91 != 1 then jump lbl_42421
    local_5daa = local_5d4e+1
    local_5dab = local_5d4e+1
    local_5d81 = local_5d4e
    local_5d82 = local_5d4e
    local_5dd3 = local_5d4e
    local_5dd4 = local_5d4e
    jmp lbl_42517

lbl_42421:
    if local_5e91 != 10 then jump lbl_424a1
    local_5daa = local_5d4e
    local_5dab = local_5d4e
    local_5d81 = local_5d4e+1
    local_5d82 = local_5d4e+1
    local_5dd3 = local_5d4e
    local_5dd4 = local_5d4e
    jmp lbl_42517

lbl_424a1:
    if local_5e91 != 100 then jump lbl_42517
    local_5daa = local_5d4e
    local_5dab = local_5d4e
    local_5d81 = local_5d4e
    local_5d82 = local_5d4e
    local_5dd3 = local_5d4e+1
    local_5dd4 = local_5d4e+1

lbl_42517:
    down
    up

; object id 12 (button 'b0'): x=120, y=169, w=117, h=42, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x42531
; borderc=0x0000, picc=86, picc2=87, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="返回"
; text:
;   0: "返回"
;   1: "Return"
;   2: "戻る"
;   3: "Rückkehr"
;   4: "Devolver"
;   5: "Retourner"
;   6: "Retornar"
;   7: "Ritorno"
; touch_release reports to the host: page <page>, widget 5
; 0427fb:  ff ff                                            |..|

; touch_release
.org 0x42531
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 410 bytes (14 trailing zero bytes dropped)
; 04280b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04281b:  00 00 00 00 00 00 7f 00 00 00 00 00 84 01 d0 00  |................|
; 04282b:  47 00 26 00 ca 01 f5 00 00 00 00 00 00 00 00 00  |G.&.............|
; 04283b:  00 00 54 00 55 00 ff ff ff ff 01 01 00 00 64 00  |..T.U.........d.|
; 04284b:  b8 c0 00 00 01 00 00 00 74 07 00 00 00 00 00 00  |........t.......|
; 04285b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04286b:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 04287b:  5f 00 cf 00 d1 00 28 00 2f 01 f6 00 00 00 00 00  |_.....(./.......|
; 04288b:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 04289b:  20 c1 00 00 01 00 00 00 00 00 00 00 74 08 00 00  | ...........t...|
; 0428ab:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0428bb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0428cb:  00 00 00 00 5f 00 8a 00 d1 00 28 00 2f 01 b1 00  |...._.....(./...|
; 0428db:  00 00 00 00 e4 bf 9d e5 ad 98 00 00 ff ff 00 01  |................|
; 0428eb:  00 00 2c 01 50 c2 00 00 01 00 00 00 00 00 00 00  |..,.P...........|
; 0428fb:  62 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 04290b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04291b:  00 00 7f 00 00 00 00 00 47 00 07 00 86 00 22 00  |........G.....".|
; 04292b:  cc 00 28 00 00 00 00 00 00 00 00 00 00 00 43 00  |..(...........C.|
; 04293b:  44 00 ff ff ff ff 01 01 00 00 64 00 e8 bf 94 e5  |D.........d.....|
; 04294b:  9b 9e 00 00 62 0a 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 04295b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04296b:  00 00 00 00 00 00 7f 00 00 00 00 00 cd 00 07 00  |................|
; 04297b:  86 00 22 00 52 01 28 00 00 00 00 00 00 00 00 00  |..".R.(.........|
; 04298b:  00 00 43 00 44 00 ff ff ff ff 01 01 00 00 64 00  |..C.D.........d.|
; 04299b:  e8 c3 00 00 01 00 00 00 62 0b                    |........b.|
