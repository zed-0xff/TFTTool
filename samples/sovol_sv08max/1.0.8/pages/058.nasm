; page 58 'wifi_succeed': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'wifi_succeed'): x=0, y=0, w=480, h=272, name hash=0xc91b5aa3
; flags=0x37, aph=127, events: event_3=0x3df91
; sta=2, pic=2
; 03e154:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3df91
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x3e3ec
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_3e439
    local_5846 = "wifi连接成功"
    jmp lbl_3e5d8

lbl_3e439:
    if global_14 != 1 then jump lbl_3e480
    local_5846 = "WiFi connection successful"
    jmp lbl_3e5d8

lbl_3e480:
    if global_14 != 1 then jump lbl_3e4cc
    local_5846 = "WiFi接続に成功しました"
    jmp lbl_3e5d8

lbl_3e4cc:
    if global_14 != 1 then jump lbl_3e514
    local_5846 = "WLAN-Verbindung erfolgreich"
    jmp lbl_3e5d8

lbl_3e514:
    if global_14 != 1 then jump lbl_3e557
    local_5846 = "Conexión WiFi exitosa"
    jmp lbl_3e5d8

lbl_3e557:
    if global_14 != 1 then jump lbl_3e59b
    local_5846 = "Connexion WiFi réussie"
    T 0x3d

lbl_3e59b:
    if global_14 != 1 then jump lbl_3e5d8
    local_5846 = "Conexão Wi-Fi bem-sucedida"

lbl_3e5d8:
    if global_14 != 0 then jump lbl_3e60b
    local_5884 = "确定"
    jmp lbl_3e76f

lbl_3e60b:
    if global_14 != 1 then jump lbl_3e63c
    local_5884 = "Sure"
    jmp lbl_3e76f

lbl_3e63c:
    if global_14 != 2 then jump lbl_3e675
    local_5884 = "もちろん"
    jmp lbl_3e76f

lbl_3e675:
    if global_14 != 3 then jump lbl_3e6a8
    local_5884 = "Gewiss"
    jmp lbl_3e76f

lbl_3e6a8:
    if global_14 != 4 then jump lbl_3e6db
    local_5884 = "Seguro"
    jmp lbl_3e76f

lbl_3e6db:
    if global_14 != 5 then jump lbl_3e711
    local_5884 = "Bien sûr"
    T 0x5e

lbl_3e711:
    if global_14 != 6 then jump lbl_3e743
    local_5884 = "Claro"
    jmp lbl_3e76f

lbl_3e743:
    if global_14 != 7 then jump lbl_3e76f
    local_5884 = "Certamente"

lbl_3e76f:
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
; flags=0x27, events: timer=0x3dfe8
; tim=1000, en=1

; timer
.org 0x3dfe8
    if global_1c <= 0 then jump lbl_3e044
    if global_20 <= 0 then jump lbl_3e044
    global_20--
    if global_20 != 0 then jump lbl_3e044
    dim = global_30

lbl_3e044:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3e05e

; touch_release
.org 0x3e05e
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button): x=176, y=172, w=128, h=39, name hash=0xae07bfc0
; flags=0x37, aph=127, events: touch_release=0x3e096
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
; 03e238:  ff ff                                            |..|

; touch_release
.org 0x3e096
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 412 bytes (4 trailing zero bytes dropped)
; 03e248:  00 00 00 00 77 69 66 69 e8 bf 9e e6 8e a5 e6 88  |....wifi........|
; 03e258:  90 e5 8a 9f 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03e268:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03e278:  00 00 7f 00 00 00 00 00 7b 00 2f 00 c8 00 21 00  |........{./...!.|
; 03e288:  42 01 4f 00 00 00 00 00 03 00 00 00 00 00 00 00  |B.O.............|
; 03e298:  ff ff 00 01 00 00 2c 01 b4 c7 00 00 01 00 00 00  |......,.........|
; 03e2a8:  00 00 00 00 62 04 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03e2b8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03e2c8:  00 00 00 00 00 00 7f 00 00 00 00 00 f4 00 5e 00  |..............^.|
; 03e2d8:  80 00 26 00 73 01 83 00 00 00 00 00 00 00 00 00  |..&.s...........|
; 03e2e8:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 64 00  |..=.>.........d.|
; 03e2f8:  e4 c8 00 00 01 00 00 00 62 05 00 00 00 00 00 00  |........b.......|
; 03e308:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03e318:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03e328:  6c 00 5e 00 80 00 26 00 eb 00 83 00 00 00 00 00  |l.^...&.........|
; 03e338:  00 00 00 00 00 00 3d 00 3e 00 ff ff ff ff 01 01  |......=.>.......|
; 03e348:  00 00 64 00 4c c9 00 00 01 00 00 00 62 06 00 00  |..d.L.......b...|
; 03e358:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03e368:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03e378:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 49 00 ac 00  |............I...|
; 03e388:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03e398:  ff ff 01 01 00 00 03 00 b4 c9 00 00 00 00 00 00  |................|
; 03e3a8:  62 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03e3b8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03e3c8:  00 00 7f 00 00 00 00 00 4d 00 8f 00 26 00 1e 00  |........M...&...|
; 03e3d8:  72 00 ac 00 00 00 00 00 00 00 e7 39              |r..........9|
