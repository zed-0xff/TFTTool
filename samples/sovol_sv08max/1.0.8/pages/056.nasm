; page 56 'wifi_kb': 46 objects

; object address table, 46 objects, block loaded at 0xb950
.dd 0xba08, 0xba48, 0xba9c, 0x3030, 0xbaf0, 0xbb44, 0xbb98, 0x306c
.dd 0xbbec, 0xbc40, 0xbc94, 0xbce8, 0xbd3c, 0xbd90, 0xbde4, 0xbe38
.dd 0xbe8c, 0xbee0, 0xbf34, 0xbf88, 0xbfdc, 0xc030, 0xc084, 0xc0d8
.dd 0xc12c, 0xc180, 0xc1d4, 0xc228, 0xc27c, 0xc2d0, 0xc324, 0xc378
.dd 0xc3cc, 0xc420, 0xc474, 0xc4c8, 0xc51c, 0xc570, 0xc5a8, 0xc5e0
.dd 0xc5f0, 0xc600, 0xc610, 0xc630, 0xc640, 0xc660

; object id 0 (page 'wifi_kb'): x=0, y=0, w=480, h=272, name hash=0x38eb94f5
; flags=0x37, aph=127, events: event_3=0x3ad5a
; sta=2, pic=61
; 03c7aa:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3ad5a
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
.org 0x3d7ca
    ref 42
    ref 44
    ref 45
    if global_14 != 0 then jump lbl_3d82a
    local_51c0 = "连接"
    local_51e9 = "取消"
    jmp lbl_3da2a

lbl_3d82a:
    if global_14 != 1 then jump lbl_3d870
    local_51c0 = "Connect"
    local_51e9 = "Cancel"
    jmp lbl_3da2a

lbl_3d870:
    if global_14 != 2 then jump lbl_3d8c4
    local_51c0 = "接続する"
    local_51e9 = "キャンセル"
    jmp lbl_3da2a

lbl_3d8c4:
    if global_14 != 3 then jump lbl_3d910
    local_51c0 = "Verbinden"
    local_51e9 = "Stornieren"
    jmp lbl_3da2a

lbl_3d910:
    if global_14 != 4 then jump lbl_3d959
    local_51c0 = "Conectar"
    local_51e9 = "Cancelar"
    jmp lbl_3da2a

lbl_3d959:
    if global_14 != 5 then jump lbl_3d9a3
    local_51c0 = "Connecter"
    local_51e9 = "Cancelar"
    jmp lbl_3da2a

lbl_3d9a3:
    if global_14 != 6 then jump lbl_3d9ec
    local_51c0 = "Conectar"
    local_51e9 = "Cancelar"
    jmp lbl_3da2a

lbl_3d9ec:
    if global_14 != 7 then jump lbl_3da2a
    local_51c0 = "Collegare"
    local_51e9 = "Annulla"

lbl_3da2a:
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
.org 0x3add4
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b100'): x=244, y=94, w=128, h=38, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x3ae3e
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
; 03c8a2:  ff ff                                            |..|

; touch_release
.org 0x3ae3e
    if local_5796 < 8 then jump lbl_3ae7e
    prints 0x70, 1
    prints global_10, 1
    prints local_517b, 0

lbl_3ae7e:
    down
    up

; object id 5 (button 'b101'): x=108, y=94, w=128, h=38, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x3ae98
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
; 03c8f6:  ff ff                                            |..|

; touch_release
.org 0x3ae98
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b0'): x=36, y=143, w=38, h=30, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x3af02
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="q"
; text:
;   7: "Q"
; 03c94a:  ff ff                                            |..|

; touch_release
.org 0x3af02
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3af4d
    local_5769 += local_5214
    local_517b = local_5769

lbl_3af4d:
    prints 0x65, 1
    down
    up

; object id 263 (button 'b210'): x=385, y=240, w=59, h=29, name hash=0xd4e8fd4d
; borderc=0x39e7, picc=63, picc2=64, pco=0x0000, xcen=1, ycen=1, txt_maxl=8, isbr=0, txt=""

; touch_release
.org 0x3af75
    if local_5796 < 8 then jump lbl_3afb5
    prints 0x70, 1
    prints global_10, 1
    prints local_517b, 0

lbl_3afb5:
    down
    up

; object id 8 (button 'b1'): x=77, y=143, w=38, h=30, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x3afcf
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="w"
; text:
;   7: "W"
; 03c99e:  ff ff                                            |..|

; touch_release
.org 0x3afcf
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b01a
    local_5769 += local_526a
    local_517b = local_5769

lbl_3b01a:
    prints 0x65, 1
    down
    up

; object id 9 (button 'b2'): x=118, y=143, w=38, h=30, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x3b042
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="e"
; text:
;   7: "E"
; 03c9f2:  ff ff                                            |..|

; touch_release
.org 0x3b042
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b08d
    local_5769 += local_5295
    local_517b = local_5769

lbl_3b08d:
    prints 0x65, 1
    down
    up

; object id 10 (button 'b3'): x=159, y=143, w=38, h=30, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x3b0b5
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="r"
; text:
;   7: "R"
; 03ca46:  ff ff                                            |..|

; touch_release
.org 0x3b0b5
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b100
    local_5769 += local_52c0
    local_517b = local_5769

lbl_3b100:
    prints 0x65, 1
    down
    up

; object id 11 (button 'b4'): x=200, y=143, w=38, h=30, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x3b128
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="t"
; text:
;   7: "T"
; 03ca9a:  ff ff                                            |..|

; touch_release
.org 0x3b128
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b173
    local_5769 += local_52eb
    local_517b = local_5769

lbl_3b173:
    prints 0x65, 1
    down
    up

; object id 12 (button 'b5'): x=241, y=143, w=38, h=30, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x3b19b
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="y"
; text:
;   7: "Y"
; 03caee:  ff ff                                            |..|

; touch_release
.org 0x3b19b
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b1e6
    local_5769 += local_5316
    local_517b = local_5769

lbl_3b1e6:
    prints 0x65, 1
    down
    up

; object id 13 (button 'b6'): x=282, y=143, w=38, h=30, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x3b20e
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="u"
; text:
;   7: "U"
; 03cb42:  ff ff                                            |..|

; touch_release
.org 0x3b20e
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b259
    local_5769 += local_5341
    local_517b = local_5769

lbl_3b259:
    prints 0x65, 1
    down
    up

; object id 14 (button 'b7'): x=323, y=143, w=38, h=30, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x3b281
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="i"
; text:
;   7: "I"
; 03cb96:  ff ff                                            |..|

; touch_release
.org 0x3b281
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b2cc
    local_5769 += local_536c
    local_517b = local_5769

lbl_3b2cc:
    prints 0x65, 1
    down
    up

; object id 15 (button 'b8'): x=364, y=143, w=38, h=30, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x3b2f4
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="o"
; text:
;   7: "O"
; 03cbea:  ff ff                                            |..|

; touch_release
.org 0x3b2f4
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b33f
    local_5769 += local_5397
    local_517b = local_5769

lbl_3b33f:
    prints 0x65, 1
    down
    up

; object id 16 (button 'b200'): x=397, y=207, w=45, h=30, name hash=0x58d0d5e5
; flags=0x37, aph=127, events: touch_release=0x3b367
; borderc=0x39e7, picc=63, picc2=64, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt=""
; 03cc3e:  ff ff                                            |..|

; touch_release
.org 0x3b367
    local_5769 -= 1
    local_517b = local_5769
    prints 0x65, 1
    down
    up

; object id 17 (button 'b20'): x=56, y=175, w=38, h=30, name hash=0x89bf639
; flags=0x37, aph=127, events: touch_release=0x3b3aa
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="a"
; text:
;   7: "A"
; 03cc92:  ff ff                                            |..|

; touch_release
.org 0x3b3aa
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b3f5
    local_5769 += local_53ed
    local_517b = local_5769

lbl_3b3f5:
    prints 0x65, 1
    down
    up

; object id 18 (button 'b21'): x=97, y=175, w=38, h=30, name hash=0x84a3de91
; flags=0x37, aph=127, events: touch_release=0x3b41d
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="s"
; text:
;   7: "S"
; 03cce6:  ff ff                                            |..|

; touch_release
.org 0x3b41d
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b468
    local_5769 += local_5418
    local_517b = local_5769

lbl_3b468:
    prints 0x65, 1
    down
    up

; object id 19 (button 'b22'): x=138, y=175, w=38, h=30, name hash=0x142abade
; flags=0x37, aph=127, events: touch_release=0x3b490
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="d"
; text:
;   7: "D"
; 03cd3a:  ff ff                                            |..|

; touch_release
.org 0x3b490
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b4db
    local_5769 += local_5443
    local_517b = local_5769

lbl_3b4db:
    prints 0x65, 1
    down
    up

; object id 20 (button 'b23'): x=179, y=175, w=38, h=30, name hash=0x98129276
; flags=0x37, aph=127, events: touch_release=0x3b503
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="f"
; text:
;   7: "F"
; 03cd8e:  ff ff                                            |..|

; touch_release
.org 0x3b503
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b54e
    local_5769 += local_546e
    local_517b = local_5769

lbl_3b54e:
    prints 0x65, 1
    down
    up

; object id 21 (button 'b24'): x=220, y=175, w=38, h=30, name hash=0x31f96ff7
; flags=0x37, aph=127, events: touch_release=0x3b576
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="g"
; text:
;   7: "G"
; 03cde2:  ff ff                                            |..|

; touch_release
.org 0x3b576
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b5c1
    local_5769 += local_5499
    local_517b = local_5769

lbl_3b5c1:
    prints 0x65, 1
    down
    up

; object id 22 (button 'b25'): x=261, y=175, w=38, h=30, name hash=0xbdc1475f
; flags=0x37, aph=127, events: touch_release=0x3b5e9
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="h"
; text:
;   7: "H"
; 03ce36:  ff ff                                            |..|

; touch_release
.org 0x3b5e9
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b634
    local_5769 += local_54c4
    local_517b = local_5769

lbl_3b634:
    prints 0x65, 1
    down
    up

; object id 23 (button 'b26'): x=302, y=175, w=38, h=30, name hash=0x2d482310
; flags=0x37, aph=127, events: touch_release=0x3b65c
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="j"
; text:
;   7: "J"
; 03ce8a:  ff ff                                            |..|

; touch_release
.org 0x3b65c
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b6a7
    local_5769 += local_54ef
    local_517b = local_5769

lbl_3b6a7:
    prints 0x65, 1
    down
    up

; object id 24 (button 'b27'): x=343, y=175, w=38, h=30, name hash=0xa1700bb8
; flags=0x37, aph=127, events: touch_release=0x3b6cf
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="k"
; text:
;   7: "K"
; 03cede:  ff ff                                            |..|

; touch_release
.org 0x3b6cf
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b71a
    local_5769 += local_551a
    local_517b = local_5769

lbl_3b71a:
    prints 0x65, 1
    down
    up

; object id 25 (button 'b28'): x=384, y=175, w=38, h=30, name hash=0x7a5ec5a5
; flags=0x37, aph=127, events: touch_release=0x3b742
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="l"
; text:
;   7: "L"
; 03cf32:  ff ff                                            |..|

; touch_release
.org 0x3b742
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b78d
    local_5769 += local_5545
    local_517b = local_5769

lbl_3b78d:
    prints 0x65, 1
    down
    up

; object id 26 (button 'b220'): x=36, y=207, w=45, h=30, name hash=0x44619902
; flags=0x37, aph=127, events: touch_release=0x3b7b5
; borderc=0x39e7, picc=63, picc2=64, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt=""
; text:
;   7: ""
; 03cf86:  ff ff                                            |..|

; touch_release
.org 0x3b7b5
    if local_5569 != 63 then jump lbl_3b80f
    local_56c8 = "&123"
    local_5569 = 65
    local_556a = 66
    click refshow, 0
    jmp lbl_3b91c

lbl_3b80f:
    if local_5569 != 65 then jump lbl_3b869
    local_56c8 = "&123"
    local_5569 = 63
    local_556a = 64
    click refshow, 0
    jmp lbl_3b91c

lbl_3b869:
    if local_5569 != 61 then jump lbl_3b8c8
    if local_5570 != "1/2" then jump lbl_3b8c8
    local_5570 = "2/2"
    click reflashshow, 0
    jmp lbl_3b91c

lbl_3b8c8:
    if local_5569 != 61 then jump lbl_3b91c
    if local_5570 != "2/2" then jump lbl_3b91c
    local_5570 = "1/2"
    click reflashshow, 0

lbl_3b91c:
    prints 0x65, 1
    down
    up

; object id 27 (button 'b40'): x=97, y=207, w=38, h=30, name hash=0x3938b09e
; flags=0x37, aph=127, events: touch_release=0x3b944
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="z"
; text:
;   7: "Z"
; 03cfda:  ff ff                                            |..|

; touch_release
.org 0x3b944
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3b98f
    local_5769 += local_559b
    local_517b = local_5769

lbl_3b98f:
    prints 0x65, 1
    down
    up

; object id 28 (button 'b41'): x=138, y=207, w=38, h=30, name hash=0xb5009836
; flags=0x37, aph=127, events: touch_release=0x3b9b7
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="x"
; text:
;   7: "X"
; 03d02e:  ff ff                                            |..|

; touch_release
.org 0x3b9b7
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3ba02
    local_5769 += local_55c6
    local_517b = local_5769

lbl_3ba02:
    prints 0x65, 1
    down
    up

; object id 29 (button 'b42'): x=179, y=207, w=38, h=30, name hash=0x2589fc79
; flags=0x37, aph=127, events: touch_release=0x3ba2a
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="c"
; text:
;   7: "C"
; 03d082:  ff ff                                            |..|

; touch_release
.org 0x3ba2a
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3ba75
    local_5769 += local_55f1
    local_517b = local_5769

lbl_3ba75:
    prints 0x65, 1
    down
    up

; object id 30 (button 'b43'): x=220, y=207, w=38, h=30, name hash=0xa9b1d4d1
; flags=0x37, aph=127, events: touch_release=0x3ba9d
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="v"
; text:
;   7: "V"
; 03d0d6:  ff ff                                            |..|

; touch_release
.org 0x3ba9d
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3bae8
    local_5769 += local_561c
    local_517b = local_5769

lbl_3bae8:
    prints 0x65, 1
    down
    up

; object id 31 (button 'b44'): x=261, y=207, w=38, h=30, name hash=0x5a2950
; flags=0x37, aph=127, events: touch_release=0x3bb10
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="b"
; text:
;   7: "B"
; 03d12a:  ff ff                                            |..|

; touch_release
.org 0x3bb10
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3bb5b
    local_5769 += local_5647
    local_517b = local_5769

lbl_3bb5b:
    prints 0x65, 1
    down
    up

; object id 32 (button 'b45'): x=302, y=207, w=38, h=30, name hash=0x8c6201f8
; flags=0x37, aph=127, events: touch_release=0x3bb83
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="n"
; text:
;   7: "N"
; 03d17e:  ff ff                                            |..|

; touch_release
.org 0x3bb83
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3bbce
    local_5769 += local_5672
    local_517b = local_5769

lbl_3bbce:
    prints 0x65, 1
    down
    up

; object id 33 (button 'b46'): x=343, y=207, w=38, h=30, name hash=0x1ceb65b7
; flags=0x37, aph=127, events: touch_release=0x3bbf6
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="m"
; text:
;   7: "M"
; 03d1d2:  ff ff                                            |..|

; touch_release
.org 0x3bbf6
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3bc41
    local_5769 += local_569d
    local_517b = local_5769

lbl_3bc41:
    prints 0x65, 1
    down
    up

; object id 34 (button 'b240'): x=36, y=240, w=62, h=29, name hash=0x61b24c2b
; flags=0x37, aph=127, events: touch_release=0x3bc69
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=6, isbr=0, txt="&123"
; text:
;   7: "&123"
; 03d226:  ff ff                                            |..|

; touch_release
.org 0x3bc69
    if local_56c8 != "&123" then jump lbl_3bcd9
    local_56c8 = "abc"
    local_5569 = 61
    local_556a = 62
    local_5570 = "1/2"
    click reflashshow, 0
    T 0x5e

lbl_3bcd9:
    if local_56c8 != "abc" then jump lbl_3bd37
    local_56c8 = "&123"
    local_5569 = 63
    local_556a = 64
    local_5570 = ""
    click refshow, 0

lbl_3bd37:
    prints 0x65, 1
    down
    up

; object id 35 (button 'b242'): x=100, y=239, w=282, h=30, name hash=0xe5d5e126
; flags=0x37, aph=127, events: touch_release=0x3bd5f
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=6, isbr=0, txt="space"
; 03d27a:  ff ff                                            |..|

; touch_release
.org 0x3bd5f
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3bda8
    local_5769 += " "
    local_517b = local_5769

lbl_3bda8:
    prints 0x65, 1
    down
    up

; object id 36 (button 'b9'): x=405, y=143, w=38, h=30, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x3bdd0
; borderc=0x39e7, picc=61, picc2=62, pco=0xffff, xcen=1, ycen=1, txt_maxl=3, isbr=0, txt="p"
; text:
;   7: "P"
; 03d2ce:  ff ff                                            |..|

; touch_release
.org 0x3bdd0
    btlen local_5769, local_5775
    if local_5775 >= local_5780 then jump lbl_3be1b
    local_5769 += local_571e
    local_517b = local_5769

lbl_3be1b:
    prints 0x65, 1
    down
    up

; object id 37 (hotspot 'reflashshow'): x=-52, y=85, w=31, h=17, name hash=0xed6953c8
; flags=0x37, aph=0, events: touch_release=0x3be43

; touch_release
.org 0x3be43
    if local_5570 != "1/2" then jump lbl_3bfc2
    local_5214 = "1"
    local_526a = "2"
    local_5295 = "3"
    local_52c0 = "4"
    local_52eb = "5"
    local_5316 = "6"
    local_5341 = "7"
    local_536c = "8"
    local_5397 = "9"
    local_571e = "0"
    local_53ed = "@"
    local_5418 = "#"
    local_5443 = "%"
    local_546e = "&"
    local_5499 = "*"
    local_54c4 = "-"
    local_54ef = "+"
    local_551a = "("
    local_5545 = ")"
    local_559b = "“"
    local_55c6 = "”"
    local_55f1 = "。"
    local_561c = ","
    local_5647 = "、"
    local_5672 = "!"
    local_569d = "."
    jmp lbl_3c144

lbl_3bfc2:
    if local_5570 != "2/2" then jump lbl_3c144
    local_5214 = "~"
    local_526a = "|"
    local_5295 = "$"
    local_52c0 = "¥"
    local_52eb = ">"
    local_5316 = "‘"
    local_5341 = "’"
    local_536c = "?"
    local_5397 = "£"
    local_571e = "`"
    local_53ed = "..."
    local_5418 = "/"
    local_5443 = "\\"
    local_546e = "{"
    local_5499 = "}"
    local_54c4 = "="
    local_54ef = "×"
    local_551a = "÷"
    local_5545 = "√￣"
    local_559b = "^"
    local_55c6 = "_"
    local_55f1 = "€"
    local_561c = "《"
    local_5647 = "》"
    local_5672 = "["
    local_569d = "]"

lbl_3c144:
    down
    up

; object id 38 (hotspot 'refshow'): x=-52, y=44, w=31, h=17, name hash=0x653285e6
; flags=0x37, aph=0, events: touch_release=0x3c15e

; touch_release
.org 0x3c15e
    if local_5569 != 63 then jump lbl_3c2e9
    if local_5570 != "" then jump lbl_3c2e9
    local_5214 = "q"
    local_526a = "w"
    local_5295 = "e"
    local_52c0 = "r"
    local_52eb = "t"
    local_5316 = "y"
    local_5341 = "u"
    local_536c = "i"
    local_5397 = "o"
    local_571e = "p"
    local_53ed = "a"
    local_5418 = "s"
    local_5443 = "d"
    local_546e = "f"
    local_5499 = "g"
    local_54c4 = "h"
    local_54ef = "j"
    local_551a = "k"
    local_5545 = "l"
    local_559b = "z"
    local_55c6 = "x"
    local_55f1 = "c"
    local_561c = "v"
    local_5647 = "b"
    local_5672 = "n"
    local_569d = "m"
    jmp lbl_3c469

lbl_3c2e9:
    if local_5569 != 65 then jump lbl_3c469
    if local_5570 != "" then jump lbl_3c469
    local_5214 = "Q"
    local_526a = "W"
    local_5295 = "E"
    local_52c0 = "R"
    local_52eb = "T"
    local_5316 = "Y"
    local_5341 = "U"
    local_536c = "I"
    local_5397 = "O"
    local_571e = "P"
    local_53ed = "A"
    local_5418 = "S"
    local_5443 = "D"
    local_546e = "F"
    local_5499 = "G"
    local_54c4 = "H"
    local_54ef = "J"
    local_551a = "K"
    local_5545 = "L"
    local_559b = "Z"
    local_55c6 = "X"
    local_55f1 = "C"
    local_561c = "V"
    local_5647 = "B"
    local_5672 = "N"
    local_569d = "M"

lbl_3c469:
    timer

; object id 39 (variable 'input'): x=0, y=0, w=1, h=1, name hash=0x94c6a60d
; sta=1, val=0
; 03d34e:  34 27 00 07                                      |4'..|
; 03d353:  00 1e 00 34 ca 00 00                             |...4...|

; object id 40 (variable 'temp'): x=0, y=0, w=1, h=1, name hash=0xf6182fd8
; sta=0, val=0
; 03d35e:  34 28 00 07                                      |4(..|

; object id 41 (variable 'inputlenth'): x=0, y=0, w=1, h=1, name hash=0x18d4148b
; sta=0, val=30
; 03d36e:  34 29 00 07                                      |4)..|

; object id 42 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27, events: timer=0x3c486
; tim=50, en=1

; timer
.org 0x3c486
    btlen local_517b, local_5796
    if local_5796 < 8 then jump lbl_3c4db
    local_5238 = local_5131+2
    local_5239 = local_5131+3
    jmp lbl_3c4f9

lbl_3c4db:
    local_5238 = local_5131
    local_5239 = local_5131

lbl_3c4f9:
    timer

; object id 43 (variable 'va0'): x=0, y=0, w=1, h=1, name hash=0xcbcbac4e
; sta=0, val=0
; 03d39e:  34 2b 00 07                                      |4+..|

; object id 44 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x3c50e
; tim=1000, en=1

; timer
.org 0x3c50e
    if global_1c <= 0 then jump lbl_3c56a
    if global_20 <= 0 then jump lbl_3c56a
    global_20--
    if global_20 != 0 then jump lbl_3c56a
    dim = global_30

lbl_3c56a:
    down
    up

; object id 45 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3c584

; touch_release
.org 0x3c584
    global_20 = global_18
    dims = global_2c

; data after the object structs, 975 bytes (9 trailing zero bytes dropped)
; 03d3ee:  00 00 00 00 5a 43 53 57 31 32 2d 32 2e 34 47 00  |....ZCSW12-2.4G.|
; 03d3fe:  00 00 10 00 10 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 03d40e:  50 e8 00 00 01 00 00 00 62 2b 00 00 00 00 00 00  |P.......b+......|
; 03d41e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d42e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03d43e:  9f 01 a2 00 1c 00 1c 00 ba 01 bd 00 00 00 00 00  |................|
; 03d44e:  00 00 00 00 00 00 10 00 10 00 ff ff 74 69 6d 65  |............time|
; 03d45e:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 03d46e:  31 31 34 33 2e 6a 70 67 00 00 00 00 00 00 00 00  |1143.jpg........|
; 03d47e:  00 00 00 00 00 00 00 00 e8 03 01 00 05 2d 00 00  |.............-..|
; 03d48e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d49e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d4ae:  00 00 00 00 e6 8c a4 e5 00 ba e6 9c ba 00 00 00  |................|
; 03d4be:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03d4ce:  33 01 ab 00 2e 00 2f 00 60 01 d9 00 00 00 00 00  |3...../.`.......|
; 03d4de:  00 00 00 00 00 00 3b 00 3c 00 ff ff ff ff 01 01  |......;.<.......|
; 03d4ee:  00 00 64 00 20 5c 00 00 01 00 00 00 62 18 01 00  |..d. \......b...|
; 03d4fe:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d50e:  00 00 00 00 00 00 00 00 32 68 34 6d 00 00 00 00  |........2h4m....|
; 03d51e:  e7 89 88 e6 00 ac 00 00 2e 00 2f 00 60 01 0a 01  |........../.`...|
; 03d52e:  00 00 00 00 00 00 00 00 00 00 3b 00 3c 00 ff ff  |..........;.<...|
; 03d53e:  ff ff 01 01 00 00 64 00 88 5c 00 00 01 00 00 00  |......d..\......|
; 03d54e:  74 02 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 03d55e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d56e:  00 00 7f 00 00 00 00 00 6a 00 69 00 0c 01 1c 00  |........j.i.....|
; 03d57e:  75 01 84 00 00 00 00 00 03 00 00 00 00 00 00 00  |u...............|
; 03d58e:  ff ff 01 01 00 00 2c 01 f0 5c 00 00 01 00 00 00  |......,..\......|
; 03d59e:  00 00 00 00 74 05 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 03d5ae:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d5be:  00 00 00 00 00 00 7f 00 00 00 00 00 6a 00 42 00  |............j.B.|
; 03d5ce:  0c 01 27 00 75 01 68 00 00 00 00 00 03 00 00 00  |..'.u.h.........|
; 03d5de:  00 00 00 00 ff ff 01 01 00 00 2c 01 20 5e 00 00  |..........,. ^..|
; 03d5ee:  01 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 03d5fe:  30 32 34 30 33 31 34 5f 31 31 34 33 2e 6d 70 34  |0240314_1143.mp4|
; 03d60e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03d61e:  97 01 d7 00 45 00 36 00 db 01 0c 01 00 00 00 00  |....E.6.........|
; 03d62e:  00 00 00 00 00 00 16 00 18 00 ff ff ff ff 01 01  |................|
; 03d63e:  00 00 64 00 50 5f 00 00 34 6d 00 00 00 02 01 00  |..d.P_..4m......|
; 03d64e:  00 00 00 00 e8 bf 9e e6 8e a5 00 00 00 00 00 00  |................|
; 03d65e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 50 00  |..............P.|
; 03d66e:  00 00 00 00 74 00 32 00 0f 01 c8 00 82 01 f9 00  |....t.2.........|
; 03d67e:  00 00 00 00 03 01 02 00 00 00 00 00 00 00 00 00  |................|
; 03d68e:  00 00 1a db bf 07 00 00 00 00 00 00 4e 00 00 00  |............N...|
; 03d69e:  e0 02 00 00 6c b6 00 00 71 07 01 00 00 00 00 00  |....l...q.......|
; 03d6ae:  00 00 00 00 00 00 00 00 e6 a0 a1 e5 e5 8f 96 e6  |................|
; 03d6be:  b6 88 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03d6ce:  a0 01 06 00 34 00 2b 00 d3 01 30 00 00 00 00 00  |....4.+...0.....|
; 03d6de:  15 00 00 00 74 0a 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 03d6ee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d6fe:  00 00 00 00 00 00 7f 00 00 00 00 00 9d 01 8a 00  |................|
; 03d70e:  21 00 1e 00 bd 01 a7 00 00 00 00 00 03 00 00 00  |!...............|
; 03d71e:  00 02 00 00 71 00 02 01 77 00 2c 01 65 00 00 00  |....q...w.,.e...|
; 03d72e:  72 00 00 00 74 00 00 00 79 00 01 00 75 00 00 00  |r...t...y...u...|
; 03d73e:  69 00 00 00 6f 00 00 00 00 00 00 00 61 00 00 00  |i...o.......a...|
; 03d74e:  73 00 00 00 64 00 00 00 66 00 7f 00 67 00 00 00  |s...d...f...g...|
; 03d75e:  68 00 54 00 6a 00 1e 00 6b 00 71 00 6c 00 00 00  |h.T.j...k.q.l...|
; 03d76e:  00 00 00 00 7a 00 00 00 78 00 87 e4 63 00 e5 90  |....z...x...c...|
; 03d77e:  76 00 00 00 62 00 00 00 6e 00 00 00 6d 00 01 00  |v...b...n...m...|
; 03d78e:  26 31 32 33 00 00 00 00 73 70 61 63 65 00 00 00  |&123....space...|
; 03d79e:  70 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |p...............|
; 03d7ae:  00 00 00 00 bd 01 54 00 21 00 1e 00 dd 01 71     |......T.!.....q|
