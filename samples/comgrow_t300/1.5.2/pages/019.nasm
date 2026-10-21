; page 19 'if_delete2': 7 objects

; object address table, 7 objects, block loaded at 0xa3a4
.dd 0xa3c0, 0xa400, 0xa454, 0xa4a8, 0xa4c8, 0xa4e8, 0xa53c

; object id 0 (page 'if_delete2'): x=0, y=0, w=480, h=272, name hash=0xce45057a
; flags=0x37, aph=127, events: event_3=0x1a6f8
; sta=2, pic=4
; 01a953:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1a6f8
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    timer

; load
.org 0x1ae2b
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_1ae83
    local_1f3a = "是否删除改该文件？"
    jmp lbl_1b097

lbl_1ae83:
    if global_14 != 1 then jump lbl_1aed0
    local_1f3a = "Do you want to delete this file?"
    jmp lbl_1b097

lbl_1aed0:
    if global_14 != 2 then jump lbl_1af25
    local_1f3a = "このファイルを削除しますか?"
    jmp lbl_1b097

lbl_1af25:
    if global_14 != 3 then jump lbl_1af74
    local_1f3a = "Möchten Sie diese Datei löschen?"
    jmp lbl_1b097

lbl_1af74:
    if global_14 != 4 then jump lbl_1afc1
    local_1f3a = "¿Quieres eliminar este archivo?"
    jmp lbl_1b097

lbl_1afc1:
    if global_14 != 5 then jump lbl_1b011
    local_1f3a = "Voulez-vous supprimer ce fichier ?"
    jmp lbl_1b097

lbl_1b011:
    if global_14 != 6 then jump lbl_1b05a
    local_1f3a = "Deseja excluir este arquivo?"
    T 0x3d

lbl_1b05a:
    if global_14 != 7 then jump lbl_1b097
    local_1f3a = "Vuoi eliminare questo file?"

lbl_1b097:
    if global_14 != 0 then jump lbl_1b0d6
    local_1f9f = "是"
    local_1fc8 = "否"
    jmp lbl_1b28b

lbl_1b0d6:
    if global_14 != 1 then jump lbl_1b114
    local_1f9f = "Yes"
    local_1fc8 = "No"
    jmp lbl_1b28b

lbl_1b114:
    if global_14 != 2 then jump lbl_1b15c
    local_1f9f = "はい"
    local_1fc8 = "いいえ"
    T 0x12f

lbl_1b15c:
    if global_14 != 3 then jump lbl_1b19b
    local_1f9f = "Ja"
    local_1fc8 = "NEIN"
    jmp lbl_1b28b

lbl_1b19b:
    if global_14 != 4 then jump lbl_1b1d9
    local_1f9f = "Sí"
    local_1fc8 = "No"
    jmp lbl_1b28b

lbl_1b1d9:
    if global_14 != 5 then jump lbl_1b218
    local_1f9f = "Oui"
    local_1fc8 = "Non"
    jmp lbl_1b28b

lbl_1b218:
    if global_14 != 6 then jump lbl_1b258
    local_1f9f = "Sim"
    local_1fc8 = "Não"
    jmp lbl_1b28b

lbl_1b258:
    if global_14 != 7 then jump lbl_1b28b
    local_1f9f = "SÌ"
    local_1fc8 = "NO"

lbl_1b28b:
    doevents
    down
    up

; object id 1 (text 't0'): x=129, y=113, w=224, h=41, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=0, txt_maxl=300, isbr=1, background=0, txt="是否删除改该文件？"
; text:
;   0: "是否删除改该文件？"
;   1: "Do you want to delete this file?"
;   2: "このファイルを削除しますか?"
;   3: "Möchten Sie diese Datei löschen?"
;   4: "¿Quieres eliminar este archivo?"
;   5: "Voulez-vous supprimer ce fichier ?"
;   6: "Deseja excluir este arquivo?"
;   7: "Vuoi eliminare questo file?"

; object id 2 (text 't1'): x=99, y=65, w=281, h=41, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=2, txt_maxl=300, isbr=1, background=0, txt="XXX.gocde"

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1a769
; tim=1000, en=1

; timer
.org 0x1a769
    if global_1c <= 0 then jump lbl_1a7c5
    if global_20 <= 0 then jump lbl_1a7c5
    global_20--
    if global_20 != 0 then jump lbl_1a7c5
    dim = global_30

lbl_1a7c5:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1a7df

; touch_release
.org 0x1a7df
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 5 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1a817
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
; 01aa8b:  ff ff                                            |..|

; touch_release
.org 0x1a817
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x1a881
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
; 01aadf:  ff ff                                            |..|

; touch_release
.org 0x1a881
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 820 bytes (4 trailing zero bytes dropped)
; 01aaef:  00 00 00 00 e6 98 af e5 90 a6 e5 88 a0 e9 99 a4  |................|
; 01aaff:  e6 94 b9 e8 af a5 e6 96 87 e4 bb b6 ef bc 9f 00  |................|
; 01ab0f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ab1f:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 01ab2f:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 01ab3f:  1a 00 ff ff ff ff 01 01 00 00 64 00 70 ac 00 00  |..........d.p...|
; 01ab4f:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01ab5f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ab6f:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 50 00  |..............P.|
; 01ab7f:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 01ab8f:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01ab9f:  d8 ac 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 01abaf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01abbf:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01abcf:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 01abdf:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 01abef:  00 00 64 00 40 ad 00 00 01 00 00 00 62 08 00 00  |..d.@.......b...|
; 01abff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ac0f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01ac1f:  00 00 00 00 58 58 58 2e 67 6f 63 64 65 00 5f 32  |....XXX.gocde._2|
; 01ac2f:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6d 70 34  |0240314_1142.mp4|
; 01ac3f:  00 ff 01 01 00 00 64 00 a8 ad 00 00 01 00 00 00  |......d.........|
; 01ac4f:  33 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |3...............|
; 01ac5f:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 01ac6f:  05 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ac7f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ac8f:  74 0e 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01ac9f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01acaf:  00 00 7f 00 00 00 00 00 51 00 2d 00 40 01 2d 00  |........Q.-.@.-.|
; 01acbf:  90 01 59 00 00 00 00 00 03 00 00 00 00 01 00 00  |..Y.............|
; 01accf:  ff ff 00 01 00 00 2c 01 10 ae 00 00 01 00 00 00  |......,.........|
; 01acdf:  00 00 00 00 62 0f 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01acef:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01acff:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 2e 00  |................|
; 01ad0f:  1d 00 2c 00 bc 01 59 00 00 00 00 00 00 00 00 00  |..,...Y.........|
; 01ad1f:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 01ad2f:  40 af 00 00 01 00 00 00 74 10 00 00 00 00 00 00  |@.......t.......|
; 01ad3f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ad4f:  00 00 00 00 e6 98 af 00 00 00 7f 00 00 00 00 00  |................|
; 01ad5f:  52 00 5b 00 40 01 2d 00 91 01 87 00 00 00 00 00  |R.[.@.-.........|
; 01ad6f:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01ad7f:  a8 af 00 00 01 00 00 00 00 00 00 00 62 11 00 00  |............b...|
; 01ad8f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ad9f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01adaf:  00 00 00 00 a0 01 5b 00 1d 00 2c 00 e5 90 a6 00  |......[...,.....|
; 01adbf:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 01adcf:  ff ff 01 01 00 00 64 00 d8 b0 00 00 01 00 00 00  |......d.........|
; 01addf:  74 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01adef:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01adff:  00 00 7f 00 00 00 00 00 52 00 88 00 40 01 2d 00  |........R...@.-.|
; 01ae0f:  91 01 b4 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 01ae1f:  ff ff 00 01                                      |....|
