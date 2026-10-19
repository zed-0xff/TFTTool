; page 12 'filelist_init': 11 objects

; object address table, 11 objects, block loaded at 0xa3a4
.dd 0xa3d0, 0xa410, 0xa478, 0xa498, 0x121c, 0x1270, 0x12c4, 0xa4b8
.dd 0xa50c, 0xa560, 0xa5b4

; object id 0 (page 'filelist_init'): x=0, y=0, w=480, h=272, name hash=0xc0351114
; flags=0x37, aph=127, events: event_3=0x13fa2
; sta=2, pic=25
; 01443a:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x13fa2
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    playend
    timer

; load
.org 0x148ea
    ref 1
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_1495d
    local_15c4 = "本地"
    local_15ed = "U盘"
    local_1616 = "延时摄影"
    jmp lbl_14c2c

lbl_1495d:
    if global_14 != 1 then jump lbl_149c4
    local_15c4 = "Local"
    local_15ed = "U Disk"
    local_1616 = "time-lapse\rphotography"
    jmp lbl_14c2c

lbl_149c4:
    if global_14 != 2 then jump lbl_14a31
    local_15c4 = "ローカル"
    local_15ed = "Uディスク"
    local_1616 = "写真の遅れ"
    jmp lbl_14c2c

lbl_14a31:
    if global_14 != 3 then jump lbl_14a9b
    local_15c4 = "örtlich"
    local_15ed = "U-Disk"
    local_1616 = "Verzögerte\rFotografie"
    jmp lbl_14c2c

lbl_14a9b:
    if global_14 != 4 then jump lbl_14b02
    local_15c4 = "Local"
    local_15ed = "Disco U"
    local_1616 = "Fotografía\rRetrasada"
    T 0x12a

lbl_14b02:
    if global_14 != 5 then jump lbl_14b6c
    local_15c4 = "Locale"
    local_15ed = "Disque U"
    local_1616 = "Photographie\rRetardée"
    jmp lbl_14c2c

lbl_14b6c:
    if global_14 != 6 then jump lbl_14bcf
    local_15c4 = "Local"
    local_15ed = "Disco U"
    local_1616 = "Fotografia\rTardia"
    jmp lbl_14c2c

lbl_14bcf:
    if global_14 != 7 then jump lbl_14c2c
    local_15c4 = "Locale"
    local_15ed = "Disco U"
    local_1616 = "Fotografia\rtime-lapse"

lbl_14c2c:
    doevents
    down
    up

; object id 1 (unknown_0x02 'gm0'): x=238, y=127, w=34, h=34, name hash=0x9d43bf99
; flags=0x37, aph=127
; vid=0, en=1, dis=100
; 014481:  01 00 00                                         |...|
; 014485:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 014495:  00 00 00 ff 00 0c a6 00 00 e0 2e 00 00 ac a8 00  |................|
; 0144a5:  00 00 00 00 00 00 00 00 00                       |.........|

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x14008
; tim=1000, en=1

; timer
.org 0x14008
    if global_1c <= 0 then jump lbl_14064
    if global_20 <= 0 then jump lbl_14064
    global_20--
    if global_20 != 0 then jump lbl_14064
    dim = global_30

lbl_14064:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1407e

; touch_release
.org 0x1407e
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 260 (button 'b0'): x=66, y=7, w=137, h=34, name hash=0xce1a7436
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
.org 0x140b6
    prints 0x65, 1
    prints dp, 1
    prints 110, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 261 (button 'b1'): x=202, y=7, w=137, h=34, name hash=0xb8756f4e
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
.org 0x14122
    prints 0x65, 1
    prints dp, 1
    prints 111, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 262 (button 'b17'): x=337, y=7, w=137, h=34, name hash=0x3bc12630
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
.org 0x1418e
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x141fa
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 014532:  ff ff                                            |..|

; touch_release
.org 0x141fa
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x14266
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 014586:  ff ff                                            |..|

; touch_release
.org 0x14266
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x142d2
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 0145da:  ff ff                                            |..|

; touch_release
.org 0x142d2
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x1433e
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 01462e:  ff ff                                            |..|

; touch_release
.org 0x1433e
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 678 bytes (2 trailing zero bytes dropped)
; 01463e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01464e:  00 00 7f 00 00 00 00 00 00 00 07 00 3d 00 36 00  |............=.6.|
; 01465e:  3c 00 3c 00 00 00 00 00 00 00 00 00 00 00 1a 00  |<.<.............|
; 01466e:  1a 00 ff ff ff ff 01 01 00 00 64 00 8c b5 00 00  |..........d.....|
; 01467e:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01468e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01469e:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 50 00  |..............P.|
; 0146ae:  3d 00 36 00 3c 00 85 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 0146be:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 0146ce:  f4 b5 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 0146de:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0146ee:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0146fe:  00 00 91 00 3d 00 36 00 3c 00 c6 00 00 00 00 00  |....=.6.<.......|
; 01470e:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 01471e:  00 00 64 00 5c b6 00 00 01 00 00 00 62 08 00 00  |..d.\.......b...|
; 01472e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01473e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01474e:  00 00 00 00 00 00 d3 00 3d 00 36 00 3c 00 08 01  |........=.6.<...|
; 01475e:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 01476e:  ff ff 01 01 00 00 64 00 c4 b6 00 00 01 00 00 00  |......d.........|
; 01477e:  62 0c 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01478e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01479e:  00 00 7f 00 00 00 00 00 c0 00 2d 00 00 00 6f 00  |..........-...o.|
; 0147ae:  3d 01 9b 00 00 00 00 00 00 00 00 00 00 00 1a 00  |=...............|
; 0147be:  1a 00 ff ff ff ff 01 01 00 00 64 00 2c b7 00 00  |..........d.,...|
; 0147ce:  01 00 00 00 74 0d 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 0147de:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0147ee:  00 00 00 00 00 00 7f 00 00 00 00 00 14 ff 61 00  |..............a.|
; 0147fe:  32 00 10 00 45 ff 70 00 00 00 00 00 03 00 00 00  |2...E.p.........|
; 01480e:  00 01 00 00 00 ff 00 01 00 00 2c 01 94 b7 00 00  |..........,.....|
; 01481e:  01 00 00 00 00 00 00 00 74 0e 00 00 00 00 00 00  |........t.......|
; 01482e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01483e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01484e:  58 ff 61 00 21 00 10 00 78 ff 70 00 00 00 00 00  |X.a.!...x.p.....|
; 01485e:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01486e:  c4 b8 00 00 01 00 00 00 00 00 00 00 00 0f 00 00  |................|
; 01487e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01488e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01489e:  00 00 00 00 c1 00 74 00 7b 00 26 00 3b 01 99 00  |......t.{.&.;...|
; 0148ae:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 01 01  |................|
; 0148be:  00 00 2c 01 f4 b9 00 00 00 00 00 00 00 00 00 00  |..,.............|
; 0148ce:  62 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0148de:  00 00 00 00 e0 2e                                |......|
