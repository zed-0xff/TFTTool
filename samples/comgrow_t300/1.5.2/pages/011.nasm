; page 11 'file_list': 49 objects

; object address table, 49 objects, block loaded at 0xa3a4
.dd 0xa468, 0xa4a8, 0xa4fc, 0xa550, 0xa5a4, 0xa5f8, 0xa64c, 0xa6a0
.dd 0xa6f4, 0x1024, 0x1078, 0x10cc, 0xa748, 0xa79c, 0xa7f0, 0xa844
.dd 0xa898, 0xa8ec, 0xa940, 0xa994, 0xa9e8, 0xaa3c, 0xaa90, 0xaae4
.dd 0xab38, 0xab8c, 0xabe0, 0xac34, 0xac88, 0xacdc, 0xad30, 0xad84
.dd 0xadd8, 0xae18, 0xae58, 0xae98, 0xaed8, 0xaf18, 0xaf58, 0xafac
.dd 0xb000, 0xb054, 0xb0a8, 0xb0fc, 0xb150, 0xb170, 0x1120, 0x1174
.dd 0x11c8

; object id 0 (page 'file_list'): x=0, y=0, w=480, h=272, name hash=0xd88e4d73
; flags=0x37, aph=127, events: event_3=0xfa25
; sta=2, pic=25
; 010acb:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xfa25
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x139ab
    ref 44
    ref 45
    local_e87 = ""
    local_1044 = ""
    local_10e2 = ""
    local_1180 = ""
    local_121e = ""
    local_12bc = ""
    local_eae = ""
    local_106b = ""
    local_1109 = ""
    local_11a7 = ""
    local_1245 = ""
    local_12e3 = ""
    local_ed5 = ""
    local_1092 = ""
    local_1130 = ""
    local_11ce = ""
    local_126c = ""
    local_130a = ""
    local_e59 = local_e3b
    local_e5a = local_e3b
    local_1016 = local_e3b
    local_1017 = local_e3b
    local_10b4 = local_e3b
    local_10b5 = local_e3b
    local_1152 = local_e3b
    local_1153 = local_e3b
    local_11f0 = local_e3b
    local_11f1 = local_e3b
    local_128e = local_e3b
    local_128f = local_e3b
    local_fc4 = local_e3b
    local_fc5 = local_e3b
    local_f9b = local_e3b
    local_f9c = local_e3b
    local_fed = local_e3b
    local_fee = local_e3b
    local_13da = local_e3b
    local_13db = local_e3b
    local_1403 = local_e3b
    local_1404 = local_e3b
    local_142c = local_e3b
    local_142d = local_e3b
    local_1455 = local_e3b
    local_1456 = local_e3b
    local_147e = local_e3b
    local_147f = local_e3b
    local_14a7 = local_e3b
    local_14a8 = local_e3b
    if global_14 != 0 then jump lbl_13cb2
    local_14ec = "本地"
    local_1515 = "U盘"
    local_153e = "延时摄影"
    jmp lbl_13f81

lbl_13cb2:
    if global_14 != 1 then jump lbl_13d19
    local_14ec = "Local"
    local_1515 = "U Disk"
    local_153e = "time-lapse\rphotography"
    jmp lbl_13f81

lbl_13d19:
    if global_14 != 2 then jump lbl_13d86
    local_14ec = "ローカル"
    local_1515 = "Uディスク"
    local_153e = "写真の遅れ"
    jmp lbl_13f81

lbl_13d86:
    if global_14 != 3 then jump lbl_13df0
    local_14ec = "örtlich"
    local_1515 = "U-Disk"
    local_153e = "Verzögerte\rFotografie"
    jmp lbl_13f81

lbl_13df0:
    if global_14 != 4 then jump lbl_13e57
    local_14ec = "Local"
    local_1515 = "Disco U"
    local_153e = "Fotografía\rRetrasada"
    T 0x12a

lbl_13e57:
    if global_14 != 5 then jump lbl_13ec1
    local_14ec = "Locale"
    local_1515 = "Disque U"
    local_153e = "Photographie\rRetardée"
    jmp lbl_13f81

lbl_13ec1:
    if global_14 != 6 then jump lbl_13f24
    local_14ec = "Local"
    local_1515 = "Disco U"
    local_153e = "Fotografia\rTardia"
    jmp lbl_13f81

lbl_13f24:
    if global_14 != 7 then jump lbl_13f81
    local_14ec = "Locale"
    local_1515 = "Disco U"
    local_153e = "Fotografia\rtime-lapse"

lbl_13f81:
    doevents
    down
    up

; object id 1 (button 'b2'): x=64, y=45, w=126, h=111, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0xfa6b
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 010b1b:  ff ff                                            |..|

; touch_release
.org 0xfa6b
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 2 (text 't0'): x=-366, y=97, w=50, h=16, name hash=0xc02992d9
; flags=0x37, aph=127, events: touch_press=0xfacb, touch_release=0xfae0
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0xfacb
    click b2, 1
    up

; touch_release
.org 0xfae0
    click b2, 0
    down

; object id 3 (text 't6'): x=-299, y=97, w=33, h=16, name hash=0xf18ad47e
; flags=0x37, aph=127, events: touch_press=0xfafb, touch_release=0xfb10
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0xfafb
    click b2, 1
    up

; touch_release
.org 0xfb10
    click b2, 0
    down

; object id 4 (text 'file_0'): x=65, y=116, w=123, h=38, name hash=0x4df1a189
; flags=0x37, aph=127, events: touch_press=0xfb2b, touch_release=0xfb40
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0xfb2b
    click b2, 1
    up

; touch_release
.org 0xfb40
    click b2, 0
    down
    up

; object id 5 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0xfb65
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 010c6b:  ff ff                                            |..|

; touch_release
.org 0xfb65
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0xfbd1
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 010cbf:  ff ff                                            |..|

; touch_release
.org 0xfbd1
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0xfc3d
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 010d13:  ff ff                                            |..|

; touch_release
.org 0xfc3d
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0xfca9
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 010d67:  ff ff                                            |..|

; touch_release
.org 0xfca9
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 265 (button 'b9'): x=443, y=214, w=36, h=53, name hash=0x64e9257
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0xfd15
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 266 (button 'b8'): x=444, y=160, w=36, h=53, name hash=0x7021892f
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0xfd7f
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 267 (button 'b10'): x=444, y=46, w=36, h=53, name hash=0x922adbb1
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 8

; touch_release
.org 0xfde9
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 12 (button 'b3'): x=192, y=45, w=126, h=111, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0xfe53
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 010dbb:  ff ff                                            |..|

; touch_release
.org 0xfe53
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 13 (text 't1'): x=-236, y=97, w=50, h=16, name hash=0xb64689a1
; flags=0x37, aph=127, events: touch_press=0xfeb3, touch_release=0xfec8
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0xfeb3
    click b3, 1
    up

; touch_release
.org 0xfec8
    click b3, 0
    down

; object id 14 (text 't7'): x=-168, y=97, w=33, h=16, name hash=0x87e5cf06
; flags=0x37, aph=127, events: touch_press=0xfee3, touch_release=0xfef8
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0xfee3
    click b3, 1
    up

; touch_release
.org 0xfef8
    click b3, 0
    down

; object id 15 (text 'file_1'): x=193, y=116, w=123, h=38, name hash=0xe6b11697
; flags=0x37, aph=127, events: touch_press=0xff13, touch_release=0xff28
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0xff13
    click b3, 1
    up

; touch_release
.org 0xff28
    click b3, 0
    down
    up

; object id 16 (button 'b4'): x=320, y=45, w=126, h=111, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0xff4d
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2
; 010f0b:  ff ff                                            |..|

; touch_release
.org 0xff4d
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 17 (text 't2'): x=-109, y=97, w=50, h=16, name hash=0x2cf7a429
; flags=0x37, aph=127, events: touch_press=0xffad, touch_release=0xffc2
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0xffad
    click b4, 1
    up

; touch_release
.org 0xffc2
    click b4, 0
    down

; object id 18 (text 't8'): x=-40, y=97, w=33, h=16, name hash=0x7e126fc0
; flags=0x37, aph=127, events: touch_press=0xffdd, touch_release=0xfff2
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0xffdd
    click b4, 1
    up

; touch_release
.org 0xfff2
    click b4, 0
    down

; object id 19 (text 'file_2'): x=321, y=116, w=123, h=38, name hash=0x1fb1d202
; flags=0x37, aph=127, events: touch_press=0x1000d, touch_release=0x10022
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x1000d
    click b4, 1
    up

; touch_release
.org 0x10022
    click b4, 0
    down
    up

; object id 20 (button 'b5'): x=64, y=157, w=126, h=111, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x10047
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3
; 01105b:  ff ff                                            |..|

; touch_release
.org 0x10047
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 21 (text 't3'): x=-365, y=208, w=50, h=16, name hash=0x5a98bf51
; flags=0x37, aph=127, events: touch_press=0x100a7, touch_release=0x100bc
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0x100a7
    click b5, 1
    up

; touch_release
.org 0x100bc
    click b5, 0
    down

; object id 22 (text 't9'): x=-296, y=208, w=33, h=16, name hash=0x87d74b8
; flags=0x37, aph=127, events: touch_press=0x100d7, touch_release=0x100ec
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0x100d7
    click b5, 1
    up

; touch_release
.org 0x100ec
    click b5, 0
    down

; object id 23 (text 'file_3'): x=65, y=228, w=123, h=38, name hash=0xb4f1651c
; flags=0x37, aph=127, events: touch_press=0x10107, touch_release=0x1011c
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x10107
    click b5, 1
    up

; touch_release
.org 0x1011c
    click b5, 0
    down
    up

; object id 24 (button 'b6'): x=192, y=157, w=126, h=111, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x10141
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 0111ab:  ff ff                                            |..|

; touch_release
.org 0x10141
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 25 (text 't4'): x=-236, y=208, w=50, h=16, name hash=0x1d54e28e
; flags=0x37, aph=127, events: touch_press=0x101a1, touch_release=0x101b6
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0x101a1
    click b6, 1
    up

; touch_release
.org 0x101b6
    click b6, 0
    down

; object id 26 (text 't10'): x=-170, y=208, w=33, h=16, name hash=0x9c193d5e
; flags=0x37, aph=127, events: touch_press=0x101d1, touch_release=0x101e6
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0x101d1
    click b6, 1
    up

; touch_release
.org 0x101e6
    click b6, 0
    down

; object id 27 (text 'file_4'): x=193, y=228, w=123, h=38, name hash=0xe971469f
; flags=0x37, aph=127, events: touch_press=0x10201, touch_release=0x10216
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x10201
    click b6, 1
    up

; touch_release
.org 0x10216
    click b6, 0
    down
    up

; object id 28 (button 'b7'): x=319, y=157, w=126, h=111, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x1023b
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 5
; 0112fb:  ff ff                                            |..|

; touch_release
.org 0x1023b
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 29 (text 't5'): x=-109, y=208, w=50, h=16, name hash=0x6b3bf9f6
; flags=0x37, aph=127, events: touch_press=0x1029b, touch_release=0x102b0
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0x1029b
    click b7, 1
    up

; touch_release
.org 0x102b0
    click b7, 0
    down

; object id 30 (text 't11'): x=-41, y=208, w=33, h=16, name hash=0x102115f6
; flags=0x37, aph=127, events: touch_press=0x102cb, touch_release=0x102e0
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0x102cb
    click b7, 1
    up

; touch_release
.org 0x102e0
    click b7, 0
    down

; object id 31 (text 'file_5'): x=320, y=228, w=123, h=38, name hash=0x4231f181
; flags=0x37, aph=127, events: touch_press=0x102fb, touch_release=0x10310
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x102fb
    click b7, 1
    up

; touch_release
.org 0x10310
    click b7, 0
    down

; object id 32 (unknown_0x3c 'exp1'): x=95, y=49, w=64, h=64, name hash=0x8ceb07bd
; flags=0x37, aph=127, events: touch_press=0x1032b, touch_release=0x10340
; path="ram/file0.jpg"
; 01143b:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x1032b
    click b2, 1
    up

; touch_release
.org 0x10340
    click b2, 0
    down

; object id 33 (unknown_0x3c 'exp2'): x=223, y=49, w=64, h=64, name hash=0xc8dff2ed
; flags=0x37, aph=127, events: touch_press=0x1035b, touch_release=0x10370
; path="ram/file1.jpg"
; 01147b:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x1035b
    click b3, 1
    up

; touch_release
.org 0x10370
    click b3, 0
    down

; object id 34 (unknown_0x3c 'exp3'): x=350, y=48, w=64, h=64, name hash=0x88caab0
; flags=0x37, aph=127, events: touch_press=0x1038b, touch_release=0x103a0
; path="ram/file2.jpg"
; 0114bb:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x1038b
    click b4, 1
    up

; touch_release
.org 0x103a0
    click b4, 0
    down

; object id 35 (unknown_0x3c 'exp4'): x=95, y=161, w=64, h=64, name hash=0x40b6184d
; flags=0x37, aph=127, events: touch_press=0x103bb, touch_release=0x103d0
; path="ram/file3.jpg"
; 0114fb:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x103bb
    click b5, 1
    up

; touch_release
.org 0x103d0
    click b5, 0
    down

; object id 36 (unknown_0x3c 'exp5'): x=223, y=161, w=64, h=64, name hash=0x80e54010
; flags=0x37, aph=127, events: touch_press=0x103eb, touch_release=0x10400
; path="ram/file4.jpg"
; 01153b:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x103eb
    click b6, 1
    up

; touch_release
.org 0x10400
    click b6, 0
    down

; object id 37 (unknown_0x3c 'exp6'): x=351, y=161, w=64, h=64, name hash=0xc4d1b540
; flags=0x37, aph=127, events: touch_press=0x1041b, touch_release=0x10430
; path="ram/file5.jpg"
; 01157b:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x1041b
    click b7, 1
    up

; touch_release
.org 0x10430
    click b7, 0
    down
    up

; object id 38 (button 'b11'): x=158, y=49, w=28, h=28, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x10455
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 9
; 0115cb:  ff ff                                            |..|

; touch_release
.org 0x10455
    prints 0x65, 1
    prints dp, 1
    prints 9, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 39 (button 'b12'): x=287, y=49, w=28, h=28, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x104bf
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 10
; 01161f:  ff ff                                            |..|

; touch_release
.org 0x104bf
    prints 0x65, 1
    prints dp, 1
    prints 10, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 40 (button 'b13'): x=415, y=49, w=28, h=28, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x1052a
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 11
; 011673:  ff ff                                            |..|

; touch_release
.org 0x1052a
    prints 0x65, 1
    prints dp, 1
    prints 11, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 41 (button 'b14'): x=158, y=162, w=28, h=28, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x10595
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 12
; 0116c7:  ff ff                                            |..|

; touch_release
.org 0x10595
    prints 0x65, 1
    prints dp, 1
    prints 12, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 42 (button 'b15'): x=287, y=162, w=28, h=28, name hash=0x27706ad7
; flags=0x37, aph=127, events: touch_release=0x10600
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 13
; 01171b:  ff ff                                            |..|

; touch_release
.org 0x10600
    prints 0x65, 1
    prints dp, 1
    prints 13, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 43 (button 'b16'): x=415, y=162, w=28, h=28, name hash=0xb7f90e98
; flags=0x37, aph=127, events: touch_release=0x1066b
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 14
; 01176f:  ff ff                                            |..|

; touch_release
.org 0x1066b
    prints 0x65, 1
    prints dp, 1
    prints 14, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 44 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x106cd
; tim=1000, en=1

; timer
.org 0x106cd
    if global_1c <= 0 then jump lbl_10729
    if global_20 <= 0 then jump lbl_10729
    global_20--
    if global_20 != 0 then jump lbl_10729
    dim = global_30

lbl_10729:
    down
    up

; object id 45 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x10743

; touch_release
.org 0x10743
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 302 (button 'b0'): x=66, y=7, w=137, h=34, name hash=0xce1a7436
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; text:
;   0: "本地"
;   1: "Local"
;   2: "ローカル"
;   3: "örtlich"
;   4: "Local"
;   5: "Locale"
;   6: "Local"
;   7: "Locale"
; touch_release reports to the host: page <page>, widget 110

; touch_release
.org 0x1077b
    prints 0x65, 1
    prints dp, 1
    prints 110, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 303 (button 'b1'): x=202, y=7, w=137, h=34, name hash=0xb8756f4e
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; text:
;   0: "U盘"
;   1: "U Disk"
;   2: "Uディスク"
;   3: "U-Disk"
;   4: "Disco U"
;   5: "Disque U"
;   6: "Disco U"
;   7: "Disco U"
; touch_release reports to the host: page <page>, widget 111

; touch_release
.org 0x107e7
    prints 0x65, 1
    prints dp, 1
    prints 111, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 304 (button 'b17'): x=337, y=7, w=137, h=34, name hash=0x3bc12630
; borderc=0x0000, picc=27, picc2=28, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; text:
;   0: "延时摄影"
;   1: "time-lapse\rphotography"
;   2: "写真の遅れ"
;   3: "Verzögerte\rFotografie"
;   4: "Fotografía\rRetrasada"
;   5: "Photographie\rRetardée"
;   6: "Fotografia\rTardia"
;   7: "Fotografia\rtime-lapse"
; touch_release reports to the host: page <page>, widget 112

; touch_release
.org 0x10853
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 8663 bytes (17 trailing zero bytes dropped)
; 0117bf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0117cf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0117df:  00 00 00 00 97 01 d5 00 45 00 36 00 db 01 0a 01  |........E.6.....|
; 0117ef:  00 00 00 00 00 00 00 00 00 00 16 00 18 00 ff ff  |................|
; 0117ff:  ff ff 01 01 00 00 64 00 84 55 00 00 01 00 00 00  |......d..U......|
; 01180f:  00 02 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01181f:  00 00 00 00 00 00 00 00 00 00 00 00 32 68 34 6d  |............2h4m|
; 01182f:  00 00 50 00 00 00 00 00 74 00 32 00 0f 01 c8 00  |..P.....t.2.....|
; 01183f:  82 01 f9 00 00 00 00 00 03 01 02 00 00 00 00 00  |................|
; 01184f:  00 00 00 00 00 00 1a db bf 07 00 00 00 00 00 00  |................|
; 01185f:  4e 00 00 00 e0 02 00 00 c0 a0 00 00 71 07 01 00  |N...........q...|
; 01186f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01187f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01188f:  00 00 00 00 a2 01 05 00 2d 00 1e 00 ce 01 22 00  |........-.....".|
; 01189f:  00 00 00 00 15 00 00 00 74 0a 01 00 00 00 00 00  |........t.......|
; 0118af:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0118bf:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0118cf:  9b 01 a6 00 21 00 1e 00 bb 01 c3 00 00 00 00 00  |....!...........|
; 0118df:  03 00 00 00 00 02 00 00 bf 07 02 01 00 00 2c 01  |..............,.|
; 0118ef:  ec 55 00 00 01 00 00 00 00 00 00 00 74 0b 01 00  |.U..........t...|
; 0118ff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01190f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01191f:  00 00 00 00 9a 01 5a 00 21 00 1e 00 ba 01 77 00  |......Z.!.....w.|
; 01192f:  00 00 00 00 03 00 00 00 00 02 00 00 1a db 02 01  |................|
; 01193f:  00 00 2c 01 1c 57 00 00 01 00 00 00 00 00 00 00  |..,..W..........|
; 01194f:  74 0c 01 00 00 00 00 00 00 00 00 00 34 6d 00 00  |t...........4m..|
; 01195f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01196f:  00 00 7f 00 00 00 00 00 bb 01 5a 00 21 00 1e 00  |..........Z.!...|
; 01197f:  db 01 77 00 00 00 00 00 03 00 00 00 00 02 00 00  |..w.............|
; 01198f:  1a db 00 01 00 00 2c 01 4c 58 00 00 01 00 00 00  |......,.LX......|
; 01199f:  00 00 00 00 74 0d 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0119af:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0119bf:  00 00 00 00 00 00 7f 00 00 00 00 00 bc 01 a6 00  |................|
; 0119cf:  21 00 1e 00 dc 01 c3 00 00 00 00 00 03 00 00 00  |!...............|
; 0119df:  00 02 00 00 bf 07 00 01 00 00 2c 01 7c 59 00 00  |..........,.|Y..|
; 0119ef:  01 00 00 00 00 00 00 00 62 09 01 00 00 00 00 00  |........b.......|
; 0119ff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011a0f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 011a1f:  bb 01 d6 00 24 00 35 00 de 01 0a 01 00 00 00 00  |....$.5.........|
; 011a2f:  00 00 00 00 00 00 1e 00 48 00 ff ff ff ff 01 01  |........H.......|
; 011a3f:  00 00 64 00 ac 5a 00 00 01 00 00 00 62 0a 01 00  |..d..Z......b...|
; 011a4f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011a5f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 011a6f:  00 00 00 00 bc 01 a0 00 24 00 35 00 df 01 d4 00  |........$.5.....|
; 011a7f:  00 00 00 00 00 00 00 00 00 00 1e 00 e6 96 87 e4  |................|
; 011a8f:  bb b6 e5 90 8d 00 64 00 14 5b 00 00 01 00 00 00  |......d..[......|
; 011a9f:  62 0b 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 011aaf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011abf:  00 00 7f 00 00 00 00 00 bc 01 2e 00 24 00 35 00  |............$.5.|
; 011acf:  df 01 62 00 00 00 00 00 00 00 00 00 00 00 1e 00  |..b.............|
; 011adf:  48 00 ff ff ff ff 01 01 00 00 64 00 7c 5b 00 00  |H.........d.|[..|
; 011aef:  01 00 00 00 62 2e 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 011aff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011b0f:  00 00 00 00 00 00 7f 00 00 00 00 00 42 00 07 00  |............B...|
; 011b1f:  89 00 22 00 ca 00 28 00 00 00 00 00 00 00 00 00  |.."...(.........|
; 011b2f:  00 00 1b 00 1c 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 011b3f:  e4 5b 00 00 01 00 00 00 62 2f 01 00 00 00 00 00  |.[......b/......|
; 011b4f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011b5f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 011b6f:  ca 00 07 00 89 00 22 00 52 01 28 00 00 00 00 00  |......".R.(.....|
; 011b7f:  00 00 00 00 00 00 1b 00 1c 00 ff ff ff ff 01 01  |................|
; 011b8f:  00 00 64 00 4c 5c 00 00 01 00 00 00 62 30 01 00  |..d.L\......b0..|
; 011b9f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011baf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 011bbf:  00 00 00 00 51 01 07 00 89 00 22 00 d9 01 28 00  |....Q....."...(.|
; 011bcf:  00 00 00 00 00 00 00 00 00 00 1b 00 1c 00 ff ff  |................|
; 011bdf:  ff ff 01 01 00 00 64 00 b4 5c 00 00 01 00 00 00  |......d..\......|
; 011bef:  62 04 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 011bff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011c0f:  00 00 7f 00 00 00 00 00 42 00 07 00 89 00 22 00  |........B.....".|
; 011c1f:  ca 00 28 00 00 00 00 00 00 00 00 00 00 00 1b 00  |..(.............|
; 011c2f:  1c 00 ff ff ff ff 01 01 00 00 64 00 1c 5d 00 00  |..........d..]..|
; 011c3f:  01 00 00 00 62 05 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 011c4f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011c5f:  00 00 00 00 00 00 7f 00 00 00 00 00 ca 00 07 00  |................|
; 011c6f:  89 00 22 00 52 01 28 00 00 00 00 00 00 00 00 00  |..".R.(.........|
; 011c7f:  00 00 1b 00 1c 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 011c8f:  84 5d 00 00 01 00 00 00 62 06 01 00 00 00 00 00  |.]......b.......|
; 011c9f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011caf:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 011cbf:  51 01 07 00 89 00 22 00 d9 01 28 00 00 00 00 00  |Q....."...(.....|
; 011ccf:  00 00 00 00 00 00 1b 00 1c 00 ff ff ff ff 01 01  |................|
; 011cdf:  00 00 64 00 ec 5d 00 00 01 00 00 00 62 04 01 00  |..d..]......b...|
; 011cef:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011cff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 011d0f:  00 00 00 00 42 00 07 00 89 00 22 00 ca 00 28 00  |....B....."...(.|
; 011d1f:  00 00 00 00 00 00 00 00 00 00 19 00 1a 00 ff ff  |................|
; 011d2f:  ff ff 01 01 00 00 64 00 54 5e 00 00 01 00 00 00  |......d.T^......|
; 011d3f:  62 05 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 011d4f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011d5f:  00 00 7f 00 00 00 00 00 ca 00 07 00 89 00 22 00  |..............".|
; 011d6f:  52 01 28 00 00 00 00 00 00 00 00 00 00 00 19 00  |R.(.............|
; 011d7f:  1a 00 ff ff ff ff 01 01 00 00 64 00 bc 5e 00 00  |..........d..^..|
; 011d8f:  01 00 00 00 62 06 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 011d9f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011daf:  00 00 00 00 00 00 7f 00 00 00 00 00 51 01 07 00  |............Q...|
; 011dbf:  89 00 22 00 32 68 34 6d 00 00 00 00 00 00 00 00  |..".2h4m........|
; 011dcf:  00 00 1b 00 1c 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 011ddf:  24 5f 00 00 01 00 00 00 62 0b 01 00 00 00 00 00  |$_......b.......|
; 011def:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011dff:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 011e0f:  42 00 07 00 89 00 22 00 ca 00 28 00 00 00 00 00  |B....."...(.....|
; 011e1f:  00 00 00 00 00 00 50 00 51 00 ff ff ff ff 01 01  |......P.Q.......|
; 011e2f:  00 00 64 00 8c 5f 00 00 01 00 00 00 62 0c 01 00  |..d.._......b...|
; 011e3f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011e4f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 011e5f:  00 00 00 00 ca 00 07 00 89 00 22 00 52 01 28 00  |..........".R.(.|
; 011e6f:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 011e7f:  ff ff 01 01 00 00 64 00 f4 5f 00 00 01 00 00 00  |......d.._......|
; 011e8f:  62 0d 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 011e9f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011eaf:  00 00 7f 00 00 00 00 00 51 01 07 00 89 00 22 00  |........Q.....".|
; 011ebf:  d9 01 28 00 00 00 00 00 00 00 00 00 00 00 50 00  |..(...........P.|
; 011ecf:  51 00 ff ff ff ff 01 01 00 00 64 00 5c 60 00 00  |Q.........d.\`..|
; 011edf:  01 00 00 00 62 16 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 011eef:  00 00 00 00 34 6d 00 00 00 00 00 00 00 00 00 00  |....4m..........|
; 011eff:  00 00 00 00 00 00 7f 00 00 00 00 00 ba 01 9f 00  |................|
; 011f0f:  26 00 38 00 df 01 d6 00 00 00 00 00 00 00 00 00  |&.8.............|
; 011f1f:  00 00 1e 00 48 00 ff ff ff ff 01 01 00 00 64 00  |....H.........d.|
; 011f2f:  c4 60 00 00 01 00 00 00 62 17 01 00 00 00 00 00  |.`......b.......|
; 011f3f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011f4f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 011f5f:  bb 01 d6 00 24 00 37 00 de 01 0c 01 00 00 00 00  |....$.7.........|
; 011f6f:  00 00 00 00 00 00 1e 00 48 00 ff ff ff ff 01 01  |........H.......|
; 011f7f:  00 00 64 00 2c 61 00 00 01 00 00 00 74 05 01 00  |..d.,a......t...|
; 011f8f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011f9f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 011faf:  00 00 00 00 54 01 90 00 32 00 1a 00 85 01 a9 00  |....T...2.......|
; 011fbf:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 011fcf:  00 00 2c 01 94 61 00 00 01 00 00 00 00 00 00 00  |..,..a..........|
; 011fdf:  74 06 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 011fef:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 011fff:  00 00 7f 00 00 00 00 00 a4 01 90 00 32 00 1a 00  |............2...|
; 01200f:  d5 01 a9 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 01201f:  ff ff 00 01 e6 96 87 e4 bb b6 e5 90 8d 00 00 00  |................|
; 01202f:  00 00 00 00 74 09 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 01203f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01204f:  00 00 00 00 00 00 7f 00 00 00 00 00 79 00 35 00  |............y.5.|
; 01205f:  58 01 22 00 d0 01 56 00 00 00 00 00 03 00 00 00  |X."...V.........|
; 01206f:  00 00 00 00 ff ff 01 01 00 00 2c 01 f4 63 00 00  |..........,..c..|
; 01207f:  01 00 00 00 00 00 00 00 74 0e 01 00 00 00 00 00  |........t.......|
; 01208f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01209f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0120af:  e8 01 ae 00 6f 00 1a 00 56 02 c7 00 00 00 00 00  |....o...V.......|
; 0120bf:  03 00 00 00 00 00 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 0120cf:  24 65 00 00 01 00 00 00 00 00 00 00 62 0f 01 00  |$e..........b...|
; 0120df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0120ef:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0120ff:  00 00 00 00 42 00 07 00 89 00 22 00 ca 00 28 00  |....B....."...(.|
; 01210f:  00 00 00 00 00 00 00 00 00 00 19 00 1a 00 ff ff  |................|
; 01211f:  ff ff 01 01 00 00 64 00 54 66 00 00 01 00 00 00  |......d.Tf......|
; 01212f:  62 10 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01213f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01214f:  00 00 7f 00 00 00 00 00 ca 00 07 00 89 00 22 00  |..............".|
; 01215f:  52 01 28 00 00 00 00 00 00 00 00 00 00 00 19 00  |R.(.............|
; 01216f:  1a 00 ff ff ff ff 01 01 00 00 64 00 bc 66 00 00  |..........d..f..|
; 01217f:  01 00 00 00 62 11 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 01218f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01219f:  00 00 00 00 00 00 7f 00 00 00 00 00 51 01 07 00  |............Q...|
; 0121af:  89 00 22 00 d9 01 28 00 00 00 00 00 32 68 34 6d  |.."...(.....2h4m|
; 0121bf:  00 00 19 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 0121cf:  24 67 00 00 01 00 00 00 74 01 01 00 00 00 00 00  |$g......t.......|
; 0121df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0121ef:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0121ff:  11 00 0e 00 0f 01 22 00 1f 01 2f 00 00 00 00 00  |......".../.....|
; 01220f:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01221f:  8c 67 00 00 01 00 00 00 00 00 00 00 74 02 01 00  |.g..........t...|
; 01222f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01223f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01224f:  00 00 00 00 25 00 4a 00 55 00 15 00 79 00 5e 00  |....%.J.U...y.^.|
; 01225f:  00 00 00 00 03 00 00 00 00 02 00 00 ff ff 00 01  |................|
; 01226f:  00 00 2c 01 bc 68 00 00 01 00 00 00 00 00 00 00  |..,..h..........|
; 01227f:  74 03 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01228f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01229f:  00 00 7f 00 00 00 00 00 26 00 86 00 55 00 15 00  |........&...U...|
; 0122af:  7a 00 9a 00 00 00 00 00 03 00 00 00 00 02 00 00  |z...............|
; 0122bf:  ff ff 00 01 00 00 2c 01 ec 69 00 00 01 00 00 00  |......,..i......|
; 0122cf:  00 00 00 00 74 04 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0122df:  00 00 00 00 00 00 00 00 00 00 00 00 34 6d 00 00  |............4m..|
; 0122ef:  00 00 00 00 00 00 7f 00 00 00 00 00 9a 00 4a 00  |..............J.|
; 0122ff:  46 00 15 00 df 00 5e 00 00 00 00 00 03 00 00 00  |F.....^.........|
; 01230f:  00 02 00 00 ff ff 00 01 00 00 2c 01 1c 6b 00 00  |..........,..k..|
; 01231f:  01 00 00 00 00 00 00 00 74 05 01 00 00 00 00 00  |........t.......|
; 01232f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01233f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01234f:  9a 00 86 00 46 00 15 00 df 00 9a 00 00 00 00 00  |....F...........|
; 01235f:  03 00 00 00 00 02 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01236f:  4c 6c 00 00 01 00 00 00 00 00 00 00 74 06 01 00  |Ll..........t...|
; 01237f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01238f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01239f:  00 00 00 00 5a 01 e9 00 35 00 18 00 8e 01 00 01  |....Z...5.......|
; 0123af:  00 00 00 00 03 00 00 00 00 02 00 00 ff ff 00 01  |................|
; 0123bf:  00 00 2c 01 7c 6d 00 00 01 00 00 00 00 00 00 00  |..,.|m..........|
; 0123cf:  6a 07 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |j...............|
; 0123df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0123ef:  00 00 7f 00 00 00 00 00 16 00 ee 00 1e 01 0d 00  |................|
; 0123ff:  33 01 fa 00 00 00 00 00 00 00 00 64 2d 63 bf 07  |3..........d-c..|
; 01240f:  62 08 01 00 00 00 00 00 00 00 00 00 e6 96 87 e4  |b...............|
; 01241f:  bb b6 e5 90 8d 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01242f:  00 00 7f 00 00 00 00 00 15 00 a9 00 30 00 2e 00  |............0...|
; 01243f:  44 00 d6 00 00 00 00 00 00 00 00 00 00 00 21 00  |D.............!.|
; 01244f:  23 00 ff ff ff ff 01 01 00 00 64 00 ac 6e 00 00  |#.........d..n..|
; 01245f:  01 00 00 00 62 0b 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 01246f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01247f:  00 00 00 00 00 00 7f 00 00 00 00 00 97 01 d5 00  |................|
; 01248f:  45 00 36 00 db 01 0a 01 00 00 00 00 00 00 00 00  |E.6.............|
; 01249f:  00 00 22 00 23 00 ff ff ff ff 01 01 00 00 64 00  |..".#.........d.|
; 0124af:  14 6f 00 00 01 00 00 00 71 0c 01 00 00 00 00 00  |.o......q.......|
; 0124bf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0124cf:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0124df:  a2 01 05 00 2d 00 1e 00 ce 01 22 00 00 00 00 00  |....-.....".....|
; 0124ef:  15 00 00 00 74 0f 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0124ff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01250f:  00 00 00 00 00 00 7f 00 00 00 00 00 9b 01 a6 00  |................|
; 01251f:  21 00 1e 00 bb 01 c3 00 00 00 00 00 03 00 00 00  |!...............|
; 01252f:  00 02 00 00 ff ff 02 01 00 00 2c 01 7c 6f 00 00  |..........,.|o..|
; 01253f:  01 00 00 00 00 00 00 00 74 10 01 00 00 00 00 00  |........t.......|
; 01254f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01255f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01256f:  9a 01 5a 00 21 00 1e 00 ba 01 77 00 00 00 00 00  |..Z.!.....w.....|
; 01257f:  03 00 00 00 00 02 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 01258f:  ac 70 00 00 01 00 00 00 00 00 00 00 74 11 01 00  |.p..........t...|
; 01259f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0125af:  00 00 00 00 32 68 34 6d 00 00 00 00 00 00 7f 00  |....2h4m........|
; 0125bf:  00 00 00 00 bb 01 5a 00 21 00 1e 00 db 01 77 00  |......Z.!.....w.|
; 0125cf:  00 00 00 00 03 00 00 00 00 02 00 00 ff ff 00 01  |................|
; 0125df:  00 00 2c 01 dc 71 00 00 01 00 00 00 00 00 00 00  |..,..q..........|
; 0125ef:  74 12 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 0125ff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01260f:  00 00 7f 00 00 00 00 00 bc 01 a6 00 21 00 1e 00  |............!...|
; 01261f:  dc 01 c3 00 00 00 00 00 03 00 00 00 00 02 00 00  |................|
; 01262f:  ff ff 00 01 00 00 2c 01 0c 73 00 00 01 00 00 00  |......,..s......|
; 01263f:  00 00 00 00 3c 17 01 00 00 00 00 00 00 00 00 00  |....<...........|
; 01264f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01265f:  00 00 00 00 00 00 7f 00 00 00 00 00 e3 00 40 00  |..............@.|
; 01266f:  a0 00 a0 00 82 01 df 00 00 00 00 00 00 00 ff 00  |................|
; 01267f:  3c 74 00 00 62 04 01 00 00 00 00 00 00 00 00 00  |<t..b...........|
; 01268f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01269f:  00 00 00 00 00 00 7f 00 00 00 00 00 0e 00 35 00  |..............5.|
; 0126af:  41 00 1d 00 4e 00 51 00 00 00 00 00 00 00 00 00  |A...N.Q.........|
; 0126bf:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 0126cf:  3c 75 00 00 01 00 00 00 62 05 01 00 00 00 00 00  |<u......b.......|
; 0126df:  00 00 00 00 34 6d 00 00 00 00 00 00 00 00 00 00  |....4m..........|
; 0126ef:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0126ff:  52 00 35 00 41 00 1d 00 92 00 51 00 00 00 00 00  |R.5.A.....Q.....|
; 01270f:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 01271f:  00 00 64 00 a4 75 00 00 01 00 00 00 62 06 01 00  |..d..u......b...|
; 01272f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01273f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01274f:  00 00 00 00 96 00 35 00 41 00 1d 00 d6 00 51 00  |......5.A.....Q.|
; 01275f:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 01276f:  ff ff 01 01 00 00 64 00 0c 76 00 00 01 00 00 00  |......d..v......|
; 01277f:  62 07 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01278f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01279f:  00 00 7f 00 00 00 00 00 f2 00 35 00 35 00 1d 00  |..........5.5...|
; 0127af:  26 01 51 00 00 00 00 00 00 00 00 00 00 00 24 00  |&.Q...........$.|
; 0127bf:  25 00 ff ff ff ff 01 01 00 00 64 00 74 76 00 00  |%.........d.tv..|
; 0127cf:  01 00 00 00 62 08 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 0127df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0127ef:  00 00 00 00 00 00 7f 00 00 00 00 00 2b 01 35 00  |............+.5.|
; 0127ff:  35 00 1d 00 5f 01 51 00 00 00 00 00 00 00 00 00  |5..._.Q.........|
; 01280f:  00 00 24 00 e6 96 87 e4 bb b6 e5 90 8d 00 64 00  |..$...........d.|
; 01281f:  dc 76 00 00 01 00 00 00 62 09 01 00 00 00 00 00  |.v......b.......|
; 01282f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01283f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01284f:  63 01 35 00 35 00 1d 00 97 01 51 00 00 00 00 00  |c.5.5.....Q.....|
; 01285f:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 01286f:  00 00 64 00 44 77 00 00 01 00 00 00 62 0a 01 00  |..d.Dw......b...|
; 01287f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01288f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01289f:  00 00 00 00 9c 01 35 00 35 00 1d 00 d0 01 51 00  |......5.5.....Q.|
; 0128af:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 0128bf:  ff ff 01 01 00 00 64 00 ac 77 00 00 01 00 00 00  |......d..w......|
; 0128cf:  74 0c 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 0128df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0128ef:  00 00 7f 00 00 00 00 00 52 00 5e 00 41 00 26 00  |........R.^.A.&.|
; 0128ff:  92 00 83 00 00 00 00 00 03 00 00 00 00 02 00 00  |................|
; 01290f:  ff ff 01 01 00 00 2c 01 14 78 00 00 01 00 00 00  |......,..x......|
; 01291f:  00 00 00 00 74 0f 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 01292f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01293f:  00 00 00 00 00 00 7f 00 00 00 00 00 41 01 5c 00  |............A.\.|
; 01294f:  41 00 28 00 81 01 83 00 00 00 00 00 03 00 00 00  |A.(.............|
; 01295f:  00 02 00 00 ff ff 01 01 00 00 2c 01 44 79 00 00  |..........,.Dy..|
; 01296f:  01 00 00 00 00 00 00 00 74 12 01 00 00 00 00 00  |........t.......|
; 01297f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01298f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01299f:  41 01 92 00 41 00 28 00 81 01 b9 00 32 68 34 6d  |A...A.(.....2h4m|
; 0129af:  00 00 00 00 00 02 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 0129bf:  74 7a 00 00 01 00 00 00 00 00 00 00 01 15 01 00  |tz..............|
; 0129cf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0129df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0129ef:  00 00 00 00 0f 00 de 00 c0 01 12 00 ce 01 ef 00  |................|
; 0129ff:  00 00 00 00 00 01 00 ff ff 64 2d 63 ff ff 64 00  |.........d-c..d.|
; 012a0f:  64 00 00 00 00 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|
; 012a1f:  36 19 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |6...............|
; 012a2f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012a3f:  00 00 7f 00 00 00 00 00 58 01 c2 00 64 00 22 00  |........X...d.".|
; 012a4f:  bb 01 e3 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 012a5f:  ff ff 02 01 64 00 00 00 00 00 00 00 01 00 00 00  |....d...........|
; 012a6f:  74 09 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 012a7f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012a8f:  00 00 7f 00 00 00 00 00 a0 01 d6 00 34 00 22 00  |............4.".|
; 012a9f:  d3 01 f7 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 012aaf:  ff ff 01 01 00 00 2c 01 a4 7b 00 00 01 00 00 00  |......,..{......|
; 012abf:  00 00 00 00 62 0b 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 012acf:  00 00 00 00 00 00 00 00 00 00 00 00 34 6d 00 00  |............4m..|
; 012adf:  00 00 00 00 00 00 7f 00 00 00 00 00 4e 00 34 00  |............N.4.|
; 012aef:  46 00 23 00 93 00 56 00 00 00 00 00 00 00 00 00  |F.#...V.........|
; 012aff:  00 00 29 00 29 00 ff ff ff ff 01 01 00 00 64 00  |..).).........d.|
; 012b0f:  d4 7c 00 00 01 00 00 00 62 0c 01 00 00 00 00 00  |.|......b.......|
; 012b1f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012b2f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 012b3f:  94 00 34 00 46 00 23 00 d9 00 56 00 00 00 00 00  |..4.F.#...V.....|
; 012b4f:  00 00 00 00 00 00 28 00 28 00 ff ff ff ff 01 01  |......(.(.......|
; 012b5f:  00 00 64 00 3c 7d 00 00 01 00 00 00 62 0d 01 00  |..d.<}......b...|
; 012b6f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012b7f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 012b8f:  00 00 00 00 da 00 34 00 46 00 23 00 1f 01 56 00  |......4.F.#...V.|
; 012b9f:  00 00 00 00 00 00 00 00 00 00 28 00 28 00 ff ff  |..........(.(...|
; 012baf:  ff ff 01 01 00 00 64 00 a4 7d 00 00 01 00 00 00  |......d..}......|
; 012bbf:  62 19 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 012bcf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012bdf:  00 00 7f 00 00 00 00 00 20 01 34 00 46 00 23 00  |........ .4.F.#.|
; 012bef:  65 01 56 00 00 00 00 00 00 00 00 00 00 00 28 00  |e.V...........(.|
; 012bff:  28 00 ff ff ff ff 01 01 00 00 64 00 e6 96 87 e4  |(.........d.....|
; 012c0f:  bb b6 e5 90 8d 00 01 00 00 00 00 00 00 00 00 00  |................|
; 012c1f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012c2f:  00 00 00 00 00 00 7f 00 00 00 00 00 60 01 77 00  |............`.w.|
; 012c3f:  6a 00 20 00 c9 01 96 00 00 00 00 00 03 00 00 00  |j. .............|
; 012c4f:  00 02 00 00 ff ff 01 01 00 00 2c 01 74 7e 00 00  |..........,.t~..|
; 012c5f:  01 00 00 00 00 00 00 00 74 08 01 00 00 00 00 00  |........t.......|
; 012c6f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012c7f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 012c8f:  60 01 3d 00 6a 00 20 00 c9 01 5c 00 00 00 00 00  |`.=.j. ...\.....|
; 012c9f:  03 00 00 00 00 02 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 012caf:  a4 7f 00 00 01 00 00 00 00 00 00 00 62 09 01 00  |............b...|
; 012cbf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012ccf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 012cdf:  00 00 00 00 4f 00 ae 00 69 00 21 00 b7 00 ce 00  |....O...i.!.....|
; 012cef:  00 00 00 00 00 00 00 00 00 00 2c 00 2d 00 ff ff  |..........,.-...|
; 012cff:  ff ff 01 01 00 00 64 00 d4 80 00 00 01 00 00 00  |......d.........|
; 012d0f:  62 0a 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 012d1f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012d2f:  00 00 7f 00 00 00 00 00 d8 00 ae 00 00 00 21 00  |..............!.|
; 012d3f:  40 01 ce 00 00 00 00 00 00 00 00 00 00 00 2c 00  |@.............,.|
; 012d4f:  2d 00 ff ff ff ff 01 01 00 00 64 00 3c 81 00 00  |-.........d.<...|
; 012d5f:  01 00 00 00 62 0f 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 012d6f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012d7f:  00 00 00 00 00 00 7f 00 00 00 00 00 60 01 ae 00  |............`...|
; 012d8f:  69 00 21 00 c8 01 ce 00 00 00 00 00 00 00 00 00  |i.!.............|
; 012d9f:  00 00 2c 00 32 68 34 6d 00 ff 01 01 00 00 64 00  |..,.2h4m......d.|
; 012daf:  a4 81 00 00 01 00 00 00 01 0a 01 00 00 00 00 00  |................|
; 012dbf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012dcf:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 012ddf:  54 00 a7 00 72 01 12 00 c5 01 b8 00 00 00 00 00  |T...r...........|
; 012def:  00 01 00 ff ff 64 2d 63 ff ff 00 00 64 00 00 00  |.....d-c....d...|
; 012dff:  00 00 00 00 00 00 2d 63 00 00 00 00 36 0b 01 00  |......-c....6...|
; 012e0f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012e1f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 012e2f:  00 00 00 00 52 01 8b 00 64 00 22 00 b5 01 ac 00  |....R...d.".....|
; 012e3f:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 012e4f:  00 00 00 00 00 00 00 00 01 00 00 00 74 0c 01 00  |............t...|
; 012e5f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012e6f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 012e7f:  00 00 00 00 b8 01 8b 00 0e 00 22 00 c5 01 ac 00  |..........".....|
; 012e8f:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 012e9f:  00 00 2c 01 0c 82 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 012eaf:  62 0d 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 012ebf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012ecf:  00 00 7f 00 34 6d 00 00 94 01 36 00 39 00 21 00  |....4m....6.9.!.|
; 012edf:  cc 01 56 00 00 00 00 00 00 00 00 00 00 00 2e 00  |..V.............|
; 012eef:  2e 00 ff ff ff ff 01 01 00 00 64 00 3c 83 00 00  |..........d.<...|
; 012eff:  01 00 00 00 62 11 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 012f0f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012f1f:  00 00 00 00 00 00 7f 00 00 00 00 00 92 01 65 00  |..............e.|
; 012f2f:  39 00 21 00 ca 01 85 00 00 00 00 00 00 00 00 00  |9.!.............|
; 012f3f:  00 00 2f 00 2f 00 ff ff ff ff 01 01 00 00 64 00  |.././.........d.|
; 012f4f:  a4 83 00 00 01 00 00 00 74 04 01 00 00 00 00 00  |........t.......|
; 012f5f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012f6f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 012f7f:  ce 00 90 00 21 00 1e 00 ee 00 ad 00 00 00 00 00  |....!...........|
; 012f8f:  03 00 00 00 00 02 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 012f9f:  0c 84 00 00 01 00 00 00 00 00 00 00 74 05 01 00  |............t...|
; 012faf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 012fbf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 012fcf:  00 00 00 00 f0 00 90 00 21 00 1e 00 10 01 ad 00  |........!.......|
; 012fdf:  00 00 00 00 03 00 00 00 00 02 00 00 ff ff 00 01  |................|
; 012fef:  00 00 2c 01 3c 85 00 00 01 00 00 00 00 00 00 00  |..,.<...........|
; 012fff:  62 08 01 00 e6 96 87 e4 bb b6 e5 90 8d 00 00 00  |b...............|
; 01300f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01301f:  00 00 7f 00 00 00 00 00 56 00 42 00 6c 00 25 00  |........V.B.l.%.|
; 01302f:  c1 00 66 00 00 00 00 00 00 00 00 00 00 00 33 00  |..f...........3.|
; 01303f:  33 00 ff ff ff ff 01 01 00 00 64 00 6c 86 00 00  |3.........d.l...|
; 01304f:  01 00 00 00 62 09 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 01305f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01306f:  00 00 00 00 00 00 7f 00 00 00 00 00 c8 00 ac 00  |................|
; 01307f:  6c 00 25 00 33 01 d0 00 00 00 00 00 00 00 00 00  |l.%.3...........|
; 01308f:  00 00 32 00 32 00 ff ff ff ff 01 01 00 00 64 00  |..2.2.........d.|
; 01309f:  d4 86 00 00 01 00 00 00 62 0a 01 00 00 00 00 00  |........b.......|
; 0130af:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0130bf:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0130cf:  3a 01 42 00 6c 00 25 00 a5 01 66 00 00 00 00 00  |:.B.l.%...f.....|
; 0130df:  00 00 00 00 00 00 32 00 33 00 ff ff ff ff 01 01  |......2.3.......|
; 0130ef:  00 00 64 00 3c 87 00 00 01 00 00 00 62 0b 01 00  |..d.<.......b...|
; 0130ff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01310f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01311f:  00 00 00 00 56 00 77 00 6c 00 25 00 c1 00 9b 00  |....V.w.l.%.....|
; 01312f:  00 00 00 00 72 61 6d 2f 66 69 6c 65 30 2e 6a 70  |....ram/file0.jp|
; 01313f:  67 00 01 01 00 00 64 00 a4 87 00 00 01 00 00 00  |g.....d.........|
; 01314f:  62 0c 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01315f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01316f:  00 00 7f 00 00 00 00 00 c8 00 77 00 6c 00 25 00  |..........w.l.%.|
; 01317f:  33 01 9b 00 00 00 00 00 00 00 00 00 00 00 32 00  |3.............2.|
; 01318f:  33 00 ff ff ff ff 01 01 00 00 64 00 0c 88 00 00  |3.........d.....|
; 01319f:  01 00 00 00 62 0d 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 0131af:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0131bf:  00 00 00 00 00 00 7f 00 00 00 00 00 3a 01 77 00  |............:.w.|
; 0131cf:  6c 00 25 00 a5 01 9b 00 00 00 00 00 00 00 00 00  |l.%.............|
; 0131df:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 0131ef:  74 88 00 00 01 00 00 00 62 0f 01 00 00 00 00 00  |t.......b.......|
; 0131ff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01320f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01321f:  56 00 ac 00 6c 00 25 00 c1 00 d0 00 00 00 00 00  |V...l.%.........|
; 01322f:  00 00 00 00 72 61 6d 2f 66 69 6c 65 31 2e 6a 70  |....ram/file1.jp|
; 01323f:  67 00 64 00 dc 88 00 00 01 00 00 00 62 10 01 00  |g.d.........b...|
; 01324f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01325f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01326f:  00 00 00 00 c8 00 42 00 6c 00 25 00 33 01 66 00  |......B.l.%.3.f.|
; 01327f:  00 00 00 00 00 00 00 00 00 00 32 00 33 00 ff ff  |..........2.3...|
; 01328f:  ff ff 01 01 00 00 64 00 44 89 00 00 01 00 00 00  |......d.D.......|
; 01329f:  6a 02 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |j...............|
; 0132af:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0132bf:  00 00 7f 00 00 00 00 00 66 00 a8 00 12 01 06 00  |........f.......|
; 0132cf:  77 01 ad 00 00 00 00 00 00 00 00 64 ff ff bf 07  |w..........d....|
; 0132df:  62 01 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0132ef:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0132ff:  00 00 7f 00 00 00 00 00 f1 00 3b 00 2f 00 1d 00  |..........;./...|
; 01330f:  1f 01 57 00 00 00 00 00 00 00 00 00 00 00 35 00  |..W...........5.|
; 01331f:  35 00 ff ff ff ff 01 01 00 00 64 00 ac 89 00 00  |5.........d.....|
; 01332f:  01 00 00 00 72 61 6d 2f 66 69 6c 65 32 2e 6a 70  |....ram/file2.jp|
; 01333f:  67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |g...............|
; 01334f:  00 00 00 00 00 00 7f 00 00 00 00 00 3c 01 33 00  |............<.3.|
; 01335f:  9b 00 1c 00 d6 01 4e 00 00 00 00 00 03 00 00 00  |......N.........|
; 01336f:  00 00 00 00 ff ff 00 01 00 00 2c 01 14 8a 00 00  |..........,.....|
; 01337f:  01 00 00 00 00 00 00 00 74 03 01 00 00 00 00 00  |........t.......|
; 01338f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01339f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0133af:  3c 01 51 00 9b 00 1f 00 d6 01 6f 00 00 00 00 00  |<.Q.......o.....|
; 0133bf:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 0133cf:  44 8b 00 00 01 00 00 00 00 00 00 00 62 0c 01 00  |D...........b...|
; 0133df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0133ef:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0133ff:  00 00 00 00 32 01 aa 00 2e 00 2f 00 5f 01 d8 00  |....2...../._...|
; 01340f:  00 00 00 00 00 00 00 00 00 00 3b 00 3c 00 ff ff  |..........;.<...|
; 01341f:  ff ff 01 01 00 00 64 00 74 8c 00 00 01 00 00 00  |......d.t.......|
; 01342f:  62 0d 01 00 72 61 6d 2f 66 69 6c 65 33 2e 6a 70  |b...ram/file3.jp|
; 01343f:  67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |g...............|
; 01344f:  00 00 7f 00 00 00 00 00 32 01 db 00 2e 00 2f 00  |........2...../.|
; 01345f:  5f 01 09 01 00 00 00 00 00 00 00 00 00 00 3b 00  |_.............;.|
; 01346f:  3c 00 ff ff ff ff 01 01 00 00 64 00 dc 8c 00 00  |<.........d.....|
; 01347f:  01 00 00 00 71 0e 01 00 00 00 00 00 00 00 00 00  |....q...........|
; 01348f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01349f:  00 00 00 00 00 00 7f 00 00 00 00 00 ef 00 84 00  |................|
; 0134af:  17 00 18 00 05 01 9b 00 00 00 00 00 49 00 00 00  |............I...|
; 0134bf:  71 0f 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |q...............|
; 0134cf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0134df:  00 00 7f 00 00 00 00 00 ef 00 a8 00 17 00 18 00  |................|
; 0134ef:  05 01 bf 00 00 00 00 00 36 00 00 00 71 10 01 00  |........6...q...|
; 0134ff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01350f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01351f:  00 00 00 00 ef 00 ca 00 17 00 18 00 05 01 e1 00  |................|
; 01352f:  00 00 00 00 72 61 6d 2f 66 69 6c 65 34 2e 6a 70  |....ram/file4.jp|
; 01353f:  67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |g...............|
; 01354f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01355f:  ef 00 eb 00 17 00 18 00 05 01 02 01 00 00 00 00  |................|
; 01356f:  36 00 00 00 71 12 01 00 00 00 00 00 00 00 00 00  |6...q...........|
; 01357f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01358f:  00 00 00 00 00 00 7f 00 00 00 00 00 0a 01 85 00  |................|
; 01359f:  1e 00 18 00 27 01 9c 00 00 00 00 00 3a 00 00 00  |....'.......:...|
; 0135af:  71 13 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |q...............|
; 0135bf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0135cf:  00 00 7f 00 00 00 00 00 0a 01 a8 00 1e 00 18 00  |................|
; 0135df:  27 01 bf 00 00 00 00 00 3a 00 00 00 71 14 01 00  |'.......:...q...|
; 0135ef:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0135ff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01360f:  00 00 00 00 0a 01 ca 00 1e 00 18 00 27 01 e1 00  |............'...|
; 01361f:  00 00 00 00 3a 00 00 00 71 15 01 00 00 00 00 00  |....:...q.......|
; 01362f:  00 00 00 00 72 61 6d 2f 66 69 6c 65 35 2e 6a 70  |....ram/file5.jp|
; 01363f:  67 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |g...............|
; 01364f:  0a 01 ee 00 1e 00 18 00 27 01 05 01 00 00 00 00  |........'.......|
; 01365f:  3a 00 00 00 74 16 01 00 00 00 00 00 00 00 00 00  |:...t...........|
; 01366f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01367f:  00 00 00 00 00 00 7f 00 00 00 00 00 4a 00 82 00  |............J...|
; 01368f:  80 00 1e 00 c9 00 9f 00 00 00 00 00 03 00 00 00  |................|
; 01369f:  00 00 00 00 ff ff 00 01 00 00 2c 01 44 8d 00 00  |..........,.D...|
; 0136af:  01 00 00 00 00 00 00 00 74 17 01 00 00 00 00 00  |........t.......|
; 0136bf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0136cf:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0136df:  4a 00 c8 00 80 00 1e 00 c9 00 e5 00 00 00 00 00  |J...............|
; 0136ef:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 0136ff:  74 8e 00 00 01 00 00 00 00 00 00 00 74 18 01 00  |t...........t...|
; 01370f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01371f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01372f:  00 00 00 00 00 00 eb 00 80 00 1e 00 c9 00 08 01  |................|
; 01373f:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 01374f:  00 00 2c 01 a4 8f 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 01375f:  74 19 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01376f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01377f:  00 00 7f 00 00 00 00 00 4a 00 a5 00 80 00 1e 00  |........J.......|
; 01378f:  c9 00 c2 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 01379f:  ff ff 00 01 00 00 2c 01 d4 90 00 00 01 00 00 00  |......,.........|
; 0137af:  00 00 00 00 74 1a 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0137bf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0137cf:  00 00 00 00 00 00 7f 00 00 00 00 00 ca 00 83 00  |................|
; 0137df:  25 00 1e 00 ee 00 a0 00 00 00 00 00 03 00 00 00  |%...............|
; 0137ef:  00 01 00 00 ff ff 00 01 00 00 2c 01 04 92 00 00  |..........,.....|
; 0137ff:  01 00 00 00 00 00 00 00 74 1b 01 00 00 00 00 00  |........t.......|
; 01380f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01381f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01382f:  ca 00 a6 00 25 00 1e 00 ee 00 c3 00 00 00 00 00  |....%...........|
; 01383f:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01384f:  34 93 00 00 01 00 00 00 00 00 00 00 74 1c 01 00  |4...........t...|
; 01385f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01386f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01387f:  00 00 00 00 ca 00 c9 00 25 00 1e 00 ee 00 e6 00  |........%.......|
; 01388f:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 01389f:  00 00 2c 01 64 94 00 00 01 00 00 00 00 00 00 00  |..,.d...........|
; 0138af:  74 1d 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 0138bf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0138cf:  00 00 7f 00 00 00 00 00 ca 00 ec 00 25 00 1e 00  |............%...|
; 0138df:  ee 00 09 01 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 0138ef:  ff ff 00 01 00 00 2c 01 94 95 00 00 01 00 00 00  |......,.........|
; 0138ff:  00 00 00 00 62 20 01 00 00 00 00 00 00 00 00 00  |....b ..........|
; 01390f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01391f:  00 00 00 00 00 00 7f 00 00 00 00 00 32 01 78 00  |............2.x.|
; 01392f:  2e 00 2f 00 5f 01 a6 00 00 00 00 00 00 00 00 00  |../._...........|
; 01393f:  00 00 3b 00 3c 00 ff ff ff ff 01 01 00 00 64 00  |..;.<.........d.|
; 01394f:  c4 96 00 00 01 00 00 00 71 03 01 00 00 00 00 00  |........q.......|
; 01395f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01396f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01397f:  41 01 2e 00 24 00 24 00 64 01 51 00 00 00 00 00  |A...$.$.d.Q.....|
; 01398f:  3d 00 00 00 62 07 01                             |=...b..|
