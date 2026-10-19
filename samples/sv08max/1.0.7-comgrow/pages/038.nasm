; page 38 'move_error': 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa4a4, 0xa4c4, 0xa4e4

; object id 0 (page 'move_error'): x=0, y=0, w=480, h=272, name hash=0xe21cd9eb
; flags=0x37, aph=127, events: event_3=0x297b2
; sta=2, pic=4
; 0299e9:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x297b2
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x29d3d
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_29d88
    local_36a3 = "重启firmware"
    jmp lbl_29f5f

lbl_29d88:
    if global_14 != 1 then jump lbl_29dc5
    local_36a3 = "Restart firmware"
    jmp lbl_29f5f

lbl_29dc5:
    if global_14 != 2 then jump lbl_29e1c
    local_36a3 = "ファームウェアを再起動します"
    jmp lbl_29f5f

lbl_29e1c:
    if global_14 != 3 then jump lbl_29e5d
    local_36a3 = "Firmware neu starten"
    jmp lbl_29f5f

lbl_29e5d:
    if global_14 != 4 then jump lbl_29e9f
    local_36a3 = "Reiniciar el firmware"
    jmp lbl_29f5f

lbl_29e9f:
    if global_14 != 5 then jump lbl_29ee8
    local_36a3 = "Redémarrer le micrologiciel"
    jmp lbl_29f5f

lbl_29ee8:
    if global_14 != 6 then jump lbl_29f28
    local_36a3 = "Reinicie o firmware"
    jmp lbl_29f5f

lbl_29f28:
    if global_14 != 7 then jump lbl_29f5f
    local_36a3 = "Riavviare il firmware"

lbl_29f5f:
    if global_14 != 0 then jump lbl_29f92
    local_3665 = "确定"
    jmp lbl_2a0f6

lbl_29f92:
    if global_14 != 1 then jump lbl_29fc3
    local_3665 = "Sure"
    jmp lbl_2a0f6

lbl_29fc3:
    if global_14 != 2 then jump lbl_29ffc
    local_3665 = "もちろん"
    jmp lbl_2a0f6

lbl_29ffc:
    if global_14 != 3 then jump lbl_2a02f
    local_3665 = "Gewiss"
    jmp lbl_2a0f6

lbl_2a02f:
    if global_14 != 4 then jump lbl_2a062
    local_3665 = "Seguro"
    jmp lbl_2a0f6

lbl_2a062:
    if global_14 != 5 then jump lbl_2a098
    local_3665 = "Bien sûr"
    T 0x5e

lbl_2a098:
    if global_14 != 6 then jump lbl_2a0ca
    local_3665 = "Claro"
    jmp lbl_2a0f6

lbl_2a0ca:
    if global_14 != 7 then jump lbl_2a0f6
    local_3665 = "Certamente"

lbl_2a0f6:
    doevents
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 1 (text 't0'): x=105, y=55, w=268, h=103, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; object id 2 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x29812
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
; 029a8d:  ff ff                                            |..|

; touch_release
.org 0x29812
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x29873
; tim=1000, en=1

; timer
.org 0x29873
    if global_1c <= 0 then jump lbl_298cf
    if global_20 <= 0 then jump lbl_298cf
    global_20--
    if global_20 != 0 then jump lbl_298cf
    dim = global_30

lbl_298cf:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x298e9

; touch_release
.org 0x298e9
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x29921
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
; 029b21:  ff ff                                            |..|

; touch_release
.org 0x29921
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 516 bytes (4 trailing zero bytes dropped)
; 029b31:  00 00 00 00 00 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 029b41:  80 ab 00 00 01 00 00 00 62 04 00 00 00 00 00 00  |........b.......|
; 029b51:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029b61:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 029b71:  00 00 07 00 3d 00 36 00 3c 00 3c 00 00 00 00 00  |....=.6.<.<.....|
; 029b81:  00 00 00 00 00 00 28 00 29 00 ff ff ff ff 01 01  |......(.).......|
; 029b91:  00 00 64 00 e8 ab 00 00 01 00 00 00 62 05 00 00  |..d.........b...|
; 029ba1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029bb1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 029bc1:  00 00 00 00 00 00 50 00 3d 00 36 00 3c 00 85 00  |......P.=.6.<...|
; 029bd1:  00 00 00 00 00 00 00 00 00 00 28 00 29 00 ff ff  |..........(.)...|
; 029be1:  ff ff 01 01 00 00 64 00 50 ac 00 00 01 00 00 00  |......d.P.......|
; 029bf1:  62 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 029c01:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029c11:  00 00 7f 00 00 00 00 00 00 00 91 00 3d 00 36 00  |............=.6.|
; 029c21:  3c 00 c6 00 00 00 00 00 00 00 00 00 00 00 28 00  |<.............(.|
; 029c31:  29 00 ff ff ff ff 01 01 00 00 64 00 b8 ac 00 00  |).........d.....|
; 029c41:  01 00 00 00 62 07 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 029c51:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029c61:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 d3 00  |................|
; 029c71:  3d 00 36 00 3c 00 08 01 00 00 00 00 00 00 00 00  |=.6.<...........|
; 029c81:  00 00 28 00 29 00 ff ff ff ff 01 01 00 00 64 00  |..(.).........d.|
; 029c91:  20 ad 00 00 01 00 00 00 62 08 00 00 00 00 00 00  | .......b.......|
; 029ca1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029cb1:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 029cc1:  43 00 06 00 7c 00 23 00 be 00 28 00 e9 87 8d e5  |C...|.#...(.....|
; 029cd1:  90 af 66 69 72 6d 77 61 72 65 00 ff ff ff 01 01  |..firmware......|
; 029ce1:  00 00 64 00 88 ad 00 00 01 00 00 00 62 0a 00 00  |..d.........b...|
; 029cf1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 029d01:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 029d11:  00 00 00 00 63 01 05 00 7c 00 23 00 de 01 27 00  |....c...|.#...'.|
; 029d21:  00 00 00 00 00 00 00 00 00 00 28 00 29 00 ff ff  |..........(.)...|
; 029d31:  ff ff 01 01                                      |....|
