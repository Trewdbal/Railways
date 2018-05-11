                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module game
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _trainManagement
                             12 	.globl _drawTrains
                             13 	.globl _setPixel
                             14 	.globl _drawWorld
                             15 	.globl _drawScrolls
                             16 	.globl _drawTile
                             17 	.globl _generateWorld
                             18 	.globl _drawCursor
                             19 	.globl _drawWindow
                             20 	.globl _drawMenu
                             21 	.globl _drawBoxM2
                             22 	.globl _putM2
                             23 	.globl _putM1
                             24 	.globl _cpct_getScreenPtr
                             25 	.globl _cpct_drawStringM2
                             26 	.globl _cpct_px2byteM1
                             27 	.globl _cpct_isKeyPressed
                             28 	.globl _cpct_scanKeyboard
                             29 	.globl _cpct_memset
                             30 	.globl _windowInfoTile
                             31 	.globl _menuStations
                             32 	.globl _menuTile
                             33 	.globl _game
                             34 ;--------------------------------------------------------
                             35 ; special function registers
                             36 ;--------------------------------------------------------
                             37 ;--------------------------------------------------------
                             38 ; ram data
                             39 ;--------------------------------------------------------
                             40 	.area _DATA
                             41 ;--------------------------------------------------------
                             42 ; ram data
                             43 ;--------------------------------------------------------
                             44 	.area _INITIALIZED
                             45 ;--------------------------------------------------------
                             46 ; absolute external ram data
                             47 ;--------------------------------------------------------
                             48 	.area _DABS (ABS)
                             49 ;--------------------------------------------------------
                             50 ; global & static initialisations
                             51 ;--------------------------------------------------------
                             52 	.area _HOME
                             53 	.area _GSINIT
                             54 	.area _GSFINAL
                             55 	.area _GSINIT
                             56 ;--------------------------------------------------------
                             57 ; Home
                             58 ;--------------------------------------------------------
                             59 	.area _HOME
                             60 	.area _HOME
                             61 ;--------------------------------------------------------
                             62 ; code
                             63 ;--------------------------------------------------------
                             64 	.area _CODE
                             65 ;src/game/game.c:3: void windowInfoTile(u8 x, u8 y)
                             66 ;	---------------------------------
                             67 ; Function windowInfoTile
                             68 ; ---------------------------------
   4ED4                      69 _windowInfoTile::
   4ED4 DD E5         [15]   70 	push	ix
   4ED6 DD 21 00 00   [14]   71 	ld	ix,#0
   4EDA DD 39         [15]   72 	add	ix,sp
   4EDC 21 F4 FF      [10]   73 	ld	hl, #-12
   4EDF 39            [11]   74 	add	hl, sp
   4EE0 F9            [ 6]   75 	ld	sp, hl
                             76 ;src/game/game.c:7: txtWindowInfoTile[1] = "";
   4EE1 21 00 00      [10]   77 	ld	hl, #0x0000
   4EE4 39            [11]   78 	add	hl, sp
   4EE5 4D            [ 4]   79 	ld	c,l
   4EE6 44            [ 4]   80 	ld	b,h
   4EE7 23            [ 6]   81 	inc	hl
   4EE8 23            [ 6]   82 	inc	hl
   4EE9 11 D4 4F      [10]   83 	ld	de, #___str_0+0
   4EEC 73            [ 7]   84 	ld	(hl), e
   4EED 23            [ 6]   85 	inc	hl
   4EEE 72            [ 7]   86 	ld	(hl), d
                             87 ;src/game/game.c:8: txtWindowInfoTile[2] = "Production: Nothing";
   4EEF 21 04 00      [10]   88 	ld	hl, #0x0004
   4EF2 09            [11]   89 	add	hl,bc
   4EF3 DD 75 FC      [19]   90 	ld	-4 (ix), l
   4EF6 DD 74 FD      [19]   91 	ld	-3 (ix), h
   4EF9 36 D5         [10]   92 	ld	(hl), #<(___str_1)
   4EFB 23            [ 6]   93 	inc	hl
   4EFC 36 4F         [10]   94 	ld	(hl), #>(___str_1)
                             95 ;src/game/game.c:9: txtWindowInfoTile[3] = "Demand: Nothing";
   4EFE 21 06 00      [10]   96 	ld	hl, #0x0006
   4F01 09            [11]   97 	add	hl,bc
   4F02 DD 75 FE      [19]   98 	ld	-2 (ix), l
   4F05 DD 74 FF      [19]   99 	ld	-1 (ix), h
   4F08 36 E9         [10]  100 	ld	(hl), #<(___str_2)
   4F0A 23            [ 6]  101 	inc	hl
   4F0B 36 4F         [10]  102 	ld	(hl), #>(___str_2)
                            103 ;src/game/game.c:11: switch(p_world[y*WIDTH+x])
   4F0D DD 5E 05      [19]  104 	ld	e,5 (ix)
   4F10 16 00         [ 7]  105 	ld	d,#0x00
   4F12 6B            [ 4]  106 	ld	l, e
   4F13 62            [ 4]  107 	ld	h, d
   4F14 29            [11]  108 	add	hl, hl
   4F15 29            [11]  109 	add	hl, hl
   4F16 19            [11]  110 	add	hl, de
   4F17 29            [11]  111 	add	hl, hl
   4F18 29            [11]  112 	add	hl, hl
   4F19 29            [11]  113 	add	hl, hl
   4F1A 29            [11]  114 	add	hl, hl
   4F1B DD 5E 04      [19]  115 	ld	e, 4 (ix)
   4F1E 16 00         [ 7]  116 	ld	d, #0x00
   4F20 19            [11]  117 	add	hl, de
   4F21 11 0D 68      [10]  118 	ld	de, #_p_world
   4F24 19            [11]  119 	add	hl, de
   4F25 5E            [ 7]  120 	ld	e, (hl)
   4F26 3E 09         [ 7]  121 	ld	a, #0x09
   4F28 93            [ 4]  122 	sub	a, e
   4F29 DA C0 4F      [10]  123 	jp	C, 00111$
   4F2C 16 00         [ 7]  124 	ld	d, #0x00
   4F2E 21 35 4F      [10]  125 	ld	hl, #00119$
   4F31 19            [11]  126 	add	hl, de
   4F32 19            [11]  127 	add	hl, de
   4F33 19            [11]  128 	add	hl, de
   4F34 E9            [ 4]  129 	jp	(hl)
   4F35                     130 00119$:
   4F35 C3 53 4F      [10]  131 	jp	00102$
   4F38 C3 53 4F      [10]  132 	jp	00102$
   4F3B C3 5C 4F      [10]  133 	jp	00105$
   4F3E C3 5C 4F      [10]  134 	jp	00105$
   4F41 C3 5C 4F      [10]  135 	jp	00105$
   4F44 C3 7B 4F      [10]  136 	jp	00107$
   4F47 C3 7B 4F      [10]  137 	jp	00107$
   4F4A C3 8F 4F      [10]  138 	jp	00108$
   4F4D C3 98 4F      [10]  139 	jp	00109$
   4F50 C3 A1 4F      [10]  140 	jp	00110$
                            141 ;src/game/game.c:14: case GRASS2:
   4F53                     142 00102$:
                            143 ;src/game/game.c:15: txtWindowInfoTile[0] = "Grassland";
   4F53 69            [ 4]  144 	ld	l, c
   4F54 60            [ 4]  145 	ld	h, b
   4F55 36 F9         [10]  146 	ld	(hl), #<(___str_3)
   4F57 23            [ 6]  147 	inc	hl
   4F58 36 4F         [10]  148 	ld	(hl), #>(___str_3)
                            149 ;src/game/game.c:16: break;
   4F5A 18 6B         [12]  150 	jr	00112$
                            151 ;src/game/game.c:19: case DWELLINGS3:
   4F5C                     152 00105$:
                            153 ;src/game/game.c:20: txtWindowInfoTile[0] = "City";
   4F5C 69            [ 4]  154 	ld	l, c
   4F5D 60            [ 4]  155 	ld	h, b
   4F5E 36 03         [10]  156 	ld	(hl), #<(___str_4)
   4F60 23            [ 6]  157 	inc	hl
   4F61 36 50         [10]  158 	ld	(hl), #>(___str_4)
                            159 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   4F63 DD 6E FC      [19]  160 	ld	l,-4 (ix)
   4F66 DD 66 FD      [19]  161 	ld	h,-3 (ix)
   4F69 36 08         [10]  162 	ld	(hl), #<(___str_5)
   4F6B 23            [ 6]  163 	inc	hl
   4F6C 36 50         [10]  164 	ld	(hl), #>(___str_5)
                            165 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4F6E DD 6E FE      [19]  166 	ld	l,-2 (ix)
   4F71 DD 66 FF      [19]  167 	ld	h,-1 (ix)
   4F74 36 25         [10]  168 	ld	(hl), #<(___str_6)
   4F76 23            [ 6]  169 	inc	hl
   4F77 36 50         [10]  170 	ld	(hl), #>(___str_6)
                            171 ;src/game/game.c:23: break;
   4F79 18 4C         [12]  172 	jr	00112$
                            173 ;src/game/game.c:25: case FARM2:
   4F7B                     174 00107$:
                            175 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   4F7B 69            [ 4]  176 	ld	l, c
   4F7C 60            [ 4]  177 	ld	h, b
   4F7D 36 4A         [10]  178 	ld	(hl), #<(___str_7)
   4F7F 23            [ 6]  179 	inc	hl
   4F80 36 50         [10]  180 	ld	(hl), #>(___str_7)
                            181 ;src/game/game.c:27: txtWindowInfoTile[2] = "Production: Cereal";
   4F82 DD 6E FC      [19]  182 	ld	l,-4 (ix)
   4F85 DD 66 FD      [19]  183 	ld	h,-3 (ix)
   4F88 36 4F         [10]  184 	ld	(hl), #<(___str_8)
   4F8A 23            [ 6]  185 	inc	hl
   4F8B 36 50         [10]  186 	ld	(hl), #>(___str_8)
                            187 ;src/game/game.c:28: break;
   4F8D 18 38         [12]  188 	jr	00112$
                            189 ;src/game/game.c:29: case WATER:
   4F8F                     190 00108$:
                            191 ;src/game/game.c:30: txtWindowInfoTile[0] = "Water";
   4F8F 69            [ 4]  192 	ld	l, c
   4F90 60            [ 4]  193 	ld	h, b
   4F91 36 62         [10]  194 	ld	(hl), #<(___str_9)
   4F93 23            [ 6]  195 	inc	hl
   4F94 36 50         [10]  196 	ld	(hl), #>(___str_9)
                            197 ;src/game/game.c:31: break;
   4F96 18 2F         [12]  198 	jr	00112$
                            199 ;src/game/game.c:32: case FOREST:
   4F98                     200 00109$:
                            201 ;src/game/game.c:33: txtWindowInfoTile[0] = "Forest";
   4F98 69            [ 4]  202 	ld	l, c
   4F99 60            [ 4]  203 	ld	h, b
   4F9A 36 68         [10]  204 	ld	(hl), #<(___str_10)
   4F9C 23            [ 6]  205 	inc	hl
   4F9D 36 50         [10]  206 	ld	(hl), #>(___str_10)
                            207 ;src/game/game.c:34: break;
   4F9F 18 26         [12]  208 	jr	00112$
                            209 ;src/game/game.c:35: case LIVESTOCK:
   4FA1                     210 00110$:
                            211 ;src/game/game.c:36: txtWindowInfoTile[0] = "Livestock farming";
   4FA1 69            [ 4]  212 	ld	l, c
   4FA2 60            [ 4]  213 	ld	h, b
   4FA3 36 6F         [10]  214 	ld	(hl), #<(___str_11)
   4FA5 23            [ 6]  215 	inc	hl
   4FA6 36 50         [10]  216 	ld	(hl), #>(___str_11)
                            217 ;src/game/game.c:37: txtWindowInfoTile[2] = "Production: Livestock, wool";
   4FA8 DD 6E FC      [19]  218 	ld	l,-4 (ix)
   4FAB DD 66 FD      [19]  219 	ld	h,-3 (ix)
   4FAE 36 81         [10]  220 	ld	(hl), #<(___str_12)
   4FB0 23            [ 6]  221 	inc	hl
   4FB1 36 50         [10]  222 	ld	(hl), #>(___str_12)
                            223 ;src/game/game.c:38: txtWindowInfoTile[3] = "Demand: Cereal";
   4FB3 DD 6E FE      [19]  224 	ld	l,-2 (ix)
   4FB6 DD 66 FF      [19]  225 	ld	h,-1 (ix)
   4FB9 36 9D         [10]  226 	ld	(hl), #<(___str_13)
   4FBB 23            [ 6]  227 	inc	hl
   4FBC 36 50         [10]  228 	ld	(hl), #>(___str_13)
                            229 ;src/game/game.c:39: break;
   4FBE 18 07         [12]  230 	jr	00112$
                            231 ;src/game/game.c:40: default:
   4FC0                     232 00111$:
                            233 ;src/game/game.c:41: txtWindowInfoTile[0] = "Not yet implemented";
   4FC0 69            [ 4]  234 	ld	l, c
   4FC1 60            [ 4]  235 	ld	h, b
   4FC2 36 AC         [10]  236 	ld	(hl), #<(___str_14)
   4FC4 23            [ 6]  237 	inc	hl
   4FC5 36 50         [10]  238 	ld	(hl), #>(___str_14)
                            239 ;src/game/game.c:42: }
   4FC7                     240 00112$:
                            241 ;src/game/game.c:44: drawWindow(txtWindowInfoTile, 4, 0);
   4FC7 21 04 00      [10]  242 	ld	hl, #0x0004
   4FCA E5            [11]  243 	push	hl
   4FCB C5            [11]  244 	push	bc
   4FCC CD 2D 46      [17]  245 	call	_drawWindow
   4FCF DD F9         [10]  246 	ld	sp,ix
   4FD1 DD E1         [14]  247 	pop	ix
   4FD3 C9            [10]  248 	ret
   4FD4                     249 ___str_0:
   4FD4 00                  250 	.db 0x00
   4FD5                     251 ___str_1:
   4FD5 50 72 6F 64 75 63   252 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   4FE8 00                  253 	.db 0x00
   4FE9                     254 ___str_2:
   4FE9 44 65 6D 61 6E 64   255 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   4FF8 00                  256 	.db 0x00
   4FF9                     257 ___str_3:
   4FF9 47 72 61 73 73 6C   258 	.ascii "Grassland"
        61 6E 64
   5002 00                  259 	.db 0x00
   5003                     260 ___str_4:
   5003 43 69 74 79         261 	.ascii "City"
   5007 00                  262 	.db 0x00
   5008                     263 ___str_5:
   5008 50 72 6F 64 75 63   264 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   5024 00                  265 	.db 0x00
   5025                     266 ___str_6:
   5025 44 65 6D 61 6E 64   267 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   5049 00                  268 	.db 0x00
   504A                     269 ___str_7:
   504A 46 61 72 6D         270 	.ascii "Farm"
   504E 00                  271 	.db 0x00
   504F                     272 ___str_8:
   504F 50 72 6F 64 75 63   273 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   5061 00                  274 	.db 0x00
   5062                     275 ___str_9:
   5062 57 61 74 65 72      276 	.ascii "Water"
   5067 00                  277 	.db 0x00
   5068                     278 ___str_10:
   5068 46 6F 72 65 73 74   279 	.ascii "Forest"
   506E 00                  280 	.db 0x00
   506F                     281 ___str_11:
   506F 4C 69 76 65 73 74   282 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   5080 00                  283 	.db 0x00
   5081                     284 ___str_12:
   5081 50 72 6F 64 75 63   285 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   509C 00                  286 	.db 0x00
   509D                     287 ___str_13:
   509D 44 65 6D 61 6E 64   288 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   50AB 00                  289 	.db 0x00
   50AC                     290 ___str_14:
   50AC 4E 6F 74 20 79 65   291 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   50BF 00                  292 	.db 0x00
                            293 ;src/game/game.c:47: void menuStations()
                            294 ;	---------------------------------
                            295 ; Function menuStations
                            296 ; ---------------------------------
   50C0                     297 _menuStations::
   50C0 DD E5         [15]  298 	push	ix
   50C2 DD 21 00 00   [14]  299 	ld	ix,#0
   50C6 DD 39         [15]  300 	add	ix,sp
   50C8 21 FA FF      [10]  301 	ld	hl, #-6
   50CB 39            [11]  302 	add	hl, sp
   50CC F9            [ 6]  303 	ld	sp, hl
                            304 ;src/game/game.c:51: const char *txtMenuSizeStation[] = { 
   50CD 21 00 00      [10]  305 	ld	hl, #0x0000
   50D0 39            [11]  306 	add	hl, sp
   50D1 4D            [ 4]  307 	ld	c,l
   50D2 44            [ 4]  308 	ld	b,h
   50D3 36 1C         [10]  309 	ld	(hl), #<(___str_15)
   50D5 23            [ 6]  310 	inc	hl
   50D6 36 51         [10]  311 	ld	(hl), #>(___str_15)
   50D8 69            [ 4]  312 	ld	l, c
   50D9 60            [ 4]  313 	ld	h, b
   50DA 23            [ 6]  314 	inc	hl
   50DB 23            [ 6]  315 	inc	hl
   50DC 11 22 51      [10]  316 	ld	de, #___str_16+0
   50DF 73            [ 7]  317 	ld	(hl), e
   50E0 23            [ 6]  318 	inc	hl
   50E1 72            [ 7]  319 	ld	(hl), d
   50E2 21 04 00      [10]  320 	ld	hl, #0x0004
   50E5 09            [11]  321 	add	hl, bc
   50E6 11 29 51      [10]  322 	ld	de, #___str_17+0
   50E9 73            [ 7]  323 	ld	(hl), e
   50EA 23            [ 6]  324 	inc	hl
   50EB 72            [ 7]  325 	ld	(hl), d
                            326 ;src/game/game.c:57: result = drawMenu(txtMenuSizeStation,3);
   50EC 3E 03         [ 7]  327 	ld	a, #0x03
   50EE F5            [11]  328 	push	af
   50EF 33            [ 6]  329 	inc	sp
   50F0 C5            [11]  330 	push	bc
   50F1 CD 2F 45      [17]  331 	call	_drawMenu
   50F4 F1            [10]  332 	pop	af
   50F5 33            [ 6]  333 	inc	sp
   50F6 7D            [ 4]  334 	ld	a, l
                            335 ;src/game/game.c:59: switch(result)
   50F7 B7            [ 4]  336 	or	a, a
   50F8 28 0A         [12]  337 	jr	Z,00101$
   50FA FE 01         [ 7]  338 	cp	a, #0x01
   50FC 28 0D         [12]  339 	jr	Z,00102$
   50FE D6 02         [ 7]  340 	sub	a, #0x02
   5100 28 10         [12]  341 	jr	Z,00103$
   5102 18 13         [12]  342 	jr	00105$
                            343 ;src/game/game.c:61: case 0:
   5104                     344 00101$:
                            345 ;src/game/game.c:62: CURSOR_MODE=T_SSEW;
   5104 21 11 77      [10]  346 	ld	hl,#_CURSOR_MODE + 0
   5107 36 03         [10]  347 	ld	(hl), #0x03
                            348 ;src/game/game.c:63: break;
   5109 18 0C         [12]  349 	jr	00105$
                            350 ;src/game/game.c:65: case 1:
   510B                     351 00102$:
                            352 ;src/game/game.c:66: CURSOR_MODE=T_SMEW;
   510B 21 11 77      [10]  353 	ld	hl,#_CURSOR_MODE + 0
   510E 36 05         [10]  354 	ld	(hl), #0x05
                            355 ;src/game/game.c:67: break;
   5110 18 05         [12]  356 	jr	00105$
                            357 ;src/game/game.c:69: case 2:
   5112                     358 00103$:
                            359 ;src/game/game.c:70: CURSOR_MODE=T_SLEW;
   5112 21 11 77      [10]  360 	ld	hl,#_CURSOR_MODE + 0
   5115 36 07         [10]  361 	ld	(hl), #0x07
                            362 ;src/game/game.c:72: }
   5117                     363 00105$:
   5117 DD F9         [10]  364 	ld	sp, ix
   5119 DD E1         [14]  365 	pop	ix
   511B C9            [10]  366 	ret
   511C                     367 ___str_15:
   511C 53 6D 61 6C 6C      368 	.ascii "Small"
   5121 00                  369 	.db 0x00
   5122                     370 ___str_16:
   5122 4D 65 64 69 75 6D   371 	.ascii "Medium"
   5128 00                  372 	.db 0x00
   5129                     373 ___str_17:
   5129 4C 61 72 67 65      374 	.ascii "Large"
   512E 00                  375 	.db 0x00
                            376 ;src/game/game.c:75: void menuTile(u8 x, u8 y)
                            377 ;	---------------------------------
                            378 ; Function menuTile
                            379 ; ---------------------------------
   512F                     380 _menuTile::
   512F DD E5         [15]  381 	push	ix
   5131 DD 21 00 00   [14]  382 	ld	ix,#0
   5135 DD 39         [15]  383 	add	ix,sp
   5137 21 E6 FF      [10]  384 	ld	hl, #-26
   513A 39            [11]  385 	add	hl, sp
   513B F9            [ 6]  386 	ld	sp, hl
                            387 ;src/game/game.c:79: const char *txtMenuTile[] = { 
   513C 21 06 00      [10]  388 	ld	hl, #0x0006
   513F 39            [11]  389 	add	hl, sp
   5140 4D            [ 4]  390 	ld	c,l
   5141 44            [ 4]  391 	ld	b,h
   5142 36 53         [10]  392 	ld	(hl), #<(___str_18)
   5144 23            [ 6]  393 	inc	hl
   5145 36 52         [10]  394 	ld	(hl), #>(___str_18)
   5147 69            [ 4]  395 	ld	l, c
   5148 60            [ 4]  396 	ld	h, b
   5149 23            [ 6]  397 	inc	hl
   514A 23            [ 6]  398 	inc	hl
   514B 11 63 52      [10]  399 	ld	de, #___str_19+0
   514E 73            [ 7]  400 	ld	(hl), e
   514F 23            [ 6]  401 	inc	hl
   5150 72            [ 7]  402 	ld	(hl), d
   5151 21 04 00      [10]  403 	ld	hl, #0x0004
   5154 09            [11]  404 	add	hl, bc
   5155 11 73 52      [10]  405 	ld	de, #___str_20+0
   5158 73            [ 7]  406 	ld	(hl), e
   5159 23            [ 6]  407 	inc	hl
   515A 72            [ 7]  408 	ld	(hl), d
   515B 21 06 00      [10]  409 	ld	hl, #0x0006
   515E 09            [11]  410 	add	hl, bc
   515F 11 83 52      [10]  411 	ld	de, #___str_21+0
   5162 73            [ 7]  412 	ld	(hl), e
   5163 23            [ 6]  413 	inc	hl
   5164 72            [ 7]  414 	ld	(hl), d
   5165 21 08 00      [10]  415 	ld	hl, #0x0008
   5168 09            [11]  416 	add	hl, bc
   5169 11 8B 52      [10]  417 	ld	de, #___str_22+0
   516C 73            [ 7]  418 	ld	(hl), e
   516D 23            [ 6]  419 	inc	hl
   516E 72            [ 7]  420 	ld	(hl), d
   516F 21 0A 00      [10]  421 	ld	hl, #0x000a
   5172 09            [11]  422 	add	hl, bc
   5173 11 9C 52      [10]  423 	ld	de, #___str_23+0
   5176 73            [ 7]  424 	ld	(hl), e
   5177 23            [ 6]  425 	inc	hl
   5178 72            [ 7]  426 	ld	(hl), d
   5179 21 0C 00      [10]  427 	ld	hl, #0x000c
   517C 09            [11]  428 	add	hl, bc
   517D 11 A7 52      [10]  429 	ld	de, #___str_24+0
   5180 73            [ 7]  430 	ld	(hl), e
   5181 23            [ 6]  431 	inc	hl
   5182 72            [ 7]  432 	ld	(hl), d
                            433 ;src/game/game.c:89: const char *txtWindowDestroy[] = { 
   5183 21 00 00      [10]  434 	ld	hl, #0x0000
   5186 39            [11]  435 	add	hl, sp
   5187 DD 75 FE      [19]  436 	ld	-2 (ix), l
   518A DD 74 FF      [19]  437 	ld	-1 (ix), h
   518D 36 AE         [10]  438 	ld	(hl), #<(___str_25)
   518F 23            [ 6]  439 	inc	hl
   5190 36 52         [10]  440 	ld	(hl), #>(___str_25)
   5192 DD 6E FE      [19]  441 	ld	l,-2 (ix)
   5195 DD 66 FF      [19]  442 	ld	h,-1 (ix)
   5198 23            [ 6]  443 	inc	hl
   5199 23            [ 6]  444 	inc	hl
   519A 11 D1 52      [10]  445 	ld	de, #___str_26+0
   519D 73            [ 7]  446 	ld	(hl), e
   519E 23            [ 6]  447 	inc	hl
   519F 72            [ 7]  448 	ld	(hl), d
   51A0 DD 7E FE      [19]  449 	ld	a, -2 (ix)
   51A3 C6 04         [ 7]  450 	add	a, #0x04
   51A5 6F            [ 4]  451 	ld	l, a
   51A6 DD 7E FF      [19]  452 	ld	a, -1 (ix)
   51A9 CE 00         [ 7]  453 	adc	a, #0x00
   51AB 67            [ 4]  454 	ld	h, a
   51AC 11 D2 52      [10]  455 	ld	de, #___str_27+0
   51AF 73            [ 7]  456 	ld	(hl), e
   51B0 23            [ 6]  457 	inc	hl
   51B1 72            [ 7]  458 	ld	(hl), d
                            459 ;src/game/game.c:96: putM2();
   51B2 C5            [11]  460 	push	bc
   51B3 CD 44 41      [17]  461 	call	_putM2
   51B6 C1            [10]  462 	pop	bc
                            463 ;src/game/game.c:98: do{
   51B7 DD 5E 05      [19]  464 	ld	e,5 (ix)
   51BA 16 00         [ 7]  465 	ld	d,#0x00
   51BC 6B            [ 4]  466 	ld	l, e
   51BD 62            [ 4]  467 	ld	h, d
   51BE 29            [11]  468 	add	hl, hl
   51BF 29            [11]  469 	add	hl, hl
   51C0 19            [11]  470 	add	hl, de
   51C1 29            [11]  471 	add	hl, hl
   51C2 29            [11]  472 	add	hl, hl
   51C3 29            [11]  473 	add	hl, hl
   51C4 29            [11]  474 	add	hl, hl
   51C5 DD 75 FC      [19]  475 	ld	-4 (ix), l
   51C8 DD 74 FD      [19]  476 	ld	-3 (ix), h
   51CB DD 71 FA      [19]  477 	ld	-6 (ix), c
   51CE DD 70 FB      [19]  478 	ld	-5 (ix), b
   51D1                     479 00117$:
                            480 ;src/game/game.c:99: menuChoice = drawMenu(txtMenuTile,7);
   51D1 DD 4E FA      [19]  481 	ld	c,-6 (ix)
   51D4 DD 46 FB      [19]  482 	ld	b,-5 (ix)
   51D7 3E 07         [ 7]  483 	ld	a, #0x07
   51D9 F5            [11]  484 	push	af
   51DA 33            [ 6]  485 	inc	sp
   51DB C5            [11]  486 	push	bc
   51DC CD 2F 45      [17]  487 	call	_drawMenu
   51DF F1            [10]  488 	pop	af
   51E0 33            [ 6]  489 	inc	sp
   51E1 4D            [ 4]  490 	ld	c, l
                            491 ;src/game/game.c:101: if(menuChoice==0)
   51E2 79            [ 4]  492 	ld	a, c
   51E3 B7            [ 4]  493 	or	a, a
   51E4 20 0F         [12]  494 	jr	NZ,00115$
                            495 ;src/game/game.c:102: windowInfoTile(x, y);
   51E6 C5            [11]  496 	push	bc
   51E7 DD 66 05      [19]  497 	ld	h, 5 (ix)
   51EA DD 6E 04      [19]  498 	ld	l, 4 (ix)
   51ED E5            [11]  499 	push	hl
   51EE CD D4 4E      [17]  500 	call	_windowInfoTile
   51F1 F1            [10]  501 	pop	af
   51F2 C1            [10]  502 	pop	bc
   51F3 18 51         [12]  503 	jr	00118$
   51F5                     504 00115$:
                            505 ;src/game/game.c:103: else if(menuChoice==1)
   51F5 79            [ 4]  506 	ld	a, c
   51F6 3D            [ 4]  507 	dec	a
   51F7 20 09         [12]  508 	jr	NZ,00112$
                            509 ;src/game/game.c:105: CURSOR_MODE=T_REW;
   51F9 21 11 77      [10]  510 	ld	hl,#_CURSOR_MODE + 0
   51FC 36 08         [10]  511 	ld	(hl), #0x08
                            512 ;src/game/game.c:106: menuChoice=6;
   51FE 0E 06         [ 7]  513 	ld	c, #0x06
   5200 18 44         [12]  514 	jr	00118$
   5202                     515 00112$:
                            516 ;src/game/game.c:108: else if(menuChoice==2)
   5202 79            [ 4]  517 	ld	a, c
   5203 D6 02         [ 7]  518 	sub	a, #0x02
   5205 20 07         [12]  519 	jr	NZ,00109$
                            520 ;src/game/game.c:110: menuStations();
   5207 CD C0 50      [17]  521 	call	_menuStations
                            522 ;src/game/game.c:111: menuChoice=6;
   520A 0E 06         [ 7]  523 	ld	c, #0x06
   520C 18 38         [12]  524 	jr	00118$
   520E                     525 00109$:
                            526 ;src/game/game.c:113: else if(menuChoice==3)
   520E 79            [ 4]  527 	ld	a, c
   520F D6 03         [ 7]  528 	sub	a, #0x03
   5211 20 29         [12]  529 	jr	NZ,00106$
                            530 ;src/game/game.c:115: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   5213 DD 4E FE      [19]  531 	ld	c,-2 (ix)
   5216 DD 46 FF      [19]  532 	ld	b,-1 (ix)
   5219 21 03 01      [10]  533 	ld	hl, #0x0103
   521C E5            [11]  534 	push	hl
   521D C5            [11]  535 	push	bc
   521E CD 2D 46      [17]  536 	call	_drawWindow
   5221 F1            [10]  537 	pop	af
   5222 F1            [10]  538 	pop	af
   5223 2D            [ 4]  539 	dec	l
   5224 20 12         [12]  540 	jr	NZ,00102$
                            541 ;src/game/game.c:116: p_world[x+y*WIDTH] = GRASS1;
   5226 DD 4E 04      [19]  542 	ld	c, 4 (ix)
   5229 06 00         [ 7]  543 	ld	b, #0x00
   522B DD 6E FC      [19]  544 	ld	l,-4 (ix)
   522E DD 66 FD      [19]  545 	ld	h,-3 (ix)
   5231 09            [11]  546 	add	hl, bc
   5232 11 0D 68      [10]  547 	ld	de, #_p_world
   5235 19            [11]  548 	add	hl, de
   5236 36 00         [10]  549 	ld	(hl), #0x00
   5238                     550 00102$:
                            551 ;src/game/game.c:118: menuChoice=6;
   5238 0E 06         [ 7]  552 	ld	c, #0x06
   523A 18 0A         [12]  553 	jr	00118$
   523C                     554 00106$:
                            555 ;src/game/game.c:120: else if(menuChoice==4)
   523C 79            [ 4]  556 	ld	a, c
   523D D6 04         [ 7]  557 	sub	a, #0x04
   523F 20 05         [12]  558 	jr	NZ,00118$
                            559 ;src/game/game.c:122: trainManagement();
   5241 CD D3 59      [17]  560 	call	_trainManagement
                            561 ;src/game/game.c:123: menuChoice=6;
   5244 0E 06         [ 7]  562 	ld	c, #0x06
   5246                     563 00118$:
                            564 ;src/game/game.c:128: while(menuChoice!=6);
   5246 79            [ 4]  565 	ld	a, c
   5247 D6 06         [ 7]  566 	sub	a, #0x06
   5249 20 86         [12]  567 	jr	NZ,00117$
                            568 ;src/game/game.c:130: putM1();
   524B CD 33 41      [17]  569 	call	_putM1
   524E DD F9         [10]  570 	ld	sp, ix
   5250 DD E1         [14]  571 	pop	ix
   5252 C9            [10]  572 	ret
   5253                     573 ___str_18:
   5253 41 62 6F 75 74 20   574 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   5262 00                  575 	.db 0x00
   5263                     576 ___str_19:
   5263 42 75 69 6C 64 20   577 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   5272 00                  578 	.db 0x00
   5273                     579 ___str_20:
   5273 42 75 69 6C 64 20   580 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   5282 00                  581 	.db 0x00
   5283                     582 ___str_21:
   5283 44 65 73 74 72 6F   583 	.ascii "Destroy"
        79
   528A 00                  584 	.db 0x00
   528B                     585 ___str_22:
   528B 54 72 61 69 6E 20   586 	.ascii "Train management"
        6D 61 6E 61 67 65
        6D 65 6E 74
   529B 00                  587 	.db 0x00
   529C                     588 ___str_23:
   529C 41 63 63 6F 75 6E   589 	.ascii "Accounting"
        74 69 6E 67
   52A6 00                  590 	.db 0x00
   52A7                     591 ___str_24:
   52A7 52 65 73 75 6D 65   592 	.ascii "Resume"
   52AD 00                  593 	.db 0x00
   52AE                     594 ___str_25:
   52AE 44 65 73 74 72 6F   595 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   52D0 00                  596 	.db 0x00
   52D1                     597 ___str_26:
   52D1 00                  598 	.db 0x00
   52D2                     599 ___str_27:
   52D2 43 6F 6E 74 69 6E   600 	.ascii "Continue ?"
        75 65 20 3F
   52DC 00                  601 	.db 0x00
                            602 ;src/game/game.c:134: void game()
                            603 ;	---------------------------------
                            604 ; Function game
                            605 ; ---------------------------------
   52DD                     606 _game::
   52DD DD E5         [15]  607 	push	ix
   52DF DD 21 00 00   [14]  608 	ld	ix,#0
   52E3 DD 39         [15]  609 	add	ix,sp
   52E5 21 E0 FF      [10]  610 	ld	hl, #-32
   52E8 39            [11]  611 	add	hl, sp
   52E9 F9            [ 6]  612 	ld	sp, hl
                            613 ;src/game/game.c:137: int ulx = 0;
   52EA DD 36 E8 00   [19]  614 	ld	-24 (ix), #0x00
   52EE DD 36 E9 00   [19]  615 	ld	-23 (ix), #0x00
                            616 ;src/game/game.c:138: int uly = 0;
   52F2 DD 36 E6 00   [19]  617 	ld	-26 (ix), #0x00
   52F6 DD 36 E7 00   [19]  618 	ld	-25 (ix), #0x00
                            619 ;src/game/game.c:139: int xCursor = 10;
   52FA DD 36 EA 0A   [19]  620 	ld	-22 (ix), #0x0a
   52FE DD 36 EB 00   [19]  621 	ld	-21 (ix), #0x00
                            622 ;src/game/game.c:140: int yCursor = 6;
   5302 DD 36 EF 06   [19]  623 	ld	-17 (ix), #0x06
   5306 DD 36 F0 00   [19]  624 	ld	-16 (ix), #0x00
                            625 ;src/game/game.c:142: u8 exit=0;
   530A DD 36 EC 00   [19]  626 	ld	-20 (ix), #0x00
                            627 ;src/game/game.c:144: nbTrainList=0;
   530E 21 12 77      [10]  628 	ld	hl,#_nbTrainList + 0
   5311 36 00         [10]  629 	ld	(hl), #0x00
                            630 ;src/game/game.c:146: drawBoxM2(50, 50);
   5313 21 32 00      [10]  631 	ld	hl, #0x0032
   5316 E5            [11]  632 	push	hl
   5317 2E 32         [ 7]  633 	ld	l, #0x32
   5319 E5            [11]  634 	push	hl
   531A CD 72 42      [17]  635 	call	_drawBoxM2
   531D F1            [10]  636 	pop	af
                            637 ;src/game/game.c:147: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   531E 21 20 5F      [10]  638 	ld	hl, #0x5f20
   5321 E3            [19]  639 	ex	(sp),hl
   5322 21 00 C0      [10]  640 	ld	hl, #0xc000
   5325 E5            [11]  641 	push	hl
   5326 CD 55 66      [17]  642 	call	_cpct_getScreenPtr
                            643 ;src/game/game.c:148: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   5329 01 BF 59      [10]  644 	ld	bc, #___str_31+0
   532C AF            [ 4]  645 	xor	a, a
   532D F5            [11]  646 	push	af
   532E 33            [ 6]  647 	inc	sp
   532F E5            [11]  648 	push	hl
   5330 C5            [11]  649 	push	bc
   5331 CD 6F 61      [17]  650 	call	_cpct_drawStringM2
   5334 F1            [10]  651 	pop	af
   5335 F1            [10]  652 	pop	af
   5336 33            [ 6]  653 	inc	sp
                            654 ;src/game/game.c:150: generateWorld();
   5337 CD 27 7A      [17]  655 	call	_generateWorld
                            656 ;src/game/game.c:152: putM1();
   533A CD 33 41      [17]  657 	call	_putM1
                            658 ;src/game/game.c:153: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   533D 21 00 00      [10]  659 	ld	hl, #0x0000
   5340 E5            [11]  660 	push	hl
   5341 2E 00         [ 7]  661 	ld	l, #0x00
   5343 E5            [11]  662 	push	hl
   5344 CD 26 65      [17]  663 	call	_cpct_px2byteM1
   5347 F1            [10]  664 	pop	af
   5348 F1            [10]  665 	pop	af
   5349 45            [ 4]  666 	ld	b, l
   534A 21 00 40      [10]  667 	ld	hl, #0x4000
   534D E5            [11]  668 	push	hl
   534E C5            [11]  669 	push	bc
   534F 33            [ 6]  670 	inc	sp
   5350 26 C0         [ 7]  671 	ld	h, #0xc0
   5352 E5            [11]  672 	push	hl
   5353 CD 18 65      [17]  673 	call	_cpct_memset
                            674 ;src/game/game.c:154: drawWorld(ulx, uly);
   5356 21 00 00      [10]  675 	ld	hl, #0x0000
   5359 E5            [11]  676 	push	hl
   535A CD 57 80      [17]  677 	call	_drawWorld
   535D F1            [10]  678 	pop	af
                            679 ;src/game/game.c:157: do{
   535E                     680 00192$:
                            681 ;src/game/game.c:158: cpct_scanKeyboard(); 
   535E CD 75 66      [17]  682 	call	_cpct_scanKeyboard
                            683 ;src/game/game.c:160: if ( cpct_isKeyPressed(Key_CursorUp) )
   5361 21 00 01      [10]  684 	ld	hl, #0x0100
   5364 CD 38 61      [17]  685 	call	_cpct_isKeyPressed
   5367 DD 75 F2      [19]  686 	ld	-14 (ix), l
                            687 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   536A DD 7E EF      [19]  688 	ld	a, -17 (ix)
   536D DD 77 F6      [19]  689 	ld	-10 (ix), a
   5370 DD 7E EA      [19]  690 	ld	a, -22 (ix)
   5373 DD 77 F7      [19]  691 	ld	-9 (ix), a
   5376 DD 7E E6      [19]  692 	ld	a, -26 (ix)
   5379 DD 77 F3      [19]  693 	ld	-13 (ix), a
   537C DD 7E E8      [19]  694 	ld	a, -24 (ix)
   537F DD 77 F1      [19]  695 	ld	-15 (ix), a
                            696 ;src/game/game.c:160: if ( cpct_isKeyPressed(Key_CursorUp) )
   5382 DD 7E F2      [19]  697 	ld	a, -14 (ix)
   5385 B7            [ 4]  698 	or	a, a
   5386 28 79         [12]  699 	jr	Z,00190$
                            700 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   5388 DD 66 F6      [19]  701 	ld	h, -10 (ix)
   538B DD 6E F7      [19]  702 	ld	l, -9 (ix)
   538E E5            [11]  703 	push	hl
   538F DD 66 F3      [19]  704 	ld	h, -13 (ix)
   5392 DD 6E F1      [19]  705 	ld	l, -15 (ix)
   5395 E5            [11]  706 	push	hl
   5396 CD 95 7D      [17]  707 	call	_drawTile
   5399 F1            [10]  708 	pop	af
   539A F1            [10]  709 	pop	af
                            710 ;src/game/game.c:164: yCursor-=1;
   539B DD 6E EF      [19]  711 	ld	l,-17 (ix)
   539E DD 66 F0      [19]  712 	ld	h,-16 (ix)
   53A1 2B            [ 6]  713 	dec	hl
   53A2 DD 75 EF      [19]  714 	ld	-17 (ix), l
   53A5 DD 74 F0      [19]  715 	ld	-16 (ix), h
                            716 ;src/game/game.c:167: if(yCursor<0)
   53A8 DD CB F0 7E   [20]  717 	bit	7, -16 (ix)
   53AC 28 35         [12]  718 	jr	Z,00221$
                            719 ;src/game/game.c:169: yCursor=0;
   53AE DD 36 EF 00   [19]  720 	ld	-17 (ix), #0x00
   53B2 DD 36 F0 00   [19]  721 	ld	-16 (ix), #0x00
                            722 ;src/game/game.c:172: if(uly>0)
   53B6 AF            [ 4]  723 	xor	a, a
   53B7 DD BE E6      [19]  724 	cp	a, -26 (ix)
   53BA DD 9E E7      [19]  725 	sbc	a, -25 (ix)
   53BD E2 C2 53      [10]  726 	jp	PO, 00418$
   53C0 EE 80         [ 7]  727 	xor	a, #0x80
   53C2                     728 00418$:
   53C2 F2 E3 53      [10]  729 	jp	P, 00221$
                            730 ;src/game/game.c:174: uly-=1;
   53C5 DD 6E E6      [19]  731 	ld	l,-26 (ix)
   53C8 DD 66 E7      [19]  732 	ld	h,-25 (ix)
   53CB 2B            [ 6]  733 	dec	hl
   53CC DD 75 E6      [19]  734 	ld	-26 (ix), l
   53CF DD 74 E7      [19]  735 	ld	-25 (ix), h
                            736 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   53D2 DD 7E E6      [19]  737 	ld	a, -26 (ix)
                            738 ;src/game/game.c:175: drawWorld(ulx, uly);
   53D5 DD 77 F3      [19]  739 	ld	-13 (ix), a
   53D8 F5            [11]  740 	push	af
   53D9 33            [ 6]  741 	inc	sp
   53DA DD 7E F1      [19]  742 	ld	a, -15 (ix)
   53DD F5            [11]  743 	push	af
   53DE 33            [ 6]  744 	inc	sp
   53DF CD 57 80      [17]  745 	call	_drawWorld
   53E2 F1            [10]  746 	pop	af
                            747 ;src/game/game.c:180: for(i=0; i<5000; i++) {}
   53E3                     748 00221$:
   53E3 DD 36 ED 88   [19]  749 	ld	-19 (ix), #0x88
   53E7 DD 36 EE 13   [19]  750 	ld	-18 (ix), #0x13
   53EB                     751 00197$:
   53EB DD 6E ED      [19]  752 	ld	l,-19 (ix)
   53EE DD 66 EE      [19]  753 	ld	h,-18 (ix)
   53F1 2B            [ 6]  754 	dec	hl
   53F2 DD 75 ED      [19]  755 	ld	-19 (ix), l
   53F5 DD 74 EE      [19]  756 	ld	-18 (ix), h
   53F8 7C            [ 4]  757 	ld	a, h
   53F9 DD B6 ED      [19]  758 	or	a,-19 (ix)
   53FC 20 ED         [12]  759 	jr	NZ,00197$
   53FE C3 59 59      [10]  760 	jp	00191$
   5401                     761 00190$:
                            762 ;src/game/game.c:183: else if ( cpct_isKeyPressed(Key_CursorDown) )
   5401 21 00 04      [10]  763 	ld	hl, #0x0400
   5404 CD 38 61      [17]  764 	call	_cpct_isKeyPressed
   5407 7D            [ 4]  765 	ld	a, l
   5408 B7            [ 4]  766 	or	a, a
   5409 CA 87 54      [10]  767 	jp	Z, 00187$
                            768 ;src/game/game.c:185: drawTile(ulx, uly, xCursor, yCursor);
   540C DD 66 F6      [19]  769 	ld	h, -10 (ix)
   540F DD 6E F7      [19]  770 	ld	l, -9 (ix)
   5412 E5            [11]  771 	push	hl
   5413 DD 66 F3      [19]  772 	ld	h, -13 (ix)
   5416 DD 6E F1      [19]  773 	ld	l, -15 (ix)
   5419 E5            [11]  774 	push	hl
   541A CD 95 7D      [17]  775 	call	_drawTile
   541D F1            [10]  776 	pop	af
   541E F1            [10]  777 	pop	af
                            778 ;src/game/game.c:186: yCursor+=1;
   541F DD 34 EF      [23]  779 	inc	-17 (ix)
   5422 20 03         [12]  780 	jr	NZ,00419$
   5424 DD 34 F0      [23]  781 	inc	-16 (ix)
   5427                     782 00419$:
                            783 ;src/game/game.c:187: if(yCursor>NBTILE_H-1)
   5427 3E 0B         [ 7]  784 	ld	a, #0x0b
   5429 DD BE EF      [19]  785 	cp	a, -17 (ix)
   542C 3E 00         [ 7]  786 	ld	a, #0x00
   542E DD 9E F0      [19]  787 	sbc	a, -16 (ix)
   5431 E2 36 54      [10]  788 	jp	PO, 00420$
   5434 EE 80         [ 7]  789 	xor	a, #0x80
   5436                     790 00420$:
   5436 F2 69 54      [10]  791 	jp	P, 00226$
                            792 ;src/game/game.c:189: yCursor=NBTILE_H-1;
   5439 DD 36 EF 0B   [19]  793 	ld	-17 (ix), #0x0b
   543D DD 36 F0 00   [19]  794 	ld	-16 (ix), #0x00
                            795 ;src/game/game.c:190: if(uly<HEIGHT-NBTILE_H)
   5441 DD 7E E6      [19]  796 	ld	a, -26 (ix)
   5444 D6 24         [ 7]  797 	sub	a, #0x24
   5446 DD 7E E7      [19]  798 	ld	a, -25 (ix)
   5449 17            [ 4]  799 	rla
   544A 3F            [ 4]  800 	ccf
   544B 1F            [ 4]  801 	rra
   544C DE 80         [ 7]  802 	sbc	a, #0x80
   544E 30 19         [12]  803 	jr	NC,00226$
                            804 ;src/game/game.c:192: uly+=1;
   5450 DD 34 E6      [23]  805 	inc	-26 (ix)
   5453 20 03         [12]  806 	jr	NZ,00421$
   5455 DD 34 E7      [23]  807 	inc	-25 (ix)
   5458                     808 00421$:
                            809 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   5458 DD 7E E6      [19]  810 	ld	a, -26 (ix)
                            811 ;src/game/game.c:193: drawWorld(ulx, uly);
   545B DD 77 F3      [19]  812 	ld	-13 (ix), a
   545E F5            [11]  813 	push	af
   545F 33            [ 6]  814 	inc	sp
   5460 DD 7E F1      [19]  815 	ld	a, -15 (ix)
   5463 F5            [11]  816 	push	af
   5464 33            [ 6]  817 	inc	sp
   5465 CD 57 80      [17]  818 	call	_drawWorld
   5468 F1            [10]  819 	pop	af
                            820 ;src/game/game.c:198: for(i=0; i<5000; i++) {}
   5469                     821 00226$:
   5469 DD 36 ED 88   [19]  822 	ld	-19 (ix), #0x88
   546D DD 36 EE 13   [19]  823 	ld	-18 (ix), #0x13
   5471                     824 00200$:
   5471 DD 6E ED      [19]  825 	ld	l,-19 (ix)
   5474 DD 66 EE      [19]  826 	ld	h,-18 (ix)
   5477 2B            [ 6]  827 	dec	hl
   5478 DD 75 ED      [19]  828 	ld	-19 (ix), l
   547B DD 74 EE      [19]  829 	ld	-18 (ix), h
   547E 7C            [ 4]  830 	ld	a, h
   547F DD B6 ED      [19]  831 	or	a,-19 (ix)
   5482 20 ED         [12]  832 	jr	NZ,00200$
   5484 C3 59 59      [10]  833 	jp	00191$
   5487                     834 00187$:
                            835 ;src/game/game.c:201: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   5487 21 01 01      [10]  836 	ld	hl, #0x0101
   548A CD 38 61      [17]  837 	call	_cpct_isKeyPressed
   548D 7D            [ 4]  838 	ld	a, l
   548E B7            [ 4]  839 	or	a, a
   548F 28 66         [12]  840 	jr	Z,00184$
                            841 ;src/game/game.c:203: drawTile(ulx, uly, xCursor, yCursor);
   5491 DD 66 F6      [19]  842 	ld	h, -10 (ix)
   5494 DD 6E F7      [19]  843 	ld	l, -9 (ix)
   5497 E5            [11]  844 	push	hl
   5498 DD 66 F3      [19]  845 	ld	h, -13 (ix)
   549B DD 6E F1      [19]  846 	ld	l, -15 (ix)
   549E E5            [11]  847 	push	hl
   549F CD 95 7D      [17]  848 	call	_drawTile
   54A2 F1            [10]  849 	pop	af
   54A3 F1            [10]  850 	pop	af
                            851 ;src/game/game.c:204: xCursor-=1;
   54A4 DD 6E EA      [19]  852 	ld	l,-22 (ix)
   54A7 DD 66 EB      [19]  853 	ld	h,-21 (ix)
   54AA 2B            [ 6]  854 	dec	hl
   54AB DD 75 EA      [19]  855 	ld	-22 (ix), l
   54AE DD 74 EB      [19]  856 	ld	-21 (ix), h
                            857 ;src/game/game.c:205: if(xCursor<0)
   54B1 DD CB EB 7E   [20]  858 	bit	7, -21 (ix)
   54B5 28 35         [12]  859 	jr	Z,00231$
                            860 ;src/game/game.c:207: xCursor=0;
   54B7 DD 36 EA 00   [19]  861 	ld	-22 (ix), #0x00
   54BB DD 36 EB 00   [19]  862 	ld	-21 (ix), #0x00
                            863 ;src/game/game.c:208: if(ulx>0)
   54BF AF            [ 4]  864 	xor	a, a
   54C0 DD BE E8      [19]  865 	cp	a, -24 (ix)
   54C3 DD 9E E9      [19]  866 	sbc	a, -23 (ix)
   54C6 E2 CB 54      [10]  867 	jp	PO, 00422$
   54C9 EE 80         [ 7]  868 	xor	a, #0x80
   54CB                     869 00422$:
   54CB F2 EC 54      [10]  870 	jp	P, 00231$
                            871 ;src/game/game.c:210: ulx-=1;
   54CE DD 6E E8      [19]  872 	ld	l,-24 (ix)
   54D1 DD 66 E9      [19]  873 	ld	h,-23 (ix)
   54D4 2B            [ 6]  874 	dec	hl
   54D5 DD 75 E8      [19]  875 	ld	-24 (ix), l
   54D8 DD 74 E9      [19]  876 	ld	-23 (ix), h
                            877 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   54DB DD 7E E8      [19]  878 	ld	a, -24 (ix)
   54DE DD 77 F1      [19]  879 	ld	-15 (ix), a
                            880 ;src/game/game.c:211: drawWorld(ulx, uly);
   54E1 DD 66 F3      [19]  881 	ld	h, -13 (ix)
   54E4 DD 6E F1      [19]  882 	ld	l, -15 (ix)
   54E7 E5            [11]  883 	push	hl
   54E8 CD 57 80      [17]  884 	call	_drawWorld
   54EB F1            [10]  885 	pop	af
                            886 ;src/game/game.c:216: for(i=0; i<14000; i++) {}
   54EC                     887 00231$:
   54EC 01 B0 36      [10]  888 	ld	bc, #0x36b0
   54EF                     889 00203$:
   54EF 0B            [ 6]  890 	dec	bc
   54F0 78            [ 4]  891 	ld	a, b
   54F1 B1            [ 4]  892 	or	a,c
   54F2 20 FB         [12]  893 	jr	NZ,00203$
   54F4 C3 59 59      [10]  894 	jp	00191$
   54F7                     895 00184$:
                            896 ;src/game/game.c:219: else if ( cpct_isKeyPressed(Key_CursorRight) )
   54F7 21 00 02      [10]  897 	ld	hl, #0x0200
   54FA CD 38 61      [17]  898 	call	_cpct_isKeyPressed
   54FD 7D            [ 4]  899 	ld	a, l
   54FE B7            [ 4]  900 	or	a, a
   54FF 28 68         [12]  901 	jr	Z,00181$
                            902 ;src/game/game.c:221: drawTile(ulx, uly, xCursor, yCursor);
   5501 DD 66 F6      [19]  903 	ld	h, -10 (ix)
   5504 DD 6E F7      [19]  904 	ld	l, -9 (ix)
   5507 E5            [11]  905 	push	hl
   5508 DD 66 F3      [19]  906 	ld	h, -13 (ix)
   550B DD 6E F1      [19]  907 	ld	l, -15 (ix)
   550E E5            [11]  908 	push	hl
   550F CD 95 7D      [17]  909 	call	_drawTile
   5512 F1            [10]  910 	pop	af
   5513 F1            [10]  911 	pop	af
                            912 ;src/game/game.c:222: xCursor+=1;
   5514 DD 34 EA      [23]  913 	inc	-22 (ix)
   5517 20 03         [12]  914 	jr	NZ,00423$
   5519 DD 34 EB      [23]  915 	inc	-21 (ix)
   551C                     916 00423$:
                            917 ;src/game/game.c:223: if(xCursor>NBTILE_W-1)
   551C 3E 13         [ 7]  918 	ld	a, #0x13
   551E DD BE EA      [19]  919 	cp	a, -22 (ix)
   5521 3E 00         [ 7]  920 	ld	a, #0x00
   5523 DD 9E EB      [19]  921 	sbc	a, -21 (ix)
   5526 E2 2B 55      [10]  922 	jp	PO, 00424$
   5529 EE 80         [ 7]  923 	xor	a, #0x80
   552B                     924 00424$:
   552B F2 5E 55      [10]  925 	jp	P, 00236$
                            926 ;src/game/game.c:225: xCursor=NBTILE_W-1;
   552E DD 36 EA 13   [19]  927 	ld	-22 (ix), #0x13
   5532 DD 36 EB 00   [19]  928 	ld	-21 (ix), #0x00
                            929 ;src/game/game.c:226: if(ulx<WIDTH-NBTILE_W)
   5536 DD 7E E8      [19]  930 	ld	a, -24 (ix)
   5539 D6 3C         [ 7]  931 	sub	a, #0x3c
   553B DD 7E E9      [19]  932 	ld	a, -23 (ix)
   553E 17            [ 4]  933 	rla
   553F 3F            [ 4]  934 	ccf
   5540 1F            [ 4]  935 	rra
   5541 DE 80         [ 7]  936 	sbc	a, #0x80
   5543 30 19         [12]  937 	jr	NC,00236$
                            938 ;src/game/game.c:228: ulx+=1;
   5545 DD 34 E8      [23]  939 	inc	-24 (ix)
   5548 20 03         [12]  940 	jr	NZ,00425$
   554A DD 34 E9      [23]  941 	inc	-23 (ix)
   554D                     942 00425$:
                            943 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   554D DD 7E E8      [19]  944 	ld	a, -24 (ix)
   5550 DD 77 F1      [19]  945 	ld	-15 (ix), a
                            946 ;src/game/game.c:229: drawWorld(ulx, uly);
   5553 DD 66 F3      [19]  947 	ld	h, -13 (ix)
   5556 DD 6E F1      [19]  948 	ld	l, -15 (ix)
   5559 E5            [11]  949 	push	hl
   555A CD 57 80      [17]  950 	call	_drawWorld
   555D F1            [10]  951 	pop	af
                            952 ;src/game/game.c:234: for(i=0; i<14000; i++) {}
   555E                     953 00236$:
   555E 01 B0 36      [10]  954 	ld	bc, #0x36b0
   5561                     955 00206$:
   5561 0B            [ 6]  956 	dec	bc
   5562 78            [ 4]  957 	ld	a, b
   5563 B1            [ 4]  958 	or	a,c
   5564 20 FB         [12]  959 	jr	NZ,00206$
   5566 C3 59 59      [10]  960 	jp	00191$
   5569                     961 00181$:
                            962 ;src/game/game.c:238: else if ( cpct_isKeyPressed(Key_Space) )
   5569 21 05 80      [10]  963 	ld	hl, #0x8005
   556C CD 38 61      [17]  964 	call	_cpct_isKeyPressed
   556F 7D            [ 4]  965 	ld	a, l
   5570 B7            [ 4]  966 	or	a, a
   5571 CA 0C 56      [10]  967 	jp	Z, 00178$
                            968 ;src/game/game.c:240: if(CURSOR_MODE==T_SSNS)
   5574 FD 21 11 77   [14]  969 	ld	iy, #_CURSOR_MODE
   5578 FD 7E 00      [19]  970 	ld	a, 0 (iy)
   557B D6 02         [ 7]  971 	sub	a, #0x02
   557D 20 07         [12]  972 	jr	NZ,00143$
                            973 ;src/game/game.c:241: CURSOR_MODE=T_SSEW;
   557F FD 36 00 03   [19]  974 	ld	0 (iy), #0x03
   5583 C3 01 56      [10]  975 	jp	00248$
   5586                     976 00143$:
                            977 ;src/game/game.c:242: else if(CURSOR_MODE==T_SSEW)
   5586 FD 21 11 77   [14]  978 	ld	iy, #_CURSOR_MODE
   558A FD 7E 00      [19]  979 	ld	a, 0 (iy)
   558D D6 03         [ 7]  980 	sub	a, #0x03
   558F 20 06         [12]  981 	jr	NZ,00140$
                            982 ;src/game/game.c:243: CURSOR_MODE=T_SSNS;
   5591 FD 36 00 02   [19]  983 	ld	0 (iy), #0x02
   5595 18 6A         [12]  984 	jr	00248$
   5597                     985 00140$:
                            986 ;src/game/game.c:244: else if(CURSOR_MODE==T_SMNS)
   5597 FD 21 11 77   [14]  987 	ld	iy, #_CURSOR_MODE
   559B FD 7E 00      [19]  988 	ld	a, 0 (iy)
   559E D6 04         [ 7]  989 	sub	a, #0x04
   55A0 20 06         [12]  990 	jr	NZ,00137$
                            991 ;src/game/game.c:245: CURSOR_MODE=T_SMEW;
   55A2 FD 36 00 05   [19]  992 	ld	0 (iy), #0x05
   55A6 18 59         [12]  993 	jr	00248$
   55A8                     994 00137$:
                            995 ;src/game/game.c:246: else if(CURSOR_MODE==T_SMEW)
   55A8 FD 21 11 77   [14]  996 	ld	iy, #_CURSOR_MODE
   55AC FD 7E 00      [19]  997 	ld	a, 0 (iy)
   55AF D6 05         [ 7]  998 	sub	a, #0x05
   55B1 20 06         [12]  999 	jr	NZ,00134$
                           1000 ;src/game/game.c:247: CURSOR_MODE=T_SMNS;
   55B3 FD 36 00 04   [19] 1001 	ld	0 (iy), #0x04
   55B7 18 48         [12] 1002 	jr	00248$
   55B9                    1003 00134$:
                           1004 ;src/game/game.c:248: else if(CURSOR_MODE==T_SLNS)
   55B9 FD 21 11 77   [14] 1005 	ld	iy, #_CURSOR_MODE
   55BD FD 7E 00      [19] 1006 	ld	a, 0 (iy)
   55C0 D6 06         [ 7] 1007 	sub	a, #0x06
   55C2 20 06         [12] 1008 	jr	NZ,00131$
                           1009 ;src/game/game.c:249: CURSOR_MODE=T_SLEW;
   55C4 FD 36 00 07   [19] 1010 	ld	0 (iy), #0x07
   55C8 18 37         [12] 1011 	jr	00248$
   55CA                    1012 00131$:
                           1013 ;src/game/game.c:250: else if(CURSOR_MODE==T_SLEW)
   55CA FD 21 11 77   [14] 1014 	ld	iy, #_CURSOR_MODE
   55CE FD 7E 00      [19] 1015 	ld	a, 0 (iy)
   55D1 D6 07         [ 7] 1016 	sub	a, #0x07
   55D3 20 06         [12] 1017 	jr	NZ,00128$
                           1018 ;src/game/game.c:251: CURSOR_MODE=T_SLNS;
   55D5 FD 36 00 06   [19] 1019 	ld	0 (iy), #0x06
   55D9 18 26         [12] 1020 	jr	00248$
   55DB                    1021 00128$:
                           1022 ;src/game/game.c:252: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   55DB FD 21 11 77   [14] 1023 	ld	iy, #_CURSOR_MODE
   55DF FD 7E 00      [19] 1024 	ld	a, 0 (iy)
   55E2 D6 08         [ 7] 1025 	sub	a, #0x08
   55E4 38 0C         [12] 1026 	jr	C,00124$
   55E6 FD 7E 00      [19] 1027 	ld	a, 0 (iy)
   55E9 D6 11         [ 7] 1028 	sub	a, #0x11
   55EB 30 05         [12] 1029 	jr	NC,00124$
                           1030 ;src/game/game.c:253: CURSOR_MODE+=1;
   55ED FD 34 00      [23] 1031 	inc	0 (iy)
   55F0 18 0F         [12] 1032 	jr	00248$
   55F2                    1033 00124$:
                           1034 ;src/game/game.c:254: else if(CURSOR_MODE==T_RNSW)
   55F2 FD 21 11 77   [14] 1035 	ld	iy, #_CURSOR_MODE
   55F6 FD 7E 00      [19] 1036 	ld	a, 0 (iy)
   55F9 D6 11         [ 7] 1037 	sub	a, #0x11
   55FB 20 04         [12] 1038 	jr	NZ,00248$
                           1039 ;src/game/game.c:255: CURSOR_MODE=T_REW;
   55FD FD 36 00 08   [19] 1040 	ld	0 (iy), #0x08
                           1041 ;src/game/game.c:257: for(i=0; i<14000; i++) {}
   5601                    1042 00248$:
   5601 01 B0 36      [10] 1043 	ld	bc, #0x36b0
   5604                    1044 00209$:
   5604 0B            [ 6] 1045 	dec	bc
   5605 78            [ 4] 1046 	ld	a, b
   5606 B1            [ 4] 1047 	or	a,c
   5607 20 FB         [12] 1048 	jr	NZ,00209$
   5609 C3 59 59      [10] 1049 	jp	00191$
   560C                    1050 00178$:
                           1051 ;src/game/game.c:260: else if ( cpct_isKeyPressed(Key_Esc) )
   560C 21 08 04      [10] 1052 	ld	hl, #0x0408
   560F CD 38 61      [17] 1053 	call	_cpct_isKeyPressed
   5612 7D            [ 4] 1054 	ld	a, l
   5613 B7            [ 4] 1055 	or	a, a
   5614 CA D7 56      [10] 1056 	jp	Z, 00175$
                           1057 ;src/game/game.c:263: if(CURSOR_MODE==NONE)
   5617 3A 11 77      [13] 1058 	ld	a,(#_CURSOR_MODE + 0)
   561A B7            [ 4] 1059 	or	a, a
   561B C2 B4 56      [10] 1060 	jp	NZ, 00150$
                           1061 ;src/game/game.c:266: const char *txtWindowQuit[] = { 
   561E 21 00 00      [10] 1062 	ld	hl, #0x0000
   5621 39            [11] 1063 	add	hl, sp
   5622 DD 75 F4      [19] 1064 	ld	-12 (ix), l
   5625 DD 74 F5      [19] 1065 	ld	-11 (ix), h
   5628 36 8A         [10] 1066 	ld	(hl), #<(___str_28)
   562A 23            [ 6] 1067 	inc	hl
   562B 36 59         [10] 1068 	ld	(hl), #>(___str_28)
   562D DD 7E F4      [19] 1069 	ld	a, -12 (ix)
   5630 C6 02         [ 7] 1070 	add	a, #0x02
   5632 DD 77 FE      [19] 1071 	ld	-2 (ix), a
   5635 DD 7E F5      [19] 1072 	ld	a, -11 (ix)
   5638 CE 00         [ 7] 1073 	adc	a, #0x00
   563A DD 77 FF      [19] 1074 	ld	-1 (ix), a
   563D DD 6E FE      [19] 1075 	ld	l,-2 (ix)
   5640 DD 66 FF      [19] 1076 	ld	h,-1 (ix)
   5643 36 98         [10] 1077 	ld	(hl), #<(___str_29)
   5645 23            [ 6] 1078 	inc	hl
   5646 36 59         [10] 1079 	ld	(hl), #>(___str_29)
   5648 DD 7E F4      [19] 1080 	ld	a, -12 (ix)
   564B C6 04         [ 7] 1081 	add	a, #0x04
   564D DD 77 FE      [19] 1082 	ld	-2 (ix), a
   5650 DD 7E F5      [19] 1083 	ld	a, -11 (ix)
   5653 CE 00         [ 7] 1084 	adc	a, #0x00
   5655 DD 77 FF      [19] 1085 	ld	-1 (ix), a
   5658 DD 6E FE      [19] 1086 	ld	l,-2 (ix)
   565B DD 66 FF      [19] 1087 	ld	h,-1 (ix)
   565E 36 99         [10] 1088 	ld	(hl), #<(___str_30)
   5660 23            [ 6] 1089 	inc	hl
   5661 36 59         [10] 1090 	ld	(hl), #>(___str_30)
                           1091 ;src/game/game.c:272: putM2();
   5663 CD 44 41      [17] 1092 	call	_putM2
                           1093 ;src/game/game.c:273: if(	drawWindow(txtWindowQuit,3,1) == 1)
   5666 DD 7E F4      [19] 1094 	ld	a, -12 (ix)
   5669 DD 77 FE      [19] 1095 	ld	-2 (ix), a
   566C DD 7E F5      [19] 1096 	ld	a, -11 (ix)
   566F DD 77 FF      [19] 1097 	ld	-1 (ix), a
   5672 21 03 01      [10] 1098 	ld	hl, #0x0103
   5675 E5            [11] 1099 	push	hl
   5676 DD 6E FE      [19] 1100 	ld	l,-2 (ix)
   5679 DD 66 FF      [19] 1101 	ld	h,-1 (ix)
   567C E5            [11] 1102 	push	hl
   567D CD 2D 46      [17] 1103 	call	_drawWindow
   5680 F1            [10] 1104 	pop	af
   5681 F1            [10] 1105 	pop	af
   5682 2D            [ 4] 1106 	dec	l
   5683 20 06         [12] 1107 	jr	NZ,00147$
                           1108 ;src/game/game.c:274: exit=1;
   5685 DD 36 EC 01   [19] 1109 	ld	-20 (ix), #0x01
   5689 18 41         [12] 1110 	jr	00253$
   568B                    1111 00147$:
                           1112 ;src/game/game.c:277: putM1();
   568B CD 33 41      [17] 1113 	call	_putM1
                           1114 ;src/game/game.c:278: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   568E 21 00 00      [10] 1115 	ld	hl, #0x0000
   5691 E5            [11] 1116 	push	hl
   5692 2E 00         [ 7] 1117 	ld	l, #0x00
   5694 E5            [11] 1118 	push	hl
   5695 CD 26 65      [17] 1119 	call	_cpct_px2byteM1
   5698 F1            [10] 1120 	pop	af
   5699 F1            [10] 1121 	pop	af
   569A 45            [ 4] 1122 	ld	b, l
   569B 21 00 40      [10] 1123 	ld	hl, #0x4000
   569E E5            [11] 1124 	push	hl
   569F C5            [11] 1125 	push	bc
   56A0 33            [ 6] 1126 	inc	sp
   56A1 26 C0         [ 7] 1127 	ld	h, #0xc0
   56A3 E5            [11] 1128 	push	hl
   56A4 CD 18 65      [17] 1129 	call	_cpct_memset
                           1130 ;src/game/game.c:279: drawWorld(ulx, uly);
   56A7 DD 66 F3      [19] 1131 	ld	h, -13 (ix)
   56AA DD 6E F1      [19] 1132 	ld	l, -15 (ix)
   56AD E5            [11] 1133 	push	hl
   56AE CD 57 80      [17] 1134 	call	_drawWorld
   56B1 F1            [10] 1135 	pop	af
   56B2 18 18         [12] 1136 	jr	00253$
   56B4                    1137 00150$:
                           1138 ;src/game/game.c:284: CURSOR_MODE=NONE;
   56B4 21 11 77      [10] 1139 	ld	hl,#_CURSOR_MODE + 0
   56B7 36 00         [10] 1140 	ld	(hl), #0x00
                           1141 ;src/game/game.c:285: drawTile(ulx, uly, xCursor, yCursor);
   56B9 DD 66 F6      [19] 1142 	ld	h, -10 (ix)
   56BC DD 6E F7      [19] 1143 	ld	l, -9 (ix)
   56BF E5            [11] 1144 	push	hl
   56C0 DD 66 F3      [19] 1145 	ld	h, -13 (ix)
   56C3 DD 6E F1      [19] 1146 	ld	l, -15 (ix)
   56C6 E5            [11] 1147 	push	hl
   56C7 CD 95 7D      [17] 1148 	call	_drawTile
   56CA F1            [10] 1149 	pop	af
   56CB F1            [10] 1150 	pop	af
                           1151 ;src/game/game.c:289: for(i=0; i<14000; i++) {}
   56CC                    1152 00253$:
   56CC 01 B0 36      [10] 1153 	ld	bc, #0x36b0
   56CF                    1154 00212$:
   56CF 0B            [ 6] 1155 	dec	bc
   56D0 78            [ 4] 1156 	ld	a, b
   56D1 B1            [ 4] 1157 	or	a,c
   56D2 20 FB         [12] 1158 	jr	NZ,00212$
   56D4 C3 59 59      [10] 1159 	jp	00191$
   56D7                    1160 00175$:
                           1161 ;src/game/game.c:292: else if ( cpct_isKeyPressed(Key_Return) )
   56D7 21 02 04      [10] 1162 	ld	hl, #0x0402
   56DA CD 38 61      [17] 1163 	call	_cpct_isKeyPressed
   56DD 7D            [ 4] 1164 	ld	a, l
   56DE B7            [ 4] 1165 	or	a, a
   56DF CA 59 59      [10] 1166 	jp	Z, 00191$
                           1167 ;src/game/game.c:297: menuTile(ulx+xCursor, uly+yCursor);
   56E2 DD 5E E6      [19] 1168 	ld	e, -26 (ix)
   56E5 DD 6E EF      [19] 1169 	ld	l, -17 (ix)
   56E8 DD 4E E8      [19] 1170 	ld	c, -24 (ix)
   56EB DD 7E EA      [19] 1171 	ld	a, -22 (ix)
   56EE DD 77 FE      [19] 1172 	ld	-2 (ix), a
   56F1 7B            [ 4] 1173 	ld	a, e
   56F2 85            [ 4] 1174 	add	a, l
   56F3 DD 77 F4      [19] 1175 	ld	-12 (ix), a
   56F6 79            [ 4] 1176 	ld	a, c
   56F7 DD 86 FE      [19] 1177 	add	a, -2 (ix)
   56FA DD 77 FE      [19] 1178 	ld	-2 (ix), a
                           1179 ;src/game/game.c:295: if(CURSOR_MODE==NONE)
   56FD 3A 11 77      [13] 1180 	ld	a,(#_CURSOR_MODE + 0)
   5700 B7            [ 4] 1181 	or	a, a
   5701 20 32         [12] 1182 	jr	NZ,00169$
                           1183 ;src/game/game.c:297: menuTile(ulx+xCursor, uly+yCursor);
   5703 DD 66 F4      [19] 1184 	ld	h, -12 (ix)
   5706 DD 6E FE      [19] 1185 	ld	l, -2 (ix)
   5709 E5            [11] 1186 	push	hl
   570A CD 2F 51      [17] 1187 	call	_menuTile
   570D F1            [10] 1188 	pop	af
                           1189 ;src/game/game.c:298: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   570E 21 00 00      [10] 1190 	ld	hl, #0x0000
   5711 E5            [11] 1191 	push	hl
   5712 2E 00         [ 7] 1192 	ld	l, #0x00
   5714 E5            [11] 1193 	push	hl
   5715 CD 26 65      [17] 1194 	call	_cpct_px2byteM1
   5718 F1            [10] 1195 	pop	af
   5719 F1            [10] 1196 	pop	af
   571A 45            [ 4] 1197 	ld	b, l
   571B 21 00 40      [10] 1198 	ld	hl, #0x4000
   571E E5            [11] 1199 	push	hl
   571F C5            [11] 1200 	push	bc
   5720 33            [ 6] 1201 	inc	sp
   5721 26 C0         [ 7] 1202 	ld	h, #0xc0
   5723 E5            [11] 1203 	push	hl
   5724 CD 18 65      [17] 1204 	call	_cpct_memset
                           1205 ;src/game/game.c:299: drawWorld(ulx, uly);
   5727 DD 66 F3      [19] 1206 	ld	h, -13 (ix)
   572A DD 6E F1      [19] 1207 	ld	l, -15 (ix)
   572D E5            [11] 1208 	push	hl
   572E CD 57 80      [17] 1209 	call	_drawWorld
   5731 F1            [10] 1210 	pop	af
   5732 C3 51 59      [10] 1211 	jp	00264$
   5735                    1212 00169$:
                           1213 ;src/game/game.c:304: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
   5735 DD 7E E6      [19] 1214 	ld	a, -26 (ix)
   5738 DD 86 EF      [19] 1215 	add	a, -17 (ix)
   573B 4F            [ 4] 1216 	ld	c, a
   573C DD 7E E7      [19] 1217 	ld	a, -25 (ix)
   573F DD 8E F0      [19] 1218 	adc	a, -16 (ix)
   5742 47            [ 4] 1219 	ld	b, a
   5743 DD 7E E8      [19] 1220 	ld	a, -24 (ix)
   5746 DD 86 EA      [19] 1221 	add	a, -22 (ix)
   5749 DD 77 FC      [19] 1222 	ld	-4 (ix), a
   574C DD 7E E9      [19] 1223 	ld	a, -23 (ix)
   574F DD 8E EB      [19] 1224 	adc	a, -21 (ix)
   5752 DD 77 FD      [19] 1225 	ld	-3 (ix), a
   5755 69            [ 4] 1226 	ld	l, c
   5756 60            [ 4] 1227 	ld	h, b
   5757 29            [11] 1228 	add	hl, hl
   5758 29            [11] 1229 	add	hl, hl
   5759 09            [11] 1230 	add	hl, bc
   575A 29            [11] 1231 	add	hl, hl
   575B 29            [11] 1232 	add	hl, hl
   575C 29            [11] 1233 	add	hl, hl
   575D 29            [11] 1234 	add	hl, hl
   575E 7D            [ 4] 1235 	ld	a, l
   575F DD 86 FC      [19] 1236 	add	a, -4 (ix)
   5762 DD 77 FA      [19] 1237 	ld	-6 (ix), a
   5765 7C            [ 4] 1238 	ld	a, h
   5766 DD 8E FD      [19] 1239 	adc	a, -3 (ix)
   5769 DD 77 FB      [19] 1240 	ld	-5 (ix), a
                           1241 ;src/game/game.c:301: else if(CURSOR_MODE==PUTTRAIN)
   576C 3A 11 77      [13] 1242 	ld	a,(#_CURSOR_MODE + 0)
   576F 3D            [ 4] 1243 	dec	a
   5770 C2 29 59      [10] 1244 	jp	NZ,00166$
                           1245 ;src/game/game.c:304: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
   5773 3E 0D         [ 7] 1246 	ld	a, #<(_p_world)
   5775 DD 86 FA      [19] 1247 	add	a, -6 (ix)
   5778 6F            [ 4] 1248 	ld	l, a
   5779 3E 68         [ 7] 1249 	ld	a, #>(_p_world)
   577B DD 8E FB      [19] 1250 	adc	a, -5 (ix)
   577E 67            [ 4] 1251 	ld	h, a
   577F 4E            [ 7] 1252 	ld	c, (hl)
   5780 79            [ 4] 1253 	ld	a, c
   5781 D6 0A         [ 7] 1254 	sub	a, #0x0a
   5783 DA 51 59      [10] 1255 	jp	C, 00264$
   5786 3E 0F         [ 7] 1256 	ld	a, #0x0f
   5788 91            [ 4] 1257 	sub	a, c
   5789 DA 51 59      [10] 1258 	jp	C, 00264$
                           1259 ;src/game/game.c:307: trainList[nbTrainList].posX = ulx+xCursor;
   578C ED 4B 12 77   [20] 1260 	ld	bc, (_nbTrainList)
   5790 06 00         [ 7] 1261 	ld	b, #0x00
   5792 69            [ 4] 1262 	ld	l, c
   5793 60            [ 4] 1263 	ld	h, b
   5794 29            [11] 1264 	add	hl, hl
   5795 29            [11] 1265 	add	hl, hl
   5796 09            [11] 1266 	add	hl, bc
   5797 29            [11] 1267 	add	hl, hl
   5798 09            [11] 1268 	add	hl, bc
   5799 4D            [ 4] 1269 	ld	c, l
   579A 44            [ 4] 1270 	ld	b, h
   579B 2A 0D 77      [16] 1271 	ld	hl, (_trainList)
   579E 09            [11] 1272 	add	hl, bc
   579F 01 04 00      [10] 1273 	ld	bc, #0x0004
   57A2 09            [11] 1274 	add	hl, bc
   57A3 DD 7E FE      [19] 1275 	ld	a, -2 (ix)
   57A6 77            [ 7] 1276 	ld	(hl), a
                           1277 ;src/game/game.c:308: trainList[nbTrainList].posY = uly+yCursor;
   57A7 ED 4B 12 77   [20] 1278 	ld	bc, (_nbTrainList)
   57AB 06 00         [ 7] 1279 	ld	b, #0x00
   57AD 69            [ 4] 1280 	ld	l, c
   57AE 60            [ 4] 1281 	ld	h, b
   57AF 29            [11] 1282 	add	hl, hl
   57B0 29            [11] 1283 	add	hl, hl
   57B1 09            [11] 1284 	add	hl, bc
   57B2 29            [11] 1285 	add	hl, hl
   57B3 09            [11] 1286 	add	hl, bc
   57B4 4D            [ 4] 1287 	ld	c, l
   57B5 44            [ 4] 1288 	ld	b, h
   57B6 2A 0D 77      [16] 1289 	ld	hl, (_trainList)
   57B9 09            [11] 1290 	add	hl, bc
   57BA 01 05 00      [10] 1291 	ld	bc, #0x0005
   57BD 09            [11] 1292 	add	hl, bc
   57BE DD 7E F4      [19] 1293 	ld	a, -12 (ix)
   57C1 77            [ 7] 1294 	ld	(hl), a
                           1295 ;src/game/game.c:310: trainList[nbTrainList].animX = (ulx+xCursor)*TILESIZE_H+8;
   57C2 ED 4B 12 77   [20] 1296 	ld	bc, (_nbTrainList)
   57C6 06 00         [ 7] 1297 	ld	b, #0x00
   57C8 69            [ 4] 1298 	ld	l, c
   57C9 60            [ 4] 1299 	ld	h, b
   57CA 29            [11] 1300 	add	hl, hl
   57CB 29            [11] 1301 	add	hl, hl
   57CC 09            [11] 1302 	add	hl, bc
   57CD 29            [11] 1303 	add	hl, hl
   57CE 09            [11] 1304 	add	hl, bc
   57CF 4D            [ 4] 1305 	ld	c, l
   57D0 44            [ 4] 1306 	ld	b, h
   57D1 2A 0D 77      [16] 1307 	ld	hl, (_trainList)
   57D4 09            [11] 1308 	add	hl, bc
   57D5 01 07 00      [10] 1309 	ld	bc, #0x0007
   57D8 09            [11] 1310 	add	hl, bc
   57D9 DD 7E FE      [19] 1311 	ld	a, -2 (ix)
   57DC 07            [ 4] 1312 	rlca
   57DD 07            [ 4] 1313 	rlca
   57DE 07            [ 4] 1314 	rlca
   57DF 07            [ 4] 1315 	rlca
   57E0 E6 F0         [ 7] 1316 	and	a, #0xf0
   57E2 C6 08         [ 7] 1317 	add	a, #0x08
   57E4 77            [ 7] 1318 	ld	(hl), a
                           1319 ;src/game/game.c:311: trainList[nbTrainList].animY = (uly+yCursor)*TILESIZE_H+8;
   57E5 ED 4B 12 77   [20] 1320 	ld	bc, (_nbTrainList)
   57E9 06 00         [ 7] 1321 	ld	b, #0x00
   57EB 69            [ 4] 1322 	ld	l, c
   57EC 60            [ 4] 1323 	ld	h, b
   57ED 29            [11] 1324 	add	hl, hl
   57EE 29            [11] 1325 	add	hl, hl
   57EF 09            [11] 1326 	add	hl, bc
   57F0 29            [11] 1327 	add	hl, hl
   57F1 09            [11] 1328 	add	hl, bc
   57F2 4D            [ 4] 1329 	ld	c, l
   57F3 44            [ 4] 1330 	ld	b, h
   57F4 2A 0D 77      [16] 1331 	ld	hl, (_trainList)
   57F7 09            [11] 1332 	add	hl, bc
   57F8 01 08 00      [10] 1333 	ld	bc, #0x0008
   57FB 09            [11] 1334 	add	hl, bc
   57FC DD 7E F4      [19] 1335 	ld	a, -12 (ix)
   57FF 07            [ 4] 1336 	rlca
   5800 07            [ 4] 1337 	rlca
   5801 07            [ 4] 1338 	rlca
   5802 07            [ 4] 1339 	rlca
   5803 E6 F0         [ 7] 1340 	and	a, #0xf0
   5805 DD 77 FE      [19] 1341 	ld	-2 (ix), a
   5808 C6 08         [ 7] 1342 	add	a, #0x08
   580A DD 77 F4      [19] 1343 	ld	-12 (ix), a
   580D 77            [ 7] 1344 	ld	(hl),a
                           1345 ;src/game/game.c:318: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
   580E ED 4B 12 77   [20] 1346 	ld	bc, (_nbTrainList)
   5812 06 00         [ 7] 1347 	ld	b, #0x00
   5814 69            [ 4] 1348 	ld	l, c
   5815 60            [ 4] 1349 	ld	h, b
   5816 29            [11] 1350 	add	hl, hl
   5817 29            [11] 1351 	add	hl, hl
   5818 09            [11] 1352 	add	hl, bc
   5819 29            [11] 1353 	add	hl, hl
   581A 09            [11] 1354 	add	hl, bc
   581B 4D            [ 4] 1355 	ld	c, l
   581C 44            [ 4] 1356 	ld	b, h
   581D FD 2A 0D 77   [20] 1357 	ld	iy, (_trainList)
   5821 FD 09         [15] 1358 	add	iy, bc
   5823 FD E5         [15] 1359 	push	iy
   5825 E1            [10] 1360 	pop	hl
   5826 11 05 00      [10] 1361 	ld	de, #0x0005
   5829 19            [11] 1362 	add	hl, de
   582A 4E            [ 7] 1363 	ld	c, (hl)
   582B 06 00         [ 7] 1364 	ld	b,#0x00
   582D 69            [ 4] 1365 	ld	l, c
   582E 60            [ 4] 1366 	ld	h, b
   582F 29            [11] 1367 	add	hl, hl
   5830 29            [11] 1368 	add	hl, hl
   5831 09            [11] 1369 	add	hl, bc
   5832 29            [11] 1370 	add	hl, hl
   5833 29            [11] 1371 	add	hl, hl
   5834 29            [11] 1372 	add	hl, hl
   5835 29            [11] 1373 	add	hl, hl
   5836 4D            [ 4] 1374 	ld	c, l
   5837 44            [ 4] 1375 	ld	b, h
   5838 FD 6E 04      [19] 1376 	ld	l, 4 (iy)
   583B 26 00         [ 7] 1377 	ld	h, #0x00
   583D 09            [11] 1378 	add	hl, bc
   583E 11 0D 68      [10] 1379 	ld	de, #_p_world
   5841 19            [11] 1380 	add	hl, de
   5842 7E            [ 7] 1381 	ld	a, (hl)
   5843 DD 77 F2      [19] 1382 	ld	-14 (ix), a
                           1383 ;src/game/game.c:322: setPixel((ulx+xCursor)*TILESIZE_H+8, (uly+yCursor)*TILESIZE_H+8, 3);
   5846 3E 05         [ 7] 1384 	ld	a, #0x04+1
   5848 18 08         [12] 1385 	jr	00445$
   584A                    1386 00444$:
   584A DD CB FC 26   [23] 1387 	sla	-4 (ix)
   584E DD CB FD 16   [23] 1388 	rl	-3 (ix)
   5852                    1389 00445$:
   5852 3D            [ 4] 1390 	dec	a
   5853 20 F5         [12] 1391 	jr	NZ,00444$
   5855 DD 7E FC      [19] 1392 	ld	a, -4 (ix)
   5858 C6 08         [ 7] 1393 	add	a, #0x08
   585A DD 77 F8      [19] 1394 	ld	-8 (ix), a
   585D DD 7E FD      [19] 1395 	ld	a, -3 (ix)
   5860 CE 00         [ 7] 1396 	adc	a, #0x00
   5862 DD 77 F9      [19] 1397 	ld	-7 (ix), a
                           1398 ;src/game/game.c:318: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
   5865 DD 7E F2      [19] 1399 	ld	a, -14 (ix)
   5868 D6 0A         [ 7] 1400 	sub	a, #0x0a
   586A 28 0E         [12] 1401 	jr	Z,00153$
                           1402 ;src/game/game.c:319: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SMNS ||
   586C DD 7E F2      [19] 1403 	ld	a, -14 (ix)
   586F D6 0C         [ 7] 1404 	sub	a, #0x0c
   5871 28 07         [12] 1405 	jr	Z,00153$
                           1406 ;src/game/game.c:320: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SLNS )
   5873 DD 7E F2      [19] 1407 	ld	a, -14 (ix)
   5876 D6 0E         [ 7] 1408 	sub	a, #0x0e
   5878 20 48         [12] 1409 	jr	NZ,00154$
   587A                    1410 00153$:
                           1411 ;src/game/game.c:322: setPixel((ulx+xCursor)*TILESIZE_H+8, (uly+yCursor)*TILESIZE_H+8, 3);
   587A 3E 03         [ 7] 1412 	ld	a, #0x03
   587C F5            [11] 1413 	push	af
   587D 33            [ 6] 1414 	inc	sp
   587E DD 7E F4      [19] 1415 	ld	a, -12 (ix)
   5881 F5            [11] 1416 	push	af
   5882 33            [ 6] 1417 	inc	sp
   5883 DD 6E F8      [19] 1418 	ld	l,-8 (ix)
   5886 DD 66 F9      [19] 1419 	ld	h,-7 (ix)
   5889 E5            [11] 1420 	push	hl
   588A CD 33 81      [17] 1421 	call	_setPixel
   588D F1            [10] 1422 	pop	af
   588E F1            [10] 1423 	pop	af
                           1424 ;src/game/game.c:323: setPixel((ulx+xCursor)*TILESIZE_H+8, (uly+yCursor)*TILESIZE_H+9, 2);
   588F DD 7E FE      [19] 1425 	ld	a, -2 (ix)
   5892 C6 09         [ 7] 1426 	add	a, #0x09
   5894 47            [ 4] 1427 	ld	b, a
   5895 3E 02         [ 7] 1428 	ld	a, #0x02
   5897 F5            [11] 1429 	push	af
   5898 33            [ 6] 1430 	inc	sp
   5899 C5            [11] 1431 	push	bc
   589A 33            [ 6] 1432 	inc	sp
   589B DD 6E F8      [19] 1433 	ld	l,-8 (ix)
   589E DD 66 F9      [19] 1434 	ld	h,-7 (ix)
   58A1 E5            [11] 1435 	push	hl
   58A2 CD 33 81      [17] 1436 	call	_setPixel
   58A5 F1            [10] 1437 	pop	af
   58A6 F1            [10] 1438 	pop	af
                           1439 ;src/game/game.c:326: trainList[nbTrainList].heading = 2;
   58A7 ED 4B 12 77   [20] 1440 	ld	bc, (_nbTrainList)
   58AB 06 00         [ 7] 1441 	ld	b, #0x00
   58AD 69            [ 4] 1442 	ld	l, c
   58AE 60            [ 4] 1443 	ld	h, b
   58AF 29            [11] 1444 	add	hl, hl
   58B0 29            [11] 1445 	add	hl, hl
   58B1 09            [11] 1446 	add	hl, bc
   58B2 29            [11] 1447 	add	hl, hl
   58B3 09            [11] 1448 	add	hl, bc
   58B4 4D            [ 4] 1449 	ld	c, l
   58B5 44            [ 4] 1450 	ld	b, h
   58B6 2A 0D 77      [16] 1451 	ld	hl, (_trainList)
   58B9 09            [11] 1452 	add	hl, bc
   58BA 01 06 00      [10] 1453 	ld	bc, #0x0006
   58BD 09            [11] 1454 	add	hl, bc
   58BE 36 02         [10] 1455 	ld	(hl), #0x02
   58C0 18 49         [12] 1456 	jr	00155$
   58C2                    1457 00154$:
                           1458 ;src/game/game.c:332: setPixel((ulx+xCursor)*TILESIZE_H+8, (uly+yCursor)*TILESIZE_H+8, 3);
   58C2 3E 03         [ 7] 1459 	ld	a, #0x03
   58C4 F5            [11] 1460 	push	af
   58C5 33            [ 6] 1461 	inc	sp
   58C6 DD 7E F4      [19] 1462 	ld	a, -12 (ix)
   58C9 F5            [11] 1463 	push	af
   58CA 33            [ 6] 1464 	inc	sp
   58CB DD 6E F8      [19] 1465 	ld	l,-8 (ix)
   58CE DD 66 F9      [19] 1466 	ld	h,-7 (ix)
   58D1 E5            [11] 1467 	push	hl
   58D2 CD 33 81      [17] 1468 	call	_setPixel
   58D5 F1            [10] 1469 	pop	af
   58D6 F1            [10] 1470 	pop	af
                           1471 ;src/game/game.c:333: setPixel((ulx+xCursor)*TILESIZE_H+7, (uly+yCursor)*TILESIZE_H+8, 2);
   58D7 DD 7E FC      [19] 1472 	ld	a, -4 (ix)
   58DA C6 07         [ 7] 1473 	add	a, #0x07
   58DC 4F            [ 4] 1474 	ld	c, a
   58DD DD 7E FD      [19] 1475 	ld	a, -3 (ix)
   58E0 CE 00         [ 7] 1476 	adc	a, #0x00
   58E2 47            [ 4] 1477 	ld	b, a
   58E3 3E 02         [ 7] 1478 	ld	a, #0x02
   58E5 F5            [11] 1479 	push	af
   58E6 33            [ 6] 1480 	inc	sp
   58E7 DD 7E F4      [19] 1481 	ld	a, -12 (ix)
   58EA F5            [11] 1482 	push	af
   58EB 33            [ 6] 1483 	inc	sp
   58EC C5            [11] 1484 	push	bc
   58ED CD 33 81      [17] 1485 	call	_setPixel
   58F0 F1            [10] 1486 	pop	af
   58F1 F1            [10] 1487 	pop	af
                           1488 ;src/game/game.c:335: trainList[nbTrainList].heading = 0;
   58F2 ED 4B 12 77   [20] 1489 	ld	bc, (_nbTrainList)
   58F6 06 00         [ 7] 1490 	ld	b, #0x00
   58F8 69            [ 4] 1491 	ld	l, c
   58F9 60            [ 4] 1492 	ld	h, b
   58FA 29            [11] 1493 	add	hl, hl
   58FB 29            [11] 1494 	add	hl, hl
   58FC 09            [11] 1495 	add	hl, bc
   58FD 29            [11] 1496 	add	hl, hl
   58FE 09            [11] 1497 	add	hl, bc
   58FF 4D            [ 4] 1498 	ld	c, l
   5900 44            [ 4] 1499 	ld	b, h
   5901 2A 0D 77      [16] 1500 	ld	hl, (_trainList)
   5904 09            [11] 1501 	add	hl, bc
   5905 01 06 00      [10] 1502 	ld	bc, #0x0006
   5908 09            [11] 1503 	add	hl, bc
   5909 36 00         [10] 1504 	ld	(hl), #0x00
   590B                    1505 00155$:
                           1506 ;src/game/game.c:341: nbTrainList++;
   590B 21 12 77      [10] 1507 	ld	hl, #_nbTrainList+0
   590E 34            [11] 1508 	inc	(hl)
                           1509 ;src/game/game.c:343: CURSOR_MODE=NONE;
   590F 21 11 77      [10] 1510 	ld	hl,#_CURSOR_MODE + 0
   5912 36 00         [10] 1511 	ld	(hl), #0x00
                           1512 ;src/game/game.c:344: drawTile(ulx, uly, xCursor, yCursor);
   5914 DD 66 F6      [19] 1513 	ld	h, -10 (ix)
   5917 DD 6E F7      [19] 1514 	ld	l, -9 (ix)
   591A E5            [11] 1515 	push	hl
   591B DD 66 F3      [19] 1516 	ld	h, -13 (ix)
   591E DD 6E F1      [19] 1517 	ld	l, -15 (ix)
   5921 E5            [11] 1518 	push	hl
   5922 CD 95 7D      [17] 1519 	call	_drawTile
   5925 F1            [10] 1520 	pop	af
   5926 F1            [10] 1521 	pop	af
   5927 18 28         [12] 1522 	jr	00264$
   5929                    1523 00166$:
                           1524 ;src/game/game.c:349: else if(CURSOR_MODE>=T_SSNS)
   5929 FD 21 11 77   [14] 1525 	ld	iy, #_CURSOR_MODE
   592D FD 7E 00      [19] 1526 	ld	a, 0 (iy)
   5930 D6 02         [ 7] 1527 	sub	a, #0x02
   5932 38 1D         [12] 1528 	jr	C,00264$
                           1529 ;src/game/game.c:351: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+8;
   5934 3E 0D         [ 7] 1530 	ld	a, #<(_p_world)
   5936 DD 86 FA      [19] 1531 	add	a, -6 (ix)
   5939 4F            [ 4] 1532 	ld	c, a
   593A 3E 68         [ 7] 1533 	ld	a, #>(_p_world)
   593C DD 8E FB      [19] 1534 	adc	a, -5 (ix)
   593F 47            [ 4] 1535 	ld	b, a
   5940 FD 7E 00      [19] 1536 	ld	a, 0 (iy)
   5943 C6 08         [ 7] 1537 	add	a, #0x08
   5945 02            [ 7] 1538 	ld	(bc), a
                           1539 ;src/game/game.c:354: if(CURSOR_MODE<=T_SLEW)
   5946 3E 07         [ 7] 1540 	ld	a, #0x07
   5948 FD 96 00      [19] 1541 	sub	a, 0 (iy)
   594B 38 04         [12] 1542 	jr	C,00264$
                           1543 ;src/game/game.c:355: CURSOR_MODE=NONE;
   594D FD 36 00 00   [19] 1544 	ld	0 (iy), #0x00
                           1545 ;src/game/game.c:359: for(i=0; i<14000; i++) {}
   5951                    1546 00264$:
   5951 01 B0 36      [10] 1547 	ld	bc, #0x36b0
   5954                    1548 00215$:
   5954 0B            [ 6] 1549 	dec	bc
   5955 78            [ 4] 1550 	ld	a, b
   5956 B1            [ 4] 1551 	or	a,c
   5957 20 FB         [12] 1552 	jr	NZ,00215$
   5959                    1553 00191$:
                           1554 ;src/game/game.c:363: drawTrains(ulx, uly);
   5959 DD 66 F3      [19] 1555 	ld	h, -13 (ix)
   595C DD 6E F1      [19] 1556 	ld	l, -15 (ix)
   595F E5            [11] 1557 	push	hl
   5960 CD A0 82      [17] 1558 	call	_drawTrains
   5963 F1            [10] 1559 	pop	af
                           1560 ;src/game/game.c:364: drawCursor(xCursor, yCursor, 0);
   5964 DD 46 EF      [19] 1561 	ld	b, -17 (ix)
   5967 DD 56 EA      [19] 1562 	ld	d, -22 (ix)
   596A AF            [ 4] 1563 	xor	a, a
   596B F5            [11] 1564 	push	af
   596C 33            [ 6] 1565 	inc	sp
   596D 4A            [ 4] 1566 	ld	c, d
   596E C5            [11] 1567 	push	bc
   596F CD 18 77      [17] 1568 	call	_drawCursor
                           1569 ;src/game/game.c:365: drawScrolls(ulx, uly);
   5972 33            [ 6] 1570 	inc	sp
   5973 DD 66 F3      [19] 1571 	ld	h, -13 (ix)
   5976 DD 6E F1      [19] 1572 	ld	l, -15 (ix)
   5979 E3            [19] 1573 	ex	(sp),hl
   597A CD BE 7F      [17] 1574 	call	_drawScrolls
   597D F1            [10] 1575 	pop	af
                           1576 ;src/game/game.c:368: while(!exit);
   597E DD 7E EC      [19] 1577 	ld	a, -20 (ix)
   5981 B7            [ 4] 1578 	or	a, a
   5982 CA 5E 53      [10] 1579 	jp	Z, 00192$
   5985 DD F9         [10] 1580 	ld	sp, ix
   5987 DD E1         [14] 1581 	pop	ix
   5989 C9            [10] 1582 	ret
   598A                    1583 ___str_28:
   598A 52 65 61 6C 6C 79  1584 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   5997 00                 1585 	.db 0x00
   5998                    1586 ___str_29:
   5998 00                 1587 	.db 0x00
   5999                    1588 ___str_30:
   5999 50 72 65 73 73 20  1589 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   59BE 00                 1590 	.db 0x00
   59BF                    1591 ___str_31:
   59BF 47 65 6E 65 72 61  1592 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   59D2 00                 1593 	.db 0x00
                           1594 	.area _CODE
                           1595 	.area _INITIALIZER
                           1596 	.area _CABS (ABS)
