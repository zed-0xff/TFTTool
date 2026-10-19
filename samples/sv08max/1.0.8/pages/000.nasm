; page 0 'logo': 1 objects

; object address table, 1 objects, block loaded at 0xb950
.dd 0xb954

; object id 0 (page 'logo'): x=0, y=0, w=480, h=272, name hash=0xd35fae5a
; flags=0x37, aph=127, events: event_3=0xbac8
; sta=2, pic=0
; 00bb3a:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xbac8
    global_20 = global_18
    dims = global_2c
    unload

; load
.org 0xbb52
    global_20 = global_18
    dims = global_2c
    repo global_14, 100
    if global_14 < 0 then jump lbl_bbac
    if global_14 <= 7 then jump lbl_bbb7

lbl_bbac:
    global_14 = 1

lbl_bbb7:
    printh 91
    doevents
    down
    up
    unload
    down
    up
