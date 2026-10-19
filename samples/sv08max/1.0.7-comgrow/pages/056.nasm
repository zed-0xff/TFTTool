; page 56 'wifi_kb': 46 objects

; object address table, 46 objects, block loaded at 0xa3a4
.dd 0xa45c, 0xa49c, 0xa4f0, 0x2f84, 0xa544, 0xa598, 0xa5ec, 0x2fc0
.dd 0xa640, 0xa694, 0xa6e8, 0xa73c, 0xa790, 0xa7e4, 0xa838, 0xa88c
.dd 0xa8e0, 0xa934, 0xa988, 0xa9dc, 0xaa30, 0xaa84, 0xaad8, 0xab2c
.dd 0xab80, 0xabd4, 0xac28, 0xac7c, 0xacd0, 0xad24, 0xad78, 0xadcc
.dd 0xae20, 0xae74, 0xaec8, 0xaf1c, 0xaf70, 0xafc4, 0xaffc, 0xb034
.dd 0xb044, 0xb054, 0xb064, 0xb084, 0xb094, 0xb0b4

; object id 0 (page 'wifi_kb'): x=0, y=0, w=480, h=272, name hash=0x38eb94f5
; flags=0x37, aph=127, events: event_3=0x3a1e3
; sta=2, pic=61
; 03bc33:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3a1e3
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    down
    up

; load
.org 0x3cc53
    ref 42
    ref 44
    ref 45
    if global_14 != 0 then jump lbl_3ccb3
    local_524a = "连接"
    local_5273 = "取消"
    jmp lbl_3ceb3

lbl_3ccb3:
    if global_14 != 1 then jump lbl_3ccf9
    local_524a = "Connect"
    local_5273 = "Cancel"
    jmp lbl_3ceb3

lbl_3ccf9:
    if global_14 != 2 then jump lbl_3cd4d
    local_524a = "接続する"
    local_5273 = "キャンセル"
    jmp lbl_3ceb3

lbl_3cd4d:
    if global_14 != 3 then jump lbl_3cd99
    local_524a = "Verbinden"
    local_5273 = "Stornieren"
    jmp lbl_3ceb3

lbl_3cd99:
    if global_14 != 4 then jump lbl_3cde2
    local_524a = "Conectar"
    local_5273 = "Cancelar"
    jmp lbl_3ceb3

lbl_3cde2:
    if global_14 != 5 then jump lbl_3ce2c
    local_524a = "Connecter"
    local_5273 = "Cancelar"
    jmp lbl_3ceb3

lbl_3ce2c:
    if global_14 != 6 then jump lbl_3ce75
    local_524a = "Conectar"
    local_5273 = "Cancelar"
    jmp lbl_3ceb3

lbl_3ce75:
    if global_14 != 7 then jump lbl_3ceb3
    local_524a = "Collegare"
    local_5273 = "Annulla"

lbl_3ceb3:
    doevents
    down
    up

; object id 1 (text 't0'): x=158, y=13, w=172, h=33, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object id 2 (text 'show'): x=123, y=47, w=200, h=33, name hash=0x8c473f82
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; object id 259 (crop 'q0'): x=321, y=46, w=36, h=36, name hash=0x32aa1f99
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x3a25d
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b100'): x=108, y=96, w=128, h=38, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x3a2c7
; borderc=0x0000, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="连接"
; text:
;   0: "连接"
;   1: "Connect"
;   2: "接続する"
;   3: "Verbinden"
;   4: "Conectar"
;   5: "Connecter"
;   6: "Conectar"
;   7: "Collegare"
; 03bd2b:  ff ff                                            |..|

; touch_release
.org 0x3a2c7
    if local_5820 < 8 then jump lbl_3a307
    prints 0x70, 1
    prints global_10, 1
    prints local_5205, 0

lbl_3a307:
    down
    up

; object id 5 (button 'b101'): x=243, y=96, w=128, h=38, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x3a321
; borderc=0x0000, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="取消"
; text:
;   0: "取消"
;   1: "Cancel"
;   2: "キャンセル"
;   3: "Stornieren"
;   4: "Cancelar"
;   5: "Cancelar"
;   6: "Cancelar"
;   7: "Annulla"
; touch_release reports to the host: page <page>, widget 1
; 03bd7f:  ff ff                                            |..|

; touch_release
.org 0x3a321
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b0'): x=36, y=143, w=38, h=30, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x3a38b
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="q"
; text:
;   7: "Q"
; 03bdd3:  ff ff                                            |..|

; touch_release
.org 0x3a38b
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a3d6
    local_57f3 += local_529e
    local_5205 = local_57f3

lbl_3a3d6:
    prints 0x65, 1
    down
    up

; object id 263 (button 'b210'): x=385, y=240, w=59, h=29, name hash=0xd4e8fd4d
; borderc=0x39e7, picc=63, picc2=64, pco=0x0000, xcen=1, ycen=1, txt_maxl=8, isbr=0, txt=""

; touch_release
.org 0x3a3fe
    if local_5820 < 8 then jump lbl_3a43e
    prints 0x70, 1
    prints global_10, 1
    prints local_5205, 0

lbl_3a43e:
    down
    up

; object id 8 (button 'b1'): x=77, y=143, w=38, h=30, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x3a458
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="w"
; text:
;   7: "W"
; 03be27:  ff ff                                            |..|

; touch_release
.org 0x3a458
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a4a3
    local_57f3 += local_52f4
    local_5205 = local_57f3

lbl_3a4a3:
    prints 0x65, 1
    down
    up

; object id 9 (button 'b2'): x=118, y=143, w=38, h=30, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x3a4cb
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="e"
; text:
;   7: "E"
; 03be7b:  ff ff                                            |..|

; touch_release
.org 0x3a4cb
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a516
    local_57f3 += local_531f
    local_5205 = local_57f3

lbl_3a516:
    prints 0x65, 1
    down
    up

; object id 10 (button 'b3'): x=159, y=143, w=38, h=30, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x3a53e
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="r"
; text:
;   7: "R"
; 03becf:  ff ff                                            |..|

; touch_release
.org 0x3a53e
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a589
    local_57f3 += local_534a
    local_5205 = local_57f3

lbl_3a589:
    prints 0x65, 1
    down
    up

; object id 11 (button 'b4'): x=200, y=143, w=38, h=30, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x3a5b1
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="t"
; text:
;   7: "T"
; 03bf23:  ff ff                                            |..|

; touch_release
.org 0x3a5b1
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a5fc
    local_57f3 += local_5375
    local_5205 = local_57f3

lbl_3a5fc:
    prints 0x65, 1
    down
    up

; object id 12 (button 'b5'): x=241, y=143, w=38, h=30, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x3a624
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="y"
; text:
;   7: "Y"
; 03bf77:  ff ff                                            |..|

; touch_release
.org 0x3a624
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a66f
    local_57f3 += local_53a0
    local_5205 = local_57f3

lbl_3a66f:
    prints 0x65, 1
    down
    up

; object id 13 (button 'b6'): x=282, y=143, w=38, h=30, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x3a697
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="u"
; text:
;   7: "U"
; 03bfcb:  ff ff                                            |..|

; touch_release
.org 0x3a697
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a6e2
    local_57f3 += local_53cb
    local_5205 = local_57f3

lbl_3a6e2:
    prints 0x65, 1
    down
    up

; object id 14 (button 'b7'): x=323, y=143, w=38, h=30, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x3a70a
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="i"
; text:
;   7: "I"
; 03c01f:  ff ff                                            |..|

; touch_release
.org 0x3a70a
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a755
    local_57f3 += local_53f6
    local_5205 = local_57f3

lbl_3a755:
    prints 0x65, 1
    down
    up

; object id 15 (button 'b8'): x=364, y=143, w=38, h=30, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x3a77d
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="o"
; text:
;   7: "O"
; 03c073:  ff ff                                            |..|

; touch_release
.org 0x3a77d
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a7c8
    local_57f3 += local_5421
    local_5205 = local_57f3

lbl_3a7c8:
    prints 0x65, 1
    down
    up

; object id 16 (button 'b200'): x=397, y=207, w=45, h=30, name hash=0x58d0d5e5
; flags=0x37, aph=127, events: touch_release=0x3a7f0
; borderc=0x39e7, picc=63, picc2=64, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt=""
; 03c0c7:  ff ff                                            |..|

; touch_release
.org 0x3a7f0
    local_57f3 -= 1
    local_5205 = local_57f3
    prints 0x65, 1
    down
    up

; object id 17 (button 'b20'): x=56, y=175, w=38, h=30, name hash=0x89bf639
; flags=0x37, aph=127, events: touch_release=0x3a833
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="a"
; text:
;   7: "A"
; 03c11b:  ff ff                                            |..|

; touch_release
.org 0x3a833
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a87e
    local_57f3 += local_5477
    local_5205 = local_57f3

lbl_3a87e:
    prints 0x65, 1
    down
    up

; object id 18 (button 'b21'): x=97, y=175, w=38, h=30, name hash=0x84a3de91
; flags=0x37, aph=127, events: touch_release=0x3a8a6
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="s"
; text:
;   7: "S"
; 03c16f:  ff ff                                            |..|

; touch_release
.org 0x3a8a6
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a8f1
    local_57f3 += local_54a2
    local_5205 = local_57f3

lbl_3a8f1:
    prints 0x65, 1
    down
    up

; object id 19 (button 'b22'): x=138, y=175, w=38, h=30, name hash=0x142abade
; flags=0x37, aph=127, events: touch_release=0x3a919
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="d"
; text:
;   7: "D"
; 03c1c3:  ff ff                                            |..|

; touch_release
.org 0x3a919
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a964
    local_57f3 += local_54cd
    local_5205 = local_57f3

lbl_3a964:
    prints 0x65, 1
    down
    up

; object id 20 (button 'b23'): x=179, y=175, w=38, h=30, name hash=0x98129276
; flags=0x37, aph=127, events: touch_release=0x3a98c
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="f"
; text:
;   7: "F"
; 03c217:  ff ff                                            |..|

; touch_release
.org 0x3a98c
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3a9d7
    local_57f3 += local_54f8
    local_5205 = local_57f3

lbl_3a9d7:
    prints 0x65, 1
    down
    up

; object id 21 (button 'b24'): x=220, y=175, w=38, h=30, name hash=0x31f96ff7
; flags=0x37, aph=127, events: touch_release=0x3a9ff
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="g"
; text:
;   7: "G"
; 03c26b:  ff ff                                            |..|

; touch_release
.org 0x3a9ff
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3aa4a
    local_57f3 += local_5523
    local_5205 = local_57f3

lbl_3aa4a:
    prints 0x65, 1
    down
    up

; object id 22 (button 'b25'): x=261, y=175, w=38, h=30, name hash=0xbdc1475f
; flags=0x37, aph=127, events: touch_release=0x3aa72
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="h"
; text:
;   7: "H"
; 03c2bf:  ff ff                                            |..|

; touch_release
.org 0x3aa72
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3aabd
    local_57f3 += local_554e
    local_5205 = local_57f3

lbl_3aabd:
    prints 0x65, 1
    down
    up

; object id 23 (button 'b26'): x=302, y=175, w=38, h=30, name hash=0x2d482310
; flags=0x37, aph=127, events: touch_release=0x3aae5
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="j"
; text:
;   7: "J"
; 03c313:  ff ff                                            |..|

; touch_release
.org 0x3aae5
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3ab30
    local_57f3 += local_5579
    local_5205 = local_57f3

lbl_3ab30:
    prints 0x65, 1
    down
    up

; object id 24 (button 'b27'): x=343, y=175, w=38, h=30, name hash=0xa1700bb8
; flags=0x37, aph=127, events: touch_release=0x3ab58
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="k"
; text:
;   7: "K"
; 03c367:  ff ff                                            |..|

; touch_release
.org 0x3ab58
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3aba3
    local_57f3 += local_55a4
    local_5205 = local_57f3

lbl_3aba3:
    prints 0x65, 1
    down
    up

; object id 25 (button 'b28'): x=384, y=175, w=38, h=30, name hash=0x7a5ec5a5
; flags=0x37, aph=127, events: touch_release=0x3abcb
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="l"
; text:
;   7: "L"
; 03c3bb:  ff ff                                            |..|

; touch_release
.org 0x3abcb
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3ac16
    local_57f3 += local_55cf
    local_5205 = local_57f3

lbl_3ac16:
    prints 0x65, 1
    down
    up

; object id 26 (button 'b220'): x=36, y=207, w=45, h=30, name hash=0x44619902
; flags=0x37, aph=127, events: touch_release=0x3ac3e
; borderc=0x39e7, picc=63, picc2=64, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt=""
; text:
;   7: ""
; 03c40f:  ff ff                                            |..|

; touch_release
.org 0x3ac3e
    if local_55f3 != 63 then jump lbl_3ac98
    local_5752 = "&123"
    local_55f3 = 65
    local_55f4 = 66
    click refshow, 0
    jmp lbl_3ada5

lbl_3ac98:
    if local_55f3 != 65 then jump lbl_3acf2
    local_5752 = "&123"
    local_55f3 = 63
    local_55f4 = 64
    click refshow, 0
    jmp lbl_3ada5

lbl_3acf2:
    if local_55f3 != 61 then jump lbl_3ad51
    if local_55fa != "1/2" then jump lbl_3ad51
    local_55fa = "2/2"
    click reflashshow, 0
    jmp lbl_3ada5

lbl_3ad51:
    if local_55f3 != 61 then jump lbl_3ada5
    if local_55fa != "2/2" then jump lbl_3ada5
    local_55fa = "1/2"
    click reflashshow, 0

lbl_3ada5:
    prints 0x65, 1
    down
    up

; object id 27 (button 'b40'): x=97, y=207, w=38, h=30, name hash=0x3938b09e
; flags=0x37, aph=127, events: touch_release=0x3adcd
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="z"
; text:
;   7: "Z"
; 03c463:  ff ff                                            |..|

; touch_release
.org 0x3adcd
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3ae18
    local_57f3 += local_5625
    local_5205 = local_57f3

lbl_3ae18:
    prints 0x65, 1
    down
    up

; object id 28 (button 'b41'): x=138, y=207, w=38, h=30, name hash=0xb5009836
; flags=0x37, aph=127, events: touch_release=0x3ae40
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="x"
; text:
;   7: "X"
; 03c4b7:  ff ff                                            |..|

; touch_release
.org 0x3ae40
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3ae8b
    local_57f3 += local_5650
    local_5205 = local_57f3

lbl_3ae8b:
    prints 0x65, 1
    down
    up

; object id 29 (button 'b42'): x=179, y=207, w=38, h=30, name hash=0x2589fc79
; flags=0x37, aph=127, events: touch_release=0x3aeb3
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="c"
; text:
;   7: "C"
; 03c50b:  ff ff                                            |..|

; touch_release
.org 0x3aeb3
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3aefe
    local_57f3 += local_567b
    local_5205 = local_57f3

lbl_3aefe:
    prints 0x65, 1
    down
    up

; object id 30 (button 'b43'): x=220, y=207, w=38, h=30, name hash=0xa9b1d4d1
; flags=0x37, aph=127, events: touch_release=0x3af26
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="v"
; text:
;   7: "V"
; 03c55f:  ff ff                                            |..|

; touch_release
.org 0x3af26
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3af71
    local_57f3 += local_56a6
    local_5205 = local_57f3

lbl_3af71:
    prints 0x65, 1
    down
    up

; object id 31 (button 'b44'): x=261, y=207, w=38, h=30, name hash=0x5a2950
; flags=0x37, aph=127, events: touch_release=0x3af99
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="b"
; text:
;   7: "B"
; 03c5b3:  ff ff                                            |..|

; touch_release
.org 0x3af99
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3afe4
    local_57f3 += local_56d1
    local_5205 = local_57f3

lbl_3afe4:
    prints 0x65, 1
    down
    up

; object id 32 (button 'b45'): x=302, y=207, w=38, h=30, name hash=0x8c6201f8
; flags=0x37, aph=127, events: touch_release=0x3b00c
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="n"
; text:
;   7: "N"
; 03c607:  ff ff                                            |..|

; touch_release
.org 0x3b00c
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3b057
    local_57f3 += local_56fc
    local_5205 = local_57f3

lbl_3b057:
    prints 0x65, 1
    down
    up

; object id 33 (button 'b46'): x=343, y=207, w=38, h=30, name hash=0x1ceb65b7
; flags=0x37, aph=127, events: touch_release=0x3b07f
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="m"
; text:
;   7: "M"
; 03c65b:  ff ff                                            |..|

; touch_release
.org 0x3b07f
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3b0ca
    local_57f3 += local_5727
    local_5205 = local_57f3

lbl_3b0ca:
    prints 0x65, 1
    down
    up

; object id 34 (button 'b240'): x=36, y=240, w=62, h=29, name hash=0x61b24c2b
; flags=0x37, aph=127, events: touch_release=0x3b0f2
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=6, isbr=0, txt="&123"
; text:
;   7: "&123"
; 03c6af:  ff ff                                            |..|

; touch_release
.org 0x3b0f2
    if local_5752 != "&123" then jump lbl_3b162
    local_5752 = "abc"
    local_55f3 = 61
    local_55f4 = 62
    local_55fa = "1/2"
    click reflashshow, 0
    T 0x5e

lbl_3b162:
    if local_5752 != "abc" then jump lbl_3b1c0
    local_5752 = "&123"
    local_55f3 = 63
    local_55f4 = 64
    local_55fa = ""
    click refshow, 0

lbl_3b1c0:
    prints 0x65, 1
    down
    up

; object id 35 (button 'b242'): x=100, y=239, w=282, h=30, name hash=0xe5d5e126
; flags=0x37, aph=127, events: touch_release=0x3b1e8
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=6, isbr=0, txt="space"
; 03c703:  ff ff                                            |..|

; touch_release
.org 0x3b1e8
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3b231
    local_57f3 += " "
    local_5205 = local_57f3

lbl_3b231:
    prints 0x65, 1
    down
    up

; object id 36 (button 'b9'): x=405, y=143, w=38, h=30, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x3b259
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="p"
; text:
;   7: "P"
; 03c757:  ff ff                                            |..|

; touch_release
.org 0x3b259
    btlen local_57f3, local_57ff
    if local_57ff >= local_580a then jump lbl_3b2a4
    local_57f3 += local_57a8
    local_5205 = local_57f3

lbl_3b2a4:
    prints 0x65, 1
    down
    up

; object id 37 (hotspot 'reflashshow'): x=-52, y=85, w=31, h=17, name hash=0xed6953c8
; flags=0x37, aph=0, events: touch_release=0x3b2cc

; touch_release
.org 0x3b2cc
    if local_55fa != "1/2" then jump lbl_3b44b
    local_529e = "1"
    local_52f4 = "2"
    local_531f = "3"
    local_534a = "4"
    local_5375 = "5"
    local_53a0 = "6"
    local_53cb = "7"
    local_53f6 = "8"
    local_5421 = "9"
    local_57a8 = "0"
    local_5477 = "@"
    local_54a2 = "#"
    local_54cd = "%"
    local_54f8 = "&"
    local_5523 = "*"
    local_554e = "-"
    local_5579 = "+"
    local_55a4 = "("
    local_55cf = ")"
    local_5625 = "“"
    local_5650 = "”"
    local_567b = "。"
    local_56a6 = ","
    local_56d1 = "、"
    local_56fc = "!"
    local_5727 = "."
    jmp lbl_3b5cd

lbl_3b44b:
    if local_55fa != "2/2" then jump lbl_3b5cd
    local_529e = "~"
    local_52f4 = "|"
    local_531f = "$"
    local_534a = "¥"
    local_5375 = ">"
    local_53a0 = "‘"
    local_53cb = "’"
    local_53f6 = "?"
    local_5421 = "£"
    local_57a8 = "`"
    local_5477 = "..."
    local_54a2 = "/"
    local_54cd = "\\"
    local_54f8 = "{"
    local_5523 = "}"
    local_554e = "="
    local_5579 = "×"
    local_55a4 = "÷"
    local_55cf = "√￣"
    local_5625 = "^"
    local_5650 = "_"
    local_567b = "€"
    local_56a6 = "《"
    local_56d1 = "》"
    local_56fc = "["
    local_5727 = "]"

lbl_3b5cd:
    down
    up

; object id 38 (hotspot 'refshow'): x=-52, y=44, w=31, h=17, name hash=0x653285e6
; flags=0x37, aph=0, events: touch_release=0x3b5e7

; touch_release
.org 0x3b5e7
    if local_55f3 != 63 then jump lbl_3b772
    if local_55fa != "" then jump lbl_3b772
    local_529e = "q"
    local_52f4 = "w"
    local_531f = "e"
    local_534a = "r"
    local_5375 = "t"
    local_53a0 = "y"
    local_53cb = "u"
    local_53f6 = "i"
    local_5421 = "o"
    local_57a8 = "p"
    local_5477 = "a"
    local_54a2 = "s"
    local_54cd = "d"
    local_54f8 = "f"
    local_5523 = "g"
    local_554e = "h"
    local_5579 = "j"
    local_55a4 = "k"
    local_55cf = "l"
    local_5625 = "z"
    local_5650 = "x"
    local_567b = "c"
    local_56a6 = "v"
    local_56d1 = "b"
    local_56fc = "n"
    local_5727 = "m"
    jmp lbl_3b8f2

lbl_3b772:
    if local_55f3 != 65 then jump lbl_3b8f2
    if local_55fa != "" then jump lbl_3b8f2
    local_529e = "Q"
    local_52f4 = "W"
    local_531f = "E"
    local_534a = "R"
    local_5375 = "T"
    local_53a0 = "Y"
    local_53cb = "U"
    local_53f6 = "I"
    local_5421 = "O"
    local_57a8 = "P"
    local_5477 = "A"
    local_54a2 = "S"
    local_54cd = "D"
    local_54f8 = "F"
    local_5523 = "G"
    local_554e = "H"
    local_5579 = "J"
    local_55a4 = "K"
    local_55cf = "L"
    local_5625 = "Z"
    local_5650 = "X"
    local_567b = "C"
    local_56a6 = "V"
    local_56d1 = "B"
    local_56fc = "N"
    local_5727 = "M"

lbl_3b8f2:
    timer

; object id 39 (variable 'input'): x=0, y=0, w=1, h=1, name hash=0x94c6a60d
; sta=1, val=0
; 03c7d7:  34 27 00 07                                      |4'..|
; 03c7dc:  00 1e 00 88 b4 00 00                             |.......|

; object id 40 (variable 'temp'): x=0, y=0, w=1, h=1, name hash=0xf6182fd8
; sta=0, val=0
; 03c7e7:  34 28 00 07                                      |4(..|

; object id 41 (variable 'inputlenth'): x=0, y=0, w=1, h=1, name hash=0x18d4148b
; sta=0, val=30
; 03c7f7:  34 29 00 07                                      |4)..|

; object id 42 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27, events: timer=0x3b90f
; tim=50, en=1

; timer
.org 0x3b90f
    btlen local_5205, local_5820
    if local_5820 < 8 then jump lbl_3b964
    local_52c2 = local_51bb+2
    local_52c3 = local_51bb+3
    jmp lbl_3b982

lbl_3b964:
    local_52c2 = local_51bb
    local_52c3 = local_51bb

lbl_3b982:
    timer

; object id 43 (variable 'va0'): x=0, y=0, w=1, h=1, name hash=0xcbcbac4e
; sta=0, val=0
; 03c827:  34 2b 00 07                                      |4+..|

; object id 44 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x3b997
; tim=1000, en=1

; timer
.org 0x3b997
    if global_1c <= 0 then jump lbl_3b9f3
    if global_20 <= 0 then jump lbl_3b9f3
    global_20--
    if global_20 != 0 then jump lbl_3b9f3
    dim = global_30

lbl_3b9f3:
    down
    up

; object id 45 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3ba0d

; touch_release
.org 0x3ba0d
    global_20 = global_18
    dims = global_2c

; data after the object structs, 975 bytes (9 trailing zero bytes dropped)
; 03c877:  00 00 00 00 5a 43 53 57 31 32 2d 32 2e 34 47 00  |....ZCSW12-2.4G.|
; 03c887:  00 00 10 00 10 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 03c897:  a4 d2 00 00 01 00 00 00 62 2b 00 00 00 00 00 00  |........b+......|
; 03c8a7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03c8b7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03c8c7:  9f 01 a2 00 1c 00 1c 00 ba 01 bd 00 00 00 00 00  |................|
; 03c8d7:  00 00 00 00 00 00 10 00 10 00 ff ff 74 69 6d 65  |............time|
; 03c8e7:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 03c8f7:  31 31 34 33 2e 6a 70 67 00 00 00 00 00 00 00 00  |1143.jpg........|
; 03c907:  00 00 00 00 00 00 00 00 e8 03 01 00 05 2d 00 00  |.............-..|
; 03c917:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03c927:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03c937:  00 00 00 00 e6 8c a4 e5 e5 b1 8f e5 b9 95 e4 ba  |................|
; 03c947:  ae e5 ba a6 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03c957:  97 01 d5 00 45 00 36 00 db 01 0a 01 00 00 00 00  |....E.6.........|
; 03c967:  00 00 00 00 00 00 16 00 18 00 ff ff ff ff 01 01  |................|
; 03c977:  00 00 64 00 84 55 00 00 01 00 00 00 00 02 01 00  |..d..U..........|
; 03c987:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03c997:  00 00 00 00 00 00 00 00 32 68 34 6d 00 00 00 00  |........2h4m....|
; 03c9a7:  00 00 00 00 00 00 32 00 0f 01 c8 00 82 01 f9 00  |......2.........|
; 03c9b7:  00 00 00 00 03 01 02 00 00 00 00 00 00 00 00 00  |................|
; 03c9c7:  00 00 1a db bf 07 00 00 00 00 00 00 4e 00 00 00  |............N...|
; 03c9d7:  e0 02 00 00 c0 a0 00 00 71 07 01 00 00 00 00 00  |........q.......|
; 03c9e7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03c9f7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03ca07:  a2 01 05 00 2d 00 1e 00 ce 01 22 00 00 00 00 00  |....-.....".....|
; 03ca17:  15 00 00 00 74 0a 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 03ca27:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03ca37:  00 00 00 00 00 00 7f 00 00 00 00 00 9b 01 a6 00  |................|
; 03ca47:  21 00 1e 00 bb 01 c3 00 00 00 00 00 03 00 00 00  |!...............|
; 03ca57:  00 02 00 00 bf 07 02 01 00 00 2c 01 ec 55 00 00  |..........,..U..|
; 03ca67:  01 00 00 00 00 00 00 00 00 0b 01 00 00 00 00 00  |................|
; 03ca77:  00 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 03ca87:  30 32 34 30 33 31 34 5f 31 31 34 33 2e 6d 70 34  |0240314_1143.mp4|
; 03ca97:  00 01 5a 00 21 00 1e 00 ba 01 77 00 00 00 00 00  |..Z.!.....w.....|
; 03caa7:  03 00 00 00 00 02 00 00 1a db 02 01 00 00 2c 01  |..............,.|
; 03cab7:  1c 57 00 00 01 00 00 00 00 00 00 00 74 0c 01 00  |.W..........t...|
; 03cac7:  00 00 00 00 00 00 00 00 34 6d 00 00 00 00 00 00  |........4m......|
; 03cad7:  00 00 00 00 e8 bf 9e e6 8e a5 00 00 00 00 7f 00  |................|
; 03cae7:  00 00 00 00 bb 01 5a 00 21 00 1e 00 db 01 77 00  |......Z.!.....w.|
; 03caf7:  00 00 00 00 03 00 00 00 00 02 00 00 1a db 00 01  |................|
; 03cb07:  00 00 2c 01 4c 58 00 00 01 00 00 00 00 00 00 00  |..,.LX..........|
; 03cb17:  74 0d 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 03cb27:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03cb37:  00 00 7f 00 00 00 00 00 00 01 a6 00 e5 8f 96 e6  |................|
; 03cb47:  b6 88 00 00 00 00 00 00 03 00 00 00 00 02 00 00  |................|
; 03cb57:  bf 07 00 01 00 00 2c 01 7c 59 00 00 01 00 00 00  |......,.|Y......|
; 03cb67:  00 00 00 00 62 09 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 03cb77:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03cb87:  00 00 00 00 00 00 7f 00 00 00 00 00 bb 01 d6 00  |................|
; 03cb97:  24 00 35 00 de 01 0a 01 00 00 00 00 00 00 00 00  |$.5.............|
; 03cba7:  35 e5 88 86 71 00 9f 00 77 00 01 01 65 00 64 00  |5...q...w...e.d.|
; 03cbb7:  72 00 00 00 74 00 00 00 79 00 01 00 75 00 00 00  |r...t...y...u...|
; 03cbc7:  69 00 00 00 6f 00 00 00 00 00 00 00 61 00 00 00  |i...o.......a...|
; 03cbd7:  73 00 00 00 64 00 00 00 66 00 7f 00 67 00 00 00  |s...d...f...g...|
; 03cbe7:  68 00 a0 00 6a 00 35 00 6b 00 d4 00 6c 00 00 00  |h...j.5.k...l...|
; 03cbf7:  00 00 00 00 7a 00 1e 00 78 00 87 e4 63 00 e5 90  |....z...x...c...|
; 03cc07:  76 00 64 00 62 00 00 00 6e 00 e5 88 6d 00 92 9f  |v.d.b...n...m...|
; 03cc17:  26 31 32 33 00 00 00 00 73 70 61 63 65 00 00 00  |&123....space...|
; 03cc27:  70 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |p...............|
; 03cc37:  00 00 00 00 bc 01 2e 00 24 00 35 00 df 01 62     |........$.5...b|
