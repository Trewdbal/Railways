                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 21:22:20 2016
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
   47EF                      68 _windowInfoTile::
   47EF DD E5         [15]   69 	push	ix
   47F1 DD 21 00 00   [14]   70 	ld	ix,#0
   47F5 DD 39         [15]   71 	add	ix,sp
   47F7 21 F4 FF      [10]   72 	ld	hl,#-12
   47FA 39            [11]   73 	add	hl,sp
   47FB F9            [ 6]   74 	ld	sp,hl
                             75 ;src/game/game.c:7: txtWindowInfoTile[1] = "";
   47FC 21 00 00      [10]   76 	ld	hl,#0x0000
   47FF 39            [11]   77 	add	hl,sp
   4800 4D            [ 4]   78 	ld	c,l
   4801 44            [ 4]   79 	ld	b,h
   4802 23            [ 6]   80 	inc	hl
   4803 23            [ 6]   81 	inc	hl
   4804 11 FB 48      [10]   82 	ld	de,#___str_0+0
   4807 73            [ 7]   83 	ld	(hl),e
   4808 23            [ 6]   84 	inc	hl
   4809 72            [ 7]   85 	ld	(hl),d
                             86 ;src/game/game.c:8: txtWindowInfoTile[2] = "Production: Nothing";
   480A 21 04 00      [10]   87 	ld	hl,#0x0004
   480D 09            [11]   88 	add	hl,bc
   480E DD 75 FC      [19]   89 	ld	-4 (ix),l
   4811 DD 74 FD      [19]   90 	ld	-3 (ix),h
   4814 DD 6E FC      [19]   91 	ld	l,-4 (ix)
   4817 DD 66 FD      [19]   92 	ld	h,-3 (ix)
   481A 36 FC         [10]   93 	ld	(hl),#<(___str_1)
   481C 23            [ 6]   94 	inc	hl
   481D 36 48         [10]   95 	ld	(hl),#>(___str_1)
                             96 ;src/game/game.c:9: txtWindowInfoTile[3] = "Demand: Nothing";
   481F 21 06 00      [10]   97 	ld	hl,#0x0006
   4822 09            [11]   98 	add	hl,bc
   4823 DD 75 FE      [19]   99 	ld	-2 (ix),l
   4826 DD 74 FF      [19]  100 	ld	-1 (ix),h
   4829 DD 6E FE      [19]  101 	ld	l,-2 (ix)
   482C DD 66 FF      [19]  102 	ld	h,-1 (ix)
   482F 36 10         [10]  103 	ld	(hl),#<(___str_2)
   4831 23            [ 6]  104 	inc	hl
   4832 36 49         [10]  105 	ld	(hl),#>(___str_2)
                            106 ;src/game/game.c:11: switch(p_world[y*WIDTH+x])
   4834 DD 5E 05      [19]  107 	ld	e,5 (ix)
   4837 16 00         [ 7]  108 	ld	d,#0x00
   4839 6B            [ 4]  109 	ld	l, e
   483A 62            [ 4]  110 	ld	h, d
   483B 29            [11]  111 	add	hl, hl
   483C 29            [11]  112 	add	hl, hl
   483D 19            [11]  113 	add	hl, de
   483E 29            [11]  114 	add	hl, hl
   483F 29            [11]  115 	add	hl, hl
   4840 29            [11]  116 	add	hl, hl
   4841 29            [11]  117 	add	hl, hl
   4842 DD 5E 04      [19]  118 	ld	e,4 (ix)
   4845 16 00         [ 7]  119 	ld	d,#0x00
   4847 19            [11]  120 	add	hl,de
   4848 11 FB 7A      [10]  121 	ld	de,#_p_world
   484B 19            [11]  122 	add	hl,de
   484C 5E            [ 7]  123 	ld	e,(hl)
   484D 3E 09         [ 7]  124 	ld	a,#0x09
   484F 93            [ 4]  125 	sub	a, e
   4850 DA E7 48      [10]  126 	jp	C,00111$
   4853 16 00         [ 7]  127 	ld	d,#0x00
   4855 21 5C 48      [10]  128 	ld	hl,#00119$
   4858 19            [11]  129 	add	hl,de
   4859 19            [11]  130 	add	hl,de
   485A 19            [11]  131 	add	hl,de
   485B E9            [ 4]  132 	jp	(hl)
   485C                     133 00119$:
   485C C3 7A 48      [10]  134 	jp	00101$
   485F C3 7A 48      [10]  135 	jp	00102$
   4862 C3 83 48      [10]  136 	jp	00103$
   4865 C3 83 48      [10]  137 	jp	00104$
   4868 C3 83 48      [10]  138 	jp	00105$
   486B C3 A2 48      [10]  139 	jp	00106$
   486E C3 A2 48      [10]  140 	jp	00107$
   4871 C3 B6 48      [10]  141 	jp	00108$
   4874 C3 BF 48      [10]  142 	jp	00109$
   4877 C3 C8 48      [10]  143 	jp	00110$
                            144 ;src/game/game.c:13: case GRASS1:
   487A                     145 00101$:
                            146 ;src/game/game.c:14: case GRASS2:
   487A                     147 00102$:
                            148 ;src/game/game.c:15: txtWindowInfoTile[0] = "Grassland";
   487A 69            [ 4]  149 	ld	l, c
   487B 60            [ 4]  150 	ld	h, b
   487C 36 20         [10]  151 	ld	(hl),#<(___str_3)
   487E 23            [ 6]  152 	inc	hl
   487F 36 49         [10]  153 	ld	(hl),#>(___str_3)
                            154 ;src/game/game.c:16: break;
   4881 18 6B         [12]  155 	jr	00112$
                            156 ;src/game/game.c:17: case DWELLINGS1:
   4883                     157 00103$:
                            158 ;src/game/game.c:18: case DWELLINGS2:
   4883                     159 00104$:
                            160 ;src/game/game.c:19: case DWELLINGS3:
   4883                     161 00105$:
                            162 ;src/game/game.c:20: txtWindowInfoTile[0] = "City";
   4883 69            [ 4]  163 	ld	l, c
   4884 60            [ 4]  164 	ld	h, b
   4885 36 2A         [10]  165 	ld	(hl),#<(___str_4)
   4887 23            [ 6]  166 	inc	hl
   4888 36 49         [10]  167 	ld	(hl),#>(___str_4)
                            168 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   488A DD 6E FC      [19]  169 	ld	l,-4 (ix)
   488D DD 66 FD      [19]  170 	ld	h,-3 (ix)
   4890 36 2F         [10]  171 	ld	(hl),#<(___str_5)
   4892 23            [ 6]  172 	inc	hl
   4893 36 49         [10]  173 	ld	(hl),#>(___str_5)
                            174 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4895 DD 6E FE      [19]  175 	ld	l,-2 (ix)
   4898 DD 66 FF      [19]  176 	ld	h,-1 (ix)
   489B 36 4C         [10]  177 	ld	(hl),#<(___str_6)
   489D 23            [ 6]  178 	inc	hl
   489E 36 49         [10]  179 	ld	(hl),#>(___str_6)
                            180 ;src/game/game.c:23: break;
   48A0 18 4C         [12]  181 	jr	00112$
                            182 ;src/game/game.c:24: case FARM1:
   48A2                     183 00106$:
                            184 ;src/game/game.c:25: case FARM2:
   48A2                     185 00107$:
                            186 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   48A2 69            [ 4]  187 	ld	l, c
   48A3 60            [ 4]  188 	ld	h, b
   48A4 36 71         [10]  189 	ld	(hl),#<(___str_7)
   48A6 23            [ 6]  190 	inc	hl
   48A7 36 49         [10]  191 	ld	(hl),#>(___str_7)
                            192 ;src/game/game.c:27: txtWindowInfoTile[2] = "Production: Cereal";
   48A9 DD 6E FC      [19]  193 	ld	l,-4 (ix)
   48AC DD 66 FD      [19]  194 	ld	h,-3 (ix)
   48AF 36 76         [10]  195 	ld	(hl),#<(___str_8)
   48B1 23            [ 6]  196 	inc	hl
   48B2 36 49         [10]  197 	ld	(hl),#>(___str_8)
                            198 ;src/game/game.c:28: break;
   48B4 18 38         [12]  199 	jr	00112$
                            200 ;src/game/game.c:29: case WATER:
   48B6                     201 00108$:
                            202 ;src/game/game.c:30: txtWindowInfoTile[0] = "Water";
   48B6 69            [ 4]  203 	ld	l, c
   48B7 60            [ 4]  204 	ld	h, b
   48B8 36 89         [10]  205 	ld	(hl),#<(___str_9)
   48BA 23            [ 6]  206 	inc	hl
   48BB 36 49         [10]  207 	ld	(hl),#>(___str_9)
                            208 ;src/game/game.c:31: break;
   48BD 18 2F         [12]  209 	jr	00112$
                            210 ;src/game/game.c:32: case FOREST:
   48BF                     211 00109$:
                            212 ;src/game/game.c:33: txtWindowInfoTile[0] = "Forest";
   48BF 69            [ 4]  213 	ld	l, c
   48C0 60            [ 4]  214 	ld	h, b
   48C1 36 8F         [10]  215 	ld	(hl),#<(___str_10)
   48C3 23            [ 6]  216 	inc	hl
   48C4 36 49         [10]  217 	ld	(hl),#>(___str_10)
                            218 ;src/game/game.c:34: break;
   48C6 18 26         [12]  219 	jr	00112$
                            220 ;src/game/game.c:35: case LIVESTOCK:
   48C8                     221 00110$:
                            222 ;src/game/game.c:36: txtWindowInfoTile[0] = "Livestock farming";
   48C8 69            [ 4]  223 	ld	l, c
   48C9 60            [ 4]  224 	ld	h, b
   48CA 36 96         [10]  225 	ld	(hl),#<(___str_11)
   48CC 23            [ 6]  226 	inc	hl
   48CD 36 49         [10]  227 	ld	(hl),#>(___str_11)
                            228 ;src/game/game.c:37: txtWindowInfoTile[2] = "Production: Livestock, wool";
   48CF DD 6E FC      [19]  229 	ld	l,-4 (ix)
   48D2 DD 66 FD      [19]  230 	ld	h,-3 (ix)
   48D5 36 A8         [10]  231 	ld	(hl),#<(___str_12)
   48D7 23            [ 6]  232 	inc	hl
   48D8 36 49         [10]  233 	ld	(hl),#>(___str_12)
                            234 ;src/game/game.c:38: txtWindowInfoTile[3] = "Demand: Cereal";
   48DA DD 6E FE      [19]  235 	ld	l,-2 (ix)
   48DD DD 66 FF      [19]  236 	ld	h,-1 (ix)
   48E0 36 C4         [10]  237 	ld	(hl),#<(___str_13)
   48E2 23            [ 6]  238 	inc	hl
   48E3 36 49         [10]  239 	ld	(hl),#>(___str_13)
                            240 ;src/game/game.c:39: break;
   48E5 18 07         [12]  241 	jr	00112$
                            242 ;src/game/game.c:40: default:
   48E7                     243 00111$:
                            244 ;src/game/game.c:41: txtWindowInfoTile[0] = "Not yet implemented";
   48E7 69            [ 4]  245 	ld	l, c
   48E8 60            [ 4]  246 	ld	h, b
   48E9 36 D3         [10]  247 	ld	(hl),#<(___str_14)
   48EB 23            [ 6]  248 	inc	hl
   48EC 36 49         [10]  249 	ld	(hl),#>(___str_14)
                            250 ;src/game/game.c:42: }
   48EE                     251 00112$:
                            252 ;src/game/game.c:44: drawWindow(txtWindowInfoTile, 4, 0);
   48EE 21 04 00      [10]  253 	ld	hl,#0x0004
   48F1 E5            [11]  254 	push	hl
   48F2 C5            [11]  255 	push	bc
   48F3 CD D1 5F      [17]  256 	call	_drawWindow
   48F6 DD F9         [10]  257 	ld	sp,ix
   48F8 DD E1         [14]  258 	pop	ix
   48FA C9            [10]  259 	ret
   48FB                     260 ___str_0:
   48FB 00                  261 	.db 0x00
   48FC                     262 ___str_1:
   48FC 50 72 6F 64 75 63   263 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   490F 00                  264 	.db 0x00
   4910                     265 ___str_2:
   4910 44 65 6D 61 6E 64   266 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   491F 00                  267 	.db 0x00
   4920                     268 ___str_3:
   4920 47 72 61 73 73 6C   269 	.ascii "Grassland"
        61 6E 64
   4929 00                  270 	.db 0x00
   492A                     271 ___str_4:
   492A 43 69 74 79         272 	.ascii "City"
   492E 00                  273 	.db 0x00
   492F                     274 ___str_5:
   492F 50 72 6F 64 75 63   275 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   494B 00                  276 	.db 0x00
   494C                     277 ___str_6:
   494C 44 65 6D 61 6E 64   278 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   4970 00                  279 	.db 0x00
   4971                     280 ___str_7:
   4971 46 61 72 6D         281 	.ascii "Farm"
   4975 00                  282 	.db 0x00
   4976                     283 ___str_8:
   4976 50 72 6F 64 75 63   284 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   4988 00                  285 	.db 0x00
   4989                     286 ___str_9:
   4989 57 61 74 65 72      287 	.ascii "Water"
   498E 00                  288 	.db 0x00
   498F                     289 ___str_10:
   498F 46 6F 72 65 73 74   290 	.ascii "Forest"
   4995 00                  291 	.db 0x00
   4996                     292 ___str_11:
   4996 4C 69 76 65 73 74   293 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   49A7 00                  294 	.db 0x00
   49A8                     295 ___str_12:
   49A8 50 72 6F 64 75 63   296 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   49C3 00                  297 	.db 0x00
   49C4                     298 ___str_13:
   49C4 44 65 6D 61 6E 64   299 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   49D2 00                  300 	.db 0x00
   49D3                     301 ___str_14:
   49D3 4E 6F 74 20 79 65   302 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   49E6 00                  303 	.db 0x00
                            304 ;src/game/game.c:47: void menuStations()
                            305 ;	---------------------------------
                            306 ; Function menuStations
                            307 ; ---------------------------------
   49E7                     308 _menuStations::
   49E7 DD E5         [15]  309 	push	ix
   49E9 DD 21 00 00   [14]  310 	ld	ix,#0
   49ED DD 39         [15]  311 	add	ix,sp
   49EF 21 FA FF      [10]  312 	ld	hl,#-6
   49F2 39            [11]  313 	add	hl,sp
   49F3 F9            [ 6]  314 	ld	sp,hl
                            315 ;src/game/game.c:51: const char *txtMenuSizeStation[] = { 
   49F4 21 00 00      [10]  316 	ld	hl,#0x0000
   49F7 39            [11]  317 	add	hl,sp
   49F8 5D            [ 4]  318 	ld	e,l
   49F9 54            [ 4]  319 	ld	d,h
   49FA 36 49         [10]  320 	ld	(hl),#<(___str_15)
   49FC 23            [ 6]  321 	inc	hl
   49FD 36 4A         [10]  322 	ld	(hl),#>(___str_15)
   49FF 6B            [ 4]  323 	ld	l, e
   4A00 62            [ 4]  324 	ld	h, d
   4A01 23            [ 6]  325 	inc	hl
   4A02 23            [ 6]  326 	inc	hl
   4A03 01 4F 4A      [10]  327 	ld	bc,#___str_16+0
   4A06 71            [ 7]  328 	ld	(hl),c
   4A07 23            [ 6]  329 	inc	hl
   4A08 70            [ 7]  330 	ld	(hl),b
   4A09 21 04 00      [10]  331 	ld	hl,#0x0004
   4A0C 19            [11]  332 	add	hl,de
   4A0D 01 56 4A      [10]  333 	ld	bc,#___str_17+0
   4A10 71            [ 7]  334 	ld	(hl),c
   4A11 23            [ 6]  335 	inc	hl
   4A12 70            [ 7]  336 	ld	(hl),b
                            337 ;src/game/game.c:57: result = drawMenu(txtMenuSizeStation,3);
   4A13 3E 03         [ 7]  338 	ld	a,#0x03
   4A15 F5            [11]  339 	push	af
   4A16 33            [ 6]  340 	inc	sp
   4A17 D5            [11]  341 	push	de
   4A18 CD D3 5E      [17]  342 	call	_drawMenu
   4A1B F1            [10]  343 	pop	af
   4A1C 33            [ 6]  344 	inc	sp
   4A1D 5D            [ 4]  345 	ld	e,l
                            346 ;src/game/game.c:59: switch(result)
   4A1E 3E 02         [ 7]  347 	ld	a,#0x02
   4A20 93            [ 4]  348 	sub	a, e
   4A21 38 21         [12]  349 	jr	C,00105$
   4A23 16 00         [ 7]  350 	ld	d,#0x00
   4A25 21 2B 4A      [10]  351 	ld	hl,#00111$
   4A28 19            [11]  352 	add	hl,de
   4A29 19            [11]  353 	add	hl,de
                            354 ;src/game/game.c:61: case 0:
   4A2A E9            [ 4]  355 	jp	(hl)
   4A2B                     356 00111$:
   4A2B 18 04         [12]  357 	jr	00101$
   4A2D 18 09         [12]  358 	jr	00102$
   4A2F 18 0E         [12]  359 	jr	00103$
   4A31                     360 00101$:
                            361 ;src/game/game.c:62: CURSOR_MODE=T_SSEW;
   4A31 21 FF 89      [10]  362 	ld	hl,#_CURSOR_MODE + 0
   4A34 36 02         [10]  363 	ld	(hl), #0x02
                            364 ;src/game/game.c:63: break;
   4A36 18 0C         [12]  365 	jr	00105$
                            366 ;src/game/game.c:65: case 1:
   4A38                     367 00102$:
                            368 ;src/game/game.c:66: CURSOR_MODE=T_SMEW;
   4A38 21 FF 89      [10]  369 	ld	hl,#_CURSOR_MODE + 0
   4A3B 36 04         [10]  370 	ld	(hl), #0x04
                            371 ;src/game/game.c:67: break;
   4A3D 18 05         [12]  372 	jr	00105$
                            373 ;src/game/game.c:69: case 2:
   4A3F                     374 00103$:
                            375 ;src/game/game.c:70: CURSOR_MODE=T_SLEW;
   4A3F 21 FF 89      [10]  376 	ld	hl,#_CURSOR_MODE + 0
   4A42 36 06         [10]  377 	ld	(hl), #0x06
                            378 ;src/game/game.c:72: }
   4A44                     379 00105$:
   4A44 DD F9         [10]  380 	ld	sp, ix
   4A46 DD E1         [14]  381 	pop	ix
   4A48 C9            [10]  382 	ret
   4A49                     383 ___str_15:
   4A49 53 6D 61 6C 6C      384 	.ascii "Small"
   4A4E 00                  385 	.db 0x00
   4A4F                     386 ___str_16:
   4A4F 4D 65 64 69 75 6D   387 	.ascii "Medium"
   4A55 00                  388 	.db 0x00
   4A56                     389 ___str_17:
   4A56 4C 61 72 67 65      390 	.ascii "Large"
   4A5B 00                  391 	.db 0x00
                            392 ;src/game/game.c:75: void menuTile(u8 x, u8 y)
                            393 ;	---------------------------------
                            394 ; Function menuTile
                            395 ; ---------------------------------
   4A5C                     396 _menuTile::
   4A5C DD E5         [15]  397 	push	ix
   4A5E DD 21 00 00   [14]  398 	ld	ix,#0
   4A62 DD 39         [15]  399 	add	ix,sp
   4A64 21 E6 FF      [10]  400 	ld	hl,#-26
   4A67 39            [11]  401 	add	hl,sp
   4A68 F9            [ 6]  402 	ld	sp,hl
                            403 ;src/game/game.c:79: const char *txtMenuTile[] = { 
   4A69 21 00 00      [10]  404 	ld	hl,#0x0000
   4A6C 39            [11]  405 	add	hl,sp
   4A6D 5D            [ 4]  406 	ld	e,l
   4A6E 54            [ 4]  407 	ld	d,h
   4A6F 36 90         [10]  408 	ld	(hl),#<(___str_18)
   4A71 23            [ 6]  409 	inc	hl
   4A72 36 4B         [10]  410 	ld	(hl),#>(___str_18)
   4A74 6B            [ 4]  411 	ld	l, e
   4A75 62            [ 4]  412 	ld	h, d
   4A76 23            [ 6]  413 	inc	hl
   4A77 23            [ 6]  414 	inc	hl
   4A78 01 A0 4B      [10]  415 	ld	bc,#___str_19+0
   4A7B 71            [ 7]  416 	ld	(hl),c
   4A7C 23            [ 6]  417 	inc	hl
   4A7D 70            [ 7]  418 	ld	(hl),b
   4A7E 21 04 00      [10]  419 	ld	hl,#0x0004
   4A81 19            [11]  420 	add	hl,de
   4A82 01 B0 4B      [10]  421 	ld	bc,#___str_20+0
   4A85 71            [ 7]  422 	ld	(hl),c
   4A86 23            [ 6]  423 	inc	hl
   4A87 70            [ 7]  424 	ld	(hl),b
   4A88 21 06 00      [10]  425 	ld	hl,#0x0006
   4A8B 19            [11]  426 	add	hl,de
   4A8C 01 C0 4B      [10]  427 	ld	bc,#___str_21+0
   4A8F 71            [ 7]  428 	ld	(hl),c
   4A90 23            [ 6]  429 	inc	hl
   4A91 70            [ 7]  430 	ld	(hl),b
   4A92 21 08 00      [10]  431 	ld	hl,#0x0008
   4A95 19            [11]  432 	add	hl,de
   4A96 01 C8 4B      [10]  433 	ld	bc,#___str_22+0
   4A99 71            [ 7]  434 	ld	(hl),c
   4A9A 23            [ 6]  435 	inc	hl
   4A9B 70            [ 7]  436 	ld	(hl),b
   4A9C 21 0A 00      [10]  437 	ld	hl,#0x000A
   4A9F 19            [11]  438 	add	hl,de
   4AA0 01 D7 4B      [10]  439 	ld	bc,#___str_23+0
   4AA3 71            [ 7]  440 	ld	(hl),c
   4AA4 23            [ 6]  441 	inc	hl
   4AA5 70            [ 7]  442 	ld	(hl),b
   4AA6 21 0C 00      [10]  443 	ld	hl,#0x000C
   4AA9 19            [11]  444 	add	hl,de
   4AAA 01 E2 4B      [10]  445 	ld	bc,#___str_24+0
   4AAD 71            [ 7]  446 	ld	(hl),c
   4AAE 23            [ 6]  447 	inc	hl
   4AAF 70            [ 7]  448 	ld	(hl),b
                            449 ;src/game/game.c:89: const char *txtWindowDestroy[] = { 
   4AB0 21 0E 00      [10]  450 	ld	hl,#0x000E
   4AB3 39            [11]  451 	add	hl,sp
   4AB4 4D            [ 4]  452 	ld	c,l
   4AB5 44            [ 4]  453 	ld	b,h
   4AB6 36 E9         [10]  454 	ld	(hl),#<(___str_25)
   4AB8 23            [ 6]  455 	inc	hl
   4AB9 36 4B         [10]  456 	ld	(hl),#>(___str_25)
   4ABB 21 02 00      [10]  457 	ld	hl,#0x0002
   4ABE 09            [11]  458 	add	hl,bc
   4ABF DD 75 FA      [19]  459 	ld	-6 (ix),l
   4AC2 DD 74 FB      [19]  460 	ld	-5 (ix),h
   4AC5 DD 6E FA      [19]  461 	ld	l,-6 (ix)
   4AC8 DD 66 FB      [19]  462 	ld	h,-5 (ix)
   4ACB 36 0C         [10]  463 	ld	(hl),#<(___str_26)
   4ACD 23            [ 6]  464 	inc	hl
   4ACE 36 4C         [10]  465 	ld	(hl),#>(___str_26)
   4AD0 21 04 00      [10]  466 	ld	hl,#0x0004
   4AD3 09            [11]  467 	add	hl,bc
   4AD4 DD 75 FA      [19]  468 	ld	-6 (ix),l
   4AD7 DD 74 FB      [19]  469 	ld	-5 (ix),h
   4ADA DD 6E FA      [19]  470 	ld	l,-6 (ix)
   4ADD DD 66 FB      [19]  471 	ld	h,-5 (ix)
   4AE0 36 0D         [10]  472 	ld	(hl),#<(___str_27)
   4AE2 23            [ 6]  473 	inc	hl
   4AE3 36 4C         [10]  474 	ld	(hl),#>(___str_27)
                            475 ;src/game/game.c:96: putM2();
   4AE5 C5            [11]  476 	push	bc
   4AE6 D5            [11]  477 	push	de
   4AE7 CD CD 5A      [17]  478 	call	_putM2
   4AEA D1            [10]  479 	pop	de
   4AEB C1            [10]  480 	pop	bc
                            481 ;src/game/game.c:98: do{
   4AEC D5            [11]  482 	push	de
   4AED DD 5E 05      [19]  483 	ld	e,5 (ix)
   4AF0 16 00         [ 7]  484 	ld	d,#0x00
   4AF2 6B            [ 4]  485 	ld	l, e
   4AF3 62            [ 4]  486 	ld	h, d
   4AF4 29            [11]  487 	add	hl, hl
   4AF5 29            [11]  488 	add	hl, hl
   4AF6 19            [11]  489 	add	hl, de
   4AF7 29            [11]  490 	add	hl, hl
   4AF8 29            [11]  491 	add	hl, hl
   4AF9 29            [11]  492 	add	hl, hl
   4AFA 29            [11]  493 	add	hl, hl
   4AFB D1            [10]  494 	pop	de
   4AFC DD 75 FA      [19]  495 	ld	-6 (ix),l
   4AFF DD 74 FB      [19]  496 	ld	-5 (ix),h
   4B02 DD 71 FE      [19]  497 	ld	-2 (ix),c
   4B05 DD 70 FF      [19]  498 	ld	-1 (ix),b
   4B08 DD 73 FC      [19]  499 	ld	-4 (ix),e
   4B0B DD 72 FD      [19]  500 	ld	-3 (ix),d
   4B0E                     501 00117$:
                            502 ;src/game/game.c:99: menuChoice = drawMenu(txtMenuTile,7);
   4B0E DD 5E FC      [19]  503 	ld	e,-4 (ix)
   4B11 DD 56 FD      [19]  504 	ld	d,-3 (ix)
   4B14 3E 07         [ 7]  505 	ld	a,#0x07
   4B16 F5            [11]  506 	push	af
   4B17 33            [ 6]  507 	inc	sp
   4B18 D5            [11]  508 	push	de
   4B19 CD D3 5E      [17]  509 	call	_drawMenu
   4B1C F1            [10]  510 	pop	af
   4B1D 33            [ 6]  511 	inc	sp
   4B1E 55            [ 4]  512 	ld	d,l
                            513 ;src/game/game.c:101: if(menuChoice==0)
   4B1F 7A            [ 4]  514 	ld	a,d
   4B20 B7            [ 4]  515 	or	a, a
   4B21 20 0F         [12]  516 	jr	NZ,00115$
                            517 ;src/game/game.c:102: windowInfoTile(x, y);
   4B23 D5            [11]  518 	push	de
   4B24 DD 66 05      [19]  519 	ld	h,5 (ix)
   4B27 DD 6E 04      [19]  520 	ld	l,4 (ix)
   4B2A E5            [11]  521 	push	hl
   4B2B CD EF 47      [17]  522 	call	_windowInfoTile
   4B2E F1            [10]  523 	pop	af
   4B2F D1            [10]  524 	pop	de
   4B30 18 51         [12]  525 	jr	00118$
   4B32                     526 00115$:
                            527 ;src/game/game.c:103: else if(menuChoice==1)
   4B32 7A            [ 4]  528 	ld	a,d
   4B33 3D            [ 4]  529 	dec	a
   4B34 20 09         [12]  530 	jr	NZ,00112$
                            531 ;src/game/game.c:105: CURSOR_MODE=T_REW;
   4B36 21 FF 89      [10]  532 	ld	hl,#_CURSOR_MODE + 0
   4B39 36 07         [10]  533 	ld	(hl), #0x07
                            534 ;src/game/game.c:106: menuChoice=6;
   4B3B 16 06         [ 7]  535 	ld	d,#0x06
   4B3D 18 44         [12]  536 	jr	00118$
   4B3F                     537 00112$:
                            538 ;src/game/game.c:108: else if(menuChoice==2)
   4B3F 7A            [ 4]  539 	ld	a,d
   4B40 D6 02         [ 7]  540 	sub	a, #0x02
   4B42 20 07         [12]  541 	jr	NZ,00109$
                            542 ;src/game/game.c:110: menuStations();
   4B44 CD E7 49      [17]  543 	call	_menuStations
                            544 ;src/game/game.c:111: menuChoice=6;
   4B47 16 06         [ 7]  545 	ld	d,#0x06
   4B49 18 38         [12]  546 	jr	00118$
   4B4B                     547 00109$:
                            548 ;src/game/game.c:113: else if(menuChoice==3)
   4B4B 7A            [ 4]  549 	ld	a,d
   4B4C D6 03         [ 7]  550 	sub	a, #0x03
   4B4E 20 29         [12]  551 	jr	NZ,00106$
                            552 ;src/game/game.c:115: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   4B50 DD 5E FE      [19]  553 	ld	e,-2 (ix)
   4B53 DD 56 FF      [19]  554 	ld	d,-1 (ix)
   4B56 21 03 01      [10]  555 	ld	hl,#0x0103
   4B59 E5            [11]  556 	push	hl
   4B5A D5            [11]  557 	push	de
   4B5B CD D1 5F      [17]  558 	call	_drawWindow
   4B5E F1            [10]  559 	pop	af
   4B5F F1            [10]  560 	pop	af
   4B60 2D            [ 4]  561 	dec	l
   4B61 20 12         [12]  562 	jr	NZ,00102$
                            563 ;src/game/game.c:116: p_world[x+y*WIDTH] = GRASS1;
   4B63 DD 6E 04      [19]  564 	ld	l,4 (ix)
   4B66 26 00         [ 7]  565 	ld	h,#0x00
   4B68 DD 5E FA      [19]  566 	ld	e,-6 (ix)
   4B6B DD 56 FB      [19]  567 	ld	d,-5 (ix)
   4B6E 19            [11]  568 	add	hl,de
   4B6F 11 FB 7A      [10]  569 	ld	de,#_p_world
   4B72 19            [11]  570 	add	hl,de
   4B73 36 00         [10]  571 	ld	(hl),#0x00
   4B75                     572 00102$:
                            573 ;src/game/game.c:118: menuChoice=6;
   4B75 16 06         [ 7]  574 	ld	d,#0x06
   4B77 18 0A         [12]  575 	jr	00118$
   4B79                     576 00106$:
                            577 ;src/game/game.c:120: else if(menuChoice==4)
   4B79 7A            [ 4]  578 	ld	a,d
   4B7A D6 04         [ 7]  579 	sub	a, #0x04
   4B7C 20 05         [12]  580 	jr	NZ,00118$
                            581 ;src/game/game.c:122: railroadDepot();
   4B7E CD 6E 41      [17]  582 	call	_railroadDepot
                            583 ;src/game/game.c:123: menuChoice=6;
   4B81 16 06         [ 7]  584 	ld	d,#0x06
   4B83                     585 00118$:
                            586 ;src/game/game.c:128: while(menuChoice!=6);
   4B83 7A            [ 4]  587 	ld	a,d
   4B84 D6 06         [ 7]  588 	sub	a, #0x06
   4B86 20 86         [12]  589 	jr	NZ,00117$
                            590 ;src/game/game.c:130: putM1();
   4B88 CD B9 5A      [17]  591 	call	_putM1
   4B8B DD F9         [10]  592 	ld	sp, ix
   4B8D DD E1         [14]  593 	pop	ix
   4B8F C9            [10]  594 	ret
   4B90                     595 ___str_18:
   4B90 41 62 6F 75 74 20   596 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   4B9F 00                  597 	.db 0x00
   4BA0                     598 ___str_19:
   4BA0 42 75 69 6C 64 20   599 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   4BAF 00                  600 	.db 0x00
   4BB0                     601 ___str_20:
   4BB0 42 75 69 6C 64 20   602 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   4BBF 00                  603 	.db 0x00
   4BC0                     604 ___str_21:
   4BC0 44 65 73 74 72 6F   605 	.ascii "Destroy"
        79
   4BC7 00                  606 	.db 0x00
   4BC8                     607 ___str_22:
   4BC8 52 61 69 6C 72 6F   608 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   4BD6 00                  609 	.db 0x00
   4BD7                     610 ___str_23:
   4BD7 41 63 63 6F 75 6E   611 	.ascii "Accounting"
        74 69 6E 67
   4BE1 00                  612 	.db 0x00
   4BE2                     613 ___str_24:
   4BE2 52 65 73 75 6D 65   614 	.ascii "Resume"
   4BE8 00                  615 	.db 0x00
   4BE9                     616 ___str_25:
   4BE9 44 65 73 74 72 6F   617 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   4C0B 00                  618 	.db 0x00
   4C0C                     619 ___str_26:
   4C0C 00                  620 	.db 0x00
   4C0D                     621 ___str_27:
   4C0D 43 6F 6E 74 69 6E   622 	.ascii "Continue ?"
        75 65 20 3F
   4C17 00                  623 	.db 0x00
                            624 ;src/game/game.c:134: void game()
                            625 ;	---------------------------------
                            626 ; Function game
                            627 ; ---------------------------------
   4C18                     628 _game::
   4C18 DD E5         [15]  629 	push	ix
   4C1A DD 21 00 00   [14]  630 	ld	ix,#0
   4C1E DD 39         [15]  631 	add	ix,sp
   4C20 21 EA FF      [10]  632 	ld	hl,#-22
   4C23 39            [11]  633 	add	hl,sp
   4C24 F9            [ 6]  634 	ld	sp,hl
                            635 ;src/game/game.c:137: int ulx = 0;
   4C25 DD 36 F4 00   [19]  636 	ld	-12 (ix),#0x00
   4C29 DD 36 F5 00   [19]  637 	ld	-11 (ix),#0x00
                            638 ;src/game/game.c:138: int uly = 0;
   4C2D DD 36 F2 00   [19]  639 	ld	-14 (ix),#0x00
   4C31 DD 36 F3 00   [19]  640 	ld	-13 (ix),#0x00
                            641 ;src/game/game.c:139: int xCursor = 10;
   4C35 DD 36 F0 0A   [19]  642 	ld	-16 (ix),#0x0A
   4C39 DD 36 F1 00   [19]  643 	ld	-15 (ix),#0x00
                            644 ;src/game/game.c:140: int yCursor = 6;
   4C3D DD 36 F9 06   [19]  645 	ld	-7 (ix),#0x06
   4C41 DD 36 FA 00   [19]  646 	ld	-6 (ix),#0x00
                            647 ;src/game/game.c:142: u8 exit=0;
   4C45 DD 36 F6 00   [19]  648 	ld	-10 (ix),#0x00
                            649 ;src/game/game.c:144: locDelocked = 4;
   4C49 21 00 8A      [10]  650 	ld	hl,#_locDelocked + 0
   4C4C 36 04         [10]  651 	ld	(hl), #0x04
                            652 ;src/game/game.c:146: drawBoxM2(50, 50);
   4C4E 21 32 00      [10]  653 	ld	hl,#0x0032
   4C51 E5            [11]  654 	push	hl
   4C52 2E 32         [ 7]  655 	ld	l, #0x32
   4C54 E5            [11]  656 	push	hl
   4C55 CD 09 5C      [17]  657 	call	_drawBoxM2
   4C58 F1            [10]  658 	pop	af
                            659 ;src/game/game.c:147: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   4C59 21 20 5F      [10]  660 	ld	hl, #0x5F20
   4C5C E3            [19]  661 	ex	(sp),hl
   4C5D 21 00 C0      [10]  662 	ld	hl,#0xC000
   4C60 E5            [11]  663 	push	hl
   4C61 CD 0B 7A      [17]  664 	call	_cpct_getScreenPtr
                            665 ;src/game/game.c:148: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   4C64 4D            [ 4]  666 	ld	c, l
   4C65 44            [ 4]  667 	ld	b, h
   4C66 11 05 51      [10]  668 	ld	de,#___str_31
   4C69 AF            [ 4]  669 	xor	a, a
   4C6A F5            [11]  670 	push	af
   4C6B 33            [ 6]  671 	inc	sp
   4C6C C5            [11]  672 	push	bc
   4C6D D5            [11]  673 	push	de
   4C6E CD BC 73      [17]  674 	call	_cpct_drawStringM2
   4C71 F1            [10]  675 	pop	af
   4C72 F1            [10]  676 	pop	af
   4C73 33            [ 6]  677 	inc	sp
                            678 ;src/game/game.c:150: generateWorld();
   4C74 CD 4B 54      [17]  679 	call	_generateWorld
                            680 ;src/game/game.c:152: putM1();
   4C77 CD B9 5A      [17]  681 	call	_putM1
                            682 ;src/game/game.c:153: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   4C7A 21 00 00      [10]  683 	ld	hl,#0x0000
   4C7D E5            [11]  684 	push	hl
   4C7E 2E 00         [ 7]  685 	ld	l, #0x00
   4C80 E5            [11]  686 	push	hl
   4C81 CD E5 78      [17]  687 	call	_cpct_px2byteM1
   4C84 F1            [10]  688 	pop	af
   4C85 F1            [10]  689 	pop	af
   4C86 65            [ 4]  690 	ld	h,l
   4C87 01 00 40      [10]  691 	ld	bc,#0x4000
   4C8A C5            [11]  692 	push	bc
   4C8B E5            [11]  693 	push	hl
   4C8C 33            [ 6]  694 	inc	sp
   4C8D 21 00 C0      [10]  695 	ld	hl,#0xC000
   4C90 E5            [11]  696 	push	hl
   4C91 CD D7 78      [17]  697 	call	_cpct_memset
                            698 ;src/game/game.c:154: drawWorld(ulx, uly);
   4C94 21 00 00      [10]  699 	ld	hl,#0x0000
   4C97 E5            [11]  700 	push	hl
   4C98 CD 6D 5A      [17]  701 	call	_drawWorld
   4C9B F1            [10]  702 	pop	af
                            703 ;src/game/game.c:156: do{
   4C9C                     704 00181$:
                            705 ;src/game/game.c:157: cpct_scanKeyboard(); 
   4C9C CD 2B 7A      [17]  706 	call	_cpct_scanKeyboard
                            707 ;src/game/game.c:159: if ( cpct_isKeyPressed(Key_CursorUp) )
   4C9F 21 00 01      [10]  708 	ld	hl,#0x0100
   4CA2 CD 85 73      [17]  709 	call	_cpct_isKeyPressed
   4CA5 DD 75 FD      [19]  710 	ld	-3 (ix),l
                            711 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4CA8 DD 7E F9      [19]  712 	ld	a,-7 (ix)
   4CAB DD 77 FE      [19]  713 	ld	-2 (ix),a
   4CAE DD 7E F0      [19]  714 	ld	a,-16 (ix)
   4CB1 DD 77 FC      [19]  715 	ld	-4 (ix),a
   4CB4 DD 7E F2      [19]  716 	ld	a,-14 (ix)
   4CB7 DD 77 FB      [19]  717 	ld	-5 (ix),a
   4CBA DD 7E F4      [19]  718 	ld	a,-12 (ix)
   4CBD DD 77 FF      [19]  719 	ld	-1 (ix),a
                            720 ;src/game/game.c:159: if ( cpct_isKeyPressed(Key_CursorUp) )
   4CC0 DD 7E FD      [19]  721 	ld	a,-3 (ix)
   4CC3 B7            [ 4]  722 	or	a, a
   4CC4 CA 46 4D      [10]  723 	jp	Z,00179$
                            724 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4CC7 DD 7E FE      [19]  725 	ld	a,-2 (ix)
   4CCA F5            [11]  726 	push	af
   4CCB 33            [ 6]  727 	inc	sp
   4CCC DD 7E FC      [19]  728 	ld	a,-4 (ix)
   4CCF F5            [11]  729 	push	af
   4CD0 33            [ 6]  730 	inc	sp
   4CD1 DD 7E FB      [19]  731 	ld	a,-5 (ix)
   4CD4 F5            [11]  732 	push	af
   4CD5 33            [ 6]  733 	inc	sp
   4CD6 DD 7E FF      [19]  734 	ld	a,-1 (ix)
   4CD9 F5            [11]  735 	push	af
   4CDA 33            [ 6]  736 	inc	sp
   4CDB CD AC 57      [17]  737 	call	_drawTile
   4CDE F1            [10]  738 	pop	af
   4CDF F1            [10]  739 	pop	af
                            740 ;src/game/game.c:163: yCursor-=1;
   4CE0 DD 6E F9      [19]  741 	ld	l,-7 (ix)
   4CE3 DD 66 FA      [19]  742 	ld	h,-6 (ix)
   4CE6 2B            [ 6]  743 	dec	hl
   4CE7 DD 75 F9      [19]  744 	ld	-7 (ix),l
   4CEA DD 74 FA      [19]  745 	ld	-6 (ix),h
                            746 ;src/game/game.c:166: if(yCursor<0)
   4CED DD CB FA 7E   [20]  747 	bit	7, -6 (ix)
   4CF1 28 35         [12]  748 	jr	Z,00210$
                            749 ;src/game/game.c:168: yCursor=0;
   4CF3 DD 36 F9 00   [19]  750 	ld	-7 (ix),#0x00
   4CF7 DD 36 FA 00   [19]  751 	ld	-6 (ix),#0x00
                            752 ;src/game/game.c:171: if(uly>0)
   4CFB AF            [ 4]  753 	xor	a, a
   4CFC DD BE F2      [19]  754 	cp	a, -14 (ix)
   4CFF DD 9E F3      [19]  755 	sbc	a, -13 (ix)
   4D02 E2 07 4D      [10]  756 	jp	PO, 00387$
   4D05 EE 80         [ 7]  757 	xor	a, #0x80
   4D07                     758 00387$:
   4D07 F2 28 4D      [10]  759 	jp	P,00210$
                            760 ;src/game/game.c:173: uly-=1;
   4D0A DD 6E F2      [19]  761 	ld	l,-14 (ix)
   4D0D DD 66 F3      [19]  762 	ld	h,-13 (ix)
   4D10 2B            [ 6]  763 	dec	hl
   4D11 DD 75 F2      [19]  764 	ld	-14 (ix),l
   4D14 DD 74 F3      [19]  765 	ld	-13 (ix),h
                            766 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4D17 DD 7E F2      [19]  767 	ld	a,-14 (ix)
                            768 ;src/game/game.c:174: drawWorld(ulx, uly);
   4D1A DD 77 FB      [19]  769 	ld	-5 (ix), a
   4D1D F5            [11]  770 	push	af
   4D1E 33            [ 6]  771 	inc	sp
   4D1F DD 7E FF      [19]  772 	ld	a,-1 (ix)
   4D22 F5            [11]  773 	push	af
   4D23 33            [ 6]  774 	inc	sp
   4D24 CD 6D 5A      [17]  775 	call	_drawWorld
   4D27 F1            [10]  776 	pop	af
                            777 ;src/game/game.c:179: for(i=0; i<5000; i++) {}
   4D28                     778 00210$:
   4D28 DD 36 F7 88   [19]  779 	ld	-9 (ix),#0x88
   4D2C DD 36 F8 13   [19]  780 	ld	-8 (ix),#0x13
   4D30                     781 00186$:
   4D30 DD 6E F7      [19]  782 	ld	l,-9 (ix)
   4D33 DD 66 F8      [19]  783 	ld	h,-8 (ix)
   4D36 2B            [ 6]  784 	dec	hl
   4D37 DD 75 F7      [19]  785 	ld	-9 (ix),l
   4D3A DD 74 F8      [19]  786 	ld	-8 (ix), h
   4D3D 7C            [ 4]  787 	ld	a, h
   4D3E DD B6 F7      [19]  788 	or	a,-9 (ix)
   4D41 20 ED         [12]  789 	jr	NZ,00186$
   4D43 C3 A4 50      [10]  790 	jp	00180$
   4D46                     791 00179$:
                            792 ;src/game/game.c:182: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4D46 21 00 04      [10]  793 	ld	hl,#0x0400
   4D49 CD 85 73      [17]  794 	call	_cpct_isKeyPressed
   4D4C 7D            [ 4]  795 	ld	a,l
   4D4D B7            [ 4]  796 	or	a, a
   4D4E CA D2 4D      [10]  797 	jp	Z,00176$
                            798 ;src/game/game.c:184: drawTile(ulx, uly, xCursor, yCursor);
   4D51 DD 7E FE      [19]  799 	ld	a,-2 (ix)
   4D54 F5            [11]  800 	push	af
   4D55 33            [ 6]  801 	inc	sp
   4D56 DD 7E FC      [19]  802 	ld	a,-4 (ix)
   4D59 F5            [11]  803 	push	af
   4D5A 33            [ 6]  804 	inc	sp
   4D5B DD 7E FB      [19]  805 	ld	a,-5 (ix)
   4D5E F5            [11]  806 	push	af
   4D5F 33            [ 6]  807 	inc	sp
   4D60 DD 7E FF      [19]  808 	ld	a,-1 (ix)
   4D63 F5            [11]  809 	push	af
   4D64 33            [ 6]  810 	inc	sp
   4D65 CD AC 57      [17]  811 	call	_drawTile
   4D68 F1            [10]  812 	pop	af
   4D69 F1            [10]  813 	pop	af
                            814 ;src/game/game.c:185: yCursor+=1;
   4D6A DD 34 F9      [23]  815 	inc	-7 (ix)
   4D6D 20 03         [12]  816 	jr	NZ,00388$
   4D6F DD 34 FA      [23]  817 	inc	-6 (ix)
   4D72                     818 00388$:
                            819 ;src/game/game.c:186: if(yCursor>NBTILE_H-1)
   4D72 3E 0B         [ 7]  820 	ld	a,#0x0B
   4D74 DD BE F9      [19]  821 	cp	a, -7 (ix)
   4D77 3E 00         [ 7]  822 	ld	a,#0x00
   4D79 DD 9E FA      [19]  823 	sbc	a, -6 (ix)
   4D7C E2 81 4D      [10]  824 	jp	PO, 00389$
   4D7F EE 80         [ 7]  825 	xor	a, #0x80
   4D81                     826 00389$:
   4D81 F2 B4 4D      [10]  827 	jp	P,00215$
                            828 ;src/game/game.c:188: yCursor=NBTILE_H-1;
   4D84 DD 36 F9 0B   [19]  829 	ld	-7 (ix),#0x0B
   4D88 DD 36 FA 00   [19]  830 	ld	-6 (ix),#0x00
                            831 ;src/game/game.c:189: if(uly<HEIGHT-NBTILE_H)
   4D8C DD 7E F2      [19]  832 	ld	a,-14 (ix)
   4D8F D6 24         [ 7]  833 	sub	a, #0x24
   4D91 DD 7E F3      [19]  834 	ld	a,-13 (ix)
   4D94 17            [ 4]  835 	rla
   4D95 3F            [ 4]  836 	ccf
   4D96 1F            [ 4]  837 	rra
   4D97 DE 80         [ 7]  838 	sbc	a, #0x80
   4D99 30 19         [12]  839 	jr	NC,00215$
                            840 ;src/game/game.c:191: uly+=1;
   4D9B DD 34 F2      [23]  841 	inc	-14 (ix)
   4D9E 20 03         [12]  842 	jr	NZ,00390$
   4DA0 DD 34 F3      [23]  843 	inc	-13 (ix)
   4DA3                     844 00390$:
                            845 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4DA3 DD 7E F2      [19]  846 	ld	a,-14 (ix)
                            847 ;src/game/game.c:192: drawWorld(ulx, uly);
   4DA6 DD 77 FB      [19]  848 	ld	-5 (ix), a
   4DA9 F5            [11]  849 	push	af
   4DAA 33            [ 6]  850 	inc	sp
   4DAB DD 7E FF      [19]  851 	ld	a,-1 (ix)
   4DAE F5            [11]  852 	push	af
   4DAF 33            [ 6]  853 	inc	sp
   4DB0 CD 6D 5A      [17]  854 	call	_drawWorld
   4DB3 F1            [10]  855 	pop	af
                            856 ;src/game/game.c:197: for(i=0; i<5000; i++) {}
   4DB4                     857 00215$:
   4DB4 DD 36 F7 88   [19]  858 	ld	-9 (ix),#0x88
   4DB8 DD 36 F8 13   [19]  859 	ld	-8 (ix),#0x13
   4DBC                     860 00189$:
   4DBC DD 6E F7      [19]  861 	ld	l,-9 (ix)
   4DBF DD 66 F8      [19]  862 	ld	h,-8 (ix)
   4DC2 2B            [ 6]  863 	dec	hl
   4DC3 DD 75 F7      [19]  864 	ld	-9 (ix),l
   4DC6 DD 74 F8      [19]  865 	ld	-8 (ix), h
   4DC9 7C            [ 4]  866 	ld	a, h
   4DCA DD B6 F7      [19]  867 	or	a,-9 (ix)
   4DCD 20 ED         [12]  868 	jr	NZ,00189$
   4DCF C3 A4 50      [10]  869 	jp	00180$
   4DD2                     870 00176$:
                            871 ;src/game/game.c:200: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   4DD2 21 01 01      [10]  872 	ld	hl,#0x0101
   4DD5 CD 85 73      [17]  873 	call	_cpct_isKeyPressed
   4DD8 7D            [ 4]  874 	ld	a,l
   4DD9 B7            [ 4]  875 	or	a, a
   4DDA 28 6F         [12]  876 	jr	Z,00173$
                            877 ;src/game/game.c:202: drawTile(ulx, uly, xCursor, yCursor);
   4DDC DD 7E FE      [19]  878 	ld	a,-2 (ix)
   4DDF F5            [11]  879 	push	af
   4DE0 33            [ 6]  880 	inc	sp
   4DE1 DD 7E FC      [19]  881 	ld	a,-4 (ix)
   4DE4 F5            [11]  882 	push	af
   4DE5 33            [ 6]  883 	inc	sp
   4DE6 DD 7E FB      [19]  884 	ld	a,-5 (ix)
   4DE9 F5            [11]  885 	push	af
   4DEA 33            [ 6]  886 	inc	sp
   4DEB DD 7E FF      [19]  887 	ld	a,-1 (ix)
   4DEE F5            [11]  888 	push	af
   4DEF 33            [ 6]  889 	inc	sp
   4DF0 CD AC 57      [17]  890 	call	_drawTile
   4DF3 F1            [10]  891 	pop	af
   4DF4 F1            [10]  892 	pop	af
                            893 ;src/game/game.c:203: xCursor-=1;
   4DF5 DD 6E F0      [19]  894 	ld	l,-16 (ix)
   4DF8 DD 66 F1      [19]  895 	ld	h,-15 (ix)
   4DFB 2B            [ 6]  896 	dec	hl
   4DFC DD 75 F0      [19]  897 	ld	-16 (ix),l
   4DFF DD 74 F1      [19]  898 	ld	-15 (ix),h
                            899 ;src/game/game.c:204: if(xCursor<0)
   4E02 DD CB F1 7E   [20]  900 	bit	7, -15 (ix)
   4E06 28 38         [12]  901 	jr	Z,00220$
                            902 ;src/game/game.c:206: xCursor=0;
   4E08 DD 36 F0 00   [19]  903 	ld	-16 (ix),#0x00
   4E0C DD 36 F1 00   [19]  904 	ld	-15 (ix),#0x00
                            905 ;src/game/game.c:207: if(ulx>0)
   4E10 AF            [ 4]  906 	xor	a, a
   4E11 DD BE F4      [19]  907 	cp	a, -12 (ix)
   4E14 DD 9E F5      [19]  908 	sbc	a, -11 (ix)
   4E17 E2 1C 4E      [10]  909 	jp	PO, 00391$
   4E1A EE 80         [ 7]  910 	xor	a, #0x80
   4E1C                     911 00391$:
   4E1C F2 40 4E      [10]  912 	jp	P,00220$
                            913 ;src/game/game.c:209: ulx-=1;
   4E1F DD 6E F4      [19]  914 	ld	l,-12 (ix)
   4E22 DD 66 F5      [19]  915 	ld	h,-11 (ix)
   4E25 2B            [ 6]  916 	dec	hl
   4E26 DD 75 F4      [19]  917 	ld	-12 (ix),l
   4E29 DD 74 F5      [19]  918 	ld	-11 (ix),h
                            919 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4E2C DD 7E F4      [19]  920 	ld	a,-12 (ix)
   4E2F DD 77 FF      [19]  921 	ld	-1 (ix),a
                            922 ;src/game/game.c:210: drawWorld(ulx, uly);
   4E32 DD 7E FB      [19]  923 	ld	a,-5 (ix)
   4E35 F5            [11]  924 	push	af
   4E36 33            [ 6]  925 	inc	sp
   4E37 DD 7E FF      [19]  926 	ld	a,-1 (ix)
   4E3A F5            [11]  927 	push	af
   4E3B 33            [ 6]  928 	inc	sp
   4E3C CD 6D 5A      [17]  929 	call	_drawWorld
   4E3F F1            [10]  930 	pop	af
                            931 ;src/game/game.c:215: for(i=0; i<14000; i++) {}
   4E40                     932 00220$:
   4E40 21 B0 36      [10]  933 	ld	hl,#0x36B0
   4E43                     934 00192$:
   4E43 2B            [ 6]  935 	dec	hl
   4E44 7C            [ 4]  936 	ld	a,h
   4E45 B5            [ 4]  937 	or	a,l
   4E46 20 FB         [12]  938 	jr	NZ,00192$
   4E48 C3 A4 50      [10]  939 	jp	00180$
   4E4B                     940 00173$:
                            941 ;src/game/game.c:218: else if ( cpct_isKeyPressed(Key_CursorRight) )
   4E4B 21 00 02      [10]  942 	ld	hl,#0x0200
   4E4E CD 85 73      [17]  943 	call	_cpct_isKeyPressed
   4E51 7D            [ 4]  944 	ld	a,l
   4E52 B7            [ 4]  945 	or	a, a
   4E53 28 71         [12]  946 	jr	Z,00170$
                            947 ;src/game/game.c:220: drawTile(ulx, uly, xCursor, yCursor);
   4E55 DD 7E FE      [19]  948 	ld	a,-2 (ix)
   4E58 F5            [11]  949 	push	af
   4E59 33            [ 6]  950 	inc	sp
   4E5A DD 7E FC      [19]  951 	ld	a,-4 (ix)
   4E5D F5            [11]  952 	push	af
   4E5E 33            [ 6]  953 	inc	sp
   4E5F DD 7E FB      [19]  954 	ld	a,-5 (ix)
   4E62 F5            [11]  955 	push	af
   4E63 33            [ 6]  956 	inc	sp
   4E64 DD 7E FF      [19]  957 	ld	a,-1 (ix)
   4E67 F5            [11]  958 	push	af
   4E68 33            [ 6]  959 	inc	sp
   4E69 CD AC 57      [17]  960 	call	_drawTile
   4E6C F1            [10]  961 	pop	af
   4E6D F1            [10]  962 	pop	af
                            963 ;src/game/game.c:221: xCursor+=1;
   4E6E DD 34 F0      [23]  964 	inc	-16 (ix)
   4E71 20 03         [12]  965 	jr	NZ,00392$
   4E73 DD 34 F1      [23]  966 	inc	-15 (ix)
   4E76                     967 00392$:
                            968 ;src/game/game.c:222: if(xCursor>NBTILE_W-1)
   4E76 3E 13         [ 7]  969 	ld	a,#0x13
   4E78 DD BE F0      [19]  970 	cp	a, -16 (ix)
   4E7B 3E 00         [ 7]  971 	ld	a,#0x00
   4E7D DD 9E F1      [19]  972 	sbc	a, -15 (ix)
   4E80 E2 85 4E      [10]  973 	jp	PO, 00393$
   4E83 EE 80         [ 7]  974 	xor	a, #0x80
   4E85                     975 00393$:
   4E85 F2 BB 4E      [10]  976 	jp	P,00225$
                            977 ;src/game/game.c:224: xCursor=NBTILE_W-1;
   4E88 DD 36 F0 13   [19]  978 	ld	-16 (ix),#0x13
   4E8C DD 36 F1 00   [19]  979 	ld	-15 (ix),#0x00
                            980 ;src/game/game.c:225: if(ulx<WIDTH-NBTILE_W)
   4E90 DD 7E F4      [19]  981 	ld	a,-12 (ix)
   4E93 D6 3C         [ 7]  982 	sub	a, #0x3C
   4E95 DD 7E F5      [19]  983 	ld	a,-11 (ix)
   4E98 17            [ 4]  984 	rla
   4E99 3F            [ 4]  985 	ccf
   4E9A 1F            [ 4]  986 	rra
   4E9B DE 80         [ 7]  987 	sbc	a, #0x80
   4E9D 30 1C         [12]  988 	jr	NC,00225$
                            989 ;src/game/game.c:227: ulx+=1;
   4E9F DD 34 F4      [23]  990 	inc	-12 (ix)
   4EA2 20 03         [12]  991 	jr	NZ,00394$
   4EA4 DD 34 F5      [23]  992 	inc	-11 (ix)
   4EA7                     993 00394$:
                            994 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4EA7 DD 7E F4      [19]  995 	ld	a,-12 (ix)
   4EAA DD 77 FF      [19]  996 	ld	-1 (ix),a
                            997 ;src/game/game.c:228: drawWorld(ulx, uly);
   4EAD DD 7E FB      [19]  998 	ld	a,-5 (ix)
   4EB0 F5            [11]  999 	push	af
   4EB1 33            [ 6] 1000 	inc	sp
   4EB2 DD 7E FF      [19] 1001 	ld	a,-1 (ix)
   4EB5 F5            [11] 1002 	push	af
   4EB6 33            [ 6] 1003 	inc	sp
   4EB7 CD 6D 5A      [17] 1004 	call	_drawWorld
   4EBA F1            [10] 1005 	pop	af
                           1006 ;src/game/game.c:233: for(i=0; i<14000; i++) {}
   4EBB                    1007 00225$:
   4EBB 21 B0 36      [10] 1008 	ld	hl,#0x36B0
   4EBE                    1009 00195$:
   4EBE 2B            [ 6] 1010 	dec	hl
   4EBF 7C            [ 4] 1011 	ld	a,h
   4EC0 B5            [ 4] 1012 	or	a,l
   4EC1 20 FB         [12] 1013 	jr	NZ,00195$
   4EC3 C3 A4 50      [10] 1014 	jp	00180$
   4EC6                    1015 00170$:
                           1016 ;src/game/game.c:237: else if ( cpct_isKeyPressed(Key_Space) )
   4EC6 21 05 80      [10] 1017 	ld	hl,#0x8005
   4EC9 CD 85 73      [17] 1018 	call	_cpct_isKeyPressed
   4ECC 7D            [ 4] 1019 	ld	a,l
   4ECD B7            [ 4] 1020 	or	a, a
   4ECE CA 4C 4F      [10] 1021 	jp	Z,00167$
                           1022 ;src/game/game.c:239: if(CURSOR_MODE==T_SSNS)
   4ED1 3A FF 89      [13] 1023 	ld	a,(#_CURSOR_MODE + 0)
   4ED4 3D            [ 4] 1024 	dec	a
   4ED5 20 07         [12] 1025 	jr	NZ,00143$
                           1026 ;src/game/game.c:240: CURSOR_MODE=T_SSEW;
   4ED7 21 FF 89      [10] 1027 	ld	hl,#_CURSOR_MODE + 0
   4EDA 36 02         [10] 1028 	ld	(hl), #0x02
   4EDC 18 63         [12] 1029 	jr	00237$
   4EDE                    1030 00143$:
                           1031 ;src/game/game.c:241: else if(CURSOR_MODE==T_SSEW)
   4EDE 3A FF 89      [13] 1032 	ld	a,(#_CURSOR_MODE + 0)
   4EE1 D6 02         [ 7] 1033 	sub	a, #0x02
   4EE3 20 07         [12] 1034 	jr	NZ,00140$
                           1035 ;src/game/game.c:242: CURSOR_MODE=T_SSNS;
   4EE5 21 FF 89      [10] 1036 	ld	hl,#_CURSOR_MODE + 0
   4EE8 36 01         [10] 1037 	ld	(hl), #0x01
   4EEA 18 55         [12] 1038 	jr	00237$
   4EEC                    1039 00140$:
                           1040 ;src/game/game.c:243: else if(CURSOR_MODE==T_SMNS)
   4EEC 3A FF 89      [13] 1041 	ld	a,(#_CURSOR_MODE + 0)
   4EEF D6 03         [ 7] 1042 	sub	a, #0x03
   4EF1 20 07         [12] 1043 	jr	NZ,00137$
                           1044 ;src/game/game.c:244: CURSOR_MODE=T_SMEW;
   4EF3 21 FF 89      [10] 1045 	ld	hl,#_CURSOR_MODE + 0
   4EF6 36 04         [10] 1046 	ld	(hl), #0x04
   4EF8 18 47         [12] 1047 	jr	00237$
   4EFA                    1048 00137$:
                           1049 ;src/game/game.c:245: else if(CURSOR_MODE==T_SMEW)
   4EFA 3A FF 89      [13] 1050 	ld	a,(#_CURSOR_MODE + 0)
   4EFD D6 04         [ 7] 1051 	sub	a, #0x04
   4EFF 20 07         [12] 1052 	jr	NZ,00134$
                           1053 ;src/game/game.c:246: CURSOR_MODE=T_SMNS;
   4F01 21 FF 89      [10] 1054 	ld	hl,#_CURSOR_MODE + 0
   4F04 36 03         [10] 1055 	ld	(hl), #0x03
   4F06 18 39         [12] 1056 	jr	00237$
   4F08                    1057 00134$:
                           1058 ;src/game/game.c:247: else if(CURSOR_MODE==T_SLNS)
   4F08 3A FF 89      [13] 1059 	ld	a,(#_CURSOR_MODE + 0)
   4F0B D6 05         [ 7] 1060 	sub	a, #0x05
   4F0D 20 07         [12] 1061 	jr	NZ,00131$
                           1062 ;src/game/game.c:248: CURSOR_MODE=T_SLEW;
   4F0F 21 FF 89      [10] 1063 	ld	hl,#_CURSOR_MODE + 0
   4F12 36 06         [10] 1064 	ld	(hl), #0x06
   4F14 18 2B         [12] 1065 	jr	00237$
   4F16                    1066 00131$:
                           1067 ;src/game/game.c:249: else if(CURSOR_MODE==T_SLEW)
   4F16 3A FF 89      [13] 1068 	ld	a,(#_CURSOR_MODE + 0)
   4F19 D6 06         [ 7] 1069 	sub	a, #0x06
   4F1B 20 07         [12] 1070 	jr	NZ,00128$
                           1071 ;src/game/game.c:250: CURSOR_MODE=T_SLNS;
   4F1D 21 FF 89      [10] 1072 	ld	hl,#_CURSOR_MODE + 0
   4F20 36 05         [10] 1073 	ld	(hl), #0x05
   4F22 18 1D         [12] 1074 	jr	00237$
   4F24                    1075 00128$:
                           1076 ;src/game/game.c:251: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   4F24 3A FF 89      [13] 1077 	ld	a,(#_CURSOR_MODE + 0)
   4F27 FE 07         [ 7] 1078 	cp	a,#0x07
   4F29 38 0A         [12] 1079 	jr	C,00124$
   4F2B D6 10         [ 7] 1080 	sub	a, #0x10
   4F2D 30 06         [12] 1081 	jr	NC,00124$
                           1082 ;src/game/game.c:252: CURSOR_MODE+=1;
   4F2F 21 FF 89      [10] 1083 	ld	hl, #_CURSOR_MODE+0
   4F32 34            [11] 1084 	inc	(hl)
   4F33 18 0C         [12] 1085 	jr	00237$
   4F35                    1086 00124$:
                           1087 ;src/game/game.c:253: else if(CURSOR_MODE==T_RNSW)
   4F35 3A FF 89      [13] 1088 	ld	a,(#_CURSOR_MODE + 0)
   4F38 D6 10         [ 7] 1089 	sub	a, #0x10
   4F3A 20 05         [12] 1090 	jr	NZ,00237$
                           1091 ;src/game/game.c:254: CURSOR_MODE=T_REW;
   4F3C 21 FF 89      [10] 1092 	ld	hl,#_CURSOR_MODE + 0
   4F3F 36 07         [10] 1093 	ld	(hl), #0x07
                           1094 ;src/game/game.c:256: for(i=0; i<14000; i++) {}
   4F41                    1095 00237$:
   4F41 21 B0 36      [10] 1096 	ld	hl,#0x36B0
   4F44                    1097 00198$:
   4F44 2B            [ 6] 1098 	dec	hl
   4F45 7C            [ 4] 1099 	ld	a,h
   4F46 B5            [ 4] 1100 	or	a,l
   4F47 20 FB         [12] 1101 	jr	NZ,00198$
   4F49 C3 A4 50      [10] 1102 	jp	00180$
   4F4C                    1103 00167$:
                           1104 ;src/game/game.c:259: else if ( cpct_isKeyPressed(Key_Esc) )
   4F4C 21 08 04      [10] 1105 	ld	hl,#0x0408
   4F4F CD 85 73      [17] 1106 	call	_cpct_isKeyPressed
   4F52 7D            [ 4] 1107 	ld	a,l
   4F53 B7            [ 4] 1108 	or	a, a
   4F54 CA EB 4F      [10] 1109 	jp	Z,00164$
                           1110 ;src/game/game.c:262: if(CURSOR_MODE==NONE)
   4F57 3A FF 89      [13] 1111 	ld	a,(#_CURSOR_MODE + 0)
   4F5A B7            [ 4] 1112 	or	a, a
   4F5B 20 62         [12] 1113 	jr	NZ,00150$
                           1114 ;src/game/game.c:265: const char *txtWindowQuit[] = { 
   4F5D 21 00 00      [10] 1115 	ld	hl,#0x0000
   4F60 39            [11] 1116 	add	hl,sp
   4F61 5D            [ 4] 1117 	ld	e,l
   4F62 54            [ 4] 1118 	ld	d,h
   4F63 36 D0         [10] 1119 	ld	(hl),#<(___str_28)
   4F65 23            [ 6] 1120 	inc	hl
   4F66 36 50         [10] 1121 	ld	(hl),#>(___str_28)
   4F68 6B            [ 4] 1122 	ld	l, e
   4F69 62            [ 4] 1123 	ld	h, d
   4F6A 23            [ 6] 1124 	inc	hl
   4F6B 23            [ 6] 1125 	inc	hl
   4F6C 36 DE         [10] 1126 	ld	(hl),#<(___str_29)
   4F6E 23            [ 6] 1127 	inc	hl
   4F6F 36 50         [10] 1128 	ld	(hl),#>(___str_29)
   4F71 21 04 00      [10] 1129 	ld	hl,#0x0004
   4F74 19            [11] 1130 	add	hl,de
   4F75 36 DF         [10] 1131 	ld	(hl),#<(___str_30)
   4F77 23            [ 6] 1132 	inc	hl
   4F78 36 50         [10] 1133 	ld	(hl),#>(___str_30)
                           1134 ;src/game/game.c:271: putM2();
   4F7A D5            [11] 1135 	push	de
   4F7B CD CD 5A      [17] 1136 	call	_putM2
   4F7E D1            [10] 1137 	pop	de
                           1138 ;src/game/game.c:272: if(	drawWindow(txtWindowQuit,3,1) == 1)
   4F7F 21 03 01      [10] 1139 	ld	hl,#0x0103
   4F82 E5            [11] 1140 	push	hl
   4F83 D5            [11] 1141 	push	de
   4F84 CD D1 5F      [17] 1142 	call	_drawWindow
   4F87 F1            [10] 1143 	pop	af
   4F88 F1            [10] 1144 	pop	af
   4F89 2D            [ 4] 1145 	dec	l
   4F8A 20 06         [12] 1146 	jr	NZ,00147$
                           1147 ;src/game/game.c:273: exit=1;
   4F8C DD 36 F6 01   [19] 1148 	ld	-10 (ix),#0x01
   4F90 18 4E         [12] 1149 	jr	00242$
   4F92                    1150 00147$:
                           1151 ;src/game/game.c:276: putM1();
   4F92 CD B9 5A      [17] 1152 	call	_putM1
                           1153 ;src/game/game.c:277: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   4F95 21 00 00      [10] 1154 	ld	hl,#0x0000
   4F98 E5            [11] 1155 	push	hl
   4F99 2E 00         [ 7] 1156 	ld	l, #0x00
   4F9B E5            [11] 1157 	push	hl
   4F9C CD E5 78      [17] 1158 	call	_cpct_px2byteM1
   4F9F F1            [10] 1159 	pop	af
   4FA0 F1            [10] 1160 	pop	af
   4FA1 65            [ 4] 1161 	ld	h,l
   4FA2 01 00 40      [10] 1162 	ld	bc,#0x4000
   4FA5 C5            [11] 1163 	push	bc
   4FA6 E5            [11] 1164 	push	hl
   4FA7 33            [ 6] 1165 	inc	sp
   4FA8 21 00 C0      [10] 1166 	ld	hl,#0xC000
   4FAB E5            [11] 1167 	push	hl
   4FAC CD D7 78      [17] 1168 	call	_cpct_memset
                           1169 ;src/game/game.c:278: drawWorld(ulx, uly);
   4FAF DD 7E FB      [19] 1170 	ld	a,-5 (ix)
   4FB2 F5            [11] 1171 	push	af
   4FB3 33            [ 6] 1172 	inc	sp
   4FB4 DD 7E FF      [19] 1173 	ld	a,-1 (ix)
   4FB7 F5            [11] 1174 	push	af
   4FB8 33            [ 6] 1175 	inc	sp
   4FB9 CD 6D 5A      [17] 1176 	call	_drawWorld
   4FBC F1            [10] 1177 	pop	af
   4FBD 18 21         [12] 1178 	jr	00242$
   4FBF                    1179 00150$:
                           1180 ;src/game/game.c:283: CURSOR_MODE=NONE;
   4FBF FD 21 FF 89   [14] 1181 	ld	iy,#_CURSOR_MODE
   4FC3 FD 36 00 00   [19] 1182 	ld	0 (iy),#0x00
                           1183 ;src/game/game.c:284: drawTile(ulx, uly, xCursor, yCursor);
   4FC7 DD 7E FE      [19] 1184 	ld	a,-2 (ix)
   4FCA F5            [11] 1185 	push	af
   4FCB 33            [ 6] 1186 	inc	sp
   4FCC DD 7E FC      [19] 1187 	ld	a,-4 (ix)
   4FCF F5            [11] 1188 	push	af
   4FD0 33            [ 6] 1189 	inc	sp
   4FD1 DD 7E FB      [19] 1190 	ld	a,-5 (ix)
   4FD4 F5            [11] 1191 	push	af
   4FD5 33            [ 6] 1192 	inc	sp
   4FD6 DD 7E FF      [19] 1193 	ld	a,-1 (ix)
   4FD9 F5            [11] 1194 	push	af
   4FDA 33            [ 6] 1195 	inc	sp
   4FDB CD AC 57      [17] 1196 	call	_drawTile
   4FDE F1            [10] 1197 	pop	af
   4FDF F1            [10] 1198 	pop	af
                           1199 ;src/game/game.c:288: for(i=0; i<14000; i++) {}
   4FE0                    1200 00242$:
   4FE0 01 B0 36      [10] 1201 	ld	bc,#0x36B0
   4FE3                    1202 00201$:
   4FE3 0B            [ 6] 1203 	dec	bc
   4FE4 78            [ 4] 1204 	ld	a,b
   4FE5 B1            [ 4] 1205 	or	a,c
   4FE6 20 FB         [12] 1206 	jr	NZ,00201$
   4FE8 C3 A4 50      [10] 1207 	jp	00180$
   4FEB                    1208 00164$:
                           1209 ;src/game/game.c:291: else if ( cpct_isKeyPressed(Key_Return) )
   4FEB 21 02 04      [10] 1210 	ld	hl,#0x0402
   4FEE CD 85 73      [17] 1211 	call	_cpct_isKeyPressed
   4FF1 7D            [ 4] 1212 	ld	a,l
   4FF2 B7            [ 4] 1213 	or	a, a
   4FF3 CA A4 50      [10] 1214 	jp	Z,00180$
                           1215 ;src/game/game.c:294: if(CURSOR_MODE==NONE)
   4FF6 3A FF 89      [13] 1216 	ld	a,(#_CURSOR_MODE + 0)
   4FF9 B7            [ 4] 1217 	or	a, a
   4FFA 20 42         [12] 1218 	jr	NZ,00158$
                           1219 ;src/game/game.c:296: menuTile(ulx+xCursor, uly+yCursor);
   4FFC DD 7E F2      [19] 1220 	ld	a, -14 (ix)
   4FFF DD 6E F9      [19] 1221 	ld	l, -7 (ix)
   5002 85            [ 4] 1222 	add	a, l
   5003 67            [ 4] 1223 	ld	h,a
   5004 DD 6E F4      [19] 1224 	ld	l,-12 (ix)
   5007 DD 56 F0      [19] 1225 	ld	d,-16 (ix)
   500A 7D            [ 4] 1226 	ld	a,l
   500B 82            [ 4] 1227 	add	a, d
   500C E5            [11] 1228 	push	hl
   500D 33            [ 6] 1229 	inc	sp
   500E F5            [11] 1230 	push	af
   500F 33            [ 6] 1231 	inc	sp
   5010 CD 5C 4A      [17] 1232 	call	_menuTile
   5013 F1            [10] 1233 	pop	af
                           1234 ;src/game/game.c:297: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5014 21 00 00      [10] 1235 	ld	hl,#0x0000
   5017 E5            [11] 1236 	push	hl
   5018 2E 00         [ 7] 1237 	ld	l, #0x00
   501A E5            [11] 1238 	push	hl
   501B CD E5 78      [17] 1239 	call	_cpct_px2byteM1
   501E F1            [10] 1240 	pop	af
   501F F1            [10] 1241 	pop	af
   5020 65            [ 4] 1242 	ld	h,l
   5021 01 00 40      [10] 1243 	ld	bc,#0x4000
   5024 C5            [11] 1244 	push	bc
   5025 E5            [11] 1245 	push	hl
   5026 33            [ 6] 1246 	inc	sp
   5027 21 00 C0      [10] 1247 	ld	hl,#0xC000
   502A E5            [11] 1248 	push	hl
   502B CD D7 78      [17] 1249 	call	_cpct_memset
                           1250 ;src/game/game.c:298: drawWorld(ulx, uly);
   502E DD 7E FB      [19] 1251 	ld	a,-5 (ix)
   5031 F5            [11] 1252 	push	af
   5032 33            [ 6] 1253 	inc	sp
   5033 DD 7E FF      [19] 1254 	ld	a,-1 (ix)
   5036 F5            [11] 1255 	push	af
   5037 33            [ 6] 1256 	inc	sp
   5038 CD 6D 5A      [17] 1257 	call	_drawWorld
   503B F1            [10] 1258 	pop	af
   503C 18 4B         [12] 1259 	jr	00248$
   503E                    1260 00158$:
                           1261 ;src/game/game.c:301: else if(CURSOR_MODE>=T_SSNS)
   503E 3A FF 89      [13] 1262 	ld	a,(#_CURSOR_MODE + 0)
   5041 D6 01         [ 7] 1263 	sub	a, #0x01
   5043 38 44         [12] 1264 	jr	C,00248$
                           1265 ;src/game/game.c:303: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   5045 DD 7E F4      [19] 1266 	ld	a,-12 (ix)
   5048 DD 86 F0      [19] 1267 	add	a, -16 (ix)
   504B 5F            [ 4] 1268 	ld	e,a
   504C DD 7E F5      [19] 1269 	ld	a,-11 (ix)
   504F DD 8E F1      [19] 1270 	adc	a, -15 (ix)
   5052 57            [ 4] 1271 	ld	d,a
   5053 DD 7E F2      [19] 1272 	ld	a,-14 (ix)
   5056 DD 86 F9      [19] 1273 	add	a, -7 (ix)
   5059 6F            [ 4] 1274 	ld	l,a
   505A DD 7E F3      [19] 1275 	ld	a,-13 (ix)
   505D DD 8E FA      [19] 1276 	adc	a, -6 (ix)
   5060 67            [ 4] 1277 	ld	h,a
   5061 4D            [ 4] 1278 	ld	c, l
   5062 44            [ 4] 1279 	ld	b, h
   5063 29            [11] 1280 	add	hl, hl
   5064 29            [11] 1281 	add	hl, hl
   5065 09            [11] 1282 	add	hl, bc
   5066 29            [11] 1283 	add	hl, hl
   5067 29            [11] 1284 	add	hl, hl
   5068 29            [11] 1285 	add	hl, hl
   5069 29            [11] 1286 	add	hl, hl
   506A 19            [11] 1287 	add	hl,de
   506B 3E FB         [ 7] 1288 	ld	a,#<(_p_world)
   506D 85            [ 4] 1289 	add	a, l
   506E 5F            [ 4] 1290 	ld	e,a
   506F 3E 7A         [ 7] 1291 	ld	a,#>(_p_world)
   5071 8C            [ 4] 1292 	adc	a, h
   5072 57            [ 4] 1293 	ld	d,a
   5073 3A FF 89      [13] 1294 	ld	a,(#_CURSOR_MODE + 0)
   5076 C6 09         [ 7] 1295 	add	a, #0x09
   5078 12            [ 7] 1296 	ld	(de),a
                           1297 ;src/game/game.c:306: if(CURSOR_MODE<=T_SLEW)
   5079 3E 06         [ 7] 1298 	ld	a,#0x06
   507B FD 21 FF 89   [14] 1299 	ld	iy,#_CURSOR_MODE
   507F FD 96 00      [19] 1300 	sub	a, 0 (iy)
   5082 38 05         [12] 1301 	jr	C,00248$
                           1302 ;src/game/game.c:307: CURSOR_MODE=NONE;
   5084 21 FF 89      [10] 1303 	ld	hl,#_CURSOR_MODE + 0
   5087 36 00         [10] 1304 	ld	(hl), #0x00
                           1305 ;src/game/game.c:311: for(i=0; i<14000; i++) {}
   5089                    1306 00248$:
   5089 DD 36 F7 B0   [19] 1307 	ld	-9 (ix),#0xB0
   508D DD 36 F8 36   [19] 1308 	ld	-8 (ix),#0x36
   5091                    1309 00204$:
   5091 DD 6E F7      [19] 1310 	ld	l,-9 (ix)
   5094 DD 66 F8      [19] 1311 	ld	h,-8 (ix)
   5097 2B            [ 6] 1312 	dec	hl
   5098 DD 75 F7      [19] 1313 	ld	-9 (ix),l
   509B DD 74 F8      [19] 1314 	ld	-8 (ix), h
   509E 7C            [ 4] 1315 	ld	a, h
   509F DD B6 F7      [19] 1316 	or	a,-9 (ix)
   50A2 20 ED         [12] 1317 	jr	NZ,00204$
   50A4                    1318 00180$:
                           1319 ;src/game/game.c:315: drawCursor(xCursor, yCursor, 0);
   50A4 DD 56 F9      [19] 1320 	ld	d,-7 (ix)
   50A7 DD 46 F0      [19] 1321 	ld	b,-16 (ix)
   50AA AF            [ 4] 1322 	xor	a, a
   50AB F5            [11] 1323 	push	af
   50AC 33            [ 6] 1324 	inc	sp
   50AD D5            [11] 1325 	push	de
   50AE 33            [ 6] 1326 	inc	sp
   50AF C5            [11] 1327 	push	bc
   50B0 33            [ 6] 1328 	inc	sp
   50B1 CD 19 51      [17] 1329 	call	_drawCursor
   50B4 F1            [10] 1330 	pop	af
   50B5 33            [ 6] 1331 	inc	sp
                           1332 ;src/game/game.c:316: drawScrolls(ulx, uly);
   50B6 DD 7E FB      [19] 1333 	ld	a,-5 (ix)
   50B9 F5            [11] 1334 	push	af
   50BA 33            [ 6] 1335 	inc	sp
   50BB DD 7E FF      [19] 1336 	ld	a,-1 (ix)
   50BE F5            [11] 1337 	push	af
   50BF 33            [ 6] 1338 	inc	sp
   50C0 CD D4 59      [17] 1339 	call	_drawScrolls
   50C3 F1            [10] 1340 	pop	af
                           1341 ;src/game/game.c:318: while(!exit);
   50C4 DD 7E F6      [19] 1342 	ld	a,-10 (ix)
   50C7 B7            [ 4] 1343 	or	a, a
   50C8 CA 9C 4C      [10] 1344 	jp	Z,00181$
   50CB DD F9         [10] 1345 	ld	sp, ix
   50CD DD E1         [14] 1346 	pop	ix
   50CF C9            [10] 1347 	ret
   50D0                    1348 ___str_28:
   50D0 52 65 61 6C 6C 79  1349 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   50DD 00                 1350 	.db 0x00
   50DE                    1351 ___str_29:
   50DE 00                 1352 	.db 0x00
   50DF                    1353 ___str_30:
   50DF 50 72 65 73 73 20  1354 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   5104 00                 1355 	.db 0x00
   5105                    1356 ___str_31:
   5105 47 65 6E 65 72 61  1357 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   5118 00                 1358 	.db 0x00
                           1359 	.area _CODE
                           1360 	.area _INITIALIZER
                           1361 	.area _CABS (ABS)
