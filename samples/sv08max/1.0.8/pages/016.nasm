; page 16 'if_export': 7 objects

; object address table, 7 objects, block loaded at 0xb950
.dd 0xb96c, 0xb9ac, 0xba00, 0xba20, 0xba40, 0xba94, 0xbae8

; object id 0 (page 'if_export'): x=0, y=0, w=480, h=272, name hash=0x56ad2f03
; flags=0x37, aph=127, events: event_3=0x1aab8
; sta=2, pic=4
; 01ad13:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1aab8
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x1b1eb
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_1b23e
    local_1ebb = "是否导出至U盘？"
    jmp lbl_1b459

lbl_1b23e:
    if global_14 != 1 then jump lbl_1b285
    local_1ebb = "Export to USB flash drive?"
    jmp lbl_1b459

lbl_1b285:
    if global_14 != 2 then jump lbl_1b2f2
    local_1ebb = "USBフラッシュドライブにエクスポートしますか?"
    jmp lbl_1b459

lbl_1b2f2:
    if global_14 != 3 then jump lbl_1b339
    local_1ebb = "Auf USB-Stick exportieren?"
    jmp lbl_1b459

lbl_1b339:
    if global_14 != 4 then jump lbl_1b388
    local_1ebb = "¿Exportar a una unidad flash USB?"
    jmp lbl_1b459

lbl_1b388:
    if global_14 != 5 then jump lbl_1b3cc
    local_1ebb = "Exporter sur clé USB ?"
    jmp lbl_1b459

lbl_1b3cc:
    if global_14 != 6 then jump lbl_1b419
    local_1ebb = "Exportar para unidade flash USB?"
    jmp lbl_1b459

lbl_1b419:
    if global_14 != 7 then jump lbl_1b459
    local_1ebb = "Esportare su unità flash USB?"

lbl_1b459:
    if global_14 != 0 then jump lbl_1b498
    local_1f20 = "是"
    local_1f49 = "否"
    jmp lbl_1b64d

lbl_1b498:
    if global_14 != 1 then jump lbl_1b4d6
    local_1f20 = "Yes"
    local_1f49 = "No"
    jmp lbl_1b64d

lbl_1b4d6:
    if global_14 != 2 then jump lbl_1b51e
    local_1f20 = "はい"
    local_1f49 = "いいえ"
    T 0x12f

lbl_1b51e:
    if global_14 != 3 then jump lbl_1b55d
    local_1f20 = "Ja"
    local_1f49 = "NEIN"
    jmp lbl_1b64d

lbl_1b55d:
    if global_14 != 4 then jump lbl_1b59b
    local_1f20 = "Sí"
    local_1f49 = "No"
    jmp lbl_1b64d

lbl_1b59b:
    if global_14 != 5 then jump lbl_1b5da
    local_1f20 = "Oui"
    local_1f49 = "Non"
    jmp lbl_1b64d

lbl_1b5da:
    if global_14 != 6 then jump lbl_1b61a
    local_1f20 = "Sim"
    local_1f49 = "Não"
    jmp lbl_1b64d

lbl_1b61a:
    if global_14 != 7 then jump lbl_1b64d
    local_1f20 = "SÌ"
    local_1f49 = "NO"

lbl_1b64d:
    doevents
    down
    up

; object id 1 (text 't0'): x=130, y=112, w=224, h=31, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="是否导出至U盘？"
; text:
;   0: "是否导出至U盘？"
;   1: "Export to USB flash drive?"
;   2: "USBフラッシュドライブにエクスポートしますか?"
;   3: "Auf USB-Stick exportieren?"
;   4: "¿Exportar a una unidad flash USB?"
;   5: "Exporter sur clé USB ?"
;   6: "Exportar para unidade flash USB?"
;   7: "Esportare su unità flash USB?"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1ab0f
; tim=1000, en=1

; timer
.org 0x1ab0f
    if global_1c <= 0 then jump lbl_1ab6b
    if global_20 <= 0 then jump lbl_1ab6b
    global_20--
    if global_20 != 0 then jump lbl_1ab6b
    dim = global_30

lbl_1ab6b:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1ab85

; touch_release
.org 0x1ab85
    global_20 = global_18
    dims = global_2c
    down
    up
    down
    up

; object id 4 (text 't1'): x=99, y=70, w=281, h=41, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=2, txt_maxl=300, isbr=1, background=0, txt="timelapse__20240314_1142.mp4"

; object id 5 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1abd7
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
; 01ae4b:  ff ff                                            |..|

; touch_release
.org 0x1abd7
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x1ac41
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
; 01ae9f:  ff ff                                            |..|

; touch_release
.org 0x1ac41
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 820 bytes (4 trailing zero bytes dropped)
; 01aeaf:  00 00 00 00 e6 98 af e5 90 a6 e5 af bc e5 87 ba  |................|
; 01aebf:  e8 87 b3 55 e7 9b 98 ef bc 9f 00 00 00 00 00 00  |...U............|
; 01aecf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01aedf:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 01aeef:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 01aeff:  1a 00 ff ff ff ff 01 01 00 00 64 00 1c c2 00 00  |..........d.....|
; 01af0f:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01af1f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01af2f:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 50 00  |..............P.|
; 01af3f:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 01af4f:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01af5f:  84 c2 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 01af6f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01af7f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01af8f:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 01af9f:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 01afaf:  00 00 64 00 ec c2 00 00 01 00 00 00 62 08 00 00  |..d.........b...|
; 01afbf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01afcf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01afdf:  00 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 01afef:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6d 70 34  |0240314_1142.mp4|
; 01afff:  00 ff 01 01 00 00 64 00 54 c3 00 00 01 00 00 00  |......d.T.......|
; 01b00f:  33 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |3...............|
; 01b01f:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 01b02f:  05 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01b03f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01b04f:  74 0e 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01b05f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01b06f:  00 00 7f 00 00 00 00 00 51 00 2d 00 40 01 2d 00  |........Q.-.@.-.|
; 01b07f:  90 01 59 00 00 00 00 00 03 00 00 00 00 01 00 00  |..Y.............|
; 01b08f:  ff ff 00 01 00 00 2c 01 bc c3 00 00 01 00 00 00  |......,.........|
; 01b09f:  00 00 00 00 62 0f 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01b0af:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01b0bf:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 2e 00  |................|
; 01b0cf:  1d 00 2c 00 bc 01 59 00 00 00 00 00 00 00 00 00  |..,...Y.........|
; 01b0df:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 01b0ef:  ec c4 00 00 01 00 00 00 74 10 00 00 00 00 00 00  |........t.......|
; 01b0ff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01b10f:  00 00 00 00 e6 98 af 00 00 00 7f 00 00 00 00 00  |................|
; 01b11f:  52 00 5b 00 40 01 2d 00 91 01 87 00 00 00 00 00  |R.[.@.-.........|
; 01b12f:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01b13f:  54 c5 00 00 01 00 00 00 00 00 00 00 62 11 00 00  |T...........b...|
; 01b14f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01b15f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01b16f:  00 00 00 00 a0 01 5b 00 1d 00 2c 00 e5 90 a6 00  |......[...,.....|
; 01b17f:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 01b18f:  ff ff 01 01 00 00 64 00 84 c6 00 00 01 00 00 00  |......d.........|
; 01b19f:  74 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01b1af:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01b1bf:  00 00 7f 00 00 00 00 00 52 00 88 00 40 01 2d 00  |........R...@.-.|
; 01b1cf:  91 01 b4 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 01b1df:  ff ff 00 01                                      |....|
