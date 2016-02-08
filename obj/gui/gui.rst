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
   5AA6                      66 _putM0::
                             67 ;src/gui/gui.c:5: cpct_setVideoMode(0);
   5AA6 AF            [ 4]   68 	xor	a, a
   5AA7 F5            [11]   69 	push	af
   5AA8 33            [ 6]   70 	inc	sp
   5AA9 CD A9 78      [17]   71 	call	_cpct_setVideoMode
   5AAC 33            [ 6]   72 	inc	sp
                             73 ;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
   5AAD 21 6E 61      [10]   74 	ld	hl,#_paletteTrains
   5AB0 01 10 00      [10]   75 	ld	bc,#0x0010
   5AB3 C5            [11]   76 	push	bc
   5AB4 E5            [11]   77 	push	hl
   5AB5 CD 6E 73      [17]   78 	call	_cpct_setPalette
   5AB8 C9            [10]   79 	ret
                             80 ;src/gui/gui.c:10: void putM1(void)
                             81 ;	---------------------------------
                             82 ; Function putM1
                             83 ; ---------------------------------
   5AB9                      84 _putM1::
                             85 ;src/gui/gui.c:12: cpct_setVideoMode(1);
   5AB9 3E 01         [ 7]   86 	ld	a,#0x01
   5ABB F5            [11]   87 	push	af
   5ABC 33            [ 6]   88 	inc	sp
   5ABD CD A9 78      [17]   89 	call	_cpct_setVideoMode
   5AC0 33            [ 6]   90 	inc	sp
                             91 ;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
   5AC1 21 7E 61      [10]   92 	ld	hl,#_paletteMenusM1
   5AC4 01 04 00      [10]   93 	ld	bc,#0x0004
   5AC7 C5            [11]   94 	push	bc
   5AC8 E5            [11]   95 	push	hl
   5AC9 CD 6E 73      [17]   96 	call	_cpct_setPalette
   5ACC C9            [10]   97 	ret
                             98 ;src/gui/gui.c:17: void putM2(void)
                             99 ;	---------------------------------
                            100 ; Function putM2
                            101 ; ---------------------------------
   5ACD                     102 _putM2::
                            103 ;src/gui/gui.c:19: cpct_setVideoMode(2);
   5ACD 3E 02         [ 7]  104 	ld	a,#0x02
   5ACF F5            [11]  105 	push	af
   5AD0 33            [ 6]  106 	inc	sp
   5AD1 CD A9 78      [17]  107 	call	_cpct_setVideoMode
   5AD4 33            [ 6]  108 	inc	sp
                            109 ;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
   5AD5 21 82 61      [10]  110 	ld	hl,#_paletteMenusM2
   5AD8 01 02 00      [10]  111 	ld	bc,#0x0002
   5ADB C5            [11]  112 	push	bc
   5ADC E5            [11]  113 	push	hl
   5ADD CD 6E 73      [17]  114 	call	_cpct_setPalette
                            115 ;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
   5AE0 21 00 40      [10]  116 	ld	hl,#0x4000
   5AE3 E5            [11]  117 	push	hl
   5AE4 3E FF         [ 7]  118 	ld	a,#0xFF
   5AE6 F5            [11]  119 	push	af
   5AE7 33            [ 6]  120 	inc	sp
   5AE8 26 C0         [ 7]  121 	ld	h, #0xC0
   5AEA E5            [11]  122 	push	hl
   5AEB CD D7 78      [17]  123 	call	_cpct_memset
   5AEE C9            [10]  124 	ret
                            125 ;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
                            126 ;	---------------------------------
                            127 ; Function drawBoxM0
                            128 ; ---------------------------------
   5AEF                     129 _drawBoxM0::
   5AEF DD E5         [15]  130 	push	ix
   5AF1 DD 21 00 00   [14]  131 	ld	ix,#0
   5AF5 DD 39         [15]  132 	add	ix,sp
   5AF7 21 F9 FF      [10]  133 	ld	hl,#-7
   5AFA 39            [11]  134 	add	hl,sp
   5AFB F9            [ 6]  135 	ld	sp,hl
                            136 ;src/gui/gui.c:30: int left = (80-width_)/2;
   5AFC 3E 50         [ 7]  137 	ld	a,#0x50
   5AFE DD 96 04      [19]  138 	sub	a, 4 (ix)
   5B01 57            [ 4]  139 	ld	d,a
   5B02 3E 00         [ 7]  140 	ld	a,#0x00
   5B04 DD 9E 05      [19]  141 	sbc	a, 5 (ix)
   5B07 5F            [ 4]  142 	ld	e,a
   5B08 6A            [ 4]  143 	ld	l, d
   5B09 63            [ 4]  144 	ld	h, e
   5B0A CB 7B         [ 8]  145 	bit	7, e
   5B0C 28 03         [12]  146 	jr	Z,00103$
   5B0E 6A            [ 4]  147 	ld	l, d
   5B0F 63            [ 4]  148 	ld	h, e
   5B10 23            [ 6]  149 	inc	hl
   5B11                     150 00103$:
   5B11 DD 75 F9      [19]  151 	ld	-7 (ix),l
   5B14 DD 74 FA      [19]  152 	ld	-6 (ix),h
   5B17 DD CB FA 2E   [23]  153 	sra	-6 (ix)
   5B1B DD CB F9 1E   [23]  154 	rr	-7 (ix)
                            155 ;src/gui/gui.c:31: int top = (200-height_)/2;
   5B1F 3E C8         [ 7]  156 	ld	a,#0xC8
   5B21 DD 96 06      [19]  157 	sub	a, 6 (ix)
   5B24 4F            [ 4]  158 	ld	c,a
   5B25 3E 00         [ 7]  159 	ld	a,#0x00
   5B27 DD 9E 07      [19]  160 	sbc	a, 7 (ix)
   5B2A 47            [ 4]  161 	ld	b,a
   5B2B 61            [ 4]  162 	ld	h,c
   5B2C 50            [ 4]  163 	ld	d,b
   5B2D CB 78         [ 8]  164 	bit	7, b
   5B2F 28 03         [12]  165 	jr	Z,00104$
   5B31 03            [ 6]  166 	inc	bc
   5B32 61            [ 4]  167 	ld	h,c
   5B33 50            [ 4]  168 	ld	d,b
   5B34                     169 00104$:
   5B34 5C            [ 4]  170 	ld	e, h
   5B35 CB 2A         [ 8]  171 	sra	d
   5B37 CB 1B         [ 8]  172 	rr	e
                            173 ;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
   5B39 D5            [11]  174 	push	de
   5B3A 21 09 09      [10]  175 	ld	hl,#0x0909
   5B3D E5            [11]  176 	push	hl
   5B3E CD BB 78      [17]  177 	call	_cpct_px2byteM0
   5B41 65            [ 4]  178 	ld	h,l
   5B42 01 00 40      [10]  179 	ld	bc,#0x4000
   5B45 C5            [11]  180 	push	bc
   5B46 E5            [11]  181 	push	hl
   5B47 33            [ 6]  182 	inc	sp
   5B48 21 00 C0      [10]  183 	ld	hl,#0xC000
   5B4B E5            [11]  184 	push	hl
   5B4C CD D7 78      [17]  185 	call	_cpct_memset
   5B4F D1            [10]  186 	pop	de
                            187 ;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   5B50 DD 73 FE      [19]  188 	ld	-2 (ix), e
   5B53 63            [ 4]  189 	ld	h, e
   5B54 24            [ 4]  190 	inc	h
   5B55 24            [ 4]  191 	inc	h
   5B56 24            [ 4]  192 	inc	h
   5B57 24            [ 4]  193 	inc	h
   5B58 DD 7E F9      [19]  194 	ld	a,-7 (ix)
   5B5B 3C            [ 4]  195 	inc	a
   5B5C DD 77 FF      [19]  196 	ld	-1 (ix),a
   5B5F D5            [11]  197 	push	de
   5B60 E5            [11]  198 	push	hl
   5B61 33            [ 6]  199 	inc	sp
   5B62 DD 7E FF      [19]  200 	ld	a,-1 (ix)
   5B65 F5            [11]  201 	push	af
   5B66 33            [ 6]  202 	inc	sp
   5B67 21 00 C0      [10]  203 	ld	hl,#0xC000
   5B6A E5            [11]  204 	push	hl
   5B6B CD 0B 7A      [17]  205 	call	_cpct_getScreenPtr
   5B6E D1            [10]  206 	pop	de
   5B6F 4D            [ 4]  207 	ld	c, l
   5B70 44            [ 4]  208 	ld	b, h
                            209 ;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   5B71 DD 7E 06      [19]  210 	ld	a,6 (ix)
   5B74 DD 77 FB      [19]  211 	ld	-5 (ix),a
   5B77 DD 7E 04      [19]  212 	ld	a,4 (ix)
   5B7A DD 77 FD      [19]  213 	ld	-3 (ix),a
   5B7D C5            [11]  214 	push	bc
   5B7E D5            [11]  215 	push	de
   5B7F 21 02 02      [10]  216 	ld	hl,#0x0202
   5B82 E5            [11]  217 	push	hl
   5B83 CD BB 78      [17]  218 	call	_cpct_px2byteM0
   5B86 DD 75 FC      [19]  219 	ld	-4 (ix),l
   5B89 D1            [10]  220 	pop	de
   5B8A C1            [10]  221 	pop	bc
   5B8B D5            [11]  222 	push	de
   5B8C DD 66 FB      [19]  223 	ld	h,-5 (ix)
   5B8F DD 6E FD      [19]  224 	ld	l,-3 (ix)
   5B92 E5            [11]  225 	push	hl
   5B93 DD 7E FC      [19]  226 	ld	a,-4 (ix)
   5B96 F5            [11]  227 	push	af
   5B97 33            [ 6]  228 	inc	sp
   5B98 C5            [11]  229 	push	bc
   5B99 CD 52 79      [17]  230 	call	_cpct_drawSolidBox
   5B9C F1            [10]  231 	pop	af
   5B9D F1            [10]  232 	pop	af
   5B9E 33            [ 6]  233 	inc	sp
   5B9F D1            [10]  234 	pop	de
                            235 ;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5BA0 63            [ 4]  236 	ld	h,e
   5BA1 DD 56 F9      [19]  237 	ld	d,-7 (ix)
   5BA4 E5            [11]  238 	push	hl
   5BA5 33            [ 6]  239 	inc	sp
   5BA6 D5            [11]  240 	push	de
   5BA7 33            [ 6]  241 	inc	sp
   5BA8 21 00 C0      [10]  242 	ld	hl,#0xC000
   5BAB E5            [11]  243 	push	hl
   5BAC CD 0B 7A      [17]  244 	call	_cpct_getScreenPtr
                            245 ;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   5BAF E5            [11]  246 	push	hl
   5BB0 21 06 06      [10]  247 	ld	hl,#0x0606
   5BB3 E5            [11]  248 	push	hl
   5BB4 CD BB 78      [17]  249 	call	_cpct_px2byteM0
   5BB7 45            [ 4]  250 	ld	b,l
   5BB8 D1            [10]  251 	pop	de
   5BB9 DD 66 FB      [19]  252 	ld	h,-5 (ix)
   5BBC DD 6E FD      [19]  253 	ld	l,-3 (ix)
   5BBF E5            [11]  254 	push	hl
   5BC0 C5            [11]  255 	push	bc
   5BC1 33            [ 6]  256 	inc	sp
   5BC2 D5            [11]  257 	push	de
   5BC3 CD 52 79      [17]  258 	call	_cpct_drawSolidBox
   5BC6 F1            [10]  259 	pop	af
   5BC7 F1            [10]  260 	pop	af
   5BC8 33            [ 6]  261 	inc	sp
                            262 ;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   5BC9 DD 66 FE      [19]  263 	ld	h,-2 (ix)
   5BCC 24            [ 4]  264 	inc	h
   5BCD 24            [ 4]  265 	inc	h
   5BCE E5            [11]  266 	push	hl
   5BCF 33            [ 6]  267 	inc	sp
   5BD0 DD 7E FF      [19]  268 	ld	a,-1 (ix)
   5BD3 F5            [11]  269 	push	af
   5BD4 33            [ 6]  270 	inc	sp
   5BD5 21 00 C0      [10]  271 	ld	hl,#0xC000
   5BD8 E5            [11]  272 	push	hl
   5BD9 CD 0B 7A      [17]  273 	call	_cpct_getScreenPtr
   5BDC EB            [ 4]  274 	ex	de,hl
                            275 ;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   5BDD DD 7E 06      [19]  276 	ld	a,6 (ix)
   5BE0 C6 FC         [ 7]  277 	add	a,#0xFC
   5BE2 4F            [ 4]  278 	ld	c,a
   5BE3 DD 46 04      [19]  279 	ld	b,4 (ix)
   5BE6 05            [ 4]  280 	dec	b
   5BE7 05            [ 4]  281 	dec	b
   5BE8 C5            [11]  282 	push	bc
   5BE9 D5            [11]  283 	push	de
   5BEA 21 00 00      [10]  284 	ld	hl,#0x0000
   5BED E5            [11]  285 	push	hl
   5BEE CD BB 78      [17]  286 	call	_cpct_px2byteM0
   5BF1 DD 75 FC      [19]  287 	ld	-4 (ix),l
   5BF4 D1            [10]  288 	pop	de
   5BF5 C1            [10]  289 	pop	bc
   5BF6 79            [ 4]  290 	ld	a,c
   5BF7 F5            [11]  291 	push	af
   5BF8 33            [ 6]  292 	inc	sp
   5BF9 C5            [11]  293 	push	bc
   5BFA 33            [ 6]  294 	inc	sp
   5BFB DD 7E FC      [19]  295 	ld	a,-4 (ix)
   5BFE F5            [11]  296 	push	af
   5BFF 33            [ 6]  297 	inc	sp
   5C00 D5            [11]  298 	push	de
   5C01 CD 52 79      [17]  299 	call	_cpct_drawSolidBox
   5C04 DD F9         [10]  300 	ld	sp,ix
   5C06 DD E1         [14]  301 	pop	ix
   5C08 C9            [10]  302 	ret
                            303 ;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
                            304 ;	---------------------------------
                            305 ; Function drawBoxM2
                            306 ; ---------------------------------
   5C09                     307 _drawBoxM2::
   5C09 DD E5         [15]  308 	push	ix
   5C0B DD 21 00 00   [14]  309 	ld	ix,#0
   5C0F DD 39         [15]  310 	add	ix,sp
   5C11 21 FA FF      [10]  311 	ld	hl,#-6
   5C14 39            [11]  312 	add	hl,sp
   5C15 F9            [ 6]  313 	ld	sp,hl
                            314 ;src/gui/gui.c:54: int left = (80-width_)/2;
   5C16 3E 50         [ 7]  315 	ld	a,#0x50
   5C18 DD 96 04      [19]  316 	sub	a, 4 (ix)
   5C1B 4F            [ 4]  317 	ld	c,a
   5C1C 3E 00         [ 7]  318 	ld	a,#0x00
   5C1E DD 9E 05      [19]  319 	sbc	a, 5 (ix)
   5C21 47            [ 4]  320 	ld	b,a
   5C22 61            [ 4]  321 	ld	h,c
   5C23 50            [ 4]  322 	ld	d,b
   5C24 CB 78         [ 8]  323 	bit	7, b
   5C26 28 03         [12]  324 	jr	Z,00103$
   5C28 03            [ 6]  325 	inc	bc
   5C29 61            [ 4]  326 	ld	h,c
   5C2A 50            [ 4]  327 	ld	d,b
   5C2B                     328 00103$:
   5C2B 5C            [ 4]  329 	ld	e, h
   5C2C CB 2A         [ 8]  330 	sra	d
   5C2E CB 1B         [ 8]  331 	rr	e
                            332 ;src/gui/gui.c:55: int top = (200-height_)/2;
   5C30 3E C8         [ 7]  333 	ld	a,#0xC8
   5C32 DD 96 06      [19]  334 	sub	a, 6 (ix)
   5C35 4F            [ 4]  335 	ld	c,a
   5C36 3E 00         [ 7]  336 	ld	a,#0x00
   5C38 DD 9E 07      [19]  337 	sbc	a, 7 (ix)
   5C3B 47            [ 4]  338 	ld	b,a
   5C3C 61            [ 4]  339 	ld	h,c
   5C3D 68            [ 4]  340 	ld	l,b
   5C3E CB 78         [ 8]  341 	bit	7, b
   5C40 28 03         [12]  342 	jr	Z,00104$
   5C42 03            [ 6]  343 	inc	bc
   5C43 61            [ 4]  344 	ld	h,c
   5C44 68            [ 4]  345 	ld	l,b
   5C45                     346 00104$:
   5C45 DD 74 FA      [19]  347 	ld	-6 (ix),h
   5C48 DD 75 FB      [19]  348 	ld	-5 (ix),l
   5C4B DD CB FB 2E   [23]  349 	sra	-5 (ix)
   5C4F DD CB FA 1E   [23]  350 	rr	-6 (ix)
                            351 ;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   5C53 DD 7E FA      [19]  352 	ld	a,-6 (ix)
   5C56 DD 77 FC      [19]  353 	ld	-4 (ix), a
   5C59 C6 05         [ 7]  354 	add	a, #0x05
   5C5B 4F            [ 4]  355 	ld	c,a
   5C5C DD 73 FD      [19]  356 	ld	-3 (ix), e
   5C5F 63            [ 4]  357 	ld	h, e
   5C60 24            [ 4]  358 	inc	h
   5C61 24            [ 4]  359 	inc	h
   5C62 D5            [11]  360 	push	de
   5C63 79            [ 4]  361 	ld	a,c
   5C64 F5            [11]  362 	push	af
   5C65 33            [ 6]  363 	inc	sp
   5C66 E5            [11]  364 	push	hl
   5C67 33            [ 6]  365 	inc	sp
   5C68 21 00 C0      [10]  366 	ld	hl,#0xC000
   5C6B E5            [11]  367 	push	hl
   5C6C CD 0B 7A      [17]  368 	call	_cpct_getScreenPtr
   5C6F D1            [10]  369 	pop	de
                            370 ;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   5C70 DD 46 06      [19]  371 	ld	b,6 (ix)
   5C73 DD 4E 04      [19]  372 	ld	c,4 (ix)
   5C76 79            [ 4]  373 	ld	a,c
   5C77 C6 FF         [ 7]  374 	add	a,#0xFF
   5C79 DD 75 FE      [19]  375 	ld	-2 (ix),l
   5C7C DD 74 FF      [19]  376 	ld	-1 (ix),h
   5C7F C5            [11]  377 	push	bc
   5C80 D5            [11]  378 	push	de
   5C81 C5            [11]  379 	push	bc
   5C82 33            [ 6]  380 	inc	sp
   5C83 F5            [11]  381 	push	af
   5C84 33            [ 6]  382 	inc	sp
   5C85 AF            [ 4]  383 	xor	a, a
   5C86 F5            [11]  384 	push	af
   5C87 33            [ 6]  385 	inc	sp
   5C88 DD 6E FE      [19]  386 	ld	l,-2 (ix)
   5C8B DD 66 FF      [19]  387 	ld	h,-1 (ix)
   5C8E E5            [11]  388 	push	hl
   5C8F CD 52 79      [17]  389 	call	_cpct_drawSolidBox
   5C92 F1            [10]  390 	pop	af
   5C93 F1            [10]  391 	pop	af
   5C94 33            [ 6]  392 	inc	sp
   5C95 D1            [10]  393 	pop	de
   5C96 C1            [10]  394 	pop	bc
                            395 ;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5C97 DD 66 FA      [19]  396 	ld	h,-6 (ix)
   5C9A 53            [ 4]  397 	ld	d,e
   5C9B C5            [11]  398 	push	bc
   5C9C E5            [11]  399 	push	hl
   5C9D 33            [ 6]  400 	inc	sp
   5C9E D5            [11]  401 	push	de
   5C9F 33            [ 6]  402 	inc	sp
   5CA0 21 00 C0      [10]  403 	ld	hl,#0xC000
   5CA3 E5            [11]  404 	push	hl
   5CA4 CD 0B 7A      [17]  405 	call	_cpct_getScreenPtr
   5CA7 C1            [10]  406 	pop	bc
                            407 ;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   5CA8 DD 7E 04      [19]  408 	ld	a,4 (ix)
   5CAB EB            [ 4]  409 	ex	de,hl
   5CAC C5            [11]  410 	push	bc
   5CAD C5            [11]  411 	push	bc
   5CAE 33            [ 6]  412 	inc	sp
   5CAF 47            [ 4]  413 	ld	b,a
   5CB0 0E F8         [ 7]  414 	ld	c,#0xF8
   5CB2 C5            [11]  415 	push	bc
   5CB3 D5            [11]  416 	push	de
   5CB4 CD 52 79      [17]  417 	call	_cpct_drawSolidBox
   5CB7 F1            [10]  418 	pop	af
   5CB8 F1            [10]  419 	pop	af
   5CB9 33            [ 6]  420 	inc	sp
   5CBA C1            [10]  421 	pop	bc
                            422 ;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   5CBB DD 66 FC      [19]  423 	ld	h,-4 (ix)
   5CBE 24            [ 4]  424 	inc	h
   5CBF DD 56 FD      [19]  425 	ld	d,-3 (ix)
   5CC2 14            [ 4]  426 	inc	d
   5CC3 C5            [11]  427 	push	bc
   5CC4 E5            [11]  428 	push	hl
   5CC5 33            [ 6]  429 	inc	sp
   5CC6 D5            [11]  430 	push	de
   5CC7 33            [ 6]  431 	inc	sp
   5CC8 21 00 C0      [10]  432 	ld	hl,#0xC000
   5CCB E5            [11]  433 	push	hl
   5CCC CD 0B 7A      [17]  434 	call	_cpct_getScreenPtr
   5CCF C1            [10]  435 	pop	bc
   5CD0 5D            [ 4]  436 	ld	e, l
   5CD1 54            [ 4]  437 	ld	d, h
                            438 ;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   5CD2 DD 66 06      [19]  439 	ld	h,6 (ix)
   5CD5 25            [ 4]  440 	dec	h
   5CD6 25            [ 4]  441 	dec	h
   5CD7 79            [ 4]  442 	ld	a,c
   5CD8 C6 FE         [ 7]  443 	add	a,#0xFE
   5CDA E5            [11]  444 	push	hl
   5CDB 33            [ 6]  445 	inc	sp
   5CDC 47            [ 4]  446 	ld	b,a
   5CDD 0E FF         [ 7]  447 	ld	c,#0xFF
   5CDF C5            [11]  448 	push	bc
   5CE0 D5            [11]  449 	push	de
   5CE1 CD 52 79      [17]  450 	call	_cpct_drawSolidBox
   5CE4 DD F9         [10]  451 	ld	sp,ix
   5CE6 DD E1         [14]  452 	pop	ix
   5CE8 C9            [10]  453 	ret
                            454 ;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            455 ;	---------------------------------
                            456 ; Function EraseMenuEntry
                            457 ; ---------------------------------
   5CE9                     458 _EraseMenuEntry::
   5CE9 DD E5         [15]  459 	push	ix
   5CEB DD 21 00 00   [14]  460 	ld	ix,#0
   5CEF DD 39         [15]  461 	add	ix,sp
   5CF1 3B            [ 6]  462 	dec	sp
                            463 ;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5CF2 DD 4E 06      [19]  464 	ld	c,6 (ix)
   5CF5 06 00         [ 7]  465 	ld	b,#0x00
   5CF7 69            [ 4]  466 	ld	l, c
   5CF8 60            [ 4]  467 	ld	h, b
   5CF9 29            [11]  468 	add	hl, hl
   5CFA 29            [11]  469 	add	hl, hl
   5CFB 09            [11]  470 	add	hl, bc
   5CFC 29            [11]  471 	add	hl, hl
   5CFD 4D            [ 4]  472 	ld	c,l
   5CFE 44            [ 4]  473 	ld	b,h
   5CFF 3E C9         [ 7]  474 	ld	a,#0xC9
   5D01 91            [ 4]  475 	sub	a, c
   5D02 57            [ 4]  476 	ld	d,a
   5D03 3E 00         [ 7]  477 	ld	a,#0x00
   5D05 98            [ 4]  478 	sbc	a, b
   5D06 5F            [ 4]  479 	ld	e,a
   5D07 6A            [ 4]  480 	ld	l, d
   5D08 63            [ 4]  481 	ld	h, e
   5D09 CB 7B         [ 8]  482 	bit	7, e
   5D0B 28 03         [12]  483 	jr	Z,00103$
   5D0D 6A            [ 4]  484 	ld	l, d
   5D0E 63            [ 4]  485 	ld	h, e
   5D0F 23            [ 6]  486 	inc	hl
   5D10                     487 00103$:
   5D10 CB 2C         [ 8]  488 	sra	h
   5D12 CB 1D         [ 8]  489 	rr	l
   5D14 55            [ 4]  490 	ld	d,l
   5D15 DD 7E 07      [19]  491 	ld	a,7 (ix)
   5D18 5F            [ 4]  492 	ld	e,a
   5D19 87            [ 4]  493 	add	a, a
   5D1A 87            [ 4]  494 	add	a, a
   5D1B 83            [ 4]  495 	add	a, e
   5D1C 87            [ 4]  496 	add	a, a
   5D1D DD 77 FF      [19]  497 	ld	-1 (ix),a
   5D20 7A            [ 4]  498 	ld	a,d
   5D21 DD 86 FF      [19]  499 	add	a, -1 (ix)
   5D24 C5            [11]  500 	push	bc
   5D25 57            [ 4]  501 	ld	d,a
   5D26 1E 20         [ 7]  502 	ld	e,#0x20
   5D28 D5            [11]  503 	push	de
   5D29 21 00 C0      [10]  504 	ld	hl,#0xC000
   5D2C E5            [11]  505 	push	hl
   5D2D CD 0B 7A      [17]  506 	call	_cpct_getScreenPtr
   5D30 C1            [10]  507 	pop	bc
                            508 ;src/gui/gui.c:76: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   5D31 EB            [ 4]  509 	ex	de,hl
   5D32 C5            [11]  510 	push	bc
   5D33 21 11 0A      [10]  511 	ld	hl,#0x0A11
   5D36 E5            [11]  512 	push	hl
   5D37 3E FF         [ 7]  513 	ld	a,#0xFF
   5D39 F5            [11]  514 	push	af
   5D3A 33            [ 6]  515 	inc	sp
   5D3B D5            [11]  516 	push	de
   5D3C CD 52 79      [17]  517 	call	_cpct_drawSolidBox
   5D3F F1            [10]  518 	pop	af
   5D40 F1            [10]  519 	pop	af
   5D41 33            [ 6]  520 	inc	sp
   5D42 C1            [10]  521 	pop	bc
                            522 ;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   5D43 3E CA         [ 7]  523 	ld	a,#0xCA
   5D45 91            [ 4]  524 	sub	a, c
   5D46 57            [ 4]  525 	ld	d,a
   5D47 3E 00         [ 7]  526 	ld	a,#0x00
   5D49 98            [ 4]  527 	sbc	a, b
   5D4A 5F            [ 4]  528 	ld	e,a
   5D4B 6A            [ 4]  529 	ld	l, d
   5D4C 63            [ 4]  530 	ld	h, e
   5D4D CB 7B         [ 8]  531 	bit	7, e
   5D4F 28 03         [12]  532 	jr	Z,00104$
   5D51 6A            [ 4]  533 	ld	l, d
   5D52 63            [ 4]  534 	ld	h, e
   5D53 23            [ 6]  535 	inc	hl
   5D54                     536 00104$:
   5D54 CB 2C         [ 8]  537 	sra	h
   5D56 CB 1D         [ 8]  538 	rr	l
   5D58 7D            [ 4]  539 	ld	a,l
   5D59 DD 86 FF      [19]  540 	add	a, -1 (ix)
   5D5C 4F            [ 4]  541 	ld	c,a
   5D5D DD 6E 07      [19]  542 	ld	l,7 (ix)
   5D60 26 00         [ 7]  543 	ld	h,#0x00
   5D62 29            [11]  544 	add	hl, hl
   5D63 EB            [ 4]  545 	ex	de,hl
   5D64 DD 6E 04      [19]  546 	ld	l,4 (ix)
   5D67 DD 66 05      [19]  547 	ld	h,5 (ix)
   5D6A 19            [11]  548 	add	hl,de
   5D6B E5            [11]  549 	push	hl
   5D6C 5E            [ 7]  550 	ld	e,(hl)
   5D6D 23            [ 6]  551 	inc	hl
   5D6E 56            [ 7]  552 	ld	d,(hl)
   5D6F C5            [11]  553 	push	bc
   5D70 D5            [11]  554 	push	de
   5D71 CD FE 78      [17]  555 	call	_strlen
   5D74 F1            [10]  556 	pop	af
   5D75 EB            [ 4]  557 	ex	de,hl
   5D76 C1            [10]  558 	pop	bc
   5D77 E1            [10]  559 	pop	hl
   5D78 3E 52         [ 7]  560 	ld	a,#0x52
   5D7A 93            [ 4]  561 	sub	a, e
   5D7B 5F            [ 4]  562 	ld	e,a
   5D7C 3E 00         [ 7]  563 	ld	a,#0x00
   5D7E 9A            [ 4]  564 	sbc	a, d
   5D7F 57            [ 4]  565 	ld	d,a
   5D80 CB 3A         [ 8]  566 	srl	d
   5D82 CB 1B         [ 8]  567 	rr	e
   5D84 E5            [11]  568 	push	hl
   5D85 51            [ 4]  569 	ld	d, c
   5D86 D5            [11]  570 	push	de
   5D87 01 00 C0      [10]  571 	ld	bc,#0xC000
   5D8A C5            [11]  572 	push	bc
   5D8B CD 0B 7A      [17]  573 	call	_cpct_getScreenPtr
   5D8E 4D            [ 4]  574 	ld	c,l
   5D8F 44            [ 4]  575 	ld	b,h
   5D90 E1            [10]  576 	pop	hl
                            577 ;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   5D91 5E            [ 7]  578 	ld	e,(hl)
   5D92 23            [ 6]  579 	inc	hl
   5D93 56            [ 7]  580 	ld	d,(hl)
   5D94 AF            [ 4]  581 	xor	a, a
   5D95 F5            [11]  582 	push	af
   5D96 33            [ 6]  583 	inc	sp
   5D97 C5            [11]  584 	push	bc
   5D98 D5            [11]  585 	push	de
   5D99 CD BC 73      [17]  586 	call	_cpct_drawStringM2
   5D9C F1            [10]  587 	pop	af
   5D9D F1            [10]  588 	pop	af
   5D9E 33            [ 6]  589 	inc	sp
   5D9F 33            [ 6]  590 	inc	sp
   5DA0 DD E1         [14]  591 	pop	ix
   5DA2 C9            [10]  592 	ret
                            593 ;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            594 ;	---------------------------------
                            595 ; Function drawMenuEntry
                            596 ; ---------------------------------
   5DA3                     597 _drawMenuEntry::
   5DA3 DD E5         [15]  598 	push	ix
   5DA5 DD 21 00 00   [14]  599 	ld	ix,#0
   5DA9 DD 39         [15]  600 	add	ix,sp
   5DAB 21 FA FF      [10]  601 	ld	hl,#-6
   5DAE 39            [11]  602 	add	hl,sp
   5DAF F9            [ 6]  603 	ld	sp,hl
                            604 ;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5DB0 DD 4E 06      [19]  605 	ld	c,6 (ix)
   5DB3 06 00         [ 7]  606 	ld	b,#0x00
   5DB5 69            [ 4]  607 	ld	l, c
   5DB6 60            [ 4]  608 	ld	h, b
   5DB7 29            [11]  609 	add	hl, hl
   5DB8 29            [11]  610 	add	hl, hl
   5DB9 09            [11]  611 	add	hl, bc
   5DBA 29            [11]  612 	add	hl, hl
   5DBB 4D            [ 4]  613 	ld	c,l
   5DBC 44            [ 4]  614 	ld	b,h
   5DBD 3E C9         [ 7]  615 	ld	a,#0xC9
   5DBF 91            [ 4]  616 	sub	a, c
   5DC0 57            [ 4]  617 	ld	d,a
   5DC1 3E 00         [ 7]  618 	ld	a,#0x00
   5DC3 98            [ 4]  619 	sbc	a, b
   5DC4 5F            [ 4]  620 	ld	e,a
   5DC5 6A            [ 4]  621 	ld	l, d
   5DC6 63            [ 4]  622 	ld	h, e
   5DC7 CB 7B         [ 8]  623 	bit	7, e
   5DC9 28 03         [12]  624 	jr	Z,00114$
   5DCB 6A            [ 4]  625 	ld	l, d
   5DCC 63            [ 4]  626 	ld	h, e
   5DCD 23            [ 6]  627 	inc	hl
   5DCE                     628 00114$:
   5DCE CB 2C         [ 8]  629 	sra	h
   5DD0 CB 1D         [ 8]  630 	rr	l
   5DD2 55            [ 4]  631 	ld	d,l
   5DD3 DD 7E 07      [19]  632 	ld	a,7 (ix)
   5DD6 5F            [ 4]  633 	ld	e,a
   5DD7 87            [ 4]  634 	add	a, a
   5DD8 87            [ 4]  635 	add	a, a
   5DD9 83            [ 4]  636 	add	a, e
   5DDA 87            [ 4]  637 	add	a, a
   5DDB 82            [ 4]  638 	add	a,d
   5DDC C5            [11]  639 	push	bc
   5DDD 57            [ 4]  640 	ld	d,a
   5DDE 1E 20         [ 7]  641 	ld	e,#0x20
   5DE0 D5            [11]  642 	push	de
   5DE1 21 00 C0      [10]  643 	ld	hl,#0xC000
   5DE4 E5            [11]  644 	push	hl
   5DE5 CD 0B 7A      [17]  645 	call	_cpct_getScreenPtr
   5DE8 C1            [10]  646 	pop	bc
                            647 ;src/gui/gui.c:91: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   5DE9 EB            [ 4]  648 	ex	de,hl
   5DEA C5            [11]  649 	push	bc
   5DEB 21 11 0A      [10]  650 	ld	hl,#0x0A11
   5DEE E5            [11]  651 	push	hl
   5DEF AF            [ 4]  652 	xor	a, a
   5DF0 F5            [11]  653 	push	af
   5DF1 33            [ 6]  654 	inc	sp
   5DF2 D5            [11]  655 	push	de
   5DF3 CD 52 79      [17]  656 	call	_cpct_drawSolidBox
   5DF6 F1            [10]  657 	pop	af
   5DF7 F1            [10]  658 	pop	af
   5DF8 33            [ 6]  659 	inc	sp
   5DF9 C1            [10]  660 	pop	bc
                            661 ;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
   5DFA 21 B0 36      [10]  662 	ld	hl,#0x36B0
   5DFD                     663 00108$:
   5DFD 2B            [ 6]  664 	dec	hl
   5DFE 7C            [ 4]  665 	ld	a,h
   5DFF B5            [ 4]  666 	or	a,l
   5E00 20 FB         [12]  667 	jr	NZ,00108$
                            668 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5E02 3E CA         [ 7]  669 	ld	a,#0xCA
   5E04 91            [ 4]  670 	sub	a, c
   5E05 DD 77 FE      [19]  671 	ld	-2 (ix),a
   5E08 3E 00         [ 7]  672 	ld	a,#0x00
   5E0A 98            [ 4]  673 	sbc	a, b
   5E0B DD 77 FF      [19]  674 	ld	-1 (ix), a
   5E0E 07            [ 4]  675 	rlca
   5E0F E6 01         [ 7]  676 	and	a,#0x01
   5E11 5F            [ 4]  677 	ld	e,a
   5E12 21 00 00      [10]  678 	ld	hl,#0x0000
   5E15 E3            [19]  679 	ex	(sp), hl
   5E16                     680 00110$:
   5E16 DD 66 06      [19]  681 	ld	h,6 (ix)
   5E19 2E 00         [ 7]  682 	ld	l,#0x00
   5E1B DD 7E FA      [19]  683 	ld	a,-6 (ix)
   5E1E 94            [ 4]  684 	sub	a, h
   5E1F DD 7E FB      [19]  685 	ld	a,-5 (ix)
   5E22 9D            [ 4]  686 	sbc	a, l
   5E23 E2 28 5E      [10]  687 	jp	PO, 00146$
   5E26 EE 80         [ 7]  688 	xor	a, #0x80
   5E28                     689 00146$:
   5E28 F2 CE 5E      [10]  690 	jp	P,00112$
                            691 ;src/gui/gui.c:99: if(i==iSelect)
   5E2B DD 56 07      [19]  692 	ld	d,7 (ix)
   5E2E 06 00         [ 7]  693 	ld	b,#0x00
   5E30 DD 7E FA      [19]  694 	ld	a,-6 (ix)
   5E33 92            [ 4]  695 	sub	a, d
   5E34 20 0A         [12]  696 	jr	NZ,00103$
   5E36 DD 7E FB      [19]  697 	ld	a,-5 (ix)
   5E39 90            [ 4]  698 	sub	a, b
   5E3A 20 04         [12]  699 	jr	NZ,00103$
                            700 ;src/gui/gui.c:100: penSelected = 1;
   5E3C 0E 01         [ 7]  701 	ld	c,#0x01
   5E3E 18 02         [12]  702 	jr	00104$
   5E40                     703 00103$:
                            704 ;src/gui/gui.c:102: penSelected = 0;
   5E40 0E 00         [ 7]  705 	ld	c,#0x00
   5E42                     706 00104$:
                            707 ;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   5E42 DD 6E FE      [19]  708 	ld	l,-2 (ix)
   5E45 DD 66 FF      [19]  709 	ld	h,-1 (ix)
   5E48 7B            [ 4]  710 	ld	a,e
   5E49 B7            [ 4]  711 	or	a, a
   5E4A 28 07         [12]  712 	jr	Z,00115$
   5E4C DD 6E FE      [19]  713 	ld	l,-2 (ix)
   5E4F DD 66 FF      [19]  714 	ld	h,-1 (ix)
   5E52 23            [ 6]  715 	inc	hl
   5E53                     716 00115$:
   5E53 CB 2C         [ 8]  717 	sra	h
   5E55 CB 1D         [ 8]  718 	rr	l
   5E57 45            [ 4]  719 	ld	b,l
   5E58 DD 6E FA      [19]  720 	ld	l,-6 (ix)
   5E5B D5            [11]  721 	push	de
   5E5C 5D            [ 4]  722 	ld	e,l
   5E5D 29            [11]  723 	add	hl, hl
   5E5E 29            [11]  724 	add	hl, hl
   5E5F 19            [11]  725 	add	hl, de
   5E60 29            [11]  726 	add	hl, hl
   5E61 D1            [10]  727 	pop	de
   5E62 78            [ 4]  728 	ld	a,b
   5E63 85            [ 4]  729 	add	a, l
   5E64 DD 77 FD      [19]  730 	ld	-3 (ix),a
   5E67 DD 56 FA      [19]  731 	ld	d,-6 (ix)
   5E6A DD 46 FB      [19]  732 	ld	b,-5 (ix)
   5E6D CB 22         [ 8]  733 	sla	d
   5E6F CB 10         [ 8]  734 	rl	b
   5E71 DD 7E 04      [19]  735 	ld	a,4 (ix)
   5E74 82            [ 4]  736 	add	a, d
   5E75 57            [ 4]  737 	ld	d,a
   5E76 DD 7E 05      [19]  738 	ld	a,5 (ix)
   5E79 88            [ 4]  739 	adc	a, b
   5E7A 47            [ 4]  740 	ld	b,a
   5E7B 6A            [ 4]  741 	ld	l, d
   5E7C 60            [ 4]  742 	ld	h, b
   5E7D 7E            [ 7]  743 	ld	a, (hl)
   5E7E 23            [ 6]  744 	inc	hl
   5E7F 66            [ 7]  745 	ld	h,(hl)
   5E80 6F            [ 4]  746 	ld	l,a
   5E81 C5            [11]  747 	push	bc
   5E82 D5            [11]  748 	push	de
   5E83 E5            [11]  749 	push	hl
   5E84 CD FE 78      [17]  750 	call	_strlen
   5E87 F1            [10]  751 	pop	af
   5E88 D1            [10]  752 	pop	de
   5E89 C1            [10]  753 	pop	bc
   5E8A 3E 52         [ 7]  754 	ld	a,#0x52
   5E8C 95            [ 4]  755 	sub	a, l
   5E8D 6F            [ 4]  756 	ld	l,a
   5E8E 3E 00         [ 7]  757 	ld	a,#0x00
   5E90 9C            [ 4]  758 	sbc	a, h
   5E91 67            [ 4]  759 	ld	h,a
   5E92 CB 3C         [ 8]  760 	srl	h
   5E94 CB 1D         [ 8]  761 	rr	l
   5E96 DD 75 FC      [19]  762 	ld	-4 (ix),l
   5E99 C5            [11]  763 	push	bc
   5E9A D5            [11]  764 	push	de
   5E9B DD 66 FD      [19]  765 	ld	h,-3 (ix)
   5E9E DD 6E FC      [19]  766 	ld	l,-4 (ix)
   5EA1 E5            [11]  767 	push	hl
   5EA2 21 00 C0      [10]  768 	ld	hl,#0xC000
   5EA5 E5            [11]  769 	push	hl
   5EA6 CD 0B 7A      [17]  770 	call	_cpct_getScreenPtr
   5EA9 D1            [10]  771 	pop	de
   5EAA C1            [10]  772 	pop	bc
   5EAB E5            [11]  773 	push	hl
   5EAC FD E1         [14]  774 	pop	iy
                            775 ;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
   5EAE 6A            [ 4]  776 	ld	l, d
   5EAF 60            [ 4]  777 	ld	h, b
   5EB0 7E            [ 7]  778 	ld	a, (hl)
   5EB1 23            [ 6]  779 	inc	hl
   5EB2 66            [ 7]  780 	ld	h,(hl)
   5EB3 6F            [ 4]  781 	ld	l,a
   5EB4 D5            [11]  782 	push	de
   5EB5 79            [ 4]  783 	ld	a,c
   5EB6 F5            [11]  784 	push	af
   5EB7 33            [ 6]  785 	inc	sp
   5EB8 FD E5         [15]  786 	push	iy
   5EBA E5            [11]  787 	push	hl
   5EBB CD BC 73      [17]  788 	call	_cpct_drawStringM2
   5EBE F1            [10]  789 	pop	af
   5EBF F1            [10]  790 	pop	af
   5EC0 33            [ 6]  791 	inc	sp
   5EC1 D1            [10]  792 	pop	de
                            793 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5EC2 DD 34 FA      [23]  794 	inc	-6 (ix)
   5EC5 C2 16 5E      [10]  795 	jp	NZ,00110$
   5EC8 DD 34 FB      [23]  796 	inc	-5 (ix)
   5ECB C3 16 5E      [10]  797 	jp	00110$
   5ECE                     798 00112$:
   5ECE DD F9         [10]  799 	ld	sp, ix
   5ED0 DD E1         [14]  800 	pop	ix
   5ED2 C9            [10]  801 	ret
                            802 ;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
                            803 ;	---------------------------------
                            804 ; Function drawMenu
                            805 ; ---------------------------------
   5ED3                     806 _drawMenu::
   5ED3 DD E5         [15]  807 	push	ix
   5ED5 DD 21 00 00   [14]  808 	ld	ix,#0
   5ED9 DD 39         [15]  809 	add	ix,sp
   5EDB F5            [11]  810 	push	af
                            811 ;src/gui/gui.c:112: u8 iSelect=0;
   5EDC 06 00         [ 7]  812 	ld	b,#0x00
                            813 ;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
   5EDE C5            [11]  814 	push	bc
   5EDF 21 00 40      [10]  815 	ld	hl,#0x4000
   5EE2 E5            [11]  816 	push	hl
   5EE3 3E FF         [ 7]  817 	ld	a,#0xFF
   5EE5 F5            [11]  818 	push	af
   5EE6 33            [ 6]  819 	inc	sp
   5EE7 26 C0         [ 7]  820 	ld	h, #0xC0
   5EE9 E5            [11]  821 	push	hl
   5EEA CD D7 78      [17]  822 	call	_cpct_memset
   5EED C1            [10]  823 	pop	bc
                            824 ;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
   5EEE DD 5E 06      [19]  825 	ld	e,6 (ix)
   5EF1 16 00         [ 7]  826 	ld	d,#0x00
   5EF3 6B            [ 4]  827 	ld	l, e
   5EF4 62            [ 4]  828 	ld	h, d
   5EF5 29            [11]  829 	add	hl, hl
   5EF6 19            [11]  830 	add	hl, de
   5EF7 29            [11]  831 	add	hl, hl
   5EF8 29            [11]  832 	add	hl, hl
   5EF9 C5            [11]  833 	push	bc
   5EFA E5            [11]  834 	push	hl
   5EFB 21 1E 00      [10]  835 	ld	hl,#0x001E
   5EFE E5            [11]  836 	push	hl
   5EFF CD 09 5C      [17]  837 	call	_drawBoxM2
   5F02 F1            [10]  838 	pop	af
   5F03 F1            [10]  839 	pop	af
   5F04 AF            [ 4]  840 	xor	a, a
   5F05 F5            [11]  841 	push	af
   5F06 33            [ 6]  842 	inc	sp
   5F07 DD 7E 06      [19]  843 	ld	a,6 (ix)
   5F0A F5            [11]  844 	push	af
   5F0B 33            [ 6]  845 	inc	sp
   5F0C DD 6E 04      [19]  846 	ld	l,4 (ix)
   5F0F DD 66 05      [19]  847 	ld	h,5 (ix)
   5F12 E5            [11]  848 	push	hl
   5F13 CD A3 5D      [17]  849 	call	_drawMenuEntry
   5F16 F1            [10]  850 	pop	af
   5F17 F1            [10]  851 	pop	af
   5F18 C1            [10]  852 	pop	bc
                            853 ;src/gui/gui.c:120: do{
   5F19 DD 4E 06      [19]  854 	ld	c,6 (ix)
   5F1C 0D            [ 4]  855 	dec	c
   5F1D                     856 00111$:
                            857 ;src/gui/gui.c:121: cpct_scanKeyboard(); 
   5F1D C5            [11]  858 	push	bc
   5F1E CD 2B 7A      [17]  859 	call	_cpct_scanKeyboard
   5F21 21 00 01      [10]  860 	ld	hl,#0x0100
   5F24 CD 85 73      [17]  861 	call	_cpct_isKeyPressed
   5F27 7D            [ 4]  862 	ld	a,l
   5F28 C1            [10]  863 	pop	bc
   5F29 B7            [ 4]  864 	or	a, a
   5F2A 28 32         [12]  865 	jr	Z,00105$
                            866 ;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
   5F2C C5            [11]  867 	push	bc
   5F2D C5            [11]  868 	push	bc
   5F2E 33            [ 6]  869 	inc	sp
   5F2F DD 7E 06      [19]  870 	ld	a,6 (ix)
   5F32 F5            [11]  871 	push	af
   5F33 33            [ 6]  872 	inc	sp
   5F34 DD 6E 04      [19]  873 	ld	l,4 (ix)
   5F37 DD 66 05      [19]  874 	ld	h,5 (ix)
   5F3A E5            [11]  875 	push	hl
   5F3B CD E9 5C      [17]  876 	call	_EraseMenuEntry
   5F3E F1            [10]  877 	pop	af
   5F3F F1            [10]  878 	pop	af
   5F40 C1            [10]  879 	pop	bc
                            880 ;src/gui/gui.c:127: if(iSelect ==0)
   5F41 78            [ 4]  881 	ld	a,b
   5F42 B7            [ 4]  882 	or	a, a
   5F43 20 03         [12]  883 	jr	NZ,00102$
                            884 ;src/gui/gui.c:128: iSelect = nbEntry-1;
   5F45 41            [ 4]  885 	ld	b,c
   5F46 18 01         [12]  886 	jr	00103$
   5F48                     887 00102$:
                            888 ;src/gui/gui.c:130: iSelect--;
   5F48 05            [ 4]  889 	dec	b
   5F49                     890 00103$:
                            891 ;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
   5F49 C5            [11]  892 	push	bc
   5F4A C5            [11]  893 	push	bc
   5F4B 33            [ 6]  894 	inc	sp
   5F4C DD 7E 06      [19]  895 	ld	a,6 (ix)
   5F4F F5            [11]  896 	push	af
   5F50 33            [ 6]  897 	inc	sp
   5F51 DD 6E 04      [19]  898 	ld	l,4 (ix)
   5F54 DD 66 05      [19]  899 	ld	h,5 (ix)
   5F57 E5            [11]  900 	push	hl
   5F58 CD A3 5D      [17]  901 	call	_drawMenuEntry
   5F5B F1            [10]  902 	pop	af
   5F5C F1            [10]  903 	pop	af
   5F5D C1            [10]  904 	pop	bc
   5F5E                     905 00105$:
                            906 ;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
   5F5E C5            [11]  907 	push	bc
   5F5F 21 00 04      [10]  908 	ld	hl,#0x0400
   5F62 CD 85 73      [17]  909 	call	_cpct_isKeyPressed
   5F65 5D            [ 4]  910 	ld	e,l
   5F66 C1            [10]  911 	pop	bc
   5F67 7B            [ 4]  912 	ld	a,e
   5F68 B7            [ 4]  913 	or	a, a
   5F69 28 48         [12]  914 	jr	Z,00112$
                            915 ;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
   5F6B C5            [11]  916 	push	bc
   5F6C C5            [11]  917 	push	bc
   5F6D 33            [ 6]  918 	inc	sp
   5F6E DD 7E 06      [19]  919 	ld	a,6 (ix)
   5F71 F5            [11]  920 	push	af
   5F72 33            [ 6]  921 	inc	sp
   5F73 DD 6E 04      [19]  922 	ld	l,4 (ix)
   5F76 DD 66 05      [19]  923 	ld	h,5 (ix)
   5F79 E5            [11]  924 	push	hl
   5F7A CD E9 5C      [17]  925 	call	_EraseMenuEntry
   5F7D F1            [10]  926 	pop	af
   5F7E F1            [10]  927 	pop	af
   5F7F C1            [10]  928 	pop	bc
                            929 ;src/gui/gui.c:139: if(iSelect == nbEntry-1)
   5F80 DD 5E 06      [19]  930 	ld	e,6 (ix)
   5F83 16 00         [ 7]  931 	ld	d,#0x00
   5F85 1B            [ 6]  932 	dec	de
   5F86 DD 70 FE      [19]  933 	ld	-2 (ix),b
   5F89 DD 36 FF 00   [19]  934 	ld	-1 (ix),#0x00
   5F8D 7B            [ 4]  935 	ld	a,e
   5F8E DD 96 FE      [19]  936 	sub	a, -2 (ix)
   5F91 20 0A         [12]  937 	jr	NZ,00107$
   5F93 7A            [ 4]  938 	ld	a,d
   5F94 DD 96 FF      [19]  939 	sub	a, -1 (ix)
   5F97 20 04         [12]  940 	jr	NZ,00107$
                            941 ;src/gui/gui.c:140: iSelect = 0;
   5F99 06 00         [ 7]  942 	ld	b,#0x00
   5F9B 18 01         [12]  943 	jr	00108$
   5F9D                     944 00107$:
                            945 ;src/gui/gui.c:142: iSelect++;
   5F9D 04            [ 4]  946 	inc	b
   5F9E                     947 00108$:
                            948 ;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
   5F9E C5            [11]  949 	push	bc
   5F9F C5            [11]  950 	push	bc
   5FA0 33            [ 6]  951 	inc	sp
   5FA1 DD 7E 06      [19]  952 	ld	a,6 (ix)
   5FA4 F5            [11]  953 	push	af
   5FA5 33            [ 6]  954 	inc	sp
   5FA6 DD 6E 04      [19]  955 	ld	l,4 (ix)
   5FA9 DD 66 05      [19]  956 	ld	h,5 (ix)
   5FAC E5            [11]  957 	push	hl
   5FAD CD A3 5D      [17]  958 	call	_drawMenuEntry
   5FB0 F1            [10]  959 	pop	af
   5FB1 F1            [10]  960 	pop	af
   5FB2 C1            [10]  961 	pop	bc
   5FB3                     962 00112$:
                            963 ;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
   5FB3 C5            [11]  964 	push	bc
   5FB4 21 02 04      [10]  965 	ld	hl,#0x0402
   5FB7 CD 85 73      [17]  966 	call	_cpct_isKeyPressed
   5FBA 7D            [ 4]  967 	ld	a,l
   5FBB C1            [10]  968 	pop	bc
   5FBC B7            [ 4]  969 	or	a, a
   5FBD CA 1D 5F      [10]  970 	jp	Z,00111$
                            971 ;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
   5FC0 21 B0 36      [10]  972 	ld	hl,#0x36B0
   5FC3                     973 00117$:
   5FC3 EB            [ 4]  974 	ex	de,hl
   5FC4 1B            [ 6]  975 	dec	de
   5FC5 6B            [ 4]  976 	ld	l, e
   5FC6 7A            [ 4]  977 	ld	a,d
   5FC7 67            [ 4]  978 	ld	h,a
   5FC8 B3            [ 4]  979 	or	a,e
   5FC9 20 F8         [12]  980 	jr	NZ,00117$
                            981 ;src/gui/gui.c:152: return iSelect;
   5FCB 68            [ 4]  982 	ld	l,b
   5FCC DD F9         [10]  983 	ld	sp, ix
   5FCE DD E1         [14]  984 	pop	ix
   5FD0 C9            [10]  985 	ret
                            986 ;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
                            987 ;	---------------------------------
                            988 ; Function drawWindow
                            989 ; ---------------------------------
   5FD1                     990 _drawWindow::
   5FD1 DD E5         [15]  991 	push	ix
   5FD3 DD 21 00 00   [14]  992 	ld	ix,#0
   5FD7 DD 39         [15]  993 	add	ix,sp
   5FD9 21 F5 FF      [10]  994 	ld	hl,#-11
   5FDC 39            [11]  995 	add	hl,sp
   5FDD F9            [ 6]  996 	ld	sp,hl
                            997 ;src/gui/gui.c:166: u8 valueReturn=0;
   5FDE DD 36 F5 00   [19]  998 	ld	-11 (ix),#0x00
                            999 ;src/gui/gui.c:169: if(button == 0)
   5FE2 DD 7E 07      [19] 1000 	ld	a,7 (ix)
   5FE5 B7            [ 4] 1001 	or	a, a
   5FE6 20 05         [12] 1002 	jr	NZ,00102$
                           1003 ;src/gui/gui.c:170: buttonTxt = "<OK>";
   5FE8 11 5A 61      [10] 1004 	ld	de,#___str_0
   5FEB 18 03         [12] 1005 	jr	00103$
   5FED                    1006 00102$:
                           1007 ;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
   5FED 11 5F 61      [10] 1008 	ld	de,#___str_1+0
   5FF0                    1009 00103$:
                           1010 ;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
   5FF0 DD 4E 06      [19] 1011 	ld	c,6 (ix)
   5FF3 06 00         [ 7] 1012 	ld	b,#0x00
   5FF5 03            [ 6] 1013 	inc	bc
   5FF6 03            [ 6] 1014 	inc	bc
   5FF7 69            [ 4] 1015 	ld	l, c
   5FF8 60            [ 4] 1016 	ld	h, b
   5FF9 29            [11] 1017 	add	hl, hl
   5FFA 09            [11] 1018 	add	hl, bc
   5FFB 29            [11] 1019 	add	hl, hl
   5FFC 29            [11] 1020 	add	hl, hl
   5FFD C5            [11] 1021 	push	bc
   5FFE D5            [11] 1022 	push	de
   5FFF E5            [11] 1023 	push	hl
   6000 21 32 00      [10] 1024 	ld	hl,#0x0032
   6003 E5            [11] 1025 	push	hl
   6004 CD 09 5C      [17] 1026 	call	_drawBoxM2
   6007 F1            [10] 1027 	pop	af
   6008 F1            [10] 1028 	pop	af
   6009 D1            [10] 1029 	pop	de
   600A C1            [10] 1030 	pop	bc
                           1031 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   600B 69            [ 4] 1032 	ld	l, c
   600C 60            [ 4] 1033 	ld	h, b
   600D 29            [11] 1034 	add	hl, hl
   600E 29            [11] 1035 	add	hl, hl
   600F 09            [11] 1036 	add	hl, bc
   6010 29            [11] 1037 	add	hl, hl
   6011 3E CA         [ 7] 1038 	ld	a,#0xCA
   6013 95            [ 4] 1039 	sub	a, l
   6014 DD 77 FD      [19] 1040 	ld	-3 (ix),a
   6017 3E 00         [ 7] 1041 	ld	a,#0x00
   6019 9C            [ 4] 1042 	sbc	a, h
   601A DD 77 FE      [19] 1043 	ld	-2 (ix), a
   601D 07            [ 4] 1044 	rlca
   601E E6 01         [ 7] 1045 	and	a,#0x01
   6020 DD 77 FF      [19] 1046 	ld	-1 (ix),a
   6023 DD 36 F6 00   [19] 1047 	ld	-10 (ix),#0x00
   6027 DD 36 FC 00   [19] 1048 	ld	-4 (ix),#0x00
   602B                    1049 00114$:
                           1050 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   602B DD 7E FD      [19] 1051 	ld	a,-3 (ix)
   602E C6 01         [ 7] 1052 	add	a, #0x01
   6030 DD 77 FA      [19] 1053 	ld	-6 (ix),a
   6033 DD 7E FE      [19] 1054 	ld	a,-2 (ix)
   6036 CE 00         [ 7] 1055 	adc	a, #0x00
   6038 DD 77 FB      [19] 1056 	ld	-5 (ix),a
                           1057 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   603B DD 7E F6      [19] 1058 	ld	a,-10 (ix)
   603E DD 96 06      [19] 1059 	sub	a, 6 (ix)
   6041 D2 CD 60      [10] 1060 	jp	NC,00104$
                           1061 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   6044 DD 6E FD      [19] 1062 	ld	l,-3 (ix)
   6047 DD 66 FE      [19] 1063 	ld	h,-2 (ix)
   604A DD 7E FF      [19] 1064 	ld	a,-1 (ix)
   604D B7            [ 4] 1065 	or	a, a
   604E 28 06         [12] 1066 	jr	Z,00118$
   6050 DD 6E FA      [19] 1067 	ld	l,-6 (ix)
   6053 DD 66 FB      [19] 1068 	ld	h,-5 (ix)
   6056                    1069 00118$:
   6056 CB 2C         [ 8] 1070 	sra	h
   6058 CB 1D         [ 8] 1071 	rr	l
   605A DD 66 FC      [19] 1072 	ld	h,-4 (ix)
   605D 7D            [ 4] 1073 	ld	a,l
   605E 84            [ 4] 1074 	add	a, h
   605F DD 77 F9      [19] 1075 	ld	-7 (ix),a
   6062 DD 6E F6      [19] 1076 	ld	l,-10 (ix)
   6065 26 00         [ 7] 1077 	ld	h,#0x00
   6067 29            [11] 1078 	add	hl, hl
   6068 45            [ 4] 1079 	ld	b,l
   6069 4C            [ 4] 1080 	ld	c,h
   606A DD 7E 04      [19] 1081 	ld	a,4 (ix)
   606D 80            [ 4] 1082 	add	a, b
   606E DD 77 F7      [19] 1083 	ld	-9 (ix),a
   6071 DD 7E 05      [19] 1084 	ld	a,5 (ix)
   6074 89            [ 4] 1085 	adc	a, c
   6075 DD 77 F8      [19] 1086 	ld	-8 (ix),a
   6078 DD 6E F7      [19] 1087 	ld	l,-9 (ix)
   607B DD 66 F8      [19] 1088 	ld	h,-8 (ix)
   607E 4E            [ 7] 1089 	ld	c,(hl)
   607F 23            [ 6] 1090 	inc	hl
   6080 46            [ 7] 1091 	ld	b,(hl)
   6081 D5            [11] 1092 	push	de
   6082 C5            [11] 1093 	push	bc
   6083 CD FE 78      [17] 1094 	call	_strlen
   6086 F1            [10] 1095 	pop	af
   6087 D1            [10] 1096 	pop	de
   6088 3E 52         [ 7] 1097 	ld	a,#0x52
   608A 95            [ 4] 1098 	sub	a, l
   608B 6F            [ 4] 1099 	ld	l,a
   608C 3E 00         [ 7] 1100 	ld	a,#0x00
   608E 9C            [ 4] 1101 	sbc	a, h
   608F 67            [ 4] 1102 	ld	h,a
   6090 CB 3C         [ 8] 1103 	srl	h
   6092 CB 1D         [ 8] 1104 	rr	l
   6094 45            [ 4] 1105 	ld	b,l
   6095 D5            [11] 1106 	push	de
   6096 DD 7E F9      [19] 1107 	ld	a,-7 (ix)
   6099 F5            [11] 1108 	push	af
   609A 33            [ 6] 1109 	inc	sp
   609B C5            [11] 1110 	push	bc
   609C 33            [ 6] 1111 	inc	sp
   609D 21 00 C0      [10] 1112 	ld	hl,#0xC000
   60A0 E5            [11] 1113 	push	hl
   60A1 CD 0B 7A      [17] 1114 	call	_cpct_getScreenPtr
   60A4 D1            [10] 1115 	pop	de
   60A5 E5            [11] 1116 	push	hl
   60A6 FD E1         [14] 1117 	pop	iy
                           1118 ;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
   60A8 DD 6E F7      [19] 1119 	ld	l,-9 (ix)
   60AB DD 66 F8      [19] 1120 	ld	h,-8 (ix)
   60AE 4E            [ 7] 1121 	ld	c,(hl)
   60AF 23            [ 6] 1122 	inc	hl
   60B0 46            [ 7] 1123 	ld	b,(hl)
   60B1 D5            [11] 1124 	push	de
   60B2 AF            [ 4] 1125 	xor	a, a
   60B3 F5            [11] 1126 	push	af
   60B4 33            [ 6] 1127 	inc	sp
   60B5 FD E5         [15] 1128 	push	iy
   60B7 C5            [11] 1129 	push	bc
   60B8 CD BC 73      [17] 1130 	call	_cpct_drawStringM2
   60BB F1            [10] 1131 	pop	af
   60BC F1            [10] 1132 	pop	af
   60BD 33            [ 6] 1133 	inc	sp
   60BE D1            [10] 1134 	pop	de
                           1135 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   60BF DD 7E FC      [19] 1136 	ld	a,-4 (ix)
   60C2 C6 0A         [ 7] 1137 	add	a, #0x0A
   60C4 DD 77 FC      [19] 1138 	ld	-4 (ix),a
   60C7 DD 34 F6      [23] 1139 	inc	-10 (ix)
   60CA C3 2B 60      [10] 1140 	jp	00114$
   60CD                    1141 00104$:
                           1142 ;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   60CD DD 46 FD      [19] 1143 	ld	b,-3 (ix)
   60D0 DD 66 FE      [19] 1144 	ld	h,-2 (ix)
   60D3 DD 7E FF      [19] 1145 	ld	a,-1 (ix)
   60D6 B7            [ 4] 1146 	or	a, a
   60D7 28 06         [12] 1147 	jr	Z,00119$
   60D9 DD 46 FA      [19] 1148 	ld	b,-6 (ix)
   60DC DD 66 FB      [19] 1149 	ld	h,-5 (ix)
   60DF                    1150 00119$:
   60DF CB 2C         [ 8] 1151 	sra	h
   60E1 CB 18         [ 8] 1152 	rr	b
   60E3 DD 4E 06      [19] 1153 	ld	c,6 (ix)
   60E6 0C            [ 4] 1154 	inc	c
   60E7 79            [ 4] 1155 	ld	a,c
   60E8 87            [ 4] 1156 	add	a, a
   60E9 87            [ 4] 1157 	add	a, a
   60EA 81            [ 4] 1158 	add	a, c
   60EB 87            [ 4] 1159 	add	a, a
   60EC 67            [ 4] 1160 	ld	h, a
   60ED 80            [ 4] 1161 	add	a,b
   60EE 47            [ 4] 1162 	ld	b,a
   60EF C5            [11] 1163 	push	bc
   60F0 D5            [11] 1164 	push	de
   60F1 D5            [11] 1165 	push	de
   60F2 CD FE 78      [17] 1166 	call	_strlen
   60F5 F1            [10] 1167 	pop	af
   60F6 D1            [10] 1168 	pop	de
   60F7 C1            [10] 1169 	pop	bc
   60F8 3E 52         [ 7] 1170 	ld	a,#0x52
   60FA 95            [ 4] 1171 	sub	a, l
   60FB 6F            [ 4] 1172 	ld	l,a
   60FC 3E 00         [ 7] 1173 	ld	a,#0x00
   60FE 9C            [ 4] 1174 	sbc	a, h
   60FF 67            [ 4] 1175 	ld	h,a
   6100 CB 3C         [ 8] 1176 	srl	h
   6102 CB 1D         [ 8] 1177 	rr	l
   6104 7D            [ 4] 1178 	ld	a,l
   6105 D5            [11] 1179 	push	de
   6106 C5            [11] 1180 	push	bc
   6107 33            [ 6] 1181 	inc	sp
   6108 F5            [11] 1182 	push	af
   6109 33            [ 6] 1183 	inc	sp
   610A 21 00 C0      [10] 1184 	ld	hl,#0xC000
   610D E5            [11] 1185 	push	hl
   610E CD 0B 7A      [17] 1186 	call	_cpct_getScreenPtr
   6111 D1            [10] 1187 	pop	de
                           1188 ;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
   6112 4D            [ 4] 1189 	ld	c, l
   6113 44            [ 4] 1190 	ld	b, h
   6114 AF            [ 4] 1191 	xor	a, a
   6115 F5            [11] 1192 	push	af
   6116 33            [ 6] 1193 	inc	sp
   6117 C5            [11] 1194 	push	bc
   6118 D5            [11] 1195 	push	de
   6119 CD BC 73      [17] 1196 	call	_cpct_drawStringM2
   611C F1            [10] 1197 	pop	af
   611D F1            [10] 1198 	pop	af
   611E 33            [ 6] 1199 	inc	sp
                           1200 ;src/gui/gui.c:186: do{
   611F                    1201 00110$:
                           1202 ;src/gui/gui.c:187: cpct_scanKeyboard(); 
   611F CD 2B 7A      [17] 1203 	call	_cpct_scanKeyboard
                           1204 ;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
   6122 21 02 04      [10] 1205 	ld	hl,#0x0402
   6125 CD 85 73      [17] 1206 	call	_cpct_isKeyPressed
   6128 7D            [ 4] 1207 	ld	a,l
   6129 B7            [ 4] 1208 	or	a, a
   612A 28 04         [12] 1209 	jr	Z,00106$
                           1210 ;src/gui/gui.c:190: valueReturn=1;
   612C DD 36 F5 01   [19] 1211 	ld	-11 (ix),#0x01
   6130                    1212 00106$:
                           1213 ;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
   6130 21 08 04      [10] 1214 	ld	hl,#0x0408
   6133 CD 85 73      [17] 1215 	call	_cpct_isKeyPressed
   6136 7D            [ 4] 1216 	ld	a,l
   6137 B7            [ 4] 1217 	or	a, a
   6138 28 04         [12] 1218 	jr	Z,00111$
                           1219 ;src/gui/gui.c:193: valueReturn=0;
   613A DD 36 F5 00   [19] 1220 	ld	-11 (ix),#0x00
   613E                    1221 00111$:
                           1222 ;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   613E 21 02 04      [10] 1223 	ld	hl,#0x0402
   6141 CD 85 73      [17] 1224 	call	_cpct_isKeyPressed
   6144 7D            [ 4] 1225 	ld	a,l
   6145 B7            [ 4] 1226 	or	a, a
   6146 20 0A         [12] 1227 	jr	NZ,00112$
   6148 21 08 04      [10] 1228 	ld	hl,#0x0408
   614B CD 85 73      [17] 1229 	call	_cpct_isKeyPressed
   614E 7D            [ 4] 1230 	ld	a,l
   614F B7            [ 4] 1231 	or	a, a
   6150 28 CD         [12] 1232 	jr	Z,00110$
   6152                    1233 00112$:
                           1234 ;src/gui/gui.c:197: return valueReturn;
   6152 DD 6E F5      [19] 1235 	ld	l,-11 (ix)
   6155 DD F9         [10] 1236 	ld	sp, ix
   6157 DD E1         [14] 1237 	pop	ix
   6159 C9            [10] 1238 	ret
   615A                    1239 ___str_0:
   615A 3C 4F 4B 3E        1240 	.ascii "<OK>"
   615E 00                 1241 	.db 0x00
   615F                    1242 ___str_1:
   615F 3C 4F 4B 3E 20 20  1243 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   616D 00                 1244 	.db 0x00
                           1245 	.area _CODE
                           1246 	.area _INITIALIZER
                           1247 	.area _CABS (ABS)
