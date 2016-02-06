                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 17:14:14 2016
                              5 ;--------------------------------------------------------
                              6 	.module game
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _drawWorld
                             13 	.globl _drawScrolls
                             14 	.globl _drawTile
                             15 	.globl _generateWorld
                             16 	.globl _drawCursor
                             17 	.globl _drawWindow
                             18 	.globl _drawMenu
                             19 	.globl _drawBoxM2
                             20 	.globl _putM2
                             21 	.globl _putM1
                             22 	.globl _cpct_getScreenPtr
                             23 	.globl _cpct_drawStringM2
                             24 	.globl _cpct_px2byteM1
                             25 	.globl _cpct_isKeyPressed
                             26 	.globl _cpct_scanKeyboard
                             27 	.globl _cpct_memset
                             28 	.globl _windowInfoTile
                             29 	.globl _menuStations
                             30 	.globl _menuTile
                             31 	.globl _game
                             32 ;--------------------------------------------------------
                             33 ; special function registers
                             34 ;--------------------------------------------------------
                             35 ;--------------------------------------------------------
                             36 ; ram data
                             37 ;--------------------------------------------------------
                             38 	.area _DATA
                             39 ;--------------------------------------------------------
                             40 ; ram data
                             41 ;--------------------------------------------------------
                             42 	.area _INITIALIZED
                             43 ;--------------------------------------------------------
                             44 ; absolute external ram data
                             45 ;--------------------------------------------------------
                             46 	.area _DABS (ABS)
                             47 ;--------------------------------------------------------
                             48 ; global & static initialisations
                             49 ;--------------------------------------------------------
                             50 	.area _HOME
                             51 	.area _GSINIT
                             52 	.area _GSFINAL
                             53 	.area _GSINIT
                             54 ;--------------------------------------------------------
                             55 ; Home
                             56 ;--------------------------------------------------------
                             57 	.area _HOME
                             58 	.area _HOME
                             59 ;--------------------------------------------------------
                             60 ; code
                             61 ;--------------------------------------------------------
                             62 	.area _CODE
                             63 ;src/game/game.c:3: void windowInfoTile(u8 x, u8 y)
                             64 ;	---------------------------------
                             65 ; Function windowInfoTile
                             66 ; ---------------------------------
   4131                      67 _windowInfoTile::
   4131 DD E5         [15]   68 	push	ix
   4133 DD 21 00 00   [14]   69 	ld	ix,#0
   4137 DD 39         [15]   70 	add	ix,sp
   4139 21 F8 FF      [10]   71 	ld	hl,#-8
   413C 39            [11]   72 	add	hl,sp
   413D F9            [ 6]   73 	ld	sp,hl
                             74 ;src/game/game.c:7: switch(p_world[y*WIDTH+x])
   413E DD 4E 05      [19]   75 	ld	c,5 (ix)
   4141 06 00         [ 7]   76 	ld	b,#0x00
   4143 69            [ 4]   77 	ld	l, c
   4144 60            [ 4]   78 	ld	h, b
   4145 29            [11]   79 	add	hl, hl
   4146 29            [11]   80 	add	hl, hl
   4147 09            [11]   81 	add	hl, bc
   4148 29            [11]   82 	add	hl, hl
   4149 29            [11]   83 	add	hl, hl
   414A 29            [11]   84 	add	hl, hl
   414B 29            [11]   85 	add	hl, hl
   414C DD 5E 04      [19]   86 	ld	e,4 (ix)
   414F 16 00         [ 7]   87 	ld	d,#0x00
   4151 19            [11]   88 	add	hl,de
   4152 11 20 67      [10]   89 	ld	de,#_p_world
   4155 19            [11]   90 	add	hl,de
   4156 4E            [ 7]   91 	ld	c,(hl)
   4157 3E 09         [ 7]   92 	ld	a,#0x09
   4159 91            [ 4]   93 	sub	a, c
   415A DA 8B 42      [10]   94 	jp	C,00111$
   415D 59            [ 4]   95 	ld	e,c
   415E 16 00         [ 7]   96 	ld	d,#0x00
   4160 21 67 41      [10]   97 	ld	hl,#00119$
   4163 19            [11]   98 	add	hl,de
   4164 19            [11]   99 	add	hl,de
   4165 19            [11]  100 	add	hl,de
   4166 E9            [ 4]  101 	jp	(hl)
   4167                     102 00119$:
   4167 C3 85 41      [10]  103 	jp	00101$
   416A C3 85 41      [10]  104 	jp	00102$
   416D C3 B1 41      [10]  105 	jp	00103$
   4170 C3 B1 41      [10]  106 	jp	00104$
   4173 C3 B1 41      [10]  107 	jp	00105$
   4176 C3 DD 41      [10]  108 	jp	00106$
   4179 C3 DD 41      [10]  109 	jp	00107$
   417C C3 09 42      [10]  110 	jp	00108$
   417F C3 35 42      [10]  111 	jp	00109$
   4182 C3 60 42      [10]  112 	jp	00110$
                            113 ;src/game/game.c:9: case GRASS1:
   4185                     114 00101$:
                            115 ;src/game/game.c:10: case GRASS2:
   4185                     116 00102$:
                            117 ;src/game/game.c:11: txtWindowInfoTile[0] = "Grassland";
   4185 21 00 00      [10]  118 	ld	hl,#0x0000
   4188 39            [11]  119 	add	hl,sp
   4189 5D            [ 4]  120 	ld	e,l
   418A 54            [ 4]  121 	ld	d,h
   418B 36 C6         [10]  122 	ld	(hl),#<(___str_0)
   418D 23            [ 6]  123 	inc	hl
   418E 36 42         [10]  124 	ld	(hl),#>(___str_0)
                            125 ;src/game/game.c:12: txtWindowInfoTile[1] = "";
   4190 6B            [ 4]  126 	ld	l, e
   4191 62            [ 4]  127 	ld	h, d
   4192 23            [ 6]  128 	inc	hl
   4193 23            [ 6]  129 	inc	hl
   4194 01 D0 42      [10]  130 	ld	bc,#___str_1+0
   4197 71            [ 7]  131 	ld	(hl),c
   4198 23            [ 6]  132 	inc	hl
   4199 70            [ 7]  133 	ld	(hl),b
                            134 ;src/game/game.c:13: txtWindowInfoTile[2] = "Production: nothing";
   419A 21 04 00      [10]  135 	ld	hl,#0x0004
   419D 19            [11]  136 	add	hl,de
   419E 01 D1 42      [10]  137 	ld	bc,#___str_2+0
   41A1 71            [ 7]  138 	ld	(hl),c
   41A2 23            [ 6]  139 	inc	hl
   41A3 70            [ 7]  140 	ld	(hl),b
                            141 ;src/game/game.c:14: txtWindowInfoTile[3] = "Demand: nothing";
   41A4 21 06 00      [10]  142 	ld	hl,#0x0006
   41A7 19            [11]  143 	add	hl,de
   41A8 11 E5 42      [10]  144 	ld	de,#___str_3+0
   41AB 73            [ 7]  145 	ld	(hl),e
   41AC 23            [ 6]  146 	inc	hl
   41AD 72            [ 7]  147 	ld	(hl),d
                            148 ;src/game/game.c:15: break;
   41AE C3 B4 42      [10]  149 	jp	00112$
                            150 ;src/game/game.c:16: case DWELLINGS1:
   41B1                     151 00103$:
                            152 ;src/game/game.c:17: case DWELLINGS2:
   41B1                     153 00104$:
                            154 ;src/game/game.c:18: case DWELLINGS3:
   41B1                     155 00105$:
                            156 ;src/game/game.c:19: txtWindowInfoTile[0] = "City";
   41B1 21 00 00      [10]  157 	ld	hl,#0x0000
   41B4 39            [11]  158 	add	hl,sp
   41B5 5D            [ 4]  159 	ld	e,l
   41B6 54            [ 4]  160 	ld	d,h
   41B7 36 F5         [10]  161 	ld	(hl),#<(___str_4)
   41B9 23            [ 6]  162 	inc	hl
   41BA 36 42         [10]  163 	ld	(hl),#>(___str_4)
                            164 ;src/game/game.c:20: txtWindowInfoTile[1] = "";
   41BC 6B            [ 4]  165 	ld	l, e
   41BD 62            [ 4]  166 	ld	h, d
   41BE 23            [ 6]  167 	inc	hl
   41BF 23            [ 6]  168 	inc	hl
   41C0 01 D0 42      [10]  169 	ld	bc,#___str_1+0
   41C3 71            [ 7]  170 	ld	(hl),c
   41C4 23            [ 6]  171 	inc	hl
   41C5 70            [ 7]  172 	ld	(hl),b
                            173 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   41C6 21 04 00      [10]  174 	ld	hl,#0x0004
   41C9 19            [11]  175 	add	hl,de
   41CA 01 FA 42      [10]  176 	ld	bc,#___str_5+0
   41CD 71            [ 7]  177 	ld	(hl),c
   41CE 23            [ 6]  178 	inc	hl
   41CF 70            [ 7]  179 	ld	(hl),b
                            180 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   41D0 21 06 00      [10]  181 	ld	hl,#0x0006
   41D3 19            [11]  182 	add	hl,de
   41D4 11 17 43      [10]  183 	ld	de,#___str_6+0
   41D7 73            [ 7]  184 	ld	(hl),e
   41D8 23            [ 6]  185 	inc	hl
   41D9 72            [ 7]  186 	ld	(hl),d
                            187 ;src/game/game.c:23: break;
   41DA C3 B4 42      [10]  188 	jp	00112$
                            189 ;src/game/game.c:24: case FARM1:
   41DD                     190 00106$:
                            191 ;src/game/game.c:25: case FARM2:
   41DD                     192 00107$:
                            193 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   41DD 21 00 00      [10]  194 	ld	hl,#0x0000
   41E0 39            [11]  195 	add	hl,sp
   41E1 5D            [ 4]  196 	ld	e,l
   41E2 54            [ 4]  197 	ld	d,h
   41E3 36 3C         [10]  198 	ld	(hl),#<(___str_7)
   41E5 23            [ 6]  199 	inc	hl
   41E6 36 43         [10]  200 	ld	(hl),#>(___str_7)
                            201 ;src/game/game.c:27: txtWindowInfoTile[1] = "";
   41E8 6B            [ 4]  202 	ld	l, e
   41E9 62            [ 4]  203 	ld	h, d
   41EA 23            [ 6]  204 	inc	hl
   41EB 23            [ 6]  205 	inc	hl
   41EC 01 D0 42      [10]  206 	ld	bc,#___str_1+0
   41EF 71            [ 7]  207 	ld	(hl),c
   41F0 23            [ 6]  208 	inc	hl
   41F1 70            [ 7]  209 	ld	(hl),b
                            210 ;src/game/game.c:28: txtWindowInfoTile[2] = "Production: Cereal";
   41F2 21 04 00      [10]  211 	ld	hl,#0x0004
   41F5 19            [11]  212 	add	hl,de
   41F6 01 41 43      [10]  213 	ld	bc,#___str_8+0
   41F9 71            [ 7]  214 	ld	(hl),c
   41FA 23            [ 6]  215 	inc	hl
   41FB 70            [ 7]  216 	ld	(hl),b
                            217 ;src/game/game.c:29: txtWindowInfoTile[3] = "Demand: Nothing";
   41FC 21 06 00      [10]  218 	ld	hl,#0x0006
   41FF 19            [11]  219 	add	hl,de
   4200 11 54 43      [10]  220 	ld	de,#___str_9+0
   4203 73            [ 7]  221 	ld	(hl),e
   4204 23            [ 6]  222 	inc	hl
   4205 72            [ 7]  223 	ld	(hl),d
                            224 ;src/game/game.c:30: break;
   4206 C3 B4 42      [10]  225 	jp	00112$
                            226 ;src/game/game.c:31: case WATER:
   4209                     227 00108$:
                            228 ;src/game/game.c:32: txtWindowInfoTile[0] = "Water";
   4209 21 00 00      [10]  229 	ld	hl,#0x0000
   420C 39            [11]  230 	add	hl,sp
   420D 5D            [ 4]  231 	ld	e,l
   420E 54            [ 4]  232 	ld	d,h
   420F 36 64         [10]  233 	ld	(hl),#<(___str_10)
   4211 23            [ 6]  234 	inc	hl
   4212 36 43         [10]  235 	ld	(hl),#>(___str_10)
                            236 ;src/game/game.c:33: txtWindowInfoTile[1] = "";
   4214 6B            [ 4]  237 	ld	l, e
   4215 62            [ 4]  238 	ld	h, d
   4216 23            [ 6]  239 	inc	hl
   4217 23            [ 6]  240 	inc	hl
   4218 01 D0 42      [10]  241 	ld	bc,#___str_1+0
   421B 71            [ 7]  242 	ld	(hl),c
   421C 23            [ 6]  243 	inc	hl
   421D 70            [ 7]  244 	ld	(hl),b
                            245 ;src/game/game.c:34: txtWindowInfoTile[2] = "Production: Nothing";
   421E 21 04 00      [10]  246 	ld	hl,#0x0004
   4221 19            [11]  247 	add	hl,de
   4222 01 6A 43      [10]  248 	ld	bc,#___str_11+0
   4225 71            [ 7]  249 	ld	(hl),c
   4226 23            [ 6]  250 	inc	hl
   4227 70            [ 7]  251 	ld	(hl),b
                            252 ;src/game/game.c:35: txtWindowInfoTile[3] = "Demand: Nothing";
   4228 21 06 00      [10]  253 	ld	hl,#0x0006
   422B 19            [11]  254 	add	hl,de
   422C 11 54 43      [10]  255 	ld	de,#___str_9+0
   422F 73            [ 7]  256 	ld	(hl),e
   4230 23            [ 6]  257 	inc	hl
   4231 72            [ 7]  258 	ld	(hl),d
                            259 ;src/game/game.c:36: break;
   4232 C3 B4 42      [10]  260 	jp	00112$
                            261 ;src/game/game.c:37: case FOREST:
   4235                     262 00109$:
                            263 ;src/game/game.c:38: txtWindowInfoTile[0] = "Forest";
   4235 21 00 00      [10]  264 	ld	hl,#0x0000
   4238 39            [11]  265 	add	hl,sp
   4239 5D            [ 4]  266 	ld	e,l
   423A 54            [ 4]  267 	ld	d,h
   423B 36 7E         [10]  268 	ld	(hl),#<(___str_12)
   423D 23            [ 6]  269 	inc	hl
   423E 36 43         [10]  270 	ld	(hl),#>(___str_12)
                            271 ;src/game/game.c:39: txtWindowInfoTile[1] = "";
   4240 6B            [ 4]  272 	ld	l, e
   4241 62            [ 4]  273 	ld	h, d
   4242 23            [ 6]  274 	inc	hl
   4243 23            [ 6]  275 	inc	hl
   4244 01 D0 42      [10]  276 	ld	bc,#___str_1+0
   4247 71            [ 7]  277 	ld	(hl),c
   4248 23            [ 6]  278 	inc	hl
   4249 70            [ 7]  279 	ld	(hl),b
                            280 ;src/game/game.c:40: txtWindowInfoTile[2] = "Production: Nothing";
   424A 21 04 00      [10]  281 	ld	hl,#0x0004
   424D 19            [11]  282 	add	hl,de
   424E 01 6A 43      [10]  283 	ld	bc,#___str_11+0
   4251 71            [ 7]  284 	ld	(hl),c
   4252 23            [ 6]  285 	inc	hl
   4253 70            [ 7]  286 	ld	(hl),b
                            287 ;src/game/game.c:41: txtWindowInfoTile[3] = "Demand: Nothing";
   4254 21 06 00      [10]  288 	ld	hl,#0x0006
   4257 19            [11]  289 	add	hl,de
   4258 11 54 43      [10]  290 	ld	de,#___str_9+0
   425B 73            [ 7]  291 	ld	(hl),e
   425C 23            [ 6]  292 	inc	hl
   425D 72            [ 7]  293 	ld	(hl),d
                            294 ;src/game/game.c:42: break;
   425E 18 54         [12]  295 	jr	00112$
                            296 ;src/game/game.c:43: case LIVESTOCK:
   4260                     297 00110$:
                            298 ;src/game/game.c:44: txtWindowInfoTile[0] = "Livestock farming";
   4260 21 00 00      [10]  299 	ld	hl,#0x0000
   4263 39            [11]  300 	add	hl,sp
   4264 5D            [ 4]  301 	ld	e,l
   4265 54            [ 4]  302 	ld	d,h
   4266 36 85         [10]  303 	ld	(hl),#<(___str_13)
   4268 23            [ 6]  304 	inc	hl
   4269 36 43         [10]  305 	ld	(hl),#>(___str_13)
                            306 ;src/game/game.c:45: txtWindowInfoTile[1] = "";
   426B 6B            [ 4]  307 	ld	l, e
   426C 62            [ 4]  308 	ld	h, d
   426D 23            [ 6]  309 	inc	hl
   426E 23            [ 6]  310 	inc	hl
   426F 01 D0 42      [10]  311 	ld	bc,#___str_1+0
   4272 71            [ 7]  312 	ld	(hl),c
   4273 23            [ 6]  313 	inc	hl
   4274 70            [ 7]  314 	ld	(hl),b
                            315 ;src/game/game.c:46: txtWindowInfoTile[2] = "Production: Livestock, wool";
   4275 21 04 00      [10]  316 	ld	hl,#0x0004
   4278 19            [11]  317 	add	hl,de
   4279 01 97 43      [10]  318 	ld	bc,#___str_14+0
   427C 71            [ 7]  319 	ld	(hl),c
   427D 23            [ 6]  320 	inc	hl
   427E 70            [ 7]  321 	ld	(hl),b
                            322 ;src/game/game.c:47: txtWindowInfoTile[3] = "Demand: Cereal";
   427F 21 06 00      [10]  323 	ld	hl,#0x0006
   4282 19            [11]  324 	add	hl,de
   4283 11 B3 43      [10]  325 	ld	de,#___str_15+0
   4286 73            [ 7]  326 	ld	(hl),e
   4287 23            [ 6]  327 	inc	hl
   4288 72            [ 7]  328 	ld	(hl),d
                            329 ;src/game/game.c:48: break;
   4289 18 29         [12]  330 	jr	00112$
                            331 ;src/game/game.c:49: default:
   428B                     332 00111$:
                            333 ;src/game/game.c:50: txtWindowInfoTile[0] = "Not yet implemented";
   428B 21 00 00      [10]  334 	ld	hl,#0x0000
   428E 39            [11]  335 	add	hl,sp
   428F 5D            [ 4]  336 	ld	e,l
   4290 54            [ 4]  337 	ld	d,h
   4291 36 C2         [10]  338 	ld	(hl),#<(___str_16)
   4293 23            [ 6]  339 	inc	hl
   4294 36 43         [10]  340 	ld	(hl),#>(___str_16)
                            341 ;src/game/game.c:51: txtWindowInfoTile[1] = "";
   4296 6B            [ 4]  342 	ld	l, e
   4297 62            [ 4]  343 	ld	h, d
   4298 23            [ 6]  344 	inc	hl
   4299 23            [ 6]  345 	inc	hl
   429A 01 D0 42      [10]  346 	ld	bc,#___str_1+0
   429D 71            [ 7]  347 	ld	(hl),c
   429E 23            [ 6]  348 	inc	hl
   429F 70            [ 7]  349 	ld	(hl),b
                            350 ;src/game/game.c:52: txtWindowInfoTile[2] = "Production: ?";
   42A0 21 04 00      [10]  351 	ld	hl,#0x0004
   42A3 19            [11]  352 	add	hl,de
   42A4 01 D6 43      [10]  353 	ld	bc,#___str_17+0
   42A7 71            [ 7]  354 	ld	(hl),c
   42A8 23            [ 6]  355 	inc	hl
   42A9 70            [ 7]  356 	ld	(hl),b
                            357 ;src/game/game.c:53: txtWindowInfoTile[3] = "Demand: ?";
   42AA 21 06 00      [10]  358 	ld	hl,#0x0006
   42AD 19            [11]  359 	add	hl,de
   42AE 11 E4 43      [10]  360 	ld	de,#___str_18+0
   42B1 73            [ 7]  361 	ld	(hl),e
   42B2 23            [ 6]  362 	inc	hl
   42B3 72            [ 7]  363 	ld	(hl),d
                            364 ;src/game/game.c:55: }
   42B4                     365 00112$:
                            366 ;src/game/game.c:57: drawWindow(txtWindowInfoTile, 4, 0);
   42B4 21 00 00      [10]  367 	ld	hl,#0x0000
   42B7 39            [11]  368 	add	hl,sp
   42B8 EB            [ 4]  369 	ex	de,hl
   42B9 21 04 00      [10]  370 	ld	hl,#0x0004
   42BC E5            [11]  371 	push	hl
   42BD D5            [11]  372 	push	de
   42BE CD A2 5A      [17]  373 	call	_drawWindow
   42C1 DD F9         [10]  374 	ld	sp,ix
   42C3 DD E1         [14]  375 	pop	ix
   42C5 C9            [10]  376 	ret
   42C6                     377 ___str_0:
   42C6 47 72 61 73 73 6C   378 	.ascii "Grassland"
        61 6E 64
   42CF 00                  379 	.db 0x00
   42D0                     380 ___str_1:
   42D0 00                  381 	.db 0x00
   42D1                     382 ___str_2:
   42D1 50 72 6F 64 75 63   383 	.ascii "Production: nothing"
        74 69 6F 6E 3A 20
        6E 6F 74 68 69 6E
        67
   42E4 00                  384 	.db 0x00
   42E5                     385 ___str_3:
   42E5 44 65 6D 61 6E 64   386 	.ascii "Demand: nothing"
        3A 20 6E 6F 74 68
        69 6E 67
   42F4 00                  387 	.db 0x00
   42F5                     388 ___str_4:
   42F5 43 69 74 79         389 	.ascii "City"
   42F9 00                  390 	.db 0x00
   42FA                     391 ___str_5:
   42FA 50 72 6F 64 75 63   392 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   4316 00                  393 	.db 0x00
   4317                     394 ___str_6:
   4317 44 65 6D 61 6E 64   395 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   433B 00                  396 	.db 0x00
   433C                     397 ___str_7:
   433C 46 61 72 6D         398 	.ascii "Farm"
   4340 00                  399 	.db 0x00
   4341                     400 ___str_8:
   4341 50 72 6F 64 75 63   401 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   4353 00                  402 	.db 0x00
   4354                     403 ___str_9:
   4354 44 65 6D 61 6E 64   404 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   4363 00                  405 	.db 0x00
   4364                     406 ___str_10:
   4364 57 61 74 65 72      407 	.ascii "Water"
   4369 00                  408 	.db 0x00
   436A                     409 ___str_11:
   436A 50 72 6F 64 75 63   410 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   437D 00                  411 	.db 0x00
   437E                     412 ___str_12:
   437E 46 6F 72 65 73 74   413 	.ascii "Forest"
   4384 00                  414 	.db 0x00
   4385                     415 ___str_13:
   4385 4C 69 76 65 73 74   416 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   4396 00                  417 	.db 0x00
   4397                     418 ___str_14:
   4397 50 72 6F 64 75 63   419 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   43B2 00                  420 	.db 0x00
   43B3                     421 ___str_15:
   43B3 44 65 6D 61 6E 64   422 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   43C1 00                  423 	.db 0x00
   43C2                     424 ___str_16:
   43C2 4E 6F 74 20 79 65   425 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   43D5 00                  426 	.db 0x00
   43D6                     427 ___str_17:
   43D6 50 72 6F 64 75 63   428 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   43E3 00                  429 	.db 0x00
   43E4                     430 ___str_18:
   43E4 44 65 6D 61 6E 64   431 	.ascii "Demand: ?"
        3A 20 3F
   43ED 00                  432 	.db 0x00
                            433 ;src/game/game.c:60: void menuStations()
                            434 ;	---------------------------------
                            435 ; Function menuStations
                            436 ; ---------------------------------
   43EE                     437 _menuStations::
   43EE DD E5         [15]  438 	push	ix
   43F0 DD 21 00 00   [14]  439 	ld	ix,#0
   43F4 DD 39         [15]  440 	add	ix,sp
   43F6 21 FA FF      [10]  441 	ld	hl,#-6
   43F9 39            [11]  442 	add	hl,sp
   43FA F9            [ 6]  443 	ld	sp,hl
                            444 ;src/game/game.c:64: const char *txtMenuSizeStation[] = { 
   43FB 21 00 00      [10]  445 	ld	hl,#0x0000
   43FE 39            [11]  446 	add	hl,sp
   43FF 5D            [ 4]  447 	ld	e,l
   4400 54            [ 4]  448 	ld	d,h
   4401 36 50         [10]  449 	ld	(hl),#<(___str_19)
   4403 23            [ 6]  450 	inc	hl
   4404 36 44         [10]  451 	ld	(hl),#>(___str_19)
   4406 6B            [ 4]  452 	ld	l, e
   4407 62            [ 4]  453 	ld	h, d
   4408 23            [ 6]  454 	inc	hl
   4409 23            [ 6]  455 	inc	hl
   440A 01 56 44      [10]  456 	ld	bc,#___str_20+0
   440D 71            [ 7]  457 	ld	(hl),c
   440E 23            [ 6]  458 	inc	hl
   440F 70            [ 7]  459 	ld	(hl),b
   4410 21 04 00      [10]  460 	ld	hl,#0x0004
   4413 19            [11]  461 	add	hl,de
   4414 01 5D 44      [10]  462 	ld	bc,#___str_21+0
   4417 71            [ 7]  463 	ld	(hl),c
   4418 23            [ 6]  464 	inc	hl
   4419 70            [ 7]  465 	ld	(hl),b
                            466 ;src/game/game.c:70: result = drawMenu(txtMenuSizeStation,3);
   441A 3E 03         [ 7]  467 	ld	a,#0x03
   441C F5            [11]  468 	push	af
   441D 33            [ 6]  469 	inc	sp
   441E D5            [11]  470 	push	de
   441F CD A4 59      [17]  471 	call	_drawMenu
   4422 F1            [10]  472 	pop	af
   4423 33            [ 6]  473 	inc	sp
   4424 5D            [ 4]  474 	ld	e,l
                            475 ;src/game/game.c:72: switch(result)
   4425 3E 02         [ 7]  476 	ld	a,#0x02
   4427 93            [ 4]  477 	sub	a, e
   4428 38 21         [12]  478 	jr	C,00105$
   442A 16 00         [ 7]  479 	ld	d,#0x00
   442C 21 32 44      [10]  480 	ld	hl,#00111$
   442F 19            [11]  481 	add	hl,de
   4430 19            [11]  482 	add	hl,de
                            483 ;src/game/game.c:74: case 0:
   4431 E9            [ 4]  484 	jp	(hl)
   4432                     485 00111$:
   4432 18 04         [12]  486 	jr	00101$
   4434 18 09         [12]  487 	jr	00102$
   4436 18 0E         [12]  488 	jr	00103$
   4438                     489 00101$:
                            490 ;src/game/game.c:75: CURSOR_MODE=T_SSEW;
   4438 21 20 76      [10]  491 	ld	hl,#_CURSOR_MODE + 0
   443B 36 02         [10]  492 	ld	(hl), #0x02
                            493 ;src/game/game.c:76: break;
   443D 18 0C         [12]  494 	jr	00105$
                            495 ;src/game/game.c:78: case 1:
   443F                     496 00102$:
                            497 ;src/game/game.c:79: CURSOR_MODE=T_SMEW;
   443F 21 20 76      [10]  498 	ld	hl,#_CURSOR_MODE + 0
   4442 36 04         [10]  499 	ld	(hl), #0x04
                            500 ;src/game/game.c:80: break;
   4444 18 05         [12]  501 	jr	00105$
                            502 ;src/game/game.c:82: case 2:
   4446                     503 00103$:
                            504 ;src/game/game.c:83: CURSOR_MODE=T_SLEW;
   4446 21 20 76      [10]  505 	ld	hl,#_CURSOR_MODE + 0
   4449 36 06         [10]  506 	ld	(hl), #0x06
                            507 ;src/game/game.c:85: }
   444B                     508 00105$:
   444B DD F9         [10]  509 	ld	sp, ix
   444D DD E1         [14]  510 	pop	ix
   444F C9            [10]  511 	ret
   4450                     512 ___str_19:
   4450 53 6D 61 6C 6C      513 	.ascii "Small"
   4455 00                  514 	.db 0x00
   4456                     515 ___str_20:
   4456 4D 65 64 69 75 6D   516 	.ascii "Medium"
   445C 00                  517 	.db 0x00
   445D                     518 ___str_21:
   445D 4C 61 72 67 65      519 	.ascii "Large"
   4462 00                  520 	.db 0x00
                            521 ;src/game/game.c:88: void menuTile(u8 x, u8 y)
                            522 ;	---------------------------------
                            523 ; Function menuTile
                            524 ; ---------------------------------
   4463                     525 _menuTile::
   4463 DD E5         [15]  526 	push	ix
   4465 DD 21 00 00   [14]  527 	ld	ix,#0
   4469 DD 39         [15]  528 	add	ix,sp
   446B 21 E6 FF      [10]  529 	ld	hl,#-26
   446E 39            [11]  530 	add	hl,sp
   446F F9            [ 6]  531 	ld	sp,hl
                            532 ;src/game/game.c:92: const char *txtMenuTile[] = { 
   4470 21 00 00      [10]  533 	ld	hl,#0x0000
   4473 39            [11]  534 	add	hl,sp
   4474 5D            [ 4]  535 	ld	e,l
   4475 54            [ 4]  536 	ld	d,h
   4476 36 8B         [10]  537 	ld	(hl),#<(___str_22)
   4478 23            [ 6]  538 	inc	hl
   4479 36 45         [10]  539 	ld	(hl),#>(___str_22)
   447B 6B            [ 4]  540 	ld	l, e
   447C 62            [ 4]  541 	ld	h, d
   447D 23            [ 6]  542 	inc	hl
   447E 23            [ 6]  543 	inc	hl
   447F 01 9B 45      [10]  544 	ld	bc,#___str_23+0
   4482 71            [ 7]  545 	ld	(hl),c
   4483 23            [ 6]  546 	inc	hl
   4484 70            [ 7]  547 	ld	(hl),b
   4485 21 04 00      [10]  548 	ld	hl,#0x0004
   4488 19            [11]  549 	add	hl,de
   4489 01 AB 45      [10]  550 	ld	bc,#___str_24+0
   448C 71            [ 7]  551 	ld	(hl),c
   448D 23            [ 6]  552 	inc	hl
   448E 70            [ 7]  553 	ld	(hl),b
   448F 21 06 00      [10]  554 	ld	hl,#0x0006
   4492 19            [11]  555 	add	hl,de
   4493 01 BB 45      [10]  556 	ld	bc,#___str_25+0
   4496 71            [ 7]  557 	ld	(hl),c
   4497 23            [ 6]  558 	inc	hl
   4498 70            [ 7]  559 	ld	(hl),b
   4499 21 08 00      [10]  560 	ld	hl,#0x0008
   449C 19            [11]  561 	add	hl,de
   449D 01 C3 45      [10]  562 	ld	bc,#___str_26+0
   44A0 71            [ 7]  563 	ld	(hl),c
   44A1 23            [ 6]  564 	inc	hl
   44A2 70            [ 7]  565 	ld	(hl),b
   44A3 21 0A 00      [10]  566 	ld	hl,#0x000A
   44A6 19            [11]  567 	add	hl,de
   44A7 01 D2 45      [10]  568 	ld	bc,#___str_27+0
   44AA 71            [ 7]  569 	ld	(hl),c
   44AB 23            [ 6]  570 	inc	hl
   44AC 70            [ 7]  571 	ld	(hl),b
   44AD 21 0C 00      [10]  572 	ld	hl,#0x000C
   44B0 19            [11]  573 	add	hl,de
   44B1 01 DD 45      [10]  574 	ld	bc,#___str_28+0
   44B4 71            [ 7]  575 	ld	(hl),c
   44B5 23            [ 6]  576 	inc	hl
   44B6 70            [ 7]  577 	ld	(hl),b
                            578 ;src/game/game.c:102: const char *txtWindowDestroy[] = { 
   44B7 21 0E 00      [10]  579 	ld	hl,#0x000E
   44BA 39            [11]  580 	add	hl,sp
   44BB 4D            [ 4]  581 	ld	c,l
   44BC 44            [ 4]  582 	ld	b,h
   44BD 36 E4         [10]  583 	ld	(hl),#<(___str_29)
   44BF 23            [ 6]  584 	inc	hl
   44C0 36 45         [10]  585 	ld	(hl),#>(___str_29)
   44C2 21 02 00      [10]  586 	ld	hl,#0x0002
   44C5 09            [11]  587 	add	hl,bc
   44C6 DD 75 FA      [19]  588 	ld	-6 (ix),l
   44C9 DD 74 FB      [19]  589 	ld	-5 (ix),h
   44CC DD 6E FA      [19]  590 	ld	l,-6 (ix)
   44CF DD 66 FB      [19]  591 	ld	h,-5 (ix)
   44D2 36 07         [10]  592 	ld	(hl),#<(___str_30)
   44D4 23            [ 6]  593 	inc	hl
   44D5 36 46         [10]  594 	ld	(hl),#>(___str_30)
   44D7 21 04 00      [10]  595 	ld	hl,#0x0004
   44DA 09            [11]  596 	add	hl,bc
   44DB DD 75 FA      [19]  597 	ld	-6 (ix),l
   44DE DD 74 FB      [19]  598 	ld	-5 (ix),h
   44E1 DD 6E FA      [19]  599 	ld	l,-6 (ix)
   44E4 DD 66 FB      [19]  600 	ld	h,-5 (ix)
   44E7 36 08         [10]  601 	ld	(hl),#<(___str_31)
   44E9 23            [ 6]  602 	inc	hl
   44EA 36 46         [10]  603 	ld	(hl),#>(___str_31)
                            604 ;src/game/game.c:109: putM2();
   44EC C5            [11]  605 	push	bc
   44ED D5            [11]  606 	push	de
   44EE CD 9E 55      [17]  607 	call	_putM2
   44F1 D1            [10]  608 	pop	de
   44F2 C1            [10]  609 	pop	bc
                            610 ;src/game/game.c:111: do{
   44F3 D5            [11]  611 	push	de
   44F4 DD 5E 05      [19]  612 	ld	e,5 (ix)
   44F7 16 00         [ 7]  613 	ld	d,#0x00
   44F9 6B            [ 4]  614 	ld	l, e
   44FA 62            [ 4]  615 	ld	h, d
   44FB 29            [11]  616 	add	hl, hl
   44FC 29            [11]  617 	add	hl, hl
   44FD 19            [11]  618 	add	hl, de
   44FE 29            [11]  619 	add	hl, hl
   44FF 29            [11]  620 	add	hl, hl
   4500 29            [11]  621 	add	hl, hl
   4501 29            [11]  622 	add	hl, hl
   4502 D1            [10]  623 	pop	de
   4503 DD 75 FA      [19]  624 	ld	-6 (ix),l
   4506 DD 74 FB      [19]  625 	ld	-5 (ix),h
   4509 DD 71 FE      [19]  626 	ld	-2 (ix),c
   450C DD 70 FF      [19]  627 	ld	-1 (ix),b
   450F DD 73 FC      [19]  628 	ld	-4 (ix),e
   4512 DD 72 FD      [19]  629 	ld	-3 (ix),d
   4515                     630 00114$:
                            631 ;src/game/game.c:112: menuChoice = drawMenu(txtMenuTile,7);
   4515 DD 5E FC      [19]  632 	ld	e,-4 (ix)
   4518 DD 56 FD      [19]  633 	ld	d,-3 (ix)
   451B 3E 07         [ 7]  634 	ld	a,#0x07
   451D F5            [11]  635 	push	af
   451E 33            [ 6]  636 	inc	sp
   451F D5            [11]  637 	push	de
   4520 CD A4 59      [17]  638 	call	_drawMenu
   4523 F1            [10]  639 	pop	af
   4524 33            [ 6]  640 	inc	sp
   4525 55            [ 4]  641 	ld	d,l
                            642 ;src/game/game.c:114: if(menuChoice==0)
   4526 7A            [ 4]  643 	ld	a,d
   4527 B7            [ 4]  644 	or	a, a
   4528 20 0F         [12]  645 	jr	NZ,00112$
                            646 ;src/game/game.c:115: windowInfoTile(x, y);
   452A D5            [11]  647 	push	de
   452B DD 66 05      [19]  648 	ld	h,5 (ix)
   452E DD 6E 04      [19]  649 	ld	l,4 (ix)
   4531 E5            [11]  650 	push	hl
   4532 CD 31 41      [17]  651 	call	_windowInfoTile
   4535 F1            [10]  652 	pop	af
   4536 D1            [10]  653 	pop	de
   4537 18 45         [12]  654 	jr	00115$
   4539                     655 00112$:
                            656 ;src/game/game.c:116: else if(menuChoice==1)
   4539 7A            [ 4]  657 	ld	a,d
   453A 3D            [ 4]  658 	dec	a
   453B 20 09         [12]  659 	jr	NZ,00109$
                            660 ;src/game/game.c:118: CURSOR_MODE=T_REW;
   453D 21 20 76      [10]  661 	ld	hl,#_CURSOR_MODE + 0
   4540 36 07         [10]  662 	ld	(hl), #0x07
                            663 ;src/game/game.c:119: menuChoice=6;
   4542 16 06         [ 7]  664 	ld	d,#0x06
   4544 18 38         [12]  665 	jr	00115$
   4546                     666 00109$:
                            667 ;src/game/game.c:121: else if(menuChoice==2)
   4546 7A            [ 4]  668 	ld	a,d
   4547 D6 02         [ 7]  669 	sub	a, #0x02
   4549 20 07         [12]  670 	jr	NZ,00106$
                            671 ;src/game/game.c:123: menuStations();
   454B CD EE 43      [17]  672 	call	_menuStations
                            673 ;src/game/game.c:124: menuChoice=6;
   454E 16 06         [ 7]  674 	ld	d,#0x06
   4550 18 2C         [12]  675 	jr	00115$
   4552                     676 00106$:
                            677 ;src/game/game.c:126: else if(menuChoice==3)
   4552 7A            [ 4]  678 	ld	a,d
   4553 D6 03         [ 7]  679 	sub	a, #0x03
   4555 20 27         [12]  680 	jr	NZ,00115$
                            681 ;src/game/game.c:128: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   4557 DD 5E FE      [19]  682 	ld	e,-2 (ix)
   455A DD 56 FF      [19]  683 	ld	d,-1 (ix)
   455D 21 03 01      [10]  684 	ld	hl,#0x0103
   4560 E5            [11]  685 	push	hl
   4561 D5            [11]  686 	push	de
   4562 CD A2 5A      [17]  687 	call	_drawWindow
   4565 F1            [10]  688 	pop	af
   4566 F1            [10]  689 	pop	af
   4567 2D            [ 4]  690 	dec	l
   4568 20 12         [12]  691 	jr	NZ,00102$
                            692 ;src/game/game.c:129: p_world[x+y*WIDTH] = GRASS1;
   456A DD 6E 04      [19]  693 	ld	l,4 (ix)
   456D 26 00         [ 7]  694 	ld	h,#0x00
   456F DD 5E FA      [19]  695 	ld	e,-6 (ix)
   4572 DD 56 FB      [19]  696 	ld	d,-5 (ix)
   4575 19            [11]  697 	add	hl,de
   4576 11 20 67      [10]  698 	ld	de,#_p_world
   4579 19            [11]  699 	add	hl,de
   457A 36 00         [10]  700 	ld	(hl),#0x00
   457C                     701 00102$:
                            702 ;src/game/game.c:131: menuChoice=6;
   457C 16 06         [ 7]  703 	ld	d,#0x06
   457E                     704 00115$:
                            705 ;src/game/game.c:135: while(menuChoice!=6);
   457E 7A            [ 4]  706 	ld	a,d
   457F D6 06         [ 7]  707 	sub	a, #0x06
   4581 20 92         [12]  708 	jr	NZ,00114$
                            709 ;src/game/game.c:137: putM1();
   4583 CD 8A 55      [17]  710 	call	_putM1
   4586 DD F9         [10]  711 	ld	sp, ix
   4588 DD E1         [14]  712 	pop	ix
   458A C9            [10]  713 	ret
   458B                     714 ___str_22:
   458B 41 62 6F 75 74 20   715 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   459A 00                  716 	.db 0x00
   459B                     717 ___str_23:
   459B 42 75 69 6C 64 20   718 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   45AA 00                  719 	.db 0x00
   45AB                     720 ___str_24:
   45AB 42 75 69 6C 64 20   721 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   45BA 00                  722 	.db 0x00
   45BB                     723 ___str_25:
   45BB 44 65 73 74 72 6F   724 	.ascii "Destroy"
        79
   45C2 00                  725 	.db 0x00
   45C3                     726 ___str_26:
   45C3 52 61 69 6C 72 6F   727 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   45D1 00                  728 	.db 0x00
   45D2                     729 ___str_27:
   45D2 41 63 63 6F 75 6E   730 	.ascii "Accounting"
        74 69 6E 67
   45DC 00                  731 	.db 0x00
   45DD                     732 ___str_28:
   45DD 52 65 73 75 6D 65   733 	.ascii "Resume"
   45E3 00                  734 	.db 0x00
   45E4                     735 ___str_29:
   45E4 44 65 73 74 72 6F   736 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   4606 00                  737 	.db 0x00
   4607                     738 ___str_30:
   4607 00                  739 	.db 0x00
   4608                     740 ___str_31:
   4608 43 6F 6E 74 69 6E   741 	.ascii "Continue ?"
        75 65 20 3F
   4612 00                  742 	.db 0x00
                            743 ;src/game/game.c:141: void game()
                            744 ;	---------------------------------
                            745 ; Function game
                            746 ; ---------------------------------
   4613                     747 _game::
   4613 DD E5         [15]  748 	push	ix
   4615 DD 21 00 00   [14]  749 	ld	ix,#0
   4619 DD 39         [15]  750 	add	ix,sp
   461B 21 EA FF      [10]  751 	ld	hl,#-22
   461E 39            [11]  752 	add	hl,sp
   461F F9            [ 6]  753 	ld	sp,hl
                            754 ;src/game/game.c:144: int ulx = 0;
   4620 DD 36 F4 00   [19]  755 	ld	-12 (ix),#0x00
   4624 DD 36 F5 00   [19]  756 	ld	-11 (ix),#0x00
                            757 ;src/game/game.c:145: int uly = 0;
   4628 DD 36 F0 00   [19]  758 	ld	-16 (ix),#0x00
   462C DD 36 F1 00   [19]  759 	ld	-15 (ix),#0x00
                            760 ;src/game/game.c:146: int xCursor = 10;
   4630 DD 36 F2 0A   [19]  761 	ld	-14 (ix),#0x0A
   4634 DD 36 F3 00   [19]  762 	ld	-13 (ix),#0x00
                            763 ;src/game/game.c:147: int yCursor = 6;
   4638 DD 36 F6 06   [19]  764 	ld	-10 (ix),#0x06
   463C DD 36 F7 00   [19]  765 	ld	-9 (ix),#0x00
                            766 ;src/game/game.c:149: u8 exit=0;
   4640 DD 36 F8 00   [19]  767 	ld	-8 (ix),#0x00
                            768 ;src/game/game.c:152: drawBoxM2(50, 50);
   4644 21 32 00      [10]  769 	ld	hl,#0x0032
   4647 E5            [11]  770 	push	hl
   4648 2E 32         [ 7]  771 	ld	l, #0x32
   464A E5            [11]  772 	push	hl
   464B CD DA 56      [17]  773 	call	_drawBoxM2
   464E F1            [10]  774 	pop	af
                            775 ;src/game/game.c:153: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   464F 21 20 5F      [10]  776 	ld	hl, #0x5F20
   4652 E3            [19]  777 	ex	(sp),hl
   4653 21 00 C0      [10]  778 	ld	hl,#0xC000
   4656 E5            [11]  779 	push	hl
   4657 CD 4C 66      [17]  780 	call	_cpct_getScreenPtr
                            781 ;src/game/game.c:154: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   465A 4D            [ 4]  782 	ld	c, l
   465B 44            [ 4]  783 	ld	b, h
   465C 11 FB 4A      [10]  784 	ld	de,#___str_35
   465F AF            [ 4]  785 	xor	a, a
   4660 F5            [11]  786 	push	af
   4661 33            [ 6]  787 	inc	sp
   4662 C5            [11]  788 	push	bc
   4663 D5            [11]  789 	push	de
   4664 CD 21 63      [17]  790 	call	_cpct_drawStringM2
   4667 F1            [10]  791 	pop	af
   4668 F1            [10]  792 	pop	af
   4669 33            [ 6]  793 	inc	sp
                            794 ;src/game/game.c:156: generateWorld();
   466A CD 41 4E      [17]  795 	call	_generateWorld
                            796 ;src/game/game.c:158: putM1();
   466D CD 8A 55      [17]  797 	call	_putM1
                            798 ;src/game/game.c:159: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   4670 21 00 00      [10]  799 	ld	hl,#0x0000
   4673 E5            [11]  800 	push	hl
   4674 2E 00         [ 7]  801 	ld	l, #0x00
   4676 E5            [11]  802 	push	hl
   4677 CD 26 65      [17]  803 	call	_cpct_px2byteM1
   467A F1            [10]  804 	pop	af
   467B F1            [10]  805 	pop	af
   467C 65            [ 4]  806 	ld	h,l
   467D 01 00 40      [10]  807 	ld	bc,#0x4000
   4680 C5            [11]  808 	push	bc
   4681 E5            [11]  809 	push	hl
   4682 33            [ 6]  810 	inc	sp
   4683 21 00 C0      [10]  811 	ld	hl,#0xC000
   4686 E5            [11]  812 	push	hl
   4687 CD 18 65      [17]  813 	call	_cpct_memset
                            814 ;src/game/game.c:160: drawWorld(ulx, uly);
   468A 21 00 00      [10]  815 	ld	hl,#0x0000
   468D E5            [11]  816 	push	hl
   468E CD 3E 55      [17]  817 	call	_drawWorld
   4691 F1            [10]  818 	pop	af
                            819 ;src/game/game.c:162: do{
   4692                     820 00181$:
                            821 ;src/game/game.c:163: cpct_scanKeyboard(); 
   4692 CD 6C 66      [17]  822 	call	_cpct_scanKeyboard
                            823 ;src/game/game.c:165: if ( cpct_isKeyPressed(Key_CursorUp) )
   4695 21 00 01      [10]  824 	ld	hl,#0x0100
   4698 CD EA 62      [17]  825 	call	_cpct_isKeyPressed
   469B DD 75 FE      [19]  826 	ld	-2 (ix),l
                            827 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   469E DD 7E F6      [19]  828 	ld	a,-10 (ix)
   46A1 DD 77 FF      [19]  829 	ld	-1 (ix),a
   46A4 DD 7E F2      [19]  830 	ld	a,-14 (ix)
   46A7 DD 77 FD      [19]  831 	ld	-3 (ix),a
   46AA DD 7E F0      [19]  832 	ld	a,-16 (ix)
   46AD DD 77 FC      [19]  833 	ld	-4 (ix),a
   46B0 DD 7E F4      [19]  834 	ld	a,-12 (ix)
   46B3 DD 77 FB      [19]  835 	ld	-5 (ix),a
                            836 ;src/game/game.c:165: if ( cpct_isKeyPressed(Key_CursorUp) )
   46B6 DD 7E FE      [19]  837 	ld	a,-2 (ix)
   46B9 B7            [ 4]  838 	or	a, a
   46BA CA 3C 47      [10]  839 	jp	Z,00179$
                            840 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   46BD DD 7E FF      [19]  841 	ld	a,-1 (ix)
   46C0 F5            [11]  842 	push	af
   46C1 33            [ 6]  843 	inc	sp
   46C2 DD 7E FD      [19]  844 	ld	a,-3 (ix)
   46C5 F5            [11]  845 	push	af
   46C6 33            [ 6]  846 	inc	sp
   46C7 DD 7E FC      [19]  847 	ld	a,-4 (ix)
   46CA F5            [11]  848 	push	af
   46CB 33            [ 6]  849 	inc	sp
   46CC DD 7E FB      [19]  850 	ld	a,-5 (ix)
   46CF F5            [11]  851 	push	af
   46D0 33            [ 6]  852 	inc	sp
   46D1 CD 7D 52      [17]  853 	call	_drawTile
   46D4 F1            [10]  854 	pop	af
   46D5 F1            [10]  855 	pop	af
                            856 ;src/game/game.c:169: yCursor-=1;
   46D6 DD 6E F6      [19]  857 	ld	l,-10 (ix)
   46D9 DD 66 F7      [19]  858 	ld	h,-9 (ix)
   46DC 2B            [ 6]  859 	dec	hl
   46DD DD 75 F6      [19]  860 	ld	-10 (ix),l
   46E0 DD 74 F7      [19]  861 	ld	-9 (ix),h
                            862 ;src/game/game.c:172: if(yCursor<0)
   46E3 DD CB F7 7E   [20]  863 	bit	7, -9 (ix)
   46E7 28 35         [12]  864 	jr	Z,00210$
                            865 ;src/game/game.c:174: yCursor=0;
   46E9 DD 36 F6 00   [19]  866 	ld	-10 (ix),#0x00
   46ED DD 36 F7 00   [19]  867 	ld	-9 (ix),#0x00
                            868 ;src/game/game.c:177: if(uly>0)
   46F1 AF            [ 4]  869 	xor	a, a
   46F2 DD BE F0      [19]  870 	cp	a, -16 (ix)
   46F5 DD 9E F1      [19]  871 	sbc	a, -15 (ix)
   46F8 E2 FD 46      [10]  872 	jp	PO, 00387$
   46FB EE 80         [ 7]  873 	xor	a, #0x80
   46FD                     874 00387$:
   46FD F2 1E 47      [10]  875 	jp	P,00210$
                            876 ;src/game/game.c:179: uly-=1;
   4700 DD 6E F0      [19]  877 	ld	l,-16 (ix)
   4703 DD 66 F1      [19]  878 	ld	h,-15 (ix)
   4706 2B            [ 6]  879 	dec	hl
   4707 DD 75 F0      [19]  880 	ld	-16 (ix),l
   470A DD 74 F1      [19]  881 	ld	-15 (ix),h
                            882 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   470D DD 7E F0      [19]  883 	ld	a,-16 (ix)
                            884 ;src/game/game.c:180: drawWorld(ulx, uly);
   4710 DD 77 FC      [19]  885 	ld	-4 (ix), a
   4713 F5            [11]  886 	push	af
   4714 33            [ 6]  887 	inc	sp
   4715 DD 7E FB      [19]  888 	ld	a,-5 (ix)
   4718 F5            [11]  889 	push	af
   4719 33            [ 6]  890 	inc	sp
   471A CD 3E 55      [17]  891 	call	_drawWorld
   471D F1            [10]  892 	pop	af
                            893 ;src/game/game.c:185: for(i=0; i<5000; i++) {}
   471E                     894 00210$:
   471E DD 36 F9 88   [19]  895 	ld	-7 (ix),#0x88
   4722 DD 36 FA 13   [19]  896 	ld	-6 (ix),#0x13
   4726                     897 00186$:
   4726 DD 6E F9      [19]  898 	ld	l,-7 (ix)
   4729 DD 66 FA      [19]  899 	ld	h,-6 (ix)
   472C 2B            [ 6]  900 	dec	hl
   472D DD 75 F9      [19]  901 	ld	-7 (ix),l
   4730 DD 74 FA      [19]  902 	ld	-6 (ix), h
   4733 7C            [ 4]  903 	ld	a, h
   4734 DD B6 F9      [19]  904 	or	a,-7 (ix)
   4737 20 ED         [12]  905 	jr	NZ,00186$
   4739 C3 9A 4A      [10]  906 	jp	00180$
   473C                     907 00179$:
                            908 ;src/game/game.c:188: else if ( cpct_isKeyPressed(Key_CursorDown) )
   473C 21 00 04      [10]  909 	ld	hl,#0x0400
   473F CD EA 62      [17]  910 	call	_cpct_isKeyPressed
   4742 7D            [ 4]  911 	ld	a,l
   4743 B7            [ 4]  912 	or	a, a
   4744 CA C8 47      [10]  913 	jp	Z,00176$
                            914 ;src/game/game.c:190: drawTile(ulx, uly, xCursor, yCursor);
   4747 DD 7E FF      [19]  915 	ld	a,-1 (ix)
   474A F5            [11]  916 	push	af
   474B 33            [ 6]  917 	inc	sp
   474C DD 7E FD      [19]  918 	ld	a,-3 (ix)
   474F F5            [11]  919 	push	af
   4750 33            [ 6]  920 	inc	sp
   4751 DD 7E FC      [19]  921 	ld	a,-4 (ix)
   4754 F5            [11]  922 	push	af
   4755 33            [ 6]  923 	inc	sp
   4756 DD 7E FB      [19]  924 	ld	a,-5 (ix)
   4759 F5            [11]  925 	push	af
   475A 33            [ 6]  926 	inc	sp
   475B CD 7D 52      [17]  927 	call	_drawTile
   475E F1            [10]  928 	pop	af
   475F F1            [10]  929 	pop	af
                            930 ;src/game/game.c:191: yCursor+=1;
   4760 DD 34 F6      [23]  931 	inc	-10 (ix)
   4763 20 03         [12]  932 	jr	NZ,00388$
   4765 DD 34 F7      [23]  933 	inc	-9 (ix)
   4768                     934 00388$:
                            935 ;src/game/game.c:192: if(yCursor>NBTILE_H-1)
   4768 3E 0B         [ 7]  936 	ld	a,#0x0B
   476A DD BE F6      [19]  937 	cp	a, -10 (ix)
   476D 3E 00         [ 7]  938 	ld	a,#0x00
   476F DD 9E F7      [19]  939 	sbc	a, -9 (ix)
   4772 E2 77 47      [10]  940 	jp	PO, 00389$
   4775 EE 80         [ 7]  941 	xor	a, #0x80
   4777                     942 00389$:
   4777 F2 AA 47      [10]  943 	jp	P,00215$
                            944 ;src/game/game.c:194: yCursor=NBTILE_H-1;
   477A DD 36 F6 0B   [19]  945 	ld	-10 (ix),#0x0B
   477E DD 36 F7 00   [19]  946 	ld	-9 (ix),#0x00
                            947 ;src/game/game.c:195: if(uly<HEIGHT-NBTILE_H)
   4782 DD 7E F0      [19]  948 	ld	a,-16 (ix)
   4785 D6 24         [ 7]  949 	sub	a, #0x24
   4787 DD 7E F1      [19]  950 	ld	a,-15 (ix)
   478A 17            [ 4]  951 	rla
   478B 3F            [ 4]  952 	ccf
   478C 1F            [ 4]  953 	rra
   478D DE 80         [ 7]  954 	sbc	a, #0x80
   478F 30 19         [12]  955 	jr	NC,00215$
                            956 ;src/game/game.c:197: uly+=1;
   4791 DD 34 F0      [23]  957 	inc	-16 (ix)
   4794 20 03         [12]  958 	jr	NZ,00390$
   4796 DD 34 F1      [23]  959 	inc	-15 (ix)
   4799                     960 00390$:
                            961 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   4799 DD 7E F0      [19]  962 	ld	a,-16 (ix)
                            963 ;src/game/game.c:198: drawWorld(ulx, uly);
   479C DD 77 FC      [19]  964 	ld	-4 (ix), a
   479F F5            [11]  965 	push	af
   47A0 33            [ 6]  966 	inc	sp
   47A1 DD 7E FB      [19]  967 	ld	a,-5 (ix)
   47A4 F5            [11]  968 	push	af
   47A5 33            [ 6]  969 	inc	sp
   47A6 CD 3E 55      [17]  970 	call	_drawWorld
   47A9 F1            [10]  971 	pop	af
                            972 ;src/game/game.c:203: for(i=0; i<5000; i++) {}
   47AA                     973 00215$:
   47AA DD 36 F9 88   [19]  974 	ld	-7 (ix),#0x88
   47AE DD 36 FA 13   [19]  975 	ld	-6 (ix),#0x13
   47B2                     976 00189$:
   47B2 DD 6E F9      [19]  977 	ld	l,-7 (ix)
   47B5 DD 66 FA      [19]  978 	ld	h,-6 (ix)
   47B8 2B            [ 6]  979 	dec	hl
   47B9 DD 75 F9      [19]  980 	ld	-7 (ix),l
   47BC DD 74 FA      [19]  981 	ld	-6 (ix), h
   47BF 7C            [ 4]  982 	ld	a, h
   47C0 DD B6 F9      [19]  983 	or	a,-7 (ix)
   47C3 20 ED         [12]  984 	jr	NZ,00189$
   47C5 C3 9A 4A      [10]  985 	jp	00180$
   47C8                     986 00176$:
                            987 ;src/game/game.c:206: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   47C8 21 01 01      [10]  988 	ld	hl,#0x0101
   47CB CD EA 62      [17]  989 	call	_cpct_isKeyPressed
   47CE 7D            [ 4]  990 	ld	a,l
   47CF B7            [ 4]  991 	or	a, a
   47D0 28 6F         [12]  992 	jr	Z,00173$
                            993 ;src/game/game.c:208: drawTile(ulx, uly, xCursor, yCursor);
   47D2 DD 7E FF      [19]  994 	ld	a,-1 (ix)
   47D5 F5            [11]  995 	push	af
   47D6 33            [ 6]  996 	inc	sp
   47D7 DD 7E FD      [19]  997 	ld	a,-3 (ix)
   47DA F5            [11]  998 	push	af
   47DB 33            [ 6]  999 	inc	sp
   47DC DD 7E FC      [19] 1000 	ld	a,-4 (ix)
   47DF F5            [11] 1001 	push	af
   47E0 33            [ 6] 1002 	inc	sp
   47E1 DD 7E FB      [19] 1003 	ld	a,-5 (ix)
   47E4 F5            [11] 1004 	push	af
   47E5 33            [ 6] 1005 	inc	sp
   47E6 CD 7D 52      [17] 1006 	call	_drawTile
   47E9 F1            [10] 1007 	pop	af
   47EA F1            [10] 1008 	pop	af
                           1009 ;src/game/game.c:209: xCursor-=1;
   47EB DD 6E F2      [19] 1010 	ld	l,-14 (ix)
   47EE DD 66 F3      [19] 1011 	ld	h,-13 (ix)
   47F1 2B            [ 6] 1012 	dec	hl
   47F2 DD 75 F2      [19] 1013 	ld	-14 (ix),l
   47F5 DD 74 F3      [19] 1014 	ld	-13 (ix),h
                           1015 ;src/game/game.c:210: if(xCursor<0)
   47F8 DD CB F3 7E   [20] 1016 	bit	7, -13 (ix)
   47FC 28 38         [12] 1017 	jr	Z,00220$
                           1018 ;src/game/game.c:212: xCursor=0;
   47FE DD 36 F2 00   [19] 1019 	ld	-14 (ix),#0x00
   4802 DD 36 F3 00   [19] 1020 	ld	-13 (ix),#0x00
                           1021 ;src/game/game.c:213: if(ulx>0)
   4806 AF            [ 4] 1022 	xor	a, a
   4807 DD BE F4      [19] 1023 	cp	a, -12 (ix)
   480A DD 9E F5      [19] 1024 	sbc	a, -11 (ix)
   480D E2 12 48      [10] 1025 	jp	PO, 00391$
   4810 EE 80         [ 7] 1026 	xor	a, #0x80
   4812                    1027 00391$:
   4812 F2 36 48      [10] 1028 	jp	P,00220$
                           1029 ;src/game/game.c:215: ulx-=1;
   4815 DD 6E F4      [19] 1030 	ld	l,-12 (ix)
   4818 DD 66 F5      [19] 1031 	ld	h,-11 (ix)
   481B 2B            [ 6] 1032 	dec	hl
   481C DD 75 F4      [19] 1033 	ld	-12 (ix),l
   481F DD 74 F5      [19] 1034 	ld	-11 (ix),h
                           1035 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   4822 DD 7E F4      [19] 1036 	ld	a,-12 (ix)
   4825 DD 77 FB      [19] 1037 	ld	-5 (ix),a
                           1038 ;src/game/game.c:216: drawWorld(ulx, uly);
   4828 DD 7E FC      [19] 1039 	ld	a,-4 (ix)
   482B F5            [11] 1040 	push	af
   482C 33            [ 6] 1041 	inc	sp
   482D DD 7E FB      [19] 1042 	ld	a,-5 (ix)
   4830 F5            [11] 1043 	push	af
   4831 33            [ 6] 1044 	inc	sp
   4832 CD 3E 55      [17] 1045 	call	_drawWorld
   4835 F1            [10] 1046 	pop	af
                           1047 ;src/game/game.c:221: for(i=0; i<14000; i++) {}
   4836                    1048 00220$:
   4836 21 B0 36      [10] 1049 	ld	hl,#0x36B0
   4839                    1050 00192$:
   4839 2B            [ 6] 1051 	dec	hl
   483A 7C            [ 4] 1052 	ld	a,h
   483B B5            [ 4] 1053 	or	a,l
   483C 20 FB         [12] 1054 	jr	NZ,00192$
   483E C3 9A 4A      [10] 1055 	jp	00180$
   4841                    1056 00173$:
                           1057 ;src/game/game.c:224: else if ( cpct_isKeyPressed(Key_CursorRight) )
   4841 21 00 02      [10] 1058 	ld	hl,#0x0200
   4844 CD EA 62      [17] 1059 	call	_cpct_isKeyPressed
   4847 7D            [ 4] 1060 	ld	a,l
   4848 B7            [ 4] 1061 	or	a, a
   4849 28 71         [12] 1062 	jr	Z,00170$
                           1063 ;src/game/game.c:226: drawTile(ulx, uly, xCursor, yCursor);
   484B DD 7E FF      [19] 1064 	ld	a,-1 (ix)
   484E F5            [11] 1065 	push	af
   484F 33            [ 6] 1066 	inc	sp
   4850 DD 7E FD      [19] 1067 	ld	a,-3 (ix)
   4853 F5            [11] 1068 	push	af
   4854 33            [ 6] 1069 	inc	sp
   4855 DD 7E FC      [19] 1070 	ld	a,-4 (ix)
   4858 F5            [11] 1071 	push	af
   4859 33            [ 6] 1072 	inc	sp
   485A DD 7E FB      [19] 1073 	ld	a,-5 (ix)
   485D F5            [11] 1074 	push	af
   485E 33            [ 6] 1075 	inc	sp
   485F CD 7D 52      [17] 1076 	call	_drawTile
   4862 F1            [10] 1077 	pop	af
   4863 F1            [10] 1078 	pop	af
                           1079 ;src/game/game.c:227: xCursor+=1;
   4864 DD 34 F2      [23] 1080 	inc	-14 (ix)
   4867 20 03         [12] 1081 	jr	NZ,00392$
   4869 DD 34 F3      [23] 1082 	inc	-13 (ix)
   486C                    1083 00392$:
                           1084 ;src/game/game.c:228: if(xCursor>NBTILE_W-1)
   486C 3E 13         [ 7] 1085 	ld	a,#0x13
   486E DD BE F2      [19] 1086 	cp	a, -14 (ix)
   4871 3E 00         [ 7] 1087 	ld	a,#0x00
   4873 DD 9E F3      [19] 1088 	sbc	a, -13 (ix)
   4876 E2 7B 48      [10] 1089 	jp	PO, 00393$
   4879 EE 80         [ 7] 1090 	xor	a, #0x80
   487B                    1091 00393$:
   487B F2 B1 48      [10] 1092 	jp	P,00225$
                           1093 ;src/game/game.c:230: xCursor=NBTILE_W-1;
   487E DD 36 F2 13   [19] 1094 	ld	-14 (ix),#0x13
   4882 DD 36 F3 00   [19] 1095 	ld	-13 (ix),#0x00
                           1096 ;src/game/game.c:231: if(ulx<WIDTH-NBTILE_W)
   4886 DD 7E F4      [19] 1097 	ld	a,-12 (ix)
   4889 D6 3C         [ 7] 1098 	sub	a, #0x3C
   488B DD 7E F5      [19] 1099 	ld	a,-11 (ix)
   488E 17            [ 4] 1100 	rla
   488F 3F            [ 4] 1101 	ccf
   4890 1F            [ 4] 1102 	rra
   4891 DE 80         [ 7] 1103 	sbc	a, #0x80
   4893 30 1C         [12] 1104 	jr	NC,00225$
                           1105 ;src/game/game.c:233: ulx+=1;
   4895 DD 34 F4      [23] 1106 	inc	-12 (ix)
   4898 20 03         [12] 1107 	jr	NZ,00394$
   489A DD 34 F5      [23] 1108 	inc	-11 (ix)
   489D                    1109 00394$:
                           1110 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   489D DD 7E F4      [19] 1111 	ld	a,-12 (ix)
   48A0 DD 77 FB      [19] 1112 	ld	-5 (ix),a
                           1113 ;src/game/game.c:234: drawWorld(ulx, uly);
   48A3 DD 7E FC      [19] 1114 	ld	a,-4 (ix)
   48A6 F5            [11] 1115 	push	af
   48A7 33            [ 6] 1116 	inc	sp
   48A8 DD 7E FB      [19] 1117 	ld	a,-5 (ix)
   48AB F5            [11] 1118 	push	af
   48AC 33            [ 6] 1119 	inc	sp
   48AD CD 3E 55      [17] 1120 	call	_drawWorld
   48B0 F1            [10] 1121 	pop	af
                           1122 ;src/game/game.c:239: for(i=0; i<14000; i++) {}
   48B1                    1123 00225$:
   48B1 21 B0 36      [10] 1124 	ld	hl,#0x36B0
   48B4                    1125 00195$:
   48B4 2B            [ 6] 1126 	dec	hl
   48B5 7C            [ 4] 1127 	ld	a,h
   48B6 B5            [ 4] 1128 	or	a,l
   48B7 20 FB         [12] 1129 	jr	NZ,00195$
   48B9 C3 9A 4A      [10] 1130 	jp	00180$
   48BC                    1131 00170$:
                           1132 ;src/game/game.c:243: else if ( cpct_isKeyPressed(Key_Space) )
   48BC 21 05 80      [10] 1133 	ld	hl,#0x8005
   48BF CD EA 62      [17] 1134 	call	_cpct_isKeyPressed
   48C2 7D            [ 4] 1135 	ld	a,l
   48C3 B7            [ 4] 1136 	or	a, a
   48C4 CA 42 49      [10] 1137 	jp	Z,00167$
                           1138 ;src/game/game.c:245: if(CURSOR_MODE==T_SSNS)
   48C7 3A 20 76      [13] 1139 	ld	a,(#_CURSOR_MODE + 0)
   48CA 3D            [ 4] 1140 	dec	a
   48CB 20 07         [12] 1141 	jr	NZ,00143$
                           1142 ;src/game/game.c:246: CURSOR_MODE=T_SSEW;
   48CD 21 20 76      [10] 1143 	ld	hl,#_CURSOR_MODE + 0
   48D0 36 02         [10] 1144 	ld	(hl), #0x02
   48D2 18 63         [12] 1145 	jr	00237$
   48D4                    1146 00143$:
                           1147 ;src/game/game.c:247: else if(CURSOR_MODE==T_SSEW)
   48D4 3A 20 76      [13] 1148 	ld	a,(#_CURSOR_MODE + 0)
   48D7 D6 02         [ 7] 1149 	sub	a, #0x02
   48D9 20 07         [12] 1150 	jr	NZ,00140$
                           1151 ;src/game/game.c:248: CURSOR_MODE=T_SSNS;
   48DB 21 20 76      [10] 1152 	ld	hl,#_CURSOR_MODE + 0
   48DE 36 01         [10] 1153 	ld	(hl), #0x01
   48E0 18 55         [12] 1154 	jr	00237$
   48E2                    1155 00140$:
                           1156 ;src/game/game.c:249: else if(CURSOR_MODE==T_SMNS)
   48E2 3A 20 76      [13] 1157 	ld	a,(#_CURSOR_MODE + 0)
   48E5 D6 03         [ 7] 1158 	sub	a, #0x03
   48E7 20 07         [12] 1159 	jr	NZ,00137$
                           1160 ;src/game/game.c:250: CURSOR_MODE=T_SMEW;
   48E9 21 20 76      [10] 1161 	ld	hl,#_CURSOR_MODE + 0
   48EC 36 04         [10] 1162 	ld	(hl), #0x04
   48EE 18 47         [12] 1163 	jr	00237$
   48F0                    1164 00137$:
                           1165 ;src/game/game.c:251: else if(CURSOR_MODE==T_SMEW)
   48F0 3A 20 76      [13] 1166 	ld	a,(#_CURSOR_MODE + 0)
   48F3 D6 04         [ 7] 1167 	sub	a, #0x04
   48F5 20 07         [12] 1168 	jr	NZ,00134$
                           1169 ;src/game/game.c:252: CURSOR_MODE=T_SMNS;
   48F7 21 20 76      [10] 1170 	ld	hl,#_CURSOR_MODE + 0
   48FA 36 03         [10] 1171 	ld	(hl), #0x03
   48FC 18 39         [12] 1172 	jr	00237$
   48FE                    1173 00134$:
                           1174 ;src/game/game.c:253: else if(CURSOR_MODE==T_SLNS)
   48FE 3A 20 76      [13] 1175 	ld	a,(#_CURSOR_MODE + 0)
   4901 D6 05         [ 7] 1176 	sub	a, #0x05
   4903 20 07         [12] 1177 	jr	NZ,00131$
                           1178 ;src/game/game.c:254: CURSOR_MODE=T_SLEW;
   4905 21 20 76      [10] 1179 	ld	hl,#_CURSOR_MODE + 0
   4908 36 06         [10] 1180 	ld	(hl), #0x06
   490A 18 2B         [12] 1181 	jr	00237$
   490C                    1182 00131$:
                           1183 ;src/game/game.c:255: else if(CURSOR_MODE==T_SLEW)
   490C 3A 20 76      [13] 1184 	ld	a,(#_CURSOR_MODE + 0)
   490F D6 06         [ 7] 1185 	sub	a, #0x06
   4911 20 07         [12] 1186 	jr	NZ,00128$
                           1187 ;src/game/game.c:256: CURSOR_MODE=T_SLNS;
   4913 21 20 76      [10] 1188 	ld	hl,#_CURSOR_MODE + 0
   4916 36 05         [10] 1189 	ld	(hl), #0x05
   4918 18 1D         [12] 1190 	jr	00237$
   491A                    1191 00128$:
                           1192 ;src/game/game.c:257: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   491A 3A 20 76      [13] 1193 	ld	a,(#_CURSOR_MODE + 0)
   491D FE 07         [ 7] 1194 	cp	a,#0x07
   491F 38 0A         [12] 1195 	jr	C,00124$
   4921 D6 10         [ 7] 1196 	sub	a, #0x10
   4923 30 06         [12] 1197 	jr	NC,00124$
                           1198 ;src/game/game.c:258: CURSOR_MODE+=1;
   4925 21 20 76      [10] 1199 	ld	hl, #_CURSOR_MODE+0
   4928 34            [11] 1200 	inc	(hl)
   4929 18 0C         [12] 1201 	jr	00237$
   492B                    1202 00124$:
                           1203 ;src/game/game.c:259: else if(CURSOR_MODE==T_RNSW)
   492B 3A 20 76      [13] 1204 	ld	a,(#_CURSOR_MODE + 0)
   492E D6 10         [ 7] 1205 	sub	a, #0x10
   4930 20 05         [12] 1206 	jr	NZ,00237$
                           1207 ;src/game/game.c:260: CURSOR_MODE=T_REW;
   4932 21 20 76      [10] 1208 	ld	hl,#_CURSOR_MODE + 0
   4935 36 07         [10] 1209 	ld	(hl), #0x07
                           1210 ;src/game/game.c:262: for(i=0; i<14000; i++) {}
   4937                    1211 00237$:
   4937 21 B0 36      [10] 1212 	ld	hl,#0x36B0
   493A                    1213 00198$:
   493A 2B            [ 6] 1214 	dec	hl
   493B 7C            [ 4] 1215 	ld	a,h
   493C B5            [ 4] 1216 	or	a,l
   493D 20 FB         [12] 1217 	jr	NZ,00198$
   493F C3 9A 4A      [10] 1218 	jp	00180$
   4942                    1219 00167$:
                           1220 ;src/game/game.c:265: else if ( cpct_isKeyPressed(Key_Esc) )
   4942 21 08 04      [10] 1221 	ld	hl,#0x0408
   4945 CD EA 62      [17] 1222 	call	_cpct_isKeyPressed
   4948 7D            [ 4] 1223 	ld	a,l
   4949 B7            [ 4] 1224 	or	a, a
   494A CA E1 49      [10] 1225 	jp	Z,00164$
                           1226 ;src/game/game.c:268: if(CURSOR_MODE==NONE)
   494D 3A 20 76      [13] 1227 	ld	a,(#_CURSOR_MODE + 0)
   4950 B7            [ 4] 1228 	or	a, a
   4951 20 62         [12] 1229 	jr	NZ,00150$
                           1230 ;src/game/game.c:271: const char *txtWindowQuit[] = { 
   4953 21 00 00      [10] 1231 	ld	hl,#0x0000
   4956 39            [11] 1232 	add	hl,sp
   4957 5D            [ 4] 1233 	ld	e,l
   4958 54            [ 4] 1234 	ld	d,h
   4959 36 C6         [10] 1235 	ld	(hl),#<(___str_32)
   495B 23            [ 6] 1236 	inc	hl
   495C 36 4A         [10] 1237 	ld	(hl),#>(___str_32)
   495E 6B            [ 4] 1238 	ld	l, e
   495F 62            [ 4] 1239 	ld	h, d
   4960 23            [ 6] 1240 	inc	hl
   4961 23            [ 6] 1241 	inc	hl
   4962 36 D4         [10] 1242 	ld	(hl),#<(___str_33)
   4964 23            [ 6] 1243 	inc	hl
   4965 36 4A         [10] 1244 	ld	(hl),#>(___str_33)
   4967 21 04 00      [10] 1245 	ld	hl,#0x0004
   496A 19            [11] 1246 	add	hl,de
   496B 36 D5         [10] 1247 	ld	(hl),#<(___str_34)
   496D 23            [ 6] 1248 	inc	hl
   496E 36 4A         [10] 1249 	ld	(hl),#>(___str_34)
                           1250 ;src/game/game.c:277: putM2();
   4970 D5            [11] 1251 	push	de
   4971 CD 9E 55      [17] 1252 	call	_putM2
   4974 D1            [10] 1253 	pop	de
                           1254 ;src/game/game.c:278: if(	drawWindow(txtWindowQuit,3,1) == 1)
   4975 21 03 01      [10] 1255 	ld	hl,#0x0103
   4978 E5            [11] 1256 	push	hl
   4979 D5            [11] 1257 	push	de
   497A CD A2 5A      [17] 1258 	call	_drawWindow
   497D F1            [10] 1259 	pop	af
   497E F1            [10] 1260 	pop	af
   497F 2D            [ 4] 1261 	dec	l
   4980 20 06         [12] 1262 	jr	NZ,00147$
                           1263 ;src/game/game.c:279: exit=1;
   4982 DD 36 F8 01   [19] 1264 	ld	-8 (ix),#0x01
   4986 18 4E         [12] 1265 	jr	00242$
   4988                    1266 00147$:
                           1267 ;src/game/game.c:282: putM1();
   4988 CD 8A 55      [17] 1268 	call	_putM1
                           1269 ;src/game/game.c:283: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   498B 21 00 00      [10] 1270 	ld	hl,#0x0000
   498E E5            [11] 1271 	push	hl
   498F 2E 00         [ 7] 1272 	ld	l, #0x00
   4991 E5            [11] 1273 	push	hl
   4992 CD 26 65      [17] 1274 	call	_cpct_px2byteM1
   4995 F1            [10] 1275 	pop	af
   4996 F1            [10] 1276 	pop	af
   4997 65            [ 4] 1277 	ld	h,l
   4998 01 00 40      [10] 1278 	ld	bc,#0x4000
   499B C5            [11] 1279 	push	bc
   499C E5            [11] 1280 	push	hl
   499D 33            [ 6] 1281 	inc	sp
   499E 21 00 C0      [10] 1282 	ld	hl,#0xC000
   49A1 E5            [11] 1283 	push	hl
   49A2 CD 18 65      [17] 1284 	call	_cpct_memset
                           1285 ;src/game/game.c:284: drawWorld(ulx, uly);
   49A5 DD 7E FC      [19] 1286 	ld	a,-4 (ix)
   49A8 F5            [11] 1287 	push	af
   49A9 33            [ 6] 1288 	inc	sp
   49AA DD 7E FB      [19] 1289 	ld	a,-5 (ix)
   49AD F5            [11] 1290 	push	af
   49AE 33            [ 6] 1291 	inc	sp
   49AF CD 3E 55      [17] 1292 	call	_drawWorld
   49B2 F1            [10] 1293 	pop	af
   49B3 18 21         [12] 1294 	jr	00242$
   49B5                    1295 00150$:
                           1296 ;src/game/game.c:289: CURSOR_MODE=NONE;
   49B5 FD 21 20 76   [14] 1297 	ld	iy,#_CURSOR_MODE
   49B9 FD 36 00 00   [19] 1298 	ld	0 (iy),#0x00
                           1299 ;src/game/game.c:290: drawTile(ulx, uly, xCursor, yCursor);
   49BD DD 7E FF      [19] 1300 	ld	a,-1 (ix)
   49C0 F5            [11] 1301 	push	af
   49C1 33            [ 6] 1302 	inc	sp
   49C2 DD 7E FD      [19] 1303 	ld	a,-3 (ix)
   49C5 F5            [11] 1304 	push	af
   49C6 33            [ 6] 1305 	inc	sp
   49C7 DD 7E FC      [19] 1306 	ld	a,-4 (ix)
   49CA F5            [11] 1307 	push	af
   49CB 33            [ 6] 1308 	inc	sp
   49CC DD 7E FB      [19] 1309 	ld	a,-5 (ix)
   49CF F5            [11] 1310 	push	af
   49D0 33            [ 6] 1311 	inc	sp
   49D1 CD 7D 52      [17] 1312 	call	_drawTile
   49D4 F1            [10] 1313 	pop	af
   49D5 F1            [10] 1314 	pop	af
                           1315 ;src/game/game.c:294: for(i=0; i<14000; i++) {}
   49D6                    1316 00242$:
   49D6 01 B0 36      [10] 1317 	ld	bc,#0x36B0
   49D9                    1318 00201$:
   49D9 0B            [ 6] 1319 	dec	bc
   49DA 78            [ 4] 1320 	ld	a,b
   49DB B1            [ 4] 1321 	or	a,c
   49DC 20 FB         [12] 1322 	jr	NZ,00201$
   49DE C3 9A 4A      [10] 1323 	jp	00180$
   49E1                    1324 00164$:
                           1325 ;src/game/game.c:297: else if ( cpct_isKeyPressed(Key_Return) )
   49E1 21 02 04      [10] 1326 	ld	hl,#0x0402
   49E4 CD EA 62      [17] 1327 	call	_cpct_isKeyPressed
   49E7 7D            [ 4] 1328 	ld	a,l
   49E8 B7            [ 4] 1329 	or	a, a
   49E9 CA 9A 4A      [10] 1330 	jp	Z,00180$
                           1331 ;src/game/game.c:300: if(CURSOR_MODE==NONE)
   49EC 3A 20 76      [13] 1332 	ld	a,(#_CURSOR_MODE + 0)
   49EF B7            [ 4] 1333 	or	a, a
   49F0 20 42         [12] 1334 	jr	NZ,00158$
                           1335 ;src/game/game.c:302: menuTile(ulx+xCursor, uly+yCursor);
   49F2 DD 7E F0      [19] 1336 	ld	a, -16 (ix)
   49F5 DD 6E F6      [19] 1337 	ld	l, -10 (ix)
   49F8 85            [ 4] 1338 	add	a, l
   49F9 67            [ 4] 1339 	ld	h,a
   49FA DD 6E F4      [19] 1340 	ld	l,-12 (ix)
   49FD DD 56 F2      [19] 1341 	ld	d,-14 (ix)
   4A00 7D            [ 4] 1342 	ld	a,l
   4A01 82            [ 4] 1343 	add	a, d
   4A02 E5            [11] 1344 	push	hl
   4A03 33            [ 6] 1345 	inc	sp
   4A04 F5            [11] 1346 	push	af
   4A05 33            [ 6] 1347 	inc	sp
   4A06 CD 63 44      [17] 1348 	call	_menuTile
   4A09 F1            [10] 1349 	pop	af
                           1350 ;src/game/game.c:303: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   4A0A 21 00 00      [10] 1351 	ld	hl,#0x0000
   4A0D E5            [11] 1352 	push	hl
   4A0E 2E 00         [ 7] 1353 	ld	l, #0x00
   4A10 E5            [11] 1354 	push	hl
   4A11 CD 26 65      [17] 1355 	call	_cpct_px2byteM1
   4A14 F1            [10] 1356 	pop	af
   4A15 F1            [10] 1357 	pop	af
   4A16 65            [ 4] 1358 	ld	h,l
   4A17 01 00 40      [10] 1359 	ld	bc,#0x4000
   4A1A C5            [11] 1360 	push	bc
   4A1B E5            [11] 1361 	push	hl
   4A1C 33            [ 6] 1362 	inc	sp
   4A1D 21 00 C0      [10] 1363 	ld	hl,#0xC000
   4A20 E5            [11] 1364 	push	hl
   4A21 CD 18 65      [17] 1365 	call	_cpct_memset
                           1366 ;src/game/game.c:304: drawWorld(ulx, uly);
   4A24 DD 7E FC      [19] 1367 	ld	a,-4 (ix)
   4A27 F5            [11] 1368 	push	af
   4A28 33            [ 6] 1369 	inc	sp
   4A29 DD 7E FB      [19] 1370 	ld	a,-5 (ix)
   4A2C F5            [11] 1371 	push	af
   4A2D 33            [ 6] 1372 	inc	sp
   4A2E CD 3E 55      [17] 1373 	call	_drawWorld
   4A31 F1            [10] 1374 	pop	af
   4A32 18 4B         [12] 1375 	jr	00248$
   4A34                    1376 00158$:
                           1377 ;src/game/game.c:307: else if(CURSOR_MODE>=T_SSNS)
   4A34 3A 20 76      [13] 1378 	ld	a,(#_CURSOR_MODE + 0)
   4A37 D6 01         [ 7] 1379 	sub	a, #0x01
   4A39 38 44         [12] 1380 	jr	C,00248$
                           1381 ;src/game/game.c:309: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   4A3B DD 7E F4      [19] 1382 	ld	a,-12 (ix)
   4A3E DD 86 F2      [19] 1383 	add	a, -14 (ix)
   4A41 5F            [ 4] 1384 	ld	e,a
   4A42 DD 7E F5      [19] 1385 	ld	a,-11 (ix)
   4A45 DD 8E F3      [19] 1386 	adc	a, -13 (ix)
   4A48 57            [ 4] 1387 	ld	d,a
   4A49 DD 7E F0      [19] 1388 	ld	a,-16 (ix)
   4A4C DD 86 F6      [19] 1389 	add	a, -10 (ix)
   4A4F 6F            [ 4] 1390 	ld	l,a
   4A50 DD 7E F1      [19] 1391 	ld	a,-15 (ix)
   4A53 DD 8E F7      [19] 1392 	adc	a, -9 (ix)
   4A56 67            [ 4] 1393 	ld	h,a
   4A57 4D            [ 4] 1394 	ld	c, l
   4A58 44            [ 4] 1395 	ld	b, h
   4A59 29            [11] 1396 	add	hl, hl
   4A5A 29            [11] 1397 	add	hl, hl
   4A5B 09            [11] 1398 	add	hl, bc
   4A5C 29            [11] 1399 	add	hl, hl
   4A5D 29            [11] 1400 	add	hl, hl
   4A5E 29            [11] 1401 	add	hl, hl
   4A5F 29            [11] 1402 	add	hl, hl
   4A60 19            [11] 1403 	add	hl,de
   4A61 3E 20         [ 7] 1404 	ld	a,#<(_p_world)
   4A63 85            [ 4] 1405 	add	a, l
   4A64 5F            [ 4] 1406 	ld	e,a
   4A65 3E 67         [ 7] 1407 	ld	a,#>(_p_world)
   4A67 8C            [ 4] 1408 	adc	a, h
   4A68 57            [ 4] 1409 	ld	d,a
   4A69 3A 20 76      [13] 1410 	ld	a,(#_CURSOR_MODE + 0)
   4A6C C6 09         [ 7] 1411 	add	a, #0x09
   4A6E 12            [ 7] 1412 	ld	(de),a
                           1413 ;src/game/game.c:312: if(CURSOR_MODE<=T_SLEW)
   4A6F 3E 06         [ 7] 1414 	ld	a,#0x06
   4A71 FD 21 20 76   [14] 1415 	ld	iy,#_CURSOR_MODE
   4A75 FD 96 00      [19] 1416 	sub	a, 0 (iy)
   4A78 38 05         [12] 1417 	jr	C,00248$
                           1418 ;src/game/game.c:313: CURSOR_MODE=NONE;
   4A7A 21 20 76      [10] 1419 	ld	hl,#_CURSOR_MODE + 0
   4A7D 36 00         [10] 1420 	ld	(hl), #0x00
                           1421 ;src/game/game.c:317: for(i=0; i<14000; i++) {}
   4A7F                    1422 00248$:
   4A7F DD 36 F9 B0   [19] 1423 	ld	-7 (ix),#0xB0
   4A83 DD 36 FA 36   [19] 1424 	ld	-6 (ix),#0x36
   4A87                    1425 00204$:
   4A87 DD 6E F9      [19] 1426 	ld	l,-7 (ix)
   4A8A DD 66 FA      [19] 1427 	ld	h,-6 (ix)
   4A8D 2B            [ 6] 1428 	dec	hl
   4A8E DD 75 F9      [19] 1429 	ld	-7 (ix),l
   4A91 DD 74 FA      [19] 1430 	ld	-6 (ix), h
   4A94 7C            [ 4] 1431 	ld	a, h
   4A95 DD B6 F9      [19] 1432 	or	a,-7 (ix)
   4A98 20 ED         [12] 1433 	jr	NZ,00204$
   4A9A                    1434 00180$:
                           1435 ;src/game/game.c:321: drawCursor(xCursor, yCursor, 0);
   4A9A DD 56 F6      [19] 1436 	ld	d,-10 (ix)
   4A9D DD 46 F2      [19] 1437 	ld	b,-14 (ix)
   4AA0 AF            [ 4] 1438 	xor	a, a
   4AA1 F5            [11] 1439 	push	af
   4AA2 33            [ 6] 1440 	inc	sp
   4AA3 D5            [11] 1441 	push	de
   4AA4 33            [ 6] 1442 	inc	sp
   4AA5 C5            [11] 1443 	push	bc
   4AA6 33            [ 6] 1444 	inc	sp
   4AA7 CD 0F 4B      [17] 1445 	call	_drawCursor
   4AAA F1            [10] 1446 	pop	af
   4AAB 33            [ 6] 1447 	inc	sp
                           1448 ;src/game/game.c:322: drawScrolls(ulx, uly);
   4AAC DD 7E FC      [19] 1449 	ld	a,-4 (ix)
   4AAF F5            [11] 1450 	push	af
   4AB0 33            [ 6] 1451 	inc	sp
   4AB1 DD 7E FB      [19] 1452 	ld	a,-5 (ix)
   4AB4 F5            [11] 1453 	push	af
   4AB5 33            [ 6] 1454 	inc	sp
   4AB6 CD A5 54      [17] 1455 	call	_drawScrolls
   4AB9 F1            [10] 1456 	pop	af
                           1457 ;src/game/game.c:324: while(!exit);
   4ABA DD 7E F8      [19] 1458 	ld	a,-8 (ix)
   4ABD B7            [ 4] 1459 	or	a, a
   4ABE CA 92 46      [10] 1460 	jp	Z,00181$
   4AC1 DD F9         [10] 1461 	ld	sp, ix
   4AC3 DD E1         [14] 1462 	pop	ix
   4AC5 C9            [10] 1463 	ret
   4AC6                    1464 ___str_32:
   4AC6 52 65 61 6C 6C 79  1465 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   4AD3 00                 1466 	.db 0x00
   4AD4                    1467 ___str_33:
   4AD4 00                 1468 	.db 0x00
   4AD5                    1469 ___str_34:
   4AD5 50 72 65 73 73 20  1470 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   4AFA 00                 1471 	.db 0x00
   4AFB                    1472 ___str_35:
   4AFB 47 65 6E 65 72 61  1473 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   4B0E 00                 1474 	.db 0x00
                           1475 	.area _CODE
                           1476 	.area _INITIALIZER
                           1477 	.area _CABS (ABS)
