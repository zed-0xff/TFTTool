; page 51 'if_update': 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa470, 0xa490, 0xa4e4

; object id 0 (page 'if_update'): x=0, y=0, w=480, h=272, name hash=0x72d8968d
; flags=0x37, aph=127, events: event_3=0x367c8
; sta=2, pic=4
; 0369ff:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x367c8
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x36d53
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_36da5
    local_4abd = "是否更新固件？"
    jmp lbl_36f7d

lbl_36da5:
    if global_14 != 1 then jump lbl_36de2
    local_4abd = "Update firmware?"
    jmp lbl_36f7d

lbl_36de2:
    if global_14 != 2 then jump lbl_36e3a
    local_4abd = "ファームウェアを更新しますか?"
    jmp lbl_36f7d

lbl_36e3a:
    if global_14 != 3 then jump lbl_36e7e
    local_4abd = "Firmware aktualisieren?"
    jmp lbl_36f7d

lbl_36e7e:
    if global_14 != 4 then jump lbl_36ec3
    local_4abd = "¿Actualice el firmware?"
    jmp lbl_36f7d

lbl_36ec3:
    if global_14 != 5 then jump lbl_36f09
    local_4abd = "Mise à jour du firmware?"
    jmp lbl_36f7d

lbl_36f09:
    if global_14 != 6 then jump lbl_36f49
    local_4abd = "Atualizar firmware?"
    jmp lbl_36f7d

lbl_36f49:
    if global_14 != 7 then jump lbl_36f7d
    local_4abd = "Aggiorna firmware?"

lbl_36f7d:
    if global_14 != 0 then jump lbl_36fbc
    local_4afb = "是"
    local_4b24 = "否"
    jmp lbl_37171

lbl_36fbc:
    if global_14 != 1 then jump lbl_36ffa
    local_4afb = "Yes"
    local_4b24 = "No"
    jmp lbl_37171

lbl_36ffa:
    if global_14 != 2 then jump lbl_37042
    local_4afb = "はい"
    local_4b24 = "いいえ"
    T 0x12f

lbl_37042:
    if global_14 != 3 then jump lbl_37081
    local_4afb = "Ja"
    local_4b24 = "NEIN"
    jmp lbl_37171

lbl_37081:
    if global_14 != 4 then jump lbl_370bf
    local_4afb = "Sí"
    local_4b24 = "No"
    jmp lbl_37171

lbl_370bf:
    if global_14 != 5 then jump lbl_370fe
    local_4afb = "Oui"
    local_4b24 = "Non"
    jmp lbl_37171

lbl_370fe:
    if global_14 != 6 then jump lbl_3713e
    local_4afb = "Sim"
    local_4b24 = "Não"
    jmp lbl_37171

lbl_3713e:
    if global_14 != 7 then jump lbl_37171
    local_4afb = "SÌ"
    local_4b24 = "NO"

lbl_37171:
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
; flags=0x27, events: timer=0x3681f
; tim=1000, en=1

; timer
.org 0x3681f
    if global_1c <= 0 then jump lbl_3687b
    if global_20 <= 0 then jump lbl_3687b
    global_20--
    if global_20 != 0 then jump lbl_3687b
    dim = global_30

lbl_3687b:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x36895

; touch_release
.org 0x36895
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x368cd
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
; 036ae3:  ff ff                                            |..|

; touch_release
.org 0x368cd
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x36937
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
; 036b37:  ff ff                                            |..|

; touch_release
.org 0x36937
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 516 bytes (4 trailing zero bytes dropped)
; 036b47:  00 00 00 00 e6 98 af e5 90 a6 e6 9b b4 e6 96 b0  |................|
; 036b57:  e5 9b ba e4 bb b6 ef bc 9f 00 8e 82 e8 ae be e7  |................|
; 036b67:  bd ae e5 90 97 ef bc 9f 00 00 00 00 00 00 00 00  |................|
; 036b77:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 036b87:  4c a8 00 00 01 00 00 00 62 05 00 00 00 00 00 00  |L.......b.......|
; 036b97:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036ba7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 036bb7:  43 00 07 00 86 00 22 00 c8 00 28 00 00 00 00 00  |C....."...(.....|
; 036bc7:  00 00 00 00 00 00 32 00 33 00 ff ff ff ff 01 01  |......2.3.......|
; 036bd7:  00 00 64 00 b4 a8 00 00 01 00 00 00 62 06 00 00  |..d.........b...|
; 036be7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036bf7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 036c07:  00 00 00 00 c9 00 07 00 86 00 22 00 4e 01 28 00  |..........".N.(.|
; 036c17:  00 00 00 00 00 00 00 00 00 00 32 00 33 00 ff ff  |..........2.3...|
; 036c27:  ff ff 01 01 00 00 64 00 1c a9 00 00 01 00 00 00  |......d.........|
; 036c37:  62 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 036c47:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036c57:  00 00 7f 00 00 00 00 00 4f 01 07 00 86 00 22 00  |........O.....".|
; 036c67:  d4 01 28 00 00 00 00 00 00 00 00 00 00 00 32 00  |..(...........2.|
; 036c77:  33 00 ff ff e6 98 af 00 00 00 64 00 84 a9 00 00  |3.........d.....|
; 036c87:  01 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 036c97:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036ca7:  00 00 00 00 00 00 7f 00 00 00 00 00 84 01 d6 00  |................|
; 036cb7:  47 00 22 00 ca 01 f7 00 00 00 00 00 00 00 00 00  |G.".............|
; 036cc7:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 036cd7:  ec a9 00 00 01 00 00 00 33 11 00 00 e5 90 a6 00  |........3.......|
; 036ce7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036cf7:  00 00 00 00 e8 03 01 00 05 12 00 00 00 00 00 00  |................|
; 036d07:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036d17:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036d27:  00 00 7f 00 00 00 00 00 52 01 07 00 86 00 22 00  |........R.....".|
; 036d37:  d7 01 28 00 00 00 00 00 00 00 00 00 00 00 30 00  |..(...........0.|
; 036d47:  31 00 ff ff                                      |1...|
