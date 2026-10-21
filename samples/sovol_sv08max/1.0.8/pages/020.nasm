; page 20 'preview': 22 objects

; object address table, 22 objects, block loaded at 0xb950
.dd 0xb9a8, 0xb9e8, 0xba3c, 0xba90, 0xbae4, 0x17b0, 0x1804, 0xbb38
.dd 0xbb8c, 0x1858, 0xbbe0, 0xbc20, 0xbc40, 0xbc60, 0x18ac, 0x1900
.dd 0x1954, 0x19a8, 0x19fc, 0x1a50, 0x1aa4, 0x1af8

; object id 0 (page 'preview'): x=0, y=0, w=480, h=272, name hash=0x86f511c0
; flags=0x37, aph=127, events: event_3=0x1d417
; sta=2, pic=31
; 01db6c:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1d417
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x1e1a8
    ref 11
    ref 12
    if global_14 != 0 then jump lbl_1e245
    local_2355 = "本地"
    local_237e = "U盘"
    local_23a7 = "延时摄影"
    local_23ce = "文件大小"
    local_23f5 = "剩余空间"
    jmp lbl_1e6bd

lbl_1e245:
    if global_14 != 1 then jump lbl_1e2de
    local_2355 = "Local"
    local_237e = "USB Drive"
    local_23a7 = "Time-lapse Photography"
    local_23ce = "File Size"
    local_23f5 = "Remaining Space"
    jmp lbl_1e6bd

lbl_1e2de:
    if global_14 != 2 then jump lbl_1e38c
    local_2355 = "ローカル"
    local_237e = "USBメモリ"
    local_23a7 = "タイムラプス撮影"
    local_23ce = "ファイルサイズ"
    local_23f5 = "残り容量"
    jmp lbl_1e6bd

lbl_1e38c:
    if global_14 != 3 then jump lbl_1e433
    local_2355 = "Lokal"
    local_237e = "USB-Stick"
    local_23a7 = "Zeitraffer-Fotografie"
    local_23ce = "Dateigröße"
    local_23f5 = "Verbleibender Speicherplatz"
    jmp lbl_1e6bd

lbl_1e433:
    if global_14 != 4 then jump lbl_1e4da
    local_2355 = "Local"
    local_237e = "Unidad USB"
    local_23a7 = "Fotografía de intervalo"
    local_23ce = "Tamaño del archivo"
    local_23f5 = "Espacio restante"
    jmp lbl_1e6bd

lbl_1e4da:
    if global_14 != 5 then jump lbl_1e57d
    local_2355 = "Local"
    local_237e = "Clé USB"
    local_23a7 = "Photographie en time-lapse"
    local_23ce = "Taille du fichier"
    local_23f5 = "Espace restant"
    jmp lbl_1e6bd

lbl_1e57d:
    if global_14 != 6 then jump lbl_1e620
    local_2355 = "Local"
    local_237e = "Pendrive"
    local_23a7 = "Fotografia em intervalo"
    local_23ce = "Tamanho do arquivo"
    local_23f5 = "Espaço restante"
    jmp lbl_1e6bd

lbl_1e620:
    if global_14 != 7 then jump lbl_1e6bd
    local_2355 = "Locale"
    local_237e = "Chiavetta USB"
    local_23a7 = "Fotografia time-lapse"
    local_23ce = "Dimensione del file"
    local_23f5 = "Spazio rimanente"

lbl_1e6bd:
    if global_14 != 0 then jump lbl_1e6f0
    local_2267 = "打印"
    jmp lbl_1e858

lbl_1e6f0:
    if global_14 != 1 then jump lbl_1e722
    local_2267 = "Print"
    jmp lbl_1e858

lbl_1e722:
    if global_14 != 2 then jump lbl_1e75b
    local_2267 = "印刷する"
    jmp lbl_1e858

lbl_1e75b:
    if global_14 != 3 then jump lbl_1e78f
    local_2267 = "Drucken"
    jmp lbl_1e858

lbl_1e78f:
    if global_14 != 4 then jump lbl_1e7c4
    local_2267 = "Imprimir"
    jmp lbl_1e858

lbl_1e7c4:
    if global_14 != 5 then jump lbl_1e7f9
    local_2267 = "Imprimer"
    jmp lbl_1e858

lbl_1e7f9:
    if global_14 != 6 then jump lbl_1e82e
    local_2267 = "Stampare"
    T 0x2a

lbl_1e82e:
    if global_14 != 7 then jump lbl_1e858
    local_2267 = "Imprimir"

lbl_1e858:
    doevents
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x1d45d
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 01dbbc:  ff ff                                            |..|

; touch_release
.org 0x1d45d
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x1d4c9
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 01dc10:  ff ff                                            |..|

; touch_release
.org 0x1d4c9
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x1d535
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 01dc64:  ff ff                                            |..|

; touch_release
.org 0x1d535
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x1d5a1
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 01dcb8:  ff ff                                            |..|

; touch_release
.org 0x1d5a1
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up

; object id 261 (text 't0'): x=340, y=144, w=50, h=26, name hash=0xc02992d9
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="2h4m"

; object id 262 (text 't1'): x=419, y=144, w=55, h=26, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="4m"

; object id 7 (button 'b2'): x=315, y=226, w=155, h=37, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x1d641
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="打印"
; text:
;   0: "打印"
;   1: "Print"
;   2: "印刷する"
;   3: "Drucken"
;   4: "Imprimir"
;   5: "Imprimer"
;   6: "Stampare"
;   7: "Imprimir"
; touch_release reports to the host: page <page>, widget 1
; 01dd0c:  ff ff                                            |..|

; touch_release
.org 0x1d641
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b3'): x=66, y=46, w=45, h=46, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x1d6ab
; borderc=0x0000, picc=31, picc2=32, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0
; 01dd60:  ff ff                                            |..|

; touch_release
.org 0x1d6ab
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    timer

; object id 265 (text 't2'): x=121, y=53, w=344, h=34, name hash=0x2cf7a429
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt=""

; object id 10 (unknown_0x3c 'exp0'): x=80, y=91, w=176, h=176, name hash=0x4cb85fe0
; flags=0x37, aph=127
; path="ram/176.jpg"
; 01dda4:  00 00 00 00 00 00 ff 00                          |........|

; object id 11 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1d740
; tim=1000, en=1

; timer
.org 0x1d740
    if global_1c <= 0 then jump lbl_1d79c
    if global_20 <= 0 then jump lbl_1d79c
    global_20--
    if global_20 != 0 then jump lbl_1d79c
    dim = global_30

lbl_1d79c:
    down
    up

; object id 12 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1d7b6

; touch_release
.org 0x1d7b6
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 13 (crop 'q0'): x=482, y=169, w=123, h=36, name hash=0x32aa1f99
; flags=0x37, aph=127, events: touch_release=0x1d7ee
; picc=31
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x1d7ee
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 270 (text 't3'): x=488, y=174, w=111, h=26, name hash=0x5a98bf51
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="延时摄影"
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0x1d858
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 271 (button 'b0'): x=66, y=7, w=200, h=34, name hash=0xce1a7436
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="本地"
; text:
;   0: "本地"
;   1: "Local"
;   2: "ローカル"
;   3: "Lokal"
;   4: "Local"
;   5: "Local"
;   6: "Local"
;   7: "Locale"
; touch_release reports to the host: page <page>, widget 110

; touch_release
.org 0x1d8c2
    prints 0x65, 1
    prints dp, 1
    prints 110, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 272 (button 'b1'): x=266, y=7, w=207, h=34, name hash=0xb8756f4e
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="U盘"
; text:
;   0: "U盘"
;   1: "USB Drive"
;   2: "USBメモリ"
;   3: "USB-Stick"
;   4: "Unidad USB"
;   5: "Clé USB"
;   6: "Pendrive"
;   7: "Chiavetta USB"
; touch_release reports to the host: page <page>, widget 111

; touch_release
.org 0x1d92e
    prints 0x65, 1
    prints dp, 1
    prints 111, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 273 (button 'b17'): x=470, y=0, w=10, h=6, name hash=0x3bc12630
; borderc=0x0000, picc=25, picc2=26, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="延时摄影"
; text:
;   0: "延时摄影"
;   1: "Time-lapse Photography"
;   2: "タイムラプス撮影"
;   3: "Zeitraffer-Fotografie"
;   4: "Fotografía de intervalo"
;   5: "Photographie en time-lapse"
;   6: "Fotografia em intervalo"
;   7: "Fotografia time-lapse"
; touch_release reports to the host: page <page>, widget 112

; touch_release
.org 0x1d99a
    prints 0x65, 1
    prints dp, 1
    prints 112, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up
    down
    up

; object id 274 (text 't4'): x=256, y=170, w=120, h=26, name hash=0x1d54e28e
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="文件大小:"
; text:
;   0: "文件大小"
;   1: "File Size"
;   2: "ファイルサイズ"
;   3: "Dateigröße"
;   4: "Tamaño del archivo"
;   5: "Taille du fichier"
;   6: "Tamanho do arquivo"
;   7: "Dimensione del file"

; object id 275 (text 't5'): x=256, y=193, w=120, h=26, name hash=0x6b3bf9f6
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=300, isbr=1, background=0, txt="剩余空间:"
; text:
;   0: "剩余空间"
;   1: "Remaining Space"
;   2: "残り容量"
;   3: "Verbleibender Speicherplatz"
;   4: "Espacio restante"
;   5: "Espace restant"
;   6: "Espaço restante"
;   7: "Spazio rimanente"

; object id 276 (text 't6'): x=382, y=170, w=90, h=26, name hash=0xf18ad47e
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0M"

; object id 277 (text 't7'): x=382, y=193, w=90, h=26, name hash=0x87e5cf06
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="0M"

; data after the object structs, 882 bytes (6 trailing zero bytes dropped)
; 01de2c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01de3c:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 01de4c:  05 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01de5c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01de6c:  74 0e 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01de7c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01de8c:  00 00 7f 00 00 00 00 00 51 00 2d 00 00 01 2d 00  |........Q.-...-.|
; 01de9c:  90 01 59 00 00 00 00 00 03 00 00 00 00 01 00 00  |..Y.............|
; 01deac:  ff ff 00 01 00 00 2c 01 bc c3 00 00 01 00 00 00  |......,.........|
; 01debc:  00 00 00 00 62 0f 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01decc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01dedc:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 2e 00  |................|
; 01deec:  1d 00 2c 00 bc 01 59 00 00 00 00 00 00 00 00 00  |..,...Y.........|
; 01defc:  00 00 50 00 00 00 ff ff ff ff 01 01 00 00 64 00  |..P...........d.|
; 01df0c:  ec c4 00 00 01 00 00 00 74 10 00 00 00 00 00 00  |........t.......|
; 01df1c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01df2c:  00 00 00 00 e6 98 af 00 00 00 7f 00 00 00 00 00  |................|
; 01df3c:  52 00 5b 00 40 01 2d 00 91 01 87 00 00 00 00 00  |R.[.@.-.........|
; 01df4c:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 01df5c:  54 c5 00 00 01 00 00 00 00 00 00 00 00 11 00 00  |T...............|
; 01df6c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01df7c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01df8c:  00 00 00 00 a0 01 5b 00 1d 00 2c 00 e5 90 a6 00  |......[...,.....|
; 01df9c:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 01dfac:  ff ff 01 01 00 00 64 00 84 c6 00 00 01 00 00 00  |......d.........|
; 01dfbc:  74 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 01dfcc:  00 00 00 00 e6 89 93 e5 8d b0 00 00 00 00 00 00  |................|
; 01dfdc:  00 00 7f 00 00 00 00 00 52 00 88 00 40 01 2d 00  |........R...@.-.|
; 01dfec:  91 01 b4 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 01dffc:  ff ff 00 01 00 00 00 00 ec c6 00 00 01 00 00 00  |................|
; 01e00c:  00 00 00 00 62 13 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01e01c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e02c:  00 00 00 00 00 00 7f 00 00 00 00 00 00 01 88 00  |................|
; 01e03c:  1d 00 2c 00 bc 01 b3 00 00 00 00 00 00 00 00 00  |..,.............|
; 01e04c:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 01e05c:  1c c8 00 00 01 00 00 00 74 14 00 00 00 00 00 00  |........t.......|
; 01e06c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e07c:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 01e08c:  52 00 b5 00 40 01 2d 00 91 01 e1 00 00 00 00 00  |R...@.-.........|
; 01e09c:  03 00 00 00 72 61 6d 2f 31 37 36 2e 6a 70 67 00  |....ram/176.jpg.|
; 01e0ac:  84 c8 00 00 01 00 00 00 00 00 00 00 62 15 00 00  |............b...|
; 01e0bc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e0cc:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01e0dc:  00 00 00 00 a0 01 b5 00 1d 00 2c 00 bc 01 e0 00  |..........,.....|
; 01e0ec:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 01e0fc:  ff ff 01 01 00 00 64 00 b4 c9 00 00 01 00 00 00  |......d.........|
; 01e10c:  62 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01e11c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e12c:  00 00 7f 00 00 00 00 00 41 00 e1 00 7c 01 2d 00  |........A...|.-.|
; 01e13c:  bc 01 0d 01 00 00 00 00 00 00 00 00 00 00 50 00  |..............P.|
; 01e14c:  51 00 ff ff ff ff 01 01 00 00 64 00 1c ca 00 00  |Q.........d.....|
; 01e15c:  01 00 00 00 74 19 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 01e16c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01e17c:  00 00 00 00 00 00 7f 00 00 00 00 00 52 00 e2 00  |............R...|
; 01e18c:  40 01 2d 00 91 01 0e 01 00 00 00 00 03 00 00 00  |@.-.............|
; 01e19c:  00 01                                            |..|
