; page 74: 2 objects

; object address table, 2 objects, block loaded at 0xb950
.dd 0xb958, 0xb998

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xd9ac19a0
; flags=0x37, aph=127
; sta=2, pic=1
; 04957d:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x49719
    if global_14 != 0 then jump lbl_4977e
    local_6923 = "XYZ轴检测,涡流检测,加热检测中，请稍后..."
    jmp lbl_49b7c

lbl_4977e:
    if global_14 != 1 then jump lbl_49804
    local_6923 = "XYZ Axis Detection, Eddy Current Detection, Heating Detection in Progress, Please Wait..."
    jmp lbl_49b7c

lbl_49804:
    if global_14 != 2 then jump lbl_4987e
    local_6923 = "XYZ軸検出,渦電流検出,加熱検出中、少々お待ちください..."
    jmp lbl_49b7c

lbl_4987e:
    if global_14 != 3 then jump lbl_49902
    local_6923 = "XYZ-Achsen-Erkennung, Wirbelstrom-Erkennung, Heizungs-Erkennung läuft, bitte warten..."
    jmp lbl_49b7c

lbl_49902:
    if global_14 != 4 then jump lbl_499a8
    local_6923 = "Detección del Eje XYZ, Detección de Corriente de Foucault, Detección de Calentamiento en Progreso, Por Favor Espere..."
    jmp lbl_49b7c

lbl_499a8:
    if global_14 != 5 then jump lbl_49a49
    local_6923 = "Détection de l'Axe XYZ, Détection de Courants de Foucault, Détection de Chauffage en Cours, Veuillez Patienter..."
    jmp lbl_49b7c

lbl_49a49:
    if global_14 != 6 then jump lbl_49aee
    local_6923 = "Detecção do Eixo XYZ, Detecção de Corrente de Foucault, Detecção de Aquecimento em Andamento, Por Favor Aguarde..."
    jmp lbl_49b7c

lbl_49aee:
    if global_14 != 7 then jump lbl_49b7c
    local_6923 = "Rilevamento Asse XYZ, Rilevamento Correnti Parassite, Rilevamento Riscaldamento in Corso, Attendere Prego..."

lbl_49b7c:
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

; object id 1 (text 't0'): x=117, y=100, w=242, h=63, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="XYZ轴检测,涡流检测,加热检测中，请稍后..."
; text:
;   0: "XYZ轴检测,涡流检测,加热检测中，请稍后..."
;   1: "XYZ Axis Detection, Eddy Current Detection, Heating Detection in Progress, Please Wait..."
;   2: "XYZ軸検出,渦電流検出,加熱検出中、少々お待ちください..."
;   3: "XYZ-Achsen-Erkennung, Wirbelstrom-Erkennung, Heizungs-Erkennung läuft, bitte warten..."
;   4: "Detección del Eje XYZ, Detección de Corriente de Foucault, Detección de Calentamiento en Progreso, Por Favor Espere..."
;   5: "Détection de l'Axe XYZ, Détection de Courants de Foucault, Détection de Chauffage en Cours, Veuillez Patienter..."
;   6: "Detecção do Eixo XYZ, Detecção de Corrente de Foucault, Detecção de Aquecimento em Andamento, Por Favor Aguarde..."
;   7: "Rilevamento Asse XYZ, Rilevamento Correnti Parassite, Rilevamento Riscaldamento in Corso, Attendere Prego..."

; data after the object structs, 278 bytes (34 trailing zero bytes dropped)
; 0495dd:  00 00 00 00 58 59 5a e8 bd b4 e6 a3 80 e6 b5 8b  |....XYZ.........|
; 0495ed:  2c e6 b6 a1 e6 b5 81 e6 a3 80 e6 b5 8b 2c e5 8a  |,............,..|
; 0495fd:  a0 e7 83 ad e6 a3 80 e6 b5 8b e4 b8 ad ef bc 8c  |................|
; 04960d:  e8 af b7 e7 a8 8d e5 90 8e 2e 2e 2e 00 00 00 00  |................|
; 04961d:  2a 01 df 00 4a 00 22 00 73 01 00 01 00 00 00 00  |*...J.".s.......|
; 04962d:  00 00 00 00 00 00 70 00 70 00 ff ff ff ff 01 01  |......p.p.......|
; 04963d:  00 00 64 00 30 bd 00 00 01 00 00 00 62 03 00 00  |..d.0.......b...|
; 04964d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04965d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 04966d:  00 00 00 00 81 01 df 00 4b 00 23 00 cb 01 01 01  |........K.#.....|
; 04967d:  00 00 00 00 00 00 00 00 00 00 70 00 70 00 ff ff  |..........p.p...|
; 04968d:  ff ff 01 01 00 00 64 00 98 bd 00 00 01 00 00 00  |......d.........|
; 04969d:  74 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 0496ad:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0496bd:  00 00 7f 00 00 00 00 00 46 00 7d 00 ef 00 28 00  |........F.}...(.|
; 0496cd:  34 01 a4 00 00 00 00 00 03 00 00 00 00 00 00 00  |4...............|
; 0496dd:  ff ff 00 01 00 00 c8 00 00 be 00 00 01 00 00 00  |................|
; 0496ed:  00 00 00 00 74 05                                |....t.|
