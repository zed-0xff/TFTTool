; page 50 'if_reset': 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba1c, 0xba3c, 0xba90

; object id 0 (page 'if_reset'): x=0, y=0, w=480, h=272, name hash=0xe5d9be99
; flags=0x37, aph=127, events: event_3=0x3604e
; sta=2, pic=4
; 036285:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3604e
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x365d9
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_3663a
    local_48bf = "确定需要恢复出厂设置吗？"
    jmp lbl_3692e

lbl_3663a:
    if global_14 != 1 then jump lbl_36699
    local_48bf = "Are you sure you need to restore factory settings?"
    jmp lbl_3692e

lbl_36699:
    if global_14 != 2 then jump lbl_36706
    local_48bf = "工場出荷時の設定を復元する必要がありますか?"
    jmp lbl_3692e

lbl_36706:
    if global_14 != 3 then jump lbl_3677d
    local_48bf = "Sind Sie sicher, dass Sie die Werkseinstellungen wiederherstellen müssen?"
    jmp lbl_3692e

lbl_3677d:
    if global_14 != 4 then jump lbl_367f3
    local_48bf = "¿Estás seguro de que necesitas restaurar la configuración de fábrica?"
    jmp lbl_3692e

lbl_367f3:
    if global_14 != 5 then jump lbl_3685e
    local_48bf = "Êtes-vous sûr de devoir restaurer les paramètres d'usine ?"
    jmp lbl_3692e

lbl_3685e:
    if global_14 != 6 then jump lbl_368cf
    local_48bf = "Tem certeza de que precisa restaurar as configurações de fábrica?"
    jmp lbl_3692e

lbl_368cf:
    if global_14 != 7 then jump lbl_3692e
    local_48bf = "Sei sicuro di dover ripristinare le impostazioni di fabbrica?"

lbl_3692e:
    if global_14 != 0 then jump lbl_3696d
    local_48fd = "是"
    local_4926 = "否"
    jmp lbl_36b22

lbl_3696d:
    if global_14 != 1 then jump lbl_369ab
    local_48fd = "Yes"
    local_4926 = "No"
    jmp lbl_36b22

lbl_369ab:
    if global_14 != 2 then jump lbl_369f3
    local_48fd = "はい"
    local_4926 = "いいえ"
    T 0x12f

lbl_369f3:
    if global_14 != 3 then jump lbl_36a32
    local_48fd = "Ja"
    local_4926 = "NEIN"
    jmp lbl_36b22

lbl_36a32:
    if global_14 != 4 then jump lbl_36a70
    local_48fd = "Sí"
    local_4926 = "No"
    jmp lbl_36b22

lbl_36a70:
    if global_14 != 5 then jump lbl_36aaf
    local_48fd = "Oui"
    local_4926 = "Non"
    jmp lbl_36b22

lbl_36aaf:
    if global_14 != 6 then jump lbl_36aef
    local_48fd = "Sim"
    local_4926 = "Não"
    jmp lbl_36b22

lbl_36aef:
    if global_14 != 7 then jump lbl_36b22
    local_48fd = "SÌ"
    local_4926 = "NO"

lbl_36b22:
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
; flags=0x27, events: timer=0x360a5
; tim=1000, en=1

; timer
.org 0x360a5
    if global_1c <= 0 then jump lbl_36101
    if global_20 <= 0 then jump lbl_36101
    global_20--
    if global_20 != 0 then jump lbl_36101
    dim = global_30

lbl_36101:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3611b

; touch_release
.org 0x3611b
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x36153
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
; 036369:  ff ff                                            |..|

; touch_release
.org 0x36153
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x361bd
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
; 0363bd:  ff ff                                            |..|

; touch_release
.org 0x361bd
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 502 bytes (18 trailing zero bytes dropped)
; 0363cd:  00 00 00 00 e7 a1 ae e5 ae 9a e9 9c 80 e8 a6 81  |................|
; 0363dd:  e6 81 a2 e5 a4 8d e5 87 ba e5 8e 82 e8 ae be e7  |................|
; 0363ed:  bd ae e5 90 97 ef bc 9f 00 00 00 00 00 00 00 00  |................|
; 0363fd:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 03640d:  f8 bd 00 00 01 00 00 00 62 05 00 00 00 00 00 00  |........b.......|
; 03641d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03642d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03643d:  43 00 07 00 d0 00 22 00 12 01 28 00 00 00 00 00  |C....."...(.....|
; 03644d:  00 00 00 00 00 00 32 00 33 00 ff ff ff ff 01 01  |......2.3.......|
; 03645d:  00 00 64 00 60 be 00 00 01 00 00 00 62 06 00 00  |..d.`.......b...|
; 03646d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03647d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03648d:  00 00 00 00 0e 01 07 00 c6 00 22 00 d3 01 28 00  |.........."...(.|
; 03649d:  00 00 00 00 00 00 00 00 00 00 32 00 33 00 ff ff  |..........2.3...|
; 0364ad:  ff ff 01 01 00 00 64 00 c8 be 00 00 01 00 00 00  |......d.........|
; 0364bd:  62 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0364cd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0364dd:  00 00 00 00 00 00 00 00 d2 01 00 00 0e 00 06 00  |................|
; 0364ed:  df 01 05 00 00 00 00 00 00 00 00 00 00 00 32 00  |..............2.|
; 0364fd:  33 00 ff ff e6 98 af 00 00 00 64 00 30 bf 00 00  |3.........d.0...|
; 03650d:  01 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03651d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03652d:  00 00 00 00 00 00 7f 00 00 00 00 00 84 01 d6 00  |................|
; 03653d:  47 00 22 00 ca 01 f7 00 00 00 00 00 00 00 00 00  |G.".............|
; 03654d:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 03655d:  98 bf 00 00 01 00 00 00 33 11 00 00 e5 90 a6 00  |........3.......|
; 03656d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03657d:  00 00 00 00 e8 03 01 00 05 12 00 00 00 00 00 00  |................|
; 03658d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03659d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00  |..............0.|
; 0365ad:  31 00 ff ff ff ff 01 01 00 00 64 00 50 c3 00 00  |1.........d.P...|
; 0365bd:  01 00 00 00 74 0a                                |....t.|
