                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 17:14:19 2016
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
   5577                      66 _putM0::
                             67 ;src/gui/gui.c:5: cpct_setVideoMode(0);
   5577 AF            [ 4]   68 	xor	a, a
   5578 F5            [11]   69 	push	af
   5579 33            [ 6]   70 	inc	sp
   557A CD EA 64      [17]   71 	call	_cpct_setVideoMode
   557D 33            [ 6]   72 	inc	sp
                             73 ;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
   557E 21 3D 5C      [10]   74 	ld	hl,#_paletteTrains
   5581 01 10 00      [10]   75 	ld	bc,#0x0010
   5584 C5            [11]   76 	push	bc
   5585 E5            [11]   77 	push	hl
   5586 CD D3 62      [17]   78 	call	_cpct_setPalette
   5589 C9            [10]   79 	ret
                             80 ;src/gui/gui.c:10: void putM1(void)
                             81 ;	---------------------------------
                             82 ; Function putM1
                             83 ; ---------------------------------
   558A                      84 _putM1::
                             85 ;src/gui/gui.c:12: cpct_setVideoMode(1);
   558A 3E 01         [ 7]   86 	ld	a,#0x01
   558C F5            [11]   87 	push	af
   558D 33            [ 6]   88 	inc	sp
   558E CD EA 64      [17]   89 	call	_cpct_setVideoMode
   5591 33            [ 6]   90 	inc	sp
                             91 ;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
   5592 21 4D 5C      [10]   92 	ld	hl,#_paletteMenusM1
   5595 01 04 00      [10]   93 	ld	bc,#0x0004
   5598 C5            [11]   94 	push	bc
   5599 E5            [11]   95 	push	hl
   559A CD D3 62      [17]   96 	call	_cpct_setPalette
   559D C9            [10]   97 	ret
                             98 ;src/gui/gui.c:17: void putM2(void)
                             99 ;	---------------------------------
                            100 ; Function putM2
                            101 ; ---------------------------------
   559E                     102 _putM2::
                            103 ;src/gui/gui.c:19: cpct_setVideoMode(2);
   559E 3E 02         [ 7]  104 	ld	a,#0x02
   55A0 F5            [11]  105 	push	af
   55A1 33            [ 6]  106 	inc	sp
   55A2 CD EA 64      [17]  107 	call	_cpct_setVideoMode
   55A5 33            [ 6]  108 	inc	sp
                            109 ;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
   55A6 21 51 5C      [10]  110 	ld	hl,#_paletteMenusM2
   55A9 01 02 00      [10]  111 	ld	bc,#0x0002
   55AC C5            [11]  112 	push	bc
   55AD E5            [11]  113 	push	hl
   55AE CD D3 62      [17]  114 	call	_cpct_setPalette
                            115 ;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
   55B1 21 00 40      [10]  116 	ld	hl,#0x4000
   55B4 E5            [11]  117 	push	hl
   55B5 3E FF         [ 7]  118 	ld	a,#0xFF
   55B7 F5            [11]  119 	push	af
   55B8 33            [ 6]  120 	inc	sp
   55B9 26 C0         [ 7]  121 	ld	h, #0xC0
   55BB E5            [11]  122 	push	hl
   55BC CD 18 65      [17]  123 	call	_cpct_memset
   55BF C9            [10]  124 	ret
                            125 ;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
                            126 ;	---------------------------------
                            127 ; Function drawBoxM0
                            128 ; ---------------------------------
   55C0                     129 _drawBoxM0::
   55C0 DD E5         [15]  130 	push	ix
   55C2 DD 21 00 00   [14]  131 	ld	ix,#0
   55C6 DD 39         [15]  132 	add	ix,sp
   55C8 21 F9 FF      [10]  133 	ld	hl,#-7
   55CB 39            [11]  134 	add	hl,sp
   55CC F9            [ 6]  135 	ld	sp,hl
                            136 ;src/gui/gui.c:30: int left = (80-width_)/2;
   55CD 3E 50         [ 7]  137 	ld	a,#0x50
   55CF DD 96 04      [19]  138 	sub	a, 4 (ix)
   55D2 57            [ 4]  139 	ld	d,a
   55D3 3E 00         [ 7]  140 	ld	a,#0x00
   55D5 DD 9E 05      [19]  141 	sbc	a, 5 (ix)
   55D8 5F            [ 4]  142 	ld	e,a
   55D9 6A            [ 4]  143 	ld	l, d
   55DA 63            [ 4]  144 	ld	h, e
   55DB CB 7B         [ 8]  145 	bit	7, e
   55DD 28 03         [12]  146 	jr	Z,00103$
   55DF 6A            [ 4]  147 	ld	l, d
   55E0 63            [ 4]  148 	ld	h, e
   55E1 23            [ 6]  149 	inc	hl
   55E2                     150 00103$:
   55E2 DD 75 F9      [19]  151 	ld	-7 (ix),l
   55E5 DD 74 FA      [19]  152 	ld	-6 (ix),h
   55E8 DD CB FA 2E   [23]  153 	sra	-6 (ix)
   55EC DD CB F9 1E   [23]  154 	rr	-7 (ix)
                            155 ;src/gui/gui.c:31: int top = (200-height_)/2;
   55F0 3E C8         [ 7]  156 	ld	a,#0xC8
   55F2 DD 96 06      [19]  157 	sub	a, 6 (ix)
   55F5 4F            [ 4]  158 	ld	c,a
   55F6 3E 00         [ 7]  159 	ld	a,#0x00
   55F8 DD 9E 07      [19]  160 	sbc	a, 7 (ix)
   55FB 47            [ 4]  161 	ld	b,a
   55FC 61            [ 4]  162 	ld	h,c
   55FD 50            [ 4]  163 	ld	d,b
   55FE CB 78         [ 8]  164 	bit	7, b
   5600 28 03         [12]  165 	jr	Z,00104$
   5602 03            [ 6]  166 	inc	bc
   5603 61            [ 4]  167 	ld	h,c
   5604 50            [ 4]  168 	ld	d,b
   5605                     169 00104$:
   5605 5C            [ 4]  170 	ld	e, h
   5606 CB 2A         [ 8]  171 	sra	d
   5608 CB 1B         [ 8]  172 	rr	e
                            173 ;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
   560A D5            [11]  174 	push	de
   560B 21 09 09      [10]  175 	ld	hl,#0x0909
   560E E5            [11]  176 	push	hl
   560F CD FC 64      [17]  177 	call	_cpct_px2byteM0
   5612 65            [ 4]  178 	ld	h,l
   5613 01 00 40      [10]  179 	ld	bc,#0x4000
   5616 C5            [11]  180 	push	bc
   5617 E5            [11]  181 	push	hl
   5618 33            [ 6]  182 	inc	sp
   5619 21 00 C0      [10]  183 	ld	hl,#0xC000
   561C E5            [11]  184 	push	hl
   561D CD 18 65      [17]  185 	call	_cpct_memset
   5620 D1            [10]  186 	pop	de
                            187 ;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   5621 DD 73 FF      [19]  188 	ld	-1 (ix), e
   5624 63            [ 4]  189 	ld	h, e
   5625 24            [ 4]  190 	inc	h
   5626 24            [ 4]  191 	inc	h
   5627 24            [ 4]  192 	inc	h
   5628 24            [ 4]  193 	inc	h
   5629 DD 7E F9      [19]  194 	ld	a,-7 (ix)
   562C 3C            [ 4]  195 	inc	a
   562D DD 77 FC      [19]  196 	ld	-4 (ix),a
   5630 D5            [11]  197 	push	de
   5631 E5            [11]  198 	push	hl
   5632 33            [ 6]  199 	inc	sp
   5633 DD 7E FC      [19]  200 	ld	a,-4 (ix)
   5636 F5            [11]  201 	push	af
   5637 33            [ 6]  202 	inc	sp
   5638 21 00 C0      [10]  203 	ld	hl,#0xC000
   563B E5            [11]  204 	push	hl
   563C CD 4C 66      [17]  205 	call	_cpct_getScreenPtr
   563F D1            [10]  206 	pop	de
   5640 4D            [ 4]  207 	ld	c, l
   5641 44            [ 4]  208 	ld	b, h
                            209 ;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   5642 DD 7E 06      [19]  210 	ld	a,6 (ix)
   5645 DD 77 FB      [19]  211 	ld	-5 (ix),a
   5648 DD 7E 04      [19]  212 	ld	a,4 (ix)
   564B DD 77 FD      [19]  213 	ld	-3 (ix),a
   564E C5            [11]  214 	push	bc
   564F D5            [11]  215 	push	de
   5650 21 02 02      [10]  216 	ld	hl,#0x0202
   5653 E5            [11]  217 	push	hl
   5654 CD FC 64      [17]  218 	call	_cpct_px2byteM0
   5657 DD 75 FE      [19]  219 	ld	-2 (ix),l
   565A D1            [10]  220 	pop	de
   565B C1            [10]  221 	pop	bc
   565C D5            [11]  222 	push	de
   565D DD 66 FB      [19]  223 	ld	h,-5 (ix)
   5660 DD 6E FD      [19]  224 	ld	l,-3 (ix)
   5663 E5            [11]  225 	push	hl
   5664 DD 7E FE      [19]  226 	ld	a,-2 (ix)
   5667 F5            [11]  227 	push	af
   5668 33            [ 6]  228 	inc	sp
   5669 C5            [11]  229 	push	bc
   566A CD 93 65      [17]  230 	call	_cpct_drawSolidBox
   566D F1            [10]  231 	pop	af
   566E F1            [10]  232 	pop	af
   566F 33            [ 6]  233 	inc	sp
   5670 D1            [10]  234 	pop	de
                            235 ;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5671 63            [ 4]  236 	ld	h,e
   5672 DD 56 F9      [19]  237 	ld	d,-7 (ix)
   5675 E5            [11]  238 	push	hl
   5676 33            [ 6]  239 	inc	sp
   5677 D5            [11]  240 	push	de
   5678 33            [ 6]  241 	inc	sp
   5679 21 00 C0      [10]  242 	ld	hl,#0xC000
   567C E5            [11]  243 	push	hl
   567D CD 4C 66      [17]  244 	call	_cpct_getScreenPtr
                            245 ;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   5680 E5            [11]  246 	push	hl
   5681 21 06 06      [10]  247 	ld	hl,#0x0606
   5684 E5            [11]  248 	push	hl
   5685 CD FC 64      [17]  249 	call	_cpct_px2byteM0
   5688 45            [ 4]  250 	ld	b,l
   5689 D1            [10]  251 	pop	de
   568A DD 66 FB      [19]  252 	ld	h,-5 (ix)
   568D DD 6E FD      [19]  253 	ld	l,-3 (ix)
   5690 E5            [11]  254 	push	hl
   5691 C5            [11]  255 	push	bc
   5692 33            [ 6]  256 	inc	sp
   5693 D5            [11]  257 	push	de
   5694 CD 93 65      [17]  258 	call	_cpct_drawSolidBox
   5697 F1            [10]  259 	pop	af
   5698 F1            [10]  260 	pop	af
   5699 33            [ 6]  261 	inc	sp
                            262 ;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   569A DD 66 FF      [19]  263 	ld	h,-1 (ix)
   569D 24            [ 4]  264 	inc	h
   569E 24            [ 4]  265 	inc	h
   569F E5            [11]  266 	push	hl
   56A0 33            [ 6]  267 	inc	sp
   56A1 DD 7E FC      [19]  268 	ld	a,-4 (ix)
   56A4 F5            [11]  269 	push	af
   56A5 33            [ 6]  270 	inc	sp
   56A6 21 00 C0      [10]  271 	ld	hl,#0xC000
   56A9 E5            [11]  272 	push	hl
   56AA CD 4C 66      [17]  273 	call	_cpct_getScreenPtr
   56AD EB            [ 4]  274 	ex	de,hl
                            275 ;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   56AE DD 7E 06      [19]  276 	ld	a,6 (ix)
   56B1 C6 FC         [ 7]  277 	add	a,#0xFC
   56B3 4F            [ 4]  278 	ld	c,a
   56B4 DD 46 04      [19]  279 	ld	b,4 (ix)
   56B7 05            [ 4]  280 	dec	b
   56B8 05            [ 4]  281 	dec	b
   56B9 C5            [11]  282 	push	bc
   56BA D5            [11]  283 	push	de
   56BB 21 00 00      [10]  284 	ld	hl,#0x0000
   56BE E5            [11]  285 	push	hl
   56BF CD FC 64      [17]  286 	call	_cpct_px2byteM0
   56C2 DD 75 FE      [19]  287 	ld	-2 (ix),l
   56C5 D1            [10]  288 	pop	de
   56C6 C1            [10]  289 	pop	bc
   56C7 79            [ 4]  290 	ld	a,c
   56C8 F5            [11]  291 	push	af
   56C9 33            [ 6]  292 	inc	sp
   56CA C5            [11]  293 	push	bc
   56CB 33            [ 6]  294 	inc	sp
   56CC DD 7E FE      [19]  295 	ld	a,-2 (ix)
   56CF F5            [11]  296 	push	af
   56D0 33            [ 6]  297 	inc	sp
   56D1 D5            [11]  298 	push	de
   56D2 CD 93 65      [17]  299 	call	_cpct_drawSolidBox
   56D5 DD F9         [10]  300 	ld	sp,ix
   56D7 DD E1         [14]  301 	pop	ix
   56D9 C9            [10]  302 	ret
                            303 ;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
                            304 ;	---------------------------------
                            305 ; Function drawBoxM2
                            306 ; ---------------------------------
   56DA                     307 _drawBoxM2::
   56DA DD E5         [15]  308 	push	ix
   56DC DD 21 00 00   [14]  309 	ld	ix,#0
   56E0 DD 39         [15]  310 	add	ix,sp
   56E2 21 FA FF      [10]  311 	ld	hl,#-6
   56E5 39            [11]  312 	add	hl,sp
   56E6 F9            [ 6]  313 	ld	sp,hl
                            314 ;src/gui/gui.c:54: int left = (80-width_)/2;
   56E7 3E 50         [ 7]  315 	ld	a,#0x50
   56E9 DD 96 04      [19]  316 	sub	a, 4 (ix)
   56EC 4F            [ 4]  317 	ld	c,a
   56ED 3E 00         [ 7]  318 	ld	a,#0x00
   56EF DD 9E 05      [19]  319 	sbc	a, 5 (ix)
   56F2 47            [ 4]  320 	ld	b,a
   56F3 61            [ 4]  321 	ld	h,c
   56F4 50            [ 4]  322 	ld	d,b
   56F5 CB 78         [ 8]  323 	bit	7, b
   56F7 28 03         [12]  324 	jr	Z,00103$
   56F9 03            [ 6]  325 	inc	bc
   56FA 61            [ 4]  326 	ld	h,c
   56FB 50            [ 4]  327 	ld	d,b
   56FC                     328 00103$:
   56FC 5C            [ 4]  329 	ld	e, h
   56FD CB 2A         [ 8]  330 	sra	d
   56FF CB 1B         [ 8]  331 	rr	e
                            332 ;src/gui/gui.c:55: int top = (200-height_)/2;
   5701 3E C8         [ 7]  333 	ld	a,#0xC8
   5703 DD 96 06      [19]  334 	sub	a, 6 (ix)
   5706 4F            [ 4]  335 	ld	c,a
   5707 3E 00         [ 7]  336 	ld	a,#0x00
   5709 DD 9E 07      [19]  337 	sbc	a, 7 (ix)
   570C 47            [ 4]  338 	ld	b,a
   570D 61            [ 4]  339 	ld	h,c
   570E 68            [ 4]  340 	ld	l,b
   570F CB 78         [ 8]  341 	bit	7, b
   5711 28 03         [12]  342 	jr	Z,00104$
   5713 03            [ 6]  343 	inc	bc
   5714 61            [ 4]  344 	ld	h,c
   5715 68            [ 4]  345 	ld	l,b
   5716                     346 00104$:
   5716 DD 74 FA      [19]  347 	ld	-6 (ix),h
   5719 DD 75 FB      [19]  348 	ld	-5 (ix),l
   571C DD CB FB 2E   [23]  349 	sra	-5 (ix)
   5720 DD CB FA 1E   [23]  350 	rr	-6 (ix)
                            351 ;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   5724 DD 7E FA      [19]  352 	ld	a,-6 (ix)
   5727 DD 77 FF      [19]  353 	ld	-1 (ix), a
   572A C6 05         [ 7]  354 	add	a, #0x05
   572C 4F            [ 4]  355 	ld	c,a
   572D DD 73 FC      [19]  356 	ld	-4 (ix), e
   5730 63            [ 4]  357 	ld	h, e
   5731 24            [ 4]  358 	inc	h
   5732 24            [ 4]  359 	inc	h
   5733 D5            [11]  360 	push	de
   5734 79            [ 4]  361 	ld	a,c
   5735 F5            [11]  362 	push	af
   5736 33            [ 6]  363 	inc	sp
   5737 E5            [11]  364 	push	hl
   5738 33            [ 6]  365 	inc	sp
   5739 21 00 C0      [10]  366 	ld	hl,#0xC000
   573C E5            [11]  367 	push	hl
   573D CD 4C 66      [17]  368 	call	_cpct_getScreenPtr
   5740 D1            [10]  369 	pop	de
                            370 ;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   5741 DD 46 06      [19]  371 	ld	b,6 (ix)
   5744 DD 4E 04      [19]  372 	ld	c,4 (ix)
   5747 79            [ 4]  373 	ld	a,c
   5748 C6 FF         [ 7]  374 	add	a,#0xFF
   574A DD 75 FD      [19]  375 	ld	-3 (ix),l
   574D DD 74 FE      [19]  376 	ld	-2 (ix),h
   5750 C5            [11]  377 	push	bc
   5751 D5            [11]  378 	push	de
   5752 C5            [11]  379 	push	bc
   5753 33            [ 6]  380 	inc	sp
   5754 F5            [11]  381 	push	af
   5755 33            [ 6]  382 	inc	sp
   5756 AF            [ 4]  383 	xor	a, a
   5757 F5            [11]  384 	push	af
   5758 33            [ 6]  385 	inc	sp
   5759 DD 6E FD      [19]  386 	ld	l,-3 (ix)
   575C DD 66 FE      [19]  387 	ld	h,-2 (ix)
   575F E5            [11]  388 	push	hl
   5760 CD 93 65      [17]  389 	call	_cpct_drawSolidBox
   5763 F1            [10]  390 	pop	af
   5764 F1            [10]  391 	pop	af
   5765 33            [ 6]  392 	inc	sp
   5766 D1            [10]  393 	pop	de
   5767 C1            [10]  394 	pop	bc
                            395 ;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5768 DD 66 FA      [19]  396 	ld	h,-6 (ix)
   576B 53            [ 4]  397 	ld	d,e
   576C C5            [11]  398 	push	bc
   576D E5            [11]  399 	push	hl
   576E 33            [ 6]  400 	inc	sp
   576F D5            [11]  401 	push	de
   5770 33            [ 6]  402 	inc	sp
   5771 21 00 C0      [10]  403 	ld	hl,#0xC000
   5774 E5            [11]  404 	push	hl
   5775 CD 4C 66      [17]  405 	call	_cpct_getScreenPtr
   5778 C1            [10]  406 	pop	bc
                            407 ;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   5779 DD 7E 04      [19]  408 	ld	a,4 (ix)
   577C EB            [ 4]  409 	ex	de,hl
   577D C5            [11]  410 	push	bc
   577E C5            [11]  411 	push	bc
   577F 33            [ 6]  412 	inc	sp
   5780 47            [ 4]  413 	ld	b,a
   5781 0E F8         [ 7]  414 	ld	c,#0xF8
   5783 C5            [11]  415 	push	bc
   5784 D5            [11]  416 	push	de
   5785 CD 93 65      [17]  417 	call	_cpct_drawSolidBox
   5788 F1            [10]  418 	pop	af
   5789 F1            [10]  419 	pop	af
   578A 33            [ 6]  420 	inc	sp
   578B C1            [10]  421 	pop	bc
                            422 ;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   578C DD 66 FF      [19]  423 	ld	h,-1 (ix)
   578F 24            [ 4]  424 	inc	h
   5790 DD 56 FC      [19]  425 	ld	d,-4 (ix)
   5793 14            [ 4]  426 	inc	d
   5794 C5            [11]  427 	push	bc
   5795 E5            [11]  428 	push	hl
   5796 33            [ 6]  429 	inc	sp
   5797 D5            [11]  430 	push	de
   5798 33            [ 6]  431 	inc	sp
   5799 21 00 C0      [10]  432 	ld	hl,#0xC000
   579C E5            [11]  433 	push	hl
   579D CD 4C 66      [17]  434 	call	_cpct_getScreenPtr
   57A0 C1            [10]  435 	pop	bc
   57A1 5D            [ 4]  436 	ld	e, l
   57A2 54            [ 4]  437 	ld	d, h
                            438 ;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   57A3 DD 66 06      [19]  439 	ld	h,6 (ix)
   57A6 25            [ 4]  440 	dec	h
   57A7 25            [ 4]  441 	dec	h
   57A8 79            [ 4]  442 	ld	a,c
   57A9 C6 FE         [ 7]  443 	add	a,#0xFE
   57AB E5            [11]  444 	push	hl
   57AC 33            [ 6]  445 	inc	sp
   57AD 47            [ 4]  446 	ld	b,a
   57AE 0E FF         [ 7]  447 	ld	c,#0xFF
   57B0 C5            [11]  448 	push	bc
   57B1 D5            [11]  449 	push	de
   57B2 CD 93 65      [17]  450 	call	_cpct_drawSolidBox
   57B5 DD F9         [10]  451 	ld	sp,ix
   57B7 DD E1         [14]  452 	pop	ix
   57B9 C9            [10]  453 	ret
                            454 ;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            455 ;	---------------------------------
                            456 ; Function EraseMenuEntry
                            457 ; ---------------------------------
   57BA                     458 _EraseMenuEntry::
   57BA DD E5         [15]  459 	push	ix
   57BC DD 21 00 00   [14]  460 	ld	ix,#0
   57C0 DD 39         [15]  461 	add	ix,sp
   57C2 3B            [ 6]  462 	dec	sp
                            463 ;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   57C3 DD 4E 06      [19]  464 	ld	c,6 (ix)
   57C6 06 00         [ 7]  465 	ld	b,#0x00
   57C8 69            [ 4]  466 	ld	l, c
   57C9 60            [ 4]  467 	ld	h, b
   57CA 29            [11]  468 	add	hl, hl
   57CB 29            [11]  469 	add	hl, hl
   57CC 09            [11]  470 	add	hl, bc
   57CD 29            [11]  471 	add	hl, hl
   57CE 4D            [ 4]  472 	ld	c,l
   57CF 44            [ 4]  473 	ld	b,h
   57D0 3E C9         [ 7]  474 	ld	a,#0xC9
   57D2 91            [ 4]  475 	sub	a, c
   57D3 57            [ 4]  476 	ld	d,a
   57D4 3E 00         [ 7]  477 	ld	a,#0x00
   57D6 98            [ 4]  478 	sbc	a, b
   57D7 5F            [ 4]  479 	ld	e,a
   57D8 6A            [ 4]  480 	ld	l, d
   57D9 63            [ 4]  481 	ld	h, e
   57DA CB 7B         [ 8]  482 	bit	7, e
   57DC 28 03         [12]  483 	jr	Z,00103$
   57DE 6A            [ 4]  484 	ld	l, d
   57DF 63            [ 4]  485 	ld	h, e
   57E0 23            [ 6]  486 	inc	hl
   57E1                     487 00103$:
   57E1 CB 2C         [ 8]  488 	sra	h
   57E3 CB 1D         [ 8]  489 	rr	l
   57E5 55            [ 4]  490 	ld	d,l
   57E6 DD 7E 07      [19]  491 	ld	a,7 (ix)
   57E9 5F            [ 4]  492 	ld	e,a
   57EA 87            [ 4]  493 	add	a, a
   57EB 87            [ 4]  494 	add	a, a
   57EC 83            [ 4]  495 	add	a, e
   57ED 87            [ 4]  496 	add	a, a
   57EE DD 77 FF      [19]  497 	ld	-1 (ix),a
   57F1 7A            [ 4]  498 	ld	a,d
   57F2 DD 86 FF      [19]  499 	add	a, -1 (ix)
   57F5 C5            [11]  500 	push	bc
   57F6 57            [ 4]  501 	ld	d,a
   57F7 1E 20         [ 7]  502 	ld	e,#0x20
   57F9 D5            [11]  503 	push	de
   57FA 21 00 C0      [10]  504 	ld	hl,#0xC000
   57FD E5            [11]  505 	push	hl
   57FE CD 4C 66      [17]  506 	call	_cpct_getScreenPtr
   5801 C1            [10]  507 	pop	bc
                            508 ;src/gui/gui.c:76: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   5802 EB            [ 4]  509 	ex	de,hl
   5803 C5            [11]  510 	push	bc
   5804 21 11 0A      [10]  511 	ld	hl,#0x0A11
   5807 E5            [11]  512 	push	hl
   5808 3E FF         [ 7]  513 	ld	a,#0xFF
   580A F5            [11]  514 	push	af
   580B 33            [ 6]  515 	inc	sp
   580C D5            [11]  516 	push	de
   580D CD 93 65      [17]  517 	call	_cpct_drawSolidBox
   5810 F1            [10]  518 	pop	af
   5811 F1            [10]  519 	pop	af
   5812 33            [ 6]  520 	inc	sp
   5813 C1            [10]  521 	pop	bc
                            522 ;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   5814 3E CA         [ 7]  523 	ld	a,#0xCA
   5816 91            [ 4]  524 	sub	a, c
   5817 57            [ 4]  525 	ld	d,a
   5818 3E 00         [ 7]  526 	ld	a,#0x00
   581A 98            [ 4]  527 	sbc	a, b
   581B 5F            [ 4]  528 	ld	e,a
   581C 6A            [ 4]  529 	ld	l, d
   581D 63            [ 4]  530 	ld	h, e
   581E CB 7B         [ 8]  531 	bit	7, e
   5820 28 03         [12]  532 	jr	Z,00104$
   5822 6A            [ 4]  533 	ld	l, d
   5823 63            [ 4]  534 	ld	h, e
   5824 23            [ 6]  535 	inc	hl
   5825                     536 00104$:
   5825 CB 2C         [ 8]  537 	sra	h
   5827 CB 1D         [ 8]  538 	rr	l
   5829 7D            [ 4]  539 	ld	a,l
   582A DD 86 FF      [19]  540 	add	a, -1 (ix)
   582D 4F            [ 4]  541 	ld	c,a
   582E DD 6E 07      [19]  542 	ld	l,7 (ix)
   5831 26 00         [ 7]  543 	ld	h,#0x00
   5833 29            [11]  544 	add	hl, hl
   5834 EB            [ 4]  545 	ex	de,hl
   5835 DD 6E 04      [19]  546 	ld	l,4 (ix)
   5838 DD 66 05      [19]  547 	ld	h,5 (ix)
   583B 19            [11]  548 	add	hl,de
   583C E5            [11]  549 	push	hl
   583D 5E            [ 7]  550 	ld	e,(hl)
   583E 23            [ 6]  551 	inc	hl
   583F 56            [ 7]  552 	ld	d,(hl)
   5840 C5            [11]  553 	push	bc
   5841 D5            [11]  554 	push	de
   5842 CD 3F 65      [17]  555 	call	_strlen
   5845 F1            [10]  556 	pop	af
   5846 EB            [ 4]  557 	ex	de,hl
   5847 C1            [10]  558 	pop	bc
   5848 E1            [10]  559 	pop	hl
   5849 3E 52         [ 7]  560 	ld	a,#0x52
   584B 93            [ 4]  561 	sub	a, e
   584C 5F            [ 4]  562 	ld	e,a
   584D 3E 00         [ 7]  563 	ld	a,#0x00
   584F 9A            [ 4]  564 	sbc	a, d
   5850 57            [ 4]  565 	ld	d,a
   5851 CB 3A         [ 8]  566 	srl	d
   5853 CB 1B         [ 8]  567 	rr	e
   5855 E5            [11]  568 	push	hl
   5856 51            [ 4]  569 	ld	d, c
   5857 D5            [11]  570 	push	de
   5858 01 00 C0      [10]  571 	ld	bc,#0xC000
   585B C5            [11]  572 	push	bc
   585C CD 4C 66      [17]  573 	call	_cpct_getScreenPtr
   585F 4D            [ 4]  574 	ld	c,l
   5860 44            [ 4]  575 	ld	b,h
   5861 E1            [10]  576 	pop	hl
                            577 ;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   5862 5E            [ 7]  578 	ld	e,(hl)
   5863 23            [ 6]  579 	inc	hl
   5864 56            [ 7]  580 	ld	d,(hl)
   5865 AF            [ 4]  581 	xor	a, a
   5866 F5            [11]  582 	push	af
   5867 33            [ 6]  583 	inc	sp
   5868 C5            [11]  584 	push	bc
   5869 D5            [11]  585 	push	de
   586A CD 21 63      [17]  586 	call	_cpct_drawStringM2
   586D F1            [10]  587 	pop	af
   586E F1            [10]  588 	pop	af
   586F 33            [ 6]  589 	inc	sp
   5870 33            [ 6]  590 	inc	sp
   5871 DD E1         [14]  591 	pop	ix
   5873 C9            [10]  592 	ret
                            593 ;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            594 ;	---------------------------------
                            595 ; Function drawMenuEntry
                            596 ; ---------------------------------
   5874                     597 _drawMenuEntry::
   5874 DD E5         [15]  598 	push	ix
   5876 DD 21 00 00   [14]  599 	ld	ix,#0
   587A DD 39         [15]  600 	add	ix,sp
   587C 21 FA FF      [10]  601 	ld	hl,#-6
   587F 39            [11]  602 	add	hl,sp
   5880 F9            [ 6]  603 	ld	sp,hl
                            604 ;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5881 DD 4E 06      [19]  605 	ld	c,6 (ix)
   5884 06 00         [ 7]  606 	ld	b,#0x00
   5886 69            [ 4]  607 	ld	l, c
   5887 60            [ 4]  608 	ld	h, b
   5888 29            [11]  609 	add	hl, hl
   5889 29            [11]  610 	add	hl, hl
   588A 09            [11]  611 	add	hl, bc
   588B 29            [11]  612 	add	hl, hl
   588C 4D            [ 4]  613 	ld	c,l
   588D 44            [ 4]  614 	ld	b,h
   588E 3E C9         [ 7]  615 	ld	a,#0xC9
   5890 91            [ 4]  616 	sub	a, c
   5891 57            [ 4]  617 	ld	d,a
   5892 3E 00         [ 7]  618 	ld	a,#0x00
   5894 98            [ 4]  619 	sbc	a, b
   5895 5F            [ 4]  620 	ld	e,a
   5896 6A            [ 4]  621 	ld	l, d
   5897 63            [ 4]  622 	ld	h, e
   5898 CB 7B         [ 8]  623 	bit	7, e
   589A 28 03         [12]  624 	jr	Z,00114$
   589C 6A            [ 4]  625 	ld	l, d
   589D 63            [ 4]  626 	ld	h, e
   589E 23            [ 6]  627 	inc	hl
   589F                     628 00114$:
   589F CB 2C         [ 8]  629 	sra	h
   58A1 CB 1D         [ 8]  630 	rr	l
   58A3 55            [ 4]  631 	ld	d,l
   58A4 DD 7E 07      [19]  632 	ld	a,7 (ix)
   58A7 5F            [ 4]  633 	ld	e,a
   58A8 87            [ 4]  634 	add	a, a
   58A9 87            [ 4]  635 	add	a, a
   58AA 83            [ 4]  636 	add	a, e
   58AB 87            [ 4]  637 	add	a, a
   58AC 82            [ 4]  638 	add	a,d
   58AD C5            [11]  639 	push	bc
   58AE 57            [ 4]  640 	ld	d,a
   58AF 1E 20         [ 7]  641 	ld	e,#0x20
   58B1 D5            [11]  642 	push	de
   58B2 21 00 C0      [10]  643 	ld	hl,#0xC000
   58B5 E5            [11]  644 	push	hl
   58B6 CD 4C 66      [17]  645 	call	_cpct_getScreenPtr
   58B9 C1            [10]  646 	pop	bc
                            647 ;src/gui/gui.c:91: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   58BA EB            [ 4]  648 	ex	de,hl
   58BB C5            [11]  649 	push	bc
   58BC 21 11 0A      [10]  650 	ld	hl,#0x0A11
   58BF E5            [11]  651 	push	hl
   58C0 AF            [ 4]  652 	xor	a, a
   58C1 F5            [11]  653 	push	af
   58C2 33            [ 6]  654 	inc	sp
   58C3 D5            [11]  655 	push	de
   58C4 CD 93 65      [17]  656 	call	_cpct_drawSolidBox
   58C7 F1            [10]  657 	pop	af
   58C8 F1            [10]  658 	pop	af
   58C9 33            [ 6]  659 	inc	sp
   58CA C1            [10]  660 	pop	bc
                            661 ;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
   58CB 21 B0 36      [10]  662 	ld	hl,#0x36B0
   58CE                     663 00108$:
   58CE 2B            [ 6]  664 	dec	hl
   58CF 7C            [ 4]  665 	ld	a,h
   58D0 B5            [ 4]  666 	or	a,l
   58D1 20 FB         [12]  667 	jr	NZ,00108$
                            668 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   58D3 3E CA         [ 7]  669 	ld	a,#0xCA
   58D5 91            [ 4]  670 	sub	a, c
   58D6 DD 77 FD      [19]  671 	ld	-3 (ix),a
   58D9 3E 00         [ 7]  672 	ld	a,#0x00
   58DB 98            [ 4]  673 	sbc	a, b
   58DC DD 77 FE      [19]  674 	ld	-2 (ix), a
   58DF 07            [ 4]  675 	rlca
   58E0 E6 01         [ 7]  676 	and	a,#0x01
   58E2 5F            [ 4]  677 	ld	e,a
   58E3 21 00 00      [10]  678 	ld	hl,#0x0000
   58E6 E3            [19]  679 	ex	(sp), hl
   58E7                     680 00110$:
   58E7 DD 66 06      [19]  681 	ld	h,6 (ix)
   58EA 2E 00         [ 7]  682 	ld	l,#0x00
   58EC DD 7E FA      [19]  683 	ld	a,-6 (ix)
   58EF 94            [ 4]  684 	sub	a, h
   58F0 DD 7E FB      [19]  685 	ld	a,-5 (ix)
   58F3 9D            [ 4]  686 	sbc	a, l
   58F4 E2 F9 58      [10]  687 	jp	PO, 00146$
   58F7 EE 80         [ 7]  688 	xor	a, #0x80
   58F9                     689 00146$:
   58F9 F2 9F 59      [10]  690 	jp	P,00112$
                            691 ;src/gui/gui.c:99: if(i==iSelect)
   58FC DD 56 07      [19]  692 	ld	d,7 (ix)
   58FF 06 00         [ 7]  693 	ld	b,#0x00
   5901 DD 7E FA      [19]  694 	ld	a,-6 (ix)
   5904 92            [ 4]  695 	sub	a, d
   5905 20 0A         [12]  696 	jr	NZ,00103$
   5907 DD 7E FB      [19]  697 	ld	a,-5 (ix)
   590A 90            [ 4]  698 	sub	a, b
   590B 20 04         [12]  699 	jr	NZ,00103$
                            700 ;src/gui/gui.c:100: penSelected = 1;
   590D 0E 01         [ 7]  701 	ld	c,#0x01
   590F 18 02         [12]  702 	jr	00104$
   5911                     703 00103$:
                            704 ;src/gui/gui.c:102: penSelected = 0;
   5911 0E 00         [ 7]  705 	ld	c,#0x00
   5913                     706 00104$:
                            707 ;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   5913 DD 6E FD      [19]  708 	ld	l,-3 (ix)
   5916 DD 66 FE      [19]  709 	ld	h,-2 (ix)
   5919 7B            [ 4]  710 	ld	a,e
   591A B7            [ 4]  711 	or	a, a
   591B 28 07         [12]  712 	jr	Z,00115$
   591D DD 6E FD      [19]  713 	ld	l,-3 (ix)
   5920 DD 66 FE      [19]  714 	ld	h,-2 (ix)
   5923 23            [ 6]  715 	inc	hl
   5924                     716 00115$:
   5924 CB 2C         [ 8]  717 	sra	h
   5926 CB 1D         [ 8]  718 	rr	l
   5928 45            [ 4]  719 	ld	b,l
   5929 DD 6E FA      [19]  720 	ld	l,-6 (ix)
   592C D5            [11]  721 	push	de
   592D 5D            [ 4]  722 	ld	e,l
   592E 29            [11]  723 	add	hl, hl
   592F 29            [11]  724 	add	hl, hl
   5930 19            [11]  725 	add	hl, de
   5931 29            [11]  726 	add	hl, hl
   5932 D1            [10]  727 	pop	de
   5933 78            [ 4]  728 	ld	a,b
   5934 85            [ 4]  729 	add	a, l
   5935 DD 77 FF      [19]  730 	ld	-1 (ix),a
   5938 DD 56 FA      [19]  731 	ld	d,-6 (ix)
   593B DD 46 FB      [19]  732 	ld	b,-5 (ix)
   593E CB 22         [ 8]  733 	sla	d
   5940 CB 10         [ 8]  734 	rl	b
   5942 DD 7E 04      [19]  735 	ld	a,4 (ix)
   5945 82            [ 4]  736 	add	a, d
   5946 57            [ 4]  737 	ld	d,a
   5947 DD 7E 05      [19]  738 	ld	a,5 (ix)
   594A 88            [ 4]  739 	adc	a, b
   594B 47            [ 4]  740 	ld	b,a
   594C 6A            [ 4]  741 	ld	l, d
   594D 60            [ 4]  742 	ld	h, b
   594E 7E            [ 7]  743 	ld	a, (hl)
   594F 23            [ 6]  744 	inc	hl
   5950 66            [ 7]  745 	ld	h,(hl)
   5951 6F            [ 4]  746 	ld	l,a
   5952 C5            [11]  747 	push	bc
   5953 D5            [11]  748 	push	de
   5954 E5            [11]  749 	push	hl
   5955 CD 3F 65      [17]  750 	call	_strlen
   5958 F1            [10]  751 	pop	af
   5959 D1            [10]  752 	pop	de
   595A C1            [10]  753 	pop	bc
   595B 3E 52         [ 7]  754 	ld	a,#0x52
   595D 95            [ 4]  755 	sub	a, l
   595E 6F            [ 4]  756 	ld	l,a
   595F 3E 00         [ 7]  757 	ld	a,#0x00
   5961 9C            [ 4]  758 	sbc	a, h
   5962 67            [ 4]  759 	ld	h,a
   5963 CB 3C         [ 8]  760 	srl	h
   5965 CB 1D         [ 8]  761 	rr	l
   5967 DD 75 FC      [19]  762 	ld	-4 (ix),l
   596A C5            [11]  763 	push	bc
   596B D5            [11]  764 	push	de
   596C DD 66 FF      [19]  765 	ld	h,-1 (ix)
   596F DD 6E FC      [19]  766 	ld	l,-4 (ix)
   5972 E5            [11]  767 	push	hl
   5973 21 00 C0      [10]  768 	ld	hl,#0xC000
   5976 E5            [11]  769 	push	hl
   5977 CD 4C 66      [17]  770 	call	_cpct_getScreenPtr
   597A D1            [10]  771 	pop	de
   597B C1            [10]  772 	pop	bc
   597C E5            [11]  773 	push	hl
   597D FD E1         [14]  774 	pop	iy
                            775 ;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
   597F 6A            [ 4]  776 	ld	l, d
   5980 60            [ 4]  777 	ld	h, b
   5981 7E            [ 7]  778 	ld	a, (hl)
   5982 23            [ 6]  779 	inc	hl
   5983 66            [ 7]  780 	ld	h,(hl)
   5984 6F            [ 4]  781 	ld	l,a
   5985 D5            [11]  782 	push	de
   5986 79            [ 4]  783 	ld	a,c
   5987 F5            [11]  784 	push	af
   5988 33            [ 6]  785 	inc	sp
   5989 FD E5         [15]  786 	push	iy
   598B E5            [11]  787 	push	hl
   598C CD 21 63      [17]  788 	call	_cpct_drawStringM2
   598F F1            [10]  789 	pop	af
   5990 F1            [10]  790 	pop	af
   5991 33            [ 6]  791 	inc	sp
   5992 D1            [10]  792 	pop	de
                            793 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5993 DD 34 FA      [23]  794 	inc	-6 (ix)
   5996 C2 E7 58      [10]  795 	jp	NZ,00110$
   5999 DD 34 FB      [23]  796 	inc	-5 (ix)
   599C C3 E7 58      [10]  797 	jp	00110$
   599F                     798 00112$:
   599F DD F9         [10]  799 	ld	sp, ix
   59A1 DD E1         [14]  800 	pop	ix
   59A3 C9            [10]  801 	ret
                            802 ;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
                            803 ;	---------------------------------
                            804 ; Function drawMenu
                            805 ; ---------------------------------
   59A4                     806 _drawMenu::
   59A4 DD E5         [15]  807 	push	ix
   59A6 DD 21 00 00   [14]  808 	ld	ix,#0
   59AA DD 39         [15]  809 	add	ix,sp
   59AC F5            [11]  810 	push	af
                            811 ;src/gui/gui.c:112: u8 iSelect=0;
   59AD 06 00         [ 7]  812 	ld	b,#0x00
                            813 ;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
   59AF C5            [11]  814 	push	bc
   59B0 21 00 40      [10]  815 	ld	hl,#0x4000
   59B3 E5            [11]  816 	push	hl
   59B4 3E FF         [ 7]  817 	ld	a,#0xFF
   59B6 F5            [11]  818 	push	af
   59B7 33            [ 6]  819 	inc	sp
   59B8 26 C0         [ 7]  820 	ld	h, #0xC0
   59BA E5            [11]  821 	push	hl
   59BB CD 18 65      [17]  822 	call	_cpct_memset
   59BE C1            [10]  823 	pop	bc
                            824 ;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
   59BF DD 5E 06      [19]  825 	ld	e,6 (ix)
   59C2 16 00         [ 7]  826 	ld	d,#0x00
   59C4 6B            [ 4]  827 	ld	l, e
   59C5 62            [ 4]  828 	ld	h, d
   59C6 29            [11]  829 	add	hl, hl
   59C7 19            [11]  830 	add	hl, de
   59C8 29            [11]  831 	add	hl, hl
   59C9 29            [11]  832 	add	hl, hl
   59CA C5            [11]  833 	push	bc
   59CB E5            [11]  834 	push	hl
   59CC 21 1E 00      [10]  835 	ld	hl,#0x001E
   59CF E5            [11]  836 	push	hl
   59D0 CD DA 56      [17]  837 	call	_drawBoxM2
   59D3 F1            [10]  838 	pop	af
   59D4 F1            [10]  839 	pop	af
   59D5 AF            [ 4]  840 	xor	a, a
   59D6 F5            [11]  841 	push	af
   59D7 33            [ 6]  842 	inc	sp
   59D8 DD 7E 06      [19]  843 	ld	a,6 (ix)
   59DB F5            [11]  844 	push	af
   59DC 33            [ 6]  845 	inc	sp
   59DD DD 6E 04      [19]  846 	ld	l,4 (ix)
   59E0 DD 66 05      [19]  847 	ld	h,5 (ix)
   59E3 E5            [11]  848 	push	hl
   59E4 CD 74 58      [17]  849 	call	_drawMenuEntry
   59E7 F1            [10]  850 	pop	af
   59E8 F1            [10]  851 	pop	af
   59E9 C1            [10]  852 	pop	bc
                            853 ;src/gui/gui.c:120: do{
   59EA DD 4E 06      [19]  854 	ld	c,6 (ix)
   59ED 0D            [ 4]  855 	dec	c
   59EE                     856 00111$:
                            857 ;src/gui/gui.c:121: cpct_scanKeyboard(); 
   59EE C5            [11]  858 	push	bc
   59EF CD 6C 66      [17]  859 	call	_cpct_scanKeyboard
   59F2 21 00 01      [10]  860 	ld	hl,#0x0100
   59F5 CD EA 62      [17]  861 	call	_cpct_isKeyPressed
   59F8 7D            [ 4]  862 	ld	a,l
   59F9 C1            [10]  863 	pop	bc
   59FA B7            [ 4]  864 	or	a, a
   59FB 28 32         [12]  865 	jr	Z,00105$
                            866 ;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
   59FD C5            [11]  867 	push	bc
   59FE C5            [11]  868 	push	bc
   59FF 33            [ 6]  869 	inc	sp
   5A00 DD 7E 06      [19]  870 	ld	a,6 (ix)
   5A03 F5            [11]  871 	push	af
   5A04 33            [ 6]  872 	inc	sp
   5A05 DD 6E 04      [19]  873 	ld	l,4 (ix)
   5A08 DD 66 05      [19]  874 	ld	h,5 (ix)
   5A0B E5            [11]  875 	push	hl
   5A0C CD BA 57      [17]  876 	call	_EraseMenuEntry
   5A0F F1            [10]  877 	pop	af
   5A10 F1            [10]  878 	pop	af
   5A11 C1            [10]  879 	pop	bc
                            880 ;src/gui/gui.c:127: if(iSelect ==0)
   5A12 78            [ 4]  881 	ld	a,b
   5A13 B7            [ 4]  882 	or	a, a
   5A14 20 03         [12]  883 	jr	NZ,00102$
                            884 ;src/gui/gui.c:128: iSelect = nbEntry-1;
   5A16 41            [ 4]  885 	ld	b,c
   5A17 18 01         [12]  886 	jr	00103$
   5A19                     887 00102$:
                            888 ;src/gui/gui.c:130: iSelect--;
   5A19 05            [ 4]  889 	dec	b
   5A1A                     890 00103$:
                            891 ;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
   5A1A C5            [11]  892 	push	bc
   5A1B C5            [11]  893 	push	bc
   5A1C 33            [ 6]  894 	inc	sp
   5A1D DD 7E 06      [19]  895 	ld	a,6 (ix)
   5A20 F5            [11]  896 	push	af
   5A21 33            [ 6]  897 	inc	sp
   5A22 DD 6E 04      [19]  898 	ld	l,4 (ix)
   5A25 DD 66 05      [19]  899 	ld	h,5 (ix)
   5A28 E5            [11]  900 	push	hl
   5A29 CD 74 58      [17]  901 	call	_drawMenuEntry
   5A2C F1            [10]  902 	pop	af
   5A2D F1            [10]  903 	pop	af
   5A2E C1            [10]  904 	pop	bc
   5A2F                     905 00105$:
                            906 ;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
   5A2F C5            [11]  907 	push	bc
   5A30 21 00 04      [10]  908 	ld	hl,#0x0400
   5A33 CD EA 62      [17]  909 	call	_cpct_isKeyPressed
   5A36 5D            [ 4]  910 	ld	e,l
   5A37 C1            [10]  911 	pop	bc
   5A38 7B            [ 4]  912 	ld	a,e
   5A39 B7            [ 4]  913 	or	a, a
   5A3A 28 48         [12]  914 	jr	Z,00112$
                            915 ;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
   5A3C C5            [11]  916 	push	bc
   5A3D C5            [11]  917 	push	bc
   5A3E 33            [ 6]  918 	inc	sp
   5A3F DD 7E 06      [19]  919 	ld	a,6 (ix)
   5A42 F5            [11]  920 	push	af
   5A43 33            [ 6]  921 	inc	sp
   5A44 DD 6E 04      [19]  922 	ld	l,4 (ix)
   5A47 DD 66 05      [19]  923 	ld	h,5 (ix)
   5A4A E5            [11]  924 	push	hl
   5A4B CD BA 57      [17]  925 	call	_EraseMenuEntry
   5A4E F1            [10]  926 	pop	af
   5A4F F1            [10]  927 	pop	af
   5A50 C1            [10]  928 	pop	bc
                            929 ;src/gui/gui.c:139: if(iSelect == nbEntry-1)
   5A51 DD 5E 06      [19]  930 	ld	e,6 (ix)
   5A54 16 00         [ 7]  931 	ld	d,#0x00
   5A56 1B            [ 6]  932 	dec	de
   5A57 DD 70 FE      [19]  933 	ld	-2 (ix),b
   5A5A DD 36 FF 00   [19]  934 	ld	-1 (ix),#0x00
   5A5E 7B            [ 4]  935 	ld	a,e
   5A5F DD 96 FE      [19]  936 	sub	a, -2 (ix)
   5A62 20 0A         [12]  937 	jr	NZ,00107$
   5A64 7A            [ 4]  938 	ld	a,d
   5A65 DD 96 FF      [19]  939 	sub	a, -1 (ix)
   5A68 20 04         [12]  940 	jr	NZ,00107$
                            941 ;src/gui/gui.c:140: iSelect = 0;
   5A6A 06 00         [ 7]  942 	ld	b,#0x00
   5A6C 18 01         [12]  943 	jr	00108$
   5A6E                     944 00107$:
                            945 ;src/gui/gui.c:142: iSelect++;
   5A6E 04            [ 4]  946 	inc	b
   5A6F                     947 00108$:
                            948 ;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
   5A6F C5            [11]  949 	push	bc
   5A70 C5            [11]  950 	push	bc
   5A71 33            [ 6]  951 	inc	sp
   5A72 DD 7E 06      [19]  952 	ld	a,6 (ix)
   5A75 F5            [11]  953 	push	af
   5A76 33            [ 6]  954 	inc	sp
   5A77 DD 6E 04      [19]  955 	ld	l,4 (ix)
   5A7A DD 66 05      [19]  956 	ld	h,5 (ix)
   5A7D E5            [11]  957 	push	hl
   5A7E CD 74 58      [17]  958 	call	_drawMenuEntry
   5A81 F1            [10]  959 	pop	af
   5A82 F1            [10]  960 	pop	af
   5A83 C1            [10]  961 	pop	bc
   5A84                     962 00112$:
                            963 ;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
   5A84 C5            [11]  964 	push	bc
   5A85 21 02 04      [10]  965 	ld	hl,#0x0402
   5A88 CD EA 62      [17]  966 	call	_cpct_isKeyPressed
   5A8B 7D            [ 4]  967 	ld	a,l
   5A8C C1            [10]  968 	pop	bc
   5A8D B7            [ 4]  969 	or	a, a
   5A8E CA EE 59      [10]  970 	jp	Z,00111$
                            971 ;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
   5A91 21 B0 36      [10]  972 	ld	hl,#0x36B0
   5A94                     973 00117$:
   5A94 EB            [ 4]  974 	ex	de,hl
   5A95 1B            [ 6]  975 	dec	de
   5A96 6B            [ 4]  976 	ld	l, e
   5A97 7A            [ 4]  977 	ld	a,d
   5A98 67            [ 4]  978 	ld	h,a
   5A99 B3            [ 4]  979 	or	a,e
   5A9A 20 F8         [12]  980 	jr	NZ,00117$
                            981 ;src/gui/gui.c:152: return iSelect;
   5A9C 68            [ 4]  982 	ld	l,b
   5A9D DD F9         [10]  983 	ld	sp, ix
   5A9F DD E1         [14]  984 	pop	ix
   5AA1 C9            [10]  985 	ret
                            986 ;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
                            987 ;	---------------------------------
                            988 ; Function drawWindow
                            989 ; ---------------------------------
   5AA2                     990 _drawWindow::
   5AA2 DD E5         [15]  991 	push	ix
   5AA4 DD 21 00 00   [14]  992 	ld	ix,#0
   5AA8 DD 39         [15]  993 	add	ix,sp
   5AAA 21 F5 FF      [10]  994 	ld	hl,#-11
   5AAD 39            [11]  995 	add	hl,sp
   5AAE F9            [ 6]  996 	ld	sp,hl
                            997 ;src/gui/gui.c:166: u8 valueReturn=0;
   5AAF DD 36 F5 00   [19]  998 	ld	-11 (ix),#0x00
                            999 ;src/gui/gui.c:169: if(button == 0)
   5AB3 DD 7E 07      [19] 1000 	ld	a,7 (ix)
   5AB6 B7            [ 4] 1001 	or	a, a
   5AB7 20 05         [12] 1002 	jr	NZ,00102$
                           1003 ;src/gui/gui.c:170: buttonTxt = "<OK>";
   5AB9 11 29 5C      [10] 1004 	ld	de,#___str_0
   5ABC 18 03         [12] 1005 	jr	00103$
   5ABE                    1006 00102$:
                           1007 ;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
   5ABE 11 2E 5C      [10] 1008 	ld	de,#___str_1+0
   5AC1                    1009 00103$:
                           1010 ;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
   5AC1 DD 4E 06      [19] 1011 	ld	c,6 (ix)
   5AC4 06 00         [ 7] 1012 	ld	b,#0x00
   5AC6 03            [ 6] 1013 	inc	bc
   5AC7 03            [ 6] 1014 	inc	bc
   5AC8 69            [ 4] 1015 	ld	l, c
   5AC9 60            [ 4] 1016 	ld	h, b
   5ACA 29            [11] 1017 	add	hl, hl
   5ACB 09            [11] 1018 	add	hl, bc
   5ACC 29            [11] 1019 	add	hl, hl
   5ACD 29            [11] 1020 	add	hl, hl
   5ACE C5            [11] 1021 	push	bc
   5ACF D5            [11] 1022 	push	de
   5AD0 E5            [11] 1023 	push	hl
   5AD1 21 32 00      [10] 1024 	ld	hl,#0x0032
   5AD4 E5            [11] 1025 	push	hl
   5AD5 CD DA 56      [17] 1026 	call	_drawBoxM2
   5AD8 F1            [10] 1027 	pop	af
   5AD9 F1            [10] 1028 	pop	af
   5ADA D1            [10] 1029 	pop	de
   5ADB C1            [10] 1030 	pop	bc
                           1031 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5ADC 69            [ 4] 1032 	ld	l, c
   5ADD 60            [ 4] 1033 	ld	h, b
   5ADE 29            [11] 1034 	add	hl, hl
   5ADF 29            [11] 1035 	add	hl, hl
   5AE0 09            [11] 1036 	add	hl, bc
   5AE1 29            [11] 1037 	add	hl, hl
   5AE2 3E CA         [ 7] 1038 	ld	a,#0xCA
   5AE4 95            [ 4] 1039 	sub	a, l
   5AE5 DD 77 FD      [19] 1040 	ld	-3 (ix),a
   5AE8 3E 00         [ 7] 1041 	ld	a,#0x00
   5AEA 9C            [ 4] 1042 	sbc	a, h
   5AEB DD 77 FE      [19] 1043 	ld	-2 (ix), a
   5AEE 07            [ 4] 1044 	rlca
   5AEF E6 01         [ 7] 1045 	and	a,#0x01
   5AF1 DD 77 FA      [19] 1046 	ld	-6 (ix),a
   5AF4 DD 36 F6 00   [19] 1047 	ld	-10 (ix),#0x00
   5AF8 DD 36 F9 00   [19] 1048 	ld	-7 (ix),#0x00
   5AFC                    1049 00114$:
                           1050 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   5AFC DD 7E FD      [19] 1051 	ld	a,-3 (ix)
   5AFF C6 01         [ 7] 1052 	add	a, #0x01
   5B01 DD 77 F7      [19] 1053 	ld	-9 (ix),a
   5B04 DD 7E FE      [19] 1054 	ld	a,-2 (ix)
   5B07 CE 00         [ 7] 1055 	adc	a, #0x00
   5B09 DD 77 F8      [19] 1056 	ld	-8 (ix),a
                           1057 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5B0C DD 7E F6      [19] 1058 	ld	a,-10 (ix)
   5B0F DD 96 06      [19] 1059 	sub	a, 6 (ix)
   5B12 D2 9C 5B      [10] 1060 	jp	NC,00104$
                           1061 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   5B15 DD 6E FD      [19] 1062 	ld	l,-3 (ix)
   5B18 DD 66 FE      [19] 1063 	ld	h,-2 (ix)
   5B1B DD 7E FA      [19] 1064 	ld	a,-6 (ix)
   5B1E B7            [ 4] 1065 	or	a, a
   5B1F 28 04         [12] 1066 	jr	Z,00118$
   5B21 C1            [10] 1067 	pop	bc
   5B22 E1            [10] 1068 	pop	hl
   5B23 E5            [11] 1069 	push	hl
   5B24 C5            [11] 1070 	push	bc
   5B25                    1071 00118$:
   5B25 CB 2C         [ 8] 1072 	sra	h
   5B27 CB 1D         [ 8] 1073 	rr	l
   5B29 DD 66 F9      [19] 1074 	ld	h,-7 (ix)
   5B2C 7D            [ 4] 1075 	ld	a,l
   5B2D 84            [ 4] 1076 	add	a, h
   5B2E DD 77 FF      [19] 1077 	ld	-1 (ix),a
   5B31 DD 6E F6      [19] 1078 	ld	l,-10 (ix)
   5B34 26 00         [ 7] 1079 	ld	h,#0x00
   5B36 29            [11] 1080 	add	hl, hl
   5B37 45            [ 4] 1081 	ld	b,l
   5B38 4C            [ 4] 1082 	ld	c,h
   5B39 DD 7E 04      [19] 1083 	ld	a,4 (ix)
   5B3C 80            [ 4] 1084 	add	a, b
   5B3D DD 77 FB      [19] 1085 	ld	-5 (ix),a
   5B40 DD 7E 05      [19] 1086 	ld	a,5 (ix)
   5B43 89            [ 4] 1087 	adc	a, c
   5B44 DD 77 FC      [19] 1088 	ld	-4 (ix),a
   5B47 DD 6E FB      [19] 1089 	ld	l,-5 (ix)
   5B4A DD 66 FC      [19] 1090 	ld	h,-4 (ix)
   5B4D 4E            [ 7] 1091 	ld	c,(hl)
   5B4E 23            [ 6] 1092 	inc	hl
   5B4F 46            [ 7] 1093 	ld	b,(hl)
   5B50 D5            [11] 1094 	push	de
   5B51 C5            [11] 1095 	push	bc
   5B52 CD 3F 65      [17] 1096 	call	_strlen
   5B55 F1            [10] 1097 	pop	af
   5B56 D1            [10] 1098 	pop	de
   5B57 3E 52         [ 7] 1099 	ld	a,#0x52
   5B59 95            [ 4] 1100 	sub	a, l
   5B5A 6F            [ 4] 1101 	ld	l,a
   5B5B 3E 00         [ 7] 1102 	ld	a,#0x00
   5B5D 9C            [ 4] 1103 	sbc	a, h
   5B5E 67            [ 4] 1104 	ld	h,a
   5B5F CB 3C         [ 8] 1105 	srl	h
   5B61 CB 1D         [ 8] 1106 	rr	l
   5B63 45            [ 4] 1107 	ld	b,l
   5B64 D5            [11] 1108 	push	de
   5B65 DD 7E FF      [19] 1109 	ld	a,-1 (ix)
   5B68 F5            [11] 1110 	push	af
   5B69 33            [ 6] 1111 	inc	sp
   5B6A C5            [11] 1112 	push	bc
   5B6B 33            [ 6] 1113 	inc	sp
   5B6C 21 00 C0      [10] 1114 	ld	hl,#0xC000
   5B6F E5            [11] 1115 	push	hl
   5B70 CD 4C 66      [17] 1116 	call	_cpct_getScreenPtr
   5B73 D1            [10] 1117 	pop	de
   5B74 E5            [11] 1118 	push	hl
   5B75 FD E1         [14] 1119 	pop	iy
                           1120 ;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
   5B77 DD 6E FB      [19] 1121 	ld	l,-5 (ix)
   5B7A DD 66 FC      [19] 1122 	ld	h,-4 (ix)
   5B7D 4E            [ 7] 1123 	ld	c,(hl)
   5B7E 23            [ 6] 1124 	inc	hl
   5B7F 46            [ 7] 1125 	ld	b,(hl)
   5B80 D5            [11] 1126 	push	de
   5B81 AF            [ 4] 1127 	xor	a, a
   5B82 F5            [11] 1128 	push	af
   5B83 33            [ 6] 1129 	inc	sp
   5B84 FD E5         [15] 1130 	push	iy
   5B86 C5            [11] 1131 	push	bc
   5B87 CD 21 63      [17] 1132 	call	_cpct_drawStringM2
   5B8A F1            [10] 1133 	pop	af
   5B8B F1            [10] 1134 	pop	af
   5B8C 33            [ 6] 1135 	inc	sp
   5B8D D1            [10] 1136 	pop	de
                           1137 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5B8E DD 7E F9      [19] 1138 	ld	a,-7 (ix)
   5B91 C6 0A         [ 7] 1139 	add	a, #0x0A
   5B93 DD 77 F9      [19] 1140 	ld	-7 (ix),a
   5B96 DD 34 F6      [23] 1141 	inc	-10 (ix)
   5B99 C3 FC 5A      [10] 1142 	jp	00114$
   5B9C                    1143 00104$:
                           1144 ;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   5B9C DD 46 FD      [19] 1145 	ld	b,-3 (ix)
   5B9F DD 66 FE      [19] 1146 	ld	h,-2 (ix)
   5BA2 DD 7E FA      [19] 1147 	ld	a,-6 (ix)
   5BA5 B7            [ 4] 1148 	or	a, a
   5BA6 28 06         [12] 1149 	jr	Z,00119$
   5BA8 DD 46 F7      [19] 1150 	ld	b,-9 (ix)
   5BAB DD 66 F8      [19] 1151 	ld	h,-8 (ix)
   5BAE                    1152 00119$:
   5BAE CB 2C         [ 8] 1153 	sra	h
   5BB0 CB 18         [ 8] 1154 	rr	b
   5BB2 DD 4E 06      [19] 1155 	ld	c,6 (ix)
   5BB5 0C            [ 4] 1156 	inc	c
   5BB6 79            [ 4] 1157 	ld	a,c
   5BB7 87            [ 4] 1158 	add	a, a
   5BB8 87            [ 4] 1159 	add	a, a
   5BB9 81            [ 4] 1160 	add	a, c
   5BBA 87            [ 4] 1161 	add	a, a
   5BBB 67            [ 4] 1162 	ld	h, a
   5BBC 80            [ 4] 1163 	add	a,b
   5BBD 47            [ 4] 1164 	ld	b,a
   5BBE C5            [11] 1165 	push	bc
   5BBF D5            [11] 1166 	push	de
   5BC0 D5            [11] 1167 	push	de
   5BC1 CD 3F 65      [17] 1168 	call	_strlen
   5BC4 F1            [10] 1169 	pop	af
   5BC5 D1            [10] 1170 	pop	de
   5BC6 C1            [10] 1171 	pop	bc
   5BC7 3E 52         [ 7] 1172 	ld	a,#0x52
   5BC9 95            [ 4] 1173 	sub	a, l
   5BCA 6F            [ 4] 1174 	ld	l,a
   5BCB 3E 00         [ 7] 1175 	ld	a,#0x00
   5BCD 9C            [ 4] 1176 	sbc	a, h
   5BCE 67            [ 4] 1177 	ld	h,a
   5BCF CB 3C         [ 8] 1178 	srl	h
   5BD1 CB 1D         [ 8] 1179 	rr	l
   5BD3 7D            [ 4] 1180 	ld	a,l
   5BD4 D5            [11] 1181 	push	de
   5BD5 C5            [11] 1182 	push	bc
   5BD6 33            [ 6] 1183 	inc	sp
   5BD7 F5            [11] 1184 	push	af
   5BD8 33            [ 6] 1185 	inc	sp
   5BD9 21 00 C0      [10] 1186 	ld	hl,#0xC000
   5BDC E5            [11] 1187 	push	hl
   5BDD CD 4C 66      [17] 1188 	call	_cpct_getScreenPtr
   5BE0 D1            [10] 1189 	pop	de
                           1190 ;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
   5BE1 4D            [ 4] 1191 	ld	c, l
   5BE2 44            [ 4] 1192 	ld	b, h
   5BE3 AF            [ 4] 1193 	xor	a, a
   5BE4 F5            [11] 1194 	push	af
   5BE5 33            [ 6] 1195 	inc	sp
   5BE6 C5            [11] 1196 	push	bc
   5BE7 D5            [11] 1197 	push	de
   5BE8 CD 21 63      [17] 1198 	call	_cpct_drawStringM2
   5BEB F1            [10] 1199 	pop	af
   5BEC F1            [10] 1200 	pop	af
   5BED 33            [ 6] 1201 	inc	sp
                           1202 ;src/gui/gui.c:186: do{
   5BEE                    1203 00110$:
                           1204 ;src/gui/gui.c:187: cpct_scanKeyboard(); 
   5BEE CD 6C 66      [17] 1205 	call	_cpct_scanKeyboard
                           1206 ;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
   5BF1 21 02 04      [10] 1207 	ld	hl,#0x0402
   5BF4 CD EA 62      [17] 1208 	call	_cpct_isKeyPressed
   5BF7 7D            [ 4] 1209 	ld	a,l
   5BF8 B7            [ 4] 1210 	or	a, a
   5BF9 28 04         [12] 1211 	jr	Z,00106$
                           1212 ;src/gui/gui.c:190: valueReturn=1;
   5BFB DD 36 F5 01   [19] 1213 	ld	-11 (ix),#0x01
   5BFF                    1214 00106$:
                           1215 ;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
   5BFF 21 08 04      [10] 1216 	ld	hl,#0x0408
   5C02 CD EA 62      [17] 1217 	call	_cpct_isKeyPressed
   5C05 7D            [ 4] 1218 	ld	a,l
   5C06 B7            [ 4] 1219 	or	a, a
   5C07 28 04         [12] 1220 	jr	Z,00111$
                           1221 ;src/gui/gui.c:193: valueReturn=0;
   5C09 DD 36 F5 00   [19] 1222 	ld	-11 (ix),#0x00
   5C0D                    1223 00111$:
                           1224 ;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   5C0D 21 02 04      [10] 1225 	ld	hl,#0x0402
   5C10 CD EA 62      [17] 1226 	call	_cpct_isKeyPressed
   5C13 7D            [ 4] 1227 	ld	a,l
   5C14 B7            [ 4] 1228 	or	a, a
   5C15 20 0A         [12] 1229 	jr	NZ,00112$
   5C17 21 08 04      [10] 1230 	ld	hl,#0x0408
   5C1A CD EA 62      [17] 1231 	call	_cpct_isKeyPressed
   5C1D 7D            [ 4] 1232 	ld	a,l
   5C1E B7            [ 4] 1233 	or	a, a
   5C1F 28 CD         [12] 1234 	jr	Z,00110$
   5C21                    1235 00112$:
                           1236 ;src/gui/gui.c:197: return valueReturn;
   5C21 DD 6E F5      [19] 1237 	ld	l,-11 (ix)
   5C24 DD F9         [10] 1238 	ld	sp, ix
   5C26 DD E1         [14] 1239 	pop	ix
   5C28 C9            [10] 1240 	ret
   5C29                    1241 ___str_0:
   5C29 3C 4F 4B 3E        1242 	.ascii "<OK>"
   5C2D 00                 1243 	.db 0x00
   5C2E                    1244 ___str_1:
   5C2E 3C 4F 4B 3E 20 20  1245 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   5C3C 00                 1246 	.db 0x00
                           1247 	.area _CODE
                           1248 	.area _INITIALIZER
                           1249 	.area _CABS (ABS)
