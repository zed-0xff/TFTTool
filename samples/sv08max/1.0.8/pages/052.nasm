; page 52 'updating': 8 objects

; object address table, 8 objects, block loaded at 0xb950
.dd 0xb970, 0xb9b0, 0x2978, 0xba04, 0xba24, 0xba34, 0xba54, 0xba74

; object id 0 (page 'updating'): x=0, y=0, w=480, h=272, name hash=0xd2eb7cb7
; flags=0x37, aph=127, events: event_3=0x3750d
; sta=2, pic=1
; 037705:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x3750d
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up
    timer

; load
.org 0x37999
    ref 3
    ref 5
    ref 6
    if global_14 != 0 then jump lbl_379f9
    local_4a1d = "更新固件中请稍后..."
    jmp lbl_37c87

lbl_379f9:
    if global_14 != 1 then jump lbl_37a4c
    local_4a1d = "Please wait while updating firmware..."
    jmp lbl_37c87

lbl_37a4c:
    if global_14 != 2 then jump lbl_37abe
    local_4a1d = "ファームウェアを更新している間お待ちください..."
    jmp lbl_37c87

lbl_37abe:
    if global_14 != 3 then jump lbl_37b27
    local_4a1d = "Bitte warten Sie, während die Firmware aktualisiert wird..."
    jmp lbl_37c87

lbl_37b27:
    if global_14 != 4 then jump lbl_37b7c
    local_4a1d = "Espere mientras actualiza el firmware..."
    jmp lbl_37c87

lbl_37b7c:
    if global_14 != 5 then jump lbl_37be2
    local_4a1d = "Veuillez patienter pendant la mise à jour du firmware..."
    jmp lbl_37c87

lbl_37be2:
    if global_14 != 6 then jump lbl_37c36
    local_4a1d = "Aguarde enquanto atualiza o firmware..."
    jmp lbl_37c87

lbl_37c36:
    if global_14 != 7 then jump lbl_37c87
    local_4a1d = "Attendi durante l'aggiornamento del firmware..."

lbl_37c87:
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
; flags=0x27, events: timer=0x3757e
; tim=1000, en=0

; timer
.org 0x3757e
    if local_4a5e >= 200 then jump lbl_375a7
    local_4a5e = local_4a5e+1

lbl_375a7:
    local_4a3f = local_4a5e
    timer

; object id 4 (variable 'va0'): x=0, y=0, w=1, h=1, name hash=0xcbcbac4e
; sta=0, val=0
; 037785:  34 04 00 07                                      |4...|

; object id 5 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x375cb
; tim=1000, en=1

; timer
.org 0x375cb
    if global_1c <= 0 then jump lbl_37627
    if global_20 <= 0 then jump lbl_37627
    global_20--
    if global_20 != 0 then jump lbl_37627
    dim = global_30

lbl_37627:
    down
    up

; object id 6 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x37641

; touch_release
.org 0x37641
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 7 (text 't1'): x=110, y=136, w=258, h=30, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, background=0, txt="0%"

; data after the object structs, 354 bytes (10 trailing zero bytes dropped)
; 037829:  00 00 00 00 e6 9b b4 e6 96 b0 e5 9b ba e4 bb b6  |................|
; 037839:  e4 b8 ad e8 af b7 e7 a8 8d e5 90 8e 2e 2e 2e 00  |................|
; 037849:  e6 98 af e5 90 a6 e6 9b b4 e6 96 b0 e5 9b ba e4  |................|
; 037859:  bb b6 ef bc 9f 00 8e 82 e8 ae be e7 bd ae e5 90  |................|
; 037869:  97 ef bc 9f 00 00 00 00 00 00 00 00 00 00 32 00  |..............2.|
; 037879:  33 00 ff ff ff ff 01 01 00 00 64 00 f8 bd 00 00  |3.........d.....|
; 037889:  01 00 00 00 62 05 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 037899:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0378a9:  00 00 00 00 00 00 7f 00 00 00 00 00 43 00 07 00  |............C...|
; 0378b9:  d0 00 22 00 12 01 28 00 00 00 00 00 00 00 00 00  |.."...(.........|
; 0378c9:  00 00 32 00 33 00 ff ff ff ff 01 01 00 00 64 00  |..2.3.........d.|
; 0378d9:  60 be 00 00 01 00 00 00 62 06 00 00 00 00 00 00  |`.......b.......|
; 0378e9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0378f9:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 037909:  0e 01 07 00 c6 00 22 00 d3 01 28 00 00 00 00 00  |......"...(.....|
; 037919:  00 00 00 00 00 00 32 00 33 00 ff ff ff ff 01 01  |......2.3.......|
; 037929:  00 00 64 00 c8 be 00 00 01 00 00 00 62 07 00 00  |..d.........b...|
; 037939:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 037949:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 037959:  00 00 00 00 30 25 00 00 0e 00 06 00 df 01 05 00  |....0%..........|
; 037969:  00 00 00 00 00 00 00 00 00 00 32 00 33 00 ff ff  |..........2.3...|
; 037979:  e6 98 af 00 00 00 64 00 30 bf 00 00 01 00 00 00  |......d.0.......|
; 037989:  62 0e                                            |b.|
