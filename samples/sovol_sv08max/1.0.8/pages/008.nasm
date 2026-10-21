; page 8: 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xe90, 0xb9fc, 0xba1c, 0xee4

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x1f31f41b
; flags=0x37, aph=127, events: event_3=0xff51
; sta=2, pic=2
; 010138:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xff51
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x1024c
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_1028f
    local_bbd = "确定"
    jmp lbl_103f3

lbl_1028f:
    if global_14 != 1 then jump lbl_102c0
    local_bbd = "Sure"
    jmp lbl_103f3

lbl_102c0:
    if global_14 != 2 then jump lbl_102f9
    local_bbd = "もちろん"
    jmp lbl_103f3

lbl_102f9:
    if global_14 != 3 then jump lbl_1032c
    local_bbd = "Gewiss"
    jmp lbl_103f3

lbl_1032c:
    if global_14 != 4 then jump lbl_1035f
    local_bbd = "Seguro"
    jmp lbl_103f3

lbl_1035f:
    if global_14 != 5 then jump lbl_10395
    local_bbd = "Bien sûr"
    T 0x5e

lbl_10395:
    if global_14 != 6 then jump lbl_103c7
    local_bbd = "Claro"
    jmp lbl_103f3

lbl_103c7:
    if global_14 != 7 then jump lbl_103f3
    local_bbd = "Certamente"

lbl_103f3:
    doevents
    down
    up

; object id 1 (button 'confirm'): x=176, y=172, w=128, h=39, name hash=0xdc06374
; flags=0x37, aph=127, events: touch_release=0xff97
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
; 010188:  ff ff                                            |..|

; touch_release
.org 0xff97
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    timer

; object id 258 (text 't0'): x=106, y=105, w=268, h=28, name hash=0xc02992d9
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="192.168.1.1"

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x10012
; tim=1000, en=1

; timer
.org 0x10012
    if global_1c <= 0 then jump lbl_1006e
    if global_20 <= 0 then jump lbl_1006e
    global_20--
    if global_20 != 0 then jump lbl_1006e
    dim = global_30

lbl_1006e:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x10088

; touch_release
.org 0x10088
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 261 (text 't1'): x=106, y=66, w=268, h=39, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="------"

; data after the object structs, 106 bytes (6 trailing zero bytes dropped)
; 0101d8:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 01 00 00 00  |................|
; 0101e8:  00 00 00 00 74 03 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 0101f8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 010208:  00 00 00 00 00 00 7f 00 00 00 00 00 2d 00 3a 00  |............-.:.|
; 010218:  64 00 1e 00 90 00 57 00 00 00 00 00 03 00 00 00  |d.....W.........|
; 010228:  00 00 00 00 ff ff 00 01 00 00 2c 01 68 bd 00 00  |..........,.h...|
; 010238:  01 00 00 00 00 00 00 00 74 04                    |........t.|
