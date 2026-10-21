; page 45 'fan': 19 objects

; object address table, 19 objects, block loaded at 0xb950
.dd 0xb99c, 0xb9dc, 0xba30, 0xba84, 0xbad8, 0xbb2c, 0xbb80, 0xbbd4
.dd 0xbc28, 0xbc7c, 0x2490, 0x24e4, 0x2534, 0x2588, 0xbcd0, 0xbcf0
.dd 0xbd10, 0x25dc, 0xbd64

; object id 0 (page 'fan'): x=0, y=0, w=480, h=272, name hash=0xb34c73f8
; flags=0x37, aph=127, events: event_3=0x3029e
; sta=2, pic=46
; 0309a2:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3029e
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x31466
    ref 10
    ref 14
    ref 15
    if global_14 != 0 then jump lbl_314cc
    local_4047 = "模型风扇"
    local_4122 = "声音"
    jmp lbl_316d8

lbl_314cc:
    if global_14 != 1 then jump lbl_31513
    local_4047 = "Model Fan"
    local_4122 = "sound"
    jmp lbl_316d8

lbl_31513:
    if global_14 != 2 then jump lbl_31561
    local_4047 = "モデルファン"
    local_4122 = "音"
    jmp lbl_316d8

lbl_31561:
    if global_14 != 3 then jump lbl_315ad
    local_4047 = "Modell Lüfter"
    local_4122 = "Klang"
    T 0x12b

lbl_315ad:
    if global_14 != 4 then jump lbl_315fd
    local_4047 = "Ventilador Modelo"
    local_4122 = "sonido"
    jmp lbl_316d8

lbl_315fd:
    if global_14 != 5 then jump lbl_3164c
    local_4047 = "Modèle Ventilateur"
    local_4122 = "son"
    jmp lbl_316d8

lbl_3164c:
    if global_14 != 6 then jump lbl_31692
    local_4047 = "Modelo fã"
    local_4122 = "som"
    jmp lbl_316d8

lbl_31692:
    if global_14 != 7 then jump lbl_316d8
    local_4047 = "Ventilatore Modello"
    local_4122 = "suono"

lbl_316d8:
    if global_14 != 0 then jump lbl_3170b
    local_4174 = "换料"
    jmp lbl_318b5

lbl_3170b:
    if global_14 != 1 then jump lbl_31748
    local_4174 = "Change Materials"
    jmp lbl_318b5

lbl_31748:
    if global_14 != 2 then jump lbl_3178a
    local_4174 = "素材を変更する"
    T 0x12b

lbl_3178a:
    if global_14 != 3 then jump lbl_317c8
    local_4174 = "Material wechseln"
    jmp lbl_318b5

lbl_317c8:
    if global_14 != 4 then jump lbl_31805
    local_4174 = "Cambiar material"
    jmp lbl_318b5

lbl_31805:
    if global_14 != 5 then jump lbl_31846
    local_4174 = "Changer de matériel"
    jmp lbl_318b5

lbl_31846:
    if global_14 != 6 then jump lbl_31883
    local_4174 = "Alterar material"
    jmp lbl_318b5

lbl_31883:
    if global_14 != 7 then jump lbl_318b5
    local_4174 = "Cambia materiale"

lbl_318b5:
    if global_14 != 0 then jump lbl_3190f
    local_3f2c = "XYZ轴"
    local_3f55 = "挤出机"
    local_3f7e = "控制"
    jmp lbl_31b9c

lbl_3190f:
    if global_14 != 1 then jump lbl_3196b
    local_3f2c = "XYZ axis"
    local_3f55 = "Extruder"
    local_3f7e = "Control"
    jmp lbl_31b9c

lbl_3196b:
    if global_14 != 2 then jump lbl_319d1
    local_3f2c = "XYZ軸"
    local_3f55 = "押出機"
    local_3f7e = "コントロール"
    jmp lbl_31b9c

lbl_319d1:
    if global_14 != 3 then jump lbl_31a30
    local_3f2c = "XYZ-Achse"
    local_3f55 = "Extruder"
    local_3f7e = "Kontrolle"
    jmp lbl_31b9c

lbl_31a30:
    if global_14 != 4 then jump lbl_31a8b
    local_3f2c = "Eje XYZ"
    local_3f55 = "Extrusor"
    local_3f7e = "Control"
    jmp lbl_31b9c

lbl_31a8b:
    if global_14 != 5 then jump lbl_31aea
    local_3f2c = "Axe XYZ"
    local_3f55 = "Extrudeuse"
    local_3f7e = "Contrôle"
    jmp lbl_31b9c

lbl_31aea:
    if global_14 != 6 then jump lbl_31b48
    local_3f2c = "Asse XYZ"
    local_3f55 = "Extrusora"
    local_3f7e = "Controle"
    jmp lbl_31b9c

lbl_31b48:
    if global_14 != 7 then jump lbl_31b9c
    local_3f2c = "Asse XYZ"
    local_3f55 = "Estrusore"
    local_3f7e = "Controllo"

lbl_31b9c:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x302e4
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 0309f2:  ff ff                                            |..|

; touch_release
.org 0x302e4
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b0'): x=67, y=6, w=124, h=35, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x30350
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="XYZ轴"
; text:
;   0: "XYZ轴"
;   1: "XYZ axis"
;   2: "XYZ軸"
;   3: "XYZ-Achse"
;   4: "Eje XYZ"
;   5: "Axe XYZ"
;   6: "Asse XYZ"
;   7: "Asse XYZ"
; touch_release reports to the host: page <page>, widget 120
; 030a46:  ff ff                                            |..|

; touch_release
.org 0x30350
    prints 0x65, 1
    prints dp, 1
    prints 120, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b1'): x=208, y=6, w=124, h=35, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x303bc
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="挤出机"
; text:
;   0: "挤出机"
;   1: "Extruder"
;   2: "押出機"
;   3: "Extruder"
;   4: "Extrusor"
;   5: "Extrudeuse"
;   6: "Extrusora"
;   7: "Estrusore"
; touch_release reports to the host: page <page>, widget 121
; 030a9a:  ff ff                                            |..|

; touch_release
.org 0x303bc
    prints 0x65, 1
    prints dp, 1
    prints 121, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b2'): x=349, y=6, w=124, h=35, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x30428
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="控制"
; text:
;   0: "控制"
;   1: "Control"
;   2: "コントロール"
;   3: "Kontrolle"
;   4: "Control"
;   5: "Contrôle"
;   6: "Controle"
;   7: "Controllo"
; touch_release reports to the host: page <page>, widget 122
; 030aee:  ff ff                                            |..|

; touch_release
.org 0x30428
    prints 0x65, 1
    prints dp, 1
    prints 122, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x30494
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 030b42:  ff ff                                            |..|

; touch_release
.org 0x30494
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x30500
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 030b96:  ff ff                                            |..|

; touch_release
.org 0x30500
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b103'): x=0, y=210, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x3056c
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 030bea:  ff ff                                            |..|

; touch_release
.org 0x3056c
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

; object id 8 (text 't0'): x=86, y=51, w=136, h=38, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="LED"

; object id 9 (text 't5'): x=86, y=139, w=217, h=34, name hash=0x6b3bf9f6
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="模型风扇"
; text:
;   0: "模型风扇"
;   1: "Model Fan"
;   2: "モデルファン"
;   3: "Modell Lüfter"
;   4: "Ventilador Modelo"
;   5: "Modèle Ventilateur"
;   6: "Modelo fã"
;   7: "Ventilatore Modello"

; object id 266 (slider 'h1'): x=84, y=167, w=370, h=18, name hash=0x59b36879

; touch_release
.org 0x3060c
    prints 0x71, 1
    prints dp, 1
    prints 1, 1
    prints local_4070, 2
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

; object id 267 (number 'n1'): x=338, y=139, w=100, h=34, name hash=0x6f16a94

; object id 268 (text 't1'): x=440, y=139, w=14, h=34, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="%"

; object id 269 (button 'b3'): x=404, y=54, w=57, h=33, name hash=0x54ab59be
; borderc=0x0000, picc=46, picc2=46, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0x306c5
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 14 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x30726
; tim=1000, en=1

; timer
.org 0x30726
    if global_1c <= 0 then jump lbl_30782
    if global_20 <= 0 then jump lbl_30782
    global_20--
    if global_20 != 0 then jump lbl_30782
    dim = global_30

lbl_30782:
    down
    up

; object id 15 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3079c

; touch_release
.org 0x3079c
    global_20 = global_18
    dims = global_2c
    down
    up
    down
    up

; object id 16 (text 't2'): x=86, y=95, w=136, h=38, name hash=0x2cf7a429
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="声音"
; text:
;   0: "声音"
;   1: "sound"
;   2: "音"
;   3: "Klang"
;   4: "sonido"
;   5: "son"
;   6: "som"
;   7: "suono"

; object id 273 (button 'b4'): x=402, y=101, w=57, h=33, name hash=0x13670461
; borderc=0x0000, picc=47, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x307ee
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 18 (button 'b5'): x=84, y=225, w=370, h=30, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x30858
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=0, txt="换料"
; text:
;   0: "换料"
;   1: "Change Materials"
;   2: "素材を変更する"
;   3: "Material wechseln"
;   4: "Cambiar material"
;   5: "Changer de matériel"
;   6: "Alterar material"
;   7: "Cambia materiale"
; touch_release reports to the host: page <page>, widget 3
; 030d7a:  ff ff                                            |..|

; touch_release
.org 0x30858
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 1742 bytes (10 trailing zero bytes dropped)
; 030d8a:  00 00 00 00 00 00 ff ff ff ff 01 01 00 00 0a 00  |................|
; 030d9a:  18 c1 00 00 01 00 00 00 62 0d 00 00 00 00 00 00  |........b.......|
; 030daa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 030dba:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 030dca:  80 00 d8 00 33 00 32 00 b2 00 09 01 00 00 00 00  |....3.2.........|
; 030dda:  00 00 00 00 00 01 26 00 27 00 ff ff ff ff 01 01  |......&.'.......|
; 030dea:  00 00 0a 00 24 c1 00 00 01 00 00 00 58 59 5a e8  |....$.......XYZ.|
; 030dfa:  bd b4 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 030e0a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 030e1a:  00 00 00 00 b9 00 d8 00 33 00 32 00 eb 00 09 01  |........3.2.....|
; 030e2a:  00 00 00 00 00 00 00 00 00 01 26 00 27 00 ff ff  |..........&.'...|
; 030e3a:  ff ff 01 01 00 00 0a 00 30 c1 00 00 01 00 00 00  |........0.......|
; 030e4a:  62 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 030e5a:  00 00 00 00 e6 8c a4 e5 87 ba e6 9c ba 00 00 00  |................|
; 030e6a:  00 00 7f 00 00 00 00 00 f3 00 d8 00 33 00 32 00  |............3.2.|
; 030e7a:  25 01 09 01 00 00 00 00 00 00 00 00 00 01 26 00  |%.............&.|
; 030e8a:  27 00 ff ff ff ff 01 01 00 00 0a 00 3c c1 00 00  |'...........<...|
; 030e9a:  01 00 00 00 62 10 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 030eaa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 030eba:  00 00 00 00 00 00 7f 00 00 00 00 00 e6 8e a7 e5  |................|
; 030eca:  88 b6 00 00 5e 01 09 01 00 00 00 00 00 00 00 00  |....^...........|
; 030eda:  00 01 26 00 27 00 ff ff ff ff 01 01 00 00 0a 00  |..&.'...........|
; 030eea:  48 c1 00 00 01 00 00 00 74 11 00 00 00 00 00 00  |H.......t.......|
; 030efa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 030f0a:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 030f1a:  cc 00 0a 00 3a 00 16 00 05 01 1f 00 00 00 00 00  |....:...........|
; 030f2a:  03 00 00 00 00 00 00 00 00 f8 00 01 00 00 64 00  |..............d.|
; 030f3a:  54 c1 00 00 01 00 00 00 00 00 00 00 74 12 00 00  |T...........t...|
; 030f4a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 030f5a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 030f6a:  00 00 00 00 2d 01 0b 00 3b 00 16 00 67 01 20 00  |....-...;...g. .|
; 030f7a:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 030f8a:  00 00 64 00 bc c1 00 00 01 00 00 00 00 00 00 00  |..d.............|
; 030f9a:  34 13 00 00 01 00 0a 00 24 c2 00 00 00 00 00 00  |4.......$.......|
; 030faa:  34 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |4...............|
; 030fba:  34 15 00 00 00 00 00 00 00 00 00 00 03 00 00 00  |4...............|
; 030fca:  34 16 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |4...............|
; 030fda:  74 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 030fea:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 030ffa:  00 00 7f 00 00 00 00 00 01 00 0a 00 c6 00 16 00  |................|
; 03100a:  c6 00 1f 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 03101a:  ff ff 02 01 00 00 64 00 30 c2 00 00 01 00 00 00  |......d.0.......|
; 03102a:  00 00 00 00 33 18 00 00 00 00 00 00 00 00 00 00  |....3...........|
; 03103a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03104a:  e8 03 01 00 05 19 00 00 00 00 00 00 00 00 00 00  |................|
; 03105a:  00 00 00 00 00 00 00 00 00 00 00 00 4c 45 44 00  |............LED.|
; 03106a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03107a:  00 00 00 00 00 00 00 00 00 00 7f 00 e9 80 9f e5  |................|
; 03108a:  00 a6 2b 00 7b 00 26 00 bb 00 09 01 00 00 00 00  |..+.{.&.........|
; 03109a:  03 00 00 00 00 01 00 00 00 ff 01 01 00 00 2c 01  |..............,.|
; 0310aa:  00 00 00 00 00 00 00 00 00 00 00 00 00 18 00 00  |................|
; 0310ba:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0310ca:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0310da:  00 00 00 00 00 00 9d 00 7e 00 6f 00 e5 86 8d e6  |........~.o.....|
; 0310ea:  00 a1 e6 89 93 e5 8d b0 00 00 1a 00 00 00 ff ff  |................|
; 0310fa:  ff ff 01 01 e5 85 a8 e9 00 a8 e5 9b 9e e9 9b b6  |................|
; 03110a:  00 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03111a:  00 00 00 00 00 00 00 00 00 00 00 00 30 7e 36 30  |............0~60|
; 03112a:  00 00 7f 00 00 00 00 00 14 ff d0 00 32 00 10 00  |............2...|
; 03113a:  45 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |E...............|
; 03114a:  ff ff 00 01 00 00 00 00 28 d9 00 00 01 00 00 00  |........(.......|
; 03115a:  00 00 00 00 74 1a 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 03116a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03117a:  00 00 00 00 00 00 7f 00 00 00 00 00 00 ff d0 00  |................|
; 03118a:  21 00 10 00 30 00 df 00 00 00 00 00 e6 a8 a1 e5  |!...0...........|
; 03119a:  9e 8b e9 a3 8e e6 89 87 00 00 2c 01 58 da 00 00  |..........,.X...|
; 0311aa:  01 00 00 00 00 00 00 00 74 1b 00 00 00 00 00 00  |........t.......|
; 0311ba:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0311ca:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0311da:  c1 00 e4 00 7b 00 26 00 3b 01 09 01 00 00 00 00  |....{.&.;.......|
; 0311ea:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 0311fa:  88 db 00 00 00 00 00 00 e5 8f af e8 be 93 e5 85  |................|
; 03120a:  a5 e8 8c 83 e5 9b b4 00 00 00 00 00 00 00 00 00  |................|
; 03121a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03122a:  00 00 00 00 3f 01 9d 00 7e 00 6f 00 00 01 0b 01  |....?...~.o.....|
; 03123a:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 03124a:  ff ff 01 01 00 00 64 00 b8 dc 00 00 00 00 00 00  |......d.........|
; 03125a:  74 1d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 03126a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03127a:  00 00 7f 00 00 00 00 00 93 ff d0 00 32 00 10 00  |............2...|
; 03128a:  c4 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 03129a:  ff ff 00 01 00 00 2c 01 20 dd 00 00 01 00 00 00  |......,. .......|
; 0312aa:  00 00 00 00 74 1e 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 0312ba:  00 00 00 00 00 00 00 00 00 00 00 00 e5 a3 b0 e9  |................|
; 0312ca:  9f b3 00 00 00 00 7f 00 00 00 00 00 d7 ff d0 00  |................|
; 0312da:  21 00 10 00 f7 ff df 00 00 00 00 00 03 00 00 00  |!...............|
; 0312ea:  00 01 00 00 ff ff 00 01 00 00 2c 01 50 de 00 00  |..........,.P...|
; 0312fa:  01 00 00 00 00 00 00 00 74 1f 00 00 58 59 5a e8  |........t...XYZ.|
; 03130a:  bd b4 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03131a:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03132a:  40 01 e4 00 7b 00 26 00 ba 01 09 01 00 00 00 00  |@...{.&.........|
; 03133a:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 03134a:  80 df 00 00 00 00 00 00 00 00 00 00 3c 20 00 00  |............< ..|
; 03135a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03136a:  00 00 00 00 e6 8e a7 e5 88 b6 00 00 00 00 7f 00  |................|
; 03137a:  00 00 00 00 5f 00 31 00 40 00 40 00 9e 00 70 00  |...._.1.@.@...p.|
; 03138a:  00 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 03139a:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6a 70 67  |0240314_1142.jpg|
; 0313aa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0313ba:  00 00 00 00 df 00 31 00 40 00 40 00 1e 01 70 00  |......1.@.@...p.|
; 0313ca:  00 00 00 00 00 00 ff 00 b0 e1 00 00 00 22 00 00  |............."..|
; 0313da:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0313ea:  00 00 00 00 00 00 00 00 00 00 00 00 e6 8d a2 e6  |................|
; 0313fa:  96 99 00 00 5e 01 30 00 40 00 40 00 9d 01 6f 00  |....^.0.@.@...o.|
; 03140a:  00 00 00 00 00 00 ff 00 b0 e2 00 00 3c 23 00 00  |............<#..|
; 03141a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03142a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03143a:  00 00 00 00 00 00 a1 00 40 00 40 00 9e 00 e0 00  |........@.@.....|
; 03144a:  00 00 00 00 00 00 ff 00 b0 e3 00 00 3c 24        |............<$|
