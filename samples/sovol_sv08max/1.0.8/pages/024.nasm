; page 24 'filament_error': 5 objects

; object address table, 5 objects, block loaded at 0xb950
.dd 0xb964, 0xb9a4, 0xb9f8, 0xba18, 0xba38

; object id 0 (page 'filament_error'): x=0, y=0, w=480, h=272, name hash=0xe60c66de
; flags=0x37, aph=127, events: event_3=0x218a8
; sta=2, pic=111
; 021a6b:  00 00 00 00 ff ff ff ff                          |........|

; event_3
.org 0x218a8
    global_20 = global_18
    dims = global_2c
    unload
    down
    up
    timer

; load
.org 0x21d03
    ref 2
    ref 3
    if global_14 != 0 then jump lbl_21db5
    local_2bff = "耗材已用尽，请通过铁氟龙管将剩余耗材移除，并更换新的耗材后继续打印"
    local_2c3d = "确认"
    jmp lbl_223fb

lbl_21db5:
    if global_14 != 1 then jump lbl_21e84
    local_2bff = "Filament has run out, please remove the remaining filament through the Teflon tube and replace it with new filament before continuing to print."
    local_2c3d = "Confirm"
    jmp lbl_223fb

lbl_21e84:
    if global_14 != 2 then jump lbl_21f83
    local_2bff = "フィラメントが尽きました。テフロン管を通じて残りのフィラメントを取り除き、新しいフィラメントに交換した後、印刷を続けてください。"
    local_2c3d = "確認"
    jmp lbl_223fb

lbl_21f83:
    if global_14 != 3 then jump lbl_22076
    local_2bff = "Das Filament ist aufgebraucht. Entfernen Sie das verbleibende Filament durch das Teflonschlauch und ersetzen Sie es durch neues Filament, bevor Sie mit dem Drucken fortfahren."
    local_2c3d = "Bestätigen"
    jmp lbl_223fb

lbl_22076:
    if global_14 != 4 then jump lbl_2215c
    local_2bff = "El filamento se ha agotado, por favor, retire el filamento restante a través del tubo de teflón y reemplácelo con filamento nuevo antes de continuar imprimiendo."
    local_2c3d = "Confirmar"
    jmp lbl_223fb

lbl_2215c:
    if global_14 != 5 then jump lbl_22243
    local_2bff = "Le filament est épuisé, veuillez retirer le filament restant à travers le tube en téflon et le remplacer par un nouveau filament avant de continuer l'impression."
    local_2c3d = "Confirmer"
    jmp lbl_223fb

lbl_22243:
    if global_14 != 6 then jump lbl_2231d
    local_2bff = "O filamento acabou, por favor, remova o filamento restante através do tubo de teflon e substitua-o por um novo filamento antes de continuar a imprimir."
    local_2c3d = "Confirmar"
    jmp lbl_223fb

lbl_2231d:
    if global_14 != 7 then jump lbl_223fb
    local_2bff = "Il filamento è esaurito, si prega di rimuovere il filamento rimanente attraverso il tubo in teflon e sostituirlo con un nuovo filamento prima di continuare a stampare."
    local_2c3d = "Conferma"

lbl_223fb:
    doevents
    down
    up

; object id 1 (text 't0'): x=53, y=24, w=224, h=153, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="耗材已用尽，请通过铁氟龙管将剩余耗材移除，并更换新的耗材后继续打印"
; text:
;   0: "耗材已用尽，请通过铁氟龙管将剩余耗材移除，并更换新的耗材后继续打印"
;   1: "Filament has run out, please remove the remaining filament through the Teflon tube and replace it with new filament before continuing to print."
;   2: "フィラメントが尽きました。テフロン管を通じて残りのフィラメントを取り除き、新しいフィラメントに交換した後、印刷を続けてください。"
;   3: "Das Filament ist aufgebraucht. Entfernen Sie das verbleibende Filament durch das Teflonschlauch und ersetzen Sie es durch neues Filament, bevor Sie mit dem Drucken fortfahren."
;   4: "El filamento se ha agotado, por favor, retire el filamento restante a través del tubo de teflón y reemplácelo con filamento nuevo antes de continuar imprimiendo."
;   5: "Le filament est épuisé, veuillez retirer le filament restant à travers le tube en téflon et le remplacer par un nouveau filament avant de continuer l'impression."
;   6: "O filamento acabou, por favor, remova o filamento restante através do tubo de teflon e substitua-o por um novo filamento antes de continuar a imprimir."
;   7: "Il filamento è esaurito, si prega di rimuovere il filamento rimanente attraverso il tubo in teflon e sostituirlo con un nuovo filamento prima di continuare a stampare."

; object id 2 (timer 'tm0'): x=0, y=0, w=1, h=1, name hash=0x61f3d436
; flags=0x27, events: timer=0x218ff
; tim=1000, en=1

; timer
.org 0x218ff
    if global_1c <= 0 then jump lbl_2195b
    if global_20 <= 0 then jump lbl_2195b
    global_20--
    if global_20 != 0 then jump lbl_2195b
    dim = global_30

lbl_2195b:
    down
    up

; object id 3 (touchcap 'tc0'): x=0, y=0, w=1, h=1, name hash=0xee6b6f88
; flags=0x27, events: touch_release=0x21975

; touch_release
.org 0x21975
    global_20 = global_18
    dims = global_2c
    down
    up

; object id 4 (button 'b0'): x=137, y=216, w=205, h=44, name hash=0xce1a7436
; flags=0x37, aph=127, events: touch_release=0x219ad
; borderc=0x0000, picc=111, picc2=111, pco=0xffff, xcen=1, ycen=1, txt_maxl=100, isbr=1, txt="确认"
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
; 021b4f:  ff ff                                            |..|

; touch_release
.org 0x219ad
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 411 bytes (5 trailing zero bytes dropped)
; 021b5f:  00 00 00 00 e8 80 97 e6 9d 90 e5 b7 b2 e7 94 a8  |................|
; 021b6f:  e5 b0 bd ef bc 8c e8 af b7 e9 80 9a e8 bf 87 e9  |................|
; 021b7f:  93 81 e6 b0 9f e9 be 99 e7 ae a1 e5 b0 86 e5 89  |................|
; 021b8f:  a9 e4 bd 99 e8 80 97 e6 9d 90 e7 a7 bb e9 99 a4  |................|
; 021b9f:  ef bc 8c e5 b9 b6 e6 9b b4 e6 8d a2 e6 96 b0 e7  |................|
; 021baf:  9a 84 e8 80 97 e6 9d 90 e5 90 8e e7 bb a7 e7 bb  |................|
; 021bbf:  ad e6 89 93 e5 8d b0 00 e6 8d a2 e6 96 99 ef bc  |................|
; 021bcf:  9f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 021bdf:  00 00 7f 00 00 00 00 00 91 00 5e 00 46 00 26 00  |..........^.F.&.|
; 021bef:  d6 00 83 00 00 00 00 00 00 00 00 00 00 00 24 00  |..............$.|
; 021bff:  25 00 ff ff ff ff 01 01 00 00 64 00 14 bf 00 00  |%.........d.....|
; 021c0f:  01 00 00 00 62 0d 00 00 00 00 00 00 00 00 00 00  |....b...........|
; 021c1f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 021c2f:  00 00 00 00 00 00 7f 00 00 00 00 00 fc 00 5d 00  |..............].|
; 021c3f:  46 00 26 00 41 01 82 00 00 00 00 00 00 00 00 00  |F.&.A...........|
; 021c4f:  00 00 24 00 25 00 ff ff ff ff 01 01 00 00 64 00  |..$.%.........d.|
; 021c5f:  7c bf 00 00 01 00 00 00 62 0f 00 00 00 00 00 00  ||.......b.......|
; 021c6f:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 021c7f:  00 00 00 00 00 00 00 00 00 00 7f 00 00 00 00 00  |................|
; 021c8f:  80 01 5d 00 e7 a1 ae e8 ae a4 00 00 00 00 00 00  |..].............|
; 021c9f:  00 00 00 00 00 00 24 00 25 00 ff ff ff ff 01 01  |......$.%.......|
; 021caf:  00 00 64 00 e4 bf 00 00 01 00 00 00 62 10 00 00  |..d.........b...|
; 021cbf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 021ccf:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 7f 00  |................|
; 021cdf:  00 00 00 00 fc 00 93 00 46 00 26 00 e6 98 af 00  |........F.&.....|
; 021cef:  00 00 00 00 00 00 00 00 00 00 24                 |..........$|
