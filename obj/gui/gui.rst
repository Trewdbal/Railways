                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 17:21:44 2016
                              5 ;--------------------------------------------------------
                              6 	.module gui
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _strlen
                             13 	.globl _cpct_getScreenPtr
                             14 	.globl _cpct_setPalette
                             15 	.globl _cpct_setVideoMode
                             16 	.globl _cpct_drawStringM2
                             17 	.globl _cpct_drawSolidBox
                             18 	.globl _cpct_px2byteM0
                             19 	.globl _cpct_isKeyPressed
                             20 	.globl _cpct_scanKeyboard
                             21 	.globl _cpct_memset
                             22 	.globl _putM0
                             23 	.globl _putM1
                             24 	.globl _putM2
                             25 	.globl _drawBoxM0
                             26 	.globl _drawBoxM2
                             27 	.globl _EraseMenuEntry
                             28 	.globl _drawMenuEntry
                             29 	.globl _drawMenu
                             30 	.globl _drawWindow
                             31 ;--------------------------------------------------------
                             32 ; special function registers
                             33 ;--------------------------------------------------------
                             34 ;--------------------------------------------------------
                             35 ; ram data
                             36 ;--------------------------------------------------------
                             37 	.area _DATA
                             38 ;--------------------------------------------------------
                             39 ; ram data
                             40 ;--------------------------------------------------------
                             41 	.area _INITIALIZED
                             42 ;--------------------------------------------------------
                             43 ; absolute external ram data
                             44 ;--------------------------------------------------------
                             45 	.area _DABS (ABS)
                             46 ;--------------------------------------------------------
                             47 ; global & static initialisations
                             48 ;--------------------------------------------------------
                             49 	.area _HOME
                             50 	.area _GSINIT
                             51 	.area _GSFINAL
                             52 	.area _GSINIT
                             53 ;--------------------------------------------------------
                             54 ; Home
                             55 ;--------------------------------------------------------
                             56 	.area _HOME
                             57 	.area _HOME
                             58 ;--------------------------------------------------------
                             59 ; code
                             60 ;--------------------------------------------------------
                             61 	.area _CODE
                             62 ;src/gui/gui.c:3: void putM0(void)
                             63 ;	---------------------------------
                             64 ; Function putM0
                             65 ; ---------------------------------
   5451                      66 _putM0::
                             67 ;src/gui/gui.c:5: cpct_setVideoMode(0);
   5451 AF            [ 4]   68 	xor	a, a
   5452 F5            [11]   69 	push	af
   5453 33            [ 6]   70 	inc	sp
   5454 CD 3D 69      [17]   71 	call	_cpct_setVideoMode
   5457 33            [ 6]   72 	inc	sp
                             73 ;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
   5458 21 17 5B      [10]   74 	ld	hl,#_paletteTrains
   545B 01 10 00      [10]   75 	ld	bc,#0x0010
   545E C5            [11]   76 	push	bc
   545F E5            [11]   77 	push	hl
   5460 CD 5D 66      [17]   78 	call	_cpct_setPalette
   5463 C9            [10]   79 	ret
                             80 ;src/gui/gui.c:10: void putM1(void)
                             81 ;	---------------------------------
                             82 ; Function putM1
                             83 ; ---------------------------------
   5464                      84 _putM1::
                             85 ;src/gui/gui.c:12: cpct_setVideoMode(1);
   5464 3E 01         [ 7]   86 	ld	a,#0x01
   5466 F5            [11]   87 	push	af
   5467 33            [ 6]   88 	inc	sp
   5468 CD 3D 69      [17]   89 	call	_cpct_setVideoMode
   546B 33            [ 6]   90 	inc	sp
                             91 ;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
   546C 21 27 5B      [10]   92 	ld	hl,#_paletteMenusM1
   546F 01 04 00      [10]   93 	ld	bc,#0x0004
   5472 C5            [11]   94 	push	bc
   5473 E5            [11]   95 	push	hl
   5474 CD 5D 66      [17]   96 	call	_cpct_setPalette
   5477 C9            [10]   97 	ret
                             98 ;src/gui/gui.c:17: void putM2(void)
                             99 ;	---------------------------------
                            100 ; Function putM2
                            101 ; ---------------------------------
   5478                     102 _putM2::
                            103 ;src/gui/gui.c:19: cpct_setVideoMode(2);
   5478 3E 02         [ 7]  104 	ld	a,#0x02
   547A F5            [11]  105 	push	af
   547B 33            [ 6]  106 	inc	sp
   547C CD 3D 69      [17]  107 	call	_cpct_setVideoMode
   547F 33            [ 6]  108 	inc	sp
                            109 ;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
   5480 21 2B 5B      [10]  110 	ld	hl,#_paletteMenusM2
   5483 01 02 00      [10]  111 	ld	bc,#0x0002
   5486 C5            [11]  112 	push	bc
   5487 E5            [11]  113 	push	hl
   5488 CD 5D 66      [17]  114 	call	_cpct_setPalette
                            115 ;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
   548B 21 00 40      [10]  116 	ld	hl,#0x4000
   548E E5            [11]  117 	push	hl
   548F 3E FF         [ 7]  118 	ld	a,#0xFF
   5491 F5            [11]  119 	push	af
   5492 33            [ 6]  120 	inc	sp
   5493 26 C0         [ 7]  121 	ld	h, #0xC0
   5495 E5            [11]  122 	push	hl
   5496 CD 86 69      [17]  123 	call	_cpct_memset
   5499 C9            [10]  124 	ret
                            125 ;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
                            126 ;	---------------------------------
                            127 ; Function drawBoxM0
                            128 ; ---------------------------------
   549A                     129 _drawBoxM0::
   549A DD E5         [15]  130 	push	ix
   549C DD 21 00 00   [14]  131 	ld	ix,#0
   54A0 DD 39         [15]  132 	add	ix,sp
   54A2 21 F9 FF      [10]  133 	ld	hl,#-7
   54A5 39            [11]  134 	add	hl,sp
   54A6 F9            [ 6]  135 	ld	sp,hl
                            136 ;src/gui/gui.c:30: int left = (80-width_)/2;
   54A7 3E 50         [ 7]  137 	ld	a,#0x50
   54A9 DD 96 04      [19]  138 	sub	a, 4 (ix)
   54AC 57            [ 4]  139 	ld	d,a
   54AD 3E 00         [ 7]  140 	ld	a,#0x00
   54AF DD 9E 05      [19]  141 	sbc	a, 5 (ix)
   54B2 5F            [ 4]  142 	ld	e,a
   54B3 6A            [ 4]  143 	ld	l, d
   54B4 63            [ 4]  144 	ld	h, e
   54B5 CB 7B         [ 8]  145 	bit	7, e
   54B7 28 03         [12]  146 	jr	Z,00103$
   54B9 6A            [ 4]  147 	ld	l, d
   54BA 63            [ 4]  148 	ld	h, e
   54BB 23            [ 6]  149 	inc	hl
   54BC                     150 00103$:
   54BC DD 75 F9      [19]  151 	ld	-7 (ix),l
   54BF DD 74 FA      [19]  152 	ld	-6 (ix),h
   54C2 DD CB FA 2E   [23]  153 	sra	-6 (ix)
   54C6 DD CB F9 1E   [23]  154 	rr	-7 (ix)
                            155 ;src/gui/gui.c:31: int top = (200-height_)/2;
   54CA 3E C8         [ 7]  156 	ld	a,#0xC8
   54CC DD 96 06      [19]  157 	sub	a, 6 (ix)
   54CF 4F            [ 4]  158 	ld	c,a
   54D0 3E 00         [ 7]  159 	ld	a,#0x00
   54D2 DD 9E 07      [19]  160 	sbc	a, 7 (ix)
   54D5 47            [ 4]  161 	ld	b,a
   54D6 61            [ 4]  162 	ld	h,c
   54D7 50            [ 4]  163 	ld	d,b
   54D8 CB 78         [ 8]  164 	bit	7, b
   54DA 28 03         [12]  165 	jr	Z,00104$
   54DC 03            [ 6]  166 	inc	bc
   54DD 61            [ 4]  167 	ld	h,c
   54DE 50            [ 4]  168 	ld	d,b
   54DF                     169 00104$:
   54DF 5C            [ 4]  170 	ld	e, h
   54E0 CB 2A         [ 8]  171 	sra	d
   54E2 CB 1B         [ 8]  172 	rr	e
                            173 ;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
   54E4 D5            [11]  174 	push	de
   54E5 21 09 09      [10]  175 	ld	hl,#0x0909
   54E8 E5            [11]  176 	push	hl
   54E9 CD 6A 69      [17]  177 	call	_cpct_px2byteM0
   54EC 65            [ 4]  178 	ld	h,l
   54ED 01 00 40      [10]  179 	ld	bc,#0x4000
   54F0 C5            [11]  180 	push	bc
   54F1 E5            [11]  181 	push	hl
   54F2 33            [ 6]  182 	inc	sp
   54F3 21 00 C0      [10]  183 	ld	hl,#0xC000
   54F6 E5            [11]  184 	push	hl
   54F7 CD 86 69      [17]  185 	call	_cpct_memset
   54FA D1            [10]  186 	pop	de
                            187 ;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   54FB DD 73 FF      [19]  188 	ld	-1 (ix), e
   54FE 63            [ 4]  189 	ld	h, e
   54FF 24            [ 4]  190 	inc	h
   5500 24            [ 4]  191 	inc	h
   5501 24            [ 4]  192 	inc	h
   5502 24            [ 4]  193 	inc	h
   5503 DD 7E F9      [19]  194 	ld	a,-7 (ix)
   5506 3C            [ 4]  195 	inc	a
   5507 DD 77 FC      [19]  196 	ld	-4 (ix),a
   550A D5            [11]  197 	push	de
   550B E5            [11]  198 	push	hl
   550C 33            [ 6]  199 	inc	sp
   550D DD 7E FC      [19]  200 	ld	a,-4 (ix)
   5510 F5            [11]  201 	push	af
   5511 33            [ 6]  202 	inc	sp
   5512 21 00 C0      [10]  203 	ld	hl,#0xC000
   5515 E5            [11]  204 	push	hl
   5516 CD BA 6A      [17]  205 	call	_cpct_getScreenPtr
   5519 D1            [10]  206 	pop	de
   551A 4D            [ 4]  207 	ld	c, l
   551B 44            [ 4]  208 	ld	b, h
                            209 ;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   551C DD 7E 06      [19]  210 	ld	a,6 (ix)
   551F DD 77 FB      [19]  211 	ld	-5 (ix),a
   5522 DD 7E 04      [19]  212 	ld	a,4 (ix)
   5525 DD 77 FD      [19]  213 	ld	-3 (ix),a
   5528 C5            [11]  214 	push	bc
   5529 D5            [11]  215 	push	de
   552A 21 02 02      [10]  216 	ld	hl,#0x0202
   552D E5            [11]  217 	push	hl
   552E CD 6A 69      [17]  218 	call	_cpct_px2byteM0
   5531 DD 75 FE      [19]  219 	ld	-2 (ix),l
   5534 D1            [10]  220 	pop	de
   5535 C1            [10]  221 	pop	bc
   5536 D5            [11]  222 	push	de
   5537 DD 66 FB      [19]  223 	ld	h,-5 (ix)
   553A DD 6E FD      [19]  224 	ld	l,-3 (ix)
   553D E5            [11]  225 	push	hl
   553E DD 7E FE      [19]  226 	ld	a,-2 (ix)
   5541 F5            [11]  227 	push	af
   5542 33            [ 6]  228 	inc	sp
   5543 C5            [11]  229 	push	bc
   5544 CD 01 6A      [17]  230 	call	_cpct_drawSolidBox
   5547 F1            [10]  231 	pop	af
   5548 F1            [10]  232 	pop	af
   5549 33            [ 6]  233 	inc	sp
   554A D1            [10]  234 	pop	de
                            235 ;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   554B 63            [ 4]  236 	ld	h,e
   554C DD 56 F9      [19]  237 	ld	d,-7 (ix)
   554F E5            [11]  238 	push	hl
   5550 33            [ 6]  239 	inc	sp
   5551 D5            [11]  240 	push	de
   5552 33            [ 6]  241 	inc	sp
   5553 21 00 C0      [10]  242 	ld	hl,#0xC000
   5556 E5            [11]  243 	push	hl
   5557 CD BA 6A      [17]  244 	call	_cpct_getScreenPtr
                            245 ;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   555A E5            [11]  246 	push	hl
   555B 21 06 06      [10]  247 	ld	hl,#0x0606
   555E E5            [11]  248 	push	hl
   555F CD 6A 69      [17]  249 	call	_cpct_px2byteM0
   5562 45            [ 4]  250 	ld	b,l
   5563 D1            [10]  251 	pop	de
   5564 DD 66 FB      [19]  252 	ld	h,-5 (ix)
   5567 DD 6E FD      [19]  253 	ld	l,-3 (ix)
   556A E5            [11]  254 	push	hl
   556B C5            [11]  255 	push	bc
   556C 33            [ 6]  256 	inc	sp
   556D D5            [11]  257 	push	de
   556E CD 01 6A      [17]  258 	call	_cpct_drawSolidBox
   5571 F1            [10]  259 	pop	af
   5572 F1            [10]  260 	pop	af
   5573 33            [ 6]  261 	inc	sp
                            262 ;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   5574 DD 66 FF      [19]  263 	ld	h,-1 (ix)
   5577 24            [ 4]  264 	inc	h
   5578 24            [ 4]  265 	inc	h
   5579 E5            [11]  266 	push	hl
   557A 33            [ 6]  267 	inc	sp
   557B DD 7E FC      [19]  268 	ld	a,-4 (ix)
   557E F5            [11]  269 	push	af
   557F 33            [ 6]  270 	inc	sp
   5580 21 00 C0      [10]  271 	ld	hl,#0xC000
   5583 E5            [11]  272 	push	hl
   5584 CD BA 6A      [17]  273 	call	_cpct_getScreenPtr
   5587 EB            [ 4]  274 	ex	de,hl
                            275 ;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   5588 DD 7E 06      [19]  276 	ld	a,6 (ix)
   558B C6 FC         [ 7]  277 	add	a,#0xFC
   558D 4F            [ 4]  278 	ld	c,a
   558E DD 46 04      [19]  279 	ld	b,4 (ix)
   5591 05            [ 4]  280 	dec	b
   5592 05            [ 4]  281 	dec	b
   5593 C5            [11]  282 	push	bc
   5594 D5            [11]  283 	push	de
   5595 21 00 00      [10]  284 	ld	hl,#0x0000
   5598 E5            [11]  285 	push	hl
   5599 CD 6A 69      [17]  286 	call	_cpct_px2byteM0
   559C DD 75 FE      [19]  287 	ld	-2 (ix),l
   559F D1            [10]  288 	pop	de
   55A0 C1            [10]  289 	pop	bc
   55A1 79            [ 4]  290 	ld	a,c
   55A2 F5            [11]  291 	push	af
   55A3 33            [ 6]  292 	inc	sp
   55A4 C5            [11]  293 	push	bc
   55A5 33            [ 6]  294 	inc	sp
   55A6 DD 7E FE      [19]  295 	ld	a,-2 (ix)
   55A9 F5            [11]  296 	push	af
   55AA 33            [ 6]  297 	inc	sp
   55AB D5            [11]  298 	push	de
   55AC CD 01 6A      [17]  299 	call	_cpct_drawSolidBox
   55AF DD F9         [10]  300 	ld	sp,ix
   55B1 DD E1         [14]  301 	pop	ix
   55B3 C9            [10]  302 	ret
                            303 ;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
                            304 ;	---------------------------------
                            305 ; Function drawBoxM2
                            306 ; ---------------------------------
   55B4                     307 _drawBoxM2::
   55B4 DD E5         [15]  308 	push	ix
   55B6 DD 21 00 00   [14]  309 	ld	ix,#0
   55BA DD 39         [15]  310 	add	ix,sp
   55BC 21 FA FF      [10]  311 	ld	hl,#-6
   55BF 39            [11]  312 	add	hl,sp
   55C0 F9            [ 6]  313 	ld	sp,hl
                            314 ;src/gui/gui.c:54: int left = (80-width_)/2;
   55C1 3E 50         [ 7]  315 	ld	a,#0x50
   55C3 DD 96 04      [19]  316 	sub	a, 4 (ix)
   55C6 4F            [ 4]  317 	ld	c,a
   55C7 3E 00         [ 7]  318 	ld	a,#0x00
   55C9 DD 9E 05      [19]  319 	sbc	a, 5 (ix)
   55CC 47            [ 4]  320 	ld	b,a
   55CD 61            [ 4]  321 	ld	h,c
   55CE 50            [ 4]  322 	ld	d,b
   55CF CB 78         [ 8]  323 	bit	7, b
   55D1 28 03         [12]  324 	jr	Z,00103$
   55D3 03            [ 6]  325 	inc	bc
   55D4 61            [ 4]  326 	ld	h,c
   55D5 50            [ 4]  327 	ld	d,b
   55D6                     328 00103$:
   55D6 5C            [ 4]  329 	ld	e, h
   55D7 CB 2A         [ 8]  330 	sra	d
   55D9 CB 1B         [ 8]  331 	rr	e
                            332 ;src/gui/gui.c:55: int top = (200-height_)/2;
   55DB 3E C8         [ 7]  333 	ld	a,#0xC8
   55DD DD 96 06      [19]  334 	sub	a, 6 (ix)
   55E0 4F            [ 4]  335 	ld	c,a
   55E1 3E 00         [ 7]  336 	ld	a,#0x00
   55E3 DD 9E 07      [19]  337 	sbc	a, 7 (ix)
   55E6 47            [ 4]  338 	ld	b,a
   55E7 61            [ 4]  339 	ld	h,c
   55E8 68            [ 4]  340 	ld	l,b
   55E9 CB 78         [ 8]  341 	bit	7, b
   55EB 28 03         [12]  342 	jr	Z,00104$
   55ED 03            [ 6]  343 	inc	bc
   55EE 61            [ 4]  344 	ld	h,c
   55EF 68            [ 4]  345 	ld	l,b
   55F0                     346 00104$:
   55F0 DD 74 FA      [19]  347 	ld	-6 (ix),h
   55F3 DD 75 FB      [19]  348 	ld	-5 (ix),l
   55F6 DD CB FB 2E   [23]  349 	sra	-5 (ix)
   55FA DD CB FA 1E   [23]  350 	rr	-6 (ix)
                            351 ;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   55FE DD 7E FA      [19]  352 	ld	a,-6 (ix)
   5601 DD 77 FF      [19]  353 	ld	-1 (ix), a
   5604 C6 05         [ 7]  354 	add	a, #0x05
   5606 4F            [ 4]  355 	ld	c,a
   5607 DD 73 FC      [19]  356 	ld	-4 (ix), e
   560A 63            [ 4]  357 	ld	h, e
   560B 24            [ 4]  358 	inc	h
   560C 24            [ 4]  359 	inc	h
   560D D5            [11]  360 	push	de
   560E 79            [ 4]  361 	ld	a,c
   560F F5            [11]  362 	push	af
   5610 33            [ 6]  363 	inc	sp
   5611 E5            [11]  364 	push	hl
   5612 33            [ 6]  365 	inc	sp
   5613 21 00 C0      [10]  366 	ld	hl,#0xC000
   5616 E5            [11]  367 	push	hl
   5617 CD BA 6A      [17]  368 	call	_cpct_getScreenPtr
   561A D1            [10]  369 	pop	de
                            370 ;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   561B DD 46 06      [19]  371 	ld	b,6 (ix)
   561E DD 4E 04      [19]  372 	ld	c,4 (ix)
   5621 79            [ 4]  373 	ld	a,c
   5622 C6 FF         [ 7]  374 	add	a,#0xFF
   5624 DD 75 FD      [19]  375 	ld	-3 (ix),l
   5627 DD 74 FE      [19]  376 	ld	-2 (ix),h
   562A C5            [11]  377 	push	bc
   562B D5            [11]  378 	push	de
   562C C5            [11]  379 	push	bc
   562D 33            [ 6]  380 	inc	sp
   562E F5            [11]  381 	push	af
   562F 33            [ 6]  382 	inc	sp
   5630 AF            [ 4]  383 	xor	a, a
   5631 F5            [11]  384 	push	af
   5632 33            [ 6]  385 	inc	sp
   5633 DD 6E FD      [19]  386 	ld	l,-3 (ix)
   5636 DD 66 FE      [19]  387 	ld	h,-2 (ix)
   5639 E5            [11]  388 	push	hl
   563A CD 01 6A      [17]  389 	call	_cpct_drawSolidBox
   563D F1            [10]  390 	pop	af
   563E F1            [10]  391 	pop	af
   563F 33            [ 6]  392 	inc	sp
   5640 D1            [10]  393 	pop	de
   5641 C1            [10]  394 	pop	bc
                            395 ;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5642 DD 66 FA      [19]  396 	ld	h,-6 (ix)
   5645 53            [ 4]  397 	ld	d,e
   5646 C5            [11]  398 	push	bc
   5647 E5            [11]  399 	push	hl
   5648 33            [ 6]  400 	inc	sp
   5649 D5            [11]  401 	push	de
   564A 33            [ 6]  402 	inc	sp
   564B 21 00 C0      [10]  403 	ld	hl,#0xC000
   564E E5            [11]  404 	push	hl
   564F CD BA 6A      [17]  405 	call	_cpct_getScreenPtr
   5652 C1            [10]  406 	pop	bc
                            407 ;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   5653 DD 7E 04      [19]  408 	ld	a,4 (ix)
   5656 EB            [ 4]  409 	ex	de,hl
   5657 C5            [11]  410 	push	bc
   5658 C5            [11]  411 	push	bc
   5659 33            [ 6]  412 	inc	sp
   565A 47            [ 4]  413 	ld	b,a
   565B 0E F8         [ 7]  414 	ld	c,#0xF8
   565D C5            [11]  415 	push	bc
   565E D5            [11]  416 	push	de
   565F CD 01 6A      [17]  417 	call	_cpct_drawSolidBox
   5662 F1            [10]  418 	pop	af
   5663 F1            [10]  419 	pop	af
   5664 33            [ 6]  420 	inc	sp
   5665 C1            [10]  421 	pop	bc
                            422 ;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   5666 DD 66 FF      [19]  423 	ld	h,-1 (ix)
   5669 24            [ 4]  424 	inc	h
   566A DD 56 FC      [19]  425 	ld	d,-4 (ix)
   566D 14            [ 4]  426 	inc	d
   566E C5            [11]  427 	push	bc
   566F E5            [11]  428 	push	hl
   5670 33            [ 6]  429 	inc	sp
   5671 D5            [11]  430 	push	de
   5672 33            [ 6]  431 	inc	sp
   5673 21 00 C0      [10]  432 	ld	hl,#0xC000
   5676 E5            [11]  433 	push	hl
   5677 CD BA 6A      [17]  434 	call	_cpct_getScreenPtr
   567A C1            [10]  435 	pop	bc
   567B 5D            [ 4]  436 	ld	e, l
   567C 54            [ 4]  437 	ld	d, h
                            438 ;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   567D DD 66 06      [19]  439 	ld	h,6 (ix)
   5680 25            [ 4]  440 	dec	h
   5681 25            [ 4]  441 	dec	h
   5682 79            [ 4]  442 	ld	a,c
   5683 C6 FE         [ 7]  443 	add	a,#0xFE
   5685 E5            [11]  444 	push	hl
   5686 33            [ 6]  445 	inc	sp
   5687 47            [ 4]  446 	ld	b,a
   5688 0E FF         [ 7]  447 	ld	c,#0xFF
   568A C5            [11]  448 	push	bc
   568B D5            [11]  449 	push	de
   568C CD 01 6A      [17]  450 	call	_cpct_drawSolidBox
   568F DD F9         [10]  451 	ld	sp,ix
   5691 DD E1         [14]  452 	pop	ix
   5693 C9            [10]  453 	ret
                            454 ;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            455 ;	---------------------------------
                            456 ; Function EraseMenuEntry
                            457 ; ---------------------------------
   5694                     458 _EraseMenuEntry::
   5694 DD E5         [15]  459 	push	ix
   5696 DD 21 00 00   [14]  460 	ld	ix,#0
   569A DD 39         [15]  461 	add	ix,sp
   569C 3B            [ 6]  462 	dec	sp
                            463 ;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   569D DD 4E 06      [19]  464 	ld	c,6 (ix)
   56A0 06 00         [ 7]  465 	ld	b,#0x00
   56A2 69            [ 4]  466 	ld	l, c
   56A3 60            [ 4]  467 	ld	h, b
   56A4 29            [11]  468 	add	hl, hl
   56A5 29            [11]  469 	add	hl, hl
   56A6 09            [11]  470 	add	hl, bc
   56A7 29            [11]  471 	add	hl, hl
   56A8 4D            [ 4]  472 	ld	c,l
   56A9 44            [ 4]  473 	ld	b,h
   56AA 3E C9         [ 7]  474 	ld	a,#0xC9
   56AC 91            [ 4]  475 	sub	a, c
   56AD 57            [ 4]  476 	ld	d,a
   56AE 3E 00         [ 7]  477 	ld	a,#0x00
   56B0 98            [ 4]  478 	sbc	a, b
   56B1 5F            [ 4]  479 	ld	e,a
   56B2 6A            [ 4]  480 	ld	l, d
   56B3 63            [ 4]  481 	ld	h, e
   56B4 CB 7B         [ 8]  482 	bit	7, e
   56B6 28 03         [12]  483 	jr	Z,00103$
   56B8 6A            [ 4]  484 	ld	l, d
   56B9 63            [ 4]  485 	ld	h, e
   56BA 23            [ 6]  486 	inc	hl
   56BB                     487 00103$:
   56BB CB 2C         [ 8]  488 	sra	h
   56BD CB 1D         [ 8]  489 	rr	l
   56BF 55            [ 4]  490 	ld	d,l
   56C0 DD 7E 07      [19]  491 	ld	a,7 (ix)
   56C3 5F            [ 4]  492 	ld	e,a
   56C4 87            [ 4]  493 	add	a, a
   56C5 87            [ 4]  494 	add	a, a
   56C6 83            [ 4]  495 	add	a, e
   56C7 87            [ 4]  496 	add	a, a
   56C8 DD 77 FF      [19]  497 	ld	-1 (ix),a
   56CB 7A            [ 4]  498 	ld	a,d
   56CC DD 86 FF      [19]  499 	add	a, -1 (ix)
   56CF C5            [11]  500 	push	bc
   56D0 57            [ 4]  501 	ld	d,a
   56D1 1E 20         [ 7]  502 	ld	e,#0x20
   56D3 D5            [11]  503 	push	de
   56D4 21 00 C0      [10]  504 	ld	hl,#0xC000
   56D7 E5            [11]  505 	push	hl
   56D8 CD BA 6A      [17]  506 	call	_cpct_getScreenPtr
   56DB C1            [10]  507 	pop	bc
                            508 ;src/gui/gui.c:76: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   56DC EB            [ 4]  509 	ex	de,hl
   56DD C5            [11]  510 	push	bc
   56DE 21 11 0A      [10]  511 	ld	hl,#0x0A11
   56E1 E5            [11]  512 	push	hl
   56E2 3E FF         [ 7]  513 	ld	a,#0xFF
   56E4 F5            [11]  514 	push	af
   56E5 33            [ 6]  515 	inc	sp
   56E6 D5            [11]  516 	push	de
   56E7 CD 01 6A      [17]  517 	call	_cpct_drawSolidBox
   56EA F1            [10]  518 	pop	af
   56EB F1            [10]  519 	pop	af
   56EC 33            [ 6]  520 	inc	sp
   56ED C1            [10]  521 	pop	bc
                            522 ;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   56EE 3E CA         [ 7]  523 	ld	a,#0xCA
   56F0 91            [ 4]  524 	sub	a, c
   56F1 57            [ 4]  525 	ld	d,a
   56F2 3E 00         [ 7]  526 	ld	a,#0x00
   56F4 98            [ 4]  527 	sbc	a, b
   56F5 5F            [ 4]  528 	ld	e,a
   56F6 6A            [ 4]  529 	ld	l, d
   56F7 63            [ 4]  530 	ld	h, e
   56F8 CB 7B         [ 8]  531 	bit	7, e
   56FA 28 03         [12]  532 	jr	Z,00104$
   56FC 6A            [ 4]  533 	ld	l, d
   56FD 63            [ 4]  534 	ld	h, e
   56FE 23            [ 6]  535 	inc	hl
   56FF                     536 00104$:
   56FF CB 2C         [ 8]  537 	sra	h
   5701 CB 1D         [ 8]  538 	rr	l
   5703 7D            [ 4]  539 	ld	a,l
   5704 DD 86 FF      [19]  540 	add	a, -1 (ix)
   5707 4F            [ 4]  541 	ld	c,a
   5708 DD 6E 07      [19]  542 	ld	l,7 (ix)
   570B 26 00         [ 7]  543 	ld	h,#0x00
   570D 29            [11]  544 	add	hl, hl
   570E EB            [ 4]  545 	ex	de,hl
   570F DD 6E 04      [19]  546 	ld	l,4 (ix)
   5712 DD 66 05      [19]  547 	ld	h,5 (ix)
   5715 19            [11]  548 	add	hl,de
   5716 E5            [11]  549 	push	hl
   5717 5E            [ 7]  550 	ld	e,(hl)
   5718 23            [ 6]  551 	inc	hl
   5719 56            [ 7]  552 	ld	d,(hl)
   571A C5            [11]  553 	push	bc
   571B D5            [11]  554 	push	de
   571C CD AD 69      [17]  555 	call	_strlen
   571F F1            [10]  556 	pop	af
   5720 EB            [ 4]  557 	ex	de,hl
   5721 C1            [10]  558 	pop	bc
   5722 E1            [10]  559 	pop	hl
   5723 3E 52         [ 7]  560 	ld	a,#0x52
   5725 93            [ 4]  561 	sub	a, e
   5726 5F            [ 4]  562 	ld	e,a
   5727 3E 00         [ 7]  563 	ld	a,#0x00
   5729 9A            [ 4]  564 	sbc	a, d
   572A 57            [ 4]  565 	ld	d,a
   572B CB 3A         [ 8]  566 	srl	d
   572D CB 1B         [ 8]  567 	rr	e
   572F E5            [11]  568 	push	hl
   5730 51            [ 4]  569 	ld	d, c
   5731 D5            [11]  570 	push	de
   5732 01 00 C0      [10]  571 	ld	bc,#0xC000
   5735 C5            [11]  572 	push	bc
   5736 CD BA 6A      [17]  573 	call	_cpct_getScreenPtr
   5739 4D            [ 4]  574 	ld	c,l
   573A 44            [ 4]  575 	ld	b,h
   573B E1            [10]  576 	pop	hl
                            577 ;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   573C 5E            [ 7]  578 	ld	e,(hl)
   573D 23            [ 6]  579 	inc	hl
   573E 56            [ 7]  580 	ld	d,(hl)
   573F AF            [ 4]  581 	xor	a, a
   5740 F5            [11]  582 	push	af
   5741 33            [ 6]  583 	inc	sp
   5742 C5            [11]  584 	push	bc
   5743 D5            [11]  585 	push	de
   5744 CD 15 67      [17]  586 	call	_cpct_drawStringM2
   5747 F1            [10]  587 	pop	af
   5748 F1            [10]  588 	pop	af
   5749 33            [ 6]  589 	inc	sp
   574A 33            [ 6]  590 	inc	sp
   574B DD E1         [14]  591 	pop	ix
   574D C9            [10]  592 	ret
                            593 ;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            594 ;	---------------------------------
                            595 ; Function drawMenuEntry
                            596 ; ---------------------------------
   574E                     597 _drawMenuEntry::
   574E DD E5         [15]  598 	push	ix
   5750 DD 21 00 00   [14]  599 	ld	ix,#0
   5754 DD 39         [15]  600 	add	ix,sp
   5756 21 FA FF      [10]  601 	ld	hl,#-6
   5759 39            [11]  602 	add	hl,sp
   575A F9            [ 6]  603 	ld	sp,hl
                            604 ;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   575B DD 4E 06      [19]  605 	ld	c,6 (ix)
   575E 06 00         [ 7]  606 	ld	b,#0x00
   5760 69            [ 4]  607 	ld	l, c
   5761 60            [ 4]  608 	ld	h, b
   5762 29            [11]  609 	add	hl, hl
   5763 29            [11]  610 	add	hl, hl
   5764 09            [11]  611 	add	hl, bc
   5765 29            [11]  612 	add	hl, hl
   5766 4D            [ 4]  613 	ld	c,l
   5767 44            [ 4]  614 	ld	b,h
   5768 3E C9         [ 7]  615 	ld	a,#0xC9
   576A 91            [ 4]  616 	sub	a, c
   576B 57            [ 4]  617 	ld	d,a
   576C 3E 00         [ 7]  618 	ld	a,#0x00
   576E 98            [ 4]  619 	sbc	a, b
   576F 5F            [ 4]  620 	ld	e,a
   5770 6A            [ 4]  621 	ld	l, d
   5771 63            [ 4]  622 	ld	h, e
   5772 CB 7B         [ 8]  623 	bit	7, e
   5774 28 03         [12]  624 	jr	Z,00114$
   5776 6A            [ 4]  625 	ld	l, d
   5777 63            [ 4]  626 	ld	h, e
   5778 23            [ 6]  627 	inc	hl
   5779                     628 00114$:
   5779 CB 2C         [ 8]  629 	sra	h
   577B CB 1D         [ 8]  630 	rr	l
   577D 55            [ 4]  631 	ld	d,l
   577E DD 7E 07      [19]  632 	ld	a,7 (ix)
   5781 5F            [ 4]  633 	ld	e,a
   5782 87            [ 4]  634 	add	a, a
   5783 87            [ 4]  635 	add	a, a
   5784 83            [ 4]  636 	add	a, e
   5785 87            [ 4]  637 	add	a, a
   5786 82            [ 4]  638 	add	a,d
   5787 C5            [11]  639 	push	bc
   5788 57            [ 4]  640 	ld	d,a
   5789 1E 20         [ 7]  641 	ld	e,#0x20
   578B D5            [11]  642 	push	de
   578C 21 00 C0      [10]  643 	ld	hl,#0xC000
   578F E5            [11]  644 	push	hl
   5790 CD BA 6A      [17]  645 	call	_cpct_getScreenPtr
   5793 C1            [10]  646 	pop	bc
                            647 ;src/gui/gui.c:91: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   5794 EB            [ 4]  648 	ex	de,hl
   5795 C5            [11]  649 	push	bc
   5796 21 11 0A      [10]  650 	ld	hl,#0x0A11
   5799 E5            [11]  651 	push	hl
   579A AF            [ 4]  652 	xor	a, a
   579B F5            [11]  653 	push	af
   579C 33            [ 6]  654 	inc	sp
   579D D5            [11]  655 	push	de
   579E CD 01 6A      [17]  656 	call	_cpct_drawSolidBox
   57A1 F1            [10]  657 	pop	af
   57A2 F1            [10]  658 	pop	af
   57A3 33            [ 6]  659 	inc	sp
   57A4 C1            [10]  660 	pop	bc
                            661 ;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
   57A5 21 B0 36      [10]  662 	ld	hl,#0x36B0
   57A8                     663 00108$:
   57A8 2B            [ 6]  664 	dec	hl
   57A9 7C            [ 4]  665 	ld	a,h
   57AA B5            [ 4]  666 	or	a,l
   57AB 20 FB         [12]  667 	jr	NZ,00108$
                            668 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   57AD 3E CA         [ 7]  669 	ld	a,#0xCA
   57AF 91            [ 4]  670 	sub	a, c
   57B0 DD 77 FD      [19]  671 	ld	-3 (ix),a
   57B3 3E 00         [ 7]  672 	ld	a,#0x00
   57B5 98            [ 4]  673 	sbc	a, b
   57B6 DD 77 FE      [19]  674 	ld	-2 (ix), a
   57B9 07            [ 4]  675 	rlca
   57BA E6 01         [ 7]  676 	and	a,#0x01
   57BC 5F            [ 4]  677 	ld	e,a
   57BD 21 00 00      [10]  678 	ld	hl,#0x0000
   57C0 E3            [19]  679 	ex	(sp), hl
   57C1                     680 00110$:
   57C1 DD 66 06      [19]  681 	ld	h,6 (ix)
   57C4 2E 00         [ 7]  682 	ld	l,#0x00
   57C6 DD 7E FA      [19]  683 	ld	a,-6 (ix)
   57C9 94            [ 4]  684 	sub	a, h
   57CA DD 7E FB      [19]  685 	ld	a,-5 (ix)
   57CD 9D            [ 4]  686 	sbc	a, l
   57CE E2 D3 57      [10]  687 	jp	PO, 00146$
   57D1 EE 80         [ 7]  688 	xor	a, #0x80
   57D3                     689 00146$:
   57D3 F2 79 58      [10]  690 	jp	P,00112$
                            691 ;src/gui/gui.c:99: if(i==iSelect)
   57D6 DD 56 07      [19]  692 	ld	d,7 (ix)
   57D9 06 00         [ 7]  693 	ld	b,#0x00
   57DB DD 7E FA      [19]  694 	ld	a,-6 (ix)
   57DE 92            [ 4]  695 	sub	a, d
   57DF 20 0A         [12]  696 	jr	NZ,00103$
   57E1 DD 7E FB      [19]  697 	ld	a,-5 (ix)
   57E4 90            [ 4]  698 	sub	a, b
   57E5 20 04         [12]  699 	jr	NZ,00103$
                            700 ;src/gui/gui.c:100: penSelected = 1;
   57E7 0E 01         [ 7]  701 	ld	c,#0x01
   57E9 18 02         [12]  702 	jr	00104$
   57EB                     703 00103$:
                            704 ;src/gui/gui.c:102: penSelected = 0;
   57EB 0E 00         [ 7]  705 	ld	c,#0x00
   57ED                     706 00104$:
                            707 ;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   57ED DD 6E FD      [19]  708 	ld	l,-3 (ix)
   57F0 DD 66 FE      [19]  709 	ld	h,-2 (ix)
   57F3 7B            [ 4]  710 	ld	a,e
   57F4 B7            [ 4]  711 	or	a, a
   57F5 28 07         [12]  712 	jr	Z,00115$
   57F7 DD 6E FD      [19]  713 	ld	l,-3 (ix)
   57FA DD 66 FE      [19]  714 	ld	h,-2 (ix)
   57FD 23            [ 6]  715 	inc	hl
   57FE                     716 00115$:
   57FE CB 2C         [ 8]  717 	sra	h
   5800 CB 1D         [ 8]  718 	rr	l
   5802 45            [ 4]  719 	ld	b,l
   5803 DD 6E FA      [19]  720 	ld	l,-6 (ix)
   5806 D5            [11]  721 	push	de
   5807 5D            [ 4]  722 	ld	e,l
   5808 29            [11]  723 	add	hl, hl
   5809 29            [11]  724 	add	hl, hl
   580A 19            [11]  725 	add	hl, de
   580B 29            [11]  726 	add	hl, hl
   580C D1            [10]  727 	pop	de
   580D 78            [ 4]  728 	ld	a,b
   580E 85            [ 4]  729 	add	a, l
   580F DD 77 FF      [19]  730 	ld	-1 (ix),a
   5812 DD 56 FA      [19]  731 	ld	d,-6 (ix)
   5815 DD 46 FB      [19]  732 	ld	b,-5 (ix)
   5818 CB 22         [ 8]  733 	sla	d
   581A CB 10         [ 8]  734 	rl	b
   581C DD 7E 04      [19]  735 	ld	a,4 (ix)
   581F 82            [ 4]  736 	add	a, d
   5820 57            [ 4]  737 	ld	d,a
   5821 DD 7E 05      [19]  738 	ld	a,5 (ix)
   5824 88            [ 4]  739 	adc	a, b
   5825 47            [ 4]  740 	ld	b,a
   5826 6A            [ 4]  741 	ld	l, d
   5827 60            [ 4]  742 	ld	h, b
   5828 7E            [ 7]  743 	ld	a, (hl)
   5829 23            [ 6]  744 	inc	hl
   582A 66            [ 7]  745 	ld	h,(hl)
   582B 6F            [ 4]  746 	ld	l,a
   582C C5            [11]  747 	push	bc
   582D D5            [11]  748 	push	de
   582E E5            [11]  749 	push	hl
   582F CD AD 69      [17]  750 	call	_strlen
   5832 F1            [10]  751 	pop	af
   5833 D1            [10]  752 	pop	de
   5834 C1            [10]  753 	pop	bc
   5835 3E 52         [ 7]  754 	ld	a,#0x52
   5837 95            [ 4]  755 	sub	a, l
   5838 6F            [ 4]  756 	ld	l,a
   5839 3E 00         [ 7]  757 	ld	a,#0x00
   583B 9C            [ 4]  758 	sbc	a, h
   583C 67            [ 4]  759 	ld	h,a
   583D CB 3C         [ 8]  760 	srl	h
   583F CB 1D         [ 8]  761 	rr	l
   5841 DD 75 FC      [19]  762 	ld	-4 (ix),l
   5844 C5            [11]  763 	push	bc
   5845 D5            [11]  764 	push	de
   5846 DD 66 FF      [19]  765 	ld	h,-1 (ix)
   5849 DD 6E FC      [19]  766 	ld	l,-4 (ix)
   584C E5            [11]  767 	push	hl
   584D 21 00 C0      [10]  768 	ld	hl,#0xC000
   5850 E5            [11]  769 	push	hl
   5851 CD BA 6A      [17]  770 	call	_cpct_getScreenPtr
   5854 D1            [10]  771 	pop	de
   5855 C1            [10]  772 	pop	bc
   5856 E5            [11]  773 	push	hl
   5857 FD E1         [14]  774 	pop	iy
                            775 ;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
   5859 6A            [ 4]  776 	ld	l, d
   585A 60            [ 4]  777 	ld	h, b
   585B 7E            [ 7]  778 	ld	a, (hl)
   585C 23            [ 6]  779 	inc	hl
   585D 66            [ 7]  780 	ld	h,(hl)
   585E 6F            [ 4]  781 	ld	l,a
   585F D5            [11]  782 	push	de
   5860 79            [ 4]  783 	ld	a,c
   5861 F5            [11]  784 	push	af
   5862 33            [ 6]  785 	inc	sp
   5863 FD E5         [15]  786 	push	iy
   5865 E5            [11]  787 	push	hl
   5866 CD 15 67      [17]  788 	call	_cpct_drawStringM2
   5869 F1            [10]  789 	pop	af
   586A F1            [10]  790 	pop	af
   586B 33            [ 6]  791 	inc	sp
   586C D1            [10]  792 	pop	de
                            793 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   586D DD 34 FA      [23]  794 	inc	-6 (ix)
   5870 C2 C1 57      [10]  795 	jp	NZ,00110$
   5873 DD 34 FB      [23]  796 	inc	-5 (ix)
   5876 C3 C1 57      [10]  797 	jp	00110$
   5879                     798 00112$:
   5879 DD F9         [10]  799 	ld	sp, ix
   587B DD E1         [14]  800 	pop	ix
   587D C9            [10]  801 	ret
                            802 ;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
                            803 ;	---------------------------------
                            804 ; Function drawMenu
                            805 ; ---------------------------------
   587E                     806 _drawMenu::
   587E DD E5         [15]  807 	push	ix
   5880 DD 21 00 00   [14]  808 	ld	ix,#0
   5884 DD 39         [15]  809 	add	ix,sp
   5886 F5            [11]  810 	push	af
                            811 ;src/gui/gui.c:112: u8 iSelect=0;
   5887 06 00         [ 7]  812 	ld	b,#0x00
                            813 ;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
   5889 C5            [11]  814 	push	bc
   588A 21 00 40      [10]  815 	ld	hl,#0x4000
   588D E5            [11]  816 	push	hl
   588E 3E FF         [ 7]  817 	ld	a,#0xFF
   5890 F5            [11]  818 	push	af
   5891 33            [ 6]  819 	inc	sp
   5892 26 C0         [ 7]  820 	ld	h, #0xC0
   5894 E5            [11]  821 	push	hl
   5895 CD 86 69      [17]  822 	call	_cpct_memset
   5898 C1            [10]  823 	pop	bc
                            824 ;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
   5899 DD 5E 06      [19]  825 	ld	e,6 (ix)
   589C 16 00         [ 7]  826 	ld	d,#0x00
   589E 6B            [ 4]  827 	ld	l, e
   589F 62            [ 4]  828 	ld	h, d
   58A0 29            [11]  829 	add	hl, hl
   58A1 19            [11]  830 	add	hl, de
   58A2 29            [11]  831 	add	hl, hl
   58A3 29            [11]  832 	add	hl, hl
   58A4 C5            [11]  833 	push	bc
   58A5 E5            [11]  834 	push	hl
   58A6 21 1E 00      [10]  835 	ld	hl,#0x001E
   58A9 E5            [11]  836 	push	hl
   58AA CD B4 55      [17]  837 	call	_drawBoxM2
   58AD F1            [10]  838 	pop	af
   58AE F1            [10]  839 	pop	af
   58AF AF            [ 4]  840 	xor	a, a
   58B0 F5            [11]  841 	push	af
   58B1 33            [ 6]  842 	inc	sp
   58B2 DD 7E 06      [19]  843 	ld	a,6 (ix)
   58B5 F5            [11]  844 	push	af
   58B6 33            [ 6]  845 	inc	sp
   58B7 DD 6E 04      [19]  846 	ld	l,4 (ix)
   58BA DD 66 05      [19]  847 	ld	h,5 (ix)
   58BD E5            [11]  848 	push	hl
   58BE CD 4E 57      [17]  849 	call	_drawMenuEntry
   58C1 F1            [10]  850 	pop	af
   58C2 F1            [10]  851 	pop	af
   58C3 C1            [10]  852 	pop	bc
                            853 ;src/gui/gui.c:120: do{
   58C4 DD 4E 06      [19]  854 	ld	c,6 (ix)
   58C7 0D            [ 4]  855 	dec	c
   58C8                     856 00111$:
                            857 ;src/gui/gui.c:121: cpct_scanKeyboard(); 
   58C8 C5            [11]  858 	push	bc
   58C9 CD DA 6A      [17]  859 	call	_cpct_scanKeyboard
   58CC 21 00 01      [10]  860 	ld	hl,#0x0100
   58CF CD 74 66      [17]  861 	call	_cpct_isKeyPressed
   58D2 7D            [ 4]  862 	ld	a,l
   58D3 C1            [10]  863 	pop	bc
   58D4 B7            [ 4]  864 	or	a, a
   58D5 28 32         [12]  865 	jr	Z,00105$
                            866 ;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
   58D7 C5            [11]  867 	push	bc
   58D8 C5            [11]  868 	push	bc
   58D9 33            [ 6]  869 	inc	sp
   58DA DD 7E 06      [19]  870 	ld	a,6 (ix)
   58DD F5            [11]  871 	push	af
   58DE 33            [ 6]  872 	inc	sp
   58DF DD 6E 04      [19]  873 	ld	l,4 (ix)
   58E2 DD 66 05      [19]  874 	ld	h,5 (ix)
   58E5 E5            [11]  875 	push	hl
   58E6 CD 94 56      [17]  876 	call	_EraseMenuEntry
   58E9 F1            [10]  877 	pop	af
   58EA F1            [10]  878 	pop	af
   58EB C1            [10]  879 	pop	bc
                            880 ;src/gui/gui.c:127: if(iSelect ==0)
   58EC 78            [ 4]  881 	ld	a,b
   58ED B7            [ 4]  882 	or	a, a
   58EE 20 03         [12]  883 	jr	NZ,00102$
                            884 ;src/gui/gui.c:128: iSelect = nbEntry-1;
   58F0 41            [ 4]  885 	ld	b,c
   58F1 18 01         [12]  886 	jr	00103$
   58F3                     887 00102$:
                            888 ;src/gui/gui.c:130: iSelect--;
   58F3 05            [ 4]  889 	dec	b
   58F4                     890 00103$:
                            891 ;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
   58F4 C5            [11]  892 	push	bc
   58F5 C5            [11]  893 	push	bc
   58F6 33            [ 6]  894 	inc	sp
   58F7 DD 7E 06      [19]  895 	ld	a,6 (ix)
   58FA F5            [11]  896 	push	af
   58FB 33            [ 6]  897 	inc	sp
   58FC DD 6E 04      [19]  898 	ld	l,4 (ix)
   58FF DD 66 05      [19]  899 	ld	h,5 (ix)
   5902 E5            [11]  900 	push	hl
   5903 CD 4E 57      [17]  901 	call	_drawMenuEntry
   5906 F1            [10]  902 	pop	af
   5907 F1            [10]  903 	pop	af
   5908 C1            [10]  904 	pop	bc
   5909                     905 00105$:
                            906 ;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
   5909 C5            [11]  907 	push	bc
   590A 21 00 04      [10]  908 	ld	hl,#0x0400
   590D CD 74 66      [17]  909 	call	_cpct_isKeyPressed
   5910 5D            [ 4]  910 	ld	e,l
   5911 C1            [10]  911 	pop	bc
   5912 7B            [ 4]  912 	ld	a,e
   5913 B7            [ 4]  913 	or	a, a
   5914 28 48         [12]  914 	jr	Z,00112$
                            915 ;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
   5916 C5            [11]  916 	push	bc
   5917 C5            [11]  917 	push	bc
   5918 33            [ 6]  918 	inc	sp
   5919 DD 7E 06      [19]  919 	ld	a,6 (ix)
   591C F5            [11]  920 	push	af
   591D 33            [ 6]  921 	inc	sp
   591E DD 6E 04      [19]  922 	ld	l,4 (ix)
   5921 DD 66 05      [19]  923 	ld	h,5 (ix)
   5924 E5            [11]  924 	push	hl
   5925 CD 94 56      [17]  925 	call	_EraseMenuEntry
   5928 F1            [10]  926 	pop	af
   5929 F1            [10]  927 	pop	af
   592A C1            [10]  928 	pop	bc
                            929 ;src/gui/gui.c:139: if(iSelect == nbEntry-1)
   592B DD 5E 06      [19]  930 	ld	e,6 (ix)
   592E 16 00         [ 7]  931 	ld	d,#0x00
   5930 1B            [ 6]  932 	dec	de
   5931 DD 70 FE      [19]  933 	ld	-2 (ix),b
   5934 DD 36 FF 00   [19]  934 	ld	-1 (ix),#0x00
   5938 7B            [ 4]  935 	ld	a,e
   5939 DD 96 FE      [19]  936 	sub	a, -2 (ix)
   593C 20 0A         [12]  937 	jr	NZ,00107$
   593E 7A            [ 4]  938 	ld	a,d
   593F DD 96 FF      [19]  939 	sub	a, -1 (ix)
   5942 20 04         [12]  940 	jr	NZ,00107$
                            941 ;src/gui/gui.c:140: iSelect = 0;
   5944 06 00         [ 7]  942 	ld	b,#0x00
   5946 18 01         [12]  943 	jr	00108$
   5948                     944 00107$:
                            945 ;src/gui/gui.c:142: iSelect++;
   5948 04            [ 4]  946 	inc	b
   5949                     947 00108$:
                            948 ;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
   5949 C5            [11]  949 	push	bc
   594A C5            [11]  950 	push	bc
   594B 33            [ 6]  951 	inc	sp
   594C DD 7E 06      [19]  952 	ld	a,6 (ix)
   594F F5            [11]  953 	push	af
   5950 33            [ 6]  954 	inc	sp
   5951 DD 6E 04      [19]  955 	ld	l,4 (ix)
   5954 DD 66 05      [19]  956 	ld	h,5 (ix)
   5957 E5            [11]  957 	push	hl
   5958 CD 4E 57      [17]  958 	call	_drawMenuEntry
   595B F1            [10]  959 	pop	af
   595C F1            [10]  960 	pop	af
   595D C1            [10]  961 	pop	bc
   595E                     962 00112$:
                            963 ;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
   595E C5            [11]  964 	push	bc
   595F 21 02 04      [10]  965 	ld	hl,#0x0402
   5962 CD 74 66      [17]  966 	call	_cpct_isKeyPressed
   5965 7D            [ 4]  967 	ld	a,l
   5966 C1            [10]  968 	pop	bc
   5967 B7            [ 4]  969 	or	a, a
   5968 CA C8 58      [10]  970 	jp	Z,00111$
                            971 ;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
   596B 21 B0 36      [10]  972 	ld	hl,#0x36B0
   596E                     973 00117$:
   596E EB            [ 4]  974 	ex	de,hl
   596F 1B            [ 6]  975 	dec	de
   5970 6B            [ 4]  976 	ld	l, e
   5971 7A            [ 4]  977 	ld	a,d
   5972 67            [ 4]  978 	ld	h,a
   5973 B3            [ 4]  979 	or	a,e
   5974 20 F8         [12]  980 	jr	NZ,00117$
                            981 ;src/gui/gui.c:152: return iSelect;
   5976 68            [ 4]  982 	ld	l,b
   5977 DD F9         [10]  983 	ld	sp, ix
   5979 DD E1         [14]  984 	pop	ix
   597B C9            [10]  985 	ret
                            986 ;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
                            987 ;	---------------------------------
                            988 ; Function drawWindow
                            989 ; ---------------------------------
   597C                     990 _drawWindow::
   597C DD E5         [15]  991 	push	ix
   597E DD 21 00 00   [14]  992 	ld	ix,#0
   5982 DD 39         [15]  993 	add	ix,sp
   5984 21 F5 FF      [10]  994 	ld	hl,#-11
   5987 39            [11]  995 	add	hl,sp
   5988 F9            [ 6]  996 	ld	sp,hl
                            997 ;src/gui/gui.c:166: u8 valueReturn=0;
   5989 DD 36 F5 00   [19]  998 	ld	-11 (ix),#0x00
                            999 ;src/gui/gui.c:169: if(button == 0)
   598D DD 7E 07      [19] 1000 	ld	a,7 (ix)
   5990 B7            [ 4] 1001 	or	a, a
   5991 20 05         [12] 1002 	jr	NZ,00102$
                           1003 ;src/gui/gui.c:170: buttonTxt = "<OK>";
   5993 11 03 5B      [10] 1004 	ld	de,#___str_0
   5996 18 03         [12] 1005 	jr	00103$
   5998                    1006 00102$:
                           1007 ;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
   5998 11 08 5B      [10] 1008 	ld	de,#___str_1+0
   599B                    1009 00103$:
                           1010 ;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
   599B DD 4E 06      [19] 1011 	ld	c,6 (ix)
   599E 06 00         [ 7] 1012 	ld	b,#0x00
   59A0 03            [ 6] 1013 	inc	bc
   59A1 03            [ 6] 1014 	inc	bc
   59A2 69            [ 4] 1015 	ld	l, c
   59A3 60            [ 4] 1016 	ld	h, b
   59A4 29            [11] 1017 	add	hl, hl
   59A5 09            [11] 1018 	add	hl, bc
   59A6 29            [11] 1019 	add	hl, hl
   59A7 29            [11] 1020 	add	hl, hl
   59A8 C5            [11] 1021 	push	bc
   59A9 D5            [11] 1022 	push	de
   59AA E5            [11] 1023 	push	hl
   59AB 21 32 00      [10] 1024 	ld	hl,#0x0032
   59AE E5            [11] 1025 	push	hl
   59AF CD B4 55      [17] 1026 	call	_drawBoxM2
   59B2 F1            [10] 1027 	pop	af
   59B3 F1            [10] 1028 	pop	af
   59B4 D1            [10] 1029 	pop	de
   59B5 C1            [10] 1030 	pop	bc
                           1031 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   59B6 69            [ 4] 1032 	ld	l, c
   59B7 60            [ 4] 1033 	ld	h, b
   59B8 29            [11] 1034 	add	hl, hl
   59B9 29            [11] 1035 	add	hl, hl
   59BA 09            [11] 1036 	add	hl, bc
   59BB 29            [11] 1037 	add	hl, hl
   59BC 3E CA         [ 7] 1038 	ld	a,#0xCA
   59BE 95            [ 4] 1039 	sub	a, l
   59BF DD 77 FD      [19] 1040 	ld	-3 (ix),a
   59C2 3E 00         [ 7] 1041 	ld	a,#0x00
   59C4 9C            [ 4] 1042 	sbc	a, h
   59C5 DD 77 FE      [19] 1043 	ld	-2 (ix), a
   59C8 07            [ 4] 1044 	rlca
   59C9 E6 01         [ 7] 1045 	and	a,#0x01
   59CB DD 77 FA      [19] 1046 	ld	-6 (ix),a
   59CE DD 36 F6 00   [19] 1047 	ld	-10 (ix),#0x00
   59D2 DD 36 F9 00   [19] 1048 	ld	-7 (ix),#0x00
   59D6                    1049 00114$:
                           1050 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   59D6 DD 7E FD      [19] 1051 	ld	a,-3 (ix)
   59D9 C6 01         [ 7] 1052 	add	a, #0x01
   59DB DD 77 F7      [19] 1053 	ld	-9 (ix),a
   59DE DD 7E FE      [19] 1054 	ld	a,-2 (ix)
   59E1 CE 00         [ 7] 1055 	adc	a, #0x00
   59E3 DD 77 F8      [19] 1056 	ld	-8 (ix),a
                           1057 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   59E6 DD 7E F6      [19] 1058 	ld	a,-10 (ix)
   59E9 DD 96 06      [19] 1059 	sub	a, 6 (ix)
   59EC D2 76 5A      [10] 1060 	jp	NC,00104$
                           1061 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   59EF DD 6E FD      [19] 1062 	ld	l,-3 (ix)
   59F2 DD 66 FE      [19] 1063 	ld	h,-2 (ix)
   59F5 DD 7E FA      [19] 1064 	ld	a,-6 (ix)
   59F8 B7            [ 4] 1065 	or	a, a
   59F9 28 04         [12] 1066 	jr	Z,00118$
   59FB C1            [10] 1067 	pop	bc
   59FC E1            [10] 1068 	pop	hl
   59FD E5            [11] 1069 	push	hl
   59FE C5            [11] 1070 	push	bc
   59FF                    1071 00118$:
   59FF CB 2C         [ 8] 1072 	sra	h
   5A01 CB 1D         [ 8] 1073 	rr	l
   5A03 DD 66 F9      [19] 1074 	ld	h,-7 (ix)
   5A06 7D            [ 4] 1075 	ld	a,l
   5A07 84            [ 4] 1076 	add	a, h
   5A08 DD 77 FF      [19] 1077 	ld	-1 (ix),a
   5A0B DD 6E F6      [19] 1078 	ld	l,-10 (ix)
   5A0E 26 00         [ 7] 1079 	ld	h,#0x00
   5A10 29            [11] 1080 	add	hl, hl
   5A11 45            [ 4] 1081 	ld	b,l
   5A12 4C            [ 4] 1082 	ld	c,h
   5A13 DD 7E 04      [19] 1083 	ld	a,4 (ix)
   5A16 80            [ 4] 1084 	add	a, b
   5A17 DD 77 FB      [19] 1085 	ld	-5 (ix),a
   5A1A DD 7E 05      [19] 1086 	ld	a,5 (ix)
   5A1D 89            [ 4] 1087 	adc	a, c
   5A1E DD 77 FC      [19] 1088 	ld	-4 (ix),a
   5A21 DD 6E FB      [19] 1089 	ld	l,-5 (ix)
   5A24 DD 66 FC      [19] 1090 	ld	h,-4 (ix)
   5A27 4E            [ 7] 1091 	ld	c,(hl)
   5A28 23            [ 6] 1092 	inc	hl
   5A29 46            [ 7] 1093 	ld	b,(hl)
   5A2A D5            [11] 1094 	push	de
   5A2B C5            [11] 1095 	push	bc
   5A2C CD AD 69      [17] 1096 	call	_strlen
   5A2F F1            [10] 1097 	pop	af
   5A30 D1            [10] 1098 	pop	de
   5A31 3E 52         [ 7] 1099 	ld	a,#0x52
   5A33 95            [ 4] 1100 	sub	a, l
   5A34 6F            [ 4] 1101 	ld	l,a
   5A35 3E 00         [ 7] 1102 	ld	a,#0x00
   5A37 9C            [ 4] 1103 	sbc	a, h
   5A38 67            [ 4] 1104 	ld	h,a
   5A39 CB 3C         [ 8] 1105 	srl	h
   5A3B CB 1D         [ 8] 1106 	rr	l
   5A3D 45            [ 4] 1107 	ld	b,l
   5A3E D5            [11] 1108 	push	de
   5A3F DD 7E FF      [19] 1109 	ld	a,-1 (ix)
   5A42 F5            [11] 1110 	push	af
   5A43 33            [ 6] 1111 	inc	sp
   5A44 C5            [11] 1112 	push	bc
   5A45 33            [ 6] 1113 	inc	sp
   5A46 21 00 C0      [10] 1114 	ld	hl,#0xC000
   5A49 E5            [11] 1115 	push	hl
   5A4A CD BA 6A      [17] 1116 	call	_cpct_getScreenPtr
   5A4D D1            [10] 1117 	pop	de
   5A4E E5            [11] 1118 	push	hl
   5A4F FD E1         [14] 1119 	pop	iy
                           1120 ;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
   5A51 DD 6E FB      [19] 1121 	ld	l,-5 (ix)
   5A54 DD 66 FC      [19] 1122 	ld	h,-4 (ix)
   5A57 4E            [ 7] 1123 	ld	c,(hl)
   5A58 23            [ 6] 1124 	inc	hl
   5A59 46            [ 7] 1125 	ld	b,(hl)
   5A5A D5            [11] 1126 	push	de
   5A5B AF            [ 4] 1127 	xor	a, a
   5A5C F5            [11] 1128 	push	af
   5A5D 33            [ 6] 1129 	inc	sp
   5A5E FD E5         [15] 1130 	push	iy
   5A60 C5            [11] 1131 	push	bc
   5A61 CD 15 67      [17] 1132 	call	_cpct_drawStringM2
   5A64 F1            [10] 1133 	pop	af
   5A65 F1            [10] 1134 	pop	af
   5A66 33            [ 6] 1135 	inc	sp
   5A67 D1            [10] 1136 	pop	de
                           1137 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5A68 DD 7E F9      [19] 1138 	ld	a,-7 (ix)
   5A6B C6 0A         [ 7] 1139 	add	a, #0x0A
   5A6D DD 77 F9      [19] 1140 	ld	-7 (ix),a
   5A70 DD 34 F6      [23] 1141 	inc	-10 (ix)
   5A73 C3 D6 59      [10] 1142 	jp	00114$
   5A76                    1143 00104$:
                           1144 ;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   5A76 DD 46 FD      [19] 1145 	ld	b,-3 (ix)
   5A79 DD 66 FE      [19] 1146 	ld	h,-2 (ix)
   5A7C DD 7E FA      [19] 1147 	ld	a,-6 (ix)
   5A7F B7            [ 4] 1148 	or	a, a
   5A80 28 06         [12] 1149 	jr	Z,00119$
   5A82 DD 46 F7      [19] 1150 	ld	b,-9 (ix)
   5A85 DD 66 F8      [19] 1151 	ld	h,-8 (ix)
   5A88                    1152 00119$:
   5A88 CB 2C         [ 8] 1153 	sra	h
   5A8A CB 18         [ 8] 1154 	rr	b
   5A8C DD 4E 06      [19] 1155 	ld	c,6 (ix)
   5A8F 0C            [ 4] 1156 	inc	c
   5A90 79            [ 4] 1157 	ld	a,c
   5A91 87            [ 4] 1158 	add	a, a
   5A92 87            [ 4] 1159 	add	a, a
   5A93 81            [ 4] 1160 	add	a, c
   5A94 87            [ 4] 1161 	add	a, a
   5A95 67            [ 4] 1162 	ld	h, a
   5A96 80            [ 4] 1163 	add	a,b
   5A97 47            [ 4] 1164 	ld	b,a
   5A98 C5            [11] 1165 	push	bc
   5A99 D5            [11] 1166 	push	de
   5A9A D5            [11] 1167 	push	de
   5A9B CD AD 69      [17] 1168 	call	_strlen
   5A9E F1            [10] 1169 	pop	af
   5A9F D1            [10] 1170 	pop	de
   5AA0 C1            [10] 1171 	pop	bc
   5AA1 3E 52         [ 7] 1172 	ld	a,#0x52
   5AA3 95            [ 4] 1173 	sub	a, l
   5AA4 6F            [ 4] 1174 	ld	l,a
   5AA5 3E 00         [ 7] 1175 	ld	a,#0x00
   5AA7 9C            [ 4] 1176 	sbc	a, h
   5AA8 67            [ 4] 1177 	ld	h,a
   5AA9 CB 3C         [ 8] 1178 	srl	h
   5AAB CB 1D         [ 8] 1179 	rr	l
   5AAD 7D            [ 4] 1180 	ld	a,l
   5AAE D5            [11] 1181 	push	de
   5AAF C5            [11] 1182 	push	bc
   5AB0 33            [ 6] 1183 	inc	sp
   5AB1 F5            [11] 1184 	push	af
   5AB2 33            [ 6] 1185 	inc	sp
   5AB3 21 00 C0      [10] 1186 	ld	hl,#0xC000
   5AB6 E5            [11] 1187 	push	hl
   5AB7 CD BA 6A      [17] 1188 	call	_cpct_getScreenPtr
   5ABA D1            [10] 1189 	pop	de
                           1190 ;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
   5ABB 4D            [ 4] 1191 	ld	c, l
   5ABC 44            [ 4] 1192 	ld	b, h
   5ABD AF            [ 4] 1193 	xor	a, a
   5ABE F5            [11] 1194 	push	af
   5ABF 33            [ 6] 1195 	inc	sp
   5AC0 C5            [11] 1196 	push	bc
   5AC1 D5            [11] 1197 	push	de
   5AC2 CD 15 67      [17] 1198 	call	_cpct_drawStringM2
   5AC5 F1            [10] 1199 	pop	af
   5AC6 F1            [10] 1200 	pop	af
   5AC7 33            [ 6] 1201 	inc	sp
                           1202 ;src/gui/gui.c:186: do{
   5AC8                    1203 00110$:
                           1204 ;src/gui/gui.c:187: cpct_scanKeyboard(); 
   5AC8 CD DA 6A      [17] 1205 	call	_cpct_scanKeyboard
                           1206 ;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
   5ACB 21 02 04      [10] 1207 	ld	hl,#0x0402
   5ACE CD 74 66      [17] 1208 	call	_cpct_isKeyPressed
   5AD1 7D            [ 4] 1209 	ld	a,l
   5AD2 B7            [ 4] 1210 	or	a, a
   5AD3 28 04         [12] 1211 	jr	Z,00106$
                           1212 ;src/gui/gui.c:190: valueReturn=1;
   5AD5 DD 36 F5 01   [19] 1213 	ld	-11 (ix),#0x01
   5AD9                    1214 00106$:
                           1215 ;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
   5AD9 21 08 04      [10] 1216 	ld	hl,#0x0408
   5ADC CD 74 66      [17] 1217 	call	_cpct_isKeyPressed
   5ADF 7D            [ 4] 1218 	ld	a,l
   5AE0 B7            [ 4] 1219 	or	a, a
   5AE1 28 04         [12] 1220 	jr	Z,00111$
                           1221 ;src/gui/gui.c:193: valueReturn=0;
   5AE3 DD 36 F5 00   [19] 1222 	ld	-11 (ix),#0x00
   5AE7                    1223 00111$:
                           1224 ;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   5AE7 21 02 04      [10] 1225 	ld	hl,#0x0402
   5AEA CD 74 66      [17] 1226 	call	_cpct_isKeyPressed
   5AED 7D            [ 4] 1227 	ld	a,l
   5AEE B7            [ 4] 1228 	or	a, a
   5AEF 20 0A         [12] 1229 	jr	NZ,00112$
   5AF1 21 08 04      [10] 1230 	ld	hl,#0x0408
   5AF4 CD 74 66      [17] 1231 	call	_cpct_isKeyPressed
   5AF7 7D            [ 4] 1232 	ld	a,l
   5AF8 B7            [ 4] 1233 	or	a, a
   5AF9 28 CD         [12] 1234 	jr	Z,00110$
   5AFB                    1235 00112$:
                           1236 ;src/gui/gui.c:197: return valueReturn;
   5AFB DD 6E F5      [19] 1237 	ld	l,-11 (ix)
   5AFE DD F9         [10] 1238 	ld	sp, ix
   5B00 DD E1         [14] 1239 	pop	ix
   5B02 C9            [10] 1240 	ret
   5B03                    1241 ___str_0:
   5B03 3C 4F 4B 3E        1242 	.ascii "<OK>"
   5B07 00                 1243 	.db 0x00
   5B08                    1244 ___str_1:
   5B08 3C 4F 4B 3E 20 20  1245 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   5B16 00                 1246 	.db 0x00
                           1247 	.area _CODE
                           1248 	.area _INITIALIZER
                           1249 	.area _CABS (ABS)
