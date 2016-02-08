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
   47F9                      68 _windowInfoTile::
   47F9 DD E5         [15]   69 	push	ix
   47FB DD 21 00 00   [14]   70 	ld	ix,#0
   47FF DD 39         [15]   71 	add	ix,sp
   4801 21 F8 FF      [10]   72 	ld	hl,#-8
   4804 39            [11]   73 	add	hl,sp
   4805 F9            [ 6]   74 	ld	sp,hl
                             75 ;src/game/game.c:7: switch(p_world[y*WIDTH+x])
   4806 DD 4E 05      [19]   76 	ld	c,5 (ix)
   4809 06 00         [ 7]   77 	ld	b,#0x00
   480B 69            [ 4]   78 	ld	l, c
   480C 60            [ 4]   79 	ld	h, b
   480D 29            [11]   80 	add	hl, hl
   480E 29            [11]   81 	add	hl, hl
   480F 09            [11]   82 	add	hl, bc
   4810 29            [11]   83 	add	hl, hl
   4811 29            [11]   84 	add	hl, hl
   4812 29            [11]   85 	add	hl, hl
   4813 29            [11]   86 	add	hl, hl
   4814 DD 5E 04      [19]   87 	ld	e,4 (ix)
   4817 16 00         [ 7]   88 	ld	d,#0x00
   4819 19            [11]   89 	add	hl,de
   481A 11 A6 7B      [10]   90 	ld	de,#_p_world
   481D 19            [11]   91 	add	hl,de
   481E 4E            [ 7]   92 	ld	c,(hl)
   481F 3E 09         [ 7]   93 	ld	a,#0x09
   4821 91            [ 4]   94 	sub	a, c
   4822 DA 53 49      [10]   95 	jp	C,00111$
   4825 59            [ 4]   96 	ld	e,c
   4826 16 00         [ 7]   97 	ld	d,#0x00
   4828 21 2F 48      [10]   98 	ld	hl,#00119$
   482B 19            [11]   99 	add	hl,de
   482C 19            [11]  100 	add	hl,de
   482D 19            [11]  101 	add	hl,de
   482E E9            [ 4]  102 	jp	(hl)
   482F                     103 00119$:
   482F C3 4D 48      [10]  104 	jp	00101$
   4832 C3 4D 48      [10]  105 	jp	00102$
   4835 C3 79 48      [10]  106 	jp	00103$
   4838 C3 79 48      [10]  107 	jp	00104$
   483B C3 79 48      [10]  108 	jp	00105$
   483E C3 A5 48      [10]  109 	jp	00106$
   4841 C3 A5 48      [10]  110 	jp	00107$
   4844 C3 D1 48      [10]  111 	jp	00108$
   4847 C3 FD 48      [10]  112 	jp	00109$
   484A C3 28 49      [10]  113 	jp	00110$
                            114 ;src/game/game.c:9: case GRASS1:
   484D                     115 00101$:
                            116 ;src/game/game.c:10: case GRASS2:
   484D                     117 00102$:
                            118 ;src/game/game.c:11: txtWindowInfoTile[0] = "Grassland";
   484D 21 00 00      [10]  119 	ld	hl,#0x0000
   4850 39            [11]  120 	add	hl,sp
   4851 5D            [ 4]  121 	ld	e,l
   4852 54            [ 4]  122 	ld	d,h
   4853 36 8E         [10]  123 	ld	(hl),#<(___str_0)
   4855 23            [ 6]  124 	inc	hl
   4856 36 49         [10]  125 	ld	(hl),#>(___str_0)
                            126 ;src/game/game.c:12: txtWindowInfoTile[1] = "";
   4858 6B            [ 4]  127 	ld	l, e
   4859 62            [ 4]  128 	ld	h, d
   485A 23            [ 6]  129 	inc	hl
   485B 23            [ 6]  130 	inc	hl
   485C 01 98 49      [10]  131 	ld	bc,#___str_1+0
   485F 71            [ 7]  132 	ld	(hl),c
   4860 23            [ 6]  133 	inc	hl
   4861 70            [ 7]  134 	ld	(hl),b
                            135 ;src/game/game.c:13: txtWindowInfoTile[2] = "Production: Nothing";
   4862 21 04 00      [10]  136 	ld	hl,#0x0004
   4865 19            [11]  137 	add	hl,de
   4866 01 99 49      [10]  138 	ld	bc,#___str_2+0
   4869 71            [ 7]  139 	ld	(hl),c
   486A 23            [ 6]  140 	inc	hl
   486B 70            [ 7]  141 	ld	(hl),b
                            142 ;src/game/game.c:14: txtWindowInfoTile[3] = "Demand: Nothing";
   486C 21 06 00      [10]  143 	ld	hl,#0x0006
   486F 19            [11]  144 	add	hl,de
   4870 11 AD 49      [10]  145 	ld	de,#___str_3+0
   4873 73            [ 7]  146 	ld	(hl),e
   4874 23            [ 6]  147 	inc	hl
   4875 72            [ 7]  148 	ld	(hl),d
                            149 ;src/game/game.c:15: break;
   4876 C3 7C 49      [10]  150 	jp	00112$
                            151 ;src/game/game.c:16: case DWELLINGS1:
   4879                     152 00103$:
                            153 ;src/game/game.c:17: case DWELLINGS2:
   4879                     154 00104$:
                            155 ;src/game/game.c:18: case DWELLINGS3:
   4879                     156 00105$:
                            157 ;src/game/game.c:19: txtWindowInfoTile[0] = "City";
   4879 21 00 00      [10]  158 	ld	hl,#0x0000
   487C 39            [11]  159 	add	hl,sp
   487D 5D            [ 4]  160 	ld	e,l
   487E 54            [ 4]  161 	ld	d,h
   487F 36 BD         [10]  162 	ld	(hl),#<(___str_4)
   4881 23            [ 6]  163 	inc	hl
   4882 36 49         [10]  164 	ld	(hl),#>(___str_4)
                            165 ;src/game/game.c:20: txtWindowInfoTile[1] = "";
   4884 6B            [ 4]  166 	ld	l, e
   4885 62            [ 4]  167 	ld	h, d
   4886 23            [ 6]  168 	inc	hl
   4887 23            [ 6]  169 	inc	hl
   4888 01 98 49      [10]  170 	ld	bc,#___str_1+0
   488B 71            [ 7]  171 	ld	(hl),c
   488C 23            [ 6]  172 	inc	hl
   488D 70            [ 7]  173 	ld	(hl),b
                            174 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   488E 21 04 00      [10]  175 	ld	hl,#0x0004
   4891 19            [11]  176 	add	hl,de
   4892 01 C2 49      [10]  177 	ld	bc,#___str_5+0
   4895 71            [ 7]  178 	ld	(hl),c
   4896 23            [ 6]  179 	inc	hl
   4897 70            [ 7]  180 	ld	(hl),b
                            181 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4898 21 06 00      [10]  182 	ld	hl,#0x0006
   489B 19            [11]  183 	add	hl,de
   489C 11 DF 49      [10]  184 	ld	de,#___str_6+0
   489F 73            [ 7]  185 	ld	(hl),e
   48A0 23            [ 6]  186 	inc	hl
   48A1 72            [ 7]  187 	ld	(hl),d
                            188 ;src/game/game.c:23: break;
   48A2 C3 7C 49      [10]  189 	jp	00112$
                            190 ;src/game/game.c:24: case FARM1:
   48A5                     191 00106$:
                            192 ;src/game/game.c:25: case FARM2:
   48A5                     193 00107$:
                            194 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   48A5 21 00 00      [10]  195 	ld	hl,#0x0000
   48A8 39            [11]  196 	add	hl,sp
   48A9 5D            [ 4]  197 	ld	e,l
   48AA 54            [ 4]  198 	ld	d,h
   48AB 36 04         [10]  199 	ld	(hl),#<(___str_7)
   48AD 23            [ 6]  200 	inc	hl
   48AE 36 4A         [10]  201 	ld	(hl),#>(___str_7)
                            202 ;src/game/game.c:27: txtWindowInfoTile[1] = "";
   48B0 6B            [ 4]  203 	ld	l, e
   48B1 62            [ 4]  204 	ld	h, d
   48B2 23            [ 6]  205 	inc	hl
   48B3 23            [ 6]  206 	inc	hl
   48B4 01 98 49      [10]  207 	ld	bc,#___str_1+0
   48B7 71            [ 7]  208 	ld	(hl),c
   48B8 23            [ 6]  209 	inc	hl
   48B9 70            [ 7]  210 	ld	(hl),b
                            211 ;src/game/game.c:28: txtWindowInfoTile[2] = "Production: Cereal";
   48BA 21 04 00      [10]  212 	ld	hl,#0x0004
   48BD 19            [11]  213 	add	hl,de
   48BE 01 09 4A      [10]  214 	ld	bc,#___str_8+0
   48C1 71            [ 7]  215 	ld	(hl),c
   48C2 23            [ 6]  216 	inc	hl
   48C3 70            [ 7]  217 	ld	(hl),b
                            218 ;src/game/game.c:29: txtWindowInfoTile[3] = "Demand: Nothing";
   48C4 21 06 00      [10]  219 	ld	hl,#0x0006
   48C7 19            [11]  220 	add	hl,de
   48C8 11 AD 49      [10]  221 	ld	de,#___str_3+0
   48CB 73            [ 7]  222 	ld	(hl),e
   48CC 23            [ 6]  223 	inc	hl
   48CD 72            [ 7]  224 	ld	(hl),d
                            225 ;src/game/game.c:30: break;
   48CE C3 7C 49      [10]  226 	jp	00112$
                            227 ;src/game/game.c:31: case WATER:
   48D1                     228 00108$:
                            229 ;src/game/game.c:32: txtWindowInfoTile[0] = "Water";
   48D1 21 00 00      [10]  230 	ld	hl,#0x0000
   48D4 39            [11]  231 	add	hl,sp
   48D5 5D            [ 4]  232 	ld	e,l
   48D6 54            [ 4]  233 	ld	d,h
   48D7 36 1C         [10]  234 	ld	(hl),#<(___str_9)
   48D9 23            [ 6]  235 	inc	hl
   48DA 36 4A         [10]  236 	ld	(hl),#>(___str_9)
                            237 ;src/game/game.c:33: txtWindowInfoTile[1] = "";
   48DC 6B            [ 4]  238 	ld	l, e
   48DD 62            [ 4]  239 	ld	h, d
   48DE 23            [ 6]  240 	inc	hl
   48DF 23            [ 6]  241 	inc	hl
   48E0 01 98 49      [10]  242 	ld	bc,#___str_1+0
   48E3 71            [ 7]  243 	ld	(hl),c
   48E4 23            [ 6]  244 	inc	hl
   48E5 70            [ 7]  245 	ld	(hl),b
                            246 ;src/game/game.c:34: txtWindowInfoTile[2] = "Production: Nothing";
   48E6 21 04 00      [10]  247 	ld	hl,#0x0004
   48E9 19            [11]  248 	add	hl,de
   48EA 01 99 49      [10]  249 	ld	bc,#___str_2+0
   48ED 71            [ 7]  250 	ld	(hl),c
   48EE 23            [ 6]  251 	inc	hl
   48EF 70            [ 7]  252 	ld	(hl),b
                            253 ;src/game/game.c:35: txtWindowInfoTile[3] = "Demand: Nothing";
   48F0 21 06 00      [10]  254 	ld	hl,#0x0006
   48F3 19            [11]  255 	add	hl,de
   48F4 11 AD 49      [10]  256 	ld	de,#___str_3+0
   48F7 73            [ 7]  257 	ld	(hl),e
   48F8 23            [ 6]  258 	inc	hl
   48F9 72            [ 7]  259 	ld	(hl),d
                            260 ;src/game/game.c:36: break;
   48FA C3 7C 49      [10]  261 	jp	00112$
                            262 ;src/game/game.c:37: case FOREST:
   48FD                     263 00109$:
                            264 ;src/game/game.c:38: txtWindowInfoTile[0] = "Forest";
   48FD 21 00 00      [10]  265 	ld	hl,#0x0000
   4900 39            [11]  266 	add	hl,sp
   4901 5D            [ 4]  267 	ld	e,l
   4902 54            [ 4]  268 	ld	d,h
   4903 36 22         [10]  269 	ld	(hl),#<(___str_10)
   4905 23            [ 6]  270 	inc	hl
   4906 36 4A         [10]  271 	ld	(hl),#>(___str_10)
                            272 ;src/game/game.c:39: txtWindowInfoTile[1] = "";
   4908 6B            [ 4]  273 	ld	l, e
   4909 62            [ 4]  274 	ld	h, d
   490A 23            [ 6]  275 	inc	hl
   490B 23            [ 6]  276 	inc	hl
   490C 01 98 49      [10]  277 	ld	bc,#___str_1+0
   490F 71            [ 7]  278 	ld	(hl),c
   4910 23            [ 6]  279 	inc	hl
   4911 70            [ 7]  280 	ld	(hl),b
                            281 ;src/game/game.c:40: txtWindowInfoTile[2] = "Production: Nothing";
   4912 21 04 00      [10]  282 	ld	hl,#0x0004
   4915 19            [11]  283 	add	hl,de
   4916 01 99 49      [10]  284 	ld	bc,#___str_2+0
   4919 71            [ 7]  285 	ld	(hl),c
   491A 23            [ 6]  286 	inc	hl
   491B 70            [ 7]  287 	ld	(hl),b
                            288 ;src/game/game.c:41: txtWindowInfoTile[3] = "Demand: Nothing";
   491C 21 06 00      [10]  289 	ld	hl,#0x0006
   491F 19            [11]  290 	add	hl,de
   4920 11 AD 49      [10]  291 	ld	de,#___str_3+0
   4923 73            [ 7]  292 	ld	(hl),e
   4924 23            [ 6]  293 	inc	hl
   4925 72            [ 7]  294 	ld	(hl),d
                            295 ;src/game/game.c:42: break;
   4926 18 54         [12]  296 	jr	00112$
                            297 ;src/game/game.c:43: case LIVESTOCK:
   4928                     298 00110$:
                            299 ;src/game/game.c:44: txtWindowInfoTile[0] = "Livestock farming";
   4928 21 00 00      [10]  300 	ld	hl,#0x0000
   492B 39            [11]  301 	add	hl,sp
   492C 5D            [ 4]  302 	ld	e,l
   492D 54            [ 4]  303 	ld	d,h
   492E 36 29         [10]  304 	ld	(hl),#<(___str_11)
   4930 23            [ 6]  305 	inc	hl
   4931 36 4A         [10]  306 	ld	(hl),#>(___str_11)
                            307 ;src/game/game.c:45: txtWindowInfoTile[1] = "";
   4933 6B            [ 4]  308 	ld	l, e
   4934 62            [ 4]  309 	ld	h, d
   4935 23            [ 6]  310 	inc	hl
   4936 23            [ 6]  311 	inc	hl
   4937 01 98 49      [10]  312 	ld	bc,#___str_1+0
   493A 71            [ 7]  313 	ld	(hl),c
   493B 23            [ 6]  314 	inc	hl
   493C 70            [ 7]  315 	ld	(hl),b
                            316 ;src/game/game.c:46: txtWindowInfoTile[2] = "Production: Livestock, wool";
   493D 21 04 00      [10]  317 	ld	hl,#0x0004
   4940 19            [11]  318 	add	hl,de
   4941 01 3B 4A      [10]  319 	ld	bc,#___str_12+0
   4944 71            [ 7]  320 	ld	(hl),c
   4945 23            [ 6]  321 	inc	hl
   4946 70            [ 7]  322 	ld	(hl),b
                            323 ;src/game/game.c:47: txtWindowInfoTile[3] = "Demand: Cereal";
   4947 21 06 00      [10]  324 	ld	hl,#0x0006
   494A 19            [11]  325 	add	hl,de
   494B 11 57 4A      [10]  326 	ld	de,#___str_13+0
   494E 73            [ 7]  327 	ld	(hl),e
   494F 23            [ 6]  328 	inc	hl
   4950 72            [ 7]  329 	ld	(hl),d
                            330 ;src/game/game.c:48: break;
   4951 18 29         [12]  331 	jr	00112$
                            332 ;src/game/game.c:49: default:
   4953                     333 00111$:
                            334 ;src/game/game.c:50: txtWindowInfoTile[0] = "Not yet implemented";
   4953 21 00 00      [10]  335 	ld	hl,#0x0000
   4956 39            [11]  336 	add	hl,sp
   4957 5D            [ 4]  337 	ld	e,l
   4958 54            [ 4]  338 	ld	d,h
   4959 36 66         [10]  339 	ld	(hl),#<(___str_14)
   495B 23            [ 6]  340 	inc	hl
   495C 36 4A         [10]  341 	ld	(hl),#>(___str_14)
                            342 ;src/game/game.c:51: txtWindowInfoTile[1] = "";
   495E 6B            [ 4]  343 	ld	l, e
   495F 62            [ 4]  344 	ld	h, d
   4960 23            [ 6]  345 	inc	hl
   4961 23            [ 6]  346 	inc	hl
   4962 01 98 49      [10]  347 	ld	bc,#___str_1+0
   4965 71            [ 7]  348 	ld	(hl),c
   4966 23            [ 6]  349 	inc	hl
   4967 70            [ 7]  350 	ld	(hl),b
                            351 ;src/game/game.c:52: txtWindowInfoTile[2] = "Production: ?";
   4968 21 04 00      [10]  352 	ld	hl,#0x0004
   496B 19            [11]  353 	add	hl,de
   496C 01 7A 4A      [10]  354 	ld	bc,#___str_15+0
   496F 71            [ 7]  355 	ld	(hl),c
   4970 23            [ 6]  356 	inc	hl
   4971 70            [ 7]  357 	ld	(hl),b
                            358 ;src/game/game.c:53: txtWindowInfoTile[3] = "Demand: ?";
   4972 21 06 00      [10]  359 	ld	hl,#0x0006
   4975 19            [11]  360 	add	hl,de
   4976 11 88 4A      [10]  361 	ld	de,#___str_16+0
   4979 73            [ 7]  362 	ld	(hl),e
   497A 23            [ 6]  363 	inc	hl
   497B 72            [ 7]  364 	ld	(hl),d
                            365 ;src/game/game.c:55: }
   497C                     366 00112$:
                            367 ;src/game/game.c:57: drawWindow(txtWindowInfoTile, 4, 0);
   497C 21 00 00      [10]  368 	ld	hl,#0x0000
   497F 39            [11]  369 	add	hl,sp
   4980 EB            [ 4]  370 	ex	de,hl
   4981 21 04 00      [10]  371 	ld	hl,#0x0004
   4984 E5            [11]  372 	push	hl
   4985 D5            [11]  373 	push	de
   4986 CD 7C 60      [17]  374 	call	_drawWindow
   4989 DD F9         [10]  375 	ld	sp,ix
   498B DD E1         [14]  376 	pop	ix
   498D C9            [10]  377 	ret
   498E                     378 ___str_0:
   498E 47 72 61 73 73 6C   379 	.ascii "Grassland"
        61 6E 64
   4997 00                  380 	.db 0x00
   4998                     381 ___str_1:
   4998 00                  382 	.db 0x00
   4999                     383 ___str_2:
   4999 50 72 6F 64 75 63   384 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   49AC 00                  385 	.db 0x00
   49AD                     386 ___str_3:
   49AD 44 65 6D 61 6E 64   387 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   49BC 00                  388 	.db 0x00
   49BD                     389 ___str_4:
   49BD 43 69 74 79         390 	.ascii "City"
   49C1 00                  391 	.db 0x00
   49C2                     392 ___str_5:
   49C2 50 72 6F 64 75 63   393 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   49DE 00                  394 	.db 0x00
   49DF                     395 ___str_6:
   49DF 44 65 6D 61 6E 64   396 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   4A03 00                  397 	.db 0x00
   4A04                     398 ___str_7:
   4A04 46 61 72 6D         399 	.ascii "Farm"
   4A08 00                  400 	.db 0x00
   4A09                     401 ___str_8:
   4A09 50 72 6F 64 75 63   402 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   4A1B 00                  403 	.db 0x00
   4A1C                     404 ___str_9:
   4A1C 57 61 74 65 72      405 	.ascii "Water"
   4A21 00                  406 	.db 0x00
   4A22                     407 ___str_10:
   4A22 46 6F 72 65 73 74   408 	.ascii "Forest"
   4A28 00                  409 	.db 0x00
   4A29                     410 ___str_11:
   4A29 4C 69 76 65 73 74   411 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   4A3A 00                  412 	.db 0x00
   4A3B                     413 ___str_12:
   4A3B 50 72 6F 64 75 63   414 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   4A56 00                  415 	.db 0x00
   4A57                     416 ___str_13:
   4A57 44 65 6D 61 6E 64   417 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   4A65 00                  418 	.db 0x00
   4A66                     419 ___str_14:
   4A66 4E 6F 74 20 79 65   420 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   4A79 00                  421 	.db 0x00
   4A7A                     422 ___str_15:
   4A7A 50 72 6F 64 75 63   423 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   4A87 00                  424 	.db 0x00
   4A88                     425 ___str_16:
   4A88 44 65 6D 61 6E 64   426 	.ascii "Demand: ?"
        3A 20 3F
   4A91 00                  427 	.db 0x00
                            428 ;src/game/game.c:60: void menuStations()
                            429 ;	---------------------------------
                            430 ; Function menuStations
                            431 ; ---------------------------------
   4A92                     432 _menuStations::
   4A92 DD E5         [15]  433 	push	ix
   4A94 DD 21 00 00   [14]  434 	ld	ix,#0
   4A98 DD 39         [15]  435 	add	ix,sp
   4A9A 21 FA FF      [10]  436 	ld	hl,#-6
   4A9D 39            [11]  437 	add	hl,sp
   4A9E F9            [ 6]  438 	ld	sp,hl
                            439 ;src/game/game.c:64: const char *txtMenuSizeStation[] = { 
   4A9F 21 00 00      [10]  440 	ld	hl,#0x0000
   4AA2 39            [11]  441 	add	hl,sp
   4AA3 5D            [ 4]  442 	ld	e,l
   4AA4 54            [ 4]  443 	ld	d,h
   4AA5 36 F4         [10]  444 	ld	(hl),#<(___str_17)
   4AA7 23            [ 6]  445 	inc	hl
   4AA8 36 4A         [10]  446 	ld	(hl),#>(___str_17)
   4AAA 6B            [ 4]  447 	ld	l, e
   4AAB 62            [ 4]  448 	ld	h, d
   4AAC 23            [ 6]  449 	inc	hl
   4AAD 23            [ 6]  450 	inc	hl
   4AAE 01 FA 4A      [10]  451 	ld	bc,#___str_18+0
   4AB1 71            [ 7]  452 	ld	(hl),c
   4AB2 23            [ 6]  453 	inc	hl
   4AB3 70            [ 7]  454 	ld	(hl),b
   4AB4 21 04 00      [10]  455 	ld	hl,#0x0004
   4AB7 19            [11]  456 	add	hl,de
   4AB8 01 01 4B      [10]  457 	ld	bc,#___str_19+0
   4ABB 71            [ 7]  458 	ld	(hl),c
   4ABC 23            [ 6]  459 	inc	hl
   4ABD 70            [ 7]  460 	ld	(hl),b
                            461 ;src/game/game.c:70: result = drawMenu(txtMenuSizeStation,3);
   4ABE 3E 03         [ 7]  462 	ld	a,#0x03
   4AC0 F5            [11]  463 	push	af
   4AC1 33            [ 6]  464 	inc	sp
   4AC2 D5            [11]  465 	push	de
   4AC3 CD 7E 5F      [17]  466 	call	_drawMenu
   4AC6 F1            [10]  467 	pop	af
   4AC7 33            [ 6]  468 	inc	sp
   4AC8 5D            [ 4]  469 	ld	e,l
                            470 ;src/game/game.c:72: switch(result)
   4AC9 3E 02         [ 7]  471 	ld	a,#0x02
   4ACB 93            [ 4]  472 	sub	a, e
   4ACC 38 21         [12]  473 	jr	C,00105$
   4ACE 16 00         [ 7]  474 	ld	d,#0x00
   4AD0 21 D6 4A      [10]  475 	ld	hl,#00111$
   4AD3 19            [11]  476 	add	hl,de
   4AD4 19            [11]  477 	add	hl,de
                            478 ;src/game/game.c:74: case 0:
   4AD5 E9            [ 4]  479 	jp	(hl)
   4AD6                     480 00111$:
   4AD6 18 04         [12]  481 	jr	00101$
   4AD8 18 09         [12]  482 	jr	00102$
   4ADA 18 0E         [12]  483 	jr	00103$
   4ADC                     484 00101$:
                            485 ;src/game/game.c:75: CURSOR_MODE=T_SSEW;
   4ADC 21 AA 8A      [10]  486 	ld	hl,#_CURSOR_MODE + 0
   4ADF 36 02         [10]  487 	ld	(hl), #0x02
                            488 ;src/game/game.c:76: break;
   4AE1 18 0C         [12]  489 	jr	00105$
                            490 ;src/game/game.c:78: case 1:
   4AE3                     491 00102$:
                            492 ;src/game/game.c:79: CURSOR_MODE=T_SMEW;
   4AE3 21 AA 8A      [10]  493 	ld	hl,#_CURSOR_MODE + 0
   4AE6 36 04         [10]  494 	ld	(hl), #0x04
                            495 ;src/game/game.c:80: break;
   4AE8 18 05         [12]  496 	jr	00105$
                            497 ;src/game/game.c:82: case 2:
   4AEA                     498 00103$:
                            499 ;src/game/game.c:83: CURSOR_MODE=T_SLEW;
   4AEA 21 AA 8A      [10]  500 	ld	hl,#_CURSOR_MODE + 0
   4AED 36 06         [10]  501 	ld	(hl), #0x06
                            502 ;src/game/game.c:85: }
   4AEF                     503 00105$:
   4AEF DD F9         [10]  504 	ld	sp, ix
   4AF1 DD E1         [14]  505 	pop	ix
   4AF3 C9            [10]  506 	ret
   4AF4                     507 ___str_17:
   4AF4 53 6D 61 6C 6C      508 	.ascii "Small"
   4AF9 00                  509 	.db 0x00
   4AFA                     510 ___str_18:
   4AFA 4D 65 64 69 75 6D   511 	.ascii "Medium"
   4B00 00                  512 	.db 0x00
   4B01                     513 ___str_19:
   4B01 4C 61 72 67 65      514 	.ascii "Large"
   4B06 00                  515 	.db 0x00
                            516 ;src/game/game.c:88: void menuTile(u8 x, u8 y)
                            517 ;	---------------------------------
                            518 ; Function menuTile
                            519 ; ---------------------------------
   4B07                     520 _menuTile::
   4B07 DD E5         [15]  521 	push	ix
   4B09 DD 21 00 00   [14]  522 	ld	ix,#0
   4B0D DD 39         [15]  523 	add	ix,sp
   4B0F 21 E6 FF      [10]  524 	ld	hl,#-26
   4B12 39            [11]  525 	add	hl,sp
   4B13 F9            [ 6]  526 	ld	sp,hl
                            527 ;src/game/game.c:92: const char *txtMenuTile[] = { 
   4B14 21 00 00      [10]  528 	ld	hl,#0x0000
   4B17 39            [11]  529 	add	hl,sp
   4B18 5D            [ 4]  530 	ld	e,l
   4B19 54            [ 4]  531 	ld	d,h
   4B1A 36 3B         [10]  532 	ld	(hl),#<(___str_20)
   4B1C 23            [ 6]  533 	inc	hl
   4B1D 36 4C         [10]  534 	ld	(hl),#>(___str_20)
   4B1F 6B            [ 4]  535 	ld	l, e
   4B20 62            [ 4]  536 	ld	h, d
   4B21 23            [ 6]  537 	inc	hl
   4B22 23            [ 6]  538 	inc	hl
   4B23 01 4B 4C      [10]  539 	ld	bc,#___str_21+0
   4B26 71            [ 7]  540 	ld	(hl),c
   4B27 23            [ 6]  541 	inc	hl
   4B28 70            [ 7]  542 	ld	(hl),b
   4B29 21 04 00      [10]  543 	ld	hl,#0x0004
   4B2C 19            [11]  544 	add	hl,de
   4B2D 01 5B 4C      [10]  545 	ld	bc,#___str_22+0
   4B30 71            [ 7]  546 	ld	(hl),c
   4B31 23            [ 6]  547 	inc	hl
   4B32 70            [ 7]  548 	ld	(hl),b
   4B33 21 06 00      [10]  549 	ld	hl,#0x0006
   4B36 19            [11]  550 	add	hl,de
   4B37 01 6B 4C      [10]  551 	ld	bc,#___str_23+0
   4B3A 71            [ 7]  552 	ld	(hl),c
   4B3B 23            [ 6]  553 	inc	hl
   4B3C 70            [ 7]  554 	ld	(hl),b
   4B3D 21 08 00      [10]  555 	ld	hl,#0x0008
   4B40 19            [11]  556 	add	hl,de
   4B41 01 73 4C      [10]  557 	ld	bc,#___str_24+0
   4B44 71            [ 7]  558 	ld	(hl),c
   4B45 23            [ 6]  559 	inc	hl
   4B46 70            [ 7]  560 	ld	(hl),b
   4B47 21 0A 00      [10]  561 	ld	hl,#0x000A
   4B4A 19            [11]  562 	add	hl,de
   4B4B 01 82 4C      [10]  563 	ld	bc,#___str_25+0
   4B4E 71            [ 7]  564 	ld	(hl),c
   4B4F 23            [ 6]  565 	inc	hl
   4B50 70            [ 7]  566 	ld	(hl),b
   4B51 21 0C 00      [10]  567 	ld	hl,#0x000C
   4B54 19            [11]  568 	add	hl,de
   4B55 01 8D 4C      [10]  569 	ld	bc,#___str_26+0
   4B58 71            [ 7]  570 	ld	(hl),c
   4B59 23            [ 6]  571 	inc	hl
   4B5A 70            [ 7]  572 	ld	(hl),b
                            573 ;src/game/game.c:102: const char *txtWindowDestroy[] = { 
   4B5B 21 0E 00      [10]  574 	ld	hl,#0x000E
   4B5E 39            [11]  575 	add	hl,sp
   4B5F 4D            [ 4]  576 	ld	c,l
   4B60 44            [ 4]  577 	ld	b,h
   4B61 36 94         [10]  578 	ld	(hl),#<(___str_27)
   4B63 23            [ 6]  579 	inc	hl
   4B64 36 4C         [10]  580 	ld	(hl),#>(___str_27)
   4B66 21 02 00      [10]  581 	ld	hl,#0x0002
   4B69 09            [11]  582 	add	hl,bc
   4B6A DD 75 FA      [19]  583 	ld	-6 (ix),l
   4B6D DD 74 FB      [19]  584 	ld	-5 (ix),h
   4B70 DD 6E FA      [19]  585 	ld	l,-6 (ix)
   4B73 DD 66 FB      [19]  586 	ld	h,-5 (ix)
   4B76 36 B7         [10]  587 	ld	(hl),#<(___str_28)
   4B78 23            [ 6]  588 	inc	hl
   4B79 36 4C         [10]  589 	ld	(hl),#>(___str_28)
   4B7B 21 04 00      [10]  590 	ld	hl,#0x0004
   4B7E 09            [11]  591 	add	hl,bc
   4B7F DD 75 FA      [19]  592 	ld	-6 (ix),l
   4B82 DD 74 FB      [19]  593 	ld	-5 (ix),h
   4B85 DD 6E FA      [19]  594 	ld	l,-6 (ix)
   4B88 DD 66 FB      [19]  595 	ld	h,-5 (ix)
   4B8B 36 B8         [10]  596 	ld	(hl),#<(___str_29)
   4B8D 23            [ 6]  597 	inc	hl
   4B8E 36 4C         [10]  598 	ld	(hl),#>(___str_29)
                            599 ;src/game/game.c:109: putM2();
   4B90 C5            [11]  600 	push	bc
   4B91 D5            [11]  601 	push	de
   4B92 CD 78 5B      [17]  602 	call	_putM2
   4B95 D1            [10]  603 	pop	de
   4B96 C1            [10]  604 	pop	bc
                            605 ;src/game/game.c:111: do{
   4B97 D5            [11]  606 	push	de
   4B98 DD 5E 05      [19]  607 	ld	e,5 (ix)
   4B9B 16 00         [ 7]  608 	ld	d,#0x00
   4B9D 6B            [ 4]  609 	ld	l, e
   4B9E 62            [ 4]  610 	ld	h, d
   4B9F 29            [11]  611 	add	hl, hl
   4BA0 29            [11]  612 	add	hl, hl
   4BA1 19            [11]  613 	add	hl, de
   4BA2 29            [11]  614 	add	hl, hl
   4BA3 29            [11]  615 	add	hl, hl
   4BA4 29            [11]  616 	add	hl, hl
   4BA5 29            [11]  617 	add	hl, hl
   4BA6 D1            [10]  618 	pop	de
   4BA7 DD 75 FA      [19]  619 	ld	-6 (ix),l
   4BAA DD 74 FB      [19]  620 	ld	-5 (ix),h
   4BAD DD 71 FE      [19]  621 	ld	-2 (ix),c
   4BB0 DD 70 FF      [19]  622 	ld	-1 (ix),b
   4BB3 DD 73 FC      [19]  623 	ld	-4 (ix),e
   4BB6 DD 72 FD      [19]  624 	ld	-3 (ix),d
   4BB9                     625 00117$:
                            626 ;src/game/game.c:112: menuChoice = drawMenu(txtMenuTile,7);
   4BB9 DD 5E FC      [19]  627 	ld	e,-4 (ix)
   4BBC DD 56 FD      [19]  628 	ld	d,-3 (ix)
   4BBF 3E 07         [ 7]  629 	ld	a,#0x07
   4BC1 F5            [11]  630 	push	af
   4BC2 33            [ 6]  631 	inc	sp
   4BC3 D5            [11]  632 	push	de
   4BC4 CD 7E 5F      [17]  633 	call	_drawMenu
   4BC7 F1            [10]  634 	pop	af
   4BC8 33            [ 6]  635 	inc	sp
   4BC9 55            [ 4]  636 	ld	d,l
                            637 ;src/game/game.c:114: if(menuChoice==0)
   4BCA 7A            [ 4]  638 	ld	a,d
   4BCB B7            [ 4]  639 	or	a, a
   4BCC 20 0F         [12]  640 	jr	NZ,00115$
                            641 ;src/game/game.c:115: windowInfoTile(x, y);
   4BCE D5            [11]  642 	push	de
   4BCF DD 66 05      [19]  643 	ld	h,5 (ix)
   4BD2 DD 6E 04      [19]  644 	ld	l,4 (ix)
   4BD5 E5            [11]  645 	push	hl
   4BD6 CD F9 47      [17]  646 	call	_windowInfoTile
   4BD9 F1            [10]  647 	pop	af
   4BDA D1            [10]  648 	pop	de
   4BDB 18 51         [12]  649 	jr	00118$
   4BDD                     650 00115$:
                            651 ;src/game/game.c:116: else if(menuChoice==1)
   4BDD 7A            [ 4]  652 	ld	a,d
   4BDE 3D            [ 4]  653 	dec	a
   4BDF 20 09         [12]  654 	jr	NZ,00112$
                            655 ;src/game/game.c:118: CURSOR_MODE=T_REW;
   4BE1 21 AA 8A      [10]  656 	ld	hl,#_CURSOR_MODE + 0
   4BE4 36 07         [10]  657 	ld	(hl), #0x07
                            658 ;src/game/game.c:119: menuChoice=6;
   4BE6 16 06         [ 7]  659 	ld	d,#0x06
   4BE8 18 44         [12]  660 	jr	00118$
   4BEA                     661 00112$:
                            662 ;src/game/game.c:121: else if(menuChoice==2)
   4BEA 7A            [ 4]  663 	ld	a,d
   4BEB D6 02         [ 7]  664 	sub	a, #0x02
   4BED 20 07         [12]  665 	jr	NZ,00109$
                            666 ;src/game/game.c:123: menuStations();
   4BEF CD 92 4A      [17]  667 	call	_menuStations
                            668 ;src/game/game.c:124: menuChoice=6;
   4BF2 16 06         [ 7]  669 	ld	d,#0x06
   4BF4 18 38         [12]  670 	jr	00118$
   4BF6                     671 00109$:
                            672 ;src/game/game.c:126: else if(menuChoice==3)
   4BF6 7A            [ 4]  673 	ld	a,d
   4BF7 D6 03         [ 7]  674 	sub	a, #0x03
   4BF9 20 29         [12]  675 	jr	NZ,00106$
                            676 ;src/game/game.c:128: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   4BFB DD 5E FE      [19]  677 	ld	e,-2 (ix)
   4BFE DD 56 FF      [19]  678 	ld	d,-1 (ix)
   4C01 21 03 01      [10]  679 	ld	hl,#0x0103
   4C04 E5            [11]  680 	push	hl
   4C05 D5            [11]  681 	push	de
   4C06 CD 7C 60      [17]  682 	call	_drawWindow
   4C09 F1            [10]  683 	pop	af
   4C0A F1            [10]  684 	pop	af
   4C0B 2D            [ 4]  685 	dec	l
   4C0C 20 12         [12]  686 	jr	NZ,00102$
                            687 ;src/game/game.c:129: p_world[x+y*WIDTH] = GRASS1;
   4C0E DD 6E 04      [19]  688 	ld	l,4 (ix)
   4C11 26 00         [ 7]  689 	ld	h,#0x00
   4C13 DD 5E FA      [19]  690 	ld	e,-6 (ix)
   4C16 DD 56 FB      [19]  691 	ld	d,-5 (ix)
   4C19 19            [11]  692 	add	hl,de
   4C1A 11 A6 7B      [10]  693 	ld	de,#_p_world
   4C1D 19            [11]  694 	add	hl,de
   4C1E 36 00         [10]  695 	ld	(hl),#0x00
   4C20                     696 00102$:
                            697 ;src/game/game.c:131: menuChoice=6;
   4C20 16 06         [ 7]  698 	ld	d,#0x06
   4C22 18 0A         [12]  699 	jr	00118$
   4C24                     700 00106$:
                            701 ;src/game/game.c:133: else if(menuChoice==4)
   4C24 7A            [ 4]  702 	ld	a,d
   4C25 D6 04         [ 7]  703 	sub	a, #0x04
   4C27 20 05         [12]  704 	jr	NZ,00118$
                            705 ;src/game/game.c:135: railroadDepot();
   4C29 CD 6E 41      [17]  706 	call	_railroadDepot
                            707 ;src/game/game.c:136: menuChoice=6;
   4C2C 16 06         [ 7]  708 	ld	d,#0x06
   4C2E                     709 00118$:
                            710 ;src/game/game.c:141: while(menuChoice!=6);
   4C2E 7A            [ 4]  711 	ld	a,d
   4C2F D6 06         [ 7]  712 	sub	a, #0x06
   4C31 20 86         [12]  713 	jr	NZ,00117$
                            714 ;src/game/game.c:143: putM1();
   4C33 CD 64 5B      [17]  715 	call	_putM1
   4C36 DD F9         [10]  716 	ld	sp, ix
   4C38 DD E1         [14]  717 	pop	ix
   4C3A C9            [10]  718 	ret
   4C3B                     719 ___str_20:
   4C3B 41 62 6F 75 74 20   720 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   4C4A 00                  721 	.db 0x00
   4C4B                     722 ___str_21:
   4C4B 42 75 69 6C 64 20   723 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   4C5A 00                  724 	.db 0x00
   4C5B                     725 ___str_22:
   4C5B 42 75 69 6C 64 20   726 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   4C6A 00                  727 	.db 0x00
   4C6B                     728 ___str_23:
   4C6B 44 65 73 74 72 6F   729 	.ascii "Destroy"
        79
   4C72 00                  730 	.db 0x00
   4C73                     731 ___str_24:
   4C73 52 61 69 6C 72 6F   732 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   4C81 00                  733 	.db 0x00
   4C82                     734 ___str_25:
   4C82 41 63 63 6F 75 6E   735 	.ascii "Accounting"
        74 69 6E 67
   4C8C 00                  736 	.db 0x00
   4C8D                     737 ___str_26:
   4C8D 52 65 73 75 6D 65   738 	.ascii "Resume"
   4C93 00                  739 	.db 0x00
   4C94                     740 ___str_27:
   4C94 44 65 73 74 72 6F   741 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   4CB6 00                  742 	.db 0x00
   4CB7                     743 ___str_28:
   4CB7 00                  744 	.db 0x00
   4CB8                     745 ___str_29:
   4CB8 43 6F 6E 74 69 6E   746 	.ascii "Continue ?"
        75 65 20 3F
   4CC2 00                  747 	.db 0x00
                            748 ;src/game/game.c:147: void game()
                            749 ;	---------------------------------
                            750 ; Function game
                            751 ; ---------------------------------
   4CC3                     752 _game::
   4CC3 DD E5         [15]  753 	push	ix
   4CC5 DD 21 00 00   [14]  754 	ld	ix,#0
   4CC9 DD 39         [15]  755 	add	ix,sp
   4CCB 21 EA FF      [10]  756 	ld	hl,#-22
   4CCE 39            [11]  757 	add	hl,sp
   4CCF F9            [ 6]  758 	ld	sp,hl
                            759 ;src/game/game.c:150: int ulx = 0;
   4CD0 DD 36 F7 00   [19]  760 	ld	-9 (ix),#0x00
   4CD4 DD 36 F8 00   [19]  761 	ld	-8 (ix),#0x00
                            762 ;src/game/game.c:151: int uly = 0;
   4CD8 DD 36 F9 00   [19]  763 	ld	-7 (ix),#0x00
   4CDC DD 36 FA 00   [19]  764 	ld	-6 (ix),#0x00
                            765 ;src/game/game.c:152: int xCursor = 10;
   4CE0 DD 36 F0 0A   [19]  766 	ld	-16 (ix),#0x0A
   4CE4 DD 36 F1 00   [19]  767 	ld	-15 (ix),#0x00
                            768 ;src/game/game.c:153: int yCursor = 6;
   4CE8 DD 36 F4 06   [19]  769 	ld	-12 (ix),#0x06
   4CEC DD 36 F5 00   [19]  770 	ld	-11 (ix),#0x00
                            771 ;src/game/game.c:155: u8 exit=0;
   4CF0 DD 36 F6 00   [19]  772 	ld	-10 (ix),#0x00
                            773 ;src/game/game.c:157: locDelocked = 4;
   4CF4 21 AB 8A      [10]  774 	ld	hl,#_locDelocked + 0
   4CF7 36 04         [10]  775 	ld	(hl), #0x04
                            776 ;src/game/game.c:159: drawBoxM2(50, 50);
   4CF9 21 32 00      [10]  777 	ld	hl,#0x0032
   4CFC E5            [11]  778 	push	hl
   4CFD 2E 32         [ 7]  779 	ld	l, #0x32
   4CFF E5            [11]  780 	push	hl
   4D00 CD B4 5C      [17]  781 	call	_drawBoxM2
   4D03 F1            [10]  782 	pop	af
                            783 ;src/game/game.c:160: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   4D04 21 20 5F      [10]  784 	ld	hl, #0x5F20
   4D07 E3            [19]  785 	ex	(sp),hl
   4D08 21 00 C0      [10]  786 	ld	hl,#0xC000
   4D0B E5            [11]  787 	push	hl
   4D0C CD B6 7A      [17]  788 	call	_cpct_getScreenPtr
                            789 ;src/game/game.c:161: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   4D0F 4D            [ 4]  790 	ld	c, l
   4D10 44            [ 4]  791 	ld	b, h
   4D11 11 B0 51      [10]  792 	ld	de,#___str_33
   4D14 AF            [ 4]  793 	xor	a, a
   4D15 F5            [11]  794 	push	af
   4D16 33            [ 6]  795 	inc	sp
   4D17 C5            [11]  796 	push	bc
   4D18 D5            [11]  797 	push	de
   4D19 CD 67 74      [17]  798 	call	_cpct_drawStringM2
   4D1C F1            [10]  799 	pop	af
   4D1D F1            [10]  800 	pop	af
   4D1E 33            [ 6]  801 	inc	sp
                            802 ;src/game/game.c:163: generateWorld();
   4D1F CD F6 54      [17]  803 	call	_generateWorld
                            804 ;src/game/game.c:165: putM1();
   4D22 CD 64 5B      [17]  805 	call	_putM1
                            806 ;src/game/game.c:166: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   4D25 21 00 00      [10]  807 	ld	hl,#0x0000
   4D28 E5            [11]  808 	push	hl
   4D29 2E 00         [ 7]  809 	ld	l, #0x00
   4D2B E5            [11]  810 	push	hl
   4D2C CD 90 79      [17]  811 	call	_cpct_px2byteM1
   4D2F F1            [10]  812 	pop	af
   4D30 F1            [10]  813 	pop	af
   4D31 65            [ 4]  814 	ld	h,l
   4D32 01 00 40      [10]  815 	ld	bc,#0x4000
   4D35 C5            [11]  816 	push	bc
   4D36 E5            [11]  817 	push	hl
   4D37 33            [ 6]  818 	inc	sp
   4D38 21 00 C0      [10]  819 	ld	hl,#0xC000
   4D3B E5            [11]  820 	push	hl
   4D3C CD 82 79      [17]  821 	call	_cpct_memset
                            822 ;src/game/game.c:167: drawWorld(ulx, uly);
   4D3F 21 00 00      [10]  823 	ld	hl,#0x0000
   4D42 E5            [11]  824 	push	hl
   4D43 CD 18 5B      [17]  825 	call	_drawWorld
   4D46 F1            [10]  826 	pop	af
                            827 ;src/game/game.c:169: do{
   4D47                     828 00181$:
                            829 ;src/game/game.c:170: cpct_scanKeyboard(); 
   4D47 CD D6 7A      [17]  830 	call	_cpct_scanKeyboard
                            831 ;src/game/game.c:172: if ( cpct_isKeyPressed(Key_CursorUp) )
   4D4A 21 00 01      [10]  832 	ld	hl,#0x0100
   4D4D CD 30 74      [17]  833 	call	_cpct_isKeyPressed
   4D50 DD 75 FD      [19]  834 	ld	-3 (ix),l
                            835 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4D53 DD 7E F4      [19]  836 	ld	a,-12 (ix)
   4D56 DD 77 FE      [19]  837 	ld	-2 (ix),a
   4D59 DD 7E F0      [19]  838 	ld	a,-16 (ix)
   4D5C DD 77 FC      [19]  839 	ld	-4 (ix),a
   4D5F DD 7E F9      [19]  840 	ld	a,-7 (ix)
   4D62 DD 77 FB      [19]  841 	ld	-5 (ix),a
   4D65 DD 7E F7      [19]  842 	ld	a,-9 (ix)
   4D68 DD 77 FF      [19]  843 	ld	-1 (ix),a
                            844 ;src/game/game.c:172: if ( cpct_isKeyPressed(Key_CursorUp) )
   4D6B DD 7E FD      [19]  845 	ld	a,-3 (ix)
   4D6E B7            [ 4]  846 	or	a, a
   4D6F CA F1 4D      [10]  847 	jp	Z,00179$
                            848 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4D72 DD 7E FE      [19]  849 	ld	a,-2 (ix)
   4D75 F5            [11]  850 	push	af
   4D76 33            [ 6]  851 	inc	sp
   4D77 DD 7E FC      [19]  852 	ld	a,-4 (ix)
   4D7A F5            [11]  853 	push	af
   4D7B 33            [ 6]  854 	inc	sp
   4D7C DD 7E FB      [19]  855 	ld	a,-5 (ix)
   4D7F F5            [11]  856 	push	af
   4D80 33            [ 6]  857 	inc	sp
   4D81 DD 7E FF      [19]  858 	ld	a,-1 (ix)
   4D84 F5            [11]  859 	push	af
   4D85 33            [ 6]  860 	inc	sp
   4D86 CD 57 58      [17]  861 	call	_drawTile
   4D89 F1            [10]  862 	pop	af
   4D8A F1            [10]  863 	pop	af
                            864 ;src/game/game.c:176: yCursor-=1;
   4D8B DD 6E F4      [19]  865 	ld	l,-12 (ix)
   4D8E DD 66 F5      [19]  866 	ld	h,-11 (ix)
   4D91 2B            [ 6]  867 	dec	hl
   4D92 DD 75 F4      [19]  868 	ld	-12 (ix),l
   4D95 DD 74 F5      [19]  869 	ld	-11 (ix),h
                            870 ;src/game/game.c:179: if(yCursor<0)
   4D98 DD CB F5 7E   [20]  871 	bit	7, -11 (ix)
   4D9C 28 35         [12]  872 	jr	Z,00210$
                            873 ;src/game/game.c:181: yCursor=0;
   4D9E DD 36 F4 00   [19]  874 	ld	-12 (ix),#0x00
   4DA2 DD 36 F5 00   [19]  875 	ld	-11 (ix),#0x00
                            876 ;src/game/game.c:184: if(uly>0)
   4DA6 AF            [ 4]  877 	xor	a, a
   4DA7 DD BE F9      [19]  878 	cp	a, -7 (ix)
   4DAA DD 9E FA      [19]  879 	sbc	a, -6 (ix)
   4DAD E2 B2 4D      [10]  880 	jp	PO, 00387$
   4DB0 EE 80         [ 7]  881 	xor	a, #0x80
   4DB2                     882 00387$:
   4DB2 F2 D3 4D      [10]  883 	jp	P,00210$
                            884 ;src/game/game.c:186: uly-=1;
   4DB5 DD 6E F9      [19]  885 	ld	l,-7 (ix)
   4DB8 DD 66 FA      [19]  886 	ld	h,-6 (ix)
   4DBB 2B            [ 6]  887 	dec	hl
   4DBC DD 75 F9      [19]  888 	ld	-7 (ix),l
   4DBF DD 74 FA      [19]  889 	ld	-6 (ix),h
                            890 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4DC2 DD 7E F9      [19]  891 	ld	a,-7 (ix)
                            892 ;src/game/game.c:187: drawWorld(ulx, uly);
   4DC5 DD 77 FB      [19]  893 	ld	-5 (ix), a
   4DC8 F5            [11]  894 	push	af
   4DC9 33            [ 6]  895 	inc	sp
   4DCA DD 7E FF      [19]  896 	ld	a,-1 (ix)
   4DCD F5            [11]  897 	push	af
   4DCE 33            [ 6]  898 	inc	sp
   4DCF CD 18 5B      [17]  899 	call	_drawWorld
   4DD2 F1            [10]  900 	pop	af
                            901 ;src/game/game.c:192: for(i=0; i<5000; i++) {}
   4DD3                     902 00210$:
   4DD3 DD 36 F2 88   [19]  903 	ld	-14 (ix),#0x88
   4DD7 DD 36 F3 13   [19]  904 	ld	-13 (ix),#0x13
   4DDB                     905 00186$:
   4DDB DD 6E F2      [19]  906 	ld	l,-14 (ix)
   4DDE DD 66 F3      [19]  907 	ld	h,-13 (ix)
   4DE1 2B            [ 6]  908 	dec	hl
   4DE2 DD 75 F2      [19]  909 	ld	-14 (ix),l
   4DE5 DD 74 F3      [19]  910 	ld	-13 (ix), h
   4DE8 7C            [ 4]  911 	ld	a, h
   4DE9 DD B6 F2      [19]  912 	or	a,-14 (ix)
   4DEC 20 ED         [12]  913 	jr	NZ,00186$
   4DEE C3 4F 51      [10]  914 	jp	00180$
   4DF1                     915 00179$:
                            916 ;src/game/game.c:195: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4DF1 21 00 04      [10]  917 	ld	hl,#0x0400
   4DF4 CD 30 74      [17]  918 	call	_cpct_isKeyPressed
   4DF7 7D            [ 4]  919 	ld	a,l
   4DF8 B7            [ 4]  920 	or	a, a
   4DF9 CA 7D 4E      [10]  921 	jp	Z,00176$
                            922 ;src/game/game.c:197: drawTile(ulx, uly, xCursor, yCursor);
   4DFC DD 7E FE      [19]  923 	ld	a,-2 (ix)
   4DFF F5            [11]  924 	push	af
   4E00 33            [ 6]  925 	inc	sp
   4E01 DD 7E FC      [19]  926 	ld	a,-4 (ix)
   4E04 F5            [11]  927 	push	af
   4E05 33            [ 6]  928 	inc	sp
   4E06 DD 7E FB      [19]  929 	ld	a,-5 (ix)
   4E09 F5            [11]  930 	push	af
   4E0A 33            [ 6]  931 	inc	sp
   4E0B DD 7E FF      [19]  932 	ld	a,-1 (ix)
   4E0E F5            [11]  933 	push	af
   4E0F 33            [ 6]  934 	inc	sp
   4E10 CD 57 58      [17]  935 	call	_drawTile
   4E13 F1            [10]  936 	pop	af
   4E14 F1            [10]  937 	pop	af
                            938 ;src/game/game.c:198: yCursor+=1;
   4E15 DD 34 F4      [23]  939 	inc	-12 (ix)
   4E18 20 03         [12]  940 	jr	NZ,00388$
   4E1A DD 34 F5      [23]  941 	inc	-11 (ix)
   4E1D                     942 00388$:
                            943 ;src/game/game.c:199: if(yCursor>NBTILE_H-1)
   4E1D 3E 0B         [ 7]  944 	ld	a,#0x0B
   4E1F DD BE F4      [19]  945 	cp	a, -12 (ix)
   4E22 3E 00         [ 7]  946 	ld	a,#0x00
   4E24 DD 9E F5      [19]  947 	sbc	a, -11 (ix)
   4E27 E2 2C 4E      [10]  948 	jp	PO, 00389$
   4E2A EE 80         [ 7]  949 	xor	a, #0x80
   4E2C                     950 00389$:
   4E2C F2 5F 4E      [10]  951 	jp	P,00215$
                            952 ;src/game/game.c:201: yCursor=NBTILE_H-1;
   4E2F DD 36 F4 0B   [19]  953 	ld	-12 (ix),#0x0B
   4E33 DD 36 F5 00   [19]  954 	ld	-11 (ix),#0x00
                            955 ;src/game/game.c:202: if(uly<HEIGHT-NBTILE_H)
   4E37 DD 7E F9      [19]  956 	ld	a,-7 (ix)
   4E3A D6 24         [ 7]  957 	sub	a, #0x24
   4E3C DD 7E FA      [19]  958 	ld	a,-6 (ix)
   4E3F 17            [ 4]  959 	rla
   4E40 3F            [ 4]  960 	ccf
   4E41 1F            [ 4]  961 	rra
   4E42 DE 80         [ 7]  962 	sbc	a, #0x80
   4E44 30 19         [12]  963 	jr	NC,00215$
                            964 ;src/game/game.c:204: uly+=1;
   4E46 DD 34 F9      [23]  965 	inc	-7 (ix)
   4E49 20 03         [12]  966 	jr	NZ,00390$
   4E4B DD 34 FA      [23]  967 	inc	-6 (ix)
   4E4E                     968 00390$:
                            969 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4E4E DD 7E F9      [19]  970 	ld	a,-7 (ix)
                            971 ;src/game/game.c:205: drawWorld(ulx, uly);
   4E51 DD 77 FB      [19]  972 	ld	-5 (ix), a
   4E54 F5            [11]  973 	push	af
   4E55 33            [ 6]  974 	inc	sp
   4E56 DD 7E FF      [19]  975 	ld	a,-1 (ix)
   4E59 F5            [11]  976 	push	af
   4E5A 33            [ 6]  977 	inc	sp
   4E5B CD 18 5B      [17]  978 	call	_drawWorld
   4E5E F1            [10]  979 	pop	af
                            980 ;src/game/game.c:210: for(i=0; i<5000; i++) {}
   4E5F                     981 00215$:
   4E5F DD 36 F2 88   [19]  982 	ld	-14 (ix),#0x88
   4E63 DD 36 F3 13   [19]  983 	ld	-13 (ix),#0x13
   4E67                     984 00189$:
   4E67 DD 6E F2      [19]  985 	ld	l,-14 (ix)
   4E6A DD 66 F3      [19]  986 	ld	h,-13 (ix)
   4E6D 2B            [ 6]  987 	dec	hl
   4E6E DD 75 F2      [19]  988 	ld	-14 (ix),l
   4E71 DD 74 F3      [19]  989 	ld	-13 (ix), h
   4E74 7C            [ 4]  990 	ld	a, h
   4E75 DD B6 F2      [19]  991 	or	a,-14 (ix)
   4E78 20 ED         [12]  992 	jr	NZ,00189$
   4E7A C3 4F 51      [10]  993 	jp	00180$
   4E7D                     994 00176$:
                            995 ;src/game/game.c:213: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   4E7D 21 01 01      [10]  996 	ld	hl,#0x0101
   4E80 CD 30 74      [17]  997 	call	_cpct_isKeyPressed
   4E83 7D            [ 4]  998 	ld	a,l
   4E84 B7            [ 4]  999 	or	a, a
   4E85 28 6F         [12] 1000 	jr	Z,00173$
                           1001 ;src/game/game.c:215: drawTile(ulx, uly, xCursor, yCursor);
   4E87 DD 7E FE      [19] 1002 	ld	a,-2 (ix)
   4E8A F5            [11] 1003 	push	af
   4E8B 33            [ 6] 1004 	inc	sp
   4E8C DD 7E FC      [19] 1005 	ld	a,-4 (ix)
   4E8F F5            [11] 1006 	push	af
   4E90 33            [ 6] 1007 	inc	sp
   4E91 DD 7E FB      [19] 1008 	ld	a,-5 (ix)
   4E94 F5            [11] 1009 	push	af
   4E95 33            [ 6] 1010 	inc	sp
   4E96 DD 7E FF      [19] 1011 	ld	a,-1 (ix)
   4E99 F5            [11] 1012 	push	af
   4E9A 33            [ 6] 1013 	inc	sp
   4E9B CD 57 58      [17] 1014 	call	_drawTile
   4E9E F1            [10] 1015 	pop	af
   4E9F F1            [10] 1016 	pop	af
                           1017 ;src/game/game.c:216: xCursor-=1;
   4EA0 DD 6E F0      [19] 1018 	ld	l,-16 (ix)
   4EA3 DD 66 F1      [19] 1019 	ld	h,-15 (ix)
   4EA6 2B            [ 6] 1020 	dec	hl
   4EA7 DD 75 F0      [19] 1021 	ld	-16 (ix),l
   4EAA DD 74 F1      [19] 1022 	ld	-15 (ix),h
                           1023 ;src/game/game.c:217: if(xCursor<0)
   4EAD DD CB F1 7E   [20] 1024 	bit	7, -15 (ix)
   4EB1 28 38         [12] 1025 	jr	Z,00220$
                           1026 ;src/game/game.c:219: xCursor=0;
   4EB3 DD 36 F0 00   [19] 1027 	ld	-16 (ix),#0x00
   4EB7 DD 36 F1 00   [19] 1028 	ld	-15 (ix),#0x00
                           1029 ;src/game/game.c:220: if(ulx>0)
   4EBB AF            [ 4] 1030 	xor	a, a
   4EBC DD BE F7      [19] 1031 	cp	a, -9 (ix)
   4EBF DD 9E F8      [19] 1032 	sbc	a, -8 (ix)
   4EC2 E2 C7 4E      [10] 1033 	jp	PO, 00391$
   4EC5 EE 80         [ 7] 1034 	xor	a, #0x80
   4EC7                    1035 00391$:
   4EC7 F2 EB 4E      [10] 1036 	jp	P,00220$
                           1037 ;src/game/game.c:222: ulx-=1;
   4ECA DD 6E F7      [19] 1038 	ld	l,-9 (ix)
   4ECD DD 66 F8      [19] 1039 	ld	h,-8 (ix)
   4ED0 2B            [ 6] 1040 	dec	hl
   4ED1 DD 75 F7      [19] 1041 	ld	-9 (ix),l
   4ED4 DD 74 F8      [19] 1042 	ld	-8 (ix),h
                           1043 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4ED7 DD 7E F7      [19] 1044 	ld	a,-9 (ix)
   4EDA DD 77 FF      [19] 1045 	ld	-1 (ix),a
                           1046 ;src/game/game.c:223: drawWorld(ulx, uly);
   4EDD DD 7E FB      [19] 1047 	ld	a,-5 (ix)
   4EE0 F5            [11] 1048 	push	af
   4EE1 33            [ 6] 1049 	inc	sp
   4EE2 DD 7E FF      [19] 1050 	ld	a,-1 (ix)
   4EE5 F5            [11] 1051 	push	af
   4EE6 33            [ 6] 1052 	inc	sp
   4EE7 CD 18 5B      [17] 1053 	call	_drawWorld
   4EEA F1            [10] 1054 	pop	af
                           1055 ;src/game/game.c:228: for(i=0; i<14000; i++) {}
   4EEB                    1056 00220$:
   4EEB 21 B0 36      [10] 1057 	ld	hl,#0x36B0
   4EEE                    1058 00192$:
   4EEE 2B            [ 6] 1059 	dec	hl
   4EEF 7C            [ 4] 1060 	ld	a,h
   4EF0 B5            [ 4] 1061 	or	a,l
   4EF1 20 FB         [12] 1062 	jr	NZ,00192$
   4EF3 C3 4F 51      [10] 1063 	jp	00180$
   4EF6                    1064 00173$:
                           1065 ;src/game/game.c:231: else if ( cpct_isKeyPressed(Key_CursorRight) )
   4EF6 21 00 02      [10] 1066 	ld	hl,#0x0200
   4EF9 CD 30 74      [17] 1067 	call	_cpct_isKeyPressed
   4EFC 7D            [ 4] 1068 	ld	a,l
   4EFD B7            [ 4] 1069 	or	a, a
   4EFE 28 71         [12] 1070 	jr	Z,00170$
                           1071 ;src/game/game.c:233: drawTile(ulx, uly, xCursor, yCursor);
   4F00 DD 7E FE      [19] 1072 	ld	a,-2 (ix)
   4F03 F5            [11] 1073 	push	af
   4F04 33            [ 6] 1074 	inc	sp
   4F05 DD 7E FC      [19] 1075 	ld	a,-4 (ix)
   4F08 F5            [11] 1076 	push	af
   4F09 33            [ 6] 1077 	inc	sp
   4F0A DD 7E FB      [19] 1078 	ld	a,-5 (ix)
   4F0D F5            [11] 1079 	push	af
   4F0E 33            [ 6] 1080 	inc	sp
   4F0F DD 7E FF      [19] 1081 	ld	a,-1 (ix)
   4F12 F5            [11] 1082 	push	af
   4F13 33            [ 6] 1083 	inc	sp
   4F14 CD 57 58      [17] 1084 	call	_drawTile
   4F17 F1            [10] 1085 	pop	af
   4F18 F1            [10] 1086 	pop	af
                           1087 ;src/game/game.c:234: xCursor+=1;
   4F19 DD 34 F0      [23] 1088 	inc	-16 (ix)
   4F1C 20 03         [12] 1089 	jr	NZ,00392$
   4F1E DD 34 F1      [23] 1090 	inc	-15 (ix)
   4F21                    1091 00392$:
                           1092 ;src/game/game.c:235: if(xCursor>NBTILE_W-1)
   4F21 3E 13         [ 7] 1093 	ld	a,#0x13
   4F23 DD BE F0      [19] 1094 	cp	a, -16 (ix)
   4F26 3E 00         [ 7] 1095 	ld	a,#0x00
   4F28 DD 9E F1      [19] 1096 	sbc	a, -15 (ix)
   4F2B E2 30 4F      [10] 1097 	jp	PO, 00393$
   4F2E EE 80         [ 7] 1098 	xor	a, #0x80
   4F30                    1099 00393$:
   4F30 F2 66 4F      [10] 1100 	jp	P,00225$
                           1101 ;src/game/game.c:237: xCursor=NBTILE_W-1;
   4F33 DD 36 F0 13   [19] 1102 	ld	-16 (ix),#0x13
   4F37 DD 36 F1 00   [19] 1103 	ld	-15 (ix),#0x00
                           1104 ;src/game/game.c:238: if(ulx<WIDTH-NBTILE_W)
   4F3B DD 7E F7      [19] 1105 	ld	a,-9 (ix)
   4F3E D6 3C         [ 7] 1106 	sub	a, #0x3C
   4F40 DD 7E F8      [19] 1107 	ld	a,-8 (ix)
   4F43 17            [ 4] 1108 	rla
   4F44 3F            [ 4] 1109 	ccf
   4F45 1F            [ 4] 1110 	rra
   4F46 DE 80         [ 7] 1111 	sbc	a, #0x80
   4F48 30 1C         [12] 1112 	jr	NC,00225$
                           1113 ;src/game/game.c:240: ulx+=1;
   4F4A DD 34 F7      [23] 1114 	inc	-9 (ix)
   4F4D 20 03         [12] 1115 	jr	NZ,00394$
   4F4F DD 34 F8      [23] 1116 	inc	-8 (ix)
   4F52                    1117 00394$:
                           1118 ;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
   4F52 DD 7E F7      [19] 1119 	ld	a,-9 (ix)
   4F55 DD 77 FF      [19] 1120 	ld	-1 (ix),a
                           1121 ;src/game/game.c:241: drawWorld(ulx, uly);
   4F58 DD 7E FB      [19] 1122 	ld	a,-5 (ix)
   4F5B F5            [11] 1123 	push	af
   4F5C 33            [ 6] 1124 	inc	sp
   4F5D DD 7E FF      [19] 1125 	ld	a,-1 (ix)
   4F60 F5            [11] 1126 	push	af
   4F61 33            [ 6] 1127 	inc	sp
   4F62 CD 18 5B      [17] 1128 	call	_drawWorld
   4F65 F1            [10] 1129 	pop	af
                           1130 ;src/game/game.c:246: for(i=0; i<14000; i++) {}
   4F66                    1131 00225$:
   4F66 21 B0 36      [10] 1132 	ld	hl,#0x36B0
   4F69                    1133 00195$:
   4F69 2B            [ 6] 1134 	dec	hl
   4F6A 7C            [ 4] 1135 	ld	a,h
   4F6B B5            [ 4] 1136 	or	a,l
   4F6C 20 FB         [12] 1137 	jr	NZ,00195$
   4F6E C3 4F 51      [10] 1138 	jp	00180$
   4F71                    1139 00170$:
                           1140 ;src/game/game.c:250: else if ( cpct_isKeyPressed(Key_Space) )
   4F71 21 05 80      [10] 1141 	ld	hl,#0x8005
   4F74 CD 30 74      [17] 1142 	call	_cpct_isKeyPressed
   4F77 7D            [ 4] 1143 	ld	a,l
   4F78 B7            [ 4] 1144 	or	a, a
   4F79 CA F7 4F      [10] 1145 	jp	Z,00167$
                           1146 ;src/game/game.c:252: if(CURSOR_MODE==T_SSNS)
   4F7C 3A AA 8A      [13] 1147 	ld	a,(#_CURSOR_MODE + 0)
   4F7F 3D            [ 4] 1148 	dec	a
   4F80 20 07         [12] 1149 	jr	NZ,00143$
                           1150 ;src/game/game.c:253: CURSOR_MODE=T_SSEW;
   4F82 21 AA 8A      [10] 1151 	ld	hl,#_CURSOR_MODE + 0
   4F85 36 02         [10] 1152 	ld	(hl), #0x02
   4F87 18 63         [12] 1153 	jr	00237$
   4F89                    1154 00143$:
                           1155 ;src/game/game.c:254: else if(CURSOR_MODE==T_SSEW)
   4F89 3A AA 8A      [13] 1156 	ld	a,(#_CURSOR_MODE + 0)
   4F8C D6 02         [ 7] 1157 	sub	a, #0x02
   4F8E 20 07         [12] 1158 	jr	NZ,00140$
                           1159 ;src/game/game.c:255: CURSOR_MODE=T_SSNS;
   4F90 21 AA 8A      [10] 1160 	ld	hl,#_CURSOR_MODE + 0
   4F93 36 01         [10] 1161 	ld	(hl), #0x01
   4F95 18 55         [12] 1162 	jr	00237$
   4F97                    1163 00140$:
                           1164 ;src/game/game.c:256: else if(CURSOR_MODE==T_SMNS)
   4F97 3A AA 8A      [13] 1165 	ld	a,(#_CURSOR_MODE + 0)
   4F9A D6 03         [ 7] 1166 	sub	a, #0x03
   4F9C 20 07         [12] 1167 	jr	NZ,00137$
                           1168 ;src/game/game.c:257: CURSOR_MODE=T_SMEW;
   4F9E 21 AA 8A      [10] 1169 	ld	hl,#_CURSOR_MODE + 0
   4FA1 36 04         [10] 1170 	ld	(hl), #0x04
   4FA3 18 47         [12] 1171 	jr	00237$
   4FA5                    1172 00137$:
                           1173 ;src/game/game.c:258: else if(CURSOR_MODE==T_SMEW)
   4FA5 3A AA 8A      [13] 1174 	ld	a,(#_CURSOR_MODE + 0)
   4FA8 D6 04         [ 7] 1175 	sub	a, #0x04
   4FAA 20 07         [12] 1176 	jr	NZ,00134$
                           1177 ;src/game/game.c:259: CURSOR_MODE=T_SMNS;
   4FAC 21 AA 8A      [10] 1178 	ld	hl,#_CURSOR_MODE + 0
   4FAF 36 03         [10] 1179 	ld	(hl), #0x03
   4FB1 18 39         [12] 1180 	jr	00237$
   4FB3                    1181 00134$:
                           1182 ;src/game/game.c:260: else if(CURSOR_MODE==T_SLNS)
   4FB3 3A AA 8A      [13] 1183 	ld	a,(#_CURSOR_MODE + 0)
   4FB6 D6 05         [ 7] 1184 	sub	a, #0x05
   4FB8 20 07         [12] 1185 	jr	NZ,00131$
                           1186 ;src/game/game.c:261: CURSOR_MODE=T_SLEW;
   4FBA 21 AA 8A      [10] 1187 	ld	hl,#_CURSOR_MODE + 0
   4FBD 36 06         [10] 1188 	ld	(hl), #0x06
   4FBF 18 2B         [12] 1189 	jr	00237$
   4FC1                    1190 00131$:
                           1191 ;src/game/game.c:262: else if(CURSOR_MODE==T_SLEW)
   4FC1 3A AA 8A      [13] 1192 	ld	a,(#_CURSOR_MODE + 0)
   4FC4 D6 06         [ 7] 1193 	sub	a, #0x06
   4FC6 20 07         [12] 1194 	jr	NZ,00128$
                           1195 ;src/game/game.c:263: CURSOR_MODE=T_SLNS;
   4FC8 21 AA 8A      [10] 1196 	ld	hl,#_CURSOR_MODE + 0
   4FCB 36 05         [10] 1197 	ld	(hl), #0x05
   4FCD 18 1D         [12] 1198 	jr	00237$
   4FCF                    1199 00128$:
                           1200 ;src/game/game.c:264: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   4FCF 3A AA 8A      [13] 1201 	ld	a,(#_CURSOR_MODE + 0)
   4FD2 FE 07         [ 7] 1202 	cp	a,#0x07
   4FD4 38 0A         [12] 1203 	jr	C,00124$
   4FD6 D6 10         [ 7] 1204 	sub	a, #0x10
   4FD8 30 06         [12] 1205 	jr	NC,00124$
                           1206 ;src/game/game.c:265: CURSOR_MODE+=1;
   4FDA 21 AA 8A      [10] 1207 	ld	hl, #_CURSOR_MODE+0
   4FDD 34            [11] 1208 	inc	(hl)
   4FDE 18 0C         [12] 1209 	jr	00237$
   4FE0                    1210 00124$:
                           1211 ;src/game/game.c:266: else if(CURSOR_MODE==T_RNSW)
   4FE0 3A AA 8A      [13] 1212 	ld	a,(#_CURSOR_MODE + 0)
   4FE3 D6 10         [ 7] 1213 	sub	a, #0x10
   4FE5 20 05         [12] 1214 	jr	NZ,00237$
                           1215 ;src/game/game.c:267: CURSOR_MODE=T_REW;
   4FE7 21 AA 8A      [10] 1216 	ld	hl,#_CURSOR_MODE + 0
   4FEA 36 07         [10] 1217 	ld	(hl), #0x07
                           1218 ;src/game/game.c:269: for(i=0; i<14000; i++) {}
   4FEC                    1219 00237$:
   4FEC 21 B0 36      [10] 1220 	ld	hl,#0x36B0
   4FEF                    1221 00198$:
   4FEF 2B            [ 6] 1222 	dec	hl
   4FF0 7C            [ 4] 1223 	ld	a,h
   4FF1 B5            [ 4] 1224 	or	a,l
   4FF2 20 FB         [12] 1225 	jr	NZ,00198$
   4FF4 C3 4F 51      [10] 1226 	jp	00180$
   4FF7                    1227 00167$:
                           1228 ;src/game/game.c:272: else if ( cpct_isKeyPressed(Key_Esc) )
   4FF7 21 08 04      [10] 1229 	ld	hl,#0x0408
   4FFA CD 30 74      [17] 1230 	call	_cpct_isKeyPressed
   4FFD 7D            [ 4] 1231 	ld	a,l
   4FFE B7            [ 4] 1232 	or	a, a
   4FFF CA 96 50      [10] 1233 	jp	Z,00164$
                           1234 ;src/game/game.c:275: if(CURSOR_MODE==NONE)
   5002 3A AA 8A      [13] 1235 	ld	a,(#_CURSOR_MODE + 0)
   5005 B7            [ 4] 1236 	or	a, a
   5006 20 62         [12] 1237 	jr	NZ,00150$
                           1238 ;src/game/game.c:278: const char *txtWindowQuit[] = { 
   5008 21 00 00      [10] 1239 	ld	hl,#0x0000
   500B 39            [11] 1240 	add	hl,sp
   500C 5D            [ 4] 1241 	ld	e,l
   500D 54            [ 4] 1242 	ld	d,h
   500E 36 7B         [10] 1243 	ld	(hl),#<(___str_30)
   5010 23            [ 6] 1244 	inc	hl
   5011 36 51         [10] 1245 	ld	(hl),#>(___str_30)
   5013 6B            [ 4] 1246 	ld	l, e
   5014 62            [ 4] 1247 	ld	h, d
   5015 23            [ 6] 1248 	inc	hl
   5016 23            [ 6] 1249 	inc	hl
   5017 36 89         [10] 1250 	ld	(hl),#<(___str_31)
   5019 23            [ 6] 1251 	inc	hl
   501A 36 51         [10] 1252 	ld	(hl),#>(___str_31)
   501C 21 04 00      [10] 1253 	ld	hl,#0x0004
   501F 19            [11] 1254 	add	hl,de
   5020 36 8A         [10] 1255 	ld	(hl),#<(___str_32)
   5022 23            [ 6] 1256 	inc	hl
   5023 36 51         [10] 1257 	ld	(hl),#>(___str_32)
                           1258 ;src/game/game.c:284: putM2();
   5025 D5            [11] 1259 	push	de
   5026 CD 78 5B      [17] 1260 	call	_putM2
   5029 D1            [10] 1261 	pop	de
                           1262 ;src/game/game.c:285: if(	drawWindow(txtWindowQuit,3,1) == 1)
   502A 21 03 01      [10] 1263 	ld	hl,#0x0103
   502D E5            [11] 1264 	push	hl
   502E D5            [11] 1265 	push	de
   502F CD 7C 60      [17] 1266 	call	_drawWindow
   5032 F1            [10] 1267 	pop	af
   5033 F1            [10] 1268 	pop	af
   5034 2D            [ 4] 1269 	dec	l
   5035 20 06         [12] 1270 	jr	NZ,00147$
                           1271 ;src/game/game.c:286: exit=1;
   5037 DD 36 F6 01   [19] 1272 	ld	-10 (ix),#0x01
   503B 18 4E         [12] 1273 	jr	00242$
   503D                    1274 00147$:
                           1275 ;src/game/game.c:289: putM1();
   503D CD 64 5B      [17] 1276 	call	_putM1
                           1277 ;src/game/game.c:290: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5040 21 00 00      [10] 1278 	ld	hl,#0x0000
   5043 E5            [11] 1279 	push	hl
   5044 2E 00         [ 7] 1280 	ld	l, #0x00
   5046 E5            [11] 1281 	push	hl
   5047 CD 90 79      [17] 1282 	call	_cpct_px2byteM1
   504A F1            [10] 1283 	pop	af
   504B F1            [10] 1284 	pop	af
   504C 65            [ 4] 1285 	ld	h,l
   504D 01 00 40      [10] 1286 	ld	bc,#0x4000
   5050 C5            [11] 1287 	push	bc
   5051 E5            [11] 1288 	push	hl
   5052 33            [ 6] 1289 	inc	sp
   5053 21 00 C0      [10] 1290 	ld	hl,#0xC000
   5056 E5            [11] 1291 	push	hl
   5057 CD 82 79      [17] 1292 	call	_cpct_memset
                           1293 ;src/game/game.c:291: drawWorld(ulx, uly);
   505A DD 7E FB      [19] 1294 	ld	a,-5 (ix)
   505D F5            [11] 1295 	push	af
   505E 33            [ 6] 1296 	inc	sp
   505F DD 7E FF      [19] 1297 	ld	a,-1 (ix)
   5062 F5            [11] 1298 	push	af
   5063 33            [ 6] 1299 	inc	sp
   5064 CD 18 5B      [17] 1300 	call	_drawWorld
   5067 F1            [10] 1301 	pop	af
   5068 18 21         [12] 1302 	jr	00242$
   506A                    1303 00150$:
                           1304 ;src/game/game.c:296: CURSOR_MODE=NONE;
   506A FD 21 AA 8A   [14] 1305 	ld	iy,#_CURSOR_MODE
   506E FD 36 00 00   [19] 1306 	ld	0 (iy),#0x00
                           1307 ;src/game/game.c:297: drawTile(ulx, uly, xCursor, yCursor);
   5072 DD 7E FE      [19] 1308 	ld	a,-2 (ix)
   5075 F5            [11] 1309 	push	af
   5076 33            [ 6] 1310 	inc	sp
   5077 DD 7E FC      [19] 1311 	ld	a,-4 (ix)
   507A F5            [11] 1312 	push	af
   507B 33            [ 6] 1313 	inc	sp
   507C DD 7E FB      [19] 1314 	ld	a,-5 (ix)
   507F F5            [11] 1315 	push	af
   5080 33            [ 6] 1316 	inc	sp
   5081 DD 7E FF      [19] 1317 	ld	a,-1 (ix)
   5084 F5            [11] 1318 	push	af
   5085 33            [ 6] 1319 	inc	sp
   5086 CD 57 58      [17] 1320 	call	_drawTile
   5089 F1            [10] 1321 	pop	af
   508A F1            [10] 1322 	pop	af
                           1323 ;src/game/game.c:301: for(i=0; i<14000; i++) {}
   508B                    1324 00242$:
   508B 01 B0 36      [10] 1325 	ld	bc,#0x36B0
   508E                    1326 00201$:
   508E 0B            [ 6] 1327 	dec	bc
   508F 78            [ 4] 1328 	ld	a,b
   5090 B1            [ 4] 1329 	or	a,c
   5091 20 FB         [12] 1330 	jr	NZ,00201$
   5093 C3 4F 51      [10] 1331 	jp	00180$
   5096                    1332 00164$:
                           1333 ;src/game/game.c:304: else if ( cpct_isKeyPressed(Key_Return) )
   5096 21 02 04      [10] 1334 	ld	hl,#0x0402
   5099 CD 30 74      [17] 1335 	call	_cpct_isKeyPressed
   509C 7D            [ 4] 1336 	ld	a,l
   509D B7            [ 4] 1337 	or	a, a
   509E CA 4F 51      [10] 1338 	jp	Z,00180$
                           1339 ;src/game/game.c:307: if(CURSOR_MODE==NONE)
   50A1 3A AA 8A      [13] 1340 	ld	a,(#_CURSOR_MODE + 0)
   50A4 B7            [ 4] 1341 	or	a, a
   50A5 20 42         [12] 1342 	jr	NZ,00158$
                           1343 ;src/game/game.c:309: menuTile(ulx+xCursor, uly+yCursor);
   50A7 DD 7E F9      [19] 1344 	ld	a, -7 (ix)
   50AA DD 6E F4      [19] 1345 	ld	l, -12 (ix)
   50AD 85            [ 4] 1346 	add	a, l
   50AE 67            [ 4] 1347 	ld	h,a
   50AF DD 6E F7      [19] 1348 	ld	l,-9 (ix)
   50B2 DD 56 F0      [19] 1349 	ld	d,-16 (ix)
   50B5 7D            [ 4] 1350 	ld	a,l
   50B6 82            [ 4] 1351 	add	a, d
   50B7 E5            [11] 1352 	push	hl
   50B8 33            [ 6] 1353 	inc	sp
   50B9 F5            [11] 1354 	push	af
   50BA 33            [ 6] 1355 	inc	sp
   50BB CD 07 4B      [17] 1356 	call	_menuTile
   50BE F1            [10] 1357 	pop	af
                           1358 ;src/game/game.c:310: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   50BF 21 00 00      [10] 1359 	ld	hl,#0x0000
   50C2 E5            [11] 1360 	push	hl
   50C3 2E 00         [ 7] 1361 	ld	l, #0x00
   50C5 E5            [11] 1362 	push	hl
   50C6 CD 90 79      [17] 1363 	call	_cpct_px2byteM1
   50C9 F1            [10] 1364 	pop	af
   50CA F1            [10] 1365 	pop	af
   50CB 65            [ 4] 1366 	ld	h,l
   50CC 01 00 40      [10] 1367 	ld	bc,#0x4000
   50CF C5            [11] 1368 	push	bc
   50D0 E5            [11] 1369 	push	hl
   50D1 33            [ 6] 1370 	inc	sp
   50D2 21 00 C0      [10] 1371 	ld	hl,#0xC000
   50D5 E5            [11] 1372 	push	hl
   50D6 CD 82 79      [17] 1373 	call	_cpct_memset
                           1374 ;src/game/game.c:311: drawWorld(ulx, uly);
   50D9 DD 7E FB      [19] 1375 	ld	a,-5 (ix)
   50DC F5            [11] 1376 	push	af
   50DD 33            [ 6] 1377 	inc	sp
   50DE DD 7E FF      [19] 1378 	ld	a,-1 (ix)
   50E1 F5            [11] 1379 	push	af
   50E2 33            [ 6] 1380 	inc	sp
   50E3 CD 18 5B      [17] 1381 	call	_drawWorld
   50E6 F1            [10] 1382 	pop	af
   50E7 18 4B         [12] 1383 	jr	00248$
   50E9                    1384 00158$:
                           1385 ;src/game/game.c:314: else if(CURSOR_MODE>=T_SSNS)
   50E9 3A AA 8A      [13] 1386 	ld	a,(#_CURSOR_MODE + 0)
   50EC D6 01         [ 7] 1387 	sub	a, #0x01
   50EE 38 44         [12] 1388 	jr	C,00248$
                           1389 ;src/game/game.c:316: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   50F0 DD 7E F7      [19] 1390 	ld	a,-9 (ix)
   50F3 DD 86 F0      [19] 1391 	add	a, -16 (ix)
   50F6 5F            [ 4] 1392 	ld	e,a
   50F7 DD 7E F8      [19] 1393 	ld	a,-8 (ix)
   50FA DD 8E F1      [19] 1394 	adc	a, -15 (ix)
   50FD 57            [ 4] 1395 	ld	d,a
   50FE DD 7E F9      [19] 1396 	ld	a,-7 (ix)
   5101 DD 86 F4      [19] 1397 	add	a, -12 (ix)
   5104 6F            [ 4] 1398 	ld	l,a
   5105 DD 7E FA      [19] 1399 	ld	a,-6 (ix)
   5108 DD 8E F5      [19] 1400 	adc	a, -11 (ix)
   510B 67            [ 4] 1401 	ld	h,a
   510C 4D            [ 4] 1402 	ld	c, l
   510D 44            [ 4] 1403 	ld	b, h
   510E 29            [11] 1404 	add	hl, hl
   510F 29            [11] 1405 	add	hl, hl
   5110 09            [11] 1406 	add	hl, bc
   5111 29            [11] 1407 	add	hl, hl
   5112 29            [11] 1408 	add	hl, hl
   5113 29            [11] 1409 	add	hl, hl
   5114 29            [11] 1410 	add	hl, hl
   5115 19            [11] 1411 	add	hl,de
   5116 3E A6         [ 7] 1412 	ld	a,#<(_p_world)
   5118 85            [ 4] 1413 	add	a, l
   5119 5F            [ 4] 1414 	ld	e,a
   511A 3E 7B         [ 7] 1415 	ld	a,#>(_p_world)
   511C 8C            [ 4] 1416 	adc	a, h
   511D 57            [ 4] 1417 	ld	d,a
   511E 3A AA 8A      [13] 1418 	ld	a,(#_CURSOR_MODE + 0)
   5121 C6 09         [ 7] 1419 	add	a, #0x09
   5123 12            [ 7] 1420 	ld	(de),a
                           1421 ;src/game/game.c:319: if(CURSOR_MODE<=T_SLEW)
   5124 3E 06         [ 7] 1422 	ld	a,#0x06
   5126 FD 21 AA 8A   [14] 1423 	ld	iy,#_CURSOR_MODE
   512A FD 96 00      [19] 1424 	sub	a, 0 (iy)
   512D 38 05         [12] 1425 	jr	C,00248$
                           1426 ;src/game/game.c:320: CURSOR_MODE=NONE;
   512F 21 AA 8A      [10] 1427 	ld	hl,#_CURSOR_MODE + 0
   5132 36 00         [10] 1428 	ld	(hl), #0x00
                           1429 ;src/game/game.c:324: for(i=0; i<14000; i++) {}
   5134                    1430 00248$:
   5134 DD 36 F2 B0   [19] 1431 	ld	-14 (ix),#0xB0
   5138 DD 36 F3 36   [19] 1432 	ld	-13 (ix),#0x36
   513C                    1433 00204$:
   513C DD 6E F2      [19] 1434 	ld	l,-14 (ix)
   513F DD 66 F3      [19] 1435 	ld	h,-13 (ix)
   5142 2B            [ 6] 1436 	dec	hl
   5143 DD 75 F2      [19] 1437 	ld	-14 (ix),l
   5146 DD 74 F3      [19] 1438 	ld	-13 (ix), h
   5149 7C            [ 4] 1439 	ld	a, h
   514A DD B6 F2      [19] 1440 	or	a,-14 (ix)
   514D 20 ED         [12] 1441 	jr	NZ,00204$
   514F                    1442 00180$:
                           1443 ;src/game/game.c:328: drawCursor(xCursor, yCursor, 0);
   514F DD 56 F4      [19] 1444 	ld	d,-12 (ix)
   5152 DD 46 F0      [19] 1445 	ld	b,-16 (ix)
   5155 AF            [ 4] 1446 	xor	a, a
   5156 F5            [11] 1447 	push	af
   5157 33            [ 6] 1448 	inc	sp
   5158 D5            [11] 1449 	push	de
   5159 33            [ 6] 1450 	inc	sp
   515A C5            [11] 1451 	push	bc
   515B 33            [ 6] 1452 	inc	sp
   515C CD C4 51      [17] 1453 	call	_drawCursor
   515F F1            [10] 1454 	pop	af
   5160 33            [ 6] 1455 	inc	sp
                           1456 ;src/game/game.c:329: drawScrolls(ulx, uly);
   5161 DD 7E FB      [19] 1457 	ld	a,-5 (ix)
   5164 F5            [11] 1458 	push	af
   5165 33            [ 6] 1459 	inc	sp
   5166 DD 7E FF      [19] 1460 	ld	a,-1 (ix)
   5169 F5            [11] 1461 	push	af
   516A 33            [ 6] 1462 	inc	sp
   516B CD 7F 5A      [17] 1463 	call	_drawScrolls
   516E F1            [10] 1464 	pop	af
                           1465 ;src/game/game.c:331: while(!exit);
   516F DD 7E F6      [19] 1466 	ld	a,-10 (ix)
   5172 B7            [ 4] 1467 	or	a, a
   5173 CA 47 4D      [10] 1468 	jp	Z,00181$
   5176 DD F9         [10] 1469 	ld	sp, ix
   5178 DD E1         [14] 1470 	pop	ix
   517A C9            [10] 1471 	ret
   517B                    1472 ___str_30:
   517B 52 65 61 6C 6C 79  1473 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   5188 00                 1474 	.db 0x00
   5189                    1475 ___str_31:
   5189 00                 1476 	.db 0x00
   518A                    1477 ___str_32:
   518A 50 72 65 73 73 20  1478 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   51AF 00                 1479 	.db 0x00
   51B0                    1480 ___str_33:
   51B0 47 65 6E 65 72 61  1481 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   51C3 00                 1482 	.db 0x00
                           1483 	.area _CODE
                           1484 	.area _INITIALIZER
                           1485 	.area _CABS (ABS)
