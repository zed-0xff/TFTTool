; page 48 'system': 21 objects

; object address table, 21 objects, block loaded at 0xb950
.dd 0xb9a4, 0xb9e4, 0xba38, 0xba8c, 0xbae0, 0xbb34, 0xbb88, 0xbbdc
.dd 0xbc30, 0xbc84, 0xbcd8, 0xbd2c, 0xbd80, 0xbdd4, 0xbe28, 0xbe7c
.dd 0xbe9c, 0xbebc, 0xbf10, 0xbf64, 0xbfb8

; object id 0 (page 'system'): x=0, y=0, w=480, h=272, name hash=0x75b5d150
; flags=0x37, aph=127, events: event_3=0x32998
; sta=2, pic=48
; 0331b3:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x32998
    global_20 = global_18
    prints global_20, 0
    dims = global_2c
    unload
    down
    up

; load
.org 0x343f3
    ref 15
    ref 16
    if global_14 != 0 then jump lbl_34492
    local_445e = "语言选择"
    local_4561 = "校准"
    local_4485 = "恢复出厂设置"
    local_44ac = "中文"
    local_44fc = "版本"
    jmp lbl_34916

lbl_34492:
    if global_14 != 1 then jump lbl_34527
    local_445e = "Language Selection"
    local_4561 = "Calibration"
    local_4485 = "Factory Reset"
    local_44ac = "English"
    local_44fc = "Version"
    jmp lbl_34916

lbl_34527:
    if global_14 != 2 then jump lbl_345e4
    local_445e = "言語選択"
    local_4561 = "キャリブレーション"
    local_4485 = "工場出荷状態にリセット"
    local_44ac = "日本語"
    local_44fc = "バージョン"
    jmp lbl_34916

lbl_345e4:
    if global_14 != 3 then jump lbl_34672
    local_445e = "Sprachauswahl"
    local_4561 = "Kalibrierung"
    local_4485 = "Werksreset"
    local_44ac = "Deutsch"
    local_44fc = "Version"
    jmp lbl_34916

lbl_34672:
    if global_14 != 4 then jump lbl_3471b
    local_445e = "Selección de idioma"
    local_4561 = "Calibración"
    local_4485 = "Restablecimiento de fábrica"
    local_44ac = "Español"
    local_44fc = "Versión"
    jmp lbl_34916

lbl_3471b:
    if global_14 != 5 then jump lbl_347c3
    local_445e = "Sélection de la langue"
    local_4561 = "Calibration"
    local_4485 = "Réinitialisation d'usine"
    local_44ac = "Français"
    local_44fc = "Version"
    jmp lbl_34916

lbl_347c3:
    if global_14 != 6 then jump lbl_34869
    local_445e = "Seleção de idioma"
    local_4561 = "Calibração"
    local_4485 = "Restauração de fábrica"
    local_44ac = "Português"
    local_44fc = "Versão"
    jmp lbl_34916

lbl_34869:
    if global_14 != 7 then jump lbl_34916
    local_445e = "Selezione della lingua"
    local_4561 = "Calibrazione"
    local_4485 = "Ripristino delle impostazioni di fabbrica"
    local_44ac = "Italiano"
    local_44fc = "Versione"

lbl_34916:
    if global_14 != 0 then jump lbl_3495b
    local_43e5 = "系统"
    local_440e = "网络"
    jmp lbl_34b47

lbl_3495b:
    if global_14 != 1 then jump lbl_349a1
    local_43e5 = "System"
    local_440e = "Network"
    jmp lbl_34b47

lbl_349a1:
    if global_14 != 2 then jump lbl_349f8
    local_43e5 = "システム"
    local_440e = "ネットワーク"
    jmp lbl_34b47

lbl_349f8:
    if global_14 != 3 then jump lbl_34a3f
    local_43e5 = "System"
    local_440e = "Netzwerk"
    jmp lbl_34b47

lbl_34a3f:
    if global_14 != 4 then jump lbl_34a82
    local_43e5 = "Sistema"
    local_440e = "Red"
    jmp lbl_34b47

lbl_34a82:
    if global_14 != 5 then jump lbl_34aca
    local_43e5 = "Système"
    local_440e = "Réseau"
    jmp lbl_34b47

lbl_34aca:
    if global_14 != 6 then jump lbl_34b0e
    local_43e5 = "Sistema"
    local_440e = "Rede"
    jmp lbl_34b47

lbl_34b0e:
    if global_14 != 7 then jump lbl_34b47
    local_43e5 = "Sistema"
    local_440e = "Rete"

lbl_34b47:
    doevents
    down
    up

; object id 1 (button 'b15'): x=83, y=180, w=376, h=44, name hash=0x27706ad7
; flags=0x37, aph=127, events: touch_release=0x329ec
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 033203:  ff ff                                            |..|

; touch_release
.org 0x329ec
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b14'): x=84, y=49, w=376, h=44, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x32a56
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 033257:  ff ff                                            |..|

; touch_release
.org 0x32a56
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x32ac0
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 0332ab:  ff ff                                            |..|

; touch_release
.org 0x32ac0
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x32b2c
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 0332ff:  ff ff                                            |..|

; touch_release
.org 0x32b2c
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x32b98
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 033353:  ff ff                                            |..|

; touch_release
.org 0x32b98
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b103'): x=2, y=209, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x32c04
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 0333a7:  ff ff                                            |..|

; touch_release
.org 0x32c04
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b0'): x=70, y=7, w=199, h=34, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x32c70
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="系统"
; text:
;   0: "系统"
;   1: "System"
;   2: "システム"
;   3: "System"
;   4: "Sistema"
;   5: "Système"
;   6: "Sistema"
;   7: "Sistema"
; touch_release reports to the host: page <page>, widget 130
; 0333fb:  ff ff                                            |..|

; touch_release
.org 0x32c70
    prints 0x65, 1
    prints dp, 1
    prints 130, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b1'): x=271, y=7, w=196, h=34, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x32cdc
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="网络"
; text:
;   0: "网络"
;   1: "Network"
;   2: "ネットワーク"
;   3: "Netzwerk"
;   4: "Red"
;   5: "Réseau"
;   6: "Rede"
;   7: "Rete"
; touch_release reports to the host: page <page>, widget 131
; 03344f:  ff ff                                            |..|

; touch_release
.org 0x32cdc
    prints 0x65, 1
    prints dp, 1
    prints 131, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b2'): x=467, y=0, w=13, h=8, name hash=0x22c442c6
; flags=0x37, aph=0, events: touch_release=0x32d48
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="调平校准"
; touch_release reports to the host: page <page>, widget 132
; 0334a3:  ff ff                                            |..|

; touch_release
.org 0x32d48
    prints 0x65, 1
    prints dp, 1
    prints 132, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 10 (text 't2'): x=88, y=49, w=92, h=44, name hash=0x2cf7a429
; flags=0x37, aph=127, events: touch_press=0x32daa, touch_release=0x32dc0
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="语言选择"
; text:
;   0: "语言选择"
;   1: "Language Selection"
;   2: "言語選択"
;   3: "Sprachauswahl"
;   4: "Selección de idioma"
;   5: "Sélection de la langue"
;   6: "Seleção de idioma"
;   7: "Selezione della lingua"

; touch_press
.org 0x32daa
    click b14, 1
    up

; touch_release
.org 0x32dc0
    click b14, 0
    down

; object id 11 (text 't3'): x=88, y=181, w=312, h=36, name hash=0x5a98bf51
; flags=0x37, aph=127, events: touch_press=0x32ddc, touch_release=0x32df2
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="恢复出厂设置"
; text:
;   0: "恢复出厂设置"
;   1: "Factory Reset"
;   2: "工場出荷状態にリセット"
;   3: "Werksreset"
;   4: "Restablecimiento de fábrica"
;   5: "Réinitialisation d'usine"
;   6: "Restauração de fábrica"
;   7: "Ripristino delle impostazioni di fabbrica"

; touch_press
.org 0x32ddc
    click b15, 1
    up

; touch_release
.org 0x32df2
    click b15, 0
    down

; object id 12 (text 't4'): x=346, y=52, w=92, h=36, name hash=0x1d54e28e
; flags=0x37, aph=127, events: touch_press=0x32e0e, touch_release=0x32e24
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="中文"
; text:
;   0: "中文"
;   1: "English"
;   2: "日本語"
;   3: "Deutsch"
;   4: "Español"
;   5: "Français"
;   6: "Português"
;   7: "Italiano"

; touch_press
.org 0x32e0e
    click b14, 1
    up

; touch_release
.org 0x32e24
    click b14, 0
    down
    up

; object id 13 (button 'b16'): x=83, y=224, w=376, h=44, name hash=0xb7f90e98
; flags=0x37, aph=127, events: touch_release=0x32e4a
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2
; 0335f3:  ff ff                                            |..|

; touch_release
.org 0x32e4a
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 14 (text 't5'): x=88, y=223, w=94, h=36, name hash=0x6b3bf9f6
; flags=0x37, aph=127, events: touch_press=0x32eaa, touch_release=0x32ec0
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="版本"
; text:
;   0: "版本"
;   1: "Version"
;   2: "バージョン"
;   3: "Version"
;   4: "Versión"
;   5: "Version"
;   6: "Versão"
;   7: "Versione"

; touch_press
.org 0x32eaa
    click b16, 1
    up

; touch_release
.org 0x32ec0
    click b16, 0
    timer

; object id 15 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x32edd
; tim=1000, en=1

; timer
.org 0x32edd
    if global_1c <= 0 then jump lbl_32f39
    if global_20 <= 0 then jump lbl_32f39
    global_20--
    if global_20 != 0 then jump lbl_32f39
    dim = global_30

lbl_32f39:
    down
    up

; object id 16 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x32f53

; touch_release
.org 0x32f53
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 17 (button 'b3'): x=82, y=91, w=375, h=44, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x32f8b
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3
; 0336db:  ff ff                                            |..|

; touch_release
.org 0x32f8b
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 18 (text 't0'): x=88, y=95, w=126, h=36, name hash=0xc02992d9
; flags=0x37, aph=127, events: touch_press=0x32feb, touch_release=0x33000
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="校准"
; text:
;   0: "校准"
;   1: "Calibration"
;   2: "キャリブレーション"
;   3: "Kalibrierung"
;   4: "Calibración"
;   5: "Calibration"
;   6: "Calibração"
;   7: "Calibrazione"

; touch_press
.org 0x32feb
    click b3, 1
    up

; touch_release
.org 0x33000
    click b3, 0
    down
    up

; object id 19 (button 'b4'): x=81, y=134, w=375, h=44, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x33025
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 033783:  ff ff                                            |..|

; touch_release
.org 0x33025
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 20 (text 't1'): x=88, y=138, w=126, h=36, name hash=0xb64689a1
; flags=0x37, aph=127, events: touch_press=0x33085, touch_release=0x3309a
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="Obico"

; touch_press
.org 0x33085
    click b4, 1
    up

; touch_release
.org 0x3309a
    click b4, 0

; data after the object structs, 3074 bytes (6 trailing zero bytes dropped)
; 0337e7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0337f7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 033807:  00 00 00 00 01 00 0a 00 c6 00 16 00 c6 00 1f 00  |................|
; 033817:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 033827:  00 00 64 00 30 c2 00 00 01 00 00 00 00 00 00 00  |..d.0...........|
; 033837:  33 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |3...............|
; 033847:  00 00 00 00 00 00 00 00 00 00 00 00 00 03 01 00  |................|
; 033857:  05 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033867:  00 00 00 00 00 00 00 00 4c 45 44 00 00 00 00 00  |........LED.....|
; 033877:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033887:  00 00 00 00 00 00 7f 00 e9 80 9f e5 00 a6 2b 00  |..............+.|
; 033897:  7b 00 26 00 bb 00 09 01 00 00 00 00 03 00 00 00  |{.&.............|
; 0338a7:  00 01 00 00 00 ff 01 01 00 00 2c 01 00 00 00 00  |..........,.....|
; 0338b7:  00 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00  |................|
; 0338c7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0338d7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0338e7:  00 00 9d 00 7e 00 6f 00 e5 86 8d e6 00 a1 e6 89  |....~.o.........|
; 0338f7:  93 e5 8d b0 00 00 1a 00 00 00 ff ff ff ff 01 01  |................|
; 033907:  e5 85 a8 e9 00 a8 e5 9b 9e e9 9b b6 00 19 00 00  |................|
; 033917:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033927:  00 00 00 00 00 00 00 00 30 7e 36 30 00 00 7f 00  |........0~60....|
; 033937:  00 00 00 00 14 ff d0 00 32 00 10 00 45 ff df 00  |........2...E...|
; 033947:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 033957:  00 00 00 00 28 d9 00 00 01 00 00 00 00 00 00 00  |....(...........|
; 033967:  74 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 033977:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033987:  00 00 7f 00 00 00 00 00 00 ff d0 00 21 00 10 00  |............!...|
; 033997:  30 00 df 00 00 00 00 00 e6 a8 a1 e5 9e 8b e9 a3  |0...............|
; 0339a7:  8e e6 89 87 00 00 2c 01 58 da 00 00 01 00 00 00  |......,.X.......|
; 0339b7:  00 00 00 00 74 1b 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 0339c7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0339d7:  00 00 00 00 00 00 7f 00 00 00 00 00 c1 00 e4 00  |................|
; 0339e7:  7b 00 26 00 3b 01 09 01 00 00 00 00 00 00 00 00  |{.&.;...........|
; 0339f7:  00 01 00 00 ff ff 01 01 00 00 2c 01 88 db 00 00  |..........,.....|
; 033a07:  00 00 00 00 e5 8f af e8 be 93 e5 85 a5 e8 8c 83  |................|
; 033a17:  e5 9b b4 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033a27:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 033a37:  3f 01 9d 00 7e 00 6f 00 00 01 0b 01 00 00 00 00  |?...~.o.........|
; 033a47:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 033a57:  00 00 64 00 e7 b3 bb e7 bb 9f 00 00 74 1d 00 00  |..d.........t...|
; 033a67:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033a77:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 033a87:  00 00 00 00 93 ff d0 00 32 00 10 00 c4 ff df 00  |........2.......|
; 033a97:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 033aa7:  00 00 2c 01 20 dd 00 00 01 00 00 00 00 00 00 00  |..,. ...........|
; 033ab7:  74 1e 00 00 00 00 00 00 00 00 00 00 e7 bd 91 e7  |t...............|
; 033ac7:  bb 9c 00 00 00 00 00 00 e5 a3 b0 e9 9f b3 00 00  |................|
; 033ad7:  00 00 7f 00 00 00 00 00 d7 ff d0 00 21 00 10 00  |............!...|
; 033ae7:  f7 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 033af7:  ff ff 00 01 00 00 2c 01 50 de 00 00 01 00 00 00  |......,.P.......|
; 033b07:  00 00 00 00 74 1f 00 00 58 59 5a e8 bd b4 00 00  |....t...XYZ.....|
; 033b17:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033b27:  00 00 00 00 e8 b0 83 e5 b9 b3 e6 a0 a1 e5 87 86  |................|
; 033b37:  00 00 26 00 ba 01 09 01 00 00 00 00 03 00 00 00  |..&.............|
; 033b47:  00 01 00 00 ff ff 01 01 00 00 2c 01 80 df 00 00  |..........,.....|
; 033b57:  00 00 00 00 00 00 00 00 3c 20 00 00 00 00 00 00  |........< ......|
; 033b67:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033b77:  e6 8e a7 e5 88 b6 00 00 00 00 7f 00 00 00 00 00  |................|
; 033b87:  5f 00 31 00 40 00 40 00 9e 00 70 00 e8 af ad e8  |_.1.@.@...p.....|
; 033b97:  a8 80 e9 80 89 e6 8b a9 00 5f 5f 32 30 32 34 30  |.........__20240|
; 033ba7:  33 31 34 5f 31 31 34 32 2e 6a 70 67 00 00 00 00  |314_1142.jpg....|
; 033bb7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 033bc7:  df 00 31 00 40 00 40 00 1e 01 70 00 00 00 00 00  |..1.@.@...p.....|
; 033bd7:  00 00 ff 00 b0 e1 00 00 00 22 00 00 00 00 00 00  |........."......|
; 033be7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033bf7:  00 00 00 00 00 00 00 00 e6 8d a2 e6 96 99 00 00  |................|
; 033c07:  5e 01 30 00 40 00 40 00 9d 01 6f 00 00 00 00 00  |^.0.@.@...o.....|
; 033c17:  00 00 ff 00 b0 e2 00 00 3c 23 00 00 00 00 00 00  |........<#......|
; 033c27:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033c37:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 033c47:  00 00 a1 00 40 00 40 00 9e 00 e0 00 00 00 00 00  |....@.@.........|
; 033c57:  00 00 ff 00 b0 e3 00 00 3c 24 00 00 00 00 00 00  |........<$......|
; 033c67:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033c77:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 033c87:  df 00 a1 00 40 00 40 00 1e 01 e0 00 00 00 00 00  |....@.@.........|
; 033c97:  00 00 ff 00 b0 e4 00 00 3c 25 00 00 00 00 00 00  |........<%......|
; 033ca7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033cb7:  00 00 00 00 00 00 00 00 00 00 7f 00 e6 81 a2 e5  |................|
; 033cc7:  a4 8d e5 87 ba e5 8e 82 e8 ae be e7 bd ae 00 00  |................|
; 033cd7:  00 00 ff 00 b0 e5 00 00 62 26 00 00 00 00 00 00  |........b&......|
; 033ce7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033cf7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 033d07:  9e 00 31 00 1c 00 1c 00 b9 00 4c 00 00 00 00 00  |..1.......L.....|
; 033d17:  00 00 00 00 00 00 10 00 10 00 ff ff ff ff 01 01  |................|
; 033d27:  00 00 64 00 b0 e6 00 00 74 69 6d 65 6c 61 70 73  |..d.....timelaps|
; 033d37:  65 5f 5f 32 30 32 34 30 33 31 34 5f 31 31 34 32  |e__20240314_1142|
; 033d47:  2e 6d 70 34 00 00 00 00 00 00 00 00 00 00 7f 00  |.mp4............|
; 033d57:  00 00 00 00 1f 01 31 00 1c 00 1c 00 3a 01 4c 00  |......1.....:.L.|
; 033d67:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 033d77:  ff ff 01 01 00 00 64 00 00 e7 00 00 01 00 00 00  |......d.........|
; 033d87:  62 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b(..............|
; 033d97:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033da7:  00 00 7f 00 00 00 00 00 9f 01 31 00 1c 00 1c 00  |..........1.....|
; 033db7:  ba 01 4c 00 00 00 00 00 00 00 00 00 00 00 10 00  |..L.............|
; 033dc7:  10 00 ff ff ff ff 01 01 00 00 64 00 80 e7 00 00  |..........d.....|
; 033dd7:  01 00 00 00 62 29 00 00 00 00 00 00 00 00 00 00  |....b)..........|
; 033de7:  00 00 00 00 00 00 00 00 00 00 00 00 e4 b8 ad e6  |................|
; 033df7:  96 87 00 00 00 00 7f 00 00 00 00 00 9e 00 a2 00  |................|
; 033e07:  1c 00 1c 00 b9 00 bd 00 00 00 00 00 00 00 00 00  |................|
; 033e17:  00 00 10 00 10 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 033e27:  e8 e7 00 00 01 00 00 00 62 2a 00 00 00 00 00 00  |........b*......|
; 033e37:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033e47:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 033e57:  1f 01 a2 00 1c 00 1c 00 00 01 bd 00 00 00 00 00  |................|
; 033e67:  00 00 00 00 00 00 10 00 10 00 ff ff ff ff 01 01  |................|
; 033e77:  00 00 64 00 50 e8 00 00 01 00 00 00 62 2b 00 00  |..d.P.......b+..|
; 033e87:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033e97:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 033ea7:  00 00 00 00 9f 01 a2 00 1c 00 1c 00 ba 01 bd 00  |................|
; 033eb7:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 033ec7:  74 69 6d 65 6c 61 70 73 65 5f 5f 32 30 32 34 30  |timelapse__20240|
; 033ed7:  33 31 34 5f 31 31 34 33 2e 6a 70 67 00 00 00 00  |314_1143.jpg....|
; 033ee7:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 033ef7:  05 2d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |.-..............|
; 033f07:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033f17:  00 00 00 00 00 00 00 00 e6 8c a4 e5 00 ba e6 9c  |................|
; 033f27:  ba 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 033f37:  00 00 00 00 33 01 ab 00 2e 00 2f 00 60 01 d9 00  |....3...../.`...|
; 033f47:  00 00 00 00 00 00 00 00 00 00 3b 00 3c 00 ff ff  |..........;.<...|
; 033f57:  ff ff 01 01 00 00 64 00 20 5c 00 00 01 00 00 00  |......d. \......|
; 033f67:  62 18 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 033f77:  00 00 00 00 00 00 00 00 00 00 00 00 32 68 34 6d  |............2h4m|
; 033f87:  00 00 00 00 e7 89 88 e6 9c ac 00 00 2e 00 2f 00  |............../.|
; 033f97:  60 01 0a 01 00 00 00 00 00 00 00 00 00 00 3b 00  |`.............;.|
; 033fa7:  3c 00 ff ff ff ff 01 01 00 00 64 00 88 5c 00 00  |<.........d..\..|
; 033fb7:  01 00 00 00 74 02 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 033fc7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033fd7:  00 00 00 00 00 00 7f 00 00 00 00 00 6a 00 69 00  |............j.i.|
; 033fe7:  0c 01 1c 00 75 01 84 00 00 00 00 00 03 00 00 00  |....u...........|
; 033ff7:  00 00 00 00 ff ff 01 01 00 00 2c 01 f0 5c 00 00  |..........,..\..|
; 034007:  01 00 00 00 00 00 00 00 74 05 01 00 00 00 00 00  |........t.......|
; 034017:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 034027:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 034037:  6a 00 42 00 0c 01 27 00 75 01 68 00 00 00 00 00  |j.B...'.u.h.....|
; 034047:  03 00 00 00 00 00 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 034057:  20 5e 00 00 01 00 00 00 74 69 6d 65 6c 61 70 73  | ^......timelaps|
; 034067:  65 5f 5f 32 30 32 34 30 33 31 34 5f 31 31 34 33  |e__20240314_1143|
; 034077:  2e 6d 70 34 00 00 00 00 00 00 00 00 00 00 7f 00  |.mp4............|
; 034087:  00 00 00 00 97 01 d7 00 45 00 36 00 db 01 0c 01  |........E.6.....|
; 034097:  00 00 00 00 00 00 00 00 00 00 16 00 18 00 ff ff  |................|
; 0340a7:  ff ff 01 01 00 00 64 00 50 5f 00 00 34 6d 00 00  |......d.P_..4m..|
; 0340b7:  00 02 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0340c7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0340d7:  00 00 50 00 00 00 00 00 74 00 32 00 0f 01 c8 00  |..P.....t.2.....|
; 0340e7:  82 01 f9 00 00 00 00 00 03 01 02 00 00 00 00 00  |................|
; 0340f7:  00 00 00 00 00 00 1a db bf 07 00 00 00 00 00 00  |................|
; 034107:  4e 00 00 00 e0 02 00 00 6c b6 00 00 71 07 01 00  |N.......l...q...|
; 034117:  00 00 00 00 00 00 00 00 00 00 00 00 e6 a0 a1 e5  |................|
; 034127:  87 86 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 034137:  00 00 00 00 a0 01 06 00 34 00 2b 00 d3 01 30 00  |........4.+...0.|
; 034147:  00 00 00 00 15 00 00 00 74 0a 01 00 00 00 00 00  |........t.......|
; 034157:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 034167:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 034177:  9d 01 8a 00 21 00 1e 00 bd 01 a7 00 00 00 00 00  |....!...........|
; 034187:  03 00 00 00 00 02 00 00 00 07 02 01 00 00 2c 01  |..............,.|
; 034197:  b8 5f 00 00 01 00 00 00 00 00 00 00 74 0b 01 00  |._..........t...|
; 0341a7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0341b7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0341c7:  00 00 00 00 9c 01 54 00 21 00 1e 00 bc 01 71 00  |......T.!.....q.|
; 0341d7:  00 00 00 00 03 00 00 00 00 02 00 00 e6 96 87 e4  |................|
; 0341e7:  bb b6 e5 90 8d 00 00 00 01 00 00 00 00 00 00 00  |................|
; 0341f7:  00 0c 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 034207:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 034217:  00 00 7f 00 00 00 00 00 bd 01 54 00 21 00 1e 00  |..........T.!...|
; 034227:  dd 01 71 00 00 00 00 00 03 00 00 00 00 02 00 00  |..q.............|
; 034237:  1a db 00 01 00 00 2c 01 18 62 00 00 01 00 00 00  |......,..b......|
; 034247:  00 00 00 00 74 0d 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 034257:  00 00 00 00 00 00 00 00 e6 96 87 e4 bb b6 e5 90  |................|
; 034267:  8d 00 00 00 00 00 7f 00 00 00 00 00 be 01 8a 00  |................|
; 034277:  21 00 1e 00 de 01 a7 00 00 00 00 00 03 00 00 00  |!...............|
; 034287:  00 02 00 00 bf 07 00 01 00 00 2c 01 48 63 00 00  |..........,.Hc..|
; 034297:  01 00 00 00 00 00 00 00 74 11 01 00 00 00 00 00  |........t.......|
; 0342a7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0342b7:  00 00 00 00 4f 62 69 63 6f 00 7f 00 00 00 00 00  |....Obico.......|
; 0342c7:  9b 01 c1 00 21 00 1e 00 bb 01 de 00 00 00 00 00  |....!...........|
; 0342d7:  03 00 00 00 00 02 00 00 bf 07 02 01 00 00 2c 01  |..............,.|
; 0342e7:  78 64 00 00 01 00 00 00 00 00 00 00 74 12 01 00  |xd..........t...|
; 0342f7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 034307:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 034317:  00 00 00 00 bc 01 c1 00 21 00 1e 00 dc 01 de 00  |........!.......|
; 034327:  00 00 00 00 03 00 00 00 00 02 00 00 bf 07 00 01  |................|
; 034337:  00 00 2c 01 a8 65 00 00 01 00 00 00 00 00 00 00  |..,..e..........|
; 034347:  62 09 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 034357:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 034367:  00 00 7f 00 00 00 00 00 bb 01 d6 00 24 00 35 00  |............$.5.|
; 034377:  de 01 0a 01 00 00 00 00 00 00 00 00 00 00 1e 00  |................|
; 034387:  48 00 ff ff ff ff 01 01 00 00 64 00 d8 66 00 00  |H.........d..f..|
; 034397:  01 00 00 00 62 0a 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 0343a7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0343b7:  00 00 00 00 00 00 7f 00 00 00 00 00 bc 01 a0 00  |................|
; 0343c7:  24 00 35 00 df 01 d4 00 00 00 00 00 00 00 00 00  |$.5.............|
; 0343d7:  00 00 1e 00 48 00 ff ff ff ff 01 01 00 00 64 00  |....H.........d.|
; 0343e7:  40 67                                            |@g|
