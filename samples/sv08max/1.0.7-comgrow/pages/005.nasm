; page 5 'error_tips': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa4a0, 0xa4c0

; object id 0 (page 'error_tips'): x=0, y=0, w=480, h=272, name hash=0x12230f29
; flags=0x37, aph=127, events: event_3=0xc097
; sta=2, pic=2
; 00c25a:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xc097
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0xc4f2
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_c535
    local_589 = "确定"
    jmp lbl_c699

lbl_c535:
    if global_14 != 1 then jump lbl_c566
    local_589 = "Sure"
    jmp lbl_c699

lbl_c566:
    if global_14 != 2 then jump lbl_c59f
    local_589 = "もちろん"
    jmp lbl_c699

lbl_c59f:
    if global_14 != 3 then jump lbl_c5d2
    local_589 = "Gewiss"
    jmp lbl_c699

lbl_c5d2:
    if global_14 != 4 then jump lbl_c605
    local_589 = "Seguro"
    jmp lbl_c699

lbl_c605:
    if global_14 != 5 then jump lbl_c63b
    local_589 = "Bien sûr"
    T 0x5e

lbl_c63b:
    if global_14 != 6 then jump lbl_c66d
    local_589 = "Claro"
    jmp lbl_c699

lbl_c66d:
    if global_14 != 7 then jump lbl_c699
    local_589 = "Certamente"

lbl_c699:
    doevents
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 1 (text 't0'): x=106, y=54, w=268, h=104, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; object id 2 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xc0f7
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
; 00c2fe:  ff ff                                            |..|

; touch_release
.org 0xc0f7
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0xc158
; tim=1000, en=1

; timer
.org 0xc158
    if global_1c <= 0 then jump lbl_c1b4
    if global_20 <= 0 then jump lbl_c1b4
    global_20--
    if global_20 != 0 then jump lbl_c1b4
    dim = global_30

lbl_c1b4:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0xc1ce

; touch_release
.org 0xc1ce
    global_20 = global_18
    dims = global_2c

; data after the object structs, 405 bytes (11 trailing zero bytes dropped)
; 00c34e:  00 00 00 00 00 a5 00 00 01 00 00 00 00 00 00 00  |................|
; 00c35e:  00 00 00 00 e9 87 8d e5 90 af 6b 6c 69 70 70 65  |..........klippe|
; 00c36e:  72 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |r...............|
; 00c37e:  00 00 00 00 94 01 f0 00 4c 00 1f 00 df 01 0e 01  |........L.......|
; 00c38e:  00 00 00 00 01 04 00 00 00 00 72 fe 00 82 a3 10  |..........r.....|
; 00c39e:  a3 10 01 01 00 00 64 00 bc a6 00 00 01 00 00 00  |......d.........|
; 00c3ae:  62 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 00c3be:  00 00 00 00 00 00 00 00 00 00 00 00 e9 87 8d e5  |................|
; 00c3ce:  90 af 66 69 72 6d 77 61 72 65 00 00 49 00 1e 00  |..firmware..I...|
; 00c3de:  dd 00 00 01 00 00 00 00 01 04 00 00 00 00 72 fe  |..............r.|
; 00c3ee:  00 82 a3 10 a3 10 01 01 00 00 64 00 24 a7 00 00  |..........d.$...|
; 00c3fe:  01 00 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 00c40e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00c41e:  00 00 00 00 00 00 7f 00 00 00 00 00 ef 00 e2 00  |................|
; 00c42e:  49 00 1e 00 00 01 ff 00 00 00 00 00 01 04 00 00  |I...............|
; 00c43e:  00 00 72 fe 00 82 a3 10 a3 10 01 01 00 00 64 00  |..r...........d.|
; 00c44e:  8c a7 00 00 01 00 00 00 00 00 00 00 e5 b7 b2 e5  |................|
; 00c45e:  bc 80 e5 90 af 00 7f 00 00 00 00 00 88 00 74 00  |..............t.|
; 00c46e:  6d 00 1e 00 f4 00 91 00 00 00 00 00 03 00 00 00  |m...............|
; 00c47e:  00 00 00 00 e7 a1 ae e5 ae 9a 00 01 7c 3a 00 00  |............|:..|
; 00c48e:  01 00 00 00 00 00 00 00 74 08 01 00 00 00 00 00  |........t.......|
; 00c49e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00c4ae:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00c4be:  13 00 96 00 e5 b7 b2 e5 bc 80 e5 90 af 00 00 00  |................|
; 00c4ce:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00c4de:  ac 3b 00 00 01                                   |.;...|
