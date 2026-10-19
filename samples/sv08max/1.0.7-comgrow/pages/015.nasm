; page 15 'timelapse_list': 27 objects

; object address table, 27 objects, block loaded at 0xa3a4
.dd 0xa410, 0xa450, 0xa4a4, 0xa4f8, 0xa54c, 0xa5a0, 0xa5f4, 0xa648
.dd 0xa69c, 0xa6f0, 0xa710, 0x1414, 0x1468, 0x14bc, 0xa730, 0xa784
.dd 0xa7d8, 0xa82c, 0xa880, 0xa8d4, 0xa928, 0xa97c, 0x1510, 0x1564
.dd 0xa9d0, 0xaa24, 0xaa78

; object id 0 (page 'timelapse_list'): x=0, y=0, w=480, h=272, name hash=0x424b9a4b
; flags=0x37, aph=127, events: event_3=0x16720
; sta=2, pic=82
; 017219:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x16720
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x1844d
    ref 9
    ref 10
    if global_14 != 0 then jump lbl_184b9
    local_1ab3 = "本地"
    local_1adc = "U盘"
    local_1b05 = "延时摄影"
    jmp lbl_18788

lbl_184b9:
    if global_14 != 1 then jump lbl_18520
    local_1ab3 = "Local"
    local_1adc = "U Disk"
    local_1b05 = "time-lapse\rphotography"
    jmp lbl_18788

lbl_18520:
    if global_14 != 2 then jump lbl_1858d
    local_1ab3 = "ローカル"
    local_1adc = "Uディスク"
    local_1b05 = "写真の遅れ"
    jmp lbl_18788

lbl_1858d:
    if global_14 != 3 then jump lbl_185f7
    local_1ab3 = "örtlich"
    local_1adc = "U-Disk"
    local_1b05 = "Verzögerte\rFotografie"
    jmp lbl_18788

lbl_185f7:
    if global_14 != 4 then jump lbl_1865e
    local_1ab3 = "Local"
    local_1adc = "Disco U"
    local_1b05 = "Fotografía\rRetrasada"
    T 0x12a

lbl_1865e:
    if global_14 != 5 then jump lbl_186c8
    local_1ab3 = "Locale"
    local_1adc = "Disque U"
    local_1b05 = "Photographie\rRetardée"
    jmp lbl_18788

lbl_186c8:
    if global_14 != 6 then jump lbl_1872b
    local_1ab3 = "Local"
    local_1adc = "Disco U"
    local_1b05 = "Fotografia\rTardia"
    jmp lbl_18788

lbl_1872b:
    if global_14 != 7 then jump lbl_18788
    local_1ab3 = "Locale"
    local_1adc = "Disco U"
    local_1b05 = "Fotografia\rtime-lapse"

lbl_18788:
    local_1b2c = ""
    local_1b7c = ""
    local_1bcc = ""
    local_1c1c = ""
    local_1ce7 = ""
    local_194f = local_1931
    local_1950 = local_1931
    local_1978 = local_1931
    local_1979 = local_1931
    local_19a1 = local_1931
    local_19a2 = local_1931
    local_19ca = local_1931
    local_19cb = local_1931
    local_1cb9 = local_1931
    local_1cba = local_1931
    local_1c67 = local_1931
    local_1c68 = local_1931
    local_1c90 = local_1931
    local_1c91 = local_1931
    local_1b4e = local_1931
    local_1b4f = local_1931
    local_1b9e = local_1931
    local_1b9f = local_1931
    local_1bee = local_1931
    local_1bef = local_1931
    local_1c3e = local_1931
    local_1c3f = local_1931
    local_1d09 = local_1931
    local_1d0a = local_1931
    doevents
    down
    up

; object id 1 (button 'b2'): x=65, y=46, w=380, h=45, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x16766
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 017269:  ff ff                                            |..|

; touch_release
.org 0x16766
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b3'): x=65, y=91, w=380, h=45, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x167d0
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 0172bd:  ff ff                                            |..|

; touch_release
.org 0x167d0
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b4'): x=65, y=136, w=380, h=45, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x1683a
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2
; 017311:  ff ff                                            |..|

; touch_release
.org 0x1683a
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b5'): x=65, y=181, w=380, h=45, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x168a4
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3
; 017365:  ff ff                                            |..|

; touch_release
.org 0x168a4
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x1690e
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 0173b9:  ff ff                                            |..|

; touch_release
.org 0x1690e
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x1697a
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 01740d:  ff ff                                            |..|

; touch_release
.org 0x1697a
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x169e6
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 017461:  ff ff                                            |..|

; touch_release
.org 0x169e6
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x16a52
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 0174b5:  ff ff                                            |..|

; touch_release
.org 0x16a52
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 9 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x16ab5
; tim=1000, en=1

; timer
.org 0x16ab5
    if global_1c <= 0 then jump lbl_16b11
    if global_20 <= 0 then jump lbl_16b11
    global_20--
    if global_20 != 0 then jump lbl_16b11
    dim = global_30

lbl_16b11:
    down
    up

; object id 10 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x16b2b

; touch_release
.org 0x16b2b
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
.org 0x16b63
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
.org 0x16bcf
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
.org 0x16c3b
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 14 (text 'file_0'): x=81, y=45, w=320, h=45, name hash=0x4df1a189
; flags=0x37, aph=127, events: touch_press=0x16c9d, touch_release=0x16cb2
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="timelapse__20240314_1142.jpg"
; text:
;   7: ""

; touch_press
.org 0x16c9d
    click b2, 1
    up

; touch_release
.org 0x16cb2
    click b2, 0
    down
    up

; object id 15 (button 'b11'): x=416, y=46, w=29, h=44, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x16cd7
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7
; 01759d:  ff ff                                            |..|

; touch_release
.org 0x16cd7
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 16 (text 'file_1'): x=82, y=91, w=320, h=45, name hash=0xe6b11697
; flags=0x37, aph=127, events: touch_press=0x16d37, touch_release=0x16d4c
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="timelapse__20240314_1142.mp4"
; text:
;   7: ""

; touch_press
.org 0x16d37
    click b3, 1
    up

; touch_release
.org 0x16d4c
    click b3, 0
    down
    up

; object id 17 (button 'b12'): x=416, y=91, w=29, h=44, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x16d71
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 8
; 017645:  ff ff                                            |..|

; touch_release
.org 0x16d71
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 18 (text 'file_2'): x=82, y=136, w=320, h=45, name hash=0x1fb1d202
; flags=0x37, aph=127, events: touch_press=0x16dd1, touch_release=0x16de6
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="timelapse__20240314_1143.jpg"
; text:
;   7: ""

; touch_press
.org 0x16dd1
    click b4, 1
    up

; touch_release
.org 0x16de6
    click b4, 0
    down
    up

; object id 19 (button 'b13'): x=416, y=136, w=29, h=44, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x16e0b
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 9
; 0176ed:  ff ff                                            |..|

; touch_release
.org 0x16e0b
    prints 0x65, 1
    prints dp, 1
    prints 9, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 20 (text 'file_3'): x=82, y=181, w=320, h=45, name hash=0xb4f1651c
; flags=0x37, aph=127, events: touch_press=0x16e6b, touch_release=0x16e80
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="timelapse__20240314_1143.mp4"
; text:
;   7: ""

; touch_press
.org 0x16e6b
    click b5, 1
    up

; touch_release
.org 0x16e80
    click b5, 0
    down
    up

; object id 21 (button 'b14'): x=416, y=181, w=29, h=44, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x16ea5
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 10
; 017795:  ff ff                                            |..|

; touch_release
.org 0x16ea5
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
.org 0x16f10
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
.org 0x16f7a
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 24 (button 'b6'): x=65, y=225, w=380, h=45, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x16fe4
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 0177e9:  ff ff                                            |..|

; touch_release
.org 0x16fe4
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 25 (text 'file_4'): x=82, y=226, w=320, h=45, name hash=0xe971469f
; flags=0x37, aph=127, events: touch_press=0x17044, touch_release=0x17059
; sta=3, font=1, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件名"
; text:
;   7: ""

; touch_press
.org 0x17044
    click b6, 1
    up

; touch_release
.org 0x17059
    click b6, 0
    down
    up

; object id 26 (button 'b15'): x=416, y=226, w=29, h=44, name hash=0x27706ad7
; flags=0x37, aph=127, events: touch_release=0x1707e
; borderc=0x0000, picc=80, picc2=81, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 11
; 017891:  ff ff                                            |..|

; touch_release
.org 0x1707e
    prints 0x65, 1
    prints dp, 1
    prints 11, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 2975 bytes (9 trailing zero bytes dropped)
; 0178a1:  00 00 00 00 00 ff 00 01 00 00 2c 01 b4 c0 00 00  |..........,.....|
; 0178b1:  01 00 00 00 00 00 00 00 74 17 00 00 00 00 00 00  |........t.......|
; 0178c1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0178d1:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0178e1:  41 00 e4 00 7b 00 26 00 bb 00 09 01 00 00 00 00  |A...{.&.........|
; 0178f1:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 017901:  e4 c1 00 00 00 00 00 00 00 00 00 00 00 18 00 00  |................|
; 017911:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017921:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017931:  00 00 00 00 c0 00 9d 00 7e 00 6f 00 3d 01 0b 01  |........~.o.=...|
; 017941:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 017951:  ff ff 01 01 00 00 64 00 14 c3 00 00 01 00 00 00  |......d.........|
; 017961:  74 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 017971:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017981:  00 00 7f 00 00 00 00 00 14 ff d0 00 32 00 10 00  |............2...|
; 017991:  45 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |E...............|
; 0179a1:  ff ff 00 01 00 00 2c 01 7c c3 00 00 01 00 00 00  |......,.|.......|
; 0179b1:  00 00 00 00 74 1a 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 0179c1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0179d1:  00 00 00 00 00 00 7f 00 00 00 00 00 00 ff d0 00  |................|
; 0179e1:  21 00 10 00 76 ff df 00 00 00 00 00 03 00 00 00  |!...v...........|
; 0179f1:  00 01 00 00 ff ff 00 01 00 00 2c 01 ac c4 00 00  |..........,.....|
; 017a01:  01 00 00 00 00 00 00 00 74 1b 00 00 00 00 00 00  |........t.......|
; 017a11:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017a21:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 017a31:  c1 00 e4 00 7b 00 26 00 3b 01 09 01 00 00 00 00  |....{.&.;.......|
; 017a41:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 017a51:  dc c5 00 00 00 00 00 00 00 00 00 00 62 1c 00 00  |............b...|
; 017a61:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017a71:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017a81:  00 00 00 00 3f 01 9d 00 7e 00 6f 00 bc 01 0b 01  |....?...~.o.....|
; 017a91:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 017aa1:  ff ff 01 01 00 00 64 00 0c c7 00 00 00 00 00 00  |......d.........|
; 017ab1:  74 1d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 017ac1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017ad1:  00 00 7f 00 00 00 00 00 93 ff d0 00 32 00 10 00  |............2...|
; 017ae1:  c4 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 017af1:  ff ff 00 01 00 00 2c 01 74 c7 00 00 01 00 00 00  |......,.t.......|
; 017b01:  00 00 00 00 74 1e 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 017b11:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017b21:  00 00 00 00 00 00 7f 00 00 00 00 00 d7 ff d0 00  |................|
; 017b31:  21 00 10 00 f7 ff df 00 00 00 00 00 03 00 00 00  |!...............|
; 017b41:  00 01 00 00 ff ff 00 01 00 00 2c 01 a4 c8 00 00  |..........,.....|
; 017b51:  01 00 00 00 00 00 00 00 74 1f 00 00 00 00 00 00  |........t.......|
; 017b61:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017b71:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 017b81:  40 01 e4 00 7b 00 26 00 ba 01 09 01 00 00 00 00  |@...{.&.........|
; 017b91:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 017ba1:  d4 c9 00 00 00 00 00 00 00 00 00 00 3c 20 00 00  |............< ..|
; 017bb1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017bc1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017bd1:  00 00 00 00 5f 00 31 00 40 00 40 00 9e 00 70 00  |...._.1.@.@...p.|
; 017be1:  00 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 017bf1:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6a 70 67  |0240314_1142.jpg|
; 017c01:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017c11:  00 00 00 00 df 00 31 00 40 00 40 00 1e 01 70 00  |......1.@.@...p.|
; 017c21:  00 00 00 00 00 00 ff 00 04 cc 00 00 3c 22 00 00  |............<"..|
; 017c31:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017c41:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017c51:  00 00 00 00 5e 01 30 00 40 00 40 00 9d 01 6f 00  |....^.0.@.@...o.|
; 017c61:  00 00 00 00 00 00 ff 00 04 cd 00 00 3c 23 00 00  |............<#..|
; 017c71:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017c81:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017c91:  00 00 00 00 5f 00 a1 00 40 00 40 00 9e 00 e0 00  |...._...@.@.....|
; 017ca1:  00 00 00 00 00 00 ff 00 04 ce 00 00 3c 24 00 00  |............<$..|
; 017cb1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017cc1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017cd1:  00 00 00 00 df 00 a1 00 40 00 40 00 1e 01 e0 00  |........@.@.....|
; 017ce1:  00 00 00 00 00 00 ff 00 04 cf 00 00 3c 25 00 00  |............<%..|
; 017cf1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017d01:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017d11:  00 00 00 00 00 01 a1 00 40 00 40 00 9e 01 e0 00  |........@.@.....|
; 017d21:  00 00 00 00 00 00 ff 00 04 d0 00 00 62 26 00 00  |............b&..|
; 017d31:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017d41:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017d51:  00 00 00 00 9e 00 31 00 1c 00 1c 00 b9 00 4c 00  |......1.......L.|
; 017d61:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 017d71:  ff ff 01 01 00 00 64 00 04 d1 00 00 74 69 6d 65  |......d.....time|
; 017d81:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 017d91:  31 31 34 32 2e 6d 70 34 00 00 00 00 00 00 00 00  |1142.mp4........|
; 017da1:  00 00 7f 00 00 00 00 00 1f 01 31 00 1c 00 1c 00  |..........1.....|
; 017db1:  3a 01 4c 00 00 00 00 00 00 00 00 00 00 00 10 00  |:.L.............|
; 017dc1:  10 00 ff ff ff ff 01 01 00 00 64 00 6c d1 00 00  |..........d.l...|
; 017dd1:  01 00 00 00 62 28 00 00 00 00 00 00 00 00 00 00  |....b(..........|
; 017de1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017df1:  00 00 00 00 00 00 7f 00 00 00 00 00 9f 01 31 00  |..............1.|
; 017e01:  1c 00 1c 00 ba 01 4c 00 00 00 00 00 00 00 00 00  |......L.........|
; 017e11:  00 00 10 00 10 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 017e21:  d4 d1 00 00 01 00 00 00 62 29 00 00 00 00 00 00  |........b)......|
; 017e31:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017e41:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 017e51:  9e 00 a2 00 1c 00 1c 00 b9 00 bd 00 00 00 00 00  |................|
; 017e61:  00 00 00 00 00 00 10 00 10 00 ff ff ff ff 01 01  |................|
; 017e71:  00 00 64 00 3c d2 00 00 01 00 00 00 62 2a 00 00  |..d.<.......b*..|
; 017e81:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017e91:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017ea1:  00 00 00 00 1f 01 a2 00 1c 00 1c 00 00 01 bd 00  |................|
; 017eb1:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 017ec1:  ff ff 01 01 00 00 64 00 a4 d2 00 00 01 00 00 00  |......d.........|
; 017ed1:  62 2b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b+..............|
; 017ee1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017ef1:  00 00 7f 00 00 00 00 00 9f 01 a2 00 1c 00 1c 00  |................|
; 017f01:  ba 01 bd 00 00 00 00 00 00 00 00 00 00 00 10 00  |................|
; 017f11:  10 00 ff ff 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 017f21:  30 32 34 30 33 31 34 5f 31 31 34 33 2e 6a 70 67  |0240314_1143.jpg|
; 017f31:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017f41:  e8 03 01 00 05 2d 00 00 00 00 00 00 00 00 00 00  |.....-..........|
; 017f51:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017f61:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017f71:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017f81:  00 00 7f 00 00 00 00 00 97 01 d5 00 45 00 36 00  |............E.6.|
; 017f91:  db 01 0a 01 00 00 00 00 00 00 00 00 00 00 16 00  |................|
; 017fa1:  18 00 ff ff ff ff 01 01 00 00 64 00 84 55 00 00  |..........d..U..|
; 017fb1:  01 00 00 00 00 02 01 00 00 00 00 00 00 00 00 00  |................|
; 017fc1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017fd1:  32 68 34 6d 00 00 50 00 00 00 00 00 74 00 32 00  |2h4m..P.....t.2.|
; 017fe1:  0f 01 c8 00 82 01 f9 00 00 00 00 00 03 01 02 00  |................|
; 017ff1:  00 00 00 00 00 00 00 00 00 00 1a db bf 07 00 00  |................|
; 018001:  00 00 00 00 4e 00 00 00 e0 02 00 00 c0 a0 00 00  |....N...........|
; 018011:  71 07 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |q...............|
; 018021:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018031:  00 00 7f 00 00 00 00 00 a2 01 05 00 2d 00 1e 00  |............-...|
; 018041:  ce 01 22 00 00 00 00 00 15 00 00 00 74 0a 01 00  |..".........t...|
; 018051:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018061:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 018071:  00 00 00 00 9b 01 a6 00 21 00 1e 00 bb 01 c3 00  |........!.......|
; 018081:  00 00 00 00 03 00 00 00 00 02 00 00 bf 07 02 01  |................|
; 018091:  00 00 2c 01 ec 55 00 00 01 00 00 00 00 00 00 00  |..,..U..........|
; 0180a1:  74 0b 01 00 00 00 00 00 00 00 00 00 74 69 6d 65  |t...........time|
; 0180b1:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 0180c1:  31 31 34 33 2e 6d 70 34 00 01 5a 00 21 00 1e 00  |1143.mp4..Z.!...|
; 0180d1:  ba 01 77 00 00 00 00 00 03 00 00 00 00 02 00 00  |..w.............|
; 0180e1:  1a db 02 01 00 00 2c 01 1c 57 00 00 01 00 00 00  |......,..W......|
; 0180f1:  00 00 00 00 74 0c 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 018101:  34 6d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |4m..............|
; 018111:  00 00 00 00 00 00 7f 00 00 00 00 00 bb 01 5a 00  |..............Z.|
; 018121:  21 00 1e 00 db 01 77 00 00 00 00 00 03 00 00 00  |!.....w.........|
; 018131:  00 02 00 00 1a db 00 01 00 00 2c 01 4c 58 00 00  |..........,.LX..|
; 018141:  01 00 00 00 00 00 00 00 74 0d 01 00 00 00 00 00  |........t.......|
; 018151:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018161:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 018171:  bc 01 a6 00 21 00 1e 00 dc 01 c3 00 00 00 00 00  |....!...........|
; 018181:  03 00 00 00 00 02 00 00 bf 07 00 01 00 00 2c 01  |..............,.|
; 018191:  7c 59 00 00 01 00 00 00 00 00 00 00 62 09 01 00  ||Y..........b...|
; 0181a1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0181b1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0181c1:  00 00 00 00 bb 01 d6 00 24 00 35 00 de 01 0a 01  |........$.5.....|
; 0181d1:  00 00 00 00 00 00 00 00 00 00 1e 00 00 00 ff ff  |................|
; 0181e1:  ff ff 01 01 00 00 64 00 ac 5a 00 00 01 00 00 00  |......d..Z......|
; 0181f1:  62 0a 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 018201:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018211:  00 00 7f 00 00 00 00 00 bc 01 a0 00 24 00 35 00  |............$.5.|
; 018221:  df 01 d4 00 00 00 00 00 00 00 00 00 00 00 1e 00  |................|
; 018231:  e6 96 87 e4 bb b6 e5 90 8d 00 64 00 14 5b 00 00  |..........d..[..|
; 018241:  01 00 00 00 00 0b 01 00 00 00 00 00 00 00 00 00  |................|
; 018251:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018261:  00 00 00 00 00 00 7f 00 00 00 00 00 bc 01 2e 00  |................|
; 018271:  24 00 35 00 df 01 62 00 00 00 00 00 00 00 00 00  |$.5...b.........|
; 018281:  00 00 1e 00 48 00 ff ff ff ff 01 01 00 00 64 00  |....H.........d.|
; 018291:  7c 5b 00 00 01 00 00 00 62 2e 01 00 00 00 00 00  ||[......b.......|
; 0182a1:  00 00 00 00 00 00 00 00 00 00 00 00 e6 96 87 e4  |................|
; 0182b1:  bb b6 e5 90 8d 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0182c1:  42 00 07 00 89 00 22 00 ca 00 28 00 00 00 00 00  |B....."...(.....|
; 0182d1:  00 00 00 00 00 00 1b 00 1c 00 ff ff ff ff 01 01  |................|
; 0182e1:  00 00 64 00 e4 5b 00 00 01 00 00 00 62 2f 01 00  |..d..[......b/..|
; 0182f1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018301:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 018311:  00 00 00 00 ca 00 07 00 89 00 22 00 52 01 28 00  |..........".R.(.|
; 018321:  00 00 00 00 00 00 00 00 00 00 1b 00 1c 00 ff ff  |................|
; 018331:  ff ff 01 01 00 00 64 00 4c 5c 00 00 01 00 00 00  |......d.L\......|
; 018341:  62 30 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b0..............|
; 018351:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018361:  00 00 7f 00 00 00 00 00 51 01 07 00 89 00 22 00  |........Q.....".|
; 018371:  d9 01 28 00 00 00 00 00 00 00 00 00 00 00 1b 00  |..(.............|
; 018381:  1c 00 ff ff ff ff 01 01 00 00 64 00 b4 5c 00 00  |..........d..\..|
; 018391:  01 00 00 00 62 04 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 0183a1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0183b1:  00 00 00 00 00 00 7f 00 00 00 00 00 42 00 07 00  |............B...|
; 0183c1:  89 00 22 00 ca 00 28 00 00 00 00 00 00 00 00 00  |.."...(.........|
; 0183d1:  00 00 1b 00 1c 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 0183e1:  1c 5d 00 00 01 00 00 00 62 05 01 00 00 00 00 00  |.]......b.......|
; 0183f1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 018401:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 018411:  ca 00 07 00 89 00 22 00 52 01 28 00 00 00 00 00  |......".R.(.....|
; 018421:  00 00 00 00 00 00 1b 00 1c 00 ff ff ff ff 01 01  |................|
; 018431:  00 00 64 00 84 5d 00 00 01 00 00 00 62 06 01     |..d..]......b..|
