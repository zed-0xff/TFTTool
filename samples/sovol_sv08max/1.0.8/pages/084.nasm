; page 84: 3 objects

; object address table, 3 objects, block loaded at 0xb950
.dd 0xb95c, 0xb99c, 0xb9f0

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x54ed8af6
; flags=0x37, aph=127
; sta=2, pic=2
; 050e7b:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x5109f
    if global_14 != 0 then jump lbl_510e1
    local_7220 = "请先暂停再换料"
    jmp lbl_51378

lbl_510e1:
    if global_14 != 1 then jump lbl_51138
    local_7220 = "Please pause before replacing the material"
    jmp lbl_51378

lbl_51138:
    if global_14 != 2 then jump lbl_5119e
    local_7220 = "材料を交換する前に一時停止してください"
    jmp lbl_51378

lbl_5119e:
    if global_14 != 3 then jump lbl_511ff
    local_7220 = "Bitte pausieren Sie, bevor Sie das Material wechseln"
    jmp lbl_51378

lbl_511ff:
    if global_14 != 4 then jump lbl_5125c
    local_7220 = "Por favor, pause antes de reemplazar el material"
    jmp lbl_51378

lbl_5125c:
    if global_14 != 5 then jump lbl_512c1
    local_7220 = "Veuillez faire une pause avant de remplacer le matériau"
    jmp lbl_51378

lbl_512c1:
    if global_14 != 6 then jump lbl_51319
    local_7220 = "Por favor, pause antes de trocar o material"
    jmp lbl_51378

lbl_51319:
    if global_14 != 7 then jump lbl_51378
    local_7220 = "Si prega di mettere in pausa prima di sostituire il materiale"

lbl_51378:
    if global_14 != 0 then jump lbl_513ab
    local_7249 = "确定"
    jmp lbl_514f8

lbl_513ab:
    if global_14 != 1 then jump lbl_513da
    local_7249 = "OK"
    jmp lbl_514f8

lbl_513da:
    if global_14 != 2 then jump lbl_5140d
    local_7249 = "確定"
    jmp lbl_514f8

lbl_5140d:
    if global_14 != 3 then jump lbl_5143c
    local_7249 = "OK"
    jmp lbl_514f8

lbl_5143c:
    if global_14 != 4 then jump lbl_51470
    local_7249 = "Aceptar"
    jmp lbl_514f8

lbl_51470:
    if global_14 != 5 then jump lbl_514a5
    local_7249 = "D'accord"
    jmp lbl_514f8

lbl_514a5:
    if global_14 != 6 then jump lbl_514d4
    local_7249 = "OK"
    jmp lbl_514f8

lbl_514d4:
    if global_14 != 7 then jump lbl_514f8
    local_7249 = "OK"

lbl_514f8:
    doevents
    down
    up
    unload
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up
    down
    up

; object id 1 (text 't0'): x=118, y=74, w=242, h=63, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="请先暂停再换料"
; text:
;   0: "请先暂停再换料"
;   1: "Please pause before replacing the material"
;   2: "材料を交換する前に一時停止してください"
;   3: "Bitte pausieren Sie, bevor Sie das Material wechseln"
;   4: "Por favor, pause antes de reemplazar el material"
;   5: "Veuillez faire une pause avant de remplacer le matériau"
;   6: "Por favor, pause antes de trocar o material"
;   7: "Si prega di mettere in pausa prima di sostituire il materiale"

; object id 2 (button 'b1'): x=175, y=170, w=130, h=43, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x50dd1
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="确定"
; text:
;   0: "确定"
;   1: "OK"
;   2: "確定"
;   3: "OK"
;   4: "Aceptar"
;   5: "D'accord"
;   6: "OK"
;   7: "OK"
; touch_release reports to the host: page <page>, widget 0
; 050f1f:  ff ff                                            |..|

; touch_release
.org 0x50dd1
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 358 bytes (6 trailing zero bytes dropped)
; 050f2f:  00 00 00 00 e8 af b7 e5 85 88 e6 9a 82 e5 81 9c  |................|
; 050f3f:  e5 86 8d e6 8d a2 e6 96 99 00 00 00 00 00 00 00  |................|
; 050f4f:  00 00 00 00 00 00 7f 00 00 00 00 00 2d 00 3a 00  |............-.:.|
; 050f5f:  64 00 1e 00 90 00 57 00 00 00 00 00 03 00 00 00  |d.....W.........|
; 050f6f:  00 00 00 00 ff ff 00 01 00 00 2c 01 b8 bc 00 00  |..........,.....|
; 050f7f:  01 00 00 00 00 00 00 00 74 04 00 00 00 00 00 00  |........t.......|
; 050f8f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 050f9f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 050faf:  2d 00 53 00 64 00 1e 00 90 00 70 00 00 00 00 00  |-.S.d.....p.....|
; 050fbf:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 050fcf:  e8 bd 00 00 01 00 00 00 00 00 00 00 33 13 00 00  |............3...|
; 050fdf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 050fef:  00 00 00 00 00 00 00 00 e8 03 01 00 05 14 00 00  |................|
; 050fff:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 05100f:  00 00 00 00 00 00 00 00 00 00 00 00 62 15 00 00  |............b...|
; 05101f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 05102f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 05103f:  00 00 00 00 83 01 05 00 52 00 26 00 d4 01 2a 00  |........R.&...*.|
; 05104f:  00 00 00 00 00 00 00 00 00 00 5d 00 5d 00 ff ff  |..........].]...|
; 05105f:  ff ff 01 01 e7 a1 ae e5 ae 9a 00 00 00 00 00 00  |................|
; 05106f:  00 00 00 00 e7 bd 91 e7 bb 9c e9 80 89 e6 8b a9  |................|
; 05107f:  00 00 00 00 03 00 00 00 00 00 00 00 00 00 00 00  |................|
; 05108f:  00 00 64 00 dc bd                                |..d...|
