; page 70: 2 objects

; object address table, 2 objects, block loaded at 0xb950
.dd 0xb958, 0xb998

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xcbc8b8b8
; flags=0x37, aph=127
; sta=2, pic=1
; 046ec0:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x4705c
    if global_14 != 0 then jump lbl_470a7
    local_669e = "振动测试中，请稍后..."
    jmp lbl_47328

lbl_470a7:
    if global_14 != 1 then jump lbl_47101
    local_669e = "Vibration Testing in Progress, Please Wait..."
    jmp lbl_47328

lbl_47101:
    if global_14 != 2 then jump lbl_47161
    local_669e = "振動テスト中、少々お待ちください..."
    jmp lbl_47328

lbl_47161:
    if global_14 != 3 then jump lbl_471b4
    local_669e = "Vibrationstest läuft, bitte warten..."
    jmp lbl_47328

lbl_471b4:
    if global_14 != 4 then jump lbl_47216
    local_669e = "Prueba de Vibración en Progreso, Por Favor Espere..."
    jmp lbl_47328

lbl_47216:
    if global_14 != 5 then jump lbl_47274
    local_669e = "Test de Vibration en Cours, Veuillez Patienter..."
    jmp lbl_47328

lbl_47274:
    if global_14 != 6 then jump lbl_472d7
    local_669e = "Teste de Vibração em Andamento, Por Favor Aguarde..."
    jmp lbl_47328

lbl_472d7:
    if global_14 != 7 then jump lbl_47328
    local_669e = "Test di Vibrazione in Corso, Attendere Prego..."

lbl_47328:
    doevents
    down
    up
    unload
    down
    up
    down
    up

; object id 1 (text 't0'): x=108, y=98, w=268, h=68, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="振动测试中，请稍后..."
; text:
;   0: "振动测试中，请稍后..."
;   1: "Vibration Testing in Progress, Please Wait..."
;   2: "振動テスト中、少々お待ちください..."
;   3: "Vibrationstest läuft, bitte warten..."
;   4: "Prueba de Vibración en Progreso, Por Favor Espere..."
;   5: "Test de Vibration en Cours, Veuillez Patienter..."
;   6: "Teste de Vibração em Andamento, Por Favor Aguarde..."
;   7: "Test di Vibrazione in Corso, Attendere Prego..."

; data after the object structs, 308 bytes (4 trailing zero bytes dropped)
; 046f20:  00 00 00 00 e6 8c af e5 8a a8 e6 b5 8b e8 af 95  |................|
; 046f30:  e4 b8 ad ef bc 8c e8 af b7 e7 a8 8d e5 90 8e 2e  |................|
; 046f40:  2e 2e 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 046f50:  00 00 00 00 72 00 af 00 72 00 22 00 e3 00 d0 00  |....r...r.".....|
; 046f60:  00 00 00 00 00 00 00 00 00 00 04 00 05 00 ff ff  |................|
; 046f70:  ff ff 01 01 00 00 0a 00 f8 ba 00 00 00 00 00 00  |................|
; 046f80:  3a 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |:...............|
; 046f90:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 046fa0:  00 00 7f 00 00 00 00 00 72 00 34 00 68 00 68 00  |........r.4.h.h.|
; 046fb0:  d9 00 9b 00 00 00 00 00 00 08 ff ff 00 00 00 00  |................|
; 046fc0:  1e 00 00 00 04 bb 00 00 74 04 00 00 00 00 00 00  |........t.......|
; 046fd0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 046fe0:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 046ff0:  de 00 54 00 9b 00 33 00 78 01 86 00 00 00 00 00  |..T...3.x.......|
; 047000:  03 00 00 00 00 03 00 00 ff ff 01 01 00 00 0a 00  |................|
; 047010:  24 bb 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |$...............|
; 047020:  e7 a1 ae e5 ae 9a 00 00 00 00 00 00 e5 88 b7 e6  |................|
; 047030:  96 b0 00 00 00 00 00 00 30 00 d3 00 3d 00 36 00  |........0...=.6.|
; 047040:  3c 00 08 01 00 00 00 00 00 00 00 00 00 00 32 00  |<.............2.|
; 047050:  33 00 ff ff                                      |3...|
