; page 49 'language': 19 objects

; object address table, 19 objects, block loaded at 0xb950
.dd 0xb99c, 0xb9dc, 0xba30, 0xba84, 0xbad8, 0xbb2c, 0xbb80, 0xbbd4
.dd 0x26d8, 0x272c, 0x2780, 0x27d4, 0x2828, 0x287c, 0xbc28, 0x28d0
.dd 0x2924, 0xbc7c, 0xbc9c

; object id 0 (page 'language'): x=0, y=0, w=480, h=272, name hash=0x76d84b7c
; flags=0x37, aph=127, events: event_3=0x34b68
; sta=2, pic=50
; 035317:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x34b68
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x3594f
    ref 17
    ref 18
    local_473c = local_45d6
    local_4713 = local_45d6
    local_4765 = local_45d6
    local_478e = local_45d6
    local_47b7 = local_45d6
    local_47e0 = local_45d6
    local_4832 = local_45d6
    local_485b = local_45d6
    if global_14 != 0 then jump lbl_35a0b
    local_473c = local_45d6+1
    jmp lbl_35b5e

lbl_35a0b:
    if global_14 != 1 then jump lbl_35a3d
    local_4713 = local_45d6+1
    jmp lbl_35b5e

lbl_35a3d:
    if global_14 != 2 then jump lbl_35a6f
    local_4765 = local_45d6+1
    jmp lbl_35b5e

lbl_35a6f:
    if global_14 != 3 then jump lbl_35aa1
    local_478e = local_45d6+1
    jmp lbl_35b5e

lbl_35aa1:
    if global_14 != 4 then jump lbl_35ad3
    local_47b7 = local_45d6+1
    jmp lbl_35b5e

lbl_35ad3:
    if global_14 != 5 then jump lbl_35b05
    local_47e0 = local_45d6+1
    jmp lbl_35b5e

lbl_35b05:
    if global_14 != 6 then jump lbl_35b37
    local_4832 = local_45d6+1
    jmp lbl_35b5e

lbl_35b37:
    if global_14 != 7 then jump lbl_35b5e
    local_485b = local_45d6+1

lbl_35b5e:
    if global_14 != 0 then jump lbl_35bbb
    local_469f = "系统"
    local_46c8 = "网络"
    local_46f1 = "调平校准"
    jmp lbl_35e95

lbl_35bbb:
    if global_14 != 1 then jump lbl_35c1c
    local_469f = "System"
    local_46c8 = "Network"
    local_46f1 = "Level Calibrate"
    jmp lbl_35e95

lbl_35c1c:
    if global_14 != 2 then jump lbl_35c8b
    local_469f = "システム"
    local_46c8 = "通信網"
    local_46f1 = "水平調整と校正"
    jmp lbl_35e95

lbl_35c8b:
    if global_14 != 3 then jump lbl_35cf8
    local_469f = "System"
    local_46c8 = "Netzwerk"
    local_46f1 = "Nivellierung\rKalibrierung"
    jmp lbl_35e95

lbl_35cf8:
    if global_14 != 4 then jump lbl_35d62
    local_469f = "Sistema"
    local_46c8 = "Red"
    local_46f1 = "Nivelación y\rcalibración"
    jmp lbl_35e95

lbl_35d62:
    if global_14 != 5 then jump lbl_35dce
    local_469f = "Système"
    local_46c8 = "Réseau"
    local_46f1 = "Nivellement\rétalonnage"
    jmp lbl_35e95

lbl_35dce:
    if global_14 != 6 then jump lbl_35e37
    local_469f = "Sistema"
    local_46c8 = "Rede"
    local_46f1 = "Nivelamento\rCalibração"
    T 0x5e

lbl_35e37:
    if global_14 != 7 then jump lbl_35e95
    local_469f = "Sistema"
    local_46c8 = "Rete"
    local_46f1 = "Calibrazione\rdel livello"

lbl_35e95:
    if global_14 != 0 then jump lbl_35ec8
    local_4810 = "返回"
    jmp lbl_3602d

lbl_35ec8:
    if global_14 != 1 then jump lbl_35efb
    local_4810 = "Return"
    jmp lbl_3602d

lbl_35efb:
    if global_14 != 2 then jump lbl_35f2e
    local_4810 = "戻る"
    jmp lbl_3602d

lbl_35f2e:
    if global_14 != 3 then jump lbl_35f64
    local_4810 = "Rückkehr"
    jmp lbl_3602d

lbl_35f64:
    if global_14 != 4 then jump lbl_35f99
    local_4810 = "Devolver"
    jmp lbl_3602d

lbl_35f99:
    if global_14 != 5 then jump lbl_35fcf
    local_4810 = "Retourner"
    T 0x5e

lbl_35fcf:
    if global_14 != 6 then jump lbl_36004
    local_4810 = "Retornar"
    jmp lbl_3602d

lbl_36004:
    if global_14 != 7 then jump lbl_3602d
    local_4810 = "Ritorno"

lbl_3602d:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x34bae
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 035367:  ff ff                                            |..|

; touch_release
.org 0x34bae
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x34c1a
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 0353bb:  ff ff                                            |..|

; touch_release
.org 0x34c1a
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x34c86
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 03540f:  ff ff                                            |..|

; touch_release
.org 0x34c86
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x34cf2
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 035463:  ff ff                                            |..|

; touch_release
.org 0x34cf2
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b9'): x=67, y=7, w=208, h=34, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x34d5e
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
; 0354b7:  ff ff                                            |..|

; touch_release
.org 0x34d5e
    prints 0x65, 1
    prints dp, 1
    prints 130, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b10'): x=270, y=7, w=198, h=34, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x34dca
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
; 03550b:  ff ff                                            |..|

; touch_release
.org 0x34dca
    prints 0x65, 1
    prints dp, 1
    prints 131, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b11'): x=466, y=0, w=14, h=6, name hash=0x1e12f319
; flags=0x37, aph=0, events: touch_release=0x34e36
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
; 03555f:  ff ff                                            |..|

; touch_release
.org 0x34e36
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
.org 0x34ea2
    prints 0x65, 1
    global_14 = 1
    wepo global_14, 100
    page dp
    down
    up

; object id 265 (button 'b0'): x=200, y=172, w=108, h=37, name hash=0xce1a7436
; borderc=0x0000, picc=50, picc2=50, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="中文"

; touch_release
.org 0x34ef1
    prints 0x65, 1
    global_14 = 0
    wepo global_14, 100
    page dp
    down
    up

; object id 266 (button 'b2'): x=314, y=66, w=108, h=37, name hash=0x22c442c6
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="日本語"

; touch_release
.org 0x34f40
    prints 0x65, 1
    global_14 = 2
    wepo global_14, 100
    page dp
    down
    up

; object id 267 (button 'b3'): x=86, y=119, w=108, h=37, name hash=0x54ab59be
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Deutsch"

; touch_release
.org 0x34f8f
    prints 0x65, 1
    global_14 = 3
    wepo global_14, 100
    page dp
    down
    up

; object id 268 (button 'b4'): x=200, y=119, w=108, h=37, name hash=0x13670461
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Español"

; touch_release
.org 0x34fde
    prints 0x65, 1
    global_14 = 4
    wepo global_14, 100
    page dp
    down
    up

; object id 269 (button 'b5'): x=314, y=119, w=108, h=37, name hash=0x65081f19
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Français"

; touch_release
.org 0x3502d
    prints 0x65, 1
    global_14 = 5
    wepo global_14, 100
    page dp
    down
    up

; object id 14 (button 'b6'): x=388, y=214, w=71, h=34, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x3507c
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
; 0355b3:  ff ff                                            |..|

; touch_release
.org 0x3507c
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints global_14, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 271 (button 'b7'): x=86, y=172, w=108, h=37, name hash=0x89d629e9
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Português"

; touch_release
.org 0x350f4
    prints 0x65, 1
    global_14 = 6
    wepo global_14, 100
    page dp
    down
    up

; object id 272 (button 'b8'): x=200, y=66, w=108, h=37, name hash=0x7021892f
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Italiano"

; touch_release
.org 0x35143
    prints 0x65, 1
    global_14 = 7
    wepo global_14, 100
    page dp
    timer

; object id 17 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x35189
; tim=1000, en=1

; timer
.org 0x35189
    if global_1c <= 0 then jump lbl_351e5
    if global_20 <= 0 then jump lbl_351e5
    global_20--
    if global_20 != 0 then jump lbl_351e5
    dim = global_30

lbl_351e5:
    down
    up

; object id 18 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x351ff

; touch_release
.org 0x351ff
    global_20 = global_18
    dims = global_2c

; data after the object structs, 836 bytes (4 trailing zero bytes dropped)
; 035603:  00 00 00 00 00 00 30 00 31 00 ff ff ff ff 01 01  |......0.1.......|
; 035613:  00 00 64 00 50 c3 00 00 01 00 00 00 74 0a 00 00  |..d.P.......t...|
; 035623:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035633:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 035643:  00 00 00 00 58 00 31 00 5c 00 2c 00 b3 00 5c 00  |....X.1.\.,...\.|
; 035653:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 035663:  00 00 2c 01 b8 c3 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 035673:  74 0b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 035683:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035693:  00 00 7f 00 00 00 00 00 58 00 b5 00 38 01 24 00  |........X...8.$.|
; 0356a3:  8f 01 d8 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 0356b3:  ff ff 00 01 00 00 2c 01 e8 c4 00 00 01 00 00 00  |......,.........|
; 0356c3:  00 00 00 00 74 0c 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 0356d3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0356e3:  00 00 00 00 00 00 7f 00 00 00 00 00 5a 01 34 00  |............Z.4.|
; 0356f3:  5c 00 24 00 b5 01 57 00 00 00 00 00 03 00 00 00  |\.$...W.........|
; 035703:  00 00 00 00 ff ff 02 01 00 00 2c 01 18 c6 00 00  |..........,.....|
; 035713:  01 00 00 00 00 00 00 00 62 0d 00 00 00 00 00 00  |........b.......|
; 035723:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035733:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 035743:  53 00 e0 00 78 01 2c 00 ca 01 0b 01 00 00 00 00  |S...x.,.........|
; 035753:  00 00 00 00 00 00 31 00 31 00 ff ff ff ff 01 01  |......1.1.......|
; 035763:  00 00 64 00 48 c7 00 00 01 00 00 00 74 0e 00 00  |..d.H.......t...|
; 035773:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035783:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 035793:  00 00 00 00 58 00 df 00 5e 00 24 00 b5 00 02 01  |....X...^.$.....|
; 0357a3:  00 00 00 00 e7 b3 bb e7 bb 9f 00 00 ff ff 00 01  |................|
; 0357b3:  00 00 2c 01 b0 c7 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 0357c3:  33 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |3...............|
; 0357d3:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 0357e3:  05 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0357f3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035803:  62 11 00 00 00 00 00 00 00 00 00 00 e7 bd 91 e7  |b...............|
; 035813:  bb 9c 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035823:  00 00 7f 00 00 00 00 00 52 00 5b 00 77 01 2c 00  |........R.[.w.,.|
; 035833:  c8 01 86 00 00 00 00 00 00 00 00 00 00 00 31 00  |..............1.|
; 035843:  31 00 ff ff ff ff 01 01 00 00 64 00 e0 c8 00 00  |1.........d.....|
; 035853:  01 00 00 00 74 12 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 035863:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035873:  00 00 00 00 e8 b0 83 e5 b9 b3 e6 a0 a1 e5 87 86  |................|
; 035883:  00 00 24 00 d5 00 82 00 00 00 00 00 03 00 00 00  |..$.............|
; 035893:  00 00 00 00 ff ff 00 01 00 00 2c 01 48 c9 00 00  |..........,.H...|
; 0358a3:  01 00 00 00 00 00 00 00 62 13 00 00 00 00 00 00  |........b.......|
; 0358b3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0358c3:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0358d3:  51 00 86 00 77 01 2c 00 c7 01 b1 00 e8 bf 94 e5  |Q...w.,.........|
; 0358e3:  9b 9e 00 00 00 00 31 00 31 00 ff ff ff ff 01 01  |......1.1.......|
; 0358f3:  00 00 64 00 78 ca 00 00 01 00 00 00 74 14 00 00  |..d.x.......t...|
; 035903:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 035913:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 035923:  00 00 00 00 58 00 8a 00 7e 00 24 00 d5 00 ad 00  |....X...~.$.....|
; 035933:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 035943:  00 00 2c 01                                      |..,.|
