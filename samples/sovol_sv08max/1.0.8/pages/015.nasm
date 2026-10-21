; page 15 'timelapse_list': 27 objects

; object address table, 27 objects, block loaded at 0xb950
.dd 0xb9bc, 0xb9fc, 0xba50, 0xbaa4, 0xbaf8, 0xbb4c, 0xbba0, 0xbbf4
.dd 0xbc48, 0xbc9c, 0xbcbc, 0x160c, 0x1660, 0x16b4, 0xbcdc, 0xbd30
.dd 0xbd84, 0xbdd8, 0xbe2c, 0xbe80, 0xbed4, 0xbf28, 0x1708, 0x175c
.dd 0xbf7c, 0xbfd0, 0xc024

; object id 0 (page 'timelapse_list'): x=0, y=0, w=480, h=272, name hash=0x424b9a4b
; flags=0x37, aph=127, events: event_3=0x1888b
; sta=2, pic=82
; 019384:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1888b
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x1a5b8
    ref 9
    ref 10
    if global_14 != 0 then jump lbl_1a624
    local_1c16 = "本地"
    local_1c3f = "U盘"
    local_1c68 = "延时摄影"
    jmp lbl_1a8f3

lbl_1a624:
    if global_14 != 1 then jump lbl_1a68b
    local_1c16 = "Local"
    local_1c3f = "U Disk"
    local_1c68 = "time-lapse\rphotography"
    jmp lbl_1a8f3

lbl_1a68b:
    if global_14 != 2 then jump lbl_1a6f8
    local_1c16 = "ローカル"
    local_1c3f = "Uディスク"
    local_1c68 = "写真の遅れ"
    jmp lbl_1a8f3

lbl_1a6f8:
    if global_14 != 3 then jump lbl_1a762
    local_1c16 = "örtlich"
    local_1c3f = "U-Disk"
    local_1c68 = "Verzögerte\rFotografie"
    jmp lbl_1a8f3

lbl_1a762:
    if global_14 != 4 then jump lbl_1a7c9
    local_1c16 = "Local"
    local_1c3f = "Disco U"
    local_1c68 = "Fotografía\rRetrasada"
    T 0x12a

lbl_1a7c9:
    if global_14 != 5 then jump lbl_1a833
    local_1c16 = "Locale"
    local_1c3f = "Disque U"
    local_1c68 = "Photographie\rRetardée"
    jmp lbl_1a8f3

lbl_1a833:
    if global_14 != 6 then jump lbl_1a896
    local_1c16 = "Local"
    local_1c3f = "Disco U"
    local_1c68 = "Fotografia\rTardia"
    jmp lbl_1a8f3

lbl_1a896:
    if global_14 != 7 then jump lbl_1a8f3
    local_1c16 = "Locale"
    local_1c3f = "Disco U"
    local_1c68 = "Fotografia\rtime-lapse"

lbl_1a8f3:
    local_1c8f = ""
    local_1cdf = ""
    local_1d2f = ""
    local_1d7f = ""
    local_1e4a = ""
    local_1ab2 = local_1a94
    local_1ab3 = local_1a94
    local_1adb = local_1a94
    local_1adc = local_1a94
    local_1b04 = local_1a94
    local_1b05 = local_1a94
    local_1b2d = local_1a94
    local_1b2e = local_1a94
    local_1e1c = local_1a94
    local_1e1d = local_1a94
    local_1dca = local_1a94
    local_1dcb = local_1a94
    local_1df3 = local_1a94
    local_1df4 = local_1a94
    local_1cb1 = local_1a94
    local_1cb2 = local_1a94
    local_1d01 = local_1a94
    local_1d02 = local_1a94
    local_1d51 = local_1a94
    local_1d52 = local_1a94
    local_1da1 = local_1a94
    local_1da2 = local_1a94
    local_1e6c = local_1a94
    local_1e6d = local_1a94
    doevents
    down
    up

; object id 1 (button 'b2'): x=65, y=46, w=380, h=45, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x188d1
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 0193d4:  ff ff                                            |..|

; touch_release
.org 0x188d1
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b3'): x=65, y=91, w=380, h=45, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x1893b
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 019428:  ff ff                                            |..|

; touch_release
.org 0x1893b
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b4'): x=65, y=136, w=380, h=45, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x189a5
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2
; 01947c:  ff ff                                            |..|

; touch_release
.org 0x189a5
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b5'): x=65, y=181, w=380, h=45, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x18a0f
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3
; 0194d0:  ff ff                                            |..|

; touch_release
.org 0x18a0f
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x18a79
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 019524:  ff ff                                            |..|

; touch_release
.org 0x18a79
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x18ae5
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 019578:  ff ff                                            |..|

; touch_release
.org 0x18ae5
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x18b51
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 0195cc:  ff ff                                            |..|

; touch_release
.org 0x18b51
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x18bbd
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 019620:  ff ff                                            |..|

; touch_release
.org 0x18bbd
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 9 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x18c20
; tim=1000, en=1

; timer
.org 0x18c20
    if global_1c <= 0 then jump lbl_18c7c
    if global_20 <= 0 then jump lbl_18c7c
    global_20--
    if global_20 != 0 then jump lbl_18c7c
    dim = global_30

lbl_18c7c:
    down
    up

; object id 10 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x18c96

; touch_release
.org 0x18c96
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 267 (button 'b0'): x=66, y=7, w=137, h=34, name hash=0xce1a7436
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
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
.org 0x18cce
    prints 0x65, 1
    prints dp, 1
    prints 110, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 268 (button 'b1'): x=202, y=7, w=137, h=34, name hash=0xb8756f4e
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
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
.org 0x18d3a
    prints 0x65, 1
    prints dp, 1
    prints 111, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 269 (button 'b17'): x=337, y=7, w=137, h=34, name hash=0x3bc12630
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
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
.org 0x18da6
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 14 (text 'file_0'): x=81, y=45, w=320, h=45, name hash=0x4df1a189
; flags=0x37, aph=127, events: touch_press=0x18e08, touch_release=0x18e1d
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="timelapse__20240314_1142.jpg"
; text:
;   7: ""

; touch_press
.org 0x18e08
    click b2, 1
    up

; touch_release
.org 0x18e1d
    click b2, 0
    down
    up

; object id 15 (button 'b11'): x=416, y=46, w=29, h=44, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x18e42
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7
; 019708:  ff ff                                            |..|

; touch_release
.org 0x18e42
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 16 (text 'file_1'): x=82, y=91, w=320, h=45, name hash=0xe6b11697
; flags=0x37, aph=127, events: touch_press=0x18ea2, touch_release=0x18eb7
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="timelapse__20240314_1142.mp4"
; text:
;   7: ""

; touch_press
.org 0x18ea2
    click b3, 1
    up

; touch_release
.org 0x18eb7
    click b3, 0
    down
    up

; object id 17 (button 'b12'): x=416, y=91, w=29, h=44, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x18edc
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 8
; 0197b0:  ff ff                                            |..|

; touch_release
.org 0x18edc
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 18 (text 'file_2'): x=82, y=136, w=320, h=45, name hash=0x1fb1d202
; flags=0x37, aph=127, events: touch_press=0x18f3c, touch_release=0x18f51
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="timelapse__20240314_1143.jpg"
; text:
;   7: ""

; touch_press
.org 0x18f3c
    click b4, 1
    up

; touch_release
.org 0x18f51
    click b4, 0
    down
    up

; object id 19 (button 'b13'): x=416, y=136, w=29, h=44, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x18f76
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 9
; 019858:  ff ff                                            |..|

; touch_release
.org 0x18f76
    prints 0x65, 1
    prints dp, 1
    prints 9, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 20 (text 'file_3'): x=82, y=181, w=320, h=45, name hash=0xb4f1651c
; flags=0x37, aph=127, events: touch_press=0x18fd6, touch_release=0x18feb
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="timelapse__20240314_1143.mp4"
; text:
;   7: ""

; touch_press
.org 0x18fd6
    click b5, 1
    up

; touch_release
.org 0x18feb
    click b5, 0
    down
    up

; object id 21 (button 'b14'): x=416, y=181, w=29, h=44, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x19010
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 10
; 019900:  ff ff                                            |..|

; touch_release
.org 0x19010
    prints 0x65, 1
    prints dp, 1
    prints 10, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 278 (button 'b7'): x=442, y=159, w=38, h=56, name hash=0x89d629e9
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 5

; touch_release
.org 0x1907b
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 279 (button 'b8'): x=443, y=214, w=36, h=55, name hash=0x7021892f
; borderc=0x0000, picc=30, picc2=72, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0x190e5
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 24 (button 'b6'): x=65, y=225, w=380, h=45, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x1914f
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 019954:  ff ff                                            |..|

; touch_release
.org 0x1914f
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 25 (text 'file_4'): x=82, y=226, w=320, h=45, name hash=0xe971469f
; flags=0x37, aph=127, events: touch_press=0x191af, touch_release=0x191c4
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件名"
; text:
;   7: ""

; touch_press
.org 0x191af
    click b6, 1
    up

; touch_release
.org 0x191c4
    click b6, 0
    down
    up

; object id 26 (button 'b15'): x=416, y=226, w=29, h=44, name hash=0x27706ad7
; flags=0x37, aph=127, events: touch_release=0x191e9
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 11
; 0199fc:  ff ff                                            |..|

; touch_release
.org 0x191e9
    prints 0x65, 1
    prints dp, 1
    prints 11, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 2975 bytes (9 trailing zero bytes dropped)
; 019a0c:  00 00 00 00 00 ff 00 01 00 00 2c 01 60 d6 00 00  |..........,.`...|
; 019a1c:  01 00 00 00 00 00 00 00 74 17 00 00 00 00 00 00  |........t.......|
; 019a2c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019a3c:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 019a4c:  41 00 e4 00 7b 00 26 00 bb 00 09 01 00 00 00 00  |A...{.&.........|
; 019a5c:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 019a6c:  90 d7 00 00 00 00 00 00 00 00 00 00 00 18 00 00  |................|
; 019a7c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019a8c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019a9c:  00 00 00 00 c0 00 9d 00 7e 00 6f 00 3d 01 0b 01  |........~.o.=...|
; 019aac:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 019abc:  ff ff 01 01 00 00 64 00 c0 d8 00 00 01 00 00 00  |......d.........|
; 019acc:  74 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 019adc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019aec:  00 00 7f 00 00 00 00 00 14 ff d0 00 32 00 10 00  |............2...|
; 019afc:  45 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |E...............|
; 019b0c:  ff ff 00 01 00 00 2c 01 28 d9 00 00 01 00 00 00  |......,.(.......|
; 019b1c:  00 00 00 00 74 1a 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 019b2c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019b3c:  00 00 00 00 00 00 7f 00 00 00 00 00 00 ff d0 00  |................|
; 019b4c:  21 00 10 00 76 ff df 00 00 00 00 00 03 00 00 00  |!...v...........|
; 019b5c:  00 01 00 00 ff ff 00 01 00 00 2c 01 58 da 00 00  |..........,.X...|
; 019b6c:  01 00 00 00 00 00 00 00 74 1b 00 00 00 00 00 00  |........t.......|
; 019b7c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019b8c:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 019b9c:  c1 00 e4 00 7b 00 26 00 3b 01 09 01 00 00 00 00  |....{.&.;.......|
; 019bac:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 019bbc:  88 db 00 00 00 00 00 00 00 00 00 00 62 1c 00 00  |............b...|
; 019bcc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019bdc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019bec:  00 00 00 00 3f 01 9d 00 7e 00 6f 00 bc 01 0b 01  |....?...~.o.....|
; 019bfc:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 019c0c:  ff ff 01 01 00 00 64 00 b8 dc 00 00 00 00 00 00  |......d.........|
; 019c1c:  74 1d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 019c2c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019c3c:  00 00 7f 00 00 00 00 00 93 ff d0 00 32 00 10 00  |............2...|
; 019c4c:  c4 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 019c5c:  ff ff 00 01 00 00 2c 01 20 dd 00 00 01 00 00 00  |......,. .......|
; 019c6c:  00 00 00 00 74 1e 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 019c7c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019c8c:  00 00 00 00 00 00 7f 00 00 00 00 00 d7 ff d0 00  |................|
; 019c9c:  21 00 10 00 f7 ff df 00 00 00 00 00 03 00 00 00  |!...............|
; 019cac:  00 01 00 00 ff ff 00 01 00 00 2c 01 50 de 00 00  |..........,.P...|
; 019cbc:  01 00 00 00 00 00 00 00 74 1f 00 00 00 00 00 00  |........t.......|
; 019ccc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019cdc:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 019cec:  40 01 e4 00 7b 00 26 00 ba 01 09 01 00 00 00 00  |@...{.&.........|
; 019cfc:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 019d0c:  80 df 00 00 00 00 00 00 00 00 00 00 3c 20 00 00  |............< ..|
; 019d1c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019d2c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019d3c:  00 00 00 00 5f 00 31 00 40 00 40 00 9e 00 70 00  |...._.1.@.@...p.|
; 019d4c:  00 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 019d5c:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6a 70 67  |0240314_1142.jpg|
; 019d6c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019d7c:  00 00 00 00 df 00 31 00 40 00 40 00 1e 01 70 00  |......1.@.@...p.|
; 019d8c:  00 00 00 00 00 00 ff 00 b0 e1 00 00 3c 22 00 00  |............<"..|
; 019d9c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019dac:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019dbc:  00 00 00 00 5e 01 30 00 40 00 40 00 9d 01 6f 00  |....^.0.@.@...o.|
; 019dcc:  00 00 00 00 00 00 ff 00 b0 e2 00 00 3c 23 00 00  |............<#..|
; 019ddc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019dec:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019dfc:  00 00 00 00 5f 00 a1 00 40 00 40 00 9e 00 e0 00  |...._...@.@.....|
; 019e0c:  00 00 00 00 00 00 ff 00 b0 e3 00 00 3c 24 00 00  |............<$..|
; 019e1c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019e2c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019e3c:  00 00 00 00 df 00 a1 00 40 00 40 00 1e 01 e0 00  |........@.@.....|
; 019e4c:  00 00 00 00 00 00 ff 00 b0 e4 00 00 3c 25 00 00  |............<%..|
; 019e5c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019e6c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019e7c:  00 00 00 00 00 01 a1 00 40 00 40 00 9e 01 e0 00  |........@.@.....|
; 019e8c:  00 00 00 00 00 00 ff 00 b0 e5 00 00 62 26 00 00  |............b&..|
; 019e9c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019eac:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 019ebc:  00 00 00 00 9e 00 31 00 1c 00 1c 00 b9 00 4c 00  |......1.......L.|
; 019ecc:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 019edc:  ff ff 01 01 00 00 64 00 b0 e6 00 00 74 69 6d 65  |......d.....time|
; 019eec:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 019efc:  31 31 34 32 2e 6d 70 34 00 00 00 00 00 00 00 00  |1142.mp4........|
; 019f0c:  00 00 7f 00 00 00 00 00 1f 01 31 00 1c 00 1c 00  |..........1.....|
; 019f1c:  3a 01 4c 00 00 00 00 00 00 00 00 00 00 00 10 00  |:.L.............|
; 019f2c:  10 00 ff ff ff ff 01 01 00 00 64 00 18 e7 00 00  |..........d.....|
; 019f3c:  01 00 00 00 62 28 00 00 00 00 00 00 00 00 00 00  |....b(..........|
; 019f4c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019f5c:  00 00 00 00 00 00 7f 00 00 00 00 00 9f 01 31 00  |..............1.|
; 019f6c:  1c 00 1c 00 ba 01 4c 00 00 00 00 00 00 00 00 00  |......L.........|
; 019f7c:  00 00 10 00 10 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 019f8c:  80 e7 00 00 01 00 00 00 62 29 00 00 00 00 00 00  |........b)......|
; 019f9c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019fac:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 019fbc:  9e 00 a2 00 1c 00 1c 00 b9 00 bd 00 00 00 00 00  |................|
; 019fcc:  00 00 00 00 00 00 10 00 10 00 ff ff ff ff 01 01  |................|
; 019fdc:  00 00 64 00 e8 e7 00 00 01 00 00 00 62 2a 00 00  |..d.........b*..|
; 019fec:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 019ffc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01a00c:  00 00 00 00 1f 01 a2 00 1c 00 1c 00 00 01 bd 00  |................|
; 01a01c:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 01a02c:  ff ff 01 01 00 00 64 00 50 e8 00 00 01 00 00 00  |......d.P.......|
; 01a03c:  62 2b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b+..............|
; 01a04c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a05c:  00 00 7f 00 00 00 00 00 9f 01 a2 00 1c 00 1c 00  |................|
; 01a06c:  ba 01 bd 00 00 00 00 00 00 00 00 00 00 00 10 00  |................|
; 01a07c:  10 00 ff ff 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 01a08c:  30 32 34 30 33 31 34 5f 31 31 34 33 2e 6a 70 67  |0240314_1143.jpg|
; 01a09c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a0ac:  e8 03 01 00 05 2d 00 00 00 00 00 00 00 00 00 00  |.....-..........|
; 01a0bc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a0cc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a0dc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a0ec:  00 00 7f 00 00 00 00 00 33 01 ab 00 2e 00 2f 00  |........3...../.|
; 01a0fc:  60 01 d9 00 00 00 00 00 00 00 00 00 00 00 3b 00  |`.............;.|
; 01a10c:  3c 00 ff ff ff ff 01 01 00 00 64 00 20 5c 00 00  |<.........d. \..|
; 01a11c:  01 00 00 00 62 18 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 01a12c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a13c:  32 68 34 6d 00 00 7f 00 00 00 00 00 33 01 dc 00  |2h4m........3...|
; 01a14c:  2e 00 2f 00 60 01 0a 01 00 00 00 00 00 00 00 00  |../.`...........|
; 01a15c:  00 00 3b 00 3c 00 ff ff ff ff 01 01 00 00 64 00  |..;.<.........d.|
; 01a16c:  88 5c 00 00 01 00 00 00 74 02 01 00 00 00 00 00  |.\......t.......|
; 01a17c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a18c:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01a19c:  6a 00 69 00 0c 01 1c 00 75 01 84 00 00 00 00 00  |j.i.....u.......|
; 01a1ac:  03 00 00 00 00 00 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 01a1bc:  f0 5c 00 00 01 00 00 00 00 00 00 00 74 05 01 00  |.\..........t...|
; 01a1cc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a1dc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01a1ec:  00 00 00 00 6a 00 42 00 0c 01 27 00 75 01 68 00  |....j.B...'.u.h.|
; 01a1fc:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 01 01  |................|
; 01a20c:  00 00 2c 01 20 5e 00 00 01 00 00 00 74 69 6d 65  |..,. ^......time|
; 01a21c:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 01a22c:  31 31 34 33 2e 6d 70 34 00 00 00 00 00 00 00 00  |1143.mp4........|
; 01a23c:  00 00 7f 00 00 00 00 00 97 01 d7 00 45 00 36 00  |............E.6.|
; 01a24c:  db 01 0c 01 00 00 00 00 00 00 00 00 00 00 16 00  |................|
; 01a25c:  18 00 ff ff ff ff 01 01 00 00 64 00 50 5f 00 00  |..........d.P_..|
; 01a26c:  34 6d 00 00 00 02 01 00 00 00 00 00 00 00 00 00  |4m..............|
; 01a27c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a28c:  00 00 00 00 00 00 50 00 00 00 00 00 74 00 32 00  |......P.....t.2.|
; 01a29c:  0f 01 c8 00 82 01 f9 00 00 00 00 00 03 01 02 00  |................|
; 01a2ac:  00 00 00 00 00 00 00 00 00 00 1a db bf 07 00 00  |................|
; 01a2bc:  00 00 00 00 4e 00 00 00 e0 02 00 00 6c b6 00 00  |....N.......l...|
; 01a2cc:  71 07 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |q...............|
; 01a2dc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a2ec:  00 00 7f 00 00 00 00 00 a0 01 06 00 34 00 2b 00  |............4.+.|
; 01a2fc:  d3 01 30 00 00 00 00 00 15 00 00 00 74 0a 01 00  |..0.........t...|
; 01a30c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a31c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01a32c:  00 00 00 00 9d 01 8a 00 21 00 1e 00 bd 01 a7 00  |........!.......|
; 01a33c:  00 00 00 00 03 00 00 00 00 02 00 00 00 07 02 01  |................|
; 01a34c:  00 00 2c 01 b8 5f 00 00 01 00 00 00 00 00 00 00  |..,.._..........|
; 01a35c:  74 0b 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01a36c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a37c:  00 00 7f 00 00 00 00 00 9c 01 54 00 21 00 1e 00  |..........T.!...|
; 01a38c:  bc 01 71 00 00 00 00 00 03 00 00 00 00 02 00 00  |..q.............|
; 01a39c:  e6 96 87 e4 bb b6 e5 90 8d 00 00 00 01 00 00 00  |................|
; 01a3ac:  00 00 00 00 00 0c 01 00 00 00 00 00 00 00 00 00  |................|
; 01a3bc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a3cc:  00 00 00 00 00 00 7f 00 00 00 00 00 bd 01 54 00  |..............T.|
; 01a3dc:  21 00 1e 00 dd 01 71 00 00 00 00 00 03 00 00 00  |!.....q.........|
; 01a3ec:  00 02 00 00 1a db 00 01 00 00 2c 01 18 62 00 00  |..........,..b..|
; 01a3fc:  01 00 00 00 00 00 00 00 74 0d 01 00 00 00 00 00  |........t.......|
; 01a40c:  00 00 00 00 00 00 00 00 00 00 00 00 e6 96 87 e4  |................|
; 01a41c:  bb b6 e5 90 8d 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01a42c:  be 01 8a 00 21 00 1e 00 de 01 a7 00 00 00 00 00  |....!...........|
; 01a43c:  03 00 00 00 00 02 00 00 bf 07 00 01 00 00 2c 01  |..............,.|
; 01a44c:  48 63 00 00 01 00 00 00 00 00 00 00 74 11 01 00  |Hc..........t...|
; 01a45c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a46c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01a47c:  00 00 00 00 9b 01 c1 00 21 00 1e 00 bb 01 de 00  |........!.......|
; 01a48c:  00 00 00 00 03 00 00 00 00 02 00 00 bf 07 02 01  |................|
; 01a49c:  00 00 2c 01 78 64 00 00 01 00 00 00 00 00 00 00  |..,.xd..........|
; 01a4ac:  74 12 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01a4bc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a4cc:  00 00 7f 00 00 00 00 00 bc 01 c1 00 21 00 1e 00  |............!...|
; 01a4dc:  dc 01 de 00 00 00 00 00 03 00 00 00 00 02 00 00  |................|
; 01a4ec:  bf 07 00 01 00 00 2c 01 a8 65 00 00 01 00 00 00  |......,..e......|
; 01a4fc:  00 00 00 00 62 09 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 01a50c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a51c:  00 00 00 00 00 00 7f 00 00 00 00 00 bb 01 d6 00  |................|
; 01a52c:  24 00 35 00 de 01 0a 01 00 00 00 00 00 00 00 00  |$.5.............|
; 01a53c:  00 00 1e 00 48 00 ff ff ff ff 01 01 00 00 64 00  |....H.........d.|
; 01a54c:  d8 66 00 00 01 00 00 00 62 0a 01 00 00 00 00 00  |.f......b.......|
; 01a55c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01a56c:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01a57c:  bc 01 a0 00 24 00 35 00 df 01 d4 00 00 00 00 00  |....$.5.........|
; 01a58c:  00 00 00 00 00 00 1e 00 48 00 ff ff ff ff 01 01  |........H.......|
; 01a59c:  00 00 64 00 40 67 00 00 01 00 00 00 62 0b 01     |..d.@g......b..|
