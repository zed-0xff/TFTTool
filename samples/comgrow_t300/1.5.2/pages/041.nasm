; page 41 'keyboard': 26 objects

; object address table, 26 objects, block loaded at 0xa3a4
.dd 0xa40c, 0xa44c, 0xa488, 0xa4dc, 0xa530, 0xa584, 0xa5d8, 0xa62c
.dd 0xa680, 0xa6d4, 0xa728, 0xa77c, 0xa7d0, 0xa824, 0xa878, 0xa8cc
.dd 0xa920, 0xa974, 0xa9c8, 0xaa1c, 0xaa2c, 0xaa3c, 0xaa4c, 0xaa5c
.dd 0xaab0, 0xaad0

; object id 0 (page 'keyboard'): x=0, y=0, w=480, h=272, name hash=0x516cb0bf
; flags=0x37, aph=127, events: event_3=0x2c420
; sta=0, pic=0
; 02d2f5:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2c420
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x2dba9
    ref 24
    ref 25
    if global_14 != 0 then jump lbl_2dbf7
    local_3d19 = "可输入范围"
    jmp lbl_2ddc9

lbl_2dbf7:
    if global_14 != 1 then jump lbl_2dc33
    local_3d19 = "The input range"
    jmp lbl_2ddc9

lbl_2dc33:
    if global_14 != 2 then jump lbl_2dc75
    local_3d19 = "入力範囲はです"
    jmp lbl_2ddc9

lbl_2dc75:
    if global_14 != 3 then jump lbl_2dcbd
    local_3d19 = "Der Eingabebereich beträgt"
    jmp lbl_2ddc9

lbl_2dcbd:
    if global_14 != 4 then jump lbl_2dd01
    local_3d19 = "El rango de entrada es "
    jmp lbl_2ddc9

lbl_2dd01:
    if global_14 != 5 then jump lbl_2dd48
    local_3d19 = "La plage d'entrée est de "
    jmp lbl_2ddc9

lbl_2dd48:
    if global_14 != 6 then jump lbl_2dd8e
    local_3d19 = "L'intervallo di input è "
    jmp lbl_2ddc9

lbl_2dd8e:
    if global_14 != 7 then jump lbl_2ddc9
    local_3d19 = "L'intervallo di input è "

lbl_2ddc9:
    if global_0 != 0 then jump lbl_2ddfb
    local_3c9e = "0~300"
    jmp lbl_2de22

lbl_2ddfb:
    if global_0 != 1 then jump lbl_2de22
    local_3c9e = "0~100"

lbl_2de22:
    doevents
    down
    up

; object id 1 (crop 'q0'): x=0, y=0, w=480, h=270, name hash=0x32aa1f99
; flags=0x37, aph=110
; picc=71

; object id 2 (button 'b0'): x=128, y=43, w=51, h=50, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2c480
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d379:  00 01                                            |..|
; 02d381:  ff ff                                            |..|

; touch_release
.org 0x2c480
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2c56c
    local_3cda += "1"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2c523
    if local_3cfc <= 300 then jump lbl_2c55d
    local_3cda -= 1
    jmp lbl_2c55d

lbl_2c523:
    if global_0 != 1 then jump lbl_2c55d
    if local_3cfc <= 100 then jump lbl_2c55d
    local_3cda -= 1

lbl_2c55d:
    local_3cc5 = local_3cda

lbl_2c56c:
    down
    up

; object id 3 (button 'b1'): x=186, y=43, w=51, h=50, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x2c586
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d3cd:  00 01                                            |..|
; 02d3d5:  ff ff                                            |..|

; touch_release
.org 0x2c586
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2c672
    local_3cda += "2"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2c629
    if local_3cfc <= 300 then jump lbl_2c663
    local_3cda -= 1
    jmp lbl_2c663

lbl_2c629:
    if global_0 != 1 then jump lbl_2c663
    if local_3cfc <= 100 then jump lbl_2c663
    local_3cda -= 1

lbl_2c663:
    local_3cc5 = local_3cda

lbl_2c672:
    down
    up

; object id 4 (button 'b2'): x=243, y=43, w=51, h=50, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x2c68c
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d421:  00 01                                            |..|
; 02d429:  ff ff                                            |..|

; touch_release
.org 0x2c68c
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2c778
    local_3cda += "3"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2c72f
    if local_3cfc <= 300 then jump lbl_2c769
    local_3cda -= 1
    jmp lbl_2c769

lbl_2c72f:
    if global_0 != 1 then jump lbl_2c769
    if local_3cfc <= 100 then jump lbl_2c769
    local_3cda -= 1

lbl_2c769:
    local_3cc5 = local_3cda

lbl_2c778:
    down
    up

; object id 5 (button 'b3'): x=300, y=43, w=51, h=50, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x2c792
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d475:  00 01                                            |..|
; 02d47d:  ff ff                                            |..|

; touch_release
.org 0x2c792
    prints 0x71, 1
    local_3cda -= 1
    local_3cc5 = local_3cda
    down
    up

; object id 6 (button 'b4'): x=128, y=101, w=51, h=50, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x2c7d5
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d4c9:  00 01                                            |..|
; 02d4d1:  ff ff                                            |..|

; touch_release
.org 0x2c7d5
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2c8c1
    local_3cda += "4"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2c878
    if local_3cfc <= 300 then jump lbl_2c8b2
    local_3cda -= 1
    jmp lbl_2c8b2

lbl_2c878:
    if global_0 != 1 then jump lbl_2c8b2
    if local_3cfc <= 100 then jump lbl_2c8b2
    local_3cda -= 1

lbl_2c8b2:
    local_3cc5 = local_3cda

lbl_2c8c1:
    down
    up

; object id 7 (button 'b5'): x=186, y=101, w=51, h=50, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x2c8db
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d51d:  00 01                                            |..|
; 02d525:  ff ff                                            |..|

; touch_release
.org 0x2c8db
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2c9c7
    local_3cda += "5"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2c97e
    if local_3cfc <= 300 then jump lbl_2c9b8
    local_3cda -= 1
    jmp lbl_2c9b8

lbl_2c97e:
    if global_0 != 1 then jump lbl_2c9b8
    if local_3cfc <= 100 then jump lbl_2c9b8
    local_3cda -= 1

lbl_2c9b8:
    local_3cc5 = local_3cda

lbl_2c9c7:
    down
    up

; object id 8 (button 'b6'): x=243, y=101, w=51, h=50, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0x2c9e1
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d571:  00 01                                            |..|
; 02d579:  ff ff                                            |..|

; touch_release
.org 0x2c9e1
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2cacd
    local_3cda += "6"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2ca84
    if local_3cfc <= 300 then jump lbl_2cabe
    local_3cda -= 1
    jmp lbl_2cabe

lbl_2ca84:
    if global_0 != 1 then jump lbl_2cabe
    if local_3cfc <= 100 then jump lbl_2cabe
    local_3cda -= 1

lbl_2cabe:
    local_3cc5 = local_3cda

lbl_2cacd:
    down
    up

; object id 9 (button 'b7'): x=300, y=101, w=51, h=50, name hash=0x89d629e9
; flags=0x37, aph=127, events: touch_release=0x2cae7
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 02d5c5:  00 01                                            |..|
; 02d5cd:  ff ff                                            |..|

; touch_release
.org 0x2cae7
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 10 (button 'b8'): x=128, y=158, w=51, h=50, name hash=0x7021892f
; flags=0x37, aph=127, events: touch_release=0x2cb51
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d619:  00 01                                            |..|
; 02d621:  ff ff                                            |..|

; touch_release
.org 0x2cb51
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2cc3d
    local_3cda += "7"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2cbf4
    if local_3cfc <= 300 then jump lbl_2cc2e
    local_3cda -= 1
    jmp lbl_2cc2e

lbl_2cbf4:
    if global_0 != 1 then jump lbl_2cc2e
    if local_3cfc <= 100 then jump lbl_2cc2e
    local_3cda -= 1

lbl_2cc2e:
    local_3cc5 = local_3cda

lbl_2cc3d:
    down
    up

; object id 11 (button 'b9'): x=186, y=158, w=51, h=50, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x2cc57
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d66d:  00 01                                            |..|
; 02d675:  ff ff                                            |..|

; touch_release
.org 0x2cc57
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2cd43
    local_3cda += "8"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2ccfa
    if local_3cfc <= 300 then jump lbl_2cd34
    local_3cda -= 1
    jmp lbl_2cd34

lbl_2ccfa:
    if global_0 != 1 then jump lbl_2cd34
    if local_3cfc <= 100 then jump lbl_2cd34
    local_3cda -= 1

lbl_2cd34:
    local_3cc5 = local_3cda

lbl_2cd43:
    down
    up

; object id 12 (button 'b10'): x=243, y=158, w=51, h=50, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x2cd5d
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d6c1:  00 01                                            |..|
; 02d6c9:  ff ff                                            |..|

; touch_release
.org 0x2cd5d
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2ce49
    local_3cda += "9"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2ce00
    if local_3cfc <= 300 then jump lbl_2ce3a
    local_3cda -= 1
    jmp lbl_2ce3a

lbl_2ce00:
    if global_0 != 1 then jump lbl_2ce3a
    if local_3cfc <= 100 then jump lbl_2ce3a
    local_3cda -= 1

lbl_2ce3a:
    local_3cc5 = local_3cda

lbl_2ce49:
    down
    up

; object id 13 (button 'b11'): x=128, y=216, w=51, h=50, name hash=0x1e12f319
; flags=0x37, aph=127, events: touch_release=0x2ce63
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d715:  00 01                                            |..|
; 02d71d:  ff ff                                            |..|

; touch_release
.org 0x2ce63
    prints 0x71, 1
    down
    up

; object id 14 (button 'b12'): x=185, y=216, w=51, h=50, name hash=0x8e9b9756
; flags=0x37, aph=127, events: touch_release=0x2ce8b
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d769:  00 01                                            |..|
; 02d771:  ff ff                                            |..|

; touch_release
.org 0x2ce8b
    prints 0x71, 1
    btlen local_3cda, local_3ce6
    if local_3ce6 >= local_3cf1 then jump lbl_2cf77
    local_3cda += "0"
    covx local_3cda, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2cf2e
    if local_3cfc <= 300 then jump lbl_2cf68
    local_3cda -= 1
    jmp lbl_2cf68

lbl_2cf2e:
    if global_0 != 1 then jump lbl_2cf68
    if local_3cfc <= 100 then jump lbl_2cf68
    local_3cda -= 1

lbl_2cf68:
    local_3cc5 = local_3cda

lbl_2cf77:
    down
    up

; object id 15 (button 'b13'): x=243, y=216, w=51, h=50, name hash=0x2a3bffe
; flags=0x37, aph=127, events: touch_release=0x2cf91
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d7bd:  00 01                                            |..|
; 02d7c5:  ff ff                                            |..|

; touch_release
.org 0x2cf91
    prints 0x71, 1
    down
    up

; object id 16 (button 'b14'): x=300, y=158, w=51, h=108, name hash=0xab48427f
; flags=0x37, aph=127, events: touch_release=0x2cfb9
; borderc=0x0000, picc=38, picc2=39, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=1, txt=""
; 02d811:  00 01                                            |..|
; 02d819:  ff ff                                            |..|

; touch_release
.org 0x2cfb9
    covx local_3cc5, local_3cfc, 0, 0
    if global_0 != 0 then jump lbl_2d015
    if local_3cfc <= 300 then jump lbl_2d050
    local_3cfc = 300
    jmp lbl_2d050

lbl_2d015:
    if global_0 != 1 then jump lbl_2d050
    if local_3cfc <= 100 then jump lbl_2d050
    local_3cfc = 100

lbl_2d050:
    prints 0x71, 1
    prints global_c, 1
    prints global_0, 1
    prints local_3cfc, 2
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
; sta=3, font=0, pco=0xf800, xcen=0, ycen=1, txt_maxl=100, isbr=1, background=0, txt="0~300"
; text:
;   7: "0~100"

; object id 18 (text 'show'): x=301, y=11, w=59, h=22, name hash=0x8c473f82
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=1, background=0, txt="0"

; object id 19 (variable 'input'): x=0, y=0, w=1, h=1, name hash=0x94c6a60d
; sta=1, val=0
; 02d8d1:  34 13 00 07                                      |4...|
; 02d8d6:  00 0a 00 78 ac 00 00                             |...x...|

; object id 20 (variable 'temp'): x=0, y=0, w=1, h=1, name hash=0xf6182fd8
; sta=0, val=0
; 02d8e1:  34 14 00 07                                      |4...|

; object id 21 (variable 'inputlenth'): x=0, y=0, w=1, h=1, name hash=0x18d4148b
; sta=0, val=3
; 02d8f1:  34 15 00 07                                      |4...|

; object id 22 (variable 'va0'): x=0, y=0, w=1, h=1, name hash=0xcbcbac4e
; sta=0, val=0
; 02d901:  34 16 00 07                                      |4...|

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
; flags=0x27, events: timer=0x2d121
; tim=1000, en=1

; timer
.org 0x2d121
    if global_1c <= 0 then jump lbl_2d17d
    if global_20 <= 0 then jump lbl_2d17d
    global_20--
    if global_20 != 0 then jump lbl_2d17d
    dim = global_30

lbl_2d17d:
    down
    up

; object id 25 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2d197

; touch_release
.org 0x2d197
    global_20 = global_18
    dims = global_2c

; data after the object structs, 503 bytes (9 trailing zero bytes dropped)
; 02d9a5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02d9b5:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 e4 00  |................|
; 02d9c5:  7b 00 26 00 bb 00 09 01 00 83 ad e5 ba 8a e6 b8  |{.&.............|
; 02d9d5:  a9 e5 ba a6 00 ff 01 01 00 00 2c 01 e4 c1 00 00  |..........,.....|
; 02d9e5:  00 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00  |................|
; 02d9f5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02da05:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02da15:  00 00 9d 00 7e 00 6f 00 3d 01 0b 01 00 00 00 00  |....~.o.=.......|
; 02da25:  00 00 00 00 00 00 1a 00 00 00 ff ff ff ff 01 01  |................|
; 02da35:  e5 85 a8 e9 00 a8 e5 9b 9e e9 9b b6 00 00 00 00  |................|
; 02da45:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02da55:  00 00 00 00 00 00 00 00 30 7e 33 30 30 00 7f 00  |........0~300...|
; 02da65:  00 00 00 00 14 ff d0 00 32 00 10 00 45 ff df 00  |........2...E...|
; 02da75:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 02da85:  00 00 2c 01 7c c3 00 00 01 00 00 00 00 00 00 00  |..,.|...........|
; 02da95:  74 1a 00 00 00 00 00 00 00 86 8d e6 ac a1 e6 89  |t...............|
; 02daa5:  93 e5 8d b0 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02dab5:  00 00 7f 00 00 00 00 00 00 ff d0 00 21 00 10 00  |............!...|
; 02dac5:  30 00 81 e9 87 8f 2d 00 03 00 00 00 00 01 00 00  |0.....-.........|
; 02dad5:  ff ff 00 01 00 00 2c 01 ac c4 00 00 01 00 00 00  |......,.........|
; 02dae5:  00 00 00 00 74 1b 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 02daf5:  00 00 00 00 00 00 00 00 e6 8c a4 e5 87 ba 00 00  |................|
; 02db05:  00 00 00 00 00 00 7f 00 00 00 00 00 c1 00 e4 00  |................|
; 02db15:  7b 00 26 00 3b 01 09 01 00 00 00 00 03 00 00 00  |{.&.;...........|
; 02db25:  00 01 00 00 ff ff 01 01 00 b5 81 e9 87 8f 2b 00  |..............+.|
; 02db35:  00 00 00 00 e5 8f af e8 be 93 e5 85 a5 e8 8c 83  |................|
; 02db45:  e5 9b b4 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02db55:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02db65:  e5 9b 9e e9 80 80 00 00 00 01 0b 01 00 00 00 00  |................|
; 02db75:  00 00 00 00 00 00 1a 00 1a 00 ff ff ff ff 01 01  |................|
; 02db85:  00 00 64 00 0c c7 00 00 00 00 00 00 74 1d 00 00  |..d.........t...|
; 02db95:  e9 80 9f e5 ba a6 2d                             |......-|
