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
   48AF                      68 _windowInfoTile::
   48AF DD E5         [15]   69 	push	ix
   48B1 DD 21 00 00   [14]   70 	ld	ix,#0
   48B5 DD 39         [15]   71 	add	ix,sp
   48B7 21 F4 FF      [10]   72 	ld	hl,#-12
   48BA 39            [11]   73 	add	hl,sp
   48BB F9            [ 6]   74 	ld	sp,hl
                             75 ;src/game/game.c:7: txtWindowInfoTile[1] = "";
   48BC 21 00 00      [10]   76 	ld	hl,#0x0000
   48BF 39            [11]   77 	add	hl,sp
   48C0 4D            [ 4]   78 	ld	c,l
   48C1 44            [ 4]   79 	ld	b,h
   48C2 23            [ 6]   80 	inc	hl
   48C3 23            [ 6]   81 	inc	hl
   48C4 11 BB 49      [10]   82 	ld	de,#___str_0+0
   48C7 73            [ 7]   83 	ld	(hl),e
   48C8 23            [ 6]   84 	inc	hl
   48C9 72            [ 7]   85 	ld	(hl),d
                             86 ;src/game/game.c:8: txtWindowInfoTile[2] = "Production: Nothing";
   48CA 21 04 00      [10]   87 	ld	hl,#0x0004
   48CD 09            [11]   88 	add	hl,bc
   48CE DD 75 FC      [19]   89 	ld	-4 (ix),l
   48D1 DD 74 FD      [19]   90 	ld	-3 (ix),h
   48D4 DD 6E FC      [19]   91 	ld	l,-4 (ix)
   48D7 DD 66 FD      [19]   92 	ld	h,-3 (ix)
   48DA 36 BC         [10]   93 	ld	(hl),#<(___str_1)
   48DC 23            [ 6]   94 	inc	hl
   48DD 36 49         [10]   95 	ld	(hl),#>(___str_1)
                             96 ;src/game/game.c:9: txtWindowInfoTile[3] = "Demand: Nothing";
   48DF 21 06 00      [10]   97 	ld	hl,#0x0006
   48E2 09            [11]   98 	add	hl,bc
   48E3 DD 75 FE      [19]   99 	ld	-2 (ix),l
   48E6 DD 74 FF      [19]  100 	ld	-1 (ix),h
   48E9 DD 6E FE      [19]  101 	ld	l,-2 (ix)
   48EC DD 66 FF      [19]  102 	ld	h,-1 (ix)
   48EF 36 D0         [10]  103 	ld	(hl),#<(___str_2)
   48F1 23            [ 6]  104 	inc	hl
   48F2 36 49         [10]  105 	ld	(hl),#>(___str_2)
                            106 ;src/game/game.c:11: switch(p_world[y*WIDTH+x])
   48F4 DD 5E 05      [19]  107 	ld	e,5 (ix)
   48F7 16 00         [ 7]  108 	ld	d,#0x00
   48F9 6B            [ 4]  109 	ld	l, e
   48FA 62            [ 4]  110 	ld	h, d
   48FB 29            [11]  111 	add	hl, hl
   48FC 29            [11]  112 	add	hl, hl
   48FD 19            [11]  113 	add	hl, de
   48FE 29            [11]  114 	add	hl, hl
   48FF 29            [11]  115 	add	hl, hl
   4900 29            [11]  116 	add	hl, hl
   4901 29            [11]  117 	add	hl, hl
   4902 DD 5E 04      [19]  118 	ld	e,4 (ix)
   4905 16 00         [ 7]  119 	ld	d,#0x00
   4907 19            [11]  120 	add	hl,de
   4908 11 BB 7B      [10]  121 	ld	de,#_p_world
   490B 19            [11]  122 	add	hl,de
   490C 5E            [ 7]  123 	ld	e,(hl)
   490D 3E 09         [ 7]  124 	ld	a,#0x09
   490F 93            [ 4]  125 	sub	a, e
   4910 DA A7 49      [10]  126 	jp	C,00111$
   4913 16 00         [ 7]  127 	ld	d,#0x00
   4915 21 1C 49      [10]  128 	ld	hl,#00119$
   4918 19            [11]  129 	add	hl,de
   4919 19            [11]  130 	add	hl,de
   491A 19            [11]  131 	add	hl,de
   491B E9            [ 4]  132 	jp	(hl)
   491C                     133 00119$:
   491C C3 3A 49      [10]  134 	jp	00101$
   491F C3 3A 49      [10]  135 	jp	00102$
   4922 C3 43 49      [10]  136 	jp	00103$
   4925 C3 43 49      [10]  137 	jp	00104$
   4928 C3 43 49      [10]  138 	jp	00105$
   492B C3 62 49      [10]  139 	jp	00106$
   492E C3 62 49      [10]  140 	jp	00107$
   4931 C3 76 49      [10]  141 	jp	00108$
   4934 C3 7F 49      [10]  142 	jp	00109$
   4937 C3 88 49      [10]  143 	jp	00110$
                            144 ;src/game/game.c:13: case GRASS1:
   493A                     145 00101$:
                            146 ;src/game/game.c:14: case GRASS2:
   493A                     147 00102$:
                            148 ;src/game/game.c:15: txtWindowInfoTile[0] = "Grassland";
   493A 69            [ 4]  149 	ld	l, c
   493B 60            [ 4]  150 	ld	h, b
   493C 36 E0         [10]  151 	ld	(hl),#<(___str_3)
   493E 23            [ 6]  152 	inc	hl
   493F 36 49         [10]  153 	ld	(hl),#>(___str_3)
                            154 ;src/game/game.c:16: break;
   4941 18 6B         [12]  155 	jr	00112$
                            156 ;src/game/game.c:17: case DWELLINGS1:
   4943                     157 00103$:
                            158 ;src/game/game.c:18: case DWELLINGS2:
   4943                     159 00104$:
                            160 ;src/game/game.c:19: case DWELLINGS3:
   4943                     161 00105$:
                            162 ;src/game/game.c:20: txtWindowInfoTile[0] = "City";
   4943 69            [ 4]  163 	ld	l, c
   4944 60            [ 4]  164 	ld	h, b
   4945 36 EA         [10]  165 	ld	(hl),#<(___str_4)
   4947 23            [ 6]  166 	inc	hl
   4948 36 49         [10]  167 	ld	(hl),#>(___str_4)
                            168 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   494A DD 6E FC      [19]  169 	ld	l,-4 (ix)
   494D DD 66 FD      [19]  170 	ld	h,-3 (ix)
   4950 36 EF         [10]  171 	ld	(hl),#<(___str_5)
   4952 23            [ 6]  172 	inc	hl
   4953 36 49         [10]  173 	ld	(hl),#>(___str_5)
                            174 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4955 DD 6E FE      [19]  175 	ld	l,-2 (ix)
   4958 DD 66 FF      [19]  176 	ld	h,-1 (ix)
   495B 36 0C         [10]  177 	ld	(hl),#<(___str_6)
   495D 23            [ 6]  178 	inc	hl
   495E 36 4A         [10]  179 	ld	(hl),#>(___str_6)
                            180 ;src/game/game.c:23: break;
   4960 18 4C         [12]  181 	jr	00112$
                            182 ;src/game/game.c:24: case FARM1:
   4962                     183 00106$:
                            184 ;src/game/game.c:25: case FARM2:
   4962                     185 00107$:
                            186 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   4962 69            [ 4]  187 	ld	l, c
   4963 60            [ 4]  188 	ld	h, b
   4964 36 31         [10]  189 	ld	(hl),#<(___str_7)
   4966 23            [ 6]  190 	inc	hl
   4967 36 4A         [10]  191 	ld	(hl),#>(___str_7)
                            192 ;src/game/game.c:27: txtWindowInfoTile[2] = "Production: Cereal";
   4969 DD 6E FC      [19]  193 	ld	l,-4 (ix)
   496C DD 66 FD      [19]  194 	ld	h,-3 (ix)
   496F 36 36         [10]  195 	ld	(hl),#<(___str_8)
   4971 23            [ 6]  196 	inc	hl
   4972 36 4A         [10]  197 	ld	(hl),#>(___str_8)
                            198 ;src/game/game.c:28: break;
   4974 18 38         [12]  199 	jr	00112$
                            200 ;src/game/game.c:29: case WATER:
   4976                     201 00108$:
                            202 ;src/game/game.c:30: txtWindowInfoTile[0] = "Water";
   4976 69            [ 4]  203 	ld	l, c
   4977 60            [ 4]  204 	ld	h, b
   4978 36 49         [10]  205 	ld	(hl),#<(___str_9)
   497A 23            [ 6]  206 	inc	hl
   497B 36 4A         [10]  207 	ld	(hl),#>(___str_9)
                            208 ;src/game/game.c:31: break;
   497D 18 2F         [12]  209 	jr	00112$
                            210 ;src/game/game.c:32: case FOREST:
   497F                     211 00109$:
                            212 ;src/game/game.c:33: txtWindowInfoTile[0] = "Forest";
   497F 69            [ 4]  213 	ld	l, c
   4980 60            [ 4]  214 	ld	h, b
   4981 36 4F         [10]  215 	ld	(hl),#<(___str_10)
   4983 23            [ 6]  216 	inc	hl
   4984 36 4A         [10]  217 	ld	(hl),#>(___str_10)
                            218 ;src/game/game.c:34: break;
   4986 18 26         [12]  219 	jr	00112$
                            220 ;src/game/game.c:35: case LIVESTOCK:
   4988                     221 00110$:
                            222 ;src/game/game.c:36: txtWindowInfoTile[0] = "Livestock farming";
   4988 69            [ 4]  223 	ld	l, c
   4989 60            [ 4]  224 	ld	h, b
   498A 36 56         [10]  225 	ld	(hl),#<(___str_11)
   498C 23            [ 6]  226 	inc	hl
   498D 36 4A         [10]  227 	ld	(hl),#>(___str_11)
                            228 ;src/game/game.c:37: txtWindowInfoTile[2] = "Production: Livestock, wool";
   498F DD 6E FC      [19]  229 	ld	l,-4 (ix)
   4992 DD 66 FD      [19]  230 	ld	h,-3 (ix)
   4995 36 68         [10]  231 	ld	(hl),#<(___str_12)
   4997 23            [ 6]  232 	inc	hl
   4998 36 4A         [10]  233 	ld	(hl),#>(___str_12)
                            234 ;src/game/game.c:38: txtWindowInfoTile[3] = "Demand: Cereal";
   499A DD 6E FE      [19]  235 	ld	l,-2 (ix)
   499D DD 66 FF      [19]  236 	ld	h,-1 (ix)
   49A0 36 84         [10]  237 	ld	(hl),#<(___str_13)
   49A2 23            [ 6]  238 	inc	hl
   49A3 36 4A         [10]  239 	ld	(hl),#>(___str_13)
                            240 ;src/game/game.c:39: break;
   49A5 18 07         [12]  241 	jr	00112$
                            242 ;src/game/game.c:40: default:
   49A7                     243 00111$:
                            244 ;src/game/game.c:41: txtWindowInfoTile[0] = "Not yet implemented";
   49A7 69            [ 4]  245 	ld	l, c
   49A8 60            [ 4]  246 	ld	h, b
   49A9 36 93         [10]  247 	ld	(hl),#<(___str_14)
   49AB 23            [ 6]  248 	inc	hl
   49AC 36 4A         [10]  249 	ld	(hl),#>(___str_14)
                            250 ;src/game/game.c:42: }
   49AE                     251 00112$:
                            252 ;src/game/game.c:44: drawWindow(txtWindowInfoTile, 4, 0);
   49AE 21 04 00      [10]  253 	ld	hl,#0x0004
   49B1 E5            [11]  254 	push	hl
   49B2 C5            [11]  255 	push	bc
   49B3 CD 91 60      [17]  256 	call	_drawWindow
   49B6 DD F9         [10]  257 	ld	sp,ix
   49B8 DD E1         [14]  258 	pop	ix
   49BA C9            [10]  259 	ret
   49BB                     260 ___str_0:
   49BB 00                  261 	.db 0x00
   49BC                     262 ___str_1:
   49BC 50 72 6F 64 75 63   263 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   49CF 00                  264 	.db 0x00
   49D0                     265 ___str_2:
   49D0 44 65 6D 61 6E 64   266 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   49DF 00                  267 	.db 0x00
   49E0                     268 ___str_3:
   49E0 47 72 61 73 73 6C   269 	.ascii "Grassland"
        61 6E 64
   49E9 00                  270 	.db 0x00
   49EA                     271 ___str_4:
   49EA 43 69 74 79         272 	.ascii "City"
   49EE 00                  273 	.db 0x00
   49EF                     274 ___str_5:
   49EF 50 72 6F 64 75 63   275 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   4A0B 00                  276 	.db 0x00
   4A0C                     277 ___str_6:
   4A0C 44 65 6D 61 6E 64   278 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   4A30 00                  279 	.db 0x00
   4A31                     280 ___str_7:
   4A31 46 61 72 6D         281 	.ascii "Farm"
   4A35 00                  282 	.db 0x00
   4A36                     283 ___str_8:
   4A36 50 72 6F 64 75 63   284 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   4A48 00                  285 	.db 0x00
   4A49                     286 ___str_9:
   4A49 57 61 74 65 72      287 	.ascii "Water"
   4A4E 00                  288 	.db 0x00
   4A4F                     289 ___str_10:
   4A4F 46 6F 72 65 73 74   290 	.ascii "Forest"
   4A55 00                  291 	.db 0x00
   4A56                     292 ___str_11:
   4A56 4C 69 76 65 73 74   293 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   4A67 00                  294 	.db 0x00
   4A68                     295 ___str_12:
   4A68 50 72 6F 64 75 63   296 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   4A83 00                  297 	.db 0x00
   4A84                     298 ___str_13:
   4A84 44 65 6D 61 6E 64   299 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   4A92 00                  300 	.db 0x00
   4A93                     301 ___str_14:
   4A93 4E 6F 74 20 79 65   302 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   4AA6 00                  303 	.db 0x00
                            304 ;src/game/game.c:47: void menuStations()
                            305 ;	---------------------------------
                            306 ; Function menuStations
                            307 ; ---------------------------------
   4AA7                     308 _menuStations::
   4AA7 DD E5         [15]  309 	push	ix
   4AA9 DD 21 00 00   [14]  310 	ld	ix,#0
   4AAD DD 39         [15]  311 	add	ix,sp
   4AAF 21 FA FF      [10]  312 	ld	hl,#-6
   4AB2 39            [11]  313 	add	hl,sp
   4AB3 F9            [ 6]  314 	ld	sp,hl
                            315 ;src/game/game.c:51: const char *txtMenuSizeStation[] = { 
   4AB4 21 00 00      [10]  316 	ld	hl,#0x0000
   4AB7 39            [11]  317 	add	hl,sp
   4AB8 5D            [ 4]  318 	ld	e,l
   4AB9 54            [ 4]  319 	ld	d,h
   4ABA 36 09         [10]  320 	ld	(hl),#<(___str_15)
   4ABC 23            [ 6]  321 	inc	hl
   4ABD 36 4B         [10]  322 	ld	(hl),#>(___str_15)
   4ABF 6B            [ 4]  323 	ld	l, e
   4AC0 62            [ 4]  324 	ld	h, d
   4AC1 23            [ 6]  325 	inc	hl
   4AC2 23            [ 6]  326 	inc	hl
   4AC3 01 0F 4B      [10]  327 	ld	bc,#___str_16+0
   4AC6 71            [ 7]  328 	ld	(hl),c
   4AC7 23            [ 6]  329 	inc	hl
   4AC8 70            [ 7]  330 	ld	(hl),b
   4AC9 21 04 00      [10]  331 	ld	hl,#0x0004
   4ACC 19            [11]  332 	add	hl,de
   4ACD 01 16 4B      [10]  333 	ld	bc,#___str_17+0
   4AD0 71            [ 7]  334 	ld	(hl),c
   4AD1 23            [ 6]  335 	inc	hl
   4AD2 70            [ 7]  336 	ld	(hl),b
                            337 ;src/game/game.c:57: result = drawMenu(txtMenuSizeStation,3);
   4AD3 3E 03         [ 7]  338 	ld	a,#0x03
   4AD5 F5            [11]  339 	push	af
   4AD6 33            [ 6]  340 	inc	sp
   4AD7 D5            [11]  341 	push	de
   4AD8 CD 93 5F      [17]  342 	call	_drawMenu
   4ADB F1            [10]  343 	pop	af
   4ADC 33            [ 6]  344 	inc	sp
   4ADD 5D            [ 4]  345 	ld	e,l
                            346 ;src/game/game.c:59: switch(result)
   4ADE 3E 02         [ 7]  347 	ld	a,#0x02
   4AE0 93            [ 4]  348 	sub	a, e
   4AE1 38 21         [12]  349 	jr	C,00105$
   4AE3 16 00         [ 7]  350 	ld	d,#0x00
   4AE5 21 EB 4A      [10]  351 	ld	hl,#00111$
   4AE8 19            [11]  352 	add	hl,de
   4AE9 19            [11]  353 	add	hl,de
                            354 ;src/game/game.c:61: case 0:
   4AEA E9            [ 4]  355 	jp	(hl)
   4AEB                     356 00111$:
   4AEB 18 04         [12]  357 	jr	00101$
   4AED 18 09         [12]  358 	jr	00102$
   4AEF 18 0E         [12]  359 	jr	00103$
   4AF1                     360 00101$:
                            361 ;src/game/game.c:62: CURSOR_MODE=T_SSEW;
   4AF1 21 BF 8A      [10]  362 	ld	hl,#_CURSOR_MODE + 0
   4AF4 36 02         [10]  363 	ld	(hl), #0x02
                            364 ;src/game/game.c:63: break;
   4AF6 18 0C         [12]  365 	jr	00105$
                            366 ;src/game/game.c:65: case 1:
   4AF8                     367 00102$:
                            368 ;src/game/game.c:66: CURSOR_MODE=T_SMEW;
   4AF8 21 BF 8A      [10]  369 	ld	hl,#_CURSOR_MODE + 0
   4AFB 36 04         [10]  370 	ld	(hl), #0x04
                            371 ;src/game/game.c:67: break;
   4AFD 18 05         [12]  372 	jr	00105$
                            373 ;src/game/game.c:69: case 2:
   4AFF                     374 00103$:
                            375 ;src/game/game.c:70: CURSOR_MODE=T_SLEW;
   4AFF 21 BF 8A      [10]  376 	ld	hl,#_CURSOR_MODE + 0
   4B02 36 06         [10]  377 	ld	(hl), #0x06
                            378 ;src/game/game.c:72: }
   4B04                     379 00105$:
   4B04 DD F9         [10]  380 	ld	sp, ix
   4B06 DD E1         [14]  381 	pop	ix
   4B08 C9            [10]  382 	ret
   4B09                     383 ___str_15:
   4B09 53 6D 61 6C 6C      384 	.ascii "Small"
   4B0E 00                  385 	.db 0x00
   4B0F                     386 ___str_16:
   4B0F 4D 65 64 69 75 6D   387 	.ascii "Medium"
   4B15 00                  388 	.db 0x00
   4B16                     389 ___str_17:
   4B16 4C 61 72 67 65      390 	.ascii "Large"
   4B1B 00                  391 	.db 0x00
                            392 ;src/game/game.c:75: void menuTile(u8 x, u8 y)
                            393 ;	---------------------------------
                            394 ; Function menuTile
                            395 ; ---------------------------------
   4B1C                     396 _menuTile::
   4B1C DD E5         [15]  397 	push	ix
   4B1E DD 21 00 00   [14]  398 	ld	ix,#0
   4B22 DD 39         [15]  399 	add	ix,sp
   4B24 21 E6 FF      [10]  400 	ld	hl,#-26
   4B27 39            [11]  401 	add	hl,sp
   4B28 F9            [ 6]  402 	ld	sp,hl
                            403 ;src/game/game.c:79: const char *txtMenuTile[] = { 
   4B29 21 00 00      [10]  404 	ld	hl,#0x0000
   4B2C 39            [11]  405 	add	hl,sp
   4B2D 5D            [ 4]  406 	ld	e,l
   4B2E 54            [ 4]  407 	ld	d,h
   4B2F 36 50         [10]  408 	ld	(hl),#<(___str_18)
   4B31 23            [ 6]  409 	inc	hl
   4B32 36 4C         [10]  410 	ld	(hl),#>(___str_18)
   4B34 6B            [ 4]  411 	ld	l, e
   4B35 62            [ 4]  412 	ld	h, d
   4B36 23            [ 6]  413 	inc	hl
   4B37 23            [ 6]  414 	inc	hl
   4B38 01 60 4C      [10]  415 	ld	bc,#___str_19+0
   4B3B 71            [ 7]  416 	ld	(hl),c
   4B3C 23            [ 6]  417 	inc	hl
   4B3D 70            [ 7]  418 	ld	(hl),b
   4B3E 21 04 00      [10]  419 	ld	hl,#0x0004
   4B41 19            [11]  420 	add	hl,de
   4B42 01 70 4C      [10]  421 	ld	bc,#___str_20+0
   4B45 71            [ 7]  422 	ld	(hl),c
   4B46 23            [ 6]  423 	inc	hl
   4B47 70            [ 7]  424 	ld	(hl),b
   4B48 21 06 00      [10]  425 	ld	hl,#0x0006
   4B4B 19            [11]  426 	add	hl,de
   4B4C 01 80 4C      [10]  427 	ld	bc,#___str_21+0
   4B4F 71            [ 7]  428 	ld	(hl),c
   4B50 23            [ 6]  429 	inc	hl
   4B51 70            [ 7]  430 	ld	(hl),b
   4B52 21 08 00      [10]  431 	ld	hl,#0x0008
   4B55 19            [11]  432 	add	hl,de
   4B56 01 88 4C      [10]  433 	ld	bc,#___str_22+0
   4B59 71            [ 7]  434 	ld	(hl),c
   4B5A 23            [ 6]  435 	inc	hl
   4B5B 70            [ 7]  436 	ld	(hl),b
   4B5C 21 0A 00      [10]  437 	ld	hl,#0x000A
   4B5F 19            [11]  438 	add	hl,de
   4B60 01 97 4C      [10]  439 	ld	bc,#___str_23+0
   4B63 71            [ 7]  440 	ld	(hl),c
   4B64 23            [ 6]  441 	inc	hl
   4B65 70            [ 7]  442 	ld	(hl),b
   4B66 21 0C 00      [10]  443 	ld	hl,#0x000C
   4B69 19            [11]  444 	add	hl,de
   4B6A 01 A2 4C      [10]  445 	ld	bc,#___str_24+0
   4B6D 71            [ 7]  446 	ld	(hl),c
   4B6E 23            [ 6]  447 	inc	hl
   4B6F 70            [ 7]  448 	ld	(hl),b
                            449 ;src/game/game.c:89: const char *txtWindowDestroy[] = { 
   4B70 21 0E 00      [10]  450 	ld	hl,#0x000E
   4B73 39            [11]  451 	add	hl,sp
   4B74 4D            [ 4]  452 	ld	c,l
   4B75 44            [ 4]  453 	ld	b,h
   4B76 36 A9         [10]  454 	ld	(hl),#<(___str_25)
   4B78 23            [ 6]  455 	inc	hl
   4B79 36 4C         [10]  456 	ld	(hl),#>(___str_25)
   4B7B 21 02 00      [10]  457 	ld	hl,#0x0002
   4B7E 09            [11]  458 	add	hl,bc
   4B7F DD 75 FA      [19]  459 	ld	-6 (ix),l
   4B82 DD 74 FB      [19]  460 	ld	-5 (ix),h
   4B85 DD 6E FA      [19]  461 	ld	l,-6 (ix)
   4B88 DD 66 FB      [19]  462 	ld	h,-5 (ix)
   4B8B 36 CC         [10]  463 	ld	(hl),#<(___str_26)
   4B8D 23            [ 6]  464 	inc	hl
   4B8E 36 4C         [10]  465 	ld	(hl),#>(___str_26)
   4B90 21 04 00      [10]  466 	ld	hl,#0x0004
   4B93 09            [11]  467 	add	hl,bc
   4B94 DD 75 FA      [19]  468 	ld	-6 (ix),l
   4B97 DD 74 FB      [19]  469 	ld	-5 (ix),h
   4B9A DD 6E FA      [19]  470 	ld	l,-6 (ix)
   4B9D DD 66 FB      [19]  471 	ld	h,-5 (ix)
   4BA0 36 CD         [10]  472 	ld	(hl),#<(___str_27)
   4BA2 23            [ 6]  473 	inc	hl
   4BA3 36 4C         [10]  474 	ld	(hl),#>(___str_27)
                            475 ;src/game/game.c:96: putM2();
   4BA5 C5            [11]  476 	push	bc
   4BA6 D5            [11]  477 	push	de
   4BA7 CD 8D 5B      [17]  478 	call	_putM2
   4BAA D1            [10]  479 	pop	de
   4BAB C1            [10]  480 	pop	bc
                            481 ;src/game/game.c:98: do{
   4BAC D5            [11]  482 	push	de
   4BAD DD 5E 05      [19]  483 	ld	e,5 (ix)
   4BB0 16 00         [ 7]  484 	ld	d,#0x00
   4BB2 6B            [ 4]  485 	ld	l, e
   4BB3 62            [ 4]  486 	ld	h, d
   4BB4 29            [11]  487 	add	hl, hl
   4BB5 29            [11]  488 	add	hl, hl
   4BB6 19            [11]  489 	add	hl, de
   4BB7 29            [11]  490 	add	hl, hl
   4BB8 29            [11]  491 	add	hl, hl
   4BB9 29            [11]  492 	add	hl, hl
   4BBA 29            [11]  493 	add	hl, hl
   4BBB D1            [10]  494 	pop	de
   4BBC DD 75 FA      [19]  495 	ld	-6 (ix),l
   4BBF DD 74 FB      [19]  496 	ld	-5 (ix),h
   4BC2 DD 71 FE      [19]  497 	ld	-2 (ix),c
   4BC5 DD 70 FF      [19]  498 	ld	-1 (ix),b
   4BC8 DD 73 FC      [19]  499 	ld	-4 (ix),e
   4BCB DD 72 FD      [19]  500 	ld	-3 (ix),d
   4BCE                     501 00117$:
                            502 ;src/game/game.c:99: menuChoice = drawMenu(txtMenuTile,7);
   4BCE DD 5E FC      [19]  503 	ld	e,-4 (ix)
   4BD1 DD 56 FD      [19]  504 	ld	d,-3 (ix)
   4BD4 3E 07         [ 7]  505 	ld	a,#0x07
   4BD6 F5            [11]  506 	push	af
   4BD7 33            [ 6]  507 	inc	sp
   4BD8 D5            [11]  508 	push	de
   4BD9 CD 93 5F      [17]  509 	call	_drawMenu
   4BDC F1            [10]  510 	pop	af
   4BDD 33            [ 6]  511 	inc	sp
   4BDE 55            [ 4]  512 	ld	d,l
                            513 ;src/game/game.c:101: if(menuChoice==0)
   4BDF 7A            [ 4]  514 	ld	a,d
   4BE0 B7            [ 4]  515 	or	a, a
   4BE1 20 0F         [12]  516 	jr	NZ,00115$
                            517 ;src/game/game.c:102: windowInfoTile(x, y);
   4BE3 D5            [11]  518 	push	de
   4BE4 DD 66 05      [19]  519 	ld	h,5 (ix)
   4BE7 DD 6E 04      [19]  520 	ld	l,4 (ix)
   4BEA E5            [11]  521 	push	hl
   4BEB CD AF 48      [17]  522 	call	_windowInfoTile
   4BEE F1            [10]  523 	pop	af
   4BEF D1            [10]  524 	pop	de
   4BF0 18 51         [12]  525 	jr	00118$
   4BF2                     526 00115$:
                            527 ;src/game/game.c:103: else if(menuChoice==1)
   4BF2 7A            [ 4]  528 	ld	a,d
   4BF3 3D            [ 4]  529 	dec	a
   4BF4 20 09         [12]  530 	jr	NZ,00112$
                            531 ;src/game/game.c:105: CURSOR_MODE=T_REW;
   4BF6 21 BF 8A      [10]  532 	ld	hl,#_CURSOR_MODE + 0
   4BF9 36 07         [10]  533 	ld	(hl), #0x07
                            534 ;src/game/game.c:106: menuChoice=6;
   4BFB 16 06         [ 7]  535 	ld	d,#0x06
   4BFD 18 44         [12]  536 	jr	00118$
   4BFF                     537 00112$:
                            538 ;src/game/game.c:108: else if(menuChoice==2)
   4BFF 7A            [ 4]  539 	ld	a,d
   4C00 D6 02         [ 7]  540 	sub	a, #0x02
   4C02 20 07         [12]  541 	jr	NZ,00109$
                            542 ;src/game/game.c:110: menuStations();
   4C04 CD A7 4A      [17]  543 	call	_menuStations
                            544 ;src/game/game.c:111: menuChoice=6;
   4C07 16 06         [ 7]  545 	ld	d,#0x06
   4C09 18 38         [12]  546 	jr	00118$
   4C0B                     547 00109$:
                            548 ;src/game/game.c:113: else if(menuChoice==3)
   4C0B 7A            [ 4]  549 	ld	a,d
   4C0C D6 03         [ 7]  550 	sub	a, #0x03
   4C0E 20 29         [12]  551 	jr	NZ,00106$
                            552 ;src/game/game.c:115: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   4C10 DD 5E FE      [19]  553 	ld	e,-2 (ix)
   4C13 DD 56 FF      [19]  554 	ld	d,-1 (ix)
   4C16 21 03 01      [10]  555 	ld	hl,#0x0103
   4C19 E5            [11]  556 	push	hl
   4C1A D5            [11]  557 	push	de
   4C1B CD 91 60      [17]  558 	call	_drawWindow
   4C1E F1            [10]  559 	pop	af
   4C1F F1            [10]  560 	pop	af
   4C20 2D            [ 4]  561 	dec	l
   4C21 20 12         [12]  562 	jr	NZ,00102$
                            563 ;src/game/game.c:116: p_world[x+y*WIDTH] = GRASS1;
   4C23 DD 6E 04      [19]  564 	ld	l,4 (ix)
   4C26 26 00         [ 7]  565 	ld	h,#0x00
   4C28 DD 5E FA      [19]  566 	ld	e,-6 (ix)
   4C2B DD 56 FB      [19]  567 	ld	d,-5 (ix)
   4C2E 19            [11]  568 	add	hl,de
   4C2F 11 BB 7B      [10]  569 	ld	de,#_p_world
   4C32 19            [11]  570 	add	hl,de
   4C33 36 00         [10]  571 	ld	(hl),#0x00
   4C35                     572 00102$:
                            573 ;src/game/game.c:118: menuChoice=6;
   4C35 16 06         [ 7]  574 	ld	d,#0x06
   4C37 18 0A         [12]  575 	jr	00118$
   4C39                     576 00106$:
                            577 ;src/game/game.c:120: else if(menuChoice==4)
   4C39 7A            [ 4]  578 	ld	a,d
   4C3A D6 04         [ 7]  579 	sub	a, #0x04
   4C3C 20 05         [12]  580 	jr	NZ,00118$
                            581 ;src/game/game.c:122: railroadDepot();
   4C3E CD 2E 42      [17]  582 	call	_railroadDepot
                            583 ;src/game/game.c:123: menuChoice=6;
   4C41 16 06         [ 7]  584 	ld	d,#0x06
   4C43                     585 00118$:
                            586 ;src/game/game.c:128: while(menuChoice!=6);
   4C43 7A            [ 4]  587 	ld	a,d
   4C44 D6 06         [ 7]  588 	sub	a, #0x06
   4C46 20 86         [12]  589 	jr	NZ,00117$
                            590 ;src/game/game.c:130: putM1();
   4C48 CD 79 5B      [17]  591 	call	_putM1
   4C4B DD F9         [10]  592 	ld	sp, ix
   4C4D DD E1         [14]  593 	pop	ix
   4C4F C9            [10]  594 	ret
   4C50                     595 ___str_18:
   4C50 41 62 6F 75 74 20   596 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   4C5F 00                  597 	.db 0x00
   4C60                     598 ___str_19:
   4C60 42 75 69 6C 64 20   599 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   4C6F 00                  600 	.db 0x00
   4C70                     601 ___str_20:
   4C70 42 75 69 6C 64 20   602 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   4C7F 00                  603 	.db 0x00
   4C80                     604 ___str_21:
   4C80 44 65 73 74 72 6F   605 	.ascii "Destroy"
        79
   4C87 00                  606 	.db 0x00
   4C88                     607 ___str_22:
   4C88 52 61 69 6C 72 6F   608 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   4C96 00                  609 	.db 0x00
   4C97                     610 ___str_23:
   4C97 41 63 63 6F 75 6E   611 	.ascii "Accounting"
        74 69 6E 67
   4CA1 00                  612 	.db 0x00
   4CA2                     613 ___str_24:
   4CA2 52 65 73 75 6D 65   614 	.ascii "Resume"
   4CA8 00                  615 	.db 0x00
   4CA9                     616 ___str_25:
   4CA9 44 65 73 74 72 6F   617 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   4CCB 00                  618 	.db 0x00
   4CCC                     619 ___str_26:
   4CCC 00                  620 	.db 0x00
   4CCD                     621 ___str_27:
   4CCD 43 6F 6E 74 69 6E   622 	.ascii "Continue ?"
        75 65 20 3F
   4CD7 00                  623 	.db 0x00
                            624 ;src/game/game.c:134: void game()
                            625 ;	---------------------------------
                            626 ; Function game
                            627 ; ---------------------------------
   4CD8                     628 _game::
   4CD8 DD E5         [15]  629 	push	ix
   4CDA DD 21 00 00   [14]  630 	ld	ix,#0
   4CDE DD 39         [15]  631 	add	ix,sp
   4CE0 21 EA FF      [10]  632 	ld	hl,#-22
   4CE3 39            [11]  633 	add	hl,sp
   4CE4 F9            [ 6]  634 	ld	sp,hl
                            635 ;src/game/game.c:137: int ulx = 0;
   4CE5 DD 36 F4 00   [19]  636 	ld	-12 (ix),#0x00
   4CE9 DD 36 F5 00   [19]  637 	ld	-11 (ix),#0x00
                            638 ;src/game/game.c:138: int uly = 0;
   4CED DD 36 F2 00   [19]  639 	ld	-14 (ix),#0x00
   4CF1 DD 36 F3 00   [19]  640 	ld	-13 (ix),#0x00
                            641 ;src/game/game.c:139: int xCursor = 10;
   4CF5 DD 36 F0 0A   [19]  642 	ld	-16 (ix),#0x0A
   4CF9 DD 36 F1 00   [19]  643 	ld	-15 (ix),#0x00
                            644 ;src/game/game.c:140: int yCursor = 6;
   4CFD DD 36 F9 06   [19]  645 	ld	-7 (ix),#0x06
   4D01 DD 36 FA 00   [19]  646 	ld	-6 (ix),#0x00
                            647 ;src/game/game.c:142: u8 exit=0;
   4D05 DD 36 F6 00   [19]  648 	ld	-10 (ix),#0x00
                            649 ;src/game/game.c:144: locDelocked = 4;
   4D09 21 C0 8A      [10]  650 	ld	hl,#_locDelocked + 0
   4D0C 36 04         [10]  651 	ld	(hl), #0x04
                            652 ;src/game/game.c:146: drawBoxM2(50, 50);
   4D0E 21 32 00      [10]  653 	ld	hl,#0x0032
   4D11 E5            [11]  654 	push	hl
   4D12 2E 32         [ 7]  655 	ld	l, #0x32
   4D14 E5            [11]  656 	push	hl
   4D15 CD C9 5C      [17]  657 	call	_drawBoxM2
   4D18 F1            [10]  658 	pop	af
                            659 ;src/game/game.c:147: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   4D19 21 20 5F      [10]  660 	ld	hl, #0x5F20
   4D1C E3            [19]  661 	ex	(sp),hl
   4D1D 21 00 C0      [10]  662 	ld	hl,#0xC000
   4D20 E5            [11]  663 	push	hl
   4D21 CD CB 7A      [17]  664 	call	_cpct_getScreenPtr
                            665 ;src/game/game.c:148: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   4D24 4D            [ 4]  666 	ld	c, l
   4D25 44            [ 4]  667 	ld	b, h
   4D26 11 C5 51      [10]  668 	ld	de,#___str_31
   4D29 AF            [ 4]  669 	xor	a, a
   4D2A F5            [11]  670 	push	af
   4D2B 33            [ 6]  671 	inc	sp
   4D2C C5            [11]  672 	push	bc
   4D2D D5            [11]  673 	push	de
   4D2E CD 7C 74      [17]  674 	call	_cpct_drawStringM2
   4D31 F1            [10]  675 	pop	af
   4D32 F1            [10]  676 	pop	af
   4D33 33            [ 6]  677 	inc	sp
                            678 ;src/game/game.c:150: generateWorld();
   4D34 CD 0B 55      [17]  679 	call	_generateWorld
                            680 ;src/game/game.c:152: putM1();
   4D37 CD 79 5B      [17]  681 	call	_putM1
                            682 ;src/game/game.c:153: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   4D3A 21 00 00      [10]  683 	ld	hl,#0x0000
   4D3D E5            [11]  684 	push	hl
   4D3E 2E 00         [ 7]  685 	ld	l, #0x00
   4D40 E5            [11]  686 	push	hl
   4D41 CD A5 79      [17]  687 	call	_cpct_px2byteM1
   4D44 F1            [10]  688 	pop	af
   4D45 F1            [10]  689 	pop	af
   4D46 65            [ 4]  690 	ld	h,l
   4D47 01 00 40      [10]  691 	ld	bc,#0x4000
   4D4A C5            [11]  692 	push	bc
   4D4B E5            [11]  693 	push	hl
   4D4C 33            [ 6]  694 	inc	sp
   4D4D 21 00 C0      [10]  695 	ld	hl,#0xC000
   4D50 E5            [11]  696 	push	hl
   4D51 CD 97 79      [17]  697 	call	_cpct_memset
                            698 ;src/game/game.c:154: drawWorld(ulx, uly);
   4D54 21 00 00      [10]  699 	ld	hl,#0x0000
   4D57 E5            [11]  700 	push	hl
   4D58 CD 2D 5B      [17]  701 	call	_drawWorld
   4D5B F1            [10]  702 	pop	af
                            703 ;src/game/game.c:156: do{
   4D5C                     704 00181$:
                            705 ;src/game/game.c:157: cpct_scanKeyboard(); 
   4D5C CD EB 7A      [17]  706 	call	_cpct_scanKeyboard
                            707 ;src/game/game.c:159: if ( cpct_isKeyPressed(Key_CursorUp) )
   4D5F 21 00 01      [10]  708 	ld	hl,#0x0100
   4D62 CD 45 74      [17]  709 	call	_cpct_isKeyPressed
   4D65 DD 75 FD      [19]  710 	ld	-3 (ix),l
                            711 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4D68 DD 7E F9      [19]  712 	ld	a,-7 (ix)
   4D6B DD 77 FE      [19]  713 	ld	-2 (ix),a
   4D6E DD 7E F0      [19]  714 	ld	a,-16 (ix)
   4D71 DD 77 FC      [19]  715 	ld	-4 (ix),a
   4D74 DD 7E F2      [19]  716 	ld	a,-14 (ix)
   4D77 DD 77 FB      [19]  717 	ld	-5 (ix),a
   4D7A DD 7E F4      [19]  718 	ld	a,-12 (ix)
   4D7D DD 77 FF      [19]  719 	ld	-1 (ix),a
                            720 ;src/game/game.c:159: if ( cpct_isKeyPressed(Key_CursorUp) )
   4D80 DD 7E FD      [19]  721 	ld	a,-3 (ix)
   4D83 B7            [ 4]  722 	or	a, a
   4D84 CA 06 4E      [10]  723 	jp	Z,00179$
                            724 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4D87 DD 7E FE      [19]  725 	ld	a,-2 (ix)
   4D8A F5            [11]  726 	push	af
   4D8B 33            [ 6]  727 	inc	sp
   4D8C DD 7E FC      [19]  728 	ld	a,-4 (ix)
   4D8F F5            [11]  729 	push	af
   4D90 33            [ 6]  730 	inc	sp
   4D91 DD 7E FB      [19]  731 	ld	a,-5 (ix)
   4D94 F5            [11]  732 	push	af
   4D95 33            [ 6]  733 	inc	sp
   4D96 DD 7E FF      [19]  734 	ld	a,-1 (ix)
   4D99 F5            [11]  735 	push	af
   4D9A 33            [ 6]  736 	inc	sp
   4D9B CD 6C 58      [17]  737 	call	_drawTile
   4D9E F1            [10]  738 	pop	af
   4D9F F1            [10]  739 	pop	af
                            740 ;src/game/game.c:163: yCursor-=1;
   4DA0 DD 6E F9      [19]  741 	ld	l,-7 (ix)
   4DA3 DD 66 FA      [19]  742 	ld	h,-6 (ix)
   4DA6 2B            [ 6]  743 	dec	hl
   4DA7 DD 75 F9      [19]  744 	ld	-7 (ix),l
   4DAA DD 74 FA      [19]  745 	ld	-6 (ix),h
                            746 ;src/game/game.c:166: if(yCursor<0)
   4DAD DD CB FA 7E   [20]  747 	bit	7, -6 (ix)
   4DB1 28 35         [12]  748 	jr	Z,00210$
                            749 ;src/game/game.c:168: yCursor=0;
   4DB3 DD 36 F9 00   [19]  750 	ld	-7 (ix),#0x00
   4DB7 DD 36 FA 00   [19]  751 	ld	-6 (ix),#0x00
                            752 ;src/game/game.c:171: if(uly>0)
   4DBB AF            [ 4]  753 	xor	a, a
   4DBC DD BE F2      [19]  754 	cp	a, -14 (ix)
   4DBF DD 9E F3      [19]  755 	sbc	a, -13 (ix)
   4DC2 E2 C7 4D      [10]  756 	jp	PO, 00387$
   4DC5 EE 80         [ 7]  757 	xor	a, #0x80
   4DC7                     758 00387$:
   4DC7 F2 E8 4D      [10]  759 	jp	P,00210$
                            760 ;src/game/game.c:173: uly-=1;
   4DCA DD 6E F2      [19]  761 	ld	l,-14 (ix)
   4DCD DD 66 F3      [19]  762 	ld	h,-13 (ix)
   4DD0 2B            [ 6]  763 	dec	hl
   4DD1 DD 75 F2      [19]  764 	ld	-14 (ix),l
   4DD4 DD 74 F3      [19]  765 	ld	-13 (ix),h
                            766 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4DD7 DD 7E F2      [19]  767 	ld	a,-14 (ix)
                            768 ;src/game/game.c:174: drawWorld(ulx, uly);
   4DDA DD 77 FB      [19]  769 	ld	-5 (ix), a
   4DDD F5            [11]  770 	push	af
   4DDE 33            [ 6]  771 	inc	sp
   4DDF DD 7E FF      [19]  772 	ld	a,-1 (ix)
   4DE2 F5            [11]  773 	push	af
   4DE3 33            [ 6]  774 	inc	sp
   4DE4 CD 2D 5B      [17]  775 	call	_drawWorld
   4DE7 F1            [10]  776 	pop	af
                            777 ;src/game/game.c:179: for(i=0; i<5000; i++) {}
   4DE8                     778 00210$:
   4DE8 DD 36 F7 88   [19]  779 	ld	-9 (ix),#0x88
   4DEC DD 36 F8 13   [19]  780 	ld	-8 (ix),#0x13
   4DF0                     781 00186$:
   4DF0 DD 6E F7      [19]  782 	ld	l,-9 (ix)
   4DF3 DD 66 F8      [19]  783 	ld	h,-8 (ix)
   4DF6 2B            [ 6]  784 	dec	hl
   4DF7 DD 75 F7      [19]  785 	ld	-9 (ix),l
   4DFA DD 74 F8      [19]  786 	ld	-8 (ix), h
   4DFD 7C            [ 4]  787 	ld	a, h
   4DFE DD B6 F7      [19]  788 	or	a,-9 (ix)
   4E01 20 ED         [12]  789 	jr	NZ,00186$
   4E03 C3 64 51      [10]  790 	jp	00180$
   4E06                     791 00179$:
                            792 ;src/game/game.c:182: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4E06 21 00 04      [10]  793 	ld	hl,#0x0400
   4E09 CD 45 74      [17]  794 	call	_cpct_isKeyPressed
   4E0C 7D            [ 4]  795 	ld	a,l
   4E0D B7            [ 4]  796 	or	a, a
   4E0E CA 92 4E      [10]  797 	jp	Z,00176$
                            798 ;src/game/game.c:184: drawTile(ulx, uly, xCursor, yCursor);
   4E11 DD 7E FE      [19]  799 	ld	a,-2 (ix)
   4E14 F5            [11]  800 	push	af
   4E15 33            [ 6]  801 	inc	sp
   4E16 DD 7E FC      [19]  802 	ld	a,-4 (ix)
   4E19 F5            [11]  803 	push	af
   4E1A 33            [ 6]  804 	inc	sp
   4E1B DD 7E FB      [19]  805 	ld	a,-5 (ix)
   4E1E F5            [11]  806 	push	af
   4E1F 33            [ 6]  807 	inc	sp
   4E20 DD 7E FF      [19]  808 	ld	a,-1 (ix)
   4E23 F5            [11]  809 	push	af
   4E24 33            [ 6]  810 	inc	sp
   4E25 CD 6C 58      [17]  811 	call	_drawTile
   4E28 F1            [10]  812 	pop	af
   4E29 F1            [10]  813 	pop	af
                            814 ;src/game/game.c:185: yCursor+=1;
   4E2A DD 34 F9      [23]  815 	inc	-7 (ix)
   4E2D 20 03         [12]  816 	jr	NZ,00388$
   4E2F DD 34 FA      [23]  817 	inc	-6 (ix)
   4E32                     818 00388$:
                            819 ;src/game/game.c:186: if(yCursor>NBTILE_H-1)
   4E32 3E 0B         [ 7]  820 	ld	a,#0x0B
   4E34 DD BE F9      [19]  821 	cp	a, -7 (ix)
   4E37 3E 00         [ 7]  822 	ld	a,#0x00
   4E39 DD 9E FA      [19]  823 	sbc	a, -6 (ix)
   4E3C E2 41 4E      [10]  824 	jp	PO, 00389$
   4E3F EE 80         [ 7]  825 	xor	a, #0x80
   4E41                     826 00389$:
   4E41 F2 74 4E      [10]  827 	jp	P,00215$
                            828 ;src/game/game.c:188: yCursor=NBTILE_H-1;
   4E44 DD 36 F9 0B   [19]  829 	ld	-7 (ix),#0x0B
   4E48 DD 36 FA 00   [19]  830 	ld	-6 (ix),#0x00
                            831 ;src/game/game.c:189: if(uly<HEIGHT-NBTILE_H)
   4E4C DD 7E F2      [19]  832 	ld	a,-14 (ix)
   4E4F D6 24         [ 7]  833 	sub	a, #0x24
   4E51 DD 7E F3      [19]  834 	ld	a,-13 (ix)
   4E54 17            [ 4]  835 	rla
   4E55 3F            [ 4]  836 	ccf
   4E56 1F            [ 4]  837 	rra
   4E57 DE 80         [ 7]  838 	sbc	a, #0x80
   4E59 30 19         [12]  839 	jr	NC,00215$
                            840 ;src/game/game.c:191: uly+=1;
   4E5B DD 34 F2      [23]  841 	inc	-14 (ix)
   4E5E 20 03         [12]  842 	jr	NZ,00390$
   4E60 DD 34 F3      [23]  843 	inc	-13 (ix)
   4E63                     844 00390$:
                            845 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4E63 DD 7E F2      [19]  846 	ld	a,-14 (ix)
                            847 ;src/game/game.c:192: drawWorld(ulx, uly);
   4E66 DD 77 FB      [19]  848 	ld	-5 (ix), a
   4E69 F5            [11]  849 	push	af
   4E6A 33            [ 6]  850 	inc	sp
   4E6B DD 7E FF      [19]  851 	ld	a,-1 (ix)
   4E6E F5            [11]  852 	push	af
   4E6F 33            [ 6]  853 	inc	sp
   4E70 CD 2D 5B      [17]  854 	call	_drawWorld
   4E73 F1            [10]  855 	pop	af
                            856 ;src/game/game.c:197: for(i=0; i<5000; i++) {}
   4E74                     857 00215$:
   4E74 DD 36 F7 88   [19]  858 	ld	-9 (ix),#0x88
   4E78 DD 36 F8 13   [19]  859 	ld	-8 (ix),#0x13
   4E7C                     860 00189$:
   4E7C DD 6E F7      [19]  861 	ld	l,-9 (ix)
   4E7F DD 66 F8      [19]  862 	ld	h,-8 (ix)
   4E82 2B            [ 6]  863 	dec	hl
   4E83 DD 75 F7      [19]  864 	ld	-9 (ix),l
   4E86 DD 74 F8      [19]  865 	ld	-8 (ix), h
   4E89 7C            [ 4]  866 	ld	a, h
   4E8A DD B6 F7      [19]  867 	or	a,-9 (ix)
   4E8D 20 ED         [12]  868 	jr	NZ,00189$
   4E8F C3 64 51      [10]  869 	jp	00180$
   4E92                     870 00176$:
                            871 ;src/game/game.c:200: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   4E92 21 01 01      [10]  872 	ld	hl,#0x0101
   4E95 CD 45 74      [17]  873 	call	_cpct_isKeyPressed
   4E98 7D            [ 4]  874 	ld	a,l
   4E99 B7            [ 4]  875 	or	a, a
   4E9A 28 6F         [12]  876 	jr	Z,00173$
                            877 ;src/game/game.c:202: drawTile(ulx, uly, xCursor, yCursor);
   4E9C DD 7E FE      [19]  878 	ld	a,-2 (ix)
   4E9F F5            [11]  879 	push	af
   4EA0 33            [ 6]  880 	inc	sp
   4EA1 DD 7E FC      [19]  881 	ld	a,-4 (ix)
   4EA4 F5            [11]  882 	push	af
   4EA5 33            [ 6]  883 	inc	sp
   4EA6 DD 7E FB      [19]  884 	ld	a,-5 (ix)
   4EA9 F5            [11]  885 	push	af
   4EAA 33            [ 6]  886 	inc	sp
   4EAB DD 7E FF      [19]  887 	ld	a,-1 (ix)
   4EAE F5            [11]  888 	push	af
   4EAF 33            [ 6]  889 	inc	sp
   4EB0 CD 6C 58      [17]  890 	call	_drawTile
   4EB3 F1            [10]  891 	pop	af
   4EB4 F1            [10]  892 	pop	af
                            893 ;src/game/game.c:203: xCursor-=1;
   4EB5 DD 6E F0      [19]  894 	ld	l,-16 (ix)
   4EB8 DD 66 F1      [19]  895 	ld	h,-15 (ix)
   4EBB 2B            [ 6]  896 	dec	hl
   4EBC DD 75 F0      [19]  897 	ld	-16 (ix),l
   4EBF DD 74 F1      [19]  898 	ld	-15 (ix),h
                            899 ;src/game/game.c:204: if(xCursor<0)
   4EC2 DD CB F1 7E   [20]  900 	bit	7, -15 (ix)
   4EC6 28 38         [12]  901 	jr	Z,00220$
                            902 ;src/game/game.c:206: xCursor=0;
   4EC8 DD 36 F0 00   [19]  903 	ld	-16 (ix),#0x00
   4ECC DD 36 F1 00   [19]  904 	ld	-15 (ix),#0x00
                            905 ;src/game/game.c:207: if(ulx>0)
   4ED0 AF            [ 4]  906 	xor	a, a
   4ED1 DD BE F4      [19]  907 	cp	a, -12 (ix)
   4ED4 DD 9E F5      [19]  908 	sbc	a, -11 (ix)
   4ED7 E2 DC 4E      [10]  909 	jp	PO, 00391$
   4EDA EE 80         [ 7]  910 	xor	a, #0x80
   4EDC                     911 00391$:
   4EDC F2 00 4F      [10]  912 	jp	P,00220$
                            913 ;src/game/game.c:209: ulx-=1;
   4EDF DD 6E F4      [19]  914 	ld	l,-12 (ix)
   4EE2 DD 66 F5      [19]  915 	ld	h,-11 (ix)
   4EE5 2B            [ 6]  916 	dec	hl
   4EE6 DD 75 F4      [19]  917 	ld	-12 (ix),l
   4EE9 DD 74 F5      [19]  918 	ld	-11 (ix),h
                            919 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4EEC DD 7E F4      [19]  920 	ld	a,-12 (ix)
   4EEF DD 77 FF      [19]  921 	ld	-1 (ix),a
                            922 ;src/game/game.c:210: drawWorld(ulx, uly);
   4EF2 DD 7E FB      [19]  923 	ld	a,-5 (ix)
   4EF5 F5            [11]  924 	push	af
   4EF6 33            [ 6]  925 	inc	sp
   4EF7 DD 7E FF      [19]  926 	ld	a,-1 (ix)
   4EFA F5            [11]  927 	push	af
   4EFB 33            [ 6]  928 	inc	sp
   4EFC CD 2D 5B      [17]  929 	call	_drawWorld
   4EFF F1            [10]  930 	pop	af
                            931 ;src/game/game.c:215: for(i=0; i<14000; i++) {}
   4F00                     932 00220$:
   4F00 21 B0 36      [10]  933 	ld	hl,#0x36B0
   4F03                     934 00192$:
   4F03 2B            [ 6]  935 	dec	hl
   4F04 7C            [ 4]  936 	ld	a,h
   4F05 B5            [ 4]  937 	or	a,l
   4F06 20 FB         [12]  938 	jr	NZ,00192$
   4F08 C3 64 51      [10]  939 	jp	00180$
   4F0B                     940 00173$:
                            941 ;src/game/game.c:218: else if ( cpct_isKeyPressed(Key_CursorRight) )
   4F0B 21 00 02      [10]  942 	ld	hl,#0x0200
   4F0E CD 45 74      [17]  943 	call	_cpct_isKeyPressed
   4F11 7D            [ 4]  944 	ld	a,l
   4F12 B7            [ 4]  945 	or	a, a
   4F13 28 71         [12]  946 	jr	Z,00170$
                            947 ;src/game/game.c:220: drawTile(ulx, uly, xCursor, yCursor);
   4F15 DD 7E FE      [19]  948 	ld	a,-2 (ix)
   4F18 F5            [11]  949 	push	af
   4F19 33            [ 6]  950 	inc	sp
   4F1A DD 7E FC      [19]  951 	ld	a,-4 (ix)
   4F1D F5            [11]  952 	push	af
   4F1E 33            [ 6]  953 	inc	sp
   4F1F DD 7E FB      [19]  954 	ld	a,-5 (ix)
   4F22 F5            [11]  955 	push	af
   4F23 33            [ 6]  956 	inc	sp
   4F24 DD 7E FF      [19]  957 	ld	a,-1 (ix)
   4F27 F5            [11]  958 	push	af
   4F28 33            [ 6]  959 	inc	sp
   4F29 CD 6C 58      [17]  960 	call	_drawTile
   4F2C F1            [10]  961 	pop	af
   4F2D F1            [10]  962 	pop	af
                            963 ;src/game/game.c:221: xCursor+=1;
   4F2E DD 34 F0      [23]  964 	inc	-16 (ix)
   4F31 20 03         [12]  965 	jr	NZ,00392$
   4F33 DD 34 F1      [23]  966 	inc	-15 (ix)
   4F36                     967 00392$:
                            968 ;src/game/game.c:222: if(xCursor>NBTILE_W-1)
   4F36 3E 13         [ 7]  969 	ld	a,#0x13
   4F38 DD BE F0      [19]  970 	cp	a, -16 (ix)
   4F3B 3E 00         [ 7]  971 	ld	a,#0x00
   4F3D DD 9E F1      [19]  972 	sbc	a, -15 (ix)
   4F40 E2 45 4F      [10]  973 	jp	PO, 00393$
   4F43 EE 80         [ 7]  974 	xor	a, #0x80
   4F45                     975 00393$:
   4F45 F2 7B 4F      [10]  976 	jp	P,00225$
                            977 ;src/game/game.c:224: xCursor=NBTILE_W-1;
   4F48 DD 36 F0 13   [19]  978 	ld	-16 (ix),#0x13
   4F4C DD 36 F1 00   [19]  979 	ld	-15 (ix),#0x00
                            980 ;src/game/game.c:225: if(ulx<WIDTH-NBTILE_W)
   4F50 DD 7E F4      [19]  981 	ld	a,-12 (ix)
   4F53 D6 3C         [ 7]  982 	sub	a, #0x3C
   4F55 DD 7E F5      [19]  983 	ld	a,-11 (ix)
   4F58 17            [ 4]  984 	rla
   4F59 3F            [ 4]  985 	ccf
   4F5A 1F            [ 4]  986 	rra
   4F5B DE 80         [ 7]  987 	sbc	a, #0x80
   4F5D 30 1C         [12]  988 	jr	NC,00225$
                            989 ;src/game/game.c:227: ulx+=1;
   4F5F DD 34 F4      [23]  990 	inc	-12 (ix)
   4F62 20 03         [12]  991 	jr	NZ,00394$
   4F64 DD 34 F5      [23]  992 	inc	-11 (ix)
   4F67                     993 00394$:
                            994 ;src/game/game.c:161: drawTile(ulx, uly, xCursor, yCursor);
   4F67 DD 7E F4      [19]  995 	ld	a,-12 (ix)
   4F6A DD 77 FF      [19]  996 	ld	-1 (ix),a
                            997 ;src/game/game.c:228: drawWorld(ulx, uly);
   4F6D DD 7E FB      [19]  998 	ld	a,-5 (ix)
   4F70 F5            [11]  999 	push	af
   4F71 33            [ 6] 1000 	inc	sp
   4F72 DD 7E FF      [19] 1001 	ld	a,-1 (ix)
   4F75 F5            [11] 1002 	push	af
   4F76 33            [ 6] 1003 	inc	sp
   4F77 CD 2D 5B      [17] 1004 	call	_drawWorld
   4F7A F1            [10] 1005 	pop	af
                           1006 ;src/game/game.c:233: for(i=0; i<14000; i++) {}
   4F7B                    1007 00225$:
   4F7B 21 B0 36      [10] 1008 	ld	hl,#0x36B0
   4F7E                    1009 00195$:
   4F7E 2B            [ 6] 1010 	dec	hl
   4F7F 7C            [ 4] 1011 	ld	a,h
   4F80 B5            [ 4] 1012 	or	a,l
   4F81 20 FB         [12] 1013 	jr	NZ,00195$
   4F83 C3 64 51      [10] 1014 	jp	00180$
   4F86                    1015 00170$:
                           1016 ;src/game/game.c:237: else if ( cpct_isKeyPressed(Key_Space) )
   4F86 21 05 80      [10] 1017 	ld	hl,#0x8005
   4F89 CD 45 74      [17] 1018 	call	_cpct_isKeyPressed
   4F8C 7D            [ 4] 1019 	ld	a,l
   4F8D B7            [ 4] 1020 	or	a, a
   4F8E CA 0C 50      [10] 1021 	jp	Z,00167$
                           1022 ;src/game/game.c:239: if(CURSOR_MODE==T_SSNS)
   4F91 3A BF 8A      [13] 1023 	ld	a,(#_CURSOR_MODE + 0)
   4F94 3D            [ 4] 1024 	dec	a
   4F95 20 07         [12] 1025 	jr	NZ,00143$
                           1026 ;src/game/game.c:240: CURSOR_MODE=T_SSEW;
   4F97 21 BF 8A      [10] 1027 	ld	hl,#_CURSOR_MODE + 0
   4F9A 36 02         [10] 1028 	ld	(hl), #0x02
   4F9C 18 63         [12] 1029 	jr	00237$
   4F9E                    1030 00143$:
                           1031 ;src/game/game.c:241: else if(CURSOR_MODE==T_SSEW)
   4F9E 3A BF 8A      [13] 1032 	ld	a,(#_CURSOR_MODE + 0)
   4FA1 D6 02         [ 7] 1033 	sub	a, #0x02
   4FA3 20 07         [12] 1034 	jr	NZ,00140$
                           1035 ;src/game/game.c:242: CURSOR_MODE=T_SSNS;
   4FA5 21 BF 8A      [10] 1036 	ld	hl,#_CURSOR_MODE + 0
   4FA8 36 01         [10] 1037 	ld	(hl), #0x01
   4FAA 18 55         [12] 1038 	jr	00237$
   4FAC                    1039 00140$:
                           1040 ;src/game/game.c:243: else if(CURSOR_MODE==T_SMNS)
   4FAC 3A BF 8A      [13] 1041 	ld	a,(#_CURSOR_MODE + 0)
   4FAF D6 03         [ 7] 1042 	sub	a, #0x03
   4FB1 20 07         [12] 1043 	jr	NZ,00137$
                           1044 ;src/game/game.c:244: CURSOR_MODE=T_SMEW;
   4FB3 21 BF 8A      [10] 1045 	ld	hl,#_CURSOR_MODE + 0
   4FB6 36 04         [10] 1046 	ld	(hl), #0x04
   4FB8 18 47         [12] 1047 	jr	00237$
   4FBA                    1048 00137$:
                           1049 ;src/game/game.c:245: else if(CURSOR_MODE==T_SMEW)
   4FBA 3A BF 8A      [13] 1050 	ld	a,(#_CURSOR_MODE + 0)
   4FBD D6 04         [ 7] 1051 	sub	a, #0x04
   4FBF 20 07         [12] 1052 	jr	NZ,00134$
                           1053 ;src/game/game.c:246: CURSOR_MODE=T_SMNS;
   4FC1 21 BF 8A      [10] 1054 	ld	hl,#_CURSOR_MODE + 0
   4FC4 36 03         [10] 1055 	ld	(hl), #0x03
   4FC6 18 39         [12] 1056 	jr	00237$
   4FC8                    1057 00134$:
                           1058 ;src/game/game.c:247: else if(CURSOR_MODE==T_SLNS)
   4FC8 3A BF 8A      [13] 1059 	ld	a,(#_CURSOR_MODE + 0)
   4FCB D6 05         [ 7] 1060 	sub	a, #0x05
   4FCD 20 07         [12] 1061 	jr	NZ,00131$
                           1062 ;src/game/game.c:248: CURSOR_MODE=T_SLEW;
   4FCF 21 BF 8A      [10] 1063 	ld	hl,#_CURSOR_MODE + 0
   4FD2 36 06         [10] 1064 	ld	(hl), #0x06
   4FD4 18 2B         [12] 1065 	jr	00237$
   4FD6                    1066 00131$:
                           1067 ;src/game/game.c:249: else if(CURSOR_MODE==T_SLEW)
   4FD6 3A BF 8A      [13] 1068 	ld	a,(#_CURSOR_MODE + 0)
   4FD9 D6 06         [ 7] 1069 	sub	a, #0x06
   4FDB 20 07         [12] 1070 	jr	NZ,00128$
                           1071 ;src/game/game.c:250: CURSOR_MODE=T_SLNS;
   4FDD 21 BF 8A      [10] 1072 	ld	hl,#_CURSOR_MODE + 0
   4FE0 36 05         [10] 1073 	ld	(hl), #0x05
   4FE2 18 1D         [12] 1074 	jr	00237$
   4FE4                    1075 00128$:
                           1076 ;src/game/game.c:251: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   4FE4 3A BF 8A      [13] 1077 	ld	a,(#_CURSOR_MODE + 0)
   4FE7 FE 07         [ 7] 1078 	cp	a,#0x07
   4FE9 38 0A         [12] 1079 	jr	C,00124$
   4FEB D6 10         [ 7] 1080 	sub	a, #0x10
   4FED 30 06         [12] 1081 	jr	NC,00124$
                           1082 ;src/game/game.c:252: CURSOR_MODE+=1;
   4FEF 21 BF 8A      [10] 1083 	ld	hl, #_CURSOR_MODE+0
   4FF2 34            [11] 1084 	inc	(hl)
   4FF3 18 0C         [12] 1085 	jr	00237$
   4FF5                    1086 00124$:
                           1087 ;src/game/game.c:253: else if(CURSOR_MODE==T_RNSW)
   4FF5 3A BF 8A      [13] 1088 	ld	a,(#_CURSOR_MODE + 0)
   4FF8 D6 10         [ 7] 1089 	sub	a, #0x10
   4FFA 20 05         [12] 1090 	jr	NZ,00237$
                           1091 ;src/game/game.c:254: CURSOR_MODE=T_REW;
   4FFC 21 BF 8A      [10] 1092 	ld	hl,#_CURSOR_MODE + 0
   4FFF 36 07         [10] 1093 	ld	(hl), #0x07
                           1094 ;src/game/game.c:256: for(i=0; i<14000; i++) {}
   5001                    1095 00237$:
   5001 21 B0 36      [10] 1096 	ld	hl,#0x36B0
   5004                    1097 00198$:
   5004 2B            [ 6] 1098 	dec	hl
   5005 7C            [ 4] 1099 	ld	a,h
   5006 B5            [ 4] 1100 	or	a,l
   5007 20 FB         [12] 1101 	jr	NZ,00198$
   5009 C3 64 51      [10] 1102 	jp	00180$
   500C                    1103 00167$:
                           1104 ;src/game/game.c:259: else if ( cpct_isKeyPressed(Key_Esc) )
   500C 21 08 04      [10] 1105 	ld	hl,#0x0408
   500F CD 45 74      [17] 1106 	call	_cpct_isKeyPressed
   5012 7D            [ 4] 1107 	ld	a,l
   5013 B7            [ 4] 1108 	or	a, a
   5014 CA AB 50      [10] 1109 	jp	Z,00164$
                           1110 ;src/game/game.c:262: if(CURSOR_MODE==NONE)
   5017 3A BF 8A      [13] 1111 	ld	a,(#_CURSOR_MODE + 0)
   501A B7            [ 4] 1112 	or	a, a
   501B 20 62         [12] 1113 	jr	NZ,00150$
                           1114 ;src/game/game.c:265: const char *txtWindowQuit[] = { 
   501D 21 00 00      [10] 1115 	ld	hl,#0x0000
   5020 39            [11] 1116 	add	hl,sp
   5021 5D            [ 4] 1117 	ld	e,l
   5022 54            [ 4] 1118 	ld	d,h
   5023 36 90         [10] 1119 	ld	(hl),#<(___str_28)
   5025 23            [ 6] 1120 	inc	hl
   5026 36 51         [10] 1121 	ld	(hl),#>(___str_28)
   5028 6B            [ 4] 1122 	ld	l, e
   5029 62            [ 4] 1123 	ld	h, d
   502A 23            [ 6] 1124 	inc	hl
   502B 23            [ 6] 1125 	inc	hl
   502C 36 9E         [10] 1126 	ld	(hl),#<(___str_29)
   502E 23            [ 6] 1127 	inc	hl
   502F 36 51         [10] 1128 	ld	(hl),#>(___str_29)
   5031 21 04 00      [10] 1129 	ld	hl,#0x0004
   5034 19            [11] 1130 	add	hl,de
   5035 36 9F         [10] 1131 	ld	(hl),#<(___str_30)
   5037 23            [ 6] 1132 	inc	hl
   5038 36 51         [10] 1133 	ld	(hl),#>(___str_30)
                           1134 ;src/game/game.c:271: putM2();
   503A D5            [11] 1135 	push	de
   503B CD 8D 5B      [17] 1136 	call	_putM2
   503E D1            [10] 1137 	pop	de
                           1138 ;src/game/game.c:272: if(	drawWindow(txtWindowQuit,3,1) == 1)
   503F 21 03 01      [10] 1139 	ld	hl,#0x0103
   5042 E5            [11] 1140 	push	hl
   5043 D5            [11] 1141 	push	de
   5044 CD 91 60      [17] 1142 	call	_drawWindow
   5047 F1            [10] 1143 	pop	af
   5048 F1            [10] 1144 	pop	af
   5049 2D            [ 4] 1145 	dec	l
   504A 20 06         [12] 1146 	jr	NZ,00147$
                           1147 ;src/game/game.c:273: exit=1;
   504C DD 36 F6 01   [19] 1148 	ld	-10 (ix),#0x01
   5050 18 4E         [12] 1149 	jr	00242$
   5052                    1150 00147$:
                           1151 ;src/game/game.c:276: putM1();
   5052 CD 79 5B      [17] 1152 	call	_putM1
                           1153 ;src/game/game.c:277: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5055 21 00 00      [10] 1154 	ld	hl,#0x0000
   5058 E5            [11] 1155 	push	hl
   5059 2E 00         [ 7] 1156 	ld	l, #0x00
   505B E5            [11] 1157 	push	hl
   505C CD A5 79      [17] 1158 	call	_cpct_px2byteM1
   505F F1            [10] 1159 	pop	af
   5060 F1            [10] 1160 	pop	af
   5061 65            [ 4] 1161 	ld	h,l
   5062 01 00 40      [10] 1162 	ld	bc,#0x4000
   5065 C5            [11] 1163 	push	bc
   5066 E5            [11] 1164 	push	hl
   5067 33            [ 6] 1165 	inc	sp
   5068 21 00 C0      [10] 1166 	ld	hl,#0xC000
   506B E5            [11] 1167 	push	hl
   506C CD 97 79      [17] 1168 	call	_cpct_memset
                           1169 ;src/game/game.c:278: drawWorld(ulx, uly);
   506F DD 7E FB      [19] 1170 	ld	a,-5 (ix)
   5072 F5            [11] 1171 	push	af
   5073 33            [ 6] 1172 	inc	sp
   5074 DD 7E FF      [19] 1173 	ld	a,-1 (ix)
   5077 F5            [11] 1174 	push	af
   5078 33            [ 6] 1175 	inc	sp
   5079 CD 2D 5B      [17] 1176 	call	_drawWorld
   507C F1            [10] 1177 	pop	af
   507D 18 21         [12] 1178 	jr	00242$
   507F                    1179 00150$:
                           1180 ;src/game/game.c:283: CURSOR_MODE=NONE;
   507F FD 21 BF 8A   [14] 1181 	ld	iy,#_CURSOR_MODE
   5083 FD 36 00 00   [19] 1182 	ld	0 (iy),#0x00
                           1183 ;src/game/game.c:284: drawTile(ulx, uly, xCursor, yCursor);
   5087 DD 7E FE      [19] 1184 	ld	a,-2 (ix)
   508A F5            [11] 1185 	push	af
   508B 33            [ 6] 1186 	inc	sp
   508C DD 7E FC      [19] 1187 	ld	a,-4 (ix)
   508F F5            [11] 1188 	push	af
   5090 33            [ 6] 1189 	inc	sp
   5091 DD 7E FB      [19] 1190 	ld	a,-5 (ix)
   5094 F5            [11] 1191 	push	af
   5095 33            [ 6] 1192 	inc	sp
   5096 DD 7E FF      [19] 1193 	ld	a,-1 (ix)
   5099 F5            [11] 1194 	push	af
   509A 33            [ 6] 1195 	inc	sp
   509B CD 6C 58      [17] 1196 	call	_drawTile
   509E F1            [10] 1197 	pop	af
   509F F1            [10] 1198 	pop	af
                           1199 ;src/game/game.c:288: for(i=0; i<14000; i++) {}
   50A0                    1200 00242$:
   50A0 01 B0 36      [10] 1201 	ld	bc,#0x36B0
   50A3                    1202 00201$:
   50A3 0B            [ 6] 1203 	dec	bc
   50A4 78            [ 4] 1204 	ld	a,b
   50A5 B1            [ 4] 1205 	or	a,c
   50A6 20 FB         [12] 1206 	jr	NZ,00201$
   50A8 C3 64 51      [10] 1207 	jp	00180$
   50AB                    1208 00164$:
                           1209 ;src/game/game.c:291: else if ( cpct_isKeyPressed(Key_Return) )
   50AB 21 02 04      [10] 1210 	ld	hl,#0x0402
   50AE CD 45 74      [17] 1211 	call	_cpct_isKeyPressed
   50B1 7D            [ 4] 1212 	ld	a,l
   50B2 B7            [ 4] 1213 	or	a, a
   50B3 CA 64 51      [10] 1214 	jp	Z,00180$
                           1215 ;src/game/game.c:294: if(CURSOR_MODE==NONE)
   50B6 3A BF 8A      [13] 1216 	ld	a,(#_CURSOR_MODE + 0)
   50B9 B7            [ 4] 1217 	or	a, a
   50BA 20 42         [12] 1218 	jr	NZ,00158$
                           1219 ;src/game/game.c:296: menuTile(ulx+xCursor, uly+yCursor);
   50BC DD 7E F2      [19] 1220 	ld	a, -14 (ix)
   50BF DD 6E F9      [19] 1221 	ld	l, -7 (ix)
   50C2 85            [ 4] 1222 	add	a, l
   50C3 67            [ 4] 1223 	ld	h,a
   50C4 DD 6E F4      [19] 1224 	ld	l,-12 (ix)
   50C7 DD 56 F0      [19] 1225 	ld	d,-16 (ix)
   50CA 7D            [ 4] 1226 	ld	a,l
   50CB 82            [ 4] 1227 	add	a, d
   50CC E5            [11] 1228 	push	hl
   50CD 33            [ 6] 1229 	inc	sp
   50CE F5            [11] 1230 	push	af
   50CF 33            [ 6] 1231 	inc	sp
   50D0 CD 1C 4B      [17] 1232 	call	_menuTile
   50D3 F1            [10] 1233 	pop	af
                           1234 ;src/game/game.c:297: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   50D4 21 00 00      [10] 1235 	ld	hl,#0x0000
   50D7 E5            [11] 1236 	push	hl
   50D8 2E 00         [ 7] 1237 	ld	l, #0x00
   50DA E5            [11] 1238 	push	hl
   50DB CD A5 79      [17] 1239 	call	_cpct_px2byteM1
   50DE F1            [10] 1240 	pop	af
   50DF F1            [10] 1241 	pop	af
   50E0 65            [ 4] 1242 	ld	h,l
   50E1 01 00 40      [10] 1243 	ld	bc,#0x4000
   50E4 C5            [11] 1244 	push	bc
   50E5 E5            [11] 1245 	push	hl
   50E6 33            [ 6] 1246 	inc	sp
   50E7 21 00 C0      [10] 1247 	ld	hl,#0xC000
   50EA E5            [11] 1248 	push	hl
   50EB CD 97 79      [17] 1249 	call	_cpct_memset
                           1250 ;src/game/game.c:298: drawWorld(ulx, uly);
   50EE DD 7E FB      [19] 1251 	ld	a,-5 (ix)
   50F1 F5            [11] 1252 	push	af
   50F2 33            [ 6] 1253 	inc	sp
   50F3 DD 7E FF      [19] 1254 	ld	a,-1 (ix)
   50F6 F5            [11] 1255 	push	af
   50F7 33            [ 6] 1256 	inc	sp
   50F8 CD 2D 5B      [17] 1257 	call	_drawWorld
   50FB F1            [10] 1258 	pop	af
   50FC 18 4B         [12] 1259 	jr	00248$
   50FE                    1260 00158$:
                           1261 ;src/game/game.c:301: else if(CURSOR_MODE>=T_SSNS)
   50FE 3A BF 8A      [13] 1262 	ld	a,(#_CURSOR_MODE + 0)
   5101 D6 01         [ 7] 1263 	sub	a, #0x01
   5103 38 44         [12] 1264 	jr	C,00248$
                           1265 ;src/game/game.c:303: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   5105 DD 7E F4      [19] 1266 	ld	a,-12 (ix)
   5108 DD 86 F0      [19] 1267 	add	a, -16 (ix)
   510B 5F            [ 4] 1268 	ld	e,a
   510C DD 7E F5      [19] 1269 	ld	a,-11 (ix)
   510F DD 8E F1      [19] 1270 	adc	a, -15 (ix)
   5112 57            [ 4] 1271 	ld	d,a
   5113 DD 7E F2      [19] 1272 	ld	a,-14 (ix)
   5116 DD 86 F9      [19] 1273 	add	a, -7 (ix)
   5119 6F            [ 4] 1274 	ld	l,a
   511A DD 7E F3      [19] 1275 	ld	a,-13 (ix)
   511D DD 8E FA      [19] 1276 	adc	a, -6 (ix)
   5120 67            [ 4] 1277 	ld	h,a
   5121 4D            [ 4] 1278 	ld	c, l
   5122 44            [ 4] 1279 	ld	b, h
   5123 29            [11] 1280 	add	hl, hl
   5124 29            [11] 1281 	add	hl, hl
   5125 09            [11] 1282 	add	hl, bc
   5126 29            [11] 1283 	add	hl, hl
   5127 29            [11] 1284 	add	hl, hl
   5128 29            [11] 1285 	add	hl, hl
   5129 29            [11] 1286 	add	hl, hl
   512A 19            [11] 1287 	add	hl,de
   512B 3E BB         [ 7] 1288 	ld	a,#<(_p_world)
   512D 85            [ 4] 1289 	add	a, l
   512E 5F            [ 4] 1290 	ld	e,a
   512F 3E 7B         [ 7] 1291 	ld	a,#>(_p_world)
   5131 8C            [ 4] 1292 	adc	a, h
   5132 57            [ 4] 1293 	ld	d,a
   5133 3A BF 8A      [13] 1294 	ld	a,(#_CURSOR_MODE + 0)
   5136 C6 09         [ 7] 1295 	add	a, #0x09
   5138 12            [ 7] 1296 	ld	(de),a
                           1297 ;src/game/game.c:306: if(CURSOR_MODE<=T_SLEW)
   5139 3E 06         [ 7] 1298 	ld	a,#0x06
   513B FD 21 BF 8A   [14] 1299 	ld	iy,#_CURSOR_MODE
   513F FD 96 00      [19] 1300 	sub	a, 0 (iy)
   5142 38 05         [12] 1301 	jr	C,00248$
                           1302 ;src/game/game.c:307: CURSOR_MODE=NONE;
   5144 21 BF 8A      [10] 1303 	ld	hl,#_CURSOR_MODE + 0
   5147 36 00         [10] 1304 	ld	(hl), #0x00
                           1305 ;src/game/game.c:311: for(i=0; i<14000; i++) {}
   5149                    1306 00248$:
   5149 DD 36 F7 B0   [19] 1307 	ld	-9 (ix),#0xB0
   514D DD 36 F8 36   [19] 1308 	ld	-8 (ix),#0x36
   5151                    1309 00204$:
   5151 DD 6E F7      [19] 1310 	ld	l,-9 (ix)
   5154 DD 66 F8      [19] 1311 	ld	h,-8 (ix)
   5157 2B            [ 6] 1312 	dec	hl
   5158 DD 75 F7      [19] 1313 	ld	-9 (ix),l
   515B DD 74 F8      [19] 1314 	ld	-8 (ix), h
   515E 7C            [ 4] 1315 	ld	a, h
   515F DD B6 F7      [19] 1316 	or	a,-9 (ix)
   5162 20 ED         [12] 1317 	jr	NZ,00204$
   5164                    1318 00180$:
                           1319 ;src/game/game.c:315: drawCursor(xCursor, yCursor, 0);
   5164 DD 56 F9      [19] 1320 	ld	d,-7 (ix)
   5167 DD 46 F0      [19] 1321 	ld	b,-16 (ix)
   516A AF            [ 4] 1322 	xor	a, a
   516B F5            [11] 1323 	push	af
   516C 33            [ 6] 1324 	inc	sp
   516D D5            [11] 1325 	push	de
   516E 33            [ 6] 1326 	inc	sp
   516F C5            [11] 1327 	push	bc
   5170 33            [ 6] 1328 	inc	sp
   5171 CD D9 51      [17] 1329 	call	_drawCursor
   5174 F1            [10] 1330 	pop	af
   5175 33            [ 6] 1331 	inc	sp
                           1332 ;src/game/game.c:316: drawScrolls(ulx, uly);
   5176 DD 7E FB      [19] 1333 	ld	a,-5 (ix)
   5179 F5            [11] 1334 	push	af
   517A 33            [ 6] 1335 	inc	sp
   517B DD 7E FF      [19] 1336 	ld	a,-1 (ix)
   517E F5            [11] 1337 	push	af
   517F 33            [ 6] 1338 	inc	sp
   5180 CD 94 5A      [17] 1339 	call	_drawScrolls
   5183 F1            [10] 1340 	pop	af
                           1341 ;src/game/game.c:318: while(!exit);
   5184 DD 7E F6      [19] 1342 	ld	a,-10 (ix)
   5187 B7            [ 4] 1343 	or	a, a
   5188 CA 5C 4D      [10] 1344 	jp	Z,00181$
   518B DD F9         [10] 1345 	ld	sp, ix
   518D DD E1         [14] 1346 	pop	ix
   518F C9            [10] 1347 	ret
   5190                    1348 ___str_28:
   5190 52 65 61 6C 6C 79  1349 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   519D 00                 1350 	.db 0x00
   519E                    1351 ___str_29:
   519E 00                 1352 	.db 0x00
   519F                    1353 ___str_30:
   519F 50 72 65 73 73 20  1354 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   51C4 00                 1355 	.db 0x00
   51C5                    1356 ___str_31:
   51C5 47 65 6E 65 72 61  1357 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   51D8 00                 1358 	.db 0x00
                           1359 	.area _CODE
                           1360 	.area _INITIALIZER
                           1361 	.area _CABS (ABS)
