; page 64 'zoffset': 13 objects

; object address table, 13 objects, block loaded at 0xa3a4
.dd 0xa3d8, 0xa418, 0xa438, 0x3164, 0x31b8, 0x320c, 0x3260, 0xa458
.dd 0xa4ac, 0xa500, 0xa554, 0xa564, 0xa584

; object id 0 (page 'zoffset'): x=0, y=0, w=480, h=272, name hash=0x5a7f8ed1
; flags=0x37, aph=127, events: event_3=0x4146c
; sta=2, pic=86
; 041a85:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x4146c
    global_20 = global_18
    dims = global_2c
    unload
    timer

; load
.org 0x41dfd
    ref 1
    ref 2
    ref 11
    if global_14 != 0 then jump lbl_41e5b
    local_5f45 = "返回"
    local_5f06 = "保存"
    jmp lbl_4203f

lbl_41e5b:
    if global_14 != 1 then jump lbl_41e9e
    local_5f45 = "Return"
    local_5f06 = "Save"
    jmp lbl_4203f

lbl_41e9e:
    if global_14 != 2 then jump lbl_41ee3
    local_5f45 = "戻る"
    local_5f06 = "保存"
    jmp lbl_4203f

lbl_41ee3:
    if global_14 != 3 then jump lbl_41f2c
    local_5f45 = "Rückkehr"
    local_5f06 = "Sichern"
    jmp lbl_4203f

lbl_41f2c:
    if global_14 != 4 then jump lbl_41f74
    local_5f45 = "Devolver"
    local_5f06 = "Guardar"
    jmp lbl_4203f

lbl_41f74:
    if global_14 != 5 then jump lbl_41fbc
    local_5f45 = "Retourner"
    local_5f06 = "Sauver"
    jmp lbl_4203f

lbl_41fbc:
    if global_14 != 6 then jump lbl_42003
    local_5f45 = "Retornar"
    local_5f06 = "Salvar"
    jmp lbl_4203f

lbl_42003:
    if global_14 != 7 then jump lbl_4203f
    local_5f45 = "Ritorno"
    local_5f06 = "Salvare"

lbl_4203f:
    doevents
    down
    up

; object id 1 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x414a9
; tim=1000, en=1

; timer
.org 0x414a9
    if global_1c <= 0 then jump lbl_41505
    if global_20 <= 0 then jump lbl_41505
    global_20--
    if global_20 != 0 then jump lbl_41505
    dim = global_30

lbl_41505:
    down
    up

; object id 2 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x4151f

; touch_release
.org 0x4151f
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 259 (button 'b2'): x=200, y=63, w=80, h=42, name hash=0x22c442c6
; borderc=0x0000, picc=86, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0x41557
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
.org 0x415c1
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
.org 0x4162b
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
; flags=0x37, aph=127, events: touch_release=0x416af
; borderc=0x0000, picc=86, picc2=87, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3
; 041b15:  ff ff                                            |..|

; touch_release
.org 0x416af
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b5'): x=277, y=115, w=82, h=47, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x41719
; borderc=0x0000, picc=86, picc2=87, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 041b69:  ff ff                                            |..|

; touch_release
.org 0x41719
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b6'): x=240, y=169, w=117, h=42, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x41783
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
; 041bbd:  ff ff                                            |..|

; touch_release
.org 0x41783
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 10 (variable 'zoffset_step'): x=0, y=0, w=1, h=1, name hash=0xd62fd013
; sta=0, val=1
; 041bcd:  34 0a 00 07                                      |4...|

; object id 11 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27, events: timer=0x417e8
; tim=100, en=1

; timer
.org 0x417e8
    if local_5f1b != 1 then jump lbl_41867
    local_5e34 = local_5dd8+1
    local_5e35 = local_5dd8+1
    local_5e0b = local_5dd8
    local_5e0c = local_5dd8
    local_5e5d = local_5dd8
    local_5e5e = local_5dd8
    jmp lbl_4195d

lbl_41867:
    if local_5f1b != 10 then jump lbl_418e7
    local_5e34 = local_5dd8
    local_5e35 = local_5dd8
    local_5e0b = local_5dd8+1
    local_5e0c = local_5dd8+1
    local_5e5d = local_5dd8
    local_5e5e = local_5dd8
    jmp lbl_4195d

lbl_418e7:
    if local_5f1b != 100 then jump lbl_4195d
    local_5e34 = local_5dd8
    local_5e35 = local_5dd8
    local_5e0b = local_5dd8
    local_5e0c = local_5dd8
    local_5e5d = local_5dd8+1
    local_5e5e = local_5dd8+1

lbl_4195d:
    down
    up

; object id 12 (button 'b0'): x=120, y=169, w=117, h=42, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x41977
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
; 041c41:  ff ff                                            |..|

; touch_release
.org 0x41977
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 410 bytes (14 trailing zero bytes dropped)
; 041c51:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041c61:  00 00 00 00 00 00 7f 00 00 00 00 00 84 01 d0 00  |................|
; 041c71:  47 00 26 00 ca 01 f5 00 00 00 00 00 00 00 00 00  |G.&.............|
; 041c81:  00 00 54 00 55 00 ff ff ff ff 01 01 00 00 64 00  |..T.U.........d.|
; 041c91:  0c ab 00 00 01 00 00 00 74 07 00 00 00 00 00 00  |........t.......|
; 041ca1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041cb1:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 041cc1:  5f 00 cf 00 d1 00 28 00 2f 01 f6 00 00 00 00 00  |_.....(./.......|
; 041cd1:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 041ce1:  74 ab 00 00 01 00 00 00 00 00 00 00 74 08 00 00  |t...........t...|
; 041cf1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041d01:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 041d11:  00 00 00 00 5f 00 8a 00 d1 00 28 00 2f 01 b1 00  |...._.....(./...|
; 041d21:  00 00 00 00 e4 bf 9d e5 ad 98 00 00 ff ff 00 01  |................|
; 041d31:  00 00 2c 01 a4 ac 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 041d41:  62 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 041d51:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041d61:  00 00 7f 00 00 00 00 00 47 00 07 00 86 00 22 00  |........G.....".|
; 041d71:  cc 00 28 00 00 00 00 00 00 00 00 00 00 00 43 00  |..(...........C.|
; 041d81:  44 00 ff ff ff ff 01 01 00 00 64 00 e8 bf 94 e5  |D.........d.....|
; 041d91:  9b 9e 00 00 62 0a 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 041da1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 041db1:  00 00 00 00 00 00 7f 00 00 00 00 00 cd 00 07 00  |................|
; 041dc1:  86 00 22 00 52 01 28 00 00 00 00 00 00 00 00 00  |..".R.(.........|
; 041dd1:  00 00 43 00 44 00 ff ff ff ff 01 01 00 00 64 00  |..C.D.........d.|
; 041de1:  3c ae 00 00 01 00 00 00 62 0b                    |<.......b.|
