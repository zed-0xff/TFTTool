; page 23 'if_change': 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba1c, 0xba3c, 0xba90

; object id 0 (page 'if_change'): x=0, y=0, w=480, h=272, name hash=0x55108463
; flags=0x37, aph=127, events: event_3=0x20f9a
; sta=2, pic=4
; 0211d1:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x20f9a
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x21525
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_21595
    local_2b50 = "是否确认换料？"
    local_2b8e = "是"
    local_2bb7 = "否"
    jmp lbl_21887

lbl_21595:
    if global_14 != 1 then jump lbl_215f7
    local_2b50 = "Confirm material change?"
    local_2b8e = "Yes"
    local_2bb7 = "No"
    jmp lbl_21887

lbl_215f7:
    if global_14 != 2 then jump lbl_2167b
    local_2b50 = "マテリアルの変更を確認しますか？"
    local_2b8e = "はい"
    local_2bb7 = "いいえ"
    jmp lbl_21887

lbl_2167b:
    if global_14 != 3 then jump lbl_216e2
    local_2b50 = "Materialwechsel bestätigen?"
    local_2b8e = "Ja"
    local_2bb7 = "NEIN"
    jmp lbl_21887

lbl_216e2:
    if global_14 != 4 then jump lbl_2174b
    local_2b50 = "¿Confirmar cambio de material?"
    local_2b8e = "Sí"
    local_2bb7 = "No"
    jmp lbl_21887

lbl_2174b:
    if global_14 != 5 then jump lbl_217bc
    local_2b50 = "Confirmer le changement de matériau ?"
    local_2b8e = "Oui"
    local_2bb7 = "Non"
    jmp lbl_21887

lbl_217bc:
    if global_14 != 6 then jump lbl_21826
    local_2b50 = "Confirmar a troca de material?"
    local_2b8e = "Sim"
    local_2bb7 = "Não"
    jmp lbl_21887

lbl_21826:
    if global_14 != 7 then jump lbl_21887
    local_2b50 = "Confermare il cambio di materiale?"
    local_2b8e = "SÌ"
    local_2bb7 = "NO"

lbl_21887:
    doevents
    down
    up

; object id 1 (text 't0'): x=131, y=55, w=224, h=102, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="是否确认换料？"
; text:
;   0: "是否确认换料？"
;   1: "Confirm material change?"
;   2: "マテリアルの変更を確認しますか？"
;   3: "Materialwechsel bestätigen?"
;   4: "¿Confirmar cambio de material?"
;   5: "Confirmer le changement de matériau ?"
;   6: "Confirmar a troca de material?"
;   7: "Confermare il cambio di materiale?"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x20ff1
; tim=1000, en=1

; timer
.org 0x20ff1
    if global_1c <= 0 then jump lbl_2104d
    if global_20 <= 0 then jump lbl_2104d
    global_20--
    if global_20 != 0 then jump lbl_2104d
    dim = global_30

lbl_2104d:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x21067

; touch_release
.org 0x21067
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2109f
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
; 0212b5:  ff ff                                            |..|

; touch_release
.org 0x2109f
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x21109
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
; 021309:  ff ff                                            |..|

; touch_release
.org 0x21109
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 494 bytes (26 trailing zero bytes dropped)
; 021319:  00 00 00 00 e6 98 af e5 90 a6 e7 a1 ae e8 ae a4  |................|
; 021329:  e6 8d a2 e6 96 99 ef bc 9f 00 00 00 00 00 00 00  |................|
; 021339:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 021349:  91 00 5e 00 46 00 26 00 d6 00 83 00 00 00 00 00  |..^.F.&.........|
; 021359:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 021369:  00 00 64 00 14 bf 00 00 01 00 00 00 62 0d 00 00  |..d.........b...|
; 021379:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 021389:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 021399:  00 00 00 00 fc 00 5d 00 46 00 26 00 41 01 82 00  |......].F.&.A...|
; 0213a9:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 0213b9:  ff ff 01 01 00 00 64 00 7c bf 00 00 01 00 00 00  |......d.|.......|
; 0213c9:  62 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0213d9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0213e9:  00 00 7f 00 00 00 00 00 80 01 5d 00 46 00 26 00  |..........].F.&.|
; 0213f9:  c5 01 82 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 021409:  25 00 ff ff ff ff 01 01 00 00 64 00 e4 bf 00 00  |%.........d.....|
; 021419:  01 00 00 00 62 10 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 021429:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 021439:  00 00 00 00 00 00 7f 00 00 00 00 00 fc 00 93 00  |................|
; 021449:  46 00 26 00 e6 98 af 00 00 00 00 00 00 00 00 00  |F.&.............|
; 021459:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 021469:  4c c0 00 00 01 00 00 00 62 12 00 00 00 00 00 00  |L.......b.......|
; 021479:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 021489:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 021499:  80 01 93 00 46 00 26 00 c5 01 b8 00 00 00 00 00  |....F.&.........|
; 0214a9:  00 00 00 00 00 00 24 00 25 00 ff ff e5 90 a6 00  |......$.%.......|
; 0214b9:  00 00 64 00 b4 c0 00 00 01 00 00 00 33 13 00 00  |..d.........3...|
; 0214c9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0214d9:  00 00 00 00 00 00 00 00 64 00 01 00 34 14 00 00  |........d...4...|
; 0214e9:  00 00 00 00 00 00 00 00 00 00 00 00 34 15 00 00  |............4...|
; 0214f9:  00 00 00 00 00 00 00 00 00 00 00 00 33 16        |............3.|
