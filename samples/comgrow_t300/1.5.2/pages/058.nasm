; page 58 'wifi_succeed': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page 'wifi_succeed'): x=0, y=0, w=480, h=272, name hash=0xc91b5aa3
; flags=0x37, aph=127, events: event_3=0x3d41a
; sta=2, pic=2
; 03d5dd:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3d41a
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x3d875
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_3d8c2
    local_58d0 = "wifi连接成功"
    jmp lbl_3da61

lbl_3d8c2:
    if global_14 != 1 then jump lbl_3d909
    local_58d0 = "WiFi connection successful"
    jmp lbl_3da61

lbl_3d909:
    if global_14 != 1 then jump lbl_3d955
    local_58d0 = "WiFi接続に成功しました"
    jmp lbl_3da61

lbl_3d955:
    if global_14 != 1 then jump lbl_3d99d
    local_58d0 = "WLAN-Verbindung erfolgreich"
    jmp lbl_3da61

lbl_3d99d:
    if global_14 != 1 then jump lbl_3d9e0
    local_58d0 = "Conexión WiFi exitosa"
    jmp lbl_3da61

lbl_3d9e0:
    if global_14 != 1 then jump lbl_3da24
    local_58d0 = "Connexion WiFi réussie"
    T 0x3d

lbl_3da24:
    if global_14 != 1 then jump lbl_3da61
    local_58d0 = "Conexão Wi-Fi bem-sucedida"

lbl_3da61:
    if global_14 != 0 then jump lbl_3da94
    local_590e = "确定"
    jmp lbl_3dbf8

lbl_3da94:
    if global_14 != 1 then jump lbl_3dac5
    local_590e = "Sure"
    jmp lbl_3dbf8

lbl_3dac5:
    if global_14 != 2 then jump lbl_3dafe
    local_590e = "もちろん"
    jmp lbl_3dbf8

lbl_3dafe:
    if global_14 != 3 then jump lbl_3db31
    local_590e = "Gewiss"
    jmp lbl_3dbf8

lbl_3db31:
    if global_14 != 4 then jump lbl_3db64
    local_590e = "Seguro"
    jmp lbl_3dbf8

lbl_3db64:
    if global_14 != 5 then jump lbl_3db9a
    local_590e = "Bien sûr"
    T 0x5e

lbl_3db9a:
    if global_14 != 6 then jump lbl_3dbcc
    local_590e = "Claro"
    jmp lbl_3dbf8

lbl_3dbcc:
    if global_14 != 7 then jump lbl_3dbf8
    local_590e = "Certamente"

lbl_3dbf8:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=51, w=268, h=108, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="wifi连接成功"
; text:
;   0: "wifi连接成功"
;   1: "Conexão Wi-Fi bem-sucedida"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x3d471
; tim=1000, en=1

; timer
.org 0x3d471
    if global_1c <= 0 then jump lbl_3d4cd
    if global_20 <= 0 then jump lbl_3d4cd
    global_20--
    if global_20 != 0 then jump lbl_3d4cd
    dim = global_30

lbl_3d4cd:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3d4e7

; touch_release
.org 0x3d4e7
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x3d51f
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
; 03d6c1:  ff ff                                            |..|

; touch_release
.org 0x3d51f
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 412 bytes (4 trailing zero bytes dropped)
; 03d6d1:  00 00 00 00 77 69 66 69 e8 bf 9e e6 8e a5 e6 88  |....wifi........|
; 03d6e1:  90 e5 8a 9f 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d6f1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d701:  00 00 7f 00 00 00 00 00 7b 00 2f 00 c8 00 21 00  |........{./...!.|
; 03d711:  42 01 4f 00 00 00 00 00 03 00 00 00 00 00 00 00  |B.O.............|
; 03d721:  ff ff 00 01 00 00 2c 01 08 b2 00 00 01 00 00 00  |......,.........|
; 03d731:  00 00 00 00 62 04 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03d741:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d751:  00 00 00 00 00 00 7f 00 00 00 00 00 6c 00 60 00  |............l.`.|
; 03d761:  80 00 26 00 eb 00 85 00 00 00 00 00 00 00 00 00  |..&.............|
; 03d771:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 64 00  |..=.>.........d.|
; 03d781:  38 b3 00 00 01 00 00 00 62 05 00 00 00 00 00 00  |8.......b.......|
; 03d791:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d7a1:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03d7b1:  f3 00 60 00 80 00 26 00 72 01 85 00 00 00 00 00  |..`...&.r.......|
; 03d7c1:  00 00 00 00 00 00 3d 00 3e 00 ff ff ff ff 01 01  |......=.>.......|
; 03d7d1:  00 00 64 00 a0 b3 00 00 01 00 00 00 62 06 00 00  |..d.........b...|
; 03d7e1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d7f1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03d801:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 49 00 ac 00  |............I...|
; 03d811:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03d821:  ff ff 01 01 00 00 03 00 08 b4 00 00 00 00 00 00  |................|
; 03d831:  62 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03d841:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d851:  00 00 7f 00 00 00 00 00 4d 00 8f 00 26 00 1e 00  |........M...&...|
; 03d861:  72 00 ac 00 00 00 00 00 00 00 e7 39              |r..........9|
