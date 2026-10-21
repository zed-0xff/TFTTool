; global data image and start-up code

; 56 strings in the global data image (offset: text)
;   0x3e18: "eth0_IP"
;   0x4078: "192.168.XXX"
;   0x41a8: "wlan0_IP"
;   0x4408: "192.168.XXX"
;   0x49f8: "V1.0"
;   0x5118: "English"
;   0x5250: "Deutsch"
;   0x52b8: "Espa"
;   0x5320: "Fran"
;   0x5388: "Portugu"
;   0x53f0: "Italiano"
;   0x54c0: "ZCSW12-2.4G"
;   0x55f0: "ZCSW12-2.4G"
;   0x5720: "ZCSW12-2.4G"
;   0x5850: "ZCSW12-2.4G"
;   0x5980: "IP:0.0.0.0"
;   0x5ab0: "MAC:0:0:0:0:0"
;   0x5d18: "192.168.1.1"
;   0x5e48: "------"
;   0x6de8: "2h4m"
;   0x79d0: "0h0m"
;   0x7b00: "600mm/s"
;   0x8288: "ram/160.jpg"
;   0x89f0: "100%"
;   0x8b20: "100%"
;   0x9380: "English"
;   0x94b8: "Deutsch"
;   0x9520: "Espa"
;   0x9588: "Fran"
;   0x95f0: "Portugu"
;   0x9658: "Italiano"
;   0x9728: "IP:0.0.0.0"
;   0x9858: "MAC:0:0:0:0:0"
;   0x9a58: "ZCSW12-2.4G"
;   0x9b88: "ZCSW12-2.4G"
;   0x9cb8: "ZCSW12-2.4G"
;   0x9de8: "ZCSW12-2.4G"
;   0x9f18: "-46dB"
;   0xa048: "-46dB"
;   0xa178: "-46dB"
;   0xa2a8: "-46dB"
;   0xae3c: "ZCSW12-2.4G"
;   0xaf6c: "ZCSW12-2.4G"
;   0xb09c: "ZCSW12-2.4G"
;   0xb1cc: "ZCSW12-2.4G"
;   0xb2fc: "IP:0.0.0.0"
;   0xb42c: "MAC:0:0:0:0:0"
;   0xb6ff: "2`9;"
;   0xb723: "KgBH"
;   0xb72f: "@ HL"
;   0xb79a: "Ue?pQ"
;   0xb8f9: ".DYL1"
;   0xb913: "0bIt"
;   0xb931: "dMN4f2"
;   0xb93f: "&Uo7"
;   0xb958: "VyCL"

; header (40 bytes): 0x4 0x24 0x4 0x28 0xb670 0xb698 0x222 0xb8ba 0x128

; global variables (address: initial value, number of uses in the code)
;   global_0: 0  (57 uses)
;   global_c: 0  (7 uses)
;   global_10: 0  (2 uses)
;   global_14: 1  (1029 uses)
;   global_18: 0  (137 uses)
;   global_1c: 0  (64 uses)
;   global_20: 0  (330 uses)
;   global_2c: 100  (141 uses)
;   global_30: 0  (64 uses)

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
; flags=0x37, aph=127, x=181, y=48, w=45, h=30, endx=225, endy=77, events: touch_press=0xc472, touch_release=0xc487
; sta=3, font=0, pco=0xffe0, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100℃"

; object at 0x5cc: text id 279 'bed_target' (page 2), 84 bytes
; flags=0x37, aph=127, x=181, y=82, w=45, h=30, endx=225, endy=111, events: touch_press=0xc4a2, touch_release=0xc4b7
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0℃"

; object at 0x620: text id 280 't6' (page 2), 84 bytes
; flags=0x37, aph=127, x=228, y=146, w=104, h=30, endx=331, endy=175
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="U盘状态："

; object at 0x674: text id 281 't8' (page 2), 84 bytes
; flags=0x37, aph=127, x=333, y=147, w=109, h=30, endx=441, endy=176
; sta=3, font=0, pco=0x07e8, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="已检测到"

; object at 0x6c8: button id 257 'b1' (page 6), 84 bytes
; flags=0x37, aph=127, x=36, y=62, w=129, h=37, endx=164, endy=98, events: touch_release=0xe024
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="English"
; 000734:  ff ff                                            |..|

; object at 0x71c: button id 258 'b0' (page 6), 84 bytes
; flags=0x37, aph=127, x=177, y=166, w=124, h=38, endx=300, endy=203, events: touch_release=0xe0b5
; borderc=0x0000, picc=92, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="中文"
; 000788:  ff ff                                            |..|

; object at 0x770: button id 259 'b2' (page 6), 84 bytes
; flags=0x37, aph=127, x=311, y=62, w=126, h=38, endx=436, endy=99, events: touch_release=0xe146
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="日本語"
; 0007dc:  ff ff                                            |..|

; object at 0x7c4: button id 260 'b3' (page 6), 84 bytes
; flags=0x37, aph=127, x=37, y=115, w=126, h=37, endx=162, endy=151, events: touch_release=0xe1d7
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Deutsch"
; 000830:  ff ff                                            |..|

; object at 0x818: button id 261 'b4' (page 6), 84 bytes
; flags=0x37, aph=127, x=174, y=114, w=127, h=38, endx=300, endy=151, events: touch_release=0xe268
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Español"
; 000884:  ff ff                                            |..|

; object at 0x86c: button id 262 'b5' (page 6), 84 bytes
; flags=0x37, aph=127, x=312, y=114, w=127, h=38, endx=438, endy=151, events: touch_release=0xe2f9
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Français"
; 0008d8:  ff ff                                            |..|

; object at 0x8c0: button id 265 'b7' (page 6), 84 bytes
; flags=0x37, aph=127, x=37, y=167, w=128, h=37, endx=164, endy=203, events: touch_release=0xe41c
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Português"
; 00092c:  ff ff                                            |..|

; object at 0x914: button id 266 'b8' (page 6), 84 bytes
; flags=0x37, aph=127, x=174, y=62, w=129, h=38, endx=302, endy=99, events: touch_release=0xe4ad
; borderc=0x0000, picc=91, picc2=92, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Italiano"
; 000980:  ff ff                                            |..|

; object at 0x968: button id 257 'b0' (page 7), 84 bytes
; flags=0x37, aph=127, x=234, y=59, w=57, h=29, endx=290, endy=87, events: touch_release=0xeb95
; borderc=0x0000, picc=53, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0009d4:  ff ff                                            |..|

; object at 0x9bc: text id 261 'wifi_0' (page 7), 84 bytes
; flags=0x37, aph=127, x=46, y=131, w=174, h=30, endx=219, endy=160, events: touch_release=0xec4d
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0xa10: text id 262 'wifi_2' (page 7), 84 bytes
; flags=0x37, aph=127, x=46, y=197, w=162, h=30, endx=207, endy=226, events: touch_release=0xecb7
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0xa64: text id 263 'wifi_3' (page 7), 84 bytes
; flags=0x37, aph=127, x=46, y=230, w=162, h=30, endx=207, endy=259, events: touch_release=0xed21
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0xab8: text id 264 'wifi_1' (page 7), 84 bytes
; flags=0x37, aph=127, x=46, y=164, w=162, h=30, endx=207, endy=193, events: touch_release=0xed8b
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0xb0c: crop id 265 'q0' (page 7), 60 bytes
; flags=0x37, aph=127, x=238, y=133, w=25, h=26, endx=262, endy=158
; 000b68:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0xb48: crop id 266 'q1' (page 7), 60 bytes
; flags=0x37, aph=127, x=233, y=168, w=28, h=26, endx=260, endy=193
; 000ba4:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0xb84: crop id 267 'q2' (page 7), 60 bytes
; flags=0x37, aph=127, x=234, y=204, w=30, h=24, endx=263, endy=227
; 000be0:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0xbc0: crop id 268 'q3' (page 7), 60 bytes
; flags=0x37, aph=127, x=234, y=238, w=30, h=24, endx=263, endy=261
; 000c1c:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0xbfc: crop id 269 'q4' (page 7), 60 bytes
; flags=0x37, aph=127, x=262, y=132, w=31, h=25, endx=292, endy=156
; 000c58:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0xc38: crop id 270 'q5' (page 7), 60 bytes
; flags=0x37, aph=127, x=262, y=168, w=31, h=24, endx=292, endy=191
; 000c94:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0xc74: crop id 271 'q6' (page 7), 60 bytes
; flags=0x37, aph=127, x=262, y=203, w=31, h=24, endx=292, endy=226
; 000cd0:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0xcb0: crop id 272 'q7' (page 7), 60 bytes
; flags=0x37, aph=127, x=263, y=238, w=29, h=24, endx=291, endy=261
; 000d0c:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0xcec: text id 273 't1' (page 7), 84 bytes
; flags=0x37, aph=127, x=311, y=48, w=155, h=37, endx=465, endy=84
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="IP:0.0.0.0"

; object at 0xd40: text id 274 't2' (page 7), 84 bytes
; flags=0x37, aph=127, x=311, y=85, w=155, h=33, endx=465, endy=117
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="MAC:0:0:0:0:0"

; object at 0xd94: button id 278 'b1' (page 7), 84 bytes
; flags=0x37, aph=127, x=305, y=121, w=46, h=48, endx=350, endy=168, events: touch_release=0xf009
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 000e00:  ff ff                                            |..|

; object at 0xde8: button id 279 'b3' (page 7), 84 bytes
; flags=0x37, aph=127, x=307, y=171, w=46, h=47, endx=352, endy=217, events: touch_release=0xf073
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 000e54:  ff ff                                            |..|

; object at 0xe3c: button id 280 'b4' (page 7), 84 bytes
; flags=0x37, aph=127, x=307, y=220, w=46, h=47, endx=352, endy=266, events: touch_release=0xf0dd
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 000ea8:  ff ff                                            |..|

; object at 0xe90: text id 258 't0' (page 8), 84 bytes
; flags=0x37, aph=127, x=106, y=105, w=268, h=28, endx=373, endy=132
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="192.168.1.1"

; object at 0xee4: text id 261 't1' (page 8), 84 bytes
; flags=0x37, aph=127, x=106, y=66, w=268, h=39, endx=373, endy=104
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="------"

; object at 0xf38: button id 257 'b2' (page 10), 84 bytes
; flags=0x37, aph=127, x=407, y=215, w=69, h=54, endx=475, endy=268, events: touch_release=0x10ef5
; borderc=0x0000, picc=22, picc2=24, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 000fa4:  ff ff                                            |..|

; object at 0xf8c: waveform id 258 's0' (page 10), 92 bytes
; flags=0x37, aph=80, x=116, y=50, w=271, h=200, endx=386, endy=249
; 000fe8:  00 00 00 00 03 01 02 00 00 00 00 00 00 00 00 00  |................|
; 000ff8:  00 00 1a db bf 07 00 00 00 00 00 00 4e 00 00 00  |............N...|
; 001008:  e0 02 00 00 6c b6 00 00                          |....l...|

; object at 0xfe8: crop id 263 'q8' (page 10), 60 bytes
; flags=0x37, aph=127, x=416, y=6, w=52, h=43, endx=467, endy=48, events: touch_release=0x11129
; 001044:  00 00 00 00 15 00 00 00                          |........|

; object at 0x1024: text id 266 'hot_bed_temp' (page 10), 84 bytes
; flags=0x37, aph=127, x=413, y=138, w=33, h=30, endx=445, endy=167, events: touch_press=0x11291, touch_release=0x112a6
; sta=3, font=2, pco=0x07bf, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0x1078: text id 267 'extruder_temp' (page 10), 84 bytes
; flags=0x37, aph=127, x=412, y=84, w=33, h=30, endx=444, endy=113, events: touch_press=0x112c1, touch_release=0x112dc
; sta=3, font=2, pco=0xdb1a, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0x10cc: text id 268 'extru_target' (page 10), 84 bytes
; flags=0x37, aph=127, x=445, y=84, w=33, h=30, endx=477, endy=113, events: touch_press=0x112fd, touch_release=0x11318
; sta=3, font=2, pco=0xdb1a, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x1120: text id 269 'bed_target' (page 10), 84 bytes
; flags=0x37, aph=127, x=446, y=138, w=33, h=30, endx=478, endy=167, events: touch_press=0x11339, touch_release=0x1134e
; sta=3, font=2, pco=0x07bf, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x1174: text id 273 (page 10), 84 bytes
; flags=0x37, aph=127, x=411, y=193, w=33, h=30, endx=443, endy=222, events: touch_press=0x11492, touch_release=0x114a7
; sta=3, font=2, pco=0x07bf, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0x11c8: text id 274 (page 10), 84 bytes
; flags=0x37, aph=127, x=444, y=193, w=33, h=30, endx=476, endy=222, events: touch_press=0x114c2, touch_release=0x114d7
; sta=3, font=2, pco=0x07bf, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x121c: button id 265 'b9' (page 11), 84 bytes
; flags=0x37, aph=127, x=443, y=214, w=36, h=53, endx=478, endy=266, events: touch_release=0x11e83
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001288:  ff ff                                            |..|

; object at 0x1270: button id 266 'b8' (page 11), 84 bytes
; flags=0x37, aph=127, x=444, y=160, w=36, h=53, endx=479, endy=212, events: touch_release=0x11eed
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0012dc:  ff ff                                            |..|

; object at 0x12c4: button id 267 'b10' (page 11), 84 bytes
; flags=0x37, aph=127, x=444, y=46, w=36, h=53, endx=479, endy=98, events: touch_release=0x11f57
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001330:  ff ff                                            |..|

; object at 0x1318: button id 302 'b0' (page 11), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=205, h=34, endx=270, endy=40, events: touch_release=0x128e9
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 001384:  ff ff                                            |..|

; object at 0x136c: button id 303 'b1' (page 11), 84 bytes
; flags=0x37, aph=127, x=269, y=7, w=203, h=34, endx=471, endy=40, events: touch_release=0x12955
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0013d8:  ff ff                                            |..|

; object at 0x13c0: button id 304 'b17' (page 11), 84 bytes
; flags=0x37, aph=0, x=467, y=0, w=13, h=7, endx=479, endy=6, events: touch_release=0x129c1
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 00142c:  ff ff                                            |..|

; object at 0x1414: button id 260 'b0' (page 12), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=207, h=34, endx=272, endy=40, events: touch_release=0x16224
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 001480:  ff ff                                            |..|

; object at 0x1468: button id 261 'b1' (page 12), 84 bytes
; flags=0x37, aph=127, x=271, y=6, w=203, h=34, endx=473, endy=39, events: touch_release=0x16290
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0014d4:  ff ff                                            |..|

; object at 0x14bc: button id 262 'b17' (page 12), 84 bytes
; flags=0x37, aph=0, x=470, y=0, w=10, h=7, endx=479, endy=6, events: touch_release=0x162fc
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 001528:  ff ff                                            |..|

; object at 0x1510: button id 260 'b0' (page 13), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=204, h=34, endx=269, endy=40, events: touch_release=0x16ec0
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 00157c:  ff ff                                            |..|

; object at 0x1564: button id 261 'b1' (page 13), 84 bytes
; flags=0x37, aph=127, x=267, y=7, w=206, h=34, endx=472, endy=40, events: touch_release=0x16f2c
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0015d0:  ff ff                                            |..|

; object at 0x15b8: button id 262 'b17' (page 13), 84 bytes
; flags=0x37, aph=0, x=467, y=0, w=13, h=6, endx=479, endy=5, events: touch_release=0x16f98
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 001624:  ff ff                                            |..|

; object at 0x160c: button id 267 'b0' (page 15), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=137, h=34, endx=202, endy=40, events: touch_release=0x18cce
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 001678:  ff ff                                            |..|

; object at 0x1660: button id 268 'b1' (page 15), 84 bytes
; flags=0x37, aph=127, x=202, y=7, w=137, h=34, endx=338, endy=40, events: touch_release=0x18d3a
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0016cc:  ff ff                                            |..|

; object at 0x16b4: button id 269 'b17' (page 15), 84 bytes
; flags=0x37, aph=127, x=337, y=7, w=137, h=34, endx=473, endy=40, events: touch_release=0x18da6
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 001720:  ff ff                                            |..|

; object at 0x1708: button id 278 'b7' (page 15), 84 bytes
; flags=0x37, aph=127, x=442, y=159, w=38, h=56, endx=479, endy=214, events: touch_release=0x1907b
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001774:  ff ff                                            |..|

; object at 0x175c: button id 279 'b8' (page 15), 84 bytes
; flags=0x37, aph=127, x=443, y=214, w=36, h=55, endx=478, endy=268, events: touch_release=0x190e5
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0017c8:  ff ff                                            |..|

; object at 0x17b0: text id 261 't0' (page 20), 84 bytes
; flags=0x37, aph=127, x=340, y=144, w=50, h=26, endx=389, endy=169
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"

; object at 0x1804: text id 262 't1' (page 20), 84 bytes
; flags=0x37, aph=127, x=419, y=144, w=55, h=26, endx=473, endy=169
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"

; object at 0x1858: text id 265 't2' (page 20), 84 bytes
; flags=0x37, aph=127, x=121, y=53, w=344, h=34, endx=464, endy=86
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; object at 0x18ac: text id 270 't3' (page 20), 84 bytes
; flags=0x37, aph=127, x=488, y=174, w=111, h=26, endx=598, endy=199, events: touch_release=0x1d858
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="延时摄影"

; object at 0x1900: button id 271 'b0' (page 20), 84 bytes
; flags=0x37, aph=127, x=66, y=7, w=200, h=34, endx=265, endy=40, events: touch_release=0x1d8c2
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; 00196c:  ff ff                                            |..|

; object at 0x1954: button id 272 'b1' (page 20), 84 bytes
; flags=0x37, aph=127, x=266, y=7, w=207, h=34, endx=472, endy=40, events: touch_release=0x1d92e
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; 0019c0:  ff ff                                            |..|

; object at 0x19a8: button id 273 'b17' (page 20), 84 bytes
; flags=0x37, aph=0, x=470, y=0, w=10, h=6, endx=479, endy=5, events: touch_release=0x1d99a
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; 001a14:  ff ff                                            |..|

; object at 0x19fc: text id 274 't4' (page 20), 84 bytes
; flags=0x37, aph=127, x=256, y=170, w=120, h=26, endx=375, endy=195
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件大小:"

; object at 0x1a50: text id 275 't5' (page 20), 84 bytes
; flags=0x37, aph=127, x=256, y=193, w=120, h=26, endx=375, endy=218
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="剩余空间:"

; object at 0x1aa4: text id 276 't6' (page 20), 84 bytes
; flags=0x37, aph=127, x=382, y=170, w=90, h=26, endx=471, endy=195
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0M"

; object at 0x1af8: text id 277 't7' (page 20), 84 bytes
; flags=0x37, aph=127, x=382, y=193, w=90, h=26, endx=471, endy=218
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0M"

; object at 0x1b4c: text id 257 't0' (page 21), 84 bytes
; flags=0x37, aph=127, x=17, y=14, w=271, h=34, endx=287, endy=47
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件名"

; object at 0x1ba0: text id 258 't2' (page 21), 84 bytes
; flags=0x37, aph=127, x=163, y=208, w=85, h=21, endx=247, endy=228
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0h0m"

; object at 0x1bf4: text id 259 't4' (page 21), 84 bytes
; flags=0x37, aph=127, x=41, y=208, w=70, h=21, endx=110, endy=228
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="600mm/s"

; object at 0x1c48: text id 260 't6' (page 21), 84 bytes
; flags=0x37, aph=127, x=304, y=232, w=39, h=24, endx=342, endy=255
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="42%"

; object at 0x1c9c: progress_bar id 261 'j0' (page 21), 64 bytes
; flags=0x37, aph=127, x=22, y=238, w=278, h=13, endx=299, endy=250
; 001cf8:  00 00 00 00 00 00 00 64 2d 63 bf 07              |.......d-c..|

; object at 0x1cdc: button id 265 'b2' (page 21), 84 bytes
; flags=0x37, aph=127, x=407, y=213, w=69, h=54, endx=475, endy=266, events: touch_release=0x1ea7f
; borderc=0x0000, picc=34, picc2=35, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 001d48:  ff ff                                            |..|

; object at 0x1d30: crop id 266 'q8' (page 21), 60 bytes
; flags=0x37, aph=127, x=418, y=5, w=45, h=30, endx=462, endy=34, events: touch_release=0x1eae9
; 001d8c:  00 00 00 00 15 00 00 00                          |........|

; object at 0x1d6c: text id 269 'hot_bed_temp' (page 21), 84 bytes
; flags=0x37, aph=127, x=411, y=138, w=33, h=30, endx=443, endy=167, events: touch_press=0x1ec51, touch_release=0x1ec66
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0x1dc0: text id 270 'extruder_temp' (page 21), 84 bytes
; flags=0x37, aph=127, x=410, y=84, w=33, h=30, endx=442, endy=113, events: touch_press=0x1ec81, touch_release=0x1ec9c
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃/"

; object at 0x1e14: text id 271 'extru_target' (page 21), 84 bytes
; flags=0x37, aph=127, x=443, y=84, w=33, h=30, endx=475, endy=113, events: touch_press=0x1ecbd, touch_release=0x1ecd8
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x1e68: text id 272 'bed_target' (page 21), 84 bytes
; flags=0x37, aph=127, x=444, y=138, w=33, h=30, endx=476, endy=167, events: touch_press=0x1ecf9, touch_release=0x1ed0e
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x1ebc: external_picture id 276 'exp0' (page 21), 64 bytes
; flags=0x37, aph=127, x=29, y=45, w=160, h=160, endx=188, endy=204
; 001f18:  00 00 00 00 00 00 ff 00 60 82 00 00              |........`...|

; object at 0x1efc: text id 279 (page 21), 84 bytes
; flags=0x37, aph=127, x=410, y=194, w=33, h=30, endx=442, endy=223, events: touch_press=0x1eecc, touch_release=0x1eee1
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0℃/"

; object at 0x1f50: text id 280 (page 21), 84 bytes
; flags=0x37, aph=127, x=443, y=194, w=33, h=30, endx=475, endy=223, events: touch_press=0x1eefc, touch_release=0x1ef11
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0℃"

; object at 0x1fa4: button id 259 'b1' (page 22), 84 bytes
; flags=0x37, aph=127, x=14, y=53, w=65, h=29, endx=78, endy=81, events: touch_release=0x1f8bc
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002010:  ff ff                                            |..|

; object at 0x1ff8: button id 260 'b2' (page 22), 84 bytes
; flags=0x37, aph=127, x=82, y=53, w=65, h=29, endx=146, endy=81, events: touch_release=0x1f926
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002064:  ff ff                                            |..|

; object at 0x204c: button id 261 'b3' (page 22), 84 bytes
; flags=0x37, aph=127, x=150, y=53, w=65, h=29, endx=214, endy=81, events: touch_release=0x1f990
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0020b8:  ff ff                                            |..|

; object at 0x20a0: button id 262 'b4' (page 22), 84 bytes
; flags=0x37, aph=127, x=242, y=53, w=53, h=29, endx=294, endy=81, events: touch_release=0x1f9fa
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 00210c:  ff ff                                            |..|

; object at 0x20f4: button id 263 'b5' (page 22), 84 bytes
; flags=0x37, aph=127, x=299, y=53, w=53, h=29, endx=351, endy=81, events: touch_release=0x1fa64
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002160:  ff ff                                            |..|

; object at 0x2148: button id 264 'b6' (page 22), 84 bytes
; flags=0x37, aph=127, x=355, y=53, w=53, h=29, endx=407, endy=81, events: touch_release=0x1face
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0021b4:  ff ff                                            |..|

; object at 0x219c: button id 265 'b7' (page 22), 84 bytes
; flags=0x37, aph=127, x=412, y=53, w=53, h=29, endx=464, endy=81, events: touch_release=0x1fb38
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002208:  ff ff                                            |..|

; object at 0x21f0: text id 267 't1' (page 22), 84 bytes
; flags=0x37, aph=127, x=82, y=94, w=65, h=38, endx=146, endy=131
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="5mm"

; object at 0x2244: text id 270 't2' (page 22), 84 bytes
; flags=0x37, aph=127, x=321, y=92, w=65, h=40, endx=385, endy=131
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100%"

; object at 0x2298: text id 273 't3' (page 22), 84 bytes
; flags=0x37, aph=127, x=321, y=146, w=65, h=40, endx=385, endy=185
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100%"

; object at 0x22ec: text id 265 't2' (page 37), 84 bytes
; flags=0x37, aph=127, x=416, y=214, w=52, h=34, endx=467, endy=247, events: touch_press=0x29647, touch_release=0x2965d
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ON"

; object at 0x2340: button id 267 'b3' (page 37), 84 bytes
; flags=0x37, aph=127, x=78, y=52, w=70, h=35, endx=147, endy=86, events: touch_release=0x296ef
; borderc=0x0000, picc=41, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0023ac:  ff ff                                            |..|

; object at 0x2394: button id 268 'b4' (page 37), 84 bytes
; flags=0x37, aph=127, x=148, y=52, w=70, h=35, endx=217, endy=86, events: touch_release=0x29759
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002400:  ff ff                                            |..|

; object at 0x23e8: button id 269 'b5' (page 37), 84 bytes
; flags=0x37, aph=127, x=218, y=52, w=70, h=35, endx=287, endy=86, events: touch_release=0x297c3
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002454:  ff ff                                            |..|

; object at 0x243c: button id 281 'b17' (page 37), 84 bytes
; flags=0x37, aph=127, x=288, y=52, w=70, h=35, endx=357, endy=86, events: touch_release=0x29e6b
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0024a8:  ff ff                                            |..|

; object at 0x2490: slider id 266 'h1' (page 45), 84 bytes
; flags=0x37, aph=127, x=84, y=167, w=370, h=18, endx=453, endy=184, events: touch_release=0x3060c
; 0024ec:  00 00 00 00 00 01 00 ff ff 64 2d 63 ff ff 00 00  |.........d-c....|
; 0024fc:  64 00 00 00 00 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|

; object at 0x24e4: number id 267 'n1' (page 45), 80 bytes
; flags=0x37, aph=127, x=338, y=139, w=100, h=34, endx=437, endy=172
; 002540:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 002550:  00 00 00 00 00 00 00 00 01 00 00 00              |............|

; object at 0x2534: text id 268 't1' (page 45), 84 bytes
; flags=0x37, aph=127, x=440, y=139, w=14, h=34, endx=453, endy=172
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="%"

; object at 0x2588: button id 269 'b3' (page 45), 84 bytes
; flags=0x37, aph=127, x=404, y=54, w=57, h=33, endx=460, endy=86, events: touch_release=0x306c5
; borderc=0x0000, picc=46, picc2=46, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0025f4:  ff ff                                            |..|

; object at 0x25dc: button id 273 'b4' (page 45), 84 bytes
; flags=0x37, aph=127, x=402, y=101, w=57, h=33, endx=458, endy=133, events: touch_release=0x307ee
; borderc=0x0000, picc=47, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002648:  ff ff                                            |..|

; object at 0x2630: text id 260 'extrude_temp' (page 46), 84 bytes
; flags=0x37, aph=127, x=206, y=144, w=33, h=30, endx=238, endy=173
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object at 0x2684: text id 261 'extrude_target' (page 46), 84 bytes
; flags=0x37, aph=127, x=240, y=144, w=33, h=30, endx=272, endy=173
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="60℃"

; object at 0x26d8: button id 264 'b1' (page 49), 84 bytes
; flags=0x37, aph=127, x=86, y=66, w=108, h=37, endx=193, endy=102, events: touch_release=0x34ea2
; borderc=0x0000, picc=51, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="English"
; 002744:  ff ff                                            |..|

; object at 0x272c: button id 265 'b0' (page 49), 84 bytes
; flags=0x37, aph=127, x=200, y=172, w=108, h=37, endx=307, endy=208, events: touch_release=0x34ef1
; borderc=0x0000, picc=50, picc2=50, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="中文"
; 002798:  ff ff                                            |..|

; object at 0x2780: button id 266 'b2' (page 49), 84 bytes
; flags=0x37, aph=127, x=314, y=66, w=108, h=37, endx=421, endy=102, events: touch_release=0x34f40
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="日本語"
; 0027ec:  ff ff                                            |..|

; object at 0x27d4: button id 267 'b3' (page 49), 84 bytes
; flags=0x37, aph=127, x=86, y=119, w=108, h=37, endx=193, endy=155, events: touch_release=0x34f8f
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Deutsch"
; 002840:  ff ff                                            |..|

; object at 0x2828: button id 268 'b4' (page 49), 84 bytes
; flags=0x37, aph=127, x=200, y=119, w=108, h=37, endx=307, endy=155, events: touch_release=0x34fde
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Español"
; 002894:  ff ff                                            |..|

; object at 0x287c: button id 269 'b5' (page 49), 84 bytes
; flags=0x37, aph=127, x=314, y=119, w=108, h=37, endx=421, endy=155, events: touch_release=0x3502d
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Français"
; 0028e8:  ff ff                                            |..|

; object at 0x28d0: button id 271 'b7' (page 49), 84 bytes
; flags=0x37, aph=127, x=86, y=172, w=108, h=37, endx=193, endy=208, events: touch_release=0x350f4
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Português"
; 00293c:  ff ff                                            |..|

; object at 0x2924: button id 272 'b8' (page 49), 84 bytes
; flags=0x37, aph=127, x=200, y=66, w=108, h=37, endx=307, endy=102, events: touch_release=0x35143
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="Italiano"
; 002990:  ff ff                                            |..|

; object at 0x2978: progress_bar id 258 'j0' (page 52), 64 bytes
; flags=0x37, aph=127, x=102, y=168, w=274, h=6, endx=375, endy=173
; 0029d4:  00 00 00 00 00 00 00 64 ff ff 1f 00              |.......d....|

; object at 0x29b8: button id 257 'b0' (page 55), 84 bytes
; flags=0x37, aph=127, x=241, y=59, w=47, h=29, endx=287, endy=87, events: touch_release=0x39747
; borderc=0x0000, picc=53, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002a24:  ff ff                                            |..|

; object at 0x2a0c: text id 258 't1' (page 55), 84 bytes
; flags=0x37, aph=127, x=316, y=51, w=155, h=28, endx=470, endy=78
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="IP:0.0.0.0"

; object at 0x2a60: text id 259 't2' (page 55), 84 bytes
; flags=0x37, aph=127, x=316, y=81, w=155, h=31, endx=470, endy=111
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="MAC:0:0:0:0:0"

; object at 0x2ab4: button id 268 'b3' (page 55), 84 bytes
; flags=0x37, aph=127, x=306, y=170, w=46, h=47, endx=351, endy=216, events: touch_release=0x39af3
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002b20:  ff ff                                            |..|

; object at 0x2b08: button id 269 'b4' (page 55), 84 bytes
; flags=0x37, aph=127, x=306, y=219, w=46, h=47, endx=351, endy=265, events: touch_release=0x39b5d
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 002b74:  ff ff                                            |..|

; object at 0x2b5c: crop id 270 'q0' (page 55), 60 bytes
; flags=0x37, aph=127, x=239, y=132, w=23, h=24, endx=261, endy=155
; 002bb8:  00 00 00 00 49 00 00 00                          |....I...|

; object at 0x2b98: crop id 271 'q1' (page 55), 60 bytes
; flags=0x37, aph=127, x=239, y=168, w=23, h=24, endx=261, endy=191
; 002bf4:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x2bd4: crop id 272 'q2' (page 55), 60 bytes
; flags=0x37, aph=127, x=239, y=202, w=23, h=24, endx=261, endy=225
; 002c30:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x2c10: crop id 273 'q3' (page 55), 60 bytes
; flags=0x37, aph=127, x=239, y=235, w=23, h=24, endx=261, endy=258
; 002c6c:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x2c4c: crop id 274 'q4' (page 55), 60 bytes
; flags=0x37, aph=127, x=266, y=133, w=30, h=24, endx=295, endy=156
; 002ca8:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x2c88: crop id 275 'q5' (page 55), 60 bytes
; flags=0x37, aph=127, x=266, y=168, w=30, h=24, endx=295, endy=191
; 002ce4:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x2cc4: crop id 276 'q6' (page 55), 60 bytes
; flags=0x37, aph=127, x=266, y=202, w=30, h=24, endx=295, endy=225
; 002d20:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x2d00: crop id 277 'q7' (page 55), 60 bytes
; flags=0x37, aph=127, x=266, y=238, w=30, h=24, endx=295, endy=261
; 002d5c:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x2d3c: text id 278 'wifi_0' (page 55), 84 bytes
; flags=0x37, aph=127, x=74, y=130, w=128, h=30, endx=201, endy=159, events: touch_release=0x39c97
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x2d90: text id 279 'wifi_2' (page 55), 84 bytes
; flags=0x37, aph=127, x=74, y=200, w=128, h=30, endx=201, endy=229, events: touch_release=0x39d01
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x2de4: text id 280 'wifi_3' (page 55), 84 bytes
; flags=0x37, aph=127, x=74, y=235, w=128, h=30, endx=201, endy=264, events: touch_release=0x39d6b
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x2e38: text id 281 'wifi_1' (page 55), 84 bytes
; flags=0x37, aph=127, x=74, y=165, w=128, h=30, endx=201, endy=194, events: touch_release=0x39dd5
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x2e8c: text id 282 't5' (page 55), 84 bytes
; flags=0x37, aph=127, x=202, y=131, w=37, h=30, endx=238, endy=160
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object at 0x2ee0: text id 283 't6' (page 55), 84 bytes
; flags=0x37, aph=127, x=202, y=166, w=37, h=30, endx=238, endy=195
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object at 0x2f34: text id 284 't7' (page 55), 84 bytes
; flags=0x37, aph=127, x=202, y=201, w=37, h=30, endx=238, endy=230
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object at 0x2f88: text id 285 't8' (page 55), 84 bytes
; flags=0x37, aph=127, x=202, y=236, w=37, h=30, endx=238, endy=265
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="-46dB"

; object at 0x2fdc: button id 288 'refresh' (page 55), 84 bytes
; flags=0x37, aph=127, x=306, y=120, w=46, h=47, endx=351, endy=166, events: touch_release=0x39f4c
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 003048:  ff ff                                            |..|

; object at 0x3030: crop id 259 'q0' (page 56), 60 bytes
; flags=0x37, aph=127, x=321, y=46, w=36, h=36, endx=356, endy=81, events: touch_release=0x3add4
; 00308c:  00 00 00 00 3d 00 00 00                          |....=...|

; object at 0x306c: button id 263 'b210' (page 56), 84 bytes
; flags=0x37, aph=127, x=385, y=240, w=59, h=29, endx=443, endy=268, events: touch_release=0x3af75
; borderc=0x39e7, picc=63, picc2=64, pco=0x0000, xcen=1, ycen=1, txt_maxl=8, isbr=0, txt=""

; object at 0x30c0: text id 260 'hot_bed_temp' (page 62), 84 bytes
; flags=0x37, aph=127, x=206, y=171, w=33, h=30, endx=238, endy=200
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object at 0x3114: text id 261 'bed_target' (page 62), 84 bytes
; flags=0x37, aph=127, x=240, y=171, w=33, h=30, endx=272, endy=200
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="65℃"

; object at 0x3168: text id 262 'extrude_temp' (page 62), 84 bytes
; flags=0x37, aph=127, x=206, y=135, w=33, h=30, endx=238, endy=164
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object at 0x31bc: text id 263 'extrude_target' (page 62), 84 bytes
; flags=0x37, aph=127, x=240, y=135, w=33, h=30, endx=272, endy=164
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="150℃"

; object at 0x3210: button id 259 'b2' (page 64), 84 bytes
; flags=0x37, aph=127, x=200, y=63, w=80, h=42, endx=279, endy=104, events: touch_release=0x42111
; borderc=0x0000, picc=86, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""

; object at 0x3264: button id 260 'b1' (page 64), 84 bytes
; flags=0x37, aph=127, x=118, y=63, w=80, h=42, endx=197, endy=104, events: touch_release=0x4217b
; borderc=0x0000, picc=87, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""

; object at 0x32b8: button id 261 'b3' (page 64), 84 bytes
; flags=0x37, aph=127, x=280, y=63, w=80, h=42, endx=359, endy=104, events: touch_release=0x421e5
; borderc=0x0000, picc=86, picc2=87, pco=0x0000, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""

; object at 0x330c: text id 262 't1' (page 64), 84 bytes
; flags=0x37, aph=127, x=201, y=117, w=75, h=44, endx=275, endy=160
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0"

; object at 0x3360: text id 260 'hot_bed_temp' (page 65), 84 bytes
; flags=0x37, aph=127, x=206, y=144, w=33, h=30, endx=238, endy=173
; sta=3, font=2, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0/"

; object at 0x33b4: text id 261 'bed_target' (page 65), 84 bytes
; flags=0x37, aph=127, x=240, y=144, w=33, h=30, endx=272, endy=173
; sta=3, font=2, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="65℃"

; object at 0x3408: button id 257 'b0' (page 83), 84 bytes
; flags=0x37, aph=127, x=234, y=59, w=57, h=29, endx=290, endy=87, events: touch_release=0x4ff84
; borderc=0x0000, picc=53, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 003474:  ff ff                                            |..|

; object at 0x345c: text id 261 'wifi_0' (page 83), 84 bytes
; flags=0x37, aph=127, x=46, y=131, w=174, h=30, endx=219, endy=160, events: touch_release=0x5003c
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x34b0: text id 262 'wifi_2' (page 83), 84 bytes
; flags=0x37, aph=127, x=46, y=197, w=162, h=30, endx=207, endy=226, events: touch_release=0x500a6
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x3504: text id 263 'wifi_3' (page 83), 84 bytes
; flags=0x37, aph=127, x=46, y=230, w=162, h=30, endx=207, endy=259, events: touch_release=0x50110
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x3558: text id 264 'wifi_1' (page 83), 84 bytes
; flags=0x37, aph=127, x=46, y=164, w=162, h=30, endx=207, endy=193, events: touch_release=0x5017a
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"

; object at 0x35ac: crop id 265 'q0' (page 83), 60 bytes
; flags=0x37, aph=127, x=238, y=133, w=25, h=26, endx=262, endy=158
; 003608:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x35e8: crop id 266 'q1' (page 83), 60 bytes
; flags=0x37, aph=127, x=233, y=168, w=28, h=26, endx=260, endy=193
; 003644:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x3624: crop id 267 'q2' (page 83), 60 bytes
; flags=0x37, aph=127, x=234, y=204, w=30, h=24, endx=263, endy=227
; 003680:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x3660: crop id 268 'q3' (page 83), 60 bytes
; flags=0x37, aph=127, x=234, y=238, w=30, h=24, endx=263, endy=261
; 0036bc:  00 00 00 00 36 00 00 00                          |....6...|

; object at 0x369c: crop id 269 'q4' (page 83), 60 bytes
; flags=0x37, aph=127, x=262, y=132, w=31, h=25, endx=292, endy=156
; 0036f8:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x36d8: crop id 270 'q5' (page 83), 60 bytes
; flags=0x37, aph=127, x=262, y=168, w=31, h=24, endx=292, endy=191
; 003734:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x3714: crop id 271 'q6' (page 83), 60 bytes
; flags=0x37, aph=127, x=262, y=203, w=31, h=24, endx=292, endy=226
; 003770:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x3750: crop id 272 'q7' (page 83), 60 bytes
; flags=0x37, aph=127, x=263, y=238, w=29, h=24, endx=291, endy=261
; 0037ac:  00 00 00 00 3a 00 00 00                          |....:...|

; object at 0x378c: text id 273 't1' (page 83), 84 bytes
; flags=0x37, aph=127, x=311, y=48, w=155, h=37, endx=465, endy=84
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="IP:0.0.0.0"

; object at 0x37e0: text id 274 't2' (page 83), 84 bytes
; flags=0x37, aph=127, x=311, y=85, w=155, h=33, endx=465, endy=117
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="MAC:0:0:0:0:0"

; object at 0x3834: button id 278 'b1' (page 83), 84 bytes
; flags=0x37, aph=127, x=305, y=121, w=46, h=48, endx=350, endy=168, events: touch_release=0x503f8
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0038a0:  ff ff                                            |..|

; object at 0x3888: button id 279 'b3' (page 83), 84 bytes
; flags=0x37, aph=127, x=307, y=171, w=46, h=47, endx=352, endy=217, events: touch_release=0x50462
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0038f4:  ff ff                                            |..|

; object at 0x38dc: button id 280 'b4' (page 83), 84 bytes
; flags=0x37, aph=127, x=307, y=220, w=46, h=47, endx=352, endy=266, events: touch_release=0x504cc
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 003948:  ff ff                                            |..|

; page name hash table, 91 pages (page index: name hash, name)
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
;   67: 0xe3db6ef4
;   68: 0x8b911131
;   69: 0x33d3f9e4
;   70: 0xcbc8b8b8
;   71: 0x6d301775
;   72: 0x42674b1b
;   73: 0xa80280cf
;   74: 0xd9ac19a0
;   75: 0x4a8a2e71
;   76: 0x48204004
;   77: 0x958eca5b
;   78: 0xfb2f8631 'print_filament'
;   79: 0xf31d85e9
;   80: 0xa3007d30
;   81: 0x703f6555
;   82: 0xac284cdc
;   83: 0x5118998c
;   84: 0x54ed8af6
;   85: 0x74d693d7
;   86: 0x42c74427
;   87: 0x5cce0cfb
;   88: 0x3e2bf6f6
;   89: 0xa8c8f644
;   90: 0x0e0d0da9

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
; 008285:  00 00 00 72 61 6d 2f 31 36 30 2e 6a 70 67 00 00  |...ram/160.jpg..|
; ...
; 00b691:  00 00 00 e0 02 00 00                             |.......|

.org 0xb9e6
    baud = 0x1c200
    recmod = 0
    repo global_14, 100
    if global_14 < 0 then jump lbl_ba3c
    if global_14 <= 7 then jump lbl_ba47

lbl_ba3c:
    global_14 = 1

lbl_ba47:
    repo global_2c, 0
    if global_2c < 20 then jump lbl_ba84
    if global_2c <= 100 then jump lbl_ba91

lbl_ba84:
    global_2c = 100

lbl_ba91:
    dim = 100
    page 0
    page 0
    down
    up
