; page 0 'page0': 4 objects

; object address table, 4 objects, block loaded at 0x16f0
.dd 0x1700, 0x1740, 0x1760, 0x1770

; object id 0 (page 'page0'): x=0, y=0, w=272, h=480, name hash=0xac967926
; flags=0x37, aph=127
; sta=2, pic=0
; 003105:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x3665
    ref 1
    doevents
    down
    up
    unload

; object id 1 (timer): x=0, y=0, w=1, h=1, name hash=0x5d0daaf1
; flags=0x27, events: timer=0x1a98
; tim=50, en=1

; timer
.org 0x1a98
    global_24 = 0
    global_20 = 0
    op:4:0x1b "aacom", global_28

lbl_1ac2:
    if global_28 <= 0 then jump lbl_3028
    if global_24 >= 100 then jump lbl_3028
    global_24++
    if u[1] != 0x0 then jump lbl_1b5b
    printh AA 00 4F 4B 5F 56 31 2E 35 00 00 50 00 01 CC 33 C3 3C
    jmp lbl_2ffd

lbl_1b5b:
    if u[1] != 0x5f then jump lbl_1c2a
    global_4c = u[2]*100/64
    if global_4c <= 0 then jump lbl_1bcd
    if global_4c >= 30 then jump lbl_1bcd
    dim = 30
    jmp lbl_2ffd

lbl_1bcd:
    if global_4c < 30 then jump lbl_1bfe
    dim = global_4c
    jmp lbl_2ffd

lbl_1bfe:
    if global_4c != 0 then jump lbl_2ffd
    dim = 0
    jmp lbl_2ffd

lbl_1c2a:
    if u[1] != 0x40 then jump lbl_1c7a
    global_18 = u[2]<<8+u[3]
    global_1c = u[4]<<8+u[5]
    jmp lbl_2ffd

lbl_1c7a:
    if u[1] != 0x9 then jump lbl_1e34
    global_48 = u[2]&0xf
    global_4c = u[3]<<8+u[4]
    global_58 = u[5]<<8+u[6]
    global_2c = u[7]<<8+u[8]
    global_30 = u[9]<<8+u[10]
    global_34 = u[11]<<8+u[12]
    global_38 = u[13]<<8+u[14]
    if global_48 != 0 then jump lbl_1d61
    global_2c += global_4c
    jmp lbl_1de9

lbl_1d61:
    if global_48 != 1 then jump lbl_1d92
    global_34 -= global_4c
    jmp lbl_1de9

lbl_1d92:
    if global_48 != 2 then jump lbl_1dc3
    global_30 += global_4c
    T 0x26

lbl_1dc3:
    if global_48 != 3 then jump lbl_1de9
    global_38 -= global_4c

lbl_1de9:
    op:4:0x1d global_2c, global_30, global_34-global_2c+1, global_38-global_30+1, global_58, global_48, global_4c
    jmp lbl_2ffd

lbl_1e34:
    if u[1] != 0x71 then jump lbl_2033
    if u[15] != 0xcc then jump lbl_1f3d
    if u[16] != 0x33 then jump lbl_1f3d
    if u[17] != 0xc3 then jump lbl_1f3d
    global_64 = u[2]
    global_2c = u[3]<<8+u[4]
    global_30 = u[5]<<8+u[6]
    global_34 = u[7]<<8+u[8]
    global_38 = u[9]<<8+u[10]
    global_3c = u[11]<<8+u[12]
    global_40 = u[13]<<8+u[14]
    jmp lbl_1fdd

lbl_1f3d:
    global_64 = u[2]<<8+u[3]
    global_2c = u[4]<<8+u[5]
    global_30 = u[6]<<8+u[7]
    global_34 = u[8]<<8+u[9]
    global_38 = u[10]<<8+u[11]
    global_3c = u[12]<<8+u[13]
    global_40 = u[14]<<8+u[15]

lbl_1fdd:
    op:4:0xa global_3c, global_40, global_34-global_2c+1, global_38-global_30+1, global_2c, global_30, global_64
    global_10 = 1
    jmp lbl_2ffd

lbl_2033:
    if u[1] != 0x97 then jump lbl_218a
    global_2c = u[2]<<8+u[3]
    global_30 = u[4]<<8+u[5]
    global_64 = u[6]
    global_44 = u[8]
    global_44 <<= 8
    global_44 += u[9]
    if global_44 >= icolen.b[temp0+1].val then jump lbl_2ffd
    global_44 += icoval.b[temp0+1].val
    if u[7] != 0x0 then jump lbl_215c
    op:4:0x1c "picdraen", 1
    op:4:0x1 global_2c, global_30, global_44
    op:4:0x1c "picdraen", 0
    jmp lbl_2174

lbl_215c:
    op:4:0x1 global_2c, global_30, global_44

lbl_2174:
    global_10 = 1
    jmp lbl_2ffd

lbl_218a:
    if u[1] == 0x56 then jump lbl_21ee
    if u[1] == 0x5d then jump lbl_21ee
    if u[1] == 0x50 then jump lbl_21ee
    if u[1] != 0x51 then jump lbl_239d

lbl_21ee:
    if u[1] == 0x56 then jump lbl_2220
    if u[1] != 0x51 then jump lbl_223a

lbl_2220:
    global_44 = global_18
    jmp lbl_2249

lbl_223a:
    global_44 = global_1c

lbl_2249:
    global_2c = u[2]<<8+u[3]
    global_30 = u[4]<<8+u[5]
    global_64 = 6
    global_68 = global_28-8
    if global_64 > global_68 then jump lbl_236b

lbl_22ab:
    if global_64 > global_68 then jump lbl_2387
    global_34 = u[global_64]<<8+u[global_64+1]
    global_38 = u[global_64+2]<<8+u[global_64+3]
    op:4:0xd global_2c, global_30, global_34, global_38, global_44
    global_2c = global_34
    global_30 = global_38
    global_64 += 4
    jmp lbl_22ab
    jmp lbl_2387

lbl_236b:
    fill global_2c, global_30, 1, 1, global_44

lbl_2387:
    global_10 = 1
    jmp lbl_2ffd

lbl_239d:
    if u[1] == 0x59 then jump lbl_23cf
    if u[1] != 0x69 then jump lbl_250f

lbl_23cf:
    global_2c = u[2]<<8+u[3]
    global_30 = u[4]<<8+u[5]
    global_34 = u[6]<<8+u[7]
    global_38 = u[8]<<8+u[9]
    if u[1] != 0x59 then jump lbl_245a
    global_44 = global_18
    jmp lbl_2469

lbl_245a:
    global_44 = global_1c

lbl_2469:
    op:4:0xd global_2c, global_30, global_34, global_30, global_44
    op:4:0xd global_2c, global_30, global_2c, global_38, global_44
    op:4:0xd global_2c, global_38, global_34, global_38, global_44
    op:4:0xd global_34, global_38, global_34, global_30, global_44
    global_10 = 1
    jmp lbl_2ffd

lbl_250f:
    if u[1] == 0x5a then jump lbl_2541
    if u[1] != 0x5b then jump lbl_2625

lbl_2541:
    global_2c = u[2]<<8+u[3]
    global_30 = u[4]<<8+u[5]
    global_34 = u[6]<<8+u[7]
    global_38 = u[8]<<8+u[9]
    if u[1] != 0x5b then jump lbl_25cc
    global_44 = global_18
    jmp lbl_25db

lbl_25cc:
    global_44 = global_1c

lbl_25db:
    fill global_2c, global_30, global_34-global_2c+1, global_38-global_30+1, global_44
    global_10 = 1
    jmp lbl_2ffd

lbl_2625:
    if u[1] != 0x52 then jump lbl_2655
    op:4:0x6 global_1c
    jmp lbl_2ffd

lbl_2655:
    if u[1] != 0x98 then jump lbl_286d
    global_48 = u[7]&0x40>>6
    global_50 = u[8]
    global_64 = u[7]&0xf
    if global_64 == 0 then jump lbl_26d7
    if global_64 != 0x5 then jump lbl_26ee

lbl_26d7:
    global_50 -= 2
    jmp lbl_26fa

lbl_26ee:
    global_50 -= 0

lbl_26fa:
    if global_50 >= 0 then jump lbl_271b
    global_50 = 0

lbl_271b:
    if global_50 <= 6 then jump lbl_273c
    global_50 = 6

lbl_273c:
    global_54 = u[9]<<8+u[10]
    global_58 = u[11]<<8+u[12]
    global_2c = u[2]<<8+u[3]
    global_30 = u[4]<<8+u[5]
    u[global_28-4]=0
    ucopy local_34, 13, global_28-13-3, 0
    spax = 0
    if global_48 != 1 then jump lbl_2825
    op:4:0x18 global_2c, global_30, -1, -1, global_50, global_54, global_58, 0, 0, 1, local_34
    jmp lbl_2857

lbl_2825:
    op:4:0x18 global_2c, global_30, -1, -1, global_50, global_54, 0, 0, 0, 3, local_34

lbl_2857:
    global_10 = 1
    jmp lbl_2ffd

lbl_286d:
    if u[1] != 0xc0 then jump lbl_2989
    global_2c = u[2]<<8+u[3]<<1
    global_30 = global_28-8
    local_34 = "ramw\r"
    covx global_2c, local_40, 0, 0
    local_34 = local_34+local_40+"\r"
    covx global_30, local_40, 0, 0
    local_34 = local_34+local_40+"\r"
    covx 4, local_40, 0, 0
    local_34 = local_34+local_40+"\r"
    local_34 = local_34+"ram/view123.view"
    op:4:0x1c local_34, 0
    jmp lbl_2ffd

lbl_2989:
    if u[1] != 0xc1 then jump lbl_2a9f
    if u[2] != 0x12 then jump lbl_2a89
    global_2c = u[3]<<8+u[4]
    global_30 = u[5]<<8+u[6]
    local_34 = "ramv\r"
    covx global_2c, local_40, 0, 0
    local_34 = local_34+local_40+"\r"
    covx global_30, local_40, 0, 0
    local_34 = local_34+local_40+"\r"
    local_34 = local_34+"ram/view123.view"
    op:4:0x1c local_34, 0

lbl_2a89:
    global_10 = 1
    T 0x55e

lbl_2a9f:
    if u[1] != 0x14 then jump lbl_2e52
    global_48 = u[2]&0x80>>7
    global_50 = u[2]&0xf
    global_4c = u[2]&0x10>>4
    global_54 = u[3]<<8+u[4]
    global_58 = u[5]<<8+u[6]
    global_5c = u[7]
    global_60 = u[8]
    global_2c = u[9]<<8+u[10]
    global_30 = u[11]<<8+u[12]
    global_0 = global_28-13-4
    if global_0 != 1 then jump lbl_2bb5
    global_c = u[13]
    T 0x12b

lbl_2bb5:
    if global_0 != 2 then jump lbl_2bee
    global_c = u[13]<<8+u[14]
    jmp lbl_2ce0

lbl_2bee:
    if global_0 != 4 then jump lbl_2c66
    global_c = u[13]
    global_c = global_c<<8+u[14]
    global_c = global_c<<8+u[15]
    global_c = global_c<<8+u[16]
    jmp lbl_2ce0

lbl_2c66:
    global_0 = global_28-8
    global_c = u[global_0]
    global_c = global_c<<8+u[global_0+1]
    global_c = global_c<<8+u[global_0+2]
    global_c = global_c<<8+u[global_0+3]

lbl_2ce0:
    global_50 -= 2
    if global_50 >= 0 then jump lbl_2d0d
    global_50 = 0

lbl_2d0d:
    if global_50 <= 6 then jump lbl_2d2e
    global_50 = 6

lbl_2d2e:
    if global_48 != 1 then jump lbl_2d8d
    op:4:0x10 global_2c, global_30, global_c, global_50, global_5c, global_60, global_4c, global_54, global_58, 1
    jmp lbl_2dcb

lbl_2d8d:
    op:4:0x10 global_2c, global_30, global_c, global_50, global_5c, global_60, global_4c, global_54, global_58, 3

lbl_2dcb:
    global_20++
    if global_20 <= 5 then jump lbl_2ffd
    if usize >= 0x400 then jump lbl_2e31
    global_10 = 0
    setlayer
    doevents
    ref_star
    jmp lbl_2e3c

lbl_2e31:
    global_10 = 1

lbl_2e3c:
    global_20 = 0
    jmp lbl_2ffd

lbl_2e52:
    if u[1] != 0x70 then jump lbl_2f35
    global_64 = u[2]
    if u[3] != 0xcc then jump lbl_2eb6
    if u[4] != 0x33 then jump lbl_2eb6
    jmp lbl_2ed2

lbl_2eb6:
    global_64 <<= 8
    global_64 += u[3]

lbl_2ed2:
    if global_64 == dp then jump lbl_2f0f
    udelete global_28
    page global_64
    jmp lbl_2ffd

lbl_2f0f:
    op:4:0x1 0, 0, global_64
    global_10 = 1
    jmp lbl_2ffd

lbl_2f35:
    if u[1] != 0x84 then jump lbl_2f89
    op:4:0x1c "qqset", 2
    if u[3] != 0 then jump lbl_2ffd
    global_10 = 1
    jmp lbl_2ffd

lbl_2f89:
    if u[1] != 0x3d then jump lbl_2ffd
    if usize >= 0x400 then jump lbl_2fe7
    global_10 = 0
    setlayer
    doevents
    ref_star
    jmp lbl_2ffd

lbl_2fe7:
    global_10 = 1
    jmp lbl_2ffd

lbl_2ffd:
    udelete global_28
    op:4:0x1b "aacom", global_28
    jmp lbl_1ac2

lbl_3028:
    if global_20 <= 0 then jump lbl_3049
    global_10 = 1

lbl_3049:
    if global_10 != 1 then jump lbl_3099
    if usize >= 0x400 then jump lbl_3099
    global_10 = 0
    setlayer
    doevents
    ref_star

lbl_3099:

; object id 2 (variable 'tempstr'): x=0, y=0, w=1, h=1, name hash=0x2cf98c3e
; sta=1, val=0
; 003131:  34 02 00 07                                      |4...|
; 003136:  00 00 01 84 17 00 00                             |.......|

; object id 3 (variable): x=0, y=0, w=1, h=1, name hash=0x81bb5508
; sta=1, val=0
; 003141:  34 03 00 07                                      |4...|
; 003146:  00 00 04 88 18 00 00                             |.......|

; data after the object structs, 1290 bytes (6 trailing zero bytes dropped)
; 003151:  00 00 00 00 6e 65 77 74 78 74 00 00 34 04 01 00  |....newtxt..4...|
; 003161:  00 00 00 00 00 00 00 00 60 ea 00 00 34 05 01 00  |........`...4...|
; 003171:  00 00 00 00 00 00 00 00 60 ea 00 00 34 06 01 00  |........`...4...|
; 003181:  00 00 00 00 00 00 00 00 60 ea 00 00 34 07 01 00  |........`...4...|
; 003191:  00 00 00 00 00 00 00 00 60 ea 00 00 34 08 01 00  |........`...4...|
; 0031a1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 09 01 00  |........`...4...|
; 0031b1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 0a 01 00  |........`...4...|
; 0031c1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 0b 01 00  |........`...4...|
; 0031d1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 0c 01 00  |........`...4...|
; 0031e1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 0d 01 00  |........`...4...|
; 0031f1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 0e 01 00  |........`...4...|
; 003201:  00 00 00 00 00 00 00 00 60 ea 00 00 34 0f 01 00  |........`...4...|
; 003211:  00 00 00 00 00 00 00 00 60 ea 00 00 34 10 01 00  |........`...4...|
; 003221:  00 00 00 00 00 00 00 00 60 ea 00 00 34 11 01 00  |........`...4...|
; 003231:  00 00 00 00 00 00 00 00 60 ea 00 00 34 12 01 00  |........`...4...|
; 003241:  00 00 00 00 00 00 00 00 60 ea 00 00 34 13 01 00  |........`...4...|
; 003251:  00 00 00 00 00 00 00 00 6e 65 77 74 78 74 00 00  |........newtxt..|
; 003261:  00 00 00 00 00 00 00 00 60 ea 00 00 34 15 01 00  |........`...4...|
; 003271:  00 00 00 00 00 00 00 00 60 ea 00 00 34 16 01 00  |........`...4...|
; 003281:  00 00 00 00 00 00 00 00 60 ea 00 00 34 17 01 00  |........`...4...|
; 003291:  00 00 00 00 00 00 00 00 60 ea 00 00 34 18 01 00  |........`...4...|
; 0032a1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 19 01 00  |........`...4...|
; 0032b1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 1a 01 00  |........`...4...|
; 0032c1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 1b 01 00  |........`...4...|
; 0032d1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 1c 01 00  |........`...4...|
; 0032e1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 1d 01 00  |........`...4...|
; 0032f1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 1e 01 00  |........`...4...|
; 003301:  00 00 00 00 00 00 00 00 60 ea 00 00 34 1f 01 00  |........`...4...|
; 003311:  00 00 00 00 00 00 00 00 60 ea 00 00 34 20 01 00  |........`...4 ..|
; 003321:  00 00 00 00 00 00 00 00 60 ea 00 00 34 21 01 00  |........`...4!..|
; 003331:  00 00 00 00 00 00 00 00 60 ea 00 00 34 22 01 00  |........`...4"..|
; 003341:  00 00 00 00 00 00 00 00 60 ea 00 00 34 23 01 00  |........`...4#..|
; 003351:  00 00 00 00 00 00 00 00 60 ea 00 00 34 24 01 00  |........`...4$..|
; 003361:  00 00 00 00 00 00 00 00 60 ea 00 00 34 25 01 00  |........`...4%..|
; 003371:  00 00 00 00 00 00 00 00 60 ea 00 00 34 26 01 00  |........`...4&..|
; 003381:  00 00 00 00 00 00 00 00 60 ea 00 00 34 27 01 00  |........`...4'..|
; 003391:  00 00 00 00 00 00 00 00 60 ea 00 00 34 28 01 00  |........`...4(..|
; 0033a1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 29 01 00  |........`...4)..|
; 0033b1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 2a 01 00  |........`...4*..|
; 0033c1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 2b 01 00  |........`...4+..|
; 0033d1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 2c 01 00  |........`...4,..|
; 0033e1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 2d 01 00  |........`...4-..|
; 0033f1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 2e 01 00  |........`...4...|
; 003401:  00 00 00 00 00 00 00 00 60 ea 00 00 34 2f 01 00  |........`...4/..|
; 003411:  00 00 00 00 00 00 00 00 60 ea 00 00 34 30 01 00  |........`...40..|
; 003421:  00 00 00 00 00 00 00 00 60 ea 00 00 34 31 01 00  |........`...41..|
; 003431:  00 00 00 00 00 00 00 00 60 ea 00 00 34 32 01 00  |........`...42..|
; 003441:  00 00 00 00 00 00 00 00 60 ea 00 00 34 33 01 00  |........`...43..|
; 003451:  00 00 00 00 00 00 00 00 60 ea 00 00 34 34 01 00  |........`...44..|
; 003461:  00 00 00 00 00 00 00 00 60 ea 00 00 34 35 01 00  |........`...45..|
; 003471:  00 00 00 00 00 00 00 00 60 ea 00 00 34 36 01 00  |........`...46..|
; 003481:  00 00 00 00 00 00 00 00 60 ea 00 00 34 37 01 00  |........`...47..|
; 003491:  00 00 00 00 00 00 00 00 60 ea 00 00 34 38 01 00  |........`...48..|
; 0034a1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 39 01 00  |........`...49..|
; 0034b1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 3a 01 00  |........`...4:..|
; 0034c1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 3b 01 00  |........`...4;..|
; 0034d1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 3c 01 00  |........`...4<..|
; 0034e1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 3d 01 00  |........`...4=..|
; 0034f1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 3e 01 00  |........`...4>..|
; 003501:  00 00 00 00 00 00 00 00 60 ea 00 00 34 3f 01 00  |........`...4?..|
; 003511:  00 00 00 00 00 00 00 00 60 ea 00 00 34 40 01 00  |........`...4@..|
; 003521:  00 00 00 00 00 00 00 00 60 ea 00 00 34 41 01 00  |........`...4A..|
; 003531:  00 00 00 00 00 00 00 00 60 ea 00 00 34 42 01 00  |........`...4B..|
; 003541:  00 00 00 00 00 00 00 00 60 ea 00 00 34 43 01 00  |........`...4C..|
; 003551:  00 00 00 00 00 00 00 00 60 ea 00 00 34 44 01 00  |........`...4D..|
; 003561:  00 00 00 00 00 00 00 00 60 ea 00 00 34 45 01 00  |........`...4E..|
; 003571:  00 00 00 00 00 00 00 00 60 ea 00 00 34 46 01 00  |........`...4F..|
; 003581:  00 00 00 00 00 00 00 00 60 ea 00 00 34 47 01 00  |........`...4G..|
; 003591:  00 00 00 00 00 00 00 00 60 ea 00 00 34 48 01 00  |........`...4H..|
; 0035a1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 49 01 00  |........`...4I..|
; 0035b1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 4a 01 00  |........`...4J..|
; 0035c1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 4b 01 00  |........`...4K..|
; 0035d1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 4c 01 00  |........`...4L..|
; 0035e1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 4d 01 00  |........`...4M..|
; 0035f1:  00 00 00 00 00 00 00 00 60 ea 00 00 34 4e 01 00  |........`...4N..|
; 003601:  00 00 00 00 00 00 00 00 60 ea 00 00 34 4f 01 00  |........`...4O..|
; 003611:  00 00 00 00 00 00 00 00 60 ea 00 00 34 50 01 00  |........`...4P..|
; 003621:  00 00 00 00 00 00 00 00 60 ea 00 00 34 51 01 00  |........`...4Q..|
; 003631:  00 00 00 00 00 00 00 00 60 ea 00 00 34 52 01 00  |........`...4R..|
; 003641:  00 00 00 00 00 00 00 00 60 ea 00 00 34 53 01 00  |........`...4S..|
; 003651:  00 00 00 00 00 00 00 00 60 ea                    |........`.|
