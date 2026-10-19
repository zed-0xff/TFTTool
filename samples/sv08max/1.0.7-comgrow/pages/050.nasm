; page 50 'if_reset': 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa470, 0xa490, 0xa4e4

; object id 0 (page 'if_reset'): x=0, y=0, w=480, h=272, name hash=0xe5d9be99
; flags=0x37, aph=127, events: event_3=0x35cd3
; sta=2, pic=4
; 035f0a:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x35cd3
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x3625e
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_362bf
    local_4a0e = "确定需要恢复出厂设置吗？"
    jmp lbl_365b3

lbl_362bf:
    if global_14 != 1 then jump lbl_3631e
    local_4a0e = "Are you sure you need to restore factory settings?"
    jmp lbl_365b3

lbl_3631e:
    if global_14 != 2 then jump lbl_3638b
    local_4a0e = "工場出荷時の設定を復元する必要がありますか?"
    jmp lbl_365b3

lbl_3638b:
    if global_14 != 3 then jump lbl_36402
    local_4a0e = "Sind Sie sicher, dass Sie die Werkseinstellungen wiederherstellen müssen?"
    jmp lbl_365b3

lbl_36402:
    if global_14 != 4 then jump lbl_36478
    local_4a0e = "¿Estás seguro de que necesitas restaurar la configuración de fábrica?"
    jmp lbl_365b3

lbl_36478:
    if global_14 != 5 then jump lbl_364e3
    local_4a0e = "Êtes-vous sûr de devoir restaurer les paramètres d'usine ?"
    jmp lbl_365b3

lbl_364e3:
    if global_14 != 6 then jump lbl_36554
    local_4a0e = "Tem certeza de que precisa restaurar as configurações de fábrica?"
    jmp lbl_365b3

lbl_36554:
    if global_14 != 7 then jump lbl_365b3
    local_4a0e = "Sei sicuro di dover ripristinare le impostazioni di fabbrica?"

lbl_365b3:
    if global_14 != 0 then jump lbl_365f2
    local_4a4c = "是"
    local_4a75 = "否"
    jmp lbl_367a7

lbl_365f2:
    if global_14 != 1 then jump lbl_36630
    local_4a4c = "Yes"
    local_4a75 = "No"
    jmp lbl_367a7

lbl_36630:
    if global_14 != 2 then jump lbl_36678
    local_4a4c = "はい"
    local_4a75 = "いいえ"
    T 0x12f

lbl_36678:
    if global_14 != 3 then jump lbl_366b7
    local_4a4c = "Ja"
    local_4a75 = "NEIN"
    jmp lbl_367a7

lbl_366b7:
    if global_14 != 4 then jump lbl_366f5
    local_4a4c = "Sí"
    local_4a75 = "No"
    jmp lbl_367a7

lbl_366f5:
    if global_14 != 5 then jump lbl_36734
    local_4a4c = "Oui"
    local_4a75 = "Non"
    jmp lbl_367a7

lbl_36734:
    if global_14 != 6 then jump lbl_36774
    local_4a4c = "Sim"
    local_4a75 = "Não"
    jmp lbl_367a7

lbl_36774:
    if global_14 != 7 then jump lbl_367a7
    local_4a4c = "SÌ"
    local_4a75 = "NO"

lbl_367a7:
    doevents
    down
    up

; object id 1 (text 't0'): x=130, y=74, w=224, h=64, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="确定需要恢复出厂设置吗？"
; text:
;   0: "确定需要恢复出厂设置吗？"
;   1: "Are you sure you need to restore factory settings?"
;   2: "工場出荷時の設定を復元する必要がありますか?"
;   3: "Sind Sie sicher, dass Sie die Werkseinstellungen wiederherstellen müssen?"
;   4: "¿Estás seguro de que necesitas restaurar la configuración de fábrica?"
;   5: "Êtes-vous sûr de devoir restaurer les paramètres d'usine ?"
;   6: "Tem certeza de que precisa restaurar as configurações de fábrica?"
;   7: "Sei sicuro di dover ripristinare le impostazioni di fabbrica?"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x35d2a
; tim=1000, en=1

; timer
.org 0x35d2a
    if global_1c <= 0 then jump lbl_35d86
    if global_20 <= 0 then jump lbl_35d86
    global_20--
    if global_20 != 0 then jump lbl_35d86
    dim = global_30

lbl_35d86:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x35da0

; touch_release
.org 0x35da0
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x35dd8
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
; 035fee:  ff ff                                            |..|

; touch_release
.org 0x35dd8
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x35e42
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
; 036042:  ff ff                                            |..|

; touch_release
.org 0x35e42
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 516 bytes (4 trailing zero bytes dropped)
; 036052:  00 00 00 00 e7 a1 ae e5 ae 9a e9 9c 80 e8 a6 81  |................|
; 036062:  e6 81 a2 e5 a4 8d e5 87 ba e5 8e 82 e8 ae be e7  |................|
; 036072:  bd ae e5 90 97 ef bc 9f 00 00 00 00 00 00 00 00  |................|
; 036082:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 036092:  4c a8 00 00 01 00 00 00 62 05 00 00 00 00 00 00  |L.......b.......|
; 0360a2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0360b2:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0360c2:  43 00 07 00 86 00 22 00 c8 00 28 00 00 00 00 00  |C....."...(.....|
; 0360d2:  00 00 00 00 00 00 32 00 33 00 ff ff ff ff 01 01  |......2.3.......|
; 0360e2:  00 00 64 00 b4 a8 00 00 01 00 00 00 62 06 00 00  |..d.........b...|
; 0360f2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036102:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 036112:  00 00 00 00 c9 00 07 00 86 00 22 00 4e 01 28 00  |..........".N.(.|
; 036122:  00 00 00 00 00 00 00 00 00 00 32 00 33 00 ff ff  |..........2.3...|
; 036132:  ff ff 01 01 00 00 64 00 1c a9 00 00 01 00 00 00  |......d.........|
; 036142:  62 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 036152:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036162:  00 00 7f 00 00 00 00 00 4f 01 07 00 86 00 22 00  |........O.....".|
; 036172:  d4 01 28 00 00 00 00 00 00 00 00 00 00 00 32 00  |..(...........2.|
; 036182:  33 00 ff ff e6 98 af 00 00 00 64 00 84 a9 00 00  |3.........d.....|
; 036192:  01 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0361a2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0361b2:  00 00 00 00 00 00 7f 00 00 00 00 00 84 01 d6 00  |................|
; 0361c2:  47 00 22 00 ca 01 f7 00 00 00 00 00 00 00 00 00  |G.".............|
; 0361d2:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 0361e2:  ec a9 00 00 01 00 00 00 33 11 00 00 e5 90 a6 00  |........3.......|
; 0361f2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036202:  00 00 00 00 e8 03 01 00 05 12 00 00 00 00 00 00  |................|
; 036212:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036222:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 036232:  00 00 7f 00 00 00 00 00 52 01 07 00 86 00 22 00  |........R.....".|
; 036242:  d7 01 28 00 00 00 00 00 00 00 00 00 00 00 30 00  |..(...........0.|
; 036252:  31 00 ff ff                                      |1...|
