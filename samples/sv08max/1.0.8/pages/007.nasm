; page 7 'guide_wifi': 27 objects

; object address table, 27 objects, block loaded at 0xb950
.dd 0xb9bc, 0x968, 0xb9fc, 0xba50, 0xbaa4, 0x9bc, 0xa10, 0xa64
.dd 0xab8, 0xb0c, 0xb48, 0xb84, 0xbc0, 0xbfc, 0xc38, 0xc74
.dd 0xcb0, 0xcec, 0xd40, 0xbaf8, 0xbb18, 0xbb38, 0xd94, 0xde8
.dd 0xe3c, 0xbb8c, 0xbbe0

; object id 0 (page 'guide_wifi'): x=0, y=0, w=480, h=272, name hash=0x90676798
; flags=0x37, aph=127, events: event_3=0xeb4f
; sta=2, pic=93
; 00f34b:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0xeb4f
    global_20 = global_18
    dims = global_2c
    unload
    down
    up

; load
.org 0xf9c7
    ref 19
    ref 20
    if global_14 != 0 then jump lbl_fa81
    local_854 = "网络选择"
    local_87b = "无线局域网"
    local_8a2 = "我的网络"
    local_aaa = "跳过"
    local_b4c = "上一步"
    local_b73 = "下一步"
    jmp lbl_ff30

lbl_fa81:
    if global_14 != 1 then jump lbl_fb21
    local_854 = "Network Selection"
    local_87b = "Wireless LAN"
    local_8a2 = "My Network"
    local_aaa = "Skip"
    local_b4c = "Previous"
    local_b73 = "Next"
    jmp lbl_ff30

lbl_fb21:
    if global_14 != 2 then jump lbl_fbf9
    local_854 = "ネットワーク選択"
    local_87b = "無線局域網"
    local_8a2 = "マイネットワーク"
    local_aaa = "スキップ"
    local_b4c = "前のステップ"
    local_b73 = "次のステップ"
    jmp lbl_ff30

lbl_fbf9:
    if global_14 != 3 then jump lbl_fca0
    local_854 = "Netzwerk auswählen"
    local_87b = "WLAN"
    local_8a2 = "Mein Netzwerk"
    local_aaa = "Überspringen"
    local_b4c = "Zurück"
    local_b73 = "Weiter"
    jmp lbl_ff30

lbl_fca0:
    if global_14 != 4 then jump lbl_fd4d
    local_854 = "Selección de red"
    local_87b = "Red local inalámbrica"
    local_8a2 = "Mi red"
    local_aaa = "Omitir"
    local_b4c = "Anterior"
    local_b73 = "Siguiente"
    jmp lbl_ff30

lbl_fd4d:
    if global_14 != 5 then jump lbl_fdee
    local_854 = "Choix du réseau"
    local_87b = "Wi-Fi"
    local_8a2 = "Mon réseau"
    local_aaa = "Passer"
    local_b4c = "Précédent"
    local_b73 = "Suivant"
    jmp lbl_ff30

lbl_fdee:
    if global_14 != 6 then jump lbl_fe9b
    local_854 = "Seleção de rede"
    local_87b = "Rede local sem fio"
    local_8a2 = "Minha rede"
    local_aaa = "Ignorar"
    local_b4c = "Anterior"
    local_b73 = "Próximo"
    jmp lbl_ff30

lbl_fe9b:
    if global_14 != 7 then jump lbl_ff30
    local_854 = "Selezione rete"
    local_87b = "Wi-Fi"
    local_8a2 = "La mia rete"
    local_aaa = "Salta"
    local_b4c = "Precedente"
    local_b73 = "Successivo"

lbl_ff30:
    doevents
    down
    up

; object id 257 (button 'b0'): x=234, y=59, w=57, h=29, name hash=0xce1a7436
; borderc=0x0000, picc=53, picc2=53, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 0

; touch_release
.org 0xeb95
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up
    down
    up
    down
    up
    down
    up

; object id 2 (text 't0'): x=29, y=14, w=100, h=30, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="网络选择"
; text:
;   0: "网络选择"
;   1: "Network Selection"
;   2: "ネットワーク選択"
;   3: "Netzwerk auswählen"
;   4: "Selección de red"
;   5: "Choix du réseau"
;   6: "Seleção de rede"
;   7: "Selezione rete"

; object id 3 (text 't3'): x=45, y=58, w=100, h=30, name hash=0x5a98bf51
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="无线局域网"
; text:
;   0: "无线局域网"
;   1: "Wireless LAN"
;   2: "無線局域網"
;   3: "WLAN"
;   4: "Red local inalámbrica"
;   5: "Wi-Fi"
;   6: "Rede local sem fio"
;   7: "Wi-Fi"

; object id 4 (text 't4'): x=45, y=83, w=100, h=30, name hash=0x1d54e28e
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="我的网络"
; text:
;   0: "我的网络"
;   1: "My Network"
;   2: "マイネットワーク"
;   3: "Mein Netzwerk"
;   4: "Mi red"
;   5: "Mon réseau"
;   6: "Minha rede"
;   7: "La mia rete"

; object id 261 (text 'wifi_0'): x=46, y=131, w=174, h=30, name hash=0x259889c
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 3

; touch_release
.org 0xec4d
    prints 0x65, 1
    prints dp, 1
    prints 3, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 262 (text 'wifi_2'): x=46, y=197, w=162, h=30, name hash=0x5019fb17
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 5

; touch_release
.org 0xecb7
    prints 0x65, 1
    prints dp, 1
    prints 5, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 263 (text 'wifi_3'): x=46, y=230, w=162, h=30, name hash=0xfb594c09
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 6

; touch_release
.org 0xed21
    prints 0x65, 1
    prints dp, 1
    prints 6, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 264 (text 'wifi_1'): x=46, y=164, w=162, h=30, name hash=0xa9193f82
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="ZCSW12-2.4G"
; touch_release reports to the host: page <page>, widget 4

; touch_release
.org 0xed8b
    prints 0x65, 1
    prints dp, 1
    prints 4, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
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
    timer

; object id 265 (crop 'q0'): x=238, y=133, w=25, h=26, name hash=0x32aa1f99

; object id 266 (crop 'q1'): x=233, y=168, w=28, h=26, name hash=0x44c504e1

; object id 267 (crop 'q2'): x=234, y=204, w=30, h=24, name hash=0xde742969

; object id 268 (crop 'q3'): x=234, y=238, w=30, h=24, name hash=0xa81b3211

; object id 269 (crop 'q4'): x=262, y=132, w=31, h=25, name hash=0xefd76fce

; object id 270 (crop 'q5'): x=262, y=168, w=31, h=24, name hash=0x99b874b6

; object id 271 (crop 'q6'): x=262, y=203, w=31, h=24, name hash=0x309593e

; object id 272 (crop 'q7'): x=263, y=238, w=29, h=24, name hash=0x75664246

; object id 273 (text 't1'): x=311, y=48, w=155, h=37, name hash=0xb64689a1
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="IP:0.0.0.0"

; object id 274 (text 't2'): x=311, y=85, w=155, h=33, name hash=0x2cf7a429
; sta=3, font=0, pco=0xffff, xcen=0, ycen=1, txt_maxl=300, isbr=1, background=0, txt="MAC:0:0:0:0:0"

; object id 19 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0xeef0
; tim=1000, en=1

; timer
.org 0xeef0
    if global_1c <= 0 then jump lbl_ef4c
    if global_20 <= 0 then jump lbl_ef4c
    global_20--
    if global_20 != 0 then jump lbl_ef4c
    dim = global_30

lbl_ef4c:
    down
    up

; object id 20 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0xef66

; touch_release
.org 0xef66
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 21 (button 'b5'): x=387, y=5, w=82, h=38, name hash=0x65081f19
; flags=0x37, aph=127, events: touch_release=0xef9e
; borderc=0x0000, picc=93, picc2=93, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="跳过"
; text:
;   0: "跳过"
;   1: "Skip"
;   2: "スキップ"
;   3: "Überspringen"
;   4: "Omitir"
;   5: "Passer"
;   6: "Ignorar"
;   7: "Salta"
; touch_release reports to the host: page <page>, widget 10
; 00f4d7:  ff ff                                            |..|

; touch_release
.org 0xef9e
    prints 0x65, 1
    prints dp, 1
    prints 10, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 278 (button 'b1'): x=305, y=121, w=46, h=48, name hash=0xb8756f4e
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 7

; touch_release
.org 0xf009
    prints 0x65, 1
    prints dp, 1
    prints 7, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 279 (button 'b3'): x=307, y=171, w=46, h=47, name hash=0x54ab59be
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 1

; touch_release
.org 0xf073
    prints 0x65, 1
    prints dp, 1
    prints 1, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 280 (button 'b4'): x=307, y=220, w=46, h=47, name hash=0x13670461
; borderc=0x0000, picc=59, picc2=60, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt=""
; touch_release reports to the host: page <page>, widget 2

; touch_release
.org 0xf0dd
    prints 0x65, 1
    prints dp, 1
    prints 2, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 25 (button 'b2'): x=389, y=190, w=77, h=37, name hash=0x22c442c6
; flags=0x37, aph=127, events: touch_release=0xf147
; borderc=0x0000, picc=0, picc2=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="上一步"
; text:
;   0: "上一步"
;   1: "Previous"
;   2: "前のステップ"
;   3: "Zurück"
;   4: "Anterior"
;   5: "Précédent"
;   6: "Anterior"
;   7: "Precedente"
; touch_release reports to the host: page <page>, widget 8
; 00f51b:  00 00 00 00 03 00                                |......|
; 00f52b:  ff ff                                            |..|

; touch_release
.org 0xf147
    prints 0x65, 1
    prints dp, 1
    prints 8, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1
    down
    up

; object id 26 (button 'b6'): x=388, y=232, w=77, h=37, name hash=0xffb93291
; flags=0x37, aph=127, events: touch_release=0xf1b1
; borderc=0x0000, picc=0, picc2=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="下一步"
; text:
;   0: "下一步"
;   1: "Next"
;   2: "次のステップ"
;   3: "Weiter"
;   4: "Siguiente"
;   5: "Suivant"
;   6: "Próximo"
;   7: "Successivo"
; touch_release reports to the host: page <page>, widget 9
; 00f56f:  00 00 00 00 03 00                                |......|
; 00f57f:  ff ff                                            |..|

; touch_release
.org 0xf1b1
    prints 0x65, 1
    prints dp, 1
    prints 9, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 1071 bytes (5 trailing zero bytes dropped)
; 00f58f:  00 00 00 00 e7 bd 91 e7 bb 9c e9 80 89 e6 8b a9  |................|
; 00f59f:  00 00 00 00 00 00 00 00 00 00 00 00 1d 00 b8 00  |................|
; 00f5af:  68 00 1e 00 84 00 d5 00 00 00 00 00 03 00 00 00  |h...............|
; 00f5bf:  00 00 00 00 ff ff 02 01 00 00 2c 01 e9 80 80 e5  |..........,.....|
; 00f5cf:  87 ba 00 00 00 00 00 00 74 0a 01 00 00 00 00 00  |........t.......|
; 00f5df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f5ef:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00f5ff:  88 00 95 00 6d 00 1e 00 f4 00 b2 00 00 00 00 00  |....m...........|
; 00f60f:  03 00 00 00 00 00 00 00 e8 07 00 01 00 00 2c 01  |..............,.|
; 00f61f:  e0 43 00 00 01 00 00 00 00 00 00 00 74 0b 01 00  |.C..........t...|
; 00f62f:  00 00 00 00 e4 b8 80 e9 94 ae e5 8a a0 e7 83 ad  |................|
; 00f63f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00f64f:  00 00 00 00 e7 bd 91 e7 bb 9c e7 ae a1 e7 90 86  |................|
; 00f65f:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00f66f:  00 00 2c 01 10 45 00 00 01 00 00 00 00 00 00 00  |..,..E..........|
; 00f67f:  74 0e 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 00f68f:  00 00 00 00 00 00 00 00 00 00 00 00 e5 86 b7 e5  |................|
; 00f69f:  8d b4 00 00 00 00 00 00 fc 00 52 00 50 00 1e 00  |..........R.P...|
; 00f6af:  4b 01 6f 00 00 00 00 00 03 00 00 00 00 00 00 00  |K.o.............|
; 00f6bf:  ff ff 02 01 e6 97 a0 e7 ba bf e5 b1 80 e5 9f 9f  |................|
; 00f6cf:  e7 bd 91 00 74 10 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00f6df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f6ef:  00 00 00 00 00 00 7f 00 00 00 00 00 88 00 b8 00  |................|
; 00f6ff:  6d 00 1e 00 00 00 00 00 00 00 00 00 03 00 00 00  |m...............|
; 00f70f:  00 00 00 00 e8 07 00 01 00 00 2c 01 70 47 00 00  |..........,.pG..|
; 00f71f:  01 00 00 00 00 00 00 00 74 11 01 00 00 00 00 00  |........t.......|
; 00f72f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f73f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00f74f:  fc 00 74 00 50 00 1e 00 4b 01 91 00 00 00 00 00  |..t.P...K.......|
; 00f75f:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 2c 01  |..............,.|
; 00f76f:  a0 48 00 00 01 00 00 00 00 00 00 00 74 12 01 00  |.H..........t...|
; 00f77f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f78f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00f79f:  00 00 00 00 ef 00 00 00 4e 00 1e 00 3c 01 1d 00  |........N...<...|
; 00f7af:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 00f7bf:  00 00 2c 01 d0 49 00 00 01 00 00 00 00 00 00 00  |..,..I..........|
; 00f7cf:  74 13 01 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 00f7df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f7ef:  00 00 7f 00 e6 88 91 e7 9a 84 e7 bd 91 e7 bb 9c  |................|
; 00f7ff:  00 01 91 00 00 00 00 00 03 00 00 00 00 00 00 00  |................|
; 00f80f:  72 fe 00 01 00 00 2c 01 00 4b 00 00 01 00 00 00  |r.....,..K......|
; 00f81f:  00 00 00 00 74 16 01 00 00 00 00 00 00 00 00 00  |....t...........|
; 00f82f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f83f:  00 00 00 00 00 00 7f 00 00 00 00 00 b5 00 30 00  |..............0.|
; 00f84f:  2d 00 1e 00 e1 00 4d 00 00 00 00 00 03 00 00 00  |-.....M.........|
; 00f85f:  00 00 00 00 e0 ff 00 01 00 00 2c 01 30 4c 00 00  |..........,.0L..|
; 00f86f:  01 00 00 00 00 00 00 00 74 17 01 00 00 00 00 00  |........t.......|
; 00f87f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f88f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 00f89f:  b5 00 52 00 2d 00 1e 00 e1 00 6f 00 00 00 00 00  |..R.-.....o.....|
; 00f8af:  03 00 00 00 00 00 00 00 e8 07 00 01 00 00 2c 01  |..............,.|
; 00f8bf:  60 4d 00 00 01 00 00 00 00 00 00 00 74 18 01 00  |`M..........t...|
; 00f8cf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f8df:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 00f8ef:  00 00 00 00 e4 00 92 00 68 00 1e 00 4b 01 af 00  |........h...K...|
; 00f8ff:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 02 01  |................|
; 00f90f:  00 00 2c 01 90 4e 00 00 01 00 00 00 00 00 00 00  |..,..N..........|
; 00f91f:  74 19 01 00 e8 b7 b3 e8 bf 87 00 00 00 00 00 00  |t...............|
; 00f92f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 00f93f:  00 00 7f 00 00 00 00 00 4d 01 93 00 6d 00 1e 00  |........M...m...|
; 00f94f:  b9 01 b0 00 00 00 00 00 e4 b8 8a e4 b8 80 e6 ad  |................|
; 00f95f:  a5 00 00 01 00 00 2c 01 c0 4f 00 00 01 00 00 00  |......,..O......|
; 00f96f:  00 00 00 00 62 01 01 00 00 00 00 00 00 00 00 00  |....b...........|
; 00f97f:  00 00 00 00 00 00 00 00 00 00 00 00 e4 b8 8b e4  |................|
; 00f98f:  b8 80 e6 ad a5 00 7f 00 00 00 00 00 24 00 3e 00  |............$.>.|
; 00f99f:  81 00 25 00 a4 00 62 00 00 00 00 00 00 00 00 00  |..%...b.........|
; 00f9af:  00 00 5b 00 5c 00 ff ff ff ff 01 01 00 00 64     |..[.\.........d|
