; page 36 'print_finish': 10 objects

; object address table, 10 objects, block loaded at 0xb950
.dd 0xb978, 0xb9b8, 0xb9f4, 0xba48, 0xba9c, 0xbaf0, 0xbb44, 0xbb64
.dd 0xbb84, 0xbbc4

; object id 0 (page 'print_finish'): x=0, y=0, w=480, h=272, name hash=0xe1ea60b6
; flags=0x37, aph=127, events: event_3=0x2821d
; sta=0, pic=0
; 0284e4:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x2821d
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    down
    up

; load
.org 0x28cbc
    ref 6
    ref 7
    if global_14 != 0 then jump lbl_28d11
    local_32d9 = "打印结束，用时："
    jmp lbl_28f23

lbl_28d11:
    if global_14 != 1 then jump lbl_28d58
    local_32d9 = "Printing ends, time taken:"
    jmp lbl_28f23

lbl_28d58:
    if global_14 != 2 then jump lbl_28da1
    local_32d9 = "印刷終了、所要時間:"
    jmp lbl_28f23

lbl_28da1:
    if global_14 != 3 then jump lbl_28deb
    local_32d9 = "Druck endet, benötigte Zeit:"
    jmp lbl_28f23

lbl_28deb:
    if global_14 != 4 then jump lbl_28e40
    local_32d9 = "Finaliza la impresión, tiempo empleado:"
    jmp lbl_28f23

lbl_28e40:
    if global_14 != 5 then jump lbl_28e8f
    local_32d9 = "Fin de l'impression, temps pris :"
    jmp lbl_28f23

lbl_28e8f:
    if global_14 != 6 then jump lbl_28ede
    local_32d9 = "A impressão termina, tempo gasto:"
    jmp lbl_28f23

lbl_28ede:
    if global_14 != 7 then jump lbl_28f23
    local_32d9 = "La stampa termina, tempo impiegato:"

lbl_28f23:
    if global_14 != 0 then jump lbl_28f56
    local_3264 = "确定"
    jmp lbl_290ba

lbl_28f56:
    if global_14 != 1 then jump lbl_28f87
    local_3264 = "Sure"
    jmp lbl_290ba

lbl_28f87:
    if global_14 != 2 then jump lbl_28fc0
    local_3264 = "もちろん"
    jmp lbl_290ba

lbl_28fc0:
    if global_14 != 3 then jump lbl_28ff3
    local_3264 = "Gewiss"
    jmp lbl_290ba

lbl_28ff3:
    if global_14 != 4 then jump lbl_29026
    local_3264 = "Seguro"
    jmp lbl_290ba

lbl_29026:
    if global_14 != 5 then jump lbl_2905c
    local_3264 = "Bien sûr"
    T 0x5e

lbl_2905c:
    if global_14 != 6 then jump lbl_2908e
    local_3264 = "Claro"
    jmp lbl_290ba

lbl_2908e:
    if global_14 != 7 then jump lbl_290ba
    local_3264 = "Certamente"

lbl_290ba:
    if global_14 != 0 then jump lbl_290f3
    local_3334 = "重新打印"
    jmp lbl_2928d

lbl_290f3:
    if global_14 != 1 then jump lbl_2912b
    local_3334 = "Print again"
    jmp lbl_2928d

lbl_2912b:
    if global_14 != 2 then jump lbl_29164
    local_3334 = "再度印刷"
    jmp lbl_2928d

lbl_29164:
    if global_14 != 3 then jump lbl_2919f
    local_3334 = "Erneut drucken"
    jmp lbl_2928d

lbl_2919f:
    if global_14 != 4 then jump lbl_291dd
    local_3334 = "Imprimir de nuevo"
    jmp lbl_2928d

lbl_291dd:
    if global_14 != 5 then jump lbl_2921d
    local_3334 = "Imprimer à nouveau"
    jmp lbl_2928d

lbl_2921d:
    if global_14 != 6 then jump lbl_2925c
    local_3334 = "Imprimir novamente"
    jmp lbl_2928d

lbl_2925c:
    if global_14 != 7 then jump lbl_2928d
    local_3334 = "Stampa di nuovo"

lbl_2928d:
    doevents
    down
    up

; object id 1 (crop 'q0'): x=0, y=0, w=480, h=272, name hash=0x32aa1f99
; flags=0x37, aph=127
; picc=4

; object id 2 (button 'b0'): x=245, y=174, w=127, h=36, name hash=0xce1a7436
; flags=0x37, aph=120, events: touch_release=0x2827d
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确定"
; text:
;   0: "确定"
;   1: "Sure"
;   2: "もちろん"
;   3: "Gewiss"
;   4: "Seguro"
;   5: "Bien sûr"
;   6: "Claro"
;   7: "Certamente"
; touch_release reports to the host: page <page>, widget 2
; 028570:  ff ff                                            |..|

; touch_release
.org 0x2827d
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
    timer

; object id 3 (text 't0'): x=106, y=57, w=269, h=49, name hash=0xc02992d9
; flags=0x37, aph=120
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="xxx.gcode"

; object id 4 (text 't1'): x=106, y=139, w=269, h=21, name hash=0xb64689a1
; flags=0x37, aph=120
; sta=3, font=0, pco=0xffff, xcen=1, ycen=0, txt_maxl=300, isbr=1, background=0, txt="1h3m"

; object id 5 (text 't2'): x=106, y=106, w=269, h=30, name hash=0x2cf7a429
; flags=0x37, aph=120
; sta=3, font=0, pco=0xffff, xcen=1, ycen=2, txt_maxl=300, isbr=1, background=0, txt="打印结束，用时："
; text:
;   0: "打印结束，用时："
;   1: "Printing ends, time taken:"
;   2: "印刷終了、所要時間:"
;   3: "Druck endet, benötigte Zeit:"
;   4: "Finaliza la impresión, tiempo empleado:"
;   5: "Fin de l'impression, temps pris :"
;   6: "A impressão termina, tempo gasto:"
;   7: "La stampa termina, tempo impiegato:"

; object id 6 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x2832c
; tim=1000, en=1

; timer
.org 0x2832c
    if global_1c <= 0 then jump lbl_28388
    if global_20 <= 0 then jump lbl_28388
    global_20--
    if global_20 != 0 then jump lbl_28388
    dim = global_30

lbl_28388:
    down
    up

; object id 7 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x283a2

; touch_release
.org 0x283a2
    global_20 = global_18
    dims = global_2c
    down
    up
    down
    up

; object id 8 (unknown_0x3c 'exp1'): x=376, y=51, w=11, h=5, name hash=0x8ceb07bd
; flags=0x37, aph=0
; path="ram/finish.jpg"
; 0286f0:  00 00 00 00 00 00 ff 00                          |........|

; object id 9 (button 'b2'): x=108, y=174, w=127, h=36, name hash=0x22c442c6
; flags=0x37, aph=120, events: touch_release=0x283f4
; borderc=0x0000, picc=4, picc2=5, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="再次打印"
; text:
;   0: "重新打印"
;   1: "Print again"
;   2: "再度印刷"
;   3: "Erneut drucken"
;   4: "Imprimir de nuevo"
;   5: "Imprimer à nouveau"
;   6: "Imprimir novamente"
;   7: "Stampa di nuovo"
; touch_release reports to the host: page <page>, widget 1
; 028740:  ff ff                                            |..|

; touch_release
.org 0x283f4
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 1380 bytes (4 trailing zero bytes dropped)
; 028750:  00 00 00 00 e7 a1 ae e5 ae 9a 00 ba 00 00 24 00  |..............$.|
; 028760:  00 00 00 00 ff ff 01 01 00 00 64 00 4c c0 00 00  |..........d.L...|
; 028770:  01 00 00 00 62 12 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 028780:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028790:  00 00 00 00 00 00 7f 00 00 00 00 00 80 01 93 00  |................|
; 0287a0:  46 00 26 00 c5 01 b8 00 e6 98 af 00 00 00 00 00  |F.&.............|
; 0287b0:  00 00 24 00 25 00 ff ff e5 90 a6 00 78 78 78 2e  |..$.%.......xxx.|
; 0287c0:  67 63 6f 64 65 00 00 00 33 13 00 00 00 00 00 00  |gcode...3.......|
; 0287d0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0287e0:  00 00 00 00 64 00 01 00 34 14 00 00 00 00 00 00  |....d...4.......|
; 0287f0:  00 00 00 00 00 00 00 00 34 15 00 00 00 00 00 00  |........4.......|
; 028800:  00 00 00 00 00 00 00 00 33 16 00 00 00 00 00 00  |........3.......|
; 028810:  e5 90 a6 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028820:  00 00 00 00 e8 03 01 00 05 17 00 00 00 00 00 00  |................|
; 028830:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028840:  00 00 00 00 00 00 00 00 00 00 00 00 e5 be ae e8  |................|
; 028850:  b0 83 00 00 ff ff 00 01 00 00 2c 01 bc c3 00 00  |..........,.....|
; 028860:  01 00 00 00 00 00 00 00 62 0f 00 00 00 00 00 00  |........b.......|
; 028870:  00 00 00 00 00 00 00 00 70 61 73 73 00 00 00 00  |........pass....|
; 028880:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 028890:  a0 01 2e 00 1d 00 2c 00 00 01 59 00 00 00 00 00  |......,...Y.....|
; 0288a0:  00 00 00 00 00 00 50 00 00 00 ff ff ff ff 01 01  |......P.........|
; 0288b0:  00 00 64 00 ec c4 00 00 01 00 00 00 74 10 00 00  |..d.........t...|
; 0288c0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0288d0:  00 00 00 00 00 00 00 00 e6 98 af 00 00 00 7f 00  |................|
; 0288e0:  00 00 00 00 52 00 5b 00 40 01 2d 00 31 68 33 6d  |....R.[.@.-.1h3m|
; 0288f0:  00 00 00 00 03 00 00 00 00 01 00 00 ff ff 00 01  |................|
; 028900:  00 00 2c 01 54 c5 00 00 01 00 00 00 00 00 00 00  |..,.T...........|
; 028910:  00 11 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028920:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028930:  00 00 7f 00 00 00 00 00 a0 01 5b 00 1d 00 2c 00  |..........[...,.|
; 028940:  e5 90 a6 00 00 00 00 00 00 00 00 00 00 00 50 00  |..............P.|
; 028950:  51 00 ff ff ff ff 01 01 00 00 64 00 84 c6 00 00  |Q.........d.....|
; 028960:  01 00 00 00 74 12 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 028970:  00 00 00 00 00 00 00 00 e6 89 93 e5 00 b0 00 00  |................|
; 028980:  00 00 00 00 00 00 7f 00 00 00 00 00 52 00 88 00  |............R...|
; 028990:  40 01 2d 00 91 01 b4 00 00 00 00 00 03 00 00 00  |@.-.............|
; 0289a0:  00 01 00 00 ff ff 00 01 00 00 00 00 ec c6 00 00  |................|
; 0289b0:  01 00 00 00 00 00 00 00 62 13 00 00 00 00 00 00  |........b.......|
; 0289c0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0289d0:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 0289e0:  00 01 88 00 00 00 2c 00 bc 01 b3 00 00 00 00 00  |......,.........|
; 0289f0:  00 00 00 00 00 00 50 00 51 00 ff ff ff ff 01 01  |......P.Q.......|
; 028a00:  00 00 64 00 1c c8 00 00 01 00 00 00 74 14 00 00  |..d.........t...|
; 028a10:  00 00 00 00 00 00 00 00 00 00 00 00 e6 89 93 e5  |................|
; 028a20:  8d b0 e7 bb 93 e6 9d 9f ef bc 8c e7 94 a8 e6 97  |................|
; 028a30:  b6 ef bc 9a 00 00 b5 00 00 01 2d 00 91 01 e1 00  |..........-.....|
; 028a40:  00 00 00 00 03 00 00 00 72 61 6d 2f 00 37 36 2e  |........ram/.76.|
; 028a50:  6a 70 67 00 84 c8 00 00 01 00 00 00 00 00 00 00  |jpg.............|
; 028a60:  62 15 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |b...............|
; 028a70:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028a80:  00 00 7f 00 00 00 00 00 a0 01 b5 00 1d 00 2c 00  |..............,.|
; 028a90:  bc 01 e0 00 00 00 00 00 00 00 00 00 00 00 50 00  |..............P.|
; 028aa0:  00 00 ff ff ff ff 01 01 00 00 64 00 00 00 00 00  |..........d.....|
; 028ab0:  01 00 00 00 e6 b5 81 e9 87 8f 2d 00 00 00 00 00  |..........-.....|
; 028ac0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028ad0:  00 00 00 00 00 00 7f 00 00 00 00 00 41 00 e1 00  |............A...|
; 028ae0:  7c 01 2d 00 bc 01 0d 01 00 00 00 00 00 00 00 00  ||.-.............|
; 028af0:  00 00 50 00 51 00 ff ff ff ff 01 01 00 00 64 00  |..P.Q.........d.|
; 028b00:  1c ca 00 00 01 00 00 00 74 19 00 00 00 00 00 00  |........t.......|
; 028b10:  00 00 00 00 00 00 00 00 00 00 00 00 e6 b5 81 e9  |................|
; 028b20:  87 8f 2b 00 00 00 00 00 00 00 7f 00 00 00 00 00  |..+.............|
; 028b30:  52 00 e2 00 40 01 2d 00 91 01 0e 01 00 00 00 00  |R...@.-.........|
; 028b40:  03 00 00 00 00 01 00 00 00 00 00 00 72 61 6d 2f  |............ram/|
; 028b50:  66 69 6e 69 73 68 2e 6a 70 67 00 00 62 1a 00 00  |finish.jpg..b...|
; 028b60:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028b70:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 028b80:  00 00 00 00 e9 80 9f e5 ba a6 2d 00 bc 01 0d 01  |..........-.....|
; 028b90:  00 00 00 00 00 00 00 00 00 00 50 00 51 00 ff ff  |..........P.Q...|
; 028ba0:  ff ff 01 01 00 00 64 00 b4 cb 00 00 01 00 00 00  |......d.........|
; 028bb0:  00 00 00 00 00 ff 00 01 00 00 2c 01 60 d6 00 00  |..........,.`...|
; 028bc0:  01 00 00 00 00 00 00 00 74 17 00 00 00 00 00 00  |........t.......|
; 028bd0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028be0:  00 00 00 00 00 00 00 00 00 00 7f 00 e9 80 9f e5  |................|
; 028bf0:  ba a6 2b 00 7b 00 26 00 bb 00 09 01 00 00 00 00  |..+.{.&.........|
; 028c00:  03 00 00 00 00 01 00 00 ff ff 01 01 00 00 2c 01  |..............,.|
; 028c10:  90 d7 00 00 00 00 00 00 00 00 00 00 00 18 00 00  |................|
; 028c20:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028c30:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 028c40:  00 00 00 00 c0 00 9d 00 7e 00 6f 00 e5 86 8d e6  |........~.o.....|
; 028c50:  ac a1 e6 89 93 e5 8d b0 00 00 1a 00 1a 00 ff ff  |................|
; 028c60:  ff ff 01 01 00 00 64 00 c0 d8 00 00 01 00 00 00  |......d.........|
; 028c70:  74 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 028c80:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 028c90:  00 00 7f 00 00 00 00 00 14 ff d0 00 32 00 10 00  |............2...|
; 028ca0:  45 ff df 00 00 00 00 00 03 00 00 00 00 01 00 00  |E...............|
; 028cb0:  ff ff 00 01                                      |....|
