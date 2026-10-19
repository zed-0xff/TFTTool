; page 78 'print_filament': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba4c, 0xbaa0

; object id 0 (page 'print_filament'): x=0, y=0, w=480, h=272, name hash=0xfb2f8631
; flags=0x37, aph=127
; sta=2, pic=100
; 04beb7:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x4c0c7
    if global_14 != 0 then jump lbl_4c10c
    local_6ca9 = "进料"
    local_6cd2 = "退料"
    jmp lbl_4c366

lbl_4c10c:
    if global_14 != 1 then jump lbl_4c158
    local_6ca9 = "Feed"
    local_6cd2 = "Return Material"
    jmp lbl_4c366

lbl_4c158:
    if global_14 != 2 then jump lbl_4c1a9
    local_6ca9 = "材料投入"
    local_6cd2 = "戻し材料"
    jmp lbl_4c366

lbl_4c1a9:
    if global_14 != 3 then jump lbl_4c1fd
    local_6ca9 = "Materialzufuhr"
    local_6cd2 = "Rückführung"
    jmp lbl_4c366

lbl_4c1fd:
    if global_14 != 4 then jump lbl_4c25a
    local_6ca9 = "Materia prima"
    local_6cd2 = "Devolución de material"
    jmp lbl_4c366

lbl_4c25a:
    if global_14 != 5 then jump lbl_4c2b9
    local_6ca9 = "Matériau d'entrée"
    local_6cd2 = "Retour de matériau"
    jmp lbl_4c366

lbl_4c2b9:
    if global_14 != 6 then jump lbl_4c313
    local_6ca9 = "Matério primo"
    local_6cd2 = "Retorno de material"
    jmp lbl_4c366

lbl_4c313:
    if global_14 != 7 then jump lbl_4c366
    local_6ca9 = "Materiale in entrata"
    local_6cd2 = "Ritorno materiale"

lbl_4c366:
    if global_14 != 0 then jump lbl_4c39c
    local_6cfb = "长退料"
    jmp lbl_4c592

lbl_4c39c:
    if global_14 != 1 then jump lbl_4c3dd
    local_6cfb = "Long Material Return"
    jmp lbl_4c592

lbl_4c3dd:
    if global_14 != 2 then jump lbl_4c419
    local_6cfb = "長材料返却"
    jmp lbl_4c592

lbl_4c419:
    if global_14 != 3 then jump lbl_4c45f
    local_6cfb = "Langzeitmaterialrückgabe"
    jmp lbl_4c592

lbl_4c45f:
    if global_14 != 4 then jump lbl_4c4b1
    local_6cfb = "Devolución de material a largo plazo"
    jmp lbl_4c592

lbl_4c4b1:
    if global_14 != 5 then jump lbl_4c4ff
    local_6cfb = "Retour de matériel à long terme"
    jmp lbl_4c592

lbl_4c4ff:
    if global_14 != 6 then jump lbl_4c552
    local_6cfb = "Devolução de material de longo prazo"
    jmp lbl_4c592

lbl_4c552:
    if global_14 != 7 then jump lbl_4c592
    local_6cfb = "Resa materiale a lungo termine"

lbl_4c592:
    doevents
    down
    up
    unload
    down
    up

; object id 1 (button): x=36, y=27, w=40, h=40, name hash=0x731b191
; flags=0x37, aph=127, events: touch_release=0x4bcbb
; borderc=0x0000, picc=0, picc2=0, pco=0x0000, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 8
; 04bef7:  00 00 00 00 03 00                                |......|
; 04bf07:  ff ff                                            |..|

; touch_release
.org 0x4bcbb
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b1'): x=266, y=50, w=123, h=45, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x4bd25
; borderc=0x0000, picc=100, picc2=101, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="进料"
; text:
;   0: "进料"
;   1: "Feed"
;   2: "材料投入"
;   3: "Materialzufuhr"
;   4: "Materia prima"
;   5: "Matériau d'entrée"
;   6: "Matério primo"
;   7: "Materiale in entrata"
; touch_release reports to the host: page <page>, widget 5
; 04bf5b:  ff ff                                            |..|

; touch_release
.org 0x4bd25
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b2'): x=265, y=113, w=123, h=45, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x4bd8f
; borderc=0x0000, picc=100, picc2=101, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="退料"
; text:
;   0: "退料"
;   1: "Return Material"
;   2: "戻し材料"
;   3: "Rückführung"
;   4: "Devolución de material"
;   5: "Retour de matériau"
;   6: "Retorno de material"
;   7: "Ritorno materiale"
; touch_release reports to the host: page <page>, widget 6
; 04bfaf:  ff ff                                            |..|

; touch_release
.org 0x4bd8f
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button): x=266, y=176, w=123, h=45, name hash=0x2a9cd661
; flags=0x37, aph=127, events: touch_release=0x4bdf9
; borderc=0x0000, picc=100, picc2=101, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=1, txt="长退料"
; text:
;   0: "长退料"
;   1: "Long Material Return"
;   2: "長材料返却"
;   3: "Langzeitmaterialrückgabe"
;   4: "Devolución de material a largo plazo"
;   5: "Retour de matériel à long terme"
;   6: "Devolução de material de longo prazo"
;   7: "Resa materiale a lungo termine"
; touch_release reports to the host: page <page>, widget 7
; 04c003:  ff ff                                            |..|

; touch_release
.org 0x4bdf9
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 165 bytes (11 trailing zero bytes dropped)
; 04c013:  00 00 00 00 00 ff 00 01 00 00 64 00 0c bd 00 00  |..........d.....|
; 04c023:  e8 bf 9b e6 96 99 00 00 74 05 00 00 00 00 00 00  |........t.......|
; 04c033:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04c043:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 04c053:  48 00 ab 00 e9 80 80 e6 96 99 00 00 00 00 00 00  |H...............|
; 04c063:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 64 00  |..............d.|
; 04c073:  74 bd 00 00 00 00 00 00 00 00 00 00 74 06 00 00  |t...........t...|
; 04c083:  00 00 00 00 00 00 00 00 e9 95 bf e9 80 80 e6 96  |................|
; 04c093:  99 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 04c0a3:  00 00 00 00 70 01 44 00 14 00 17 00 83 01 5a 00  |....p.D.......Z.|
; 04c0b3:  00 00 00 00 03                                   |.....|
