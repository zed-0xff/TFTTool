; page 1 'starting': 2 objects

; object address table, 2 objects, block loaded at 0xb950
.dd 0xb958, 0xb998

; object id 0 (page 'starting'): x=0, y=0, w=480, h=272, name hash=0x9183548f
; flags=0x37, aph=127
; sta=2, pic=1
; 00bc59:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0xbdf5
    repo global_14, 100
    if global_14 < 0 then jump lbl_be31
    if global_14 <= 7 then jump lbl_be3c

lbl_be31:
    global_14 = 1

lbl_be3c:
    if global_14 != 0 then jump lbl_be81
    local_5c = "系统正在启动中..."
    jmp lbl_c063

lbl_be81:
    if global_14 != 1 then jump lbl_bec3
    local_5c = "System is starting..."
    jmp lbl_c063

lbl_bec3:
    if global_14 != 2 then jump lbl_bf11
    local_5c = "システムが起動中です..."
    jmp lbl_c063

lbl_bf11:
    if global_14 != 3 then jump lbl_bf4f
    local_5c = "System startet..."
    jmp lbl_c063

lbl_bf4f:
    if global_14 != 4 then jump lbl_bf99
    local_5c = "El sistema está iniciando..."
    jmp lbl_c063

lbl_bf99:
    if global_14 != 5 then jump lbl_bfdd
    local_5c = "Le système démarre..."
    jmp lbl_c063

lbl_bfdd:
    if global_14 != 6 then jump lbl_c026
    local_5c = "O sistema está iniciando..."
    T 0x3d

lbl_c026:
    if global_14 != 7 then jump lbl_c063
    local_5c = "Il sistema sta iniziando..."

lbl_c063:
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
; 00bcb9:  00 00 00 00 e7 b3 bb e7 bb 9f e6 ad a3 e5 9c a8  |................|
; 00bcc9:  e5 90 af e5 8a a8 e4 b8 ad 2e 2e 2e 00 00 1e 00  |................|
; 00bcd9:  b4 00 6f 00 00 00 00 00 03 00 00 00 00 00 00 00  |..o.............|
; 00bce9:  e8 07 00 01 00 00 2c 01 60 3a 00 00 01 00 00 00  |......,.`:......|
; 00bcf9:  00 00 00 00 74 03 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00bd09:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00bd19:  00 00 00 00 00 00 7f 00 00 00 00 00 35 00 30 00  |............5.0.|
; 00bd29:  50 00 1e 00 84 00 4d 00 00 00 00 00 03 00 00 00  |P.....M.........|
; 00bd39:  00 00 00 00 ff ff 02 01 00 00 2c 01 90 3b 00 00  |..........,..;..|
; 00bd49:  01 00 00 00 00 00 00 00 74 04 01 00 00 00 00 00  |........t.......|
; 00bd59:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00bd69:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00bd79:  35 00 52 00 50 00 1e 00 84 00 6f 00 00 00 00 00  |5.R.P.....o.....|
; 00bd89:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00bd99:  c0 3c 00 00 01 00 00 00 00 00 00 00 74 05 01 00  |.<..........t...|
; 00bda9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00bdb9:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00bdc9:  00 00 00 00 16 00 74 00 6f 00 1e 00 84 00 91 00  |......t.o.......|
; 00bdd9:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00bde9:  00 00 2c 01                                      |..,.|
