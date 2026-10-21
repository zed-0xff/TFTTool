; page 14 'if_delete1': 7 objects

; object address table, 7 objects, block loaded at 0xb950
.dd 0xb96c, 0xb9ac, 0xba00, 0xba54, 0xba74, 0xba94, 0xbae8

; object id 0 (page 'if_delete1'): x=0, y=0, w=480, h=272, name hash=0xf630569d
; flags=0x37, aph=127, events: event_3=0x17c8c
; sta=2, pic=4
; 017ee7:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x17c8c
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    timer

; load
.org 0x183bf
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_1841e
    local_19e1 = "是否删除该文件/文件夹？"
    jmp lbl_18676

lbl_1841e:
    if global_14 != 1 then jump lbl_18472
    local_19e1 = "Do you want to delete this file/folder?"
    jmp lbl_18676

lbl_18472:
    if global_14 != 2 then jump lbl_184d7
    local_19e1 = "このファイル/フォルダーを削除しますか?"
    jmp lbl_18676

lbl_184d7:
    if global_14 != 3 then jump lbl_18534
    local_19e1 = "Möchten Sie diese Datei/diesen Ordner löschen?"
    jmp lbl_18676

lbl_18534:
    if global_14 != 4 then jump lbl_18589
    local_19e1 = "¿Quieres eliminar este archivo/carpeta?"
    jmp lbl_18676

lbl_18589:
    if global_14 != 5 then jump lbl_185e1
    local_19e1 = "Voulez-vous supprimer ce fichier/dossier ?"
    jmp lbl_18676

lbl_185e1:
    if global_14 != 6 then jump lbl_18630
    local_19e1 = "Deseja excluir este arquivo/pasta?"
    jmp lbl_18676

lbl_18630:
    if global_14 != 7 then jump lbl_18676
    local_19e1 = "Vuoi eliminare questo file/cartella?"

lbl_18676:
    if global_14 != 0 then jump lbl_186b5
    local_1a46 = "是"
    local_1a6f = "否"
    jmp lbl_1886a

lbl_186b5:
    if global_14 != 1 then jump lbl_186f3
    local_1a46 = "Yes"
    local_1a6f = "No"
    jmp lbl_1886a

lbl_186f3:
    if global_14 != 2 then jump lbl_1873b
    local_1a46 = "はい"
    local_1a6f = "いいえ"
    T 0x12f

lbl_1873b:
    if global_14 != 3 then jump lbl_1877a
    local_1a46 = "Ja"
    local_1a6f = "NEIN"
    jmp lbl_1886a

lbl_1877a:
    if global_14 != 4 then jump lbl_187b8
    local_1a46 = "Sí"
    local_1a6f = "No"
    jmp lbl_1886a

lbl_187b8:
    if global_14 != 5 then jump lbl_187f7
    local_1a46 = "Oui"
    local_1a6f = "Non"
    jmp lbl_1886a

lbl_187f7:
    if global_14 != 6 then jump lbl_18837
    local_1a46 = "Sim"
    local_1a6f = "Não"
    jmp lbl_1886a

lbl_18837:
    if global_14 != 7 then jump lbl_1886a
    local_1a46 = "SÌ"
    local_1a6f = "NO"

lbl_1886a:
    doevents
    down
    up

; object id 1 (text 't0'): x=129, y=114, w=224, h=41, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=0, txt_maxl=300, isbr=1, background=0, txt="是否删除该文件/文件夹？"
; text:
;   0: "是否删除该文件/文件夹？"
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
; flags=0x27, events: timer=0x17cfd
; tim=1000, en=1

; timer
.org 0x17cfd
    if global_1c <= 0 then jump lbl_17d59
    if global_20 <= 0 then jump lbl_17d59
    global_20--
    if global_20 != 0 then jump lbl_17d59
    dim = global_30

lbl_17d59:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x17d73

; touch_release
.org 0x17d73
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 5 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x17dab
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
; 01801f:  ff ff                                            |..|

; touch_release
.org 0x17dab
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x17e15
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
; 018073:  ff ff                                            |..|

; touch_release
.org 0x17e15
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 819 bytes (5 trailing zero bytes dropped)
; 018083:  00 00 00 00 e6 98 af e5 90 a6 e5 88 a0 e9 99 a4  |................|
; 018093:  e8 af a5 e6 96 87 e4 bb b6 2f e6 96 87 e4 bb b6  |........./......|
; 0180a3:  e5 a4 b9 ef bc 9f 00 00 00 00 00 00 00 00 00 00  |................|
; 0180b3:  00 00 7f 00 00 00 00 00 00 00 d3 00 3d 00 36 00  |............=.6.|
; 0180c3:  3c 00 08 01 00 00 00 00 00 00 00 00 00 00 1a 00  |<...............|
; 0180d3:  1a 00 ff ff ff ff 01 01 00 00 64 00 0c be 00 00  |..........d.....|
; 0180e3:  01 00 00 00 00 00 00 00 e6 9c aa e6 a3 80 e6 b5  |................|
; 0180f3:  8b e5 88 b0 55 e7 9b 98 00 00 00 00 00 00 00 00  |....U...........|
; 018103:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 018113:  00 00 07 00 3d 00 36 00 3c 00 3c 00 00 00 00 00  |....=.6.<.<.....|
; 018123:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 018133:  00 00 64 00 38 cb 00 00 01 00 00 00 62 06 00 00  |..d.8.......b...|
; 018143:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018153:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 018163:  00 00 00 00 00 00 50 00 3d 00 36 00 3c 00 85 00  |......P.=.6.<...|
; 018173:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 018183:  ff ff 01 01 00 00 64 00 a0 cb 00 00 01 00 00 00  |......d.........|
; 018193:  62 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0181a3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0181b3:  00 00 7f 00 58 58 58 2e 67 6f 63 64 65 00 36 00  |....XXX.gocde.6.|
; 0181c3:  3c 00 c6 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<...............|
; 0181d3:  1a 00 ff ff ff ff 01 01 00 00 64 00 08 cc 00 00  |..........d.....|
; 0181e3:  01 00 00 00 62 08 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0181f3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018203:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 d3 00  |................|
; 018213:  3d 00 36 00 3c 00 08 01 00 00 00 00 00 00 00 00  |=.6.<...........|
; 018223:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 018233:  70 cc 00 00 01 00 00 00 62 0c 00 00 00 00 00 00  |p.......b.......|
; 018243:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018253:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 018263:  c0 00 2d 00 00 00 6f 00 3d 01 9b 00 00 00 00 00  |..-...o.=.......|
; 018273:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 018283:  00 00 64 00 d8 cc 00 00 01 00 00 00 74 0d 00 00  |..d.........t...|
; 018293:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0182a3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0182b3:  00 00 00 00 14 ff 61 00 32 00 10 00 45 ff 70 00  |......a.2...E.p.|
; 0182c3:  00 00 00 00 03 00 00 00 00 01 00 00 00 ff 00 01  |................|
; 0182d3:  00 00 2c 01 40 cd 00 00 01 00 00 00 00 00 00 00  |..,.@...........|
; 0182e3:  74 0e 00 00 e6 98 af 00 00 00 00 00 00 00 00 00  |t...............|
; 0182f3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018303:  00 00 7f 00 00 00 00 00 58 ff 61 00 21 00 10 00  |........X.a.!...|
; 018313:  78 ff 70 00 00 00 00 00 03 00 00 00 00 01 00 00  |x.p.............|
; 018323:  ff ff 00 01 00 00 2c 01 70 ce 00 00 01 00 00 00  |......,.p.......|
; 018333:  00 00 00 00 00 0f 00 00 00 00 00 00 00 00 00 00  |................|
; 018343:  00 00 00 00 00 00 00 00 00 00 00 00 e5 90 a6 00  |................|
; 018353:  00 00 00 00 00 00 7f 00 00 00 00 00 c1 00 74 00  |..............t.|
; 018363:  7b 00 26 00 3b 01 99 00 00 00 00 00 03 00 00 00  |{.&.;...........|
; 018373:  00 01 00 00 ff ff 01 01 00 00 2c 01 a0 cf 00 00  |..........,.....|
; 018383:  00 00 00 00 00 00 00 00 62 10 00 00 00 00 00 00  |........b.......|
; 018393:  00 00 00 00 00 00 00 00 00 00 00 00 e0 2e 00 00  |................|
; 0183a3:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0183b3:  40 01 2d                                         |@.-|
