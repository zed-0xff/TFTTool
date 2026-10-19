; page 86: 6 objects

; object address table, 6 objects, block loaded at 0xb950
.dd 0xb968, 0xb9a8, 0xb9fc, 0xba50, 0xbaa4, 0xbaf8

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0x42c74427
; flags=0x37, aph=127
; sta=2, pic=106
; 052300:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x52644
    if global_14 != 0 then jump lbl_526ad
    local_7391 = "加热喷嘴"
    local_73b8 = "抽出材料"
    local_7406 = "退料完成"
    jmp lbl_52a33

lbl_526ad:
    if global_14 != 1 then jump lbl_52729
    local_7391 = "Heat Nozzle"
    local_73b8 = "Extract Material"
    local_7406 = "Material Retraction Complete"
    jmp lbl_52a33

lbl_52729:
    if global_14 != 2 then jump lbl_527a1
    local_7391 = "ノズルを加熱"
    local_73b8 = "材料を抽出"
    local_7406 = "材料退出完了"
    jmp lbl_52a33

lbl_527a1:
    if global_14 != 3 then jump lbl_52824
    local_7391 = "Düse heizen"
    local_73b8 = "Material extrahieren"
    local_7406 = "Materialrückzug abgeschlossen"
    jmp lbl_52a33

lbl_52824:
    if global_14 != 4 then jump lbl_528a9
    local_7391 = "Calentar boquilla"
    local_73b8 = "Extraer material"
    local_7406 = "Retirada de material completada"
    jmp lbl_52a33

lbl_528a9:
    if global_14 != 5 then jump lbl_52930
    local_7391 = "Chauffer la buse"
    local_73b8 = "Extraire le matériau"
    local_7406 = "Retrait du matériau terminé"
    jmp lbl_52a33

lbl_52930:
    if global_14 != 6 then jump lbl_529b2
    local_7391 = "Aquecer o bico"
    local_73b8 = "Extrair material"
    local_7406 = "Retirada de material concluída"
    jmp lbl_52a33

lbl_529b2:
    if global_14 != 7 then jump lbl_52a33
    local_7391 = "Riscaldare l'ugello"
    local_73b8 = "Estrarre il materiale"
    local_7406 = "Ritiro del materiale completato"

lbl_52a33:
    doevents
    down
    up
    unload
    down
    up
    down
    up

; object id 1 (text 't0'): x=73, y=41, w=157, h=36, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="加热喷嘴"
; text:
;   0: "加热喷嘴"
;   1: "Heat Nozzle"
;   2: "ノズルを加熱"
;   3: "Düse heizen"
;   4: "Calentar boquilla"
;   5: "Chauffer la buse"
;   6: "Aquecer o bico"
;   7: "Riscaldare l'ugello"

; object id 2 (text 't1'): x=73, y=84, w=241, h=36, name hash=0xb64689a1
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="抽出材料"
; text:
;   0: "抽出材料"
;   1: "Extract Material"
;   2: "材料を抽出"
;   3: "Material extrahieren"
;   4: "Extraer material"
;   5: "Extraire le matériau"
;   6: "Extrair material"
;   7: "Estrarre il materiale"

; object id 3 (text 't3'): x=233, y=41, w=87, h=36, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=0, background=0, txt="0->0"

; object id 4 (text 't2'): x=73, y=128, w=240, h=36, name hash=0x2cf7a429
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=100, isbr=0, background=0, txt="退料完成"
; text:
;   0: "退料完成"
;   1: "Material Retraction Complete"
;   2: "材料退出完了"
;   3: "Materialrückzug abgeschlossen"
;   4: "Retirada de material completada"
;   5: "Retrait du matériau terminé"
;   6: "Retirada de material concluída"
;   7: "Ritiro del materiale completato"

; object id 5 (crop 'q0'): x=330, y=27, w=114, h=217, name hash=0x32aa1f99
; flags=0x37, aph=127
; picc=106

; data after the object structs, 419 bytes (5 trailing zero bytes dropped)
; 052498:  00 00 00 00 e5 8a a0 e7 83 ad e5 96 b7 e5 98 b4  |................|
; 0524a8:  00 be 00 00 00 00 00 00 00 00 00 00 71 06 00 00  |............q...|
; 0524b8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0524c8:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 0524d8:  00 00 00 00 37 01 1a 00 88 00 da 00 be 01 f3 00  |....7...........|
; 0524e8:  00 00 00 00 67 00 00 00 00 00 00 00 e5 8a a0 e7  |....g...........|
; 0524f8:  83 ad e5 96 b7 e5 98 b4 00 00 00 00 e6 8a bd e5  |................|
; 052508:  87 ba e6 9d 90 e6 96 99 00 00 00 00 00 00 00 00  |................|
; 052518:  74 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 052528:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 052538:  00 00 7f 00 00 00 00 00 6f 01 93 00 14 00 17 00  |........o.......|
; 052548:  82 01 a9 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 052558:  ff ff 00 01 00 00 64 00 44 be 00 00 00 00 00 00  |......d.D.......|
; 052568:  00 00 00 00 30 2d 3e 30 00 00 00 00 00 00 00 00  |....0->0........|
; 052578:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 052588:  00 00 00 00 00 00 7f 00 00 00 00 00 4f 01 3f 00  |............O.?.|
; 052598:  1e 00 1e 00 6c 01 5c 00 00 00 00 00 03 00 00 00  |....l.\.........|
; 0525a8:  00 00 00 00 ff ff 02 01 00 00 00 00 00 00 00 00  |................|
; 0525b8:  01 00 00 00 36 09 00 00 e6 a3 80 e6 9f a5 e7 ba  |....6...........|
; 0525c8:  bf e6 96 99 e4 bd 8d e7 bd ae 00 00 e9 80 80 e6  |................|
; 0525d8:  96 99 e5 ae 8c e6 88 90 00 00 00 00 4f 01 8e 00  |............O...|
; 0525e8:  1e 00 1e 00 6c 01 ab 00 00 00 00 00 03 00 00 00  |....l...........|
; 0525f8:  00 00 00 00 ff ff 02 01 00 00 00 00 00 00 00 00  |................|
; 052608:  01 00 00 00 62 0a 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 052618:  00 00 00 00 e6 97 a0 e7 ba bf e5 b1 80 e5 9f 9f  |................|
; 052628:  e7 bd 91 00 00 00 7f 00 00 00 00 00 86 01 1e 00  |................|
; 052638:  34 00 34                                         |4.4|
