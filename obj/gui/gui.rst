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
   5B66                      66 _putM0::
                             67 ;src/gui/gui.c:5: cpct_setVideoMode(0);
   5B66 AF            [ 4]   68 	xor	a, a
   5B67 F5            [11]   69 	push	af
   5B68 33            [ 6]   70 	inc	sp
   5B69 CD 69 79      [17]   71 	call	_cpct_setVideoMode
   5B6C 33            [ 6]   72 	inc	sp
                             73 ;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
   5B6D 21 2E 62      [10]   74 	ld	hl,#_paletteTrains
   5B70 01 10 00      [10]   75 	ld	bc,#0x0010
   5B73 C5            [11]   76 	push	bc
   5B74 E5            [11]   77 	push	hl
   5B75 CD 2E 74      [17]   78 	call	_cpct_setPalette
   5B78 C9            [10]   79 	ret
                             80 ;src/gui/gui.c:10: void putM1(void)
                             81 ;	---------------------------------
                             82 ; Function putM1
                             83 ; ---------------------------------
   5B79                      84 _putM1::
                             85 ;src/gui/gui.c:12: cpct_setVideoMode(1);
   5B79 3E 01         [ 7]   86 	ld	a,#0x01
   5B7B F5            [11]   87 	push	af
   5B7C 33            [ 6]   88 	inc	sp
   5B7D CD 69 79      [17]   89 	call	_cpct_setVideoMode
   5B80 33            [ 6]   90 	inc	sp
                             91 ;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
   5B81 21 3E 62      [10]   92 	ld	hl,#_paletteMenusM1
   5B84 01 04 00      [10]   93 	ld	bc,#0x0004
   5B87 C5            [11]   94 	push	bc
   5B88 E5            [11]   95 	push	hl
   5B89 CD 2E 74      [17]   96 	call	_cpct_setPalette
   5B8C C9            [10]   97 	ret
                             98 ;src/gui/gui.c:17: void putM2(void)
                             99 ;	---------------------------------
                            100 ; Function putM2
                            101 ; ---------------------------------
   5B8D                     102 _putM2::
                            103 ;src/gui/gui.c:19: cpct_setVideoMode(2);
   5B8D 3E 02         [ 7]  104 	ld	a,#0x02
   5B8F F5            [11]  105 	push	af
   5B90 33            [ 6]  106 	inc	sp
   5B91 CD 69 79      [17]  107 	call	_cpct_setVideoMode
   5B94 33            [ 6]  108 	inc	sp
                            109 ;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
   5B95 21 42 62      [10]  110 	ld	hl,#_paletteMenusM2
   5B98 01 02 00      [10]  111 	ld	bc,#0x0002
   5B9B C5            [11]  112 	push	bc
   5B9C E5            [11]  113 	push	hl
   5B9D CD 2E 74      [17]  114 	call	_cpct_setPalette
                            115 ;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
   5BA0 21 00 40      [10]  116 	ld	hl,#0x4000
   5BA3 E5            [11]  117 	push	hl
   5BA4 3E FF         [ 7]  118 	ld	a,#0xFF
   5BA6 F5            [11]  119 	push	af
   5BA7 33            [ 6]  120 	inc	sp
   5BA8 26 C0         [ 7]  121 	ld	h, #0xC0
   5BAA E5            [11]  122 	push	hl
   5BAB CD 97 79      [17]  123 	call	_cpct_memset
   5BAE C9            [10]  124 	ret
                            125 ;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
                            126 ;	---------------------------------
                            127 ; Function drawBoxM0
                            128 ; ---------------------------------
   5BAF                     129 _drawBoxM0::
   5BAF DD E5         [15]  130 	push	ix
   5BB1 DD 21 00 00   [14]  131 	ld	ix,#0
   5BB5 DD 39         [15]  132 	add	ix,sp
   5BB7 21 F9 FF      [10]  133 	ld	hl,#-7
   5BBA 39            [11]  134 	add	hl,sp
   5BBB F9            [ 6]  135 	ld	sp,hl
                            136 ;src/gui/gui.c:30: int left = (80-width_)/2;
   5BBC 3E 50         [ 7]  137 	ld	a,#0x50
   5BBE DD 96 04      [19]  138 	sub	a, 4 (ix)
   5BC1 57            [ 4]  139 	ld	d,a
   5BC2 3E 00         [ 7]  140 	ld	a,#0x00
   5BC4 DD 9E 05      [19]  141 	sbc	a, 5 (ix)
   5BC7 5F            [ 4]  142 	ld	e,a
   5BC8 6A            [ 4]  143 	ld	l, d
   5BC9 63            [ 4]  144 	ld	h, e
   5BCA CB 7B         [ 8]  145 	bit	7, e
   5BCC 28 03         [12]  146 	jr	Z,00103$
   5BCE 6A            [ 4]  147 	ld	l, d
   5BCF 63            [ 4]  148 	ld	h, e
   5BD0 23            [ 6]  149 	inc	hl
   5BD1                     150 00103$:
   5BD1 DD 75 F9      [19]  151 	ld	-7 (ix),l
   5BD4 DD 74 FA      [19]  152 	ld	-6 (ix),h
   5BD7 DD CB FA 2E   [23]  153 	sra	-6 (ix)
   5BDB DD CB F9 1E   [23]  154 	rr	-7 (ix)
                            155 ;src/gui/gui.c:31: int top = (200-height_)/2;
   5BDF 3E C8         [ 7]  156 	ld	a,#0xC8
   5BE1 DD 96 06      [19]  157 	sub	a, 6 (ix)
   5BE4 4F            [ 4]  158 	ld	c,a
   5BE5 3E 00         [ 7]  159 	ld	a,#0x00
   5BE7 DD 9E 07      [19]  160 	sbc	a, 7 (ix)
   5BEA 47            [ 4]  161 	ld	b,a
   5BEB 61            [ 4]  162 	ld	h,c
   5BEC 50            [ 4]  163 	ld	d,b
   5BED CB 78         [ 8]  164 	bit	7, b
   5BEF 28 03         [12]  165 	jr	Z,00104$
   5BF1 03            [ 6]  166 	inc	bc
   5BF2 61            [ 4]  167 	ld	h,c
   5BF3 50            [ 4]  168 	ld	d,b
   5BF4                     169 00104$:
   5BF4 5C            [ 4]  170 	ld	e, h
   5BF5 CB 2A         [ 8]  171 	sra	d
   5BF7 CB 1B         [ 8]  172 	rr	e
                            173 ;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
   5BF9 D5            [11]  174 	push	de
   5BFA 21 09 09      [10]  175 	ld	hl,#0x0909
   5BFD E5            [11]  176 	push	hl
   5BFE CD 7B 79      [17]  177 	call	_cpct_px2byteM0
   5C01 65            [ 4]  178 	ld	h,l
   5C02 01 00 40      [10]  179 	ld	bc,#0x4000
   5C05 C5            [11]  180 	push	bc
   5C06 E5            [11]  181 	push	hl
   5C07 33            [ 6]  182 	inc	sp
   5C08 21 00 C0      [10]  183 	ld	hl,#0xC000
   5C0B E5            [11]  184 	push	hl
   5C0C CD 97 79      [17]  185 	call	_cpct_memset
   5C0F D1            [10]  186 	pop	de
                            187 ;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   5C10 DD 73 FE      [19]  188 	ld	-2 (ix), e
   5C13 63            [ 4]  189 	ld	h, e
   5C14 24            [ 4]  190 	inc	h
   5C15 24            [ 4]  191 	inc	h
   5C16 24            [ 4]  192 	inc	h
   5C17 24            [ 4]  193 	inc	h
   5C18 DD 7E F9      [19]  194 	ld	a,-7 (ix)
   5C1B 3C            [ 4]  195 	inc	a
   5C1C DD 77 FF      [19]  196 	ld	-1 (ix),a
   5C1F D5            [11]  197 	push	de
   5C20 E5            [11]  198 	push	hl
   5C21 33            [ 6]  199 	inc	sp
   5C22 DD 7E FF      [19]  200 	ld	a,-1 (ix)
   5C25 F5            [11]  201 	push	af
   5C26 33            [ 6]  202 	inc	sp
   5C27 21 00 C0      [10]  203 	ld	hl,#0xC000
   5C2A E5            [11]  204 	push	hl
   5C2B CD CB 7A      [17]  205 	call	_cpct_getScreenPtr
   5C2E D1            [10]  206 	pop	de
   5C2F 4D            [ 4]  207 	ld	c, l
   5C30 44            [ 4]  208 	ld	b, h
                            209 ;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   5C31 DD 7E 06      [19]  210 	ld	a,6 (ix)
   5C34 DD 77 FB      [19]  211 	ld	-5 (ix),a
   5C37 DD 7E 04      [19]  212 	ld	a,4 (ix)
   5C3A DD 77 FD      [19]  213 	ld	-3 (ix),a
   5C3D C5            [11]  214 	push	bc
   5C3E D5            [11]  215 	push	de
   5C3F 21 02 02      [10]  216 	ld	hl,#0x0202
   5C42 E5            [11]  217 	push	hl
   5C43 CD 7B 79      [17]  218 	call	_cpct_px2byteM0
   5C46 DD 75 FC      [19]  219 	ld	-4 (ix),l
   5C49 D1            [10]  220 	pop	de
   5C4A C1            [10]  221 	pop	bc
   5C4B D5            [11]  222 	push	de
   5C4C DD 66 FB      [19]  223 	ld	h,-5 (ix)
   5C4F DD 6E FD      [19]  224 	ld	l,-3 (ix)
   5C52 E5            [11]  225 	push	hl
   5C53 DD 7E FC      [19]  226 	ld	a,-4 (ix)
   5C56 F5            [11]  227 	push	af
   5C57 33            [ 6]  228 	inc	sp
   5C58 C5            [11]  229 	push	bc
   5C59 CD 12 7A      [17]  230 	call	_cpct_drawSolidBox
   5C5C F1            [10]  231 	pop	af
   5C5D F1            [10]  232 	pop	af
   5C5E 33            [ 6]  233 	inc	sp
   5C5F D1            [10]  234 	pop	de
                            235 ;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5C60 63            [ 4]  236 	ld	h,e
   5C61 DD 56 F9      [19]  237 	ld	d,-7 (ix)
   5C64 E5            [11]  238 	push	hl
   5C65 33            [ 6]  239 	inc	sp
   5C66 D5            [11]  240 	push	de
   5C67 33            [ 6]  241 	inc	sp
   5C68 21 00 C0      [10]  242 	ld	hl,#0xC000
   5C6B E5            [11]  243 	push	hl
   5C6C CD CB 7A      [17]  244 	call	_cpct_getScreenPtr
                            245 ;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   5C6F E5            [11]  246 	push	hl
   5C70 21 06 06      [10]  247 	ld	hl,#0x0606
   5C73 E5            [11]  248 	push	hl
   5C74 CD 7B 79      [17]  249 	call	_cpct_px2byteM0
   5C77 45            [ 4]  250 	ld	b,l
   5C78 D1            [10]  251 	pop	de
   5C79 DD 66 FB      [19]  252 	ld	h,-5 (ix)
   5C7C DD 6E FD      [19]  253 	ld	l,-3 (ix)
   5C7F E5            [11]  254 	push	hl
   5C80 C5            [11]  255 	push	bc
   5C81 33            [ 6]  256 	inc	sp
   5C82 D5            [11]  257 	push	de
   5C83 CD 12 7A      [17]  258 	call	_cpct_drawSolidBox
   5C86 F1            [10]  259 	pop	af
   5C87 F1            [10]  260 	pop	af
   5C88 33            [ 6]  261 	inc	sp
                            262 ;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   5C89 DD 66 FE      [19]  263 	ld	h,-2 (ix)
   5C8C 24            [ 4]  264 	inc	h
   5C8D 24            [ 4]  265 	inc	h
   5C8E E5            [11]  266 	push	hl
   5C8F 33            [ 6]  267 	inc	sp
   5C90 DD 7E FF      [19]  268 	ld	a,-1 (ix)
   5C93 F5            [11]  269 	push	af
   5C94 33            [ 6]  270 	inc	sp
   5C95 21 00 C0      [10]  271 	ld	hl,#0xC000
   5C98 E5            [11]  272 	push	hl
   5C99 CD CB 7A      [17]  273 	call	_cpct_getScreenPtr
   5C9C EB            [ 4]  274 	ex	de,hl
                            275 ;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   5C9D DD 7E 06      [19]  276 	ld	a,6 (ix)
   5CA0 C6 FC         [ 7]  277 	add	a,#0xFC
   5CA2 4F            [ 4]  278 	ld	c,a
   5CA3 DD 46 04      [19]  279 	ld	b,4 (ix)
   5CA6 05            [ 4]  280 	dec	b
   5CA7 05            [ 4]  281 	dec	b
   5CA8 C5            [11]  282 	push	bc
   5CA9 D5            [11]  283 	push	de
   5CAA 21 00 00      [10]  284 	ld	hl,#0x0000
   5CAD E5            [11]  285 	push	hl
   5CAE CD 7B 79      [17]  286 	call	_cpct_px2byteM0
   5CB1 DD 75 FC      [19]  287 	ld	-4 (ix),l
   5CB4 D1            [10]  288 	pop	de
   5CB5 C1            [10]  289 	pop	bc
   5CB6 79            [ 4]  290 	ld	a,c
   5CB7 F5            [11]  291 	push	af
   5CB8 33            [ 6]  292 	inc	sp
   5CB9 C5            [11]  293 	push	bc
   5CBA 33            [ 6]  294 	inc	sp
   5CBB DD 7E FC      [19]  295 	ld	a,-4 (ix)
   5CBE F5            [11]  296 	push	af
   5CBF 33            [ 6]  297 	inc	sp
   5CC0 D5            [11]  298 	push	de
   5CC1 CD 12 7A      [17]  299 	call	_cpct_drawSolidBox
   5CC4 DD F9         [10]  300 	ld	sp,ix
   5CC6 DD E1         [14]  301 	pop	ix
   5CC8 C9            [10]  302 	ret
                            303 ;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
                            304 ;	---------------------------------
                            305 ; Function drawBoxM2
                            306 ; ---------------------------------
   5CC9                     307 _drawBoxM2::
   5CC9 DD E5         [15]  308 	push	ix
   5CCB DD 21 00 00   [14]  309 	ld	ix,#0
   5CCF DD 39         [15]  310 	add	ix,sp
   5CD1 21 FA FF      [10]  311 	ld	hl,#-6
   5CD4 39            [11]  312 	add	hl,sp
   5CD5 F9            [ 6]  313 	ld	sp,hl
                            314 ;src/gui/gui.c:54: int left = (80-width_)/2;
   5CD6 3E 50         [ 7]  315 	ld	a,#0x50
   5CD8 DD 96 04      [19]  316 	sub	a, 4 (ix)
   5CDB 4F            [ 4]  317 	ld	c,a
   5CDC 3E 00         [ 7]  318 	ld	a,#0x00
   5CDE DD 9E 05      [19]  319 	sbc	a, 5 (ix)
   5CE1 47            [ 4]  320 	ld	b,a
   5CE2 61            [ 4]  321 	ld	h,c
   5CE3 50            [ 4]  322 	ld	d,b
   5CE4 CB 78         [ 8]  323 	bit	7, b
   5CE6 28 03         [12]  324 	jr	Z,00103$
   5CE8 03            [ 6]  325 	inc	bc
   5CE9 61            [ 4]  326 	ld	h,c
   5CEA 50            [ 4]  327 	ld	d,b
   5CEB                     328 00103$:
   5CEB 5C            [ 4]  329 	ld	e, h
   5CEC CB 2A         [ 8]  330 	sra	d
   5CEE CB 1B         [ 8]  331 	rr	e
                            332 ;src/gui/gui.c:55: int top = (200-height_)/2;
   5CF0 3E C8         [ 7]  333 	ld	a,#0xC8
   5CF2 DD 96 06      [19]  334 	sub	a, 6 (ix)
   5CF5 4F            [ 4]  335 	ld	c,a
   5CF6 3E 00         [ 7]  336 	ld	a,#0x00
   5CF8 DD 9E 07      [19]  337 	sbc	a, 7 (ix)
   5CFB 47            [ 4]  338 	ld	b,a
   5CFC 61            [ 4]  339 	ld	h,c
   5CFD 68            [ 4]  340 	ld	l,b
   5CFE CB 78         [ 8]  341 	bit	7, b
   5D00 28 03         [12]  342 	jr	Z,00104$
   5D02 03            [ 6]  343 	inc	bc
   5D03 61            [ 4]  344 	ld	h,c
   5D04 68            [ 4]  345 	ld	l,b
   5D05                     346 00104$:
   5D05 DD 74 FA      [19]  347 	ld	-6 (ix),h
   5D08 DD 75 FB      [19]  348 	ld	-5 (ix),l
   5D0B DD CB FB 2E   [23]  349 	sra	-5 (ix)
   5D0F DD CB FA 1E   [23]  350 	rr	-6 (ix)
                            351 ;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   5D13 DD 7E FA      [19]  352 	ld	a,-6 (ix)
   5D16 DD 77 FC      [19]  353 	ld	-4 (ix), a
   5D19 C6 05         [ 7]  354 	add	a, #0x05
   5D1B 4F            [ 4]  355 	ld	c,a
   5D1C DD 73 FD      [19]  356 	ld	-3 (ix), e
   5D1F 63            [ 4]  357 	ld	h, e
   5D20 24            [ 4]  358 	inc	h
   5D21 24            [ 4]  359 	inc	h
   5D22 D5            [11]  360 	push	de
   5D23 79            [ 4]  361 	ld	a,c
   5D24 F5            [11]  362 	push	af
   5D25 33            [ 6]  363 	inc	sp
   5D26 E5            [11]  364 	push	hl
   5D27 33            [ 6]  365 	inc	sp
   5D28 21 00 C0      [10]  366 	ld	hl,#0xC000
   5D2B E5            [11]  367 	push	hl
   5D2C CD CB 7A      [17]  368 	call	_cpct_getScreenPtr
   5D2F D1            [10]  369 	pop	de
                            370 ;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   5D30 DD 46 06      [19]  371 	ld	b,6 (ix)
   5D33 DD 4E 04      [19]  372 	ld	c,4 (ix)
   5D36 79            [ 4]  373 	ld	a,c
   5D37 C6 FF         [ 7]  374 	add	a,#0xFF
   5D39 DD 75 FE      [19]  375 	ld	-2 (ix),l
   5D3C DD 74 FF      [19]  376 	ld	-1 (ix),h
   5D3F C5            [11]  377 	push	bc
   5D40 D5            [11]  378 	push	de
   5D41 C5            [11]  379 	push	bc
   5D42 33            [ 6]  380 	inc	sp
   5D43 F5            [11]  381 	push	af
   5D44 33            [ 6]  382 	inc	sp
   5D45 AF            [ 4]  383 	xor	a, a
   5D46 F5            [11]  384 	push	af
   5D47 33            [ 6]  385 	inc	sp
   5D48 DD 6E FE      [19]  386 	ld	l,-2 (ix)
   5D4B DD 66 FF      [19]  387 	ld	h,-1 (ix)
   5D4E E5            [11]  388 	push	hl
   5D4F CD 12 7A      [17]  389 	call	_cpct_drawSolidBox
   5D52 F1            [10]  390 	pop	af
   5D53 F1            [10]  391 	pop	af
   5D54 33            [ 6]  392 	inc	sp
   5D55 D1            [10]  393 	pop	de
   5D56 C1            [10]  394 	pop	bc
                            395 ;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   5D57 DD 66 FA      [19]  396 	ld	h,-6 (ix)
   5D5A 53            [ 4]  397 	ld	d,e
   5D5B C5            [11]  398 	push	bc
   5D5C E5            [11]  399 	push	hl
   5D5D 33            [ 6]  400 	inc	sp
   5D5E D5            [11]  401 	push	de
   5D5F 33            [ 6]  402 	inc	sp
   5D60 21 00 C0      [10]  403 	ld	hl,#0xC000
   5D63 E5            [11]  404 	push	hl
   5D64 CD CB 7A      [17]  405 	call	_cpct_getScreenPtr
   5D67 C1            [10]  406 	pop	bc
                            407 ;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   5D68 DD 7E 04      [19]  408 	ld	a,4 (ix)
   5D6B EB            [ 4]  409 	ex	de,hl
   5D6C C5            [11]  410 	push	bc
   5D6D C5            [11]  411 	push	bc
   5D6E 33            [ 6]  412 	inc	sp
   5D6F 47            [ 4]  413 	ld	b,a
   5D70 0E F8         [ 7]  414 	ld	c,#0xF8
   5D72 C5            [11]  415 	push	bc
   5D73 D5            [11]  416 	push	de
   5D74 CD 12 7A      [17]  417 	call	_cpct_drawSolidBox
   5D77 F1            [10]  418 	pop	af
   5D78 F1            [10]  419 	pop	af
   5D79 33            [ 6]  420 	inc	sp
   5D7A C1            [10]  421 	pop	bc
                            422 ;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   5D7B DD 66 FC      [19]  423 	ld	h,-4 (ix)
   5D7E 24            [ 4]  424 	inc	h
   5D7F DD 56 FD      [19]  425 	ld	d,-3 (ix)
   5D82 14            [ 4]  426 	inc	d
   5D83 C5            [11]  427 	push	bc
   5D84 E5            [11]  428 	push	hl
   5D85 33            [ 6]  429 	inc	sp
   5D86 D5            [11]  430 	push	de
   5D87 33            [ 6]  431 	inc	sp
   5D88 21 00 C0      [10]  432 	ld	hl,#0xC000
   5D8B E5            [11]  433 	push	hl
   5D8C CD CB 7A      [17]  434 	call	_cpct_getScreenPtr
   5D8F C1            [10]  435 	pop	bc
   5D90 5D            [ 4]  436 	ld	e, l
   5D91 54            [ 4]  437 	ld	d, h
                            438 ;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   5D92 DD 66 06      [19]  439 	ld	h,6 (ix)
   5D95 25            [ 4]  440 	dec	h
   5D96 25            [ 4]  441 	dec	h
   5D97 79            [ 4]  442 	ld	a,c
   5D98 C6 FE         [ 7]  443 	add	a,#0xFE
   5D9A E5            [11]  444 	push	hl
   5D9B 33            [ 6]  445 	inc	sp
   5D9C 47            [ 4]  446 	ld	b,a
   5D9D 0E FF         [ 7]  447 	ld	c,#0xFF
   5D9F C5            [11]  448 	push	bc
   5DA0 D5            [11]  449 	push	de
   5DA1 CD 12 7A      [17]  450 	call	_cpct_drawSolidBox
   5DA4 DD F9         [10]  451 	ld	sp,ix
   5DA6 DD E1         [14]  452 	pop	ix
   5DA8 C9            [10]  453 	ret
                            454 ;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            455 ;	---------------------------------
                            456 ; Function EraseMenuEntry
                            457 ; ---------------------------------
   5DA9                     458 _EraseMenuEntry::
   5DA9 DD E5         [15]  459 	push	ix
   5DAB DD 21 00 00   [14]  460 	ld	ix,#0
   5DAF DD 39         [15]  461 	add	ix,sp
   5DB1 3B            [ 6]  462 	dec	sp
                            463 ;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5DB2 DD 4E 06      [19]  464 	ld	c,6 (ix)
   5DB5 06 00         [ 7]  465 	ld	b,#0x00
   5DB7 69            [ 4]  466 	ld	l, c
   5DB8 60            [ 4]  467 	ld	h, b
   5DB9 29            [11]  468 	add	hl, hl
   5DBA 29            [11]  469 	add	hl, hl
   5DBB 09            [11]  470 	add	hl, bc
   5DBC 29            [11]  471 	add	hl, hl
   5DBD 4D            [ 4]  472 	ld	c,l
   5DBE 44            [ 4]  473 	ld	b,h
   5DBF 3E C9         [ 7]  474 	ld	a,#0xC9
   5DC1 91            [ 4]  475 	sub	a, c
   5DC2 57            [ 4]  476 	ld	d,a
   5DC3 3E 00         [ 7]  477 	ld	a,#0x00
   5DC5 98            [ 4]  478 	sbc	a, b
   5DC6 5F            [ 4]  479 	ld	e,a
   5DC7 6A            [ 4]  480 	ld	l, d
   5DC8 63            [ 4]  481 	ld	h, e
   5DC9 CB 7B         [ 8]  482 	bit	7, e
   5DCB 28 03         [12]  483 	jr	Z,00103$
   5DCD 6A            [ 4]  484 	ld	l, d
   5DCE 63            [ 4]  485 	ld	h, e
   5DCF 23            [ 6]  486 	inc	hl
   5DD0                     487 00103$:
   5DD0 CB 2C         [ 8]  488 	sra	h
   5DD2 CB 1D         [ 8]  489 	rr	l
   5DD4 55            [ 4]  490 	ld	d,l
   5DD5 DD 7E 07      [19]  491 	ld	a,7 (ix)
   5DD8 5F            [ 4]  492 	ld	e,a
   5DD9 87            [ 4]  493 	add	a, a
   5DDA 87            [ 4]  494 	add	a, a
   5DDB 83            [ 4]  495 	add	a, e
   5DDC 87            [ 4]  496 	add	a, a
   5DDD DD 77 FF      [19]  497 	ld	-1 (ix),a
   5DE0 7A            [ 4]  498 	ld	a,d
   5DE1 DD 86 FF      [19]  499 	add	a, -1 (ix)
   5DE4 C5            [11]  500 	push	bc
   5DE5 57            [ 4]  501 	ld	d,a
   5DE6 1E 20         [ 7]  502 	ld	e,#0x20
   5DE8 D5            [11]  503 	push	de
   5DE9 21 00 C0      [10]  504 	ld	hl,#0xC000
   5DEC E5            [11]  505 	push	hl
   5DED CD CB 7A      [17]  506 	call	_cpct_getScreenPtr
   5DF0 C1            [10]  507 	pop	bc
                            508 ;src/gui/gui.c:76: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   5DF1 EB            [ 4]  509 	ex	de,hl
   5DF2 C5            [11]  510 	push	bc
   5DF3 21 11 0A      [10]  511 	ld	hl,#0x0A11
   5DF6 E5            [11]  512 	push	hl
   5DF7 3E FF         [ 7]  513 	ld	a,#0xFF
   5DF9 F5            [11]  514 	push	af
   5DFA 33            [ 6]  515 	inc	sp
   5DFB D5            [11]  516 	push	de
   5DFC CD 12 7A      [17]  517 	call	_cpct_drawSolidBox
   5DFF F1            [10]  518 	pop	af
   5E00 F1            [10]  519 	pop	af
   5E01 33            [ 6]  520 	inc	sp
   5E02 C1            [10]  521 	pop	bc
                            522 ;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   5E03 3E CA         [ 7]  523 	ld	a,#0xCA
   5E05 91            [ 4]  524 	sub	a, c
   5E06 57            [ 4]  525 	ld	d,a
   5E07 3E 00         [ 7]  526 	ld	a,#0x00
   5E09 98            [ 4]  527 	sbc	a, b
   5E0A 5F            [ 4]  528 	ld	e,a
   5E0B 6A            [ 4]  529 	ld	l, d
   5E0C 63            [ 4]  530 	ld	h, e
   5E0D CB 7B         [ 8]  531 	bit	7, e
   5E0F 28 03         [12]  532 	jr	Z,00104$
   5E11 6A            [ 4]  533 	ld	l, d
   5E12 63            [ 4]  534 	ld	h, e
   5E13 23            [ 6]  535 	inc	hl
   5E14                     536 00104$:
   5E14 CB 2C         [ 8]  537 	sra	h
   5E16 CB 1D         [ 8]  538 	rr	l
   5E18 7D            [ 4]  539 	ld	a,l
   5E19 DD 86 FF      [19]  540 	add	a, -1 (ix)
   5E1C 4F            [ 4]  541 	ld	c,a
   5E1D DD 6E 07      [19]  542 	ld	l,7 (ix)
   5E20 26 00         [ 7]  543 	ld	h,#0x00
   5E22 29            [11]  544 	add	hl, hl
   5E23 EB            [ 4]  545 	ex	de,hl
   5E24 DD 6E 04      [19]  546 	ld	l,4 (ix)
   5E27 DD 66 05      [19]  547 	ld	h,5 (ix)
   5E2A 19            [11]  548 	add	hl,de
   5E2B E5            [11]  549 	push	hl
   5E2C 5E            [ 7]  550 	ld	e,(hl)
   5E2D 23            [ 6]  551 	inc	hl
   5E2E 56            [ 7]  552 	ld	d,(hl)
   5E2F C5            [11]  553 	push	bc
   5E30 D5            [11]  554 	push	de
   5E31 CD BE 79      [17]  555 	call	_strlen
   5E34 F1            [10]  556 	pop	af
   5E35 EB            [ 4]  557 	ex	de,hl
   5E36 C1            [10]  558 	pop	bc
   5E37 E1            [10]  559 	pop	hl
   5E38 3E 52         [ 7]  560 	ld	a,#0x52
   5E3A 93            [ 4]  561 	sub	a, e
   5E3B 5F            [ 4]  562 	ld	e,a
   5E3C 3E 00         [ 7]  563 	ld	a,#0x00
   5E3E 9A            [ 4]  564 	sbc	a, d
   5E3F 57            [ 4]  565 	ld	d,a
   5E40 CB 3A         [ 8]  566 	srl	d
   5E42 CB 1B         [ 8]  567 	rr	e
   5E44 E5            [11]  568 	push	hl
   5E45 51            [ 4]  569 	ld	d, c
   5E46 D5            [11]  570 	push	de
   5E47 01 00 C0      [10]  571 	ld	bc,#0xC000
   5E4A C5            [11]  572 	push	bc
   5E4B CD CB 7A      [17]  573 	call	_cpct_getScreenPtr
   5E4E 4D            [ 4]  574 	ld	c,l
   5E4F 44            [ 4]  575 	ld	b,h
   5E50 E1            [10]  576 	pop	hl
                            577 ;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   5E51 5E            [ 7]  578 	ld	e,(hl)
   5E52 23            [ 6]  579 	inc	hl
   5E53 56            [ 7]  580 	ld	d,(hl)
   5E54 AF            [ 4]  581 	xor	a, a
   5E55 F5            [11]  582 	push	af
   5E56 33            [ 6]  583 	inc	sp
   5E57 C5            [11]  584 	push	bc
   5E58 D5            [11]  585 	push	de
   5E59 CD 7C 74      [17]  586 	call	_cpct_drawStringM2
   5E5C F1            [10]  587 	pop	af
   5E5D F1            [10]  588 	pop	af
   5E5E 33            [ 6]  589 	inc	sp
   5E5F 33            [ 6]  590 	inc	sp
   5E60 DD E1         [14]  591 	pop	ix
   5E62 C9            [10]  592 	ret
                            593 ;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            594 ;	---------------------------------
                            595 ; Function drawMenuEntry
                            596 ; ---------------------------------
   5E63                     597 _drawMenuEntry::
   5E63 DD E5         [15]  598 	push	ix
   5E65 DD 21 00 00   [14]  599 	ld	ix,#0
   5E69 DD 39         [15]  600 	add	ix,sp
   5E6B 21 FA FF      [10]  601 	ld	hl,#-6
   5E6E 39            [11]  602 	add	hl,sp
   5E6F F9            [ 6]  603 	ld	sp,hl
                            604 ;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   5E70 DD 4E 06      [19]  605 	ld	c,6 (ix)
   5E73 06 00         [ 7]  606 	ld	b,#0x00
   5E75 69            [ 4]  607 	ld	l, c
   5E76 60            [ 4]  608 	ld	h, b
   5E77 29            [11]  609 	add	hl, hl
   5E78 29            [11]  610 	add	hl, hl
   5E79 09            [11]  611 	add	hl, bc
   5E7A 29            [11]  612 	add	hl, hl
   5E7B 4D            [ 4]  613 	ld	c,l
   5E7C 44            [ 4]  614 	ld	b,h
   5E7D 3E C9         [ 7]  615 	ld	a,#0xC9
   5E7F 91            [ 4]  616 	sub	a, c
   5E80 57            [ 4]  617 	ld	d,a
   5E81 3E 00         [ 7]  618 	ld	a,#0x00
   5E83 98            [ 4]  619 	sbc	a, b
   5E84 5F            [ 4]  620 	ld	e,a
   5E85 6A            [ 4]  621 	ld	l, d
   5E86 63            [ 4]  622 	ld	h, e
   5E87 CB 7B         [ 8]  623 	bit	7, e
   5E89 28 03         [12]  624 	jr	Z,00114$
   5E8B 6A            [ 4]  625 	ld	l, d
   5E8C 63            [ 4]  626 	ld	h, e
   5E8D 23            [ 6]  627 	inc	hl
   5E8E                     628 00114$:
   5E8E CB 2C         [ 8]  629 	sra	h
   5E90 CB 1D         [ 8]  630 	rr	l
   5E92 55            [ 4]  631 	ld	d,l
   5E93 DD 7E 07      [19]  632 	ld	a,7 (ix)
   5E96 5F            [ 4]  633 	ld	e,a
   5E97 87            [ 4]  634 	add	a, a
   5E98 87            [ 4]  635 	add	a, a
   5E99 83            [ 4]  636 	add	a, e
   5E9A 87            [ 4]  637 	add	a, a
   5E9B 82            [ 4]  638 	add	a,d
   5E9C C5            [11]  639 	push	bc
   5E9D 57            [ 4]  640 	ld	d,a
   5E9E 1E 20         [ 7]  641 	ld	e,#0x20
   5EA0 D5            [11]  642 	push	de
   5EA1 21 00 C0      [10]  643 	ld	hl,#0xC000
   5EA4 E5            [11]  644 	push	hl
   5EA5 CD CB 7A      [17]  645 	call	_cpct_getScreenPtr
   5EA8 C1            [10]  646 	pop	bc
                            647 ;src/gui/gui.c:91: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   5EA9 EB            [ 4]  648 	ex	de,hl
   5EAA C5            [11]  649 	push	bc
   5EAB 21 11 0A      [10]  650 	ld	hl,#0x0A11
   5EAE E5            [11]  651 	push	hl
   5EAF AF            [ 4]  652 	xor	a, a
   5EB0 F5            [11]  653 	push	af
   5EB1 33            [ 6]  654 	inc	sp
   5EB2 D5            [11]  655 	push	de
   5EB3 CD 12 7A      [17]  656 	call	_cpct_drawSolidBox
   5EB6 F1            [10]  657 	pop	af
   5EB7 F1            [10]  658 	pop	af
   5EB8 33            [ 6]  659 	inc	sp
   5EB9 C1            [10]  660 	pop	bc
                            661 ;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
   5EBA 21 B0 36      [10]  662 	ld	hl,#0x36B0
   5EBD                     663 00108$:
   5EBD 2B            [ 6]  664 	dec	hl
   5EBE 7C            [ 4]  665 	ld	a,h
   5EBF B5            [ 4]  666 	or	a,l
   5EC0 20 FB         [12]  667 	jr	NZ,00108$
                            668 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5EC2 3E CA         [ 7]  669 	ld	a,#0xCA
   5EC4 91            [ 4]  670 	sub	a, c
   5EC5 DD 77 FE      [19]  671 	ld	-2 (ix),a
   5EC8 3E 00         [ 7]  672 	ld	a,#0x00
   5ECA 98            [ 4]  673 	sbc	a, b
   5ECB DD 77 FF      [19]  674 	ld	-1 (ix), a
   5ECE 07            [ 4]  675 	rlca
   5ECF E6 01         [ 7]  676 	and	a,#0x01
   5ED1 5F            [ 4]  677 	ld	e,a
   5ED2 21 00 00      [10]  678 	ld	hl,#0x0000
   5ED5 E3            [19]  679 	ex	(sp), hl
   5ED6                     680 00110$:
   5ED6 DD 66 06      [19]  681 	ld	h,6 (ix)
   5ED9 2E 00         [ 7]  682 	ld	l,#0x00
   5EDB DD 7E FA      [19]  683 	ld	a,-6 (ix)
   5EDE 94            [ 4]  684 	sub	a, h
   5EDF DD 7E FB      [19]  685 	ld	a,-5 (ix)
   5EE2 9D            [ 4]  686 	sbc	a, l
   5EE3 E2 E8 5E      [10]  687 	jp	PO, 00146$
   5EE6 EE 80         [ 7]  688 	xor	a, #0x80
   5EE8                     689 00146$:
   5EE8 F2 8E 5F      [10]  690 	jp	P,00112$
                            691 ;src/gui/gui.c:99: if(i==iSelect)
   5EEB DD 56 07      [19]  692 	ld	d,7 (ix)
   5EEE 06 00         [ 7]  693 	ld	b,#0x00
   5EF0 DD 7E FA      [19]  694 	ld	a,-6 (ix)
   5EF3 92            [ 4]  695 	sub	a, d
   5EF4 20 0A         [12]  696 	jr	NZ,00103$
   5EF6 DD 7E FB      [19]  697 	ld	a,-5 (ix)
   5EF9 90            [ 4]  698 	sub	a, b
   5EFA 20 04         [12]  699 	jr	NZ,00103$
                            700 ;src/gui/gui.c:100: penSelected = 1;
   5EFC 0E 01         [ 7]  701 	ld	c,#0x01
   5EFE 18 02         [12]  702 	jr	00104$
   5F00                     703 00103$:
                            704 ;src/gui/gui.c:102: penSelected = 0;
   5F00 0E 00         [ 7]  705 	ld	c,#0x00
   5F02                     706 00104$:
                            707 ;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   5F02 DD 6E FE      [19]  708 	ld	l,-2 (ix)
   5F05 DD 66 FF      [19]  709 	ld	h,-1 (ix)
   5F08 7B            [ 4]  710 	ld	a,e
   5F09 B7            [ 4]  711 	or	a, a
   5F0A 28 07         [12]  712 	jr	Z,00115$
   5F0C DD 6E FE      [19]  713 	ld	l,-2 (ix)
   5F0F DD 66 FF      [19]  714 	ld	h,-1 (ix)
   5F12 23            [ 6]  715 	inc	hl
   5F13                     716 00115$:
   5F13 CB 2C         [ 8]  717 	sra	h
   5F15 CB 1D         [ 8]  718 	rr	l
   5F17 45            [ 4]  719 	ld	b,l
   5F18 DD 6E FA      [19]  720 	ld	l,-6 (ix)
   5F1B D5            [11]  721 	push	de
   5F1C 5D            [ 4]  722 	ld	e,l
   5F1D 29            [11]  723 	add	hl, hl
   5F1E 29            [11]  724 	add	hl, hl
   5F1F 19            [11]  725 	add	hl, de
   5F20 29            [11]  726 	add	hl, hl
   5F21 D1            [10]  727 	pop	de
   5F22 78            [ 4]  728 	ld	a,b
   5F23 85            [ 4]  729 	add	a, l
   5F24 DD 77 FD      [19]  730 	ld	-3 (ix),a
   5F27 DD 56 FA      [19]  731 	ld	d,-6 (ix)
   5F2A DD 46 FB      [19]  732 	ld	b,-5 (ix)
   5F2D CB 22         [ 8]  733 	sla	d
   5F2F CB 10         [ 8]  734 	rl	b
   5F31 DD 7E 04      [19]  735 	ld	a,4 (ix)
   5F34 82            [ 4]  736 	add	a, d
   5F35 57            [ 4]  737 	ld	d,a
   5F36 DD 7E 05      [19]  738 	ld	a,5 (ix)
   5F39 88            [ 4]  739 	adc	a, b
   5F3A 47            [ 4]  740 	ld	b,a
   5F3B 6A            [ 4]  741 	ld	l, d
   5F3C 60            [ 4]  742 	ld	h, b
   5F3D 7E            [ 7]  743 	ld	a, (hl)
   5F3E 23            [ 6]  744 	inc	hl
   5F3F 66            [ 7]  745 	ld	h,(hl)
   5F40 6F            [ 4]  746 	ld	l,a
   5F41 C5            [11]  747 	push	bc
   5F42 D5            [11]  748 	push	de
   5F43 E5            [11]  749 	push	hl
   5F44 CD BE 79      [17]  750 	call	_strlen
   5F47 F1            [10]  751 	pop	af
   5F48 D1            [10]  752 	pop	de
   5F49 C1            [10]  753 	pop	bc
   5F4A 3E 52         [ 7]  754 	ld	a,#0x52
   5F4C 95            [ 4]  755 	sub	a, l
   5F4D 6F            [ 4]  756 	ld	l,a
   5F4E 3E 00         [ 7]  757 	ld	a,#0x00
   5F50 9C            [ 4]  758 	sbc	a, h
   5F51 67            [ 4]  759 	ld	h,a
   5F52 CB 3C         [ 8]  760 	srl	h
   5F54 CB 1D         [ 8]  761 	rr	l
   5F56 DD 75 FC      [19]  762 	ld	-4 (ix),l
   5F59 C5            [11]  763 	push	bc
   5F5A D5            [11]  764 	push	de
   5F5B DD 66 FD      [19]  765 	ld	h,-3 (ix)
   5F5E DD 6E FC      [19]  766 	ld	l,-4 (ix)
   5F61 E5            [11]  767 	push	hl
   5F62 21 00 C0      [10]  768 	ld	hl,#0xC000
   5F65 E5            [11]  769 	push	hl
   5F66 CD CB 7A      [17]  770 	call	_cpct_getScreenPtr
   5F69 D1            [10]  771 	pop	de
   5F6A C1            [10]  772 	pop	bc
   5F6B E5            [11]  773 	push	hl
   5F6C FD E1         [14]  774 	pop	iy
                            775 ;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
   5F6E 6A            [ 4]  776 	ld	l, d
   5F6F 60            [ 4]  777 	ld	h, b
   5F70 7E            [ 7]  778 	ld	a, (hl)
   5F71 23            [ 6]  779 	inc	hl
   5F72 66            [ 7]  780 	ld	h,(hl)
   5F73 6F            [ 4]  781 	ld	l,a
   5F74 D5            [11]  782 	push	de
   5F75 79            [ 4]  783 	ld	a,c
   5F76 F5            [11]  784 	push	af
   5F77 33            [ 6]  785 	inc	sp
   5F78 FD E5         [15]  786 	push	iy
   5F7A E5            [11]  787 	push	hl
   5F7B CD 7C 74      [17]  788 	call	_cpct_drawStringM2
   5F7E F1            [10]  789 	pop	af
   5F7F F1            [10]  790 	pop	af
   5F80 33            [ 6]  791 	inc	sp
   5F81 D1            [10]  792 	pop	de
                            793 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   5F82 DD 34 FA      [23]  794 	inc	-6 (ix)
   5F85 C2 D6 5E      [10]  795 	jp	NZ,00110$
   5F88 DD 34 FB      [23]  796 	inc	-5 (ix)
   5F8B C3 D6 5E      [10]  797 	jp	00110$
   5F8E                     798 00112$:
   5F8E DD F9         [10]  799 	ld	sp, ix
   5F90 DD E1         [14]  800 	pop	ix
   5F92 C9            [10]  801 	ret
                            802 ;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
                            803 ;	---------------------------------
                            804 ; Function drawMenu
                            805 ; ---------------------------------
   5F93                     806 _drawMenu::
   5F93 DD E5         [15]  807 	push	ix
   5F95 DD 21 00 00   [14]  808 	ld	ix,#0
   5F99 DD 39         [15]  809 	add	ix,sp
   5F9B F5            [11]  810 	push	af
                            811 ;src/gui/gui.c:112: u8 iSelect=0;
   5F9C 06 00         [ 7]  812 	ld	b,#0x00
                            813 ;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
   5F9E C5            [11]  814 	push	bc
   5F9F 21 00 40      [10]  815 	ld	hl,#0x4000
   5FA2 E5            [11]  816 	push	hl
   5FA3 3E FF         [ 7]  817 	ld	a,#0xFF
   5FA5 F5            [11]  818 	push	af
   5FA6 33            [ 6]  819 	inc	sp
   5FA7 26 C0         [ 7]  820 	ld	h, #0xC0
   5FA9 E5            [11]  821 	push	hl
   5FAA CD 97 79      [17]  822 	call	_cpct_memset
   5FAD C1            [10]  823 	pop	bc
                            824 ;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
   5FAE DD 5E 06      [19]  825 	ld	e,6 (ix)
   5FB1 16 00         [ 7]  826 	ld	d,#0x00
   5FB3 6B            [ 4]  827 	ld	l, e
   5FB4 62            [ 4]  828 	ld	h, d
   5FB5 29            [11]  829 	add	hl, hl
   5FB6 19            [11]  830 	add	hl, de
   5FB7 29            [11]  831 	add	hl, hl
   5FB8 29            [11]  832 	add	hl, hl
   5FB9 C5            [11]  833 	push	bc
   5FBA E5            [11]  834 	push	hl
   5FBB 21 1E 00      [10]  835 	ld	hl,#0x001E
   5FBE E5            [11]  836 	push	hl
   5FBF CD C9 5C      [17]  837 	call	_drawBoxM2
   5FC2 F1            [10]  838 	pop	af
   5FC3 F1            [10]  839 	pop	af
   5FC4 AF            [ 4]  840 	xor	a, a
   5FC5 F5            [11]  841 	push	af
   5FC6 33            [ 6]  842 	inc	sp
   5FC7 DD 7E 06      [19]  843 	ld	a,6 (ix)
   5FCA F5            [11]  844 	push	af
   5FCB 33            [ 6]  845 	inc	sp
   5FCC DD 6E 04      [19]  846 	ld	l,4 (ix)
   5FCF DD 66 05      [19]  847 	ld	h,5 (ix)
   5FD2 E5            [11]  848 	push	hl
   5FD3 CD 63 5E      [17]  849 	call	_drawMenuEntry
   5FD6 F1            [10]  850 	pop	af
   5FD7 F1            [10]  851 	pop	af
   5FD8 C1            [10]  852 	pop	bc
                            853 ;src/gui/gui.c:120: do{
   5FD9 DD 4E 06      [19]  854 	ld	c,6 (ix)
   5FDC 0D            [ 4]  855 	dec	c
   5FDD                     856 00111$:
                            857 ;src/gui/gui.c:121: cpct_scanKeyboard(); 
   5FDD C5            [11]  858 	push	bc
   5FDE CD EB 7A      [17]  859 	call	_cpct_scanKeyboard
   5FE1 21 00 01      [10]  860 	ld	hl,#0x0100
   5FE4 CD 45 74      [17]  861 	call	_cpct_isKeyPressed
   5FE7 7D            [ 4]  862 	ld	a,l
   5FE8 C1            [10]  863 	pop	bc
   5FE9 B7            [ 4]  864 	or	a, a
   5FEA 28 32         [12]  865 	jr	Z,00105$
                            866 ;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
   5FEC C5            [11]  867 	push	bc
   5FED C5            [11]  868 	push	bc
   5FEE 33            [ 6]  869 	inc	sp
   5FEF DD 7E 06      [19]  870 	ld	a,6 (ix)
   5FF2 F5            [11]  871 	push	af
   5FF3 33            [ 6]  872 	inc	sp
   5FF4 DD 6E 04      [19]  873 	ld	l,4 (ix)
   5FF7 DD 66 05      [19]  874 	ld	h,5 (ix)
   5FFA E5            [11]  875 	push	hl
   5FFB CD A9 5D      [17]  876 	call	_EraseMenuEntry
   5FFE F1            [10]  877 	pop	af
   5FFF F1            [10]  878 	pop	af
   6000 C1            [10]  879 	pop	bc
                            880 ;src/gui/gui.c:127: if(iSelect ==0)
   6001 78            [ 4]  881 	ld	a,b
   6002 B7            [ 4]  882 	or	a, a
   6003 20 03         [12]  883 	jr	NZ,00102$
                            884 ;src/gui/gui.c:128: iSelect = nbEntry-1;
   6005 41            [ 4]  885 	ld	b,c
   6006 18 01         [12]  886 	jr	00103$
   6008                     887 00102$:
                            888 ;src/gui/gui.c:130: iSelect--;
   6008 05            [ 4]  889 	dec	b
   6009                     890 00103$:
                            891 ;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
   6009 C5            [11]  892 	push	bc
   600A C5            [11]  893 	push	bc
   600B 33            [ 6]  894 	inc	sp
   600C DD 7E 06      [19]  895 	ld	a,6 (ix)
   600F F5            [11]  896 	push	af
   6010 33            [ 6]  897 	inc	sp
   6011 DD 6E 04      [19]  898 	ld	l,4 (ix)
   6014 DD 66 05      [19]  899 	ld	h,5 (ix)
   6017 E5            [11]  900 	push	hl
   6018 CD 63 5E      [17]  901 	call	_drawMenuEntry
   601B F1            [10]  902 	pop	af
   601C F1            [10]  903 	pop	af
   601D C1            [10]  904 	pop	bc
   601E                     905 00105$:
                            906 ;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
   601E C5            [11]  907 	push	bc
   601F 21 00 04      [10]  908 	ld	hl,#0x0400
   6022 CD 45 74      [17]  909 	call	_cpct_isKeyPressed
   6025 5D            [ 4]  910 	ld	e,l
   6026 C1            [10]  911 	pop	bc
   6027 7B            [ 4]  912 	ld	a,e
   6028 B7            [ 4]  913 	or	a, a
   6029 28 48         [12]  914 	jr	Z,00112$
                            915 ;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
   602B C5            [11]  916 	push	bc
   602C C5            [11]  917 	push	bc
   602D 33            [ 6]  918 	inc	sp
   602E DD 7E 06      [19]  919 	ld	a,6 (ix)
   6031 F5            [11]  920 	push	af
   6032 33            [ 6]  921 	inc	sp
   6033 DD 6E 04      [19]  922 	ld	l,4 (ix)
   6036 DD 66 05      [19]  923 	ld	h,5 (ix)
   6039 E5            [11]  924 	push	hl
   603A CD A9 5D      [17]  925 	call	_EraseMenuEntry
   603D F1            [10]  926 	pop	af
   603E F1            [10]  927 	pop	af
   603F C1            [10]  928 	pop	bc
                            929 ;src/gui/gui.c:139: if(iSelect == nbEntry-1)
   6040 DD 5E 06      [19]  930 	ld	e,6 (ix)
   6043 16 00         [ 7]  931 	ld	d,#0x00
   6045 1B            [ 6]  932 	dec	de
   6046 DD 70 FE      [19]  933 	ld	-2 (ix),b
   6049 DD 36 FF 00   [19]  934 	ld	-1 (ix),#0x00
   604D 7B            [ 4]  935 	ld	a,e
   604E DD 96 FE      [19]  936 	sub	a, -2 (ix)
   6051 20 0A         [12]  937 	jr	NZ,00107$
   6053 7A            [ 4]  938 	ld	a,d
   6054 DD 96 FF      [19]  939 	sub	a, -1 (ix)
   6057 20 04         [12]  940 	jr	NZ,00107$
                            941 ;src/gui/gui.c:140: iSelect = 0;
   6059 06 00         [ 7]  942 	ld	b,#0x00
   605B 18 01         [12]  943 	jr	00108$
   605D                     944 00107$:
                            945 ;src/gui/gui.c:142: iSelect++;
   605D 04            [ 4]  946 	inc	b
   605E                     947 00108$:
                            948 ;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
   605E C5            [11]  949 	push	bc
   605F C5            [11]  950 	push	bc
   6060 33            [ 6]  951 	inc	sp
   6061 DD 7E 06      [19]  952 	ld	a,6 (ix)
   6064 F5            [11]  953 	push	af
   6065 33            [ 6]  954 	inc	sp
   6066 DD 6E 04      [19]  955 	ld	l,4 (ix)
   6069 DD 66 05      [19]  956 	ld	h,5 (ix)
   606C E5            [11]  957 	push	hl
   606D CD 63 5E      [17]  958 	call	_drawMenuEntry
   6070 F1            [10]  959 	pop	af
   6071 F1            [10]  960 	pop	af
   6072 C1            [10]  961 	pop	bc
   6073                     962 00112$:
                            963 ;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
   6073 C5            [11]  964 	push	bc
   6074 21 02 04      [10]  965 	ld	hl,#0x0402
   6077 CD 45 74      [17]  966 	call	_cpct_isKeyPressed
   607A 7D            [ 4]  967 	ld	a,l
   607B C1            [10]  968 	pop	bc
   607C B7            [ 4]  969 	or	a, a
   607D CA DD 5F      [10]  970 	jp	Z,00111$
                            971 ;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
   6080 21 B0 36      [10]  972 	ld	hl,#0x36B0
   6083                     973 00117$:
   6083 EB            [ 4]  974 	ex	de,hl
   6084 1B            [ 6]  975 	dec	de
   6085 6B            [ 4]  976 	ld	l, e
   6086 7A            [ 4]  977 	ld	a,d
   6087 67            [ 4]  978 	ld	h,a
   6088 B3            [ 4]  979 	or	a,e
   6089 20 F8         [12]  980 	jr	NZ,00117$
                            981 ;src/gui/gui.c:152: return iSelect;
   608B 68            [ 4]  982 	ld	l,b
   608C DD F9         [10]  983 	ld	sp, ix
   608E DD E1         [14]  984 	pop	ix
   6090 C9            [10]  985 	ret
                            986 ;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
                            987 ;	---------------------------------
                            988 ; Function drawWindow
                            989 ; ---------------------------------
   6091                     990 _drawWindow::
   6091 DD E5         [15]  991 	push	ix
   6093 DD 21 00 00   [14]  992 	ld	ix,#0
   6097 DD 39         [15]  993 	add	ix,sp
   6099 21 F5 FF      [10]  994 	ld	hl,#-11
   609C 39            [11]  995 	add	hl,sp
   609D F9            [ 6]  996 	ld	sp,hl
                            997 ;src/gui/gui.c:166: u8 valueReturn=0;
   609E DD 36 F5 00   [19]  998 	ld	-11 (ix),#0x00
                            999 ;src/gui/gui.c:169: if(button == 0)
   60A2 DD 7E 07      [19] 1000 	ld	a,7 (ix)
   60A5 B7            [ 4] 1001 	or	a, a
   60A6 20 05         [12] 1002 	jr	NZ,00102$
                           1003 ;src/gui/gui.c:170: buttonTxt = "<OK>";
   60A8 11 1A 62      [10] 1004 	ld	de,#___str_0
   60AB 18 03         [12] 1005 	jr	00103$
   60AD                    1006 00102$:
                           1007 ;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
   60AD 11 1F 62      [10] 1008 	ld	de,#___str_1+0
   60B0                    1009 00103$:
                           1010 ;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
   60B0 DD 4E 06      [19] 1011 	ld	c,6 (ix)
   60B3 06 00         [ 7] 1012 	ld	b,#0x00
   60B5 03            [ 6] 1013 	inc	bc
   60B6 03            [ 6] 1014 	inc	bc
   60B7 69            [ 4] 1015 	ld	l, c
   60B8 60            [ 4] 1016 	ld	h, b
   60B9 29            [11] 1017 	add	hl, hl
   60BA 09            [11] 1018 	add	hl, bc
   60BB 29            [11] 1019 	add	hl, hl
   60BC 29            [11] 1020 	add	hl, hl
   60BD C5            [11] 1021 	push	bc
   60BE D5            [11] 1022 	push	de
   60BF E5            [11] 1023 	push	hl
   60C0 21 32 00      [10] 1024 	ld	hl,#0x0032
   60C3 E5            [11] 1025 	push	hl
   60C4 CD C9 5C      [17] 1026 	call	_drawBoxM2
   60C7 F1            [10] 1027 	pop	af
   60C8 F1            [10] 1028 	pop	af
   60C9 D1            [10] 1029 	pop	de
   60CA C1            [10] 1030 	pop	bc
                           1031 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   60CB 69            [ 4] 1032 	ld	l, c
   60CC 60            [ 4] 1033 	ld	h, b
   60CD 29            [11] 1034 	add	hl, hl
   60CE 29            [11] 1035 	add	hl, hl
   60CF 09            [11] 1036 	add	hl, bc
   60D0 29            [11] 1037 	add	hl, hl
   60D1 3E CA         [ 7] 1038 	ld	a,#0xCA
   60D3 95            [ 4] 1039 	sub	a, l
   60D4 DD 77 FD      [19] 1040 	ld	-3 (ix),a
   60D7 3E 00         [ 7] 1041 	ld	a,#0x00
   60D9 9C            [ 4] 1042 	sbc	a, h
   60DA DD 77 FE      [19] 1043 	ld	-2 (ix), a
   60DD 07            [ 4] 1044 	rlca
   60DE E6 01         [ 7] 1045 	and	a,#0x01
   60E0 DD 77 FF      [19] 1046 	ld	-1 (ix),a
   60E3 DD 36 F6 00   [19] 1047 	ld	-10 (ix),#0x00
   60E7 DD 36 FC 00   [19] 1048 	ld	-4 (ix),#0x00
   60EB                    1049 00114$:
                           1050 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   60EB DD 7E FD      [19] 1051 	ld	a,-3 (ix)
   60EE C6 01         [ 7] 1052 	add	a, #0x01
   60F0 DD 77 FA      [19] 1053 	ld	-6 (ix),a
   60F3 DD 7E FE      [19] 1054 	ld	a,-2 (ix)
   60F6 CE 00         [ 7] 1055 	adc	a, #0x00
   60F8 DD 77 FB      [19] 1056 	ld	-5 (ix),a
                           1057 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   60FB DD 7E F6      [19] 1058 	ld	a,-10 (ix)
   60FE DD 96 06      [19] 1059 	sub	a, 6 (ix)
   6101 D2 8D 61      [10] 1060 	jp	NC,00104$
                           1061 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   6104 DD 6E FD      [19] 1062 	ld	l,-3 (ix)
   6107 DD 66 FE      [19] 1063 	ld	h,-2 (ix)
   610A DD 7E FF      [19] 1064 	ld	a,-1 (ix)
   610D B7            [ 4] 1065 	or	a, a
   610E 28 06         [12] 1066 	jr	Z,00118$
   6110 DD 6E FA      [19] 1067 	ld	l,-6 (ix)
   6113 DD 66 FB      [19] 1068 	ld	h,-5 (ix)
   6116                    1069 00118$:
   6116 CB 2C         [ 8] 1070 	sra	h
   6118 CB 1D         [ 8] 1071 	rr	l
   611A DD 66 FC      [19] 1072 	ld	h,-4 (ix)
   611D 7D            [ 4] 1073 	ld	a,l
   611E 84            [ 4] 1074 	add	a, h
   611F DD 77 F9      [19] 1075 	ld	-7 (ix),a
   6122 DD 6E F6      [19] 1076 	ld	l,-10 (ix)
   6125 26 00         [ 7] 1077 	ld	h,#0x00
   6127 29            [11] 1078 	add	hl, hl
   6128 45            [ 4] 1079 	ld	b,l
   6129 4C            [ 4] 1080 	ld	c,h
   612A DD 7E 04      [19] 1081 	ld	a,4 (ix)
   612D 80            [ 4] 1082 	add	a, b
   612E DD 77 F7      [19] 1083 	ld	-9 (ix),a
   6131 DD 7E 05      [19] 1084 	ld	a,5 (ix)
   6134 89            [ 4] 1085 	adc	a, c
   6135 DD 77 F8      [19] 1086 	ld	-8 (ix),a
   6138 DD 6E F7      [19] 1087 	ld	l,-9 (ix)
   613B DD 66 F8      [19] 1088 	ld	h,-8 (ix)
   613E 4E            [ 7] 1089 	ld	c,(hl)
   613F 23            [ 6] 1090 	inc	hl
   6140 46            [ 7] 1091 	ld	b,(hl)
   6141 D5            [11] 1092 	push	de
   6142 C5            [11] 1093 	push	bc
   6143 CD BE 79      [17] 1094 	call	_strlen
   6146 F1            [10] 1095 	pop	af
   6147 D1            [10] 1096 	pop	de
   6148 3E 52         [ 7] 1097 	ld	a,#0x52
   614A 95            [ 4] 1098 	sub	a, l
   614B 6F            [ 4] 1099 	ld	l,a
   614C 3E 00         [ 7] 1100 	ld	a,#0x00
   614E 9C            [ 4] 1101 	sbc	a, h
   614F 67            [ 4] 1102 	ld	h,a
   6150 CB 3C         [ 8] 1103 	srl	h
   6152 CB 1D         [ 8] 1104 	rr	l
   6154 45            [ 4] 1105 	ld	b,l
   6155 D5            [11] 1106 	push	de
   6156 DD 7E F9      [19] 1107 	ld	a,-7 (ix)
   6159 F5            [11] 1108 	push	af
   615A 33            [ 6] 1109 	inc	sp
   615B C5            [11] 1110 	push	bc
   615C 33            [ 6] 1111 	inc	sp
   615D 21 00 C0      [10] 1112 	ld	hl,#0xC000
   6160 E5            [11] 1113 	push	hl
   6161 CD CB 7A      [17] 1114 	call	_cpct_getScreenPtr
   6164 D1            [10] 1115 	pop	de
   6165 E5            [11] 1116 	push	hl
   6166 FD E1         [14] 1117 	pop	iy
                           1118 ;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
   6168 DD 6E F7      [19] 1119 	ld	l,-9 (ix)
   616B DD 66 F8      [19] 1120 	ld	h,-8 (ix)
   616E 4E            [ 7] 1121 	ld	c,(hl)
   616F 23            [ 6] 1122 	inc	hl
   6170 46            [ 7] 1123 	ld	b,(hl)
   6171 D5            [11] 1124 	push	de
   6172 AF            [ 4] 1125 	xor	a, a
   6173 F5            [11] 1126 	push	af
   6174 33            [ 6] 1127 	inc	sp
   6175 FD E5         [15] 1128 	push	iy
   6177 C5            [11] 1129 	push	bc
   6178 CD 7C 74      [17] 1130 	call	_cpct_drawStringM2
   617B F1            [10] 1131 	pop	af
   617C F1            [10] 1132 	pop	af
   617D 33            [ 6] 1133 	inc	sp
   617E D1            [10] 1134 	pop	de
                           1135 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   617F DD 7E FC      [19] 1136 	ld	a,-4 (ix)
   6182 C6 0A         [ 7] 1137 	add	a, #0x0A
   6184 DD 77 FC      [19] 1138 	ld	-4 (ix),a
   6187 DD 34 F6      [23] 1139 	inc	-10 (ix)
   618A C3 EB 60      [10] 1140 	jp	00114$
   618D                    1141 00104$:
                           1142 ;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   618D DD 46 FD      [19] 1143 	ld	b,-3 (ix)
   6190 DD 66 FE      [19] 1144 	ld	h,-2 (ix)
   6193 DD 7E FF      [19] 1145 	ld	a,-1 (ix)
   6196 B7            [ 4] 1146 	or	a, a
   6197 28 06         [12] 1147 	jr	Z,00119$
   6199 DD 46 FA      [19] 1148 	ld	b,-6 (ix)
   619C DD 66 FB      [19] 1149 	ld	h,-5 (ix)
   619F                    1150 00119$:
   619F CB 2C         [ 8] 1151 	sra	h
   61A1 CB 18         [ 8] 1152 	rr	b
   61A3 DD 4E 06      [19] 1153 	ld	c,6 (ix)
   61A6 0C            [ 4] 1154 	inc	c
   61A7 79            [ 4] 1155 	ld	a,c
   61A8 87            [ 4] 1156 	add	a, a
   61A9 87            [ 4] 1157 	add	a, a
   61AA 81            [ 4] 1158 	add	a, c
   61AB 87            [ 4] 1159 	add	a, a
   61AC 67            [ 4] 1160 	ld	h, a
   61AD 80            [ 4] 1161 	add	a,b
   61AE 47            [ 4] 1162 	ld	b,a
   61AF C5            [11] 1163 	push	bc
   61B0 D5            [11] 1164 	push	de
   61B1 D5            [11] 1165 	push	de
   61B2 CD BE 79      [17] 1166 	call	_strlen
   61B5 F1            [10] 1167 	pop	af
   61B6 D1            [10] 1168 	pop	de
   61B7 C1            [10] 1169 	pop	bc
   61B8 3E 52         [ 7] 1170 	ld	a,#0x52
   61BA 95            [ 4] 1171 	sub	a, l
   61BB 6F            [ 4] 1172 	ld	l,a
   61BC 3E 00         [ 7] 1173 	ld	a,#0x00
   61BE 9C            [ 4] 1174 	sbc	a, h
   61BF 67            [ 4] 1175 	ld	h,a
   61C0 CB 3C         [ 8] 1176 	srl	h
   61C2 CB 1D         [ 8] 1177 	rr	l
   61C4 7D            [ 4] 1178 	ld	a,l
   61C5 D5            [11] 1179 	push	de
   61C6 C5            [11] 1180 	push	bc
   61C7 33            [ 6] 1181 	inc	sp
   61C8 F5            [11] 1182 	push	af
   61C9 33            [ 6] 1183 	inc	sp
   61CA 21 00 C0      [10] 1184 	ld	hl,#0xC000
   61CD E5            [11] 1185 	push	hl
   61CE CD CB 7A      [17] 1186 	call	_cpct_getScreenPtr
   61D1 D1            [10] 1187 	pop	de
                           1188 ;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
   61D2 4D            [ 4] 1189 	ld	c, l
   61D3 44            [ 4] 1190 	ld	b, h
   61D4 AF            [ 4] 1191 	xor	a, a
   61D5 F5            [11] 1192 	push	af
   61D6 33            [ 6] 1193 	inc	sp
   61D7 C5            [11] 1194 	push	bc
   61D8 D5            [11] 1195 	push	de
   61D9 CD 7C 74      [17] 1196 	call	_cpct_drawStringM2
   61DC F1            [10] 1197 	pop	af
   61DD F1            [10] 1198 	pop	af
   61DE 33            [ 6] 1199 	inc	sp
                           1200 ;src/gui/gui.c:186: do{
   61DF                    1201 00110$:
                           1202 ;src/gui/gui.c:187: cpct_scanKeyboard(); 
   61DF CD EB 7A      [17] 1203 	call	_cpct_scanKeyboard
                           1204 ;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
   61E2 21 02 04      [10] 1205 	ld	hl,#0x0402
   61E5 CD 45 74      [17] 1206 	call	_cpct_isKeyPressed
   61E8 7D            [ 4] 1207 	ld	a,l
   61E9 B7            [ 4] 1208 	or	a, a
   61EA 28 04         [12] 1209 	jr	Z,00106$
                           1210 ;src/gui/gui.c:190: valueReturn=1;
   61EC DD 36 F5 01   [19] 1211 	ld	-11 (ix),#0x01
   61F0                    1212 00106$:
                           1213 ;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
   61F0 21 08 04      [10] 1214 	ld	hl,#0x0408
   61F3 CD 45 74      [17] 1215 	call	_cpct_isKeyPressed
   61F6 7D            [ 4] 1216 	ld	a,l
   61F7 B7            [ 4] 1217 	or	a, a
   61F8 28 04         [12] 1218 	jr	Z,00111$
                           1219 ;src/gui/gui.c:193: valueReturn=0;
   61FA DD 36 F5 00   [19] 1220 	ld	-11 (ix),#0x00
   61FE                    1221 00111$:
                           1222 ;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   61FE 21 02 04      [10] 1223 	ld	hl,#0x0402
   6201 CD 45 74      [17] 1224 	call	_cpct_isKeyPressed
   6204 7D            [ 4] 1225 	ld	a,l
   6205 B7            [ 4] 1226 	or	a, a
   6206 20 0A         [12] 1227 	jr	NZ,00112$
   6208 21 08 04      [10] 1228 	ld	hl,#0x0408
   620B CD 45 74      [17] 1229 	call	_cpct_isKeyPressed
   620E 7D            [ 4] 1230 	ld	a,l
   620F B7            [ 4] 1231 	or	a, a
   6210 28 CD         [12] 1232 	jr	Z,00110$
   6212                    1233 00112$:
                           1234 ;src/gui/gui.c:197: return valueReturn;
   6212 DD 6E F5      [19] 1235 	ld	l,-11 (ix)
   6215 DD F9         [10] 1236 	ld	sp, ix
   6217 DD E1         [14] 1237 	pop	ix
   6219 C9            [10] 1238 	ret
   621A                    1239 ___str_0:
   621A 3C 4F 4B 3E        1240 	.ascii "<OK>"
   621E 00                 1241 	.db 0x00
   621F                    1242 ___str_1:
   621F 3C 4F 4B 3E 20 20  1243 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   622D 00                 1244 	.db 0x00
                           1245 	.area _CODE
                           1246 	.area _INITIALIZER
                           1247 	.area _CABS (ABS)
