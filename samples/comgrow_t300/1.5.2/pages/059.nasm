; page 59 'wifi_failed': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page 'wifi_failed'): x=0, y=0, w=480, h=272, name hash=0x39603296
; flags=0x37, aph=127, events: event_3=0x3dc19
; sta=2, pic=2
; 03dddc:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3dc19
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x3e074
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_3e0c1
    local_5956 = "wifi连接失败"
    jmp lbl_3e2b5

lbl_3e0c1:
    if global_14 != 1 then jump lbl_3e104
    local_5956 = "WiFi connection failed"
    jmp lbl_3e2b5

lbl_3e104:
    if global_14 != 2 then jump lbl_3e150
    local_5956 = "WiFi接続に失敗しました"
    jmp lbl_3e2b5

lbl_3e150:
    if global_14 != 3 then jump lbl_3e1a3
    local_5956 = "Die WLAN-Verbindung ist fehlgeschlagen"
    jmp lbl_3e2b5

lbl_3e1a3:
    if global_14 != 4 then jump lbl_3e1e8
    local_5956 = "La conexión WiFi falló"
    jmp lbl_3e2b5

lbl_3e1e8:
    if global_14 != 5 then jump lbl_3e231
    local_5956 = "La connexion WiFi a échoué"
    jmp lbl_3e2b5

lbl_3e231:
    if global_14 != 6 then jump lbl_3e275
    local_5956 = "Falha na conexão Wi-Fi"
    jmp lbl_3e2b5

lbl_3e275:
    if global_14 != 7 then jump lbl_3e2b5
    local_5956 = "Connessione Wi-Fi non riuscita"

lbl_3e2b5:
    if global_14 != 0 then jump lbl_3e2e8
    local_5994 = "确定"
    jmp lbl_3e44c

lbl_3e2e8:
    if global_14 != 1 then jump lbl_3e319
    local_5994 = "Sure"
    jmp lbl_3e44c

lbl_3e319:
    if global_14 != 2 then jump lbl_3e352
    local_5994 = "もちろん"
    jmp lbl_3e44c

lbl_3e352:
    if global_14 != 3 then jump lbl_3e385
    local_5994 = "Gewiss"
    jmp lbl_3e44c

lbl_3e385:
    if global_14 != 4 then jump lbl_3e3b8
    local_5994 = "Seguro"
    jmp lbl_3e44c

lbl_3e3b8:
    if global_14 != 5 then jump lbl_3e3ee
    local_5994 = "Bien sûr"
    T 0x5e

lbl_3e3ee:
    if global_14 != 6 then jump lbl_3e420
    local_5994 = "Claro"
    jmp lbl_3e44c

lbl_3e420:
    if global_14 != 7 then jump lbl_3e44c
    local_5994 = "Certamente"

lbl_3e44c:
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
; flags=0x27, events: timer=0x3dc70
; tim=1000, en=1

; timer
.org 0x3dc70
    if global_1c <= 0 then jump lbl_3dccc
    if global_20 <= 0 then jump lbl_3dccc
    global_20--
    if global_20 != 0 then jump lbl_3dccc
    dim = global_30

lbl_3dccc:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3dce6

; touch_release
.org 0x3dce6
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=173, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x3dd1e
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
; 03dec0:  ff ff                                            |..|

; touch_release
.org 0x3dd1e
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 412 bytes (4 trailing zero bytes dropped)
; 03ded0:  00 00 00 00 77 69 66 69 e8 bf 9e e6 8e a5 e5 a4  |....wifi........|
; 03dee0:  b1 e8 b4 a5 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03def0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03df00:  00 00 7f 00 00 00 00 00 7b 00 2f 00 c8 00 21 00  |........{./...!.|
; 03df10:  42 01 4f 00 00 00 00 00 03 00 00 00 00 00 00 00  |B.O.............|
; 03df20:  ff ff 00 01 00 00 2c 01 08 b2 00 00 01 00 00 00  |......,.........|
; 03df30:  00 00 00 00 62 04 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03df40:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03df50:  00 00 00 00 00 00 7f 00 00 00 00 00 6c 00 60 00  |............l.`.|
; 03df60:  80 00 26 00 eb 00 85 00 00 00 00 00 00 00 00 00  |..&.............|
; 03df70:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 64 00  |..=.>.........d.|
; 03df80:  38 b3 00 00 01 00 00 00 62 05 00 00 00 00 00 00  |8.......b.......|
; 03df90:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03dfa0:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03dfb0:  f3 00 60 00 80 00 26 00 72 01 85 00 00 00 00 00  |..`...&.r.......|
; 03dfc0:  00 00 00 00 00 00 3d 00 3e 00 ff ff ff ff 01 01  |......=.>.......|
; 03dfd0:  00 00 64 00 a0 b3 00 00 01 00 00 00 62 06 00 00  |..d.........b...|
; 03dfe0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03dff0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03e000:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 49 00 ac 00  |............I...|
; 03e010:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 03e020:  ff ff 01 01 00 00 03 00 08 b4 00 00 00 00 00 00  |................|
; 03e030:  62 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03e040:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03e050:  00 00 7f 00 00 00 00 00 4d 00 8f 00 26 00 1e 00  |........M...&...|
; 03e060:  72 00 ac 00 00 00 00 00 00 00 e7 39              |r..........9|
