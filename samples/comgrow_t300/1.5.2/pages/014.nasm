; page 14 'if_delete1': 7 objects

; object address table, 7 objects, block loaded at 0xa3a4
.dd 0xa3c0, 0xa400, 0xa454, 0xa4a8, 0xa4c8, 0xa4e8, 0xa53c

; object id 0 (page 'if_delete1'): x=0, y=0, w=480, h=272, name hash=0xf630569d
; flags=0x37, aph=127, events: event_3=0x15b1e
; sta=2, pic=4
; 015d79:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x15b1e
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    timer

; load
.org 0x16251
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_162b3
    local_187e = "是否删除改该文件/文件夹？"
    jmp lbl_1650b

lbl_162b3:
    if global_14 != 1 then jump lbl_16307
    local_187e = "Do you want to delete this file/folder?"
    jmp lbl_1650b

lbl_16307:
    if global_14 != 2 then jump lbl_1636c
    local_187e = "このファイル/フォルダーを削除しますか?"
    jmp lbl_1650b

lbl_1636c:
    if global_14 != 3 then jump lbl_163c9
    local_187e = "Möchten Sie diese Datei/diesen Ordner löschen?"
    jmp lbl_1650b

lbl_163c9:
    if global_14 != 4 then jump lbl_1641e
    local_187e = "¿Quieres eliminar este archivo/carpeta?"
    jmp lbl_1650b

lbl_1641e:
    if global_14 != 5 then jump lbl_16476
    local_187e = "Voulez-vous supprimer ce fichier/dossier ?"
    jmp lbl_1650b

lbl_16476:
    if global_14 != 6 then jump lbl_164c5
    local_187e = "Deseja excluir este arquivo/pasta?"
    jmp lbl_1650b

lbl_164c5:
    if global_14 != 7 then jump lbl_1650b
    local_187e = "Vuoi eliminare questo file/cartella?"

lbl_1650b:
    if global_14 != 0 then jump lbl_1654a
    local_18e3 = "是"
    local_190c = "否"
    jmp lbl_166ff

lbl_1654a:
    if global_14 != 1 then jump lbl_16588
    local_18e3 = "Yes"
    local_190c = "No"
    jmp lbl_166ff

lbl_16588:
    if global_14 != 2 then jump lbl_165d0
    local_18e3 = "はい"
    local_190c = "いいえ"
    T 0x12f

lbl_165d0:
    if global_14 != 3 then jump lbl_1660f
    local_18e3 = "Ja"
    local_190c = "NEIN"
    jmp lbl_166ff

lbl_1660f:
    if global_14 != 4 then jump lbl_1664d
    local_18e3 = "Sí"
    local_190c = "No"
    jmp lbl_166ff

lbl_1664d:
    if global_14 != 5 then jump lbl_1668c
    local_18e3 = "Oui"
    local_190c = "Non"
    jmp lbl_166ff

lbl_1668c:
    if global_14 != 6 then jump lbl_166cc
    local_18e3 = "Sim"
    local_190c = "Não"
    jmp lbl_166ff

lbl_166cc:
    if global_14 != 7 then jump lbl_166ff
    local_18e3 = "SÌ"
    local_190c = "NO"

lbl_166ff:
    doevents
    down
    up

; object id 1 (text 't0'): x=129, y=114, w=224, h=41, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=0, txt_maxl=300, isbr=1, background=0, txt="是否删除改该文件/文件夹？"
; text:
;   0: "是否删除改该文件/文件夹？"
;   1: "Do you want to delete this file/folder?"
;   2: "このファイル/フォルダーを削除しますか?"
;   3: "Möchten Sie diese Datei/diesen Ordner löschen?"
;   4: "¿Quieres eliminar este archivo/carpeta?"
;   5: "Voulez-vous supprimer ce fichier/dossier ?"
;   6: "Deseja excluir este arquivo/pasta?"
;   7: "Vuoi eliminare questo file/cartella?"

; object id 2 (text 't1'): x=129, y=68, w=224, h=41, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=2, txt_maxl=300, isbr=1, background=0, txt="XXX.gocde"

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x15b8f
; tim=1000, en=1

; timer
.org 0x15b8f
    if global_1c <= 0 then jump lbl_15beb
    if global_20 <= 0 then jump lbl_15beb
    global_20--
    if global_20 != 0 then jump lbl_15beb
    dim = global_30

lbl_15beb:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x15c05

; touch_release
.org 0x15c05
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 5 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x15c3d
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
; 015eb1:  ff ff                                            |..|

; touch_release
.org 0x15c3d
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x15ca7
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
; 015f05:  ff ff                                            |..|

; touch_release
.org 0x15ca7
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 819 bytes (5 trailing zero bytes dropped)
; 015f15:  00 00 00 00 e6 98 af e5 90 a6 e5 88 a0 e9 99 a4  |................|
; 015f25:  e6 94 b9 e8 af a5 e6 96 87 e4 bb b6 2f e6 96 87  |............/...|
; 015f35:  e4 bb b6 e5 a4 b9 ef bc 9f 00 00 00 00 00 00 00  |................|
; 015f45:  00 00 7f 00 00 00 00 00 00 00 d3 00 3d 00 36 00  |............=.6.|
; 015f55:  3c 00 08 01 00 00 00 00 00 00 00 00 00 00 1a 00  |<...............|
; 015f65:  1a 00 ff ff ff ff 01 01 00 00 64 00 60 a8 00 00  |..........d.`...|
; 015f75:  01 00 00 00 00 00 00 00 e6 9c aa e6 a3 80 e6 b5  |................|
; 015f85:  8b e5 88 b0 55 e7 9b 98 00 00 00 00 00 00 00 00  |....U...........|
; 015f95:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 015fa5:  00 00 07 00 3d 00 36 00 3c 00 3c 00 00 00 00 00  |....=.6.<.<.....|
; 015fb5:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 015fc5:  00 00 64 00 8c b5 00 00 01 00 00 00 62 06 00 00  |..d.........b...|
; 015fd5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015fe5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 015ff5:  00 00 00 00 00 00 50 00 3d 00 36 00 3c 00 85 00  |......P.=.6.<...|
; 016005:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 016015:  ff ff 01 01 00 00 64 00 f4 b5 00 00 01 00 00 00  |......d.........|
; 016025:  62 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 016035:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 016045:  00 00 7f 00 58 58 58 2e 67 6f 63 64 65 00 36 00  |....XXX.gocde.6.|
; 016055:  3c 00 c6 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<...............|
; 016065:  1a 00 ff ff ff ff 01 01 00 00 64 00 5c b6 00 00  |..........d.\...|
; 016075:  01 00 00 00 62 08 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 016085:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 016095:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 d3 00  |................|
; 0160a5:  3d 00 36 00 3c 00 08 01 00 00 00 00 00 00 00 00  |=.6.<...........|
; 0160b5:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 0160c5:  c4 b6 00 00 01 00 00 00 62 0c 00 00 00 00 00 00  |........b.......|
; 0160d5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0160e5:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0160f5:  c0 00 2d 00 00 00 6f 00 3d 01 9b 00 00 00 00 00  |..-...o.=.......|
; 016105:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 016115:  00 00 64 00 2c b7 00 00 01 00 00 00 74 0d 00 00  |..d.,.......t...|
; 016125:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 016135:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 016145:  00 00 00 00 14 ff 61 00 32 00 10 00 45 ff 70 00  |......a.2...E.p.|
; 016155:  00 00 00 00 03 00 00 00 00 01 00 00 00 ff 00 01  |................|
; 016165:  00 00 2c 01 94 b7 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 016175:  74 0e 00 00 e6 98 af 00 00 00 00 00 00 00 00 00  |t...............|
; 016185:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 016195:  00 00 7f 00 00 00 00 00 58 ff 61 00 21 00 10 00  |........X.a.!...|
; 0161a5:  78 ff 70 00 00 00 00 00 03 00 00 00 00 01 00 00  |x.p.............|
; 0161b5:  ff ff 00 01 00 00 2c 01 c4 b8 00 00 01 00 00 00  |......,.........|
; 0161c5:  00 00 00 00 00 0f 00 00 00 00 00 00 00 00 00 00  |................|
; 0161d5:  00 00 00 00 00 00 00 00 00 00 00 00 e5 90 a6 00  |................|
; 0161e5:  00 00 00 00 00 00 7f 00 00 00 00 00 c1 00 74 00  |..............t.|
; 0161f5:  7b 00 26 00 3b 01 99 00 00 00 00 00 03 00 00 00  |{.&.;...........|
; 016205:  00 01 00 00 ff ff 01 01 00 00 2c 01 f4 b9 00 00  |..........,.....|
; 016215:  00 00 00 00 00 00 00 00 62 10 00 00 00 00 00 00  |........b.......|
; 016225:  00 00 00 00 00 00 00 00 00 00 00 00 e0 2e 00 00  |................|
; 016235:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 016245:  40 01 2d                                         |@.-|
