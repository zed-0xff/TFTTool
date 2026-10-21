; page 57 'wifi_connect': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'wifi_connect'): x=0, y=0, w=480, h=272, name hash=0x57a5bd97
; flags=0x37, aph=127, events: event_3=0x3ced4
; sta=2, pic=1
; 03d023:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3ced4
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x3d1ff
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_3d24c
    local_5873 = "wifi连接中..."
    jmp lbl_3d3f9

lbl_3d24c:
    if global_14 != 1 then jump lbl_3d28b
    local_5873 = "WiFi connecting..."
    jmp lbl_3d3f9

lbl_3d28b:
    if global_14 != 2 then jump lbl_3d2ca
    local_5873 = "Wi-Fi 接続中..."
    T 0x12f

lbl_3d2ca:
    if global_14 != 3 then jump lbl_3d309
    local_5873 = "WLAN-Verbindung..."
    jmp lbl_3d3f9

lbl_3d309:
    if global_14 != 4 then jump lbl_3d347
    local_5873 = "Conexión WiFi..."
    jmp lbl_3d3f9

lbl_3d347:
    if global_14 != 5 then jump lbl_3d385
    local_5873 = "Connexion WiFi..."
    jmp lbl_3d3f9

lbl_3d385:
    if global_14 != 6 then jump lbl_3d3c3
    local_5873 = "Conexão Wi-Fi..."
    jmp lbl_3d3f9

lbl_3d3c3:
    if global_14 != 7 then jump lbl_3d3f9
    local_5873 = "Connessione Wi-Fi..."

lbl_3d3f9:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=75, w=268, h=122, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="wifi连接中..."
; text:
;   0: "wifi连接中..."
;   1: "WiFi connecting..."
;   2: "Wi-Fi 接続中..."
;   3: "WLAN-Verbindung..."
;   4: "Conexión WiFi..."
;   5: "Connexion WiFi..."
;   6: "Conexão Wi-Fi..."
;   7: "Connessione Wi-Fi..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x3cf2b
; tim=1000, en=1

; timer
.org 0x3cf2b
    if global_1c <= 0 then jump lbl_3cf87
    if global_20 <= 0 then jump lbl_3cf87
    global_20--
    if global_20 != 0 then jump lbl_3cf87
    dim = global_30

lbl_3cf87:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3cfa1

; touch_release
.org 0x3cfa1
    global_20 = global_18
    dims = global_2c

; data after the object structs, 307 bytes (5 trailing zero bytes dropped)
; 03d0c3:  00 00 00 00 77 69 66 69 e8 bf 9e e6 8e a5 e4 b8  |....wifi........|
; 03d0d3:  ad 2e 2e 2e 00 01 00 00 00 00 00 00 00 00 00 00  |................|
; 03d0e3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d0f3:  00 00 00 00 00 00 7f 00 00 00 00 00 9e 00 0d 00  |................|
; 03d103:  ac 00 21 00 49 01 2d 00 00 00 00 00 03 00 00 00  |..!.I.-.........|
; 03d113:  00 00 00 00 ff ff 01 01 00 00 2c 01 d8 b0 00 00  |..........,.....|
; 03d123:  01 00 00 00 00 00 00 00 74 02 00 00 00 00 00 00  |........t.......|
; 03d133:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d143:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03d153:  7b 00 2f 00 c8 00 21 00 42 01 4f 00 00 00 00 00  |{./...!.B.O.....|
; 03d163:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 03d173:  08 b2 00 00 01 00 00 00 00 00 00 00 62 04 00 00  |............b...|
; 03d183:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d193:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03d1a3:  00 00 00 00 6c 00 60 00 80 00 26 00 eb 00 85 00  |....l.`...&.....|
; 03d1b3:  00 00 00 00 00 00 00 00 00 00 3d 00 3e 00 ff ff  |..........=.>...|
; 03d1c3:  ff ff 01 01 00 00 64 00 38 b3 00 00 01 00 00 00  |......d.8.......|
; 03d1d3:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03d1e3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03d1f3:  00 00 7f                                         |...|
