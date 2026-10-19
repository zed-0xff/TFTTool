; page 28 'no_filament': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page 'no_filament'): x=0, y=0, w=480, h=272, name hash=0x7791db7
; flags=0x37, aph=127, events: event_3=0x21f09
; sta=2, pic=2
; 0220cc:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x21f09
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x22364
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_223da
    local_2ca7 = "检测到没有耗材，请插入耗材"
    local_2ce5 = "确定"
    jmp lbl_2272d

lbl_223da:
    if global_14 != 1 then jump lbl_22444
    local_2ca7 = "No material detected, please insert material."
    local_2ce5 = "Sure"
    jmp lbl_2272d

lbl_22444:
    if global_14 != 2 then jump lbl_224e9
    local_2ca7 = "マテリアルが検出されませんでした。マテリアルを挿入してください。"
    local_2ce5 = "もちろん"
    jmp lbl_2272d

lbl_224e9:
    if global_14 != 3 then jump lbl_22558
    local_2ca7 = "Kein Material erkannt, bitte Material einsetzen."
    local_2ce5 = "Gewiss"
    jmp lbl_2272d

lbl_22558:
    if global_14 != 4 then jump lbl_225ca
    local_2ca7 = "No se detecta material, por favor inserte material."
    local_2ce5 = "Seguro"
    jmp lbl_2272d

lbl_225ca:
    if global_14 != 5 then jump lbl_22646
    local_2ca7 = "Aucun matériau détecté, veuillez insérer du matériau."
    local_2ce5 = "Bien sûr"
    jmp lbl_2272d

lbl_22646:
    if global_14 != 6 then jump lbl_226b8
    local_2ca7 = "Sem material detetado, por favor, insira o material."
    local_2ce5 = "Claro"
    jmp lbl_2272d

lbl_226b8:
    if global_14 != 7 then jump lbl_2272d
    local_2ca7 = "Nessun materiale rilevato, si prega di inserire il materiale."
    local_2ce5 = "Certamente"

lbl_2272d:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=52, w=268, h=107, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="检测到没有耗材，请插入耗材"
; text:
;   0: "检测到没有耗材，请插入耗材"
;   1: "No material detected, please insert material."
;   2: "マテリアルが検出されませんでした。マテリアルを挿入してください。"
;   3: "Kein Material erkannt, bitte Material einsetzen."
;   4: "No se detecta material, por favor inserte material."
;   5: "Aucun matériau détecté, veuillez insérer du matériau."
;   6: "Sem material detetado, por favor, insira o material."
;   7: "Nessun materiale rilevato, si prega di inserire il materiale."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x21f60
; tim=1000, en=1

; timer
.org 0x21f60
    if global_1c <= 0 then jump lbl_21fbc
    if global_20 <= 0 then jump lbl_21fbc
    global_20--
    if global_20 != 0 then jump lbl_21fbc
    dim = global_30

lbl_21fbc:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x21fd6

; touch_release
.org 0x21fd6
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2200e
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确定"
; text:
;   0: "确定"
;   1: "Sure"
;   2: "もちろん"
;   3: "Gewiss"
;   4: "Seguro"
;   5: "Bien sûr"
;   6: "Claro"
;   7: "Certamente"
; touch_release reports to the host: page <page>, widget 0
; 0221b0:  ff ff                                            |..|

; touch_release
.org 0x2200e
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 0221c0:  00 00 00 00 e6 a3 80 e6 b5 8b e5 88 b0 e6 b2 a1  |................|
; 0221d0:  e6 9c 89 e8 80 97 e6 9d 90 ef bc 8c e8 af b7 e6  |................|
; 0221e0:  8f 92 e5 85 a5 e8 80 97 e6 9d 90 00 85 a5 e9 bd  |................|
; 0221f0:  bf e8 bd ae e5 a4 84 ef bc 8c e7 82 b9 e5 87 bb  |................|
; 022200:  e7 a1 ae e8 ae a4 e8 bf 9b e6 96 99 00 00 64 00  |..............d.|
; 022210:  d4 a6 00 00 01 00 00 00 00 00 00 00 e6 a3 80 e6  |................|
; 022220:  b5 8b e5 88 b0 e8 80 97 e6 9d 90 e5 b7 b2 e7 94  |................|
; 022230:  a8 e5 b0 bd 3b e8 80 97 e6 9d 90 e5 b7 b2 e9 80  |....;...........|
; 022240:  80 e5 87 ba ef bc 8c e8 af b7 e5 b0 86 e8 80 97  |................|
; 022250:  e6 9d 90 e6 8b 94 e5 87 ba e7 a7 bb e9 99 a4 00  |................|
; 022260:  47 00 26 00 53 00 83 00 00 00 00 00 00 00 00 00  |G.&.S...........|
; 022270:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 022280:  40 ab 00 00 01 00 00 00 62 0d 00 00 00 00 00 00  |@.......b.......|
; 022290:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0222a0:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0222b0:  91 00 5e 00 46 00 26 00 d6 00 83 00 00 00 00 00  |..^.F.&.........|
; 0222c0:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 0222d0:  00 00 64 00 a8 ab 00 00 01 00 00 00 62 0e 00 00  |..d.........b...|
; 0222e0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0222f0:  00 00 00 00 e7 a1 ae e5 ae 9a 00 bf 9b e6 96 99  |................|
; 022300:  00 00 00 00 fc 00 5d 00 46 00 26 00 41 01 82 00  |......].F.&.A...|
; 022310:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 022320:  ff ff 01 01 00 00 64 00 10 ac 00 00 01 00 00 00  |......d.........|
; 022330:  62 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 022340:  00 00 00 00 00 00 00 00 00 00 00 00 e7 bb 93 e6  |................|
; 022350:  9d 9f e6 89 93 e5 8d b0 00 01 5d                 |..........]|
