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
                             13 	.globl _drawWorld
                             14 	.globl _drawScrolls
                             15 	.globl _drawTile
                             16 	.globl _generateWorld
                             17 	.globl _drawCursor
                             18 	.globl _drawWindow
                             19 	.globl _drawMenu
                             20 	.globl _drawBoxM2
                             21 	.globl _putM2
                             22 	.globl _putM1
                             23 	.globl _cpct_getScreenPtr
                             24 	.globl _cpct_drawStringM2
                             25 	.globl _cpct_px2byteM1
                             26 	.globl _cpct_isKeyPressed
                             27 	.globl _cpct_scanKeyboard
                             28 	.globl _cpct_memset
                             29 	.globl _windowInfoTile
                             30 	.globl _menuStations
                             31 	.globl _menuTile
                             32 	.globl _game
                             33 ;--------------------------------------------------------
                             34 ; special function registers
                             35 ;--------------------------------------------------------
                             36 ;--------------------------------------------------------
                             37 ; ram data
                             38 ;--------------------------------------------------------
                             39 	.area _DATA
                             40 ;--------------------------------------------------------
                             41 ; ram data
                             42 ;--------------------------------------------------------
                             43 	.area _INITIALIZED
                             44 ;--------------------------------------------------------
                             45 ; absolute external ram data
                             46 ;--------------------------------------------------------
                             47 	.area _DABS (ABS)
                             48 ;--------------------------------------------------------
                             49 ; global & static initialisations
                             50 ;--------------------------------------------------------
                             51 	.area _HOME
                             52 	.area _GSINIT
                             53 	.area _GSFINAL
                             54 	.area _GSINIT
                             55 ;--------------------------------------------------------
                             56 ; Home
                             57 ;--------------------------------------------------------
                             58 	.area _HOME
                             59 	.area _HOME
                             60 ;--------------------------------------------------------
                             61 ; code
                             62 ;--------------------------------------------------------
                             63 	.area _CODE
                             64 ;src/game/game.c:3: void windowInfoTile(u8 x, u8 y)
                             65 ;	---------------------------------
                             66 ; Function windowInfoTile
                             67 ; ---------------------------------
   4ED4                      68 _windowInfoTile::
   4ED4 DD E5         [15]   69 	push	ix
   4ED6 DD 21 00 00   [14]   70 	ld	ix,#0
   4EDA DD 39         [15]   71 	add	ix,sp
   4EDC 21 F4 FF      [10]   72 	ld	hl, #-12
   4EDF 39            [11]   73 	add	hl, sp
   4EE0 F9            [ 6]   74 	ld	sp, hl
                             75 ;src/game/game.c:7: txtWindowInfoTile[1] = "";
   4EE1 21 00 00      [10]   76 	ld	hl, #0x0000
   4EE4 39            [11]   77 	add	hl, sp
   4EE5 4D            [ 4]   78 	ld	c,l
   4EE6 44            [ 4]   79 	ld	b,h
   4EE7 23            [ 6]   80 	inc	hl
   4EE8 23            [ 6]   81 	inc	hl
   4EE9 11 D4 4F      [10]   82 	ld	de, #___str_0+0
   4EEC 73            [ 7]   83 	ld	(hl), e
   4EED 23            [ 6]   84 	inc	hl
   4EEE 72            [ 7]   85 	ld	(hl), d
                             86 ;src/game/game.c:8: txtWindowInfoTile[2] = "Production: Nothing";
   4EEF 21 04 00      [10]   87 	ld	hl, #0x0004
   4EF2 09            [11]   88 	add	hl,bc
   4EF3 DD 75 FC      [19]   89 	ld	-4 (ix), l
   4EF6 DD 74 FD      [19]   90 	ld	-3 (ix), h
   4EF9 36 D5         [10]   91 	ld	(hl), #<(___str_1)
   4EFB 23            [ 6]   92 	inc	hl
   4EFC 36 4F         [10]   93 	ld	(hl), #>(___str_1)
                             94 ;src/game/game.c:9: txtWindowInfoTile[3] = "Demand: Nothing";
   4EFE 21 06 00      [10]   95 	ld	hl, #0x0006
   4F01 09            [11]   96 	add	hl,bc
   4F02 DD 75 FE      [19]   97 	ld	-2 (ix), l
   4F05 DD 74 FF      [19]   98 	ld	-1 (ix), h
   4F08 36 E9         [10]   99 	ld	(hl), #<(___str_2)
   4F0A 23            [ 6]  100 	inc	hl
   4F0B 36 4F         [10]  101 	ld	(hl), #>(___str_2)
                            102 ;src/game/game.c:11: switch(p_world[y*WIDTH+x])
   4F0D DD 5E 05      [19]  103 	ld	e,5 (ix)
   4F10 16 00         [ 7]  104 	ld	d,#0x00
   4F12 6B            [ 4]  105 	ld	l, e
   4F13 62            [ 4]  106 	ld	h, d
   4F14 29            [11]  107 	add	hl, hl
   4F15 29            [11]  108 	add	hl, hl
   4F16 19            [11]  109 	add	hl, de
   4F17 29            [11]  110 	add	hl, hl
   4F18 29            [11]  111 	add	hl, hl
   4F19 29            [11]  112 	add	hl, hl
   4F1A 29            [11]  113 	add	hl, hl
   4F1B DD 5E 04      [19]  114 	ld	e, 4 (ix)
   4F1E 16 00         [ 7]  115 	ld	d, #0x00
   4F20 19            [11]  116 	add	hl, de
   4F21 11 6E 67      [10]  117 	ld	de, #_p_world
   4F24 19            [11]  118 	add	hl, de
   4F25 5E            [ 7]  119 	ld	e, (hl)
   4F26 3E 09         [ 7]  120 	ld	a, #0x09
   4F28 93            [ 4]  121 	sub	a, e
   4F29 DA C0 4F      [10]  122 	jp	C, 00111$
   4F2C 16 00         [ 7]  123 	ld	d, #0x00
   4F2E 21 35 4F      [10]  124 	ld	hl, #00119$
   4F31 19            [11]  125 	add	hl, de
   4F32 19            [11]  126 	add	hl, de
   4F33 19            [11]  127 	add	hl, de
   4F34 E9            [ 4]  128 	jp	(hl)
   4F35                     129 00119$:
   4F35 C3 53 4F      [10]  130 	jp	00102$
   4F38 C3 53 4F      [10]  131 	jp	00102$
   4F3B C3 5C 4F      [10]  132 	jp	00105$
   4F3E C3 5C 4F      [10]  133 	jp	00105$
   4F41 C3 5C 4F      [10]  134 	jp	00105$
   4F44 C3 7B 4F      [10]  135 	jp	00107$
   4F47 C3 7B 4F      [10]  136 	jp	00107$
   4F4A C3 8F 4F      [10]  137 	jp	00108$
   4F4D C3 98 4F      [10]  138 	jp	00109$
   4F50 C3 A1 4F      [10]  139 	jp	00110$
                            140 ;src/game/game.c:14: case GRASS2:
   4F53                     141 00102$:
                            142 ;src/game/game.c:15: txtWindowInfoTile[0] = "Grassland";
   4F53 69            [ 4]  143 	ld	l, c
   4F54 60            [ 4]  144 	ld	h, b
   4F55 36 F9         [10]  145 	ld	(hl), #<(___str_3)
   4F57 23            [ 6]  146 	inc	hl
   4F58 36 4F         [10]  147 	ld	(hl), #>(___str_3)
                            148 ;src/game/game.c:16: break;
   4F5A 18 6B         [12]  149 	jr	00112$
                            150 ;src/game/game.c:19: case DWELLINGS3:
   4F5C                     151 00105$:
                            152 ;src/game/game.c:20: txtWindowInfoTile[0] = "City";
   4F5C 69            [ 4]  153 	ld	l, c
   4F5D 60            [ 4]  154 	ld	h, b
   4F5E 36 03         [10]  155 	ld	(hl), #<(___str_4)
   4F60 23            [ 6]  156 	inc	hl
   4F61 36 50         [10]  157 	ld	(hl), #>(___str_4)
                            158 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   4F63 DD 6E FC      [19]  159 	ld	l,-4 (ix)
   4F66 DD 66 FD      [19]  160 	ld	h,-3 (ix)
   4F69 36 08         [10]  161 	ld	(hl), #<(___str_5)
   4F6B 23            [ 6]  162 	inc	hl
   4F6C 36 50         [10]  163 	ld	(hl), #>(___str_5)
                            164 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4F6E DD 6E FE      [19]  165 	ld	l,-2 (ix)
   4F71 DD 66 FF      [19]  166 	ld	h,-1 (ix)
   4F74 36 25         [10]  167 	ld	(hl), #<(___str_6)
   4F76 23            [ 6]  168 	inc	hl
   4F77 36 50         [10]  169 	ld	(hl), #>(___str_6)
                            170 ;src/game/game.c:23: break;
   4F79 18 4C         [12]  171 	jr	00112$
                            172 ;src/game/game.c:25: case FARM2:
   4F7B                     173 00107$:
                            174 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   4F7B 69            [ 4]  175 	ld	l, c
   4F7C 60            [ 4]  176 	ld	h, b
   4F7D 36 4A         [10]  177 	ld	(hl), #<(___str_7)
   4F7F 23            [ 6]  178 	inc	hl
   4F80 36 50         [10]  179 	ld	(hl), #>(___str_7)
                            180 ;src/game/game.c:27: txtWindowInfoTile[2] = "Production: Cereal";
   4F82 DD 6E FC      [19]  181 	ld	l,-4 (ix)
   4F85 DD 66 FD      [19]  182 	ld	h,-3 (ix)
   4F88 36 4F         [10]  183 	ld	(hl), #<(___str_8)
   4F8A 23            [ 6]  184 	inc	hl
   4F8B 36 50         [10]  185 	ld	(hl), #>(___str_8)
                            186 ;src/game/game.c:28: break;
   4F8D 18 38         [12]  187 	jr	00112$
                            188 ;src/game/game.c:29: case WATER:
   4F8F                     189 00108$:
                            190 ;src/game/game.c:30: txtWindowInfoTile[0] = "Water";
   4F8F 69            [ 4]  191 	ld	l, c
   4F90 60            [ 4]  192 	ld	h, b
   4F91 36 62         [10]  193 	ld	(hl), #<(___str_9)
   4F93 23            [ 6]  194 	inc	hl
   4F94 36 50         [10]  195 	ld	(hl), #>(___str_9)
                            196 ;src/game/game.c:31: break;
   4F96 18 2F         [12]  197 	jr	00112$
                            198 ;src/game/game.c:32: case FOREST:
   4F98                     199 00109$:
                            200 ;src/game/game.c:33: txtWindowInfoTile[0] = "Forest";
   4F98 69            [ 4]  201 	ld	l, c
   4F99 60            [ 4]  202 	ld	h, b
   4F9A 36 68         [10]  203 	ld	(hl), #<(___str_10)
   4F9C 23            [ 6]  204 	inc	hl
   4F9D 36 50         [10]  205 	ld	(hl), #>(___str_10)
                            206 ;src/game/game.c:34: break;
   4F9F 18 26         [12]  207 	jr	00112$
                            208 ;src/game/game.c:35: case LIVESTOCK:
   4FA1                     209 00110$:
                            210 ;src/game/game.c:36: txtWindowInfoTile[0] = "Livestock farming";
   4FA1 69            [ 4]  211 	ld	l, c
   4FA2 60            [ 4]  212 	ld	h, b
   4FA3 36 6F         [10]  213 	ld	(hl), #<(___str_11)
   4FA5 23            [ 6]  214 	inc	hl
   4FA6 36 50         [10]  215 	ld	(hl), #>(___str_11)
                            216 ;src/game/game.c:37: txtWindowInfoTile[2] = "Production: Livestock, wool";
   4FA8 DD 6E FC      [19]  217 	ld	l,-4 (ix)
   4FAB DD 66 FD      [19]  218 	ld	h,-3 (ix)
   4FAE 36 81         [10]  219 	ld	(hl), #<(___str_12)
   4FB0 23            [ 6]  220 	inc	hl
   4FB1 36 50         [10]  221 	ld	(hl), #>(___str_12)
                            222 ;src/game/game.c:38: txtWindowInfoTile[3] = "Demand: Cereal";
   4FB3 DD 6E FE      [19]  223 	ld	l,-2 (ix)
   4FB6 DD 66 FF      [19]  224 	ld	h,-1 (ix)
   4FB9 36 9D         [10]  225 	ld	(hl), #<(___str_13)
   4FBB 23            [ 6]  226 	inc	hl
   4FBC 36 50         [10]  227 	ld	(hl), #>(___str_13)
                            228 ;src/game/game.c:39: break;
   4FBE 18 07         [12]  229 	jr	00112$
                            230 ;src/game/game.c:40: default:
   4FC0                     231 00111$:
                            232 ;src/game/game.c:41: txtWindowInfoTile[0] = "Not yet implemented";
   4FC0 69            [ 4]  233 	ld	l, c
   4FC1 60            [ 4]  234 	ld	h, b
   4FC2 36 AC         [10]  235 	ld	(hl), #<(___str_14)
   4FC4 23            [ 6]  236 	inc	hl
   4FC5 36 50         [10]  237 	ld	(hl), #>(___str_14)
                            238 ;src/game/game.c:42: }
   4FC7                     239 00112$:
                            240 ;src/game/game.c:44: drawWindow(txtWindowInfoTile, 4, 0);
   4FC7 21 04 00      [10]  241 	ld	hl, #0x0004
   4FCA E5            [11]  242 	push	hl
   4FCB C5            [11]  243 	push	bc
   4FCC CD 2D 46      [17]  244 	call	_drawWindow
   4FCF DD F9         [10]  245 	ld	sp,ix
   4FD1 DD E1         [14]  246 	pop	ix
   4FD3 C9            [10]  247 	ret
   4FD4                     248 ___str_0:
   4FD4 00                  249 	.db 0x00
   4FD5                     250 ___str_1:
   4FD5 50 72 6F 64 75 63   251 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   4FE8 00                  252 	.db 0x00
   4FE9                     253 ___str_2:
   4FE9 44 65 6D 61 6E 64   254 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   4FF8 00                  255 	.db 0x00
   4FF9                     256 ___str_3:
   4FF9 47 72 61 73 73 6C   257 	.ascii "Grassland"
        61 6E 64
   5002 00                  258 	.db 0x00
   5003                     259 ___str_4:
   5003 43 69 74 79         260 	.ascii "City"
   5007 00                  261 	.db 0x00
   5008                     262 ___str_5:
   5008 50 72 6F 64 75 63   263 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   5024 00                  264 	.db 0x00
   5025                     265 ___str_6:
   5025 44 65 6D 61 6E 64   266 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   5049 00                  267 	.db 0x00
   504A                     268 ___str_7:
   504A 46 61 72 6D         269 	.ascii "Farm"
   504E 00                  270 	.db 0x00
   504F                     271 ___str_8:
   504F 50 72 6F 64 75 63   272 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   5061 00                  273 	.db 0x00
   5062                     274 ___str_9:
   5062 57 61 74 65 72      275 	.ascii "Water"
   5067 00                  276 	.db 0x00
   5068                     277 ___str_10:
   5068 46 6F 72 65 73 74   278 	.ascii "Forest"
   506E 00                  279 	.db 0x00
   506F                     280 ___str_11:
   506F 4C 69 76 65 73 74   281 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   5080 00                  282 	.db 0x00
   5081                     283 ___str_12:
   5081 50 72 6F 64 75 63   284 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   509C 00                  285 	.db 0x00
   509D                     286 ___str_13:
   509D 44 65 6D 61 6E 64   287 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   50AB 00                  288 	.db 0x00
   50AC                     289 ___str_14:
   50AC 4E 6F 74 20 79 65   290 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   50BF 00                  291 	.db 0x00
                            292 ;src/game/game.c:47: void menuStations()
                            293 ;	---------------------------------
                            294 ; Function menuStations
                            295 ; ---------------------------------
   50C0                     296 _menuStations::
   50C0 DD E5         [15]  297 	push	ix
   50C2 DD 21 00 00   [14]  298 	ld	ix,#0
   50C6 DD 39         [15]  299 	add	ix,sp
   50C8 21 FA FF      [10]  300 	ld	hl, #-6
   50CB 39            [11]  301 	add	hl, sp
   50CC F9            [ 6]  302 	ld	sp, hl
                            303 ;src/game/game.c:51: const char *txtMenuSizeStation[] = { 
   50CD 21 00 00      [10]  304 	ld	hl, #0x0000
   50D0 39            [11]  305 	add	hl, sp
   50D1 4D            [ 4]  306 	ld	c,l
   50D2 44            [ 4]  307 	ld	b,h
   50D3 36 1C         [10]  308 	ld	(hl), #<(___str_15)
   50D5 23            [ 6]  309 	inc	hl
   50D6 36 51         [10]  310 	ld	(hl), #>(___str_15)
   50D8 69            [ 4]  311 	ld	l, c
   50D9 60            [ 4]  312 	ld	h, b
   50DA 23            [ 6]  313 	inc	hl
   50DB 23            [ 6]  314 	inc	hl
   50DC 11 22 51      [10]  315 	ld	de, #___str_16+0
   50DF 73            [ 7]  316 	ld	(hl), e
   50E0 23            [ 6]  317 	inc	hl
   50E1 72            [ 7]  318 	ld	(hl), d
   50E2 21 04 00      [10]  319 	ld	hl, #0x0004
   50E5 09            [11]  320 	add	hl, bc
   50E6 11 29 51      [10]  321 	ld	de, #___str_17+0
   50E9 73            [ 7]  322 	ld	(hl), e
   50EA 23            [ 6]  323 	inc	hl
   50EB 72            [ 7]  324 	ld	(hl), d
                            325 ;src/game/game.c:57: result = drawMenu(txtMenuSizeStation,3);
   50EC 3E 03         [ 7]  326 	ld	a, #0x03
   50EE F5            [11]  327 	push	af
   50EF 33            [ 6]  328 	inc	sp
   50F0 C5            [11]  329 	push	bc
   50F1 CD 2F 45      [17]  330 	call	_drawMenu
   50F4 F1            [10]  331 	pop	af
   50F5 33            [ 6]  332 	inc	sp
   50F6 7D            [ 4]  333 	ld	a, l
                            334 ;src/game/game.c:59: switch(result)
   50F7 B7            [ 4]  335 	or	a, a
   50F8 28 0A         [12]  336 	jr	Z,00101$
   50FA FE 01         [ 7]  337 	cp	a, #0x01
   50FC 28 0D         [12]  338 	jr	Z,00102$
   50FE D6 02         [ 7]  339 	sub	a, #0x02
   5100 28 10         [12]  340 	jr	Z,00103$
   5102 18 13         [12]  341 	jr	00105$
                            342 ;src/game/game.c:61: case 0:
   5104                     343 00101$:
                            344 ;src/game/game.c:62: CURSOR_MODE=T_SSEW;
   5104 21 72 76      [10]  345 	ld	hl,#_CURSOR_MODE + 0
   5107 36 03         [10]  346 	ld	(hl), #0x03
                            347 ;src/game/game.c:63: break;
   5109 18 0C         [12]  348 	jr	00105$
                            349 ;src/game/game.c:65: case 1:
   510B                     350 00102$:
                            351 ;src/game/game.c:66: CURSOR_MODE=T_SMEW;
   510B 21 72 76      [10]  352 	ld	hl,#_CURSOR_MODE + 0
   510E 36 05         [10]  353 	ld	(hl), #0x05
                            354 ;src/game/game.c:67: break;
   5110 18 05         [12]  355 	jr	00105$
                            356 ;src/game/game.c:69: case 2:
   5112                     357 00103$:
                            358 ;src/game/game.c:70: CURSOR_MODE=T_SLEW;
   5112 21 72 76      [10]  359 	ld	hl,#_CURSOR_MODE + 0
   5115 36 07         [10]  360 	ld	(hl), #0x07
                            361 ;src/game/game.c:72: }
   5117                     362 00105$:
   5117 DD F9         [10]  363 	ld	sp, ix
   5119 DD E1         [14]  364 	pop	ix
   511B C9            [10]  365 	ret
   511C                     366 ___str_15:
   511C 53 6D 61 6C 6C      367 	.ascii "Small"
   5121 00                  368 	.db 0x00
   5122                     369 ___str_16:
   5122 4D 65 64 69 75 6D   370 	.ascii "Medium"
   5128 00                  371 	.db 0x00
   5129                     372 ___str_17:
   5129 4C 61 72 67 65      373 	.ascii "Large"
   512E 00                  374 	.db 0x00
                            375 ;src/game/game.c:75: void menuTile(u8 x, u8 y)
                            376 ;	---------------------------------
                            377 ; Function menuTile
                            378 ; ---------------------------------
   512F                     379 _menuTile::
   512F DD E5         [15]  380 	push	ix
   5131 DD 21 00 00   [14]  381 	ld	ix,#0
   5135 DD 39         [15]  382 	add	ix,sp
   5137 21 E6 FF      [10]  383 	ld	hl, #-26
   513A 39            [11]  384 	add	hl, sp
   513B F9            [ 6]  385 	ld	sp, hl
                            386 ;src/game/game.c:79: const char *txtMenuTile[] = { 
   513C 21 06 00      [10]  387 	ld	hl, #0x0006
   513F 39            [11]  388 	add	hl, sp
   5140 4D            [ 4]  389 	ld	c,l
   5141 44            [ 4]  390 	ld	b,h
   5142 36 53         [10]  391 	ld	(hl), #<(___str_18)
   5144 23            [ 6]  392 	inc	hl
   5145 36 52         [10]  393 	ld	(hl), #>(___str_18)
   5147 69            [ 4]  394 	ld	l, c
   5148 60            [ 4]  395 	ld	h, b
   5149 23            [ 6]  396 	inc	hl
   514A 23            [ 6]  397 	inc	hl
   514B 11 63 52      [10]  398 	ld	de, #___str_19+0
   514E 73            [ 7]  399 	ld	(hl), e
   514F 23            [ 6]  400 	inc	hl
   5150 72            [ 7]  401 	ld	(hl), d
   5151 21 04 00      [10]  402 	ld	hl, #0x0004
   5154 09            [11]  403 	add	hl, bc
   5155 11 73 52      [10]  404 	ld	de, #___str_20+0
   5158 73            [ 7]  405 	ld	(hl), e
   5159 23            [ 6]  406 	inc	hl
   515A 72            [ 7]  407 	ld	(hl), d
   515B 21 06 00      [10]  408 	ld	hl, #0x0006
   515E 09            [11]  409 	add	hl, bc
   515F 11 83 52      [10]  410 	ld	de, #___str_21+0
   5162 73            [ 7]  411 	ld	(hl), e
   5163 23            [ 6]  412 	inc	hl
   5164 72            [ 7]  413 	ld	(hl), d
   5165 21 08 00      [10]  414 	ld	hl, #0x0008
   5168 09            [11]  415 	add	hl, bc
   5169 11 8B 52      [10]  416 	ld	de, #___str_22+0
   516C 73            [ 7]  417 	ld	(hl), e
   516D 23            [ 6]  418 	inc	hl
   516E 72            [ 7]  419 	ld	(hl), d
   516F 21 0A 00      [10]  420 	ld	hl, #0x000a
   5172 09            [11]  421 	add	hl, bc
   5173 11 9C 52      [10]  422 	ld	de, #___str_23+0
   5176 73            [ 7]  423 	ld	(hl), e
   5177 23            [ 6]  424 	inc	hl
   5178 72            [ 7]  425 	ld	(hl), d
   5179 21 0C 00      [10]  426 	ld	hl, #0x000c
   517C 09            [11]  427 	add	hl, bc
   517D 11 A7 52      [10]  428 	ld	de, #___str_24+0
   5180 73            [ 7]  429 	ld	(hl), e
   5181 23            [ 6]  430 	inc	hl
   5182 72            [ 7]  431 	ld	(hl), d
                            432 ;src/game/game.c:89: const char *txtWindowDestroy[] = { 
   5183 21 00 00      [10]  433 	ld	hl, #0x0000
   5186 39            [11]  434 	add	hl, sp
   5187 DD 75 FA      [19]  435 	ld	-6 (ix), l
   518A DD 74 FB      [19]  436 	ld	-5 (ix), h
   518D 36 AE         [10]  437 	ld	(hl), #<(___str_25)
   518F 23            [ 6]  438 	inc	hl
   5190 36 52         [10]  439 	ld	(hl), #>(___str_25)
   5192 DD 6E FA      [19]  440 	ld	l,-6 (ix)
   5195 DD 66 FB      [19]  441 	ld	h,-5 (ix)
   5198 23            [ 6]  442 	inc	hl
   5199 23            [ 6]  443 	inc	hl
   519A 11 D1 52      [10]  444 	ld	de, #___str_26+0
   519D 73            [ 7]  445 	ld	(hl), e
   519E 23            [ 6]  446 	inc	hl
   519F 72            [ 7]  447 	ld	(hl), d
   51A0 DD 7E FA      [19]  448 	ld	a, -6 (ix)
   51A3 C6 04         [ 7]  449 	add	a, #0x04
   51A5 6F            [ 4]  450 	ld	l, a
   51A6 DD 7E FB      [19]  451 	ld	a, -5 (ix)
   51A9 CE 00         [ 7]  452 	adc	a, #0x00
   51AB 67            [ 4]  453 	ld	h, a
   51AC 11 D2 52      [10]  454 	ld	de, #___str_27+0
   51AF 73            [ 7]  455 	ld	(hl), e
   51B0 23            [ 6]  456 	inc	hl
   51B1 72            [ 7]  457 	ld	(hl), d
                            458 ;src/game/game.c:96: putM2();
   51B2 C5            [11]  459 	push	bc
   51B3 CD 44 41      [17]  460 	call	_putM2
   51B6 C1            [10]  461 	pop	bc
                            462 ;src/game/game.c:98: do{
   51B7 DD 5E 05      [19]  463 	ld	e,5 (ix)
   51BA 16 00         [ 7]  464 	ld	d,#0x00
   51BC 6B            [ 4]  465 	ld	l, e
   51BD 62            [ 4]  466 	ld	h, d
   51BE 29            [11]  467 	add	hl, hl
   51BF 29            [11]  468 	add	hl, hl
   51C0 19            [11]  469 	add	hl, de
   51C1 29            [11]  470 	add	hl, hl
   51C2 29            [11]  471 	add	hl, hl
   51C3 29            [11]  472 	add	hl, hl
   51C4 29            [11]  473 	add	hl, hl
   51C5 DD 75 FE      [19]  474 	ld	-2 (ix), l
   51C8 DD 74 FF      [19]  475 	ld	-1 (ix), h
   51CB DD 71 FC      [19]  476 	ld	-4 (ix), c
   51CE DD 70 FD      [19]  477 	ld	-3 (ix), b
   51D1                     478 00117$:
                            479 ;src/game/game.c:99: menuChoice = drawMenu(txtMenuTile,7);
   51D1 DD 4E FC      [19]  480 	ld	c,-4 (ix)
   51D4 DD 46 FD      [19]  481 	ld	b,-3 (ix)
   51D7 3E 07         [ 7]  482 	ld	a, #0x07
   51D9 F5            [11]  483 	push	af
   51DA 33            [ 6]  484 	inc	sp
   51DB C5            [11]  485 	push	bc
   51DC CD 2F 45      [17]  486 	call	_drawMenu
   51DF F1            [10]  487 	pop	af
   51E0 33            [ 6]  488 	inc	sp
   51E1 4D            [ 4]  489 	ld	c, l
                            490 ;src/game/game.c:101: if(menuChoice==0)
   51E2 79            [ 4]  491 	ld	a, c
   51E3 B7            [ 4]  492 	or	a, a
   51E4 20 0F         [12]  493 	jr	NZ,00115$
                            494 ;src/game/game.c:102: windowInfoTile(x, y);
   51E6 C5            [11]  495 	push	bc
   51E7 DD 66 05      [19]  496 	ld	h, 5 (ix)
   51EA DD 6E 04      [19]  497 	ld	l, 4 (ix)
   51ED E5            [11]  498 	push	hl
   51EE CD D4 4E      [17]  499 	call	_windowInfoTile
   51F1 F1            [10]  500 	pop	af
   51F2 C1            [10]  501 	pop	bc
   51F3 18 51         [12]  502 	jr	00118$
   51F5                     503 00115$:
                            504 ;src/game/game.c:103: else if(menuChoice==1)
   51F5 79            [ 4]  505 	ld	a, c
   51F6 3D            [ 4]  506 	dec	a
   51F7 20 09         [12]  507 	jr	NZ,00112$
                            508 ;src/game/game.c:105: CURSOR_MODE=T_REW;
   51F9 21 72 76      [10]  509 	ld	hl,#_CURSOR_MODE + 0
   51FC 36 08         [10]  510 	ld	(hl), #0x08
                            511 ;src/game/game.c:106: menuChoice=6;
   51FE 0E 06         [ 7]  512 	ld	c, #0x06
   5200 18 44         [12]  513 	jr	00118$
   5202                     514 00112$:
                            515 ;src/game/game.c:108: else if(menuChoice==2)
   5202 79            [ 4]  516 	ld	a, c
   5203 D6 02         [ 7]  517 	sub	a, #0x02
   5205 20 07         [12]  518 	jr	NZ,00109$
                            519 ;src/game/game.c:110: menuStations();
   5207 CD C0 50      [17]  520 	call	_menuStations
                            521 ;src/game/game.c:111: menuChoice=6;
   520A 0E 06         [ 7]  522 	ld	c, #0x06
   520C 18 38         [12]  523 	jr	00118$
   520E                     524 00109$:
                            525 ;src/game/game.c:113: else if(menuChoice==3)
   520E 79            [ 4]  526 	ld	a, c
   520F D6 03         [ 7]  527 	sub	a, #0x03
   5211 20 29         [12]  528 	jr	NZ,00106$
                            529 ;src/game/game.c:115: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   5213 DD 4E FA      [19]  530 	ld	c,-6 (ix)
   5216 DD 46 FB      [19]  531 	ld	b,-5 (ix)
   5219 21 03 01      [10]  532 	ld	hl, #0x0103
   521C E5            [11]  533 	push	hl
   521D C5            [11]  534 	push	bc
   521E CD 2D 46      [17]  535 	call	_drawWindow
   5221 F1            [10]  536 	pop	af
   5222 F1            [10]  537 	pop	af
   5223 2D            [ 4]  538 	dec	l
   5224 20 12         [12]  539 	jr	NZ,00102$
                            540 ;src/game/game.c:116: p_world[x+y*WIDTH] = GRASS1;
   5226 DD 4E 04      [19]  541 	ld	c, 4 (ix)
   5229 06 00         [ 7]  542 	ld	b, #0x00
   522B DD 6E FE      [19]  543 	ld	l,-2 (ix)
   522E DD 66 FF      [19]  544 	ld	h,-1 (ix)
   5231 09            [11]  545 	add	hl, bc
   5232 11 6E 67      [10]  546 	ld	de, #_p_world
   5235 19            [11]  547 	add	hl, de
   5236 36 00         [10]  548 	ld	(hl), #0x00
   5238                     549 00102$:
                            550 ;src/game/game.c:118: menuChoice=6;
   5238 0E 06         [ 7]  551 	ld	c, #0x06
   523A 18 0A         [12]  552 	jr	00118$
   523C                     553 00106$:
                            554 ;src/game/game.c:120: else if(menuChoice==4)
   523C 79            [ 4]  555 	ld	a, c
   523D D6 04         [ 7]  556 	sub	a, #0x04
   523F 20 05         [12]  557 	jr	NZ,00118$
                            558 ;src/game/game.c:122: trainManagement();
   5241 CD F9 58      [17]  559 	call	_trainManagement
                            560 ;src/game/game.c:123: menuChoice=6;
   5244 0E 06         [ 7]  561 	ld	c, #0x06
   5246                     562 00118$:
                            563 ;src/game/game.c:128: while(menuChoice!=6);
   5246 79            [ 4]  564 	ld	a, c
   5247 D6 06         [ 7]  565 	sub	a, #0x06
   5249 20 86         [12]  566 	jr	NZ,00117$
                            567 ;src/game/game.c:130: putM1();
   524B CD 33 41      [17]  568 	call	_putM1
   524E DD F9         [10]  569 	ld	sp, ix
   5250 DD E1         [14]  570 	pop	ix
   5252 C9            [10]  571 	ret
   5253                     572 ___str_18:
   5253 41 62 6F 75 74 20   573 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   5262 00                  574 	.db 0x00
   5263                     575 ___str_19:
   5263 42 75 69 6C 64 20   576 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   5272 00                  577 	.db 0x00
   5273                     578 ___str_20:
   5273 42 75 69 6C 64 20   579 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   5282 00                  580 	.db 0x00
   5283                     581 ___str_21:
   5283 44 65 73 74 72 6F   582 	.ascii "Destroy"
        79
   528A 00                  583 	.db 0x00
   528B                     584 ___str_22:
   528B 54 72 61 69 6E 20   585 	.ascii "Train management"
        6D 61 6E 61 67 65
        6D 65 6E 74
   529B 00                  586 	.db 0x00
   529C                     587 ___str_23:
   529C 41 63 63 6F 75 6E   588 	.ascii "Accounting"
        74 69 6E 67
   52A6 00                  589 	.db 0x00
   52A7                     590 ___str_24:
   52A7 52 65 73 75 6D 65   591 	.ascii "Resume"
   52AD 00                  592 	.db 0x00
   52AE                     593 ___str_25:
   52AE 44 65 73 74 72 6F   594 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   52D0 00                  595 	.db 0x00
   52D1                     596 ___str_26:
   52D1 00                  597 	.db 0x00
   52D2                     598 ___str_27:
   52D2 43 6F 6E 74 69 6E   599 	.ascii "Continue ?"
        75 65 20 3F
   52DC 00                  600 	.db 0x00
                            601 ;src/game/game.c:134: void game()
                            602 ;	---------------------------------
                            603 ; Function game
                            604 ; ---------------------------------
   52DD                     605 _game::
   52DD DD E5         [15]  606 	push	ix
   52DF DD 21 00 00   [14]  607 	ld	ix,#0
   52E3 DD 39         [15]  608 	add	ix,sp
   52E5 21 E6 FF      [10]  609 	ld	hl, #-26
   52E8 39            [11]  610 	add	hl, sp
   52E9 F9            [ 6]  611 	ld	sp, hl
                            612 ;src/game/game.c:137: int ulx = 0;
   52EA DD 36 F5 00   [19]  613 	ld	-11 (ix), #0x00
   52EE DD 36 F6 00   [19]  614 	ld	-10 (ix), #0x00
                            615 ;src/game/game.c:138: int uly = 0;
   52F2 DD 36 F3 00   [19]  616 	ld	-13 (ix), #0x00
   52F6 DD 36 F4 00   [19]  617 	ld	-12 (ix), #0x00
                            618 ;src/game/game.c:139: int xCursor = 10;
   52FA DD 36 EC 0A   [19]  619 	ld	-20 (ix), #0x0a
   52FE DD 36 ED 00   [19]  620 	ld	-19 (ix), #0x00
                            621 ;src/game/game.c:140: int yCursor = 6;
   5302 DD 36 F1 06   [19]  622 	ld	-15 (ix), #0x06
   5306 DD 36 F2 00   [19]  623 	ld	-14 (ix), #0x00
                            624 ;src/game/game.c:142: u8 exit=0;
   530A DD 36 EE 00   [19]  625 	ld	-18 (ix), #0x00
                            626 ;src/game/game.c:144: nbTrainList=0;
   530E 21 73 76      [10]  627 	ld	hl,#_nbTrainList + 0
   5311 36 00         [10]  628 	ld	(hl), #0x00
                            629 ;src/game/game.c:146: drawBoxM2(50, 50);
   5313 21 32 00      [10]  630 	ld	hl, #0x0032
   5316 E5            [11]  631 	push	hl
   5317 2E 32         [ 7]  632 	ld	l, #0x32
   5319 E5            [11]  633 	push	hl
   531A CD 72 42      [17]  634 	call	_drawBoxM2
   531D F1            [10]  635 	pop	af
                            636 ;src/game/game.c:147: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   531E 21 20 5F      [10]  637 	ld	hl, #0x5f20
   5321 E3            [19]  638 	ex	(sp),hl
   5322 21 00 C0      [10]  639 	ld	hl, #0xc000
   5325 E5            [11]  640 	push	hl
   5326 CD B6 65      [17]  641 	call	_cpct_getScreenPtr
                            642 ;src/game/game.c:148: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   5329 01 E5 58      [10]  643 	ld	bc, #___str_31+0
   532C AF            [ 4]  644 	xor	a, a
   532D F5            [11]  645 	push	af
   532E 33            [ 6]  646 	inc	sp
   532F E5            [11]  647 	push	hl
   5330 C5            [11]  648 	push	bc
   5331 CD 95 60      [17]  649 	call	_cpct_drawStringM2
   5334 F1            [10]  650 	pop	af
   5335 F1            [10]  651 	pop	af
   5336 33            [ 6]  652 	inc	sp
                            653 ;src/game/game.c:150: generateWorld();
   5337 CD 9B 79      [17]  654 	call	_generateWorld
                            655 ;src/game/game.c:152: putM1();
   533A CD 33 41      [17]  656 	call	_putM1
                            657 ;src/game/game.c:153: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   533D 21 00 00      [10]  658 	ld	hl, #0x0000
   5340 E5            [11]  659 	push	hl
   5341 2E 00         [ 7]  660 	ld	l, #0x00
   5343 E5            [11]  661 	push	hl
   5344 CD 4C 64      [17]  662 	call	_cpct_px2byteM1
   5347 F1            [10]  663 	pop	af
   5348 F1            [10]  664 	pop	af
   5349 45            [ 4]  665 	ld	b, l
   534A 21 00 40      [10]  666 	ld	hl, #0x4000
   534D E5            [11]  667 	push	hl
   534E C5            [11]  668 	push	bc
   534F 33            [ 6]  669 	inc	sp
   5350 26 C0         [ 7]  670 	ld	h, #0xc0
   5352 E5            [11]  671 	push	hl
   5353 CD 3E 64      [17]  672 	call	_cpct_memset
                            673 ;src/game/game.c:154: drawWorld(ulx, uly);
   5356 21 00 00      [10]  674 	ld	hl, #0x0000
   5359 E5            [11]  675 	push	hl
   535A CD CF 7F      [17]  676 	call	_drawWorld
   535D F1            [10]  677 	pop	af
                            678 ;src/game/game.c:157: do{
   535E                     679 00192$:
                            680 ;src/game/game.c:158: cpct_scanKeyboard(); 
   535E CD D6 65      [17]  681 	call	_cpct_scanKeyboard
                            682 ;src/game/game.c:160: if ( cpct_isKeyPressed(Key_CursorUp) )
   5361 21 00 01      [10]  683 	ld	hl, #0x0100
   5364 CD 5E 60      [17]  684 	call	_cpct_isKeyPressed
   5367 DD 75 F7      [19]  685 	ld	-9 (ix), l
                            686 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   536A DD 7E F1      [19]  687 	ld	a, -15 (ix)
   536D DD 77 F8      [19]  688 	ld	-8 (ix), a
   5370 DD 7E EC      [19]  689 	ld	a, -20 (ix)
   5373 DD 77 FF      [19]  690 	ld	-1 (ix), a
   5376 DD 7E F3      [19]  691 	ld	a, -13 (ix)
   5379 DD 77 FE      [19]  692 	ld	-2 (ix), a
   537C DD 7E F5      [19]  693 	ld	a, -11 (ix)
   537F DD 77 FD      [19]  694 	ld	-3 (ix), a
                            695 ;src/game/game.c:160: if ( cpct_isKeyPressed(Key_CursorUp) )
   5382 DD 7E F7      [19]  696 	ld	a, -9 (ix)
   5385 B7            [ 4]  697 	or	a, a
   5386 28 79         [12]  698 	jr	Z,00190$
                            699 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   5388 DD 66 F8      [19]  700 	ld	h, -8 (ix)
   538B DD 6E FF      [19]  701 	ld	l, -1 (ix)
   538E E5            [11]  702 	push	hl
   538F DD 66 FE      [19]  703 	ld	h, -2 (ix)
   5392 DD 6E FD      [19]  704 	ld	l, -3 (ix)
   5395 E5            [11]  705 	push	hl
   5396 CD 0D 7D      [17]  706 	call	_drawTile
   5399 F1            [10]  707 	pop	af
   539A F1            [10]  708 	pop	af
                            709 ;src/game/game.c:164: yCursor-=1;
   539B DD 6E F1      [19]  710 	ld	l,-15 (ix)
   539E DD 66 F2      [19]  711 	ld	h,-14 (ix)
   53A1 2B            [ 6]  712 	dec	hl
   53A2 DD 75 F1      [19]  713 	ld	-15 (ix), l
   53A5 DD 74 F2      [19]  714 	ld	-14 (ix), h
                            715 ;src/game/game.c:167: if(yCursor<0)
   53A8 DD CB F2 7E   [20]  716 	bit	7, -14 (ix)
   53AC 28 35         [12]  717 	jr	Z,00221$
                            718 ;src/game/game.c:169: yCursor=0;
   53AE DD 36 F1 00   [19]  719 	ld	-15 (ix), #0x00
   53B2 DD 36 F2 00   [19]  720 	ld	-14 (ix), #0x00
                            721 ;src/game/game.c:172: if(uly>0)
   53B6 AF            [ 4]  722 	xor	a, a
   53B7 DD BE F3      [19]  723 	cp	a, -13 (ix)
   53BA DD 9E F4      [19]  724 	sbc	a, -12 (ix)
   53BD E2 C2 53      [10]  725 	jp	PO, 00418$
   53C0 EE 80         [ 7]  726 	xor	a, #0x80
   53C2                     727 00418$:
   53C2 F2 E3 53      [10]  728 	jp	P, 00221$
                            729 ;src/game/game.c:174: uly-=1;
   53C5 DD 6E F3      [19]  730 	ld	l,-13 (ix)
   53C8 DD 66 F4      [19]  731 	ld	h,-12 (ix)
   53CB 2B            [ 6]  732 	dec	hl
   53CC DD 75 F3      [19]  733 	ld	-13 (ix), l
   53CF DD 74 F4      [19]  734 	ld	-12 (ix), h
                            735 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   53D2 DD 7E F3      [19]  736 	ld	a, -13 (ix)
                            737 ;src/game/game.c:175: drawWorld(ulx, uly);
   53D5 DD 77 FE      [19]  738 	ld	-2 (ix), a
   53D8 F5            [11]  739 	push	af
   53D9 33            [ 6]  740 	inc	sp
   53DA DD 7E FD      [19]  741 	ld	a, -3 (ix)
   53DD F5            [11]  742 	push	af
   53DE 33            [ 6]  743 	inc	sp
   53DF CD CF 7F      [17]  744 	call	_drawWorld
   53E2 F1            [10]  745 	pop	af
                            746 ;src/game/game.c:180: for(i=0; i<5000; i++) {}
   53E3                     747 00221$:
   53E3 DD 36 EF 88   [19]  748 	ld	-17 (ix), #0x88
   53E7 DD 36 F0 13   [19]  749 	ld	-16 (ix), #0x13
   53EB                     750 00197$:
   53EB DD 6E EF      [19]  751 	ld	l,-17 (ix)
   53EE DD 66 F0      [19]  752 	ld	h,-16 (ix)
   53F1 2B            [ 6]  753 	dec	hl
   53F2 DD 75 EF      [19]  754 	ld	-17 (ix), l
   53F5 DD 74 F0      [19]  755 	ld	-16 (ix), h
   53F8 7C            [ 4]  756 	ld	a, h
   53F9 DD B6 EF      [19]  757 	or	a,-17 (ix)
   53FC 20 ED         [12]  758 	jr	NZ,00197$
   53FE C3 7F 58      [10]  759 	jp	00191$
   5401                     760 00190$:
                            761 ;src/game/game.c:183: else if ( cpct_isKeyPressed(Key_CursorDown) )
   5401 21 00 04      [10]  762 	ld	hl, #0x0400
   5404 CD 5E 60      [17]  763 	call	_cpct_isKeyPressed
   5407 7D            [ 4]  764 	ld	a, l
   5408 B7            [ 4]  765 	or	a, a
   5409 CA 87 54      [10]  766 	jp	Z, 00187$
                            767 ;src/game/game.c:185: drawTile(ulx, uly, xCursor, yCursor);
   540C DD 66 F8      [19]  768 	ld	h, -8 (ix)
   540F DD 6E FF      [19]  769 	ld	l, -1 (ix)
   5412 E5            [11]  770 	push	hl
   5413 DD 66 FE      [19]  771 	ld	h, -2 (ix)
   5416 DD 6E FD      [19]  772 	ld	l, -3 (ix)
   5419 E5            [11]  773 	push	hl
   541A CD 0D 7D      [17]  774 	call	_drawTile
   541D F1            [10]  775 	pop	af
   541E F1            [10]  776 	pop	af
                            777 ;src/game/game.c:186: yCursor+=1;
   541F DD 34 F1      [23]  778 	inc	-15 (ix)
   5422 20 03         [12]  779 	jr	NZ,00419$
   5424 DD 34 F2      [23]  780 	inc	-14 (ix)
   5427                     781 00419$:
                            782 ;src/game/game.c:187: if(yCursor>NBTILE_H-1)
   5427 3E 0B         [ 7]  783 	ld	a, #0x0b
   5429 DD BE F1      [19]  784 	cp	a, -15 (ix)
   542C 3E 00         [ 7]  785 	ld	a, #0x00
   542E DD 9E F2      [19]  786 	sbc	a, -14 (ix)
   5431 E2 36 54      [10]  787 	jp	PO, 00420$
   5434 EE 80         [ 7]  788 	xor	a, #0x80
   5436                     789 00420$:
   5436 F2 69 54      [10]  790 	jp	P, 00226$
                            791 ;src/game/game.c:189: yCursor=NBTILE_H-1;
   5439 DD 36 F1 0B   [19]  792 	ld	-15 (ix), #0x0b
   543D DD 36 F2 00   [19]  793 	ld	-14 (ix), #0x00
                            794 ;src/game/game.c:190: if(uly<HEIGHT-NBTILE_H)
   5441 DD 7E F3      [19]  795 	ld	a, -13 (ix)
   5444 D6 24         [ 7]  796 	sub	a, #0x24
   5446 DD 7E F4      [19]  797 	ld	a, -12 (ix)
   5449 17            [ 4]  798 	rla
   544A 3F            [ 4]  799 	ccf
   544B 1F            [ 4]  800 	rra
   544C DE 80         [ 7]  801 	sbc	a, #0x80
   544E 30 19         [12]  802 	jr	NC,00226$
                            803 ;src/game/game.c:192: uly+=1;
   5450 DD 34 F3      [23]  804 	inc	-13 (ix)
   5453 20 03         [12]  805 	jr	NZ,00421$
   5455 DD 34 F4      [23]  806 	inc	-12 (ix)
   5458                     807 00421$:
                            808 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   5458 DD 7E F3      [19]  809 	ld	a, -13 (ix)
                            810 ;src/game/game.c:193: drawWorld(ulx, uly);
   545B DD 77 FE      [19]  811 	ld	-2 (ix), a
   545E F5            [11]  812 	push	af
   545F 33            [ 6]  813 	inc	sp
   5460 DD 7E FD      [19]  814 	ld	a, -3 (ix)
   5463 F5            [11]  815 	push	af
   5464 33            [ 6]  816 	inc	sp
   5465 CD CF 7F      [17]  817 	call	_drawWorld
   5468 F1            [10]  818 	pop	af
                            819 ;src/game/game.c:198: for(i=0; i<5000; i++) {}
   5469                     820 00226$:
   5469 DD 36 EF 88   [19]  821 	ld	-17 (ix), #0x88
   546D DD 36 F0 13   [19]  822 	ld	-16 (ix), #0x13
   5471                     823 00200$:
   5471 DD 6E EF      [19]  824 	ld	l,-17 (ix)
   5474 DD 66 F0      [19]  825 	ld	h,-16 (ix)
   5477 2B            [ 6]  826 	dec	hl
   5478 DD 75 EF      [19]  827 	ld	-17 (ix), l
   547B DD 74 F0      [19]  828 	ld	-16 (ix), h
   547E 7C            [ 4]  829 	ld	a, h
   547F DD B6 EF      [19]  830 	or	a,-17 (ix)
   5482 20 ED         [12]  831 	jr	NZ,00200$
   5484 C3 7F 58      [10]  832 	jp	00191$
   5487                     833 00187$:
                            834 ;src/game/game.c:201: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   5487 21 01 01      [10]  835 	ld	hl, #0x0101
   548A CD 5E 60      [17]  836 	call	_cpct_isKeyPressed
   548D 7D            [ 4]  837 	ld	a, l
   548E B7            [ 4]  838 	or	a, a
   548F 28 66         [12]  839 	jr	Z,00184$
                            840 ;src/game/game.c:203: drawTile(ulx, uly, xCursor, yCursor);
   5491 DD 66 F8      [19]  841 	ld	h, -8 (ix)
   5494 DD 6E FF      [19]  842 	ld	l, -1 (ix)
   5497 E5            [11]  843 	push	hl
   5498 DD 66 FE      [19]  844 	ld	h, -2 (ix)
   549B DD 6E FD      [19]  845 	ld	l, -3 (ix)
   549E E5            [11]  846 	push	hl
   549F CD 0D 7D      [17]  847 	call	_drawTile
   54A2 F1            [10]  848 	pop	af
   54A3 F1            [10]  849 	pop	af
                            850 ;src/game/game.c:204: xCursor-=1;
   54A4 DD 6E EC      [19]  851 	ld	l,-20 (ix)
   54A7 DD 66 ED      [19]  852 	ld	h,-19 (ix)
   54AA 2B            [ 6]  853 	dec	hl
   54AB DD 75 EC      [19]  854 	ld	-20 (ix), l
   54AE DD 74 ED      [19]  855 	ld	-19 (ix), h
                            856 ;src/game/game.c:205: if(xCursor<0)
   54B1 DD CB ED 7E   [20]  857 	bit	7, -19 (ix)
   54B5 28 35         [12]  858 	jr	Z,00231$
                            859 ;src/game/game.c:207: xCursor=0;
   54B7 DD 36 EC 00   [19]  860 	ld	-20 (ix), #0x00
   54BB DD 36 ED 00   [19]  861 	ld	-19 (ix), #0x00
                            862 ;src/game/game.c:208: if(ulx>0)
   54BF AF            [ 4]  863 	xor	a, a
   54C0 DD BE F5      [19]  864 	cp	a, -11 (ix)
   54C3 DD 9E F6      [19]  865 	sbc	a, -10 (ix)
   54C6 E2 CB 54      [10]  866 	jp	PO, 00422$
   54C9 EE 80         [ 7]  867 	xor	a, #0x80
   54CB                     868 00422$:
   54CB F2 EC 54      [10]  869 	jp	P, 00231$
                            870 ;src/game/game.c:210: ulx-=1;
   54CE DD 6E F5      [19]  871 	ld	l,-11 (ix)
   54D1 DD 66 F6      [19]  872 	ld	h,-10 (ix)
   54D4 2B            [ 6]  873 	dec	hl
   54D5 DD 75 F5      [19]  874 	ld	-11 (ix), l
   54D8 DD 74 F6      [19]  875 	ld	-10 (ix), h
                            876 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   54DB DD 7E F5      [19]  877 	ld	a, -11 (ix)
   54DE DD 77 FD      [19]  878 	ld	-3 (ix), a
                            879 ;src/game/game.c:211: drawWorld(ulx, uly);
   54E1 DD 66 FE      [19]  880 	ld	h, -2 (ix)
   54E4 DD 6E FD      [19]  881 	ld	l, -3 (ix)
   54E7 E5            [11]  882 	push	hl
   54E8 CD CF 7F      [17]  883 	call	_drawWorld
   54EB F1            [10]  884 	pop	af
                            885 ;src/game/game.c:216: for(i=0; i<14000; i++) {}
   54EC                     886 00231$:
   54EC 01 B0 36      [10]  887 	ld	bc, #0x36b0
   54EF                     888 00203$:
   54EF 0B            [ 6]  889 	dec	bc
   54F0 78            [ 4]  890 	ld	a, b
   54F1 B1            [ 4]  891 	or	a,c
   54F2 20 FB         [12]  892 	jr	NZ,00203$
   54F4 C3 7F 58      [10]  893 	jp	00191$
   54F7                     894 00184$:
                            895 ;src/game/game.c:219: else if ( cpct_isKeyPressed(Key_CursorRight) )
   54F7 21 00 02      [10]  896 	ld	hl, #0x0200
   54FA CD 5E 60      [17]  897 	call	_cpct_isKeyPressed
   54FD 7D            [ 4]  898 	ld	a, l
   54FE B7            [ 4]  899 	or	a, a
   54FF 28 68         [12]  900 	jr	Z,00181$
                            901 ;src/game/game.c:221: drawTile(ulx, uly, xCursor, yCursor);
   5501 DD 66 F8      [19]  902 	ld	h, -8 (ix)
   5504 DD 6E FF      [19]  903 	ld	l, -1 (ix)
   5507 E5            [11]  904 	push	hl
   5508 DD 66 FE      [19]  905 	ld	h, -2 (ix)
   550B DD 6E FD      [19]  906 	ld	l, -3 (ix)
   550E E5            [11]  907 	push	hl
   550F CD 0D 7D      [17]  908 	call	_drawTile
   5512 F1            [10]  909 	pop	af
   5513 F1            [10]  910 	pop	af
                            911 ;src/game/game.c:222: xCursor+=1;
   5514 DD 34 EC      [23]  912 	inc	-20 (ix)
   5517 20 03         [12]  913 	jr	NZ,00423$
   5519 DD 34 ED      [23]  914 	inc	-19 (ix)
   551C                     915 00423$:
                            916 ;src/game/game.c:223: if(xCursor>NBTILE_W-1)
   551C 3E 13         [ 7]  917 	ld	a, #0x13
   551E DD BE EC      [19]  918 	cp	a, -20 (ix)
   5521 3E 00         [ 7]  919 	ld	a, #0x00
   5523 DD 9E ED      [19]  920 	sbc	a, -19 (ix)
   5526 E2 2B 55      [10]  921 	jp	PO, 00424$
   5529 EE 80         [ 7]  922 	xor	a, #0x80
   552B                     923 00424$:
   552B F2 5E 55      [10]  924 	jp	P, 00236$
                            925 ;src/game/game.c:225: xCursor=NBTILE_W-1;
   552E DD 36 EC 13   [19]  926 	ld	-20 (ix), #0x13
   5532 DD 36 ED 00   [19]  927 	ld	-19 (ix), #0x00
                            928 ;src/game/game.c:226: if(ulx<WIDTH-NBTILE_W)
   5536 DD 7E F5      [19]  929 	ld	a, -11 (ix)
   5539 D6 3C         [ 7]  930 	sub	a, #0x3c
   553B DD 7E F6      [19]  931 	ld	a, -10 (ix)
   553E 17            [ 4]  932 	rla
   553F 3F            [ 4]  933 	ccf
   5540 1F            [ 4]  934 	rra
   5541 DE 80         [ 7]  935 	sbc	a, #0x80
   5543 30 19         [12]  936 	jr	NC,00236$
                            937 ;src/game/game.c:228: ulx+=1;
   5545 DD 34 F5      [23]  938 	inc	-11 (ix)
   5548 20 03         [12]  939 	jr	NZ,00425$
   554A DD 34 F6      [23]  940 	inc	-10 (ix)
   554D                     941 00425$:
                            942 ;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
   554D DD 7E F5      [19]  943 	ld	a, -11 (ix)
   5550 DD 77 FD      [19]  944 	ld	-3 (ix), a
                            945 ;src/game/game.c:229: drawWorld(ulx, uly);
   5553 DD 66 FE      [19]  946 	ld	h, -2 (ix)
   5556 DD 6E FD      [19]  947 	ld	l, -3 (ix)
   5559 E5            [11]  948 	push	hl
   555A CD CF 7F      [17]  949 	call	_drawWorld
   555D F1            [10]  950 	pop	af
                            951 ;src/game/game.c:234: for(i=0; i<14000; i++) {}
   555E                     952 00236$:
   555E 01 B0 36      [10]  953 	ld	bc, #0x36b0
   5561                     954 00206$:
   5561 0B            [ 6]  955 	dec	bc
   5562 78            [ 4]  956 	ld	a, b
   5563 B1            [ 4]  957 	or	a,c
   5564 20 FB         [12]  958 	jr	NZ,00206$
   5566 C3 7F 58      [10]  959 	jp	00191$
   5569                     960 00181$:
                            961 ;src/game/game.c:238: else if ( cpct_isKeyPressed(Key_Space) )
   5569 21 05 80      [10]  962 	ld	hl, #0x8005
   556C CD 5E 60      [17]  963 	call	_cpct_isKeyPressed
   556F 7D            [ 4]  964 	ld	a, l
   5570 B7            [ 4]  965 	or	a, a
   5571 CA 0C 56      [10]  966 	jp	Z, 00178$
                            967 ;src/game/game.c:240: if(CURSOR_MODE==T_SSNS)
   5574 FD 21 72 76   [14]  968 	ld	iy, #_CURSOR_MODE
   5578 FD 7E 00      [19]  969 	ld	a, 0 (iy)
   557B D6 02         [ 7]  970 	sub	a, #0x02
   557D 20 07         [12]  971 	jr	NZ,00143$
                            972 ;src/game/game.c:241: CURSOR_MODE=T_SSEW;
   557F FD 36 00 03   [19]  973 	ld	0 (iy), #0x03
   5583 C3 01 56      [10]  974 	jp	00248$
   5586                     975 00143$:
                            976 ;src/game/game.c:242: else if(CURSOR_MODE==T_SSEW)
   5586 FD 21 72 76   [14]  977 	ld	iy, #_CURSOR_MODE
   558A FD 7E 00      [19]  978 	ld	a, 0 (iy)
   558D D6 03         [ 7]  979 	sub	a, #0x03
   558F 20 06         [12]  980 	jr	NZ,00140$
                            981 ;src/game/game.c:243: CURSOR_MODE=T_SSNS;
   5591 FD 36 00 02   [19]  982 	ld	0 (iy), #0x02
   5595 18 6A         [12]  983 	jr	00248$
   5597                     984 00140$:
                            985 ;src/game/game.c:244: else if(CURSOR_MODE==T_SMNS)
   5597 FD 21 72 76   [14]  986 	ld	iy, #_CURSOR_MODE
   559B FD 7E 00      [19]  987 	ld	a, 0 (iy)
   559E D6 04         [ 7]  988 	sub	a, #0x04
   55A0 20 06         [12]  989 	jr	NZ,00137$
                            990 ;src/game/game.c:245: CURSOR_MODE=T_SMEW;
   55A2 FD 36 00 05   [19]  991 	ld	0 (iy), #0x05
   55A6 18 59         [12]  992 	jr	00248$
   55A8                     993 00137$:
                            994 ;src/game/game.c:246: else if(CURSOR_MODE==T_SMEW)
   55A8 FD 21 72 76   [14]  995 	ld	iy, #_CURSOR_MODE
   55AC FD 7E 00      [19]  996 	ld	a, 0 (iy)
   55AF D6 05         [ 7]  997 	sub	a, #0x05
   55B1 20 06         [12]  998 	jr	NZ,00134$
                            999 ;src/game/game.c:247: CURSOR_MODE=T_SMNS;
   55B3 FD 36 00 04   [19] 1000 	ld	0 (iy), #0x04
   55B7 18 48         [12] 1001 	jr	00248$
   55B9                    1002 00134$:
                           1003 ;src/game/game.c:248: else if(CURSOR_MODE==T_SLNS)
   55B9 FD 21 72 76   [14] 1004 	ld	iy, #_CURSOR_MODE
   55BD FD 7E 00      [19] 1005 	ld	a, 0 (iy)
   55C0 D6 06         [ 7] 1006 	sub	a, #0x06
   55C2 20 06         [12] 1007 	jr	NZ,00131$
                           1008 ;src/game/game.c:249: CURSOR_MODE=T_SLEW;
   55C4 FD 36 00 07   [19] 1009 	ld	0 (iy), #0x07
   55C8 18 37         [12] 1010 	jr	00248$
   55CA                    1011 00131$:
                           1012 ;src/game/game.c:250: else if(CURSOR_MODE==T_SLEW)
   55CA FD 21 72 76   [14] 1013 	ld	iy, #_CURSOR_MODE
   55CE FD 7E 00      [19] 1014 	ld	a, 0 (iy)
   55D1 D6 07         [ 7] 1015 	sub	a, #0x07
   55D3 20 06         [12] 1016 	jr	NZ,00128$
                           1017 ;src/game/game.c:251: CURSOR_MODE=T_SLNS;
   55D5 FD 36 00 06   [19] 1018 	ld	0 (iy), #0x06
   55D9 18 26         [12] 1019 	jr	00248$
   55DB                    1020 00128$:
                           1021 ;src/game/game.c:252: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   55DB FD 21 72 76   [14] 1022 	ld	iy, #_CURSOR_MODE
   55DF FD 7E 00      [19] 1023 	ld	a, 0 (iy)
   55E2 D6 08         [ 7] 1024 	sub	a, #0x08
   55E4 38 0C         [12] 1025 	jr	C,00124$
   55E6 FD 7E 00      [19] 1026 	ld	a, 0 (iy)
   55E9 D6 11         [ 7] 1027 	sub	a, #0x11
   55EB 30 05         [12] 1028 	jr	NC,00124$
                           1029 ;src/game/game.c:253: CURSOR_MODE+=1;
   55ED FD 34 00      [23] 1030 	inc	0 (iy)
   55F0 18 0F         [12] 1031 	jr	00248$
   55F2                    1032 00124$:
                           1033 ;src/game/game.c:254: else if(CURSOR_MODE==T_RNSW)
   55F2 FD 21 72 76   [14] 1034 	ld	iy, #_CURSOR_MODE
   55F6 FD 7E 00      [19] 1035 	ld	a, 0 (iy)
   55F9 D6 11         [ 7] 1036 	sub	a, #0x11
   55FB 20 04         [12] 1037 	jr	NZ,00248$
                           1038 ;src/game/game.c:255: CURSOR_MODE=T_REW;
   55FD FD 36 00 08   [19] 1039 	ld	0 (iy), #0x08
                           1040 ;src/game/game.c:257: for(i=0; i<14000; i++) {}
   5601                    1041 00248$:
   5601 01 B0 36      [10] 1042 	ld	bc, #0x36b0
   5604                    1043 00209$:
   5604 0B            [ 6] 1044 	dec	bc
   5605 78            [ 4] 1045 	ld	a, b
   5606 B1            [ 4] 1046 	or	a,c
   5607 20 FB         [12] 1047 	jr	NZ,00209$
   5609 C3 7F 58      [10] 1048 	jp	00191$
   560C                    1049 00178$:
                           1050 ;src/game/game.c:260: else if ( cpct_isKeyPressed(Key_Esc) )
   560C 21 08 04      [10] 1051 	ld	hl, #0x0408
   560F CD 5E 60      [17] 1052 	call	_cpct_isKeyPressed
   5612 7D            [ 4] 1053 	ld	a, l
   5613 B7            [ 4] 1054 	or	a, a
   5614 CA D7 56      [10] 1055 	jp	Z, 00175$
                           1056 ;src/game/game.c:263: if(CURSOR_MODE==NONE)
   5617 3A 72 76      [13] 1057 	ld	a,(#_CURSOR_MODE + 0)
   561A B7            [ 4] 1058 	or	a, a
   561B C2 B4 56      [10] 1059 	jp	NZ, 00150$
                           1060 ;src/game/game.c:266: const char *txtWindowQuit[] = { 
   561E 21 00 00      [10] 1061 	ld	hl, #0x0000
   5621 39            [11] 1062 	add	hl, sp
   5622 DD 75 FB      [19] 1063 	ld	-5 (ix), l
   5625 DD 74 FC      [19] 1064 	ld	-4 (ix), h
   5628 36 B0         [10] 1065 	ld	(hl), #<(___str_28)
   562A 23            [ 6] 1066 	inc	hl
   562B 36 58         [10] 1067 	ld	(hl), #>(___str_28)
   562D DD 7E FB      [19] 1068 	ld	a, -5 (ix)
   5630 C6 02         [ 7] 1069 	add	a, #0x02
   5632 DD 77 F9      [19] 1070 	ld	-7 (ix), a
   5635 DD 7E FC      [19] 1071 	ld	a, -4 (ix)
   5638 CE 00         [ 7] 1072 	adc	a, #0x00
   563A DD 77 FA      [19] 1073 	ld	-6 (ix), a
   563D DD 6E F9      [19] 1074 	ld	l,-7 (ix)
   5640 DD 66 FA      [19] 1075 	ld	h,-6 (ix)
   5643 36 BE         [10] 1076 	ld	(hl), #<(___str_29)
   5645 23            [ 6] 1077 	inc	hl
   5646 36 58         [10] 1078 	ld	(hl), #>(___str_29)
   5648 DD 7E FB      [19] 1079 	ld	a, -5 (ix)
   564B C6 04         [ 7] 1080 	add	a, #0x04
   564D DD 77 F9      [19] 1081 	ld	-7 (ix), a
   5650 DD 7E FC      [19] 1082 	ld	a, -4 (ix)
   5653 CE 00         [ 7] 1083 	adc	a, #0x00
   5655 DD 77 FA      [19] 1084 	ld	-6 (ix), a
   5658 DD 6E F9      [19] 1085 	ld	l,-7 (ix)
   565B DD 66 FA      [19] 1086 	ld	h,-6 (ix)
   565E 36 BF         [10] 1087 	ld	(hl), #<(___str_30)
   5660 23            [ 6] 1088 	inc	hl
   5661 36 58         [10] 1089 	ld	(hl), #>(___str_30)
                           1090 ;src/game/game.c:272: putM2();
   5663 CD 44 41      [17] 1091 	call	_putM2
                           1092 ;src/game/game.c:273: if(	drawWindow(txtWindowQuit,3,1) == 1)
   5666 DD 7E FB      [19] 1093 	ld	a, -5 (ix)
   5669 DD 77 F9      [19] 1094 	ld	-7 (ix), a
   566C DD 7E FC      [19] 1095 	ld	a, -4 (ix)
   566F DD 77 FA      [19] 1096 	ld	-6 (ix), a
   5672 21 03 01      [10] 1097 	ld	hl, #0x0103
   5675 E5            [11] 1098 	push	hl
   5676 DD 6E F9      [19] 1099 	ld	l,-7 (ix)
   5679 DD 66 FA      [19] 1100 	ld	h,-6 (ix)
   567C E5            [11] 1101 	push	hl
   567D CD 2D 46      [17] 1102 	call	_drawWindow
   5680 F1            [10] 1103 	pop	af
   5681 F1            [10] 1104 	pop	af
   5682 2D            [ 4] 1105 	dec	l
   5683 20 06         [12] 1106 	jr	NZ,00147$
                           1107 ;src/game/game.c:274: exit=1;
   5685 DD 36 EE 01   [19] 1108 	ld	-18 (ix), #0x01
   5689 18 41         [12] 1109 	jr	00253$
   568B                    1110 00147$:
                           1111 ;src/game/game.c:277: putM1();
   568B CD 33 41      [17] 1112 	call	_putM1
                           1113 ;src/game/game.c:278: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   568E 21 00 00      [10] 1114 	ld	hl, #0x0000
   5691 E5            [11] 1115 	push	hl
   5692 2E 00         [ 7] 1116 	ld	l, #0x00
   5694 E5            [11] 1117 	push	hl
   5695 CD 4C 64      [17] 1118 	call	_cpct_px2byteM1
   5698 F1            [10] 1119 	pop	af
   5699 F1            [10] 1120 	pop	af
   569A 45            [ 4] 1121 	ld	b, l
   569B 21 00 40      [10] 1122 	ld	hl, #0x4000
   569E E5            [11] 1123 	push	hl
   569F C5            [11] 1124 	push	bc
   56A0 33            [ 6] 1125 	inc	sp
   56A1 26 C0         [ 7] 1126 	ld	h, #0xc0
   56A3 E5            [11] 1127 	push	hl
   56A4 CD 3E 64      [17] 1128 	call	_cpct_memset
                           1129 ;src/game/game.c:279: drawWorld(ulx, uly);
   56A7 DD 66 FE      [19] 1130 	ld	h, -2 (ix)
   56AA DD 6E FD      [19] 1131 	ld	l, -3 (ix)
   56AD E5            [11] 1132 	push	hl
   56AE CD CF 7F      [17] 1133 	call	_drawWorld
   56B1 F1            [10] 1134 	pop	af
   56B2 18 18         [12] 1135 	jr	00253$
   56B4                    1136 00150$:
                           1137 ;src/game/game.c:284: CURSOR_MODE=NONE;
   56B4 21 72 76      [10] 1138 	ld	hl,#_CURSOR_MODE + 0
   56B7 36 00         [10] 1139 	ld	(hl), #0x00
                           1140 ;src/game/game.c:285: drawTile(ulx, uly, xCursor, yCursor);
   56B9 DD 66 F8      [19] 1141 	ld	h, -8 (ix)
   56BC DD 6E FF      [19] 1142 	ld	l, -1 (ix)
   56BF E5            [11] 1143 	push	hl
   56C0 DD 66 FE      [19] 1144 	ld	h, -2 (ix)
   56C3 DD 6E FD      [19] 1145 	ld	l, -3 (ix)
   56C6 E5            [11] 1146 	push	hl
   56C7 CD 0D 7D      [17] 1147 	call	_drawTile
   56CA F1            [10] 1148 	pop	af
   56CB F1            [10] 1149 	pop	af
                           1150 ;src/game/game.c:289: for(i=0; i<14000; i++) {}
   56CC                    1151 00253$:
   56CC 01 B0 36      [10] 1152 	ld	bc, #0x36b0
   56CF                    1153 00212$:
   56CF 0B            [ 6] 1154 	dec	bc
   56D0 78            [ 4] 1155 	ld	a, b
   56D1 B1            [ 4] 1156 	or	a,c
   56D2 20 FB         [12] 1157 	jr	NZ,00212$
   56D4 C3 7F 58      [10] 1158 	jp	00191$
   56D7                    1159 00175$:
                           1160 ;src/game/game.c:292: else if ( cpct_isKeyPressed(Key_Return) )
   56D7 21 02 04      [10] 1161 	ld	hl, #0x0402
   56DA CD 5E 60      [17] 1162 	call	_cpct_isKeyPressed
   56DD 7D            [ 4] 1163 	ld	a, l
   56DE B7            [ 4] 1164 	or	a, a
   56DF CA 7F 58      [10] 1165 	jp	Z, 00191$
                           1166 ;src/game/game.c:297: menuTile(ulx+xCursor, uly+yCursor);
   56E2 DD 5E F3      [19] 1167 	ld	e, -13 (ix)
   56E5 DD 6E F1      [19] 1168 	ld	l, -15 (ix)
   56E8 DD 4E F5      [19] 1169 	ld	c, -11 (ix)
   56EB DD 7E EC      [19] 1170 	ld	a, -20 (ix)
   56EE DD 77 F9      [19] 1171 	ld	-7 (ix), a
   56F1 7B            [ 4] 1172 	ld	a, e
   56F2 85            [ 4] 1173 	add	a, l
   56F3 DD 77 FB      [19] 1174 	ld	-5 (ix), a
   56F6 79            [ 4] 1175 	ld	a, c
   56F7 DD 86 F9      [19] 1176 	add	a, -7 (ix)
   56FA DD 77 F9      [19] 1177 	ld	-7 (ix), a
                           1178 ;src/game/game.c:295: if(CURSOR_MODE==NONE)
   56FD 3A 72 76      [13] 1179 	ld	a,(#_CURSOR_MODE + 0)
   5700 B7            [ 4] 1180 	or	a, a
   5701 20 32         [12] 1181 	jr	NZ,00169$
                           1182 ;src/game/game.c:297: menuTile(ulx+xCursor, uly+yCursor);
   5703 DD 66 FB      [19] 1183 	ld	h, -5 (ix)
   5706 DD 6E F9      [19] 1184 	ld	l, -7 (ix)
   5709 E5            [11] 1185 	push	hl
   570A CD 2F 51      [17] 1186 	call	_menuTile
   570D F1            [10] 1187 	pop	af
                           1188 ;src/game/game.c:298: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   570E 21 00 00      [10] 1189 	ld	hl, #0x0000
   5711 E5            [11] 1190 	push	hl
   5712 2E 00         [ 7] 1191 	ld	l, #0x00
   5714 E5            [11] 1192 	push	hl
   5715 CD 4C 64      [17] 1193 	call	_cpct_px2byteM1
   5718 F1            [10] 1194 	pop	af
   5719 F1            [10] 1195 	pop	af
   571A 45            [ 4] 1196 	ld	b, l
   571B 21 00 40      [10] 1197 	ld	hl, #0x4000
   571E E5            [11] 1198 	push	hl
   571F C5            [11] 1199 	push	bc
   5720 33            [ 6] 1200 	inc	sp
   5721 26 C0         [ 7] 1201 	ld	h, #0xc0
   5723 E5            [11] 1202 	push	hl
   5724 CD 3E 64      [17] 1203 	call	_cpct_memset
                           1204 ;src/game/game.c:299: drawWorld(ulx, uly);
   5727 DD 66 FE      [19] 1205 	ld	h, -2 (ix)
   572A DD 6E FD      [19] 1206 	ld	l, -3 (ix)
   572D E5            [11] 1207 	push	hl
   572E CD CF 7F      [17] 1208 	call	_drawWorld
   5731 F1            [10] 1209 	pop	af
   5732 C3 77 58      [10] 1210 	jp	00264$
   5735                    1211 00169$:
                           1212 ;src/game/game.c:304: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
   5735 DD 7E F3      [19] 1213 	ld	a, -13 (ix)
   5738 DD 86 F1      [19] 1214 	add	a, -15 (ix)
   573B 4F            [ 4] 1215 	ld	c, a
   573C DD 7E F4      [19] 1216 	ld	a, -12 (ix)
   573F DD 8E F2      [19] 1217 	adc	a, -14 (ix)
   5742 47            [ 4] 1218 	ld	b, a
   5743 DD 7E F5      [19] 1219 	ld	a, -11 (ix)
   5746 DD 86 EC      [19] 1220 	add	a, -20 (ix)
   5749 5F            [ 4] 1221 	ld	e, a
   574A DD 7E F6      [19] 1222 	ld	a, -10 (ix)
   574D DD 8E ED      [19] 1223 	adc	a, -19 (ix)
   5750 57            [ 4] 1224 	ld	d, a
   5751 69            [ 4] 1225 	ld	l, c
   5752 60            [ 4] 1226 	ld	h, b
   5753 29            [11] 1227 	add	hl, hl
   5754 29            [11] 1228 	add	hl, hl
   5755 09            [11] 1229 	add	hl, bc
   5756 29            [11] 1230 	add	hl, hl
   5757 29            [11] 1231 	add	hl, hl
   5758 29            [11] 1232 	add	hl, hl
   5759 29            [11] 1233 	add	hl, hl
   575A 19            [11] 1234 	add	hl,de
   575B EB            [ 4] 1235 	ex	de,hl
                           1236 ;src/game/game.c:301: else if(CURSOR_MODE==PUTTRAIN)
   575C 3A 72 76      [13] 1237 	ld	a,(#_CURSOR_MODE + 0)
   575F 3D            [ 4] 1238 	dec	a
   5760 C2 55 58      [10] 1239 	jp	NZ,00166$
                           1240 ;src/game/game.c:304: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
   5763 21 6E 67      [10] 1241 	ld	hl, #_p_world
   5766 19            [11] 1242 	add	hl, de
   5767 4E            [ 7] 1243 	ld	c, (hl)
   5768 79            [ 4] 1244 	ld	a, c
   5769 D6 0A         [ 7] 1245 	sub	a, #0x0a
   576B DA 77 58      [10] 1246 	jp	C, 00264$
   576E 3E 0F         [ 7] 1247 	ld	a, #0x0f
   5770 91            [ 4] 1248 	sub	a, c
   5771 DA 77 58      [10] 1249 	jp	C, 00264$
                           1250 ;src/game/game.c:307: trainList[nbTrainList].posX = ulx+xCursor;
   5774 ED 4B 73 76   [20] 1251 	ld	bc, (_nbTrainList)
   5778 06 00         [ 7] 1252 	ld	b, #0x00
   577A 69            [ 4] 1253 	ld	l, c
   577B 60            [ 4] 1254 	ld	h, b
   577C 29            [11] 1255 	add	hl, hl
   577D 29            [11] 1256 	add	hl, hl
   577E 29            [11] 1257 	add	hl, hl
   577F 09            [11] 1258 	add	hl, bc
   5780 4D            [ 4] 1259 	ld	c, l
   5781 44            [ 4] 1260 	ld	b, h
   5782 2A 6E 76      [16] 1261 	ld	hl, (_trainList)
   5785 09            [11] 1262 	add	hl, bc
   5786 01 04 00      [10] 1263 	ld	bc, #0x0004
   5789 09            [11] 1264 	add	hl, bc
   578A DD 7E F9      [19] 1265 	ld	a, -7 (ix)
   578D 77            [ 7] 1266 	ld	(hl), a
                           1267 ;src/game/game.c:308: trainList[nbTrainList].posY = uly+yCursor;
   578E ED 4B 73 76   [20] 1268 	ld	bc, (_nbTrainList)
   5792 06 00         [ 7] 1269 	ld	b, #0x00
   5794 69            [ 4] 1270 	ld	l, c
   5795 60            [ 4] 1271 	ld	h, b
   5796 29            [11] 1272 	add	hl, hl
   5797 29            [11] 1273 	add	hl, hl
   5798 29            [11] 1274 	add	hl, hl
   5799 09            [11] 1275 	add	hl, bc
   579A 4D            [ 4] 1276 	ld	c, l
   579B 44            [ 4] 1277 	ld	b, h
   579C 2A 6E 76      [16] 1278 	ld	hl, (_trainList)
   579F 09            [11] 1279 	add	hl, bc
   57A0 01 05 00      [10] 1280 	ld	bc, #0x0005
   57A3 09            [11] 1281 	add	hl, bc
   57A4 DD 7E FB      [19] 1282 	ld	a, -5 (ix)
   57A7 77            [ 7] 1283 	ld	(hl), a
                           1284 ;src/game/game.c:310: trainList[nbTrainList].shiftX = 0;
   57A8 ED 4B 73 76   [20] 1285 	ld	bc, (_nbTrainList)
   57AC 06 00         [ 7] 1286 	ld	b, #0x00
   57AE 69            [ 4] 1287 	ld	l, c
   57AF 60            [ 4] 1288 	ld	h, b
   57B0 29            [11] 1289 	add	hl, hl
   57B1 29            [11] 1290 	add	hl, hl
   57B2 29            [11] 1291 	add	hl, hl
   57B3 09            [11] 1292 	add	hl, bc
   57B4 4D            [ 4] 1293 	ld	c, l
   57B5 44            [ 4] 1294 	ld	b, h
   57B6 2A 6E 76      [16] 1295 	ld	hl, (_trainList)
   57B9 09            [11] 1296 	add	hl, bc
   57BA 01 07 00      [10] 1297 	ld	bc, #0x0007
   57BD 09            [11] 1298 	add	hl, bc
   57BE 36 00         [10] 1299 	ld	(hl), #0x00
                           1300 ;src/game/game.c:311: trainList[nbTrainList].shiftY = 0;
   57C0 ED 4B 73 76   [20] 1301 	ld	bc, (_nbTrainList)
   57C4 06 00         [ 7] 1302 	ld	b, #0x00
   57C6 69            [ 4] 1303 	ld	l, c
   57C7 60            [ 4] 1304 	ld	h, b
   57C8 29            [11] 1305 	add	hl, hl
   57C9 29            [11] 1306 	add	hl, hl
   57CA 29            [11] 1307 	add	hl, hl
   57CB 09            [11] 1308 	add	hl, bc
   57CC 4D            [ 4] 1309 	ld	c, l
   57CD 44            [ 4] 1310 	ld	b, h
   57CE 2A 6E 76      [16] 1311 	ld	hl, (_trainList)
   57D1 09            [11] 1312 	add	hl, bc
   57D2 01 08 00      [10] 1313 	ld	bc, #0x0008
   57D5 09            [11] 1314 	add	hl, bc
   57D6 36 00         [10] 1315 	ld	(hl), #0x00
                           1316 ;src/game/game.c:307: trainList[nbTrainList].posX = ulx+xCursor;
   57D8 ED 4B 73 76   [20] 1317 	ld	bc, (_nbTrainList)
   57DC 06 00         [ 7] 1318 	ld	b, #0x00
   57DE 69            [ 4] 1319 	ld	l, c
   57DF 60            [ 4] 1320 	ld	h, b
   57E0 29            [11] 1321 	add	hl, hl
   57E1 29            [11] 1322 	add	hl, hl
   57E2 29            [11] 1323 	add	hl, hl
   57E3 09            [11] 1324 	add	hl, bc
   57E4 4D            [ 4] 1325 	ld	c, l
   57E5 44            [ 4] 1326 	ld	b, h
                           1327 ;src/game/game.c:316: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
   57E6 FD 21 6E 76   [14] 1328 	ld	iy, #_trainList
   57EA FD 7E 00      [19] 1329 	ld	a, 0 (iy)
   57ED 81            [ 4] 1330 	add	a, c
   57EE 4F            [ 4] 1331 	ld	c, a
   57EF FD 7E 01      [19] 1332 	ld	a, 1 (iy)
   57F2 88            [ 4] 1333 	adc	a, b
   57F3 47            [ 4] 1334 	ld	b, a
   57F4 C5            [11] 1335 	push	bc
   57F5 FD E1         [14] 1336 	pop	iy
   57F7 FD 5E 05      [19] 1337 	ld	e, 5 (iy)
   57FA 16 00         [ 7] 1338 	ld	d,#0x00
   57FC 6B            [ 4] 1339 	ld	l, e
   57FD 62            [ 4] 1340 	ld	h, d
   57FE 29            [11] 1341 	add	hl, hl
   57FF 29            [11] 1342 	add	hl, hl
   5800 19            [11] 1343 	add	hl, de
   5801 29            [11] 1344 	add	hl, hl
   5802 29            [11] 1345 	add	hl, hl
   5803 29            [11] 1346 	add	hl, hl
   5804 29            [11] 1347 	add	hl, hl
   5805 EB            [ 4] 1348 	ex	de,hl
   5806 69            [ 4] 1349 	ld	l, c
   5807 60            [ 4] 1350 	ld	h, b
   5808 23            [ 6] 1351 	inc	hl
   5809 23            [ 6] 1352 	inc	hl
   580A 23            [ 6] 1353 	inc	hl
   580B 23            [ 6] 1354 	inc	hl
   580C 6E            [ 7] 1355 	ld	l, (hl)
   580D 26 00         [ 7] 1356 	ld	h, #0x00
   580F 19            [11] 1357 	add	hl, de
   5810 11 6E 67      [10] 1358 	ld	de, #_p_world
   5813 19            [11] 1359 	add	hl, de
   5814 7E            [ 7] 1360 	ld	a, (hl)
   5815 DD 77 F9      [19] 1361 	ld	-7 (ix), a
                           1362 ;src/game/game.c:320: trainList[nbTrainList].heading = 2;
   5818 21 06 00      [10] 1363 	ld	hl, #0x0006
   581B 09            [11] 1364 	add	hl, bc
                           1365 ;src/game/game.c:316: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
   581C DD 7E F9      [19] 1366 	ld	a, -7 (ix)
   581F D6 0A         [ 7] 1367 	sub	a, #0x0a
   5821 28 0E         [12] 1368 	jr	Z,00153$
                           1369 ;src/game/game.c:317: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SMNS ||
   5823 DD 7E F9      [19] 1370 	ld	a, -7 (ix)
   5826 D6 0C         [ 7] 1371 	sub	a, #0x0c
   5828 28 07         [12] 1372 	jr	Z,00153$
                           1373 ;src/game/game.c:318: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SLNS )
   582A DD 7E F9      [19] 1374 	ld	a, -7 (ix)
   582D D6 0E         [ 7] 1375 	sub	a, #0x0e
   582F 20 04         [12] 1376 	jr	NZ,00154$
   5831                    1377 00153$:
                           1378 ;src/game/game.c:320: trainList[nbTrainList].heading = 2;
   5831 36 02         [10] 1379 	ld	(hl), #0x02
   5833 18 02         [12] 1380 	jr	00155$
   5835                    1381 00154$:
                           1382 ;src/game/game.c:326: trainList[nbTrainList].heading = 0;
   5835 36 00         [10] 1383 	ld	(hl), #0x00
   5837                    1384 00155$:
                           1385 ;src/game/game.c:332: nbTrainList++;
   5837 21 73 76      [10] 1386 	ld	hl, #_nbTrainList+0
   583A 34            [11] 1387 	inc	(hl)
                           1388 ;src/game/game.c:334: CURSOR_MODE=NONE;
   583B 21 72 76      [10] 1389 	ld	hl,#_CURSOR_MODE + 0
   583E 36 00         [10] 1390 	ld	(hl), #0x00
                           1391 ;src/game/game.c:335: drawTile(ulx, uly, xCursor, yCursor);
   5840 DD 66 F8      [19] 1392 	ld	h, -8 (ix)
   5843 DD 6E FF      [19] 1393 	ld	l, -1 (ix)
   5846 E5            [11] 1394 	push	hl
   5847 DD 66 FE      [19] 1395 	ld	h, -2 (ix)
   584A DD 6E FD      [19] 1396 	ld	l, -3 (ix)
   584D E5            [11] 1397 	push	hl
   584E CD 0D 7D      [17] 1398 	call	_drawTile
   5851 F1            [10] 1399 	pop	af
   5852 F1            [10] 1400 	pop	af
   5853 18 22         [12] 1401 	jr	00264$
   5855                    1402 00166$:
                           1403 ;src/game/game.c:340: else if(CURSOR_MODE>=T_SSNS)
   5855 FD 21 72 76   [14] 1404 	ld	iy, #_CURSOR_MODE
   5859 FD 7E 00      [19] 1405 	ld	a, 0 (iy)
   585C D6 02         [ 7] 1406 	sub	a, #0x02
   585E 38 17         [12] 1407 	jr	C,00264$
                           1408 ;src/game/game.c:342: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+8;
   5860 21 6E 67      [10] 1409 	ld	hl, #_p_world
   5863 19            [11] 1410 	add	hl,de
   5864 4D            [ 4] 1411 	ld	c, l
   5865 44            [ 4] 1412 	ld	b, h
   5866 FD 7E 00      [19] 1413 	ld	a, 0 (iy)
   5869 C6 08         [ 7] 1414 	add	a, #0x08
   586B 02            [ 7] 1415 	ld	(bc), a
                           1416 ;src/game/game.c:345: if(CURSOR_MODE<=T_SLEW)
   586C 3E 07         [ 7] 1417 	ld	a, #0x07
   586E FD 96 00      [19] 1418 	sub	a, 0 (iy)
   5871 38 04         [12] 1419 	jr	C,00264$
                           1420 ;src/game/game.c:346: CURSOR_MODE=NONE;
   5873 FD 36 00 00   [19] 1421 	ld	0 (iy), #0x00
                           1422 ;src/game/game.c:350: for(i=0; i<14000; i++) {}
   5877                    1423 00264$:
   5877 01 B0 36      [10] 1424 	ld	bc, #0x36b0
   587A                    1425 00215$:
   587A 0B            [ 6] 1426 	dec	bc
   587B 78            [ 4] 1427 	ld	a, b
   587C B1            [ 4] 1428 	or	a,c
   587D 20 FB         [12] 1429 	jr	NZ,00215$
   587F                    1430 00191$:
                           1431 ;src/game/game.c:354: drawTrains(ulx, uly);
   587F DD 66 FE      [19] 1432 	ld	h, -2 (ix)
   5882 DD 6E FD      [19] 1433 	ld	l, -3 (ix)
   5885 E5            [11] 1434 	push	hl
   5886 CD 17 82      [17] 1435 	call	_drawTrains
   5889 F1            [10] 1436 	pop	af
                           1437 ;src/game/game.c:355: drawCursor(xCursor, yCursor, 0);
   588A DD 46 F1      [19] 1438 	ld	b, -15 (ix)
   588D DD 56 EC      [19] 1439 	ld	d, -20 (ix)
   5890 AF            [ 4] 1440 	xor	a, a
   5891 F5            [11] 1441 	push	af
   5892 33            [ 6] 1442 	inc	sp
   5893 4A            [ 4] 1443 	ld	c, d
   5894 C5            [11] 1444 	push	bc
   5895 CD 79 76      [17] 1445 	call	_drawCursor
                           1446 ;src/game/game.c:356: drawScrolls(ulx, uly);
   5898 33            [ 6] 1447 	inc	sp
   5899 DD 66 FE      [19] 1448 	ld	h, -2 (ix)
   589C DD 6E FD      [19] 1449 	ld	l, -3 (ix)
   589F E3            [19] 1450 	ex	(sp),hl
   58A0 CD 36 7F      [17] 1451 	call	_drawScrolls
   58A3 F1            [10] 1452 	pop	af
                           1453 ;src/game/game.c:359: while(!exit);
   58A4 DD 7E EE      [19] 1454 	ld	a, -18 (ix)
   58A7 B7            [ 4] 1455 	or	a, a
   58A8 CA 5E 53      [10] 1456 	jp	Z, 00192$
   58AB DD F9         [10] 1457 	ld	sp, ix
   58AD DD E1         [14] 1458 	pop	ix
   58AF C9            [10] 1459 	ret
   58B0                    1460 ___str_28:
   58B0 52 65 61 6C 6C 79  1461 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   58BD 00                 1462 	.db 0x00
   58BE                    1463 ___str_29:
   58BE 00                 1464 	.db 0x00
   58BF                    1465 ___str_30:
   58BF 50 72 65 73 73 20  1466 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   58E4 00                 1467 	.db 0x00
   58E5                    1468 ___str_31:
   58E5 47 65 6E 65 72 61  1469 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   58F8 00                 1470 	.db 0x00
                           1471 	.area _CODE
                           1472 	.area _INITIALIZER
                           1473 	.area _CABS (ABS)
