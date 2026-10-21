; page 54 'wifi_scan': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'wifi_scan'): x=0, y=0, w=480, h=272, name hash=0xf35026f7
; flags=0x37, aph=127, events: event_3=0x391cf
; sta=2, pic=1
; 03931e:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x391cf
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x394fa
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_39547
    local_4c71 = "wifi扫描中..."
    jmp lbl_396e0

lbl_39547:
    if global_14 != 1 then jump lbl_39584
    local_4c71 = "WiFi Scanning..."
    jmp lbl_396e0

lbl_39584:
    if global_14 != 2 then jump lbl_395c1
    local_4c71 = "WiFiスキャン"
    jmp lbl_396e0

lbl_395c1:
    if global_14 != 3 then jump lbl_395fa
    local_4c71 = "WLAN-Scannen"
    jmp lbl_396e0

lbl_395fa:
    if global_14 != 4 then jump lbl_39633
    local_4c71 = "Escaneo WiFi"
    jmp lbl_396e0

lbl_39633:
    if global_14 != 5 then jump lbl_3966d
    local_4c71 = "Analyse Wi-Fi"
    jmp lbl_396e0

lbl_3966d:
    if global_14 != 6 then jump lbl_396af
    local_4c71 = "Verificação de WiFi"
    jmp lbl_396e0

lbl_396af:
    if global_14 != 7 then jump lbl_396e0
    local_4c71 = "Scansione Wi-Fi"

lbl_396e0:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=75, w=268, h=122, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="wifi扫描中..."
; text:
;   0: "wifi扫描中..."
;   1: "WiFi Scanning..."
;   2: "WiFiスキャン"
;   3: "WLAN-Scannen"
;   4: "Escaneo WiFi"
;   5: "Analyse Wi-Fi"
;   6: "Verificação de WiFi"
;   7: "Scansione Wi-Fi"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x39226
; tim=1000, en=1

; timer
.org 0x39226
    if global_1c <= 0 then jump lbl_39282
    if global_20 <= 0 then jump lbl_39282
    global_20--
    if global_20 != 0 then jump lbl_39282
    dim = global_30

lbl_39282:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x3929c

; touch_release
.org 0x3929c
    global_20 = global_18
    dims = global_2c

; data after the object structs, 286 bytes (26 trailing zero bytes dropped)
; 0393be:  00 00 00 00 77 69 66 69 e6 89 ab e6 8f 8f e4 b8  |....wifi........|
; 0393ce:  ad 2e 2e 2e 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 0393de:  ff ff 02 01 00 00 2c 01 28 be 00 00 01 00 00 00  |......,.(.......|
; 0393ee:  00 00 00 00 74 03 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 0393fe:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03940e:  00 00 00 00 00 00 7f 00 00 00 00 00 fa 00 4e 00  |..............N.|
; 03941e:  78 00 1d 00 71 01 6a 00 00 00 00 00 03 00 00 00  |x...q.j.........|
; 03942e:  00 00 00 00 ff ff 00 01 00 00 2c 01 58 bf 00 00  |..........,.X...|
; 03943e:  01 00 00 00 00 00 00 00 74 04 00 00 00 00 00 00  |........t.......|
; 03944e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03945e:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03946e:  fa 00 36 00 78 00 1b 00 71 01 50 00 00 00 00 00  |..6.x...q.P.....|
; 03947e:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 03948e:  88 c0 00 00 01 00 00 00 00 00 00 00 33 05 00 00  |............3...|
; 03949e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0394ae:  00 00 00 00 00 00 00 00 e8 03 01 00 05 06 00 00  |................|
; 0394be:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0394ce:  00 00 00 00 00 00 00 00 00 00 00 00 62 07        |............b.|
