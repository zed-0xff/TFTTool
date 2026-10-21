; page 44: 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xc05ce982
; flags=0x37, aph=127, events: event_3=0x2eac2
; sta=2, pic=1
; 02ec35:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2eac2
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x2ee71
    ref 2
    ref 3
    doevents
    down
    up

; object id 1 (text 't0'): x=105, y=105, w=268, h=50, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="挤出5mm"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2eb19
; tim=1000, en=1

; timer
.org 0x2eb19
    if global_1c <= 0 then jump lbl_2eb75
    if global_20 <= 0 then jump lbl_2eb75
    global_20--
    if global_20 != 0 then jump lbl_2eb75
    dim = global_30

lbl_2eb75:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2eb8f

; touch_release
.org 0x2eb8f
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (text 't1'): x=192, y=119, w=100, h=30, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=1, font=0, pco=0x0000, xcen=1, ycen=1, txt_maxl=10, isbr=0, bco=0xffff, txt="pass"

; data after the object structs, 320 bytes (4 trailing zero bytes dropped)
; 02ed29:  00 00 00 00 e6 8c a4 e5 87 ba 35 6d 6d 00 8c a4  |..........5mm...|
; 02ed39:  e5 87 ba e6 9c ba e4 b9 8b e5 89 8d e5 b0 86 e5  |................|
; 02ed49:  96 b7 e5 98 b4 e5 8a a0 e7 83 ad e5 88 b0 31 38  |..............18|
; 02ed59:  30 e2 84 83 e4 bb a5 e4 b8 8a 00 00 27 00 ff ff  |0...........'...|
; 02ed69:  ff ff 01 01 00 00 0a 00 00 ab 00 00 01 00 00 00  |................|
; 02ed79:  62 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02ed89:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ed99:  00 00 7f 00 00 00 00 00 f3 00 2b 00 33 00 32 00  |..........+.3.2.|
; 02eda9:  25 01 5c 00 00 00 00 00 00 00 00 00 00 01 26 00  |%.\...........&.|
; 02edb9:  27 00 ff ff ff ff 01 01 00 00 0a 00 0c ab 00 00  |'...............|
; 02edc9:  01 00 00 00 62 05 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02edd9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ede9:  00 00 00 00 00 00 7f 00 00 00 00 00 2c 01 2b 00  |............,.+.|
; 02edf9:  33 00 32 00 5e 01 5c 00 00 00 00 00 00 00 00 00  |3.2.^.\.........|
; 02ee09:  00 01 26 00 27 00 ff ff ff ff 01 01 00 00 0a 00  |..&.'...........|
; 02ee19:  18 ab 00 00 01 00 00 00 62 06 00 00 00 00 00 00  |........b.......|
; 02ee29:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ee39:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02ee49:  80 00 65 00 33 00 32 00 b2 00 96 00 00 00 00 00  |..e.3.2.........|
; 02ee59:  00 00 00 00 70 61 73 73 00 9a 00 ff ff ff 01 01  |....pass........|
