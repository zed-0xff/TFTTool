; page 87: 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba4c, 0xbaa0

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x5cce0cfb
; flags=0x37, aph=127
; sta=2, pic=109
; 052bd8:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x52ec4
    if global_14 != 0 then jump lbl_52fba
    local_746a = "请观察喷嘴，若耗材已被挤出，点击“完成”，若未被挤出，请往前轻推耗材后点击“重试”按钮。"
    local_74b8 = "尚未挤出，重试"
    local_7491 = "耗材已挤出，继续"
    jmp lbl_53871

lbl_52fba:
    if global_14 != 1 then jump lbl_530c8
    local_746a = "Please observe the nozzle. If the filament has been extruded, click 'Done'. If not, gently push the filament forward and then click the 'Retry' button."
    local_74b8 = "Not extruded yet, Retry"
    local_7491 = "Filament extruded, Continue"
    jmp lbl_53871

lbl_530c8:
    if global_14 != 2 then jump lbl_5327b
    local_746a = "ノズルを観察してください。フィラメントが押し出された場合は「完了」をクリックし、押し出されていない場合は、フィラメントを前方に軽く押し込んだ後「再試行」ボタンをクリックしてください。"
    local_74b8 = "まだ押し出されていない、再試行"
    local_7491 = "フィラメントが押し出された、続行"
    jmp lbl_53871

lbl_5327b:
    if global_14 != 3 then jump lbl_533d0
    local_746a = "Bitte beobachten Sie die Düse. Wenn das Filament extrudiert wurde, klicken Sie auf 'Fertig'. Wenn nicht, schieben Sie das Filament leicht nach vorne und klicken Sie dann auf die Schaltfläche 'Wiederholen'."
    local_74b8 = "Noch nicht extrudiert, Wiederholen"
    local_7491 = "Filament extrudiert, Fortsetzen"
    jmp lbl_53871

lbl_533d0:
    if global_14 != 4 then jump lbl_534fc
    local_746a = "Observe la boquilla. Si el filamento ha sido extruido, haga clic en 'Listo'. Si no, empuje suavemente el filamento hacia adelante y luego haga clic en el botón 'Reintentar'."
    local_74b8 = "Aún no extruido, Reintentar"
    local_7491 = "Filamento extruido, Continuar"
    jmp lbl_53871

lbl_534fc:
    if global_14 != 5 then jump lbl_5362b
    local_746a = "Veuillez observer la buse. Si le filament a été extrudé, cliquez sur 'Terminé'. Sinon, poussez doucement le filament vers l'avant, puis cliquez sur le bouton 'Réessayer'."
    local_74b8 = "Pas encore extrudé, Réessayer"
    local_7491 = "Filament extrudé, Continuer"
    jmp lbl_53871

lbl_5362b:
    if global_14 != 6 then jump lbl_5375a
    local_746a = "Observe a ponteira. Se o filamento foi extrudado, clique em 'Concluído'. Se não, empurre suavemente o filamento para a frente e clique no botão 'Tentar novamente'."
    local_74b8 = "Ainda não extrudado, Tentar novamente"
    local_7491 = "Filamento extrudado, Continuar"
    jmp lbl_53871

lbl_5375a:
    if global_14 != 7 then jump lbl_53871
    local_746a = "Osserva l'ugello. Se il filamento è stato estruso, fai clic su 'Fatto'. Altrimenti, spingi delicatamente il filamento in avanti e poi fai clic sul pulsante 'Riprova'."
    local_74b8 = "Non ancora estruso, Riprova"
    local_7491 = "Filamento estruso, Continua"

lbl_53871:
    doevents
    down
    up
    unload
    down
    up
    down
    up

; object id 1 (text 't0'): x=20, y=11, w=289, h=184, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=200, isbr=1, background=0, txt="请观察喷嘴，若耗材已被挤出，点击“完成”，若未被挤出，请往前轻推耗材后点击“重试”按钮。"
; text:
;   0: "请观察喷嘴，若耗材已被挤出，点击“完成”，若未被挤出，请往前轻推耗材后点击“重试”按钮。"
;   1: "Please observe the nozzle. If the filament has been extruded, click 'Done'. If not, gently push the filament forward and then click the 'Retry' button."
;   2: "ノズルを観察してください。フィラメントが押し出された場合は「完了」をクリックし、押し出されていない場合は、フィラメントを前方に軽く押し込んだ後「再試行」ボタンをクリックしてください。"
;   3: "Bitte beobachten Sie die Düse. Wenn das Filament extrudiert wurde, klicken Sie auf 'Fertig'. Wenn nicht, schieben Sie das Filament leicht nach vorne und klicken Sie dann auf die Schaltfläche 'Wiederholen'."
;   4: "Observe la boquilla. Si el filamento ha sido extruido, haga clic en 'Listo'. Si no, empuje suavemente el filamento hacia adelante y luego haga clic en el botón 'Reintentar'."
;   5: "Veuillez observer la buse. Si le filament a été extrudé, cliquez sur 'Terminé'. Sinon, poussez doucement le filament vers l'avant, puis cliquez sur le bouton 'Réessayer'."
;   6: "Observe a ponteira. Se o filamento foi extrudado, clique em 'Concluído'. Se não, empurre suavemente o filamento para a frente e clique no botão 'Tentar novamente'."
;   7: "Osserva l'ugello. Se il filamento è stato estruso, fai clic su 'Fatto'. Altrimenti, spingi delicatamente il filamento in avanti e poi fai clic sul pulsante 'Riprova'."

; object id 2 (button 'b0'): x=247, y=216, w=213, h=47, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x52a96
; borderc=0x0000, picc=0, picc2=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="耗材已挤出，继续"
; text:
;   0: "耗材已挤出，继续"
;   1: "Filament extruded, Continue"
;   2: "フィラメントが押し出された、続行"
;   3: "Filament extrudiert, Fortsetzen"
;   4: "Filamento extruido, Continuar"
;   5: "Filament extrudé, Continuer"
;   6: "Filamento extrudado, Continuar"
;   7: "Filamento estruso, Continua"
; touch_release reports to the host: page <page>, widget 0
; 052c6c:  00 00 00 00 03 00                                |......|
; 052c7c:  ff ff                                            |..|

; touch_release
.org 0x52a96
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b1'): x=20, y=215, w=214, h=48, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x52b00
; borderc=0x0000, picc=0, picc2=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="尚未挤出，重试"
; text:
;   0: "尚未挤出，重试"
;   1: "Not extruded yet, Retry"
;   2: "まだ押し出されていない、再試行"
;   3: "Noch nicht extrudiert, Wiederholen"
;   4: "Aún no extruido, Reintentar"
;   5: "Pas encore extrudé, Réessayer"
;   6: "Ainda não extrudado, Tentar novamente"
;   7: "Non ancora estruso, Riprova"
; touch_release reports to the host: page <page>, widget 1
; 052cc0:  00 00 00 00 03 00                                |......|
; 052cd0:  ff ff                                            |..|

; touch_release
.org 0x52b00
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (crop 'q0'): x=319, y=0, w=161, h=217, name hash=0x32aa1f99
; flags=0x37, aph=127
; picc=116

; data after the object structs, 416 bytes (4 trailing zero bytes dropped)
; 052d1c:  00 00 00 00 e8 af b7 e8 a7 82 e5 af 9f e5 96 b7  |................|
; 052d2c:  e5 98 b4 ef bc 8c e8 8b a5 e8 80 97 e6 9d 90 e5  |................|
; 052d3c:  b7 b2 e8 a2 ab e6 8c a4 e5 87 ba ef bc 8c e7 82  |................|
; 052d4c:  b9 e5 87 bb e2 80 9c e5 ae 8c e6 88 90 e2 80 9d  |................|
; 052d5c:  ef bc 8c e8 8b a5 e6 9c aa e8 a2 ab e6 8c a4 e5  |................|
; 052d6c:  87 ba ef bc 8c e8 af b7 e5 be 80 e5 89 8d e8 bd  |................|
; 052d7c:  bb e6 8e a8 e8 80 97 e6 9d 90 e5 90 8e e7 82 b9  |................|
; 052d8c:  e5 87 bb e2 80 9c e9 87 8d e8 af 95 e2 80 9d e6  |................|
; 052d9c:  8c 89 e9 92 ae e3 80 82 00 00 00 00 00 00 00 00  |................|
; 052dac:  00 00 00 00 00 00 7f 00 00 00 00 00 37 01 1a 00  |............7...|
; 052dbc:  88 00 da 00 be 01 f3 00 00 00 00 00 67 00 00 00  |............g...|
; 052dcc:  00 00 00 00 e5 8a a0 e7 83 ad e5 96 b7 e5 98 b4  |................|
; 052ddc:  00 00 00 00 e6 8a bd e5 87 ba e6 9d 90 e6 96 99  |................|
; 052dec:  e8 80 97 e6 9d 90 e5 b7 b2 e6 8c a4 e5 87 ba ef  |................|
; 052dfc:  bc 8c e7 bb a7 e7 bb ad 00 00 00 00 00 00 00 00  |................|
; 052e0c:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 052e1c:  6f 01 93 00 14 00 17 00 82 01 a9 00 00 00 00 00  |o...............|
; 052e2c:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 64 00  |..............d.|
; 052e3c:  44 be 00 00 00 00 00 00 00 00 00 00 30 2d 3e 30  |D...........0->0|
; 052e4c:  00 00 00 00 00 00 00 00 e5 b0 9a e6 9c aa e6 8c  |................|
; 052e5c:  a4 e5 87 ba ef bc 8c e9 87 8d e8 af 95 00 7f 00  |................|
; 052e6c:  00 00 00 00 4f 01 3f 00 1e 00 1e 00 6c 01 5c 00  |....O.?.....l.\.|
; 052e7c:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 052e8c:  00 00 00 00 00 00 00 00 01 00 00 00 36 09 00 00  |............6...|
; 052e9c:  e6 a3 80 e6 9f a5 e7 ba bf e6 96 99 e4 bd 8d e7  |................|
; 052eac:  bd ae 00 00 e9 80 80 e6 96 99 e5 ae 8c e6 88 90  |................|
