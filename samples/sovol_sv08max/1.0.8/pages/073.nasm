; page 73: 8 objects

; object address table, 8 objects, block loaded at 0xb950
.dd 0xb970, 0xb9b0, 0xba04, 0xba58, 0xbaac, 0xbb00, 0xbb54, 0xbba8

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xa80280cf
; flags=0x37, aph=127
; sta=2, pic=112
; 0485a1:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x48c9d
    if global_14 != 0 then jump lbl_48d6b
    local_67eb = "校准"
    local_6814 = "上一步"
    local_683d = "开始"
    local_68b4 = "跳过"
    local_68db = "XYZ轴检测,涡流检测,加热检测"
    local_688b = "网床校准"
    local_6864 = "振动校准"
    jmp lbl_494e4

lbl_48d6b:
    if global_14 != 1 then jump lbl_48e62
    local_67eb = "Calibration"
    local_6814 = "Previous"
    local_683d = "Start"
    local_68b4 = "Skip"
    local_68db = "XYZ Axis Detection, Eddy Current Detection, Heating Detection"
    local_688b = "Bed Mesh Calibration"
    local_6864 = "Vibration Calibration"
    jmp lbl_494e4

lbl_48e62:
    if global_14 != 2 then jump lbl_48f84
    local_67eb = "キャリブレーション"
    local_6814 = "前のステップ"
    local_683d = "開始"
    local_68b4 = "スキップ"
    local_68db = "XYZ軸検出,渦電流検出,加熱検出"
    local_688b = "ベッドキャリブレーション"
    local_6864 = "振動キャリブレーション"
    jmp lbl_494e4

lbl_48f84:
    if global_14 != 3 then jump lbl_49085
    local_67eb = "Kalibrierung"
    local_6814 = "Zurück"
    local_683d = "Starten"
    local_68b4 = "Überspringen"
    local_68db = "XYZ-Achsen-Erkennung, Wirbelstrom-Erkennung, Heizungs-Erkennung"
    local_688b = "Bettkalibrierung"
    local_6864 = "Vibrationskalibrierung"
    jmp lbl_494e4

lbl_49085:
    if global_14 != 4 then jump lbl_491a4
    local_67eb = "Calibración"
    local_6814 = "Anterior"
    local_683d = "Iniciar"
    local_68b4 = "Omitir"
    local_68db = "Detección del Eje XYZ, Detección de Corriente de Foucault, Detección de Calentamiento"
    local_688b = "Calibración de la cama"
    local_6864 = "Calibración de Vibración"
    jmp lbl_494e4

lbl_491a4:
    if global_14 != 5 then jump lbl_492be
    local_67eb = "Calibration"
    local_6814 = "Précédent"
    local_683d = "Démarrer"
    local_68b4 = "Passer"
    local_68db = "Détection de l'Axe XYZ, Détection de Courants de Foucault, Détection de Chauffage"
    local_688b = "Calibration du lit"
    local_6864 = "Calibration des Vibrations"
    T 0x226

lbl_492be:
    if global_14 != 6 then jump lbl_493d8
    local_67eb = "Calibração"
    local_6814 = "Anterior"
    local_683d = "Iniciar"
    local_68b4 = "Ignorar"
    local_68db = "Detecção do Eixo XYZ, Detecção de Corrente de Foucault, Detecção de Aquecimento"
    local_688b = "Calibração da cama"
    local_6864 = "Calibração de Vibração"
    jmp lbl_494e4

lbl_493d8:
    if global_14 != 7 then jump lbl_494e4
    local_67eb = "Calibrazione"
    local_6814 = "Precedente"
    local_683d = "Avvia"
    local_68b4 = "Salta"
    local_68db = "Rilevamento Asse XYZ, Rilevamento Correnti Parassite, Rilevamento Riscaldamento"
    local_688b = "Calibrazione del letto"
    local_6864 = "Calibrazione delle Vibrazioni"

lbl_494e4:
    doevents
    down
    up
    unload
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
;   5: "Calibration"
;   6: "Calibração"
;   7: "Calibrazione"

; object id 2 (button 'b1'): x=298, y=223, w=74, h=34, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x483a3
; borderc=0x0000, picc=112, picc2=112, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="上一步"
; text:
;   0: "上一步"
;   1: "Previous"
;   2: "前のステップ"
;   3: "Zurück"
;   4: "Anterior"
;   5: "Précédent"
;   6: "Anterior"
;   7: "Precedente"
; touch_release reports to the host: page <page>, widget 1
; 048645:  ff ff                                            |..|

; touch_release
.org 0x483a3
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b2'): x=385, y=223, w=75, h=35, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x4840d
; borderc=0x0000, picc=112, picc2=112, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="开始"
; text:
;   0: "开始"
;   1: "Start"
;   2: "開始"
;   3: "Starten"
;   4: "Iniciar"
;   5: "Démarrer"
;   6: "Iniciar"
;   7: "Avvia"
; touch_release reports to the host: page <page>, widget 2
; 048699:  ff ff                                            |..|

; touch_release
.org 0x4840d
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up

; object id 4 (text 't2'): x=70, y=125, w=239, h=40, name hash=0x2cf7a429
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=1, background=0, txt="vibration"
; text:
;   0: "振动校准"
;   1: "Vibration Calibration"
;   2: "振動キャリブレーション"
;   3: "Vibrationskalibrierung"
;   4: "Calibración de Vibración"
;   5: "Calibration des Vibrations"
;   6: "Calibração de Vibração"
;   7: "Calibrazione delle Vibrazioni"

; object id 5 (text 't1'): x=70, y=80, w=242, h=40, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=1, background=0, txt="Bed Mesh Calibration"
; text:
;   0: "网床校准"
;   1: "Bed Mesh Calibration"
;   2: "ベッドキャリブレーション"
;   3: "Bettkalibrierung"
;   4: "Calibración de la cama"
;   5: "Calibration du lit"
;   6: "Calibração da cama"
;   7: "Calibrazione del letto"

; object id 6 (button 'b5'): x=381, y=9, w=76, h=32, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x484ab
; borderc=0x0000, picc=112, picc2=112, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="跳过"
; text:
;   0: "跳过"
;   1: "Skip"
;   2: "スキップ"
;   3: "Überspringen"
;   4: "Omitir"
;   5: "Passer"
;   6: "Ignorar"
;   7: "Salta"
; touch_release reports to the host: page <page>, widget 0
; 048795:  ff ff                                            |..|

; touch_release
.org 0x484ab
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (text 't3'): x=70, y=38, w=221, h=40, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=200, isbr=1, background=0, txt="XYZ轴检测,涡流检测,加热检测"
; text:
;   0: "XYZ轴检测,涡流检测,加热检测"
;   1: "XYZ Axis Detection, Eddy Current Detection, Heating Detection"
;   2: "XYZ軸検出,渦電流検出,加熱検出"
;   3: "XYZ-Achsen-Erkennung, Wirbelstrom-Erkennung, Heizungs-Erkennung"
;   4: "Detección del Eje XYZ, Detección de Corriente de Foucault, Detección de Calentamiento"
;   5: "Détection de l'Axe XYZ, Détection de Courants de Foucault, Détection de Chauffage"
;   6: "Detecção do Eixo XYZ, Detecção de Corrente de Foucault, Detecção de Aquecimento"
;   7: "Rilevamento Asse XYZ, Rilevamento Correnti Parassite, Rilevamento Riscaldamento"

; data after the object structs, 1180 bytes (4 trailing zero bytes dropped)
; 0487f9:  00 00 00 00 e6 a0 a1 e5 87 86 00 00 75 01 fe 00  |............u...|
; 048809:  00 00 00 00 03 00 00 00 00 00 00 00 00 00 ff ff  |................|
; 048819:  ff ff 01 01 00 00 0a 00 34 c2 00 00 00 00 00 00  |........4.......|
; 048829:  62 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 048839:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 048849:  00 00 7f 00 00 00 00 00 82 01 e0 00 49 00 20 00  |............I. .|
; 048859:  ca 01 ff 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 048869:  00 00 ff ff ff ff 01 01 00 00 0a 00 40 c2 00 00  |............@...|
; 048879:  00 00 00 00 74 09 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 048889:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 048899:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 00 00  |................|
; 0488a9:  f7 00 1a 00 67 01 52 00 00 00 00 00 03 00 00 00  |....g.R.........|
; 0488b9:  00 00 00 00 ff ff 00 01 00 00 64 00 4c c2 00 00  |..........d.L...|
; 0488c9:  00 00 00 00 00 00 00 00 74 0a 00 00 00 00 00 00  |........t.......|
; 0488d9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0488e9:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0488f9:  71 00 62 00 c8 00 1a 00 38 01 7b 00 00 00 00 00  |q.b.....8.{.....|
; 048909:  03 00 00 00 00 00 00 00 ff ff 00 01 00 00 64 00  |..............d.|
; 048919:  b4 c2 00 00 00 00 00 00 00 00 00 00 74 0b 00 00  |............t...|
; 048929:  00 00 00 00 e4 b8 8a e4 b8 80 e6 ad a5 00 00 00  |................|
; 048939:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 048949:  00 00 00 00 71 00 8b 00 f7 00 1a 00 67 01 a4 00  |....q.......g...|
; 048959:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 048969:  00 00 64 00 1c c3 00 00 00 00 00 00 00 00 00 00  |..d.............|
; 048979:  74 0c 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 048989:  00 00 00 00 00 00 00 00 00 00 00 00 e5 bc 80 e5  |................|
; 048999:  a7 8b 00 00 00 00 00 00 71 00 ae 00 f7 00 1a 00  |........q.......|
; 0489a9:  67 01 c7 00 00 00 00 00 03 00 00 00 00 00 00 00  |g...............|
; 0489b9:  ff ff 00 01 00 00 64 00 84 c3 00 00 00 00 00 00  |......d.........|
; 0489c9:  00 00 00 00 34 0d 00 00 00 00 00 00 00 00 00 00  |....4...........|
; 0489d9:  00 00 00 00 62 0e 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 0489e9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0489f9:  00 00 00 00 76 69 62 72 61 74 69 6f 6e 00 35 00  |....vibration.5.|
; 048a09:  22 00 22 00 6e 00 56 00 00 00 00 00 00 00 00 00  |".".n.V.........|
; 048a19:  00 00 60 00 60 00 ff ff ff ff 01 01 00 00 0a 00  |..`.`...........|
; 048a29:  ec c3 00 00 00 00 00 00 62 0f 00 00 00 00 00 00  |........b.......|
; 048a39:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 048a49:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 048a59:  4d 00 5d 00 22 00 22 00 6e 00 7e 00 00 00 00 00  |M.].".".n.~.....|
; 048a69:  00 00 00 00 00 00 60 00 60 00 ff ff ff ff 01 01  |......`.`.......|
; 048a79:  00 00 0a 00 f8 c3 00 00 00 00 00 00 62 10 00 00  |............b...|
; 048a89:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 048a99:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 048aa9:  00 00 00 00 4d 00 86 00 22 00 22 00 6e 00 a7 00  |....M...".".n...|
; 048ab9:  00 00 00 00 00 00 00 00 00 00 60 00 60 00 ff ff  |..........`.`...|
; 048ac9:  42 65 64 20 4d 65 73 68 20 43 61 6c 69 62 72 61  |Bed Mesh Calibra|
; 048ad9:  74 69 6f 6e 00 00 00 00 00 00 00 00 00 00 00 00  |tion............|
; 048ae9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 048af9:  00 00 7f 00 00 00 00 00 4d 00 ae 00 22 00 22 00  |........M...".".|
; 048b09:  6e 00 cf 00 00 00 00 00 00 00 00 00 00 00 60 00  |n.............`.|
; 048b19:  60 00 ff ff ff ff 01 01 00 00 0a 00 10 c4 00 00  |`...............|
; 048b29:  00 00 00 00 74 12 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 048b39:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 048b49:  00 00 00 00 00 00 7f 00 00 00 00 00 70 00 c3 00  |............p...|
; 048b59:  9f 00 15 00 0e 01 d7 00 00 00 00 00 03 00 00 00  |................|
; 048b69:  00 01 00 00 f0 07 00 01 00 00 64 00 1c c4 00 00  |..........d.....|
; 048b79:  00 00 00 00 00 00 00 00 71 13 00 00 00 00 00 00  |........q.......|
; 048b89:  00 00 00 00 00 00 00 00 00 00 00 00 e8 b7 b3 e8  |................|
; 048b99:  bf 87 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 048ba9:  65 01 4d 00 6d 00 71 00 d1 01 bd 00 00 00 00 00  |e.M.m.q.........|
; 048bb9:  60 00 00 00 00 00 00 00 00 72 6f 6e 74 20 6d 6f  |`........ront mo|
; 048bc9:  58 59 5a e8 bd b4 e6 a3 80 e6 b5 8b 2c e6 b6 a1  |XYZ.........,...|
; 048bd9:  e6 b5 81 e6 a3 80 e6 b5 8b 2c e5 8a a0 e7 83 ad  |.........,......|
; 048be9:  e6 a3 80 e6 b5 8b 00 00 00 00 00 00 00 00 00 00  |................|
; 048bf9:  00 00 7f 00 00 00 00 00 b3 00 af 00 26 00 1e 00  |............&...|
; 048c09:  d8 00 cc 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 048c19:  3e 00 ff ff ff ff 01 01 00 00 03 00 e8 c9 00 00  |>...............|
; 048c29:  00 61 63 6b 20 6d 6f 64 65 6c 20 63 6f 6f 6c 20  |.ack model cool |
; 048c39:  66 61 6e 00 00 00 00 00 00 00 00 00 00 00 00 00  |fan.............|
; 048c49:  00 00 00 00 e6 a0 a1 e5 87 86 00 00 dc 00 af 00  |................|
; 048c59:  26 00 1e 00 01 01 cc 00 00 00 00 00 00 00 e7 39  |&..............9|
; 048c69:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 048c79:  ec c9 00 00 00 00 00 00 62 16 00 00 00 00 00 00  |........b.......|
; 048c89:  00 00 00 00 00 00 00 00 00 75 78 69              |.........uxi|
