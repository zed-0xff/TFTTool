; page 1 'starting': 2 objects

; object address table, 2 objects, block loaded at 0xa3a4
.dd 0xa3ac, 0xa3ec

; object id 0 (page 'starting'): x=0, y=0, w=480, h=272, name hash=0x9183548f
; flags=0x37, aph=127
; sta=2, pic=1
; 00a6c0:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0xa85c
    repo global_14, 100
    if global_14 < 0 then jump lbl_a898
    if global_14 <= 7 then jump lbl_a8a3

lbl_a898:
    global_14 = 1

lbl_a8a3:
    if global_14 != 0 then jump lbl_a8e8
    local_5c = "系统正在启动中..."
    jmp lbl_aaca

lbl_a8e8:
    if global_14 != 1 then jump lbl_a92a
    local_5c = "System is starting..."
    jmp lbl_aaca

lbl_a92a:
    if global_14 != 2 then jump lbl_a978
    local_5c = "システムが起動中です..."
    jmp lbl_aaca

lbl_a978:
    if global_14 != 3 then jump lbl_a9b6
    local_5c = "System startet..."
    jmp lbl_aaca

lbl_a9b6:
    if global_14 != 4 then jump lbl_aa00
    local_5c = "El sistema está iniciando..."
    jmp lbl_aaca

lbl_aa00:
    if global_14 != 5 then jump lbl_aa44
    local_5c = "Le système démarre..."
    jmp lbl_aaca

lbl_aa44:
    if global_14 != 6 then jump lbl_aa8d
    local_5c = "O sistema está iniciando..."
    T 0x3d

lbl_aa8d:
    if global_14 != 7 then jump lbl_aaca
    local_5c = "Il sistema sta iniziando..."

lbl_aaca:
    doevents
    global_20 = global_18
    dims = global_2c
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
    down
    up
    down
    up

; object id 1 (text 't0'): x=106, y=75, w=268, h=122, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="系统正在启动中..."
; text:
;   0: "系统正在启动中..."
;   1: "System is starting..."
;   2: "システムが起動中です..."
;   3: "System startet..."
;   4: "El sistema está iniciando..."
;   5: "Le système démarre..."
;   6: "O sistema está iniciando..."
;   7: "Il sistema sta iniziando..."

; data after the object structs, 308 bytes (4 trailing zero bytes dropped)
; 00a720:  00 00 00 00 e7 b3 bb e7 bb 9f e6 ad a3 e5 9c a8  |................|
; 00a730:  e5 90 af e5 8a a8 e4 b8 ad 2e 2e 2e 00 00 1e 00  |................|
; 00a740:  b4 00 6f 00 00 00 00 00 03 00 00 00 00 00 00 00  |..o.............|
; 00a750:  e8 07 00 01 00 00 2c 01 8c 34 00 00 01 00 00 00  |......,..4......|
; 00a760:  00 00 00 00 74 03 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00a770:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00a780:  00 00 00 00 00 00 7f 00 00 00 00 00 35 00 30 00  |............5.0.|
; 00a790:  50 00 1e 00 84 00 4d 00 00 00 00 00 03 00 00 00  |P.....M.........|
; 00a7a0:  00 00 00 00 ff ff 02 01 00 00 2c 01 bc 35 00 00  |..........,..5..|
; 00a7b0:  01 00 00 00 00 00 00 00 74 04 01 00 00 00 00 00  |........t.......|
; 00a7c0:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00a7d0:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00a7e0:  35 00 52 00 50 00 1e 00 84 00 6f 00 00 00 00 00  |5.R.P.....o.....|
; 00a7f0:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00a800:  ec 36 00 00 01 00 00 00 00 00 00 00 74 05 01 00  |.6..........t...|
; 00a810:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00a820:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00a830:  00 00 00 00 16 00 74 00 6f 00 1e 00 84 00 91 00  |......t.o.......|
; 00a840:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00a850:  00 00 2c 01                                      |..,.|
