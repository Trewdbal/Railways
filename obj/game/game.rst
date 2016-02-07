                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Feb  7 17:44:04 2016
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
   468E                      68 _windowInfoTile::
   468E DD E5         [15]   69 	push	ix
   4690 DD 21 00 00   [14]   70 	ld	ix,#0
   4694 DD 39         [15]   71 	add	ix,sp
   4696 21 F8 FF      [10]   72 	ld	hl,#-8
   4699 39            [11]   73 	add	hl,sp
   469A F9            [ 6]   74 	ld	sp,hl
                             75 ;src/game/game.c:7: switch(p_world[y*WIDTH+x])
   469B DD 4E 05      [19]   76 	ld	c,5 (ix)
   469E 06 00         [ 7]   77 	ld	b,#0x00
   46A0 69            [ 4]   78 	ld	l, c
   46A1 60            [ 4]   79 	ld	h, b
   46A2 29            [11]   80 	add	hl, hl
   46A3 29            [11]   81 	add	hl, hl
   46A4 09            [11]   82 	add	hl, bc
   46A5 29            [11]   83 	add	hl, hl
   46A6 29            [11]   84 	add	hl, hl
   46A7 29            [11]   85 	add	hl, hl
   46A8 29            [11]   86 	add	hl, hl
   46A9 DD 5E 04      [19]   87 	ld	e,4 (ix)
   46AC 16 00         [ 7]   88 	ld	d,#0x00
   46AE 19            [11]   89 	add	hl,de
   46AF 11 FA 75      [10]   90 	ld	de,#_p_world
   46B2 19            [11]   91 	add	hl,de
   46B3 4E            [ 7]   92 	ld	c,(hl)
   46B4 3E 09         [ 7]   93 	ld	a,#0x09
   46B6 91            [ 4]   94 	sub	a, c
   46B7 DA E8 47      [10]   95 	jp	C,00111$
   46BA 59            [ 4]   96 	ld	e,c
   46BB 16 00         [ 7]   97 	ld	d,#0x00
   46BD 21 C4 46      [10]   98 	ld	hl,#00119$
   46C0 19            [11]   99 	add	hl,de
   46C1 19            [11]  100 	add	hl,de
   46C2 19            [11]  101 	add	hl,de
   46C3 E9            [ 4]  102 	jp	(hl)
   46C4                     103 00119$:
   46C4 C3 E2 46      [10]  104 	jp	00101$
   46C7 C3 E2 46      [10]  105 	jp	00102$
   46CA C3 0E 47      [10]  106 	jp	00103$
   46CD C3 0E 47      [10]  107 	jp	00104$
   46D0 C3 0E 47      [10]  108 	jp	00105$
   46D3 C3 3A 47      [10]  109 	jp	00106$
   46D6 C3 3A 47      [10]  110 	jp	00107$
   46D9 C3 66 47      [10]  111 	jp	00108$
   46DC C3 92 47      [10]  112 	jp	00109$
   46DF C3 BD 47      [10]  113 	jp	00110$
                            114 ;src/game/game.c:9: case GRASS1:
   46E2                     115 00101$:
                            116 ;src/game/game.c:10: case GRASS2:
   46E2                     117 00102$:
                            118 ;src/game/game.c:11: txtWindowInfoTile[0] = "Grassland";
   46E2 21 00 00      [10]  119 	ld	hl,#0x0000
   46E5 39            [11]  120 	add	hl,sp
   46E6 5D            [ 4]  121 	ld	e,l
   46E7 54            [ 4]  122 	ld	d,h
   46E8 36 23         [10]  123 	ld	(hl),#<(___str_0)
   46EA 23            [ 6]  124 	inc	hl
   46EB 36 48         [10]  125 	ld	(hl),#>(___str_0)
                            126 ;src/game/game.c:12: txtWindowInfoTile[1] = "";
   46ED 6B            [ 4]  127 	ld	l, e
   46EE 62            [ 4]  128 	ld	h, d
   46EF 23            [ 6]  129 	inc	hl
   46F0 23            [ 6]  130 	inc	hl
   46F1 01 2D 48      [10]  131 	ld	bc,#___str_1+0
   46F4 71            [ 7]  132 	ld	(hl),c
   46F5 23            [ 6]  133 	inc	hl
   46F6 70            [ 7]  134 	ld	(hl),b
                            135 ;src/game/game.c:13: txtWindowInfoTile[2] = "Production: Nothing";
   46F7 21 04 00      [10]  136 	ld	hl,#0x0004
   46FA 19            [11]  137 	add	hl,de
   46FB 01 2E 48      [10]  138 	ld	bc,#___str_2+0
   46FE 71            [ 7]  139 	ld	(hl),c
   46FF 23            [ 6]  140 	inc	hl
   4700 70            [ 7]  141 	ld	(hl),b
                            142 ;src/game/game.c:14: txtWindowInfoTile[3] = "Demand: Nothing";
   4701 21 06 00      [10]  143 	ld	hl,#0x0006
   4704 19            [11]  144 	add	hl,de
   4705 11 42 48      [10]  145 	ld	de,#___str_3+0
   4708 73            [ 7]  146 	ld	(hl),e
   4709 23            [ 6]  147 	inc	hl
   470A 72            [ 7]  148 	ld	(hl),d
                            149 ;src/game/game.c:15: break;
   470B C3 11 48      [10]  150 	jp	00112$
                            151 ;src/game/game.c:16: case DWELLINGS1:
   470E                     152 00103$:
                            153 ;src/game/game.c:17: case DWELLINGS2:
   470E                     154 00104$:
                            155 ;src/game/game.c:18: case DWELLINGS3:
   470E                     156 00105$:
                            157 ;src/game/game.c:19: txtWindowInfoTile[0] = "City";
   470E 21 00 00      [10]  158 	ld	hl,#0x0000
   4711 39            [11]  159 	add	hl,sp
   4712 5D            [ 4]  160 	ld	e,l
   4713 54            [ 4]  161 	ld	d,h
   4714 36 52         [10]  162 	ld	(hl),#<(___str_4)
   4716 23            [ 6]  163 	inc	hl
   4717 36 48         [10]  164 	ld	(hl),#>(___str_4)
                            165 ;src/game/game.c:20: txtWindowInfoTile[1] = "";
   4719 6B            [ 4]  166 	ld	l, e
   471A 62            [ 4]  167 	ld	h, d
   471B 23            [ 6]  168 	inc	hl
   471C 23            [ 6]  169 	inc	hl
   471D 01 2D 48      [10]  170 	ld	bc,#___str_1+0
   4720 71            [ 7]  171 	ld	(hl),c
   4721 23            [ 6]  172 	inc	hl
   4722 70            [ 7]  173 	ld	(hl),b
                            174 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   4723 21 04 00      [10]  175 	ld	hl,#0x0004
   4726 19            [11]  176 	add	hl,de
   4727 01 57 48      [10]  177 	ld	bc,#___str_5+0
   472A 71            [ 7]  178 	ld	(hl),c
   472B 23            [ 6]  179 	inc	hl
   472C 70            [ 7]  180 	ld	(hl),b
                            181 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   472D 21 06 00      [10]  182 	ld	hl,#0x0006
   4730 19            [11]  183 	add	hl,de
   4731 11 74 48      [10]  184 	ld	de,#___str_6+0
   4734 73            [ 7]  185 	ld	(hl),e
   4735 23            [ 6]  186 	inc	hl
   4736 72            [ 7]  187 	ld	(hl),d
                            188 ;src/game/game.c:23: break;
   4737 C3 11 48      [10]  189 	jp	00112$
                            190 ;src/game/game.c:24: case FARM1:
   473A                     191 00106$:
                            192 ;src/game/game.c:25: case FARM2:
   473A                     193 00107$:
                            194 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   473A 21 00 00      [10]  195 	ld	hl,#0x0000
   473D 39            [11]  196 	add	hl,sp
   473E 5D            [ 4]  197 	ld	e,l
   473F 54            [ 4]  198 	ld	d,h
   4740 36 99         [10]  199 	ld	(hl),#<(___str_7)
   4742 23            [ 6]  200 	inc	hl
   4743 36 48         [10]  201 	ld	(hl),#>(___str_7)
                            202 ;src/game/game.c:27: txtWindowInfoTile[1] = "";
   4745 6B            [ 4]  203 	ld	l, e
   4746 62            [ 4]  204 	ld	h, d
   4747 23            [ 6]  205 	inc	hl
   4748 23            [ 6]  206 	inc	hl
   4749 01 2D 48      [10]  207 	ld	bc,#___str_1+0
   474C 71            [ 7]  208 	ld	(hl),c
   474D 23            [ 6]  209 	inc	hl
   474E 70            [ 7]  210 	ld	(hl),b
                            211 ;src/game/game.c:28: txtWindowInfoTile[2] = "Production: Cereal";
   474F 21 04 00      [10]  212 	ld	hl,#0x0004
   4752 19            [11]  213 	add	hl,de
   4753 01 9E 48      [10]  214 	ld	bc,#___str_8+0
   4756 71            [ 7]  215 	ld	(hl),c
   4757 23            [ 6]  216 	inc	hl
   4758 70            [ 7]  217 	ld	(hl),b
                            218 ;src/game/game.c:29: txtWindowInfoTile[3] = "Demand: Nothing";
   4759 21 06 00      [10]  219 	ld	hl,#0x0006
   475C 19            [11]  220 	add	hl,de
   475D 11 42 48      [10]  221 	ld	de,#___str_3+0
   4760 73            [ 7]  222 	ld	(hl),e
   4761 23            [ 6]  223 	inc	hl
   4762 72            [ 7]  224 	ld	(hl),d
                            225 ;src/game/game.c:30: break;
   4763 C3 11 48      [10]  226 	jp	00112$
                            227 ;src/game/game.c:31: case WATER:
   4766                     228 00108$:
                            229 ;src/game/game.c:32: txtWindowInfoTile[0] = "Water";
   4766 21 00 00      [10]  230 	ld	hl,#0x0000
   4769 39            [11]  231 	add	hl,sp
   476A 5D            [ 4]  232 	ld	e,l
   476B 54            [ 4]  233 	ld	d,h
   476C 36 B1         [10]  234 	ld	(hl),#<(___str_9)
   476E 23            [ 6]  235 	inc	hl
   476F 36 48         [10]  236 	ld	(hl),#>(___str_9)
                            237 ;src/game/game.c:33: txtWindowInfoTile[1] = "";
   4771 6B            [ 4]  238 	ld	l, e
   4772 62            [ 4]  239 	ld	h, d
   4773 23            [ 6]  240 	inc	hl
   4774 23            [ 6]  241 	inc	hl
   4775 01 2D 48      [10]  242 	ld	bc,#___str_1+0
   4778 71            [ 7]  243 	ld	(hl),c
   4779 23            [ 6]  244 	inc	hl
   477A 70            [ 7]  245 	ld	(hl),b
                            246 ;src/game/game.c:34: txtWindowInfoTile[2] = "Production: Nothing";
   477B 21 04 00      [10]  247 	ld	hl,#0x0004
   477E 19            [11]  248 	add	hl,de
   477F 01 2E 48      [10]  249 	ld	bc,#___str_2+0
   4782 71            [ 7]  250 	ld	(hl),c
   4783 23            [ 6]  251 	inc	hl
   4784 70            [ 7]  252 	ld	(hl),b
                            253 ;src/game/game.c:35: txtWindowInfoTile[3] = "Demand: Nothing";
   4785 21 06 00      [10]  254 	ld	hl,#0x0006
   4788 19            [11]  255 	add	hl,de
   4789 11 42 48      [10]  256 	ld	de,#___str_3+0
   478C 73            [ 7]  257 	ld	(hl),e
   478D 23            [ 6]  258 	inc	hl
   478E 72            [ 7]  259 	ld	(hl),d
                            260 ;src/game/game.c:36: break;
   478F C3 11 48      [10]  261 	jp	00112$
                            262 ;src/game/game.c:37: case FOREST:
   4792                     263 00109$:
                            264 ;src/game/game.c:38: txtWindowInfoTile[0] = "Forest";
   4792 21 00 00      [10]  265 	ld	hl,#0x0000
   4795 39            [11]  266 	add	hl,sp
   4796 5D            [ 4]  267 	ld	e,l
   4797 54            [ 4]  268 	ld	d,h
   4798 36 B7         [10]  269 	ld	(hl),#<(___str_10)
   479A 23            [ 6]  270 	inc	hl
   479B 36 48         [10]  271 	ld	(hl),#>(___str_10)
                            272 ;src/game/game.c:39: txtWindowInfoTile[1] = "";
   479D 6B            [ 4]  273 	ld	l, e
   479E 62            [ 4]  274 	ld	h, d
   479F 23            [ 6]  275 	inc	hl
   47A0 23            [ 6]  276 	inc	hl
   47A1 01 2D 48      [10]  277 	ld	bc,#___str_1+0
   47A4 71            [ 7]  278 	ld	(hl),c
   47A5 23            [ 6]  279 	inc	hl
   47A6 70            [ 7]  280 	ld	(hl),b
                            281 ;src/game/game.c:40: txtWindowInfoTile[2] = "Production: Nothing";
   47A7 21 04 00      [10]  282 	ld	hl,#0x0004
   47AA 19            [11]  283 	add	hl,de
   47AB 01 2E 48      [10]  284 	ld	bc,#___str_2+0
   47AE 71            [ 7]  285 	ld	(hl),c
   47AF 23            [ 6]  286 	inc	hl
   47B0 70            [ 7]  287 	ld	(hl),b
                            288 ;src/game/game.c:41: txtWindowInfoTile[3] = "Demand: Nothing";
   47B1 21 06 00      [10]  289 	ld	hl,#0x0006
   47B4 19            [11]  290 	add	hl,de
   47B5 11 42 48      [10]  291 	ld	de,#___str_3+0
   47B8 73            [ 7]  292 	ld	(hl),e
   47B9 23            [ 6]  293 	inc	hl
   47BA 72            [ 7]  294 	ld	(hl),d
                            295 ;src/game/game.c:42: break;
   47BB 18 54         [12]  296 	jr	00112$
                            297 ;src/game/game.c:43: case LIVESTOCK:
   47BD                     298 00110$:
                            299 ;src/game/game.c:44: txtWindowInfoTile[0] = "Livestock farming";
   47BD 21 00 00      [10]  300 	ld	hl,#0x0000
   47C0 39            [11]  301 	add	hl,sp
   47C1 5D            [ 4]  302 	ld	e,l
   47C2 54            [ 4]  303 	ld	d,h
   47C3 36 BE         [10]  304 	ld	(hl),#<(___str_11)
   47C5 23            [ 6]  305 	inc	hl
   47C6 36 48         [10]  306 	ld	(hl),#>(___str_11)
                            307 ;src/game/game.c:45: txtWindowInfoTile[1] = "";
   47C8 6B            [ 4]  308 	ld	l, e
   47C9 62            [ 4]  309 	ld	h, d
   47CA 23            [ 6]  310 	inc	hl
   47CB 23            [ 6]  311 	inc	hl
   47CC 01 2D 48      [10]  312 	ld	bc,#___str_1+0
   47CF 71            [ 7]  313 	ld	(hl),c
   47D0 23            [ 6]  314 	inc	hl
   47D1 70            [ 7]  315 	ld	(hl),b
                            316 ;src/game/game.c:46: txtWindowInfoTile[2] = "Production: Livestock, wool";
   47D2 21 04 00      [10]  317 	ld	hl,#0x0004
   47D5 19            [11]  318 	add	hl,de
   47D6 01 D0 48      [10]  319 	ld	bc,#___str_12+0
   47D9 71            [ 7]  320 	ld	(hl),c
   47DA 23            [ 6]  321 	inc	hl
   47DB 70            [ 7]  322 	ld	(hl),b
                            323 ;src/game/game.c:47: txtWindowInfoTile[3] = "Demand: Cereal";
   47DC 21 06 00      [10]  324 	ld	hl,#0x0006
   47DF 19            [11]  325 	add	hl,de
   47E0 11 EC 48      [10]  326 	ld	de,#___str_13+0
   47E3 73            [ 7]  327 	ld	(hl),e
   47E4 23            [ 6]  328 	inc	hl
   47E5 72            [ 7]  329 	ld	(hl),d
                            330 ;src/game/game.c:48: break;
   47E6 18 29         [12]  331 	jr	00112$
                            332 ;src/game/game.c:49: default:
   47E8                     333 00111$:
                            334 ;src/game/game.c:50: txtWindowInfoTile[0] = "Not yet implemented";
   47E8 21 00 00      [10]  335 	ld	hl,#0x0000
   47EB 39            [11]  336 	add	hl,sp
   47EC 5D            [ 4]  337 	ld	e,l
   47ED 54            [ 4]  338 	ld	d,h
   47EE 36 FB         [10]  339 	ld	(hl),#<(___str_14)
   47F0 23            [ 6]  340 	inc	hl
   47F1 36 48         [10]  341 	ld	(hl),#>(___str_14)
                            342 ;src/game/game.c:51: txtWindowInfoTile[1] = "";
   47F3 6B            [ 4]  343 	ld	l, e
   47F4 62            [ 4]  344 	ld	h, d
   47F5 23            [ 6]  345 	inc	hl
   47F6 23            [ 6]  346 	inc	hl
   47F7 01 2D 48      [10]  347 	ld	bc,#___str_1+0
   47FA 71            [ 7]  348 	ld	(hl),c
   47FB 23            [ 6]  349 	inc	hl
   47FC 70            [ 7]  350 	ld	(hl),b
                            351 ;src/game/game.c:52: txtWindowInfoTile[2] = "Production: ?";
   47FD 21 04 00      [10]  352 	ld	hl,#0x0004
   4800 19            [11]  353 	add	hl,de
   4801 01 0F 49      [10]  354 	ld	bc,#___str_15+0
   4804 71            [ 7]  355 	ld	(hl),c
   4805 23            [ 6]  356 	inc	hl
   4806 70            [ 7]  357 	ld	(hl),b
                            358 ;src/game/game.c:53: txtWindowInfoTile[3] = "Demand: ?";
   4807 21 06 00      [10]  359 	ld	hl,#0x0006
   480A 19            [11]  360 	add	hl,de
   480B 11 1D 49      [10]  361 	ld	de,#___str_16+0
   480E 73            [ 7]  362 	ld	(hl),e
   480F 23            [ 6]  363 	inc	hl
   4810 72            [ 7]  364 	ld	(hl),d
                            365 ;src/game/game.c:55: }
   4811                     366 00112$:
                            367 ;src/game/game.c:57: drawWindow(txtWindowInfoTile, 4, 0);
   4811 21 00 00      [10]  368 	ld	hl,#0x0000
   4814 39            [11]  369 	add	hl,sp
   4815 EB            [ 4]  370 	ex	de,hl
   4816 21 04 00      [10]  371 	ld	hl,#0x0004
   4819 E5            [11]  372 	push	hl
   481A D5            [11]  373 	push	de
   481B CD 0D 5F      [17]  374 	call	_drawWindow
   481E DD F9         [10]  375 	ld	sp,ix
   4820 DD E1         [14]  376 	pop	ix
   4822 C9            [10]  377 	ret
   4823                     378 ___str_0:
   4823 47 72 61 73 73 6C   379 	.ascii "Grassland"
        61 6E 64
   482C 00                  380 	.db 0x00
   482D                     381 ___str_1:
   482D 00                  382 	.db 0x00
   482E                     383 ___str_2:
   482E 50 72 6F 64 75 63   384 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   4841 00                  385 	.db 0x00
   4842                     386 ___str_3:
   4842 44 65 6D 61 6E 64   387 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   4851 00                  388 	.db 0x00
   4852                     389 ___str_4:
   4852 43 69 74 79         390 	.ascii "City"
   4856 00                  391 	.db 0x00
   4857                     392 ___str_5:
   4857 50 72 6F 64 75 63   393 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   4873 00                  394 	.db 0x00
   4874                     395 ___str_6:
   4874 44 65 6D 61 6E 64   396 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   4898 00                  397 	.db 0x00
   4899                     398 ___str_7:
   4899 46 61 72 6D         399 	.ascii "Farm"
   489D 00                  400 	.db 0x00
   489E                     401 ___str_8:
   489E 50 72 6F 64 75 63   402 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   48B0 00                  403 	.db 0x00
   48B1                     404 ___str_9:
   48B1 57 61 74 65 72      405 	.ascii "Water"
   48B6 00                  406 	.db 0x00
   48B7                     407 ___str_10:
   48B7 46 6F 72 65 73 74   408 	.ascii "Forest"
   48BD 00                  409 	.db 0x00
   48BE                     410 ___str_11:
   48BE 4C 69 76 65 73 74   411 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   48CF 00                  412 	.db 0x00
   48D0                     413 ___str_12:
   48D0 50 72 6F 64 75 63   414 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   48EB 00                  415 	.db 0x00
   48EC                     416 ___str_13:
   48EC 44 65 6D 61 6E 64   417 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   48FA 00                  418 	.db 0x00
   48FB                     419 ___str_14:
   48FB 4E 6F 74 20 79 65   420 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   490E 00                  421 	.db 0x00
   490F                     422 ___str_15:
   490F 50 72 6F 64 75 63   423 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   491C 00                  424 	.db 0x00
   491D                     425 ___str_16:
   491D 44 65 6D 61 6E 64   426 	.ascii "Demand: ?"
        3A 20 3F
   4926 00                  427 	.db 0x00
                            428 ;src/game/game.c:60: void menuStations()
                            429 ;	---------------------------------
                            430 ; Function menuStations
                            431 ; ---------------------------------
   4927                     432 _menuStations::
   4927 DD E5         [15]  433 	push	ix
   4929 DD 21 00 00   [14]  434 	ld	ix,#0
   492D DD 39         [15]  435 	add	ix,sp
   492F 21 FA FF      [10]  436 	ld	hl,#-6
   4932 39            [11]  437 	add	hl,sp
   4933 F9            [ 6]  438 	ld	sp,hl
                            439 ;src/game/game.c:64: const char *txtMenuSizeStation[] = { 
   4934 21 00 00      [10]  440 	ld	hl,#0x0000
   4937 39            [11]  441 	add	hl,sp
   4938 5D            [ 4]  442 	ld	e,l
   4939 54            [ 4]  443 	ld	d,h
   493A 36 89         [10]  444 	ld	(hl),#<(___str_17)
   493C 23            [ 6]  445 	inc	hl
   493D 36 49         [10]  446 	ld	(hl),#>(___str_17)
   493F 6B            [ 4]  447 	ld	l, e
   4940 62            [ 4]  448 	ld	h, d
   4941 23            [ 6]  449 	inc	hl
   4942 23            [ 6]  450 	inc	hl
   4943 01 8F 49      [10]  451 	ld	bc,#___str_18+0
   4946 71            [ 7]  452 	ld	(hl),c
   4947 23            [ 6]  453 	inc	hl
   4948 70            [ 7]  454 	ld	(hl),b
   4949 21 04 00      [10]  455 	ld	hl,#0x0004
   494C 19            [11]  456 	add	hl,de
   494D 01 96 49      [10]  457 	ld	bc,#___str_19+0
   4950 71            [ 7]  458 	ld	(hl),c
   4951 23            [ 6]  459 	inc	hl
   4952 70            [ 7]  460 	ld	(hl),b
                            461 ;src/game/game.c:70: result = drawMenu(txtMenuSizeStation,3);
   4953 3E 03         [ 7]  462 	ld	a,#0x03
   4955 F5            [11]  463 	push	af
   4956 33            [ 6]  464 	inc	sp
   4957 D5            [11]  465 	push	de
   4958 CD 0F 5E      [17]  466 	call	_drawMenu
   495B F1            [10]  467 	pop	af
   495C 33            [ 6]  468 	inc	sp
   495D 5D            [ 4]  469 	ld	e,l
                            470 ;src/game/game.c:72: switch(result)
   495E 3E 02         [ 7]  471 	ld	a,#0x02
   4960 93            [ 4]  472 	sub	a, e
   4961 38 21         [12]  473 	jr	C,00105$
   4963 16 00         [ 7]  474 	ld	d,#0x00
   4965 21 6B 49      [10]  475 	ld	hl,#00111$
   4968 19            [11]  476 	add	hl,de
   4969 19            [11]  477 	add	hl,de
                            478 ;src/game/game.c:74: case 0:
   496A E9            [ 4]  479 	jp	(hl)
   496B                     480 00111$:
   496B 18 04         [12]  481 	jr	00101$
   496D 18 09         [12]  482 	jr	00102$
   496F 18 0E         [12]  483 	jr	00103$
   4971                     484 00101$:
                            485 ;src/game/game.c:75: CURSOR_MODE=T_SSEW;
   4971 21 FA 84      [10]  486 	ld	hl,#_CURSOR_MODE + 0
   4974 36 02         [10]  487 	ld	(hl), #0x02
                            488 ;src/game/game.c:76: break;
   4976 18 0C         [12]  489 	jr	00105$
                            490 ;src/game/game.c:78: case 1:
   4978                     491 00102$:
                            492 ;src/game/game.c:79: CURSOR_MODE=T_SMEW;
   4978 21 FA 84      [10]  493 	ld	hl,#_CURSOR_MODE + 0
   497B 36 04         [10]  494 	ld	(hl), #0x04
                            495 ;src/game/game.c:80: break;
   497D 18 05         [12]  496 	jr	00105$
                            497 ;src/game/game.c:82: case 2:
   497F                     498 00103$:
                            499 ;src/game/game.c:83: CURSOR_MODE=T_SLEW;
   497F 21 FA 84      [10]  500 	ld	hl,#_CURSOR_MODE + 0
   4982 36 06         [10]  501 	ld	(hl), #0x06
                            502 ;src/game/game.c:85: }
   4984                     503 00105$:
   4984 DD F9         [10]  504 	ld	sp, ix
   4986 DD E1         [14]  505 	pop	ix
   4988 C9            [10]  506 	ret
   4989                     507 ___str_17:
   4989 53 6D 61 6C 6C      508 	.ascii "Small"
   498E 00                  509 	.db 0x00
   498F                     510 ___str_18:
   498F 4D 65 64 69 75 6D   511 	.ascii "Medium"
   4995 00                  512 	.db 0x00
   4996                     513 ___str_19:
   4996 4C 61 72 67 65      514 	.ascii "Large"
   499B 00                  515 	.db 0x00
                            516 ;src/game/game.c:88: void menuTile(u8 x, u8 y)
                            517 ;	---------------------------------
                            518 ; Function menuTile
                            519 ; ---------------------------------
   499C                     520 _menuTile::
   499C DD E5         [15]  521 	push	ix
   499E DD 21 00 00   [14]  522 	ld	ix,#0
   49A2 DD 39         [15]  523 	add	ix,sp
   49A4 21 E6 FF      [10]  524 	ld	hl,#-26
   49A7 39            [11]  525 	add	hl,sp
   49A8 F9            [ 6]  526 	ld	sp,hl
                            527 ;src/game/game.c:92: const char *txtMenuTile[] = { 
   49A9 21 00 00      [10]  528 	ld	hl,#0x0000
   49AC 39            [11]  529 	add	hl,sp
   49AD 5D            [ 4]  530 	ld	e,l
   49AE 54            [ 4]  531 	ld	d,h
   49AF 36 D0         [10]  532 	ld	(hl),#<(___str_20)
   49B1 23            [ 6]  533 	inc	hl
   49B2 36 4A         [10]  534 	ld	(hl),#>(___str_20)
   49B4 6B            [ 4]  535 	ld	l, e
   49B5 62            [ 4]  536 	ld	h, d
   49B6 23            [ 6]  537 	inc	hl
   49B7 23            [ 6]  538 	inc	hl
   49B8 01 E0 4A      [10]  539 	ld	bc,#___str_21+0
   49BB 71            [ 7]  540 	ld	(hl),c
   49BC 23            [ 6]  541 	inc	hl
   49BD 70            [ 7]  542 	ld	(hl),b
   49BE 21 04 00      [10]  543 	ld	hl,#0x0004
   49C1 19            [11]  544 	add	hl,de
   49C2 01 F0 4A      [10]  545 	ld	bc,#___str_22+0
   49C5 71            [ 7]  546 	ld	(hl),c
   49C6 23            [ 6]  547 	inc	hl
   49C7 70            [ 7]  548 	ld	(hl),b
   49C8 21 06 00      [10]  549 	ld	hl,#0x0006
   49CB 19            [11]  550 	add	hl,de
   49CC 01 00 4B      [10]  551 	ld	bc,#___str_23+0
   49CF 71            [ 7]  552 	ld	(hl),c
   49D0 23            [ 6]  553 	inc	hl
   49D1 70            [ 7]  554 	ld	(hl),b
   49D2 21 08 00      [10]  555 	ld	hl,#0x0008
   49D5 19            [11]  556 	add	hl,de
   49D6 01 08 4B      [10]  557 	ld	bc,#___str_24+0
   49D9 71            [ 7]  558 	ld	(hl),c
   49DA 23            [ 6]  559 	inc	hl
   49DB 70            [ 7]  560 	ld	(hl),b
   49DC 21 0A 00      [10]  561 	ld	hl,#0x000A
   49DF 19            [11]  562 	add	hl,de
   49E0 01 17 4B      [10]  563 	ld	bc,#___str_25+0
   49E3 71            [ 7]  564 	ld	(hl),c
   49E4 23            [ 6]  565 	inc	hl
   49E5 70            [ 7]  566 	ld	(hl),b
   49E6 21 0C 00      [10]  567 	ld	hl,#0x000C
   49E9 19            [11]  568 	add	hl,de
   49EA 01 22 4B      [10]  569 	ld	bc,#___str_26+0
   49ED 71            [ 7]  570 	ld	(hl),c
   49EE 23            [ 6]  571 	inc	hl
   49EF 70            [ 7]  572 	ld	(hl),b
                            573 ;src/game/game.c:102: const char *txtWindowDestroy[] = { 
   49F0 21 0E 00      [10]  574 	ld	hl,#0x000E
   49F3 39            [11]  575 	add	hl,sp
   49F4 4D            [ 4]  576 	ld	c,l
   49F5 44            [ 4]  577 	ld	b,h
   49F6 36 29         [10]  578 	ld	(hl),#<(___str_27)
   49F8 23            [ 6]  579 	inc	hl
   49F9 36 4B         [10]  580 	ld	(hl),#>(___str_27)
   49FB 21 02 00      [10]  581 	ld	hl,#0x0002
   49FE 09            [11]  582 	add	hl,bc
   49FF DD 75 FA      [19]  583 	ld	-6 (ix),l
   4A02 DD 74 FB      [19]  584 	ld	-5 (ix),h
   4A05 DD 6E FA      [19]  585 	ld	l,-6 (ix)
   4A08 DD 66 FB      [19]  586 	ld	h,-5 (ix)
   4A0B 36 4C         [10]  587 	ld	(hl),#<(___str_28)
   4A0D 23            [ 6]  588 	inc	hl
   4A0E 36 4B         [10]  589 	ld	(hl),#>(___str_28)
   4A10 21 04 00      [10]  590 	ld	hl,#0x0004
   4A13 09            [11]  591 	add	hl,bc
   4A14 DD 75 FA      [19]  592 	ld	-6 (ix),l
   4A17 DD 74 FB      [19]  593 	ld	-5 (ix),h
   4A1A DD 6E FA      [19]  594 	ld	l,-6 (ix)
   4A1D DD 66 FB      [19]  595 	ld	h,-5 (ix)
   4A20 36 4D         [10]  596 	ld	(hl),#<(___str_29)
   4A22 23            [ 6]  597 	inc	hl
   4A23 36 4B         [10]  598 	ld	(hl),#>(___str_29)
                            599 ;src/game/game.c:109: putM2();
   4A25 C5            [11]  600 	push	bc
   4A26 D5            [11]  601 	push	de
   4A27 CD 09 5A      [17]  602 	call	_putM2
   4A2A D1            [10]  603 	pop	de
   4A2B C1            [10]  604 	pop	bc
                            605 ;src/game/game.c:111: do{
   4A2C D5            [11]  606 	push	de
   4A2D DD 5E 05      [19]  607 	ld	e,5 (ix)
   4A30 16 00         [ 7]  608 	ld	d,#0x00
   4A32 6B            [ 4]  609 	ld	l, e
   4A33 62            [ 4]  610 	ld	h, d
   4A34 29            [11]  611 	add	hl, hl
   4A35 29            [11]  612 	add	hl, hl
   4A36 19            [11]  613 	add	hl, de
   4A37 29            [11]  614 	add	hl, hl
   4A38 29            [11]  615 	add	hl, hl
   4A39 29            [11]  616 	add	hl, hl
   4A3A 29            [11]  617 	add	hl, hl
   4A3B D1            [10]  618 	pop	de
   4A3C DD 75 FA      [19]  619 	ld	-6 (ix),l
   4A3F DD 74 FB      [19]  620 	ld	-5 (ix),h
   4A42 DD 71 FE      [19]  621 	ld	-2 (ix),c
   4A45 DD 70 FF      [19]  622 	ld	-1 (ix),b
   4A48 DD 73 FC      [19]  623 	ld	-4 (ix),e
   4A4B DD 72 FD      [19]  624 	ld	-3 (ix),d
   4A4E                     625 00117$:
                            626 ;src/game/game.c:112: menuChoice = drawMenu(txtMenuTile,7);
   4A4E DD 5E FC      [19]  627 	ld	e,-4 (ix)
   4A51 DD 56 FD      [19]  628 	ld	d,-3 (ix)
   4A54 3E 07         [ 7]  629 	ld	a,#0x07
   4A56 F5            [11]  630 	push	af
   4A57 33            [ 6]  631 	inc	sp
   4A58 D5            [11]  632 	push	de
   4A59 CD 0F 5E      [17]  633 	call	_drawMenu
   4A5C F1            [10]  634 	pop	af
   4A5D 33            [ 6]  635 	inc	sp
   4A5E 55            [ 4]  636 	ld	d,l
                            637 ;src/game/game.c:114: if(menuChoice==0)
   4A5F 7A            [ 4]  638 	ld	a,d
   4A60 B7            [ 4]  639 	or	a, a
   4A61 20 0F         [12]  640 	jr	NZ,00115$
                            641 ;src/game/game.c:115: windowInfoTile(x, y);
   4A63 D5            [11]  642 	push	de
   4A64 DD 66 05      [19]  643 	ld	h,5 (ix)
   4A67 DD 6E 04      [19]  644 	ld	l,4 (ix)
   4A6A E5            [11]  645 	push	hl
   4A6B CD 8E 46      [17]  646 	call	_windowInfoTile
   4A6E F1            [10]  647 	pop	af
   4A6F D1            [10]  648 	pop	de
   4A70 18 51         [12]  649 	jr	00118$
   4A72                     650 00115$:
                            651 ;src/game/game.c:116: else if(menuChoice==1)
   4A72 7A            [ 4]  652 	ld	a,d
   4A73 3D            [ 4]  653 	dec	a
   4A74 20 09         [12]  654 	jr	NZ,00112$
                            655 ;src/game/game.c:118: CURSOR_MODE=T_REW;
   4A76 21 FA 84      [10]  656 	ld	hl,#_CURSOR_MODE + 0
   4A79 36 07         [10]  657 	ld	(hl), #0x07
                            658 ;src/game/game.c:119: menuChoice=6;
   4A7B 16 06         [ 7]  659 	ld	d,#0x06
   4A7D 18 44         [12]  660 	jr	00118$
   4A7F                     661 00112$:
                            662 ;src/game/game.c:121: else if(menuChoice==2)
   4A7F 7A            [ 4]  663 	ld	a,d
   4A80 D6 02         [ 7]  664 	sub	a, #0x02
   4A82 20 07         [12]  665 	jr	NZ,00109$
                            666 ;src/game/game.c:123: menuStations();
   4A84 CD 27 49      [17]  667 	call	_menuStations
                            668 ;src/game/game.c:124: menuChoice=6;
   4A87 16 06         [ 7]  669 	ld	d,#0x06
   4A89 18 38         [12]  670 	jr	00118$
   4A8B                     671 00109$:
                            672 ;src/game/game.c:126: else if(menuChoice==3)
   4A8B 7A            [ 4]  673 	ld	a,d
   4A8C D6 03         [ 7]  674 	sub	a, #0x03
   4A8E 20 29         [12]  675 	jr	NZ,00106$
                            676 ;src/game/game.c:128: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   4A90 DD 5E FE      [19]  677 	ld	e,-2 (ix)
   4A93 DD 56 FF      [19]  678 	ld	d,-1 (ix)
   4A96 21 03 01      [10]  679 	ld	hl,#0x0103
   4A99 E5            [11]  680 	push	hl
   4A9A D5            [11]  681 	push	de
   4A9B CD 0D 5F      [17]  682 	call	_drawWindow
   4A9E F1            [10]  683 	pop	af
   4A9F F1            [10]  684 	pop	af
   4AA0 2D            [ 4]  685 	dec	l
   4AA1 20 12         [12]  686 	jr	NZ,00102$
                            687 ;src/game/game.c:129: p_world[x+y*WIDTH] = GRASS1;
   4AA3 DD 6E 04      [19]  688 	ld	l,4 (ix)
   4AA6 26 00         [ 7]  689 	ld	h,#0x00
   4AA8 DD 5E FA      [19]  690 	ld	e,-6 (ix)
   4AAB DD 56 FB      [19]  691 	ld	d,-5 (ix)
   4AAE 19            [11]  692 	add	hl,de
   4AAF 11 FA 75      [10]  693 	ld	de,#_p_world
   4AB2 19            [11]  694 	add	hl,de
   4AB3 36 00         [10]  695 	ld	(hl),#0x00
   4AB5                     696 00102$:
                            697 ;src/game/game.c:131: menuChoice=6;
   4AB5 16 06         [ 7]  698 	ld	d,#0x06
   4AB7 18 0A         [12]  699 	jr	00118$
   4AB9                     700 00106$:
                            701 ;src/game/game.c:133: else if(menuChoice==4)
   4AB9 7A            [ 4]  702 	ld	a,d
   4ABA D6 04         [ 7]  703 	sub	a, #0x04
   4ABC 20 05         [12]  704 	jr	NZ,00118$
                            705 ;src/game/game.c:135: railroadDepot();
   4ABE CD 30 41      [17]  706 	call	_railroadDepot
                            707 ;src/game/game.c:136: menuChoice=6;
   4AC1 16 06         [ 7]  708 	ld	d,#0x06
   4AC3                     709 00118$:
                            710 ;src/game/game.c:141: while(menuChoice!=6);
   4AC3 7A            [ 4]  711 	ld	a,d
   4AC4 D6 06         [ 7]  712 	sub	a, #0x06
   4AC6 20 86         [12]  713 	jr	NZ,00117$
                            714 ;src/game/game.c:143: putM1();
   4AC8 CD F5 59      [17]  715 	call	_putM1
   4ACB DD F9         [10]  716 	ld	sp, ix
   4ACD DD E1         [14]  717 	pop	ix
   4ACF C9            [10]  718 	ret
   4AD0                     719 ___str_20:
   4AD0 41 62 6F 75 74 20   720 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   4ADF 00                  721 	.db 0x00
   4AE0                     722 ___str_21:
   4AE0 42 75 69 6C 64 20   723 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   4AEF 00                  724 	.db 0x00
   4AF0                     725 ___str_22:
   4AF0 42 75 69 6C 64 20   726 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   4AFF 00                  727 	.db 0x00
   4B00                     728 ___str_23:
   4B00 44 65 73 74 72 6F   729 	.ascii "Destroy"
        79
   4B07 00                  730 	.db 0x00
   4B08                     731 ___str_24:
   4B08 52 61 69 6C 72 6F   732 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   4B16 00                  733 	.db 0x00
   4B17                     734 ___str_25:
   4B17 41 63 63 6F 75 6E   735 	.ascii "Accounting"
        74 69 6E 67
   4B21 00                  736 	.db 0x00
   4B22                     737 ___str_26:
   4B22 52 65 73 75 6D 65   738 	.ascii "Resume"
   4B28 00                  739 	.db 0x00
   4B29                     740 ___str_27:
   4B29 44 65 73 74 72 6F   741 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   4B4B 00                  742 	.db 0x00
   4B4C                     743 ___str_28:
   4B4C 00                  744 	.db 0x00
   4B4D                     745 ___str_29:
   4B4D 43 6F 6E 74 69 6E   746 	.ascii "Continue ?"
        75 65 20 3F
   4B57 00                  747 	.db 0x00
                            748 ;src/game/game.c:147: void game()
                            749 ;	---------------------------------
                            750 ; Function game
                            751 ; ---------------------------------
   4B58                     752 _game::
   4B58 DD E5         [15]  753 	push	ix
   4B5A DD 21 00 00   [14]  754 	ld	ix,#0
   4B5E DD 39         [15]  755 	add	ix,sp
   4B60 21 EA FF      [10]  756 	ld	hl,#-22
   4B63 39            [11]  757 	add	hl,sp
   4B64 F9            [ 6]  758 	ld	sp,hl
                            759 ;src/game/game.c:150: int ulx = 0;
   4B65 DD 36 F7 00   [19]  760 	ld	-9 (ix),#0x00
   4B69 DD 36 F8 00   [19]  761 	ld	-8 (ix),#0x00
                            762 ;src/game/game.c:151: int uly = 0;
   4B6D DD 36 F5 00   [19]  763 	ld	-11 (ix),#0x00
   4B71 DD 36 F6 00   [19]  764 	ld	-10 (ix),#0x00
                            765 ;src/game/game.c:152: int xCursor = 10;
   4B75 DD 36 F0 0A   [19]  766 	ld	-16 (ix),#0x0A
   4B79 DD 36 F1 00   [19]  767 	ld	-15 (ix),#0x00
                            768 ;src/game/game.c:153: int yCursor = 6;
   4B7D DD 36 F9 06   [19]  769 	ld	-7 (ix),#0x06
   4B81 DD 36 FA 00   [19]  770 	ld	-6 (ix),#0x00
                            771 ;src/game/game.c:155: u8 exit=0;
   4B85 DD 36 F2 00   [19]  772 	ld	-14 (ix),#0x00
                            773 ;src/game/game.c:157: locDelocked = 4;
   4B89 21 FB 84      [10]  774 	ld	hl,#_locDelocked + 0
   4B8C 36 04         [10]  775 	ld	(hl), #0x04
                            776 ;src/game/game.c:159: drawBoxM2(50, 50);
   4B8E 21 32 00      [10]  777 	ld	hl,#0x0032
   4B91 E5            [11]  778 	push	hl
   4B92 2E 32         [ 7]  779 	ld	l, #0x32
   4B94 E5            [11]  780 	push	hl
   4B95 CD 45 5B      [17]  781 	call	_drawBoxM2
   4B98 F1            [10]  782 	pop	af
                            783 ;src/game/game.c:160: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   4B99 21 20 5F      [10]  784 	ld	hl, #0x5F20
   4B9C E3            [19]  785 	ex	(sp),hl
   4B9D 21 00 C0      [10]  786 	ld	hl,#0xC000
   4BA0 E5            [11]  787 	push	hl
   4BA1 CD 0A 75      [17]  788 	call	_cpct_getScreenPtr
                            789 ;src/game/game.c:161: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   4BA4 4D            [ 4]  790 	ld	c, l
   4BA5 44            [ 4]  791 	ld	b, h
   4BA6 11 45 50      [10]  792 	ld	de,#___str_33
   4BA9 AF            [ 4]  793 	xor	a, a
   4BAA F5            [11]  794 	push	af
   4BAB 33            [ 6]  795 	inc	sp
   4BAC C5            [11]  796 	push	bc
   4BAD D5            [11]  797 	push	de
   4BAE CD EC 70      [17]  798 	call	_cpct_drawStringM2
   4BB1 F1            [10]  799 	pop	af
   4BB2 F1            [10]  800 	pop	af
   4BB3 33            [ 6]  801 	inc	sp
                            802 ;src/game/game.c:163: generateWorld();
   4BB4 CD 8B 53      [17]  803 	call	_generateWorld
                            804 ;src/game/game.c:165: putM1();
   4BB7 CD F5 59      [17]  805 	call	_putM1
                            806 ;src/game/game.c:166: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   4BBA 21 00 00      [10]  807 	ld	hl,#0x0000
   4BBD E5            [11]  808 	push	hl
   4BBE 2E 00         [ 7]  809 	ld	l, #0x00
   4BC0 E5            [11]  810 	push	hl
   4BC1 CD E4 73      [17]  811 	call	_cpct_px2byteM1
   4BC4 F1            [10]  812 	pop	af
   4BC5 F1            [10]  813 	pop	af
   4BC6 65            [ 4]  814 	ld	h,l
   4BC7 01 00 40      [10]  815 	ld	bc,#0x4000
   4BCA C5            [11]  816 	push	bc
   4BCB E5            [11]  817 	push	hl
   4BCC 33            [ 6]  818 	inc	sp
   4BCD 21 00 C0      [10]  819 	ld	hl,#0xC000
   4BD0 E5            [11]  820 	push	hl
   4BD1 CD D6 73      [17]  821 	call	_cpct_memset
                            822 ;src/game/game.c:167: drawWorld(ulx, uly);
   4BD4 21 00 00      [10]  823 	ld	hl,#0x0000
   4BD7 E5            [11]  824 	push	hl
   4BD8 CD A9 59      [17]  825 	call	_drawWorld
   4BDB F1            [10]  826 	pop	af
                            827 ;src/game/game.c:169: do{
   4BDC                     828 00181$:
                            829 ;src/game/game.c:170: cpct_scanKeyboard(); 
   4BDC CD 2A 75      [17]  830 	call	_cpct_scanKeyboard
                            831 ;src/game/game.c:172: if ( cpct_isKeyPressed(Key_CursorUp) )
   4BDF 21 00 01      [10]  832 	ld	hl,#0x0100
   4BE2 CD B5 70      [17]  833 	call	_cpct_isKeyPressed
   4BE5 DD 75 FD      [19]  834 	ld	-3 (ix),l
                            835 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4BE8 DD 7E F9      [19]  836 	ld	a,-7 (ix)
   4BEB DD 77 FE      [19]  837 	ld	-2 (ix),a
   4BEE DD 7E F0      [19]  838 	ld	a,-16 (ix)
   4BF1 DD 77 FC      [19]  839 	ld	-4 (ix),a
   4BF4 DD 7E F5      [19]  840 	ld	a,-11 (ix)
   4BF7 DD 77 FB      [19]  841 	ld	-5 (ix),a
   4BFA DD 7E F7      [19]  842 	ld	a,-9 (ix)
   4BFD DD 77 FF      [19]  843 	ld	-1 (ix),a
                            844 ;src/game/game.c:172: if ( cpct_isKeyPressed(Key_CursorUp) )
   4C00 DD 7E FD      [19]  845 	ld	a,-3 (ix)
   4C03 B7            [ 4]  846 	or	a, a
   4C04 CA 86 4C      [10]  847 	jp	Z,00179$
                            848 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4C07 DD 7E FE      [19]  849 	ld	a,-2 (ix)
   4C0A F5            [11]  850 	push	af
   4C0B 33            [ 6]  851 	inc	sp
   4C0C DD 7E FC      [19]  852 	ld	a,-4 (ix)
   4C0F F5            [11]  853 	push	af
   4C10 33            [ 6]  854 	inc	sp
   4C11 DD 7E FB      [19]  855 	ld	a,-5 (ix)
   4C14 F5            [11]  856 	push	af
   4C15 33            [ 6]  857 	inc	sp
   4C16 DD 7E FF      [19]  858 	ld	a,-1 (ix)
   4C19 F5            [11]  859 	push	af
   4C1A 33            [ 6]  860 	inc	sp
   4C1B CD E8 56      [17]  861 	call	_drawTile
   4C1E F1            [10]  862 	pop	af
   4C1F F1            [10]  863 	pop	af
                            864 ;src/game/game.c:176: yCursor-=1;
   4C20 DD 6E F9      [19]  865 	ld	l,-7 (ix)
   4C23 DD 66 FA      [19]  866 	ld	h,-6 (ix)
   4C26 2B            [ 6]  867 	dec	hl
   4C27 DD 75 F9      [19]  868 	ld	-7 (ix),l
   4C2A DD 74 FA      [19]  869 	ld	-6 (ix),h
                            870 ;src/game/game.c:179: if(yCursor<0)
   4C2D DD CB FA 7E   [20]  871 	bit	7, -6 (ix)
   4C31 28 35         [12]  872 	jr	Z,00210$
                            873 ;src/game/game.c:181: yCursor=0;
   4C33 DD 36 F9 00   [19]  874 	ld	-7 (ix),#0x00
   4C37 DD 36 FA 00   [19]  875 	ld	-6 (ix),#0x00
                            876 ;src/game/game.c:184: if(uly>0)
   4C3B AF            [ 4]  877 	xor	a, a
   4C3C DD BE F5      [19]  878 	cp	a, -11 (ix)
   4C3F DD 9E F6      [19]  879 	sbc	a, -10 (ix)
   4C42 E2 47 4C      [10]  880 	jp	PO, 00387$
   4C45 EE 80         [ 7]  881 	xor	a, #0x80
   4C47                     882 00387$:
   4C47 F2 68 4C      [10]  883 	jp	P,00210$
                            884 ;src/game/game.c:186: uly-=1;
   4C4A DD 6E F5      [19]  885 	ld	l,-11 (ix)
   4C4D DD 66 F6      [19]  886 	ld	h,-10 (ix)
   4C50 2B            [ 6]  887 	dec	hl
   4C51 DD 75 F5      [19]  888 	ld	-11 (ix),l
   4C54 DD 74 F6      [19]  889 	ld	-10 (ix),h
                            890 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4C57 DD 7E F5      [19]  891 	ld	a,-11 (ix)
                            892 ;src/game/game.c:187: drawWorld(ulx, uly);
   4C5A DD 77 FB      [19]  893 	ld	-5 (ix), a
   4C5D F5            [11]  894 	push	af
   4C5E 33            [ 6]  895 	inc	sp
   4C5F DD 7E FF      [19]  896 	ld	a,-1 (ix)
   4C62 F5            [11]  897 	push	af
   4C63 33            [ 6]  898 	inc	sp
   4C64 CD A9 59      [17]  899 	call	_drawWorld
   4C67 F1            [10]  900 	pop	af
                            901 ;src/game/game.c:192: for(i=0; i<5000; i++) {}
   4C68                     902 00210$:
   4C68 DD 36 F3 88   [19]  903 	ld	-13 (ix),#0x88
   4C6C DD 36 F4 13   [19]  904 	ld	-12 (ix),#0x13
   4C70                     905 00186$:
   4C70 DD 6E F3      [19]  906 	ld	l,-13 (ix)
   4C73 DD 66 F4      [19]  907 	ld	h,-12 (ix)
   4C76 2B            [ 6]  908 	dec	hl
   4C77 DD 75 F3      [19]  909 	ld	-13 (ix),l
   4C7A DD 74 F4      [19]  910 	ld	-12 (ix), h
   4C7D 7C            [ 4]  911 	ld	a, h
   4C7E DD B6 F3      [19]  912 	or	a,-13 (ix)
   4C81 20 ED         [12]  913 	jr	NZ,00186$
   4C83 C3 E4 4F      [10]  914 	jp	00180$
   4C86                     915 00179$:
                            916 ;src/game/game.c:195: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4C86 21 00 04      [10]  917 	ld	hl,#0x0400
   4C89 CD B5 70      [17]  918 	call	_cpct_isKeyPressed
   4C8C 7D            [ 4]  919 	ld	a,l
   4C8D B7            [ 4]  920 	or	a, a
   4C8E CA 12 4D      [10]  921 	jp	Z,00176$
                            922 ;src/game/game.c:197: drawTile(ulx, uly, xCursor, yCursor);
   4C91 DD 7E FE      [19]  923 	ld	a,-2 (ix)
   4C94 F5            [11]  924 	push	af
   4C95 33            [ 6]  925 	inc	sp
   4C96 DD 7E FC      [19]  926 	ld	a,-4 (ix)
   4C99 F5            [11]  927 	push	af
   4C9A 33            [ 6]  928 	inc	sp
   4C9B DD 7E FB      [19]  929 	ld	a,-5 (ix)
   4C9E F5            [11]  930 	push	af
   4C9F 33            [ 6]  931 	inc	sp
   4CA0 DD 7E FF      [19]  932 	ld	a,-1 (ix)
   4CA3 F5            [11]  933 	push	af
   4CA4 33            [ 6]  934 	inc	sp
   4CA5 CD E8 56      [17]  935 	call	_drawTile
   4CA8 F1            [10]  936 	pop	af
   4CA9 F1            [10]  937 	pop	af
                            938 ;src/game/game.c:198: yCursor+=1;
   4CAA DD 34 F9      [23]  939 	inc	-7 (ix)
   4CAD 20 03         [12]  940 	jr	NZ,00388$
   4CAF DD 34 FA      [23]  941 	inc	-6 (ix)
   4CB2                     942 00388$:
                            943 ;src/game/game.c:199: if(yCursor>NBTILE_H-1)
   4CB2 3E 0B         [ 7]  944 	ld	a,#0x0B
   4CB4 DD BE F9      [19]  945 	cp	a, -7 (ix)
   4CB7 3E 00         [ 7]  946 	ld	a,#0x00
   4CB9 DD 9E FA      [19]  947 	sbc	a, -6 (ix)
   4CBC E2 C1 4C      [10]  948 	jp	PO, 00389$
   4CBF EE 80         [ 7]  949 	xor	a, #0x80
   4CC1                     950 00389$:
   4CC1 F2 F4 4C      [10]  951 	jp	P,00215$
                            952 ;src/game/game.c:201: yCursor=NBTILE_H-1;
   4CC4 DD 36 F9 0B   [19]  953 	ld	-7 (ix),#0x0B
   4CC8 DD 36 FA 00   [19]  954 	ld	-6 (ix),#0x00
                            955 ;src/game/game.c:202: if(uly<HEIGHT-NBTILE_H)
   4CCC DD 7E F5      [19]  956 	ld	a,-11 (ix)
   4CCF D6 24         [ 7]  957 	sub	a, #0x24
   4CD1 DD 7E F6      [19]  958 	ld	a,-10 (ix)
   4CD4 17            [ 4]  959 	rla
   4CD5 3F            [ 4]  960 	ccf
   4CD6 1F            [ 4]  961 	rra
   4CD7 DE 80         [ 7]  962 	sbc	a, #0x80
   4CD9 30 19         [12]  963 	jr	NC,00215$
                            964 ;src/game/game.c:204: uly+=1;
   4CDB DD 34 F5      [23]  965 	inc	-11 (ix)
   4CDE 20 03         [12]  966 	jr	NZ,00390$
   4CE0 DD 34 F6      [23]  967 	inc	-10 (ix)
   4CE3                     968 00390$:
                            969 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4CE3 DD 7E F5      [19]  970 	ld	a,-11 (ix)
                            971 ;src/game/game.c:205: drawWorld(ulx, uly);
   4CE6 DD 77 FB      [19]  972 	ld	-5 (ix), a
   4CE9 F5            [11]  973 	push	af
   4CEA 33            [ 6]  974 	inc	sp
   4CEB DD 7E FF      [19]  975 	ld	a,-1 (ix)
   4CEE F5            [11]  976 	push	af
   4CEF 33            [ 6]  977 	inc	sp
   4CF0 CD A9 59      [17]  978 	call	_drawWorld
   4CF3 F1            [10]  979 	pop	af
                            980 ;src/game/game.c:210: for(i=0; i<5000; i++) {}
   4CF4                     981 00215$:
   4CF4 DD 36 F3 88   [19]  982 	ld	-13 (ix),#0x88
   4CF8 DD 36 F4 13   [19]  983 	ld	-12 (ix),#0x13
   4CFC                     984 00189$:
   4CFC DD 6E F3      [19]  985 	ld	l,-13 (ix)
   4CFF DD 66 F4      [19]  986 	ld	h,-12 (ix)
   4D02 2B            [ 6]  987 	dec	hl
   4D03 DD 75 F3      [19]  988 	ld	-13 (ix),l
   4D06 DD 74 F4      [19]  989 	ld	-12 (ix), h
   4D09 7C            [ 4]  990 	ld	a, h
   4D0A DD B6 F3      [19]  991 	or	a,-13 (ix)
   4D0D 20 ED         [12]  992 	jr	NZ,00189$
   4D0F C3 E4 4F      [10]  993 	jp	00180$
   4D12                     994 00176$:
                            995 ;src/game/game.c:213: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   4D12 21 01 01      [10]  996 	ld	hl,#0x0101
   4D15 CD B5 70      [17]  997 	call	_cpct_isKeyPressed
   4D18 7D            [ 4]  998 	ld	a,l
   4D19 B7            [ 4]  999 	or	a, a
   4D1A 28 6F         [12] 1000 	jr	Z,00173$
                           1001 ;src/game/game.c:215: drawTile(ulx, uly, xCursor, yCursor);
   4D1C DD 7E FE      [19] 1002 	ld	a,-2 (ix)
   4D1F F5            [11] 1003 	push	af
   4D20 33            [ 6] 1004 	inc	sp
   4D21 DD 7E FC      [19] 1005 	ld	a,-4 (ix)
   4D24 F5            [11] 1006 	push	af
   4D25 33            [ 6] 1007 	inc	sp
   4D26 DD 7E FB      [19] 1008 	ld	a,-5 (ix)
   4D29 F5            [11] 1009 	push	af
   4D2A 33            [ 6] 1010 	inc	sp
   4D2B DD 7E FF      [19] 1011 	ld	a,-1 (ix)
   4D2E F5            [11] 1012 	push	af
   4D2F 33            [ 6] 1013 	inc	sp
   4D30 CD E8 56      [17] 1014 	call	_drawTile
   4D33 F1            [10] 1015 	pop	af
   4D34 F1            [10] 1016 	pop	af
                           1017 ;src/game/game.c:216: xCursor-=1;
   4D35 DD 6E F0      [19] 1018 	ld	l,-16 (ix)
   4D38 DD 66 F1      [19] 1019 	ld	h,-15 (ix)
   4D3B 2B            [ 6] 1020 	dec	hl
   4D3C DD 75 F0      [19] 1021 	ld	-16 (ix),l
   4D3F DD 74 F1      [19] 1022 	ld	-15 (ix),h
                           1023 ;src/game/game.c:217: if(xCursor<0)
   4D42 DD CB F1 7E   [20] 1024 	bit	7, -15 (ix)
   4D46 28 38         [12] 1025 	jr	Z,00220$
                           1026 ;src/game/game.c:219: xCursor=0;
   4D48 DD 36 F0 00   [19] 1027 	ld	-16 (ix),#0x00
   4D4C DD 36 F1 00   [19] 1028 	ld	-15 (ix),#0x00
                           1029 ;src/game/game.c:220: if(ulx>0)
   4D50 AF            [ 4] 1030 	xor	a, a
   4D51 DD BE F7      [19] 1031 	cp	a, -9 (ix)
   4D54 DD 9E F8      [19] 1032 	sbc	a, -8 (ix)
   4D57 E2 5C 4D      [10] 1033 	jp	PO, 00391$
   4D5A EE 80         [ 7] 1034 	xor	a, #0x80
   4D5C                    1035 00391$:
   4D5C F2 80 4D      [10] 1036 	jp	P,00220$
                           1037 ;src/game/game.c:222: ulx-=1;
   4D5F DD 6E F7      [19] 1038 	ld	l,-9 (ix)
   4D62 DD 66 F8      [19] 1039 	ld	h,-8 (ix)
   4D65 2B            [ 6] 1040 	dec	hl
   4D66 DD 75 F7      [19] 1041 	ld	-9 (ix),l
   4D69 DD 74 F8      [19] 1042 	ld	-8 (ix),h
                           1043 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4D6C DD 7E F7      [19] 1044 	ld	a,-9 (ix)
   4D6F DD 77 FF      [19] 1045 	ld	-1 (ix),a
                           1046 ;src/game/game.c:223: drawWorld(ulx, uly);
   4D72 DD 7E FB      [19] 1047 	ld	a,-5 (ix)
   4D75 F5            [11] 1048 	push	af
   4D76 33            [ 6] 1049 	inc	sp
   4D77 DD 7E FF      [19] 1050 	ld	a,-1 (ix)
   4D7A F5            [11] 1051 	push	af
   4D7B 33            [ 6] 1052 	inc	sp
   4D7C CD A9 59      [17] 1053 	call	_drawWorld
   4D7F F1            [10] 1054 	pop	af
                           1055 ;src/game/game.c:228: for(i=0; i<14000; i++) {}
   4D80                    1056 00220$:
   4D80 21 B0 36      [10] 1057 	ld	hl,#0x36B0
   4D83                    1058 00192$:
   4D83 2B            [ 6] 1059 	dec	hl
   4D84 7C            [ 4] 1060 	ld	a,h
   4D85 B5            [ 4] 1061 	or	a,l
   4D86 20 FB         [12] 1062 	jr	NZ,00192$
   4D88 C3 E4 4F      [10] 1063 	jp	00180$
   4D8B                    1064 00173$:
                           1065 ;src/game/game.c:231: else if ( cpct_isKeyPressed(Key_CursorRight) )
   4D8B 21 00 02      [10] 1066 	ld	hl,#0x0200
   4D8E CD B5 70      [17] 1067 	call	_cpct_isKeyPressed
   4D91 7D            [ 4] 1068 	ld	a,l
   4D92 B7            [ 4] 1069 	or	a, a
   4D93 28 71         [12] 1070 	jr	Z,00170$
                           1071 ;src/game/game.c:233: drawTile(ulx, uly, xCursor, yCursor);
   4D95 DD 7E FE      [19] 1072 	ld	a,-2 (ix)
   4D98 F5            [11] 1073 	push	af
   4D99 33            [ 6] 1074 	inc	sp
   4D9A DD 7E FC      [19] 1075 	ld	a,-4 (ix)
   4D9D F5            [11] 1076 	push	af
   4D9E 33            [ 6] 1077 	inc	sp
   4D9F DD 7E FB      [19] 1078 	ld	a,-5 (ix)
   4DA2 F5            [11] 1079 	push	af
   4DA3 33            [ 6] 1080 	inc	sp
   4DA4 DD 7E FF      [19] 1081 	ld	a,-1 (ix)
   4DA7 F5            [11] 1082 	push	af
   4DA8 33            [ 6] 1083 	inc	sp
   4DA9 CD E8 56      [17] 1084 	call	_drawTile
   4DAC F1            [10] 1085 	pop	af
   4DAD F1            [10] 1086 	pop	af
                           1087 ;src/game/game.c:234: xCursor+=1;
   4DAE DD 34 F0      [23] 1088 	inc	-16 (ix)
   4DB1 20 03         [12] 1089 	jr	NZ,00392$
   4DB3 DD 34 F1      [23] 1090 	inc	-15 (ix)
   4DB6                    1091 00392$:
                           1092 ;src/game/game.c:235: if(xCursor>NBTILE_W-1)
   4DB6 3E 13         [ 7] 1093 	ld	a,#0x13
   4DB8 DD BE F0      [19] 1094 	cp	a, -16 (ix)
   4DBB 3E 00         [ 7] 1095 	ld	a,#0x00
   4DBD DD 9E F1      [19] 1096 	sbc	a, -15 (ix)
   4DC0 E2 C5 4D      [10] 1097 	jp	PO, 00393$
   4DC3 EE 80         [ 7] 1098 	xor	a, #0x80
   4DC5                    1099 00393$:
   4DC5 F2 FB 4D      [10] 1100 	jp	P,00225$
                           1101 ;src/game/game.c:237: xCursor=NBTILE_W-1;
   4DC8 DD 36 F0 13   [19] 1102 	ld	-16 (ix),#0x13
   4DCC DD 36 F1 00   [19] 1103 	ld	-15 (ix),#0x00
                           1104 ;src/game/game.c:238: if(ulx<WIDTH-NBTILE_W)
   4DD0 DD 7E F7      [19] 1105 	ld	a,-9 (ix)
   4DD3 D6 3C         [ 7] 1106 	sub	a, #0x3C
   4DD5 DD 7E F8      [19] 1107 	ld	a,-8 (ix)
   4DD8 17            [ 4] 1108 	rla
   4DD9 3F            [ 4] 1109 	ccf
   4DDA 1F            [ 4] 1110 	rra
   4DDB DE 80         [ 7] 1111 	sbc	a, #0x80
   4DDD 30 1C         [12] 1112 	jr	NC,00225$
                           1113 ;src/game/game.c:240: ulx+=1;
   4DDF DD 34 F7      [23] 1114 	inc	-9 (ix)
   4DE2 20 03         [12] 1115 	jr	NZ,00394$
   4DE4 DD 34 F8      [23] 1116 	inc	-8 (ix)
   4DE7                    1117 00394$:
                           1118 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4DE7 DD 7E F7      [19] 1119 	ld	a,-9 (ix)
   4DEA DD 77 FF      [19] 1120 	ld	-1 (ix),a
                           1121 ;src/game/game.c:241: drawWorld(ulx, uly);
   4DED DD 7E FB      [19] 1122 	ld	a,-5 (ix)
   4DF0 F5            [11] 1123 	push	af
   4DF1 33            [ 6] 1124 	inc	sp
   4DF2 DD 7E FF      [19] 1125 	ld	a,-1 (ix)
   4DF5 F5            [11] 1126 	push	af
   4DF6 33            [ 6] 1127 	inc	sp
   4DF7 CD A9 59      [17] 1128 	call	_drawWorld
   4DFA F1            [10] 1129 	pop	af
                           1130 ;src/game/game.c:246: for(i=0; i<14000; i++) {}
   4DFB                    1131 00225$:
   4DFB 21 B0 36      [10] 1132 	ld	hl,#0x36B0
   4DFE                    1133 00195$:
   4DFE 2B            [ 6] 1134 	dec	hl
   4DFF 7C            [ 4] 1135 	ld	a,h
   4E00 B5            [ 4] 1136 	or	a,l
   4E01 20 FB         [12] 1137 	jr	NZ,00195$
   4E03 C3 E4 4F      [10] 1138 	jp	00180$
   4E06                    1139 00170$:
                           1140 ;src/game/game.c:250: else if ( cpct_isKeyPressed(Key_Space) )
   4E06 21 05 80      [10] 1141 	ld	hl,#0x8005
   4E09 CD B5 70      [17] 1142 	call	_cpct_isKeyPressed
   4E0C 7D            [ 4] 1143 	ld	a,l
   4E0D B7            [ 4] 1144 	or	a, a
   4E0E CA 8C 4E      [10] 1145 	jp	Z,00167$
                           1146 ;src/game/game.c:252: if(CURSOR_MODE==T_SSNS)
   4E11 3A FA 84      [13] 1147 	ld	a,(#_CURSOR_MODE + 0)
   4E14 3D            [ 4] 1148 	dec	a
   4E15 20 07         [12] 1149 	jr	NZ,00143$
                           1150 ;src/game/game.c:253: CURSOR_MODE=T_SSEW;
   4E17 21 FA 84      [10] 1151 	ld	hl,#_CURSOR_MODE + 0
   4E1A 36 02         [10] 1152 	ld	(hl), #0x02
   4E1C 18 63         [12] 1153 	jr	00237$
   4E1E                    1154 00143$:
                           1155 ;src/game/game.c:254: else if(CURSOR_MODE==T_SSEW)
   4E1E 3A FA 84      [13] 1156 	ld	a,(#_CURSOR_MODE + 0)
   4E21 D6 02         [ 7] 1157 	sub	a, #0x02
   4E23 20 07         [12] 1158 	jr	NZ,00140$
                           1159 ;src/game/game.c:255: CURSOR_MODE=T_SSNS;
   4E25 21 FA 84      [10] 1160 	ld	hl,#_CURSOR_MODE + 0
   4E28 36 01         [10] 1161 	ld	(hl), #0x01
   4E2A 18 55         [12] 1162 	jr	00237$
   4E2C                    1163 00140$:
                           1164 ;src/game/game.c:256: else if(CURSOR_MODE==T_SMNS)
   4E2C 3A FA 84      [13] 1165 	ld	a,(#_CURSOR_MODE + 0)
   4E2F D6 03         [ 7] 1166 	sub	a, #0x03
   4E31 20 07         [12] 1167 	jr	NZ,00137$
                           1168 ;src/game/game.c:257: CURSOR_MODE=T_SMEW;
   4E33 21 FA 84      [10] 1169 	ld	hl,#_CURSOR_MODE + 0
   4E36 36 04         [10] 1170 	ld	(hl), #0x04
   4E38 18 47         [12] 1171 	jr	00237$
   4E3A                    1172 00137$:
                           1173 ;src/game/game.c:258: else if(CURSOR_MODE==T_SMEW)
   4E3A 3A FA 84      [13] 1174 	ld	a,(#_CURSOR_MODE + 0)
   4E3D D6 04         [ 7] 1175 	sub	a, #0x04
   4E3F 20 07         [12] 1176 	jr	NZ,00134$
                           1177 ;src/game/game.c:259: CURSOR_MODE=T_SMNS;
   4E41 21 FA 84      [10] 1178 	ld	hl,#_CURSOR_MODE + 0
   4E44 36 03         [10] 1179 	ld	(hl), #0x03
   4E46 18 39         [12] 1180 	jr	00237$
   4E48                    1181 00134$:
                           1182 ;src/game/game.c:260: else if(CURSOR_MODE==T_SLNS)
   4E48 3A FA 84      [13] 1183 	ld	a,(#_CURSOR_MODE + 0)
   4E4B D6 05         [ 7] 1184 	sub	a, #0x05
   4E4D 20 07         [12] 1185 	jr	NZ,00131$
                           1186 ;src/game/game.c:261: CURSOR_MODE=T_SLEW;
   4E4F 21 FA 84      [10] 1187 	ld	hl,#_CURSOR_MODE + 0
   4E52 36 06         [10] 1188 	ld	(hl), #0x06
   4E54 18 2B         [12] 1189 	jr	00237$
   4E56                    1190 00131$:
                           1191 ;src/game/game.c:262: else if(CURSOR_MODE==T_SLEW)
   4E56 3A FA 84      [13] 1192 	ld	a,(#_CURSOR_MODE + 0)
   4E59 D6 06         [ 7] 1193 	sub	a, #0x06
   4E5B 20 07         [12] 1194 	jr	NZ,00128$
                           1195 ;src/game/game.c:263: CURSOR_MODE=T_SLNS;
   4E5D 21 FA 84      [10] 1196 	ld	hl,#_CURSOR_MODE + 0
   4E60 36 05         [10] 1197 	ld	(hl), #0x05
   4E62 18 1D         [12] 1198 	jr	00237$
   4E64                    1199 00128$:
                           1200 ;src/game/game.c:264: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   4E64 3A FA 84      [13] 1201 	ld	a,(#_CURSOR_MODE + 0)
   4E67 FE 07         [ 7] 1202 	cp	a,#0x07
   4E69 38 0A         [12] 1203 	jr	C,00124$
   4E6B D6 10         [ 7] 1204 	sub	a, #0x10
   4E6D 30 06         [12] 1205 	jr	NC,00124$
                           1206 ;src/game/game.c:265: CURSOR_MODE+=1;
   4E6F 21 FA 84      [10] 1207 	ld	hl, #_CURSOR_MODE+0
   4E72 34            [11] 1208 	inc	(hl)
   4E73 18 0C         [12] 1209 	jr	00237$
   4E75                    1210 00124$:
                           1211 ;src/game/game.c:266: else if(CURSOR_MODE==T_RNSW)
   4E75 3A FA 84      [13] 1212 	ld	a,(#_CURSOR_MODE + 0)
   4E78 D6 10         [ 7] 1213 	sub	a, #0x10
   4E7A 20 05         [12] 1214 	jr	NZ,00237$
                           1215 ;src/game/game.c:267: CURSOR_MODE=T_REW;
   4E7C 21 FA 84      [10] 1216 	ld	hl,#_CURSOR_MODE + 0
   4E7F 36 07         [10] 1217 	ld	(hl), #0x07
                           1218 ;src/game/game.c:269: for(i=0; i<14000; i++) {}
   4E81                    1219 00237$:
   4E81 21 B0 36      [10] 1220 	ld	hl,#0x36B0
   4E84                    1221 00198$:
   4E84 2B            [ 6] 1222 	dec	hl
   4E85 7C            [ 4] 1223 	ld	a,h
   4E86 B5            [ 4] 1224 	or	a,l
   4E87 20 FB         [12] 1225 	jr	NZ,00198$
   4E89 C3 E4 4F      [10] 1226 	jp	00180$
   4E8C                    1227 00167$:
                           1228 ;src/game/game.c:272: else if ( cpct_isKeyPressed(Key_Esc) )
   4E8C 21 08 04      [10] 1229 	ld	hl,#0x0408
   4E8F CD B5 70      [17] 1230 	call	_cpct_isKeyPressed
   4E92 7D            [ 4] 1231 	ld	a,l
   4E93 B7            [ 4] 1232 	or	a, a
   4E94 CA 2B 4F      [10] 1233 	jp	Z,00164$
                           1234 ;src/game/game.c:275: if(CURSOR_MODE==NONE)
   4E97 3A FA 84      [13] 1235 	ld	a,(#_CURSOR_MODE + 0)
   4E9A B7            [ 4] 1236 	or	a, a
   4E9B 20 62         [12] 1237 	jr	NZ,00150$
                           1238 ;src/game/game.c:278: const char *txtWindowQuit[] = { 
   4E9D 21 00 00      [10] 1239 	ld	hl,#0x0000
   4EA0 39            [11] 1240 	add	hl,sp
   4EA1 5D            [ 4] 1241 	ld	e,l
   4EA2 54            [ 4] 1242 	ld	d,h
   4EA3 36 10         [10] 1243 	ld	(hl),#<(___str_30)
   4EA5 23            [ 6] 1244 	inc	hl
   4EA6 36 50         [10] 1245 	ld	(hl),#>(___str_30)
   4EA8 6B            [ 4] 1246 	ld	l, e
   4EA9 62            [ 4] 1247 	ld	h, d
   4EAA 23            [ 6] 1248 	inc	hl
   4EAB 23            [ 6] 1249 	inc	hl
   4EAC 36 1E         [10] 1250 	ld	(hl),#<(___str_31)
   4EAE 23            [ 6] 1251 	inc	hl
   4EAF 36 50         [10] 1252 	ld	(hl),#>(___str_31)
   4EB1 21 04 00      [10] 1253 	ld	hl,#0x0004
   4EB4 19            [11] 1254 	add	hl,de
   4EB5 36 1F         [10] 1255 	ld	(hl),#<(___str_32)
   4EB7 23            [ 6] 1256 	inc	hl
   4EB8 36 50         [10] 1257 	ld	(hl),#>(___str_32)
                           1258 ;src/game/game.c:284: putM2();
   4EBA D5            [11] 1259 	push	de
   4EBB CD 09 5A      [17] 1260 	call	_putM2
   4EBE D1            [10] 1261 	pop	de
                           1262 ;src/game/game.c:285: if(	drawWindow(txtWindowQuit,3,1) == 1)
   4EBF 21 03 01      [10] 1263 	ld	hl,#0x0103
   4EC2 E5            [11] 1264 	push	hl
   4EC3 D5            [11] 1265 	push	de
   4EC4 CD 0D 5F      [17] 1266 	call	_drawWindow
   4EC7 F1            [10] 1267 	pop	af
   4EC8 F1            [10] 1268 	pop	af
   4EC9 2D            [ 4] 1269 	dec	l
   4ECA 20 06         [12] 1270 	jr	NZ,00147$
                           1271 ;src/game/game.c:286: exit=1;
   4ECC DD 36 F2 01   [19] 1272 	ld	-14 (ix),#0x01
   4ED0 18 4E         [12] 1273 	jr	00242$
   4ED2                    1274 00147$:
                           1275 ;src/game/game.c:289: putM1();
   4ED2 CD F5 59      [17] 1276 	call	_putM1
                           1277 ;src/game/game.c:290: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   4ED5 21 00 00      [10] 1278 	ld	hl,#0x0000
   4ED8 E5            [11] 1279 	push	hl
   4ED9 2E 00         [ 7] 1280 	ld	l, #0x00
   4EDB E5            [11] 1281 	push	hl
   4EDC CD E4 73      [17] 1282 	call	_cpct_px2byteM1
   4EDF F1            [10] 1283 	pop	af
   4EE0 F1            [10] 1284 	pop	af
   4EE1 65            [ 4] 1285 	ld	h,l
   4EE2 01 00 40      [10] 1286 	ld	bc,#0x4000
   4EE5 C5            [11] 1287 	push	bc
   4EE6 E5            [11] 1288 	push	hl
   4EE7 33            [ 6] 1289 	inc	sp
   4EE8 21 00 C0      [10] 1290 	ld	hl,#0xC000
   4EEB E5            [11] 1291 	push	hl
   4EEC CD D6 73      [17] 1292 	call	_cpct_memset
                           1293 ;src/game/game.c:291: drawWorld(ulx, uly);
   4EEF DD 7E FB      [19] 1294 	ld	a,-5 (ix)
   4EF2 F5            [11] 1295 	push	af
   4EF3 33            [ 6] 1296 	inc	sp
   4EF4 DD 7E FF      [19] 1297 	ld	a,-1 (ix)
   4EF7 F5            [11] 1298 	push	af
   4EF8 33            [ 6] 1299 	inc	sp
   4EF9 CD A9 59      [17] 1300 	call	_drawWorld
   4EFC F1            [10] 1301 	pop	af
   4EFD 18 21         [12] 1302 	jr	00242$
   4EFF                    1303 00150$:
                           1304 ;src/game/game.c:296: CURSOR_MODE=NONE;
   4EFF FD 21 FA 84   [14] 1305 	ld	iy,#_CURSOR_MODE
   4F03 FD 36 00 00   [19] 1306 	ld	0 (iy),#0x00
                           1307 ;src/game/game.c:297: drawTile(ulx, uly, xCursor, yCursor);
   4F07 DD 7E FE      [19] 1308 	ld	a,-2 (ix)
   4F0A F5            [11] 1309 	push	af
   4F0B 33            [ 6] 1310 	inc	sp
   4F0C DD 7E FC      [19] 1311 	ld	a,-4 (ix)
   4F0F F5            [11] 1312 	push	af
   4F10 33            [ 6] 1313 	inc	sp
   4F11 DD 7E FB      [19] 1314 	ld	a,-5 (ix)
   4F14 F5            [11] 1315 	push	af
   4F15 33            [ 6] 1316 	inc	sp
   4F16 DD 7E FF      [19] 1317 	ld	a,-1 (ix)
   4F19 F5            [11] 1318 	push	af
   4F1A 33            [ 6] 1319 	inc	sp
   4F1B CD E8 56      [17] 1320 	call	_drawTile
   4F1E F1            [10] 1321 	pop	af
   4F1F F1            [10] 1322 	pop	af
                           1323 ;src/game/game.c:301: for(i=0; i<14000; i++) {}
   4F20                    1324 00242$:
   4F20 01 B0 36      [10] 1325 	ld	bc,#0x36B0
   4F23                    1326 00201$:
   4F23 0B            [ 6] 1327 	dec	bc
   4F24 78            [ 4] 1328 	ld	a,b
   4F25 B1            [ 4] 1329 	or	a,c
   4F26 20 FB         [12] 1330 	jr	NZ,00201$
   4F28 C3 E4 4F      [10] 1331 	jp	00180$
   4F2B                    1332 00164$:
                           1333 ;src/game/game.c:304: else if ( cpct_isKeyPressed(Key_Return) )
   4F2B 21 02 04      [10] 1334 	ld	hl,#0x0402
   4F2E CD B5 70      [17] 1335 	call	_cpct_isKeyPressed
   4F31 7D            [ 4] 1336 	ld	a,l
   4F32 B7            [ 4] 1337 	or	a, a
   4F33 CA E4 4F      [10] 1338 	jp	Z,00180$
                           1339 ;src/game/game.c:307: if(CURSOR_MODE==NONE)
   4F36 3A FA 84      [13] 1340 	ld	a,(#_CURSOR_MODE + 0)
   4F39 B7            [ 4] 1341 	or	a, a
   4F3A 20 42         [12] 1342 	jr	NZ,00158$
                           1343 ;src/game/game.c:309: menuTile(ulx+xCursor, uly+yCursor);
   4F3C DD 7E F5      [19] 1344 	ld	a, -11 (ix)
   4F3F DD 6E F9      [19] 1345 	ld	l, -7 (ix)
   4F42 85            [ 4] 1346 	add	a, l
   4F43 67            [ 4] 1347 	ld	h,a
   4F44 DD 6E F7      [19] 1348 	ld	l,-9 (ix)
   4F47 DD 56 F0      [19] 1349 	ld	d,-16 (ix)
   4F4A 7D            [ 4] 1350 	ld	a,l
   4F4B 82            [ 4] 1351 	add	a, d
   4F4C E5            [11] 1352 	push	hl
   4F4D 33            [ 6] 1353 	inc	sp
   4F4E F5            [11] 1354 	push	af
   4F4F 33            [ 6] 1355 	inc	sp
   4F50 CD 9C 49      [17] 1356 	call	_menuTile
   4F53 F1            [10] 1357 	pop	af
                           1358 ;src/game/game.c:310: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   4F54 21 00 00      [10] 1359 	ld	hl,#0x0000
   4F57 E5            [11] 1360 	push	hl
   4F58 2E 00         [ 7] 1361 	ld	l, #0x00
   4F5A E5            [11] 1362 	push	hl
   4F5B CD E4 73      [17] 1363 	call	_cpct_px2byteM1
   4F5E F1            [10] 1364 	pop	af
   4F5F F1            [10] 1365 	pop	af
   4F60 65            [ 4] 1366 	ld	h,l
   4F61 01 00 40      [10] 1367 	ld	bc,#0x4000
   4F64 C5            [11] 1368 	push	bc
   4F65 E5            [11] 1369 	push	hl
   4F66 33            [ 6] 1370 	inc	sp
   4F67 21 00 C0      [10] 1371 	ld	hl,#0xC000
   4F6A E5            [11] 1372 	push	hl
   4F6B CD D6 73      [17] 1373 	call	_cpct_memset
                           1374 ;src/game/game.c:311: drawWorld(ulx, uly);
   4F6E DD 7E FB      [19] 1375 	ld	a,-5 (ix)
   4F71 F5            [11] 1376 	push	af
   4F72 33            [ 6] 1377 	inc	sp
   4F73 DD 7E FF      [19] 1378 	ld	a,-1 (ix)
   4F76 F5            [11] 1379 	push	af
   4F77 33            [ 6] 1380 	inc	sp
   4F78 CD A9 59      [17] 1381 	call	_drawWorld
   4F7B F1            [10] 1382 	pop	af
   4F7C 18 4B         [12] 1383 	jr	00248$
   4F7E                    1384 00158$:
                           1385 ;src/game/game.c:314: else if(CURSOR_MODE>=T_SSNS)
   4F7E 3A FA 84      [13] 1386 	ld	a,(#_CURSOR_MODE + 0)
   4F81 D6 01         [ 7] 1387 	sub	a, #0x01
   4F83 38 44         [12] 1388 	jr	C,00248$
                           1389 ;src/game/game.c:316: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   4F85 DD 7E F7      [19] 1390 	ld	a,-9 (ix)
   4F88 DD 86 F0      [19] 1391 	add	a, -16 (ix)
   4F8B 5F            [ 4] 1392 	ld	e,a
   4F8C DD 7E F8      [19] 1393 	ld	a,-8 (ix)
   4F8F DD 8E F1      [19] 1394 	adc	a, -15 (ix)
   4F92 57            [ 4] 1395 	ld	d,a
   4F93 DD 7E F5      [19] 1396 	ld	a,-11 (ix)
   4F96 DD 86 F9      [19] 1397 	add	a, -7 (ix)
   4F99 6F            [ 4] 1398 	ld	l,a
   4F9A DD 7E F6      [19] 1399 	ld	a,-10 (ix)
   4F9D DD 8E FA      [19] 1400 	adc	a, -6 (ix)
   4FA0 67            [ 4] 1401 	ld	h,a
   4FA1 4D            [ 4] 1402 	ld	c, l
   4FA2 44            [ 4] 1403 	ld	b, h
   4FA3 29            [11] 1404 	add	hl, hl
   4FA4 29            [11] 1405 	add	hl, hl
   4FA5 09            [11] 1406 	add	hl, bc
   4FA6 29            [11] 1407 	add	hl, hl
   4FA7 29            [11] 1408 	add	hl, hl
   4FA8 29            [11] 1409 	add	hl, hl
   4FA9 29            [11] 1410 	add	hl, hl
   4FAA 19            [11] 1411 	add	hl,de
   4FAB 3E FA         [ 7] 1412 	ld	a,#<(_p_world)
   4FAD 85            [ 4] 1413 	add	a, l
   4FAE 5F            [ 4] 1414 	ld	e,a
   4FAF 3E 75         [ 7] 1415 	ld	a,#>(_p_world)
   4FB1 8C            [ 4] 1416 	adc	a, h
   4FB2 57            [ 4] 1417 	ld	d,a
   4FB3 3A FA 84      [13] 1418 	ld	a,(#_CURSOR_MODE + 0)
   4FB6 C6 09         [ 7] 1419 	add	a, #0x09
   4FB8 12            [ 7] 1420 	ld	(de),a
                           1421 ;src/game/game.c:319: if(CURSOR_MODE<=T_SLEW)
   4FB9 3E 06         [ 7] 1422 	ld	a,#0x06
   4FBB FD 21 FA 84   [14] 1423 	ld	iy,#_CURSOR_MODE
   4FBF FD 96 00      [19] 1424 	sub	a, 0 (iy)
   4FC2 38 05         [12] 1425 	jr	C,00248$
                           1426 ;src/game/game.c:320: CURSOR_MODE=NONE;
   4FC4 21 FA 84      [10] 1427 	ld	hl,#_CURSOR_MODE + 0
   4FC7 36 00         [10] 1428 	ld	(hl), #0x00
                           1429 ;src/game/game.c:324: for(i=0; i<14000; i++) {}
   4FC9                    1430 00248$:
   4FC9 DD 36 F3 B0   [19] 1431 	ld	-13 (ix),#0xB0
   4FCD DD 36 F4 36   [19] 1432 	ld	-12 (ix),#0x36
   4FD1                    1433 00204$:
   4FD1 DD 6E F3      [19] 1434 	ld	l,-13 (ix)
   4FD4 DD 66 F4      [19] 1435 	ld	h,-12 (ix)
   4FD7 2B            [ 6] 1436 	dec	hl
   4FD8 DD 75 F3      [19] 1437 	ld	-13 (ix),l
   4FDB DD 74 F4      [19] 1438 	ld	-12 (ix), h
   4FDE 7C            [ 4] 1439 	ld	a, h
   4FDF DD B6 F3      [19] 1440 	or	a,-13 (ix)
   4FE2 20 ED         [12] 1441 	jr	NZ,00204$
   4FE4                    1442 00180$:
                           1443 ;src/game/game.c:328: drawCursor(xCursor, yCursor, 0);
   4FE4 DD 56 F9      [19] 1444 	ld	d,-7 (ix)
   4FE7 DD 46 F0      [19] 1445 	ld	b,-16 (ix)
   4FEA AF            [ 4] 1446 	xor	a, a
   4FEB F5            [11] 1447 	push	af
   4FEC 33            [ 6] 1448 	inc	sp
   4FED D5            [11] 1449 	push	de
   4FEE 33            [ 6] 1450 	inc	sp
   4FEF C5            [11] 1451 	push	bc
   4FF0 33            [ 6] 1452 	inc	sp
   4FF1 CD 59 50      [17] 1453 	call	_drawCursor
   4FF4 F1            [10] 1454 	pop	af
   4FF5 33            [ 6] 1455 	inc	sp
                           1456 ;src/game/game.c:329: drawScrolls(ulx, uly);
   4FF6 DD 7E FB      [19] 1457 	ld	a,-5 (ix)
   4FF9 F5            [11] 1458 	push	af
   4FFA 33            [ 6] 1459 	inc	sp
   4FFB DD 7E FF      [19] 1460 	ld	a,-1 (ix)
   4FFE F5            [11] 1461 	push	af
   4FFF 33            [ 6] 1462 	inc	sp
   5000 CD 10 59      [17] 1463 	call	_drawScrolls
   5003 F1            [10] 1464 	pop	af
                           1465 ;src/game/game.c:331: while(!exit);
   5004 DD 7E F2      [19] 1466 	ld	a,-14 (ix)
   5007 B7            [ 4] 1467 	or	a, a
   5008 CA DC 4B      [10] 1468 	jp	Z,00181$
   500B DD F9         [10] 1469 	ld	sp, ix
   500D DD E1         [14] 1470 	pop	ix
   500F C9            [10] 1471 	ret
   5010                    1472 ___str_30:
   5010 52 65 61 6C 6C 79  1473 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   501D 00                 1474 	.db 0x00
   501E                    1475 ___str_31:
   501E 00                 1476 	.db 0x00
   501F                    1477 ___str_32:
   501F 50 72 65 73 73 20  1478 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   5044 00                 1479 	.db 0x00
   5045                    1480 ___str_33:
   5045 47 65 6E 65 72 61  1481 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   5058 00                 1482 	.db 0x00
                           1483 	.area _CODE
                           1484 	.area _INITIALIZER
                           1485 	.area _CABS (ABS)
