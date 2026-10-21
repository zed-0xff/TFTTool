; page 0 'logo': 1 objects

; object address table, 1 objects, block loaded at 0xa3a4
.dd 0xa3a8

; object id 0 (page 'logo'): x=0, y=0, w=480, h=272, name hash=0xd35fae5a
; flags=0x37, aph=127, events: event_3=0xa52f
; sta=2, pic=0
; 00a5a1:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xa52f
    global_20 = global_18
    dims = global_2c
    unload

; load
.org 0xa5b9
    global_20 = global_18
    dims = global_2c
    repo global_14, 100
    if global_14 < 0 then jump lbl_a613
    if global_14 <= 7 then jump lbl_a61e

lbl_a613:
    global_14 = 1

lbl_a61e:
    printh 91
    doevents
    down
    up
    unload
    down
    up
