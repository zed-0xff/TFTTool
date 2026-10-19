; page 47 'load_clear2': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page 'load_clear2'): x=0, y=0, w=480, h=272, name hash=0xda34cb9
; flags=0x37, aph=127, events: event_3=0x30d68
; sta=2, pic=2
; 030f2b:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x30d68
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x311c3
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_31233
    local_426e = "请清理喷嘴下挤出的耗材"
    local_42ac = "确定"
    jmp lbl_3157b

lbl_31233:
    if global_14 != 1 then jump lbl_312a4
    local_426e = "Please clean the extruded material under the nozzle."
    local_42ac = "Sure"
    jmp lbl_3157b

lbl_312a4:
    if global_14 != 2 then jump lbl_3132e
    local_426e = "ノズルの下に押し出された材料をお掃除ください。"
    local_42ac = "もちろん"
    jmp lbl_3157b

lbl_3132e:
    if global_14 != 3 then jump lbl_313a9
    local_426e = "Bitte reinigen Sie das extrudierte Material unter der Düse."
    local_42ac = "Gewiss"
    jmp lbl_3157b

lbl_313a9:
    if global_14 != 4 then jump lbl_31425
    local_426e = "Por favor, limpie el material extruido debajo de la boquilla."
    local_42ac = "Seguro"
    jmp lbl_3157b

lbl_31425:
    if global_14 != 5 then jump lbl_3149c
    local_426e = "Veuillez nettoyer le matériau extrudé sous la buse."
    local_42ac = "Bien sûr"
    jmp lbl_3157b

lbl_3149c:
    if global_14 != 6 then jump lbl_3150c
    local_426e = "Por favor, limpe o material extrudado sob a ponta."
    local_42ac = "Claro"
    jmp lbl_3157b

lbl_3150c:
    if global_14 != 7 then jump lbl_3157b
    local_426e = "Si prega di pulire il materiale estruso sotto la punta."
    local_42ac = "Certamente"

lbl_3157b:
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
; flags=0x27, events: timer=0x30dbf
; tim=1000, en=1

; timer
.org 0x30dbf
    if global_1c <= 0 then jump lbl_30e1b
    if global_20 <= 0 then jump lbl_30e1b
    global_20--
    if global_20 != 0 then jump lbl_30e1b
    dim = global_30

lbl_30e1b:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x30e35

; touch_release
.org 0x30e35
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x30e6d
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
; 03100f:  ff ff                                            |..|

; touch_release
.org 0x30e6d
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 409 bytes (7 trailing zero bytes dropped)
; 03101f:  00 00 00 00 e8 af b7 e6 b8 85 e7 90 86 e5 96 b7  |................|
; 03102f:  e5 98 b4 e4 b8 8b e6 8c a4 e5 87 ba e7 9a 84 e8  |................|
; 03103f:  80 97 e6 9d 90 00 23 00 4b 01 28 00 00 00 00 00  |......#.K.(.....|
; 03104f:  00 00 00 00 00 00 2e 00 2f 00 ff ff ff ff 01 01  |......../.......|
; 03105f:  00 00 64 00 e0 a8 00 00 01 00 00 00 62 04 00 00  |..d.........b...|
; 03106f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03107f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 03108f:  00 00 00 00 5d 01 06 00 7c 00 23 00 d8 01 28 00  |....]...|.#...(.|
; 03109f:  00 00 00 00 00 00 00 00 00 00 2e 00 2f 00 ff ff  |............/...|
; 0310af:  ff ff 01 01 00 00 64 00 48 a9 00 00 01 00 00 00  |......d.H.......|
; 0310bf:  62 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0310cf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0310df:  00 00 7f 00 00 00 00 00 00 00 50 00 3d 00 36 00  |..........P.=.6.|
; 0310ef:  3c 00 85 00 00 00 00 00 00 00 00 00 00 00 2e 00  |<...............|
; 0310ff:  2f 00 ff ff 00 00 00 00 00 00 64 00 b0 a9 00 00  |/.........d.....|
; 03110f:  01 00 00 00 62 06 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 03111f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03112f:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 91 00  |................|
; 03113f:  3d 00 36 00 3c 00 c6 00 00 00 00 00 00 00 00 00  |=.6.<...........|
; 03114f:  00 00 2e 00 e7 a1 ae e5 ae 9a 00 01 00 00 64 00  |..............d.|
; 03115f:  18 aa 00 00 01 00 00 00 62 07 00 00 00 00 00 00  |........b.......|
; 03116f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 03117f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 03118f:  00 00 d2 00 3d 00 36 00 3c 00 07 01 00 00 00 00  |....=.6.<.......|
; 03119f:  00 00 00 00 00 00 2e 00 2f 00 ff ff ff ff 01 01  |......../.......|
; 0311af:  00 00 64 00 80 aa 00 00 01                       |..d......|
