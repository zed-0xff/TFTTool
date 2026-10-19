; page 27 'load_begin': 5 objects

; object address table, 5 objects, block loaded at 0xa3a4
.dd 0xa3b8, 0xa3f8, 0xa44c, 0xa46c, 0xa48c

; object id 0 (page 'load_begin'): x=0, y=0, w=480, h=272, name hash=0x494e9661
; flags=0x37, aph=127, events: event_3=0x2144c
; sta=2, pic=2
; 02160f:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2144c
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x218a7
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_2194a
    local_2c21 = "请将新耗材通过断料检测，插入齿轮处，点击“确认进料”"
    local_2c5f = "确认进料"
    jmp lbl_21ee8

lbl_2194a:
    if global_14 != 1 then jump lbl_219ff
    local_2c21 = "Insert the new material through the filament detector, place it into the gear, and click \"Confirm Loading.\""
    local_2c5f = "Confirm Loading"
    jmp lbl_21ee8

lbl_219ff:
    if global_14 != 2 then jump lbl_21afb
    local_2c21 = "新しいマテリアルをフィラメント検出器を通して挿入し、ギアに配置して「ローディングを確認」をクリックしてください。"
    local_2c5f = "ローディングを確認"
    jmp lbl_21ee8

lbl_21afb:
    if global_14 != 3 then jump lbl_21bc7
    local_2c21 = "Legen Sie das neue Material durch den Filamentdetektor ein, legen Sie es in das Zahnrad und klicken Sie auf \"Laden bestätigen\"."
    local_2c5f = "Laden bestätigen"
    jmp lbl_21ee8

lbl_21bc7:
    if global_14 != 4 then jump lbl_21c8c
    local_2c21 = "Inserte el nuevo material a través del detector de filamento, colóquelo en el engranaje y haga clic en \"Confirmar carga\"."
    local_2c5f = "Confirmar carga"
    jmp lbl_21ee8

lbl_21c8c:
    if global_14 != 5 then jump lbl_21d66
    local_2c21 = "Insérez le nouveau matériau à travers le détecteur de filament, placez-le dans l'engrenage et cliquez sur \"Confirmer le chargement\"."
    local_2c5f = "Confirmer le chargement"
    jmp lbl_21ee8

lbl_21d66:
    if global_14 != 6 then jump lbl_21e20
    local_2c21 = "Insira o novo material através do detetor de filamentos, coloque-o na engrenagem e clique em \"Confirmar carga\"."
    local_2c5f = "Confirmar carga"
    jmp lbl_21ee8

lbl_21e20:
    if global_14 != 7 then jump lbl_21ee8
    local_2c21 = "Inserisci il nuovo materiale attraverso il rilevatore di filamento, posizionalo nell'ingranaggio e clicca su \"Conferma caricamento\"."
    local_2c5f = "Conferma caricamento"

lbl_21ee8:
    doevents
    down
    up

; object id 1 (text 't0'): x=106, y=55, w=268, h=103, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="请将新耗材通过断料检测，插入齿轮处，点击确认进料"
; text:
;   0: "请将新耗材通过断料检测，插入齿轮处，点击“确认进料”"
;   1: "Insert the new material through the filament detector, place it into the gear, and click \"Confirm Loading.\""
;   2: "新しいマテリアルをフィラメント検出器を通して挿入し、ギアに配置して「ローディングを確認」をクリックしてください。"
;   3: "Legen Sie das neue Material durch den Filamentdetektor ein, legen Sie es in das Zahnrad und klicken Sie auf \"Laden bestätigen\"."
;   4: "Inserte el nuevo material a través del detector de filamento, colóquelo en el engranaje y haga clic en \"Confirmar carga\"."
;   5: "Insérez le nouveau matériau à travers le détecteur de filament, placez-le dans l'engrenage et cliquez sur \"Confirmer le chargement\"."
;   6: "Insira o novo material através do detetor de filamentos, coloque-o na engrenagem e clique em \"Confirmar carga\"."
;   7: "Inserisci il nuovo materiale attraverso il rilevatore di filamento, posizionalo nell'ingranaggio e clicca su \"Conferma caricamento\"."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x214a3
; tim=1000, en=1

; timer
.org 0x214a3
    if global_1c <= 0 then jump lbl_214ff
    if global_20 <= 0 then jump lbl_214ff
    global_20--
    if global_20 != 0 then jump lbl_214ff
    dim = global_30

lbl_214ff:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x21519

; touch_release
.org 0x21519
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x21551
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确认进料"
; text:
;   0: "确认进料"
;   1: "Confirm Loading"
;   2: "ローディングを確認"
;   3: "Laden bestätigen"
;   4: "Confirmar carga"
;   5: "Confirmer le chargement"
;   6: "Confirmar carga"
;   7: "Conferma caricamento"
; touch_release reports to the host: page <page>, widget 0
; 0216f3:  ff ff                                            |..|

; touch_release
.org 0x21551
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 021703:  00 00 00 00 e8 af b7 e5 b0 86 e6 96 b0 e8 80 97  |................|
; 021713:  e6 9d 90 e9 80 9a e8 bf 87 e6 96 ad e6 96 99 e6  |................|
; 021723:  a3 80 e6 b5 8b ef bc 8c e6 8f 92 e5 85 a5 e9 bd  |................|
; 021733:  bf e8 bd ae e5 a4 84 ef bc 8c e7 82 b9 e5 87 bb  |................|
; 021743:  e7 a1 ae e8 ae a4 e8 bf 9b e6 96 99 00 00 64 00  |..............d.|
; 021753:  d4 a6 00 00 01 00 00 00 00 00 00 00 e6 a3 80 e6  |................|
; 021763:  b5 8b e5 88 b0 e8 80 97 e6 9d 90 e5 b7 b2 e7 94  |................|
; 021773:  a8 e5 b0 bd 3b e8 80 97 e6 9d 90 e5 b7 b2 e9 80  |....;...........|
; 021783:  80 e5 87 ba ef bc 8c e8 af b7 e5 b0 86 e8 80 97  |................|
; 021793:  e6 9d 90 e6 8b 94 e5 87 ba e7 a7 bb e9 99 a4 00  |................|
; 0217a3:  47 00 26 00 53 00 83 00 00 00 00 00 00 00 00 00  |G.&.S...........|
; 0217b3:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 0217c3:  40 ab 00 00 01 00 00 00 62 0d 00 00 00 00 00 00  |@.......b.......|
; 0217d3:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0217e3:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0217f3:  91 00 5e 00 46 00 26 00 d6 00 83 00 00 00 00 00  |..^.F.&.........|
; 021803:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 021813:  00 00 64 00 a8 ab 00 00 01 00 00 00 62 0e 00 00  |..d.........b...|
; 021823:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 021833:  00 00 00 00 e7 a1 ae e8 ae a4 e8 bf 9b e6 96 99  |................|
; 021843:  00 00 00 00 fc 00 5d 00 46 00 26 00 41 01 82 00  |......].F.&.A...|
; 021853:  00 00 00 00 00 00 00 00 00 00 24 00 25 00 ff ff  |..........$.%...|
; 021863:  ff ff 01 01 00 00 64 00 10 ac 00 00 01 00 00 00  |......d.........|
; 021873:  62 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 021883:  00 00 00 00 00 00 00 00 00 00 00 00 e7 bb 93 e6  |................|
; 021893:  9d 9f e6 89 93 e5 8d b0 00 01 5d                 |..........]|
