; page 10 'main': 16 objects

; object address table, 16 objects, block loaded at 0xa3a4
.dd 0xa3e4, 0xde8, 0xe3c, 0xa424, 0xa478, 0xa4cc, 0xa520, 0xe98
.dd 0xa574, 0xa5c8, 0xed4, 0xf28, 0xf7c, 0xfd0, 0xa61c, 0xa63c

; object id 0 (page 'main'): x=0, y=0, w=480, h=272, name hash=0xaf3dd197
; flags=0x37, aph=127, events: event_3=0xef17
; sta=2, pic=22
; 00f52a:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xef17
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0xf9ea
    ref 2
    ref 14
    ref 15
    doevents
    down
    up

; object id 257 (button 'b2'): x=407, y=213, w=69, h=54, name hash=0x22c442c6
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0xef5d
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
; flags=0x37, aph=127, events: touch_release=0xefe1
; borderc=0x0000, picc=23, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 00f57a:  ff ff                                            |..|

; touch_release
.org 0xefe1
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0xf04d
; borderc=0x0000, picc=23, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 00f5ce:  ff ff                                            |..|

; touch_release
.org 0xf04d
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0xf0b9
; borderc=0x0000, picc=23, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 00f622:  ff ff                                            |..|

; touch_release
.org 0xf0b9
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0xf125
; borderc=0x0000, picc=23, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 00f676:  ff ff                                            |..|

; touch_release
.org 0xf125
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 263 (crop 'q8'): x=418, y=5, w=45, h=30, name hash=0x8c91e280
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0xf191
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b1'): x=407, y=127, w=69, h=86, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0xf1fb
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 00f6ca:  ff ff                                            |..|

; touch_release
.org 0xf1fb
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

; object id 9 (button 'b0'): x=407, y=42, w=69, h=85, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xf27f
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 00f71e:  ff ff                                            |..|

; touch_release
.org 0xf27f
    global_0 = 0
    global_c = dp
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 266 (text 'hot_bed_temp'): x=411, y=166, w=33, h=30, name hash=0x3675c015
; sta=3, font=2, pco=0x07bf, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; touch_press
.org 0xf2f9
    click b1, 1
    up

; touch_release
.org 0xf30e
    click b1, 0
    down

; object id 267 (text 'extruder_temp'): x=410, y=90, w=33, h=30, name hash=0x8f3c4cf3
; sta=3, font=2, pco=0xdb1a, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; touch_press
.org 0xf329
    click b0, 1
    up

; touch_release
.org 0xf33e
    click b0, 0
    down

; object id 268 (text 'extru_target'): x=443, y=90, w=33, h=30, name hash=0x8bb66142
; sta=3, font=2, pco=0xdb1a, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; touch_press
.org 0xf359
    click b0, 1
    up

; touch_release
.org 0xf36e
    click b0, 0
    down

; object id 269 (text 'bed_target'): x=444, y=166, w=33, h=30, name hash=0x5af95597
; sta=3, font=2, pco=0x07bf, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; touch_press
.org 0xf389
    click b1, 1
    up

; touch_release
.org 0xf39e
    click b1, 0
    timer

; object id 14 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0xf3ba
; tim=1000, en=1

; timer
.org 0xf3ba
    if global_1c <= 0 then jump lbl_f416
    if global_20 <= 0 then jump lbl_f416
    global_20--
    if global_20 != 0 then jump lbl_f416
    dim = global_30

lbl_f416:
    down
    up

; object id 15 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0xf430

; touch_release
.org 0xf430
    global_20 = global_18
    dims = global_2c

; data after the object structs, 623 bytes (9 trailing zero bytes dropped)
; 00f76e:  00 00 00 00 00 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00f77e:  00 00 2c 01 ac 3b 00 00 01 00 00 00 00 00 00 00  |..,..;..........|
; 00f78e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f79e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f7ae:  00 00 00 00 00 00 00 00 1d 00 b8 00 68 00 1e 00  |............h...|
; 00f7be:  84 00 d5 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 00f7ce:  e9 80 80 e5 87 ba 00 01 dc 3c 00 00 00 00 00 00  |.........<......|
; 00f7de:  00 00 00 00 74 0a 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00f7ee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f7fe:  00 00 00 00 00 00 7f 00 00 00 00 00 88 00 95 00  |................|
; 00f80e:  6d 00 1e 00 f4 00 b2 00 00 00 00 00 03 00 00 00  |m...............|
; 00f81e:  00 00 00 00 e8 07 00 01 00 00 2c 01 0c 3e 00 00  |..........,..>..|
; 00f82e:  01 00 00 00 00 00 00 00 e4 b8 80 e9 94 ae e5 8a  |................|
; 00f83e:  a0 e7 83 ad 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f84e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00f85e:  fc 00 30 00 50 00 1e 00 4b 01 4d 00 00 00 00 00  |..0.P...K.M.....|
; 00f86e:  03 00 00 00 e4 b8 8a e4 b8 80 e6 ad a5 00 2c 01  |..............,.|
; 00f87e:  3c 3f 00 00 01 00 00 00 00 00 00 00 74 0e 01 00  |<?..........t...|
; 00f88e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f89e:  e5 86 b7 e5 8d b4 00 00 00 00 00 00 00 00 7f 00  |................|
; 00f8ae:  00 00 00 00 fc 00 52 00 50 00 1e 00 4b 01 6f 00  |......R.P...K.o.|
; 00f8be:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00f8ce:  00 00 2c 01 6c 40 00 00 01 00 00 00 e7 bb 93 e6  |..,.l@..........|
; 00f8de:  9d 9f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f8ee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f8fe:  00 00 7f 00 00 00 00 00 00 00 00 00 6d 00 1e 00  |............m...|
; 00f90e:  f4 00 d5 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 00f91e:  e8 07 00 01 00 00 2c 01 9c 41 00 00 01 00 00 00  |......,..A......|
; 00f92e:  00 00 00 00 74 11 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00f93e:  00 00 00 00 e6 97 a0 e7 ba bf e5 b1 80 e5 9f 9f  |................|
; 00f94e:  e7 bd 91 00 00 00 7f 00 00 00 00 00 fc 00 74 00  |..............t.|
; 00f95e:  50 00 1e 00 4b 01 91 00 00 00 00 00 03 00 00 00  |P...K...........|
; 00f96e:  00 00 00 00 ff ff 02 01 00 00 2c 01 00 42 00 00  |..........,..B..|
; 00f97e:  01 00 00 00 00 00 00 00 74 12 01 00 00 00 00 00  |........t.......|
; 00f98e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f99e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00f9ae:  ef 00 00 00 4e 00 1e 00 3c 01 1d 00 00 00 00 00  |....N...<.......|
; 00f9be:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 00f9ce:  fc 43 00 00 01 00 00 00 00 00 00 00 74 13 01     |.C..........t..|
