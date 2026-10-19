; page 34 'if_save': 7 objects

; object address table, 7 objects, block loaded at 0xa3a4
.dd 0xa3c0, 0xa400, 0xa454, 0xa474, 0xa494, 0xa4e8, 0xa53c

; object id 0 (page 'if_save'): x=0, y=0, w=480, h=272, name hash=0xc75ad700
; flags=0x37, aph=127, events: event_3=0x252e2
; sta=2, pic=4
; 02553d:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x252e2
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x258f1
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_2595f
    local_2fcb = "检测到打印时修改zoffset，是否保存？"
    jmp lbl_25ceb

lbl_2595f:
    if global_14 != 1 then jump lbl_259dc
    local_2fcb = "It is detected that zoffset is modified during printing. Do you want to save it?"
    jmp lbl_25ceb

lbl_259dc:
    if global_14 != 2 then jump lbl_25a64
    local_2fcb = "印刷中に ZOFFSET が変更されたことが検出されました。保存しますか?"
    jmp lbl_25ceb

lbl_25a64:
    if global_14 != 3 then jump lbl_25af6
    local_2fcb = "Es wurde festgestellt, dass ZOFFSET während des Druckens geändert wurde. Möchten Sie es speichern?"
    jmp lbl_25ceb

lbl_25af6:
    if global_14 != 4 then jump lbl_25b70
    local_2fcb = "Se detecta que ZOFFSET se modifica durante la impresión ¿Quieres guardarlo?"
    jmp lbl_25ceb

lbl_25b70:
    if global_14 != 5 then jump lbl_25bf9
    local_2fcb = "Il est détecté que ZOFFSET est modifié lors de l'impression. Voulez-vous l'enregistrer ?"
    jmp lbl_25ceb

lbl_25bf9:
    if global_14 != 6 then jump lbl_25c76
    local_2fcb = "Foi detectado que ZOFFSET foi modificado durante a impressão. Deseja salvá-lo?"
    jmp lbl_25ceb

lbl_25c76:
    if global_14 != 7 then jump lbl_25ceb
    local_2fcb = "È stato rilevato che ZOFFSET è stato modificato durante la stampa. Vuoi salvarlo?"

lbl_25ceb:
    if global_14 != 0 then jump lbl_25d2a
    local_3009 = "是"
    local_3032 = "否"
    jmp lbl_25edf

lbl_25d2a:
    if global_14 != 1 then jump lbl_25d68
    local_3009 = "Yes"
    local_3032 = "No"
    jmp lbl_25edf

lbl_25d68:
    if global_14 != 2 then jump lbl_25db0
    local_3009 = "はい"
    local_3032 = "いいえ"
    T 0x12f

lbl_25db0:
    if global_14 != 3 then jump lbl_25def
    local_3009 = "Ja"
    local_3032 = "NEIN"
    jmp lbl_25edf

lbl_25def:
    if global_14 != 4 then jump lbl_25e2d
    local_3009 = "Sí"
    local_3032 = "No"
    jmp lbl_25edf

lbl_25e2d:
    if global_14 != 5 then jump lbl_25e6c
    local_3009 = "Oui"
    local_3032 = "Non"
    jmp lbl_25edf

lbl_25e6c:
    if global_14 != 6 then jump lbl_25eac
    local_3009 = "Sim"
    local_3032 = "Não"
    jmp lbl_25edf

lbl_25eac:
    if global_14 != 7 then jump lbl_25edf
    local_3009 = "SÌ"
    local_3032 = "NO"

lbl_25edf:
    doevents
    down
    up

; object id 1 (text 't0'): x=127, y=57, w=224, h=100, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="检测到打印时修改zoffset，是否保存？"
; text:
;   0: "检测到打印时修改zoffset，是否保存？"
;   1: "It is detected that zoffset is modified during printing. Do you want to save it?"
;   2: "印刷中に ZOFFSET が変更されたことが検出されました。保存しますか?"
;   3: "Es wurde festgestellt, dass ZOFFSET während des Druckens geändert wurde. Möchten Sie es speichern?"
;   4: "Se detecta que ZOFFSET se modifica durante la impresión ¿Quieres guardarlo?"
;   5: "Il est détecté que ZOFFSET est modifié lors de l'impression. Voulez-vous l'enregistrer ?"
;   6: "Foi detectado que ZOFFSET foi modificado durante a impressão. Deseja salvá-lo?"
;   7: "È stato rilevato che ZOFFSET è stato modificato durante la stampa. Vuoi salvarlo?"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x25339
; tim=1000, en=1

; timer
.org 0x25339
    if global_1c <= 0 then jump lbl_25395
    if global_20 <= 0 then jump lbl_25395
    global_20--
    if global_20 != 0 then jump lbl_25395
    dim = global_30

lbl_25395:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x253af

; touch_release
.org 0x253af
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x253e7
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
; 025621:  ff ff                                            |..|

; touch_release
.org 0x253e7
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x25451
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
; 025675:  ff ff                                            |..|

; touch_release
.org 0x25451
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (text 't1'): x=192, y=119, w=100, h=30, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=1, font=0, pco=0x0000, xcen=1, ycen=1, txt_maxl=10, isbr=0, bco=0xffff, txt="pass"

; data after the object structs, 520 bytes (12 trailing zero bytes dropped)
; 0256d9:  00 00 00 00 e6 a3 80 e6 b5 8b e5 88 b0 e6 89 93  |................|
; 0256e9:  e5 8d b0 e6 97 b6 e4 bf ae e6 94 b9 7a 6f 66 66  |............zoff|
; 0256f9:  73 65 74 ef bc 8c e6 98 af e5 90 a6 e4 bf 9d e5  |set.............|
; 025709:  ad 98 ef bc 9f 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 025719:  91 00 5e 00 46 00 26 00 d6 00 83 00 00 00 00 00  |..^.F.&.........|
; 025729:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 025739:  00 00 64 00 a8 ab 00 00 01 00 00 00 62 0e 00 00  |..d.........b...|
; 025749:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 025759:  00 00 00 00 e7 bb a7 e7 bb ad e6 89 93 e5 8d b0  |................|
; 025769:  00 00 00 00 fc 00 5d 00 46 00 26 00 41 01 82 00  |......].F.&.A...|
; 025779:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 025789:  ff ff 01 01 00 00 64 00 10 ac 00 00 01 00 00 00  |......d.........|
; 025799:  62 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0257a9:  00 00 00 00 00 00 00 00 00 00 00 00 e6 98 af 00  |................|
; 0257b9:  bb ad e6 8c a4 e5 87 ba 00 01 5d 00 00 00 00 00  |..........].....|
; 0257c9:  c5 01 82 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 0257d9:  25 00 ff ff ff ff 01 01 00 00 64 00 78 ac 00 00  |%.........d.x...|
; 0257e9:  01 00 00 00 62 11 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0257f9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 025809:  00 00 00 00 e6 98 af 00 00 00 00 00 fc 00 93 00  |................|
; 025819:  46 00 26 00 e5 90 a6 00 88 90 00 80 97 e6 9d 90  |F.&.............|
; 025829:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 025839:  e0 ac 00 00 01 00 00 00 62 13 00 00 00 00 00 00  |........b.......|
; 025849:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 025859:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 025869:  80 01 93 00 46 00 26 00 c5 01 b8 00 e5 90 a6 00  |....F.&.........|
; 025879:  00 00 00 00 00 00 24 00 25 00 ff ff 00 00 00 00  |......$.%.......|
; 025889:  00 00 64 00 48 ad 00 00 01 00 00 00 74 14 00 00  |..d.H.......t...|
; 025899:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0258a9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0258b9:  00 00 00 00 be 01 c2 00 0e 00 22 00 cb 01 e3 00  |..........".....|
; 0258c9:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 0258d9:  00 00 2c 01 70 61 73 73                          |..,.pass|
