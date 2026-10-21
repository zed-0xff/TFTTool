; page 27 'load_begin': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'load_begin'): x=0, y=0, w=480, h=272, name hash=0x494e9661
; flags=0x37, aph=127, events: event_3=0x231be
; sta=2, pic=2
; 023381:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x231be
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x23619
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_236bc
    local_2d68 = "请将新耗材通过断料检测，插入齿轮处，点击“确认进料”"
    local_2da6 = "确认进料"
    jmp lbl_23c5a

lbl_236bc:
    if global_14 != 1 then jump lbl_23771
    local_2d68 = "Insert the new material through the filament detector, place it into the gear, and click \"Confirm Loading.\""
    local_2da6 = "Confirm Loading"
    jmp lbl_23c5a

lbl_23771:
    if global_14 != 2 then jump lbl_2386d
    local_2d68 = "新しいマテリアルをフィラメント検出器を通して挿入し、ギアに配置して「ローディングを確認」をクリックしてください。"
    local_2da6 = "ローディングを確認"
    jmp lbl_23c5a

lbl_2386d:
    if global_14 != 3 then jump lbl_23939
    local_2d68 = "Legen Sie das neue Material durch den Filamentdetektor ein, legen Sie es in das Zahnrad und klicken Sie auf \"Laden bestätigen\"."
    local_2da6 = "Laden bestätigen"
    jmp lbl_23c5a

lbl_23939:
    if global_14 != 4 then jump lbl_239fe
    local_2d68 = "Inserte el nuevo material a través del detector de filamento, colóquelo en el engranaje y haga clic en \"Confirmar carga\"."
    local_2da6 = "Confirmar carga"
    jmp lbl_23c5a

lbl_239fe:
    if global_14 != 5 then jump lbl_23ad8
    local_2d68 = "Insérez le nouveau matériau à travers le détecteur de filament, placez-le dans l'engrenage et cliquez sur \"Confirmer le chargement\"."
    local_2da6 = "Confirmer le chargement"
    jmp lbl_23c5a

lbl_23ad8:
    if global_14 != 6 then jump lbl_23b92
    local_2d68 = "Insira o novo material através do detetor de filamentos, coloque-o na engrenagem e clique em \"Confirmar carga\"."
    local_2da6 = "Confirmar carga"
    jmp lbl_23c5a

lbl_23b92:
    if global_14 != 7 then jump lbl_23c5a
    local_2d68 = "Inserisci il nuovo materiale attraverso il rilevatore di filamento, posizionalo nell'ingranaggio e clicca su \"Conferma caricamento\"."
    local_2da6 = "Conferma caricamento"

lbl_23c5a:
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
; flags=0x27, events: timer=0x23215
; tim=1000, en=1

; timer
.org 0x23215
    if global_1c <= 0 then jump lbl_23271
    if global_20 <= 0 then jump lbl_23271
    global_20--
    if global_20 != 0 then jump lbl_23271
    dim = global_30

lbl_23271:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x2328b

; touch_release
.org 0x2328b
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=176, y=172, w=128, h=39, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x232c3
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
; 023465:  ff ff                                            |..|

; touch_release
.org 0x232c3
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 023475:  00 00 00 00 e8 af b7 e5 b0 86 e6 96 b0 e8 80 97  |................|
; 023485:  e6 9d 90 e9 80 9a e8 bf 87 e6 96 ad e6 96 99 e6  |................|
; 023495:  a3 80 e6 b5 8b ef bc 8c e6 8f 92 e5 85 a5 e9 bd  |................|
; 0234a5:  bf e8 bd ae e5 a4 84 ef bc 8c e7 82 b9 e5 87 bb  |................|
; 0234b5:  e7 a1 ae e8 ae a4 e8 bf 9b e6 96 99 00 96 b0 e7  |................|
; 0234c5:  9a 84 e8 80 97 e6 9d 90 e5 90 8e e7 bb a7 e7 bb  |................|
; 0234d5:  ad e6 89 93 e5 8d b0 00 e6 8d a2 e6 96 99 ef bc  |................|
; 0234e5:  9f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0234f5:  00 00 7f 00 00 00 00 00 91 00 5e 00 46 00 26 00  |..........^.F.&.|
; 023505:  d6 00 83 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 023515:  25 00 ff ff ff ff 01 01 00 00 64 00 14 bf 00 00  |%.........d.....|
; 023525:  01 00 00 00 62 0d 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 023535:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 023545:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 00 00  |................|
; 023555:  46 00 26 00 41 01 82 00 00 00 00 00 00 00 00 00  |F.&.A...........|
; 023565:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 023575:  7c bf 00 00 01 00 00 00 62 0f 00 00 00 00 00 00  ||.......b.......|
; 023585:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 023595:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0235a5:  80 01 5d 00 e7 a1 ae e8 ae a4 e8 bf 9b e6 96 99  |..].............|
; 0235b5:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 0235c5:  00 00 64 00 e4 bf 00 00 01 00 00 00 62 10 00 00  |..d.........b...|
; 0235d5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0235e5:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0235f5:  00 00 00 00 fc 00 93 00 46 00 26 00 e6 98 af 00  |........F.&.....|
; 023605:  00 00 00 00 00 00 00 00 00 00 24                 |..........$|
