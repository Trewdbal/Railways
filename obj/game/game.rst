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
   4EF3 DD 75 FE      [19]   90 	ld	-2 (ix), l
   4EF6 DD 74 FF      [19]   91 	ld	-1 (ix), h
   4EF9 36 D5         [10]   92 	ld	(hl), #<(___str_1)
   4EFB 23            [ 6]   93 	inc	hl
   4EFC 36 4F         [10]   94 	ld	(hl), #>(___str_1)
                             95 ;src/game/game.c:9: txtWindowInfoTile[3] = "Demand: Nothing";
   4EFE 21 06 00      [10]   96 	ld	hl, #0x0006
   4F01 09            [11]   97 	add	hl,bc
   4F02 DD 75 FC      [19]   98 	ld	-4 (ix), l
   4F05 DD 74 FD      [19]   99 	ld	-3 (ix), h
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
   4F21 11 88 68      [10]  118 	ld	de, #_p_world
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
   4F63 DD 6E FE      [19]  160 	ld	l,-2 (ix)
   4F66 DD 66 FF      [19]  161 	ld	h,-1 (ix)
   4F69 36 08         [10]  162 	ld	(hl), #<(___str_5)
   4F6B 23            [ 6]  163 	inc	hl
   4F6C 36 50         [10]  164 	ld	(hl), #>(___str_5)
                            165 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4F6E DD 6E FC      [19]  166 	ld	l,-4 (ix)
   4F71 DD 66 FD      [19]  167 	ld	h,-3 (ix)
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
   4F82 DD 6E FE      [19]  182 	ld	l,-2 (ix)
   4F85 DD 66 FF      [19]  183 	ld	h,-1 (ix)
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
   4FA8 DD 6E FE      [19]  218 	ld	l,-2 (ix)
   4FAB DD 66 FF      [19]  219 	ld	h,-1 (ix)
   4FAE 36 81         [10]  220 	ld	(hl), #<(___str_12)
   4FB0 23            [ 6]  221 	inc	hl
   4FB1 36 50         [10]  222 	ld	(hl), #>(___str_12)
                            223 ;src/game/game.c:38: txtWindowInfoTile[3] = "Demand: Cereal";
   4FB3 DD 6E FC      [19]  224 	ld	l,-4 (ix)
   4FB6 DD 66 FD      [19]  225 	ld	h,-3 (ix)
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
   5104 21 8C 77      [10]  346 	ld	hl,#_CURSOR_MODE + 0
   5107 36 03         [10]  347 	ld	(hl), #0x03
                            348 ;src/game/game.c:63: break;
   5109 18 0C         [12]  349 	jr	00105$
                            350 ;src/game/game.c:65: case 1:
   510B                     351 00102$:
                            352 ;src/game/game.c:66: CURSOR_MODE=T_SMEW;
   510B 21 8C 77      [10]  353 	ld	hl,#_CURSOR_MODE + 0
   510E 36 05         [10]  354 	ld	(hl), #0x05
                            355 ;src/game/game.c:67: break;
   5110 18 05         [12]  356 	jr	00105$
                            357 ;src/game/game.c:69: case 2:
   5112                     358 00103$:
                            359 ;src/game/game.c:70: CURSOR_MODE=T_SLEW;
   5112 21 8C 77      [10]  360 	ld	hl,#_CURSOR_MODE + 0
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
   51F9 21 8C 77      [10]  510 	ld	hl,#_CURSOR_MODE + 0
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
   5232 11 88 68      [10]  547 	ld	de, #_p_world
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
   5241 CD 4E 5A      [17]  560 	call	_trainManagement
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
   52E5 21 E4 FF      [10]  610 	ld	hl, #-28
   52E8 39            [11]  611 	add	hl, sp
   52E9 F9            [ 6]  612 	ld	sp, hl
                            613 ;src/game/game.c:137: int ulx = 0;
   52EA DD 36 F1 00   [19]  614 	ld	-15 (ix), #0x00
   52EE DD 36 F2 00   [19]  615 	ld	-14 (ix), #0x00
                            616 ;src/game/game.c:138: int uly = 0;
   52F2 DD 36 EF 00   [19]  617 	ld	-17 (ix), #0x00
   52F6 DD 36 F0 00   [19]  618 	ld	-16 (ix), #0x00
                            619 ;src/game/game.c:139: int xCursor = 10;
   52FA DD 36 F3 0A   [19]  620 	ld	-13 (ix), #0x0a
   52FE DD 36 F4 00   [19]  621 	ld	-12 (ix), #0x00
                            622 ;src/game/game.c:140: int yCursor = 6;
   5302 DD 36 ED 06   [19]  623 	ld	-19 (ix), #0x06
   5306 DD 36 EE 00   [19]  624 	ld	-18 (ix), #0x00
                            625 ;src/game/game.c:142: u8 exit=0;
   530A DD 36 EA 00   [19]  626 	ld	-22 (ix), #0x00
                            627 ;src/game/game.c:144: nbTrainList=0;
   530E 21 8D 77      [10]  628 	ld	hl,#_nbTrainList + 0
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
   5326 CD D0 66      [17]  642 	call	_cpct_getScreenPtr
                            643 ;src/game/game.c:148: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   5329 01 3A 5A      [10]  644 	ld	bc, #___str_31+0
   532C AF            [ 4]  645 	xor	a, a
   532D F5            [11]  646 	push	af
   532E 33            [ 6]  647 	inc	sp
   532F E5            [11]  648 	push	hl
   5330 C5            [11]  649 	push	bc
   5331 CD EA 61      [17]  650 	call	_cpct_drawStringM2
   5334 F1            [10]  651 	pop	af
   5335 F1            [10]  652 	pop	af
   5336 33            [ 6]  653 	inc	sp
                            654 ;src/game/game.c:150: generateWorld();
   5337 CD 39 7B      [17]  655 	call	_generateWorld
                            656 ;src/game/game.c:152: putM1();
   533A CD 33 41      [17]  657 	call	_putM1
                            658 ;src/game/game.c:153: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   533D 21 00 00      [10]  659 	ld	hl, #0x0000
   5340 E5            [11]  660 	push	hl
   5341 2E 00         [ 7]  661 	ld	l, #0x00
   5343 E5            [11]  662 	push	hl
   5344 CD A1 65      [17]  663 	call	_cpct_px2byteM1
   5347 F1            [10]  664 	pop	af
   5348 F1            [10]  665 	pop	af
   5349 45            [ 4]  666 	ld	b, l
   534A 21 00 40      [10]  667 	ld	hl, #0x4000
   534D E5            [11]  668 	push	hl
   534E C5            [11]  669 	push	bc
   534F 33            [ 6]  670 	inc	sp
   5350 26 C0         [ 7]  671 	ld	h, #0xc0
   5352 E5            [11]  672 	push	hl
   5353 CD 93 65      [17]  673 	call	_cpct_memset
                            674 ;src/game/game.c:154: drawWorld(ulx, uly);
   5356 21 00 00      [10]  675 	ld	hl, #0x0000
   5359 E5            [11]  676 	push	hl
   535A CD 0D 82      [17]  677 	call	_drawWorld
                            678 ;src/game/game.c:155: drawCursor(xCursor, yCursor);
   535D 21 0A 06      [10]  679 	ld	hl, #0x060a
   5360 E3            [19]  680 	ex	(sp),hl
   5361 CD 93 77      [17]  681 	call	_drawCursor
   5364 F1            [10]  682 	pop	af
                            683 ;src/game/game.c:158: do{
   5365                     684 00192$:
                            685 ;src/game/game.c:159: cpct_scanKeyboard(); 
   5365 CD F0 66      [17]  686 	call	_cpct_scanKeyboard
                            687 ;src/game/game.c:161: if ( cpct_isKeyPressed(Key_CursorUp) )
   5368 21 00 01      [10]  688 	ld	hl, #0x0100
   536B CD B3 61      [17]  689 	call	_cpct_isKeyPressed
   536E DD 75 F7      [19]  690 	ld	-9 (ix), l
                            691 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   5371 DD 7E ED      [19]  692 	ld	a, -19 (ix)
   5374 DD 77 FF      [19]  693 	ld	-1 (ix), a
   5377 DD 7E F3      [19]  694 	ld	a, -13 (ix)
   537A DD 77 FB      [19]  695 	ld	-5 (ix), a
   537D DD 7E EF      [19]  696 	ld	a, -17 (ix)
   5380 DD 77 FE      [19]  697 	ld	-2 (ix), a
   5383 DD 7E F1      [19]  698 	ld	a, -15 (ix)
   5386 DD 77 F8      [19]  699 	ld	-8 (ix), a
                            700 ;src/game/game.c:161: if ( cpct_isKeyPressed(Key_CursorUp) )
   5389 DD 7E F7      [19]  701 	ld	a, -9 (ix)
   538C B7            [ 4]  702 	or	a, a
   538D CA 22 54      [10]  703 	jp	Z, 00190$
                            704 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   5390 DD 66 FF      [19]  705 	ld	h, -1 (ix)
   5393 DD 6E FB      [19]  706 	ld	l, -5 (ix)
   5396 E5            [11]  707 	push	hl
   5397 DD 66 FE      [19]  708 	ld	h, -2 (ix)
   539A DD 6E F8      [19]  709 	ld	l, -8 (ix)
   539D E5            [11]  710 	push	hl
   539E CD A7 7E      [17]  711 	call	_drawTile
   53A1 F1            [10]  712 	pop	af
   53A2 F1            [10]  713 	pop	af
                            714 ;src/game/game.c:165: yCursor-=1;
   53A3 DD 6E ED      [19]  715 	ld	l,-19 (ix)
   53A6 DD 66 EE      [19]  716 	ld	h,-18 (ix)
   53A9 2B            [ 6]  717 	dec	hl
   53AA DD 75 ED      [19]  718 	ld	-19 (ix), l
   53AD DD 74 EE      [19]  719 	ld	-18 (ix), h
                            720 ;src/game/game.c:168: if(yCursor<0)
   53B0 DD CB EE 7E   [20]  721 	bit	7, -18 (ix)
   53B4 28 40         [12]  722 	jr	Z,00104$
                            723 ;src/game/game.c:170: yCursor=0;
   53B6 DD 36 ED 00   [19]  724 	ld	-19 (ix), #0x00
   53BA DD 36 EE 00   [19]  725 	ld	-18 (ix), #0x00
                            726 ;src/game/game.c:173: if(uly>0)
   53BE AF            [ 4]  727 	xor	a, a
   53BF DD BE EF      [19]  728 	cp	a, -17 (ix)
   53C2 DD 9E F0      [19]  729 	sbc	a, -16 (ix)
   53C5 E2 CA 53      [10]  730 	jp	PO, 00418$
   53C8 EE 80         [ 7]  731 	xor	a, #0x80
   53CA                     732 00418$:
   53CA F2 F6 53      [10]  733 	jp	P, 00104$
                            734 ;src/game/game.c:175: uly-=1;
   53CD DD 6E EF      [19]  735 	ld	l,-17 (ix)
   53D0 DD 66 F0      [19]  736 	ld	h,-16 (ix)
   53D3 2B            [ 6]  737 	dec	hl
   53D4 DD 75 EF      [19]  738 	ld	-17 (ix), l
   53D7 DD 74 F0      [19]  739 	ld	-16 (ix), h
                            740 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   53DA DD 7E EF      [19]  741 	ld	a, -17 (ix)
                            742 ;src/game/game.c:176: drawWorld(ulx, uly);
   53DD DD 77 FE      [19]  743 	ld	-2 (ix), a
   53E0 F5            [11]  744 	push	af
   53E1 33            [ 6]  745 	inc	sp
   53E2 DD 7E F8      [19]  746 	ld	a, -8 (ix)
   53E5 F5            [11]  747 	push	af
   53E6 33            [ 6]  748 	inc	sp
   53E7 CD 0D 82      [17]  749 	call	_drawWorld
   53EA F1            [10]  750 	pop	af
                            751 ;src/game/game.c:177: drawScrolls(ulx, uly);
   53EB DD 66 FE      [19]  752 	ld	h, -2 (ix)
   53EE DD 6E F8      [19]  753 	ld	l, -8 (ix)
   53F1 E5            [11]  754 	push	hl
   53F2 CD D0 80      [17]  755 	call	_drawScrolls
   53F5 F1            [10]  756 	pop	af
   53F6                     757 00104$:
                            758 ;src/game/game.c:181: drawCursor(xCursor, yCursor);
   53F6 DD 46 ED      [19]  759 	ld	b, -19 (ix)
   53F9 C5            [11]  760 	push	bc
   53FA 33            [ 6]  761 	inc	sp
   53FB DD 7E FB      [19]  762 	ld	a, -5 (ix)
   53FE F5            [11]  763 	push	af
   53FF 33            [ 6]  764 	inc	sp
   5400 CD 93 77      [17]  765 	call	_drawCursor
   5403 F1            [10]  766 	pop	af
                            767 ;src/game/game.c:184: for(i=0; i<5000; i++) {}
   5404 DD 36 EB 88   [19]  768 	ld	-21 (ix), #0x88
   5408 DD 36 EC 13   [19]  769 	ld	-20 (ix), #0x13
   540C                     770 00197$:
   540C DD 6E EB      [19]  771 	ld	l,-21 (ix)
   540F DD 66 EC      [19]  772 	ld	h,-20 (ix)
   5412 2B            [ 6]  773 	dec	hl
   5413 DD 75 EB      [19]  774 	ld	-21 (ix), l
   5416 DD 74 EC      [19]  775 	ld	-20 (ix), h
   5419 7C            [ 4]  776 	ld	a, h
   541A DD B6 EB      [19]  777 	or	a,-21 (ix)
   541D 20 ED         [12]  778 	jr	NZ,00197$
   541F C3 EE 59      [10]  779 	jp	00191$
   5422                     780 00190$:
                            781 ;src/game/game.c:187: else if ( cpct_isKeyPressed(Key_CursorDown) )
   5422 21 00 04      [10]  782 	ld	hl, #0x0400
   5425 CD B3 61      [17]  783 	call	_cpct_isKeyPressed
   5428 7D            [ 4]  784 	ld	a, l
   5429 B7            [ 4]  785 	or	a, a
   542A CA C1 54      [10]  786 	jp	Z, 00187$
                            787 ;src/game/game.c:189: drawTile(ulx, uly, xCursor, yCursor);
   542D DD 66 FF      [19]  788 	ld	h, -1 (ix)
   5430 DD 6E FB      [19]  789 	ld	l, -5 (ix)
   5433 E5            [11]  790 	push	hl
   5434 DD 66 FE      [19]  791 	ld	h, -2 (ix)
   5437 DD 6E F8      [19]  792 	ld	l, -8 (ix)
   543A E5            [11]  793 	push	hl
   543B CD A7 7E      [17]  794 	call	_drawTile
   543E F1            [10]  795 	pop	af
   543F F1            [10]  796 	pop	af
                            797 ;src/game/game.c:190: yCursor+=1;
   5440 DD 34 ED      [23]  798 	inc	-19 (ix)
   5443 20 03         [12]  799 	jr	NZ,00419$
   5445 DD 34 EE      [23]  800 	inc	-18 (ix)
   5448                     801 00419$:
                            802 ;src/game/game.c:191: if(yCursor>NBTILE_H-1)
   5448 3E 0B         [ 7]  803 	ld	a, #0x0b
   544A DD BE ED      [19]  804 	cp	a, -19 (ix)
   544D 3E 00         [ 7]  805 	ld	a, #0x00
   544F DD 9E EE      [19]  806 	sbc	a, -18 (ix)
   5452 E2 57 54      [10]  807 	jp	PO, 00420$
   5455 EE 80         [ 7]  808 	xor	a, #0x80
   5457                     809 00420$:
   5457 F2 95 54      [10]  810 	jp	P, 00109$
                            811 ;src/game/game.c:193: yCursor=NBTILE_H-1;
   545A DD 36 ED 0B   [19]  812 	ld	-19 (ix), #0x0b
   545E DD 36 EE 00   [19]  813 	ld	-18 (ix), #0x00
                            814 ;src/game/game.c:194: if(uly<HEIGHT-NBTILE_H)
   5462 DD 7E EF      [19]  815 	ld	a, -17 (ix)
   5465 D6 24         [ 7]  816 	sub	a, #0x24
   5467 DD 7E F0      [19]  817 	ld	a, -16 (ix)
   546A 17            [ 4]  818 	rla
   546B 3F            [ 4]  819 	ccf
   546C 1F            [ 4]  820 	rra
   546D DE 80         [ 7]  821 	sbc	a, #0x80
   546F 30 24         [12]  822 	jr	NC,00109$
                            823 ;src/game/game.c:196: uly+=1;
   5471 DD 34 EF      [23]  824 	inc	-17 (ix)
   5474 20 03         [12]  825 	jr	NZ,00421$
   5476 DD 34 F0      [23]  826 	inc	-16 (ix)
   5479                     827 00421$:
                            828 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   5479 DD 7E EF      [19]  829 	ld	a, -17 (ix)
                            830 ;src/game/game.c:197: drawWorld(ulx, uly);
   547C DD 77 FE      [19]  831 	ld	-2 (ix), a
   547F F5            [11]  832 	push	af
   5480 33            [ 6]  833 	inc	sp
   5481 DD 7E F8      [19]  834 	ld	a, -8 (ix)
   5484 F5            [11]  835 	push	af
   5485 33            [ 6]  836 	inc	sp
   5486 CD 0D 82      [17]  837 	call	_drawWorld
   5489 F1            [10]  838 	pop	af
                            839 ;src/game/game.c:198: drawScrolls(ulx, uly);
   548A DD 66 FE      [19]  840 	ld	h, -2 (ix)
   548D DD 6E F8      [19]  841 	ld	l, -8 (ix)
   5490 E5            [11]  842 	push	hl
   5491 CD D0 80      [17]  843 	call	_drawScrolls
   5494 F1            [10]  844 	pop	af
   5495                     845 00109$:
                            846 ;src/game/game.c:202: drawCursor(xCursor, yCursor);
   5495 DD 46 ED      [19]  847 	ld	b, -19 (ix)
   5498 C5            [11]  848 	push	bc
   5499 33            [ 6]  849 	inc	sp
   549A DD 7E FB      [19]  850 	ld	a, -5 (ix)
   549D F5            [11]  851 	push	af
   549E 33            [ 6]  852 	inc	sp
   549F CD 93 77      [17]  853 	call	_drawCursor
   54A2 F1            [10]  854 	pop	af
                            855 ;src/game/game.c:205: for(i=0; i<5000; i++) {}
   54A3 DD 36 EB 88   [19]  856 	ld	-21 (ix), #0x88
   54A7 DD 36 EC 13   [19]  857 	ld	-20 (ix), #0x13
   54AB                     858 00200$:
   54AB DD 6E EB      [19]  859 	ld	l,-21 (ix)
   54AE DD 66 EC      [19]  860 	ld	h,-20 (ix)
   54B1 2B            [ 6]  861 	dec	hl
   54B2 DD 75 EB      [19]  862 	ld	-21 (ix), l
   54B5 DD 74 EC      [19]  863 	ld	-20 (ix), h
   54B8 7C            [ 4]  864 	ld	a, h
   54B9 DD B6 EB      [19]  865 	or	a,-21 (ix)
   54BC 20 ED         [12]  866 	jr	NZ,00200$
   54BE C3 EE 59      [10]  867 	jp	00191$
   54C1                     868 00187$:
                            869 ;src/game/game.c:208: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   54C1 21 01 01      [10]  870 	ld	hl, #0x0101
   54C4 CD B3 61      [17]  871 	call	_cpct_isKeyPressed
   54C7 7D            [ 4]  872 	ld	a, l
   54C8 B7            [ 4]  873 	or	a, a
   54C9 CA 4B 55      [10]  874 	jp	Z, 00184$
                            875 ;src/game/game.c:210: drawTile(ulx, uly, xCursor, yCursor);
   54CC DD 66 FF      [19]  876 	ld	h, -1 (ix)
   54CF DD 6E FB      [19]  877 	ld	l, -5 (ix)
   54D2 E5            [11]  878 	push	hl
   54D3 DD 66 FE      [19]  879 	ld	h, -2 (ix)
   54D6 DD 6E F8      [19]  880 	ld	l, -8 (ix)
   54D9 E5            [11]  881 	push	hl
   54DA CD A7 7E      [17]  882 	call	_drawTile
   54DD F1            [10]  883 	pop	af
   54DE F1            [10]  884 	pop	af
                            885 ;src/game/game.c:211: xCursor-=1;
   54DF DD 6E F3      [19]  886 	ld	l,-13 (ix)
   54E2 DD 66 F4      [19]  887 	ld	h,-12 (ix)
   54E5 2B            [ 6]  888 	dec	hl
   54E6 DD 75 F3      [19]  889 	ld	-13 (ix), l
   54E9 DD 74 F4      [19]  890 	ld	-12 (ix), h
                            891 ;src/game/game.c:212: if(xCursor<0)
   54EC DD CB F4 7E   [20]  892 	bit	7, -12 (ix)
   54F0 28 40         [12]  893 	jr	Z,00114$
                            894 ;src/game/game.c:214: xCursor=0;
   54F2 DD 36 F3 00   [19]  895 	ld	-13 (ix), #0x00
   54F6 DD 36 F4 00   [19]  896 	ld	-12 (ix), #0x00
                            897 ;src/game/game.c:215: if(ulx>0)
   54FA AF            [ 4]  898 	xor	a, a
   54FB DD BE F1      [19]  899 	cp	a, -15 (ix)
   54FE DD 9E F2      [19]  900 	sbc	a, -14 (ix)
   5501 E2 06 55      [10]  901 	jp	PO, 00422$
   5504 EE 80         [ 7]  902 	xor	a, #0x80
   5506                     903 00422$:
   5506 F2 32 55      [10]  904 	jp	P, 00114$
                            905 ;src/game/game.c:217: ulx-=1;
   5509 DD 6E F1      [19]  906 	ld	l,-15 (ix)
   550C DD 66 F2      [19]  907 	ld	h,-14 (ix)
   550F 2B            [ 6]  908 	dec	hl
   5510 DD 75 F1      [19]  909 	ld	-15 (ix), l
   5513 DD 74 F2      [19]  910 	ld	-14 (ix), h
                            911 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   5516 DD 7E F1      [19]  912 	ld	a, -15 (ix)
   5519 DD 77 F8      [19]  913 	ld	-8 (ix), a
                            914 ;src/game/game.c:218: drawWorld(ulx, uly);
   551C DD 66 FE      [19]  915 	ld	h, -2 (ix)
   551F DD 6E F8      [19]  916 	ld	l, -8 (ix)
   5522 E5            [11]  917 	push	hl
   5523 CD 0D 82      [17]  918 	call	_drawWorld
   5526 F1            [10]  919 	pop	af
                            920 ;src/game/game.c:219: drawScrolls(ulx, uly);
   5527 DD 66 FE      [19]  921 	ld	h, -2 (ix)
   552A DD 6E F8      [19]  922 	ld	l, -8 (ix)
   552D E5            [11]  923 	push	hl
   552E CD D0 80      [17]  924 	call	_drawScrolls
   5531 F1            [10]  925 	pop	af
   5532                     926 00114$:
                            927 ;src/game/game.c:223: drawCursor(xCursor, yCursor);
   5532 DD 46 F3      [19]  928 	ld	b, -13 (ix)
   5535 DD 7E FF      [19]  929 	ld	a, -1 (ix)
   5538 F5            [11]  930 	push	af
   5539 33            [ 6]  931 	inc	sp
   553A C5            [11]  932 	push	bc
   553B 33            [ 6]  933 	inc	sp
   553C CD 93 77      [17]  934 	call	_drawCursor
   553F F1            [10]  935 	pop	af
                            936 ;src/game/game.c:226: for(i=0; i<14000; i++) {}
   5540 01 B0 36      [10]  937 	ld	bc, #0x36b0
   5543                     938 00203$:
   5543 0B            [ 6]  939 	dec	bc
   5544 78            [ 4]  940 	ld	a, b
   5545 B1            [ 4]  941 	or	a,c
   5546 20 FB         [12]  942 	jr	NZ,00203$
   5548 C3 EE 59      [10]  943 	jp	00191$
   554B                     944 00184$:
                            945 ;src/game/game.c:229: else if ( cpct_isKeyPressed(Key_CursorRight) )
   554B 21 00 02      [10]  946 	ld	hl, #0x0200
   554E CD B3 61      [17]  947 	call	_cpct_isKeyPressed
   5551 7D            [ 4]  948 	ld	a, l
   5552 B7            [ 4]  949 	or	a, a
   5553 CA D7 55      [10]  950 	jp	Z, 00181$
                            951 ;src/game/game.c:231: drawTile(ulx, uly, xCursor, yCursor);
   5556 DD 66 FF      [19]  952 	ld	h, -1 (ix)
   5559 DD 6E FB      [19]  953 	ld	l, -5 (ix)
   555C E5            [11]  954 	push	hl
   555D DD 66 FE      [19]  955 	ld	h, -2 (ix)
   5560 DD 6E F8      [19]  956 	ld	l, -8 (ix)
   5563 E5            [11]  957 	push	hl
   5564 CD A7 7E      [17]  958 	call	_drawTile
   5567 F1            [10]  959 	pop	af
   5568 F1            [10]  960 	pop	af
                            961 ;src/game/game.c:232: xCursor+=1;
   5569 DD 34 F3      [23]  962 	inc	-13 (ix)
   556C 20 03         [12]  963 	jr	NZ,00423$
   556E DD 34 F4      [23]  964 	inc	-12 (ix)
   5571                     965 00423$:
                            966 ;src/game/game.c:233: if(xCursor>NBTILE_W-1)
   5571 3E 13         [ 7]  967 	ld	a, #0x13
   5573 DD BE F3      [19]  968 	cp	a, -13 (ix)
   5576 3E 00         [ 7]  969 	ld	a, #0x00
   5578 DD 9E F4      [19]  970 	sbc	a, -12 (ix)
   557B E2 80 55      [10]  971 	jp	PO, 00424$
   557E EE 80         [ 7]  972 	xor	a, #0x80
   5580                     973 00424$:
   5580 F2 BE 55      [10]  974 	jp	P, 00119$
                            975 ;src/game/game.c:235: xCursor=NBTILE_W-1;
   5583 DD 36 F3 13   [19]  976 	ld	-13 (ix), #0x13
   5587 DD 36 F4 00   [19]  977 	ld	-12 (ix), #0x00
                            978 ;src/game/game.c:236: if(ulx<WIDTH-NBTILE_W)
   558B DD 7E F1      [19]  979 	ld	a, -15 (ix)
   558E D6 3C         [ 7]  980 	sub	a, #0x3c
   5590 DD 7E F2      [19]  981 	ld	a, -14 (ix)
   5593 17            [ 4]  982 	rla
   5594 3F            [ 4]  983 	ccf
   5595 1F            [ 4]  984 	rra
   5596 DE 80         [ 7]  985 	sbc	a, #0x80
   5598 30 24         [12]  986 	jr	NC,00119$
                            987 ;src/game/game.c:238: ulx+=1;
   559A DD 34 F1      [23]  988 	inc	-15 (ix)
   559D 20 03         [12]  989 	jr	NZ,00425$
   559F DD 34 F2      [23]  990 	inc	-14 (ix)
   55A2                     991 00425$:
                            992 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   55A2 DD 7E F1      [19]  993 	ld	a, -15 (ix)
   55A5 DD 77 F8      [19]  994 	ld	-8 (ix), a
                            995 ;src/game/game.c:239: drawWorld(ulx, uly);
   55A8 DD 66 FE      [19]  996 	ld	h, -2 (ix)
   55AB DD 6E F8      [19]  997 	ld	l, -8 (ix)
   55AE E5            [11]  998 	push	hl
   55AF CD 0D 82      [17]  999 	call	_drawWorld
   55B2 F1            [10] 1000 	pop	af
                           1001 ;src/game/game.c:240: drawScrolls(ulx, uly);
   55B3 DD 66 FE      [19] 1002 	ld	h, -2 (ix)
   55B6 DD 6E F8      [19] 1003 	ld	l, -8 (ix)
   55B9 E5            [11] 1004 	push	hl
   55BA CD D0 80      [17] 1005 	call	_drawScrolls
   55BD F1            [10] 1006 	pop	af
   55BE                    1007 00119$:
                           1008 ;src/game/game.c:244: drawCursor(xCursor, yCursor);
   55BE DD 46 F3      [19] 1009 	ld	b, -13 (ix)
   55C1 DD 7E FF      [19] 1010 	ld	a, -1 (ix)
   55C4 F5            [11] 1011 	push	af
   55C5 33            [ 6] 1012 	inc	sp
   55C6 C5            [11] 1013 	push	bc
   55C7 33            [ 6] 1014 	inc	sp
   55C8 CD 93 77      [17] 1015 	call	_drawCursor
   55CB F1            [10] 1016 	pop	af
                           1017 ;src/game/game.c:247: for(i=0; i<14000; i++) {}
   55CC 01 B0 36      [10] 1018 	ld	bc, #0x36b0
   55CF                    1019 00206$:
   55CF 0B            [ 6] 1020 	dec	bc
   55D0 78            [ 4] 1021 	ld	a, b
   55D1 B1            [ 4] 1022 	or	a,c
   55D2 20 FB         [12] 1023 	jr	NZ,00206$
   55D4 C3 EE 59      [10] 1024 	jp	00191$
   55D7                    1025 00181$:
                           1026 ;src/game/game.c:251: else if ( cpct_isKeyPressed(Key_Space) )
   55D7 21 05 80      [10] 1027 	ld	hl, #0x8005
   55DA CD B3 61      [17] 1028 	call	_cpct_isKeyPressed
   55DD 7D            [ 4] 1029 	ld	a, l
   55DE B7            [ 4] 1030 	or	a, a
   55DF CA 85 56      [10] 1031 	jp	Z, 00178$
                           1032 ;src/game/game.c:253: if(CURSOR_MODE==T_SSNS)
   55E2 FD 21 8C 77   [14] 1033 	ld	iy, #_CURSOR_MODE
   55E6 FD 7E 00      [19] 1034 	ld	a, 0 (iy)
   55E9 D6 02         [ 7] 1035 	sub	a, #0x02
   55EB 20 07         [12] 1036 	jr	NZ,00143$
                           1037 ;src/game/game.c:254: CURSOR_MODE=T_SSEW;
   55ED FD 36 00 03   [19] 1038 	ld	0 (iy), #0x03
   55F1 C3 6F 56      [10] 1039 	jp	00144$
   55F4                    1040 00143$:
                           1041 ;src/game/game.c:255: else if(CURSOR_MODE==T_SSEW)
   55F4 FD 21 8C 77   [14] 1042 	ld	iy, #_CURSOR_MODE
   55F8 FD 7E 00      [19] 1043 	ld	a, 0 (iy)
   55FB D6 03         [ 7] 1044 	sub	a, #0x03
   55FD 20 06         [12] 1045 	jr	NZ,00140$
                           1046 ;src/game/game.c:256: CURSOR_MODE=T_SSNS;
   55FF FD 36 00 02   [19] 1047 	ld	0 (iy), #0x02
   5603 18 6A         [12] 1048 	jr	00144$
   5605                    1049 00140$:
                           1050 ;src/game/game.c:257: else if(CURSOR_MODE==T_SMNS)
   5605 FD 21 8C 77   [14] 1051 	ld	iy, #_CURSOR_MODE
   5609 FD 7E 00      [19] 1052 	ld	a, 0 (iy)
   560C D6 04         [ 7] 1053 	sub	a, #0x04
   560E 20 06         [12] 1054 	jr	NZ,00137$
                           1055 ;src/game/game.c:258: CURSOR_MODE=T_SMEW;
   5610 FD 36 00 05   [19] 1056 	ld	0 (iy), #0x05
   5614 18 59         [12] 1057 	jr	00144$
   5616                    1058 00137$:
                           1059 ;src/game/game.c:259: else if(CURSOR_MODE==T_SMEW)
   5616 FD 21 8C 77   [14] 1060 	ld	iy, #_CURSOR_MODE
   561A FD 7E 00      [19] 1061 	ld	a, 0 (iy)
   561D D6 05         [ 7] 1062 	sub	a, #0x05
   561F 20 06         [12] 1063 	jr	NZ,00134$
                           1064 ;src/game/game.c:260: CURSOR_MODE=T_SMNS;
   5621 FD 36 00 04   [19] 1065 	ld	0 (iy), #0x04
   5625 18 48         [12] 1066 	jr	00144$
   5627                    1067 00134$:
                           1068 ;src/game/game.c:261: else if(CURSOR_MODE==T_SLNS)
   5627 FD 21 8C 77   [14] 1069 	ld	iy, #_CURSOR_MODE
   562B FD 7E 00      [19] 1070 	ld	a, 0 (iy)
   562E D6 06         [ 7] 1071 	sub	a, #0x06
   5630 20 06         [12] 1072 	jr	NZ,00131$
                           1073 ;src/game/game.c:262: CURSOR_MODE=T_SLEW;
   5632 FD 36 00 07   [19] 1074 	ld	0 (iy), #0x07
   5636 18 37         [12] 1075 	jr	00144$
   5638                    1076 00131$:
                           1077 ;src/game/game.c:263: else if(CURSOR_MODE==T_SLEW)
   5638 FD 21 8C 77   [14] 1078 	ld	iy, #_CURSOR_MODE
   563C FD 7E 00      [19] 1079 	ld	a, 0 (iy)
   563F D6 07         [ 7] 1080 	sub	a, #0x07
   5641 20 06         [12] 1081 	jr	NZ,00128$
                           1082 ;src/game/game.c:264: CURSOR_MODE=T_SLNS;
   5643 FD 36 00 06   [19] 1083 	ld	0 (iy), #0x06
   5647 18 26         [12] 1084 	jr	00144$
   5649                    1085 00128$:
                           1086 ;src/game/game.c:265: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   5649 FD 21 8C 77   [14] 1087 	ld	iy, #_CURSOR_MODE
   564D FD 7E 00      [19] 1088 	ld	a, 0 (iy)
   5650 D6 08         [ 7] 1089 	sub	a, #0x08
   5652 38 0C         [12] 1090 	jr	C,00124$
   5654 FD 7E 00      [19] 1091 	ld	a, 0 (iy)
   5657 D6 11         [ 7] 1092 	sub	a, #0x11
   5659 30 05         [12] 1093 	jr	NC,00124$
                           1094 ;src/game/game.c:266: CURSOR_MODE+=1;
   565B FD 34 00      [23] 1095 	inc	0 (iy)
   565E 18 0F         [12] 1096 	jr	00144$
   5660                    1097 00124$:
                           1098 ;src/game/game.c:267: else if(CURSOR_MODE==T_RNSW)
   5660 FD 21 8C 77   [14] 1099 	ld	iy, #_CURSOR_MODE
   5664 FD 7E 00      [19] 1100 	ld	a, 0 (iy)
   5667 D6 11         [ 7] 1101 	sub	a, #0x11
   5669 20 04         [12] 1102 	jr	NZ,00144$
                           1103 ;src/game/game.c:268: CURSOR_MODE=T_REW;
   566B FD 36 00 08   [19] 1104 	ld	0 (iy), #0x08
   566F                    1105 00144$:
                           1106 ;src/game/game.c:270: drawCursor(xCursor, yCursor);
   566F DD 66 FF      [19] 1107 	ld	h, -1 (ix)
   5672 DD 6E FB      [19] 1108 	ld	l, -5 (ix)
   5675 E5            [11] 1109 	push	hl
   5676 CD 93 77      [17] 1110 	call	_drawCursor
   5679 F1            [10] 1111 	pop	af
                           1112 ;src/game/game.c:273: for(i=0; i<14000; i++) {}
   567A 01 B0 36      [10] 1113 	ld	bc, #0x36b0
   567D                    1114 00209$:
   567D 0B            [ 6] 1115 	dec	bc
   567E 78            [ 4] 1116 	ld	a, b
   567F B1            [ 4] 1117 	or	a,c
   5680 20 FB         [12] 1118 	jr	NZ,00209$
   5682 C3 EE 59      [10] 1119 	jp	00191$
   5685                    1120 00178$:
                           1121 ;src/game/game.c:276: else if ( cpct_isKeyPressed(Key_Esc) )
   5685 21 08 04      [10] 1122 	ld	hl, #0x0408
   5688 CD B3 61      [17] 1123 	call	_cpct_isKeyPressed
   568B 7D            [ 4] 1124 	ld	a, l
   568C B7            [ 4] 1125 	or	a, a
   568D CA 5B 57      [10] 1126 	jp	Z, 00175$
                           1127 ;src/game/game.c:279: if(CURSOR_MODE==NONE)
   5690 3A 8C 77      [13] 1128 	ld	a,(#_CURSOR_MODE + 0)
   5693 B7            [ 4] 1129 	or	a, a
   5694 C2 2D 57      [10] 1130 	jp	NZ, 00150$
                           1131 ;src/game/game.c:282: const char *txtWindowQuit[] = { 
   5697 21 00 00      [10] 1132 	ld	hl, #0x0000
   569A 39            [11] 1133 	add	hl, sp
   569B DD 75 FC      [19] 1134 	ld	-4 (ix), l
   569E DD 74 FD      [19] 1135 	ld	-3 (ix), h
   56A1 36 05         [10] 1136 	ld	(hl), #<(___str_28)
   56A3 23            [ 6] 1137 	inc	hl
   56A4 36 5A         [10] 1138 	ld	(hl), #>(___str_28)
   56A6 DD 7E FC      [19] 1139 	ld	a, -4 (ix)
   56A9 C6 02         [ 7] 1140 	add	a, #0x02
   56AB DD 77 F5      [19] 1141 	ld	-11 (ix), a
   56AE DD 7E FD      [19] 1142 	ld	a, -3 (ix)
   56B1 CE 00         [ 7] 1143 	adc	a, #0x00
   56B3 DD 77 F6      [19] 1144 	ld	-10 (ix), a
   56B6 DD 6E F5      [19] 1145 	ld	l,-11 (ix)
   56B9 DD 66 F6      [19] 1146 	ld	h,-10 (ix)
   56BC 36 13         [10] 1147 	ld	(hl), #<(___str_29)
   56BE 23            [ 6] 1148 	inc	hl
   56BF 36 5A         [10] 1149 	ld	(hl), #>(___str_29)
   56C1 DD 7E FC      [19] 1150 	ld	a, -4 (ix)
   56C4 C6 04         [ 7] 1151 	add	a, #0x04
   56C6 DD 77 F5      [19] 1152 	ld	-11 (ix), a
   56C9 DD 7E FD      [19] 1153 	ld	a, -3 (ix)
   56CC CE 00         [ 7] 1154 	adc	a, #0x00
   56CE DD 77 F6      [19] 1155 	ld	-10 (ix), a
   56D1 DD 6E F5      [19] 1156 	ld	l,-11 (ix)
   56D4 DD 66 F6      [19] 1157 	ld	h,-10 (ix)
   56D7 36 14         [10] 1158 	ld	(hl), #<(___str_30)
   56D9 23            [ 6] 1159 	inc	hl
   56DA 36 5A         [10] 1160 	ld	(hl), #>(___str_30)
                           1161 ;src/game/game.c:288: putM2();
   56DC CD 44 41      [17] 1162 	call	_putM2
                           1163 ;src/game/game.c:289: if(	drawWindow(txtWindowQuit,3,1) == 1)
   56DF DD 7E FC      [19] 1164 	ld	a, -4 (ix)
   56E2 DD 77 F5      [19] 1165 	ld	-11 (ix), a
   56E5 DD 7E FD      [19] 1166 	ld	a, -3 (ix)
   56E8 DD 77 F6      [19] 1167 	ld	-10 (ix), a
   56EB 21 03 01      [10] 1168 	ld	hl, #0x0103
   56EE E5            [11] 1169 	push	hl
   56EF DD 6E F5      [19] 1170 	ld	l,-11 (ix)
   56F2 DD 66 F6      [19] 1171 	ld	h,-10 (ix)
   56F5 E5            [11] 1172 	push	hl
   56F6 CD 2D 46      [17] 1173 	call	_drawWindow
   56F9 F1            [10] 1174 	pop	af
   56FA F1            [10] 1175 	pop	af
   56FB 2D            [ 4] 1176 	dec	l
   56FC 20 06         [12] 1177 	jr	NZ,00147$
                           1178 ;src/game/game.c:290: exit=1;
   56FE DD 36 EA 01   [19] 1179 	ld	-22 (ix), #0x01
   5702 18 41         [12] 1180 	jr	00151$
   5704                    1181 00147$:
                           1182 ;src/game/game.c:293: putM1();
   5704 CD 33 41      [17] 1183 	call	_putM1
                           1184 ;src/game/game.c:294: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5707 21 00 00      [10] 1185 	ld	hl, #0x0000
   570A E5            [11] 1186 	push	hl
   570B 2E 00         [ 7] 1187 	ld	l, #0x00
   570D E5            [11] 1188 	push	hl
   570E CD A1 65      [17] 1189 	call	_cpct_px2byteM1
   5711 F1            [10] 1190 	pop	af
   5712 F1            [10] 1191 	pop	af
   5713 45            [ 4] 1192 	ld	b, l
   5714 21 00 40      [10] 1193 	ld	hl, #0x4000
   5717 E5            [11] 1194 	push	hl
   5718 C5            [11] 1195 	push	bc
   5719 33            [ 6] 1196 	inc	sp
   571A 26 C0         [ 7] 1197 	ld	h, #0xc0
   571C E5            [11] 1198 	push	hl
   571D CD 93 65      [17] 1199 	call	_cpct_memset
                           1200 ;src/game/game.c:295: drawWorld(ulx, uly);
   5720 DD 66 FE      [19] 1201 	ld	h, -2 (ix)
   5723 DD 6E F8      [19] 1202 	ld	l, -8 (ix)
   5726 E5            [11] 1203 	push	hl
   5727 CD 0D 82      [17] 1204 	call	_drawWorld
   572A F1            [10] 1205 	pop	af
   572B 18 18         [12] 1206 	jr	00151$
   572D                    1207 00150$:
                           1208 ;src/game/game.c:300: CURSOR_MODE=NONE;
   572D 21 8C 77      [10] 1209 	ld	hl,#_CURSOR_MODE + 0
   5730 36 00         [10] 1210 	ld	(hl), #0x00
                           1211 ;src/game/game.c:301: drawTile(ulx, uly, xCursor, yCursor);
   5732 DD 66 FF      [19] 1212 	ld	h, -1 (ix)
   5735 DD 6E FB      [19] 1213 	ld	l, -5 (ix)
   5738 E5            [11] 1214 	push	hl
   5739 DD 66 FE      [19] 1215 	ld	h, -2 (ix)
   573C DD 6E F8      [19] 1216 	ld	l, -8 (ix)
   573F E5            [11] 1217 	push	hl
   5740 CD A7 7E      [17] 1218 	call	_drawTile
   5743 F1            [10] 1219 	pop	af
   5744 F1            [10] 1220 	pop	af
   5745                    1221 00151$:
                           1222 ;src/game/game.c:304: drawCursor(xCursor, yCursor);
   5745 DD 66 FF      [19] 1223 	ld	h, -1 (ix)
   5748 DD 6E FB      [19] 1224 	ld	l, -5 (ix)
   574B E5            [11] 1225 	push	hl
   574C CD 93 77      [17] 1226 	call	_drawCursor
   574F F1            [10] 1227 	pop	af
                           1228 ;src/game/game.c:307: for(i=0; i<14000; i++) {}
   5750 01 B0 36      [10] 1229 	ld	bc, #0x36b0
   5753                    1230 00212$:
   5753 0B            [ 6] 1231 	dec	bc
   5754 78            [ 4] 1232 	ld	a, b
   5755 B1            [ 4] 1233 	or	a,c
   5756 20 FB         [12] 1234 	jr	NZ,00212$
   5758 C3 EE 59      [10] 1235 	jp	00191$
   575B                    1236 00175$:
                           1237 ;src/game/game.c:310: else if ( cpct_isKeyPressed(Key_Return) )
   575B 21 02 04      [10] 1238 	ld	hl, #0x0402
   575E CD B3 61      [17] 1239 	call	_cpct_isKeyPressed
   5761 7D            [ 4] 1240 	ld	a, l
   5762 B7            [ 4] 1241 	or	a, a
   5763 CA EE 59      [10] 1242 	jp	Z, 00191$
                           1243 ;src/game/game.c:315: menuTile(ulx+xCursor, uly+yCursor);
   5766 DD 4E EF      [19] 1244 	ld	c, -17 (ix)
   5769 DD 6E ED      [19] 1245 	ld	l, -19 (ix)
   576C DD 46 F1      [19] 1246 	ld	b, -15 (ix)
   576F DD 5E F3      [19] 1247 	ld	e, -13 (ix)
   5772 79            [ 4] 1248 	ld	a, c
   5773 85            [ 4] 1249 	add	a, l
   5774 4F            [ 4] 1250 	ld	c, a
   5775 78            [ 4] 1251 	ld	a, b
   5776 83            [ 4] 1252 	add	a, e
   5777 DD 77 F5      [19] 1253 	ld	-11 (ix), a
                           1254 ;src/game/game.c:313: if(CURSOR_MODE==NONE)
   577A 3A 8C 77      [13] 1255 	ld	a,(#_CURSOR_MODE + 0)
   577D B7            [ 4] 1256 	or	a, a
   577E 20 33         [12] 1257 	jr	NZ,00169$
                           1258 ;src/game/game.c:315: menuTile(ulx+xCursor, uly+yCursor);
   5780 79            [ 4] 1259 	ld	a, c
   5781 F5            [11] 1260 	push	af
   5782 33            [ 6] 1261 	inc	sp
   5783 DD 7E F5      [19] 1262 	ld	a, -11 (ix)
   5786 F5            [11] 1263 	push	af
   5787 33            [ 6] 1264 	inc	sp
   5788 CD 2F 51      [17] 1265 	call	_menuTile
   578B F1            [10] 1266 	pop	af
                           1267 ;src/game/game.c:316: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   578C 21 00 00      [10] 1268 	ld	hl, #0x0000
   578F E5            [11] 1269 	push	hl
   5790 2E 00         [ 7] 1270 	ld	l, #0x00
   5792 E5            [11] 1271 	push	hl
   5793 CD A1 65      [17] 1272 	call	_cpct_px2byteM1
   5796 F1            [10] 1273 	pop	af
   5797 F1            [10] 1274 	pop	af
   5798 45            [ 4] 1275 	ld	b, l
   5799 21 00 40      [10] 1276 	ld	hl, #0x4000
   579C E5            [11] 1277 	push	hl
   579D C5            [11] 1278 	push	bc
   579E 33            [ 6] 1279 	inc	sp
   579F 26 C0         [ 7] 1280 	ld	h, #0xc0
   57A1 E5            [11] 1281 	push	hl
   57A2 CD 93 65      [17] 1282 	call	_cpct_memset
                           1283 ;src/game/game.c:317: drawWorld(ulx, uly);
   57A5 DD 66 FE      [19] 1284 	ld	h, -2 (ix)
   57A8 DD 6E F8      [19] 1285 	ld	l, -8 (ix)
   57AB E5            [11] 1286 	push	hl
   57AC CD 0D 82      [17] 1287 	call	_drawWorld
   57AF F1            [10] 1288 	pop	af
   57B0 C3 C8 59      [10] 1289 	jp	00170$
   57B3                    1290 00169$:
                           1291 ;src/game/game.c:322: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
   57B3 DD 7E EF      [19] 1292 	ld	a, -17 (ix)
   57B6 DD 86 ED      [19] 1293 	add	a, -19 (ix)
   57B9 DD 77 FC      [19] 1294 	ld	-4 (ix), a
   57BC DD 7E F0      [19] 1295 	ld	a, -16 (ix)
   57BF DD 8E EE      [19] 1296 	adc	a, -18 (ix)
   57C2 DD 77 FD      [19] 1297 	ld	-3 (ix), a
   57C5 DD 7E F1      [19] 1298 	ld	a, -15 (ix)
   57C8 DD 86 F3      [19] 1299 	add	a, -13 (ix)
   57CB DD 77 F9      [19] 1300 	ld	-7 (ix), a
   57CE DD 7E F2      [19] 1301 	ld	a, -14 (ix)
   57D1 DD 8E F4      [19] 1302 	adc	a, -12 (ix)
   57D4 DD 77 FA      [19] 1303 	ld	-6 (ix), a
   57D7 DD 5E FC      [19] 1304 	ld	e,-4 (ix)
   57DA DD 56 FD      [19] 1305 	ld	d,-3 (ix)
   57DD 6B            [ 4] 1306 	ld	l, e
   57DE 62            [ 4] 1307 	ld	h, d
   57DF 29            [11] 1308 	add	hl, hl
   57E0 29            [11] 1309 	add	hl, hl
   57E1 19            [11] 1310 	add	hl, de
   57E2 29            [11] 1311 	add	hl, hl
   57E3 29            [11] 1312 	add	hl, hl
   57E4 29            [11] 1313 	add	hl, hl
   57E5 29            [11] 1314 	add	hl, hl
   57E6 DD 7E F9      [19] 1315 	ld	a, -7 (ix)
   57E9 85            [ 4] 1316 	add	a, l
   57EA 5F            [ 4] 1317 	ld	e, a
   57EB DD 7E FA      [19] 1318 	ld	a, -6 (ix)
   57EE 8C            [ 4] 1319 	adc	a, h
   57EF 57            [ 4] 1320 	ld	d, a
                           1321 ;src/game/game.c:319: else if(CURSOR_MODE==PUTTRAIN)
   57F0 3A 8C 77      [13] 1322 	ld	a,(#_CURSOR_MODE + 0)
   57F3 3D            [ 4] 1323 	dec	a
   57F4 C2 A6 59      [10] 1324 	jp	NZ,00166$
                           1325 ;src/game/game.c:322: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
   57F7 21 88 68      [10] 1326 	ld	hl, #_p_world
   57FA 19            [11] 1327 	add	hl, de
   57FB 46            [ 7] 1328 	ld	b, (hl)
   57FC 78            [ 4] 1329 	ld	a, b
   57FD D6 0A         [ 7] 1330 	sub	a, #0x0a
   57FF DA C8 59      [10] 1331 	jp	C, 00170$
   5802 3E 0F         [ 7] 1332 	ld	a, #0x0f
   5804 90            [ 4] 1333 	sub	a, b
   5805 DA C8 59      [10] 1334 	jp	C, 00170$
                           1335 ;src/game/game.c:325: trainList[nbTrainList].posX = ulx+xCursor;
   5808 ED 5B 8D 77   [20] 1336 	ld	de, (_nbTrainList)
   580C 16 00         [ 7] 1337 	ld	d, #0x00
   580E 6B            [ 4] 1338 	ld	l, e
   580F 62            [ 4] 1339 	ld	h, d
   5810 29            [11] 1340 	add	hl, hl
   5811 19            [11] 1341 	add	hl, de
   5812 29            [11] 1342 	add	hl, hl
   5813 19            [11] 1343 	add	hl, de
   5814 29            [11] 1344 	add	hl, hl
   5815 19            [11] 1345 	add	hl, de
   5816 EB            [ 4] 1346 	ex	de,hl
   5817 FD 2A 88 77   [20] 1347 	ld	iy, (_trainList)
   581B FD 19         [15] 1348 	add	iy, de
   581D 11 04 00      [10] 1349 	ld	de, #0x0004
   5820 FD 19         [15] 1350 	add	iy, de
   5822 DD 7E F5      [19] 1351 	ld	a, -11 (ix)
   5825 FD 77 00      [19] 1352 	ld	0 (iy), a
                           1353 ;src/game/game.c:326: trainList[nbTrainList].posY = uly+yCursor;
   5828 ED 5B 8D 77   [20] 1354 	ld	de, (_nbTrainList)
   582C 16 00         [ 7] 1355 	ld	d, #0x00
   582E 6B            [ 4] 1356 	ld	l, e
   582F 62            [ 4] 1357 	ld	h, d
   5830 29            [11] 1358 	add	hl, hl
   5831 19            [11] 1359 	add	hl, de
   5832 29            [11] 1360 	add	hl, hl
   5833 19            [11] 1361 	add	hl, de
   5834 29            [11] 1362 	add	hl, hl
   5835 19            [11] 1363 	add	hl, de
   5836 EB            [ 4] 1364 	ex	de,hl
   5837 FD 2A 88 77   [20] 1365 	ld	iy, (_trainList)
   583B FD 19         [15] 1366 	add	iy, de
   583D 11 05 00      [10] 1367 	ld	de, #0x0005
   5840 FD 19         [15] 1368 	add	iy, de
   5842 FD 71 00      [19] 1369 	ld	0 (iy), c
                           1370 ;src/game/game.c:328: trainList[nbTrainList].animX = (int)(ulx+xCursor)*TILESIZE_H+8;
   5845 ED 5B 8D 77   [20] 1371 	ld	de, (_nbTrainList)
   5849 16 00         [ 7] 1372 	ld	d, #0x00
   584B 6B            [ 4] 1373 	ld	l, e
   584C 62            [ 4] 1374 	ld	h, d
   584D 29            [11] 1375 	add	hl, hl
   584E 19            [11] 1376 	add	hl, de
   584F 29            [11] 1377 	add	hl, hl
   5850 19            [11] 1378 	add	hl, de
   5851 29            [11] 1379 	add	hl, hl
   5852 19            [11] 1380 	add	hl, de
   5853 EB            [ 4] 1381 	ex	de,hl
   5854 FD 2A 88 77   [20] 1382 	ld	iy, (_trainList)
   5858 FD 19         [15] 1383 	add	iy, de
   585A 11 07 00      [10] 1384 	ld	de, #0x0007
   585D FD 19         [15] 1385 	add	iy, de
   585F 3E 05         [ 7] 1386 	ld	a, #0x04+1
   5861 18 08         [12] 1387 	jr	00445$
   5863                    1388 00444$:
   5863 DD CB F9 26   [23] 1389 	sla	-7 (ix)
   5867 DD CB FA 16   [23] 1390 	rl	-6 (ix)
   586B                    1391 00445$:
   586B 3D            [ 4] 1392 	dec	a
   586C 20 F5         [12] 1393 	jr	NZ,00444$
   586E DD 7E F9      [19] 1394 	ld	a, -7 (ix)
   5871 C6 08         [ 7] 1395 	add	a, #0x08
   5873 DD 77 F5      [19] 1396 	ld	-11 (ix), a
   5876 DD 7E FA      [19] 1397 	ld	a, -6 (ix)
   5879 CE 00         [ 7] 1398 	adc	a, #0x00
   587B DD 77 F6      [19] 1399 	ld	-10 (ix), a
   587E DD 7E F5      [19] 1400 	ld	a, -11 (ix)
   5881 FD 77 00      [19] 1401 	ld	0 (iy), a
   5884 DD 7E F6      [19] 1402 	ld	a, -10 (ix)
   5887 FD 77 01      [19] 1403 	ld	1 (iy), a
                           1404 ;src/game/game.c:329: trainList[nbTrainList].animY = (int)(uly+yCursor)*TILESIZE_H+8;
   588A ED 5B 8D 77   [20] 1405 	ld	de, (_nbTrainList)
   588E 16 00         [ 7] 1406 	ld	d, #0x00
   5890 6B            [ 4] 1407 	ld	l, e
   5891 62            [ 4] 1408 	ld	h, d
   5892 29            [11] 1409 	add	hl, hl
   5893 19            [11] 1410 	add	hl, de
   5894 29            [11] 1411 	add	hl, hl
   5895 19            [11] 1412 	add	hl, de
   5896 29            [11] 1413 	add	hl, hl
   5897 19            [11] 1414 	add	hl, de
   5898 EB            [ 4] 1415 	ex	de,hl
   5899 FD 2A 88 77   [20] 1416 	ld	iy, (_trainList)
   589D FD 19         [15] 1417 	add	iy, de
   589F 11 09 00      [10] 1418 	ld	de, #0x0009
   58A2 FD 19         [15] 1419 	add	iy, de
   58A4 DD 6E FC      [19] 1420 	ld	l,-4 (ix)
   58A7 DD 66 FD      [19] 1421 	ld	h,-3 (ix)
   58AA 29            [11] 1422 	add	hl, hl
   58AB 29            [11] 1423 	add	hl, hl
   58AC 29            [11] 1424 	add	hl, hl
   58AD 29            [11] 1425 	add	hl, hl
   58AE 11 08 00      [10] 1426 	ld	de, #0x0008
   58B1 19            [11] 1427 	add	hl, de
   58B2 FD 75 00      [19] 1428 	ld	0 (iy), l
   58B5 FD 74 01      [19] 1429 	ld	1 (iy), h
                           1430 ;src/game/game.c:333: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
   58B8 ED 5B 8D 77   [20] 1431 	ld	de, (_nbTrainList)
   58BC 16 00         [ 7] 1432 	ld	d, #0x00
   58BE 6B            [ 4] 1433 	ld	l, e
   58BF 62            [ 4] 1434 	ld	h, d
   58C0 29            [11] 1435 	add	hl, hl
   58C1 19            [11] 1436 	add	hl, de
   58C2 29            [11] 1437 	add	hl, hl
   58C3 19            [11] 1438 	add	hl, de
   58C4 29            [11] 1439 	add	hl, hl
   58C5 19            [11] 1440 	add	hl, de
   58C6 EB            [ 4] 1441 	ex	de,hl
   58C7 FD 2A 88 77   [20] 1442 	ld	iy, (_trainList)
   58CB FD 19         [15] 1443 	add	iy, de
   58CD FD E5         [15] 1444 	push	iy
   58CF E1            [10] 1445 	pop	hl
   58D0 11 05 00      [10] 1446 	ld	de, #0x0005
   58D3 19            [11] 1447 	add	hl, de
   58D4 46            [ 7] 1448 	ld	b, (hl)
   58D5 58            [ 4] 1449 	ld	e,b
   58D6 16 00         [ 7] 1450 	ld	d,#0x00
   58D8 6B            [ 4] 1451 	ld	l, e
   58D9 62            [ 4] 1452 	ld	h, d
   58DA 29            [11] 1453 	add	hl, hl
   58DB 29            [11] 1454 	add	hl, hl
   58DC 19            [11] 1455 	add	hl, de
   58DD 29            [11] 1456 	add	hl, hl
   58DE 29            [11] 1457 	add	hl, hl
   58DF 29            [11] 1458 	add	hl, hl
   58E0 29            [11] 1459 	add	hl, hl
   58E1 EB            [ 4] 1460 	ex	de,hl
   58E2 FD 6E 04      [19] 1461 	ld	l, 4 (iy)
   58E5 26 00         [ 7] 1462 	ld	h, #0x00
   58E7 19            [11] 1463 	add	hl, de
   58E8 11 88 68      [10] 1464 	ld	de, #_p_world
   58EB 19            [11] 1465 	add	hl, de
   58EC 5E            [ 7] 1466 	ld	e, (hl)
                           1467 ;src/game/game.c:337: setPixel((ulx+xCursor)*TILESIZE_H+8, (uly+yCursor)*TILESIZE_H+8, 3);
   58ED 79            [ 4] 1468 	ld	a, c
   58EE 07            [ 4] 1469 	rlca
   58EF 07            [ 4] 1470 	rlca
   58F0 07            [ 4] 1471 	rlca
   58F1 07            [ 4] 1472 	rlca
   58F2 E6 F0         [ 7] 1473 	and	a, #0xf0
   58F4 6F            [ 4] 1474 	ld	l,a
   58F5 C6 08         [ 7] 1475 	add	a, #0x08
   58F7 4F            [ 4] 1476 	ld	c, a
                           1477 ;src/game/game.c:333: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
                           1478 ;src/game/game.c:334: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SMNS ||
   58F8 7B            [ 4] 1479 	ld	a,e
   58F9 FE 0A         [ 7] 1480 	cp	a,#0x0a
   58FB 28 08         [12] 1481 	jr	Z,00153$
                           1482 ;src/game/game.c:335: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SLNS )
   58FD FE 0C         [ 7] 1483 	cp	a,#0x0c
   58FF 28 04         [12] 1484 	jr	Z,00153$
   5901 D6 0E         [ 7] 1485 	sub	a, #0x0e
   5903 20 43         [12] 1486 	jr	NZ,00154$
   5905                    1487 00153$:
                           1488 ;src/game/game.c:337: setPixel((ulx+xCursor)*TILESIZE_H+8, (uly+yCursor)*TILESIZE_H+8, 3);
   5905 E5            [11] 1489 	push	hl
   5906 06 03         [ 7] 1490 	ld	b, #0x03
   5908 C5            [11] 1491 	push	bc
   5909 DD 4E F5      [19] 1492 	ld	c,-11 (ix)
   590C DD 46 F6      [19] 1493 	ld	b,-10 (ix)
   590F C5            [11] 1494 	push	bc
   5910 CD EA 82      [17] 1495 	call	_setPixel
   5913 F1            [10] 1496 	pop	af
   5914 F1            [10] 1497 	pop	af
   5915 E1            [10] 1498 	pop	hl
                           1499 ;src/game/game.c:338: setPixel((ulx+xCursor)*TILESIZE_H+8, (uly+yCursor)*TILESIZE_H+9, 2);
   5916 7D            [ 4] 1500 	ld	a, l
   5917 C6 09         [ 7] 1501 	add	a, #0x09
   5919 47            [ 4] 1502 	ld	b, a
   591A 3E 02         [ 7] 1503 	ld	a, #0x02
   591C F5            [11] 1504 	push	af
   591D 33            [ 6] 1505 	inc	sp
   591E C5            [11] 1506 	push	bc
   591F 33            [ 6] 1507 	inc	sp
   5920 DD 6E F5      [19] 1508 	ld	l,-11 (ix)
   5923 DD 66 F6      [19] 1509 	ld	h,-10 (ix)
   5926 E5            [11] 1510 	push	hl
   5927 CD EA 82      [17] 1511 	call	_setPixel
   592A F1            [10] 1512 	pop	af
   592B F1            [10] 1513 	pop	af
                           1514 ;src/game/game.c:341: trainList[nbTrainList].heading = 2;
   592C ED 4B 8D 77   [20] 1515 	ld	bc, (_nbTrainList)
   5930 06 00         [ 7] 1516 	ld	b, #0x00
   5932 69            [ 4] 1517 	ld	l, c
   5933 60            [ 4] 1518 	ld	h, b
   5934 29            [11] 1519 	add	hl, hl
   5935 09            [11] 1520 	add	hl, bc
   5936 29            [11] 1521 	add	hl, hl
   5937 09            [11] 1522 	add	hl, bc
   5938 29            [11] 1523 	add	hl, hl
   5939 09            [11] 1524 	add	hl, bc
   593A 4D            [ 4] 1525 	ld	c, l
   593B 44            [ 4] 1526 	ld	b, h
   593C 2A 88 77      [16] 1527 	ld	hl, (_trainList)
   593F 09            [11] 1528 	add	hl, bc
   5940 01 06 00      [10] 1529 	ld	bc, #0x0006
   5943 09            [11] 1530 	add	hl, bc
   5944 36 02         [10] 1531 	ld	(hl), #0x02
   5946 18 40         [12] 1532 	jr	00155$
   5948                    1533 00154$:
                           1534 ;src/game/game.c:347: setPixel((ulx+xCursor)*TILESIZE_H+8, (uly+yCursor)*TILESIZE_H+8, 3);
   5948 C5            [11] 1535 	push	bc
   5949 06 03         [ 7] 1536 	ld	b, #0x03
   594B C5            [11] 1537 	push	bc
   594C DD 6E F5      [19] 1538 	ld	l,-11 (ix)
   594F DD 66 F6      [19] 1539 	ld	h,-10 (ix)
   5952 E5            [11] 1540 	push	hl
   5953 CD EA 82      [17] 1541 	call	_setPixel
   5956 F1            [10] 1542 	pop	af
   5957 F1            [10] 1543 	pop	af
   5958 C1            [10] 1544 	pop	bc
                           1545 ;src/game/game.c:348: setPixel((ulx+xCursor)*TILESIZE_H+7, (uly+yCursor)*TILESIZE_H+8, 2);
   5959 DD 7E F9      [19] 1546 	ld	a, -7 (ix)
   595C C6 07         [ 7] 1547 	add	a, #0x07
   595E 5F            [ 4] 1548 	ld	e, a
   595F DD 7E FA      [19] 1549 	ld	a, -6 (ix)
   5962 CE 00         [ 7] 1550 	adc	a, #0x00
   5964 57            [ 4] 1551 	ld	d, a
   5965 06 02         [ 7] 1552 	ld	b, #0x02
   5967 C5            [11] 1553 	push	bc
   5968 D5            [11] 1554 	push	de
   5969 CD EA 82      [17] 1555 	call	_setPixel
   596C F1            [10] 1556 	pop	af
   596D F1            [10] 1557 	pop	af
                           1558 ;src/game/game.c:350: trainList[nbTrainList].heading = 0;
   596E ED 4B 8D 77   [20] 1559 	ld	bc, (_nbTrainList)
   5972 06 00         [ 7] 1560 	ld	b, #0x00
   5974 69            [ 4] 1561 	ld	l, c
   5975 60            [ 4] 1562 	ld	h, b
   5976 29            [11] 1563 	add	hl, hl
   5977 09            [11] 1564 	add	hl, bc
   5978 29            [11] 1565 	add	hl, hl
   5979 09            [11] 1566 	add	hl, bc
   597A 29            [11] 1567 	add	hl, hl
   597B 09            [11] 1568 	add	hl, bc
   597C 4D            [ 4] 1569 	ld	c, l
   597D 44            [ 4] 1570 	ld	b, h
   597E 2A 88 77      [16] 1571 	ld	hl, (_trainList)
   5981 09            [11] 1572 	add	hl, bc
   5982 01 06 00      [10] 1573 	ld	bc, #0x0006
   5985 09            [11] 1574 	add	hl, bc
   5986 36 00         [10] 1575 	ld	(hl), #0x00
   5988                    1576 00155$:
                           1577 ;src/game/game.c:356: nbTrainList++;
   5988 21 8D 77      [10] 1578 	ld	hl, #_nbTrainList+0
   598B 34            [11] 1579 	inc	(hl)
                           1580 ;src/game/game.c:358: CURSOR_MODE=NONE;
   598C 21 8C 77      [10] 1581 	ld	hl,#_CURSOR_MODE + 0
   598F 36 00         [10] 1582 	ld	(hl), #0x00
                           1583 ;src/game/game.c:359: drawTile(ulx, uly, xCursor, yCursor);
   5991 DD 66 FF      [19] 1584 	ld	h, -1 (ix)
   5994 DD 6E FB      [19] 1585 	ld	l, -5 (ix)
   5997 E5            [11] 1586 	push	hl
   5998 DD 66 FE      [19] 1587 	ld	h, -2 (ix)
   599B DD 6E F8      [19] 1588 	ld	l, -8 (ix)
   599E E5            [11] 1589 	push	hl
   599F CD A7 7E      [17] 1590 	call	_drawTile
   59A2 F1            [10] 1591 	pop	af
   59A3 F1            [10] 1592 	pop	af
   59A4 18 22         [12] 1593 	jr	00170$
   59A6                    1594 00166$:
                           1595 ;src/game/game.c:364: else if(CURSOR_MODE>=T_SSNS)
   59A6 FD 21 8C 77   [14] 1596 	ld	iy, #_CURSOR_MODE
   59AA FD 7E 00      [19] 1597 	ld	a, 0 (iy)
   59AD D6 02         [ 7] 1598 	sub	a, #0x02
   59AF 38 17         [12] 1599 	jr	C,00170$
                           1600 ;src/game/game.c:366: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+8;
   59B1 21 88 68      [10] 1601 	ld	hl, #_p_world
   59B4 19            [11] 1602 	add	hl,de
   59B5 4D            [ 4] 1603 	ld	c, l
   59B6 44            [ 4] 1604 	ld	b, h
   59B7 FD 7E 00      [19] 1605 	ld	a, 0 (iy)
   59BA C6 08         [ 7] 1606 	add	a, #0x08
   59BC 02            [ 7] 1607 	ld	(bc), a
                           1608 ;src/game/game.c:369: if(CURSOR_MODE<=T_SLEW)
   59BD 3E 07         [ 7] 1609 	ld	a, #0x07
   59BF FD 96 00      [19] 1610 	sub	a, 0 (iy)
   59C2 38 04         [12] 1611 	jr	C,00170$
                           1612 ;src/game/game.c:370: CURSOR_MODE=NONE;
   59C4 FD 36 00 00   [19] 1613 	ld	0 (iy), #0x00
   59C8                    1614 00170$:
                           1615 ;src/game/game.c:373: drawCursor(xCursor, yCursor);
   59C8 DD 66 FF      [19] 1616 	ld	h, -1 (ix)
   59CB DD 6E FB      [19] 1617 	ld	l, -5 (ix)
   59CE E5            [11] 1618 	push	hl
   59CF CD 93 77      [17] 1619 	call	_drawCursor
   59D2 F1            [10] 1620 	pop	af
                           1621 ;src/game/game.c:376: for(i=0; i<14000; i++) {}
   59D3 DD 36 EB B0   [19] 1622 	ld	-21 (ix), #0xb0
   59D7 DD 36 EC 36   [19] 1623 	ld	-20 (ix), #0x36
   59DB                    1624 00215$:
   59DB DD 6E EB      [19] 1625 	ld	l,-21 (ix)
   59DE DD 66 EC      [19] 1626 	ld	h,-20 (ix)
   59E1 2B            [ 6] 1627 	dec	hl
   59E2 DD 75 EB      [19] 1628 	ld	-21 (ix), l
   59E5 DD 74 EC      [19] 1629 	ld	-20 (ix), h
   59E8 7C            [ 4] 1630 	ld	a, h
   59E9 DD B6 EB      [19] 1631 	or	a,-21 (ix)
   59EC 20 ED         [12] 1632 	jr	NZ,00215$
   59EE                    1633 00191$:
                           1634 ;src/game/game.c:380: drawTrains(ulx, uly);
   59EE DD 66 FE      [19] 1635 	ld	h, -2 (ix)
   59F1 DD 6E F8      [19] 1636 	ld	l, -8 (ix)
   59F4 E5            [11] 1637 	push	hl
   59F5 CD 57 84      [17] 1638 	call	_drawTrains
   59F8 F1            [10] 1639 	pop	af
                           1640 ;src/game/game.c:383: while(!exit);
   59F9 DD 7E EA      [19] 1641 	ld	a, -22 (ix)
   59FC B7            [ 4] 1642 	or	a, a
   59FD CA 65 53      [10] 1643 	jp	Z, 00192$
   5A00 DD F9         [10] 1644 	ld	sp, ix
   5A02 DD E1         [14] 1645 	pop	ix
   5A04 C9            [10] 1646 	ret
   5A05                    1647 ___str_28:
   5A05 52 65 61 6C 6C 79  1648 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   5A12 00                 1649 	.db 0x00
   5A13                    1650 ___str_29:
   5A13 00                 1651 	.db 0x00
   5A14                    1652 ___str_30:
   5A14 50 72 65 73 73 20  1653 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   5A39 00                 1654 	.db 0x00
   5A3A                    1655 ___str_31:
   5A3A 47 65 6E 65 72 61  1656 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   5A4D 00                 1657 	.db 0x00
                           1658 	.area _CODE
                           1659 	.area _INITIALIZER
                           1660 	.area _CABS (ABS)
