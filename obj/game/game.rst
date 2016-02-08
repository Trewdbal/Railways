                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 17:23:03 2016
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
   47C3                      68 _windowInfoTile::
   47C3 DD E5         [15]   69 	push	ix
   47C5 DD 21 00 00   [14]   70 	ld	ix,#0
   47C9 DD 39         [15]   71 	add	ix,sp
   47CB 21 F8 FF      [10]   72 	ld	hl,#-8
   47CE 39            [11]   73 	add	hl,sp
   47CF F9            [ 6]   74 	ld	sp,hl
                             75 ;src/game/game.c:7: switch(p_world[y*WIDTH+x])
   47D0 DD 4E 05      [19]   76 	ld	c,5 (ix)
   47D3 06 00         [ 7]   77 	ld	b,#0x00
   47D5 69            [ 4]   78 	ld	l, c
   47D6 60            [ 4]   79 	ld	h, b
   47D7 29            [11]   80 	add	hl, hl
   47D8 29            [11]   81 	add	hl, hl
   47D9 09            [11]   82 	add	hl, bc
   47DA 29            [11]   83 	add	hl, hl
   47DB 29            [11]   84 	add	hl, hl
   47DC 29            [11]   85 	add	hl, hl
   47DD 29            [11]   86 	add	hl, hl
   47DE DD 5E 04      [19]   87 	ld	e,4 (ix)
   47E1 16 00         [ 7]   88 	ld	d,#0x00
   47E3 19            [11]   89 	add	hl,de
   47E4 11 DA 7A      [10]   90 	ld	de,#_p_world
   47E7 19            [11]   91 	add	hl,de
   47E8 4E            [ 7]   92 	ld	c,(hl)
   47E9 3E 09         [ 7]   93 	ld	a,#0x09
   47EB 91            [ 4]   94 	sub	a, c
   47EC DA 1D 49      [10]   95 	jp	C,00111$
   47EF 59            [ 4]   96 	ld	e,c
   47F0 16 00         [ 7]   97 	ld	d,#0x00
   47F2 21 F9 47      [10]   98 	ld	hl,#00119$
   47F5 19            [11]   99 	add	hl,de
   47F6 19            [11]  100 	add	hl,de
   47F7 19            [11]  101 	add	hl,de
   47F8 E9            [ 4]  102 	jp	(hl)
   47F9                     103 00119$:
   47F9 C3 17 48      [10]  104 	jp	00101$
   47FC C3 17 48      [10]  105 	jp	00102$
   47FF C3 43 48      [10]  106 	jp	00103$
   4802 C3 43 48      [10]  107 	jp	00104$
   4805 C3 43 48      [10]  108 	jp	00105$
   4808 C3 6F 48      [10]  109 	jp	00106$
   480B C3 6F 48      [10]  110 	jp	00107$
   480E C3 9B 48      [10]  111 	jp	00108$
   4811 C3 C7 48      [10]  112 	jp	00109$
   4814 C3 F2 48      [10]  113 	jp	00110$
                            114 ;src/game/game.c:9: case GRASS1:
   4817                     115 00101$:
                            116 ;src/game/game.c:10: case GRASS2:
   4817                     117 00102$:
                            118 ;src/game/game.c:11: txtWindowInfoTile[0] = "Grassland";
   4817 21 00 00      [10]  119 	ld	hl,#0x0000
   481A 39            [11]  120 	add	hl,sp
   481B 5D            [ 4]  121 	ld	e,l
   481C 54            [ 4]  122 	ld	d,h
   481D 36 58         [10]  123 	ld	(hl),#<(___str_0)
   481F 23            [ 6]  124 	inc	hl
   4820 36 49         [10]  125 	ld	(hl),#>(___str_0)
                            126 ;src/game/game.c:12: txtWindowInfoTile[1] = "";
   4822 6B            [ 4]  127 	ld	l, e
   4823 62            [ 4]  128 	ld	h, d
   4824 23            [ 6]  129 	inc	hl
   4825 23            [ 6]  130 	inc	hl
   4826 01 62 49      [10]  131 	ld	bc,#___str_1+0
   4829 71            [ 7]  132 	ld	(hl),c
   482A 23            [ 6]  133 	inc	hl
   482B 70            [ 7]  134 	ld	(hl),b
                            135 ;src/game/game.c:13: txtWindowInfoTile[2] = "Production: Nothing";
   482C 21 04 00      [10]  136 	ld	hl,#0x0004
   482F 19            [11]  137 	add	hl,de
   4830 01 63 49      [10]  138 	ld	bc,#___str_2+0
   4833 71            [ 7]  139 	ld	(hl),c
   4834 23            [ 6]  140 	inc	hl
   4835 70            [ 7]  141 	ld	(hl),b
                            142 ;src/game/game.c:14: txtWindowInfoTile[3] = "Demand: Nothing";
   4836 21 06 00      [10]  143 	ld	hl,#0x0006
   4839 19            [11]  144 	add	hl,de
   483A 11 77 49      [10]  145 	ld	de,#___str_3+0
   483D 73            [ 7]  146 	ld	(hl),e
   483E 23            [ 6]  147 	inc	hl
   483F 72            [ 7]  148 	ld	(hl),d
                            149 ;src/game/game.c:15: break;
   4840 C3 46 49      [10]  150 	jp	00112$
                            151 ;src/game/game.c:16: case DWELLINGS1:
   4843                     152 00103$:
                            153 ;src/game/game.c:17: case DWELLINGS2:
   4843                     154 00104$:
                            155 ;src/game/game.c:18: case DWELLINGS3:
   4843                     156 00105$:
                            157 ;src/game/game.c:19: txtWindowInfoTile[0] = "City";
   4843 21 00 00      [10]  158 	ld	hl,#0x0000
   4846 39            [11]  159 	add	hl,sp
   4847 5D            [ 4]  160 	ld	e,l
   4848 54            [ 4]  161 	ld	d,h
   4849 36 87         [10]  162 	ld	(hl),#<(___str_4)
   484B 23            [ 6]  163 	inc	hl
   484C 36 49         [10]  164 	ld	(hl),#>(___str_4)
                            165 ;src/game/game.c:20: txtWindowInfoTile[1] = "";
   484E 6B            [ 4]  166 	ld	l, e
   484F 62            [ 4]  167 	ld	h, d
   4850 23            [ 6]  168 	inc	hl
   4851 23            [ 6]  169 	inc	hl
   4852 01 62 49      [10]  170 	ld	bc,#___str_1+0
   4855 71            [ 7]  171 	ld	(hl),c
   4856 23            [ 6]  172 	inc	hl
   4857 70            [ 7]  173 	ld	(hl),b
                            174 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   4858 21 04 00      [10]  175 	ld	hl,#0x0004
   485B 19            [11]  176 	add	hl,de
   485C 01 8C 49      [10]  177 	ld	bc,#___str_5+0
   485F 71            [ 7]  178 	ld	(hl),c
   4860 23            [ 6]  179 	inc	hl
   4861 70            [ 7]  180 	ld	(hl),b
                            181 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4862 21 06 00      [10]  182 	ld	hl,#0x0006
   4865 19            [11]  183 	add	hl,de
   4866 11 A9 49      [10]  184 	ld	de,#___str_6+0
   4869 73            [ 7]  185 	ld	(hl),e
   486A 23            [ 6]  186 	inc	hl
   486B 72            [ 7]  187 	ld	(hl),d
                            188 ;src/game/game.c:23: break;
   486C C3 46 49      [10]  189 	jp	00112$
                            190 ;src/game/game.c:24: case FARM1:
   486F                     191 00106$:
                            192 ;src/game/game.c:25: case FARM2:
   486F                     193 00107$:
                            194 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   486F 21 00 00      [10]  195 	ld	hl,#0x0000
   4872 39            [11]  196 	add	hl,sp
   4873 5D            [ 4]  197 	ld	e,l
   4874 54            [ 4]  198 	ld	d,h
   4875 36 CE         [10]  199 	ld	(hl),#<(___str_7)
   4877 23            [ 6]  200 	inc	hl
   4878 36 49         [10]  201 	ld	(hl),#>(___str_7)
                            202 ;src/game/game.c:27: txtWindowInfoTile[1] = "";
   487A 6B            [ 4]  203 	ld	l, e
   487B 62            [ 4]  204 	ld	h, d
   487C 23            [ 6]  205 	inc	hl
   487D 23            [ 6]  206 	inc	hl
   487E 01 62 49      [10]  207 	ld	bc,#___str_1+0
   4881 71            [ 7]  208 	ld	(hl),c
   4882 23            [ 6]  209 	inc	hl
   4883 70            [ 7]  210 	ld	(hl),b
                            211 ;src/game/game.c:28: txtWindowInfoTile[2] = "Production: Cereal";
   4884 21 04 00      [10]  212 	ld	hl,#0x0004
   4887 19            [11]  213 	add	hl,de
   4888 01 D3 49      [10]  214 	ld	bc,#___str_8+0
   488B 71            [ 7]  215 	ld	(hl),c
   488C 23            [ 6]  216 	inc	hl
   488D 70            [ 7]  217 	ld	(hl),b
                            218 ;src/game/game.c:29: txtWindowInfoTile[3] = "Demand: Nothing";
   488E 21 06 00      [10]  219 	ld	hl,#0x0006
   4891 19            [11]  220 	add	hl,de
   4892 11 77 49      [10]  221 	ld	de,#___str_3+0
   4895 73            [ 7]  222 	ld	(hl),e
   4896 23            [ 6]  223 	inc	hl
   4897 72            [ 7]  224 	ld	(hl),d
                            225 ;src/game/game.c:30: break;
   4898 C3 46 49      [10]  226 	jp	00112$
                            227 ;src/game/game.c:31: case WATER:
   489B                     228 00108$:
                            229 ;src/game/game.c:32: txtWindowInfoTile[0] = "Water";
   489B 21 00 00      [10]  230 	ld	hl,#0x0000
   489E 39            [11]  231 	add	hl,sp
   489F 5D            [ 4]  232 	ld	e,l
   48A0 54            [ 4]  233 	ld	d,h
   48A1 36 E6         [10]  234 	ld	(hl),#<(___str_9)
   48A3 23            [ 6]  235 	inc	hl
   48A4 36 49         [10]  236 	ld	(hl),#>(___str_9)
                            237 ;src/game/game.c:33: txtWindowInfoTile[1] = "";
   48A6 6B            [ 4]  238 	ld	l, e
   48A7 62            [ 4]  239 	ld	h, d
   48A8 23            [ 6]  240 	inc	hl
   48A9 23            [ 6]  241 	inc	hl
   48AA 01 62 49      [10]  242 	ld	bc,#___str_1+0
   48AD 71            [ 7]  243 	ld	(hl),c
   48AE 23            [ 6]  244 	inc	hl
   48AF 70            [ 7]  245 	ld	(hl),b
                            246 ;src/game/game.c:34: txtWindowInfoTile[2] = "Production: Nothing";
   48B0 21 04 00      [10]  247 	ld	hl,#0x0004
   48B3 19            [11]  248 	add	hl,de
   48B4 01 63 49      [10]  249 	ld	bc,#___str_2+0
   48B7 71            [ 7]  250 	ld	(hl),c
   48B8 23            [ 6]  251 	inc	hl
   48B9 70            [ 7]  252 	ld	(hl),b
                            253 ;src/game/game.c:35: txtWindowInfoTile[3] = "Demand: Nothing";
   48BA 21 06 00      [10]  254 	ld	hl,#0x0006
   48BD 19            [11]  255 	add	hl,de
   48BE 11 77 49      [10]  256 	ld	de,#___str_3+0
   48C1 73            [ 7]  257 	ld	(hl),e
   48C2 23            [ 6]  258 	inc	hl
   48C3 72            [ 7]  259 	ld	(hl),d
                            260 ;src/game/game.c:36: break;
   48C4 C3 46 49      [10]  261 	jp	00112$
                            262 ;src/game/game.c:37: case FOREST:
   48C7                     263 00109$:
                            264 ;src/game/game.c:38: txtWindowInfoTile[0] = "Forest";
   48C7 21 00 00      [10]  265 	ld	hl,#0x0000
   48CA 39            [11]  266 	add	hl,sp
   48CB 5D            [ 4]  267 	ld	e,l
   48CC 54            [ 4]  268 	ld	d,h
   48CD 36 EC         [10]  269 	ld	(hl),#<(___str_10)
   48CF 23            [ 6]  270 	inc	hl
   48D0 36 49         [10]  271 	ld	(hl),#>(___str_10)
                            272 ;src/game/game.c:39: txtWindowInfoTile[1] = "";
   48D2 6B            [ 4]  273 	ld	l, e
   48D3 62            [ 4]  274 	ld	h, d
   48D4 23            [ 6]  275 	inc	hl
   48D5 23            [ 6]  276 	inc	hl
   48D6 01 62 49      [10]  277 	ld	bc,#___str_1+0
   48D9 71            [ 7]  278 	ld	(hl),c
   48DA 23            [ 6]  279 	inc	hl
   48DB 70            [ 7]  280 	ld	(hl),b
                            281 ;src/game/game.c:40: txtWindowInfoTile[2] = "Production: Nothing";
   48DC 21 04 00      [10]  282 	ld	hl,#0x0004
   48DF 19            [11]  283 	add	hl,de
   48E0 01 63 49      [10]  284 	ld	bc,#___str_2+0
   48E3 71            [ 7]  285 	ld	(hl),c
   48E4 23            [ 6]  286 	inc	hl
   48E5 70            [ 7]  287 	ld	(hl),b
                            288 ;src/game/game.c:41: txtWindowInfoTile[3] = "Demand: Nothing";
   48E6 21 06 00      [10]  289 	ld	hl,#0x0006
   48E9 19            [11]  290 	add	hl,de
   48EA 11 77 49      [10]  291 	ld	de,#___str_3+0
   48ED 73            [ 7]  292 	ld	(hl),e
   48EE 23            [ 6]  293 	inc	hl
   48EF 72            [ 7]  294 	ld	(hl),d
                            295 ;src/game/game.c:42: break;
   48F0 18 54         [12]  296 	jr	00112$
                            297 ;src/game/game.c:43: case LIVESTOCK:
   48F2                     298 00110$:
                            299 ;src/game/game.c:44: txtWindowInfoTile[0] = "Livestock farming";
   48F2 21 00 00      [10]  300 	ld	hl,#0x0000
   48F5 39            [11]  301 	add	hl,sp
   48F6 5D            [ 4]  302 	ld	e,l
   48F7 54            [ 4]  303 	ld	d,h
   48F8 36 F3         [10]  304 	ld	(hl),#<(___str_11)
   48FA 23            [ 6]  305 	inc	hl
   48FB 36 49         [10]  306 	ld	(hl),#>(___str_11)
                            307 ;src/game/game.c:45: txtWindowInfoTile[1] = "";
   48FD 6B            [ 4]  308 	ld	l, e
   48FE 62            [ 4]  309 	ld	h, d
   48FF 23            [ 6]  310 	inc	hl
   4900 23            [ 6]  311 	inc	hl
   4901 01 62 49      [10]  312 	ld	bc,#___str_1+0
   4904 71            [ 7]  313 	ld	(hl),c
   4905 23            [ 6]  314 	inc	hl
   4906 70            [ 7]  315 	ld	(hl),b
                            316 ;src/game/game.c:46: txtWindowInfoTile[2] = "Production: Livestock, wool";
   4907 21 04 00      [10]  317 	ld	hl,#0x0004
   490A 19            [11]  318 	add	hl,de
   490B 01 05 4A      [10]  319 	ld	bc,#___str_12+0
   490E 71            [ 7]  320 	ld	(hl),c
   490F 23            [ 6]  321 	inc	hl
   4910 70            [ 7]  322 	ld	(hl),b
                            323 ;src/game/game.c:47: txtWindowInfoTile[3] = "Demand: Cereal";
   4911 21 06 00      [10]  324 	ld	hl,#0x0006
   4914 19            [11]  325 	add	hl,de
   4915 11 21 4A      [10]  326 	ld	de,#___str_13+0
   4918 73            [ 7]  327 	ld	(hl),e
   4919 23            [ 6]  328 	inc	hl
   491A 72            [ 7]  329 	ld	(hl),d
                            330 ;src/game/game.c:48: break;
   491B 18 29         [12]  331 	jr	00112$
                            332 ;src/game/game.c:49: default:
   491D                     333 00111$:
                            334 ;src/game/game.c:50: txtWindowInfoTile[0] = "Not yet implemented";
   491D 21 00 00      [10]  335 	ld	hl,#0x0000
   4920 39            [11]  336 	add	hl,sp
   4921 5D            [ 4]  337 	ld	e,l
   4922 54            [ 4]  338 	ld	d,h
   4923 36 30         [10]  339 	ld	(hl),#<(___str_14)
   4925 23            [ 6]  340 	inc	hl
   4926 36 4A         [10]  341 	ld	(hl),#>(___str_14)
                            342 ;src/game/game.c:51: txtWindowInfoTile[1] = "";
   4928 6B            [ 4]  343 	ld	l, e
   4929 62            [ 4]  344 	ld	h, d
   492A 23            [ 6]  345 	inc	hl
   492B 23            [ 6]  346 	inc	hl
   492C 01 62 49      [10]  347 	ld	bc,#___str_1+0
   492F 71            [ 7]  348 	ld	(hl),c
   4930 23            [ 6]  349 	inc	hl
   4931 70            [ 7]  350 	ld	(hl),b
                            351 ;src/game/game.c:52: txtWindowInfoTile[2] = "Production: ?";
   4932 21 04 00      [10]  352 	ld	hl,#0x0004
   4935 19            [11]  353 	add	hl,de
   4936 01 44 4A      [10]  354 	ld	bc,#___str_15+0
   4939 71            [ 7]  355 	ld	(hl),c
   493A 23            [ 6]  356 	inc	hl
   493B 70            [ 7]  357 	ld	(hl),b
                            358 ;src/game/game.c:53: txtWindowInfoTile[3] = "Demand: ?";
   493C 21 06 00      [10]  359 	ld	hl,#0x0006
   493F 19            [11]  360 	add	hl,de
   4940 11 52 4A      [10]  361 	ld	de,#___str_16+0
   4943 73            [ 7]  362 	ld	(hl),e
   4944 23            [ 6]  363 	inc	hl
   4945 72            [ 7]  364 	ld	(hl),d
                            365 ;src/game/game.c:55: }
   4946                     366 00112$:
                            367 ;src/game/game.c:57: drawWindow(txtWindowInfoTile, 4, 0);
   4946 21 00 00      [10]  368 	ld	hl,#0x0000
   4949 39            [11]  369 	add	hl,sp
   494A EB            [ 4]  370 	ex	de,hl
   494B 21 04 00      [10]  371 	ld	hl,#0x0004
   494E E5            [11]  372 	push	hl
   494F D5            [11]  373 	push	de
   4950 CD 46 60      [17]  374 	call	_drawWindow
   4953 DD F9         [10]  375 	ld	sp,ix
   4955 DD E1         [14]  376 	pop	ix
   4957 C9            [10]  377 	ret
   4958                     378 ___str_0:
   4958 47 72 61 73 73 6C   379 	.ascii "Grassland"
        61 6E 64
   4961 00                  380 	.db 0x00
   4962                     381 ___str_1:
   4962 00                  382 	.db 0x00
   4963                     383 ___str_2:
   4963 50 72 6F 64 75 63   384 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   4976 00                  385 	.db 0x00
   4977                     386 ___str_3:
   4977 44 65 6D 61 6E 64   387 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   4986 00                  388 	.db 0x00
   4987                     389 ___str_4:
   4987 43 69 74 79         390 	.ascii "City"
   498B 00                  391 	.db 0x00
   498C                     392 ___str_5:
   498C 50 72 6F 64 75 63   393 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   49A8 00                  394 	.db 0x00
   49A9                     395 ___str_6:
   49A9 44 65 6D 61 6E 64   396 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   49CD 00                  397 	.db 0x00
   49CE                     398 ___str_7:
   49CE 46 61 72 6D         399 	.ascii "Farm"
   49D2 00                  400 	.db 0x00
   49D3                     401 ___str_8:
   49D3 50 72 6F 64 75 63   402 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   49E5 00                  403 	.db 0x00
   49E6                     404 ___str_9:
   49E6 57 61 74 65 72      405 	.ascii "Water"
   49EB 00                  406 	.db 0x00
   49EC                     407 ___str_10:
   49EC 46 6F 72 65 73 74   408 	.ascii "Forest"
   49F2 00                  409 	.db 0x00
   49F3                     410 ___str_11:
   49F3 4C 69 76 65 73 74   411 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   4A04 00                  412 	.db 0x00
   4A05                     413 ___str_12:
   4A05 50 72 6F 64 75 63   414 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   4A20 00                  415 	.db 0x00
   4A21                     416 ___str_13:
   4A21 44 65 6D 61 6E 64   417 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   4A2F 00                  418 	.db 0x00
   4A30                     419 ___str_14:
   4A30 4E 6F 74 20 79 65   420 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   4A43 00                  421 	.db 0x00
   4A44                     422 ___str_15:
   4A44 50 72 6F 64 75 63   423 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   4A51 00                  424 	.db 0x00
   4A52                     425 ___str_16:
   4A52 44 65 6D 61 6E 64   426 	.ascii "Demand: ?"
        3A 20 3F
   4A5B 00                  427 	.db 0x00
                            428 ;src/game/game.c:60: void menuStations()
                            429 ;	---------------------------------
                            430 ; Function menuStations
                            431 ; ---------------------------------
   4A5C                     432 _menuStations::
   4A5C DD E5         [15]  433 	push	ix
   4A5E DD 21 00 00   [14]  434 	ld	ix,#0
   4A62 DD 39         [15]  435 	add	ix,sp
   4A64 21 FA FF      [10]  436 	ld	hl,#-6
   4A67 39            [11]  437 	add	hl,sp
   4A68 F9            [ 6]  438 	ld	sp,hl
                            439 ;src/game/game.c:64: const char *txtMenuSizeStation[] = { 
   4A69 21 00 00      [10]  440 	ld	hl,#0x0000
   4A6C 39            [11]  441 	add	hl,sp
   4A6D 5D            [ 4]  442 	ld	e,l
   4A6E 54            [ 4]  443 	ld	d,h
   4A6F 36 BE         [10]  444 	ld	(hl),#<(___str_17)
   4A71 23            [ 6]  445 	inc	hl
   4A72 36 4A         [10]  446 	ld	(hl),#>(___str_17)
   4A74 6B            [ 4]  447 	ld	l, e
   4A75 62            [ 4]  448 	ld	h, d
   4A76 23            [ 6]  449 	inc	hl
   4A77 23            [ 6]  450 	inc	hl
   4A78 01 C4 4A      [10]  451 	ld	bc,#___str_18+0
   4A7B 71            [ 7]  452 	ld	(hl),c
   4A7C 23            [ 6]  453 	inc	hl
   4A7D 70            [ 7]  454 	ld	(hl),b
   4A7E 21 04 00      [10]  455 	ld	hl,#0x0004
   4A81 19            [11]  456 	add	hl,de
   4A82 01 CB 4A      [10]  457 	ld	bc,#___str_19+0
   4A85 71            [ 7]  458 	ld	(hl),c
   4A86 23            [ 6]  459 	inc	hl
   4A87 70            [ 7]  460 	ld	(hl),b
                            461 ;src/game/game.c:70: result = drawMenu(txtMenuSizeStation,3);
   4A88 3E 03         [ 7]  462 	ld	a,#0x03
   4A8A F5            [11]  463 	push	af
   4A8B 33            [ 6]  464 	inc	sp
   4A8C D5            [11]  465 	push	de
   4A8D CD 48 5F      [17]  466 	call	_drawMenu
   4A90 F1            [10]  467 	pop	af
   4A91 33            [ 6]  468 	inc	sp
   4A92 5D            [ 4]  469 	ld	e,l
                            470 ;src/game/game.c:72: switch(result)
   4A93 3E 02         [ 7]  471 	ld	a,#0x02
   4A95 93            [ 4]  472 	sub	a, e
   4A96 38 21         [12]  473 	jr	C,00105$
   4A98 16 00         [ 7]  474 	ld	d,#0x00
   4A9A 21 A0 4A      [10]  475 	ld	hl,#00111$
   4A9D 19            [11]  476 	add	hl,de
   4A9E 19            [11]  477 	add	hl,de
                            478 ;src/game/game.c:74: case 0:
   4A9F E9            [ 4]  479 	jp	(hl)
   4AA0                     480 00111$:
   4AA0 18 04         [12]  481 	jr	00101$
   4AA2 18 09         [12]  482 	jr	00102$
   4AA4 18 0E         [12]  483 	jr	00103$
   4AA6                     484 00101$:
                            485 ;src/game/game.c:75: CURSOR_MODE=T_SSEW;
   4AA6 21 DE 89      [10]  486 	ld	hl,#_CURSOR_MODE + 0
   4AA9 36 02         [10]  487 	ld	(hl), #0x02
                            488 ;src/game/game.c:76: break;
   4AAB 18 0C         [12]  489 	jr	00105$
                            490 ;src/game/game.c:78: case 1:
   4AAD                     491 00102$:
                            492 ;src/game/game.c:79: CURSOR_MODE=T_SMEW;
   4AAD 21 DE 89      [10]  493 	ld	hl,#_CURSOR_MODE + 0
   4AB0 36 04         [10]  494 	ld	(hl), #0x04
                            495 ;src/game/game.c:80: break;
   4AB2 18 05         [12]  496 	jr	00105$
                            497 ;src/game/game.c:82: case 2:
   4AB4                     498 00103$:
                            499 ;src/game/game.c:83: CURSOR_MODE=T_SLEW;
   4AB4 21 DE 89      [10]  500 	ld	hl,#_CURSOR_MODE + 0
   4AB7 36 06         [10]  501 	ld	(hl), #0x06
                            502 ;src/game/game.c:85: }
   4AB9                     503 00105$:
   4AB9 DD F9         [10]  504 	ld	sp, ix
   4ABB DD E1         [14]  505 	pop	ix
   4ABD C9            [10]  506 	ret
   4ABE                     507 ___str_17:
   4ABE 53 6D 61 6C 6C      508 	.ascii "Small"
   4AC3 00                  509 	.db 0x00
   4AC4                     510 ___str_18:
   4AC4 4D 65 64 69 75 6D   511 	.ascii "Medium"
   4ACA 00                  512 	.db 0x00
   4ACB                     513 ___str_19:
   4ACB 4C 61 72 67 65      514 	.ascii "Large"
   4AD0 00                  515 	.db 0x00
                            516 ;src/game/game.c:88: void menuTile(u8 x, u8 y)
                            517 ;	---------------------------------
                            518 ; Function menuTile
                            519 ; ---------------------------------
   4AD1                     520 _menuTile::
   4AD1 DD E5         [15]  521 	push	ix
   4AD3 DD 21 00 00   [14]  522 	ld	ix,#0
   4AD7 DD 39         [15]  523 	add	ix,sp
   4AD9 21 E6 FF      [10]  524 	ld	hl,#-26
   4ADC 39            [11]  525 	add	hl,sp
   4ADD F9            [ 6]  526 	ld	sp,hl
                            527 ;src/game/game.c:92: const char *txtMenuTile[] = { 
   4ADE 21 00 00      [10]  528 	ld	hl,#0x0000
   4AE1 39            [11]  529 	add	hl,sp
   4AE2 5D            [ 4]  530 	ld	e,l
   4AE3 54            [ 4]  531 	ld	d,h
   4AE4 36 05         [10]  532 	ld	(hl),#<(___str_20)
   4AE6 23            [ 6]  533 	inc	hl
   4AE7 36 4C         [10]  534 	ld	(hl),#>(___str_20)
   4AE9 6B            [ 4]  535 	ld	l, e
   4AEA 62            [ 4]  536 	ld	h, d
   4AEB 23            [ 6]  537 	inc	hl
   4AEC 23            [ 6]  538 	inc	hl
   4AED 01 15 4C      [10]  539 	ld	bc,#___str_21+0
   4AF0 71            [ 7]  540 	ld	(hl),c
   4AF1 23            [ 6]  541 	inc	hl
   4AF2 70            [ 7]  542 	ld	(hl),b
   4AF3 21 04 00      [10]  543 	ld	hl,#0x0004
   4AF6 19            [11]  544 	add	hl,de
   4AF7 01 25 4C      [10]  545 	ld	bc,#___str_22+0
   4AFA 71            [ 7]  546 	ld	(hl),c
   4AFB 23            [ 6]  547 	inc	hl
   4AFC 70            [ 7]  548 	ld	(hl),b
   4AFD 21 06 00      [10]  549 	ld	hl,#0x0006
   4B00 19            [11]  550 	add	hl,de
   4B01 01 35 4C      [10]  551 	ld	bc,#___str_23+0
   4B04 71            [ 7]  552 	ld	(hl),c
   4B05 23            [ 6]  553 	inc	hl
   4B06 70            [ 7]  554 	ld	(hl),b
   4B07 21 08 00      [10]  555 	ld	hl,#0x0008
   4B0A 19            [11]  556 	add	hl,de
   4B0B 01 3D 4C      [10]  557 	ld	bc,#___str_24+0
   4B0E 71            [ 7]  558 	ld	(hl),c
   4B0F 23            [ 6]  559 	inc	hl
   4B10 70            [ 7]  560 	ld	(hl),b
   4B11 21 0A 00      [10]  561 	ld	hl,#0x000A
   4B14 19            [11]  562 	add	hl,de
   4B15 01 4C 4C      [10]  563 	ld	bc,#___str_25+0
   4B18 71            [ 7]  564 	ld	(hl),c
   4B19 23            [ 6]  565 	inc	hl
   4B1A 70            [ 7]  566 	ld	(hl),b
   4B1B 21 0C 00      [10]  567 	ld	hl,#0x000C
   4B1E 19            [11]  568 	add	hl,de
   4B1F 01 57 4C      [10]  569 	ld	bc,#___str_26+0
   4B22 71            [ 7]  570 	ld	(hl),c
   4B23 23            [ 6]  571 	inc	hl
   4B24 70            [ 7]  572 	ld	(hl),b
                            573 ;src/game/game.c:102: const char *txtWindowDestroy[] = { 
   4B25 21 0E 00      [10]  574 	ld	hl,#0x000E
   4B28 39            [11]  575 	add	hl,sp
   4B29 4D            [ 4]  576 	ld	c,l
   4B2A 44            [ 4]  577 	ld	b,h
   4B2B 36 5E         [10]  578 	ld	(hl),#<(___str_27)
   4B2D 23            [ 6]  579 	inc	hl
   4B2E 36 4C         [10]  580 	ld	(hl),#>(___str_27)
   4B30 21 02 00      [10]  581 	ld	hl,#0x0002
   4B33 09            [11]  582 	add	hl,bc
   4B34 DD 75 FA      [19]  583 	ld	-6 (ix),l
   4B37 DD 74 FB      [19]  584 	ld	-5 (ix),h
   4B3A DD 6E FA      [19]  585 	ld	l,-6 (ix)
   4B3D DD 66 FB      [19]  586 	ld	h,-5 (ix)
   4B40 36 81         [10]  587 	ld	(hl),#<(___str_28)
   4B42 23            [ 6]  588 	inc	hl
   4B43 36 4C         [10]  589 	ld	(hl),#>(___str_28)
   4B45 21 04 00      [10]  590 	ld	hl,#0x0004
   4B48 09            [11]  591 	add	hl,bc
   4B49 DD 75 FA      [19]  592 	ld	-6 (ix),l
   4B4C DD 74 FB      [19]  593 	ld	-5 (ix),h
   4B4F DD 6E FA      [19]  594 	ld	l,-6 (ix)
   4B52 DD 66 FB      [19]  595 	ld	h,-5 (ix)
   4B55 36 82         [10]  596 	ld	(hl),#<(___str_29)
   4B57 23            [ 6]  597 	inc	hl
   4B58 36 4C         [10]  598 	ld	(hl),#>(___str_29)
                            599 ;src/game/game.c:109: putM2();
   4B5A C5            [11]  600 	push	bc
   4B5B D5            [11]  601 	push	de
   4B5C CD 42 5B      [17]  602 	call	_putM2
   4B5F D1            [10]  603 	pop	de
   4B60 C1            [10]  604 	pop	bc
                            605 ;src/game/game.c:111: do{
   4B61 D5            [11]  606 	push	de
   4B62 DD 5E 05      [19]  607 	ld	e,5 (ix)
   4B65 16 00         [ 7]  608 	ld	d,#0x00
   4B67 6B            [ 4]  609 	ld	l, e
   4B68 62            [ 4]  610 	ld	h, d
   4B69 29            [11]  611 	add	hl, hl
   4B6A 29            [11]  612 	add	hl, hl
   4B6B 19            [11]  613 	add	hl, de
   4B6C 29            [11]  614 	add	hl, hl
   4B6D 29            [11]  615 	add	hl, hl
   4B6E 29            [11]  616 	add	hl, hl
   4B6F 29            [11]  617 	add	hl, hl
   4B70 D1            [10]  618 	pop	de
   4B71 DD 75 FA      [19]  619 	ld	-6 (ix),l
   4B74 DD 74 FB      [19]  620 	ld	-5 (ix),h
   4B77 DD 71 FE      [19]  621 	ld	-2 (ix),c
   4B7A DD 70 FF      [19]  622 	ld	-1 (ix),b
   4B7D DD 73 FC      [19]  623 	ld	-4 (ix),e
   4B80 DD 72 FD      [19]  624 	ld	-3 (ix),d
   4B83                     625 00117$:
                            626 ;src/game/game.c:112: menuChoice = drawMenu(txtMenuTile,7);
   4B83 DD 5E FC      [19]  627 	ld	e,-4 (ix)
   4B86 DD 56 FD      [19]  628 	ld	d,-3 (ix)
   4B89 3E 07         [ 7]  629 	ld	a,#0x07
   4B8B F5            [11]  630 	push	af
   4B8C 33            [ 6]  631 	inc	sp
   4B8D D5            [11]  632 	push	de
   4B8E CD 48 5F      [17]  633 	call	_drawMenu
   4B91 F1            [10]  634 	pop	af
   4B92 33            [ 6]  635 	inc	sp
   4B93 55            [ 4]  636 	ld	d,l
                            637 ;src/game/game.c:114: if(menuChoice==0)
   4B94 7A            [ 4]  638 	ld	a,d
   4B95 B7            [ 4]  639 	or	a, a
   4B96 20 0F         [12]  640 	jr	NZ,00115$
                            641 ;src/game/game.c:115: windowInfoTile(x, y);
   4B98 D5            [11]  642 	push	de
   4B99 DD 66 05      [19]  643 	ld	h,5 (ix)
   4B9C DD 6E 04      [19]  644 	ld	l,4 (ix)
   4B9F E5            [11]  645 	push	hl
   4BA0 CD C3 47      [17]  646 	call	_windowInfoTile
   4BA3 F1            [10]  647 	pop	af
   4BA4 D1            [10]  648 	pop	de
   4BA5 18 51         [12]  649 	jr	00118$
   4BA7                     650 00115$:
                            651 ;src/game/game.c:116: else if(menuChoice==1)
   4BA7 7A            [ 4]  652 	ld	a,d
   4BA8 3D            [ 4]  653 	dec	a
   4BA9 20 09         [12]  654 	jr	NZ,00112$
                            655 ;src/game/game.c:118: CURSOR_MODE=T_REW;
   4BAB 21 DE 89      [10]  656 	ld	hl,#_CURSOR_MODE + 0
   4BAE 36 07         [10]  657 	ld	(hl), #0x07
                            658 ;src/game/game.c:119: menuChoice=6;
   4BB0 16 06         [ 7]  659 	ld	d,#0x06
   4BB2 18 44         [12]  660 	jr	00118$
   4BB4                     661 00112$:
                            662 ;src/game/game.c:121: else if(menuChoice==2)
   4BB4 7A            [ 4]  663 	ld	a,d
   4BB5 D6 02         [ 7]  664 	sub	a, #0x02
   4BB7 20 07         [12]  665 	jr	NZ,00109$
                            666 ;src/game/game.c:123: menuStations();
   4BB9 CD 5C 4A      [17]  667 	call	_menuStations
                            668 ;src/game/game.c:124: menuChoice=6;
   4BBC 16 06         [ 7]  669 	ld	d,#0x06
   4BBE 18 38         [12]  670 	jr	00118$
   4BC0                     671 00109$:
                            672 ;src/game/game.c:126: else if(menuChoice==3)
   4BC0 7A            [ 4]  673 	ld	a,d
   4BC1 D6 03         [ 7]  674 	sub	a, #0x03
   4BC3 20 29         [12]  675 	jr	NZ,00106$
                            676 ;src/game/game.c:128: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   4BC5 DD 5E FE      [19]  677 	ld	e,-2 (ix)
   4BC8 DD 56 FF      [19]  678 	ld	d,-1 (ix)
   4BCB 21 03 01      [10]  679 	ld	hl,#0x0103
   4BCE E5            [11]  680 	push	hl
   4BCF D5            [11]  681 	push	de
   4BD0 CD 46 60      [17]  682 	call	_drawWindow
   4BD3 F1            [10]  683 	pop	af
   4BD4 F1            [10]  684 	pop	af
   4BD5 2D            [ 4]  685 	dec	l
   4BD6 20 12         [12]  686 	jr	NZ,00102$
                            687 ;src/game/game.c:129: p_world[x+y*WIDTH] = GRASS1;
   4BD8 DD 6E 04      [19]  688 	ld	l,4 (ix)
   4BDB 26 00         [ 7]  689 	ld	h,#0x00
   4BDD DD 5E FA      [19]  690 	ld	e,-6 (ix)
   4BE0 DD 56 FB      [19]  691 	ld	d,-5 (ix)
   4BE3 19            [11]  692 	add	hl,de
   4BE4 11 DA 7A      [10]  693 	ld	de,#_p_world
   4BE7 19            [11]  694 	add	hl,de
   4BE8 36 00         [10]  695 	ld	(hl),#0x00
   4BEA                     696 00102$:
                            697 ;src/game/game.c:131: menuChoice=6;
   4BEA 16 06         [ 7]  698 	ld	d,#0x06
   4BEC 18 0A         [12]  699 	jr	00118$
   4BEE                     700 00106$:
                            701 ;src/game/game.c:133: else if(menuChoice==4)
   4BEE 7A            [ 4]  702 	ld	a,d
   4BEF D6 04         [ 7]  703 	sub	a, #0x04
   4BF1 20 05         [12]  704 	jr	NZ,00118$
                            705 ;src/game/game.c:135: railroadDepot();
   4BF3 CD 30 41      [17]  706 	call	_railroadDepot
                            707 ;src/game/game.c:136: menuChoice=6;
   4BF6 16 06         [ 7]  708 	ld	d,#0x06
   4BF8                     709 00118$:
                            710 ;src/game/game.c:141: while(menuChoice!=6);
   4BF8 7A            [ 4]  711 	ld	a,d
   4BF9 D6 06         [ 7]  712 	sub	a, #0x06
   4BFB 20 86         [12]  713 	jr	NZ,00117$
                            714 ;src/game/game.c:143: putM1();
   4BFD CD 2E 5B      [17]  715 	call	_putM1
   4C00 DD F9         [10]  716 	ld	sp, ix
   4C02 DD E1         [14]  717 	pop	ix
   4C04 C9            [10]  718 	ret
   4C05                     719 ___str_20:
   4C05 41 62 6F 75 74 20   720 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   4C14 00                  721 	.db 0x00
   4C15                     722 ___str_21:
   4C15 42 75 69 6C 64 20   723 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   4C24 00                  724 	.db 0x00
   4C25                     725 ___str_22:
   4C25 42 75 69 6C 64 20   726 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   4C34 00                  727 	.db 0x00
   4C35                     728 ___str_23:
   4C35 44 65 73 74 72 6F   729 	.ascii "Destroy"
        79
   4C3C 00                  730 	.db 0x00
   4C3D                     731 ___str_24:
   4C3D 52 61 69 6C 72 6F   732 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   4C4B 00                  733 	.db 0x00
   4C4C                     734 ___str_25:
   4C4C 41 63 63 6F 75 6E   735 	.ascii "Accounting"
        74 69 6E 67
   4C56 00                  736 	.db 0x00
   4C57                     737 ___str_26:
   4C57 52 65 73 75 6D 65   738 	.ascii "Resume"
   4C5D 00                  739 	.db 0x00
   4C5E                     740 ___str_27:
   4C5E 44 65 73 74 72 6F   741 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   4C80 00                  742 	.db 0x00
   4C81                     743 ___str_28:
   4C81 00                  744 	.db 0x00
   4C82                     745 ___str_29:
   4C82 43 6F 6E 74 69 6E   746 	.ascii "Continue ?"
        75 65 20 3F
   4C8C 00                  747 	.db 0x00
                            748 ;src/game/game.c:147: void game()
                            749 ;	---------------------------------
                            750 ; Function game
                            751 ; ---------------------------------
   4C8D                     752 _game::
   4C8D DD E5         [15]  753 	push	ix
   4C8F DD 21 00 00   [14]  754 	ld	ix,#0
   4C93 DD 39         [15]  755 	add	ix,sp
   4C95 21 EA FF      [10]  756 	ld	hl,#-22
   4C98 39            [11]  757 	add	hl,sp
   4C99 F9            [ 6]  758 	ld	sp,hl
                            759 ;src/game/game.c:150: int ulx = 0;
   4C9A DD 36 F7 00   [19]  760 	ld	-9 (ix),#0x00
   4C9E DD 36 F8 00   [19]  761 	ld	-8 (ix),#0x00
                            762 ;src/game/game.c:151: int uly = 0;
   4CA2 DD 36 F9 00   [19]  763 	ld	-7 (ix),#0x00
   4CA6 DD 36 FA 00   [19]  764 	ld	-6 (ix),#0x00
                            765 ;src/game/game.c:152: int xCursor = 10;
   4CAA DD 36 F0 0A   [19]  766 	ld	-16 (ix),#0x0A
   4CAE DD 36 F1 00   [19]  767 	ld	-15 (ix),#0x00
                            768 ;src/game/game.c:153: int yCursor = 6;
   4CB2 DD 36 F4 06   [19]  769 	ld	-12 (ix),#0x06
   4CB6 DD 36 F5 00   [19]  770 	ld	-11 (ix),#0x00
                            771 ;src/game/game.c:155: u8 exit=0;
   4CBA DD 36 F6 00   [19]  772 	ld	-10 (ix),#0x00
                            773 ;src/game/game.c:157: locDelocked = 4;
   4CBE 21 DF 89      [10]  774 	ld	hl,#_locDelocked + 0
   4CC1 36 04         [10]  775 	ld	(hl), #0x04
                            776 ;src/game/game.c:159: drawBoxM2(50, 50);
   4CC3 21 32 00      [10]  777 	ld	hl,#0x0032
   4CC6 E5            [11]  778 	push	hl
   4CC7 2E 32         [ 7]  779 	ld	l, #0x32
   4CC9 E5            [11]  780 	push	hl
   4CCA CD 7E 5C      [17]  781 	call	_drawBoxM2
   4CCD F1            [10]  782 	pop	af
                            783 ;src/game/game.c:160: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   4CCE 21 20 5F      [10]  784 	ld	hl, #0x5F20
   4CD1 E3            [19]  785 	ex	(sp),hl
   4CD2 21 00 C0      [10]  786 	ld	hl,#0xC000
   4CD5 E5            [11]  787 	push	hl
   4CD6 CD EA 79      [17]  788 	call	_cpct_getScreenPtr
                            789 ;src/game/game.c:161: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   4CD9 4D            [ 4]  790 	ld	c, l
   4CDA 44            [ 4]  791 	ld	b, h
   4CDB 11 7A 51      [10]  792 	ld	de,#___str_33
   4CDE AF            [ 4]  793 	xor	a, a
   4CDF F5            [11]  794 	push	af
   4CE0 33            [ 6]  795 	inc	sp
   4CE1 C5            [11]  796 	push	bc
   4CE2 D5            [11]  797 	push	de
   4CE3 CD 9B 73      [17]  798 	call	_cpct_drawStringM2
   4CE6 F1            [10]  799 	pop	af
   4CE7 F1            [10]  800 	pop	af
   4CE8 33            [ 6]  801 	inc	sp
                            802 ;src/game/game.c:163: generateWorld();
   4CE9 CD C0 54      [17]  803 	call	_generateWorld
                            804 ;src/game/game.c:165: putM1();
   4CEC CD 2E 5B      [17]  805 	call	_putM1
                            806 ;src/game/game.c:166: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   4CEF 21 00 00      [10]  807 	ld	hl,#0x0000
   4CF2 E5            [11]  808 	push	hl
   4CF3 2E 00         [ 7]  809 	ld	l, #0x00
   4CF5 E5            [11]  810 	push	hl
   4CF6 CD C4 78      [17]  811 	call	_cpct_px2byteM1
   4CF9 F1            [10]  812 	pop	af
   4CFA F1            [10]  813 	pop	af
   4CFB 65            [ 4]  814 	ld	h,l
   4CFC 01 00 40      [10]  815 	ld	bc,#0x4000
   4CFF C5            [11]  816 	push	bc
   4D00 E5            [11]  817 	push	hl
   4D01 33            [ 6]  818 	inc	sp
   4D02 21 00 C0      [10]  819 	ld	hl,#0xC000
   4D05 E5            [11]  820 	push	hl
   4D06 CD B6 78      [17]  821 	call	_cpct_memset
                            822 ;src/game/game.c:167: drawWorld(ulx, uly);
   4D09 21 00 00      [10]  823 	ld	hl,#0x0000
   4D0C E5            [11]  824 	push	hl
   4D0D CD E2 5A      [17]  825 	call	_drawWorld
   4D10 F1            [10]  826 	pop	af
                            827 ;src/game/game.c:169: do{
   4D11                     828 00181$:
                            829 ;src/game/game.c:170: cpct_scanKeyboard(); 
   4D11 CD 0A 7A      [17]  830 	call	_cpct_scanKeyboard
                            831 ;src/game/game.c:172: if ( cpct_isKeyPressed(Key_CursorUp) )
   4D14 21 00 01      [10]  832 	ld	hl,#0x0100
   4D17 CD 64 73      [17]  833 	call	_cpct_isKeyPressed
   4D1A DD 75 FD      [19]  834 	ld	-3 (ix),l
                            835 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4D1D DD 7E F4      [19]  836 	ld	a,-12 (ix)
   4D20 DD 77 FE      [19]  837 	ld	-2 (ix),a
   4D23 DD 7E F0      [19]  838 	ld	a,-16 (ix)
   4D26 DD 77 FC      [19]  839 	ld	-4 (ix),a
   4D29 DD 7E F9      [19]  840 	ld	a,-7 (ix)
   4D2C DD 77 FB      [19]  841 	ld	-5 (ix),a
   4D2F DD 7E F7      [19]  842 	ld	a,-9 (ix)
   4D32 DD 77 FF      [19]  843 	ld	-1 (ix),a
                            844 ;src/game/game.c:172: if ( cpct_isKeyPressed(Key_CursorUp) )
   4D35 DD 7E FD      [19]  845 	ld	a,-3 (ix)
   4D38 B7            [ 4]  846 	or	a, a
   4D39 CA BB 4D      [10]  847 	jp	Z,00179$
                            848 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4D3C DD 7E FE      [19]  849 	ld	a,-2 (ix)
   4D3F F5            [11]  850 	push	af
   4D40 33            [ 6]  851 	inc	sp
   4D41 DD 7E FC      [19]  852 	ld	a,-4 (ix)
   4D44 F5            [11]  853 	push	af
   4D45 33            [ 6]  854 	inc	sp
   4D46 DD 7E FB      [19]  855 	ld	a,-5 (ix)
   4D49 F5            [11]  856 	push	af
   4D4A 33            [ 6]  857 	inc	sp
   4D4B DD 7E FF      [19]  858 	ld	a,-1 (ix)
   4D4E F5            [11]  859 	push	af
   4D4F 33            [ 6]  860 	inc	sp
   4D50 CD 21 58      [17]  861 	call	_drawTile
   4D53 F1            [10]  862 	pop	af
   4D54 F1            [10]  863 	pop	af
                            864 ;src/game/game.c:176: yCursor-=1;
   4D55 DD 6E F4      [19]  865 	ld	l,-12 (ix)
   4D58 DD 66 F5      [19]  866 	ld	h,-11 (ix)
   4D5B 2B            [ 6]  867 	dec	hl
   4D5C DD 75 F4      [19]  868 	ld	-12 (ix),l
   4D5F DD 74 F5      [19]  869 	ld	-11 (ix),h
                            870 ;src/game/game.c:179: if(yCursor<0)
   4D62 DD CB F5 7E   [20]  871 	bit	7, -11 (ix)
   4D66 28 35         [12]  872 	jr	Z,00210$
                            873 ;src/game/game.c:181: yCursor=0;
   4D68 DD 36 F4 00   [19]  874 	ld	-12 (ix),#0x00
   4D6C DD 36 F5 00   [19]  875 	ld	-11 (ix),#0x00
                            876 ;src/game/game.c:184: if(uly>0)
   4D70 AF            [ 4]  877 	xor	a, a
   4D71 DD BE F9      [19]  878 	cp	a, -7 (ix)
   4D74 DD 9E FA      [19]  879 	sbc	a, -6 (ix)
   4D77 E2 7C 4D      [10]  880 	jp	PO, 00387$
   4D7A EE 80         [ 7]  881 	xor	a, #0x80
   4D7C                     882 00387$:
   4D7C F2 9D 4D      [10]  883 	jp	P,00210$
                            884 ;src/game/game.c:186: uly-=1;
   4D7F DD 6E F9      [19]  885 	ld	l,-7 (ix)
   4D82 DD 66 FA      [19]  886 	ld	h,-6 (ix)
   4D85 2B            [ 6]  887 	dec	hl
   4D86 DD 75 F9      [19]  888 	ld	-7 (ix),l
   4D89 DD 74 FA      [19]  889 	ld	-6 (ix),h
                            890 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4D8C DD 7E F9      [19]  891 	ld	a,-7 (ix)
                            892 ;src/game/game.c:187: drawWorld(ulx, uly);
   4D8F DD 77 FB      [19]  893 	ld	-5 (ix), a
   4D92 F5            [11]  894 	push	af
   4D93 33            [ 6]  895 	inc	sp
   4D94 DD 7E FF      [19]  896 	ld	a,-1 (ix)
   4D97 F5            [11]  897 	push	af
   4D98 33            [ 6]  898 	inc	sp
   4D99 CD E2 5A      [17]  899 	call	_drawWorld
   4D9C F1            [10]  900 	pop	af
                            901 ;src/game/game.c:192: for(i=0; i<5000; i++) {}
   4D9D                     902 00210$:
   4D9D DD 36 F2 88   [19]  903 	ld	-14 (ix),#0x88
   4DA1 DD 36 F3 13   [19]  904 	ld	-13 (ix),#0x13
   4DA5                     905 00186$:
   4DA5 DD 6E F2      [19]  906 	ld	l,-14 (ix)
   4DA8 DD 66 F3      [19]  907 	ld	h,-13 (ix)
   4DAB 2B            [ 6]  908 	dec	hl
   4DAC DD 75 F2      [19]  909 	ld	-14 (ix),l
   4DAF DD 74 F3      [19]  910 	ld	-13 (ix), h
   4DB2 7C            [ 4]  911 	ld	a, h
   4DB3 DD B6 F2      [19]  912 	or	a,-14 (ix)
   4DB6 20 ED         [12]  913 	jr	NZ,00186$
   4DB8 C3 19 51      [10]  914 	jp	00180$
   4DBB                     915 00179$:
                            916 ;src/game/game.c:195: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4DBB 21 00 04      [10]  917 	ld	hl,#0x0400
   4DBE CD 64 73      [17]  918 	call	_cpct_isKeyPressed
   4DC1 7D            [ 4]  919 	ld	a,l
   4DC2 B7            [ 4]  920 	or	a, a
   4DC3 CA 47 4E      [10]  921 	jp	Z,00176$
                            922 ;src/game/game.c:197: drawTile(ulx, uly, xCursor, yCursor);
   4DC6 DD 7E FE      [19]  923 	ld	a,-2 (ix)
   4DC9 F5            [11]  924 	push	af
   4DCA 33            [ 6]  925 	inc	sp
   4DCB DD 7E FC      [19]  926 	ld	a,-4 (ix)
   4DCE F5            [11]  927 	push	af
   4DCF 33            [ 6]  928 	inc	sp
   4DD0 DD 7E FB      [19]  929 	ld	a,-5 (ix)
   4DD3 F5            [11]  930 	push	af
   4DD4 33            [ 6]  931 	inc	sp
   4DD5 DD 7E FF      [19]  932 	ld	a,-1 (ix)
   4DD8 F5            [11]  933 	push	af
   4DD9 33            [ 6]  934 	inc	sp
   4DDA CD 21 58      [17]  935 	call	_drawTile
   4DDD F1            [10]  936 	pop	af
   4DDE F1            [10]  937 	pop	af
                            938 ;src/game/game.c:198: yCursor+=1;
   4DDF DD 34 F4      [23]  939 	inc	-12 (ix)
   4DE2 20 03         [12]  940 	jr	NZ,00388$
   4DE4 DD 34 F5      [23]  941 	inc	-11 (ix)
   4DE7                     942 00388$:
                            943 ;src/game/game.c:199: if(yCursor>NBTILE_H-1)
   4DE7 3E 0B         [ 7]  944 	ld	a,#0x0B
   4DE9 DD BE F4      [19]  945 	cp	a, -12 (ix)
   4DEC 3E 00         [ 7]  946 	ld	a,#0x00
   4DEE DD 9E F5      [19]  947 	sbc	a, -11 (ix)
   4DF1 E2 F6 4D      [10]  948 	jp	PO, 00389$
   4DF4 EE 80         [ 7]  949 	xor	a, #0x80
   4DF6                     950 00389$:
   4DF6 F2 29 4E      [10]  951 	jp	P,00215$
                            952 ;src/game/game.c:201: yCursor=NBTILE_H-1;
   4DF9 DD 36 F4 0B   [19]  953 	ld	-12 (ix),#0x0B
   4DFD DD 36 F5 00   [19]  954 	ld	-11 (ix),#0x00
                            955 ;src/game/game.c:202: if(uly<HEIGHT-NBTILE_H)
   4E01 DD 7E F9      [19]  956 	ld	a,-7 (ix)
   4E04 D6 24         [ 7]  957 	sub	a, #0x24
   4E06 DD 7E FA      [19]  958 	ld	a,-6 (ix)
   4E09 17            [ 4]  959 	rla
   4E0A 3F            [ 4]  960 	ccf
   4E0B 1F            [ 4]  961 	rra
   4E0C DE 80         [ 7]  962 	sbc	a, #0x80
   4E0E 30 19         [12]  963 	jr	NC,00215$
                            964 ;src/game/game.c:204: uly+=1;
   4E10 DD 34 F9      [23]  965 	inc	-7 (ix)
   4E13 20 03         [12]  966 	jr	NZ,00390$
   4E15 DD 34 FA      [23]  967 	inc	-6 (ix)
   4E18                     968 00390$:
                            969 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4E18 DD 7E F9      [19]  970 	ld	a,-7 (ix)
                            971 ;src/game/game.c:205: drawWorld(ulx, uly);
   4E1B DD 77 FB      [19]  972 	ld	-5 (ix), a
   4E1E F5            [11]  973 	push	af
   4E1F 33            [ 6]  974 	inc	sp
   4E20 DD 7E FF      [19]  975 	ld	a,-1 (ix)
   4E23 F5            [11]  976 	push	af
   4E24 33            [ 6]  977 	inc	sp
   4E25 CD E2 5A      [17]  978 	call	_drawWorld
   4E28 F1            [10]  979 	pop	af
                            980 ;src/game/game.c:210: for(i=0; i<5000; i++) {}
   4E29                     981 00215$:
   4E29 DD 36 F2 88   [19]  982 	ld	-14 (ix),#0x88
   4E2D DD 36 F3 13   [19]  983 	ld	-13 (ix),#0x13
   4E31                     984 00189$:
   4E31 DD 6E F2      [19]  985 	ld	l,-14 (ix)
   4E34 DD 66 F3      [19]  986 	ld	h,-13 (ix)
   4E37 2B            [ 6]  987 	dec	hl
   4E38 DD 75 F2      [19]  988 	ld	-14 (ix),l
   4E3B DD 74 F3      [19]  989 	ld	-13 (ix), h
   4E3E 7C            [ 4]  990 	ld	a, h
   4E3F DD B6 F2      [19]  991 	or	a,-14 (ix)
   4E42 20 ED         [12]  992 	jr	NZ,00189$
   4E44 C3 19 51      [10]  993 	jp	00180$
   4E47                     994 00176$:
                            995 ;src/game/game.c:213: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   4E47 21 01 01      [10]  996 	ld	hl,#0x0101
   4E4A CD 64 73      [17]  997 	call	_cpct_isKeyPressed
   4E4D 7D            [ 4]  998 	ld	a,l
   4E4E B7            [ 4]  999 	or	a, a
   4E4F 28 6F         [12] 1000 	jr	Z,00173$
                           1001 ;src/game/game.c:215: drawTile(ulx, uly, xCursor, yCursor);
   4E51 DD 7E FE      [19] 1002 	ld	a,-2 (ix)
   4E54 F5            [11] 1003 	push	af
   4E55 33            [ 6] 1004 	inc	sp
   4E56 DD 7E FC      [19] 1005 	ld	a,-4 (ix)
   4E59 F5            [11] 1006 	push	af
   4E5A 33            [ 6] 1007 	inc	sp
   4E5B DD 7E FB      [19] 1008 	ld	a,-5 (ix)
   4E5E F5            [11] 1009 	push	af
   4E5F 33            [ 6] 1010 	inc	sp
   4E60 DD 7E FF      [19] 1011 	ld	a,-1 (ix)
   4E63 F5            [11] 1012 	push	af
   4E64 33            [ 6] 1013 	inc	sp
   4E65 CD 21 58      [17] 1014 	call	_drawTile
   4E68 F1            [10] 1015 	pop	af
   4E69 F1            [10] 1016 	pop	af
                           1017 ;src/game/game.c:216: xCursor-=1;
   4E6A DD 6E F0      [19] 1018 	ld	l,-16 (ix)
   4E6D DD 66 F1      [19] 1019 	ld	h,-15 (ix)
   4E70 2B            [ 6] 1020 	dec	hl
   4E71 DD 75 F0      [19] 1021 	ld	-16 (ix),l
   4E74 DD 74 F1      [19] 1022 	ld	-15 (ix),h
                           1023 ;src/game/game.c:217: if(xCursor<0)
   4E77 DD CB F1 7E   [20] 1024 	bit	7, -15 (ix)
   4E7B 28 38         [12] 1025 	jr	Z,00220$
                           1026 ;src/game/game.c:219: xCursor=0;
   4E7D DD 36 F0 00   [19] 1027 	ld	-16 (ix),#0x00
   4E81 DD 36 F1 00   [19] 1028 	ld	-15 (ix),#0x00
                           1029 ;src/game/game.c:220: if(ulx>0)
   4E85 AF            [ 4] 1030 	xor	a, a
   4E86 DD BE F7      [19] 1031 	cp	a, -9 (ix)
   4E89 DD 9E F8      [19] 1032 	sbc	a, -8 (ix)
   4E8C E2 91 4E      [10] 1033 	jp	PO, 00391$
   4E8F EE 80         [ 7] 1034 	xor	a, #0x80
   4E91                    1035 00391$:
   4E91 F2 B5 4E      [10] 1036 	jp	P,00220$
                           1037 ;src/game/game.c:222: ulx-=1;
   4E94 DD 6E F7      [19] 1038 	ld	l,-9 (ix)
   4E97 DD 66 F8      [19] 1039 	ld	h,-8 (ix)
   4E9A 2B            [ 6] 1040 	dec	hl
   4E9B DD 75 F7      [19] 1041 	ld	-9 (ix),l
   4E9E DD 74 F8      [19] 1042 	ld	-8 (ix),h
                           1043 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4EA1 DD 7E F7      [19] 1044 	ld	a,-9 (ix)
   4EA4 DD 77 FF      [19] 1045 	ld	-1 (ix),a
                           1046 ;src/game/game.c:223: drawWorld(ulx, uly);
   4EA7 DD 7E FB      [19] 1047 	ld	a,-5 (ix)
   4EAA F5            [11] 1048 	push	af
   4EAB 33            [ 6] 1049 	inc	sp
   4EAC DD 7E FF      [19] 1050 	ld	a,-1 (ix)
   4EAF F5            [11] 1051 	push	af
   4EB0 33            [ 6] 1052 	inc	sp
   4EB1 CD E2 5A      [17] 1053 	call	_drawWorld
   4EB4 F1            [10] 1054 	pop	af
                           1055 ;src/game/game.c:228: for(i=0; i<14000; i++) {}
   4EB5                    1056 00220$:
   4EB5 21 B0 36      [10] 1057 	ld	hl,#0x36B0
   4EB8                    1058 00192$:
   4EB8 2B            [ 6] 1059 	dec	hl
   4EB9 7C            [ 4] 1060 	ld	a,h
   4EBA B5            [ 4] 1061 	or	a,l
   4EBB 20 FB         [12] 1062 	jr	NZ,00192$
   4EBD C3 19 51      [10] 1063 	jp	00180$
   4EC0                    1064 00173$:
                           1065 ;src/game/game.c:231: else if ( cpct_isKeyPressed(Key_CursorRight) )
   4EC0 21 00 02      [10] 1066 	ld	hl,#0x0200
   4EC3 CD 64 73      [17] 1067 	call	_cpct_isKeyPressed
   4EC6 7D            [ 4] 1068 	ld	a,l
   4EC7 B7            [ 4] 1069 	or	a, a
   4EC8 28 71         [12] 1070 	jr	Z,00170$
                           1071 ;src/game/game.c:233: drawTile(ulx, uly, xCursor, yCursor);
   4ECA DD 7E FE      [19] 1072 	ld	a,-2 (ix)
   4ECD F5            [11] 1073 	push	af
   4ECE 33            [ 6] 1074 	inc	sp
   4ECF DD 7E FC      [19] 1075 	ld	a,-4 (ix)
   4ED2 F5            [11] 1076 	push	af
   4ED3 33            [ 6] 1077 	inc	sp
   4ED4 DD 7E FB      [19] 1078 	ld	a,-5 (ix)
   4ED7 F5            [11] 1079 	push	af
   4ED8 33            [ 6] 1080 	inc	sp
   4ED9 DD 7E FF      [19] 1081 	ld	a,-1 (ix)
   4EDC F5            [11] 1082 	push	af
   4EDD 33            [ 6] 1083 	inc	sp
   4EDE CD 21 58      [17] 1084 	call	_drawTile
   4EE1 F1            [10] 1085 	pop	af
   4EE2 F1            [10] 1086 	pop	af
                           1087 ;src/game/game.c:234: xCursor+=1;
   4EE3 DD 34 F0      [23] 1088 	inc	-16 (ix)
   4EE6 20 03         [12] 1089 	jr	NZ,00392$
   4EE8 DD 34 F1      [23] 1090 	inc	-15 (ix)
   4EEB                    1091 00392$:
                           1092 ;src/game/game.c:235: if(xCursor>NBTILE_W-1)
   4EEB 3E 13         [ 7] 1093 	ld	a,#0x13
   4EED DD BE F0      [19] 1094 	cp	a, -16 (ix)
   4EF0 3E 00         [ 7] 1095 	ld	a,#0x00
   4EF2 DD 9E F1      [19] 1096 	sbc	a, -15 (ix)
   4EF5 E2 FA 4E      [10] 1097 	jp	PO, 00393$
   4EF8 EE 80         [ 7] 1098 	xor	a, #0x80
   4EFA                    1099 00393$:
   4EFA F2 30 4F      [10] 1100 	jp	P,00225$
                           1101 ;src/game/game.c:237: xCursor=NBTILE_W-1;
   4EFD DD 36 F0 13   [19] 1102 	ld	-16 (ix),#0x13
   4F01 DD 36 F1 00   [19] 1103 	ld	-15 (ix),#0x00
                           1104 ;src/game/game.c:238: if(ulx<WIDTH-NBTILE_W)
   4F05 DD 7E F7      [19] 1105 	ld	a,-9 (ix)
   4F08 D6 3C         [ 7] 1106 	sub	a, #0x3C
   4F0A DD 7E F8      [19] 1107 	ld	a,-8 (ix)
   4F0D 17            [ 4] 1108 	rla
   4F0E 3F            [ 4] 1109 	ccf
   4F0F 1F            [ 4] 1110 	rra
   4F10 DE 80         [ 7] 1111 	sbc	a, #0x80
   4F12 30 1C         [12] 1112 	jr	NC,00225$
                           1113 ;src/game/game.c:240: ulx+=1;
   4F14 DD 34 F7      [23] 1114 	inc	-9 (ix)
   4F17 20 03         [12] 1115 	jr	NZ,00394$
   4F19 DD 34 F8      [23] 1116 	inc	-8 (ix)
   4F1C                    1117 00394$:
                           1118 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4F1C DD 7E F7      [19] 1119 	ld	a,-9 (ix)
   4F1F DD 77 FF      [19] 1120 	ld	-1 (ix),a
                           1121 ;src/game/game.c:241: drawWorld(ulx, uly);
   4F22 DD 7E FB      [19] 1122 	ld	a,-5 (ix)
   4F25 F5            [11] 1123 	push	af
   4F26 33            [ 6] 1124 	inc	sp
   4F27 DD 7E FF      [19] 1125 	ld	a,-1 (ix)
   4F2A F5            [11] 1126 	push	af
   4F2B 33            [ 6] 1127 	inc	sp
   4F2C CD E2 5A      [17] 1128 	call	_drawWorld
   4F2F F1            [10] 1129 	pop	af
                           1130 ;src/game/game.c:246: for(i=0; i<14000; i++) {}
   4F30                    1131 00225$:
   4F30 21 B0 36      [10] 1132 	ld	hl,#0x36B0
   4F33                    1133 00195$:
   4F33 2B            [ 6] 1134 	dec	hl
   4F34 7C            [ 4] 1135 	ld	a,h
   4F35 B5            [ 4] 1136 	or	a,l
   4F36 20 FB         [12] 1137 	jr	NZ,00195$
   4F38 C3 19 51      [10] 1138 	jp	00180$
   4F3B                    1139 00170$:
                           1140 ;src/game/game.c:250: else if ( cpct_isKeyPressed(Key_Space) )
   4F3B 21 05 80      [10] 1141 	ld	hl,#0x8005
   4F3E CD 64 73      [17] 1142 	call	_cpct_isKeyPressed
   4F41 7D            [ 4] 1143 	ld	a,l
   4F42 B7            [ 4] 1144 	or	a, a
   4F43 CA C1 4F      [10] 1145 	jp	Z,00167$
                           1146 ;src/game/game.c:252: if(CURSOR_MODE==T_SSNS)
   4F46 3A DE 89      [13] 1147 	ld	a,(#_CURSOR_MODE + 0)
   4F49 3D            [ 4] 1148 	dec	a
   4F4A 20 07         [12] 1149 	jr	NZ,00143$
                           1150 ;src/game/game.c:253: CURSOR_MODE=T_SSEW;
   4F4C 21 DE 89      [10] 1151 	ld	hl,#_CURSOR_MODE + 0
   4F4F 36 02         [10] 1152 	ld	(hl), #0x02
   4F51 18 63         [12] 1153 	jr	00237$
   4F53                    1154 00143$:
                           1155 ;src/game/game.c:254: else if(CURSOR_MODE==T_SSEW)
   4F53 3A DE 89      [13] 1156 	ld	a,(#_CURSOR_MODE + 0)
   4F56 D6 02         [ 7] 1157 	sub	a, #0x02
   4F58 20 07         [12] 1158 	jr	NZ,00140$
                           1159 ;src/game/game.c:255: CURSOR_MODE=T_SSNS;
   4F5A 21 DE 89      [10] 1160 	ld	hl,#_CURSOR_MODE + 0
   4F5D 36 01         [10] 1161 	ld	(hl), #0x01
   4F5F 18 55         [12] 1162 	jr	00237$
   4F61                    1163 00140$:
                           1164 ;src/game/game.c:256: else if(CURSOR_MODE==T_SMNS)
   4F61 3A DE 89      [13] 1165 	ld	a,(#_CURSOR_MODE + 0)
   4F64 D6 03         [ 7] 1166 	sub	a, #0x03
   4F66 20 07         [12] 1167 	jr	NZ,00137$
                           1168 ;src/game/game.c:257: CURSOR_MODE=T_SMEW;
   4F68 21 DE 89      [10] 1169 	ld	hl,#_CURSOR_MODE + 0
   4F6B 36 04         [10] 1170 	ld	(hl), #0x04
   4F6D 18 47         [12] 1171 	jr	00237$
   4F6F                    1172 00137$:
                           1173 ;src/game/game.c:258: else if(CURSOR_MODE==T_SMEW)
   4F6F 3A DE 89      [13] 1174 	ld	a,(#_CURSOR_MODE + 0)
   4F72 D6 04         [ 7] 1175 	sub	a, #0x04
   4F74 20 07         [12] 1176 	jr	NZ,00134$
                           1177 ;src/game/game.c:259: CURSOR_MODE=T_SMNS;
   4F76 21 DE 89      [10] 1178 	ld	hl,#_CURSOR_MODE + 0
   4F79 36 03         [10] 1179 	ld	(hl), #0x03
   4F7B 18 39         [12] 1180 	jr	00237$
   4F7D                    1181 00134$:
                           1182 ;src/game/game.c:260: else if(CURSOR_MODE==T_SLNS)
   4F7D 3A DE 89      [13] 1183 	ld	a,(#_CURSOR_MODE + 0)
   4F80 D6 05         [ 7] 1184 	sub	a, #0x05
   4F82 20 07         [12] 1185 	jr	NZ,00131$
                           1186 ;src/game/game.c:261: CURSOR_MODE=T_SLEW;
   4F84 21 DE 89      [10] 1187 	ld	hl,#_CURSOR_MODE + 0
   4F87 36 06         [10] 1188 	ld	(hl), #0x06
   4F89 18 2B         [12] 1189 	jr	00237$
   4F8B                    1190 00131$:
                           1191 ;src/game/game.c:262: else if(CURSOR_MODE==T_SLEW)
   4F8B 3A DE 89      [13] 1192 	ld	a,(#_CURSOR_MODE + 0)
   4F8E D6 06         [ 7] 1193 	sub	a, #0x06
   4F90 20 07         [12] 1194 	jr	NZ,00128$
                           1195 ;src/game/game.c:263: CURSOR_MODE=T_SLNS;
   4F92 21 DE 89      [10] 1196 	ld	hl,#_CURSOR_MODE + 0
   4F95 36 05         [10] 1197 	ld	(hl), #0x05
   4F97 18 1D         [12] 1198 	jr	00237$
   4F99                    1199 00128$:
                           1200 ;src/game/game.c:264: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   4F99 3A DE 89      [13] 1201 	ld	a,(#_CURSOR_MODE + 0)
   4F9C FE 07         [ 7] 1202 	cp	a,#0x07
   4F9E 38 0A         [12] 1203 	jr	C,00124$
   4FA0 D6 10         [ 7] 1204 	sub	a, #0x10
   4FA2 30 06         [12] 1205 	jr	NC,00124$
                           1206 ;src/game/game.c:265: CURSOR_MODE+=1;
   4FA4 21 DE 89      [10] 1207 	ld	hl, #_CURSOR_MODE+0
   4FA7 34            [11] 1208 	inc	(hl)
   4FA8 18 0C         [12] 1209 	jr	00237$
   4FAA                    1210 00124$:
                           1211 ;src/game/game.c:266: else if(CURSOR_MODE==T_RNSW)
   4FAA 3A DE 89      [13] 1212 	ld	a,(#_CURSOR_MODE + 0)
   4FAD D6 10         [ 7] 1213 	sub	a, #0x10
   4FAF 20 05         [12] 1214 	jr	NZ,00237$
                           1215 ;src/game/game.c:267: CURSOR_MODE=T_REW;
   4FB1 21 DE 89      [10] 1216 	ld	hl,#_CURSOR_MODE + 0
   4FB4 36 07         [10] 1217 	ld	(hl), #0x07
                           1218 ;src/game/game.c:269: for(i=0; i<14000; i++) {}
   4FB6                    1219 00237$:
   4FB6 21 B0 36      [10] 1220 	ld	hl,#0x36B0
   4FB9                    1221 00198$:
   4FB9 2B            [ 6] 1222 	dec	hl
   4FBA 7C            [ 4] 1223 	ld	a,h
   4FBB B5            [ 4] 1224 	or	a,l
   4FBC 20 FB         [12] 1225 	jr	NZ,00198$
   4FBE C3 19 51      [10] 1226 	jp	00180$
   4FC1                    1227 00167$:
                           1228 ;src/game/game.c:272: else if ( cpct_isKeyPressed(Key_Esc) )
   4FC1 21 08 04      [10] 1229 	ld	hl,#0x0408
   4FC4 CD 64 73      [17] 1230 	call	_cpct_isKeyPressed
   4FC7 7D            [ 4] 1231 	ld	a,l
   4FC8 B7            [ 4] 1232 	or	a, a
   4FC9 CA 60 50      [10] 1233 	jp	Z,00164$
                           1234 ;src/game/game.c:275: if(CURSOR_MODE==NONE)
   4FCC 3A DE 89      [13] 1235 	ld	a,(#_CURSOR_MODE + 0)
   4FCF B7            [ 4] 1236 	or	a, a
   4FD0 20 62         [12] 1237 	jr	NZ,00150$
                           1238 ;src/game/game.c:278: const char *txtWindowQuit[] = { 
   4FD2 21 00 00      [10] 1239 	ld	hl,#0x0000
   4FD5 39            [11] 1240 	add	hl,sp
   4FD6 5D            [ 4] 1241 	ld	e,l
   4FD7 54            [ 4] 1242 	ld	d,h
   4FD8 36 45         [10] 1243 	ld	(hl),#<(___str_30)
   4FDA 23            [ 6] 1244 	inc	hl
   4FDB 36 51         [10] 1245 	ld	(hl),#>(___str_30)
   4FDD 6B            [ 4] 1246 	ld	l, e
   4FDE 62            [ 4] 1247 	ld	h, d
   4FDF 23            [ 6] 1248 	inc	hl
   4FE0 23            [ 6] 1249 	inc	hl
   4FE1 36 53         [10] 1250 	ld	(hl),#<(___str_31)
   4FE3 23            [ 6] 1251 	inc	hl
   4FE4 36 51         [10] 1252 	ld	(hl),#>(___str_31)
   4FE6 21 04 00      [10] 1253 	ld	hl,#0x0004
   4FE9 19            [11] 1254 	add	hl,de
   4FEA 36 54         [10] 1255 	ld	(hl),#<(___str_32)
   4FEC 23            [ 6] 1256 	inc	hl
   4FED 36 51         [10] 1257 	ld	(hl),#>(___str_32)
                           1258 ;src/game/game.c:284: putM2();
   4FEF D5            [11] 1259 	push	de
   4FF0 CD 42 5B      [17] 1260 	call	_putM2
   4FF3 D1            [10] 1261 	pop	de
                           1262 ;src/game/game.c:285: if(	drawWindow(txtWindowQuit,3,1) == 1)
   4FF4 21 03 01      [10] 1263 	ld	hl,#0x0103
   4FF7 E5            [11] 1264 	push	hl
   4FF8 D5            [11] 1265 	push	de
   4FF9 CD 46 60      [17] 1266 	call	_drawWindow
   4FFC F1            [10] 1267 	pop	af
   4FFD F1            [10] 1268 	pop	af
   4FFE 2D            [ 4] 1269 	dec	l
   4FFF 20 06         [12] 1270 	jr	NZ,00147$
                           1271 ;src/game/game.c:286: exit=1;
   5001 DD 36 F6 01   [19] 1272 	ld	-10 (ix),#0x01
   5005 18 4E         [12] 1273 	jr	00242$
   5007                    1274 00147$:
                           1275 ;src/game/game.c:289: putM1();
   5007 CD 2E 5B      [17] 1276 	call	_putM1
                           1277 ;src/game/game.c:290: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   500A 21 00 00      [10] 1278 	ld	hl,#0x0000
   500D E5            [11] 1279 	push	hl
   500E 2E 00         [ 7] 1280 	ld	l, #0x00
   5010 E5            [11] 1281 	push	hl
   5011 CD C4 78      [17] 1282 	call	_cpct_px2byteM1
   5014 F1            [10] 1283 	pop	af
   5015 F1            [10] 1284 	pop	af
   5016 65            [ 4] 1285 	ld	h,l
   5017 01 00 40      [10] 1286 	ld	bc,#0x4000
   501A C5            [11] 1287 	push	bc
   501B E5            [11] 1288 	push	hl
   501C 33            [ 6] 1289 	inc	sp
   501D 21 00 C0      [10] 1290 	ld	hl,#0xC000
   5020 E5            [11] 1291 	push	hl
   5021 CD B6 78      [17] 1292 	call	_cpct_memset
                           1293 ;src/game/game.c:291: drawWorld(ulx, uly);
   5024 DD 7E FB      [19] 1294 	ld	a,-5 (ix)
   5027 F5            [11] 1295 	push	af
   5028 33            [ 6] 1296 	inc	sp
   5029 DD 7E FF      [19] 1297 	ld	a,-1 (ix)
   502C F5            [11] 1298 	push	af
   502D 33            [ 6] 1299 	inc	sp
   502E CD E2 5A      [17] 1300 	call	_drawWorld
   5031 F1            [10] 1301 	pop	af
   5032 18 21         [12] 1302 	jr	00242$
   5034                    1303 00150$:
                           1304 ;src/game/game.c:296: CURSOR_MODE=NONE;
   5034 FD 21 DE 89   [14] 1305 	ld	iy,#_CURSOR_MODE
   5038 FD 36 00 00   [19] 1306 	ld	0 (iy),#0x00
                           1307 ;src/game/game.c:297: drawTile(ulx, uly, xCursor, yCursor);
   503C DD 7E FE      [19] 1308 	ld	a,-2 (ix)
   503F F5            [11] 1309 	push	af
   5040 33            [ 6] 1310 	inc	sp
   5041 DD 7E FC      [19] 1311 	ld	a,-4 (ix)
   5044 F5            [11] 1312 	push	af
   5045 33            [ 6] 1313 	inc	sp
   5046 DD 7E FB      [19] 1314 	ld	a,-5 (ix)
   5049 F5            [11] 1315 	push	af
   504A 33            [ 6] 1316 	inc	sp
   504B DD 7E FF      [19] 1317 	ld	a,-1 (ix)
   504E F5            [11] 1318 	push	af
   504F 33            [ 6] 1319 	inc	sp
   5050 CD 21 58      [17] 1320 	call	_drawTile
   5053 F1            [10] 1321 	pop	af
   5054 F1            [10] 1322 	pop	af
                           1323 ;src/game/game.c:301: for(i=0; i<14000; i++) {}
   5055                    1324 00242$:
   5055 01 B0 36      [10] 1325 	ld	bc,#0x36B0
   5058                    1326 00201$:
   5058 0B            [ 6] 1327 	dec	bc
   5059 78            [ 4] 1328 	ld	a,b
   505A B1            [ 4] 1329 	or	a,c
   505B 20 FB         [12] 1330 	jr	NZ,00201$
   505D C3 19 51      [10] 1331 	jp	00180$
   5060                    1332 00164$:
                           1333 ;src/game/game.c:304: else if ( cpct_isKeyPressed(Key_Return) )
   5060 21 02 04      [10] 1334 	ld	hl,#0x0402
   5063 CD 64 73      [17] 1335 	call	_cpct_isKeyPressed
   5066 7D            [ 4] 1336 	ld	a,l
   5067 B7            [ 4] 1337 	or	a, a
   5068 CA 19 51      [10] 1338 	jp	Z,00180$
                           1339 ;src/game/game.c:307: if(CURSOR_MODE==NONE)
   506B 3A DE 89      [13] 1340 	ld	a,(#_CURSOR_MODE + 0)
   506E B7            [ 4] 1341 	or	a, a
   506F 20 42         [12] 1342 	jr	NZ,00158$
                           1343 ;src/game/game.c:309: menuTile(ulx+xCursor, uly+yCursor);
   5071 DD 7E F9      [19] 1344 	ld	a, -7 (ix)
   5074 DD 6E F4      [19] 1345 	ld	l, -12 (ix)
   5077 85            [ 4] 1346 	add	a, l
   5078 67            [ 4] 1347 	ld	h,a
   5079 DD 6E F7      [19] 1348 	ld	l,-9 (ix)
   507C DD 56 F0      [19] 1349 	ld	d,-16 (ix)
   507F 7D            [ 4] 1350 	ld	a,l
   5080 82            [ 4] 1351 	add	a, d
   5081 E5            [11] 1352 	push	hl
   5082 33            [ 6] 1353 	inc	sp
   5083 F5            [11] 1354 	push	af
   5084 33            [ 6] 1355 	inc	sp
   5085 CD D1 4A      [17] 1356 	call	_menuTile
   5088 F1            [10] 1357 	pop	af
                           1358 ;src/game/game.c:310: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5089 21 00 00      [10] 1359 	ld	hl,#0x0000
   508C E5            [11] 1360 	push	hl
   508D 2E 00         [ 7] 1361 	ld	l, #0x00
   508F E5            [11] 1362 	push	hl
   5090 CD C4 78      [17] 1363 	call	_cpct_px2byteM1
   5093 F1            [10] 1364 	pop	af
   5094 F1            [10] 1365 	pop	af
   5095 65            [ 4] 1366 	ld	h,l
   5096 01 00 40      [10] 1367 	ld	bc,#0x4000
   5099 C5            [11] 1368 	push	bc
   509A E5            [11] 1369 	push	hl
   509B 33            [ 6] 1370 	inc	sp
   509C 21 00 C0      [10] 1371 	ld	hl,#0xC000
   509F E5            [11] 1372 	push	hl
   50A0 CD B6 78      [17] 1373 	call	_cpct_memset
                           1374 ;src/game/game.c:311: drawWorld(ulx, uly);
   50A3 DD 7E FB      [19] 1375 	ld	a,-5 (ix)
   50A6 F5            [11] 1376 	push	af
   50A7 33            [ 6] 1377 	inc	sp
   50A8 DD 7E FF      [19] 1378 	ld	a,-1 (ix)
   50AB F5            [11] 1379 	push	af
   50AC 33            [ 6] 1380 	inc	sp
   50AD CD E2 5A      [17] 1381 	call	_drawWorld
   50B0 F1            [10] 1382 	pop	af
   50B1 18 4B         [12] 1383 	jr	00248$
   50B3                    1384 00158$:
                           1385 ;src/game/game.c:314: else if(CURSOR_MODE>=T_SSNS)
   50B3 3A DE 89      [13] 1386 	ld	a,(#_CURSOR_MODE + 0)
   50B6 D6 01         [ 7] 1387 	sub	a, #0x01
   50B8 38 44         [12] 1388 	jr	C,00248$
                           1389 ;src/game/game.c:316: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   50BA DD 7E F7      [19] 1390 	ld	a,-9 (ix)
   50BD DD 86 F0      [19] 1391 	add	a, -16 (ix)
   50C0 5F            [ 4] 1392 	ld	e,a
   50C1 DD 7E F8      [19] 1393 	ld	a,-8 (ix)
   50C4 DD 8E F1      [19] 1394 	adc	a, -15 (ix)
   50C7 57            [ 4] 1395 	ld	d,a
   50C8 DD 7E F9      [19] 1396 	ld	a,-7 (ix)
   50CB DD 86 F4      [19] 1397 	add	a, -12 (ix)
   50CE 6F            [ 4] 1398 	ld	l,a
   50CF DD 7E FA      [19] 1399 	ld	a,-6 (ix)
   50D2 DD 8E F5      [19] 1400 	adc	a, -11 (ix)
   50D5 67            [ 4] 1401 	ld	h,a
   50D6 4D            [ 4] 1402 	ld	c, l
   50D7 44            [ 4] 1403 	ld	b, h
   50D8 29            [11] 1404 	add	hl, hl
   50D9 29            [11] 1405 	add	hl, hl
   50DA 09            [11] 1406 	add	hl, bc
   50DB 29            [11] 1407 	add	hl, hl
   50DC 29            [11] 1408 	add	hl, hl
   50DD 29            [11] 1409 	add	hl, hl
   50DE 29            [11] 1410 	add	hl, hl
   50DF 19            [11] 1411 	add	hl,de
   50E0 3E DA         [ 7] 1412 	ld	a,#<(_p_world)
   50E2 85            [ 4] 1413 	add	a, l
   50E3 5F            [ 4] 1414 	ld	e,a
   50E4 3E 7A         [ 7] 1415 	ld	a,#>(_p_world)
   50E6 8C            [ 4] 1416 	adc	a, h
   50E7 57            [ 4] 1417 	ld	d,a
   50E8 3A DE 89      [13] 1418 	ld	a,(#_CURSOR_MODE + 0)
   50EB C6 09         [ 7] 1419 	add	a, #0x09
   50ED 12            [ 7] 1420 	ld	(de),a
                           1421 ;src/game/game.c:319: if(CURSOR_MODE<=T_SLEW)
   50EE 3E 06         [ 7] 1422 	ld	a,#0x06
   50F0 FD 21 DE 89   [14] 1423 	ld	iy,#_CURSOR_MODE
   50F4 FD 96 00      [19] 1424 	sub	a, 0 (iy)
   50F7 38 05         [12] 1425 	jr	C,00248$
                           1426 ;src/game/game.c:320: CURSOR_MODE=NONE;
   50F9 21 DE 89      [10] 1427 	ld	hl,#_CURSOR_MODE + 0
   50FC 36 00         [10] 1428 	ld	(hl), #0x00
                           1429 ;src/game/game.c:324: for(i=0; i<14000; i++) {}
   50FE                    1430 00248$:
   50FE DD 36 F2 B0   [19] 1431 	ld	-14 (ix),#0xB0
   5102 DD 36 F3 36   [19] 1432 	ld	-13 (ix),#0x36
   5106                    1433 00204$:
   5106 DD 6E F2      [19] 1434 	ld	l,-14 (ix)
   5109 DD 66 F3      [19] 1435 	ld	h,-13 (ix)
   510C 2B            [ 6] 1436 	dec	hl
   510D DD 75 F2      [19] 1437 	ld	-14 (ix),l
   5110 DD 74 F3      [19] 1438 	ld	-13 (ix), h
   5113 7C            [ 4] 1439 	ld	a, h
   5114 DD B6 F2      [19] 1440 	or	a,-14 (ix)
   5117 20 ED         [12] 1441 	jr	NZ,00204$
   5119                    1442 00180$:
                           1443 ;src/game/game.c:328: drawCursor(xCursor, yCursor, 0);
   5119 DD 56 F4      [19] 1444 	ld	d,-12 (ix)
   511C DD 46 F0      [19] 1445 	ld	b,-16 (ix)
   511F AF            [ 4] 1446 	xor	a, a
   5120 F5            [11] 1447 	push	af
   5121 33            [ 6] 1448 	inc	sp
   5122 D5            [11] 1449 	push	de
   5123 33            [ 6] 1450 	inc	sp
   5124 C5            [11] 1451 	push	bc
   5125 33            [ 6] 1452 	inc	sp
   5126 CD 8E 51      [17] 1453 	call	_drawCursor
   5129 F1            [10] 1454 	pop	af
   512A 33            [ 6] 1455 	inc	sp
                           1456 ;src/game/game.c:329: drawScrolls(ulx, uly);
   512B DD 7E FB      [19] 1457 	ld	a,-5 (ix)
   512E F5            [11] 1458 	push	af
   512F 33            [ 6] 1459 	inc	sp
   5130 DD 7E FF      [19] 1460 	ld	a,-1 (ix)
   5133 F5            [11] 1461 	push	af
   5134 33            [ 6] 1462 	inc	sp
   5135 CD 49 5A      [17] 1463 	call	_drawScrolls
   5138 F1            [10] 1464 	pop	af
                           1465 ;src/game/game.c:331: while(!exit);
   5139 DD 7E F6      [19] 1466 	ld	a,-10 (ix)
   513C B7            [ 4] 1467 	or	a, a
   513D CA 11 4D      [10] 1468 	jp	Z,00181$
   5140 DD F9         [10] 1469 	ld	sp, ix
   5142 DD E1         [14] 1470 	pop	ix
   5144 C9            [10] 1471 	ret
   5145                    1472 ___str_30:
   5145 52 65 61 6C 6C 79  1473 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   5152 00                 1474 	.db 0x00
   5153                    1475 ___str_31:
   5153 00                 1476 	.db 0x00
   5154                    1477 ___str_32:
   5154 50 72 65 73 73 20  1478 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   5179 00                 1479 	.db 0x00
   517A                    1480 ___str_33:
   517A 47 65 6E 65 72 61  1481 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   518D 00                 1482 	.db 0x00
                           1483 	.area _CODE
                           1484 	.area _INITIALIZER
                           1485 	.area _CABS (ABS)
