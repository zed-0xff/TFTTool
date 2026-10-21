; page 71: 3 objects

; object address table, 3 objects, block loaded at 0xb950
.dd 0xb95c, 0xb99c, 0xb9f0

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x6d301775
; flags=0x37, aph=127
; sta=2, pic=1
; 0473e5:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x47705
    if global_14 != 0 then jump lbl_47767
    local_66e6 = "pid校准中，请稍后..."
    local_670d = "大约30分钟"
    jmp lbl_47ac4

lbl_47767:
    if global_14 != 1 then jump lbl_477e3
    local_66e6 = "PID Calibration in Progress, Please Wait..."
    local_670d = "Approximately 30 Minutes"
    jmp lbl_47ac4

lbl_477e3:
    if global_14 != 2 then jump lbl_47866
    local_66e6 = "PIDキャリブレーション中、少々お待ちください..."
    local_670d = "約30分"
    T 0x25e

lbl_47866:
    if global_14 != 3 then jump lbl_478d6
    local_66e6 = "PID-Kalibrierung läuft, bitte warten..."
    local_670d = "Etwa 30 Minuten"
    jmp lbl_47ac4

lbl_478d6:
    if global_14 != 4 then jump lbl_4795a
    local_66e6 = "Calibración PID en Progreso, Por Favor Espere..."
    local_670d = "Aproximadamente 30 Minutos"
    jmp lbl_47ac4

lbl_4795a:
    if global_14 != 5 then jump lbl_479d4
    local_66e6 = "Calibration PID en Cours, Veuillez Patienter..."
    local_670d = "Environ 30 Minutes"
    jmp lbl_47ac4

lbl_479d4:
    if global_14 != 6 then jump lbl_47a5a
    local_66e6 = "Calibração PID em Andamento, Por Favor Aguarde..."
    local_670d = "Aproximadamente 30 Minutos"
    jmp lbl_47ac4

lbl_47a5a:
    if global_14 != 7 then jump lbl_47ac4
    local_66e6 = "Calibrazione PID in Corso, Attendere Prego..."
    local_670d = "Circa 30 Minuti"

lbl_47ac4:
    doevents
    down
    up
    unload
    down
    up
    down
    up

; object id 1 (text 't0'): x=106, y=90, w=268, h=70, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="pid校准中，请稍后..."
; text:
;   0: "pid校准中，请稍后..."
;   1: "PID Calibration in Progress, Please Wait..."
;   2: "PIDキャリブレーション中、少々お待ちください..."
;   3: "PID-Kalibrierung läuft, bitte warten..."
;   4: "Calibración PID en Progreso, Por Favor Espere..."
;   5: "Calibration PID en Cours, Veuillez Patienter..."
;   6: "Calibração PID em Andamento, Por Favor Aguarde..."
;   7: "Calibrazione PID in Corso, Attendere Prego..."

; object id 2 (text 't1'): x=105, y=163, w=268, h=26, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="大约30分钟"
; text:
;   0: "大约30分钟"
;   1: "Approximately 30 Minutes"
;   2: "約30分"
;   3: "Etwa 30 Minuten"
;   4: "Aproximadamente 30 Minutos"
;   5: "Environ 30 Minutes"
;   6: "Aproximadamente 30 Minutos"
;   7: "Circa 30 Minuti"

; data after the object structs, 607 bytes (9 trailing zero bytes dropped)
; 047499:  00 00 00 00 70 69 64 e6 a0 a1 e5 87 86 e4 b8 ad  |....pid.........|
; 0474a9:  ef bc 8c e8 af b7 e7 a8 8d e5 90 8e 2e 2e 2e 00  |................|
; 0474b9:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0474c9:  72 00 34 00 68 00 68 00 d9 00 9b 00 00 00 00 00  |r.4.h.h.........|
; 0474d9:  00 08 ff ff 00 00 00 00 1e 00 00 00 04 bb 00 00  |................|
; 0474e9:  74 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 0474f9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 047509:  00 00 7f 00 00 00 00 00 de 00 54 00 9b 00 33 00  |..........T...3.|
; 047519:  78 01 86 00 00 00 00 00 03 00 00 00 00 03 00 00  |x...............|
; 047529:  ff ff 01 01 00 00 0a 00 24 bb 00 00 00 00 00 00  |........$.......|
; 047539:  00 00 00 00 00 00 00 00 e7 a1 ae e5 ae 9a 00 00  |................|
; 047549:  00 00 00 00 e5 88 b7 e6 96 b0 00 00 00 00 00 00  |................|
; 047559:  30 00 d3 00 3d 00 36 00 3c 00 08 01 00 00 00 00  |0...=.6.<.......|
; 047569:  00 00 00 00 00 00 32 00 33 00 ff ff 00 00 00 00  |......2.3.......|
; 047579:  2d 2d 2d 2d 2d 00 00 00 01 00 00 00 00 00 00 00  |-----...........|
; 047589:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 047599:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0475a9:  00 00 00 00 43 00 07 00 d0 00 22 00 12 01 28 00  |....C....."...(.|
; 0475b9:  00 00 00 00 00 00 00 00 00 00 32 00 33 00 ff ff  |..........2.3...|
; 0475c9:  ff ff 01 01 e5 a4 a7 e7 ba a6 33 30 e5 88 86 e9  |..........30....|
; 0475d9:  92 9f 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0475e9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0475f9:  00 00 7f 00 00 00 00 00 0e 01 07 00 c6 00 22 00  |..............".|
; 047609:  d3 01 28 00 00 00 00 00 00 00 00 00 00 00 32 00  |..(...........2.|
; 047619:  33 00 ff ff ff ff 01 01 00 00 64 00 cc c1 00 00  |3.........d.....|
; 047629:  01 00 00 00 62 07 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 047639:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 047649:  00 00 00 00 00 00 7f 00 00 00 00 00 2f 01 e0 00  |............/...|
; 047659:  47 00 1f 00 75 01 fe 00 00 00 00 00 03 00 00 00  |G...u...........|
; 047669:  00 00 00 00 00 00 ff ff ff ff 01 01 00 00 0a 00  |................|
; 047679:  34 c2 00 00 00 00 00 00 62 08 00 00 00 00 00 00  |4.......b.......|
; 047689:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 047699:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0476a9:  82 01 e0 00 49 00 20 00 ca 01 ff 00 00 00 00 00  |....I. .........|
; 0476b9:  03 00 00 00 00 00 00 00 00 00 ff ff ff ff 01 01  |................|
; 0476c9:  00 00 0a 00 40 c2 00 00 00 00 00 00 74 09 00 00  |....@.......t...|
; 0476d9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0476e9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f     |...............|
