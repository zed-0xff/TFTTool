; page 23 'if_change': 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa470, 0xa490, 0xa4e4

; object id 0 (page 'if_change'): x=0, y=0, w=480, h=272, name hash=0x55108463
; flags=0x37, aph=127, events: event_3=0x1f141
; sta=2, pic=4
; 01f378:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1f141
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x1f6cc
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_1f73c
    local_29e0 = "是否确认换料？"
    local_2a1e = "是"
    local_2a47 = "否"
    jmp lbl_1fa2e

lbl_1f73c:
    if global_14 != 1 then jump lbl_1f79e
    local_29e0 = "Confirm material change?"
    local_2a1e = "Yes"
    local_2a47 = "No"
    jmp lbl_1fa2e

lbl_1f79e:
    if global_14 != 2 then jump lbl_1f822
    local_29e0 = "マテリアルの変更を確認しますか？"
    local_2a1e = "はい"
    local_2a47 = "いいえ"
    jmp lbl_1fa2e

lbl_1f822:
    if global_14 != 3 then jump lbl_1f889
    local_29e0 = "Materialwechsel bestätigen?"
    local_2a1e = "Ja"
    local_2a47 = "NEIN"
    jmp lbl_1fa2e

lbl_1f889:
    if global_14 != 4 then jump lbl_1f8f2
    local_29e0 = "¿Confirmar cambio de material?"
    local_2a1e = "Sí"
    local_2a47 = "No"
    jmp lbl_1fa2e

lbl_1f8f2:
    if global_14 != 5 then jump lbl_1f963
    local_29e0 = "Confirmer le changement de matériau ?"
    local_2a1e = "Oui"
    local_2a47 = "Non"
    jmp lbl_1fa2e

lbl_1f963:
    if global_14 != 6 then jump lbl_1f9cd
    local_29e0 = "Confirmar a troca de material?"
    local_2a1e = "Sim"
    local_2a47 = "Não"
    jmp lbl_1fa2e

lbl_1f9cd:
    if global_14 != 7 then jump lbl_1fa2e
    local_29e0 = "Confermare il cambio di materiale?"
    local_2a1e = "SÌ"
    local_2a47 = "NO"

lbl_1fa2e:
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
; flags=0x27, events: timer=0x1f198
; tim=1000, en=1

; timer
.org 0x1f198
    if global_1c <= 0 then jump lbl_1f1f4
    if global_20 <= 0 then jump lbl_1f1f4
    global_20--
    if global_20 != 0 then jump lbl_1f1f4
    dim = global_30

lbl_1f1f4:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1f20e

; touch_release
.org 0x1f20e
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1f246
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
; 01f45c:  ff ff                                            |..|

; touch_release
.org 0x1f246
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x1f2b0
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
; 01f4b0:  ff ff                                            |..|

; touch_release
.org 0x1f2b0
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 516 bytes (4 trailing zero bytes dropped)
; 01f4c0:  00 00 00 00 e6 98 af e5 90 a6 e7 a1 ae e8 ae a4  |................|
; 01f4d0:  e6 8d a2 e6 96 99 ef bc 9f 00 00 00 62 0b 00 00  |............b...|
; 01f4e0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f4f0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01f500:  00 00 00 00 0d 00 5e 00 47 00 26 00 53 00 83 00  |......^.G.&.S...|
; 01f510:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 01f520:  ff ff 01 01 00 00 64 00 40 ab 00 00 01 00 00 00  |......d.@.......|
; 01f530:  62 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01f540:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f550:  00 00 7f 00 00 00 00 00 91 00 5e 00 46 00 26 00  |..........^.F.&.|
; 01f560:  d6 00 83 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 01f570:  25 00 ff ff ff ff 01 01 00 00 64 00 a8 ab 00 00  |%.........d.....|
; 01f580:  01 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01f590:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f5a0:  00 00 00 00 00 00 7f 00 00 00 00 00 fc 00 5d 00  |..............].|
; 01f5b0:  46 00 26 00 41 01 82 00 00 00 00 00 00 00 00 00  |F.&.A...........|
; 01f5c0:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 01f5d0:  10 ac 00 00 01 00 00 00 62 10 00 00 00 00 00 00  |........b.......|
; 01f5e0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f5f0:  00 00 00 00 e6 98 af 00 00 00 7f 00 00 00 00 00  |................|
; 01f600:  80 01 5d 00 46 00 26 00 c5 01 82 00 00 00 00 00  |..].F.&.........|
; 01f610:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 01f620:  00 00 64 00 78 ac 00 00 01 00 00 00 62 11 00 00  |..d.x.......b...|
; 01f630:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f640:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01f650:  00 00 00 00 fc 00 93 00 46 00 26 00 e5 90 a6 00  |........F.&.....|
; 01f660:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 01f670:  ff ff 01 01 00 00 64 00 e0 ac 00 00 01 00 00 00  |......d.........|
; 01f680:  62 13 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01f690:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f6a0:  00 00 7f 00 00 00 00 00 80 01 93 00 46 00 26 00  |............F.&.|
; 01f6b0:  c5 01 b8 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 01f6c0:  25 00 ff ff                                      |%...|
