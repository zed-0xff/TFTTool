; page 22 'operate': 24 objects

; object address table, 24 objects, block loaded at 0xb950
.dd 0xb9b0, 0xb9f0, 0xba44, 0x1fa4, 0x1ff8, 0x204c, 0x20a0, 0x20f4
.dd 0x2148, 0x219c, 0xba98, 0x21f0, 0xbaec, 0xbb40, 0x2244, 0xbb94
.dd 0xbbe8, 0x2298, 0xbc3c, 0xbc90, 0xbcb0, 0xbcc0, 0xbcd0, 0xbcf0

; object id 0 (page 'operate'): x=0, y=0, w=480, h=272, name hash=0x735949d
; flags=0x37, aph=127, events: event_3=0x1f7f2
; sta=2, pic=36
; 02041f:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1f7f2
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x20b5f
    ref 19
    ref 22
    ref 23
    if global_14 != 0 then jump lbl_20bf9
    local_281f = "微调"
    local_2a09 = "流量-"
    local_2a59 = "流量+"
    local_2a82 = "速度-"
    local_2ad2 = "速度+"
    jmp lbl_20f79

lbl_20bf9:
    if global_14 != 1 then jump lbl_20c72
    local_281f = "Adjust"
    local_2a09 = "Flow-"
    local_2a59 = "Flow+"
    local_2a82 = "Speed-"
    local_2ad2 = "Speed+"
    jmp lbl_20f79

lbl_20c72:
    if global_14 != 2 then jump lbl_20d00
    local_281f = "微調整"
    local_2a09 = "流れ-"
    local_2a59 = "流れ+"
    local_2a82 = "スピード-"
    local_2ad2 = "スピード+"
    jmp lbl_20f79

lbl_20d00:
    if global_14 != 3 then jump lbl_20d83
    local_281f = "Anpassen"
    local_2a09 = "Verkehr -"
    local_2a59 = "Verkehr +"
    local_2a82 = "Speed-"
    local_2ad2 = "Speed+"
    jmp lbl_20f79

lbl_20d83:
    if global_14 != 4 then jump lbl_20e09
    local_281f = "Ajustar"
    local_2a09 = "Tráfico-"
    local_2a59 = "Tráfico+"
    local_2a82 = "Rapidez-"
    local_2ad2 = "Rapidez+"
    jmp lbl_20f79

lbl_20e09:
    if global_14 != 5 then jump lbl_20e8f
    local_281f = "Ajuster"
    local_2a09 = "Trafic -"
    local_2a59 = "Trafic +"
    local_2a82 = "vitesse -"
    local_2ad2 = "vitesse +"
    jmp lbl_20f79

lbl_20e8f:
    if global_14 != 6 then jump lbl_20f09
    local_281f = "Ajustar"
    local_2a09 = "Flow-"
    local_2a59 = "Flow+"
    local_2a82 = "Speed-"
    local_2ad2 = "Speed+"
    jmp lbl_20f79

lbl_20f09:
    if global_14 != 7 then jump lbl_20f79
    local_281f = "Regolare"
    local_2a09 = "Flow-"
    local_2a59 = "Flow+"
    local_2a82 = "Speed-"
    local_2ad2 = "Speed+"

lbl_20f79:
    doevents
    down
    up

; object id 1 (text 't0'): x=48, y=11, w=148, h=34, name hash=0xc02992d9
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

; object id 2 (button 'b0'): x=5, y=7, w=44, h=41, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1f852
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 0204c3:  ff ff                                            |..|

; touch_release
.org 0x1f852
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 259 (button 'b1'): x=14, y=53, w=65, h=29, name hash=0xb8756f4e
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0x1f8bc
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 260 (button 'b2'): x=82, y=53, w=65, h=29, name hash=0x22c442c6
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x1f926
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 261 (button 'b3'): x=150, y=53, w=65, h=29, name hash=0x54ab59be
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0x1f990
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 262 (button 'b4'): x=242, y=53, w=53, h=29, name hash=0x13670461
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0x1f9fa
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 263 (button 'b5'): x=299, y=53, w=53, h=29, name hash=0x65081f19
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0x1fa64
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 264 (button 'b6'): x=355, y=53, w=53, h=29, name hash=0xffb93291
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 8

; touch_release
.org 0x1face
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 265 (button 'b7'): x=412, y=53, w=53, h=29, name hash=0x89d629e9
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 9

; touch_release
.org 0x1fb38
    prints 0x65, 1
    prints dp, 1
    prints 9, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b8'): x=13, y=94, w=71, h=38, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x1fba2
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 4
; 020517:  ff ff                                            |..|

; touch_release
.org 0x1fba2
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

; object id 267 (text 't1'): x=82, y=94, w=65, h=38, name hash=0xb64689a1
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="5mm"

; object id 12 (button 'b9'): x=145, y=94, w=70, h=38, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x1fc26
; borderc=0x0000, picc=36, picc2=37, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 5
; 02056b:  ff ff                                            |..|

; touch_release
.org 0x1fc26
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 13 (button 'b10'): x=252, y=93, w=70, h=38, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x1fc90
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
; 0205bf:  ff ff                                            |..|

; touch_release
.org 0x1fc90
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

; object id 270 (text 't2'): x=321, y=92, w=65, h=40, name hash=0x2cf7a429
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100%"

; object id 15 (button 'b11'): x=384, y=93, w=70, h=38, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x1fd15
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
; 020613:  ff ff                                            |..|

; touch_release
.org 0x1fd15
    prints 0x65, 1
    prints dp, 1
    prints 11, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 16 (button 'b12'): x=252, y=147, w=70, h=38, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x1fd80
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
; 020667:  ff ff                                            |..|

; touch_release
.org 0x1fd80
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

; object id 273 (text 't3'): x=321, y=146, w=65, h=40, name hash=0x5a98bf51
; sta=3, font=2, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="100%"

; object id 18 (button 'b13'): x=384, y=147, w=70, h=38, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x1fe05
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
; 0206bb:  ff ff                                            |..|

; touch_release
.org 0x1fe05
    prints 0x65, 1
    prints dp, 1
    prints 13, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 19 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27, events: timer=0x1fe67
; tim=100, en=1

; timer
.org 0x1fe67
    if local_2afd != 1 then jump lbl_1fee6
    local_286a = local_27fc+1
    local_286b = local_27fc+1
    local_2893 = local_27fc
    local_2894 = local_27fc
    local_28bc = local_27fc
    local_28bd = local_27fc
    jmp lbl_1ffdb

lbl_1fee6:
    if local_2afd != 10 then jump lbl_1ff66
    local_286a = local_27fc
    local_286b = local_27fc
    local_2893 = local_27fc+1
    local_2894 = local_27fc+1
    local_28bc = local_27fc
    local_28bd = local_27fc
    jmp lbl_1ffdb

lbl_1ff66:
    if local_2afd != 50 then jump lbl_1ffdb
    local_286a = local_27fc
    local_286b = local_27fc
    local_2893 = local_27fc
    local_2894 = local_27fc
    local_28bc = local_27fc+1
    local_28bd = local_27fc+1

lbl_1ffdb:
    if local_2af2 != 1 then jump lbl_20078
    local_28e5 = local_27fc+1
    local_28e6 = local_27fc+1
    local_290e = local_27fc
    local_290f = local_27fc
    local_2937 = local_27fc
    local_2938 = local_27fc
    local_2960 = local_27fc
    local_2961 = local_27fc
    jmp lbl_20246

lbl_20078:
    if local_2af2 != 5 then jump lbl_20115
    local_28e5 = local_27fc
    local_28e6 = local_27fc
    local_290e = local_27fc+1
    local_290f = local_27fc+1
    local_2937 = local_27fc
    local_2938 = local_27fc
    local_2960 = local_27fc
    local_2961 = local_27fc
    jmp lbl_20246

lbl_20115:
    if local_2af2 != 10 then jump lbl_201b3
    local_28e5 = local_27fc
    local_28e6 = local_27fc
    local_290e = local_27fc
    local_290f = local_27fc
    local_2937 = local_27fc+1
    local_2938 = local_27fc+1
    local_2960 = local_27fc
    local_2961 = local_27fc
    jmp lbl_20246

lbl_201b3:
    if local_2af2 != 25 then jump lbl_20246
    local_28e5 = local_27fc
    local_28e6 = local_27fc
    local_290e = local_27fc
    local_290f = local_27fc
    local_2937 = local_27fc
    local_2938 = local_27fc
    local_2960 = local_27fc+1
    local_2961 = local_27fc+1

lbl_20246:
    timer

; object id 20 (variable 'percent_step'): x=0, y=0, w=1, h=1, name hash=0x4c7f9017
; sta=0, val=0
; 0206eb:  34 14 00 07                                      |4...|

; object id 21 (variable 'zoffset_step'): x=0, y=0, w=1, h=1, name hash=0xd62fd013
; sta=0, val=0
; 0206fb:  34 15 00 07                                      |4...|

; object id 22 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2025f
; tim=1000, en=1

; timer
.org 0x2025f
    if global_1c <= 0 then jump lbl_202bb
    if global_20 <= 0 then jump lbl_202bb
    global_20--
    if global_20 != 0 then jump lbl_202bb
    dim = global_30

lbl_202bb:
    down
    up

; object id 23 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x202d5

; touch_release
.org 0x202d5
    global_20 = global_18
    dims = global_2c

; data after the object structs, 1032 bytes (8 trailing zero bytes dropped)
; 02074b:  00 00 00 00 e5 be ae e8 b0 83 00 00 ff ff 00 01  |................|
; 02075b:  00 00 2c 01 bc c3 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 02076b:  62 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02077b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02078b:  00 00 7f 00 00 00 00 00 a0 01 2e 00 1d 00 2c 00  |..............,.|
; 02079b:  00 01 59 00 00 00 00 00 00 00 00 00 00 00 50 00  |..Y...........P.|
; 0207ab:  00 00 ff ff ff ff 01 01 00 00 64 00 ec c4 00 00  |..........d.....|
; 0207bb:  01 00 00 00 74 10 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 0207cb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0207db:  e6 98 af 00 00 00 7f 00 00 00 00 00 52 00 5b 00  |............R.[.|
; 0207eb:  40 01 2d 00 91 01 87 00 00 00 00 00 03 00 00 00  |@.-.............|
; 0207fb:  00 01 00 00 ff ff 00 01 00 00 2c 01 54 c5 00 00  |..........,.T...|
; 02080b:  01 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00  |................|
; 02081b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02082b:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02083b:  a0 01 5b 00 1d 00 2c 00 e5 90 a6 00 00 00 00 00  |..[...,.........|
; 02084b:  00 00 00 00 00 00 50 00 51 00 ff ff ff ff 01 01  |......P.Q.......|
; 02085b:  00 00 64 00 84 c6 00 00 01 00 00 00 74 12 00 00  |..d.........t...|
; 02086b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02087b:  e6 89 93 e5 00 b0 00 00 00 00 00 00 00 00 7f 00  |................|
; 02088b:  00 00 00 00 52 00 88 00 40 01 2d 00 91 01 b4 00  |....R...@.-.....|
; 02089b:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 0208ab:  00 00 00 00 ec c6 00 00 01 00 00 00 00 00 00 00  |................|
; 0208bb:  62 13 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0208cb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0208db:  00 00 7f 00 00 00 00 00 00 01 88 00 00 00 2c 00  |..............,.|
; 0208eb:  bc 01 b3 00 00 00 00 00 00 00 00 00 00 00 50 00  |..............P.|
; 0208fb:  51 00 ff ff ff ff 01 01 00 00 64 00 1c c8 00 00  |Q.........d.....|
; 02090b:  01 00 00 00 74 14 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 02091b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02092b:  00 00 00 00 00 00 7f 00 00 00 00 00 52 00 b5 00  |............R...|
; 02093b:  00 01 2d 00 91 01 e1 00 00 00 00 00 03 00 00 00  |..-.............|
; 02094b:  72 61 6d 2f 00 37 36 2e 6a 70 67 00 84 c8 00 00  |ram/.76.jpg.....|
; 02095b:  01 00 00 00 00 00 00 00 62 15 00 00 00 00 00 00  |........b.......|
; 02096b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02097b:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02098b:  a0 01 b5 00 1d 00 2c 00 bc 01 e0 00 00 00 00 00  |......,.........|
; 02099b:  00 00 00 00 00 00 50 00 00 00 ff ff ff ff 01 01  |......P.........|
; 0209ab:  00 00 64 00 00 00 00 00 01 00 00 00 e6 b5 81 e9  |..d.............|
; 0209bb:  87 8f 2d 00 00 00 00 00 00 00 00 00 00 00 00 00  |..-.............|
; 0209cb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0209db:  00 00 00 00 41 00 e1 00 7c 01 2d 00 bc 01 0d 01  |....A...|.-.....|
; 0209eb:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 0209fb:  ff ff 01 01 00 00 64 00 1c ca 00 00 01 00 00 00  |......d.........|
; 020a0b:  74 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 020a1b:  00 00 00 00 e6 b5 81 e9 87 8f 2b 00 00 00 00 00  |..........+.....|
; 020a2b:  00 00 7f 00 00 00 00 00 52 00 e2 00 40 01 2d 00  |........R...@.-.|
; 020a3b:  91 01 0e 01 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 020a4b:  00 00 00 00 00 00 2c 01 84 ca 00 00 01 00 00 00  |......,.........|
; 020a5b:  00 00 00 00 62 1a 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 020a6b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 020a7b:  00 00 00 00 00 00 7f 00 00 00 00 00 e9 80 9f e5  |................|
; 020a8b:  ba a6 2d 00 bc 01 0d 01 00 00 00 00 00 00 00 00  |..-.............|
; 020a9b:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 020aab:  b4 cb 00 00 01 00 00 00 00 00 00 00 00 ff 00 01  |................|
; 020abb:  00 00 2c 01 60 d6 00 00 01 00 00 00 00 00 00 00  |..,.`...........|
; 020acb:  74 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 020adb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 020aeb:  00 00 7f 00 e9 80 9f e5 ba a6 2b 00 7b 00 26 00  |..........+.{.&.|
; 020afb:  bb 00 09 01 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 020b0b:  ff ff 01 01 00 00 2c 01 90 d7 00 00 00 00 00 00  |......,.........|
; 020b1b:  00 00 00 00 00 18 00 00 00 00 00 00 00 00 00 00  |................|
; 020b2b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 020b3b:  00 00 00 00 00 00 7f 00 00 00 00 00 c0 00 9d 00  |................|
; 020b4b:  7e 00 6f 00 3d 01 0b 01                          |~.o.=...|
