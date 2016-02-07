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
   59E2                      66 _putM0::
                             67 ;src/gui/gui.c:5: cpct_setVideoMode(0);
   59E2 AF            [ 4]   68 	xor	a, a
   59E3 F5            [11]   69 	push	af
   59E4 33            [ 6]   70 	inc	sp
   59E5 CD A8 73      [17]   71 	call	_cpct_setVideoMode
   59E8 33            [ 6]   72 	inc	sp
                             73 ;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
   59E9 21 A8 60      [10]   74 	ld	hl,#_paletteTrains
   59EC 01 10 00      [10]   75 	ld	bc,#0x0010
   59EF C5            [11]   76 	push	bc
   59F0 E5            [11]   77 	push	hl
   59F1 CD 9E 70      [17]   78 	call	_cpct_setPalette
   59F4 C9            [10]   79 	ret
                             80 ;src/gui/gui.c:10: void putM1(void)
                             81 ;	---------------------------------
                             82 ; Function putM1
                             83 ; ---------------------------------
   59F5                      84 _putM1::
                             85 ;src/gui/gui.c:12: cpct_setVideoMode(1);
   59F5 3E 01         [ 7]   86 	ld	a,#0x01
   59F7 F5            [11]   87 	push	af
   59F8 33            [ 6]   88 	inc	sp
   59F9 CD A8 73      [17]   89 	call	_cpct_setVideoMode
   59FC 33            [ 6]   90 	inc	sp
                             91 ;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
   59FD 21 B8 60      [10]   92 	ld	hl,#_paletteMenusM1
   5A00 01 04 00      [10]   93 	ld	bc,#0x0004
   5A03 C5            [11]   94 	push	bc
   5A04 E5            [11]   95 	push	hl
   5A05 CD 9E 70      [17]   96 	call	_cpct_setPalette
   5A08 C9            [10]   97 	ret
                             98 ;src/gui/gui.c:17: void putM2(void)
                             99 ;	---------------------------------
                            100 ; Function putM2
                            101 ; ---------------------------------
   5A09                     102 _putM2::
                            103 ;src/gui/gui.c:19: cpct_setVideoMode(2);
   5A09 3E 02         [ 7]  104 	ld	a,#0x02
   5A0B F5            [11]  105 	push	af
   5A0C 33            [ 6]  106 	inc	sp
   5A0D CD A8 73      [17]  107 	call	_cpct_setVideoMode
   5A10 33            [ 6]  108 	inc	sp
                            109 ;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
   5A11 21 BC 60      [10]  110 	ld	hl,#_paletteMenusM2
   5A14 01 02 00      [10]  111 	ld	bc,#0x0002
   5A17 C5            [11]  112 	push	bc
   5A18 E5            [11]  113 	push	hl
   5A19 CD 9E 70      [17]  114 	call	_cpct_setPalette
                            115 ;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
   5A1C 21 00 40      [10]  116 	ld	hl,#0x4000
   5A1F E5            [11]  117 	push	hl
   5A20 3E FF         [ 7]  118 	ld	a,#0xFF
   5A22 F5            [11]  119 	push	af
   5A23 33            [ 6]  120 	inc	sp
   5A24 26 C0         [ 7]  121 	ld	h, #0xC0
   5A26 E5            [11]  122 	push	hl
   5A27 CD D6 73      [17]  123 	call	_cpct_memset
   5A2A C9            [10]  124 	ret
                            125 ;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
                            126 ;	---------------------------------
                            127 ; Function drawBoxM0
                            128 ; ---------------------------------
   5A2B                     129 _drawBoxM0::
   5A2B DD E5         [15]  130 	push	ix
   5A2D DD 21 00 00   [14]  131 	ld	ix,#0
   5A31 DD 39         [15]  132 	add	ix,sp
   5A33 21 F9 FF      [10]  133 	ld	hl,#-7
   5A36 39            [11]  134 	add	hl,sp
   5A37 F9            [ 6]  135 	ld	sp,hl
                            136 ;src/gui/gui.c:30: int left = (80-width_)/2;
   5A38 3E 50         [ 7]  137 	ld	a,#0x50
   5A3A DD 96 04      [19]  138 	sub	a, 4 (ix)
   5A3D 57            [ 4]  139 	ld	d,a
   5A3E 3E 00         [ 7]  140 	ld	a,#0x00
   5A40 DD 9E 05      [19]  141 	sbc	a, 5 (ix)
   5A43 5F            [ 4]  142 	ld	e,a
   5A44 6A            [ 4]  143 	ld	l, d
   5A45 63            [ 4]  144 	ld	h, e
   5A46 CB 7B         [ 8]  145 	bit	7, e
   5A48 28 03         [12]  146 	jr	Z,00103$
   5A4A 6A            [ 4]  147 	ld	l, d
   5A4B 63            [ 4]  148 	ld	h, e
   5A4C 23            [ 6]  149 	inc	hl
   5A4D                     150 00103$:
   5A4D DD 75 F9      [19]  151 	ld	-7 (ix),l
   5A50 DD 74 FA      [19]  152 	ld	-6 (ix),h
   5A53 DD CB FA 2E   [23]  153 	sra	-6 (ix)
   5A57 DD CB F9 1E   [23]  154 	rr	-7 (ix)
                            155 ;src/gui/gui.c:31: int top = (200-height_)/2;
   5A5B 3E C8         [ 7]  156 	ld	a,#0xC8
   5A5D DD 96 06      [19]  157 	sub	a, 6 (ix)
   5A60 4F            [ 4]  158 	ld	c,a
   5A61 3E 00         [ 7]  159 	ld	a,#0x00
   5A63 DD 9E 07      [19]  160 	sbc	a, 7 (ix)
   5A66 47            [ 4]  161 	ld	b,a
   5A67 61            [ 4]  162 	ld	h,c
   5A68 50            [ 4]  163 	ld	d,b
   5A69 CB 78         [ 8]  164 	bit	7, b
   5A6B 28 03         [12]  165 	jr	Z,00104$
   5A6D 03            [ 6]  166 	inc	bc
   5A6E 61            [ 4]  167 	ld	h,c
   5A6F 50            [ 4]  168 	ld	d,b
   5A70                     169 00104$:
   5A70 5C            [ 4]  170 	ld	e, h
   5A71 CB 2A         [ 8]  171 	sra	d
   5A73 CB 1B         [ 8]  172 	rr	e
                            173 ;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
   5A75 D5            [11]  174 	push	de
   5A76 21 09 09      [10]  175 	ld	hl,#0x0909
   5A79 E5            [11]  176 	push	hl
   5A7A CD BA 73      [17]  177 	call	_cpct_px2byteM0
   5A7D 65            [ 4]  178 	ld	h,l
   5A7E 01 00 40      [10]  179 	ld	bc,#0x4000
   5A81 C5            [11]  180 	push	bc
   5A82 E5            [11]  181 	push	hl
   5A83 33            [ 6]  182 	inc	sp
   5A84 21 00 C0      [10]  183 	ld	hl,#0xC000
   5A87 E5            [11]  184 	push	hl
   5A88 CD D6 73      [17]  185 	call	_cpct_memset
   5A8B D1            [10]  186 	pop	de
                            187 ;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   5A8C DD 73 FF      [19]  188 	ld	-1 (ix), e
   5A8F 63            [ 4]  189 	ld	h, e
   5A90 24            [ 4]  190 	inc	h
   5A91 24            [ 4]  191 	inc	h
   5A92 24            [ 4]  192 	inc	h
   5A93 24            [ 4]  193 	inc	h
   5A94 DD 7E F9      [19]  194 	ld	a,-7 (ix)
   5A97 3C            [ 4]  195 	inc	a
   5A98 DD 77 FC      [19]  196 	ld	-4 (ix),a
   5A9B D5            [11]  197 	push	de
   5A9C E5            [11]  198 	push	hl
   5A9D 33            [ 6]  199 	inc	sp
   5A9E DD 7E FC      [19]  200 	ld	a,-4 (ix)
   5AA1 F5            [11]  201 	push	af
   5AA2 33            [ 6]  202 	inc	sp
   5AA3 21 00 C0      [10]  203 	ld	hl,#0xC000
   5AA6 E5            [11]  204 	push	hl
   5AA7 CD 0A 75      [17]  205 	call	_cpct_getScreenPtr
   5AAA D1            [10]  206 	pop	de
   5AAB 4D            [ 4]  207 	ld	c, l
   5AAC 44            [ 4]  208 	ld	b, h
                            209 ;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   5AAD DD 7E 06      [19]  210 	ld	a,6 (ix)
   5AB0 DD 77 FB      [19]  211 	ld	-5 (ix),a
   5AB3 DD 7E 04      [19]  212 	ld	a,4 (ix)
   5AB6 DD 77 FD      [19]  213 	ld	-3 (ix),a
   5AB9 C5            [11]  214 	push	bc
   5ABA D5            [11]  215 	push	de
   5ABB 21 02 02      [10]  216 	ld	hl,#0x0202
   5ABE E5            [11]  217 	push	hl
   5ABF CD BA 73      [17]  218 	call	_cpct_px2byteM0
   5AC2 DD 75 FE      [19]  219 	ld	-2 (ix),l
   5AC5 D1            [10]  220 	pop	de
   5AC6 C1            [10]  221 	pop	bc
   5AC7 D5            [11]  222 	push	de
   5AC8 DD 66 FB      [19]  223 	ld	h,-5 (ix)
   5ACB DD 6E FD      [19]  224 	ld	l,-3 (ix)
   5ACE E5            [11]  225 	push	hl
   5ACF DD 7E FE      [19]  226 	ld	a,-2 (ix)
   5AD2 F5            [11]  227 	push	af
   5AD3 33            [ 6]  228 	inc	sp
   5AD4 C5            [11]  229 	push	bc
   5AD5 CD 51 74      [17]  230 	call	_cpct_drawSolidBox
   5AD8 F1            [10]  231 	pop	af
   5AD9 F1            [10]  232 	pop	af
   5ADA 33            [ 6]  233 	inc	sp
   5ADB D1            [10]  234 	pop	de
                            235 ;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5ADC 63            [ 4]  236 	ld	h,e
   5ADD DD 56 F9      [19]  237 	ld	d,-7 (ix)
   5AE0 E5            [11]  238 	push	hl
   5AE1 33            [ 6]  239 	inc	sp
   5AE2 D5            [11]  240 	push	de
   5AE3 33            [ 6]  241 	inc	sp
   5AE4 21 00 C0      [10]  242 	ld	hl,#0xC000
   5AE7 E5            [11]  243 	push	hl
   5AE8 CD 0A 75      [17]  244 	call	_cpct_getScreenPtr
                            245 ;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   5AEB E5            [11]  246 	push	hl
   5AEC 21 06 06      [10]  247 	ld	hl,#0x0606
   5AEF E5            [11]  248 	push	hl
   5AF0 CD BA 73      [17]  249 	call	_cpct_px2byteM0
   5AF3 45            [ 4]  250 	ld	b,l
   5AF4 D1            [10]  251 	pop	de
   5AF5 DD 66 FB      [19]  252 	ld	h,-5 (ix)
   5AF8 DD 6E FD      [19]  253 	ld	l,-3 (ix)
   5AFB E5            [11]  254 	push	hl
   5AFC C5            [11]  255 	push	bc
   5AFD 33            [ 6]  256 	inc	sp
   5AFE D5            [11]  257 	push	de
   5AFF CD 51 74      [17]  258 	call	_cpct_drawSolidBox
   5B02 F1            [10]  259 	pop	af
   5B03 F1            [10]  260 	pop	af
   5B04 33            [ 6]  261 	inc	sp
                            262 ;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   5B05 DD 66 FF      [19]  263 	ld	h,-1 (ix)
   5B08 24            [ 4]  264 	inc	h
   5B09 24            [ 4]  265 	inc	h
   5B0A E5            [11]  266 	push	hl
   5B0B 33            [ 6]  267 	inc	sp
   5B0C DD 7E FC      [19]  268 	ld	a,-4 (ix)
   5B0F F5            [11]  269 	push	af
   5B10 33            [ 6]  270 	inc	sp
   5B11 21 00 C0      [10]  271 	ld	hl,#0xC000
   5B14 E5            [11]  272 	push	hl
   5B15 CD 0A 75      [17]  273 	call	_cpct_getScreenPtr
   5B18 EB            [ 4]  274 	ex	de,hl
                            275 ;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   5B19 DD 7E 06      [19]  276 	ld	a,6 (ix)
   5B1C C6 FC         [ 7]  277 	add	a,#0xFC
   5B1E 4F            [ 4]  278 	ld	c,a
   5B1F DD 46 04      [19]  279 	ld	b,4 (ix)
   5B22 05            [ 4]  280 	dec	b
   5B23 05            [ 4]  281 	dec	b
   5B24 C5            [11]  282 	push	bc
   5B25 D5            [11]  283 	push	de
   5B26 21 00 00      [10]  284 	ld	hl,#0x0000
   5B29 E5            [11]  285 	push	hl
   5B2A CD BA 73      [17]  286 	call	_cpct_px2byteM0
   5B2D DD 75 FE      [19]  287 	ld	-2 (ix),l
   5B30 D1            [10]  288 	pop	de
   5B31 C1            [10]  289 	pop	bc
   5B32 79            [ 4]  290 	ld	a,c
   5B33 F5            [11]  291 	push	af
   5B34 33            [ 6]  292 	inc	sp
   5B35 C5            [11]  293 	push	bc
   5B36 33            [ 6]  294 	inc	sp
   5B37 DD 7E FE      [19]  295 	ld	a,-2 (ix)
   5B3A F5            [11]  296 	push	af
   5B3B 33            [ 6]  297 	inc	sp
   5B3C D5            [11]  298 	push	de
   5B3D CD 51 74      [17]  299 	call	_cpct_drawSolidBox
   5B40 DD F9         [10]  300 	ld	sp,ix
   5B42 DD E1         [14]  301 	pop	ix
   5B44 C9            [10]  302 	ret
                            303 ;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
                            304 ;	---------------------------------
                            305 ; Function drawBoxM2
                            306 ; ---------------------------------
   5B45                     307 _drawBoxM2::
   5B45 DD E5         [15]  308 	push	ix
   5B47 DD 21 00 00   [14]  309 	ld	ix,#0
   5B4B DD 39         [15]  310 	add	ix,sp
   5B4D 21 FA FF      [10]  311 	ld	hl,#-6
   5B50 39            [11]  312 	add	hl,sp
   5B51 F9            [ 6]  313 	ld	sp,hl
                            314 ;src/gui/gui.c:54: int left = (80-width_)/2;
   5B52 3E 50         [ 7]  315 	ld	a,#0x50
   5B54 DD 96 04      [19]  316 	sub	a, 4 (ix)
   5B57 4F            [ 4]  317 	ld	c,a
   5B58 3E 00         [ 7]  318 	ld	a,#0x00
   5B5A DD 9E 05      [19]  319 	sbc	a, 5 (ix)
   5B5D 47            [ 4]  320 	ld	b,a
   5B5E 61            [ 4]  321 	ld	h,c
   5B5F 50            [ 4]  322 	ld	d,b
   5B60 CB 78         [ 8]  323 	bit	7, b
   5B62 28 03         [12]  324 	jr	Z,00103$
   5B64 03            [ 6]  325 	inc	bc
   5B65 61            [ 4]  326 	ld	h,c
   5B66 50            [ 4]  327 	ld	d,b
   5B67                     328 00103$:
   5B67 5C            [ 4]  329 	ld	e, h
   5B68 CB 2A         [ 8]  330 	sra	d
   5B6A CB 1B         [ 8]  331 	rr	e
                            332 ;src/gui/gui.c:55: int top = (200-height_)/2;
   5B6C 3E C8         [ 7]  333 	ld	a,#0xC8
   5B6E DD 96 06      [19]  334 	sub	a, 6 (ix)
   5B71 4F            [ 4]  335 	ld	c,a
   5B72 3E 00         [ 7]  336 	ld	a,#0x00
   5B74 DD 9E 07      [19]  337 	sbc	a, 7 (ix)
   5B77 47            [ 4]  338 	ld	b,a
   5B78 61            [ 4]  339 	ld	h,c
   5B79 68            [ 4]  340 	ld	l,b
   5B7A CB 78         [ 8]  341 	bit	7, b
   5B7C 28 03         [12]  342 	jr	Z,00104$
   5B7E 03            [ 6]  343 	inc	bc
   5B7F 61            [ 4]  344 	ld	h,c
   5B80 68            [ 4]  345 	ld	l,b
   5B81                     346 00104$:
   5B81 DD 74 FA      [19]  347 	ld	-6 (ix),h
   5B84 DD 75 FB      [19]  348 	ld	-5 (ix),l
   5B87 DD CB FB 2E   [23]  349 	sra	-5 (ix)
   5B8B DD CB FA 1E   [23]  350 	rr	-6 (ix)
                            351 ;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   5B8F DD 7E FA      [19]  352 	ld	a,-6 (ix)
   5B92 DD 77 FF      [19]  353 	ld	-1 (ix), a
   5B95 C6 05         [ 7]  354 	add	a, #0x05
   5B97 4F            [ 4]  355 	ld	c,a
   5B98 DD 73 FC      [19]  356 	ld	-4 (ix), e
   5B9B 63            [ 4]  357 	ld	h, e
   5B9C 24            [ 4]  358 	inc	h
   5B9D 24            [ 4]  359 	inc	h
   5B9E D5            [11]  360 	push	de
   5B9F 79            [ 4]  361 	ld	a,c
   5BA0 F5            [11]  362 	push	af
   5BA1 33            [ 6]  363 	inc	sp
   5BA2 E5            [11]  364 	push	hl
   5BA3 33            [ 6]  365 	inc	sp
   5BA4 21 00 C0      [10]  366 	ld	hl,#0xC000
   5BA7 E5            [11]  367 	push	hl
   5BA8 CD 0A 75      [17]  368 	call	_cpct_getScreenPtr
   5BAB D1            [10]  369 	pop	de
                            370 ;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   5BAC DD 46 06      [19]  371 	ld	b,6 (ix)
   5BAF DD 4E 04      [19]  372 	ld	c,4 (ix)
   5BB2 79            [ 4]  373 	ld	a,c
   5BB3 C6 FF         [ 7]  374 	add	a,#0xFF
   5BB5 DD 75 FD      [19]  375 	ld	-3 (ix),l
   5BB8 DD 74 FE      [19]  376 	ld	-2 (ix),h
   5BBB C5            [11]  377 	push	bc
   5BBC D5            [11]  378 	push	de
   5BBD C5            [11]  379 	push	bc
   5BBE 33            [ 6]  380 	inc	sp
   5BBF F5            [11]  381 	push	af
   5BC0 33            [ 6]  382 	inc	sp
   5BC1 AF            [ 4]  383 	xor	a, a
   5BC2 F5            [11]  384 	push	af
   5BC3 33            [ 6]  385 	inc	sp
   5BC4 DD 6E FD      [19]  386 	ld	l,-3 (ix)
   5BC7 DD 66 FE      [19]  387 	ld	h,-2 (ix)
   5BCA E5            [11]  388 	push	hl
   5BCB CD 51 74      [17]  389 	call	_cpct_drawSolidBox
   5BCE F1            [10]  390 	pop	af
   5BCF F1            [10]  391 	pop	af
   5BD0 33            [ 6]  392 	inc	sp
   5BD1 D1            [10]  393 	pop	de
   5BD2 C1            [10]  394 	pop	bc
                            395 ;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5BD3 DD 66 FA      [19]  396 	ld	h,-6 (ix)
   5BD6 53            [ 4]  397 	ld	d,e
   5BD7 C5            [11]  398 	push	bc
   5BD8 E5            [11]  399 	push	hl
   5BD9 33            [ 6]  400 	inc	sp
   5BDA D5            [11]  401 	push	de
   5BDB 33            [ 6]  402 	inc	sp
   5BDC 21 00 C0      [10]  403 	ld	hl,#0xC000
   5BDF E5            [11]  404 	push	hl
   5BE0 CD 0A 75      [17]  405 	call	_cpct_getScreenPtr
   5BE3 C1            [10]  406 	pop	bc
                            407 ;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   5BE4 DD 7E 04      [19]  408 	ld	a,4 (ix)
   5BE7 EB            [ 4]  409 	ex	de,hl
   5BE8 C5            [11]  410 	push	bc
   5BE9 C5            [11]  411 	push	bc
   5BEA 33            [ 6]  412 	inc	sp
   5BEB 47            [ 4]  413 	ld	b,a
   5BEC 0E F8         [ 7]  414 	ld	c,#0xF8
   5BEE C5            [11]  415 	push	bc
   5BEF D5            [11]  416 	push	de
   5BF0 CD 51 74      [17]  417 	call	_cpct_drawSolidBox
   5BF3 F1            [10]  418 	pop	af
   5BF4 F1            [10]  419 	pop	af
   5BF5 33            [ 6]  420 	inc	sp
   5BF6 C1            [10]  421 	pop	bc
                            422 ;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   5BF7 DD 66 FF      [19]  423 	ld	h,-1 (ix)
   5BFA 24            [ 4]  424 	inc	h
   5BFB DD 56 FC      [19]  425 	ld	d,-4 (ix)
   5BFE 14            [ 4]  426 	inc	d
   5BFF C5            [11]  427 	push	bc
   5C00 E5            [11]  428 	push	hl
   5C01 33            [ 6]  429 	inc	sp
   5C02 D5            [11]  430 	push	de
   5C03 33            [ 6]  431 	inc	sp
   5C04 21 00 C0      [10]  432 	ld	hl,#0xC000
   5C07 E5            [11]  433 	push	hl
   5C08 CD 0A 75      [17]  434 	call	_cpct_getScreenPtr
   5C0B C1            [10]  435 	pop	bc
   5C0C 5D            [ 4]  436 	ld	e, l
   5C0D 54            [ 4]  437 	ld	d, h
                            438 ;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   5C0E DD 66 06      [19]  439 	ld	h,6 (ix)
   5C11 25            [ 4]  440 	dec	h
   5C12 25            [ 4]  441 	dec	h
   5C13 79            [ 4]  442 	ld	a,c
   5C14 C6 FE         [ 7]  443 	add	a,#0xFE
   5C16 E5            [11]  444 	push	hl
   5C17 33            [ 6]  445 	inc	sp
   5C18 47            [ 4]  446 	ld	b,a
   5C19 0E FF         [ 7]  447 	ld	c,#0xFF
   5C1B C5            [11]  448 	push	bc
   5C1C D5            [11]  449 	push	de
   5C1D CD 51 74      [17]  450 	call	_cpct_drawSolidBox
   5C20 DD F9         [10]  451 	ld	sp,ix
   5C22 DD E1         [14]  452 	pop	ix
   5C24 C9            [10]  453 	ret
                            454 ;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            455 ;	---------------------------------
                            456 ; Function EraseMenuEntry
                            457 ; ---------------------------------
   5C25                     458 _EraseMenuEntry::
   5C25 DD E5         [15]  459 	push	ix
   5C27 DD 21 00 00   [14]  460 	ld	ix,#0
   5C2B DD 39         [15]  461 	add	ix,sp
   5C2D 3B            [ 6]  462 	dec	sp
                            463 ;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5C2E DD 4E 06      [19]  464 	ld	c,6 (ix)
   5C31 06 00         [ 7]  465 	ld	b,#0x00
   5C33 69            [ 4]  466 	ld	l, c
   5C34 60            [ 4]  467 	ld	h, b
   5C35 29            [11]  468 	add	hl, hl
   5C36 29            [11]  469 	add	hl, hl
   5C37 09            [11]  470 	add	hl, bc
   5C38 29            [11]  471 	add	hl, hl
   5C39 4D            [ 4]  472 	ld	c,l
   5C3A 44            [ 4]  473 	ld	b,h
   5C3B 3E C9         [ 7]  474 	ld	a,#0xC9
   5C3D 91            [ 4]  475 	sub	a, c
   5C3E 57            [ 4]  476 	ld	d,a
   5C3F 3E 00         [ 7]  477 	ld	a,#0x00
   5C41 98            [ 4]  478 	sbc	a, b
   5C42 5F            [ 4]  479 	ld	e,a
   5C43 6A            [ 4]  480 	ld	l, d
   5C44 63            [ 4]  481 	ld	h, e
   5C45 CB 7B         [ 8]  482 	bit	7, e
   5C47 28 03         [12]  483 	jr	Z,00103$
   5C49 6A            [ 4]  484 	ld	l, d
   5C4A 63            [ 4]  485 	ld	h, e
   5C4B 23            [ 6]  486 	inc	hl
   5C4C                     487 00103$:
   5C4C CB 2C         [ 8]  488 	sra	h
   5C4E CB 1D         [ 8]  489 	rr	l
   5C50 55            [ 4]  490 	ld	d,l
   5C51 DD 7E 07      [19]  491 	ld	a,7 (ix)
   5C54 5F            [ 4]  492 	ld	e,a
   5C55 87            [ 4]  493 	add	a, a
   5C56 87            [ 4]  494 	add	a, a
   5C57 83            [ 4]  495 	add	a, e
   5C58 87            [ 4]  496 	add	a, a
   5C59 DD 77 FF      [19]  497 	ld	-1 (ix),a
   5C5C 7A            [ 4]  498 	ld	a,d
   5C5D DD 86 FF      [19]  499 	add	a, -1 (ix)
   5C60 C5            [11]  500 	push	bc
   5C61 57            [ 4]  501 	ld	d,a
   5C62 1E 20         [ 7]  502 	ld	e,#0x20
   5C64 D5            [11]  503 	push	de
   5C65 21 00 C0      [10]  504 	ld	hl,#0xC000
   5C68 E5            [11]  505 	push	hl
   5C69 CD 0A 75      [17]  506 	call	_cpct_getScreenPtr
   5C6C C1            [10]  507 	pop	bc
                            508 ;src/gui/gui.c:76: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   5C6D EB            [ 4]  509 	ex	de,hl
   5C6E C5            [11]  510 	push	bc
   5C6F 21 11 0A      [10]  511 	ld	hl,#0x0A11
   5C72 E5            [11]  512 	push	hl
   5C73 3E FF         [ 7]  513 	ld	a,#0xFF
   5C75 F5            [11]  514 	push	af
   5C76 33            [ 6]  515 	inc	sp
   5C77 D5            [11]  516 	push	de
   5C78 CD 51 74      [17]  517 	call	_cpct_drawSolidBox
   5C7B F1            [10]  518 	pop	af
   5C7C F1            [10]  519 	pop	af
   5C7D 33            [ 6]  520 	inc	sp
   5C7E C1            [10]  521 	pop	bc
                            522 ;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   5C7F 3E CA         [ 7]  523 	ld	a,#0xCA
   5C81 91            [ 4]  524 	sub	a, c
   5C82 57            [ 4]  525 	ld	d,a
   5C83 3E 00         [ 7]  526 	ld	a,#0x00
   5C85 98            [ 4]  527 	sbc	a, b
   5C86 5F            [ 4]  528 	ld	e,a
   5C87 6A            [ 4]  529 	ld	l, d
   5C88 63            [ 4]  530 	ld	h, e
   5C89 CB 7B         [ 8]  531 	bit	7, e
   5C8B 28 03         [12]  532 	jr	Z,00104$
   5C8D 6A            [ 4]  533 	ld	l, d
   5C8E 63            [ 4]  534 	ld	h, e
   5C8F 23            [ 6]  535 	inc	hl
   5C90                     536 00104$:
   5C90 CB 2C         [ 8]  537 	sra	h
   5C92 CB 1D         [ 8]  538 	rr	l
   5C94 7D            [ 4]  539 	ld	a,l
   5C95 DD 86 FF      [19]  540 	add	a, -1 (ix)
   5C98 4F            [ 4]  541 	ld	c,a
   5C99 DD 6E 07      [19]  542 	ld	l,7 (ix)
   5C9C 26 00         [ 7]  543 	ld	h,#0x00
   5C9E 29            [11]  544 	add	hl, hl
   5C9F EB            [ 4]  545 	ex	de,hl
   5CA0 DD 6E 04      [19]  546 	ld	l,4 (ix)
   5CA3 DD 66 05      [19]  547 	ld	h,5 (ix)
   5CA6 19            [11]  548 	add	hl,de
   5CA7 E5            [11]  549 	push	hl
   5CA8 5E            [ 7]  550 	ld	e,(hl)
   5CA9 23            [ 6]  551 	inc	hl
   5CAA 56            [ 7]  552 	ld	d,(hl)
   5CAB C5            [11]  553 	push	bc
   5CAC D5            [11]  554 	push	de
   5CAD CD FD 73      [17]  555 	call	_strlen
   5CB0 F1            [10]  556 	pop	af
   5CB1 EB            [ 4]  557 	ex	de,hl
   5CB2 C1            [10]  558 	pop	bc
   5CB3 E1            [10]  559 	pop	hl
   5CB4 3E 52         [ 7]  560 	ld	a,#0x52
   5CB6 93            [ 4]  561 	sub	a, e
   5CB7 5F            [ 4]  562 	ld	e,a
   5CB8 3E 00         [ 7]  563 	ld	a,#0x00
   5CBA 9A            [ 4]  564 	sbc	a, d
   5CBB 57            [ 4]  565 	ld	d,a
   5CBC CB 3A         [ 8]  566 	srl	d
   5CBE CB 1B         [ 8]  567 	rr	e
   5CC0 E5            [11]  568 	push	hl
   5CC1 51            [ 4]  569 	ld	d, c
   5CC2 D5            [11]  570 	push	de
   5CC3 01 00 C0      [10]  571 	ld	bc,#0xC000
   5CC6 C5            [11]  572 	push	bc
   5CC7 CD 0A 75      [17]  573 	call	_cpct_getScreenPtr
   5CCA 4D            [ 4]  574 	ld	c,l
   5CCB 44            [ 4]  575 	ld	b,h
   5CCC E1            [10]  576 	pop	hl
                            577 ;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   5CCD 5E            [ 7]  578 	ld	e,(hl)
   5CCE 23            [ 6]  579 	inc	hl
   5CCF 56            [ 7]  580 	ld	d,(hl)
   5CD0 AF            [ 4]  581 	xor	a, a
   5CD1 F5            [11]  582 	push	af
   5CD2 33            [ 6]  583 	inc	sp
   5CD3 C5            [11]  584 	push	bc
   5CD4 D5            [11]  585 	push	de
   5CD5 CD EC 70      [17]  586 	call	_cpct_drawStringM2
   5CD8 F1            [10]  587 	pop	af
   5CD9 F1            [10]  588 	pop	af
   5CDA 33            [ 6]  589 	inc	sp
   5CDB 33            [ 6]  590 	inc	sp
   5CDC DD E1         [14]  591 	pop	ix
   5CDE C9            [10]  592 	ret
                            593 ;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            594 ;	---------------------------------
                            595 ; Function drawMenuEntry
                            596 ; ---------------------------------
   5CDF                     597 _drawMenuEntry::
   5CDF DD E5         [15]  598 	push	ix
   5CE1 DD 21 00 00   [14]  599 	ld	ix,#0
   5CE5 DD 39         [15]  600 	add	ix,sp
   5CE7 21 FA FF      [10]  601 	ld	hl,#-6
   5CEA 39            [11]  602 	add	hl,sp
   5CEB F9            [ 6]  603 	ld	sp,hl
                            604 ;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5CEC DD 4E 06      [19]  605 	ld	c,6 (ix)
   5CEF 06 00         [ 7]  606 	ld	b,#0x00
   5CF1 69            [ 4]  607 	ld	l, c
   5CF2 60            [ 4]  608 	ld	h, b
   5CF3 29            [11]  609 	add	hl, hl
   5CF4 29            [11]  610 	add	hl, hl
   5CF5 09            [11]  611 	add	hl, bc
   5CF6 29            [11]  612 	add	hl, hl
   5CF7 4D            [ 4]  613 	ld	c,l
   5CF8 44            [ 4]  614 	ld	b,h
   5CF9 3E C9         [ 7]  615 	ld	a,#0xC9
   5CFB 91            [ 4]  616 	sub	a, c
   5CFC 57            [ 4]  617 	ld	d,a
   5CFD 3E 00         [ 7]  618 	ld	a,#0x00
   5CFF 98            [ 4]  619 	sbc	a, b
   5D00 5F            [ 4]  620 	ld	e,a
   5D01 6A            [ 4]  621 	ld	l, d
   5D02 63            [ 4]  622 	ld	h, e
   5D03 CB 7B         [ 8]  623 	bit	7, e
   5D05 28 03         [12]  624 	jr	Z,00114$
   5D07 6A            [ 4]  625 	ld	l, d
   5D08 63            [ 4]  626 	ld	h, e
   5D09 23            [ 6]  627 	inc	hl
   5D0A                     628 00114$:
   5D0A CB 2C         [ 8]  629 	sra	h
   5D0C CB 1D         [ 8]  630 	rr	l
   5D0E 55            [ 4]  631 	ld	d,l
   5D0F DD 7E 07      [19]  632 	ld	a,7 (ix)
   5D12 5F            [ 4]  633 	ld	e,a
   5D13 87            [ 4]  634 	add	a, a
   5D14 87            [ 4]  635 	add	a, a
   5D15 83            [ 4]  636 	add	a, e
   5D16 87            [ 4]  637 	add	a, a
   5D17 82            [ 4]  638 	add	a,d
   5D18 C5            [11]  639 	push	bc
   5D19 57            [ 4]  640 	ld	d,a
   5D1A 1E 20         [ 7]  641 	ld	e,#0x20
   5D1C D5            [11]  642 	push	de
   5D1D 21 00 C0      [10]  643 	ld	hl,#0xC000
   5D20 E5            [11]  644 	push	hl
   5D21 CD 0A 75      [17]  645 	call	_cpct_getScreenPtr
   5D24 C1            [10]  646 	pop	bc
                            647 ;src/gui/gui.c:91: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   5D25 EB            [ 4]  648 	ex	de,hl
   5D26 C5            [11]  649 	push	bc
   5D27 21 11 0A      [10]  650 	ld	hl,#0x0A11
   5D2A E5            [11]  651 	push	hl
   5D2B AF            [ 4]  652 	xor	a, a
   5D2C F5            [11]  653 	push	af
   5D2D 33            [ 6]  654 	inc	sp
   5D2E D5            [11]  655 	push	de
   5D2F CD 51 74      [17]  656 	call	_cpct_drawSolidBox
   5D32 F1            [10]  657 	pop	af
   5D33 F1            [10]  658 	pop	af
   5D34 33            [ 6]  659 	inc	sp
   5D35 C1            [10]  660 	pop	bc
                            661 ;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
   5D36 21 B0 36      [10]  662 	ld	hl,#0x36B0
   5D39                     663 00108$:
   5D39 2B            [ 6]  664 	dec	hl
   5D3A 7C            [ 4]  665 	ld	a,h
   5D3B B5            [ 4]  666 	or	a,l
   5D3C 20 FB         [12]  667 	jr	NZ,00108$
                            668 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5D3E 3E CA         [ 7]  669 	ld	a,#0xCA
   5D40 91            [ 4]  670 	sub	a, c
   5D41 DD 77 FD      [19]  671 	ld	-3 (ix),a
   5D44 3E 00         [ 7]  672 	ld	a,#0x00
   5D46 98            [ 4]  673 	sbc	a, b
   5D47 DD 77 FE      [19]  674 	ld	-2 (ix), a
   5D4A 07            [ 4]  675 	rlca
   5D4B E6 01         [ 7]  676 	and	a,#0x01
   5D4D 5F            [ 4]  677 	ld	e,a
   5D4E 21 00 00      [10]  678 	ld	hl,#0x0000
   5D51 E3            [19]  679 	ex	(sp), hl
   5D52                     680 00110$:
   5D52 DD 66 06      [19]  681 	ld	h,6 (ix)
   5D55 2E 00         [ 7]  682 	ld	l,#0x00
   5D57 DD 7E FA      [19]  683 	ld	a,-6 (ix)
   5D5A 94            [ 4]  684 	sub	a, h
   5D5B DD 7E FB      [19]  685 	ld	a,-5 (ix)
   5D5E 9D            [ 4]  686 	sbc	a, l
   5D5F E2 64 5D      [10]  687 	jp	PO, 00146$
   5D62 EE 80         [ 7]  688 	xor	a, #0x80
   5D64                     689 00146$:
   5D64 F2 0A 5E      [10]  690 	jp	P,00112$
                            691 ;src/gui/gui.c:99: if(i==iSelect)
   5D67 DD 56 07      [19]  692 	ld	d,7 (ix)
   5D6A 06 00         [ 7]  693 	ld	b,#0x00
   5D6C DD 7E FA      [19]  694 	ld	a,-6 (ix)
   5D6F 92            [ 4]  695 	sub	a, d
   5D70 20 0A         [12]  696 	jr	NZ,00103$
   5D72 DD 7E FB      [19]  697 	ld	a,-5 (ix)
   5D75 90            [ 4]  698 	sub	a, b
   5D76 20 04         [12]  699 	jr	NZ,00103$
                            700 ;src/gui/gui.c:100: penSelected = 1;
   5D78 0E 01         [ 7]  701 	ld	c,#0x01
   5D7A 18 02         [12]  702 	jr	00104$
   5D7C                     703 00103$:
                            704 ;src/gui/gui.c:102: penSelected = 0;
   5D7C 0E 00         [ 7]  705 	ld	c,#0x00
   5D7E                     706 00104$:
                            707 ;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   5D7E DD 6E FD      [19]  708 	ld	l,-3 (ix)
   5D81 DD 66 FE      [19]  709 	ld	h,-2 (ix)
   5D84 7B            [ 4]  710 	ld	a,e
   5D85 B7            [ 4]  711 	or	a, a
   5D86 28 07         [12]  712 	jr	Z,00115$
   5D88 DD 6E FD      [19]  713 	ld	l,-3 (ix)
   5D8B DD 66 FE      [19]  714 	ld	h,-2 (ix)
   5D8E 23            [ 6]  715 	inc	hl
   5D8F                     716 00115$:
   5D8F CB 2C         [ 8]  717 	sra	h
   5D91 CB 1D         [ 8]  718 	rr	l
   5D93 45            [ 4]  719 	ld	b,l
   5D94 DD 6E FA      [19]  720 	ld	l,-6 (ix)
   5D97 D5            [11]  721 	push	de
   5D98 5D            [ 4]  722 	ld	e,l
   5D99 29            [11]  723 	add	hl, hl
   5D9A 29            [11]  724 	add	hl, hl
   5D9B 19            [11]  725 	add	hl, de
   5D9C 29            [11]  726 	add	hl, hl
   5D9D D1            [10]  727 	pop	de
   5D9E 78            [ 4]  728 	ld	a,b
   5D9F 85            [ 4]  729 	add	a, l
   5DA0 DD 77 FF      [19]  730 	ld	-1 (ix),a
   5DA3 DD 56 FA      [19]  731 	ld	d,-6 (ix)
   5DA6 DD 46 FB      [19]  732 	ld	b,-5 (ix)
   5DA9 CB 22         [ 8]  733 	sla	d
   5DAB CB 10         [ 8]  734 	rl	b
   5DAD DD 7E 04      [19]  735 	ld	a,4 (ix)
   5DB0 82            [ 4]  736 	add	a, d
   5DB1 57            [ 4]  737 	ld	d,a
   5DB2 DD 7E 05      [19]  738 	ld	a,5 (ix)
   5DB5 88            [ 4]  739 	adc	a, b
   5DB6 47            [ 4]  740 	ld	b,a
   5DB7 6A            [ 4]  741 	ld	l, d
   5DB8 60            [ 4]  742 	ld	h, b
   5DB9 7E            [ 7]  743 	ld	a, (hl)
   5DBA 23            [ 6]  744 	inc	hl
   5DBB 66            [ 7]  745 	ld	h,(hl)
   5DBC 6F            [ 4]  746 	ld	l,a
   5DBD C5            [11]  747 	push	bc
   5DBE D5            [11]  748 	push	de
   5DBF E5            [11]  749 	push	hl
   5DC0 CD FD 73      [17]  750 	call	_strlen
   5DC3 F1            [10]  751 	pop	af
   5DC4 D1            [10]  752 	pop	de
   5DC5 C1            [10]  753 	pop	bc
   5DC6 3E 52         [ 7]  754 	ld	a,#0x52
   5DC8 95            [ 4]  755 	sub	a, l
   5DC9 6F            [ 4]  756 	ld	l,a
   5DCA 3E 00         [ 7]  757 	ld	a,#0x00
   5DCC 9C            [ 4]  758 	sbc	a, h
   5DCD 67            [ 4]  759 	ld	h,a
   5DCE CB 3C         [ 8]  760 	srl	h
   5DD0 CB 1D         [ 8]  761 	rr	l
   5DD2 DD 75 FC      [19]  762 	ld	-4 (ix),l
   5DD5 C5            [11]  763 	push	bc
   5DD6 D5            [11]  764 	push	de
   5DD7 DD 66 FF      [19]  765 	ld	h,-1 (ix)
   5DDA DD 6E FC      [19]  766 	ld	l,-4 (ix)
   5DDD E5            [11]  767 	push	hl
   5DDE 21 00 C0      [10]  768 	ld	hl,#0xC000
   5DE1 E5            [11]  769 	push	hl
   5DE2 CD 0A 75      [17]  770 	call	_cpct_getScreenPtr
   5DE5 D1            [10]  771 	pop	de
   5DE6 C1            [10]  772 	pop	bc
   5DE7 E5            [11]  773 	push	hl
   5DE8 FD E1         [14]  774 	pop	iy
                            775 ;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
   5DEA 6A            [ 4]  776 	ld	l, d
   5DEB 60            [ 4]  777 	ld	h, b
   5DEC 7E            [ 7]  778 	ld	a, (hl)
   5DED 23            [ 6]  779 	inc	hl
   5DEE 66            [ 7]  780 	ld	h,(hl)
   5DEF 6F            [ 4]  781 	ld	l,a
   5DF0 D5            [11]  782 	push	de
   5DF1 79            [ 4]  783 	ld	a,c
   5DF2 F5            [11]  784 	push	af
   5DF3 33            [ 6]  785 	inc	sp
   5DF4 FD E5         [15]  786 	push	iy
   5DF6 E5            [11]  787 	push	hl
   5DF7 CD EC 70      [17]  788 	call	_cpct_drawStringM2
   5DFA F1            [10]  789 	pop	af
   5DFB F1            [10]  790 	pop	af
   5DFC 33            [ 6]  791 	inc	sp
   5DFD D1            [10]  792 	pop	de
                            793 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5DFE DD 34 FA      [23]  794 	inc	-6 (ix)
   5E01 C2 52 5D      [10]  795 	jp	NZ,00110$
   5E04 DD 34 FB      [23]  796 	inc	-5 (ix)
   5E07 C3 52 5D      [10]  797 	jp	00110$
   5E0A                     798 00112$:
   5E0A DD F9         [10]  799 	ld	sp, ix
   5E0C DD E1         [14]  800 	pop	ix
   5E0E C9            [10]  801 	ret
                            802 ;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
                            803 ;	---------------------------------
                            804 ; Function drawMenu
                            805 ; ---------------------------------
   5E0F                     806 _drawMenu::
   5E0F DD E5         [15]  807 	push	ix
   5E11 DD 21 00 00   [14]  808 	ld	ix,#0
   5E15 DD 39         [15]  809 	add	ix,sp
   5E17 F5            [11]  810 	push	af
                            811 ;src/gui/gui.c:112: u8 iSelect=0;
   5E18 06 00         [ 7]  812 	ld	b,#0x00
                            813 ;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
   5E1A C5            [11]  814 	push	bc
   5E1B 21 00 40      [10]  815 	ld	hl,#0x4000
   5E1E E5            [11]  816 	push	hl
   5E1F 3E FF         [ 7]  817 	ld	a,#0xFF
   5E21 F5            [11]  818 	push	af
   5E22 33            [ 6]  819 	inc	sp
   5E23 26 C0         [ 7]  820 	ld	h, #0xC0
   5E25 E5            [11]  821 	push	hl
   5E26 CD D6 73      [17]  822 	call	_cpct_memset
   5E29 C1            [10]  823 	pop	bc
                            824 ;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
   5E2A DD 5E 06      [19]  825 	ld	e,6 (ix)
   5E2D 16 00         [ 7]  826 	ld	d,#0x00
   5E2F 6B            [ 4]  827 	ld	l, e
   5E30 62            [ 4]  828 	ld	h, d
   5E31 29            [11]  829 	add	hl, hl
   5E32 19            [11]  830 	add	hl, de
   5E33 29            [11]  831 	add	hl, hl
   5E34 29            [11]  832 	add	hl, hl
   5E35 C5            [11]  833 	push	bc
   5E36 E5            [11]  834 	push	hl
   5E37 21 1E 00      [10]  835 	ld	hl,#0x001E
   5E3A E5            [11]  836 	push	hl
   5E3B CD 45 5B      [17]  837 	call	_drawBoxM2
   5E3E F1            [10]  838 	pop	af
   5E3F F1            [10]  839 	pop	af
   5E40 AF            [ 4]  840 	xor	a, a
   5E41 F5            [11]  841 	push	af
   5E42 33            [ 6]  842 	inc	sp
   5E43 DD 7E 06      [19]  843 	ld	a,6 (ix)
   5E46 F5            [11]  844 	push	af
   5E47 33            [ 6]  845 	inc	sp
   5E48 DD 6E 04      [19]  846 	ld	l,4 (ix)
   5E4B DD 66 05      [19]  847 	ld	h,5 (ix)
   5E4E E5            [11]  848 	push	hl
   5E4F CD DF 5C      [17]  849 	call	_drawMenuEntry
   5E52 F1            [10]  850 	pop	af
   5E53 F1            [10]  851 	pop	af
   5E54 C1            [10]  852 	pop	bc
                            853 ;src/gui/gui.c:120: do{
   5E55 DD 4E 06      [19]  854 	ld	c,6 (ix)
   5E58 0D            [ 4]  855 	dec	c
   5E59                     856 00111$:
                            857 ;src/gui/gui.c:121: cpct_scanKeyboard(); 
   5E59 C5            [11]  858 	push	bc
   5E5A CD 2A 75      [17]  859 	call	_cpct_scanKeyboard
   5E5D 21 00 01      [10]  860 	ld	hl,#0x0100
   5E60 CD B5 70      [17]  861 	call	_cpct_isKeyPressed
   5E63 7D            [ 4]  862 	ld	a,l
   5E64 C1            [10]  863 	pop	bc
   5E65 B7            [ 4]  864 	or	a, a
   5E66 28 32         [12]  865 	jr	Z,00105$
                            866 ;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
   5E68 C5            [11]  867 	push	bc
   5E69 C5            [11]  868 	push	bc
   5E6A 33            [ 6]  869 	inc	sp
   5E6B DD 7E 06      [19]  870 	ld	a,6 (ix)
   5E6E F5            [11]  871 	push	af
   5E6F 33            [ 6]  872 	inc	sp
   5E70 DD 6E 04      [19]  873 	ld	l,4 (ix)
   5E73 DD 66 05      [19]  874 	ld	h,5 (ix)
   5E76 E5            [11]  875 	push	hl
   5E77 CD 25 5C      [17]  876 	call	_EraseMenuEntry
   5E7A F1            [10]  877 	pop	af
   5E7B F1            [10]  878 	pop	af
   5E7C C1            [10]  879 	pop	bc
                            880 ;src/gui/gui.c:127: if(iSelect ==0)
   5E7D 78            [ 4]  881 	ld	a,b
   5E7E B7            [ 4]  882 	or	a, a
   5E7F 20 03         [12]  883 	jr	NZ,00102$
                            884 ;src/gui/gui.c:128: iSelect = nbEntry-1;
   5E81 41            [ 4]  885 	ld	b,c
   5E82 18 01         [12]  886 	jr	00103$
   5E84                     887 00102$:
                            888 ;src/gui/gui.c:130: iSelect--;
   5E84 05            [ 4]  889 	dec	b
   5E85                     890 00103$:
                            891 ;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
   5E85 C5            [11]  892 	push	bc
   5E86 C5            [11]  893 	push	bc
   5E87 33            [ 6]  894 	inc	sp
   5E88 DD 7E 06      [19]  895 	ld	a,6 (ix)
   5E8B F5            [11]  896 	push	af
   5E8C 33            [ 6]  897 	inc	sp
   5E8D DD 6E 04      [19]  898 	ld	l,4 (ix)
   5E90 DD 66 05      [19]  899 	ld	h,5 (ix)
   5E93 E5            [11]  900 	push	hl
   5E94 CD DF 5C      [17]  901 	call	_drawMenuEntry
   5E97 F1            [10]  902 	pop	af
   5E98 F1            [10]  903 	pop	af
   5E99 C1            [10]  904 	pop	bc
   5E9A                     905 00105$:
                            906 ;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
   5E9A C5            [11]  907 	push	bc
   5E9B 21 00 04      [10]  908 	ld	hl,#0x0400
   5E9E CD B5 70      [17]  909 	call	_cpct_isKeyPressed
   5EA1 5D            [ 4]  910 	ld	e,l
   5EA2 C1            [10]  911 	pop	bc
   5EA3 7B            [ 4]  912 	ld	a,e
   5EA4 B7            [ 4]  913 	or	a, a
   5EA5 28 48         [12]  914 	jr	Z,00112$
                            915 ;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
   5EA7 C5            [11]  916 	push	bc
   5EA8 C5            [11]  917 	push	bc
   5EA9 33            [ 6]  918 	inc	sp
   5EAA DD 7E 06      [19]  919 	ld	a,6 (ix)
   5EAD F5            [11]  920 	push	af
   5EAE 33            [ 6]  921 	inc	sp
   5EAF DD 6E 04      [19]  922 	ld	l,4 (ix)
   5EB2 DD 66 05      [19]  923 	ld	h,5 (ix)
   5EB5 E5            [11]  924 	push	hl
   5EB6 CD 25 5C      [17]  925 	call	_EraseMenuEntry
   5EB9 F1            [10]  926 	pop	af
   5EBA F1            [10]  927 	pop	af
   5EBB C1            [10]  928 	pop	bc
                            929 ;src/gui/gui.c:139: if(iSelect == nbEntry-1)
   5EBC DD 5E 06      [19]  930 	ld	e,6 (ix)
   5EBF 16 00         [ 7]  931 	ld	d,#0x00
   5EC1 1B            [ 6]  932 	dec	de
   5EC2 DD 70 FE      [19]  933 	ld	-2 (ix),b
   5EC5 DD 36 FF 00   [19]  934 	ld	-1 (ix),#0x00
   5EC9 7B            [ 4]  935 	ld	a,e
   5ECA DD 96 FE      [19]  936 	sub	a, -2 (ix)
   5ECD 20 0A         [12]  937 	jr	NZ,00107$
   5ECF 7A            [ 4]  938 	ld	a,d
   5ED0 DD 96 FF      [19]  939 	sub	a, -1 (ix)
   5ED3 20 04         [12]  940 	jr	NZ,00107$
                            941 ;src/gui/gui.c:140: iSelect = 0;
   5ED5 06 00         [ 7]  942 	ld	b,#0x00
   5ED7 18 01         [12]  943 	jr	00108$
   5ED9                     944 00107$:
                            945 ;src/gui/gui.c:142: iSelect++;
   5ED9 04            [ 4]  946 	inc	b
   5EDA                     947 00108$:
                            948 ;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
   5EDA C5            [11]  949 	push	bc
   5EDB C5            [11]  950 	push	bc
   5EDC 33            [ 6]  951 	inc	sp
   5EDD DD 7E 06      [19]  952 	ld	a,6 (ix)
   5EE0 F5            [11]  953 	push	af
   5EE1 33            [ 6]  954 	inc	sp
   5EE2 DD 6E 04      [19]  955 	ld	l,4 (ix)
   5EE5 DD 66 05      [19]  956 	ld	h,5 (ix)
   5EE8 E5            [11]  957 	push	hl
   5EE9 CD DF 5C      [17]  958 	call	_drawMenuEntry
   5EEC F1            [10]  959 	pop	af
   5EED F1            [10]  960 	pop	af
   5EEE C1            [10]  961 	pop	bc
   5EEF                     962 00112$:
                            963 ;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
   5EEF C5            [11]  964 	push	bc
   5EF0 21 02 04      [10]  965 	ld	hl,#0x0402
   5EF3 CD B5 70      [17]  966 	call	_cpct_isKeyPressed
   5EF6 7D            [ 4]  967 	ld	a,l
   5EF7 C1            [10]  968 	pop	bc
   5EF8 B7            [ 4]  969 	or	a, a
   5EF9 CA 59 5E      [10]  970 	jp	Z,00111$
                            971 ;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
   5EFC 21 B0 36      [10]  972 	ld	hl,#0x36B0
   5EFF                     973 00117$:
   5EFF EB            [ 4]  974 	ex	de,hl
   5F00 1B            [ 6]  975 	dec	de
   5F01 6B            [ 4]  976 	ld	l, e
   5F02 7A            [ 4]  977 	ld	a,d
   5F03 67            [ 4]  978 	ld	h,a
   5F04 B3            [ 4]  979 	or	a,e
   5F05 20 F8         [12]  980 	jr	NZ,00117$
                            981 ;src/gui/gui.c:152: return iSelect;
   5F07 68            [ 4]  982 	ld	l,b
   5F08 DD F9         [10]  983 	ld	sp, ix
   5F0A DD E1         [14]  984 	pop	ix
   5F0C C9            [10]  985 	ret
                            986 ;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
                            987 ;	---------------------------------
                            988 ; Function drawWindow
                            989 ; ---------------------------------
   5F0D                     990 _drawWindow::
   5F0D DD E5         [15]  991 	push	ix
   5F0F DD 21 00 00   [14]  992 	ld	ix,#0
   5F13 DD 39         [15]  993 	add	ix,sp
   5F15 21 F5 FF      [10]  994 	ld	hl,#-11
   5F18 39            [11]  995 	add	hl,sp
   5F19 F9            [ 6]  996 	ld	sp,hl
                            997 ;src/gui/gui.c:166: u8 valueReturn=0;
   5F1A DD 36 F5 00   [19]  998 	ld	-11 (ix),#0x00
                            999 ;src/gui/gui.c:169: if(button == 0)
   5F1E DD 7E 07      [19] 1000 	ld	a,7 (ix)
   5F21 B7            [ 4] 1001 	or	a, a
   5F22 20 05         [12] 1002 	jr	NZ,00102$
                           1003 ;src/gui/gui.c:170: buttonTxt = "<OK>";
   5F24 11 94 60      [10] 1004 	ld	de,#___str_0
   5F27 18 03         [12] 1005 	jr	00103$
   5F29                    1006 00102$:
                           1007 ;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
   5F29 11 99 60      [10] 1008 	ld	de,#___str_1+0
   5F2C                    1009 00103$:
                           1010 ;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
   5F2C DD 4E 06      [19] 1011 	ld	c,6 (ix)
   5F2F 06 00         [ 7] 1012 	ld	b,#0x00
   5F31 03            [ 6] 1013 	inc	bc
   5F32 03            [ 6] 1014 	inc	bc
   5F33 69            [ 4] 1015 	ld	l, c
   5F34 60            [ 4] 1016 	ld	h, b
   5F35 29            [11] 1017 	add	hl, hl
   5F36 09            [11] 1018 	add	hl, bc
   5F37 29            [11] 1019 	add	hl, hl
   5F38 29            [11] 1020 	add	hl, hl
   5F39 C5            [11] 1021 	push	bc
   5F3A D5            [11] 1022 	push	de
   5F3B E5            [11] 1023 	push	hl
   5F3C 21 32 00      [10] 1024 	ld	hl,#0x0032
   5F3F E5            [11] 1025 	push	hl
   5F40 CD 45 5B      [17] 1026 	call	_drawBoxM2
   5F43 F1            [10] 1027 	pop	af
   5F44 F1            [10] 1028 	pop	af
   5F45 D1            [10] 1029 	pop	de
   5F46 C1            [10] 1030 	pop	bc
                           1031 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5F47 69            [ 4] 1032 	ld	l, c
   5F48 60            [ 4] 1033 	ld	h, b
   5F49 29            [11] 1034 	add	hl, hl
   5F4A 29            [11] 1035 	add	hl, hl
   5F4B 09            [11] 1036 	add	hl, bc
   5F4C 29            [11] 1037 	add	hl, hl
   5F4D 3E CA         [ 7] 1038 	ld	a,#0xCA
   5F4F 95            [ 4] 1039 	sub	a, l
   5F50 DD 77 FD      [19] 1040 	ld	-3 (ix),a
   5F53 3E 00         [ 7] 1041 	ld	a,#0x00
   5F55 9C            [ 4] 1042 	sbc	a, h
   5F56 DD 77 FE      [19] 1043 	ld	-2 (ix), a
   5F59 07            [ 4] 1044 	rlca
   5F5A E6 01         [ 7] 1045 	and	a,#0x01
   5F5C DD 77 FA      [19] 1046 	ld	-6 (ix),a
   5F5F DD 36 F6 00   [19] 1047 	ld	-10 (ix),#0x00
   5F63 DD 36 F9 00   [19] 1048 	ld	-7 (ix),#0x00
   5F67                    1049 00114$:
                           1050 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   5F67 DD 7E FD      [19] 1051 	ld	a,-3 (ix)
   5F6A C6 01         [ 7] 1052 	add	a, #0x01
   5F6C DD 77 F7      [19] 1053 	ld	-9 (ix),a
   5F6F DD 7E FE      [19] 1054 	ld	a,-2 (ix)
   5F72 CE 00         [ 7] 1055 	adc	a, #0x00
   5F74 DD 77 F8      [19] 1056 	ld	-8 (ix),a
                           1057 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5F77 DD 7E F6      [19] 1058 	ld	a,-10 (ix)
   5F7A DD 96 06      [19] 1059 	sub	a, 6 (ix)
   5F7D D2 07 60      [10] 1060 	jp	NC,00104$
                           1061 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   5F80 DD 6E FD      [19] 1062 	ld	l,-3 (ix)
   5F83 DD 66 FE      [19] 1063 	ld	h,-2 (ix)
   5F86 DD 7E FA      [19] 1064 	ld	a,-6 (ix)
   5F89 B7            [ 4] 1065 	or	a, a
   5F8A 28 04         [12] 1066 	jr	Z,00118$
   5F8C C1            [10] 1067 	pop	bc
   5F8D E1            [10] 1068 	pop	hl
   5F8E E5            [11] 1069 	push	hl
   5F8F C5            [11] 1070 	push	bc
   5F90                    1071 00118$:
   5F90 CB 2C         [ 8] 1072 	sra	h
   5F92 CB 1D         [ 8] 1073 	rr	l
   5F94 DD 66 F9      [19] 1074 	ld	h,-7 (ix)
   5F97 7D            [ 4] 1075 	ld	a,l
   5F98 84            [ 4] 1076 	add	a, h
   5F99 DD 77 FF      [19] 1077 	ld	-1 (ix),a
   5F9C DD 6E F6      [19] 1078 	ld	l,-10 (ix)
   5F9F 26 00         [ 7] 1079 	ld	h,#0x00
   5FA1 29            [11] 1080 	add	hl, hl
   5FA2 45            [ 4] 1081 	ld	b,l
   5FA3 4C            [ 4] 1082 	ld	c,h
   5FA4 DD 7E 04      [19] 1083 	ld	a,4 (ix)
   5FA7 80            [ 4] 1084 	add	a, b
   5FA8 DD 77 FB      [19] 1085 	ld	-5 (ix),a
   5FAB DD 7E 05      [19] 1086 	ld	a,5 (ix)
   5FAE 89            [ 4] 1087 	adc	a, c
   5FAF DD 77 FC      [19] 1088 	ld	-4 (ix),a
   5FB2 DD 6E FB      [19] 1089 	ld	l,-5 (ix)
   5FB5 DD 66 FC      [19] 1090 	ld	h,-4 (ix)
   5FB8 4E            [ 7] 1091 	ld	c,(hl)
   5FB9 23            [ 6] 1092 	inc	hl
   5FBA 46            [ 7] 1093 	ld	b,(hl)
   5FBB D5            [11] 1094 	push	de
   5FBC C5            [11] 1095 	push	bc
   5FBD CD FD 73      [17] 1096 	call	_strlen
   5FC0 F1            [10] 1097 	pop	af
   5FC1 D1            [10] 1098 	pop	de
   5FC2 3E 52         [ 7] 1099 	ld	a,#0x52
   5FC4 95            [ 4] 1100 	sub	a, l
   5FC5 6F            [ 4] 1101 	ld	l,a
   5FC6 3E 00         [ 7] 1102 	ld	a,#0x00
   5FC8 9C            [ 4] 1103 	sbc	a, h
   5FC9 67            [ 4] 1104 	ld	h,a
   5FCA CB 3C         [ 8] 1105 	srl	h
   5FCC CB 1D         [ 8] 1106 	rr	l
   5FCE 45            [ 4] 1107 	ld	b,l
   5FCF D5            [11] 1108 	push	de
   5FD0 DD 7E FF      [19] 1109 	ld	a,-1 (ix)
   5FD3 F5            [11] 1110 	push	af
   5FD4 33            [ 6] 1111 	inc	sp
   5FD5 C5            [11] 1112 	push	bc
   5FD6 33            [ 6] 1113 	inc	sp
   5FD7 21 00 C0      [10] 1114 	ld	hl,#0xC000
   5FDA E5            [11] 1115 	push	hl
   5FDB CD 0A 75      [17] 1116 	call	_cpct_getScreenPtr
   5FDE D1            [10] 1117 	pop	de
   5FDF E5            [11] 1118 	push	hl
   5FE0 FD E1         [14] 1119 	pop	iy
                           1120 ;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
   5FE2 DD 6E FB      [19] 1121 	ld	l,-5 (ix)
   5FE5 DD 66 FC      [19] 1122 	ld	h,-4 (ix)
   5FE8 4E            [ 7] 1123 	ld	c,(hl)
   5FE9 23            [ 6] 1124 	inc	hl
   5FEA 46            [ 7] 1125 	ld	b,(hl)
   5FEB D5            [11] 1126 	push	de
   5FEC AF            [ 4] 1127 	xor	a, a
   5FED F5            [11] 1128 	push	af
   5FEE 33            [ 6] 1129 	inc	sp
   5FEF FD E5         [15] 1130 	push	iy
   5FF1 C5            [11] 1131 	push	bc
   5FF2 CD EC 70      [17] 1132 	call	_cpct_drawStringM2
   5FF5 F1            [10] 1133 	pop	af
   5FF6 F1            [10] 1134 	pop	af
   5FF7 33            [ 6] 1135 	inc	sp
   5FF8 D1            [10] 1136 	pop	de
                           1137 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   5FF9 DD 7E F9      [19] 1138 	ld	a,-7 (ix)
   5FFC C6 0A         [ 7] 1139 	add	a, #0x0A
   5FFE DD 77 F9      [19] 1140 	ld	-7 (ix),a
   6001 DD 34 F6      [23] 1141 	inc	-10 (ix)
   6004 C3 67 5F      [10] 1142 	jp	00114$
   6007                    1143 00104$:
                           1144 ;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   6007 DD 46 FD      [19] 1145 	ld	b,-3 (ix)
   600A DD 66 FE      [19] 1146 	ld	h,-2 (ix)
   600D DD 7E FA      [19] 1147 	ld	a,-6 (ix)
   6010 B7            [ 4] 1148 	or	a, a
   6011 28 06         [12] 1149 	jr	Z,00119$
   6013 DD 46 F7      [19] 1150 	ld	b,-9 (ix)
   6016 DD 66 F8      [19] 1151 	ld	h,-8 (ix)
   6019                    1152 00119$:
   6019 CB 2C         [ 8] 1153 	sra	h
   601B CB 18         [ 8] 1154 	rr	b
   601D DD 4E 06      [19] 1155 	ld	c,6 (ix)
   6020 0C            [ 4] 1156 	inc	c
   6021 79            [ 4] 1157 	ld	a,c
   6022 87            [ 4] 1158 	add	a, a
   6023 87            [ 4] 1159 	add	a, a
   6024 81            [ 4] 1160 	add	a, c
   6025 87            [ 4] 1161 	add	a, a
   6026 67            [ 4] 1162 	ld	h, a
   6027 80            [ 4] 1163 	add	a,b
   6028 47            [ 4] 1164 	ld	b,a
   6029 C5            [11] 1165 	push	bc
   602A D5            [11] 1166 	push	de
   602B D5            [11] 1167 	push	de
   602C CD FD 73      [17] 1168 	call	_strlen
   602F F1            [10] 1169 	pop	af
   6030 D1            [10] 1170 	pop	de
   6031 C1            [10] 1171 	pop	bc
   6032 3E 52         [ 7] 1172 	ld	a,#0x52
   6034 95            [ 4] 1173 	sub	a, l
   6035 6F            [ 4] 1174 	ld	l,a
   6036 3E 00         [ 7] 1175 	ld	a,#0x00
   6038 9C            [ 4] 1176 	sbc	a, h
   6039 67            [ 4] 1177 	ld	h,a
   603A CB 3C         [ 8] 1178 	srl	h
   603C CB 1D         [ 8] 1179 	rr	l
   603E 7D            [ 4] 1180 	ld	a,l
   603F D5            [11] 1181 	push	de
   6040 C5            [11] 1182 	push	bc
   6041 33            [ 6] 1183 	inc	sp
   6042 F5            [11] 1184 	push	af
   6043 33            [ 6] 1185 	inc	sp
   6044 21 00 C0      [10] 1186 	ld	hl,#0xC000
   6047 E5            [11] 1187 	push	hl
   6048 CD 0A 75      [17] 1188 	call	_cpct_getScreenPtr
   604B D1            [10] 1189 	pop	de
                           1190 ;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
   604C 4D            [ 4] 1191 	ld	c, l
   604D 44            [ 4] 1192 	ld	b, h
   604E AF            [ 4] 1193 	xor	a, a
   604F F5            [11] 1194 	push	af
   6050 33            [ 6] 1195 	inc	sp
   6051 C5            [11] 1196 	push	bc
   6052 D5            [11] 1197 	push	de
   6053 CD EC 70      [17] 1198 	call	_cpct_drawStringM2
   6056 F1            [10] 1199 	pop	af
   6057 F1            [10] 1200 	pop	af
   6058 33            [ 6] 1201 	inc	sp
                           1202 ;src/gui/gui.c:186: do{
   6059                    1203 00110$:
                           1204 ;src/gui/gui.c:187: cpct_scanKeyboard(); 
   6059 CD 2A 75      [17] 1205 	call	_cpct_scanKeyboard
                           1206 ;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
   605C 21 02 04      [10] 1207 	ld	hl,#0x0402
   605F CD B5 70      [17] 1208 	call	_cpct_isKeyPressed
   6062 7D            [ 4] 1209 	ld	a,l
   6063 B7            [ 4] 1210 	or	a, a
   6064 28 04         [12] 1211 	jr	Z,00106$
                           1212 ;src/gui/gui.c:190: valueReturn=1;
   6066 DD 36 F5 01   [19] 1213 	ld	-11 (ix),#0x01
   606A                    1214 00106$:
                           1215 ;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
   606A 21 08 04      [10] 1216 	ld	hl,#0x0408
   606D CD B5 70      [17] 1217 	call	_cpct_isKeyPressed
   6070 7D            [ 4] 1218 	ld	a,l
   6071 B7            [ 4] 1219 	or	a, a
   6072 28 04         [12] 1220 	jr	Z,00111$
                           1221 ;src/gui/gui.c:193: valueReturn=0;
   6074 DD 36 F5 00   [19] 1222 	ld	-11 (ix),#0x00
   6078                    1223 00111$:
                           1224 ;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   6078 21 02 04      [10] 1225 	ld	hl,#0x0402
   607B CD B5 70      [17] 1226 	call	_cpct_isKeyPressed
   607E 7D            [ 4] 1227 	ld	a,l
   607F B7            [ 4] 1228 	or	a, a
   6080 20 0A         [12] 1229 	jr	NZ,00112$
   6082 21 08 04      [10] 1230 	ld	hl,#0x0408
   6085 CD B5 70      [17] 1231 	call	_cpct_isKeyPressed
   6088 7D            [ 4] 1232 	ld	a,l
   6089 B7            [ 4] 1233 	or	a, a
   608A 28 CD         [12] 1234 	jr	Z,00110$
   608C                    1235 00112$:
                           1236 ;src/gui/gui.c:197: return valueReturn;
   608C DD 6E F5      [19] 1237 	ld	l,-11 (ix)
   608F DD F9         [10] 1238 	ld	sp, ix
   6091 DD E1         [14] 1239 	pop	ix
   6093 C9            [10] 1240 	ret
   6094                    1241 ___str_0:
   6094 3C 4F 4B 3E        1242 	.ascii "<OK>"
   6098 00                 1243 	.db 0x00
   6099                    1244 ___str_1:
   6099 3C 4F 4B 3E 20 20  1245 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   60A7 00                 1246 	.db 0x00
                           1247 	.area _CODE
                           1248 	.area _INITIALIZER
                           1249 	.area _CABS (ABS)
