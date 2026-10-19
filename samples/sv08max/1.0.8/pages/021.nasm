; page 21 'printing': 26 objects

; object address table, 26 objects, block loaded at 0xb950
.dd 0xb9b8, 0x1b4c, 0x1ba0, 0x1bf4, 0x1c48, 0x1c9c, 0xb9f8, 0xba4c
.dd 0xbaa0, 0x1cdc, 0x1d30, 0xbaf4, 0xbb48, 0x1d6c, 0x1dc0, 0x1e14
.dd 0x1e68, 0xbb9c, 0xbbbc, 0xbbdc, 0x1ebc, 0xbc14, 0xbc4c, 0x1efc
.dd 0x1f50, 0xbca0

; object id 0 (page 'printing'): x=0, y=0, w=480, h=272, name hash=0x5b0f785a
; flags=0x37, aph=127, events: event_3=0x1e879
; sta=2, pic=33
; 01f0c6:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1e879
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up

; load
.org 0x1f656
    ref 17
    ref 18
    local_248b = ""
    if global_14 != 0 then jump lbl_1f6a1
    local_259c = ""
    jmp lbl_1f7d1

lbl_1f6a1:
    if global_14 != 1 then jump lbl_1f6ce
    local_259c = ""
    jmp lbl_1f7d1

lbl_1f6ce:
    if global_14 != 2 then jump lbl_1f6fb
    local_259c = ""
    jmp lbl_1f7d1

lbl_1f6fb:
    if global_14 != 3 then jump lbl_1f728
    local_259c = ""
    jmp lbl_1f7d1

lbl_1f728:
    if global_14 != 4 then jump lbl_1f755
    local_259c = ""
    T 0x7c

lbl_1f755:
    if global_14 != 5 then jump lbl_1f782
    local_259c = ""
    jmp lbl_1f7d1

lbl_1f782:
    if global_14 != 6 then jump lbl_1f7af
    local_259c = ""
    jmp lbl_1f7d1

lbl_1f7af:
    if global_14 != 7 then jump lbl_1f7d1
    local_259c = ""

lbl_1f7d1:
    doevents
    down
    up

; object id 257 (text 't0'): x=17, y=14, w=271, h=34, name hash=0xc02992d9
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件名"
; text:
;   -1: ""

; object id 258 (text 't2'): x=163, y=208, w=85, h=21, name hash=0x2cf7a429
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0h0m"

; object id 259 (text 't4'): x=41, y=208, w=70, h=21, name hash=0x1d54e28e
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="600mm/s"

; object id 260 (text 't6'): x=304, y=232, w=39, h=24, name hash=0xf18ad47e
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="42%"

; object id 261 (progress_bar 'j0'): x=22, y=238, w=278, h=13, name hash=0xe6a28637

; object id 6 (button 'b3'): x=345, y=137, w=62, h=64, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x1e941
; borderc=0x0000, picc=33, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3
; 01f116:  ff ff                                            |..|

; touch_release
.org 0x1e941
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b4'): x=350, y=206, w=56, h=59, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x1e9ab
; borderc=0x0000, picc=33, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 01f16a:  ff ff                                            |..|

; touch_release
.org 0x1e9ab
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b5'): x=345, y=71, w=62, h=64, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x1ea15
; borderc=0x0000, picc=33, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; text:
;   0: ""
;   1: ""
;   2: ""
;   3: ""
;   4: ""
;   5: ""
;   6: ""
;   7: ""
; touch_release reports to the host: page <page>, widget 5
; 01f1be:  ff ff                                            |..|

; touch_release
.org 0x1ea15
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 265 (button 'b2'): x=407, y=213, w=69, h=54, name hash=0x22c442c6
; borderc=0x0000, picc=34, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x1ea7f
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 266 (crop 'q8'): x=418, y=5, w=45, h=30, name hash=0x8c91e280
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0x1eae9
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 11 (button 'b1'): x=407, y=109, w=69, h=54, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x1eb53
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 01f212:  ff ff                                            |..|

; touch_release
.org 0x1eb53
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

; object id 12 (button): x=408, y=52, w=69, h=54, name hash=0x9df54232
; flags=0x37, aph=127, events: touch_release=0x1ebd7
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 01f266:  ff ff                                            |..|

; touch_release
.org 0x1ebd7
    global_0 = 0
    global_c = dp
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 269 (text 'hot_bed_temp'): x=411, y=138, w=33, h=30, name hash=0x3675c015
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; touch_press
.org 0x1ec51
    click b1, 1
    up

; touch_release
.org 0x1ec66
    click b1, 0
    down

; object id 270 (text 'extruder_temp'): x=410, y=84, w=33, h=30, name hash=0x8f3c4cf3
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; touch_press
.org 0x1ec81
    click extruder, 1
    up

; touch_release
.org 0x1ec9c
    click extruder, 0
    down

; object id 271 (text 'extru_target'): x=443, y=84, w=33, h=30, name hash=0x8bb66142
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; touch_press
.org 0x1ecbd
    click extruder, 1
    up

; touch_release
.org 0x1ecd8
    click extruder, 0
    down

; object id 272 (text 'bed_target'): x=444, y=138, w=33, h=30, name hash=0x5af95597
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; touch_press
.org 0x1ecf9
    click b1, 1
    up

; touch_release
.org 0x1ed0e
    click b1, 0
    timer

; object id 17 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1ed2a
; tim=1000, en=1

; timer
.org 0x1ed2a
    if global_1c <= 0 then jump lbl_1ed86
    if global_20 <= 0 then jump lbl_1ed86
    global_20--
    if global_20 != 0 then jump lbl_1ed86
    dim = global_30

lbl_1ed86:
    down
    up

; object id 18 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1eda0

; touch_release
.org 0x1eda0
    global_20 = global_18
    dims = global_2c
    down

; object id 19 (hotspot 'm1'): x=409, y=216, w=67, h=50, name hash=0xab30e539
; flags=0x37, aph=0, events: touch_press=0x1edce, touch_release=0x1ede3

; touch_press
.org 0x1edce
    click b2, 1
    up

; touch_release
.org 0x1ede3
    click b2, 0
    down
    up
    down

; object id 276 (unknown_0x3c 'exp0'): x=29, y=45, w=160, h=160, name hash=0x4cb85fe0

; object id 21 (hotspot 'm2'): x=407, y=0, w=73, h=47, name hash=0x3181c8b1
; flags=0x37, aph=0, events: touch_press=0x1ee18, touch_release=0x1ee2d

; touch_press
.org 0x1ee18
    click q8, 1
    up

; touch_release
.org 0x1ee2d
    click q8, 0
    down
    up

; object id 22 (button 'b6'): x=409, y=162, w=69, h=54, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x1ee52
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 8
; 01f36a:  ff ff                                            |..|

; touch_release
.org 0x1ee52
    global_0 = 8
    global_c = dp
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 279 (text): x=410, y=194, w=33, h=30, name hash=0xcdb0999
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0℃/"

; touch_press
.org 0x1eecc
    click b6, 1
    up

; touch_release
.org 0x1eee1
    click b6, 0
    down

; object id 280 (text): x=443, y=194, w=33, h=30, name hash=0x7ce48faa
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0℃"

; touch_press
.org 0x1eefc
    click b6, 1
    up

; touch_release
.org 0x1ef11
    click b6, 0
    down
    up

; object id 25 (button 'b7'): x=345, y=5, w=61, h=64, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x1ef36
; borderc=0x0000, picc=33, picc2=35, pco=0x0000, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 7
; 01f3be:  ff ff                                            |..|

; touch_release
.org 0x1ef36
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 639 bytes (5 trailing zero bytes dropped)
; 01f3ce:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01f3de:  51 00 2d 00 00 01 2d 00 90 01 59 00 00 00 00 00  |Q.-...-...Y.....|
; 01f3ee:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01f3fe:  bc c3 00 00 01 00 00 00 00 00 00 00 62 0f 00 00  |............b...|
; 01f40e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f41e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01f42e:  00 00 00 00 a0 01 2e 00 1d 00 2c 00 00 01 59 00  |..........,...Y.|
; 01f43e:  00 00 00 00 00 00 00 00 00 00 50 00 00 00 ff ff  |..........P.....|
; 01f44e:  ff ff 01 01 00 00 64 00 ec c4 00 00 01 00 00 00  |......d.........|
; 01f45e:  74 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01f46e:  00 00 00 00 00 00 00 00 00 00 00 00 e6 98 af 00  |................|
; 01f47e:  00 00 7f 00 00 00 00 00 52 00 5b 00 40 01 2d 00  |........R.[.@.-.|
; 01f48e:  91 01 87 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 01f49e:  ff ff 00 01 00 00 2c 01 54 c5 00 00 01 00 00 00  |......,.T.......|
; 01f4ae:  00 00 00 00 00 11 00 00 00 00 00 00 00 00 00 00  |................|
; 01f4be:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f4ce:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 5b 00  |..............[.|
; 01f4de:  1d 00 2c 00 e5 90 a6 00 00 00 00 00 00 00 00 00  |..,.............|
; 01f4ee:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 01f4fe:  84 c6 00 00 01 00 00 00 74 12 00 00 00 00 00 00  |........t.......|
; 01f50e:  00 00 00 00 00 00 00 00 00 00 00 00 e6 89 93 e5  |................|
; 01f51e:  8d b0 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01f52e:  52 00 88 00 40 01 2d 00 91 01 b4 00 00 00 00 00  |R...@.-.........|
; 01f53e:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 00 00  |................|
; 01f54e:  ec c6 00 00 01 00 00 00 00 00 00 00 62 13 00 00  |............b...|
; 01f55e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f56e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01f57e:  00 00 00 00 00 01 88 00 1d 00 2c 00 bc 01 b3 00  |..........,.....|
; 01f58e:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 01f59e:  ff ff 01 01 00 00 64 00 1c c8 00 00 01 00 00 00  |......d.........|
; 01f5ae:  74 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01f5be:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f5ce:  00 00 7f 00 00 00 00 00 52 00 b5 00 00 01 2d 00  |........R.....-.|
; 01f5de:  91 01 e1 00 00 00 00 00 03 00 00 00 72 61 6d 2f  |............ram/|
; 01f5ee:  31 37 36 2e 6a 70 67 00 84 c8 00 00 01 00 00 00  |176.jpg.........|
; 01f5fe:  00 00 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01f60e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01f61e:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 b5 00  |................|
; 01f62e:  1d 00 2c 00 bc 01 e0 00 00 00 00 00 00 00 00 00  |..,.............|
; 01f63e:  00 00 50 00 00 00 ff ff ff ff 01 01 00 00 64     |..P...........d|
