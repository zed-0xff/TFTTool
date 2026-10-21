; page 4 'error_reset': 3 objects

; object address table, 3 objects, block loaded at 0xa3a4
.dd 0xa3b0, 0xa3f0, 0xa444

; object id 0 (page 'error_reset'): x=0, y=0, w=480, h=272, name hash=0x8700e563
; flags=0x37, aph=127
; sta=2, pic=2
; 00bc09:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0xbe61
    if global_14 != 0 then jump lbl_be9a
    local_4f1 = "重置文件"
    jmp lbl_c058

lbl_be9a:
    if global_14 != 1 then jump lbl_bed1
    local_4f1 = "Reset file"
    jmp lbl_c058

lbl_bed1:
    if global_14 != 2 then jump lbl_bf1f
    local_4f1 = "ファイルをリセットする"
    jmp lbl_c058

lbl_bf1f:
    if global_14 != 3 then jump lbl_bf5f
    local_4f1 = "Datei zurücksetzen"
    jmp lbl_c058

lbl_bf5f:
    if global_14 != 4 then jump lbl_bf9f
    local_4f1 = "restablecer archivo"
    jmp lbl_c058

lbl_bf9f:
    if global_14 != 5 then jump lbl_bfe5
    local_4f1 = "réinitialiser le fichier"
    jmp lbl_c058

lbl_bfe5:
    if global_14 != 6 then jump lbl_c023
    local_4f1 = "redefinir arquivo"
    jmp lbl_c058

lbl_c023:
    if global_14 != 7 then jump lbl_c058
    local_4f1 = "reimpostare il file"

lbl_c058:
    doevents
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 1 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xbb45
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
; 00bc59:  ff ff                                            |..|

; touch_release
.org 0xbb45
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
; 00bcbd:  00 00 00 00 e9 87 8d e7 bd ae e6 96 87 e4 bb b6  |................|
; 00bccd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00bcdd:  00 00 00 00 00 00 7f 00 00 00 00 00 6a 00 33 00  |............j.3.|
; 00bced:  0c 01 6d 00 75 01 9f 00 00 00 00 00 03 00 00 00  |..m.u...........|
; 00bcfd:  00 00 00 00 ff ff 01 01 00 00 2c 01 c4 a5 00 00  |..........,.....|
; 00bd0d:  01 00 00 00 00 00 00 00 00 00 00 00 e9 87 8d e5  |................|
; 00bd1d:  90 af 6b 6c 69 70 70 65 72 00 00 00 00 00 00 00  |..klipper.......|
; 00bd2d:  00 00 00 00 00 00 7f 00 00 00 00 00 94 01 f0 00  |................|
; 00bd3d:  4c 00 1f 00 df 01 0e 01 00 00 00 00 01 04 00 00  |L...............|
; 00bd4d:  00 00 72 fe 00 82 a3 10 a3 10 01 01 00 00 64 00  |..r...........d.|
; 00bd5d:  bc a6 00 00 01 00 00 00 62 14 00 00 00 00 00 00  |........b.......|
; 00bd6d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00bd7d:  00 00 00 00 e9 87 8d e5 90 af 66 69 72 6d 77 61  |..........firmwa|
; 00bd8d:  72 65 00 00 49 00 1e 00 dd 00 00 01 00 00 00 00  |re..I...........|
; 00bd9d:  01 04 00 00 00 00 72 fe 00 82 a3 10 a3 10 01 01  |......r.........|
; 00bdad:  00 00 64 00 24 a7 00 00 01 00 00 00 62 15 00 00  |..d.$.......b...|
; 00bdbd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00bdcd:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00bddd:  00 00 00 00 ef 00 e2 00 49 00 1e 00 00 01 ff 00  |........I.......|
; 00bded:  00 00 00 00 01 04 00 00 00 00 72 fe 00 82 a3 10  |..........r.....|
; 00bdfd:  a3 10 01 01 00 00 64 00 8c a7 00 00 01 00 00 00  |......d.........|
; 00be0d:  00 00 00 00 e5 b7 b2 e5 bc 80 e5 90 af 00 7f 00  |................|
; 00be1d:  00 00 00 00 88 00 74 00 6d 00 1e 00 f4 00 91 00  |......t.m.......|
; 00be2d:  00 00 00 00 03 00 00 00 00 00 00 00 e8 07 00 01  |................|
; 00be3d:  00 00 2c 01 7c 3a 00 00 01 00 00 00 00 00 00 00  |..,.|:..........|
; 00be4d:  74 08 01                                         |t..|
