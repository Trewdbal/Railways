                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 17:21:40 2016
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
   40F2                      67 _windowInfoTile::
   40F2 DD E5         [15]   68 	push	ix
   40F4 DD 21 00 00   [14]   69 	ld	ix,#0
   40F8 DD 39         [15]   70 	add	ix,sp
   40FA 21 F8 FF      [10]   71 	ld	hl,#-8
   40FD 39            [11]   72 	add	hl,sp
   40FE F9            [ 6]   73 	ld	sp,hl
                             74 ;src/game/game.c:7: switch(p_world[y*WIDTH+x])
   40FF DD 4E 05      [19]   75 	ld	c,5 (ix)
   4102 06 00         [ 7]   76 	ld	b,#0x00
   4104 69            [ 4]   77 	ld	l, c
   4105 60            [ 4]   78 	ld	h, b
   4106 29            [11]   79 	add	hl, hl
   4107 29            [11]   80 	add	hl, hl
   4108 09            [11]   81 	add	hl, bc
   4109 29            [11]   82 	add	hl, hl
   410A 29            [11]   83 	add	hl, hl
   410B 29            [11]   84 	add	hl, hl
   410C 29            [11]   85 	add	hl, hl
   410D DD 5E 04      [19]   86 	ld	e,4 (ix)
   4110 16 00         [ 7]   87 	ld	d,#0x00
   4112 19            [11]   88 	add	hl,de
   4113 11 8E 6B      [10]   89 	ld	de,#_p_world
   4116 19            [11]   90 	add	hl,de
   4117 4E            [ 7]   91 	ld	c,(hl)
   4118 3E 09         [ 7]   92 	ld	a,#0x09
   411A 91            [ 4]   93 	sub	a, c
   411B DA 4C 42      [10]   94 	jp	C,00111$
   411E 59            [ 4]   95 	ld	e,c
   411F 16 00         [ 7]   96 	ld	d,#0x00
   4121 21 28 41      [10]   97 	ld	hl,#00119$
   4124 19            [11]   98 	add	hl,de
   4125 19            [11]   99 	add	hl,de
   4126 19            [11]  100 	add	hl,de
   4127 E9            [ 4]  101 	jp	(hl)
   4128                     102 00119$:
   4128 C3 46 41      [10]  103 	jp	00101$
   412B C3 46 41      [10]  104 	jp	00102$
   412E C3 72 41      [10]  105 	jp	00103$
   4131 C3 72 41      [10]  106 	jp	00104$
   4134 C3 72 41      [10]  107 	jp	00105$
   4137 C3 9E 41      [10]  108 	jp	00106$
   413A C3 9E 41      [10]  109 	jp	00107$
   413D C3 CA 41      [10]  110 	jp	00108$
   4140 C3 F6 41      [10]  111 	jp	00109$
   4143 C3 21 42      [10]  112 	jp	00110$
                            113 ;src/game/game.c:9: case GRASS1:
   4146                     114 00101$:
                            115 ;src/game/game.c:10: case GRASS2:
   4146                     116 00102$:
                            117 ;src/game/game.c:11: txtWindowInfoTile[0] = "Grassland";
   4146 21 00 00      [10]  118 	ld	hl,#0x0000
   4149 39            [11]  119 	add	hl,sp
   414A 5D            [ 4]  120 	ld	e,l
   414B 54            [ 4]  121 	ld	d,h
   414C 36 87         [10]  122 	ld	(hl),#<(___str_0)
   414E 23            [ 6]  123 	inc	hl
   414F 36 42         [10]  124 	ld	(hl),#>(___str_0)
                            125 ;src/game/game.c:12: txtWindowInfoTile[1] = "";
   4151 6B            [ 4]  126 	ld	l, e
   4152 62            [ 4]  127 	ld	h, d
   4153 23            [ 6]  128 	inc	hl
   4154 23            [ 6]  129 	inc	hl
   4155 01 91 42      [10]  130 	ld	bc,#___str_1+0
   4158 71            [ 7]  131 	ld	(hl),c
   4159 23            [ 6]  132 	inc	hl
   415A 70            [ 7]  133 	ld	(hl),b
                            134 ;src/game/game.c:13: txtWindowInfoTile[2] = "Production: nothing";
   415B 21 04 00      [10]  135 	ld	hl,#0x0004
   415E 19            [11]  136 	add	hl,de
   415F 01 92 42      [10]  137 	ld	bc,#___str_2+0
   4162 71            [ 7]  138 	ld	(hl),c
   4163 23            [ 6]  139 	inc	hl
   4164 70            [ 7]  140 	ld	(hl),b
                            141 ;src/game/game.c:14: txtWindowInfoTile[3] = "Demand: nothing";
   4165 21 06 00      [10]  142 	ld	hl,#0x0006
   4168 19            [11]  143 	add	hl,de
   4169 11 A6 42      [10]  144 	ld	de,#___str_3+0
   416C 73            [ 7]  145 	ld	(hl),e
   416D 23            [ 6]  146 	inc	hl
   416E 72            [ 7]  147 	ld	(hl),d
                            148 ;src/game/game.c:15: break;
   416F C3 75 42      [10]  149 	jp	00112$
                            150 ;src/game/game.c:16: case DWELLINGS1:
   4172                     151 00103$:
                            152 ;src/game/game.c:17: case DWELLINGS2:
   4172                     153 00104$:
                            154 ;src/game/game.c:18: case DWELLINGS3:
   4172                     155 00105$:
                            156 ;src/game/game.c:19: txtWindowInfoTile[0] = "City";
   4172 21 00 00      [10]  157 	ld	hl,#0x0000
   4175 39            [11]  158 	add	hl,sp
   4176 5D            [ 4]  159 	ld	e,l
   4177 54            [ 4]  160 	ld	d,h
   4178 36 B6         [10]  161 	ld	(hl),#<(___str_4)
   417A 23            [ 6]  162 	inc	hl
   417B 36 42         [10]  163 	ld	(hl),#>(___str_4)
                            164 ;src/game/game.c:20: txtWindowInfoTile[1] = "";
   417D 6B            [ 4]  165 	ld	l, e
   417E 62            [ 4]  166 	ld	h, d
   417F 23            [ 6]  167 	inc	hl
   4180 23            [ 6]  168 	inc	hl
   4181 01 91 42      [10]  169 	ld	bc,#___str_1+0
   4184 71            [ 7]  170 	ld	(hl),c
   4185 23            [ 6]  171 	inc	hl
   4186 70            [ 7]  172 	ld	(hl),b
                            173 ;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
   4187 21 04 00      [10]  174 	ld	hl,#0x0004
   418A 19            [11]  175 	add	hl,de
   418B 01 BB 42      [10]  176 	ld	bc,#___str_5+0
   418E 71            [ 7]  177 	ld	(hl),c
   418F 23            [ 6]  178 	inc	hl
   4190 70            [ 7]  179 	ld	(hl),b
                            180 ;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   4191 21 06 00      [10]  181 	ld	hl,#0x0006
   4194 19            [11]  182 	add	hl,de
   4195 11 D8 42      [10]  183 	ld	de,#___str_6+0
   4198 73            [ 7]  184 	ld	(hl),e
   4199 23            [ 6]  185 	inc	hl
   419A 72            [ 7]  186 	ld	(hl),d
                            187 ;src/game/game.c:23: break;
   419B C3 75 42      [10]  188 	jp	00112$
                            189 ;src/game/game.c:24: case FARM1:
   419E                     190 00106$:
                            191 ;src/game/game.c:25: case FARM2:
   419E                     192 00107$:
                            193 ;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
   419E 21 00 00      [10]  194 	ld	hl,#0x0000
   41A1 39            [11]  195 	add	hl,sp
   41A2 5D            [ 4]  196 	ld	e,l
   41A3 54            [ 4]  197 	ld	d,h
   41A4 36 FD         [10]  198 	ld	(hl),#<(___str_7)
   41A6 23            [ 6]  199 	inc	hl
   41A7 36 42         [10]  200 	ld	(hl),#>(___str_7)
                            201 ;src/game/game.c:27: txtWindowInfoTile[1] = "";
   41A9 6B            [ 4]  202 	ld	l, e
   41AA 62            [ 4]  203 	ld	h, d
   41AB 23            [ 6]  204 	inc	hl
   41AC 23            [ 6]  205 	inc	hl
   41AD 01 91 42      [10]  206 	ld	bc,#___str_1+0
   41B0 71            [ 7]  207 	ld	(hl),c
   41B1 23            [ 6]  208 	inc	hl
   41B2 70            [ 7]  209 	ld	(hl),b
                            210 ;src/game/game.c:28: txtWindowInfoTile[2] = "Production: Cereal";
   41B3 21 04 00      [10]  211 	ld	hl,#0x0004
   41B6 19            [11]  212 	add	hl,de
   41B7 01 02 43      [10]  213 	ld	bc,#___str_8+0
   41BA 71            [ 7]  214 	ld	(hl),c
   41BB 23            [ 6]  215 	inc	hl
   41BC 70            [ 7]  216 	ld	(hl),b
                            217 ;src/game/game.c:29: txtWindowInfoTile[3] = "Demand: Nothing";
   41BD 21 06 00      [10]  218 	ld	hl,#0x0006
   41C0 19            [11]  219 	add	hl,de
   41C1 11 15 43      [10]  220 	ld	de,#___str_9+0
   41C4 73            [ 7]  221 	ld	(hl),e
   41C5 23            [ 6]  222 	inc	hl
   41C6 72            [ 7]  223 	ld	(hl),d
                            224 ;src/game/game.c:30: break;
   41C7 C3 75 42      [10]  225 	jp	00112$
                            226 ;src/game/game.c:31: case WATER:
   41CA                     227 00108$:
                            228 ;src/game/game.c:32: txtWindowInfoTile[0] = "Water";
   41CA 21 00 00      [10]  229 	ld	hl,#0x0000
   41CD 39            [11]  230 	add	hl,sp
   41CE 5D            [ 4]  231 	ld	e,l
   41CF 54            [ 4]  232 	ld	d,h
   41D0 36 25         [10]  233 	ld	(hl),#<(___str_10)
   41D2 23            [ 6]  234 	inc	hl
   41D3 36 43         [10]  235 	ld	(hl),#>(___str_10)
                            236 ;src/game/game.c:33: txtWindowInfoTile[1] = "";
   41D5 6B            [ 4]  237 	ld	l, e
   41D6 62            [ 4]  238 	ld	h, d
   41D7 23            [ 6]  239 	inc	hl
   41D8 23            [ 6]  240 	inc	hl
   41D9 01 91 42      [10]  241 	ld	bc,#___str_1+0
   41DC 71            [ 7]  242 	ld	(hl),c
   41DD 23            [ 6]  243 	inc	hl
   41DE 70            [ 7]  244 	ld	(hl),b
                            245 ;src/game/game.c:34: txtWindowInfoTile[2] = "Production: Nothing";
   41DF 21 04 00      [10]  246 	ld	hl,#0x0004
   41E2 19            [11]  247 	add	hl,de
   41E3 01 2B 43      [10]  248 	ld	bc,#___str_11+0
   41E6 71            [ 7]  249 	ld	(hl),c
   41E7 23            [ 6]  250 	inc	hl
   41E8 70            [ 7]  251 	ld	(hl),b
                            252 ;src/game/game.c:35: txtWindowInfoTile[3] = "Demand: Nothing";
   41E9 21 06 00      [10]  253 	ld	hl,#0x0006
   41EC 19            [11]  254 	add	hl,de
   41ED 11 15 43      [10]  255 	ld	de,#___str_9+0
   41F0 73            [ 7]  256 	ld	(hl),e
   41F1 23            [ 6]  257 	inc	hl
   41F2 72            [ 7]  258 	ld	(hl),d
                            259 ;src/game/game.c:36: break;
   41F3 C3 75 42      [10]  260 	jp	00112$
                            261 ;src/game/game.c:37: case FOREST:
   41F6                     262 00109$:
                            263 ;src/game/game.c:38: txtWindowInfoTile[0] = "Forest";
   41F6 21 00 00      [10]  264 	ld	hl,#0x0000
   41F9 39            [11]  265 	add	hl,sp
   41FA 5D            [ 4]  266 	ld	e,l
   41FB 54            [ 4]  267 	ld	d,h
   41FC 36 3F         [10]  268 	ld	(hl),#<(___str_12)
   41FE 23            [ 6]  269 	inc	hl
   41FF 36 43         [10]  270 	ld	(hl),#>(___str_12)
                            271 ;src/game/game.c:39: txtWindowInfoTile[1] = "";
   4201 6B            [ 4]  272 	ld	l, e
   4202 62            [ 4]  273 	ld	h, d
   4203 23            [ 6]  274 	inc	hl
   4204 23            [ 6]  275 	inc	hl
   4205 01 91 42      [10]  276 	ld	bc,#___str_1+0
   4208 71            [ 7]  277 	ld	(hl),c
   4209 23            [ 6]  278 	inc	hl
   420A 70            [ 7]  279 	ld	(hl),b
                            280 ;src/game/game.c:40: txtWindowInfoTile[2] = "Production: Nothing";
   420B 21 04 00      [10]  281 	ld	hl,#0x0004
   420E 19            [11]  282 	add	hl,de
   420F 01 2B 43      [10]  283 	ld	bc,#___str_11+0
   4212 71            [ 7]  284 	ld	(hl),c
   4213 23            [ 6]  285 	inc	hl
   4214 70            [ 7]  286 	ld	(hl),b
                            287 ;src/game/game.c:41: txtWindowInfoTile[3] = "Demand: Nothing";
   4215 21 06 00      [10]  288 	ld	hl,#0x0006
   4218 19            [11]  289 	add	hl,de
   4219 11 15 43      [10]  290 	ld	de,#___str_9+0
   421C 73            [ 7]  291 	ld	(hl),e
   421D 23            [ 6]  292 	inc	hl
   421E 72            [ 7]  293 	ld	(hl),d
                            294 ;src/game/game.c:42: break;
   421F 18 54         [12]  295 	jr	00112$
                            296 ;src/game/game.c:43: case LIVESTOCK:
   4221                     297 00110$:
                            298 ;src/game/game.c:44: txtWindowInfoTile[0] = "Livestock farming";
   4221 21 00 00      [10]  299 	ld	hl,#0x0000
   4224 39            [11]  300 	add	hl,sp
   4225 5D            [ 4]  301 	ld	e,l
   4226 54            [ 4]  302 	ld	d,h
   4227 36 46         [10]  303 	ld	(hl),#<(___str_13)
   4229 23            [ 6]  304 	inc	hl
   422A 36 43         [10]  305 	ld	(hl),#>(___str_13)
                            306 ;src/game/game.c:45: txtWindowInfoTile[1] = "";
   422C 6B            [ 4]  307 	ld	l, e
   422D 62            [ 4]  308 	ld	h, d
   422E 23            [ 6]  309 	inc	hl
   422F 23            [ 6]  310 	inc	hl
   4230 01 91 42      [10]  311 	ld	bc,#___str_1+0
   4233 71            [ 7]  312 	ld	(hl),c
   4234 23            [ 6]  313 	inc	hl
   4235 70            [ 7]  314 	ld	(hl),b
                            315 ;src/game/game.c:46: txtWindowInfoTile[2] = "Production: Livestock, wool";
   4236 21 04 00      [10]  316 	ld	hl,#0x0004
   4239 19            [11]  317 	add	hl,de
   423A 01 58 43      [10]  318 	ld	bc,#___str_14+0
   423D 71            [ 7]  319 	ld	(hl),c
   423E 23            [ 6]  320 	inc	hl
   423F 70            [ 7]  321 	ld	(hl),b
                            322 ;src/game/game.c:47: txtWindowInfoTile[3] = "Demand: Cereal";
   4240 21 06 00      [10]  323 	ld	hl,#0x0006
   4243 19            [11]  324 	add	hl,de
   4244 11 74 43      [10]  325 	ld	de,#___str_15+0
   4247 73            [ 7]  326 	ld	(hl),e
   4248 23            [ 6]  327 	inc	hl
   4249 72            [ 7]  328 	ld	(hl),d
                            329 ;src/game/game.c:48: break;
   424A 18 29         [12]  330 	jr	00112$
                            331 ;src/game/game.c:49: default:
   424C                     332 00111$:
                            333 ;src/game/game.c:50: txtWindowInfoTile[0] = "Not yet implemented";
   424C 21 00 00      [10]  334 	ld	hl,#0x0000
   424F 39            [11]  335 	add	hl,sp
   4250 5D            [ 4]  336 	ld	e,l
   4251 54            [ 4]  337 	ld	d,h
   4252 36 83         [10]  338 	ld	(hl),#<(___str_16)
   4254 23            [ 6]  339 	inc	hl
   4255 36 43         [10]  340 	ld	(hl),#>(___str_16)
                            341 ;src/game/game.c:51: txtWindowInfoTile[1] = "";
   4257 6B            [ 4]  342 	ld	l, e
   4258 62            [ 4]  343 	ld	h, d
   4259 23            [ 6]  344 	inc	hl
   425A 23            [ 6]  345 	inc	hl
   425B 01 91 42      [10]  346 	ld	bc,#___str_1+0
   425E 71            [ 7]  347 	ld	(hl),c
   425F 23            [ 6]  348 	inc	hl
   4260 70            [ 7]  349 	ld	(hl),b
                            350 ;src/game/game.c:52: txtWindowInfoTile[2] = "Production: ?";
   4261 21 04 00      [10]  351 	ld	hl,#0x0004
   4264 19            [11]  352 	add	hl,de
   4265 01 97 43      [10]  353 	ld	bc,#___str_17+0
   4268 71            [ 7]  354 	ld	(hl),c
   4269 23            [ 6]  355 	inc	hl
   426A 70            [ 7]  356 	ld	(hl),b
                            357 ;src/game/game.c:53: txtWindowInfoTile[3] = "Demand: ?";
   426B 21 06 00      [10]  358 	ld	hl,#0x0006
   426E 19            [11]  359 	add	hl,de
   426F 11 A5 43      [10]  360 	ld	de,#___str_18+0
   4272 73            [ 7]  361 	ld	(hl),e
   4273 23            [ 6]  362 	inc	hl
   4274 72            [ 7]  363 	ld	(hl),d
                            364 ;src/game/game.c:55: }
   4275                     365 00112$:
                            366 ;src/game/game.c:57: drawWindow(txtWindowInfoTile, 4, 0);
   4275 21 00 00      [10]  367 	ld	hl,#0x0000
   4278 39            [11]  368 	add	hl,sp
   4279 EB            [ 4]  369 	ex	de,hl
   427A 21 04 00      [10]  370 	ld	hl,#0x0004
   427D E5            [11]  371 	push	hl
   427E D5            [11]  372 	push	de
   427F CD 7C 59      [17]  373 	call	_drawWindow
   4282 DD F9         [10]  374 	ld	sp,ix
   4284 DD E1         [14]  375 	pop	ix
   4286 C9            [10]  376 	ret
   4287                     377 ___str_0:
   4287 47 72 61 73 73 6C   378 	.ascii "Grassland"
        61 6E 64
   4290 00                  379 	.db 0x00
   4291                     380 ___str_1:
   4291 00                  381 	.db 0x00
   4292                     382 ___str_2:
   4292 50 72 6F 64 75 63   383 	.ascii "Production: nothing"
        74 69 6F 6E 3A 20
        6E 6F 74 68 69 6E
        67
   42A5 00                  384 	.db 0x00
   42A6                     385 ___str_3:
   42A6 44 65 6D 61 6E 64   386 	.ascii "Demand: nothing"
        3A 20 6E 6F 74 68
        69 6E 67
   42B5 00                  387 	.db 0x00
   42B6                     388 ___str_4:
   42B6 43 69 74 79         389 	.ascii "City"
   42BA 00                  390 	.db 0x00
   42BB                     391 ___str_5:
   42BB 50 72 6F 64 75 63   392 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   42D7 00                  393 	.db 0x00
   42D8                     394 ___str_6:
   42D8 44 65 6D 61 6E 64   395 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   42FC 00                  396 	.db 0x00
   42FD                     397 ___str_7:
   42FD 46 61 72 6D         398 	.ascii "Farm"
   4301 00                  399 	.db 0x00
   4302                     400 ___str_8:
   4302 50 72 6F 64 75 63   401 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   4314 00                  402 	.db 0x00
   4315                     403 ___str_9:
   4315 44 65 6D 61 6E 64   404 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   4324 00                  405 	.db 0x00
   4325                     406 ___str_10:
   4325 57 61 74 65 72      407 	.ascii "Water"
   432A 00                  408 	.db 0x00
   432B                     409 ___str_11:
   432B 50 72 6F 64 75 63   410 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   433E 00                  411 	.db 0x00
   433F                     412 ___str_12:
   433F 46 6F 72 65 73 74   413 	.ascii "Forest"
   4345 00                  414 	.db 0x00
   4346                     415 ___str_13:
   4346 4C 69 76 65 73 74   416 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   4357 00                  417 	.db 0x00
   4358                     418 ___str_14:
   4358 50 72 6F 64 75 63   419 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   4373 00                  420 	.db 0x00
   4374                     421 ___str_15:
   4374 44 65 6D 61 6E 64   422 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   4382 00                  423 	.db 0x00
   4383                     424 ___str_16:
   4383 4E 6F 74 20 79 65   425 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   4396 00                  426 	.db 0x00
   4397                     427 ___str_17:
   4397 50 72 6F 64 75 63   428 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   43A4 00                  429 	.db 0x00
   43A5                     430 ___str_18:
   43A5 44 65 6D 61 6E 64   431 	.ascii "Demand: ?"
        3A 20 3F
   43AE 00                  432 	.db 0x00
                            433 ;src/game/game.c:60: void menuStations()
                            434 ;	---------------------------------
                            435 ; Function menuStations
                            436 ; ---------------------------------
   43AF                     437 _menuStations::
   43AF DD E5         [15]  438 	push	ix
   43B1 DD 21 00 00   [14]  439 	ld	ix,#0
   43B5 DD 39         [15]  440 	add	ix,sp
   43B7 21 FA FF      [10]  441 	ld	hl,#-6
   43BA 39            [11]  442 	add	hl,sp
   43BB F9            [ 6]  443 	ld	sp,hl
                            444 ;src/game/game.c:64: const char *txtMenuSizeStation[] = { 
   43BC 21 00 00      [10]  445 	ld	hl,#0x0000
   43BF 39            [11]  446 	add	hl,sp
   43C0 5D            [ 4]  447 	ld	e,l
   43C1 54            [ 4]  448 	ld	d,h
   43C2 36 11         [10]  449 	ld	(hl),#<(___str_19)
   43C4 23            [ 6]  450 	inc	hl
   43C5 36 44         [10]  451 	ld	(hl),#>(___str_19)
   43C7 6B            [ 4]  452 	ld	l, e
   43C8 62            [ 4]  453 	ld	h, d
   43C9 23            [ 6]  454 	inc	hl
   43CA 23            [ 6]  455 	inc	hl
   43CB 01 17 44      [10]  456 	ld	bc,#___str_20+0
   43CE 71            [ 7]  457 	ld	(hl),c
   43CF 23            [ 6]  458 	inc	hl
   43D0 70            [ 7]  459 	ld	(hl),b
   43D1 21 04 00      [10]  460 	ld	hl,#0x0004
   43D4 19            [11]  461 	add	hl,de
   43D5 01 1E 44      [10]  462 	ld	bc,#___str_21+0
   43D8 71            [ 7]  463 	ld	(hl),c
   43D9 23            [ 6]  464 	inc	hl
   43DA 70            [ 7]  465 	ld	(hl),b
                            466 ;src/game/game.c:70: result = drawMenu(txtMenuSizeStation,3);
   43DB 3E 03         [ 7]  467 	ld	a,#0x03
   43DD F5            [11]  468 	push	af
   43DE 33            [ 6]  469 	inc	sp
   43DF D5            [11]  470 	push	de
   43E0 CD 7E 58      [17]  471 	call	_drawMenu
   43E3 F1            [10]  472 	pop	af
   43E4 33            [ 6]  473 	inc	sp
   43E5 5D            [ 4]  474 	ld	e,l
                            475 ;src/game/game.c:72: switch(result)
   43E6 3E 02         [ 7]  476 	ld	a,#0x02
   43E8 93            [ 4]  477 	sub	a, e
   43E9 38 21         [12]  478 	jr	C,00105$
   43EB 16 00         [ 7]  479 	ld	d,#0x00
   43ED 21 F3 43      [10]  480 	ld	hl,#00111$
   43F0 19            [11]  481 	add	hl,de
   43F1 19            [11]  482 	add	hl,de
                            483 ;src/game/game.c:74: case 0:
   43F2 E9            [ 4]  484 	jp	(hl)
   43F3                     485 00111$:
   43F3 18 04         [12]  486 	jr	00101$
   43F5 18 09         [12]  487 	jr	00102$
   43F7 18 0E         [12]  488 	jr	00103$
   43F9                     489 00101$:
                            490 ;src/game/game.c:75: CURSOR_MODE=T_SSEW;
   43F9 21 8E 7A      [10]  491 	ld	hl,#_CURSOR_MODE + 0
   43FC 36 02         [10]  492 	ld	(hl), #0x02
                            493 ;src/game/game.c:76: break;
   43FE 18 0C         [12]  494 	jr	00105$
                            495 ;src/game/game.c:78: case 1:
   4400                     496 00102$:
                            497 ;src/game/game.c:79: CURSOR_MODE=T_SMEW;
   4400 21 8E 7A      [10]  498 	ld	hl,#_CURSOR_MODE + 0
   4403 36 04         [10]  499 	ld	(hl), #0x04
                            500 ;src/game/game.c:80: break;
   4405 18 05         [12]  501 	jr	00105$
                            502 ;src/game/game.c:82: case 2:
   4407                     503 00103$:
                            504 ;src/game/game.c:83: CURSOR_MODE=T_SLEW;
   4407 21 8E 7A      [10]  505 	ld	hl,#_CURSOR_MODE + 0
   440A 36 06         [10]  506 	ld	(hl), #0x06
                            507 ;src/game/game.c:85: }
   440C                     508 00105$:
   440C DD F9         [10]  509 	ld	sp, ix
   440E DD E1         [14]  510 	pop	ix
   4410 C9            [10]  511 	ret
   4411                     512 ___str_19:
   4411 53 6D 61 6C 6C      513 	.ascii "Small"
   4416 00                  514 	.db 0x00
   4417                     515 ___str_20:
   4417 4D 65 64 69 75 6D   516 	.ascii "Medium"
   441D 00                  517 	.db 0x00
   441E                     518 ___str_21:
   441E 4C 61 72 67 65      519 	.ascii "Large"
   4423 00                  520 	.db 0x00
                            521 ;src/game/game.c:88: void menuTile(u8 x, u8 y)
                            522 ;	---------------------------------
                            523 ; Function menuTile
                            524 ; ---------------------------------
   4424                     525 _menuTile::
   4424 DD E5         [15]  526 	push	ix
   4426 DD 21 00 00   [14]  527 	ld	ix,#0
   442A DD 39         [15]  528 	add	ix,sp
   442C 21 E6 FF      [10]  529 	ld	hl,#-26
   442F 39            [11]  530 	add	hl,sp
   4430 F9            [ 6]  531 	ld	sp,hl
                            532 ;src/game/game.c:92: const char *txtMenuTile[] = { 
   4431 21 00 00      [10]  533 	ld	hl,#0x0000
   4434 39            [11]  534 	add	hl,sp
   4435 5D            [ 4]  535 	ld	e,l
   4436 54            [ 4]  536 	ld	d,h
   4437 36 4C         [10]  537 	ld	(hl),#<(___str_22)
   4439 23            [ 6]  538 	inc	hl
   443A 36 45         [10]  539 	ld	(hl),#>(___str_22)
   443C 6B            [ 4]  540 	ld	l, e
   443D 62            [ 4]  541 	ld	h, d
   443E 23            [ 6]  542 	inc	hl
   443F 23            [ 6]  543 	inc	hl
   4440 01 5C 45      [10]  544 	ld	bc,#___str_23+0
   4443 71            [ 7]  545 	ld	(hl),c
   4444 23            [ 6]  546 	inc	hl
   4445 70            [ 7]  547 	ld	(hl),b
   4446 21 04 00      [10]  548 	ld	hl,#0x0004
   4449 19            [11]  549 	add	hl,de
   444A 01 6C 45      [10]  550 	ld	bc,#___str_24+0
   444D 71            [ 7]  551 	ld	(hl),c
   444E 23            [ 6]  552 	inc	hl
   444F 70            [ 7]  553 	ld	(hl),b
   4450 21 06 00      [10]  554 	ld	hl,#0x0006
   4453 19            [11]  555 	add	hl,de
   4454 01 7C 45      [10]  556 	ld	bc,#___str_25+0
   4457 71            [ 7]  557 	ld	(hl),c
   4458 23            [ 6]  558 	inc	hl
   4459 70            [ 7]  559 	ld	(hl),b
   445A 21 08 00      [10]  560 	ld	hl,#0x0008
   445D 19            [11]  561 	add	hl,de
   445E 01 84 45      [10]  562 	ld	bc,#___str_26+0
   4461 71            [ 7]  563 	ld	(hl),c
   4462 23            [ 6]  564 	inc	hl
   4463 70            [ 7]  565 	ld	(hl),b
   4464 21 0A 00      [10]  566 	ld	hl,#0x000A
   4467 19            [11]  567 	add	hl,de
   4468 01 93 45      [10]  568 	ld	bc,#___str_27+0
   446B 71            [ 7]  569 	ld	(hl),c
   446C 23            [ 6]  570 	inc	hl
   446D 70            [ 7]  571 	ld	(hl),b
   446E 21 0C 00      [10]  572 	ld	hl,#0x000C
   4471 19            [11]  573 	add	hl,de
   4472 01 9E 45      [10]  574 	ld	bc,#___str_28+0
   4475 71            [ 7]  575 	ld	(hl),c
   4476 23            [ 6]  576 	inc	hl
   4477 70            [ 7]  577 	ld	(hl),b
                            578 ;src/game/game.c:102: const char *txtWindowDestroy[] = { 
   4478 21 0E 00      [10]  579 	ld	hl,#0x000E
   447B 39            [11]  580 	add	hl,sp
   447C 4D            [ 4]  581 	ld	c,l
   447D 44            [ 4]  582 	ld	b,h
   447E 36 A5         [10]  583 	ld	(hl),#<(___str_29)
   4480 23            [ 6]  584 	inc	hl
   4481 36 45         [10]  585 	ld	(hl),#>(___str_29)
   4483 21 02 00      [10]  586 	ld	hl,#0x0002
   4486 09            [11]  587 	add	hl,bc
   4487 DD 75 FA      [19]  588 	ld	-6 (ix),l
   448A DD 74 FB      [19]  589 	ld	-5 (ix),h
   448D DD 6E FA      [19]  590 	ld	l,-6 (ix)
   4490 DD 66 FB      [19]  591 	ld	h,-5 (ix)
   4493 36 C8         [10]  592 	ld	(hl),#<(___str_30)
   4495 23            [ 6]  593 	inc	hl
   4496 36 45         [10]  594 	ld	(hl),#>(___str_30)
   4498 21 04 00      [10]  595 	ld	hl,#0x0004
   449B 09            [11]  596 	add	hl,bc
   449C DD 75 FA      [19]  597 	ld	-6 (ix),l
   449F DD 74 FB      [19]  598 	ld	-5 (ix),h
   44A2 DD 6E FA      [19]  599 	ld	l,-6 (ix)
   44A5 DD 66 FB      [19]  600 	ld	h,-5 (ix)
   44A8 36 C9         [10]  601 	ld	(hl),#<(___str_31)
   44AA 23            [ 6]  602 	inc	hl
   44AB 36 45         [10]  603 	ld	(hl),#>(___str_31)
                            604 ;src/game/game.c:109: putM2();
   44AD C5            [11]  605 	push	bc
   44AE D5            [11]  606 	push	de
   44AF CD 78 54      [17]  607 	call	_putM2
   44B2 D1            [10]  608 	pop	de
   44B3 C1            [10]  609 	pop	bc
                            610 ;src/game/game.c:111: do{
   44B4 D5            [11]  611 	push	de
   44B5 DD 5E 05      [19]  612 	ld	e,5 (ix)
   44B8 16 00         [ 7]  613 	ld	d,#0x00
   44BA 6B            [ 4]  614 	ld	l, e
   44BB 62            [ 4]  615 	ld	h, d
   44BC 29            [11]  616 	add	hl, hl
   44BD 29            [11]  617 	add	hl, hl
   44BE 19            [11]  618 	add	hl, de
   44BF 29            [11]  619 	add	hl, hl
   44C0 29            [11]  620 	add	hl, hl
   44C1 29            [11]  621 	add	hl, hl
   44C2 29            [11]  622 	add	hl, hl
   44C3 D1            [10]  623 	pop	de
   44C4 DD 75 FA      [19]  624 	ld	-6 (ix),l
   44C7 DD 74 FB      [19]  625 	ld	-5 (ix),h
   44CA DD 71 FE      [19]  626 	ld	-2 (ix),c
   44CD DD 70 FF      [19]  627 	ld	-1 (ix),b
   44D0 DD 73 FC      [19]  628 	ld	-4 (ix),e
   44D3 DD 72 FD      [19]  629 	ld	-3 (ix),d
   44D6                     630 00114$:
                            631 ;src/game/game.c:112: menuChoice = drawMenu(txtMenuTile,7);
   44D6 DD 5E FC      [19]  632 	ld	e,-4 (ix)
   44D9 DD 56 FD      [19]  633 	ld	d,-3 (ix)
   44DC 3E 07         [ 7]  634 	ld	a,#0x07
   44DE F5            [11]  635 	push	af
   44DF 33            [ 6]  636 	inc	sp
   44E0 D5            [11]  637 	push	de
   44E1 CD 7E 58      [17]  638 	call	_drawMenu
   44E4 F1            [10]  639 	pop	af
   44E5 33            [ 6]  640 	inc	sp
   44E6 55            [ 4]  641 	ld	d,l
                            642 ;src/game/game.c:114: if(menuChoice==0)
   44E7 7A            [ 4]  643 	ld	a,d
   44E8 B7            [ 4]  644 	or	a, a
   44E9 20 0F         [12]  645 	jr	NZ,00112$
                            646 ;src/game/game.c:115: windowInfoTile(x, y);
   44EB D5            [11]  647 	push	de
   44EC DD 66 05      [19]  648 	ld	h,5 (ix)
   44EF DD 6E 04      [19]  649 	ld	l,4 (ix)
   44F2 E5            [11]  650 	push	hl
   44F3 CD F2 40      [17]  651 	call	_windowInfoTile
   44F6 F1            [10]  652 	pop	af
   44F7 D1            [10]  653 	pop	de
   44F8 18 45         [12]  654 	jr	00115$
   44FA                     655 00112$:
                            656 ;src/game/game.c:116: else if(menuChoice==1)
   44FA 7A            [ 4]  657 	ld	a,d
   44FB 3D            [ 4]  658 	dec	a
   44FC 20 09         [12]  659 	jr	NZ,00109$
                            660 ;src/game/game.c:118: CURSOR_MODE=T_REW;
   44FE 21 8E 7A      [10]  661 	ld	hl,#_CURSOR_MODE + 0
   4501 36 07         [10]  662 	ld	(hl), #0x07
                            663 ;src/game/game.c:119: menuChoice=6;
   4503 16 06         [ 7]  664 	ld	d,#0x06
   4505 18 38         [12]  665 	jr	00115$
   4507                     666 00109$:
                            667 ;src/game/game.c:121: else if(menuChoice==2)
   4507 7A            [ 4]  668 	ld	a,d
   4508 D6 02         [ 7]  669 	sub	a, #0x02
   450A 20 07         [12]  670 	jr	NZ,00106$
                            671 ;src/game/game.c:123: menuStations();
   450C CD AF 43      [17]  672 	call	_menuStations
                            673 ;src/game/game.c:124: menuChoice=6;
   450F 16 06         [ 7]  674 	ld	d,#0x06
   4511 18 2C         [12]  675 	jr	00115$
   4513                     676 00106$:
                            677 ;src/game/game.c:126: else if(menuChoice==3)
   4513 7A            [ 4]  678 	ld	a,d
   4514 D6 03         [ 7]  679 	sub	a, #0x03
   4516 20 27         [12]  680 	jr	NZ,00115$
                            681 ;src/game/game.c:128: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   4518 DD 5E FE      [19]  682 	ld	e,-2 (ix)
   451B DD 56 FF      [19]  683 	ld	d,-1 (ix)
   451E 21 03 01      [10]  684 	ld	hl,#0x0103
   4521 E5            [11]  685 	push	hl
   4522 D5            [11]  686 	push	de
   4523 CD 7C 59      [17]  687 	call	_drawWindow
   4526 F1            [10]  688 	pop	af
   4527 F1            [10]  689 	pop	af
   4528 2D            [ 4]  690 	dec	l
   4529 20 12         [12]  691 	jr	NZ,00102$
                            692 ;src/game/game.c:129: p_world[x+y*WIDTH] = GRASS1;
   452B DD 6E 04      [19]  693 	ld	l,4 (ix)
   452E 26 00         [ 7]  694 	ld	h,#0x00
   4530 DD 5E FA      [19]  695 	ld	e,-6 (ix)
   4533 DD 56 FB      [19]  696 	ld	d,-5 (ix)
   4536 19            [11]  697 	add	hl,de
   4537 11 8E 6B      [10]  698 	ld	de,#_p_world
   453A 19            [11]  699 	add	hl,de
   453B 36 00         [10]  700 	ld	(hl),#0x00
   453D                     701 00102$:
                            702 ;src/game/game.c:131: menuChoice=6;
   453D 16 06         [ 7]  703 	ld	d,#0x06
   453F                     704 00115$:
                            705 ;src/game/game.c:135: while(menuChoice!=6);
   453F 7A            [ 4]  706 	ld	a,d
   4540 D6 06         [ 7]  707 	sub	a, #0x06
   4542 20 92         [12]  708 	jr	NZ,00114$
                            709 ;src/game/game.c:137: putM1();
   4544 CD 64 54      [17]  710 	call	_putM1
   4547 DD F9         [10]  711 	ld	sp, ix
   4549 DD E1         [14]  712 	pop	ix
   454B C9            [10]  713 	ret
   454C                     714 ___str_22:
   454C 41 62 6F 75 74 20   715 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   455B 00                  716 	.db 0x00
   455C                     717 ___str_23:
   455C 42 75 69 6C 64 20   718 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   456B 00                  719 	.db 0x00
   456C                     720 ___str_24:
   456C 42 75 69 6C 64 20   721 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   457B 00                  722 	.db 0x00
   457C                     723 ___str_25:
   457C 44 65 73 74 72 6F   724 	.ascii "Destroy"
        79
   4583 00                  725 	.db 0x00
   4584                     726 ___str_26:
   4584 52 61 69 6C 72 6F   727 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   4592 00                  728 	.db 0x00
   4593                     729 ___str_27:
   4593 41 63 63 6F 75 6E   730 	.ascii "Accounting"
        74 69 6E 67
   459D 00                  731 	.db 0x00
   459E                     732 ___str_28:
   459E 52 65 73 75 6D 65   733 	.ascii "Resume"
   45A4 00                  734 	.db 0x00
   45A5                     735 ___str_29:
   45A5 44 65 73 74 72 6F   736 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   45C7 00                  737 	.db 0x00
   45C8                     738 ___str_30:
   45C8 00                  739 	.db 0x00
   45C9                     740 ___str_31:
   45C9 43 6F 6E 74 69 6E   741 	.ascii "Continue ?"
        75 65 20 3F
   45D3 00                  742 	.db 0x00
                            743 ;src/game/game.c:141: void game()
                            744 ;	---------------------------------
                            745 ; Function game
                            746 ; ---------------------------------
   45D4                     747 _game::
   45D4 DD E5         [15]  748 	push	ix
   45D6 DD 21 00 00   [14]  749 	ld	ix,#0
   45DA DD 39         [15]  750 	add	ix,sp
   45DC 21 EA FF      [10]  751 	ld	hl,#-22
   45DF 39            [11]  752 	add	hl,sp
   45E0 F9            [ 6]  753 	ld	sp,hl
                            754 ;src/game/game.c:144: int ulx = 0;
   45E1 DD 36 F4 00   [19]  755 	ld	-12 (ix),#0x00
   45E5 DD 36 F5 00   [19]  756 	ld	-11 (ix),#0x00
                            757 ;src/game/game.c:145: int uly = 0;
   45E9 DD 36 F0 00   [19]  758 	ld	-16 (ix),#0x00
   45ED DD 36 F1 00   [19]  759 	ld	-15 (ix),#0x00
                            760 ;src/game/game.c:146: int xCursor = 10;
   45F1 DD 36 F2 0A   [19]  761 	ld	-14 (ix),#0x0A
   45F5 DD 36 F3 00   [19]  762 	ld	-13 (ix),#0x00
                            763 ;src/game/game.c:147: int yCursor = 6;
   45F9 DD 36 F6 06   [19]  764 	ld	-10 (ix),#0x06
   45FD DD 36 F7 00   [19]  765 	ld	-9 (ix),#0x00
                            766 ;src/game/game.c:149: u8 exit=0;
   4601 DD 36 F8 00   [19]  767 	ld	-8 (ix),#0x00
                            768 ;src/game/game.c:152: drawBoxM2(50, 50);
   4605 21 32 00      [10]  769 	ld	hl,#0x0032
   4608 E5            [11]  770 	push	hl
   4609 2E 32         [ 7]  771 	ld	l, #0x32
   460B E5            [11]  772 	push	hl
   460C CD B4 55      [17]  773 	call	_drawBoxM2
   460F F1            [10]  774 	pop	af
                            775 ;src/game/game.c:153: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   4610 21 20 5F      [10]  776 	ld	hl, #0x5F20
   4613 E3            [19]  777 	ex	(sp),hl
   4614 21 00 C0      [10]  778 	ld	hl,#0xC000
   4617 E5            [11]  779 	push	hl
   4618 CD BA 6A      [17]  780 	call	_cpct_getScreenPtr
                            781 ;src/game/game.c:154: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   461B 4D            [ 4]  782 	ld	c, l
   461C 44            [ 4]  783 	ld	b, h
   461D 11 BC 4A      [10]  784 	ld	de,#___str_35
   4620 AF            [ 4]  785 	xor	a, a
   4621 F5            [11]  786 	push	af
   4622 33            [ 6]  787 	inc	sp
   4623 C5            [11]  788 	push	bc
   4624 D5            [11]  789 	push	de
   4625 CD 15 67      [17]  790 	call	_cpct_drawStringM2
   4628 F1            [10]  791 	pop	af
   4629 F1            [10]  792 	pop	af
   462A 33            [ 6]  793 	inc	sp
                            794 ;src/game/game.c:156: generateWorld();
   462B CD 02 4E      [17]  795 	call	_generateWorld
                            796 ;src/game/game.c:158: putM1();
   462E CD 64 54      [17]  797 	call	_putM1
                            798 ;src/game/game.c:159: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   4631 21 00 00      [10]  799 	ld	hl,#0x0000
   4634 E5            [11]  800 	push	hl
   4635 2E 00         [ 7]  801 	ld	l, #0x00
   4637 E5            [11]  802 	push	hl
   4638 CD 94 69      [17]  803 	call	_cpct_px2byteM1
   463B F1            [10]  804 	pop	af
   463C F1            [10]  805 	pop	af
   463D 65            [ 4]  806 	ld	h,l
   463E 01 00 40      [10]  807 	ld	bc,#0x4000
   4641 C5            [11]  808 	push	bc
   4642 E5            [11]  809 	push	hl
   4643 33            [ 6]  810 	inc	sp
   4644 21 00 C0      [10]  811 	ld	hl,#0xC000
   4647 E5            [11]  812 	push	hl
   4648 CD 86 69      [17]  813 	call	_cpct_memset
                            814 ;src/game/game.c:160: drawWorld(ulx, uly);
   464B 21 00 00      [10]  815 	ld	hl,#0x0000
   464E E5            [11]  816 	push	hl
   464F CD 18 54      [17]  817 	call	_drawWorld
   4652 F1            [10]  818 	pop	af
                            819 ;src/game/game.c:162: do{
   4653                     820 00181$:
                            821 ;src/game/game.c:163: cpct_scanKeyboard(); 
   4653 CD DA 6A      [17]  822 	call	_cpct_scanKeyboard
                            823 ;src/game/game.c:165: if ( cpct_isKeyPressed(Key_CursorUp) )
   4656 21 00 01      [10]  824 	ld	hl,#0x0100
   4659 CD 74 66      [17]  825 	call	_cpct_isKeyPressed
   465C DD 75 FE      [19]  826 	ld	-2 (ix),l
                            827 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   465F DD 7E F6      [19]  828 	ld	a,-10 (ix)
   4662 DD 77 FF      [19]  829 	ld	-1 (ix),a
   4665 DD 7E F2      [19]  830 	ld	a,-14 (ix)
   4668 DD 77 FD      [19]  831 	ld	-3 (ix),a
   466B DD 7E F0      [19]  832 	ld	a,-16 (ix)
   466E DD 77 FC      [19]  833 	ld	-4 (ix),a
   4671 DD 7E F4      [19]  834 	ld	a,-12 (ix)
   4674 DD 77 FB      [19]  835 	ld	-5 (ix),a
                            836 ;src/game/game.c:165: if ( cpct_isKeyPressed(Key_CursorUp) )
   4677 DD 7E FE      [19]  837 	ld	a,-2 (ix)
   467A B7            [ 4]  838 	or	a, a
   467B CA FD 46      [10]  839 	jp	Z,00179$
                            840 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   467E DD 7E FF      [19]  841 	ld	a,-1 (ix)
   4681 F5            [11]  842 	push	af
   4682 33            [ 6]  843 	inc	sp
   4683 DD 7E FD      [19]  844 	ld	a,-3 (ix)
   4686 F5            [11]  845 	push	af
   4687 33            [ 6]  846 	inc	sp
   4688 DD 7E FC      [19]  847 	ld	a,-4 (ix)
   468B F5            [11]  848 	push	af
   468C 33            [ 6]  849 	inc	sp
   468D DD 7E FB      [19]  850 	ld	a,-5 (ix)
   4690 F5            [11]  851 	push	af
   4691 33            [ 6]  852 	inc	sp
   4692 CD 57 51      [17]  853 	call	_drawTile
   4695 F1            [10]  854 	pop	af
   4696 F1            [10]  855 	pop	af
                            856 ;src/game/game.c:169: yCursor-=1;
   4697 DD 6E F6      [19]  857 	ld	l,-10 (ix)
   469A DD 66 F7      [19]  858 	ld	h,-9 (ix)
   469D 2B            [ 6]  859 	dec	hl
   469E DD 75 F6      [19]  860 	ld	-10 (ix),l
   46A1 DD 74 F7      [19]  861 	ld	-9 (ix),h
                            862 ;src/game/game.c:172: if(yCursor<0)
   46A4 DD CB F7 7E   [20]  863 	bit	7, -9 (ix)
   46A8 28 35         [12]  864 	jr	Z,00210$
                            865 ;src/game/game.c:174: yCursor=0;
   46AA DD 36 F6 00   [19]  866 	ld	-10 (ix),#0x00
   46AE DD 36 F7 00   [19]  867 	ld	-9 (ix),#0x00
                            868 ;src/game/game.c:177: if(uly>0)
   46B2 AF            [ 4]  869 	xor	a, a
   46B3 DD BE F0      [19]  870 	cp	a, -16 (ix)
   46B6 DD 9E F1      [19]  871 	sbc	a, -15 (ix)
   46B9 E2 BE 46      [10]  872 	jp	PO, 00387$
   46BC EE 80         [ 7]  873 	xor	a, #0x80
   46BE                     874 00387$:
   46BE F2 DF 46      [10]  875 	jp	P,00210$
                            876 ;src/game/game.c:179: uly-=1;
   46C1 DD 6E F0      [19]  877 	ld	l,-16 (ix)
   46C4 DD 66 F1      [19]  878 	ld	h,-15 (ix)
   46C7 2B            [ 6]  879 	dec	hl
   46C8 DD 75 F0      [19]  880 	ld	-16 (ix),l
   46CB DD 74 F1      [19]  881 	ld	-15 (ix),h
                            882 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   46CE DD 7E F0      [19]  883 	ld	a,-16 (ix)
                            884 ;src/game/game.c:180: drawWorld(ulx, uly);
   46D1 DD 77 FC      [19]  885 	ld	-4 (ix), a
   46D4 F5            [11]  886 	push	af
   46D5 33            [ 6]  887 	inc	sp
   46D6 DD 7E FB      [19]  888 	ld	a,-5 (ix)
   46D9 F5            [11]  889 	push	af
   46DA 33            [ 6]  890 	inc	sp
   46DB CD 18 54      [17]  891 	call	_drawWorld
   46DE F1            [10]  892 	pop	af
                            893 ;src/game/game.c:185: for(i=0; i<5000; i++) {}
   46DF                     894 00210$:
   46DF DD 36 F9 88   [19]  895 	ld	-7 (ix),#0x88
   46E3 DD 36 FA 13   [19]  896 	ld	-6 (ix),#0x13
   46E7                     897 00186$:
   46E7 DD 6E F9      [19]  898 	ld	l,-7 (ix)
   46EA DD 66 FA      [19]  899 	ld	h,-6 (ix)
   46ED 2B            [ 6]  900 	dec	hl
   46EE DD 75 F9      [19]  901 	ld	-7 (ix),l
   46F1 DD 74 FA      [19]  902 	ld	-6 (ix), h
   46F4 7C            [ 4]  903 	ld	a, h
   46F5 DD B6 F9      [19]  904 	or	a,-7 (ix)
   46F8 20 ED         [12]  905 	jr	NZ,00186$
   46FA C3 5B 4A      [10]  906 	jp	00180$
   46FD                     907 00179$:
                            908 ;src/game/game.c:188: else if ( cpct_isKeyPressed(Key_CursorDown) )
   46FD 21 00 04      [10]  909 	ld	hl,#0x0400
   4700 CD 74 66      [17]  910 	call	_cpct_isKeyPressed
   4703 7D            [ 4]  911 	ld	a,l
   4704 B7            [ 4]  912 	or	a, a
   4705 CA 89 47      [10]  913 	jp	Z,00176$
                            914 ;src/game/game.c:190: drawTile(ulx, uly, xCursor, yCursor);
   4708 DD 7E FF      [19]  915 	ld	a,-1 (ix)
   470B F5            [11]  916 	push	af
   470C 33            [ 6]  917 	inc	sp
   470D DD 7E FD      [19]  918 	ld	a,-3 (ix)
   4710 F5            [11]  919 	push	af
   4711 33            [ 6]  920 	inc	sp
   4712 DD 7E FC      [19]  921 	ld	a,-4 (ix)
   4715 F5            [11]  922 	push	af
   4716 33            [ 6]  923 	inc	sp
   4717 DD 7E FB      [19]  924 	ld	a,-5 (ix)
   471A F5            [11]  925 	push	af
   471B 33            [ 6]  926 	inc	sp
   471C CD 57 51      [17]  927 	call	_drawTile
   471F F1            [10]  928 	pop	af
   4720 F1            [10]  929 	pop	af
                            930 ;src/game/game.c:191: yCursor+=1;
   4721 DD 34 F6      [23]  931 	inc	-10 (ix)
   4724 20 03         [12]  932 	jr	NZ,00388$
   4726 DD 34 F7      [23]  933 	inc	-9 (ix)
   4729                     934 00388$:
                            935 ;src/game/game.c:192: if(yCursor>NBTILE_H-1)
   4729 3E 0B         [ 7]  936 	ld	a,#0x0B
   472B DD BE F6      [19]  937 	cp	a, -10 (ix)
   472E 3E 00         [ 7]  938 	ld	a,#0x00
   4730 DD 9E F7      [19]  939 	sbc	a, -9 (ix)
   4733 E2 38 47      [10]  940 	jp	PO, 00389$
   4736 EE 80         [ 7]  941 	xor	a, #0x80
   4738                     942 00389$:
   4738 F2 6B 47      [10]  943 	jp	P,00215$
                            944 ;src/game/game.c:194: yCursor=NBTILE_H-1;
   473B DD 36 F6 0B   [19]  945 	ld	-10 (ix),#0x0B
   473F DD 36 F7 00   [19]  946 	ld	-9 (ix),#0x00
                            947 ;src/game/game.c:195: if(uly<HEIGHT-NBTILE_H)
   4743 DD 7E F0      [19]  948 	ld	a,-16 (ix)
   4746 D6 24         [ 7]  949 	sub	a, #0x24
   4748 DD 7E F1      [19]  950 	ld	a,-15 (ix)
   474B 17            [ 4]  951 	rla
   474C 3F            [ 4]  952 	ccf
   474D 1F            [ 4]  953 	rra
   474E DE 80         [ 7]  954 	sbc	a, #0x80
   4750 30 19         [12]  955 	jr	NC,00215$
                            956 ;src/game/game.c:197: uly+=1;
   4752 DD 34 F0      [23]  957 	inc	-16 (ix)
   4755 20 03         [12]  958 	jr	NZ,00390$
   4757 DD 34 F1      [23]  959 	inc	-15 (ix)
   475A                     960 00390$:
                            961 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   475A DD 7E F0      [19]  962 	ld	a,-16 (ix)
                            963 ;src/game/game.c:198: drawWorld(ulx, uly);
   475D DD 77 FC      [19]  964 	ld	-4 (ix), a
   4760 F5            [11]  965 	push	af
   4761 33            [ 6]  966 	inc	sp
   4762 DD 7E FB      [19]  967 	ld	a,-5 (ix)
   4765 F5            [11]  968 	push	af
   4766 33            [ 6]  969 	inc	sp
   4767 CD 18 54      [17]  970 	call	_drawWorld
   476A F1            [10]  971 	pop	af
                            972 ;src/game/game.c:203: for(i=0; i<5000; i++) {}
   476B                     973 00215$:
   476B DD 36 F9 88   [19]  974 	ld	-7 (ix),#0x88
   476F DD 36 FA 13   [19]  975 	ld	-6 (ix),#0x13
   4773                     976 00189$:
   4773 DD 6E F9      [19]  977 	ld	l,-7 (ix)
   4776 DD 66 FA      [19]  978 	ld	h,-6 (ix)
   4779 2B            [ 6]  979 	dec	hl
   477A DD 75 F9      [19]  980 	ld	-7 (ix),l
   477D DD 74 FA      [19]  981 	ld	-6 (ix), h
   4780 7C            [ 4]  982 	ld	a, h
   4781 DD B6 F9      [19]  983 	or	a,-7 (ix)
   4784 20 ED         [12]  984 	jr	NZ,00189$
   4786 C3 5B 4A      [10]  985 	jp	00180$
   4789                     986 00176$:
                            987 ;src/game/game.c:206: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   4789 21 01 01      [10]  988 	ld	hl,#0x0101
   478C CD 74 66      [17]  989 	call	_cpct_isKeyPressed
   478F 7D            [ 4]  990 	ld	a,l
   4790 B7            [ 4]  991 	or	a, a
   4791 28 6F         [12]  992 	jr	Z,00173$
                            993 ;src/game/game.c:208: drawTile(ulx, uly, xCursor, yCursor);
   4793 DD 7E FF      [19]  994 	ld	a,-1 (ix)
   4796 F5            [11]  995 	push	af
   4797 33            [ 6]  996 	inc	sp
   4798 DD 7E FD      [19]  997 	ld	a,-3 (ix)
   479B F5            [11]  998 	push	af
   479C 33            [ 6]  999 	inc	sp
   479D DD 7E FC      [19] 1000 	ld	a,-4 (ix)
   47A0 F5            [11] 1001 	push	af
   47A1 33            [ 6] 1002 	inc	sp
   47A2 DD 7E FB      [19] 1003 	ld	a,-5 (ix)
   47A5 F5            [11] 1004 	push	af
   47A6 33            [ 6] 1005 	inc	sp
   47A7 CD 57 51      [17] 1006 	call	_drawTile
   47AA F1            [10] 1007 	pop	af
   47AB F1            [10] 1008 	pop	af
                           1009 ;src/game/game.c:209: xCursor-=1;
   47AC DD 6E F2      [19] 1010 	ld	l,-14 (ix)
   47AF DD 66 F3      [19] 1011 	ld	h,-13 (ix)
   47B2 2B            [ 6] 1012 	dec	hl
   47B3 DD 75 F2      [19] 1013 	ld	-14 (ix),l
   47B6 DD 74 F3      [19] 1014 	ld	-13 (ix),h
                           1015 ;src/game/game.c:210: if(xCursor<0)
   47B9 DD CB F3 7E   [20] 1016 	bit	7, -13 (ix)
   47BD 28 38         [12] 1017 	jr	Z,00220$
                           1018 ;src/game/game.c:212: xCursor=0;
   47BF DD 36 F2 00   [19] 1019 	ld	-14 (ix),#0x00
   47C3 DD 36 F3 00   [19] 1020 	ld	-13 (ix),#0x00
                           1021 ;src/game/game.c:213: if(ulx>0)
   47C7 AF            [ 4] 1022 	xor	a, a
   47C8 DD BE F4      [19] 1023 	cp	a, -12 (ix)
   47CB DD 9E F5      [19] 1024 	sbc	a, -11 (ix)
   47CE E2 D3 47      [10] 1025 	jp	PO, 00391$
   47D1 EE 80         [ 7] 1026 	xor	a, #0x80
   47D3                    1027 00391$:
   47D3 F2 F7 47      [10] 1028 	jp	P,00220$
                           1029 ;src/game/game.c:215: ulx-=1;
   47D6 DD 6E F4      [19] 1030 	ld	l,-12 (ix)
   47D9 DD 66 F5      [19] 1031 	ld	h,-11 (ix)
   47DC 2B            [ 6] 1032 	dec	hl
   47DD DD 75 F4      [19] 1033 	ld	-12 (ix),l
   47E0 DD 74 F5      [19] 1034 	ld	-11 (ix),h
                           1035 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   47E3 DD 7E F4      [19] 1036 	ld	a,-12 (ix)
   47E6 DD 77 FB      [19] 1037 	ld	-5 (ix),a
                           1038 ;src/game/game.c:216: drawWorld(ulx, uly);
   47E9 DD 7E FC      [19] 1039 	ld	a,-4 (ix)
   47EC F5            [11] 1040 	push	af
   47ED 33            [ 6] 1041 	inc	sp
   47EE DD 7E FB      [19] 1042 	ld	a,-5 (ix)
   47F1 F5            [11] 1043 	push	af
   47F2 33            [ 6] 1044 	inc	sp
   47F3 CD 18 54      [17] 1045 	call	_drawWorld
   47F6 F1            [10] 1046 	pop	af
                           1047 ;src/game/game.c:221: for(i=0; i<14000; i++) {}
   47F7                    1048 00220$:
   47F7 21 B0 36      [10] 1049 	ld	hl,#0x36B0
   47FA                    1050 00192$:
   47FA 2B            [ 6] 1051 	dec	hl
   47FB 7C            [ 4] 1052 	ld	a,h
   47FC B5            [ 4] 1053 	or	a,l
   47FD 20 FB         [12] 1054 	jr	NZ,00192$
   47FF C3 5B 4A      [10] 1055 	jp	00180$
   4802                    1056 00173$:
                           1057 ;src/game/game.c:224: else if ( cpct_isKeyPressed(Key_CursorRight) )
   4802 21 00 02      [10] 1058 	ld	hl,#0x0200
   4805 CD 74 66      [17] 1059 	call	_cpct_isKeyPressed
   4808 7D            [ 4] 1060 	ld	a,l
   4809 B7            [ 4] 1061 	or	a, a
   480A 28 71         [12] 1062 	jr	Z,00170$
                           1063 ;src/game/game.c:226: drawTile(ulx, uly, xCursor, yCursor);
   480C DD 7E FF      [19] 1064 	ld	a,-1 (ix)
   480F F5            [11] 1065 	push	af
   4810 33            [ 6] 1066 	inc	sp
   4811 DD 7E FD      [19] 1067 	ld	a,-3 (ix)
   4814 F5            [11] 1068 	push	af
   4815 33            [ 6] 1069 	inc	sp
   4816 DD 7E FC      [19] 1070 	ld	a,-4 (ix)
   4819 F5            [11] 1071 	push	af
   481A 33            [ 6] 1072 	inc	sp
   481B DD 7E FB      [19] 1073 	ld	a,-5 (ix)
   481E F5            [11] 1074 	push	af
   481F 33            [ 6] 1075 	inc	sp
   4820 CD 57 51      [17] 1076 	call	_drawTile
   4823 F1            [10] 1077 	pop	af
   4824 F1            [10] 1078 	pop	af
                           1079 ;src/game/game.c:227: xCursor+=1;
   4825 DD 34 F2      [23] 1080 	inc	-14 (ix)
   4828 20 03         [12] 1081 	jr	NZ,00392$
   482A DD 34 F3      [23] 1082 	inc	-13 (ix)
   482D                    1083 00392$:
                           1084 ;src/game/game.c:228: if(xCursor>NBTILE_W-1)
   482D 3E 13         [ 7] 1085 	ld	a,#0x13
   482F DD BE F2      [19] 1086 	cp	a, -14 (ix)
   4832 3E 00         [ 7] 1087 	ld	a,#0x00
   4834 DD 9E F3      [19] 1088 	sbc	a, -13 (ix)
   4837 E2 3C 48      [10] 1089 	jp	PO, 00393$
   483A EE 80         [ 7] 1090 	xor	a, #0x80
   483C                    1091 00393$:
   483C F2 72 48      [10] 1092 	jp	P,00225$
                           1093 ;src/game/game.c:230: xCursor=NBTILE_W-1;
   483F DD 36 F2 13   [19] 1094 	ld	-14 (ix),#0x13
   4843 DD 36 F3 00   [19] 1095 	ld	-13 (ix),#0x00
                           1096 ;src/game/game.c:231: if(ulx<WIDTH-NBTILE_W)
   4847 DD 7E F4      [19] 1097 	ld	a,-12 (ix)
   484A D6 3C         [ 7] 1098 	sub	a, #0x3C
   484C DD 7E F5      [19] 1099 	ld	a,-11 (ix)
   484F 17            [ 4] 1100 	rla
   4850 3F            [ 4] 1101 	ccf
   4851 1F            [ 4] 1102 	rra
   4852 DE 80         [ 7] 1103 	sbc	a, #0x80
   4854 30 1C         [12] 1104 	jr	NC,00225$
                           1105 ;src/game/game.c:233: ulx+=1;
   4856 DD 34 F4      [23] 1106 	inc	-12 (ix)
   4859 20 03         [12] 1107 	jr	NZ,00394$
   485B DD 34 F5      [23] 1108 	inc	-11 (ix)
   485E                    1109 00394$:
                           1110 ;src/game/game.c:167: drawTile(ulx, uly, xCursor, yCursor);
   485E DD 7E F4      [19] 1111 	ld	a,-12 (ix)
   4861 DD 77 FB      [19] 1112 	ld	-5 (ix),a
                           1113 ;src/game/game.c:234: drawWorld(ulx, uly);
   4864 DD 7E FC      [19] 1114 	ld	a,-4 (ix)
   4867 F5            [11] 1115 	push	af
   4868 33            [ 6] 1116 	inc	sp
   4869 DD 7E FB      [19] 1117 	ld	a,-5 (ix)
   486C F5            [11] 1118 	push	af
   486D 33            [ 6] 1119 	inc	sp
   486E CD 18 54      [17] 1120 	call	_drawWorld
   4871 F1            [10] 1121 	pop	af
                           1122 ;src/game/game.c:239: for(i=0; i<14000; i++) {}
   4872                    1123 00225$:
   4872 21 B0 36      [10] 1124 	ld	hl,#0x36B0
   4875                    1125 00195$:
   4875 2B            [ 6] 1126 	dec	hl
   4876 7C            [ 4] 1127 	ld	a,h
   4877 B5            [ 4] 1128 	or	a,l
   4878 20 FB         [12] 1129 	jr	NZ,00195$
   487A C3 5B 4A      [10] 1130 	jp	00180$
   487D                    1131 00170$:
                           1132 ;src/game/game.c:243: else if ( cpct_isKeyPressed(Key_Space) )
   487D 21 05 80      [10] 1133 	ld	hl,#0x8005
   4880 CD 74 66      [17] 1134 	call	_cpct_isKeyPressed
   4883 7D            [ 4] 1135 	ld	a,l
   4884 B7            [ 4] 1136 	or	a, a
   4885 CA 03 49      [10] 1137 	jp	Z,00167$
                           1138 ;src/game/game.c:245: if(CURSOR_MODE==T_SSNS)
   4888 3A 8E 7A      [13] 1139 	ld	a,(#_CURSOR_MODE + 0)
   488B 3D            [ 4] 1140 	dec	a
   488C 20 07         [12] 1141 	jr	NZ,00143$
                           1142 ;src/game/game.c:246: CURSOR_MODE=T_SSEW;
   488E 21 8E 7A      [10] 1143 	ld	hl,#_CURSOR_MODE + 0
   4891 36 02         [10] 1144 	ld	(hl), #0x02
   4893 18 63         [12] 1145 	jr	00237$
   4895                    1146 00143$:
                           1147 ;src/game/game.c:247: else if(CURSOR_MODE==T_SSEW)
   4895 3A 8E 7A      [13] 1148 	ld	a,(#_CURSOR_MODE + 0)
   4898 D6 02         [ 7] 1149 	sub	a, #0x02
   489A 20 07         [12] 1150 	jr	NZ,00140$
                           1151 ;src/game/game.c:248: CURSOR_MODE=T_SSNS;
   489C 21 8E 7A      [10] 1152 	ld	hl,#_CURSOR_MODE + 0
   489F 36 01         [10] 1153 	ld	(hl), #0x01
   48A1 18 55         [12] 1154 	jr	00237$
   48A3                    1155 00140$:
                           1156 ;src/game/game.c:249: else if(CURSOR_MODE==T_SMNS)
   48A3 3A 8E 7A      [13] 1157 	ld	a,(#_CURSOR_MODE + 0)
   48A6 D6 03         [ 7] 1158 	sub	a, #0x03
   48A8 20 07         [12] 1159 	jr	NZ,00137$
                           1160 ;src/game/game.c:250: CURSOR_MODE=T_SMEW;
   48AA 21 8E 7A      [10] 1161 	ld	hl,#_CURSOR_MODE + 0
   48AD 36 04         [10] 1162 	ld	(hl), #0x04
   48AF 18 47         [12] 1163 	jr	00237$
   48B1                    1164 00137$:
                           1165 ;src/game/game.c:251: else if(CURSOR_MODE==T_SMEW)
   48B1 3A 8E 7A      [13] 1166 	ld	a,(#_CURSOR_MODE + 0)
   48B4 D6 04         [ 7] 1167 	sub	a, #0x04
   48B6 20 07         [12] 1168 	jr	NZ,00134$
                           1169 ;src/game/game.c:252: CURSOR_MODE=T_SMNS;
   48B8 21 8E 7A      [10] 1170 	ld	hl,#_CURSOR_MODE + 0
   48BB 36 03         [10] 1171 	ld	(hl), #0x03
   48BD 18 39         [12] 1172 	jr	00237$
   48BF                    1173 00134$:
                           1174 ;src/game/game.c:253: else if(CURSOR_MODE==T_SLNS)
   48BF 3A 8E 7A      [13] 1175 	ld	a,(#_CURSOR_MODE + 0)
   48C2 D6 05         [ 7] 1176 	sub	a, #0x05
   48C4 20 07         [12] 1177 	jr	NZ,00131$
                           1178 ;src/game/game.c:254: CURSOR_MODE=T_SLEW;
   48C6 21 8E 7A      [10] 1179 	ld	hl,#_CURSOR_MODE + 0
   48C9 36 06         [10] 1180 	ld	(hl), #0x06
   48CB 18 2B         [12] 1181 	jr	00237$
   48CD                    1182 00131$:
                           1183 ;src/game/game.c:255: else if(CURSOR_MODE==T_SLEW)
   48CD 3A 8E 7A      [13] 1184 	ld	a,(#_CURSOR_MODE + 0)
   48D0 D6 06         [ 7] 1185 	sub	a, #0x06
   48D2 20 07         [12] 1186 	jr	NZ,00128$
                           1187 ;src/game/game.c:256: CURSOR_MODE=T_SLNS;
   48D4 21 8E 7A      [10] 1188 	ld	hl,#_CURSOR_MODE + 0
   48D7 36 05         [10] 1189 	ld	(hl), #0x05
   48D9 18 1D         [12] 1190 	jr	00237$
   48DB                    1191 00128$:
                           1192 ;src/game/game.c:257: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   48DB 3A 8E 7A      [13] 1193 	ld	a,(#_CURSOR_MODE + 0)
   48DE FE 07         [ 7] 1194 	cp	a,#0x07
   48E0 38 0A         [12] 1195 	jr	C,00124$
   48E2 D6 10         [ 7] 1196 	sub	a, #0x10
   48E4 30 06         [12] 1197 	jr	NC,00124$
                           1198 ;src/game/game.c:258: CURSOR_MODE+=1;
   48E6 21 8E 7A      [10] 1199 	ld	hl, #_CURSOR_MODE+0
   48E9 34            [11] 1200 	inc	(hl)
   48EA 18 0C         [12] 1201 	jr	00237$
   48EC                    1202 00124$:
                           1203 ;src/game/game.c:259: else if(CURSOR_MODE==T_RNSW)
   48EC 3A 8E 7A      [13] 1204 	ld	a,(#_CURSOR_MODE + 0)
   48EF D6 10         [ 7] 1205 	sub	a, #0x10
   48F1 20 05         [12] 1206 	jr	NZ,00237$
                           1207 ;src/game/game.c:260: CURSOR_MODE=T_REW;
   48F3 21 8E 7A      [10] 1208 	ld	hl,#_CURSOR_MODE + 0
   48F6 36 07         [10] 1209 	ld	(hl), #0x07
                           1210 ;src/game/game.c:262: for(i=0; i<14000; i++) {}
   48F8                    1211 00237$:
   48F8 21 B0 36      [10] 1212 	ld	hl,#0x36B0
   48FB                    1213 00198$:
   48FB 2B            [ 6] 1214 	dec	hl
   48FC 7C            [ 4] 1215 	ld	a,h
   48FD B5            [ 4] 1216 	or	a,l
   48FE 20 FB         [12] 1217 	jr	NZ,00198$
   4900 C3 5B 4A      [10] 1218 	jp	00180$
   4903                    1219 00167$:
                           1220 ;src/game/game.c:265: else if ( cpct_isKeyPressed(Key_Esc) )
   4903 21 08 04      [10] 1221 	ld	hl,#0x0408
   4906 CD 74 66      [17] 1222 	call	_cpct_isKeyPressed
   4909 7D            [ 4] 1223 	ld	a,l
   490A B7            [ 4] 1224 	or	a, a
   490B CA A2 49      [10] 1225 	jp	Z,00164$
                           1226 ;src/game/game.c:268: if(CURSOR_MODE==NONE)
   490E 3A 8E 7A      [13] 1227 	ld	a,(#_CURSOR_MODE + 0)
   4911 B7            [ 4] 1228 	or	a, a
   4912 20 62         [12] 1229 	jr	NZ,00150$
                           1230 ;src/game/game.c:271: const char *txtWindowQuit[] = { 
   4914 21 00 00      [10] 1231 	ld	hl,#0x0000
   4917 39            [11] 1232 	add	hl,sp
   4918 5D            [ 4] 1233 	ld	e,l
   4919 54            [ 4] 1234 	ld	d,h
   491A 36 87         [10] 1235 	ld	(hl),#<(___str_32)
   491C 23            [ 6] 1236 	inc	hl
   491D 36 4A         [10] 1237 	ld	(hl),#>(___str_32)
   491F 6B            [ 4] 1238 	ld	l, e
   4920 62            [ 4] 1239 	ld	h, d
   4921 23            [ 6] 1240 	inc	hl
   4922 23            [ 6] 1241 	inc	hl
   4923 36 95         [10] 1242 	ld	(hl),#<(___str_33)
   4925 23            [ 6] 1243 	inc	hl
   4926 36 4A         [10] 1244 	ld	(hl),#>(___str_33)
   4928 21 04 00      [10] 1245 	ld	hl,#0x0004
   492B 19            [11] 1246 	add	hl,de
   492C 36 96         [10] 1247 	ld	(hl),#<(___str_34)
   492E 23            [ 6] 1248 	inc	hl
   492F 36 4A         [10] 1249 	ld	(hl),#>(___str_34)
                           1250 ;src/game/game.c:277: putM2();
   4931 D5            [11] 1251 	push	de
   4932 CD 78 54      [17] 1252 	call	_putM2
   4935 D1            [10] 1253 	pop	de
                           1254 ;src/game/game.c:278: if(	drawWindow(txtWindowQuit,3,1) == 1)
   4936 21 03 01      [10] 1255 	ld	hl,#0x0103
   4939 E5            [11] 1256 	push	hl
   493A D5            [11] 1257 	push	de
   493B CD 7C 59      [17] 1258 	call	_drawWindow
   493E F1            [10] 1259 	pop	af
   493F F1            [10] 1260 	pop	af
   4940 2D            [ 4] 1261 	dec	l
   4941 20 06         [12] 1262 	jr	NZ,00147$
                           1263 ;src/game/game.c:279: exit=1;
   4943 DD 36 F8 01   [19] 1264 	ld	-8 (ix),#0x01
   4947 18 4E         [12] 1265 	jr	00242$
   4949                    1266 00147$:
                           1267 ;src/game/game.c:282: putM1();
   4949 CD 64 54      [17] 1268 	call	_putM1
                           1269 ;src/game/game.c:283: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   494C 21 00 00      [10] 1270 	ld	hl,#0x0000
   494F E5            [11] 1271 	push	hl
   4950 2E 00         [ 7] 1272 	ld	l, #0x00
   4952 E5            [11] 1273 	push	hl
   4953 CD 94 69      [17] 1274 	call	_cpct_px2byteM1
   4956 F1            [10] 1275 	pop	af
   4957 F1            [10] 1276 	pop	af
   4958 65            [ 4] 1277 	ld	h,l
   4959 01 00 40      [10] 1278 	ld	bc,#0x4000
   495C C5            [11] 1279 	push	bc
   495D E5            [11] 1280 	push	hl
   495E 33            [ 6] 1281 	inc	sp
   495F 21 00 C0      [10] 1282 	ld	hl,#0xC000
   4962 E5            [11] 1283 	push	hl
   4963 CD 86 69      [17] 1284 	call	_cpct_memset
                           1285 ;src/game/game.c:284: drawWorld(ulx, uly);
   4966 DD 7E FC      [19] 1286 	ld	a,-4 (ix)
   4969 F5            [11] 1287 	push	af
   496A 33            [ 6] 1288 	inc	sp
   496B DD 7E FB      [19] 1289 	ld	a,-5 (ix)
   496E F5            [11] 1290 	push	af
   496F 33            [ 6] 1291 	inc	sp
   4970 CD 18 54      [17] 1292 	call	_drawWorld
   4973 F1            [10] 1293 	pop	af
   4974 18 21         [12] 1294 	jr	00242$
   4976                    1295 00150$:
                           1296 ;src/game/game.c:289: CURSOR_MODE=NONE;
   4976 FD 21 8E 7A   [14] 1297 	ld	iy,#_CURSOR_MODE
   497A FD 36 00 00   [19] 1298 	ld	0 (iy),#0x00
                           1299 ;src/game/game.c:290: drawTile(ulx, uly, xCursor, yCursor);
   497E DD 7E FF      [19] 1300 	ld	a,-1 (ix)
   4981 F5            [11] 1301 	push	af
   4982 33            [ 6] 1302 	inc	sp
   4983 DD 7E FD      [19] 1303 	ld	a,-3 (ix)
   4986 F5            [11] 1304 	push	af
   4987 33            [ 6] 1305 	inc	sp
   4988 DD 7E FC      [19] 1306 	ld	a,-4 (ix)
   498B F5            [11] 1307 	push	af
   498C 33            [ 6] 1308 	inc	sp
   498D DD 7E FB      [19] 1309 	ld	a,-5 (ix)
   4990 F5            [11] 1310 	push	af
   4991 33            [ 6] 1311 	inc	sp
   4992 CD 57 51      [17] 1312 	call	_drawTile
   4995 F1            [10] 1313 	pop	af
   4996 F1            [10] 1314 	pop	af
                           1315 ;src/game/game.c:294: for(i=0; i<14000; i++) {}
   4997                    1316 00242$:
   4997 01 B0 36      [10] 1317 	ld	bc,#0x36B0
   499A                    1318 00201$:
   499A 0B            [ 6] 1319 	dec	bc
   499B 78            [ 4] 1320 	ld	a,b
   499C B1            [ 4] 1321 	or	a,c
   499D 20 FB         [12] 1322 	jr	NZ,00201$
   499F C3 5B 4A      [10] 1323 	jp	00180$
   49A2                    1324 00164$:
                           1325 ;src/game/game.c:297: else if ( cpct_isKeyPressed(Key_Return) )
   49A2 21 02 04      [10] 1326 	ld	hl,#0x0402
   49A5 CD 74 66      [17] 1327 	call	_cpct_isKeyPressed
   49A8 7D            [ 4] 1328 	ld	a,l
   49A9 B7            [ 4] 1329 	or	a, a
   49AA CA 5B 4A      [10] 1330 	jp	Z,00180$
                           1331 ;src/game/game.c:300: if(CURSOR_MODE==NONE)
   49AD 3A 8E 7A      [13] 1332 	ld	a,(#_CURSOR_MODE + 0)
   49B0 B7            [ 4] 1333 	or	a, a
   49B1 20 42         [12] 1334 	jr	NZ,00158$
                           1335 ;src/game/game.c:302: menuTile(ulx+xCursor, uly+yCursor);
   49B3 DD 7E F0      [19] 1336 	ld	a, -16 (ix)
   49B6 DD 6E F6      [19] 1337 	ld	l, -10 (ix)
   49B9 85            [ 4] 1338 	add	a, l
   49BA 67            [ 4] 1339 	ld	h,a
   49BB DD 6E F4      [19] 1340 	ld	l,-12 (ix)
   49BE DD 56 F2      [19] 1341 	ld	d,-14 (ix)
   49C1 7D            [ 4] 1342 	ld	a,l
   49C2 82            [ 4] 1343 	add	a, d
   49C3 E5            [11] 1344 	push	hl
   49C4 33            [ 6] 1345 	inc	sp
   49C5 F5            [11] 1346 	push	af
   49C6 33            [ 6] 1347 	inc	sp
   49C7 CD 24 44      [17] 1348 	call	_menuTile
   49CA F1            [10] 1349 	pop	af
                           1350 ;src/game/game.c:303: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   49CB 21 00 00      [10] 1351 	ld	hl,#0x0000
   49CE E5            [11] 1352 	push	hl
   49CF 2E 00         [ 7] 1353 	ld	l, #0x00
   49D1 E5            [11] 1354 	push	hl
   49D2 CD 94 69      [17] 1355 	call	_cpct_px2byteM1
   49D5 F1            [10] 1356 	pop	af
   49D6 F1            [10] 1357 	pop	af
   49D7 65            [ 4] 1358 	ld	h,l
   49D8 01 00 40      [10] 1359 	ld	bc,#0x4000
   49DB C5            [11] 1360 	push	bc
   49DC E5            [11] 1361 	push	hl
   49DD 33            [ 6] 1362 	inc	sp
   49DE 21 00 C0      [10] 1363 	ld	hl,#0xC000
   49E1 E5            [11] 1364 	push	hl
   49E2 CD 86 69      [17] 1365 	call	_cpct_memset
                           1366 ;src/game/game.c:304: drawWorld(ulx, uly);
   49E5 DD 7E FC      [19] 1367 	ld	a,-4 (ix)
   49E8 F5            [11] 1368 	push	af
   49E9 33            [ 6] 1369 	inc	sp
   49EA DD 7E FB      [19] 1370 	ld	a,-5 (ix)
   49ED F5            [11] 1371 	push	af
   49EE 33            [ 6] 1372 	inc	sp
   49EF CD 18 54      [17] 1373 	call	_drawWorld
   49F2 F1            [10] 1374 	pop	af
   49F3 18 4B         [12] 1375 	jr	00248$
   49F5                    1376 00158$:
                           1377 ;src/game/game.c:307: else if(CURSOR_MODE>=T_SSNS)
   49F5 3A 8E 7A      [13] 1378 	ld	a,(#_CURSOR_MODE + 0)
   49F8 D6 01         [ 7] 1379 	sub	a, #0x01
   49FA 38 44         [12] 1380 	jr	C,00248$
                           1381 ;src/game/game.c:309: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   49FC DD 7E F4      [19] 1382 	ld	a,-12 (ix)
   49FF DD 86 F2      [19] 1383 	add	a, -14 (ix)
   4A02 5F            [ 4] 1384 	ld	e,a
   4A03 DD 7E F5      [19] 1385 	ld	a,-11 (ix)
   4A06 DD 8E F3      [19] 1386 	adc	a, -13 (ix)
   4A09 57            [ 4] 1387 	ld	d,a
   4A0A DD 7E F0      [19] 1388 	ld	a,-16 (ix)
   4A0D DD 86 F6      [19] 1389 	add	a, -10 (ix)
   4A10 6F            [ 4] 1390 	ld	l,a
   4A11 DD 7E F1      [19] 1391 	ld	a,-15 (ix)
   4A14 DD 8E F7      [19] 1392 	adc	a, -9 (ix)
   4A17 67            [ 4] 1393 	ld	h,a
   4A18 4D            [ 4] 1394 	ld	c, l
   4A19 44            [ 4] 1395 	ld	b, h
   4A1A 29            [11] 1396 	add	hl, hl
   4A1B 29            [11] 1397 	add	hl, hl
   4A1C 09            [11] 1398 	add	hl, bc
   4A1D 29            [11] 1399 	add	hl, hl
   4A1E 29            [11] 1400 	add	hl, hl
   4A1F 29            [11] 1401 	add	hl, hl
   4A20 29            [11] 1402 	add	hl, hl
   4A21 19            [11] 1403 	add	hl,de
   4A22 3E 8E         [ 7] 1404 	ld	a,#<(_p_world)
   4A24 85            [ 4] 1405 	add	a, l
   4A25 5F            [ 4] 1406 	ld	e,a
   4A26 3E 6B         [ 7] 1407 	ld	a,#>(_p_world)
   4A28 8C            [ 4] 1408 	adc	a, h
   4A29 57            [ 4] 1409 	ld	d,a
   4A2A 3A 8E 7A      [13] 1410 	ld	a,(#_CURSOR_MODE + 0)
   4A2D C6 09         [ 7] 1411 	add	a, #0x09
   4A2F 12            [ 7] 1412 	ld	(de),a
                           1413 ;src/game/game.c:312: if(CURSOR_MODE<=T_SLEW)
   4A30 3E 06         [ 7] 1414 	ld	a,#0x06
   4A32 FD 21 8E 7A   [14] 1415 	ld	iy,#_CURSOR_MODE
   4A36 FD 96 00      [19] 1416 	sub	a, 0 (iy)
   4A39 38 05         [12] 1417 	jr	C,00248$
                           1418 ;src/game/game.c:313: CURSOR_MODE=NONE;
   4A3B 21 8E 7A      [10] 1419 	ld	hl,#_CURSOR_MODE + 0
   4A3E 36 00         [10] 1420 	ld	(hl), #0x00
                           1421 ;src/game/game.c:317: for(i=0; i<14000; i++) {}
   4A40                    1422 00248$:
   4A40 DD 36 F9 B0   [19] 1423 	ld	-7 (ix),#0xB0
   4A44 DD 36 FA 36   [19] 1424 	ld	-6 (ix),#0x36
   4A48                    1425 00204$:
   4A48 DD 6E F9      [19] 1426 	ld	l,-7 (ix)
   4A4B DD 66 FA      [19] 1427 	ld	h,-6 (ix)
   4A4E 2B            [ 6] 1428 	dec	hl
   4A4F DD 75 F9      [19] 1429 	ld	-7 (ix),l
   4A52 DD 74 FA      [19] 1430 	ld	-6 (ix), h
   4A55 7C            [ 4] 1431 	ld	a, h
   4A56 DD B6 F9      [19] 1432 	or	a,-7 (ix)
   4A59 20 ED         [12] 1433 	jr	NZ,00204$
   4A5B                    1434 00180$:
                           1435 ;src/game/game.c:321: drawCursor(xCursor, yCursor, 0);
   4A5B DD 56 F6      [19] 1436 	ld	d,-10 (ix)
   4A5E DD 46 F2      [19] 1437 	ld	b,-14 (ix)
   4A61 AF            [ 4] 1438 	xor	a, a
   4A62 F5            [11] 1439 	push	af
   4A63 33            [ 6] 1440 	inc	sp
   4A64 D5            [11] 1441 	push	de
   4A65 33            [ 6] 1442 	inc	sp
   4A66 C5            [11] 1443 	push	bc
   4A67 33            [ 6] 1444 	inc	sp
   4A68 CD D0 4A      [17] 1445 	call	_drawCursor
   4A6B F1            [10] 1446 	pop	af
   4A6C 33            [ 6] 1447 	inc	sp
                           1448 ;src/game/game.c:322: drawScrolls(ulx, uly);
   4A6D DD 7E FC      [19] 1449 	ld	a,-4 (ix)
   4A70 F5            [11] 1450 	push	af
   4A71 33            [ 6] 1451 	inc	sp
   4A72 DD 7E FB      [19] 1452 	ld	a,-5 (ix)
   4A75 F5            [11] 1453 	push	af
   4A76 33            [ 6] 1454 	inc	sp
   4A77 CD 7F 53      [17] 1455 	call	_drawScrolls
   4A7A F1            [10] 1456 	pop	af
                           1457 ;src/game/game.c:324: while(!exit);
   4A7B DD 7E F8      [19] 1458 	ld	a,-8 (ix)
   4A7E B7            [ 4] 1459 	or	a, a
   4A7F CA 53 46      [10] 1460 	jp	Z,00181$
   4A82 DD F9         [10] 1461 	ld	sp, ix
   4A84 DD E1         [14] 1462 	pop	ix
   4A86 C9            [10] 1463 	ret
   4A87                    1464 ___str_32:
   4A87 52 65 61 6C 6C 79  1465 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   4A94 00                 1466 	.db 0x00
   4A95                    1467 ___str_33:
   4A95 00                 1468 	.db 0x00
   4A96                    1469 ___str_34:
   4A96 50 72 65 73 73 20  1470 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   4ABB 00                 1471 	.db 0x00
   4ABC                    1472 ___str_35:
   4ABC 47 65 6E 65 72 61  1473 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   4ACF 00                 1474 	.db 0x00
                           1475 	.area _CODE
                           1476 	.area _INITIALIZER
                           1477 	.area _CABS (ABS)
