; page 18 'export_failed': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'export_failed'): x=0, y=0, w=480, h=272, name hash=0x3eafb97c
; flags=0x37, aph=127, events: event_3=0x1be9a
; sta=2, pic=2
; 01c05d:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1be9a
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x1c2f5
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_1c35a
    local_2017 = "导出失败，请确认是否插入U盘"
    jmp lbl_1c6ab

lbl_1c35a:
    if global_14 != 1 then jump lbl_1c3c6
    local_2017 = "Export failed, please confirm whether the USB disk is inserted."
    jmp lbl_1c6ab

lbl_1c3c6:
    if global_14 != 2 then jump lbl_1c46f
    local_2017 = "エクスポートに失敗しました。USB ディスクが挿入されているかどうかを確認してください。"
    jmp lbl_1c6ab

lbl_1c46f:
    if global_14 != 3 then jump lbl_1c4fb
    local_2017 = "Der Export ist fehlgeschlagen. Bitte überprüfen Sie, ob der USB-Datenträger eingesteckt ist."
    jmp lbl_1c6ab

lbl_1c4fb:
    if global_14 != 4 then jump lbl_1c564
    local_2017 = "Error al exportar. Confirme si el disco USB está insertado."
    jmp lbl_1c6ab

lbl_1c564:
    if global_14 != 5 then jump lbl_1c5dc
    local_2017 = "L'exportation a échoué, veuillez confirmer si le disque USB est inséré."
    jmp lbl_1c6ab

lbl_1c5dc:
    if global_14 != 6 then jump lbl_1c647
    local_2017 = "Falha na exportação, confirme se o disco USB está inserido."
    jmp lbl_1c6ab

lbl_1c647:
    if global_14 != 7 then jump lbl_1c6ab
    local_2017 = "Esportazione non riuscita, verificare se il disco USB è inserito."

lbl_1c6ab:
    if global_14 != 0 then jump lbl_1c6de
    local_2055 = "确定"
    jmp lbl_1c842

lbl_1c6de:
    if global_14 != 1 then jump lbl_1c70f
    local_2055 = "Sure"
    jmp lbl_1c842

lbl_1c70f:
    if global_14 != 2 then jump lbl_1c748
    local_2055 = "もちろん"
    jmp lbl_1c842

lbl_1c748:
    if global_14 != 3 then jump lbl_1c77b
    local_2055 = "Gewiss"
    jmp lbl_1c842

lbl_1c77b:
    if global_14 != 4 then jump lbl_1c7ae
    local_2055 = "Seguro"
    jmp lbl_1c842

lbl_1c7ae:
    if global_14 != 5 then jump lbl_1c7e4
    local_2055 = "Bien sûr"
    T 0x5e

lbl_1c7e4:
    if global_14 != 6 then jump lbl_1c816
    local_2055 = "Claro"
    jmp lbl_1c842

lbl_1c816:
    if global_14 != 7 then jump lbl_1c842
    local_2055 = "Certamente"

lbl_1c842:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=54, w=268, h=103, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="导出失败，请确认是否插入U盘"
; text:
;   0: "导出失败，请确认是否插入U盘"
;   1: "Export failed, please confirm whether the USB disk is inserted."
;   2: "エクスポートに失敗しました。USB ディスクが挿入されているかどうかを確認してください。"
;   3: "Der Export ist fehlgeschlagen. Bitte überprüfen Sie, ob der USB-Datenträger eingesteckt ist."
;   4: "Error al exportar. Confirme si el disco USB está insertado."
;   5: "L'exportation a échoué, veuillez confirmer si le disque USB est inséré."
;   6: "Falha na exportação, confirme se o disco USB está inserido."
;   7: "Esportazione non riuscita, verificare se il disco USB è inserito."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1bef1
; tim=1000, en=1

; timer
.org 0x1bef1
    if global_1c <= 0 then jump lbl_1bf4d
    if global_20 <= 0 then jump lbl_1bf4d
    global_20--
    if global_20 != 0 then jump lbl_1bf4d
    dim = global_30

lbl_1bf4d:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1bf67

; touch_release
.org 0x1bf67
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1bf9f
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
; 01c141:  ff ff                                            |..|

; touch_release
.org 0x1bf9f
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 01c151:  00 00 00 00 e5 af bc e5 87 ba e5 a4 b1 e8 b4 a5  |................|
; 01c161:  ef bc 8c e8 af b7 e7 a1 ae e8 ae a4 e6 98 af e5  |................|
; 01c171:  90 a6 e6 8f 92 e5 85 a5 55 e7 9b 98 00 00 00 00  |........U.......|
; 01c181:  6b 00 ac 00 80 00 27 00 ea 00 d2 00 00 00 00 00  |k.....'.........|
; 01c191:  00 00 00 00 00 00 04 00 05 00 ff ff ff ff 01 01  |................|
; 01c1a1:  00 00 64 00 a0 bd 00 00 01 00 00 00 62 06 00 00  |..d.........b...|
; 01c1b1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01c1c1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01c1d1:  00 00 00 00 f4 00 ac 00 80 00 27 00 73 01 d2 00  |..........'.s...|
; 01c1e1:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 01c1f1:  ff ff 01 01 00 00 64 00 08 be 00 00 01 00 00 00  |......d.........|
; 01c201:  00 00 00 00 e6 98 af e5 90 a6 e5 af bc e5 87 ba  |................|
; 01c211:  e8 87 b3 55 e7 9b 98 ef bc 9f 00 00 00 00 00 00  |...U............|
; 01c221:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01c231:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 01c241:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 01c251:  1a 00 ff ff ff ff 01 01 00 00 64 00 1c c2 00 00  |..........d.....|
; 01c261:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01c271:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01c281:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 50 00  |..............P.|
; 01c291:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 01c2a1:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01c2b1:  84 c2 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 01c2c1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01c2d1:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01c2e1:  00 00 91 00 3d 00 36 00 3c 00 c6                 |....=.6.<..|
