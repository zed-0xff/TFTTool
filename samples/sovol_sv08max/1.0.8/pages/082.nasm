; page 82: 3 objects

; object address table, 3 objects, block loaded at 0xb950
.dd 0xb95c, 0xb99c, 0xb9f0

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xac284cdc
; flags=0x37, aph=127
; sta=2, pic=113
; 04f629:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x4f84d
    if global_14 != 0 then jump lbl_4f8d1
    local_6e6d = "耗材或者辅助送料器可能缠绕，查看辅助送料器和料盘进行处理。"
    jmp lbl_4fd9d

lbl_4f8d1:
    if global_14 != 1 then jump lbl_4f965
    local_6e6d = "The filament or auxiliary feeder may be tangled. Check the auxiliary feeder and the spool for handling."
    jmp lbl_4fd9d

lbl_4f965:
    if global_14 != 2 then jump lbl_4fa40
    local_6e6d = "フィラメントまたは補助送り装置が絡まっている可能性があります。補助送り装置とスプールをチェックして処理してください。"
    jmp lbl_4fd9d

lbl_4fa40:
    if global_14 != 3 then jump lbl_4faef
    local_6e6d = "Das Filament oder der Hilfszuführer kann verwickelt sein. Überprüfen Sie den Hilfszuführer und die Spule für die Bearbeitung."
    jmp lbl_4fd9d

lbl_4faef:
    if global_14 != 4 then jump lbl_4fb96
    local_6e6d = "El filamento o el alimentador auxiliar pueden estar enredados. Revise el alimentador auxiliar y el carrete para su manejo."
    jmp lbl_4fd9d

lbl_4fb96:
    if global_14 != 5 then jump lbl_4fc49
    local_6e6d = "Le filament ou l'alimentateur auxiliaire peut être enchevêtré. Vérifiez l'alimentateur auxiliaire et la bobine pour le traitement."
    jmp lbl_4fd9d

lbl_4fc49:
    if global_14 != 6 then jump lbl_4fcef
    local_6e6d = "O filamento ou o alimentador auxiliar pode estar emaranhado. Verifique o alimentador auxiliar e o carretel para manuseio."
    jmp lbl_4fd9d

lbl_4fcef:
    if global_14 != 7 then jump lbl_4fd9d
    local_6e6d = "Il filamento o l'alimentatore ausiliario potrebbero essere aggrovigliati. Controllare l'alimentatore ausiliario e la bobina per la gestione."

lbl_4fd9d:
    if global_14 != 0 then jump lbl_4fdd0
    local_6e96 = "确定"
    jmp lbl_4ff1d

lbl_4fdd0:
    if global_14 != 1 then jump lbl_4fdff
    local_6e96 = "OK"
    jmp lbl_4ff1d

lbl_4fdff:
    if global_14 != 2 then jump lbl_4fe32
    local_6e96 = "確定"
    jmp lbl_4ff1d

lbl_4fe32:
    if global_14 != 3 then jump lbl_4fe61
    local_6e96 = "OK"
    jmp lbl_4ff1d

lbl_4fe61:
    if global_14 != 4 then jump lbl_4fe95
    local_6e96 = "Aceptar"
    jmp lbl_4ff1d

lbl_4fe95:
    if global_14 != 5 then jump lbl_4feca
    local_6e96 = "D'accord"
    jmp lbl_4ff1d

lbl_4feca:
    if global_14 != 6 then jump lbl_4fef9
    local_6e96 = "OK"
    jmp lbl_4ff1d

lbl_4fef9:
    if global_14 != 7 then jump lbl_4ff1d
    local_6e96 = "OK"

lbl_4ff1d:
    doevents
    down
    up

; object id 1 (text 't0'): x=35, y=27, w=303, h=176, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="耗材或者辅助送料器可能缠绕，查看辅助送料器和料盘进行处理。"
; text:
;   0: "耗材或者辅助送料器可能缠绕，查看辅助送料器和料盘进行处理。"
;   1: "The filament or auxiliary feeder may be tangled. Check the auxiliary feeder and the spool for handling."
;   2: "フィラメントまたは補助送り装置が絡まっている可能性があります。補助送り装置とスプールをチェックして処理してください。"
;   3: "Das Filament oder der Hilfszuführer kann verwickelt sein. Überprüfen Sie den Hilfszuführer und die Spule für die Bearbeitung."
;   4: "El filamento o el alimentador auxiliar pueden estar enredados. Revise el alimentador auxiliar y el carrete para su manejo."
;   5: "Le filament ou l'alimentateur auxiliaire peut être enchevêtré. Vérifiez l'alimentateur auxiliaire et la bobine pour le traitement."
;   6: "O filamento ou o alimentador auxiliar pode estar emaranhado. Verifique o alimentador auxiliar e o carretel para manuseio."
;   7: "Il filamento o l'alimentatore ausiliario potrebbero essere aggrovigliati. Controllare l'alimentatore ausiliario e la bobina per la gestione."

; object id 2 (button 'b1'): x=138, y=216, w=204, h=45, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x4f57f
; borderc=0x0000, picc=113, picc2=113, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="确定"
; text:
;   0: "确定"
;   1: "OK"
;   2: "確定"
;   3: "OK"
;   4: "Aceptar"
;   5: "D'accord"
;   6: "OK"
;   7: "OK"
; touch_release reports to the host: page <page>, widget 0
; 04f6cd:  ff ff                                            |..|

; touch_release
.org 0x4f57f
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 358 bytes (6 trailing zero bytes dropped)
; 04f6dd:  00 00 00 00 e8 80 97 e6 9d 90 e6 88 96 e8 80 85  |................|
; 04f6ed:  e8 be 85 e5 8a a9 e9 80 81 e6 96 99 e5 99 a8 e5  |................|
; 04f6fd:  8f af e8 83 bd e7 bc a0 e7 bb 95 ef bc 8c e6 9f  |................|
; 04f70d:  a5 e7 9c 8b e8 be 85 e5 8a a9 e9 80 81 e6 96 99  |................|
; 04f71d:  e5 99 a8 e5 92 8c e6 96 99 e7 9b 98 e8 bf 9b e8  |................|
; 04f72d:  a1 8c e5 a4 84 e7 90 86 e3 80 82 00 e5 a4 b4 e6  |................|
; 04f73d:  88 96 e8 80 85 e6 8c a4 e5 87 ba e9 bd bf e8 bd  |................|
; 04f74d:  ae e6 9d be e5 8a a8 5c 72 5c 72 31 e3 80 81 e6  |.......\r\r1....|
; 04f75d:  8b a7 e7 b4 a7 e6 8c a4 e5 87 ba e6 9c ba e9 bd  |................|
; 04f76d:  bf e8 bd ae e6 8a 8a e6 89 8b 5c 72 5c 72 32 e3  |..........\r\r2.|
; 04f77d:  80 81 e6 9d be e5 bc 80 e9 bd bf e8 bd ae e6 8a  |................|
; 04f78d:  8a e6 89 8b ef bc 8c e6 8b 94 e5 87 ba e8 80 97  |................|
; 04f79d:  e6 9d 90 e6 9f a5 e7 9c 8b e6 98 af e5 90 a6 e5  |................|
; 04f7ad:  87 ba e7 8e b0 e7 a3 a8 e6 8d 9f 5c 72 5c 72 33  |...........\r\r3|
; 04f7bd:  e3 80 81 e5 b0 86 e8 80 97 e6 9d 90 e6 8b 94 e5  |................|
; 04f7cd:  87 ba ef bc 8c e5 89 aa e6 8e 89 e5 89 8d e7 ab  |................|
; 04f7dd:  af e9 83 a8 e5 88 86 ef bc 8c e7 82 b9 e5 87 bb  |................|
; 04f7ed:  e3 80 8c e8 bf 9b e6 96 99 e3 80 8d e6 9f a5 e7  |................|
; 04f7fd:  9c 8b e6 98 af e5 90 a6 e5 a0 b5 e5 a4 b4 e3 80  |................|
; 04f80d:  82 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 7f 00  |................|
; 04f81d:  00 00 00 00 70 01 44 00 14 00 17 00 83 01 5a 00  |....p.D.......Z.|
; 04f82d:  00 00 00 00 03 00 00 00 00 00 00 00 00 00 00 00  |................|
; 04f83d:  00 00 64 00 dc bd                                |..d...|
