; page 3 'error_restart': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa49c

; object id 0 (page 'error_restart'): x=0, y=0, w=480, h=272, name hash=0x170eb1dd
; flags=0x37, aph=127, events: event_3=0xb43a
; sta=2, pic=2
; 00b5b8:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xb43a
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0xb8cc
    if global_14 != 0 then jump lbl_b907
    local_480 = "重启firmware"
    jmp lbl_bade

lbl_b907:
    if global_14 != 1 then jump lbl_b944
    local_480 = "Restart firmware"
    jmp lbl_bade

lbl_b944:
    if global_14 != 2 then jump lbl_b99b
    local_480 = "ファームウェアを再起動します"
    jmp lbl_bade

lbl_b99b:
    if global_14 != 3 then jump lbl_b9dc
    local_480 = "Firmware neu starten"
    jmp lbl_bade

lbl_b9dc:
    if global_14 != 4 then jump lbl_ba1e
    local_480 = "Reiniciar el firmware"
    jmp lbl_bade

lbl_ba1e:
    if global_14 != 5 then jump lbl_ba67
    local_480 = "Redémarrer le micrologiciel"
    jmp lbl_bade

lbl_ba67:
    if global_14 != 6 then jump lbl_baa7
    local_480 = "Reinicie o firmware"
    jmp lbl_bade

lbl_baa7:
    if global_14 != 7 then jump lbl_bade
    local_480 = "Riavviare il firmware"

lbl_bade:
    doevents
    global_20 = global_18
    dims = global_2c
    down
    up
    unload
    down
    up

; object id 1 (button 'b0'): x=-145, y=119, w=130, h=45, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0xb480
; borderc=0x0000, picc=4, picc2=4, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="重启klipper"
; touch_release reports to the host: page <page>, widget 0
; 00b608:  ff ff                                            |..|

; touch_release
.org 0xb480
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b1'): x=176, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0xb4ea
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="重启firmware"
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
; 00b65c:  ff ff                                            |..|

; touch_release
.org 0xb4ea
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (text 't0'): x=106, y=51, w=268, h=109, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; data after the object structs, 515 bytes (5 trailing zero bytes dropped)
; 00b6c0:  00 00 00 00 e9 87 8d e5 90 af 6b 6c 69 70 70 65  |..........klippe|
; 00b6d0:  72 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |r...............|
; 00b6e0:  00 00 00 00 94 01 f0 00 4c 00 1f 00 df 01 0e 01  |........L.......|
; 00b6f0:  00 00 00 00 01 04 00 00 00 00 72 fe 00 82 a3 10  |..........r.....|
; 00b700:  a3 10 01 01 00 00 64 00 bc a6 00 00 01 00 00 00  |......d.........|
; 00b710:  62 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 00b720:  00 00 00 00 00 00 00 00 00 00 00 00 e9 87 8d e5  |................|
; 00b730:  90 af 66 69 72 6d 77 61 72 65 00 00 49 00 1e 00  |..firmware..I...|
; 00b740:  dd 00 00 01 00 00 00 00 01 04 00 00 00 00 72 fe  |..............r.|
; 00b750:  00 82 a3 10 a3 10 01 01 00 00 64 00 24 a7 00 00  |..........d.$...|
; 00b760:  01 00 00 00 62 15 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 00b770:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00b780:  00 00 00 00 00 00 7f 00 00 00 00 00 ef 00 e2 00  |................|
; 00b790:  49 00 1e 00 00 01 ff 00 00 00 00 00 01 04 00 00  |I...............|
; 00b7a0:  00 00 72 fe 00 82 a3 10 a3 10 01 01 00 00 64 00  |..r...........d.|
; 00b7b0:  8c a7 00 00 01 00 00 00 00 00 00 00 e5 b7 b2 e5  |................|
; 00b7c0:  bc 80 e5 90 af 00 7f 00 00 00 00 00 88 00 74 00  |..............t.|
; 00b7d0:  6d 00 1e 00 f4 00 91 00 00 00 00 00 03 00 00 00  |m...............|
; 00b7e0:  00 00 00 00 e8 07 00 01 00 00 2c 01 7c 3a 00 00  |..........,.|:..|
; 00b7f0:  01 00 00 00 00 00 00 00 74 08 01 00 00 00 00 00  |........t.......|
; 00b800:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00b810:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00b820:  13 00 96 00 e5 b7 b2 e5 bc 80 e5 90 af 00 00 00  |................|
; 00b830:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00b840:  ac 3b 00 00 01 00 00 00 00 00 00 00 74 09 01 00  |.;..........t...|
; 00b850:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00b860:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00b870:  00 00 00 00 1d 00 b8 00 68 00 1e 00 84 00 d5 00  |........h.......|
; 00b880:  00 00 00 00 03 00 00 00 00 00 00 00 e9 80 80 e5  |................|
; 00b890:  87 ba 00 01 dc 3c 00 00 01 00 00 00 00 00 00 00  |.....<..........|
; 00b8a0:  74 0a 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 00b8b0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00b8c0:  00 00 7f                                         |...|
