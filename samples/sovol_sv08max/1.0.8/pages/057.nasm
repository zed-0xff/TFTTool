; page 57 'wifi_connect': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'wifi_connect'): x=0, y=0, w=480, h=272, name hash=0x57a5bd97
; flags=0x37, aph=127, events: event_3=0x3da4b
; sta=2, pic=1
; 03db9a:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3da4b
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x3dd76
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_3ddc3
    local_57e9 = "wifi连接中..."
    jmp lbl_3df70

lbl_3ddc3:
    if global_14 != 1 then jump lbl_3de02
    local_57e9 = "WiFi connecting..."
    jmp lbl_3df70

lbl_3de02:
    if global_14 != 2 then jump lbl_3de41
    local_57e9 = "Wi-Fi 接続中..."
    T 0x12f

lbl_3de41:
    if global_14 != 3 then jump lbl_3de80
    local_57e9 = "WLAN-Verbindung..."
    jmp lbl_3df70

lbl_3de80:
    if global_14 != 4 then jump lbl_3debe
    local_57e9 = "Conexión WiFi..."
    jmp lbl_3df70

lbl_3debe:
    if global_14 != 5 then jump lbl_3defc
    local_57e9 = "Connexion WiFi..."
    jmp lbl_3df70

lbl_3defc:
    if global_14 != 6 then jump lbl_3df3a
    local_57e9 = "Conexão Wi-Fi..."
    jmp lbl_3df70

lbl_3df3a:
    if global_14 != 7 then jump lbl_3df70
    local_57e9 = "Connessione Wi-Fi..."

lbl_3df70:
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
; flags=0x27, events: timer=0x3daa2
; tim=1000, en=1

; timer
.org 0x3daa2
    if global_1c <= 0 then jump lbl_3dafe
    if global_20 <= 0 then jump lbl_3dafe
    global_20--
    if global_20 != 0 then jump lbl_3dafe
    dim = global_30

lbl_3dafe:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3db18

; touch_release
.org 0x3db18
    global_20 = global_18
    dims = global_2c

; data after the object structs, 307 bytes (5 trailing zero bytes dropped)
; 03dc3a:  00 00 00 00 77 69 66 69 e8 bf 9e e6 8e a5 e4 b8  |....wifi........|
; 03dc4a:  ad 2e 2e 2e 00 01 00 00 00 00 00 00 00 00 00 00  |................|
; 03dc5a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03dc6a:  00 00 00 00 00 00 7f 00 00 00 00 00 9e 00 0d 00  |................|
; 03dc7a:  ac 00 21 00 49 01 2d 00 00 00 00 00 03 00 00 00  |..!.I.-.........|
; 03dc8a:  00 00 00 00 ff ff 01 01 00 00 2c 01 84 c6 00 00  |..........,.....|
; 03dc9a:  01 00 00 00 00 00 00 00 74 02 00 00 00 00 00 00  |........t.......|
; 03dcaa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03dcba:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03dcca:  7b 00 2f 00 c8 00 21 00 42 01 4f 00 00 00 00 00  |{./...!.B.O.....|
; 03dcda:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 03dcea:  b4 c7 00 00 01 00 00 00 00 00 00 00 62 04 00 00  |............b...|
; 03dcfa:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03dd0a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03dd1a:  00 00 00 00 f4 00 5e 00 80 00 26 00 73 01 83 00  |......^...&.s...|
; 03dd2a:  00 00 00 00 00 00 00 00 00 00 3d 00 3e 00 ff ff  |..........=.>...|
; 03dd3a:  ff ff 01 01 00 00 64 00 e4 c8 00 00 01 00 00 00  |......d.........|
; 03dd4a:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 03dd5a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03dd6a:  00 00 7f                                         |...|
