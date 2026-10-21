; page 26 'unload_finish': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page 'unload_finish'): x=0, y=0, w=480, h=272, name hash=0xddb532ff
; flags=0x37, aph=127, events: event_3=0x20c08
; sta=2, pic=2
; 020dcb:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x20c08
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x21063
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_210dc
    local_2b9b = "耗材已退出，请将耗材拔出移除"
    local_2bd9 = "确定"
    jmp lbl_2142b

lbl_210dc:
    if global_14 != 1 then jump lbl_21147
    local_2b9b = "Material unloaded, please remove the material."
    local_2bd9 = "Sure"
    jmp lbl_2142b

lbl_21147:
    if global_14 != 2 then jump lbl_211ef
    local_2b9b = "マテリアルがアンロードされました、マテリアルを取り外してください。"
    local_2bd9 = "もちろん"
    jmp lbl_2142b

lbl_211ef:
    if global_14 != 3 then jump lbl_21262
    local_2b9b = "Material entladen, bitte entfernen Sie das Material."
    local_2bd9 = "Gewiss"
    jmp lbl_2142b

lbl_21262:
    if global_14 != 4 then jump lbl_212d3
    local_2b9b = "Material descargado, retire el material por favor."
    local_2bd9 = "Seguro"
    jmp lbl_2142b

lbl_212d3:
    if global_14 != 5 then jump lbl_21349
    local_2b9b = "Matériau déchargé, veuillez retirer le matériau."
    local_2bd9 = "Bien sûr"
    jmp lbl_2142b

lbl_21349:
    if global_14 != 6 then jump lbl_213bb
    local_2b9b = "Material descarregado, por favor, remova o material."
    local_2bd9 = "Claro"
    jmp lbl_2142b

lbl_213bb:
    if global_14 != 7 then jump lbl_2142b
    local_2b9b = "Materiale scaricato, si prega di rimuovere il materiale."
    local_2bd9 = "Certamente"

lbl_2142b:
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
; flags=0x27, events: timer=0x20c5f
; tim=1000, en=1

; timer
.org 0x20c5f
    if global_1c <= 0 then jump lbl_20cbb
    if global_20 <= 0 then jump lbl_20cbb
    global_20--
    if global_20 != 0 then jump lbl_20cbb
    dim = global_30

lbl_20cbb:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x20cd5

; touch_release
.org 0x20cd5
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x20d0d
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
; 020eaf:  ff ff                                            |..|

; touch_release
.org 0x20d0d
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 020ebf:  00 00 00 00 e8 80 97 e6 9d 90 e5 b7 b2 e9 80 80  |................|
; 020ecf:  e5 87 ba ef bc 8c e8 af b7 e5 b0 86 e8 80 97 e6  |................|
; 020edf:  9d 90 e6 8b 94 e5 87 ba e7 a7 bb e9 99 a4 00 00  |................|
; 020eef:  80 00 27 00 73 01 d2 00 00 00 00 00 00 00 00 00  |..'.s...........|
; 020eff:  00 00 04 00 05 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 020f0f:  d4 a6 00 00 01 00 00 00 00 00 00 00 e6 a3 80 e6  |................|
; 020f1f:  b5 8b e5 88 b0 e8 80 97 e6 9d 90 e5 b7 b2 e7 94  |................|
; 020f2f:  a8 e5 b0 bd 3b e8 80 97 e6 9d 90 e5 b7 b2 e9 80  |....;...........|
; 020f3f:  80 e5 87 ba ef bc 8c e8 af b7 e5 b0 86 e8 80 97  |................|
; 020f4f:  e6 9d 90 e6 8b 94 e5 87 ba e7 a7 bb e9 99 a4 00  |................|
; 020f5f:  47 00 26 00 53 00 83 00 00 00 00 00 00 00 00 00  |G.&.S...........|
; 020f6f:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 020f7f:  40 ab 00 00 01 00 00 00 62 0d 00 00 00 00 00 00  |@.......b.......|
; 020f8f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 020f9f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 020faf:  91 00 5e 00 46 00 26 00 d6 00 83 00 00 00 00 00  |..^.F.&.........|
; 020fbf:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 020fcf:  00 00 64 00 a8 ab 00 00 01 00 00 00 62 0e 00 00  |..d.........b...|
; 020fdf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 020fef:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 7f 00  |................|
; 020fff:  00 00 00 00 fc 00 5d 00 46 00 26 00 41 01 82 00  |......].F.&.A...|
; 02100f:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 02101f:  ff ff 01 01 00 00 64 00 10 ac 00 00 01 00 00 00  |......d.........|
; 02102f:  62 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 02103f:  00 00 00 00 00 00 00 00 00 00 00 00 e7 bb 93 e6  |................|
; 02104f:  9d 9f e6 89 93 e5 8d b0 00 01 5d                 |..........]|
