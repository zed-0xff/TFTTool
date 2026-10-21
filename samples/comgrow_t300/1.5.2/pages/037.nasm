; page 37 'move': 28 objects

; object address table, 28 objects, block loaded at 0xa3a4
.dd 0xa414, 0xa454, 0xa4a8, 0xa4fc, 0xa550, 0xa5a4, 0xa5f8, 0xa64c
.dd 0xa6a0, 0x209c, 0xa6f4, 0x20f0, 0x2144, 0x2198, 0xa748, 0xa79c
.dd 0xa7f0, 0xa844, 0xa898, 0xa8ec, 0xa940, 0xa994, 0xa9e8, 0xaa3c
.dd 0xaa5c, 0x21ec, 0xaa6c, 0xaa8c

; object id 0 (page 'move'): x=0, y=0, w=480, h=272, name hash=0x4229b906
; flags=0x37, aph=127, events: event_3=0x27708
; sta=2, pic=40
; 02850e:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x27708
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x292ce
    ref 23
    ref 26
    ref 27
    if global_14 != 0 then jump lbl_29322
    local_3297 = "全部回零"
    jmp lbl_294aa

lbl_29322:
    if global_14 != 1 then jump lbl_29357
    local_3297 = "Home All"
    jmp lbl_294aa

lbl_29357:
    if global_14 != 2 then jump lbl_29399
    local_3297 = "みんな家に帰る"
    jmp lbl_294aa

lbl_29399:
    if global_14 != 3 then jump lbl_293d2
    local_3297 = "Zuhause Alle"
    jmp lbl_294aa

lbl_293d2:
    if global_14 != 4 then jump lbl_29408
    local_3297 = "Casa Todo"
    jmp lbl_294aa

lbl_29408:
    if global_14 != 5 then jump lbl_29446
    local_3297 = "à la maison tout"
    jmp lbl_294aa

lbl_29446:
    if global_14 != 6 then jump lbl_2947c
    local_3297 = "Casa Tudo"
    jmp lbl_294aa

lbl_2947c:
    if global_14 != 7 then jump lbl_294aa
    local_3297 = "A Casa Tutti"

lbl_294aa:
    if global_14 != 0 then jump lbl_29504
    local_3364 = "XYZ轴"
    local_35a0 = "挤出机"
    local_33b4 = "控制"
    jmp lbl_29791

lbl_29504:
    if global_14 != 1 then jump lbl_29560
    local_3364 = "XYZ axis"
    local_35a0 = "Extruder"
    local_33b4 = "Control"
    jmp lbl_29791

lbl_29560:
    if global_14 != 2 then jump lbl_295c6
    local_3364 = "XYZ軸"
    local_35a0 = "押出機"
    local_33b4 = "コントロール"
    jmp lbl_29791

lbl_295c6:
    if global_14 != 3 then jump lbl_29625
    local_3364 = "XYZ-Achse"
    local_35a0 = "Extruder"
    local_33b4 = "Kontrolle"
    jmp lbl_29791

lbl_29625:
    if global_14 != 4 then jump lbl_29680
    local_3364 = "Eje XYZ"
    local_35a0 = "Extrusor"
    local_33b4 = "Control"
    jmp lbl_29791

lbl_29680:
    if global_14 != 5 then jump lbl_296df
    local_3364 = "Axe XYZ"
    local_35a0 = "Extrudeuse"
    local_33b4 = "Contrôle"
    jmp lbl_29791

lbl_296df:
    if global_14 != 6 then jump lbl_2973d
    local_3364 = "Asse XYZ"
    local_35a0 = "Extrusora"
    local_33b4 = "Controle"
    jmp lbl_29791

lbl_2973d:
    if global_14 != 7 then jump lbl_29791
    local_3364 = "Asse XYZ"
    local_35a0 = "Estrusore"
    local_33b4 = "Controllo"

lbl_29791:
    doevents
    down
    up

; object id 1 (button 'b16'): x=377, y=120, w=99, h=77, name hash=0xb7f90e98
; flags=0x37, aph=127, events: touch_release=0x2774e
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 13
; 02855e:  ff ff                                            |..|

; touch_release
.org 0x2774e
    prints 0x65, 1
    prints dp, 1
    prints 13, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b14'): x=380, y=195, w=93, h=68, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x277b9
; borderc=0x0000, picc=42, picc2=43, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 13
; 0285b2:  ff ff                                            |..|

; touch_release
.org 0x277b9
    prints 0x65, 1
    prints dp, 1
    prints 13, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b15'): x=377, y=45, w=99, h=77, name hash=0x27706ad7
; flags=0x37, aph=127, events: touch_release=0x27824
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
; 028606:  ff ff                                            |..|

; touch_release
.org 0x27824
    prints 0x65, 1
    prints dp, 1
    prints 12, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x2788f
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 02865a:  ff ff                                            |..|

; touch_release
.org 0x2788f
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x278fb
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 0286ae:  ff ff                                            |..|

; touch_release
.org 0x278fb
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x27967
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 028702:  ff ff                                            |..|

; touch_release
.org 0x27967
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x279d3
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 028756:  ff ff                                            |..|

; touch_release
.org 0x279d3
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b0'): x=67, y=6, w=124, h=35, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x27a3f
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="XYZ轴"
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
; 0287aa:  ff ff                                            |..|

; touch_release
.org 0x27a3f
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
.org 0x27aa1
    click b14, 1
    up

; touch_release
.org 0x27ab7
    click b14, 0
    down
    up

; object id 10 (button 'b2'): x=355, y=5, w=124, h=35, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x27add
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
; 0287fe:  ff ff                                            |..|

; touch_release
.org 0x27add
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
.org 0x27b49
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
.org 0x27bb3
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
.org 0x27c1d
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 14 (button 'b6'): x=160, y=210, w=50, h=56, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x27c87
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 6
; 028852:  ff ff                                            |..|

; touch_release
.org 0x27c87
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 15 (button 'b7'): x=158, y=87, w=50, h=56, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x27cf1
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7
; 0288a6:  ff ff                                            |..|

; touch_release
.org 0x27cf1
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 16 (button 'b8'): x=96, y=151, w=60, h=48, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x27d5b
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 0288fa:  ff ff                                            |..|

; touch_release
.org 0x27d5b
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 17 (button 'b9'): x=213, y=151, w=60, h=48, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x27dc5
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 5
; 02894e:  ff ff                                            |..|

; touch_release
.org 0x27dc5
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 18 (button 'b10'): x=308, y=109, w=41, h=46, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x27e2f
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 8
; 0289a2:  ff ff                                            |..|

; touch_release
.org 0x27e2f
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 19 (button 'b11'): x=308, y=196, w=41, h=46, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x27e99
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 9
; 0289f6:  ff ff                                            |..|

; touch_release
.org 0x27e99
    prints 0x65, 1
    prints dp, 1
    prints 9, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 20 (button 'b12'): x=308, y=152, w=41, h=46, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x27f03
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 11
; 028a4a:  ff ff                                            |..|

; touch_release
.org 0x27f03
    prints 0x65, 1
    prints dp, 1
    prints 11, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 21 (button 'b13'): x=155, y=145, w=59, h=61, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x27f6e
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 10
; 028a9e:  ff ff                                            |..|

; touch_release
.org 0x27f6e
    prints 0x65, 1
    prints dp, 1
    prints 10, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 22 (button 'b1'): x=210, y=6, w=124, h=35, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x27fd9
; borderc=0x0000, picc=40, picc2=41, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="挤出机"
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
; 028af2:  ff ff                                            |..|

; touch_release
.org 0x27fd9
    prints 0x65, 1
    prints dp, 1
    prints 121, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 23 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27, events: timer=0x2803c
; tim=100, en=1

; timer
.org 0x2803c
    if local_35c0 != 1 then jump lbl_280d9
    local_33d6 = local_3220+1
    local_33d7 = local_3220+1
    local_33ff = local_3220
    local_3400 = local_3220
    local_3428 = local_3220
    local_3429 = local_3220
    local_35d8 = local_3220
    local_35d9 = local_3220
    jmp lbl_282a7

lbl_280d9:
    if local_35c0 != 5 then jump lbl_28176
    local_33d6 = local_3220
    local_33d7 = local_3220
    local_33ff = local_3220+1
    local_3400 = local_3220+1
    local_3428 = local_3220
    local_3429 = local_3220
    local_35d8 = local_3220
    local_35d9 = local_3220
    jmp lbl_282a7

lbl_28176:
    if local_35c0 != 10 then jump lbl_28214
    local_33d6 = local_3220
    local_33d7 = local_3220
    local_33ff = local_3220
    local_3400 = local_3220
    local_3428 = local_3220+1
    local_3429 = local_3220+1
    local_35d8 = local_3220
    local_35d9 = local_3220
    jmp lbl_282a7

lbl_28214:
    if local_35c0 != 50 then jump lbl_282a7
    local_33d6 = local_3220
    local_33d7 = local_3220
    local_33ff = local_3220
    local_3400 = local_3220
    local_3428 = local_3220
    local_3429 = local_3220
    local_35d8 = local_3220+1
    local_35d9 = local_3220+1

lbl_282a7:
    down
    up

; object id 24 (variable 'move_step'): x=0, y=0, w=1, h=1, name hash=0x7c3953d0
; sta=0, val=1
; 028b22:  34 18 00 07                                      |4...|

; object id 281 (button 'b17'): x=288, y=52, w=70, h=35, name hash=0x3bc12630
; borderc=0x0000, picc=40, picc2=40, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0x282c5
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 26 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x28326
; tim=1000, en=1

; timer
.org 0x28326
    if global_1c <= 0 then jump lbl_28382
    if global_20 <= 0 then jump lbl_28382
    global_20--
    if global_20 != 0 then jump lbl_28382
    dim = global_30

lbl_28382:
    down
    up

; object id 27 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2839c

; touch_release
.org 0x2839c
    global_20 = global_18
    dims = global_2c

; data after the object structs, 1876 bytes (4 trailing zero bytes dropped)
; 028b72:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 028b82:  ff ff 01 01 00 00 64 00 08 b6 00 00 01 00 00 00  |......d.........|
; 028b92:  00 00 00 00 00 ff 00 01 00 00 2c 01 00 c0 00 00  |..........,.....|
; 028ba2:  01 00 00 00 00 00 00 00 74 17 00 00 00 00 00 00  |........t.......|
; 028bb2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028bc2:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 028bd2:  41 00 e4 00 7b 00 26 00 bb 00 09 01 00 00 00 00  |A...{.&.........|
; 028be2:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 028bf2:  e4 c1 00 00 00 00 00 00 00 00 00 00 00 18 00 00  |................|
; 028c02:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028c12:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 028c22:  00 00 00 00 c0 00 9d 00 7e 00 6f 00 3d 01 0b 01  |........~.o.=...|
; 028c32:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 028c42:  ff ff 01 01 e5 85 a8 e9 83 a8 e5 9b 9e e9 9b b6  |................|
; 028c52:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028c62:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028c72:  00 00 7f 00 00 00 00 00 14 ff d0 00 32 00 10 00  |............2...|
; 028c82:  45 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |E...............|
; 028c92:  ff ff 00 01 00 00 2c 01 7c c3 00 00 01 00 00 00  |......,.|.......|
; 028ca2:  00 00 00 00 74 1a 00 00 00 00 00 00 00 86 8d e6  |....t...........|
; 028cb2:  ac a1 e6 89 93 e5 8d b0 00 00 00 00 00 00 00 00  |................|
; 028cc2:  00 00 00 00 00 00 7f 00 00 00 00 00 00 ff d0 00  |................|
; 028cd2:  21 00 10 00 e6 b5 81 e9 87 8f 2d 00 03 00 00 00  |!.........-.....|
; 028ce2:  00 01 00 00 ff ff 00 01 00 00 2c 01 ac c4 00 00  |..........,.....|
; 028cf2:  01 00 00 00 00 00 00 00 74 1b 00 00 00 00 00 00  |........t.......|
; 028d02:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028d12:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 028d22:  c1 00 e4 00 7b 00 26 00 3b 01 09 01 00 00 00 00  |....{.&.;.......|
; 028d32:  03 00 00 00 00 01 00 00 ff ff 01 01 e6 b5 81 e9  |................|
; 028d42:  87 8f 2b 00 00 00 00 00 00 00 00 00 62 1c 00 00  |..+.........b...|
; 028d52:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028d62:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 028d72:  00 00 00 00 3f 01 9d 00 7e 00 6f 00 00 01 0b 01  |....?...~.o.....|
; 028d82:  00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 ff ff  |................|
; 028d92:  ff ff 01 01 00 00 64 00 0c c7 00 00 00 00 00 00  |......d.........|
; 028da2:  74 1d 00 00 e9 80 9f e5 ba a6 2d 00 00 00 00 00  |t.........-.....|
; 028db2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028dc2:  00 00 7f 00 00 00 00 00 93 ff d0 00 32 00 10 00  |............2...|
; 028dd2:  c4 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 028de2:  ff ff 00 01 00 00 2c 01 74 c7 00 00 01 00 00 00  |......,.t.......|
; 028df2:  00 00 00 00 74 1e 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 028e02:  00 00 00 00 00 00 00 00 00 00 00 00 e9 80 9f e5  |................|
; 028e12:  ba a6 2b 00 00 00 7f 00 00 00 00 00 d7 ff d0 00  |..+.............|
; 028e22:  21 00 10 00 f7 ff df 00 00 00 00 00 03 00 00 00  |!...............|
; 028e32:  00 01 00 00 ff ff 00 01 00 00 2c 01 a4 c8 00 00  |..........,.....|
; 028e42:  01 00 00 00 00 00 00 00 74 1f 00 00 58 59 5a e8  |........t...XYZ.|
; 028e52:  bd b4 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028e62:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 028e72:  40 01 e4 00 25 00 26 00 ba 01 09 01 00 00 00 00  |@...%.&.........|
; 028e82:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 028e92:  d4 c9 00 00 00 00 00 00 00 00 00 00 3c 20 00 00  |............< ..|
; 028ea2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028eb2:  00 00 00 00 e6 8e a7 e5 88 b6 00 00 00 00 7f 00  |................|
; 028ec2:  00 00 00 00 5f 00 31 00 40 00 40 00 9e 00 70 00  |...._.1.@.@...p.|
; 028ed2:  00 00 00 00 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 028ee2:  30 32 34 30 33 31 34 5f 31 31 34 32 2e 6a 70 67  |0240314_1142.jpg|
; 028ef2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 028f02:  00 00 00 00 df 00 31 00 40 00 40 00 1e 01 70 00  |......1.@.@...p.|
; 028f12:  00 00 00 00 00 00 ff 00 04 cc 00 00 00 22 00 00  |............."..|
; 028f22:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028f32:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 028f42:  00 00 00 00 5e 01 30 00 40 00 40 00 9d 01 6f 00  |....^.0.@.@...o.|
; 028f52:  00 00 00 00 00 00 ff 00 04 cd 00 00 3c 23 00 00  |............<#..|
; 028f62:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028f72:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 028f82:  00 00 00 00 00 00 a1 00 40 00 40 00 9e 00 e0 00  |........@.@.....|
; 028f92:  00 00 00 00 00 00 ff 00 04 ce 00 00 3c 24 00 00  |............<$..|
; 028fa2:  00 00 00 00 e6 8d a2 e6 96 99 00 00 00 00 00 00  |................|
; 028fb2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 028fc2:  00 00 00 00 df 00 a1 00 40 00 40 00 1e 01 e0 00  |........@.@.....|
; 028fd2:  00 00 00 00 00 00 ff 00 04 cf 00 00 3c 25 00 00  |............<%..|
; 028fe2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028ff2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 029002:  00 00 00 00 00 01 a1 00 40 00 40 00 00 00 00 00  |........@.@.....|
; 029012:  00 00 00 00 00 00 ff 00 04 d0 00 00 62 26 00 00  |............b&..|
; 029022:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029032:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 029042:  00 00 00 00 9e 00 31 00 1c 00 1c 00 b9 00 4c 00  |......1.......L.|
; 029052:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 029062:  ff ff 01 01 00 00 64 00 04 d1 00 00 74 69 6d 65  |......d.....time|
; 029072:  6c 61 70 73 65 5f 5f 32 30 32 34 30 33 31 34 5f  |lapse__20240314_|
; 029082:  31 31 34 32 2e 6d 70 34 00 00 00 00 00 00 00 00  |1142.mp4........|
; 029092:  00 00 7f 00 00 00 00 00 1f 01 31 00 1c 00 1c 00  |..........1.....|
; 0290a2:  3a 01 4c 00 00 00 00 00 00 00 00 00 00 00 10 00  |:.L.............|
; 0290b2:  10 00 ff ff ff ff 01 01 00 00 64 00 00 d1 00 00  |..........d.....|
; 0290c2:  01 00 00 00 62 28 00 00 00 00 00 00 00 00 00 00  |....b(..........|
; 0290d2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0290e2:  00 00 00 00 00 00 7f 00 00 00 00 00 9f 01 31 00  |..............1.|
; 0290f2:  1c 00 1c 00 ba 01 4c 00 00 00 00 00 00 00 00 00  |......L.........|
; 029102:  00 00 10 00 10 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 029112:  d4 d1 00 00 01 00 00 00 62 29 00 00 00 00 00 00  |........b)......|
; 029122:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029132:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 029142:  9e 00 a2 00 1c 00 1c 00 b9 00 bd 00 00 00 00 00  |................|
; 029152:  00 00 00 00 00 00 10 00 10 00 ff ff ff ff 01 01  |................|
; 029162:  00 00 64 00 3c d2 00 00 01 00 00 00 62 2a 00 00  |..d.<.......b*..|
; 029172:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029182:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 029192:  00 00 00 00 1f 01 a2 00 1c 00 1c 00 00 01 bd 00  |................|
; 0291a2:  00 00 00 00 00 00 00 00 00 00 10 00 10 00 ff ff  |................|
; 0291b2:  ff ff 01 01 00 00 64 00 a4 d2 00 00 01 00 00 00  |......d.........|
; 0291c2:  62 2b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b+..............|
; 0291d2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0291e2:  00 00 7f 00 00 00 00 00 9f 01 a2 00 1c 00 1c 00  |................|
; 0291f2:  ba 01 bd 00 00 00 00 00 00 00 00 00 00 00 10 00  |................|
; 029202:  10 00 ff ff 74 69 6d 65 6c 61 70 73 65 5f 5f 32  |....timelapse__2|
; 029212:  30 32 34 30 33 31 34 5f 31 31 34 33 2e 6a 70 67  |0240314_1143.jpg|
; 029222:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029232:  e8 03 01 00 05 2d 00 00 00 00 00 00 00 00 00 00  |.....-..........|
; 029242:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029252:  00 00 00 00 00 00 00 00 00 00 00 00 e6 8c a4 e5  |................|
; 029262:  87 ba e6 9c ba 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029272:  00 00 7f 00 00 00 00 00 97 01 d5 00 45 00 36 00  |............E.6.|
; 029282:  db 01 0a 01 00 00 00 00 00 00 00 00 00 00 16 00  |................|
; 029292:  18 00 ff ff ff ff 01 01 00 00 64 00 84 55 00 00  |..........d..U..|
; 0292a2:  01 00 00 00 00 02 01 00 00 00 00 00 00 00 00 00  |................|
; 0292b2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0292c2:  32 68 34 6d                                      |2h4m|
