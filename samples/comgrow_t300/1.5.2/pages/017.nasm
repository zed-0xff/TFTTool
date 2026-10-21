; page 17 'export_succeed': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa4a0, 0xa4c0

; object id 0 (page 'export_succeed'): x=0, y=0, w=480, h=272, name hash=0xfea55371
; flags=0x37, aph=127, events: event_3=0x19503
; sta=2, pic=2
; 0196c6:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x19503
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x1995e
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_199a7
    local_1e2e = "导出成功"
    jmp lbl_19b77

lbl_199a7:
    if global_14 != 1 then jump lbl_199e5
    local_1e2e = "Export successful"
    jmp lbl_19b77

lbl_199e5:
    if global_14 != 2 then jump lbl_19a39
    local_1e2e = "エクスポートに成功しました"
    jmp lbl_19b77

lbl_19a39:
    if global_14 != 3 then jump lbl_19a78
    local_1e2e = "Export erfolgreich"
    jmp lbl_19b77

lbl_19a78:
    if global_14 != 4 then jump lbl_19ab9
    local_1e2e = "Exportación exitosa"
    jmp lbl_19b77

lbl_19ab9:
    if global_14 != 5 then jump lbl_19afa
    local_1e2e = "Exportation réussie"
    jmp lbl_19b77

lbl_19afa:
    if global_14 != 6 then jump lbl_19b40
    local_1e2e = "Exportação bem-sucedida"
    jmp lbl_19b77

lbl_19b40:
    if global_14 != 7 then jump lbl_19b77
    local_1e2e = "Esportazione riuscita"

lbl_19b77:
    if global_14 != 0 then jump lbl_19baa
    local_1e57 = "确定"
    jmp lbl_19d0e

lbl_19baa:
    if global_14 != 1 then jump lbl_19bdb
    local_1e57 = "Sure"
    jmp lbl_19d0e

lbl_19bdb:
    if global_14 != 2 then jump lbl_19c14
    local_1e57 = "もちろん"
    jmp lbl_19d0e

lbl_19c14:
    if global_14 != 3 then jump lbl_19c47
    local_1e57 = "Gewiss"
    jmp lbl_19d0e

lbl_19c47:
    if global_14 != 4 then jump lbl_19c7a
    local_1e57 = "Seguro"
    jmp lbl_19d0e

lbl_19c7a:
    if global_14 != 5 then jump lbl_19cb0
    local_1e57 = "Bien sûr"
    T 0x5e

lbl_19cb0:
    if global_14 != 6 then jump lbl_19ce2
    local_1e57 = "Claro"
    jmp lbl_19d0e

lbl_19ce2:
    if global_14 != 7 then jump lbl_19d0e
    local_1e57 = "Certamente"

lbl_19d0e:
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
; flags=0x37, aph=127, events: touch_release=0x19563
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
; 01976a:  ff ff                                            |..|

; touch_release
.org 0x19563
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x195c4
; tim=1000, en=1

; timer
.org 0x195c4
    if global_1c <= 0 then jump lbl_19620
    if global_20 <= 0 then jump lbl_19620
    global_20--
    if global_20 != 0 then jump lbl_19620
    dim = global_30

lbl_19620:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1963a

; touch_release
.org 0x1963a
    global_20 = global_18
    dims = global_2c

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 0197ba:  00 00 00 00 e5 af bc e5 87 ba e6 88 90 e5 8a 9f  |................|
; 0197ca:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0197da:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0197ea:  6b 00 ac 00 80 00 27 00 ea 00 d2 00 00 00 00 00  |k.....'.........|
; 0197fa:  00 00 00 00 00 00 04 00 05 00 ff ff ff ff 01 01  |................|
; 01980a:  00 00 64 00 f4 a7 00 00 01 00 00 00 62 06 00 00  |..d.........b...|
; 01981a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01982a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01983a:  00 00 00 00 f4 00 ac 00 80 00 27 00 73 01 d2 00  |..........'.s...|
; 01984a:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 01985a:  ff ff 01 01 00 00 64 00 5c a8 00 00 01 00 00 00  |......d.\.......|
; 01986a:  00 00 00 00 e6 98 af e5 90 a6 e5 af bc e5 87 ba  |................|
; 01987a:  e8 87 b3 55 e7 9b 98 ef bc 9f 00 00 00 00 00 00  |...U............|
; 01988a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01989a:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 0198aa:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 0198ba:  1a 00 ff ff ff ff 01 01 00 00 64 00 70 ac 00 00  |..........d.p...|
; 0198ca:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0198da:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0198ea:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 50 00  |..............P.|
; 0198fa:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 01990a:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01991a:  d8 ac 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 01992a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01993a:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01994a:  00 00 91 00 3d 00 36 00 3c 00 c6                 |....=.6.<..|
