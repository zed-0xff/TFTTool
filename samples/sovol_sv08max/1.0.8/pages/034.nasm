; page 34 'if_save': 7 objects

; object address table, 7 objects, block loaded at 0xb950
.dd 0xb96c, 0xb9ac, 0xba00, 0xba20, 0xba40, 0xba94, 0xbae8

; object id 0 (page 'if_save'): x=0, y=0, w=480, h=272, name hash=0xc75ad700
; flags=0x37, aph=127, events: event_3=0x27054
; sta=2, pic=4
; 0272af:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x27054
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x27663
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_276d1
    local_3112 = "检测到打印时修改zoffset，是否保存？"
    jmp lbl_27a5d

lbl_276d1:
    if global_14 != 1 then jump lbl_2774e
    local_3112 = "It is detected that zoffset is modified during printing. Do you want to save it?"
    jmp lbl_27a5d

lbl_2774e:
    if global_14 != 2 then jump lbl_277d6
    local_3112 = "印刷中に ZOFFSET が変更されたことが検出されました。保存しますか?"
    jmp lbl_27a5d

lbl_277d6:
    if global_14 != 3 then jump lbl_27868
    local_3112 = "Es wurde festgestellt, dass ZOFFSET während des Druckens geändert wurde. Möchten Sie es speichern?"
    jmp lbl_27a5d

lbl_27868:
    if global_14 != 4 then jump lbl_278e2
    local_3112 = "Se detecta que ZOFFSET se modifica durante la impresión ¿Quieres guardarlo?"
    jmp lbl_27a5d

lbl_278e2:
    if global_14 != 5 then jump lbl_2796b
    local_3112 = "Il est détecté que ZOFFSET est modifié lors de l'impression. Voulez-vous l'enregistrer ?"
    jmp lbl_27a5d

lbl_2796b:
    if global_14 != 6 then jump lbl_279e8
    local_3112 = "Foi detectado que ZOFFSET foi modificado durante a impressão. Deseja salvá-lo?"
    jmp lbl_27a5d

lbl_279e8:
    if global_14 != 7 then jump lbl_27a5d
    local_3112 = "È stato rilevato che ZOFFSET è stato modificato durante la stampa. Vuoi salvarlo?"

lbl_27a5d:
    if global_14 != 0 then jump lbl_27a9c
    local_3150 = "是"
    local_3179 = "否"
    jmp lbl_27c51

lbl_27a9c:
    if global_14 != 1 then jump lbl_27ada
    local_3150 = "Yes"
    local_3179 = "No"
    jmp lbl_27c51

lbl_27ada:
    if global_14 != 2 then jump lbl_27b22
    local_3150 = "はい"
    local_3179 = "いいえ"
    T 0x12f

lbl_27b22:
    if global_14 != 3 then jump lbl_27b61
    local_3150 = "Ja"
    local_3179 = "NEIN"
    jmp lbl_27c51

lbl_27b61:
    if global_14 != 4 then jump lbl_27b9f
    local_3150 = "Sí"
    local_3179 = "No"
    jmp lbl_27c51

lbl_27b9f:
    if global_14 != 5 then jump lbl_27bde
    local_3150 = "Oui"
    local_3179 = "Non"
    jmp lbl_27c51

lbl_27bde:
    if global_14 != 6 then jump lbl_27c1e
    local_3150 = "Sim"
    local_3179 = "Não"
    jmp lbl_27c51

lbl_27c1e:
    if global_14 != 7 then jump lbl_27c51
    local_3150 = "SÌ"
    local_3179 = "NO"

lbl_27c51:
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
; flags=0x27, events: timer=0x270ab
; tim=1000, en=1

; timer
.org 0x270ab
    if global_1c <= 0 then jump lbl_27107
    if global_20 <= 0 then jump lbl_27107
    global_20--
    if global_20 != 0 then jump lbl_27107
    dim = global_30

lbl_27107:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x27121

; touch_release
.org 0x27121
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x27159
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
; 027393:  ff ff                                            |..|

; touch_release
.org 0x27159
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x271c3
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
; 0273e7:  ff ff                                            |..|

; touch_release
.org 0x271c3
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
; 02744b:  00 00 00 00 e6 a3 80 e6 b5 8b e5 88 b0 e6 89 93  |................|
; 02745b:  e5 8d b0 e6 97 b6 e4 bf ae e6 94 b9 7a 6f 66 66  |............zoff|
; 02746b:  73 65 74 ef bc 8c e6 98 af e5 90 a6 e4 bf 9d e5  |set.............|
; 02747b:  ad 98 ef bc 9f 00 82 00 00 00 00 00 00 00 00 00  |................|
; 02748b:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 02749b:  7c bf 00 00 01 00 00 00 62 0f 00 00 00 00 00 00  ||.......b.......|
; 0274ab:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0274bb:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0274cb:  80 01 5d 00 e7 bb a7 e7 bb ad e6 89 93 e5 8d b0  |..].............|
; 0274db:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 0274eb:  00 00 64 00 e4 bf 00 00 01 00 00 00 62 10 00 00  |..d.........b...|
; 0274fb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02750b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02751b:  00 00 00 00 fc 00 93 00 46 00 26 00 e6 98 af 00  |........F.&.....|
; 02752b:  bb ad e6 8c a4 e5 87 ba 00 00 24 00 00 00 00 00  |..........$.....|
; 02753b:  ff ff 01 01 00 00 64 00 4c c0 00 00 01 00 00 00  |......d.L.......|
; 02754b:  62 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02755b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02756b:  00 00 7f 00 00 00 00 00 80 01 93 00 46 00 26 00  |............F.&.|
; 02757b:  c5 01 b8 00 e6 98 af 00 00 00 00 00 00 00 24 00  |..............$.|
; 02758b:  25 00 ff ff e5 90 a6 00 88 90 00 00 b4 c0 00 00  |%...............|
; 02759b:  01 00 00 00 33 13 00 00 00 00 00 00 00 00 00 00  |....3...........|
; 0275ab:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0275bb:  64 00 01 00 34 14 00 00 00 00 00 00 00 00 00 00  |d...4...........|
; 0275cb:  00 00 00 00 34 15 00 00 00 00 00 00 00 00 00 00  |....4...........|
; 0275db:  00 00 00 00 33 16 00 00 00 00 00 00 e5 90 a6 00  |....3...........|
; 0275eb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0275fb:  e8 03 01 00 05 17 00 00 00 00 00 00 00 00 00 00  |................|
; 02760b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02761b:  00 00 00 00 00 00 00 00 e5 be ae e8 b0 83 00 00  |................|
; 02762b:  ff ff 00 01 00 00 2c 01 bc c3 00 00 01 00 00 00  |......,.........|
; 02763b:  00 00 00 00 62 0f 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02764b:  00 00 00 00 70 61 73 73                          |....pass|
