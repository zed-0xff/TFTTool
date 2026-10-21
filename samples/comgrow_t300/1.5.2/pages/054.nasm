; page 54 'wifi_scan': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'wifi_scan'): x=0, y=0, w=480, h=272, name hash=0xf35026f7
; flags=0x37, aph=127, events: event_3=0x38658
; sta=2, pic=1
; 0387a7:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x38658
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x38983
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_389d0
    local_4cfb = "wifi扫描中..."
    jmp lbl_38b69

lbl_389d0:
    if global_14 != 1 then jump lbl_38a0d
    local_4cfb = "WiFi Scanning..."
    jmp lbl_38b69

lbl_38a0d:
    if global_14 != 2 then jump lbl_38a4a
    local_4cfb = "WiFiスキャン"
    jmp lbl_38b69

lbl_38a4a:
    if global_14 != 3 then jump lbl_38a83
    local_4cfb = "WLAN-Scannen"
    jmp lbl_38b69

lbl_38a83:
    if global_14 != 4 then jump lbl_38abc
    local_4cfb = "Escaneo WiFi"
    jmp lbl_38b69

lbl_38abc:
    if global_14 != 5 then jump lbl_38af6
    local_4cfb = "Analyse Wi-Fi"
    jmp lbl_38b69

lbl_38af6:
    if global_14 != 6 then jump lbl_38b38
    local_4cfb = "Verificação de WiFi"
    jmp lbl_38b69

lbl_38b38:
    if global_14 != 7 then jump lbl_38b69
    local_4cfb = "Scansione Wi-Fi"

lbl_38b69:
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
; flags=0x27, events: timer=0x386af
; tim=1000, en=1

; timer
.org 0x386af
    if global_1c <= 0 then jump lbl_3870b
    if global_20 <= 0 then jump lbl_3870b
    global_20--
    if global_20 != 0 then jump lbl_3870b
    dim = global_30

lbl_3870b:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x38725

; touch_release
.org 0x38725
    global_20 = global_18
    dims = global_2c

; data after the object structs, 303 bytes (9 trailing zero bytes dropped)
; 038847:  00 00 00 00 77 69 66 69 e6 89 ab e6 8f 8f e4 b8  |....wifi........|
; 038857:  ad 2e 2e 2e 00 00 2c 01 1c a7 00 00 01 00 00 00  |......,.........|
; 038867:  00 00 00 00 74 03 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 038877:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 038887:  00 00 00 00 00 00 7f 00 00 00 00 00 23 01 50 00  |............#.P.|
; 038897:  40 00 1d 00 62 01 6c 00 00 00 00 00 03 00 00 00  |@...b.l.........|
; 0388a7:  00 00 00 00 ff ff 00 01 00 00 2c 01 4c a8 00 00  |..........,.L...|
; 0388b7:  01 00 00 00 00 00 00 00 74 04 00 00 00 00 00 00  |........t.......|
; 0388c7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0388d7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0388e7:  23 01 6e 00 40 00 1d 00 62 01 8a 00 00 00 00 00  |#.n.@...b.......|
; 0388f7:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 038907:  7c a9 00 00 01 00 00 00 00 00 00 00 33 05 00 00  ||...........3...|
; 038917:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 038927:  00 00 00 00 00 00 00 00 e8 03 01 00 05 06 00 00  |................|
; 038937:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 038947:  00 00 00 00 00 00 00 00 00 00 00 00 62 07 00 00  |............b...|
; 038957:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 038967:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f     |...............|
