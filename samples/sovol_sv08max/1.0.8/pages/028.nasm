; page 28 'no_filament': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'no_filament'): x=0, y=0, w=480, h=272, name hash=0x7791db7
; flags=0x37, aph=127, events: event_3=0x23c7b
; sta=2, pic=2
; 023e3e:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x23c7b
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x240d6
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_2414c
    local_2dee = "检测到没有耗材，请插入耗材"
    local_2e2c = "确定"
    jmp lbl_2449f

lbl_2414c:
    if global_14 != 1 then jump lbl_241b6
    local_2dee = "No material detected, please insert material."
    local_2e2c = "Sure"
    jmp lbl_2449f

lbl_241b6:
    if global_14 != 2 then jump lbl_2425b
    local_2dee = "マテリアルが検出されませんでした。マテリアルを挿入してください。"
    local_2e2c = "もちろん"
    jmp lbl_2449f

lbl_2425b:
    if global_14 != 3 then jump lbl_242ca
    local_2dee = "Kein Material erkannt, bitte Material einsetzen."
    local_2e2c = "Gewiss"
    jmp lbl_2449f

lbl_242ca:
    if global_14 != 4 then jump lbl_2433c
    local_2dee = "No se detecta material, por favor inserte material."
    local_2e2c = "Seguro"
    jmp lbl_2449f

lbl_2433c:
    if global_14 != 5 then jump lbl_243b8
    local_2dee = "Aucun matériau détecté, veuillez insérer du matériau."
    local_2e2c = "Bien sûr"
    jmp lbl_2449f

lbl_243b8:
    if global_14 != 6 then jump lbl_2442a
    local_2dee = "Sem material detetado, por favor, insira o material."
    local_2e2c = "Claro"
    jmp lbl_2449f

lbl_2442a:
    if global_14 != 7 then jump lbl_2449f
    local_2dee = "Nessun materiale rilevato, si prega di inserire il materiale."
    local_2e2c = "Certamente"

lbl_2449f:
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
; flags=0x27, events: timer=0x23cd2
; tim=1000, en=1

; timer
.org 0x23cd2
    if global_1c <= 0 then jump lbl_23d2e
    if global_20 <= 0 then jump lbl_23d2e
    global_20--
    if global_20 != 0 then jump lbl_23d2e
    dim = global_30

lbl_23d2e:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x23d48

; touch_release
.org 0x23d48
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x23d80
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
; 023f22:  ff ff                                            |..|

; touch_release
.org 0x23d80
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 023f32:  00 00 00 00 e6 a3 80 e6 b5 8b e5 88 b0 e6 b2 a1  |................|
; 023f42:  e6 9c 89 e8 80 97 e6 9d 90 ef bc 8c e8 af b7 e6  |................|
; 023f52:  8f 92 e5 85 a5 e8 80 97 e6 9d 90 00 85 a5 e9 bd  |................|
; 023f62:  bf e8 bd ae e5 a4 84 ef bc 8c e7 82 b9 e5 87 bb  |................|
; 023f72:  e7 a1 ae e8 ae a4 e8 bf 9b e6 96 99 00 96 b0 e7  |................|
; 023f82:  9a 84 e8 80 97 e6 9d 90 e5 90 8e e7 bb a7 e7 bb  |................|
; 023f92:  ad e6 89 93 e5 8d b0 00 e6 8d a2 e6 96 99 ef bc  |................|
; 023fa2:  9f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 023fb2:  00 00 7f 00 00 00 00 00 91 00 5e 00 46 00 26 00  |..........^.F.&.|
; 023fc2:  d6 00 83 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 023fd2:  25 00 ff ff ff ff 01 01 00 00 64 00 14 bf 00 00  |%.........d.....|
; 023fe2:  01 00 00 00 62 0d 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 023ff2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024002:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 00 00  |................|
; 024012:  46 00 26 00 41 01 82 00 00 00 00 00 00 00 00 00  |F.&.A...........|
; 024022:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 024032:  7c bf 00 00 01 00 00 00 62 0f 00 00 00 00 00 00  ||.......b.......|
; 024042:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024052:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 024062:  80 01 5d 00 e7 a1 ae e5 ae 9a 00 bf 9b e6 96 99  |..].............|
; 024072:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 024082:  00 00 64 00 e4 bf 00 00 01 00 00 00 62 10 00 00  |..d.........b...|
; 024092:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0240a2:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0240b2:  00 00 00 00 fc 00 93 00 46 00 26 00 e6 98 af 00  |........F.&.....|
; 0240c2:  00 00 00 00 00 00 00 00 00 00 24                 |..........$|
