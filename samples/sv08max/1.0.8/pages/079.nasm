; page 79: 2 objects

; object address table, 2 objects, block loaded at 0xb950
.dd 0xb958, 0xb998

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xf31d85e9
; flags=0x37, aph=127
; sta=2, pic=1
; 04c62b:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x4c7c7
    if global_14 != 0 then jump lbl_4c812
    local_6d43 = "正在暂停中，请稍后..."
    jmp lbl_4ca23

lbl_4c812:
    if global_14 != 1 then jump lbl_4c856
    local_6d43 = "Pausing, please wait..."
    jmp lbl_4ca23

lbl_4c856:
    if global_14 != 2 then jump lbl_4c8b9
    local_6d43 = "一時停止中、しばらくお待ちください..."
    jmp lbl_4ca23

lbl_4c8b9:
    if global_14 != 3 then jump lbl_4c904
    local_6d43 = "Wird pausiert, bitte warten..."
    jmp lbl_4ca23

lbl_4c904:
    if global_14 != 4 then jump lbl_4c94e
    local_6d43 = "En pausa, por favor espere..."
    jmp lbl_4ca23

lbl_4c94e:
    if global_14 != 5 then jump lbl_4c99a
    local_6d43 = "En pause, veuillez patienter..."
    jmp lbl_4ca23

lbl_4c99a:
    if global_14 != 6 then jump lbl_4c9e5
    local_6d43 = "Em pausa, por favor aguarde..."
    jmp lbl_4ca23

lbl_4c9e5:
    if global_14 != 7 then jump lbl_4ca23
    local_6d43 = "In pausa, attendere prego..."

lbl_4ca23:
    doevents
    down
    up
    unload
    down
    up
    down
    up

; object id 1 (text 't0'): x=117, y=100, w=242, h=63, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="正在暂停中，请稍后..."
; text:
;   0: "正在暂停中，请稍后..."
;   1: "Pausing, please wait..."
;   2: "一時停止中、しばらくお待ちください..."
;   3: "Wird pausiert, bitte warten..."
;   4: "En pausa, por favor espere..."
;   5: "En pause, veuillez patienter..."
;   6: "Em pausa, por favor aguarde..."
;   7: "In pausa, attendere prego..."

; data after the object structs, 290 bytes (22 trailing zero bytes dropped)
; 04c68b:  00 00 00 00 e6 ad a3 e5 9c a8 e6 9a 82 e5 81 9c  |................|
; 04c69b:  e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d e5 90 8e 2e  |................|
; 04c6ab:  2e 2e 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 04c6bb:  00 00 00 00 0a 01 32 00 7b 00 2d 00 84 01 5e 00  |......2.{.-...^.|
; 04c6cb:  00 00 00 00 00 00 00 00 00 00 64 00 65 00 ff ff  |..........d.e...|
; 04c6db:  ff ff 01 01 00 00 32 00 04 bb 00 00 00 00 00 00  |......2.........|
; 04c6eb:  62 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 04c6fb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04c70b:  00 00 7f 00 00 00 00 00 09 01 71 00 7b 00 2d 00  |..........q.{.-.|
; 04c71b:  83 01 9d 00 00 00 00 00 00 00 00 00 00 00 64 00  |..............d.|
; 04c72b:  65 00 ff ff ff ff 01 01 00 00 32 00 38 bb 00 00  |e.........2.8...|
; 04c73b:  00 00 00 00 62 04 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 04c74b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04c75b:  00 00 00 00 00 00 7f 00 00 00 00 00 0a 01 b0 00  |................|
; 04c76b:  7b 00 2d 00 84 01 dc 00 00 00 00 00 00 00 00 00  |{.-.............|
; 04c77b:  00 00 64 00 65 00 ff ff ff ff 01 01 00 00 32 00  |..d.e.........2.|
; 04c78b:  6c bb 00 00 01 00 00 00 00 00 00 00 00 ff 00 01  |l...............|
; 04c79b:  00 00 64 00 0c bd 00 00 e8 bf 9b e6 96 99 00 00  |..d.............|
; 04c7ab:  74 05                                            |t.|
