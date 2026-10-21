; page 37 'move': 28 objects

; object address table, 28 objects, block loaded at 0xb950
.dd 0xb9c0, 0xba00, 0xba54, 0xbaa8, 0xbafc, 0xbb50, 0xbba4, 0xbbf8
.dd 0xbc4c, 0x22ec, 0xbca0, 0x2340, 0x2394, 0x23e8, 0xbcf4, 0xbd48
.dd 0xbd9c, 0xbdf0, 0xbe44, 0xbe98, 0xbeec, 0xbf40, 0xbf94, 0xbfe8
.dd 0xc008, 0x243c, 0xc018, 0xc038

; object id 0 (page 'move'): x=0, y=0, w=480, h=272, name hash=0x4229b906
; flags=0x37, aph=127, events: event_3=0x292ae
; sta=2, pic=40
; 02a0b4:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x292ae
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x2ae74
    ref 23
    ref 26
    ref 27
    if global_14 != 0 then jump lbl_2aec8
    local_33d0 = "全部回零"
    jmp lbl_2b050

lbl_2aec8:
    if global_14 != 1 then jump lbl_2aefd
    local_33d0 = "Home All"
    jmp lbl_2b050

lbl_2aefd:
    if global_14 != 2 then jump lbl_2af3f
    local_33d0 = "みんな家に帰る"
    jmp lbl_2b050

lbl_2af3f:
    if global_14 != 3 then jump lbl_2af78
    local_33d0 = "Zuhause Alle"
    jmp lbl_2b050

lbl_2af78:
    if global_14 != 4 then jump lbl_2afae
    local_33d0 = "Casa Todo"
    jmp lbl_2b050

lbl_2afae:
    if global_14 != 5 then jump lbl_2afec
    local_33d0 = "à la maison tout"
    jmp lbl_2b050

lbl_2afec:
    if global_14 != 6 then jump lbl_2b022
    local_33d0 = "Casa Tudo"
    jmp lbl_2b050

lbl_2b022:
    if global_14 != 7 then jump lbl_2b050
    local_33d0 = "A Casa Tutti"

lbl_2b050:
    if global_14 != 0 then jump lbl_2b0aa
    local_349d = "XYZ轴"
    local_36d9 = "挤出机"
    local_34ed = "控制"
    jmp lbl_2b337

lbl_2b0aa:
    if global_14 != 1 then jump lbl_2b106
    local_349d = "XYZ axis"
    local_36d9 = "Extruder"
    local_34ed = "Control"
    jmp lbl_2b337

lbl_2b106:
    if global_14 != 2 then jump lbl_2b16c
    local_349d = "XYZ軸"
    local_36d9 = "押出機"
    local_34ed = "コントロール"
    jmp lbl_2b337

lbl_2b16c:
    if global_14 != 3 then jump lbl_2b1cb
    local_349d = "XYZ-Achse"
    local_36d9 = "Extruder"
    local_34ed = "Kontrolle"
    jmp lbl_2b337

lbl_2b1cb:
    if global_14 != 4 then jump lbl_2b226
    local_349d = "Eje XYZ"
    local_36d9 = "Extrusor"
    local_34ed = "Control"
    jmp lbl_2b337

lbl_2b226:
    if global_14 != 5 then jump lbl_2b285
    local_349d = "Axe XYZ"
    local_36d9 = "Extrudeuse"
    local_34ed = "Contrôle"
    jmp lbl_2b337

lbl_2b285:
    if global_14 != 6 then jump lbl_2b2e3
    local_349d = "Asse XYZ"
    local_36d9 = "Extrusora"
    local_34ed = "Controle"
    jmp lbl_2b337

lbl_2b2e3:
    if global_14 != 7 then jump lbl_2b337
    local_349d = "Asse XYZ"
    local_36d9 = "Estrusore"
    local_34ed = "Controllo"

lbl_2b337:
    doevents
    down
    up

; object id 1 (button 'b16'): x=377, y=120, w=99, h=77, name hash=0xb7f90e98
; flags=0x37, aph=127, events: touch_release=0x292f4
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 13
; 02a104:  ff ff                                            |..|

; touch_release
.org 0x292f4
    prints 0x65, 1
    prints dp, 1
    prints 13, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b14'): x=380, y=195, w=93, h=68, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x2935f
; borderc=0x0000, picc=42, picc2=43, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 13
; 02a158:  ff ff                                            |..|

; touch_release
.org 0x2935f
    prints 0x65, 1
    prints dp, 1
    prints 13, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b15'): x=377, y=45, w=99, h=77, name hash=0x27706ad7
; flags=0x37, aph=127, events: touch_release=0x293ca
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="全部回零"
; text:
;   0: "全部回零"
;   1: "Home All"
;   2: "みんな家に帰る"
;   3: "Zuhause Alle"
;   4: "Casa Todo"
;   5: "à la maison tout"
;   6: "Casa Tudo"
;   7: "A Casa Tutti"
; touch_release reports to the host: page <page>, widget 12
; 02a1ac:  ff ff                                            |..|

; touch_release
.org 0x293ca
    prints 0x65, 1
    prints dp, 1
    prints 12, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x29435
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 02a200:  ff ff                                            |..|

; touch_release
.org 0x29435
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x294a1
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 02a254:  ff ff                                            |..|

; touch_release
.org 0x294a1
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x2950d
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 02a2a8:  ff ff                                            |..|

; touch_release
.org 0x2950d
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x29579
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 02a2fc:  ff ff                                            |..|

; touch_release
.org 0x29579
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b0'): x=67, y=6, w=206, h=35, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x295e5
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="XYZ轴"
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
; 02a350:  ff ff                                            |..|

; touch_release
.org 0x295e5
    prints 0x65, 1
    prints dp, 1
    prints 120, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 265 (text 't2'): x=416, y=214, w=52, h=34, name hash=0x2cf7a429
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ON"

; touch_press
.org 0x29647
    click b14, 1
    up

; touch_release
.org 0x2965d
    click b14, 0
    down
    up

; object id 10 (button 'b2'): x=464, y=0, w=15, h=7, name hash=0x22c442c6
; flags=0x37, aph=0, events: touch_release=0x29683
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="控制"
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
; 02a3a4:  ff ff                                            |..|

; touch_release
.org 0x29683
    prints 0x65, 1
    prints dp, 1
    prints 122, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 267 (button 'b3'): x=78, y=52, w=70, h=35, name hash=0x54ab59be
; borderc=0x0000, picc=41, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0x296ef
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 268 (button 'b4'): x=148, y=52, w=70, h=35, name hash=0x13670461
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0x29759
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 269 (button 'b5'): x=218, y=52, w=70, h=35, name hash=0x65081f19
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x297c3
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 14 (button 'b6'): x=160, y=210, w=50, h=56, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x2982d
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 6
; 02a3f8:  ff ff                                            |..|

; touch_release
.org 0x2982d
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 15 (button 'b7'): x=158, y=87, w=50, h=56, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x29897
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7
; 02a44c:  ff ff                                            |..|

; touch_release
.org 0x29897
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 16 (button 'b8'): x=96, y=151, w=60, h=48, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x29901
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 02a4a0:  ff ff                                            |..|

; touch_release
.org 0x29901
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 17 (button 'b9'): x=213, y=151, w=60, h=48, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x2996b
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 5
; 02a4f4:  ff ff                                            |..|

; touch_release
.org 0x2996b
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 18 (button 'b10'): x=308, y=109, w=41, h=46, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x299d5
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 8
; 02a548:  ff ff                                            |..|

; touch_release
.org 0x299d5
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 19 (button 'b11'): x=308, y=196, w=41, h=46, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x29a3f
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 9
; 02a59c:  ff ff                                            |..|

; touch_release
.org 0x29a3f
    prints 0x65, 1
    prints dp, 1
    prints 9, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 20 (button 'b12'): x=308, y=152, w=41, h=46, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x29aa9
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 11
; 02a5f0:  ff ff                                            |..|

; touch_release
.org 0x29aa9
    prints 0x65, 1
    prints dp, 1
    prints 11, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 21 (button 'b13'): x=155, y=145, w=59, h=61, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x29b14
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 10
; 02a644:  ff ff                                            |..|

; touch_release
.org 0x29b14
    prints 0x65, 1
    prints dp, 1
    prints 10, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 22 (button 'b1'): x=274, y=6, w=195, h=35, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x29b7f
; borderc=0x0000, picc=48, picc2=49, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="挤出机"
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
; 02a698:  ff ff                                            |..|

; touch_release
.org 0x29b7f
    prints 0x65, 1
    prints dp, 1
    prints 121, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 23 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27, events: timer=0x29be2
; tim=100, en=1

; timer
.org 0x29be2
    if local_36f9 != 1 then jump lbl_29c7f
    local_350f = local_3359+1
    local_3510 = local_3359+1
    local_3538 = local_3359
    local_3539 = local_3359
    local_3561 = local_3359
    local_3562 = local_3359
    local_3711 = local_3359
    local_3712 = local_3359
    jmp lbl_29e4d

lbl_29c7f:
    if local_36f9 != 5 then jump lbl_29d1c
    local_350f = local_3359
    local_3510 = local_3359
    local_3538 = local_3359+1
    local_3539 = local_3359+1
    local_3561 = local_3359
    local_3562 = local_3359
    local_3711 = local_3359
    local_3712 = local_3359
    jmp lbl_29e4d

lbl_29d1c:
    if local_36f9 != 10 then jump lbl_29dba
    local_350f = local_3359
    local_3510 = local_3359
    local_3538 = local_3359
    local_3539 = local_3359
    local_3561 = local_3359+1
    local_3562 = local_3359+1
    local_3711 = local_3359
    local_3712 = local_3359
    jmp lbl_29e4d

lbl_29dba:
    if local_36f9 != 50 then jump lbl_29e4d
    local_350f = local_3359
    local_3510 = local_3359
    local_3538 = local_3359
    local_3539 = local_3359
    local_3561 = local_3359
    local_3562 = local_3359
    local_3711 = local_3359+1
    local_3712 = local_3359+1

lbl_29e4d:
    down
    up

; object id 24 (variable 'move_step'): x=0, y=0, w=1, h=1, name hash=0x7c3953d0
; sta=0, val=1
; 02a6c8:  34 18 00 07                                      |4...|

; object id 281 (button 'b17'): x=288, y=52, w=70, h=35, name hash=0x3bc12630
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0x29e6b
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 26 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x29ecc
; tim=1000, en=1

; timer
.org 0x29ecc
    if global_1c <= 0 then jump lbl_29f28
    if global_20 <= 0 then jump lbl_29f28
    global_20--
    if global_20 != 0 then jump lbl_29f28
    dim = global_30

lbl_29f28:
    down
    up

; object id 27 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x29f42

; touch_release
.org 0x29f42
    global_20 = global_18
    dims = global_2c

; data after the object structs, 1876 bytes (4 trailing zero bytes dropped)
; 02a718:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 02a728:  ff ff 01 01 00 00 64 00 b4 cb 00 00 01 00 00 00  |......d.........|
; 02a738:  00 00 00 00 00 ff 00 01 00 00 2c 01 60 d6 00 00  |..........,.`...|
; 02a748:  01 00 00 00 00 00 00 00 74 17 00 00 00 00 00 00  |........t.......|
; 02a758:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a768:  00 00 00 00 00 00 00 00 00 00 7f 00 e9 80 9f e5  |................|
; 02a778:  ba a6 2b 00 7b 00 26 00 bb 00 09 01 00 00 00 00  |..+.{.&.........|
; 02a788:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 02a798:  90 d7 00 00 00 00 00 00 00 00 00 00 00 18 00 00  |................|
; 02a7a8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a7b8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02a7c8:  00 00 00 00 c0 00 9d 00 7e 00 6f 00 e5 86 8d e6  |........~.o.....|
; 02a7d8:  ac a1 e6 89 93 e5 8d b0 00 00 1a 00 1a 00 ff ff  |................|
; 02a7e8:  ff ff 01 01 e5 85 a8 e9 83 a8 e5 9b 9e e9 9b b6  |................|
; 02a7f8:  00 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a808:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a818:  00 00 7f 00 00 00 00 00 14 ff d0 00 32 00 10 00  |............2...|
; 02a828:  45 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |E...............|
; 02a838:  ff ff 00 01 00 00 00 00 28 d9 00 00 01 00 00 00  |........(.......|
; 02a848:  00 00 00 00 74 1a 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 02a858:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a868:  00 00 00 00 00 00 7f 00 00 00 00 00 00 ff d0 00  |................|
; 02a878:  21 00 10 00 76 ff df 00 00 00 00 00 03 00 00 00  |!...v...........|
; 02a888:  00 01 00 00 ff ff 00 01 00 00 2c 01 58 da 00 00  |..........,.X...|
; 02a898:  01 00 00 00 00 00 00 00 74 1b 00 00 00 00 00 00  |........t.......|
; 02a8a8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a8b8:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02a8c8:  c1 00 e4 00 7b 00 26 00 3b 01 09 01 00 00 00 00  |....{.&.;.......|
; 02a8d8:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 02a8e8:  88 db 00 00 00 00 00 00 00 00 00 00 62 1c 00 00  |............b...|
; 02a8f8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a908:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02a918:  00 00 00 00 3f 01 9d 00 7e 00 6f 00 00 01 0b 01  |....?...~.o.....|
; 02a928:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 02a938:  ff ff 01 01 00 00 64 00 b8 dc 00 00 00 00 00 00  |......d.........|
; 02a948:  74 1d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 02a958:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a968:  00 00 7f 00 00 00 00 00 93 ff d0 00 32 00 10 00  |............2...|
; 02a978:  c4 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 02a988:  ff ff 00 01 00 00 2c 01 20 dd 00 00 01 00 00 00  |......,. .......|
; 02a998:  00 00 00 00 74 1e 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 02a9a8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a9b8:  00 00 00 00 00 00 7f 00 00 00 00 00 d7 ff d0 00  |................|
; 02a9c8:  21 00 10 00 f7 ff df 00 00 00 00 00 03 00 00 00  |!...............|
; 02a9d8:  00 01 00 00 ff ff 00 01 00 00 2c 01 50 de 00 00  |..........,.P...|
; 02a9e8:  01 00 00 00 00 00 00 00 74 1f 00 00 58 59 5a e8  |........t...XYZ.|
; 02a9f8:  bd b4 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02aa08:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02aa18:  40 01 e4 00 7b 00 26 00 ba 01 09 01 00 00 00 00  |@...{.&.........|
; 02aa28:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 02aa38:  80 df 00 00 00 00 00 00 00 00 00 00 3c 20 00 00  |............< ..|
; 02aa48:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02aa58:  00 00 00 00 e6 8e a7 e5 88 b6 00 00 00 00 7f 00  |................|
; 02aa68:  00 00 00 00 5f 00 31 00 40 00 40 00 9e 00 70 00  |...._.1.@.@...p.|
; 02aa78:  00 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 02aa88:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6a 70 67  |0240314_1142.jpg|
; 02aa98:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02aaa8:  00 00 00 00 df 00 31 00 40 00 40 00 1e 01 70 00  |......1.@.@...p.|
; 02aab8:  00 00 00 00 00 00 ff 00 b0 e1 00 00 00 22 00 00  |............."..|
; 02aac8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02aad8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02aae8:  00 00 00 00 5e 01 30 00 40 00 40 00 9d 01 6f 00  |....^.0.@.@...o.|
; 02aaf8:  00 00 00 00 00 00 ff 00 b0 e2 00 00 3c 23 00 00  |............<#..|
; 02ab08:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ab18:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02ab28:  00 00 00 00 00 00 a1 00 40 00 40 00 9e 00 e0 00  |........@.@.....|
; 02ab38:  00 00 00 00 00 00 ff 00 b0 e3 00 00 3c 24 00 00  |............<$..|
; 02ab48:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ab58:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02ab68:  00 00 00 00 df 00 a1 00 40 00 40 00 1e 01 e0 00  |........@.@.....|
; 02ab78:  00 00 00 00 00 00 ff 00 b0 e4 00 00 3c 25 00 00  |............<%..|
; 02ab88:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ab98:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02aba8:  00 00 00 00 00 01 a1 00 40 00 40 00 9e 01 e0 00  |........@.@.....|
; 02abb8:  00 00 00 00 00 00 ff 00 b0 e5 00 00 62 26 00 00  |............b&..|
; 02abc8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02abd8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02abe8:  00 00 00 00 9e 00 31 00 1c 00 1c 00 b9 00 4c 00  |......1.......L.|
; 02abf8:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 02ac08:  ff ff 01 01 00 00 64 00 b0 e6 00 00 74 69 6d 65  |......d.....time|
; 02ac18:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 02ac28:  31 31 34 32 2e 6d 70 34 00 00 00 00 00 00 00 00  |1142.mp4........|
; 02ac38:  00 00 7f 00 00 00 00 00 1f 01 31 00 1c 00 1c 00  |..........1.....|
; 02ac48:  3a 01 4c 00 00 00 00 00 00 00 00 00 00 00 10 00  |:.L.............|
; 02ac58:  10 00 ff ff ff ff 01 01 00 00 64 00 00 e7 00 00  |..........d.....|
; 02ac68:  01 00 00 00 62 28 00 00 00 00 00 00 00 00 00 00  |....b(..........|
; 02ac78:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ac88:  00 00 00 00 00 00 7f 00 00 00 00 00 9f 01 31 00  |..............1.|
; 02ac98:  1c 00 1c 00 ba 01 4c 00 00 00 00 00 00 00 00 00  |......L.........|
; 02aca8:  00 00 10 00 10 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 02acb8:  80 e7 00 00 01 00 00 00 62 29 00 00 00 00 00 00  |........b)......|
; 02acc8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02acd8:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02ace8:  9e 00 a2 00 1c 00 1c 00 b9 00 bd 00 00 00 00 00  |................|
; 02acf8:  00 00 00 00 00 00 10 00 10 00 ff ff ff ff 01 01  |................|
; 02ad08:  00 00 64 00 e8 e7 00 00 01 00 00 00 62 2a 00 00  |..d.........b*..|
; 02ad18:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ad28:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02ad38:  00 00 00 00 1f 01 a2 00 1c 00 1c 00 00 01 bd 00  |................|
; 02ad48:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 02ad58:  ff ff 01 01 00 00 64 00 50 e8 00 00 01 00 00 00  |......d.P.......|
; 02ad68:  62 2b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b+..............|
; 02ad78:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ad88:  00 00 7f 00 00 00 00 00 9f 01 a2 00 1c 00 1c 00  |................|
; 02ad98:  ba 01 bd 00 00 00 00 00 00 00 00 00 00 00 10 00  |................|
; 02ada8:  10 00 ff ff 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 02adb8:  30 32 34 30 33 31 34 5f 31 31 34 33 2e 6a 70 67  |0240314_1143.jpg|
; 02adc8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02add8:  e8 03 01 00 05 2d 00 00 00 00 00 00 00 00 00 00  |.....-..........|
; 02ade8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02adf8:  00 00 00 00 00 00 00 00 00 00 00 00 e6 8c a4 e5  |................|
; 02ae08:  87 ba e6 9c ba 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ae18:  00 00 7f 00 00 00 00 00 33 01 ab 00 2e 00 2f 00  |........3...../.|
; 02ae28:  60 01 d9 00 00 00 00 00 00 00 00 00 00 00 3b 00  |`.............;.|
; 02ae38:  3c 00 ff ff ff ff 01 01 00 00 64 00 20 5c 00 00  |<.........d. \..|
; 02ae48:  01 00 00 00 62 18 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 02ae58:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ae68:  32 68 34 6d                                      |2h4m|
