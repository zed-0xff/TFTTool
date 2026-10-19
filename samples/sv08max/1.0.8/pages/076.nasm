; page 76: 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x48204004
; flags=0x37, aph=127, events: event_3=0x4a853
; sta=2, pic=2
; 04aa16:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x4a853
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x4acae
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_4ad1e
    local_6a4f = "剩余空间不足，请先清理"
    local_6a8d = "确定"
    jmp lbl_4b088

lbl_4ad1e:
    if global_14 != 1 then jump lbl_4ad8c
    local_6a4f = "Insufficient storage space, please clear some space"
    local_6a8d = "OK"
    jmp lbl_4b088

lbl_4ad8c:
    if global_14 != 2 then jump lbl_4ae19
    local_6a4f = "空き容量が不足しています。クリーンアップしてください"
    local_6a8d = "確認"
    jmp lbl_4b088

lbl_4ae19:
    if global_14 != 3 then jump lbl_4ae9e
    local_6a4f = "Nicht genügend Speicherplatz, bitte räumen Sie etwas Platz frei"
    local_6a8d = "Bestätigen"
    jmp lbl_4b088

lbl_4ae9e:
    if global_14 != 4 then jump lbl_4af1e
    local_6a4f = "Espacio de almacenamiento insuficiente, por favor libere espacio"
    local_6a8d = "Aceptar"
    jmp lbl_4b088

lbl_4af1e:
    if global_14 != 5 then jump lbl_4af9d
    local_6a4f = "Espace de stockage insuffisant, veuillez libérer de l'espace"
    local_6a8d = "Confirmer"
    jmp lbl_4b088

lbl_4af9d:
    if global_14 != 6 then jump lbl_4b01e
    local_6a4f = "Espaço de armazenamento insuficiente, por favor libere espaço"
    local_6a8d = "Confirmar"
    jmp lbl_4b088

lbl_4b01e:
    if global_14 != 7 then jump lbl_4b088
    local_6a4f = "Spazio di archiviazione insufficiente, libera spazio"
    local_6a8d = "Conferma"

lbl_4b088:
    doevents
    down
    up
    unload
    down
    up

; object id 1 (text 't0'): x=106, y=50, w=268, h=110, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="剩余空间不足，请先清理"
; text:
;   0: "剩余空间不足，请先清理"
;   1: "Insufficient storage space, please clear some space"
;   2: "空き容量が不足しています。クリーンアップしてください"
;   3: "Nicht genügend Speicherplatz, bitte räumen Sie etwas Platz frei"
;   4: "Espacio de almacenamiento insuficiente, por favor libere espacio"
;   5: "Espace de stockage insuffisant, veuillez libérer de l'espace"
;   6: "Espaço de armazenamento insuficiente, por favor libere espaço"
;   7: "Spazio di archiviazione insufficiente, libera spazio"

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x4a8aa
; tim=1000, en=1

; timer
.org 0x4a8aa
    if global_1c <= 0 then jump lbl_4a906
    if global_20 <= 0 then jump lbl_4a906
    global_20--
    if global_20 != 0 then jump lbl_4a906
    dim = global_30

lbl_4a906:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x4a920

; touch_release
.org 0x4a920
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=173, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x4a958
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确定"
; text:
;   0: "确定"
;   1: "OK"
;   2: "確認"
;   3: "Bestätigen"
;   4: "Aceptar"
;   5: "Confirmer"
;   6: "Confirmar"
;   7: "Conferma"
; touch_release reports to the host: page <page>, widget 0
; 04aafa:  ff ff                                            |..|

; touch_release
.org 0x4a958
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 410 bytes (6 trailing zero bytes dropped)
; 04ab0a:  00 00 00 00 e5 89 a9 e4 bd 99 e7 a9 ba e9 97 b4  |................|
; 04ab1a:  e4 b8 8d e8 b6 b3 ef bc 8c e8 af b7 e5 85 88 e6  |................|
; 04ab2a:  b8 85 e7 90 86 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04ab3a:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 04ab4a:  64 00 9c 00 8f 00 1a 00 f2 00 b5 00 00 00 00 00  |d...............|
; 04ab5a:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 04ab6a:  e0 be 00 00 01 00 00 00 00 00 00 00 74 05 00 00  |............t...|
; 04ab7a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04ab8a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 04ab9a:  00 00 00 00 fa 00 9c 00 4a 00 1a 00 43 01 b5 00  |........J...C...|
; 04abaa:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 04abba:  00 00 2c 01 10 c0 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 04abca:  00 00 00 00 e6 ad a3 e5 9c a8 e5 a4 8d e5 88 b6  |................|
; 04abda:  e5 88 b0 e4 b8 bb e6 9d bf e5 86 85 e5 ad 98 00  |................|
; 04abea:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 04abfa:  7d 01 09 00 4c 00 20 00 c8 01 28 00 00 00 00 00  |}...L. ...(.....|
; 04ac0a:  00 00 00 00 00 00 70 00 70 00 ff ff ff ff 01 01  |......p.p.......|
; 04ac1a:  00 00 32 00 98 bf 00 00 00 00 00 00 74 07 00 00  |..2.........t...|
; 04ac2a:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04ac3a:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 7f 00  |................|
; 04ac4a:  00 00 00 00 46 00 26 00 dd 00 28 00 22 01 4d 00  |....F.&...(.".M.|
; 04ac5a:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 04ac6a:  00 00 c8 00 cc bf 00 00 01 00 00 00 00 00 00 00  |................|
; 04ac7a:  00 00 00 00 e6 a0 a1 e5 87 86 00 00 75 01 fe 00  |............u...|
; 04ac8a:  00 00 00 00 03 00 00 00 00 00 00 00 00 00 ff ff  |................|
; 04ac9a:  ff ff 01 01 00 00 0a 00 34 c2                    |........4.|
