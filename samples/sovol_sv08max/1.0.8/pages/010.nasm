; page 10 'main': 19 objects

; object address table, 19 objects, block loaded at 0xb950
.dd 0xb99c, 0xf38, 0xf8c, 0xb9dc, 0xba30, 0xba84, 0xbad8, 0xfe8
.dd 0xbb2c, 0xbb80, 0x1024, 0x1078, 0x10cc, 0x1120, 0xbbd4, 0xbbf4
.dd 0xbc14, 0x1174, 0x11c8

; object id 0 (page 'main'): x=0, y=0, w=480, h=272, name hash=0xaf3dd197
; flags=0x37, aph=127, events: event_3=0x10eaf
; sta=2, pic=22
; 0115dc:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x10eaf
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x11b58
    ref 2
    ref 14
    ref 15
    doevents
    down
    up

; object id 257 (button 'b2'): x=407, y=215, w=69, h=54, name hash=0x22c442c6
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x10ef5
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 258 (waveform 's0'): x=116, y=50, w=271, h=200, name hash=0xfbd4eaaf

; object id 3 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x10f79
; borderc=0x0000, picc=23, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 01162c:  ff ff                                            |..|

; touch_release
.org 0x10f79
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x10fe5
; borderc=0x0000, picc=23, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 011680:  ff ff                                            |..|

; touch_release
.org 0x10fe5
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x11051
; borderc=0x0000, picc=23, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 0116d4:  ff ff                                            |..|

; touch_release
.org 0x11051
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x110bd
; borderc=0x0000, picc=23, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 011728:  ff ff                                            |..|

; touch_release
.org 0x110bd
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 263 (crop 'q8'): x=416, y=6, w=52, h=43, name hash=0x8c91e280
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0x11129
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b1'): x=407, y=108, w=69, h=54, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x11193
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 01177c:  ff ff                                            |..|

; touch_release
.org 0x11193
    global_0 = 1
    global_c = dp
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button): x=407, y=53, w=69, h=54, name hash=0x9df54232
; flags=0x37, aph=127, events: touch_release=0x11217
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 0117d0:  ff ff                                            |..|

; touch_release
.org 0x11217
    global_0 = 0
    global_c = dp
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 266 (text 'hot_bed_temp'): x=413, y=138, w=33, h=30, name hash=0x3675c015
; sta=3, font=2, pco=0x07bf, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; touch_press
.org 0x11291
    click b1, 1
    up

; touch_release
.org 0x112a6
    click b1, 0
    down

; object id 267 (text 'extruder_temp'): x=412, y=84, w=33, h=30, name hash=0x8f3c4cf3
; sta=3, font=2, pco=0xdb1a, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; touch_press
.org 0x112c1
    click extruder, 1
    up

; touch_release
.org 0x112dc
    click extruder, 0
    down

; object id 268 (text 'extru_target'): x=445, y=84, w=33, h=30, name hash=0x8bb66142
; sta=3, font=2, pco=0xdb1a, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; touch_press
.org 0x112fd
    click extruder, 1
    up

; touch_release
.org 0x11318
    click extruder, 0
    down

; object id 269 (text 'bed_target'): x=446, y=138, w=33, h=30, name hash=0x5af95597
; sta=3, font=2, pco=0x07bf, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; touch_press
.org 0x11339
    click b1, 1
    up

; touch_release
.org 0x1134e
    click b1, 0
    timer

; object id 14 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1136a
; tim=1000, en=1

; timer
.org 0x1136a
    if global_1c <= 0 then jump lbl_113c6
    if global_20 <= 0 then jump lbl_113c6
    global_20--
    if global_20 != 0 then jump lbl_113c6
    dim = global_30

lbl_113c6:
    down
    up

; object id 15 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x113e0

; touch_release
.org 0x113e0
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 16 (button 'b3'): x=408, y=162, w=69, h=54, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x11418
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 011864:  ff ff                                            |..|

; touch_release
.org 0x11418
    global_0 = 4
    global_c = dp
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 273 (text): x=411, y=193, w=33, h=30, name hash=0xcdb0999
; sta=3, font=2, pco=0x07bf, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; touch_press
.org 0x11492
    click b3, 1
    up

; touch_release
.org 0x114a7
    click b3, 0
    down

; object id 274 (text): x=444, y=193, w=33, h=30, name hash=0x7ce48faa
; sta=3, font=2, pco=0x07bf, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; touch_press
.org 0x114c2
    click b3, 1
    up

; touch_release
.org 0x114d7
    click b3, 0

; data after the object structs, 727 bytes (9 trailing zero bytes dropped)
; 011874:  00 00 00 00 00 00 2c 01 e9 80 80 e5 87 ba 00 00  |......,.........|
; 011884:  00 00 00 00 74 0a 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 011894:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0118a4:  00 00 00 00 00 00 7f 00 00 00 00 00 88 00 95 00  |................|
; 0118b4:  6d 00 1e 00 f4 00 b2 00 00 00 00 00 03 00 00 00  |m...............|
; 0118c4:  00 00 00 00 e8 07 00 01 00 00 2c 01 e0 43 00 00  |..........,..C..|
; 0118d4:  01 00 00 00 00 00 00 00 74 0b 01 00 00 00 00 00  |........t.......|
; 0118e4:  e4 b8 80 e9 94 ae e5 8a a0 e7 83 ad 00 00 00 00  |................|
; 0118f4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 011904:  e7 bd 91 e7 bb 9c e7 ae a1 e7 90 86 00 00 00 00  |................|
; 011914:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 011924:  10 45 00 00 01 00 00 00 00 00 00 00 74 0e 01 00  |.E..........t...|
; 011934:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011944:  00 00 00 00 00 00 00 00 e5 86 b7 e5 8d b4 00 00  |................|
; 011954:  00 00 00 00 fc 00 52 00 50 00 1e 00 4b 01 6f 00  |......R.P...K.o.|
; 011964:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 011974:  e6 97 a0 e7 ba bf e5 b1 80 e5 9f 9f e7 bd 91 00  |................|
; 011984:  74 10 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 011994:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0119a4:  00 00 7f 00 00 00 00 00 88 00 b8 00 00 00 1e 00  |................|
; 0119b4:  00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 0119c4:  e8 07 00 01 00 00 2c 01 70 47 00 00 01 00 00 00  |......,.pG......|
; 0119d4:  00 00 00 00 74 11 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0119e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0119f4:  00 00 00 00 00 00 7f 00 00 00 00 00 fc 00 74 00  |..............t.|
; 011a04:  50 00 1e 00 4b 01 91 00 00 00 00 00 03 00 00 00  |P...K...........|
; 011a14:  00 00 00 00 00 ff 02 01 00 00 2c 01 a0 48 00 00  |..........,..H..|
; 011a24:  01 00 00 00 00 00 00 00 74 12 01 00 00 00 00 00  |........t.......|
; 011a34:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011a44:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 011a54:  ef 00 00 00 4e 00 1e 00 3c 01 1d 00 00 00 00 00  |....N...<.......|
; 011a64:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 011a74:  d0 49 00 00 01 00 00 00 00 00 00 00 00 13 01 00  |.I..............|
; 011a84:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011a94:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 011aa4:  e6 88 91 e7 9a 84 e7 bd 91 e7 bb 9c 00 01 91 00  |................|
; 011ab4:  00 00 00 00 03 00 00 00 00 00 00 00 72 fe 00 01  |............r...|
; 011ac4:  00 00 2c 01 00 4b 00 00 01 00 00 00 00 00 00 00  |..,..K..........|
; 011ad4:  74 16 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 011ae4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011af4:  00 00 7f 00 00 00 00 00 b5 00 30 00 2d 00 1e 00  |..........0.-...|
; 011b04:  e1 00 4d 00 00 00 00 00 03 00 00 00 00 00 00 00  |..M.............|
; 011b14:  e0 ff 00 01 00 00 2c 01 30 4c 00 00 01 00 00 00  |......,.0L......|
; 011b24:  00 00 00 00 74 17 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 011b34:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011b44:  00 00 00 00 00 00 7f                             |.......|
