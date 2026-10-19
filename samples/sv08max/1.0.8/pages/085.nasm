; page 85: 7 objects

; object address table, 7 objects, block loaded at 0xb950
.dd 0xb96c, 0xb9ac, 0xba00, 0xba54, 0xbaa8, 0xbafc, 0xbb50

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x74d693d7
; flags=0x37, aph=127
; sta=2, pic=103
; 051645:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x51c39
    if global_14 != 0 then jump lbl_51ccc
    local_7291 = "加热喷嘴"
    local_72b8 = "检查线料位置"
    local_72df = "送出新料到挤出机"
    local_7306 = "进料完成"
    jmp lbl_521d7

lbl_51ccc:
    if global_14 != 1 then jump lbl_51d6c
    local_7291 = "Heat Nozzle"
    local_72b8 = "Check Filament Position"
    local_72df = "Feed New Material to Extruder"
    local_7306 = "Feeding Complete"
    jmp lbl_521d7

lbl_51d6c:
    if global_14 != 2 then jump lbl_51e29
    local_7291 = "ノズルを加熱"
    local_72b8 = "フィラメント位置を確認"
    local_72df = "新素材をエクストルーダーに送る"
    local_7306 = "給料完了"
    jmp lbl_521d7

lbl_51e29:
    if global_14 != 3 then jump lbl_51eda
    local_7291 = "Düse heizen"
    local_72b8 = "Filamentposition prüfen"
    local_72df = "Neues Material zum Extruder schicken"
    local_7306 = "Zuführung abgeschlossen"
    jmp lbl_521d7

lbl_51eda:
    if global_14 != 4 then jump lbl_51f99
    local_7291 = "Calentar boquilla"
    local_72b8 = "Comprobar posición del filamento"
    local_72df = "Enviar material nuevo a la extrusora"
    local_7306 = "Alimentación completada"
    jmp lbl_521d7

lbl_51f99:
    if global_14 != 5 then jump lbl_5205d
    local_7291 = "Chauffer la buse"
    local_72b8 = "Vérifier la position du filament"
    local_72df = "Envoyer du nouveau matériau à l'extrudeuse"
    local_7306 = "Alimentation terminée"
    jmp lbl_521d7

lbl_5205d:
    if global_14 != 6 then jump lbl_5211b
    local_7291 = "Aquecer o bico"
    local_72b8 = "Verificar a posição do filamento"
    local_72df = "Enviar novo material para a extrusora"
    local_7306 = "Alimentação concluída"
    jmp lbl_521d7

lbl_5211b:
    if global_14 != 7 then jump lbl_521d7
    local_7291 = "Riscaldare l'ugello"
    local_72b8 = "Controllare la posizione del filamento"
    local_72df = "Inviare nuovo materiale all'estrusore"
    local_7306 = "Alimentazione completata"

lbl_521d7:
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

; object id 1 (text 't0'): x=72, y=28, w=154, h=36, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=0, background=0, txt="加热喷嘴"
; text:
;   0: "加热喷嘴"
;   1: "Heat Nozzle"
;   2: "ノズルを加熱"
;   3: "Düse heizen"
;   4: "Calentar boquilla"
;   5: "Chauffer la buse"
;   6: "Aquecer o bico"
;   7: "Riscaldare l'ugello"

; object id 2 (text 't1'): x=72, y=71, w=236, h=36, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=0, background=0, txt="检查线料位置"
; text:
;   0: "检查线料位置"
;   1: "Check Filament Position"
;   2: "フィラメント位置を確認"
;   3: "Filamentposition prüfen"
;   4: "Comprobar posición del filamento"
;   5: "Vérifier la position du filament"
;   6: "Verificar a posição do filamento"
;   7: "Controllare la posizione del filamento"

; object id 3 (text 't2'): x=72, y=114, w=236, h=36, name hash=0x2cf7a429
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=0, background=0, txt="送出新料到挤出机"
; text:
;   0: "送出新料到挤出机"
;   1: "Feed New Material to Extruder"
;   2: "新素材をエクストルーダーに送る"
;   3: "Neues Material zum Extruder schicken"
;   4: "Enviar material nuevo a la extrusora"
;   5: "Envoyer du nouveau matériau à l'extrudeuse"
;   6: "Enviar novo material para a extrusora"
;   7: "Inviare nuovo materiale all'estrusore"

; object id 4 (text 't3'): x=72, y=158, w=236, h=36, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=0, background=0, txt="进料完成"
; text:
;   0: "进料完成"
;   1: "Feeding Complete"
;   2: "給料完了"
;   3: "Zuführung abgeschlossen"
;   4: "Alimentación completada"
;   5: "Alimentation terminée"
;   6: "Alimentação concluída"
;   7: "Alimentazione completata"

; object id 5 (text 't4'): x=225, y=28, w=87, h=36, name hash=0x1d54e28e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=200, isbr=0, background=0, txt="0->0"

; object id 6 (crop 'q0'): x=311, y=26, w=136, h=218, name hash=0x32aa1f99
; flags=0x37, aph=127
; picc=103

; data after the object structs, 1018 bytes (10 trailing zero bytes dropped)
; 051831:  00 00 00 00 e5 8a a0 e7 83 ad e5 96 b7 e5 98 b4  |................|
; 051841:  00 00 00 00 00 00 00 00 00 00 64 00 dc bd 00 00  |..........d.....|
; 051851:  00 00 00 00 00 00 00 00 74 07 00 00 00 00 00 00  |........t.......|
; 051861:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 051871:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 051881:  6f 01 93 00 14 00 17 00 82 01 a9 00 00 00 00 00  |o...............|
; 051891:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 64 00  |..............d.|
; 0518a1:  44 be 00 00 00 00 00 00 00 00 00 00 36 08 00 00  |D...........6...|
; 0518b1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0518c1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0518d1:  00 00 00 00 4f 01 3f 00 1e 00 1e 00 6c 01 5c 00  |....O.?.....l.\.|
; 0518e1:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 0518f1:  00 00 00 00 00 00 00 00 01 00 00 00 36 09 00 00  |............6...|
; 051901:  e6 a3 80 e6 9f a5 e7 ba bf e6 96 99 e4 bd 8d e7  |................|
; 051911:  bd ae 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 051921:  00 00 00 00 4f 01 8e 00 1e 00 1e 00 6c 01 ab 00  |....O.......l...|
; 051931:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 051941:  00 00 00 00 00 00 00 00 01 00 00 00 62 0a 00 00  |............b...|
; 051951:  00 00 00 00 00 00 00 00 00 00 00 00 e6 97 a0 e7  |................|
; 051961:  ba bf e5 b1 80 e5 9f 9f e7 bd 91 00 00 00 7f 00  |................|
; 051971:  00 00 00 00 86 01 1e 00 34 00 34 00 b9 01 51 00  |........4.4...Q.|
; 051981:  00 00 00 00 00 00 00 00 00 00 62 00 5f 00 00 00  |..........b._...|
; 051991:  ff ff 01 01 00 00 0a 00 ac be 00 00 00 00 00 00  |................|
; 0519a1:  00 00 00 00 00 00 1a 00 38 01 7b 00 00 00 00 00  |........8.{.....|
; 0519b1:  66 72 6f 6e 74 20 6d 6f 64 65 6c 20 63 6f 6f 6c  |front model cool|
; 0519c1:  20 66 61 6e 00 00 00 00 00 00 00 00 e9 80 81 e5  | fan............|
; 0519d1:  87 ba e6 96 b0 e6 96 99 e5 88 b0 e6 8c a4 e5 87  |................|
; 0519e1:  ba e6 9c ba 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0519f1:  00 00 00 00 71 00 8b 00 f7 00 1a 00 67 01 a4 00  |....q.......g...|
; 051a01:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 051a11:  00 00 64 00 1c c3 00 00 62 61 63 6b 20 6d 6f 64  |..d.....back mod|
; 051a21:  65 6c 20 63 6f 6f 6c 20 66 61 6e 00 00 00 00 00  |el cool fan.....|
; 051a31:  00 00 00 00 00 00 00 00 00 00 00 00 e5 bc 80 e5  |................|
; 051a41:  a7 8b 00 00 00 00 00 00 71 00 ae 00 f7 00 1a 00  |........q.......|
; 051a51:  67 01 c7 00 30 73 00 00 03 00 00 00 00 00 00 00  |g...0s..........|
; 051a61:  ff ff 00 01 00 00 64 00 84 c3 00 00 00 00 00 00  |......d.........|
; 051a71:  00 00 00 00 34 0d 00 00 00 00 00 00 00 00 00 00  |....4...........|
; 051a81:  25 00 00 00 62 0e 00 00 00 00 00 00 e6 88 91 e7  |%...b...........|
; 051a91:  9a 84 e7 bd 91 e7 bb 9c e8 bf 9b e6 96 99 e5 ae  |................|
; 051aa1:  8c e6 88 90 00 69 62 72 61 74 69 6f 6e 00 35 00  |.....ibration.5.|
; 051ab1:  22 00 22 00 6e 00 56 00 00 00 00 00 00 00 00 00  |".".n.V.........|
; 051ac1:  00 00 60 00 60 00 ff ff ff ff 01 01 00 00 0a 00  |..`.`...........|
; 051ad1:  ec c3 00 00 00 00 00 00 62 0f 00 00 00 00 00 00  |........b.......|
; 051ae1:  00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00  |........%.......|
; 051af1:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 051b01:  4d 00 5d 00 22 00 22 00 6e 00 7e 00 00 00 00 00  |M.].".".n.~.....|
; 051b11:  00 00 00 00 00 00 60 00 60 00 ff ff ff ff 01 01  |......`.`.......|
; 051b21:  00 00 0a 00 f8 c3 00 00 00 00 00 00 62 10 00 00  |............b...|
; 051b31:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 051b41:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 051b51:  00 00 00 00 4d 00 86 00 22 00 22 00 00 00 00 00  |....M...".".....|
; 051b61:  00 00 00 00 30 2d 3e 30 00 00 60 00 60 00 ff ff  |....0->0..`.`...|
; 051b71:  42 65 64 20 4d 65 73 68 20 43 61 6c 69 62 72 61  |Bed Mesh Calibra|
; 051b81:  74 69 6f 6e e9 80 9f e5 ba a6 ef bc 9a 00 00 00  |tion............|
; 051b91:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 051ba1:  00 00 7f 00 00 00 00 00 4d 00 ae 00 22 00 22 00  |........M...".".|
; 051bb1:  6e 00 cf 00 00 00 00 00 00 00 00 00 e8 bf 94 e5  |n...............|
; 051bc1:  9b 9e 00 ff ff ff 01 01 00 00 0a 00 10 c4 00 00  |................|
; 051bd1:  00 00 00 00 74 12 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 051be1:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 051bf1:  00 00 00 00 00 00 7f 00 00 00 00 00 70 00 c3 00  |............p...|
; 051c01:  9f 00 15 00 0e 01 d7 00 00 00 00 00 03 00 00 00  |................|
; 051c11:  00 01 00 00 f0 07 00 01 00 00 64 00 1c c4 00 00  |..........d.....|
; 051c21:  00 00 00 00 00 00 00 00 71 13                    |........q.|
