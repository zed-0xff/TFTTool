; global data image and start-up code

; 44 strings in the global data image (offset: text)
;   0x3844: "eth0_IP"
;   0x3aa4: "192.168.XXX"
;   0x3bd4: "wlan0_IP"
;   0x3e34: "192.168.XXX"
;   0x4424: "V1.0"
;   0x4d5c: "ZCSW12-2.4G"
;   0x4e8c: "ZCSW12-2.4G"
;   0x4fbc: "ZCSW12-2.4G"
;   0x50ec: "ZCSW12-2.4G"
;   0x521c: "IP:0.0.0.0"
;   0x534c: "MAC:0:0:0:0:0"
;   0x547c: "192.168.1.1"
;   0x61bc: "2h4m"
;   0x68e4: "0h0m"
;   0x6a14: "0h0m"
;   0x6b44: "600mm/s"
;   0x6c74: "0.5mm"
;   0x7464: "ram/160.jpg"
;   0x796c: "100%"
;   0x7a9c: "100%"
;   0x7ea1: " / 65"
;   0x7fd2: " / 165"
;   0x8694: "English"
;   0x87cc: "Deutsch"
;   0x8834: "Espa"
;   0x889c: "Fran"
;   0x8904: "Portugu"
;   0x896c: "Italiano"
;   0x8a3c: "IP:0.0.0.0"
;   0x8b6c: "MAC:0:0:0:0:0"
;   0x8d6c: "ZCSW12-2.4G"
;   0x8e9c: "ZCSW12-2.4G"
;   0x8fcc: "ZCSW12-2.4G"
;   0x90fc: "ZCSW12-2.4G"
;   0x922c: "-46dB"
;   0x935c: "-46dB"
;   0x948c: "-46dB"
;   0x95bc: "-46dB"
;   0xa147: "2`9;"
;   0xa2bd: ".DYL1"
;   0xa2d7: "0bIt"
;   0xa2f5: "dMN4f2"
;   0xa303: "&Uo7"
;   0xa31c: "VyCL"

; header (40 bytes): 0x4 0x24 0x4 0x28 0xa0c4 0xa0ec 0x192 0xa27e 0x128

; global variables (address: initial value, number of uses in the code)
;   global_0: 0  (51 uses)
;   global_c: 0  (7 uses)
;   global_10: 0  (2 uses)
;   global_14: 1  (755 uses)
;   global_18: 0  (157 uses)
;   global_1c: 0  (77 uses)
;   global_20: 0  (326 uses)
;   global_2c: 100  (153 uses)
;   global_30: 0  (62 uses)

; objects with a struct in the image (image offset = address + 40)

; object at 0x38: text id 257 'extruder_temp' (page 2), 84 bytes
; flags=0x37, aph=127, x=136, y=48, w=45, h=30, endx=180, endy=77
; sta=3, font=0, pco=0xffe0, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0x8c: text id 258 'hot_bed_temp' (page 2), 84 bytes
; flags=0x37, aph=127, x=136, y=82, w=45, h=30, endx=180, endy=111
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0xe0: text id 259 't0' (page 2), 84 bytes
; flags=0x37, aph=127, x=53, y=48, w=80, h=30, endx=132, endy=77
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="喷头温度："

; object at 0x134: text id 260 't1' (page 2), 84 bytes
; flags=0x37, aph=127, x=53, y=82, w=80, h=30, endx=132, endy=111
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="热床温度："

; object at 0x188: text id 261 't2' (page 2), 84 bytes
; flags=0x37, aph=127, x=22, y=116, w=111, h=30, endx=132, endy=145
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="eth0_IP地址："

; object at 0x1dc: text id 262 't3' (page 2), 84 bytes
; flags=0x37, aph=127, x=160, y=0, w=78, h=30, endx=237, endy=29
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="测试模式"

; object at 0x230: text id 263 'eth0_ip' (page 2), 84 bytes
; flags=0x37, aph=127, x=136, y=116, w=109, h=30, endx=244, endy=145
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="192.168.XXX"

; object at 0x284: text id 264 't5' (page 2), 84 bytes
; flags=0x37, aph=127, x=19, y=150, w=114, h=30, endx=132, endy=179
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="wlan0_IP地址："

; object at 0x2d8: text id 265 't7' (page 2), 84 bytes
; flags=0x37, aph=127, x=29, y=184, w=104, h=30, endx=132, endy=213
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="检测引脚状态："

; object at 0x32c: text id 266 'wlan0_ip' (page 2), 84 bytes
; flags=0x37, aph=127, x=136, y=149, w=109, h=30, endx=244, endy=178
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="192.168.XXX"

; object at 0x380: text id 267 't9' (page 2), 84 bytes
; flags=0x37, aph=127, x=252, y=48, w=80, h=30, endx=331, endy=77
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="LED开关："

; object at 0x3d4: text id 270 't10' (page 2), 84 bytes
; flags=0x37, aph=127, x=252, y=82, w=80, h=30, endx=331, endy=111
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="风扇0开关："

; object at 0x428: text id 272 'check_status' (page 2), 84 bytes
; flags=0x37, aph=127, x=136, y=184, w=109, h=30, endx=244, endy=213
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="已检测到"

; object at 0x47c: text id 273 't11' (page 2), 84 bytes
; flags=0x37, aph=127, x=252, y=116, w=80, h=30, endx=331, endy=145
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="风扇1开关："

; object at 0x4d0: text id 274 'test_vison' (page 2), 84 bytes
; flags=0x37, aph=127, x=239, y=0, w=78, h=30, endx=316, endy=29
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="V1.0"

; object at 0x524: text id 275 't4' (page 2), 84 bytes
; flags=0x37, aph=127, x=334, y=116, w=141, h=30, endx=474, endy=145
; sta=3, font=0, pco=0xfe72, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="喷头温度>50℃时开启"

; object at 0x578: text id 278 'extru_target' (page 2), 84 bytes
; flags=0x37, aph=127, x=181, y=48, w=45, h=30, endx=225, endy=77, events: touch_press=0xaed9, touch_release=0xaeee
; sta=3, font=0, pco=0xffe0, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100℃"

; object at 0x5cc: text id 279 'bed_target' (page 2), 84 bytes
; flags=0x37, aph=127, x=181, y=82, w=45, h=30, endx=225, endy=111, events: touch_press=0xaf09, touch_release=0xaf1e
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0℃"

; object at 0x620: button id 257 'b1' (page 6), 84 bytes
; flags=0x37, aph=127, x=176, y=63, w=125, h=37, endx=300, endy=99, events: touch_release=0xc71e
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="英文"
; 00068c:  ff ff                                            |..|

; object at 0x674: button id 258 'b0' (page 6), 84 bytes
; flags=0x37, aph=127, x=39, y=63, w=125, h=37, endx=163, endy=99, events: touch_release=0xc7af
; borderc=0x0000, picc=5, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="中文"
; 0006e0:  ff ff                                            |..|

; object at 0x6c8: button id 259 'b2' (page 6), 84 bytes
; flags=0x37, aph=127, x=313, y=63, w=125, h=37, endx=437, endy=99, events: touch_release=0xc840
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="日语"
; 000734:  ff ff                                            |..|

; object at 0x71c: button id 260 'b3' (page 6), 84 bytes
; flags=0x37, aph=127, x=39, y=115, w=125, h=37, endx=163, endy=151, events: touch_release=0xc8d1
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="德语"
; 000788:  ff ff                                            |..|

; object at 0x770: button id 261 'b4' (page 6), 84 bytes
; flags=0x37, aph=127, x=176, y=115, w=125, h=37, endx=300, endy=151, events: touch_release=0xc962
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="西班牙语"
; 0007dc:  ff ff                                            |..|

; object at 0x7c4: button id 262 'b5' (page 6), 84 bytes
; flags=0x37, aph=127, x=314, y=115, w=125, h=37, endx=438, endy=151, events: touch_release=0xc9f3
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="法语"
; 000830:  ff ff                                            |..|

; object at 0x818: button id 265 'b7' (page 6), 84 bytes
; flags=0x37, aph=127, x=39, y=167, w=125, h=37, endx=163, endy=203, events: touch_release=0xcb08
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="葡萄牙语"
; 000884:  ff ff                                            |..|

; object at 0x86c: button id 266 'b8' (page 6), 84 bytes
; flags=0x37, aph=127, x=176, y=167, w=125, h=37, endx=300, endy=203, events: touch_release=0xcb99
; borderc=0x0000, picc=3, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="意大利语"
; 0008d8:  ff ff                                            |..|

; object at 0x8c0: button id 257 'b0' (page 7), 84 bytes
; flags=0x37, aph=127, x=205, y=59, w=47, h=29, endx=251, endy=87, events: touch_release=0xd281
; borderc=0x0000, picc=7, picc2=7, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 00092c:  ff ff                                            |..|

; object at 0x914: button id 261 'b3' (page 7), 84 bytes
; flags=0x37, aph=127, x=270, y=190, w=25, h=26, endx=294, endy=215, events: touch_release=0xd3d9
; borderc=0x0000, picc=14, picc2=14, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 000980:  ff ff                                            |..|

; object at 0x968: button id 262 'b4' (page 7), 84 bytes
; flags=0x37, aph=127, x=270, y=220, w=25, h=26, endx=294, endy=245, events: touch_release=0xd443
; borderc=0x0000, picc=14, picc2=14, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0009d4:  ff ff                                            |..|

; object at 0x9bc: text id 265 'wifi_0' (page 7), 84 bytes
; flags=0x37, aph=127, x=46, y=131, w=162, h=30, endx=207, endy=160, events: touch_release=0xd4e1
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0xa10: text id 266 'wifi_2' (page 7), 84 bytes
; flags=0x37, aph=127, x=46, y=197, w=162, h=30, endx=207, endy=226, events: touch_release=0xd54b
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0xa64: text id 267 'wifi_3' (page 7), 84 bytes
; flags=0x37, aph=127, x=46, y=230, w=162, h=30, endx=207, endy=259, events: touch_release=0xd5b5
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0xab8: text id 268 'wifi_1' (page 7), 84 bytes
; flags=0x37, aph=127, x=46, y=164, w=162, h=30, endx=207, endy=193, events: touch_release=0xd61f
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0xb0c: crop id 269 'q0' (page 7), 60 bytes
; flags=0x37, aph=127, x=209, y=135, w=22, h=24, endx=230, endy=158
; 000b68:  00 00 00 00 09 00 00 00                          |........|

; object at 0xb48: crop id 270 'q1' (page 7), 60 bytes
; flags=0x37, aph=127, x=209, y=170, w=22, h=24, endx=230, endy=193
; 000ba4:  00 00 00 00 09 00 00 00                          |........|

; object at 0xb84: crop id 271 'q2' (page 7), 60 bytes
; flags=0x37, aph=127, x=209, y=204, w=22, h=24, endx=230, endy=227
; 000be0:  00 00 00 00 09 00 00 00                          |........|

; object at 0xbc0: crop id 272 'q3' (page 7), 60 bytes
; flags=0x37, aph=127, x=209, y=238, w=22, h=24, endx=230, endy=261
; 000c1c:  00 00 00 00 09 00 00 00                          |........|

; object at 0xbfc: crop id 273 'q4' (page 7), 60 bytes
; flags=0x37, aph=127, x=234, y=135, w=30, h=24, endx=263, endy=158
; 000c58:  00 00 00 00 0d 00 00 00                          |........|

; object at 0xc38: crop id 274 'q5' (page 7), 60 bytes
; flags=0x37, aph=127, x=234, y=170, w=30, h=24, endx=263, endy=193
; 000c94:  00 00 00 00 0d 00 00 00                          |........|

; object at 0xc74: crop id 275 'q6' (page 7), 60 bytes
; flags=0x37, aph=127, x=234, y=205, w=30, h=24, endx=263, endy=228
; 000cd0:  00 00 00 00 0d 00 00 00                          |........|

; object at 0xcb0: crop id 276 'q7' (page 7), 60 bytes
; flags=0x37, aph=127, x=234, y=240, w=30, h=24, endx=263, endy=263
; 000d0c:  00 00 00 00 0d 00 00 00                          |........|

; object at 0xcec: text id 277 't1' (page 7), 84 bytes
; flags=0x37, aph=127, x=284, y=56, w=155, h=45, endx=438, endy=100
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="IP:0.0.0.0"

; object at 0xd40: text id 278 't2' (page 7), 84 bytes
; flags=0x37, aph=127, x=284, y=104, w=155, h=45, endx=438, endy=148
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="MAC:0:0:0:0:0"

; object at 0xd94: text id 258 't0' (page 8), 84 bytes
; flags=0x37, aph=127, x=105, y=61, w=268, h=96, endx=372, endy=156
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="192.168.1.1"

; object at 0xde8: button id 257 'b2' (page 10), 84 bytes
; flags=0x37, aph=127, x=407, y=213, w=69, h=54, endx=475, endy=266, events: touch_release=0xef5d
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 000e54:  ff ff                                            |..|

; object at 0xe3c: waveform id 258 's0' (page 10), 92 bytes
; flags=0x37, aph=80, x=116, y=50, w=271, h=200, endx=386, endy=249
; 000e98:  00 00 00 00 03 01 02 00 00 00 00 00 00 00 00 00  |................|
; 000ea8:  00 00 1a db bf 07 00 00 00 00 00 00 4e 00 00 00  |............N...|
; 000eb8:  e0 02 00 00 c0 a0 00 00                          |........|

; object at 0xe98: crop id 263 'q8' (page 10), 60 bytes
; flags=0x37, aph=127, x=418, y=5, w=45, h=30, endx=462, endy=34, events: touch_release=0xf191
; 000ef4:  00 00 00 00 15 00 00 00                          |........|

; object at 0xed4: text id 266 'hot_bed_temp' (page 10), 84 bytes
; flags=0x37, aph=127, x=411, y=166, w=33, h=30, endx=443, endy=195, events: touch_press=0xf2f9, touch_release=0xf30e
; sta=3, font=2, pco=0x07bf, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0xf28: text id 267 'extruder_temp' (page 10), 84 bytes
; flags=0x37, aph=127, x=410, y=90, w=33, h=30, endx=442, endy=119, events: touch_press=0xf329, touch_release=0xf33e
; sta=3, font=2, pco=0xdb1a, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0xf7c: text id 268 'extru_target' (page 10), 84 bytes
; flags=0x37, aph=127, x=443, y=90, w=33, h=30, endx=475, endy=119, events: touch_press=0xf359, touch_release=0xf36e
; sta=3, font=2, pco=0xdb1a, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0xfd0: text id 269 'bed_target' (page 10), 84 bytes
; flags=0x37, aph=127, x=444, y=166, w=33, h=30, endx=476, endy=195, events: touch_press=0xf389, touch_release=0xf39e
; sta=3, font=2, pco=0x07bf, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x1024: button id 265 'b9' (page 11), 84 bytes
; flags=0x37, aph=127, x=443, y=214, w=36, h=53, endx=478, endy=266, events: touch_release=0xfd15
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001090:  ff ff                                            |..|

; object at 0x1078: button id 266 'b8' (page 11), 84 bytes
; flags=0x37, aph=127, x=444, y=160, w=36, h=53, endx=479, endy=212, events: touch_release=0xfd7f
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0010e4:  ff ff                                            |..|

; object at 0x10cc: button id 267 'b10' (page 11), 84 bytes
; flags=0x37, aph=127, x=444, y=46, w=36, h=53, endx=479, endy=98, events: touch_release=0xfde9
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001138:  ff ff                                            |..|

; object at 0x1120: button id 302 'b0' (page 11), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=137, h=34, endx=202, endy=40, events: touch_release=0x1077b
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 00118c:  ff ff                                            |..|

; object at 0x1174: button id 303 'b1' (page 11), 84 bytes
; flags=0x37, aph=127, x=202, y=7, w=137, h=34, endx=338, endy=40, events: touch_release=0x107e7
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0011e0:  ff ff                                            |..|

; object at 0x11c8: button id 304 'b17' (page 11), 84 bytes
; flags=0x37, aph=127, x=337, y=7, w=137, h=34, endx=473, endy=40, events: touch_release=0x10853
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 001234:  ff ff                                            |..|

; object at 0x121c: button id 260 'b0' (page 12), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=137, h=34, endx=202, endy=40, events: touch_release=0x140b6
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 001288:  ff ff                                            |..|

; object at 0x1270: button id 261 'b1' (page 12), 84 bytes
; flags=0x37, aph=127, x=202, y=7, w=137, h=34, endx=338, endy=40, events: touch_release=0x14122
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0012dc:  ff ff                                            |..|

; object at 0x12c4: button id 262 'b17' (page 12), 84 bytes
; flags=0x37, aph=127, x=337, y=7, w=137, h=34, endx=473, endy=40, events: touch_release=0x1418e
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 001330:  ff ff                                            |..|

; object at 0x1318: button id 260 'b0' (page 13), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=137, h=34, endx=202, endy=40, events: touch_release=0x14d52
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 001384:  ff ff                                            |..|

; object at 0x136c: button id 261 'b1' (page 13), 84 bytes
; flags=0x37, aph=127, x=202, y=7, w=137, h=34, endx=338, endy=40, events: touch_release=0x14dbe
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0013d8:  ff ff                                            |..|

; object at 0x13c0: button id 262 'b17' (page 13), 84 bytes
; flags=0x37, aph=127, x=337, y=7, w=137, h=34, endx=473, endy=40, events: touch_release=0x14e2a
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 00142c:  ff ff                                            |..|

; object at 0x1414: button id 267 'b0' (page 15), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=137, h=34, endx=202, endy=40, events: touch_release=0x16b63
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 001480:  ff ff                                            |..|

; object at 0x1468: button id 268 'b1' (page 15), 84 bytes
; flags=0x37, aph=127, x=202, y=7, w=137, h=34, endx=338, endy=40, events: touch_release=0x16bcf
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0014d4:  ff ff                                            |..|

; object at 0x14bc: button id 269 'b17' (page 15), 84 bytes
; flags=0x37, aph=127, x=337, y=7, w=137, h=34, endx=473, endy=40, events: touch_release=0x16c3b
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 001528:  ff ff                                            |..|

; object at 0x1510: button id 278 'b7' (page 15), 84 bytes
; flags=0x37, aph=127, x=442, y=159, w=38, h=56, endx=479, endy=214, events: touch_release=0x16f10
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 00157c:  ff ff                                            |..|

; object at 0x1564: button id 279 'b8' (page 15), 84 bytes
; flags=0x37, aph=127, x=443, y=214, w=36, h=55, endx=478, endy=268, events: touch_release=0x16f7a
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0015d0:  ff ff                                            |..|

; object at 0x15b8: text id 261 't0' (page 20), 84 bytes
; flags=0x37, aph=127, x=340, y=144, w=50, h=26, endx=389, endy=169
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"

; object at 0x160c: text id 262 't1' (page 20), 84 bytes
; flags=0x37, aph=127, x=420, y=144, w=50, h=26, endx=469, endy=169
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"

; object at 0x1660: text id 265 't2' (page 20), 84 bytes
; flags=0x37, aph=127, x=121, y=53, w=344, h=34, endx=464, endy=86
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件名"

; object at 0x16b4: text id 270 't3' (page 20), 84 bytes
; flags=0x37, aph=127, x=488, y=174, w=111, h=26, endx=598, endy=199, events: touch_release=0x1b6ed
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="延时摄影"

; object at 0x1708: button id 271 'b0' (page 20), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=137, h=34, endx=202, endy=40, events: touch_release=0x1b757
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 001774:  ff ff                                            |..|

; object at 0x175c: button id 272 'b1' (page 20), 84 bytes
; flags=0x37, aph=127, x=202, y=7, w=137, h=34, endx=338, endy=40, events: touch_release=0x1b7c3
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0017c8:  ff ff                                            |..|

; object at 0x17b0: button id 273 'b17' (page 20), 84 bytes
; flags=0x37, aph=127, x=337, y=7, w=137, h=34, endx=473, endy=40, events: touch_release=0x1b82f
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 00181c:  ff ff                                            |..|

; object at 0x1804: text id 257 't0' (page 21), 84 bytes
; flags=0x37, aph=127, x=17, y=14, w=271, h=34, endx=287, endy=47
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件名"

; object at 0x1858: text id 258 't2' (page 21), 84 bytes
; flags=0x37, aph=127, x=37, y=74, w=85, h=21, endx=121, endy=94
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0h0m"

; object at 0x18ac: text id 259 't3' (page 21), 84 bytes
; flags=0x37, aph=127, x=38, y=134, w=85, h=21, endx=122, endy=154
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0h0m"

; object at 0x1900: text id 260 't4' (page 21), 84 bytes
; flags=0x37, aph=127, x=154, y=74, w=70, h=21, endx=223, endy=94
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="600mm/s"

; object at 0x1954: text id 261 't5' (page 21), 84 bytes
; flags=0x37, aph=127, x=154, y=134, w=70, h=21, endx=223, endy=154
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0.5mm"

; object at 0x19a8: text id 262 't6' (page 21), 84 bytes
; flags=0x37, aph=127, x=346, y=233, w=53, h=24, endx=398, endy=256
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="42%"

; object at 0x19fc: progress_bar id 263 'j0' (page 21), 64 bytes
; flags=0x37, aph=127, x=22, y=238, w=286, h=13, endx=307, endy=250
; 001a58:  00 00 00 00 00 00 00 64 2d 63 bf 07              |.......d-c..|

; object at 0x1a3c: button id 264 'b3' (page 21), 84 bytes
; flags=0x37, aph=127, x=21, y=169, w=48, h=46, endx=68, endy=214, events: touch_release=0x1c69a
; borderc=0x0000, picc=33, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001aa8:  ff ff                                            |..|

; object at 0x1a90: button id 267 'b2' (page 21), 84 bytes
; flags=0x37, aph=127, x=407, y=213, w=69, h=54, endx=475, endy=266, events: touch_release=0x1c7d8
; borderc=0x0000, picc=34, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001afc:  ff ff                                            |..|

; object at 0x1ae4: crop id 268 'q8' (page 21), 60 bytes
; flags=0x37, aph=127, x=418, y=5, w=45, h=30, endx=462, endy=34, events: touch_release=0x1c842
; 001b40:  00 00 00 00 15 00 00 00                          |........|

; object at 0x1b20: text id 271 'hot_bed_temp' (page 21), 84 bytes
; flags=0x37, aph=127, x=411, y=166, w=33, h=30, endx=443, endy=195, events: touch_press=0x1c9aa, touch_release=0x1c9bf
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0x1b74: text id 272 'extruder_temp' (page 21), 84 bytes
; flags=0x37, aph=127, x=410, y=90, w=33, h=30, endx=442, endy=119, events: touch_press=0x1c9da, touch_release=0x1c9ef
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0x1bc8: text id 273 'extru_target' (page 21), 84 bytes
; flags=0x37, aph=127, x=443, y=90, w=33, h=30, endx=475, endy=119, events: touch_press=0x1ca0a, touch_release=0x1ca1f
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x1c1c: text id 274 'bed_target' (page 21), 84 bytes
; flags=0x37, aph=127, x=444, y=166, w=33, h=30, endx=476, endy=195, events: touch_press=0x1ca3a, touch_release=0x1ca4f
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x1c70: external_picture id 279 'exp0' (page 21), 64 bytes
; flags=0x37, aph=127, x=227, y=64, w=160, h=160, endx=386, endy=223
; 001ccc:  00 00 00 00 00 00 ff 00 3c 74 00 00              |........<t..|

; object at 0x1cb0: button id 260 'b1' (page 22), 84 bytes
; flags=0x37, aph=127, x=14, y=53, w=65, h=29, endx=78, endy=81, events: touch_release=0x1d389
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001d1c:  ff ff                                            |..|

; object at 0x1d04: button id 261 'b2' (page 22), 84 bytes
; flags=0x37, aph=127, x=82, y=53, w=65, h=29, endx=146, endy=81, events: touch_release=0x1d3f3
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001d70:  ff ff                                            |..|

; object at 0x1d58: button id 262 'b3' (page 22), 84 bytes
; flags=0x37, aph=127, x=150, y=53, w=65, h=29, endx=214, endy=81, events: touch_release=0x1d45d
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001dc4:  ff ff                                            |..|

; object at 0x1dac: button id 263 'b4' (page 22), 84 bytes
; flags=0x37, aph=127, x=242, y=53, w=53, h=29, endx=294, endy=81, events: touch_release=0x1d4c7
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001e18:  ff ff                                            |..|

; object at 0x1e00: button id 264 'b5' (page 22), 84 bytes
; flags=0x37, aph=127, x=299, y=53, w=53, h=29, endx=351, endy=81, events: touch_release=0x1d531
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001e6c:  ff ff                                            |..|

; object at 0x1e54: button id 265 'b6' (page 22), 84 bytes
; flags=0x37, aph=127, x=355, y=53, w=53, h=29, endx=407, endy=81, events: touch_release=0x1d59b
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001ec0:  ff ff                                            |..|

; object at 0x1ea8: button id 266 'b7' (page 22), 84 bytes
; flags=0x37, aph=127, x=412, y=53, w=53, h=29, endx=464, endy=81, events: touch_release=0x1d605
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001f14:  ff ff                                            |..|

; object at 0x1efc: text id 268 't1' (page 22), 84 bytes
; flags=0x37, aph=127, x=82, y=94, w=65, h=38, endx=146, endy=131
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="5mm"

; object at 0x1f50: text id 271 't2' (page 22), 84 bytes
; flags=0x37, aph=127, x=321, y=92, w=65, h=40, endx=385, endy=131
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100%"

; object at 0x1fa4: text id 274 't3' (page 22), 84 bytes
; flags=0x37, aph=127, x=321, y=146, w=65, h=40, endx=385, endy=185
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100%"

; object at 0x1ff8: slider id 277 'h0' (page 22), 84 bytes
; flags=0x37, aph=127, x=15, y=222, w=448, h=18, endx=462, endy=239, events: touch_release=0x1d957
; 002054:  00 00 00 00 00 01 00 ff ff 64 2d 63 ff ff 64 00  |.........d-c..d.|
; 002064:  64 00 00 00 00 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|

; object at 0x204c: number id 281 'n0' (page 22), 80 bytes
; flags=0x37, aph=127, x=344, y=194, w=100, h=34, endx=443, endy=227
; 0020a8:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 0020b8:  64 00 00 00 00 00 00 00 01 00 00 00              |d...........|

; object at 0x209c: text id 265 't2' (page 37), 84 bytes
; flags=0x37, aph=127, x=416, y=214, w=52, h=34, endx=467, endy=247, events: touch_press=0x27aa1, touch_release=0x27ab7
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ON"

; object at 0x20f0: button id 267 'b3' (page 37), 84 bytes
; flags=0x37, aph=127, x=78, y=52, w=70, h=35, endx=147, endy=86, events: touch_release=0x27b49
; borderc=0x0000, picc=41, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 00215c:  ff ff                                            |..|

; object at 0x2144: button id 268 'b4' (page 37), 84 bytes
; flags=0x37, aph=127, x=148, y=52, w=70, h=35, endx=217, endy=86, events: touch_release=0x27bb3
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0021b0:  ff ff                                            |..|

; object at 0x2198: button id 269 'b5' (page 37), 84 bytes
; flags=0x37, aph=127, x=218, y=52, w=70, h=35, endx=287, endy=86, events: touch_release=0x27c1d
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002204:  ff ff                                            |..|

; object at 0x21ec: button id 281 'b17' (page 37), 84 bytes
; flags=0x37, aph=127, x=288, y=52, w=70, h=35, endx=357, endy=86, events: touch_release=0x282c5
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002258:  ff ff                                            |..|

; object at 0x2240: text id 263 't3' (page 40), 84 bytes
; flags=0x37, aph=127, x=352, y=119, w=106, h=32, endx=457, endy=150, events: touch_release=0x2a960
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃ / 65℃"

; object at 0x2294: text id 264 't2' (page 40), 84 bytes
; flags=0x37, aph=127, x=352, y=61, w=106, h=32, endx=457, endy=92, events: touch_release=0x2a9e4
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100℃ / 165℃"

; object at 0x22e8: button id 265 'b5' (page 40), 84 bytes
; flags=0x37, aph=127, x=79, y=174, w=105, h=33, endx=183, endy=206, events: touch_release=0x2aa68
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="PLA预热"
; 002354:  ff ff                                            |..|

; object at 0x233c: button id 266 'b6' (page 40), 84 bytes
; flags=0x37, aph=127, x=216, y=174, w=105, h=33, endx=320, endy=206, events: touch_release=0x2aad2
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="ABS预热"
; 0023a8:  ff ff                                            |..|

; object at 0x2390: button id 271 'b3' (page 40), 84 bytes
; flags=0x37, aph=127, x=352, y=174, w=105, h=33, endx=456, endy=206, events: touch_release=0x2ac25
; borderc=0x0000, picc=44, picc2=45, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="一键冷却"
; 0023fc:  ff ff                                            |..|

; object at 0x23e4: slider id 266 'h1' (page 45), 84 bytes
; flags=0x37, aph=127, x=84, y=167, w=370, h=18, endx=453, endy=184, events: touch_release=0x2f210
; 002440:  00 00 00 00 00 01 00 ff ff 64 2d 63 ff ff 00 00  |.........d-c....|
; 002450:  64 00 00 00 00 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|

; object at 0x2438: number id 267 'n1' (page 45), 80 bytes
; flags=0x37, aph=127, x=338, y=139, w=100, h=34, endx=437, endy=172
; 002494:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 0024a4:  00 00 00 00 00 00 00 00 01 00 00 00              |............|

; object at 0x2488: text id 268 't1' (page 45), 84 bytes
; flags=0x37, aph=127, x=440, y=139, w=14, h=34, endx=453, endy=172
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="%"

; object at 0x24dc: button id 269 'b3' (page 45), 84 bytes
; flags=0x37, aph=127, x=404, y=54, w=57, h=33, endx=460, endy=86, events: touch_release=0x2f2c9
; borderc=0x0000, picc=46, picc2=46, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002548:  ff ff                                            |..|

; object at 0x2530: button id 273 'b4' (page 45), 84 bytes
; flags=0x37, aph=127, x=402, y=101, w=57, h=33, endx=458, endy=133, events: touch_release=0x2f3f2
; borderc=0x0000, picc=47, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 00259c:  ff ff                                            |..|

; object at 0x2584: text id 260 'extrude_temp' (page 46), 84 bytes
; flags=0x37, aph=127, x=206, y=144, w=33, h=30, endx=238, endy=173
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object at 0x25d8: text id 261 'extrude_target' (page 46), 84 bytes
; flags=0x37, aph=127, x=240, y=144, w=33, h=30, endx=272, endy=173
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x262c: button id 264 'b1' (page 49), 84 bytes
; flags=0x37, aph=127, x=86, y=66, w=108, h=37, endx=193, endy=102, events: touch_release=0x34b35
; borderc=0x0000, picc=51, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="English"
; 002698:  ff ff                                            |..|

; object at 0x2680: button id 265 'b0' (page 49), 84 bytes
; flags=0x37, aph=127, x=200, y=172, w=108, h=37, endx=307, endy=208, events: touch_release=0x34b84
; borderc=0x0000, picc=50, picc2=50, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="中文"
; 0026ec:  ff ff                                            |..|

; object at 0x26d4: button id 266 'b2' (page 49), 84 bytes
; flags=0x37, aph=127, x=314, y=66, w=108, h=37, endx=421, endy=102, events: touch_release=0x34bd3
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="日本語"
; 002740:  ff ff                                            |..|

; object at 0x2728: button id 267 'b3' (page 49), 84 bytes
; flags=0x37, aph=127, x=86, y=119, w=108, h=37, endx=193, endy=155, events: touch_release=0x34c22
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Deutsch"
; 002794:  ff ff                                            |..|

; object at 0x277c: button id 268 'b4' (page 49), 84 bytes
; flags=0x37, aph=127, x=200, y=119, w=108, h=37, endx=307, endy=155, events: touch_release=0x34c71
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Español"
; 0027e8:  ff ff                                            |..|

; object at 0x27d0: button id 269 'b5' (page 49), 84 bytes
; flags=0x37, aph=127, x=314, y=119, w=108, h=37, endx=421, endy=155, events: touch_release=0x34cc0
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Français"
; 00283c:  ff ff                                            |..|

; object at 0x2824: button id 271 'b7' (page 49), 84 bytes
; flags=0x37, aph=127, x=86, y=172, w=108, h=37, endx=193, endy=208, events: touch_release=0x34d79
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Português"
; 002890:  ff ff                                            |..|

; object at 0x2878: button id 272 'b8' (page 49), 84 bytes
; flags=0x37, aph=127, x=200, y=66, w=108, h=37, endx=307, endy=102, events: touch_release=0x34dc8
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Italiano"
; 0028e4:  ff ff                                            |..|

; object at 0x28cc: progress_bar id 258 'j0' (page 52), 64 bytes
; flags=0x37, aph=127, x=102, y=168, w=274, h=6, endx=375, endy=173
; 002928:  00 00 00 00 00 00 00 64 ff ff bf 07              |.......d....|

; object at 0x290c: button id 257 'b0' (page 55), 84 bytes
; flags=0x37, aph=127, x=241, y=59, w=47, h=29, endx=287, endy=87, events: touch_release=0x38bd0
; borderc=0x0000, picc=53, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002978:  ff ff                                            |..|

; object at 0x2960: text id 258 't1' (page 55), 84 bytes
; flags=0x37, aph=127, x=316, y=51, w=155, h=28, endx=470, endy=78
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="IP:0.0.0.0"

; object at 0x29b4: text id 259 't2' (page 55), 84 bytes
; flags=0x37, aph=127, x=316, y=81, w=155, h=31, endx=470, endy=111
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="MAC:0:0:0:0:0"

; object at 0x2a08: button id 268 'b3' (page 55), 84 bytes
; flags=0x37, aph=127, x=306, y=170, w=46, h=47, endx=351, endy=216, events: touch_release=0x38f7c
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002a74:  ff ff                                            |..|

; object at 0x2a5c: button id 269 'b4' (page 55), 84 bytes
; flags=0x37, aph=127, x=306, y=219, w=46, h=47, endx=351, endy=265, events: touch_release=0x38fe6
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002ac8:  ff ff                                            |..|

; object at 0x2ab0: crop id 270 'q0' (page 55), 60 bytes
; flags=0x37, aph=127, x=239, y=132, w=23, h=24, endx=261, endy=155
; 002b0c:  00 00 00 00 49 00 00 00                          |....I...|

; object at 0x2aec: crop id 271 'q1' (page 55), 60 bytes
; flags=0x37, aph=127, x=239, y=168, w=23, h=24, endx=261, endy=191
; 002b48:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x2b28: crop id 272 'q2' (page 55), 60 bytes
; flags=0x37, aph=127, x=239, y=202, w=23, h=24, endx=261, endy=225
; 002b84:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x2b64: crop id 273 'q3' (page 55), 60 bytes
; flags=0x37, aph=127, x=239, y=235, w=23, h=24, endx=261, endy=258
; 002bc0:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x2ba0: crop id 274 'q4' (page 55), 60 bytes
; flags=0x37, aph=127, x=266, y=133, w=30, h=24, endx=295, endy=156
; 002bfc:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x2bdc: crop id 275 'q5' (page 55), 60 bytes
; flags=0x37, aph=127, x=266, y=168, w=30, h=24, endx=295, endy=191
; 002c38:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x2c18: crop id 276 'q6' (page 55), 60 bytes
; flags=0x37, aph=127, x=266, y=202, w=30, h=24, endx=295, endy=225
; 002c74:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x2c54: crop id 277 'q7' (page 55), 60 bytes
; flags=0x37, aph=127, x=266, y=238, w=30, h=24, endx=295, endy=261
; 002cb0:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x2c90: text id 278 'wifi_0' (page 55), 84 bytes
; flags=0x37, aph=127, x=74, y=130, w=128, h=30, endx=201, endy=159, events: touch_release=0x39120
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x2ce4: text id 279 'wifi_2' (page 55), 84 bytes
; flags=0x37, aph=127, x=74, y=200, w=128, h=30, endx=201, endy=229, events: touch_release=0x3918a
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x2d38: text id 280 'wifi_3' (page 55), 84 bytes
; flags=0x37, aph=127, x=74, y=235, w=128, h=30, endx=201, endy=264, events: touch_release=0x391f4
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x2d8c: text id 281 'wifi_1' (page 55), 84 bytes
; flags=0x37, aph=127, x=74, y=165, w=128, h=30, endx=201, endy=194, events: touch_release=0x3925e
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x2de0: text id 282 't5' (page 55), 84 bytes
; flags=0x37, aph=127, x=202, y=131, w=37, h=30, endx=238, endy=160
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object at 0x2e34: text id 283 't6' (page 55), 84 bytes
; flags=0x37, aph=127, x=202, y=166, w=37, h=30, endx=238, endy=195
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object at 0x2e88: text id 284 't7' (page 55), 84 bytes
; flags=0x37, aph=127, x=202, y=201, w=37, h=30, endx=238, endy=230
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object at 0x2edc: text id 285 't8' (page 55), 84 bytes
; flags=0x37, aph=127, x=202, y=236, w=37, h=30, endx=238, endy=265
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object at 0x2f30: button id 288 'b1' (page 55), 84 bytes
; flags=0x37, aph=127, x=306, y=120, w=46, h=47, endx=351, endy=166, events: touch_release=0x393d5
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002f9c:  ff ff                                            |..|

; object at 0x2f84: crop id 259 'q0' (page 56), 60 bytes
; flags=0x37, aph=127, x=321, y=46, w=36, h=36, endx=356, endy=81, events: touch_release=0x3a25d
; 002fe0:  00 00 00 00 3d 00 00 00                          |....=...|

; object at 0x2fc0: button id 263 'b210' (page 56), 84 bytes
; flags=0x37, aph=127, x=385, y=240, w=59, h=29, endx=443, endy=268, events: touch_release=0x3a3fe
; borderc=0x39e7, picc=63, picc2=64, pco=0x0000, xcen=1, ycen=1, txt_maxl=8, isbr=0, txt=""

; object at 0x3014: text id 260 'hot_bed_temp' (page 62), 84 bytes
; flags=0x37, aph=127, x=206, y=171, w=33, h=30, endx=238, endy=200
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object at 0x3068: text id 261 'bed_target' (page 62), 84 bytes
; flags=0x37, aph=127, x=240, y=171, w=33, h=30, endx=272, endy=200
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="65℃"

; object at 0x30bc: text id 262 'extrude_temp' (page 62), 84 bytes
; flags=0x37, aph=127, x=206, y=135, w=33, h=30, endx=238, endy=164
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object at 0x3110: text id 263 'extrude_target' (page 62), 84 bytes
; flags=0x37, aph=127, x=240, y=135, w=33, h=30, endx=272, endy=164
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="150℃"

; object at 0x3164: button id 259 'b2' (page 64), 84 bytes
; flags=0x37, aph=127, x=200, y=63, w=80, h=42, endx=279, endy=104, events: touch_release=0x41557
; borderc=0x0000, picc=86, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""

; object at 0x31b8: button id 260 'b1' (page 64), 84 bytes
; flags=0x37, aph=127, x=118, y=63, w=80, h=42, endx=197, endy=104, events: touch_release=0x415c1
; borderc=0x0000, picc=87, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""

; object at 0x320c: button id 261 'b3' (page 64), 84 bytes
; flags=0x37, aph=127, x=280, y=63, w=80, h=42, endx=359, endy=104, events: touch_release=0x4162b
; borderc=0x0000, picc=86, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""

; object at 0x3260: text id 262 't1' (page 64), 84 bytes
; flags=0x37, aph=127, x=201, y=117, w=75, h=44, endx=275, endy=160
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0"

; object at 0x32b4: text id 260 'hot_bed_temp' (page 65), 84 bytes
; flags=0x37, aph=127, x=206, y=144, w=33, h=30, endx=238, endy=173
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object at 0x3308: text id 261 'bed_target' (page 65), 84 bytes
; flags=0x37, aph=127, x=240, y=144, w=33, h=30, endx=272, endy=173
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="65℃"

; page name hash table, 67 pages (page index: name hash, name)
;   0: 0xd35fae5a 'logo'
;   1: 0x9183548f 'starting'
;   2: 0x6f09ec26 'mks_test'
;   3: 0x170eb1dd 'error_restart'
;   4: 0x8700e563 'error_reset'
;   5: 0x12230f29 'error_tips'
;   6: 0xc89c5f9d 'guide_language'
;   7: 0x90676798 'guide_wifi'
;   8: 0x1f31f41b
;   9: 0x8efe7bd0 'if_reprint'
;   10: 0xaf3dd197 'main'
;   11: 0xd88e4d73 'file_list'
;   12: 0xc0351114 'filelist_init'
;   13: 0x0231888b 'no_udisk'
;   14: 0xf630569d 'if_delete1'
;   15: 0x424b9a4b 'timelapse_list'
;   16: 0x56ad2f03 'if_export'
;   17: 0xfea55371 'export_succeed'
;   18: 0x3eafb97c 'export_failed'
;   19: 0xce45057a 'if_delete2'
;   20: 0x86f511c0 'preview'
;   21: 0x5b0f785a 'printing'
;   22: 0x0735949d 'operate'
;   23: 0x55108463 'if_change'
;   24: 0xe60c66de 'filament_error'
;   25: 0x36571b7c 'unloading'
;   26: 0xddb532ff 'unload_finish'
;   27: 0x494e9661 'load_begin'
;   28: 0x07791db7 'no_filament'
;   29: 0x78c087a7 'loading'
;   30: 0x4b45e85c 'load_finish'
;   31: 0x07b7a05d 'load_clear'
;   32: 0x2ec115e7 'if_stop'
;   33: 0x0de9616a 'stoping'
;   34: 0xc75ad700 'if_save'
;   35: 0xbb1969cd 'saving'
;   36: 0xe1ea60b6 'print_finish'
;   37: 0x4229b906 'move'
;   38: 0xe21cd9eb 'move_error'
;   39: 0xe74f7b36 'homing'
;   40: 0x2fb87829 'filament'
;   41: 0x516cb0bf 'keyboard'
;   42: 0x69478025 'heat_tip'
;   43: 0xd0413315
;   44: 0xc05ce982
;   45: 0xb34c73f8 'fan'
;   46: 0x8c20a521 'heating'
;   47: 0x0da34cb9 'load_clear2'
;   48: 0x75b5d150 'system'
;   49: 0x76d84b7c 'language'
;   50: 0xe5d9be99 'if_reset'
;   51: 0x72d8968d 'if_update'
;   52: 0xd2eb7cb7 'updating'
;   53: 0xe19c7067 'about'
;   54: 0xf35026f7 'wifi_scan'
;   55: 0x97266466 'wifi_list'
;   56: 0x38eb94f5 'wifi_kb'
;   57: 0x57a5bd97 'wifi_connect'
;   58: 0xc91b5aa3 'wifi_succeed'
;   59: 0x39603296 'wifi_failed'
;   60: 0xbc509d73 'level_mode'
;   61: 0x568fecaa 'z_calibrating'
;   62: 0x20ced183
;   63: 0x40661511 'z_init'
;   64: 0x5a7f8ed1 'zoffset'
;   65: 0x69811550
;   66: 0x21fa5917 'auto_leveling'

; attribute name hash table, 74 attributes (sorted CRC of the name, as it is)
;   0x01b82d24 x
;   0x05793093 y
;   0x0a15c67e pco
;   0x0a9ffe22 picc
;   0x0debb1c7 psta
;   0x118afa46 pw
;   0x1525ba4d tim
;   0x165f0286 drag
;   0x16779d72 borderc
;   0x1757d167 bco1
;   0x18dd5648 movey
;   0x1a14f7be bco2
;   0x1c1c4bff movex
;   0x1f5b2e72 from
;   0x252ca95f wid
;   0x2ee6b124 path_m
;   0x314c5944 right
;   0x384f4397 left
;   0x39f79099 w
;   0x3d113a10 ch
;   0x3e2bae60 dez
;   0x49376ed6 inittrue
;   0x496230de borderw
;   0x4a61c274 format
;   0x4d2d1f8e loop
;   0x4da9f654 h
;   0x54ffc80e ycen
;   0x57e5fb30 style
;   0x5c6aa071 sta
;   0x64a35601 mode
;   0x66344e4d up
;   0x69e9fb32 hig
;   0x6aabe7d0 key
;   0x6f5526eb picc2
;   0x70d4bd37 pco0
;   0x7415a080 pco1
;   0x788f7889 isbr
;   0x79012f68 groupid1
;   0x793ec75d dir
;   0x79568659 pco2
;   0x79894c43 stim
;   0x7dc032df groupid0
;   0x7dffdaea dis
;   0x8076ba49 vscope
;   0x95793b3b en
;   0x95ea812b lenth
;   0x99631e4e maxval
;   0x99c85f4f font
;   0xa23469a8 spay
;   0xa4489e6e objHig
;   0xa4ec8dd3 down
;   0xa6861344 sendkey
;   0xa6d2815b aph
;   0xa6f5741f spax
;   0xac1a4197 lockobj
;   0xac61411a effect
;   0xb01a41e9 endx
;   0xb0cde987 val
;   0xb122f8b3 txt
;   0xb4db5c5e endy
;   0xb55af55d txt_maxl
;   0xbc5b9e0b xcen
;   0xd0a09f55 objname
;   0xd6b3dfc2 qty
;   0xd72c0339 vid
;   0xd7a7136e path
;   0xdbee6968 id
;   0xe88dcc03 objWid
;   0xeb6a9b8c minval
;   0xecea9506 pic
;   0xf29094d8 bco
;   0xf3324827 molloc_s
;   0xf3862a4e molloc
;   0xff4b701b type

; other data of the image (image offsets; the addresses of the code are offset - 40)
; 00004c:  00 00 00 00 32 00 00 00                          |....2...|
; 007461:  00 00 00 72 61 6d 2f 31 36 30 2e 6a 70 67 00 00  |...ram/160.jpg..|
; ...
; 00a0e5:  00 00 00 e0 02 00 00                             |.......|

.org 0xa3aa
    baud = 0x1c200
    recmod = 0
    repo global_14, 100
    if global_14 < 0 then jump lbl_a400
    if global_14 <= 7 then jump lbl_a40b

lbl_a400:
    global_14 = 1

lbl_a40b:
    repo global_2c, 0
    if global_2c < 20 then jump lbl_a448
    if global_2c <= 100 then jump lbl_a455

lbl_a448:
    global_2c = 100

lbl_a455:
    dim = global_2c
    repo global_1c, 4
    if global_1c < 0 then jump lbl_a49e
    if global_1c <= 1 then jump lbl_a4a9

lbl_a49e:
    global_1c = 0

lbl_a4a9:
    repo global_18, 8
    if global_18 < 0 then jump lbl_a4e7
    if global_18 <= 0xffff then jump lbl_a4f6

lbl_a4e7:
    global_18 = 0xffff

lbl_a4f6:
    global_20 = global_18
    page 0
    page 0
    down
    up
