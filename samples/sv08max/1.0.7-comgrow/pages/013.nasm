; page 13 'no_udisk': 11 objects

; object address table, 11 objects, block loaded at 0xa3a4
.dd 0xa3d0, 0xa410, 0xa464, 0xa484, 0x1318, 0x136c, 0x13c0, 0xa4a4
.dd 0xa4f8, 0xa54c, 0xa5a0

; object id 0 (page 'no_udisk'): x=0, y=0, w=480, h=272, name hash=0x231888b
; flags=0x37, aph=127, events: event_3=0x14c4d
; sta=2, pic=25
; 0150d6:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x14c4d
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x155a2
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_155ef
    local_1702 = "未检测到U盘"
    jmp lbl_157d3

lbl_155ef:
    if global_14 != 1 then jump lbl_15631
    local_1702 = "USB disk not detected"
    jmp lbl_157d3

lbl_15631:
    if global_14 != 2 then jump lbl_15683
    local_1702 = "USB ディスクが検出されない"
    jmp lbl_157d3

lbl_15683:
    if global_14 != 3 then jump lbl_156ce
    local_1702 = "USB-Datenträger nicht erkannt"
    jmp lbl_157d3

lbl_156ce:
    if global_14 != 4 then jump lbl_15711
    local_1702 = "Disco USB no detectado"
    jmp lbl_157d3

lbl_15711:
    if global_14 != 5 then jump lbl_15756
    local_1702 = "Disque USB non détecté"
    jmp lbl_157d3

lbl_15756:
    if global_14 != 6 then jump lbl_1579b
    local_1702 = "Disco USB não detectado"
    jmp lbl_157d3

lbl_1579b:
    if global_14 != 7 then jump lbl_157d3
    local_1702 = "Disco USB non rilevato"

lbl_157d3:
    if global_14 != 0 then jump lbl_1582e
    local_1740 = "本地"
    local_1769 = "U盘"
    local_1792 = "延时摄影"
    jmp lbl_15afd

lbl_1582e:
    if global_14 != 1 then jump lbl_15895
    local_1740 = "Local"
    local_1769 = "U Disk"
    local_1792 = "time-lapse\rphotography"
    jmp lbl_15afd

lbl_15895:
    if global_14 != 2 then jump lbl_15902
    local_1740 = "ローカル"
    local_1769 = "Uディスク"
    local_1792 = "写真の遅れ"
    jmp lbl_15afd

lbl_15902:
    if global_14 != 3 then jump lbl_1596c
    local_1740 = "örtlich"
    local_1769 = "U-Disk"
    local_1792 = "Verzögerte\rFotografie"
    jmp lbl_15afd

lbl_1596c:
    if global_14 != 4 then jump lbl_159d3
    local_1740 = "Local"
    local_1769 = "Disco U"
    local_1792 = "Fotografía\rRetrasada"
    T 0x12a

lbl_159d3:
    if global_14 != 5 then jump lbl_15a3d
    local_1740 = "Locale"
    local_1769 = "Disque U"
    local_1792 = "Photographie\rRetardée"
    jmp lbl_15afd

lbl_15a3d:
    if global_14 != 6 then jump lbl_15aa0
    local_1740 = "Local"
    local_1769 = "Disco U"
    local_1792 = "Fotografia\rTardia"
    jmp lbl_15afd

lbl_15aa0:
    if global_14 != 7 then jump lbl_15afd
    local_1740 = "Locale"
    local_1769 = "Disco U"
    local_1792 = "Fotografia\rtime-lapse"

lbl_15afd:
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
; flags=0x27, events: timer=0x14ca4
; tim=1000, en=1

; timer
.org 0x14ca4
    if global_1c <= 0 then jump lbl_14d00
    if global_20 <= 0 then jump lbl_14d00
    global_20--
    if global_20 != 0 then jump lbl_14d00
    dim = global_30

lbl_14d00:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x14d1a

; touch_release
.org 0x14d1a
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 260 (button 'b0'): x=66, y=7, w=137, h=34, name hash=0xce1a7436
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
.org 0x14d52
    prints 0x65, 1
    prints dp, 1
    prints 110, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 261 (button 'b1'): x=202, y=7, w=137, h=34, name hash=0xb8756f4e
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
.org 0x14dbe
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
.org 0x14e2a
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x14e96
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 0151ba:  ff ff                                            |..|

; touch_release
.org 0x14e96
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x14f02
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 01520e:  ff ff                                            |..|

; touch_release
.org 0x14f02
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x14f6e
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 015262:  ff ff                                            |..|

; touch_release
.org 0x14f6e
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x14fda
; borderc=0x0000, picc=26, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 0152b6:  ff ff                                            |..|

; touch_release
.org 0x14fda
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 723 bytes (5 trailing zero bytes dropped)
; 0152c6:  00 00 00 00 e6 9c aa e6 a3 80 e6 b5 8b e5 88 b0  |................|
; 0152d6:  55 e7 9b 98 00 00 00 00 00 00 00 00 00 00 00 00  |U...............|
; 0152e6:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 07 00  |................|
; 0152f6:  3d 00 36 00 3c 00 3c 00 00 00 00 00 00 00 00 00  |=.6.<.<.........|
; 015306:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 015316:  8c b5 00 00 01 00 00 00 62 06 00 00 00 00 00 00  |........b.......|
; 015326:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015336:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 015346:  00 00 50 00 3d 00 36 00 3c 00 85 00 00 00 00 00  |..P.=.6.<.......|
; 015356:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 015366:  00 00 64 00 f4 b5 00 00 01 00 00 00 62 07 00 00  |..d.........b...|
; 015376:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015386:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 015396:  00 00 00 00 00 00 91 00 3d 00 36 00 3c 00 c6 00  |........=.6.<...|
; 0153a6:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 0153b6:  ff ff 01 01 00 00 64 00 5c b6 00 00 01 00 00 00  |......d.\.......|
; 0153c6:  62 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0153d6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0153e6:  00 00 7f 00 00 00 00 00 00 00 d3 00 3d 00 36 00  |............=.6.|
; 0153f6:  3c 00 08 01 00 00 00 00 00 00 00 00 00 00 1a 00  |<...............|
; 015406:  1a 00 ff ff ff ff 01 01 00 00 64 00 c4 b6 00 00  |..........d.....|
; 015416:  01 00 00 00 62 0c 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 015426:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015436:  00 00 00 00 00 00 7f 00 00 00 00 00 c0 00 2d 00  |..............-.|
; 015446:  00 00 6f 00 3d 01 9b 00 00 00 00 00 00 00 00 00  |..o.=...........|
; 015456:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 015466:  2c b7 00 00 01 00 00 00 74 0d 00 00 00 00 00 00  |,.......t.......|
; 015476:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015486:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 015496:  14 ff 61 00 32 00 10 00 45 ff 70 00 00 00 00 00  |..a.2...E.p.....|
; 0154a6:  03 00 00 00 00 01 00 00 00 ff 00 01 00 00 2c 01  |..............,.|
; 0154b6:  94 b7 00 00 01 00 00 00 00 00 00 00 74 0e 00 00  |............t...|
; 0154c6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0154d6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0154e6:  00 00 00 00 58 ff 61 00 21 00 10 00 78 ff 70 00  |....X.a.!...x.p.|
; 0154f6:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 015506:  00 00 2c 01 c4 b8 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 015516:  00 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015526:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 015536:  00 00 7f 00 00 00 00 00 c1 00 74 00 7b 00 26 00  |..........t.{.&.|
; 015546:  3b 01 99 00 00 00 00 00 03 00 00 00 00 01 00 00  |;...............|
; 015556:  ff ff 01 01 00 00 2c 01 f4 b9 00 00 00 00 00 00  |......,.........|
; 015566:  00 00 00 00 62 10 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 015576:  00 00 00 00 00 00 00 00 e0 2e 00 00 00 00 00 00  |................|
; 015586:  00 00 00 00 00 00 7f 00 00 00 00 00 40 01 2d 00  |............@.-.|
; 015596:  7e 00 6f                                         |~.o|
