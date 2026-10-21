; page 68: 20 objects

; object address table, 20 objects, block loaded at 0xb950
.dd 0xb9a0, 0xb9e0, 0xba34, 0xba88, 0xbadc, 0xbb30, 0xbb84, 0xbbd8
.dd 0xbc2c, 0xbc80, 0xbcd4, 0xbd28, 0xbd7c, 0xbdd0, 0xbde0, 0xbe34
.dd 0xbe88, 0xbedc, 0xbf30, 0xbf84

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x8b911131
; flags=0x37, aph=127
; sta=2, pic=89
; 04542f:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x45ee7
    if global_14 != 0 then jump lbl_45f7f
    local_6434 = "涡流校准"
    local_645b = "网床校准"
    local_6482 = "振动校准"
    local_64a9 = "PID校准"
    local_657f = "大约30分钟"
    jmp lbl_4654a

lbl_45f7f:
    if global_14 != 1 then jump lbl_4603c
    local_6434 = "Eddy Current Calibration"
    local_645b = "Mesh Bed Calibration"
    local_6482 = "Vibration Calibration"
    local_64a9 = "PID Calibration"
    local_657f = "About 30 minutes"
    jmp lbl_4654a

lbl_4603c:
    if global_14 != 2 then jump lbl_46134
    local_6434 = "渦電流キャリブレーション"
    local_645b = "メッシュベッドキャリブレーション"
    local_6482 = "振動キャリブレーション"
    local_64a9 = "PIDキャリブレーション"
    local_657f = "約30分"
    jmp lbl_4654a

lbl_46134:
    if global_14 != 3 then jump lbl_461f3
    local_6434 = "Wirbelstromkalibrierung"
    local_645b = "Gitterbettkalibrierung"
    local_6482 = "Vibrationskalibrierung"
    local_64a9 = "PID-Kalibrierung"
    local_657f = "Etwa 30 Minuten"
    jmp lbl_4654a

lbl_461f3:
    if global_14 != 4 then jump lbl_462d6
    local_6434 = "Calibración de corriente de Foucault"
    local_645b = "Calibración de cama de malla"
    local_6482 = "Calibración de vibración"
    local_64a9 = "Calibración PID"
    local_657f = "Aproximadamente 30 minutos"
    jmp lbl_4654a

lbl_462d6:
    if global_14 != 5 then jump lbl_463ac
    local_6434 = "Étalonnage par courants de Foucault"
    local_645b = "Étalonnage du lit à grille"
    local_6482 = "Étalonnage de vibration"
    local_64a9 = "Étalonnage PID"
    local_657f = "Environ 30 minutes"
    jmp lbl_4654a

lbl_463ac:
    if global_14 != 6 then jump lbl_46488
    local_6434 = "Calibração por Corrente de Foucault"
    local_645b = "Calibração da Cama de Malha"
    local_6482 = "Calibração de Vibração"
    local_64a9 = "Calibração PID"
    local_657f = "Cerca de 30 minutos"
    jmp lbl_4654a

lbl_46488:
    if global_14 != 7 then jump lbl_4654a
    local_6434 = "Calibrazione a correnti parassite"
    local_645b = "Calibrazione letto a rete"
    local_6482 = "Calibrazione vibrazione"
    local_64a9 = "Calibrazione PID"
    local_657f = "Circa 30 minuti"

lbl_4654a:
    if global_14 != 0 then jump lbl_465b3
    local_63e6 = "返回"
    local_640d = "确定"
    local_6396 = "系统"
    local_63bf = "网络"
    jmp lbl_468a6

lbl_465b3:
    if global_14 != 1 then jump lbl_46617
    local_63e6 = "Back"
    local_640d = "OK"
    local_6396 = "System"
    local_63bf = "Network"
    jmp lbl_468a6

lbl_46617:
    if global_14 != 2 then jump lbl_46692
    local_63e6 = "戻る"
    local_640d = "確定"
    local_6396 = "システム"
    local_63bf = "ネットワーク"
    jmp lbl_468a6

lbl_46692:
    if global_14 != 3 then jump lbl_46703
    local_63e6 = "Zurück"
    local_640d = "Bestätigen"
    local_6396 = "System"
    local_63bf = "Netzwerk"
    jmp lbl_468a6

lbl_46703:
    if global_14 != 4 then jump lbl_4676b
    local_63e6 = "Volver"
    local_640d = "Aceptar"
    local_6396 = "Sistema"
    local_63bf = "Red"
    jmp lbl_468a6

lbl_4676b:
    if global_14 != 5 then jump lbl_467da
    local_63e6 = "Retour"
    local_640d = "Confirmer"
    local_6396 = "Système"
    local_63bf = "Réseau"
    jmp lbl_468a6

lbl_467da:
    if global_14 != 6 then jump lbl_46845
    local_63e6 = "Voltar"
    local_640d = "Confirmar"
    local_6396 = "Sistema"
    local_63bf = "Rede"
    jmp lbl_468a6

lbl_46845:
    if global_14 != 7 then jump lbl_468a6
    local_63e6 = "Indietro"
    local_640d = "Conferma"
    local_6396 = "Sistema"
    local_63bf = "Rete"

lbl_468a6:
    doevents
    down
    up
    unload
    down
    up

; object id 1 (button 'b100'): x=0, y=7, w=61, h=54, name hash=0xc261f86d
; flags=0x37, aph=127, events: touch_release=0x44d33
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 100
; 04547f:  ff ff                                            |..|

; touch_release
.org 0x44d33
    prints 0x65, 1
    prints dp, 1
    prints 100, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 2 (button 'b101'): x=0, y=80, w=61, h=54, name hash=0x232a030
; flags=0x37, aph=127, events: touch_release=0x44d9f
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 101
; 0454d3:  ff ff                                            |..|

; touch_release
.org 0x44d9f
    prints 0x65, 1
    prints dp, 1
    prints 101, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (button 'b102'): x=0, y=145, w=61, h=54, name hash=0x46065560
; flags=0x37, aph=127, events: touch_release=0x44e0b
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 102
; 045527:  ff ff                                            |..|

; touch_release
.org 0x44e0b
    prints 0x65, 1
    prints dp, 1
    prints 102, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 4 (button 'b103'): x=0, y=211, w=61, h=54, name hash=0x86550d3d
; flags=0x37, aph=127, events: touch_release=0x44e77
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 103
; 04557b:  ff ff                                            |..|

; touch_release
.org 0x44e77
    prints 0x65, 1
    prints dp, 1
    prints 103, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 5 (button 'b9'): x=67, y=7, w=208, h=34, name hash=0x64e9257
; flags=0x37, aph=127, events: touch_release=0x44ee3
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="系统"
; text:
;   0: "系统"
;   1: "System"
;   2: "システム"
;   3: "System"
;   4: "Sistema"
;   5: "Système"
;   6: "Sistema"
;   7: "Sistema"
; touch_release reports to the host: page <page>, widget 130
; 0455cf:  ff ff                                            |..|

; touch_release
.org 0x44ee3
    prints 0x65, 1
    prints dp, 1
    prints 130, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 6 (button 'b10'): x=270, y=7, w=198, h=34, name hash=0x922adbb1
; flags=0x37, aph=127, events: touch_release=0x44f4f
; borderc=0x0000, picc=50, picc2=51, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="网络"
; text:
;   0: "网络"
;   1: "Network"
;   2: "ネットワーク"
;   3: "Netzwerk"
;   4: "Red"
;   5: "Réseau"
;   6: "Rede"
;   7: "Rete"
; touch_release reports to the host: page <page>, widget 131
; 045623:  ff ff                                            |..|

; touch_release
.org 0x44f4f
    prints 0x65, 1
    prints dp, 1
    prints 131, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 7 (button 'b0'): x=303, y=224, w=71, h=31, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x44fbb
; borderc=0x0000, picc=0, picc2=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt="返回"
; text:
;   0: "返回"
;   1: "Back"
;   2: "戻る"
;   3: "Zurück"
;   4: "Volver"
;   5: "Retour"
;   6: "Voltar"
;   7: "Indietro"
; touch_release reports to the host: page <page>, widget 0
; 045667:  00 00 00 00 03 00                                |......|
; 045677:  ff ff                                            |..|

; touch_release
.org 0x44fbb
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 8 (button 'b1'): x=386, y=224, w=73, h=32, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x45025
; borderc=0x0000, picc=0, picc2=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt="确定"
; text:
;   0: "确定"
;   1: "OK"
;   2: "確定"
;   3: "Bestätigen"
;   4: "Aceptar"
;   5: "Confirmer"
;   6: "Confirmar"
;   7: "Conferma"
; touch_release reports to the host: page <page>, widget 1
; 0456bb:  00 00 00 00 03 00                                |......|
; 0456cb:  ff ff                                            |..|

; touch_release
.org 0x45025
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 9 (text 't0'): x=113, y=57, w=247, h=26, name hash=0xc02992d9
; flags=0x37, aph=127, events: touch_press=0x45085, touch_release=0x4509a
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="Eddy Current Calibration"
; text:
;   0: "涡流校准"
;   1: "Eddy Current Calibration"
;   2: "渦電流キャリブレーション"
;   3: "Wirbelstromkalibrierung"
;   4: "Calibración de corriente de Foucault"
;   5: "Étalonnage par courants de Foucault"
;   6: "Calibração por Corrente de Foucault"
;   7: "Calibrazione a correnti parassite"

; touch_press
.org 0x45085
    click b2, 1
    up

; touch_release
.org 0x4509a
    click b2, 0
    down

; object id 10 (text 't1'): x=113, y=98, w=200, h=26, name hash=0xb64689a1
; flags=0x37, aph=127, events: touch_press=0x450b5, touch_release=0x450ca
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="bed mesh calibration"
; text:
;   0: "网床校准"
;   1: "Mesh Bed Calibration"
;   2: "メッシュベッドキャリブレーション"
;   3: "Gitterbettkalibrierung"
;   4: "Calibración de cama de malla"
;   5: "Étalonnage du lit à grille"
;   6: "Calibração da Cama de Malha"
;   7: "Calibrazione letto a rete"

; touch_press
.org 0x450b5
    click b3, 1
    up

; touch_release
.org 0x450ca
    click b3, 0
    down

; object id 11 (text 't2'): x=113, y=139, w=247, h=26, name hash=0x2cf7a429
; flags=0x37, aph=127, events: touch_press=0x450e5, touch_release=0x450fa
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="vibration"
; text:
;   0: "振动校准"
;   1: "Vibration Calibration"
;   2: "振動キャリブレーション"
;   3: "Vibrationskalibrierung"
;   4: "Calibración de vibración"
;   5: "Étalonnage de vibration"
;   6: "Calibração de Vibração"
;   7: "Calibrazione vibrazione"

; touch_press
.org 0x450e5
    click b4, 1
    up

; touch_release
.org 0x450fa
    click b4, 0
    down

; object id 12 (text 't3'): x=113, y=174, w=247, h=26, name hash=0x5a98bf51
; flags=0x37, aph=127, events: touch_press=0x45115, touch_release=0x4512a
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="pid calibrate"
; text:
;   0: "PID校准"
;   1: "PID Calibration"
;   2: "PIDキャリブレーション"
;   3: "PID-Kalibrierung"
;   4: "Calibración PID"
;   5: "Étalonnage PID"
;   6: "Calibração PID"
;   7: "Calibrazione PID"

; touch_press
.org 0x45115
    click b5, 1
    up

; touch_release
.org 0x4512a
    click b5, 0
    down
    up

; object id 13 (variable 'va0'): x=0, y=0, w=1, h=1, name hash=0xcbcbac4e
; sta=0, val=0
; 04582b:  34 0d 00 07                                      |4...|

; object id 14 (button 'b2'): x=77, y=53, w=34, h=34, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0x45153
; borderc=0x0000, picc=96, picc2=96, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 2
; 04587f:  ff ff                                            |..|

; touch_release
.org 0x45153
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 15 (button 'b3'): x=77, y=93, w=34, h=34, name hash=0x54ab59be
; flags=0x37, aph=127, events: touch_release=0x451bd
; borderc=0x0000, picc=96, picc2=96, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 3
; 0458d3:  ff ff                                            |..|

; touch_release
.org 0x451bd
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 16 (button 'b4'): x=77, y=134, w=34, h=34, name hash=0x13670461
; flags=0x37, aph=127, events: touch_release=0x45227
; borderc=0x0000, picc=96, picc2=96, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 4
; 045927:  ff ff                                            |..|

; touch_release
.org 0x45227
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 17 (button 'b5'): x=77, y=174, w=34, h=34, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0x45291
; borderc=0x0000, picc=96, picc2=96, pco=0xffff, xcen=1, ycen=1, txt_maxl=10, isbr=0, txt=""
; touch_release reports to the host: page <page>, widget 5
; 04597b:  ff ff                                            |..|

; touch_release
.org 0x45291
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down

; object id 18 (text 't7'): x=112, y=195, w=159, h=21, name hash=0x87e5cf06
; flags=0x37, aph=127, events: touch_press=0x452f1, touch_release=0x45306
; sta=3, font=1, pco=0x07f0, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="大约30分钟"
; text:
;   0: "大约30分钟"
;   1: "About 30 minutes"
;   2: "約30分"
;   3: "Etwa 30 Minuten"
;   4: "Aproximadamente 30 minutos"
;   5: "Environ 30 minutes"
;   6: "Cerca de 30 minutos"
;   7: "Circa 30 minuti"

; touch_press
.org 0x452f1
    click b5, 1
    up

; touch_release
.org 0x45306
    click b5, 0
    down
    up

; object id 19 (crop 'q0'): x=357, y=77, w=109, h=113, name hash=0x32aa1f99
; flags=0x37, aph=127
; picc=96

; data after the object structs, 1206 bytes (18 trailing zero bytes dropped)
; 045a1b:  00 00 00 00 00 72 6f 6e 74 20 6d 6f 64 65 6c 20  |.....ront model |
; 045a2b:  63 6f 6f 6c 20 66 61 6e 00 00 00 00 62 14 00 00  |cool fan....b...|
; 045a3b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045a4b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 045a5b:  00 00 00 00 b3 00 af 00 26 00 1e 00 d8 00 cc 00  |........&.......|
; 045a6b:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 045a7b:  ff ff 01 01 00 00 03 00 e8 c9 00 00 00 61 63 6b  |.............ack|
; 045a8b:  20 6d 6f 64 65 6c 20 63 6f 6f 6c 20 66 61 6e 00  | model cool fan.|
; 045a9b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045aab:  e6 a0 a1 e5 87 86 00 00 dc 00 af 00 26 00 1e 00  |............&...|
; 045abb:  01 01 cc 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 045acb:  3e 00 ff ff ff ff 01 01 00 00 03 00 ec c9 00 00  |>...............|
; 045adb:  00 00 00 00 62 16 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 045aeb:  00 00 00 00 00 75 78 69 6c 69 61 72 79 20 66 61  |.....uxiliary fa|
; 045afb:  6e 20 28 4e 65 65 64 20 74 6f 20 69 6e 73 74 61  |n (Need to insta|
; 045b0b:  6c 29 00 00 2a 01 cc 00 e6 a0 a1 e5 87 86 00 39  |l)..*..........9|
; 045b1b:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 045b2b:  f0 c9 00 00 00 00 00 00 62 17 00 00 00 00 00 00  |........b.......|
; 045b3b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045b4b:  00 00 00 00 00 00 00 00 00 00 7f 00 00 78 68 61  |.............xha|
; 045b5b:  75 73 74 20 66 61 6e 20 28 4e 65 65 64 20 74 6f  |ust fan (Need to|
; 045b6b:  20 69 6e 73 74 61 6c 29 00 00 ff ff ff ff 01 01  | instal)........|
; 045b7b:  e7 83 ad e5 ba 8a e8 b0 83 e5 b9 b3 00 18 00 00  |................|
; 045b8b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045b9b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 045bab:  00 00 00 00 57 01 af 00 26 00 1e 00 7c 01 cc 00  |....W...&...|...|
; 045bbb:  00 00 00 00 e7 b3 bb e7 bb 9f 00 00 3e 00 ff ff  |............>...|
; 045bcb:  ff ff 01 01 00 00 03 00 f8 c9 00 00 00 00 00 00  |................|
; 045bdb:  62 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 045beb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045bfb:  00 00 7f 00 00 00 00 00 80 01 af 00 26 00 1e 00  |............&...|
; 045c0b:  a5 01 cc 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 045c1b:  3e 00 ff ff ff ff 01 01 00 00 03 00 e7 bd 91 e7  |>...............|
; 045c2b:  bb 9c 00 00 62 1a 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 045c3b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045c4b:  00 00 00 00 00 00 7f 00 00 00 00 00 24 00 cf 00  |............$...|
; 045c5b:  2d 00 1e 00 50 00 ec 00 00 00 00 00 00 00 e7 39  |-...P..........9|
; 045c6b:  00 00 3f 00 40 00 ff ff ff ff 01 01 00 00 03 00  |..?.@...........|
; 045c7b:  00 ca 00 00 00 00 00 00 62 1b 00 00 00 00 00 00  |........b.......|
; 045c8b:  00 00 00 00 e8 bf 94 e5 9b 9e 00 00 00 00 00 00  |................|
; 045c9b:  e7 a1 ae e5 ae 9a 00 00 00 00 7f 00 45 64 64 79  |............Eddy|
; 045cab:  20 43 75 72 72 65 6e 74 20 43 61 6c 69 62 72 61  | Current Calibra|
; 045cbb:  74 69 6f 6e 00 00 3d 00 3e 00 ff ff ff ff 01 01  |tion..=.>.......|
; 045ccb:  00 00 03 00 04 ca 00 00 00 00 00 00 62 1c 00 00  |............b...|
; 045cdb:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045ceb:  00 00 00 00 00 00 00 00 00 00 00 00 25 00 7f 00  |............%...|
; 045cfb:  00 00 00 00 8a 00 cf 00 26 00 1e 00 af 00 ec 00  |........&.......|
; 045d0b:  00 00 00 00 62 65 64 20 6d 65 73 68 20 63 61 6c  |....bed mesh cal|
; 045d1b:  69 62 72 61 74 69 6f 6e 00 ca 00 00 00 00 00 00  |ibration........|
; 045d2b:  62 1d 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 045d3b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045d4b:  00 00 7f 00 00 00 00 00 b3 00 cf 00 26 00 1e 00  |............&...|
; 045d5b:  d8 00 ec 00 00 00 00 00 00 00 e7 39 00 00 3d 00  |...........9..=.|
; 045d6b:  00 00 00 00 ff ff 01 01 00 00 03 00 76 69 62 72  |............vibr|
; 045d7b:  61 74 69 6f 6e 00 00 00 00 00 00 00 00 00 00 00  |ation...........|
; 045d8b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045d9b:  00 00 00 00 00 00 7f 00 00 00 00 00 dc 00 cf 00  |................|
; 045dab:  26 00 1e 00 01 01 ec 00 00 00 00 00 00 00 e7 39  |&..............9|
; 045dbb:  00 00 3d 00 3e 00 ff ff ff ff 01 01 00 00 03 00  |..=.>...........|
; 045dcb:  10 ca 00 00 00 00 00 00 62 1f 00 00 00 00 00 00  |........b.......|
; 045ddb:  e7 b3 bb e7 70 69 64 20 63 61 6c 69 62 72 61 74  |....pid calibrat|
; 045deb:  65 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |e...............|
; 045dfb:  05 01 cf 00 26 00 1e 00 2a 01 ec 00 00 00 00 00  |....&...*.......|
; 045e0b:  00 00 e7 39 00 00 3d 00 3e 00 ff ff ff ff 01 01  |...9..=.>.......|
; 045e1b:  00 00 03 00 14 ca 00 00 00 00 00 00 62 20 00 00  |............b ..|
; 045e2b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045e3b:  00 00 00 00 00 00 00 00 e7 bd 91 e7 00 9c 00 00  |................|
; 045e4b:  00 00 00 00 2e 01 cf 00 00 00 1e 00 53 01 ec 00  |............S...|
; 045e5b:  00 00 00 00 00 00 e7 39 00 00 3d 00 3e 00 ff ff  |.......9..=.>...|
; 045e6b:  00 ff 01 01 00 00 03 00 18 ca 00 00 e5 a4 a7 e7  |................|
; 045e7b:  ba a6 33 30 e5 88 86 e9 92 9f 00 00 00 00 00 00  |..30............|
; 045e8b:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 045e9b:  00 00 7f 00 00 00 00 00 57 01 cf 00 26 00 1e 00  |........W...&...|
; 045eab:  e8 b0 83 e5 b9 b3 e6 a0 a1 e5 87 86 00 00 3d 00  |..............=.|
; 045ebb:  3e 00 ff ff ff ff 01 01 00 00 03 00 1c ca 00 00  |>...............|
; 045ecb:  00 00 00 00 62 22                                |....b"|
