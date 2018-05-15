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
                             13 	.globl _drawNewTrain
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
                             25 	.globl _cpct_waitVSYNC
                             26 	.globl _cpct_drawStringM2
                             27 	.globl _cpct_px2byteM1
                             28 	.globl _cpct_isKeyPressed
                             29 	.globl _cpct_scanKeyboard
                             30 	.globl _cpct_memset
                             31 	.globl _windowInfoTile
                             32 	.globl _menuStations
                             33 	.globl _menuTile
                             34 	.globl _game
                             35 ;--------------------------------------------------------
                             36 ; special function registers
                             37 ;--------------------------------------------------------
                             38 ;--------------------------------------------------------
                             39 ; ram data
                             40 ;--------------------------------------------------------
                             41 	.area _DATA
                             42 ;--------------------------------------------------------
                             43 ; ram data
                             44 ;--------------------------------------------------------
                             45 	.area _INITIALIZED
                             46 ;--------------------------------------------------------
                             47 ; absolute external ram data
                             48 ;--------------------------------------------------------
                             49 	.area _DABS (ABS)
                             50 ;--------------------------------------------------------
                             51 ; global & static initialisations
                             52 ;--------------------------------------------------------
                             53 	.area _HOME
                             54 	.area _GSINIT
                             55 	.area _GSFINAL
                             56 	.area _GSINIT
                             57 ;--------------------------------------------------------
                             58 ; Home
                             59 ;--------------------------------------------------------
                             60 	.area _HOME
                             61 	.area _HOME
                             62 ;--------------------------------------------------------
                             63 ; code
                             64 ;--------------------------------------------------------
                             65 	.area _CODE
                             66 ;src/game/game.c:3: void windowInfoTile(u8 x, u8 y)
                             67 ;	---------------------------------
                             68 ; Function windowInfoTile
                             69 ; ---------------------------------
   4ED4                      70 _windowInfoTile::
   4ED4 DD E5         [15]   71 	push	ix
   4ED6 DD 21 00 00   [14]   72 	ld	ix,#0
   4EDA DD 39         [15]   73 	add	ix,sp
   4EDC 21 F4 FF      [10]   74 	ld	hl, #-12
   4EDF 39            [11]   75 	add	hl, sp
   4EE0 F9            [ 6]   76 	ld	sp, hl
                             77 ;src/game/game.c:7: txtWindowInfoTile[1] = "";
   4EE1 21 00 00      [10]   78 	ld	hl, #0x0000
   4EE4 39            [11]   79 	add	hl, sp
   4EE5 4D            [ 4]   80 	ld	c,l
   4EE6 44            [ 4]   81 	ld	b,h
   4EE7 23            [ 6]   82 	inc	hl
   4EE8 23            [ 6]   83 	inc	hl
   4EE9 11 D4 4F      [10]   84 	ld	de, #___str_0+0
   4EEC 73            [ 7]   85 	ld	(hl), e
   4EED 23            [ 6]   86 	inc	hl
   4EEE 72            [ 7]   87 	ld	(hl), d
                             88 ;src/game/game.c:8: txtWindowInfoTile[2] = "Production: Nothing";
   4EEF 21 04 00      [10]   89 	ld	hl, #0x0004
   4EF2 09            [11]   90 	add	hl,bc
   4EF3 DD 75 FC      [19]   91 	ld	-4 (ix), l
   4EF6 DD 74 FD      [19]   92 	ld	-3 (ix), h
   4EF9 36 D5         [10]   93 	ld	(hl), #<(___str_1)
   4EFB 23            [ 6]   94 	inc	hl
   4EFC 36 4F         [10]   95 	ld	(hl), #>(___str_1)
                             96 ;src/game/game.c:9: txtWindowInfoTile[3] = "Demand: Nothing";
   4EFE 21 06 00      [10]   97 	ld	hl, #0x0006
   4F01 09            [11]   98 	add	hl,bc
   4F02 DD 75 FE      [19]   99 	ld	-2 (ix), l
   4F05 DD 74 FF      [19]  100 	ld	-1 (ix), h
   4F08 36 E9         [10]  101 	ld	(hl), #<(___str_2)
   4F0A 23            [ 6]  102 	inc	hl
   4F0B 36 4F         [10]  103 	ld	(hl), #>(___str_2)
                            104 ;src/game/game.c:11: switch(p_world[y*WIDTH+x])
   4F0D DD 5E 05      [19]  105 	ld	e,5 (ix)
   4F10 16 00         [ 7]  106 	ld	d,#0x00
   4F12 6B            [ 4]  107 	ld	l, e
   4F13 62            [ 4]  108 	ld	h, d
   4F14 29            [11]  109 	add	hl, hl
   4F15 29            [11]  110 	add	hl, hl
   4F16 19            [11]  111 	add	hl, de
   4F17 29            [11]  112 	add	hl, hl
   4F18 29            [11]  113 	add	hl, hl
   4F19 29            [11]  114 	add	hl, hl
   4F1A 29            [11]  115 	add	hl, hl
   4F1B DD 5E 04      [19]  116 	ld	e, 4 (ix)
   4F1E 16 00         [ 7]  117 	ld	d, #0x00
   4F20 19            [11]  118 	add	hl, de
   4F21 11 1D 74      [10]  119 	ld	de, #_p_world
   4F24 19            [11]  120 	add	hl, de
   4F25 5E            [ 7]  121 	ld	e, (hl)
   4F26 3E 09         [ 7]  122 	ld	a, #0x09
   4F28 93            [ 4]  123 	sub	a, e
   4F29 DA C0 4F      [10]  124 	jp	C, 00111$
   4F2C 16 00         [ 7]  125 	ld	d, #0x00
   4F2E 21 35 4F      [10]  126 	ld	hl, #00119$
   4F31 19            [11]  127 	add	hl, de
   4F32 19            [11]  128 	add	hl, de
   4F33 19            [11]  129 	add	hl, de
   4F34 E9            [ 4]  130 	jp	(hl)
   4F35                     131 00119$:
   4F35 C3 53 4F      [10]  132 	jp	00102$
   4F38 C3 53 4F      [10]  133 	jp	00102$
   4F3B C3 5C 4F      [10]  134 	jp	00105$
   4F3E C3 5C 4F      [10]  135 	jp	00105$
   4F41 C3 5C 4F      [10]  136 	jp	00105$
   4F44 C3 7B 4F      [10]  137 	jp	00107$
   4F47 C3 7B 4F      [10]  138 	jp	00107$
   4F4A C3 8F 4F      [10]  139 	jp	00108$
   4F4D C3 98 4F      [10]  140 	jp	00109$
   4F50 C3 A1 4F      [10]  141 	jp	00110$
                            142 ;src/game/game.c:14: case GRASS2:
   4F53                     143 00102$:
                            144 ;src/game/game.c:15: txtWindowInfoTile[0] = "Grassland";
   4F53 69            [ 4]  145 	ld	l, c
   4F54 60            [ 4]  146 	ld	h, b
   4F55 36 F9         [10]  147 	ld	(hl), #<(___str_3)
   4F57 23            [ 6]  148 	inc	hl
   4F58 36 4F         [10]  149 	ld	(hl), #>(___str_3)
                            150 ;src/game/game.c:16: break;
   4F5A 18 6B         [12]  151 	jr	00112$
                            152 ;src/game/game.c:19: case DWELLINGS3:
   4F5C                     153 00105$:
                            154 ;src/game/game.c:20: txtWindowInfoTile[0] = "City";
   4F5C 69            [ 4]  155 	ld	l, c
   4F5D 60            [ 4]  156 	ld	h, b
   4F5E 36 03         [10]  157 	ld	(hl), #<(___str_4)
   4F60 23            [ 6]  158 	inc	hl
   4F61 36 50         [10]  159 	ld	(hl), #>(___str_4)
                            160 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   4F63 DD 6E FC      [19]  161 	ld	l,-4 (ix)
   4F66 DD 66 FD      [19]  162 	ld	h,-3 (ix)
   4F69 36 08         [10]  163 	ld	(hl), #<(___str_5)
   4F6B 23            [ 6]  164 	inc	hl
   4F6C 36 50         [10]  165 	ld	(hl), #>(___str_5)
                            166 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4F6E DD 6E FE      [19]  167 	ld	l,-2 (ix)
   4F71 DD 66 FF      [19]  168 	ld	h,-1 (ix)
   4F74 36 25         [10]  169 	ld	(hl), #<(___str_6)
   4F76 23            [ 6]  170 	inc	hl
   4F77 36 50         [10]  171 	ld	(hl), #>(___str_6)
                            172 ;src/game/game.c:23: break;
   4F79 18 4C         [12]  173 	jr	00112$
                            174 ;src/game/game.c:25: case FARM2:
   4F7B                     175 00107$:
                            176 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   4F7B 69            [ 4]  177 	ld	l, c
   4F7C 60            [ 4]  178 	ld	h, b
   4F7D 36 4A         [10]  179 	ld	(hl), #<(___str_7)
   4F7F 23            [ 6]  180 	inc	hl
   4F80 36 50         [10]  181 	ld	(hl), #>(___str_7)
                            182 ;src/game/game.c:27: txtWindowInfoTile[2] = "Production: Cereal";
   4F82 DD 6E FC      [19]  183 	ld	l,-4 (ix)
   4F85 DD 66 FD      [19]  184 	ld	h,-3 (ix)
   4F88 36 4F         [10]  185 	ld	(hl), #<(___str_8)
   4F8A 23            [ 6]  186 	inc	hl
   4F8B 36 50         [10]  187 	ld	(hl), #>(___str_8)
                            188 ;src/game/game.c:28: break;
   4F8D 18 38         [12]  189 	jr	00112$
                            190 ;src/game/game.c:29: case WATER:
   4F8F                     191 00108$:
                            192 ;src/game/game.c:30: txtWindowInfoTile[0] = "Water";
   4F8F 69            [ 4]  193 	ld	l, c
   4F90 60            [ 4]  194 	ld	h, b
   4F91 36 62         [10]  195 	ld	(hl), #<(___str_9)
   4F93 23            [ 6]  196 	inc	hl
   4F94 36 50         [10]  197 	ld	(hl), #>(___str_9)
                            198 ;src/game/game.c:31: break;
   4F96 18 2F         [12]  199 	jr	00112$
                            200 ;src/game/game.c:32: case FOREST:
   4F98                     201 00109$:
                            202 ;src/game/game.c:33: txtWindowInfoTile[0] = "Forest";
   4F98 69            [ 4]  203 	ld	l, c
   4F99 60            [ 4]  204 	ld	h, b
   4F9A 36 68         [10]  205 	ld	(hl), #<(___str_10)
   4F9C 23            [ 6]  206 	inc	hl
   4F9D 36 50         [10]  207 	ld	(hl), #>(___str_10)
                            208 ;src/game/game.c:34: break;
   4F9F 18 26         [12]  209 	jr	00112$
                            210 ;src/game/game.c:35: case LIVESTOCK:
   4FA1                     211 00110$:
                            212 ;src/game/game.c:36: txtWindowInfoTile[0] = "Livestock farming";
   4FA1 69            [ 4]  213 	ld	l, c
   4FA2 60            [ 4]  214 	ld	h, b
   4FA3 36 6F         [10]  215 	ld	(hl), #<(___str_11)
   4FA5 23            [ 6]  216 	inc	hl
   4FA6 36 50         [10]  217 	ld	(hl), #>(___str_11)
                            218 ;src/game/game.c:37: txtWindowInfoTile[2] = "Production: Livestock, wool";
   4FA8 DD 6E FC      [19]  219 	ld	l,-4 (ix)
   4FAB DD 66 FD      [19]  220 	ld	h,-3 (ix)
   4FAE 36 81         [10]  221 	ld	(hl), #<(___str_12)
   4FB0 23            [ 6]  222 	inc	hl
   4FB1 36 50         [10]  223 	ld	(hl), #>(___str_12)
                            224 ;src/game/game.c:38: txtWindowInfoTile[3] = "Demand: Cereal";
   4FB3 DD 6E FE      [19]  225 	ld	l,-2 (ix)
   4FB6 DD 66 FF      [19]  226 	ld	h,-1 (ix)
   4FB9 36 9D         [10]  227 	ld	(hl), #<(___str_13)
   4FBB 23            [ 6]  228 	inc	hl
   4FBC 36 50         [10]  229 	ld	(hl), #>(___str_13)
                            230 ;src/game/game.c:39: break;
   4FBE 18 07         [12]  231 	jr	00112$
                            232 ;src/game/game.c:40: default:
   4FC0                     233 00111$:
                            234 ;src/game/game.c:41: txtWindowInfoTile[0] = "Not yet implemented";
   4FC0 69            [ 4]  235 	ld	l, c
   4FC1 60            [ 4]  236 	ld	h, b
   4FC2 36 AC         [10]  237 	ld	(hl), #<(___str_14)
   4FC4 23            [ 6]  238 	inc	hl
   4FC5 36 50         [10]  239 	ld	(hl), #>(___str_14)
                            240 ;src/game/game.c:42: }
   4FC7                     241 00112$:
                            242 ;src/game/game.c:44: drawWindow(txtWindowInfoTile, 4, 0);
   4FC7 21 04 00      [10]  243 	ld	hl, #0x0004
   4FCA E5            [11]  244 	push	hl
   4FCB C5            [11]  245 	push	bc
   4FCC CD 2D 46      [17]  246 	call	_drawWindow
   4FCF DD F9         [10]  247 	ld	sp,ix
   4FD1 DD E1         [14]  248 	pop	ix
   4FD3 C9            [10]  249 	ret
   4FD4                     250 ___str_0:
   4FD4 00                  251 	.db 0x00
   4FD5                     252 ___str_1:
   4FD5 50 72 6F 64 75 63   253 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   4FE8 00                  254 	.db 0x00
   4FE9                     255 ___str_2:
   4FE9 44 65 6D 61 6E 64   256 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   4FF8 00                  257 	.db 0x00
   4FF9                     258 ___str_3:
   4FF9 47 72 61 73 73 6C   259 	.ascii "Grassland"
        61 6E 64
   5002 00                  260 	.db 0x00
   5003                     261 ___str_4:
   5003 43 69 74 79         262 	.ascii "City"
   5007 00                  263 	.db 0x00
   5008                     264 ___str_5:
   5008 50 72 6F 64 75 63   265 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   5024 00                  266 	.db 0x00
   5025                     267 ___str_6:
   5025 44 65 6D 61 6E 64   268 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   5049 00                  269 	.db 0x00
   504A                     270 ___str_7:
   504A 46 61 72 6D         271 	.ascii "Farm"
   504E 00                  272 	.db 0x00
   504F                     273 ___str_8:
   504F 50 72 6F 64 75 63   274 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   5061 00                  275 	.db 0x00
   5062                     276 ___str_9:
   5062 57 61 74 65 72      277 	.ascii "Water"
   5067 00                  278 	.db 0x00
   5068                     279 ___str_10:
   5068 46 6F 72 65 73 74   280 	.ascii "Forest"
   506E 00                  281 	.db 0x00
   506F                     282 ___str_11:
   506F 4C 69 76 65 73 74   283 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   5080 00                  284 	.db 0x00
   5081                     285 ___str_12:
   5081 50 72 6F 64 75 63   286 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   509C 00                  287 	.db 0x00
   509D                     288 ___str_13:
   509D 44 65 6D 61 6E 64   289 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   50AB 00                  290 	.db 0x00
   50AC                     291 ___str_14:
   50AC 4E 6F 74 20 79 65   292 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   50BF 00                  293 	.db 0x00
                            294 ;src/game/game.c:47: void menuStations()
                            295 ;	---------------------------------
                            296 ; Function menuStations
                            297 ; ---------------------------------
   50C0                     298 _menuStations::
   50C0 DD E5         [15]  299 	push	ix
   50C2 DD 21 00 00   [14]  300 	ld	ix,#0
   50C6 DD 39         [15]  301 	add	ix,sp
   50C8 21 FA FF      [10]  302 	ld	hl, #-6
   50CB 39            [11]  303 	add	hl, sp
   50CC F9            [ 6]  304 	ld	sp, hl
                            305 ;src/game/game.c:51: const char *txtMenuSizeStation[] = { 
   50CD 21 00 00      [10]  306 	ld	hl, #0x0000
   50D0 39            [11]  307 	add	hl, sp
   50D1 4D            [ 4]  308 	ld	c,l
   50D2 44            [ 4]  309 	ld	b,h
   50D3 36 1C         [10]  310 	ld	(hl), #<(___str_15)
   50D5 23            [ 6]  311 	inc	hl
   50D6 36 51         [10]  312 	ld	(hl), #>(___str_15)
   50D8 69            [ 4]  313 	ld	l, c
   50D9 60            [ 4]  314 	ld	h, b
   50DA 23            [ 6]  315 	inc	hl
   50DB 23            [ 6]  316 	inc	hl
   50DC 11 22 51      [10]  317 	ld	de, #___str_16+0
   50DF 73            [ 7]  318 	ld	(hl), e
   50E0 23            [ 6]  319 	inc	hl
   50E1 72            [ 7]  320 	ld	(hl), d
   50E2 21 04 00      [10]  321 	ld	hl, #0x0004
   50E5 09            [11]  322 	add	hl, bc
   50E6 11 29 51      [10]  323 	ld	de, #___str_17+0
   50E9 73            [ 7]  324 	ld	(hl), e
   50EA 23            [ 6]  325 	inc	hl
   50EB 72            [ 7]  326 	ld	(hl), d
                            327 ;src/game/game.c:57: result = drawMenu(txtMenuSizeStation,3);
   50EC 3E 03         [ 7]  328 	ld	a, #0x03
   50EE F5            [11]  329 	push	af
   50EF 33            [ 6]  330 	inc	sp
   50F0 C5            [11]  331 	push	bc
   50F1 CD 2F 45      [17]  332 	call	_drawMenu
   50F4 F1            [10]  333 	pop	af
   50F5 33            [ 6]  334 	inc	sp
   50F6 7D            [ 4]  335 	ld	a, l
                            336 ;src/game/game.c:59: switch(result)
   50F7 B7            [ 4]  337 	or	a, a
   50F8 28 0A         [12]  338 	jr	Z,00101$
   50FA FE 01         [ 7]  339 	cp	a, #0x01
   50FC 28 0D         [12]  340 	jr	Z,00102$
   50FE D6 02         [ 7]  341 	sub	a, #0x02
   5100 28 10         [12]  342 	jr	Z,00103$
   5102 18 13         [12]  343 	jr	00105$
                            344 ;src/game/game.c:61: case 0:
   5104                     345 00101$:
                            346 ;src/game/game.c:62: CURSOR_MODE=T_SSEW;
   5104 21 21 83      [10]  347 	ld	hl,#_CURSOR_MODE + 0
   5107 36 03         [10]  348 	ld	(hl), #0x03
                            349 ;src/game/game.c:63: break;
   5109 18 0C         [12]  350 	jr	00105$
                            351 ;src/game/game.c:65: case 1:
   510B                     352 00102$:
                            353 ;src/game/game.c:66: CURSOR_MODE=T_SMEW;
   510B 21 21 83      [10]  354 	ld	hl,#_CURSOR_MODE + 0
   510E 36 05         [10]  355 	ld	(hl), #0x05
                            356 ;src/game/game.c:67: break;
   5110 18 05         [12]  357 	jr	00105$
                            358 ;src/game/game.c:69: case 2:
   5112                     359 00103$:
                            360 ;src/game/game.c:70: CURSOR_MODE=T_SLEW;
   5112 21 21 83      [10]  361 	ld	hl,#_CURSOR_MODE + 0
   5115 36 07         [10]  362 	ld	(hl), #0x07
                            363 ;src/game/game.c:72: }
   5117                     364 00105$:
   5117 DD F9         [10]  365 	ld	sp, ix
   5119 DD E1         [14]  366 	pop	ix
   511B C9            [10]  367 	ret
   511C                     368 ___str_15:
   511C 53 6D 61 6C 6C      369 	.ascii "Small"
   5121 00                  370 	.db 0x00
   5122                     371 ___str_16:
   5122 4D 65 64 69 75 6D   372 	.ascii "Medium"
   5128 00                  373 	.db 0x00
   5129                     374 ___str_17:
   5129 4C 61 72 67 65      375 	.ascii "Large"
   512E 00                  376 	.db 0x00
                            377 ;src/game/game.c:75: void menuTile(u8 x, u8 y)
                            378 ;	---------------------------------
                            379 ; Function menuTile
                            380 ; ---------------------------------
   512F                     381 _menuTile::
   512F DD E5         [15]  382 	push	ix
   5131 DD 21 00 00   [14]  383 	ld	ix,#0
   5135 DD 39         [15]  384 	add	ix,sp
   5137 21 E6 FF      [10]  385 	ld	hl, #-26
   513A 39            [11]  386 	add	hl, sp
   513B F9            [ 6]  387 	ld	sp, hl
                            388 ;src/game/game.c:79: const char *txtMenuTile[] = { 
   513C 21 06 00      [10]  389 	ld	hl, #0x0006
   513F 39            [11]  390 	add	hl, sp
   5140 4D            [ 4]  391 	ld	c,l
   5141 44            [ 4]  392 	ld	b,h
   5142 36 53         [10]  393 	ld	(hl), #<(___str_18)
   5144 23            [ 6]  394 	inc	hl
   5145 36 52         [10]  395 	ld	(hl), #>(___str_18)
   5147 69            [ 4]  396 	ld	l, c
   5148 60            [ 4]  397 	ld	h, b
   5149 23            [ 6]  398 	inc	hl
   514A 23            [ 6]  399 	inc	hl
   514B 11 63 52      [10]  400 	ld	de, #___str_19+0
   514E 73            [ 7]  401 	ld	(hl), e
   514F 23            [ 6]  402 	inc	hl
   5150 72            [ 7]  403 	ld	(hl), d
   5151 21 04 00      [10]  404 	ld	hl, #0x0004
   5154 09            [11]  405 	add	hl, bc
   5155 11 73 52      [10]  406 	ld	de, #___str_20+0
   5158 73            [ 7]  407 	ld	(hl), e
   5159 23            [ 6]  408 	inc	hl
   515A 72            [ 7]  409 	ld	(hl), d
   515B 21 06 00      [10]  410 	ld	hl, #0x0006
   515E 09            [11]  411 	add	hl, bc
   515F 11 83 52      [10]  412 	ld	de, #___str_21+0
   5162 73            [ 7]  413 	ld	(hl), e
   5163 23            [ 6]  414 	inc	hl
   5164 72            [ 7]  415 	ld	(hl), d
   5165 21 08 00      [10]  416 	ld	hl, #0x0008
   5168 09            [11]  417 	add	hl, bc
   5169 11 8B 52      [10]  418 	ld	de, #___str_22+0
   516C 73            [ 7]  419 	ld	(hl), e
   516D 23            [ 6]  420 	inc	hl
   516E 72            [ 7]  421 	ld	(hl), d
   516F 21 0A 00      [10]  422 	ld	hl, #0x000a
   5172 09            [11]  423 	add	hl, bc
   5173 11 9C 52      [10]  424 	ld	de, #___str_23+0
   5176 73            [ 7]  425 	ld	(hl), e
   5177 23            [ 6]  426 	inc	hl
   5178 72            [ 7]  427 	ld	(hl), d
   5179 21 0C 00      [10]  428 	ld	hl, #0x000c
   517C 09            [11]  429 	add	hl, bc
   517D 11 A7 52      [10]  430 	ld	de, #___str_24+0
   5180 73            [ 7]  431 	ld	(hl), e
   5181 23            [ 6]  432 	inc	hl
   5182 72            [ 7]  433 	ld	(hl), d
                            434 ;src/game/game.c:89: const char *txtWindowDestroy[] = { 
   5183 21 00 00      [10]  435 	ld	hl, #0x0000
   5186 39            [11]  436 	add	hl, sp
   5187 DD 75 FC      [19]  437 	ld	-4 (ix), l
   518A DD 74 FD      [19]  438 	ld	-3 (ix), h
   518D 36 AE         [10]  439 	ld	(hl), #<(___str_25)
   518F 23            [ 6]  440 	inc	hl
   5190 36 52         [10]  441 	ld	(hl), #>(___str_25)
   5192 DD 6E FC      [19]  442 	ld	l,-4 (ix)
   5195 DD 66 FD      [19]  443 	ld	h,-3 (ix)
   5198 23            [ 6]  444 	inc	hl
   5199 23            [ 6]  445 	inc	hl
   519A 11 D1 52      [10]  446 	ld	de, #___str_26+0
   519D 73            [ 7]  447 	ld	(hl), e
   519E 23            [ 6]  448 	inc	hl
   519F 72            [ 7]  449 	ld	(hl), d
   51A0 DD 7E FC      [19]  450 	ld	a, -4 (ix)
   51A3 C6 04         [ 7]  451 	add	a, #0x04
   51A5 6F            [ 4]  452 	ld	l, a
   51A6 DD 7E FD      [19]  453 	ld	a, -3 (ix)
   51A9 CE 00         [ 7]  454 	adc	a, #0x00
   51AB 67            [ 4]  455 	ld	h, a
   51AC 11 D2 52      [10]  456 	ld	de, #___str_27+0
   51AF 73            [ 7]  457 	ld	(hl), e
   51B0 23            [ 6]  458 	inc	hl
   51B1 72            [ 7]  459 	ld	(hl), d
                            460 ;src/game/game.c:96: putM2();
   51B2 C5            [11]  461 	push	bc
   51B3 CD 44 41      [17]  462 	call	_putM2
   51B6 C1            [10]  463 	pop	bc
                            464 ;src/game/game.c:98: do{
   51B7 DD 5E 05      [19]  465 	ld	e,5 (ix)
   51BA 16 00         [ 7]  466 	ld	d,#0x00
   51BC 6B            [ 4]  467 	ld	l, e
   51BD 62            [ 4]  468 	ld	h, d
   51BE 29            [11]  469 	add	hl, hl
   51BF 29            [11]  470 	add	hl, hl
   51C0 19            [11]  471 	add	hl, de
   51C1 29            [11]  472 	add	hl, hl
   51C2 29            [11]  473 	add	hl, hl
   51C3 29            [11]  474 	add	hl, hl
   51C4 29            [11]  475 	add	hl, hl
   51C5 DD 75 FA      [19]  476 	ld	-6 (ix), l
   51C8 DD 74 FB      [19]  477 	ld	-5 (ix), h
   51CB DD 71 FE      [19]  478 	ld	-2 (ix), c
   51CE DD 70 FF      [19]  479 	ld	-1 (ix), b
   51D1                     480 00117$:
                            481 ;src/game/game.c:99: menuChoice = drawMenu(txtMenuTile,7);
   51D1 DD 4E FE      [19]  482 	ld	c,-2 (ix)
   51D4 DD 46 FF      [19]  483 	ld	b,-1 (ix)
   51D7 3E 07         [ 7]  484 	ld	a, #0x07
   51D9 F5            [11]  485 	push	af
   51DA 33            [ 6]  486 	inc	sp
   51DB C5            [11]  487 	push	bc
   51DC CD 2F 45      [17]  488 	call	_drawMenu
   51DF F1            [10]  489 	pop	af
   51E0 33            [ 6]  490 	inc	sp
   51E1 4D            [ 4]  491 	ld	c, l
                            492 ;src/game/game.c:101: if(menuChoice==0)
   51E2 79            [ 4]  493 	ld	a, c
   51E3 B7            [ 4]  494 	or	a, a
   51E4 20 0F         [12]  495 	jr	NZ,00115$
                            496 ;src/game/game.c:102: windowInfoTile(x, y);
   51E6 C5            [11]  497 	push	bc
   51E7 DD 66 05      [19]  498 	ld	h, 5 (ix)
   51EA DD 6E 04      [19]  499 	ld	l, 4 (ix)
   51ED E5            [11]  500 	push	hl
   51EE CD D4 4E      [17]  501 	call	_windowInfoTile
   51F1 F1            [10]  502 	pop	af
   51F2 C1            [10]  503 	pop	bc
   51F3 18 51         [12]  504 	jr	00118$
   51F5                     505 00115$:
                            506 ;src/game/game.c:103: else if(menuChoice==1)
   51F5 79            [ 4]  507 	ld	a, c
   51F6 3D            [ 4]  508 	dec	a
   51F7 20 09         [12]  509 	jr	NZ,00112$
                            510 ;src/game/game.c:105: CURSOR_MODE=T_REW;
   51F9 21 21 83      [10]  511 	ld	hl,#_CURSOR_MODE + 0
   51FC 36 08         [10]  512 	ld	(hl), #0x08
                            513 ;src/game/game.c:106: menuChoice=6;
   51FE 0E 06         [ 7]  514 	ld	c, #0x06
   5200 18 44         [12]  515 	jr	00118$
   5202                     516 00112$:
                            517 ;src/game/game.c:108: else if(menuChoice==2)
   5202 79            [ 4]  518 	ld	a, c
   5203 D6 02         [ 7]  519 	sub	a, #0x02
   5205 20 07         [12]  520 	jr	NZ,00109$
                            521 ;src/game/game.c:110: menuStations();
   5207 CD C0 50      [17]  522 	call	_menuStations
                            523 ;src/game/game.c:111: menuChoice=6;
   520A 0E 06         [ 7]  524 	ld	c, #0x06
   520C 18 38         [12]  525 	jr	00118$
   520E                     526 00109$:
                            527 ;src/game/game.c:113: else if(menuChoice==3)
   520E 79            [ 4]  528 	ld	a, c
   520F D6 03         [ 7]  529 	sub	a, #0x03
   5211 20 29         [12]  530 	jr	NZ,00106$
                            531 ;src/game/game.c:115: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   5213 DD 4E FC      [19]  532 	ld	c,-4 (ix)
   5216 DD 46 FD      [19]  533 	ld	b,-3 (ix)
   5219 21 03 01      [10]  534 	ld	hl, #0x0103
   521C E5            [11]  535 	push	hl
   521D C5            [11]  536 	push	bc
   521E CD 2D 46      [17]  537 	call	_drawWindow
   5221 F1            [10]  538 	pop	af
   5222 F1            [10]  539 	pop	af
   5223 2D            [ 4]  540 	dec	l
   5224 20 12         [12]  541 	jr	NZ,00102$
                            542 ;src/game/game.c:116: p_world[x+y*WIDTH] = GRASS1;
   5226 DD 4E 04      [19]  543 	ld	c, 4 (ix)
   5229 06 00         [ 7]  544 	ld	b, #0x00
   522B DD 6E FA      [19]  545 	ld	l,-6 (ix)
   522E DD 66 FB      [19]  546 	ld	h,-5 (ix)
   5231 09            [11]  547 	add	hl, bc
   5232 11 1D 74      [10]  548 	ld	de, #_p_world
   5235 19            [11]  549 	add	hl, de
   5236 36 00         [10]  550 	ld	(hl), #0x00
   5238                     551 00102$:
                            552 ;src/game/game.c:118: menuChoice=6;
   5238 0E 06         [ 7]  553 	ld	c, #0x06
   523A 18 0A         [12]  554 	jr	00118$
   523C                     555 00106$:
                            556 ;src/game/game.c:120: else if(menuChoice==4)
   523C 79            [ 4]  557 	ld	a, c
   523D D6 04         [ 7]  558 	sub	a, #0x04
   523F 20 05         [12]  559 	jr	NZ,00118$
                            560 ;src/game/game.c:122: trainManagement();
   5241 CD 66 59      [17]  561 	call	_trainManagement
                            562 ;src/game/game.c:123: menuChoice=6;
   5244 0E 06         [ 7]  563 	ld	c, #0x06
   5246                     564 00118$:
                            565 ;src/game/game.c:128: while(menuChoice!=6);
   5246 79            [ 4]  566 	ld	a, c
   5247 D6 06         [ 7]  567 	sub	a, #0x06
   5249 20 86         [12]  568 	jr	NZ,00117$
                            569 ;src/game/game.c:130: putM1();
   524B CD 33 41      [17]  570 	call	_putM1
   524E DD F9         [10]  571 	ld	sp, ix
   5250 DD E1         [14]  572 	pop	ix
   5252 C9            [10]  573 	ret
   5253                     574 ___str_18:
   5253 41 62 6F 75 74 20   575 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   5262 00                  576 	.db 0x00
   5263                     577 ___str_19:
   5263 42 75 69 6C 64 20   578 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   5272 00                  579 	.db 0x00
   5273                     580 ___str_20:
   5273 42 75 69 6C 64 20   581 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   5282 00                  582 	.db 0x00
   5283                     583 ___str_21:
   5283 44 65 73 74 72 6F   584 	.ascii "Destroy"
        79
   528A 00                  585 	.db 0x00
   528B                     586 ___str_22:
   528B 54 72 61 69 6E 20   587 	.ascii "Train management"
        6D 61 6E 61 67 65
        6D 65 6E 74
   529B 00                  588 	.db 0x00
   529C                     589 ___str_23:
   529C 41 63 63 6F 75 6E   590 	.ascii "Accounting"
        74 69 6E 67
   52A6 00                  591 	.db 0x00
   52A7                     592 ___str_24:
   52A7 52 65 73 75 6D 65   593 	.ascii "Resume"
   52AD 00                  594 	.db 0x00
   52AE                     595 ___str_25:
   52AE 44 65 73 74 72 6F   596 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   52D0 00                  597 	.db 0x00
   52D1                     598 ___str_26:
   52D1 00                  599 	.db 0x00
   52D2                     600 ___str_27:
   52D2 43 6F 6E 74 69 6E   601 	.ascii "Continue ?"
        75 65 20 3F
   52DC 00                  602 	.db 0x00
                            603 ;src/game/game.c:134: void game()
                            604 ;	---------------------------------
                            605 ; Function game
                            606 ; ---------------------------------
   52DD                     607 _game::
   52DD DD E5         [15]  608 	push	ix
   52DF DD 21 00 00   [14]  609 	ld	ix,#0
   52E3 DD 39         [15]  610 	add	ix,sp
   52E5 21 E6 FF      [10]  611 	ld	hl, #-26
   52E8 39            [11]  612 	add	hl, sp
   52E9 F9            [ 6]  613 	ld	sp, hl
                            614 ;src/game/game.c:137: int ulx = 0;
   52EA DD 36 F3 00   [19]  615 	ld	-13 (ix), #0x00
   52EE DD 36 F4 00   [19]  616 	ld	-12 (ix), #0x00
                            617 ;src/game/game.c:138: int uly = 0;
   52F2 DD 36 F5 00   [19]  618 	ld	-11 (ix), #0x00
   52F6 DD 36 F6 00   [19]  619 	ld	-10 (ix), #0x00
                            620 ;src/game/game.c:139: int xCursor = 10;
   52FA DD 36 F1 0A   [19]  621 	ld	-15 (ix), #0x0a
   52FE DD 36 F2 00   [19]  622 	ld	-14 (ix), #0x00
                            623 ;src/game/game.c:140: int yCursor = 6;
   5302 DD 36 EF 06   [19]  624 	ld	-17 (ix), #0x06
   5306 DD 36 F0 00   [19]  625 	ld	-16 (ix), #0x00
                            626 ;src/game/game.c:142: u8 exit=0;
   530A DD 36 EC 00   [19]  627 	ld	-20 (ix), #0x00
                            628 ;src/game/game.c:144: nbTrainList=0;
   530E 21 22 83      [10]  629 	ld	hl,#_nbTrainList + 0
   5311 36 00         [10]  630 	ld	(hl), #0x00
                            631 ;src/game/game.c:146: drawBoxM2(50, 50);
   5313 21 32 00      [10]  632 	ld	hl, #0x0032
   5316 E5            [11]  633 	push	hl
   5317 2E 32         [ 7]  634 	ld	l, #0x32
   5319 E5            [11]  635 	push	hl
   531A CD 72 42      [17]  636 	call	_drawBoxM2
   531D F1            [10]  637 	pop	af
                            638 ;src/game/game.c:147: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   531E 21 20 5F      [10]  639 	ld	hl, #0x5f20
   5321 E3            [19]  640 	ex	(sp),hl
   5322 21 00 C0      [10]  641 	ld	hl, #0xc000
   5325 E5            [11]  642 	push	hl
   5326 CD 27 67      [17]  643 	call	_cpct_getScreenPtr
                            644 ;src/game/game.c:148: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   5329 01 52 59      [10]  645 	ld	bc, #___str_31+0
   532C AF            [ 4]  646 	xor	a, a
   532D F5            [11]  647 	push	af
   532E 33            [ 6]  648 	inc	sp
   532F E5            [11]  649 	push	hl
   5330 C5            [11]  650 	push	bc
   5331 CD 24 61      [17]  651 	call	_cpct_drawStringM2
   5334 F1            [10]  652 	pop	af
   5335 F1            [10]  653 	pop	af
   5336 33            [ 6]  654 	inc	sp
                            655 ;src/game/game.c:150: generateWorld();
   5337 CD CE 86      [17]  656 	call	_generateWorld
                            657 ;src/game/game.c:152: putM1();
   533A CD 33 41      [17]  658 	call	_putM1
                            659 ;src/game/game.c:153: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   533D 21 00 00      [10]  660 	ld	hl, #0x0000
   5340 E5            [11]  661 	push	hl
   5341 2E 00         [ 7]  662 	ld	l, #0x00
   5343 E5            [11]  663 	push	hl
   5344 CD F8 65      [17]  664 	call	_cpct_px2byteM1
   5347 F1            [10]  665 	pop	af
   5348 F1            [10]  666 	pop	af
   5349 45            [ 4]  667 	ld	b, l
   534A 21 00 40      [10]  668 	ld	hl, #0x4000
   534D E5            [11]  669 	push	hl
   534E C5            [11]  670 	push	bc
   534F 33            [ 6]  671 	inc	sp
   5350 26 C0         [ 7]  672 	ld	h, #0xc0
   5352 E5            [11]  673 	push	hl
   5353 CD EA 65      [17]  674 	call	_cpct_memset
                            675 ;src/game/game.c:154: drawWorld(ulx, uly);
   5356 21 00 00      [10]  676 	ld	hl, #0x0000
   5359 E5            [11]  677 	push	hl
   535A CD A6 8D      [17]  678 	call	_drawWorld
                            679 ;src/game/game.c:155: drawCursor(xCursor, yCursor);
   535D 21 0A 06      [10]  680 	ld	hl, #0x060a
   5360 E3            [19]  681 	ex	(sp),hl
   5361 CD 28 83      [17]  682 	call	_drawCursor
   5364 F1            [10]  683 	pop	af
                            684 ;src/game/game.c:158: do{
   5365                     685 00194$:
                            686 ;src/game/game.c:159: cpct_scanKeyboard(); 
   5365 CD 47 67      [17]  687 	call	_cpct_scanKeyboard
                            688 ;src/game/game.c:161: if ( cpct_isKeyPressed(Key_CursorUp) )
   5368 21 00 01      [10]  689 	ld	hl, #0x0100
   536B CD CB 60      [17]  690 	call	_cpct_isKeyPressed
   536E DD 75 F7      [19]  691 	ld	-9 (ix), l
                            692 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   5371 DD 7E EF      [19]  693 	ld	a, -17 (ix)
   5374 DD 77 F8      [19]  694 	ld	-8 (ix), a
   5377 DD 7E F1      [19]  695 	ld	a, -15 (ix)
   537A DD 77 FF      [19]  696 	ld	-1 (ix), a
   537D DD 7E F5      [19]  697 	ld	a, -11 (ix)
   5380 DD 77 FE      [19]  698 	ld	-2 (ix), a
   5383 DD 7E F3      [19]  699 	ld	a, -13 (ix)
   5386 DD 77 FD      [19]  700 	ld	-3 (ix), a
                            701 ;src/game/game.c:161: if ( cpct_isKeyPressed(Key_CursorUp) )
   5389 DD 7E F7      [19]  702 	ld	a, -9 (ix)
   538C B7            [ 4]  703 	or	a, a
   538D CA 22 54      [10]  704 	jp	Z, 00190$
                            705 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   5390 DD 66 F8      [19]  706 	ld	h, -8 (ix)
   5393 DD 6E FF      [19]  707 	ld	l, -1 (ix)
   5396 E5            [11]  708 	push	hl
   5397 DD 66 FE      [19]  709 	ld	h, -2 (ix)
   539A DD 6E FD      [19]  710 	ld	l, -3 (ix)
   539D E5            [11]  711 	push	hl
   539E CD 40 8A      [17]  712 	call	_drawTile
   53A1 F1            [10]  713 	pop	af
   53A2 F1            [10]  714 	pop	af
                            715 ;src/game/game.c:165: yCursor-=1;
   53A3 DD 6E EF      [19]  716 	ld	l,-17 (ix)
   53A6 DD 66 F0      [19]  717 	ld	h,-16 (ix)
   53A9 2B            [ 6]  718 	dec	hl
   53AA DD 75 EF      [19]  719 	ld	-17 (ix), l
   53AD DD 74 F0      [19]  720 	ld	-16 (ix), h
                            721 ;src/game/game.c:168: if(yCursor<0)
   53B0 DD CB F0 7E   [20]  722 	bit	7, -16 (ix)
   53B4 28 40         [12]  723 	jr	Z,00104$
                            724 ;src/game/game.c:170: yCursor=0;
   53B6 DD 36 EF 00   [19]  725 	ld	-17 (ix), #0x00
   53BA DD 36 F0 00   [19]  726 	ld	-16 (ix), #0x00
                            727 ;src/game/game.c:173: if(uly>0)
   53BE AF            [ 4]  728 	xor	a, a
   53BF DD BE F5      [19]  729 	cp	a, -11 (ix)
   53C2 DD 9E F6      [19]  730 	sbc	a, -10 (ix)
   53C5 E2 CA 53      [10]  731 	jp	PO, 00424$
   53C8 EE 80         [ 7]  732 	xor	a, #0x80
   53CA                     733 00424$:
   53CA F2 F6 53      [10]  734 	jp	P, 00104$
                            735 ;src/game/game.c:175: uly-=1;
   53CD DD 6E F5      [19]  736 	ld	l,-11 (ix)
   53D0 DD 66 F6      [19]  737 	ld	h,-10 (ix)
   53D3 2B            [ 6]  738 	dec	hl
   53D4 DD 75 F5      [19]  739 	ld	-11 (ix), l
   53D7 DD 74 F6      [19]  740 	ld	-10 (ix), h
                            741 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   53DA DD 7E F5      [19]  742 	ld	a, -11 (ix)
                            743 ;src/game/game.c:176: drawWorld(ulx, uly);
   53DD DD 77 FE      [19]  744 	ld	-2 (ix), a
   53E0 F5            [11]  745 	push	af
   53E1 33            [ 6]  746 	inc	sp
   53E2 DD 7E FD      [19]  747 	ld	a, -3 (ix)
   53E5 F5            [11]  748 	push	af
   53E6 33            [ 6]  749 	inc	sp
   53E7 CD A6 8D      [17]  750 	call	_drawWorld
   53EA F1            [10]  751 	pop	af
                            752 ;src/game/game.c:177: drawScrolls(ulx, uly);
   53EB DD 66 FE      [19]  753 	ld	h, -2 (ix)
   53EE DD 6E FD      [19]  754 	ld	l, -3 (ix)
   53F1 E5            [11]  755 	push	hl
   53F2 CD 69 8C      [17]  756 	call	_drawScrolls
   53F5 F1            [10]  757 	pop	af
   53F6                     758 00104$:
                            759 ;src/game/game.c:181: drawCursor(xCursor, yCursor);
   53F6 DD 46 EF      [19]  760 	ld	b, -17 (ix)
   53F9 C5            [11]  761 	push	bc
   53FA 33            [ 6]  762 	inc	sp
   53FB DD 7E FF      [19]  763 	ld	a, -1 (ix)
   53FE F5            [11]  764 	push	af
   53FF 33            [ 6]  765 	inc	sp
   5400 CD 28 83      [17]  766 	call	_drawCursor
   5403 F1            [10]  767 	pop	af
                            768 ;src/game/game.c:184: for(i=0; i<5000; i++) {}
   5404 DD 36 ED 88   [19]  769 	ld	-19 (ix), #0x88
   5408 DD 36 EE 13   [19]  770 	ld	-18 (ix), #0x13
   540C                     771 00199$:
   540C DD 6E ED      [19]  772 	ld	l,-19 (ix)
   540F DD 66 EE      [19]  773 	ld	h,-18 (ix)
   5412 2B            [ 6]  774 	dec	hl
   5413 DD 75 ED      [19]  775 	ld	-19 (ix), l
   5416 DD 74 EE      [19]  776 	ld	-18 (ix), h
   5419 7C            [ 4]  777 	ld	a, h
   541A DD B6 ED      [19]  778 	or	a,-19 (ix)
   541D 20 ED         [12]  779 	jr	NZ,00199$
   541F C3 FD 58      [10]  780 	jp	00191$
   5422                     781 00190$:
                            782 ;src/game/game.c:187: else if ( cpct_isKeyPressed(Key_CursorDown) )
   5422 21 00 04      [10]  783 	ld	hl, #0x0400
   5425 CD CB 60      [17]  784 	call	_cpct_isKeyPressed
   5428 7D            [ 4]  785 	ld	a, l
   5429 B7            [ 4]  786 	or	a, a
   542A CA C1 54      [10]  787 	jp	Z, 00187$
                            788 ;src/game/game.c:189: drawTile(ulx, uly, xCursor, yCursor);
   542D DD 66 F8      [19]  789 	ld	h, -8 (ix)
   5430 DD 6E FF      [19]  790 	ld	l, -1 (ix)
   5433 E5            [11]  791 	push	hl
   5434 DD 66 FE      [19]  792 	ld	h, -2 (ix)
   5437 DD 6E FD      [19]  793 	ld	l, -3 (ix)
   543A E5            [11]  794 	push	hl
   543B CD 40 8A      [17]  795 	call	_drawTile
   543E F1            [10]  796 	pop	af
   543F F1            [10]  797 	pop	af
                            798 ;src/game/game.c:190: yCursor+=1;
   5440 DD 34 EF      [23]  799 	inc	-17 (ix)
   5443 20 03         [12]  800 	jr	NZ,00425$
   5445 DD 34 F0      [23]  801 	inc	-16 (ix)
   5448                     802 00425$:
                            803 ;src/game/game.c:191: if(yCursor>NBTILE_H-1)
   5448 3E 0B         [ 7]  804 	ld	a, #0x0b
   544A DD BE EF      [19]  805 	cp	a, -17 (ix)
   544D 3E 00         [ 7]  806 	ld	a, #0x00
   544F DD 9E F0      [19]  807 	sbc	a, -16 (ix)
   5452 E2 57 54      [10]  808 	jp	PO, 00426$
   5455 EE 80         [ 7]  809 	xor	a, #0x80
   5457                     810 00426$:
   5457 F2 95 54      [10]  811 	jp	P, 00109$
                            812 ;src/game/game.c:193: yCursor=NBTILE_H-1;
   545A DD 36 EF 0B   [19]  813 	ld	-17 (ix), #0x0b
   545E DD 36 F0 00   [19]  814 	ld	-16 (ix), #0x00
                            815 ;src/game/game.c:194: if(uly<HEIGHT-NBTILE_H)
   5462 DD 7E F5      [19]  816 	ld	a, -11 (ix)
   5465 D6 24         [ 7]  817 	sub	a, #0x24
   5467 DD 7E F6      [19]  818 	ld	a, -10 (ix)
   546A 17            [ 4]  819 	rla
   546B 3F            [ 4]  820 	ccf
   546C 1F            [ 4]  821 	rra
   546D DE 80         [ 7]  822 	sbc	a, #0x80
   546F 30 24         [12]  823 	jr	NC,00109$
                            824 ;src/game/game.c:196: uly+=1;
   5471 DD 34 F5      [23]  825 	inc	-11 (ix)
   5474 20 03         [12]  826 	jr	NZ,00427$
   5476 DD 34 F6      [23]  827 	inc	-10 (ix)
   5479                     828 00427$:
                            829 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   5479 DD 7E F5      [19]  830 	ld	a, -11 (ix)
                            831 ;src/game/game.c:197: drawWorld(ulx, uly);
   547C DD 77 FE      [19]  832 	ld	-2 (ix), a
   547F F5            [11]  833 	push	af
   5480 33            [ 6]  834 	inc	sp
   5481 DD 7E FD      [19]  835 	ld	a, -3 (ix)
   5484 F5            [11]  836 	push	af
   5485 33            [ 6]  837 	inc	sp
   5486 CD A6 8D      [17]  838 	call	_drawWorld
   5489 F1            [10]  839 	pop	af
                            840 ;src/game/game.c:198: drawScrolls(ulx, uly);
   548A DD 66 FE      [19]  841 	ld	h, -2 (ix)
   548D DD 6E FD      [19]  842 	ld	l, -3 (ix)
   5490 E5            [11]  843 	push	hl
   5491 CD 69 8C      [17]  844 	call	_drawScrolls
   5494 F1            [10]  845 	pop	af
   5495                     846 00109$:
                            847 ;src/game/game.c:202: drawCursor(xCursor, yCursor);
   5495 DD 46 EF      [19]  848 	ld	b, -17 (ix)
   5498 C5            [11]  849 	push	bc
   5499 33            [ 6]  850 	inc	sp
   549A DD 7E FF      [19]  851 	ld	a, -1 (ix)
   549D F5            [11]  852 	push	af
   549E 33            [ 6]  853 	inc	sp
   549F CD 28 83      [17]  854 	call	_drawCursor
   54A2 F1            [10]  855 	pop	af
                            856 ;src/game/game.c:205: for(i=0; i<5000; i++) {}
   54A3 DD 36 ED 88   [19]  857 	ld	-19 (ix), #0x88
   54A7 DD 36 EE 13   [19]  858 	ld	-18 (ix), #0x13
   54AB                     859 00202$:
   54AB DD 6E ED      [19]  860 	ld	l,-19 (ix)
   54AE DD 66 EE      [19]  861 	ld	h,-18 (ix)
   54B1 2B            [ 6]  862 	dec	hl
   54B2 DD 75 ED      [19]  863 	ld	-19 (ix), l
   54B5 DD 74 EE      [19]  864 	ld	-18 (ix), h
   54B8 7C            [ 4]  865 	ld	a, h
   54B9 DD B6 ED      [19]  866 	or	a,-19 (ix)
   54BC 20 ED         [12]  867 	jr	NZ,00202$
   54BE C3 FD 58      [10]  868 	jp	00191$
   54C1                     869 00187$:
                            870 ;src/game/game.c:208: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   54C1 21 01 01      [10]  871 	ld	hl, #0x0101
   54C4 CD CB 60      [17]  872 	call	_cpct_isKeyPressed
   54C7 7D            [ 4]  873 	ld	a, l
   54C8 B7            [ 4]  874 	or	a, a
   54C9 CA 4B 55      [10]  875 	jp	Z, 00184$
                            876 ;src/game/game.c:210: drawTile(ulx, uly, xCursor, yCursor);
   54CC DD 66 F8      [19]  877 	ld	h, -8 (ix)
   54CF DD 6E FF      [19]  878 	ld	l, -1 (ix)
   54D2 E5            [11]  879 	push	hl
   54D3 DD 66 FE      [19]  880 	ld	h, -2 (ix)
   54D6 DD 6E FD      [19]  881 	ld	l, -3 (ix)
   54D9 E5            [11]  882 	push	hl
   54DA CD 40 8A      [17]  883 	call	_drawTile
   54DD F1            [10]  884 	pop	af
   54DE F1            [10]  885 	pop	af
                            886 ;src/game/game.c:211: xCursor-=1;
   54DF DD 6E F1      [19]  887 	ld	l,-15 (ix)
   54E2 DD 66 F2      [19]  888 	ld	h,-14 (ix)
   54E5 2B            [ 6]  889 	dec	hl
   54E6 DD 75 F1      [19]  890 	ld	-15 (ix), l
   54E9 DD 74 F2      [19]  891 	ld	-14 (ix), h
                            892 ;src/game/game.c:212: if(xCursor<0)
   54EC DD CB F2 7E   [20]  893 	bit	7, -14 (ix)
   54F0 28 40         [12]  894 	jr	Z,00114$
                            895 ;src/game/game.c:214: xCursor=0;
   54F2 DD 36 F1 00   [19]  896 	ld	-15 (ix), #0x00
   54F6 DD 36 F2 00   [19]  897 	ld	-14 (ix), #0x00
                            898 ;src/game/game.c:215: if(ulx>0)
   54FA AF            [ 4]  899 	xor	a, a
   54FB DD BE F3      [19]  900 	cp	a, -13 (ix)
   54FE DD 9E F4      [19]  901 	sbc	a, -12 (ix)
   5501 E2 06 55      [10]  902 	jp	PO, 00428$
   5504 EE 80         [ 7]  903 	xor	a, #0x80
   5506                     904 00428$:
   5506 F2 32 55      [10]  905 	jp	P, 00114$
                            906 ;src/game/game.c:217: ulx-=1;
   5509 DD 6E F3      [19]  907 	ld	l,-13 (ix)
   550C DD 66 F4      [19]  908 	ld	h,-12 (ix)
   550F 2B            [ 6]  909 	dec	hl
   5510 DD 75 F3      [19]  910 	ld	-13 (ix), l
   5513 DD 74 F4      [19]  911 	ld	-12 (ix), h
                            912 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   5516 DD 7E F3      [19]  913 	ld	a, -13 (ix)
   5519 DD 77 FD      [19]  914 	ld	-3 (ix), a
                            915 ;src/game/game.c:218: drawWorld(ulx, uly);
   551C DD 66 FE      [19]  916 	ld	h, -2 (ix)
   551F DD 6E FD      [19]  917 	ld	l, -3 (ix)
   5522 E5            [11]  918 	push	hl
   5523 CD A6 8D      [17]  919 	call	_drawWorld
   5526 F1            [10]  920 	pop	af
                            921 ;src/game/game.c:219: drawScrolls(ulx, uly);
   5527 DD 66 FE      [19]  922 	ld	h, -2 (ix)
   552A DD 6E FD      [19]  923 	ld	l, -3 (ix)
   552D E5            [11]  924 	push	hl
   552E CD 69 8C      [17]  925 	call	_drawScrolls
   5531 F1            [10]  926 	pop	af
   5532                     927 00114$:
                            928 ;src/game/game.c:223: drawCursor(xCursor, yCursor);
   5532 DD 46 F1      [19]  929 	ld	b, -15 (ix)
   5535 DD 7E F8      [19]  930 	ld	a, -8 (ix)
   5538 F5            [11]  931 	push	af
   5539 33            [ 6]  932 	inc	sp
   553A C5            [11]  933 	push	bc
   553B 33            [ 6]  934 	inc	sp
   553C CD 28 83      [17]  935 	call	_drawCursor
   553F F1            [10]  936 	pop	af
                            937 ;src/game/game.c:226: for(i=0; i<14000; i++) {}
   5540 01 B0 36      [10]  938 	ld	bc, #0x36b0
   5543                     939 00205$:
   5543 0B            [ 6]  940 	dec	bc
   5544 78            [ 4]  941 	ld	a, b
   5545 B1            [ 4]  942 	or	a,c
   5546 20 FB         [12]  943 	jr	NZ,00205$
   5548 C3 FD 58      [10]  944 	jp	00191$
   554B                     945 00184$:
                            946 ;src/game/game.c:229: else if ( cpct_isKeyPressed(Key_CursorRight) )
   554B 21 00 02      [10]  947 	ld	hl, #0x0200
   554E CD CB 60      [17]  948 	call	_cpct_isKeyPressed
   5551 7D            [ 4]  949 	ld	a, l
   5552 B7            [ 4]  950 	or	a, a
   5553 CA D7 55      [10]  951 	jp	Z, 00181$
                            952 ;src/game/game.c:231: drawTile(ulx, uly, xCursor, yCursor);
   5556 DD 66 F8      [19]  953 	ld	h, -8 (ix)
   5559 DD 6E FF      [19]  954 	ld	l, -1 (ix)
   555C E5            [11]  955 	push	hl
   555D DD 66 FE      [19]  956 	ld	h, -2 (ix)
   5560 DD 6E FD      [19]  957 	ld	l, -3 (ix)
   5563 E5            [11]  958 	push	hl
   5564 CD 40 8A      [17]  959 	call	_drawTile
   5567 F1            [10]  960 	pop	af
   5568 F1            [10]  961 	pop	af
                            962 ;src/game/game.c:232: xCursor+=1;
   5569 DD 34 F1      [23]  963 	inc	-15 (ix)
   556C 20 03         [12]  964 	jr	NZ,00429$
   556E DD 34 F2      [23]  965 	inc	-14 (ix)
   5571                     966 00429$:
                            967 ;src/game/game.c:233: if(xCursor>NBTILE_W-1)
   5571 3E 13         [ 7]  968 	ld	a, #0x13
   5573 DD BE F1      [19]  969 	cp	a, -15 (ix)
   5576 3E 00         [ 7]  970 	ld	a, #0x00
   5578 DD 9E F2      [19]  971 	sbc	a, -14 (ix)
   557B E2 80 55      [10]  972 	jp	PO, 00430$
   557E EE 80         [ 7]  973 	xor	a, #0x80
   5580                     974 00430$:
   5580 F2 BE 55      [10]  975 	jp	P, 00119$
                            976 ;src/game/game.c:235: xCursor=NBTILE_W-1;
   5583 DD 36 F1 13   [19]  977 	ld	-15 (ix), #0x13
   5587 DD 36 F2 00   [19]  978 	ld	-14 (ix), #0x00
                            979 ;src/game/game.c:236: if(ulx<WIDTH-NBTILE_W)
   558B DD 7E F3      [19]  980 	ld	a, -13 (ix)
   558E D6 3C         [ 7]  981 	sub	a, #0x3c
   5590 DD 7E F4      [19]  982 	ld	a, -12 (ix)
   5593 17            [ 4]  983 	rla
   5594 3F            [ 4]  984 	ccf
   5595 1F            [ 4]  985 	rra
   5596 DE 80         [ 7]  986 	sbc	a, #0x80
   5598 30 24         [12]  987 	jr	NC,00119$
                            988 ;src/game/game.c:238: ulx+=1;
   559A DD 34 F3      [23]  989 	inc	-13 (ix)
   559D 20 03         [12]  990 	jr	NZ,00431$
   559F DD 34 F4      [23]  991 	inc	-12 (ix)
   55A2                     992 00431$:
                            993 ;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
   55A2 DD 7E F3      [19]  994 	ld	a, -13 (ix)
   55A5 DD 77 FD      [19]  995 	ld	-3 (ix), a
                            996 ;src/game/game.c:239: drawWorld(ulx, uly);
   55A8 DD 66 FE      [19]  997 	ld	h, -2 (ix)
   55AB DD 6E FD      [19]  998 	ld	l, -3 (ix)
   55AE E5            [11]  999 	push	hl
   55AF CD A6 8D      [17] 1000 	call	_drawWorld
   55B2 F1            [10] 1001 	pop	af
                           1002 ;src/game/game.c:240: drawScrolls(ulx, uly);
   55B3 DD 66 FE      [19] 1003 	ld	h, -2 (ix)
   55B6 DD 6E FD      [19] 1004 	ld	l, -3 (ix)
   55B9 E5            [11] 1005 	push	hl
   55BA CD 69 8C      [17] 1006 	call	_drawScrolls
   55BD F1            [10] 1007 	pop	af
   55BE                    1008 00119$:
                           1009 ;src/game/game.c:244: drawCursor(xCursor, yCursor);
   55BE DD 46 F1      [19] 1010 	ld	b, -15 (ix)
   55C1 DD 7E F8      [19] 1011 	ld	a, -8 (ix)
   55C4 F5            [11] 1012 	push	af
   55C5 33            [ 6] 1013 	inc	sp
   55C6 C5            [11] 1014 	push	bc
   55C7 33            [ 6] 1015 	inc	sp
   55C8 CD 28 83      [17] 1016 	call	_drawCursor
   55CB F1            [10] 1017 	pop	af
                           1018 ;src/game/game.c:247: for(i=0; i<14000; i++) {}
   55CC 01 B0 36      [10] 1019 	ld	bc, #0x36b0
   55CF                    1020 00208$:
   55CF 0B            [ 6] 1021 	dec	bc
   55D0 78            [ 4] 1022 	ld	a, b
   55D1 B1            [ 4] 1023 	or	a,c
   55D2 20 FB         [12] 1024 	jr	NZ,00208$
   55D4 C3 FD 58      [10] 1025 	jp	00191$
   55D7                    1026 00181$:
                           1027 ;src/game/game.c:251: else if ( cpct_isKeyPressed(Key_Space) )
   55D7 21 05 80      [10] 1028 	ld	hl, #0x8005
   55DA CD CB 60      [17] 1029 	call	_cpct_isKeyPressed
   55DD 7D            [ 4] 1030 	ld	a, l
   55DE B7            [ 4] 1031 	or	a, a
   55DF CA 85 56      [10] 1032 	jp	Z, 00178$
                           1033 ;src/game/game.c:253: if(CURSOR_MODE==T_SSNS)
   55E2 FD 21 21 83   [14] 1034 	ld	iy, #_CURSOR_MODE
   55E6 FD 7E 00      [19] 1035 	ld	a, 0 (iy)
   55E9 D6 02         [ 7] 1036 	sub	a, #0x02
   55EB 20 07         [12] 1037 	jr	NZ,00143$
                           1038 ;src/game/game.c:254: CURSOR_MODE=T_SSEW;
   55ED FD 36 00 03   [19] 1039 	ld	0 (iy), #0x03
   55F1 C3 6F 56      [10] 1040 	jp	00144$
   55F4                    1041 00143$:
                           1042 ;src/game/game.c:255: else if(CURSOR_MODE==T_SSEW)
   55F4 FD 21 21 83   [14] 1043 	ld	iy, #_CURSOR_MODE
   55F8 FD 7E 00      [19] 1044 	ld	a, 0 (iy)
   55FB D6 03         [ 7] 1045 	sub	a, #0x03
   55FD 20 06         [12] 1046 	jr	NZ,00140$
                           1047 ;src/game/game.c:256: CURSOR_MODE=T_SSNS;
   55FF FD 36 00 02   [19] 1048 	ld	0 (iy), #0x02
   5603 18 6A         [12] 1049 	jr	00144$
   5605                    1050 00140$:
                           1051 ;src/game/game.c:257: else if(CURSOR_MODE==T_SMNS)
   5605 FD 21 21 83   [14] 1052 	ld	iy, #_CURSOR_MODE
   5609 FD 7E 00      [19] 1053 	ld	a, 0 (iy)
   560C D6 04         [ 7] 1054 	sub	a, #0x04
   560E 20 06         [12] 1055 	jr	NZ,00137$
                           1056 ;src/game/game.c:258: CURSOR_MODE=T_SMEW;
   5610 FD 36 00 05   [19] 1057 	ld	0 (iy), #0x05
   5614 18 59         [12] 1058 	jr	00144$
   5616                    1059 00137$:
                           1060 ;src/game/game.c:259: else if(CURSOR_MODE==T_SMEW)
   5616 FD 21 21 83   [14] 1061 	ld	iy, #_CURSOR_MODE
   561A FD 7E 00      [19] 1062 	ld	a, 0 (iy)
   561D D6 05         [ 7] 1063 	sub	a, #0x05
   561F 20 06         [12] 1064 	jr	NZ,00134$
                           1065 ;src/game/game.c:260: CURSOR_MODE=T_SMNS;
   5621 FD 36 00 04   [19] 1066 	ld	0 (iy), #0x04
   5625 18 48         [12] 1067 	jr	00144$
   5627                    1068 00134$:
                           1069 ;src/game/game.c:261: else if(CURSOR_MODE==T_SLNS)
   5627 FD 21 21 83   [14] 1070 	ld	iy, #_CURSOR_MODE
   562B FD 7E 00      [19] 1071 	ld	a, 0 (iy)
   562E D6 06         [ 7] 1072 	sub	a, #0x06
   5630 20 06         [12] 1073 	jr	NZ,00131$
                           1074 ;src/game/game.c:262: CURSOR_MODE=T_SLEW;
   5632 FD 36 00 07   [19] 1075 	ld	0 (iy), #0x07
   5636 18 37         [12] 1076 	jr	00144$
   5638                    1077 00131$:
                           1078 ;src/game/game.c:263: else if(CURSOR_MODE==T_SLEW)
   5638 FD 21 21 83   [14] 1079 	ld	iy, #_CURSOR_MODE
   563C FD 7E 00      [19] 1080 	ld	a, 0 (iy)
   563F D6 07         [ 7] 1081 	sub	a, #0x07
   5641 20 06         [12] 1082 	jr	NZ,00128$
                           1083 ;src/game/game.c:264: CURSOR_MODE=T_SLNS;
   5643 FD 36 00 06   [19] 1084 	ld	0 (iy), #0x06
   5647 18 26         [12] 1085 	jr	00144$
   5649                    1086 00128$:
                           1087 ;src/game/game.c:265: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   5649 FD 21 21 83   [14] 1088 	ld	iy, #_CURSOR_MODE
   564D FD 7E 00      [19] 1089 	ld	a, 0 (iy)
   5650 D6 08         [ 7] 1090 	sub	a, #0x08
   5652 38 0C         [12] 1091 	jr	C,00124$
   5654 FD 7E 00      [19] 1092 	ld	a, 0 (iy)
   5657 D6 11         [ 7] 1093 	sub	a, #0x11
   5659 30 05         [12] 1094 	jr	NC,00124$
                           1095 ;src/game/game.c:266: CURSOR_MODE+=1;
   565B FD 34 00      [23] 1096 	inc	0 (iy)
   565E 18 0F         [12] 1097 	jr	00144$
   5660                    1098 00124$:
                           1099 ;src/game/game.c:267: else if(CURSOR_MODE==T_RNSW)
   5660 FD 21 21 83   [14] 1100 	ld	iy, #_CURSOR_MODE
   5664 FD 7E 00      [19] 1101 	ld	a, 0 (iy)
   5667 D6 11         [ 7] 1102 	sub	a, #0x11
   5669 20 04         [12] 1103 	jr	NZ,00144$
                           1104 ;src/game/game.c:268: CURSOR_MODE=T_REW;
   566B FD 36 00 08   [19] 1105 	ld	0 (iy), #0x08
   566F                    1106 00144$:
                           1107 ;src/game/game.c:270: drawCursor(xCursor, yCursor);
   566F DD 66 F8      [19] 1108 	ld	h, -8 (ix)
   5672 DD 6E FF      [19] 1109 	ld	l, -1 (ix)
   5675 E5            [11] 1110 	push	hl
   5676 CD 28 83      [17] 1111 	call	_drawCursor
   5679 F1            [10] 1112 	pop	af
                           1113 ;src/game/game.c:273: for(i=0; i<14000; i++) {}
   567A 01 B0 36      [10] 1114 	ld	bc, #0x36b0
   567D                    1115 00211$:
   567D 0B            [ 6] 1116 	dec	bc
   567E 78            [ 4] 1117 	ld	a, b
   567F B1            [ 4] 1118 	or	a,c
   5680 20 FB         [12] 1119 	jr	NZ,00211$
   5682 C3 FD 58      [10] 1120 	jp	00191$
   5685                    1121 00178$:
                           1122 ;src/game/game.c:276: else if ( cpct_isKeyPressed(Key_Esc) )
   5685 21 08 04      [10] 1123 	ld	hl, #0x0408
   5688 CD CB 60      [17] 1124 	call	_cpct_isKeyPressed
   568B 7D            [ 4] 1125 	ld	a, l
   568C B7            [ 4] 1126 	or	a, a
   568D CA 5B 57      [10] 1127 	jp	Z, 00175$
                           1128 ;src/game/game.c:279: if(CURSOR_MODE==NONE)
   5690 3A 21 83      [13] 1129 	ld	a,(#_CURSOR_MODE + 0)
   5693 B7            [ 4] 1130 	or	a, a
   5694 C2 2D 57      [10] 1131 	jp	NZ, 00150$
                           1132 ;src/game/game.c:282: const char *txtWindowQuit[] = { 
   5697 21 00 00      [10] 1133 	ld	hl, #0x0000
   569A 39            [11] 1134 	add	hl, sp
   569B DD 75 FB      [19] 1135 	ld	-5 (ix), l
   569E DD 74 FC      [19] 1136 	ld	-4 (ix), h
   56A1 36 1D         [10] 1137 	ld	(hl), #<(___str_28)
   56A3 23            [ 6] 1138 	inc	hl
   56A4 36 59         [10] 1139 	ld	(hl), #>(___str_28)
   56A6 DD 7E FB      [19] 1140 	ld	a, -5 (ix)
   56A9 C6 02         [ 7] 1141 	add	a, #0x02
   56AB DD 77 F9      [19] 1142 	ld	-7 (ix), a
   56AE DD 7E FC      [19] 1143 	ld	a, -4 (ix)
   56B1 CE 00         [ 7] 1144 	adc	a, #0x00
   56B3 DD 77 FA      [19] 1145 	ld	-6 (ix), a
   56B6 DD 6E F9      [19] 1146 	ld	l,-7 (ix)
   56B9 DD 66 FA      [19] 1147 	ld	h,-6 (ix)
   56BC 36 2B         [10] 1148 	ld	(hl), #<(___str_29)
   56BE 23            [ 6] 1149 	inc	hl
   56BF 36 59         [10] 1150 	ld	(hl), #>(___str_29)
   56C1 DD 7E FB      [19] 1151 	ld	a, -5 (ix)
   56C4 C6 04         [ 7] 1152 	add	a, #0x04
   56C6 DD 77 F9      [19] 1153 	ld	-7 (ix), a
   56C9 DD 7E FC      [19] 1154 	ld	a, -4 (ix)
   56CC CE 00         [ 7] 1155 	adc	a, #0x00
   56CE DD 77 FA      [19] 1156 	ld	-6 (ix), a
   56D1 DD 6E F9      [19] 1157 	ld	l,-7 (ix)
   56D4 DD 66 FA      [19] 1158 	ld	h,-6 (ix)
   56D7 36 2C         [10] 1159 	ld	(hl), #<(___str_30)
   56D9 23            [ 6] 1160 	inc	hl
   56DA 36 59         [10] 1161 	ld	(hl), #>(___str_30)
                           1162 ;src/game/game.c:288: putM2();
   56DC CD 44 41      [17] 1163 	call	_putM2
                           1164 ;src/game/game.c:289: if(	drawWindow(txtWindowQuit,3,1) == 1)
   56DF DD 7E FB      [19] 1165 	ld	a, -5 (ix)
   56E2 DD 77 F9      [19] 1166 	ld	-7 (ix), a
   56E5 DD 7E FC      [19] 1167 	ld	a, -4 (ix)
   56E8 DD 77 FA      [19] 1168 	ld	-6 (ix), a
   56EB 21 03 01      [10] 1169 	ld	hl, #0x0103
   56EE E5            [11] 1170 	push	hl
   56EF DD 6E F9      [19] 1171 	ld	l,-7 (ix)
   56F2 DD 66 FA      [19] 1172 	ld	h,-6 (ix)
   56F5 E5            [11] 1173 	push	hl
   56F6 CD 2D 46      [17] 1174 	call	_drawWindow
   56F9 F1            [10] 1175 	pop	af
   56FA F1            [10] 1176 	pop	af
   56FB 2D            [ 4] 1177 	dec	l
   56FC 20 06         [12] 1178 	jr	NZ,00147$
                           1179 ;src/game/game.c:290: exit=1;
   56FE DD 36 EC 01   [19] 1180 	ld	-20 (ix), #0x01
   5702 18 41         [12] 1181 	jr	00151$
   5704                    1182 00147$:
                           1183 ;src/game/game.c:293: putM1();
   5704 CD 33 41      [17] 1184 	call	_putM1
                           1185 ;src/game/game.c:294: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5707 21 00 00      [10] 1186 	ld	hl, #0x0000
   570A E5            [11] 1187 	push	hl
   570B 2E 00         [ 7] 1188 	ld	l, #0x00
   570D E5            [11] 1189 	push	hl
   570E CD F8 65      [17] 1190 	call	_cpct_px2byteM1
   5711 F1            [10] 1191 	pop	af
   5712 F1            [10] 1192 	pop	af
   5713 45            [ 4] 1193 	ld	b, l
   5714 21 00 40      [10] 1194 	ld	hl, #0x4000
   5717 E5            [11] 1195 	push	hl
   5718 C5            [11] 1196 	push	bc
   5719 33            [ 6] 1197 	inc	sp
   571A 26 C0         [ 7] 1198 	ld	h, #0xc0
   571C E5            [11] 1199 	push	hl
   571D CD EA 65      [17] 1200 	call	_cpct_memset
                           1201 ;src/game/game.c:295: drawWorld(ulx, uly);
   5720 DD 66 FE      [19] 1202 	ld	h, -2 (ix)
   5723 DD 6E FD      [19] 1203 	ld	l, -3 (ix)
   5726 E5            [11] 1204 	push	hl
   5727 CD A6 8D      [17] 1205 	call	_drawWorld
   572A F1            [10] 1206 	pop	af
   572B 18 18         [12] 1207 	jr	00151$
   572D                    1208 00150$:
                           1209 ;src/game/game.c:300: CURSOR_MODE=NONE;
   572D 21 21 83      [10] 1210 	ld	hl,#_CURSOR_MODE + 0
   5730 36 00         [10] 1211 	ld	(hl), #0x00
                           1212 ;src/game/game.c:301: drawTile(ulx, uly, xCursor, yCursor);
   5732 DD 66 F8      [19] 1213 	ld	h, -8 (ix)
   5735 DD 6E FF      [19] 1214 	ld	l, -1 (ix)
   5738 E5            [11] 1215 	push	hl
   5739 DD 66 FE      [19] 1216 	ld	h, -2 (ix)
   573C DD 6E FD      [19] 1217 	ld	l, -3 (ix)
   573F E5            [11] 1218 	push	hl
   5740 CD 40 8A      [17] 1219 	call	_drawTile
   5743 F1            [10] 1220 	pop	af
   5744 F1            [10] 1221 	pop	af
   5745                    1222 00151$:
                           1223 ;src/game/game.c:304: drawCursor(xCursor, yCursor);
   5745 DD 66 F8      [19] 1224 	ld	h, -8 (ix)
   5748 DD 6E FF      [19] 1225 	ld	l, -1 (ix)
   574B E5            [11] 1226 	push	hl
   574C CD 28 83      [17] 1227 	call	_drawCursor
   574F F1            [10] 1228 	pop	af
                           1229 ;src/game/game.c:307: for(i=0; i<14000; i++) {}
   5750 01 B0 36      [10] 1230 	ld	bc, #0x36b0
   5753                    1231 00214$:
   5753 0B            [ 6] 1232 	dec	bc
   5754 78            [ 4] 1233 	ld	a, b
   5755 B1            [ 4] 1234 	or	a,c
   5756 20 FB         [12] 1235 	jr	NZ,00214$
   5758 C3 FD 58      [10] 1236 	jp	00191$
   575B                    1237 00175$:
                           1238 ;src/game/game.c:310: else if ( cpct_isKeyPressed(Key_Return) )
   575B 21 02 04      [10] 1239 	ld	hl, #0x0402
   575E CD CB 60      [17] 1240 	call	_cpct_isKeyPressed
   5761 7D            [ 4] 1241 	ld	a, l
   5762 B7            [ 4] 1242 	or	a, a
   5763 CA FD 58      [10] 1243 	jp	Z, 00191$
                           1244 ;src/game/game.c:315: menuTile(ulx+xCursor, uly+yCursor);
   5766 DD 5E F5      [19] 1245 	ld	e, -11 (ix)
   5769 DD 6E EF      [19] 1246 	ld	l, -17 (ix)
   576C DD 4E F3      [19] 1247 	ld	c, -13 (ix)
   576F DD 7E F1      [19] 1248 	ld	a, -15 (ix)
   5772 DD 77 F9      [19] 1249 	ld	-7 (ix), a
   5775 7B            [ 4] 1250 	ld	a, e
   5776 85            [ 4] 1251 	add	a, l
   5777 DD 77 FB      [19] 1252 	ld	-5 (ix), a
   577A 79            [ 4] 1253 	ld	a, c
   577B DD 86 F9      [19] 1254 	add	a, -7 (ix)
   577E DD 77 F9      [19] 1255 	ld	-7 (ix), a
                           1256 ;src/game/game.c:313: if(CURSOR_MODE==NONE)
   5781 3A 21 83      [13] 1257 	ld	a,(#_CURSOR_MODE + 0)
   5784 B7            [ 4] 1258 	or	a, a
   5785 20 32         [12] 1259 	jr	NZ,00169$
                           1260 ;src/game/game.c:315: menuTile(ulx+xCursor, uly+yCursor);
   5787 DD 66 FB      [19] 1261 	ld	h, -5 (ix)
   578A DD 6E F9      [19] 1262 	ld	l, -7 (ix)
   578D E5            [11] 1263 	push	hl
   578E CD 2F 51      [17] 1264 	call	_menuTile
   5791 F1            [10] 1265 	pop	af
                           1266 ;src/game/game.c:316: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5792 21 00 00      [10] 1267 	ld	hl, #0x0000
   5795 E5            [11] 1268 	push	hl
   5796 2E 00         [ 7] 1269 	ld	l, #0x00
   5798 E5            [11] 1270 	push	hl
   5799 CD F8 65      [17] 1271 	call	_cpct_px2byteM1
   579C F1            [10] 1272 	pop	af
   579D F1            [10] 1273 	pop	af
   579E 45            [ 4] 1274 	ld	b, l
   579F 21 00 40      [10] 1275 	ld	hl, #0x4000
   57A2 E5            [11] 1276 	push	hl
   57A3 C5            [11] 1277 	push	bc
   57A4 33            [ 6] 1278 	inc	sp
   57A5 26 C0         [ 7] 1279 	ld	h, #0xc0
   57A7 E5            [11] 1280 	push	hl
   57A8 CD EA 65      [17] 1281 	call	_cpct_memset
                           1282 ;src/game/game.c:317: drawWorld(ulx, uly);
   57AB DD 66 FE      [19] 1283 	ld	h, -2 (ix)
   57AE DD 6E FD      [19] 1284 	ld	l, -3 (ix)
   57B1 E5            [11] 1285 	push	hl
   57B2 CD A6 8D      [17] 1286 	call	_drawWorld
   57B5 F1            [10] 1287 	pop	af
   57B6 C3 EA 58      [10] 1288 	jp	00170$
   57B9                    1289 00169$:
                           1290 ;src/game/game.c:322: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
   57B9 DD 7E F5      [19] 1291 	ld	a, -11 (ix)
   57BC DD 86 EF      [19] 1292 	add	a, -17 (ix)
   57BF 4F            [ 4] 1293 	ld	c, a
   57C0 DD 7E F6      [19] 1294 	ld	a, -10 (ix)
   57C3 DD 8E F0      [19] 1295 	adc	a, -16 (ix)
   57C6 47            [ 4] 1296 	ld	b, a
   57C7 DD 7E F3      [19] 1297 	ld	a, -13 (ix)
   57CA DD 86 F1      [19] 1298 	add	a, -15 (ix)
   57CD 5F            [ 4] 1299 	ld	e, a
   57CE DD 7E F4      [19] 1300 	ld	a, -12 (ix)
   57D1 DD 8E F2      [19] 1301 	adc	a, -14 (ix)
   57D4 57            [ 4] 1302 	ld	d, a
   57D5 69            [ 4] 1303 	ld	l, c
   57D6 60            [ 4] 1304 	ld	h, b
   57D7 29            [11] 1305 	add	hl, hl
   57D8 29            [11] 1306 	add	hl, hl
   57D9 09            [11] 1307 	add	hl, bc
   57DA 29            [11] 1308 	add	hl, hl
   57DB 29            [11] 1309 	add	hl, hl
   57DC 29            [11] 1310 	add	hl, hl
   57DD 29            [11] 1311 	add	hl, hl
   57DE 19            [11] 1312 	add	hl,de
   57DF EB            [ 4] 1313 	ex	de,hl
                           1314 ;src/game/game.c:319: else if(CURSOR_MODE==PUTTRAIN)
   57E0 3A 21 83      [13] 1315 	ld	a,(#_CURSOR_MODE + 0)
   57E3 3D            [ 4] 1316 	dec	a
   57E4 C2 C8 58      [10] 1317 	jp	NZ,00166$
                           1318 ;src/game/game.c:322: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
   57E7 21 1D 74      [10] 1319 	ld	hl, #_p_world
   57EA 19            [11] 1320 	add	hl, de
   57EB 4E            [ 7] 1321 	ld	c, (hl)
   57EC 79            [ 4] 1322 	ld	a, c
   57ED D6 0A         [ 7] 1323 	sub	a, #0x0a
   57EF DA EA 58      [10] 1324 	jp	C, 00170$
   57F2 3E 0F         [ 7] 1325 	ld	a, #0x0f
   57F4 91            [ 4] 1326 	sub	a, c
   57F5 DA EA 58      [10] 1327 	jp	C, 00170$
                           1328 ;src/game/game.c:325: trainList[nbTrainList].posX = ulx+xCursor;
   57F8 FD 21 22 83   [14] 1329 	ld	iy, #_nbTrainList
   57FC FD 6E 00      [19] 1330 	ld	l, 0 (iy)
   57FF 26 00         [ 7] 1331 	ld	h, #0x00
   5801 29            [11] 1332 	add	hl, hl
   5802 29            [11] 1333 	add	hl, hl
   5803 29            [11] 1334 	add	hl, hl
   5804 29            [11] 1335 	add	hl, hl
   5805 4D            [ 4] 1336 	ld	c, l
   5806 44            [ 4] 1337 	ld	b, h
   5807 2A 1D 83      [16] 1338 	ld	hl, (_trainList)
   580A 09            [11] 1339 	add	hl, bc
   580B 01 04 00      [10] 1340 	ld	bc, #0x0004
   580E 09            [11] 1341 	add	hl, bc
   580F DD 7E F9      [19] 1342 	ld	a, -7 (ix)
   5812 77            [ 7] 1343 	ld	(hl), a
                           1344 ;src/game/game.c:326: trainList[nbTrainList].posY = uly+yCursor;
   5813 FD 6E 00      [19] 1345 	ld	l, 0 (iy)
   5816 26 00         [ 7] 1346 	ld	h, #0x00
   5818 29            [11] 1347 	add	hl, hl
   5819 29            [11] 1348 	add	hl, hl
   581A 29            [11] 1349 	add	hl, hl
   581B 29            [11] 1350 	add	hl, hl
   581C 4D            [ 4] 1351 	ld	c, l
   581D 44            [ 4] 1352 	ld	b, h
   581E 2A 1D 83      [16] 1353 	ld	hl, (_trainList)
   5821 09            [11] 1354 	add	hl, bc
   5822 01 05 00      [10] 1355 	ld	bc, #0x0005
   5825 09            [11] 1356 	add	hl, bc
   5826 DD 7E FB      [19] 1357 	ld	a, -5 (ix)
   5829 77            [ 7] 1358 	ld	(hl), a
                           1359 ;src/game/game.c:327: trainList[nbTrainList].cycles = 1; // Cycle begin at 1 and not 0 because the position is 1 pixel shifted cause of the tail
   582A FD 6E 00      [19] 1360 	ld	l, 0 (iy)
   582D 26 00         [ 7] 1361 	ld	h, #0x00
   582F 29            [11] 1362 	add	hl, hl
   5830 29            [11] 1363 	add	hl, hl
   5831 29            [11] 1364 	add	hl, hl
   5832 29            [11] 1365 	add	hl, hl
   5833 4D            [ 4] 1366 	ld	c, l
   5834 44            [ 4] 1367 	ld	b, h
   5835 2A 1D 83      [16] 1368 	ld	hl, (_trainList)
   5838 09            [11] 1369 	add	hl, bc
   5839 01 0F 00      [10] 1370 	ld	bc, #0x000f
   583C 09            [11] 1371 	add	hl, bc
   583D 36 01         [10] 1372 	ld	(hl), #0x01
                           1373 ;src/game/game.c:325: trainList[nbTrainList].posX = ulx+xCursor;
   583F FD 6E 00      [19] 1374 	ld	l, 0 (iy)
   5842 26 00         [ 7] 1375 	ld	h, #0x00
                           1376 ;src/game/game.c:331: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
   5844 29            [11] 1377 	add	hl, hl
   5845 29            [11] 1378 	add	hl, hl
   5846 29            [11] 1379 	add	hl, hl
   5847 29            [11] 1380 	add	hl, hl
   5848 4D            [ 4] 1381 	ld	c, l
   5849 44            [ 4] 1382 	ld	b, h
   584A FD 21 1D 83   [14] 1383 	ld	iy, #_trainList
   584E FD 7E 00      [19] 1384 	ld	a, 0 (iy)
   5851 81            [ 4] 1385 	add	a, c
   5852 4F            [ 4] 1386 	ld	c, a
   5853 FD 7E 01      [19] 1387 	ld	a, 1 (iy)
   5856 88            [ 4] 1388 	adc	a, b
   5857 47            [ 4] 1389 	ld	b, a
   5858 C5            [11] 1390 	push	bc
   5859 FD E1         [14] 1391 	pop	iy
   585B FD 5E 05      [19] 1392 	ld	e, 5 (iy)
   585E 16 00         [ 7] 1393 	ld	d,#0x00
   5860 6B            [ 4] 1394 	ld	l, e
   5861 62            [ 4] 1395 	ld	h, d
   5862 29            [11] 1396 	add	hl, hl
   5863 29            [11] 1397 	add	hl, hl
   5864 19            [11] 1398 	add	hl, de
   5865 29            [11] 1399 	add	hl, hl
   5866 29            [11] 1400 	add	hl, hl
   5867 29            [11] 1401 	add	hl, hl
   5868 29            [11] 1402 	add	hl, hl
   5869 EB            [ 4] 1403 	ex	de,hl
   586A 69            [ 4] 1404 	ld	l, c
   586B 60            [ 4] 1405 	ld	h, b
   586C 23            [ 6] 1406 	inc	hl
   586D 23            [ 6] 1407 	inc	hl
   586E 23            [ 6] 1408 	inc	hl
   586F 23            [ 6] 1409 	inc	hl
   5870 6E            [ 7] 1410 	ld	l, (hl)
   5871 26 00         [ 7] 1411 	ld	h, #0x00
   5873 19            [11] 1412 	add	hl, de
   5874 11 1D 74      [10] 1413 	ld	de, #_p_world
   5877 19            [11] 1414 	add	hl, de
   5878 7E            [ 7] 1415 	ld	a, (hl)
   5879 DD 77 F9      [19] 1416 	ld	-7 (ix), a
                           1417 ;src/game/game.c:335: trainList[nbTrainList].heading = 2;
   587C 21 06 00      [10] 1418 	ld	hl, #0x0006
   587F 09            [11] 1419 	add	hl, bc
                           1420 ;src/game/game.c:331: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
   5880 DD 7E F9      [19] 1421 	ld	a, -7 (ix)
   5883 D6 0A         [ 7] 1422 	sub	a, #0x0a
   5885 28 0E         [12] 1423 	jr	Z,00153$
                           1424 ;src/game/game.c:332: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SMNS ||
   5887 DD 7E F9      [19] 1425 	ld	a, -7 (ix)
   588A D6 0C         [ 7] 1426 	sub	a, #0x0c
   588C 28 07         [12] 1427 	jr	Z,00153$
                           1428 ;src/game/game.c:333: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SLNS )
   588E DD 7E F9      [19] 1429 	ld	a, -7 (ix)
   5891 D6 0E         [ 7] 1430 	sub	a, #0x0e
   5893 20 15         [12] 1431 	jr	NZ,00154$
   5895                    1432 00153$:
                           1433 ;src/game/game.c:335: trainList[nbTrainList].heading = 2;
   5895 36 02         [10] 1434 	ld	(hl), #0x02
                           1435 ;src/game/game.c:336: drawNewTrain(nbTrainList, ulx, uly);
   5897 DD 66 FE      [19] 1436 	ld	h, -2 (ix)
   589A DD 6E FD      [19] 1437 	ld	l, -3 (ix)
   589D E5            [11] 1438 	push	hl
   589E 3A 22 83      [13] 1439 	ld	a, (_nbTrainList)
   58A1 F5            [11] 1440 	push	af
   58A2 33            [ 6] 1441 	inc	sp
   58A3 CD EC 8F      [17] 1442 	call	_drawNewTrain
   58A6 F1            [10] 1443 	pop	af
   58A7 33            [ 6] 1444 	inc	sp
   58A8 18 13         [12] 1445 	jr	00155$
   58AA                    1446 00154$:
                           1447 ;src/game/game.c:341: trainList[nbTrainList].heading = 0;
   58AA 36 00         [10] 1448 	ld	(hl), #0x00
                           1449 ;src/game/game.c:342: drawNewTrain(nbTrainList, ulx, uly);
   58AC DD 66 FE      [19] 1450 	ld	h, -2 (ix)
   58AF DD 6E FD      [19] 1451 	ld	l, -3 (ix)
   58B2 E5            [11] 1452 	push	hl
   58B3 3A 22 83      [13] 1453 	ld	a, (_nbTrainList)
   58B6 F5            [11] 1454 	push	af
   58B7 33            [ 6] 1455 	inc	sp
   58B8 CD EC 8F      [17] 1456 	call	_drawNewTrain
   58BB F1            [10] 1457 	pop	af
   58BC 33            [ 6] 1458 	inc	sp
   58BD                    1459 00155$:
                           1460 ;src/game/game.c:346: nbTrainList++;
   58BD 21 22 83      [10] 1461 	ld	hl, #_nbTrainList+0
   58C0 34            [11] 1462 	inc	(hl)
                           1463 ;src/game/game.c:348: CURSOR_MODE=NONE;
   58C1 21 21 83      [10] 1464 	ld	hl,#_CURSOR_MODE + 0
   58C4 36 00         [10] 1465 	ld	(hl), #0x00
   58C6 18 22         [12] 1466 	jr	00170$
   58C8                    1467 00166$:
                           1468 ;src/game/game.c:352: else if(CURSOR_MODE>=T_SSNS)
   58C8 FD 21 21 83   [14] 1469 	ld	iy, #_CURSOR_MODE
   58CC FD 7E 00      [19] 1470 	ld	a, 0 (iy)
   58CF D6 02         [ 7] 1471 	sub	a, #0x02
   58D1 38 17         [12] 1472 	jr	C,00170$
                           1473 ;src/game/game.c:354: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+8;
   58D3 21 1D 74      [10] 1474 	ld	hl, #_p_world
   58D6 19            [11] 1475 	add	hl,de
   58D7 4D            [ 4] 1476 	ld	c, l
   58D8 44            [ 4] 1477 	ld	b, h
   58D9 FD 7E 00      [19] 1478 	ld	a, 0 (iy)
   58DC C6 08         [ 7] 1479 	add	a, #0x08
   58DE 02            [ 7] 1480 	ld	(bc), a
                           1481 ;src/game/game.c:357: if(CURSOR_MODE<=T_SLEW)
   58DF 3E 07         [ 7] 1482 	ld	a, #0x07
   58E1 FD 96 00      [19] 1483 	sub	a, 0 (iy)
   58E4 38 04         [12] 1484 	jr	C,00170$
                           1485 ;src/game/game.c:358: CURSOR_MODE=NONE;
   58E6 FD 36 00 00   [19] 1486 	ld	0 (iy), #0x00
   58EA                    1487 00170$:
                           1488 ;src/game/game.c:361: drawCursor(xCursor, yCursor);
   58EA DD 66 F8      [19] 1489 	ld	h, -8 (ix)
   58ED DD 6E FF      [19] 1490 	ld	l, -1 (ix)
   58F0 E5            [11] 1491 	push	hl
   58F1 CD 28 83      [17] 1492 	call	_drawCursor
   58F4 F1            [10] 1493 	pop	af
                           1494 ;src/game/game.c:364: for(i=0; i<14000; i++) {}
   58F5 01 B0 36      [10] 1495 	ld	bc, #0x36b0
   58F8                    1496 00217$:
   58F8 0B            [ 6] 1497 	dec	bc
   58F9 78            [ 4] 1498 	ld	a, b
   58FA B1            [ 4] 1499 	or	a,c
   58FB 20 FB         [12] 1500 	jr	NZ,00217$
   58FD                    1501 00191$:
                           1502 ;src/game/game.c:369: if(CURSOR_MODE == NONE)
   58FD 3A 21 83      [13] 1503 	ld	a,(#_CURSOR_MODE + 0)
   5900 B7            [ 4] 1504 	or	a, a
   5901 20 0E         [12] 1505 	jr	NZ,00195$
                           1506 ;src/game/game.c:371: cpct_waitVSYNC ();
   5903 CD B4 65      [17] 1507 	call	_cpct_waitVSYNC
                           1508 ;src/game/game.c:372: drawTrains(ulx, uly);
   5906 DD 66 FE      [19] 1509 	ld	h, -2 (ix)
   5909 DD 6E FD      [19] 1510 	ld	l, -3 (ix)
   590C E5            [11] 1511 	push	hl
   590D CD AA 93      [17] 1512 	call	_drawTrains
   5910 F1            [10] 1513 	pop	af
   5911                    1514 00195$:
                           1515 ;src/game/game.c:376: while(!exit);
   5911 DD 7E EC      [19] 1516 	ld	a, -20 (ix)
   5914 B7            [ 4] 1517 	or	a, a
   5915 CA 65 53      [10] 1518 	jp	Z, 00194$
   5918 DD F9         [10] 1519 	ld	sp, ix
   591A DD E1         [14] 1520 	pop	ix
   591C C9            [10] 1521 	ret
   591D                    1522 ___str_28:
   591D 52 65 61 6C 6C 79  1523 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   592A 00                 1524 	.db 0x00
   592B                    1525 ___str_29:
   592B 00                 1526 	.db 0x00
   592C                    1527 ___str_30:
   592C 50 72 65 73 73 20  1528 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   5951 00                 1529 	.db 0x00
   5952                    1530 ___str_31:
   5952 47 65 6E 65 72 61  1531 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   5965 00                 1532 	.db 0x00
                           1533 	.area _CODE
                           1534 	.area _INITIALIZER
                           1535 	.area _CABS (ABS)
