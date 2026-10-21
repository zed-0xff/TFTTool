; page 9 'if_reprint': 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba50, 0xbaa4, 0xbac4

; object id 0 (page 'if_reprint'): x=0, y=0, w=480, h=272, name hash=0x8efe7bd0
; flags=0x37, aph=127, events: event_3=0x10414
; sta=2, pic=4
; 01064b:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x10414
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x1099f
    ref 4
    ref 5
    if global_14 != 0 then jump lbl_109f1
    local_cba = "是否断电续打？"
    jmp lbl_10c9a

lbl_109f1:
    if global_14 != 1 then jump lbl_10a53
    local_cba = "Do you want to continue calling after power outage？"
    jmp lbl_10c9a

lbl_10a53:
    if global_14 != 2 then jump lbl_10aa5
    local_cba = "停電後も通話を続けますか?"
    jmp lbl_10c9a

lbl_10aa5:
    if global_14 != 3 then jump lbl_10b0b
    local_cba = "Möchten Sie nach einem Stromausfall weiter telefonieren?"
    jmp lbl_10c9a

lbl_10b0b:
    if global_14 != 4 then jump lbl_10b71
    local_cba = "¿Quieres seguir llamando después del corte de energía?"
    jmp lbl_10c9a

lbl_10b71:
    if global_14 != 5 then jump lbl_10bdd
    local_cba = "Voulez-vous continuer à appeler après une panne de courant ?"
    jmp lbl_10c9a

lbl_10bdd:
    if global_14 != 6 then jump lbl_10c3c
    local_cba = "Quer continuar ligando após uma queda de energia?"
    T 0x5e

lbl_10c3c:
    if global_14 != 7 then jump lbl_10c9a
    local_cba = "Vuoi continuare a chiamare dopo un'interruzione di corrente?"

lbl_10c9a:
    if global_14 != 0 then jump lbl_10cd9
    local_c6a = "是"
    local_c93 = "否"
    jmp lbl_10e8e

lbl_10cd9:
    if global_14 != 1 then jump lbl_10d17
    local_c6a = "Yes"
    local_c93 = "No"
    jmp lbl_10e8e

lbl_10d17:
    if global_14 != 2 then jump lbl_10d5f
    local_c6a = "はい"
    local_c93 = "いいえ"
    T 0x12f

lbl_10d5f:
    if global_14 != 3 then jump lbl_10d9e
    local_c6a = "Ja"
    local_c93 = "NEIN"
    jmp lbl_10e8e

lbl_10d9e:
    if global_14 != 4 then jump lbl_10ddc
    local_c6a = "Sí"
    local_c93 = "No"
    jmp lbl_10e8e

lbl_10ddc:
    if global_14 != 5 then jump lbl_10e1b
    local_c6a = "Oui"
    local_c93 = "Non"
    jmp lbl_10e8e

lbl_10e1b:
    if global_14 != 6 then jump lbl_10e5b
    local_c6a = "Sim"
    local_c93 = "Não"
    jmp lbl_10e8e

lbl_10e5b:
    if global_14 != 7 then jump lbl_10e8e
    local_c6a = "SÌ"
    local_c93 = "NO"

lbl_10e8e:
    doevents
    down
    up

; object id 1 (button): x=107, y=172, w=128, h=39, name hash=0xe108818
; flags=0x37, aph=127, events: touch_release=0x1045a
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
; 01069b:  ff ff                                            |..|

; touch_release
.org 0x1045a
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x104c4
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
; 0106ef:  ff ff                                            |..|

; touch_release
.org 0x104c4
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    timer

; object id 3 (text 't0'): x=126, y=68, w=224, h=82, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="是否断电续打？"
; text:
;   0: "是否断电续打？"
;   1: "Do you want to continue calling after power outage？"
;   2: "停電後も通話を続けますか?"
;   3: "Möchten Sie nach einem Stromausfall weiter telefonieren?"
;   4: "¿Quieres seguir llamando después del corte de energía?"
;   5: "Voulez-vous continuer à appeler après une panne de courant ?"
;   6: "Quer continuar ligando após uma queda de energia?"
;   7: "Vuoi continuare a chiamare dopo un'interruzione di corrente?"

; object id 4 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1053f
; tim=1000, en=1

; timer
.org 0x1053f
    if global_1c <= 0 then jump lbl_1059b
    if global_20 <= 0 then jump lbl_1059b
    global_20--
    if global_20 != 0 then jump lbl_1059b
    dim = global_30

lbl_1059b:
    down
    up

; object id 5 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x105b5

; touch_release
.org 0x105b5
    global_20 = global_18
    dims = global_2c

; data after the object structs, 512 bytes (8 trailing zero bytes dropped)
; 010793:  00 00 00 00 e6 98 af 00 98 be 00 00 01 00 00 00  |................|
; 0107a3:  00 00 00 00 33 13 00 00 00 00 00 00 00 00 00 00  |....3...........|
; 0107b3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0107c3:  e8 03 01 00 05 14 00 00 00 00 00 00 00 00 00 00  |................|
; 0107d3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0107e3:  00 00 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0107f3:  00 00 00 00 00 00 00 00 00 00 00 00 e5 90 a6 00  |................|
; 010803:  00 00 00 00 00 00 7f 00 00 00 00 00 83 01 05 00  |................|
; 010813:  52 00 26 00 d4 01 2a 00 00 00 00 00 00 00 00 00  |R.&...*.........|
; 010823:  00 00 5d 00 5d 00 ff ff ff ff 01 01 00 00 32 00  |..].].........2.|
; 010833:  c8 bf 00 00 00 00 00 00 62 19 00 00 00 00 00 00  |........b.......|
; 010843:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 010853:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 010863:  85 01 be 00 e6 98 af e5 90 a6 e6 96 ad e7 94 b5  |................|
; 010873:  e7 bb ad e6 89 93 ef bc 9f 00 ff ff ff ff 01 01  |................|
; 010883:  00 00 32 00 fc bf 00 00 00 00 00 00 62 1a 00 00  |..2.........b...|
; 010893:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0108a3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0108b3:  00 00 00 00 84 01 e8 00 4d 00 25 00 d0 01 0c 01  |........M.%.....|
; 0108c3:  00 00 00 00 03 00 00 00 00 00 00 00 00 00 ff ff  |................|
; 0108d3:  ff ff 01 01 00 00 32 00 30 c0 00 00 00 00 00 00  |......2.0.......|
; 0108e3:  00 00 00 00 e7 bd 91 e7 bb 9c e9 80 89 e6 8b a9  |................|
; 0108f3:  00 00 00 00 00 00 00 00 00 00 00 00 1d 00 b8 00  |................|
; 010903:  68 00 1e 00 84 00 d5 00 00 00 00 00 03 00 00 00  |h...............|
; 010913:  00 00 00 00 ff ff 02 01 00 00 2c 01 e9 80 80 e5  |..........,.....|
; 010923:  87 ba 00 00 00 00 00 00 74 0a 01 00 00 00 00 00  |........t.......|
; 010933:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 010943:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 010953:  88 00 95 00 6d 00 1e 00 f4 00 b2 00 00 00 00 00  |....m...........|
; 010963:  03 00 00 00 00 00 00 00 e8 07 00 01 00 00 2c 01  |..............,.|
; 010973:  e0 43 00 00 01 00 00 00 00 00 00 00 74 0b 01 00  |.C..........t...|
; 010983:  00 00 00 00 e4 b8 80 e9 94 ae e5 8a a0 e7 83 ad  |................|
