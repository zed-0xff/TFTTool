; page 13 'no_udisk': 11 objects

; object address table, 11 objects, block loaded at 0xb950
.dd 0xb97c, 0xb9bc, 0xba10, 0xba30, 0x1510, 0x1564, 0x15b8, 0xba50
.dd 0xbaa4, 0xbaf8, 0xbb4c

; object id 0 (page 'no_udisk'): x=0, y=0, w=480, h=272, name hash=0x231888b
; flags=0x37, aph=127, events: event_3=0x16dbb
; sta=2, pic=25
; 017244:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x16dbb
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x17710
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_1775d
    local_1865 = "未检测到U盘"
    jmp lbl_17941

lbl_1775d:
    if global_14 != 1 then jump lbl_1779f
    local_1865 = "USB disk not detected"
    jmp lbl_17941

lbl_1779f:
    if global_14 != 2 then jump lbl_177f1
    local_1865 = "USB ディスクが検出されない"
    jmp lbl_17941

lbl_177f1:
    if global_14 != 3 then jump lbl_1783c
    local_1865 = "USB-Datenträger nicht erkannt"
    jmp lbl_17941

lbl_1783c:
    if global_14 != 4 then jump lbl_1787f
    local_1865 = "Disco USB no detectado"
    jmp lbl_17941

lbl_1787f:
    if global_14 != 5 then jump lbl_178c4
    local_1865 = "Disque USB non détecté"
    jmp lbl_17941

lbl_178c4:
    if global_14 != 6 then jump lbl_17909
    local_1865 = "Disco USB não detectado"
    jmp lbl_17941

lbl_17909:
    if global_14 != 7 then jump lbl_17941
    local_1865 = "Disco USB non rilevato"

lbl_17941:
    if global_14 != 0 then jump lbl_1799c
    local_18a3 = "本地"
    local_18cc = "U盘"
    local_18f5 = "延时摄影"
    jmp lbl_17c6b

lbl_1799c:
    if global_14 != 1 then jump lbl_17a03
    local_18a3 = "Local"
    local_18cc = "U Disk"
    local_18f5 = "time-lapse\rphotography"
    jmp lbl_17c6b

lbl_17a03:
    if global_14 != 2 then jump lbl_17a70
    local_18a3 = "ローカル"
    local_18cc = "Uディスク"
    local_18f5 = "写真の遅れ"
    jmp lbl_17c6b

lbl_17a70:
    if global_14 != 3 then jump lbl_17ada
    local_18a3 = "örtlich"
    local_18cc = "U-Disk"
    local_18f5 = "Verzögerte\rFotografie"
    jmp lbl_17c6b

lbl_17ada:
    if global_14 != 4 then jump lbl_17b41
    local_18a3 = "Local"
    local_18cc = "Disco U"
    local_18f5 = "Fotografía\rRetrasada"
    T 0x12a

lbl_17b41:
    if global_14 != 5 then jump lbl_17bab
    local_18a3 = "Locale"
    local_18cc = "Disque U"
    local_18f5 = "Photographie\rRetardée"
    jmp lbl_17c6b

lbl_17bab:
    if global_14 != 6 then jump lbl_17c0e
    local_18a3 = "Local"
    local_18cc = "Disco U"
    local_18f5 = "Fotografia\rTardia"
    jmp lbl_17c6b

lbl_17c0e:
    if global_14 != 7 then jump lbl_17c6b
    local_18a3 = "Locale"
    local_18cc = "Disco U"
    local_18f5 = "Fotografia\rtime-lapse"

lbl_17c6b:
    doevents
    down
    up

; object id 1 (text 't0'): x=148, y=96, w=224, h=101, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="未检测到U盘"
; text:
;   0: "未检测到U盘"
;   1: "USB disk not detected"
;   2: "USB ディスクが検出されない"
;   3: "USB-Datenträger nicht erkannt"
;   4: "Disco USB no detectado"
;   5: "Disque USB non détecté"
;   6: "Disco USB não detectado"
;   7: "Disco USB non rilevato"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x16e12
; tim=1000, en=1

; timer
.org 0x16e12
    if global_1c <= 0 then jump lbl_16e6e
    if global_20 <= 0 then jump lbl_16e6e
    global_20--
    if global_20 != 0 then jump lbl_16e6e
    dim = global_30

lbl_16e6e:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x16e88

; touch_release
.org 0x16e88
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 260 (button 'b0'): x=66, y=7, w=204, h=34, name hash=0xce1a7436
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
.org 0x16ec0
    prints 0x65, 1
    prints dp, 1
    prints 110, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 261 (button 'b1'): x=267, y=7, w=206, h=34, name hash=0xb8756f4e
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
.org 0x16f2c
    prints 0x65, 1
    prints dp, 1
    prints 111, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 262 (button 'b17'): x=467, y=0, w=13, h=6, name hash=0x3bc12630
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
.org 0x16f98
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x17004
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 017328:  ff ff                                            |..|

; touch_release
.org 0x17004
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x17070
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 01737c:  ff ff                                            |..|

; touch_release
.org 0x17070
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x170dc
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 0173d0:  ff ff                                            |..|

; touch_release
.org 0x170dc
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x17148
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 017424:  ff ff                                            |..|

; touch_release
.org 0x17148
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 723 bytes (5 trailing zero bytes dropped)
; 017434:  00 00 00 00 e6 9c aa e6 a3 80 e6 b5 8b e5 88 b0  |................|
; 017444:  55 e7 9b 98 00 00 00 00 00 00 00 00 00 00 00 00  |U...............|
; 017454:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 07 00  |................|
; 017464:  3d 00 36 00 3c 00 3c 00 00 00 00 00 00 00 00 00  |=.6.<.<.........|
; 017474:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 017484:  38 cb 00 00 01 00 00 00 62 06 00 00 00 00 00 00  |8.......b.......|
; 017494:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0174a4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0174b4:  00 00 50 00 3d 00 36 00 3c 00 85 00 00 00 00 00  |..P.=.6.<.......|
; 0174c4:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 0174d4:  00 00 64 00 a0 cb 00 00 01 00 00 00 62 07 00 00  |..d.........b...|
; 0174e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0174f4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017504:  00 00 00 00 00 00 91 00 3d 00 36 00 3c 00 c6 00  |........=.6.<...|
; 017514:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 017524:  ff ff 01 01 00 00 64 00 08 cc 00 00 01 00 00 00  |......d.........|
; 017534:  62 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 017544:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017554:  00 00 7f 00 00 00 00 00 00 00 d3 00 3d 00 36 00  |............=.6.|
; 017564:  3c 00 08 01 00 00 00 00 00 00 00 00 00 00 1a 00  |<...............|
; 017574:  1a 00 ff ff ff ff 01 01 00 00 64 00 70 cc 00 00  |..........d.p...|
; 017584:  01 00 00 00 62 0c 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 017594:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0175a4:  00 00 00 00 00 00 7f 00 00 00 00 00 c0 00 2d 00  |..............-.|
; 0175b4:  00 00 6f 00 3d 01 9b 00 00 00 00 00 00 00 00 00  |..o.=...........|
; 0175c4:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 0175d4:  d8 cc 00 00 01 00 00 00 74 0d 00 00 00 00 00 00  |........t.......|
; 0175e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0175f4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 017604:  14 ff 61 00 32 00 10 00 45 ff 70 00 00 00 00 00  |..a.2...E.p.....|
; 017614:  03 00 00 00 00 01 00 00 00 ff 00 01 00 00 2c 01  |..............,.|
; 017624:  40 cd 00 00 01 00 00 00 00 00 00 00 74 0e 00 00  |@...........t...|
; 017634:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017644:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 017654:  00 00 00 00 58 ff 61 00 21 00 10 00 78 ff 70 00  |....X.a.!...x.p.|
; 017664:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 017674:  00 00 2c 01 70 ce 00 00 01 00 00 00 00 00 00 00  |..,.p...........|
; 017684:  00 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 017694:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0176a4:  00 00 7f 00 00 00 00 00 c1 00 74 00 7b 00 26 00  |..........t.{.&.|
; 0176b4:  3b 01 99 00 00 00 00 00 03 00 00 00 00 01 00 00  |;...............|
; 0176c4:  ff ff 01 01 00 00 2c 01 a0 cf 00 00 00 00 00 00  |......,.........|
; 0176d4:  00 00 00 00 62 10 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0176e4:  00 00 00 00 00 00 00 00 e0 2e 00 00 00 00 00 00  |................|
; 0176f4:  00 00 00 00 00 00 7f 00 00 00 00 00 40 01 2d 00  |............@.-.|
; 017704:  7e 00 6f                                         |~.o|
