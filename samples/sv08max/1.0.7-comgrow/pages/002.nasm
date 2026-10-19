; page 2 'mks_test': 24 objects

; object address table, 24 objects, block loaded at 0xa3a4
.dd 0xa404, 0x38, 0x8c, 0xe0, 0x134, 0x188, 0x1dc, 0x230
.dd 0x284, 0x2d8, 0x32c, 0x380, 0xa444, 0xa498, 0x3d4, 0xa4ec
.dd 0x428, 0x47c, 0x4d0, 0x524, 0xa540, 0xa594, 0x578, 0x5cc

; object id 0 (page 'mks_test'): x=0, y=0, w=480, h=272, name hash=0x6f09ec26
; flags=0x37, aph=127
; sta=1, pic=10565
; 00b055:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0xb419
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
; flags=0x37, aph=127, events: touch_release=0xac4f
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="已开启"
; touch_release reports to the host: page <page>, widget 0
; 00b095:  00 00 00 00 01 04                                |......|
; 00b0a5:  a3 10                                            |..|

; touch_release
.org 0xac4f
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 13 (button 'b_fan0'): x=334, y=81, w=73, h=30, name hash=0xd487af04
; flags=0x37, aph=127, events: touch_release=0xacb9
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="已开启"
; touch_release reports to the host: page <page>, widget 1
; 00b0e9:  00 00 00 00 01 04                                |......|
; 00b0f9:  a3 10                                            |..|

; touch_release
.org 0xacb9
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
; flags=0x37, aph=127, events: touch_release=0xad3d
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="退出"
; touch_release reports to the host: page <page>, widget 4
; 00b13d:  00 00 00 00 01 04                                |......|
; 00b14d:  a3 10                                            |..|

; touch_release
.org 0xad3d
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
; flags=0x37, aph=127, events: touch_release=0xae0f
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="一键加热"
; touch_release reports to the host: page <page>, widget 2
; 00b191:  00 00 00 00 01 04                                |......|
; 00b1a1:  a3 10                                            |..|

; touch_release
.org 0xae0f
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 21 (button 'b1'): x=239, y=226, w=73, h=30, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0xae79
; borderc=0x0000, picc=65138, picc2=33280, pco=0x10a3, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="冷却"
; touch_release reports to the host: page <page>, widget 3
; 00b1e5:  00 00 00 00 01 04                                |......|
; 00b1f5:  a3 10                                            |..|

; touch_release
.org 0xae79
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
.org 0xaed9
    click b0, 1
    up

; touch_release
.org 0xaeee
    click b0, 0
    down

; object id 279 (text 'bed_target'): x=181, y=82, w=45, h=30, name hash=0x5af95597
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0℃"

; touch_press
.org 0xaf09
    click b1, 1
    up

; touch_release
.org 0xaf1e
    click b1, 0

; data after the object structs, 519 bytes (9 trailing zero bytes dropped)
; 00b205:  00 00 00 00 e5 b7 b2 e5 bc 80 e5 90 af 00 7f 00  |................|
; 00b215:  00 00 00 00 88 00 74 00 6d 00 1e 00 f4 00 91 00  |......t.m.......|
; 00b225:  00 00 00 00 03 00 00 00 00 00 00 00 e8 07 00 01  |................|
; 00b235:  00 00 2c 01 7c 3a 00 00 01 00 00 00 00 00 00 00  |..,.|:..........|
; 00b245:  74 08 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 00b255:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00b265:  00 00 7f 00 00 00 00 00 13 00 96 00 e5 b7 b2 e5  |................|
; 00b275:  bc 80 e5 90 af 00 00 00 03 00 00 00 00 00 00 00  |................|
; 00b285:  ff ff 02 01 00 00 2c 01 ac 3b 00 00 01 00 00 00  |......,..;......|
; 00b295:  00 00 00 00 74 09 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00b2a5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00b2b5:  00 00 00 00 00 00 7f 00 00 00 00 00 1d 00 b8 00  |................|
; 00b2c5:  68 00 1e 00 84 00 d5 00 00 00 00 00 03 00 00 00  |h...............|
; 00b2d5:  00 00 00 00 e9 80 80 e5 87 ba 00 01 dc 3c 00 00  |.............<..|
; 00b2e5:  01 00 00 00 00 00 00 00 74 0a 01 00 00 00 00 00  |........t.......|
; 00b2f5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00b305:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00b315:  88 00 95 00 6d 00 1e 00 f4 00 b2 00 00 00 00 00  |....m...........|
; 00b325:  03 00 00 00 00 00 00 00 e8 07 00 01 00 00 2c 01  |..............,.|
; 00b335:  0c 3e 00 00 01 00 00 00 00 00 00 00 e4 b8 80 e9  |.>..............|
; 00b345:  94 ae e5 8a a0 e7 83 ad 00 00 00 00 00 00 00 00  |................|
; 00b355:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00b365:  00 00 00 00 fc 00 30 00 50 00 1e 00 4b 01 4d 00  |......0.P...K.M.|
; 00b375:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00b385:  00 00 2c 01 3c 3f 00 00 01 00 00 00 00 00 00 00  |..,.<?..........|
; 00b395:  74 0e 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 00b3a5:  00 00 00 00 e5 86 b7 e5 8d b4 00 00 00 00 00 00  |................|
; 00b3b5:  00 00 7f 00 00 00 00 00 fc 00 52 00 50 00 1e 00  |..........R.P...|
; 00b3c5:  4b 01 6f 00 00 00 00 00 03 00 00 00 00 00 00 00  |K.o.............|
; 00b3d5:  ff ff 02 01 00 00 2c 01 6c 40 00 00 01 00 00 00  |......,.l@......|
; 00b3e5:  00 00 00 00 74 10 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00b3f5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00b405:  00 00 00 00 00 00 7f                             |.......|
