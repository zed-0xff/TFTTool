; page 17 'export_succeed': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba4c, 0xba6c

; object id 0 (page 'export_succeed'): x=0, y=0, w=480, h=272, name hash=0xfea55371
; flags=0x37, aph=127, events: event_3=0x1b66e
; sta=2, pic=2
; 01b831:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1b66e
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x1bac9
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_1bb12
    local_1f91 = "导出成功"
    jmp lbl_1bce2

lbl_1bb12:
    if global_14 != 1 then jump lbl_1bb50
    local_1f91 = "Export successful"
    jmp lbl_1bce2

lbl_1bb50:
    if global_14 != 2 then jump lbl_1bba4
    local_1f91 = "エクスポートに成功しました"
    jmp lbl_1bce2

lbl_1bba4:
    if global_14 != 3 then jump lbl_1bbe3
    local_1f91 = "Export erfolgreich"
    jmp lbl_1bce2

lbl_1bbe3:
    if global_14 != 4 then jump lbl_1bc24
    local_1f91 = "Exportación exitosa"
    jmp lbl_1bce2

lbl_1bc24:
    if global_14 != 5 then jump lbl_1bc65
    local_1f91 = "Exportation réussie"
    jmp lbl_1bce2

lbl_1bc65:
    if global_14 != 6 then jump lbl_1bcab
    local_1f91 = "Exportação bem-sucedida"
    jmp lbl_1bce2

lbl_1bcab:
    if global_14 != 7 then jump lbl_1bce2
    local_1f91 = "Esportazione riuscita"

lbl_1bce2:
    if global_14 != 0 then jump lbl_1bd15
    local_1fba = "确定"
    jmp lbl_1be79

lbl_1bd15:
    if global_14 != 1 then jump lbl_1bd46
    local_1fba = "Sure"
    jmp lbl_1be79

lbl_1bd46:
    if global_14 != 2 then jump lbl_1bd7f
    local_1fba = "もちろん"
    jmp lbl_1be79

lbl_1bd7f:
    if global_14 != 3 then jump lbl_1bdb2
    local_1fba = "Gewiss"
    jmp lbl_1be79

lbl_1bdb2:
    if global_14 != 4 then jump lbl_1bde5
    local_1fba = "Seguro"
    jmp lbl_1be79

lbl_1bde5:
    if global_14 != 5 then jump lbl_1be1b
    local_1fba = "Bien sûr"
    T 0x5e

lbl_1be1b:
    if global_14 != 6 then jump lbl_1be4d
    local_1fba = "Claro"
    jmp lbl_1be79

lbl_1be4d:
    if global_14 != 7 then jump lbl_1be79
    local_1fba = "Certamente"

lbl_1be79:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=56, w=268, h=100, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="导出成功"
; text:
;   0: "导出成功"
;   1: "Export successful"
;   2: "エクスポートに成功しました"
;   3: "Export erfolgreich"
;   4: "Exportación exitosa"
;   5: "Exportation réussie"
;   6: "Exportação bem-sucedida"
;   7: "Esportazione riuscita"

; object id 2 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1b6ce
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确定"
; text:
;   0: "确定"
;   1: "Sure"
;   2: "もちろん"
;   3: "Gewiss"
;   4: "Seguro"
;   5: "Bien sûr"
;   6: "Claro"
;   7: "Certamente"
; touch_release reports to the host: page <page>, widget 0
; 01b8d5:  ff ff                                            |..|

; touch_release
.org 0x1b6ce
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1b72f
; tim=1000, en=1

; timer
.org 0x1b72f
    if global_1c <= 0 then jump lbl_1b78b
    if global_20 <= 0 then jump lbl_1b78b
    global_20--
    if global_20 != 0 then jump lbl_1b78b
    dim = global_30

lbl_1b78b:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1b7a5

; touch_release
.org 0x1b7a5
    global_20 = global_18
    dims = global_2c

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 01b925:  00 00 00 00 e5 af bc e5 87 ba e6 88 90 e5 8a 9f  |................|
; 01b935:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01b945:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01b955:  6b 00 ac 00 80 00 27 00 ea 00 d2 00 00 00 00 00  |k.....'.........|
; 01b965:  00 00 00 00 00 00 04 00 05 00 ff ff ff ff 01 01  |................|
; 01b975:  00 00 64 00 a0 bd 00 00 01 00 00 00 62 06 00 00  |..d.........b...|
; 01b985:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01b995:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01b9a5:  00 00 00 00 f4 00 ac 00 80 00 27 00 73 01 d2 00  |..........'.s...|
; 01b9b5:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 01b9c5:  ff ff 01 01 00 00 64 00 08 be 00 00 01 00 00 00  |......d.........|
; 01b9d5:  00 00 00 00 e6 98 af e5 90 a6 e5 af bc e5 87 ba  |................|
; 01b9e5:  e8 87 b3 55 e7 9b 98 ef bc 9f 00 00 00 00 00 00  |...U............|
; 01b9f5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ba05:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 01ba15:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 01ba25:  1a 00 ff ff ff ff 01 01 00 00 64 00 1c c2 00 00  |..........d.....|
; 01ba35:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01ba45:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ba55:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 50 00  |..............P.|
; 01ba65:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 01ba75:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01ba85:  84 c2 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 01ba95:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01baa5:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01bab5:  00 00 91 00 3d 00 36 00 3c 00 c6                 |....=.6.<..|
