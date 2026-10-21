; page 69: 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba4c, 0xba94

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x33d3f9e4
; flags=0x37, aph=127
; sta=2, pic=4
; 046a4b:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x46beb
    if global_14 != 0 then jump lbl_46c30
    local_660e = "刷新"
    local_65e5 = "确定"
    jmp lbl_46e27

lbl_46c30:
    if global_14 != 1 then jump lbl_46c72
    local_660e = "Refresh"
    local_65e5 = "OK"
    jmp lbl_46e27

lbl_46c72:
    if global_14 != 2 then jump lbl_46cb7
    local_660e = "更新"
    local_65e5 = "確認"
    jmp lbl_46e27

lbl_46cb7:
    if global_14 != 3 then jump lbl_46d08
    local_660e = "Aktualisieren"
    local_65e5 = "Bestätigen"
    jmp lbl_46e27

lbl_46d08:
    if global_14 != 4 then jump lbl_46d52
    local_660e = "Actualizar"
    local_65e5 = "Aceptar"
    jmp lbl_46e27

lbl_46d52:
    if global_14 != 5 then jump lbl_46d9e
    local_660e = "Actualiser"
    local_65e5 = "Confirmer"
    jmp lbl_46e27

lbl_46d9e:
    if global_14 != 6 then jump lbl_46de9
    local_660e = "Atualizar"
    local_65e5 = "Confirmar"
    jmp lbl_46e27

lbl_46de9:
    if global_14 != 7 then jump lbl_46e27
    local_660e = "Aggiorna"
    local_65e5 = "Conferma"

lbl_46e27:
    doevents
    down
    up
    unload
    down
    up

; object id 1 (button 'b0'): x=251, y=175, w=114, h=34, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x468ef
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt="确定"
; text:
;   0: "确定"
;   1: "OK"
;   2: "確認"
;   3: "Bestätigen"
;   4: "Aceptar"
;   5: "Confirmer"
;   6: "Confirmar"
;   7: "Conferma"
; touch_release reports to the host: page <page>, widget 0
; 046a9b:  ff ff                                            |..|

; touch_release
.org 0x468ef
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b1'): x=114, y=175, w=114, h=34, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x46959
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt="刷新"
; text:
;   0: "刷新"
;   1: "Refresh"
;   2: "更新"
;   3: "Aktualisieren"
;   4: "Actualizar"
;   5: "Actualiser"
;   6: "Atualizar"
;   7: "Aggiorna"
; touch_release reports to the host: page <page>, widget 1
; 046aef:  ff ff                                            |..|

; touch_release
.org 0x46959
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 3 (qrcode): x=114, y=52, w=104, h=104, name hash=0x12311e35
; flags=0x37, aph=127
; 046b33:  00 00 00 00 00 08 ff ff 00 00 00 00 1e 00 00 00  |................|
; 046b43:  04 bb 00 00                                      |....|

; object id 4 (text 't0'): x=222, y=84, w=155, h=51, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=0, background=0, txt="-----"

; data after the object structs, 69 bytes (7 trailing zero bytes dropped)
; 046b9b:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 00 00  |................|
; 046bab:  e5 88 b7 e6 96 b0 00 00 00 00 00 00 30 00 d3 00  |............0...|
; 046bbb:  3d 00 36 00 3c 00 08 01 00 00 00 00 00 00 00 00  |=.6.<...........|
; 046bcb:  00 00 32 00 33 00 ff ff ff ff 01 01 2d 2d 2d 2d  |..2.3.......----|
; 046bdb:  2d 00 00 00 01                                   |-....|
