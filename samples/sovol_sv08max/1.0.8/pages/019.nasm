; page 19 'if_delete2': 7 objects

; object address table, 7 objects, block loaded at 0xb950
.dd 0xb96c, 0xb9ac, 0xba00, 0xba54, 0xba74, 0xba94, 0xbae8

; object id 0 (page 'if_delete2'): x=0, y=0, w=480, h=272, name hash=0xce45057a
; flags=0x37, aph=127, events: event_3=0x1c863
; sta=2, pic=4
; 01cabe:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1c863
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    timer

; load
.org 0x1cf96
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_1cfee
    local_209d = "是否删除改该文件？"
    jmp lbl_1d202

lbl_1cfee:
    if global_14 != 1 then jump lbl_1d03b
    local_209d = "Do you want to delete this file?"
    jmp lbl_1d202

lbl_1d03b:
    if global_14 != 2 then jump lbl_1d090
    local_209d = "このファイルを削除しますか?"
    jmp lbl_1d202

lbl_1d090:
    if global_14 != 3 then jump lbl_1d0df
    local_209d = "Möchten Sie diese Datei löschen?"
    jmp lbl_1d202

lbl_1d0df:
    if global_14 != 4 then jump lbl_1d12c
    local_209d = "¿Quieres eliminar este archivo?"
    jmp lbl_1d202

lbl_1d12c:
    if global_14 != 5 then jump lbl_1d17c
    local_209d = "Voulez-vous supprimer ce fichier ?"
    jmp lbl_1d202

lbl_1d17c:
    if global_14 != 6 then jump lbl_1d1c5
    local_209d = "Deseja excluir este arquivo?"
    T 0x3d

lbl_1d1c5:
    if global_14 != 7 then jump lbl_1d202
    local_209d = "Vuoi eliminare questo file?"

lbl_1d202:
    if global_14 != 0 then jump lbl_1d241
    local_2102 = "是"
    local_212b = "否"
    jmp lbl_1d3f6

lbl_1d241:
    if global_14 != 1 then jump lbl_1d27f
    local_2102 = "Yes"
    local_212b = "No"
    jmp lbl_1d3f6

lbl_1d27f:
    if global_14 != 2 then jump lbl_1d2c7
    local_2102 = "はい"
    local_212b = "いいえ"
    T 0x12f

lbl_1d2c7:
    if global_14 != 3 then jump lbl_1d306
    local_2102 = "Ja"
    local_212b = "NEIN"
    jmp lbl_1d3f6

lbl_1d306:
    if global_14 != 4 then jump lbl_1d344
    local_2102 = "Sí"
    local_212b = "No"
    jmp lbl_1d3f6

lbl_1d344:
    if global_14 != 5 then jump lbl_1d383
    local_2102 = "Oui"
    local_212b = "Non"
    jmp lbl_1d3f6

lbl_1d383:
    if global_14 != 6 then jump lbl_1d3c3
    local_2102 = "Sim"
    local_212b = "Não"
    jmp lbl_1d3f6

lbl_1d3c3:
    if global_14 != 7 then jump lbl_1d3f6
    local_2102 = "SÌ"
    local_212b = "NO"

lbl_1d3f6:
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
; flags=0x27, events: timer=0x1c8d4
; tim=1000, en=1

; timer
.org 0x1c8d4
    if global_1c <= 0 then jump lbl_1c930
    if global_20 <= 0 then jump lbl_1c930
    global_20--
    if global_20 != 0 then jump lbl_1c930
    dim = global_30

lbl_1c930:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1c94a

; touch_release
.org 0x1c94a
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 5 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1c982
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
; 01cbf6:  ff ff                                            |..|

; touch_release
.org 0x1c982
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x1c9ec
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
; 01cc4a:  ff ff                                            |..|

; touch_release
.org 0x1c9ec
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 820 bytes (4 trailing zero bytes dropped)
; 01cc5a:  00 00 00 00 e6 98 af e5 90 a6 e5 88 a0 e9 99 a4  |................|
; 01cc6a:  e6 94 b9 e8 af a5 e6 96 87 e4 bb b6 ef bc 9f 00  |................|
; 01cc7a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cc8a:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 01cc9a:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 01ccaa:  1a 00 ff ff ff ff 01 01 00 00 64 00 1c c2 00 00  |..........d.....|
; 01ccba:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01ccca:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ccda:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 50 00  |..............P.|
; 01ccea:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 01ccfa:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01cd0a:  84 c2 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 01cd1a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cd2a:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01cd3a:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 01cd4a:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 01cd5a:  00 00 64 00 ec c2 00 00 01 00 00 00 62 08 00 00  |..d.........b...|
; 01cd6a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cd7a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01cd8a:  00 00 00 00 58 58 58 2e 67 6f 63 64 65 00 5f 32  |....XXX.gocde._2|
; 01cd9a:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6d 70 34  |0240314_1142.mp4|
; 01cdaa:  00 ff 01 01 00 00 64 00 54 c3 00 00 01 00 00 00  |......d.T.......|
; 01cdba:  33 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |3...............|
; 01cdca:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 01cdda:  05 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cdea:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cdfa:  74 0e 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01ce0a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ce1a:  00 00 7f 00 00 00 00 00 51 00 2d 00 40 01 2d 00  |........Q.-.@.-.|
; 01ce2a:  90 01 59 00 00 00 00 00 03 00 00 00 00 01 00 00  |..Y.............|
; 01ce3a:  ff ff 00 01 00 00 2c 01 bc c3 00 00 01 00 00 00  |......,.........|
; 01ce4a:  00 00 00 00 62 0f 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01ce5a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ce6a:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 2e 00  |................|
; 01ce7a:  1d 00 2c 00 bc 01 59 00 00 00 00 00 00 00 00 00  |..,...Y.........|
; 01ce8a:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 01ce9a:  ec c4 00 00 01 00 00 00 74 10 00 00 00 00 00 00  |........t.......|
; 01ceaa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ceba:  00 00 00 00 e6 98 af 00 00 00 7f 00 00 00 00 00  |................|
; 01ceca:  52 00 5b 00 40 01 2d 00 91 01 87 00 00 00 00 00  |R.[.@.-.........|
; 01ceda:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01ceea:  54 c5 00 00 01 00 00 00 00 00 00 00 62 11 00 00  |T...........b...|
; 01cefa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cf0a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01cf1a:  00 00 00 00 a0 01 5b 00 1d 00 2c 00 e5 90 a6 00  |......[...,.....|
; 01cf2a:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 01cf3a:  ff ff 01 01 00 00 64 00 84 c6 00 00 01 00 00 00  |......d.........|
; 01cf4a:  74 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01cf5a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01cf6a:  00 00 7f 00 00 00 00 00 52 00 88 00 40 01 2d 00  |........R...@.-.|
; 01cf7a:  91 01 b4 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 01cf8a:  ff ff 00 01                                      |....|
