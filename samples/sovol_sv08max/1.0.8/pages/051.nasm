; page 51 'if_update': 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba1c, 0xba3c, 0xba90

; object id 0 (page 'if_update'): x=0, y=0, w=480, h=272, name hash=0x72d8968d
; flags=0x37, aph=127, events: event_3=0x36b43
; sta=2, pic=4
; 036d7a:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x36b43
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x370ce
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_37120
    local_496e = "是否更新固件？"
    jmp lbl_372f8

lbl_37120:
    if global_14 != 1 then jump lbl_3715d
    local_496e = "Update firmware?"
    jmp lbl_372f8

lbl_3715d:
    if global_14 != 2 then jump lbl_371b5
    local_496e = "ファームウェアを更新しますか?"
    jmp lbl_372f8

lbl_371b5:
    if global_14 != 3 then jump lbl_371f9
    local_496e = "Firmware aktualisieren?"
    jmp lbl_372f8

lbl_371f9:
    if global_14 != 4 then jump lbl_3723e
    local_496e = "¿Actualice el firmware?"
    jmp lbl_372f8

lbl_3723e:
    if global_14 != 5 then jump lbl_37284
    local_496e = "Mise à jour du firmware?"
    jmp lbl_372f8

lbl_37284:
    if global_14 != 6 then jump lbl_372c4
    local_496e = "Atualizar firmware?"
    jmp lbl_372f8

lbl_372c4:
    if global_14 != 7 then jump lbl_372f8
    local_496e = "Aggiorna firmware?"

lbl_372f8:
    if global_14 != 0 then jump lbl_37337
    local_49ac = "是"
    local_49d5 = "否"
    jmp lbl_374ec

lbl_37337:
    if global_14 != 1 then jump lbl_37375
    local_49ac = "Yes"
    local_49d5 = "No"
    jmp lbl_374ec

lbl_37375:
    if global_14 != 2 then jump lbl_373bd
    local_49ac = "はい"
    local_49d5 = "いいえ"
    T 0x12f

lbl_373bd:
    if global_14 != 3 then jump lbl_373fc
    local_49ac = "Ja"
    local_49d5 = "NEIN"
    jmp lbl_374ec

lbl_373fc:
    if global_14 != 4 then jump lbl_3743a
    local_49ac = "Sí"
    local_49d5 = "No"
    jmp lbl_374ec

lbl_3743a:
    if global_14 != 5 then jump lbl_37479
    local_49ac = "Oui"
    local_49d5 = "Non"
    jmp lbl_374ec

lbl_37479:
    if global_14 != 6 then jump lbl_374b9
    local_49ac = "Sim"
    local_49d5 = "Não"
    jmp lbl_374ec

lbl_374b9:
    if global_14 != 7 then jump lbl_374ec
    local_49ac = "SÌ"
    local_49d5 = "NO"

lbl_374ec:
    doevents
    down
    up

; object id 1 (text 't0'): x=130, y=58, w=224, h=96, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="是否更新固件？"
; text:
;   0: "是否更新固件？"
;   1: "Update firmware?"
;   2: "ファームウェアを更新しますか?"
;   3: "Firmware aktualisieren?"
;   4: "¿Actualice el firmware?"
;   5: "Mise à jour du firmware?"
;   6: "Atualizar firmware?"
;   7: "Aggiorna firmware?"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x36b9a
; tim=1000, en=1

; timer
.org 0x36b9a
    if global_1c <= 0 then jump lbl_36bf6
    if global_20 <= 0 then jump lbl_36bf6
    global_20--
    if global_20 != 0 then jump lbl_36bf6
    dim = global_30

lbl_36bf6:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x36c10

; touch_release
.org 0x36c10
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x36c48
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="是"
; text:
;   0: "是"
;   1: "Yes"
;   2: "はい"
;   3: "Ja"
;   4: "Sí"
;   5: "Oui"
;   6: "Sim"
;   7: "SÌ"
; touch_release reports to the host: page <page>, widget 0
; 036e5e:  ff ff                                            |..|

; touch_release
.org 0x36c48
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x36cb2
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="否"
; text:
;   0: "否"
;   1: "No"
;   2: "いいえ"
;   3: "NEIN"
;   4: "No"
;   5: "Non"
;   6: "Não"
;   7: "NO"
; touch_release reports to the host: page <page>, widget 1
; 036eb2:  ff ff                                            |..|

; touch_release
.org 0x36cb2
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 502 bytes (18 trailing zero bytes dropped)
; 036ec2:  00 00 00 00 e6 98 af e5 90 a6 e6 9b b4 e6 96 b0  |................|
; 036ed2:  e5 9b ba e4 bb b6 ef bc 9f 00 8e 82 e8 ae be e7  |................|
; 036ee2:  bd ae e5 90 97 ef bc 9f 00 00 00 00 00 00 00 00  |................|
; 036ef2:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 036f02:  f8 bd 00 00 01 00 00 00 62 05 00 00 00 00 00 00  |........b.......|
; 036f12:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036f22:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 036f32:  43 00 07 00 d0 00 22 00 12 01 28 00 00 00 00 00  |C....."...(.....|
; 036f42:  00 00 00 00 00 00 32 00 33 00 ff ff ff ff 01 01  |......2.3.......|
; 036f52:  00 00 64 00 60 be 00 00 01 00 00 00 62 06 00 00  |..d.`.......b...|
; 036f62:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036f72:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 036f82:  00 00 00 00 0e 01 07 00 c6 00 22 00 d3 01 28 00  |.........."...(.|
; 036f92:  00 00 00 00 00 00 00 00 00 00 32 00 33 00 ff ff  |..........2.3...|
; 036fa2:  ff ff 01 01 00 00 64 00 c8 be 00 00 01 00 00 00  |......d.........|
; 036fb2:  62 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 036fc2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036fd2:  00 00 00 00 00 00 00 00 d2 01 00 00 0e 00 06 00  |................|
; 036fe2:  df 01 05 00 00 00 00 00 00 00 00 00 00 00 32 00  |..............2.|
; 036ff2:  33 00 ff ff e6 98 af 00 00 00 64 00 30 bf 00 00  |3.........d.0...|
; 037002:  01 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 037012:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 037022:  00 00 00 00 00 00 7f 00 00 00 00 00 84 01 d6 00  |................|
; 037032:  47 00 22 00 ca 01 f7 00 00 00 00 00 00 00 00 00  |G.".............|
; 037042:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 037052:  98 bf 00 00 01 00 00 00 33 11 00 00 e5 90 a6 00  |........3.......|
; 037062:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 037072:  00 00 00 00 e8 03 01 00 05 12 00 00 00 00 00 00  |................|
; 037082:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 037092:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00  |..............0.|
; 0370a2:  31 00 ff ff ff ff 01 01 00 00 64 00 50 c3 00 00  |1.........d.P...|
; 0370b2:  01 00 00 00 74 0a                                |....t.|
