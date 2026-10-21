; page 16 'if_export': 7 objects

; object address table, 7 objects, block loaded at 0xa3a4
.dd 0xa3c0, 0xa400, 0xa454, 0xa474, 0xa494, 0xa4e8, 0xa53c

; object id 0 (page 'if_export'): x=0, y=0, w=480, h=272, name hash=0x56ad2f03
; flags=0x37, aph=127, events: event_3=0x1894d
; sta=2, pic=4
; 018ba8:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1894d
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x19080
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_190d3
    local_1d58 = "是否导出至U盘？"
    jmp lbl_192ee

lbl_190d3:
    if global_14 != 1 then jump lbl_1911a
    local_1d58 = "Export to USB flash drive?"
    jmp lbl_192ee

lbl_1911a:
    if global_14 != 2 then jump lbl_19187
    local_1d58 = "USBフラッシュドライブにエクスポートしますか?"
    jmp lbl_192ee

lbl_19187:
    if global_14 != 3 then jump lbl_191ce
    local_1d58 = "Auf USB-Stick exportieren?"
    jmp lbl_192ee

lbl_191ce:
    if global_14 != 4 then jump lbl_1921d
    local_1d58 = "¿Exportar a una unidad flash USB?"
    jmp lbl_192ee

lbl_1921d:
    if global_14 != 5 then jump lbl_19261
    local_1d58 = "Exporter sur clé USB ?"
    jmp lbl_192ee

lbl_19261:
    if global_14 != 6 then jump lbl_192ae
    local_1d58 = "Exportar para unidade flash USB?"
    jmp lbl_192ee

lbl_192ae:
    if global_14 != 7 then jump lbl_192ee
    local_1d58 = "Esportare su unità flash USB?"

lbl_192ee:
    if global_14 != 0 then jump lbl_1932d
    local_1dbd = "是"
    local_1de6 = "否"
    jmp lbl_194e2

lbl_1932d:
    if global_14 != 1 then jump lbl_1936b
    local_1dbd = "Yes"
    local_1de6 = "No"
    jmp lbl_194e2

lbl_1936b:
    if global_14 != 2 then jump lbl_193b3
    local_1dbd = "はい"
    local_1de6 = "いいえ"
    T 0x12f

lbl_193b3:
    if global_14 != 3 then jump lbl_193f2
    local_1dbd = "Ja"
    local_1de6 = "NEIN"
    jmp lbl_194e2

lbl_193f2:
    if global_14 != 4 then jump lbl_19430
    local_1dbd = "Sí"
    local_1de6 = "No"
    jmp lbl_194e2

lbl_19430:
    if global_14 != 5 then jump lbl_1946f
    local_1dbd = "Oui"
    local_1de6 = "Non"
    jmp lbl_194e2

lbl_1946f:
    if global_14 != 6 then jump lbl_194af
    local_1dbd = "Sim"
    local_1de6 = "Não"
    jmp lbl_194e2

lbl_194af:
    if global_14 != 7 then jump lbl_194e2
    local_1dbd = "SÌ"
    local_1de6 = "NO"

lbl_194e2:
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
; flags=0x27, events: timer=0x189a4
; tim=1000, en=1

; timer
.org 0x189a4
    if global_1c <= 0 then jump lbl_18a00
    if global_20 <= 0 then jump lbl_18a00
    global_20--
    if global_20 != 0 then jump lbl_18a00
    dim = global_30

lbl_18a00:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x18a1a

; touch_release
.org 0x18a1a
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
; flags=0x37, aph=127, events: touch_release=0x18a6c
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
; 018ce0:  ff ff                                            |..|

; touch_release
.org 0x18a6c
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x18ad6
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
; 018d34:  ff ff                                            |..|

; touch_release
.org 0x18ad6
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 820 bytes (4 trailing zero bytes dropped)
; 018d44:  00 00 00 00 e6 98 af e5 90 a6 e5 af bc e5 87 ba  |................|
; 018d54:  e8 87 b3 55 e7 9b 98 ef bc 9f 00 00 00 00 00 00  |...U............|
; 018d64:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018d74:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 018d84:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 018d94:  1a 00 ff ff ff ff 01 01 00 00 64 00 70 ac 00 00  |..........d.p...|
; 018da4:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 018db4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018dc4:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 50 00  |..............P.|
; 018dd4:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 018de4:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 018df4:  d8 ac 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 018e04:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018e14:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 018e24:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 018e34:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 018e44:  00 00 64 00 40 ad 00 00 01 00 00 00 62 08 00 00  |..d.@.......b...|
; 018e54:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018e64:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 018e74:  00 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 018e84:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6d 70 34  |0240314_1142.mp4|
; 018e94:  00 ff 01 01 00 00 64 00 a8 ad 00 00 01 00 00 00  |......d.........|
; 018ea4:  33 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |3...............|
; 018eb4:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 018ec4:  05 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018ed4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018ee4:  74 0e 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 018ef4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018f04:  00 00 7f 00 00 00 00 00 51 00 2d 00 40 01 2d 00  |........Q.-.@.-.|
; 018f14:  90 01 59 00 00 00 00 00 03 00 00 00 00 01 00 00  |..Y.............|
; 018f24:  ff ff 00 01 00 00 2c 01 10 ae 00 00 01 00 00 00  |......,.........|
; 018f34:  00 00 00 00 62 0f 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 018f44:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018f54:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 2e 00  |................|
; 018f64:  1d 00 2c 00 bc 01 59 00 00 00 00 00 00 00 00 00  |..,...Y.........|
; 018f74:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 018f84:  40 af 00 00 01 00 00 00 74 10 00 00 00 00 00 00  |@.......t.......|
; 018f94:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018fa4:  00 00 00 00 e6 98 af 00 00 00 7f 00 00 00 00 00  |................|
; 018fb4:  52 00 5b 00 40 01 2d 00 91 01 87 00 00 00 00 00  |R.[.@.-.........|
; 018fc4:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 018fd4:  a8 af 00 00 01 00 00 00 00 00 00 00 62 11 00 00  |............b...|
; 018fe4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018ff4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019004:  00 00 00 00 a0 01 5b 00 1d 00 2c 00 e5 90 a6 00  |......[...,.....|
; 019014:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 019024:  ff ff 01 01 00 00 64 00 d8 b0 00 00 01 00 00 00  |......d.........|
; 019034:  74 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 019044:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019054:  00 00 7f 00 00 00 00 00 52 00 88 00 40 01 2d 00  |........R...@.-.|
; 019064:  91 01 b4 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 019074:  ff ff 00 01                                      |....|
