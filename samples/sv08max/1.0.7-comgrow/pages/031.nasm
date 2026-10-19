; page 31 'load_clear': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page 'load_clear'): x=0, y=0, w=480, h=272, name hash=0x7b7a05d
; flags=0x37, aph=127, events: event_3=0x239b5
; sta=2, pic=2
; 023b78:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x239b5
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x23e10
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_23ea4
    local_2e39 = "请清理喷嘴下挤出的耗材后，选择“继续打印”"
    local_2e77 = "继续打印"
    jmp lbl_24346

lbl_23ea4:
    if global_14 != 1 then jump lbl_23f42
    local_2e39 = "After cleaning the extruded material under the nozzle, choose \"Continue Printing.\""
    local_2e77 = "Continue Printing"
    jmp lbl_24346

lbl_23f42:
    if global_14 != 2 then jump lbl_24011
    local_2e39 = "ノズルの下に押し出されたマテリアルをクリーニングした後、「印刷を続行」を選択してください。"
    local_2e77 = "印刷を続行"
    jmp lbl_24346

lbl_24011:
    if global_14 != 3 then jump lbl_240be
    local_2e39 = "Nach Reinigung des unter der Düse ausgetretenen Materials wählen Sie \"Drucken fortzufahren\"."
    local_2e77 = "Drucken fortzufahren"
    jmp lbl_24346

lbl_240be:
    if global_14 != 4 then jump lbl_2416a
    local_2e39 = "Después de limpiar el material extruido debajo de la boquilla, elija \"Continuar impresión\"."
    local_2e77 = "Continuar impresión"
    jmp lbl_24346

lbl_2416a:
    if global_14 != 5 then jump lbl_2421b
    local_2e39 = "Après avoir nettoyé le matériau extrudé sous le nozzle, choisissez \"Continuer l'impression\"."
    local_2e77 = "Continuer l'impression"
    T 0x12b

lbl_2421b:
    if global_14 != 6 then jump lbl_242b7
    local_2e39 = "Após limpar o material extrudado sob o bico, escolha \"Continuar impressão\"."
    local_2e77 = "Continuar impressão"
    jmp lbl_24346

lbl_242b7:
    if global_14 != 7 then jump lbl_24346
    local_2e39 = "Dopo aver pulito il materiale estruso sotto il nozzle, scegli \"Continua stampa\"."
    local_2e77 = "Continua stampa"

lbl_24346:
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
; flags=0x27, events: timer=0x23a0c
; tim=1000, en=1

; timer
.org 0x23a0c
    if global_1c <= 0 then jump lbl_23a68
    if global_20 <= 0 then jump lbl_23a68
    global_20--
    if global_20 != 0 then jump lbl_23a68
    dim = global_30

lbl_23a68:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x23a82

; touch_release
.org 0x23a82
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x23aba
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
; 023c5c:  ff ff                                            |..|

; touch_release
.org 0x23aba
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 023c6c:  00 00 00 00 e8 af b7 e6 b8 85 e7 90 86 e5 96 b7  |................|
; 023c7c:  e5 98 b4 e4 b8 8b e6 8c a4 e5 87 ba e7 9a 84 e8  |................|
; 023c8c:  80 97 e6 9d 90 e5 90 8e ef bc 8c e9 80 89 e6 8b  |................|
; 023c9c:  a9 e7 bb a7 e7 bb ad e6 89 93 e5 8d b0 00 00 00  |................|
; 023cac:  00 00 04 00 05 00 ff ff ff ff 01 01 00 00 64 00  |..............d.|
; 023cbc:  d4 a6 00 00 01 00 00 00 00 00 00 00 e8 af b7 e8  |................|
; 023ccc:  a7 82 e5 af 9f e5 96 b7 e5 98 b4 ef bc 8c e7 a1  |................|
; 023cdc:  ae e8 ae a4 e8 80 97 e6 9d 90 e5 b7 b2 e6 8c a4  |................|
; 023cec:  e5 87 ba 3b e8 8b a5 e6 9c aa e8 80 97 e6 9d 90  |...;............|
; 023cfc:  e6 9c aa e6 8c a4 e5 87 ba e5 96 b7 e5 98 b4 ef  |................|
; 023d0c:  bc 8c e8 af b7 e9 80 89 e6 8b a9 e7 bb a7 e7 bb  |................|
; 023d1c:  ad e6 8c a4 e5 87 ba e3 80 82 00 01 00 00 64 00  |..............d.|
; 023d2c:  40 ab 00 00 01 00 00 00 62 0d 00 00 00 00 00 00  |@.......b.......|
; 023d3c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 023d4c:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 023d5c:  91 00 5e 00 46 00 26 00 d6 00 83 00 00 00 00 00  |..^.F.&.........|
; 023d6c:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 023d7c:  00 00 64 00 a8 ab 00 00 01 00 00 00 62 0e 00 00  |..d.........b...|
; 023d8c:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 023d9c:  00 00 00 00 e7 bb a7 e7 bb ad e6 89 93 e5 8d b0  |................|
; 023dac:  00 00 00 00 fc 00 5d 00 46 00 26 00 41 01 82 00  |......].F.&.A...|
; 023dbc:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 023dcc:  ff ff 01 01 00 00 64 00 10 ac 00 00 01 00 00 00  |......d.........|
; 023ddc:  62 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 023dec:  00 00 00 00 00 00 00 00 00 00 00 00 e7 bb a7 e7  |................|
; 023dfc:  bb ad e6 8c a4 e5 87 ba 00 01 5d                 |..........]|
