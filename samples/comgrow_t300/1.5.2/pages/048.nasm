; page 48 'system': 29 objects

; object address table, 29 objects, block loaded at 0xa3a4
.dd 0xa418, 0xa458, 0xa4ac, 0xa500, 0xa554, 0xa5a8, 0xa5fc, 0xa650
.dd 0xa6a4, 0xa6f8, 0xa74c, 0xa7a0, 0xa7f4, 0xa848, 0xa89c, 0xa8f0
.dd 0xa944, 0xa998, 0xa9ec, 0xaa40, 0xaa94, 0xaae8, 0xab3c, 0xab90
.dd 0xabe4, 0xac38, 0xac8c, 0xace0, 0xad00

; object id 0 (page 'system'): x=0, y=0, w=480, h=272, name hash=0x75b5d150
; flags=0x37, aph=127, events: event_3=0x3159c
; sta=2, pic=48
; 032130:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3159c
    global_20 = global_18
    prints global_20, 0
    dims = global_2c
    unload
    down
    up

; load
.org 0x33950
    ref 27
    ref 28
    local_4460 = local_42d1
    local_4460 = local_42d1
    local_4460 = local_42d1
    local_4489 = local_42d1
    local_44d9 = local_42d1
    local_4502 = local_42d1
    local_452b = local_42d1
    local_4554 = local_42d1
    local_457d = local_42d1
    local_45a6 = local_42d1
    local_45cf = local_42d1
    local_45f8 = local_42d1
    if dims != 20 then jump lbl_33a5a
    local_4460 = local_42d1+1
    local_4461 = local_42d1+1
    jmp lbl_33b60

lbl_33a5a:
    if dims != 40 then jump lbl_33a9e
    local_4489 = local_42d1+1
    local_448a = local_42d1+1
    jmp lbl_33b60

lbl_33a9e:
    if dims != 60 then jump lbl_33ae2
    local_44d9 = local_42d1+1
    local_44da = local_42d1+1
    jmp lbl_33b60

lbl_33ae2:
    if dims != 80 then jump lbl_33b26
    local_4502 = local_42d1+1
    local_4503 = local_42d1+1
    jmp lbl_33b60

lbl_33b26:
    if dims != 100 then jump lbl_33b60
    local_452b = local_42d1+1
    local_452c = local_42d1+1

lbl_33b60:
    if global_18 != 300 then jump lbl_33ba5
    local_4554 = local_42d1+1
    local_4555 = local_42d1+1
    jmp lbl_33cae

lbl_33ba5:
    if global_18 != 600 then jump lbl_33bea
    local_457d = local_42d1+1
    local_457e = local_42d1+1
    jmp lbl_33cae

lbl_33bea:
    if global_18 != 900 then jump lbl_33c2f
    local_45a6 = local_42d1+1
    local_45a7 = local_42d1+1
    jmp lbl_33cae

lbl_33c2f:
    if global_18 != 0x708 then jump lbl_33c76
    local_45cf = local_42d1+1
    local_45d0 = local_42d1+1
    jmp lbl_33cae

lbl_33c76:
    if global_1c != 0 then jump lbl_33cae
    local_45f8 = local_42d1+1
    local_45f9 = local_42d1+1

lbl_33cae:
    if global_14 != 0 then jump lbl_33dae
    local_44b7 = "屏幕亮度"
    local_4626 = "息屏"
    local_464d = "语言"
    local_4674 = "恢复出厂设置"
    local_469b = "中文"
    local_46eb = "版本"
    local_455b = "5分钟"
    local_4584 = "10分钟"
    local_45ad = "15分钟"
    local_45d6 = "30分钟"
    local_45ff = "永久"
    jmp lbl_344a3

lbl_33dae:
    if global_14 != 1 then jump lbl_33eaf
    local_44b7 = "Screen \rBrightness"
    local_4626 = "Breath \rScreen"
    local_464d = "Language"
    local_4674 = "Factory Reset"
    local_469b = "English"
    local_46eb = "Version"
    local_455b = "5min"
    local_4584 = "10min"
    local_45ad = "15min"
    local_45d6 = "30min"
    local_45ff = "Ever"
    jmp lbl_344a3

lbl_33eaf:
    if global_14 != 2 then jump lbl_33faf
    local_44b7 = "画面の明るさ"
    local_4626 = "息屏"
    local_464d = "言語"
    local_4674 = "リセット"
    local_469b = "日本語"
    local_46eb = "バージョン"
    local_455b = "5min"
    local_4584 = "10min"
    local_45ad = "15min"
    local_45d6 = "30min"
    local_45ff = "永続"
    jmp lbl_344a3

lbl_33faf:
    if global_14 != 3 then jump lbl_340b3
    local_44b7 = "Bildschirm\rhelligkeit"
    local_4626 = "Atem\rbildschirm"
    local_464d = "Sprache"
    local_4674 = "Zurücksetzen"
    local_469b = "Deutsch"
    local_46eb = "Version"
    local_455b = "5min"
    local_4584 = "10min"
    local_45ad = "15min"
    local_45d6 = "30min"
    local_45ff = "Ever"
    jmp lbl_344a3

lbl_340b3:
    if global_14 != 4 then jump lbl_341b0
    local_44b7 = "Pantalla\rBrillo"
    local_4626 = "Interés\rPantalla"
    local_464d = "Idioma"
    local_4674 = "Reiniciar"
    local_469b = "Español"
    local_46eb = "Versión"
    local_455b = "5min"
    local_4584 = "10min"
    local_45ad = "15min"
    local_45d6 = "30min"
    local_45ff = "Ever"
    jmp lbl_344a3

lbl_341b0:
    if global_14 != 5 then jump lbl_342b3
    local_44b7 = "Écran\rluminosité"
    local_4626 = "Intérêt Écran"
    local_464d = "Langue"
    local_4674 = "Réinitialiser"
    local_469b = "Français"
    local_46eb = "Version"
    local_455b = "5min"
    local_4584 = "10min"
    local_45ad = "15min"
    local_45d6 = "30min"
    local_45ff = "Ever"
    jmp lbl_344a3

lbl_342b3:
    if global_14 != 6 then jump lbl_343af
    local_44b7 = "Tela Brilho"
    local_4626 = "Tela\rRespiração"
    local_464d = "Linguagem"
    local_4674 = "Reiniciar"
    local_469b = "Português"
    local_46eb = "Versão"
    local_455b = "5min"
    local_4584 = "10min"
    local_45ad = "15min"
    local_45d6 = "30min"
    local_45ff = "Ever"
    jmp lbl_344a3

lbl_343af:
    if global_14 != 7 then jump lbl_344a3
    local_44b7 = "Schermo\rLuminosità"
    local_4626 = "Respiro\rSchermo"
    local_464d = "Lingua"
    local_4674 = "Ripristina"
    local_469b = "Italiano"
    local_46eb = "Versione"
    local_455b = "5min"
    local_4584 = "10min"
    local_45ad = "15min"
    local_45d6 = "30min"
    local_45ff = "Mai"

lbl_344a3:
    if global_14 != 0 then jump lbl_34500
    local_43ec = "系统"
    local_4415 = "网络"
    local_443e = "调平校准"
    jmp lbl_347da

lbl_34500:
    if global_14 != 1 then jump lbl_34561
    local_43ec = "System"
    local_4415 = "Network"
    local_443e = "Level Calibrate"
    jmp lbl_347da

lbl_34561:
    if global_14 != 2 then jump lbl_345d0
    local_43ec = "システム"
    local_4415 = "通信網"
    local_443e = "水平調整と校正"
    jmp lbl_347da

lbl_345d0:
    if global_14 != 3 then jump lbl_3463d
    local_43ec = "System"
    local_4415 = "Netzwerk"
    local_443e = "Nivellierung\rKalibrierung"
    jmp lbl_347da

lbl_3463d:
    if global_14 != 4 then jump lbl_346a7
    local_43ec = "Sistema"
    local_4415 = "Red"
    local_443e = "Nivelación y\rcalibración"
    jmp lbl_347da

lbl_346a7:
    if global_14 != 5 then jump lbl_34713
    local_43ec = "Système"
    local_4415 = "Réseau"
    local_443e = "Nivellement\rétalonnage"
    jmp lbl_347da

lbl_34713:
    if global_14 != 6 then jump lbl_3477c
    local_43ec = "Sistema"
    local_4415 = "Rede"
    local_443e = "Nivelamento\rCalibração"
    T 0x5e

lbl_3477c:
    if global_14 != 7 then jump lbl_347da
    local_43ec = "Sistema"
    local_4415 = "Rete"
    local_443e = "Calibrazione\rdel livello"

lbl_347da:
    doevents
    down
    up

; object id 1 (button 'b15'): x=83, y=180, w=376, h=44, name hash=0x27706ad7
; flags=0x37, aph=127, events: touch_release=0x315f0
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1
; 032180:  ff ff                                            |..|

; touch_release
.org 0x315f0
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b14'): x=84, y=136, w=376, h=44, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x3165a
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 0321d4:  ff ff                                            |..|

; touch_release
.org 0x3165a
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x316c4
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 032228:  ff ff                                            |..|

; touch_release
.org 0x316c4
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x31730
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 03227c:  ff ff                                            |..|

; touch_release
.org 0x31730
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x3179c
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 0322d0:  ff ff                                            |..|

; touch_release
.org 0x3179c
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b103'): x=2, y=209, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x31808
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 032324:  ff ff                                            |..|

; touch_release
.org 0x31808
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b0'): x=70, y=7, w=134, h=34, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x31874
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
; 032378:  ff ff                                            |..|

; touch_release
.org 0x31874
    prints 0x65, 1
    prints dp, 1
    prints 130, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b1'): x=204, y=7, w=134, h=34, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x318e0
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="网络"
; text:
;   0: "网络"
;   1: "Network"
;   2: "通信網"
;   3: "Netzwerk"
;   4: "Red"
;   5: "Réseau"
;   6: "Rede"
;   7: "Rete"
; touch_release reports to the host: page <page>, widget 131
; 0323cc:  ff ff                                            |..|

; touch_release
.org 0x318e0
    prints 0x65, 1
    prints dp, 1
    prints 131, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b2'): x=338, y=7, w=134, h=34, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x3194c
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="调平校准"
; text:
;   0: "调平校准"
;   1: "Level Calibrate"
;   2: "水平調整と校正"
;   3: "Nivellierung\rKalibrierung"
;   4: "Nivelación y\rcalibración"
;   5: "Nivellement\rétalonnage"
;   6: "Nivelamento\rCalibração"
;   7: "Calibrazione\rdel livello"
; touch_release reports to the host: page <page>, widget 132
; 032420:  ff ff                                            |..|

; touch_release
.org 0x3194c
    prints 0x65, 1
    prints dp, 1
    prints 132, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b4'): x=183, y=56, w=49, h=29, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x319b8
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 032474:  ff ff                                            |..|

; touch_release
.org 0x319b8
    prints 0x65, 1
    global_2c = 20
    wepo global_2c, 0
    dims = global_2c
    page dp
    down
    up

; object id 11 (button 'b5'): x=240, y=56, w=49, h=29, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x31a15
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0324c8:  ff ff                                            |..|

; touch_release
.org 0x31a15
    prints 0x65, 1
    global_2c = 40
    wepo global_2c, 0
    dims = global_2c
    page dp
    down
    up
    down
    up

; object id 12 (text 't0'): x=88, y=47, w=92, h=44, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="屏幕亮度"
; text:
;   0: "屏幕亮度"
;   1: "Screen \rBrightness"
;   2: "画面の明るさ"
;   3: "Bildschirm\rhelligkeit"
;   4: "Pantalla\rBrillo"
;   5: "Écran\rluminosité"
;   6: "Tela Brilho"
;   7: "Schermo\rLuminosità"

; object id 13 (button 'b6'): x=295, y=56, w=49, h=29, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x31a8c
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 032570:  ff ff                                            |..|

; touch_release
.org 0x31a8c
    prints 0x65, 1
    global_2c = 60
    wepo global_2c, 0
    dims = global_2c
    page dp
    down
    up

; object id 14 (button 'b7'): x=352, y=56, w=49, h=29, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x31ae9
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 0325c4:  ff ff                                            |..|

; touch_release
.org 0x31ae9
    prints 0x65, 1
    global_2c = 80
    wepo global_2c, 0
    dims = global_2c
    page dp
    down
    up

; object id 15 (button 'b8'): x=407, y=56, w=49, h=29, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x31b46
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; 032618:  ff ff                                            |..|

; touch_release
.org 0x31b46
    prints 0x65, 1
    global_2c = 100
    wepo global_2c, 0
    dims = global_2c
    page dp
    down
    up

; object id 16 (button 'b9'): x=183, y=100, w=49, h=29, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x31ba4
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="5分钟"
; text:
;   0: "5分钟"
;   1: "5min"
;   2: "5min"
;   3: "5min"
;   4: "5min"
;   5: "5min"
;   6: "5min"
;   7: "5min"
; 03266c:  ff ff                                            |..|

; touch_release
.org 0x31ba4
    prints 0x65, 1
    global_1c = 1
    global_18 = 300
    global_20 = global_18
    wepo global_1c, 4
    wepo global_18, 8
    page dp
    down
    up

; object id 17 (button 'b10'): x=240, y=100, w=49, h=29, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x31c1b
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="10分钟"
; text:
;   0: "10分钟"
;   1: "10min"
;   2: "10min"
;   3: "10min"
;   4: "10min"
;   5: "10min"
;   6: "10min"
;   7: "10min"
; 0326c0:  ff ff                                            |..|

; touch_release
.org 0x31c1b
    prints 0x65, 1
    global_1c = 1
    global_18 = 600
    global_20 = global_18
    wepo global_1c, 4
    wepo global_18, 8
    page dp
    down
    up

; object id 18 (button 'b11'): x=295, y=100, w=49, h=29, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x31c92
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="15分钟"
; text:
;   0: "15分钟"
;   1: "15min"
;   2: "15min"
;   3: "15min"
;   4: "15min"
;   5: "15min"
;   6: "15min"
;   7: "15min"
; 032714:  ff ff                                            |..|

; touch_release
.org 0x31c92
    prints 0x65, 1
    global_1c = 1
    global_18 = 900
    global_20 = global_18
    wepo global_1c, 4
    wepo global_18, 8
    page dp
    down
    up

; object id 19 (button 'b12'): x=352, y=100, w=49, h=29, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x31d09
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="30分钟"
; text:
;   0: "30分钟"
;   1: "30min"
;   2: "30min"
;   3: "30min"
;   4: "30min"
;   5: "30min"
;   6: "30min"
;   7: "30min"
; 032768:  ff ff                                            |..|

; touch_release
.org 0x31d09
    prints 0x65, 1
    global_1c = 1
    global_18 = 0x708
    global_20 = global_18
    wepo global_1c, 4
    wepo global_18, 8
    page dp
    down
    up

; object id 20 (button 'b13'): x=407, y=100, w=49, h=29, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x31d82
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="永久"
; text:
;   0: "永久"
;   1: "Ever"
;   2: "永続"
;   3: "Ever"
;   4: "Ever"
;   5: "Ever"
;   6: "Ever"
;   7: "Mai"
; 0327bc:  ff ff                                            |..|

; touch_release
.org 0x31d82
    prints 0x65, 1
    global_1c = 0
    global_18 = 0xffff
    global_20 = global_18
    wepo global_1c, 4
    wepo global_18, 8
    page dp
    down
    up
    down

; object id 21 (text 't1'): x=88, y=91, w=92, h=44, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="息屏"
; text:
;   0: "息屏"
;   1: "Breath \rScreen"
;   2: "息屏"
;   3: "Atem\rbildschirm"
;   4: "Interés\rPantalla"
;   5: "Intérêt Écran"
;   6: "Tela\rRespiração"
;   7: "Respiro\rSchermo"

; object id 22 (text 't2'): x=88, y=135, w=92, h=44, name hash=0x2cf7a429
; flags=0x37, aph=127, events: touch_press=0x31e0b, touch_release=0x31e21
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="语言选择"
; text:
;   0: "语言"
;   1: "Language"
;   2: "言語"
;   3: "Sprache"
;   4: "Idioma"
;   5: "Langue"
;   6: "Linguagem"
;   7: "Lingua"

; touch_press
.org 0x31e0b
    click b14, 1
    up

; touch_release
.org 0x31e21
    click b14, 0
    down

; object id 23 (text 't3'): x=88, y=181, w=312, h=36, name hash=0x5a98bf51
; flags=0x37, aph=127, events: touch_press=0x31e3d, touch_release=0x31e53
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="恢复出厂设置"
; text:
;   0: "恢复出厂设置"
;   1: "Factory Reset"
;   2: "リセット"
;   3: "Zurücksetzen"
;   4: "Reiniciar"
;   5: "Réinitialiser"
;   6: "Reiniciar"
;   7: "Ripristina"

; touch_press
.org 0x31e3d
    click b15, 1
    up

; touch_release
.org 0x31e53
    click b15, 0
    down

; object id 24 (text 't4'): x=346, y=139, w=92, h=36, name hash=0x1d54e28e
; flags=0x37, aph=127, events: touch_press=0x31e6f, touch_release=0x31e85
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
.org 0x31e6f
    click b14, 1
    up

; touch_release
.org 0x31e85
    click b14, 0
    down
    up

; object id 25 (button 'b16'): x=83, y=224, w=376, h=44, name hash=0xb7f90e98
; flags=0x37, aph=127, events: touch_release=0x31eab
; borderc=0x0000, picc=49, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2
; 032960:  ff ff                                            |..|

; touch_release
.org 0x31eab
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 26 (text 't5'): x=88, y=223, w=263, h=36, name hash=0x6b3bf9f6
; flags=0x37, aph=127, events: touch_press=0x31f0b, touch_release=0x31f21
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
.org 0x31f0b
    click b16, 1
    up

; touch_release
.org 0x31f21
    click b16, 0
    timer

; object id 27 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x31f3e
; tim=1000, en=1

; timer
.org 0x31f3e
    if global_1c <= 0 then jump lbl_31f9a
    if global_20 <= 0 then jump lbl_31f9a
    global_20--
    if global_20 != 0 then jump lbl_31f9a
    dim = global_30

lbl_31f9a:
    down
    up

; object id 28 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x31fb4

; touch_release
.org 0x31fb4
    global_20 = global_18
    dims = global_2c

; data after the object structs, 3891 bytes (21 trailing zero bytes dropped)
; 032a04:  00 00 00 00 00 c7 00 00 01 00 00 00 00 00 00 00  |................|
; 032a14:  74 1e 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 032a24:  00 00 00 00 00 00 00 00 e5 a3 b0 e9 9f b3 00 00  |................|
; 032a34:  00 00 7f 00 00 00 00 00 d7 ff d0 00 21 00 10 00  |............!...|
; 032a44:  f7 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 032a54:  ff ff 00 01 00 00 2c 01 a4 c8 00 00 01 00 00 00  |......,.........|
; 032a64:  e6 8e a7 e5 88 b6 00 00 58 59 5a e8 00 b4 00 00  |........XYZ.....|
; 032a74:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032a84:  00 00 00 00 00 00 7f 00 00 00 00 00 40 01 e4 00  |............@...|
; 032a94:  25 00 26 00 ba 01 09 01 00 00 00 00 03 00 00 00  |%.&.............|
; 032aa4:  00 01 00 00 ff ff 01 01 00 00 2c 01 d4 c9 00 00  |..........,.....|
; 032ab4:  00 00 00 00 00 00 00 00 3c 20 00 00 00 00 00 00  |........< ......|
; 032ac4:  00 00 00 00 00 00 00 00 e6 8c a4 e5 87 ba e6 9c  |................|
; 032ad4:  ba 00 a7 e5 00 b6 00 00 00 00 7f 00 00 00 00 00  |................|
; 032ae4:  5f 00 31 00 40 00 40 00 9e 00 70 00 00 00 00 00  |_.1.@.@...p.....|
; 032af4:  74 69 6d 65 6c 61 70 73 65 5f 5f 32 30 32 34 30  |timelapse__20240|
; 032b04:  33 31 34 5f 31 31 34 32 2e 6a 70 67 00 00 00 00  |314_1142.jpg....|
; 032b14:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 032b24:  df 00 31 00 40 00 40 00 1e 01 70 00 00 00 00 00  |..1.@.@...p.....|
; 032b34:  00 00 00 00 04 cc 00 00 00 22 00 00 00 00 00 00  |........."......|
; 032b44:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032b54:  00 00 00 00 00 00 00 00 e6 8d a2 e6 96 99 00 00  |................|
; 032b64:  5e 01 30 00 40 00 40 00 9d 01 6f 00 00 00 00 00  |^.0.@.@...o.....|
; 032b74:  00 00 ff 00 04 cd 00 00 3c 23 00 00 00 00 00 00  |........<#......|
; 032b84:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032b94:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 032ba4:  00 00 a1 00 00 00 40 00 9e 00 e0 00 00 00 00 00  |......@.........|
; 032bb4:  00 00 ff 00 04 ce 00 00 3c 24 00 00 00 00 00 00  |........<$......|
; 032bc4:  00 00 00 00 96 99 00 00 00 00 00 00 00 00 00 00  |................|
; 032bd4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 032be4:  df 00 a1 00 40 00 40 00 1e 01 e0 00 00 00 00 00  |....@.@.........|
; 032bf4:  00 00 ff 00 04 cf 00 00 3c 25 00 00 00 00 00 00  |........<%......|
; 032c04:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032c14:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 032c24:  00 01 a1 00 40 00 40 00 00 00 00 00 00 00 00 00  |....@.@.........|
; 032c34:  00 00 ff 00 04 d0 00 00 62 26 00 00 00 00 00 00  |........b&......|
; 032c44:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032c54:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 032c64:  9e 00 31 00 1c 00 1c 00 b9 00 4c 00 00 00 00 00  |..1.......L.....|
; 032c74:  00 00 00 00 e7 b3 bb e7 bb 9f 00 ff ff ff 01 01  |................|
; 032c84:  00 00 64 00 04 d1 00 00 74 69 6d 65 6c 61 70 73  |..d.....timelaps|
; 032c94:  65 5f 5f 32 30 32 34 30 33 31 34 5f 31 31 34 32  |e__20240314_1142|
; 032ca4:  2e 6d 70 34 00 00 00 00 00 00 00 00 00 00 7f 00  |.mp4............|
; 032cb4:  00 00 00 00 1f 01 31 00 1c 00 1c 00 3a 01 4c 00  |......1.....:.L.|
; 032cc4:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 032cd4:  ff ff 01 01 00 00 64 00 00 d1 00 00 e7 bd 91 e7  |......d.........|
; 032ce4:  bb 9c 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032cf4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032d04:  00 00 7f 00 00 00 00 00 9f 01 31 00 1c 00 1c 00  |..........1.....|
; 032d14:  ba 01 4c 00 00 00 00 00 00 00 00 00 00 00 10 00  |..L.............|
; 032d24:  10 00 ff ff ff ff 01 01 00 00 64 00 d4 d1 00 00  |..........d.....|
; 032d34:  01 00 00 00 62 29 00 00 00 00 00 00 00 00 00 00  |....b)..........|
; 032d44:  00 00 00 00 e8 b0 83 e5 b9 b3 e6 a0 a1 e5 87 86  |................|
; 032d54:  00 00 00 00 00 00 7f 00 00 00 00 00 9e 00 a2 00  |................|
; 032d64:  1c 00 1c 00 b9 00 bd 00 00 00 00 00 00 00 00 00  |................|
; 032d74:  00 00 10 00 10 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 032d84:  3c d2 00 00 01 00 00 00 62 2a 00 00 00 00 00 00  |<.......b*......|
; 032d94:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032da4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 032db4:  1f 01 a2 00 1c 00 1c 00 00 01 bd 00 00 00 00 00  |................|
; 032dc4:  00 00 00 00 00 00 10 00 10 00 ff ff ff ff 01 01  |................|
; 032dd4:  00 00 64 00 a4 d2 00 00 01 00 00 00 62 2b 00 00  |..d.........b+..|
; 032de4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032df4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 032e04:  00 00 00 00 9f 01 a2 00 1c 00 1c 00 ba 01 bd 00  |................|
; 032e14:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 032e24:  74 69 6d 65 6c 61 70 73 65 5f 5f 32 30 32 34 30  |timelapse__20240|
; 032e34:  33 31 34 5f 31 31 34 33 2e 6a 70 67 00 00 00 00  |314_1143.jpg....|
; 032e44:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 032e54:  05 2d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |.-..............|
; 032e64:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032e74:  00 00 00 00 00 00 00 00 e6 8c a4 e5 e5 b1 8f e5  |................|
; 032e84:  b9 95 e4 ba ae e5 ba a6 00 00 00 00 00 00 7f 00  |................|
; 032e94:  00 00 00 00 97 01 d5 00 45 00 36 00 db 01 0a 01  |........E.6.....|
; 032ea4:  00 00 00 00 00 00 00 00 00 00 16 00 18 00 ff ff  |................|
; 032eb4:  ff ff 01 01 00 00 64 00 84 55 00 00 01 00 00 00  |......d..U......|
; 032ec4:  00 02 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032ed4:  00 00 00 00 00 00 00 00 00 00 00 00 32 68 34 6d  |............2h4m|
; 032ee4:  00 00 00 00 00 00 00 00 74 00 32 00 0f 01 c8 00  |........t.2.....|
; 032ef4:  82 01 f9 00 00 00 00 00 03 01 02 00 00 00 00 00  |................|
; 032f04:  00 00 00 00 00 00 1a db bf 07 00 00 00 00 00 00  |................|
; 032f14:  4e 00 00 00 e0 02 00 00 c0 a0 00 00 71 07 01 00  |N...........q...|
; 032f24:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032f34:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 032f44:  00 00 00 00 a2 01 05 00 2d 00 1e 00 ce 01 22 00  |........-.....".|
; 032f54:  00 00 00 00 15 00 00 00 74 0a 01 00 00 00 00 00  |........t.......|
; 032f64:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 032f74:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 032f84:  9b 01 a6 00 21 00 1e 00 bb 01 c3 00 00 00 00 00  |....!...........|
; 032f94:  03 00 00 00 00 02 00 00 bf 07 02 01 00 00 2c 01  |..............,.|
; 032fa4:  ec 55 00 00 01 00 00 00 00 00 00 00 00 0b 01 00  |.U..............|
; 032fb4:  00 00 00 00 00 00 00 00 74 69 6d 65 6c 61 70 73  |........timelaps|
; 032fc4:  65 5f 5f 32 30 32 34 30 33 31 34 5f 31 31 34 33  |e__20240314_1143|
; 032fd4:  2e 6d 70 34 00 01 5a 00 21 00 1e 00 ba 01 77 00  |.mp4..Z.!.....w.|
; 032fe4:  00 00 00 00 03 00 00 00 00 02 00 00 1a db 02 01  |................|
; 032ff4:  00 00 2c 01 1c 57 00 00 01 00 00 00 00 00 00 00  |..,..W..........|
; 033004:  74 0c 01 00 00 00 00 00 00 00 00 00 34 6d 00 00  |t...........4m..|
; 033014:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033024:  00 00 7f 00 00 00 00 00 bb 01 5a 00 21 00 1e 00  |..........Z.!...|
; 033034:  db 01 77 00 00 00 00 00 03 00 00 00 00 02 00 00  |..w.............|
; 033044:  1a db 00 01 00 00 2c 01 4c 58 00 00 01 00 00 00  |......,.LX......|
; 033054:  00 00 00 00 74 0d 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 033064:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033074:  00 00 00 00 00 00 7f 00 00 00 00 00 00 01 a6 00  |................|
; 033084:  21 00 1e 00 dc 01 c3 00 00 00 00 00 03 00 00 00  |!...............|
; 033094:  00 02 00 00 bf 07 00 01 00 00 2c 01 7c 59 00 00  |..........,.|Y..|
; 0330a4:  01 00 00 00 00 00 00 00 62 09 01 00 00 00 00 00  |........b.......|
; 0330b4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0330c4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0330d4:  bb 01 d6 00 24 00 35 00 de 01 0a 01 00 00 00 00  |....$.5.........|
; 0330e4:  00 00 00 00 35 e5 88 86 e9 92 9f 00 ff ff 01 01  |....5...........|
; 0330f4:  00 00 64 00 ac 5a 00 00 01 00 00 00 62 0a 01 00  |..d..Z......b...|
; 033104:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033114:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 033124:  00 00 00 00 bc 01 a0 00 24 00 35 00 df 01 d4 00  |........$.5.....|
; 033134:  00 00 00 00 00 00 00 00 00 00 1e 00 e6 96 87 e4  |................|
; 033144:  bb b6 e5 90 8d 00 64 00 14 5b 00 00 31 30 e5 88  |......d..[..10..|
; 033154:  86 e9 92 9f 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033164:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033174:  00 00 7f 00 00 00 00 00 bc 01 2e 00 24 00 35 00  |............$.5.|
; 033184:  df 01 62 00 00 00 00 00 00 00 00 00 00 00 1e 00  |..b.............|
; 033194:  48 00 ff ff ff ff 01 01 00 00 64 00 7c 5b 00 00  |H.........d.|[..|
; 0331a4:  01 00 00 00 62 2e 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 0331b4:  00 00 00 00 31 35 e5 88 86 e9 92 9f 00 b6 e5 90  |....15..........|
; 0331c4:  8d 00 00 00 00 00 7f 00 00 00 00 00 42 00 07 00  |............B...|
; 0331d4:  89 00 22 00 ca 00 28 00 00 00 00 00 00 00 00 00  |.."...(.........|
; 0331e4:  00 00 1b 00 1c 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 0331f4:  e4 5b 00 00 01 00 00 00 62 2f 01 00 00 00 00 00  |.[......b/......|
; 033204:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033214:  00 00 00 00 00 00 00 00 00 00 7f 00 33 30 e5 88  |............30..|
; 033224:  86 e9 92 9f 00 00 22 00 52 01 28 00 00 00 00 00  |......".R.(.....|
; 033234:  00 00 00 00 00 00 1b 00 1c 00 ff ff ff ff 01 01  |................|
; 033244:  00 00 64 00 4c 5c 00 00 01 00 00 00 62 30 01 00  |..d.L\......b0..|
; 033254:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033264:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 033274:  00 00 00 00 51 01 07 00 89 00 22 00 d9 01 28 00  |....Q....."...(.|
; 033284:  00 00 00 00 e6 b0 b8 e4 b9 85 00 00 1c 00 ff ff  |................|
; 033294:  ff ff 01 01 00 00 64 00 b4 5c 00 00 01 00 00 00  |......d..\......|
; 0332a4:  62 04 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0332b4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0332c4:  00 00 7f 00 00 00 00 00 42 00 07 00 89 00 22 00  |........B.....".|
; 0332d4:  ca 00 28 00 00 00 00 00 00 00 00 00 00 00 1b 00  |..(.............|
; 0332e4:  1c 00 ff ff ff ff 01 01 00 00 64 00 e6 81 af e5  |..........d.....|
; 0332f4:  b1 8f 00 00 62 05 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 033304:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033314:  00 00 00 00 00 00 7f 00 00 00 00 00 ca 00 07 00  |................|
; 033324:  89 00 22 00 52 01 28 00 00 00 00 00 00 00 00 00  |..".R.(.........|
; 033334:  00 00 1b 00 1c 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 033344:  84 5d 00 00 01 00 00 00 62 06 01 00 00 00 00 00  |.]......b.......|
; 033354:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033364:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 033374:  51 01 07 00 89 00 22 00 d9 01 28 00 00 00 00 00  |Q....."...(.....|
; 033384:  00 00 00 00 00 00 1b 00 1c 00 ff ff ff ff 01 01  |................|
; 033394:  00 00 64 00 ec 5d 00 00 01 00 00 00 62 04 01 00  |..d..]......b...|
; 0333a4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0333b4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0333c4:  00 00 00 00 42 00 07 00 89 00 22 00 ca 00 28 00  |....B....."...(.|
; 0333d4:  00 00 00 00 00 00 00 00 00 00 19 00 1a 00 ff ff  |................|
; 0333e4:  ff ff 01 01 00 00 64 00 54 5e 00 00 01 00 00 00  |......d.T^......|
; 0333f4:  62 05 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 033404:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033414:  00 00 7f 00 00 00 00 00 ca 00 07 00 e8 af ad e8  |................|
; 033424:  a8 80 e9 80 89 e6 8b a9 00 00 00 00 00 00 19 00  |................|
; 033434:  1a 00 ff ff ff ff 01 01 00 00 64 00 bc 5e 00 00  |..........d..^..|
; 033444:  01 00 00 00 62 06 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 033454:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033464:  00 00 00 00 00 00 7f 00 00 00 00 00 51 01 07 00  |............Q...|
; 033474:  89 00 22 00 32 68 34 6d 00 00 00 00 00 00 00 00  |..".2h4m........|
; 033484:  00 00 1b 00 1c 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 033494:  24 5f 00 00 01 00 00 00 62 0b 01 00 00 00 00 00  |$_......b.......|
; 0334a4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0334b4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0334c4:  42 00 07 00 89 00 22 00 ca 00 28 00 00 00 00 00  |B....."...(.....|
; 0334d4:  00 00 00 00 00 00 50 00 51 00 ff ff ff ff 01 01  |......P.Q.......|
; 0334e4:  00 00 64 00 8c 5f 00 00 01 00 00 00 62 0c 01 00  |..d.._......b...|
; 0334f4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033504:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 033514:  00 00 00 00 ca 00 07 00 89 00 22 00 52 01 28 00  |..........".R.(.|
; 033524:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 033534:  ff ff 01 01 00 00 64 00 f4 5f 00 00 01 00 00 00  |......d.._......|
; 033544:  62 0d 01 00 00 00 00 00 00 00 00 00 e6 81 a2 e5  |b...............|
; 033554:  a4 8d e5 87 ba e5 8e 82 e8 ae be e7 bd ae 00 00  |................|
; 033564:  00 00 7f 00 00 00 00 00 51 01 07 00 89 00 22 00  |........Q.....".|
; 033574:  d9 01 28 00 00 00 00 00 00 00 00 00 00 00 50 00  |..(...........P.|
; 033584:  51 00 ff ff ff ff 01 01 00 00 64 00 5c 60 00 00  |Q.........d.\`..|
; 033594:  01 00 00 00 62 16 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 0335a4:  00 00 00 00 34 6d 00 00 00 00 00 00 00 00 00 00  |....4m..........|
; 0335b4:  00 00 00 00 00 00 7f 00 00 00 00 00 ba 01 9f 00  |................|
; 0335c4:  26 00 38 00 df 01 d6 00 00 00 00 00 00 00 00 00  |&.8.............|
; 0335d4:  00 00 1e 00 48 00 ff ff ff ff 01 01 00 00 64 00  |....H.........d.|
; 0335e4:  c4 60 00 00 01 00 00 00 62 17 01 00 00 00 00 00  |.`......b.......|
; 0335f4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033604:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 033614:  bb 01 d6 00 24 00 37 00 de 01 0c 01 00 00 00 00  |....$.7.........|
; 033624:  00 00 00 00 00 00 1e 00 48 00 ff ff ff ff 01 01  |........H.......|
; 033634:  00 00 64 00 2c 61 00 00 01 00 00 00 74 05 01 00  |..d.,a......t...|
; 033644:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033654:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 033664:  00 00 00 00 54 01 90 00 32 00 1a 00 85 01 a9 00  |....T...2.......|
; 033674:  00 00 00 00 03 00 00 00 00 00 00 00 e4 b8 ad e6  |................|
; 033684:  96 87 00 01 94 61 00 00 01 00 00 00 00 00 00 00  |.....a..........|
; 033694:  74 06 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 0336a4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0336b4:  00 00 7f 00 00 00 00 00 a4 01 90 00 32 00 1a 00  |............2...|
; 0336c4:  d5 01 a9 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 0336d4:  ff ff 00 01 e6 96 87 e4 bb b6 e5 90 8d 00 00 00  |................|
; 0336e4:  00 00 00 00 74 09 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 0336f4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033704:  00 00 00 00 00 00 7f 00 00 00 00 00 79 00 35 00  |............y.5.|
; 033714:  58 01 22 00 d0 01 56 00 00 00 00 00 03 00 00 00  |X."...V.........|
; 033724:  00 00 00 00 ff ff 01 01 00 00 2c 01 f4 63 00 00  |..........,..c..|
; 033734:  01 00 00 00 00 00 00 00 74 0e 01 00 00 00 00 00  |........t.......|
; 033744:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033754:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 033764:  e8 01 ae 00 6f 00 1a 00 56 02 c7 00 00 00 00 00  |....o...V.......|
; 033774:  03 00 00 00 00 00 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 033784:  24 65 00 00 01 00 00 00 00 00 00 00 62 0f 01 00  |$e..........b...|
; 033794:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0337a4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0337b4:  00 00 00 00 42 00 07 00 89 00 22 00 ca 00 28 00  |....B....."...(.|
; 0337c4:  00 00 00 00 00 00 00 00 00 00 19 00 1a 00 ff ff  |................|
; 0337d4:  ff ff 01 01 00 00 64 00 54 66 00 00 01 00 00 00  |......d.Tf......|
; 0337e4:  62 10 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0337f4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033804:  00 00 7f 00 00 00 00 00 ca 00 07 00 89 00 22 00  |..............".|
; 033814:  52 01 28 00 e7 89 88 e6 9c ac 00 00 00 00 19 00  |R.(.............|
; 033824:  1a 00 ff ff ff ff 01 01 00 00 64 00 bc 66 00 00  |..........d..f..|
; 033834:  01 00 00 00 62 11 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 033844:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 033854:  00 00 00 00 00 00 7f 00 00 00 00 00 51 01 07 00  |............Q...|
; 033864:  89 00 22 00 d9 01 28 00 00 00 00 00 32 68 34 6d  |.."...(.....2h4m|
; 033874:  00 00 19 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 033884:  24 67 00 00 01 00 00 00 74 01 01 00 00 00 00 00  |$g......t.......|
; 033894:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0338a4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0338b4:  11 00 0e 00 0f 01 22 00 1f 01 2f 00 00 00 00 00  |......".../.....|
; 0338c4:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 0338d4:  8c 67 00 00 01 00 00 00 00 00 00 00 74 02 01 00  |.g..........t...|
; 0338e4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0338f4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 033904:  00 00 00 00 25 00 4a 00 55 00 15 00 79 00 5e 00  |....%.J.U...y.^.|
; 033914:  00 00 00 00 03 00 00 00 00 02 00 00 ff ff 00 01  |................|
; 033924:  00 00 2c 01 bc 68 00 00 01 00 00 00 00 00 00 00  |..,..h..........|
; 033934:  74 03 01                                         |t..|
