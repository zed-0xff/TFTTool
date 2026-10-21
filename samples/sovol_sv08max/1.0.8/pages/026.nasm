; page 26 'unload_finish': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'unload_finish'): x=0, y=0, w=480, h=272, name hash=0xddb532ff
; flags=0x37, aph=127, events: event_3=0x2297a
; sta=2, pic=2
; 022b3d:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2297a
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x22dd5
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_22e4e
    local_2ce2 = "耗材已退出，请将耗材拔出移除"
    local_2d20 = "确定"
    jmp lbl_2319d

lbl_22e4e:
    if global_14 != 1 then jump lbl_22eb9
    local_2ce2 = "Material unloaded, please remove the material."
    local_2d20 = "Sure"
    jmp lbl_2319d

lbl_22eb9:
    if global_14 != 2 then jump lbl_22f61
    local_2ce2 = "マテリアルがアンロードされました、マテリアルを取り外してください。"
    local_2d20 = "もちろん"
    jmp lbl_2319d

lbl_22f61:
    if global_14 != 3 then jump lbl_22fd4
    local_2ce2 = "Material entladen, bitte entfernen Sie das Material."
    local_2d20 = "Gewiss"
    jmp lbl_2319d

lbl_22fd4:
    if global_14 != 4 then jump lbl_23045
    local_2ce2 = "Material descargado, retire el material por favor."
    local_2d20 = "Seguro"
    jmp lbl_2319d

lbl_23045:
    if global_14 != 5 then jump lbl_230bb
    local_2ce2 = "Matériau déchargé, veuillez retirer le matériau."
    local_2d20 = "Bien sûr"
    jmp lbl_2319d

lbl_230bb:
    if global_14 != 6 then jump lbl_2312d
    local_2ce2 = "Material descarregado, por favor, remova o material."
    local_2d20 = "Claro"
    jmp lbl_2319d

lbl_2312d:
    if global_14 != 7 then jump lbl_2319d
    local_2ce2 = "Materiale scaricato, si prega di rimuovere il materiale."
    local_2d20 = "Certamente"

lbl_2319d:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=54, w=268, h=104, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="耗材已退出，请将耗材拔出移除"
; text:
;   0: "耗材已退出，请将耗材拔出移除"
;   1: "Material unloaded, please remove the material."
;   2: "マテリアルがアンロードされました、マテリアルを取り外してください。"
;   3: "Material entladen, bitte entfernen Sie das Material."
;   4: "Material descargado, retire el material por favor."
;   5: "Matériau déchargé, veuillez retirer le matériau."
;   6: "Material descarregado, por favor, remova o material."
;   7: "Materiale scaricato, si prega di rimuovere il materiale."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x229d1
; tim=1000, en=1

; timer
.org 0x229d1
    if global_1c <= 0 then jump lbl_22a2d
    if global_20 <= 0 then jump lbl_22a2d
    global_20--
    if global_20 != 0 then jump lbl_22a2d
    dim = global_30

lbl_22a2d:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x22a47

; touch_release
.org 0x22a47
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x22a7f
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
; 022c21:  ff ff                                            |..|

; touch_release
.org 0x22a7f
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 022c31:  00 00 00 00 e8 80 97 e6 9d 90 e5 b7 b2 e9 80 80  |................|
; 022c41:  e5 87 ba ef bc 8c e8 af b7 e5 b0 86 e8 80 97 e6  |................|
; 022c51:  9d 90 e6 8b 94 e5 87 ba e7 a7 bb e9 99 a4 00 89  |................|
; 022c61:  a9 e4 bd 99 e8 80 97 e6 9d 90 e7 a7 bb e9 99 a4  |................|
; 022c71:  ef bc 8c e5 b9 b6 e6 9b b4 e6 8d a2 e6 96 b0 e7  |................|
; 022c81:  9a 84 e8 80 97 e6 9d 90 e5 90 8e e7 bb a7 e7 bb  |................|
; 022c91:  ad e6 89 93 e5 8d b0 00 e6 8d a2 e6 96 99 ef bc  |................|
; 022ca1:  9f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 022cb1:  00 00 7f 00 00 00 00 00 91 00 5e 00 46 00 26 00  |..........^.F.&.|
; 022cc1:  d6 00 83 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 022cd1:  25 00 ff ff ff ff 01 01 00 00 64 00 14 bf 00 00  |%.........d.....|
; 022ce1:  01 00 00 00 62 0d 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 022cf1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 022d01:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 00 00  |................|
; 022d11:  46 00 26 00 41 01 82 00 00 00 00 00 00 00 00 00  |F.&.A...........|
; 022d21:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 022d31:  7c bf 00 00 01 00 00 00 62 0f 00 00 00 00 00 00  ||.......b.......|
; 022d41:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 022d51:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 022d61:  80 01 5d 00 e7 a1 ae e5 ae 9a 00 00 00 00 00 00  |..].............|
; 022d71:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 022d81:  00 00 64 00 e4 bf 00 00 01 00 00 00 62 10 00 00  |..d.........b...|
; 022d91:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 022da1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 022db1:  00 00 00 00 fc 00 93 00 46 00 26 00 e6 98 af 00  |........F.&.....|
; 022dc1:  00 00 00 00 00 00 00 00 00 00 24                 |..........$|
