; page 45 'fan': 19 objects

; object address table, 19 objects, block loaded at 0xa3a4
.dd 0xa3f0, 0xa430, 0xa484, 0xa4d8, 0xa52c, 0xa580, 0xa5d4, 0xa628
.dd 0xa67c, 0xa6d0, 0x23e4, 0x2438, 0x2488, 0x24dc, 0xa724, 0xa744
.dd 0xa764, 0x2530, 0xa7b8

; object id 0 (page 'fan'): x=0, y=0, w=480, h=272, name hash=0xb34c73f8
; flags=0x37, aph=127, events: event_3=0x2eea2
; sta=2, pic=46
; 02f5a6:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2eea2
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x3006a
    ref 10
    ref 14
    ref 15
    if global_14 != 0 then jump lbl_300d0
    local_404e = "模型风扇"
    local_4129 = "声音"
    jmp lbl_302dc

lbl_300d0:
    if global_14 != 1 then jump lbl_30117
    local_404e = "Model Fan"
    local_4129 = "sound"
    jmp lbl_302dc

lbl_30117:
    if global_14 != 2 then jump lbl_30165
    local_404e = "モデルファン"
    local_4129 = "音"
    jmp lbl_302dc

lbl_30165:
    if global_14 != 3 then jump lbl_301b1
    local_404e = "Modell Lüfter"
    local_4129 = "Klang"
    T 0x12b

lbl_301b1:
    if global_14 != 4 then jump lbl_30201
    local_404e = "Ventilador Modelo"
    local_4129 = "sonido"
    jmp lbl_302dc

lbl_30201:
    if global_14 != 5 then jump lbl_30250
    local_404e = "Modèle Ventilateur"
    local_4129 = "son"
    jmp lbl_302dc

lbl_30250:
    if global_14 != 6 then jump lbl_30296
    local_404e = "Modelo fã"
    local_4129 = "som"
    jmp lbl_302dc

lbl_30296:
    if global_14 != 7 then jump lbl_302dc
    local_404e = "Ventilatore Modello"
    local_4129 = "suono"

lbl_302dc:
    if global_14 != 0 then jump lbl_3030f
    local_417b = "换料"
    jmp lbl_304b9

lbl_3030f:
    if global_14 != 1 then jump lbl_3034c
    local_417b = "Change Materials"
    jmp lbl_304b9

lbl_3034c:
    if global_14 != 2 then jump lbl_3038e
    local_417b = "素材を変更する"
    T 0x12b

lbl_3038e:
    if global_14 != 3 then jump lbl_303cc
    local_417b = "Material wechseln"
    jmp lbl_304b9

lbl_303cc:
    if global_14 != 4 then jump lbl_30409
    local_417b = "Cambiar material"
    jmp lbl_304b9

lbl_30409:
    if global_14 != 5 then jump lbl_3044a
    local_417b = "Changer de matériel"
    jmp lbl_304b9

lbl_3044a:
    if global_14 != 6 then jump lbl_30487
    local_417b = "Alterar material"
    jmp lbl_304b9

lbl_30487:
    if global_14 != 7 then jump lbl_304b9
    local_417b = "Cambia materiale"

lbl_304b9:
    if global_14 != 0 then jump lbl_30513
    local_3f33 = "XYZ轴"
    local_3f5c = "挤出机"
    local_3f85 = "控制"
    jmp lbl_307a0

lbl_30513:
    if global_14 != 1 then jump lbl_3056f
    local_3f33 = "XYZ axis"
    local_3f5c = "Extruder"
    local_3f85 = "Control"
    jmp lbl_307a0

lbl_3056f:
    if global_14 != 2 then jump lbl_305d5
    local_3f33 = "XYZ軸"
    local_3f5c = "押出機"
    local_3f85 = "コントロール"
    jmp lbl_307a0

lbl_305d5:
    if global_14 != 3 then jump lbl_30634
    local_3f33 = "XYZ-Achse"
    local_3f5c = "Extruder"
    local_3f85 = "Kontrolle"
    jmp lbl_307a0

lbl_30634:
    if global_14 != 4 then jump lbl_3068f
    local_3f33 = "Eje XYZ"
    local_3f5c = "Extrusor"
    local_3f85 = "Control"
    jmp lbl_307a0

lbl_3068f:
    if global_14 != 5 then jump lbl_306ee
    local_3f33 = "Axe XYZ"
    local_3f5c = "Extrudeuse"
    local_3f85 = "Contrôle"
    jmp lbl_307a0

lbl_306ee:
    if global_14 != 6 then jump lbl_3074c
    local_3f33 = "Asse XYZ"
    local_3f5c = "Extrusora"
    local_3f85 = "Controle"
    jmp lbl_307a0

lbl_3074c:
    if global_14 != 7 then jump lbl_307a0
    local_3f33 = "Asse XYZ"
    local_3f5c = "Estrusore"
    local_3f85 = "Controllo"

lbl_307a0:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x2eee8
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 02f5f6:  ff ff                                            |..|

; touch_release
.org 0x2eee8
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b0'): x=67, y=6, w=124, h=35, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2ef54
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
; 02f64a:  ff ff                                            |..|

; touch_release
.org 0x2ef54
    prints 0x65, 1
    prints dp, 1
    prints 120, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b1'): x=208, y=6, w=124, h=35, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x2efc0
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
; 02f69e:  ff ff                                            |..|

; touch_release
.org 0x2efc0
    prints 0x65, 1
    prints dp, 1
    prints 121, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b2'): x=349, y=6, w=124, h=35, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x2f02c
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
; 02f6f2:  ff ff                                            |..|

; touch_release
.org 0x2f02c
    prints 0x65, 1
    prints dp, 1
    prints 122, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x2f098
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 02f746:  ff ff                                            |..|

; touch_release
.org 0x2f098
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x2f104
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 02f79a:  ff ff                                            |..|

; touch_release
.org 0x2f104
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b103'): x=0, y=210, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x2f170
; borderc=0x0000, picc=46, picc2=47, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 02f7ee:  ff ff                                            |..|

; touch_release
.org 0x2f170
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
.org 0x2f210
    prints 0x71, 1
    prints dp, 1
    prints 1, 1
    prints local_4077, 2
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
.org 0x2f2c9
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 14 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2f32a
; tim=1000, en=1

; timer
.org 0x2f32a
    if global_1c <= 0 then jump lbl_2f386
    if global_20 <= 0 then jump lbl_2f386
    global_20--
    if global_20 != 0 then jump lbl_2f386
    dim = global_30

lbl_2f386:
    down
    up

; object id 15 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2f3a0

; touch_release
.org 0x2f3a0
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
.org 0x2f3f2
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 18 (button 'b5'): x=84, y=225, w=370, h=30, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x2f45c
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
; 02f97e:  ff ff                                            |..|

; touch_release
.org 0x2f45c
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 1742 bytes (10 trailing zero bytes dropped)
; 02f98e:  00 00 00 00 00 00 ff ff ff ff 01 01 00 00 0a 00  |................|
; 02f99e:  6c ab 00 00 01 00 00 00 62 0d 00 00 00 00 00 00  |l.......b.......|
; 02f9ae:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02f9be:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02f9ce:  80 00 d8 00 33 00 32 00 b2 00 09 01 00 00 00 00  |....3.2.........|
; 02f9de:  00 00 00 00 00 01 26 00 27 00 ff ff ff ff 01 01  |......&.'.......|
; 02f9ee:  00 00 0a 00 78 ab 00 00 01 00 00 00 58 59 5a e8  |....x.......XYZ.|
; 02f9fe:  bd b4 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fa0e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02fa1e:  00 00 00 00 b9 00 d8 00 33 00 32 00 eb 00 09 01  |........3.2.....|
; 02fa2e:  00 00 00 00 00 00 00 00 00 01 26 00 27 00 ff ff  |..........&.'...|
; 02fa3e:  ff ff 01 01 00 00 0a 00 84 ab 00 00 01 00 00 00  |................|
; 02fa4e:  62 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02fa5e:  00 00 00 00 e6 8c a4 e5 87 ba e6 9c ba 00 00 00  |................|
; 02fa6e:  00 00 7f 00 00 00 00 00 f3 00 d8 00 33 00 32 00  |............3.2.|
; 02fa7e:  25 01 09 01 00 00 00 00 00 00 00 00 00 01 26 00  |%.............&.|
; 02fa8e:  27 00 ff ff ff ff 01 01 00 00 0a 00 90 ab 00 00  |'...............|
; 02fa9e:  01 00 00 00 62 10 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02faae:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fabe:  00 00 00 00 00 00 7f 00 00 00 00 00 e6 8e a7 e5  |................|
; 02face:  88 b6 00 00 5e 01 09 01 00 00 00 00 00 00 00 00  |....^...........|
; 02fade:  00 01 26 00 27 00 ff ff ff ff 01 01 00 00 0a 00  |..&.'...........|
; 02faee:  9c ab 00 00 01 00 00 00 74 11 00 00 00 00 00 00  |........t.......|
; 02fafe:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fb0e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02fb1e:  cc 00 0a 00 3a 00 16 00 05 01 1f 00 00 00 00 00  |....:...........|
; 02fb2e:  03 00 00 00 00 00 00 00 00 f8 00 01 00 00 64 00  |..............d.|
; 02fb3e:  a8 ab 00 00 01 00 00 00 00 00 00 00 74 12 00 00  |............t...|
; 02fb4e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fb5e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02fb6e:  00 00 00 00 2d 01 0b 00 3b 00 16 00 67 01 20 00  |....-...;...g. .|
; 02fb7e:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 02fb8e:  00 00 64 00 10 ac 00 00 01 00 00 00 00 00 00 00  |..d.............|
; 02fb9e:  34 13 00 00 01 00 0a 00 78 ac 00 00 00 00 00 00  |4.......x.......|
; 02fbae:  34 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |4...............|
; 02fbbe:  34 15 00 00 00 00 00 00 00 00 00 00 03 00 00 00  |4...............|
; 02fbce:  34 16 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |4...............|
; 02fbde:  74 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 02fbee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fbfe:  00 00 7f 00 00 00 00 00 01 00 0a 00 c6 00 16 00  |................|
; 02fc0e:  c6 00 1f 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 02fc1e:  ff ff 02 01 00 00 64 00 84 ac 00 00 01 00 00 00  |......d.........|
; 02fc2e:  00 00 00 00 33 18 00 00 00 00 00 00 00 00 00 00  |....3...........|
; 02fc3e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fc4e:  e8 03 01 00 05 19 00 00 00 00 00 00 00 00 00 00  |................|
; 02fc5e:  00 00 00 00 00 00 00 00 00 00 00 00 4c 45 44 00  |............LED.|
; 02fc6e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fc7e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02fc8e:  00 00 e4 00 7b 00 26 00 bb 00 09 01 00 83 ad e5  |....{.&.........|
; 02fc9e:  ba 8a e6 b8 a9 e5 ba a6 00 ff 01 01 00 00 2c 01  |..............,.|
; 02fcae:  e4 c1 00 00 00 00 00 00 00 00 00 00 00 18 00 00  |................|
; 02fcbe:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fcce:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02fcde:  00 00 00 00 00 00 9d 00 7e 00 6f 00 3d 01 0b 01  |........~.o.=...|
; 02fcee:  00 00 00 00 00 00 00 00 00 00 1a 00 00 00 ff ff  |................|
; 02fcfe:  ff ff 01 01 e5 85 a8 e9 00 a8 e5 9b 9e e9 9b b6  |................|
; 02fd0e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fd1e:  00 00 00 00 00 00 00 00 00 00 00 00 30 7e 33 30  |............0~30|
; 02fd2e:  30 00 7f 00 00 00 00 00 14 ff d0 00 32 00 10 00  |0...........2...|
; 02fd3e:  45 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |E...............|
; 02fd4e:  ff ff 00 01 00 00 2c 01 7c c3 00 00 01 00 00 00  |......,.|.......|
; 02fd5e:  00 00 00 00 74 1a 00 00 00 00 00 00 00 86 8d e6  |....t...........|
; 02fd6e:  ac a1 e6 89 93 e5 8d b0 00 00 00 00 00 00 00 00  |................|
; 02fd7e:  00 00 00 00 00 00 7f 00 00 00 00 00 00 ff d0 00  |................|
; 02fd8e:  21 00 10 00 30 00 81 e9 87 8f 2d 00 e6 a8 a1 e5  |!...0.....-.....|
; 02fd9e:  9e 8b e9 a3 8e e6 89 87 00 00 2c 01 ac c4 00 00  |..........,.....|
; 02fdae:  01 00 00 00 00 00 00 00 74 1b 00 00 00 00 00 00  |........t.......|
; 02fdbe:  00 00 00 00 00 00 00 00 00 00 00 00 e6 8c a4 e5  |................|
; 02fdce:  87 ba 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02fdde:  c1 00 e4 00 7b 00 26 00 3b 01 09 01 00 00 00 00  |....{.&.;.......|
; 02fdee:  03 00 00 00 00 01 00 00 ff ff 01 01 00 b5 81 e9  |................|
; 02fdfe:  87 8f 2b 00 00 00 00 00 e5 8f af e8 be 93 e5 85  |..+.............|
; 02fe0e:  a5 e8 8c 83 e5 9b b4 00 00 00 00 00 00 00 00 00  |................|
; 02fe1e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02fe2e:  00 00 00 00 e5 9b 9e e9 80 80 00 00 00 01 0b 01  |................|
; 02fe3e:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 02fe4e:  ff ff 01 01 00 00 64 00 0c c7 00 00 00 00 00 00  |......d.........|
; 02fe5e:  74 1d 00 00 e9 80 9f e5 ba a6 2d 00 00 00 00 00  |t.........-.....|
; 02fe6e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02fe7e:  00 00 7f 00 00 00 00 00 93 ff d0 00 32 00 10 00  |............2...|
; 02fe8e:  c4 ff df 00 00 00 00 00 03 00 00 00 58 59 5a e8  |............XYZ.|
; 02fe9e:  bd b4 00 01 00 00 2c 01 74 c7 00 00 01 00 00 00  |......,.t.......|
; 02feae:  00 00 00 00 74 1e 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 02febe:  00 00 00 00 00 00 00 00 00 00 00 00 e5 a3 b0 e9  |................|
; 02fece:  9f b3 00 00 00 00 7f 00 00 00 00 00 d7 ff d0 00  |................|
; 02fede:  21 00 10 00 f7 ff df 00 00 00 00 00 03 00 00 00  |!...............|
; 02feee:  00 01 00 00 ff ff 00 01 00 00 2c 01 a4 c8 00 00  |..........,.....|
; 02fefe:  01 00 00 00 e6 8e a7 e5 88 b6 00 00 58 59 5a e8  |............XYZ.|
; 02ff0e:  bd b4 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ff1e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02ff2e:  40 01 e4 00 25 00 26 00 ba 01 09 01 00 00 00 00  |@...%.&.........|
; 02ff3e:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 02ff4e:  d4 c9 00 00 00 00 00 00 00 00 00 00 3c 20 00 00  |............< ..|
; 02ff5e:  00 00 00 00 00 00 00 00 00 00 00 00 e6 8c a4 e5  |................|
; 02ff6e:  87 ba e6 9c ba 00 a7 e5 88 b6 00 00 00 00 7f 00  |................|
; 02ff7e:  00 00 00 00 5f 00 31 00 40 00 40 00 9e 00 70 00  |...._.1.@.@...p.|
; 02ff8e:  00 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 02ff9e:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6a 70 67  |0240314_1142.jpg|
; 02ffae:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02ffbe:  00 00 00 00 df 00 31 00 40 00 40 00 1e 01 70 00  |......1.@.@...p.|
; 02ffce:  00 00 00 00 00 00 00 00 04 cc 00 00 00 22 00 00  |............."..|
; 02ffde:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ffee:  00 00 00 00 00 00 00 00 00 00 00 00 e6 8d a2 e6  |................|
; 02fffe:  96 99 00 00 5e 01 30 00 40 00 40 00 9d 01 6f 00  |....^.0.@.@...o.|
; 03000e:  00 00 00 00 00 00 ff 00 04 cd 00 00 3c 23 00 00  |............<#..|
; 03001e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03002e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03003e:  00 00 00 00 00 00 a1 00 40 00 40 00 9e 00 e0 00  |........@.@.....|
; 03004e:  00 00 00 00 00 00 ff 00 04 ce 00 00 3c 24        |............<$|
