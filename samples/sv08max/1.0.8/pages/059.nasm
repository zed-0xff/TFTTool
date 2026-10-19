; page 59 'wifi_failed': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'wifi_failed'): x=0, y=0, w=480, h=272, name hash=0x39603296
; flags=0x37, aph=127, events: event_3=0x3e790
; sta=2, pic=2
; 03e953:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3e790
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x3ebeb
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_3ec38
    local_58cc = "wifi连接失败"
    jmp lbl_3ee2c

lbl_3ec38:
    if global_14 != 1 then jump lbl_3ec7b
    local_58cc = "WiFi connection failed"
    jmp lbl_3ee2c

lbl_3ec7b:
    if global_14 != 2 then jump lbl_3ecc7
    local_58cc = "WiFi接続に失敗しました"
    jmp lbl_3ee2c

lbl_3ecc7:
    if global_14 != 3 then jump lbl_3ed1a
    local_58cc = "Die WLAN-Verbindung ist fehlgeschlagen"
    jmp lbl_3ee2c

lbl_3ed1a:
    if global_14 != 4 then jump lbl_3ed5f
    local_58cc = "La conexión WiFi falló"
    jmp lbl_3ee2c

lbl_3ed5f:
    if global_14 != 5 then jump lbl_3eda8
    local_58cc = "La connexion WiFi a échoué"
    jmp lbl_3ee2c

lbl_3eda8:
    if global_14 != 6 then jump lbl_3edec
    local_58cc = "Falha na conexão Wi-Fi"
    jmp lbl_3ee2c

lbl_3edec:
    if global_14 != 7 then jump lbl_3ee2c
    local_58cc = "Connessione Wi-Fi non riuscita"

lbl_3ee2c:
    if global_14 != 0 then jump lbl_3ee5f
    local_590a = "确定"
    jmp lbl_3efc3

lbl_3ee5f:
    if global_14 != 1 then jump lbl_3ee90
    local_590a = "Sure"
    jmp lbl_3efc3

lbl_3ee90:
    if global_14 != 2 then jump lbl_3eec9
    local_590a = "もちろん"
    jmp lbl_3efc3

lbl_3eec9:
    if global_14 != 3 then jump lbl_3eefc
    local_590a = "Gewiss"
    jmp lbl_3efc3

lbl_3eefc:
    if global_14 != 4 then jump lbl_3ef2f
    local_590a = "Seguro"
    jmp lbl_3efc3

lbl_3ef2f:
    if global_14 != 5 then jump lbl_3ef65
    local_590a = "Bien sûr"
    T 0x5e

lbl_3ef65:
    if global_14 != 6 then jump lbl_3ef97
    local_590a = "Claro"
    jmp lbl_3efc3

lbl_3ef97:
    if global_14 != 7 then jump lbl_3efc3
    local_590a = "Certamente"

lbl_3efc3:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=50, w=268, h=110, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="wifi连接失败"
; text:
;   0: "wifi连接失败"
;   1: "WiFi connection failed"
;   2: "WiFi接続に失敗しました"
;   3: "Die WLAN-Verbindung ist fehlgeschlagen"
;   4: "La conexión WiFi falló"
;   5: "La connexion WiFi a échoué"
;   6: "Falha na conexão Wi-Fi"
;   7: "Connessione Wi-Fi non riuscita"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x3e7e7
; tim=1000, en=1

; timer
.org 0x3e7e7
    if global_1c <= 0 then jump lbl_3e843
    if global_20 <= 0 then jump lbl_3e843
    global_20--
    if global_20 != 0 then jump lbl_3e843
    dim = global_30

lbl_3e843:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3e85d

; touch_release
.org 0x3e85d
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=173, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x3e895
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
; 03ea37:  ff ff                                            |..|

; touch_release
.org 0x3e895
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 412 bytes (4 trailing zero bytes dropped)
; 03ea47:  00 00 00 00 77 69 66 69 e8 bf 9e e6 8e a5 e5 a4  |....wifi........|
; 03ea57:  b1 e8 b4 a5 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03ea67:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03ea77:  00 00 7f 00 00 00 00 00 7b 00 2f 00 c8 00 21 00  |........{./...!.|
; 03ea87:  42 01 4f 00 00 00 00 00 03 00 00 00 00 00 00 00  |B.O.............|
; 03ea97:  ff ff 00 01 00 00 2c 01 b4 c7 00 00 01 00 00 00  |......,.........|
; 03eaa7:  00 00 00 00 62 04 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03eab7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03eac7:  00 00 00 00 00 00 7f 00 00 00 00 00 f4 00 5e 00  |..............^.|
; 03ead7:  80 00 26 00 73 01 83 00 00 00 00 00 00 00 00 00  |..&.s...........|
; 03eae7:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 64 00  |..=.>.........d.|
; 03eaf7:  e4 c8 00 00 01 00 00 00 62 05 00 00 00 00 00 00  |........b.......|
; 03eb07:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03eb17:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03eb27:  6c 00 5e 00 80 00 26 00 eb 00 83 00 00 00 00 00  |l.^...&.........|
; 03eb37:  00 00 00 00 00 00 3d 00 3e 00 ff ff ff ff 01 01  |......=.>.......|
; 03eb47:  00 00 64 00 4c c9 00 00 01 00 00 00 62 06 00 00  |..d.L.......b...|
; 03eb57:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03eb67:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03eb77:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 49 00 ac 00  |............I...|
; 03eb87:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03eb97:  ff ff 01 01 00 00 03 00 b4 c9 00 00 00 00 00 00  |................|
; 03eba7:  62 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03ebb7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03ebc7:  00 00 7f 00 00 00 00 00 4d 00 8f 00 26 00 1e 00  |........M...&...|
; 03ebd7:  72 00 ac 00 00 00 00 00 00 00 e7 39              |r..........9|
