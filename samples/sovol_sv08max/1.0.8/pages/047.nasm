; page 47 'load_clear2': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'load_clear2'): x=0, y=0, w=480, h=272, name hash=0xda34cb9
; flags=0x37, aph=127, events: event_3=0x32164
; sta=2, pic=2
; 032327:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x32164
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x325bf
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_3262f
    local_4267 = "请清理喷嘴下挤出的耗材"
    local_42a5 = "确定"
    jmp lbl_32977

lbl_3262f:
    if global_14 != 1 then jump lbl_326a0
    local_4267 = "Please clean the extruded material under the nozzle."
    local_42a5 = "Sure"
    jmp lbl_32977

lbl_326a0:
    if global_14 != 2 then jump lbl_3272a
    local_4267 = "ノズルの下に押し出された材料をお掃除ください。"
    local_42a5 = "もちろん"
    jmp lbl_32977

lbl_3272a:
    if global_14 != 3 then jump lbl_327a5
    local_4267 = "Bitte reinigen Sie das extrudierte Material unter der Düse."
    local_42a5 = "Gewiss"
    jmp lbl_32977

lbl_327a5:
    if global_14 != 4 then jump lbl_32821
    local_4267 = "Por favor, limpie el material extruido debajo de la boquilla."
    local_42a5 = "Seguro"
    jmp lbl_32977

lbl_32821:
    if global_14 != 5 then jump lbl_32898
    local_4267 = "Veuillez nettoyer le matériau extrudé sous la buse."
    local_42a5 = "Bien sûr"
    jmp lbl_32977

lbl_32898:
    if global_14 != 6 then jump lbl_32908
    local_4267 = "Por favor, limpe o material extrudado sob a ponta."
    local_42a5 = "Claro"
    jmp lbl_32977

lbl_32908:
    if global_14 != 7 then jump lbl_32977
    local_4267 = "Si prega di pulire il materiale estruso sotto la punta."
    local_42a5 = "Certamente"

lbl_32977:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=54, w=268, h=105, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="请清理喷嘴下挤出的耗材"
; text:
;   0: "请清理喷嘴下挤出的耗材"
;   1: "Please clean the extruded material under the nozzle."
;   2: "ノズルの下に押し出された材料をお掃除ください。"
;   3: "Bitte reinigen Sie das extrudierte Material unter der Düse."
;   4: "Por favor, limpie el material extruido debajo de la boquilla."
;   5: "Veuillez nettoyer le matériau extrudé sous la buse."
;   6: "Por favor, limpe o material extrudado sob a ponta."
;   7: "Si prega di pulire il materiale estruso sotto la punta."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x321bb
; tim=1000, en=1

; timer
.org 0x321bb
    if global_1c <= 0 then jump lbl_32217
    if global_20 <= 0 then jump lbl_32217
    global_20--
    if global_20 != 0 then jump lbl_32217
    dim = global_30

lbl_32217:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x32231

; touch_release
.org 0x32231
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x32269
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
; 03240b:  ff ff                                            |..|

; touch_release
.org 0x32269
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 409 bytes (7 trailing zero bytes dropped)
; 03241b:  00 00 00 00 e8 af b7 e6 b8 85 e7 90 86 e5 96 b7  |................|
; 03242b:  e5 98 b4 e4 b8 8b e6 8c a4 e5 87 ba e7 9a 84 e8  |................|
; 03243b:  80 97 e6 9d 90 00 23 00 4b 01 28 00 00 00 00 00  |......#.K.(.....|
; 03244b:  00 00 00 00 00 00 2e 00 2f 00 ff ff ff ff 01 01  |......../.......|
; 03245b:  00 00 64 00 8c be 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 03246b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03247b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03248b:  00 00 00 00 5d 01 06 00 7c 00 23 00 d8 01 28 00  |....]...|.#...(.|
; 03249b:  00 00 00 00 00 00 00 00 00 00 2e 00 2f 00 ff ff  |............/...|
; 0324ab:  ff ff 01 01 00 00 64 00 f4 be 00 00 01 00 00 00  |......d.........|
; 0324bb:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0324cb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0324db:  00 00 7f 00 00 00 00 00 00 00 50 00 3d 00 36 00  |..........P.=.6.|
; 0324eb:  3c 00 85 00 00 00 00 00 00 00 00 00 00 00 2e 00  |<...............|
; 0324fb:  2f 00 ff ff 00 00 00 00 00 00 64 00 5c bf 00 00  |/.........d.\...|
; 03250b:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03251b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03252b:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 91 00  |................|
; 03253b:  3d 00 36 00 3c 00 c6 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 03254b:  00 00 2e 00 e7 a1 ae e5 ae 9a 00 01 00 00 64 00  |..............d.|
; 03255b:  c4 bf 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 03256b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03257b:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03258b:  00 00 d2 00 3d 00 36 00 3c 00 07 01 00 00 00 00  |....=.6.<.......|
; 03259b:  00 00 00 00 00 00 2e 00 2f 00 ff ff ff ff 01 01  |......../.......|
; 0325ab:  00 00 64 00 2c c0 00 00 01                       |..d.,....|
