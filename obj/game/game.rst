                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 21:51:25 2016
                              5 ;--------------------------------------------------------
                              6 	.module game
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _railroadDepot
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
   42A6                      68 _windowInfoTile::
   42A6 DD E5         [15]   69 	push	ix
   42A8 DD 21 00 00   [14]   70 	ld	ix,#0
   42AC DD 39         [15]   71 	add	ix,sp
   42AE 21 F8 FF      [10]   72 	ld	hl,#-8
   42B1 39            [11]   73 	add	hl,sp
   42B2 F9            [ 6]   74 	ld	sp,hl
                             75 ;src/game/game.c:7: switch(p_world[y*WIDTH+x])
   42B3 DD 4E 05      [19]   76 	ld	c,5 (ix)
   42B6 06 00         [ 7]   77 	ld	b,#0x00
   42B8 69            [ 4]   78 	ld	l, c
   42B9 60            [ 4]   79 	ld	h, b
   42BA 29            [11]   80 	add	hl, hl
   42BB 29            [11]   81 	add	hl, hl
   42BC 09            [11]   82 	add	hl, bc
   42BD 29            [11]   83 	add	hl, hl
   42BE 29            [11]   84 	add	hl, hl
   42BF 29            [11]   85 	add	hl, hl
   42C0 29            [11]   86 	add	hl, hl
   42C1 DD 5E 04      [19]   87 	ld	e,4 (ix)
   42C4 16 00         [ 7]   88 	ld	d,#0x00
   42C6 19            [11]   89 	add	hl,de
   42C7 11 7C 6C      [10]   90 	ld	de,#_p_world
   42CA 19            [11]   91 	add	hl,de
   42CB 4E            [ 7]   92 	ld	c,(hl)
   42CC 3E 09         [ 7]   93 	ld	a,#0x09
   42CE 91            [ 4]   94 	sub	a, c
   42CF DA 00 44      [10]   95 	jp	C,00111$
   42D2 59            [ 4]   96 	ld	e,c
   42D3 16 00         [ 7]   97 	ld	d,#0x00
   42D5 21 DC 42      [10]   98 	ld	hl,#00119$
   42D8 19            [11]   99 	add	hl,de
   42D9 19            [11]  100 	add	hl,de
   42DA 19            [11]  101 	add	hl,de
   42DB E9            [ 4]  102 	jp	(hl)
   42DC                     103 00119$:
   42DC C3 FA 42      [10]  104 	jp	00101$
   42DF C3 FA 42      [10]  105 	jp	00102$
   42E2 C3 26 43      [10]  106 	jp	00103$
   42E5 C3 26 43      [10]  107 	jp	00104$
   42E8 C3 26 43      [10]  108 	jp	00105$
   42EB C3 52 43      [10]  109 	jp	00106$
   42EE C3 52 43      [10]  110 	jp	00107$
   42F1 C3 7E 43      [10]  111 	jp	00108$
   42F4 C3 AA 43      [10]  112 	jp	00109$
   42F7 C3 D5 43      [10]  113 	jp	00110$
                            114 ;src/game/game.c:9: case GRASS1:
   42FA                     115 00101$:
                            116 ;src/game/game.c:10: case GRASS2:
   42FA                     117 00102$:
                            118 ;src/game/game.c:11: txtWindowInfoTile[0] = "Grassland";
   42FA 21 00 00      [10]  119 	ld	hl,#0x0000
   42FD 39            [11]  120 	add	hl,sp
   42FE 5D            [ 4]  121 	ld	e,l
   42FF 54            [ 4]  122 	ld	d,h
   4300 36 3B         [10]  123 	ld	(hl),#<(___str_0)
   4302 23            [ 6]  124 	inc	hl
   4303 36 44         [10]  125 	ld	(hl),#>(___str_0)
                            126 ;src/game/game.c:12: txtWindowInfoTile[1] = "";
   4305 6B            [ 4]  127 	ld	l, e
   4306 62            [ 4]  128 	ld	h, d
   4307 23            [ 6]  129 	inc	hl
   4308 23            [ 6]  130 	inc	hl
   4309 01 45 44      [10]  131 	ld	bc,#___str_1+0
   430C 71            [ 7]  132 	ld	(hl),c
   430D 23            [ 6]  133 	inc	hl
   430E 70            [ 7]  134 	ld	(hl),b
                            135 ;src/game/game.c:13: txtWindowInfoTile[2] = "Production: Nothing";
   430F 21 04 00      [10]  136 	ld	hl,#0x0004
   4312 19            [11]  137 	add	hl,de
   4313 01 46 44      [10]  138 	ld	bc,#___str_2+0
   4316 71            [ 7]  139 	ld	(hl),c
   4317 23            [ 6]  140 	inc	hl
   4318 70            [ 7]  141 	ld	(hl),b
                            142 ;src/game/game.c:14: txtWindowInfoTile[3] = "Demand: Nothing";
   4319 21 06 00      [10]  143 	ld	hl,#0x0006
   431C 19            [11]  144 	add	hl,de
   431D 11 5A 44      [10]  145 	ld	de,#___str_3+0
   4320 73            [ 7]  146 	ld	(hl),e
   4321 23            [ 6]  147 	inc	hl
   4322 72            [ 7]  148 	ld	(hl),d
                            149 ;src/game/game.c:15: break;
   4323 C3 29 44      [10]  150 	jp	00112$
                            151 ;src/game/game.c:16: case DWELLINGS1:
   4326                     152 00103$:
                            153 ;src/game/game.c:17: case DWELLINGS2:
   4326                     154 00104$:
                            155 ;src/game/game.c:18: case DWELLINGS3:
   4326                     156 00105$:
                            157 ;src/game/game.c:19: txtWindowInfoTile[0] = "City";
   4326 21 00 00      [10]  158 	ld	hl,#0x0000
   4329 39            [11]  159 	add	hl,sp
   432A 5D            [ 4]  160 	ld	e,l
   432B 54            [ 4]  161 	ld	d,h
   432C 36 6A         [10]  162 	ld	(hl),#<(___str_4)
   432E 23            [ 6]  163 	inc	hl
   432F 36 44         [10]  164 	ld	(hl),#>(___str_4)
                            165 ;src/game/game.c:20: txtWindowInfoTile[1] = "";
   4331 6B            [ 4]  166 	ld	l, e
   4332 62            [ 4]  167 	ld	h, d
   4333 23            [ 6]  168 	inc	hl
   4334 23            [ 6]  169 	inc	hl
   4335 01 45 44      [10]  170 	ld	bc,#___str_1+0
   4338 71            [ 7]  171 	ld	(hl),c
   4339 23            [ 6]  172 	inc	hl
   433A 70            [ 7]  173 	ld	(hl),b
                            174 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   433B 21 04 00      [10]  175 	ld	hl,#0x0004
   433E 19            [11]  176 	add	hl,de
   433F 01 6F 44      [10]  177 	ld	bc,#___str_5+0
   4342 71            [ 7]  178 	ld	(hl),c
   4343 23            [ 6]  179 	inc	hl
   4344 70            [ 7]  180 	ld	(hl),b
                            181 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4345 21 06 00      [10]  182 	ld	hl,#0x0006
   4348 19            [11]  183 	add	hl,de
   4349 11 8C 44      [10]  184 	ld	de,#___str_6+0
   434C 73            [ 7]  185 	ld	(hl),e
   434D 23            [ 6]  186 	inc	hl
   434E 72            [ 7]  187 	ld	(hl),d
                            188 ;src/game/game.c:23: break;
   434F C3 29 44      [10]  189 	jp	00112$
                            190 ;src/game/game.c:24: case FARM1:
   4352                     191 00106$:
                            192 ;src/game/game.c:25: case FARM2:
   4352                     193 00107$:
                            194 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   4352 21 00 00      [10]  195 	ld	hl,#0x0000
   4355 39            [11]  196 	add	hl,sp
   4356 5D            [ 4]  197 	ld	e,l
   4357 54            [ 4]  198 	ld	d,h
   4358 36 B1         [10]  199 	ld	(hl),#<(___str_7)
   435A 23            [ 6]  200 	inc	hl
   435B 36 44         [10]  201 	ld	(hl),#>(___str_7)
                            202 ;src/game/game.c:27: txtWindowInfoTile[1] = "";
   435D 6B            [ 4]  203 	ld	l, e
   435E 62            [ 4]  204 	ld	h, d
   435F 23            [ 6]  205 	inc	hl
   4360 23            [ 6]  206 	inc	hl
   4361 01 45 44      [10]  207 	ld	bc,#___str_1+0
   4364 71            [ 7]  208 	ld	(hl),c
   4365 23            [ 6]  209 	inc	hl
   4366 70            [ 7]  210 	ld	(hl),b
                            211 ;src/game/game.c:28: txtWindowInfoTile[2] = "Production: Cereal";
   4367 21 04 00      [10]  212 	ld	hl,#0x0004
   436A 19            [11]  213 	add	hl,de
   436B 01 B6 44      [10]  214 	ld	bc,#___str_8+0
   436E 71            [ 7]  215 	ld	(hl),c
   436F 23            [ 6]  216 	inc	hl
   4370 70            [ 7]  217 	ld	(hl),b
                            218 ;src/game/game.c:29: txtWindowInfoTile[3] = "Demand: Nothing";
   4371 21 06 00      [10]  219 	ld	hl,#0x0006
   4374 19            [11]  220 	add	hl,de
   4375 11 5A 44      [10]  221 	ld	de,#___str_3+0
   4378 73            [ 7]  222 	ld	(hl),e
   4379 23            [ 6]  223 	inc	hl
   437A 72            [ 7]  224 	ld	(hl),d
                            225 ;src/game/game.c:30: break;
   437B C3 29 44      [10]  226 	jp	00112$
                            227 ;src/game/game.c:31: case WATER:
   437E                     228 00108$:
                            229 ;src/game/game.c:32: txtWindowInfoTile[0] = "Water";
   437E 21 00 00      [10]  230 	ld	hl,#0x0000
   4381 39            [11]  231 	add	hl,sp
   4382 5D            [ 4]  232 	ld	e,l
   4383 54            [ 4]  233 	ld	d,h
   4384 36 C9         [10]  234 	ld	(hl),#<(___str_9)
   4386 23            [ 6]  235 	inc	hl
   4387 36 44         [10]  236 	ld	(hl),#>(___str_9)
                            237 ;src/game/game.c:33: txtWindowInfoTile[1] = "";
   4389 6B            [ 4]  238 	ld	l, e
   438A 62            [ 4]  239 	ld	h, d
   438B 23            [ 6]  240 	inc	hl
   438C 23            [ 6]  241 	inc	hl
   438D 01 45 44      [10]  242 	ld	bc,#___str_1+0
   4390 71            [ 7]  243 	ld	(hl),c
   4391 23            [ 6]  244 	inc	hl
   4392 70            [ 7]  245 	ld	(hl),b
                            246 ;src/game/game.c:34: txtWindowInfoTile[2] = "Production: Nothing";
   4393 21 04 00      [10]  247 	ld	hl,#0x0004
   4396 19            [11]  248 	add	hl,de
   4397 01 46 44      [10]  249 	ld	bc,#___str_2+0
   439A 71            [ 7]  250 	ld	(hl),c
   439B 23            [ 6]  251 	inc	hl
   439C 70            [ 7]  252 	ld	(hl),b
                            253 ;src/game/game.c:35: txtWindowInfoTile[3] = "Demand: Nothing";
   439D 21 06 00      [10]  254 	ld	hl,#0x0006
   43A0 19            [11]  255 	add	hl,de
   43A1 11 5A 44      [10]  256 	ld	de,#___str_3+0
   43A4 73            [ 7]  257 	ld	(hl),e
   43A5 23            [ 6]  258 	inc	hl
   43A6 72            [ 7]  259 	ld	(hl),d
                            260 ;src/game/game.c:36: break;
   43A7 C3 29 44      [10]  261 	jp	00112$
                            262 ;src/game/game.c:37: case FOREST:
   43AA                     263 00109$:
                            264 ;src/game/game.c:38: txtWindowInfoTile[0] = "Forest";
   43AA 21 00 00      [10]  265 	ld	hl,#0x0000
   43AD 39            [11]  266 	add	hl,sp
   43AE 5D            [ 4]  267 	ld	e,l
   43AF 54            [ 4]  268 	ld	d,h
   43B0 36 CF         [10]  269 	ld	(hl),#<(___str_10)
   43B2 23            [ 6]  270 	inc	hl
   43B3 36 44         [10]  271 	ld	(hl),#>(___str_10)
                            272 ;src/game/game.c:39: txtWindowInfoTile[1] = "";
   43B5 6B            [ 4]  273 	ld	l, e
   43B6 62            [ 4]  274 	ld	h, d
   43B7 23            [ 6]  275 	inc	hl
   43B8 23            [ 6]  276 	inc	hl
   43B9 01 45 44      [10]  277 	ld	bc,#___str_1+0
   43BC 71            [ 7]  278 	ld	(hl),c
   43BD 23            [ 6]  279 	inc	hl
   43BE 70            [ 7]  280 	ld	(hl),b
                            281 ;src/game/game.c:40: txtWindowInfoTile[2] = "Production: Nothing";
   43BF 21 04 00      [10]  282 	ld	hl,#0x0004
   43C2 19            [11]  283 	add	hl,de
   43C3 01 46 44      [10]  284 	ld	bc,#___str_2+0
   43C6 71            [ 7]  285 	ld	(hl),c
   43C7 23            [ 6]  286 	inc	hl
   43C8 70            [ 7]  287 	ld	(hl),b
                            288 ;src/game/game.c:41: txtWindowInfoTile[3] = "Demand: Nothing";
   43C9 21 06 00      [10]  289 	ld	hl,#0x0006
   43CC 19            [11]  290 	add	hl,de
   43CD 11 5A 44      [10]  291 	ld	de,#___str_3+0
   43D0 73            [ 7]  292 	ld	(hl),e
   43D1 23            [ 6]  293 	inc	hl
   43D2 72            [ 7]  294 	ld	(hl),d
                            295 ;src/game/game.c:42: break;
   43D3 18 54         [12]  296 	jr	00112$
                            297 ;src/game/game.c:43: case LIVESTOCK:
   43D5                     298 00110$:
                            299 ;src/game/game.c:44: txtWindowInfoTile[0] = "Livestock farming";
   43D5 21 00 00      [10]  300 	ld	hl,#0x0000
   43D8 39            [11]  301 	add	hl,sp
   43D9 5D            [ 4]  302 	ld	e,l
   43DA 54            [ 4]  303 	ld	d,h
   43DB 36 D6         [10]  304 	ld	(hl),#<(___str_11)
   43DD 23            [ 6]  305 	inc	hl
   43DE 36 44         [10]  306 	ld	(hl),#>(___str_11)
                            307 ;src/game/game.c:45: txtWindowInfoTile[1] = "";
   43E0 6B            [ 4]  308 	ld	l, e
   43E1 62            [ 4]  309 	ld	h, d
   43E2 23            [ 6]  310 	inc	hl
   43E3 23            [ 6]  311 	inc	hl
   43E4 01 45 44      [10]  312 	ld	bc,#___str_1+0
   43E7 71            [ 7]  313 	ld	(hl),c
   43E8 23            [ 6]  314 	inc	hl
   43E9 70            [ 7]  315 	ld	(hl),b
                            316 ;src/game/game.c:46: txtWindowInfoTile[2] = "Production: Livestock, wool";
   43EA 21 04 00      [10]  317 	ld	hl,#0x0004
   43ED 19            [11]  318 	add	hl,de
   43EE 01 E8 44      [10]  319 	ld	bc,#___str_12+0
   43F1 71            [ 7]  320 	ld	(hl),c
   43F2 23            [ 6]  321 	inc	hl
   43F3 70            [ 7]  322 	ld	(hl),b
                            323 ;src/game/game.c:47: txtWindowInfoTile[3] = "Demand: Cereal";
   43F4 21 06 00      [10]  324 	ld	hl,#0x0006
   43F7 19            [11]  325 	add	hl,de
   43F8 11 04 45      [10]  326 	ld	de,#___str_13+0
   43FB 73            [ 7]  327 	ld	(hl),e
   43FC 23            [ 6]  328 	inc	hl
   43FD 72            [ 7]  329 	ld	(hl),d
                            330 ;src/game/game.c:48: break;
   43FE 18 29         [12]  331 	jr	00112$
                            332 ;src/game/game.c:49: default:
   4400                     333 00111$:
                            334 ;src/game/game.c:50: txtWindowInfoTile[0] = "Not yet implemented";
   4400 21 00 00      [10]  335 	ld	hl,#0x0000
   4403 39            [11]  336 	add	hl,sp
   4404 5D            [ 4]  337 	ld	e,l
   4405 54            [ 4]  338 	ld	d,h
   4406 36 13         [10]  339 	ld	(hl),#<(___str_14)
   4408 23            [ 6]  340 	inc	hl
   4409 36 45         [10]  341 	ld	(hl),#>(___str_14)
                            342 ;src/game/game.c:51: txtWindowInfoTile[1] = "";
   440B 6B            [ 4]  343 	ld	l, e
   440C 62            [ 4]  344 	ld	h, d
   440D 23            [ 6]  345 	inc	hl
   440E 23            [ 6]  346 	inc	hl
   440F 01 45 44      [10]  347 	ld	bc,#___str_1+0
   4412 71            [ 7]  348 	ld	(hl),c
   4413 23            [ 6]  349 	inc	hl
   4414 70            [ 7]  350 	ld	(hl),b
                            351 ;src/game/game.c:52: txtWindowInfoTile[2] = "Production: ?";
   4415 21 04 00      [10]  352 	ld	hl,#0x0004
   4418 19            [11]  353 	add	hl,de
   4419 01 27 45      [10]  354 	ld	bc,#___str_15+0
   441C 71            [ 7]  355 	ld	(hl),c
   441D 23            [ 6]  356 	inc	hl
   441E 70            [ 7]  357 	ld	(hl),b
                            358 ;src/game/game.c:53: txtWindowInfoTile[3] = "Demand: ?";
   441F 21 06 00      [10]  359 	ld	hl,#0x0006
   4422 19            [11]  360 	add	hl,de
   4423 11 35 45      [10]  361 	ld	de,#___str_16+0
   4426 73            [ 7]  362 	ld	(hl),e
   4427 23            [ 6]  363 	inc	hl
   4428 72            [ 7]  364 	ld	(hl),d
                            365 ;src/game/game.c:55: }
   4429                     366 00112$:
                            367 ;src/game/game.c:57: drawWindow(txtWindowInfoTile, 4, 0);
   4429 21 00 00      [10]  368 	ld	hl,#0x0000
   442C 39            [11]  369 	add	hl,sp
   442D EB            [ 4]  370 	ex	de,hl
   442E 21 04 00      [10]  371 	ld	hl,#0x0004
   4431 E5            [11]  372 	push	hl
   4432 D5            [11]  373 	push	de
   4433 CD 2C 5B      [17]  374 	call	_drawWindow
   4436 DD F9         [10]  375 	ld	sp,ix
   4438 DD E1         [14]  376 	pop	ix
   443A C9            [10]  377 	ret
   443B                     378 ___str_0:
   443B 47 72 61 73 73 6C   379 	.ascii "Grassland"
        61 6E 64
   4444 00                  380 	.db 0x00
   4445                     381 ___str_1:
   4445 00                  382 	.db 0x00
   4446                     383 ___str_2:
   4446 50 72 6F 64 75 63   384 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   4459 00                  385 	.db 0x00
   445A                     386 ___str_3:
   445A 44 65 6D 61 6E 64   387 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   4469 00                  388 	.db 0x00
   446A                     389 ___str_4:
   446A 43 69 74 79         390 	.ascii "City"
   446E 00                  391 	.db 0x00
   446F                     392 ___str_5:
   446F 50 72 6F 64 75 63   393 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   448B 00                  394 	.db 0x00
   448C                     395 ___str_6:
   448C 44 65 6D 61 6E 64   396 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   44B0 00                  397 	.db 0x00
   44B1                     398 ___str_7:
   44B1 46 61 72 6D         399 	.ascii "Farm"
   44B5 00                  400 	.db 0x00
   44B6                     401 ___str_8:
   44B6 50 72 6F 64 75 63   402 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   44C8 00                  403 	.db 0x00
   44C9                     404 ___str_9:
   44C9 57 61 74 65 72      405 	.ascii "Water"
   44CE 00                  406 	.db 0x00
   44CF                     407 ___str_10:
   44CF 46 6F 72 65 73 74   408 	.ascii "Forest"
   44D5 00                  409 	.db 0x00
   44D6                     410 ___str_11:
   44D6 4C 69 76 65 73 74   411 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   44E7 00                  412 	.db 0x00
   44E8                     413 ___str_12:
   44E8 50 72 6F 64 75 63   414 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   4503 00                  415 	.db 0x00
   4504                     416 ___str_13:
   4504 44 65 6D 61 6E 64   417 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   4512 00                  418 	.db 0x00
   4513                     419 ___str_14:
   4513 4E 6F 74 20 79 65   420 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   4526 00                  421 	.db 0x00
   4527                     422 ___str_15:
   4527 50 72 6F 64 75 63   423 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   4534 00                  424 	.db 0x00
   4535                     425 ___str_16:
   4535 44 65 6D 61 6E 64   426 	.ascii "Demand: ?"
        3A 20 3F
   453E 00                  427 	.db 0x00
                            428 ;src/game/game.c:60: void menuStations()
                            429 ;	---------------------------------
                            430 ; Function menuStations
                            431 ; ---------------------------------
   453F                     432 _menuStations::
   453F DD E5         [15]  433 	push	ix
   4541 DD 21 00 00   [14]  434 	ld	ix,#0
   4545 DD 39         [15]  435 	add	ix,sp
   4547 21 FA FF      [10]  436 	ld	hl,#-6
   454A 39            [11]  437 	add	hl,sp
   454B F9            [ 6]  438 	ld	sp,hl
                            439 ;src/game/game.c:64: const char *txtMenuSizeStation[] = { 
   454C 21 00 00      [10]  440 	ld	hl,#0x0000
   454F 39            [11]  441 	add	hl,sp
   4550 5D            [ 4]  442 	ld	e,l
   4551 54            [ 4]  443 	ld	d,h
   4552 36 A1         [10]  444 	ld	(hl),#<(___str_17)
   4554 23            [ 6]  445 	inc	hl
   4555 36 45         [10]  446 	ld	(hl),#>(___str_17)
   4557 6B            [ 4]  447 	ld	l, e
   4558 62            [ 4]  448 	ld	h, d
   4559 23            [ 6]  449 	inc	hl
   455A 23            [ 6]  450 	inc	hl
   455B 01 A7 45      [10]  451 	ld	bc,#___str_18+0
   455E 71            [ 7]  452 	ld	(hl),c
   455F 23            [ 6]  453 	inc	hl
   4560 70            [ 7]  454 	ld	(hl),b
   4561 21 04 00      [10]  455 	ld	hl,#0x0004
   4564 19            [11]  456 	add	hl,de
   4565 01 AE 45      [10]  457 	ld	bc,#___str_19+0
   4568 71            [ 7]  458 	ld	(hl),c
   4569 23            [ 6]  459 	inc	hl
   456A 70            [ 7]  460 	ld	(hl),b
                            461 ;src/game/game.c:70: result = drawMenu(txtMenuSizeStation,3);
   456B 3E 03         [ 7]  462 	ld	a,#0x03
   456D F5            [11]  463 	push	af
   456E 33            [ 6]  464 	inc	sp
   456F D5            [11]  465 	push	de
   4570 CD 2E 5A      [17]  466 	call	_drawMenu
   4573 F1            [10]  467 	pop	af
   4574 33            [ 6]  468 	inc	sp
   4575 5D            [ 4]  469 	ld	e,l
                            470 ;src/game/game.c:72: switch(result)
   4576 3E 02         [ 7]  471 	ld	a,#0x02
   4578 93            [ 4]  472 	sub	a, e
   4579 38 21         [12]  473 	jr	C,00105$
   457B 16 00         [ 7]  474 	ld	d,#0x00
   457D 21 83 45      [10]  475 	ld	hl,#00111$
   4580 19            [11]  476 	add	hl,de
   4581 19            [11]  477 	add	hl,de
                            478 ;src/game/game.c:74: case 0:
   4582 E9            [ 4]  479 	jp	(hl)
   4583                     480 00111$:
   4583 18 04         [12]  481 	jr	00101$
   4585 18 09         [12]  482 	jr	00102$
   4587 18 0E         [12]  483 	jr	00103$
   4589                     484 00101$:
                            485 ;src/game/game.c:75: CURSOR_MODE=T_SSEW;
   4589 21 7C 7B      [10]  486 	ld	hl,#_CURSOR_MODE + 0
   458C 36 02         [10]  487 	ld	(hl), #0x02
                            488 ;src/game/game.c:76: break;
   458E 18 0C         [12]  489 	jr	00105$
                            490 ;src/game/game.c:78: case 1:
   4590                     491 00102$:
                            492 ;src/game/game.c:79: CURSOR_MODE=T_SMEW;
   4590 21 7C 7B      [10]  493 	ld	hl,#_CURSOR_MODE + 0
   4593 36 04         [10]  494 	ld	(hl), #0x04
                            495 ;src/game/game.c:80: break;
   4595 18 05         [12]  496 	jr	00105$
                            497 ;src/game/game.c:82: case 2:
   4597                     498 00103$:
                            499 ;src/game/game.c:83: CURSOR_MODE=T_SLEW;
   4597 21 7C 7B      [10]  500 	ld	hl,#_CURSOR_MODE + 0
   459A 36 06         [10]  501 	ld	(hl), #0x06
                            502 ;src/game/game.c:85: }
   459C                     503 00105$:
   459C DD F9         [10]  504 	ld	sp, ix
   459E DD E1         [14]  505 	pop	ix
   45A0 C9            [10]  506 	ret
   45A1                     507 ___str_17:
   45A1 53 6D 61 6C 6C      508 	.ascii "Small"
   45A6 00                  509 	.db 0x00
   45A7                     510 ___str_18:
   45A7 4D 65 64 69 75 6D   511 	.ascii "Medium"
   45AD 00                  512 	.db 0x00
   45AE                     513 ___str_19:
   45AE 4C 61 72 67 65      514 	.ascii "Large"
   45B3 00                  515 	.db 0x00
                            516 ;src/game/game.c:88: void menuTile(u8 x, u8 y)
                            517 ;	---------------------------------
                            518 ; Function menuTile
                            519 ; ---------------------------------
   45B4                     520 _menuTile::
   45B4 DD E5         [15]  521 	push	ix
   45B6 DD 21 00 00   [14]  522 	ld	ix,#0
   45BA DD 39         [15]  523 	add	ix,sp
   45BC 21 E6 FF      [10]  524 	ld	hl,#-26
   45BF 39            [11]  525 	add	hl,sp
   45C0 F9            [ 6]  526 	ld	sp,hl
                            527 ;src/game/game.c:92: const char *txtMenuTile[] = { 
   45C1 21 06 00      [10]  528 	ld	hl,#0x0006
   45C4 39            [11]  529 	add	hl,sp
   45C5 5D            [ 4]  530 	ld	e,l
   45C6 54            [ 4]  531 	ld	d,h
   45C7 36 E8         [10]  532 	ld	(hl),#<(___str_20)
   45C9 23            [ 6]  533 	inc	hl
   45CA 36 46         [10]  534 	ld	(hl),#>(___str_20)
   45CC 6B            [ 4]  535 	ld	l, e
   45CD 62            [ 4]  536 	ld	h, d
   45CE 23            [ 6]  537 	inc	hl
   45CF 23            [ 6]  538 	inc	hl
   45D0 01 F8 46      [10]  539 	ld	bc,#___str_21+0
   45D3 71            [ 7]  540 	ld	(hl),c
   45D4 23            [ 6]  541 	inc	hl
   45D5 70            [ 7]  542 	ld	(hl),b
   45D6 21 04 00      [10]  543 	ld	hl,#0x0004
   45D9 19            [11]  544 	add	hl,de
   45DA 01 08 47      [10]  545 	ld	bc,#___str_22+0
   45DD 71            [ 7]  546 	ld	(hl),c
   45DE 23            [ 6]  547 	inc	hl
   45DF 70            [ 7]  548 	ld	(hl),b
   45E0 21 06 00      [10]  549 	ld	hl,#0x0006
   45E3 19            [11]  550 	add	hl,de
   45E4 01 18 47      [10]  551 	ld	bc,#___str_23+0
   45E7 71            [ 7]  552 	ld	(hl),c
   45E8 23            [ 6]  553 	inc	hl
   45E9 70            [ 7]  554 	ld	(hl),b
   45EA 21 08 00      [10]  555 	ld	hl,#0x0008
   45ED 19            [11]  556 	add	hl,de
   45EE 01 20 47      [10]  557 	ld	bc,#___str_24+0
   45F1 71            [ 7]  558 	ld	(hl),c
   45F2 23            [ 6]  559 	inc	hl
   45F3 70            [ 7]  560 	ld	(hl),b
   45F4 21 0A 00      [10]  561 	ld	hl,#0x000A
   45F7 19            [11]  562 	add	hl,de
   45F8 01 2F 47      [10]  563 	ld	bc,#___str_25+0
   45FB 71            [ 7]  564 	ld	(hl),c
   45FC 23            [ 6]  565 	inc	hl
   45FD 70            [ 7]  566 	ld	(hl),b
   45FE 21 0C 00      [10]  567 	ld	hl,#0x000C
   4601 19            [11]  568 	add	hl,de
   4602 01 3A 47      [10]  569 	ld	bc,#___str_26+0
   4605 71            [ 7]  570 	ld	(hl),c
   4606 23            [ 6]  571 	inc	hl
   4607 70            [ 7]  572 	ld	(hl),b
                            573 ;src/game/game.c:102: const char *txtWindowDestroy[] = { 
   4608 21 00 00      [10]  574 	ld	hl,#0x0000
   460B 39            [11]  575 	add	hl,sp
   460C 4D            [ 4]  576 	ld	c,l
   460D 44            [ 4]  577 	ld	b,h
   460E 36 41         [10]  578 	ld	(hl),#<(___str_27)
   4610 23            [ 6]  579 	inc	hl
   4611 36 47         [10]  580 	ld	(hl),#>(___str_27)
   4613 21 02 00      [10]  581 	ld	hl,#0x0002
   4616 09            [11]  582 	add	hl,bc
   4617 DD 75 FE      [19]  583 	ld	-2 (ix),l
   461A DD 74 FF      [19]  584 	ld	-1 (ix),h
   461D DD 6E FE      [19]  585 	ld	l,-2 (ix)
   4620 DD 66 FF      [19]  586 	ld	h,-1 (ix)
   4623 36 64         [10]  587 	ld	(hl),#<(___str_28)
   4625 23            [ 6]  588 	inc	hl
   4626 36 47         [10]  589 	ld	(hl),#>(___str_28)
   4628 21 04 00      [10]  590 	ld	hl,#0x0004
   462B 09            [11]  591 	add	hl,bc
   462C DD 75 FE      [19]  592 	ld	-2 (ix),l
   462F DD 74 FF      [19]  593 	ld	-1 (ix),h
   4632 DD 6E FE      [19]  594 	ld	l,-2 (ix)
   4635 DD 66 FF      [19]  595 	ld	h,-1 (ix)
   4638 36 65         [10]  596 	ld	(hl),#<(___str_29)
   463A 23            [ 6]  597 	inc	hl
   463B 36 47         [10]  598 	ld	(hl),#>(___str_29)
                            599 ;src/game/game.c:109: putM2();
   463D C5            [11]  600 	push	bc
   463E D5            [11]  601 	push	de
   463F CD 28 56      [17]  602 	call	_putM2
   4642 D1            [10]  603 	pop	de
   4643 C1            [10]  604 	pop	bc
                            605 ;src/game/game.c:111: do{
   4644 D5            [11]  606 	push	de
   4645 DD 5E 05      [19]  607 	ld	e,5 (ix)
   4648 16 00         [ 7]  608 	ld	d,#0x00
   464A 6B            [ 4]  609 	ld	l, e
   464B 62            [ 4]  610 	ld	h, d
   464C 29            [11]  611 	add	hl, hl
   464D 29            [11]  612 	add	hl, hl
   464E 19            [11]  613 	add	hl, de
   464F 29            [11]  614 	add	hl, hl
   4650 29            [11]  615 	add	hl, hl
   4651 29            [11]  616 	add	hl, hl
   4652 29            [11]  617 	add	hl, hl
   4653 D1            [10]  618 	pop	de
   4654 DD 75 FE      [19]  619 	ld	-2 (ix),l
   4657 DD 74 FF      [19]  620 	ld	-1 (ix),h
   465A DD 71 FC      [19]  621 	ld	-4 (ix),c
   465D DD 70 FD      [19]  622 	ld	-3 (ix),b
   4660 DD 73 FA      [19]  623 	ld	-6 (ix),e
   4663 DD 72 FB      [19]  624 	ld	-5 (ix),d
   4666                     625 00117$:
                            626 ;src/game/game.c:112: menuChoice = drawMenu(txtMenuTile,7);
   4666 DD 5E FA      [19]  627 	ld	e,-6 (ix)
   4669 DD 56 FB      [19]  628 	ld	d,-5 (ix)
   466C 3E 07         [ 7]  629 	ld	a,#0x07
   466E F5            [11]  630 	push	af
   466F 33            [ 6]  631 	inc	sp
   4670 D5            [11]  632 	push	de
   4671 CD 2E 5A      [17]  633 	call	_drawMenu
   4674 F1            [10]  634 	pop	af
   4675 33            [ 6]  635 	inc	sp
   4676 55            [ 4]  636 	ld	d,l
                            637 ;src/game/game.c:114: if(menuChoice==0)
   4677 7A            [ 4]  638 	ld	a,d
   4678 B7            [ 4]  639 	or	a, a
   4679 20 0F         [12]  640 	jr	NZ,00115$
                            641 ;src/game/game.c:115: windowInfoTile(x, y);
   467B D5            [11]  642 	push	de
   467C DD 66 05      [19]  643 	ld	h,5 (ix)
   467F DD 6E 04      [19]  644 	ld	l,4 (ix)
   4682 E5            [11]  645 	push	hl
   4683 CD A6 42      [17]  646 	call	_windowInfoTile
   4686 F1            [10]  647 	pop	af
   4687 D1            [10]  648 	pop	de
   4688 18 51         [12]  649 	jr	00118$
   468A                     650 00115$:
                            651 ;src/game/game.c:116: else if(menuChoice==1)
   468A 7A            [ 4]  652 	ld	a,d
   468B 3D            [ 4]  653 	dec	a
   468C 20 09         [12]  654 	jr	NZ,00112$
                            655 ;src/game/game.c:118: CURSOR_MODE=T_REW;
   468E 21 7C 7B      [10]  656 	ld	hl,#_CURSOR_MODE + 0
   4691 36 07         [10]  657 	ld	(hl), #0x07
                            658 ;src/game/game.c:119: menuChoice=6;
   4693 16 06         [ 7]  659 	ld	d,#0x06
   4695 18 44         [12]  660 	jr	00118$
   4697                     661 00112$:
                            662 ;src/game/game.c:121: else if(menuChoice==2)
   4697 7A            [ 4]  663 	ld	a,d
   4698 D6 02         [ 7]  664 	sub	a, #0x02
   469A 20 07         [12]  665 	jr	NZ,00109$
                            666 ;src/game/game.c:123: menuStations();
   469C CD 3F 45      [17]  667 	call	_menuStations
                            668 ;src/game/game.c:124: menuChoice=6;
   469F 16 06         [ 7]  669 	ld	d,#0x06
   46A1 18 38         [12]  670 	jr	00118$
   46A3                     671 00109$:
                            672 ;src/game/game.c:126: else if(menuChoice==3)
   46A3 7A            [ 4]  673 	ld	a,d
   46A4 D6 03         [ 7]  674 	sub	a, #0x03
   46A6 20 29         [12]  675 	jr	NZ,00106$
                            676 ;src/game/game.c:128: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   46A8 DD 5E FC      [19]  677 	ld	e,-4 (ix)
   46AB DD 56 FD      [19]  678 	ld	d,-3 (ix)
   46AE 21 03 01      [10]  679 	ld	hl,#0x0103
   46B1 E5            [11]  680 	push	hl
   46B2 D5            [11]  681 	push	de
   46B3 CD 2C 5B      [17]  682 	call	_drawWindow
   46B6 F1            [10]  683 	pop	af
   46B7 F1            [10]  684 	pop	af
   46B8 2D            [ 4]  685 	dec	l
   46B9 20 12         [12]  686 	jr	NZ,00102$
                            687 ;src/game/game.c:129: p_world[x+y*WIDTH] = GRASS1;
   46BB DD 6E 04      [19]  688 	ld	l,4 (ix)
   46BE 26 00         [ 7]  689 	ld	h,#0x00
   46C0 DD 5E FE      [19]  690 	ld	e,-2 (ix)
   46C3 DD 56 FF      [19]  691 	ld	d,-1 (ix)
   46C6 19            [11]  692 	add	hl,de
   46C7 11 7C 6C      [10]  693 	ld	de,#_p_world
   46CA 19            [11]  694 	add	hl,de
   46CB 36 00         [10]  695 	ld	(hl),#0x00
   46CD                     696 00102$:
                            697 ;src/game/game.c:131: menuChoice=6;
   46CD 16 06         [ 7]  698 	ld	d,#0x06
   46CF 18 0A         [12]  699 	jr	00118$
   46D1                     700 00106$:
                            701 ;src/game/game.c:133: else if(menuChoice==4)
   46D1 7A            [ 4]  702 	ld	a,d
   46D2 D6 04         [ 7]  703 	sub	a, #0x04
   46D4 20 05         [12]  704 	jr	NZ,00118$
                            705 ;src/game/game.c:135: railroadDepot();
   46D6 CD 30 41      [17]  706 	call	_railroadDepot
                            707 ;src/game/game.c:136: menuChoice=6;
   46D9 16 06         [ 7]  708 	ld	d,#0x06
   46DB                     709 00118$:
                            710 ;src/game/game.c:141: while(menuChoice!=6);
   46DB 7A            [ 4]  711 	ld	a,d
   46DC D6 06         [ 7]  712 	sub	a, #0x06
   46DE 20 86         [12]  713 	jr	NZ,00117$
                            714 ;src/game/game.c:143: putM1();
   46E0 CD 14 56      [17]  715 	call	_putM1
   46E3 DD F9         [10]  716 	ld	sp, ix
   46E5 DD E1         [14]  717 	pop	ix
   46E7 C9            [10]  718 	ret
   46E8                     719 ___str_20:
   46E8 41 62 6F 75 74 20   720 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   46F7 00                  721 	.db 0x00
   46F8                     722 ___str_21:
   46F8 42 75 69 6C 64 20   723 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   4707 00                  724 	.db 0x00
   4708                     725 ___str_22:
   4708 42 75 69 6C 64 20   726 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   4717 00                  727 	.db 0x00
   4718                     728 ___str_23:
   4718 44 65 73 74 72 6F   729 	.ascii "Destroy"
        79
   471F 00                  730 	.db 0x00
   4720                     731 ___str_24:
   4720 52 61 69 6C 72 6F   732 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   472E 00                  733 	.db 0x00
   472F                     734 ___str_25:
   472F 41 63 63 6F 75 6E   735 	.ascii "Accounting"
        74 69 6E 67
   4739 00                  736 	.db 0x00
   473A                     737 ___str_26:
   473A 52 65 73 75 6D 65   738 	.ascii "Resume"
   4740 00                  739 	.db 0x00
   4741                     740 ___str_27:
   4741 44 65 73 74 72 6F   741 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   4763 00                  742 	.db 0x00
   4764                     743 ___str_28:
   4764 00                  744 	.db 0x00
   4765                     745 ___str_29:
   4765 43 6F 6E 74 69 6E   746 	.ascii "Continue ?"
        75 65 20 3F
   476F 00                  747 	.db 0x00
                            748 ;src/game/game.c:147: void game()
                            749 ;	---------------------------------
                            750 ; Function game
                            751 ; ---------------------------------
   4770                     752 _game::
   4770 DD E5         [15]  753 	push	ix
   4772 DD 21 00 00   [14]  754 	ld	ix,#0
   4776 DD 39         [15]  755 	add	ix,sp
   4778 21 EA FF      [10]  756 	ld	hl,#-22
   477B 39            [11]  757 	add	hl,sp
   477C F9            [ 6]  758 	ld	sp,hl
                            759 ;src/game/game.c:150: int ulx = 0;
   477D DD 36 F2 00   [19]  760 	ld	-14 (ix),#0x00
   4781 DD 36 F3 00   [19]  761 	ld	-13 (ix),#0x00
                            762 ;src/game/game.c:151: int uly = 0;
   4785 DD 36 F6 00   [19]  763 	ld	-10 (ix),#0x00
   4789 DD 36 F7 00   [19]  764 	ld	-9 (ix),#0x00
                            765 ;src/game/game.c:152: int xCursor = 10;
   478D DD 36 F0 0A   [19]  766 	ld	-16 (ix),#0x0A
   4791 DD 36 F1 00   [19]  767 	ld	-15 (ix),#0x00
                            768 ;src/game/game.c:153: int yCursor = 6;
   4795 DD 36 F4 06   [19]  769 	ld	-12 (ix),#0x06
   4799 DD 36 F5 00   [19]  770 	ld	-11 (ix),#0x00
                            771 ;src/game/game.c:155: u8 exit=0;
   479D DD 36 F8 00   [19]  772 	ld	-8 (ix),#0x00
                            773 ;src/game/game.c:158: drawBoxM2(50, 50);
   47A1 21 32 00      [10]  774 	ld	hl,#0x0032
   47A4 E5            [11]  775 	push	hl
   47A5 2E 32         [ 7]  776 	ld	l, #0x32
   47A7 E5            [11]  777 	push	hl
   47A8 CD 64 57      [17]  778 	call	_drawBoxM2
   47AB F1            [10]  779 	pop	af
                            780 ;src/game/game.c:159: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   47AC 21 20 5F      [10]  781 	ld	hl, #0x5F20
   47AF E3            [19]  782 	ex	(sp),hl
   47B0 21 00 C0      [10]  783 	ld	hl,#0xC000
   47B3 E5            [11]  784 	push	hl
   47B4 CD A8 6B      [17]  785 	call	_cpct_getScreenPtr
                            786 ;src/game/game.c:160: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   47B7 4D            [ 4]  787 	ld	c, l
   47B8 44            [ 4]  788 	ld	b, h
   47B9 11 58 4C      [10]  789 	ld	de,#___str_33
   47BC AF            [ 4]  790 	xor	a, a
   47BD F5            [11]  791 	push	af
   47BE 33            [ 6]  792 	inc	sp
   47BF C5            [11]  793 	push	bc
   47C0 D5            [11]  794 	push	de
   47C1 CD 5B 68      [17]  795 	call	_cpct_drawStringM2
   47C4 F1            [10]  796 	pop	af
   47C5 F1            [10]  797 	pop	af
   47C6 33            [ 6]  798 	inc	sp
                            799 ;src/game/game.c:162: generateWorld();
   47C7 CD 9E 4F      [17]  800 	call	_generateWorld
                            801 ;src/game/game.c:164: putM1();
   47CA CD 14 56      [17]  802 	call	_putM1
                            803 ;src/game/game.c:165: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   47CD 21 00 00      [10]  804 	ld	hl,#0x0000
   47D0 E5            [11]  805 	push	hl
   47D1 2E 00         [ 7]  806 	ld	l, #0x00
   47D3 E5            [11]  807 	push	hl
   47D4 CD 82 6A      [17]  808 	call	_cpct_px2byteM1
   47D7 F1            [10]  809 	pop	af
   47D8 F1            [10]  810 	pop	af
   47D9 65            [ 4]  811 	ld	h,l
   47DA 01 00 40      [10]  812 	ld	bc,#0x4000
   47DD C5            [11]  813 	push	bc
   47DE E5            [11]  814 	push	hl
   47DF 33            [ 6]  815 	inc	sp
   47E0 21 00 C0      [10]  816 	ld	hl,#0xC000
   47E3 E5            [11]  817 	push	hl
   47E4 CD 74 6A      [17]  818 	call	_cpct_memset
                            819 ;src/game/game.c:166: drawWorld(ulx, uly);
   47E7 21 00 00      [10]  820 	ld	hl,#0x0000
   47EA E5            [11]  821 	push	hl
   47EB CD C8 55      [17]  822 	call	_drawWorld
   47EE F1            [10]  823 	pop	af
                            824 ;src/game/game.c:168: do{
   47EF                     825 00181$:
                            826 ;src/game/game.c:169: cpct_scanKeyboard(); 
   47EF CD C8 6B      [17]  827 	call	_cpct_scanKeyboard
                            828 ;src/game/game.c:171: if ( cpct_isKeyPressed(Key_CursorUp) )
   47F2 21 00 01      [10]  829 	ld	hl,#0x0100
   47F5 CD 24 68      [17]  830 	call	_cpct_isKeyPressed
   47F8 DD 75 FE      [19]  831 	ld	-2 (ix),l
                            832 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   47FB DD 7E F4      [19]  833 	ld	a,-12 (ix)
   47FE DD 77 FF      [19]  834 	ld	-1 (ix),a
   4801 DD 7E F0      [19]  835 	ld	a,-16 (ix)
   4804 DD 77 FD      [19]  836 	ld	-3 (ix),a
   4807 DD 7E F6      [19]  837 	ld	a,-10 (ix)
   480A DD 77 FC      [19]  838 	ld	-4 (ix),a
   480D DD 7E F2      [19]  839 	ld	a,-14 (ix)
   4810 DD 77 FB      [19]  840 	ld	-5 (ix),a
                            841 ;src/game/game.c:171: if ( cpct_isKeyPressed(Key_CursorUp) )
   4813 DD 7E FE      [19]  842 	ld	a,-2 (ix)
   4816 B7            [ 4]  843 	or	a, a
   4817 CA 99 48      [10]  844 	jp	Z,00179$
                            845 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   481A DD 7E FF      [19]  846 	ld	a,-1 (ix)
   481D F5            [11]  847 	push	af
   481E 33            [ 6]  848 	inc	sp
   481F DD 7E FD      [19]  849 	ld	a,-3 (ix)
   4822 F5            [11]  850 	push	af
   4823 33            [ 6]  851 	inc	sp
   4824 DD 7E FC      [19]  852 	ld	a,-4 (ix)
   4827 F5            [11]  853 	push	af
   4828 33            [ 6]  854 	inc	sp
   4829 DD 7E FB      [19]  855 	ld	a,-5 (ix)
   482C F5            [11]  856 	push	af
   482D 33            [ 6]  857 	inc	sp
   482E CD 07 53      [17]  858 	call	_drawTile
   4831 F1            [10]  859 	pop	af
   4832 F1            [10]  860 	pop	af
                            861 ;src/game/game.c:175: yCursor-=1;
   4833 DD 6E F4      [19]  862 	ld	l,-12 (ix)
   4836 DD 66 F5      [19]  863 	ld	h,-11 (ix)
   4839 2B            [ 6]  864 	dec	hl
   483A DD 75 F4      [19]  865 	ld	-12 (ix),l
   483D DD 74 F5      [19]  866 	ld	-11 (ix),h
                            867 ;src/game/game.c:178: if(yCursor<0)
   4840 DD CB F5 7E   [20]  868 	bit	7, -11 (ix)
   4844 28 35         [12]  869 	jr	Z,00210$
                            870 ;src/game/game.c:180: yCursor=0;
   4846 DD 36 F4 00   [19]  871 	ld	-12 (ix),#0x00
   484A DD 36 F5 00   [19]  872 	ld	-11 (ix),#0x00
                            873 ;src/game/game.c:183: if(uly>0)
   484E AF            [ 4]  874 	xor	a, a
   484F DD BE F6      [19]  875 	cp	a, -10 (ix)
   4852 DD 9E F7      [19]  876 	sbc	a, -9 (ix)
   4855 E2 5A 48      [10]  877 	jp	PO, 00387$
   4858 EE 80         [ 7]  878 	xor	a, #0x80
   485A                     879 00387$:
   485A F2 7B 48      [10]  880 	jp	P,00210$
                            881 ;src/game/game.c:185: uly-=1;
   485D DD 6E F6      [19]  882 	ld	l,-10 (ix)
   4860 DD 66 F7      [19]  883 	ld	h,-9 (ix)
   4863 2B            [ 6]  884 	dec	hl
   4864 DD 75 F6      [19]  885 	ld	-10 (ix),l
   4867 DD 74 F7      [19]  886 	ld	-9 (ix),h
                            887 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   486A DD 7E F6      [19]  888 	ld	a,-10 (ix)
                            889 ;src/game/game.c:186: drawWorld(ulx, uly);
   486D DD 77 FC      [19]  890 	ld	-4 (ix), a
   4870 F5            [11]  891 	push	af
   4871 33            [ 6]  892 	inc	sp
   4872 DD 7E FB      [19]  893 	ld	a,-5 (ix)
   4875 F5            [11]  894 	push	af
   4876 33            [ 6]  895 	inc	sp
   4877 CD C8 55      [17]  896 	call	_drawWorld
   487A F1            [10]  897 	pop	af
                            898 ;src/game/game.c:191: for(i=0; i<5000; i++) {}
   487B                     899 00210$:
   487B DD 36 F9 88   [19]  900 	ld	-7 (ix),#0x88
   487F DD 36 FA 13   [19]  901 	ld	-6 (ix),#0x13
   4883                     902 00186$:
   4883 DD 6E F9      [19]  903 	ld	l,-7 (ix)
   4886 DD 66 FA      [19]  904 	ld	h,-6 (ix)
   4889 2B            [ 6]  905 	dec	hl
   488A DD 75 F9      [19]  906 	ld	-7 (ix),l
   488D DD 74 FA      [19]  907 	ld	-6 (ix), h
   4890 7C            [ 4]  908 	ld	a, h
   4891 DD B6 F9      [19]  909 	or	a,-7 (ix)
   4894 20 ED         [12]  910 	jr	NZ,00186$
   4896 C3 F7 4B      [10]  911 	jp	00180$
   4899                     912 00179$:
                            913 ;src/game/game.c:194: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4899 21 00 04      [10]  914 	ld	hl,#0x0400
   489C CD 24 68      [17]  915 	call	_cpct_isKeyPressed
   489F 7D            [ 4]  916 	ld	a,l
   48A0 B7            [ 4]  917 	or	a, a
   48A1 CA 25 49      [10]  918 	jp	Z,00176$
                            919 ;src/game/game.c:196: drawTile(ulx, uly, xCursor, yCursor);
   48A4 DD 7E FF      [19]  920 	ld	a,-1 (ix)
   48A7 F5            [11]  921 	push	af
   48A8 33            [ 6]  922 	inc	sp
   48A9 DD 7E FD      [19]  923 	ld	a,-3 (ix)
   48AC F5            [11]  924 	push	af
   48AD 33            [ 6]  925 	inc	sp
   48AE DD 7E FC      [19]  926 	ld	a,-4 (ix)
   48B1 F5            [11]  927 	push	af
   48B2 33            [ 6]  928 	inc	sp
   48B3 DD 7E FB      [19]  929 	ld	a,-5 (ix)
   48B6 F5            [11]  930 	push	af
   48B7 33            [ 6]  931 	inc	sp
   48B8 CD 07 53      [17]  932 	call	_drawTile
   48BB F1            [10]  933 	pop	af
   48BC F1            [10]  934 	pop	af
                            935 ;src/game/game.c:197: yCursor+=1;
   48BD DD 34 F4      [23]  936 	inc	-12 (ix)
   48C0 20 03         [12]  937 	jr	NZ,00388$
   48C2 DD 34 F5      [23]  938 	inc	-11 (ix)
   48C5                     939 00388$:
                            940 ;src/game/game.c:198: if(yCursor>NBTILE_H-1)
   48C5 3E 0B         [ 7]  941 	ld	a,#0x0B
   48C7 DD BE F4      [19]  942 	cp	a, -12 (ix)
   48CA 3E 00         [ 7]  943 	ld	a,#0x00
   48CC DD 9E F5      [19]  944 	sbc	a, -11 (ix)
   48CF E2 D4 48      [10]  945 	jp	PO, 00389$
   48D2 EE 80         [ 7]  946 	xor	a, #0x80
   48D4                     947 00389$:
   48D4 F2 07 49      [10]  948 	jp	P,00215$
                            949 ;src/game/game.c:200: yCursor=NBTILE_H-1;
   48D7 DD 36 F4 0B   [19]  950 	ld	-12 (ix),#0x0B
   48DB DD 36 F5 00   [19]  951 	ld	-11 (ix),#0x00
                            952 ;src/game/game.c:201: if(uly<HEIGHT-NBTILE_H)
   48DF DD 7E F6      [19]  953 	ld	a,-10 (ix)
   48E2 D6 24         [ 7]  954 	sub	a, #0x24
   48E4 DD 7E F7      [19]  955 	ld	a,-9 (ix)
   48E7 17            [ 4]  956 	rla
   48E8 3F            [ 4]  957 	ccf
   48E9 1F            [ 4]  958 	rra
   48EA DE 80         [ 7]  959 	sbc	a, #0x80
   48EC 30 19         [12]  960 	jr	NC,00215$
                            961 ;src/game/game.c:203: uly+=1;
   48EE DD 34 F6      [23]  962 	inc	-10 (ix)
   48F1 20 03         [12]  963 	jr	NZ,00390$
   48F3 DD 34 F7      [23]  964 	inc	-9 (ix)
   48F6                     965 00390$:
                            966 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   48F6 DD 7E F6      [19]  967 	ld	a,-10 (ix)
                            968 ;src/game/game.c:204: drawWorld(ulx, uly);
   48F9 DD 77 FC      [19]  969 	ld	-4 (ix), a
   48FC F5            [11]  970 	push	af
   48FD 33            [ 6]  971 	inc	sp
   48FE DD 7E FB      [19]  972 	ld	a,-5 (ix)
   4901 F5            [11]  973 	push	af
   4902 33            [ 6]  974 	inc	sp
   4903 CD C8 55      [17]  975 	call	_drawWorld
   4906 F1            [10]  976 	pop	af
                            977 ;src/game/game.c:209: for(i=0; i<5000; i++) {}
   4907                     978 00215$:
   4907 DD 36 F9 88   [19]  979 	ld	-7 (ix),#0x88
   490B DD 36 FA 13   [19]  980 	ld	-6 (ix),#0x13
   490F                     981 00189$:
   490F DD 6E F9      [19]  982 	ld	l,-7 (ix)
   4912 DD 66 FA      [19]  983 	ld	h,-6 (ix)
   4915 2B            [ 6]  984 	dec	hl
   4916 DD 75 F9      [19]  985 	ld	-7 (ix),l
   4919 DD 74 FA      [19]  986 	ld	-6 (ix), h
   491C 7C            [ 4]  987 	ld	a, h
   491D DD B6 F9      [19]  988 	or	a,-7 (ix)
   4920 20 ED         [12]  989 	jr	NZ,00189$
   4922 C3 F7 4B      [10]  990 	jp	00180$
   4925                     991 00176$:
                            992 ;src/game/game.c:212: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   4925 21 01 01      [10]  993 	ld	hl,#0x0101
   4928 CD 24 68      [17]  994 	call	_cpct_isKeyPressed
   492B 7D            [ 4]  995 	ld	a,l
   492C B7            [ 4]  996 	or	a, a
   492D 28 6F         [12]  997 	jr	Z,00173$
                            998 ;src/game/game.c:214: drawTile(ulx, uly, xCursor, yCursor);
   492F DD 7E FF      [19]  999 	ld	a,-1 (ix)
   4932 F5            [11] 1000 	push	af
   4933 33            [ 6] 1001 	inc	sp
   4934 DD 7E FD      [19] 1002 	ld	a,-3 (ix)
   4937 F5            [11] 1003 	push	af
   4938 33            [ 6] 1004 	inc	sp
   4939 DD 7E FC      [19] 1005 	ld	a,-4 (ix)
   493C F5            [11] 1006 	push	af
   493D 33            [ 6] 1007 	inc	sp
   493E DD 7E FB      [19] 1008 	ld	a,-5 (ix)
   4941 F5            [11] 1009 	push	af
   4942 33            [ 6] 1010 	inc	sp
   4943 CD 07 53      [17] 1011 	call	_drawTile
   4946 F1            [10] 1012 	pop	af
   4947 F1            [10] 1013 	pop	af
                           1014 ;src/game/game.c:215: xCursor-=1;
   4948 DD 6E F0      [19] 1015 	ld	l,-16 (ix)
   494B DD 66 F1      [19] 1016 	ld	h,-15 (ix)
   494E 2B            [ 6] 1017 	dec	hl
   494F DD 75 F0      [19] 1018 	ld	-16 (ix),l
   4952 DD 74 F1      [19] 1019 	ld	-15 (ix),h
                           1020 ;src/game/game.c:216: if(xCursor<0)
   4955 DD CB F1 7E   [20] 1021 	bit	7, -15 (ix)
   4959 28 38         [12] 1022 	jr	Z,00220$
                           1023 ;src/game/game.c:218: xCursor=0;
   495B DD 36 F0 00   [19] 1024 	ld	-16 (ix),#0x00
   495F DD 36 F1 00   [19] 1025 	ld	-15 (ix),#0x00
                           1026 ;src/game/game.c:219: if(ulx>0)
   4963 AF            [ 4] 1027 	xor	a, a
   4964 DD BE F2      [19] 1028 	cp	a, -14 (ix)
   4967 DD 9E F3      [19] 1029 	sbc	a, -13 (ix)
   496A E2 6F 49      [10] 1030 	jp	PO, 00391$
   496D EE 80         [ 7] 1031 	xor	a, #0x80
   496F                    1032 00391$:
   496F F2 93 49      [10] 1033 	jp	P,00220$
                           1034 ;src/game/game.c:221: ulx-=1;
   4972 DD 6E F2      [19] 1035 	ld	l,-14 (ix)
   4975 DD 66 F3      [19] 1036 	ld	h,-13 (ix)
   4978 2B            [ 6] 1037 	dec	hl
   4979 DD 75 F2      [19] 1038 	ld	-14 (ix),l
   497C DD 74 F3      [19] 1039 	ld	-13 (ix),h
                           1040 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   497F DD 7E F2      [19] 1041 	ld	a,-14 (ix)
   4982 DD 77 FB      [19] 1042 	ld	-5 (ix),a
                           1043 ;src/game/game.c:222: drawWorld(ulx, uly);
   4985 DD 7E FC      [19] 1044 	ld	a,-4 (ix)
   4988 F5            [11] 1045 	push	af
   4989 33            [ 6] 1046 	inc	sp
   498A DD 7E FB      [19] 1047 	ld	a,-5 (ix)
   498D F5            [11] 1048 	push	af
   498E 33            [ 6] 1049 	inc	sp
   498F CD C8 55      [17] 1050 	call	_drawWorld
   4992 F1            [10] 1051 	pop	af
                           1052 ;src/game/game.c:227: for(i=0; i<14000; i++) {}
   4993                    1053 00220$:
   4993 21 B0 36      [10] 1054 	ld	hl,#0x36B0
   4996                    1055 00192$:
   4996 2B            [ 6] 1056 	dec	hl
   4997 7C            [ 4] 1057 	ld	a,h
   4998 B5            [ 4] 1058 	or	a,l
   4999 20 FB         [12] 1059 	jr	NZ,00192$
   499B C3 F7 4B      [10] 1060 	jp	00180$
   499E                    1061 00173$:
                           1062 ;src/game/game.c:230: else if ( cpct_isKeyPressed(Key_CursorRight) )
   499E 21 00 02      [10] 1063 	ld	hl,#0x0200
   49A1 CD 24 68      [17] 1064 	call	_cpct_isKeyPressed
   49A4 7D            [ 4] 1065 	ld	a,l
   49A5 B7            [ 4] 1066 	or	a, a
   49A6 28 71         [12] 1067 	jr	Z,00170$
                           1068 ;src/game/game.c:232: drawTile(ulx, uly, xCursor, yCursor);
   49A8 DD 7E FF      [19] 1069 	ld	a,-1 (ix)
   49AB F5            [11] 1070 	push	af
   49AC 33            [ 6] 1071 	inc	sp
   49AD DD 7E FD      [19] 1072 	ld	a,-3 (ix)
   49B0 F5            [11] 1073 	push	af
   49B1 33            [ 6] 1074 	inc	sp
   49B2 DD 7E FC      [19] 1075 	ld	a,-4 (ix)
   49B5 F5            [11] 1076 	push	af
   49B6 33            [ 6] 1077 	inc	sp
   49B7 DD 7E FB      [19] 1078 	ld	a,-5 (ix)
   49BA F5            [11] 1079 	push	af
   49BB 33            [ 6] 1080 	inc	sp
   49BC CD 07 53      [17] 1081 	call	_drawTile
   49BF F1            [10] 1082 	pop	af
   49C0 F1            [10] 1083 	pop	af
                           1084 ;src/game/game.c:233: xCursor+=1;
   49C1 DD 34 F0      [23] 1085 	inc	-16 (ix)
   49C4 20 03         [12] 1086 	jr	NZ,00392$
   49C6 DD 34 F1      [23] 1087 	inc	-15 (ix)
   49C9                    1088 00392$:
                           1089 ;src/game/game.c:234: if(xCursor>NBTILE_W-1)
   49C9 3E 13         [ 7] 1090 	ld	a,#0x13
   49CB DD BE F0      [19] 1091 	cp	a, -16 (ix)
   49CE 3E 00         [ 7] 1092 	ld	a,#0x00
   49D0 DD 9E F1      [19] 1093 	sbc	a, -15 (ix)
   49D3 E2 D8 49      [10] 1094 	jp	PO, 00393$
   49D6 EE 80         [ 7] 1095 	xor	a, #0x80
   49D8                    1096 00393$:
   49D8 F2 0E 4A      [10] 1097 	jp	P,00225$
                           1098 ;src/game/game.c:236: xCursor=NBTILE_W-1;
   49DB DD 36 F0 13   [19] 1099 	ld	-16 (ix),#0x13
   49DF DD 36 F1 00   [19] 1100 	ld	-15 (ix),#0x00
                           1101 ;src/game/game.c:237: if(ulx<WIDTH-NBTILE_W)
   49E3 DD 7E F2      [19] 1102 	ld	a,-14 (ix)
   49E6 D6 3C         [ 7] 1103 	sub	a, #0x3C
   49E8 DD 7E F3      [19] 1104 	ld	a,-13 (ix)
   49EB 17            [ 4] 1105 	rla
   49EC 3F            [ 4] 1106 	ccf
   49ED 1F            [ 4] 1107 	rra
   49EE DE 80         [ 7] 1108 	sbc	a, #0x80
   49F0 30 1C         [12] 1109 	jr	NC,00225$
                           1110 ;src/game/game.c:239: ulx+=1;
   49F2 DD 34 F2      [23] 1111 	inc	-14 (ix)
   49F5 20 03         [12] 1112 	jr	NZ,00394$
   49F7 DD 34 F3      [23] 1113 	inc	-13 (ix)
   49FA                    1114 00394$:
                           1115 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   49FA DD 7E F2      [19] 1116 	ld	a,-14 (ix)
   49FD DD 77 FB      [19] 1117 	ld	-5 (ix),a
                           1118 ;src/game/game.c:240: drawWorld(ulx, uly);
   4A00 DD 7E FC      [19] 1119 	ld	a,-4 (ix)
   4A03 F5            [11] 1120 	push	af
   4A04 33            [ 6] 1121 	inc	sp
   4A05 DD 7E FB      [19] 1122 	ld	a,-5 (ix)
   4A08 F5            [11] 1123 	push	af
   4A09 33            [ 6] 1124 	inc	sp
   4A0A CD C8 55      [17] 1125 	call	_drawWorld
   4A0D F1            [10] 1126 	pop	af
                           1127 ;src/game/game.c:245: for(i=0; i<14000; i++) {}
   4A0E                    1128 00225$:
   4A0E 21 B0 36      [10] 1129 	ld	hl,#0x36B0
   4A11                    1130 00195$:
   4A11 2B            [ 6] 1131 	dec	hl
   4A12 7C            [ 4] 1132 	ld	a,h
   4A13 B5            [ 4] 1133 	or	a,l
   4A14 20 FB         [12] 1134 	jr	NZ,00195$
   4A16 C3 F7 4B      [10] 1135 	jp	00180$
   4A19                    1136 00170$:
                           1137 ;src/game/game.c:249: else if ( cpct_isKeyPressed(Key_Space) )
   4A19 21 05 80      [10] 1138 	ld	hl,#0x8005
   4A1C CD 24 68      [17] 1139 	call	_cpct_isKeyPressed
   4A1F 7D            [ 4] 1140 	ld	a,l
   4A20 B7            [ 4] 1141 	or	a, a
   4A21 CA 9F 4A      [10] 1142 	jp	Z,00167$
                           1143 ;src/game/game.c:251: if(CURSOR_MODE==T_SSNS)
   4A24 3A 7C 7B      [13] 1144 	ld	a,(#_CURSOR_MODE + 0)
   4A27 3D            [ 4] 1145 	dec	a
   4A28 20 07         [12] 1146 	jr	NZ,00143$
                           1147 ;src/game/game.c:252: CURSOR_MODE=T_SSEW;
   4A2A 21 7C 7B      [10] 1148 	ld	hl,#_CURSOR_MODE + 0
   4A2D 36 02         [10] 1149 	ld	(hl), #0x02
   4A2F 18 63         [12] 1150 	jr	00237$
   4A31                    1151 00143$:
                           1152 ;src/game/game.c:253: else if(CURSOR_MODE==T_SSEW)
   4A31 3A 7C 7B      [13] 1153 	ld	a,(#_CURSOR_MODE + 0)
   4A34 D6 02         [ 7] 1154 	sub	a, #0x02
   4A36 20 07         [12] 1155 	jr	NZ,00140$
                           1156 ;src/game/game.c:254: CURSOR_MODE=T_SSNS;
   4A38 21 7C 7B      [10] 1157 	ld	hl,#_CURSOR_MODE + 0
   4A3B 36 01         [10] 1158 	ld	(hl), #0x01
   4A3D 18 55         [12] 1159 	jr	00237$
   4A3F                    1160 00140$:
                           1161 ;src/game/game.c:255: else if(CURSOR_MODE==T_SMNS)
   4A3F 3A 7C 7B      [13] 1162 	ld	a,(#_CURSOR_MODE + 0)
   4A42 D6 03         [ 7] 1163 	sub	a, #0x03
   4A44 20 07         [12] 1164 	jr	NZ,00137$
                           1165 ;src/game/game.c:256: CURSOR_MODE=T_SMEW;
   4A46 21 7C 7B      [10] 1166 	ld	hl,#_CURSOR_MODE + 0
   4A49 36 04         [10] 1167 	ld	(hl), #0x04
   4A4B 18 47         [12] 1168 	jr	00237$
   4A4D                    1169 00137$:
                           1170 ;src/game/game.c:257: else if(CURSOR_MODE==T_SMEW)
   4A4D 3A 7C 7B      [13] 1171 	ld	a,(#_CURSOR_MODE + 0)
   4A50 D6 04         [ 7] 1172 	sub	a, #0x04
   4A52 20 07         [12] 1173 	jr	NZ,00134$
                           1174 ;src/game/game.c:258: CURSOR_MODE=T_SMNS;
   4A54 21 7C 7B      [10] 1175 	ld	hl,#_CURSOR_MODE + 0
   4A57 36 03         [10] 1176 	ld	(hl), #0x03
   4A59 18 39         [12] 1177 	jr	00237$
   4A5B                    1178 00134$:
                           1179 ;src/game/game.c:259: else if(CURSOR_MODE==T_SLNS)
   4A5B 3A 7C 7B      [13] 1180 	ld	a,(#_CURSOR_MODE + 0)
   4A5E D6 05         [ 7] 1181 	sub	a, #0x05
   4A60 20 07         [12] 1182 	jr	NZ,00131$
                           1183 ;src/game/game.c:260: CURSOR_MODE=T_SLEW;
   4A62 21 7C 7B      [10] 1184 	ld	hl,#_CURSOR_MODE + 0
   4A65 36 06         [10] 1185 	ld	(hl), #0x06
   4A67 18 2B         [12] 1186 	jr	00237$
   4A69                    1187 00131$:
                           1188 ;src/game/game.c:261: else if(CURSOR_MODE==T_SLEW)
   4A69 3A 7C 7B      [13] 1189 	ld	a,(#_CURSOR_MODE + 0)
   4A6C D6 06         [ 7] 1190 	sub	a, #0x06
   4A6E 20 07         [12] 1191 	jr	NZ,00128$
                           1192 ;src/game/game.c:262: CURSOR_MODE=T_SLNS;
   4A70 21 7C 7B      [10] 1193 	ld	hl,#_CURSOR_MODE + 0
   4A73 36 05         [10] 1194 	ld	(hl), #0x05
   4A75 18 1D         [12] 1195 	jr	00237$
   4A77                    1196 00128$:
                           1197 ;src/game/game.c:263: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   4A77 3A 7C 7B      [13] 1198 	ld	a,(#_CURSOR_MODE + 0)
   4A7A FE 07         [ 7] 1199 	cp	a,#0x07
   4A7C 38 0A         [12] 1200 	jr	C,00124$
   4A7E D6 10         [ 7] 1201 	sub	a, #0x10
   4A80 30 06         [12] 1202 	jr	NC,00124$
                           1203 ;src/game/game.c:264: CURSOR_MODE+=1;
   4A82 21 7C 7B      [10] 1204 	ld	hl, #_CURSOR_MODE+0
   4A85 34            [11] 1205 	inc	(hl)
   4A86 18 0C         [12] 1206 	jr	00237$
   4A88                    1207 00124$:
                           1208 ;src/game/game.c:265: else if(CURSOR_MODE==T_RNSW)
   4A88 3A 7C 7B      [13] 1209 	ld	a,(#_CURSOR_MODE + 0)
   4A8B D6 10         [ 7] 1210 	sub	a, #0x10
   4A8D 20 05         [12] 1211 	jr	NZ,00237$
                           1212 ;src/game/game.c:266: CURSOR_MODE=T_REW;
   4A8F 21 7C 7B      [10] 1213 	ld	hl,#_CURSOR_MODE + 0
   4A92 36 07         [10] 1214 	ld	(hl), #0x07
                           1215 ;src/game/game.c:268: for(i=0; i<14000; i++) {}
   4A94                    1216 00237$:
   4A94 21 B0 36      [10] 1217 	ld	hl,#0x36B0
   4A97                    1218 00198$:
   4A97 2B            [ 6] 1219 	dec	hl
   4A98 7C            [ 4] 1220 	ld	a,h
   4A99 B5            [ 4] 1221 	or	a,l
   4A9A 20 FB         [12] 1222 	jr	NZ,00198$
   4A9C C3 F7 4B      [10] 1223 	jp	00180$
   4A9F                    1224 00167$:
                           1225 ;src/game/game.c:271: else if ( cpct_isKeyPressed(Key_Esc) )
   4A9F 21 08 04      [10] 1226 	ld	hl,#0x0408
   4AA2 CD 24 68      [17] 1227 	call	_cpct_isKeyPressed
   4AA5 7D            [ 4] 1228 	ld	a,l
   4AA6 B7            [ 4] 1229 	or	a, a
   4AA7 CA 3E 4B      [10] 1230 	jp	Z,00164$
                           1231 ;src/game/game.c:274: if(CURSOR_MODE==NONE)
   4AAA 3A 7C 7B      [13] 1232 	ld	a,(#_CURSOR_MODE + 0)
   4AAD B7            [ 4] 1233 	or	a, a
   4AAE 20 62         [12] 1234 	jr	NZ,00150$
                           1235 ;src/game/game.c:277: const char *txtWindowQuit[] = { 
   4AB0 21 00 00      [10] 1236 	ld	hl,#0x0000
   4AB3 39            [11] 1237 	add	hl,sp
   4AB4 5D            [ 4] 1238 	ld	e,l
   4AB5 54            [ 4] 1239 	ld	d,h
   4AB6 36 23         [10] 1240 	ld	(hl),#<(___str_30)
   4AB8 23            [ 6] 1241 	inc	hl
   4AB9 36 4C         [10] 1242 	ld	(hl),#>(___str_30)
   4ABB 6B            [ 4] 1243 	ld	l, e
   4ABC 62            [ 4] 1244 	ld	h, d
   4ABD 23            [ 6] 1245 	inc	hl
   4ABE 23            [ 6] 1246 	inc	hl
   4ABF 36 31         [10] 1247 	ld	(hl),#<(___str_31)
   4AC1 23            [ 6] 1248 	inc	hl
   4AC2 36 4C         [10] 1249 	ld	(hl),#>(___str_31)
   4AC4 21 04 00      [10] 1250 	ld	hl,#0x0004
   4AC7 19            [11] 1251 	add	hl,de
   4AC8 36 32         [10] 1252 	ld	(hl),#<(___str_32)
   4ACA 23            [ 6] 1253 	inc	hl
   4ACB 36 4C         [10] 1254 	ld	(hl),#>(___str_32)
                           1255 ;src/game/game.c:283: putM2();
   4ACD D5            [11] 1256 	push	de
   4ACE CD 28 56      [17] 1257 	call	_putM2
   4AD1 D1            [10] 1258 	pop	de
                           1259 ;src/game/game.c:284: if(	drawWindow(txtWindowQuit,3,1) == 1)
   4AD2 21 03 01      [10] 1260 	ld	hl,#0x0103
   4AD5 E5            [11] 1261 	push	hl
   4AD6 D5            [11] 1262 	push	de
   4AD7 CD 2C 5B      [17] 1263 	call	_drawWindow
   4ADA F1            [10] 1264 	pop	af
   4ADB F1            [10] 1265 	pop	af
   4ADC 2D            [ 4] 1266 	dec	l
   4ADD 20 06         [12] 1267 	jr	NZ,00147$
                           1268 ;src/game/game.c:285: exit=1;
   4ADF DD 36 F8 01   [19] 1269 	ld	-8 (ix),#0x01
   4AE3 18 4E         [12] 1270 	jr	00242$
   4AE5                    1271 00147$:
                           1272 ;src/game/game.c:288: putM1();
   4AE5 CD 14 56      [17] 1273 	call	_putM1
                           1274 ;src/game/game.c:289: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   4AE8 21 00 00      [10] 1275 	ld	hl,#0x0000
   4AEB E5            [11] 1276 	push	hl
   4AEC 2E 00         [ 7] 1277 	ld	l, #0x00
   4AEE E5            [11] 1278 	push	hl
   4AEF CD 82 6A      [17] 1279 	call	_cpct_px2byteM1
   4AF2 F1            [10] 1280 	pop	af
   4AF3 F1            [10] 1281 	pop	af
   4AF4 65            [ 4] 1282 	ld	h,l
   4AF5 01 00 40      [10] 1283 	ld	bc,#0x4000
   4AF8 C5            [11] 1284 	push	bc
   4AF9 E5            [11] 1285 	push	hl
   4AFA 33            [ 6] 1286 	inc	sp
   4AFB 21 00 C0      [10] 1287 	ld	hl,#0xC000
   4AFE E5            [11] 1288 	push	hl
   4AFF CD 74 6A      [17] 1289 	call	_cpct_memset
                           1290 ;src/game/game.c:290: drawWorld(ulx, uly);
   4B02 DD 7E FC      [19] 1291 	ld	a,-4 (ix)
   4B05 F5            [11] 1292 	push	af
   4B06 33            [ 6] 1293 	inc	sp
   4B07 DD 7E FB      [19] 1294 	ld	a,-5 (ix)
   4B0A F5            [11] 1295 	push	af
   4B0B 33            [ 6] 1296 	inc	sp
   4B0C CD C8 55      [17] 1297 	call	_drawWorld
   4B0F F1            [10] 1298 	pop	af
   4B10 18 21         [12] 1299 	jr	00242$
   4B12                    1300 00150$:
                           1301 ;src/game/game.c:295: CURSOR_MODE=NONE;
   4B12 FD 21 7C 7B   [14] 1302 	ld	iy,#_CURSOR_MODE
   4B16 FD 36 00 00   [19] 1303 	ld	0 (iy),#0x00
                           1304 ;src/game/game.c:296: drawTile(ulx, uly, xCursor, yCursor);
   4B1A DD 7E FF      [19] 1305 	ld	a,-1 (ix)
   4B1D F5            [11] 1306 	push	af
   4B1E 33            [ 6] 1307 	inc	sp
   4B1F DD 7E FD      [19] 1308 	ld	a,-3 (ix)
   4B22 F5            [11] 1309 	push	af
   4B23 33            [ 6] 1310 	inc	sp
   4B24 DD 7E FC      [19] 1311 	ld	a,-4 (ix)
   4B27 F5            [11] 1312 	push	af
   4B28 33            [ 6] 1313 	inc	sp
   4B29 DD 7E FB      [19] 1314 	ld	a,-5 (ix)
   4B2C F5            [11] 1315 	push	af
   4B2D 33            [ 6] 1316 	inc	sp
   4B2E CD 07 53      [17] 1317 	call	_drawTile
   4B31 F1            [10] 1318 	pop	af
   4B32 F1            [10] 1319 	pop	af
                           1320 ;src/game/game.c:300: for(i=0; i<14000; i++) {}
   4B33                    1321 00242$:
   4B33 01 B0 36      [10] 1322 	ld	bc,#0x36B0
   4B36                    1323 00201$:
   4B36 0B            [ 6] 1324 	dec	bc
   4B37 78            [ 4] 1325 	ld	a,b
   4B38 B1            [ 4] 1326 	or	a,c
   4B39 20 FB         [12] 1327 	jr	NZ,00201$
   4B3B C3 F7 4B      [10] 1328 	jp	00180$
   4B3E                    1329 00164$:
                           1330 ;src/game/game.c:303: else if ( cpct_isKeyPressed(Key_Return) )
   4B3E 21 02 04      [10] 1331 	ld	hl,#0x0402
   4B41 CD 24 68      [17] 1332 	call	_cpct_isKeyPressed
   4B44 7D            [ 4] 1333 	ld	a,l
   4B45 B7            [ 4] 1334 	or	a, a
   4B46 CA F7 4B      [10] 1335 	jp	Z,00180$
                           1336 ;src/game/game.c:306: if(CURSOR_MODE==NONE)
   4B49 3A 7C 7B      [13] 1337 	ld	a,(#_CURSOR_MODE + 0)
   4B4C B7            [ 4] 1338 	or	a, a
   4B4D 20 42         [12] 1339 	jr	NZ,00158$
                           1340 ;src/game/game.c:308: menuTile(ulx+xCursor, uly+yCursor);
   4B4F DD 7E F6      [19] 1341 	ld	a, -10 (ix)
   4B52 DD 6E F4      [19] 1342 	ld	l, -12 (ix)
   4B55 85            [ 4] 1343 	add	a, l
   4B56 67            [ 4] 1344 	ld	h,a
   4B57 DD 6E F2      [19] 1345 	ld	l,-14 (ix)
   4B5A DD 56 F0      [19] 1346 	ld	d,-16 (ix)
   4B5D 7D            [ 4] 1347 	ld	a,l
   4B5E 82            [ 4] 1348 	add	a, d
   4B5F E5            [11] 1349 	push	hl
   4B60 33            [ 6] 1350 	inc	sp
   4B61 F5            [11] 1351 	push	af
   4B62 33            [ 6] 1352 	inc	sp
   4B63 CD B4 45      [17] 1353 	call	_menuTile
   4B66 F1            [10] 1354 	pop	af
                           1355 ;src/game/game.c:309: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   4B67 21 00 00      [10] 1356 	ld	hl,#0x0000
   4B6A E5            [11] 1357 	push	hl
   4B6B 2E 00         [ 7] 1358 	ld	l, #0x00
   4B6D E5            [11] 1359 	push	hl
   4B6E CD 82 6A      [17] 1360 	call	_cpct_px2byteM1
   4B71 F1            [10] 1361 	pop	af
   4B72 F1            [10] 1362 	pop	af
   4B73 65            [ 4] 1363 	ld	h,l
   4B74 01 00 40      [10] 1364 	ld	bc,#0x4000
   4B77 C5            [11] 1365 	push	bc
   4B78 E5            [11] 1366 	push	hl
   4B79 33            [ 6] 1367 	inc	sp
   4B7A 21 00 C0      [10] 1368 	ld	hl,#0xC000
   4B7D E5            [11] 1369 	push	hl
   4B7E CD 74 6A      [17] 1370 	call	_cpct_memset
                           1371 ;src/game/game.c:310: drawWorld(ulx, uly);
   4B81 DD 7E FC      [19] 1372 	ld	a,-4 (ix)
   4B84 F5            [11] 1373 	push	af
   4B85 33            [ 6] 1374 	inc	sp
   4B86 DD 7E FB      [19] 1375 	ld	a,-5 (ix)
   4B89 F5            [11] 1376 	push	af
   4B8A 33            [ 6] 1377 	inc	sp
   4B8B CD C8 55      [17] 1378 	call	_drawWorld
   4B8E F1            [10] 1379 	pop	af
   4B8F 18 4B         [12] 1380 	jr	00248$
   4B91                    1381 00158$:
                           1382 ;src/game/game.c:313: else if(CURSOR_MODE>=T_SSNS)
   4B91 3A 7C 7B      [13] 1383 	ld	a,(#_CURSOR_MODE + 0)
   4B94 D6 01         [ 7] 1384 	sub	a, #0x01
   4B96 38 44         [12] 1385 	jr	C,00248$
                           1386 ;src/game/game.c:315: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   4B98 DD 7E F2      [19] 1387 	ld	a,-14 (ix)
   4B9B DD 86 F0      [19] 1388 	add	a, -16 (ix)
   4B9E 5F            [ 4] 1389 	ld	e,a
   4B9F DD 7E F3      [19] 1390 	ld	a,-13 (ix)
   4BA2 DD 8E F1      [19] 1391 	adc	a, -15 (ix)
   4BA5 57            [ 4] 1392 	ld	d,a
   4BA6 DD 7E F6      [19] 1393 	ld	a,-10 (ix)
   4BA9 DD 86 F4      [19] 1394 	add	a, -12 (ix)
   4BAC 6F            [ 4] 1395 	ld	l,a
   4BAD DD 7E F7      [19] 1396 	ld	a,-9 (ix)
   4BB0 DD 8E F5      [19] 1397 	adc	a, -11 (ix)
   4BB3 67            [ 4] 1398 	ld	h,a
   4BB4 4D            [ 4] 1399 	ld	c, l
   4BB5 44            [ 4] 1400 	ld	b, h
   4BB6 29            [11] 1401 	add	hl, hl
   4BB7 29            [11] 1402 	add	hl, hl
   4BB8 09            [11] 1403 	add	hl, bc
   4BB9 29            [11] 1404 	add	hl, hl
   4BBA 29            [11] 1405 	add	hl, hl
   4BBB 29            [11] 1406 	add	hl, hl
   4BBC 29            [11] 1407 	add	hl, hl
   4BBD 19            [11] 1408 	add	hl,de
   4BBE 3E 7C         [ 7] 1409 	ld	a,#<(_p_world)
   4BC0 85            [ 4] 1410 	add	a, l
   4BC1 5F            [ 4] 1411 	ld	e,a
   4BC2 3E 6C         [ 7] 1412 	ld	a,#>(_p_world)
   4BC4 8C            [ 4] 1413 	adc	a, h
   4BC5 57            [ 4] 1414 	ld	d,a
   4BC6 3A 7C 7B      [13] 1415 	ld	a,(#_CURSOR_MODE + 0)
   4BC9 C6 09         [ 7] 1416 	add	a, #0x09
   4BCB 12            [ 7] 1417 	ld	(de),a
                           1418 ;src/game/game.c:318: if(CURSOR_MODE<=T_SLEW)
   4BCC 3E 06         [ 7] 1419 	ld	a,#0x06
   4BCE FD 21 7C 7B   [14] 1420 	ld	iy,#_CURSOR_MODE
   4BD2 FD 96 00      [19] 1421 	sub	a, 0 (iy)
   4BD5 38 05         [12] 1422 	jr	C,00248$
                           1423 ;src/game/game.c:319: CURSOR_MODE=NONE;
   4BD7 21 7C 7B      [10] 1424 	ld	hl,#_CURSOR_MODE + 0
   4BDA 36 00         [10] 1425 	ld	(hl), #0x00
                           1426 ;src/game/game.c:323: for(i=0; i<14000; i++) {}
   4BDC                    1427 00248$:
   4BDC DD 36 F9 B0   [19] 1428 	ld	-7 (ix),#0xB0
   4BE0 DD 36 FA 36   [19] 1429 	ld	-6 (ix),#0x36
   4BE4                    1430 00204$:
   4BE4 DD 6E F9      [19] 1431 	ld	l,-7 (ix)
   4BE7 DD 66 FA      [19] 1432 	ld	h,-6 (ix)
   4BEA 2B            [ 6] 1433 	dec	hl
   4BEB DD 75 F9      [19] 1434 	ld	-7 (ix),l
   4BEE DD 74 FA      [19] 1435 	ld	-6 (ix), h
   4BF1 7C            [ 4] 1436 	ld	a, h
   4BF2 DD B6 F9      [19] 1437 	or	a,-7 (ix)
   4BF5 20 ED         [12] 1438 	jr	NZ,00204$
   4BF7                    1439 00180$:
                           1440 ;src/game/game.c:327: drawCursor(xCursor, yCursor, 0);
   4BF7 DD 56 F4      [19] 1441 	ld	d,-12 (ix)
   4BFA DD 46 F0      [19] 1442 	ld	b,-16 (ix)
   4BFD AF            [ 4] 1443 	xor	a, a
   4BFE F5            [11] 1444 	push	af
   4BFF 33            [ 6] 1445 	inc	sp
   4C00 D5            [11] 1446 	push	de
   4C01 33            [ 6] 1447 	inc	sp
   4C02 C5            [11] 1448 	push	bc
   4C03 33            [ 6] 1449 	inc	sp
   4C04 CD 6C 4C      [17] 1450 	call	_drawCursor
   4C07 F1            [10] 1451 	pop	af
   4C08 33            [ 6] 1452 	inc	sp
                           1453 ;src/game/game.c:328: drawScrolls(ulx, uly);
   4C09 DD 7E FC      [19] 1454 	ld	a,-4 (ix)
   4C0C F5            [11] 1455 	push	af
   4C0D 33            [ 6] 1456 	inc	sp
   4C0E DD 7E FB      [19] 1457 	ld	a,-5 (ix)
   4C11 F5            [11] 1458 	push	af
   4C12 33            [ 6] 1459 	inc	sp
   4C13 CD 2F 55      [17] 1460 	call	_drawScrolls
   4C16 F1            [10] 1461 	pop	af
                           1462 ;src/game/game.c:330: while(!exit);
   4C17 DD 7E F8      [19] 1463 	ld	a,-8 (ix)
   4C1A B7            [ 4] 1464 	or	a, a
   4C1B CA EF 47      [10] 1465 	jp	Z,00181$
   4C1E DD F9         [10] 1466 	ld	sp, ix
   4C20 DD E1         [14] 1467 	pop	ix
   4C22 C9            [10] 1468 	ret
   4C23                    1469 ___str_30:
   4C23 52 65 61 6C 6C 79  1470 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   4C30 00                 1471 	.db 0x00
   4C31                    1472 ___str_31:
   4C31 00                 1473 	.db 0x00
   4C32                    1474 ___str_32:
   4C32 50 72 65 73 73 20  1475 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   4C57 00                 1476 	.db 0x00
   4C58                    1477 ___str_33:
   4C58 47 65 6E 65 72 61  1478 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   4C6B 00                 1479 	.db 0x00
                           1480 	.area _CODE
                           1481 	.area _INITIALIZER
                           1482 	.area _CABS (ABS)
