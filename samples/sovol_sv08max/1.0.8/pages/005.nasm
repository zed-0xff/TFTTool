; page 5 'error_tips': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba4c, 0xba6c

; object id 0 (page 'error_tips'): x=0, y=0, w=480, h=272, name hash=0x12230f29
; flags=0x37, aph=127, events: event_3=0xd99d
; sta=2, pic=2
; 00db60:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xd99d
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0xddf8
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_de3b
    local_600 = "确定"
    jmp lbl_df9f

lbl_de3b:
    if global_14 != 1 then jump lbl_de6c
    local_600 = "Sure"
    jmp lbl_df9f

lbl_de6c:
    if global_14 != 2 then jump lbl_dea5
    local_600 = "もちろん"
    jmp lbl_df9f

lbl_dea5:
    if global_14 != 3 then jump lbl_ded8
    local_600 = "Gewiss"
    jmp lbl_df9f

lbl_ded8:
    if global_14 != 4 then jump lbl_df0b
    local_600 = "Seguro"
    jmp lbl_df9f

lbl_df0b:
    if global_14 != 5 then jump lbl_df41
    local_600 = "Bien sûr"
    T 0x5e

lbl_df41:
    if global_14 != 6 then jump lbl_df73
    local_600 = "Claro"
    jmp lbl_df9f

lbl_df73:
    if global_14 != 7 then jump lbl_df9f
    local_600 = "Certamente"

lbl_df9f:
    doevents
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 1 (text 't0'): x=106, y=54, w=268, h=104, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; object id 2 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xd9fd
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确定"
; text:
;   0: "确定"
;   1: "Sure"
;   2: "もちろん"
;   3: "Gewiss"
;   4: "Seguro"
;   5: "Bien sûr"
;   6: "Claro"
;   7: "Certamente"
; touch_release reports to the host: page <page>, widget 0
; 00dc04:  ff ff                                            |..|

; touch_release
.org 0xd9fd
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0xda5e
; tim=1000, en=1

; timer
.org 0xda5e
    if global_1c <= 0 then jump lbl_daba
    if global_20 <= 0 then jump lbl_daba
    global_20--
    if global_20 != 0 then jump lbl_daba
    dim = global_30

lbl_daba:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0xdad4

; touch_release
.org 0xdad4
    global_20 = global_18
    dims = global_2c

; data after the object structs, 405 bytes (11 trailing zero bytes dropped)
; 00dc54:  00 00 00 00 00 00 2c 01 c8 bb 00 00 01 00 00 00  |......,.........|
; 00dc64:  00 00 00 00 62 04 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 00dc74:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00dc84:  00 00 00 00 00 00 7f 00 00 00 00 00 6b 00 ac 00  |............k...|
; 00dc94:  80 00 27 00 ea 00 d2 00 00 00 00 00 00 00 00 00  |..'.............|
; 00dca4:  00 00 04 00 05 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 00dcb4:  f8 bc 00 00 01 00 00 00 00 00 00 00 e9 87 8d e5  |................|
; 00dcc4:  90 af 6b 6c 69 70 70 65 72 00 00 00 00 00 00 00  |..klipper.......|
; 00dcd4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00dce4:  95 00 e3 00 49 00 1e 00 dd 00 00 01 00 00 00 00  |....I...........|
; 00dcf4:  01 04 00 00 00 00 72 fe 00 82 a3 10 a3 10 01 01  |......r.........|
; 00dd04:  00 00 64 00 d8 bc 00 00 01 00 00 00 62 15 00 00  |..d.........b...|
; 00dd14:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00dd24:  00 00 00 00 e9 87 8d e5 90 af 66 69 72 6d 77 61  |..........firmwa|
; 00dd34:  72 65 00 00 ef 00 e2 00 49 00 1e 00 37 01 ff 00  |re......I...7...|
; 00dd44:  00 00 00 00 01 04 00 00 00 00 72 fe 00 82 a3 10  |..........r.....|
; 00dd54:  a3 10 01 01 00 00 64 00 40 bd 00 00 01 00 00 00  |......d.@.......|
; 00dd64:  00 00 00 00 e5 b7 b2 e5 bc 80 e5 90 af 00 74 00  |..............t.|
; 00dd74:  6d 00 1e 00 f4 00 91 00 00 00 00 00 03 00 00 00  |m...............|
; 00dd84:  00 00 00 00 e7 a1 ae e5 ae 9a 00 01 00 40 00 00  |.............@..|
; 00dd94:  01 00 00 00 00 00 00 00 74 08 01 00 00 00 00 00  |........t.......|
; 00dda4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00ddb4:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00ddc4:  13 00 96 00 72 00 1e 00 84 00 b3 00 e5 b7 b2 e5  |....r...........|
; 00ddd4:  bc 80 e5 90 af 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00dde4:  80 41 00 00 01                                   |.A...|
