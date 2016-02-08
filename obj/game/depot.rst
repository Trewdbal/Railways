                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 21:24:02 2016
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
   413B CD D7 78      [17]   76 	call	_cpct_memset
                             77 ;src/game/depot.c:10: for(i=0; i<nbTrainList; i++)
   413E 11 00 00      [10]   78 	ld	de,#0x0000
   4141                      79 00103$:
   4141 21 01 8A      [10]   80 	ld	hl,#_nbTrainList
   4144 7A            [ 4]   81 	ld	a,d
   4145 96            [ 7]   82 	sub	a, (hl)
   4146 D0            [11]   83 	ret	NC
                             84 ;src/game/depot.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, 50, 10+i*20);
   4147 7B            [ 4]   85 	ld	a,e
   4148 C6 0A         [ 7]   86 	add	a, #0x0A
   414A D5            [11]   87 	push	de
   414B 57            [ 4]   88 	ld	d,a
   414C 1E 32         [ 7]   89 	ld	e,#0x32
   414E D5            [11]   90 	push	de
   414F 21 00 C0      [10]   91 	ld	hl,#0xC000
   4152 E5            [11]   92 	push	hl
   4153 CD 0B 7A      [17]   93 	call	_cpct_getScreenPtr
   4156 D1            [10]   94 	pop	de
                             95 ;src/game/depot.c:13: cpct_drawSprite(l130B_M2, p_video, 10, 10);
   4157 4D            [ 4]   96 	ld	c, l
   4158 44            [ 4]   97 	ld	b, h
   4159 D5            [11]   98 	push	de
   415A 21 0A 0A      [10]   99 	ld	hl,#0x0A0A
   415D E5            [11]  100 	push	hl
   415E C5            [11]  101 	push	bc
   415F 21 C6 69      [10]  102 	ld	hl,#_l130B_M2
   4162 E5            [11]  103 	push	hl
   4163 CD DD 73      [17]  104 	call	_cpct_drawSprite
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
   4180 CD 2B 7A      [17]  130 	call	_cpct_scanKeyboard
                            131 ;src/game/depot.c:27: if ( cpct_isKeyPressed(Key_Esc) )
   4183 21 08 04      [10]  132 	ld	hl,#0x0408
   4186 CD 85 73      [17]  133 	call	_cpct_isKeyPressed
   4189 7D            [ 4]  134 	ld	a,l
   418A B7            [ 4]  135 	or	a, a
   418B 28 06         [12]  136 	jr	Z,00106$
                            137 ;src/game/depot.c:28: exit=1;
   418D DD 36 FF 01   [19]  138 	ld	-1 (ix),#0x01
   4191 18 32         [12]  139 	jr	00109$
   4193                     140 00106$:
                            141 ;src/game/depot.c:29: else if(cpct_isKeyPressed(Key_Return) )
   4193 21 02 04      [10]  142 	ld	hl,#0x0402
   4196 CD 85 73      [17]  143 	call	_cpct_isKeyPressed
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
   41B6 CD D3 5E      [17]  167 	call	_drawMenu
   41B9 F1            [10]  168 	pop	af
   41BA 33            [ 6]  169 	inc	sp
   41BB 7D            [ 4]  170 	ld	a,l
                            171 ;src/game/depot.c:37: if(menuChoice == 0)
   41BC B7            [ 4]  172 	or	a, a
   41BD 20 03         [12]  173 	jr	NZ,00102$
                            174 ;src/game/depot.c:38: buyLocomotive();
   41BF CD 36 47      [17]  175 	call	_buyLocomotive
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
   421C CD 45 92      [17]  224 	call	___uchar2fs
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
   423A CD 4C 77      [17]  236 	call	_floorf
   423D F1            [10]  237 	pop	af
   423E F1            [10]  238 	pop	af
   423F EB            [ 4]  239 	ex	de, hl
   4240 E5            [11]  240 	push	hl
   4241 D5            [11]  241 	push	de
   4242 21 C8 41      [10]  242 	ld	hl,#0x41C8
   4245 E5            [11]  243 	push	hl
   4246 21 00 00      [10]  244 	ld	hl,#0x0000
   4249 E5            [11]  245 	push	hl
   424A CD 02 8A      [17]  246 	call	___fsmul
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
   425D CD F0 8D      [17]  259 	call	___fsadd
   4260 F1            [10]  260 	pop	af
   4261 F1            [10]  261 	pop	af
   4262 F1            [10]  262 	pop	af
   4263 F1            [10]  263 	pop	af
   4264 D5            [11]  264 	push	de
   4265 E5            [11]  265 	push	hl
   4266 CD 5B 92      [17]  266 	call	___fs2uchar
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
   4277 CD 0B 7A      [17]  277 	call	_cpct_getScreenPtr
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
   428C CD BB 78      [17]  288 	call	_cpct_px2byteM0
   428F 55            [ 4]  289 	ld	d,l
   4290 21 16 16      [10]  290 	ld	hl,#0x1616
   4293 E5            [11]  291 	push	hl
   4294 D5            [11]  292 	push	de
   4295 33            [ 6]  293 	inc	sp
   4296 DD 6E F8      [19]  294 	ld	l,-8 (ix)
   4299 DD 66 F9      [19]  295 	ld	h,-7 (ix)
   429C E5            [11]  296 	push	hl
   429D CD 52 79      [17]  297 	call	_cpct_drawSolidBox
   42A0 F1            [10]  298 	pop	af
   42A1 F1            [10]  299 	pop	af
   42A2 33            [ 6]  300 	inc	sp
   42A3 18 1B         [12]  301 	jr	00103$
   42A5                     302 00102$:
                            303 ;src/game/depot.c:56: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
   42A5 21 0B 0B      [10]  304 	ld	hl,#0x0B0B
   42A8 E5            [11]  305 	push	hl
   42A9 CD BB 78      [17]  306 	call	_cpct_px2byteM0
   42AC 55            [ 4]  307 	ld	d,l
   42AD 21 16 16      [10]  308 	ld	hl,#0x1616
   42B0 E5            [11]  309 	push	hl
   42B1 D5            [11]  310 	push	de
   42B2 33            [ 6]  311 	inc	sp
   42B3 DD 6E F8      [19]  312 	ld	l,-8 (ix)
   42B6 DD 66 F9      [19]  313 	ld	h,-7 (ix)
   42B9 E5            [11]  314 	push	hl
   42BA CD 52 79      [17]  315 	call	_cpct_drawSolidBox
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
   42D6 CD 4C 77      [17]  330 	call	_floorf
   42D9 F1            [10]  331 	pop	af
   42DA F1            [10]  332 	pop	af
   42DB EB            [ 4]  333 	ex	de, hl
   42DC E5            [11]  334 	push	hl
   42DD D5            [11]  335 	push	de
   42DE 21 C8 41      [10]  336 	ld	hl,#0x41C8
   42E1 E5            [11]  337 	push	hl
   42E2 21 00 00      [10]  338 	ld	hl,#0x0000
   42E5 E5            [11]  339 	push	hl
   42E6 CD 02 8A      [17]  340 	call	___fsmul
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
   42F9 CD F0 8D      [17]  353 	call	___fsadd
   42FC F1            [10]  354 	pop	af
   42FD F1            [10]  355 	pop	af
   42FE F1            [10]  356 	pop	af
   42FF F1            [10]  357 	pop	af
   4300 D5            [11]  358 	push	de
   4301 E5            [11]  359 	push	hl
   4302 CD 5B 92      [17]  360 	call	___fs2uchar
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
   4313 CD 0B 7A      [17]  371 	call	_cpct_getScreenPtr
                            372 ;src/game/depot.c:54: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4316 4D            [ 4]  373 	ld	c, l
   4317 44            [ 4]  374 	ld	b, h
                            375 ;src/game/depot.c:60: if(i<locDelocked)
   4318 21 00 8A      [10]  376 	ld	hl,#_locDelocked
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
   433B 11 2A 6A      [10]  398 	ld	de,#_l130B+0
   433E 21 14 14      [10]  399 	ld	hl,#0x1414
   4341 E5            [11]  400 	push	hl
   4342 C5            [11]  401 	push	bc
   4343 D5            [11]  402 	push	de
   4344 CD DD 73      [17]  403 	call	_cpct_drawSprite
                            404 ;src/game/depot.c:66: break;
   4347 18 36         [12]  405 	jr	00112$
                            406 ;src/game/depot.c:67: case 1:
   4349                     407 00105$:
                            408 ;src/game/depot.c:68: cpct_drawSprite(l141TA, p_video, 20, 20);
   4349 11 BA 6B      [10]  409 	ld	de,#_l141TA+0
   434C 21 14 14      [10]  410 	ld	hl,#0x1414
   434F E5            [11]  411 	push	hl
   4350 C5            [11]  412 	push	bc
   4351 D5            [11]  413 	push	de
   4352 CD DD 73      [17]  414 	call	_cpct_drawSprite
                            415 ;src/game/depot.c:69: break;
   4355 18 28         [12]  416 	jr	00112$
                            417 ;src/game/depot.c:70: case 2:
   4357                     418 00106$:
                            419 ;src/game/depot.c:71: cpct_drawSprite(l142AT, p_video, 20, 20);
   4357 11 4A 6D      [10]  420 	ld	de,#_l142AT+0
   435A 21 14 14      [10]  421 	ld	hl,#0x1414
   435D E5            [11]  422 	push	hl
   435E C5            [11]  423 	push	bc
   435F D5            [11]  424 	push	de
   4360 CD DD 73      [17]  425 	call	_cpct_drawSprite
                            426 ;src/game/depot.c:72: break;
   4363 18 1A         [12]  427 	jr	00112$
                            428 ;src/game/depot.c:73: case 3:
   4365                     429 00107$:
                            430 ;src/game/depot.c:74: cpct_drawSprite(l141P, p_video, 20, 20);
   4365 11 DA 6E      [10]  431 	ld	de,#_l141P+0
   4368 21 14 14      [10]  432 	ld	hl,#0x1414
   436B E5            [11]  433 	push	hl
   436C C5            [11]  434 	push	bc
   436D D5            [11]  435 	push	de
   436E CD DD 73      [17]  436 	call	_cpct_drawSprite
                            437 ;src/game/depot.c:76: }
   4371 18 0C         [12]  438 	jr	00112$
   4373                     439 00110$:
                            440 ;src/game/depot.c:82: cpct_drawSprite(lock, p_video, 20, 20);
   4373 11 04 68      [10]  441 	ld	de,#_lock
   4376 21 14 14      [10]  442 	ld	hl,#0x1414
   4379 E5            [11]  443 	push	hl
   437A C5            [11]  444 	push	bc
   437B D5            [11]  445 	push	de
   437C CD DD 73      [17]  446 	call	_cpct_drawSprite
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
   4384 CD A6 5A      [17]  457 	call	_putM0
                            458 ;src/game/depot.c:92: cpct_clearScreen(cpct_px2byteM0(9,9));
   4387 21 09 09      [10]  459 	ld	hl,#0x0909
   438A E5            [11]  460 	push	hl
   438B CD BB 78      [17]  461 	call	_cpct_px2byteM0
   438E 65            [ 4]  462 	ld	h,l
   438F 01 00 40      [10]  463 	ld	bc,#0x4000
   4392 C5            [11]  464 	push	bc
   4393 E5            [11]  465 	push	hl
   4394 33            [ 6]  466 	inc	sp
   4395 21 00 C0      [10]  467 	ld	hl,#0xC000
   4398 E5            [11]  468 	push	hl
   4399 CD D7 78      [17]  469 	call	_cpct_memset
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
   43BC 21 EE FF      [10]  499 	ld	hl,#-18
   43BF 39            [11]  500 	add	hl,sp
   43C0 F9            [ 6]  501 	ld	sp,hl
                            502 ;src/game/depot.c:104: putM2();
   43C1 CD CD 5A      [17]  503 	call	_putM2
                            504 ;src/game/depot.c:106: txtWindowLocomotive[1] = "";	
   43C4 21 00 00      [10]  505 	ld	hl,#0x0000
   43C7 39            [11]  506 	add	hl,sp
   43C8 5D            [ 4]  507 	ld	e,l
   43C9 54            [ 4]  508 	ld	d,h
   43CA 23            [ 6]  509 	inc	hl
   43CB 23            [ 6]  510 	inc	hl
   43CC 01 1D 46      [10]  511 	ld	bc,#___str_2+0
   43CF 71            [ 7]  512 	ld	(hl),c
   43D0 23            [ 6]  513 	inc	hl
   43D1 70            [ 7]  514 	ld	(hl),b
                            515 ;src/game/depot.c:108: switch(iSelect)
   43D2 3E 03         [ 7]  516 	ld	a,#0x03
   43D4 DD 96 04      [19]  517 	sub	a, 4 (ix)
   43D7 DA DB 44      [10]  518 	jp	C,00105$
                            519 ;src/game/depot.c:112: txtWindowLocomotive[2] = "Propulsion: steam";
   43DA 21 04 00      [10]  520 	ld	hl,#0x0004
   43DD 19            [11]  521 	add	hl,de
   43DE DD 75 FC      [19]  522 	ld	-4 (ix),l
   43E1 DD 74 FD      [19]  523 	ld	-3 (ix),h
                            524 ;src/game/depot.c:113: txtWindowLocomotive[3] = "Entry of service: 1909";
   43E4 21 06 00      [10]  525 	ld	hl,#0x0006
   43E7 19            [11]  526 	add	hl,de
   43E8 DD 75 FE      [19]  527 	ld	-2 (ix),l
   43EB DD 74 FF      [19]  528 	ld	-1 (ix),h
                            529 ;src/game/depot.c:114: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   43EE 21 08 00      [10]  530 	ld	hl,#0x0008
   43F1 19            [11]  531 	add	hl,de
   43F2 DD 75 FA      [19]  532 	ld	-6 (ix),l
   43F5 DD 74 FB      [19]  533 	ld	-5 (ix),h
                            534 ;src/game/depot.c:115: txtWindowLocomotive[5] = "Price: 1000$";
   43F8 21 0A 00      [10]  535 	ld	hl,#0x000A
   43FB 19            [11]  536 	add	hl,de
   43FC 4D            [ 4]  537 	ld	c,l
   43FD 44            [ 4]  538 	ld	b,h
                            539 ;src/game/depot.c:108: switch(iSelect)
   43FE D5            [11]  540 	push	de
   43FF DD 5E 04      [19]  541 	ld	e,4 (ix)
   4402 16 00         [ 7]  542 	ld	d,#0x00
   4404 21 0C 44      [10]  543 	ld	hl,#00125$
   4407 19            [11]  544 	add	hl,de
   4408 19            [11]  545 	add	hl,de
   4409 19            [11]  546 	add	hl,de
   440A D1            [10]  547 	pop	de
   440B E9            [ 4]  548 	jp	(hl)
   440C                     549 00125$:
   440C C3 18 44      [10]  550 	jp	00101$
   440F C3 4A 44      [10]  551 	jp	00102$
   4412 C3 7B 44      [10]  552 	jp	00103$
   4415 C3 AC 44      [10]  553 	jp	00104$
                            554 ;src/game/depot.c:110: case 0:
   4418                     555 00101$:
                            556 ;src/game/depot.c:111: txtWindowLocomotive[0] = "130 B";
   4418 6B            [ 4]  557 	ld	l, e
   4419 62            [ 4]  558 	ld	h, d
   441A 36 1E         [10]  559 	ld	(hl),#<(___str_3)
   441C 23            [ 6]  560 	inc	hl
   441D 36 46         [10]  561 	ld	(hl),#>(___str_3)
                            562 ;src/game/depot.c:112: txtWindowLocomotive[2] = "Propulsion: steam";
   441F DD 6E FC      [19]  563 	ld	l,-4 (ix)
   4422 DD 66 FD      [19]  564 	ld	h,-3 (ix)
   4425 36 24         [10]  565 	ld	(hl),#<(___str_4)
   4427 23            [ 6]  566 	inc	hl
   4428 36 46         [10]  567 	ld	(hl),#>(___str_4)
                            568 ;src/game/depot.c:113: txtWindowLocomotive[3] = "Entry of service: 1909";
   442A DD 6E FE      [19]  569 	ld	l,-2 (ix)
   442D DD 66 FF      [19]  570 	ld	h,-1 (ix)
   4430 36 36         [10]  571 	ld	(hl),#<(___str_5)
   4432 23            [ 6]  572 	inc	hl
   4433 36 46         [10]  573 	ld	(hl),#>(___str_5)
                            574 ;src/game/depot.c:114: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   4435 DD 6E FA      [19]  575 	ld	l,-6 (ix)
   4438 DD 66 FB      [19]  576 	ld	h,-5 (ix)
   443B 36 4D         [10]  577 	ld	(hl),#<(___str_6)
   443D 23            [ 6]  578 	inc	hl
   443E 36 46         [10]  579 	ld	(hl),#>(___str_6)
                            580 ;src/game/depot.c:115: txtWindowLocomotive[5] = "Price: 1000$";
   4440 3E 64         [ 7]  581 	ld	a,#<(___str_7)
   4442 02            [ 7]  582 	ld	(bc),a
   4443 03            [ 6]  583 	inc	bc
   4444 3E 46         [ 7]  584 	ld	a,#>(___str_7)
   4446 02            [ 7]  585 	ld	(bc),a
                            586 ;src/game/depot.c:116: break;
   4447 C3 DB 44      [10]  587 	jp	00105$
                            588 ;src/game/depot.c:117: case 1:
   444A                     589 00102$:
                            590 ;src/game/depot.c:118: txtWindowLocomotive[0] = "141 TA";
   444A 6B            [ 4]  591 	ld	l, e
   444B 62            [ 4]  592 	ld	h, d
   444C 36 71         [10]  593 	ld	(hl),#<(___str_8)
   444E 23            [ 6]  594 	inc	hl
   444F 36 46         [10]  595 	ld	(hl),#>(___str_8)
                            596 ;src/game/depot.c:119: txtWindowLocomotive[2] = "Propulsion: steam";
   4451 DD 6E FC      [19]  597 	ld	l,-4 (ix)
   4454 DD 66 FD      [19]  598 	ld	h,-3 (ix)
   4457 36 24         [10]  599 	ld	(hl),#<(___str_4)
   4459 23            [ 6]  600 	inc	hl
   445A 36 46         [10]  601 	ld	(hl),#>(___str_4)
                            602 ;src/game/depot.c:120: txtWindowLocomotive[3] = "Entry of service: 1911";
   445C DD 6E FE      [19]  603 	ld	l,-2 (ix)
   445F DD 66 FF      [19]  604 	ld	h,-1 (ix)
   4462 36 78         [10]  605 	ld	(hl),#<(___str_9)
   4464 23            [ 6]  606 	inc	hl
   4465 36 46         [10]  607 	ld	(hl),#>(___str_9)
                            608 ;src/game/depot.c:121: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   4467 DD 6E FA      [19]  609 	ld	l,-6 (ix)
   446A DD 66 FB      [19]  610 	ld	h,-5 (ix)
   446D 36 8F         [10]  611 	ld	(hl),#<(___str_10)
   446F 23            [ 6]  612 	inc	hl
   4470 36 46         [10]  613 	ld	(hl),#>(___str_10)
                            614 ;src/game/depot.c:122: txtWindowLocomotive[5] = "Price: 900$";
   4472 3E A6         [ 7]  615 	ld	a,#<(___str_11)
   4474 02            [ 7]  616 	ld	(bc),a
   4475 03            [ 6]  617 	inc	bc
   4476 3E 46         [ 7]  618 	ld	a,#>(___str_11)
   4478 02            [ 7]  619 	ld	(bc),a
                            620 ;src/game/depot.c:123: break;
   4479 18 60         [12]  621 	jr	00105$
                            622 ;src/game/depot.c:124: case 2:
   447B                     623 00103$:
                            624 ;src/game/depot.c:125: txtWindowLocomotive[0] = "142 AT";
   447B 6B            [ 4]  625 	ld	l, e
   447C 62            [ 4]  626 	ld	h, d
   447D 36 B2         [10]  627 	ld	(hl),#<(___str_12)
   447F 23            [ 6]  628 	inc	hl
   4480 36 46         [10]  629 	ld	(hl),#>(___str_12)
                            630 ;src/game/depot.c:126: txtWindowLocomotive[2] = "Propulsion: steam";
   4482 DD 6E FC      [19]  631 	ld	l,-4 (ix)
   4485 DD 66 FD      [19]  632 	ld	h,-3 (ix)
   4488 36 24         [10]  633 	ld	(hl),#<(___str_4)
   448A 23            [ 6]  634 	inc	hl
   448B 36 46         [10]  635 	ld	(hl),#>(___str_4)
                            636 ;src/game/depot.c:127: txtWindowLocomotive[3] = "Entry of service: 1926";
   448D DD 6E FE      [19]  637 	ld	l,-2 (ix)
   4490 DD 66 FF      [19]  638 	ld	h,-1 (ix)
   4493 36 B9         [10]  639 	ld	(hl),#<(___str_13)
   4495 23            [ 6]  640 	inc	hl
   4496 36 46         [10]  641 	ld	(hl),#>(___str_13)
                            642 ;src/game/depot.c:128: txtWindowLocomotive[4] = "Maximum speed: 95 km/h";
   4498 DD 6E FA      [19]  643 	ld	l,-6 (ix)
   449B DD 66 FB      [19]  644 	ld	h,-5 (ix)
   449E 36 D0         [10]  645 	ld	(hl),#<(___str_14)
   44A0 23            [ 6]  646 	inc	hl
   44A1 36 46         [10]  647 	ld	(hl),#>(___str_14)
                            648 ;src/game/depot.c:129: txtWindowLocomotive[5] = "Price: 1500$";
   44A3 3E E7         [ 7]  649 	ld	a,#<(___str_15)
   44A5 02            [ 7]  650 	ld	(bc),a
   44A6 03            [ 6]  651 	inc	bc
   44A7 3E 46         [ 7]  652 	ld	a,#>(___str_15)
   44A9 02            [ 7]  653 	ld	(bc),a
                            654 ;src/game/depot.c:130: break;
   44AA 18 2F         [12]  655 	jr	00105$
                            656 ;src/game/depot.c:132: case 3:
   44AC                     657 00104$:
                            658 ;src/game/depot.c:133: txtWindowLocomotive[0] = "141 P";
   44AC 6B            [ 4]  659 	ld	l, e
   44AD 62            [ 4]  660 	ld	h, d
   44AE 36 F4         [10]  661 	ld	(hl),#<(___str_16)
   44B0 23            [ 6]  662 	inc	hl
   44B1 36 46         [10]  663 	ld	(hl),#>(___str_16)
                            664 ;src/game/depot.c:134: txtWindowLocomotive[2] = "Propulsion: steam";
   44B3 DD 6E FC      [19]  665 	ld	l,-4 (ix)
   44B6 DD 66 FD      [19]  666 	ld	h,-3 (ix)
   44B9 36 24         [10]  667 	ld	(hl),#<(___str_4)
   44BB 23            [ 6]  668 	inc	hl
   44BC 36 46         [10]  669 	ld	(hl),#>(___str_4)
                            670 ;src/game/depot.c:135: txtWindowLocomotive[3] = "Entry of service: 1942";
   44BE DD 6E FE      [19]  671 	ld	l,-2 (ix)
   44C1 DD 66 FF      [19]  672 	ld	h,-1 (ix)
   44C4 36 FA         [10]  673 	ld	(hl),#<(___str_17)
   44C6 23            [ 6]  674 	inc	hl
   44C7 36 46         [10]  675 	ld	(hl),#>(___str_17)
                            676 ;src/game/depot.c:136: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   44C9 DD 6E FA      [19]  677 	ld	l,-6 (ix)
   44CC DD 66 FB      [19]  678 	ld	h,-5 (ix)
   44CF 36 11         [10]  679 	ld	(hl),#<(___str_18)
   44D1 23            [ 6]  680 	inc	hl
   44D2 36 47         [10]  681 	ld	(hl),#>(___str_18)
                            682 ;src/game/depot.c:137: txtWindowLocomotive[5] = "Price: 2000$";
   44D4 3E 29         [ 7]  683 	ld	a,#<(___str_19)
   44D6 02            [ 7]  684 	ld	(bc),a
   44D7 03            [ 6]  685 	inc	bc
   44D8 3E 47         [ 7]  686 	ld	a,#>(___str_19)
   44DA 02            [ 7]  687 	ld	(bc),a
                            688 ;src/game/depot.c:139: }
   44DB                     689 00105$:
                            690 ;src/game/depot.c:142: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   44DB 21 06 01      [10]  691 	ld	hl,#0x0106
   44DE E5            [11]  692 	push	hl
   44DF D5            [11]  693 	push	de
   44E0 CD D1 5F      [17]  694 	call	_drawWindow
   44E3 F1            [10]  695 	pop	af
   44E4 F1            [10]  696 	pop	af
   44E5 4D            [ 4]  697 	ld	c,l
                            698 ;src/game/depot.c:145: if (returnChoice==1)
   44E6 79            [ 4]  699 	ld	a,c
   44E7 3D            [ 4]  700 	dec	a
   44E8 C2 17 46      [10]  701 	jp	NZ,00110$
                            702 ;src/game/depot.c:147: if(nbTrainList==0)
   44EB 3A 01 8A      [13]  703 	ld	a,(#_nbTrainList + 0)
   44EE B7            [ 4]  704 	or	a, a
   44EF 20 0F         [12]  705 	jr	NZ,00107$
                            706 ;src/game/depot.c:148: trainList = (Train*)malloc(sizeof(Train));
   44F1 C5            [11]  707 	push	bc
   44F2 21 09 00      [10]  708 	ld	hl,#0x0009
   44F5 E5            [11]  709 	push	hl
   44F6 CD 56 75      [17]  710 	call	_malloc
   44F9 F1            [10]  711 	pop	af
   44FA C1            [10]  712 	pop	bc
   44FB 22 FB 89      [16]  713 	ld	(_trainList),hl
   44FE 18 1D         [12]  714 	jr	00108$
   4500                     715 00107$:
                            716 ;src/game/depot.c:150: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   4500 FD 21 01 8A   [14]  717 	ld	iy,#_nbTrainList
   4504 FD 6E 00      [19]  718 	ld	l,0 (iy)
   4507 26 00         [ 7]  719 	ld	h,#0x00
   4509 23            [ 6]  720 	inc	hl
   450A 5D            [ 4]  721 	ld	e, l
   450B 54            [ 4]  722 	ld	d, h
   450C 29            [11]  723 	add	hl, hl
   450D 29            [11]  724 	add	hl, hl
   450E 29            [11]  725 	add	hl, hl
   450F 19            [11]  726 	add	hl, de
   4510 EB            [ 4]  727 	ex	de,hl
   4511 2A FB 89      [16]  728 	ld	hl,(_trainList)
   4514 C5            [11]  729 	push	bc
   4515 D5            [11]  730 	push	de
   4516 E5            [11]  731 	push	hl
   4517 CD FA 71      [17]  732 	call	_realloc
   451A F1            [10]  733 	pop	af
   451B F1            [10]  734 	pop	af
   451C C1            [10]  735 	pop	bc
   451D                     736 00108$:
                            737 ;src/game/depot.c:153: trainList[nbTrainList].loco = iSelect;
   451D ED 5B 01 8A   [20]  738 	ld	de,(_nbTrainList)
   4521 16 00         [ 7]  739 	ld	d,#0x00
   4523 6B            [ 4]  740 	ld	l, e
   4524 62            [ 4]  741 	ld	h, d
   4525 29            [11]  742 	add	hl, hl
   4526 29            [11]  743 	add	hl, hl
   4527 29            [11]  744 	add	hl, hl
   4528 19            [11]  745 	add	hl, de
   4529 EB            [ 4]  746 	ex	de,hl
   452A FD 2A FB 89   [20]  747 	ld	iy,(_trainList)
   452E FD 19         [15]  748 	add	iy, de
   4530 DD 7E 04      [19]  749 	ld	a,4 (ix)
   4533 FD 77 00      [19]  750 	ld	0 (iy), a
                            751 ;src/game/depot.c:156: trainList[nbTrainList].wagon[0] = 0;
   4536 ED 5B 01 8A   [20]  752 	ld	de,(_nbTrainList)
   453A 16 00         [ 7]  753 	ld	d,#0x00
   453C 6B            [ 4]  754 	ld	l, e
   453D 62            [ 4]  755 	ld	h, d
   453E 29            [11]  756 	add	hl, hl
   453F 29            [11]  757 	add	hl, hl
   4540 29            [11]  758 	add	hl, hl
   4541 19            [11]  759 	add	hl, de
   4542 EB            [ 4]  760 	ex	de,hl
   4543 FD 2A FB 89   [20]  761 	ld	iy,(_trainList)
   4547 FD 19         [15]  762 	add	iy, de
   4549 FD 23         [10]  763 	inc	iy
   454B FD 36 00 00   [19]  764 	ld	0 (iy), #0x00
                            765 ;src/game/depot.c:157: trainList[nbTrainList].wagon[1] = 0;
   454F ED 5B 01 8A   [20]  766 	ld	de,(_nbTrainList)
   4553 16 00         [ 7]  767 	ld	d,#0x00
   4555 6B            [ 4]  768 	ld	l, e
   4556 62            [ 4]  769 	ld	h, d
   4557 29            [11]  770 	add	hl, hl
   4558 29            [11]  771 	add	hl, hl
   4559 29            [11]  772 	add	hl, hl
   455A 19            [11]  773 	add	hl, de
   455B EB            [ 4]  774 	ex	de,hl
   455C FD 2A FB 89   [20]  775 	ld	iy,(_trainList)
   4560 FD 19         [15]  776 	add	iy, de
   4562 FD 23         [10]  777 	inc	iy
   4564 FD 23         [10]  778 	inc	iy
   4566 FD 36 00 00   [19]  779 	ld	0 (iy), #0x00
                            780 ;src/game/depot.c:158: trainList[nbTrainList].wagon[2] = 0;
   456A ED 5B 01 8A   [20]  781 	ld	de,(_nbTrainList)
   456E 16 00         [ 7]  782 	ld	d,#0x00
   4570 6B            [ 4]  783 	ld	l, e
   4571 62            [ 4]  784 	ld	h, d
   4572 29            [11]  785 	add	hl, hl
   4573 29            [11]  786 	add	hl, hl
   4574 29            [11]  787 	add	hl, hl
   4575 19            [11]  788 	add	hl, de
   4576 EB            [ 4]  789 	ex	de,hl
   4577 FD 2A FB 89   [20]  790 	ld	iy,(_trainList)
   457B FD 19         [15]  791 	add	iy, de
   457D FD 23         [10]  792 	inc	iy
   457F FD 23         [10]  793 	inc	iy
   4581 FD 23         [10]  794 	inc	iy
   4583 FD 36 00 00   [19]  795 	ld	0 (iy), #0x00
                            796 ;src/game/depot.c:159: trainList[nbTrainList].wagon[3] = 0;
   4587 ED 5B 01 8A   [20]  797 	ld	de,(_nbTrainList)
   458B 16 00         [ 7]  798 	ld	d,#0x00
   458D 6B            [ 4]  799 	ld	l, e
   458E 62            [ 4]  800 	ld	h, d
   458F 29            [11]  801 	add	hl, hl
   4590 29            [11]  802 	add	hl, hl
   4591 29            [11]  803 	add	hl, hl
   4592 19            [11]  804 	add	hl, de
   4593 EB            [ 4]  805 	ex	de,hl
   4594 FD 2A FB 89   [20]  806 	ld	iy,(_trainList)
   4598 FD 19         [15]  807 	add	iy, de
   459A 11 04 00      [10]  808 	ld	de,#0x0004
   459D FD 19         [15]  809 	add	iy, de
   459F FD 36 00 00   [19]  810 	ld	0 (iy), #0x00
                            811 ;src/game/depot.c:160: trainList[nbTrainList].wagon[4] = 0;
   45A3 ED 5B 01 8A   [20]  812 	ld	de,(_nbTrainList)
   45A7 16 00         [ 7]  813 	ld	d,#0x00
   45A9 6B            [ 4]  814 	ld	l, e
   45AA 62            [ 4]  815 	ld	h, d
   45AB 29            [11]  816 	add	hl, hl
   45AC 29            [11]  817 	add	hl, hl
   45AD 29            [11]  818 	add	hl, hl
   45AE 19            [11]  819 	add	hl, de
   45AF EB            [ 4]  820 	ex	de,hl
   45B0 FD 2A FB 89   [20]  821 	ld	iy,(_trainList)
   45B4 FD 19         [15]  822 	add	iy, de
   45B6 11 05 00      [10]  823 	ld	de,#0x0005
   45B9 FD 19         [15]  824 	add	iy, de
   45BB FD 36 00 00   [19]  825 	ld	0 (iy), #0x00
                            826 ;src/game/depot.c:161: trainList[nbTrainList].wagon[5] = 0;
   45BF ED 5B 01 8A   [20]  827 	ld	de,(_nbTrainList)
   45C3 16 00         [ 7]  828 	ld	d,#0x00
   45C5 6B            [ 4]  829 	ld	l, e
   45C6 62            [ 4]  830 	ld	h, d
   45C7 29            [11]  831 	add	hl, hl
   45C8 29            [11]  832 	add	hl, hl
   45C9 29            [11]  833 	add	hl, hl
   45CA 19            [11]  834 	add	hl, de
   45CB EB            [ 4]  835 	ex	de,hl
   45CC FD 2A FB 89   [20]  836 	ld	iy,(_trainList)
   45D0 FD 19         [15]  837 	add	iy, de
   45D2 11 06 00      [10]  838 	ld	de,#0x0006
   45D5 FD 19         [15]  839 	add	iy, de
   45D7 FD 36 00 00   [19]  840 	ld	0 (iy), #0x00
                            841 ;src/game/depot.c:162: trainList[nbTrainList].wagon[6] = 0;
   45DB ED 5B 01 8A   [20]  842 	ld	de,(_nbTrainList)
   45DF 16 00         [ 7]  843 	ld	d,#0x00
   45E1 6B            [ 4]  844 	ld	l, e
   45E2 62            [ 4]  845 	ld	h, d
   45E3 29            [11]  846 	add	hl, hl
   45E4 29            [11]  847 	add	hl, hl
   45E5 29            [11]  848 	add	hl, hl
   45E6 19            [11]  849 	add	hl, de
   45E7 EB            [ 4]  850 	ex	de,hl
   45E8 FD 2A FB 89   [20]  851 	ld	iy,(_trainList)
   45EC FD 19         [15]  852 	add	iy, de
   45EE 11 07 00      [10]  853 	ld	de,#0x0007
   45F1 FD 19         [15]  854 	add	iy, de
   45F3 FD 36 00 00   [19]  855 	ld	0 (iy), #0x00
                            856 ;src/game/depot.c:163: trainList[nbTrainList].wagon[7] = 0;
   45F7 ED 5B 01 8A   [20]  857 	ld	de,(_nbTrainList)
   45FB 16 00         [ 7]  858 	ld	d,#0x00
   45FD 6B            [ 4]  859 	ld	l, e
   45FE 62            [ 4]  860 	ld	h, d
   45FF 29            [11]  861 	add	hl, hl
   4600 29            [11]  862 	add	hl, hl
   4601 29            [11]  863 	add	hl, hl
   4602 19            [11]  864 	add	hl, de
   4603 EB            [ 4]  865 	ex	de,hl
   4604 FD 2A FB 89   [20]  866 	ld	iy,(_trainList)
   4608 FD 19         [15]  867 	add	iy, de
   460A 11 08 00      [10]  868 	ld	de,#0x0008
   460D FD 19         [15]  869 	add	iy, de
   460F FD 36 00 00   [19]  870 	ld	0 (iy), #0x00
                            871 ;src/game/depot.c:166: nbTrainList++;
   4613 21 01 8A      [10]  872 	ld	hl, #_nbTrainList+0
   4616 34            [11]  873 	inc	(hl)
   4617                     874 00110$:
                            875 ;src/game/depot.c:169: return returnChoice;
   4617 69            [ 4]  876 	ld	l,c
   4618 DD F9         [10]  877 	ld	sp, ix
   461A DD E1         [14]  878 	pop	ix
   461C C9            [10]  879 	ret
   461D                     880 ___str_2:
   461D 00                  881 	.db 0x00
   461E                     882 ___str_3:
   461E 31 33 30 20 42      883 	.ascii "130 B"
   4623 00                  884 	.db 0x00
   4624                     885 ___str_4:
   4624 50 72 6F 70 75 6C   886 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   4635 00                  887 	.db 0x00
   4636                     888 ___str_5:
   4636 45 6E 74 72 79 20   889 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   464C 00                  890 	.db 0x00
   464D                     891 ___str_6:
   464D 4D 61 78 69 6D 75   892 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   4663 00                  893 	.db 0x00
   4664                     894 ___str_7:
   4664 50 72 69 63 65 3A   895 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   4670 00                  896 	.db 0x00
   4671                     897 ___str_8:
   4671 31 34 31 20 54 41   898 	.ascii "141 TA"
   4677 00                  899 	.db 0x00
   4678                     900 ___str_9:
   4678 45 6E 74 72 79 20   901 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   468E 00                  902 	.db 0x00
   468F                     903 ___str_10:
   468F 4D 61 78 69 6D 75   904 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   46A5 00                  905 	.db 0x00
   46A6                     906 ___str_11:
   46A6 50 72 69 63 65 3A   907 	.ascii "Price: 900$"
        20 39 30 30 24
   46B1 00                  908 	.db 0x00
   46B2                     909 ___str_12:
   46B2 31 34 32 20 41 54   910 	.ascii "142 AT"
   46B8 00                  911 	.db 0x00
   46B9                     912 ___str_13:
   46B9 45 6E 74 72 79 20   913 	.ascii "Entry of service: 1926"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 32 36
   46CF 00                  914 	.db 0x00
   46D0                     915 ___str_14:
   46D0 4D 61 78 69 6D 75   916 	.ascii "Maximum speed: 95 km/h"
        6D 20 73 70 65 65
        64 3A 20 39 35 20
        6B 6D 2F 68
   46E6 00                  917 	.db 0x00
   46E7                     918 ___str_15:
   46E7 50 72 69 63 65 3A   919 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   46F3 00                  920 	.db 0x00
   46F4                     921 ___str_16:
   46F4 31 34 31 20 50      922 	.ascii "141 P"
   46F9 00                  923 	.db 0x00
   46FA                     924 ___str_17:
   46FA 45 6E 74 72 79 20   925 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   4710 00                  926 	.db 0x00
   4711                     927 ___str_18:
   4711 4D 61 78 69 6D 75   928 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   4728 00                  929 	.db 0x00
   4729                     930 ___str_19:
   4729 50 72 69 63 65 3A   931 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   4735 00                  932 	.db 0x00
                            933 ;src/game/depot.c:172: void buyLocomotive()
                            934 ;	---------------------------------
                            935 ; Function buyLocomotive
                            936 ; ---------------------------------
   4736                     937 _buyLocomotive::
                            938 ;src/game/depot.c:174: u8 exit=0;
                            939 ;src/game/depot.c:176: u8 iSelect=0;
   4736 01 00 00      [10]  940 	ld	bc,#0x0000
                            941 ;src/game/depot.c:178: drawAllLocomotives(iSelect);
   4739 C5            [11]  942 	push	bc
   473A AF            [ 4]  943 	xor	a, a
   473B F5            [11]  944 	push	af
   473C 33            [ 6]  945 	inc	sp
   473D CD 84 43      [17]  946 	call	_drawAllLocomotives
   4740 33            [ 6]  947 	inc	sp
   4741 C1            [10]  948 	pop	bc
                            949 ;src/game/depot.c:180: do
   4742                     950 00124$:
                            951 ;src/game/depot.c:182: cpct_scanKeyboard(); 
   4742 C5            [11]  952 	push	bc
   4743 CD 2B 7A      [17]  953 	call	_cpct_scanKeyboard
   4746 21 00 01      [10]  954 	ld	hl,#0x0100
   4749 CD 85 73      [17]  955 	call	_cpct_isKeyPressed
   474C 7D            [ 4]  956 	ld	a,l
   474D C1            [10]  957 	pop	bc
   474E B7            [ 4]  958 	or	a, a
   474F 28 24         [12]  959 	jr	Z,00122$
                            960 ;src/game/depot.c:186: if (iSelect>0)
   4751 78            [ 4]  961 	ld	a,b
   4752 B7            [ 4]  962 	or	a, a
   4753 28 15         [12]  963 	jr	Z,00140$
                            964 ;src/game/depot.c:188: iSelect--;
   4755 05            [ 4]  965 	dec	b
                            966 ;src/game/depot.c:189: drawLocomotive(iSelect, iSelect);
   4756 C5            [11]  967 	push	bc
   4757 C5            [11]  968 	push	bc
   4758 33            [ 6]  969 	inc	sp
   4759 C5            [11]  970 	push	bc
   475A 33            [ 6]  971 	inc	sp
   475B CD EF 41      [17]  972 	call	_drawLocomotive
   475E F1            [10]  973 	pop	af
   475F C1            [10]  974 	pop	bc
                            975 ;src/game/depot.c:190: drawLocomotive(iSelect+1, iSelect);
   4760 50            [ 4]  976 	ld	d,b
   4761 14            [ 4]  977 	inc	d
   4762 C5            [11]  978 	push	bc
   4763 4A            [ 4]  979 	ld	c, d
   4764 C5            [11]  980 	push	bc
   4765 CD EF 41      [17]  981 	call	_drawLocomotive
   4768 F1            [10]  982 	pop	af
   4769 C1            [10]  983 	pop	bc
                            984 ;src/game/depot.c:192: for(i=0; i<14000; i++) {} // wait loop
   476A                     985 00140$:
   476A 11 B0 36      [10]  986 	ld	de,#0x36B0
   476D                     987 00129$:
   476D 1B            [ 6]  988 	dec	de
   476E 7A            [ 4]  989 	ld	a,d
   476F B3            [ 4]  990 	or	a,e
   4770 20 FB         [12]  991 	jr	NZ,00129$
   4772 C3 E7 47      [10]  992 	jp	00125$
   4775                     993 00122$:
                            994 ;src/game/depot.c:194: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4775 C5            [11]  995 	push	bc
   4776 21 00 04      [10]  996 	ld	hl,#0x0400
   4779 CD 85 73      [17]  997 	call	_cpct_isKeyPressed
   477C 7D            [ 4]  998 	ld	a,l
   477D C1            [10]  999 	pop	bc
   477E B7            [ 4] 1000 	or	a, a
   477F 28 24         [12] 1001 	jr	Z,00119$
                           1002 ;src/game/depot.c:196: if (iSelect<11)
   4781 78            [ 4] 1003 	ld	a,b
   4782 D6 0B         [ 7] 1004 	sub	a, #0x0B
   4784 30 15         [12] 1005 	jr	NC,00144$
                           1006 ;src/game/depot.c:198: iSelect++;
   4786 04            [ 4] 1007 	inc	b
                           1008 ;src/game/depot.c:199: drawLocomotive(iSelect, iSelect);
   4787 C5            [11] 1009 	push	bc
   4788 C5            [11] 1010 	push	bc
   4789 33            [ 6] 1011 	inc	sp
   478A C5            [11] 1012 	push	bc
   478B 33            [ 6] 1013 	inc	sp
   478C CD EF 41      [17] 1014 	call	_drawLocomotive
   478F F1            [10] 1015 	pop	af
   4790 C1            [10] 1016 	pop	bc
                           1017 ;src/game/depot.c:200: drawLocomotive(iSelect-1, iSelect);
   4791 50            [ 4] 1018 	ld	d,b
   4792 15            [ 4] 1019 	dec	d
   4793 C5            [11] 1020 	push	bc
   4794 4A            [ 4] 1021 	ld	c, d
   4795 C5            [11] 1022 	push	bc
   4796 CD EF 41      [17] 1023 	call	_drawLocomotive
   4799 F1            [10] 1024 	pop	af
   479A C1            [10] 1025 	pop	bc
                           1026 ;src/game/depot.c:202: for(i=0; i<14000; i++) {} // wait loop
   479B                    1027 00144$:
   479B 11 B0 36      [10] 1028 	ld	de,#0x36B0
   479E                    1029 00132$:
   479E 1B            [ 6] 1030 	dec	de
   479F 7A            [ 4] 1031 	ld	a,d
   47A0 B3            [ 4] 1032 	or	a,e
   47A1 20 FB         [12] 1033 	jr	NZ,00132$
   47A3 18 42         [12] 1034 	jr	00125$
   47A5                    1035 00119$:
                           1036 ;src/game/depot.c:204: else if ( cpct_isKeyPressed(Key_Return) )
   47A5 C5            [11] 1037 	push	bc
   47A6 21 02 04      [10] 1038 	ld	hl,#0x0402
   47A9 CD 85 73      [17] 1039 	call	_cpct_isKeyPressed
   47AC 7D            [ 4] 1040 	ld	a,l
   47AD C1            [10] 1041 	pop	bc
   47AE B7            [ 4] 1042 	or	a, a
   47AF 28 28         [12] 1043 	jr	Z,00116$
                           1044 ;src/game/depot.c:206: if(iSelect<locDelocked)
   47B1 21 00 8A      [10] 1045 	ld	hl,#_locDelocked
   47B4 78            [ 4] 1046 	ld	a,b
   47B5 96            [ 7] 1047 	sub	a, (hl)
   47B6 30 17         [12] 1048 	jr	NC,00149$
                           1049 ;src/game/depot.c:208: if(confirmBuyLocomotive(iSelect) == 1)
   47B8 C5            [11] 1050 	push	bc
   47B9 C5            [11] 1051 	push	bc
   47BA 33            [ 6] 1052 	inc	sp
   47BB CD B4 43      [17] 1053 	call	_confirmBuyLocomotive
   47BE 33            [ 6] 1054 	inc	sp
   47BF C1            [10] 1055 	pop	bc
   47C0 2D            [ 4] 1056 	dec	l
   47C1 20 04         [12] 1057 	jr	NZ,00108$
                           1058 ;src/game/depot.c:209: exit=1;
   47C3 0E 01         [ 7] 1059 	ld	c,#0x01
   47C5 18 08         [12] 1060 	jr	00149$
   47C7                    1061 00108$:
                           1062 ;src/game/depot.c:211: drawAllLocomotives(iSelect);
   47C7 C5            [11] 1063 	push	bc
   47C8 C5            [11] 1064 	push	bc
   47C9 33            [ 6] 1065 	inc	sp
   47CA CD 84 43      [17] 1066 	call	_drawAllLocomotives
   47CD 33            [ 6] 1067 	inc	sp
   47CE C1            [10] 1068 	pop	bc
                           1069 ;src/game/depot.c:214: for(i=0; i<14000; i++) {} // wait loop
   47CF                    1070 00149$:
   47CF 11 B0 36      [10] 1071 	ld	de,#0x36B0
   47D2                    1072 00135$:
   47D2 1B            [ 6] 1073 	dec	de
   47D3 7A            [ 4] 1074 	ld	a,d
   47D4 B3            [ 4] 1075 	or	a,e
   47D5 20 FB         [12] 1076 	jr	NZ,00135$
   47D7 18 0E         [12] 1077 	jr	00125$
   47D9                    1078 00116$:
                           1079 ;src/game/depot.c:216: else if ( cpct_isKeyPressed(Key_Esc) )
   47D9 C5            [11] 1080 	push	bc
   47DA 21 08 04      [10] 1081 	ld	hl,#0x0408
   47DD CD 85 73      [17] 1082 	call	_cpct_isKeyPressed
   47E0 7D            [ 4] 1083 	ld	a,l
   47E1 C1            [10] 1084 	pop	bc
   47E2 B7            [ 4] 1085 	or	a, a
   47E3 28 02         [12] 1086 	jr	Z,00125$
                           1087 ;src/game/depot.c:217: exit=1;
   47E5 0E 01         [ 7] 1088 	ld	c,#0x01
   47E7                    1089 00125$:
                           1090 ;src/game/depot.c:219: while(!exit);
   47E7 79            [ 4] 1091 	ld	a,c
   47E8 B7            [ 4] 1092 	or	a, a
   47E9 CA 42 47      [10] 1093 	jp	Z,00124$
                           1094 ;src/game/depot.c:221: putM2();
   47EC C3 CD 5A      [10] 1095 	jp  _putM2
                           1096 	.area _CODE
                           1097 	.area _INITIALIZER
                           1098 	.area _CABS (ABS)
