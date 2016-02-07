                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Feb  7 16:09:18 2016
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
   5731                      66 _putM0::
                             67 ;src/gui/gui.c:5: cpct_setVideoMode(0);
   5731 AF            [ 4]   68 	xor	a, a
   5732 F5            [11]   69 	push	af
   5733 33            [ 6]   70 	inc	sp
   5734 CD 47 6C      [17]   71 	call	_cpct_setVideoMode
   5737 33            [ 6]   72 	inc	sp
                             73 ;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
   5738 21 F7 5D      [10]   74 	ld	hl,#_paletteTrains
   573B 01 10 00      [10]   75 	ld	bc,#0x0010
   573E C5            [11]   76 	push	bc
   573F E5            [11]   77 	push	hl
   5740 CD 3D 69      [17]   78 	call	_cpct_setPalette
   5743 C9            [10]   79 	ret
                             80 ;src/gui/gui.c:10: void putM1(void)
                             81 ;	---------------------------------
                             82 ; Function putM1
                             83 ; ---------------------------------
   5744                      84 _putM1::
                             85 ;src/gui/gui.c:12: cpct_setVideoMode(1);
   5744 3E 01         [ 7]   86 	ld	a,#0x01
   5746 F5            [11]   87 	push	af
   5747 33            [ 6]   88 	inc	sp
   5748 CD 47 6C      [17]   89 	call	_cpct_setVideoMode
   574B 33            [ 6]   90 	inc	sp
                             91 ;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
   574C 21 07 5E      [10]   92 	ld	hl,#_paletteMenusM1
   574F 01 04 00      [10]   93 	ld	bc,#0x0004
   5752 C5            [11]   94 	push	bc
   5753 E5            [11]   95 	push	hl
   5754 CD 3D 69      [17]   96 	call	_cpct_setPalette
   5757 C9            [10]   97 	ret
                             98 ;src/gui/gui.c:17: void putM2(void)
                             99 ;	---------------------------------
                            100 ; Function putM2
                            101 ; ---------------------------------
   5758                     102 _putM2::
                            103 ;src/gui/gui.c:19: cpct_setVideoMode(2);
   5758 3E 02         [ 7]  104 	ld	a,#0x02
   575A F5            [11]  105 	push	af
   575B 33            [ 6]  106 	inc	sp
   575C CD 47 6C      [17]  107 	call	_cpct_setVideoMode
   575F 33            [ 6]  108 	inc	sp
                            109 ;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
   5760 21 0B 5E      [10]  110 	ld	hl,#_paletteMenusM2
   5763 01 02 00      [10]  111 	ld	bc,#0x0002
   5766 C5            [11]  112 	push	bc
   5767 E5            [11]  113 	push	hl
   5768 CD 3D 69      [17]  114 	call	_cpct_setPalette
                            115 ;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
   576B 21 00 40      [10]  116 	ld	hl,#0x4000
   576E E5            [11]  117 	push	hl
   576F 3E FF         [ 7]  118 	ld	a,#0xFF
   5771 F5            [11]  119 	push	af
   5772 33            [ 6]  120 	inc	sp
   5773 26 C0         [ 7]  121 	ld	h, #0xC0
   5775 E5            [11]  122 	push	hl
   5776 CD 75 6C      [17]  123 	call	_cpct_memset
   5779 C9            [10]  124 	ret
                            125 ;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
                            126 ;	---------------------------------
                            127 ; Function drawBoxM0
                            128 ; ---------------------------------
   577A                     129 _drawBoxM0::
   577A DD E5         [15]  130 	push	ix
   577C DD 21 00 00   [14]  131 	ld	ix,#0
   5780 DD 39         [15]  132 	add	ix,sp
   5782 21 F9 FF      [10]  133 	ld	hl,#-7
   5785 39            [11]  134 	add	hl,sp
   5786 F9            [ 6]  135 	ld	sp,hl
                            136 ;src/gui/gui.c:30: int left = (80-width_)/2;
   5787 3E 50         [ 7]  137 	ld	a,#0x50
   5789 DD 96 04      [19]  138 	sub	a, 4 (ix)
   578C 57            [ 4]  139 	ld	d,a
   578D 3E 00         [ 7]  140 	ld	a,#0x00
   578F DD 9E 05      [19]  141 	sbc	a, 5 (ix)
   5792 5F            [ 4]  142 	ld	e,a
   5793 6A            [ 4]  143 	ld	l, d
   5794 63            [ 4]  144 	ld	h, e
   5795 CB 7B         [ 8]  145 	bit	7, e
   5797 28 03         [12]  146 	jr	Z,00103$
   5799 6A            [ 4]  147 	ld	l, d
   579A 63            [ 4]  148 	ld	h, e
   579B 23            [ 6]  149 	inc	hl
   579C                     150 00103$:
   579C DD 75 F9      [19]  151 	ld	-7 (ix),l
   579F DD 74 FA      [19]  152 	ld	-6 (ix),h
   57A2 DD CB FA 2E   [23]  153 	sra	-6 (ix)
   57A6 DD CB F9 1E   [23]  154 	rr	-7 (ix)
                            155 ;src/gui/gui.c:31: int top = (200-height_)/2;
   57AA 3E C8         [ 7]  156 	ld	a,#0xC8
   57AC DD 96 06      [19]  157 	sub	a, 6 (ix)
   57AF 4F            [ 4]  158 	ld	c,a
   57B0 3E 00         [ 7]  159 	ld	a,#0x00
   57B2 DD 9E 07      [19]  160 	sbc	a, 7 (ix)
   57B5 47            [ 4]  161 	ld	b,a
   57B6 61            [ 4]  162 	ld	h,c
   57B7 50            [ 4]  163 	ld	d,b
   57B8 CB 78         [ 8]  164 	bit	7, b
   57BA 28 03         [12]  165 	jr	Z,00104$
   57BC 03            [ 6]  166 	inc	bc
   57BD 61            [ 4]  167 	ld	h,c
   57BE 50            [ 4]  168 	ld	d,b
   57BF                     169 00104$:
   57BF 5C            [ 4]  170 	ld	e, h
   57C0 CB 2A         [ 8]  171 	sra	d
   57C2 CB 1B         [ 8]  172 	rr	e
                            173 ;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
   57C4 D5            [11]  174 	push	de
   57C5 21 09 09      [10]  175 	ld	hl,#0x0909
   57C8 E5            [11]  176 	push	hl
   57C9 CD 59 6C      [17]  177 	call	_cpct_px2byteM0
   57CC 65            [ 4]  178 	ld	h,l
   57CD 01 00 40      [10]  179 	ld	bc,#0x4000
   57D0 C5            [11]  180 	push	bc
   57D1 E5            [11]  181 	push	hl
   57D2 33            [ 6]  182 	inc	sp
   57D3 21 00 C0      [10]  183 	ld	hl,#0xC000
   57D6 E5            [11]  184 	push	hl
   57D7 CD 75 6C      [17]  185 	call	_cpct_memset
   57DA D1            [10]  186 	pop	de
                            187 ;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   57DB DD 73 FF      [19]  188 	ld	-1 (ix), e
   57DE 63            [ 4]  189 	ld	h, e
   57DF 24            [ 4]  190 	inc	h
   57E0 24            [ 4]  191 	inc	h
   57E1 24            [ 4]  192 	inc	h
   57E2 24            [ 4]  193 	inc	h
   57E3 DD 7E F9      [19]  194 	ld	a,-7 (ix)
   57E6 3C            [ 4]  195 	inc	a
   57E7 DD 77 FC      [19]  196 	ld	-4 (ix),a
   57EA D5            [11]  197 	push	de
   57EB E5            [11]  198 	push	hl
   57EC 33            [ 6]  199 	inc	sp
   57ED DD 7E FC      [19]  200 	ld	a,-4 (ix)
   57F0 F5            [11]  201 	push	af
   57F1 33            [ 6]  202 	inc	sp
   57F2 21 00 C0      [10]  203 	ld	hl,#0xC000
   57F5 E5            [11]  204 	push	hl
   57F6 CD A9 6D      [17]  205 	call	_cpct_getScreenPtr
   57F9 D1            [10]  206 	pop	de
   57FA 4D            [ 4]  207 	ld	c, l
   57FB 44            [ 4]  208 	ld	b, h
                            209 ;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   57FC DD 7E 06      [19]  210 	ld	a,6 (ix)
   57FF DD 77 FB      [19]  211 	ld	-5 (ix),a
   5802 DD 7E 04      [19]  212 	ld	a,4 (ix)
   5805 DD 77 FD      [19]  213 	ld	-3 (ix),a
   5808 C5            [11]  214 	push	bc
   5809 D5            [11]  215 	push	de
   580A 21 02 02      [10]  216 	ld	hl,#0x0202
   580D E5            [11]  217 	push	hl
   580E CD 59 6C      [17]  218 	call	_cpct_px2byteM0
   5811 DD 75 FE      [19]  219 	ld	-2 (ix),l
   5814 D1            [10]  220 	pop	de
   5815 C1            [10]  221 	pop	bc
   5816 D5            [11]  222 	push	de
   5817 DD 66 FB      [19]  223 	ld	h,-5 (ix)
   581A DD 6E FD      [19]  224 	ld	l,-3 (ix)
   581D E5            [11]  225 	push	hl
   581E DD 7E FE      [19]  226 	ld	a,-2 (ix)
   5821 F5            [11]  227 	push	af
   5822 33            [ 6]  228 	inc	sp
   5823 C5            [11]  229 	push	bc
   5824 CD F0 6C      [17]  230 	call	_cpct_drawSolidBox
   5827 F1            [10]  231 	pop	af
   5828 F1            [10]  232 	pop	af
   5829 33            [ 6]  233 	inc	sp
   582A D1            [10]  234 	pop	de
                            235 ;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   582B 63            [ 4]  236 	ld	h,e
   582C DD 56 F9      [19]  237 	ld	d,-7 (ix)
   582F E5            [11]  238 	push	hl
   5830 33            [ 6]  239 	inc	sp
   5831 D5            [11]  240 	push	de
   5832 33            [ 6]  241 	inc	sp
   5833 21 00 C0      [10]  242 	ld	hl,#0xC000
   5836 E5            [11]  243 	push	hl
   5837 CD A9 6D      [17]  244 	call	_cpct_getScreenPtr
                            245 ;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   583A E5            [11]  246 	push	hl
   583B 21 06 06      [10]  247 	ld	hl,#0x0606
   583E E5            [11]  248 	push	hl
   583F CD 59 6C      [17]  249 	call	_cpct_px2byteM0
   5842 45            [ 4]  250 	ld	b,l
   5843 D1            [10]  251 	pop	de
   5844 DD 66 FB      [19]  252 	ld	h,-5 (ix)
   5847 DD 6E FD      [19]  253 	ld	l,-3 (ix)
   584A E5            [11]  254 	push	hl
   584B C5            [11]  255 	push	bc
   584C 33            [ 6]  256 	inc	sp
   584D D5            [11]  257 	push	de
   584E CD F0 6C      [17]  258 	call	_cpct_drawSolidBox
   5851 F1            [10]  259 	pop	af
   5852 F1            [10]  260 	pop	af
   5853 33            [ 6]  261 	inc	sp
                            262 ;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   5854 DD 66 FF      [19]  263 	ld	h,-1 (ix)
   5857 24            [ 4]  264 	inc	h
   5858 24            [ 4]  265 	inc	h
   5859 E5            [11]  266 	push	hl
   585A 33            [ 6]  267 	inc	sp
   585B DD 7E FC      [19]  268 	ld	a,-4 (ix)
   585E F5            [11]  269 	push	af
   585F 33            [ 6]  270 	inc	sp
   5860 21 00 C0      [10]  271 	ld	hl,#0xC000
   5863 E5            [11]  272 	push	hl
   5864 CD A9 6D      [17]  273 	call	_cpct_getScreenPtr
   5867 EB            [ 4]  274 	ex	de,hl
                            275 ;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   5868 DD 7E 06      [19]  276 	ld	a,6 (ix)
   586B C6 FC         [ 7]  277 	add	a,#0xFC
   586D 4F            [ 4]  278 	ld	c,a
   586E DD 46 04      [19]  279 	ld	b,4 (ix)
   5871 05            [ 4]  280 	dec	b
   5872 05            [ 4]  281 	dec	b
   5873 C5            [11]  282 	push	bc
   5874 D5            [11]  283 	push	de
   5875 21 00 00      [10]  284 	ld	hl,#0x0000
   5878 E5            [11]  285 	push	hl
   5879 CD 59 6C      [17]  286 	call	_cpct_px2byteM0
   587C DD 75 FE      [19]  287 	ld	-2 (ix),l
   587F D1            [10]  288 	pop	de
   5880 C1            [10]  289 	pop	bc
   5881 79            [ 4]  290 	ld	a,c
   5882 F5            [11]  291 	push	af
   5883 33            [ 6]  292 	inc	sp
   5884 C5            [11]  293 	push	bc
   5885 33            [ 6]  294 	inc	sp
   5886 DD 7E FE      [19]  295 	ld	a,-2 (ix)
   5889 F5            [11]  296 	push	af
   588A 33            [ 6]  297 	inc	sp
   588B D5            [11]  298 	push	de
   588C CD F0 6C      [17]  299 	call	_cpct_drawSolidBox
   588F DD F9         [10]  300 	ld	sp,ix
   5891 DD E1         [14]  301 	pop	ix
   5893 C9            [10]  302 	ret
                            303 ;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
                            304 ;	---------------------------------
                            305 ; Function drawBoxM2
                            306 ; ---------------------------------
   5894                     307 _drawBoxM2::
   5894 DD E5         [15]  308 	push	ix
   5896 DD 21 00 00   [14]  309 	ld	ix,#0
   589A DD 39         [15]  310 	add	ix,sp
   589C 21 FA FF      [10]  311 	ld	hl,#-6
   589F 39            [11]  312 	add	hl,sp
   58A0 F9            [ 6]  313 	ld	sp,hl
                            314 ;src/gui/gui.c:54: int left = (80-width_)/2;
   58A1 3E 50         [ 7]  315 	ld	a,#0x50
   58A3 DD 96 04      [19]  316 	sub	a, 4 (ix)
   58A6 4F            [ 4]  317 	ld	c,a
   58A7 3E 00         [ 7]  318 	ld	a,#0x00
   58A9 DD 9E 05      [19]  319 	sbc	a, 5 (ix)
   58AC 47            [ 4]  320 	ld	b,a
   58AD 61            [ 4]  321 	ld	h,c
   58AE 50            [ 4]  322 	ld	d,b
   58AF CB 78         [ 8]  323 	bit	7, b
   58B1 28 03         [12]  324 	jr	Z,00103$
   58B3 03            [ 6]  325 	inc	bc
   58B4 61            [ 4]  326 	ld	h,c
   58B5 50            [ 4]  327 	ld	d,b
   58B6                     328 00103$:
   58B6 5C            [ 4]  329 	ld	e, h
   58B7 CB 2A         [ 8]  330 	sra	d
   58B9 CB 1B         [ 8]  331 	rr	e
                            332 ;src/gui/gui.c:55: int top = (200-height_)/2;
   58BB 3E C8         [ 7]  333 	ld	a,#0xC8
   58BD DD 96 06      [19]  334 	sub	a, 6 (ix)
   58C0 4F            [ 4]  335 	ld	c,a
   58C1 3E 00         [ 7]  336 	ld	a,#0x00
   58C3 DD 9E 07      [19]  337 	sbc	a, 7 (ix)
   58C6 47            [ 4]  338 	ld	b,a
   58C7 61            [ 4]  339 	ld	h,c
   58C8 68            [ 4]  340 	ld	l,b
   58C9 CB 78         [ 8]  341 	bit	7, b
   58CB 28 03         [12]  342 	jr	Z,00104$
   58CD 03            [ 6]  343 	inc	bc
   58CE 61            [ 4]  344 	ld	h,c
   58CF 68            [ 4]  345 	ld	l,b
   58D0                     346 00104$:
   58D0 DD 74 FA      [19]  347 	ld	-6 (ix),h
   58D3 DD 75 FB      [19]  348 	ld	-5 (ix),l
   58D6 DD CB FB 2E   [23]  349 	sra	-5 (ix)
   58DA DD CB FA 1E   [23]  350 	rr	-6 (ix)
                            351 ;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   58DE DD 7E FA      [19]  352 	ld	a,-6 (ix)
   58E1 DD 77 FF      [19]  353 	ld	-1 (ix), a
   58E4 C6 05         [ 7]  354 	add	a, #0x05
   58E6 4F            [ 4]  355 	ld	c,a
   58E7 DD 73 FC      [19]  356 	ld	-4 (ix), e
   58EA 63            [ 4]  357 	ld	h, e
   58EB 24            [ 4]  358 	inc	h
   58EC 24            [ 4]  359 	inc	h
   58ED D5            [11]  360 	push	de
   58EE 79            [ 4]  361 	ld	a,c
   58EF F5            [11]  362 	push	af
   58F0 33            [ 6]  363 	inc	sp
   58F1 E5            [11]  364 	push	hl
   58F2 33            [ 6]  365 	inc	sp
   58F3 21 00 C0      [10]  366 	ld	hl,#0xC000
   58F6 E5            [11]  367 	push	hl
   58F7 CD A9 6D      [17]  368 	call	_cpct_getScreenPtr
   58FA D1            [10]  369 	pop	de
                            370 ;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   58FB DD 46 06      [19]  371 	ld	b,6 (ix)
   58FE DD 4E 04      [19]  372 	ld	c,4 (ix)
   5901 79            [ 4]  373 	ld	a,c
   5902 C6 FF         [ 7]  374 	add	a,#0xFF
   5904 DD 75 FD      [19]  375 	ld	-3 (ix),l
   5907 DD 74 FE      [19]  376 	ld	-2 (ix),h
   590A C5            [11]  377 	push	bc
   590B D5            [11]  378 	push	de
   590C C5            [11]  379 	push	bc
   590D 33            [ 6]  380 	inc	sp
   590E F5            [11]  381 	push	af
   590F 33            [ 6]  382 	inc	sp
   5910 AF            [ 4]  383 	xor	a, a
   5911 F5            [11]  384 	push	af
   5912 33            [ 6]  385 	inc	sp
   5913 DD 6E FD      [19]  386 	ld	l,-3 (ix)
   5916 DD 66 FE      [19]  387 	ld	h,-2 (ix)
   5919 E5            [11]  388 	push	hl
   591A CD F0 6C      [17]  389 	call	_cpct_drawSolidBox
   591D F1            [10]  390 	pop	af
   591E F1            [10]  391 	pop	af
   591F 33            [ 6]  392 	inc	sp
   5920 D1            [10]  393 	pop	de
   5921 C1            [10]  394 	pop	bc
                            395 ;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5922 DD 66 FA      [19]  396 	ld	h,-6 (ix)
   5925 53            [ 4]  397 	ld	d,e
   5926 C5            [11]  398 	push	bc
   5927 E5            [11]  399 	push	hl
   5928 33            [ 6]  400 	inc	sp
   5929 D5            [11]  401 	push	de
   592A 33            [ 6]  402 	inc	sp
   592B 21 00 C0      [10]  403 	ld	hl,#0xC000
   592E E5            [11]  404 	push	hl
   592F CD A9 6D      [17]  405 	call	_cpct_getScreenPtr
   5932 C1            [10]  406 	pop	bc
                            407 ;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   5933 DD 7E 04      [19]  408 	ld	a,4 (ix)
   5936 EB            [ 4]  409 	ex	de,hl
   5937 C5            [11]  410 	push	bc
   5938 C5            [11]  411 	push	bc
   5939 33            [ 6]  412 	inc	sp
   593A 47            [ 4]  413 	ld	b,a
   593B 0E F8         [ 7]  414 	ld	c,#0xF8
   593D C5            [11]  415 	push	bc
   593E D5            [11]  416 	push	de
   593F CD F0 6C      [17]  417 	call	_cpct_drawSolidBox
   5942 F1            [10]  418 	pop	af
   5943 F1            [10]  419 	pop	af
   5944 33            [ 6]  420 	inc	sp
   5945 C1            [10]  421 	pop	bc
                            422 ;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   5946 DD 66 FF      [19]  423 	ld	h,-1 (ix)
   5949 24            [ 4]  424 	inc	h
   594A DD 56 FC      [19]  425 	ld	d,-4 (ix)
   594D 14            [ 4]  426 	inc	d
   594E C5            [11]  427 	push	bc
   594F E5            [11]  428 	push	hl
   5950 33            [ 6]  429 	inc	sp
   5951 D5            [11]  430 	push	de
   5952 33            [ 6]  431 	inc	sp
   5953 21 00 C0      [10]  432 	ld	hl,#0xC000
   5956 E5            [11]  433 	push	hl
   5957 CD A9 6D      [17]  434 	call	_cpct_getScreenPtr
   595A C1            [10]  435 	pop	bc
   595B 5D            [ 4]  436 	ld	e, l
   595C 54            [ 4]  437 	ld	d, h
                            438 ;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   595D DD 66 06      [19]  439 	ld	h,6 (ix)
   5960 25            [ 4]  440 	dec	h
   5961 25            [ 4]  441 	dec	h
   5962 79            [ 4]  442 	ld	a,c
   5963 C6 FE         [ 7]  443 	add	a,#0xFE
   5965 E5            [11]  444 	push	hl
   5966 33            [ 6]  445 	inc	sp
   5967 47            [ 4]  446 	ld	b,a
   5968 0E FF         [ 7]  447 	ld	c,#0xFF
   596A C5            [11]  448 	push	bc
   596B D5            [11]  449 	push	de
   596C CD F0 6C      [17]  450 	call	_cpct_drawSolidBox
   596F DD F9         [10]  451 	ld	sp,ix
   5971 DD E1         [14]  452 	pop	ix
   5973 C9            [10]  453 	ret
                            454 ;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            455 ;	---------------------------------
                            456 ; Function EraseMenuEntry
                            457 ; ---------------------------------
   5974                     458 _EraseMenuEntry::
   5974 DD E5         [15]  459 	push	ix
   5976 DD 21 00 00   [14]  460 	ld	ix,#0
   597A DD 39         [15]  461 	add	ix,sp
   597C 3B            [ 6]  462 	dec	sp
                            463 ;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   597D DD 4E 06      [19]  464 	ld	c,6 (ix)
   5980 06 00         [ 7]  465 	ld	b,#0x00
   5982 69            [ 4]  466 	ld	l, c
   5983 60            [ 4]  467 	ld	h, b
   5984 29            [11]  468 	add	hl, hl
   5985 29            [11]  469 	add	hl, hl
   5986 09            [11]  470 	add	hl, bc
   5987 29            [11]  471 	add	hl, hl
   5988 4D            [ 4]  472 	ld	c,l
   5989 44            [ 4]  473 	ld	b,h
   598A 3E C9         [ 7]  474 	ld	a,#0xC9
   598C 91            [ 4]  475 	sub	a, c
   598D 57            [ 4]  476 	ld	d,a
   598E 3E 00         [ 7]  477 	ld	a,#0x00
   5990 98            [ 4]  478 	sbc	a, b
   5991 5F            [ 4]  479 	ld	e,a
   5992 6A            [ 4]  480 	ld	l, d
   5993 63            [ 4]  481 	ld	h, e
   5994 CB 7B         [ 8]  482 	bit	7, e
   5996 28 03         [12]  483 	jr	Z,00103$
   5998 6A            [ 4]  484 	ld	l, d
   5999 63            [ 4]  485 	ld	h, e
   599A 23            [ 6]  486 	inc	hl
   599B                     487 00103$:
   599B CB 2C         [ 8]  488 	sra	h
   599D CB 1D         [ 8]  489 	rr	l
   599F 55            [ 4]  490 	ld	d,l
   59A0 DD 7E 07      [19]  491 	ld	a,7 (ix)
   59A3 5F            [ 4]  492 	ld	e,a
   59A4 87            [ 4]  493 	add	a, a
   59A5 87            [ 4]  494 	add	a, a
   59A6 83            [ 4]  495 	add	a, e
   59A7 87            [ 4]  496 	add	a, a
   59A8 DD 77 FF      [19]  497 	ld	-1 (ix),a
   59AB 7A            [ 4]  498 	ld	a,d
   59AC DD 86 FF      [19]  499 	add	a, -1 (ix)
   59AF C5            [11]  500 	push	bc
   59B0 57            [ 4]  501 	ld	d,a
   59B1 1E 20         [ 7]  502 	ld	e,#0x20
   59B3 D5            [11]  503 	push	de
   59B4 21 00 C0      [10]  504 	ld	hl,#0xC000
   59B7 E5            [11]  505 	push	hl
   59B8 CD A9 6D      [17]  506 	call	_cpct_getScreenPtr
   59BB C1            [10]  507 	pop	bc
                            508 ;src/gui/gui.c:76: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   59BC EB            [ 4]  509 	ex	de,hl
   59BD C5            [11]  510 	push	bc
   59BE 21 11 0A      [10]  511 	ld	hl,#0x0A11
   59C1 E5            [11]  512 	push	hl
   59C2 3E FF         [ 7]  513 	ld	a,#0xFF
   59C4 F5            [11]  514 	push	af
   59C5 33            [ 6]  515 	inc	sp
   59C6 D5            [11]  516 	push	de
   59C7 CD F0 6C      [17]  517 	call	_cpct_drawSolidBox
   59CA F1            [10]  518 	pop	af
   59CB F1            [10]  519 	pop	af
   59CC 33            [ 6]  520 	inc	sp
   59CD C1            [10]  521 	pop	bc
                            522 ;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   59CE 3E CA         [ 7]  523 	ld	a,#0xCA
   59D0 91            [ 4]  524 	sub	a, c
   59D1 57            [ 4]  525 	ld	d,a
   59D2 3E 00         [ 7]  526 	ld	a,#0x00
   59D4 98            [ 4]  527 	sbc	a, b
   59D5 5F            [ 4]  528 	ld	e,a
   59D6 6A            [ 4]  529 	ld	l, d
   59D7 63            [ 4]  530 	ld	h, e
   59D8 CB 7B         [ 8]  531 	bit	7, e
   59DA 28 03         [12]  532 	jr	Z,00104$
   59DC 6A            [ 4]  533 	ld	l, d
   59DD 63            [ 4]  534 	ld	h, e
   59DE 23            [ 6]  535 	inc	hl
   59DF                     536 00104$:
   59DF CB 2C         [ 8]  537 	sra	h
   59E1 CB 1D         [ 8]  538 	rr	l
   59E3 7D            [ 4]  539 	ld	a,l
   59E4 DD 86 FF      [19]  540 	add	a, -1 (ix)
   59E7 4F            [ 4]  541 	ld	c,a
   59E8 DD 6E 07      [19]  542 	ld	l,7 (ix)
   59EB 26 00         [ 7]  543 	ld	h,#0x00
   59ED 29            [11]  544 	add	hl, hl
   59EE EB            [ 4]  545 	ex	de,hl
   59EF DD 6E 04      [19]  546 	ld	l,4 (ix)
   59F2 DD 66 05      [19]  547 	ld	h,5 (ix)
   59F5 19            [11]  548 	add	hl,de
   59F6 E5            [11]  549 	push	hl
   59F7 5E            [ 7]  550 	ld	e,(hl)
   59F8 23            [ 6]  551 	inc	hl
   59F9 56            [ 7]  552 	ld	d,(hl)
   59FA C5            [11]  553 	push	bc
   59FB D5            [11]  554 	push	de
   59FC CD 9C 6C      [17]  555 	call	_strlen
   59FF F1            [10]  556 	pop	af
   5A00 EB            [ 4]  557 	ex	de,hl
   5A01 C1            [10]  558 	pop	bc
   5A02 E1            [10]  559 	pop	hl
   5A03 3E 52         [ 7]  560 	ld	a,#0x52
   5A05 93            [ 4]  561 	sub	a, e
   5A06 5F            [ 4]  562 	ld	e,a
   5A07 3E 00         [ 7]  563 	ld	a,#0x00
   5A09 9A            [ 4]  564 	sbc	a, d
   5A0A 57            [ 4]  565 	ld	d,a
   5A0B CB 3A         [ 8]  566 	srl	d
   5A0D CB 1B         [ 8]  567 	rr	e
   5A0F E5            [11]  568 	push	hl
   5A10 51            [ 4]  569 	ld	d, c
   5A11 D5            [11]  570 	push	de
   5A12 01 00 C0      [10]  571 	ld	bc,#0xC000
   5A15 C5            [11]  572 	push	bc
   5A16 CD A9 6D      [17]  573 	call	_cpct_getScreenPtr
   5A19 4D            [ 4]  574 	ld	c,l
   5A1A 44            [ 4]  575 	ld	b,h
   5A1B E1            [10]  576 	pop	hl
                            577 ;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   5A1C 5E            [ 7]  578 	ld	e,(hl)
   5A1D 23            [ 6]  579 	inc	hl
   5A1E 56            [ 7]  580 	ld	d,(hl)
   5A1F AF            [ 4]  581 	xor	a, a
   5A20 F5            [11]  582 	push	af
   5A21 33            [ 6]  583 	inc	sp
   5A22 C5            [11]  584 	push	bc
   5A23 D5            [11]  585 	push	de
   5A24 CD 8B 69      [17]  586 	call	_cpct_drawStringM2
   5A27 F1            [10]  587 	pop	af
   5A28 F1            [10]  588 	pop	af
   5A29 33            [ 6]  589 	inc	sp
   5A2A 33            [ 6]  590 	inc	sp
   5A2B DD E1         [14]  591 	pop	ix
   5A2D C9            [10]  592 	ret
                            593 ;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            594 ;	---------------------------------
                            595 ; Function drawMenuEntry
                            596 ; ---------------------------------
   5A2E                     597 _drawMenuEntry::
   5A2E DD E5         [15]  598 	push	ix
   5A30 DD 21 00 00   [14]  599 	ld	ix,#0
   5A34 DD 39         [15]  600 	add	ix,sp
   5A36 21 FA FF      [10]  601 	ld	hl,#-6
   5A39 39            [11]  602 	add	hl,sp
   5A3A F9            [ 6]  603 	ld	sp,hl
                            604 ;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5A3B DD 4E 06      [19]  605 	ld	c,6 (ix)
   5A3E 06 00         [ 7]  606 	ld	b,#0x00
   5A40 69            [ 4]  607 	ld	l, c
   5A41 60            [ 4]  608 	ld	h, b
   5A42 29            [11]  609 	add	hl, hl
   5A43 29            [11]  610 	add	hl, hl
   5A44 09            [11]  611 	add	hl, bc
   5A45 29            [11]  612 	add	hl, hl
   5A46 4D            [ 4]  613 	ld	c,l
   5A47 44            [ 4]  614 	ld	b,h
   5A48 3E C9         [ 7]  615 	ld	a,#0xC9
   5A4A 91            [ 4]  616 	sub	a, c
   5A4B 57            [ 4]  617 	ld	d,a
   5A4C 3E 00         [ 7]  618 	ld	a,#0x00
   5A4E 98            [ 4]  619 	sbc	a, b
   5A4F 5F            [ 4]  620 	ld	e,a
   5A50 6A            [ 4]  621 	ld	l, d
   5A51 63            [ 4]  622 	ld	h, e
   5A52 CB 7B         [ 8]  623 	bit	7, e
   5A54 28 03         [12]  624 	jr	Z,00114$
   5A56 6A            [ 4]  625 	ld	l, d
   5A57 63            [ 4]  626 	ld	h, e
   5A58 23            [ 6]  627 	inc	hl
   5A59                     628 00114$:
   5A59 CB 2C         [ 8]  629 	sra	h
   5A5B CB 1D         [ 8]  630 	rr	l
   5A5D 55            [ 4]  631 	ld	d,l
   5A5E DD 7E 07      [19]  632 	ld	a,7 (ix)
   5A61 5F            [ 4]  633 	ld	e,a
   5A62 87            [ 4]  634 	add	a, a
   5A63 87            [ 4]  635 	add	a, a
   5A64 83            [ 4]  636 	add	a, e
   5A65 87            [ 4]  637 	add	a, a
   5A66 82            [ 4]  638 	add	a,d
   5A67 C5            [11]  639 	push	bc
   5A68 57            [ 4]  640 	ld	d,a
   5A69 1E 20         [ 7]  641 	ld	e,#0x20
   5A6B D5            [11]  642 	push	de
   5A6C 21 00 C0      [10]  643 	ld	hl,#0xC000
   5A6F E5            [11]  644 	push	hl
   5A70 CD A9 6D      [17]  645 	call	_cpct_getScreenPtr
   5A73 C1            [10]  646 	pop	bc
                            647 ;src/gui/gui.c:91: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   5A74 EB            [ 4]  648 	ex	de,hl
   5A75 C5            [11]  649 	push	bc
   5A76 21 11 0A      [10]  650 	ld	hl,#0x0A11
   5A79 E5            [11]  651 	push	hl
   5A7A AF            [ 4]  652 	xor	a, a
   5A7B F5            [11]  653 	push	af
   5A7C 33            [ 6]  654 	inc	sp
   5A7D D5            [11]  655 	push	de
   5A7E CD F0 6C      [17]  656 	call	_cpct_drawSolidBox
   5A81 F1            [10]  657 	pop	af
   5A82 F1            [10]  658 	pop	af
   5A83 33            [ 6]  659 	inc	sp
   5A84 C1            [10]  660 	pop	bc
                            661 ;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
   5A85 21 B0 36      [10]  662 	ld	hl,#0x36B0
   5A88                     663 00108$:
   5A88 2B            [ 6]  664 	dec	hl
   5A89 7C            [ 4]  665 	ld	a,h
   5A8A B5            [ 4]  666 	or	a,l
   5A8B 20 FB         [12]  667 	jr	NZ,00108$
                            668 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5A8D 3E CA         [ 7]  669 	ld	a,#0xCA
   5A8F 91            [ 4]  670 	sub	a, c
   5A90 DD 77 FD      [19]  671 	ld	-3 (ix),a
   5A93 3E 00         [ 7]  672 	ld	a,#0x00
   5A95 98            [ 4]  673 	sbc	a, b
   5A96 DD 77 FE      [19]  674 	ld	-2 (ix), a
   5A99 07            [ 4]  675 	rlca
   5A9A E6 01         [ 7]  676 	and	a,#0x01
   5A9C 5F            [ 4]  677 	ld	e,a
   5A9D 21 00 00      [10]  678 	ld	hl,#0x0000
   5AA0 E3            [19]  679 	ex	(sp), hl
   5AA1                     680 00110$:
   5AA1 DD 66 06      [19]  681 	ld	h,6 (ix)
   5AA4 2E 00         [ 7]  682 	ld	l,#0x00
   5AA6 DD 7E FA      [19]  683 	ld	a,-6 (ix)
   5AA9 94            [ 4]  684 	sub	a, h
   5AAA DD 7E FB      [19]  685 	ld	a,-5 (ix)
   5AAD 9D            [ 4]  686 	sbc	a, l
   5AAE E2 B3 5A      [10]  687 	jp	PO, 00146$
   5AB1 EE 80         [ 7]  688 	xor	a, #0x80
   5AB3                     689 00146$:
   5AB3 F2 59 5B      [10]  690 	jp	P,00112$
                            691 ;src/gui/gui.c:99: if(i==iSelect)
   5AB6 DD 56 07      [19]  692 	ld	d,7 (ix)
   5AB9 06 00         [ 7]  693 	ld	b,#0x00
   5ABB DD 7E FA      [19]  694 	ld	a,-6 (ix)
   5ABE 92            [ 4]  695 	sub	a, d
   5ABF 20 0A         [12]  696 	jr	NZ,00103$
   5AC1 DD 7E FB      [19]  697 	ld	a,-5 (ix)
   5AC4 90            [ 4]  698 	sub	a, b
   5AC5 20 04         [12]  699 	jr	NZ,00103$
                            700 ;src/gui/gui.c:100: penSelected = 1;
   5AC7 0E 01         [ 7]  701 	ld	c,#0x01
   5AC9 18 02         [12]  702 	jr	00104$
   5ACB                     703 00103$:
                            704 ;src/gui/gui.c:102: penSelected = 0;
   5ACB 0E 00         [ 7]  705 	ld	c,#0x00
   5ACD                     706 00104$:
                            707 ;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   5ACD DD 6E FD      [19]  708 	ld	l,-3 (ix)
   5AD0 DD 66 FE      [19]  709 	ld	h,-2 (ix)
   5AD3 7B            [ 4]  710 	ld	a,e
   5AD4 B7            [ 4]  711 	or	a, a
   5AD5 28 07         [12]  712 	jr	Z,00115$
   5AD7 DD 6E FD      [19]  713 	ld	l,-3 (ix)
   5ADA DD 66 FE      [19]  714 	ld	h,-2 (ix)
   5ADD 23            [ 6]  715 	inc	hl
   5ADE                     716 00115$:
   5ADE CB 2C         [ 8]  717 	sra	h
   5AE0 CB 1D         [ 8]  718 	rr	l
   5AE2 45            [ 4]  719 	ld	b,l
   5AE3 DD 6E FA      [19]  720 	ld	l,-6 (ix)
   5AE6 D5            [11]  721 	push	de
   5AE7 5D            [ 4]  722 	ld	e,l
   5AE8 29            [11]  723 	add	hl, hl
   5AE9 29            [11]  724 	add	hl, hl
   5AEA 19            [11]  725 	add	hl, de
   5AEB 29            [11]  726 	add	hl, hl
   5AEC D1            [10]  727 	pop	de
   5AED 78            [ 4]  728 	ld	a,b
   5AEE 85            [ 4]  729 	add	a, l
   5AEF DD 77 FF      [19]  730 	ld	-1 (ix),a
   5AF2 DD 56 FA      [19]  731 	ld	d,-6 (ix)
   5AF5 DD 46 FB      [19]  732 	ld	b,-5 (ix)
   5AF8 CB 22         [ 8]  733 	sla	d
   5AFA CB 10         [ 8]  734 	rl	b
   5AFC DD 7E 04      [19]  735 	ld	a,4 (ix)
   5AFF 82            [ 4]  736 	add	a, d
   5B00 57            [ 4]  737 	ld	d,a
   5B01 DD 7E 05      [19]  738 	ld	a,5 (ix)
   5B04 88            [ 4]  739 	adc	a, b
   5B05 47            [ 4]  740 	ld	b,a
   5B06 6A            [ 4]  741 	ld	l, d
   5B07 60            [ 4]  742 	ld	h, b
   5B08 7E            [ 7]  743 	ld	a, (hl)
   5B09 23            [ 6]  744 	inc	hl
   5B0A 66            [ 7]  745 	ld	h,(hl)
   5B0B 6F            [ 4]  746 	ld	l,a
   5B0C C5            [11]  747 	push	bc
   5B0D D5            [11]  748 	push	de
   5B0E E5            [11]  749 	push	hl
   5B0F CD 9C 6C      [17]  750 	call	_strlen
   5B12 F1            [10]  751 	pop	af
   5B13 D1            [10]  752 	pop	de
   5B14 C1            [10]  753 	pop	bc
   5B15 3E 52         [ 7]  754 	ld	a,#0x52
   5B17 95            [ 4]  755 	sub	a, l
   5B18 6F            [ 4]  756 	ld	l,a
   5B19 3E 00         [ 7]  757 	ld	a,#0x00
   5B1B 9C            [ 4]  758 	sbc	a, h
   5B1C 67            [ 4]  759 	ld	h,a
   5B1D CB 3C         [ 8]  760 	srl	h
   5B1F CB 1D         [ 8]  761 	rr	l
   5B21 DD 75 FC      [19]  762 	ld	-4 (ix),l
   5B24 C5            [11]  763 	push	bc
   5B25 D5            [11]  764 	push	de
   5B26 DD 66 FF      [19]  765 	ld	h,-1 (ix)
   5B29 DD 6E FC      [19]  766 	ld	l,-4 (ix)
   5B2C E5            [11]  767 	push	hl
   5B2D 21 00 C0      [10]  768 	ld	hl,#0xC000
   5B30 E5            [11]  769 	push	hl
   5B31 CD A9 6D      [17]  770 	call	_cpct_getScreenPtr
   5B34 D1            [10]  771 	pop	de
   5B35 C1            [10]  772 	pop	bc
   5B36 E5            [11]  773 	push	hl
   5B37 FD E1         [14]  774 	pop	iy
                            775 ;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
   5B39 6A            [ 4]  776 	ld	l, d
   5B3A 60            [ 4]  777 	ld	h, b
   5B3B 7E            [ 7]  778 	ld	a, (hl)
   5B3C 23            [ 6]  779 	inc	hl
   5B3D 66            [ 7]  780 	ld	h,(hl)
   5B3E 6F            [ 4]  781 	ld	l,a
   5B3F D5            [11]  782 	push	de
   5B40 79            [ 4]  783 	ld	a,c
   5B41 F5            [11]  784 	push	af
   5B42 33            [ 6]  785 	inc	sp
   5B43 FD E5         [15]  786 	push	iy
   5B45 E5            [11]  787 	push	hl
   5B46 CD 8B 69      [17]  788 	call	_cpct_drawStringM2
   5B49 F1            [10]  789 	pop	af
   5B4A F1            [10]  790 	pop	af
   5B4B 33            [ 6]  791 	inc	sp
   5B4C D1            [10]  792 	pop	de
                            793 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5B4D DD 34 FA      [23]  794 	inc	-6 (ix)
   5B50 C2 A1 5A      [10]  795 	jp	NZ,00110$
   5B53 DD 34 FB      [23]  796 	inc	-5 (ix)
   5B56 C3 A1 5A      [10]  797 	jp	00110$
   5B59                     798 00112$:
   5B59 DD F9         [10]  799 	ld	sp, ix
   5B5B DD E1         [14]  800 	pop	ix
   5B5D C9            [10]  801 	ret
                            802 ;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
                            803 ;	---------------------------------
                            804 ; Function drawMenu
                            805 ; ---------------------------------
   5B5E                     806 _drawMenu::
   5B5E DD E5         [15]  807 	push	ix
   5B60 DD 21 00 00   [14]  808 	ld	ix,#0
   5B64 DD 39         [15]  809 	add	ix,sp
   5B66 F5            [11]  810 	push	af
                            811 ;src/gui/gui.c:112: u8 iSelect=0;
   5B67 06 00         [ 7]  812 	ld	b,#0x00
                            813 ;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
   5B69 C5            [11]  814 	push	bc
   5B6A 21 00 40      [10]  815 	ld	hl,#0x4000
   5B6D E5            [11]  816 	push	hl
   5B6E 3E FF         [ 7]  817 	ld	a,#0xFF
   5B70 F5            [11]  818 	push	af
   5B71 33            [ 6]  819 	inc	sp
   5B72 26 C0         [ 7]  820 	ld	h, #0xC0
   5B74 E5            [11]  821 	push	hl
   5B75 CD 75 6C      [17]  822 	call	_cpct_memset
   5B78 C1            [10]  823 	pop	bc
                            824 ;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
   5B79 DD 5E 06      [19]  825 	ld	e,6 (ix)
   5B7C 16 00         [ 7]  826 	ld	d,#0x00
   5B7E 6B            [ 4]  827 	ld	l, e
   5B7F 62            [ 4]  828 	ld	h, d
   5B80 29            [11]  829 	add	hl, hl
   5B81 19            [11]  830 	add	hl, de
   5B82 29            [11]  831 	add	hl, hl
   5B83 29            [11]  832 	add	hl, hl
   5B84 C5            [11]  833 	push	bc
   5B85 E5            [11]  834 	push	hl
   5B86 21 1E 00      [10]  835 	ld	hl,#0x001E
   5B89 E5            [11]  836 	push	hl
   5B8A CD 94 58      [17]  837 	call	_drawBoxM2
   5B8D F1            [10]  838 	pop	af
   5B8E F1            [10]  839 	pop	af
   5B8F AF            [ 4]  840 	xor	a, a
   5B90 F5            [11]  841 	push	af
   5B91 33            [ 6]  842 	inc	sp
   5B92 DD 7E 06      [19]  843 	ld	a,6 (ix)
   5B95 F5            [11]  844 	push	af
   5B96 33            [ 6]  845 	inc	sp
   5B97 DD 6E 04      [19]  846 	ld	l,4 (ix)
   5B9A DD 66 05      [19]  847 	ld	h,5 (ix)
   5B9D E5            [11]  848 	push	hl
   5B9E CD 2E 5A      [17]  849 	call	_drawMenuEntry
   5BA1 F1            [10]  850 	pop	af
   5BA2 F1            [10]  851 	pop	af
   5BA3 C1            [10]  852 	pop	bc
                            853 ;src/gui/gui.c:120: do{
   5BA4 DD 4E 06      [19]  854 	ld	c,6 (ix)
   5BA7 0D            [ 4]  855 	dec	c
   5BA8                     856 00111$:
                            857 ;src/gui/gui.c:121: cpct_scanKeyboard(); 
   5BA8 C5            [11]  858 	push	bc
   5BA9 CD C9 6D      [17]  859 	call	_cpct_scanKeyboard
   5BAC 21 00 01      [10]  860 	ld	hl,#0x0100
   5BAF CD 54 69      [17]  861 	call	_cpct_isKeyPressed
   5BB2 7D            [ 4]  862 	ld	a,l
   5BB3 C1            [10]  863 	pop	bc
   5BB4 B7            [ 4]  864 	or	a, a
   5BB5 28 32         [12]  865 	jr	Z,00105$
                            866 ;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
   5BB7 C5            [11]  867 	push	bc
   5BB8 C5            [11]  868 	push	bc
   5BB9 33            [ 6]  869 	inc	sp
   5BBA DD 7E 06      [19]  870 	ld	a,6 (ix)
   5BBD F5            [11]  871 	push	af
   5BBE 33            [ 6]  872 	inc	sp
   5BBF DD 6E 04      [19]  873 	ld	l,4 (ix)
   5BC2 DD 66 05      [19]  874 	ld	h,5 (ix)
   5BC5 E5            [11]  875 	push	hl
   5BC6 CD 74 59      [17]  876 	call	_EraseMenuEntry
   5BC9 F1            [10]  877 	pop	af
   5BCA F1            [10]  878 	pop	af
   5BCB C1            [10]  879 	pop	bc
                            880 ;src/gui/gui.c:127: if(iSelect ==0)
   5BCC 78            [ 4]  881 	ld	a,b
   5BCD B7            [ 4]  882 	or	a, a
   5BCE 20 03         [12]  883 	jr	NZ,00102$
                            884 ;src/gui/gui.c:128: iSelect = nbEntry-1;
   5BD0 41            [ 4]  885 	ld	b,c
   5BD1 18 01         [12]  886 	jr	00103$
   5BD3                     887 00102$:
                            888 ;src/gui/gui.c:130: iSelect--;
   5BD3 05            [ 4]  889 	dec	b
   5BD4                     890 00103$:
                            891 ;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
   5BD4 C5            [11]  892 	push	bc
   5BD5 C5            [11]  893 	push	bc
   5BD6 33            [ 6]  894 	inc	sp
   5BD7 DD 7E 06      [19]  895 	ld	a,6 (ix)
   5BDA F5            [11]  896 	push	af
   5BDB 33            [ 6]  897 	inc	sp
   5BDC DD 6E 04      [19]  898 	ld	l,4 (ix)
   5BDF DD 66 05      [19]  899 	ld	h,5 (ix)
   5BE2 E5            [11]  900 	push	hl
   5BE3 CD 2E 5A      [17]  901 	call	_drawMenuEntry
   5BE6 F1            [10]  902 	pop	af
   5BE7 F1            [10]  903 	pop	af
   5BE8 C1            [10]  904 	pop	bc
   5BE9                     905 00105$:
                            906 ;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
   5BE9 C5            [11]  907 	push	bc
   5BEA 21 00 04      [10]  908 	ld	hl,#0x0400
   5BED CD 54 69      [17]  909 	call	_cpct_isKeyPressed
   5BF0 5D            [ 4]  910 	ld	e,l
   5BF1 C1            [10]  911 	pop	bc
   5BF2 7B            [ 4]  912 	ld	a,e
   5BF3 B7            [ 4]  913 	or	a, a
   5BF4 28 48         [12]  914 	jr	Z,00112$
                            915 ;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
   5BF6 C5            [11]  916 	push	bc
   5BF7 C5            [11]  917 	push	bc
   5BF8 33            [ 6]  918 	inc	sp
   5BF9 DD 7E 06      [19]  919 	ld	a,6 (ix)
   5BFC F5            [11]  920 	push	af
   5BFD 33            [ 6]  921 	inc	sp
   5BFE DD 6E 04      [19]  922 	ld	l,4 (ix)
   5C01 DD 66 05      [19]  923 	ld	h,5 (ix)
   5C04 E5            [11]  924 	push	hl
   5C05 CD 74 59      [17]  925 	call	_EraseMenuEntry
   5C08 F1            [10]  926 	pop	af
   5C09 F1            [10]  927 	pop	af
   5C0A C1            [10]  928 	pop	bc
                            929 ;src/gui/gui.c:139: if(iSelect == nbEntry-1)
   5C0B DD 5E 06      [19]  930 	ld	e,6 (ix)
   5C0E 16 00         [ 7]  931 	ld	d,#0x00
   5C10 1B            [ 6]  932 	dec	de
   5C11 DD 70 FE      [19]  933 	ld	-2 (ix),b
   5C14 DD 36 FF 00   [19]  934 	ld	-1 (ix),#0x00
   5C18 7B            [ 4]  935 	ld	a,e
   5C19 DD 96 FE      [19]  936 	sub	a, -2 (ix)
   5C1C 20 0A         [12]  937 	jr	NZ,00107$
   5C1E 7A            [ 4]  938 	ld	a,d
   5C1F DD 96 FF      [19]  939 	sub	a, -1 (ix)
   5C22 20 04         [12]  940 	jr	NZ,00107$
                            941 ;src/gui/gui.c:140: iSelect = 0;
   5C24 06 00         [ 7]  942 	ld	b,#0x00
   5C26 18 01         [12]  943 	jr	00108$
   5C28                     944 00107$:
                            945 ;src/gui/gui.c:142: iSelect++;
   5C28 04            [ 4]  946 	inc	b
   5C29                     947 00108$:
                            948 ;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
   5C29 C5            [11]  949 	push	bc
   5C2A C5            [11]  950 	push	bc
   5C2B 33            [ 6]  951 	inc	sp
   5C2C DD 7E 06      [19]  952 	ld	a,6 (ix)
   5C2F F5            [11]  953 	push	af
   5C30 33            [ 6]  954 	inc	sp
   5C31 DD 6E 04      [19]  955 	ld	l,4 (ix)
   5C34 DD 66 05      [19]  956 	ld	h,5 (ix)
   5C37 E5            [11]  957 	push	hl
   5C38 CD 2E 5A      [17]  958 	call	_drawMenuEntry
   5C3B F1            [10]  959 	pop	af
   5C3C F1            [10]  960 	pop	af
   5C3D C1            [10]  961 	pop	bc
   5C3E                     962 00112$:
                            963 ;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
   5C3E C5            [11]  964 	push	bc
   5C3F 21 02 04      [10]  965 	ld	hl,#0x0402
   5C42 CD 54 69      [17]  966 	call	_cpct_isKeyPressed
   5C45 7D            [ 4]  967 	ld	a,l
   5C46 C1            [10]  968 	pop	bc
   5C47 B7            [ 4]  969 	or	a, a
   5C48 CA A8 5B      [10]  970 	jp	Z,00111$
                            971 ;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
   5C4B 21 B0 36      [10]  972 	ld	hl,#0x36B0
   5C4E                     973 00117$:
   5C4E EB            [ 4]  974 	ex	de,hl
   5C4F 1B            [ 6]  975 	dec	de
   5C50 6B            [ 4]  976 	ld	l, e
   5C51 7A            [ 4]  977 	ld	a,d
   5C52 67            [ 4]  978 	ld	h,a
   5C53 B3            [ 4]  979 	or	a,e
   5C54 20 F8         [12]  980 	jr	NZ,00117$
                            981 ;src/gui/gui.c:152: return iSelect;
   5C56 68            [ 4]  982 	ld	l,b
   5C57 DD F9         [10]  983 	ld	sp, ix
   5C59 DD E1         [14]  984 	pop	ix
   5C5B C9            [10]  985 	ret
                            986 ;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
                            987 ;	---------------------------------
                            988 ; Function drawWindow
                            989 ; ---------------------------------
   5C5C                     990 _drawWindow::
   5C5C DD E5         [15]  991 	push	ix
   5C5E DD 21 00 00   [14]  992 	ld	ix,#0
   5C62 DD 39         [15]  993 	add	ix,sp
   5C64 21 F5 FF      [10]  994 	ld	hl,#-11
   5C67 39            [11]  995 	add	hl,sp
   5C68 F9            [ 6]  996 	ld	sp,hl
                            997 ;src/gui/gui.c:166: u8 valueReturn=0;
   5C69 DD 36 F5 00   [19]  998 	ld	-11 (ix),#0x00
                            999 ;src/gui/gui.c:169: if(button == 0)
   5C6D DD 7E 07      [19] 1000 	ld	a,7 (ix)
   5C70 B7            [ 4] 1001 	or	a, a
   5C71 20 05         [12] 1002 	jr	NZ,00102$
                           1003 ;src/gui/gui.c:170: buttonTxt = "<OK>";
   5C73 11 E3 5D      [10] 1004 	ld	de,#___str_0
   5C76 18 03         [12] 1005 	jr	00103$
   5C78                    1006 00102$:
                           1007 ;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
   5C78 11 E8 5D      [10] 1008 	ld	de,#___str_1+0
   5C7B                    1009 00103$:
                           1010 ;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
   5C7B DD 4E 06      [19] 1011 	ld	c,6 (ix)
   5C7E 06 00         [ 7] 1012 	ld	b,#0x00
   5C80 03            [ 6] 1013 	inc	bc
   5C81 03            [ 6] 1014 	inc	bc
   5C82 69            [ 4] 1015 	ld	l, c
   5C83 60            [ 4] 1016 	ld	h, b
   5C84 29            [11] 1017 	add	hl, hl
   5C85 09            [11] 1018 	add	hl, bc
   5C86 29            [11] 1019 	add	hl, hl
   5C87 29            [11] 1020 	add	hl, hl
   5C88 C5            [11] 1021 	push	bc
   5C89 D5            [11] 1022 	push	de
   5C8A E5            [11] 1023 	push	hl
   5C8B 21 32 00      [10] 1024 	ld	hl,#0x0032
   5C8E E5            [11] 1025 	push	hl
   5C8F CD 94 58      [17] 1026 	call	_drawBoxM2
   5C92 F1            [10] 1027 	pop	af
   5C93 F1            [10] 1028 	pop	af
   5C94 D1            [10] 1029 	pop	de
   5C95 C1            [10] 1030 	pop	bc
                           1031 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5C96 69            [ 4] 1032 	ld	l, c
   5C97 60            [ 4] 1033 	ld	h, b
   5C98 29            [11] 1034 	add	hl, hl
   5C99 29            [11] 1035 	add	hl, hl
   5C9A 09            [11] 1036 	add	hl, bc
   5C9B 29            [11] 1037 	add	hl, hl
   5C9C 3E CA         [ 7] 1038 	ld	a,#0xCA
   5C9E 95            [ 4] 1039 	sub	a, l
   5C9F DD 77 FD      [19] 1040 	ld	-3 (ix),a
   5CA2 3E 00         [ 7] 1041 	ld	a,#0x00
   5CA4 9C            [ 4] 1042 	sbc	a, h
   5CA5 DD 77 FE      [19] 1043 	ld	-2 (ix), a
   5CA8 07            [ 4] 1044 	rlca
   5CA9 E6 01         [ 7] 1045 	and	a,#0x01
   5CAB DD 77 FA      [19] 1046 	ld	-6 (ix),a
   5CAE DD 36 F6 00   [19] 1047 	ld	-10 (ix),#0x00
   5CB2 DD 36 F9 00   [19] 1048 	ld	-7 (ix),#0x00
   5CB6                    1049 00114$:
                           1050 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   5CB6 DD 7E FD      [19] 1051 	ld	a,-3 (ix)
   5CB9 C6 01         [ 7] 1052 	add	a, #0x01
   5CBB DD 77 F7      [19] 1053 	ld	-9 (ix),a
   5CBE DD 7E FE      [19] 1054 	ld	a,-2 (ix)
   5CC1 CE 00         [ 7] 1055 	adc	a, #0x00
   5CC3 DD 77 F8      [19] 1056 	ld	-8 (ix),a
                           1057 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5CC6 DD 7E F6      [19] 1058 	ld	a,-10 (ix)
   5CC9 DD 96 06      [19] 1059 	sub	a, 6 (ix)
   5CCC D2 56 5D      [10] 1060 	jp	NC,00104$
                           1061 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   5CCF DD 6E FD      [19] 1062 	ld	l,-3 (ix)
   5CD2 DD 66 FE      [19] 1063 	ld	h,-2 (ix)
   5CD5 DD 7E FA      [19] 1064 	ld	a,-6 (ix)
   5CD8 B7            [ 4] 1065 	or	a, a
   5CD9 28 04         [12] 1066 	jr	Z,00118$
   5CDB C1            [10] 1067 	pop	bc
   5CDC E1            [10] 1068 	pop	hl
   5CDD E5            [11] 1069 	push	hl
   5CDE C5            [11] 1070 	push	bc
   5CDF                    1071 00118$:
   5CDF CB 2C         [ 8] 1072 	sra	h
   5CE1 CB 1D         [ 8] 1073 	rr	l
   5CE3 DD 66 F9      [19] 1074 	ld	h,-7 (ix)
   5CE6 7D            [ 4] 1075 	ld	a,l
   5CE7 84            [ 4] 1076 	add	a, h
   5CE8 DD 77 FF      [19] 1077 	ld	-1 (ix),a
   5CEB DD 6E F6      [19] 1078 	ld	l,-10 (ix)
   5CEE 26 00         [ 7] 1079 	ld	h,#0x00
   5CF0 29            [11] 1080 	add	hl, hl
   5CF1 45            [ 4] 1081 	ld	b,l
   5CF2 4C            [ 4] 1082 	ld	c,h
   5CF3 DD 7E 04      [19] 1083 	ld	a,4 (ix)
   5CF6 80            [ 4] 1084 	add	a, b
   5CF7 DD 77 FB      [19] 1085 	ld	-5 (ix),a
   5CFA DD 7E 05      [19] 1086 	ld	a,5 (ix)
   5CFD 89            [ 4] 1087 	adc	a, c
   5CFE DD 77 FC      [19] 1088 	ld	-4 (ix),a
   5D01 DD 6E FB      [19] 1089 	ld	l,-5 (ix)
   5D04 DD 66 FC      [19] 1090 	ld	h,-4 (ix)
   5D07 4E            [ 7] 1091 	ld	c,(hl)
   5D08 23            [ 6] 1092 	inc	hl
   5D09 46            [ 7] 1093 	ld	b,(hl)
   5D0A D5            [11] 1094 	push	de
   5D0B C5            [11] 1095 	push	bc
   5D0C CD 9C 6C      [17] 1096 	call	_strlen
   5D0F F1            [10] 1097 	pop	af
   5D10 D1            [10] 1098 	pop	de
   5D11 3E 52         [ 7] 1099 	ld	a,#0x52
   5D13 95            [ 4] 1100 	sub	a, l
   5D14 6F            [ 4] 1101 	ld	l,a
   5D15 3E 00         [ 7] 1102 	ld	a,#0x00
   5D17 9C            [ 4] 1103 	sbc	a, h
   5D18 67            [ 4] 1104 	ld	h,a
   5D19 CB 3C         [ 8] 1105 	srl	h
   5D1B CB 1D         [ 8] 1106 	rr	l
   5D1D 45            [ 4] 1107 	ld	b,l
   5D1E D5            [11] 1108 	push	de
   5D1F DD 7E FF      [19] 1109 	ld	a,-1 (ix)
   5D22 F5            [11] 1110 	push	af
   5D23 33            [ 6] 1111 	inc	sp
   5D24 C5            [11] 1112 	push	bc
   5D25 33            [ 6] 1113 	inc	sp
   5D26 21 00 C0      [10] 1114 	ld	hl,#0xC000
   5D29 E5            [11] 1115 	push	hl
   5D2A CD A9 6D      [17] 1116 	call	_cpct_getScreenPtr
   5D2D D1            [10] 1117 	pop	de
   5D2E E5            [11] 1118 	push	hl
   5D2F FD E1         [14] 1119 	pop	iy
                           1120 ;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
   5D31 DD 6E FB      [19] 1121 	ld	l,-5 (ix)
   5D34 DD 66 FC      [19] 1122 	ld	h,-4 (ix)
   5D37 4E            [ 7] 1123 	ld	c,(hl)
   5D38 23            [ 6] 1124 	inc	hl
   5D39 46            [ 7] 1125 	ld	b,(hl)
   5D3A D5            [11] 1126 	push	de
   5D3B AF            [ 4] 1127 	xor	a, a
   5D3C F5            [11] 1128 	push	af
   5D3D 33            [ 6] 1129 	inc	sp
   5D3E FD E5         [15] 1130 	push	iy
   5D40 C5            [11] 1131 	push	bc
   5D41 CD 8B 69      [17] 1132 	call	_cpct_drawStringM2
   5D44 F1            [10] 1133 	pop	af
   5D45 F1            [10] 1134 	pop	af
   5D46 33            [ 6] 1135 	inc	sp
   5D47 D1            [10] 1136 	pop	de
                           1137 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5D48 DD 7E F9      [19] 1138 	ld	a,-7 (ix)
   5D4B C6 0A         [ 7] 1139 	add	a, #0x0A
   5D4D DD 77 F9      [19] 1140 	ld	-7 (ix),a
   5D50 DD 34 F6      [23] 1141 	inc	-10 (ix)
   5D53 C3 B6 5C      [10] 1142 	jp	00114$
   5D56                    1143 00104$:
                           1144 ;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   5D56 DD 46 FD      [19] 1145 	ld	b,-3 (ix)
   5D59 DD 66 FE      [19] 1146 	ld	h,-2 (ix)
   5D5C DD 7E FA      [19] 1147 	ld	a,-6 (ix)
   5D5F B7            [ 4] 1148 	or	a, a
   5D60 28 06         [12] 1149 	jr	Z,00119$
   5D62 DD 46 F7      [19] 1150 	ld	b,-9 (ix)
   5D65 DD 66 F8      [19] 1151 	ld	h,-8 (ix)
   5D68                    1152 00119$:
   5D68 CB 2C         [ 8] 1153 	sra	h
   5D6A CB 18         [ 8] 1154 	rr	b
   5D6C DD 4E 06      [19] 1155 	ld	c,6 (ix)
   5D6F 0C            [ 4] 1156 	inc	c
   5D70 79            [ 4] 1157 	ld	a,c
   5D71 87            [ 4] 1158 	add	a, a
   5D72 87            [ 4] 1159 	add	a, a
   5D73 81            [ 4] 1160 	add	a, c
   5D74 87            [ 4] 1161 	add	a, a
   5D75 67            [ 4] 1162 	ld	h, a
   5D76 80            [ 4] 1163 	add	a,b
   5D77 47            [ 4] 1164 	ld	b,a
   5D78 C5            [11] 1165 	push	bc
   5D79 D5            [11] 1166 	push	de
   5D7A D5            [11] 1167 	push	de
   5D7B CD 9C 6C      [17] 1168 	call	_strlen
   5D7E F1            [10] 1169 	pop	af
   5D7F D1            [10] 1170 	pop	de
   5D80 C1            [10] 1171 	pop	bc
   5D81 3E 52         [ 7] 1172 	ld	a,#0x52
   5D83 95            [ 4] 1173 	sub	a, l
   5D84 6F            [ 4] 1174 	ld	l,a
   5D85 3E 00         [ 7] 1175 	ld	a,#0x00
   5D87 9C            [ 4] 1176 	sbc	a, h
   5D88 67            [ 4] 1177 	ld	h,a
   5D89 CB 3C         [ 8] 1178 	srl	h
   5D8B CB 1D         [ 8] 1179 	rr	l
   5D8D 7D            [ 4] 1180 	ld	a,l
   5D8E D5            [11] 1181 	push	de
   5D8F C5            [11] 1182 	push	bc
   5D90 33            [ 6] 1183 	inc	sp
   5D91 F5            [11] 1184 	push	af
   5D92 33            [ 6] 1185 	inc	sp
   5D93 21 00 C0      [10] 1186 	ld	hl,#0xC000
   5D96 E5            [11] 1187 	push	hl
   5D97 CD A9 6D      [17] 1188 	call	_cpct_getScreenPtr
   5D9A D1            [10] 1189 	pop	de
                           1190 ;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
   5D9B 4D            [ 4] 1191 	ld	c, l
   5D9C 44            [ 4] 1192 	ld	b, h
   5D9D AF            [ 4] 1193 	xor	a, a
   5D9E F5            [11] 1194 	push	af
   5D9F 33            [ 6] 1195 	inc	sp
   5DA0 C5            [11] 1196 	push	bc
   5DA1 D5            [11] 1197 	push	de
   5DA2 CD 8B 69      [17] 1198 	call	_cpct_drawStringM2
   5DA5 F1            [10] 1199 	pop	af
   5DA6 F1            [10] 1200 	pop	af
   5DA7 33            [ 6] 1201 	inc	sp
                           1202 ;src/gui/gui.c:186: do{
   5DA8                    1203 00110$:
                           1204 ;src/gui/gui.c:187: cpct_scanKeyboard(); 
   5DA8 CD C9 6D      [17] 1205 	call	_cpct_scanKeyboard
                           1206 ;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
   5DAB 21 02 04      [10] 1207 	ld	hl,#0x0402
   5DAE CD 54 69      [17] 1208 	call	_cpct_isKeyPressed
   5DB1 7D            [ 4] 1209 	ld	a,l
   5DB2 B7            [ 4] 1210 	or	a, a
   5DB3 28 04         [12] 1211 	jr	Z,00106$
                           1212 ;src/gui/gui.c:190: valueReturn=1;
   5DB5 DD 36 F5 01   [19] 1213 	ld	-11 (ix),#0x01
   5DB9                    1214 00106$:
                           1215 ;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
   5DB9 21 08 04      [10] 1216 	ld	hl,#0x0408
   5DBC CD 54 69      [17] 1217 	call	_cpct_isKeyPressed
   5DBF 7D            [ 4] 1218 	ld	a,l
   5DC0 B7            [ 4] 1219 	or	a, a
   5DC1 28 04         [12] 1220 	jr	Z,00111$
                           1221 ;src/gui/gui.c:193: valueReturn=0;
   5DC3 DD 36 F5 00   [19] 1222 	ld	-11 (ix),#0x00
   5DC7                    1223 00111$:
                           1224 ;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   5DC7 21 02 04      [10] 1225 	ld	hl,#0x0402
   5DCA CD 54 69      [17] 1226 	call	_cpct_isKeyPressed
   5DCD 7D            [ 4] 1227 	ld	a,l
   5DCE B7            [ 4] 1228 	or	a, a
   5DCF 20 0A         [12] 1229 	jr	NZ,00112$
   5DD1 21 08 04      [10] 1230 	ld	hl,#0x0408
   5DD4 CD 54 69      [17] 1231 	call	_cpct_isKeyPressed
   5DD7 7D            [ 4] 1232 	ld	a,l
   5DD8 B7            [ 4] 1233 	or	a, a
   5DD9 28 CD         [12] 1234 	jr	Z,00110$
   5DDB                    1235 00112$:
                           1236 ;src/gui/gui.c:197: return valueReturn;
   5DDB DD 6E F5      [19] 1237 	ld	l,-11 (ix)
   5DDE DD F9         [10] 1238 	ld	sp, ix
   5DE0 DD E1         [14] 1239 	pop	ix
   5DE2 C9            [10] 1240 	ret
   5DE3                    1241 ___str_0:
   5DE3 3C 4F 4B 3E        1242 	.ascii "<OK>"
   5DE7 00                 1243 	.db 0x00
   5DE8                    1244 ___str_1:
   5DE8 3C 4F 4B 3E 20 20  1245 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   5DF6 00                 1246 	.db 0x00
                           1247 	.area _CODE
                           1248 	.area _INITIALIZER
                           1249 	.area _CABS (ABS)
