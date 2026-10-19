; page 2 'mks_test': 26 objects

; object address table, 26 objects, block loaded at 0xb950
.dd 0xb9b8, 0x38, 0x8c, 0xe0, 0x134, 0x188, 0x1dc, 0x230
.dd 0x284, 0x2d8, 0x32c, 0x380, 0xb9f8, 0xba4c, 0x3d4, 0xbaa0
.dd 0x428, 0x47c, 0x4d0, 0x524, 0xbaf4, 0xbb48, 0x578, 0x5cc
.dd 0x620, 0x674

; object id 0 (page 'mks_test'): x=0, y=0, w=480, h=272, name hash=0x6f09ec26
; flags=0x37, aph=127
; sta=1, pic=10565
; 00c636:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0xc9fa
    doevents
    down
    up

; object id 257 (text 'extruder_temp'): x=136, y=48, w=45, h=30, name hash=0x8f3c4cf3
; sta=3, font=0, pco=0xffe0, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object id 258 (text 'hot_bed_temp'): x=136, y=82, w=45, h=30, name hash=0x3675c015
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object id 259 (text 't0'): x=53, y=48, w=80, h=30, name hash=0xc02992d9
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="喷头温度："

; object id 260 (text 't1'): x=53, y=82, w=80, h=30, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="热床温度："

; object id 261 (text 't2'): x=22, y=116, w=111, h=30, name hash=0x2cf7a429
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="eth0_IP地址："

; object id 262 (text 't3'): x=160, y=0, w=78, h=30, name hash=0x5a98bf51
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="测试模式"

; object id 263 (text 'eth0_ip'): x=136, y=116, w=109, h=30, name hash=0x4e606434
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="192.168.XXX"

; object id 264 (text 't5'): x=19, y=150, w=114, h=30, name hash=0x6b3bf9f6
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="wlan0_IP地址："

; object id 265 (text 't7'): x=29, y=184, w=104, h=30, name hash=0x87e5cf06
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="检测引脚状态："

; object id 266 (text 'wlan0_ip'): x=136, y=149, w=109, h=30, name hash=0xd3071060
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="192.168.XXX"

; object id 267 (text 't9'): x=252, y=48, w=80, h=30, name hash=0x87d74b8
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="LED开关："

; object id 12 (button 'b_led'): x=334, y=48, w=73, h=30, name hash=0xeaa5eb3
; flags=0x37, aph=127, events: touch_release=0xc1e8
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="已开启"
; touch_release reports to the host: page <page>, widget 0
; 00c676:  00 00 00 00 01 04                                |......|
; 00c686:  a3 10                                            |..|

; touch_release
.org 0xc1e8
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 13 (button 'b_fan0'): x=334, y=81, w=73, h=30, name hash=0xd487af04
; flags=0x37, aph=127, events: touch_release=0xc252
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="已开启"
; touch_release reports to the host: page <page>, widget 1
; 00c6ca:  00 00 00 00 01 04                                |......|
; 00c6da:  a3 10                                            |..|

; touch_release
.org 0xc252
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 270 (text 't10'): x=252, y=82, w=80, h=30, name hash=0x9c193d5e
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="风扇0开关："

; object id 15 (button 'exit'): x=404, y=240, w=76, h=31, name hash=0x9b251e91
; flags=0x37, aph=127, events: touch_release=0xc2d6
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="退出"
; touch_release reports to the host: page <page>, widget 4
; 00c71e:  00 00 00 00 01 04                                |......|
; 00c72e:  a3 10                                            |..|

; touch_release
.org 0xc2d6
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
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

; object id 272 (text 'check_status'): x=136, y=184, w=109, h=30, name hash=0x563d05b8
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="已检测到"

; object id 273 (text 't11'): x=252, y=116, w=80, h=30, name hash=0x102115f6
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="风扇1开关："

; object id 274 (text 'test_vison'): x=239, y=0, w=78, h=30, name hash=0xa4451a35
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="V1.0"

; object id 275 (text 't4'): x=334, y=116, w=141, h=30, name hash=0x1d54e28e
; sta=3, font=0, pco=0xfe72, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="喷头温度>50℃时开启"

; object id 20 (button 'b0'): x=149, y=227, w=73, h=30, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xc3a8
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="一键加热"
; touch_release reports to the host: page <page>, widget 2
; 00c772:  00 00 00 00 01 04                                |......|
; 00c782:  a3 10                                            |..|

; touch_release
.org 0xc3a8
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 21 (button 'b1'): x=239, y=226, w=73, h=30, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0xc412
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="冷却"
; touch_release reports to the host: page <page>, widget 3
; 00c7c6:  00 00 00 00 01 04                                |......|
; 00c7d6:  a3 10                                            |..|

; touch_release
.org 0xc412
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 278 (text 'extru_target'): x=181, y=48, w=45, h=30, name hash=0x8bb66142
; sta=3, font=0, pco=0xffe0, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100℃"

; touch_press
.org 0xc472
    click b0, 1
    up

; touch_release
.org 0xc487
    click b0, 0
    down

; object id 279 (text 'bed_target'): x=181, y=82, w=45, h=30, name hash=0x5af95597
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0℃"

; touch_press
.org 0xc4a2
    click b1, 1
    up

; touch_release
.org 0xc4b7
    click b1, 0
    down
    up
    down
    up

; object id 280 (text 't6'): x=228, y=146, w=104, h=30, name hash=0xf18ad47e
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="U盘状态："

; object id 281 (text 't8'): x=333, y=147, w=109, h=30, name hash=0x7e126fc0
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="已检测到"

; data after the object structs, 523 bytes (5 trailing zero bytes dropped)
; 00c7e6:  00 00 00 00 e5 b7 b2 e5 bc 80 e5 90 af 00 74 00  |..............t.|
; 00c7f6:  6d 00 1e 00 f4 00 91 00 00 00 00 00 03 00 00 00  |m...............|
; 00c806:  00 00 00 00 e8 07 00 01 00 00 2c 01 50 40 00 00  |..........,.P@..|
; 00c816:  01 00 00 00 00 00 00 00 74 08 01 00 00 00 00 00  |........t.......|
; 00c826:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00c836:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00c846:  13 00 96 00 72 00 1e 00 84 00 b3 00 e5 b7 b2 e5  |....r...........|
; 00c856:  bc 80 e5 90 af 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00c866:  80 41 00 00 01 00 00 00 00 00 00 00 74 09 01 00  |.A..........t...|
; 00c876:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00c886:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00c896:  00 00 00 00 1d 00 b8 00 68 00 1e 00 84 00 d5 00  |........h.......|
; 00c8a6:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00c8b6:  00 00 2c 01 e9 80 80 e5 87 ba 00 00 00 00 00 00  |..,.............|
; 00c8c6:  74 0a 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 00c8d6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00c8e6:  00 00 7f 00 00 00 00 00 88 00 95 00 6d 00 1e 00  |............m...|
; 00c8f6:  f4 00 b2 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 00c906:  e8 07 00 01 00 00 2c 01 e0 43 00 00 01 00 00 00  |......,..C......|
; 00c916:  00 00 00 00 74 0b 01 00 00 00 00 00 e4 b8 80 e9  |....t...........|
; 00c926:  94 ae e5 8a a0 e7 83 ad 00 00 00 00 00 00 00 00  |................|
; 00c936:  00 00 00 00 00 00 7f 00 00 00 00 00 fc 00 30 00  |..............0.|
; 00c946:  50 00 1e 00 4b 01 4d 00 00 00 00 00 03 00 00 00  |P...K.M.........|
; 00c956:  00 00 00 00 ff ff 02 01 00 00 2c 01 10 45 00 00  |..........,..E..|
; 00c966:  01 00 00 00 00 00 00 00 74 0e 01 00 00 00 00 00  |........t.......|
; 00c976:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00c986:  00 00 00 00 e5 86 b7 e5 8d b4 00 00 00 00 00 00  |................|
; 00c996:  fc 00 52 00 50 00 1e 00 4b 01 6f 00 00 00 00 00  |..R.P...K.o.....|
; 00c9a6:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00c9b6:  40 46 00 00 01 00 00 00 00 00 00 00 74 10 01 00  |@F..........t...|
; 00c9c6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00c9d6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00c9e6:  00 00 00 00 88 00 b8 00 6d 00 1e                 |........m..|
