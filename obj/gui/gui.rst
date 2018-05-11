                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module gui
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _strlen
                             12 	.globl _cpct_getScreenPtr
                             13 	.globl _cpct_setPalette
                             14 	.globl _cpct_setVideoMode
                             15 	.globl _cpct_drawStringM2
                             16 	.globl _cpct_drawSolidBox
                             17 	.globl _cpct_px2byteM0
                             18 	.globl _cpct_isKeyPressed
                             19 	.globl _cpct_scanKeyboard
                             20 	.globl _cpct_memset
                             21 	.globl _putM0
                             22 	.globl _putM1
                             23 	.globl _putM2
                             24 	.globl _drawBoxM0
                             25 	.globl _drawBoxM2
                             26 	.globl _EraseMenuEntry
                             27 	.globl _drawMenuEntry
                             28 	.globl _drawMenu
                             29 	.globl _drawWindow
                             30 ;--------------------------------------------------------
                             31 ; special function registers
                             32 ;--------------------------------------------------------
                             33 ;--------------------------------------------------------
                             34 ; ram data
                             35 ;--------------------------------------------------------
                             36 	.area _DATA
                             37 ;--------------------------------------------------------
                             38 ; ram data
                             39 ;--------------------------------------------------------
                             40 	.area _INITIALIZED
                             41 ;--------------------------------------------------------
                             42 ; absolute external ram data
                             43 ;--------------------------------------------------------
                             44 	.area _DABS (ABS)
                             45 ;--------------------------------------------------------
                             46 ; global & static initialisations
                             47 ;--------------------------------------------------------
                             48 	.area _HOME
                             49 	.area _GSINIT
                             50 	.area _GSFINAL
                             51 	.area _GSINIT
                             52 ;--------------------------------------------------------
                             53 ; Home
                             54 ;--------------------------------------------------------
                             55 	.area _HOME
                             56 	.area _HOME
                             57 ;--------------------------------------------------------
                             58 ; code
                             59 ;--------------------------------------------------------
                             60 	.area _CODE
                             61 ;src/gui/gui.c:3: void putM0(void)
                             62 ;	---------------------------------
                             63 ; Function putM0
                             64 ; ---------------------------------
   4122                      65 _putM0::
                             66 ;src/gui/gui.c:5: cpct_setVideoMode(0);
   4122 2E 00         [ 7]   67 	ld	l, #0x00
   4124 CD EE 64      [17]   68 	call	_cpct_setVideoMode
                             69 ;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
   4127 21 10 00      [10]   70 	ld	hl, #0x0010
   412A E5            [11]   71 	push	hl
   412B 21 BE 47      [10]   72 	ld	hl, #_paletteTrains
   412E E5            [11]   73 	push	hl
   412F CD 21 61      [17]   74 	call	_cpct_setPalette
   4132 C9            [10]   75 	ret
                             76 ;src/gui/gui.c:10: void putM1(void)
                             77 ;	---------------------------------
                             78 ; Function putM1
                             79 ; ---------------------------------
   4133                      80 _putM1::
                             81 ;src/gui/gui.c:12: cpct_setVideoMode(1);
   4133 2E 01         [ 7]   82 	ld	l, #0x01
   4135 CD EE 64      [17]   83 	call	_cpct_setVideoMode
                             84 ;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
   4138 21 04 00      [10]   85 	ld	hl, #0x0004
   413B E5            [11]   86 	push	hl
   413C 21 CE 47      [10]   87 	ld	hl, #_paletteMenusM1
   413F E5            [11]   88 	push	hl
   4140 CD 21 61      [17]   89 	call	_cpct_setPalette
   4143 C9            [10]   90 	ret
                             91 ;src/gui/gui.c:17: void putM2(void)
                             92 ;	---------------------------------
                             93 ; Function putM2
                             94 ; ---------------------------------
   4144                      95 _putM2::
                             96 ;src/gui/gui.c:19: cpct_setVideoMode(2);
   4144 2E 02         [ 7]   97 	ld	l, #0x02
   4146 CD EE 64      [17]   98 	call	_cpct_setVideoMode
                             99 ;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
   4149 21 02 00      [10]  100 	ld	hl, #0x0002
   414C E5            [11]  101 	push	hl
   414D 21 D2 47      [10]  102 	ld	hl, #_paletteMenusM2
   4150 E5            [11]  103 	push	hl
   4151 CD 21 61      [17]  104 	call	_cpct_setPalette
                            105 ;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
   4154 21 00 40      [10]  106 	ld	hl, #0x4000
   4157 E5            [11]  107 	push	hl
   4158 3E FF         [ 7]  108 	ld	a, #0xff
   415A F5            [11]  109 	push	af
   415B 33            [ 6]  110 	inc	sp
   415C 26 C0         [ 7]  111 	ld	h, #0xc0
   415E E5            [11]  112 	push	hl
   415F CD 18 65      [17]  113 	call	_cpct_memset
   4162 C9            [10]  114 	ret
                            115 ;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
                            116 ;	---------------------------------
                            117 ; Function drawBoxM0
                            118 ; ---------------------------------
   4163                     119 _drawBoxM0::
   4163 DD E5         [15]  120 	push	ix
   4165 DD 21 00 00   [14]  121 	ld	ix,#0
   4169 DD 39         [15]  122 	add	ix,sp
   416B 21 F9 FF      [10]  123 	ld	hl, #-7
   416E 39            [11]  124 	add	hl, sp
   416F F9            [ 6]  125 	ld	sp, hl
                            126 ;src/gui/gui.c:30: int left = (80-width_)/2;
   4170 3E 50         [ 7]  127 	ld	a, #0x50
   4172 DD 96 04      [19]  128 	sub	a, 4 (ix)
   4175 5F            [ 4]  129 	ld	e, a
   4176 3E 00         [ 7]  130 	ld	a, #0x00
   4178 DD 9E 05      [19]  131 	sbc	a, 5 (ix)
   417B 57            [ 4]  132 	ld	d, a
   417C 4B            [ 4]  133 	ld	c, e
   417D 42            [ 4]  134 	ld	b, d
   417E CB 7A         [ 8]  135 	bit	7, d
   4180 28 03         [12]  136 	jr	Z,00103$
   4182 4B            [ 4]  137 	ld	c, e
   4183 42            [ 4]  138 	ld	b, d
   4184 03            [ 6]  139 	inc	bc
   4185                     140 00103$:
   4185 CB 28         [ 8]  141 	sra	b
   4187 CB 19         [ 8]  142 	rr	c
                            143 ;src/gui/gui.c:31: int top = (200-height_)/2;
   4189 3E C8         [ 7]  144 	ld	a, #0xc8
   418B DD 96 06      [19]  145 	sub	a, 6 (ix)
   418E 6F            [ 4]  146 	ld	l, a
   418F 3E 00         [ 7]  147 	ld	a, #0x00
   4191 DD 9E 07      [19]  148 	sbc	a, 7 (ix)
   4194 67            [ 4]  149 	ld	h, a
   4195 55            [ 4]  150 	ld	d, l
   4196 5C            [ 4]  151 	ld	e, h
   4197 CB 7C         [ 8]  152 	bit	7, h
   4199 28 03         [12]  153 	jr	Z,00104$
   419B 23            [ 6]  154 	inc	hl
   419C 55            [ 4]  155 	ld	d, l
   419D 5C            [ 4]  156 	ld	e, h
   419E                     157 00104$:
   419E DD 72 F9      [19]  158 	ld	-7 (ix), d
   41A1 DD 73 FA      [19]  159 	ld	-6 (ix), e
   41A4 DD CB FA 2E   [23]  160 	sra	-6 (ix)
   41A8 DD CB F9 1E   [23]  161 	rr	-7 (ix)
                            162 ;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
   41AC C5            [11]  163 	push	bc
   41AD 21 09 09      [10]  164 	ld	hl, #0x0909
   41B0 E5            [11]  165 	push	hl
   41B1 CD FC 64      [17]  166 	call	_cpct_px2byteM0
   41B4 55            [ 4]  167 	ld	d, l
   41B5 21 00 40      [10]  168 	ld	hl, #0x4000
   41B8 E5            [11]  169 	push	hl
   41B9 D5            [11]  170 	push	de
   41BA 33            [ 6]  171 	inc	sp
   41BB 26 C0         [ 7]  172 	ld	h, #0xc0
   41BD E5            [11]  173 	push	hl
   41BE CD 18 65      [17]  174 	call	_cpct_memset
   41C1 C1            [10]  175 	pop	bc
                            176 ;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   41C2 DD 7E F9      [19]  177 	ld	a, -7 (ix)
   41C5 DD 77 FC      [19]  178 	ld	-4 (ix), a
   41C8 5F            [ 4]  179 	ld	e, a
   41C9 1C            [ 4]  180 	inc	e
   41CA 1C            [ 4]  181 	inc	e
   41CB 1C            [ 4]  182 	inc	e
   41CC 1C            [ 4]  183 	inc	e
   41CD 79            [ 4]  184 	ld	a, c
   41CE 3C            [ 4]  185 	inc	a
   41CF DD 77 FE      [19]  186 	ld	-2 (ix), a
   41D2 C5            [11]  187 	push	bc
   41D3 53            [ 4]  188 	ld	d, e
   41D4 DD 5E FE      [19]  189 	ld	e, -2 (ix)
   41D7 D5            [11]  190 	push	de
   41D8 21 00 C0      [10]  191 	ld	hl, #0xc000
   41DB E5            [11]  192 	push	hl
   41DC CD 55 66      [17]  193 	call	_cpct_getScreenPtr
   41DF C1            [10]  194 	pop	bc
                            195 ;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   41E0 DD 7E 06      [19]  196 	ld	a, 6 (ix)
   41E3 DD 77 FB      [19]  197 	ld	-5 (ix), a
   41E6 DD 7E 04      [19]  198 	ld	a, 4 (ix)
   41E9 DD 77 FF      [19]  199 	ld	-1 (ix), a
   41EC E5            [11]  200 	push	hl
   41ED C5            [11]  201 	push	bc
   41EE 11 02 02      [10]  202 	ld	de, #0x0202
   41F1 D5            [11]  203 	push	de
   41F2 CD FC 64      [17]  204 	call	_cpct_px2byteM0
   41F5 DD 75 FD      [19]  205 	ld	-3 (ix), l
   41F8 C1            [10]  206 	pop	bc
   41F9 E1            [10]  207 	pop	hl
   41FA EB            [ 4]  208 	ex	de,hl
   41FB C5            [11]  209 	push	bc
   41FC DD 66 FB      [19]  210 	ld	h, -5 (ix)
   41FF DD 6E FF      [19]  211 	ld	l, -1 (ix)
   4202 E5            [11]  212 	push	hl
   4203 DD 7E FD      [19]  213 	ld	a, -3 (ix)
   4206 F5            [11]  214 	push	af
   4207 33            [ 6]  215 	inc	sp
   4208 D5            [11]  216 	push	de
   4209 CD 83 65      [17]  217 	call	_cpct_drawSolidBox
   420C F1            [10]  218 	pop	af
   420D F1            [10]  219 	pop	af
   420E 33            [ 6]  220 	inc	sp
   420F C1            [10]  221 	pop	bc
                            222 ;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4210 DD 56 F9      [19]  223 	ld	d, -7 (ix)
   4213 59            [ 4]  224 	ld	e, c
   4214 D5            [11]  225 	push	de
   4215 21 00 C0      [10]  226 	ld	hl, #0xc000
   4218 E5            [11]  227 	push	hl
   4219 CD 55 66      [17]  228 	call	_cpct_getScreenPtr
                            229 ;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   421C E5            [11]  230 	push	hl
   421D 21 06 06      [10]  231 	ld	hl, #0x0606
   4220 E5            [11]  232 	push	hl
   4221 CD FC 64      [17]  233 	call	_cpct_px2byteM0
   4224 55            [ 4]  234 	ld	d, l
   4225 C1            [10]  235 	pop	bc
   4226 DD 66 FB      [19]  236 	ld	h, -5 (ix)
   4229 DD 6E FF      [19]  237 	ld	l, -1 (ix)
   422C E5            [11]  238 	push	hl
   422D D5            [11]  239 	push	de
   422E 33            [ 6]  240 	inc	sp
   422F C5            [11]  241 	push	bc
   4230 CD 83 65      [17]  242 	call	_cpct_drawSolidBox
   4233 F1            [10]  243 	pop	af
   4234 F1            [10]  244 	pop	af
   4235 33            [ 6]  245 	inc	sp
                            246 ;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   4236 DD 46 FC      [19]  247 	ld	b, -4 (ix)
   4239 04            [ 4]  248 	inc	b
   423A 04            [ 4]  249 	inc	b
   423B C5            [11]  250 	push	bc
   423C 33            [ 6]  251 	inc	sp
   423D DD 7E FE      [19]  252 	ld	a, -2 (ix)
   4240 F5            [11]  253 	push	af
   4241 33            [ 6]  254 	inc	sp
   4242 21 00 C0      [10]  255 	ld	hl, #0xc000
   4245 E5            [11]  256 	push	hl
   4246 CD 55 66      [17]  257 	call	_cpct_getScreenPtr
                            258 ;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   4249 DD 7E 06      [19]  259 	ld	a, 6 (ix)
   424C C6 FC         [ 7]  260 	add	a, #0xfc
   424E 47            [ 4]  261 	ld	b, a
   424F DD 4E 04      [19]  262 	ld	c, 4 (ix)
   4252 0D            [ 4]  263 	dec	c
   4253 0D            [ 4]  264 	dec	c
   4254 E5            [11]  265 	push	hl
   4255 C5            [11]  266 	push	bc
   4256 11 00 00      [10]  267 	ld	de, #0x0000
   4259 D5            [11]  268 	push	de
   425A CD FC 64      [17]  269 	call	_cpct_px2byteM0
   425D DD 75 FD      [19]  270 	ld	-3 (ix), l
   4260 C1            [10]  271 	pop	bc
   4261 E1            [10]  272 	pop	hl
   4262 EB            [ 4]  273 	ex	de,hl
   4263 C5            [11]  274 	push	bc
   4264 DD 7E FD      [19]  275 	ld	a, -3 (ix)
   4267 F5            [11]  276 	push	af
   4268 33            [ 6]  277 	inc	sp
   4269 D5            [11]  278 	push	de
   426A CD 83 65      [17]  279 	call	_cpct_drawSolidBox
   426D DD F9         [10]  280 	ld	sp,ix
   426F DD E1         [14]  281 	pop	ix
   4271 C9            [10]  282 	ret
                            283 ;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
                            284 ;	---------------------------------
                            285 ; Function drawBoxM2
                            286 ; ---------------------------------
   4272                     287 _drawBoxM2::
   4272 DD E5         [15]  288 	push	ix
   4274 DD 21 00 00   [14]  289 	ld	ix,#0
   4278 DD 39         [15]  290 	add	ix,sp
   427A 21 FA FF      [10]  291 	ld	hl, #-6
   427D 39            [11]  292 	add	hl, sp
   427E F9            [ 6]  293 	ld	sp, hl
                            294 ;src/gui/gui.c:54: int left = (80-width_)/2;
   427F 3E 50         [ 7]  295 	ld	a, #0x50
   4281 DD 96 04      [19]  296 	sub	a, 4 (ix)
   4284 5F            [ 4]  297 	ld	e, a
   4285 3E 00         [ 7]  298 	ld	a, #0x00
   4287 DD 9E 05      [19]  299 	sbc	a, 5 (ix)
   428A 57            [ 4]  300 	ld	d, a
   428B 4B            [ 4]  301 	ld	c, e
   428C 42            [ 4]  302 	ld	b, d
   428D CB 7A         [ 8]  303 	bit	7, d
   428F 28 03         [12]  304 	jr	Z,00103$
   4291 4B            [ 4]  305 	ld	c, e
   4292 42            [ 4]  306 	ld	b, d
   4293 03            [ 6]  307 	inc	bc
   4294                     308 00103$:
   4294 CB 28         [ 8]  309 	sra	b
   4296 CB 19         [ 8]  310 	rr	c
                            311 ;src/gui/gui.c:55: int top = (200-height_)/2;
   4298 3E C8         [ 7]  312 	ld	a, #0xc8
   429A DD 96 06      [19]  313 	sub	a, 6 (ix)
   429D 6F            [ 4]  314 	ld	l, a
   429E 3E 00         [ 7]  315 	ld	a, #0x00
   42A0 DD 9E 07      [19]  316 	sbc	a, 7 (ix)
   42A3 67            [ 4]  317 	ld	h, a
   42A4 55            [ 4]  318 	ld	d, l
   42A5 5C            [ 4]  319 	ld	e, h
   42A6 CB 7C         [ 8]  320 	bit	7, h
   42A8 28 03         [12]  321 	jr	Z,00104$
   42AA 23            [ 6]  322 	inc	hl
   42AB 55            [ 4]  323 	ld	d, l
   42AC 5C            [ 4]  324 	ld	e, h
   42AD                     325 00104$:
   42AD DD 72 FA      [19]  326 	ld	-6 (ix), d
   42B0 DD 73 FB      [19]  327 	ld	-5 (ix), e
   42B3 DD CB FB 2E   [23]  328 	sra	-5 (ix)
   42B7 DD CB FA 1E   [23]  329 	rr	-6 (ix)
                            330 ;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   42BB DD 7E FA      [19]  331 	ld	a, -6 (ix)
   42BE DD 77 FC      [19]  332 	ld	-4 (ix), a
   42C1 C6 05         [ 7]  333 	add	a, #0x05
   42C3 5F            [ 4]  334 	ld	e, a
   42C4 DD 71 FF      [19]  335 	ld	-1 (ix), c
   42C7 51            [ 4]  336 	ld	d, c
   42C8 14            [ 4]  337 	inc	d
   42C9 14            [ 4]  338 	inc	d
   42CA C5            [11]  339 	push	bc
   42CB 7B            [ 4]  340 	ld	a, e
   42CC F5            [11]  341 	push	af
   42CD 33            [ 6]  342 	inc	sp
   42CE D5            [11]  343 	push	de
   42CF 33            [ 6]  344 	inc	sp
   42D0 21 00 C0      [10]  345 	ld	hl, #0xc000
   42D3 E5            [11]  346 	push	hl
   42D4 CD 55 66      [17]  347 	call	_cpct_getScreenPtr
   42D7 C1            [10]  348 	pop	bc
                            349 ;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   42D8 DD 56 06      [19]  350 	ld	d, 6 (ix)
   42DB DD 5E 04      [19]  351 	ld	e, 4 (ix)
   42DE 7B            [ 4]  352 	ld	a, e
   42DF C6 FF         [ 7]  353 	add	a, #0xff
   42E1 DD 75 FD      [19]  354 	ld	-3 (ix), l
   42E4 DD 74 FE      [19]  355 	ld	-2 (ix), h
   42E7 C5            [11]  356 	push	bc
   42E8 D5            [11]  357 	push	de
   42E9 5F            [ 4]  358 	ld	e, a
   42EA D5            [11]  359 	push	de
   42EB AF            [ 4]  360 	xor	a, a
   42EC F5            [11]  361 	push	af
   42ED 33            [ 6]  362 	inc	sp
   42EE DD 6E FD      [19]  363 	ld	l,-3 (ix)
   42F1 DD 66 FE      [19]  364 	ld	h,-2 (ix)
   42F4 E5            [11]  365 	push	hl
   42F5 CD 83 65      [17]  366 	call	_cpct_drawSolidBox
   42F8 F1            [10]  367 	pop	af
   42F9 F1            [10]  368 	pop	af
   42FA 33            [ 6]  369 	inc	sp
   42FB D1            [10]  370 	pop	de
   42FC C1            [10]  371 	pop	bc
                            372 ;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   42FD DD 66 FA      [19]  373 	ld	h, -6 (ix)
   4300 41            [ 4]  374 	ld	b, c
   4301 D5            [11]  375 	push	de
   4302 E5            [11]  376 	push	hl
   4303 33            [ 6]  377 	inc	sp
   4304 C5            [11]  378 	push	bc
   4305 33            [ 6]  379 	inc	sp
   4306 21 00 C0      [10]  380 	ld	hl, #0xc000
   4309 E5            [11]  381 	push	hl
   430A CD 55 66      [17]  382 	call	_cpct_getScreenPtr
   430D 4D            [ 4]  383 	ld	c, l
   430E 44            [ 4]  384 	ld	b, h
   430F D1            [10]  385 	pop	de
                            386 ;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   4310 DD 7E 04      [19]  387 	ld	a, 4 (ix)
   4313 D5            [11]  388 	push	de
   4314 5F            [ 4]  389 	ld	e, a
   4315 D5            [11]  390 	push	de
   4316 3E F8         [ 7]  391 	ld	a, #0xf8
   4318 F5            [11]  392 	push	af
   4319 33            [ 6]  393 	inc	sp
   431A C5            [11]  394 	push	bc
   431B CD 83 65      [17]  395 	call	_cpct_drawSolidBox
   431E F1            [10]  396 	pop	af
   431F F1            [10]  397 	pop	af
   4320 33            [ 6]  398 	inc	sp
   4321 D1            [10]  399 	pop	de
                            400 ;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   4322 DD 56 FC      [19]  401 	ld	d, -4 (ix)
   4325 14            [ 4]  402 	inc	d
   4326 DD 46 FF      [19]  403 	ld	b, -1 (ix)
   4329 04            [ 4]  404 	inc	b
   432A D5            [11]  405 	push	de
   432B 58            [ 4]  406 	ld	e, b
   432C D5            [11]  407 	push	de
   432D 21 00 C0      [10]  408 	ld	hl, #0xc000
   4330 E5            [11]  409 	push	hl
   4331 CD 55 66      [17]  410 	call	_cpct_getScreenPtr
   4334 4D            [ 4]  411 	ld	c, l
   4335 44            [ 4]  412 	ld	b, h
   4336 D1            [10]  413 	pop	de
                            414 ;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   4337 DD 56 06      [19]  415 	ld	d, 6 (ix)
   433A 15            [ 4]  416 	dec	d
   433B 15            [ 4]  417 	dec	d
   433C 1D            [ 4]  418 	dec	e
   433D 1D            [ 4]  419 	dec	e
   433E D5            [11]  420 	push	de
   433F 33            [ 6]  421 	inc	sp
   4340 53            [ 4]  422 	ld	d, e
   4341 1E FF         [ 7]  423 	ld	e,#0xff
   4343 D5            [11]  424 	push	de
   4344 C5            [11]  425 	push	bc
   4345 CD 83 65      [17]  426 	call	_cpct_drawSolidBox
   4348 DD F9         [10]  427 	ld	sp,ix
   434A DD E1         [14]  428 	pop	ix
   434C C9            [10]  429 	ret
                            430 ;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            431 ;	---------------------------------
                            432 ; Function EraseMenuEntry
                            433 ; ---------------------------------
   434D                     434 _EraseMenuEntry::
   434D DD E5         [15]  435 	push	ix
   434F DD 21 00 00   [14]  436 	ld	ix,#0
   4353 DD 39         [15]  437 	add	ix,sp
   4355 3B            [ 6]  438 	dec	sp
                            439 ;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   4356 DD 4E 06      [19]  440 	ld	c,6 (ix)
   4359 06 00         [ 7]  441 	ld	b,#0x00
   435B 69            [ 4]  442 	ld	l, c
   435C 60            [ 4]  443 	ld	h, b
   435D 29            [11]  444 	add	hl, hl
   435E 29            [11]  445 	add	hl, hl
   435F 09            [11]  446 	add	hl, bc
   4360 29            [11]  447 	add	hl, hl
   4361 4D            [ 4]  448 	ld	c, l
   4362 44            [ 4]  449 	ld	b, h
   4363 3E C9         [ 7]  450 	ld	a, #0xc9
   4365 91            [ 4]  451 	sub	a, c
   4366 6F            [ 4]  452 	ld	l, a
   4367 3E 00         [ 7]  453 	ld	a, #0x00
   4369 98            [ 4]  454 	sbc	a, b
   436A 67            [ 4]  455 	ld	h, a
   436B 5D            [ 4]  456 	ld	e, l
   436C 54            [ 4]  457 	ld	d, h
   436D CB 7C         [ 8]  458 	bit	7, h
   436F 28 03         [12]  459 	jr	Z,00103$
   4371 5D            [ 4]  460 	ld	e, l
   4372 54            [ 4]  461 	ld	d, h
   4373 13            [ 6]  462 	inc	de
   4374                     463 00103$:
   4374 CB 2A         [ 8]  464 	sra	d
   4376 CB 1B         [ 8]  465 	rr	e
   4378 53            [ 4]  466 	ld	d, e
   4379 DD 6E 07      [19]  467 	ld	l, 7 (ix)
   437C 5D            [ 4]  468 	ld	e, l
   437D 29            [11]  469 	add	hl, hl
   437E 29            [11]  470 	add	hl, hl
   437F 19            [11]  471 	add	hl, de
   4380 29            [11]  472 	add	hl, hl
   4381 DD 75 FF      [19]  473 	ld	-1 (ix), l
   4384 7A            [ 4]  474 	ld	a, d
   4385 DD 86 FF      [19]  475 	add	a, -1 (ix)
   4388 57            [ 4]  476 	ld	d, a
   4389 C5            [11]  477 	push	bc
   438A 1E 20         [ 7]  478 	ld	e, #0x20
   438C D5            [11]  479 	push	de
   438D 21 00 C0      [10]  480 	ld	hl, #0xc000
   4390 E5            [11]  481 	push	hl
   4391 CD 55 66      [17]  482 	call	_cpct_getScreenPtr
   4394 11 11 0A      [10]  483 	ld	de, #0x0a11
   4397 D5            [11]  484 	push	de
   4398 3E FF         [ 7]  485 	ld	a, #0xff
   439A F5            [11]  486 	push	af
   439B 33            [ 6]  487 	inc	sp
   439C E5            [11]  488 	push	hl
   439D CD 83 65      [17]  489 	call	_cpct_drawSolidBox
   43A0 F1            [10]  490 	pop	af
   43A1 F1            [10]  491 	pop	af
   43A2 33            [ 6]  492 	inc	sp
   43A3 C1            [10]  493 	pop	bc
                            494 ;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   43A4 3E CA         [ 7]  495 	ld	a, #0xca
   43A6 91            [ 4]  496 	sub	a, c
   43A7 5F            [ 4]  497 	ld	e, a
   43A8 3E 00         [ 7]  498 	ld	a, #0x00
   43AA 98            [ 4]  499 	sbc	a, b
   43AB 57            [ 4]  500 	ld	d, a
   43AC 4B            [ 4]  501 	ld	c, e
   43AD 42            [ 4]  502 	ld	b, d
   43AE CB 7A         [ 8]  503 	bit	7, d
   43B0 28 03         [12]  504 	jr	Z,00104$
   43B2 4B            [ 4]  505 	ld	c, e
   43B3 42            [ 4]  506 	ld	b, d
   43B4 03            [ 6]  507 	inc	bc
   43B5                     508 00104$:
   43B5 CB 28         [ 8]  509 	sra	b
   43B7 CB 19         [ 8]  510 	rr	c
   43B9 79            [ 4]  511 	ld	a, c
   43BA DD 86 FF      [19]  512 	add	a, -1 (ix)
   43BD 5F            [ 4]  513 	ld	e, a
   43BE DD 6E 07      [19]  514 	ld	l, 7 (ix)
   43C1 26 00         [ 7]  515 	ld	h, #0x00
   43C3 29            [11]  516 	add	hl, hl
   43C4 4D            [ 4]  517 	ld	c, l
   43C5 44            [ 4]  518 	ld	b, h
   43C6 DD 6E 04      [19]  519 	ld	l,4 (ix)
   43C9 DD 66 05      [19]  520 	ld	h,5 (ix)
   43CC 09            [11]  521 	add	hl, bc
   43CD E5            [11]  522 	push	hl
   43CE 4E            [ 7]  523 	ld	c, (hl)
   43CF 23            [ 6]  524 	inc	hl
   43D0 46            [ 7]  525 	ld	b, (hl)
   43D1 C5            [11]  526 	push	bc
   43D2 CD 3F 65      [17]  527 	call	_strlen
   43D5 F1            [10]  528 	pop	af
   43D6 4D            [ 4]  529 	ld	c, l
   43D7 44            [ 4]  530 	ld	b, h
   43D8 E1            [10]  531 	pop	hl
   43D9 3E 52         [ 7]  532 	ld	a, #0x52
   43DB 91            [ 4]  533 	sub	a, c
   43DC 4F            [ 4]  534 	ld	c, a
   43DD 3E 00         [ 7]  535 	ld	a, #0x00
   43DF 98            [ 4]  536 	sbc	a, b
   43E0 47            [ 4]  537 	ld	b, a
   43E1 CB 38         [ 8]  538 	srl	b
   43E3 CB 19         [ 8]  539 	rr	c
   43E5 E5            [11]  540 	push	hl
   43E6 43            [ 4]  541 	ld	b, e
   43E7 C5            [11]  542 	push	bc
   43E8 01 00 C0      [10]  543 	ld	bc, #0xc000
   43EB C5            [11]  544 	push	bc
   43EC CD 55 66      [17]  545 	call	_cpct_getScreenPtr
   43EF EB            [ 4]  546 	ex	de,hl
   43F0 E1            [10]  547 	pop	hl
                            548 ;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   43F1 4E            [ 7]  549 	ld	c, (hl)
   43F2 23            [ 6]  550 	inc	hl
   43F3 46            [ 7]  551 	ld	b, (hl)
   43F4 AF            [ 4]  552 	xor	a, a
   43F5 F5            [11]  553 	push	af
   43F6 33            [ 6]  554 	inc	sp
   43F7 D5            [11]  555 	push	de
   43F8 C5            [11]  556 	push	bc
   43F9 CD 6F 61      [17]  557 	call	_cpct_drawStringM2
   43FC F1            [10]  558 	pop	af
   43FD F1            [10]  559 	pop	af
   43FE 33            [ 6]  560 	inc	sp
   43FF 33            [ 6]  561 	inc	sp
   4400 DD E1         [14]  562 	pop	ix
   4402 C9            [10]  563 	ret
                            564 ;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                            565 ;	---------------------------------
                            566 ; Function drawMenuEntry
                            567 ; ---------------------------------
   4403                     568 _drawMenuEntry::
   4403 DD E5         [15]  569 	push	ix
   4405 DD 21 00 00   [14]  570 	ld	ix,#0
   4409 DD 39         [15]  571 	add	ix,sp
   440B 21 FA FF      [10]  572 	ld	hl, #-6
   440E 39            [11]  573 	add	hl, sp
   440F F9            [ 6]  574 	ld	sp, hl
                            575 ;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   4410 DD 4E 06      [19]  576 	ld	c,6 (ix)
   4413 06 00         [ 7]  577 	ld	b,#0x00
   4415 69            [ 4]  578 	ld	l, c
   4416 60            [ 4]  579 	ld	h, b
   4417 29            [11]  580 	add	hl, hl
   4418 29            [11]  581 	add	hl, hl
   4419 09            [11]  582 	add	hl, bc
   441A 29            [11]  583 	add	hl, hl
   441B 4D            [ 4]  584 	ld	c, l
   441C 44            [ 4]  585 	ld	b, h
   441D 3E C9         [ 7]  586 	ld	a, #0xc9
   441F 91            [ 4]  587 	sub	a, c
   4420 6F            [ 4]  588 	ld	l, a
   4421 3E 00         [ 7]  589 	ld	a, #0x00
   4423 98            [ 4]  590 	sbc	a, b
   4424 67            [ 4]  591 	ld	h, a
   4425 5D            [ 4]  592 	ld	e, l
   4426 54            [ 4]  593 	ld	d, h
   4427 CB 7C         [ 8]  594 	bit	7, h
   4429 28 03         [12]  595 	jr	Z,00114$
   442B 5D            [ 4]  596 	ld	e, l
   442C 54            [ 4]  597 	ld	d, h
   442D 13            [ 6]  598 	inc	de
   442E                     599 00114$:
   442E CB 2A         [ 8]  600 	sra	d
   4430 CB 1B         [ 8]  601 	rr	e
   4432 53            [ 4]  602 	ld	d, e
   4433 DD 6E 07      [19]  603 	ld	l, 7 (ix)
   4436 5D            [ 4]  604 	ld	e, l
   4437 29            [11]  605 	add	hl, hl
   4438 29            [11]  606 	add	hl, hl
   4439 19            [11]  607 	add	hl, de
   443A 29            [11]  608 	add	hl, hl
   443B 7A            [ 4]  609 	ld	a, d
   443C 85            [ 4]  610 	add	a, l
   443D 57            [ 4]  611 	ld	d, a
   443E C5            [11]  612 	push	bc
   443F 1E 20         [ 7]  613 	ld	e, #0x20
   4441 D5            [11]  614 	push	de
   4442 21 00 C0      [10]  615 	ld	hl, #0xc000
   4445 E5            [11]  616 	push	hl
   4446 CD 55 66      [17]  617 	call	_cpct_getScreenPtr
   4449 11 11 0A      [10]  618 	ld	de, #0x0a11
   444C D5            [11]  619 	push	de
   444D AF            [ 4]  620 	xor	a, a
   444E F5            [11]  621 	push	af
   444F 33            [ 6]  622 	inc	sp
   4450 E5            [11]  623 	push	hl
   4451 CD 83 65      [17]  624 	call	_cpct_drawSolidBox
   4454 F1            [10]  625 	pop	af
   4455 F1            [10]  626 	pop	af
   4456 33            [ 6]  627 	inc	sp
   4457 C1            [10]  628 	pop	bc
                            629 ;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
   4458 11 B0 36      [10]  630 	ld	de, #0x36b0
   445B                     631 00108$:
   445B 1B            [ 6]  632 	dec	de
   445C 7A            [ 4]  633 	ld	a, d
   445D B3            [ 4]  634 	or	a,e
   445E 20 FB         [12]  635 	jr	NZ,00108$
                            636 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   4460 3E CA         [ 7]  637 	ld	a, #0xca
   4462 91            [ 4]  638 	sub	a, c
   4463 DD 77 FD      [19]  639 	ld	-3 (ix), a
   4466 3E 00         [ 7]  640 	ld	a, #0x00
   4468 98            [ 4]  641 	sbc	a, b
   4469 DD 77 FE      [19]  642 	ld	-2 (ix), a
   446C 07            [ 4]  643 	rlca
   446D E6 01         [ 7]  644 	and	a,#0x01
   446F 5F            [ 4]  645 	ld	e, a
   4470 21 00 00      [10]  646 	ld	hl, #0x0000
   4473 E3            [19]  647 	ex	(sp), hl
   4474                     648 00110$:
   4474 DD 4E 06      [19]  649 	ld	c, 6 (ix)
   4477 06 00         [ 7]  650 	ld	b, #0x00
   4479 DD 7E FA      [19]  651 	ld	a, -6 (ix)
   447C 91            [ 4]  652 	sub	a, c
   447D DD 7E FB      [19]  653 	ld	a, -5 (ix)
   4480 98            [ 4]  654 	sbc	a, b
   4481 E2 86 44      [10]  655 	jp	PO, 00146$
   4484 EE 80         [ 7]  656 	xor	a, #0x80
   4486                     657 00146$:
   4486 F2 2A 45      [10]  658 	jp	P, 00112$
                            659 ;src/gui/gui.c:99: if(i==iSelect)
   4489 DD 4E 07      [19]  660 	ld	c, 7 (ix)
   448C 06 00         [ 7]  661 	ld	b, #0x00
   448E DD 7E FA      [19]  662 	ld	a, -6 (ix)
   4491 91            [ 4]  663 	sub	a, c
   4492 20 0A         [12]  664 	jr	NZ,00103$
   4494 DD 7E FB      [19]  665 	ld	a, -5 (ix)
   4497 90            [ 4]  666 	sub	a, b
   4498 20 04         [12]  667 	jr	NZ,00103$
                            668 ;src/gui/gui.c:100: penSelected = 1;
   449A 0E 01         [ 7]  669 	ld	c, #0x01
   449C 18 02         [12]  670 	jr	00104$
   449E                     671 00103$:
                            672 ;src/gui/gui.c:102: penSelected = 0;
   449E 0E 00         [ 7]  673 	ld	c, #0x00
   44A0                     674 00104$:
                            675 ;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   44A0 DD 6E FD      [19]  676 	ld	l,-3 (ix)
   44A3 DD 66 FE      [19]  677 	ld	h,-2 (ix)
   44A6 7B            [ 4]  678 	ld	a, e
   44A7 B7            [ 4]  679 	or	a, a
   44A8 28 07         [12]  680 	jr	Z,00115$
   44AA DD 6E FD      [19]  681 	ld	l,-3 (ix)
   44AD DD 66 FE      [19]  682 	ld	h,-2 (ix)
   44B0 23            [ 6]  683 	inc	hl
   44B1                     684 00115$:
   44B1 45            [ 4]  685 	ld	b, l
   44B2 CB 2C         [ 8]  686 	sra	h
   44B4 CB 18         [ 8]  687 	rr	b
   44B6 DD 6E FA      [19]  688 	ld	l, -6 (ix)
   44B9 D5            [11]  689 	push	de
   44BA 5D            [ 4]  690 	ld	e, l
   44BB 29            [11]  691 	add	hl, hl
   44BC 29            [11]  692 	add	hl, hl
   44BD 19            [11]  693 	add	hl, de
   44BE 29            [11]  694 	add	hl, hl
   44BF D1            [10]  695 	pop	de
   44C0 78            [ 4]  696 	ld	a, b
   44C1 85            [ 4]  697 	add	a, l
   44C2 DD 77 FC      [19]  698 	ld	-4 (ix), a
   44C5 DD 46 FA      [19]  699 	ld	b, -6 (ix)
   44C8 DD 56 FB      [19]  700 	ld	d, -5 (ix)
   44CB CB 20         [ 8]  701 	sla	b
   44CD CB 12         [ 8]  702 	rl	d
   44CF DD 7E 04      [19]  703 	ld	a, 4 (ix)
   44D2 80            [ 4]  704 	add	a, b
   44D3 47            [ 4]  705 	ld	b, a
   44D4 DD 7E 05      [19]  706 	ld	a, 5 (ix)
   44D7 8A            [ 4]  707 	adc	a, d
   44D8 57            [ 4]  708 	ld	d, a
   44D9 68            [ 4]  709 	ld	l, b
   44DA 62            [ 4]  710 	ld	h, d
   44DB 7E            [ 7]  711 	ld	a, (hl)
   44DC 23            [ 6]  712 	inc	hl
   44DD 66            [ 7]  713 	ld	h, (hl)
   44DE 6F            [ 4]  714 	ld	l, a
   44DF C5            [11]  715 	push	bc
   44E0 E5            [11]  716 	push	hl
   44E1 CD 3F 65      [17]  717 	call	_strlen
   44E4 F1            [10]  718 	pop	af
   44E5 C1            [10]  719 	pop	bc
   44E6 3E 52         [ 7]  720 	ld	a, #0x52
   44E8 95            [ 4]  721 	sub	a, l
   44E9 6F            [ 4]  722 	ld	l, a
   44EA 3E 00         [ 7]  723 	ld	a, #0x00
   44EC 9C            [ 4]  724 	sbc	a, h
   44ED 67            [ 4]  725 	ld	h, a
   44EE CB 3C         [ 8]  726 	srl	h
   44F0 CB 1D         [ 8]  727 	rr	l
   44F2 DD 75 FF      [19]  728 	ld	-1 (ix), l
   44F5 C5            [11]  729 	push	bc
   44F6 D5            [11]  730 	push	de
   44F7 DD 66 FC      [19]  731 	ld	h, -4 (ix)
   44FA DD 6E FF      [19]  732 	ld	l, -1 (ix)
   44FD E5            [11]  733 	push	hl
   44FE 21 00 C0      [10]  734 	ld	hl, #0xc000
   4501 E5            [11]  735 	push	hl
   4502 CD 55 66      [17]  736 	call	_cpct_getScreenPtr
   4505 D1            [10]  737 	pop	de
   4506 C1            [10]  738 	pop	bc
                            739 ;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
   4507 E5            [11]  740 	push	hl
   4508 FD E1         [14]  741 	pop	iy
   450A 68            [ 4]  742 	ld	l, b
   450B 62            [ 4]  743 	ld	h, d
   450C 7E            [ 7]  744 	ld	a, (hl)
   450D 23            [ 6]  745 	inc	hl
   450E 66            [ 7]  746 	ld	h, (hl)
   450F 6F            [ 4]  747 	ld	l, a
   4510 D5            [11]  748 	push	de
   4511 79            [ 4]  749 	ld	a, c
   4512 F5            [11]  750 	push	af
   4513 33            [ 6]  751 	inc	sp
   4514 FD E5         [15]  752 	push	iy
   4516 E5            [11]  753 	push	hl
   4517 CD 6F 61      [17]  754 	call	_cpct_drawStringM2
   451A F1            [10]  755 	pop	af
   451B F1            [10]  756 	pop	af
   451C 33            [ 6]  757 	inc	sp
   451D D1            [10]  758 	pop	de
                            759 ;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
   451E DD 34 FA      [23]  760 	inc	-6 (ix)
   4521 C2 74 44      [10]  761 	jp	NZ,00110$
   4524 DD 34 FB      [23]  762 	inc	-5 (ix)
   4527 C3 74 44      [10]  763 	jp	00110$
   452A                     764 00112$:
   452A DD F9         [10]  765 	ld	sp, ix
   452C DD E1         [14]  766 	pop	ix
   452E C9            [10]  767 	ret
                            768 ;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
                            769 ;	---------------------------------
                            770 ; Function drawMenu
                            771 ; ---------------------------------
   452F                     772 _drawMenu::
   452F DD E5         [15]  773 	push	ix
   4531 DD 21 00 00   [14]  774 	ld	ix,#0
   4535 DD 39         [15]  775 	add	ix,sp
   4537 F5            [11]  776 	push	af
                            777 ;src/gui/gui.c:112: u8 iSelect=0;
   4538 06 00         [ 7]  778 	ld	b, #0x00
                            779 ;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
   453A C5            [11]  780 	push	bc
   453B 21 00 40      [10]  781 	ld	hl, #0x4000
   453E E5            [11]  782 	push	hl
   453F 3E FF         [ 7]  783 	ld	a, #0xff
   4541 F5            [11]  784 	push	af
   4542 33            [ 6]  785 	inc	sp
   4543 26 C0         [ 7]  786 	ld	h, #0xc0
   4545 E5            [11]  787 	push	hl
   4546 CD 18 65      [17]  788 	call	_cpct_memset
   4549 C1            [10]  789 	pop	bc
                            790 ;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
   454A DD 5E 06      [19]  791 	ld	e,6 (ix)
   454D 16 00         [ 7]  792 	ld	d,#0x00
   454F 6B            [ 4]  793 	ld	l, e
   4550 62            [ 4]  794 	ld	h, d
   4551 29            [11]  795 	add	hl, hl
   4552 19            [11]  796 	add	hl, de
   4553 29            [11]  797 	add	hl, hl
   4554 29            [11]  798 	add	hl, hl
   4555 C5            [11]  799 	push	bc
   4556 E5            [11]  800 	push	hl
   4557 21 1E 00      [10]  801 	ld	hl, #0x001e
   455A E5            [11]  802 	push	hl
   455B CD 72 42      [17]  803 	call	_drawBoxM2
   455E F1            [10]  804 	pop	af
   455F F1            [10]  805 	pop	af
   4560 AF            [ 4]  806 	xor	a, a
   4561 F5            [11]  807 	push	af
   4562 33            [ 6]  808 	inc	sp
   4563 DD 7E 06      [19]  809 	ld	a, 6 (ix)
   4566 F5            [11]  810 	push	af
   4567 33            [ 6]  811 	inc	sp
   4568 DD 6E 04      [19]  812 	ld	l,4 (ix)
   456B DD 66 05      [19]  813 	ld	h,5 (ix)
   456E E5            [11]  814 	push	hl
   456F CD 03 44      [17]  815 	call	_drawMenuEntry
   4572 F1            [10]  816 	pop	af
   4573 F1            [10]  817 	pop	af
   4574 C1            [10]  818 	pop	bc
                            819 ;src/gui/gui.c:120: do{
   4575 DD 4E 06      [19]  820 	ld	c, 6 (ix)
   4578 0D            [ 4]  821 	dec	c
   4579                     822 00111$:
                            823 ;src/gui/gui.c:121: cpct_scanKeyboard(); 
   4579 C5            [11]  824 	push	bc
   457A CD 75 66      [17]  825 	call	_cpct_scanKeyboard
   457D 21 00 01      [10]  826 	ld	hl, #0x0100
   4580 CD 38 61      [17]  827 	call	_cpct_isKeyPressed
   4583 C1            [10]  828 	pop	bc
   4584 7D            [ 4]  829 	ld	a, l
   4585 B7            [ 4]  830 	or	a, a
   4586 28 32         [12]  831 	jr	Z,00105$
                            832 ;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
   4588 C5            [11]  833 	push	bc
   4589 C5            [11]  834 	push	bc
   458A 33            [ 6]  835 	inc	sp
   458B DD 7E 06      [19]  836 	ld	a, 6 (ix)
   458E F5            [11]  837 	push	af
   458F 33            [ 6]  838 	inc	sp
   4590 DD 6E 04      [19]  839 	ld	l,4 (ix)
   4593 DD 66 05      [19]  840 	ld	h,5 (ix)
   4596 E5            [11]  841 	push	hl
   4597 CD 4D 43      [17]  842 	call	_EraseMenuEntry
   459A F1            [10]  843 	pop	af
   459B F1            [10]  844 	pop	af
   459C C1            [10]  845 	pop	bc
                            846 ;src/gui/gui.c:127: if(iSelect ==0)
   459D 78            [ 4]  847 	ld	a, b
   459E B7            [ 4]  848 	or	a, a
   459F 20 03         [12]  849 	jr	NZ,00102$
                            850 ;src/gui/gui.c:128: iSelect = nbEntry-1;
   45A1 41            [ 4]  851 	ld	b, c
   45A2 18 01         [12]  852 	jr	00103$
   45A4                     853 00102$:
                            854 ;src/gui/gui.c:130: iSelect--;
   45A4 05            [ 4]  855 	dec	b
   45A5                     856 00103$:
                            857 ;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
   45A5 C5            [11]  858 	push	bc
   45A6 C5            [11]  859 	push	bc
   45A7 33            [ 6]  860 	inc	sp
   45A8 DD 7E 06      [19]  861 	ld	a, 6 (ix)
   45AB F5            [11]  862 	push	af
   45AC 33            [ 6]  863 	inc	sp
   45AD DD 6E 04      [19]  864 	ld	l,4 (ix)
   45B0 DD 66 05      [19]  865 	ld	h,5 (ix)
   45B3 E5            [11]  866 	push	hl
   45B4 CD 03 44      [17]  867 	call	_drawMenuEntry
   45B7 F1            [10]  868 	pop	af
   45B8 F1            [10]  869 	pop	af
   45B9 C1            [10]  870 	pop	bc
   45BA                     871 00105$:
                            872 ;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
   45BA C5            [11]  873 	push	bc
   45BB 21 00 04      [10]  874 	ld	hl, #0x0400
   45BE CD 38 61      [17]  875 	call	_cpct_isKeyPressed
   45C1 5D            [ 4]  876 	ld	e, l
   45C2 C1            [10]  877 	pop	bc
   45C3 7B            [ 4]  878 	ld	a, e
   45C4 B7            [ 4]  879 	or	a, a
   45C5 28 48         [12]  880 	jr	Z,00112$
                            881 ;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
   45C7 C5            [11]  882 	push	bc
   45C8 C5            [11]  883 	push	bc
   45C9 33            [ 6]  884 	inc	sp
   45CA DD 7E 06      [19]  885 	ld	a, 6 (ix)
   45CD F5            [11]  886 	push	af
   45CE 33            [ 6]  887 	inc	sp
   45CF DD 6E 04      [19]  888 	ld	l,4 (ix)
   45D2 DD 66 05      [19]  889 	ld	h,5 (ix)
   45D5 E5            [11]  890 	push	hl
   45D6 CD 4D 43      [17]  891 	call	_EraseMenuEntry
   45D9 F1            [10]  892 	pop	af
   45DA F1            [10]  893 	pop	af
   45DB C1            [10]  894 	pop	bc
                            895 ;src/gui/gui.c:139: if(iSelect == nbEntry-1)
   45DC DD 5E 06      [19]  896 	ld	e, 6 (ix)
   45DF 16 00         [ 7]  897 	ld	d, #0x00
   45E1 1B            [ 6]  898 	dec	de
   45E2 DD 70 FE      [19]  899 	ld	-2 (ix), b
   45E5 DD 36 FF 00   [19]  900 	ld	-1 (ix), #0x00
   45E9 7B            [ 4]  901 	ld	a, e
   45EA DD 96 FE      [19]  902 	sub	a, -2 (ix)
   45ED 20 0A         [12]  903 	jr	NZ,00107$
   45EF 7A            [ 4]  904 	ld	a, d
   45F0 DD 96 FF      [19]  905 	sub	a, -1 (ix)
   45F3 20 04         [12]  906 	jr	NZ,00107$
                            907 ;src/gui/gui.c:140: iSelect = 0;
   45F5 06 00         [ 7]  908 	ld	b, #0x00
   45F7 18 01         [12]  909 	jr	00108$
   45F9                     910 00107$:
                            911 ;src/gui/gui.c:142: iSelect++;
   45F9 04            [ 4]  912 	inc	b
   45FA                     913 00108$:
                            914 ;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
   45FA C5            [11]  915 	push	bc
   45FB C5            [11]  916 	push	bc
   45FC 33            [ 6]  917 	inc	sp
   45FD DD 7E 06      [19]  918 	ld	a, 6 (ix)
   4600 F5            [11]  919 	push	af
   4601 33            [ 6]  920 	inc	sp
   4602 DD 6E 04      [19]  921 	ld	l,4 (ix)
   4605 DD 66 05      [19]  922 	ld	h,5 (ix)
   4608 E5            [11]  923 	push	hl
   4609 CD 03 44      [17]  924 	call	_drawMenuEntry
   460C F1            [10]  925 	pop	af
   460D F1            [10]  926 	pop	af
   460E C1            [10]  927 	pop	bc
   460F                     928 00112$:
                            929 ;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
   460F C5            [11]  930 	push	bc
   4610 21 02 04      [10]  931 	ld	hl, #0x0402
   4613 CD 38 61      [17]  932 	call	_cpct_isKeyPressed
   4616 C1            [10]  933 	pop	bc
   4617 7D            [ 4]  934 	ld	a, l
   4618 B7            [ 4]  935 	or	a, a
   4619 CA 79 45      [10]  936 	jp	Z, 00111$
                            937 ;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
   461C 11 B0 36      [10]  938 	ld	de, #0x36b0
   461F                     939 00117$:
   461F EB            [ 4]  940 	ex	de,hl
   4620 2B            [ 6]  941 	dec	hl
   4621 5D            [ 4]  942 	ld	e, l
   4622 7C            [ 4]  943 	ld	a,h
   4623 57            [ 4]  944 	ld	d,a
   4624 B5            [ 4]  945 	or	a,l
   4625 20 F8         [12]  946 	jr	NZ,00117$
                            947 ;src/gui/gui.c:152: return iSelect;
   4627 68            [ 4]  948 	ld	l, b
   4628 DD F9         [10]  949 	ld	sp, ix
   462A DD E1         [14]  950 	pop	ix
   462C C9            [10]  951 	ret
                            952 ;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
                            953 ;	---------------------------------
                            954 ; Function drawWindow
                            955 ; ---------------------------------
   462D                     956 _drawWindow::
   462D DD E5         [15]  957 	push	ix
   462F DD 21 00 00   [14]  958 	ld	ix,#0
   4633 DD 39         [15]  959 	add	ix,sp
   4635 21 F8 FF      [10]  960 	ld	hl, #-8
   4638 39            [11]  961 	add	hl, sp
   4639 F9            [ 6]  962 	ld	sp, hl
                            963 ;src/gui/gui.c:166: u8 valueReturn=0;
   463A DD 36 F8 00   [19]  964 	ld	-8 (ix), #0x00
                            965 ;src/gui/gui.c:169: if(button == 0)
   463E DD 7E 07      [19]  966 	ld	a, 7 (ix)
   4641 B7            [ 4]  967 	or	a, a
   4642 20 05         [12]  968 	jr	NZ,00102$
                            969 ;src/gui/gui.c:170: buttonTxt = "<OK>";
   4644 11 AA 47      [10]  970 	ld	de, #___str_0+0
   4647 18 03         [12]  971 	jr	00103$
   4649                     972 00102$:
                            973 ;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
   4649 11 AF 47      [10]  974 	ld	de, #___str_1
   464C                     975 00103$:
                            976 ;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
   464C DD 4E 06      [19]  977 	ld	c, 6 (ix)
   464F 06 00         [ 7]  978 	ld	b, #0x00
   4651 03            [ 6]  979 	inc	bc
   4652 03            [ 6]  980 	inc	bc
   4653 69            [ 4]  981 	ld	l, c
   4654 60            [ 4]  982 	ld	h, b
   4655 29            [11]  983 	add	hl, hl
   4656 09            [11]  984 	add	hl, bc
   4657 29            [11]  985 	add	hl, hl
   4658 29            [11]  986 	add	hl, hl
   4659 C5            [11]  987 	push	bc
   465A D5            [11]  988 	push	de
   465B E5            [11]  989 	push	hl
   465C 21 32 00      [10]  990 	ld	hl, #0x0032
   465F E5            [11]  991 	push	hl
   4660 CD 72 42      [17]  992 	call	_drawBoxM2
   4663 F1            [10]  993 	pop	af
   4664 F1            [10]  994 	pop	af
   4665 D1            [10]  995 	pop	de
   4666 C1            [10]  996 	pop	bc
                            997 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   4667 69            [ 4]  998 	ld	l, c
   4668 60            [ 4]  999 	ld	h, b
   4669 29            [11] 1000 	add	hl, hl
   466A 29            [11] 1001 	add	hl, hl
   466B 09            [11] 1002 	add	hl, bc
   466C 29            [11] 1003 	add	hl, hl
   466D 3E CA         [ 7] 1004 	ld	a, #0xca
   466F 95            [ 4] 1005 	sub	a, l
   4670 DD 77 F9      [19] 1006 	ld	-7 (ix), a
   4673 3E 00         [ 7] 1007 	ld	a, #0x00
   4675 9C            [ 4] 1008 	sbc	a, h
   4676 DD 77 FA      [19] 1009 	ld	-6 (ix), a
   4679 07            [ 4] 1010 	rlca
   467A E6 01         [ 7] 1011 	and	a,#0x01
   467C DD 77 FD      [19] 1012 	ld	-3 (ix), a
   467F 0E 00         [ 7] 1013 	ld	c, #0x00
   4681                    1014 00114$:
                           1015 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4681 DD 7E F9      [19] 1016 	ld	a, -7 (ix)
   4684 C6 01         [ 7] 1017 	add	a, #0x01
   4686 DD 77 FB      [19] 1018 	ld	-5 (ix), a
   4689 DD 7E FA      [19] 1019 	ld	a, -6 (ix)
   468C CE 00         [ 7] 1020 	adc	a, #0x00
   468E DD 77 FC      [19] 1021 	ld	-4 (ix), a
                           1022 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   4691 79            [ 4] 1023 	ld	a, c
   4692 DD 96 06      [19] 1024 	sub	a, 6 (ix)
   4695 D2 21 47      [10] 1025 	jp	NC, 00104$
                           1026 ;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4698 DD 6E F9      [19] 1027 	ld	l, -7 (ix)
   469B DD 46 FA      [19] 1028 	ld	b, -6 (ix)
   469E DD 7E FD      [19] 1029 	ld	a, -3 (ix)
   46A1 B7            [ 4] 1030 	or	a, a
   46A2 28 06         [12] 1031 	jr	Z,00118$
   46A4 DD 6E FB      [19] 1032 	ld	l, -5 (ix)
   46A7 DD 46 FC      [19] 1033 	ld	b, -4 (ix)
   46AA                    1034 00118$:
   46AA CB 28         [ 8] 1035 	sra	b
   46AC CB 1D         [ 8] 1036 	rr	l
   46AE 45            [ 4] 1037 	ld	b, l
   46AF 69            [ 4] 1038 	ld	l, c
   46B0 29            [11] 1039 	add	hl, hl
   46B1 29            [11] 1040 	add	hl, hl
   46B2 09            [11] 1041 	add	hl, bc
   46B3 29            [11] 1042 	add	hl, hl
   46B4 78            [ 4] 1043 	ld	a, b
   46B5 85            [ 4] 1044 	add	a, l
   46B6 47            [ 4] 1045 	ld	b, a
   46B7 69            [ 4] 1046 	ld	l, c
   46B8 26 00         [ 7] 1047 	ld	h, #0x00
   46BA 29            [11] 1048 	add	hl, hl
   46BB DD 75 FE      [19] 1049 	ld	-2 (ix), l
   46BE DD 74 FF      [19] 1050 	ld	-1 (ix), h
   46C1 DD 7E 04      [19] 1051 	ld	a, 4 (ix)
   46C4 DD 86 FE      [19] 1052 	add	a, -2 (ix)
   46C7 DD 77 FE      [19] 1053 	ld	-2 (ix), a
   46CA DD 7E 05      [19] 1054 	ld	a, 5 (ix)
   46CD DD 8E FF      [19] 1055 	adc	a, -1 (ix)
   46D0 DD 77 FF      [19] 1056 	ld	-1 (ix), a
   46D3 DD 6E FE      [19] 1057 	ld	l,-2 (ix)
   46D6 DD 66 FF      [19] 1058 	ld	h,-1 (ix)
   46D9 7E            [ 7] 1059 	ld	a, (hl)
   46DA 23            [ 6] 1060 	inc	hl
   46DB 66            [ 7] 1061 	ld	h, (hl)
   46DC 6F            [ 4] 1062 	ld	l, a
   46DD C5            [11] 1063 	push	bc
   46DE E5            [11] 1064 	push	hl
   46DF CD 3F 65      [17] 1065 	call	_strlen
   46E2 F1            [10] 1066 	pop	af
   46E3 C1            [10] 1067 	pop	bc
   46E4 3E 52         [ 7] 1068 	ld	a, #0x52
   46E6 95            [ 4] 1069 	sub	a, l
   46E7 6F            [ 4] 1070 	ld	l, a
   46E8 3E 00         [ 7] 1071 	ld	a, #0x00
   46EA 9C            [ 4] 1072 	sbc	a, h
   46EB 67            [ 4] 1073 	ld	h, a
   46EC CB 3C         [ 8] 1074 	srl	h
   46EE CB 1D         [ 8] 1075 	rr	l
   46F0 7D            [ 4] 1076 	ld	a, l
   46F1 C5            [11] 1077 	push	bc
   46F2 D5            [11] 1078 	push	de
   46F3 C5            [11] 1079 	push	bc
   46F4 33            [ 6] 1080 	inc	sp
   46F5 F5            [11] 1081 	push	af
   46F6 33            [ 6] 1082 	inc	sp
   46F7 21 00 C0      [10] 1083 	ld	hl, #0xc000
   46FA E5            [11] 1084 	push	hl
   46FB CD 55 66      [17] 1085 	call	_cpct_getScreenPtr
   46FE D1            [10] 1086 	pop	de
   46FF C1            [10] 1087 	pop	bc
                           1088 ;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
   4700 E5            [11] 1089 	push	hl
   4701 FD E1         [14] 1090 	pop	iy
   4703 DD 6E FE      [19] 1091 	ld	l,-2 (ix)
   4706 DD 66 FF      [19] 1092 	ld	h,-1 (ix)
   4709 7E            [ 7] 1093 	ld	a, (hl)
   470A 23            [ 6] 1094 	inc	hl
   470B 66            [ 7] 1095 	ld	h, (hl)
   470C 6F            [ 4] 1096 	ld	l, a
   470D C5            [11] 1097 	push	bc
   470E D5            [11] 1098 	push	de
   470F AF            [ 4] 1099 	xor	a, a
   4710 F5            [11] 1100 	push	af
   4711 33            [ 6] 1101 	inc	sp
   4712 FD E5         [15] 1102 	push	iy
   4714 E5            [11] 1103 	push	hl
   4715 CD 6F 61      [17] 1104 	call	_cpct_drawStringM2
   4718 F1            [10] 1105 	pop	af
   4719 F1            [10] 1106 	pop	af
   471A 33            [ 6] 1107 	inc	sp
   471B D1            [10] 1108 	pop	de
   471C C1            [10] 1109 	pop	bc
                           1110 ;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
   471D 0C            [ 4] 1111 	inc	c
   471E C3 81 46      [10] 1112 	jp	00114$
   4721                    1113 00104$:
                           1114 ;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   4721 DD 46 F9      [19] 1115 	ld	b, -7 (ix)
   4724 DD 4E FA      [19] 1116 	ld	c, -6 (ix)
   4727 DD 7E FD      [19] 1117 	ld	a, -3 (ix)
   472A B7            [ 4] 1118 	or	a, a
   472B 28 06         [12] 1119 	jr	Z,00119$
   472D DD 46 FB      [19] 1120 	ld	b, -5 (ix)
   4730 DD 4E FC      [19] 1121 	ld	c, -4 (ix)
   4733                    1122 00119$:
   4733 CB 29         [ 8] 1123 	sra	c
   4735 CB 18         [ 8] 1124 	rr	b
   4737 DD 4E 06      [19] 1125 	ld	c, 6 (ix)
   473A 0C            [ 4] 1126 	inc	c
   473B 69            [ 4] 1127 	ld	l, c
   473C 29            [11] 1128 	add	hl, hl
   473D 29            [11] 1129 	add	hl, hl
   473E 09            [11] 1130 	add	hl, bc
   473F 29            [11] 1131 	add	hl, hl
   4740 78            [ 4] 1132 	ld	a, b
   4741 85            [ 4] 1133 	add	a, l
   4742 47            [ 4] 1134 	ld	b, a
   4743 C5            [11] 1135 	push	bc
   4744 D5            [11] 1136 	push	de
   4745 CD 3F 65      [17] 1137 	call	_strlen
   4748 F1            [10] 1138 	pop	af
   4749 C1            [10] 1139 	pop	bc
   474A 3E 52         [ 7] 1140 	ld	a, #0x52
   474C 95            [ 4] 1141 	sub	a, l
   474D 6F            [ 4] 1142 	ld	l, a
   474E 3E 00         [ 7] 1143 	ld	a, #0x00
   4750 9C            [ 4] 1144 	sbc	a, h
   4751 67            [ 4] 1145 	ld	h, a
   4752 CB 3C         [ 8] 1146 	srl	h
   4754 CB 1D         [ 8] 1147 	rr	l
   4756 7D            [ 4] 1148 	ld	a, l
   4757 D5            [11] 1149 	push	de
   4758 C5            [11] 1150 	push	bc
   4759 33            [ 6] 1151 	inc	sp
   475A F5            [11] 1152 	push	af
   475B 33            [ 6] 1153 	inc	sp
   475C 21 00 C0      [10] 1154 	ld	hl, #0xc000
   475F E5            [11] 1155 	push	hl
   4760 CD 55 66      [17] 1156 	call	_cpct_getScreenPtr
   4763 D1            [10] 1157 	pop	de
                           1158 ;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
   4764 AF            [ 4] 1159 	xor	a, a
   4765 F5            [11] 1160 	push	af
   4766 33            [ 6] 1161 	inc	sp
   4767 E5            [11] 1162 	push	hl
   4768 D5            [11] 1163 	push	de
   4769 CD 6F 61      [17] 1164 	call	_cpct_drawStringM2
   476C F1            [10] 1165 	pop	af
   476D F1            [10] 1166 	pop	af
   476E 33            [ 6] 1167 	inc	sp
                           1168 ;src/gui/gui.c:186: do{
   476F                    1169 00110$:
                           1170 ;src/gui/gui.c:187: cpct_scanKeyboard(); 
   476F CD 75 66      [17] 1171 	call	_cpct_scanKeyboard
                           1172 ;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
   4772 21 02 04      [10] 1173 	ld	hl, #0x0402
   4775 CD 38 61      [17] 1174 	call	_cpct_isKeyPressed
   4778 7D            [ 4] 1175 	ld	a, l
   4779 B7            [ 4] 1176 	or	a, a
   477A 28 04         [12] 1177 	jr	Z,00106$
                           1178 ;src/gui/gui.c:190: valueReturn=1;
   477C DD 36 F8 01   [19] 1179 	ld	-8 (ix), #0x01
   4780                    1180 00106$:
                           1181 ;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
   4780 21 08 04      [10] 1182 	ld	hl, #0x0408
   4783 CD 38 61      [17] 1183 	call	_cpct_isKeyPressed
   4786 7D            [ 4] 1184 	ld	a, l
   4787 B7            [ 4] 1185 	or	a, a
   4788 28 04         [12] 1186 	jr	Z,00111$
                           1187 ;src/gui/gui.c:193: valueReturn=0;
   478A DD 36 F8 00   [19] 1188 	ld	-8 (ix), #0x00
   478E                    1189 00111$:
                           1190 ;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   478E 21 02 04      [10] 1191 	ld	hl, #0x0402
   4791 CD 38 61      [17] 1192 	call	_cpct_isKeyPressed
   4794 7D            [ 4] 1193 	ld	a, l
   4795 B7            [ 4] 1194 	or	a, a
   4796 20 0A         [12] 1195 	jr	NZ,00112$
   4798 21 08 04      [10] 1196 	ld	hl, #0x0408
   479B CD 38 61      [17] 1197 	call	_cpct_isKeyPressed
   479E 7D            [ 4] 1198 	ld	a, l
   479F B7            [ 4] 1199 	or	a, a
   47A0 28 CD         [12] 1200 	jr	Z,00110$
   47A2                    1201 00112$:
                           1202 ;src/gui/gui.c:197: return valueReturn;
   47A2 DD 6E F8      [19] 1203 	ld	l, -8 (ix)
   47A5 DD F9         [10] 1204 	ld	sp, ix
   47A7 DD E1         [14] 1205 	pop	ix
   47A9 C9            [10] 1206 	ret
   47AA                    1207 ___str_0:
   47AA 3C 4F 4B 3E        1208 	.ascii "<OK>"
   47AE 00                 1209 	.db 0x00
   47AF                    1210 ___str_1:
   47AF 3C 4F 4B 3E 20 20  1211 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   47BD 00                 1212 	.db 0x00
                           1213 	.area _CODE
                           1214 	.area _INITIALIZER
                           1215 	.area _CABS (ABS)
