; page 7 'guide_wifi': 25 objects

; object address table, 25 objects, block loaded at 0xa3a4
.dd 0xa408, 0x8c0, 0xa448, 0xa49c, 0xa4f0, 0x914, 0x968, 0xa544
.dd 0xa598, 0x9bc, 0xa10, 0xa64, 0xab8, 0xb0c, 0xb48, 0xb84
.dd 0xbc0, 0xbfc, 0xc38, 0xc74, 0xcb0, 0xcec, 0xd40, 0xa5ec
.dd 0xa60c

; object id 0 (page 'guide_wifi'): x=0, y=0, w=480, h=272, name hash=0x90676798
; flags=0x37, aph=127, events: event_3=0xd23b
; sta=2, pic=6
; 00d94e:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xd23b
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0xdfaa
    ref 23
    ref 24
    doevents
    down
    up

; object id 257 (button 'b0'): x=205, y=59, w=47, h=29, name hash=0xce1a7436
; borderc=0x0000, picc=7, picc2=7, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0xd281
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 2 (text 't0'): x=29, y=14, w=100, h=30, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="网络选择"

; object id 3 (button 'b1'): x=294, y=220, w=75, h=33, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0xd305
; borderc=0x0000, picc=6, picc2=7, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="上一步"
; touch_release reports to the host: page <page>, widget 1
; 00d9f2:  ff ff                                            |..|

; touch_release
.org 0xd305
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b2'): x=376, y=220, w=75, h=33, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0xd36f
; borderc=0x0000, picc=6, picc2=7, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="结束"
; touch_release reports to the host: page <page>, widget 2
; 00da46:  ff ff                                            |..|

; touch_release
.org 0xd36f
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 261 (button 'b3'): x=270, y=190, w=25, h=26, name hash=0x54ab59be
; borderc=0x0000, picc=14, picc2=14, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0xd3d9
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 262 (button 'b4'): x=270, y=220, w=25, h=26, name hash=0x13670461
; borderc=0x0000, picc=14, picc2=14, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4

; touch_release
.org 0xd443
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

; object id 7 (text 't3'): x=45, y=58, w=100, h=30, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="无线局域网"

; object id 8 (text 't4'): x=45, y=83, w=100, h=30, name hash=0x1d54e28e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="我的网络"

; object id 265 (text 'wifi_0'): x=46, y=131, w=162, h=30, name hash=0x259889c
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 5

; touch_release
.org 0xd4e1
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 266 (text 'wifi_2'): x=46, y=197, w=162, h=30, name hash=0x5019fb17
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0xd54b
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 267 (text 'wifi_3'): x=46, y=230, w=162, h=30, name hash=0xfb594c09
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 8

; touch_release
.org 0xd5b5
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 268 (text 'wifi_1'): x=46, y=164, w=162, h=30, name hash=0xa9193f82
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0xd61f
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
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
    timer

; object id 269 (crop 'q0'): x=209, y=135, w=22, h=24, name hash=0x32aa1f99

; object id 270 (crop 'q1'): x=209, y=170, w=22, h=24, name hash=0x44c504e1

; object id 271 (crop 'q2'): x=209, y=204, w=22, h=24, name hash=0xde742969

; object id 272 (crop 'q3'): x=209, y=238, w=22, h=24, name hash=0xa81b3211

; object id 273 (crop 'q4'): x=234, y=135, w=30, h=24, name hash=0xefd76fce

; object id 274 (crop 'q5'): x=234, y=170, w=30, h=24, name hash=0x99b874b6

; object id 275 (crop 'q6'): x=234, y=205, w=30, h=24, name hash=0x309593e

; object id 276 (crop 'q7'): x=234, y=240, w=30, h=24, name hash=0x75664246

; object id 277 (text 't1'): x=284, y=56, w=155, h=45, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="IP:0.0.0.0"

; object id 278 (text 't2'): x=284, y=104, w=155, h=45, name hash=0x2cf7a429
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="MAC:0:0:0:0:0"

; object id 23 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0xd784
; tim=1000, en=1

; timer
.org 0xd784
    if global_1c <= 0 then jump lbl_d7e0
    if global_20 <= 0 then jump lbl_d7e0
    global_20--
    if global_20 != 0 then jump lbl_d7e0
    dim = global_30

lbl_d7e0:
    down
    up

; object id 24 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0xd7fa

; touch_release
.org 0xd7fa
    global_20 = global_18
    dims = global_2c

; data after the object structs, 1123 bytes (5 trailing zero bytes dropped)
; 00db3e:  00 00 00 00 e7 bd 91 e7 bb 9c e9 80 89 e6 8b a9  |................|
; 00db4e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00db5e:  00 00 00 00 13 00 96 00 e5 b7 b2 e5 bc 80 e5 90  |................|
; 00db6e:  af 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00db7e:  00 00 2c 01 ac 3b 00 00 01 00 00 00 00 00 00 00  |..,..;..........|
; 00db8e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00db9e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00dbae:  00 00 00 00 00 00 00 00 1d 00 b8 00 68 00 1e 00  |............h...|
; 00dbbe:  84 00 d5 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 00dbce:  e9 80 80 e5 87 ba 00 01 dc 3c 00 00 01 00 00 00  |.........<......|
; 00dbde:  00 00 00 00 74 0a 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00dbee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00dbfe:  00 00 00 00 00 00 7f 00 00 00 00 00 88 00 95 00  |................|
; 00dc0e:  6d 00 1e 00 f4 00 b2 00 00 00 00 00 03 00 00 00  |m...............|
; 00dc1e:  00 00 00 00 e8 07 00 01 00 00 2c 01 0c 3e 00 00  |..........,..>..|
; 00dc2e:  01 00 00 00 00 00 00 00 e4 b8 80 e9 94 ae e5 8a  |................|
; 00dc3e:  a0 e7 83 ad 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00dc4e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00dc5e:  fc 00 30 00 50 00 1e 00 4b 01 4d 00 00 00 00 00  |..0.P...K.M.....|
; 00dc6e:  03 00 00 00 e4 b8 8a e4 b8 80 e6 ad a5 00 2c 01  |..............,.|
; 00dc7e:  3c 3f 00 00 01 00 00 00 00 00 00 00 74 0e 01 00  |<?..........t...|
; 00dc8e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00dc9e:  e5 86 b7 e5 8d b4 00 00 00 00 00 00 00 00 7f 00  |................|
; 00dcae:  00 00 00 00 fc 00 52 00 50 00 1e 00 4b 01 6f 00  |......R.P...K.o.|
; 00dcbe:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00dcce:  00 00 2c 01 6c 40 00 00 01 00 00 00 e7 bb 93 e6  |..,.l@..........|
; 00dcde:  9d 9f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00dcee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00dcfe:  00 00 7f 00 00 00 00 00 00 00 00 00 6d 00 1e 00  |............m...|
; 00dd0e:  f4 00 d5 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 00dd1e:  e8 07 00 01 00 00 2c 01 9c 41 00 00 01 00 00 00  |......,..A......|
; 00dd2e:  00 00 00 00 74 11 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00dd3e:  00 00 00 00 e6 97 a0 e7 ba bf e5 b1 80 e5 9f 9f  |................|
; 00dd4e:  e7 bd 91 00 00 00 7f 00 00 00 00 00 fc 00 74 00  |..............t.|
; 00dd5e:  50 00 1e 00 4b 01 91 00 00 00 00 00 03 00 00 00  |P...K...........|
; 00dd6e:  00 00 00 00 ff ff 02 01 00 00 2c 01 cc 42 00 00  |..........,..B..|
; 00dd7e:  01 00 00 00 00 00 00 00 74 12 01 00 00 00 00 00  |........t.......|
; 00dd8e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00dd9e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00ddae:  ef 00 00 00 4e 00 1e 00 3c 01 1d 00 00 00 00 00  |....N...<.......|
; 00ddbe:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 00ddce:  fc 43 00 00 01 00 00 00 00 00 00 00 74 13 01 00  |.C..........t...|
; 00ddde:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00ddee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00ddfe:  00 00 00 00 4e 01 74 00 8d 00 1e 00 da 01 91 00  |....N.t.........|
; 00de0e:  00 00 00 00 03 00 00 00 00 00 00 00 72 fe 00 01  |............r...|
; 00de1e:  00 00 2c 01 2c 45 00 00 01 00 00 00 00 00 00 00  |..,.,E..........|
; 00de2e:  74 16 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 00de3e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00de4e:  00 00 7f 00 00 00 00 00 b5 00 30 00 2d 00 1e 00  |..........0.-...|
; 00de5e:  e1 00 4d 00 00 00 00 00 03 00 00 00 00 00 00 00  |..M.............|
; 00de6e:  e0 ff 00 01 e6 88 91 e7 9a 84 e7 bd 91 e7 bb 9c  |................|
; 00de7e:  00 00 00 00 74 17 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00de8e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00de9e:  00 00 00 00 00 00 7f 00 00 00 00 00 b5 00 52 00  |..............R.|
; 00deae:  2d 00 1e 00 e1 00 6f 00 00 00 00 00 03 00 00 00  |-.....o.........|
; 00debe:  00 00 00 00 e8 07 00 01 00 00 2c 01 8c 47 00 00  |..........,..G..|
; 00dece:  01 00 00 00 00 00 00 00 62 01 01 00 00 00 00 00  |........b.......|
; 00dede:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00deee:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00defe:  b0 00 3f 00 7d 00 25 00 2c 01 63 00 00 00 00 00  |..?.}.%.,.c.....|
; 00df0e:  00 00 00 00 00 00 03 00 05 00 ff ff ff ff 01 01  |................|
; 00df1e:  00 00 64 00 bc 48 00 00 01 00 00 00 62 02 01 00  |..d..H......b...|
; 00df2e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00df3e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00df4e:  00 00 00 00 27 00 3f 00 7d 00 25 00 a3 00 63 00  |....'.?.}.%...c.|
; 00df5e:  00 00 00 00 00 00 00 00 00 00 05 00 05 00 ff ff  |................|
; 00df6e:  ff ff 01 01 00 00 64 00 24 49 00 00 01 00 00 00  |......d.$I......|
; 00df7e:  62 03 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 00df8e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00df9e:  00 00 7f                                         |...|
