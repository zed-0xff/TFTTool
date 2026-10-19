; page 77: 11 objects

; object address table, 11 objects, block loaded at 0xb950
.dd 0xb97c, 0xb9bc, 0xba10, 0xba64, 0xbab8, 0xbb0c, 0xbb60, 0xbbb4
.dd 0xbc08, 0xbc58, 0xbca8

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x958eca5b
; flags=0x37, aph=127
; sta=2, pic=99
; 04b3db:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x4b8eb
    ref 1
    ref 3
    if global_14 != 0 then jump lbl_4b964
    local_6b4c = "前置机型冷却风扇"
    local_6b73 = "后置机型冷却风扇"
    jmp lbl_4bc72

lbl_4b964:
    if global_14 != 1 then jump lbl_4b9c4
    local_6b4c = "Front Model Cool Fan"
    local_6b73 = "Back Model Cool Fan"
    jmp lbl_4bc72

lbl_4b9c4:
    if global_14 != 2 then jump lbl_4ba48
    local_6b4c = "フロントモデルクールファン"
    local_6b73 = "バックモデルクールファン"
    T 0x22a

lbl_4ba48:
    if global_14 != 3 then jump lbl_4baab
    local_6b4c = "Vordermodell-Kühlfan"
    local_6b73 = "Hintermodell-Kühlfan"
    jmp lbl_4bc72

lbl_4baab:
    if global_14 != 4 then jump lbl_4bb2b
    local_6b4c = "Ventilador de Modelo Frente en Cool"
    local_6b73 = "Ventilador de Modelo Trasero en Cool"
    jmp lbl_4bc72

lbl_4bb2b:
    if global_14 != 5 then jump lbl_4bba3
    local_6b4c = "Modèle Avant Ventilateur Cool"
    local_6b73 = "Modèle Arrière Ventilateur Cool"
    jmp lbl_4bc72

lbl_4bba3:
    if global_14 != 6 then jump lbl_4bc10
    local_6b4c = "Fan de Modelo Frente Cool"
    local_6b73 = "Fan de Modelo Traseiro Cool"
    jmp lbl_4bc72

lbl_4bc10:
    if global_14 != 7 then jump lbl_4bc72
    local_6b4c = "Fan Modello Frontale Cool"
    local_6b73 = "Fan Modello Posteriore Cool"

lbl_4bc72:
    doevents
    down
    up
    unload
    down
    up

; object id 1 (slider 'h0'): x=71, y=68, w=269, h=24, name hash=0x2fdc7301
; flags=0x37, aph=127, events: touch_release=0x4b0d1
; 04b41b:  00 00 00 00 00 01 00 ff 64 64 2d 63 ff ff 00 00  |........dd-c....|
; 04b42b:  64 00 00 00 19 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|

; touch_release
.org 0x4b0d1
    prints 0x71, 1
    prints dp, 1
    prints 0, 1
    prints local_6ad7, 2
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    slide
    down
    up

; object id 2 (button 'b0'): x=436, y=0, w=44, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x4b156
; borderc=0x0000, picc=0, picc2=0, pco=0x0000, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 0
; 04b46f:  00 00 00 00 03 00                                |......|
; 04b47f:  ff ff                                            |..|

; touch_release
.org 0x4b156
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (slider 'h1'): x=71, y=148, w=269, h=24, name hash=0x59b36879
; flags=0x37, aph=127, events: touch_release=0x4b1c0
; 04b4c3:  00 00 00 00 00 01 00 ff 64 64 2d 63 ff ff 00 00  |........dd-c....|
; 04b4d3:  64 00 00 00 19 00 00 00 00 00 2d 63 00 00 00 00  |d.........-c....|

; touch_release
.org 0x4b1c0
    prints 0x71, 1
    prints dp, 1
    prints 1, 1
    prints local_6b26, 2
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
    down
    up
    down
    up
    down
    up
    down
    up

; object id 4 (text 't0'): x=72, y=91, w=270, h=23, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="front model cool fan"
; text:
;   0: "前置机型冷却风扇"
;   1: "Front Model Cool Fan"
;   2: "フロントモデルクールファン"
;   3: "Vordermodell-Kühlfan"
;   4: "Ventilador de Modelo Frente en Cool"
;   5: "Modèle Avant Ventilateur Cool"
;   6: "Fan de Modelo Frente Cool"
;   7: "Fan Modello Frontale Cool"

; object id 5 (text 't1'): x=72, y=171, w=270, h=23, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="back model cool fan"
; text:
;   0: "后置机型冷却风扇"
;   1: "Back Model Cool Fan"
;   2: "バックモデルクールファン"
;   3: "Hintermodell-Kühlfan"
;   4: "Ventilador de Modelo Trasero en Cool"
;   5: "Modèle Arrière Ventilateur Cool"
;   6: "Fan de Modelo Traseiro Cool"
;   7: "Fan Modello Posteriore Cool"

; object id 6 (text 't4'): x=368, y=68, w=20, h=23, name hash=0x1d54e28e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="%"

; object id 7 (text 't5'): x=367, y=147, w=20, h=23, name hash=0x6b3bf9f6
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="%"

; object id 8 (number 'n0'): x=335, y=63, w=30, h=30, name hash=0x709e71ec
; flags=0x37, aph=127
; font=0, pco=0xffff, xcen=2, ycen=1, val=0
; 04b667:  00 00 00 00 03 00 00 00 00                       |.........|
; 04b67b:  00 00 00 00 01 00 00 00                          |........|

; object id 9 (number 'n1'): x=335, y=142, w=30, h=30, name hash=0x6f16a94
; flags=0x37, aph=127
; font=0, pco=0xffff, xcen=2, ycen=1, val=0
; 04b6b7:  00 00 00 00 03 00 00 00 00                       |.........|
; 04b6cb:  00 00 00 00 01 00 00 00                          |........|

; object id 10 (button 'b1'): x=390, y=30, w=52, h=52, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x4b2e1
; borderc=0x0000, picc=98, picc2=95, pco=0x0000, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 1
; 04b717:  ff ff                                            |..|

; touch_release
.org 0x4b2e1
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 443 bytes (5 trailing zero bytes dropped)
; 04b727:  00 00 00 00 00 00 1a 00 38 01 7b 00 00 00 00 00  |........8.{.....|
; 04b737:  66 72 6f 6e 74 20 6d 6f 64 65 6c 20 63 6f 6f 6c  |front model cool|
; 04b747:  20 66 61 6e 00 00 00 00 00 00 00 00 74 0b 00 00  | fan........t...|
; 04b757:  00 00 00 00 e4 b8 8a e4 b8 80 e6 ad a5 00 00 00  |................|
; 04b767:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 04b777:  00 00 00 00 71 00 8b 00 f7 00 1a 00 67 01 a4 00  |....q.......g...|
; 04b787:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 04b797:  00 00 64 00 1c c3 00 00 62 61 63 6b 20 6d 6f 64  |..d.....back mod|
; 04b7a7:  65 6c 20 63 6f 6f 6c 20 66 61 6e 00 00 00 00 00  |el cool fan.....|
; 04b7b7:  00 00 00 00 00 00 00 00 00 00 00 00 e5 bc 80 e5  |................|
; 04b7c7:  a7 8b 00 00 00 00 00 00 71 00 ae 00 f7 00 1a 00  |........q.......|
; 04b7d7:  67 01 c7 00 30 73 00 00 03 00 00 00 00 00 00 00  |g...0s..........|
; 04b7e7:  ff ff 00 01 00 00 64 00 84 c3 00 00 00 00 00 00  |......d.........|
; 04b7f7:  00 00 00 00 34 0d 00 00 00 00 00 00 00 00 00 00  |....4...........|
; 04b807:  25 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |%...b...........|
; 04b817:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04b827:  00 00 00 00 76 69 62 72 61 74 69 6f 6e 00 35 00  |....vibration.5.|
; 04b837:  22 00 22 00 6e 00 56 00 00 00 00 00 00 00 00 00  |".".n.V.........|
; 04b847:  00 00 60 00 60 00 ff ff ff ff 01 01 00 00 0a 00  |..`.`...........|
; 04b857:  ec c3 00 00 00 00 00 00 62 0f 00 00 00 00 00 00  |........b.......|
; 04b867:  00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00  |........%.......|
; 04b877:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 04b887:  4d 00 5d 00 22 00 22 00 6e 00 7e 00 00 00 00 00  |M.].".".n.~.....|
; 04b897:  00 00 00 00 00 00 60 00 60 00 ff ff ff ff 01 01  |......`.`.......|
; 04b8a7:  00 00 0a 00 f8 c3 00 00 00 00 00 00 62 10 00 00  |............b...|
; 04b8b7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04b8c7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 04b8d7:  00 00 00 00 4d 00 86 00 22 00 22                 |....M..."."|
