; page 38 'move_error': 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba50, 0xba70, 0xba90

; object id 0 (page 'move_error'): x=0, y=0, w=480, h=272, name hash=0xe21cd9eb
; flags=0x37, aph=127, events: event_3=0x2b358
; sta=2, pic=4
; 02b58f:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2b358
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x2b8e3
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_2b92e
    local_37dc = "重启firmware"
    jmp lbl_2bb05

lbl_2b92e:
    if global_14 != 1 then jump lbl_2b96b
    local_37dc = "Restart firmware"
    jmp lbl_2bb05

lbl_2b96b:
    if global_14 != 2 then jump lbl_2b9c2
    local_37dc = "ファームウェアを再起動します"
    jmp lbl_2bb05

lbl_2b9c2:
    if global_14 != 3 then jump lbl_2ba03
    local_37dc = "Firmware neu starten"
    jmp lbl_2bb05

lbl_2ba03:
    if global_14 != 4 then jump lbl_2ba45
    local_37dc = "Reiniciar el firmware"
    jmp lbl_2bb05

lbl_2ba45:
    if global_14 != 5 then jump lbl_2ba8e
    local_37dc = "Redémarrer le micrologiciel"
    jmp lbl_2bb05

lbl_2ba8e:
    if global_14 != 6 then jump lbl_2bace
    local_37dc = "Reinicie o firmware"
    jmp lbl_2bb05

lbl_2bace:
    if global_14 != 7 then jump lbl_2bb05
    local_37dc = "Riavviare il firmware"

lbl_2bb05:
    if global_14 != 0 then jump lbl_2bb38
    local_379e = "确定"
    jmp lbl_2bc9c

lbl_2bb38:
    if global_14 != 1 then jump lbl_2bb69
    local_379e = "Sure"
    jmp lbl_2bc9c

lbl_2bb69:
    if global_14 != 2 then jump lbl_2bba2
    local_379e = "もちろん"
    jmp lbl_2bc9c

lbl_2bba2:
    if global_14 != 3 then jump lbl_2bbd5
    local_379e = "Gewiss"
    jmp lbl_2bc9c

lbl_2bbd5:
    if global_14 != 4 then jump lbl_2bc08
    local_379e = "Seguro"
    jmp lbl_2bc9c

lbl_2bc08:
    if global_14 != 5 then jump lbl_2bc3e
    local_379e = "Bien sûr"
    T 0x5e

lbl_2bc3e:
    if global_14 != 6 then jump lbl_2bc70
    local_379e = "Claro"
    jmp lbl_2bc9c

lbl_2bc70:
    if global_14 != 7 then jump lbl_2bc9c
    local_379e = "Certamente"

lbl_2bc9c:
    doevents
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 1 (text 't0'): x=105, y=55, w=268, h=103, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; object id 2 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2b3b8
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确定"
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
; 02b633:  ff ff                                            |..|

; touch_release
.org 0x2b3b8
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2b419
; tim=1000, en=1

; timer
.org 0x2b419
    if global_1c <= 0 then jump lbl_2b475
    if global_20 <= 0 then jump lbl_2b475
    global_20--
    if global_20 != 0 then jump lbl_2b475
    dim = global_30

lbl_2b475:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2b48f

; touch_release
.org 0x2b48f
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x2b4c7
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="重启firmware"
; text:
;   0: "重启firmware"
;   1: "Restart firmware"
;   2: "ファームウェアを再起動します"
;   3: "Firmware neu starten"
;   4: "Reiniciar el firmware"
;   5: "Redémarrer le micrologiciel"
;   6: "Reinicie o firmware"
;   7: "Riavviare il firmware"
; touch_release reports to the host: page <page>, widget 1
; 02b6c7:  ff ff                                            |..|

; touch_release
.org 0x2b4c7
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 516 bytes (4 trailing zero bytes dropped)
; 02b6d7:  00 00 00 00 00 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 02b6e7:  2c c1 00 00 01 00 00 00 62 04 00 00 00 00 00 00  |,.......b.......|
; 02b6f7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b707:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02b717:  00 00 07 00 3d 00 36 00 3c 00 3c 00 00 00 00 00  |....=.6.<.<.....|
; 02b727:  00 00 00 00 00 00 28 00 29 00 ff ff ff ff 01 01  |......(.).......|
; 02b737:  00 00 64 00 94 c1 00 00 01 00 00 00 62 05 00 00  |..d.........b...|
; 02b747:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b757:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02b767:  00 00 00 00 00 00 50 00 3d 00 36 00 3c 00 85 00  |......P.=.6.<...|
; 02b777:  00 00 00 00 00 00 00 00 00 00 28 00 29 00 ff ff  |..........(.)...|
; 02b787:  ff ff 01 01 00 00 64 00 fc c1 00 00 01 00 00 00  |......d.........|
; 02b797:  62 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02b7a7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b7b7:  00 00 7f 00 00 00 00 00 00 00 91 00 3d 00 36 00  |............=.6.|
; 02b7c7:  3c 00 c6 00 00 00 00 00 00 00 00 00 00 00 28 00  |<.............(.|
; 02b7d7:  29 00 ff ff ff ff 01 01 00 00 64 00 64 c2 00 00  |).........d.d...|
; 02b7e7:  01 00 00 00 62 07 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 02b7f7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b807:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 d3 00  |................|
; 02b817:  3d 00 36 00 3c 00 08 01 00 00 00 00 00 00 00 00  |=.6.<...........|
; 02b827:  00 00 28 00 29 00 ff ff ff ff 01 01 00 00 64 00  |..(.).........d.|
; 02b837:  cc c2 00 00 01 00 00 00 62 08 00 00 00 00 00 00  |........b.......|
; 02b847:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b857:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02b867:  43 00 06 00 ce 00 23 00 10 01 28 00 e9 87 8d e5  |C.....#...(.....|
; 02b877:  90 af 66 69 72 6d 77 61 72 65 00 ff ff ff 01 01  |..firmware......|
; 02b887:  00 00 64 00 34 c3 00 00 01 00 00 00 62 0a 00 00  |..d.4.......b...|
; 02b897:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b8a7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02b8b7:  00 00 00 00 d0 01 00 00 0f 00 07 00 de 01 06 00  |................|
; 02b8c7:  00 00 00 00 00 00 00 00 00 00 28 00 29 00 ff ff  |..........(.)...|
; 02b8d7:  ff ff 01 01                                      |....|
