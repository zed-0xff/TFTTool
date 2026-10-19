; page 41 'keyboard': 26 objects

; object address table, 26 objects, block loaded at 0xb950
.dd 0xb9b8, 0xb9f8, 0xba34, 0xba88, 0xbadc, 0xbb30, 0xbb84, 0xbbd8
.dd 0xbc2c, 0xbc80, 0xbcd4, 0xbd28, 0xbd7c, 0xbdd0, 0xbe24, 0xbe78
.dd 0xbecc, 0xbf20, 0xbf74, 0xbfc8, 0xbfd8, 0xbfe8, 0xbff8, 0xc008
.dd 0xc05c, 0xc07c

; object id 0 (page 'keyboard'): x=0, y=0, w=480, h=272, name hash=0x516cb0bf
; flags=0x37, aph=127, events: event_3=0x2d65a
; sta=0, pic=0
; 02e573:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2d65a
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x2ee27
    ref 24
    ref 25
    if global_14 != 0 then jump lbl_2ee75
    local_3d3b = "可输入范围"
    jmp lbl_2f047

lbl_2ee75:
    if global_14 != 1 then jump lbl_2eeb1
    local_3d3b = "The input range"
    jmp lbl_2f047

lbl_2eeb1:
    if global_14 != 2 then jump lbl_2eef3
    local_3d3b = "入力範囲はです"
    jmp lbl_2f047

lbl_2eef3:
    if global_14 != 3 then jump lbl_2ef3b
    local_3d3b = "Der Eingabebereich beträgt"
    jmp lbl_2f047

lbl_2ef3b:
    if global_14 != 4 then jump lbl_2ef7f
    local_3d3b = "El rango de entrada es "
    jmp lbl_2f047

lbl_2ef7f:
    if global_14 != 5 then jump lbl_2efc6
    local_3d3b = "La plage d'entrée est de "
    jmp lbl_2f047

lbl_2efc6:
    if global_14 != 6 then jump lbl_2f00c
    local_3d3b = "L'intervallo di input è "
    jmp lbl_2f047

lbl_2f00c:
    if global_14 != 7 then jump lbl_2f047
    local_3d3b = "L'intervallo di input è "

lbl_2f047:
    if global_0 != 0 then jump lbl_2f079
    local_3cc0 = "0~300"
    jmp lbl_2f0a0

lbl_2f079:
    if global_0 != 1 then jump lbl_2f0a0
    local_3cc0 = "0~100"

lbl_2f0a0:
    doevents
    down
    up

; object id 1 (crop 'q0'): x=0, y=0, w=480, h=270, name hash=0x32aa1f99
; flags=0x37, aph=110
; picc=71

; object id 2 (button 'b0'): x=128, y=43, w=51, h=50, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2d6ba
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e5f7:  00 01                                            |..|
; 02e5ff:  ff ff                                            |..|

; touch_release
.org 0x2d6ba
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2d7a6
    local_3cfc += "1"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2d75d
    if local_3d1e <= 300 then jump lbl_2d797
    local_3cfc -= 1
    jmp lbl_2d797

lbl_2d75d:
    if global_0 != 1 then jump lbl_2d797
    if local_3d1e <= 100 then jump lbl_2d797
    local_3cfc -= 1

lbl_2d797:
    local_3ce7 = local_3cfc

lbl_2d7a6:
    down
    up

; object id 3 (button 'b1'): x=186, y=43, w=51, h=50, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x2d7c0
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e64b:  00 01                                            |..|
; 02e653:  ff ff                                            |..|

; touch_release
.org 0x2d7c0
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2d8ac
    local_3cfc += "2"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2d863
    if local_3d1e <= 300 then jump lbl_2d89d
    local_3cfc -= 1
    jmp lbl_2d89d

lbl_2d863:
    if global_0 != 1 then jump lbl_2d89d
    if local_3d1e <= 100 then jump lbl_2d89d
    local_3cfc -= 1

lbl_2d89d:
    local_3ce7 = local_3cfc

lbl_2d8ac:
    down
    up

; object id 4 (button 'b2'): x=243, y=43, w=51, h=50, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x2d8c6
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e69f:  00 01                                            |..|
; 02e6a7:  ff ff                                            |..|

; touch_release
.org 0x2d8c6
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2d9b2
    local_3cfc += "3"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2d969
    if local_3d1e <= 300 then jump lbl_2d9a3
    local_3cfc -= 1
    jmp lbl_2d9a3

lbl_2d969:
    if global_0 != 1 then jump lbl_2d9a3
    if local_3d1e <= 100 then jump lbl_2d9a3
    local_3cfc -= 1

lbl_2d9a3:
    local_3ce7 = local_3cfc

lbl_2d9b2:
    down
    up

; object id 5 (button 'b3'): x=300, y=43, w=51, h=50, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x2d9cc
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e6f3:  00 01                                            |..|
; 02e6fb:  ff ff                                            |..|

; touch_release
.org 0x2d9cc
    prints 0x71, 1
    local_3cfc -= 1
    local_3ce7 = local_3cfc
    down
    up

; object id 6 (button 'b4'): x=128, y=101, w=51, h=50, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x2da0f
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e747:  00 01                                            |..|
; 02e74f:  ff ff                                            |..|

; touch_release
.org 0x2da0f
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2dafb
    local_3cfc += "4"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2dab2
    if local_3d1e <= 300 then jump lbl_2daec
    local_3cfc -= 1
    jmp lbl_2daec

lbl_2dab2:
    if global_0 != 1 then jump lbl_2daec
    if local_3d1e <= 100 then jump lbl_2daec
    local_3cfc -= 1

lbl_2daec:
    local_3ce7 = local_3cfc

lbl_2dafb:
    down
    up

; object id 7 (button 'b5'): x=186, y=101, w=51, h=50, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x2db15
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e79b:  00 01                                            |..|
; 02e7a3:  ff ff                                            |..|

; touch_release
.org 0x2db15
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2dc01
    local_3cfc += "5"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2dbb8
    if local_3d1e <= 300 then jump lbl_2dbf2
    local_3cfc -= 1
    jmp lbl_2dbf2

lbl_2dbb8:
    if global_0 != 1 then jump lbl_2dbf2
    if local_3d1e <= 100 then jump lbl_2dbf2
    local_3cfc -= 1

lbl_2dbf2:
    local_3ce7 = local_3cfc

lbl_2dc01:
    down
    up

; object id 8 (button 'b6'): x=243, y=101, w=51, h=50, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x2dc1b
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e7ef:  00 01                                            |..|
; 02e7f7:  ff ff                                            |..|

; touch_release
.org 0x2dc1b
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2dd07
    local_3cfc += "6"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2dcbe
    if local_3d1e <= 300 then jump lbl_2dcf8
    local_3cfc -= 1
    jmp lbl_2dcf8

lbl_2dcbe:
    if global_0 != 1 then jump lbl_2dcf8
    if local_3d1e <= 100 then jump lbl_2dcf8
    local_3cfc -= 1

lbl_2dcf8:
    local_3ce7 = local_3cfc

lbl_2dd07:
    down
    up

; object id 9 (button 'b7'): x=300, y=101, w=51, h=50, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x2dd21
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 02e843:  00 01                                            |..|
; 02e84b:  ff ff                                            |..|

; touch_release
.org 0x2dd21
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b8'): x=128, y=158, w=51, h=50, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x2dd8b
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e897:  00 01                                            |..|
; 02e89f:  ff ff                                            |..|

; touch_release
.org 0x2dd8b
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2de77
    local_3cfc += "7"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2de2e
    if local_3d1e <= 300 then jump lbl_2de68
    local_3cfc -= 1
    jmp lbl_2de68

lbl_2de2e:
    if global_0 != 1 then jump lbl_2de68
    if local_3d1e <= 100 then jump lbl_2de68
    local_3cfc -= 1

lbl_2de68:
    local_3ce7 = local_3cfc

lbl_2de77:
    down
    up

; object id 11 (button 'b9'): x=186, y=158, w=51, h=50, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x2de91
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e8eb:  00 01                                            |..|
; 02e8f3:  ff ff                                            |..|

; touch_release
.org 0x2de91
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2df7d
    local_3cfc += "8"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2df34
    if local_3d1e <= 300 then jump lbl_2df6e
    local_3cfc -= 1
    jmp lbl_2df6e

lbl_2df34:
    if global_0 != 1 then jump lbl_2df6e
    if local_3d1e <= 100 then jump lbl_2df6e
    local_3cfc -= 1

lbl_2df6e:
    local_3ce7 = local_3cfc

lbl_2df7d:
    down
    up

; object id 12 (button 'b10'): x=243, y=158, w=51, h=50, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x2df97
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e93f:  00 01                                            |..|
; 02e947:  ff ff                                            |..|

; touch_release
.org 0x2df97
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2e083
    local_3cfc += "9"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2e03a
    if local_3d1e <= 300 then jump lbl_2e074
    local_3cfc -= 1
    jmp lbl_2e074

lbl_2e03a:
    if global_0 != 1 then jump lbl_2e074
    if local_3d1e <= 100 then jump lbl_2e074
    local_3cfc -= 1

lbl_2e074:
    local_3ce7 = local_3cfc

lbl_2e083:
    down
    up

; object id 13 (button 'b11'): x=128, y=216, w=51, h=50, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x2e09d
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e993:  00 01                                            |..|
; 02e99b:  ff ff                                            |..|

; touch_release
.org 0x2e09d
    prints 0x71, 1
    down
    up

; object id 14 (button 'b12'): x=185, y=216, w=51, h=50, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x2e0c5
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02e9e7:  00 01                                            |..|
; 02e9ef:  ff ff                                            |..|

; touch_release
.org 0x2e0c5
    prints 0x71, 1
    btlen local_3cfc, local_3d08
    if local_3d08 >= local_3d13 then jump lbl_2e1b1
    local_3cfc += "0"
    covx local_3cfc, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2e168
    if local_3d1e <= 300 then jump lbl_2e1a2
    local_3cfc -= 1
    jmp lbl_2e1a2

lbl_2e168:
    if global_0 != 1 then jump lbl_2e1a2
    if local_3d1e <= 100 then jump lbl_2e1a2
    local_3cfc -= 1

lbl_2e1a2:
    local_3ce7 = local_3cfc

lbl_2e1b1:
    down
    up

; object id 15 (button 'b13'): x=243, y=216, w=51, h=50, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x2e1cb
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02ea3b:  00 01                                            |..|
; 02ea43:  ff ff                                            |..|

; touch_release
.org 0x2e1cb
    prints 0x71, 1
    down
    up

; object id 16 (button 'b14'): x=300, y=158, w=51, h=108, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x2e1f3
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02ea8f:  00 01                                            |..|
; 02ea97:  ff ff                                            |..|

; touch_release
.org 0x2e1f3
    covx local_3ce7, local_3d1e, 0, 0
    if global_0 != 0 then jump lbl_2e24f
    if local_3d1e <= 300 then jump lbl_2e2ce
    local_3d1e = 300
    jmp lbl_2e2ce

lbl_2e24f:
    if global_0 != 1 then jump lbl_2e295
    if local_3d1e <= 100 then jump lbl_2e2ce
    local_3d1e = 100
    jmp lbl_2e2ce

lbl_2e295:
    if global_0 != 2 then jump lbl_2e2ce
    if local_3d1e <= 60 then jump lbl_2e2ce
    local_3d1e = 60

lbl_2e2ce:
    prints 0x71, 1
    prints global_c, 1
    prints global_0, 1
    prints local_3d1e, 2
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up
    timer

; object id 17 (text 't1'): x=204, y=10, w=58, h=22, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xf800, xcen=0, ycen=1, txt_maxl=100, isbr=1, background=0, txt="0~60"
; text:
;   7: "0~100"

; object id 18 (text 'show'): x=301, y=11, w=59, h=22, name hash=0x8c473f82
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=1, background=0, txt="0"

; object id 19 (variable 'input'): x=0, y=0, w=1, h=1, name hash=0x94c6a60d
; sta=1, val=0
; 02eb4f:  34 13 00 07                                      |4...|
; 02eb54:  00 0a 00 24 c2 00 00                             |...$...|

; object id 20 (variable 'temp'): x=0, y=0, w=1, h=1, name hash=0xf6182fd8
; sta=0, val=0
; 02eb5f:  34 14 00 07                                      |4...|

; object id 21 (variable 'inputlenth'): x=0, y=0, w=1, h=1, name hash=0x18d4148b
; sta=0, val=3
; 02eb6f:  34 15 00 07                                      |4...|

; object id 22 (variable 'va0'): x=0, y=0, w=1, h=1, name hash=0xcbcbac4e
; sta=0, val=0
; 02eb7f:  34 16 00 07                                      |4...|

; object id 23 (text 't0'): x=1, y=10, w=198, h=22, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=100, isbr=1, background=0, txt="可输入范围"
; text:
;   0: "可输入范围"
;   1: "The input range"
;   2: "入力範囲はです"
;   3: "Der Eingabebereich beträgt"
;   4: "El rango de entrada es "
;   5: "La plage d'entrée est de "
;   6: "L'intervallo di input è "
;   7: "L'intervallo di input è "

; object id 24 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2e39f
; tim=1000, en=1

; timer
.org 0x2e39f
    if global_1c <= 0 then jump lbl_2e3fb
    if global_20 <= 0 then jump lbl_2e3fb
    global_20--
    if global_20 != 0 then jump lbl_2e3fb
    dim = global_30

lbl_2e3fb:
    down
    up

; object id 25 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2e415

; touch_release
.org 0x2e415
    global_20 = global_18
    dims = global_2c

; data after the object structs, 494 bytes (18 trailing zero bytes dropped)
; 02ec23:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ec33:  00 00 00 00 00 00 7f 00 e9 80 9f e5 00 a6 2b 00  |..............+.|
; 02ec43:  7b 00 26 00 bb 00 09 01 00 00 00 00 03 00 00 00  |{.&.............|
; 02ec53:  00 01 00 00 00 ff 01 01 00 00 2c 01 00 00 00 00  |..........,.....|
; 02ec63:  00 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00  |................|
; 02ec73:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ec83:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02ec93:  00 00 9d 00 7e 00 6f 00 e5 86 8d e6 00 a1 e6 89  |....~.o.........|
; 02eca3:  93 e5 8d b0 00 00 1a 00 00 00 ff ff ff ff 01 01  |................|
; 02ecb3:  e5 85 a8 e9 00 a8 e5 9b 9e e9 9b b6 00 19 00 00  |................|
; 02ecc3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ecd3:  00 00 00 00 00 00 00 00 30 7e 36 30 00 00 7f 00  |........0~60....|
; 02ece3:  00 00 00 00 14 ff d0 00 32 00 10 00 45 ff df 00  |........2...E...|
; 02ecf3:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 02ed03:  00 00 00 00 28 d9 00 00 01 00 00 00 00 00 00 00  |....(...........|
; 02ed13:  74 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 02ed23:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ed33:  00 00 7f 00 00 00 00 00 00 ff d0 00 21 00 10 00  |............!...|
; 02ed43:  30 00 df 00 00 00 00 00 03 00 00 00 00 01 00 00  |0...............|
; 02ed53:  ff ff 00 01 00 00 2c 01 58 da 00 00 01 00 00 00  |......,.X.......|
; 02ed63:  00 00 00 00 74 1b 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 02ed73:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02ed83:  00 00 00 00 00 00 7f 00 00 00 00 00 c1 00 e4 00  |................|
; 02ed93:  7b 00 26 00 3b 01 09 01 00 00 00 00 03 00 00 00  |{.&.;...........|
; 02eda3:  00 01 00 00 ff ff 01 01 00 00 2c 01 88 db 00 00  |..........,.....|
; 02edb3:  00 00 00 00 e5 8f af e8 be 93 e5 85 a5 e8 8c 83  |................|
; 02edc3:  e5 9b b4 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02edd3:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02ede3:  3f 01 9d 00 7e 00 6f 00 00 01 0b 01 00 00 00 00  |?...~.o.........|
; 02edf3:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 02ee03:  00 00 64 00 b8 dc 00 00 00 00 00 00 74 1d        |..d.........t.|
