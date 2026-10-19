; page 24 'filament_error': 6 objects

; object address table, 6 objects, block loaded at 0xa3a4
.dd 0xa3bc, 0xa3fc, 0xa450, 0xa470, 0xa490, 0xa4e4

; object id 0 (page 'filament_error'): x=0, y=0, w=480, h=272, name hash=0xe60c66de
; flags=0x37, aph=127, events: event_3=0x1fa4f
; sta=2, pic=4
; 01fc86:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x1fa4f
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x1ffda
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_20092
    local_2a8f = "检测到耗材已用尽；剩余耗材已退出，请将耗材拔出移除"
    local_2acd = "结束打印"
    local_2af6 = "更换耗材"
    jmp lbl_20689

lbl_20092:
    if global_14 != 1 then jump lbl_20157
    local_2a8f = "Material detected as depleted; remaining material has been unloaded. Please remove the material."
    local_2acd = "End of Printing"
    local_2af6 = "Changing Material"
    jmp lbl_20689

lbl_20157:
    if global_14 != 2 then jump lbl_20274
    local_2a8f = "マテリアルが使い果たされたことが検出されました。残りのマテリアルはアンロードされました。マテリアルを取り外してください。"
    local_2acd = "印刷終了"
    local_2af6 = "マテリアルの変更"
    jmp lbl_20689

lbl_20274:
    if global_14 != 3 then jump lbl_20345
    local_2a8f = "Material als aufgebraucht erkannt; das verbleibende Material wurde entladen. Bitte entfernen Sie das Material."
    local_2acd = "Ende des Drucks"
    local_2af6 = "Materialwechsel"
    jmp lbl_20689

lbl_20345:
    if global_14 != 4 then jump lbl_20417
    local_2a8f = "Material detectado como agotado; el material restante ha sido descargado. Retire el material por favor."
    local_2acd = "Fin de la impresión"
    local_2af6 = "Cambio de material"
    jmp lbl_20689

lbl_20417:
    if global_14 != 5 then jump lbl_204f2
    local_2a8f = "Matériau détecté comme épuisé ; le matériau restant a été déchargé. Veuillez retirer le matériau."
    local_2acd = "Fin de l'impression"
    local_2af6 = "Changement de matériau"
    jmp lbl_20689

lbl_204f2:
    if global_14 != 6 then jump lbl_205c1
    local_2a8f = "Material detectado como esgotado; o material restante foi descarregado. Por favor, remova o material."
    local_2acd = "Fim da impressão"
    local_2af6 = "Mudança de material"
    jmp lbl_20689

lbl_205c1:
    if global_14 != 7 then jump lbl_20689
    local_2a8f = "Materiale rilevato come esaurito; il materiale rimanente è stato scaricato. Rimuovi il materiale per favore."
    local_2acd = "Fine della stampa"
    local_2af6 = "Cambio materiale"

lbl_20689:
    doevents
    down
    up

; object id 1 (text 't0'): x=129, y=56, w=224, h=100, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="检测到耗材已用尽;耗材已退出，请将耗材拔出移除"
; text:
;   0: "检测到耗材已用尽；剩余耗材已退出，请将耗材拔出移除"
;   1: "Material detected as depleted; remaining material has been unloaded. Please remove the material."
;   2: "マテリアルが使い果たされたことが検出されました。残りのマテリアルはアンロードされました。マテリアルを取り外してください。"
;   3: "Material als aufgebraucht erkannt; das verbleibende Material wurde entladen. Bitte entfernen Sie das Material."
;   4: "Material detectado como agotado; el material restante ha sido descargado. Retire el material por favor."
;   5: "Matériau détecté comme épuisé ; le matériau restant a été déchargé. Veuillez retirer le matériau."
;   6: "Material detectado como esgotado; o material restante foi descarregado. Por favor, remova o material."
;   7: "Materiale rilevato come esaurito; il materiale rimanente è stato scaricato. Rimuovi il materiale per favore."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x1faa6
; tim=1000, en=1

; timer
.org 0x1faa6
    if global_1c <= 0 then jump lbl_1fb02
    if global_20 <= 0 then jump lbl_1fb02
    global_20--
    if global_20 != 0 then jump lbl_1fb02
    dim = global_30

lbl_1fb02:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x1fb1c

; touch_release
.org 0x1fb1c
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=107, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x1fb54
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="结束打印"
; text:
;   0: "结束打印"
;   1: "End of Printing"
;   2: "印刷終了"
;   3: "Ende des Drucks"
;   4: "Fin de la impresión"
;   5: "Fin de l'impression"
;   6: "Fim da impressão"
;   7: "Fine della stampa"
; touch_release reports to the host: page <page>, widget 0
; 01fd6a:  ff ff                                            |..|

; touch_release
.org 0x1fb54
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b1'): x=244, y=172, w=128, h=39, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x1fbbe
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="更换耗材"
; text:
;   0: "更换耗材"
;   1: "Changing Material"
;   2: "マテリアルの変更"
;   3: "Materialwechsel"
;   4: "Cambio de material"
;   5: "Changement de matériau"
;   6: "Mudança de material"
;   7: "Cambio materiale"
; touch_release reports to the host: page <page>, widget 1
; 01fdbe:  ff ff                                            |..|

; touch_release
.org 0x1fbbe
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 516 bytes (4 trailing zero bytes dropped)
; 01fdce:  00 00 00 00 e6 a3 80 e6 b5 8b e5 88 b0 e8 80 97  |................|
; 01fdde:  e6 9d 90 e5 b7 b2 e7 94 a8 e5 b0 bd 3b e8 80 97  |............;...|
; 01fdee:  e6 9d 90 e5 b7 b2 e9 80 80 e5 87 ba ef bc 8c e8  |................|
; 01fdfe:  af b7 e5 b0 86 e8 80 97 e6 9d 90 e6 8b 94 e5 87  |................|
; 01fe0e:  ba e7 a7 bb e9 99 a4 00 47 00 26 00 53 00 83 00  |........G.&.S...|
; 01fe1e:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 01fe2e:  ff ff 01 01 00 00 64 00 40 ab 00 00 01 00 00 00  |......d.@.......|
; 01fe3e:  62 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01fe4e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01fe5e:  00 00 7f 00 00 00 00 00 91 00 5e 00 46 00 26 00  |..........^.F.&.|
; 01fe6e:  d6 00 83 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 01fe7e:  25 00 ff ff ff ff 01 01 00 00 64 00 a8 ab 00 00  |%.........d.....|
; 01fe8e:  01 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 01fe9e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01feae:  00 00 00 00 00 00 7f 00 00 00 00 00 fc 00 5d 00  |..............].|
; 01febe:  46 00 26 00 41 01 82 00 00 00 00 00 00 00 00 00  |F.&.A...........|
; 01fece:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 01fede:  10 ac 00 00 01 00 00 00 62 10 00 00 00 00 00 00  |........b.......|
; 01feee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01fefe:  00 00 00 00 e7 bb 93 e6 9d 9f e6 89 93 e5 8d b0  |................|
; 01ff0e:  00 01 5d 00 46 00 26 00 c5 01 82 00 00 00 00 00  |..].F.&.........|
; 01ff1e:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 01ff2e:  00 00 64 00 78 ac 00 00 01 00 00 00 62 11 00 00  |..d.x.......b...|
; 01ff3e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ff4e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 01ff5e:  00 00 00 00 fc 00 93 00 46 00 26 00 e6 9b b4 e6  |........F.&.....|
; 01ff6e:  8d a2 e8 80 97 e6 9d 90 00 00 24 00 25 00 ff ff  |..........$.%...|
; 01ff7e:  ff ff 01 01 00 00 64 00 e0 ac 00 00 01 00 00 00  |......d.........|
; 01ff8e:  62 13 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 01ff9e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 01ffae:  00 00 7f 00 00 00 00 00 80 01 93 00 46 00 26 00  |............F.&.|
; 01ffbe:  c5 01 b8 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 01ffce:  25 00 ff ff                                      |%...|
