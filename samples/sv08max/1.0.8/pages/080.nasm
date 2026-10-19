; page 80: 3 objects

; object address table, 3 objects, block loaded at 0xb950
.dd 0xb95c, 0xb99c, 0xb9f0

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xa3007d30
; flags=0x37, aph=127
; sta=2, pic=2
; 04cb30:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x4cd54
    if global_14 != 0 then jump lbl_4cd9c
    local_6d8b = "请先确认网络已连接"
    jmp lbl_4d038

lbl_4cd9c:
    if global_14 != 1 then jump lbl_4cdf5
    local_6d8b = "Please confirm that the network is connected"
    jmp lbl_4d038

lbl_4cdf5:
    if global_14 != 2 then jump lbl_4ce73
    local_6d8b = "まずネットワークが接続されていることを確認してください"
    jmp lbl_4d038

lbl_4ce73:
    if global_14 != 3 then jump lbl_4ced6
    local_6d8b = "Bitte bestätigen Sie, dass das Netzwerk verbunden ist"
    jmp lbl_4d038

lbl_4ced6:
    if global_14 != 4 then jump lbl_4cf31
    local_6d8b = "Por favor, confirme que la red está conectada"
    jmp lbl_4d038

lbl_4cf31:
    if global_14 != 5 then jump lbl_4cf8d
    local_6d8b = "Veuillez confirmer que le réseau est connecté"
    jmp lbl_4d038

lbl_4cf8d:
    if global_14 != 6 then jump lbl_4cfe8
    local_6d8b = "Por favor, confirme que a rede está conectada"
    jmp lbl_4d038

lbl_4cfe8:
    if global_14 != 7 then jump lbl_4d038
    local_6d8b = "Si prega di confermare che la rete è connessa"

lbl_4d038:
    if global_14 != 0 then jump lbl_4d06b
    local_6db4 = "确定"
    jmp lbl_4d1b8

lbl_4d06b:
    if global_14 != 1 then jump lbl_4d09a
    local_6db4 = "OK"
    jmp lbl_4d1b8

lbl_4d09a:
    if global_14 != 2 then jump lbl_4d0cd
    local_6db4 = "確定"
    jmp lbl_4d1b8

lbl_4d0cd:
    if global_14 != 3 then jump lbl_4d0fc
    local_6db4 = "OK"
    jmp lbl_4d1b8

lbl_4d0fc:
    if global_14 != 4 then jump lbl_4d130
    local_6db4 = "Aceptar"
    jmp lbl_4d1b8

lbl_4d130:
    if global_14 != 5 then jump lbl_4d165
    local_6db4 = "D'accord"
    jmp lbl_4d1b8

lbl_4d165:
    if global_14 != 6 then jump lbl_4d194
    local_6db4 = "OK"
    jmp lbl_4d1b8

lbl_4d194:
    if global_14 != 7 then jump lbl_4d1b8
    local_6db4 = "OK"

lbl_4d1b8:
    doevents
    down
    up
    unload
    down
    up

; object id 1 (text 't0'): x=118, y=74, w=242, h=63, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="请先确认网络已连接"
; text:
;   0: "请先确认网络已连接"
;   1: "Please confirm that the network is connected"
;   2: "まずネットワークが接続されていることを確認してください"
;   3: "Bitte bestätigen Sie, dass das Netzwerk verbunden ist"
;   4: "Por favor, confirme que la red está conectada"
;   5: "Veuillez confirmer que le réseau est connecté"
;   6: "Por favor, confirme que a rede está conectada"
;   7: "Si prega di confermare che la rete è connessa"

; object id 2 (button 'b1'): x=175, y=170, w=130, h=43, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x4ca86
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="确定"
; text:
;   0: "确定"
;   1: "OK"
;   2: "確定"
;   3: "OK"
;   4: "Aceptar"
;   5: "D'accord"
;   6: "OK"
;   7: "OK"
; touch_release reports to the host: page <page>, widget 0
; 04cbd4:  ff ff                                            |..|

; touch_release
.org 0x4ca86
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 358 bytes (6 trailing zero bytes dropped)
; 04cbe4:  00 00 00 00 e8 af b7 e5 85 88 e7 a1 ae e8 ae a4  |................|
; 04cbf4:  e7 bd 91 e7 bb 9c e5 b7 b2 e8 bf 9e e6 8e a5 00  |................|
; 04cc04:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 04cc14:  09 01 71 00 7b 00 2d 00 83 01 9d 00 00 00 00 00  |..q.{.-.........|
; 04cc24:  00 00 00 00 00 00 64 00 65 00 ff ff ff ff 01 01  |......d.e.......|
; 04cc34:  00 00 32 00 38 bb 00 00 00 00 00 00 62 04 00 00  |..2.8.......b...|
; 04cc44:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04cc54:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 04cc64:  00 00 00 00 0a 01 b0 00 7b 00 2d 00 84 01 dc 00  |........{.-.....|
; 04cc74:  00 00 00 00 00 00 00 00 00 00 64 00 65 00 ff ff  |..........d.e...|
; 04cc84:  ff ff 01 01 00 00 32 00 6c bb 00 00 01 00 00 00  |......2.l.......|
; 04cc94:  00 00 00 00 00 ff 00 01 00 00 64 00 0c bd 00 00  |..........d.....|
; 04cca4:  e8 bf 9b e6 96 99 00 00 74 05 00 00 00 00 00 00  |........t.......|
; 04ccb4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04ccc4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 04ccd4:  48 00 ab 00 e9 80 80 e6 96 99 00 00 00 00 00 00  |H...............|
; 04cce4:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 64 00  |..............d.|
; 04ccf4:  74 bd 00 00 00 00 00 00 00 00 00 00 74 06 00 00  |t...........t...|
; 04cd04:  00 00 00 00 00 00 00 00 e9 95 bf e9 80 80 e6 96  |................|
; 04cd14:  99 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 7f 00  |................|
; 04cd24:  00 00 00 00 70 01 44 00 14 00 17 00 83 01 5a 00  |....p.D.......Z.|
; 04cd34:  00 00 00 00 03 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04cd44:  00 00 64 00 dc bd                                |..d...|
