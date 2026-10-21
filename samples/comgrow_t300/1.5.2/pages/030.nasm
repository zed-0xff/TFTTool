; page 30 'load_finish': 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa4a4, 0xa4c4, 0xa4e4

; object id 0 (page 'load_finish'): x=0, y=0, w=480, h=272, name hash=0x4b45e85c
; flags=0x37, aph=127, events: event_3=0x22c9a
; sta=2, pic=4
; 022ed1:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x22c9a
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x23225
    ref 3
    ref 4
    if global_14 != 0 then jump lbl_232ec
    local_2d8a = "请观察喷嘴，确认耗材已挤出；若耗材未挤出喷嘴，请选择“继续挤出”"
    local_2db3 = "继续挤出"
    local_2df1 = "完成"
    jmp lbl_23976

lbl_232ec:
    if global_14 != 1 then jump lbl_233b6
    local_2d8a = "Observe the nozzle to confirm material extrusion. If material is not extruded, choose \"Continue Extrusion.\""
    local_2db3 = "Continue Extrusion"
    local_2df1 = "Finish"
    jmp lbl_23976

lbl_233b6:
    if global_14 != 2 then jump lbl_234f7
    local_2d8a = "ノズルを観察してマテリアルが押し出されたことを確認してください。マテリアルがノズルから押し出されていない場合は、「押し出しを続行」を選択してください。"
    local_2db3 = "押し出しを続行"
    local_2df1 = "完了"
    jmp lbl_23976

lbl_234f7:
    if global_14 != 3 then jump lbl_2360c
    local_2d8a = "Beobachten Sie die Düse, um sicherzustellen, dass das Material herausgedrückt wird. Wenn kein Material herausgedrückt wird, wählen Sie \"Mit dem Ausdruck fortzufahren\"."
    local_2db3 = "Mit dem Ausdruck fortzufahren"
    local_2df1 = "Fertig"
    jmp lbl_23976

lbl_2360c:
    if global_14 != 4 then jump lbl_236e6
    local_2d8a = "Observe la boquilla para confirmar la extrusión del material. Si no se extruye material, elija \"Continuar extrusión\"."
    local_2db3 = "Continuar extrusión"
    local_2df1 = "Terminar"
    jmp lbl_23976

lbl_236e6:
    if global_14 != 5 then jump lbl_237cb
    local_2d8a = "Observez la buse pour confirmer l'extrusion du matériau. Si le matériau n'est pas extrudé, choisissez \"Continuer l'extrusion\"."
    local_2db3 = "Continuer l'extrusion"
    local_2df1 = "Terminé"
    jmp lbl_23976

lbl_237cb:
    if global_14 != 6 then jump lbl_238a4
    local_2d8a = "Observe a bico para confirmar a extrusão do material. Se o material não for extrudado, escolha \"Continuar extrusão\"."
    local_2db3 = "Continuar extrusão"
    local_2df1 = "Concluir"
    jmp lbl_23976

lbl_238a4:
    if global_14 != 7 then jump lbl_23976
    local_2d8a = "Osserva il nozzle per confermare l'estrusione del materiale. Se il materiale non viene estruso, scegli \"Continua estrusione\"."
    local_2db3 = "Continua estrusione"
    local_2df1 = "Finito"

lbl_23976:
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
; flags=0x37, aph=127, events: touch_release=0x22cfa
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
; 022f75:  ff ff                                            |..|

; touch_release
.org 0x22cfa
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    timer

; object id 3 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x22d5b
; tim=1000, en=1

; timer
.org 0x22d5b
    if global_1c <= 0 then jump lbl_22db7
    if global_20 <= 0 then jump lbl_22db7
    global_20--
    if global_20 != 0 then jump lbl_22db7
    dim = global_30

lbl_22db7:
    down
    up

; object id 4 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x22dd1

; touch_release
.org 0x22dd1
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x22e09
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
; 023009:  ff ff                                            |..|

; touch_release
.org 0x22e09
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 516 bytes (4 trailing zero bytes dropped)
; 023019:  00 00 00 00 e8 af b7 e8 a7 82 e5 af 9f e5 96 b7  |................|
; 023029:  e5 98 b4 ef bc 8c e7 a1 ae e8 ae a4 e8 80 97 e6  |................|
; 023039:  9d 90 e5 b7 b2 e6 8c a4 e5 87 ba 3b e8 8b a5 e6  |...........;....|
; 023049:  9c aa e8 80 97 e6 9d 90 e6 9c aa e6 8c a4 e5 87  |................|
; 023059:  ba e5 96 b7 e5 98 b4 ef bc 8c e8 af b7 e9 80 89  |................|
; 023069:  e6 8b a9 e7 bb a7 e7 bb ad e6 8c a4 e5 87 ba e3  |................|
; 023079:  80 82 00 01 00 00 64 00 40 ab 00 00 01 00 00 00  |......d.@.......|
; 023089:  62 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 023099:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0230a9:  00 00 7f 00 00 00 00 00 91 00 5e 00 46 00 26 00  |..........^.F.&.|
; 0230b9:  d6 00 83 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 0230c9:  25 00 ff ff ff ff 01 01 00 00 64 00 a8 ab 00 00  |%.........d.....|
; 0230d9:  01 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0230e9:  00 00 00 00 00 00 00 00 00 00 00 00 e7 a1 ae e5  |................|
; 0230f9:  ae 9a 00 bf 9b e6 96 99 00 00 00 00 fc 00 5d 00  |..............].|
; 023109:  46 00 26 00 41 01 82 00 00 00 00 00 00 00 00 00  |F.&.A...........|
; 023119:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 023129:  10 ac 00 00 01 00 00 00 62 10 00 00 00 00 00 00  |........b.......|
; 023139:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 023149:  00 00 00 00 e7 bb a7 e7 bb ad e6 8c a4 e5 87 ba  |................|
; 023159:  00 01 5d 00 00 00 00 00 c5 01 82 00 00 00 00 00  |..].............|
; 023169:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 023179:  00 00 64 00 78 ac 00 00 01 00 00 00 62 11 00 00  |..d.x.......b...|
; 023189:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 023199:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0231a9:  00 00 00 00 fc 00 93 00 46 00 26 00 e5 ae 8c e6  |........F.&.....|
; 0231b9:  88 90 00 80 97 e6 9d 90 00 00 24 00 25 00 ff ff  |..........$.%...|
; 0231c9:  ff ff 01 01 00 00 64 00 e0 ac 00 00 01 00 00 00  |......d.........|
; 0231d9:  62 13 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 0231e9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0231f9:  00 00 7f 00 00 00 00 00 80 01 93 00 46 00 26 00  |............F.&.|
; 023209:  c5 01 b8 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 023219:  25 00 ff ff                                      |%...|
