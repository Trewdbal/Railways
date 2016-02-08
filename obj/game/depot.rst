                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 21:04:40 2016
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
                             68 ;src/game/depot.c:8: cpct_clearScreen(0b11111111);
   4130 21 00 40      [10]   69 	ld	hl,#0x4000
   4133 E5            [11]   70 	push	hl
   4134 3E FF         [ 7]   71 	ld	a,#0xFF
   4136 F5            [11]   72 	push	af
   4137 33            [ 6]   73 	inc	sp
   4138 26 C0         [ 7]   74 	ld	h, #0xC0
   413A E5            [11]   75 	push	hl
   413B CD 82 79      [17]   76 	call	_cpct_memset
                             77 ;src/game/depot.c:10: for(i=0; i<nbTrainList; i++)
   413E 11 00 00      [10]   78 	ld	de,#0x0000
   4141                      79 00103$:
   4141 21 AC 8A      [10]   80 	ld	hl,#_nbTrainList
   4144 7A            [ 4]   81 	ld	a,d
   4145 96            [ 7]   82 	sub	a, (hl)
   4146 D0            [11]   83 	ret	NC
                             84 ;src/game/depot.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, 50, 30+i*20);
   4147 7B            [ 4]   85 	ld	a,e
   4148 C6 1E         [ 7]   86 	add	a, #0x1E
   414A D5            [11]   87 	push	de
   414B 57            [ 4]   88 	ld	d,a
   414C 1E 32         [ 7]   89 	ld	e,#0x32
   414E D5            [11]   90 	push	de
   414F 21 00 C0      [10]   91 	ld	hl,#0xC000
   4152 E5            [11]   92 	push	hl
   4153 CD B6 7A      [17]   93 	call	_cpct_getScreenPtr
   4156 D1            [10]   94 	pop	de
                             95 ;src/game/depot.c:13: cpct_drawSprite(l130B_M2, p_video, 10, 10);
   4157 4D            [ 4]   96 	ld	c, l
   4158 44            [ 4]   97 	ld	b, h
   4159 D5            [11]   98 	push	de
   415A 21 0A 0A      [10]   99 	ld	hl,#0x0A0A
   415D E5            [11]  100 	push	hl
   415E C5            [11]  101 	push	bc
   415F 21 71 6A      [10]  102 	ld	hl,#_l130B_M2
   4162 E5            [11]  103 	push	hl
   4163 CD 88 74      [17]  104 	call	_cpct_drawSprite
   4166 D1            [10]  105 	pop	de
                            106 ;src/game/depot.c:10: for(i=0; i<nbTrainList; i++)
   4167 7B            [ 4]  107 	ld	a,e
   4168 C6 14         [ 7]  108 	add	a, #0x14
   416A 5F            [ 4]  109 	ld	e,a
   416B 14            [ 4]  110 	inc	d
   416C 18 D3         [12]  111 	jr	00103$
                            112 ;src/game/depot.c:17: void railroadDepot()
                            113 ;	---------------------------------
                            114 ; Function railroadDepot
                            115 ; ---------------------------------
   416E                     116 _railroadDepot::
   416E DD E5         [15]  117 	push	ix
   4170 DD 21 00 00   [14]  118 	ld	ix,#0
   4174 DD 39         [15]  119 	add	ix,sp
   4176 F5            [11]  120 	push	af
   4177 F5            [11]  121 	push	af
   4178 3B            [ 6]  122 	dec	sp
                            123 ;src/game/depot.c:19: u8 exit=0;
   4179 DD 36 FF 00   [19]  124 	ld	-1 (ix),#0x00
                            125 ;src/game/depot.c:21: drawDepot();
   417D CD 30 41      [17]  126 	call	_drawDepot
                            127 ;src/game/depot.c:23: do
   4180                     128 00108$:
                            129 ;src/game/depot.c:25: cpct_scanKeyboard(); 
   4180 CD D6 7A      [17]  130 	call	_cpct_scanKeyboard
                            131 ;src/game/depot.c:27: if ( cpct_isKeyPressed(Key_Esc) )
   4183 21 08 04      [10]  132 	ld	hl,#0x0408
   4186 CD 30 74      [17]  133 	call	_cpct_isKeyPressed
   4189 7D            [ 4]  134 	ld	a,l
   418A B7            [ 4]  135 	or	a, a
   418B 28 06         [12]  136 	jr	Z,00106$
                            137 ;src/game/depot.c:28: exit=1;
   418D DD 36 FF 01   [19]  138 	ld	-1 (ix),#0x01
   4191 18 32         [12]  139 	jr	00109$
   4193                     140 00106$:
                            141 ;src/game/depot.c:29: else if(cpct_isKeyPressed(Key_Return) )
   4193 21 02 04      [10]  142 	ld	hl,#0x0402
   4196 CD 30 74      [17]  143 	call	_cpct_isKeyPressed
   4199 7D            [ 4]  144 	ld	a,l
   419A B7            [ 4]  145 	or	a, a
   419B 28 28         [12]  146 	jr	Z,00109$
                            147 ;src/game/depot.c:31: const char *txtMenuChoice[] = { 
   419D 21 00 00      [10]  148 	ld	hl,#0x0000
   41A0 39            [11]  149 	add	hl,sp
   41A1 5D            [ 4]  150 	ld	e,l
   41A2 54            [ 4]  151 	ld	d,h
   41A3 36 D0         [10]  152 	ld	(hl),#<(___str_0)
   41A5 23            [ 6]  153 	inc	hl
   41A6 36 41         [10]  154 	ld	(hl),#>(___str_0)
   41A8 6B            [ 4]  155 	ld	l, e
   41A9 62            [ 4]  156 	ld	h, d
   41AA 23            [ 6]  157 	inc	hl
   41AB 23            [ 6]  158 	inc	hl
   41AC 36 E1         [10]  159 	ld	(hl),#<(___str_1)
   41AE 23            [ 6]  160 	inc	hl
   41AF 36 41         [10]  161 	ld	(hl),#>(___str_1)
                            162 ;src/game/depot.c:35: u8 menuChoice = drawMenu(txtMenuChoice,2);
   41B1 3E 02         [ 7]  163 	ld	a,#0x02
   41B3 F5            [11]  164 	push	af
   41B4 33            [ 6]  165 	inc	sp
   41B5 D5            [11]  166 	push	de
   41B6 CD 7E 5F      [17]  167 	call	_drawMenu
   41B9 F1            [10]  168 	pop	af
   41BA 33            [ 6]  169 	inc	sp
   41BB 7D            [ 4]  170 	ld	a,l
                            171 ;src/game/depot.c:37: if(menuChoice == 0)
   41BC B7            [ 4]  172 	or	a, a
   41BD 20 03         [12]  173 	jr	NZ,00102$
                            174 ;src/game/depot.c:38: buyLocomotive();
   41BF CD 40 47      [17]  175 	call	_buyLocomotive
   41C2                     176 00102$:
                            177 ;src/game/depot.c:40: drawDepot();
   41C2 CD 30 41      [17]  178 	call	_drawDepot
   41C5                     179 00109$:
                            180 ;src/game/depot.c:44: while(!exit);
   41C5 DD 7E FF      [19]  181 	ld	a,-1 (ix)
   41C8 B7            [ 4]  182 	or	a, a
   41C9 28 B5         [12]  183 	jr	Z,00108$
   41CB DD F9         [10]  184 	ld	sp, ix
   41CD DD E1         [14]  185 	pop	ix
   41CF C9            [10]  186 	ret
   41D0                     187 ___str_0:
   41D0 42 75 79 20 61 20   188 	.ascii "Buy a locomotive"
        6C 6F 63 6F 6D 6F
        74 69 76 65
   41E0 00                  189 	.db 0x00
   41E1                     190 ___str_1:
   41E1 42 61 63 6B 20 74   191 	.ascii "Back to depot"
        6F 20 64 65 70 6F
        74
   41EE 00                  192 	.db 0x00
                            193 ;src/game/depot.c:47: void drawLocomotive(u8 i, u8 iSelect)
                            194 ;	---------------------------------
                            195 ; Function drawLocomotive
                            196 ; ---------------------------------
   41EF                     197 _drawLocomotive::
   41EF DD E5         [15]  198 	push	ix
   41F1 DD 21 00 00   [14]  199 	ld	ix,#0
   41F5 DD 39         [15]  200 	add	ix,sp
   41F7 21 F7 FF      [10]  201 	ld	hl,#-9
   41FA 39            [11]  202 	add	hl,sp
   41FB F9            [ 6]  203 	ld	sp,hl
                            204 ;src/game/depot.c:50: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4), 30+40*(i%4));
   41FC DD 7E 04      [19]  205 	ld	a,4 (ix)
   41FF E6 03         [ 7]  206 	and	a, #0x03
   4201 4F            [ 4]  207 	ld	c,a
   4202 87            [ 4]  208 	add	a, a
   4203 87            [ 4]  209 	add	a, a
   4204 81            [ 4]  210 	add	a, c
   4205 87            [ 4]  211 	add	a, a
   4206 87            [ 4]  212 	add	a, a
   4207 87            [ 4]  213 	add	a, a
   4208 DD 77 FB      [19]  214 	ld	-5 (ix), a
   420B C6 1E         [ 7]  215 	add	a, #0x1E
   420D DD 77 F7      [19]  216 	ld	-9 (ix),a
   4210 DD 7E 04      [19]  217 	ld	a,4 (ix)
   4213 0F            [ 4]  218 	rrca
   4214 0F            [ 4]  219 	rrca
   4215 E6 3F         [ 7]  220 	and	a,#0x3F
   4217 DD 77 FA      [19]  221 	ld	-6 (ix), a
   421A F5            [11]  222 	push	af
   421B 33            [ 6]  223 	inc	sp
   421C CD F0 92      [17]  224 	call	___uchar2fs
   421F 33            [ 6]  225 	inc	sp
   4220 DD 72 FF      [19]  226 	ld	-1 (ix),d
   4223 DD 73 FE      [19]  227 	ld	-2 (ix),e
   4226 DD 74 FD      [19]  228 	ld	-3 (ix),h
   4229 DD 75 FC      [19]  229 	ld	-4 (ix),l
   422C DD 6E FE      [19]  230 	ld	l,-2 (ix)
   422F DD 66 FF      [19]  231 	ld	h,-1 (ix)
   4232 E5            [11]  232 	push	hl
   4233 DD 6E FC      [19]  233 	ld	l,-4 (ix)
   4236 DD 66 FD      [19]  234 	ld	h,-3 (ix)
   4239 E5            [11]  235 	push	hl
   423A CD F7 77      [17]  236 	call	_floorf
   423D F1            [10]  237 	pop	af
   423E F1            [10]  238 	pop	af
   423F EB            [ 4]  239 	ex	de, hl
   4240 E5            [11]  240 	push	hl
   4241 D5            [11]  241 	push	de
   4242 21 C8 41      [10]  242 	ld	hl,#0x41C8
   4245 E5            [11]  243 	push	hl
   4246 21 00 00      [10]  244 	ld	hl,#0x0000
   4249 E5            [11]  245 	push	hl
   424A CD AD 8A      [17]  246 	call	___fsmul
   424D F1            [10]  247 	pop	af
   424E F1            [10]  248 	pop	af
   424F F1            [10]  249 	pop	af
   4250 F1            [10]  250 	pop	af
   4251 4D            [ 4]  251 	ld	c,l
   4252 44            [ 4]  252 	ld	b,h
   4253 21 A0 40      [10]  253 	ld	hl,#0x40A0
   4256 E5            [11]  254 	push	hl
   4257 21 00 00      [10]  255 	ld	hl,#0x0000
   425A E5            [11]  256 	push	hl
   425B D5            [11]  257 	push	de
   425C C5            [11]  258 	push	bc
   425D CD 9B 8E      [17]  259 	call	___fsadd
   4260 F1            [10]  260 	pop	af
   4261 F1            [10]  261 	pop	af
   4262 F1            [10]  262 	pop	af
   4263 F1            [10]  263 	pop	af
   4264 D5            [11]  264 	push	de
   4265 E5            [11]  265 	push	hl
   4266 CD 06 93      [17]  266 	call	___fs2uchar
   4269 F1            [10]  267 	pop	af
   426A F1            [10]  268 	pop	af
   426B 55            [ 4]  269 	ld	d,l
   426C DD 7E F7      [19]  270 	ld	a,-9 (ix)
   426F F5            [11]  271 	push	af
   4270 33            [ 6]  272 	inc	sp
   4271 D5            [11]  273 	push	de
   4272 33            [ 6]  274 	inc	sp
   4273 21 00 C0      [10]  275 	ld	hl,#0xC000
   4276 E5            [11]  276 	push	hl
   4277 CD B6 7A      [17]  277 	call	_cpct_getScreenPtr
                            278 ;src/game/depot.c:54: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   427A DD 75 F8      [19]  279 	ld	-8 (ix),l
   427D DD 74 F9      [19]  280 	ld	-7 (ix),h
                            281 ;src/game/depot.c:53: if(i==iSelect)
   4280 DD 7E 04      [19]  282 	ld	a,4 (ix)
   4283 DD 96 05      [19]  283 	sub	a, 5 (ix)
   4286 20 1D         [12]  284 	jr	NZ,00102$
                            285 ;src/game/depot.c:54: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4288 21 05 05      [10]  286 	ld	hl,#0x0505
   428B E5            [11]  287 	push	hl
   428C CD 66 79      [17]  288 	call	_cpct_px2byteM0
   428F 55            [ 4]  289 	ld	d,l
   4290 21 16 16      [10]  290 	ld	hl,#0x1616
   4293 E5            [11]  291 	push	hl
   4294 D5            [11]  292 	push	de
   4295 33            [ 6]  293 	inc	sp
   4296 DD 6E F8      [19]  294 	ld	l,-8 (ix)
   4299 DD 66 F9      [19]  295 	ld	h,-7 (ix)
   429C E5            [11]  296 	push	hl
   429D CD FD 79      [17]  297 	call	_cpct_drawSolidBox
   42A0 F1            [10]  298 	pop	af
   42A1 F1            [10]  299 	pop	af
   42A2 33            [ 6]  300 	inc	sp
   42A3 18 1B         [12]  301 	jr	00103$
   42A5                     302 00102$:
                            303 ;src/game/depot.c:56: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
   42A5 21 0B 0B      [10]  304 	ld	hl,#0x0B0B
   42A8 E5            [11]  305 	push	hl
   42A9 CD 66 79      [17]  306 	call	_cpct_px2byteM0
   42AC 55            [ 4]  307 	ld	d,l
   42AD 21 16 16      [10]  308 	ld	hl,#0x1616
   42B0 E5            [11]  309 	push	hl
   42B1 D5            [11]  310 	push	de
   42B2 33            [ 6]  311 	inc	sp
   42B3 DD 6E F8      [19]  312 	ld	l,-8 (ix)
   42B6 DD 66 F9      [19]  313 	ld	h,-7 (ix)
   42B9 E5            [11]  314 	push	hl
   42BA CD FD 79      [17]  315 	call	_cpct_drawSolidBox
   42BD F1            [10]  316 	pop	af
   42BE F1            [10]  317 	pop	af
   42BF 33            [ 6]  318 	inc	sp
   42C0                     319 00103$:
                            320 ;src/game/depot.c:58: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4)+1, 30+40*(i%4)+1);
   42C0 DD 7E FB      [19]  321 	ld	a,-5 (ix)
   42C3 C6 1F         [ 7]  322 	add	a, #0x1F
   42C5 DD 77 F8      [19]  323 	ld	-8 (ix),a
   42C8 DD 6E FE      [19]  324 	ld	l,-2 (ix)
   42CB DD 66 FF      [19]  325 	ld	h,-1 (ix)
   42CE E5            [11]  326 	push	hl
   42CF DD 6E FC      [19]  327 	ld	l,-4 (ix)
   42D2 DD 66 FD      [19]  328 	ld	h,-3 (ix)
   42D5 E5            [11]  329 	push	hl
   42D6 CD F7 77      [17]  330 	call	_floorf
   42D9 F1            [10]  331 	pop	af
   42DA F1            [10]  332 	pop	af
   42DB EB            [ 4]  333 	ex	de, hl
   42DC E5            [11]  334 	push	hl
   42DD D5            [11]  335 	push	de
   42DE 21 C8 41      [10]  336 	ld	hl,#0x41C8
   42E1 E5            [11]  337 	push	hl
   42E2 21 00 00      [10]  338 	ld	hl,#0x0000
   42E5 E5            [11]  339 	push	hl
   42E6 CD AD 8A      [17]  340 	call	___fsmul
   42E9 F1            [10]  341 	pop	af
   42EA F1            [10]  342 	pop	af
   42EB F1            [10]  343 	pop	af
   42EC F1            [10]  344 	pop	af
   42ED 4D            [ 4]  345 	ld	c,l
   42EE 44            [ 4]  346 	ld	b,h
   42EF 21 C0 40      [10]  347 	ld	hl,#0x40C0
   42F2 E5            [11]  348 	push	hl
   42F3 21 00 00      [10]  349 	ld	hl,#0x0000
   42F6 E5            [11]  350 	push	hl
   42F7 D5            [11]  351 	push	de
   42F8 C5            [11]  352 	push	bc
   42F9 CD 9B 8E      [17]  353 	call	___fsadd
   42FC F1            [10]  354 	pop	af
   42FD F1            [10]  355 	pop	af
   42FE F1            [10]  356 	pop	af
   42FF F1            [10]  357 	pop	af
   4300 D5            [11]  358 	push	de
   4301 E5            [11]  359 	push	hl
   4302 CD 06 93      [17]  360 	call	___fs2uchar
   4305 F1            [10]  361 	pop	af
   4306 F1            [10]  362 	pop	af
   4307 55            [ 4]  363 	ld	d,l
   4308 DD 7E F8      [19]  364 	ld	a,-8 (ix)
   430B F5            [11]  365 	push	af
   430C 33            [ 6]  366 	inc	sp
   430D D5            [11]  367 	push	de
   430E 33            [ 6]  368 	inc	sp
   430F 21 00 C0      [10]  369 	ld	hl,#0xC000
   4312 E5            [11]  370 	push	hl
   4313 CD B6 7A      [17]  371 	call	_cpct_getScreenPtr
                            372 ;src/game/depot.c:54: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4316 4D            [ 4]  373 	ld	c, l
   4317 44            [ 4]  374 	ld	b, h
                            375 ;src/game/depot.c:60: if(i<locDelocked)
   4318 21 AB 8A      [10]  376 	ld	hl,#_locDelocked
   431B DD 7E 04      [19]  377 	ld	a,4 (ix)
   431E 96            [ 7]  378 	sub	a, (hl)
   431F 30 52         [12]  379 	jr	NC,00110$
                            380 ;src/game/depot.c:62: switch(i)
   4321 3E 03         [ 7]  381 	ld	a,#0x03
   4323 DD 96 04      [19]  382 	sub	a, 4 (ix)
   4326 38 57         [12]  383 	jr	C,00112$
   4328 DD 5E 04      [19]  384 	ld	e,4 (ix)
   432B 16 00         [ 7]  385 	ld	d,#0x00
   432D 21 33 43      [10]  386 	ld	hl,#00128$
   4330 19            [11]  387 	add	hl,de
   4331 19            [11]  388 	add	hl,de
                            389 ;src/game/depot.c:64: case 0:
   4332 E9            [ 4]  390 	jp	(hl)
   4333                     391 00128$:
   4333 18 06         [12]  392 	jr	00104$
   4335 18 12         [12]  393 	jr	00105$
   4337 18 1E         [12]  394 	jr	00106$
   4339 18 2A         [12]  395 	jr	00107$
   433B                     396 00104$:
                            397 ;src/game/depot.c:65: cpct_drawSprite(l130B, p_video, 20, 20);
   433B 11 D5 6A      [10]  398 	ld	de,#_l130B+0
   433E 21 14 14      [10]  399 	ld	hl,#0x1414
   4341 E5            [11]  400 	push	hl
   4342 C5            [11]  401 	push	bc
   4343 D5            [11]  402 	push	de
   4344 CD 88 74      [17]  403 	call	_cpct_drawSprite
                            404 ;src/game/depot.c:66: break;
   4347 18 36         [12]  405 	jr	00112$
                            406 ;src/game/depot.c:67: case 1:
   4349                     407 00105$:
                            408 ;src/game/depot.c:68: cpct_drawSprite(l141TA, p_video, 20, 20);
   4349 11 65 6C      [10]  409 	ld	de,#_l141TA+0
   434C 21 14 14      [10]  410 	ld	hl,#0x1414
   434F E5            [11]  411 	push	hl
   4350 C5            [11]  412 	push	bc
   4351 D5            [11]  413 	push	de
   4352 CD 88 74      [17]  414 	call	_cpct_drawSprite
                            415 ;src/game/depot.c:69: break;
   4355 18 28         [12]  416 	jr	00112$
                            417 ;src/game/depot.c:70: case 2:
   4357                     418 00106$:
                            419 ;src/game/depot.c:71: cpct_drawSprite(l142AT, p_video, 20, 20);
   4357 11 F5 6D      [10]  420 	ld	de,#_l142AT+0
   435A 21 14 14      [10]  421 	ld	hl,#0x1414
   435D E5            [11]  422 	push	hl
   435E C5            [11]  423 	push	bc
   435F D5            [11]  424 	push	de
   4360 CD 88 74      [17]  425 	call	_cpct_drawSprite
                            426 ;src/game/depot.c:72: break;
   4363 18 1A         [12]  427 	jr	00112$
                            428 ;src/game/depot.c:73: case 3:
   4365                     429 00107$:
                            430 ;src/game/depot.c:74: cpct_drawSprite(l141P, p_video, 20, 20);
   4365 11 85 6F      [10]  431 	ld	de,#_l141P+0
   4368 21 14 14      [10]  432 	ld	hl,#0x1414
   436B E5            [11]  433 	push	hl
   436C C5            [11]  434 	push	bc
   436D D5            [11]  435 	push	de
   436E CD 88 74      [17]  436 	call	_cpct_drawSprite
                            437 ;src/game/depot.c:76: }
   4371 18 0C         [12]  438 	jr	00112$
   4373                     439 00110$:
                            440 ;src/game/depot.c:82: cpct_drawSprite(lock, p_video, 20, 20);
   4373 11 AF 68      [10]  441 	ld	de,#_lock
   4376 21 14 14      [10]  442 	ld	hl,#0x1414
   4379 E5            [11]  443 	push	hl
   437A C5            [11]  444 	push	bc
   437B D5            [11]  445 	push	de
   437C CD 88 74      [17]  446 	call	_cpct_drawSprite
   437F                     447 00112$:
   437F DD F9         [10]  448 	ld	sp, ix
   4381 DD E1         [14]  449 	pop	ix
   4383 C9            [10]  450 	ret
                            451 ;src/game/depot.c:86: void drawAllLocomotives(u8 iSelect)
                            452 ;	---------------------------------
                            453 ; Function drawAllLocomotives
                            454 ; ---------------------------------
   4384                     455 _drawAllLocomotives::
                            456 ;src/game/depot.c:90: putM0();
   4384 CD 51 5B      [17]  457 	call	_putM0
                            458 ;src/game/depot.c:92: cpct_clearScreen(cpct_px2byteM0(9,9));
   4387 21 09 09      [10]  459 	ld	hl,#0x0909
   438A E5            [11]  460 	push	hl
   438B CD 66 79      [17]  461 	call	_cpct_px2byteM0
   438E 65            [ 4]  462 	ld	h,l
   438F 01 00 40      [10]  463 	ld	bc,#0x4000
   4392 C5            [11]  464 	push	bc
   4393 E5            [11]  465 	push	hl
   4394 33            [ 6]  466 	inc	sp
   4395 21 00 C0      [10]  467 	ld	hl,#0xC000
   4398 E5            [11]  468 	push	hl
   4399 CD 82 79      [17]  469 	call	_cpct_memset
                            470 ;src/game/depot.c:93: for(i=0; i<12; i++)
   439C 16 00         [ 7]  471 	ld	d,#0x00
   439E                     472 00102$:
                            473 ;src/game/depot.c:94: drawLocomotive(i, iSelect);
   439E D5            [11]  474 	push	de
   439F 21 04 00      [10]  475 	ld	hl, #4+0
   43A2 39            [11]  476 	add	hl, sp
   43A3 7E            [ 7]  477 	ld	a, (hl)
   43A4 F5            [11]  478 	push	af
   43A5 33            [ 6]  479 	inc	sp
   43A6 D5            [11]  480 	push	de
   43A7 33            [ 6]  481 	inc	sp
   43A8 CD EF 41      [17]  482 	call	_drawLocomotive
   43AB F1            [10]  483 	pop	af
   43AC D1            [10]  484 	pop	de
                            485 ;src/game/depot.c:93: for(i=0; i<12; i++)
   43AD 14            [ 4]  486 	inc	d
   43AE 7A            [ 4]  487 	ld	a,d
   43AF D6 0C         [ 7]  488 	sub	a, #0x0C
   43B1 38 EB         [12]  489 	jr	C,00102$
   43B3 C9            [10]  490 	ret
                            491 ;src/game/depot.c:97: u8 confirmBuyLocomotive(u8 iSelect)
                            492 ;	---------------------------------
                            493 ; Function confirmBuyLocomotive
                            494 ; ---------------------------------
   43B4                     495 _confirmBuyLocomotive::
   43B4 DD E5         [15]  496 	push	ix
   43B6 DD 21 00 00   [14]  497 	ld	ix,#0
   43BA DD 39         [15]  498 	add	ix,sp
   43BC 21 F4 FF      [10]  499 	ld	hl,#-12
   43BF 39            [11]  500 	add	hl,sp
   43C0 F9            [ 6]  501 	ld	sp,hl
                            502 ;src/game/depot.c:104: putM2();
   43C1 CD 78 5B      [17]  503 	call	_putM2
                            504 ;src/game/depot.c:106: switch(iSelect)
   43C4 3E 03         [ 7]  505 	ld	a,#0x03
   43C6 DD 96 04      [19]  506 	sub	a, 4 (ix)
   43C9 DA E0 44      [10]  507 	jp	C,00105$
   43CC DD 5E 04      [19]  508 	ld	e,4 (ix)
   43CF 16 00         [ 7]  509 	ld	d,#0x00
   43D1 21 D8 43      [10]  510 	ld	hl,#00125$
   43D4 19            [11]  511 	add	hl,de
   43D5 19            [11]  512 	add	hl,de
   43D6 19            [11]  513 	add	hl,de
   43D7 E9            [ 4]  514 	jp	(hl)
   43D8                     515 00125$:
   43D8 C3 E4 43      [10]  516 	jp	00101$
   43DB C3 24 44      [10]  517 	jp	00102$
   43DE C3 64 44      [10]  518 	jp	00103$
   43E1 C3 A3 44      [10]  519 	jp	00104$
                            520 ;src/game/depot.c:108: case 0:
   43E4                     521 00101$:
                            522 ;src/game/depot.c:109: txtWindowLocomotive[0] = "130 B";
   43E4 21 00 00      [10]  523 	ld	hl,#0x0000
   43E7 39            [11]  524 	add	hl,sp
   43E8 5D            [ 4]  525 	ld	e,l
   43E9 54            [ 4]  526 	ld	d,h
   43EA 36 27         [10]  527 	ld	(hl),#<(___str_2)
   43EC 23            [ 6]  528 	inc	hl
   43ED 36 46         [10]  529 	ld	(hl),#>(___str_2)
                            530 ;src/game/depot.c:110: txtWindowLocomotive[1] = "";
   43EF 6B            [ 4]  531 	ld	l, e
   43F0 62            [ 4]  532 	ld	h, d
   43F1 23            [ 6]  533 	inc	hl
   43F2 23            [ 6]  534 	inc	hl
   43F3 01 2D 46      [10]  535 	ld	bc,#___str_3+0
   43F6 71            [ 7]  536 	ld	(hl),c
   43F7 23            [ 6]  537 	inc	hl
   43F8 70            [ 7]  538 	ld	(hl),b
                            539 ;src/game/depot.c:111: txtWindowLocomotive[2] = "Propulsion: steam";
   43F9 21 04 00      [10]  540 	ld	hl,#0x0004
   43FC 19            [11]  541 	add	hl,de
   43FD 01 2E 46      [10]  542 	ld	bc,#___str_4+0
   4400 71            [ 7]  543 	ld	(hl),c
   4401 23            [ 6]  544 	inc	hl
   4402 70            [ 7]  545 	ld	(hl),b
                            546 ;src/game/depot.c:112: txtWindowLocomotive[3] = "Entry of service: 1909";
   4403 21 06 00      [10]  547 	ld	hl,#0x0006
   4406 19            [11]  548 	add	hl,de
   4407 01 40 46      [10]  549 	ld	bc,#___str_5+0
   440A 71            [ 7]  550 	ld	(hl),c
   440B 23            [ 6]  551 	inc	hl
   440C 70            [ 7]  552 	ld	(hl),b
                            553 ;src/game/depot.c:113: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   440D 21 08 00      [10]  554 	ld	hl,#0x0008
   4410 19            [11]  555 	add	hl,de
   4411 01 57 46      [10]  556 	ld	bc,#___str_6+0
   4414 71            [ 7]  557 	ld	(hl),c
   4415 23            [ 6]  558 	inc	hl
   4416 70            [ 7]  559 	ld	(hl),b
                            560 ;src/game/depot.c:114: txtWindowLocomotive[5] = "Price: 1000$";
   4417 21 0A 00      [10]  561 	ld	hl,#0x000A
   441A 19            [11]  562 	add	hl,de
   441B 11 6E 46      [10]  563 	ld	de,#___str_7+0
   441E 73            [ 7]  564 	ld	(hl),e
   441F 23            [ 6]  565 	inc	hl
   4420 72            [ 7]  566 	ld	(hl),d
                            567 ;src/game/depot.c:115: break;
   4421 C3 E0 44      [10]  568 	jp	00105$
                            569 ;src/game/depot.c:116: case 1:
   4424                     570 00102$:
                            571 ;src/game/depot.c:117: txtWindowLocomotive[0] = "141 TA";
   4424 21 00 00      [10]  572 	ld	hl,#0x0000
   4427 39            [11]  573 	add	hl,sp
   4428 5D            [ 4]  574 	ld	e,l
   4429 54            [ 4]  575 	ld	d,h
   442A 36 7B         [10]  576 	ld	(hl),#<(___str_8)
   442C 23            [ 6]  577 	inc	hl
   442D 36 46         [10]  578 	ld	(hl),#>(___str_8)
                            579 ;src/game/depot.c:118: txtWindowLocomotive[1] = "";
   442F 6B            [ 4]  580 	ld	l, e
   4430 62            [ 4]  581 	ld	h, d
   4431 23            [ 6]  582 	inc	hl
   4432 23            [ 6]  583 	inc	hl
   4433 01 2D 46      [10]  584 	ld	bc,#___str_3+0
   4436 71            [ 7]  585 	ld	(hl),c
   4437 23            [ 6]  586 	inc	hl
   4438 70            [ 7]  587 	ld	(hl),b
                            588 ;src/game/depot.c:119: txtWindowLocomotive[2] = "Propulsion: steam";
   4439 21 04 00      [10]  589 	ld	hl,#0x0004
   443C 19            [11]  590 	add	hl,de
   443D 01 2E 46      [10]  591 	ld	bc,#___str_4+0
   4440 71            [ 7]  592 	ld	(hl),c
   4441 23            [ 6]  593 	inc	hl
   4442 70            [ 7]  594 	ld	(hl),b
                            595 ;src/game/depot.c:120: txtWindowLocomotive[3] = "Entry of service: 1911";
   4443 21 06 00      [10]  596 	ld	hl,#0x0006
   4446 19            [11]  597 	add	hl,de
   4447 01 82 46      [10]  598 	ld	bc,#___str_9+0
   444A 71            [ 7]  599 	ld	(hl),c
   444B 23            [ 6]  600 	inc	hl
   444C 70            [ 7]  601 	ld	(hl),b
                            602 ;src/game/depot.c:121: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   444D 21 08 00      [10]  603 	ld	hl,#0x0008
   4450 19            [11]  604 	add	hl,de
   4451 01 99 46      [10]  605 	ld	bc,#___str_10+0
   4454 71            [ 7]  606 	ld	(hl),c
   4455 23            [ 6]  607 	inc	hl
   4456 70            [ 7]  608 	ld	(hl),b
                            609 ;src/game/depot.c:122: txtWindowLocomotive[5] = "Price: 900$";
   4457 21 0A 00      [10]  610 	ld	hl,#0x000A
   445A 19            [11]  611 	add	hl,de
   445B 11 B0 46      [10]  612 	ld	de,#___str_11+0
   445E 73            [ 7]  613 	ld	(hl),e
   445F 23            [ 6]  614 	inc	hl
   4460 72            [ 7]  615 	ld	(hl),d
                            616 ;src/game/depot.c:123: break;
   4461 C3 E0 44      [10]  617 	jp	00105$
                            618 ;src/game/depot.c:124: case 2:
   4464                     619 00103$:
                            620 ;src/game/depot.c:125: txtWindowLocomotive[0] = "142 AT";
   4464 21 00 00      [10]  621 	ld	hl,#0x0000
   4467 39            [11]  622 	add	hl,sp
   4468 5D            [ 4]  623 	ld	e,l
   4469 54            [ 4]  624 	ld	d,h
   446A 36 BC         [10]  625 	ld	(hl),#<(___str_12)
   446C 23            [ 6]  626 	inc	hl
   446D 36 46         [10]  627 	ld	(hl),#>(___str_12)
                            628 ;src/game/depot.c:126: txtWindowLocomotive[1] = "";
   446F 6B            [ 4]  629 	ld	l, e
   4470 62            [ 4]  630 	ld	h, d
   4471 23            [ 6]  631 	inc	hl
   4472 23            [ 6]  632 	inc	hl
   4473 01 2D 46      [10]  633 	ld	bc,#___str_3+0
   4476 71            [ 7]  634 	ld	(hl),c
   4477 23            [ 6]  635 	inc	hl
   4478 70            [ 7]  636 	ld	(hl),b
                            637 ;src/game/depot.c:127: txtWindowLocomotive[2] = "Propulsion: steam";
   4479 21 04 00      [10]  638 	ld	hl,#0x0004
   447C 19            [11]  639 	add	hl,de
   447D 01 2E 46      [10]  640 	ld	bc,#___str_4+0
   4480 71            [ 7]  641 	ld	(hl),c
   4481 23            [ 6]  642 	inc	hl
   4482 70            [ 7]  643 	ld	(hl),b
                            644 ;src/game/depot.c:128: txtWindowLocomotive[3] = "Entry of service: 1926";
   4483 21 06 00      [10]  645 	ld	hl,#0x0006
   4486 19            [11]  646 	add	hl,de
   4487 01 C3 46      [10]  647 	ld	bc,#___str_13+0
   448A 71            [ 7]  648 	ld	(hl),c
   448B 23            [ 6]  649 	inc	hl
   448C 70            [ 7]  650 	ld	(hl),b
                            651 ;src/game/depot.c:129: txtWindowLocomotive[4] = "Maximum speed: 95 km/h";
   448D 21 08 00      [10]  652 	ld	hl,#0x0008
   4490 19            [11]  653 	add	hl,de
   4491 01 DA 46      [10]  654 	ld	bc,#___str_14+0
   4494 71            [ 7]  655 	ld	(hl),c
   4495 23            [ 6]  656 	inc	hl
   4496 70            [ 7]  657 	ld	(hl),b
                            658 ;src/game/depot.c:130: txtWindowLocomotive[5] = "Price: 1500$";
   4497 21 0A 00      [10]  659 	ld	hl,#0x000A
   449A 19            [11]  660 	add	hl,de
   449B 11 F1 46      [10]  661 	ld	de,#___str_15+0
   449E 73            [ 7]  662 	ld	(hl),e
   449F 23            [ 6]  663 	inc	hl
   44A0 72            [ 7]  664 	ld	(hl),d
                            665 ;src/game/depot.c:131: break;
   44A1 18 3D         [12]  666 	jr	00105$
                            667 ;src/game/depot.c:133: case 3:
   44A3                     668 00104$:
                            669 ;src/game/depot.c:134: txtWindowLocomotive[0] = "141 P";
   44A3 21 00 00      [10]  670 	ld	hl,#0x0000
   44A6 39            [11]  671 	add	hl,sp
   44A7 5D            [ 4]  672 	ld	e,l
   44A8 54            [ 4]  673 	ld	d,h
   44A9 36 FE         [10]  674 	ld	(hl),#<(___str_16)
   44AB 23            [ 6]  675 	inc	hl
   44AC 36 46         [10]  676 	ld	(hl),#>(___str_16)
                            677 ;src/game/depot.c:135: txtWindowLocomotive[1] = "";
   44AE 6B            [ 4]  678 	ld	l, e
   44AF 62            [ 4]  679 	ld	h, d
   44B0 23            [ 6]  680 	inc	hl
   44B1 23            [ 6]  681 	inc	hl
   44B2 01 2D 46      [10]  682 	ld	bc,#___str_3+0
   44B5 71            [ 7]  683 	ld	(hl),c
   44B6 23            [ 6]  684 	inc	hl
   44B7 70            [ 7]  685 	ld	(hl),b
                            686 ;src/game/depot.c:136: txtWindowLocomotive[2] = "Propulsion: steam";
   44B8 21 04 00      [10]  687 	ld	hl,#0x0004
   44BB 19            [11]  688 	add	hl,de
   44BC 01 2E 46      [10]  689 	ld	bc,#___str_4+0
   44BF 71            [ 7]  690 	ld	(hl),c
   44C0 23            [ 6]  691 	inc	hl
   44C1 70            [ 7]  692 	ld	(hl),b
                            693 ;src/game/depot.c:137: txtWindowLocomotive[3] = "Entry of service: 1942";
   44C2 21 06 00      [10]  694 	ld	hl,#0x0006
   44C5 19            [11]  695 	add	hl,de
   44C6 01 04 47      [10]  696 	ld	bc,#___str_17+0
   44C9 71            [ 7]  697 	ld	(hl),c
   44CA 23            [ 6]  698 	inc	hl
   44CB 70            [ 7]  699 	ld	(hl),b
                            700 ;src/game/depot.c:138: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   44CC 21 08 00      [10]  701 	ld	hl,#0x0008
   44CF 19            [11]  702 	add	hl,de
   44D0 01 1B 47      [10]  703 	ld	bc,#___str_18+0
   44D3 71            [ 7]  704 	ld	(hl),c
   44D4 23            [ 6]  705 	inc	hl
   44D5 70            [ 7]  706 	ld	(hl),b
                            707 ;src/game/depot.c:139: txtWindowLocomotive[5] = "Price: 2000$";
   44D6 21 0A 00      [10]  708 	ld	hl,#0x000A
   44D9 19            [11]  709 	add	hl,de
   44DA 11 33 47      [10]  710 	ld	de,#___str_19+0
   44DD 73            [ 7]  711 	ld	(hl),e
   44DE 23            [ 6]  712 	inc	hl
   44DF 72            [ 7]  713 	ld	(hl),d
                            714 ;src/game/depot.c:141: }
   44E0                     715 00105$:
                            716 ;src/game/depot.c:144: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   44E0 21 00 00      [10]  717 	ld	hl,#0x0000
   44E3 39            [11]  718 	add	hl,sp
   44E4 EB            [ 4]  719 	ex	de,hl
   44E5 21 06 01      [10]  720 	ld	hl,#0x0106
   44E8 E5            [11]  721 	push	hl
   44E9 D5            [11]  722 	push	de
   44EA CD 7C 60      [17]  723 	call	_drawWindow
   44ED F1            [10]  724 	pop	af
   44EE F1            [10]  725 	pop	af
   44EF 4D            [ 4]  726 	ld	c,l
                            727 ;src/game/depot.c:147: if (returnChoice==1)
   44F0 79            [ 4]  728 	ld	a,c
   44F1 3D            [ 4]  729 	dec	a
   44F2 C2 21 46      [10]  730 	jp	NZ,00110$
                            731 ;src/game/depot.c:149: if(nbTrainList==0)
   44F5 3A AC 8A      [13]  732 	ld	a,(#_nbTrainList + 0)
   44F8 B7            [ 4]  733 	or	a, a
   44F9 20 0F         [12]  734 	jr	NZ,00107$
                            735 ;src/game/depot.c:150: trainList = (Train*)malloc(sizeof(Train));
   44FB C5            [11]  736 	push	bc
   44FC 21 09 00      [10]  737 	ld	hl,#0x0009
   44FF E5            [11]  738 	push	hl
   4500 CD 01 76      [17]  739 	call	_malloc
   4503 F1            [10]  740 	pop	af
   4504 C1            [10]  741 	pop	bc
   4505 22 A6 8A      [16]  742 	ld	(_trainList),hl
   4508 18 1D         [12]  743 	jr	00108$
   450A                     744 00107$:
                            745 ;src/game/depot.c:152: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   450A FD 21 AC 8A   [14]  746 	ld	iy,#_nbTrainList
   450E FD 6E 00      [19]  747 	ld	l,0 (iy)
   4511 26 00         [ 7]  748 	ld	h,#0x00
   4513 23            [ 6]  749 	inc	hl
   4514 5D            [ 4]  750 	ld	e, l
   4515 54            [ 4]  751 	ld	d, h
   4516 29            [11]  752 	add	hl, hl
   4517 29            [11]  753 	add	hl, hl
   4518 29            [11]  754 	add	hl, hl
   4519 19            [11]  755 	add	hl, de
   451A EB            [ 4]  756 	ex	de,hl
   451B 2A A6 8A      [16]  757 	ld	hl,(_trainList)
   451E C5            [11]  758 	push	bc
   451F D5            [11]  759 	push	de
   4520 E5            [11]  760 	push	hl
   4521 CD A5 72      [17]  761 	call	_realloc
   4524 F1            [10]  762 	pop	af
   4525 F1            [10]  763 	pop	af
   4526 C1            [10]  764 	pop	bc
   4527                     765 00108$:
                            766 ;src/game/depot.c:155: trainList[nbTrainList].loco = iSelect;
   4527 ED 5B AC 8A   [20]  767 	ld	de,(_nbTrainList)
   452B 16 00         [ 7]  768 	ld	d,#0x00
   452D 6B            [ 4]  769 	ld	l, e
   452E 62            [ 4]  770 	ld	h, d
   452F 29            [11]  771 	add	hl, hl
   4530 29            [11]  772 	add	hl, hl
   4531 29            [11]  773 	add	hl, hl
   4532 19            [11]  774 	add	hl, de
   4533 EB            [ 4]  775 	ex	de,hl
   4534 FD 2A A6 8A   [20]  776 	ld	iy,(_trainList)
   4538 FD 19         [15]  777 	add	iy, de
   453A DD 7E 04      [19]  778 	ld	a,4 (ix)
   453D FD 77 00      [19]  779 	ld	0 (iy), a
                            780 ;src/game/depot.c:158: trainList[nbTrainList].wagon[0] = 0;
   4540 ED 5B AC 8A   [20]  781 	ld	de,(_nbTrainList)
   4544 16 00         [ 7]  782 	ld	d,#0x00
   4546 6B            [ 4]  783 	ld	l, e
   4547 62            [ 4]  784 	ld	h, d
   4548 29            [11]  785 	add	hl, hl
   4549 29            [11]  786 	add	hl, hl
   454A 29            [11]  787 	add	hl, hl
   454B 19            [11]  788 	add	hl, de
   454C EB            [ 4]  789 	ex	de,hl
   454D FD 2A A6 8A   [20]  790 	ld	iy,(_trainList)
   4551 FD 19         [15]  791 	add	iy, de
   4553 FD 23         [10]  792 	inc	iy
   4555 FD 36 00 00   [19]  793 	ld	0 (iy), #0x00
                            794 ;src/game/depot.c:159: trainList[nbTrainList].wagon[1] = 0;
   4559 ED 5B AC 8A   [20]  795 	ld	de,(_nbTrainList)
   455D 16 00         [ 7]  796 	ld	d,#0x00
   455F 6B            [ 4]  797 	ld	l, e
   4560 62            [ 4]  798 	ld	h, d
   4561 29            [11]  799 	add	hl, hl
   4562 29            [11]  800 	add	hl, hl
   4563 29            [11]  801 	add	hl, hl
   4564 19            [11]  802 	add	hl, de
   4565 EB            [ 4]  803 	ex	de,hl
   4566 FD 2A A6 8A   [20]  804 	ld	iy,(_trainList)
   456A FD 19         [15]  805 	add	iy, de
   456C FD 23         [10]  806 	inc	iy
   456E FD 23         [10]  807 	inc	iy
   4570 FD 36 00 00   [19]  808 	ld	0 (iy), #0x00
                            809 ;src/game/depot.c:160: trainList[nbTrainList].wagon[2] = 0;
   4574 ED 5B AC 8A   [20]  810 	ld	de,(_nbTrainList)
   4578 16 00         [ 7]  811 	ld	d,#0x00
   457A 6B            [ 4]  812 	ld	l, e
   457B 62            [ 4]  813 	ld	h, d
   457C 29            [11]  814 	add	hl, hl
   457D 29            [11]  815 	add	hl, hl
   457E 29            [11]  816 	add	hl, hl
   457F 19            [11]  817 	add	hl, de
   4580 EB            [ 4]  818 	ex	de,hl
   4581 FD 2A A6 8A   [20]  819 	ld	iy,(_trainList)
   4585 FD 19         [15]  820 	add	iy, de
   4587 FD 23         [10]  821 	inc	iy
   4589 FD 23         [10]  822 	inc	iy
   458B FD 23         [10]  823 	inc	iy
   458D FD 36 00 00   [19]  824 	ld	0 (iy), #0x00
                            825 ;src/game/depot.c:161: trainList[nbTrainList].wagon[3] = 0;
   4591 ED 5B AC 8A   [20]  826 	ld	de,(_nbTrainList)
   4595 16 00         [ 7]  827 	ld	d,#0x00
   4597 6B            [ 4]  828 	ld	l, e
   4598 62            [ 4]  829 	ld	h, d
   4599 29            [11]  830 	add	hl, hl
   459A 29            [11]  831 	add	hl, hl
   459B 29            [11]  832 	add	hl, hl
   459C 19            [11]  833 	add	hl, de
   459D EB            [ 4]  834 	ex	de,hl
   459E FD 2A A6 8A   [20]  835 	ld	iy,(_trainList)
   45A2 FD 19         [15]  836 	add	iy, de
   45A4 11 04 00      [10]  837 	ld	de,#0x0004
   45A7 FD 19         [15]  838 	add	iy, de
   45A9 FD 36 00 00   [19]  839 	ld	0 (iy), #0x00
                            840 ;src/game/depot.c:162: trainList[nbTrainList].wagon[4] = 0;
   45AD ED 5B AC 8A   [20]  841 	ld	de,(_nbTrainList)
   45B1 16 00         [ 7]  842 	ld	d,#0x00
   45B3 6B            [ 4]  843 	ld	l, e
   45B4 62            [ 4]  844 	ld	h, d
   45B5 29            [11]  845 	add	hl, hl
   45B6 29            [11]  846 	add	hl, hl
   45B7 29            [11]  847 	add	hl, hl
   45B8 19            [11]  848 	add	hl, de
   45B9 EB            [ 4]  849 	ex	de,hl
   45BA FD 2A A6 8A   [20]  850 	ld	iy,(_trainList)
   45BE FD 19         [15]  851 	add	iy, de
   45C0 11 05 00      [10]  852 	ld	de,#0x0005
   45C3 FD 19         [15]  853 	add	iy, de
   45C5 FD 36 00 00   [19]  854 	ld	0 (iy), #0x00
                            855 ;src/game/depot.c:163: trainList[nbTrainList].wagon[5] = 0;
   45C9 ED 5B AC 8A   [20]  856 	ld	de,(_nbTrainList)
   45CD 16 00         [ 7]  857 	ld	d,#0x00
   45CF 6B            [ 4]  858 	ld	l, e
   45D0 62            [ 4]  859 	ld	h, d
   45D1 29            [11]  860 	add	hl, hl
   45D2 29            [11]  861 	add	hl, hl
   45D3 29            [11]  862 	add	hl, hl
   45D4 19            [11]  863 	add	hl, de
   45D5 EB            [ 4]  864 	ex	de,hl
   45D6 FD 2A A6 8A   [20]  865 	ld	iy,(_trainList)
   45DA FD 19         [15]  866 	add	iy, de
   45DC 11 06 00      [10]  867 	ld	de,#0x0006
   45DF FD 19         [15]  868 	add	iy, de
   45E1 FD 36 00 00   [19]  869 	ld	0 (iy), #0x00
                            870 ;src/game/depot.c:164: trainList[nbTrainList].wagon[6] = 0;
   45E5 ED 5B AC 8A   [20]  871 	ld	de,(_nbTrainList)
   45E9 16 00         [ 7]  872 	ld	d,#0x00
   45EB 6B            [ 4]  873 	ld	l, e
   45EC 62            [ 4]  874 	ld	h, d
   45ED 29            [11]  875 	add	hl, hl
   45EE 29            [11]  876 	add	hl, hl
   45EF 29            [11]  877 	add	hl, hl
   45F0 19            [11]  878 	add	hl, de
   45F1 EB            [ 4]  879 	ex	de,hl
   45F2 FD 2A A6 8A   [20]  880 	ld	iy,(_trainList)
   45F6 FD 19         [15]  881 	add	iy, de
   45F8 11 07 00      [10]  882 	ld	de,#0x0007
   45FB FD 19         [15]  883 	add	iy, de
   45FD FD 36 00 00   [19]  884 	ld	0 (iy), #0x00
                            885 ;src/game/depot.c:165: trainList[nbTrainList].wagon[7] = 0;
   4601 ED 5B AC 8A   [20]  886 	ld	de,(_nbTrainList)
   4605 16 00         [ 7]  887 	ld	d,#0x00
   4607 6B            [ 4]  888 	ld	l, e
   4608 62            [ 4]  889 	ld	h, d
   4609 29            [11]  890 	add	hl, hl
   460A 29            [11]  891 	add	hl, hl
   460B 29            [11]  892 	add	hl, hl
   460C 19            [11]  893 	add	hl, de
   460D EB            [ 4]  894 	ex	de,hl
   460E FD 2A A6 8A   [20]  895 	ld	iy,(_trainList)
   4612 FD 19         [15]  896 	add	iy, de
   4614 11 08 00      [10]  897 	ld	de,#0x0008
   4617 FD 19         [15]  898 	add	iy, de
   4619 FD 36 00 00   [19]  899 	ld	0 (iy), #0x00
                            900 ;src/game/depot.c:168: nbTrainList++;
   461D 21 AC 8A      [10]  901 	ld	hl, #_nbTrainList+0
   4620 34            [11]  902 	inc	(hl)
   4621                     903 00110$:
                            904 ;src/game/depot.c:171: return returnChoice;
   4621 69            [ 4]  905 	ld	l,c
   4622 DD F9         [10]  906 	ld	sp, ix
   4624 DD E1         [14]  907 	pop	ix
   4626 C9            [10]  908 	ret
   4627                     909 ___str_2:
   4627 31 33 30 20 42      910 	.ascii "130 B"
   462C 00                  911 	.db 0x00
   462D                     912 ___str_3:
   462D 00                  913 	.db 0x00
   462E                     914 ___str_4:
   462E 50 72 6F 70 75 6C   915 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   463F 00                  916 	.db 0x00
   4640                     917 ___str_5:
   4640 45 6E 74 72 79 20   918 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   4656 00                  919 	.db 0x00
   4657                     920 ___str_6:
   4657 4D 61 78 69 6D 75   921 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   466D 00                  922 	.db 0x00
   466E                     923 ___str_7:
   466E 50 72 69 63 65 3A   924 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   467A 00                  925 	.db 0x00
   467B                     926 ___str_8:
   467B 31 34 31 20 54 41   927 	.ascii "141 TA"
   4681 00                  928 	.db 0x00
   4682                     929 ___str_9:
   4682 45 6E 74 72 79 20   930 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   4698 00                  931 	.db 0x00
   4699                     932 ___str_10:
   4699 4D 61 78 69 6D 75   933 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   46AF 00                  934 	.db 0x00
   46B0                     935 ___str_11:
   46B0 50 72 69 63 65 3A   936 	.ascii "Price: 900$"
        20 39 30 30 24
   46BB 00                  937 	.db 0x00
   46BC                     938 ___str_12:
   46BC 31 34 32 20 41 54   939 	.ascii "142 AT"
   46C2 00                  940 	.db 0x00
   46C3                     941 ___str_13:
   46C3 45 6E 74 72 79 20   942 	.ascii "Entry of service: 1926"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 32 36
   46D9 00                  943 	.db 0x00
   46DA                     944 ___str_14:
   46DA 4D 61 78 69 6D 75   945 	.ascii "Maximum speed: 95 km/h"
        6D 20 73 70 65 65
        64 3A 20 39 35 20
        6B 6D 2F 68
   46F0 00                  946 	.db 0x00
   46F1                     947 ___str_15:
   46F1 50 72 69 63 65 3A   948 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   46FD 00                  949 	.db 0x00
   46FE                     950 ___str_16:
   46FE 31 34 31 20 50      951 	.ascii "141 P"
   4703 00                  952 	.db 0x00
   4704                     953 ___str_17:
   4704 45 6E 74 72 79 20   954 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   471A 00                  955 	.db 0x00
   471B                     956 ___str_18:
   471B 4D 61 78 69 6D 75   957 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   4732 00                  958 	.db 0x00
   4733                     959 ___str_19:
   4733 50 72 69 63 65 3A   960 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   473F 00                  961 	.db 0x00
                            962 ;src/game/depot.c:174: void buyLocomotive()
                            963 ;	---------------------------------
                            964 ; Function buyLocomotive
                            965 ; ---------------------------------
   4740                     966 _buyLocomotive::
                            967 ;src/game/depot.c:176: u8 exit=0;
                            968 ;src/game/depot.c:178: u8 iSelect=0;
   4740 01 00 00      [10]  969 	ld	bc,#0x0000
                            970 ;src/game/depot.c:180: drawAllLocomotives(iSelect);
   4743 C5            [11]  971 	push	bc
   4744 AF            [ 4]  972 	xor	a, a
   4745 F5            [11]  973 	push	af
   4746 33            [ 6]  974 	inc	sp
   4747 CD 84 43      [17]  975 	call	_drawAllLocomotives
   474A 33            [ 6]  976 	inc	sp
   474B C1            [10]  977 	pop	bc
                            978 ;src/game/depot.c:182: do
   474C                     979 00124$:
                            980 ;src/game/depot.c:184: cpct_scanKeyboard(); 
   474C C5            [11]  981 	push	bc
   474D CD D6 7A      [17]  982 	call	_cpct_scanKeyboard
   4750 21 00 01      [10]  983 	ld	hl,#0x0100
   4753 CD 30 74      [17]  984 	call	_cpct_isKeyPressed
   4756 7D            [ 4]  985 	ld	a,l
   4757 C1            [10]  986 	pop	bc
   4758 B7            [ 4]  987 	or	a, a
   4759 28 24         [12]  988 	jr	Z,00122$
                            989 ;src/game/depot.c:188: if (iSelect>0)
   475B 78            [ 4]  990 	ld	a,b
   475C B7            [ 4]  991 	or	a, a
   475D 28 15         [12]  992 	jr	Z,00140$
                            993 ;src/game/depot.c:190: iSelect--;
   475F 05            [ 4]  994 	dec	b
                            995 ;src/game/depot.c:191: drawLocomotive(iSelect, iSelect);
   4760 C5            [11]  996 	push	bc
   4761 C5            [11]  997 	push	bc
   4762 33            [ 6]  998 	inc	sp
   4763 C5            [11]  999 	push	bc
   4764 33            [ 6] 1000 	inc	sp
   4765 CD EF 41      [17] 1001 	call	_drawLocomotive
   4768 F1            [10] 1002 	pop	af
   4769 C1            [10] 1003 	pop	bc
                           1004 ;src/game/depot.c:192: drawLocomotive(iSelect+1, iSelect);
   476A 50            [ 4] 1005 	ld	d,b
   476B 14            [ 4] 1006 	inc	d
   476C C5            [11] 1007 	push	bc
   476D 4A            [ 4] 1008 	ld	c, d
   476E C5            [11] 1009 	push	bc
   476F CD EF 41      [17] 1010 	call	_drawLocomotive
   4772 F1            [10] 1011 	pop	af
   4773 C1            [10] 1012 	pop	bc
                           1013 ;src/game/depot.c:194: for(i=0; i<14000; i++) {} // wait loop
   4774                    1014 00140$:
   4774 11 B0 36      [10] 1015 	ld	de,#0x36B0
   4777                    1016 00129$:
   4777 1B            [ 6] 1017 	dec	de
   4778 7A            [ 4] 1018 	ld	a,d
   4779 B3            [ 4] 1019 	or	a,e
   477A 20 FB         [12] 1020 	jr	NZ,00129$
   477C C3 F1 47      [10] 1021 	jp	00125$
   477F                    1022 00122$:
                           1023 ;src/game/depot.c:196: else if ( cpct_isKeyPressed(Key_CursorDown) )
   477F C5            [11] 1024 	push	bc
   4780 21 00 04      [10] 1025 	ld	hl,#0x0400
   4783 CD 30 74      [17] 1026 	call	_cpct_isKeyPressed
   4786 7D            [ 4] 1027 	ld	a,l
   4787 C1            [10] 1028 	pop	bc
   4788 B7            [ 4] 1029 	or	a, a
   4789 28 24         [12] 1030 	jr	Z,00119$
                           1031 ;src/game/depot.c:198: if (iSelect<11)
   478B 78            [ 4] 1032 	ld	a,b
   478C D6 0B         [ 7] 1033 	sub	a, #0x0B
   478E 30 15         [12] 1034 	jr	NC,00144$
                           1035 ;src/game/depot.c:200: iSelect++;
   4790 04            [ 4] 1036 	inc	b
                           1037 ;src/game/depot.c:201: drawLocomotive(iSelect, iSelect);
   4791 C5            [11] 1038 	push	bc
   4792 C5            [11] 1039 	push	bc
   4793 33            [ 6] 1040 	inc	sp
   4794 C5            [11] 1041 	push	bc
   4795 33            [ 6] 1042 	inc	sp
   4796 CD EF 41      [17] 1043 	call	_drawLocomotive
   4799 F1            [10] 1044 	pop	af
   479A C1            [10] 1045 	pop	bc
                           1046 ;src/game/depot.c:202: drawLocomotive(iSelect-1, iSelect);
   479B 50            [ 4] 1047 	ld	d,b
   479C 15            [ 4] 1048 	dec	d
   479D C5            [11] 1049 	push	bc
   479E 4A            [ 4] 1050 	ld	c, d
   479F C5            [11] 1051 	push	bc
   47A0 CD EF 41      [17] 1052 	call	_drawLocomotive
   47A3 F1            [10] 1053 	pop	af
   47A4 C1            [10] 1054 	pop	bc
                           1055 ;src/game/depot.c:204: for(i=0; i<14000; i++) {} // wait loop
   47A5                    1056 00144$:
   47A5 11 B0 36      [10] 1057 	ld	de,#0x36B0
   47A8                    1058 00132$:
   47A8 1B            [ 6] 1059 	dec	de
   47A9 7A            [ 4] 1060 	ld	a,d
   47AA B3            [ 4] 1061 	or	a,e
   47AB 20 FB         [12] 1062 	jr	NZ,00132$
   47AD 18 42         [12] 1063 	jr	00125$
   47AF                    1064 00119$:
                           1065 ;src/game/depot.c:206: else if ( cpct_isKeyPressed(Key_Return) )
   47AF C5            [11] 1066 	push	bc
   47B0 21 02 04      [10] 1067 	ld	hl,#0x0402
   47B3 CD 30 74      [17] 1068 	call	_cpct_isKeyPressed
   47B6 7D            [ 4] 1069 	ld	a,l
   47B7 C1            [10] 1070 	pop	bc
   47B8 B7            [ 4] 1071 	or	a, a
   47B9 28 28         [12] 1072 	jr	Z,00116$
                           1073 ;src/game/depot.c:208: if(iSelect<locDelocked)
   47BB 21 AB 8A      [10] 1074 	ld	hl,#_locDelocked
   47BE 78            [ 4] 1075 	ld	a,b
   47BF 96            [ 7] 1076 	sub	a, (hl)
   47C0 30 17         [12] 1077 	jr	NC,00149$
                           1078 ;src/game/depot.c:210: if(confirmBuyLocomotive(iSelect) == 1)
   47C2 C5            [11] 1079 	push	bc
   47C3 C5            [11] 1080 	push	bc
   47C4 33            [ 6] 1081 	inc	sp
   47C5 CD B4 43      [17] 1082 	call	_confirmBuyLocomotive
   47C8 33            [ 6] 1083 	inc	sp
   47C9 C1            [10] 1084 	pop	bc
   47CA 2D            [ 4] 1085 	dec	l
   47CB 20 04         [12] 1086 	jr	NZ,00108$
                           1087 ;src/game/depot.c:211: exit=1;
   47CD 0E 01         [ 7] 1088 	ld	c,#0x01
   47CF 18 08         [12] 1089 	jr	00149$
   47D1                    1090 00108$:
                           1091 ;src/game/depot.c:213: drawAllLocomotives(iSelect);
   47D1 C5            [11] 1092 	push	bc
   47D2 C5            [11] 1093 	push	bc
   47D3 33            [ 6] 1094 	inc	sp
   47D4 CD 84 43      [17] 1095 	call	_drawAllLocomotives
   47D7 33            [ 6] 1096 	inc	sp
   47D8 C1            [10] 1097 	pop	bc
                           1098 ;src/game/depot.c:216: for(i=0; i<14000; i++) {} // wait loop
   47D9                    1099 00149$:
   47D9 11 B0 36      [10] 1100 	ld	de,#0x36B0
   47DC                    1101 00135$:
   47DC 1B            [ 6] 1102 	dec	de
   47DD 7A            [ 4] 1103 	ld	a,d
   47DE B3            [ 4] 1104 	or	a,e
   47DF 20 FB         [12] 1105 	jr	NZ,00135$
   47E1 18 0E         [12] 1106 	jr	00125$
   47E3                    1107 00116$:
                           1108 ;src/game/depot.c:218: else if ( cpct_isKeyPressed(Key_Esc) )
   47E3 C5            [11] 1109 	push	bc
   47E4 21 08 04      [10] 1110 	ld	hl,#0x0408
   47E7 CD 30 74      [17] 1111 	call	_cpct_isKeyPressed
   47EA 7D            [ 4] 1112 	ld	a,l
   47EB C1            [10] 1113 	pop	bc
   47EC B7            [ 4] 1114 	or	a, a
   47ED 28 02         [12] 1115 	jr	Z,00125$
                           1116 ;src/game/depot.c:219: exit=1;
   47EF 0E 01         [ 7] 1117 	ld	c,#0x01
   47F1                    1118 00125$:
                           1119 ;src/game/depot.c:221: while(!exit);
   47F1 79            [ 4] 1120 	ld	a,c
   47F2 B7            [ 4] 1121 	or	a, a
   47F3 CA 4C 47      [10] 1122 	jp	Z,00124$
                           1123 ;src/game/depot.c:223: putM2();
   47F6 C3 78 5B      [10] 1124 	jp  _putM2
                           1125 	.area _CODE
                           1126 	.area _INITIALIZER
                           1127 	.area _CABS (ABS)
