; page 22 'operate': 29 objects

; object address table, 29 objects, block loaded at 0xa3a4
.dd 0xa418, 0xa458, 0xa4ac, 0xa500, 0x1cb0, 0x1d04, 0x1d58, 0x1dac
.dd 0x1e00, 0x1e54, 0x1ea8, 0xa554, 0x1efc, 0xa5a8, 0xa5fc, 0x1f50
.dd 0xa650, 0xa6a4, 0x1fa4, 0xa6f8, 0xa74c, 0x1ff8, 0xa7a0, 0xa7c0
.dd 0xa7d0, 0x204c, 0xa7e0, 0xa834, 0xa854

; object id 0 (page 'operate'): x=0, y=0, w=480, h=272, name hash=0x735949d
; flags=0x37, aph=127, events: event_3=0x1d2a5
; sta=2, pic=36
; 01e043:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1d2a5
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    down
    up

; load
.org 0x1eb47
    ref 21
    ref 22
    ref 27
    ref 28
    if global_14 != 0 then jump lbl_1ec14
    local_2610 = "微调"
    local_27fa = "流量-"
    local_284a = "流量+"
    local_2873 = "速度-"
    local_28c3 = "速度+"
    local_2983 = "换料"
    local_25e9 = "模型风扇"
    jmp lbl_1f120

lbl_1ec14:
    if global_14 != 1 then jump lbl_1ecbe
    local_2610 = "Adjust"
    local_27fa = "Flow-"
    local_284a = "Flow+"
    local_2873 = "Speed-"
    local_28c3 = "Speed+"
    local_2983 = "Change materials"
    local_25e9 = "Model Fan"
    jmp lbl_1f120

lbl_1ecbe:
    if global_14 != 2 then jump lbl_1ed8b
    local_2610 = "微調整"
    local_27fa = "流れ-"
    local_284a = "流れ+"
    local_2873 = "スピード-"
    local_28c3 = "スピード+"
    local_2983 = "素材を変更する"
    local_25e9 = "モデルファン"
    jmp lbl_1f120

lbl_1ed8b:
    if global_14 != 3 then jump lbl_1ee45
    local_2610 = "Anpassen"
    local_27fa = "Verkehr -"
    local_284a = "Verkehr +"
    local_2873 = "Speed-"
    local_28c3 = "Speed+"
    local_2983 = "Material wechseln"
    local_25e9 = "Modell Lüfter"
    jmp lbl_1f120

lbl_1ee45:
    if global_14 != 4 then jump lbl_1ef04
    local_2610 = "Ajustar"
    local_27fa = "Tráfico-"
    local_284a = "Tráfico+"
    local_2873 = "Rapidez-"
    local_28c3 = "Rapidez+"
    local_2983 = "Cambiar material"
    local_25e9 = "Ventilador Modelo"
    jmp lbl_1f120

lbl_1ef04:
    if global_14 != 5 then jump lbl_1efc9
    local_2610 = "Ajuster"
    local_27fa = "Trafic -"
    local_284a = "Trafic +"
    local_2873 = "vitesse -"
    local_28c3 = "vitesse +"
    local_2983 = "Changer de matériel"
    local_25e9 = "Modèle Ventilateur"
    jmp lbl_1f120

lbl_1efc9:
    if global_14 != 6 then jump lbl_1f075
    local_2610 = "Ajustar"
    local_27fa = "Flow-"
    local_284a = "Flow+"
    local_2873 = "Speed-"
    local_28c3 = "Speed+"
    local_2983 = "Change materials"
    local_25e9 = "Modelo fã"
    jmp lbl_1f120

lbl_1f075:
    if global_14 != 7 then jump lbl_1f120
    local_2610 = "Regolare"
    local_27fa = "Flow-"
    local_284a = "Flow+"
    local_2873 = "Speed-"
    local_28c3 = "Speed+"
    local_2983 = "Change materials"
    local_25e9 = "Ventilatore Modello"

lbl_1f120:
    doevents
    down
    up

; object id 1 (text 't5'): x=17, y=190, w=278, h=34, name hash=0x6b3bf9f6
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

; object id 2 (text 't0'): x=48, y=11, w=148, h=34, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="微调"
; text:
;   0: "微调"
;   1: "Adjust"
;   2: "微調整"
;   3: "Anpassen"
;   4: "Ajustar"
;   5: "Ajuster"
;   6: "Ajustar"
;   7: "Regolare"

; object id 3 (button 'b0'): x=5, y=7, w=44, h=41, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1d31f
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 01e13b:  ff ff                                            |..|

; touch_release
.org 0x1d31f
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 260 (button 'b1'): x=14, y=53, w=65, h=29, name hash=0xb8756f4e
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0x1d389
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 261 (button 'b2'): x=82, y=53, w=65, h=29, name hash=0x22c442c6
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x1d3f3
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 262 (button 'b3'): x=150, y=53, w=65, h=29, name hash=0x54ab59be
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0x1d45d
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 263 (button 'b4'): x=242, y=53, w=53, h=29, name hash=0x13670461
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0x1d4c7
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 264 (button 'b5'): x=299, y=53, w=53, h=29, name hash=0x65081f19
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0x1d531
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 265 (button 'b6'): x=355, y=53, w=53, h=29, name hash=0xffb93291
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 8

; touch_release
.org 0x1d59b
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 266 (button 'b7'): x=412, y=53, w=53, h=29, name hash=0x89d629e9
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 9

; touch_release
.org 0x1d605
    prints 0x65, 1
    prints dp, 1
    prints 9, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 11 (button 'b8'): x=13, y=94, w=71, h=38, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x1d66f
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 01e18f:  ff ff                                            |..|

; touch_release
.org 0x1d66f
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 268 (text 't1'): x=82, y=94, w=65, h=38, name hash=0xb64689a1
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="5mm"

; object id 13 (button 'b9'): x=145, y=94, w=70, h=38, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x1d6f3
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 5
; 01e1e3:  ff ff                                            |..|

; touch_release
.org 0x1d6f3
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 14 (button 'b10'): x=252, y=93, w=70, h=38, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x1d75d
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="流量-"
; text:
;   0: "流量-"
;   1: "Flow-"
;   2: "流れ-"
;   3: "Verkehr -"
;   4: "Tráfico-"
;   5: "Trafic -"
;   6: "Flow-"
;   7: "Flow-"
; touch_release reports to the host: page <page>, widget 10
; 01e237:  ff ff                                            |..|

; touch_release
.org 0x1d75d
    prints 0x65, 1
    prints dp, 1
    prints 10, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 271 (text 't2'): x=321, y=92, w=65, h=40, name hash=0x2cf7a429
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100%"

; object id 16 (button 'b11'): x=384, y=93, w=70, h=38, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x1d7e2
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="流量+"
; text:
;   0: "流量+"
;   1: "Flow+"
;   2: "流れ+"
;   3: "Verkehr +"
;   4: "Tráfico+"
;   5: "Trafic +"
;   6: "Flow+"
;   7: "Flow+"
; touch_release reports to the host: page <page>, widget 11
; 01e28b:  ff ff                                            |..|

; touch_release
.org 0x1d7e2
    prints 0x65, 1
    prints dp, 1
    prints 11, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 17 (button 'b12'): x=252, y=147, w=70, h=38, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x1d84d
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="速度-"
; text:
;   0: "速度-"
;   1: "Speed-"
;   2: "スピード-"
;   3: "Speed-"
;   4: "Rapidez-"
;   5: "vitesse -"
;   6: "Speed-"
;   7: "Speed-"
; touch_release reports to the host: page <page>, widget 12
; 01e2df:  ff ff                                            |..|

; touch_release
.org 0x1d84d
    prints 0x65, 1
    prints dp, 1
    prints 12, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 274 (text 't3'): x=321, y=146, w=65, h=40, name hash=0x5a98bf51
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100%"

; object id 19 (button 'b13'): x=384, y=147, w=70, h=38, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x1d8d2
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="速度+"
; text:
;   0: "速度+"
;   1: "Speed+"
;   2: "スピード+"
;   3: "Speed+"
;   4: "Rapidez+"
;   5: "vitesse +"
;   6: "Speed+"
;   7: "Speed+"
; touch_release reports to the host: page <page>, widget 13
; 01e333:  ff ff                                            |..|

; touch_release
.org 0x1d8d2
    prints 0x65, 1
    prints dp, 1
    prints 13, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 20 (text 't6'): x=446, y=194, w=14, h=34, name hash=0xf18ad47e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="%"

; object id 277 (slider 'h0'): x=15, y=222, w=448, h=18, name hash=0x2fdc7301

; touch_release
.org 0x1d957
    prints 0x71, 1
    prints dp, 1
    prints 14, 1
    prints local_2913, 2
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    slide
    timer

; object id 22 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27, events: timer=0x1d9d4
; tim=100, en=1

; timer
.org 0x1d9d4
    if local_293d != 1 then jump lbl_1da53
    local_265b = local_25c6+1
    local_265c = local_25c6+1
    local_2684 = local_25c6
    local_2685 = local_25c6
    local_26ad = local_25c6
    local_26ae = local_25c6
    jmp lbl_1db48

lbl_1da53:
    if local_293d != 10 then jump lbl_1dad3
    local_265b = local_25c6
    local_265c = local_25c6
    local_2684 = local_25c6+1
    local_2685 = local_25c6+1
    local_26ad = local_25c6
    local_26ae = local_25c6
    jmp lbl_1db48

lbl_1dad3:
    if local_293d != 50 then jump lbl_1db48
    local_265b = local_25c6
    local_265c = local_25c6
    local_2684 = local_25c6
    local_2685 = local_25c6
    local_26ad = local_25c6+1
    local_26ae = local_25c6+1

lbl_1db48:
    if local_2932 != 1 then jump lbl_1dbe5
    local_26d6 = local_25c6+1
    local_26d7 = local_25c6+1
    local_26ff = local_25c6
    local_2700 = local_25c6
    local_2728 = local_25c6
    local_2729 = local_25c6
    local_2751 = local_25c6
    local_2752 = local_25c6
    jmp lbl_1ddb3

lbl_1dbe5:
    if local_2932 != 5 then jump lbl_1dc82
    local_26d6 = local_25c6
    local_26d7 = local_25c6
    local_26ff = local_25c6+1
    local_2700 = local_25c6+1
    local_2728 = local_25c6
    local_2729 = local_25c6
    local_2751 = local_25c6
    local_2752 = local_25c6
    jmp lbl_1ddb3

lbl_1dc82:
    if local_2932 != 10 then jump lbl_1dd20
    local_26d6 = local_25c6
    local_26d7 = local_25c6
    local_26ff = local_25c6
    local_2700 = local_25c6
    local_2728 = local_25c6+1
    local_2729 = local_25c6+1
    local_2751 = local_25c6
    local_2752 = local_25c6
    jmp lbl_1ddb3

lbl_1dd20:
    if local_2932 != 25 then jump lbl_1ddb3
    local_26d6 = local_25c6
    local_26d7 = local_25c6
    local_26ff = local_25c6
    local_2700 = local_25c6
    local_2728 = local_25c6
    local_2729 = local_25c6
    local_2751 = local_25c6+1
    local_2752 = local_25c6+1

lbl_1ddb3:
    down
    up
    down
    up

; object id 23 (variable 'percent_step'): x=0, y=0, w=1, h=1, name hash=0x4c7f9017
; sta=0, val=0
; 01e3b7:  34 17 00 07                                      |4...|

; object id 24 (variable 'zoffset_step'): x=0, y=0, w=1, h=1, name hash=0xd62fd013
; sta=0, val=0
; 01e3c7:  34 18 00 07                                      |4...|

; object id 281 (number 'n0'): x=344, y=194, w=100, h=34, name hash=0x709e71ec

; object id 26 (button 'b14'): x=15, y=147, w=200, h=38, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x1ddef
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="换料"
; text:
;   0: "换料"
;   1: "Change materials"
;   2: "素材を変更する"
;   3: "Material wechseln"
;   4: "Cambiar material"
;   5: "Changer de matériel"
;   6: "Change materials"
;   7: "Change materials"
; touch_release reports to the host: page <page>, widget 15
; 01e41b:  ff ff                                            |..|

; touch_release
.org 0x1ddef
    prints 0x65, 1
    prints dp, 1
    prints 15, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 27 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1de51
; tim=1000, en=1

; timer
.org 0x1de51
    if global_1c <= 0 then jump lbl_1dead
    if global_20 <= 0 then jump lbl_1dead
    global_20--
    if global_20 != 0 then jump lbl_1dead
    dim = global_30

lbl_1dead:
    down
    up

; object id 28 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1dec7

; touch_release
.org 0x1dec7
    global_20 = global_18
    dims = global_2c

; data after the object structs, 1747 bytes (5 trailing zero bytes dropped)
; 01e46b:  00 00 00 00 e6 a8 a1 e5 9e 8b e9 a3 8e e6 89 87  |................|
; 01e47b:  00 89 93 e5 8d b0 00 00 00 00 00 00 00 00 00 00  |................|
; 01e48b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01e49b:  00 00 00 00 52 00 88 00 40 01 2d 00 91 01 b4 00  |....R...@.-.....|
; 01e4ab:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 01e4bb:  00 00 00 00 40 b1 00 00 01 00 00 00 00 00 00 00  |....@...........|
; 01e4cb:  62 13 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01e4db:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e4eb:  00 00 7f 00 00 00 00 00 a0 01 88 00 1d 00 2c 00  |..............,.|
; 01e4fb:  bc 01 b3 00 00 00 00 00 00 00 00 00 00 00 50 00  |..............P.|
; 01e50b:  51 00 ff ff ff ff 01 01 00 00 64 00 70 b2 00 00  |Q.........d.p...|
; 01e51b:  01 00 00 00 74 14 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 01e52b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e53b:  00 00 00 00 00 00 7f 00 00 00 00 00 52 00 b5 00  |............R...|
; 01e54b:  72 61 6d 2f 31 37 36 2e 6a 70 67 00 03 00 00 00  |ram/176.jpg.....|
; 01e55b:  00 01 00 00 ff ff 00 01 00 00 2c 01 d8 b2 00 00  |..........,.....|
; 01e56b:  01 00 00 00 00 00 00 00 62 15 00 00 00 00 00 00  |........b.......|
; 01e57b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e58b:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01e59b:  a0 01 b5 00 e5 be ae e8 b0 83 00 00 00 00 00 00  |................|
; 01e5ab:  00 00 00 00 00 00 50 00 51 00 ff ff ff ff 01 01  |......P.Q.......|
; 01e5bb:  00 00 64 00 08 b4 00 00 01 00 00 00 62 18 00 00  |..d.........b...|
; 01e5cb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e5db:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01e5eb:  00 00 00 00 41 00 e1 00 7c 01 2d 00 bc 01 0d 01  |....A...|.-.....|
; 01e5fb:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 01e60b:  ff ff 01 01 00 00 64 00 70 b4 00 00 01 00 00 00  |......d.p.......|
; 01e61b:  74 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01e62b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e63b:  00 00 7f 00 00 00 00 00 52 00 e2 00 40 01 2d 00  |........R...@.-.|
; 01e64b:  00 00 00 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 01e65b:  ff ff 00 01 00 00 2c 01 d8 b4 00 00 01 00 00 00  |......,.........|
; 01e66b:  00 00 00 00 62 1a 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01e67b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e68b:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 e2 00  |................|
; 01e69b:  1d 00 2c 00 bc 01 0d 01 00 00 00 00 00 00 00 00  |..,.............|
; 01e6ab:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 01e6bb:  08 b6 00 00 01 00 00 00 00 00 00 00 00 ff 00 01  |................|
; 01e6cb:  00 00 2c 01 00 c0 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 01e6db:  74 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01e6eb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e6fb:  00 00 7f 00 00 00 00 00 41 00 e4 00 7b 00 26 00  |........A...{.&.|
; 01e70b:  bb 00 09 01 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 01e71b:  ff ff 01 01 00 00 2c 01 e4 c1 00 00 00 00 00 00  |......,.........|
; 01e72b:  00 00 00 00 00 18 00 00 00 00 00 00 00 00 00 00  |................|
; 01e73b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e74b:  00 00 00 00 00 00 7f 00 00 00 00 00 c0 00 9d 00  |................|
; 01e75b:  7e 00 6f 00 3d 01 0b 01 00 00 00 00 00 00 00 00  |~.o.=...........|
; 01e76b:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01e77b:  14 c3 00 00 01 00 00 00 74 19 00 00 00 00 00 00  |........t.......|
; 01e78b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e79b:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01e7ab:  14 ff d0 00 32 00 10 00 45 ff df 00 00 00 00 00  |....2...E.......|
; 01e7bb:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01e7cb:  7c c3 00 00 01 00 00 00 00 00 00 00 74 1a 00 00  ||...........t...|
; 01e7db:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e7eb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01e7fb:  00 00 00 00 00 ff d0 00 21 00 10 00 e6 b5 81 e9  |........!.......|
; 01e80b:  87 8f 2d 00 03 00 00 00 00 01 00 00 ff ff 00 01  |..-.............|
; 01e81b:  00 00 2c 01 ac c4 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 01e82b:  74 1b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01e83b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e84b:  00 00 7f 00 00 00 00 00 c1 00 e4 00 7b 00 26 00  |............{.&.|
; 01e85b:  3b 01 09 01 00 00 00 00 03 00 00 00 00 01 00 00  |;...............|
; 01e86b:  ff ff 01 01 e6 b5 81 e9 87 8f 2b 00 00 00 00 00  |..........+.....|
; 01e87b:  00 00 00 00 62 1c 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01e88b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e89b:  00 00 00 00 00 00 7f 00 00 00 00 00 3f 01 9d 00  |............?...|
; 01e8ab:  7e 00 6f 00 bc 01 0b 01 00 00 00 00 00 00 00 00  |~.o.............|
; 01e8bb:  00 00 1a 00 1a 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 01e8cb:  0c c7 00 00 00 00 00 00 74 1d 00 00 e9 80 9f e5  |........t.......|
; 01e8db:  ba a6 2d 00 00 00 00 00 00 00 00 00 00 00 00 00  |..-.............|
; 01e8eb:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01e8fb:  93 ff d0 00 32 00 10 00 c4 ff df 00 00 00 00 00  |....2...........|
; 01e90b:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01e91b:  74 c7 00 00 01 00 00 00 00 00 00 00 74 1e 00 00  |t...........t...|
; 01e92b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e93b:  00 00 00 00 e9 80 9f e5 ba a6 2b 00 00 00 7f 00  |..........+.....|
; 01e94b:  00 00 00 00 d7 ff d0 00 21 00 10 00 f7 ff df 00  |........!.......|
; 01e95b:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 01e96b:  00 00 2c 01 a4 c8 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 01e97b:  74 1f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01e98b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e99b:  00 00 7f 00 00 00 00 00 40 01 e4 00 25 00 26 00  |........@...%.&.|
; 01e9ab:  ba 01 09 01 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 01e9bb:  ff ff 01 01 00 00 2c 01 d4 c9 00 00 00 00 00 00  |......,.........|
; 01e9cb:  00 00 00 00 3c 20 00 00 00 00 00 00 00 00 00 00  |....< ..........|
; 01e9db:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e9eb:  00 00 00 00 00 00 7f 00 00 00 00 00 5f 00 31 00  |............_.1.|
; 01e9fb:  40 00 40 00 9e 00 70 00 00 00 00 00 74 69 6d 65  |@.@...p.....time|
; 01ea0b:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 01ea1b:  31 31 34 32 2e 6a 70 67 00 00 00 00 00 00 00 00  |1142.jpg........|
; 01ea2b:  00 00 00 00 00 00 7f 00 00 00 00 00 df 00 31 00  |..............1.|
; 01ea3b:  40 00 40 00 1e 01 70 00 00 00 00 00 00 00 ff 00  |@.@...p.........|
; 01ea4b:  04 cc 00 00 3c 22 00 00 00 00 00 00 00 00 00 00  |....<"..........|
; 01ea5b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ea6b:  00 00 00 00 00 00 7f 00 00 00 00 00 5e 01 30 00  |............^.0.|
; 01ea7b:  40 00 40 00 9d 01 6f 00 00 00 00 00 00 00 ff 00  |@.@...o.........|
; 01ea8b:  04 cd 00 00 3c 23 00 00 00 00 00 00 00 00 00 00  |....<#..........|
; 01ea9b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01eaab:  00 00 00 00 00 00 7f 00 00 00 00 00 5f 00 a1 00  |............_...|
; 01eabb:  40 00 40 00 9e 00 e0 00 00 00 00 00 00 00 ff 00  |@.@.............|
; 01eacb:  04 ce 00 00 3c 24 00 00 00 00 00 00 e6 8d a2 e6  |....<$..........|
; 01eadb:  96 99 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01eaeb:  00 00 00 00 00 00 7f 00 00 00 00 00 df 00 a1 00  |................|
; 01eafb:  40 00 40 00 1e 01 e0 00 00 00 00 00 00 00 ff 00  |@.@.............|
; 01eb0b:  04 cf 00 00 3c 25 00 00 00 00 00 00 00 00 00 00  |....<%..........|
; 01eb1b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01eb2b:  00 00 00 00 00 00 7f 00 00 00 00 00 00 01 a1 00  |................|
; 01eb3b:  40 00 40                                         |@.@|
