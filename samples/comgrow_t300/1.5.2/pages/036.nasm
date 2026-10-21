; page 36 'print_finish': 10 objects

; object address table, 10 objects, block loaded at 0xa3a4
.dd 0xa3cc, 0xa40c, 0xa460, 0xa4b4, 0xa508, 0xa55c, 0xa57c, 0xa59c
.dd 0xa5dc, 0xa630

; object id 0 (page 'print_finish'): x=0, y=0, w=480, h=272, name hash=0xe1ea60b6
; flags=0x37, aph=127, events: event_3=0x264ab
; sta=2, pic=6
; 0267c2:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x264ab
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0x2701a
    ref 5
    ref 6
    if global_14 != 0 then jump lbl_2706f
    local_3177 = "打印结束，用时："
    jmp lbl_27281

lbl_2706f:
    if global_14 != 1 then jump lbl_270b6
    local_3177 = "Printing ends, time taken:"
    jmp lbl_27281

lbl_270b6:
    if global_14 != 2 then jump lbl_270ff
    local_3177 = "印刷終了、所要時間:"
    jmp lbl_27281

lbl_270ff:
    if global_14 != 3 then jump lbl_27149
    local_3177 = "Druck endet, benötigte Zeit:"
    jmp lbl_27281

lbl_27149:
    if global_14 != 4 then jump lbl_2719e
    local_3177 = "Finaliza la impresión, tiempo empleado:"
    jmp lbl_27281

lbl_2719e:
    if global_14 != 5 then jump lbl_271ed
    local_3177 = "Fin de l'impression, temps pris :"
    jmp lbl_27281

lbl_271ed:
    if global_14 != 6 then jump lbl_2723c
    local_3177 = "A impressão termina, tempo gasto:"
    jmp lbl_27281

lbl_2723c:
    if global_14 != 7 then jump lbl_27281
    local_3177 = "La stampa termina, tempo impiegato:"

lbl_27281:
    if global_14 != 0 then jump lbl_272b4
    local_3102 = "确定"
    jmp lbl_27418

lbl_272b4:
    if global_14 != 1 then jump lbl_272e5
    local_3102 = "Sure"
    jmp lbl_27418

lbl_272e5:
    if global_14 != 2 then jump lbl_2731e
    local_3102 = "もちろん"
    jmp lbl_27418

lbl_2731e:
    if global_14 != 3 then jump lbl_27351
    local_3102 = "Gewiss"
    jmp lbl_27418

lbl_27351:
    if global_14 != 4 then jump lbl_27384
    local_3102 = "Seguro"
    jmp lbl_27418

lbl_27384:
    if global_14 != 5 then jump lbl_273ba
    local_3102 = "Bien sûr"
    T 0x5e

lbl_273ba:
    if global_14 != 6 then jump lbl_273ec
    local_3102 = "Claro"
    jmp lbl_27418

lbl_273ec:
    if global_14 != 7 then jump lbl_27418
    local_3102 = "Certamente"

lbl_27418:
    if global_14 != 0 then jump lbl_2746c
    local_31d2 = "保存 Z Offset"
    local_31fb = "重新打印"
    jmp lbl_276e7

lbl_2746c:
    if global_14 != 1 then jump lbl_274bd
    local_31d2 = "Save Z Offset"
    local_31fb = "Print again"
    T 0x22a

lbl_274bd:
    if global_14 != 2 then jump lbl_2751b
    local_31d2 = "Zオフセットを保存"
    local_31fb = "再度印刷"
    jmp lbl_276e7

lbl_2751b:
    if global_14 != 3 then jump lbl_27574
    local_31d2 = "Z-Offset speichern"
    local_31fb = "Erneut drucken"
    jmp lbl_276e7

lbl_27574:
    if global_14 != 4 then jump lbl_275d6
    local_31d2 = "Guardar desplazamiento Z"
    local_31fb = "Imprimir de nuevo"
    jmp lbl_276e7

lbl_275d6:
    if global_14 != 5 then jump lbl_2763c
    local_31d2 = "Enregistrer le décalage Z"
    local_31fb = "Imprimer à nouveau"
    jmp lbl_276e7

lbl_2763c:
    if global_14 != 6 then jump lbl_2769c
    local_31d2 = "Salvar deslocamento Z"
    local_31fb = "Imprimir novamente"
    jmp lbl_276e7

lbl_2769c:
    if global_14 != 7 then jump lbl_276e7
    local_31d2 = "Salva Z Offset"
    local_31fb = "Stampa di nuovo"

lbl_276e7:
    doevents
    down
    up

; object id 1 (button 'b0'): x=289, y=172, w=96, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x264f1
; borderc=0x0000, picc=6, picc2=7, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确定"
; text:
;   0: "确定"
;   1: "Sure"
;   2: "もちろん"
;   3: "Gewiss"
;   4: "Seguro"
;   5: "Bien sûr"
;   6: "Claro"
;   7: "Certamente"
; touch_release reports to the host: page <page>, widget 2
; 026812:  ff ff                                            |..|

; touch_release
.org 0x264f1
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up
    timer

; object id 2 (text 't0'): x=205, y=66, w=170, h=40, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="xx.gcode"

; object id 3 (text 't1'): x=205, y=139, w=170, h=21, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=0, txt_maxl=300, isbr=1, background=0, txt="1h3m"

; object id 4 (text 't2'): x=205, y=106, w=170, h=30, name hash=0x2cf7a429
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=2, txt_maxl=300, isbr=1, background=0, txt="打印结束，用时："
; text:
;   0: "打印结束，用时："
;   1: "Printing ends, time taken:"
;   2: "印刷終了、所要時間:"
;   3: "Druck endet, benötigte Zeit:"
;   4: "Finaliza la impresión, tiempo empleado:"
;   5: "Fin de l'impression, temps pris :"
;   6: "A impressão termina, tempo gasto:"
;   7: "La stampa termina, tempo impiegato:"

; object id 5 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x265a0
; tim=1000, en=1

; timer
.org 0x265a0
    if global_1c <= 0 then jump lbl_265fc
    if global_20 <= 0 then jump lbl_265fc
    global_20--
    if global_20 != 0 then jump lbl_265fc
    dim = global_30

lbl_265fc:
    down
    up

; object id 6 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x26616

; touch_release
.org 0x26616
    global_20 = global_18
    dims = global_2c
    down
    up
    down
    up

; object id 7 (external_picture 'exp1'): x=115, y=75, w=64, h=64, name hash=0x8ceb07bd
; flags=0x37, aph=127
; path="ram/finish.jpg"
; 026992:  00 00 00 00 00 00 ff 00                          |........|

; object id 8 (button 'b1'): x=96, y=172, w=96, h=39, name hash=0xb8756f4e
; flags=0x37, aph=60, events: touch_release=0x26668
; borderc=0x0000, picc=6, picc2=7, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="保存zoffset"
; text:
;   0: "保存 Z Offset"
;   1: "Save Z Offset"
;   2: "Zオフセットを保存"
;   3: "Z-Offset speichern"
;   4: "Guardar desplazamiento Z"
;   5: "Enregistrer le décalage Z"
;   6: "Salvar deslocamento Z"
;   7: "Salva Z Offset"
; touch_release reports to the host: page <page>, widget 0
; 0269e2:  ff ff                                            |..|

; touch_release
.org 0x26668
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 9 (button 'b2'): x=192, y=172, w=96, h=39, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x266d2
; borderc=0x0000, picc=6, picc2=7, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="再次打印"
; text:
;   0: "重新打印"
;   1: "Print again"
;   2: "再度印刷"
;   3: "Erneut drucken"
;   4: "Imprimir de nuevo"
;   5: "Imprimer à nouveau"
;   6: "Imprimir novamente"
;   7: "Stampa di nuovo"
; touch_release reports to the host: page <page>, widget 1
; 026a36:  ff ff                                            |..|

; touch_release
.org 0x266d2
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 1458 bytes (30 trailing zero bytes dropped)
; 026a46:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 25 00 ff ff  |............%...|
; 026a56:  ff ff 01 01 00 00 64 00 78 ac 00 00 01 00 00 00  |......d.x.......|
; 026a66:  62 11 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 026a76:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026a86:  e6 98 af 00 00 00 00 00 fc 00 93 00 46 00 26 00  |............F.&.|
; 026a96:  e5 90 a6 00 88 90 00 80 97 e6 9d 90 00 00 24 00  |..............$.|
; 026aa6:  25 00 ff ff ff ff 01 01 00 00 64 00 78 78 2e 67  |%.........d.xx.g|
; 026ab6:  63 6f 64 65 00 13 00 00 00 00 00 00 00 00 00 00  |code............|
; 026ac6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026ad6:  00 00 00 00 00 00 7f 00 00 00 00 00 80 01 93 00  |................|
; 026ae6:  46 00 26 00 c5 01 b8 00 e5 90 a6 00 00 00 00 00  |F.&.............|
; 026af6:  00 00 24 00 25 00 ff ff 00 00 00 00 00 00 64 00  |..$.%.........d.|
; 026b06:  48 ad 00 00 01 00 00 00 74 14 00 00 00 00 00 00  |H.......t.......|
; 026b16:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026b26:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 026b36:  be 01 c2 00 0e 00 22 00 cb 01 e3 00 00 00 00 00  |......".........|
; 026b46:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 026b56:  70 61 73 73 00 00 00 00 00 00 00 00 00 00 00 00  |pass............|
; 026b66:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026b76:  00 00 00 00 00 00 00 00 64 00 01 00 34 17 00 00  |........d...4...|
; 026b86:  00 00 00 00 00 00 00 00 00 00 00 00 34 18 00 00  |............4...|
; 026b96:  00 00 00 00 00 00 00 00 00 00 00 00 62 1a 00 00  |............b...|
; 026ba6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026bb6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 026bc6:  00 00 00 00 0f 00 93 00 c8 00 26 00 d6 00 b8 00  |..........&.....|
; 026bd6:  00 00 00 00 00 00 00 00 00 00 24 00 31 68 33 6d  |..........$.1h3m|
; 026be6:  00 ff 01 01 00 00 64 00 e0 ae 00 00 01 00 00 00  |......d.........|
; 026bf6:  33 1b 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |3...............|
; 026c06:  00 00 00 00 00 00 00 00 00 00 00 00 e8 03 01 00  |................|
; 026c16:  05 1c 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026c26:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026c36:  00 00 00 00 e6 a8 a1 e5 9e 8b e9 a3 8e e6 89 87  |................|
; 026c46:  00 89 93 e5 8d b0 00 00 00 00 00 00 00 00 00 00  |................|
; 026c56:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 026c66:  00 00 00 00 52 00 88 00 40 01 2d 00 91 01 b4 00  |....R...@.-.....|
; 026c76:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 026c86:  00 00 00 00 40 b1 00 00 01 00 00 00 00 00 00 00  |....@...........|
; 026c96:  62 13 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 026ca6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026cb6:  00 00 7f 00 00 00 00 00 a0 01 88 00 1d 00 2c 00  |..............,.|
; 026cc6:  bc 01 b3 00 00 00 00 00 00 00 00 00 00 00 50 00  |..............P.|
; 026cd6:  51 00 ff ff ff ff 01 01 00 00 64 00 70 b2 00 00  |Q.........d.p...|
; 026ce6:  01 00 00 00 74 14 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 026cf6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026d06:  00 00 00 00 00 00 7f 00 00 00 00 00 e6 89 93 e5  |................|
; 026d16:  8d b0 e7 bb 93 e6 9d 9f ef bc 8c e7 94 a8 e6 97  |................|
; 026d26:  b6 ef bc 9a 00 ff 00 01 00 00 2c 01 d8 b2 00 00  |..........,.....|
; 026d36:  01 00 00 00 00 00 00 00 62 15 00 00 00 00 00 00  |........b.......|
; 026d46:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026d56:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 026d66:  a0 01 b5 00 e5 be ae e8 b0 83 00 00 00 00 00 00  |................|
; 026d76:  00 00 00 00 00 00 50 00 51 00 ff ff ff ff 01 01  |......P.Q.......|
; 026d86:  00 00 64 00 08 b4 00 00 01 00 00 00 62 18 00 00  |..d.........b...|
; 026d96:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026da6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 026db6:  00 00 00 00 41 00 e1 00 7c 01 2d 00 bc 01 0d 01  |....A...|.-.....|
; 026dc6:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 026dd6:  ff ff 01 01 00 00 64 00 70 b4 00 00 01 00 00 00  |......d.p.......|
; 026de6:  74 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 026df6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026e06:  00 00 7f 00 00 00 00 00 52 00 e2 00 40 01 2d 00  |........R...@.-.|
; 026e16:  00 00 00 00 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 026e26:  ff ff 00 01 00 00 2c 01 d8 b4 00 00 01 00 00 00  |......,.........|
; 026e36:  00 00 00 00 62 1a 00 00 00 00 00 00 72 61 6d 2f  |....b.......ram/|
; 026e46:  66 69 6e 69 73 68 2e 6a 70 67 00 00 00 00 00 00  |finish.jpg......|
; 026e56:  00 00 00 00 00 00 7f 00 00 00 00 00 a0 01 e2 00  |................|
; 026e66:  1d 00 2c 00 bc 01 0d 01 00 00 00 00 00 00 00 00  |..,.............|
; 026e76:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 026e86:  08 b6 00 00 01 00 00 00 00 00 00 00 00 ff 00 01  |................|
; 026e96:  00 00 2c 01 00 c0 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 026ea6:  74 17 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 026eb6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026ec6:  00 00 7f 00 00 00 00 00 41 00 e4 00 7b 00 26 00  |........A...{.&.|
; 026ed6:  bb 00 09 01 00 00 00 00 03 00 00 00 00 01 00 00  |................|
; 026ee6:  ff ff 01 01 00 00 2c 01 e4 c1 00 00 00 00 00 00  |......,.........|
; 026ef6:  00 00 00 00 00 18 00 00 00 00 00 00 00 00 00 00  |................|
; 026f06:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026f16:  00 00 00 00 00 00 7f 00 00 00 00 00 c0 00 9d 00  |................|
; 026f26:  7e 00 6f 00 3d 01 0b 01 00 00 00 00 00 00 00 00  |~.o.=...........|
; 026f36:  00 00 1a 00 1a 00 ff ff ff ff 01 01 e4 bf 9d e5  |................|
; 026f46:  ad 98 7a 6f 66 66 73 65 74 00 00 00 00 00 00 00  |..zoffset.......|
; 026f56:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 026f66:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 026f76:  14 ff d0 00 32 00 10 00 45 ff df 00 00 00 00 00  |....2...E.......|
; 026f86:  03 00 00 00 00 01 00 00 ff ff 00 01 00 00 2c 01  |..............,.|
; 026f96:  7c c3 00 00 01 00 00 00 00 00 00 00 74 1a 00 00  ||...........t...|
; 026fa6:  00 00 00 00 e5 86 8d e6 ac a1 e6 89 93 e5 8d b0  |................|
; 026fb6:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 026fc6:  00 00 00 00 00 ff d0 00 21 00 10 00 e6 b5 81 e9  |........!.......|
; 026fd6:  87 8f 2d 00 03 00 00 00 00 01 00 00 ff ff 00 01  |..-.............|
; 026fe6:  00 00 2c 01 ac c4 00 00 01 00 00 00 00 00 00 00  |..,.............|
; 026ff6:  74 1b                                            |t.|
