; page 18 'export_failed': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page 'export_failed'): x=0, y=0, w=480, h=272, name hash=0x3eafb97c
; flags=0x37, aph=127, events: event_3=0x19d2f
; sta=2, pic=2
; 019ef2:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x19d2f
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x1a18a
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_1a1ef
    local_1eb4 = "导出失败，请确认是否插入U盘"
    jmp lbl_1a540

lbl_1a1ef:
    if global_14 != 1 then jump lbl_1a25b
    local_1eb4 = "Export failed, please confirm whether the USB disk is inserted."
    jmp lbl_1a540

lbl_1a25b:
    if global_14 != 2 then jump lbl_1a304
    local_1eb4 = "エクスポートに失敗しました。USB ディスクが挿入されているかどうかを確認してください。"
    jmp lbl_1a540

lbl_1a304:
    if global_14 != 3 then jump lbl_1a390
    local_1eb4 = "Der Export ist fehlgeschlagen. Bitte überprüfen Sie, ob der USB-Datenträger eingesteckt ist."
    jmp lbl_1a540

lbl_1a390:
    if global_14 != 4 then jump lbl_1a3f9
    local_1eb4 = "Error al exportar. Confirme si el disco USB está insertado."
    jmp lbl_1a540

lbl_1a3f9:
    if global_14 != 5 then jump lbl_1a471
    local_1eb4 = "L'exportation a échoué, veuillez confirmer si le disque USB est inséré."
    jmp lbl_1a540

lbl_1a471:
    if global_14 != 6 then jump lbl_1a4dc
    local_1eb4 = "Falha na exportação, confirme se o disco USB está inserido."
    jmp lbl_1a540

lbl_1a4dc:
    if global_14 != 7 then jump lbl_1a540
    local_1eb4 = "Esportazione non riuscita, verificare se il disco USB è inserito."

lbl_1a540:
    if global_14 != 0 then jump lbl_1a573
    local_1ef2 = "确定"
    jmp lbl_1a6d7

lbl_1a573:
    if global_14 != 1 then jump lbl_1a5a4
    local_1ef2 = "Sure"
    jmp lbl_1a6d7

lbl_1a5a4:
    if global_14 != 2 then jump lbl_1a5dd
    local_1ef2 = "もちろん"
    jmp lbl_1a6d7

lbl_1a5dd:
    if global_14 != 3 then jump lbl_1a610
    local_1ef2 = "Gewiss"
    jmp lbl_1a6d7

lbl_1a610:
    if global_14 != 4 then jump lbl_1a643
    local_1ef2 = "Seguro"
    jmp lbl_1a6d7

lbl_1a643:
    if global_14 != 5 then jump lbl_1a679
    local_1ef2 = "Bien sûr"
    T 0x5e

lbl_1a679:
    if global_14 != 6 then jump lbl_1a6ab
    local_1ef2 = "Claro"
    jmp lbl_1a6d7

lbl_1a6ab:
    if global_14 != 7 then jump lbl_1a6d7
    local_1ef2 = "Certamente"

lbl_1a6d7:
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
; flags=0x27, events: timer=0x19d86
; tim=1000, en=1

; timer
.org 0x19d86
    if global_1c <= 0 then jump lbl_19de2
    if global_20 <= 0 then jump lbl_19de2
    global_20--
    if global_20 != 0 then jump lbl_19de2
    dim = global_30

lbl_19de2:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x19dfc

; touch_release
.org 0x19dfc
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x19e34
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
; 019fd6:  ff ff                                            |..|

; touch_release
.org 0x19e34
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 019fe6:  00 00 00 00 e5 af bc e5 87 ba e5 a4 b1 e8 b4 a5  |................|
; 019ff6:  ef bc 8c e8 af b7 e7 a1 ae e8 ae a4 e6 98 af e5  |................|
; 01a006:  90 a6 e6 8f 92 e5 85 a5 55 e7 9b 98 00 00 00 00  |........U.......|
; 01a016:  6b 00 ac 00 80 00 27 00 ea 00 d2 00 00 00 00 00  |k.....'.........|
; 01a026:  00 00 00 00 00 00 04 00 05 00 ff ff ff ff 01 01  |................|
; 01a036:  00 00 64 00 f4 a7 00 00 01 00 00 00 62 06 00 00  |..d.........b...|
; 01a046:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a056:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01a066:  00 00 00 00 f4 00 ac 00 80 00 27 00 73 01 d2 00  |..........'.s...|
; 01a076:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 01a086:  ff ff 01 01 00 00 64 00 5c a8 00 00 01 00 00 00  |......d.\.......|
; 01a096:  00 00 00 00 e6 98 af e5 90 a6 e5 af bc e5 87 ba  |................|
; 01a0a6:  e8 87 b3 55 e7 9b 98 ef bc 9f 00 00 00 00 00 00  |...U............|
; 01a0b6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a0c6:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 01a0d6:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 01a0e6:  1a 00 ff ff ff ff 01 01 00 00 64 00 70 ac 00 00  |..........d.p...|
; 01a0f6:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01a106:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a116:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 50 00  |..............P.|
; 01a126:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 01a136:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01a146:  d8 ac 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 01a156:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a166:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01a176:  00 00 91 00 3d 00 36 00 3c 00 c6                 |....=.6.<..|
