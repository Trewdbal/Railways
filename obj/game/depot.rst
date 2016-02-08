                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 22:33:05 2016
                              5 ;--------------------------------------------------------
                              6 	.module depot
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _drawDepot
                             13 	.globl _drawWindow
                             14 	.globl _drawMenu
                             15 	.globl _putM2
                             16 	.globl _putM0
                             17 	.globl _realloc
                             18 	.globl _malloc
                             19 	.globl _floorf
                             20 	.globl _cpct_getScreenPtr
                             21 	.globl _cpct_drawSolidBox
                             22 	.globl _cpct_drawSprite
                             23 	.globl _cpct_px2byteM0
                             24 	.globl _cpct_isKeyPressed
                             25 	.globl _cpct_scanKeyboard
                             26 	.globl _cpct_memset
                             27 	.globl _railroadDepot
                             28 	.globl _drawLocomotive
                             29 	.globl _drawAllLocomotives
                             30 	.globl _confirmBuyLocomotive
                             31 	.globl _buyLocomotive
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
                             63 ;src/game/depot.c:3: void drawDepot()
                             64 ;	---------------------------------
                             65 ; Function drawDepot
                             66 ; ---------------------------------
   4130                      67 _drawDepot::
   4130 DD E5         [15]   68 	push	ix
   4132 DD 21 00 00   [14]   69 	ld	ix,#0
   4136 DD 39         [15]   70 	add	ix,sp
   4138 F5            [11]   71 	push	af
                             72 ;src/game/depot.c:9: cpct_clearScreen(0b11111111);
   4139 21 00 40      [10]   73 	ld	hl,#0x4000
   413C E5            [11]   74 	push	hl
   413D 3E FF         [ 7]   75 	ld	a,#0xFF
   413F F5            [11]   76 	push	af
   4140 33            [ 6]   77 	inc	sp
   4141 26 C0         [ 7]   78 	ld	h, #0xC0
   4143 E5            [11]   79 	push	hl
   4144 CD 97 79      [17]   80 	call	_cpct_memset
                             81 ;src/game/depot.c:12: for(iTrain=0; iTrain<12; iTrain++)
   4147 11 00 00      [10]   82 	ld	de,#0x0000
   414A                      83 00104$:
                             84 ;src/game/depot.c:14: p_video = cpct_getScreenPtr(SCR_VMEM, 0, 20+iTrain*15);
   414A 7B            [ 4]   85 	ld	a,e
   414B C6 14         [ 7]   86 	add	a, #0x14
   414D D5            [11]   87 	push	de
   414E F5            [11]   88 	push	af
   414F 33            [ 6]   89 	inc	sp
   4150 AF            [ 4]   90 	xor	a, a
   4151 F5            [11]   91 	push	af
   4152 33            [ 6]   92 	inc	sp
   4153 21 00 C0      [10]   93 	ld	hl,#0xC000
   4156 E5            [11]   94 	push	hl
   4157 CD CB 7A      [17]   95 	call	_cpct_getScreenPtr
   415A D1            [10]   96 	pop	de
                             97 ;src/game/depot.c:15: cpct_drawSolidBox(p_video, 0b00000000, 60, 1);
   415B 4D            [ 4]   98 	ld	c, l
   415C 44            [ 4]   99 	ld	b, h
   415D D5            [11]  100 	push	de
   415E 21 3C 01      [10]  101 	ld	hl,#0x013C
   4161 E5            [11]  102 	push	hl
   4162 AF            [ 4]  103 	xor	a, a
   4163 F5            [11]  104 	push	af
   4164 33            [ 6]  105 	inc	sp
   4165 C5            [11]  106 	push	bc
   4166 CD 12 7A      [17]  107 	call	_cpct_drawSolidBox
   4169 F1            [10]  108 	pop	af
   416A F1            [10]  109 	pop	af
   416B 33            [ 6]  110 	inc	sp
   416C D1            [10]  111 	pop	de
                            112 ;src/game/depot.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, 0, 21+iTrain*15);
   416D 7B            [ 4]  113 	ld	a,e
   416E C6 15         [ 7]  114 	add	a, #0x15
   4170 D5            [11]  115 	push	de
   4171 F5            [11]  116 	push	af
   4172 33            [ 6]  117 	inc	sp
   4173 AF            [ 4]  118 	xor	a, a
   4174 F5            [11]  119 	push	af
   4175 33            [ 6]  120 	inc	sp
   4176 21 00 C0      [10]  121 	ld	hl,#0xC000
   4179 E5            [11]  122 	push	hl
   417A CD CB 7A      [17]  123 	call	_cpct_getScreenPtr
   417D D1            [10]  124 	pop	de
                            125 ;src/game/depot.c:17: cpct_drawSolidBox(p_video, 0b00110011, 60, 1);
   417E 4D            [ 4]  126 	ld	c, l
   417F 44            [ 4]  127 	ld	b, h
   4180 D5            [11]  128 	push	de
   4181 21 3C 01      [10]  129 	ld	hl,#0x013C
   4184 E5            [11]  130 	push	hl
   4185 3E 33         [ 7]  131 	ld	a,#0x33
   4187 F5            [11]  132 	push	af
   4188 33            [ 6]  133 	inc	sp
   4189 C5            [11]  134 	push	bc
   418A CD 12 7A      [17]  135 	call	_cpct_drawSolidBox
   418D F1            [10]  136 	pop	af
   418E F1            [10]  137 	pop	af
   418F 33            [ 6]  138 	inc	sp
   4190 D1            [10]  139 	pop	de
                            140 ;src/game/depot.c:12: for(iTrain=0; iTrain<12; iTrain++)
   4191 7B            [ 4]  141 	ld	a,e
   4192 C6 0F         [ 7]  142 	add	a, #0x0F
   4194 5F            [ 4]  143 	ld	e,a
   4195 14            [ 4]  144 	inc	d
   4196 7A            [ 4]  145 	ld	a,d
   4197 D6 0C         [ 7]  146 	sub	a, #0x0C
   4199 38 AF         [12]  147 	jr	C,00104$
                            148 ;src/game/depot.c:21: p_video = cpct_getScreenPtr(SCR_VMEM, 60, 0);
   419B 21 3C 00      [10]  149 	ld	hl,#0x003C
   419E E5            [11]  150 	push	hl
   419F 21 00 C0      [10]  151 	ld	hl,#0xC000
   41A2 E5            [11]  152 	push	hl
   41A3 CD CB 7A      [17]  153 	call	_cpct_getScreenPtr
                            154 ;src/game/depot.c:22: cpct_drawSolidBox(p_video, 0b00111111, 1, 200);
   41A6 EB            [ 4]  155 	ex	de,hl
   41A7 21 01 C8      [10]  156 	ld	hl,#0xC801
   41AA E5            [11]  157 	push	hl
   41AB 3E 3F         [ 7]  158 	ld	a,#0x3F
   41AD F5            [11]  159 	push	af
   41AE 33            [ 6]  160 	inc	sp
   41AF D5            [11]  161 	push	de
   41B0 CD 12 7A      [17]  162 	call	_cpct_drawSolidBox
   41B3 F1            [10]  163 	pop	af
   41B4 F1            [10]  164 	pop	af
   41B5 33            [ 6]  165 	inc	sp
                            166 ;src/game/depot.c:25: for(iTrain=0; iTrain<nbTrainList; iTrain++)
   41B6 DD 36 FE 00   [19]  167 	ld	-2 (ix),#0x00
   41BA DD 36 FF 00   [19]  168 	ld	-1 (ix),#0x00
   41BE                     169 00109$:
   41BE 21 C1 8A      [10]  170 	ld	hl,#_nbTrainList
   41C1 DD 7E FE      [19]  171 	ld	a,-2 (ix)
   41C4 96            [ 7]  172 	sub	a, (hl)
   41C5 30 62         [12]  173 	jr	NC,00111$
                            174 ;src/game/depot.c:28: for(iWagon=0; iWagon<8; iWagon++)
   41C7 DD 7E FF      [19]  175 	ld	a,-1 (ix)
   41CA C6 0A         [ 7]  176 	add	a, #0x0A
   41CC 57            [ 4]  177 	ld	d,a
   41CD 1E 00         [ 7]  178 	ld	e,#0x00
   41CF 0E 00         [ 7]  179 	ld	c,#0x00
   41D1                     180 00106$:
                            181 ;src/game/depot.c:30: p_video = cpct_getScreenPtr(SCR_VMEM, 5+iWagon*5, 10+iTrain*15);
   41D1 79            [ 4]  182 	ld	a,c
   41D2 C6 05         [ 7]  183 	add	a, #0x05
   41D4 4F            [ 4]  184 	ld	c,a
   41D5 C5            [11]  185 	push	bc
   41D6 D5            [11]  186 	push	de
   41D7 D5            [11]  187 	push	de
   41D8 33            [ 6]  188 	inc	sp
   41D9 79            [ 4]  189 	ld	a,c
   41DA F5            [11]  190 	push	af
   41DB 33            [ 6]  191 	inc	sp
   41DC 21 00 C0      [10]  192 	ld	hl,#0xC000
   41DF E5            [11]  193 	push	hl
   41E0 CD CB 7A      [17]  194 	call	_cpct_getScreenPtr
   41E3 D1            [10]  195 	pop	de
   41E4 C1            [10]  196 	pop	bc
                            197 ;src/game/depot.c:31: cpct_drawSprite(wagon_M2, p_video, 5, 10);
   41E5 E5            [11]  198 	push	hl
   41E6 FD E1         [14]  199 	pop	iy
   41E8 C5            [11]  200 	push	bc
   41E9 D5            [11]  201 	push	de
   41EA 21 05 0A      [10]  202 	ld	hl,#0x0A05
   41ED E5            [11]  203 	push	hl
   41EE FD E5         [15]  204 	push	iy
   41F0 21 54 6A      [10]  205 	ld	hl,#_wagon_M2
   41F3 E5            [11]  206 	push	hl
   41F4 CD 9D 74      [17]  207 	call	_cpct_drawSprite
   41F7 D1            [10]  208 	pop	de
   41F8 C1            [10]  209 	pop	bc
                            210 ;src/game/depot.c:28: for(iWagon=0; iWagon<8; iWagon++)
   41F9 1C            [ 4]  211 	inc	e
                            212 ;src/game/depot.c:35: p_video = cpct_getScreenPtr(SCR_VMEM, 5+iWagon*5, 10+iTrain*15);
   41FA 7B            [ 4]  213 	ld	a,e
   41FB FE 08         [ 7]  214 	cp	a,#0x08
   41FD 38 D2         [12]  215 	jr	C,00106$
   41FF 87            [ 4]  216 	add	a, a
   4200 87            [ 4]  217 	add	a, a
   4201 83            [ 4]  218 	add	a, e
   4202 C6 05         [ 7]  219 	add	a, #0x05
   4204 D5            [11]  220 	push	de
   4205 33            [ 6]  221 	inc	sp
   4206 F5            [11]  222 	push	af
   4207 33            [ 6]  223 	inc	sp
   4208 21 00 C0      [10]  224 	ld	hl,#0xC000
   420B E5            [11]  225 	push	hl
   420C CD CB 7A      [17]  226 	call	_cpct_getScreenPtr
                            227 ;src/game/depot.c:36: cpct_drawSprite(l130B_M2, p_video, 10, 10);
   420F EB            [ 4]  228 	ex	de,hl
   4210 01 86 6A      [10]  229 	ld	bc,#_l130B_M2
   4213 21 0A 0A      [10]  230 	ld	hl,#0x0A0A
   4216 E5            [11]  231 	push	hl
   4217 D5            [11]  232 	push	de
   4218 C5            [11]  233 	push	bc
   4219 CD 9D 74      [17]  234 	call	_cpct_drawSprite
                            235 ;src/game/depot.c:25: for(iTrain=0; iTrain<nbTrainList; iTrain++)
   421C DD 7E FF      [19]  236 	ld	a,-1 (ix)
   421F C6 0F         [ 7]  237 	add	a, #0x0F
   4221 DD 77 FF      [19]  238 	ld	-1 (ix),a
   4224 DD 34 FE      [23]  239 	inc	-2 (ix)
   4227 18 95         [12]  240 	jr	00109$
   4229                     241 00111$:
   4229 DD F9         [10]  242 	ld	sp, ix
   422B DD E1         [14]  243 	pop	ix
   422D C9            [10]  244 	ret
                            245 ;src/game/depot.c:40: void railroadDepot()
                            246 ;	---------------------------------
                            247 ; Function railroadDepot
                            248 ; ---------------------------------
   422E                     249 _railroadDepot::
   422E DD E5         [15]  250 	push	ix
   4230 DD 21 00 00   [14]  251 	ld	ix,#0
   4234 DD 39         [15]  252 	add	ix,sp
   4236 F5            [11]  253 	push	af
   4237 F5            [11]  254 	push	af
   4238 3B            [ 6]  255 	dec	sp
                            256 ;src/game/depot.c:42: u8 exit=0;
   4239 DD 36 FF 00   [19]  257 	ld	-1 (ix),#0x00
                            258 ;src/game/depot.c:44: drawDepot();
   423D CD 30 41      [17]  259 	call	_drawDepot
                            260 ;src/game/depot.c:46: do
   4240                     261 00108$:
                            262 ;src/game/depot.c:48: cpct_scanKeyboard(); 
   4240 CD EB 7A      [17]  263 	call	_cpct_scanKeyboard
                            264 ;src/game/depot.c:50: if ( cpct_isKeyPressed(Key_Esc) )
   4243 21 08 04      [10]  265 	ld	hl,#0x0408
   4246 CD 45 74      [17]  266 	call	_cpct_isKeyPressed
   4249 7D            [ 4]  267 	ld	a,l
   424A B7            [ 4]  268 	or	a, a
   424B 28 06         [12]  269 	jr	Z,00106$
                            270 ;src/game/depot.c:51: exit=1;
   424D DD 36 FF 01   [19]  271 	ld	-1 (ix),#0x01
   4251 18 32         [12]  272 	jr	00109$
   4253                     273 00106$:
                            274 ;src/game/depot.c:52: else if(cpct_isKeyPressed(Key_Return) )
   4253 21 02 04      [10]  275 	ld	hl,#0x0402
   4256 CD 45 74      [17]  276 	call	_cpct_isKeyPressed
   4259 7D            [ 4]  277 	ld	a,l
   425A B7            [ 4]  278 	or	a, a
   425B 28 28         [12]  279 	jr	Z,00109$
                            280 ;src/game/depot.c:54: const char *txtMenuChoice[] = { 
   425D 21 00 00      [10]  281 	ld	hl,#0x0000
   4260 39            [11]  282 	add	hl,sp
   4261 5D            [ 4]  283 	ld	e,l
   4262 54            [ 4]  284 	ld	d,h
   4263 36 90         [10]  285 	ld	(hl),#<(___str_0)
   4265 23            [ 6]  286 	inc	hl
   4266 36 42         [10]  287 	ld	(hl),#>(___str_0)
   4268 6B            [ 4]  288 	ld	l, e
   4269 62            [ 4]  289 	ld	h, d
   426A 23            [ 6]  290 	inc	hl
   426B 23            [ 6]  291 	inc	hl
   426C 36 A1         [10]  292 	ld	(hl),#<(___str_1)
   426E 23            [ 6]  293 	inc	hl
   426F 36 42         [10]  294 	ld	(hl),#>(___str_1)
                            295 ;src/game/depot.c:58: u8 menuChoice = drawMenu(txtMenuChoice,2);
   4271 3E 02         [ 7]  296 	ld	a,#0x02
   4273 F5            [11]  297 	push	af
   4274 33            [ 6]  298 	inc	sp
   4275 D5            [11]  299 	push	de
   4276 CD 93 5F      [17]  300 	call	_drawMenu
   4279 F1            [10]  301 	pop	af
   427A 33            [ 6]  302 	inc	sp
   427B 7D            [ 4]  303 	ld	a,l
                            304 ;src/game/depot.c:60: if(menuChoice == 0)
   427C B7            [ 4]  305 	or	a, a
   427D 20 03         [12]  306 	jr	NZ,00102$
                            307 ;src/game/depot.c:61: buyLocomotive();
   427F CD F6 47      [17]  308 	call	_buyLocomotive
   4282                     309 00102$:
                            310 ;src/game/depot.c:63: drawDepot();
   4282 CD 30 41      [17]  311 	call	_drawDepot
   4285                     312 00109$:
                            313 ;src/game/depot.c:67: while(!exit);
   4285 DD 7E FF      [19]  314 	ld	a,-1 (ix)
   4288 B7            [ 4]  315 	or	a, a
   4289 28 B5         [12]  316 	jr	Z,00108$
   428B DD F9         [10]  317 	ld	sp, ix
   428D DD E1         [14]  318 	pop	ix
   428F C9            [10]  319 	ret
   4290                     320 ___str_0:
   4290 42 75 79 20 61 20   321 	.ascii "Buy a locomotive"
        6C 6F 63 6F 6D 6F
        74 69 76 65
   42A0 00                  322 	.db 0x00
   42A1                     323 ___str_1:
   42A1 42 61 63 6B 20 74   324 	.ascii "Back to depot"
        6F 20 64 65 70 6F
        74
   42AE 00                  325 	.db 0x00
                            326 ;src/game/depot.c:70: void drawLocomotive(u8 i, u8 iSelect)
                            327 ;	---------------------------------
                            328 ; Function drawLocomotive
                            329 ; ---------------------------------
   42AF                     330 _drawLocomotive::
   42AF DD E5         [15]  331 	push	ix
   42B1 DD 21 00 00   [14]  332 	ld	ix,#0
   42B5 DD 39         [15]  333 	add	ix,sp
   42B7 21 F7 FF      [10]  334 	ld	hl,#-9
   42BA 39            [11]  335 	add	hl,sp
   42BB F9            [ 6]  336 	ld	sp,hl
                            337 ;src/game/depot.c:73: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4), 30+40*(i%4));
   42BC DD 7E 04      [19]  338 	ld	a,4 (ix)
   42BF E6 03         [ 7]  339 	and	a, #0x03
   42C1 4F            [ 4]  340 	ld	c,a
   42C2 87            [ 4]  341 	add	a, a
   42C3 87            [ 4]  342 	add	a, a
   42C4 81            [ 4]  343 	add	a, c
   42C5 87            [ 4]  344 	add	a, a
   42C6 87            [ 4]  345 	add	a, a
   42C7 87            [ 4]  346 	add	a, a
   42C8 DD 77 F8      [19]  347 	ld	-8 (ix), a
   42CB C6 1E         [ 7]  348 	add	a, #0x1E
   42CD DD 77 F9      [19]  349 	ld	-7 (ix),a
   42D0 DD 7E 04      [19]  350 	ld	a,4 (ix)
   42D3 0F            [ 4]  351 	rrca
   42D4 0F            [ 4]  352 	rrca
   42D5 E6 3F         [ 7]  353 	and	a,#0x3F
   42D7 DD 77 F7      [19]  354 	ld	-9 (ix), a
   42DA F5            [11]  355 	push	af
   42DB 33            [ 6]  356 	inc	sp
   42DC CD 05 93      [17]  357 	call	___uchar2fs
   42DF 33            [ 6]  358 	inc	sp
   42E0 DD 72 FF      [19]  359 	ld	-1 (ix),d
   42E3 DD 73 FE      [19]  360 	ld	-2 (ix),e
   42E6 DD 74 FD      [19]  361 	ld	-3 (ix),h
   42E9 DD 75 FC      [19]  362 	ld	-4 (ix),l
   42EC DD 6E FE      [19]  363 	ld	l,-2 (ix)
   42EF DD 66 FF      [19]  364 	ld	h,-1 (ix)
   42F2 E5            [11]  365 	push	hl
   42F3 DD 6E FC      [19]  366 	ld	l,-4 (ix)
   42F6 DD 66 FD      [19]  367 	ld	h,-3 (ix)
   42F9 E5            [11]  368 	push	hl
   42FA CD 0C 78      [17]  369 	call	_floorf
   42FD F1            [10]  370 	pop	af
   42FE F1            [10]  371 	pop	af
   42FF EB            [ 4]  372 	ex	de, hl
   4300 E5            [11]  373 	push	hl
   4301 D5            [11]  374 	push	de
   4302 21 C8 41      [10]  375 	ld	hl,#0x41C8
   4305 E5            [11]  376 	push	hl
   4306 21 00 00      [10]  377 	ld	hl,#0x0000
   4309 E5            [11]  378 	push	hl
   430A CD C2 8A      [17]  379 	call	___fsmul
   430D F1            [10]  380 	pop	af
   430E F1            [10]  381 	pop	af
   430F F1            [10]  382 	pop	af
   4310 F1            [10]  383 	pop	af
   4311 4D            [ 4]  384 	ld	c,l
   4312 44            [ 4]  385 	ld	b,h
   4313 21 A0 40      [10]  386 	ld	hl,#0x40A0
   4316 E5            [11]  387 	push	hl
   4317 21 00 00      [10]  388 	ld	hl,#0x0000
   431A E5            [11]  389 	push	hl
   431B D5            [11]  390 	push	de
   431C C5            [11]  391 	push	bc
   431D CD B0 8E      [17]  392 	call	___fsadd
   4320 F1            [10]  393 	pop	af
   4321 F1            [10]  394 	pop	af
   4322 F1            [10]  395 	pop	af
   4323 F1            [10]  396 	pop	af
   4324 D5            [11]  397 	push	de
   4325 E5            [11]  398 	push	hl
   4326 CD 1B 93      [17]  399 	call	___fs2uchar
   4329 F1            [10]  400 	pop	af
   432A F1            [10]  401 	pop	af
   432B 55            [ 4]  402 	ld	d,l
   432C DD 7E F9      [19]  403 	ld	a,-7 (ix)
   432F F5            [11]  404 	push	af
   4330 33            [ 6]  405 	inc	sp
   4331 D5            [11]  406 	push	de
   4332 33            [ 6]  407 	inc	sp
   4333 21 00 C0      [10]  408 	ld	hl,#0xC000
   4336 E5            [11]  409 	push	hl
   4337 CD CB 7A      [17]  410 	call	_cpct_getScreenPtr
                            411 ;src/game/depot.c:77: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   433A DD 75 FA      [19]  412 	ld	-6 (ix),l
   433D DD 74 FB      [19]  413 	ld	-5 (ix),h
                            414 ;src/game/depot.c:76: if(i==iSelect)
   4340 DD 7E 04      [19]  415 	ld	a,4 (ix)
   4343 DD 96 05      [19]  416 	sub	a, 5 (ix)
   4346 20 1D         [12]  417 	jr	NZ,00102$
                            418 ;src/game/depot.c:77: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4348 21 05 05      [10]  419 	ld	hl,#0x0505
   434B E5            [11]  420 	push	hl
   434C CD 7B 79      [17]  421 	call	_cpct_px2byteM0
   434F 55            [ 4]  422 	ld	d,l
   4350 21 16 16      [10]  423 	ld	hl,#0x1616
   4353 E5            [11]  424 	push	hl
   4354 D5            [11]  425 	push	de
   4355 33            [ 6]  426 	inc	sp
   4356 DD 6E FA      [19]  427 	ld	l,-6 (ix)
   4359 DD 66 FB      [19]  428 	ld	h,-5 (ix)
   435C E5            [11]  429 	push	hl
   435D CD 12 7A      [17]  430 	call	_cpct_drawSolidBox
   4360 F1            [10]  431 	pop	af
   4361 F1            [10]  432 	pop	af
   4362 33            [ 6]  433 	inc	sp
   4363 18 1B         [12]  434 	jr	00103$
   4365                     435 00102$:
                            436 ;src/game/depot.c:79: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
   4365 21 0B 0B      [10]  437 	ld	hl,#0x0B0B
   4368 E5            [11]  438 	push	hl
   4369 CD 7B 79      [17]  439 	call	_cpct_px2byteM0
   436C 55            [ 4]  440 	ld	d,l
   436D 21 16 16      [10]  441 	ld	hl,#0x1616
   4370 E5            [11]  442 	push	hl
   4371 D5            [11]  443 	push	de
   4372 33            [ 6]  444 	inc	sp
   4373 DD 6E FA      [19]  445 	ld	l,-6 (ix)
   4376 DD 66 FB      [19]  446 	ld	h,-5 (ix)
   4379 E5            [11]  447 	push	hl
   437A CD 12 7A      [17]  448 	call	_cpct_drawSolidBox
   437D F1            [10]  449 	pop	af
   437E F1            [10]  450 	pop	af
   437F 33            [ 6]  451 	inc	sp
   4380                     452 00103$:
                            453 ;src/game/depot.c:81: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4)+1, 30+40*(i%4)+1);
   4380 DD 7E F8      [19]  454 	ld	a,-8 (ix)
   4383 C6 1F         [ 7]  455 	add	a, #0x1F
   4385 DD 77 FA      [19]  456 	ld	-6 (ix),a
   4388 DD 6E FE      [19]  457 	ld	l,-2 (ix)
   438B DD 66 FF      [19]  458 	ld	h,-1 (ix)
   438E E5            [11]  459 	push	hl
   438F DD 6E FC      [19]  460 	ld	l,-4 (ix)
   4392 DD 66 FD      [19]  461 	ld	h,-3 (ix)
   4395 E5            [11]  462 	push	hl
   4396 CD 0C 78      [17]  463 	call	_floorf
   4399 F1            [10]  464 	pop	af
   439A F1            [10]  465 	pop	af
   439B EB            [ 4]  466 	ex	de, hl
   439C E5            [11]  467 	push	hl
   439D D5            [11]  468 	push	de
   439E 21 C8 41      [10]  469 	ld	hl,#0x41C8
   43A1 E5            [11]  470 	push	hl
   43A2 21 00 00      [10]  471 	ld	hl,#0x0000
   43A5 E5            [11]  472 	push	hl
   43A6 CD C2 8A      [17]  473 	call	___fsmul
   43A9 F1            [10]  474 	pop	af
   43AA F1            [10]  475 	pop	af
   43AB F1            [10]  476 	pop	af
   43AC F1            [10]  477 	pop	af
   43AD 4D            [ 4]  478 	ld	c,l
   43AE 44            [ 4]  479 	ld	b,h
   43AF 21 C0 40      [10]  480 	ld	hl,#0x40C0
   43B2 E5            [11]  481 	push	hl
   43B3 21 00 00      [10]  482 	ld	hl,#0x0000
   43B6 E5            [11]  483 	push	hl
   43B7 D5            [11]  484 	push	de
   43B8 C5            [11]  485 	push	bc
   43B9 CD B0 8E      [17]  486 	call	___fsadd
   43BC F1            [10]  487 	pop	af
   43BD F1            [10]  488 	pop	af
   43BE F1            [10]  489 	pop	af
   43BF F1            [10]  490 	pop	af
   43C0 D5            [11]  491 	push	de
   43C1 E5            [11]  492 	push	hl
   43C2 CD 1B 93      [17]  493 	call	___fs2uchar
   43C5 F1            [10]  494 	pop	af
   43C6 F1            [10]  495 	pop	af
   43C7 55            [ 4]  496 	ld	d,l
   43C8 DD 7E FA      [19]  497 	ld	a,-6 (ix)
   43CB F5            [11]  498 	push	af
   43CC 33            [ 6]  499 	inc	sp
   43CD D5            [11]  500 	push	de
   43CE 33            [ 6]  501 	inc	sp
   43CF 21 00 C0      [10]  502 	ld	hl,#0xC000
   43D2 E5            [11]  503 	push	hl
   43D3 CD CB 7A      [17]  504 	call	_cpct_getScreenPtr
                            505 ;src/game/depot.c:77: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   43D6 4D            [ 4]  506 	ld	c, l
   43D7 44            [ 4]  507 	ld	b, h
                            508 ;src/game/depot.c:83: if(i<locDelocked)
   43D8 21 C0 8A      [10]  509 	ld	hl,#_locDelocked
   43DB DD 7E 04      [19]  510 	ld	a,4 (ix)
   43DE 96            [ 7]  511 	sub	a, (hl)
   43DF 30 52         [12]  512 	jr	NC,00110$
                            513 ;src/game/depot.c:85: switch(i)
   43E1 3E 03         [ 7]  514 	ld	a,#0x03
   43E3 DD 96 04      [19]  515 	sub	a, 4 (ix)
   43E6 38 57         [12]  516 	jr	C,00112$
   43E8 DD 5E 04      [19]  517 	ld	e,4 (ix)
   43EB 16 00         [ 7]  518 	ld	d,#0x00
   43ED 21 F3 43      [10]  519 	ld	hl,#00128$
   43F0 19            [11]  520 	add	hl,de
   43F1 19            [11]  521 	add	hl,de
                            522 ;src/game/depot.c:87: case 0:
   43F2 E9            [ 4]  523 	jp	(hl)
   43F3                     524 00128$:
   43F3 18 06         [12]  525 	jr	00104$
   43F5 18 12         [12]  526 	jr	00105$
   43F7 18 1E         [12]  527 	jr	00106$
   43F9 18 2A         [12]  528 	jr	00107$
   43FB                     529 00104$:
                            530 ;src/game/depot.c:88: cpct_drawSprite(l130B, p_video, 20, 20);
   43FB 11 EA 6A      [10]  531 	ld	de,#_l130B+0
   43FE 21 14 14      [10]  532 	ld	hl,#0x1414
   4401 E5            [11]  533 	push	hl
   4402 C5            [11]  534 	push	bc
   4403 D5            [11]  535 	push	de
   4404 CD 9D 74      [17]  536 	call	_cpct_drawSprite
                            537 ;src/game/depot.c:89: break;
   4407 18 36         [12]  538 	jr	00112$
                            539 ;src/game/depot.c:90: case 1:
   4409                     540 00105$:
                            541 ;src/game/depot.c:91: cpct_drawSprite(l141TA, p_video, 20, 20);
   4409 11 7A 6C      [10]  542 	ld	de,#_l141TA+0
   440C 21 14 14      [10]  543 	ld	hl,#0x1414
   440F E5            [11]  544 	push	hl
   4410 C5            [11]  545 	push	bc
   4411 D5            [11]  546 	push	de
   4412 CD 9D 74      [17]  547 	call	_cpct_drawSprite
                            548 ;src/game/depot.c:92: break;
   4415 18 28         [12]  549 	jr	00112$
                            550 ;src/game/depot.c:93: case 2:
   4417                     551 00106$:
                            552 ;src/game/depot.c:94: cpct_drawSprite(l142AT, p_video, 20, 20);
   4417 11 0A 6E      [10]  553 	ld	de,#_l142AT+0
   441A 21 14 14      [10]  554 	ld	hl,#0x1414
   441D E5            [11]  555 	push	hl
   441E C5            [11]  556 	push	bc
   441F D5            [11]  557 	push	de
   4420 CD 9D 74      [17]  558 	call	_cpct_drawSprite
                            559 ;src/game/depot.c:95: break;
   4423 18 1A         [12]  560 	jr	00112$
                            561 ;src/game/depot.c:96: case 3:
   4425                     562 00107$:
                            563 ;src/game/depot.c:97: cpct_drawSprite(l141P, p_video, 20, 20);
   4425 11 9A 6F      [10]  564 	ld	de,#_l141P+0
   4428 21 14 14      [10]  565 	ld	hl,#0x1414
   442B E5            [11]  566 	push	hl
   442C C5            [11]  567 	push	bc
   442D D5            [11]  568 	push	de
   442E CD 9D 74      [17]  569 	call	_cpct_drawSprite
                            570 ;src/game/depot.c:99: }
   4431 18 0C         [12]  571 	jr	00112$
   4433                     572 00110$:
                            573 ;src/game/depot.c:105: cpct_drawSprite(lock, p_video, 20, 20);
   4433 11 C4 68      [10]  574 	ld	de,#_lock
   4436 21 14 14      [10]  575 	ld	hl,#0x1414
   4439 E5            [11]  576 	push	hl
   443A C5            [11]  577 	push	bc
   443B D5            [11]  578 	push	de
   443C CD 9D 74      [17]  579 	call	_cpct_drawSprite
   443F                     580 00112$:
   443F DD F9         [10]  581 	ld	sp, ix
   4441 DD E1         [14]  582 	pop	ix
   4443 C9            [10]  583 	ret
                            584 ;src/game/depot.c:109: void drawAllLocomotives(u8 iSelect)
                            585 ;	---------------------------------
                            586 ; Function drawAllLocomotives
                            587 ; ---------------------------------
   4444                     588 _drawAllLocomotives::
                            589 ;src/game/depot.c:113: putM0();
   4444 CD 66 5B      [17]  590 	call	_putM0
                            591 ;src/game/depot.c:115: cpct_clearScreen(cpct_px2byteM0(9,9));
   4447 21 09 09      [10]  592 	ld	hl,#0x0909
   444A E5            [11]  593 	push	hl
   444B CD 7B 79      [17]  594 	call	_cpct_px2byteM0
   444E 65            [ 4]  595 	ld	h,l
   444F 01 00 40      [10]  596 	ld	bc,#0x4000
   4452 C5            [11]  597 	push	bc
   4453 E5            [11]  598 	push	hl
   4454 33            [ 6]  599 	inc	sp
   4455 21 00 C0      [10]  600 	ld	hl,#0xC000
   4458 E5            [11]  601 	push	hl
   4459 CD 97 79      [17]  602 	call	_cpct_memset
                            603 ;src/game/depot.c:116: for(i=0; i<12; i++)
   445C 16 00         [ 7]  604 	ld	d,#0x00
   445E                     605 00102$:
                            606 ;src/game/depot.c:117: drawLocomotive(i, iSelect);
   445E D5            [11]  607 	push	de
   445F 21 04 00      [10]  608 	ld	hl, #4+0
   4462 39            [11]  609 	add	hl, sp
   4463 7E            [ 7]  610 	ld	a, (hl)
   4464 F5            [11]  611 	push	af
   4465 33            [ 6]  612 	inc	sp
   4466 D5            [11]  613 	push	de
   4467 33            [ 6]  614 	inc	sp
   4468 CD AF 42      [17]  615 	call	_drawLocomotive
   446B F1            [10]  616 	pop	af
   446C D1            [10]  617 	pop	de
                            618 ;src/game/depot.c:116: for(i=0; i<12; i++)
   446D 14            [ 4]  619 	inc	d
   446E 7A            [ 4]  620 	ld	a,d
   446F D6 0C         [ 7]  621 	sub	a, #0x0C
   4471 38 EB         [12]  622 	jr	C,00102$
   4473 C9            [10]  623 	ret
                            624 ;src/game/depot.c:120: u8 confirmBuyLocomotive(u8 iSelect)
                            625 ;	---------------------------------
                            626 ; Function confirmBuyLocomotive
                            627 ; ---------------------------------
   4474                     628 _confirmBuyLocomotive::
   4474 DD E5         [15]  629 	push	ix
   4476 DD 21 00 00   [14]  630 	ld	ix,#0
   447A DD 39         [15]  631 	add	ix,sp
   447C 21 EE FF      [10]  632 	ld	hl,#-18
   447F 39            [11]  633 	add	hl,sp
   4480 F9            [ 6]  634 	ld	sp,hl
                            635 ;src/game/depot.c:127: putM2();
   4481 CD 8D 5B      [17]  636 	call	_putM2
                            637 ;src/game/depot.c:129: txtWindowLocomotive[1] = "";	
   4484 21 00 00      [10]  638 	ld	hl,#0x0000
   4487 39            [11]  639 	add	hl,sp
   4488 5D            [ 4]  640 	ld	e,l
   4489 54            [ 4]  641 	ld	d,h
   448A 23            [ 6]  642 	inc	hl
   448B 23            [ 6]  643 	inc	hl
   448C 01 DD 46      [10]  644 	ld	bc,#___str_2+0
   448F 71            [ 7]  645 	ld	(hl),c
   4490 23            [ 6]  646 	inc	hl
   4491 70            [ 7]  647 	ld	(hl),b
                            648 ;src/game/depot.c:131: switch(iSelect)
   4492 3E 03         [ 7]  649 	ld	a,#0x03
   4494 DD 96 04      [19]  650 	sub	a, 4 (ix)
   4497 DA 9B 45      [10]  651 	jp	C,00105$
                            652 ;src/game/depot.c:135: txtWindowLocomotive[2] = "Propulsion: steam";
   449A 21 04 00      [10]  653 	ld	hl,#0x0004
   449D 19            [11]  654 	add	hl,de
   449E DD 75 FC      [19]  655 	ld	-4 (ix),l
   44A1 DD 74 FD      [19]  656 	ld	-3 (ix),h
                            657 ;src/game/depot.c:136: txtWindowLocomotive[3] = "Entry of service: 1909";
   44A4 21 06 00      [10]  658 	ld	hl,#0x0006
   44A7 19            [11]  659 	add	hl,de
   44A8 DD 75 FE      [19]  660 	ld	-2 (ix),l
   44AB DD 74 FF      [19]  661 	ld	-1 (ix),h
                            662 ;src/game/depot.c:137: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   44AE 21 08 00      [10]  663 	ld	hl,#0x0008
   44B1 19            [11]  664 	add	hl,de
   44B2 DD 75 FA      [19]  665 	ld	-6 (ix),l
   44B5 DD 74 FB      [19]  666 	ld	-5 (ix),h
                            667 ;src/game/depot.c:138: txtWindowLocomotive[5] = "Price: 1000$";
   44B8 21 0A 00      [10]  668 	ld	hl,#0x000A
   44BB 19            [11]  669 	add	hl,de
   44BC 4D            [ 4]  670 	ld	c,l
   44BD 44            [ 4]  671 	ld	b,h
                            672 ;src/game/depot.c:131: switch(iSelect)
   44BE D5            [11]  673 	push	de
   44BF DD 5E 04      [19]  674 	ld	e,4 (ix)
   44C2 16 00         [ 7]  675 	ld	d,#0x00
   44C4 21 CC 44      [10]  676 	ld	hl,#00125$
   44C7 19            [11]  677 	add	hl,de
   44C8 19            [11]  678 	add	hl,de
   44C9 19            [11]  679 	add	hl,de
   44CA D1            [10]  680 	pop	de
   44CB E9            [ 4]  681 	jp	(hl)
   44CC                     682 00125$:
   44CC C3 D8 44      [10]  683 	jp	00101$
   44CF C3 0A 45      [10]  684 	jp	00102$
   44D2 C3 3B 45      [10]  685 	jp	00103$
   44D5 C3 6C 45      [10]  686 	jp	00104$
                            687 ;src/game/depot.c:133: case 0:
   44D8                     688 00101$:
                            689 ;src/game/depot.c:134: txtWindowLocomotive[0] = "130 B";
   44D8 6B            [ 4]  690 	ld	l, e
   44D9 62            [ 4]  691 	ld	h, d
   44DA 36 DE         [10]  692 	ld	(hl),#<(___str_3)
   44DC 23            [ 6]  693 	inc	hl
   44DD 36 46         [10]  694 	ld	(hl),#>(___str_3)
                            695 ;src/game/depot.c:135: txtWindowLocomotive[2] = "Propulsion: steam";
   44DF DD 6E FC      [19]  696 	ld	l,-4 (ix)
   44E2 DD 66 FD      [19]  697 	ld	h,-3 (ix)
   44E5 36 E4         [10]  698 	ld	(hl),#<(___str_4)
   44E7 23            [ 6]  699 	inc	hl
   44E8 36 46         [10]  700 	ld	(hl),#>(___str_4)
                            701 ;src/game/depot.c:136: txtWindowLocomotive[3] = "Entry of service: 1909";
   44EA DD 6E FE      [19]  702 	ld	l,-2 (ix)
   44ED DD 66 FF      [19]  703 	ld	h,-1 (ix)
   44F0 36 F6         [10]  704 	ld	(hl),#<(___str_5)
   44F2 23            [ 6]  705 	inc	hl
   44F3 36 46         [10]  706 	ld	(hl),#>(___str_5)
                            707 ;src/game/depot.c:137: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   44F5 DD 6E FA      [19]  708 	ld	l,-6 (ix)
   44F8 DD 66 FB      [19]  709 	ld	h,-5 (ix)
   44FB 36 0D         [10]  710 	ld	(hl),#<(___str_6)
   44FD 23            [ 6]  711 	inc	hl
   44FE 36 47         [10]  712 	ld	(hl),#>(___str_6)
                            713 ;src/game/depot.c:138: txtWindowLocomotive[5] = "Price: 1000$";
   4500 3E 24         [ 7]  714 	ld	a,#<(___str_7)
   4502 02            [ 7]  715 	ld	(bc),a
   4503 03            [ 6]  716 	inc	bc
   4504 3E 47         [ 7]  717 	ld	a,#>(___str_7)
   4506 02            [ 7]  718 	ld	(bc),a
                            719 ;src/game/depot.c:139: break;
   4507 C3 9B 45      [10]  720 	jp	00105$
                            721 ;src/game/depot.c:140: case 1:
   450A                     722 00102$:
                            723 ;src/game/depot.c:141: txtWindowLocomotive[0] = "141 TA";
   450A 6B            [ 4]  724 	ld	l, e
   450B 62            [ 4]  725 	ld	h, d
   450C 36 31         [10]  726 	ld	(hl),#<(___str_8)
   450E 23            [ 6]  727 	inc	hl
   450F 36 47         [10]  728 	ld	(hl),#>(___str_8)
                            729 ;src/game/depot.c:142: txtWindowLocomotive[2] = "Propulsion: steam";
   4511 DD 6E FC      [19]  730 	ld	l,-4 (ix)
   4514 DD 66 FD      [19]  731 	ld	h,-3 (ix)
   4517 36 E4         [10]  732 	ld	(hl),#<(___str_4)
   4519 23            [ 6]  733 	inc	hl
   451A 36 46         [10]  734 	ld	(hl),#>(___str_4)
                            735 ;src/game/depot.c:143: txtWindowLocomotive[3] = "Entry of service: 1911";
   451C DD 6E FE      [19]  736 	ld	l,-2 (ix)
   451F DD 66 FF      [19]  737 	ld	h,-1 (ix)
   4522 36 38         [10]  738 	ld	(hl),#<(___str_9)
   4524 23            [ 6]  739 	inc	hl
   4525 36 47         [10]  740 	ld	(hl),#>(___str_9)
                            741 ;src/game/depot.c:144: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   4527 DD 6E FA      [19]  742 	ld	l,-6 (ix)
   452A DD 66 FB      [19]  743 	ld	h,-5 (ix)
   452D 36 4F         [10]  744 	ld	(hl),#<(___str_10)
   452F 23            [ 6]  745 	inc	hl
   4530 36 47         [10]  746 	ld	(hl),#>(___str_10)
                            747 ;src/game/depot.c:145: txtWindowLocomotive[5] = "Price: 900$";
   4532 3E 66         [ 7]  748 	ld	a,#<(___str_11)
   4534 02            [ 7]  749 	ld	(bc),a
   4535 03            [ 6]  750 	inc	bc
   4536 3E 47         [ 7]  751 	ld	a,#>(___str_11)
   4538 02            [ 7]  752 	ld	(bc),a
                            753 ;src/game/depot.c:146: break;
   4539 18 60         [12]  754 	jr	00105$
                            755 ;src/game/depot.c:147: case 2:
   453B                     756 00103$:
                            757 ;src/game/depot.c:148: txtWindowLocomotive[0] = "142 AT";
   453B 6B            [ 4]  758 	ld	l, e
   453C 62            [ 4]  759 	ld	h, d
   453D 36 72         [10]  760 	ld	(hl),#<(___str_12)
   453F 23            [ 6]  761 	inc	hl
   4540 36 47         [10]  762 	ld	(hl),#>(___str_12)
                            763 ;src/game/depot.c:149: txtWindowLocomotive[2] = "Propulsion: steam";
   4542 DD 6E FC      [19]  764 	ld	l,-4 (ix)
   4545 DD 66 FD      [19]  765 	ld	h,-3 (ix)
   4548 36 E4         [10]  766 	ld	(hl),#<(___str_4)
   454A 23            [ 6]  767 	inc	hl
   454B 36 46         [10]  768 	ld	(hl),#>(___str_4)
                            769 ;src/game/depot.c:150: txtWindowLocomotive[3] = "Entry of service: 1926";
   454D DD 6E FE      [19]  770 	ld	l,-2 (ix)
   4550 DD 66 FF      [19]  771 	ld	h,-1 (ix)
   4553 36 79         [10]  772 	ld	(hl),#<(___str_13)
   4555 23            [ 6]  773 	inc	hl
   4556 36 47         [10]  774 	ld	(hl),#>(___str_13)
                            775 ;src/game/depot.c:151: txtWindowLocomotive[4] = "Maximum speed: 95 km/h";
   4558 DD 6E FA      [19]  776 	ld	l,-6 (ix)
   455B DD 66 FB      [19]  777 	ld	h,-5 (ix)
   455E 36 90         [10]  778 	ld	(hl),#<(___str_14)
   4560 23            [ 6]  779 	inc	hl
   4561 36 47         [10]  780 	ld	(hl),#>(___str_14)
                            781 ;src/game/depot.c:152: txtWindowLocomotive[5] = "Price: 1500$";
   4563 3E A7         [ 7]  782 	ld	a,#<(___str_15)
   4565 02            [ 7]  783 	ld	(bc),a
   4566 03            [ 6]  784 	inc	bc
   4567 3E 47         [ 7]  785 	ld	a,#>(___str_15)
   4569 02            [ 7]  786 	ld	(bc),a
                            787 ;src/game/depot.c:153: break;
   456A 18 2F         [12]  788 	jr	00105$
                            789 ;src/game/depot.c:155: case 3:
   456C                     790 00104$:
                            791 ;src/game/depot.c:156: txtWindowLocomotive[0] = "141 P";
   456C 6B            [ 4]  792 	ld	l, e
   456D 62            [ 4]  793 	ld	h, d
   456E 36 B4         [10]  794 	ld	(hl),#<(___str_16)
   4570 23            [ 6]  795 	inc	hl
   4571 36 47         [10]  796 	ld	(hl),#>(___str_16)
                            797 ;src/game/depot.c:157: txtWindowLocomotive[2] = "Propulsion: steam";
   4573 DD 6E FC      [19]  798 	ld	l,-4 (ix)
   4576 DD 66 FD      [19]  799 	ld	h,-3 (ix)
   4579 36 E4         [10]  800 	ld	(hl),#<(___str_4)
   457B 23            [ 6]  801 	inc	hl
   457C 36 46         [10]  802 	ld	(hl),#>(___str_4)
                            803 ;src/game/depot.c:158: txtWindowLocomotive[3] = "Entry of service: 1942";
   457E DD 6E FE      [19]  804 	ld	l,-2 (ix)
   4581 DD 66 FF      [19]  805 	ld	h,-1 (ix)
   4584 36 BA         [10]  806 	ld	(hl),#<(___str_17)
   4586 23            [ 6]  807 	inc	hl
   4587 36 47         [10]  808 	ld	(hl),#>(___str_17)
                            809 ;src/game/depot.c:159: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   4589 DD 6E FA      [19]  810 	ld	l,-6 (ix)
   458C DD 66 FB      [19]  811 	ld	h,-5 (ix)
   458F 36 D1         [10]  812 	ld	(hl),#<(___str_18)
   4591 23            [ 6]  813 	inc	hl
   4592 36 47         [10]  814 	ld	(hl),#>(___str_18)
                            815 ;src/game/depot.c:160: txtWindowLocomotive[5] = "Price: 2000$";
   4594 3E E9         [ 7]  816 	ld	a,#<(___str_19)
   4596 02            [ 7]  817 	ld	(bc),a
   4597 03            [ 6]  818 	inc	bc
   4598 3E 47         [ 7]  819 	ld	a,#>(___str_19)
   459A 02            [ 7]  820 	ld	(bc),a
                            821 ;src/game/depot.c:162: }
   459B                     822 00105$:
                            823 ;src/game/depot.c:165: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   459B 21 06 01      [10]  824 	ld	hl,#0x0106
   459E E5            [11]  825 	push	hl
   459F D5            [11]  826 	push	de
   45A0 CD 91 60      [17]  827 	call	_drawWindow
   45A3 F1            [10]  828 	pop	af
   45A4 F1            [10]  829 	pop	af
   45A5 4D            [ 4]  830 	ld	c,l
                            831 ;src/game/depot.c:168: if (returnChoice==1)
   45A6 79            [ 4]  832 	ld	a,c
   45A7 3D            [ 4]  833 	dec	a
   45A8 C2 D7 46      [10]  834 	jp	NZ,00110$
                            835 ;src/game/depot.c:170: if(nbTrainList==0)
   45AB 3A C1 8A      [13]  836 	ld	a,(#_nbTrainList + 0)
   45AE B7            [ 4]  837 	or	a, a
   45AF 20 0F         [12]  838 	jr	NZ,00107$
                            839 ;src/game/depot.c:171: trainList = (Train*)malloc(sizeof(Train));
   45B1 C5            [11]  840 	push	bc
   45B2 21 09 00      [10]  841 	ld	hl,#0x0009
   45B5 E5            [11]  842 	push	hl
   45B6 CD 16 76      [17]  843 	call	_malloc
   45B9 F1            [10]  844 	pop	af
   45BA C1            [10]  845 	pop	bc
   45BB 22 BB 8A      [16]  846 	ld	(_trainList),hl
   45BE 18 1D         [12]  847 	jr	00108$
   45C0                     848 00107$:
                            849 ;src/game/depot.c:173: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   45C0 FD 21 C1 8A   [14]  850 	ld	iy,#_nbTrainList
   45C4 FD 6E 00      [19]  851 	ld	l,0 (iy)
   45C7 26 00         [ 7]  852 	ld	h,#0x00
   45C9 23            [ 6]  853 	inc	hl
   45CA 5D            [ 4]  854 	ld	e, l
   45CB 54            [ 4]  855 	ld	d, h
   45CC 29            [11]  856 	add	hl, hl
   45CD 29            [11]  857 	add	hl, hl
   45CE 29            [11]  858 	add	hl, hl
   45CF 19            [11]  859 	add	hl, de
   45D0 EB            [ 4]  860 	ex	de,hl
   45D1 2A BB 8A      [16]  861 	ld	hl,(_trainList)
   45D4 C5            [11]  862 	push	bc
   45D5 D5            [11]  863 	push	de
   45D6 E5            [11]  864 	push	hl
   45D7 CD BA 72      [17]  865 	call	_realloc
   45DA F1            [10]  866 	pop	af
   45DB F1            [10]  867 	pop	af
   45DC C1            [10]  868 	pop	bc
   45DD                     869 00108$:
                            870 ;src/game/depot.c:176: trainList[nbTrainList].loco = iSelect;
   45DD ED 5B C1 8A   [20]  871 	ld	de,(_nbTrainList)
   45E1 16 00         [ 7]  872 	ld	d,#0x00
   45E3 6B            [ 4]  873 	ld	l, e
   45E4 62            [ 4]  874 	ld	h, d
   45E5 29            [11]  875 	add	hl, hl
   45E6 29            [11]  876 	add	hl, hl
   45E7 29            [11]  877 	add	hl, hl
   45E8 19            [11]  878 	add	hl, de
   45E9 EB            [ 4]  879 	ex	de,hl
   45EA FD 2A BB 8A   [20]  880 	ld	iy,(_trainList)
   45EE FD 19         [15]  881 	add	iy, de
   45F0 DD 7E 04      [19]  882 	ld	a,4 (ix)
   45F3 FD 77 00      [19]  883 	ld	0 (iy), a
                            884 ;src/game/depot.c:179: trainList[nbTrainList].wagon[0] = 0;
   45F6 ED 5B C1 8A   [20]  885 	ld	de,(_nbTrainList)
   45FA 16 00         [ 7]  886 	ld	d,#0x00
   45FC 6B            [ 4]  887 	ld	l, e
   45FD 62            [ 4]  888 	ld	h, d
   45FE 29            [11]  889 	add	hl, hl
   45FF 29            [11]  890 	add	hl, hl
   4600 29            [11]  891 	add	hl, hl
   4601 19            [11]  892 	add	hl, de
   4602 EB            [ 4]  893 	ex	de,hl
   4603 FD 2A BB 8A   [20]  894 	ld	iy,(_trainList)
   4607 FD 19         [15]  895 	add	iy, de
   4609 FD 23         [10]  896 	inc	iy
   460B FD 36 00 00   [19]  897 	ld	0 (iy), #0x00
                            898 ;src/game/depot.c:180: trainList[nbTrainList].wagon[1] = 0;
   460F ED 5B C1 8A   [20]  899 	ld	de,(_nbTrainList)
   4613 16 00         [ 7]  900 	ld	d,#0x00
   4615 6B            [ 4]  901 	ld	l, e
   4616 62            [ 4]  902 	ld	h, d
   4617 29            [11]  903 	add	hl, hl
   4618 29            [11]  904 	add	hl, hl
   4619 29            [11]  905 	add	hl, hl
   461A 19            [11]  906 	add	hl, de
   461B EB            [ 4]  907 	ex	de,hl
   461C FD 2A BB 8A   [20]  908 	ld	iy,(_trainList)
   4620 FD 19         [15]  909 	add	iy, de
   4622 FD 23         [10]  910 	inc	iy
   4624 FD 23         [10]  911 	inc	iy
   4626 FD 36 00 00   [19]  912 	ld	0 (iy), #0x00
                            913 ;src/game/depot.c:181: trainList[nbTrainList].wagon[2] = 0;
   462A ED 5B C1 8A   [20]  914 	ld	de,(_nbTrainList)
   462E 16 00         [ 7]  915 	ld	d,#0x00
   4630 6B            [ 4]  916 	ld	l, e
   4631 62            [ 4]  917 	ld	h, d
   4632 29            [11]  918 	add	hl, hl
   4633 29            [11]  919 	add	hl, hl
   4634 29            [11]  920 	add	hl, hl
   4635 19            [11]  921 	add	hl, de
   4636 EB            [ 4]  922 	ex	de,hl
   4637 FD 2A BB 8A   [20]  923 	ld	iy,(_trainList)
   463B FD 19         [15]  924 	add	iy, de
   463D FD 23         [10]  925 	inc	iy
   463F FD 23         [10]  926 	inc	iy
   4641 FD 23         [10]  927 	inc	iy
   4643 FD 36 00 00   [19]  928 	ld	0 (iy), #0x00
                            929 ;src/game/depot.c:182: trainList[nbTrainList].wagon[3] = 0;
   4647 ED 5B C1 8A   [20]  930 	ld	de,(_nbTrainList)
   464B 16 00         [ 7]  931 	ld	d,#0x00
   464D 6B            [ 4]  932 	ld	l, e
   464E 62            [ 4]  933 	ld	h, d
   464F 29            [11]  934 	add	hl, hl
   4650 29            [11]  935 	add	hl, hl
   4651 29            [11]  936 	add	hl, hl
   4652 19            [11]  937 	add	hl, de
   4653 EB            [ 4]  938 	ex	de,hl
   4654 FD 2A BB 8A   [20]  939 	ld	iy,(_trainList)
   4658 FD 19         [15]  940 	add	iy, de
   465A 11 04 00      [10]  941 	ld	de,#0x0004
   465D FD 19         [15]  942 	add	iy, de
   465F FD 36 00 00   [19]  943 	ld	0 (iy), #0x00
                            944 ;src/game/depot.c:183: trainList[nbTrainList].wagon[4] = 0;
   4663 ED 5B C1 8A   [20]  945 	ld	de,(_nbTrainList)
   4667 16 00         [ 7]  946 	ld	d,#0x00
   4669 6B            [ 4]  947 	ld	l, e
   466A 62            [ 4]  948 	ld	h, d
   466B 29            [11]  949 	add	hl, hl
   466C 29            [11]  950 	add	hl, hl
   466D 29            [11]  951 	add	hl, hl
   466E 19            [11]  952 	add	hl, de
   466F EB            [ 4]  953 	ex	de,hl
   4670 FD 2A BB 8A   [20]  954 	ld	iy,(_trainList)
   4674 FD 19         [15]  955 	add	iy, de
   4676 11 05 00      [10]  956 	ld	de,#0x0005
   4679 FD 19         [15]  957 	add	iy, de
   467B FD 36 00 00   [19]  958 	ld	0 (iy), #0x00
                            959 ;src/game/depot.c:184: trainList[nbTrainList].wagon[5] = 0;
   467F ED 5B C1 8A   [20]  960 	ld	de,(_nbTrainList)
   4683 16 00         [ 7]  961 	ld	d,#0x00
   4685 6B            [ 4]  962 	ld	l, e
   4686 62            [ 4]  963 	ld	h, d
   4687 29            [11]  964 	add	hl, hl
   4688 29            [11]  965 	add	hl, hl
   4689 29            [11]  966 	add	hl, hl
   468A 19            [11]  967 	add	hl, de
   468B EB            [ 4]  968 	ex	de,hl
   468C FD 2A BB 8A   [20]  969 	ld	iy,(_trainList)
   4690 FD 19         [15]  970 	add	iy, de
   4692 11 06 00      [10]  971 	ld	de,#0x0006
   4695 FD 19         [15]  972 	add	iy, de
   4697 FD 36 00 00   [19]  973 	ld	0 (iy), #0x00
                            974 ;src/game/depot.c:185: trainList[nbTrainList].wagon[6] = 0;
   469B ED 5B C1 8A   [20]  975 	ld	de,(_nbTrainList)
   469F 16 00         [ 7]  976 	ld	d,#0x00
   46A1 6B            [ 4]  977 	ld	l, e
   46A2 62            [ 4]  978 	ld	h, d
   46A3 29            [11]  979 	add	hl, hl
   46A4 29            [11]  980 	add	hl, hl
   46A5 29            [11]  981 	add	hl, hl
   46A6 19            [11]  982 	add	hl, de
   46A7 EB            [ 4]  983 	ex	de,hl
   46A8 FD 2A BB 8A   [20]  984 	ld	iy,(_trainList)
   46AC FD 19         [15]  985 	add	iy, de
   46AE 11 07 00      [10]  986 	ld	de,#0x0007
   46B1 FD 19         [15]  987 	add	iy, de
   46B3 FD 36 00 00   [19]  988 	ld	0 (iy), #0x00
                            989 ;src/game/depot.c:186: trainList[nbTrainList].wagon[7] = 0;
   46B7 ED 5B C1 8A   [20]  990 	ld	de,(_nbTrainList)
   46BB 16 00         [ 7]  991 	ld	d,#0x00
   46BD 6B            [ 4]  992 	ld	l, e
   46BE 62            [ 4]  993 	ld	h, d
   46BF 29            [11]  994 	add	hl, hl
   46C0 29            [11]  995 	add	hl, hl
   46C1 29            [11]  996 	add	hl, hl
   46C2 19            [11]  997 	add	hl, de
   46C3 EB            [ 4]  998 	ex	de,hl
   46C4 FD 2A BB 8A   [20]  999 	ld	iy,(_trainList)
   46C8 FD 19         [15] 1000 	add	iy, de
   46CA 11 08 00      [10] 1001 	ld	de,#0x0008
   46CD FD 19         [15] 1002 	add	iy, de
   46CF FD 36 00 00   [19] 1003 	ld	0 (iy), #0x00
                           1004 ;src/game/depot.c:189: nbTrainList++;
   46D3 21 C1 8A      [10] 1005 	ld	hl, #_nbTrainList+0
   46D6 34            [11] 1006 	inc	(hl)
   46D7                    1007 00110$:
                           1008 ;src/game/depot.c:192: return returnChoice;
   46D7 69            [ 4] 1009 	ld	l,c
   46D8 DD F9         [10] 1010 	ld	sp, ix
   46DA DD E1         [14] 1011 	pop	ix
   46DC C9            [10] 1012 	ret
   46DD                    1013 ___str_2:
   46DD 00                 1014 	.db 0x00
   46DE                    1015 ___str_3:
   46DE 31 33 30 20 42     1016 	.ascii "130 B"
   46E3 00                 1017 	.db 0x00
   46E4                    1018 ___str_4:
   46E4 50 72 6F 70 75 6C  1019 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   46F5 00                 1020 	.db 0x00
   46F6                    1021 ___str_5:
   46F6 45 6E 74 72 79 20  1022 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   470C 00                 1023 	.db 0x00
   470D                    1024 ___str_6:
   470D 4D 61 78 69 6D 75  1025 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   4723 00                 1026 	.db 0x00
   4724                    1027 ___str_7:
   4724 50 72 69 63 65 3A  1028 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   4730 00                 1029 	.db 0x00
   4731                    1030 ___str_8:
   4731 31 34 31 20 54 41  1031 	.ascii "141 TA"
   4737 00                 1032 	.db 0x00
   4738                    1033 ___str_9:
   4738 45 6E 74 72 79 20  1034 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   474E 00                 1035 	.db 0x00
   474F                    1036 ___str_10:
   474F 4D 61 78 69 6D 75  1037 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   4765 00                 1038 	.db 0x00
   4766                    1039 ___str_11:
   4766 50 72 69 63 65 3A  1040 	.ascii "Price: 900$"
        20 39 30 30 24
   4771 00                 1041 	.db 0x00
   4772                    1042 ___str_12:
   4772 31 34 32 20 41 54  1043 	.ascii "142 AT"
   4778 00                 1044 	.db 0x00
   4779                    1045 ___str_13:
   4779 45 6E 74 72 79 20  1046 	.ascii "Entry of service: 1926"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 32 36
   478F 00                 1047 	.db 0x00
   4790                    1048 ___str_14:
   4790 4D 61 78 69 6D 75  1049 	.ascii "Maximum speed: 95 km/h"
        6D 20 73 70 65 65
        64 3A 20 39 35 20
        6B 6D 2F 68
   47A6 00                 1050 	.db 0x00
   47A7                    1051 ___str_15:
   47A7 50 72 69 63 65 3A  1052 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   47B3 00                 1053 	.db 0x00
   47B4                    1054 ___str_16:
   47B4 31 34 31 20 50     1055 	.ascii "141 P"
   47B9 00                 1056 	.db 0x00
   47BA                    1057 ___str_17:
   47BA 45 6E 74 72 79 20  1058 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   47D0 00                 1059 	.db 0x00
   47D1                    1060 ___str_18:
   47D1 4D 61 78 69 6D 75  1061 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   47E8 00                 1062 	.db 0x00
   47E9                    1063 ___str_19:
   47E9 50 72 69 63 65 3A  1064 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   47F5 00                 1065 	.db 0x00
                           1066 ;src/game/depot.c:195: void buyLocomotive()
                           1067 ;	---------------------------------
                           1068 ; Function buyLocomotive
                           1069 ; ---------------------------------
   47F6                    1070 _buyLocomotive::
                           1071 ;src/game/depot.c:197: u8 exit=0;
                           1072 ;src/game/depot.c:199: u8 iSelect=0;
   47F6 01 00 00      [10] 1073 	ld	bc,#0x0000
                           1074 ;src/game/depot.c:201: drawAllLocomotives(iSelect);
   47F9 C5            [11] 1075 	push	bc
   47FA AF            [ 4] 1076 	xor	a, a
   47FB F5            [11] 1077 	push	af
   47FC 33            [ 6] 1078 	inc	sp
   47FD CD 44 44      [17] 1079 	call	_drawAllLocomotives
   4800 33            [ 6] 1080 	inc	sp
   4801 C1            [10] 1081 	pop	bc
                           1082 ;src/game/depot.c:203: do
   4802                    1083 00124$:
                           1084 ;src/game/depot.c:205: cpct_scanKeyboard(); 
   4802 C5            [11] 1085 	push	bc
   4803 CD EB 7A      [17] 1086 	call	_cpct_scanKeyboard
   4806 21 00 01      [10] 1087 	ld	hl,#0x0100
   4809 CD 45 74      [17] 1088 	call	_cpct_isKeyPressed
   480C 7D            [ 4] 1089 	ld	a,l
   480D C1            [10] 1090 	pop	bc
   480E B7            [ 4] 1091 	or	a, a
   480F 28 24         [12] 1092 	jr	Z,00122$
                           1093 ;src/game/depot.c:209: if (iSelect>0)
   4811 78            [ 4] 1094 	ld	a,b
   4812 B7            [ 4] 1095 	or	a, a
   4813 28 15         [12] 1096 	jr	Z,00140$
                           1097 ;src/game/depot.c:211: iSelect--;
   4815 05            [ 4] 1098 	dec	b
                           1099 ;src/game/depot.c:212: drawLocomotive(iSelect, iSelect);
   4816 C5            [11] 1100 	push	bc
   4817 C5            [11] 1101 	push	bc
   4818 33            [ 6] 1102 	inc	sp
   4819 C5            [11] 1103 	push	bc
   481A 33            [ 6] 1104 	inc	sp
   481B CD AF 42      [17] 1105 	call	_drawLocomotive
   481E F1            [10] 1106 	pop	af
   481F C1            [10] 1107 	pop	bc
                           1108 ;src/game/depot.c:213: drawLocomotive(iSelect+1, iSelect);
   4820 50            [ 4] 1109 	ld	d,b
   4821 14            [ 4] 1110 	inc	d
   4822 C5            [11] 1111 	push	bc
   4823 4A            [ 4] 1112 	ld	c, d
   4824 C5            [11] 1113 	push	bc
   4825 CD AF 42      [17] 1114 	call	_drawLocomotive
   4828 F1            [10] 1115 	pop	af
   4829 C1            [10] 1116 	pop	bc
                           1117 ;src/game/depot.c:215: for(i=0; i<14000; i++) {} // wait loop
   482A                    1118 00140$:
   482A 11 B0 36      [10] 1119 	ld	de,#0x36B0
   482D                    1120 00129$:
   482D 1B            [ 6] 1121 	dec	de
   482E 7A            [ 4] 1122 	ld	a,d
   482F B3            [ 4] 1123 	or	a,e
   4830 20 FB         [12] 1124 	jr	NZ,00129$
   4832 C3 A7 48      [10] 1125 	jp	00125$
   4835                    1126 00122$:
                           1127 ;src/game/depot.c:217: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4835 C5            [11] 1128 	push	bc
   4836 21 00 04      [10] 1129 	ld	hl,#0x0400
   4839 CD 45 74      [17] 1130 	call	_cpct_isKeyPressed
   483C 7D            [ 4] 1131 	ld	a,l
   483D C1            [10] 1132 	pop	bc
   483E B7            [ 4] 1133 	or	a, a
   483F 28 24         [12] 1134 	jr	Z,00119$
                           1135 ;src/game/depot.c:219: if (iSelect<11)
   4841 78            [ 4] 1136 	ld	a,b
   4842 D6 0B         [ 7] 1137 	sub	a, #0x0B
   4844 30 15         [12] 1138 	jr	NC,00144$
                           1139 ;src/game/depot.c:221: iSelect++;
   4846 04            [ 4] 1140 	inc	b
                           1141 ;src/game/depot.c:222: drawLocomotive(iSelect, iSelect);
   4847 C5            [11] 1142 	push	bc
   4848 C5            [11] 1143 	push	bc
   4849 33            [ 6] 1144 	inc	sp
   484A C5            [11] 1145 	push	bc
   484B 33            [ 6] 1146 	inc	sp
   484C CD AF 42      [17] 1147 	call	_drawLocomotive
   484F F1            [10] 1148 	pop	af
   4850 C1            [10] 1149 	pop	bc
                           1150 ;src/game/depot.c:223: drawLocomotive(iSelect-1, iSelect);
   4851 50            [ 4] 1151 	ld	d,b
   4852 15            [ 4] 1152 	dec	d
   4853 C5            [11] 1153 	push	bc
   4854 4A            [ 4] 1154 	ld	c, d
   4855 C5            [11] 1155 	push	bc
   4856 CD AF 42      [17] 1156 	call	_drawLocomotive
   4859 F1            [10] 1157 	pop	af
   485A C1            [10] 1158 	pop	bc
                           1159 ;src/game/depot.c:225: for(i=0; i<14000; i++) {} // wait loop
   485B                    1160 00144$:
   485B 11 B0 36      [10] 1161 	ld	de,#0x36B0
   485E                    1162 00132$:
   485E 1B            [ 6] 1163 	dec	de
   485F 7A            [ 4] 1164 	ld	a,d
   4860 B3            [ 4] 1165 	or	a,e
   4861 20 FB         [12] 1166 	jr	NZ,00132$
   4863 18 42         [12] 1167 	jr	00125$
   4865                    1168 00119$:
                           1169 ;src/game/depot.c:227: else if ( cpct_isKeyPressed(Key_Return) )
   4865 C5            [11] 1170 	push	bc
   4866 21 02 04      [10] 1171 	ld	hl,#0x0402
   4869 CD 45 74      [17] 1172 	call	_cpct_isKeyPressed
   486C 7D            [ 4] 1173 	ld	a,l
   486D C1            [10] 1174 	pop	bc
   486E B7            [ 4] 1175 	or	a, a
   486F 28 28         [12] 1176 	jr	Z,00116$
                           1177 ;src/game/depot.c:229: if(iSelect<locDelocked)
   4871 21 C0 8A      [10] 1178 	ld	hl,#_locDelocked
   4874 78            [ 4] 1179 	ld	a,b
   4875 96            [ 7] 1180 	sub	a, (hl)
   4876 30 17         [12] 1181 	jr	NC,00149$
                           1182 ;src/game/depot.c:231: if(confirmBuyLocomotive(iSelect) == 1)
   4878 C5            [11] 1183 	push	bc
   4879 C5            [11] 1184 	push	bc
   487A 33            [ 6] 1185 	inc	sp
   487B CD 74 44      [17] 1186 	call	_confirmBuyLocomotive
   487E 33            [ 6] 1187 	inc	sp
   487F C1            [10] 1188 	pop	bc
   4880 2D            [ 4] 1189 	dec	l
   4881 20 04         [12] 1190 	jr	NZ,00108$
                           1191 ;src/game/depot.c:232: exit=1;
   4883 0E 01         [ 7] 1192 	ld	c,#0x01
   4885 18 08         [12] 1193 	jr	00149$
   4887                    1194 00108$:
                           1195 ;src/game/depot.c:234: drawAllLocomotives(iSelect);
   4887 C5            [11] 1196 	push	bc
   4888 C5            [11] 1197 	push	bc
   4889 33            [ 6] 1198 	inc	sp
   488A CD 44 44      [17] 1199 	call	_drawAllLocomotives
   488D 33            [ 6] 1200 	inc	sp
   488E C1            [10] 1201 	pop	bc
                           1202 ;src/game/depot.c:237: for(i=0; i<14000; i++) {} // wait loop
   488F                    1203 00149$:
   488F 11 B0 36      [10] 1204 	ld	de,#0x36B0
   4892                    1205 00135$:
   4892 1B            [ 6] 1206 	dec	de
   4893 7A            [ 4] 1207 	ld	a,d
   4894 B3            [ 4] 1208 	or	a,e
   4895 20 FB         [12] 1209 	jr	NZ,00135$
   4897 18 0E         [12] 1210 	jr	00125$
   4899                    1211 00116$:
                           1212 ;src/game/depot.c:239: else if ( cpct_isKeyPressed(Key_Esc) )
   4899 C5            [11] 1213 	push	bc
   489A 21 08 04      [10] 1214 	ld	hl,#0x0408
   489D CD 45 74      [17] 1215 	call	_cpct_isKeyPressed
   48A0 7D            [ 4] 1216 	ld	a,l
   48A1 C1            [10] 1217 	pop	bc
   48A2 B7            [ 4] 1218 	or	a, a
   48A3 28 02         [12] 1219 	jr	Z,00125$
                           1220 ;src/game/depot.c:240: exit=1;
   48A5 0E 01         [ 7] 1221 	ld	c,#0x01
   48A7                    1222 00125$:
                           1223 ;src/game/depot.c:242: while(!exit);
   48A7 79            [ 4] 1224 	ld	a,c
   48A8 B7            [ 4] 1225 	or	a, a
   48A9 CA 02 48      [10] 1226 	jp	Z,00124$
                           1227 ;src/game/depot.c:244: putM2();
   48AC C3 8D 5B      [10] 1228 	jp  _putM2
                           1229 	.area _CODE
                           1230 	.area _INITIALIZER
                           1231 	.area _CABS (ABS)
