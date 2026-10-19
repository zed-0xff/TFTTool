; page 3 'error_restart': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba4c, 0xbaa0

; object id 0 (page 'error_restart'): x=0, y=0, w=480, h=272, name hash=0x170eb1dd
; flags=0x37, aph=127, events: event_3=0xca1b
; sta=2, pic=4
; 00cc0d:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xca1b
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0xcfdd
    if global_14 != 0 then jump lbl_d016
    local_51e = "网络管理"
    jmp lbl_d1d2

lbl_d016:
    if global_14 != 1 then jump lbl_d055
    local_51e = "Network Management"
    jmp lbl_d1d2

lbl_d055:
    if global_14 != 2 then jump lbl_d09a
    local_51e = "ネットワーク管理"
    jmp lbl_d1d2

lbl_d09a:
    if global_14 != 3 then jump lbl_d0d9
    local_51e = "Netzwerkverwaltung"
    jmp lbl_d1d2

lbl_d0d9:
    if global_14 != 4 then jump lbl_d11c
    local_51e = "Administración de red"
    jmp lbl_d1d2

lbl_d11c:
    if global_14 != 5 then jump lbl_d15b
    local_51e = "Gestion du réseau"
    jmp lbl_d1d2

lbl_d15b:
    if global_14 != 6 then jump lbl_d19d
    local_51e = "Gerenciamento de rede"
    jmp lbl_d1d2

lbl_d19d:
    if global_14 != 7 then jump lbl_d1d2
    local_51e = "Gestione della rete"

lbl_d1d2:
    if global_14 != 0 then jump lbl_d20d
    local_4ce = "重启firmware"
    jmp lbl_d3e4

lbl_d20d:
    if global_14 != 1 then jump lbl_d24a
    local_4ce = "Restart firmware"
    jmp lbl_d3e4

lbl_d24a:
    if global_14 != 2 then jump lbl_d2a1
    local_4ce = "ファームウェアを再起動します"
    jmp lbl_d3e4

lbl_d2a1:
    if global_14 != 3 then jump lbl_d2e2
    local_4ce = "Firmware neu starten"
    jmp lbl_d3e4

lbl_d2e2:
    if global_14 != 4 then jump lbl_d324
    local_4ce = "Reiniciar el firmware"
    jmp lbl_d3e4

lbl_d324:
    if global_14 != 5 then jump lbl_d36d
    local_4ce = "Redémarrer le micrologiciel"
    jmp lbl_d3e4

lbl_d36d:
    if global_14 != 6 then jump lbl_d3ad
    local_4ce = "Reinicie o firmware"
    jmp lbl_d3e4

lbl_d3ad:
    if global_14 != 7 then jump lbl_d3e4
    local_4ce = "Riavviare il firmware"

lbl_d3e4:
    doevents
    global_20 = global_18
    dims = global_2c
    down
    up
    unload
    down
    up

; object id 1 (button 'b0'): x=-145, y=119, w=130, h=45, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xca61
; borderc=0x0000, picc=4, picc2=4, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="重启klipper"
; touch_release reports to the host: page <page>, widget 0
; 00cc5d:  ff ff                                            |..|

; touch_release
.org 0xca61
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0xcacb
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
; 00ccb1:  ff ff                                            |..|

; touch_release
.org 0xcacb
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up

; object id 3 (text 't0'): x=106, y=51, w=268, h=109, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; object id 4 (button 'b2'): x=107, y=172, w=128, h=39, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0xcb4f
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="网络管理"
; text:
;   0: "网络管理"
;   1: "Network Management"
;   2: "ネットワーク管理"
;   3: "Netzwerkverwaltung"
;   4: "Administración de red"
;   5: "Gestion du réseau"
;   6: "Gerenciamento de rede"
;   7: "Gestione della rete"
; touch_release reports to the host: page <page>, widget 2
; 00cd59:  ff ff                                            |..|

; touch_release
.org 0xcb4f
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 617 bytes (7 trailing zero bytes dropped)
; 00cd69:  00 00 00 00 e9 87 8d e5 90 af 6b 6c 69 70 70 65  |..........klippe|
; 00cd79:  72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |r...............|
; 00cd89:  00 00 7f 00 00 00 00 00 95 00 e3 00 49 00 1e 00  |............I...|
; 00cd99:  dd 00 00 01 00 00 00 00 01 04 00 00 00 00 72 fe  |..............r.|
; 00cda9:  00 82 a3 10 a3 10 01 01 00 00 64 00 d8 bc 00 00  |..........d.....|
; 00cdb9:  01 00 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 00cdc9:  00 00 00 00 00 00 00 00 00 00 00 00 e9 87 8d e5  |................|
; 00cdd9:  90 af 66 69 72 6d 77 61 72 65 00 00 ef 00 e2 00  |..firmware......|
; 00cde9:  49 00 1e 00 37 01 ff 00 00 00 00 00 01 04 00 00  |I...7...........|
; 00cdf9:  00 00 72 fe 00 82 a3 10 a3 10 01 01 00 00 64 00  |..r...........d.|
; 00ce09:  40 bd 00 00 01 00 00 00 00 00 00 00 e5 b7 b2 e5  |@...............|
; 00ce19:  bc 80 e5 90 af 00 74 00 6d 00 1e 00 f4 00 91 00  |......t.m.......|
; 00ce29:  00 00 00 00 03 00 00 00 00 00 00 00 e8 07 00 01  |................|
; 00ce39:  00 00 2c 01 00 40 00 00 01 00 00 00 00 00 00 00  |..,..@..........|
; 00ce49:  74 08 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 00ce59:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00ce69:  00 00 7f 00 00 00 00 00 13 00 96 00 72 00 1e 00  |............r...|
; 00ce79:  84 00 b3 00 e5 b7 b2 e5 bc 80 e5 90 af 00 00 00  |................|
; 00ce89:  ff ff 02 01 00 00 2c 01 80 41 00 00 01 00 00 00  |......,..A......|
; 00ce99:  00 00 00 00 74 09 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00cea9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00ceb9:  00 00 00 00 00 00 7f 00 00 00 00 00 1d 00 b8 00  |................|
; 00cec9:  68 00 1e 00 84 00 d5 00 00 00 00 00 03 00 00 00  |h...............|
; 00ced9:  00 00 00 00 ff ff 02 01 00 00 2c 01 e9 80 80 e5  |..........,.....|
; 00cee9:  87 ba 00 00 00 00 00 00 74 0a 01 00 00 00 00 00  |........t.......|
; 00cef9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00cf09:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00cf19:  88 00 95 00 6d 00 1e 00 f4 00 b2 00 00 00 00 00  |....m...........|
; 00cf29:  03 00 00 00 00 00 00 00 e8 07 00 01 00 00 2c 01  |..............,.|
; 00cf39:  e0 43 00 00 01 00 00 00 00 00 00 00 74 0b 01 00  |.C..........t...|
; 00cf49:  00 00 00 00 e4 b8 80 e9 94 ae e5 8a a0 e7 83 ad  |................|
; 00cf59:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00cf69:  00 00 00 00 e7 bd 91 e7 bb 9c e7 ae a1 e7 90 86  |................|
; 00cf79:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00cf89:  00 00 2c 01 10 45 00 00 01 00 00 00 00 00 00 00  |..,..E..........|
; 00cf99:  74 0e 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 00cfa9:  00 00 00 00 00 00 00 00 00 00 00 00 e5 86 b7 e5  |................|
; 00cfb9:  8d b4 00 00 00 00 00 00 fc 00 52 00 50 00 1e 00  |..........R.P...|
; 00cfc9:  4b 01 6f 00 00 00 00 00 03                       |K.o......|
