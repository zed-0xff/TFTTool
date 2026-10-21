; page 89: 10 objects

; object address table, 10 objects, block loaded at 0xb950
.dd 0xb978, 0xb9b8, 0xba0c, 0xba60, 0xbab4, 0xbb08, 0xbb5c, 0xbbb0
.dd 0xbc04, 0xbc58

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xa8c8f644
; flags=0x37, aph=127
; sta=2, pic=115
; 0561b7:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x56c53
    if global_14 != 0 then jump lbl_56d08
    local_75a7 = "校准"
    local_75f5 = "XYZ轴检测,涡流检测,加热检测"
    local_75ce = "网床校准"
    local_761c = "振动"
    local_7643 = "喷嘴:"
    local_766a = "热床:"
    jmp lbl_573c3

lbl_56d08:
    if global_14 != 1 then jump lbl_56de1
    local_75a7 = "Calibration"
    local_75f5 = "XYZ Axis Detection, Eddy Current Detection, Heating Detection"
    local_75ce = "Mesh Bed Calibration"
    local_761c = "Vibration"
    local_7643 = "Nozzle:"
    local_766a = "Bed:"
    jmp lbl_573c3

lbl_56de1:
    if global_14 != 2 then jump lbl_56ee1
    local_75a7 = "キャリブレーション"
    local_75f5 = "XYZ軸検出,渦電流検出,加熱検出"
    local_75ce = "メッシュベッドキャリブレーション"
    local_761c = "振動"
    local_7643 = "ノズル:"
    local_766a = "ヒートベッド:"
    jmp lbl_573c3

lbl_56ee1:
    if global_14 != 3 then jump lbl_56fb9
    local_75a7 = "Kalibrierung"
    local_75f5 = "XYZ-Achsenprüfung, Wirbelstromprüfung, Heizprüfung"
    local_75ce = "Gitterbettkalibrierung"
    local_761c = "Vibration"
    local_7643 = "Düse:"
    local_766a = "Heizbett:"
    jmp lbl_573c3

lbl_56fb9:
    if global_14 != 4 then jump lbl_570c7
    local_75a7 = "Calibración"
    local_75f5 = "Detección de eje XYZ, Detección de corriente de Foucault, Detección de calentamiento"
    local_75ce = "Calibración de cama de malla"
    local_761c = "Vibración"
    local_7643 = "Boquilla:"
    local_766a = "Cama calefactable:"
    jmp lbl_573c3

lbl_570c7:
    if global_14 != 5 then jump lbl_571c8
    local_75a7 = "Étalonnage"
    local_75f5 = "Détection de l'axe XYZ, Détection par courants de Foucault, Détection de chauffage"
    local_75ce = "Étalonnage du lit à grille"
    local_761c = "Vibration"
    local_7643 = "Buse:"
    local_766a = "Lit chauffant:"
    jmp lbl_573c3

lbl_571c8:
    if global_14 != 6 then jump lbl_572cd
    local_75a7 = "Calibração"
    local_75f5 = "Detecção do Eixo XYZ, Detecção por Corrente de Foucault, Detecção de Aquecimento"
    local_75ce = "Calibração da Cama de Malha"
    local_761c = "Vibração"
    local_7643 = "Bico:"
    local_766a = "Cama Aquecida:"
    jmp lbl_573c3

lbl_572cd:
    if global_14 != 7 then jump lbl_573c3
    local_75a7 = "Calibrazione"
    local_75f5 = "Rilevamento asse XYZ, Rilevamento a correnti parassite, Rilevamento riscaldamento"
    local_75ce = "Calibrazione letto a rete"
    local_761c = "Vibrazione"
    local_7643 = "Ugello:"
    local_766a = "Letto riscaldato:"

lbl_573c3:
    doevents
    down
    up
    unload
    down
    up
    down
    up

; object id 1 (text 't0'): x=26, y=3, w=100, h=30, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="校准"
; text:
;   0: "校准"
;   1: "Calibration"
;   2: "キャリブレーション"
;   3: "Kalibrierung"
;   4: "Calibración"
;   5: "Étalonnage"
;   6: "Calibração"
;   7: "Calibrazione"

; object id 2 (text 't2'): x=72, y=82, w=239, h=40, name hash=0x2cf7a429
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=1, background=0, txt="网床校准"
; text:
;   0: "网床校准"
;   1: "Mesh Bed Calibration"
;   2: "メッシュベッドキャリブレーション"
;   3: "Gitterbettkalibrierung"
;   4: "Calibración de cama de malla"
;   5: "Étalonnage du lit à grille"
;   6: "Calibração da Cama de Malha"
;   7: "Calibrazione letto a rete"

; object id 3 (text 't1'): x=72, y=38, w=242, h=40, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=1, background=0, txt="XYZ轴检测,涡流检测,加热检测"
; text:
;   0: "XYZ轴检测,涡流检测,加热检测"
;   1: "XYZ Axis Detection, Eddy Current Detection, Heating Detection"
;   2: "XYZ軸検出,渦電流検出,加熱検出"
;   3: "XYZ-Achsenprüfung, Wirbelstromprüfung, Heizprüfung"
;   4: "Detección de eje XYZ, Detección de corriente de Foucault, Detección de calentamiento"
;   5: "Détection de l'axe XYZ, Détection par courants de Foucault, Détection de chauffage"
;   6: "Detecção do Eixo XYZ, Detecção por Corrente de Foucault, Detecção de Aquecimento"
;   7: "Rilevamento asse XYZ, Rilevamento a correnti parassite, Rilevamento riscaldamento"

; object id 4 (text 't3'): x=72, y=123, w=221, h=42, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=1, background=0, txt="振动"
; text:
;   0: "振动"
;   1: "Vibration"
;   2: "振動"
;   3: "Vibration"
;   4: "Vibración"
;   5: "Vibration"
;   6: "Vibração"
;   7: "Vibrazione"

; object id 5 (text 't4'): x=0, y=172, w=165, h=25, name hash=0x1d54e28e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=200, isbr=1, background=0, txt="喷嘴："
; text:
;   0: "喷嘴:"
;   1: "Nozzle:"
;   2: "ノズル:"
;   3: "Düse:"
;   4: "Boquilla:"
;   5: "Buse:"
;   6: "Bico:"
;   7: "Ugello:"

; object id 6 (text 't5'): x=0, y=193, w=165, h=25, name hash=0x6b3bf9f6
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=2, ycen=1, txt_maxl=200, isbr=1, background=0, txt="热床："
; text:
;   0: "热床:"
;   1: "Bed:"
;   2: "ヒートベッド:"
;   3: "Heizbett:"
;   4: "Cama calefactable:"
;   5: "Lit chauffant:"
;   6: "Cama Aquecida:"
;   7: "Letto riscaldato:"

; object id 7 (text): x=174, y=172, w=98, h=25, name hash=0x2591e5f2
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=1, background=0, txt="200/200"

; object id 8 (text 'bed'): x=173, y=193, w=98, h=25, name hash=0x96798b0f
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=1, background=0, txt="200/200"

; object id 9 (text): x=28, y=226, w=399, h=38, name hash=0x8fe11b47
; flags=0x37, aph=127
; sta=3, font=0, pco=0xfff0, xcen=0, ycen=1, txt_maxl=200, isbr=1, background=0, txt=""

; data after the object structs, 1918 bytes (26 trailing zero bytes dropped)
; 0564b7:  00 00 00 00 e6 a0 a1 e5 87 86 00 00 e6 97 a0 e7  |................|
; 0564c7:  ba bf e5 b1 80 e5 9f 9f e7 bd 91 00 00 00 7f 00  |................|
; 0564d7:  00 00 00 00 86 01 1e 00 34 00 34 00 00 00 00 00  |........4.4.....|
; 0564e7:  00 00 00 00 00 00 00 00 00 00 62 00 5f 00 00 00  |..........b._...|
; 0564f7:  ff ff 01 01 00 00 0a 00 ac be 00 00 00 00 00 00  |................|
; 056507:  00 00 00 00 00 00 1a 00 38 01 7b 00 00 00 00 00  |........8.{.....|
; 056517:  66 72 6f 6e 74 20 6d 6f 64 65 6c 20 63 6f 6f 6c  |front model cool|
; 056527:  20 66 61 6e 00 00 00 00 00 00 00 00 e9 80 81 e5  | fan............|
; 056537:  87 ba e6 96 b0 e6 96 99 e5 88 b0 e6 8c a4 e5 87  |................|
; 056547:  ba e6 9c ba 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 056557:  00 00 00 00 71 00 8b 00 f7 00 1a 00 67 01 a4 00  |....q.......g...|
; 056567:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 056577:  00 00 64 00 1c c3 00 00 62 61 63 6b 20 6d 6f 64  |..d.....back mod|
; 056587:  65 6c 20 63 6f 6f 6c 20 66 61 6e 00 00 00 00 00  |el cool fan.....|
; 056597:  00 00 00 00 00 00 00 00 00 00 00 00 e5 bc 80 e5  |................|
; 0565a7:  a7 8b 00 00 00 00 00 00 71 00 ae 00 f7 00 1a 00  |........q.......|
; 0565b7:  67 01 c7 00 30 73 00 00 03 00 00 00 00 00 00 00  |g...0s..........|
; 0565c7:  ff ff 00 01 00 00 64 00 84 c3 00 00 00 00 00 00  |......d.........|
; 0565d7:  00 00 00 00 34 0d 00 00 00 00 00 00 00 00 00 00  |....4...........|
; 0565e7:  25 00 00 00 e7 bd 91 e5 ba 8a e6 a0 a1 e5 87 86  |%...............|
; 0565f7:  00 84 e7 bd 91 e7 bb 9c e8 bf 9b e6 96 99 e5 ae  |................|
; 056607:  8c e6 88 90 00 69 62 72 61 74 69 6f 6e 00 35 00  |.....ibration.5.|
; 056617:  22 00 22 00 6e 00 56 00 00 00 00 00 00 00 00 00  |".".n.V.........|
; 056627:  00 00 60 00 60 00 ff ff ff ff 01 01 00 00 0a 00  |..`.`...........|
; 056637:  ec c3 00 00 00 00 00 00 62 0f 00 00 00 00 00 00  |........b.......|
; 056647:  00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00  |........%.......|
; 056657:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 056667:  4d 00 5d 00 22 00 22 00 6e 00 7e 00 00 00 00 00  |M.].".".n.~.....|
; 056677:  00 00 00 00 00 00 60 00 60 00 ff ff ff ff 01 01  |......`.`.......|
; 056687:  00 00 0a 00 f8 c3 00 00 00 00 00 00 62 10 00 00  |............b...|
; 056697:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0566a7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0566b7:  58 59 5a e8 bd b4 e6 a3 80 e6 b5 8b 2c e6 b6 a1  |XYZ.........,...|
; 0566c7:  e6 b5 81 e6 a3 80 e6 b5 8b 2c e5 8a a0 e7 83 ad  |.........,......|
; 0566d7:  e6 a3 80 e6 b5 8b 00 68 20 43 61 6c 69 62 72 61  |.......h Calibra|
; 0566e7:  74 69 6f 6e e9 80 9f e5 ba a6 ef bc 9a 00 00 00  |tion............|
; 0566f7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 056707:  00 00 7f 00 00 00 00 00 4d 00 ae 00 22 00 22 00  |........M...".".|
; 056717:  6e 00 cf 00 00 00 00 00 00 00 00 00 e8 bf 94 e5  |n...............|
; 056727:  9b 9e 00 ff ff ff 01 01 00 00 0a 00 10 c4 00 00  |................|
; 056737:  00 00 00 00 74 12 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 056747:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 056757:  00 00 00 00 00 00 7f 00 00 00 00 00 70 00 c3 00  |............p...|
; 056767:  9f 00 15 00 0e 01 d7 00 00 00 00 00 03 00 00 00  |................|
; 056777:  00 01 00 00 f0 07 00 01 00 00 64 00 e6 8c af e5  |..........d.....|
; 056787:  8a a8 00 00 00 00 00 00 71 13 00 00 00 00 00 00  |........q.......|
; 056797:  00 00 00 00 00 00 00 00 00 00 00 00 e8 b7 b3 e8  |................|
; 0567a7:  bf 87 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0567b7:  65 01 4d 00 6d 00 71 00 d1 01 bd 00 00 00 00 00  |e.M.m.q.........|
; 0567c7:  60 00 00 00 00 00 00 00 00 72 6f 6e 74 20 6d 6f  |`........ront mo|
; 0567d7:  58 59 5a e8 bd b4 e6 a3 80 e6 b5 8b 2c e6 b6 a1  |XYZ.........,...|
; 0567e7:  e6 b5 81 e6 a3 80 e6 b5 8b 2c e5 8a a0 e7 83 ad  |.........,......|
; 0567f7:  e6 a3 80 e6 b5 8b 00 00 00 00 00 00 00 00 00 00  |................|
; 056807:  00 00 7f 00 00 00 00 00 b3 00 af 00 26 00 1e 00  |............&...|
; 056817:  d8 00 cc 00 30 20 4d 42 2f 73 00 39 00 00 3d 00  |....0 MB/s.9..=.|
; 056827:  3e 00 ff ff ff ff 01 01 00 00 03 00 e8 c9 00 00  |>...............|
; 056837:  00 61 63 6b 20 6d 6f 64 65 6c 20 63 6f 6f 6c 20  |.ack model cool |
; 056847:  66 61 6e 00 00 00 00 00 e5 96 b7 e5 98 b4 ef bc  |fan.............|
; 056857:  9a 00 00 00 e6 a0 a1 e5 87 86 00 00 dc 00 af 00  |................|
; 056867:  26 00 1e 00 01 01 cc 00 00 00 00 00 00 00 e7 39  |&..............9|
; 056877:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 056887:  ec c9 00 00 00 00 00 00 62 16 00 00 00 00 00 00  |........b.......|
; 056897:  00 00 00 00 00 00 00 00 00 75 78 69 00 00 00 00  |.........uxi....|
; 0568a7:  79 20 66 61 6e 20 28 4e 65 65 64 20 74 6f 20 69  |y fan (Need to i|
; 0568b7:  6e 73 74 61 6c 29 00 00 2a 01 cc 00 e6 a0 a1 e5  |nstal)..*.......|
; 0568c7:  87 86 00 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 0568d7:  00 00 03 00 f0 c9 00 00 00 00 00 00 62 17 00 00  |............b...|
; 0568e7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0568f7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 056907:  00 78 68 61 75 73 74 20 66 61 6e 20 28 4e 65 65  |.xhaust fan (Nee|
; 056917:  64 20 74 6f e7 83 ad e5 ba 8a ef bc 9a 00 ff ff  |d to............|
; 056927:  ff ff 01 01 e7 83 ad e5 ba 8a e8 b0 83 e5 b9 b3  |................|
; 056937:  00 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 056947:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 056957:  00 00 7f 00 00 00 00 00 57 01 af 00 26 00 1e 00  |........W...&...|
; 056967:  7c 01 cc 00 00 00 00 00 e7 b3 bb e7 bb 9f 00 00  ||...............|
; 056977:  3e 00 ff ff ff ff 01 01 00 00 03 00 f8 c9 00 00  |>...............|
; 056987:  00 00 00 00 62 19 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 056997:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0569a7:  00 00 00 00 00 00 7f 00 00 00 00 00 80 01 af 00  |................|
; 0569b7:  26 00 1e 00 a5 01 cc 00 00 00 00 00 00 00 e7 39  |&..............9|
; 0569c7:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 0569d7:  e7 bd 91 e7 bb 9c 00 00 62 1a 00 00 00 00 00 00  |........b.......|
; 0569e7:  32 30 30 2f 32 30 30 00 00 00 00 00 00 00 00 00  |200/200.........|
; 0569f7:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 056a07:  24 00 cf 00 2d 00 1e 00 50 00 ec 00 00 00 00 00  |$...-...P.......|
; 056a17:  00 00 e7 39 00 00 3f 00 40 00 ff ff ff ff 01 01  |...9..?.@.......|
; 056a27:  00 00 03 00 00 ca 00 00 00 00 00 00 62 1b 00 00  |............b...|
; 056a37:  00 00 00 00 00 00 00 00 e8 bf 94 e5 9b 9e 00 00  |................|
; 056a47:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 7f 00  |................|
; 056a57:  45 64 64 79 20 43 75 72 72 65 6e 74 20 43 61 6c  |Eddy Current Cal|
; 056a67:  69 62 72 61 74 69 6f 6e 00 00 3d 00 3e 00 ff ff  |ibration..=.>...|
; 056a77:  ff ff 01 01 00 00 03 00 04 ca 00 00 00 00 00 00  |................|
; 056a87:  62 1c 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 056a97:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 056aa7:  25 00 7f 00 00 00 00 00 8a 00 cf 00 32 30 30 2f  |%...........200/|
; 056ab7:  32 30 30 00 00 00 00 00 62 65 64 20 6d 65 73 68  |200.....bed mesh|
; 056ac7:  20 63 61 6c 69 62 72 61 74 69 6f 6e 00 ca 00 00  | calibration....|
; 056ad7:  00 00 00 00 62 1d 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 056ae7:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 056af7:  00 00 00 00 00 00 7f 00 00 00 00 00 b3 00 cf 00  |................|
; 056b07:  26 00 1e 00 d8 00 ec 00 00 00 00 00 00 00 e7 39  |&..............9|
; 056b17:  00 00 3d 00 00 00 00 00 ff ff 01 01 00 00 03 00  |..=.............|
; 056b27:  76 69 62 72 61 74 69 6f 6e 00 00 00 00 00 00 00  |vibration.......|
; 056b37:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 056b47:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 056b57:  dc 00 cf 00 26 00 1e 00 01 01 ec 00 00 00 00 00  |....&...........|
; 056b67:  00 00 e7 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 056b77:  00 00 03 00 10 ca 00 00 00 00 00 00 62 1f 00 00  |............b...|
; 056b87:  00 00 00 00 e7 b3 bb e7 70 69 64 20 63 61 6c 69  |........pid cali|
; 056b97:  62 72 61 74 65 00 00 00 00 00 00 00 00 00 7f 00  |brate...........|
; 056ba7:  00 00 00 00 05 01 cf 00 26 00 1e 00 2a 01 ec 00  |........&...*...|
; 056bb7:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 056bc7:  ff ff 01 01 00 00 03 00 14 ca 00 00 00 00 00 00  |................|
; 056bd7:  62 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b ..............|
; 056be7:  00 00 00 00 00 00 00 00 00 00 00 00 e7 bd 91 e7  |................|
; 056bf7:  00 9c 00 00 00 00 00 00 2e 01 cf 00 00 00 1e 00  |................|
; 056c07:  53 01 ec 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |S..........9..=.|
; 056c17:  3e 00 ff ff 00 ff 01 01 00 00 03 00 18 ca 00 00  |>...............|
; 056c27:  e5 a4 a7 e7 ba a6 33 30 e5 88 86 e9 92 9f        |......30......|
