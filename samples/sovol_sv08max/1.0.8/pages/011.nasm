; page 11 'file_list': 49 objects

; object address table, 49 objects, block loaded at 0xb950
.dd 0xba14, 0xba54, 0xbaa8, 0xbafc, 0xbb50, 0xbba4, 0xbbf8, 0xbc4c
.dd 0xbca0, 0x121c, 0x1270, 0x12c4, 0xbcf4, 0xbd48, 0xbd9c, 0xbdf0
.dd 0xbe44, 0xbe98, 0xbeec, 0xbf40, 0xbf94, 0xbfe8, 0xc03c, 0xc090
.dd 0xc0e4, 0xc138, 0xc18c, 0xc1e0, 0xc234, 0xc288, 0xc2dc, 0xc330
.dd 0xc384, 0xc3c4, 0xc404, 0xc444, 0xc484, 0xc4c4, 0xc504, 0xc558
.dd 0xc5ac, 0xc600, 0xc654, 0xc6a8, 0xc6fc, 0xc71c, 0x1318, 0x136c
.dd 0x13c0

; object id 0 (page 'file_list'): x=0, y=0, w=480, h=272, name hash=0xd88e4d73
; flags=0x37, aph=127, events: event_3=0x11b93
; sta=2, pic=25
; 012c39:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x11b93
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x15b19
    ref 44
    ref 45
    local_fea = ""
    local_11a7 = ""
    local_1245 = ""
    local_12e3 = ""
    local_1381 = ""
    local_141f = ""
    local_1011 = ""
    local_11ce = ""
    local_126c = ""
    local_130a = ""
    local_13a8 = ""
    local_1446 = ""
    local_1038 = ""
    local_11f5 = ""
    local_1293 = ""
    local_1331 = ""
    local_13cf = ""
    local_146d = ""
    local_fbc = local_f9e
    local_fbd = local_f9e
    local_1179 = local_f9e
    local_117a = local_f9e
    local_1217 = local_f9e
    local_1218 = local_f9e
    local_12b5 = local_f9e
    local_12b6 = local_f9e
    local_1353 = local_f9e
    local_1354 = local_f9e
    local_13f1 = local_f9e
    local_13f2 = local_f9e
    local_1127 = local_f9e
    local_1128 = local_f9e
    local_10fe = local_f9e
    local_10ff = local_f9e
    local_1150 = local_f9e
    local_1151 = local_f9e
    local_153d = local_f9e
    local_153e = local_f9e
    local_1566 = local_f9e
    local_1567 = local_f9e
    local_158f = local_f9e
    local_1590 = local_f9e
    local_15b8 = local_f9e
    local_15b9 = local_f9e
    local_15e1 = local_f9e
    local_15e2 = local_f9e
    local_160a = local_f9e
    local_160b = local_f9e
    if global_14 != 0 then jump lbl_15e20
    local_164f = "本地"
    local_1678 = "U盘"
    local_16a1 = "延时摄影"
    jmp lbl_160ef

lbl_15e20:
    if global_14 != 1 then jump lbl_15e87
    local_164f = "Local"
    local_1678 = "U Disk"
    local_16a1 = "time-lapse\rphotography"
    jmp lbl_160ef

lbl_15e87:
    if global_14 != 2 then jump lbl_15ef4
    local_164f = "ローカル"
    local_1678 = "Uディスク"
    local_16a1 = "写真の遅れ"
    jmp lbl_160ef

lbl_15ef4:
    if global_14 != 3 then jump lbl_15f5e
    local_164f = "örtlich"
    local_1678 = "U-Disk"
    local_16a1 = "Verzögerte\rFotografie"
    jmp lbl_160ef

lbl_15f5e:
    if global_14 != 4 then jump lbl_15fc5
    local_164f = "Local"
    local_1678 = "Disco U"
    local_16a1 = "Fotografía\rRetrasada"
    T 0x12a

lbl_15fc5:
    if global_14 != 5 then jump lbl_1602f
    local_164f = "Locale"
    local_1678 = "Disque U"
    local_16a1 = "Photographie\rRetardée"
    jmp lbl_160ef

lbl_1602f:
    if global_14 != 6 then jump lbl_16092
    local_164f = "Local"
    local_1678 = "Disco U"
    local_16a1 = "Fotografia\rTardia"
    jmp lbl_160ef

lbl_16092:
    if global_14 != 7 then jump lbl_160ef
    local_164f = "Locale"
    local_1678 = "Disco U"
    local_16a1 = "Fotografia\rtime-lapse"

lbl_160ef:
    doevents
    down
    up

; object id 1 (button 'b2'): x=67, y=45, w=126, h=111, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x11bd9
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 012c89:  ff ff                                            |..|

; touch_release
.org 0x11bd9
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 2 (text 't0'): x=-366, y=97, w=50, h=16, name hash=0xc02992d9
; flags=0x37, aph=127, events: touch_press=0x11c39, touch_release=0x11c4e
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0x11c39
    click b2, 1
    up

; touch_release
.org 0x11c4e
    click b2, 0
    down

; object id 3 (text 't6'): x=-299, y=97, w=33, h=16, name hash=0xf18ad47e
; flags=0x37, aph=127, events: touch_press=0x11c69, touch_release=0x11c7e
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0x11c69
    click b2, 1
    up

; touch_release
.org 0x11c7e
    click b2, 0
    down

; object id 4 (text 'file_0'): x=65, y=116, w=123, h=38, name hash=0x4df1a189
; flags=0x37, aph=127, events: touch_press=0x11c99, touch_release=0x11cae
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x11c99
    click b2, 1
    up

; touch_release
.org 0x11cae
    click b2, 0
    down
    up

; object id 5 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x11cd3
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 012dd9:  ff ff                                            |..|

; touch_release
.org 0x11cd3
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x11d3f
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 012e2d:  ff ff                                            |..|

; touch_release
.org 0x11d3f
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x11dab
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 012e81:  ff ff                                            |..|

; touch_release
.org 0x11dab
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x11e17
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 012ed5:  ff ff                                            |..|

; touch_release
.org 0x11e17
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
.org 0x11e83
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
.org 0x11eed
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
.org 0x11f57
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 12 (button 'b3'): x=192, y=45, w=126, h=111, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x11fc1
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 012f29:  ff ff                                            |..|

; touch_release
.org 0x11fc1
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 13 (text 't1'): x=-236, y=97, w=50, h=16, name hash=0xb64689a1
; flags=0x37, aph=127, events: touch_press=0x12021, touch_release=0x12036
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0x12021
    click b3, 1
    up

; touch_release
.org 0x12036
    click b3, 0
    down

; object id 14 (text 't7'): x=-168, y=97, w=33, h=16, name hash=0x87e5cf06
; flags=0x37, aph=127, events: touch_press=0x12051, touch_release=0x12066
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0x12051
    click b3, 1
    up

; touch_release
.org 0x12066
    click b3, 0
    down

; object id 15 (text 'file_1'): x=193, y=116, w=123, h=38, name hash=0xe6b11697
; flags=0x37, aph=127, events: touch_press=0x12081, touch_release=0x12096
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x12081
    click b3, 1
    up

; touch_release
.org 0x12096
    click b3, 0
    down
    up

; object id 16 (button 'b4'): x=320, y=45, w=126, h=111, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x120bb
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2
; 013079:  ff ff                                            |..|

; touch_release
.org 0x120bb
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 17 (text 't2'): x=-109, y=97, w=50, h=16, name hash=0x2cf7a429
; flags=0x37, aph=127, events: touch_press=0x1211b, touch_release=0x12130
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0x1211b
    click b4, 1
    up

; touch_release
.org 0x12130
    click b4, 0
    down

; object id 18 (text 't8'): x=-40, y=97, w=33, h=16, name hash=0x7e126fc0
; flags=0x37, aph=127, events: touch_press=0x1214b, touch_release=0x12160
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0x1214b
    click b4, 1
    up

; touch_release
.org 0x12160
    click b4, 0
    down

; object id 19 (text 'file_2'): x=321, y=116, w=123, h=38, name hash=0x1fb1d202
; flags=0x37, aph=127, events: touch_press=0x1217b, touch_release=0x12190
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x1217b
    click b4, 1
    up

; touch_release
.org 0x12190
    click b4, 0
    down
    up

; object id 20 (button 'b5'): x=64, y=157, w=126, h=111, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x121b5
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3
; 0131c9:  ff ff                                            |..|

; touch_release
.org 0x121b5
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 21 (text 't3'): x=-365, y=208, w=50, h=16, name hash=0x5a98bf51
; flags=0x37, aph=127, events: touch_press=0x12215, touch_release=0x1222a
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0x12215
    click b5, 1
    up

; touch_release
.org 0x1222a
    click b5, 0
    down

; object id 22 (text 't9'): x=-296, y=208, w=33, h=16, name hash=0x87d74b8
; flags=0x37, aph=127, events: touch_press=0x12245, touch_release=0x1225a
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0x12245
    click b5, 1
    up

; touch_release
.org 0x1225a
    click b5, 0
    down

; object id 23 (text 'file_3'): x=65, y=228, w=123, h=38, name hash=0xb4f1651c
; flags=0x37, aph=127, events: touch_press=0x12275, touch_release=0x1228a
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x12275
    click b5, 1
    up

; touch_release
.org 0x1228a
    click b5, 0
    down
    up

; object id 24 (button 'b6'): x=192, y=157, w=126, h=111, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x122af
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 013319:  ff ff                                            |..|

; touch_release
.org 0x122af
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 25 (text 't4'): x=-236, y=208, w=50, h=16, name hash=0x1d54e28e
; flags=0x37, aph=127, events: touch_press=0x1230f, touch_release=0x12324
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0x1230f
    click b6, 1
    up

; touch_release
.org 0x12324
    click b6, 0
    down

; object id 26 (text 't10'): x=-170, y=208, w=33, h=16, name hash=0x9c193d5e
; flags=0x37, aph=127, events: touch_press=0x1233f, touch_release=0x12354
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0x1233f
    click b6, 1
    up

; touch_release
.org 0x12354
    click b6, 0
    down

; object id 27 (text 'file_4'): x=193, y=228, w=123, h=38, name hash=0xe971469f
; flags=0x37, aph=127, events: touch_press=0x1236f, touch_release=0x12384
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x1236f
    click b6, 1
    up

; touch_release
.org 0x12384
    click b6, 0
    down
    up

; object id 28 (button 'b7'): x=319, y=157, w=126, h=111, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x123a9
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 5
; 013469:  ff ff                                            |..|

; touch_release
.org 0x123a9
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 29 (text 't5'): x=-109, y=208, w=50, h=16, name hash=0x6b3bf9f6
; flags=0x37, aph=127, events: touch_press=0x12409, touch_release=0x1241e
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"
; text:
;   -1: ""

; touch_press
.org 0x12409
    click b7, 1
    up

; touch_release
.org 0x1241e
    click b7, 0
    down

; object id 30 (text 't11'): x=-41, y=208, w=33, h=16, name hash=0x102115f6
; flags=0x37, aph=127, events: touch_press=0x12439, touch_release=0x1244e
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"
; text:
;   -1: ""

; touch_press
.org 0x12439
    click b7, 1
    up

; touch_release
.org 0x1244e
    click b7, 0
    down

; object id 31 (text 'file_5'): x=320, y=228, w=123, h=38, name hash=0x4231f181
; flags=0x37, aph=127, events: touch_press=0x12469, touch_release=0x1247e
; sta=3, font=1, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=0, background=0, txt="文件名"
; text:
;   -1: ""

; touch_press
.org 0x12469
    click b7, 1
    up

; touch_release
.org 0x1247e
    click b7, 0
    down

; object id 32 (external_picture 'exp1'): x=95, y=49, w=64, h=64, name hash=0x8ceb07bd
; flags=0x37, aph=127, events: touch_press=0x12499, touch_release=0x124ae
; path="ram/file0.jpg"
; 0135a9:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x12499
    click b2, 1
    up

; touch_release
.org 0x124ae
    click b2, 0
    down

; object id 33 (external_picture 'exp2'): x=223, y=49, w=64, h=64, name hash=0xc8dff2ed
; flags=0x37, aph=127, events: touch_press=0x124c9, touch_release=0x124de
; path="ram/file1.jpg"
; 0135e9:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x124c9
    click b3, 1
    up

; touch_release
.org 0x124de
    click b3, 0
    down

; object id 34 (external_picture 'exp3'): x=350, y=48, w=64, h=64, name hash=0x88caab0
; flags=0x37, aph=127, events: touch_press=0x124f9, touch_release=0x1250e
; path="ram/file2.jpg"
; 013629:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x124f9
    click b4, 1
    up

; touch_release
.org 0x1250e
    click b4, 0
    down

; object id 35 (external_picture 'exp4'): x=95, y=161, w=64, h=64, name hash=0x40b6184d
; flags=0x37, aph=127, events: touch_press=0x12529, touch_release=0x1253e
; path="ram/file3.jpg"
; 013669:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x12529
    click b5, 1
    up

; touch_release
.org 0x1253e
    click b5, 0
    down

; object id 36 (external_picture 'exp5'): x=223, y=161, w=64, h=64, name hash=0x80e54010
; flags=0x37, aph=127, events: touch_press=0x12559, touch_release=0x1256e
; path="ram/file4.jpg"
; 0136a9:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x12559
    click b6, 1
    up

; touch_release
.org 0x1256e
    click b6, 0
    down

; object id 37 (external_picture 'exp6'): x=351, y=161, w=64, h=64, name hash=0xc4d1b540
; flags=0x37, aph=127, events: touch_press=0x12589, touch_release=0x1259e
; path="ram/file5.jpg"
; 0136e9:  00 00 00 00 00 00 ff 00                          |........|

; touch_press
.org 0x12589
    click b7, 1
    up

; touch_release
.org 0x1259e
    click b7, 0
    down
    up

; object id 38 (button 'b11'): x=158, y=49, w=28, h=28, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x125c3
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 9
; 013739:  ff ff                                            |..|

; touch_release
.org 0x125c3
    prints 0x65, 1
    prints dp, 1
    prints 9, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 39 (button 'b12'): x=287, y=49, w=28, h=28, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x1262d
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 10
; 01378d:  ff ff                                            |..|

; touch_release
.org 0x1262d
    prints 0x65, 1
    prints dp, 1
    prints 10, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 40 (button 'b13'): x=415, y=49, w=28, h=28, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x12698
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 11
; 0137e1:  ff ff                                            |..|

; touch_release
.org 0x12698
    prints 0x65, 1
    prints dp, 1
    prints 11, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 41 (button 'b14'): x=158, y=162, w=28, h=28, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x12703
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 12
; 013835:  ff ff                                            |..|

; touch_release
.org 0x12703
    prints 0x65, 1
    prints dp, 1
    prints 12, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 42 (button 'b15'): x=287, y=162, w=28, h=28, name hash=0x27706ad7
; flags=0x37, aph=127, events: touch_release=0x1276e
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 13
; 013889:  ff ff                                            |..|

; touch_release
.org 0x1276e
    prints 0x65, 1
    prints dp, 1
    prints 13, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 43 (button 'b16'): x=415, y=162, w=28, h=28, name hash=0xb7f90e98
; flags=0x37, aph=127, events: touch_release=0x127d9
; borderc=0x0000, picc=16, picc2=16, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 14
; 0138dd:  ff ff                                            |..|

; touch_release
.org 0x127d9
    prints 0x65, 1
    prints dp, 1
    prints 14, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 44 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1283b
; tim=1000, en=1

; timer
.org 0x1283b
    if global_1c <= 0 then jump lbl_12897
    if global_20 <= 0 then jump lbl_12897
    global_20--
    if global_20 != 0 then jump lbl_12897
    dim = global_30

lbl_12897:
    down
    up

; object id 45 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x128b1

; touch_release
.org 0x128b1
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 302 (button 'b0'): x=66, y=7, w=205, h=34, name hash=0xce1a7436
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
.org 0x128e9
    prints 0x65, 1
    prints dp, 1
    prints 110, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 303 (button 'b1'): x=269, y=7, w=203, h=34, name hash=0xb8756f4e
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
.org 0x12955
    prints 0x65, 1
    prints dp, 1
    prints 111, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 304 (button 'b17'): x=467, y=0, w=13, h=7, name hash=0x3bc12630
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
.org 0x129c1
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 8676 bytes (4 trailing zero bytes dropped)
; 01392d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01393d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01394d:  00 00 00 00 33 01 ab 00 2e 00 2f 00 60 01 d9 00  |....3...../.`...|
; 01395d:  00 00 00 00 00 00 00 00 00 00 3b 00 3c 00 ff ff  |..........;.<...|
; 01396d:  ff ff 01 01 00 00 64 00 20 5c 00 00 01 00 00 00  |......d. \......|
; 01397d:  62 18 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01398d:  00 00 00 00 00 00 00 00 00 00 00 00 32 68 34 6d  |............2h4m|
; 01399d:  00 00 7f 00 00 00 00 00 33 01 dc 00 2e 00 2f 00  |........3...../.|
; 0139ad:  60 01 0a 01 00 00 00 00 00 00 00 00 00 00 3b 00  |`.............;.|
; 0139bd:  3c 00 ff ff ff ff 01 01 00 00 64 00 88 5c 00 00  |<.........d..\..|
; 0139cd:  01 00 00 00 74 02 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0139dd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0139ed:  00 00 00 00 00 00 7f 00 00 00 00 00 6a 00 69 00  |............j.i.|
; 0139fd:  0c 01 1c 00 75 01 84 00 00 00 00 00 03 00 00 00  |....u...........|
; 013a0d:  00 00 00 00 ff ff 01 01 00 00 2c 01 f0 5c 00 00  |..........,..\..|
; 013a1d:  01 00 00 00 00 00 00 00 74 05 01 00 00 00 00 00  |........t.......|
; 013a2d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013a3d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 013a4d:  6a 00 42 00 0c 01 27 00 75 01 68 00 00 00 00 00  |j.B...'.u.h.....|
; 013a5d:  03 00 00 00 00 00 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 013a6d:  20 5e 00 00 01 00 00 00 00 00 00 00 62 01 01 00  | ^..........b...|
; 013a7d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013a8d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 013a9d:  00 00 00 00 97 01 d7 00 45 00 36 00 db 01 0c 01  |........E.6.....|
; 013aad:  00 00 00 00 00 00 00 00 00 00 16 00 18 00 ff ff  |................|
; 013abd:  ff ff 01 01 00 00 64 00 50 5f 00 00 34 6d 00 00  |......d.P_..4m..|
; 013acd:  00 02 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013add:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013aed:  00 00 50 00 00 00 00 00 74 00 32 00 0f 01 c8 00  |..P.....t.2.....|
; 013afd:  82 01 f9 00 00 00 00 00 03 01 02 00 00 00 00 00  |................|
; 013b0d:  00 00 00 00 00 00 1a db bf 07 00 00 00 00 00 00  |................|
; 013b1d:  4e 00 00 00 e0 02 00 00 6c b6 00 00 71 07 01 00  |N.......l...q...|
; 013b2d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013b3d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 013b4d:  00 00 00 00 a0 01 06 00 34 00 2b 00 d3 01 30 00  |........4.+...0.|
; 013b5d:  00 00 00 00 15 00 00 00 74 0a 01 00 00 00 00 00  |........t.......|
; 013b6d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013b7d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 013b8d:  9d 01 8a 00 21 00 1e 00 bd 01 a7 00 00 00 00 00  |....!...........|
; 013b9d:  03 00 00 00 00 02 00 00 bf 07 02 01 00 00 2c 01  |..............,.|
; 013bad:  b8 5f 00 00 01 00 00 00 00 00 00 00 74 0b 01 00  |._..........t...|
; 013bbd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013bcd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 013bdd:  00 00 00 00 9c 01 54 00 21 00 1e 00 bc 01 71 00  |......T.!.....q.|
; 013bed:  00 00 00 00 03 00 00 00 00 02 00 00 e6 96 87 e4  |................|
; 013bfd:  bb b6 e5 90 8d 00 00 00 01 00 00 00 00 00 00 00  |................|
; 013c0d:  74 0c 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 013c1d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013c2d:  00 00 7f 00 00 00 00 00 bd 01 54 00 21 00 1e 00  |..........T.!...|
; 013c3d:  dd 01 71 00 00 00 00 00 03 00 00 00 00 02 00 00  |..q.............|
; 013c4d:  1a db 00 01 00 00 2c 01 18 62 00 00 01 00 00 00  |......,..b......|
; 013c5d:  00 00 00 00 74 0d 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 013c6d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013c7d:  00 00 00 00 00 00 7f 00 00 00 00 00 be 01 8a 00  |................|
; 013c8d:  21 00 1e 00 de 01 a7 00 00 00 00 00 03 00 00 00  |!...............|
; 013c9d:  00 02 00 00 bf 07 00 01 00 00 2c 01 48 63 00 00  |..........,.Hc..|
; 013cad:  01 00 00 00 00 00 00 00 74 11 01 00 00 00 00 00  |........t.......|
; 013cbd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013ccd:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 013cdd:  9b 01 c1 00 21 00 1e 00 bb 01 de 00 00 00 00 00  |....!...........|
; 013ced:  03 00 00 00 00 02 00 00 bf 07 02 01 00 00 2c 01  |..............,.|
; 013cfd:  78 64 00 00 01 00 00 00 00 00 00 00 74 12 01 00  |xd..........t...|
; 013d0d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013d1d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 013d2d:  00 00 00 00 bc 01 c1 00 21 00 1e 00 dc 01 de 00  |........!.......|
; 013d3d:  00 00 00 00 03 00 00 00 00 02 00 00 bf 07 00 01  |................|
; 013d4d:  00 00 2c 01 a8 65 00 00 01 00 00 00 00 00 00 00  |..,..e..........|
; 013d5d:  62 09 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 013d6d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013d7d:  00 00 7f 00 00 00 00 00 bb 01 d6 00 24 00 35 00  |............$.5.|
; 013d8d:  de 01 0a 01 00 00 00 00 00 00 00 00 00 00 1e 00  |................|
; 013d9d:  48 00 ff ff ff ff 01 01 00 00 64 00 d8 66 00 00  |H.........d..f..|
; 013dad:  01 00 00 00 62 0a 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 013dbd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013dcd:  00 00 00 00 00 00 7f 00 00 00 00 00 bc 01 a0 00  |................|
; 013ddd:  24 00 35 00 df 01 d4 00 00 00 00 00 00 00 00 00  |$.5.............|
; 013ded:  00 00 1e 00 48 00 ff ff ff ff 01 01 00 00 64 00  |....H.........d.|
; 013dfd:  40 67 00 00 01 00 00 00 62 0b 01 00 00 00 00 00  |@g......b.......|
; 013e0d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013e1d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 013e2d:  bc 01 2e 00 24 00 35 00 df 01 62 00 00 00 00 00  |....$.5...b.....|
; 013e3d:  00 00 00 00 00 00 1e 00 48 00 ff ff ff ff 01 01  |........H.......|
; 013e4d:  00 00 64 00 a8 67 00 00 01 00 00 00 62 2e 01 00  |..d..g......b...|
; 013e5d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013e6d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 013e7d:  00 00 00 00 42 00 07 00 cd 00 22 00 0e 01 28 00  |....B....."...(.|
; 013e8d:  00 00 00 00 00 00 00 00 00 00 1b 00 1c 00 ff ff  |................|
; 013e9d:  ff ff 01 01 00 00 64 00 10 68 00 00 01 00 00 00  |......d..h......|
; 013ead:  62 2f 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b/..............|
; 013ebd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013ecd:  00 00 7f 00 00 00 00 00 0d 01 07 00 cb 00 22 00  |..............".|
; 013edd:  d7 01 28 00 00 00 00 00 00 00 00 00 00 00 1b 00  |..(.............|
; 013eed:  1c 00 ff ff ff ff 01 01 00 00 64 00 78 68 00 00  |..........d.xh..|
; 013efd:  01 00 00 00 62 30 01 00 00 00 00 00 00 00 00 00  |....b0..........|
; 013f0d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013f1d:  00 00 00 00 00 00 00 00 00 00 00 00 d3 01 00 00  |................|
; 013f2d:  0d 00 07 00 32 68 34 6d 00 00 00 00 00 00 00 00  |....2h4m........|
; 013f3d:  00 00 1b 00 1c 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 013f4d:  e0 68 00 00 01 00 00 00 62 04 01 00 00 00 00 00  |.h......b.......|
; 013f5d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013f6d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 013f7d:  42 00 07 00 cf 00 22 00 10 01 28 00 00 00 00 00  |B....."...(.....|
; 013f8d:  00 00 00 00 00 00 1b 00 1c 00 ff ff ff ff 01 01  |................|
; 013f9d:  00 00 64 00 48 69 00 00 01 00 00 00 62 05 01 00  |..d.Hi......b...|
; 013fad:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 013fbd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 013fcd:  00 00 00 00 0f 01 06 00 cb 00 22 00 d9 01 27 00  |.........."...'.|
; 013fdd:  00 00 00 00 00 00 00 00 00 00 1b 00 1c 00 ff ff  |................|
; 013fed:  ff ff 01 01 00 00 64 00 b0 69 00 00 01 00 00 00  |......d..i......|
; 013ffd:  62 06 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01400d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01401d:  00 00 00 00 00 00 00 00 d6 01 00 00 0a 00 07 00  |................|
; 01402d:  df 01 06 00 00 00 00 00 00 00 00 00 00 00 1b 00  |................|
; 01403d:  1c 00 ff ff ff ff 01 01 00 00 64 00 18 6a 00 00  |..........d..j..|
; 01404d:  01 00 00 00 62 04 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 01405d:  00 00 00 00 34 6d 00 00 00 00 00 00 00 00 00 00  |....4m..........|
; 01406d:  00 00 00 00 00 00 7f 00 00 00 00 00 42 00 07 00  |............B...|
; 01407d:  cc 00 22 00 0d 01 28 00 00 00 00 00 00 00 00 00  |.."...(.........|
; 01408d:  00 00 19 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01409d:  80 6a 00 00 01 00 00 00 62 05 01 00 00 00 00 00  |.j......b.......|
; 0140ad:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0140bd:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0140cd:  0b 01 07 00 ce 00 22 00 d8 01 28 00 00 00 00 00  |......"...(.....|
; 0140dd:  00 00 00 00 00 00 19 00 1a 00 ff ff ff ff 01 01  |................|
; 0140ed:  00 00 64 00 e8 6a 00 00 01 00 00 00 62 06 01 00  |..d..j......b...|
; 0140fd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01410d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01411d:  00 00 00 00 d3 01 00 00 0d 00 06 00 df 01 05 00  |................|
; 01412d:  00 00 00 00 00 00 00 00 00 00 1b 00 1c 00 ff ff  |................|
; 01413d:  ff ff 01 01 00 00 64 00 50 6b 00 00 01 00 00 00  |......d.Pk......|
; 01414d:  62 0b 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01415d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01416d:  00 00 7f 00 00 00 00 00 42 00 07 00 89 00 22 00  |........B.....".|
; 01417d:  ca 00 28 00 00 00 00 00 00 00 00 00 00 00 50 00  |..(...........P.|
; 01418d:  51 00 ff ff e6 96 87 e4 bb b6 e5 90 8d 00 00 00  |Q...............|
; 01419d:  01 00 00 00 62 0c 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 0141ad:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0141bd:  00 00 00 00 00 00 7f 00 00 00 00 00 ca 00 07 00  |................|
; 0141cd:  89 00 22 00 52 01 28 00 00 00 00 00 00 00 00 00  |..".R.(.........|
; 0141dd:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 0141ed:  20 6c 00 00 01 00 00 00 62 0d 01 00 00 00 00 00  | l......b.......|
; 0141fd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01420d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01421d:  51 01 07 00 89 00 22 00 d9 01 28 00 00 00 00 00  |Q....."...(.....|
; 01422d:  00 00 00 00 00 00 50 00 51 00 ff ff ff ff 01 01  |......P.Q.......|
; 01423d:  00 00 64 00 88 6c 00 00 01 00 00 00 62 16 01 00  |..d..l......b...|
; 01424d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01425d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01426d:  00 00 00 00 ba 01 9f 00 26 00 38 00 df 01 d6 00  |........&.8.....|
; 01427d:  00 00 00 00 00 00 00 00 00 00 1e 00 48 00 ff ff  |............H...|
; 01428d:  ff ff 01 01 00 00 64 00 f0 6c 00 00 01 00 00 00  |......d..l......|
; 01429d:  62 17 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0142ad:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0142bd:  00 00 7f 00 00 00 00 00 bb 01 d6 00 24 00 37 00  |............$.7.|
; 0142cd:  de 01 0c 01 00 00 00 00 00 00 00 00 00 00 1e 00  |................|
; 0142dd:  48 00 ff ff ff ff 01 01 00 00 64 00 58 6d 00 00  |H.........d.Xm..|
; 0142ed:  01 00 00 00 74 05 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0142fd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01430d:  00 00 00 00 00 00 7f 00 00 00 00 00 54 01 90 00  |............T...|
; 01431d:  32 00 1a 00 85 01 a9 00 00 00 00 00 32 68 34 6d  |2...........2h4m|
; 01432d:  00 00 00 00 ff ff 00 01 00 00 2c 01 c0 6d 00 00  |..........,..m..|
; 01433d:  01 00 00 00 00 00 00 00 74 06 01 00 00 00 00 00  |........t.......|
; 01434d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01435d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01436d:  a3 01 90 00 37 00 1a 00 d9 01 a9 00 00 00 00 00  |....7...........|
; 01437d:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01438d:  f0 6e 00 00 01 00 00 00 00 00 00 00 74 09 01 00  |.n..........t...|
; 01439d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0143ad:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0143bd:  00 00 00 00 79 00 35 00 58 01 22 00 d0 01 56 00  |....y.5.X."...V.|
; 0143cd:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 01 01  |................|
; 0143dd:  00 00 2c 01 20 70 00 00 01 00 00 00 00 00 00 00  |..,. p..........|
; 0143ed:  74 0e 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 0143fd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01440d:  00 00 7f 00 00 00 00 00 e8 01 ae 00 6f 00 1a 00  |............o...|
; 01441d:  56 02 c7 00 00 00 00 00 03 00 00 00 00 00 00 00  |V...............|
; 01442d:  ff ff 01 01 00 00 2c 01 50 71 00 00 01 00 00 00  |......,.Pq......|
; 01443d:  00 00 00 00 62 0f 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 01444d:  00 00 00 00 00 00 00 00 00 00 00 00 34 6d 00 00  |............4m..|
; 01445d:  00 00 00 00 00 00 7f 00 00 00 00 00 42 00 07 00  |............B...|
; 01446d:  c8 00 22 00 09 01 28 00 00 00 00 00 00 00 00 00  |.."...(.........|
; 01447d:  00 00 19 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01448d:  80 72 00 00 01 00 00 00 62 10 01 00 00 00 00 00  |.r......b.......|
; 01449d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0144ad:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0144bd:  0a 01 07 00 cf 00 22 00 d8 01 28 00 00 00 00 00  |......"...(.....|
; 0144cd:  00 00 00 00 00 00 19 00 1a 00 ff ff ff ff 01 01  |................|
; 0144dd:  00 00 64 00 e8 72 00 00 01 00 00 00 62 11 01 00  |..d..r......b...|
; 0144ed:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0144fd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01450d:  00 00 00 00 d6 01 00 00 0a 00 06 00 df 01 05 00  |................|
; 01451d:  00 00 00 00 00 00 00 00 00 00 19 00 1a 00 ff ff  |................|
; 01452d:  ff ff 01 01 00 00 64 00 50 73 00 00 01 00 00 00  |......d.Ps......|
; 01453d:  74 12 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01454d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01455d:  00 00 7f 00 00 00 00 00 00 01 aa 00 78 00 1a 00  |............x...|
; 01456d:  77 01 c3 00 00 00 00 00 03 00 00 00 00 00 00 00  |w...............|
; 01457d:  ff ff 02 01 00 00 2c 01 b8 73 00 00 e6 96 87 e4  |......,..s......|
; 01458d:  bb b6 e5 90 8d 00 01 00 00 00 00 00 00 00 00 00  |................|
; 01459d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0145ad:  00 00 00 00 00 00 7f 00 00 00 00 00 00 01 c1 00  |................|
; 0145bd:  78 00 1a 00 77 01 da 00 00 00 00 00 03 00 00 00  |x...w...........|
; 0145cd:  00 00 00 00 ff ff 02 01 00 00 2c 01 e8 74 00 00  |..........,..t..|
; 0145dd:  01 00 00 00 00 00 00 00 74 14 01 00 00 00 00 00  |........t.......|
; 0145ed:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0145fd:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01460d:  7e 01 aa 00 5a 00 1a 00 d7 01 c3 00 00 00 00 00  |~...Z...........|
; 01461d:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01462d:  18 76 00 00 01 00 00 00 00 00 00 00 74 15 01 00  |.v..........t...|
; 01463d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01464d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01465d:  00 00 00 00 7e 01 c1 00 5a 00 1a 00 d7 01 da 00  |....~...Z.......|
; 01466d:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 01467d:  00 00 2c 01 48 77 00 00 01 00 00 00 00 00 00 00  |..,.Hw..........|
; 01468d:  74 01 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01469d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0146ad:  00 00 7f 00 00 00 00 00 11 00 0e 00 00 01 22 00  |..............".|
; 0146bd:  1f 01 2f 00 00 00 00 00 03 00 00 00 00 00 00 00  |../.............|
; 0146cd:  ff ff 00 01 00 00 2c 01 78 78 00 00 01 00 00 00  |......,.xx......|
; 0146dd:  00 00 00 00 74 02 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0146ed:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0146fd:  00 00 00 00 00 00 7f 00 00 00 00 00 a3 00 d0 00  |................|
; 01470d:  55 00 15 00 f7 00 e4 00 00 00 00 00 03 00 00 00  |U...............|
; 01471d:  00 02 00 00 32 68 34 6d 00 00 2c 01 a8 79 00 00  |....2h4m..,..y..|
; 01472d:  01 00 00 00 00 00 00 00 74 03 01 00 00 00 00 00  |........t.......|
; 01473d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01474d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01475d:  29 00 d0 00 46 00 15 00 6e 00 e4 00 00 00 00 00  |)...F...n.......|
; 01476d:  03 00 00 00 00 02 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01477d:  d8 7a 00 00 01 00 00 00 00 00 00 00 74 04 01 00  |.z..........t...|
; 01478d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01479d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0147ad:  00 00 00 00 30 01 e8 00 27 00 18 00 56 01 ff 00  |....0...'...V...|
; 0147bd:  00 00 00 00 03 00 00 00 00 02 00 00 ff ff 00 01  |................|
; 0147cd:  00 00 2c 01 08 7c 00 00 01 00 00 00 00 00 00 00  |..,..|..........|
; 0147dd:  6a 05 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |j...............|
; 0147ed:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0147fd:  00 00 7f 00 00 00 00 00 16 00 ee 00 16 01 0d 00  |................|
; 01480d:  2b 01 fa 00 00 00 00 00 00 00 00 64 2d 63 bf 07  |+..........d-c..|
; 01481d:  62 09 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01482d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01483d:  00 00 7f 00 00 00 00 00 97 01 d5 00 45 00 36 00  |............E.6.|
; 01484d:  db 01 0a 01 34 6d 00 00 00 00 00 00 00 00 22 00  |....4m........".|
; 01485d:  23 00 ff ff ff ff 01 01 00 00 64 00 38 7d 00 00  |#.........d.8}..|
; 01486d:  01 00 00 00 71 0a 01 00 00 00 00 00 00 00 00 00  |....q...........|
; 01487d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01488d:  00 00 00 00 00 00 7f 00 00 00 00 00 a2 01 05 00  |................|
; 01489d:  2d 00 1e 00 ce 01 22 00 00 00 00 00 15 00 00 00  |-.....".........|
; 0148ad:  74 0d 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 0148bd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0148cd:  00 00 7f 00 00 00 00 00 9b 01 8a 00 21 00 1e 00  |............!...|
; 0148dd:  bb 01 a7 00 00 00 00 00 03 00 00 00 00 02 00 00  |................|
; 0148ed:  ff ff 02 01 00 00 2c 01 a0 7d 00 00 01 00 00 00  |......,..}......|
; 0148fd:  00 00 00 00 74 0e 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 01490d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01491d:  00 00 00 00 00 00 7f 00 00 00 00 00 9a 01 54 00  |..............T.|
; 01492d:  21 00 1e 00 ba 01 71 00 00 00 00 00 03 00 00 00  |!.....q.........|
; 01493d:  00 02 00 00 ff ff 02 01 00 00 2c 01 d0 7e 00 00  |..........,..~..|
; 01494d:  01 00 00 00 00 00 00 00 74 0f 01 00 00 00 00 00  |........t.......|
; 01495d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01496d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01497d:  bb 01 54 00 e6 96 87 e4 bb b6 e5 90 8d 00 00 00  |..T.............|
; 01498d:  03 00 00 00 00 02 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01499d:  00 80 00 00 01 00 00 00 00 00 00 00 74 10 01 00  |............t...|
; 0149ad:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0149bd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0149cd:  00 00 00 00 bc 01 8a 00 21 00 1e 00 dc 01 a7 00  |........!.......|
; 0149dd:  00 00 00 00 03 00 00 00 00 02 00 00 ff ff 00 01  |................|
; 0149ed:  00 00 2c 01 30 81 00 00 01 00 00 00 00 00 00 00  |..,.0...........|
; 0149fd:  3c 14 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |<...............|
; 014a0d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014a1d:  00 00 7f 00 00 00 00 00 1d 00 2d 00 a0 00 a0 00  |..........-.....|
; 014a2d:  bc 00 cc 00 00 00 00 00 00 00 ff 00 60 82 00 00  |............`...|
; 014a3d:  74 17 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 014a4d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014a5d:  00 00 7f 00 00 00 00 00 9a 01 c2 00 21 00 1e 00  |............!...|
; 014a6d:  ba 01 df 00 00 00 00 00 03 00 00 00 00 02 00 00  |................|
; 014a7d:  ff ff 02 01 00 00 2c 01 60 83 00 00 01 00 00 00  |......,.`.......|
; 014a8d:  00 00 00 00 74 18 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 014a9d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014aad:  00 00 00 00 00 00 7f 00 00 00 00 00 bb 01 c2 00  |................|
; 014abd:  21 00 1e 00 db 01 df 00 00 00 00 00 03 00 00 00  |!...............|
; 014acd:  00 02 00 00 ff ff 00 01 00 00 2c 01 90 84 00 00  |..........,.....|
; 014add:  01 00 00 00 00 00 00 00 62 03 01 00 00 00 00 00  |........b.......|
; 014aed:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014afd:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 014b0d:  0e 00 35 00 41 00 1d 00 4e 00 51 00 32 68 34 6d  |..5.A...N.Q.2h4m|
; 014b1d:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 014b2d:  00 00 64 00 c0 85 00 00 01 00 00 00 62 04 01 00  |..d.........b...|
; 014b3d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014b4d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 014b5d:  00 00 00 00 52 00 35 00 41 00 1d 00 92 00 51 00  |....R.5.A.....Q.|
; 014b6d:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 014b7d:  ff ff 01 01 00 00 64 00 28 86 00 00 01 00 00 00  |......d.(.......|
; 014b8d:  62 05 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 014b9d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014bad:  00 00 7f 00 00 00 00 00 96 00 35 00 41 00 1d 00  |..........5.A...|
; 014bbd:  d6 00 51 00 00 00 00 00 00 00 00 00 00 00 24 00  |..Q...........$.|
; 014bcd:  25 00 ff ff ff ff 01 01 00 00 64 00 90 86 00 00  |%.........d.....|
; 014bdd:  01 00 00 00 62 06 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 014bed:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014bfd:  00 00 00 00 00 00 7f 00 00 00 00 00 f2 00 35 00  |..............5.|
; 014c0d:  35 00 1d 00 26 01 51 00 00 00 00 00 00 00 00 00  |5...&.Q.........|
; 014c1d:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 014c2d:  f8 86 00 00 01 00 00 00 62 07 01 00 00 00 00 00  |........b.......|
; 014c3d:  00 00 00 00 00 00 00 00 00 00 00 00 34 6d 00 00  |............4m..|
; 014c4d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 014c5d:  2b 01 35 00 35 00 1d 00 5f 01 51 00 00 00 00 00  |+.5.5..._.Q.....|
; 014c6d:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 014c7d:  00 00 64 00 60 87 00 00 01 00 00 00 62 08 01 00  |..d.`.......b...|
; 014c8d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014c9d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 014cad:  00 00 00 00 63 01 35 00 35 00 1d 00 97 01 51 00  |....c.5.5.....Q.|
; 014cbd:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 014ccd:  ff ff 01 01 00 00 64 00 c8 87 00 00 01 00 00 00  |......d.........|
; 014cdd:  62 09 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 014ced:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014cfd:  00 00 7f 00 00 00 00 00 9c 01 35 00 35 00 1d 00  |..........5.5...|
; 014d0d:  d0 01 51 00 00 00 00 00 00 00 00 00 00 00 24 00  |..Q...........$.|
; 014d1d:  25 00 ff ff ff ff 01 01 00 00 64 00 30 88 00 00  |%.........d.0...|
; 014d2d:  01 00 00 00 74 0b 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 014d3d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014d4d:  00 00 00 00 00 00 7f 00 00 00 00 00 52 00 5e 00  |............R.^.|
; 014d5d:  41 00 26 00 92 00 83 00 00 00 00 00 03 00 00 00  |A.&.............|
; 014d6d:  00 02 00 00 ff ff 01 01 00 00 2c 01 e6 96 87 e4  |..........,.....|
; 014d7d:  bb b6 e5 90 8d 00 00 00 74 0e 01 00 00 00 00 00  |........t.......|
; 014d8d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014d9d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 014dad:  41 01 5c 00 41 00 28 00 81 01 83 00 00 00 00 00  |A.\.A.(.........|
; 014dbd:  03 00 00 00 00 02 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 014dcd:  c8 89 00 00 01 00 00 00 00 00 00 00 74 11 01 00  |............t...|
; 014ddd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014ded:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 014dfd:  00 00 00 00 41 01 92 00 41 00 28 00 81 01 b9 00  |....A...A.(.....|
; 014e0d:  00 00 00 00 03 00 00 00 00 02 00 00 ff ff 01 01  |................|
; 014e1d:  00 00 2c 01 f8 8a 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 014e2d:  74 09 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 014e3d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014e4d:  00 00 7f 00 00 00 00 00 a0 01 d6 00 34 00 22 00  |............4.".|
; 014e5d:  d3 01 f7 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 014e6d:  ff ff 01 01 00 00 2c 01 28 8c 00 00 01 00 00 00  |......,.(.......|
; 014e7d:  00 00 00 00 62 0b 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 014e8d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014e9d:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 34 00  |..............4.|
; 014ead:  46 00 23 00 93 00 56 00 00 00 00 00 00 00 00 00  |F.#...V.........|
; 014ebd:  00 00 29 00 29 00 ff ff ff ff 01 01 00 00 64 00  |..).).........d.|
; 014ecd:  58 8d 00 00 01 00 00 00 62 0c 01 00 00 00 00 00  |X.......b.......|
; 014edd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014eed:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 014efd:  94 00 34 00 46 00 23 00 d9 00 56 00 00 00 00 00  |..4.F.#...V.....|
; 014f0d:  00 00 00 00 32 68 34 6d 00 00 ff ff ff ff 01 01  |....2h4m........|
; 014f1d:  00 00 64 00 c0 8d 00 00 01 00 00 00 62 0d 01 00  |..d.........b...|
; 014f2d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014f3d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 014f4d:  00 00 00 00 da 00 34 00 46 00 23 00 1f 01 56 00  |......4.F.#...V.|
; 014f5d:  00 00 00 00 00 00 00 00 00 00 28 00 28 00 ff ff  |..........(.(...|
; 014f6d:  ff ff 01 01 00 00 64 00 28 8e 00 00 01 00 00 00  |......d.(.......|
; 014f7d:  62 19 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 014f8d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014f9d:  00 00 7f 00 00 00 00 00 20 01 34 00 46 00 23 00  |........ .4.F.#.|
; 014fad:  65 01 56 00 00 00 00 00 00 00 00 00 00 00 28 00  |e.V...........(.|
; 014fbd:  28 00 ff ff ff ff 01 01 00 00 64 00 90 8e 00 00  |(.........d.....|
; 014fcd:  01 00 00 00 01 0a 01 00 00 00 00 00 00 00 00 00  |................|
; 014fdd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014fed:  00 00 00 00 00 00 7f 00 00 00 00 00 54 00 a7 00  |............T...|
; 014ffd:  72 01 12 00 c5 01 b8 00 00 00 00 00 00 01 00 ff  |r...............|
; 01500d:  ff 64 2d 63 ff ff 00 00 64 00 00 00 00 00 00 00  |.d-c....d.......|
; 01501d:  00 00 2d 63 00 00 00 00 36 0b 01 00 00 00 00 00  |..-c....6.......|
; 01502d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01503d:  00 00 00 00 34 6d 00 00 00 00 7f 00 00 00 00 00  |....4m..........|
; 01504d:  52 01 8b 00 64 00 22 00 b5 01 ac 00 00 00 00 00  |R...d.".........|
; 01505d:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 00 00  |................|
; 01506d:  00 00 00 00 01 00 00 00 74 0c 01 00 00 00 00 00  |........t.......|
; 01507d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01508d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01509d:  b8 01 8b 00 0e 00 22 00 c5 01 ac 00 00 00 00 00  |......".........|
; 0150ad:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 0150bd:  f8 8e 00 00 01 00 00 00 00 00 00 00 62 0d 01 00  |............b...|
; 0150cd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0150dd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0150ed:  00 00 00 00 94 01 36 00 39 00 21 00 cc 01 56 00  |......6.9.!...V.|
; 0150fd:  00 00 00 00 00 00 00 00 00 00 2e 00 2e 00 ff ff  |................|
; 01510d:  ff ff 01 01 00 00 64 00 28 90 00 00 01 00 00 00  |......d.(.......|
; 01511d:  62 11 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01512d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01513d:  00 00 7f 00 00 00 00 00 92 01 65 00 39 00 21 00  |..........e.9.!.|
; 01514d:  ca 01 85 00 00 00 00 00 00 00 00 00 00 00 2f 00  |............../.|
; 01515d:  2f 00 ff ff ff ff 01 01 00 00 64 00 90 90 00 00  |/.........d.....|
; 01516d:  01 00 00 00 e6 96 87 e4 bb b6 e5 90 8d 00 00 00  |................|
; 01517d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01518d:  00 00 00 00 00 00 7f 00 00 00 00 00 ce 00 90 00  |................|
; 01519d:  21 00 1e 00 ee 00 ad 00 00 00 00 00 03 00 00 00  |!...............|
; 0151ad:  00 02 00 00 ff ff 02 01 00 00 2c 01 f8 90 00 00  |..........,.....|
; 0151bd:  01 00 00 00 00 00 00 00 74 05 01 00 00 00 00 00  |........t.......|
; 0151cd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0151dd:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0151ed:  f0 00 90 00 21 00 1e 00 10 01 ad 00 00 00 00 00  |....!...........|
; 0151fd:  03 00 00 00 00 02 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01520d:  28 92 00 00 01 00 00 00 00 00 00 00 62 08 01 00  |(...........b...|
; 01521d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01522d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01523d:  00 00 00 00 56 00 42 00 6c 00 25 00 c1 00 66 00  |....V.B.l.%...f.|
; 01524d:  00 00 00 00 00 00 00 00 00 00 33 00 33 00 ff ff  |..........3.3...|
; 01525d:  ff ff 01 01 00 00 64 00 58 93 00 00 01 00 00 00  |......d.X.......|
; 01526d:  62 09 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01527d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01528d:  00 00 7f 00 00 00 00 00 c8 00 ac 00 6c 00 25 00  |............l.%.|
; 01529d:  33 01 d0 00 72 61 6d 2f 66 69 6c 65 30 2e 6a 70  |3...ram/file0.jp|
; 0152ad:  67 00 ff ff ff ff 01 01 00 00 64 00 c0 93 00 00  |g.........d.....|
; 0152bd:  01 00 00 00 62 0a 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 0152cd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0152dd:  00 00 00 00 00 00 7f 00 00 00 00 00 3a 01 42 00  |............:.B.|
; 0152ed:  6c 00 25 00 a5 01 66 00 00 00 00 00 00 00 00 00  |l.%...f.........|
; 0152fd:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 01530d:  28 94 00 00 01 00 00 00 62 0b 01 00 00 00 00 00  |(.......b.......|
; 01531d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01532d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01533d:  56 00 77 00 6c 00 25 00 c1 00 9b 00 00 00 00 00  |V.w.l.%.........|
; 01534d:  00 00 00 00 00 00 32 00 33 00 ff ff ff ff 01 01  |......2.3.......|
; 01535d:  00 00 64 00 90 94 00 00 01 00 00 00 62 0c 01 00  |..d.........b...|
; 01536d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01537d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01538d:  00 00 00 00 c8 00 77 00 6c 00 25 00 33 01 9b 00  |......w.l.%.3...|
; 01539d:  00 00 00 00 72 61 6d 2f 66 69 6c 65 31 2e 6a 70  |....ram/file1.jp|
; 0153ad:  67 00 01 01 00 00 64 00 f8 94 00 00 01 00 00 00  |g.....d.........|
; 0153bd:  62 0d 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0153cd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0153dd:  00 00 7f 00 00 00 00 00 3a 01 77 00 6c 00 25 00  |........:.w.l.%.|
; 0153ed:  a5 01 9b 00 00 00 00 00 00 00 00 00 00 00 32 00  |..............2.|
; 0153fd:  33 00 ff ff ff ff 01 01 00 00 64 00 60 95 00 00  |3.........d.`...|
; 01540d:  01 00 00 00 62 0f 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 01541d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01542d:  00 00 00 00 00 00 7f 00 00 00 00 00 56 00 ac 00  |............V...|
; 01543d:  6c 00 25 00 c1 00 d0 00 00 00 00 00 00 00 00 00  |l.%.............|
; 01544d:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 01545d:  c8 95 00 00 01 00 00 00 62 10 01 00 00 00 00 00  |........b.......|
; 01546d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01547d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01548d:  c8 00 42 00 6c 00 25 00 33 01 66 00 00 00 00 00  |..B.l.%.3.f.....|
; 01549d:  00 00 00 00 72 61 6d 2f 66 69 6c 65 32 2e 6a 70  |....ram/file2.jp|
; 0154ad:  67 00 64 00 30 96 00 00 01 00 00 00 6a 02 01 00  |g.d.0.......j...|
; 0154bd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0154cd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0154dd:  00 00 00 00 66 00 a8 00 12 01 06 00 77 01 ad 00  |....f.......w...|
; 0154ed:  00 00 00 00 00 00 00 64 ff ff 1f 00 62 01 01 00  |.......d....b...|
; 0154fd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01550d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01551d:  00 00 00 00 f1 00 3b 00 2f 00 1d 00 1f 01 57 00  |......;./.....W.|
; 01552d:  00 00 00 00 00 00 00 00 00 00 35 00 35 00 ff ff  |..........5.5...|
; 01553d:  ff ff 01 01 00 00 64 00 98 96 00 00 01 00 00 00  |......d.........|
; 01554d:  74 02 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01555d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01556d:  00 00 7f 00 00 00 00 00 3c 01 33 00 9b 00 1c 00  |........<.3.....|
; 01557d:  d6 01 4e 00 00 00 00 00 03 00 00 00 00 00 00 00  |..N.............|
; 01558d:  ff ff 00 01 00 00 2c 01 00 97 00 00 01 00 00 00  |......,.........|
; 01559d:  00 00 00 00 72 61 6d 2f 66 69 6c 65 33 2e 6a 70  |....ram/file3.jp|
; 0155ad:  67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |g...............|
; 0155bd:  00 00 00 00 00 00 7f 00 00 00 00 00 3c 01 51 00  |............<.Q.|
; 0155cd:  9b 00 1f 00 d6 01 6f 00 00 00 00 00 03 00 00 00  |......o.........|
; 0155dd:  00 00 00 00 ff ff 00 01 00 00 2c 01 30 98 00 00  |..........,.0...|
; 0155ed:  01 00 00 00 00 00 00 00 62 0c 01 00 00 00 00 00  |........b.......|
; 0155fd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01560d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01561d:  32 01 aa 00 2e 00 2f 00 5f 01 d8 00 00 00 00 00  |2...../._.......|
; 01562d:  00 00 00 00 00 00 3b 00 3c 00 ff ff ff ff 01 01  |......;.<.......|
; 01563d:  00 00 64 00 60 99 00 00 01 00 00 00 62 0d 01 00  |..d.`.......b...|
; 01564d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01565d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01566d:  00 00 00 00 32 01 db 00 2e 00 2f 00 5f 01 09 01  |....2...../._...|
; 01567d:  00 00 00 00 00 00 00 00 00 00 3b 00 3c 00 ff ff  |..........;.<...|
; 01568d:  ff ff 01 01 00 00 64 00 c8 99 00 00 01 00 00 00  |......d.........|
; 01569d:  71 0e 01 00 72 61 6d 2f 66 69 6c 65 34 2e 6a 70  |q...ram/file4.jp|
; 0156ad:  67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |g...............|
; 0156bd:  00 00 7f 00 00 00 00 00 ef 00 84 00 17 00 18 00  |................|
; 0156cd:  05 01 9b 00 00 00 00 00 49 00 00 00 71 0f 01 00  |........I...q...|
; 0156dd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0156ed:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0156fd:  00 00 00 00 ef 00 a8 00 17 00 18 00 05 01 bf 00  |................|
; 01570d:  00 00 00 00 36 00 00 00 71 10 01 00 00 00 00 00  |....6...q.......|
; 01571d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01572d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01573d:  ef 00 ca 00 17 00 18 00 05 01 e1 00 00 00 00 00  |................|
; 01574d:  36 00 00 00 71 11 01 00 00 00 00 00 00 00 00 00  |6...q...........|
; 01575d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01576d:  00 00 00 00 00 00 7f 00 00 00 00 00 ef 00 eb 00  |................|
; 01577d:  17 00 18 00 05 01 02 01 00 00 00 00 36 00 00 00  |............6...|
; 01578d:  71 12 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |q...............|
; 01579d:  00 00 00 00 72 61 6d 2f 66 69 6c 65 35 2e 6a 70  |....ram/file5.jp|
; 0157ad:  67 00 7f 00 00 00 00 00 0a 01 85 00 1e 00 18 00  |g...............|
; 0157bd:  27 01 9c 00 00 00 00 00 3a 00 00 00 71 13 01 00  |'.......:...q...|
; 0157cd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0157dd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0157ed:  00 00 00 00 0a 01 a8 00 1e 00 18 00 27 01 bf 00  |............'...|
; 0157fd:  00 00 00 00 3a 00 00 00 71 14 01 00 00 00 00 00  |....:...q.......|
; 01580d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01581d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01582d:  0a 01 ca 00 1e 00 18 00 27 01 e1 00 00 00 00 00  |........'.......|
; 01583d:  3a 00 00 00 71 15 01 00 00 00 00 00 00 00 00 00  |:...q...........|
; 01584d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01585d:  00 00 00 00 00 00 7f 00 00 00 00 00 0a 01 ee 00  |................|
; 01586d:  1e 00 18 00 27 01 05 01 00 00 00 00 3a 00 00 00  |....'.......:...|
; 01587d:  74 16 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01588d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01589d:  00 00 7f 00 00 00 00 00 4a 00 82 00 80 00 1e 00  |........J.......|
; 0158ad:  c9 00 9f 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 0158bd:  ff ff 00 01 00 00 2c 01 30 9a 00 00 01 00 00 00  |......,.0.......|
; 0158cd:  00 00 00 00 74 17 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0158dd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0158ed:  00 00 00 00 00 00 7f 00 00 00 00 00 4a 00 c8 00  |............J...|
; 0158fd:  80 00 1e 00 c9 00 e5 00 00 00 00 00 00 00 00 00  |................|
; 01590d:  00 00 00 00 ff ff 00 01 00 00 2c 01 60 9b 00 00  |..........,.`...|
; 01591d:  01 00 00 00 00 00 00 00 74 18 01 00 00 00 00 00  |........t.......|
; 01592d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01593d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01594d:  4a 00 eb 00 80 00 1e 00 c9 00 08 01 00 00 00 00  |J...............|
; 01595d:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01596d:  90 9c 00 00 00 00 00 00 00 00 00 00 74 19 01 00  |............t...|
; 01597d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01598d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01599d:  00 00 00 00 4a 00 a5 00 80 00 1e 00 c9 00 c2 00  |....J...........|
; 0159ad:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 0159bd:  00 00 2c 01 c0 9d 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 0159cd:  74 1a 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 0159dd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0159ed:  00 00 7f 00 00 00 00 00 ca 00 83 00 25 00 1e 00  |............%...|
; 0159fd:  ee 00 a0 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 015a0d:  ff ff 00 01 00 00 2c 01 f0 9e 00 00 01 00 00 00  |......,.........|
; 015a1d:  00 00 00 00 74 1b 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 015a2d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015a3d:  00 00 00 00 00 00 7f 00 00 00 00 00 ca 00 a6 00  |................|
; 015a4d:  25 00 1e 00 ee 00 c3 00 00 00 00 00 03 00 00 00  |%...............|
; 015a5d:  00 01 00 00 ff ff 00 01 00 00 2c 01 20 a0 00 00  |..........,. ...|
; 015a6d:  01 00 00 00 00 00 00 00 74 1c 01 00 00 00 00 00  |........t.......|
; 015a7d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015a8d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 015a9d:  ca 00 c9 00 25 00 1e 00 ee 00 e6 00 00 00 00 00  |....%...........|
; 015aad:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 015abd:  50 a1 00 00 01 00 00 00 00 00 00 00 74 1d 01 00  |P...........t...|
; 015acd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015add:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 015aed:  00 00 00 00 ca 00 ec 00 25 00 1e 00 ee 00 09 01  |........%.......|
; 015afd:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 015b0d:  00 00 2c 01                                      |..,.|
