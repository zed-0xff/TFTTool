; page 52 'updating': 7 objects

; object address table, 7 objects, block loaded at 0xa3a4
.dd 0xa3c0, 0xa400, 0x28cc, 0xa454, 0xa474, 0xa484, 0xa4a4

; object id 0 (page 'updating'): x=0, y=0, w=480, h=272, name hash=0xd2eb7cb7
; flags=0x37, aph=127, events: event_3=0x37192
; sta=2, pic=1
; 037366:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x37192
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    timer

; load
.org 0x37572
    ref 3
    ref 5
    ref 6
    if global_14 != 0 then jump lbl_375d2
    local_4b6c = "更新固件中请稍后..."
    jmp lbl_37860

lbl_375d2:
    if global_14 != 1 then jump lbl_37625
    local_4b6c = "Please wait while updating firmware..."
    jmp lbl_37860

lbl_37625:
    if global_14 != 2 then jump lbl_37697
    local_4b6c = "ファームウェアを更新している間お待ちください..."
    jmp lbl_37860

lbl_37697:
    if global_14 != 3 then jump lbl_37700
    local_4b6c = "Bitte warten Sie, während die Firmware aktualisiert wird..."
    jmp lbl_37860

lbl_37700:
    if global_14 != 4 then jump lbl_37755
    local_4b6c = "Espere mientras actualiza el firmware..."
    jmp lbl_37860

lbl_37755:
    if global_14 != 5 then jump lbl_377bb
    local_4b6c = "Veuillez patienter pendant la mise à jour du firmware..."
    jmp lbl_37860

lbl_377bb:
    if global_14 != 6 then jump lbl_3780f
    local_4b6c = "Aguarde enquanto atualiza o firmware..."
    jmp lbl_37860

lbl_3780f:
    if global_14 != 7 then jump lbl_37860
    local_4b6c = "Attendi durante l'aggiornamento del firmware..."

lbl_37860:
    doevents
    down
    up

; object id 1 (text 't0'): x=93, y=70, w=292, h=96, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="更新固件中请稍后..."
; text:
;   0: "更新固件中请稍后..."
;   1: "Please wait while updating firmware..."
;   2: "ファームウェアを更新している間お待ちください..."
;   3: "Bitte warten Sie, während die Firmware aktualisiert wird..."
;   4: "Espere mientras actualiza el firmware..."
;   5: "Veuillez patienter pendant la mise à jour du firmware..."
;   6: "Aguarde enquanto atualiza o firmware..."
;   7: "Attendi durante l'aggiornamento del firmware..."

; object id 258 (progress_bar 'j0'): x=102, y=168, w=274, h=6, name hash=0xe6a28637

; object id 3 (timer 'tm1'): x=0, y=0, w=1, h=1, name hash=0xedcbfc9e
; flags=0x27, events: timer=0x37203
; tim=1000, en=1

; timer
.org 0x37203
    if local_4bad >= 200 then jump lbl_3722c
    local_4bad = local_4bad+1

lbl_3722c:
    local_4b8e = local_4bad
    timer

; object id 4 (variable 'va0'): x=0, y=0, w=1, h=1, name hash=0xcbcbac4e
; sta=0, val=0
; 0373e6:  34 04 00 07                                      |4...|

; object id 5 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x37250
; tim=1000, en=1

; timer
.org 0x37250
    if global_1c <= 0 then jump lbl_372ac
    if global_20 <= 0 then jump lbl_372ac
    global_20--
    if global_20 != 0 then jump lbl_372ac
    dim = global_30

lbl_372ac:
    down
    up

; object id 6 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x372c6

; touch_release
.org 0x372c6
    global_20 = global_18
    dims = global_2c

; data after the object structs, 307 bytes (5 trailing zero bytes dropped)
; 037436:  00 00 00 00 e6 9b b4 e6 96 b0 e5 9b ba e4 bb b6  |................|
; 037446:  e4 b8 ad e8 af b7 e7 a8 8d e5 90 8e 2e 2e 2e 00  |................|
; 037456:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 037466:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 037476:  00 00 7f 00 00 00 00 00 f4 00 ac 00 80 00 27 00  |..............'.|
; 037486:  73 01 d2 00 00 00 00 00 00 00 00 00 00 00 04 00  |s...............|
; 037496:  05 00 ff ff ff ff 01 01 00 00 64 00 d4 a6 00 00  |..........d.....|
; 0374a6:  01 00 00 00 00 00 00 00 e6 98 af e5 90 a6 e6 9b  |................|
; 0374b6:  b4 e6 96 b0 e5 9b ba e4 bb b6 ef bc 9f 00 8e 82  |................|
; 0374c6:  e8 ae be e7 bd ae e5 90 97 ef bc 9f 00 00 00 00  |................|
; 0374d6:  00 00 00 00 00 00 32 00 33 00 ff ff ff ff 01 01  |......2.3.......|
; 0374e6:  00 00 64 00 4c a8 00 00 01 00 00 00 62 05 00 00  |..d.L.......b...|
; 0374f6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 037506:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 037516:  00 00 00 00 43 00 07 00 86 00 22 00 c8 00 28 00  |....C....."...(.|
; 037526:  00 00 00 00 00 00 00 00 00 00 32 00 33 00 ff ff  |..........2.3...|
; 037536:  ff ff 01 01 00 00 64 00 b4 a8 00 00 01 00 00 00  |......d.........|
; 037546:  62 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 037556:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 037566:  00 00 7f                                         |...|
