; page 4 'error_reset': 3 objects

; object address table, 3 objects, block loaded at 0xb950
.dd 0xb95c, 0xb99c, 0xb9f0

; object id 0 (page 'error_reset'): x=0, y=0, w=480, h=272, name hash=0x8700e563
; flags=0x37, aph=127
; sta=2, pic=2
; 00d50f:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0xd767
    if global_14 != 0 then jump lbl_d7a0
    local_568 = "重置文件"
    jmp lbl_d95e

lbl_d7a0:
    if global_14 != 1 then jump lbl_d7d7
    local_568 = "Reset file"
    jmp lbl_d95e

lbl_d7d7:
    if global_14 != 2 then jump lbl_d825
    local_568 = "ファイルをリセットする"
    jmp lbl_d95e

lbl_d825:
    if global_14 != 3 then jump lbl_d865
    local_568 = "Datei zurücksetzen"
    jmp lbl_d95e

lbl_d865:
    if global_14 != 4 then jump lbl_d8a5
    local_568 = "restablecer archivo"
    jmp lbl_d95e

lbl_d8a5:
    if global_14 != 5 then jump lbl_d8eb
    local_568 = "réinitialiser le fichier"
    jmp lbl_d95e

lbl_d8eb:
    if global_14 != 6 then jump lbl_d929
    local_568 = "redefinir arquivo"
    jmp lbl_d95e

lbl_d929:
    if global_14 != 7 then jump lbl_d95e
    local_568 = "reimpostare il file"

lbl_d95e:
    doevents
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 1 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xd44b
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="重置文件"
; text:
;   0: "重置文件"
;   1: "Reset file"
;   2: "ファイルをリセットする"
;   3: "Datei zurücksetzen"
;   4: "restablecer archivo"
;   5: "réinitialiser le fichier"
;   6: "redefinir arquivo"
;   7: "reimpostare il file"
; touch_release reports to the host: page <page>, widget 0
; 00d55f:  ff ff                                            |..|

; touch_release
.org 0xd44b
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (text 't0'): x=106, y=52, w=268, h=108, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; data after the object structs, 403 bytes (13 trailing zero bytes dropped)
; 00d5c3:  00 00 00 00 e9 87 8d e7 bd ae e6 96 87 e4 bb b6  |................|
; 00d5d3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00d5e3:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00d5f3:  6a 00 33 00 0c 01 6d 00 75 01 9f 00 00 00 00 00  |j.3...m.u.......|
; 00d603:  03 00 00 00 00 00 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 00d613:  c8 bb 00 00 01 00 00 00 00 00 00 00 62 04 00 00  |............b...|
; 00d623:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00d633:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00d643:  00 00 00 00 6b 00 ac 00 80 00 27 00 ea 00 d2 00  |....k.....'.....|
; 00d653:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 00d663:  ff ff 01 01 00 00 64 00 f8 bc 00 00 01 00 00 00  |......d.........|
; 00d673:  00 00 00 00 e9 87 8d e5 90 af 6b 6c 69 70 70 65  |..........klippe|
; 00d683:  72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |r...............|
; 00d693:  00 00 7f 00 00 00 00 00 95 00 e3 00 49 00 1e 00  |............I...|
; 00d6a3:  dd 00 00 01 00 00 00 00 01 04 00 00 00 00 72 fe  |..............r.|
; 00d6b3:  00 82 a3 10 a3 10 01 01 00 00 64 00 d8 bc 00 00  |..........d.....|
; 00d6c3:  01 00 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 00d6d3:  00 00 00 00 00 00 00 00 00 00 00 00 e9 87 8d e5  |................|
; 00d6e3:  90 af 66 69 72 6d 77 61 72 65 00 00 ef 00 e2 00  |..firmware......|
; 00d6f3:  49 00 1e 00 37 01 ff 00 00 00 00 00 01 04 00 00  |I...7...........|
; 00d703:  00 00 72 fe 00 82 a3 10 a3 10 01 01 00 00 64 00  |..r...........d.|
; 00d713:  40 bd 00 00 01 00 00 00 00 00 00 00 e5 b7 b2 e5  |@...............|
; 00d723:  bc 80 e5 90 af 00 74 00 6d 00 1e 00 f4 00 91 00  |......t.m.......|
; 00d733:  00 00 00 00 03 00 00 00 00 00 00 00 e8 07 00 01  |................|
; 00d743:  00 00 2c 01 00 40 00 00 01 00 00 00 00 00 00 00  |..,..@..........|
; 00d753:  74 08 01                                         |t..|
