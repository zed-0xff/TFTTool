; page 90: 3 objects

; object address table, 3 objects, block loaded at 0xb950
.dd 0xb95c, 0xb99c, 0xb9f0

; object id 0 (page): x=0, y=0, w=480, h=272, name hash=0xe0d0da9
; flags=0x37, aph=127
; sta=2, pic=2
; 0574d0:  00 00 00 00 ff ff ff ff                          |........|

; load
.org 0x576f4
    if global_14 != 0 then jump lbl_5775d
    local_7727 = "腔室加热模块安装后，添加相关配置才可使用"
    jmp lbl_57c20

lbl_5775d:
    if global_14 != 1 then jump lbl_577f4
    local_7727 = "After installing the chamber heating module, relevant configurations should be added before it can be used"
    jmp lbl_57c20

lbl_577f4:
    if global_14 != 2 then jump lbl_57896
    local_7727 = "チャンバー加熱モジュールを取り付けた後、関連する設定を追加してから使用できます"
    jmp lbl_57c20

lbl_57896:
    if global_14 != 3 then jump lbl_57946
    local_7727 = "Nach der Installation des Kammerheizmoduls müssen die relevanten Einstellungen hinzugefügt werden, bevor es verwendet werden kann"
    jmp lbl_57c20

lbl_57946:
    if global_14 != 4 then jump lbl_57a02
    local_7727 = "Después de instalar el módulo de calentamiento de la cámara, deben agregarse las configuraciones relacionadas antes de que se pueda utilizar"
    jmp lbl_57c20

lbl_57a02:
    if global_14 != 5 then jump lbl_57abf
    local_7727 = "Après avoir installé le module de chauffage de la chambre, les configurations appropriées doivent être ajoutées avant de pouvoir l'utiliser"
    jmp lbl_57c20

lbl_57abf:
    if global_14 != 6 then jump lbl_57b74
    local_7727 = "Após instalar o módulo de aquecimento da câmara, as configurações relacionadas devem ser adicionadas antes de ser possível usá-lo"
    jmp lbl_57c20

lbl_57b74:
    if global_14 != 7 then jump lbl_57c20
    local_7727 = "Dopo aver installato il modulo di riscaldamento della camera, devono essere aggiunte le configurazioni correlate prima di poterne fare uso"

lbl_57c20:
    if global_14 != 0 then jump lbl_57c53
    local_7750 = "确定"
    jmp lbl_57da0

lbl_57c53:
    if global_14 != 1 then jump lbl_57c82
    local_7750 = "OK"
    jmp lbl_57da0

lbl_57c82:
    if global_14 != 2 then jump lbl_57cb5
    local_7750 = "確定"
    jmp lbl_57da0

lbl_57cb5:
    if global_14 != 3 then jump lbl_57ce4
    local_7750 = "OK"
    jmp lbl_57da0

lbl_57ce4:
    if global_14 != 4 then jump lbl_57d18
    local_7750 = "Aceptar"
    jmp lbl_57da0

lbl_57d18:
    if global_14 != 5 then jump lbl_57d4d
    local_7750 = "D'accord"
    jmp lbl_57da0

lbl_57d4d:
    if global_14 != 6 then jump lbl_57d7c
    local_7750 = "OK"
    jmp lbl_57da0

lbl_57d7c:
    if global_14 != 7 then jump lbl_57da0
    local_7750 = "OK"

lbl_57da0:
    doevents

; object id 1 (text 't0'): x=101, y=61, w=276, h=91, name hash=0xc02992d9
; flags=0x37, aph=127
; sta=3, font=0, pco=0xffff, xcen=1, ycen=1, txt_maxl=300, isbr=1, background=0, txt="腔室加热模块安装后，添加相关配置才可使用"
; text:
;   0: "腔室加热模块安装后，添加相关配置才可使用"
;   1: "After installing the chamber heating module, relevant configurations should be added before it can be used"
;   2: "チャンバー加熱モジュールを取り付けた後、関連する設定を追加してから使用できます"
;   3: "Nach der Installation des Kammerheizmoduls müssen die relevanten Einstellungen hinzugefügt werden, bevor es verwendet werden kann"
;   4: "Después de instalar el módulo de calentamiento de la cámara, deben agregarse las configuraciones relacionadas antes de que se pueda utilizar"
;   5: "Après avoir installé le module de chauffage de la chambre, les configurations appropriées doivent être ajoutées avant de pouvoir l'utiliser"
;   6: "Após instalar o módulo de aquecimento da câmara, as configurações relacionadas devem ser adicionadas antes de ser possível usá-lo"
;   7: "Dopo aver installato il modulo di riscaldamento della camera, devono essere aggiunte le configurazioni correlate prima di poterne fare uso"

; object id 2 (button 'b1'): x=175, y=170, w=130, h=43, name hash=0xb8756f4e
; flags=0x37, aph=127, events: touch_release=0x57426
; borderc=0x0000, picc=2, picc2=3, pco=0xffff, xcen=1, ycen=1, txt_maxl=50, isbr=0, txt="确定"
; text:
;   0: "确定"
;   1: "OK"
;   2: "確定"
;   3: "OK"
;   4: "Aceptar"
;   5: "D'accord"
;   6: "OK"
;   7: "OK"
; touch_release reports to the host: page <page>, widget 0
; 057574:  ff ff                                            |..|

; touch_release
.org 0x57426
    prints 0x65, 1
    prints dp, 1
    prints 0, 1
    prints 0xff, 1
    prints 0xff, 1
    prints 0xff, 1

; data after the object structs, 357 bytes (7 trailing zero bytes dropped)
; 057584:  00 00 00 00 e8 85 94 e5 ae a4 e5 8a a0 e7 83 ad  |................|
; 057594:  e6 a8 a1 e5 9d 97 e5 ae 89 e8 a3 85 e5 90 8e ef  |................|
; 0575a4:  bc 8c e6 b7 bb e5 8a a0 e7 9b b8 e5 85 b3 e9 85  |................|
; 0575b4:  8d e7 bd ae e6 89 8d e5 8f af e4 bd bf e7 94 a8  |................|
; 0575c4:  00 00 00 00 48 00 26 00 f2 00 28 00 39 01 4d 00  |....H.&...(.9.M.|
; 0575d4:  00 00 00 00 03 00 00 00 00 00 00 00 ff ff 00 01  |................|
; 0575e4:  00 00 c8 00 ac be 00 00 01 00 00 00 00 00 00 00  |................|
; 0575f4:  74 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |t...............|
; 057604:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 057614:  00 00 7f 00 00 00 00 00 48 00 7b 00 dd 00 2a 00  |........H.{...*.|
; 057624:  24 01 a4 00 00 00 00 00 03 00 00 00 00 00 00 00  |$...............|
; 057634:  ff ff 00 01 00 00 c8 00 78 bf 00 00 01 00 00 00  |........x.......|
; 057644:  00 00 00 00 74 05 00 00 00 00 00 00 00 00 00 00  |....t...........|
; 057654:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 057664:  00 00 00 00 00 00 7f 00 00 00 00 00 00 00 ac 00  |................|
; 057674:  a5 00 19 00 a4 00 c4 00 00 00 00 00 03 00 00 00  |................|
; 057684:  00 00 00 00 ff ff 02 01 00 00 c8 00 44 c0 00 00  |............D...|
; 057694:  01 00 00 00 00 00 00 00 74 06 00 00 00 00 00 00  |........t.......|
; 0576a4:  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  |................|
; 0576b4:  00 00 00 00 e7 a1 ae e5 ae 9a 00 00 00 00 00 00  |................|
; 0576c4:  00 00 c1 00 a5 00 19 00 a4 00 d9 00 00 00 00 00  |................|
; 0576d4:  03 00 00 00 00 00 00 00 ff ff 02 01 00 00 c8 00  |................|
; 0576e4:  10 c1 00 00 01                                   |.....|
