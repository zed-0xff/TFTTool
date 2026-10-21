; page 20 'preview': 18 objects

; object address table, 18 objects, block loaded at 0xa3a4
.dd 0xa3ec, 0xa42c, 0xa480, 0xa4d4, 0xa528, 0x15b8, 0x160c, 0xa57c
.dd 0xa5d0, 0x1660, 0xa624, 0xa664, 0xa684, 0xa6a4, 0x16b4, 0x1708
.dd 0x175c, 0x17b0

; object id 0 (page 'preview'): x=0, y=0, w=480, h=272, name hash=0x86f511c0
; flags=0x37, aph=127, events: event_3=0x1b2ac
; sta=2, pic=31
; 01b971:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1b2ac
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x1bfad
    ref 11
    ref 12
    if global_14 != 0 then jump lbl_1c01a
    local_21f2 = "本地"
    local_221b = "U盘"
    local_2244 = "延时摄影"
    jmp lbl_1c2e9

lbl_1c01a:
    if global_14 != 1 then jump lbl_1c081
    local_21f2 = "Local"
    local_221b = "U Disk"
    local_2244 = "time-lapse\rphotography"
    jmp lbl_1c2e9

lbl_1c081:
    if global_14 != 2 then jump lbl_1c0ee
    local_21f2 = "ローカル"
    local_221b = "Uディスク"
    local_2244 = "写真の遅れ"
    jmp lbl_1c2e9

lbl_1c0ee:
    if global_14 != 3 then jump lbl_1c158
    local_21f2 = "örtlich"
    local_221b = "U-Disk"
    local_2244 = "Verzögerte\rFotografie"
    jmp lbl_1c2e9

lbl_1c158:
    if global_14 != 4 then jump lbl_1c1bf
    local_21f2 = "Local"
    local_221b = "Disco U"
    local_2244 = "Fotografía\rRetrasada"
    T 0x12a

lbl_1c1bf:
    if global_14 != 5 then jump lbl_1c229
    local_21f2 = "Locale"
    local_221b = "Disque U"
    local_2244 = "Photographie\rRetardée"
    jmp lbl_1c2e9

lbl_1c229:
    if global_14 != 6 then jump lbl_1c28c
    local_21f2 = "Local"
    local_221b = "Disco U"
    local_2244 = "Fotografia\rTardia"
    jmp lbl_1c2e9

lbl_1c28c:
    if global_14 != 7 then jump lbl_1c2e9
    local_21f2 = "Locale"
    local_221b = "Disco U"
    local_2244 = "Fotografia\rtime-lapse"

lbl_1c2e9:
    if global_14 != 0 then jump lbl_1c334
    local_2104 = "打印"
    local_21c9 = "延时摄影"
    jmp lbl_1c57d

lbl_1c334:
    if global_14 != 1 then jump lbl_1c386
    local_2104 = "Print"
    local_21c9 = "Delayed\rPhotography"
    jmp lbl_1c57d

lbl_1c386:
    if global_14 != 2 then jump lbl_1c3da
    local_2104 = "プリント"
    local_21c9 = "写真の遅れ"
    jmp lbl_1c57d

lbl_1c3da:
    if global_14 != 3 then jump lbl_1c431
    local_2104 = "Drucken"
    local_21c9 = "Verzögerte\rFotografie"
    jmp lbl_1c57d

lbl_1c431:
    if global_14 != 4 then jump lbl_1c488
    local_2104 = "Imprimir"
    local_21c9 = "Fotografía\rRetrasada"
    jmp lbl_1c57d

lbl_1c488:
    if global_14 != 5 then jump lbl_1c4e0
    local_2104 = "Imprimer"
    local_21c9 = "Photographie\rRetardée"
    jmp lbl_1c57d

lbl_1c4e0:
    if global_14 != 6 then jump lbl_1c533
    local_2104 = "Imprimir"
    local_21c9 = "Fotografia\rTardia"
    jmp lbl_1c57d

lbl_1c533:
    if global_14 != 7 then jump lbl_1c57d
    local_2104 = "Stampa"
    local_21c9 = "Fotografia\rtime-lapse"

lbl_1c57d:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x1b2f2
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 01b9c1:  ff ff                                            |..|

; touch_release
.org 0x1b2f2
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x1b35e
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 01ba15:  ff ff                                            |..|

; touch_release
.org 0x1b35e
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x1b3ca
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 01ba69:  ff ff                                            |..|

; touch_release
.org 0x1b3ca
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x1b436
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 01babd:  ff ff                                            |..|

; touch_release
.org 0x1b436
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up

; object id 261 (text 't0'): x=340, y=144, w=50, h=26, name hash=0xc02992d9
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"

; object id 262 (text 't1'): x=420, y=144, w=50, h=26, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"

; object id 7 (button 'b2'): x=315, y=226, w=155, h=37, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x1b4d6
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="打印"
; text:
;   0: "打印"
;   1: "Print"
;   2: "プリント"
;   3: "Drucken"
;   4: "Imprimir"
;   5: "Imprimer"
;   6: "Imprimir"
;   7: "Stampa"
; touch_release reports to the host: page <page>, widget 1
; 01bb11:  ff ff                                            |..|

; touch_release
.org 0x1b4d6
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b3'): x=66, y=46, w=45, h=46, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x1b540
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 01bb65:  ff ff                                            |..|

; touch_release
.org 0x1b540
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
    timer

; object id 265 (text 't2'): x=121, y=53, w=344, h=34, name hash=0x2cf7a429
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件名"

; object id 10 (unknown_0x3c 'exp0'): x=80, y=91, w=176, h=176, name hash=0x4cb85fe0
; flags=0x37, aph=127
; path="ram/176.jpg"
; 01bba9:  00 00 00 00 00 00 ff 00                          |........|

; object id 11 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1b5d5
; tim=1000, en=1

; timer
.org 0x1b5d5
    if global_1c <= 0 then jump lbl_1b631
    if global_20 <= 0 then jump lbl_1b631
    global_20--
    if global_20 != 0 then jump lbl_1b631
    dim = global_30

lbl_1b631:
    down
    up

; object id 12 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1b64b

; touch_release
.org 0x1b64b
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 13 (crop 'q0'): x=482, y=169, w=123, h=36, name hash=0x32aa1f99
; flags=0x37, aph=127, events: touch_release=0x1b683
; picc=31
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x1b683
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 270 (text 't3'): x=488, y=174, w=111, h=26, name hash=0x5a98bf51
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="延时摄影"
; text:
;   0: "延时摄影"
;   1: "Delayed\rPhotography"
;   2: "写真の遅れ"
;   3: "Verzögerte\rFotografie"
;   4: "Fotografía\rRetrasada"
;   5: "Photographie\rRetardée"
;   6: "Fotografia\rTardia"
;   7: "Fotografia\rtime-lapse"
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x1b6ed
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 271 (button 'b0'): x=66, y=7, w=137, h=34, name hash=0xce1a7436
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
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
.org 0x1b757
    prints 0x65, 1
    prints dp, 1
    prints 110, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 272 (button 'b1'): x=202, y=7, w=137, h=34, name hash=0xb8756f4e
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
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
.org 0x1b7c3
    prints 0x65, 1
    prints dp, 1
    prints 111, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 273 (button 'b17'): x=337, y=7, w=137, h=34, name hash=0x3bc12630
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
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
.org 0x1b82f
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 883 bytes (5 trailing zero bytes dropped)
; 01bc31:  00 00 00 00 00 00 64 00 a8 ad 00 00 01 00 00 00  |......d.........|
; 01bc41:  33 09 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |3...............|
; 01bc51:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 01bc61:  05 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bc71:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bc81:  74 0e 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01bc91:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bca1:  00 00 7f 00 00 00 00 00 51 00 2d 00 40 01 2d 00  |........Q.-.@.-.|
; 01bcb1:  90 01 59 00 00 00 00 00 03 00 00 00 00 01 00 00  |..Y.............|
; 01bcc1:  ff ff 00 01 00 00 2c 01 10 ae 00 00 01 00 00 00  |......,.........|
; 01bcd1:  00 00 00 00 62 0f 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01bce1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bcf1:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 2e 00  |................|
; 01bd01:  1d 00 2c 00 00 01 59 00 00 00 00 00 00 00 00 00  |..,...Y.........|
; 01bd11:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 01bd21:  40 af 00 00 01 00 00 00 74 10 00 00 00 00 00 00  |@.......t.......|
; 01bd31:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bd41:  00 00 00 00 e6 98 af 00 00 00 7f 00 00 00 00 00  |................|
; 01bd51:  52 00 5b 00 40 01 2d 00 91 01 87 00 00 00 00 00  |R.[.@.-.........|
; 01bd61:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01bd71:  a8 af 00 00 01 00 00 00 00 00 00 00 62 11 00 00  |............b...|
; 01bd81:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bd91:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01bda1:  00 00 00 00 a0 01 5b 00 1d 00 2c 00 e5 90 a6 00  |......[...,.....|
; 01bdb1:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 01bdc1:  ff ff 01 01 00 00 64 00 d8 b0 00 00 01 00 00 00  |......d.........|
; 01bdd1:  74 12 00 00 e6 89 93 e5 8d b0 00 00 00 00 00 00  |t...............|
; 01bde1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bdf1:  00 00 7f 00 00 00 00 00 52 00 88 00 40 01 2d 00  |........R...@.-.|
; 01be01:  91 01 b4 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 01be11:  ff ff 00 01 00 00 00 00 40 b1 00 00 01 00 00 00  |........@.......|
; 01be21:  00 00 00 00 62 13 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01be31:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01be41:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 88 00  |................|
; 01be51:  1d 00 2c 00 bc 01 b3 00 00 00 00 00 00 00 00 00  |..,.............|
; 01be61:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 01be71:  70 b2 00 00 01 00 00 00 74 14 00 00 00 00 00 00  |p.......t.......|
; 01be81:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01be91:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01bea1:  52 00 b5 00 72 61 6d 2f 31 37 36 2e 6a 70 67 00  |R...ram/176.jpg.|
; 01beb1:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01bec1:  d8 b2 00 00 01 00 00 00 00 00 00 00 62 15 00 00  |............b...|
; 01bed1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bee1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01bef1:  00 00 00 00 a0 01 b5 00 1d 00 2c 00 bc 01 e0 00  |..........,.....|
; 01bf01:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 01bf11:  ff ff 01 01 00 00 64 00 08 b4 00 00 01 00 00 00  |......d.........|
; 01bf21:  62 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01bf31:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bf41:  00 00 7f 00 00 00 00 00 41 00 e1 00 7c 01 2d 00  |........A...|.-.|
; 01bf51:  bc 01 0d 01 00 00 00 00 00 00 00 00 00 00 50 00  |..............P.|
; 01bf61:  51 00 ff ff ff ff 01 01 00 00 64 00 70 b4 00 00  |Q.........d.p...|
; 01bf71:  01 00 00 00 74 19 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 01bf81:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01bf91:  00 00 00 00 00 00 7f 00 00 00 00 00 52 00 e2 00  |............R...|
; 01bfa1:  40 01 2d                                         |@.-|
