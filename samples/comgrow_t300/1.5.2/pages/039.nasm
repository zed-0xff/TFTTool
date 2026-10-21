; page 39 'homing': 4 objects

; object address table, 4 objects, block loaded at 0xa3a4
.dd 0xa3b4, 0xa3f4, 0xa448, 0xa468

; object id 0 (page 'homing'): x=0, y=0, w=480, h=272, name hash=0xe74f7b36
; flags=0x37, aph=127, events: event_3=0x2a135
; sta=2, pic=1
; 02a284:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2a135
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x2a460
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_2a4b5
    local_36eb = "回零中，请稍后..."
    jmp lbl_2a715

lbl_2a4b5:
    if global_14 != 1 then jump lbl_2a4f8
    local_36eb = "Homing, please wait..."
    jmp lbl_2a715

lbl_2a4f8:
    if global_14 != 2 then jump lbl_2a552
    local_36eb = "ホーミング中、お待ちください..."
    jmp lbl_2a715

lbl_2a552:
    if global_14 != 3 then jump lbl_2a596
    local_36eb = "Homing, bitte warten..."
    jmp lbl_2a715

lbl_2a596:
    if global_14 != 4 then jump lbl_2a5f9
    local_36eb = "Regresando a la posición inicial, por favor espere..."
    jmp lbl_2a715

lbl_2a5f9:
    if global_14 != 5 then jump lbl_2a65c
    local_36eb = "Retour à la position d'origine, veuillez patienter..."
    jmp lbl_2a715

lbl_2a65c:
    if global_14 != 6 then jump lbl_2a6be
    local_36eb = "Retornando à posição inicial, aguarde por favor..."
    jmp lbl_2a715

lbl_2a6be:
    if global_14 != 7 then jump lbl_2a715
    local_36eb = "Ritorno alla posizione di origine, attendere prego..."

lbl_2a715:
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
; flags=0x27, events: timer=0x2a18c
; tim=1000, en=1

; timer
.org 0x2a18c
    if global_1c <= 0 then jump lbl_2a1e8
    if global_20 <= 0 then jump lbl_2a1e8
    global_20--
    if global_20 != 0 then jump lbl_2a1e8
    dim = global_30

lbl_2a1e8:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2a202

; touch_release
.org 0x2a202
    global_20 = global_18
    dims = global_2c

; data after the object structs, 286 bytes (26 trailing zero bytes dropped)
; 02a324:  00 00 00 00 e5 9b 9e e9 9b b6 e4 b8 ad ef bc 8c  |................|
; 02a334:  e8 af b7 e7 a8 8d e5 90 8e 2e 2e 2e 00 03 00 00  |................|
; 02a344:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a354:  00 00 00 00 00 00 00 00 e8 03 01 00 05 04 00 00  |................|
; 02a364:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a374:  00 00 00 00 00 00 00 00 00 00 00 00 62 05 00 00  |............b...|
; 02a384:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a394:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 02a3a4:  00 00 00 00 f4 00 ac 00 80 00 27 00 73 01 d2 00  |..........'.s...|
; 02a3b4:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 02a3c4:  ff ff 01 01 00 00 64 00 d4 a6 00 00 01 00 00 00  |......d.........|
; 02a3d4:  00 00 00 00 00 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 02a3e4:  80 ab 00 00 01 00 00 00 62 04 00 00 00 00 00 00  |........b.......|
; 02a3f4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 02a404:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 02a414:  00 00 07 00 3d 00 36 00 3c 00 3c 00 00 00 00 00  |....=.6.<.<.....|
; 02a424:  00 00 00 00 00 00 28 00 29 00 ff ff ff ff 01 01  |......(.).......|
; 02a434:  00 00 64 00 e8 ab 00 00 01 00 00 00 62 05        |..d.........b.|
