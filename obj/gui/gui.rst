                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 17:23:07 2016
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
   5B51                      66 _putM0::
                             67 ;src/gui/gui.c:5: cpct_setVideoMode(0);
   5B51 AF            [ 4]   68 	xor	a, a
   5B52 F5            [11]   69 	push	af
   5B53 33            [ 6]   70 	inc	sp
   5B54 CD 54 79      [17]   71 	call	_cpct_setVideoMode
   5B57 33            [ 6]   72 	inc	sp
                             73 ;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
   5B58 21 19 62      [10]   74 	ld	hl,#_paletteTrains
   5B5B 01 10 00      [10]   75 	ld	bc,#0x0010
   5B5E C5            [11]   76 	push	bc
   5B5F E5            [11]   77 	push	hl
   5B60 CD 19 74      [17]   78 	call	_cpct_setPalette
   5B63 C9            [10]   79 	ret
                             80 ;src/gui/gui.c:10: void putM1(void)
                             81 ;	---------------------------------
                             82 ; Function putM1
                             83 ; ---------------------------------
   5B64                      84 _putM1::
                             85 ;src/gui/gui.c:12: cpct_setVideoMode(1);
   5B64 3E 01         [ 7]   86 	ld	a,#0x01
   5B66 F5            [11]   87 	push	af
   5B67 33            [ 6]   88 	inc	sp
   5B68 CD 54 79      [17]   89 	call	_cpct_setVideoMode
   5B6B 33            [ 6]   90 	inc	sp
                             91 ;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
   5B6C 21 29 62      [10]   92 	ld	hl,#_paletteMenusM1
   5B6F 01 04 00      [10]   93 	ld	bc,#0x0004
   5B72 C5            [11]   94 	push	bc
   5B73 E5            [11]   95 	push	hl
   5B74 CD 19 74      [17]   96 	call	_cpct_setPalette
   5B77 C9            [10]   97 	ret
                             98 ;src/gui/gui.c:17: void putM2(void)
                             99 ;	---------------------------------
                            100 ; Function putM2
                            101 ; ---------------------------------
   5B78                     102 _putM2::
                            103 ;src/gui/gui.c:19: cpct_setVideoMode(2);
   5B78 3E 02         [ 7]  104 	ld	a,#0x02
   5B7A F5            [11]  105 	push	af
   5B7B 33            [ 6]  106 	inc	sp
   5B7C CD 54 79      [17]  107 	call	_cpct_setVideoMode
   5B7F 33            [ 6]  108 	inc	sp
                            109 ;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
   5B80 21 2D 62      [10]  110 	ld	hl,#_paletteMenusM2
   5B83 01 02 00      [10]  111 	ld	bc,#0x0002
   5B86 C5            [11]  112 	push	bc
   5B87 E5            [11]  113 	push	hl
   5B88 CD 19 74      [17]  114 	call	_cpct_setPalette
                            115 ;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
   5B8B 21 00 40      [10]  116 	ld	hl,#0x4000
   5B8E E5            [11]  117 	push	hl
   5B8F 3E FF         [ 7]  118 	ld	a,#0xFF
   5B91 F5            [11]  119 	push	af
   5B92 33            [ 6]  120 	inc	sp
   5B93 26 C0         [ 7]  121 	ld	h, #0xC0
   5B95 E5            [11]  122 	push	hl
   5B96 CD 82 79      [17]  123 	call	_cpct_memset
   5B99 C9            [10]  124 	ret
                            125 ;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
                            126 ;	---------------------------------
                            127 ; Function drawBoxM0
                            128 ; ---------------------------------
   5B9A                     129 _drawBoxM0::
   5B9A DD E5         [15]  130 	push	ix
   5B9C DD 21 00 00   [14]  131 	ld	ix,#0
   5BA0 DD 39         [15]  132 	add	ix,sp
   5BA2 21 F9 FF      [10]  133 	ld	hl,#-7
   5BA5 39            [11]  134 	add	hl,sp
   5BA6 F9            [ 6]  135 	ld	sp,hl
                            136 ;src/gui/gui.c:30: int left = (80-width_)/2;
   5BA7 3E 50         [ 7]  137 	ld	a,#0x50
   5BA9 DD 96 04      [19]  138 	sub	a, 4 (ix)
   5BAC 57            [ 4]  139 	ld	d,a
   5BAD 3E 00         [ 7]  140 	ld	a,#0x00
   5BAF DD 9E 05      [19]  141 	sbc	a, 5 (ix)
   5BB2 5F            [ 4]  142 	ld	e,a
   5BB3 6A            [ 4]  143 	ld	l, d
   5BB4 63            [ 4]  144 	ld	h, e
   5BB5 CB 7B         [ 8]  145 	bit	7, e
   5BB7 28 03         [12]  146 	jr	Z,00103$
   5BB9 6A            [ 4]  147 	ld	l, d
   5BBA 63            [ 4]  148 	ld	h, e
   5BBB 23            [ 6]  149 	inc	hl
   5BBC                     150 00103$:
   5BBC DD 75 F9      [19]  151 	ld	-7 (ix),l
   5BBF DD 74 FA      [19]  152 	ld	-6 (ix),h
   5BC2 DD CB FA 2E   [23]  153 	sra	-6 (ix)
   5BC6 DD CB F9 1E   [23]  154 	rr	-7 (ix)
                            155 ;src/gui/gui.c:31: int top = (200-height_)/2;
   5BCA 3E C8         [ 7]  156 	ld	a,#0xC8
   5BCC DD 96 06      [19]  157 	sub	a, 6 (ix)
   5BCF 4F            [ 4]  158 	ld	c,a
   5BD0 3E 00         [ 7]  159 	ld	a,#0x00
   5BD2 DD 9E 07      [19]  160 	sbc	a, 7 (ix)
   5BD5 47            [ 4]  161 	ld	b,a
   5BD6 61            [ 4]  162 	ld	h,c
   5BD7 50            [ 4]  163 	ld	d,b
   5BD8 CB 78         [ 8]  164 	bit	7, b
   5BDA 28 03         [12]  165 	jr	Z,00104$
   5BDC 03            [ 6]  166 	inc	bc
   5BDD 61            [ 4]  167 	ld	h,c
   5BDE 50            [ 4]  168 	ld	d,b
   5BDF                     169 00104$:
   5BDF 5C            [ 4]  170 	ld	e, h
   5BE0 CB 2A         [ 8]  171 	sra	d
   5BE2 CB 1B         [ 8]  172 	rr	e
                            173 ;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
   5BE4 D5            [11]  174 	push	de
   5BE5 21 09 09      [10]  175 	ld	hl,#0x0909
   5BE8 E5            [11]  176 	push	hl
   5BE9 CD 66 79      [17]  177 	call	_cpct_px2byteM0
   5BEC 65            [ 4]  178 	ld	h,l
   5BED 01 00 40      [10]  179 	ld	bc,#0x4000
   5BF0 C5            [11]  180 	push	bc
   5BF1 E5            [11]  181 	push	hl
   5BF2 33            [ 6]  182 	inc	sp
   5BF3 21 00 C0      [10]  183 	ld	hl,#0xC000
   5BF6 E5            [11]  184 	push	hl
   5BF7 CD 82 79      [17]  185 	call	_cpct_memset
   5BFA D1            [10]  186 	pop	de
                            187 ;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   5BFB DD 73 FE      [19]  188 	ld	-2 (ix), e
   5BFE 63            [ 4]  189 	ld	h, e
   5BFF 24            [ 4]  190 	inc	h
   5C00 24            [ 4]  191 	inc	h
   5C01 24            [ 4]  192 	inc	h
   5C02 24            [ 4]  193 	inc	h
   5C03 DD 7E F9      [19]  194 	ld	a,-7 (ix)
   5C06 3C            [ 4]  195 	inc	a
   5C07 DD 77 FF      [19]  196 	ld	-1 (ix),a
   5C0A D5            [11]  197 	push	de
   5C0B E5            [11]  198 	push	hl
   5C0C 33            [ 6]  199 	inc	sp
   5C0D DD 7E FF      [19]  200 	ld	a,-1 (ix)
   5C10 F5            [11]  201 	push	af
   5C11 33            [ 6]  202 	inc	sp
   5C12 21 00 C0      [10]  203 	ld	hl,#0xC000
   5C15 E5            [11]  204 	push	hl
   5C16 CD B6 7A      [17]  205 	call	_cpct_getScreenPtr
   5C19 D1            [10]  206 	pop	de
   5C1A 4D            [ 4]  207 	ld	c, l
   5C1B 44            [ 4]  208 	ld	b, h
                            209 ;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   5C1C DD 7E 06      [19]  210 	ld	a,6 (ix)
   5C1F DD 77 FB      [19]  211 	ld	-5 (ix),a
   5C22 DD 7E 04      [19]  212 	ld	a,4 (ix)
   5C25 DD 77 FD      [19]  213 	ld	-3 (ix),a
   5C28 C5            [11]  214 	push	bc
   5C29 D5            [11]  215 	push	de
   5C2A 21 02 02      [10]  216 	ld	hl,#0x0202
   5C2D E5            [11]  217 	push	hl
   5C2E CD 66 79      [17]  218 	call	_cpct_px2byteM0
   5C31 DD 75 FC      [19]  219 	ld	-4 (ix),l
   5C34 D1            [10]  220 	pop	de
   5C35 C1            [10]  221 	pop	bc
   5C36 D5            [11]  222 	push	de
   5C37 DD 66 FB      [19]  223 	ld	h,-5 (ix)
   5C3A DD 6E FD      [19]  224 	ld	l,-3 (ix)
   5C3D E5            [11]  225 	push	hl
   5C3E DD 7E FC      [19]  226 	ld	a,-4 (ix)
   5C41 F5            [11]  227 	push	af
   5C42 33            [ 6]  228 	inc	sp
   5C43 C5            [11]  229 	push	bc
   5C44 CD FD 79      [17]  230 	call	_cpct_drawSolidBox
   5C47 F1            [10]  231 	pop	af
   5C48 F1            [10]  232 	pop	af
   5C49 33            [ 6]  233 	inc	sp
   5C4A D1            [10]  234 	pop	de
                            235 ;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5C4B 63            [ 4]  236 	ld	h,e
   5C4C DD 56 F9      [19]  237 	ld	d,-7 (ix)
   5C4F E5            [11]  238 	push	hl
   5C50 33            [ 6]  239 	inc	sp
   5C51 D5            [11]  240 	push	de
   5C52 33            [ 6]  241 	inc	sp
   5C53 21 00 C0      [10]  242 	ld	hl,#0xC000
   5C56 E5            [11]  243 	push	hl
   5C57 CD B6 7A      [17]  244 	call	_cpct_getScreenPtr
                            245 ;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   5C5A E5            [11]  246 	push	hl
   5C5B 21 06 06      [10]  247 	ld	hl,#0x0606
   5C5E E5            [11]  248 	push	hl
   5C5F CD 66 79      [17]  249 	call	_cpct_px2byteM0
   5C62 45            [ 4]  250 	ld	b,l
   5C63 D1            [10]  251 	pop	de
   5C64 DD 66 FB      [19]  252 	ld	h,-5 (ix)
   5C67 DD 6E FD      [19]  253 	ld	l,-3 (ix)
   5C6A E5            [11]  254 	push	hl
   5C6B C5            [11]  255 	push	bc
   5C6C 33            [ 6]  256 	inc	sp
   5C6D D5            [11]  257 	push	de
   5C6E CD FD 79      [17]  258 	call	_cpct_drawSolidBox
   5C71 F1            [10]  259 	pop	af
   5C72 F1            [10]  260 	pop	af
   5C73 33            [ 6]  261 	inc	sp
                            262 ;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   5C74 DD 66 FE      [19]  263 	ld	h,-2 (ix)
   5C77 24            [ 4]  264 	inc	h
   5C78 24            [ 4]  265 	inc	h
   5C79 E5            [11]  266 	push	hl
   5C7A 33            [ 6]  267 	inc	sp
   5C7B DD 7E FF      [19]  268 	ld	a,-1 (ix)
   5C7E F5            [11]  269 	push	af
   5C7F 33            [ 6]  270 	inc	sp
   5C80 21 00 C0      [10]  271 	ld	hl,#0xC000
   5C83 E5            [11]  272 	push	hl
   5C84 CD B6 7A      [17]  273 	call	_cpct_getScreenPtr
   5C87 EB            [ 4]  274 	ex	de,hl
                            275 ;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   5C88 DD 7E 06      [19]  276 	ld	a,6 (ix)
   5C8B C6 FC         [ 7]  277 	add	a,#0xFC
   5C8D 4F            [ 4]  278 	ld	c,a
   5C8E DD 46 04      [19]  279 	ld	b,4 (ix)
   5C91 05            [ 4]  280 	dec	b
   5C92 05            [ 4]  281 	dec	b
   5C93 C5            [11]  282 	push	bc
   5C94 D5            [11]  283 	push	de
   5C95 21 00 00      [10]  284 	ld	hl,#0x0000
   5C98 E5            [11]  285 	push	hl
   5C99 CD 66 79      [17]  286 	call	_cpct_px2byteM0
   5C9C DD 75 FC      [19]  287 	ld	-4 (ix),l
   5C9F D1            [10]  288 	pop	de
   5CA0 C1            [10]  289 	pop	bc
   5CA1 79            [ 4]  290 	ld	a,c
   5CA2 F5            [11]  291 	push	af
   5CA3 33            [ 6]  292 	inc	sp
   5CA4 C5            [11]  293 	push	bc
   5CA5 33            [ 6]  294 	inc	sp
   5CA6 DD 7E FC      [19]  295 	ld	a,-4 (ix)
   5CA9 F5            [11]  296 	push	af
   5CAA 33            [ 6]  297 	inc	sp
   5CAB D5            [11]  298 	push	de
   5CAC CD FD 79      [17]  299 	call	_cpct_drawSolidBox
   5CAF DD F9         [10]  300 	ld	sp,ix
   5CB1 DD E1         [14]  301 	pop	ix
   5CB3 C9            [10]  302 	ret
                            303 ;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
                            304 ;	---------------------------------
                            305 ; Function drawBoxM2
                            306 ; ---------------------------------
   5CB4                     307 _drawBoxM2::
   5CB4 DD E5         [15]  308 	push	ix
   5CB6 DD 21 00 00   [14]  309 	ld	ix,#0
   5CBA DD 39         [15]  310 	add	ix,sp
   5CBC 21 FA FF      [10]  311 	ld	hl,#-6
   5CBF 39            [11]  312 	add	hl,sp
   5CC0 F9            [ 6]  313 	ld	sp,hl
                            314 ;src/gui/gui.c:54: int left = (80-width_)/2;
   5CC1 3E 50         [ 7]  315 	ld	a,#0x50
   5CC3 DD 96 04      [19]  316 	sub	a, 4 (ix)
   5CC6 4F            [ 4]  317 	ld	c,a
   5CC7 3E 00         [ 7]  318 	ld	a,#0x00
   5CC9 DD 9E 05      [19]  319 	sbc	a, 5 (ix)
   5CCC 47            [ 4]  320 	ld	b,a
   5CCD 61            [ 4]  321 	ld	h,c
   5CCE 50            [ 4]  322 	ld	d,b
   5CCF CB 78         [ 8]  323 	bit	7, b
   5CD1 28 03         [12]  324 	jr	Z,00103$
   5CD3 03            [ 6]  325 	inc	bc
   5CD4 61            [ 4]  326 	ld	h,c
   5CD5 50            [ 4]  327 	ld	d,b
   5CD6                     328 00103$:
   5CD6 5C            [ 4]  329 	ld	e, h
   5CD7 CB 2A         [ 8]  330 	sra	d
   5CD9 CB 1B         [ 8]  331 	rr	e
                            332 ;src/gui/gui.c:55: int top = (200-height_)/2;
   5CDB 3E C8         [ 7]  333 	ld	a,#0xC8
   5CDD DD 96 06      [19]  334 	sub	a, 6 (ix)
   5CE0 4F            [ 4]  335 	ld	c,a
   5CE1 3E 00         [ 7]  336 	ld	a,#0x00
   5CE3 DD 9E 07      [19]  337 	sbc	a, 7 (ix)
   5CE6 47            [ 4]  338 	ld	b,a
   5CE7 61            [ 4]  339 	ld	h,c
   5CE8 68            [ 4]  340 	ld	l,b
   5CE9 CB 78         [ 8]  341 	bit	7, b
   5CEB 28 03         [12]  342 	jr	Z,00104$
   5CED 03            [ 6]  343 	inc	bc
   5CEE 61            [ 4]  344 	ld	h,c
   5CEF 68            [ 4]  345 	ld	l,b
   5CF0                     346 00104$:
   5CF0 DD 74 FA      [19]  347 	ld	-6 (ix),h
   5CF3 DD 75 FB      [19]  348 	ld	-5 (ix),l
   5CF6 DD CB FB 2E   [23]  349 	sra	-5 (ix)
   5CFA DD CB FA 1E   [23]  350 	rr	-6 (ix)
                            351 ;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   5CFE DD 7E FA      [19]  352 	ld	a,-6 (ix)
   5D01 DD 77 FC      [19]  353 	ld	-4 (ix), a
   5D04 C6 05         [ 7]  354 	add	a, #0x05
   5D06 4F            [ 4]  355 	ld	c,a
   5D07 DD 73 FD      [19]  356 	ld	-3 (ix), e
   5D0A 63            [ 4]  357 	ld	h, e
   5D0B 24            [ 4]  358 	inc	h
   5D0C 24            [ 4]  359 	inc	h
   5D0D D5            [11]  360 	push	de
   5D0E 79            [ 4]  361 	ld	a,c
   5D0F F5            [11]  362 	push	af
   5D10 33            [ 6]  363 	inc	sp
   5D11 E5            [11]  364 	push	hl
   5D12 33            [ 6]  365 	inc	sp
   5D13 21 00 C0      [10]  366 	ld	hl,#0xC000
   5D16 E5            [11]  367 	push	hl
   5D17 CD B6 7A      [17]  368 	call	_cpct_getScreenPtr
   5D1A D1            [10]  369 	pop	de
                            370 ;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   5D1B DD 46 06      [19]  371 	ld	b,6 (ix)
   5D1E DD 4E 04      [19]  372 	ld	c,4 (ix)
   5D21 79            [ 4]  373 	ld	a,c
   5D22 C6 FF         [ 7]  374 	add	a,#0xFF
   5D24 DD 75 FE      [19]  375 	ld	-2 (ix),l
   5D27 DD 74 FF      [19]  376 	ld	-1 (ix),h
   5D2A C5            [11]  377 	push	bc
   5D2B D5            [11]  378 	push	de
   5D2C C5            [11]  379 	push	bc
   5D2D 33            [ 6]  380 	inc	sp
   5D2E F5            [11]  381 	push	af
   5D2F 33            [ 6]  382 	inc	sp
   5D30 AF            [ 4]  383 	xor	a, a
   5D31 F5            [11]  384 	push	af
   5D32 33            [ 6]  385 	inc	sp
   5D33 DD 6E FE      [19]  386 	ld	l,-2 (ix)
   5D36 DD 66 FF      [19]  387 	ld	h,-1 (ix)
   5D39 E5            [11]  388 	push	hl
   5D3A CD FD 79      [17]  389 	call	_cpct_drawSolidBox
   5D3D F1            [10]  390 	pop	af
   5D3E F1            [10]  391 	pop	af
   5D3F 33            [ 6]  392 	inc	sp
   5D40 D1            [10]  393 	pop	de
   5D41 C1            [10]  394 	pop	bc
                            395 ;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5D42 DD 66 FA      [19]  396 	ld	h,-6 (ix)
   5D45 53            [ 4]  397 	ld	d,e
   5D46 C5            [11]  398 	push	bc
   5D47 E5            [11]  399 	push	hl
   5D48 33            [ 6]  400 	inc	sp
   5D49 D5            [11]  401 	push	de
   5D4A 33            [ 6]  402 	inc	sp
   5D4B 21 00 C0      [10]  403 	ld	hl,#0xC000
   5D4E E5            [11]  404 	push	hl
   5D4F CD B6 7A      [17]  405 	call	_cpct_getScreenPtr
   5D52 C1            [10]  406 	pop	bc
                            407 ;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   5D53 DD 7E 04      [19]  408 	ld	a,4 (ix)
   5D56 EB            [ 4]  409 	ex	de,hl
   5D57 C5            [11]  410 	push	bc
   5D58 C5            [11]  411 	push	bc
   5D59 33            [ 6]  412 	inc	sp
   5D5A 47            [ 4]  413 	ld	b,a
   5D5B 0E F8         [ 7]  414 	ld	c,#0xF8
   5D5D C5            [11]  415 	push	bc
   5D5E D5            [11]  416 	push	de
   5D5F CD FD 79      [17]  417 	call	_cpct_drawSolidBox
   5D62 F1            [10]  418 	pop	af
   5D63 F1            [10]  419 	pop	af
   5D64 33            [ 6]  420 	inc	sp
   5D65 C1            [10]  421 	pop	bc
                            422 ;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   5D66 DD 66 FC      [19]  423 	ld	h,-4 (ix)
   5D69 24            [ 4]  424 	inc	h
   5D6A DD 56 FD      [19]  425 	ld	d,-3 (ix)
   5D6D 14            [ 4]  426 	inc	d
   5D6E C5            [11]  427 	push	bc
   5D6F E5            [11]  428 	push	hl
   5D70 33            [ 6]  429 	inc	sp
   5D71 D5            [11]  430 	push	de
   5D72 33            [ 6]  431 	inc	sp
   5D73 21 00 C0      [10]  432 	ld	hl,#0xC000
   5D76 E5            [11]  433 	push	hl
   5D77 CD B6 7A      [17]  434 	call	_cpct_getScreenPtr
   5D7A C1            [10]  435 	pop	bc
   5D7B 5D            [ 4]  436 	ld	e, l
   5D7C 54            [ 4]  437 	ld	d, h
                            438 ;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   5D7D DD 66 06      [19]  439 	ld	h,6 (ix)
   5D80 25            [ 4]  440 	dec	h
   5D81 25            [ 4]  441 	dec	h
   5D82 79            [ 4]  442 	ld	a,c
   5D83 C6 FE         [ 7]  443 	add	a,#0xFE
   5D85 E5            [11]  444 	push	hl
   5D86 33            [ 6]  445 	inc	sp
   5D87 47            [ 4]  446 	ld	b,a
   5D88 0E FF         [ 7]  447 	ld	c,#0xFF
   5D8A C5            [11]  448 	push	bc
   5D8B D5            [11]  449 	push	de
   5D8C CD FD 79      [17]  450 	call	_cpct_drawSolidBox
   5D8F DD F9         [10]  451 	ld	sp,ix
   5D91 DD E1         [14]  452 	pop	ix
   5D93 C9            [10]  453 	ret
                            454 ;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            455 ;	---------------------------------
                            456 ; Function EraseMenuEntry
                            457 ; ---------------------------------
   5D94                     458 _EraseMenuEntry::
   5D94 DD E5         [15]  459 	push	ix
   5D96 DD 21 00 00   [14]  460 	ld	ix,#0
   5D9A DD 39         [15]  461 	add	ix,sp
   5D9C 3B            [ 6]  462 	dec	sp
                            463 ;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5D9D DD 4E 06      [19]  464 	ld	c,6 (ix)
   5DA0 06 00         [ 7]  465 	ld	b,#0x00
   5DA2 69            [ 4]  466 	ld	l, c
   5DA3 60            [ 4]  467 	ld	h, b
   5DA4 29            [11]  468 	add	hl, hl
   5DA5 29            [11]  469 	add	hl, hl
   5DA6 09            [11]  470 	add	hl, bc
   5DA7 29            [11]  471 	add	hl, hl
   5DA8 4D            [ 4]  472 	ld	c,l
   5DA9 44            [ 4]  473 	ld	b,h
   5DAA 3E C9         [ 7]  474 	ld	a,#0xC9
   5DAC 91            [ 4]  475 	sub	a, c
   5DAD 57            [ 4]  476 	ld	d,a
   5DAE 3E 00         [ 7]  477 	ld	a,#0x00
   5DB0 98            [ 4]  478 	sbc	a, b
   5DB1 5F            [ 4]  479 	ld	e,a
   5DB2 6A            [ 4]  480 	ld	l, d
   5DB3 63            [ 4]  481 	ld	h, e
   5DB4 CB 7B         [ 8]  482 	bit	7, e
   5DB6 28 03         [12]  483 	jr	Z,00103$
   5DB8 6A            [ 4]  484 	ld	l, d
   5DB9 63            [ 4]  485 	ld	h, e
   5DBA 23            [ 6]  486 	inc	hl
   5DBB                     487 00103$:
   5DBB CB 2C         [ 8]  488 	sra	h
   5DBD CB 1D         [ 8]  489 	rr	l
   5DBF 55            [ 4]  490 	ld	d,l
   5DC0 DD 7E 07      [19]  491 	ld	a,7 (ix)
   5DC3 5F            [ 4]  492 	ld	e,a
   5DC4 87            [ 4]  493 	add	a, a
   5DC5 87            [ 4]  494 	add	a, a
   5DC6 83            [ 4]  495 	add	a, e
   5DC7 87            [ 4]  496 	add	a, a
   5DC8 DD 77 FF      [19]  497 	ld	-1 (ix),a
   5DCB 7A            [ 4]  498 	ld	a,d
   5DCC DD 86 FF      [19]  499 	add	a, -1 (ix)
   5DCF C5            [11]  500 	push	bc
   5DD0 57            [ 4]  501 	ld	d,a
   5DD1 1E 20         [ 7]  502 	ld	e,#0x20
   5DD3 D5            [11]  503 	push	de
   5DD4 21 00 C0      [10]  504 	ld	hl,#0xC000
   5DD7 E5            [11]  505 	push	hl
   5DD8 CD B6 7A      [17]  506 	call	_cpct_getScreenPtr
   5DDB C1            [10]  507 	pop	bc
                            508 ;src/gui/gui.c:76: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   5DDC EB            [ 4]  509 	ex	de,hl
   5DDD C5            [11]  510 	push	bc
   5DDE 21 11 0A      [10]  511 	ld	hl,#0x0A11
   5DE1 E5            [11]  512 	push	hl
   5DE2 3E FF         [ 7]  513 	ld	a,#0xFF
   5DE4 F5            [11]  514 	push	af
   5DE5 33            [ 6]  515 	inc	sp
   5DE6 D5            [11]  516 	push	de
   5DE7 CD FD 79      [17]  517 	call	_cpct_drawSolidBox
   5DEA F1            [10]  518 	pop	af
   5DEB F1            [10]  519 	pop	af
   5DEC 33            [ 6]  520 	inc	sp
   5DED C1            [10]  521 	pop	bc
                            522 ;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   5DEE 3E CA         [ 7]  523 	ld	a,#0xCA
   5DF0 91            [ 4]  524 	sub	a, c
   5DF1 57            [ 4]  525 	ld	d,a
   5DF2 3E 00         [ 7]  526 	ld	a,#0x00
   5DF4 98            [ 4]  527 	sbc	a, b
   5DF5 5F            [ 4]  528 	ld	e,a
   5DF6 6A            [ 4]  529 	ld	l, d
   5DF7 63            [ 4]  530 	ld	h, e
   5DF8 CB 7B         [ 8]  531 	bit	7, e
   5DFA 28 03         [12]  532 	jr	Z,00104$
   5DFC 6A            [ 4]  533 	ld	l, d
   5DFD 63            [ 4]  534 	ld	h, e
   5DFE 23            [ 6]  535 	inc	hl
   5DFF                     536 00104$:
   5DFF CB 2C         [ 8]  537 	sra	h
   5E01 CB 1D         [ 8]  538 	rr	l
   5E03 7D            [ 4]  539 	ld	a,l
   5E04 DD 86 FF      [19]  540 	add	a, -1 (ix)
   5E07 4F            [ 4]  541 	ld	c,a
   5E08 DD 6E 07      [19]  542 	ld	l,7 (ix)
   5E0B 26 00         [ 7]  543 	ld	h,#0x00
   5E0D 29            [11]  544 	add	hl, hl
   5E0E EB            [ 4]  545 	ex	de,hl
   5E0F DD 6E 04      [19]  546 	ld	l,4 (ix)
   5E12 DD 66 05      [19]  547 	ld	h,5 (ix)
   5E15 19            [11]  548 	add	hl,de
   5E16 E5            [11]  549 	push	hl
   5E17 5E            [ 7]  550 	ld	e,(hl)
   5E18 23            [ 6]  551 	inc	hl
   5E19 56            [ 7]  552 	ld	d,(hl)
   5E1A C5            [11]  553 	push	bc
   5E1B D5            [11]  554 	push	de
   5E1C CD A9 79      [17]  555 	call	_strlen
   5E1F F1            [10]  556 	pop	af
   5E20 EB            [ 4]  557 	ex	de,hl
   5E21 C1            [10]  558 	pop	bc
   5E22 E1            [10]  559 	pop	hl
   5E23 3E 52         [ 7]  560 	ld	a,#0x52
   5E25 93            [ 4]  561 	sub	a, e
   5E26 5F            [ 4]  562 	ld	e,a
   5E27 3E 00         [ 7]  563 	ld	a,#0x00
   5E29 9A            [ 4]  564 	sbc	a, d
   5E2A 57            [ 4]  565 	ld	d,a
   5E2B CB 3A         [ 8]  566 	srl	d
   5E2D CB 1B         [ 8]  567 	rr	e
   5E2F E5            [11]  568 	push	hl
   5E30 51            [ 4]  569 	ld	d, c
   5E31 D5            [11]  570 	push	de
   5E32 01 00 C0      [10]  571 	ld	bc,#0xC000
   5E35 C5            [11]  572 	push	bc
   5E36 CD B6 7A      [17]  573 	call	_cpct_getScreenPtr
   5E39 4D            [ 4]  574 	ld	c,l
   5E3A 44            [ 4]  575 	ld	b,h
   5E3B E1            [10]  576 	pop	hl
                            577 ;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   5E3C 5E            [ 7]  578 	ld	e,(hl)
   5E3D 23            [ 6]  579 	inc	hl
   5E3E 56            [ 7]  580 	ld	d,(hl)
   5E3F AF            [ 4]  581 	xor	a, a
   5E40 F5            [11]  582 	push	af
   5E41 33            [ 6]  583 	inc	sp
   5E42 C5            [11]  584 	push	bc
   5E43 D5            [11]  585 	push	de
   5E44 CD 67 74      [17]  586 	call	_cpct_drawStringM2
   5E47 F1            [10]  587 	pop	af
   5E48 F1            [10]  588 	pop	af
   5E49 33            [ 6]  589 	inc	sp
   5E4A 33            [ 6]  590 	inc	sp
   5E4B DD E1         [14]  591 	pop	ix
   5E4D C9            [10]  592 	ret
                            593 ;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            594 ;	---------------------------------
                            595 ; Function drawMenuEntry
                            596 ; ---------------------------------
   5E4E                     597 _drawMenuEntry::
   5E4E DD E5         [15]  598 	push	ix
   5E50 DD 21 00 00   [14]  599 	ld	ix,#0
   5E54 DD 39         [15]  600 	add	ix,sp
   5E56 21 FA FF      [10]  601 	ld	hl,#-6
   5E59 39            [11]  602 	add	hl,sp
   5E5A F9            [ 6]  603 	ld	sp,hl
                            604 ;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5E5B DD 4E 06      [19]  605 	ld	c,6 (ix)
   5E5E 06 00         [ 7]  606 	ld	b,#0x00
   5E60 69            [ 4]  607 	ld	l, c
   5E61 60            [ 4]  608 	ld	h, b
   5E62 29            [11]  609 	add	hl, hl
   5E63 29            [11]  610 	add	hl, hl
   5E64 09            [11]  611 	add	hl, bc
   5E65 29            [11]  612 	add	hl, hl
   5E66 4D            [ 4]  613 	ld	c,l
   5E67 44            [ 4]  614 	ld	b,h
   5E68 3E C9         [ 7]  615 	ld	a,#0xC9
   5E6A 91            [ 4]  616 	sub	a, c
   5E6B 57            [ 4]  617 	ld	d,a
   5E6C 3E 00         [ 7]  618 	ld	a,#0x00
   5E6E 98            [ 4]  619 	sbc	a, b
   5E6F 5F            [ 4]  620 	ld	e,a
   5E70 6A            [ 4]  621 	ld	l, d
   5E71 63            [ 4]  622 	ld	h, e
   5E72 CB 7B         [ 8]  623 	bit	7, e
   5E74 28 03         [12]  624 	jr	Z,00114$
   5E76 6A            [ 4]  625 	ld	l, d
   5E77 63            [ 4]  626 	ld	h, e
   5E78 23            [ 6]  627 	inc	hl
   5E79                     628 00114$:
   5E79 CB 2C         [ 8]  629 	sra	h
   5E7B CB 1D         [ 8]  630 	rr	l
   5E7D 55            [ 4]  631 	ld	d,l
   5E7E DD 7E 07      [19]  632 	ld	a,7 (ix)
   5E81 5F            [ 4]  633 	ld	e,a
   5E82 87            [ 4]  634 	add	a, a
   5E83 87            [ 4]  635 	add	a, a
   5E84 83            [ 4]  636 	add	a, e
   5E85 87            [ 4]  637 	add	a, a
   5E86 82            [ 4]  638 	add	a,d
   5E87 C5            [11]  639 	push	bc
   5E88 57            [ 4]  640 	ld	d,a
   5E89 1E 20         [ 7]  641 	ld	e,#0x20
   5E8B D5            [11]  642 	push	de
   5E8C 21 00 C0      [10]  643 	ld	hl,#0xC000
   5E8F E5            [11]  644 	push	hl
   5E90 CD B6 7A      [17]  645 	call	_cpct_getScreenPtr
   5E93 C1            [10]  646 	pop	bc
                            647 ;src/gui/gui.c:91: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   5E94 EB            [ 4]  648 	ex	de,hl
   5E95 C5            [11]  649 	push	bc
   5E96 21 11 0A      [10]  650 	ld	hl,#0x0A11
   5E99 E5            [11]  651 	push	hl
   5E9A AF            [ 4]  652 	xor	a, a
   5E9B F5            [11]  653 	push	af
   5E9C 33            [ 6]  654 	inc	sp
   5E9D D5            [11]  655 	push	de
   5E9E CD FD 79      [17]  656 	call	_cpct_drawSolidBox
   5EA1 F1            [10]  657 	pop	af
   5EA2 F1            [10]  658 	pop	af
   5EA3 33            [ 6]  659 	inc	sp
   5EA4 C1            [10]  660 	pop	bc
                            661 ;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
   5EA5 21 B0 36      [10]  662 	ld	hl,#0x36B0
   5EA8                     663 00108$:
   5EA8 2B            [ 6]  664 	dec	hl
   5EA9 7C            [ 4]  665 	ld	a,h
   5EAA B5            [ 4]  666 	or	a,l
   5EAB 20 FB         [12]  667 	jr	NZ,00108$
                            668 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5EAD 3E CA         [ 7]  669 	ld	a,#0xCA
   5EAF 91            [ 4]  670 	sub	a, c
   5EB0 DD 77 FE      [19]  671 	ld	-2 (ix),a
   5EB3 3E 00         [ 7]  672 	ld	a,#0x00
   5EB5 98            [ 4]  673 	sbc	a, b
   5EB6 DD 77 FF      [19]  674 	ld	-1 (ix), a
   5EB9 07            [ 4]  675 	rlca
   5EBA E6 01         [ 7]  676 	and	a,#0x01
   5EBC 5F            [ 4]  677 	ld	e,a
   5EBD 21 00 00      [10]  678 	ld	hl,#0x0000
   5EC0 E3            [19]  679 	ex	(sp), hl
   5EC1                     680 00110$:
   5EC1 DD 66 06      [19]  681 	ld	h,6 (ix)
   5EC4 2E 00         [ 7]  682 	ld	l,#0x00
   5EC6 DD 7E FA      [19]  683 	ld	a,-6 (ix)
   5EC9 94            [ 4]  684 	sub	a, h
   5ECA DD 7E FB      [19]  685 	ld	a,-5 (ix)
   5ECD 9D            [ 4]  686 	sbc	a, l
   5ECE E2 D3 5E      [10]  687 	jp	PO, 00146$
   5ED1 EE 80         [ 7]  688 	xor	a, #0x80
   5ED3                     689 00146$:
   5ED3 F2 79 5F      [10]  690 	jp	P,00112$
                            691 ;src/gui/gui.c:99: if(i==iSelect)
   5ED6 DD 56 07      [19]  692 	ld	d,7 (ix)
   5ED9 06 00         [ 7]  693 	ld	b,#0x00
   5EDB DD 7E FA      [19]  694 	ld	a,-6 (ix)
   5EDE 92            [ 4]  695 	sub	a, d
   5EDF 20 0A         [12]  696 	jr	NZ,00103$
   5EE1 DD 7E FB      [19]  697 	ld	a,-5 (ix)
   5EE4 90            [ 4]  698 	sub	a, b
   5EE5 20 04         [12]  699 	jr	NZ,00103$
                            700 ;src/gui/gui.c:100: penSelected = 1;
   5EE7 0E 01         [ 7]  701 	ld	c,#0x01
   5EE9 18 02         [12]  702 	jr	00104$
   5EEB                     703 00103$:
                            704 ;src/gui/gui.c:102: penSelected = 0;
   5EEB 0E 00         [ 7]  705 	ld	c,#0x00
   5EED                     706 00104$:
                            707 ;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   5EED DD 6E FE      [19]  708 	ld	l,-2 (ix)
   5EF0 DD 66 FF      [19]  709 	ld	h,-1 (ix)
   5EF3 7B            [ 4]  710 	ld	a,e
   5EF4 B7            [ 4]  711 	or	a, a
   5EF5 28 07         [12]  712 	jr	Z,00115$
   5EF7 DD 6E FE      [19]  713 	ld	l,-2 (ix)
   5EFA DD 66 FF      [19]  714 	ld	h,-1 (ix)
   5EFD 23            [ 6]  715 	inc	hl
   5EFE                     716 00115$:
   5EFE CB 2C         [ 8]  717 	sra	h
   5F00 CB 1D         [ 8]  718 	rr	l
   5F02 45            [ 4]  719 	ld	b,l
   5F03 DD 6E FA      [19]  720 	ld	l,-6 (ix)
   5F06 D5            [11]  721 	push	de
   5F07 5D            [ 4]  722 	ld	e,l
   5F08 29            [11]  723 	add	hl, hl
   5F09 29            [11]  724 	add	hl, hl
   5F0A 19            [11]  725 	add	hl, de
   5F0B 29            [11]  726 	add	hl, hl
   5F0C D1            [10]  727 	pop	de
   5F0D 78            [ 4]  728 	ld	a,b
   5F0E 85            [ 4]  729 	add	a, l
   5F0F DD 77 FD      [19]  730 	ld	-3 (ix),a
   5F12 DD 56 FA      [19]  731 	ld	d,-6 (ix)
   5F15 DD 46 FB      [19]  732 	ld	b,-5 (ix)
   5F18 CB 22         [ 8]  733 	sla	d
   5F1A CB 10         [ 8]  734 	rl	b
   5F1C DD 7E 04      [19]  735 	ld	a,4 (ix)
   5F1F 82            [ 4]  736 	add	a, d
   5F20 57            [ 4]  737 	ld	d,a
   5F21 DD 7E 05      [19]  738 	ld	a,5 (ix)
   5F24 88            [ 4]  739 	adc	a, b
   5F25 47            [ 4]  740 	ld	b,a
   5F26 6A            [ 4]  741 	ld	l, d
   5F27 60            [ 4]  742 	ld	h, b
   5F28 7E            [ 7]  743 	ld	a, (hl)
   5F29 23            [ 6]  744 	inc	hl
   5F2A 66            [ 7]  745 	ld	h,(hl)
   5F2B 6F            [ 4]  746 	ld	l,a
   5F2C C5            [11]  747 	push	bc
   5F2D D5            [11]  748 	push	de
   5F2E E5            [11]  749 	push	hl
   5F2F CD A9 79      [17]  750 	call	_strlen
   5F32 F1            [10]  751 	pop	af
   5F33 D1            [10]  752 	pop	de
   5F34 C1            [10]  753 	pop	bc
   5F35 3E 52         [ 7]  754 	ld	a,#0x52
   5F37 95            [ 4]  755 	sub	a, l
   5F38 6F            [ 4]  756 	ld	l,a
   5F39 3E 00         [ 7]  757 	ld	a,#0x00
   5F3B 9C            [ 4]  758 	sbc	a, h
   5F3C 67            [ 4]  759 	ld	h,a
   5F3D CB 3C         [ 8]  760 	srl	h
   5F3F CB 1D         [ 8]  761 	rr	l
   5F41 DD 75 FC      [19]  762 	ld	-4 (ix),l
   5F44 C5            [11]  763 	push	bc
   5F45 D5            [11]  764 	push	de
   5F46 DD 66 FD      [19]  765 	ld	h,-3 (ix)
   5F49 DD 6E FC      [19]  766 	ld	l,-4 (ix)
   5F4C E5            [11]  767 	push	hl
   5F4D 21 00 C0      [10]  768 	ld	hl,#0xC000
   5F50 E5            [11]  769 	push	hl
   5F51 CD B6 7A      [17]  770 	call	_cpct_getScreenPtr
   5F54 D1            [10]  771 	pop	de
   5F55 C1            [10]  772 	pop	bc
   5F56 E5            [11]  773 	push	hl
   5F57 FD E1         [14]  774 	pop	iy
                            775 ;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
   5F59 6A            [ 4]  776 	ld	l, d
   5F5A 60            [ 4]  777 	ld	h, b
   5F5B 7E            [ 7]  778 	ld	a, (hl)
   5F5C 23            [ 6]  779 	inc	hl
   5F5D 66            [ 7]  780 	ld	h,(hl)
   5F5E 6F            [ 4]  781 	ld	l,a
   5F5F D5            [11]  782 	push	de
   5F60 79            [ 4]  783 	ld	a,c
   5F61 F5            [11]  784 	push	af
   5F62 33            [ 6]  785 	inc	sp
   5F63 FD E5         [15]  786 	push	iy
   5F65 E5            [11]  787 	push	hl
   5F66 CD 67 74      [17]  788 	call	_cpct_drawStringM2
   5F69 F1            [10]  789 	pop	af
   5F6A F1            [10]  790 	pop	af
   5F6B 33            [ 6]  791 	inc	sp
   5F6C D1            [10]  792 	pop	de
                            793 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5F6D DD 34 FA      [23]  794 	inc	-6 (ix)
   5F70 C2 C1 5E      [10]  795 	jp	NZ,00110$
   5F73 DD 34 FB      [23]  796 	inc	-5 (ix)
   5F76 C3 C1 5E      [10]  797 	jp	00110$
   5F79                     798 00112$:
   5F79 DD F9         [10]  799 	ld	sp, ix
   5F7B DD E1         [14]  800 	pop	ix
   5F7D C9            [10]  801 	ret
                            802 ;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
                            803 ;	---------------------------------
                            804 ; Function drawMenu
                            805 ; ---------------------------------
   5F7E                     806 _drawMenu::
   5F7E DD E5         [15]  807 	push	ix
   5F80 DD 21 00 00   [14]  808 	ld	ix,#0
   5F84 DD 39         [15]  809 	add	ix,sp
   5F86 F5            [11]  810 	push	af
                            811 ;src/gui/gui.c:112: u8 iSelect=0;
   5F87 06 00         [ 7]  812 	ld	b,#0x00
                            813 ;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
   5F89 C5            [11]  814 	push	bc
   5F8A 21 00 40      [10]  815 	ld	hl,#0x4000
   5F8D E5            [11]  816 	push	hl
   5F8E 3E FF         [ 7]  817 	ld	a,#0xFF
   5F90 F5            [11]  818 	push	af
   5F91 33            [ 6]  819 	inc	sp
   5F92 26 C0         [ 7]  820 	ld	h, #0xC0
   5F94 E5            [11]  821 	push	hl
   5F95 CD 82 79      [17]  822 	call	_cpct_memset
   5F98 C1            [10]  823 	pop	bc
                            824 ;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
   5F99 DD 5E 06      [19]  825 	ld	e,6 (ix)
   5F9C 16 00         [ 7]  826 	ld	d,#0x00
   5F9E 6B            [ 4]  827 	ld	l, e
   5F9F 62            [ 4]  828 	ld	h, d
   5FA0 29            [11]  829 	add	hl, hl
   5FA1 19            [11]  830 	add	hl, de
   5FA2 29            [11]  831 	add	hl, hl
   5FA3 29            [11]  832 	add	hl, hl
   5FA4 C5            [11]  833 	push	bc
   5FA5 E5            [11]  834 	push	hl
   5FA6 21 1E 00      [10]  835 	ld	hl,#0x001E
   5FA9 E5            [11]  836 	push	hl
   5FAA CD B4 5C      [17]  837 	call	_drawBoxM2
   5FAD F1            [10]  838 	pop	af
   5FAE F1            [10]  839 	pop	af
   5FAF AF            [ 4]  840 	xor	a, a
   5FB0 F5            [11]  841 	push	af
   5FB1 33            [ 6]  842 	inc	sp
   5FB2 DD 7E 06      [19]  843 	ld	a,6 (ix)
   5FB5 F5            [11]  844 	push	af
   5FB6 33            [ 6]  845 	inc	sp
   5FB7 DD 6E 04      [19]  846 	ld	l,4 (ix)
   5FBA DD 66 05      [19]  847 	ld	h,5 (ix)
   5FBD E5            [11]  848 	push	hl
   5FBE CD 4E 5E      [17]  849 	call	_drawMenuEntry
   5FC1 F1            [10]  850 	pop	af
   5FC2 F1            [10]  851 	pop	af
   5FC3 C1            [10]  852 	pop	bc
                            853 ;src/gui/gui.c:120: do{
   5FC4 DD 4E 06      [19]  854 	ld	c,6 (ix)
   5FC7 0D            [ 4]  855 	dec	c
   5FC8                     856 00111$:
                            857 ;src/gui/gui.c:121: cpct_scanKeyboard(); 
   5FC8 C5            [11]  858 	push	bc
   5FC9 CD D6 7A      [17]  859 	call	_cpct_scanKeyboard
   5FCC 21 00 01      [10]  860 	ld	hl,#0x0100
   5FCF CD 30 74      [17]  861 	call	_cpct_isKeyPressed
   5FD2 7D            [ 4]  862 	ld	a,l
   5FD3 C1            [10]  863 	pop	bc
   5FD4 B7            [ 4]  864 	or	a, a
   5FD5 28 32         [12]  865 	jr	Z,00105$
                            866 ;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
   5FD7 C5            [11]  867 	push	bc
   5FD8 C5            [11]  868 	push	bc
   5FD9 33            [ 6]  869 	inc	sp
   5FDA DD 7E 06      [19]  870 	ld	a,6 (ix)
   5FDD F5            [11]  871 	push	af
   5FDE 33            [ 6]  872 	inc	sp
   5FDF DD 6E 04      [19]  873 	ld	l,4 (ix)
   5FE2 DD 66 05      [19]  874 	ld	h,5 (ix)
   5FE5 E5            [11]  875 	push	hl
   5FE6 CD 94 5D      [17]  876 	call	_EraseMenuEntry
   5FE9 F1            [10]  877 	pop	af
   5FEA F1            [10]  878 	pop	af
   5FEB C1            [10]  879 	pop	bc
                            880 ;src/gui/gui.c:127: if(iSelect ==0)
   5FEC 78            [ 4]  881 	ld	a,b
   5FED B7            [ 4]  882 	or	a, a
   5FEE 20 03         [12]  883 	jr	NZ,00102$
                            884 ;src/gui/gui.c:128: iSelect = nbEntry-1;
   5FF0 41            [ 4]  885 	ld	b,c
   5FF1 18 01         [12]  886 	jr	00103$
   5FF3                     887 00102$:
                            888 ;src/gui/gui.c:130: iSelect--;
   5FF3 05            [ 4]  889 	dec	b
   5FF4                     890 00103$:
                            891 ;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
   5FF4 C5            [11]  892 	push	bc
   5FF5 C5            [11]  893 	push	bc
   5FF6 33            [ 6]  894 	inc	sp
   5FF7 DD 7E 06      [19]  895 	ld	a,6 (ix)
   5FFA F5            [11]  896 	push	af
   5FFB 33            [ 6]  897 	inc	sp
   5FFC DD 6E 04      [19]  898 	ld	l,4 (ix)
   5FFF DD 66 05      [19]  899 	ld	h,5 (ix)
   6002 E5            [11]  900 	push	hl
   6003 CD 4E 5E      [17]  901 	call	_drawMenuEntry
   6006 F1            [10]  902 	pop	af
   6007 F1            [10]  903 	pop	af
   6008 C1            [10]  904 	pop	bc
   6009                     905 00105$:
                            906 ;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
   6009 C5            [11]  907 	push	bc
   600A 21 00 04      [10]  908 	ld	hl,#0x0400
   600D CD 30 74      [17]  909 	call	_cpct_isKeyPressed
   6010 5D            [ 4]  910 	ld	e,l
   6011 C1            [10]  911 	pop	bc
   6012 7B            [ 4]  912 	ld	a,e
   6013 B7            [ 4]  913 	or	a, a
   6014 28 48         [12]  914 	jr	Z,00112$
                            915 ;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
   6016 C5            [11]  916 	push	bc
   6017 C5            [11]  917 	push	bc
   6018 33            [ 6]  918 	inc	sp
   6019 DD 7E 06      [19]  919 	ld	a,6 (ix)
   601C F5            [11]  920 	push	af
   601D 33            [ 6]  921 	inc	sp
   601E DD 6E 04      [19]  922 	ld	l,4 (ix)
   6021 DD 66 05      [19]  923 	ld	h,5 (ix)
   6024 E5            [11]  924 	push	hl
   6025 CD 94 5D      [17]  925 	call	_EraseMenuEntry
   6028 F1            [10]  926 	pop	af
   6029 F1            [10]  927 	pop	af
   602A C1            [10]  928 	pop	bc
                            929 ;src/gui/gui.c:139: if(iSelect == nbEntry-1)
   602B DD 5E 06      [19]  930 	ld	e,6 (ix)
   602E 16 00         [ 7]  931 	ld	d,#0x00
   6030 1B            [ 6]  932 	dec	de
   6031 DD 70 FE      [19]  933 	ld	-2 (ix),b
   6034 DD 36 FF 00   [19]  934 	ld	-1 (ix),#0x00
   6038 7B            [ 4]  935 	ld	a,e
   6039 DD 96 FE      [19]  936 	sub	a, -2 (ix)
   603C 20 0A         [12]  937 	jr	NZ,00107$
   603E 7A            [ 4]  938 	ld	a,d
   603F DD 96 FF      [19]  939 	sub	a, -1 (ix)
   6042 20 04         [12]  940 	jr	NZ,00107$
                            941 ;src/gui/gui.c:140: iSelect = 0;
   6044 06 00         [ 7]  942 	ld	b,#0x00
   6046 18 01         [12]  943 	jr	00108$
   6048                     944 00107$:
                            945 ;src/gui/gui.c:142: iSelect++;
   6048 04            [ 4]  946 	inc	b
   6049                     947 00108$:
                            948 ;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
   6049 C5            [11]  949 	push	bc
   604A C5            [11]  950 	push	bc
   604B 33            [ 6]  951 	inc	sp
   604C DD 7E 06      [19]  952 	ld	a,6 (ix)
   604F F5            [11]  953 	push	af
   6050 33            [ 6]  954 	inc	sp
   6051 DD 6E 04      [19]  955 	ld	l,4 (ix)
   6054 DD 66 05      [19]  956 	ld	h,5 (ix)
   6057 E5            [11]  957 	push	hl
   6058 CD 4E 5E      [17]  958 	call	_drawMenuEntry
   605B F1            [10]  959 	pop	af
   605C F1            [10]  960 	pop	af
   605D C1            [10]  961 	pop	bc
   605E                     962 00112$:
                            963 ;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
   605E C5            [11]  964 	push	bc
   605F 21 02 04      [10]  965 	ld	hl,#0x0402
   6062 CD 30 74      [17]  966 	call	_cpct_isKeyPressed
   6065 7D            [ 4]  967 	ld	a,l
   6066 C1            [10]  968 	pop	bc
   6067 B7            [ 4]  969 	or	a, a
   6068 CA C8 5F      [10]  970 	jp	Z,00111$
                            971 ;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
   606B 21 B0 36      [10]  972 	ld	hl,#0x36B0
   606E                     973 00117$:
   606E EB            [ 4]  974 	ex	de,hl
   606F 1B            [ 6]  975 	dec	de
   6070 6B            [ 4]  976 	ld	l, e
   6071 7A            [ 4]  977 	ld	a,d
   6072 67            [ 4]  978 	ld	h,a
   6073 B3            [ 4]  979 	or	a,e
   6074 20 F8         [12]  980 	jr	NZ,00117$
                            981 ;src/gui/gui.c:152: return iSelect;
   6076 68            [ 4]  982 	ld	l,b
   6077 DD F9         [10]  983 	ld	sp, ix
   6079 DD E1         [14]  984 	pop	ix
   607B C9            [10]  985 	ret
                            986 ;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
                            987 ;	---------------------------------
                            988 ; Function drawWindow
                            989 ; ---------------------------------
   607C                     990 _drawWindow::
   607C DD E5         [15]  991 	push	ix
   607E DD 21 00 00   [14]  992 	ld	ix,#0
   6082 DD 39         [15]  993 	add	ix,sp
   6084 21 F5 FF      [10]  994 	ld	hl,#-11
   6087 39            [11]  995 	add	hl,sp
   6088 F9            [ 6]  996 	ld	sp,hl
                            997 ;src/gui/gui.c:166: u8 valueReturn=0;
   6089 DD 36 F5 00   [19]  998 	ld	-11 (ix),#0x00
                            999 ;src/gui/gui.c:169: if(button == 0)
   608D DD 7E 07      [19] 1000 	ld	a,7 (ix)
   6090 B7            [ 4] 1001 	or	a, a
   6091 20 05         [12] 1002 	jr	NZ,00102$
                           1003 ;src/gui/gui.c:170: buttonTxt = "<OK>";
   6093 11 05 62      [10] 1004 	ld	de,#___str_0
   6096 18 03         [12] 1005 	jr	00103$
   6098                    1006 00102$:
                           1007 ;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
   6098 11 0A 62      [10] 1008 	ld	de,#___str_1+0
   609B                    1009 00103$:
                           1010 ;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
   609B DD 4E 06      [19] 1011 	ld	c,6 (ix)
   609E 06 00         [ 7] 1012 	ld	b,#0x00
   60A0 03            [ 6] 1013 	inc	bc
   60A1 03            [ 6] 1014 	inc	bc
   60A2 69            [ 4] 1015 	ld	l, c
   60A3 60            [ 4] 1016 	ld	h, b
   60A4 29            [11] 1017 	add	hl, hl
   60A5 09            [11] 1018 	add	hl, bc
   60A6 29            [11] 1019 	add	hl, hl
   60A7 29            [11] 1020 	add	hl, hl
   60A8 C5            [11] 1021 	push	bc
   60A9 D5            [11] 1022 	push	de
   60AA E5            [11] 1023 	push	hl
   60AB 21 32 00      [10] 1024 	ld	hl,#0x0032
   60AE E5            [11] 1025 	push	hl
   60AF CD B4 5C      [17] 1026 	call	_drawBoxM2
   60B2 F1            [10] 1027 	pop	af
   60B3 F1            [10] 1028 	pop	af
   60B4 D1            [10] 1029 	pop	de
   60B5 C1            [10] 1030 	pop	bc
                           1031 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   60B6 69            [ 4] 1032 	ld	l, c
   60B7 60            [ 4] 1033 	ld	h, b
   60B8 29            [11] 1034 	add	hl, hl
   60B9 29            [11] 1035 	add	hl, hl
   60BA 09            [11] 1036 	add	hl, bc
   60BB 29            [11] 1037 	add	hl, hl
   60BC 3E CA         [ 7] 1038 	ld	a,#0xCA
   60BE 95            [ 4] 1039 	sub	a, l
   60BF DD 77 FD      [19] 1040 	ld	-3 (ix),a
   60C2 3E 00         [ 7] 1041 	ld	a,#0x00
   60C4 9C            [ 4] 1042 	sbc	a, h
   60C5 DD 77 FE      [19] 1043 	ld	-2 (ix), a
   60C8 07            [ 4] 1044 	rlca
   60C9 E6 01         [ 7] 1045 	and	a,#0x01
   60CB DD 77 FF      [19] 1046 	ld	-1 (ix),a
   60CE DD 36 F6 00   [19] 1047 	ld	-10 (ix),#0x00
   60D2 DD 36 FC 00   [19] 1048 	ld	-4 (ix),#0x00
   60D6                    1049 00114$:
                           1050 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   60D6 DD 7E FD      [19] 1051 	ld	a,-3 (ix)
   60D9 C6 01         [ 7] 1052 	add	a, #0x01
   60DB DD 77 FA      [19] 1053 	ld	-6 (ix),a
   60DE DD 7E FE      [19] 1054 	ld	a,-2 (ix)
   60E1 CE 00         [ 7] 1055 	adc	a, #0x00
   60E3 DD 77 FB      [19] 1056 	ld	-5 (ix),a
                           1057 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   60E6 DD 7E F6      [19] 1058 	ld	a,-10 (ix)
   60E9 DD 96 06      [19] 1059 	sub	a, 6 (ix)
   60EC D2 78 61      [10] 1060 	jp	NC,00104$
                           1061 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   60EF DD 6E FD      [19] 1062 	ld	l,-3 (ix)
   60F2 DD 66 FE      [19] 1063 	ld	h,-2 (ix)
   60F5 DD 7E FF      [19] 1064 	ld	a,-1 (ix)
   60F8 B7            [ 4] 1065 	or	a, a
   60F9 28 06         [12] 1066 	jr	Z,00118$
   60FB DD 6E FA      [19] 1067 	ld	l,-6 (ix)
   60FE DD 66 FB      [19] 1068 	ld	h,-5 (ix)
   6101                    1069 00118$:
   6101 CB 2C         [ 8] 1070 	sra	h
   6103 CB 1D         [ 8] 1071 	rr	l
   6105 DD 66 FC      [19] 1072 	ld	h,-4 (ix)
   6108 7D            [ 4] 1073 	ld	a,l
   6109 84            [ 4] 1074 	add	a, h
   610A DD 77 F9      [19] 1075 	ld	-7 (ix),a
   610D DD 6E F6      [19] 1076 	ld	l,-10 (ix)
   6110 26 00         [ 7] 1077 	ld	h,#0x00
   6112 29            [11] 1078 	add	hl, hl
   6113 45            [ 4] 1079 	ld	b,l
   6114 4C            [ 4] 1080 	ld	c,h
   6115 DD 7E 04      [19] 1081 	ld	a,4 (ix)
   6118 80            [ 4] 1082 	add	a, b
   6119 DD 77 F7      [19] 1083 	ld	-9 (ix),a
   611C DD 7E 05      [19] 1084 	ld	a,5 (ix)
   611F 89            [ 4] 1085 	adc	a, c
   6120 DD 77 F8      [19] 1086 	ld	-8 (ix),a
   6123 DD 6E F7      [19] 1087 	ld	l,-9 (ix)
   6126 DD 66 F8      [19] 1088 	ld	h,-8 (ix)
   6129 4E            [ 7] 1089 	ld	c,(hl)
   612A 23            [ 6] 1090 	inc	hl
   612B 46            [ 7] 1091 	ld	b,(hl)
   612C D5            [11] 1092 	push	de
   612D C5            [11] 1093 	push	bc
   612E CD A9 79      [17] 1094 	call	_strlen
   6131 F1            [10] 1095 	pop	af
   6132 D1            [10] 1096 	pop	de
   6133 3E 52         [ 7] 1097 	ld	a,#0x52
   6135 95            [ 4] 1098 	sub	a, l
   6136 6F            [ 4] 1099 	ld	l,a
   6137 3E 00         [ 7] 1100 	ld	a,#0x00
   6139 9C            [ 4] 1101 	sbc	a, h
   613A 67            [ 4] 1102 	ld	h,a
   613B CB 3C         [ 8] 1103 	srl	h
   613D CB 1D         [ 8] 1104 	rr	l
   613F 45            [ 4] 1105 	ld	b,l
   6140 D5            [11] 1106 	push	de
   6141 DD 7E F9      [19] 1107 	ld	a,-7 (ix)
   6144 F5            [11] 1108 	push	af
   6145 33            [ 6] 1109 	inc	sp
   6146 C5            [11] 1110 	push	bc
   6147 33            [ 6] 1111 	inc	sp
   6148 21 00 C0      [10] 1112 	ld	hl,#0xC000
   614B E5            [11] 1113 	push	hl
   614C CD B6 7A      [17] 1114 	call	_cpct_getScreenPtr
   614F D1            [10] 1115 	pop	de
   6150 E5            [11] 1116 	push	hl
   6151 FD E1         [14] 1117 	pop	iy
                           1118 ;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
   6153 DD 6E F7      [19] 1119 	ld	l,-9 (ix)
   6156 DD 66 F8      [19] 1120 	ld	h,-8 (ix)
   6159 4E            [ 7] 1121 	ld	c,(hl)
   615A 23            [ 6] 1122 	inc	hl
   615B 46            [ 7] 1123 	ld	b,(hl)
   615C D5            [11] 1124 	push	de
   615D AF            [ 4] 1125 	xor	a, a
   615E F5            [11] 1126 	push	af
   615F 33            [ 6] 1127 	inc	sp
   6160 FD E5         [15] 1128 	push	iy
   6162 C5            [11] 1129 	push	bc
   6163 CD 67 74      [17] 1130 	call	_cpct_drawStringM2
   6166 F1            [10] 1131 	pop	af
   6167 F1            [10] 1132 	pop	af
   6168 33            [ 6] 1133 	inc	sp
   6169 D1            [10] 1134 	pop	de
                           1135 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   616A DD 7E FC      [19] 1136 	ld	a,-4 (ix)
   616D C6 0A         [ 7] 1137 	add	a, #0x0A
   616F DD 77 FC      [19] 1138 	ld	-4 (ix),a
   6172 DD 34 F6      [23] 1139 	inc	-10 (ix)
   6175 C3 D6 60      [10] 1140 	jp	00114$
   6178                    1141 00104$:
                           1142 ;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   6178 DD 46 FD      [19] 1143 	ld	b,-3 (ix)
   617B DD 66 FE      [19] 1144 	ld	h,-2 (ix)
   617E DD 7E FF      [19] 1145 	ld	a,-1 (ix)
   6181 B7            [ 4] 1146 	or	a, a
   6182 28 06         [12] 1147 	jr	Z,00119$
   6184 DD 46 FA      [19] 1148 	ld	b,-6 (ix)
   6187 DD 66 FB      [19] 1149 	ld	h,-5 (ix)
   618A                    1150 00119$:
   618A CB 2C         [ 8] 1151 	sra	h
   618C CB 18         [ 8] 1152 	rr	b
   618E DD 4E 06      [19] 1153 	ld	c,6 (ix)
   6191 0C            [ 4] 1154 	inc	c
   6192 79            [ 4] 1155 	ld	a,c
   6193 87            [ 4] 1156 	add	a, a
   6194 87            [ 4] 1157 	add	a, a
   6195 81            [ 4] 1158 	add	a, c
   6196 87            [ 4] 1159 	add	a, a
   6197 67            [ 4] 1160 	ld	h, a
   6198 80            [ 4] 1161 	add	a,b
   6199 47            [ 4] 1162 	ld	b,a
   619A C5            [11] 1163 	push	bc
   619B D5            [11] 1164 	push	de
   619C D5            [11] 1165 	push	de
   619D CD A9 79      [17] 1166 	call	_strlen
   61A0 F1            [10] 1167 	pop	af
   61A1 D1            [10] 1168 	pop	de
   61A2 C1            [10] 1169 	pop	bc
   61A3 3E 52         [ 7] 1170 	ld	a,#0x52
   61A5 95            [ 4] 1171 	sub	a, l
   61A6 6F            [ 4] 1172 	ld	l,a
   61A7 3E 00         [ 7] 1173 	ld	a,#0x00
   61A9 9C            [ 4] 1174 	sbc	a, h
   61AA 67            [ 4] 1175 	ld	h,a
   61AB CB 3C         [ 8] 1176 	srl	h
   61AD CB 1D         [ 8] 1177 	rr	l
   61AF 7D            [ 4] 1178 	ld	a,l
   61B0 D5            [11] 1179 	push	de
   61B1 C5            [11] 1180 	push	bc
   61B2 33            [ 6] 1181 	inc	sp
   61B3 F5            [11] 1182 	push	af
   61B4 33            [ 6] 1183 	inc	sp
   61B5 21 00 C0      [10] 1184 	ld	hl,#0xC000
   61B8 E5            [11] 1185 	push	hl
   61B9 CD B6 7A      [17] 1186 	call	_cpct_getScreenPtr
   61BC D1            [10] 1187 	pop	de
                           1188 ;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
   61BD 4D            [ 4] 1189 	ld	c, l
   61BE 44            [ 4] 1190 	ld	b, h
   61BF AF            [ 4] 1191 	xor	a, a
   61C0 F5            [11] 1192 	push	af
   61C1 33            [ 6] 1193 	inc	sp
   61C2 C5            [11] 1194 	push	bc
   61C3 D5            [11] 1195 	push	de
   61C4 CD 67 74      [17] 1196 	call	_cpct_drawStringM2
   61C7 F1            [10] 1197 	pop	af
   61C8 F1            [10] 1198 	pop	af
   61C9 33            [ 6] 1199 	inc	sp
                           1200 ;src/gui/gui.c:186: do{
   61CA                    1201 00110$:
                           1202 ;src/gui/gui.c:187: cpct_scanKeyboard(); 
   61CA CD D6 7A      [17] 1203 	call	_cpct_scanKeyboard
                           1204 ;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
   61CD 21 02 04      [10] 1205 	ld	hl,#0x0402
   61D0 CD 30 74      [17] 1206 	call	_cpct_isKeyPressed
   61D3 7D            [ 4] 1207 	ld	a,l
   61D4 B7            [ 4] 1208 	or	a, a
   61D5 28 04         [12] 1209 	jr	Z,00106$
                           1210 ;src/gui/gui.c:190: valueReturn=1;
   61D7 DD 36 F5 01   [19] 1211 	ld	-11 (ix),#0x01
   61DB                    1212 00106$:
                           1213 ;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
   61DB 21 08 04      [10] 1214 	ld	hl,#0x0408
   61DE CD 30 74      [17] 1215 	call	_cpct_isKeyPressed
   61E1 7D            [ 4] 1216 	ld	a,l
   61E2 B7            [ 4] 1217 	or	a, a
   61E3 28 04         [12] 1218 	jr	Z,00111$
                           1219 ;src/gui/gui.c:193: valueReturn=0;
   61E5 DD 36 F5 00   [19] 1220 	ld	-11 (ix),#0x00
   61E9                    1221 00111$:
                           1222 ;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   61E9 21 02 04      [10] 1223 	ld	hl,#0x0402
   61EC CD 30 74      [17] 1224 	call	_cpct_isKeyPressed
   61EF 7D            [ 4] 1225 	ld	a,l
   61F0 B7            [ 4] 1226 	or	a, a
   61F1 20 0A         [12] 1227 	jr	NZ,00112$
   61F3 21 08 04      [10] 1228 	ld	hl,#0x0408
   61F6 CD 30 74      [17] 1229 	call	_cpct_isKeyPressed
   61F9 7D            [ 4] 1230 	ld	a,l
   61FA B7            [ 4] 1231 	or	a, a
   61FB 28 CD         [12] 1232 	jr	Z,00110$
   61FD                    1233 00112$:
                           1234 ;src/gui/gui.c:197: return valueReturn;
   61FD DD 6E F5      [19] 1235 	ld	l,-11 (ix)
   6200 DD F9         [10] 1236 	ld	sp, ix
   6202 DD E1         [14] 1237 	pop	ix
   6204 C9            [10] 1238 	ret
   6205                    1239 ___str_0:
   6205 3C 4F 4B 3E        1240 	.ascii "<OK>"
   6209 00                 1241 	.db 0x00
   620A                    1242 ___str_1:
   620A 3C 4F 4B 3E 20 20  1243 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   6218 00                 1244 	.db 0x00
                           1245 	.area _CODE
                           1246 	.area _INITIALIZER
                           1247 	.area _CABS (ABS)
