; page 49 'language': 19 objects

; object address table, 19 objects, block loaded at 0xa3a4
.dd 0xa3f0, 0xa430, 0xa484, 0xa4d8, 0xa52c, 0xa580, 0xa5d4, 0xa628
.dd 0x262c, 0x2680, 0x26d4, 0x2728, 0x277c, 0x27d0, 0xa67c, 0x2824
.dd 0x2878, 0xa6d0, 0xa6f0

; object id 0 (page 'language'): x=0, y=0, w=480, h=272, name hash=0x76d84b7c
; flags=0x37, aph=127, events: event_3=0x347fb
; sta=2, pic=50
; 034f9c:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x347fb
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x355d4
    ref 17
    ref 18
    local_488b = local_4725
    local_4862 = local_4725
    local_48b4 = local_4725
    local_48dd = local_4725
    local_4906 = local_4725
    local_492f = local_4725
    local_4981 = local_4725
    local_49aa = local_4725
    if global_14 != 0 then jump lbl_35690
    local_488b = local_4725+1
    jmp lbl_357e3

lbl_35690:
    if global_14 != 1 then jump lbl_356c2
    local_4862 = local_4725+1
    jmp lbl_357e3

lbl_356c2:
    if global_14 != 2 then jump lbl_356f4
    local_48b4 = local_4725+1
    jmp lbl_357e3

lbl_356f4:
    if global_14 != 3 then jump lbl_35726
    local_48dd = local_4725+1
    jmp lbl_357e3

lbl_35726:
    if global_14 != 4 then jump lbl_35758
    local_4906 = local_4725+1
    jmp lbl_357e3

lbl_35758:
    if global_14 != 5 then jump lbl_3578a
    local_492f = local_4725+1
    jmp lbl_357e3

lbl_3578a:
    if global_14 != 6 then jump lbl_357bc
    local_4981 = local_4725+1
    jmp lbl_357e3

lbl_357bc:
    if global_14 != 7 then jump lbl_357e3
    local_49aa = local_4725+1

lbl_357e3:
    if global_14 != 0 then jump lbl_35840
    local_47ee = "系统"
    local_4817 = "网络"
    local_4840 = "调平校准"
    jmp lbl_35b1a

lbl_35840:
    if global_14 != 1 then jump lbl_358a1
    local_47ee = "System"
    local_4817 = "Network"
    local_4840 = "Level Calibrate"
    jmp lbl_35b1a

lbl_358a1:
    if global_14 != 2 then jump lbl_35910
    local_47ee = "システム"
    local_4817 = "通信網"
    local_4840 = "水平調整と校正"
    jmp lbl_35b1a

lbl_35910:
    if global_14 != 3 then jump lbl_3597d
    local_47ee = "System"
    local_4817 = "Netzwerk"
    local_4840 = "Nivellierung\rKalibrierung"
    jmp lbl_35b1a

lbl_3597d:
    if global_14 != 4 then jump lbl_359e7
    local_47ee = "Sistema"
    local_4817 = "Red"
    local_4840 = "Nivelación y\rcalibración"
    jmp lbl_35b1a

lbl_359e7:
    if global_14 != 5 then jump lbl_35a53
    local_47ee = "Système"
    local_4817 = "Réseau"
    local_4840 = "Nivellement\rétalonnage"
    jmp lbl_35b1a

lbl_35a53:
    if global_14 != 6 then jump lbl_35abc
    local_47ee = "Sistema"
    local_4817 = "Rede"
    local_4840 = "Nivelamento\rCalibração"
    T 0x5e

lbl_35abc:
    if global_14 != 7 then jump lbl_35b1a
    local_47ee = "Sistema"
    local_4817 = "Rete"
    local_4840 = "Calibrazione\rdel livello"

lbl_35b1a:
    if global_14 != 0 then jump lbl_35b4d
    local_495f = "返回"
    jmp lbl_35cb2

lbl_35b4d:
    if global_14 != 1 then jump lbl_35b80
    local_495f = "Return"
    jmp lbl_35cb2

lbl_35b80:
    if global_14 != 2 then jump lbl_35bb3
    local_495f = "戻る"
    jmp lbl_35cb2

lbl_35bb3:
    if global_14 != 3 then jump lbl_35be9
    local_495f = "Rückkehr"
    jmp lbl_35cb2

lbl_35be9:
    if global_14 != 4 then jump lbl_35c1e
    local_495f = "Devolver"
    jmp lbl_35cb2

lbl_35c1e:
    if global_14 != 5 then jump lbl_35c54
    local_495f = "Retourner"
    T 0x5e

lbl_35c54:
    if global_14 != 6 then jump lbl_35c89
    local_495f = "Retornar"
    jmp lbl_35cb2

lbl_35c89:
    if global_14 != 7 then jump lbl_35cb2
    local_495f = "Ritorno"

lbl_35cb2:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x34841
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 034fec:  ff ff                                            |..|

; touch_release
.org 0x34841
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x348ad
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 035040:  ff ff                                            |..|

; touch_release
.org 0x348ad
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x34919
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 035094:  ff ff                                            |..|

; touch_release
.org 0x34919
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x34985
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 0350e8:  ff ff                                            |..|

; touch_release
.org 0x34985
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b9'): x=67, y=7, w=134, h=34, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x349f1
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="系统"
; text:
;   0: "系统"
;   1: "System"
;   2: "システム"
;   3: "System"
;   4: "Sistema"
;   5: "Système"
;   6: "Sistema"
;   7: "Sistema"
; touch_release reports to the host: page <page>, widget 130
; 03513c:  ff ff                                            |..|

; touch_release
.org 0x349f1
    prints 0x65, 1
    prints dp, 1
    prints 130, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b10'): x=201, y=7, w=134, h=34, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x34a5d
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="网络"
; text:
;   0: "网络"
;   1: "Network"
;   2: "通信網"
;   3: "Netzwerk"
;   4: "Red"
;   5: "Réseau"
;   6: "Rede"
;   7: "Rete"
; touch_release reports to the host: page <page>, widget 131
; 035190:  ff ff                                            |..|

; touch_release
.org 0x34a5d
    prints 0x65, 1
    prints dp, 1
    prints 131, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b11'): x=335, y=7, w=134, h=34, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x34ac9
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="调平校准"
; text:
;   0: "调平校准"
;   1: "Level Calibrate"
;   2: "水平調整と校正"
;   3: "Nivellierung\rKalibrierung"
;   4: "Nivelación y\rcalibración"
;   5: "Nivellement\rétalonnage"
;   6: "Nivelamento\rCalibração"
;   7: "Calibrazione\rdel livello"
; touch_release reports to the host: page <page>, widget 132
; 0351e4:  ff ff                                            |..|

; touch_release
.org 0x34ac9
    prints 0x65, 1
    prints dp, 1
    prints 132, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 264 (button 'b1'): x=86, y=66, w=108, h=37, name hash=0xb8756f4e
; borderc=0x0000, picc=51, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="English"

; touch_release
.org 0x34b35
    prints 0x65, 1
    global_14 = 1
    wepo global_14, 100
    page dp
    down
    up

; object id 265 (button 'b0'): x=200, y=172, w=108, h=37, name hash=0xce1a7436
; borderc=0x0000, picc=50, picc2=50, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="中文"

; touch_release
.org 0x34b84
    prints 0x65, 1
    global_14 = 0
    wepo global_14, 100
    page dp
    down
    up

; object id 266 (button 'b2'): x=314, y=66, w=108, h=37, name hash=0x22c442c6
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="日本語"

; touch_release
.org 0x34bd3
    prints 0x65, 1
    global_14 = 2
    wepo global_14, 100
    page dp
    down
    up

; object id 267 (button 'b3'): x=86, y=119, w=108, h=37, name hash=0x54ab59be
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Deutsch"

; touch_release
.org 0x34c22
    prints 0x65, 1
    global_14 = 3
    wepo global_14, 100
    page dp
    down
    up

; object id 268 (button 'b4'): x=200, y=119, w=108, h=37, name hash=0x13670461
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Español"

; touch_release
.org 0x34c71
    prints 0x65, 1
    global_14 = 4
    wepo global_14, 100
    page dp
    down
    up

; object id 269 (button 'b5'): x=314, y=119, w=108, h=37, name hash=0x65081f19
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Français"

; touch_release
.org 0x34cc0
    prints 0x65, 1
    global_14 = 5
    wepo global_14, 100
    page dp
    down
    up

; object id 14 (button 'b6'): x=388, y=214, w=71, h=34, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x34d0f
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="返回"
; text:
;   0: "返回"
;   1: "Return"
;   2: "戻る"
;   3: "Rückkehr"
;   4: "Devolver"
;   5: "Retourner"
;   6: "Retornar"
;   7: "Ritorno"
; touch_release reports to the host: page <page>, widget 6
; 035238:  ff ff                                            |..|

; touch_release
.org 0x34d0f
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 271 (button 'b7'): x=86, y=172, w=108, h=37, name hash=0x89d629e9
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Português"

; touch_release
.org 0x34d79
    prints 0x65, 1
    global_14 = 6
    wepo global_14, 100
    page dp
    down
    up

; object id 272 (button 'b8'): x=200, y=66, w=108, h=37, name hash=0x7021892f
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Italiano"

; touch_release
.org 0x34dc8
    prints 0x65, 1
    global_14 = 7
    wepo global_14, 100
    page dp
    timer

; object id 17 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x34e0e
; tim=1000, en=1

; timer
.org 0x34e0e
    if global_1c <= 0 then jump lbl_34e6a
    if global_20 <= 0 then jump lbl_34e6a
    global_20--
    if global_20 != 0 then jump lbl_34e6a
    dim = global_30

lbl_34e6a:
    down
    up

; object id 18 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x34e84

; touch_release
.org 0x34e84
    global_20 = global_18
    dims = global_2c

; data after the object structs, 818 bytes (22 trailing zero bytes dropped)
; 035288:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 035298:  52 01 07 00 86 00 22 00 d7 01 28 00 00 00 00 00  |R....."...(.....|
; 0352a8:  00 00 00 00 00 00 30 00 31 00 ff ff ff ff 01 01  |......0.1.......|
; 0352b8:  00 00 64 00 64 b0 00 00 01 00 00 00 62 0a 00 00  |..d.d.......b...|
; 0352c8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0352d8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0352e8:  00 00 00 00 b7 00 38 00 31 00 1d 00 00 00 54 00  |......8.1.....T.|
; 0352f8:  00 00 00 00 00 00 00 00 00 00 31 00 31 00 ff ff  |..........1.1...|
; 035308:  ff ff 01 01 00 00 64 00 cc b0 00 00 01 00 00 00  |......d.........|
; 035318:  62 0b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 035328:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035338:  00 00 7f 00 00 00 00 00 f0 00 38 00 31 00 1d 00  |..........8.1...|
; 035348:  20 01 54 00 00 00 00 00 00 00 00 00 00 00 30 00  | .T...........0.|
; 035358:  31 00 ff ff 00 ff 01 01 00 00 64 00 34 b1 00 00  |1.........d.4...|
; 035368:  01 00 00 00 74 0c 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 035378:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035388:  00 00 00 00 00 00 7f 00 00 00 00 00 58 00 2f 00  |............X./.|
; 035398:  5c 00 2c 00 b3 00 5a 00 00 00 00 00 03 00 00 00  |\.,...Z.........|
; 0353a8:  00 00 00 00 ff ff 00 01 00 00 2c 01 9c b1 00 00  |..........,.....|
; 0353b8:  01 00 00 00 00 00 00 00 62 0d 00 00 00 00 00 00  |........b.......|
; 0353c8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0353d8:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0353e8:  27 01 38 00 31 00 1d 00 57 01 54 00 00 00 00 00  |'.8.1...W.T.....|
; 0353f8:  00 00 00 00 00 00 30 00 31 00 ff ff ff ff 01 01  |......0.1.......|
; 035408:  00 00 64 00 cc b2 00 00 01 00 00 00 62 0e 00 00  |..d.........b...|
; 035418:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035428:  00 00 00 00 e7 b3 bb e7 bb 9f 00 00 00 00 7f 00  |................|
; 035438:  00 00 00 00 60 01 38 00 31 00 1d 00 90 01 54 00  |....`.8.1.....T.|
; 035448:  00 00 00 00 00 00 00 00 00 00 30 00 31 00 ff ff  |..........0.1...|
; 035458:  ff ff 01 01 00 00 64 00 34 b3 00 00 01 00 00 00  |......d.4.......|
; 035468:  62 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 035478:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035488:  00 00 7f 00 00 00 00 00 97 01 38 00 e7 bd 91 e7  |..........8.....|
; 035498:  bb 9c 00 00 00 00 00 00 00 00 00 00 00 00 30 00  |..............0.|
; 0354a8:  31 00 ff ff ff ff 01 01 00 00 64 00 9c b3 00 00  |1.........d.....|
; 0354b8:  01 00 00 00 62 10 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0354c8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0354d8:  00 00 00 00 00 00 7f 00 00 00 00 00 b7 00 64 00  |..............d.|
; 0354e8:  31 00 1d 00 e7 00 80 00 00 00 00 00 00 00 00 00  |1...............|
; 0354f8:  00 00 31 00 e8 b0 83 e5 b9 b3 e6 a0 a1 e5 87 86  |..1.............|
; 035508:  00 b4 00 00 01 00 00 00 62 11 00 00 00 00 00 00  |........b.......|
; 035518:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035528:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 035538:  f0 00 64 00 31 00 1d 00 20 01 80 00 00 00 00 00  |..d.1... .......|
; 035548:  00 00 00 00 00 00 30 00 31 00 ff ff ff ff 01 01  |......0.1.......|
; 035558:  00 00 64 00 6c b4 00 00 01 00 00 00 e8 bf 94 e5  |..d.l...........|
; 035568:  9b 9e 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035578:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 035588:  00 00 00 00 27 01 64 00 31 00 1d 00 57 01 80 00  |....'.d.1...W...|
; 035598:  00 00 00 00 00 00 00 00 00 00 30 00 31 00 ff ff  |..........0.1...|
; 0355a8:  ff ff 01 01 00 00 64 00 d4 b4 00 00 01 00 00 00  |......d.........|
; 0355b8:  62 13                                            |b.|
