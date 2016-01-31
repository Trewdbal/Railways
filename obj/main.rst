                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Jan 31 15:56:36 2016
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _putM2
                             14 	.globl _putM0
                             15 	.globl _drawTrain
                             16 	.globl _game
                             17 	.globl _drawWorld
                             18 	.globl _drawTile
                             19 	.globl _generateWorld
                             20 	.globl _drawCursor
                             21 	.globl _drawWindow
                             22 	.globl _drawMenu
                             23 	.globl _drawMenuEntry
                             24 	.globl _drawBoxM2
                             25 	.globl _drawBoxM0
                             26 	.globl _strlen
                             27 	.globl _cpct_setRandomSeedUniform_u8
                             28 	.globl _cpct_getRandomUniform_u8_f
                             29 	.globl _cpct_getScreenPtr
                             30 	.globl _cpct_setPALColour
                             31 	.globl _cpct_setPalette
                             32 	.globl _cpct_fw2hw
                             33 	.globl _cpct_setVideoMode
                             34 	.globl _cpct_drawStringM2
                             35 	.globl _cpct_drawSolidBox
                             36 	.globl _cpct_drawSprite
                             37 	.globl _cpct_px2byteM1
                             38 	.globl _cpct_px2byteM0
                             39 	.globl _cpct_isKeyPressed
                             40 	.globl _cpct_scanKeyboard
                             41 	.globl _cpct_memset
                             42 	.globl _cpct_disableFirmware
                             43 	.globl _cpct_reenableFirmware
                             44 	.globl _livestock
                             45 	.globl _farm2
                             46 	.globl _farm1
                             47 	.globl _water
                             48 	.globl _dwellings3
                             49 	.globl _dwellings2
                             50 	.globl _dwellings1
                             51 	.globl _forest
                             52 	.globl _grass2
                             53 	.globl _grass1
                             54 	.globl _paletteMenusM2
                             55 	.globl _paletteMenusM1
                             56 	.globl _paletteTrains
                             57 ;--------------------------------------------------------
                             58 ; special function registers
                             59 ;--------------------------------------------------------
                             60 ;--------------------------------------------------------
                             61 ; ram data
                             62 ;--------------------------------------------------------
                             63 	.area _DATA
                             64 ;--------------------------------------------------------
                             65 ; ram data
                             66 ;--------------------------------------------------------
                             67 	.area _INITIALIZED
                             68 ;--------------------------------------------------------
                             69 ; absolute external ram data
                             70 ;--------------------------------------------------------
                             71 	.area _DABS (ABS)
                             72 ;--------------------------------------------------------
                             73 ; global & static initialisations
                             74 ;--------------------------------------------------------
                             75 	.area _HOME
                             76 	.area _GSINIT
                             77 	.area _GSFINAL
                             78 	.area _GSINIT
                             79 ;--------------------------------------------------------
                             80 ; Home
                             81 ;--------------------------------------------------------
                             82 	.area _HOME
                             83 	.area _HOME
                             84 ;--------------------------------------------------------
                             85 ; code
                             86 ;--------------------------------------------------------
                             87 	.area _CODE
                             88 ;src/includes/gui.h:2: void drawBoxM0(int width_, int height_)
                             89 ;	---------------------------------
                             90 ; Function drawBoxM0
                             91 ; ---------------------------------
   4000                      92 _drawBoxM0::
   4000 DD E5         [15]   93 	push	ix
   4002 DD 21 00 00   [14]   94 	ld	ix,#0
   4006 DD 39         [15]   95 	add	ix,sp
   4008 21 F9 FF      [10]   96 	ld	hl,#-7
   400B 39            [11]   97 	add	hl,sp
   400C F9            [ 6]   98 	ld	sp,hl
                             99 ;src/includes/gui.h:7: int left = (80-width_)/2;
   400D 3E 50         [ 7]  100 	ld	a,#0x50
   400F DD 96 04      [19]  101 	sub	a, 4 (ix)
   4012 57            [ 4]  102 	ld	d,a
   4013 3E 00         [ 7]  103 	ld	a,#0x00
   4015 DD 9E 05      [19]  104 	sbc	a, 5 (ix)
   4018 5F            [ 4]  105 	ld	e,a
   4019 6A            [ 4]  106 	ld	l, d
   401A 63            [ 4]  107 	ld	h, e
   401B CB 7B         [ 8]  108 	bit	7, e
   401D 28 03         [12]  109 	jr	Z,00103$
   401F 6A            [ 4]  110 	ld	l, d
   4020 63            [ 4]  111 	ld	h, e
   4021 23            [ 6]  112 	inc	hl
   4022                     113 00103$:
   4022 DD 75 F9      [19]  114 	ld	-7 (ix),l
   4025 DD 74 FA      [19]  115 	ld	-6 (ix),h
   4028 DD CB FA 2E   [23]  116 	sra	-6 (ix)
   402C DD CB F9 1E   [23]  117 	rr	-7 (ix)
                            118 ;src/includes/gui.h:8: int top = (200-height_)/2;
   4030 3E C8         [ 7]  119 	ld	a,#0xC8
   4032 DD 96 06      [19]  120 	sub	a, 6 (ix)
   4035 4F            [ 4]  121 	ld	c,a
   4036 3E 00         [ 7]  122 	ld	a,#0x00
   4038 DD 9E 07      [19]  123 	sbc	a, 7 (ix)
   403B 47            [ 4]  124 	ld	b,a
   403C 61            [ 4]  125 	ld	h,c
   403D 50            [ 4]  126 	ld	d,b
   403E CB 78         [ 8]  127 	bit	7, b
   4040 28 03         [12]  128 	jr	Z,00104$
   4042 03            [ 6]  129 	inc	bc
   4043 61            [ 4]  130 	ld	h,c
   4044 50            [ 4]  131 	ld	d,b
   4045                     132 00104$:
   4045 5C            [ 4]  133 	ld	e, h
   4046 CB 2A         [ 8]  134 	sra	d
   4048 CB 1B         [ 8]  135 	rr	e
                            136 ;src/includes/gui.h:10: cpct_clearScreen(cpct_px2byteM0(9,9));
   404A D5            [11]  137 	push	de
   404B 21 09 09      [10]  138 	ld	hl,#0x0909
   404E E5            [11]  139 	push	hl
   404F CD 94 53      [17]  140 	call	_cpct_px2byteM0
   4052 65            [ 4]  141 	ld	h,l
   4053 01 00 40      [10]  142 	ld	bc,#0x4000
   4056 C5            [11]  143 	push	bc
   4057 E5            [11]  144 	push	hl
   4058 33            [ 6]  145 	inc	sp
   4059 21 00 C0      [10]  146 	ld	hl,#0xC000
   405C E5            [11]  147 	push	hl
   405D CD B0 53      [17]  148 	call	_cpct_memset
   4060 D1            [10]  149 	pop	de
                            150 ;src/includes/gui.h:13: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   4061 DD 73 FD      [19]  151 	ld	-3 (ix), e
   4064 63            [ 4]  152 	ld	h, e
   4065 24            [ 4]  153 	inc	h
   4066 24            [ 4]  154 	inc	h
   4067 24            [ 4]  155 	inc	h
   4068 24            [ 4]  156 	inc	h
   4069 DD 7E F9      [19]  157 	ld	a,-7 (ix)
   406C 3C            [ 4]  158 	inc	a
   406D DD 77 FC      [19]  159 	ld	-4 (ix),a
   4070 D5            [11]  160 	push	de
   4071 E5            [11]  161 	push	hl
   4072 33            [ 6]  162 	inc	sp
   4073 DD 7E FC      [19]  163 	ld	a,-4 (ix)
   4076 F5            [11]  164 	push	af
   4077 33            [ 6]  165 	inc	sp
   4078 21 00 C0      [10]  166 	ld	hl,#0xC000
   407B E5            [11]  167 	push	hl
   407C CD AF 54      [17]  168 	call	_cpct_getScreenPtr
   407F D1            [10]  169 	pop	de
   4080 4D            [ 4]  170 	ld	c, l
   4081 44            [ 4]  171 	ld	b, h
                            172 ;src/includes/gui.h:14: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   4082 DD 7E 06      [19]  173 	ld	a,6 (ix)
   4085 DD 77 FB      [19]  174 	ld	-5 (ix),a
   4088 DD 7E 04      [19]  175 	ld	a,4 (ix)
   408B DD 77 FE      [19]  176 	ld	-2 (ix),a
   408E C5            [11]  177 	push	bc
   408F D5            [11]  178 	push	de
   4090 21 02 02      [10]  179 	ld	hl,#0x0202
   4093 E5            [11]  180 	push	hl
   4094 CD 94 53      [17]  181 	call	_cpct_px2byteM0
   4097 DD 75 FF      [19]  182 	ld	-1 (ix),l
   409A D1            [10]  183 	pop	de
   409B C1            [10]  184 	pop	bc
   409C D5            [11]  185 	push	de
   409D DD 66 FB      [19]  186 	ld	h,-5 (ix)
   40A0 DD 6E FE      [19]  187 	ld	l,-2 (ix)
   40A3 E5            [11]  188 	push	hl
   40A4 DD 7E FF      [19]  189 	ld	a,-1 (ix)
   40A7 F5            [11]  190 	push	af
   40A8 33            [ 6]  191 	inc	sp
   40A9 C5            [11]  192 	push	bc
   40AA CD F6 53      [17]  193 	call	_cpct_drawSolidBox
   40AD F1            [10]  194 	pop	af
   40AE F1            [10]  195 	pop	af
   40AF 33            [ 6]  196 	inc	sp
   40B0 D1            [10]  197 	pop	de
                            198 ;src/includes/gui.h:17: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   40B1 63            [ 4]  199 	ld	h,e
   40B2 DD 56 F9      [19]  200 	ld	d,-7 (ix)
   40B5 E5            [11]  201 	push	hl
   40B6 33            [ 6]  202 	inc	sp
   40B7 D5            [11]  203 	push	de
   40B8 33            [ 6]  204 	inc	sp
   40B9 21 00 C0      [10]  205 	ld	hl,#0xC000
   40BC E5            [11]  206 	push	hl
   40BD CD AF 54      [17]  207 	call	_cpct_getScreenPtr
                            208 ;src/includes/gui.h:18: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   40C0 E5            [11]  209 	push	hl
   40C1 21 06 06      [10]  210 	ld	hl,#0x0606
   40C4 E5            [11]  211 	push	hl
   40C5 CD 94 53      [17]  212 	call	_cpct_px2byteM0
   40C8 45            [ 4]  213 	ld	b,l
   40C9 D1            [10]  214 	pop	de
   40CA DD 66 FB      [19]  215 	ld	h,-5 (ix)
   40CD DD 6E FE      [19]  216 	ld	l,-2 (ix)
   40D0 E5            [11]  217 	push	hl
   40D1 C5            [11]  218 	push	bc
   40D2 33            [ 6]  219 	inc	sp
   40D3 D5            [11]  220 	push	de
   40D4 CD F6 53      [17]  221 	call	_cpct_drawSolidBox
   40D7 F1            [10]  222 	pop	af
   40D8 F1            [10]  223 	pop	af
   40D9 33            [ 6]  224 	inc	sp
                            225 ;src/includes/gui.h:21: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   40DA DD 66 FD      [19]  226 	ld	h,-3 (ix)
   40DD 24            [ 4]  227 	inc	h
   40DE 24            [ 4]  228 	inc	h
   40DF E5            [11]  229 	push	hl
   40E0 33            [ 6]  230 	inc	sp
   40E1 DD 7E FC      [19]  231 	ld	a,-4 (ix)
   40E4 F5            [11]  232 	push	af
   40E5 33            [ 6]  233 	inc	sp
   40E6 21 00 C0      [10]  234 	ld	hl,#0xC000
   40E9 E5            [11]  235 	push	hl
   40EA CD AF 54      [17]  236 	call	_cpct_getScreenPtr
   40ED EB            [ 4]  237 	ex	de,hl
                            238 ;src/includes/gui.h:22: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   40EE DD 7E 06      [19]  239 	ld	a,6 (ix)
   40F1 C6 FC         [ 7]  240 	add	a,#0xFC
   40F3 4F            [ 4]  241 	ld	c,a
   40F4 DD 46 04      [19]  242 	ld	b,4 (ix)
   40F7 05            [ 4]  243 	dec	b
   40F8 05            [ 4]  244 	dec	b
   40F9 C5            [11]  245 	push	bc
   40FA D5            [11]  246 	push	de
   40FB 21 00 00      [10]  247 	ld	hl,#0x0000
   40FE E5            [11]  248 	push	hl
   40FF CD 94 53      [17]  249 	call	_cpct_px2byteM0
   4102 DD 75 FF      [19]  250 	ld	-1 (ix),l
   4105 D1            [10]  251 	pop	de
   4106 C1            [10]  252 	pop	bc
   4107 79            [ 4]  253 	ld	a,c
   4108 F5            [11]  254 	push	af
   4109 33            [ 6]  255 	inc	sp
   410A C5            [11]  256 	push	bc
   410B 33            [ 6]  257 	inc	sp
   410C DD 7E FF      [19]  258 	ld	a,-1 (ix)
   410F F5            [11]  259 	push	af
   4110 33            [ 6]  260 	inc	sp
   4111 D5            [11]  261 	push	de
   4112 CD F6 53      [17]  262 	call	_cpct_drawSolidBox
   4115 DD F9         [10]  263 	ld	sp,ix
   4117 DD E1         [14]  264 	pop	ix
   4119 C9            [10]  265 	ret
   411A                     266 _paletteTrains:
   411A 00                  267 	.db #0x00	; 0
   411B 1A                  268 	.db #0x1A	; 26
   411C 0D                  269 	.db #0x0D	; 13
   411D 03                  270 	.db #0x03	; 3
   411E 0F                  271 	.db #0x0F	; 15
   411F 06                  272 	.db #0x06	; 6
   4120 10                  273 	.db #0x10	; 16
   4121 09                  274 	.db #0x09	; 9
   4122 0A                  275 	.db #0x0A	; 10
   4123 14                  276 	.db #0x14	; 20
   4124 02                  277 	.db #0x02	; 2
   4125 01                  278 	.db #0x01	; 1
   4126 13                  279 	.db #0x13	; 19
   4127 18                  280 	.db #0x18	; 24
   4128 0B                  281 	.db #0x0B	; 11
   4129 19                  282 	.db #0x19	; 25
   412A                     283 _paletteMenusM1:
   412A 00                  284 	.db #0x00	; 0
   412B 0F                  285 	.db #0x0F	; 15
   412C 09                  286 	.db #0x09	; 9
   412D 16                  287 	.db #0x16	; 22
   412E                     288 _paletteMenusM2:
   412E 00                  289 	.db #0x00	; 0
   412F 14                  290 	.db #0x14	; 20
   4130                     291 _grass1:
   4130 0F                  292 	.db #0x0F	; 15
   4131 0F                  293 	.db #0x0F	; 15
   4132 0F                  294 	.db #0x0F	; 15
   4133 8F                  295 	.db #0x8F	; 143
   4134 0F                  296 	.db #0x0F	; 15
   4135 0F                  297 	.db #0x0F	; 15
   4136 0F                  298 	.db #0x0F	; 15
   4137 0F                  299 	.db #0x0F	; 15
   4138 1F                  300 	.db #0x1F	; 31
   4139 0F                  301 	.db #0x0F	; 15
   413A 2F                  302 	.db #0x2F	; 47
   413B 0F                  303 	.db #0x0F	; 15
   413C 0F                  304 	.db #0x0F	; 15
   413D 0F                  305 	.db #0x0F	; 15
   413E 0F                  306 	.db #0x0F	; 15
   413F 0F                  307 	.db #0x0F	; 15
   4140 0F                  308 	.db #0x0F	; 15
   4141 0F                  309 	.db #0x0F	; 15
   4142 0F                  310 	.db #0x0F	; 15
   4143 0F                  311 	.db #0x0F	; 15
   4144 0F                  312 	.db #0x0F	; 15
   4145 0F                  313 	.db #0x0F	; 15
   4146 0F                  314 	.db #0x0F	; 15
   4147 0F                  315 	.db #0x0F	; 15
   4148 0F                  316 	.db #0x0F	; 15
   4149 0F                  317 	.db #0x0F	; 15
   414A 0F                  318 	.db #0x0F	; 15
   414B 0F                  319 	.db #0x0F	; 15
   414C 4F                  320 	.db #0x4F	; 79	'O'
   414D 0F                  321 	.db #0x0F	; 15
   414E 0F                  322 	.db #0x0F	; 15
   414F 8F                  323 	.db #0x8F	; 143
   4150 0F                  324 	.db #0x0F	; 15
   4151 4F                  325 	.db #0x4F	; 79	'O'
   4152 0F                  326 	.db #0x0F	; 15
   4153 0F                  327 	.db #0x0F	; 15
   4154 0F                  328 	.db #0x0F	; 15
   4155 0F                  329 	.db #0x0F	; 15
   4156 0F                  330 	.db #0x0F	; 15
   4157 0F                  331 	.db #0x0F	; 15
   4158 0F                  332 	.db #0x0F	; 15
   4159 0F                  333 	.db #0x0F	; 15
   415A 0F                  334 	.db #0x0F	; 15
   415B 0F                  335 	.db #0x0F	; 15
   415C 0F                  336 	.db #0x0F	; 15
   415D 1F                  337 	.db #0x1F	; 31
   415E 0F                  338 	.db #0x0F	; 15
   415F 0F                  339 	.db #0x0F	; 15
   4160 0F                  340 	.db #0x0F	; 15
   4161 0F                  341 	.db #0x0F	; 15
   4162 0F                  342 	.db #0x0F	; 15
   4163 8F                  343 	.db #0x8F	; 143
   4164 0F                  344 	.db #0x0F	; 15
   4165 0F                  345 	.db #0x0F	; 15
   4166 0F                  346 	.db #0x0F	; 15
   4167 0F                  347 	.db #0x0F	; 15
   4168 0F                  348 	.db #0x0F	; 15
   4169 0F                  349 	.db #0x0F	; 15
   416A 0F                  350 	.db #0x0F	; 15
   416B 0F                  351 	.db #0x0F	; 15
   416C 4F                  352 	.db #0x4F	; 79	'O'
   416D 0F                  353 	.db #0x0F	; 15
   416E 8F                  354 	.db #0x8F	; 143
   416F 0F                  355 	.db #0x0F	; 15
   4170                     356 _grass2:
   4170 0F                  357 	.db #0x0F	; 15
   4171 0F                  358 	.db #0x0F	; 15
   4172 0F                  359 	.db #0x0F	; 15
   4173 0F                  360 	.db #0x0F	; 15
   4174 0F                  361 	.db #0x0F	; 15
   4175 0F                  362 	.db #0x0F	; 15
   4176 0F                  363 	.db #0x0F	; 15
   4177 2F                  364 	.db #0x2F	; 47
   4178 0F                  365 	.db #0x0F	; 15
   4179 8F                  366 	.db #0x8F	; 143
   417A 0F                  367 	.db #0x0F	; 15
   417B 0F                  368 	.db #0x0F	; 15
   417C 0F                  369 	.db #0x0F	; 15
   417D 0F                  370 	.db #0x0F	; 15
   417E 0F                  371 	.db #0x0F	; 15
   417F 0F                  372 	.db #0x0F	; 15
   4180 0F                  373 	.db #0x0F	; 15
   4181 0F                  374 	.db #0x0F	; 15
   4182 0F                  375 	.db #0x0F	; 15
   4183 0F                  376 	.db #0x0F	; 15
   4184 4F                  377 	.db #0x4F	; 79	'O'
   4185 0F                  378 	.db #0x0F	; 15
   4186 0F                  379 	.db #0x0F	; 15
   4187 0F                  380 	.db #0x0F	; 15
   4188 0F                  381 	.db #0x0F	; 15
   4189 0F                  382 	.db #0x0F	; 15
   418A 2F                  383 	.db #0x2F	; 47
   418B 0F                  384 	.db #0x0F	; 15
   418C 0F                  385 	.db #0x0F	; 15
   418D 0F                  386 	.db #0x0F	; 15
   418E 0F                  387 	.db #0x0F	; 15
   418F 0F                  388 	.db #0x0F	; 15
   4190 0F                  389 	.db #0x0F	; 15
   4191 4F                  390 	.db #0x4F	; 79	'O'
   4192 0F                  391 	.db #0x0F	; 15
   4193 0F                  392 	.db #0x0F	; 15
   4194 0F                  393 	.db #0x0F	; 15
   4195 0F                  394 	.db #0x0F	; 15
   4196 0F                  395 	.db #0x0F	; 15
   4197 0F                  396 	.db #0x0F	; 15
   4198 0F                  397 	.db #0x0F	; 15
   4199 0F                  398 	.db #0x0F	; 15
   419A 0F                  399 	.db #0x0F	; 15
   419B 0F                  400 	.db #0x0F	; 15
   419C 0F                  401 	.db #0x0F	; 15
   419D 0F                  402 	.db #0x0F	; 15
   419E 0F                  403 	.db #0x0F	; 15
   419F 8F                  404 	.db #0x8F	; 143
   41A0 0F                  405 	.db #0x0F	; 15
   41A1 0F                  406 	.db #0x0F	; 15
   41A2 0F                  407 	.db #0x0F	; 15
   41A3 0F                  408 	.db #0x0F	; 15
   41A4 2F                  409 	.db #0x2F	; 47
   41A5 1F                  410 	.db #0x1F	; 31
   41A6 0F                  411 	.db #0x0F	; 15
   41A7 0F                  412 	.db #0x0F	; 15
   41A8 0F                  413 	.db #0x0F	; 15
   41A9 0F                  414 	.db #0x0F	; 15
   41AA 0F                  415 	.db #0x0F	; 15
   41AB 2F                  416 	.db #0x2F	; 47
   41AC 0F                  417 	.db #0x0F	; 15
   41AD 0F                  418 	.db #0x0F	; 15
   41AE 0F                  419 	.db #0x0F	; 15
   41AF 0F                  420 	.db #0x0F	; 15
   41B0                     421 _forest:
   41B0 0F                  422 	.db #0x0F	; 15
   41B1 0F                  423 	.db #0x0F	; 15
   41B2 0E                  424 	.db #0x0E	; 14
   41B3 03                  425 	.db #0x03	; 3
   41B4 0E                  426 	.db #0x0E	; 14
   41B5 03                  427 	.db #0x03	; 3
   41B6 0E                  428 	.db #0x0E	; 14
   41B7 EF                  429 	.db #0xEF	; 239
   41B8 0E                  430 	.db #0x0E	; 14
   41B9 EF                  431 	.db #0xEF	; 239
   41BA 0F                  432 	.db #0x0F	; 15
   41BB EF                  433 	.db #0xEF	; 239
   41BC 0E                  434 	.db #0x0E	; 14
   41BD FF                  435 	.db #0xFF	; 255
   41BE 0F                  436 	.db #0x0F	; 15
   41BF 0F                  437 	.db #0x0F	; 15
   41C0 07                  438 	.db #0x07	; 7
   41C1 6F                  439 	.db #0x6F	; 111	'o'
   41C2 0C                  440 	.db #0x0C	; 12
   41C3 0F                  441 	.db #0x0F	; 15
   41C4 CF                  442 	.db #0xCF	; 207
   41C5 0F                  443 	.db #0x0F	; 15
   41C6 19                  444 	.db #0x19	; 25
   41C7 8F                  445 	.db #0x8F	; 143
   41C8 CE                  446 	.db #0xCE	; 206
   41C9 03                  447 	.db #0x03	; 3
   41CA 3B                  448 	.db #0x3B	; 59
   41CB 8F                  449 	.db #0x8F	; 143
   41CC CE                  450 	.db #0xCE	; 206
   41CD CF                  451 	.db #0xCF	; 207
   41CE 3B                  452 	.db #0x3B	; 59
   41CF 0F                  453 	.db #0x0F	; 15
   41D0 0E                  454 	.db #0x0E	; 14
   41D1 EF                  455 	.db #0xEF	; 239
   41D2 3F                  456 	.db #0x3F	; 63
   41D3 0F                  457 	.db #0x0F	; 15
   41D4 0F                  458 	.db #0x0F	; 15
   41D5 EF                  459 	.db #0xEF	; 239
   41D6 0F                  460 	.db #0x0F	; 15
   41D7 0F                  461 	.db #0x0F	; 15
   41D8 0E                  462 	.db #0x0E	; 14
   41D9 07                  463 	.db #0x07	; 7
   41DA 03                  464 	.db #0x03	; 3
   41DB 0F                  465 	.db #0x0F	; 15
   41DC 1D                  466 	.db #0x1D	; 29
   41DD CE                  467 	.db #0xCE	; 206
   41DE EF                  468 	.db #0xEF	; 239
   41DF 09                  469 	.db #0x09	; 9
   41E0 3B                  470 	.db #0x3B	; 59
   41E1 8F                  471 	.db #0x8F	; 143
   41E2 CE                  472 	.db #0xCE	; 206
   41E3 67                  473 	.db #0x67	; 103	'g'
   41E4 3B                  474 	.db #0x3B	; 59
   41E5 8F                  475 	.db #0x8F	; 143
   41E6 1D                  476 	.db #0x1D	; 29
   41E7 EF                  477 	.db #0xEF	; 239
   41E8 2F                  478 	.db #0x2F	; 47
   41E9 0F                  479 	.db #0x0F	; 15
   41EA 1D                  480 	.db #0x1D	; 29
   41EB EF                  481 	.db #0xEF	; 239
   41EC 0F                  482 	.db #0x0F	; 15
   41ED 0F                  483 	.db #0x0F	; 15
   41EE 0F                  484 	.db #0x0F	; 15
   41EF CF                  485 	.db #0xCF	; 207
   41F0                     486 _dwellings1:
   41F0 0F                  487 	.db #0x0F	; 15
   41F1 0F                  488 	.db #0x0F	; 15
   41F2 0F                  489 	.db #0x0F	; 15
   41F3 0F                  490 	.db #0x0F	; 15
   41F4 08                  491 	.db #0x08	; 8
   41F5 03                  492 	.db #0x03	; 3
   41F6 0C                  493 	.db #0x0C	; 12
   41F7 07                  494 	.db #0x07	; 7
   41F8 38                  495 	.db #0x38	; 56	'8'
   41F9 E1                  496 	.db #0xE1	; 225
   41FA 1C                  497 	.db #0x1C	; 28
   41FB C3                  498 	.db #0xC3	; 195
   41FC 3C                  499 	.db #0x3C	; 60
   41FD E1                  500 	.db #0xE1	; 225
   41FE 1C                  501 	.db #0x1C	; 28
   41FF C3                  502 	.db #0xC3	; 195
   4200 0F                  503 	.db #0x0F	; 15
   4201 0F                  504 	.db #0x0F	; 15
   4202 1E                  505 	.db #0x1E	; 30
   4203 C3                  506 	.db #0xC3	; 195
   4204 0F                  507 	.db #0x0F	; 15
   4205 0F                  508 	.db #0x0F	; 15
   4206 0F                  509 	.db #0x0F	; 15
   4207 0F                  510 	.db #0x0F	; 15
   4208 0F                  511 	.db #0x0F	; 15
   4209 0F                  512 	.db #0x0F	; 15
   420A 0E                  513 	.db #0x0E	; 14
   420B 03                  514 	.db #0x03	; 3
   420C 0F                  515 	.db #0x0F	; 15
   420D 0E                  516 	.db #0x0E	; 14
   420E 06                  517 	.db #0x06	; 6
   420F E1                  518 	.db #0xE1	; 225
   4210 0F                  519 	.db #0x0F	; 15
   4211 0E                  520 	.db #0x0E	; 14
   4212 C2                  521 	.db #0xC2	; 194
   4213 E1                  522 	.db #0xE1	; 225
   4214 0F                  523 	.db #0x0F	; 15
   4215 0E                  524 	.db #0x0E	; 14
   4216 C2                  525 	.db #0xC2	; 194
   4217 E1                  526 	.db #0xE1	; 225
   4218 0F                  527 	.db #0x0F	; 15
   4219 0E                  528 	.db #0x0E	; 14
   421A C3                  529 	.db #0xC3	; 195
   421B E1                  530 	.db #0xE1	; 225
   421C 0F                  531 	.db #0x0F	; 15
   421D 0E                  532 	.db #0x0E	; 14
   421E C3                  533 	.db #0xC3	; 195
   421F 0F                  534 	.db #0x0F	; 15
   4220 0F                  535 	.db #0x0F	; 15
   4221 0F                  536 	.db #0x0F	; 15
   4222 C3                  537 	.db #0xC3	; 195
   4223 0F                  538 	.db #0x0F	; 15
   4224 08                  539 	.db #0x08	; 8
   4225 07                  540 	.db #0x07	; 7
   4226 0F                  541 	.db #0x0F	; 15
   4227 0F                  542 	.db #0x0F	; 15
   4228 38                  543 	.db #0x38	; 56	'8'
   4229 C3                  544 	.db #0xC3	; 195
   422A 0F                  545 	.db #0x0F	; 15
   422B 0F                  546 	.db #0x0F	; 15
   422C 3C                  547 	.db #0x3C	; 60
   422D C3                  548 	.db #0xC3	; 195
   422E 0F                  549 	.db #0x0F	; 15
   422F 0F                  550 	.db #0x0F	; 15
   4230                     551 _dwellings2:
   4230 0F                  552 	.db #0x0F	; 15
   4231 0F                  553 	.db #0x0F	; 15
   4232 0F                  554 	.db #0x0F	; 15
   4233 0F                  555 	.db #0x0F	; 15
   4234 0F                  556 	.db #0x0F	; 15
   4235 01                  557 	.db #0x01	; 1
   4236 0F                  558 	.db #0x0F	; 15
   4237 0F                  559 	.db #0x0F	; 15
   4238 0F                  560 	.db #0x0F	; 15
   4239 70                  561 	.db #0x70	; 112	'p'
   423A 0C                  562 	.db #0x0C	; 12
   423B 0F                  563 	.db #0x0F	; 15
   423C 09                  564 	.db #0x09	; 9
   423D 78                  565 	.db #0x78	; 120	'x'
   423E 1C                  566 	.db #0x1C	; 28
   423F 87                  567 	.db #0x87	; 135
   4240 38                  568 	.db #0x38	; 56	'8'
   4241 0F                  569 	.db #0x0F	; 15
   4242 1C                  570 	.db #0x1C	; 28
   4243 87                  571 	.db #0x87	; 135
   4244 38                  572 	.db #0x38	; 56	'8'
   4245 0F                  573 	.db #0x0F	; 15
   4246 1E                  574 	.db #0x1E	; 30
   4247 87                  575 	.db #0x87	; 135
   4248 3C                  576 	.db #0x3C	; 60
   4249 0F                  577 	.db #0x0F	; 15
   424A 0F                  578 	.db #0x0F	; 15
   424B 0F                  579 	.db #0x0F	; 15
   424C 0F                  580 	.db #0x0F	; 15
   424D 0F                  581 	.db #0x0F	; 15
   424E 0F                  582 	.db #0x0F	; 15
   424F 0F                  583 	.db #0x0F	; 15
   4250 0E                  584 	.db #0x0E	; 14
   4251 07                  585 	.db #0x07	; 7
   4252 0F                  586 	.db #0x0F	; 15
   4253 0F                  587 	.db #0x0F	; 15
   4254 0E                  588 	.db #0x0E	; 14
   4255 C3                  589 	.db #0xC3	; 195
   4256 00                  590 	.db #0x00	; 0
   4257 07                  591 	.db #0x07	; 7
   4258 0E                  592 	.db #0x0E	; 14
   4259 C3                  593 	.db #0xC3	; 195
   425A 70                  594 	.db #0x70	; 112	'p'
   425B C3                  595 	.db #0xC3	; 195
   425C 0F                  596 	.db #0x0F	; 15
   425D C3                  597 	.db #0xC3	; 195
   425E 70                  598 	.db #0x70	; 112	'p'
   425F C3                  599 	.db #0xC3	; 195
   4260 03                  600 	.db #0x03	; 3
   4261 0F                  601 	.db #0x0F	; 15
   4262 78                  602 	.db #0x78	; 120	'x'
   4263 C3                  603 	.db #0xC3	; 195
   4264 61                  604 	.db #0x61	; 97	'a'
   4265 0F                  605 	.db #0x0F	; 15
   4266 0F                  606 	.db #0x0F	; 15
   4267 0F                  607 	.db #0x0F	; 15
   4268 69                  608 	.db #0x69	; 105	'i'
   4269 0F                  609 	.db #0x0F	; 15
   426A 0F                  610 	.db #0x0F	; 15
   426B 0F                  611 	.db #0x0F	; 15
   426C 0F                  612 	.db #0x0F	; 15
   426D 0F                  613 	.db #0x0F	; 15
   426E 0F                  614 	.db #0x0F	; 15
   426F 0F                  615 	.db #0x0F	; 15
   4270                     616 _dwellings3:
   4270 0F                  617 	.db #0x0F	; 15
   4271 0F                  618 	.db #0x0F	; 15
   4272 09                  619 	.db #0x09	; 9
   4273 09                  620 	.db #0x09	; 9
   4274 0F                  621 	.db #0x0F	; 15
   4275 0F                  622 	.db #0x0F	; 15
   4276 38                  623 	.db #0x38	; 56	'8'
   4277 38                  624 	.db #0x38	; 56	'8'
   4278 0E                  625 	.db #0x0E	; 14
   4279 03                  626 	.db #0x03	; 3
   427A 38                  627 	.db #0x38	; 56	'8'
   427B 38                  628 	.db #0x38	; 56	'8'
   427C 0E                  629 	.db #0x0E	; 14
   427D E1                  630 	.db #0xE1	; 225
   427E 3C                  631 	.db #0x3C	; 60
   427F 3C                  632 	.db #0x3C	; 60
   4280 0E                  633 	.db #0x0E	; 14
   4281 E1                  634 	.db #0xE1	; 225
   4282 0F                  635 	.db #0x0F	; 15
   4283 0F                  636 	.db #0x0F	; 15
   4284 0E                  637 	.db #0x0E	; 14
   4285 E1                  638 	.db #0xE1	; 225
   4286 08                  639 	.db #0x08	; 8
   4287 07                  640 	.db #0x07	; 7
   4288 0F                  641 	.db #0x0F	; 15
   4289 E1                  642 	.db #0xE1	; 225
   428A 38                  643 	.db #0x38	; 56	'8'
   428B C3                  644 	.db #0xC3	; 195
   428C 0F                  645 	.db #0x0F	; 15
   428D 0F                  646 	.db #0x0F	; 15
   428E 3C                  647 	.db #0x3C	; 60
   428F C3                  648 	.db #0xC3	; 195
   4290 0C                  649 	.db #0x0C	; 12
   4291 0F                  650 	.db #0x0F	; 15
   4292 0F                  651 	.db #0x0F	; 15
   4293 0F                  652 	.db #0x0F	; 15
   4294 1C                  653 	.db #0x1C	; 28
   4295 87                  654 	.db #0x87	; 135
   4296 0F                  655 	.db #0x0F	; 15
   4297 0F                  656 	.db #0x0F	; 15
   4298 1E                  657 	.db #0x1E	; 30
   4299 87                  658 	.db #0x87	; 135
   429A 0C                  659 	.db #0x0C	; 12
   429B 07                  660 	.db #0x07	; 7
   429C 0F                  661 	.db #0x0F	; 15
   429D 0F                  662 	.db #0x0F	; 15
   429E 1C                  663 	.db #0x1C	; 28
   429F C3                  664 	.db #0xC3	; 195
   42A0 0F                  665 	.db #0x0F	; 15
   42A1 09                  666 	.db #0x09	; 9
   42A2 1C                  667 	.db #0x1C	; 28
   42A3 C3                  668 	.db #0xC3	; 195
   42A4 0F                  669 	.db #0x0F	; 15
   42A5 38                  670 	.db #0x38	; 56	'8'
   42A6 1C                  671 	.db #0x1C	; 28
   42A7 C3                  672 	.db #0xC3	; 195
   42A8 0F                  673 	.db #0x0F	; 15
   42A9 3C                  674 	.db #0x3C	; 60
   42AA 1E                  675 	.db #0x1E	; 30
   42AB C3                  676 	.db #0xC3	; 195
   42AC 0F                  677 	.db #0x0F	; 15
   42AD 0F                  678 	.db #0x0F	; 15
   42AE 0F                  679 	.db #0x0F	; 15
   42AF 0F                  680 	.db #0x0F	; 15
   42B0                     681 _water:
   42B0 5F                  682 	.db #0x5F	; 95
   42B1 5F                  683 	.db #0x5F	; 95
   42B2 5F                  684 	.db #0x5F	; 95
   42B3 5F                  685 	.db #0x5F	; 95
   42B4 AF                  686 	.db #0xAF	; 175
   42B5 AF                  687 	.db #0xAF	; 175
   42B6 AF                  688 	.db #0xAF	; 175
   42B7 AF                  689 	.db #0xAF	; 175
   42B8 5F                  690 	.db #0x5F	; 95
   42B9 5F                  691 	.db #0x5F	; 95
   42BA 5F                  692 	.db #0x5F	; 95
   42BB 5F                  693 	.db #0x5F	; 95
   42BC AF                  694 	.db #0xAF	; 175
   42BD AF                  695 	.db #0xAF	; 175
   42BE AF                  696 	.db #0xAF	; 175
   42BF AF                  697 	.db #0xAF	; 175
   42C0 5F                  698 	.db #0x5F	; 95
   42C1 5F                  699 	.db #0x5F	; 95
   42C2 5F                  700 	.db #0x5F	; 95
   42C3 5F                  701 	.db #0x5F	; 95
   42C4 AF                  702 	.db #0xAF	; 175
   42C5 AF                  703 	.db #0xAF	; 175
   42C6 AF                  704 	.db #0xAF	; 175
   42C7 AF                  705 	.db #0xAF	; 175
   42C8 5F                  706 	.db #0x5F	; 95
   42C9 5F                  707 	.db #0x5F	; 95
   42CA 5F                  708 	.db #0x5F	; 95
   42CB 5F                  709 	.db #0x5F	; 95
   42CC AF                  710 	.db #0xAF	; 175
   42CD AF                  711 	.db #0xAF	; 175
   42CE AF                  712 	.db #0xAF	; 175
   42CF AF                  713 	.db #0xAF	; 175
   42D0 5F                  714 	.db #0x5F	; 95
   42D1 5F                  715 	.db #0x5F	; 95
   42D2 5F                  716 	.db #0x5F	; 95
   42D3 5F                  717 	.db #0x5F	; 95
   42D4 AF                  718 	.db #0xAF	; 175
   42D5 AF                  719 	.db #0xAF	; 175
   42D6 AF                  720 	.db #0xAF	; 175
   42D7 AF                  721 	.db #0xAF	; 175
   42D8 5F                  722 	.db #0x5F	; 95
   42D9 5F                  723 	.db #0x5F	; 95
   42DA 5F                  724 	.db #0x5F	; 95
   42DB 5F                  725 	.db #0x5F	; 95
   42DC AF                  726 	.db #0xAF	; 175
   42DD AF                  727 	.db #0xAF	; 175
   42DE AF                  728 	.db #0xAF	; 175
   42DF AF                  729 	.db #0xAF	; 175
   42E0 5F                  730 	.db #0x5F	; 95
   42E1 5F                  731 	.db #0x5F	; 95
   42E2 5F                  732 	.db #0x5F	; 95
   42E3 5F                  733 	.db #0x5F	; 95
   42E4 AF                  734 	.db #0xAF	; 175
   42E5 AF                  735 	.db #0xAF	; 175
   42E6 AF                  736 	.db #0xAF	; 175
   42E7 AF                  737 	.db #0xAF	; 175
   42E8 5F                  738 	.db #0x5F	; 95
   42E9 5F                  739 	.db #0x5F	; 95
   42EA 5F                  740 	.db #0x5F	; 95
   42EB 5F                  741 	.db #0x5F	; 95
   42EC AF                  742 	.db #0xAF	; 175
   42ED AF                  743 	.db #0xAF	; 175
   42EE AF                  744 	.db #0xAF	; 175
   42EF AF                  745 	.db #0xAF	; 175
   42F0                     746 _farm1:
   42F0 03                  747 	.db #0x03	; 3
   42F1 0F                  748 	.db #0x0F	; 15
   42F2 78                  749 	.db #0x78	; 120	'x'
   42F3 F0                  750 	.db #0xF0	; 240
   42F4 61                  751 	.db #0x61	; 97	'a'
   42F5 01                  752 	.db #0x01	; 1
   42F6 5F                  753 	.db #0x5F	; 95
   42F7 5F                  754 	.db #0x5F	; 95
   42F8 61                  755 	.db #0x61	; 97	'a'
   42F9 70                  756 	.db #0x70	; 112	'p'
   42FA 78                  757 	.db #0x78	; 120	'x'
   42FB F0                  758 	.db #0xF0	; 240
   42FC 69                  759 	.db #0x69	; 105	'i'
   42FD 78                  760 	.db #0x78	; 120	'x'
   42FE 2F                  761 	.db #0x2F	; 47
   42FF AF                  762 	.db #0xAF	; 175
   4300 0F                  763 	.db #0x0F	; 15
   4301 0F                  764 	.db #0x0F	; 15
   4302 78                  765 	.db #0x78	; 120	'x'
   4303 F0                  766 	.db #0xF0	; 240
   4304 7A                  767 	.db #0x7A	; 122	'z'
   4305 7A                  768 	.db #0x7A	; 122	'z'
   4306 5F                  769 	.db #0x5F	; 95
   4307 5F                  770 	.db #0x5F	; 95
   4308 5A                  771 	.db #0x5A	; 90	'Z'
   4309 DA                  772 	.db #0xDA	; 218
   430A 78                  773 	.db #0x78	; 120	'x'
   430B F0                  774 	.db #0xF0	; 240
   430C 7A                  775 	.db #0x7A	; 122	'z'
   430D 7A                  776 	.db #0x7A	; 122	'z'
   430E 0F                  777 	.db #0x0F	; 15
   430F 0F                  778 	.db #0x0F	; 15
   4310 5A                  779 	.db #0x5A	; 90	'Z'
   4311 DA                  780 	.db #0xDA	; 218
   4312 0F                  781 	.db #0x0F	; 15
   4313 0F                  782 	.db #0x0F	; 15
   4314 7A                  783 	.db #0x7A	; 122	'z'
   4315 7A                  784 	.db #0x7A	; 122	'z'
   4316 78                  785 	.db #0x78	; 120	'x'
   4317 F0                  786 	.db #0xF0	; 240
   4318 5A                  787 	.db #0x5A	; 90	'Z'
   4319 DA                  788 	.db #0xDA	; 218
   431A 5F                  789 	.db #0x5F	; 95
   431B 5F                  790 	.db #0x5F	; 95
   431C 7A                  791 	.db #0x7A	; 122	'z'
   431D 7A                  792 	.db #0x7A	; 122	'z'
   431E 78                  793 	.db #0x78	; 120	'x'
   431F F0                  794 	.db #0xF0	; 240
   4320 5A                  795 	.db #0x5A	; 90	'Z'
   4321 DA                  796 	.db #0xDA	; 218
   4322 2F                  797 	.db #0x2F	; 47
   4323 AF                  798 	.db #0xAF	; 175
   4324 7A                  799 	.db #0x7A	; 122	'z'
   4325 7A                  800 	.db #0x7A	; 122	'z'
   4326 78                  801 	.db #0x78	; 120	'x'
   4327 F0                  802 	.db #0xF0	; 240
   4328 5A                  803 	.db #0x5A	; 90	'Z'
   4329 DA                  804 	.db #0xDA	; 218
   432A 5F                  805 	.db #0x5F	; 95
   432B 5F                  806 	.db #0x5F	; 95
   432C 7A                  807 	.db #0x7A	; 122	'z'
   432D 7A                  808 	.db #0x7A	; 122	'z'
   432E 78                  809 	.db #0x78	; 120	'x'
   432F F0                  810 	.db #0xF0	; 240
   4330                     811 _farm2:
   4330 0F                  812 	.db #0x0F	; 15
   4331 0F                  813 	.db #0x0F	; 15
   4332 0F                  814 	.db #0x0F	; 15
   4333 0F                  815 	.db #0x0F	; 15
   4334 7F                  816 	.db #0x7F	; 127
   4335 FF                  817 	.db #0xFF	; 255
   4336 FF                  818 	.db #0xFF	; 255
   4337 EF                  819 	.db #0xEF	; 239
   4338 2D                  820 	.db #0x2D	; 45
   4339 A5                  821 	.db #0xA5	; 165
   433A A5                  822 	.db #0xA5	; 165
   433B A5                  823 	.db #0xA5	; 165
   433C 7F                  824 	.db #0x7F	; 127
   433D FF                  825 	.db #0xFF	; 255
   433E FF                  826 	.db #0xFF	; 255
   433F EF                  827 	.db #0xEF	; 239
   4340 5A                  828 	.db #0x5A	; 90	'Z'
   4341 5A                  829 	.db #0x5A	; 90	'Z'
   4342 5A                  830 	.db #0x5A	; 90	'Z'
   4343 4B                  831 	.db #0x4B	; 75	'K'
   4344 7F                  832 	.db #0x7F	; 127
   4345 FF                  833 	.db #0xFF	; 255
   4346 FF                  834 	.db #0xFF	; 255
   4347 EF                  835 	.db #0xEF	; 239
   4348 2D                  836 	.db #0x2D	; 45
   4349 A5                  837 	.db #0xA5	; 165
   434A A5                  838 	.db #0xA5	; 165
   434B A5                  839 	.db #0xA5	; 165
   434C 7F                  840 	.db #0x7F	; 127
   434D FF                  841 	.db #0xFF	; 255
   434E FF                  842 	.db #0xFF	; 255
   434F EF                  843 	.db #0xEF	; 239
   4350 5A                  844 	.db #0x5A	; 90	'Z'
   4351 5A                  845 	.db #0x5A	; 90	'Z'
   4352 5A                  846 	.db #0x5A	; 90	'Z'
   4353 4B                  847 	.db #0x4B	; 75	'K'
   4354 7F                  848 	.db #0x7F	; 127
   4355 FF                  849 	.db #0xFF	; 255
   4356 FF                  850 	.db #0xFF	; 255
   4357 EF                  851 	.db #0xEF	; 239
   4358 0F                  852 	.db #0x0F	; 15
   4359 0F                  853 	.db #0x0F	; 15
   435A 0F                  854 	.db #0x0F	; 15
   435B 0F                  855 	.db #0x0F	; 15
   435C 0E                  856 	.db #0x0E	; 14
   435D 07                  857 	.db #0x07	; 7
   435E AF                  858 	.db #0xAF	; 175
   435F AF                  859 	.db #0xAF	; 175
   4360 02                  860 	.db #0x02	; 2
   4361 C3                  861 	.db #0xC3	; 195
   4362 AF                  862 	.db #0xAF	; 175
   4363 AF                  863 	.db #0xAF	; 175
   4364 60                  864 	.db #0x60	; 96
   4365 C3                  865 	.db #0xC3	; 195
   4366 AF                  866 	.db #0xAF	; 175
   4367 AF                  867 	.db #0xAF	; 175
   4368 69                  868 	.db #0x69	; 105	'i'
   4369 C3                  869 	.db #0xC3	; 195
   436A AF                  870 	.db #0xAF	; 175
   436B AF                  871 	.db #0xAF	; 175
   436C 0F                  872 	.db #0x0F	; 15
   436D 0F                  873 	.db #0x0F	; 15
   436E 0F                  874 	.db #0x0F	; 15
   436F 0F                  875 	.db #0x0F	; 15
   4370                     876 _livestock:
   4370 03                  877 	.db #0x03	; 3
   4371 0F                  878 	.db #0x0F	; 15
   4372 0F                  879 	.db #0x0F	; 15
   4373 0F                  880 	.db #0x0F	; 15
   4374 61                  881 	.db #0x61	; 97	'a'
   4375 F5                  882 	.db #0xF5	; 245
   4376 F5                  883 	.db #0xF5	; 245
   4377 E5                  884 	.db #0xE5	; 229
   4378 61                  885 	.db #0x61	; 97	'a'
   4379 8F                  886 	.db #0x8F	; 143
   437A 0F                  887 	.db #0x0F	; 15
   437B 2F                  888 	.db #0x2F	; 47
   437C 69                  889 	.db #0x69	; 105	'i'
   437D 87                  890 	.db #0x87	; 135
   437E 0F                  891 	.db #0x0F	; 15
   437F AD                  892 	.db #0xAD	; 173
   4380 0F                  893 	.db #0x0F	; 15
   4381 9F                  894 	.db #0x9F	; 159
   4382 0F                  895 	.db #0x0F	; 15
   4383 2F                  896 	.db #0x2F	; 47
   4384 7D                  897 	.db #0x7D	; 125
   4385 87                  898 	.db #0x87	; 135
   4386 0F                  899 	.db #0x0F	; 15
   4387 2D                  900 	.db #0x2D	; 45
   4388 4B                  901 	.db #0x4B	; 75	'K'
   4389 0F                  902 	.db #0x0F	; 15
   438A 2F                  903 	.db #0x2F	; 47
   438B 2F                  904 	.db #0x2F	; 47
   438C 4F                  905 	.db #0x4F	; 79	'O'
   438D 0F                  906 	.db #0x0F	; 15
   438E 0F                  907 	.db #0x0F	; 15
   438F 2D                  908 	.db #0x2D	; 45
   4390 5B                  909 	.db #0x5B	; 91
   4391 1F                  910 	.db #0x1F	; 31
   4392 0F                  911 	.db #0x0F	; 15
   4393 2F                  912 	.db #0x2F	; 47
   4394 4F                  913 	.db #0x4F	; 79	'O'
   4395 0F                  914 	.db #0x0F	; 15
   4396 1F                  915 	.db #0x1F	; 31
   4397 2D                  916 	.db #0x2D	; 45
   4398 4B                  917 	.db #0x4B	; 75	'K'
   4399 0F                  918 	.db #0x0F	; 15
   439A 0F                  919 	.db #0x0F	; 15
   439B 2F                  920 	.db #0x2F	; 47
   439C 4F                  921 	.db #0x4F	; 79	'O'
   439D 4F                  922 	.db #0x4F	; 79	'O'
   439E 0F                  923 	.db #0x0F	; 15
   439F 2D                  924 	.db #0x2D	; 45
   43A0 4B                  925 	.db #0x4B	; 75	'K'
   43A1 0F                  926 	.db #0x0F	; 15
   43A2 2F                  927 	.db #0x2F	; 47
   43A3 2F                  928 	.db #0x2F	; 47
   43A4 4F                  929 	.db #0x4F	; 79	'O'
   43A5 0F                  930 	.db #0x0F	; 15
   43A6 0F                  931 	.db #0x0F	; 15
   43A7 2D                  932 	.db #0x2D	; 45
   43A8 7A                  933 	.db #0x7A	; 122	'z'
   43A9 FA                  934 	.db #0xFA	; 250
   43AA FA                  935 	.db #0xFA	; 250
   43AB EB                  936 	.db #0xEB	; 235
   43AC 0F                  937 	.db #0x0F	; 15
   43AD 0F                  938 	.db #0x0F	; 15
   43AE 0F                  939 	.db #0x0F	; 15
   43AF 0F                  940 	.db #0x0F	; 15
                            941 ;src/includes/gui.h:26: void drawBoxM2(int width_, int height_)
                            942 ;	---------------------------------
                            943 ; Function drawBoxM2
                            944 ; ---------------------------------
   43B0                     945 _drawBoxM2::
   43B0 DD E5         [15]  946 	push	ix
   43B2 DD 21 00 00   [14]  947 	ld	ix,#0
   43B6 DD 39         [15]  948 	add	ix,sp
   43B8 21 FA FF      [10]  949 	ld	hl,#-6
   43BB 39            [11]  950 	add	hl,sp
   43BC F9            [ 6]  951 	ld	sp,hl
                            952 ;src/includes/gui.h:31: int left = (80-width_)/2;
   43BD 3E 50         [ 7]  953 	ld	a,#0x50
   43BF DD 96 04      [19]  954 	sub	a, 4 (ix)
   43C2 4F            [ 4]  955 	ld	c,a
   43C3 3E 00         [ 7]  956 	ld	a,#0x00
   43C5 DD 9E 05      [19]  957 	sbc	a, 5 (ix)
   43C8 47            [ 4]  958 	ld	b,a
   43C9 61            [ 4]  959 	ld	h,c
   43CA 50            [ 4]  960 	ld	d,b
   43CB CB 78         [ 8]  961 	bit	7, b
   43CD 28 03         [12]  962 	jr	Z,00103$
   43CF 03            [ 6]  963 	inc	bc
   43D0 61            [ 4]  964 	ld	h,c
   43D1 50            [ 4]  965 	ld	d,b
   43D2                     966 00103$:
   43D2 5C            [ 4]  967 	ld	e, h
   43D3 CB 2A         [ 8]  968 	sra	d
   43D5 CB 1B         [ 8]  969 	rr	e
                            970 ;src/includes/gui.h:32: int top = (200-height_)/2;
   43D7 3E C8         [ 7]  971 	ld	a,#0xC8
   43D9 DD 96 06      [19]  972 	sub	a, 6 (ix)
   43DC 4F            [ 4]  973 	ld	c,a
   43DD 3E 00         [ 7]  974 	ld	a,#0x00
   43DF DD 9E 07      [19]  975 	sbc	a, 7 (ix)
   43E2 47            [ 4]  976 	ld	b,a
   43E3 61            [ 4]  977 	ld	h,c
   43E4 68            [ 4]  978 	ld	l,b
   43E5 CB 78         [ 8]  979 	bit	7, b
   43E7 28 03         [12]  980 	jr	Z,00104$
   43E9 03            [ 6]  981 	inc	bc
   43EA 61            [ 4]  982 	ld	h,c
   43EB 68            [ 4]  983 	ld	l,b
   43EC                     984 00104$:
   43EC DD 74 FA      [19]  985 	ld	-6 (ix),h
   43EF DD 75 FB      [19]  986 	ld	-5 (ix),l
   43F2 DD CB FB 2E   [23]  987 	sra	-5 (ix)
   43F6 DD CB FA 1E   [23]  988 	rr	-6 (ix)
                            989 ;src/includes/gui.h:35: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   43FA DD 7E FA      [19]  990 	ld	a,-6 (ix)
   43FD DD 77 FC      [19]  991 	ld	-4 (ix), a
   4400 C6 05         [ 7]  992 	add	a, #0x05
   4402 4F            [ 4]  993 	ld	c,a
   4403 DD 73 FD      [19]  994 	ld	-3 (ix), e
   4406 63            [ 4]  995 	ld	h, e
   4407 24            [ 4]  996 	inc	h
   4408 24            [ 4]  997 	inc	h
   4409 D5            [11]  998 	push	de
   440A 79            [ 4]  999 	ld	a,c
   440B F5            [11] 1000 	push	af
   440C 33            [ 6] 1001 	inc	sp
   440D E5            [11] 1002 	push	hl
   440E 33            [ 6] 1003 	inc	sp
   440F 21 00 C0      [10] 1004 	ld	hl,#0xC000
   4412 E5            [11] 1005 	push	hl
   4413 CD AF 54      [17] 1006 	call	_cpct_getScreenPtr
   4416 D1            [10] 1007 	pop	de
                           1008 ;src/includes/gui.h:36: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   4417 DD 46 06      [19] 1009 	ld	b,6 (ix)
   441A DD 4E 04      [19] 1010 	ld	c,4 (ix)
   441D 79            [ 4] 1011 	ld	a,c
   441E C6 FF         [ 7] 1012 	add	a,#0xFF
   4420 DD 75 FE      [19] 1013 	ld	-2 (ix),l
   4423 DD 74 FF      [19] 1014 	ld	-1 (ix),h
   4426 C5            [11] 1015 	push	bc
   4427 D5            [11] 1016 	push	de
   4428 C5            [11] 1017 	push	bc
   4429 33            [ 6] 1018 	inc	sp
   442A F5            [11] 1019 	push	af
   442B 33            [ 6] 1020 	inc	sp
   442C AF            [ 4] 1021 	xor	a, a
   442D F5            [11] 1022 	push	af
   442E 33            [ 6] 1023 	inc	sp
   442F DD 6E FE      [19] 1024 	ld	l,-2 (ix)
   4432 DD 66 FF      [19] 1025 	ld	h,-1 (ix)
   4435 E5            [11] 1026 	push	hl
   4436 CD F6 53      [17] 1027 	call	_cpct_drawSolidBox
   4439 F1            [10] 1028 	pop	af
   443A F1            [10] 1029 	pop	af
   443B 33            [ 6] 1030 	inc	sp
   443C D1            [10] 1031 	pop	de
   443D C1            [10] 1032 	pop	bc
                           1033 ;src/includes/gui.h:39: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   443E DD 66 FA      [19] 1034 	ld	h,-6 (ix)
   4441 53            [ 4] 1035 	ld	d,e
   4442 C5            [11] 1036 	push	bc
   4443 E5            [11] 1037 	push	hl
   4444 33            [ 6] 1038 	inc	sp
   4445 D5            [11] 1039 	push	de
   4446 33            [ 6] 1040 	inc	sp
   4447 21 00 C0      [10] 1041 	ld	hl,#0xC000
   444A E5            [11] 1042 	push	hl
   444B CD AF 54      [17] 1043 	call	_cpct_getScreenPtr
   444E C1            [10] 1044 	pop	bc
                           1045 ;src/includes/gui.h:40: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   444F DD 7E 04      [19] 1046 	ld	a,4 (ix)
   4452 EB            [ 4] 1047 	ex	de,hl
   4453 C5            [11] 1048 	push	bc
   4454 C5            [11] 1049 	push	bc
   4455 33            [ 6] 1050 	inc	sp
   4456 47            [ 4] 1051 	ld	b,a
   4457 0E F8         [ 7] 1052 	ld	c,#0xF8
   4459 C5            [11] 1053 	push	bc
   445A D5            [11] 1054 	push	de
   445B CD F6 53      [17] 1055 	call	_cpct_drawSolidBox
   445E F1            [10] 1056 	pop	af
   445F F1            [10] 1057 	pop	af
   4460 33            [ 6] 1058 	inc	sp
   4461 C1            [10] 1059 	pop	bc
                           1060 ;src/includes/gui.h:43: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   4462 DD 66 FC      [19] 1061 	ld	h,-4 (ix)
   4465 24            [ 4] 1062 	inc	h
   4466 DD 56 FD      [19] 1063 	ld	d,-3 (ix)
   4469 14            [ 4] 1064 	inc	d
   446A C5            [11] 1065 	push	bc
   446B E5            [11] 1066 	push	hl
   446C 33            [ 6] 1067 	inc	sp
   446D D5            [11] 1068 	push	de
   446E 33            [ 6] 1069 	inc	sp
   446F 21 00 C0      [10] 1070 	ld	hl,#0xC000
   4472 E5            [11] 1071 	push	hl
   4473 CD AF 54      [17] 1072 	call	_cpct_getScreenPtr
   4476 C1            [10] 1073 	pop	bc
   4477 5D            [ 4] 1074 	ld	e, l
   4478 54            [ 4] 1075 	ld	d, h
                           1076 ;src/includes/gui.h:44: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   4479 DD 66 06      [19] 1077 	ld	h,6 (ix)
   447C 25            [ 4] 1078 	dec	h
   447D 25            [ 4] 1079 	dec	h
   447E 79            [ 4] 1080 	ld	a,c
   447F C6 FE         [ 7] 1081 	add	a,#0xFE
   4481 E5            [11] 1082 	push	hl
   4482 33            [ 6] 1083 	inc	sp
   4483 47            [ 4] 1084 	ld	b,a
   4484 0E FF         [ 7] 1085 	ld	c,#0xFF
   4486 C5            [11] 1086 	push	bc
   4487 D5            [11] 1087 	push	de
   4488 CD F6 53      [17] 1088 	call	_cpct_drawSolidBox
   448B DD F9         [10] 1089 	ld	sp,ix
   448D DD E1         [14] 1090 	pop	ix
   448F C9            [10] 1091 	ret
                           1092 ;src/includes/gui.h:47: void drawMenuEntry(char **menu , u8 nbEntry, u8 iSelect)
                           1093 ;	---------------------------------
                           1094 ; Function drawMenuEntry
                           1095 ; ---------------------------------
   4490                    1096 _drawMenuEntry::
   4490 DD E5         [15] 1097 	push	ix
   4492 DD 21 00 00   [14] 1098 	ld	ix,#0
   4496 DD 39         [15] 1099 	add	ix,sp
   4498 21 FA FF      [10] 1100 	ld	hl,#-6
   449B 39            [11] 1101 	add	hl,sp
   449C F9            [ 6] 1102 	ld	sp,hl
                           1103 ;src/includes/gui.h:52: drawBoxM2(30,nbEntry*12);
   449D DD 4E 06      [19] 1104 	ld	c,6 (ix)
   44A0 06 00         [ 7] 1105 	ld	b,#0x00
   44A2 69            [ 4] 1106 	ld	l, c
   44A3 60            [ 4] 1107 	ld	h, b
   44A4 29            [11] 1108 	add	hl, hl
   44A5 09            [11] 1109 	add	hl, bc
   44A6 29            [11] 1110 	add	hl, hl
   44A7 29            [11] 1111 	add	hl, hl
   44A8 E5            [11] 1112 	push	hl
   44A9 21 1E 00      [10] 1113 	ld	hl,#0x001E
   44AC E5            [11] 1114 	push	hl
   44AD CD B0 43      [17] 1115 	call	_drawBoxM2
   44B0 F1            [10] 1116 	pop	af
   44B1 F1            [10] 1117 	pop	af
                           1118 ;src/includes/gui.h:55: pvideo = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   44B2 DD 4E 06      [19] 1119 	ld	c,6 (ix)
   44B5 06 00         [ 7] 1120 	ld	b,#0x00
   44B7 69            [ 4] 1121 	ld	l, c
   44B8 60            [ 4] 1122 	ld	h, b
   44B9 29            [11] 1123 	add	hl, hl
   44BA 29            [11] 1124 	add	hl, hl
   44BB 09            [11] 1125 	add	hl, bc
   44BC 29            [11] 1126 	add	hl, hl
   44BD 4D            [ 4] 1127 	ld	c,l
   44BE 44            [ 4] 1128 	ld	b,h
   44BF 3E C9         [ 7] 1129 	ld	a,#0xC9
   44C1 91            [ 4] 1130 	sub	a, c
   44C2 57            [ 4] 1131 	ld	d,a
   44C3 3E 00         [ 7] 1132 	ld	a,#0x00
   44C5 98            [ 4] 1133 	sbc	a, b
   44C6 5F            [ 4] 1134 	ld	e,a
   44C7 6A            [ 4] 1135 	ld	l, d
   44C8 63            [ 4] 1136 	ld	h, e
   44C9 CB 7B         [ 8] 1137 	bit	7, e
   44CB 28 03         [12] 1138 	jr	Z,00114$
   44CD 6A            [ 4] 1139 	ld	l, d
   44CE 63            [ 4] 1140 	ld	h, e
   44CF 23            [ 6] 1141 	inc	hl
   44D0                    1142 00114$:
   44D0 CB 2C         [ 8] 1143 	sra	h
   44D2 CB 1D         [ 8] 1144 	rr	l
   44D4 55            [ 4] 1145 	ld	d,l
   44D5 DD 7E 07      [19] 1146 	ld	a,7 (ix)
   44D8 5F            [ 4] 1147 	ld	e,a
   44D9 87            [ 4] 1148 	add	a, a
   44DA 87            [ 4] 1149 	add	a, a
   44DB 83            [ 4] 1150 	add	a, e
   44DC 87            [ 4] 1151 	add	a, a
   44DD 82            [ 4] 1152 	add	a,d
   44DE C5            [11] 1153 	push	bc
   44DF 57            [ 4] 1154 	ld	d,a
   44E0 1E 20         [ 7] 1155 	ld	e,#0x20
   44E2 D5            [11] 1156 	push	de
   44E3 21 00 C0      [10] 1157 	ld	hl,#0xC000
   44E6 E5            [11] 1158 	push	hl
   44E7 CD AF 54      [17] 1159 	call	_cpct_getScreenPtr
   44EA C1            [10] 1160 	pop	bc
                           1161 ;src/includes/gui.h:56: cpct_drawSolidBox(pvideo, 0b00000000, 17, 10);
   44EB EB            [ 4] 1162 	ex	de,hl
   44EC C5            [11] 1163 	push	bc
   44ED 21 11 0A      [10] 1164 	ld	hl,#0x0A11
   44F0 E5            [11] 1165 	push	hl
   44F1 AF            [ 4] 1166 	xor	a, a
   44F2 F5            [11] 1167 	push	af
   44F3 33            [ 6] 1168 	inc	sp
   44F4 D5            [11] 1169 	push	de
   44F5 CD F6 53      [17] 1170 	call	_cpct_drawSolidBox
   44F8 F1            [10] 1171 	pop	af
   44F9 F1            [10] 1172 	pop	af
   44FA 33            [ 6] 1173 	inc	sp
   44FB C1            [10] 1174 	pop	bc
                           1175 ;src/includes/gui.h:59: for(i=0; i<14000; i++) {}
   44FC 21 B0 36      [10] 1176 	ld	hl,#0x36B0
   44FF                    1177 00108$:
   44FF 2B            [ 6] 1178 	dec	hl
   4500 7C            [ 4] 1179 	ld	a,h
   4501 B5            [ 4] 1180 	or	a,l
   4502 20 FB         [12] 1181 	jr	NZ,00108$
                           1182 ;src/includes/gui.h:62: for(i=0; i<nbEntry; i++)
   4504 3E CA         [ 7] 1183 	ld	a,#0xCA
   4506 91            [ 4] 1184 	sub	a, c
   4507 DD 77 FE      [19] 1185 	ld	-2 (ix),a
   450A 3E 00         [ 7] 1186 	ld	a,#0x00
   450C 98            [ 4] 1187 	sbc	a, b
   450D DD 77 FF      [19] 1188 	ld	-1 (ix), a
   4510 07            [ 4] 1189 	rlca
   4511 E6 01         [ 7] 1190 	and	a,#0x01
   4513 5F            [ 4] 1191 	ld	e,a
   4514 21 00 00      [10] 1192 	ld	hl,#0x0000
   4517 E3            [19] 1193 	ex	(sp), hl
   4518                    1194 00110$:
   4518 DD 66 06      [19] 1195 	ld	h,6 (ix)
   451B 2E 00         [ 7] 1196 	ld	l,#0x00
   451D DD 7E FA      [19] 1197 	ld	a,-6 (ix)
   4520 94            [ 4] 1198 	sub	a, h
   4521 DD 7E FB      [19] 1199 	ld	a,-5 (ix)
   4524 9D            [ 4] 1200 	sbc	a, l
   4525 E2 2A 45      [10] 1201 	jp	PO, 00146$
   4528 EE 80         [ 7] 1202 	xor	a, #0x80
   452A                    1203 00146$:
   452A F2 D0 45      [10] 1204 	jp	P,00112$
                           1205 ;src/includes/gui.h:64: if(i==iSelect)
   452D DD 56 07      [19] 1206 	ld	d,7 (ix)
   4530 06 00         [ 7] 1207 	ld	b,#0x00
   4532 DD 7E FA      [19] 1208 	ld	a,-6 (ix)
   4535 92            [ 4] 1209 	sub	a, d
   4536 20 0A         [12] 1210 	jr	NZ,00103$
   4538 DD 7E FB      [19] 1211 	ld	a,-5 (ix)
   453B 90            [ 4] 1212 	sub	a, b
   453C 20 04         [12] 1213 	jr	NZ,00103$
                           1214 ;src/includes/gui.h:65: penSelected = 1;
   453E 0E 01         [ 7] 1215 	ld	c,#0x01
   4540 18 02         [12] 1216 	jr	00104$
   4542                    1217 00103$:
                           1218 ;src/includes/gui.h:67: penSelected = 0;
   4542 0E 00         [ 7] 1219 	ld	c,#0x00
   4544                    1220 00104$:
                           1221 ;src/includes/gui.h:69: pvideo = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   4544 DD 6E FE      [19] 1222 	ld	l,-2 (ix)
   4547 DD 66 FF      [19] 1223 	ld	h,-1 (ix)
   454A 7B            [ 4] 1224 	ld	a,e
   454B B7            [ 4] 1225 	or	a, a
   454C 28 07         [12] 1226 	jr	Z,00115$
   454E DD 6E FE      [19] 1227 	ld	l,-2 (ix)
   4551 DD 66 FF      [19] 1228 	ld	h,-1 (ix)
   4554 23            [ 6] 1229 	inc	hl
   4555                    1230 00115$:
   4555 CB 2C         [ 8] 1231 	sra	h
   4557 CB 1D         [ 8] 1232 	rr	l
   4559 45            [ 4] 1233 	ld	b,l
   455A DD 6E FA      [19] 1234 	ld	l,-6 (ix)
   455D D5            [11] 1235 	push	de
   455E 5D            [ 4] 1236 	ld	e,l
   455F 29            [11] 1237 	add	hl, hl
   4560 29            [11] 1238 	add	hl, hl
   4561 19            [11] 1239 	add	hl, de
   4562 29            [11] 1240 	add	hl, hl
   4563 D1            [10] 1241 	pop	de
   4564 78            [ 4] 1242 	ld	a,b
   4565 85            [ 4] 1243 	add	a, l
   4566 DD 77 FD      [19] 1244 	ld	-3 (ix),a
   4569 DD 56 FA      [19] 1245 	ld	d,-6 (ix)
   456C DD 46 FB      [19] 1246 	ld	b,-5 (ix)
   456F CB 22         [ 8] 1247 	sla	d
   4571 CB 10         [ 8] 1248 	rl	b
   4573 DD 7E 04      [19] 1249 	ld	a,4 (ix)
   4576 82            [ 4] 1250 	add	a, d
   4577 57            [ 4] 1251 	ld	d,a
   4578 DD 7E 05      [19] 1252 	ld	a,5 (ix)
   457B 88            [ 4] 1253 	adc	a, b
   457C 47            [ 4] 1254 	ld	b,a
   457D 6A            [ 4] 1255 	ld	l, d
   457E 60            [ 4] 1256 	ld	h, b
   457F 7E            [ 7] 1257 	ld	a, (hl)
   4580 23            [ 6] 1258 	inc	hl
   4581 66            [ 7] 1259 	ld	h,(hl)
   4582 6F            [ 4] 1260 	ld	l,a
   4583 C5            [11] 1261 	push	bc
   4584 D5            [11] 1262 	push	de
   4585 E5            [11] 1263 	push	hl
   4586 CD D7 53      [17] 1264 	call	_strlen
   4589 F1            [10] 1265 	pop	af
   458A D1            [10] 1266 	pop	de
   458B C1            [10] 1267 	pop	bc
   458C 3E 52         [ 7] 1268 	ld	a,#0x52
   458E 95            [ 4] 1269 	sub	a, l
   458F 6F            [ 4] 1270 	ld	l,a
   4590 3E 00         [ 7] 1271 	ld	a,#0x00
   4592 9C            [ 4] 1272 	sbc	a, h
   4593 67            [ 4] 1273 	ld	h,a
   4594 CB 3C         [ 8] 1274 	srl	h
   4596 CB 1D         [ 8] 1275 	rr	l
   4598 DD 75 FC      [19] 1276 	ld	-4 (ix),l
   459B C5            [11] 1277 	push	bc
   459C D5            [11] 1278 	push	de
   459D DD 66 FD      [19] 1279 	ld	h,-3 (ix)
   45A0 DD 6E FC      [19] 1280 	ld	l,-4 (ix)
   45A3 E5            [11] 1281 	push	hl
   45A4 21 00 C0      [10] 1282 	ld	hl,#0xC000
   45A7 E5            [11] 1283 	push	hl
   45A8 CD AF 54      [17] 1284 	call	_cpct_getScreenPtr
   45AB D1            [10] 1285 	pop	de
   45AC C1            [10] 1286 	pop	bc
   45AD E5            [11] 1287 	push	hl
   45AE FD E1         [14] 1288 	pop	iy
                           1289 ;src/includes/gui.h:70: cpct_drawStringM2 (menu[i], pvideo, penSelected);
   45B0 6A            [ 4] 1290 	ld	l, d
   45B1 60            [ 4] 1291 	ld	h, b
   45B2 7E            [ 7] 1292 	ld	a, (hl)
   45B3 23            [ 6] 1293 	inc	hl
   45B4 66            [ 7] 1294 	ld	h,(hl)
   45B5 6F            [ 4] 1295 	ld	l,a
   45B6 D5            [11] 1296 	push	de
   45B7 79            [ 4] 1297 	ld	a,c
   45B8 F5            [11] 1298 	push	af
   45B9 33            [ 6] 1299 	inc	sp
   45BA FD E5         [15] 1300 	push	iy
   45BC E5            [11] 1301 	push	hl
   45BD CD C9 51      [17] 1302 	call	_cpct_drawStringM2
   45C0 F1            [10] 1303 	pop	af
   45C1 F1            [10] 1304 	pop	af
   45C2 33            [ 6] 1305 	inc	sp
   45C3 D1            [10] 1306 	pop	de
                           1307 ;src/includes/gui.h:62: for(i=0; i<nbEntry; i++)
   45C4 DD 34 FA      [23] 1308 	inc	-6 (ix)
   45C7 C2 18 45      [10] 1309 	jp	NZ,00110$
   45CA DD 34 FB      [23] 1310 	inc	-5 (ix)
   45CD C3 18 45      [10] 1311 	jp	00110$
   45D0                    1312 00112$:
   45D0 DD F9         [10] 1313 	ld	sp, ix
   45D2 DD E1         [14] 1314 	pop	ix
   45D4 C9            [10] 1315 	ret
                           1316 ;src/includes/gui.h:74: u8 drawMenu(char **menu, u8 nbEntry)
                           1317 ;	---------------------------------
                           1318 ; Function drawMenu
                           1319 ; ---------------------------------
   45D5                    1320 _drawMenu::
   45D5 DD E5         [15] 1321 	push	ix
   45D7 DD 21 00 00   [14] 1322 	ld	ix,#0
   45DB DD 39         [15] 1323 	add	ix,sp
   45DD F5            [11] 1324 	push	af
                           1325 ;src/includes/gui.h:77: u8 iSelect=0;
   45DE 16 00         [ 7] 1326 	ld	d,#0x00
                           1327 ;src/includes/gui.h:79: drawMenuEntry(menu, nbEntry, iSelect);
   45E0 D5            [11] 1328 	push	de
   45E1 AF            [ 4] 1329 	xor	a, a
   45E2 F5            [11] 1330 	push	af
   45E3 33            [ 6] 1331 	inc	sp
   45E4 DD 7E 06      [19] 1332 	ld	a,6 (ix)
   45E7 F5            [11] 1333 	push	af
   45E8 33            [ 6] 1334 	inc	sp
   45E9 DD 6E 04      [19] 1335 	ld	l,4 (ix)
   45EC DD 66 05      [19] 1336 	ld	h,5 (ix)
   45EF E5            [11] 1337 	push	hl
   45F0 CD 90 44      [17] 1338 	call	_drawMenuEntry
   45F3 F1            [10] 1339 	pop	af
   45F4 F1            [10] 1340 	pop	af
   45F5 D1            [10] 1341 	pop	de
                           1342 ;src/includes/gui.h:81: do{
   45F6 DD 5E 06      [19] 1343 	ld	e,6 (ix)
   45F9 1D            [ 4] 1344 	dec	e
   45FA                    1345 00111$:
                           1346 ;src/includes/gui.h:82: cpct_scanKeyboard(); 
   45FA D5            [11] 1347 	push	de
   45FB CD CF 54      [17] 1348 	call	_cpct_scanKeyboard
   45FE 21 00 01      [10] 1349 	ld	hl,#0x0100
   4601 CD B1 51      [17] 1350 	call	_cpct_isKeyPressed
   4604 7D            [ 4] 1351 	ld	a,l
   4605 D1            [10] 1352 	pop	de
   4606 B7            [ 4] 1353 	or	a, a
   4607 28 1D         [12] 1354 	jr	Z,00105$
                           1355 ;src/includes/gui.h:86: if(iSelect ==0)
   4609 7A            [ 4] 1356 	ld	a,d
   460A B7            [ 4] 1357 	or	a, a
   460B 20 03         [12] 1358 	jr	NZ,00102$
                           1359 ;src/includes/gui.h:87: iSelect = nbEntry-1;
   460D 53            [ 4] 1360 	ld	d,e
   460E 18 01         [12] 1361 	jr	00103$
   4610                    1362 00102$:
                           1363 ;src/includes/gui.h:89: iSelect--;
   4610 15            [ 4] 1364 	dec	d
   4611                    1365 00103$:
                           1366 ;src/includes/gui.h:91: drawMenuEntry(menu, nbEntry, iSelect);
   4611 D5            [11] 1367 	push	de
   4612 D5            [11] 1368 	push	de
   4613 33            [ 6] 1369 	inc	sp
   4614 DD 7E 06      [19] 1370 	ld	a,6 (ix)
   4617 F5            [11] 1371 	push	af
   4618 33            [ 6] 1372 	inc	sp
   4619 DD 6E 04      [19] 1373 	ld	l,4 (ix)
   461C DD 66 05      [19] 1374 	ld	h,5 (ix)
   461F E5            [11] 1375 	push	hl
   4620 CD 90 44      [17] 1376 	call	_drawMenuEntry
   4623 F1            [10] 1377 	pop	af
   4624 F1            [10] 1378 	pop	af
   4625 D1            [10] 1379 	pop	de
   4626                    1380 00105$:
                           1381 ;src/includes/gui.h:94: if ( cpct_isKeyPressed(Key_CursorDown) )
   4626 D5            [11] 1382 	push	de
   4627 21 00 04      [10] 1383 	ld	hl,#0x0400
   462A CD B1 51      [17] 1384 	call	_cpct_isKeyPressed
   462D 7D            [ 4] 1385 	ld	a,l
   462E D1            [10] 1386 	pop	de
   462F B7            [ 4] 1387 	or	a, a
   4630 28 33         [12] 1388 	jr	Z,00112$
                           1389 ;src/includes/gui.h:96: if(iSelect == nbEntry-1)
   4632 DD 4E 06      [19] 1390 	ld	c,6 (ix)
   4635 06 00         [ 7] 1391 	ld	b,#0x00
   4637 0B            [ 6] 1392 	dec	bc
   4638 DD 72 FE      [19] 1393 	ld	-2 (ix),d
   463B DD 36 FF 00   [19] 1394 	ld	-1 (ix),#0x00
   463F 79            [ 4] 1395 	ld	a,c
   4640 DD 96 FE      [19] 1396 	sub	a, -2 (ix)
   4643 20 0A         [12] 1397 	jr	NZ,00107$
   4645 78            [ 4] 1398 	ld	a,b
   4646 DD 96 FF      [19] 1399 	sub	a, -1 (ix)
   4649 20 04         [12] 1400 	jr	NZ,00107$
                           1401 ;src/includes/gui.h:97: iSelect = 0;
   464B 16 00         [ 7] 1402 	ld	d,#0x00
   464D 18 01         [12] 1403 	jr	00108$
   464F                    1404 00107$:
                           1405 ;src/includes/gui.h:99: iSelect++;
   464F 14            [ 4] 1406 	inc	d
   4650                    1407 00108$:
                           1408 ;src/includes/gui.h:101: drawMenuEntry(menu, nbEntry, iSelect);
   4650 D5            [11] 1409 	push	de
   4651 D5            [11] 1410 	push	de
   4652 33            [ 6] 1411 	inc	sp
   4653 DD 7E 06      [19] 1412 	ld	a,6 (ix)
   4656 F5            [11] 1413 	push	af
   4657 33            [ 6] 1414 	inc	sp
   4658 DD 6E 04      [19] 1415 	ld	l,4 (ix)
   465B DD 66 05      [19] 1416 	ld	h,5 (ix)
   465E E5            [11] 1417 	push	hl
   465F CD 90 44      [17] 1418 	call	_drawMenuEntry
   4662 F1            [10] 1419 	pop	af
   4663 F1            [10] 1420 	pop	af
   4664 D1            [10] 1421 	pop	de
   4665                    1422 00112$:
                           1423 ;src/includes/gui.h:104: while(!cpct_isKeyPressed(Key_Return));
   4665 D5            [11] 1424 	push	de
   4666 21 02 04      [10] 1425 	ld	hl,#0x0402
   4669 CD B1 51      [17] 1426 	call	_cpct_isKeyPressed
   466C 7D            [ 4] 1427 	ld	a,l
   466D D1            [10] 1428 	pop	de
   466E B7            [ 4] 1429 	or	a, a
   466F 28 89         [12] 1430 	jr	Z,00111$
                           1431 ;src/includes/gui.h:107: for(i=0; i<14000; i++) {}
   4671 21 B0 36      [10] 1432 	ld	hl,#0x36B0
   4674                    1433 00117$:
   4674 4D            [ 4] 1434 	ld	c,l
   4675 44            [ 4] 1435 	ld	b,h
   4676 0B            [ 6] 1436 	dec	bc
   4677 69            [ 4] 1437 	ld	l, c
   4678 78            [ 4] 1438 	ld	a,b
   4679 67            [ 4] 1439 	ld	h,a
   467A B1            [ 4] 1440 	or	a,c
   467B 20 F7         [12] 1441 	jr	NZ,00117$
                           1442 ;src/includes/gui.h:109: return iSelect;
   467D 6A            [ 4] 1443 	ld	l,d
   467E DD F9         [10] 1444 	ld	sp, ix
   4680 DD E1         [14] 1445 	pop	ix
   4682 C9            [10] 1446 	ret
                           1447 ;src/includes/gui.h:119: u8 drawWindow(char **text, u8 nbLine, u8 button)
                           1448 ;	---------------------------------
                           1449 ; Function drawWindow
                           1450 ; ---------------------------------
   4683                    1451 _drawWindow::
   4683 DD E5         [15] 1452 	push	ix
   4685 DD 21 00 00   [14] 1453 	ld	ix,#0
   4689 DD 39         [15] 1454 	add	ix,sp
   468B 21 F5 FF      [10] 1455 	ld	hl,#-11
   468E 39            [11] 1456 	add	hl,sp
   468F F9            [ 6] 1457 	ld	sp,hl
                           1458 ;src/includes/gui.h:123: u8 valueReturn=0;
   4690 DD 36 F6 00   [19] 1459 	ld	-10 (ix),#0x00
                           1460 ;src/includes/gui.h:126: if(button == 0)
   4694 DD 7E 07      [19] 1461 	ld	a,7 (ix)
   4697 B7            [ 4] 1462 	or	a, a
   4698 20 05         [12] 1463 	jr	NZ,00102$
                           1464 ;src/includes/gui.h:127: buttonTxt = "<OK>";
   469A 11 0C 48      [10] 1465 	ld	de,#___str_0
   469D 18 03         [12] 1466 	jr	00103$
   469F                    1467 00102$:
                           1468 ;src/includes/gui.h:129: buttonTxt = "<OK>  <Cancel>";
   469F 11 11 48      [10] 1469 	ld	de,#___str_1+0
   46A2                    1470 00103$:
                           1471 ;src/includes/gui.h:131: drawBoxM2(30,(nbLine+2)*12);
   46A2 DD 4E 06      [19] 1472 	ld	c,6 (ix)
   46A5 06 00         [ 7] 1473 	ld	b,#0x00
   46A7 03            [ 6] 1474 	inc	bc
   46A8 03            [ 6] 1475 	inc	bc
   46A9 69            [ 4] 1476 	ld	l, c
   46AA 60            [ 4] 1477 	ld	h, b
   46AB 29            [11] 1478 	add	hl, hl
   46AC 09            [11] 1479 	add	hl, bc
   46AD 29            [11] 1480 	add	hl, hl
   46AE 29            [11] 1481 	add	hl, hl
   46AF C5            [11] 1482 	push	bc
   46B0 D5            [11] 1483 	push	de
   46B1 E5            [11] 1484 	push	hl
   46B2 21 1E 00      [10] 1485 	ld	hl,#0x001E
   46B5 E5            [11] 1486 	push	hl
   46B6 CD B0 43      [17] 1487 	call	_drawBoxM2
   46B9 F1            [10] 1488 	pop	af
   46BA F1            [10] 1489 	pop	af
   46BB D1            [10] 1490 	pop	de
   46BC C1            [10] 1491 	pop	bc
                           1492 ;src/includes/gui.h:133: for(i=0; i<nbLine; i++)
   46BD 69            [ 4] 1493 	ld	l, c
   46BE 60            [ 4] 1494 	ld	h, b
   46BF 29            [11] 1495 	add	hl, hl
   46C0 29            [11] 1496 	add	hl, hl
   46C1 09            [11] 1497 	add	hl, bc
   46C2 29            [11] 1498 	add	hl, hl
   46C3 3E CA         [ 7] 1499 	ld	a,#0xCA
   46C5 95            [ 4] 1500 	sub	a, l
   46C6 DD 77 FE      [19] 1501 	ld	-2 (ix),a
   46C9 3E 00         [ 7] 1502 	ld	a,#0x00
   46CB 9C            [ 4] 1503 	sbc	a, h
   46CC DD 77 FF      [19] 1504 	ld	-1 (ix), a
   46CF 07            [ 4] 1505 	rlca
   46D0 E6 01         [ 7] 1506 	and	a,#0x01
   46D2 DD 77 F9      [19] 1507 	ld	-7 (ix),a
   46D5 DD 36 F5 00   [19] 1508 	ld	-11 (ix),#0x00
   46D9 DD 36 F7 00   [19] 1509 	ld	-9 (ix),#0x00
   46DD                    1510 00114$:
                           1511 ;src/includes/gui.h:135: pvideo = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   46DD DD 7E FE      [19] 1512 	ld	a,-2 (ix)
   46E0 C6 01         [ 7] 1513 	add	a, #0x01
   46E2 DD 77 FC      [19] 1514 	ld	-4 (ix),a
   46E5 DD 7E FF      [19] 1515 	ld	a,-1 (ix)
   46E8 CE 00         [ 7] 1516 	adc	a, #0x00
   46EA DD 77 FD      [19] 1517 	ld	-3 (ix),a
                           1518 ;src/includes/gui.h:133: for(i=0; i<nbLine; i++)
   46ED DD 7E F5      [19] 1519 	ld	a,-11 (ix)
   46F0 DD 96 06      [19] 1520 	sub	a, 6 (ix)
   46F3 D2 7F 47      [10] 1521 	jp	NC,00104$
                           1522 ;src/includes/gui.h:135: pvideo = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   46F6 DD 6E FE      [19] 1523 	ld	l,-2 (ix)
   46F9 DD 66 FF      [19] 1524 	ld	h,-1 (ix)
   46FC DD 7E F9      [19] 1525 	ld	a,-7 (ix)
   46FF B7            [ 4] 1526 	or	a, a
   4700 28 06         [12] 1527 	jr	Z,00118$
   4702 DD 6E FC      [19] 1528 	ld	l,-4 (ix)
   4705 DD 66 FD      [19] 1529 	ld	h,-3 (ix)
   4708                    1530 00118$:
   4708 CB 2C         [ 8] 1531 	sra	h
   470A CB 1D         [ 8] 1532 	rr	l
   470C DD 66 F7      [19] 1533 	ld	h,-9 (ix)
   470F 7D            [ 4] 1534 	ld	a,l
   4710 84            [ 4] 1535 	add	a, h
   4711 DD 77 F8      [19] 1536 	ld	-8 (ix),a
   4714 DD 6E F5      [19] 1537 	ld	l,-11 (ix)
   4717 26 00         [ 7] 1538 	ld	h,#0x00
   4719 29            [11] 1539 	add	hl, hl
   471A 45            [ 4] 1540 	ld	b,l
   471B 4C            [ 4] 1541 	ld	c,h
   471C DD 7E 04      [19] 1542 	ld	a,4 (ix)
   471F 80            [ 4] 1543 	add	a, b
   4720 DD 77 FA      [19] 1544 	ld	-6 (ix),a
   4723 DD 7E 05      [19] 1545 	ld	a,5 (ix)
   4726 89            [ 4] 1546 	adc	a, c
   4727 DD 77 FB      [19] 1547 	ld	-5 (ix),a
   472A DD 6E FA      [19] 1548 	ld	l,-6 (ix)
   472D DD 66 FB      [19] 1549 	ld	h,-5 (ix)
   4730 4E            [ 7] 1550 	ld	c,(hl)
   4731 23            [ 6] 1551 	inc	hl
   4732 46            [ 7] 1552 	ld	b,(hl)
   4733 D5            [11] 1553 	push	de
   4734 C5            [11] 1554 	push	bc
   4735 CD D7 53      [17] 1555 	call	_strlen
   4738 F1            [10] 1556 	pop	af
   4739 D1            [10] 1557 	pop	de
   473A 3E 52         [ 7] 1558 	ld	a,#0x52
   473C 95            [ 4] 1559 	sub	a, l
   473D 6F            [ 4] 1560 	ld	l,a
   473E 3E 00         [ 7] 1561 	ld	a,#0x00
   4740 9C            [ 4] 1562 	sbc	a, h
   4741 67            [ 4] 1563 	ld	h,a
   4742 CB 3C         [ 8] 1564 	srl	h
   4744 CB 1D         [ 8] 1565 	rr	l
   4746 45            [ 4] 1566 	ld	b,l
   4747 D5            [11] 1567 	push	de
   4748 DD 7E F8      [19] 1568 	ld	a,-8 (ix)
   474B F5            [11] 1569 	push	af
   474C 33            [ 6] 1570 	inc	sp
   474D C5            [11] 1571 	push	bc
   474E 33            [ 6] 1572 	inc	sp
   474F 21 00 C0      [10] 1573 	ld	hl,#0xC000
   4752 E5            [11] 1574 	push	hl
   4753 CD AF 54      [17] 1575 	call	_cpct_getScreenPtr
   4756 D1            [10] 1576 	pop	de
   4757 E5            [11] 1577 	push	hl
   4758 FD E1         [14] 1578 	pop	iy
                           1579 ;src/includes/gui.h:136: cpct_drawStringM2 (text[i], pvideo, 0);
   475A DD 6E FA      [19] 1580 	ld	l,-6 (ix)
   475D DD 66 FB      [19] 1581 	ld	h,-5 (ix)
   4760 4E            [ 7] 1582 	ld	c,(hl)
   4761 23            [ 6] 1583 	inc	hl
   4762 46            [ 7] 1584 	ld	b,(hl)
   4763 D5            [11] 1585 	push	de
   4764 AF            [ 4] 1586 	xor	a, a
   4765 F5            [11] 1587 	push	af
   4766 33            [ 6] 1588 	inc	sp
   4767 FD E5         [15] 1589 	push	iy
   4769 C5            [11] 1590 	push	bc
   476A CD C9 51      [17] 1591 	call	_cpct_drawStringM2
   476D F1            [10] 1592 	pop	af
   476E F1            [10] 1593 	pop	af
   476F 33            [ 6] 1594 	inc	sp
   4770 D1            [10] 1595 	pop	de
                           1596 ;src/includes/gui.h:133: for(i=0; i<nbLine; i++)
   4771 DD 7E F7      [19] 1597 	ld	a,-9 (ix)
   4774 C6 0A         [ 7] 1598 	add	a, #0x0A
   4776 DD 77 F7      [19] 1599 	ld	-9 (ix),a
   4779 DD 34 F5      [23] 1600 	inc	-11 (ix)
   477C C3 DD 46      [10] 1601 	jp	00114$
   477F                    1602 00104$:
                           1603 ;src/includes/gui.h:139: pvideo = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   477F DD 46 FE      [19] 1604 	ld	b,-2 (ix)
   4782 DD 66 FF      [19] 1605 	ld	h,-1 (ix)
   4785 DD 7E F9      [19] 1606 	ld	a,-7 (ix)
   4788 B7            [ 4] 1607 	or	a, a
   4789 28 06         [12] 1608 	jr	Z,00119$
   478B DD 46 FC      [19] 1609 	ld	b,-4 (ix)
   478E DD 66 FD      [19] 1610 	ld	h,-3 (ix)
   4791                    1611 00119$:
   4791 CB 2C         [ 8] 1612 	sra	h
   4793 CB 18         [ 8] 1613 	rr	b
   4795 DD 4E 06      [19] 1614 	ld	c,6 (ix)
   4798 0C            [ 4] 1615 	inc	c
   4799 79            [ 4] 1616 	ld	a,c
   479A 87            [ 4] 1617 	add	a, a
   479B 87            [ 4] 1618 	add	a, a
   479C 81            [ 4] 1619 	add	a, c
   479D 87            [ 4] 1620 	add	a, a
   479E 67            [ 4] 1621 	ld	h, a
   479F 80            [ 4] 1622 	add	a,b
   47A0 47            [ 4] 1623 	ld	b,a
   47A1 C5            [11] 1624 	push	bc
   47A2 D5            [11] 1625 	push	de
   47A3 D5            [11] 1626 	push	de
   47A4 CD D7 53      [17] 1627 	call	_strlen
   47A7 F1            [10] 1628 	pop	af
   47A8 D1            [10] 1629 	pop	de
   47A9 C1            [10] 1630 	pop	bc
   47AA 3E 52         [ 7] 1631 	ld	a,#0x52
   47AC 95            [ 4] 1632 	sub	a, l
   47AD 6F            [ 4] 1633 	ld	l,a
   47AE 3E 00         [ 7] 1634 	ld	a,#0x00
   47B0 9C            [ 4] 1635 	sbc	a, h
   47B1 67            [ 4] 1636 	ld	h,a
   47B2 CB 3C         [ 8] 1637 	srl	h
   47B4 CB 1D         [ 8] 1638 	rr	l
   47B6 7D            [ 4] 1639 	ld	a,l
   47B7 D5            [11] 1640 	push	de
   47B8 C5            [11] 1641 	push	bc
   47B9 33            [ 6] 1642 	inc	sp
   47BA F5            [11] 1643 	push	af
   47BB 33            [ 6] 1644 	inc	sp
   47BC 21 00 C0      [10] 1645 	ld	hl,#0xC000
   47BF E5            [11] 1646 	push	hl
   47C0 CD AF 54      [17] 1647 	call	_cpct_getScreenPtr
   47C3 D1            [10] 1648 	pop	de
                           1649 ;src/includes/gui.h:140: cpct_drawStringM2 (buttonTxt, pvideo, 0);
   47C4 4D            [ 4] 1650 	ld	c, l
   47C5 44            [ 4] 1651 	ld	b, h
   47C6 AF            [ 4] 1652 	xor	a, a
   47C7 F5            [11] 1653 	push	af
   47C8 33            [ 6] 1654 	inc	sp
   47C9 C5            [11] 1655 	push	bc
   47CA D5            [11] 1656 	push	de
   47CB CD C9 51      [17] 1657 	call	_cpct_drawStringM2
   47CE F1            [10] 1658 	pop	af
   47CF F1            [10] 1659 	pop	af
   47D0 33            [ 6] 1660 	inc	sp
                           1661 ;src/includes/gui.h:143: do{
   47D1                    1662 00110$:
                           1663 ;src/includes/gui.h:144: cpct_scanKeyboard(); 
   47D1 CD CF 54      [17] 1664 	call	_cpct_scanKeyboard
                           1665 ;src/includes/gui.h:146: if ( cpct_isKeyPressed(Key_Return) )
   47D4 21 02 04      [10] 1666 	ld	hl,#0x0402
   47D7 CD B1 51      [17] 1667 	call	_cpct_isKeyPressed
   47DA 7D            [ 4] 1668 	ld	a,l
   47DB B7            [ 4] 1669 	or	a, a
   47DC 28 04         [12] 1670 	jr	Z,00106$
                           1671 ;src/includes/gui.h:147: valueReturn=1;
   47DE DD 36 F6 01   [19] 1672 	ld	-10 (ix),#0x01
   47E2                    1673 00106$:
                           1674 ;src/includes/gui.h:149: if ( cpct_isKeyPressed(Key_Esc) )
   47E2 21 08 04      [10] 1675 	ld	hl,#0x0408
   47E5 CD B1 51      [17] 1676 	call	_cpct_isKeyPressed
   47E8 7D            [ 4] 1677 	ld	a,l
   47E9 B7            [ 4] 1678 	or	a, a
   47EA 28 04         [12] 1679 	jr	Z,00111$
                           1680 ;src/includes/gui.h:150: valueReturn=0;
   47EC DD 36 F6 00   [19] 1681 	ld	-10 (ix),#0x00
   47F0                    1682 00111$:
                           1683 ;src/includes/gui.h:152: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   47F0 21 02 04      [10] 1684 	ld	hl,#0x0402
   47F3 CD B1 51      [17] 1685 	call	_cpct_isKeyPressed
   47F6 7D            [ 4] 1686 	ld	a,l
   47F7 B7            [ 4] 1687 	or	a, a
   47F8 20 0A         [12] 1688 	jr	NZ,00112$
   47FA 21 08 04      [10] 1689 	ld	hl,#0x0408
   47FD CD B1 51      [17] 1690 	call	_cpct_isKeyPressed
   4800 7D            [ 4] 1691 	ld	a,l
   4801 B7            [ 4] 1692 	or	a, a
   4802 28 CD         [12] 1693 	jr	Z,00110$
   4804                    1694 00112$:
                           1695 ;src/includes/gui.h:154: return valueReturn;
   4804 DD 6E F6      [19] 1696 	ld	l,-10 (ix)
   4807 DD F9         [10] 1697 	ld	sp, ix
   4809 DD E1         [14] 1698 	pop	ix
   480B C9            [10] 1699 	ret
   480C                    1700 ___str_0:
   480C 3C 4F 4B 3E        1701 	.ascii "<OK>"
   4810 00                 1702 	.db 0x00
   4811                    1703 ___str_1:
   4811 3C 4F 4B 3E 20 20  1704 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   481F 00                 1705 	.db 0x00
                           1706 ;src/includes/world.h:16: void drawCursor(u8 x, u8 y, u8 color)
                           1707 ;	---------------------------------
                           1708 ; Function drawCursor
                           1709 ; ---------------------------------
   4820                    1710 _drawCursor::
   4820 DD E5         [15] 1711 	push	ix
   4822 DD 21 00 00   [14] 1712 	ld	ix,#0
   4826 DD 39         [15] 1713 	add	ix,sp
   4828 3B            [ 6] 1714 	dec	sp
                           1715 ;src/includes/world.h:20: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4829 DD 7E 05      [19] 1716 	ld	a,5 (ix)
   482C 07            [ 4] 1717 	rlca
   482D 07            [ 4] 1718 	rlca
   482E 07            [ 4] 1719 	rlca
   482F 07            [ 4] 1720 	rlca
   4830 E6 F0         [ 7] 1721 	and	a,#0xF0
   4832 5F            [ 4] 1722 	ld	e,a
   4833 DD 7E 04      [19] 1723 	ld	a,4 (ix)
   4836 87            [ 4] 1724 	add	a, a
   4837 87            [ 4] 1725 	add	a, a
   4838 57            [ 4] 1726 	ld	d,a
   4839 D5            [11] 1727 	push	de
   483A 7B            [ 4] 1728 	ld	a,e
   483B F5            [11] 1729 	push	af
   483C 33            [ 6] 1730 	inc	sp
   483D D5            [11] 1731 	push	de
   483E 33            [ 6] 1732 	inc	sp
   483F 21 00 C0      [10] 1733 	ld	hl,#0xC000
   4842 E5            [11] 1734 	push	hl
   4843 CD AF 54      [17] 1735 	call	_cpct_getScreenPtr
   4846 D1            [10] 1736 	pop	de
                           1737 ;src/includes/world.h:21: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4847 E5            [11] 1738 	push	hl
   4848 D5            [11] 1739 	push	de
   4849 DD 66 06      [19] 1740 	ld	h,6 (ix)
   484C DD 6E 06      [19] 1741 	ld	l,6 (ix)
   484F E5            [11] 1742 	push	hl
   4850 DD 66 06      [19] 1743 	ld	h,6 (ix)
   4853 DD 6E 06      [19] 1744 	ld	l,6 (ix)
   4856 E5            [11] 1745 	push	hl
   4857 CD BE 53      [17] 1746 	call	_cpct_px2byteM1
   485A F1            [10] 1747 	pop	af
   485B F1            [10] 1748 	pop	af
   485C DD 75 FF      [19] 1749 	ld	-1 (ix),l
   485F D1            [10] 1750 	pop	de
   4860 C1            [10] 1751 	pop	bc
   4861 D5            [11] 1752 	push	de
   4862 21 04 00      [10] 1753 	ld	hl,#0x0004
   4865 E5            [11] 1754 	push	hl
   4866 DD 7E FF      [19] 1755 	ld	a,-1 (ix)
   4869 F5            [11] 1756 	push	af
   486A 33            [ 6] 1757 	inc	sp
   486B C5            [11] 1758 	push	bc
   486C CD B0 53      [17] 1759 	call	_cpct_memset
   486F D1            [10] 1760 	pop	de
                           1761 ;src/includes/world.h:22: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4870 63            [ 4] 1762 	ld	h,e
   4871 24            [ 4] 1763 	inc	h
   4872 D5            [11] 1764 	push	de
   4873 E5            [11] 1765 	push	hl
   4874 33            [ 6] 1766 	inc	sp
   4875 D5            [11] 1767 	push	de
   4876 33            [ 6] 1768 	inc	sp
   4877 21 00 C0      [10] 1769 	ld	hl,#0xC000
   487A E5            [11] 1770 	push	hl
   487B CD AF 54      [17] 1771 	call	_cpct_getScreenPtr
   487E D1            [10] 1772 	pop	de
                           1773 ;src/includes/world.h:23: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   487F E5            [11] 1774 	push	hl
   4880 D5            [11] 1775 	push	de
   4881 DD 66 06      [19] 1776 	ld	h,6 (ix)
   4884 DD 6E 06      [19] 1777 	ld	l,6 (ix)
   4887 E5            [11] 1778 	push	hl
   4888 DD 66 06      [19] 1779 	ld	h,6 (ix)
   488B DD 6E 06      [19] 1780 	ld	l,6 (ix)
   488E E5            [11] 1781 	push	hl
   488F CD BE 53      [17] 1782 	call	_cpct_px2byteM1
   4892 F1            [10] 1783 	pop	af
   4893 F1            [10] 1784 	pop	af
   4894 65            [ 4] 1785 	ld	h,l
   4895 D1            [10] 1786 	pop	de
   4896 C1            [10] 1787 	pop	bc
   4897 69            [ 4] 1788 	ld	l,c
   4898 58            [ 4] 1789 	ld	e,b
   4899 D5            [11] 1790 	push	de
   489A 01 04 00      [10] 1791 	ld	bc,#0x0004
   489D C5            [11] 1792 	push	bc
   489E E5            [11] 1793 	push	hl
   489F 33            [ 6] 1794 	inc	sp
   48A0 63            [ 4] 1795 	ld	h, e
   48A1 E5            [11] 1796 	push	hl
   48A2 CD B0 53      [17] 1797 	call	_cpct_memset
   48A5 D1            [10] 1798 	pop	de
                           1799 ;src/includes/world.h:26: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   48A6 DD 7E 05      [19] 1800 	ld	a,5 (ix)
   48A9 3C            [ 4] 1801 	inc	a
   48AA 07            [ 4] 1802 	rlca
   48AB 07            [ 4] 1803 	rlca
   48AC 07            [ 4] 1804 	rlca
   48AD 07            [ 4] 1805 	rlca
   48AE E6 F0         [ 7] 1806 	and	a,#0xF0
   48B0 5F            [ 4] 1807 	ld	e,a
   48B1 63            [ 4] 1808 	ld	h,e
   48B2 25            [ 4] 1809 	dec	h
   48B3 D5            [11] 1810 	push	de
   48B4 E5            [11] 1811 	push	hl
   48B5 33            [ 6] 1812 	inc	sp
   48B6 D5            [11] 1813 	push	de
   48B7 33            [ 6] 1814 	inc	sp
   48B8 21 00 C0      [10] 1815 	ld	hl,#0xC000
   48BB E5            [11] 1816 	push	hl
   48BC CD AF 54      [17] 1817 	call	_cpct_getScreenPtr
   48BF D1            [10] 1818 	pop	de
                           1819 ;src/includes/world.h:27: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   48C0 E5            [11] 1820 	push	hl
   48C1 D5            [11] 1821 	push	de
   48C2 DD 66 06      [19] 1822 	ld	h,6 (ix)
   48C5 DD 6E 06      [19] 1823 	ld	l,6 (ix)
   48C8 E5            [11] 1824 	push	hl
   48C9 DD 66 06      [19] 1825 	ld	h,6 (ix)
   48CC DD 6E 06      [19] 1826 	ld	l,6 (ix)
   48CF E5            [11] 1827 	push	hl
   48D0 CD BE 53      [17] 1828 	call	_cpct_px2byteM1
   48D3 F1            [10] 1829 	pop	af
   48D4 F1            [10] 1830 	pop	af
   48D5 DD 75 FF      [19] 1831 	ld	-1 (ix),l
   48D8 D1            [10] 1832 	pop	de
   48D9 C1            [10] 1833 	pop	bc
   48DA D5            [11] 1834 	push	de
   48DB 21 04 00      [10] 1835 	ld	hl,#0x0004
   48DE E5            [11] 1836 	push	hl
   48DF DD 7E FF      [19] 1837 	ld	a,-1 (ix)
   48E2 F5            [11] 1838 	push	af
   48E3 33            [ 6] 1839 	inc	sp
   48E4 C5            [11] 1840 	push	bc
   48E5 CD B0 53      [17] 1841 	call	_cpct_memset
   48E8 D1            [10] 1842 	pop	de
                           1843 ;src/includes/world.h:28: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   48E9 63            [ 4] 1844 	ld	h,e
   48EA 25            [ 4] 1845 	dec	h
   48EB 25            [ 4] 1846 	dec	h
   48EC E5            [11] 1847 	push	hl
   48ED 33            [ 6] 1848 	inc	sp
   48EE D5            [11] 1849 	push	de
   48EF 33            [ 6] 1850 	inc	sp
   48F0 21 00 C0      [10] 1851 	ld	hl,#0xC000
   48F3 E5            [11] 1852 	push	hl
   48F4 CD AF 54      [17] 1853 	call	_cpct_getScreenPtr
                           1854 ;src/includes/world.h:29: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   48F7 E5            [11] 1855 	push	hl
   48F8 DD 66 06      [19] 1856 	ld	h,6 (ix)
   48FB DD 6E 06      [19] 1857 	ld	l,6 (ix)
   48FE E5            [11] 1858 	push	hl
   48FF DD 66 06      [19] 1859 	ld	h,6 (ix)
   4902 DD 6E 06      [19] 1860 	ld	l,6 (ix)
   4905 E5            [11] 1861 	push	hl
   4906 CD BE 53      [17] 1862 	call	_cpct_px2byteM1
   4909 F1            [10] 1863 	pop	af
   490A F1            [10] 1864 	pop	af
   490B 65            [ 4] 1865 	ld	h,l
   490C D1            [10] 1866 	pop	de
   490D 01 04 00      [10] 1867 	ld	bc,#0x0004
   4910 C5            [11] 1868 	push	bc
   4911 E5            [11] 1869 	push	hl
   4912 33            [ 6] 1870 	inc	sp
   4913 D5            [11] 1871 	push	de
   4914 CD B0 53      [17] 1872 	call	_cpct_memset
   4917 33            [ 6] 1873 	inc	sp
   4918 DD E1         [14] 1874 	pop	ix
   491A C9            [10] 1875 	ret
                           1876 ;src/includes/world.h:33: void generateWorld(u8 *p_world)
                           1877 ;	---------------------------------
                           1878 ; Function generateWorld
                           1879 ; ---------------------------------
   491B                    1880 _generateWorld::
   491B DD E5         [15] 1881 	push	ix
   491D DD 21 00 00   [14] 1882 	ld	ix,#0
   4921 DD 39         [15] 1883 	add	ix,sp
   4923 F5            [11] 1884 	push	af
   4924 F5            [11] 1885 	push	af
                           1886 ;src/includes/world.h:39: cpct_setRandomSeedUniform_u8(0);
   4925 2E 00         [ 7] 1887 	ld	l,#0x00
   4927 CD 95 51      [17] 1888 	call	_cpct_setRandomSeedUniform_u8
                           1889 ;src/includes/world.h:41: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   492A 11 00 00      [10] 1890 	ld	de,#0x0000
   492D                    1891 00115$:
                           1892 ;src/includes/world.h:43: p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
   492D DD 6E 04      [19] 1893 	ld	l,4 (ix)
   4930 DD 66 05      [19] 1894 	ld	h,5 (ix)
   4933 19            [11] 1895 	add	hl,de
   4934 E5            [11] 1896 	push	hl
   4935 D5            [11] 1897 	push	de
   4936 2E 00         [ 7] 1898 	ld	l,#0x00
   4938 CD 71 53      [17] 1899 	call	_cpct_getRandomUniform_u8_f
   493B 7D            [ 4] 1900 	ld	a,l
   493C D1            [10] 1901 	pop	de
   493D E1            [10] 1902 	pop	hl
   493E E6 01         [ 7] 1903 	and	a, #0x01
   4940 77            [ 7] 1904 	ld	(hl),a
                           1905 ;src/includes/world.h:41: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4941 13            [ 6] 1906 	inc	de
   4942 7A            [ 4] 1907 	ld	a,d
   4943 EE 80         [ 7] 1908 	xor	a, #0x80
   4945 D6 8F         [ 7] 1909 	sub	a, #0x8F
   4947 38 E4         [12] 1910 	jr	C,00115$
                           1911 ;src/includes/world.h:47: for(ix=0; ix<NBFOREST; ix++)
   4949 11 00 00      [10] 1912 	ld	de,#0x0000
   494C                    1913 00117$:
                           1914 ;src/includes/world.h:49: iy = cpct_getRandomUniform_u8_f(0)*15; // (WIDTH*HEIGHT)/255;
   494C D5            [11] 1915 	push	de
   494D 2E 00         [ 7] 1916 	ld	l,#0x00
   494F CD 71 53      [17] 1917 	call	_cpct_getRandomUniform_u8_f
   4952 D1            [10] 1918 	pop	de
   4953 4D            [ 4] 1919 	ld	c,l
   4954 06 00         [ 7] 1920 	ld	b,#0x00
   4956 69            [ 4] 1921 	ld	l, c
   4957 60            [ 4] 1922 	ld	h, b
   4958 29            [11] 1923 	add	hl, hl
   4959 09            [11] 1924 	add	hl, bc
   495A 29            [11] 1925 	add	hl, hl
   495B 09            [11] 1926 	add	hl, bc
   495C 29            [11] 1927 	add	hl, hl
   495D 09            [11] 1928 	add	hl, bc
   495E 4D            [ 4] 1929 	ld	c,l
   495F 44            [ 4] 1930 	ld	b,h
                           1931 ;src/includes/world.h:50: p_world[iy] = FOREST;
   4960 DD 6E 04      [19] 1932 	ld	l,4 (ix)
   4963 DD 66 05      [19] 1933 	ld	h,5 (ix)
   4966 09            [11] 1934 	add	hl,bc
   4967 36 08         [10] 1935 	ld	(hl),#0x08
                           1936 ;src/includes/world.h:47: for(ix=0; ix<NBFOREST; ix++)
   4969 13            [ 6] 1937 	inc	de
   496A 7B            [ 4] 1938 	ld	a,e
   496B D6 64         [ 7] 1939 	sub	a, #0x64
   496D 7A            [ 4] 1940 	ld	a,d
   496E 17            [ 4] 1941 	rla
   496F 3F            [ 4] 1942 	ccf
   4970 1F            [ 4] 1943 	rra
   4971 DE 80         [ 7] 1944 	sbc	a, #0x80
   4973 38 D7         [12] 1945 	jr	C,00117$
                           1946 ;src/includes/world.h:54: cpct_setRandomSeedUniform_u8(1);
   4975 2E 01         [ 7] 1947 	ld	l,#0x01
   4977 CD 95 51      [17] 1948 	call	_cpct_setRandomSeedUniform_u8
                           1949 ;src/includes/world.h:56: for(ix=0; ix<NBFARM; ix++)
   497A 21 00 00      [10] 1950 	ld	hl,#0x0000
   497D E3            [19] 1951 	ex	(sp), hl
   497E                    1952 00119$:
                           1953 ;src/includes/world.h:58: iy = cpct_getRandomUniform_u8_f(1)*15; // (WIDTH*HEIGHT)/255;
   497E 2E 01         [ 7] 1954 	ld	l,#0x01
   4980 CD 71 53      [17] 1955 	call	_cpct_getRandomUniform_u8_f
   4983 4D            [ 4] 1956 	ld	c,l
   4984 06 00         [ 7] 1957 	ld	b,#0x00
   4986 69            [ 4] 1958 	ld	l, c
   4987 60            [ 4] 1959 	ld	h, b
   4988 29            [11] 1960 	add	hl, hl
   4989 09            [11] 1961 	add	hl, bc
   498A 29            [11] 1962 	add	hl, hl
   498B 09            [11] 1963 	add	hl, bc
   498C 29            [11] 1964 	add	hl, hl
   498D 09            [11] 1965 	add	hl, bc
                           1966 ;src/includes/world.h:60: shift = cpct_getRandomUniform_u8_f(1)%10;
   498E E5            [11] 1967 	push	hl
   498F 2E 01         [ 7] 1968 	ld	l,#0x01
   4991 CD 71 53      [17] 1969 	call	_cpct_getRandomUniform_u8_f
   4994 45            [ 4] 1970 	ld	b,l
   4995 3E 0A         [ 7] 1971 	ld	a,#0x0A
   4997 F5            [11] 1972 	push	af
   4998 33            [ 6] 1973 	inc	sp
   4999 C5            [11] 1974 	push	bc
   499A 33            [ 6] 1975 	inc	sp
   499B CD 8F 52      [17] 1976 	call	__moduchar
   499E F1            [10] 1977 	pop	af
   499F D1            [10] 1978 	pop	de
   49A0 26 00         [ 7] 1979 	ld	h,#0x00
                           1980 ;src/includes/world.h:61: shift=iy-shift+5;
   49A2 7B            [ 4] 1981 	ld	a,e
   49A3 95            [ 4] 1982 	sub	a, l
   49A4 5F            [ 4] 1983 	ld	e,a
   49A5 7A            [ 4] 1984 	ld	a,d
   49A6 9C            [ 4] 1985 	sbc	a, h
   49A7 57            [ 4] 1986 	ld	d,a
   49A8 13            [ 6] 1987 	inc	de
   49A9 13            [ 6] 1988 	inc	de
   49AA 13            [ 6] 1989 	inc	de
   49AB 13            [ 6] 1990 	inc	de
   49AC 13            [ 6] 1991 	inc	de
                           1992 ;src/includes/world.h:63: if(shift>0 && shift<WIDTH*HEIGHT)
   49AD AF            [ 4] 1993 	xor	a, a
   49AE BB            [ 4] 1994 	cp	a, e
   49AF 9A            [ 4] 1995 	sbc	a, d
   49B0 E2 B5 49      [10] 1996 	jp	PO, 00192$
   49B3 EE 80         [ 7] 1997 	xor	a, #0x80
   49B5                    1998 00192$:
   49B5 F2 D3 49      [10] 1999 	jp	P,00120$
   49B8 7A            [ 4] 2000 	ld	a,d
   49B9 EE 80         [ 7] 2001 	xor	a, #0x80
   49BB D6 8F         [ 7] 2002 	sub	a, #0x8F
   49BD 30 14         [12] 2003 	jr	NC,00120$
                           2004 ;src/includes/world.h:64: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(1)%2+5;
   49BF DD 6E 04      [19] 2005 	ld	l,4 (ix)
   49C2 DD 66 05      [19] 2006 	ld	h,5 (ix)
   49C5 19            [11] 2007 	add	hl,de
   49C6 E5            [11] 2008 	push	hl
   49C7 2E 01         [ 7] 2009 	ld	l,#0x01
   49C9 CD 71 53      [17] 2010 	call	_cpct_getRandomUniform_u8_f
   49CC 7D            [ 4] 2011 	ld	a,l
   49CD E1            [10] 2012 	pop	hl
   49CE E6 01         [ 7] 2013 	and	a, #0x01
   49D0 C6 05         [ 7] 2014 	add	a, #0x05
   49D2 77            [ 7] 2015 	ld	(hl),a
   49D3                    2016 00120$:
                           2017 ;src/includes/world.h:56: for(ix=0; ix<NBFARM; ix++)
   49D3 DD 34 FC      [23] 2018 	inc	-4 (ix)
   49D6 20 03         [12] 2019 	jr	NZ,00193$
   49D8 DD 34 FD      [23] 2020 	inc	-3 (ix)
   49DB                    2021 00193$:
   49DB DD 7E FC      [19] 2022 	ld	a,-4 (ix)
   49DE D6 3C         [ 7] 2023 	sub	a, #0x3C
   49E0 DD 7E FD      [19] 2024 	ld	a,-3 (ix)
   49E3 17            [ 4] 2025 	rla
   49E4 3F            [ 4] 2026 	ccf
   49E5 1F            [ 4] 2027 	rra
   49E6 DE 80         [ 7] 2028 	sbc	a, #0x80
   49E8 38 94         [12] 2029 	jr	C,00119$
                           2030 ;src/includes/world.h:69: cpct_setRandomSeedUniform_u8(2);
   49EA 2E 02         [ 7] 2031 	ld	l,#0x02
   49EC CD 95 51      [17] 2032 	call	_cpct_setRandomSeedUniform_u8
                           2033 ;src/includes/world.h:71: for(ix=0; ix<NBURBAN; ix++)
   49EF 21 00 00      [10] 2034 	ld	hl,#0x0000
   49F2 E3            [19] 2035 	ex	(sp), hl
   49F3                    2036 00121$:
                           2037 ;src/includes/world.h:73: iy = cpct_getRandomUniform_u8_f(2)*15; // (WIDTH*HEIGHT)/255;
   49F3 2E 02         [ 7] 2038 	ld	l,#0x02
   49F5 CD 71 53      [17] 2039 	call	_cpct_getRandomUniform_u8_f
   49F8 4D            [ 4] 2040 	ld	c,l
   49F9 06 00         [ 7] 2041 	ld	b,#0x00
   49FB 69            [ 4] 2042 	ld	l, c
   49FC 60            [ 4] 2043 	ld	h, b
   49FD 29            [11] 2044 	add	hl, hl
   49FE 09            [11] 2045 	add	hl, bc
   49FF 29            [11] 2046 	add	hl, hl
   4A00 09            [11] 2047 	add	hl, bc
   4A01 29            [11] 2048 	add	hl, hl
   4A02 09            [11] 2049 	add	hl, bc
                           2050 ;src/includes/world.h:75: shift = cpct_getRandomUniform_u8_f(2)%10;
   4A03 E5            [11] 2051 	push	hl
   4A04 2E 02         [ 7] 2052 	ld	l,#0x02
   4A06 CD 71 53      [17] 2053 	call	_cpct_getRandomUniform_u8_f
   4A09 45            [ 4] 2054 	ld	b,l
   4A0A 3E 0A         [ 7] 2055 	ld	a,#0x0A
   4A0C F5            [11] 2056 	push	af
   4A0D 33            [ 6] 2057 	inc	sp
   4A0E C5            [11] 2058 	push	bc
   4A0F 33            [ 6] 2059 	inc	sp
   4A10 CD 8F 52      [17] 2060 	call	__moduchar
   4A13 F1            [10] 2061 	pop	af
   4A14 D1            [10] 2062 	pop	de
   4A15 26 00         [ 7] 2063 	ld	h,#0x00
                           2064 ;src/includes/world.h:76: shift=iy-shift+5;
   4A17 7B            [ 4] 2065 	ld	a,e
   4A18 95            [ 4] 2066 	sub	a, l
   4A19 4F            [ 4] 2067 	ld	c,a
   4A1A 7A            [ 4] 2068 	ld	a,d
   4A1B 9C            [ 4] 2069 	sbc	a, h
   4A1C 47            [ 4] 2070 	ld	b,a
   4A1D 03            [ 6] 2071 	inc	bc
   4A1E 03            [ 6] 2072 	inc	bc
   4A1F 03            [ 6] 2073 	inc	bc
   4A20 03            [ 6] 2074 	inc	bc
   4A21 03            [ 6] 2075 	inc	bc
                           2076 ;src/includes/world.h:78: if(shift>0 && shift<WIDTH*HEIGHT)
   4A22 AF            [ 4] 2077 	xor	a, a
   4A23 B9            [ 4] 2078 	cp	a, c
   4A24 98            [ 4] 2079 	sbc	a, b
   4A25 E2 2A 4A      [10] 2080 	jp	PO, 00194$
   4A28 EE 80         [ 7] 2081 	xor	a, #0x80
   4A2A                    2082 00194$:
   4A2A F2 54 4A      [10] 2083 	jp	P,00122$
   4A2D 78            [ 4] 2084 	ld	a,b
   4A2E EE 80         [ 7] 2085 	xor	a, #0x80
   4A30 D6 8F         [ 7] 2086 	sub	a, #0x8F
   4A32 30 20         [12] 2087 	jr	NC,00122$
                           2088 ;src/includes/world.h:79: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(2)%3+2;
   4A34 DD 7E 04      [19] 2089 	ld	a,4 (ix)
   4A37 81            [ 4] 2090 	add	a, c
   4A38 5F            [ 4] 2091 	ld	e,a
   4A39 DD 7E 05      [19] 2092 	ld	a,5 (ix)
   4A3C 88            [ 4] 2093 	adc	a, b
   4A3D 57            [ 4] 2094 	ld	d,a
   4A3E D5            [11] 2095 	push	de
   4A3F 2E 02         [ 7] 2096 	ld	l,#0x02
   4A41 CD 71 53      [17] 2097 	call	_cpct_getRandomUniform_u8_f
   4A44 45            [ 4] 2098 	ld	b,l
   4A45 3E 03         [ 7] 2099 	ld	a,#0x03
   4A47 F5            [11] 2100 	push	af
   4A48 33            [ 6] 2101 	inc	sp
   4A49 C5            [11] 2102 	push	bc
   4A4A 33            [ 6] 2103 	inc	sp
   4A4B CD 8F 52      [17] 2104 	call	__moduchar
   4A4E F1            [10] 2105 	pop	af
   4A4F 7D            [ 4] 2106 	ld	a,l
   4A50 D1            [10] 2107 	pop	de
   4A51 C6 02         [ 7] 2108 	add	a, #0x02
   4A53 12            [ 7] 2109 	ld	(de),a
   4A54                    2110 00122$:
                           2111 ;src/includes/world.h:71: for(ix=0; ix<NBURBAN; ix++)
   4A54 DD 34 FC      [23] 2112 	inc	-4 (ix)
   4A57 20 03         [12] 2113 	jr	NZ,00195$
   4A59 DD 34 FD      [23] 2114 	inc	-3 (ix)
   4A5C                    2115 00195$:
   4A5C DD 7E FC      [19] 2116 	ld	a,-4 (ix)
   4A5F D6 1E         [ 7] 2117 	sub	a, #0x1E
   4A61 DD 7E FD      [19] 2118 	ld	a,-3 (ix)
   4A64 17            [ 4] 2119 	rla
   4A65 3F            [ 4] 2120 	ccf
   4A66 1F            [ 4] 2121 	rra
   4A67 DE 80         [ 7] 2122 	sbc	a, #0x80
   4A69 38 88         [12] 2123 	jr	C,00121$
                           2124 ;src/includes/world.h:84: cpct_setRandomSeedUniform_u8(3);
   4A6B 2E 03         [ 7] 2125 	ld	l,#0x03
   4A6D CD 95 51      [17] 2126 	call	_cpct_setRandomSeedUniform_u8
                           2127 ;src/includes/world.h:86: for(ix=0; ix<NBLIVESTOCK; ix++)
   4A70 11 00 00      [10] 2128 	ld	de,#0x0000
   4A73                    2129 00123$:
                           2130 ;src/includes/world.h:88: iy = cpct_getRandomUniform_u8_f(3)*15; // (WIDTH*HEIGHT)/255;
   4A73 D5            [11] 2131 	push	de
   4A74 2E 03         [ 7] 2132 	ld	l,#0x03
   4A76 CD 71 53      [17] 2133 	call	_cpct_getRandomUniform_u8_f
   4A79 D1            [10] 2134 	pop	de
   4A7A 4D            [ 4] 2135 	ld	c,l
   4A7B 06 00         [ 7] 2136 	ld	b,#0x00
   4A7D 69            [ 4] 2137 	ld	l, c
   4A7E 60            [ 4] 2138 	ld	h, b
   4A7F 29            [11] 2139 	add	hl, hl
   4A80 09            [11] 2140 	add	hl, bc
   4A81 29            [11] 2141 	add	hl, hl
   4A82 09            [11] 2142 	add	hl, bc
   4A83 29            [11] 2143 	add	hl, hl
   4A84 09            [11] 2144 	add	hl, bc
   4A85 DD 75 FE      [19] 2145 	ld	-2 (ix),l
   4A88 DD 74 FF      [19] 2146 	ld	-1 (ix),h
                           2147 ;src/includes/world.h:90: shift = cpct_getRandomUniform_u8_f(3)%10;
   4A8B D5            [11] 2148 	push	de
   4A8C 2E 03         [ 7] 2149 	ld	l,#0x03
   4A8E CD 71 53      [17] 2150 	call	_cpct_getRandomUniform_u8_f
   4A91 45            [ 4] 2151 	ld	b,l
   4A92 3E 0A         [ 7] 2152 	ld	a,#0x0A
   4A94 F5            [11] 2153 	push	af
   4A95 33            [ 6] 2154 	inc	sp
   4A96 C5            [11] 2155 	push	bc
   4A97 33            [ 6] 2156 	inc	sp
   4A98 CD 8F 52      [17] 2157 	call	__moduchar
   4A9B F1            [10] 2158 	pop	af
   4A9C D1            [10] 2159 	pop	de
   4A9D 26 00         [ 7] 2160 	ld	h,#0x00
                           2161 ;src/includes/world.h:91: shift=iy-shift+5;
   4A9F DD 7E FE      [19] 2162 	ld	a,-2 (ix)
   4AA2 95            [ 4] 2163 	sub	a, l
   4AA3 4F            [ 4] 2164 	ld	c,a
   4AA4 DD 7E FF      [19] 2165 	ld	a,-1 (ix)
   4AA7 9C            [ 4] 2166 	sbc	a, h
   4AA8 47            [ 4] 2167 	ld	b,a
   4AA9 03            [ 6] 2168 	inc	bc
   4AAA 03            [ 6] 2169 	inc	bc
   4AAB 03            [ 6] 2170 	inc	bc
   4AAC 03            [ 6] 2171 	inc	bc
   4AAD 03            [ 6] 2172 	inc	bc
                           2173 ;src/includes/world.h:93: if(shift>0 && shift<WIDTH*HEIGHT)
   4AAE AF            [ 4] 2174 	xor	a, a
   4AAF B9            [ 4] 2175 	cp	a, c
   4AB0 98            [ 4] 2176 	sbc	a, b
   4AB1 E2 B6 4A      [10] 2177 	jp	PO, 00196$
   4AB4 EE 80         [ 7] 2178 	xor	a, #0x80
   4AB6                    2179 00196$:
   4AB6 F2 C9 4A      [10] 2180 	jp	P,00124$
   4AB9 78            [ 4] 2181 	ld	a,b
   4ABA EE 80         [ 7] 2182 	xor	a, #0x80
   4ABC D6 8F         [ 7] 2183 	sub	a, #0x8F
   4ABE 30 09         [12] 2184 	jr	NC,00124$
                           2185 ;src/includes/world.h:94: p_world[shift] = LIVESTOCK;
   4AC0 DD 6E 04      [19] 2186 	ld	l,4 (ix)
   4AC3 DD 66 05      [19] 2187 	ld	h,5 (ix)
   4AC6 09            [11] 2188 	add	hl,bc
   4AC7 36 09         [10] 2189 	ld	(hl),#0x09
   4AC9                    2190 00124$:
                           2191 ;src/includes/world.h:86: for(ix=0; ix<NBLIVESTOCK; ix++)
   4AC9 13            [ 6] 2192 	inc	de
   4ACA 7B            [ 4] 2193 	ld	a,e
   4ACB D6 14         [ 7] 2194 	sub	a, #0x14
   4ACD 7A            [ 4] 2195 	ld	a,d
   4ACE 17            [ 4] 2196 	rla
   4ACF 3F            [ 4] 2197 	ccf
   4AD0 1F            [ 4] 2198 	rra
   4AD1 DE 80         [ 7] 2199 	sbc	a, #0x80
   4AD3 38 9E         [12] 2200 	jr	C,00123$
   4AD5 DD F9         [10] 2201 	ld	sp, ix
   4AD7 DD E1         [14] 2202 	pop	ix
   4AD9 C9            [10] 2203 	ret
                           2204 ;src/includes/world.h:98: void drawTile(u8 *p_world, u8 x_, u8 y_, u8 ix, u8 iy)
                           2205 ;	---------------------------------
                           2206 ; Function drawTile
                           2207 ; ---------------------------------
   4ADA                    2208 _drawTile::
   4ADA DD E5         [15] 2209 	push	ix
   4ADC DD 21 00 00   [14] 2210 	ld	ix,#0
   4AE0 DD 39         [15] 2211 	add	ix,sp
                           2212 ;src/includes/world.h:101: int adress = (y_+iy)*WIDTH+x_+ix;
   4AE2 DD 6E 07      [19] 2213 	ld	l,7 (ix)
   4AE5 26 00         [ 7] 2214 	ld	h,#0x00
   4AE7 DD 5E 09      [19] 2215 	ld	e,9 (ix)
   4AEA 16 00         [ 7] 2216 	ld	d,#0x00
   4AEC 19            [11] 2217 	add	hl,de
   4AED 4D            [ 4] 2218 	ld	c, l
   4AEE 44            [ 4] 2219 	ld	b, h
   4AEF 29            [11] 2220 	add	hl, hl
   4AF0 29            [11] 2221 	add	hl, hl
   4AF1 09            [11] 2222 	add	hl, bc
   4AF2 29            [11] 2223 	add	hl, hl
   4AF3 29            [11] 2224 	add	hl, hl
   4AF4 29            [11] 2225 	add	hl, hl
   4AF5 29            [11] 2226 	add	hl, hl
   4AF6 DD 5E 06      [19] 2227 	ld	e,6 (ix)
   4AF9 16 00         [ 7] 2228 	ld	d,#0x00
   4AFB 19            [11] 2229 	add	hl,de
   4AFC DD 5E 08      [19] 2230 	ld	e,8 (ix)
   4AFF 16 00         [ 7] 2231 	ld	d,#0x00
   4B01 19            [11] 2232 	add	hl,de
   4B02 5D            [ 4] 2233 	ld	e, l
   4B03 54            [ 4] 2234 	ld	d, h
                           2235 ;src/includes/world.h:103: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   4B04 DD 7E 09      [19] 2236 	ld	a,9 (ix)
   4B07 07            [ 4] 2237 	rlca
   4B08 07            [ 4] 2238 	rlca
   4B09 07            [ 4] 2239 	rlca
   4B0A 07            [ 4] 2240 	rlca
   4B0B E6 F0         [ 7] 2241 	and	a,#0xF0
   4B0D 67            [ 4] 2242 	ld	h,a
   4B0E DD 7E 08      [19] 2243 	ld	a,8 (ix)
   4B11 87            [ 4] 2244 	add	a, a
   4B12 87            [ 4] 2245 	add	a, a
   4B13 D5            [11] 2246 	push	de
   4B14 E5            [11] 2247 	push	hl
   4B15 33            [ 6] 2248 	inc	sp
   4B16 F5            [11] 2249 	push	af
   4B17 33            [ 6] 2250 	inc	sp
   4B18 21 00 C0      [10] 2251 	ld	hl,#0xC000
   4B1B E5            [11] 2252 	push	hl
   4B1C CD AF 54      [17] 2253 	call	_cpct_getScreenPtr
   4B1F D1            [10] 2254 	pop	de
   4B20 4D            [ 4] 2255 	ld	c, l
   4B21 44            [ 4] 2256 	ld	b, h
                           2257 ;src/includes/world.h:105: switch(p_world[adress])
   4B22 DD 6E 04      [19] 2258 	ld	l,4 (ix)
   4B25 DD 66 05      [19] 2259 	ld	h,5 (ix)
   4B28 19            [11] 2260 	add	hl,de
   4B29 5E            [ 7] 2261 	ld	e,(hl)
   4B2A 3E 09         [ 7] 2262 	ld	a,#0x09
   4B2C 93            [ 4] 2263 	sub	a, e
   4B2D DA E2 4B      [10] 2264 	jp	C,00112$
   4B30 16 00         [ 7] 2265 	ld	d,#0x00
   4B32 21 39 4B      [10] 2266 	ld	hl,#00118$
   4B35 19            [11] 2267 	add	hl,de
   4B36 19            [11] 2268 	add	hl,de
   4B37 19            [11] 2269 	add	hl,de
   4B38 E9            [ 4] 2270 	jp	(hl)
   4B39                    2271 00118$:
   4B39 C3 57 4B      [10] 2272 	jp	00101$
   4B3C C3 66 4B      [10] 2273 	jp	00102$
   4B3F C3 74 4B      [10] 2274 	jp	00103$
   4B42 C3 82 4B      [10] 2275 	jp	00104$
   4B45 C3 90 4B      [10] 2276 	jp	00105$
   4B48 C3 9E 4B      [10] 2277 	jp	00106$
   4B4B C3 AC 4B      [10] 2278 	jp	00107$
   4B4E C3 BA 4B      [10] 2279 	jp	00108$
   4B51 C3 C8 4B      [10] 2280 	jp	00109$
   4B54 C3 D6 4B      [10] 2281 	jp	00110$
                           2282 ;src/includes/world.h:107: case GRASS1:
   4B57                    2283 00101$:
                           2284 ;src/includes/world.h:108: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   4B57 11 30 41      [10] 2285 	ld	de,#_grass1
   4B5A 21 04 10      [10] 2286 	ld	hl,#0x1004
   4B5D E5            [11] 2287 	push	hl
   4B5E C5            [11] 2288 	push	bc
   4B5F D5            [11] 2289 	push	de
   4B60 CD EA 51      [17] 2290 	call	_cpct_drawSprite
                           2291 ;src/includes/world.h:109: break;
   4B63 C3 E2 4B      [10] 2292 	jp	00112$
                           2293 ;src/includes/world.h:110: case GRASS2:
   4B66                    2294 00102$:
                           2295 ;src/includes/world.h:111: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   4B66 11 70 41      [10] 2296 	ld	de,#_grass2
   4B69 21 04 10      [10] 2297 	ld	hl,#0x1004
   4B6C E5            [11] 2298 	push	hl
   4B6D C5            [11] 2299 	push	bc
   4B6E D5            [11] 2300 	push	de
   4B6F CD EA 51      [17] 2301 	call	_cpct_drawSprite
                           2302 ;src/includes/world.h:112: break;
   4B72 18 6E         [12] 2303 	jr	00112$
                           2304 ;src/includes/world.h:113: case DWELLINGS1:
   4B74                    2305 00103$:
                           2306 ;src/includes/world.h:114: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   4B74 11 F0 41      [10] 2307 	ld	de,#_dwellings1
   4B77 21 04 10      [10] 2308 	ld	hl,#0x1004
   4B7A E5            [11] 2309 	push	hl
   4B7B C5            [11] 2310 	push	bc
   4B7C D5            [11] 2311 	push	de
   4B7D CD EA 51      [17] 2312 	call	_cpct_drawSprite
                           2313 ;src/includes/world.h:115: break;
   4B80 18 60         [12] 2314 	jr	00112$
                           2315 ;src/includes/world.h:116: case DWELLINGS2:
   4B82                    2316 00104$:
                           2317 ;src/includes/world.h:117: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   4B82 11 30 42      [10] 2318 	ld	de,#_dwellings2
   4B85 21 04 10      [10] 2319 	ld	hl,#0x1004
   4B88 E5            [11] 2320 	push	hl
   4B89 C5            [11] 2321 	push	bc
   4B8A D5            [11] 2322 	push	de
   4B8B CD EA 51      [17] 2323 	call	_cpct_drawSprite
                           2324 ;src/includes/world.h:118: break;
   4B8E 18 52         [12] 2325 	jr	00112$
                           2326 ;src/includes/world.h:119: case DWELLINGS3:
   4B90                    2327 00105$:
                           2328 ;src/includes/world.h:120: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   4B90 11 70 42      [10] 2329 	ld	de,#_dwellings3
   4B93 21 04 10      [10] 2330 	ld	hl,#0x1004
   4B96 E5            [11] 2331 	push	hl
   4B97 C5            [11] 2332 	push	bc
   4B98 D5            [11] 2333 	push	de
   4B99 CD EA 51      [17] 2334 	call	_cpct_drawSprite
                           2335 ;src/includes/world.h:121: break;
   4B9C 18 44         [12] 2336 	jr	00112$
                           2337 ;src/includes/world.h:122: case FARM1:
   4B9E                    2338 00106$:
                           2339 ;src/includes/world.h:123: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   4B9E 11 F0 42      [10] 2340 	ld	de,#_farm1
   4BA1 21 04 10      [10] 2341 	ld	hl,#0x1004
   4BA4 E5            [11] 2342 	push	hl
   4BA5 C5            [11] 2343 	push	bc
   4BA6 D5            [11] 2344 	push	de
   4BA7 CD EA 51      [17] 2345 	call	_cpct_drawSprite
                           2346 ;src/includes/world.h:124: break;
   4BAA 18 36         [12] 2347 	jr	00112$
                           2348 ;src/includes/world.h:125: case FARM2:
   4BAC                    2349 00107$:
                           2350 ;src/includes/world.h:126: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   4BAC 11 30 43      [10] 2351 	ld	de,#_farm2
   4BAF 21 04 10      [10] 2352 	ld	hl,#0x1004
   4BB2 E5            [11] 2353 	push	hl
   4BB3 C5            [11] 2354 	push	bc
   4BB4 D5            [11] 2355 	push	de
   4BB5 CD EA 51      [17] 2356 	call	_cpct_drawSprite
                           2357 ;src/includes/world.h:127: break;
   4BB8 18 28         [12] 2358 	jr	00112$
                           2359 ;src/includes/world.h:128: case WATER:
   4BBA                    2360 00108$:
                           2361 ;src/includes/world.h:129: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   4BBA 11 B0 42      [10] 2362 	ld	de,#_water
   4BBD 21 04 10      [10] 2363 	ld	hl,#0x1004
   4BC0 E5            [11] 2364 	push	hl
   4BC1 C5            [11] 2365 	push	bc
   4BC2 D5            [11] 2366 	push	de
   4BC3 CD EA 51      [17] 2367 	call	_cpct_drawSprite
                           2368 ;src/includes/world.h:130: break;
   4BC6 18 1A         [12] 2369 	jr	00112$
                           2370 ;src/includes/world.h:131: case FOREST:
   4BC8                    2371 00109$:
                           2372 ;src/includes/world.h:132: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   4BC8 11 B0 41      [10] 2373 	ld	de,#_forest
   4BCB 21 04 10      [10] 2374 	ld	hl,#0x1004
   4BCE E5            [11] 2375 	push	hl
   4BCF C5            [11] 2376 	push	bc
   4BD0 D5            [11] 2377 	push	de
   4BD1 CD EA 51      [17] 2378 	call	_cpct_drawSprite
                           2379 ;src/includes/world.h:133: break;
   4BD4 18 0C         [12] 2380 	jr	00112$
                           2381 ;src/includes/world.h:134: case LIVESTOCK:
   4BD6                    2382 00110$:
                           2383 ;src/includes/world.h:135: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   4BD6 11 70 43      [10] 2384 	ld	de,#_livestock
   4BD9 21 04 10      [10] 2385 	ld	hl,#0x1004
   4BDC E5            [11] 2386 	push	hl
   4BDD C5            [11] 2387 	push	bc
   4BDE D5            [11] 2388 	push	de
   4BDF CD EA 51      [17] 2389 	call	_cpct_drawSprite
                           2390 ;src/includes/world.h:137: }
   4BE2                    2391 00112$:
   4BE2 DD E1         [14] 2392 	pop	ix
   4BE4 C9            [10] 2393 	ret
                           2394 ;src/includes/world.h:140: void drawWorld(u8 *p_world, u8 x_, u8 y_)
                           2395 ;	---------------------------------
                           2396 ; Function drawWorld
                           2397 ; ---------------------------------
   4BE5                    2398 _drawWorld::
   4BE5 DD E5         [15] 2399 	push	ix
   4BE7 DD 21 00 00   [14] 2400 	ld	ix,#0
   4BEB DD 39         [15] 2401 	add	ix,sp
   4BED 3B            [ 6] 2402 	dec	sp
                           2403 ;src/includes/world.h:148: for(iy=0; iy<NBTILE_H;iy++)
   4BEE 16 00         [ 7] 2404 	ld	d,#0x00
                           2405 ;src/includes/world.h:150: for(ix=0; ix<NBTILE_W;ix++)
   4BF0                    2406 00109$:
   4BF0 1E 00         [ 7] 2407 	ld	e,#0x00
   4BF2                    2408 00103$:
                           2409 ;src/includes/world.h:152: drawTile(p_world, x_, y_, ix, iy);
   4BF2 D5            [11] 2410 	push	de
   4BF3 D5            [11] 2411 	push	de
   4BF4 DD 66 07      [19] 2412 	ld	h,7 (ix)
   4BF7 DD 6E 06      [19] 2413 	ld	l,6 (ix)
   4BFA E5            [11] 2414 	push	hl
   4BFB DD 6E 04      [19] 2415 	ld	l,4 (ix)
   4BFE DD 66 05      [19] 2416 	ld	h,5 (ix)
   4C01 E5            [11] 2417 	push	hl
   4C02 CD DA 4A      [17] 2418 	call	_drawTile
   4C05 21 06 00      [10] 2419 	ld	hl,#6
   4C08 39            [11] 2420 	add	hl,sp
   4C09 F9            [ 6] 2421 	ld	sp,hl
   4C0A D1            [10] 2422 	pop	de
                           2423 ;src/includes/world.h:150: for(ix=0; ix<NBTILE_W;ix++)
   4C0B 1C            [ 4] 2424 	inc	e
   4C0C 7B            [ 4] 2425 	ld	a,e
   4C0D D6 14         [ 7] 2426 	sub	a, #0x14
   4C0F 38 E1         [12] 2427 	jr	C,00103$
                           2428 ;src/includes/world.h:148: for(iy=0; iy<NBTILE_H;iy++)
   4C11 14            [ 4] 2429 	inc	d
   4C12 7A            [ 4] 2430 	ld	a,d
   4C13 D6 0C         [ 7] 2431 	sub	a, #0x0C
   4C15 38 D9         [12] 2432 	jr	C,00109$
                           2433 ;src/includes/world.h:158: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   4C17 DD 4E 06      [19] 2434 	ld	c,6 (ix)
   4C1A 06 00         [ 7] 2435 	ld	b,#0x00
   4C1C 69            [ 4] 2436 	ld	l, c
   4C1D 60            [ 4] 2437 	ld	h, b
   4C1E 29            [11] 2438 	add	hl, hl
   4C1F 29            [11] 2439 	add	hl, hl
   4C20 29            [11] 2440 	add	hl, hl
   4C21 09            [11] 2441 	add	hl, bc
   4C22 29            [11] 2442 	add	hl, hl
   4C23 09            [11] 2443 	add	hl, bc
   4C24 29            [11] 2444 	add	hl, hl
   4C25 29            [11] 2445 	add	hl, hl
   4C26 01 3C 00      [10] 2446 	ld	bc,#0x003C
   4C29 C5            [11] 2447 	push	bc
   4C2A E5            [11] 2448 	push	hl
   4C2B CD 00 55      [17] 2449 	call	__divsint
   4C2E F1            [10] 2450 	pop	af
   4C2F F1            [10] 2451 	pop	af
   4C30 55            [ 4] 2452 	ld	d,l
                           2453 ;src/includes/world.h:159: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   4C31 DD 4E 07      [19] 2454 	ld	c,7 (ix)
   4C34 06 00         [ 7] 2455 	ld	b,#0x00
   4C36 69            [ 4] 2456 	ld	l, c
   4C37 60            [ 4] 2457 	ld	h, b
   4C38 29            [11] 2458 	add	hl, hl
   4C39 29            [11] 2459 	add	hl, hl
   4C3A 09            [11] 2460 	add	hl, bc
   4C3B 29            [11] 2461 	add	hl, hl
   4C3C 09            [11] 2462 	add	hl, bc
   4C3D 29            [11] 2463 	add	hl, hl
   4C3E 29            [11] 2464 	add	hl, hl
   4C3F 29            [11] 2465 	add	hl, hl
   4C40 29            [11] 2466 	add	hl, hl
   4C41 D5            [11] 2467 	push	de
   4C42 01 24 00      [10] 2468 	ld	bc,#0x0024
   4C45 C5            [11] 2469 	push	bc
   4C46 E5            [11] 2470 	push	hl
   4C47 CD 00 55      [17] 2471 	call	__divsint
   4C4A F1            [10] 2472 	pop	af
   4C4B F1            [10] 2473 	pop	af
   4C4C D1            [10] 2474 	pop	de
   4C4D DD 75 FF      [19] 2475 	ld	-1 (ix),l
                           2476 ;src/includes/world.h:161: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   4C50 AF            [ 4] 2477 	xor	a, a
   4C51 F5            [11] 2478 	push	af
   4C52 33            [ 6] 2479 	inc	sp
   4C53 D5            [11] 2480 	push	de
   4C54 33            [ 6] 2481 	inc	sp
   4C55 21 00 C0      [10] 2482 	ld	hl,#0xC000
   4C58 E5            [11] 2483 	push	hl
   4C59 CD AF 54      [17] 2484 	call	_cpct_getScreenPtr
                           2485 ;src/includes/world.h:162: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   4C5C E5            [11] 2486 	push	hl
   4C5D 21 00 00      [10] 2487 	ld	hl,#0x0000
   4C60 E5            [11] 2488 	push	hl
   4C61 2E 00         [ 7] 2489 	ld	l, #0x00
   4C63 E5            [11] 2490 	push	hl
   4C64 CD BE 53      [17] 2491 	call	_cpct_px2byteM1
   4C67 F1            [10] 2492 	pop	af
   4C68 F1            [10] 2493 	pop	af
   4C69 45            [ 4] 2494 	ld	b,l
   4C6A D1            [10] 2495 	pop	de
   4C6B 21 04 04      [10] 2496 	ld	hl,#0x0404
   4C6E E5            [11] 2497 	push	hl
   4C6F C5            [11] 2498 	push	bc
   4C70 33            [ 6] 2499 	inc	sp
   4C71 D5            [11] 2500 	push	de
   4C72 CD F6 53      [17] 2501 	call	_cpct_drawSolidBox
   4C75 F1            [10] 2502 	pop	af
   4C76 F1            [10] 2503 	pop	af
   4C77 33            [ 6] 2504 	inc	sp
                           2505 ;src/includes/world.h:164: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   4C78 DD 7E FF      [19] 2506 	ld	a,-1 (ix)
   4C7B F5            [11] 2507 	push	af
   4C7C 33            [ 6] 2508 	inc	sp
   4C7D AF            [ 4] 2509 	xor	a, a
   4C7E F5            [11] 2510 	push	af
   4C7F 33            [ 6] 2511 	inc	sp
   4C80 21 00 C0      [10] 2512 	ld	hl,#0xC000
   4C83 E5            [11] 2513 	push	hl
   4C84 CD AF 54      [17] 2514 	call	_cpct_getScreenPtr
                           2515 ;src/includes/world.h:165: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   4C87 E5            [11] 2516 	push	hl
   4C88 21 00 00      [10] 2517 	ld	hl,#0x0000
   4C8B E5            [11] 2518 	push	hl
   4C8C 2E 00         [ 7] 2519 	ld	l, #0x00
   4C8E E5            [11] 2520 	push	hl
   4C8F CD BE 53      [17] 2521 	call	_cpct_px2byteM1
   4C92 F1            [10] 2522 	pop	af
   4C93 F1            [10] 2523 	pop	af
   4C94 45            [ 4] 2524 	ld	b,l
   4C95 D1            [10] 2525 	pop	de
   4C96 21 01 10      [10] 2526 	ld	hl,#0x1001
   4C99 E5            [11] 2527 	push	hl
   4C9A C5            [11] 2528 	push	bc
   4C9B 33            [ 6] 2529 	inc	sp
   4C9C D5            [11] 2530 	push	de
   4C9D CD F6 53      [17] 2531 	call	_cpct_drawSolidBox
   4CA0 F1            [10] 2532 	pop	af
   4CA1 F1            [10] 2533 	pop	af
   4CA2 33            [ 6] 2534 	inc	sp
   4CA3 33            [ 6] 2535 	inc	sp
   4CA4 DD E1         [14] 2536 	pop	ix
   4CA6 C9            [10] 2537 	ret
                           2538 ;src/includes/game.h:1: void game()
                           2539 ;	---------------------------------
                           2540 ; Function game
                           2541 ; ---------------------------------
   4CA7                    2542 _game::
   4CA7 DD E5         [15] 2543 	push	ix
   4CA9 DD 21 00 00   [14] 2544 	ld	ix,#0
   4CAD DD 39         [15] 2545 	add	ix,sp
   4CAF 21 DD F0      [10] 2546 	ld	hl,#-3875
   4CB2 39            [11] 2547 	add	hl,sp
   4CB3 F9            [ 6] 2548 	ld	sp,hl
                           2549 ;src/includes/game.h:4: int ulx = 0;
   4CB4 DD 36 E4 00   [19] 2550 	ld	-28 (ix),#0x00
   4CB8 DD 36 E5 00   [19] 2551 	ld	-27 (ix),#0x00
                           2552 ;src/includes/game.h:5: int uly = 0;
   4CBC DD 36 E6 00   [19] 2553 	ld	-26 (ix),#0x00
   4CC0 DD 36 E7 00   [19] 2554 	ld	-25 (ix),#0x00
                           2555 ;src/includes/game.h:6: int xCursor = 10;
   4CC4 DD 36 DF 0A   [19] 2556 	ld	-33 (ix),#0x0A
   4CC8 DD 36 E0 00   [19] 2557 	ld	-32 (ix),#0x00
                           2558 ;src/includes/game.h:7: int yCursor = 6;
   4CCC DD 36 DD 06   [19] 2559 	ld	-35 (ix),#0x06
   4CD0 DD 36 DE 00   [19] 2560 	ld	-34 (ix),#0x00
                           2561 ;src/includes/game.h:9: u8 exit=0;
   4CD4 DD 36 E3 00   [19] 2562 	ld	-29 (ix),#0x00
                           2563 ;src/includes/game.h:11: cpct_setVideoMode(1);
   4CD8 3E 01         [ 7] 2564 	ld	a,#0x01
   4CDA F5            [11] 2565 	push	af
   4CDB 33            [ 6] 2566 	inc	sp
   4CDC CD 82 53      [17] 2567 	call	_cpct_setVideoMode
   4CDF 33            [ 6] 2568 	inc	sp
                           2569 ;src/includes/game.h:12: cpct_setPalette(paletteMenusM1, 4);
   4CE0 21 04 00      [10] 2570 	ld	hl,#0x0004
   4CE3 E5            [11] 2571 	push	hl
   4CE4 21 2A 41      [10] 2572 	ld	hl,#_paletteMenusM1
   4CE7 E5            [11] 2573 	push	hl
   4CE8 CD 9A 51      [17] 2574 	call	_cpct_setPalette
                           2575 ;src/includes/game.h:13: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   4CEB 21 00 00      [10] 2576 	ld	hl,#0x0000
   4CEE E5            [11] 2577 	push	hl
   4CEF 2E 00         [ 7] 2578 	ld	l, #0x00
   4CF1 E5            [11] 2579 	push	hl
   4CF2 CD BE 53      [17] 2580 	call	_cpct_px2byteM1
   4CF5 F1            [10] 2581 	pop	af
   4CF6 F1            [10] 2582 	pop	af
   4CF7 65            [ 4] 2583 	ld	h,l
   4CF8 01 00 40      [10] 2584 	ld	bc,#0x4000
   4CFB C5            [11] 2585 	push	bc
   4CFC E5            [11] 2586 	push	hl
   4CFD 33            [ 6] 2587 	inc	sp
   4CFE 21 00 C0      [10] 2588 	ld	hl,#0xC000
   4D01 E5            [11] 2589 	push	hl
   4D02 CD B0 53      [17] 2590 	call	_cpct_memset
                           2591 ;src/includes/game.h:15: generateWorld(p_world);
   4D05 21 00 00      [10] 2592 	ld	hl,#0x0000
   4D08 39            [11] 2593 	add	hl,sp
   4D09 DD 75 FA      [19] 2594 	ld	-6 (ix),l
   4D0C DD 74 FB      [19] 2595 	ld	-5 (ix),h
   4D0F DD 6E FA      [19] 2596 	ld	l,-6 (ix)
   4D12 DD 66 FB      [19] 2597 	ld	h,-5 (ix)
   4D15 E5            [11] 2598 	push	hl
   4D16 CD 1B 49      [17] 2599 	call	_generateWorld
   4D19 F1            [10] 2600 	pop	af
                           2601 ;src/includes/game.h:17: drawWorld(p_world, ulx, uly);
   4D1A DD 7E FA      [19] 2602 	ld	a,-6 (ix)
   4D1D DD 77 EC      [19] 2603 	ld	-20 (ix),a
   4D20 DD 7E FB      [19] 2604 	ld	a,-5 (ix)
   4D23 DD 77 ED      [19] 2605 	ld	-19 (ix),a
   4D26 21 00 00      [10] 2606 	ld	hl,#0x0000
   4D29 E5            [11] 2607 	push	hl
   4D2A DD 6E EC      [19] 2608 	ld	l,-20 (ix)
   4D2D DD 66 ED      [19] 2609 	ld	h,-19 (ix)
   4D30 E5            [11] 2610 	push	hl
   4D31 CD E5 4B      [17] 2611 	call	_drawWorld
   4D34 F1            [10] 2612 	pop	af
   4D35 F1            [10] 2613 	pop	af
                           2614 ;src/includes/game.h:19: do{
   4D36 DD 7E FA      [19] 2615 	ld	a,-6 (ix)
   4D39 DD 77 EC      [19] 2616 	ld	-20 (ix),a
   4D3C DD 7E FB      [19] 2617 	ld	a,-5 (ix)
   4D3F DD 77 ED      [19] 2618 	ld	-19 (ix),a
   4D42 DD 7E FA      [19] 2619 	ld	a,-6 (ix)
   4D45 DD 77 F2      [19] 2620 	ld	-14 (ix),a
   4D48 DD 7E FB      [19] 2621 	ld	a,-5 (ix)
   4D4B DD 77 F3      [19] 2622 	ld	-13 (ix),a
   4D4E DD 7E FA      [19] 2623 	ld	a,-6 (ix)
   4D51 DD 77 EA      [19] 2624 	ld	-22 (ix),a
   4D54 DD 7E FB      [19] 2625 	ld	a,-5 (ix)
   4D57 DD 77 EB      [19] 2626 	ld	-21 (ix),a
   4D5A DD 7E FA      [19] 2627 	ld	a,-6 (ix)
   4D5D DD 77 F4      [19] 2628 	ld	-12 (ix),a
   4D60 DD 7E FB      [19] 2629 	ld	a,-5 (ix)
   4D63 DD 77 F5      [19] 2630 	ld	-11 (ix),a
   4D66 DD 7E FA      [19] 2631 	ld	a,-6 (ix)
   4D69 DD 77 F6      [19] 2632 	ld	-10 (ix),a
   4D6C DD 7E FB      [19] 2633 	ld	a,-5 (ix)
   4D6F DD 77 F7      [19] 2634 	ld	-9 (ix),a
   4D72 DD 7E FA      [19] 2635 	ld	a,-6 (ix)
   4D75 DD 77 EE      [19] 2636 	ld	-18 (ix),a
   4D78 DD 7E FB      [19] 2637 	ld	a,-5 (ix)
   4D7B DD 77 EF      [19] 2638 	ld	-17 (ix),a
   4D7E DD 7E FA      [19] 2639 	ld	a,-6 (ix)
   4D81 DD 77 F0      [19] 2640 	ld	-16 (ix),a
   4D84 DD 7E FB      [19] 2641 	ld	a,-5 (ix)
   4D87 DD 77 F1      [19] 2642 	ld	-15 (ix),a
   4D8A                    2643 00133$:
                           2644 ;src/includes/game.h:20: cpct_scanKeyboard(); 
   4D8A CD CF 54      [17] 2645 	call	_cpct_scanKeyboard
                           2646 ;src/includes/game.h:22: if ( cpct_isKeyPressed(Key_CursorUp) )
   4D8D 21 00 01      [10] 2647 	ld	hl,#0x0100
   4D90 CD B1 51      [17] 2648 	call	_cpct_isKeyPressed
   4D93 55            [ 4] 2649 	ld	d,l
                           2650 ;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4D94 DD 7E DF      [19] 2651 	ld	a,-33 (ix)
   4D97 DD 77 FC      [19] 2652 	ld	-4 (ix),a
   4D9A DD 7E E6      [19] 2653 	ld	a,-26 (ix)
   4D9D DD 77 FF      [19] 2654 	ld	-1 (ix),a
   4DA0 DD 7E E4      [19] 2655 	ld	a,-28 (ix)
   4DA3 DD 77 E9      [19] 2656 	ld	-23 (ix),a
                           2657 ;src/includes/game.h:22: if ( cpct_isKeyPressed(Key_CursorUp) )
   4DA6 7A            [ 4] 2658 	ld	a,d
   4DA7 B7            [ 4] 2659 	or	a, a
   4DA8 CA 35 4E      [10] 2660 	jp	Z,00107$
                           2661 ;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4DAB DD 7E DD      [19] 2662 	ld	a,-35 (ix)
   4DAE DD 77 E8      [19] 2663 	ld	-24 (ix),a
   4DB1 DD 7E F2      [19] 2664 	ld	a,-14 (ix)
   4DB4 DD 77 F8      [19] 2665 	ld	-8 (ix),a
   4DB7 DD 7E F3      [19] 2666 	ld	a,-13 (ix)
   4DBA DD 77 F9      [19] 2667 	ld	-7 (ix),a
   4DBD DD 66 E8      [19] 2668 	ld	h,-24 (ix)
   4DC0 DD 6E FC      [19] 2669 	ld	l,-4 (ix)
   4DC3 E5            [11] 2670 	push	hl
   4DC4 DD 66 FF      [19] 2671 	ld	h,-1 (ix)
   4DC7 DD 6E E9      [19] 2672 	ld	l,-23 (ix)
   4DCA E5            [11] 2673 	push	hl
   4DCB DD 6E F8      [19] 2674 	ld	l,-8 (ix)
   4DCE DD 66 F9      [19] 2675 	ld	h,-7 (ix)
   4DD1 E5            [11] 2676 	push	hl
   4DD2 CD DA 4A      [17] 2677 	call	_drawTile
   4DD5 21 06 00      [10] 2678 	ld	hl,#6
   4DD8 39            [11] 2679 	add	hl,sp
   4DD9 F9            [ 6] 2680 	ld	sp,hl
                           2681 ;src/includes/game.h:26: yCursor-=1;
   4DDA DD 6E DD      [19] 2682 	ld	l,-35 (ix)
   4DDD DD 66 DE      [19] 2683 	ld	h,-34 (ix)
   4DE0 2B            [ 6] 2684 	dec	hl
   4DE1 DD 75 DD      [19] 2685 	ld	-35 (ix),l
   4DE4 DD 74 DE      [19] 2686 	ld	-34 (ix),h
                           2687 ;src/includes/game.h:29: if(yCursor<0)
   4DE7 DD CB DE 7E   [20] 2688 	bit	7, -34 (ix)
   4DEB 28 40         [12] 2689 	jr	Z,00153$
                           2690 ;src/includes/game.h:31: yCursor=0;
   4DED DD 36 DD 00   [19] 2691 	ld	-35 (ix),#0x00
   4DF1 DD 36 DE 00   [19] 2692 	ld	-34 (ix),#0x00
                           2693 ;src/includes/game.h:34: if(uly>0)
   4DF5 AF            [ 4] 2694 	xor	a, a
   4DF6 DD BE E6      [19] 2695 	cp	a, -26 (ix)
   4DF9 DD 9E E7      [19] 2696 	sbc	a, -25 (ix)
   4DFC E2 01 4E      [10] 2697 	jp	PO, 00230$
   4DFF EE 80         [ 7] 2698 	xor	a, #0x80
   4E01                    2699 00230$:
   4E01 F2 2D 4E      [10] 2700 	jp	P,00153$
                           2701 ;src/includes/game.h:36: uly-=1;
   4E04 DD 6E E6      [19] 2702 	ld	l,-26 (ix)
   4E07 DD 66 E7      [19] 2703 	ld	h,-25 (ix)
   4E0A 2B            [ 6] 2704 	dec	hl
   4E0B DD 75 E6      [19] 2705 	ld	-26 (ix),l
   4E0E DD 74 E7      [19] 2706 	ld	-25 (ix),h
                           2707 ;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4E11 DD 7E E6      [19] 2708 	ld	a,-26 (ix)
   4E14 DD 77 FF      [19] 2709 	ld	-1 (ix),a
                           2710 ;src/includes/game.h:37: drawWorld(p_world, ulx, uly);
   4E17 DD 5E EC      [19] 2711 	ld	e,-20 (ix)
   4E1A DD 56 ED      [19] 2712 	ld	d,-19 (ix)
   4E1D DD 7E FF      [19] 2713 	ld	a,-1 (ix)
   4E20 F5            [11] 2714 	push	af
   4E21 33            [ 6] 2715 	inc	sp
   4E22 DD 7E E9      [19] 2716 	ld	a,-23 (ix)
   4E25 F5            [11] 2717 	push	af
   4E26 33            [ 6] 2718 	inc	sp
   4E27 D5            [11] 2719 	push	de
   4E28 CD E5 4B      [17] 2720 	call	_drawWorld
   4E2B F1            [10] 2721 	pop	af
   4E2C F1            [10] 2722 	pop	af
                           2723 ;src/includes/game.h:42: for(i=0; i<14000; i++) {}
   4E2D                    2724 00153$:
   4E2D 11 B0 36      [10] 2725 	ld	de,#0x36B0
   4E30                    2726 00138$:
   4E30 1B            [ 6] 2727 	dec	de
   4E31 7A            [ 4] 2728 	ld	a,d
   4E32 B3            [ 4] 2729 	or	a,e
   4E33 20 FB         [12] 2730 	jr	NZ,00138$
   4E35                    2731 00107$:
                           2732 ;src/includes/game.h:45: if ( cpct_isKeyPressed(Key_CursorDown) )
   4E35 21 00 04      [10] 2733 	ld	hl,#0x0400
   4E38 CD B1 51      [17] 2734 	call	_cpct_isKeyPressed
   4E3B 7D            [ 4] 2735 	ld	a,l
   4E3C B7            [ 4] 2736 	or	a, a
   4E3D CA E8 4E      [10] 2737 	jp	Z,00114$
                           2738 ;src/includes/game.h:47: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4E40 DD 7E DD      [19] 2739 	ld	a,-35 (ix)
   4E43 DD 77 F8      [19] 2740 	ld	-8 (ix),a
   4E46 DD 7E F4      [19] 2741 	ld	a,-12 (ix)
   4E49 DD 77 FD      [19] 2742 	ld	-3 (ix),a
   4E4C DD 7E F5      [19] 2743 	ld	a,-11 (ix)
   4E4F DD 77 FE      [19] 2744 	ld	-2 (ix),a
   4E52 DD 66 F8      [19] 2745 	ld	h,-8 (ix)
   4E55 DD 6E FC      [19] 2746 	ld	l,-4 (ix)
   4E58 E5            [11] 2747 	push	hl
   4E59 DD 66 FF      [19] 2748 	ld	h,-1 (ix)
   4E5C DD 6E E9      [19] 2749 	ld	l,-23 (ix)
   4E5F E5            [11] 2750 	push	hl
   4E60 DD 6E FD      [19] 2751 	ld	l,-3 (ix)
   4E63 DD 66 FE      [19] 2752 	ld	h,-2 (ix)
   4E66 E5            [11] 2753 	push	hl
   4E67 CD DA 4A      [17] 2754 	call	_drawTile
   4E6A 21 06 00      [10] 2755 	ld	hl,#6
   4E6D 39            [11] 2756 	add	hl,sp
   4E6E F9            [ 6] 2757 	ld	sp,hl
                           2758 ;src/includes/game.h:48: yCursor+=1;
   4E6F DD 34 DD      [23] 2759 	inc	-35 (ix)
   4E72 20 03         [12] 2760 	jr	NZ,00231$
   4E74 DD 34 DE      [23] 2761 	inc	-34 (ix)
   4E77                    2762 00231$:
                           2763 ;src/includes/game.h:49: if(yCursor>NBTILE_H-1)
   4E77 3E 0B         [ 7] 2764 	ld	a,#0x0B
   4E79 DD BE DD      [19] 2765 	cp	a, -35 (ix)
   4E7C 3E 00         [ 7] 2766 	ld	a,#0x00
   4E7E DD 9E DE      [19] 2767 	sbc	a, -34 (ix)
   4E81 E2 86 4E      [10] 2768 	jp	PO, 00232$
   4E84 EE 80         [ 7] 2769 	xor	a, #0x80
   4E86                    2770 00232$:
   4E86 F2 CD 4E      [10] 2771 	jp	P,00158$
                           2772 ;src/includes/game.h:51: yCursor=NBTILE_H-1;
   4E89 DD 36 DD 0B   [19] 2773 	ld	-35 (ix),#0x0B
   4E8D DD 36 DE 00   [19] 2774 	ld	-34 (ix),#0x00
                           2775 ;src/includes/game.h:52: if(uly<HEIGHT-NBTILE_H)
   4E91 DD 7E E6      [19] 2776 	ld	a,-26 (ix)
   4E94 D6 24         [ 7] 2777 	sub	a, #0x24
   4E96 DD 7E E7      [19] 2778 	ld	a,-25 (ix)
   4E99 17            [ 4] 2779 	rla
   4E9A 3F            [ 4] 2780 	ccf
   4E9B 1F            [ 4] 2781 	rra
   4E9C DE 80         [ 7] 2782 	sbc	a, #0x80
   4E9E 30 2D         [12] 2783 	jr	NC,00158$
                           2784 ;src/includes/game.h:54: uly+=1;
   4EA0 DD 34 E6      [23] 2785 	inc	-26 (ix)
   4EA3 20 03         [12] 2786 	jr	NZ,00233$
   4EA5 DD 34 E7      [23] 2787 	inc	-25 (ix)
   4EA8                    2788 00233$:
                           2789 ;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4EA8 DD 7E E6      [19] 2790 	ld	a,-26 (ix)
   4EAB DD 77 FF      [19] 2791 	ld	-1 (ix),a
                           2792 ;src/includes/game.h:55: drawWorld(p_world, ulx, uly);
   4EAE DD 7E EA      [19] 2793 	ld	a,-22 (ix)
   4EB1 DD 77 FD      [19] 2794 	ld	-3 (ix),a
   4EB4 DD 7E EB      [19] 2795 	ld	a,-21 (ix)
   4EB7 DD 77 FE      [19] 2796 	ld	-2 (ix),a
   4EBA DD 66 FF      [19] 2797 	ld	h,-1 (ix)
   4EBD DD 6E E9      [19] 2798 	ld	l,-23 (ix)
   4EC0 E5            [11] 2799 	push	hl
   4EC1 DD 6E FD      [19] 2800 	ld	l,-3 (ix)
   4EC4 DD 66 FE      [19] 2801 	ld	h,-2 (ix)
   4EC7 E5            [11] 2802 	push	hl
   4EC8 CD E5 4B      [17] 2803 	call	_drawWorld
   4ECB F1            [10] 2804 	pop	af
   4ECC F1            [10] 2805 	pop	af
                           2806 ;src/includes/game.h:60: for(i=0; i<5000; i++) {}
   4ECD                    2807 00158$:
   4ECD DD 36 E1 88   [19] 2808 	ld	-31 (ix),#0x88
   4ED1 DD 36 E2 13   [19] 2809 	ld	-30 (ix),#0x13
   4ED5                    2810 00141$:
   4ED5 DD 6E E1      [19] 2811 	ld	l,-31 (ix)
   4ED8 DD 66 E2      [19] 2812 	ld	h,-30 (ix)
   4EDB 2B            [ 6] 2813 	dec	hl
   4EDC DD 75 E1      [19] 2814 	ld	-31 (ix),l
   4EDF DD 74 E2      [19] 2815 	ld	-30 (ix), h
   4EE2 7C            [ 4] 2816 	ld	a, h
   4EE3 DD B6 E1      [19] 2817 	or	a,-31 (ix)
   4EE6 20 ED         [12] 2818 	jr	NZ,00141$
   4EE8                    2819 00114$:
                           2820 ;src/includes/game.h:63: if ( cpct_isKeyPressed(Key_CursorLeft) )
   4EE8 21 01 01      [10] 2821 	ld	hl,#0x0101
   4EEB CD B1 51      [17] 2822 	call	_cpct_isKeyPressed
   4EEE 55            [ 4] 2823 	ld	d,l
                           2824 ;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4EEF DD 7E DD      [19] 2825 	ld	a,-35 (ix)
   4EF2 DD 77 FD      [19] 2826 	ld	-3 (ix),a
                           2827 ;src/includes/game.h:63: if ( cpct_isKeyPressed(Key_CursorLeft) )
   4EF5 7A            [ 4] 2828 	ld	a,d
   4EF6 B7            [ 4] 2829 	or	a, a
   4EF7 CA 78 4F      [10] 2830 	jp	Z,00121$
                           2831 ;src/includes/game.h:65: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4EFA DD 5E EE      [19] 2832 	ld	e,-18 (ix)
   4EFD DD 56 EF      [19] 2833 	ld	d,-17 (ix)
   4F00 DD 7E FD      [19] 2834 	ld	a,-3 (ix)
   4F03 F5            [11] 2835 	push	af
   4F04 33            [ 6] 2836 	inc	sp
   4F05 DD 7E FC      [19] 2837 	ld	a,-4 (ix)
   4F08 F5            [11] 2838 	push	af
   4F09 33            [ 6] 2839 	inc	sp
   4F0A DD 7E FF      [19] 2840 	ld	a,-1 (ix)
   4F0D F5            [11] 2841 	push	af
   4F0E 33            [ 6] 2842 	inc	sp
   4F0F DD 7E E9      [19] 2843 	ld	a,-23 (ix)
   4F12 F5            [11] 2844 	push	af
   4F13 33            [ 6] 2845 	inc	sp
   4F14 D5            [11] 2846 	push	de
   4F15 CD DA 4A      [17] 2847 	call	_drawTile
   4F18 21 06 00      [10] 2848 	ld	hl,#6
   4F1B 39            [11] 2849 	add	hl,sp
   4F1C F9            [ 6] 2850 	ld	sp,hl
                           2851 ;src/includes/game.h:66: xCursor-=1;
   4F1D DD 6E DF      [19] 2852 	ld	l,-33 (ix)
   4F20 DD 66 E0      [19] 2853 	ld	h,-32 (ix)
   4F23 2B            [ 6] 2854 	dec	hl
   4F24 DD 75 DF      [19] 2855 	ld	-33 (ix),l
   4F27 DD 74 E0      [19] 2856 	ld	-32 (ix),h
                           2857 ;src/includes/game.h:67: if(xCursor<0)
   4F2A DD CB E0 7E   [20] 2858 	bit	7, -32 (ix)
   4F2E 28 40         [12] 2859 	jr	Z,00163$
                           2860 ;src/includes/game.h:69: xCursor=0;
   4F30 DD 36 DF 00   [19] 2861 	ld	-33 (ix),#0x00
   4F34 DD 36 E0 00   [19] 2862 	ld	-32 (ix),#0x00
                           2863 ;src/includes/game.h:70: if(ulx>0)
   4F38 AF            [ 4] 2864 	xor	a, a
   4F39 DD BE E4      [19] 2865 	cp	a, -28 (ix)
   4F3C DD 9E E5      [19] 2866 	sbc	a, -27 (ix)
   4F3F E2 44 4F      [10] 2867 	jp	PO, 00234$
   4F42 EE 80         [ 7] 2868 	xor	a, #0x80
   4F44                    2869 00234$:
   4F44 F2 70 4F      [10] 2870 	jp	P,00163$
                           2871 ;src/includes/game.h:72: ulx-=1;
   4F47 DD 6E E4      [19] 2872 	ld	l,-28 (ix)
   4F4A DD 66 E5      [19] 2873 	ld	h,-27 (ix)
   4F4D 2B            [ 6] 2874 	dec	hl
   4F4E DD 75 E4      [19] 2875 	ld	-28 (ix),l
   4F51 DD 74 E5      [19] 2876 	ld	-27 (ix),h
                           2877 ;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4F54 DD 7E E4      [19] 2878 	ld	a,-28 (ix)
   4F57 DD 77 E9      [19] 2879 	ld	-23 (ix),a
                           2880 ;src/includes/game.h:73: drawWorld(p_world, ulx, uly);
   4F5A DD 5E F6      [19] 2881 	ld	e,-10 (ix)
   4F5D DD 56 F7      [19] 2882 	ld	d,-9 (ix)
   4F60 DD 7E FF      [19] 2883 	ld	a,-1 (ix)
   4F63 F5            [11] 2884 	push	af
   4F64 33            [ 6] 2885 	inc	sp
   4F65 DD 7E E9      [19] 2886 	ld	a,-23 (ix)
   4F68 F5            [11] 2887 	push	af
   4F69 33            [ 6] 2888 	inc	sp
   4F6A D5            [11] 2889 	push	de
   4F6B CD E5 4B      [17] 2890 	call	_drawWorld
   4F6E F1            [10] 2891 	pop	af
   4F6F F1            [10] 2892 	pop	af
                           2893 ;src/includes/game.h:78: for(i=0; i<14000; i++) {}
   4F70                    2894 00163$:
   4F70 11 B0 36      [10] 2895 	ld	de,#0x36B0
   4F73                    2896 00144$:
   4F73 1B            [ 6] 2897 	dec	de
   4F74 7A            [ 4] 2898 	ld	a,d
   4F75 B3            [ 4] 2899 	or	a,e
   4F76 20 FB         [12] 2900 	jr	NZ,00144$
   4F78                    2901 00121$:
                           2902 ;src/includes/game.h:81: if ( cpct_isKeyPressed(Key_CursorRight) )
   4F78 21 00 02      [10] 2903 	ld	hl,#0x0200
   4F7B CD B1 51      [17] 2904 	call	_cpct_isKeyPressed
   4F7E 7D            [ 4] 2905 	ld	a,l
   4F7F B7            [ 4] 2906 	or	a, a
   4F80 CA FD 4F      [10] 2907 	jp	Z,00128$
                           2908 ;src/includes/game.h:83: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4F83 DD 56 DF      [19] 2909 	ld	d,-33 (ix)
   4F86 DD 4E FA      [19] 2910 	ld	c,-6 (ix)
   4F89 DD 46 FB      [19] 2911 	ld	b,-5 (ix)
   4F8C DD 7E FD      [19] 2912 	ld	a,-3 (ix)
   4F8F F5            [11] 2913 	push	af
   4F90 33            [ 6] 2914 	inc	sp
   4F91 D5            [11] 2915 	push	de
   4F92 33            [ 6] 2916 	inc	sp
   4F93 DD 7E FF      [19] 2917 	ld	a,-1 (ix)
   4F96 F5            [11] 2918 	push	af
   4F97 33            [ 6] 2919 	inc	sp
   4F98 DD 7E E9      [19] 2920 	ld	a,-23 (ix)
   4F9B F5            [11] 2921 	push	af
   4F9C 33            [ 6] 2922 	inc	sp
   4F9D C5            [11] 2923 	push	bc
   4F9E CD DA 4A      [17] 2924 	call	_drawTile
   4FA1 21 06 00      [10] 2925 	ld	hl,#6
   4FA4 39            [11] 2926 	add	hl,sp
   4FA5 F9            [ 6] 2927 	ld	sp,hl
                           2928 ;src/includes/game.h:84: xCursor+=1;
   4FA6 DD 34 DF      [23] 2929 	inc	-33 (ix)
   4FA9 20 03         [12] 2930 	jr	NZ,00235$
   4FAB DD 34 E0      [23] 2931 	inc	-32 (ix)
   4FAE                    2932 00235$:
                           2933 ;src/includes/game.h:85: if(xCursor>NBTILE_W-1)
   4FAE 3E 13         [ 7] 2934 	ld	a,#0x13
   4FB0 DD BE DF      [19] 2935 	cp	a, -33 (ix)
   4FB3 3E 00         [ 7] 2936 	ld	a,#0x00
   4FB5 DD 9E E0      [19] 2937 	sbc	a, -32 (ix)
   4FB8 E2 BD 4F      [10] 2938 	jp	PO, 00236$
   4FBB EE 80         [ 7] 2939 	xor	a, #0x80
   4FBD                    2940 00236$:
   4FBD F2 F5 4F      [10] 2941 	jp	P,00168$
                           2942 ;src/includes/game.h:87: xCursor=NBTILE_W-1;
   4FC0 DD 36 DF 13   [19] 2943 	ld	-33 (ix),#0x13
   4FC4 DD 36 E0 00   [19] 2944 	ld	-32 (ix),#0x00
                           2945 ;src/includes/game.h:88: if(ulx<WIDTH-NBTILE_W)
   4FC8 DD 7E E4      [19] 2946 	ld	a,-28 (ix)
   4FCB D6 3C         [ 7] 2947 	sub	a, #0x3C
   4FCD DD 7E E5      [19] 2948 	ld	a,-27 (ix)
   4FD0 17            [ 4] 2949 	rla
   4FD1 3F            [ 4] 2950 	ccf
   4FD2 1F            [ 4] 2951 	rra
   4FD3 DE 80         [ 7] 2952 	sbc	a, #0x80
   4FD5 30 1E         [12] 2953 	jr	NC,00168$
                           2954 ;src/includes/game.h:90: ulx+=1;
   4FD7 DD 34 E4      [23] 2955 	inc	-28 (ix)
   4FDA 20 03         [12] 2956 	jr	NZ,00237$
   4FDC DD 34 E5      [23] 2957 	inc	-27 (ix)
   4FDF                    2958 00237$:
                           2959 ;src/includes/game.h:91: drawWorld(p_world, ulx, uly);
   4FDF DD 46 E4      [19] 2960 	ld	b,-28 (ix)
   4FE2 DD 5E F0      [19] 2961 	ld	e,-16 (ix)
   4FE5 DD 56 F1      [19] 2962 	ld	d,-15 (ix)
   4FE8 DD 7E FF      [19] 2963 	ld	a,-1 (ix)
   4FEB F5            [11] 2964 	push	af
   4FEC 33            [ 6] 2965 	inc	sp
   4FED C5            [11] 2966 	push	bc
   4FEE 33            [ 6] 2967 	inc	sp
   4FEF D5            [11] 2968 	push	de
   4FF0 CD E5 4B      [17] 2969 	call	_drawWorld
   4FF3 F1            [10] 2970 	pop	af
   4FF4 F1            [10] 2971 	pop	af
                           2972 ;src/includes/game.h:96: for(i=0; i<14000; i++) {}
   4FF5                    2973 00168$:
   4FF5 11 B0 36      [10] 2974 	ld	de,#0x36B0
   4FF8                    2975 00147$:
   4FF8 1B            [ 6] 2976 	dec	de
   4FF9 7A            [ 4] 2977 	ld	a,d
   4FFA B3            [ 4] 2978 	or	a,e
   4FFB 20 FB         [12] 2979 	jr	NZ,00147$
   4FFD                    2980 00128$:
                           2981 ;src/includes/game.h:99: if ( cpct_isKeyPressed(Key_Esc) )
   4FFD 21 08 04      [10] 2982 	ld	hl,#0x0408
   5000 CD B1 51      [17] 2983 	call	_cpct_isKeyPressed
   5003 7D            [ 4] 2984 	ld	a,l
   5004 B7            [ 4] 2985 	or	a, a
   5005 28 04         [12] 2986 	jr	Z,00130$
                           2987 ;src/includes/game.h:101: exit=1;
   5007 DD 36 E3 01   [19] 2988 	ld	-29 (ix),#0x01
   500B                    2989 00130$:
                           2990 ;src/includes/game.h:104: if ( cpct_isKeyPressed(Key_Return) )
   500B 21 02 04      [10] 2991 	ld	hl,#0x0402
   500E CD B1 51      [17] 2992 	call	_cpct_isKeyPressed
                           2993 ;src/includes/game.h:110: drawCursor(xCursor, yCursor, 0);
   5011 DD 56 DF      [19] 2994 	ld	d,-33 (ix)
   5014 AF            [ 4] 2995 	xor	a, a
   5015 F5            [11] 2996 	push	af
   5016 33            [ 6] 2997 	inc	sp
   5017 DD 7E FD      [19] 2998 	ld	a,-3 (ix)
   501A F5            [11] 2999 	push	af
   501B 33            [ 6] 3000 	inc	sp
   501C D5            [11] 3001 	push	de
   501D 33            [ 6] 3002 	inc	sp
   501E CD 20 48      [17] 3003 	call	_drawCursor
   5021 F1            [10] 3004 	pop	af
   5022 33            [ 6] 3005 	inc	sp
                           3006 ;src/includes/game.h:112: while(!exit);
   5023 DD 7E E3      [19] 3007 	ld	a,-29 (ix)
   5026 B7            [ 4] 3008 	or	a, a
   5027 CA 8A 4D      [10] 3009 	jp	Z,00133$
   502A DD F9         [10] 3010 	ld	sp, ix
   502C DD E1         [14] 3011 	pop	ix
   502E C9            [10] 3012 	ret
                           3013 ;src/main.c:16: void drawTrain() 
                           3014 ;	---------------------------------
                           3015 ; Function drawTrain
                           3016 ; ---------------------------------
   502F                    3017 _drawTrain::
                           3018 ;src/main.c:54: }
   502F C9            [10] 3019 	ret
                           3020 ;src/main.c:56: void putM0(void)
                           3021 ;	---------------------------------
                           3022 ; Function putM0
                           3023 ; ---------------------------------
   5030                    3024 _putM0::
                           3025 ;src/main.c:58: cpct_setVideoMode(0);
   5030 AF            [ 4] 3026 	xor	a, a
   5031 F5            [11] 3027 	push	af
   5032 33            [ 6] 3028 	inc	sp
   5033 CD 82 53      [17] 3029 	call	_cpct_setVideoMode
   5036 33            [ 6] 3030 	inc	sp
                           3031 ;src/main.c:60: cpct_setPalette(paletteTrains, 16);
   5037 21 1A 41      [10] 3032 	ld	hl,#_paletteTrains
   503A 01 10 00      [10] 3033 	ld	bc,#0x0010
   503D C5            [11] 3034 	push	bc
   503E E5            [11] 3035 	push	hl
   503F CD 9A 51      [17] 3036 	call	_cpct_setPalette
   5042 C9            [10] 3037 	ret
                           3038 ;src/main.c:63: void putM2(void)
                           3039 ;	---------------------------------
                           3040 ; Function putM2
                           3041 ; ---------------------------------
   5043                    3042 _putM2::
                           3043 ;src/main.c:65: cpct_setVideoMode(2);
   5043 3E 02         [ 7] 3044 	ld	a,#0x02
   5045 F5            [11] 3045 	push	af
   5046 33            [ 6] 3046 	inc	sp
   5047 CD 82 53      [17] 3047 	call	_cpct_setVideoMode
   504A 33            [ 6] 3048 	inc	sp
                           3049 ;src/main.c:67: cpct_setPalette(paletteMenusM2, 2);
   504B 21 2E 41      [10] 3050 	ld	hl,#_paletteMenusM2
   504E 01 02 00      [10] 3051 	ld	bc,#0x0002
   5051 C5            [11] 3052 	push	bc
   5052 E5            [11] 3053 	push	hl
   5053 CD 9A 51      [17] 3054 	call	_cpct_setPalette
   5056 C9            [10] 3055 	ret
                           3056 ;src/main.c:70: void main(void)
                           3057 ;	---------------------------------
                           3058 ; Function main
                           3059 ; ---------------------------------
   5057                    3060 _main::
   5057 DD E5         [15] 3061 	push	ix
   5059 DD 21 00 00   [14] 3062 	ld	ix,#0
   505D DD 39         [15] 3063 	add	ix,sp
   505F 21 EE FF      [10] 3064 	ld	hl,#-18
   5062 39            [11] 3065 	add	hl,sp
   5063 F9            [ 6] 3066 	ld	sp,hl
                           3067 ;src/main.c:75: const char *menuMain[] = { 
   5064 21 00 00      [10] 3068 	ld	hl,#0x0000
   5067 39            [11] 3069 	add	hl,sp
   5068 5D            [ 4] 3070 	ld	e,l
   5069 54            [ 4] 3071 	ld	d,h
   506A 36 5A         [10] 3072 	ld	(hl),#<(___str_2)
   506C 23            [ 6] 3073 	inc	hl
   506D 36 51         [10] 3074 	ld	(hl),#>(___str_2)
   506F 6B            [ 4] 3075 	ld	l, e
   5070 62            [ 4] 3076 	ld	h, d
   5071 23            [ 6] 3077 	inc	hl
   5072 23            [ 6] 3078 	inc	hl
   5073 01 63 51      [10] 3079 	ld	bc,#___str_3+0
   5076 71            [ 7] 3080 	ld	(hl),c
   5077 23            [ 6] 3081 	inc	hl
   5078 70            [ 7] 3082 	ld	(hl),b
   5079 21 04 00      [10] 3083 	ld	hl,#0x0004
   507C 19            [11] 3084 	add	hl,de
   507D 01 6B 51      [10] 3085 	ld	bc,#___str_4+0
   5080 71            [ 7] 3086 	ld	(hl),c
   5081 23            [ 6] 3087 	inc	hl
   5082 70            [ 7] 3088 	ld	(hl),b
                           3089 ;src/main.c:81: const char *windowCredit[] = { 
   5083 21 06 00      [10] 3090 	ld	hl,#0x0006
   5086 39            [11] 3091 	add	hl,sp
   5087 DD 75 FC      [19] 3092 	ld	-4 (ix),l
   508A DD 74 FD      [19] 3093 	ld	-3 (ix),h
   508D DD 6E FC      [19] 3094 	ld	l,-4 (ix)
   5090 DD 66 FD      [19] 3095 	ld	h,-3 (ix)
   5093 36 70         [10] 3096 	ld	(hl),#<(___str_5)
   5095 23            [ 6] 3097 	inc	hl
   5096 36 51         [10] 3098 	ld	(hl),#>(___str_5)
   5098 DD 6E FC      [19] 3099 	ld	l,-4 (ix)
   509B DD 66 FD      [19] 3100 	ld	h,-3 (ix)
   509E 23            [ 6] 3101 	inc	hl
   509F 23            [ 6] 3102 	inc	hl
   50A0 01 79 51      [10] 3103 	ld	bc,#___str_6+0
   50A3 71            [ 7] 3104 	ld	(hl),c
   50A4 23            [ 6] 3105 	inc	hl
   50A5 70            [ 7] 3106 	ld	(hl),b
   50A6 DD 7E FC      [19] 3107 	ld	a,-4 (ix)
   50A9 C6 04         [ 7] 3108 	add	a, #0x04
   50AB 6F            [ 4] 3109 	ld	l,a
   50AC DD 7E FD      [19] 3110 	ld	a,-3 (ix)
   50AF CE 00         [ 7] 3111 	adc	a, #0x00
   50B1 67            [ 4] 3112 	ld	h,a
   50B2 01 7A 51      [10] 3113 	ld	bc,#___str_7+0
   50B5 71            [ 7] 3114 	ld	(hl),c
   50B6 23            [ 6] 3115 	inc	hl
   50B7 70            [ 7] 3116 	ld	(hl),b
                           3117 ;src/main.c:87: firmware = cpct_disableFirmware();
   50B8 D5            [11] 3118 	push	de
   50B9 CD E6 53      [17] 3119 	call	_cpct_disableFirmware
   50BC D1            [10] 3120 	pop	de
   50BD DD 75 FA      [19] 3121 	ld	-6 (ix),l
   50C0 DD 74 FB      [19] 3122 	ld	-5 (ix),h
                           3123 ;src/main.c:89: cpct_fw2hw(paletteTrains, 16);
   50C3 21 1A 41      [10] 3124 	ld	hl,#_paletteTrains
   50C6 D5            [11] 3125 	push	de
   50C7 01 10 00      [10] 3126 	ld	bc,#0x0010
   50CA C5            [11] 3127 	push	bc
   50CB E5            [11] 3128 	push	hl
   50CC CD F2 52      [17] 3129 	call	_cpct_fw2hw
   50CF D1            [10] 3130 	pop	de
                           3131 ;src/main.c:90: cpct_fw2hw(paletteMenusM2, 2);
   50D0 21 2E 41      [10] 3132 	ld	hl,#_paletteMenusM2
   50D3 D5            [11] 3133 	push	de
   50D4 01 02 00      [10] 3134 	ld	bc,#0x0002
   50D7 C5            [11] 3135 	push	bc
   50D8 E5            [11] 3136 	push	hl
   50D9 CD F2 52      [17] 3137 	call	_cpct_fw2hw
   50DC D1            [10] 3138 	pop	de
                           3139 ;src/main.c:91: cpct_fw2hw(paletteMenusM1, 4);
   50DD 21 2A 41      [10] 3140 	ld	hl,#_paletteMenusM1
   50E0 D5            [11] 3141 	push	de
   50E1 01 04 00      [10] 3142 	ld	bc,#0x0004
   50E4 C5            [11] 3143 	push	bc
   50E5 E5            [11] 3144 	push	hl
   50E6 CD F2 52      [17] 3145 	call	_cpct_fw2hw
   50E9 D1            [10] 3146 	pop	de
                           3147 ;src/main.c:93: cpct_setBorder(paletteTrains[12]);
   50EA 3A 26 41      [13] 3148 	ld	a, (#_paletteTrains + 12)
   50ED D5            [11] 3149 	push	de
   50EE 57            [ 4] 3150 	ld	d,a
   50EF 1E 10         [ 7] 3151 	ld	e,#0x10
   50F1 D5            [11] 3152 	push	de
   50F2 CD BD 51      [17] 3153 	call	_cpct_setPALColour
   50F5 CD 43 50      [17] 3154 	call	_putM2
   50F8 D1            [10] 3155 	pop	de
                           3156 ;src/main.c:97: do{
   50F9 DD 73 FE      [19] 3157 	ld	-2 (ix),e
   50FC DD 72 FF      [19] 3158 	ld	-1 (ix),d
   50FF                    3159 00105$:
                           3160 ;src/main.c:98: cpct_clearScreen(0b11111111);
   50FF 21 00 40      [10] 3161 	ld	hl,#0x4000
   5102 E5            [11] 3162 	push	hl
   5103 3E FF         [ 7] 3163 	ld	a,#0xFF
   5105 F5            [11] 3164 	push	af
   5106 33            [ 6] 3165 	inc	sp
   5107 26 C0         [ 7] 3166 	ld	h, #0xC0
   5109 E5            [11] 3167 	push	hl
   510A CD B0 53      [17] 3168 	call	_cpct_memset
                           3169 ;src/main.c:100: menuChoice = drawMenu(menuMain,3);
   510D DD 5E FE      [19] 3170 	ld	e,-2 (ix)
   5110 DD 56 FF      [19] 3171 	ld	d,-1 (ix)
   5113 3E 03         [ 7] 3172 	ld	a,#0x03
   5115 F5            [11] 3173 	push	af
   5116 33            [ 6] 3174 	inc	sp
   5117 D5            [11] 3175 	push	de
   5118 CD D5 45      [17] 3176 	call	_drawMenu
   511B F1            [10] 3177 	pop	af
   511C 33            [ 6] 3178 	inc	sp
   511D 55            [ 4] 3179 	ld	d,l
                           3180 ;src/main.c:102: if(menuChoice==0)
   511E 7A            [ 4] 3181 	ld	a,d
   511F B7            [ 4] 3182 	or	a, a
   5120 20 08         [12] 3183 	jr	NZ,00102$
                           3184 ;src/main.c:104: game();
   5122 D5            [11] 3185 	push	de
   5123 CD A7 4C      [17] 3186 	call	_game
   5126 CD 43 50      [17] 3187 	call	_putM2
   5129 D1            [10] 3188 	pop	de
   512A                    3189 00102$:
                           3190 ;src/main.c:109: if(menuChoice==1)
   512A 7A            [ 4] 3191 	ld	a,d
   512B 3D            [ 4] 3192 	dec	a
   512C 20 12         [12] 3193 	jr	NZ,00106$
                           3194 ;src/main.c:110: drawWindow(windowCredit,3,0);
   512E DD 4E FC      [19] 3195 	ld	c,-4 (ix)
   5131 DD 46 FD      [19] 3196 	ld	b,-3 (ix)
   5134 D5            [11] 3197 	push	de
   5135 21 03 00      [10] 3198 	ld	hl,#0x0003
   5138 E5            [11] 3199 	push	hl
   5139 C5            [11] 3200 	push	bc
   513A CD 83 46      [17] 3201 	call	_drawWindow
   513D F1            [10] 3202 	pop	af
   513E F1            [10] 3203 	pop	af
   513F D1            [10] 3204 	pop	de
   5140                    3205 00106$:
                           3206 ;src/main.c:112: while(menuChoice!=2);
   5140 7A            [ 4] 3207 	ld	a,d
   5141 D6 02         [ 7] 3208 	sub	a, #0x02
   5143 20 BA         [12] 3209 	jr	NZ,00105$
                           3210 ;src/main.c:114: cpct_setVideoMode(0);
   5145 AF            [ 4] 3211 	xor	a, a
   5146 F5            [11] 3212 	push	af
   5147 33            [ 6] 3213 	inc	sp
   5148 CD 82 53      [17] 3214 	call	_cpct_setVideoMode
   514B 33            [ 6] 3215 	inc	sp
                           3216 ;src/main.c:115: cpct_reenableFirmware(firmware);
   514C DD 6E FA      [19] 3217 	ld	l,-6 (ix)
   514F DD 66 FB      [19] 3218 	ld	h,-5 (ix)
   5152 CD 50 53      [17] 3219 	call	_cpct_reenableFirmware
   5155 DD F9         [10] 3220 	ld	sp, ix
   5157 DD E1         [14] 3221 	pop	ix
   5159 C9            [10] 3222 	ret
   515A                    3223 ___str_2:
   515A 4E 65 77 20 67 61  3224 	.ascii "New game"
        6D 65
   5162 00                 3225 	.db 0x00
   5163                    3226 ___str_3:
   5163 43 72 65 64 69 74  3227 	.ascii "Credits"
        73
   516A 00                 3228 	.db 0x00
   516B                    3229 ___str_4:
   516B 51 75 69 74        3230 	.ascii "Quit"
   516F 00                 3231 	.db 0x00
   5170                    3232 ___str_5:
   5170 52 61 69 6C 77 61  3233 	.ascii "Railwayz"
        79 7A
   5178 00                 3234 	.db 0x00
   5179                    3235 ___str_6:
   5179 00                 3236 	.db 0x00
   517A                    3237 ___str_7:
   517A 54 72 65 77 64 62  3238 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   5194 00                 3239 	.db 0x00
                           3240 	.area _CODE
                           3241 	.area _INITIALIZER
                           3242 	.area _CABS (ABS)
