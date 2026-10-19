; page 39 'homing': 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba14

; object id 0 (page 'homing'): x=0, y=0, w=480, h=272, name hash=0xe74f7b36
; flags=0x37, aph=127, events: event_3=0x2bcdb
; sta=2, pic=1
; 02be2a:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2bcdb
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x2c006
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_2c05b
    local_3824 = "回零中，请稍后..."
    jmp lbl_2c2bb

lbl_2c05b:
    if global_14 != 1 then jump lbl_2c09e
    local_3824 = "Homing, please wait..."
    jmp lbl_2c2bb

lbl_2c09e:
    if global_14 != 2 then jump lbl_2c0f8
    local_3824 = "ホーミング中、お待ちください..."
    jmp lbl_2c2bb

lbl_2c0f8:
    if global_14 != 3 then jump lbl_2c13c
    local_3824 = "Homing, bitte warten..."
    jmp lbl_2c2bb

lbl_2c13c:
    if global_14 != 4 then jump lbl_2c19f
    local_3824 = "Regresando a la posición inicial, por favor espere..."
    jmp lbl_2c2bb

lbl_2c19f:
    if global_14 != 5 then jump lbl_2c202
    local_3824 = "Retour à la position d'origine, veuillez patienter..."
    jmp lbl_2c2bb

lbl_2c202:
    if global_14 != 6 then jump lbl_2c264
    local_3824 = "Retornando à posição inicial, aguarde por favor..."
    jmp lbl_2c2bb

lbl_2c264:
    if global_14 != 7 then jump lbl_2c2bb
    local_3824 = "Ritorno alla posizione di origine, attendere prego..."

lbl_2c2bb:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=75, w=268, h=122, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="回零中，请稍后..."
; text:
;   0: "回零中，请稍后..."
;   1: "Homing, please wait..."
;   2: "ホーミング中、お待ちください..."
;   3: "Homing, bitte warten..."
;   4: "Regresando a la posición inicial, por favor espere..."
;   5: "Retour à la position d'origine, veuillez patienter..."
;   6: "Retornando à posição inicial, aguarde por favor..."
;   7: "Ritorno alla posizione di origine, attendere prego..."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2bd32
; tim=1000, en=1

; timer
.org 0x2bd32
    if global_1c <= 0 then jump lbl_2bd8e
    if global_20 <= 0 then jump lbl_2bd8e
    global_20--
    if global_20 != 0 then jump lbl_2bd8e
    dim = global_30

lbl_2bd8e:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2bda8

; touch_release
.org 0x2bda8
    global_20 = global_18
    dims = global_2c

; data after the object structs, 286 bytes (26 trailing zero bytes dropped)
; 02beca:  00 00 00 00 e5 9b 9e e9 9b b6 e4 b8 ad ef bc 8c  |................|
; 02beda:  e8 af b7 e7 a8 8d e5 90 8e 2e 2e 2e 00 03 00 00  |................|
; 02beea:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02befa:  00 00 00 00 00 00 00 00 e8 03 01 00 05 04 00 00  |................|
; 02bf0a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02bf1a:  00 00 00 00 00 00 00 00 00 00 00 00 62 05 00 00  |............b...|
; 02bf2a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02bf3a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02bf4a:  00 00 00 00 f4 00 ac 00 80 00 27 00 73 01 d2 00  |..........'.s...|
; 02bf5a:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 02bf6a:  ff ff 01 01 00 00 64 00 80 bc 00 00 01 00 00 00  |......d.........|
; 02bf7a:  00 00 00 00 00 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 02bf8a:  2c c1 00 00 01 00 00 00 62 04 00 00 00 00 00 00  |,.......b.......|
; 02bf9a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02bfaa:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02bfba:  00 00 07 00 3d 00 36 00 3c 00 3c 00 00 00 00 00  |....=.6.<.<.....|
; 02bfca:  00 00 00 00 00 00 28 00 29 00 ff ff ff ff 01 01  |......(.).......|
; 02bfda:  00 00 64 00 94 c1 00 00 01 00 00 00 62 05        |..d.........b.|
