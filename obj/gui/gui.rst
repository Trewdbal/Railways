                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 21:45:30 2016
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
   5601                      66 _putM0::
                             67 ;src/gui/gui.c:5: cpct_setVideoMode(0);
   5601 AF            [ 4]   68 	xor	a, a
   5602 F5            [11]   69 	push	af
   5603 33            [ 6]   70 	inc	sp
   5604 CD 46 6A      [17]   71 	call	_cpct_setVideoMode
   5607 33            [ 6]   72 	inc	sp
                             73 ;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
   5608 21 C7 5C      [10]   74 	ld	hl,#_paletteTrains
   560B 01 10 00      [10]   75 	ld	bc,#0x0010
   560E C5            [11]   76 	push	bc
   560F E5            [11]   77 	push	hl
   5610 CD 0D 68      [17]   78 	call	_cpct_setPalette
   5613 C9            [10]   79 	ret
                             80 ;src/gui/gui.c:10: void putM1(void)
                             81 ;	---------------------------------
                             82 ; Function putM1
                             83 ; ---------------------------------
   5614                      84 _putM1::
                             85 ;src/gui/gui.c:12: cpct_setVideoMode(1);
   5614 3E 01         [ 7]   86 	ld	a,#0x01
   5616 F5            [11]   87 	push	af
   5617 33            [ 6]   88 	inc	sp
   5618 CD 46 6A      [17]   89 	call	_cpct_setVideoMode
   561B 33            [ 6]   90 	inc	sp
                             91 ;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
   561C 21 D7 5C      [10]   92 	ld	hl,#_paletteMenusM1
   561F 01 04 00      [10]   93 	ld	bc,#0x0004
   5622 C5            [11]   94 	push	bc
   5623 E5            [11]   95 	push	hl
   5624 CD 0D 68      [17]   96 	call	_cpct_setPalette
   5627 C9            [10]   97 	ret
                             98 ;src/gui/gui.c:17: void putM2(void)
                             99 ;	---------------------------------
                            100 ; Function putM2
                            101 ; ---------------------------------
   5628                     102 _putM2::
                            103 ;src/gui/gui.c:19: cpct_setVideoMode(2);
   5628 3E 02         [ 7]  104 	ld	a,#0x02
   562A F5            [11]  105 	push	af
   562B 33            [ 6]  106 	inc	sp
   562C CD 46 6A      [17]  107 	call	_cpct_setVideoMode
   562F 33            [ 6]  108 	inc	sp
                            109 ;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
   5630 21 DB 5C      [10]  110 	ld	hl,#_paletteMenusM2
   5633 01 02 00      [10]  111 	ld	bc,#0x0002
   5636 C5            [11]  112 	push	bc
   5637 E5            [11]  113 	push	hl
   5638 CD 0D 68      [17]  114 	call	_cpct_setPalette
                            115 ;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
   563B 21 00 40      [10]  116 	ld	hl,#0x4000
   563E E5            [11]  117 	push	hl
   563F 3E FF         [ 7]  118 	ld	a,#0xFF
   5641 F5            [11]  119 	push	af
   5642 33            [ 6]  120 	inc	sp
   5643 26 C0         [ 7]  121 	ld	h, #0xC0
   5645 E5            [11]  122 	push	hl
   5646 CD 74 6A      [17]  123 	call	_cpct_memset
   5649 C9            [10]  124 	ret
                            125 ;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
                            126 ;	---------------------------------
                            127 ; Function drawBoxM0
                            128 ; ---------------------------------
   564A                     129 _drawBoxM0::
   564A DD E5         [15]  130 	push	ix
   564C DD 21 00 00   [14]  131 	ld	ix,#0
   5650 DD 39         [15]  132 	add	ix,sp
   5652 21 F9 FF      [10]  133 	ld	hl,#-7
   5655 39            [11]  134 	add	hl,sp
   5656 F9            [ 6]  135 	ld	sp,hl
                            136 ;src/gui/gui.c:30: int left = (80-width_)/2;
   5657 3E 50         [ 7]  137 	ld	a,#0x50
   5659 DD 96 04      [19]  138 	sub	a, 4 (ix)
   565C 57            [ 4]  139 	ld	d,a
   565D 3E 00         [ 7]  140 	ld	a,#0x00
   565F DD 9E 05      [19]  141 	sbc	a, 5 (ix)
   5662 5F            [ 4]  142 	ld	e,a
   5663 6A            [ 4]  143 	ld	l, d
   5664 63            [ 4]  144 	ld	h, e
   5665 CB 7B         [ 8]  145 	bit	7, e
   5667 28 03         [12]  146 	jr	Z,00103$
   5669 6A            [ 4]  147 	ld	l, d
   566A 63            [ 4]  148 	ld	h, e
   566B 23            [ 6]  149 	inc	hl
   566C                     150 00103$:
   566C DD 75 F9      [19]  151 	ld	-7 (ix),l
   566F DD 74 FA      [19]  152 	ld	-6 (ix),h
   5672 DD CB FA 2E   [23]  153 	sra	-6 (ix)
   5676 DD CB F9 1E   [23]  154 	rr	-7 (ix)
                            155 ;src/gui/gui.c:31: int top = (200-height_)/2;
   567A 3E C8         [ 7]  156 	ld	a,#0xC8
   567C DD 96 06      [19]  157 	sub	a, 6 (ix)
   567F 4F            [ 4]  158 	ld	c,a
   5680 3E 00         [ 7]  159 	ld	a,#0x00
   5682 DD 9E 07      [19]  160 	sbc	a, 7 (ix)
   5685 47            [ 4]  161 	ld	b,a
   5686 61            [ 4]  162 	ld	h,c
   5687 50            [ 4]  163 	ld	d,b
   5688 CB 78         [ 8]  164 	bit	7, b
   568A 28 03         [12]  165 	jr	Z,00104$
   568C 03            [ 6]  166 	inc	bc
   568D 61            [ 4]  167 	ld	h,c
   568E 50            [ 4]  168 	ld	d,b
   568F                     169 00104$:
   568F 5C            [ 4]  170 	ld	e, h
   5690 CB 2A         [ 8]  171 	sra	d
   5692 CB 1B         [ 8]  172 	rr	e
                            173 ;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
   5694 D5            [11]  174 	push	de
   5695 21 09 09      [10]  175 	ld	hl,#0x0909
   5698 E5            [11]  176 	push	hl
   5699 CD 58 6A      [17]  177 	call	_cpct_px2byteM0
   569C 65            [ 4]  178 	ld	h,l
   569D 01 00 40      [10]  179 	ld	bc,#0x4000
   56A0 C5            [11]  180 	push	bc
   56A1 E5            [11]  181 	push	hl
   56A2 33            [ 6]  182 	inc	sp
   56A3 21 00 C0      [10]  183 	ld	hl,#0xC000
   56A6 E5            [11]  184 	push	hl
   56A7 CD 74 6A      [17]  185 	call	_cpct_memset
   56AA D1            [10]  186 	pop	de
                            187 ;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   56AB DD 73 FF      [19]  188 	ld	-1 (ix), e
   56AE 63            [ 4]  189 	ld	h, e
   56AF 24            [ 4]  190 	inc	h
   56B0 24            [ 4]  191 	inc	h
   56B1 24            [ 4]  192 	inc	h
   56B2 24            [ 4]  193 	inc	h
   56B3 DD 7E F9      [19]  194 	ld	a,-7 (ix)
   56B6 3C            [ 4]  195 	inc	a
   56B7 DD 77 FC      [19]  196 	ld	-4 (ix),a
   56BA D5            [11]  197 	push	de
   56BB E5            [11]  198 	push	hl
   56BC 33            [ 6]  199 	inc	sp
   56BD DD 7E FC      [19]  200 	ld	a,-4 (ix)
   56C0 F5            [11]  201 	push	af
   56C1 33            [ 6]  202 	inc	sp
   56C2 21 00 C0      [10]  203 	ld	hl,#0xC000
   56C5 E5            [11]  204 	push	hl
   56C6 CD A8 6B      [17]  205 	call	_cpct_getScreenPtr
   56C9 D1            [10]  206 	pop	de
   56CA 4D            [ 4]  207 	ld	c, l
   56CB 44            [ 4]  208 	ld	b, h
                            209 ;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   56CC DD 7E 06      [19]  210 	ld	a,6 (ix)
   56CF DD 77 FB      [19]  211 	ld	-5 (ix),a
   56D2 DD 7E 04      [19]  212 	ld	a,4 (ix)
   56D5 DD 77 FD      [19]  213 	ld	-3 (ix),a
   56D8 C5            [11]  214 	push	bc
   56D9 D5            [11]  215 	push	de
   56DA 21 02 02      [10]  216 	ld	hl,#0x0202
   56DD E5            [11]  217 	push	hl
   56DE CD 58 6A      [17]  218 	call	_cpct_px2byteM0
   56E1 DD 75 FE      [19]  219 	ld	-2 (ix),l
   56E4 D1            [10]  220 	pop	de
   56E5 C1            [10]  221 	pop	bc
   56E6 D5            [11]  222 	push	de
   56E7 DD 66 FB      [19]  223 	ld	h,-5 (ix)
   56EA DD 6E FD      [19]  224 	ld	l,-3 (ix)
   56ED E5            [11]  225 	push	hl
   56EE DD 7E FE      [19]  226 	ld	a,-2 (ix)
   56F1 F5            [11]  227 	push	af
   56F2 33            [ 6]  228 	inc	sp
   56F3 C5            [11]  229 	push	bc
   56F4 CD EF 6A      [17]  230 	call	_cpct_drawSolidBox
   56F7 F1            [10]  231 	pop	af
   56F8 F1            [10]  232 	pop	af
   56F9 33            [ 6]  233 	inc	sp
   56FA D1            [10]  234 	pop	de
                            235 ;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   56FB 63            [ 4]  236 	ld	h,e
   56FC DD 56 F9      [19]  237 	ld	d,-7 (ix)
   56FF E5            [11]  238 	push	hl
   5700 33            [ 6]  239 	inc	sp
   5701 D5            [11]  240 	push	de
   5702 33            [ 6]  241 	inc	sp
   5703 21 00 C0      [10]  242 	ld	hl,#0xC000
   5706 E5            [11]  243 	push	hl
   5707 CD A8 6B      [17]  244 	call	_cpct_getScreenPtr
                            245 ;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   570A E5            [11]  246 	push	hl
   570B 21 06 06      [10]  247 	ld	hl,#0x0606
   570E E5            [11]  248 	push	hl
   570F CD 58 6A      [17]  249 	call	_cpct_px2byteM0
   5712 45            [ 4]  250 	ld	b,l
   5713 D1            [10]  251 	pop	de
   5714 DD 66 FB      [19]  252 	ld	h,-5 (ix)
   5717 DD 6E FD      [19]  253 	ld	l,-3 (ix)
   571A E5            [11]  254 	push	hl
   571B C5            [11]  255 	push	bc
   571C 33            [ 6]  256 	inc	sp
   571D D5            [11]  257 	push	de
   571E CD EF 6A      [17]  258 	call	_cpct_drawSolidBox
   5721 F1            [10]  259 	pop	af
   5722 F1            [10]  260 	pop	af
   5723 33            [ 6]  261 	inc	sp
                            262 ;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   5724 DD 66 FF      [19]  263 	ld	h,-1 (ix)
   5727 24            [ 4]  264 	inc	h
   5728 24            [ 4]  265 	inc	h
   5729 E5            [11]  266 	push	hl
   572A 33            [ 6]  267 	inc	sp
   572B DD 7E FC      [19]  268 	ld	a,-4 (ix)
   572E F5            [11]  269 	push	af
   572F 33            [ 6]  270 	inc	sp
   5730 21 00 C0      [10]  271 	ld	hl,#0xC000
   5733 E5            [11]  272 	push	hl
   5734 CD A8 6B      [17]  273 	call	_cpct_getScreenPtr
   5737 EB            [ 4]  274 	ex	de,hl
                            275 ;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   5738 DD 7E 06      [19]  276 	ld	a,6 (ix)
   573B C6 FC         [ 7]  277 	add	a,#0xFC
   573D 4F            [ 4]  278 	ld	c,a
   573E DD 46 04      [19]  279 	ld	b,4 (ix)
   5741 05            [ 4]  280 	dec	b
   5742 05            [ 4]  281 	dec	b
   5743 C5            [11]  282 	push	bc
   5744 D5            [11]  283 	push	de
   5745 21 00 00      [10]  284 	ld	hl,#0x0000
   5748 E5            [11]  285 	push	hl
   5749 CD 58 6A      [17]  286 	call	_cpct_px2byteM0
   574C DD 75 FE      [19]  287 	ld	-2 (ix),l
   574F D1            [10]  288 	pop	de
   5750 C1            [10]  289 	pop	bc
   5751 79            [ 4]  290 	ld	a,c
   5752 F5            [11]  291 	push	af
   5753 33            [ 6]  292 	inc	sp
   5754 C5            [11]  293 	push	bc
   5755 33            [ 6]  294 	inc	sp
   5756 DD 7E FE      [19]  295 	ld	a,-2 (ix)
   5759 F5            [11]  296 	push	af
   575A 33            [ 6]  297 	inc	sp
   575B D5            [11]  298 	push	de
   575C CD EF 6A      [17]  299 	call	_cpct_drawSolidBox
   575F DD F9         [10]  300 	ld	sp,ix
   5761 DD E1         [14]  301 	pop	ix
   5763 C9            [10]  302 	ret
                            303 ;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
                            304 ;	---------------------------------
                            305 ; Function drawBoxM2
                            306 ; ---------------------------------
   5764                     307 _drawBoxM2::
   5764 DD E5         [15]  308 	push	ix
   5766 DD 21 00 00   [14]  309 	ld	ix,#0
   576A DD 39         [15]  310 	add	ix,sp
   576C 21 FA FF      [10]  311 	ld	hl,#-6
   576F 39            [11]  312 	add	hl,sp
   5770 F9            [ 6]  313 	ld	sp,hl
                            314 ;src/gui/gui.c:54: int left = (80-width_)/2;
   5771 3E 50         [ 7]  315 	ld	a,#0x50
   5773 DD 96 04      [19]  316 	sub	a, 4 (ix)
   5776 4F            [ 4]  317 	ld	c,a
   5777 3E 00         [ 7]  318 	ld	a,#0x00
   5779 DD 9E 05      [19]  319 	sbc	a, 5 (ix)
   577C 47            [ 4]  320 	ld	b,a
   577D 61            [ 4]  321 	ld	h,c
   577E 50            [ 4]  322 	ld	d,b
   577F CB 78         [ 8]  323 	bit	7, b
   5781 28 03         [12]  324 	jr	Z,00103$
   5783 03            [ 6]  325 	inc	bc
   5784 61            [ 4]  326 	ld	h,c
   5785 50            [ 4]  327 	ld	d,b
   5786                     328 00103$:
   5786 5C            [ 4]  329 	ld	e, h
   5787 CB 2A         [ 8]  330 	sra	d
   5789 CB 1B         [ 8]  331 	rr	e
                            332 ;src/gui/gui.c:55: int top = (200-height_)/2;
   578B 3E C8         [ 7]  333 	ld	a,#0xC8
   578D DD 96 06      [19]  334 	sub	a, 6 (ix)
   5790 4F            [ 4]  335 	ld	c,a
   5791 3E 00         [ 7]  336 	ld	a,#0x00
   5793 DD 9E 07      [19]  337 	sbc	a, 7 (ix)
   5796 47            [ 4]  338 	ld	b,a
   5797 61            [ 4]  339 	ld	h,c
   5798 68            [ 4]  340 	ld	l,b
   5799 CB 78         [ 8]  341 	bit	7, b
   579B 28 03         [12]  342 	jr	Z,00104$
   579D 03            [ 6]  343 	inc	bc
   579E 61            [ 4]  344 	ld	h,c
   579F 68            [ 4]  345 	ld	l,b
   57A0                     346 00104$:
   57A0 DD 74 FA      [19]  347 	ld	-6 (ix),h
   57A3 DD 75 FB      [19]  348 	ld	-5 (ix),l
   57A6 DD CB FB 2E   [23]  349 	sra	-5 (ix)
   57AA DD CB FA 1E   [23]  350 	rr	-6 (ix)
                            351 ;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   57AE DD 7E FA      [19]  352 	ld	a,-6 (ix)
   57B1 DD 77 FF      [19]  353 	ld	-1 (ix), a
   57B4 C6 05         [ 7]  354 	add	a, #0x05
   57B6 4F            [ 4]  355 	ld	c,a
   57B7 DD 73 FC      [19]  356 	ld	-4 (ix), e
   57BA 63            [ 4]  357 	ld	h, e
   57BB 24            [ 4]  358 	inc	h
   57BC 24            [ 4]  359 	inc	h
   57BD D5            [11]  360 	push	de
   57BE 79            [ 4]  361 	ld	a,c
   57BF F5            [11]  362 	push	af
   57C0 33            [ 6]  363 	inc	sp
   57C1 E5            [11]  364 	push	hl
   57C2 33            [ 6]  365 	inc	sp
   57C3 21 00 C0      [10]  366 	ld	hl,#0xC000
   57C6 E5            [11]  367 	push	hl
   57C7 CD A8 6B      [17]  368 	call	_cpct_getScreenPtr
   57CA D1            [10]  369 	pop	de
                            370 ;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   57CB DD 46 06      [19]  371 	ld	b,6 (ix)
   57CE DD 4E 04      [19]  372 	ld	c,4 (ix)
   57D1 79            [ 4]  373 	ld	a,c
   57D2 C6 FF         [ 7]  374 	add	a,#0xFF
   57D4 DD 75 FD      [19]  375 	ld	-3 (ix),l
   57D7 DD 74 FE      [19]  376 	ld	-2 (ix),h
   57DA C5            [11]  377 	push	bc
   57DB D5            [11]  378 	push	de
   57DC C5            [11]  379 	push	bc
   57DD 33            [ 6]  380 	inc	sp
   57DE F5            [11]  381 	push	af
   57DF 33            [ 6]  382 	inc	sp
   57E0 AF            [ 4]  383 	xor	a, a
   57E1 F5            [11]  384 	push	af
   57E2 33            [ 6]  385 	inc	sp
   57E3 DD 6E FD      [19]  386 	ld	l,-3 (ix)
   57E6 DD 66 FE      [19]  387 	ld	h,-2 (ix)
   57E9 E5            [11]  388 	push	hl
   57EA CD EF 6A      [17]  389 	call	_cpct_drawSolidBox
   57ED F1            [10]  390 	pop	af
   57EE F1            [10]  391 	pop	af
   57EF 33            [ 6]  392 	inc	sp
   57F0 D1            [10]  393 	pop	de
   57F1 C1            [10]  394 	pop	bc
                            395 ;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   57F2 DD 66 FA      [19]  396 	ld	h,-6 (ix)
   57F5 53            [ 4]  397 	ld	d,e
   57F6 C5            [11]  398 	push	bc
   57F7 E5            [11]  399 	push	hl
   57F8 33            [ 6]  400 	inc	sp
   57F9 D5            [11]  401 	push	de
   57FA 33            [ 6]  402 	inc	sp
   57FB 21 00 C0      [10]  403 	ld	hl,#0xC000
   57FE E5            [11]  404 	push	hl
   57FF CD A8 6B      [17]  405 	call	_cpct_getScreenPtr
   5802 C1            [10]  406 	pop	bc
                            407 ;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   5803 DD 7E 04      [19]  408 	ld	a,4 (ix)
   5806 EB            [ 4]  409 	ex	de,hl
   5807 C5            [11]  410 	push	bc
   5808 C5            [11]  411 	push	bc
   5809 33            [ 6]  412 	inc	sp
   580A 47            [ 4]  413 	ld	b,a
   580B 0E F8         [ 7]  414 	ld	c,#0xF8
   580D C5            [11]  415 	push	bc
   580E D5            [11]  416 	push	de
   580F CD EF 6A      [17]  417 	call	_cpct_drawSolidBox
   5812 F1            [10]  418 	pop	af
   5813 F1            [10]  419 	pop	af
   5814 33            [ 6]  420 	inc	sp
   5815 C1            [10]  421 	pop	bc
                            422 ;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   5816 DD 66 FF      [19]  423 	ld	h,-1 (ix)
   5819 24            [ 4]  424 	inc	h
   581A DD 56 FC      [19]  425 	ld	d,-4 (ix)
   581D 14            [ 4]  426 	inc	d
   581E C5            [11]  427 	push	bc
   581F E5            [11]  428 	push	hl
   5820 33            [ 6]  429 	inc	sp
   5821 D5            [11]  430 	push	de
   5822 33            [ 6]  431 	inc	sp
   5823 21 00 C0      [10]  432 	ld	hl,#0xC000
   5826 E5            [11]  433 	push	hl
   5827 CD A8 6B      [17]  434 	call	_cpct_getScreenPtr
   582A C1            [10]  435 	pop	bc
   582B 5D            [ 4]  436 	ld	e, l
   582C 54            [ 4]  437 	ld	d, h
                            438 ;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   582D DD 66 06      [19]  439 	ld	h,6 (ix)
   5830 25            [ 4]  440 	dec	h
   5831 25            [ 4]  441 	dec	h
   5832 79            [ 4]  442 	ld	a,c
   5833 C6 FE         [ 7]  443 	add	a,#0xFE
   5835 E5            [11]  444 	push	hl
   5836 33            [ 6]  445 	inc	sp
   5837 47            [ 4]  446 	ld	b,a
   5838 0E FF         [ 7]  447 	ld	c,#0xFF
   583A C5            [11]  448 	push	bc
   583B D5            [11]  449 	push	de
   583C CD EF 6A      [17]  450 	call	_cpct_drawSolidBox
   583F DD F9         [10]  451 	ld	sp,ix
   5841 DD E1         [14]  452 	pop	ix
   5843 C9            [10]  453 	ret
                            454 ;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            455 ;	---------------------------------
                            456 ; Function EraseMenuEntry
                            457 ; ---------------------------------
   5844                     458 _EraseMenuEntry::
   5844 DD E5         [15]  459 	push	ix
   5846 DD 21 00 00   [14]  460 	ld	ix,#0
   584A DD 39         [15]  461 	add	ix,sp
   584C 3B            [ 6]  462 	dec	sp
                            463 ;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   584D DD 4E 06      [19]  464 	ld	c,6 (ix)
   5850 06 00         [ 7]  465 	ld	b,#0x00
   5852 69            [ 4]  466 	ld	l, c
   5853 60            [ 4]  467 	ld	h, b
   5854 29            [11]  468 	add	hl, hl
   5855 29            [11]  469 	add	hl, hl
   5856 09            [11]  470 	add	hl, bc
   5857 29            [11]  471 	add	hl, hl
   5858 4D            [ 4]  472 	ld	c,l
   5859 44            [ 4]  473 	ld	b,h
   585A 3E C9         [ 7]  474 	ld	a,#0xC9
   585C 91            [ 4]  475 	sub	a, c
   585D 57            [ 4]  476 	ld	d,a
   585E 3E 00         [ 7]  477 	ld	a,#0x00
   5860 98            [ 4]  478 	sbc	a, b
   5861 5F            [ 4]  479 	ld	e,a
   5862 6A            [ 4]  480 	ld	l, d
   5863 63            [ 4]  481 	ld	h, e
   5864 CB 7B         [ 8]  482 	bit	7, e
   5866 28 03         [12]  483 	jr	Z,00103$
   5868 6A            [ 4]  484 	ld	l, d
   5869 63            [ 4]  485 	ld	h, e
   586A 23            [ 6]  486 	inc	hl
   586B                     487 00103$:
   586B CB 2C         [ 8]  488 	sra	h
   586D CB 1D         [ 8]  489 	rr	l
   586F 55            [ 4]  490 	ld	d,l
   5870 DD 7E 07      [19]  491 	ld	a,7 (ix)
   5873 5F            [ 4]  492 	ld	e,a
   5874 87            [ 4]  493 	add	a, a
   5875 87            [ 4]  494 	add	a, a
   5876 83            [ 4]  495 	add	a, e
   5877 87            [ 4]  496 	add	a, a
   5878 DD 77 FF      [19]  497 	ld	-1 (ix),a
   587B 7A            [ 4]  498 	ld	a,d
   587C DD 86 FF      [19]  499 	add	a, -1 (ix)
   587F C5            [11]  500 	push	bc
   5880 57            [ 4]  501 	ld	d,a
   5881 1E 20         [ 7]  502 	ld	e,#0x20
   5883 D5            [11]  503 	push	de
   5884 21 00 C0      [10]  504 	ld	hl,#0xC000
   5887 E5            [11]  505 	push	hl
   5888 CD A8 6B      [17]  506 	call	_cpct_getScreenPtr
   588B C1            [10]  507 	pop	bc
                            508 ;src/gui/gui.c:76: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   588C EB            [ 4]  509 	ex	de,hl
   588D C5            [11]  510 	push	bc
   588E 21 11 0A      [10]  511 	ld	hl,#0x0A11
   5891 E5            [11]  512 	push	hl
   5892 3E FF         [ 7]  513 	ld	a,#0xFF
   5894 F5            [11]  514 	push	af
   5895 33            [ 6]  515 	inc	sp
   5896 D5            [11]  516 	push	de
   5897 CD EF 6A      [17]  517 	call	_cpct_drawSolidBox
   589A F1            [10]  518 	pop	af
   589B F1            [10]  519 	pop	af
   589C 33            [ 6]  520 	inc	sp
   589D C1            [10]  521 	pop	bc
                            522 ;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   589E 3E CA         [ 7]  523 	ld	a,#0xCA
   58A0 91            [ 4]  524 	sub	a, c
   58A1 57            [ 4]  525 	ld	d,a
   58A2 3E 00         [ 7]  526 	ld	a,#0x00
   58A4 98            [ 4]  527 	sbc	a, b
   58A5 5F            [ 4]  528 	ld	e,a
   58A6 6A            [ 4]  529 	ld	l, d
   58A7 63            [ 4]  530 	ld	h, e
   58A8 CB 7B         [ 8]  531 	bit	7, e
   58AA 28 03         [12]  532 	jr	Z,00104$
   58AC 6A            [ 4]  533 	ld	l, d
   58AD 63            [ 4]  534 	ld	h, e
   58AE 23            [ 6]  535 	inc	hl
   58AF                     536 00104$:
   58AF CB 2C         [ 8]  537 	sra	h
   58B1 CB 1D         [ 8]  538 	rr	l
   58B3 7D            [ 4]  539 	ld	a,l
   58B4 DD 86 FF      [19]  540 	add	a, -1 (ix)
   58B7 4F            [ 4]  541 	ld	c,a
   58B8 DD 6E 07      [19]  542 	ld	l,7 (ix)
   58BB 26 00         [ 7]  543 	ld	h,#0x00
   58BD 29            [11]  544 	add	hl, hl
   58BE EB            [ 4]  545 	ex	de,hl
   58BF DD 6E 04      [19]  546 	ld	l,4 (ix)
   58C2 DD 66 05      [19]  547 	ld	h,5 (ix)
   58C5 19            [11]  548 	add	hl,de
   58C6 E5            [11]  549 	push	hl
   58C7 5E            [ 7]  550 	ld	e,(hl)
   58C8 23            [ 6]  551 	inc	hl
   58C9 56            [ 7]  552 	ld	d,(hl)
   58CA C5            [11]  553 	push	bc
   58CB D5            [11]  554 	push	de
   58CC CD 9B 6A      [17]  555 	call	_strlen
   58CF F1            [10]  556 	pop	af
   58D0 EB            [ 4]  557 	ex	de,hl
   58D1 C1            [10]  558 	pop	bc
   58D2 E1            [10]  559 	pop	hl
   58D3 3E 52         [ 7]  560 	ld	a,#0x52
   58D5 93            [ 4]  561 	sub	a, e
   58D6 5F            [ 4]  562 	ld	e,a
   58D7 3E 00         [ 7]  563 	ld	a,#0x00
   58D9 9A            [ 4]  564 	sbc	a, d
   58DA 57            [ 4]  565 	ld	d,a
   58DB CB 3A         [ 8]  566 	srl	d
   58DD CB 1B         [ 8]  567 	rr	e
   58DF E5            [11]  568 	push	hl
   58E0 51            [ 4]  569 	ld	d, c
   58E1 D5            [11]  570 	push	de
   58E2 01 00 C0      [10]  571 	ld	bc,#0xC000
   58E5 C5            [11]  572 	push	bc
   58E6 CD A8 6B      [17]  573 	call	_cpct_getScreenPtr
   58E9 4D            [ 4]  574 	ld	c,l
   58EA 44            [ 4]  575 	ld	b,h
   58EB E1            [10]  576 	pop	hl
                            577 ;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   58EC 5E            [ 7]  578 	ld	e,(hl)
   58ED 23            [ 6]  579 	inc	hl
   58EE 56            [ 7]  580 	ld	d,(hl)
   58EF AF            [ 4]  581 	xor	a, a
   58F0 F5            [11]  582 	push	af
   58F1 33            [ 6]  583 	inc	sp
   58F2 C5            [11]  584 	push	bc
   58F3 D5            [11]  585 	push	de
   58F4 CD 5B 68      [17]  586 	call	_cpct_drawStringM2
   58F7 F1            [10]  587 	pop	af
   58F8 F1            [10]  588 	pop	af
   58F9 33            [ 6]  589 	inc	sp
   58FA 33            [ 6]  590 	inc	sp
   58FB DD E1         [14]  591 	pop	ix
   58FD C9            [10]  592 	ret
                            593 ;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            594 ;	---------------------------------
                            595 ; Function drawMenuEntry
                            596 ; ---------------------------------
   58FE                     597 _drawMenuEntry::
   58FE DD E5         [15]  598 	push	ix
   5900 DD 21 00 00   [14]  599 	ld	ix,#0
   5904 DD 39         [15]  600 	add	ix,sp
   5906 21 FA FF      [10]  601 	ld	hl,#-6
   5909 39            [11]  602 	add	hl,sp
   590A F9            [ 6]  603 	ld	sp,hl
                            604 ;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   590B DD 4E 06      [19]  605 	ld	c,6 (ix)
   590E 06 00         [ 7]  606 	ld	b,#0x00
   5910 69            [ 4]  607 	ld	l, c
   5911 60            [ 4]  608 	ld	h, b
   5912 29            [11]  609 	add	hl, hl
   5913 29            [11]  610 	add	hl, hl
   5914 09            [11]  611 	add	hl, bc
   5915 29            [11]  612 	add	hl, hl
   5916 4D            [ 4]  613 	ld	c,l
   5917 44            [ 4]  614 	ld	b,h
   5918 3E C9         [ 7]  615 	ld	a,#0xC9
   591A 91            [ 4]  616 	sub	a, c
   591B 57            [ 4]  617 	ld	d,a
   591C 3E 00         [ 7]  618 	ld	a,#0x00
   591E 98            [ 4]  619 	sbc	a, b
   591F 5F            [ 4]  620 	ld	e,a
   5920 6A            [ 4]  621 	ld	l, d
   5921 63            [ 4]  622 	ld	h, e
   5922 CB 7B         [ 8]  623 	bit	7, e
   5924 28 03         [12]  624 	jr	Z,00114$
   5926 6A            [ 4]  625 	ld	l, d
   5927 63            [ 4]  626 	ld	h, e
   5928 23            [ 6]  627 	inc	hl
   5929                     628 00114$:
   5929 CB 2C         [ 8]  629 	sra	h
   592B CB 1D         [ 8]  630 	rr	l
   592D 55            [ 4]  631 	ld	d,l
   592E DD 7E 07      [19]  632 	ld	a,7 (ix)
   5931 5F            [ 4]  633 	ld	e,a
   5932 87            [ 4]  634 	add	a, a
   5933 87            [ 4]  635 	add	a, a
   5934 83            [ 4]  636 	add	a, e
   5935 87            [ 4]  637 	add	a, a
   5936 82            [ 4]  638 	add	a,d
   5937 C5            [11]  639 	push	bc
   5938 57            [ 4]  640 	ld	d,a
   5939 1E 20         [ 7]  641 	ld	e,#0x20
   593B D5            [11]  642 	push	de
   593C 21 00 C0      [10]  643 	ld	hl,#0xC000
   593F E5            [11]  644 	push	hl
   5940 CD A8 6B      [17]  645 	call	_cpct_getScreenPtr
   5943 C1            [10]  646 	pop	bc
                            647 ;src/gui/gui.c:91: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   5944 EB            [ 4]  648 	ex	de,hl
   5945 C5            [11]  649 	push	bc
   5946 21 11 0A      [10]  650 	ld	hl,#0x0A11
   5949 E5            [11]  651 	push	hl
   594A AF            [ 4]  652 	xor	a, a
   594B F5            [11]  653 	push	af
   594C 33            [ 6]  654 	inc	sp
   594D D5            [11]  655 	push	de
   594E CD EF 6A      [17]  656 	call	_cpct_drawSolidBox
   5951 F1            [10]  657 	pop	af
   5952 F1            [10]  658 	pop	af
   5953 33            [ 6]  659 	inc	sp
   5954 C1            [10]  660 	pop	bc
                            661 ;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
   5955 21 B0 36      [10]  662 	ld	hl,#0x36B0
   5958                     663 00108$:
   5958 2B            [ 6]  664 	dec	hl
   5959 7C            [ 4]  665 	ld	a,h
   595A B5            [ 4]  666 	or	a,l
   595B 20 FB         [12]  667 	jr	NZ,00108$
                            668 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   595D 3E CA         [ 7]  669 	ld	a,#0xCA
   595F 91            [ 4]  670 	sub	a, c
   5960 DD 77 FD      [19]  671 	ld	-3 (ix),a
   5963 3E 00         [ 7]  672 	ld	a,#0x00
   5965 98            [ 4]  673 	sbc	a, b
   5966 DD 77 FE      [19]  674 	ld	-2 (ix), a
   5969 07            [ 4]  675 	rlca
   596A E6 01         [ 7]  676 	and	a,#0x01
   596C 5F            [ 4]  677 	ld	e,a
   596D 21 00 00      [10]  678 	ld	hl,#0x0000
   5970 E3            [19]  679 	ex	(sp), hl
   5971                     680 00110$:
   5971 DD 66 06      [19]  681 	ld	h,6 (ix)
   5974 2E 00         [ 7]  682 	ld	l,#0x00
   5976 DD 7E FA      [19]  683 	ld	a,-6 (ix)
   5979 94            [ 4]  684 	sub	a, h
   597A DD 7E FB      [19]  685 	ld	a,-5 (ix)
   597D 9D            [ 4]  686 	sbc	a, l
   597E E2 83 59      [10]  687 	jp	PO, 00146$
   5981 EE 80         [ 7]  688 	xor	a, #0x80
   5983                     689 00146$:
   5983 F2 29 5A      [10]  690 	jp	P,00112$
                            691 ;src/gui/gui.c:99: if(i==iSelect)
   5986 DD 56 07      [19]  692 	ld	d,7 (ix)
   5989 06 00         [ 7]  693 	ld	b,#0x00
   598B DD 7E FA      [19]  694 	ld	a,-6 (ix)
   598E 92            [ 4]  695 	sub	a, d
   598F 20 0A         [12]  696 	jr	NZ,00103$
   5991 DD 7E FB      [19]  697 	ld	a,-5 (ix)
   5994 90            [ 4]  698 	sub	a, b
   5995 20 04         [12]  699 	jr	NZ,00103$
                            700 ;src/gui/gui.c:100: penSelected = 1;
   5997 0E 01         [ 7]  701 	ld	c,#0x01
   5999 18 02         [12]  702 	jr	00104$
   599B                     703 00103$:
                            704 ;src/gui/gui.c:102: penSelected = 0;
   599B 0E 00         [ 7]  705 	ld	c,#0x00
   599D                     706 00104$:
                            707 ;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   599D DD 6E FD      [19]  708 	ld	l,-3 (ix)
   59A0 DD 66 FE      [19]  709 	ld	h,-2 (ix)
   59A3 7B            [ 4]  710 	ld	a,e
   59A4 B7            [ 4]  711 	or	a, a
   59A5 28 07         [12]  712 	jr	Z,00115$
   59A7 DD 6E FD      [19]  713 	ld	l,-3 (ix)
   59AA DD 66 FE      [19]  714 	ld	h,-2 (ix)
   59AD 23            [ 6]  715 	inc	hl
   59AE                     716 00115$:
   59AE CB 2C         [ 8]  717 	sra	h
   59B0 CB 1D         [ 8]  718 	rr	l
   59B2 45            [ 4]  719 	ld	b,l
   59B3 DD 6E FA      [19]  720 	ld	l,-6 (ix)
   59B6 D5            [11]  721 	push	de
   59B7 5D            [ 4]  722 	ld	e,l
   59B8 29            [11]  723 	add	hl, hl
   59B9 29            [11]  724 	add	hl, hl
   59BA 19            [11]  725 	add	hl, de
   59BB 29            [11]  726 	add	hl, hl
   59BC D1            [10]  727 	pop	de
   59BD 78            [ 4]  728 	ld	a,b
   59BE 85            [ 4]  729 	add	a, l
   59BF DD 77 FF      [19]  730 	ld	-1 (ix),a
   59C2 DD 56 FA      [19]  731 	ld	d,-6 (ix)
   59C5 DD 46 FB      [19]  732 	ld	b,-5 (ix)
   59C8 CB 22         [ 8]  733 	sla	d
   59CA CB 10         [ 8]  734 	rl	b
   59CC DD 7E 04      [19]  735 	ld	a,4 (ix)
   59CF 82            [ 4]  736 	add	a, d
   59D0 57            [ 4]  737 	ld	d,a
   59D1 DD 7E 05      [19]  738 	ld	a,5 (ix)
   59D4 88            [ 4]  739 	adc	a, b
   59D5 47            [ 4]  740 	ld	b,a
   59D6 6A            [ 4]  741 	ld	l, d
   59D7 60            [ 4]  742 	ld	h, b
   59D8 7E            [ 7]  743 	ld	a, (hl)
   59D9 23            [ 6]  744 	inc	hl
   59DA 66            [ 7]  745 	ld	h,(hl)
   59DB 6F            [ 4]  746 	ld	l,a
   59DC C5            [11]  747 	push	bc
   59DD D5            [11]  748 	push	de
   59DE E5            [11]  749 	push	hl
   59DF CD 9B 6A      [17]  750 	call	_strlen
   59E2 F1            [10]  751 	pop	af
   59E3 D1            [10]  752 	pop	de
   59E4 C1            [10]  753 	pop	bc
   59E5 3E 52         [ 7]  754 	ld	a,#0x52
   59E7 95            [ 4]  755 	sub	a, l
   59E8 6F            [ 4]  756 	ld	l,a
   59E9 3E 00         [ 7]  757 	ld	a,#0x00
   59EB 9C            [ 4]  758 	sbc	a, h
   59EC 67            [ 4]  759 	ld	h,a
   59ED CB 3C         [ 8]  760 	srl	h
   59EF CB 1D         [ 8]  761 	rr	l
   59F1 DD 75 FC      [19]  762 	ld	-4 (ix),l
   59F4 C5            [11]  763 	push	bc
   59F5 D5            [11]  764 	push	de
   59F6 DD 66 FF      [19]  765 	ld	h,-1 (ix)
   59F9 DD 6E FC      [19]  766 	ld	l,-4 (ix)
   59FC E5            [11]  767 	push	hl
   59FD 21 00 C0      [10]  768 	ld	hl,#0xC000
   5A00 E5            [11]  769 	push	hl
   5A01 CD A8 6B      [17]  770 	call	_cpct_getScreenPtr
   5A04 D1            [10]  771 	pop	de
   5A05 C1            [10]  772 	pop	bc
   5A06 E5            [11]  773 	push	hl
   5A07 FD E1         [14]  774 	pop	iy
                            775 ;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
   5A09 6A            [ 4]  776 	ld	l, d
   5A0A 60            [ 4]  777 	ld	h, b
   5A0B 7E            [ 7]  778 	ld	a, (hl)
   5A0C 23            [ 6]  779 	inc	hl
   5A0D 66            [ 7]  780 	ld	h,(hl)
   5A0E 6F            [ 4]  781 	ld	l,a
   5A0F D5            [11]  782 	push	de
   5A10 79            [ 4]  783 	ld	a,c
   5A11 F5            [11]  784 	push	af
   5A12 33            [ 6]  785 	inc	sp
   5A13 FD E5         [15]  786 	push	iy
   5A15 E5            [11]  787 	push	hl
   5A16 CD 5B 68      [17]  788 	call	_cpct_drawStringM2
   5A19 F1            [10]  789 	pop	af
   5A1A F1            [10]  790 	pop	af
   5A1B 33            [ 6]  791 	inc	sp
   5A1C D1            [10]  792 	pop	de
                            793 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5A1D DD 34 FA      [23]  794 	inc	-6 (ix)
   5A20 C2 71 59      [10]  795 	jp	NZ,00110$
   5A23 DD 34 FB      [23]  796 	inc	-5 (ix)
   5A26 C3 71 59      [10]  797 	jp	00110$
   5A29                     798 00112$:
   5A29 DD F9         [10]  799 	ld	sp, ix
   5A2B DD E1         [14]  800 	pop	ix
   5A2D C9            [10]  801 	ret
                            802 ;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
                            803 ;	---------------------------------
                            804 ; Function drawMenu
                            805 ; ---------------------------------
   5A2E                     806 _drawMenu::
   5A2E DD E5         [15]  807 	push	ix
   5A30 DD 21 00 00   [14]  808 	ld	ix,#0
   5A34 DD 39         [15]  809 	add	ix,sp
   5A36 F5            [11]  810 	push	af
                            811 ;src/gui/gui.c:112: u8 iSelect=0;
   5A37 06 00         [ 7]  812 	ld	b,#0x00
                            813 ;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
   5A39 C5            [11]  814 	push	bc
   5A3A 21 00 40      [10]  815 	ld	hl,#0x4000
   5A3D E5            [11]  816 	push	hl
   5A3E 3E FF         [ 7]  817 	ld	a,#0xFF
   5A40 F5            [11]  818 	push	af
   5A41 33            [ 6]  819 	inc	sp
   5A42 26 C0         [ 7]  820 	ld	h, #0xC0
   5A44 E5            [11]  821 	push	hl
   5A45 CD 74 6A      [17]  822 	call	_cpct_memset
   5A48 C1            [10]  823 	pop	bc
                            824 ;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
   5A49 DD 5E 06      [19]  825 	ld	e,6 (ix)
   5A4C 16 00         [ 7]  826 	ld	d,#0x00
   5A4E 6B            [ 4]  827 	ld	l, e
   5A4F 62            [ 4]  828 	ld	h, d
   5A50 29            [11]  829 	add	hl, hl
   5A51 19            [11]  830 	add	hl, de
   5A52 29            [11]  831 	add	hl, hl
   5A53 29            [11]  832 	add	hl, hl
   5A54 C5            [11]  833 	push	bc
   5A55 E5            [11]  834 	push	hl
   5A56 21 1E 00      [10]  835 	ld	hl,#0x001E
   5A59 E5            [11]  836 	push	hl
   5A5A CD 64 57      [17]  837 	call	_drawBoxM2
   5A5D F1            [10]  838 	pop	af
   5A5E F1            [10]  839 	pop	af
   5A5F AF            [ 4]  840 	xor	a, a
   5A60 F5            [11]  841 	push	af
   5A61 33            [ 6]  842 	inc	sp
   5A62 DD 7E 06      [19]  843 	ld	a,6 (ix)
   5A65 F5            [11]  844 	push	af
   5A66 33            [ 6]  845 	inc	sp
   5A67 DD 6E 04      [19]  846 	ld	l,4 (ix)
   5A6A DD 66 05      [19]  847 	ld	h,5 (ix)
   5A6D E5            [11]  848 	push	hl
   5A6E CD FE 58      [17]  849 	call	_drawMenuEntry
   5A71 F1            [10]  850 	pop	af
   5A72 F1            [10]  851 	pop	af
   5A73 C1            [10]  852 	pop	bc
                            853 ;src/gui/gui.c:120: do{
   5A74 DD 4E 06      [19]  854 	ld	c,6 (ix)
   5A77 0D            [ 4]  855 	dec	c
   5A78                     856 00111$:
                            857 ;src/gui/gui.c:121: cpct_scanKeyboard(); 
   5A78 C5            [11]  858 	push	bc
   5A79 CD C8 6B      [17]  859 	call	_cpct_scanKeyboard
   5A7C 21 00 01      [10]  860 	ld	hl,#0x0100
   5A7F CD 24 68      [17]  861 	call	_cpct_isKeyPressed
   5A82 7D            [ 4]  862 	ld	a,l
   5A83 C1            [10]  863 	pop	bc
   5A84 B7            [ 4]  864 	or	a, a
   5A85 28 32         [12]  865 	jr	Z,00105$
                            866 ;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
   5A87 C5            [11]  867 	push	bc
   5A88 C5            [11]  868 	push	bc
   5A89 33            [ 6]  869 	inc	sp
   5A8A DD 7E 06      [19]  870 	ld	a,6 (ix)
   5A8D F5            [11]  871 	push	af
   5A8E 33            [ 6]  872 	inc	sp
   5A8F DD 6E 04      [19]  873 	ld	l,4 (ix)
   5A92 DD 66 05      [19]  874 	ld	h,5 (ix)
   5A95 E5            [11]  875 	push	hl
   5A96 CD 44 58      [17]  876 	call	_EraseMenuEntry
   5A99 F1            [10]  877 	pop	af
   5A9A F1            [10]  878 	pop	af
   5A9B C1            [10]  879 	pop	bc
                            880 ;src/gui/gui.c:127: if(iSelect ==0)
   5A9C 78            [ 4]  881 	ld	a,b
   5A9D B7            [ 4]  882 	or	a, a
   5A9E 20 03         [12]  883 	jr	NZ,00102$
                            884 ;src/gui/gui.c:128: iSelect = nbEntry-1;
   5AA0 41            [ 4]  885 	ld	b,c
   5AA1 18 01         [12]  886 	jr	00103$
   5AA3                     887 00102$:
                            888 ;src/gui/gui.c:130: iSelect--;
   5AA3 05            [ 4]  889 	dec	b
   5AA4                     890 00103$:
                            891 ;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
   5AA4 C5            [11]  892 	push	bc
   5AA5 C5            [11]  893 	push	bc
   5AA6 33            [ 6]  894 	inc	sp
   5AA7 DD 7E 06      [19]  895 	ld	a,6 (ix)
   5AAA F5            [11]  896 	push	af
   5AAB 33            [ 6]  897 	inc	sp
   5AAC DD 6E 04      [19]  898 	ld	l,4 (ix)
   5AAF DD 66 05      [19]  899 	ld	h,5 (ix)
   5AB2 E5            [11]  900 	push	hl
   5AB3 CD FE 58      [17]  901 	call	_drawMenuEntry
   5AB6 F1            [10]  902 	pop	af
   5AB7 F1            [10]  903 	pop	af
   5AB8 C1            [10]  904 	pop	bc
   5AB9                     905 00105$:
                            906 ;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
   5AB9 C5            [11]  907 	push	bc
   5ABA 21 00 04      [10]  908 	ld	hl,#0x0400
   5ABD CD 24 68      [17]  909 	call	_cpct_isKeyPressed
   5AC0 5D            [ 4]  910 	ld	e,l
   5AC1 C1            [10]  911 	pop	bc
   5AC2 7B            [ 4]  912 	ld	a,e
   5AC3 B7            [ 4]  913 	or	a, a
   5AC4 28 48         [12]  914 	jr	Z,00112$
                            915 ;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
   5AC6 C5            [11]  916 	push	bc
   5AC7 C5            [11]  917 	push	bc
   5AC8 33            [ 6]  918 	inc	sp
   5AC9 DD 7E 06      [19]  919 	ld	a,6 (ix)
   5ACC F5            [11]  920 	push	af
   5ACD 33            [ 6]  921 	inc	sp
   5ACE DD 6E 04      [19]  922 	ld	l,4 (ix)
   5AD1 DD 66 05      [19]  923 	ld	h,5 (ix)
   5AD4 E5            [11]  924 	push	hl
   5AD5 CD 44 58      [17]  925 	call	_EraseMenuEntry
   5AD8 F1            [10]  926 	pop	af
   5AD9 F1            [10]  927 	pop	af
   5ADA C1            [10]  928 	pop	bc
                            929 ;src/gui/gui.c:139: if(iSelect == nbEntry-1)
   5ADB DD 5E 06      [19]  930 	ld	e,6 (ix)
   5ADE 16 00         [ 7]  931 	ld	d,#0x00
   5AE0 1B            [ 6]  932 	dec	de
   5AE1 DD 70 FE      [19]  933 	ld	-2 (ix),b
   5AE4 DD 36 FF 00   [19]  934 	ld	-1 (ix),#0x00
   5AE8 7B            [ 4]  935 	ld	a,e
   5AE9 DD 96 FE      [19]  936 	sub	a, -2 (ix)
   5AEC 20 0A         [12]  937 	jr	NZ,00107$
   5AEE 7A            [ 4]  938 	ld	a,d
   5AEF DD 96 FF      [19]  939 	sub	a, -1 (ix)
   5AF2 20 04         [12]  940 	jr	NZ,00107$
                            941 ;src/gui/gui.c:140: iSelect = 0;
   5AF4 06 00         [ 7]  942 	ld	b,#0x00
   5AF6 18 01         [12]  943 	jr	00108$
   5AF8                     944 00107$:
                            945 ;src/gui/gui.c:142: iSelect++;
   5AF8 04            [ 4]  946 	inc	b
   5AF9                     947 00108$:
                            948 ;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
   5AF9 C5            [11]  949 	push	bc
   5AFA C5            [11]  950 	push	bc
   5AFB 33            [ 6]  951 	inc	sp
   5AFC DD 7E 06      [19]  952 	ld	a,6 (ix)
   5AFF F5            [11]  953 	push	af
   5B00 33            [ 6]  954 	inc	sp
   5B01 DD 6E 04      [19]  955 	ld	l,4 (ix)
   5B04 DD 66 05      [19]  956 	ld	h,5 (ix)
   5B07 E5            [11]  957 	push	hl
   5B08 CD FE 58      [17]  958 	call	_drawMenuEntry
   5B0B F1            [10]  959 	pop	af
   5B0C F1            [10]  960 	pop	af
   5B0D C1            [10]  961 	pop	bc
   5B0E                     962 00112$:
                            963 ;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
   5B0E C5            [11]  964 	push	bc
   5B0F 21 02 04      [10]  965 	ld	hl,#0x0402
   5B12 CD 24 68      [17]  966 	call	_cpct_isKeyPressed
   5B15 7D            [ 4]  967 	ld	a,l
   5B16 C1            [10]  968 	pop	bc
   5B17 B7            [ 4]  969 	or	a, a
   5B18 CA 78 5A      [10]  970 	jp	Z,00111$
                            971 ;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
   5B1B 21 B0 36      [10]  972 	ld	hl,#0x36B0
   5B1E                     973 00117$:
   5B1E EB            [ 4]  974 	ex	de,hl
   5B1F 1B            [ 6]  975 	dec	de
   5B20 6B            [ 4]  976 	ld	l, e
   5B21 7A            [ 4]  977 	ld	a,d
   5B22 67            [ 4]  978 	ld	h,a
   5B23 B3            [ 4]  979 	or	a,e
   5B24 20 F8         [12]  980 	jr	NZ,00117$
                            981 ;src/gui/gui.c:152: return iSelect;
   5B26 68            [ 4]  982 	ld	l,b
   5B27 DD F9         [10]  983 	ld	sp, ix
   5B29 DD E1         [14]  984 	pop	ix
   5B2B C9            [10]  985 	ret
                            986 ;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
                            987 ;	---------------------------------
                            988 ; Function drawWindow
                            989 ; ---------------------------------
   5B2C                     990 _drawWindow::
   5B2C DD E5         [15]  991 	push	ix
   5B2E DD 21 00 00   [14]  992 	ld	ix,#0
   5B32 DD 39         [15]  993 	add	ix,sp
   5B34 21 F5 FF      [10]  994 	ld	hl,#-11
   5B37 39            [11]  995 	add	hl,sp
   5B38 F9            [ 6]  996 	ld	sp,hl
                            997 ;src/gui/gui.c:166: u8 valueReturn=0;
   5B39 DD 36 F5 00   [19]  998 	ld	-11 (ix),#0x00
                            999 ;src/gui/gui.c:169: if(button == 0)
   5B3D DD 7E 07      [19] 1000 	ld	a,7 (ix)
   5B40 B7            [ 4] 1001 	or	a, a
   5B41 20 05         [12] 1002 	jr	NZ,00102$
                           1003 ;src/gui/gui.c:170: buttonTxt = "<OK>";
   5B43 11 B3 5C      [10] 1004 	ld	de,#___str_0
   5B46 18 03         [12] 1005 	jr	00103$
   5B48                    1006 00102$:
                           1007 ;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
   5B48 11 B8 5C      [10] 1008 	ld	de,#___str_1+0
   5B4B                    1009 00103$:
                           1010 ;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
   5B4B DD 4E 06      [19] 1011 	ld	c,6 (ix)
   5B4E 06 00         [ 7] 1012 	ld	b,#0x00
   5B50 03            [ 6] 1013 	inc	bc
   5B51 03            [ 6] 1014 	inc	bc
   5B52 69            [ 4] 1015 	ld	l, c
   5B53 60            [ 4] 1016 	ld	h, b
   5B54 29            [11] 1017 	add	hl, hl
   5B55 09            [11] 1018 	add	hl, bc
   5B56 29            [11] 1019 	add	hl, hl
   5B57 29            [11] 1020 	add	hl, hl
   5B58 C5            [11] 1021 	push	bc
   5B59 D5            [11] 1022 	push	de
   5B5A E5            [11] 1023 	push	hl
   5B5B 21 32 00      [10] 1024 	ld	hl,#0x0032
   5B5E E5            [11] 1025 	push	hl
   5B5F CD 64 57      [17] 1026 	call	_drawBoxM2
   5B62 F1            [10] 1027 	pop	af
   5B63 F1            [10] 1028 	pop	af
   5B64 D1            [10] 1029 	pop	de
   5B65 C1            [10] 1030 	pop	bc
                           1031 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5B66 69            [ 4] 1032 	ld	l, c
   5B67 60            [ 4] 1033 	ld	h, b
   5B68 29            [11] 1034 	add	hl, hl
   5B69 29            [11] 1035 	add	hl, hl
   5B6A 09            [11] 1036 	add	hl, bc
   5B6B 29            [11] 1037 	add	hl, hl
   5B6C 3E CA         [ 7] 1038 	ld	a,#0xCA
   5B6E 95            [ 4] 1039 	sub	a, l
   5B6F DD 77 FD      [19] 1040 	ld	-3 (ix),a
   5B72 3E 00         [ 7] 1041 	ld	a,#0x00
   5B74 9C            [ 4] 1042 	sbc	a, h
   5B75 DD 77 FE      [19] 1043 	ld	-2 (ix), a
   5B78 07            [ 4] 1044 	rlca
   5B79 E6 01         [ 7] 1045 	and	a,#0x01
   5B7B DD 77 FA      [19] 1046 	ld	-6 (ix),a
   5B7E DD 36 F6 00   [19] 1047 	ld	-10 (ix),#0x00
   5B82 DD 36 F9 00   [19] 1048 	ld	-7 (ix),#0x00
   5B86                    1049 00114$:
                           1050 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   5B86 DD 7E FD      [19] 1051 	ld	a,-3 (ix)
   5B89 C6 01         [ 7] 1052 	add	a, #0x01
   5B8B DD 77 F7      [19] 1053 	ld	-9 (ix),a
   5B8E DD 7E FE      [19] 1054 	ld	a,-2 (ix)
   5B91 CE 00         [ 7] 1055 	adc	a, #0x00
   5B93 DD 77 F8      [19] 1056 	ld	-8 (ix),a
                           1057 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5B96 DD 7E F6      [19] 1058 	ld	a,-10 (ix)
   5B99 DD 96 06      [19] 1059 	sub	a, 6 (ix)
   5B9C D2 26 5C      [10] 1060 	jp	NC,00104$
                           1061 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   5B9F DD 6E FD      [19] 1062 	ld	l,-3 (ix)
   5BA2 DD 66 FE      [19] 1063 	ld	h,-2 (ix)
   5BA5 DD 7E FA      [19] 1064 	ld	a,-6 (ix)
   5BA8 B7            [ 4] 1065 	or	a, a
   5BA9 28 04         [12] 1066 	jr	Z,00118$
   5BAB C1            [10] 1067 	pop	bc
   5BAC E1            [10] 1068 	pop	hl
   5BAD E5            [11] 1069 	push	hl
   5BAE C5            [11] 1070 	push	bc
   5BAF                    1071 00118$:
   5BAF CB 2C         [ 8] 1072 	sra	h
   5BB1 CB 1D         [ 8] 1073 	rr	l
   5BB3 DD 66 F9      [19] 1074 	ld	h,-7 (ix)
   5BB6 7D            [ 4] 1075 	ld	a,l
   5BB7 84            [ 4] 1076 	add	a, h
   5BB8 DD 77 FF      [19] 1077 	ld	-1 (ix),a
   5BBB DD 6E F6      [19] 1078 	ld	l,-10 (ix)
   5BBE 26 00         [ 7] 1079 	ld	h,#0x00
   5BC0 29            [11] 1080 	add	hl, hl
   5BC1 45            [ 4] 1081 	ld	b,l
   5BC2 4C            [ 4] 1082 	ld	c,h
   5BC3 DD 7E 04      [19] 1083 	ld	a,4 (ix)
   5BC6 80            [ 4] 1084 	add	a, b
   5BC7 DD 77 FB      [19] 1085 	ld	-5 (ix),a
   5BCA DD 7E 05      [19] 1086 	ld	a,5 (ix)
   5BCD 89            [ 4] 1087 	adc	a, c
   5BCE DD 77 FC      [19] 1088 	ld	-4 (ix),a
   5BD1 DD 6E FB      [19] 1089 	ld	l,-5 (ix)
   5BD4 DD 66 FC      [19] 1090 	ld	h,-4 (ix)
   5BD7 4E            [ 7] 1091 	ld	c,(hl)
   5BD8 23            [ 6] 1092 	inc	hl
   5BD9 46            [ 7] 1093 	ld	b,(hl)
   5BDA D5            [11] 1094 	push	de
   5BDB C5            [11] 1095 	push	bc
   5BDC CD 9B 6A      [17] 1096 	call	_strlen
   5BDF F1            [10] 1097 	pop	af
   5BE0 D1            [10] 1098 	pop	de
   5BE1 3E 52         [ 7] 1099 	ld	a,#0x52
   5BE3 95            [ 4] 1100 	sub	a, l
   5BE4 6F            [ 4] 1101 	ld	l,a
   5BE5 3E 00         [ 7] 1102 	ld	a,#0x00
   5BE7 9C            [ 4] 1103 	sbc	a, h
   5BE8 67            [ 4] 1104 	ld	h,a
   5BE9 CB 3C         [ 8] 1105 	srl	h
   5BEB CB 1D         [ 8] 1106 	rr	l
   5BED 45            [ 4] 1107 	ld	b,l
   5BEE D5            [11] 1108 	push	de
   5BEF DD 7E FF      [19] 1109 	ld	a,-1 (ix)
   5BF2 F5            [11] 1110 	push	af
   5BF3 33            [ 6] 1111 	inc	sp
   5BF4 C5            [11] 1112 	push	bc
   5BF5 33            [ 6] 1113 	inc	sp
   5BF6 21 00 C0      [10] 1114 	ld	hl,#0xC000
   5BF9 E5            [11] 1115 	push	hl
   5BFA CD A8 6B      [17] 1116 	call	_cpct_getScreenPtr
   5BFD D1            [10] 1117 	pop	de
   5BFE E5            [11] 1118 	push	hl
   5BFF FD E1         [14] 1119 	pop	iy
                           1120 ;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
   5C01 DD 6E FB      [19] 1121 	ld	l,-5 (ix)
   5C04 DD 66 FC      [19] 1122 	ld	h,-4 (ix)
   5C07 4E            [ 7] 1123 	ld	c,(hl)
   5C08 23            [ 6] 1124 	inc	hl
   5C09 46            [ 7] 1125 	ld	b,(hl)
   5C0A D5            [11] 1126 	push	de
   5C0B AF            [ 4] 1127 	xor	a, a
   5C0C F5            [11] 1128 	push	af
   5C0D 33            [ 6] 1129 	inc	sp
   5C0E FD E5         [15] 1130 	push	iy
   5C10 C5            [11] 1131 	push	bc
   5C11 CD 5B 68      [17] 1132 	call	_cpct_drawStringM2
   5C14 F1            [10] 1133 	pop	af
   5C15 F1            [10] 1134 	pop	af
   5C16 33            [ 6] 1135 	inc	sp
   5C17 D1            [10] 1136 	pop	de
                           1137 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5C18 DD 7E F9      [19] 1138 	ld	a,-7 (ix)
   5C1B C6 0A         [ 7] 1139 	add	a, #0x0A
   5C1D DD 77 F9      [19] 1140 	ld	-7 (ix),a
   5C20 DD 34 F6      [23] 1141 	inc	-10 (ix)
   5C23 C3 86 5B      [10] 1142 	jp	00114$
   5C26                    1143 00104$:
                           1144 ;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   5C26 DD 46 FD      [19] 1145 	ld	b,-3 (ix)
   5C29 DD 66 FE      [19] 1146 	ld	h,-2 (ix)
   5C2C DD 7E FA      [19] 1147 	ld	a,-6 (ix)
   5C2F B7            [ 4] 1148 	or	a, a
   5C30 28 06         [12] 1149 	jr	Z,00119$
   5C32 DD 46 F7      [19] 1150 	ld	b,-9 (ix)
   5C35 DD 66 F8      [19] 1151 	ld	h,-8 (ix)
   5C38                    1152 00119$:
   5C38 CB 2C         [ 8] 1153 	sra	h
   5C3A CB 18         [ 8] 1154 	rr	b
   5C3C DD 4E 06      [19] 1155 	ld	c,6 (ix)
   5C3F 0C            [ 4] 1156 	inc	c
   5C40 79            [ 4] 1157 	ld	a,c
   5C41 87            [ 4] 1158 	add	a, a
   5C42 87            [ 4] 1159 	add	a, a
   5C43 81            [ 4] 1160 	add	a, c
   5C44 87            [ 4] 1161 	add	a, a
   5C45 67            [ 4] 1162 	ld	h, a
   5C46 80            [ 4] 1163 	add	a,b
   5C47 47            [ 4] 1164 	ld	b,a
   5C48 C5            [11] 1165 	push	bc
   5C49 D5            [11] 1166 	push	de
   5C4A D5            [11] 1167 	push	de
   5C4B CD 9B 6A      [17] 1168 	call	_strlen
   5C4E F1            [10] 1169 	pop	af
   5C4F D1            [10] 1170 	pop	de
   5C50 C1            [10] 1171 	pop	bc
   5C51 3E 52         [ 7] 1172 	ld	a,#0x52
   5C53 95            [ 4] 1173 	sub	a, l
   5C54 6F            [ 4] 1174 	ld	l,a
   5C55 3E 00         [ 7] 1175 	ld	a,#0x00
   5C57 9C            [ 4] 1176 	sbc	a, h
   5C58 67            [ 4] 1177 	ld	h,a
   5C59 CB 3C         [ 8] 1178 	srl	h
   5C5B CB 1D         [ 8] 1179 	rr	l
   5C5D 7D            [ 4] 1180 	ld	a,l
   5C5E D5            [11] 1181 	push	de
   5C5F C5            [11] 1182 	push	bc
   5C60 33            [ 6] 1183 	inc	sp
   5C61 F5            [11] 1184 	push	af
   5C62 33            [ 6] 1185 	inc	sp
   5C63 21 00 C0      [10] 1186 	ld	hl,#0xC000
   5C66 E5            [11] 1187 	push	hl
   5C67 CD A8 6B      [17] 1188 	call	_cpct_getScreenPtr
   5C6A D1            [10] 1189 	pop	de
                           1190 ;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
   5C6B 4D            [ 4] 1191 	ld	c, l
   5C6C 44            [ 4] 1192 	ld	b, h
   5C6D AF            [ 4] 1193 	xor	a, a
   5C6E F5            [11] 1194 	push	af
   5C6F 33            [ 6] 1195 	inc	sp
   5C70 C5            [11] 1196 	push	bc
   5C71 D5            [11] 1197 	push	de
   5C72 CD 5B 68      [17] 1198 	call	_cpct_drawStringM2
   5C75 F1            [10] 1199 	pop	af
   5C76 F1            [10] 1200 	pop	af
   5C77 33            [ 6] 1201 	inc	sp
                           1202 ;src/gui/gui.c:186: do{
   5C78                    1203 00110$:
                           1204 ;src/gui/gui.c:187: cpct_scanKeyboard(); 
   5C78 CD C8 6B      [17] 1205 	call	_cpct_scanKeyboard
                           1206 ;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
   5C7B 21 02 04      [10] 1207 	ld	hl,#0x0402
   5C7E CD 24 68      [17] 1208 	call	_cpct_isKeyPressed
   5C81 7D            [ 4] 1209 	ld	a,l
   5C82 B7            [ 4] 1210 	or	a, a
   5C83 28 04         [12] 1211 	jr	Z,00106$
                           1212 ;src/gui/gui.c:190: valueReturn=1;
   5C85 DD 36 F5 01   [19] 1213 	ld	-11 (ix),#0x01
   5C89                    1214 00106$:
                           1215 ;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
   5C89 21 08 04      [10] 1216 	ld	hl,#0x0408
   5C8C CD 24 68      [17] 1217 	call	_cpct_isKeyPressed
   5C8F 7D            [ 4] 1218 	ld	a,l
   5C90 B7            [ 4] 1219 	or	a, a
   5C91 28 04         [12] 1220 	jr	Z,00111$
                           1221 ;src/gui/gui.c:193: valueReturn=0;
   5C93 DD 36 F5 00   [19] 1222 	ld	-11 (ix),#0x00
   5C97                    1223 00111$:
                           1224 ;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   5C97 21 02 04      [10] 1225 	ld	hl,#0x0402
   5C9A CD 24 68      [17] 1226 	call	_cpct_isKeyPressed
   5C9D 7D            [ 4] 1227 	ld	a,l
   5C9E B7            [ 4] 1228 	or	a, a
   5C9F 20 0A         [12] 1229 	jr	NZ,00112$
   5CA1 21 08 04      [10] 1230 	ld	hl,#0x0408
   5CA4 CD 24 68      [17] 1231 	call	_cpct_isKeyPressed
   5CA7 7D            [ 4] 1232 	ld	a,l
   5CA8 B7            [ 4] 1233 	or	a, a
   5CA9 28 CD         [12] 1234 	jr	Z,00110$
   5CAB                    1235 00112$:
                           1236 ;src/gui/gui.c:197: return valueReturn;
   5CAB DD 6E F5      [19] 1237 	ld	l,-11 (ix)
   5CAE DD F9         [10] 1238 	ld	sp, ix
   5CB0 DD E1         [14] 1239 	pop	ix
   5CB2 C9            [10] 1240 	ret
   5CB3                    1241 ___str_0:
   5CB3 3C 4F 4B 3E        1242 	.ascii "<OK>"
   5CB7 00                 1243 	.db 0x00
   5CB8                    1244 ___str_1:
   5CB8 3C 4F 4B 3E 20 20  1245 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   5CC6 00                 1246 	.db 0x00
                           1247 	.area _CODE
                           1248 	.area _INITIALIZER
                           1249 	.area _CABS (ABS)
