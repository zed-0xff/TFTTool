; page 67: 19 objects

; object address table, 19 objects, block loaded at 0xb950
.dd 0xb99c, 0xb9dc, 0xba30, 0xba84, 0xbad8, 0xbb2c, 0xbb80, 0xbbd4
.dd 0xbc28, 0xbc7c, 0xbcd0, 0xbd24, 0xbd78, 0xbdcc, 0xbe20, 0xbe70
.dd 0xbec0, 0xbf10, 0xbf60

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xe3db6ef4
; flags=0x37, aph=127
; sta=2, pic=88
; 043cd0:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x44618
    ref 1
    ref 3
    ref 4
    ref 5
    if global_14 != 0 then jump lbl_446ef
    local_60d2 = "前置机型冷却风扇"
    local_60f9 = "后置机型冷却风扇"
    local_6120 = "辅助风扇 (需要安装)"
    local_6147 = "排气风扇 (需要安装)"
    jmp lbl_44cea

lbl_446ef:
    if global_14 != 1 then jump lbl_447a3
    local_60d2 = "Front Model Cool Fan"
    local_60f9 = "Back Model Cool Fan"
    local_6120 = "Auxiliary Fan (Need to install)"
    local_6147 = "Exhaust Fan (Need to install)"
    jmp lbl_44cea

lbl_447a3:
    if global_14 != 2 then jump lbl_4488d
    local_60d2 = "フロントモデルクールファン"
    local_60f9 = "バックモデルクールファン"
    local_6120 = "補助ファン (取り付けが必要)"
    local_6147 = "排気ファン (取り付けが必要)"
    jmp lbl_44cea

lbl_4488d:
    if global_14 != 3 then jump lbl_44958
    local_60d2 = "Vordermodell-Kühlfan"
    local_60f9 = "Hintermodell-Kühlfan"
    local_6120 = "Hilfsventilator (Installation erforderlich)"
    local_6147 = "Abluftfan (Installation erforderlich)"
    jmp lbl_44cea

lbl_44958:
    if global_14 != 4 then jump lbl_44a4d
    local_60d2 = "Ventilador de Modelo Frente en Cool"
    local_60f9 = "Ventilador de Modelo Trasero en Cool"
    local_6120 = "Ventilador auxiliar (Se requiere instalación)"
    local_6147 = "Ventilador de Escape (Se requiere instalación)"
    jmp lbl_44cea

lbl_44a4d:
    if global_14 != 5 then jump lbl_44b3a
    local_60d2 = "Modèle Avant Ventilateur Cool"
    local_60f9 = "Modèle Arrière Ventilateur Cool"
    local_6120 = "Ventilateur auxiliaire (Installation requise)"
    local_6147 = "Ventilateur d'Évacuation (Installation requise)"
    jmp lbl_44cea

lbl_44b3a:
    if global_14 != 6 then jump lbl_44c18
    local_60d2 = "Fan de Modelo Frente Cool"
    local_60f9 = "Fan de Modelo Traseiro Cool"
    local_6120 = "Ventilador auxiliar (Instalação necessária)"
    local_6147 = "Fan de Exaustão (Instalação necessária)"
    jmp lbl_44cea

lbl_44c18:
    if global_14 != 7 then jump lbl_44cea
    local_60d2 = "Fan Modello Frontale Cool"
    local_60f9 = "Fan Modello Posteriore Cool"
    local_6120 = "Ventilatore ausiliario (Richiesta installazione)"
    local_6147 = "Fan di Scarico (Richiesta installazione)"

lbl_44cea:
    doevents
    down
    up
    unload
    down
    up

; object id 1 (slider 'h0'): x=70, y=33, w=269, h=24, name hash=0x2fdc7301
; flags=0x37, aph=127, events: touch_release=0x437d0
; 043d10:  00 00 00 00 00 01 00 ff 64 64 2d 63 ff ff 00 00  |........dd-c....|
; 043d20:  64 00 00 00 19 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|

; touch_release
.org 0x437d0
    prints 0x71, 1
    prints dp, 1
    prints 0, 1
    prints local_600d, 2
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    slide
    down
    up

; object id 2 (button 'b0'): x=436, y=0, w=44, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x43855
; borderc=0x0000, picc=0, picc2=0, pco=0x0000, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 0
; 043d64:  00 00 00 00 03 00                                |......|
; 043d74:  ff ff                                            |..|

; touch_release
.org 0x43855
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (slider 'h1'): x=70, y=84, w=269, h=24, name hash=0x59b36879
; flags=0x37, aph=127, events: touch_release=0x438bf
; 043db8:  00 00 00 00 00 01 00 ff 64 64 2d 63 ff ff 00 00  |........dd-c....|
; 043dc8:  64 00 00 00 19 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|

; touch_release
.org 0x438bf
    prints 0x71, 1
    prints dp, 1
    prints 1, 1
    prints local_605c, 2
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    slide
    down
    up

; object id 4 (slider 'h2'): x=71, y=136, w=269, h=23, name hash=0xc30245f1
; flags=0x37, aph=127, events: touch_release=0x43944
; 043e0c:  00 00 00 00 00 01 00 ff 64 64 2d 63 ff ff 00 00  |........dd-c....|
; 043e1c:  64 00 00 00 19 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|

; touch_release
.org 0x43944
    prints 0x71, 1
    prints dp, 1
    prints 2, 1
    prints local_6084, 2
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    slide
    down
    up

; object id 5 (slider 'h3'): x=70, y=190, w=269, h=24, name hash=0xb56d5e89
; flags=0x37, aph=127, events: touch_release=0x439c9
; 043e60:  00 00 00 00 00 01 00 ff 64 64 2d 63 ff ff 00 00  |........dd-c....|
; 043e70:  64 00 00 00 19 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|

; touch_release
.org 0x439c9
    prints 0x71, 1
    prints dp, 1
    prints 3, 1
    prints local_60ac, 2
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    slide
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up

; object id 6 (text 't0'): x=71, y=56, w=270, h=23, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="front model cool fan"
; text:
;   0: "前置机型冷却风扇"
;   1: "Front Model Cool Fan"
;   2: "フロントモデルクールファン"
;   3: "Vordermodell-Kühlfan"
;   4: "Ventilador de Modelo Frente en Cool"
;   5: "Modèle Avant Ventilateur Cool"
;   6: "Fan de Modelo Frente Cool"
;   7: "Fan Modello Frontale Cool"

; object id 7 (text 't1'): x=71, y=107, w=270, h=23, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="back model cool fan"
; text:
;   0: "后置机型冷却风扇"
;   1: "Back Model Cool Fan"
;   2: "バックモデルクールファン"
;   3: "Hintermodell-Kühlfan"
;   4: "Ventilador de Modelo Trasero en Cool"
;   5: "Modèle Arrière Ventilateur Cool"
;   6: "Fan de Modelo Traseiro Cool"
;   7: "Fan Modello Posteriore Cool"

; object id 8 (text 't2'): x=72, y=158, w=317, h=25, name hash=0x2cf7a429
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="auxiliary fan (Need to instal)"
; text:
;   0: "辅助风扇 (需要安装)"
;   1: "Auxiliary Fan (Need to install)"
;   2: "補助ファン (取り付けが必要)"
;   3: "Hilfsventilator (Installation erforderlich)"
;   4: "Ventilador auxiliar (Se requiere instalación)"
;   5: "Ventilateur auxiliaire (Installation requise)"
;   6: "Ventilador auxiliar (Instalação necessária)"
;   7: "Ventilatore ausiliario (Richiesta installazione)"

; object id 9 (text 't3'): x=73, y=213, w=269, h=23, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="exhaust fan (Need to instal)"
; text:
;   0: "排气风扇 (需要安装)"
;   1: "Exhaust Fan (Need to install)"
;   2: "排気ファン (取り付けが必要)"
;   3: "Abluftfan (Installation erforderlich)"
;   4: "Ventilador de Escape (Se requiere instalación)"
;   5: "Ventilateur d'Évacuation (Installation requise)"
;   6: "Fan de Exaustão (Instalação necessária)"
;   7: "Fan di Scarico (Richiesta installazione)"

; object id 10 (text 't4'): x=367, y=33, w=20, h=23, name hash=0x1d54e28e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="%"

; object id 11 (text 't5'): x=366, y=83, w=20, h=23, name hash=0x6b3bf9f6
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="%"

; object id 12 (text 't6'): x=366, y=134, w=20, h=23, name hash=0xf18ad47e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="%"

; object id 13 (text 't7'): x=366, y=189, w=20, h=23, name hash=0x87e5cf06
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="%"

; object id 14 (number 'n0'): x=334, y=28, w=30, h=30, name hash=0x709e71ec
; flags=0x37, aph=127
; font=0, pco=0xffff, xcen=2, ycen=1, val=0
; 044154:  00 00 00 00 03 00 00 00 00                       |.........|
; 044168:  00 00 00 00 01 00 00 00                          |........|

; object id 15 (number 'n1'): x=334, y=78, w=30, h=30, name hash=0x6f16a94
; flags=0x37, aph=127
; font=0, pco=0xffff, xcen=2, ycen=1, val=0
; 0441a4:  00 00 00 00 03 00 00 00 00                       |.........|
; 0441b8:  00 00 00 00 01 00 00 00                          |........|

; object id 16 (number 'n2'): x=334, y=129, w=30, h=30, name hash=0x9c40471c
; flags=0x37, aph=127
; font=0, pco=0xffff, xcen=2, ycen=1, val=0
; 0441f4:  00 00 00 00 03 00 00 00 00                       |.........|
; 044208:  00 00 00 00 01 00 00 00                          |........|

; object id 17 (number 'n3'): x=334, y=184, w=30, h=30, name hash=0xea2f5c64
; flags=0x37, aph=127
; font=0, pco=0xffff, xcen=2, ycen=1, val=0
; 044244:  00 00 00 00 03 00 00 00 00                       |.........|
; 044258:  00 00 00 00 01 00 00 00                          |........|

; object id 18 (button 'b1'): x=390, y=31, w=52, h=52, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x43b86
; borderc=0x0000, picc=98, picc2=95, pco=0x0000, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 1
; 0442a4:  ff ff                                            |..|

; touch_release
.org 0x43b86
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 859 bytes (5 trailing zero bytes dropped)
; 0442b4:  00 00 00 00 00 00 cc 00 00 00 00 00 00 00 e7 39  |...............9|
; 0442c4:  66 72 6f 6e 74 20 6d 6f 64 65 6c 20 63 6f 6f 6c  |front model cool|
; 0442d4:  20 66 61 6e 00 00 00 00 62 14 00 00 00 00 00 00  | fan....b.......|
; 0442e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0442f4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 044304:  b3 00 af 00 26 00 1e 00 d8 00 cc 00 00 00 00 00  |....&...........|
; 044314:  00 00 e7 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 044324:  00 00 03 00 e8 c9 00 00 62 61 63 6b 20 6d 6f 64  |........back mod|
; 044334:  65 6c 20 63 6f 6f 6c 20 66 61 6e 00 00 00 00 00  |el cool fan.....|
; 044344:  00 00 00 00 00 00 00 00 00 00 00 00 e6 a0 a1 e5  |................|
; 044354:  87 86 00 00 dc 00 af 00 26 00 1e 00 01 01 cc 00  |........&.......|
; 044364:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 044374:  ff ff 01 01 00 00 03 00 ec c9 00 00 00 00 00 00  |................|
; 044384:  62 16 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 044394:  61 75 78 69 6c 69 61 72 79 20 66 61 6e 20 28 4e  |auxiliary fan (N|
; 0443a4:  65 65 64 20 74 6f 20 69 6e 73 74 61 6c 29 00 00  |eed to instal)..|
; 0443b4:  2a 01 cc 00 e6 a0 a1 e5 87 86 00 39 00 00 3d 00  |*..........9..=.|
; 0443c4:  3e 00 ff ff ff ff 01 01 00 00 03 00 f0 c9 00 00  |>...............|
; 0443d4:  00 00 00 00 62 17 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0443e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0443f4:  00 00 00 00 00 00 7f 00 65 78 68 61 75 73 74 20  |........exhaust |
; 044404:  66 61 6e 20 28 4e 65 65 64 20 74 6f 20 69 6e 73  |fan (Need to ins|
; 044414:  74 61 6c 29 00 00 ff ff ff ff 01 01 e7 83 ad e5  |tal)............|
; 044424:  ba 8a e8 b0 83 e5 b9 b3 00 18 00 00 00 00 00 00  |................|
; 044434:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 044444:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 044454:  57 01 af 00 26 00 1e 00 7c 01 cc 00 00 00 00 00  |W...&...|.......|
; 044464:  25 00 e7 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |%..9..=.>.......|
; 044474:  00 00 03 00 f8 c9 00 00 00 00 00 00 62 19 00 00  |............b...|
; 044484:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 044494:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0444a4:  00 00 00 00 80 01 af 00 26 00 1e 00 a5 01 cc 00  |........&.......|
; 0444b4:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 0444c4:  ff ff 01 01 00 00 03 00 25 00 00 00 00 00 00 00  |........%.......|
; 0444d4:  62 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0444e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0444f4:  00 00 7f 00 00 00 00 00 24 00 cf 00 2d 00 1e 00  |........$...-...|
; 044504:  50 00 ec 00 00 00 00 00 00 00 e7 39 00 00 3f 00  |P..........9..?.|
; 044514:  40 00 ff ff ff ff 01 01 00 00 03 00 00 ca 00 00  |@...............|
; 044524:  00 00 00 00 62 1b 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 044534:  25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |%...............|
; 044544:  00 00 00 00 00 00 7f 00 00 00 00 00 5a e8 bd b4  |............Z...|
; 044554:  e6 a0 a1 e5 87 86 00 00 00 00 00 00 00 00 e7 39  |...............9|
; 044564:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 044574:  04 ca 00 00 00 00 00 00 62 1c 00 00 00 00 00 00  |........b.......|
; 044584:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 044594:  00 00 00 00 00 00 00 00 25 00 7f 00 00 00 00 00  |........%.......|
; 0445a4:  8a 00 cf 00 26 00 1e 00 af 00 ec 00 00 00 00 00  |....&...........|
; 0445b4:  00 00 e7 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 0445c4:  00 00 03 00 08 ca 00 00 00 00 00 00 62 1d 00 00  |............b...|
; 0445d4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0445e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0445f4:  00 00 00 00 b3 00 cf 00 26 00 1e 00 d8 00 ec 00  |........&.......|
; 044604:  00 00 00 00 00 00 e7 39 00 00 3d                 |.......9..=|
