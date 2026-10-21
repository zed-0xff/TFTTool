; page 31 'load_clear': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'load_clear'): x=0, y=0, w=480, h=272, name hash=0x7b7a05d
; flags=0x37, aph=127, events: event_3=0x25727
; sta=2, pic=2
; 0258ea:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x25727
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x25b82
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_25c16
    local_2f80 = "请清理喷嘴下挤出的耗材后，选择“继续打印”"
    local_2fbe = "继续打印"
    jmp lbl_260b8

lbl_25c16:
    if global_14 != 1 then jump lbl_25cb4
    local_2f80 = "After cleaning the extruded material under the nozzle, choose \"Continue Printing.\""
    local_2fbe = "Continue Printing"
    jmp lbl_260b8

lbl_25cb4:
    if global_14 != 2 then jump lbl_25d83
    local_2f80 = "ノズルの下に押し出されたマテリアルをクリーニングした後、「印刷を続行」を選択してください。"
    local_2fbe = "印刷を続行"
    jmp lbl_260b8

lbl_25d83:
    if global_14 != 3 then jump lbl_25e30
    local_2f80 = "Nach Reinigung des unter der Düse ausgetretenen Materials wählen Sie \"Drucken fortzufahren\"."
    local_2fbe = "Drucken fortzufahren"
    jmp lbl_260b8

lbl_25e30:
    if global_14 != 4 then jump lbl_25edc
    local_2f80 = "Después de limpiar el material extruido debajo de la boquilla, elija \"Continuar impresión\"."
    local_2fbe = "Continuar impresión"
    jmp lbl_260b8

lbl_25edc:
    if global_14 != 5 then jump lbl_25f8d
    local_2f80 = "Après avoir nettoyé le matériau extrudé sous le nozzle, choisissez \"Continuer l'impression\"."
    local_2fbe = "Continuer l'impression"
    T 0x12b

lbl_25f8d:
    if global_14 != 6 then jump lbl_26029
    local_2f80 = "Após limpar o material extrudado sob o bico, escolha \"Continuar impressão\"."
    local_2fbe = "Continuar impressão"
    jmp lbl_260b8

lbl_26029:
    if global_14 != 7 then jump lbl_260b8
    local_2f80 = "Dopo aver pulito il materiale estruso sotto il nozzle, scegli \"Continua stampa\"."
    local_2fbe = "Continua stampa"

lbl_260b8:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=54, w=268, h=105, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="请清理喷嘴下挤出的耗材后，选择继续打印"
; text:
;   0: "请清理喷嘴下挤出的耗材后，选择“继续打印”"
;   1: "After cleaning the extruded material under the nozzle, choose \"Continue Printing.\""
;   2: "ノズルの下に押し出されたマテリアルをクリーニングした後、「印刷を続行」を選択してください。"
;   3: "Nach Reinigung des unter der Düse ausgetretenen Materials wählen Sie \"Drucken fortzufahren\"."
;   4: "Después de limpiar el material extruido debajo de la boquilla, elija \"Continuar impresión\"."
;   5: "Après avoir nettoyé le matériau extrudé sous le nozzle, choisissez \"Continuer l'impression\"."
;   6: "Após limpar o material extrudado sob o bico, escolha \"Continuar impressão\"."
;   7: "Dopo aver pulito il materiale estruso sotto il nozzle, scegli \"Continua stampa\"."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2577e
; tim=1000, en=1

; timer
.org 0x2577e
    if global_1c <= 0 then jump lbl_257da
    if global_20 <= 0 then jump lbl_257da
    global_20--
    if global_20 != 0 then jump lbl_257da
    dim = global_30

lbl_257da:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x257f4

; touch_release
.org 0x257f4
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x2582c
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="继续打印"
; text:
;   0: "继续打印"
;   1: "Continue Printing"
;   2: "印刷を続行"
;   3: "Drucken fortzufahren"
;   4: "Continuar impresión"
;   5: "Continuer l'impression"
;   6: "Continuar impressão"
;   7: "Continua stampa"
; touch_release reports to the host: page <page>, widget 0
; 0259ce:  ff ff                                            |..|

; touch_release
.org 0x2582c
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 0259de:  00 00 00 00 e8 af b7 e6 b8 85 e7 90 86 e5 96 b7  |................|
; 0259ee:  e5 98 b4 e4 b8 8b e6 8c a4 e5 87 ba e7 9a 84 e8  |................|
; 0259fe:  80 97 e6 9d 90 e5 90 8e ef bc 8c e9 80 89 e6 8b  |................|
; 025a0e:  a9 e7 bb a7 e7 bb ad e6 89 93 e5 8d b0 00 00 00  |................|
; 025a1e:  00 00 04 00 05 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 025a2e:  80 bc 00 00 01 00 00 00 00 00 00 00 e8 af b7 e8  |................|
; 025a3e:  a7 82 e5 af 9f e5 96 b7 e5 98 b4 ef bc 8c e7 a1  |................|
; 025a4e:  ae e8 ae a4 e8 80 97 e6 9d 90 e5 b7 b2 e6 8c a4  |................|
; 025a5e:  e5 87 ba 3b e8 8b a5 e6 9c aa e8 80 97 e6 9d 90  |...;............|
; 025a6e:  e6 9c aa e6 8c a4 e5 87 ba e5 96 b7 e5 98 b4 ef  |................|
; 025a7e:  bc 8c e8 af b7 e9 80 89 e6 8b a9 e7 bb a7 e7 bb  |................|
; 025a8e:  ad e6 8c a4 e5 87 ba e3 80 82 00 00 00 00 00 00  |................|
; 025a9e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 025aae:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 00 00  |................|
; 025abe:  46 00 26 00 41 01 82 00 00 00 00 00 00 00 00 00  |F.&.A...........|
; 025ace:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 025ade:  7c bf 00 00 01 00 00 00 62 0f 00 00 00 00 00 00  ||.......b.......|
; 025aee:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 025afe:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 025b0e:  80 01 5d 00 e7 bb a7 e7 bb ad e6 89 93 e5 8d b0  |..].............|
; 025b1e:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 025b2e:  00 00 64 00 e4 bf 00 00 01 00 00 00 62 10 00 00  |..d.........b...|
; 025b3e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 025b4e:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 025b5e:  00 00 00 00 fc 00 93 00 46 00 26 00 e7 bb a7 e7  |........F.&.....|
; 025b6e:  bb ad e6 8c a4 e5 87 ba 00 00 24                 |..........$|
