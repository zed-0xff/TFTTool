; page 30 'load_finish': 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba50, 0xba70, 0xba90

; object id 0 (page 'load_finish'): x=0, y=0, w=480, h=272, name hash=0x4b45e85c
; flags=0x37, aph=127, events: event_3=0x24a0c
; sta=2, pic=4
; 024c43:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x24a0c
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x24f97
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_2505e
    local_2ed1 = "请观察喷嘴，确认耗材已挤出；若耗材未挤出喷嘴，请选择“继续挤出”"
    local_2efa = "继续挤出"
    local_2f38 = "完成"
    jmp lbl_256e8

lbl_2505e:
    if global_14 != 1 then jump lbl_25128
    local_2ed1 = "Observe the nozzle to confirm material extrusion. If material is not extruded, choose \"Continue Extrusion.\""
    local_2efa = "Continue Extrusion"
    local_2f38 = "Finish"
    jmp lbl_256e8

lbl_25128:
    if global_14 != 2 then jump lbl_25269
    local_2ed1 = "ノズルを観察してマテリアルが押し出されたことを確認してください。マテリアルがノズルから押し出されていない場合は、「押し出しを続行」を選択してください。"
    local_2efa = "押し出しを続行"
    local_2f38 = "完了"
    jmp lbl_256e8

lbl_25269:
    if global_14 != 3 then jump lbl_2537e
    local_2ed1 = "Beobachten Sie die Düse, um sicherzustellen, dass das Material herausgedrückt wird. Wenn kein Material herausgedrückt wird, wählen Sie \"Mit dem Ausdruck fortzufahren\"."
    local_2efa = "Mit dem Ausdruck fortzufahren"
    local_2f38 = "Fertig"
    jmp lbl_256e8

lbl_2537e:
    if global_14 != 4 then jump lbl_25458
    local_2ed1 = "Observe la boquilla para confirmar la extrusión del material. Si no se extruye material, elija \"Continuar extrusión\"."
    local_2efa = "Continuar extrusión"
    local_2f38 = "Terminar"
    jmp lbl_256e8

lbl_25458:
    if global_14 != 5 then jump lbl_2553d
    local_2ed1 = "Observez la buse pour confirmer l'extrusion du matériau. Si le matériau n'est pas extrudé, choisissez \"Continuer l'extrusion\"."
    local_2efa = "Continuer l'extrusion"
    local_2f38 = "Terminé"
    jmp lbl_256e8

lbl_2553d:
    if global_14 != 6 then jump lbl_25616
    local_2ed1 = "Observe a bico para confirmar a extrusão do material. Se o material não for extrudado, escolha \"Continuar extrusão\"."
    local_2efa = "Continuar extrusão"
    local_2f38 = "Concluir"
    jmp lbl_256e8

lbl_25616:
    if global_14 != 7 then jump lbl_256e8
    local_2ed1 = "Osserva il nozzle per confermare l'estrusione del materiale. Se il materiale non viene estruso, scegli \"Continua estrusione\"."
    local_2efa = "Continua estrusione"
    local_2f38 = "Finito"

lbl_256e8:
    doevents
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 1 (text 't0'): x=106, y=54, w=268, h=104, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="请观察喷嘴，确认耗材已挤出;若未耗材未挤出喷嘴，请选择继续挤出。"
; text:
;   0: "请观察喷嘴，确认耗材已挤出；若耗材未挤出喷嘴，请选择“继续挤出”"
;   1: "Observe the nozzle to confirm material extrusion. If material is not extruded, choose \"Continue Extrusion.\""
;   2: "ノズルを観察してマテリアルが押し出されたことを確認してください。マテリアルがノズルから押し出されていない場合は、「押し出しを続行」を選択してください。"
;   3: "Beobachten Sie die Düse, um sicherzustellen, dass das Material herausgedrückt wird. Wenn kein Material herausgedrückt wird, wählen Sie \"Mit dem Ausdruck fortzufahren\"."
;   4: "Observe la boquilla para confirmar la extrusión del material. Si no se extruye material, elija \"Continuar extrusión\"."
;   5: "Observez la buse pour confirmer l'extrusion du matériau. Si le matériau n'est pas extrudé, choisissez \"Continuer l'extrusion\"."
;   6: "Observe a bico para confirmar a extrusão do material. Se o material não for extrudado, escolha \"Continuar extrusão\"."
;   7: "Osserva il nozzle per confermare l'estrusione del materiale. Se il materiale non viene estruso, scegli \"Continua estrusione\"."

; object id 2 (button 'b0'): x=108, y=172, w=126, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x24a6c
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="继续挤出"
; text:
;   0: "继续挤出"
;   1: "Continue Extrusion"
;   2: "押し出しを続行"
;   3: "Mit dem Ausdruck fortzufahren"
;   4: "Continuar extrusión"
;   5: "Continuer l'extrusion"
;   6: "Continuar extrusão"
;   7: "Continua estrusione"
; touch_release reports to the host: page <page>, widget 0
; 024ce7:  ff ff                                            |..|

; touch_release
.org 0x24a6c
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x24acd
; tim=1000, en=1

; timer
.org 0x24acd
    if global_1c <= 0 then jump lbl_24b29
    if global_20 <= 0 then jump lbl_24b29
    global_20--
    if global_20 != 0 then jump lbl_24b29
    dim = global_30

lbl_24b29:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x24b43

; touch_release
.org 0x24b43
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x24b7b
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="完成"
; text:
;   0: "完成"
;   1: "Finish"
;   2: "完了"
;   3: "Fertig"
;   4: "Terminar"
;   5: "Terminé"
;   6: "Concluir"
;   7: "Finito"
; touch_release reports to the host: page <page>, widget 1
; 024d7b:  ff ff                                            |..|

; touch_release
.org 0x24b7b
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 494 bytes (26 trailing zero bytes dropped)
; 024d8b:  00 00 00 00 e8 af b7 e8 a7 82 e5 af 9f e5 96 b7  |................|
; 024d9b:  e5 98 b4 ef bc 8c e7 a1 ae e8 ae a4 e8 80 97 e6  |................|
; 024dab:  9d 90 e5 b7 b2 e6 8c a4 e5 87 ba 3b e8 8b a5 e6  |...........;....|
; 024dbb:  9c aa e8 80 97 e6 9d 90 e6 9c aa e6 8c a4 e5 87  |................|
; 024dcb:  ba e5 96 b7 e5 98 b4 ef bc 8c e8 af b7 e9 80 89  |................|
; 024ddb:  e6 8b a9 e7 bb a7 e7 bb ad e6 8c a4 e5 87 ba e3  |................|
; 024deb:  80 82 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024dfb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 024e0b:  00 00 00 00 00 00 00 00 46 00 26 00 41 01 82 00  |........F.&.A...|
; 024e1b:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 024e2b:  ff ff 01 01 00 00 64 00 7c bf 00 00 01 00 00 00  |......d.|.......|
; 024e3b:  62 0f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 024e4b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024e5b:  00 00 7f 00 00 00 00 00 80 01 5d 00 e7 a1 ae e5  |..........].....|
; 024e6b:  ae 9a 00 bf 9b e6 96 99 00 00 00 00 00 00 24 00  |..............$.|
; 024e7b:  25 00 ff ff ff ff 01 01 00 00 64 00 e4 bf 00 00  |%.........d.....|
; 024e8b:  01 00 00 00 62 10 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 024e9b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024eab:  00 00 00 00 00 00 7f 00 00 00 00 00 fc 00 93 00  |................|
; 024ebb:  46 00 26 00 e7 bb a7 e7 bb ad e6 8c a4 e5 87 ba  |F.&.............|
; 024ecb:  00 00 24 00 00 00 00 00 ff ff 01 01 00 00 64 00  |..$...........d.|
; 024edb:  4c c0 00 00 01 00 00 00 62 12 00 00 00 00 00 00  |L.......b.......|
; 024eeb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024efb:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 024f0b:  80 01 93 00 46 00 26 00 c5 01 b8 00 00 00 00 00  |....F.&.........|
; 024f1b:  00 00 00 00 00 00 24 00 25 00 ff ff e5 ae 8c e6  |......$.%.......|
; 024f2b:  88 90 00 00 b4 c0 00 00 01 00 00 00 33 13 00 00  |............3...|
; 024f3b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 024f4b:  00 00 00 00 00 00 00 00 64 00 01 00 34 14 00 00  |........d...4...|
; 024f5b:  00 00 00 00 00 00 00 00 00 00 00 00 34 15 00 00  |............4...|
; 024f6b:  00 00 00 00 00 00 00 00 00 00 00 00 33 16        |............3.|
