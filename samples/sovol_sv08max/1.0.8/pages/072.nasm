; page 72: 4 objects

; object address table, 4 objects, block loaded at 0xb950
.dd 0xb960, 0xb9a0, 0xb9f4, 0xba48

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x42674b1b
; flags=0x37, aph=127
; sta=2, pic=4
; 047c45:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x47e91
    if global_14 != 0 then jump lbl_47f0d
    local_6755 = "请取下模型再按\"确认\"重新打印"
    local_677c = "确认"
    local_67a3 = "取消"
    jmp lbl_48340

lbl_47f0d:
    if global_14 != 1 then jump lbl_47f97
    local_6755 = "Please remove the model and press \"Confirm\" to reprint"
    local_677c = "Confirm"
    local_67a3 = "Cancel"
    jmp lbl_48340

lbl_47f97:
    if global_14 != 2 then jump lbl_4803d
    local_6755 = "モデルを取り外し、\"確認\"を押して再印刷してください"
    local_677c = "確認"
    local_67a3 = "キャンセル"
    jmp lbl_48340

lbl_4803d:
    if global_14 != 3 then jump lbl_480eb
    local_6755 = "Bitte entfernen Sie das Modell und drücken Sie \"Bestätigen\", um erneut zu drucken"
    local_677c = "Bestätigen"
    local_67a3 = "Abbrechen"
    jmp lbl_48340

lbl_480eb:
    if global_14 != 4 then jump lbl_48185
    local_6755 = "Por favor, retire el modelo y presione \"Confirmar\" para reimprimir"
    local_677c = "Confirmar"
    local_67a3 = "Cancelar"
    jmp lbl_48340

lbl_48185:
    if global_14 != 5 then jump lbl_48223
    local_6755 = "Veuillez retirer le modèle et appuyer sur \"Confirmer\" pour réimprimer"
    local_677c = "Confirmer"
    local_67a3 = "Annuler"
    jmp lbl_48340

lbl_48223:
    if global_14 != 6 then jump lbl_482bd
    local_6755 = "Por favor, remova o modelo e pressione \"Confirmar\" para reimprimir"
    local_677c = "Confirmar"
    local_67a3 = "Cancelar"
    jmp lbl_48340

lbl_482bd:
    if global_14 != 7 then jump lbl_48340
    local_6755 = "Rimuovere il modello e premere \"Conferma\" per ristampare"
    local_677c = "Conferma"
    local_67a3 = "Annulla"

lbl_48340:
    doevents
    down
    up
    unload
    down
    up
    down
    up

; object id 1 (text 't0'): x=110, y=85, w=257, h=52, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=0, background=0, txt="请取下模型再按"确认"重新打印"
; text:
;   0: "请取下模型再按\"确认\"重新打印"
;   1: "Please remove the model and press \"Confirm\" to reprint"
;   2: "モデルを取り外し、\"確認\"を押して再印刷してください"
;   3: "Bitte entfernen Sie das Modell und drücken Sie \"Bestätigen\", um erneut zu drucken"
;   4: "Por favor, retire el modelo y presione \"Confirmar\" para reimprimir"
;   5: "Veuillez retirer le modèle et appuyer sur \"Confirmer\" pour réimprimer"
;   6: "Por favor, remova o modelo e pressione \"Confirmar\" para reimprimir"
;   7: "Rimuovere il modello e premere \"Conferma\" per ristampare"

; object id 2 (text 't1'): x=244, y=172, w=130, h=39, name hash=0xb64689a1
; flags=0x37, aph=127, events: touch_release=0x47b27
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=0, background=0, txt="确认"
; text:
;   0: "确认"
;   1: "Confirm"
;   2: "確認"
;   3: "Bestätigen"
;   4: "Confirmar"
;   5: "Confirmer"
;   6: "Confirmar"
;   7: "Conferma"
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0x47b27
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 3 (text 't2'): x=107, y=172, w=130, h=39, name hash=0x2cf7a429
; flags=0x37, aph=127, events: touch_release=0x47b91
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=0, background=0, txt="取消"
; text:
;   0: "取消"
;   1: "Cancel"
;   2: "キャンセル"
;   3: "Abbrechen"
;   4: "Cancelar"
;   5: "Annuler"
;   6: "Cancelar"
;   7: "Annulla"
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0x47b91
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 313 bytes (7 trailing zero bytes dropped)
; 047d4d:  00 00 00 00 e8 af b7 e5 8f 96 e4 b8 8b e6 a8 a1  |................|
; 047d5d:  e5 9e 8b e5 86 8d e6 8c 89 22 e7 a1 ae e8 ae a4  |........."......|
; 047d6d:  22 e9 87 8d e6 96 b0 e6 89 93 e5 8d b0 00 00 00  |"...............|
; 047d7d:  03 00 00 00 00 03 00 00 ff ff 01 01 00 00 0a 00  |................|
; 047d8d:  24 bb 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |$...............|
; 047d9d:  e7 a1 ae e5 ae 9a 00 00 00 00 00 00 e5 88 b7 e6  |................|
; 047dad:  96 b0 00 00 00 00 00 00 30 00 d3 00 e7 a1 ae e8  |........0.......|
; 047dbd:  ae a4 00 01 00 00 00 00 00 00 00 00 00 00 32 00  |..............2.|
; 047dcd:  33 00 ff ff 00 00 00 00 2d 2d 2d 2d 2d 00 00 00  |3.......-----...|
; 047ddd:  01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 047ded:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 047dfd:  00 00 00 00 00 00 7f 00 00 00 00 00 43 00 07 00  |............C...|
; 047e0d:  d0 00 22 00 12 01 28 00 00 00 00 00 00 00 00 00  |.."...(.........|
; 047e1d:  00 00 32 00 e5 8f 96 e6 b6 88 00 01 e5 a4 a7 e7  |..2.............|
; 047e2d:  ba a6 33 30 e5 88 86 e9 92 9f 00 00 00 00 00 00  |..30............|
; 047e3d:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 047e4d:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 047e5d:  0e 01 07 00 c6 00 22 00 d3 01 28 00 00 00 00 00  |......"...(.....|
; 047e6d:  00 00 00 00 00 00 32 00 33 00 ff ff ff ff 01 01  |......2.3.......|
; 047e7d:  00 00 64 00 cc c1 00 00 01                       |..d......|
