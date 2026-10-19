; page 9 'if_reprint': 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa4a4, 0xa4f8, 0xa518

; object id 0 (page 'if_reprint'): x=0, y=0, w=480, h=272, name hash=0x8efe7bd0
; flags=0x37, aph=127, events: event_3=0xe47c
; sta=2, pic=4
; 00e6b3:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xe47c
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0xea07
    ref 4
    ref 5
    if global_14 != 0 then jump lbl_ea59
    local_bce = "是否断电续打？"
    jmp lbl_ed02

lbl_ea59:
    if global_14 != 1 then jump lbl_eabb
    local_bce = "Do you want to continue calling after power outage？"
    jmp lbl_ed02

lbl_eabb:
    if global_14 != 2 then jump lbl_eb0d
    local_bce = "停電後も通話を続けますか?"
    jmp lbl_ed02

lbl_eb0d:
    if global_14 != 3 then jump lbl_eb73
    local_bce = "Möchten Sie nach einem Stromausfall weiter telefonieren?"
    jmp lbl_ed02

lbl_eb73:
    if global_14 != 4 then jump lbl_ebd9
    local_bce = "¿Quieres seguir llamando después del corte de energía?"
    jmp lbl_ed02

lbl_ebd9:
    if global_14 != 5 then jump lbl_ec45
    local_bce = "Voulez-vous continuer à appeler après une panne de courant ?"
    jmp lbl_ed02

lbl_ec45:
    if global_14 != 6 then jump lbl_eca4
    local_bce = "Quer continuar ligando após uma queda de energia?"
    T 0x5e

lbl_eca4:
    if global_14 != 7 then jump lbl_ed02
    local_bce = "Vuoi continuare a chiamare dopo un'interruzione di corrente?"

lbl_ed02:
    if global_14 != 0 then jump lbl_ed41
    local_b7e = "是"
    local_ba7 = "否"
    jmp lbl_eef6

lbl_ed41:
    if global_14 != 1 then jump lbl_ed7f
    local_b7e = "Yes"
    local_ba7 = "No"
    jmp lbl_eef6

lbl_ed7f:
    if global_14 != 2 then jump lbl_edc7
    local_b7e = "はい"
    local_ba7 = "いいえ"
    T 0x12f

lbl_edc7:
    if global_14 != 3 then jump lbl_ee06
    local_b7e = "Ja"
    local_ba7 = "NEIN"
    jmp lbl_eef6

lbl_ee06:
    if global_14 != 4 then jump lbl_ee44
    local_b7e = "Sí"
    local_ba7 = "No"
    jmp lbl_eef6

lbl_ee44:
    if global_14 != 5 then jump lbl_ee83
    local_b7e = "Oui"
    local_ba7 = "Non"
    jmp lbl_eef6

lbl_ee83:
    if global_14 != 6 then jump lbl_eec3
    local_b7e = "Sim"
    local_ba7 = "Não"
    jmp lbl_eef6

lbl_eec3:
    if global_14 != 7 then jump lbl_eef6
    local_b7e = "SÌ"
    local_ba7 = "NO"

lbl_eef6:
    doevents
    down
    up

; object id 1 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xe4c2
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
; 00e703:  ff ff                                            |..|

; touch_release
.org 0xe4c2
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0xe52c
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
; 00e757:  ff ff                                            |..|

; touch_release
.org 0xe52c
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
; flags=0x27, events: timer=0xe5a7
; tim=1000, en=1

; timer
.org 0xe5a7
    if global_1c <= 0 then jump lbl_e603
    if global_20 <= 0 then jump lbl_e603
    global_20--
    if global_20 != 0 then jump lbl_e603
    dim = global_30

lbl_e603:
    down
    up

; object id 5 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0xe61d

; touch_release
.org 0xe61d
    global_20 = global_18
    dims = global_2c

; data after the object structs, 504 bytes (16 trailing zero bytes dropped)
; 00e7fb:  00 00 00 00 e6 98 af 00 01 00 00 00 74 07 00 00  |............t...|
; 00e80b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e81b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00e82b:  00 00 00 00 2d 00 3a 00 64 00 1e 00 90 00 57 00  |....-.:.d.....W.|
; 00e83b:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 00e84b:  00 00 2c 01 30 a8 00 00 01 00 00 00 00 00 00 00  |..,.0...........|
; 00e85b:  74 08 00 00 00 00 00 00 00 00 00 00 e5 90 a6 00  |t...............|
; 00e86b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e87b:  00 00 7f 00 00 00 00 00 2d 00 53 00 64 00 1e 00  |........-.S.d...|
; 00e88b:  90 00 70 00 00 00 00 00 03 00 00 00 00 00 00 00  |..p.............|
; 00e89b:  ff ff 00 01 00 00 2c 01 60 a9 00 00 01 00 00 00  |......,.`.......|
; 00e8ab:  00 00 00 00 33 17 00 00 00 00 00 00 00 00 00 00  |....3...........|
; 00e8bb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e8cb:  e8 03 01 00 e6 98 af e5 90 a6 e6 96 ad e7 94 b5  |................|
; 00e8db:  e7 bb ad e6 89 93 ef bc 9f 00 00 00 00 00 00 00  |................|
; 00e8eb:  00 00 00 00 00 00 00 00 e7 bd 91 e7 bb 9c e9 80  |................|
; 00e8fb:  89 e6 8b a9 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e90b:  00 00 7f 00 00 00 00 00 13 00 96 00 e5 b7 b2 e5  |................|
; 00e91b:  bc 80 e5 90 af 00 00 00 03 00 00 00 00 00 00 00  |................|
; 00e92b:  ff ff 02 01 00 00 2c 01 ac 3b 00 00 01 00 00 00  |......,..;......|
; 00e93b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e94b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e95b:  00 00 00 00 00 00 00 00 00 00 00 00 1d 00 b8 00  |................|
; 00e96b:  68 00 1e 00 84 00 d5 00 00 00 00 00 03 00 00 00  |h...............|
; 00e97b:  00 00 00 00 e9 80 80 e5 87 ba 00 01 dc 3c 00 00  |.............<..|
; 00e98b:  01 00 00 00 00 00 00 00 74 0a 01 00 00 00 00 00  |........t.......|
; 00e99b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00e9ab:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00e9bb:  88 00 95 00 6d 00 1e 00 f4 00 b2 00 00 00 00 00  |....m...........|
; 00e9cb:  03 00 00 00 00 00 00 00 e8 07 00 01 00 00 2c 01  |..............,.|
; 00e9db:  0c 3e 00 00 01 00 00 00 00 00 00 00 e4 b8 80 e9  |.>..............|
; 00e9eb:  94 ae e5 8a a0 e7 83 ad                          |........|
