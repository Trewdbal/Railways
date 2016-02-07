                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Feb  7 16:09:14 2016
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
   43D6                      68 _windowInfoTile::
   43D6 DD E5         [15]   69 	push	ix
   43D8 DD 21 00 00   [14]   70 	ld	ix,#0
   43DC DD 39         [15]   71 	add	ix,sp
   43DE 21 F8 FF      [10]   72 	ld	hl,#-8
   43E1 39            [11]   73 	add	hl,sp
   43E2 F9            [ 6]   74 	ld	sp,hl
                             75 ;src/game/game.c:7: switch(p_world[y*WIDTH+x])
   43E3 DD 4E 05      [19]   76 	ld	c,5 (ix)
   43E6 06 00         [ 7]   77 	ld	b,#0x00
   43E8 69            [ 4]   78 	ld	l, c
   43E9 60            [ 4]   79 	ld	h, b
   43EA 29            [11]   80 	add	hl, hl
   43EB 29            [11]   81 	add	hl, hl
   43EC 09            [11]   82 	add	hl, bc
   43ED 29            [11]   83 	add	hl, hl
   43EE 29            [11]   84 	add	hl, hl
   43EF 29            [11]   85 	add	hl, hl
   43F0 29            [11]   86 	add	hl, hl
   43F1 DD 5E 04      [19]   87 	ld	e,4 (ix)
   43F4 16 00         [ 7]   88 	ld	d,#0x00
   43F6 19            [11]   89 	add	hl,de
   43F7 11 99 6E      [10]   90 	ld	de,#_p_world
   43FA 19            [11]   91 	add	hl,de
   43FB 4E            [ 7]   92 	ld	c,(hl)
   43FC 3E 09         [ 7]   93 	ld	a,#0x09
   43FE 91            [ 4]   94 	sub	a, c
   43FF DA 30 45      [10]   95 	jp	C,00111$
   4402 59            [ 4]   96 	ld	e,c
   4403 16 00         [ 7]   97 	ld	d,#0x00
   4405 21 0C 44      [10]   98 	ld	hl,#00119$
   4408 19            [11]   99 	add	hl,de
   4409 19            [11]  100 	add	hl,de
   440A 19            [11]  101 	add	hl,de
   440B E9            [ 4]  102 	jp	(hl)
   440C                     103 00119$:
   440C C3 2A 44      [10]  104 	jp	00101$
   440F C3 2A 44      [10]  105 	jp	00102$
   4412 C3 56 44      [10]  106 	jp	00103$
   4415 C3 56 44      [10]  107 	jp	00104$
   4418 C3 56 44      [10]  108 	jp	00105$
   441B C3 82 44      [10]  109 	jp	00106$
   441E C3 82 44      [10]  110 	jp	00107$
   4421 C3 AE 44      [10]  111 	jp	00108$
   4424 C3 DA 44      [10]  112 	jp	00109$
   4427 C3 05 45      [10]  113 	jp	00110$
                            114 ;src/game/game.c:9: case GRASS1:
   442A                     115 00101$:
                            116 ;src/game/game.c:10: case GRASS2:
   442A                     117 00102$:
                            118 ;src/game/game.c:11: txtWindowInfoTile[0] = "Grassland";
   442A 21 00 00      [10]  119 	ld	hl,#0x0000
   442D 39            [11]  120 	add	hl,sp
   442E 5D            [ 4]  121 	ld	e,l
   442F 54            [ 4]  122 	ld	d,h
   4430 36 6B         [10]  123 	ld	(hl),#<(___str_0)
   4432 23            [ 6]  124 	inc	hl
   4433 36 45         [10]  125 	ld	(hl),#>(___str_0)
                            126 ;src/game/game.c:12: txtWindowInfoTile[1] = "";
   4435 6B            [ 4]  127 	ld	l, e
   4436 62            [ 4]  128 	ld	h, d
   4437 23            [ 6]  129 	inc	hl
   4438 23            [ 6]  130 	inc	hl
   4439 01 75 45      [10]  131 	ld	bc,#___str_1+0
   443C 71            [ 7]  132 	ld	(hl),c
   443D 23            [ 6]  133 	inc	hl
   443E 70            [ 7]  134 	ld	(hl),b
                            135 ;src/game/game.c:13: txtWindowInfoTile[2] = "Production: Nothing";
   443F 21 04 00      [10]  136 	ld	hl,#0x0004
   4442 19            [11]  137 	add	hl,de
   4443 01 76 45      [10]  138 	ld	bc,#___str_2+0
   4446 71            [ 7]  139 	ld	(hl),c
   4447 23            [ 6]  140 	inc	hl
   4448 70            [ 7]  141 	ld	(hl),b
                            142 ;src/game/game.c:14: txtWindowInfoTile[3] = "Demand: Nothing";
   4449 21 06 00      [10]  143 	ld	hl,#0x0006
   444C 19            [11]  144 	add	hl,de
   444D 11 8A 45      [10]  145 	ld	de,#___str_3+0
   4450 73            [ 7]  146 	ld	(hl),e
   4451 23            [ 6]  147 	inc	hl
   4452 72            [ 7]  148 	ld	(hl),d
                            149 ;src/game/game.c:15: break;
   4453 C3 59 45      [10]  150 	jp	00112$
                            151 ;src/game/game.c:16: case DWELLINGS1:
   4456                     152 00103$:
                            153 ;src/game/game.c:17: case DWELLINGS2:
   4456                     154 00104$:
                            155 ;src/game/game.c:18: case DWELLINGS3:
   4456                     156 00105$:
                            157 ;src/game/game.c:19: txtWindowInfoTile[0] = "City";
   4456 21 00 00      [10]  158 	ld	hl,#0x0000
   4459 39            [11]  159 	add	hl,sp
   445A 5D            [ 4]  160 	ld	e,l
   445B 54            [ 4]  161 	ld	d,h
   445C 36 9A         [10]  162 	ld	(hl),#<(___str_4)
   445E 23            [ 6]  163 	inc	hl
   445F 36 45         [10]  164 	ld	(hl),#>(___str_4)
                            165 ;src/game/game.c:20: txtWindowInfoTile[1] = "";
   4461 6B            [ 4]  166 	ld	l, e
   4462 62            [ 4]  167 	ld	h, d
   4463 23            [ 6]  168 	inc	hl
   4464 23            [ 6]  169 	inc	hl
   4465 01 75 45      [10]  170 	ld	bc,#___str_1+0
   4468 71            [ 7]  171 	ld	(hl),c
   4469 23            [ 6]  172 	inc	hl
   446A 70            [ 7]  173 	ld	(hl),b
                            174 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   446B 21 04 00      [10]  175 	ld	hl,#0x0004
   446E 19            [11]  176 	add	hl,de
   446F 01 9F 45      [10]  177 	ld	bc,#___str_5+0
   4472 71            [ 7]  178 	ld	(hl),c
   4473 23            [ 6]  179 	inc	hl
   4474 70            [ 7]  180 	ld	(hl),b
                            181 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4475 21 06 00      [10]  182 	ld	hl,#0x0006
   4478 19            [11]  183 	add	hl,de
   4479 11 BC 45      [10]  184 	ld	de,#___str_6+0
   447C 73            [ 7]  185 	ld	(hl),e
   447D 23            [ 6]  186 	inc	hl
   447E 72            [ 7]  187 	ld	(hl),d
                            188 ;src/game/game.c:23: break;
   447F C3 59 45      [10]  189 	jp	00112$
                            190 ;src/game/game.c:24: case FARM1:
   4482                     191 00106$:
                            192 ;src/game/game.c:25: case FARM2:
   4482                     193 00107$:
                            194 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   4482 21 00 00      [10]  195 	ld	hl,#0x0000
   4485 39            [11]  196 	add	hl,sp
   4486 5D            [ 4]  197 	ld	e,l
   4487 54            [ 4]  198 	ld	d,h
   4488 36 E1         [10]  199 	ld	(hl),#<(___str_7)
   448A 23            [ 6]  200 	inc	hl
   448B 36 45         [10]  201 	ld	(hl),#>(___str_7)
                            202 ;src/game/game.c:27: txtWindowInfoTile[1] = "";
   448D 6B            [ 4]  203 	ld	l, e
   448E 62            [ 4]  204 	ld	h, d
   448F 23            [ 6]  205 	inc	hl
   4490 23            [ 6]  206 	inc	hl
   4491 01 75 45      [10]  207 	ld	bc,#___str_1+0
   4494 71            [ 7]  208 	ld	(hl),c
   4495 23            [ 6]  209 	inc	hl
   4496 70            [ 7]  210 	ld	(hl),b
                            211 ;src/game/game.c:28: txtWindowInfoTile[2] = "Production: Cereal";
   4497 21 04 00      [10]  212 	ld	hl,#0x0004
   449A 19            [11]  213 	add	hl,de
   449B 01 E6 45      [10]  214 	ld	bc,#___str_8+0
   449E 71            [ 7]  215 	ld	(hl),c
   449F 23            [ 6]  216 	inc	hl
   44A0 70            [ 7]  217 	ld	(hl),b
                            218 ;src/game/game.c:29: txtWindowInfoTile[3] = "Demand: Nothing";
   44A1 21 06 00      [10]  219 	ld	hl,#0x0006
   44A4 19            [11]  220 	add	hl,de
   44A5 11 8A 45      [10]  221 	ld	de,#___str_3+0
   44A8 73            [ 7]  222 	ld	(hl),e
   44A9 23            [ 6]  223 	inc	hl
   44AA 72            [ 7]  224 	ld	(hl),d
                            225 ;src/game/game.c:30: break;
   44AB C3 59 45      [10]  226 	jp	00112$
                            227 ;src/game/game.c:31: case WATER:
   44AE                     228 00108$:
                            229 ;src/game/game.c:32: txtWindowInfoTile[0] = "Water";
   44AE 21 00 00      [10]  230 	ld	hl,#0x0000
   44B1 39            [11]  231 	add	hl,sp
   44B2 5D            [ 4]  232 	ld	e,l
   44B3 54            [ 4]  233 	ld	d,h
   44B4 36 F9         [10]  234 	ld	(hl),#<(___str_9)
   44B6 23            [ 6]  235 	inc	hl
   44B7 36 45         [10]  236 	ld	(hl),#>(___str_9)
                            237 ;src/game/game.c:33: txtWindowInfoTile[1] = "";
   44B9 6B            [ 4]  238 	ld	l, e
   44BA 62            [ 4]  239 	ld	h, d
   44BB 23            [ 6]  240 	inc	hl
   44BC 23            [ 6]  241 	inc	hl
   44BD 01 75 45      [10]  242 	ld	bc,#___str_1+0
   44C0 71            [ 7]  243 	ld	(hl),c
   44C1 23            [ 6]  244 	inc	hl
   44C2 70            [ 7]  245 	ld	(hl),b
                            246 ;src/game/game.c:34: txtWindowInfoTile[2] = "Production: Nothing";
   44C3 21 04 00      [10]  247 	ld	hl,#0x0004
   44C6 19            [11]  248 	add	hl,de
   44C7 01 76 45      [10]  249 	ld	bc,#___str_2+0
   44CA 71            [ 7]  250 	ld	(hl),c
   44CB 23            [ 6]  251 	inc	hl
   44CC 70            [ 7]  252 	ld	(hl),b
                            253 ;src/game/game.c:35: txtWindowInfoTile[3] = "Demand: Nothing";
   44CD 21 06 00      [10]  254 	ld	hl,#0x0006
   44D0 19            [11]  255 	add	hl,de
   44D1 11 8A 45      [10]  256 	ld	de,#___str_3+0
   44D4 73            [ 7]  257 	ld	(hl),e
   44D5 23            [ 6]  258 	inc	hl
   44D6 72            [ 7]  259 	ld	(hl),d
                            260 ;src/game/game.c:36: break;
   44D7 C3 59 45      [10]  261 	jp	00112$
                            262 ;src/game/game.c:37: case FOREST:
   44DA                     263 00109$:
                            264 ;src/game/game.c:38: txtWindowInfoTile[0] = "Forest";
   44DA 21 00 00      [10]  265 	ld	hl,#0x0000
   44DD 39            [11]  266 	add	hl,sp
   44DE 5D            [ 4]  267 	ld	e,l
   44DF 54            [ 4]  268 	ld	d,h
   44E0 36 FF         [10]  269 	ld	(hl),#<(___str_10)
   44E2 23            [ 6]  270 	inc	hl
   44E3 36 45         [10]  271 	ld	(hl),#>(___str_10)
                            272 ;src/game/game.c:39: txtWindowInfoTile[1] = "";
   44E5 6B            [ 4]  273 	ld	l, e
   44E6 62            [ 4]  274 	ld	h, d
   44E7 23            [ 6]  275 	inc	hl
   44E8 23            [ 6]  276 	inc	hl
   44E9 01 75 45      [10]  277 	ld	bc,#___str_1+0
   44EC 71            [ 7]  278 	ld	(hl),c
   44ED 23            [ 6]  279 	inc	hl
   44EE 70            [ 7]  280 	ld	(hl),b
                            281 ;src/game/game.c:40: txtWindowInfoTile[2] = "Production: Nothing";
   44EF 21 04 00      [10]  282 	ld	hl,#0x0004
   44F2 19            [11]  283 	add	hl,de
   44F3 01 76 45      [10]  284 	ld	bc,#___str_2+0
   44F6 71            [ 7]  285 	ld	(hl),c
   44F7 23            [ 6]  286 	inc	hl
   44F8 70            [ 7]  287 	ld	(hl),b
                            288 ;src/game/game.c:41: txtWindowInfoTile[3] = "Demand: Nothing";
   44F9 21 06 00      [10]  289 	ld	hl,#0x0006
   44FC 19            [11]  290 	add	hl,de
   44FD 11 8A 45      [10]  291 	ld	de,#___str_3+0
   4500 73            [ 7]  292 	ld	(hl),e
   4501 23            [ 6]  293 	inc	hl
   4502 72            [ 7]  294 	ld	(hl),d
                            295 ;src/game/game.c:42: break;
   4503 18 54         [12]  296 	jr	00112$
                            297 ;src/game/game.c:43: case LIVESTOCK:
   4505                     298 00110$:
                            299 ;src/game/game.c:44: txtWindowInfoTile[0] = "Livestock farming";
   4505 21 00 00      [10]  300 	ld	hl,#0x0000
   4508 39            [11]  301 	add	hl,sp
   4509 5D            [ 4]  302 	ld	e,l
   450A 54            [ 4]  303 	ld	d,h
   450B 36 06         [10]  304 	ld	(hl),#<(___str_11)
   450D 23            [ 6]  305 	inc	hl
   450E 36 46         [10]  306 	ld	(hl),#>(___str_11)
                            307 ;src/game/game.c:45: txtWindowInfoTile[1] = "";
   4510 6B            [ 4]  308 	ld	l, e
   4511 62            [ 4]  309 	ld	h, d
   4512 23            [ 6]  310 	inc	hl
   4513 23            [ 6]  311 	inc	hl
   4514 01 75 45      [10]  312 	ld	bc,#___str_1+0
   4517 71            [ 7]  313 	ld	(hl),c
   4518 23            [ 6]  314 	inc	hl
   4519 70            [ 7]  315 	ld	(hl),b
                            316 ;src/game/game.c:46: txtWindowInfoTile[2] = "Production: Livestock, wool";
   451A 21 04 00      [10]  317 	ld	hl,#0x0004
   451D 19            [11]  318 	add	hl,de
   451E 01 18 46      [10]  319 	ld	bc,#___str_12+0
   4521 71            [ 7]  320 	ld	(hl),c
   4522 23            [ 6]  321 	inc	hl
   4523 70            [ 7]  322 	ld	(hl),b
                            323 ;src/game/game.c:47: txtWindowInfoTile[3] = "Demand: Cereal";
   4524 21 06 00      [10]  324 	ld	hl,#0x0006
   4527 19            [11]  325 	add	hl,de
   4528 11 34 46      [10]  326 	ld	de,#___str_13+0
   452B 73            [ 7]  327 	ld	(hl),e
   452C 23            [ 6]  328 	inc	hl
   452D 72            [ 7]  329 	ld	(hl),d
                            330 ;src/game/game.c:48: break;
   452E 18 29         [12]  331 	jr	00112$
                            332 ;src/game/game.c:49: default:
   4530                     333 00111$:
                            334 ;src/game/game.c:50: txtWindowInfoTile[0] = "Not yet implemented";
   4530 21 00 00      [10]  335 	ld	hl,#0x0000
   4533 39            [11]  336 	add	hl,sp
   4534 5D            [ 4]  337 	ld	e,l
   4535 54            [ 4]  338 	ld	d,h
   4536 36 43         [10]  339 	ld	(hl),#<(___str_14)
   4538 23            [ 6]  340 	inc	hl
   4539 36 46         [10]  341 	ld	(hl),#>(___str_14)
                            342 ;src/game/game.c:51: txtWindowInfoTile[1] = "";
   453B 6B            [ 4]  343 	ld	l, e
   453C 62            [ 4]  344 	ld	h, d
   453D 23            [ 6]  345 	inc	hl
   453E 23            [ 6]  346 	inc	hl
   453F 01 75 45      [10]  347 	ld	bc,#___str_1+0
   4542 71            [ 7]  348 	ld	(hl),c
   4543 23            [ 6]  349 	inc	hl
   4544 70            [ 7]  350 	ld	(hl),b
                            351 ;src/game/game.c:52: txtWindowInfoTile[2] = "Production: ?";
   4545 21 04 00      [10]  352 	ld	hl,#0x0004
   4548 19            [11]  353 	add	hl,de
   4549 01 57 46      [10]  354 	ld	bc,#___str_15+0
   454C 71            [ 7]  355 	ld	(hl),c
   454D 23            [ 6]  356 	inc	hl
   454E 70            [ 7]  357 	ld	(hl),b
                            358 ;src/game/game.c:53: txtWindowInfoTile[3] = "Demand: ?";
   454F 21 06 00      [10]  359 	ld	hl,#0x0006
   4552 19            [11]  360 	add	hl,de
   4553 11 65 46      [10]  361 	ld	de,#___str_16+0
   4556 73            [ 7]  362 	ld	(hl),e
   4557 23            [ 6]  363 	inc	hl
   4558 72            [ 7]  364 	ld	(hl),d
                            365 ;src/game/game.c:55: }
   4559                     366 00112$:
                            367 ;src/game/game.c:57: drawWindow(txtWindowInfoTile, 4, 0);
   4559 21 00 00      [10]  368 	ld	hl,#0x0000
   455C 39            [11]  369 	add	hl,sp
   455D EB            [ 4]  370 	ex	de,hl
   455E 21 04 00      [10]  371 	ld	hl,#0x0004
   4561 E5            [11]  372 	push	hl
   4562 D5            [11]  373 	push	de
   4563 CD 5C 5C      [17]  374 	call	_drawWindow
   4566 DD F9         [10]  375 	ld	sp,ix
   4568 DD E1         [14]  376 	pop	ix
   456A C9            [10]  377 	ret
   456B                     378 ___str_0:
   456B 47 72 61 73 73 6C   379 	.ascii "Grassland"
        61 6E 64
   4574 00                  380 	.db 0x00
   4575                     381 ___str_1:
   4575 00                  382 	.db 0x00
   4576                     383 ___str_2:
   4576 50 72 6F 64 75 63   384 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   4589 00                  385 	.db 0x00
   458A                     386 ___str_3:
   458A 44 65 6D 61 6E 64   387 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   4599 00                  388 	.db 0x00
   459A                     389 ___str_4:
   459A 43 69 74 79         390 	.ascii "City"
   459E 00                  391 	.db 0x00
   459F                     392 ___str_5:
   459F 50 72 6F 64 75 63   393 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   45BB 00                  394 	.db 0x00
   45BC                     395 ___str_6:
   45BC 44 65 6D 61 6E 64   396 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   45E0 00                  397 	.db 0x00
   45E1                     398 ___str_7:
   45E1 46 61 72 6D         399 	.ascii "Farm"
   45E5 00                  400 	.db 0x00
   45E6                     401 ___str_8:
   45E6 50 72 6F 64 75 63   402 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   45F8 00                  403 	.db 0x00
   45F9                     404 ___str_9:
   45F9 57 61 74 65 72      405 	.ascii "Water"
   45FE 00                  406 	.db 0x00
   45FF                     407 ___str_10:
   45FF 46 6F 72 65 73 74   408 	.ascii "Forest"
   4605 00                  409 	.db 0x00
   4606                     410 ___str_11:
   4606 4C 69 76 65 73 74   411 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   4617 00                  412 	.db 0x00
   4618                     413 ___str_12:
   4618 50 72 6F 64 75 63   414 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   4633 00                  415 	.db 0x00
   4634                     416 ___str_13:
   4634 44 65 6D 61 6E 64   417 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   4642 00                  418 	.db 0x00
   4643                     419 ___str_14:
   4643 4E 6F 74 20 79 65   420 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   4656 00                  421 	.db 0x00
   4657                     422 ___str_15:
   4657 50 72 6F 64 75 63   423 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   4664 00                  424 	.db 0x00
   4665                     425 ___str_16:
   4665 44 65 6D 61 6E 64   426 	.ascii "Demand: ?"
        3A 20 3F
   466E 00                  427 	.db 0x00
                            428 ;src/game/game.c:60: void menuStations()
                            429 ;	---------------------------------
                            430 ; Function menuStations
                            431 ; ---------------------------------
   466F                     432 _menuStations::
   466F DD E5         [15]  433 	push	ix
   4671 DD 21 00 00   [14]  434 	ld	ix,#0
   4675 DD 39         [15]  435 	add	ix,sp
   4677 21 FA FF      [10]  436 	ld	hl,#-6
   467A 39            [11]  437 	add	hl,sp
   467B F9            [ 6]  438 	ld	sp,hl
                            439 ;src/game/game.c:64: const char *txtMenuSizeStation[] = { 
   467C 21 00 00      [10]  440 	ld	hl,#0x0000
   467F 39            [11]  441 	add	hl,sp
   4680 5D            [ 4]  442 	ld	e,l
   4681 54            [ 4]  443 	ld	d,h
   4682 36 D1         [10]  444 	ld	(hl),#<(___str_17)
   4684 23            [ 6]  445 	inc	hl
   4685 36 46         [10]  446 	ld	(hl),#>(___str_17)
   4687 6B            [ 4]  447 	ld	l, e
   4688 62            [ 4]  448 	ld	h, d
   4689 23            [ 6]  449 	inc	hl
   468A 23            [ 6]  450 	inc	hl
   468B 01 D7 46      [10]  451 	ld	bc,#___str_18+0
   468E 71            [ 7]  452 	ld	(hl),c
   468F 23            [ 6]  453 	inc	hl
   4690 70            [ 7]  454 	ld	(hl),b
   4691 21 04 00      [10]  455 	ld	hl,#0x0004
   4694 19            [11]  456 	add	hl,de
   4695 01 DE 46      [10]  457 	ld	bc,#___str_19+0
   4698 71            [ 7]  458 	ld	(hl),c
   4699 23            [ 6]  459 	inc	hl
   469A 70            [ 7]  460 	ld	(hl),b
                            461 ;src/game/game.c:70: result = drawMenu(txtMenuSizeStation,3);
   469B 3E 03         [ 7]  462 	ld	a,#0x03
   469D F5            [11]  463 	push	af
   469E 33            [ 6]  464 	inc	sp
   469F D5            [11]  465 	push	de
   46A0 CD 5E 5B      [17]  466 	call	_drawMenu
   46A3 F1            [10]  467 	pop	af
   46A4 33            [ 6]  468 	inc	sp
   46A5 5D            [ 4]  469 	ld	e,l
                            470 ;src/game/game.c:72: switch(result)
   46A6 3E 02         [ 7]  471 	ld	a,#0x02
   46A8 93            [ 4]  472 	sub	a, e
   46A9 38 21         [12]  473 	jr	C,00105$
   46AB 16 00         [ 7]  474 	ld	d,#0x00
   46AD 21 B3 46      [10]  475 	ld	hl,#00111$
   46B0 19            [11]  476 	add	hl,de
   46B1 19            [11]  477 	add	hl,de
                            478 ;src/game/game.c:74: case 0:
   46B2 E9            [ 4]  479 	jp	(hl)
   46B3                     480 00111$:
   46B3 18 04         [12]  481 	jr	00101$
   46B5 18 09         [12]  482 	jr	00102$
   46B7 18 0E         [12]  483 	jr	00103$
   46B9                     484 00101$:
                            485 ;src/game/game.c:75: CURSOR_MODE=T_SSEW;
   46B9 21 99 7D      [10]  486 	ld	hl,#_CURSOR_MODE + 0
   46BC 36 02         [10]  487 	ld	(hl), #0x02
                            488 ;src/game/game.c:76: break;
   46BE 18 0C         [12]  489 	jr	00105$
                            490 ;src/game/game.c:78: case 1:
   46C0                     491 00102$:
                            492 ;src/game/game.c:79: CURSOR_MODE=T_SMEW;
   46C0 21 99 7D      [10]  493 	ld	hl,#_CURSOR_MODE + 0
   46C3 36 04         [10]  494 	ld	(hl), #0x04
                            495 ;src/game/game.c:80: break;
   46C5 18 05         [12]  496 	jr	00105$
                            497 ;src/game/game.c:82: case 2:
   46C7                     498 00103$:
                            499 ;src/game/game.c:83: CURSOR_MODE=T_SLEW;
   46C7 21 99 7D      [10]  500 	ld	hl,#_CURSOR_MODE + 0
   46CA 36 06         [10]  501 	ld	(hl), #0x06
                            502 ;src/game/game.c:85: }
   46CC                     503 00105$:
   46CC DD F9         [10]  504 	ld	sp, ix
   46CE DD E1         [14]  505 	pop	ix
   46D0 C9            [10]  506 	ret
   46D1                     507 ___str_17:
   46D1 53 6D 61 6C 6C      508 	.ascii "Small"
   46D6 00                  509 	.db 0x00
   46D7                     510 ___str_18:
   46D7 4D 65 64 69 75 6D   511 	.ascii "Medium"
   46DD 00                  512 	.db 0x00
   46DE                     513 ___str_19:
   46DE 4C 61 72 67 65      514 	.ascii "Large"
   46E3 00                  515 	.db 0x00
                            516 ;src/game/game.c:88: void menuTile(u8 x, u8 y)
                            517 ;	---------------------------------
                            518 ; Function menuTile
                            519 ; ---------------------------------
   46E4                     520 _menuTile::
   46E4 DD E5         [15]  521 	push	ix
   46E6 DD 21 00 00   [14]  522 	ld	ix,#0
   46EA DD 39         [15]  523 	add	ix,sp
   46EC 21 E6 FF      [10]  524 	ld	hl,#-26
   46EF 39            [11]  525 	add	hl,sp
   46F0 F9            [ 6]  526 	ld	sp,hl
                            527 ;src/game/game.c:92: const char *txtMenuTile[] = { 
   46F1 21 00 00      [10]  528 	ld	hl,#0x0000
   46F4 39            [11]  529 	add	hl,sp
   46F5 5D            [ 4]  530 	ld	e,l
   46F6 54            [ 4]  531 	ld	d,h
   46F7 36 18         [10]  532 	ld	(hl),#<(___str_20)
   46F9 23            [ 6]  533 	inc	hl
   46FA 36 48         [10]  534 	ld	(hl),#>(___str_20)
   46FC 6B            [ 4]  535 	ld	l, e
   46FD 62            [ 4]  536 	ld	h, d
   46FE 23            [ 6]  537 	inc	hl
   46FF 23            [ 6]  538 	inc	hl
   4700 01 28 48      [10]  539 	ld	bc,#___str_21+0
   4703 71            [ 7]  540 	ld	(hl),c
   4704 23            [ 6]  541 	inc	hl
   4705 70            [ 7]  542 	ld	(hl),b
   4706 21 04 00      [10]  543 	ld	hl,#0x0004
   4709 19            [11]  544 	add	hl,de
   470A 01 38 48      [10]  545 	ld	bc,#___str_22+0
   470D 71            [ 7]  546 	ld	(hl),c
   470E 23            [ 6]  547 	inc	hl
   470F 70            [ 7]  548 	ld	(hl),b
   4710 21 06 00      [10]  549 	ld	hl,#0x0006
   4713 19            [11]  550 	add	hl,de
   4714 01 48 48      [10]  551 	ld	bc,#___str_23+0
   4717 71            [ 7]  552 	ld	(hl),c
   4718 23            [ 6]  553 	inc	hl
   4719 70            [ 7]  554 	ld	(hl),b
   471A 21 08 00      [10]  555 	ld	hl,#0x0008
   471D 19            [11]  556 	add	hl,de
   471E 01 50 48      [10]  557 	ld	bc,#___str_24+0
   4721 71            [ 7]  558 	ld	(hl),c
   4722 23            [ 6]  559 	inc	hl
   4723 70            [ 7]  560 	ld	(hl),b
   4724 21 0A 00      [10]  561 	ld	hl,#0x000A
   4727 19            [11]  562 	add	hl,de
   4728 01 5F 48      [10]  563 	ld	bc,#___str_25+0
   472B 71            [ 7]  564 	ld	(hl),c
   472C 23            [ 6]  565 	inc	hl
   472D 70            [ 7]  566 	ld	(hl),b
   472E 21 0C 00      [10]  567 	ld	hl,#0x000C
   4731 19            [11]  568 	add	hl,de
   4732 01 6A 48      [10]  569 	ld	bc,#___str_26+0
   4735 71            [ 7]  570 	ld	(hl),c
   4736 23            [ 6]  571 	inc	hl
   4737 70            [ 7]  572 	ld	(hl),b
                            573 ;src/game/game.c:102: const char *txtWindowDestroy[] = { 
   4738 21 0E 00      [10]  574 	ld	hl,#0x000E
   473B 39            [11]  575 	add	hl,sp
   473C 4D            [ 4]  576 	ld	c,l
   473D 44            [ 4]  577 	ld	b,h
   473E 36 71         [10]  578 	ld	(hl),#<(___str_27)
   4740 23            [ 6]  579 	inc	hl
   4741 36 48         [10]  580 	ld	(hl),#>(___str_27)
   4743 21 02 00      [10]  581 	ld	hl,#0x0002
   4746 09            [11]  582 	add	hl,bc
   4747 DD 75 FA      [19]  583 	ld	-6 (ix),l
   474A DD 74 FB      [19]  584 	ld	-5 (ix),h
   474D DD 6E FA      [19]  585 	ld	l,-6 (ix)
   4750 DD 66 FB      [19]  586 	ld	h,-5 (ix)
   4753 36 94         [10]  587 	ld	(hl),#<(___str_28)
   4755 23            [ 6]  588 	inc	hl
   4756 36 48         [10]  589 	ld	(hl),#>(___str_28)
   4758 21 04 00      [10]  590 	ld	hl,#0x0004
   475B 09            [11]  591 	add	hl,bc
   475C DD 75 FA      [19]  592 	ld	-6 (ix),l
   475F DD 74 FB      [19]  593 	ld	-5 (ix),h
   4762 DD 6E FA      [19]  594 	ld	l,-6 (ix)
   4765 DD 66 FB      [19]  595 	ld	h,-5 (ix)
   4768 36 95         [10]  596 	ld	(hl),#<(___str_29)
   476A 23            [ 6]  597 	inc	hl
   476B 36 48         [10]  598 	ld	(hl),#>(___str_29)
                            599 ;src/game/game.c:109: putM2();
   476D C5            [11]  600 	push	bc
   476E D5            [11]  601 	push	de
   476F CD 58 57      [17]  602 	call	_putM2
   4772 D1            [10]  603 	pop	de
   4773 C1            [10]  604 	pop	bc
                            605 ;src/game/game.c:111: do{
   4774 D5            [11]  606 	push	de
   4775 DD 5E 05      [19]  607 	ld	e,5 (ix)
   4778 16 00         [ 7]  608 	ld	d,#0x00
   477A 6B            [ 4]  609 	ld	l, e
   477B 62            [ 4]  610 	ld	h, d
   477C 29            [11]  611 	add	hl, hl
   477D 29            [11]  612 	add	hl, hl
   477E 19            [11]  613 	add	hl, de
   477F 29            [11]  614 	add	hl, hl
   4780 29            [11]  615 	add	hl, hl
   4781 29            [11]  616 	add	hl, hl
   4782 29            [11]  617 	add	hl, hl
   4783 D1            [10]  618 	pop	de
   4784 DD 75 FA      [19]  619 	ld	-6 (ix),l
   4787 DD 74 FB      [19]  620 	ld	-5 (ix),h
   478A DD 71 FE      [19]  621 	ld	-2 (ix),c
   478D DD 70 FF      [19]  622 	ld	-1 (ix),b
   4790 DD 73 FC      [19]  623 	ld	-4 (ix),e
   4793 DD 72 FD      [19]  624 	ld	-3 (ix),d
   4796                     625 00117$:
                            626 ;src/game/game.c:112: menuChoice = drawMenu(txtMenuTile,7);
   4796 DD 5E FC      [19]  627 	ld	e,-4 (ix)
   4799 DD 56 FD      [19]  628 	ld	d,-3 (ix)
   479C 3E 07         [ 7]  629 	ld	a,#0x07
   479E F5            [11]  630 	push	af
   479F 33            [ 6]  631 	inc	sp
   47A0 D5            [11]  632 	push	de
   47A1 CD 5E 5B      [17]  633 	call	_drawMenu
   47A4 F1            [10]  634 	pop	af
   47A5 33            [ 6]  635 	inc	sp
   47A6 55            [ 4]  636 	ld	d,l
                            637 ;src/game/game.c:114: if(menuChoice==0)
   47A7 7A            [ 4]  638 	ld	a,d
   47A8 B7            [ 4]  639 	or	a, a
   47A9 20 0F         [12]  640 	jr	NZ,00115$
                            641 ;src/game/game.c:115: windowInfoTile(x, y);
   47AB D5            [11]  642 	push	de
   47AC DD 66 05      [19]  643 	ld	h,5 (ix)
   47AF DD 6E 04      [19]  644 	ld	l,4 (ix)
   47B2 E5            [11]  645 	push	hl
   47B3 CD D6 43      [17]  646 	call	_windowInfoTile
   47B6 F1            [10]  647 	pop	af
   47B7 D1            [10]  648 	pop	de
   47B8 18 51         [12]  649 	jr	00118$
   47BA                     650 00115$:
                            651 ;src/game/game.c:116: else if(menuChoice==1)
   47BA 7A            [ 4]  652 	ld	a,d
   47BB 3D            [ 4]  653 	dec	a
   47BC 20 09         [12]  654 	jr	NZ,00112$
                            655 ;src/game/game.c:118: CURSOR_MODE=T_REW;
   47BE 21 99 7D      [10]  656 	ld	hl,#_CURSOR_MODE + 0
   47C1 36 07         [10]  657 	ld	(hl), #0x07
                            658 ;src/game/game.c:119: menuChoice=6;
   47C3 16 06         [ 7]  659 	ld	d,#0x06
   47C5 18 44         [12]  660 	jr	00118$
   47C7                     661 00112$:
                            662 ;src/game/game.c:121: else if(menuChoice==2)
   47C7 7A            [ 4]  663 	ld	a,d
   47C8 D6 02         [ 7]  664 	sub	a, #0x02
   47CA 20 07         [12]  665 	jr	NZ,00109$
                            666 ;src/game/game.c:123: menuStations();
   47CC CD 6F 46      [17]  667 	call	_menuStations
                            668 ;src/game/game.c:124: menuChoice=6;
   47CF 16 06         [ 7]  669 	ld	d,#0x06
   47D1 18 38         [12]  670 	jr	00118$
   47D3                     671 00109$:
                            672 ;src/game/game.c:126: else if(menuChoice==3)
   47D3 7A            [ 4]  673 	ld	a,d
   47D4 D6 03         [ 7]  674 	sub	a, #0x03
   47D6 20 29         [12]  675 	jr	NZ,00106$
                            676 ;src/game/game.c:128: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   47D8 DD 5E FE      [19]  677 	ld	e,-2 (ix)
   47DB DD 56 FF      [19]  678 	ld	d,-1 (ix)
   47DE 21 03 01      [10]  679 	ld	hl,#0x0103
   47E1 E5            [11]  680 	push	hl
   47E2 D5            [11]  681 	push	de
   47E3 CD 5C 5C      [17]  682 	call	_drawWindow
   47E6 F1            [10]  683 	pop	af
   47E7 F1            [10]  684 	pop	af
   47E8 2D            [ 4]  685 	dec	l
   47E9 20 12         [12]  686 	jr	NZ,00102$
                            687 ;src/game/game.c:129: p_world[x+y*WIDTH] = GRASS1;
   47EB DD 6E 04      [19]  688 	ld	l,4 (ix)
   47EE 26 00         [ 7]  689 	ld	h,#0x00
   47F0 DD 5E FA      [19]  690 	ld	e,-6 (ix)
   47F3 DD 56 FB      [19]  691 	ld	d,-5 (ix)
   47F6 19            [11]  692 	add	hl,de
   47F7 11 99 6E      [10]  693 	ld	de,#_p_world
   47FA 19            [11]  694 	add	hl,de
   47FB 36 00         [10]  695 	ld	(hl),#0x00
   47FD                     696 00102$:
                            697 ;src/game/game.c:131: menuChoice=6;
   47FD 16 06         [ 7]  698 	ld	d,#0x06
   47FF 18 0A         [12]  699 	jr	00118$
   4801                     700 00106$:
                            701 ;src/game/game.c:133: else if(menuChoice==4)
   4801 7A            [ 4]  702 	ld	a,d
   4802 D6 04         [ 7]  703 	sub	a, #0x04
   4804 20 05         [12]  704 	jr	NZ,00118$
                            705 ;src/game/game.c:135: railroadDepot();
   4806 CD 30 41      [17]  706 	call	_railroadDepot
                            707 ;src/game/game.c:136: menuChoice=6;
   4809 16 06         [ 7]  708 	ld	d,#0x06
   480B                     709 00118$:
                            710 ;src/game/game.c:141: while(menuChoice!=6);
   480B 7A            [ 4]  711 	ld	a,d
   480C D6 06         [ 7]  712 	sub	a, #0x06
   480E 20 86         [12]  713 	jr	NZ,00117$
                            714 ;src/game/game.c:143: putM1();
   4810 CD 44 57      [17]  715 	call	_putM1
   4813 DD F9         [10]  716 	ld	sp, ix
   4815 DD E1         [14]  717 	pop	ix
   4817 C9            [10]  718 	ret
   4818                     719 ___str_20:
   4818 41 62 6F 75 74 20   720 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   4827 00                  721 	.db 0x00
   4828                     722 ___str_21:
   4828 42 75 69 6C 64 20   723 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   4837 00                  724 	.db 0x00
   4838                     725 ___str_22:
   4838 42 75 69 6C 64 20   726 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   4847 00                  727 	.db 0x00
   4848                     728 ___str_23:
   4848 44 65 73 74 72 6F   729 	.ascii "Destroy"
        79
   484F 00                  730 	.db 0x00
   4850                     731 ___str_24:
   4850 52 61 69 6C 72 6F   732 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   485E 00                  733 	.db 0x00
   485F                     734 ___str_25:
   485F 41 63 63 6F 75 6E   735 	.ascii "Accounting"
        74 69 6E 67
   4869 00                  736 	.db 0x00
   486A                     737 ___str_26:
   486A 52 65 73 75 6D 65   738 	.ascii "Resume"
   4870 00                  739 	.db 0x00
   4871                     740 ___str_27:
   4871 44 65 73 74 72 6F   741 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   4893 00                  742 	.db 0x00
   4894                     743 ___str_28:
   4894 00                  744 	.db 0x00
   4895                     745 ___str_29:
   4895 43 6F 6E 74 69 6E   746 	.ascii "Continue ?"
        75 65 20 3F
   489F 00                  747 	.db 0x00
                            748 ;src/game/game.c:147: void game()
                            749 ;	---------------------------------
                            750 ; Function game
                            751 ; ---------------------------------
   48A0                     752 _game::
   48A0 DD E5         [15]  753 	push	ix
   48A2 DD 21 00 00   [14]  754 	ld	ix,#0
   48A6 DD 39         [15]  755 	add	ix,sp
   48A8 21 EA FF      [10]  756 	ld	hl,#-22
   48AB 39            [11]  757 	add	hl,sp
   48AC F9            [ 6]  758 	ld	sp,hl
                            759 ;src/game/game.c:150: int ulx = 0;
   48AD DD 36 F4 00   [19]  760 	ld	-12 (ix),#0x00
   48B1 DD 36 F5 00   [19]  761 	ld	-11 (ix),#0x00
                            762 ;src/game/game.c:151: int uly = 0;
   48B5 DD 36 F7 00   [19]  763 	ld	-9 (ix),#0x00
   48B9 DD 36 F8 00   [19]  764 	ld	-8 (ix),#0x00
                            765 ;src/game/game.c:152: int xCursor = 10;
   48BD DD 36 F9 0A   [19]  766 	ld	-7 (ix),#0x0A
   48C1 DD 36 FA 00   [19]  767 	ld	-6 (ix),#0x00
                            768 ;src/game/game.c:153: int yCursor = 6;
   48C5 DD 36 F2 06   [19]  769 	ld	-14 (ix),#0x06
   48C9 DD 36 F3 00   [19]  770 	ld	-13 (ix),#0x00
                            771 ;src/game/game.c:155: u8 exit=0;
   48CD DD 36 F6 00   [19]  772 	ld	-10 (ix),#0x00
                            773 ;src/game/game.c:158: drawBoxM2(50, 50);
   48D1 21 32 00      [10]  774 	ld	hl,#0x0032
   48D4 E5            [11]  775 	push	hl
   48D5 2E 32         [ 7]  776 	ld	l, #0x32
   48D7 E5            [11]  777 	push	hl
   48D8 CD 94 58      [17]  778 	call	_drawBoxM2
   48DB F1            [10]  779 	pop	af
                            780 ;src/game/game.c:159: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   48DC 21 20 5F      [10]  781 	ld	hl, #0x5F20
   48DF E3            [19]  782 	ex	(sp),hl
   48E0 21 00 C0      [10]  783 	ld	hl,#0xC000
   48E3 E5            [11]  784 	push	hl
   48E4 CD A9 6D      [17]  785 	call	_cpct_getScreenPtr
                            786 ;src/game/game.c:160: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   48E7 4D            [ 4]  787 	ld	c, l
   48E8 44            [ 4]  788 	ld	b, h
   48E9 11 88 4D      [10]  789 	ld	de,#___str_33
   48EC AF            [ 4]  790 	xor	a, a
   48ED F5            [11]  791 	push	af
   48EE 33            [ 6]  792 	inc	sp
   48EF C5            [11]  793 	push	bc
   48F0 D5            [11]  794 	push	de
   48F1 CD 8B 69      [17]  795 	call	_cpct_drawStringM2
   48F4 F1            [10]  796 	pop	af
   48F5 F1            [10]  797 	pop	af
   48F6 33            [ 6]  798 	inc	sp
                            799 ;src/game/game.c:162: generateWorld();
   48F7 CD CE 50      [17]  800 	call	_generateWorld
                            801 ;src/game/game.c:164: putM1();
   48FA CD 44 57      [17]  802 	call	_putM1
                            803 ;src/game/game.c:165: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   48FD 21 00 00      [10]  804 	ld	hl,#0x0000
   4900 E5            [11]  805 	push	hl
   4901 2E 00         [ 7]  806 	ld	l, #0x00
   4903 E5            [11]  807 	push	hl
   4904 CD 83 6C      [17]  808 	call	_cpct_px2byteM1
   4907 F1            [10]  809 	pop	af
   4908 F1            [10]  810 	pop	af
   4909 65            [ 4]  811 	ld	h,l
   490A 01 00 40      [10]  812 	ld	bc,#0x4000
   490D C5            [11]  813 	push	bc
   490E E5            [11]  814 	push	hl
   490F 33            [ 6]  815 	inc	sp
   4910 21 00 C0      [10]  816 	ld	hl,#0xC000
   4913 E5            [11]  817 	push	hl
   4914 CD 75 6C      [17]  818 	call	_cpct_memset
                            819 ;src/game/game.c:166: drawWorld(ulx, uly);
   4917 21 00 00      [10]  820 	ld	hl,#0x0000
   491A E5            [11]  821 	push	hl
   491B CD F8 56      [17]  822 	call	_drawWorld
   491E F1            [10]  823 	pop	af
                            824 ;src/game/game.c:168: do{
   491F                     825 00181$:
                            826 ;src/game/game.c:169: cpct_scanKeyboard(); 
   491F CD C9 6D      [17]  827 	call	_cpct_scanKeyboard
                            828 ;src/game/game.c:171: if ( cpct_isKeyPressed(Key_CursorUp) )
   4922 21 00 01      [10]  829 	ld	hl,#0x0100
   4925 CD 54 69      [17]  830 	call	_cpct_isKeyPressed
   4928 DD 75 FE      [19]  831 	ld	-2 (ix),l
                            832 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   492B DD 7E F2      [19]  833 	ld	a,-14 (ix)
   492E DD 77 FF      [19]  834 	ld	-1 (ix),a
   4931 DD 7E F9      [19]  835 	ld	a,-7 (ix)
   4934 DD 77 FD      [19]  836 	ld	-3 (ix),a
   4937 DD 7E F7      [19]  837 	ld	a,-9 (ix)
   493A DD 77 FC      [19]  838 	ld	-4 (ix),a
   493D DD 7E F4      [19]  839 	ld	a,-12 (ix)
   4940 DD 77 FB      [19]  840 	ld	-5 (ix),a
                            841 ;src/game/game.c:171: if ( cpct_isKeyPressed(Key_CursorUp) )
   4943 DD 7E FE      [19]  842 	ld	a,-2 (ix)
   4946 B7            [ 4]  843 	or	a, a
   4947 CA C9 49      [10]  844 	jp	Z,00179$
                            845 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   494A DD 7E FF      [19]  846 	ld	a,-1 (ix)
   494D F5            [11]  847 	push	af
   494E 33            [ 6]  848 	inc	sp
   494F DD 7E FD      [19]  849 	ld	a,-3 (ix)
   4952 F5            [11]  850 	push	af
   4953 33            [ 6]  851 	inc	sp
   4954 DD 7E FC      [19]  852 	ld	a,-4 (ix)
   4957 F5            [11]  853 	push	af
   4958 33            [ 6]  854 	inc	sp
   4959 DD 7E FB      [19]  855 	ld	a,-5 (ix)
   495C F5            [11]  856 	push	af
   495D 33            [ 6]  857 	inc	sp
   495E CD 37 54      [17]  858 	call	_drawTile
   4961 F1            [10]  859 	pop	af
   4962 F1            [10]  860 	pop	af
                            861 ;src/game/game.c:175: yCursor-=1;
   4963 DD 6E F2      [19]  862 	ld	l,-14 (ix)
   4966 DD 66 F3      [19]  863 	ld	h,-13 (ix)
   4969 2B            [ 6]  864 	dec	hl
   496A DD 75 F2      [19]  865 	ld	-14 (ix),l
   496D DD 74 F3      [19]  866 	ld	-13 (ix),h
                            867 ;src/game/game.c:178: if(yCursor<0)
   4970 DD CB F3 7E   [20]  868 	bit	7, -13 (ix)
   4974 28 35         [12]  869 	jr	Z,00210$
                            870 ;src/game/game.c:180: yCursor=0;
   4976 DD 36 F2 00   [19]  871 	ld	-14 (ix),#0x00
   497A DD 36 F3 00   [19]  872 	ld	-13 (ix),#0x00
                            873 ;src/game/game.c:183: if(uly>0)
   497E AF            [ 4]  874 	xor	a, a
   497F DD BE F7      [19]  875 	cp	a, -9 (ix)
   4982 DD 9E F8      [19]  876 	sbc	a, -8 (ix)
   4985 E2 8A 49      [10]  877 	jp	PO, 00387$
   4988 EE 80         [ 7]  878 	xor	a, #0x80
   498A                     879 00387$:
   498A F2 AB 49      [10]  880 	jp	P,00210$
                            881 ;src/game/game.c:185: uly-=1;
   498D DD 6E F7      [19]  882 	ld	l,-9 (ix)
   4990 DD 66 F8      [19]  883 	ld	h,-8 (ix)
   4993 2B            [ 6]  884 	dec	hl
   4994 DD 75 F7      [19]  885 	ld	-9 (ix),l
   4997 DD 74 F8      [19]  886 	ld	-8 (ix),h
                            887 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   499A DD 7E F7      [19]  888 	ld	a,-9 (ix)
                            889 ;src/game/game.c:186: drawWorld(ulx, uly);
   499D DD 77 FC      [19]  890 	ld	-4 (ix), a
   49A0 F5            [11]  891 	push	af
   49A1 33            [ 6]  892 	inc	sp
   49A2 DD 7E FB      [19]  893 	ld	a,-5 (ix)
   49A5 F5            [11]  894 	push	af
   49A6 33            [ 6]  895 	inc	sp
   49A7 CD F8 56      [17]  896 	call	_drawWorld
   49AA F1            [10]  897 	pop	af
                            898 ;src/game/game.c:191: for(i=0; i<5000; i++) {}
   49AB                     899 00210$:
   49AB DD 36 F0 88   [19]  900 	ld	-16 (ix),#0x88
   49AF DD 36 F1 13   [19]  901 	ld	-15 (ix),#0x13
   49B3                     902 00186$:
   49B3 DD 6E F0      [19]  903 	ld	l,-16 (ix)
   49B6 DD 66 F1      [19]  904 	ld	h,-15 (ix)
   49B9 2B            [ 6]  905 	dec	hl
   49BA DD 75 F0      [19]  906 	ld	-16 (ix),l
   49BD DD 74 F1      [19]  907 	ld	-15 (ix), h
   49C0 7C            [ 4]  908 	ld	a, h
   49C1 DD B6 F0      [19]  909 	or	a,-16 (ix)
   49C4 20 ED         [12]  910 	jr	NZ,00186$
   49C6 C3 27 4D      [10]  911 	jp	00180$
   49C9                     912 00179$:
                            913 ;src/game/game.c:194: else if ( cpct_isKeyPressed(Key_CursorDown) )
   49C9 21 00 04      [10]  914 	ld	hl,#0x0400
   49CC CD 54 69      [17]  915 	call	_cpct_isKeyPressed
   49CF 7D            [ 4]  916 	ld	a,l
   49D0 B7            [ 4]  917 	or	a, a
   49D1 CA 55 4A      [10]  918 	jp	Z,00176$
                            919 ;src/game/game.c:196: drawTile(ulx, uly, xCursor, yCursor);
   49D4 DD 7E FF      [19]  920 	ld	a,-1 (ix)
   49D7 F5            [11]  921 	push	af
   49D8 33            [ 6]  922 	inc	sp
   49D9 DD 7E FD      [19]  923 	ld	a,-3 (ix)
   49DC F5            [11]  924 	push	af
   49DD 33            [ 6]  925 	inc	sp
   49DE DD 7E FC      [19]  926 	ld	a,-4 (ix)
   49E1 F5            [11]  927 	push	af
   49E2 33            [ 6]  928 	inc	sp
   49E3 DD 7E FB      [19]  929 	ld	a,-5 (ix)
   49E6 F5            [11]  930 	push	af
   49E7 33            [ 6]  931 	inc	sp
   49E8 CD 37 54      [17]  932 	call	_drawTile
   49EB F1            [10]  933 	pop	af
   49EC F1            [10]  934 	pop	af
                            935 ;src/game/game.c:197: yCursor+=1;
   49ED DD 34 F2      [23]  936 	inc	-14 (ix)
   49F0 20 03         [12]  937 	jr	NZ,00388$
   49F2 DD 34 F3      [23]  938 	inc	-13 (ix)
   49F5                     939 00388$:
                            940 ;src/game/game.c:198: if(yCursor>NBTILE_H-1)
   49F5 3E 0B         [ 7]  941 	ld	a,#0x0B
   49F7 DD BE F2      [19]  942 	cp	a, -14 (ix)
   49FA 3E 00         [ 7]  943 	ld	a,#0x00
   49FC DD 9E F3      [19]  944 	sbc	a, -13 (ix)
   49FF E2 04 4A      [10]  945 	jp	PO, 00389$
   4A02 EE 80         [ 7]  946 	xor	a, #0x80
   4A04                     947 00389$:
   4A04 F2 37 4A      [10]  948 	jp	P,00215$
                            949 ;src/game/game.c:200: yCursor=NBTILE_H-1;
   4A07 DD 36 F2 0B   [19]  950 	ld	-14 (ix),#0x0B
   4A0B DD 36 F3 00   [19]  951 	ld	-13 (ix),#0x00
                            952 ;src/game/game.c:201: if(uly<HEIGHT-NBTILE_H)
   4A0F DD 7E F7      [19]  953 	ld	a,-9 (ix)
   4A12 D6 24         [ 7]  954 	sub	a, #0x24
   4A14 DD 7E F8      [19]  955 	ld	a,-8 (ix)
   4A17 17            [ 4]  956 	rla
   4A18 3F            [ 4]  957 	ccf
   4A19 1F            [ 4]  958 	rra
   4A1A DE 80         [ 7]  959 	sbc	a, #0x80
   4A1C 30 19         [12]  960 	jr	NC,00215$
                            961 ;src/game/game.c:203: uly+=1;
   4A1E DD 34 F7      [23]  962 	inc	-9 (ix)
   4A21 20 03         [12]  963 	jr	NZ,00390$
   4A23 DD 34 F8      [23]  964 	inc	-8 (ix)
   4A26                     965 00390$:
                            966 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   4A26 DD 7E F7      [19]  967 	ld	a,-9 (ix)
                            968 ;src/game/game.c:204: drawWorld(ulx, uly);
   4A29 DD 77 FC      [19]  969 	ld	-4 (ix), a
   4A2C F5            [11]  970 	push	af
   4A2D 33            [ 6]  971 	inc	sp
   4A2E DD 7E FB      [19]  972 	ld	a,-5 (ix)
   4A31 F5            [11]  973 	push	af
   4A32 33            [ 6]  974 	inc	sp
   4A33 CD F8 56      [17]  975 	call	_drawWorld
   4A36 F1            [10]  976 	pop	af
                            977 ;src/game/game.c:209: for(i=0; i<5000; i++) {}
   4A37                     978 00215$:
   4A37 DD 36 F0 88   [19]  979 	ld	-16 (ix),#0x88
   4A3B DD 36 F1 13   [19]  980 	ld	-15 (ix),#0x13
   4A3F                     981 00189$:
   4A3F DD 6E F0      [19]  982 	ld	l,-16 (ix)
   4A42 DD 66 F1      [19]  983 	ld	h,-15 (ix)
   4A45 2B            [ 6]  984 	dec	hl
   4A46 DD 75 F0      [19]  985 	ld	-16 (ix),l
   4A49 DD 74 F1      [19]  986 	ld	-15 (ix), h
   4A4C 7C            [ 4]  987 	ld	a, h
   4A4D DD B6 F0      [19]  988 	or	a,-16 (ix)
   4A50 20 ED         [12]  989 	jr	NZ,00189$
   4A52 C3 27 4D      [10]  990 	jp	00180$
   4A55                     991 00176$:
                            992 ;src/game/game.c:212: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   4A55 21 01 01      [10]  993 	ld	hl,#0x0101
   4A58 CD 54 69      [17]  994 	call	_cpct_isKeyPressed
   4A5B 7D            [ 4]  995 	ld	a,l
   4A5C B7            [ 4]  996 	or	a, a
   4A5D 28 6F         [12]  997 	jr	Z,00173$
                            998 ;src/game/game.c:214: drawTile(ulx, uly, xCursor, yCursor);
   4A5F DD 7E FF      [19]  999 	ld	a,-1 (ix)
   4A62 F5            [11] 1000 	push	af
   4A63 33            [ 6] 1001 	inc	sp
   4A64 DD 7E FD      [19] 1002 	ld	a,-3 (ix)
   4A67 F5            [11] 1003 	push	af
   4A68 33            [ 6] 1004 	inc	sp
   4A69 DD 7E FC      [19] 1005 	ld	a,-4 (ix)
   4A6C F5            [11] 1006 	push	af
   4A6D 33            [ 6] 1007 	inc	sp
   4A6E DD 7E FB      [19] 1008 	ld	a,-5 (ix)
   4A71 F5            [11] 1009 	push	af
   4A72 33            [ 6] 1010 	inc	sp
   4A73 CD 37 54      [17] 1011 	call	_drawTile
   4A76 F1            [10] 1012 	pop	af
   4A77 F1            [10] 1013 	pop	af
                           1014 ;src/game/game.c:215: xCursor-=1;
   4A78 DD 6E F9      [19] 1015 	ld	l,-7 (ix)
   4A7B DD 66 FA      [19] 1016 	ld	h,-6 (ix)
   4A7E 2B            [ 6] 1017 	dec	hl
   4A7F DD 75 F9      [19] 1018 	ld	-7 (ix),l
   4A82 DD 74 FA      [19] 1019 	ld	-6 (ix),h
                           1020 ;src/game/game.c:216: if(xCursor<0)
   4A85 DD CB FA 7E   [20] 1021 	bit	7, -6 (ix)
   4A89 28 38         [12] 1022 	jr	Z,00220$
                           1023 ;src/game/game.c:218: xCursor=0;
   4A8B DD 36 F9 00   [19] 1024 	ld	-7 (ix),#0x00
   4A8F DD 36 FA 00   [19] 1025 	ld	-6 (ix),#0x00
                           1026 ;src/game/game.c:219: if(ulx>0)
   4A93 AF            [ 4] 1027 	xor	a, a
   4A94 DD BE F4      [19] 1028 	cp	a, -12 (ix)
   4A97 DD 9E F5      [19] 1029 	sbc	a, -11 (ix)
   4A9A E2 9F 4A      [10] 1030 	jp	PO, 00391$
   4A9D EE 80         [ 7] 1031 	xor	a, #0x80
   4A9F                    1032 00391$:
   4A9F F2 C3 4A      [10] 1033 	jp	P,00220$
                           1034 ;src/game/game.c:221: ulx-=1;
   4AA2 DD 6E F4      [19] 1035 	ld	l,-12 (ix)
   4AA5 DD 66 F5      [19] 1036 	ld	h,-11 (ix)
   4AA8 2B            [ 6] 1037 	dec	hl
   4AA9 DD 75 F4      [19] 1038 	ld	-12 (ix),l
   4AAC DD 74 F5      [19] 1039 	ld	-11 (ix),h
                           1040 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   4AAF DD 7E F4      [19] 1041 	ld	a,-12 (ix)
   4AB2 DD 77 FB      [19] 1042 	ld	-5 (ix),a
                           1043 ;src/game/game.c:222: drawWorld(ulx, uly);
   4AB5 DD 7E FC      [19] 1044 	ld	a,-4 (ix)
   4AB8 F5            [11] 1045 	push	af
   4AB9 33            [ 6] 1046 	inc	sp
   4ABA DD 7E FB      [19] 1047 	ld	a,-5 (ix)
   4ABD F5            [11] 1048 	push	af
   4ABE 33            [ 6] 1049 	inc	sp
   4ABF CD F8 56      [17] 1050 	call	_drawWorld
   4AC2 F1            [10] 1051 	pop	af
                           1052 ;src/game/game.c:227: for(i=0; i<14000; i++) {}
   4AC3                    1053 00220$:
   4AC3 21 B0 36      [10] 1054 	ld	hl,#0x36B0
   4AC6                    1055 00192$:
   4AC6 2B            [ 6] 1056 	dec	hl
   4AC7 7C            [ 4] 1057 	ld	a,h
   4AC8 B5            [ 4] 1058 	or	a,l
   4AC9 20 FB         [12] 1059 	jr	NZ,00192$
   4ACB C3 27 4D      [10] 1060 	jp	00180$
   4ACE                    1061 00173$:
                           1062 ;src/game/game.c:230: else if ( cpct_isKeyPressed(Key_CursorRight) )
   4ACE 21 00 02      [10] 1063 	ld	hl,#0x0200
   4AD1 CD 54 69      [17] 1064 	call	_cpct_isKeyPressed
   4AD4 7D            [ 4] 1065 	ld	a,l
   4AD5 B7            [ 4] 1066 	or	a, a
   4AD6 28 71         [12] 1067 	jr	Z,00170$
                           1068 ;src/game/game.c:232: drawTile(ulx, uly, xCursor, yCursor);
   4AD8 DD 7E FF      [19] 1069 	ld	a,-1 (ix)
   4ADB F5            [11] 1070 	push	af
   4ADC 33            [ 6] 1071 	inc	sp
   4ADD DD 7E FD      [19] 1072 	ld	a,-3 (ix)
   4AE0 F5            [11] 1073 	push	af
   4AE1 33            [ 6] 1074 	inc	sp
   4AE2 DD 7E FC      [19] 1075 	ld	a,-4 (ix)
   4AE5 F5            [11] 1076 	push	af
   4AE6 33            [ 6] 1077 	inc	sp
   4AE7 DD 7E FB      [19] 1078 	ld	a,-5 (ix)
   4AEA F5            [11] 1079 	push	af
   4AEB 33            [ 6] 1080 	inc	sp
   4AEC CD 37 54      [17] 1081 	call	_drawTile
   4AEF F1            [10] 1082 	pop	af
   4AF0 F1            [10] 1083 	pop	af
                           1084 ;src/game/game.c:233: xCursor+=1;
   4AF1 DD 34 F9      [23] 1085 	inc	-7 (ix)
   4AF4 20 03         [12] 1086 	jr	NZ,00392$
   4AF6 DD 34 FA      [23] 1087 	inc	-6 (ix)
   4AF9                    1088 00392$:
                           1089 ;src/game/game.c:234: if(xCursor>NBTILE_W-1)
   4AF9 3E 13         [ 7] 1090 	ld	a,#0x13
   4AFB DD BE F9      [19] 1091 	cp	a, -7 (ix)
   4AFE 3E 00         [ 7] 1092 	ld	a,#0x00
   4B00 DD 9E FA      [19] 1093 	sbc	a, -6 (ix)
   4B03 E2 08 4B      [10] 1094 	jp	PO, 00393$
   4B06 EE 80         [ 7] 1095 	xor	a, #0x80
   4B08                    1096 00393$:
   4B08 F2 3E 4B      [10] 1097 	jp	P,00225$
                           1098 ;src/game/game.c:236: xCursor=NBTILE_W-1;
   4B0B DD 36 F9 13   [19] 1099 	ld	-7 (ix),#0x13
   4B0F DD 36 FA 00   [19] 1100 	ld	-6 (ix),#0x00
                           1101 ;src/game/game.c:237: if(ulx<WIDTH-NBTILE_W)
   4B13 DD 7E F4      [19] 1102 	ld	a,-12 (ix)
   4B16 D6 3C         [ 7] 1103 	sub	a, #0x3C
   4B18 DD 7E F5      [19] 1104 	ld	a,-11 (ix)
   4B1B 17            [ 4] 1105 	rla
   4B1C 3F            [ 4] 1106 	ccf
   4B1D 1F            [ 4] 1107 	rra
   4B1E DE 80         [ 7] 1108 	sbc	a, #0x80
   4B20 30 1C         [12] 1109 	jr	NC,00225$
                           1110 ;src/game/game.c:239: ulx+=1;
   4B22 DD 34 F4      [23] 1111 	inc	-12 (ix)
   4B25 20 03         [12] 1112 	jr	NZ,00394$
   4B27 DD 34 F5      [23] 1113 	inc	-11 (ix)
   4B2A                    1114 00394$:
                           1115 ;src/game/game.c:173: drawTile(ulx, uly, xCursor, yCursor);
   4B2A DD 7E F4      [19] 1116 	ld	a,-12 (ix)
   4B2D DD 77 FB      [19] 1117 	ld	-5 (ix),a
                           1118 ;src/game/game.c:240: drawWorld(ulx, uly);
   4B30 DD 7E FC      [19] 1119 	ld	a,-4 (ix)
   4B33 F5            [11] 1120 	push	af
   4B34 33            [ 6] 1121 	inc	sp
   4B35 DD 7E FB      [19] 1122 	ld	a,-5 (ix)
   4B38 F5            [11] 1123 	push	af
   4B39 33            [ 6] 1124 	inc	sp
   4B3A CD F8 56      [17] 1125 	call	_drawWorld
   4B3D F1            [10] 1126 	pop	af
                           1127 ;src/game/game.c:245: for(i=0; i<14000; i++) {}
   4B3E                    1128 00225$:
   4B3E 21 B0 36      [10] 1129 	ld	hl,#0x36B0
   4B41                    1130 00195$:
   4B41 2B            [ 6] 1131 	dec	hl
   4B42 7C            [ 4] 1132 	ld	a,h
   4B43 B5            [ 4] 1133 	or	a,l
   4B44 20 FB         [12] 1134 	jr	NZ,00195$
   4B46 C3 27 4D      [10] 1135 	jp	00180$
   4B49                    1136 00170$:
                           1137 ;src/game/game.c:249: else if ( cpct_isKeyPressed(Key_Space) )
   4B49 21 05 80      [10] 1138 	ld	hl,#0x8005
   4B4C CD 54 69      [17] 1139 	call	_cpct_isKeyPressed
   4B4F 7D            [ 4] 1140 	ld	a,l
   4B50 B7            [ 4] 1141 	or	a, a
   4B51 CA CF 4B      [10] 1142 	jp	Z,00167$
                           1143 ;src/game/game.c:251: if(CURSOR_MODE==T_SSNS)
   4B54 3A 99 7D      [13] 1144 	ld	a,(#_CURSOR_MODE + 0)
   4B57 3D            [ 4] 1145 	dec	a
   4B58 20 07         [12] 1146 	jr	NZ,00143$
                           1147 ;src/game/game.c:252: CURSOR_MODE=T_SSEW;
   4B5A 21 99 7D      [10] 1148 	ld	hl,#_CURSOR_MODE + 0
   4B5D 36 02         [10] 1149 	ld	(hl), #0x02
   4B5F 18 63         [12] 1150 	jr	00237$
   4B61                    1151 00143$:
                           1152 ;src/game/game.c:253: else if(CURSOR_MODE==T_SSEW)
   4B61 3A 99 7D      [13] 1153 	ld	a,(#_CURSOR_MODE + 0)
   4B64 D6 02         [ 7] 1154 	sub	a, #0x02
   4B66 20 07         [12] 1155 	jr	NZ,00140$
                           1156 ;src/game/game.c:254: CURSOR_MODE=T_SSNS;
   4B68 21 99 7D      [10] 1157 	ld	hl,#_CURSOR_MODE + 0
   4B6B 36 01         [10] 1158 	ld	(hl), #0x01
   4B6D 18 55         [12] 1159 	jr	00237$
   4B6F                    1160 00140$:
                           1161 ;src/game/game.c:255: else if(CURSOR_MODE==T_SMNS)
   4B6F 3A 99 7D      [13] 1162 	ld	a,(#_CURSOR_MODE + 0)
   4B72 D6 03         [ 7] 1163 	sub	a, #0x03
   4B74 20 07         [12] 1164 	jr	NZ,00137$
                           1165 ;src/game/game.c:256: CURSOR_MODE=T_SMEW;
   4B76 21 99 7D      [10] 1166 	ld	hl,#_CURSOR_MODE + 0
   4B79 36 04         [10] 1167 	ld	(hl), #0x04
   4B7B 18 47         [12] 1168 	jr	00237$
   4B7D                    1169 00137$:
                           1170 ;src/game/game.c:257: else if(CURSOR_MODE==T_SMEW)
   4B7D 3A 99 7D      [13] 1171 	ld	a,(#_CURSOR_MODE + 0)
   4B80 D6 04         [ 7] 1172 	sub	a, #0x04
   4B82 20 07         [12] 1173 	jr	NZ,00134$
                           1174 ;src/game/game.c:258: CURSOR_MODE=T_SMNS;
   4B84 21 99 7D      [10] 1175 	ld	hl,#_CURSOR_MODE + 0
   4B87 36 03         [10] 1176 	ld	(hl), #0x03
   4B89 18 39         [12] 1177 	jr	00237$
   4B8B                    1178 00134$:
                           1179 ;src/game/game.c:259: else if(CURSOR_MODE==T_SLNS)
   4B8B 3A 99 7D      [13] 1180 	ld	a,(#_CURSOR_MODE + 0)
   4B8E D6 05         [ 7] 1181 	sub	a, #0x05
   4B90 20 07         [12] 1182 	jr	NZ,00131$
                           1183 ;src/game/game.c:260: CURSOR_MODE=T_SLEW;
   4B92 21 99 7D      [10] 1184 	ld	hl,#_CURSOR_MODE + 0
   4B95 36 06         [10] 1185 	ld	(hl), #0x06
   4B97 18 2B         [12] 1186 	jr	00237$
   4B99                    1187 00131$:
                           1188 ;src/game/game.c:261: else if(CURSOR_MODE==T_SLEW)
   4B99 3A 99 7D      [13] 1189 	ld	a,(#_CURSOR_MODE + 0)
   4B9C D6 06         [ 7] 1190 	sub	a, #0x06
   4B9E 20 07         [12] 1191 	jr	NZ,00128$
                           1192 ;src/game/game.c:262: CURSOR_MODE=T_SLNS;
   4BA0 21 99 7D      [10] 1193 	ld	hl,#_CURSOR_MODE + 0
   4BA3 36 05         [10] 1194 	ld	(hl), #0x05
   4BA5 18 1D         [12] 1195 	jr	00237$
   4BA7                    1196 00128$:
                           1197 ;src/game/game.c:263: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   4BA7 3A 99 7D      [13] 1198 	ld	a,(#_CURSOR_MODE + 0)
   4BAA FE 07         [ 7] 1199 	cp	a,#0x07
   4BAC 38 0A         [12] 1200 	jr	C,00124$
   4BAE D6 10         [ 7] 1201 	sub	a, #0x10
   4BB0 30 06         [12] 1202 	jr	NC,00124$
                           1203 ;src/game/game.c:264: CURSOR_MODE+=1;
   4BB2 21 99 7D      [10] 1204 	ld	hl, #_CURSOR_MODE+0
   4BB5 34            [11] 1205 	inc	(hl)
   4BB6 18 0C         [12] 1206 	jr	00237$
   4BB8                    1207 00124$:
                           1208 ;src/game/game.c:265: else if(CURSOR_MODE==T_RNSW)
   4BB8 3A 99 7D      [13] 1209 	ld	a,(#_CURSOR_MODE + 0)
   4BBB D6 10         [ 7] 1210 	sub	a, #0x10
   4BBD 20 05         [12] 1211 	jr	NZ,00237$
                           1212 ;src/game/game.c:266: CURSOR_MODE=T_REW;
   4BBF 21 99 7D      [10] 1213 	ld	hl,#_CURSOR_MODE + 0
   4BC2 36 07         [10] 1214 	ld	(hl), #0x07
                           1215 ;src/game/game.c:268: for(i=0; i<14000; i++) {}
   4BC4                    1216 00237$:
   4BC4 21 B0 36      [10] 1217 	ld	hl,#0x36B0
   4BC7                    1218 00198$:
   4BC7 2B            [ 6] 1219 	dec	hl
   4BC8 7C            [ 4] 1220 	ld	a,h
   4BC9 B5            [ 4] 1221 	or	a,l
   4BCA 20 FB         [12] 1222 	jr	NZ,00198$
   4BCC C3 27 4D      [10] 1223 	jp	00180$
   4BCF                    1224 00167$:
                           1225 ;src/game/game.c:271: else if ( cpct_isKeyPressed(Key_Esc) )
   4BCF 21 08 04      [10] 1226 	ld	hl,#0x0408
   4BD2 CD 54 69      [17] 1227 	call	_cpct_isKeyPressed
   4BD5 7D            [ 4] 1228 	ld	a,l
   4BD6 B7            [ 4] 1229 	or	a, a
   4BD7 CA 6E 4C      [10] 1230 	jp	Z,00164$
                           1231 ;src/game/game.c:274: if(CURSOR_MODE==NONE)
   4BDA 3A 99 7D      [13] 1232 	ld	a,(#_CURSOR_MODE + 0)
   4BDD B7            [ 4] 1233 	or	a, a
   4BDE 20 62         [12] 1234 	jr	NZ,00150$
                           1235 ;src/game/game.c:277: const char *txtWindowQuit[] = { 
   4BE0 21 00 00      [10] 1236 	ld	hl,#0x0000
   4BE3 39            [11] 1237 	add	hl,sp
   4BE4 5D            [ 4] 1238 	ld	e,l
   4BE5 54            [ 4] 1239 	ld	d,h
   4BE6 36 53         [10] 1240 	ld	(hl),#<(___str_30)
   4BE8 23            [ 6] 1241 	inc	hl
   4BE9 36 4D         [10] 1242 	ld	(hl),#>(___str_30)
   4BEB 6B            [ 4] 1243 	ld	l, e
   4BEC 62            [ 4] 1244 	ld	h, d
   4BED 23            [ 6] 1245 	inc	hl
   4BEE 23            [ 6] 1246 	inc	hl
   4BEF 36 61         [10] 1247 	ld	(hl),#<(___str_31)
   4BF1 23            [ 6] 1248 	inc	hl
   4BF2 36 4D         [10] 1249 	ld	(hl),#>(___str_31)
   4BF4 21 04 00      [10] 1250 	ld	hl,#0x0004
   4BF7 19            [11] 1251 	add	hl,de
   4BF8 36 62         [10] 1252 	ld	(hl),#<(___str_32)
   4BFA 23            [ 6] 1253 	inc	hl
   4BFB 36 4D         [10] 1254 	ld	(hl),#>(___str_32)
                           1255 ;src/game/game.c:283: putM2();
   4BFD D5            [11] 1256 	push	de
   4BFE CD 58 57      [17] 1257 	call	_putM2
   4C01 D1            [10] 1258 	pop	de
                           1259 ;src/game/game.c:284: if(	drawWindow(txtWindowQuit,3,1) == 1)
   4C02 21 03 01      [10] 1260 	ld	hl,#0x0103
   4C05 E5            [11] 1261 	push	hl
   4C06 D5            [11] 1262 	push	de
   4C07 CD 5C 5C      [17] 1263 	call	_drawWindow
   4C0A F1            [10] 1264 	pop	af
   4C0B F1            [10] 1265 	pop	af
   4C0C 2D            [ 4] 1266 	dec	l
   4C0D 20 06         [12] 1267 	jr	NZ,00147$
                           1268 ;src/game/game.c:285: exit=1;
   4C0F DD 36 F6 01   [19] 1269 	ld	-10 (ix),#0x01
   4C13 18 4E         [12] 1270 	jr	00242$
   4C15                    1271 00147$:
                           1272 ;src/game/game.c:288: putM1();
   4C15 CD 44 57      [17] 1273 	call	_putM1
                           1274 ;src/game/game.c:289: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   4C18 21 00 00      [10] 1275 	ld	hl,#0x0000
   4C1B E5            [11] 1276 	push	hl
   4C1C 2E 00         [ 7] 1277 	ld	l, #0x00
   4C1E E5            [11] 1278 	push	hl
   4C1F CD 83 6C      [17] 1279 	call	_cpct_px2byteM1
   4C22 F1            [10] 1280 	pop	af
   4C23 F1            [10] 1281 	pop	af
   4C24 65            [ 4] 1282 	ld	h,l
   4C25 01 00 40      [10] 1283 	ld	bc,#0x4000
   4C28 C5            [11] 1284 	push	bc
   4C29 E5            [11] 1285 	push	hl
   4C2A 33            [ 6] 1286 	inc	sp
   4C2B 21 00 C0      [10] 1287 	ld	hl,#0xC000
   4C2E E5            [11] 1288 	push	hl
   4C2F CD 75 6C      [17] 1289 	call	_cpct_memset
                           1290 ;src/game/game.c:290: drawWorld(ulx, uly);
   4C32 DD 7E FC      [19] 1291 	ld	a,-4 (ix)
   4C35 F5            [11] 1292 	push	af
   4C36 33            [ 6] 1293 	inc	sp
   4C37 DD 7E FB      [19] 1294 	ld	a,-5 (ix)
   4C3A F5            [11] 1295 	push	af
   4C3B 33            [ 6] 1296 	inc	sp
   4C3C CD F8 56      [17] 1297 	call	_drawWorld
   4C3F F1            [10] 1298 	pop	af
   4C40 18 21         [12] 1299 	jr	00242$
   4C42                    1300 00150$:
                           1301 ;src/game/game.c:295: CURSOR_MODE=NONE;
   4C42 FD 21 99 7D   [14] 1302 	ld	iy,#_CURSOR_MODE
   4C46 FD 36 00 00   [19] 1303 	ld	0 (iy),#0x00
                           1304 ;src/game/game.c:296: drawTile(ulx, uly, xCursor, yCursor);
   4C4A DD 7E FF      [19] 1305 	ld	a,-1 (ix)
   4C4D F5            [11] 1306 	push	af
   4C4E 33            [ 6] 1307 	inc	sp
   4C4F DD 7E FD      [19] 1308 	ld	a,-3 (ix)
   4C52 F5            [11] 1309 	push	af
   4C53 33            [ 6] 1310 	inc	sp
   4C54 DD 7E FC      [19] 1311 	ld	a,-4 (ix)
   4C57 F5            [11] 1312 	push	af
   4C58 33            [ 6] 1313 	inc	sp
   4C59 DD 7E FB      [19] 1314 	ld	a,-5 (ix)
   4C5C F5            [11] 1315 	push	af
   4C5D 33            [ 6] 1316 	inc	sp
   4C5E CD 37 54      [17] 1317 	call	_drawTile
   4C61 F1            [10] 1318 	pop	af
   4C62 F1            [10] 1319 	pop	af
                           1320 ;src/game/game.c:300: for(i=0; i<14000; i++) {}
   4C63                    1321 00242$:
   4C63 01 B0 36      [10] 1322 	ld	bc,#0x36B0
   4C66                    1323 00201$:
   4C66 0B            [ 6] 1324 	dec	bc
   4C67 78            [ 4] 1325 	ld	a,b
   4C68 B1            [ 4] 1326 	or	a,c
   4C69 20 FB         [12] 1327 	jr	NZ,00201$
   4C6B C3 27 4D      [10] 1328 	jp	00180$
   4C6E                    1329 00164$:
                           1330 ;src/game/game.c:303: else if ( cpct_isKeyPressed(Key_Return) )
   4C6E 21 02 04      [10] 1331 	ld	hl,#0x0402
   4C71 CD 54 69      [17] 1332 	call	_cpct_isKeyPressed
   4C74 7D            [ 4] 1333 	ld	a,l
   4C75 B7            [ 4] 1334 	or	a, a
   4C76 CA 27 4D      [10] 1335 	jp	Z,00180$
                           1336 ;src/game/game.c:306: if(CURSOR_MODE==NONE)
   4C79 3A 99 7D      [13] 1337 	ld	a,(#_CURSOR_MODE + 0)
   4C7C B7            [ 4] 1338 	or	a, a
   4C7D 20 42         [12] 1339 	jr	NZ,00158$
                           1340 ;src/game/game.c:308: menuTile(ulx+xCursor, uly+yCursor);
   4C7F DD 7E F7      [19] 1341 	ld	a, -9 (ix)
   4C82 DD 6E F2      [19] 1342 	ld	l, -14 (ix)
   4C85 85            [ 4] 1343 	add	a, l
   4C86 67            [ 4] 1344 	ld	h,a
   4C87 DD 6E F4      [19] 1345 	ld	l,-12 (ix)
   4C8A DD 56 F9      [19] 1346 	ld	d,-7 (ix)
   4C8D 7D            [ 4] 1347 	ld	a,l
   4C8E 82            [ 4] 1348 	add	a, d
   4C8F E5            [11] 1349 	push	hl
   4C90 33            [ 6] 1350 	inc	sp
   4C91 F5            [11] 1351 	push	af
   4C92 33            [ 6] 1352 	inc	sp
   4C93 CD E4 46      [17] 1353 	call	_menuTile
   4C96 F1            [10] 1354 	pop	af
                           1355 ;src/game/game.c:309: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   4C97 21 00 00      [10] 1356 	ld	hl,#0x0000
   4C9A E5            [11] 1357 	push	hl
   4C9B 2E 00         [ 7] 1358 	ld	l, #0x00
   4C9D E5            [11] 1359 	push	hl
   4C9E CD 83 6C      [17] 1360 	call	_cpct_px2byteM1
   4CA1 F1            [10] 1361 	pop	af
   4CA2 F1            [10] 1362 	pop	af
   4CA3 65            [ 4] 1363 	ld	h,l
   4CA4 01 00 40      [10] 1364 	ld	bc,#0x4000
   4CA7 C5            [11] 1365 	push	bc
   4CA8 E5            [11] 1366 	push	hl
   4CA9 33            [ 6] 1367 	inc	sp
   4CAA 21 00 C0      [10] 1368 	ld	hl,#0xC000
   4CAD E5            [11] 1369 	push	hl
   4CAE CD 75 6C      [17] 1370 	call	_cpct_memset
                           1371 ;src/game/game.c:310: drawWorld(ulx, uly);
   4CB1 DD 7E FC      [19] 1372 	ld	a,-4 (ix)
   4CB4 F5            [11] 1373 	push	af
   4CB5 33            [ 6] 1374 	inc	sp
   4CB6 DD 7E FB      [19] 1375 	ld	a,-5 (ix)
   4CB9 F5            [11] 1376 	push	af
   4CBA 33            [ 6] 1377 	inc	sp
   4CBB CD F8 56      [17] 1378 	call	_drawWorld
   4CBE F1            [10] 1379 	pop	af
   4CBF 18 4B         [12] 1380 	jr	00248$
   4CC1                    1381 00158$:
                           1382 ;src/game/game.c:313: else if(CURSOR_MODE>=T_SSNS)
   4CC1 3A 99 7D      [13] 1383 	ld	a,(#_CURSOR_MODE + 0)
   4CC4 D6 01         [ 7] 1384 	sub	a, #0x01
   4CC6 38 44         [12] 1385 	jr	C,00248$
                           1386 ;src/game/game.c:315: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   4CC8 DD 7E F4      [19] 1387 	ld	a,-12 (ix)
   4CCB DD 86 F9      [19] 1388 	add	a, -7 (ix)
   4CCE 5F            [ 4] 1389 	ld	e,a
   4CCF DD 7E F5      [19] 1390 	ld	a,-11 (ix)
   4CD2 DD 8E FA      [19] 1391 	adc	a, -6 (ix)
   4CD5 57            [ 4] 1392 	ld	d,a
   4CD6 DD 7E F7      [19] 1393 	ld	a,-9 (ix)
   4CD9 DD 86 F2      [19] 1394 	add	a, -14 (ix)
   4CDC 6F            [ 4] 1395 	ld	l,a
   4CDD DD 7E F8      [19] 1396 	ld	a,-8 (ix)
   4CE0 DD 8E F3      [19] 1397 	adc	a, -13 (ix)
   4CE3 67            [ 4] 1398 	ld	h,a
   4CE4 4D            [ 4] 1399 	ld	c, l
   4CE5 44            [ 4] 1400 	ld	b, h
   4CE6 29            [11] 1401 	add	hl, hl
   4CE7 29            [11] 1402 	add	hl, hl
   4CE8 09            [11] 1403 	add	hl, bc
   4CE9 29            [11] 1404 	add	hl, hl
   4CEA 29            [11] 1405 	add	hl, hl
   4CEB 29            [11] 1406 	add	hl, hl
   4CEC 29            [11] 1407 	add	hl, hl
   4CED 19            [11] 1408 	add	hl,de
   4CEE 3E 99         [ 7] 1409 	ld	a,#<(_p_world)
   4CF0 85            [ 4] 1410 	add	a, l
   4CF1 5F            [ 4] 1411 	ld	e,a
   4CF2 3E 6E         [ 7] 1412 	ld	a,#>(_p_world)
   4CF4 8C            [ 4] 1413 	adc	a, h
   4CF5 57            [ 4] 1414 	ld	d,a
   4CF6 3A 99 7D      [13] 1415 	ld	a,(#_CURSOR_MODE + 0)
   4CF9 C6 09         [ 7] 1416 	add	a, #0x09
   4CFB 12            [ 7] 1417 	ld	(de),a
                           1418 ;src/game/game.c:318: if(CURSOR_MODE<=T_SLEW)
   4CFC 3E 06         [ 7] 1419 	ld	a,#0x06
   4CFE FD 21 99 7D   [14] 1420 	ld	iy,#_CURSOR_MODE
   4D02 FD 96 00      [19] 1421 	sub	a, 0 (iy)
   4D05 38 05         [12] 1422 	jr	C,00248$
                           1423 ;src/game/game.c:319: CURSOR_MODE=NONE;
   4D07 21 99 7D      [10] 1424 	ld	hl,#_CURSOR_MODE + 0
   4D0A 36 00         [10] 1425 	ld	(hl), #0x00
                           1426 ;src/game/game.c:323: for(i=0; i<14000; i++) {}
   4D0C                    1427 00248$:
   4D0C DD 36 F0 B0   [19] 1428 	ld	-16 (ix),#0xB0
   4D10 DD 36 F1 36   [19] 1429 	ld	-15 (ix),#0x36
   4D14                    1430 00204$:
   4D14 DD 6E F0      [19] 1431 	ld	l,-16 (ix)
   4D17 DD 66 F1      [19] 1432 	ld	h,-15 (ix)
   4D1A 2B            [ 6] 1433 	dec	hl
   4D1B DD 75 F0      [19] 1434 	ld	-16 (ix),l
   4D1E DD 74 F1      [19] 1435 	ld	-15 (ix), h
   4D21 7C            [ 4] 1436 	ld	a, h
   4D22 DD B6 F0      [19] 1437 	or	a,-16 (ix)
   4D25 20 ED         [12] 1438 	jr	NZ,00204$
   4D27                    1439 00180$:
                           1440 ;src/game/game.c:327: drawCursor(xCursor, yCursor, 0);
   4D27 DD 56 F2      [19] 1441 	ld	d,-14 (ix)
   4D2A DD 46 F9      [19] 1442 	ld	b,-7 (ix)
   4D2D AF            [ 4] 1443 	xor	a, a
   4D2E F5            [11] 1444 	push	af
   4D2F 33            [ 6] 1445 	inc	sp
   4D30 D5            [11] 1446 	push	de
   4D31 33            [ 6] 1447 	inc	sp
   4D32 C5            [11] 1448 	push	bc
   4D33 33            [ 6] 1449 	inc	sp
   4D34 CD 9C 4D      [17] 1450 	call	_drawCursor
   4D37 F1            [10] 1451 	pop	af
   4D38 33            [ 6] 1452 	inc	sp
                           1453 ;src/game/game.c:328: drawScrolls(ulx, uly);
   4D39 DD 7E FC      [19] 1454 	ld	a,-4 (ix)
   4D3C F5            [11] 1455 	push	af
   4D3D 33            [ 6] 1456 	inc	sp
   4D3E DD 7E FB      [19] 1457 	ld	a,-5 (ix)
   4D41 F5            [11] 1458 	push	af
   4D42 33            [ 6] 1459 	inc	sp
   4D43 CD 5F 56      [17] 1460 	call	_drawScrolls
   4D46 F1            [10] 1461 	pop	af
                           1462 ;src/game/game.c:330: while(!exit);
   4D47 DD 7E F6      [19] 1463 	ld	a,-10 (ix)
   4D4A B7            [ 4] 1464 	or	a, a
   4D4B CA 1F 49      [10] 1465 	jp	Z,00181$
   4D4E DD F9         [10] 1466 	ld	sp, ix
   4D50 DD E1         [14] 1467 	pop	ix
   4D52 C9            [10] 1468 	ret
   4D53                    1469 ___str_30:
   4D53 52 65 61 6C 6C 79  1470 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   4D60 00                 1471 	.db 0x00
   4D61                    1472 ___str_31:
   4D61 00                 1473 	.db 0x00
   4D62                    1474 ___str_32:
   4D62 50 72 65 73 73 20  1475 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   4D87 00                 1476 	.db 0x00
   4D88                    1477 ___str_33:
   4D88 47 65 6E 65 72 61  1478 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   4D9B 00                 1479 	.db 0x00
                           1480 	.area _CODE
                           1481 	.area _INITIALIZER
                           1482 	.area _CABS (ABS)
