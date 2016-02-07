                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Feb  7 16:12:11 2016
                              5 ;--------------------------------------------------------
                              6 	.module depot
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _drawMenu
                             13 	.globl _putM2
                             14 	.globl _putM0
                             15 	.globl _floorf
                             16 	.globl _cpct_getScreenPtr
                             17 	.globl _cpct_drawSolidBox
                             18 	.globl _cpct_drawSprite
                             19 	.globl _cpct_px2byteM0
                             20 	.globl _cpct_isKeyPressed
                             21 	.globl _cpct_scanKeyboard
                             22 	.globl _cpct_memset
                             23 	.globl _railroadDepot
                             24 	.globl _drawLocomotive
                             25 	.globl _buyLocomotive
                             26 ;--------------------------------------------------------
                             27 ; special function registers
                             28 ;--------------------------------------------------------
                             29 ;--------------------------------------------------------
                             30 ; ram data
                             31 ;--------------------------------------------------------
                             32 	.area _DATA
                             33 ;--------------------------------------------------------
                             34 ; ram data
                             35 ;--------------------------------------------------------
                             36 	.area _INITIALIZED
                             37 ;--------------------------------------------------------
                             38 ; absolute external ram data
                             39 ;--------------------------------------------------------
                             40 	.area _DABS (ABS)
                             41 ;--------------------------------------------------------
                             42 ; global & static initialisations
                             43 ;--------------------------------------------------------
                             44 	.area _HOME
                             45 	.area _GSINIT
                             46 	.area _GSFINAL
                             47 	.area _GSINIT
                             48 ;--------------------------------------------------------
                             49 ; Home
                             50 ;--------------------------------------------------------
                             51 	.area _HOME
                             52 	.area _HOME
                             53 ;--------------------------------------------------------
                             54 ; code
                             55 ;--------------------------------------------------------
                             56 	.area _CODE
                             57 ;src/game/depot.c:3: void railroadDepot()
                             58 ;	---------------------------------
                             59 ; Function railroadDepot
                             60 ; ---------------------------------
   4130                      61 _railroadDepot::
   4130 DD E5         [15]   62 	push	ix
   4132 DD 21 00 00   [14]   63 	ld	ix,#0
   4136 DD 39         [15]   64 	add	ix,sp
   4138 F5            [11]   65 	push	af
   4139 F5            [11]   66 	push	af
   413A 3B            [ 6]   67 	dec	sp
                             68 ;src/game/depot.c:5: u8 exit=0;
   413B DD 36 FF 00   [19]   69 	ld	-1 (ix),#0x00
                             70 ;src/game/depot.c:7: cpct_clearScreen(0b11111111);
   413F 21 00 40      [10]   71 	ld	hl,#0x4000
   4142 E5            [11]   72 	push	hl
   4143 3E FF         [ 7]   73 	ld	a,#0xFF
   4145 F5            [11]   74 	push	af
   4146 33            [ 6]   75 	inc	sp
   4147 26 C0         [ 7]   76 	ld	h, #0xC0
   4149 E5            [11]   77 	push	hl
   414A CD 75 6C      [17]   78 	call	_cpct_memset
                             79 ;src/game/depot.c:9: do
   414D                      80 00108$:
                             81 ;src/game/depot.c:11: cpct_scanKeyboard(); 
   414D CD C9 6D      [17]   82 	call	_cpct_scanKeyboard
                             83 ;src/game/depot.c:13: if ( cpct_isKeyPressed(Key_Esc) )
   4150 21 08 04      [10]   84 	ld	hl,#0x0408
   4153 CD 54 69      [17]   85 	call	_cpct_isKeyPressed
   4156 7D            [ 4]   86 	ld	a,l
   4157 B7            [ 4]   87 	or	a, a
   4158 28 06         [12]   88 	jr	Z,00106$
                             89 ;src/game/depot.c:14: exit=1;
   415A DD 36 FF 01   [19]   90 	ld	-1 (ix),#0x01
   415E 18 2F         [12]   91 	jr	00109$
   4160                      92 00106$:
                             93 ;src/game/depot.c:15: else if(cpct_isKeyPressed(Key_Return) )
   4160 21 02 04      [10]   94 	ld	hl,#0x0402
   4163 CD 54 69      [17]   95 	call	_cpct_isKeyPressed
   4166 7D            [ 4]   96 	ld	a,l
   4167 B7            [ 4]   97 	or	a, a
   4168 28 25         [12]   98 	jr	Z,00109$
                             99 ;src/game/depot.c:17: const char *txtMenuChoice[] = { 
   416A 21 00 00      [10]  100 	ld	hl,#0x0000
   416D 39            [11]  101 	add	hl,sp
   416E 5D            [ 4]  102 	ld	e,l
   416F 54            [ 4]  103 	ld	d,h
   4170 36 9A         [10]  104 	ld	(hl),#<(___str_0)
   4172 23            [ 6]  105 	inc	hl
   4173 36 41         [10]  106 	ld	(hl),#>(___str_0)
   4175 6B            [ 4]  107 	ld	l, e
   4176 62            [ 4]  108 	ld	h, d
   4177 23            [ 6]  109 	inc	hl
   4178 23            [ 6]  110 	inc	hl
   4179 36 AB         [10]  111 	ld	(hl),#<(___str_1)
   417B 23            [ 6]  112 	inc	hl
   417C 36 41         [10]  113 	ld	(hl),#>(___str_1)
                            114 ;src/game/depot.c:21: u8 menuChoice = drawMenu(txtMenuChoice,2);
   417E 3E 02         [ 7]  115 	ld	a,#0x02
   4180 F5            [11]  116 	push	af
   4181 33            [ 6]  117 	inc	sp
   4182 D5            [11]  118 	push	de
   4183 CD 5E 5B      [17]  119 	call	_drawMenu
   4186 F1            [10]  120 	pop	af
   4187 33            [ 6]  121 	inc	sp
   4188 7D            [ 4]  122 	ld	a,l
                            123 ;src/game/depot.c:23: if(menuChoice == 0)
   4189 B7            [ 4]  124 	or	a, a
   418A 20 03         [12]  125 	jr	NZ,00109$
                            126 ;src/game/depot.c:24: buyLocomotive();
   418C CD 09 43      [17]  127 	call	_buyLocomotive
   418F                     128 00109$:
                            129 ;src/game/depot.c:28: while(!exit);
   418F DD 7E FF      [19]  130 	ld	a,-1 (ix)
   4192 B7            [ 4]  131 	or	a, a
   4193 28 B8         [12]  132 	jr	Z,00108$
   4195 DD F9         [10]  133 	ld	sp, ix
   4197 DD E1         [14]  134 	pop	ix
   4199 C9            [10]  135 	ret
   419A                     136 ___str_0:
   419A 42 75 79 20 61 20   137 	.ascii "Buy a locomotive"
        6C 6F 63 6F 6D 6F
        74 69 76 65
   41AA 00                  138 	.db 0x00
   41AB                     139 ___str_1:
   41AB 42 61 63 6B 20 74   140 	.ascii "Back to depot"
        6F 20 64 65 70 6F
        74
   41B8 00                  141 	.db 0x00
                            142 ;src/game/depot.c:31: void drawLocomotive(u8 i, u8 iSelect)
                            143 ;	---------------------------------
                            144 ; Function drawLocomotive
                            145 ; ---------------------------------
   41B9                     146 _drawLocomotive::
   41B9 DD E5         [15]  147 	push	ix
   41BB DD 21 00 00   [14]  148 	ld	ix,#0
   41BF DD 39         [15]  149 	add	ix,sp
   41C1 21 F7 FF      [10]  150 	ld	hl,#-9
   41C4 39            [11]  151 	add	hl,sp
   41C5 F9            [ 6]  152 	ld	sp,hl
                            153 ;src/game/depot.c:34: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4), 30+40*(i%4));
   41C6 DD 7E 04      [19]  154 	ld	a,4 (ix)
   41C9 E6 03         [ 7]  155 	and	a, #0x03
   41CB 4F            [ 4]  156 	ld	c,a
   41CC 87            [ 4]  157 	add	a, a
   41CD 87            [ 4]  158 	add	a, a
   41CE 81            [ 4]  159 	add	a, c
   41CF 87            [ 4]  160 	add	a, a
   41D0 87            [ 4]  161 	add	a, a
   41D1 87            [ 4]  162 	add	a, a
   41D2 DD 77 F7      [19]  163 	ld	-9 (ix), a
   41D5 C6 1E         [ 7]  164 	add	a, #0x1E
   41D7 DD 77 FF      [19]  165 	ld	-1 (ix),a
   41DA DD 7E 04      [19]  166 	ld	a,4 (ix)
   41DD 0F            [ 4]  167 	rrca
   41DE 0F            [ 4]  168 	rrca
   41DF E6 3F         [ 7]  169 	and	a,#0x3F
   41E1 DD 77 FE      [19]  170 	ld	-2 (ix), a
   41E4 F5            [11]  171 	push	af
   41E5 33            [ 6]  172 	inc	sp
   41E6 CD DE 85      [17]  173 	call	___uchar2fs
   41E9 33            [ 6]  174 	inc	sp
   41EA DD 72 FD      [19]  175 	ld	-3 (ix),d
   41ED DD 73 FC      [19]  176 	ld	-4 (ix),e
   41F0 DD 74 FB      [19]  177 	ld	-5 (ix),h
   41F3 DD 75 FA      [19]  178 	ld	-6 (ix),l
   41F6 DD 6E FC      [19]  179 	ld	l,-4 (ix)
   41F9 DD 66 FD      [19]  180 	ld	h,-3 (ix)
   41FC E5            [11]  181 	push	hl
   41FD DD 6E FA      [19]  182 	ld	l,-6 (ix)
   4200 DD 66 FB      [19]  183 	ld	h,-5 (ix)
   4203 E5            [11]  184 	push	hl
   4204 CD 39 6B      [17]  185 	call	_floorf
   4207 F1            [10]  186 	pop	af
   4208 F1            [10]  187 	pop	af
   4209 EB            [ 4]  188 	ex	de, hl
   420A E5            [11]  189 	push	hl
   420B D5            [11]  190 	push	de
   420C 21 C8 41      [10]  191 	ld	hl,#0x41C8
   420F E5            [11]  192 	push	hl
   4210 21 00 00      [10]  193 	ld	hl,#0x0000
   4213 E5            [11]  194 	push	hl
   4214 CD 9B 7D      [17]  195 	call	___fsmul
   4217 F1            [10]  196 	pop	af
   4218 F1            [10]  197 	pop	af
   4219 F1            [10]  198 	pop	af
   421A F1            [10]  199 	pop	af
   421B 4D            [ 4]  200 	ld	c,l
   421C 44            [ 4]  201 	ld	b,h
   421D 21 A0 40      [10]  202 	ld	hl,#0x40A0
   4220 E5            [11]  203 	push	hl
   4221 21 00 00      [10]  204 	ld	hl,#0x0000
   4224 E5            [11]  205 	push	hl
   4225 D5            [11]  206 	push	de
   4226 C5            [11]  207 	push	bc
   4227 CD 89 81      [17]  208 	call	___fsadd
   422A F1            [10]  209 	pop	af
   422B F1            [10]  210 	pop	af
   422C F1            [10]  211 	pop	af
   422D F1            [10]  212 	pop	af
   422E D5            [11]  213 	push	de
   422F E5            [11]  214 	push	hl
   4230 CD F4 85      [17]  215 	call	___fs2uchar
   4233 F1            [10]  216 	pop	af
   4234 F1            [10]  217 	pop	af
   4235 55            [ 4]  218 	ld	d,l
   4236 DD 7E FF      [19]  219 	ld	a,-1 (ix)
   4239 F5            [11]  220 	push	af
   423A 33            [ 6]  221 	inc	sp
   423B D5            [11]  222 	push	de
   423C 33            [ 6]  223 	inc	sp
   423D 21 00 C0      [10]  224 	ld	hl,#0xC000
   4240 E5            [11]  225 	push	hl
   4241 CD A9 6D      [17]  226 	call	_cpct_getScreenPtr
                            227 ;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4244 DD 75 F8      [19]  228 	ld	-8 (ix),l
   4247 DD 74 F9      [19]  229 	ld	-7 (ix),h
                            230 ;src/game/depot.c:37: if(i==iSelect)
   424A DD 7E 04      [19]  231 	ld	a,4 (ix)
   424D DD 96 05      [19]  232 	sub	a, 5 (ix)
   4250 20 1D         [12]  233 	jr	NZ,00102$
                            234 ;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4252 21 05 05      [10]  235 	ld	hl,#0x0505
   4255 E5            [11]  236 	push	hl
   4256 CD 59 6C      [17]  237 	call	_cpct_px2byteM0
   4259 55            [ 4]  238 	ld	d,l
   425A 21 16 16      [10]  239 	ld	hl,#0x1616
   425D E5            [11]  240 	push	hl
   425E D5            [11]  241 	push	de
   425F 33            [ 6]  242 	inc	sp
   4260 DD 6E F8      [19]  243 	ld	l,-8 (ix)
   4263 DD 66 F9      [19]  244 	ld	h,-7 (ix)
   4266 E5            [11]  245 	push	hl
   4267 CD F0 6C      [17]  246 	call	_cpct_drawSolidBox
   426A F1            [10]  247 	pop	af
   426B F1            [10]  248 	pop	af
   426C 33            [ 6]  249 	inc	sp
   426D 18 1B         [12]  250 	jr	00103$
   426F                     251 00102$:
                            252 ;src/game/depot.c:40: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
   426F 21 0B 0B      [10]  253 	ld	hl,#0x0B0B
   4272 E5            [11]  254 	push	hl
   4273 CD 59 6C      [17]  255 	call	_cpct_px2byteM0
   4276 55            [ 4]  256 	ld	d,l
   4277 21 16 16      [10]  257 	ld	hl,#0x1616
   427A E5            [11]  258 	push	hl
   427B D5            [11]  259 	push	de
   427C 33            [ 6]  260 	inc	sp
   427D DD 6E F8      [19]  261 	ld	l,-8 (ix)
   4280 DD 66 F9      [19]  262 	ld	h,-7 (ix)
   4283 E5            [11]  263 	push	hl
   4284 CD F0 6C      [17]  264 	call	_cpct_drawSolidBox
   4287 F1            [10]  265 	pop	af
   4288 F1            [10]  266 	pop	af
   4289 33            [ 6]  267 	inc	sp
   428A                     268 00103$:
                            269 ;src/game/depot.c:42: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4)+1, 30+40*(i%4)+1);
   428A DD 7E F7      [19]  270 	ld	a,-9 (ix)
   428D C6 1F         [ 7]  271 	add	a, #0x1F
   428F DD 77 F8      [19]  272 	ld	-8 (ix),a
   4292 DD 6E FC      [19]  273 	ld	l,-4 (ix)
   4295 DD 66 FD      [19]  274 	ld	h,-3 (ix)
   4298 E5            [11]  275 	push	hl
   4299 DD 6E FA      [19]  276 	ld	l,-6 (ix)
   429C DD 66 FB      [19]  277 	ld	h,-5 (ix)
   429F E5            [11]  278 	push	hl
   42A0 CD 39 6B      [17]  279 	call	_floorf
   42A3 F1            [10]  280 	pop	af
   42A4 F1            [10]  281 	pop	af
   42A5 EB            [ 4]  282 	ex	de, hl
   42A6 E5            [11]  283 	push	hl
   42A7 D5            [11]  284 	push	de
   42A8 21 C8 41      [10]  285 	ld	hl,#0x41C8
   42AB E5            [11]  286 	push	hl
   42AC 21 00 00      [10]  287 	ld	hl,#0x0000
   42AF E5            [11]  288 	push	hl
   42B0 CD 9B 7D      [17]  289 	call	___fsmul
   42B3 F1            [10]  290 	pop	af
   42B4 F1            [10]  291 	pop	af
   42B5 F1            [10]  292 	pop	af
   42B6 F1            [10]  293 	pop	af
   42B7 4D            [ 4]  294 	ld	c,l
   42B8 44            [ 4]  295 	ld	b,h
   42B9 21 C0 40      [10]  296 	ld	hl,#0x40C0
   42BC E5            [11]  297 	push	hl
   42BD 21 00 00      [10]  298 	ld	hl,#0x0000
   42C0 E5            [11]  299 	push	hl
   42C1 D5            [11]  300 	push	de
   42C2 C5            [11]  301 	push	bc
   42C3 CD 89 81      [17]  302 	call	___fsadd
   42C6 F1            [10]  303 	pop	af
   42C7 F1            [10]  304 	pop	af
   42C8 F1            [10]  305 	pop	af
   42C9 F1            [10]  306 	pop	af
   42CA D5            [11]  307 	push	de
   42CB E5            [11]  308 	push	hl
   42CC CD F4 85      [17]  309 	call	___fs2uchar
   42CF F1            [10]  310 	pop	af
   42D0 F1            [10]  311 	pop	af
   42D1 55            [ 4]  312 	ld	d,l
   42D2 DD 7E F8      [19]  313 	ld	a,-8 (ix)
   42D5 F5            [11]  314 	push	af
   42D6 33            [ 6]  315 	inc	sp
   42D7 D5            [11]  316 	push	de
   42D8 33            [ 6]  317 	inc	sp
   42D9 21 00 C0      [10]  318 	ld	hl,#0xC000
   42DC E5            [11]  319 	push	hl
   42DD CD A9 6D      [17]  320 	call	_cpct_getScreenPtr
                            321 ;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   42E0 EB            [ 4]  322 	ex	de,hl
                            323 ;src/game/depot.c:44: if(i<locDelocked)
   42E1 21 9A 7D      [10]  324 	ld	hl,#_locDelocked
   42E4 DD 7E 04      [19]  325 	ld	a,4 (ix)
   42E7 96            [ 7]  326 	sub	a, (hl)
   42E8 30 0E         [12]  327 	jr	NC,00105$
                            328 ;src/game/depot.c:46: cpct_drawSprite(l141P, p_video, 20, 20);
   42EA 01 1D 66      [10]  329 	ld	bc,#_l141P
   42ED 21 14 14      [10]  330 	ld	hl,#0x1414
   42F0 E5            [11]  331 	push	hl
   42F1 D5            [11]  332 	push	de
   42F2 C5            [11]  333 	push	bc
   42F3 CD AC 69      [17]  334 	call	_cpct_drawSprite
   42F6 18 0C         [12]  335 	jr	00107$
   42F8                     336 00105$:
                            337 ;src/game/depot.c:50: cpct_drawSprite(lock, p_video, 20, 20);
   42F8 01 8D 64      [10]  338 	ld	bc,#_lock
   42FB 21 14 14      [10]  339 	ld	hl,#0x1414
   42FE E5            [11]  340 	push	hl
   42FF D5            [11]  341 	push	de
   4300 C5            [11]  342 	push	bc
   4301 CD AC 69      [17]  343 	call	_cpct_drawSprite
   4304                     344 00107$:
   4304 DD F9         [10]  345 	ld	sp, ix
   4306 DD E1         [14]  346 	pop	ix
   4308 C9            [10]  347 	ret
                            348 ;src/game/depot.c:55: void buyLocomotive()
                            349 ;	---------------------------------
                            350 ; Function buyLocomotive
                            351 ; ---------------------------------
   4309                     352 _buyLocomotive::
   4309 3B            [ 6]  353 	dec	sp
                            354 ;src/game/depot.c:57: u8 exit=0;
   430A FD 21 00 00   [14]  355 	ld	iy,#0
   430E FD 39         [15]  356 	add	iy,sp
   4310 FD 36 00 00   [19]  357 	ld	0 (iy),#0x00
                            358 ;src/game/depot.c:59: u8 iSelect=0;
   4314 06 00         [ 7]  359 	ld	b,#0x00
                            360 ;src/game/depot.c:61: putM0();
   4316 C5            [11]  361 	push	bc
   4317 CD 31 57      [17]  362 	call	_putM0
   431A 21 09 09      [10]  363 	ld	hl,#0x0909
   431D E5            [11]  364 	push	hl
   431E CD 59 6C      [17]  365 	call	_cpct_px2byteM0
   4321 65            [ 4]  366 	ld	h,l
   4322 11 00 40      [10]  367 	ld	de,#0x4000
   4325 D5            [11]  368 	push	de
   4326 E5            [11]  369 	push	hl
   4327 33            [ 6]  370 	inc	sp
   4328 21 00 C0      [10]  371 	ld	hl,#0xC000
   432B E5            [11]  372 	push	hl
   432C CD 75 6C      [17]  373 	call	_cpct_memset
   432F C1            [10]  374 	pop	bc
                            375 ;src/game/depot.c:65: for(i=0; i<12; i++)
   4330 11 00 00      [10]  376 	ld	de,#0x0000
   4333                     377 00118$:
                            378 ;src/game/depot.c:66: drawLocomotive(i, iSelect);
   4333 4B            [ 4]  379 	ld	c,e
   4334 C5            [11]  380 	push	bc
   4335 D5            [11]  381 	push	de
   4336 AF            [ 4]  382 	xor	a, a
   4337 F5            [11]  383 	push	af
   4338 33            [ 6]  384 	inc	sp
   4339 79            [ 4]  385 	ld	a,c
   433A F5            [11]  386 	push	af
   433B 33            [ 6]  387 	inc	sp
   433C CD B9 41      [17]  388 	call	_drawLocomotive
   433F F1            [10]  389 	pop	af
   4340 D1            [10]  390 	pop	de
   4341 C1            [10]  391 	pop	bc
                            392 ;src/game/depot.c:65: for(i=0; i<12; i++)
   4342 13            [ 6]  393 	inc	de
   4343 7B            [ 4]  394 	ld	a,e
   4344 D6 0C         [ 7]  395 	sub	a, #0x0C
   4346 7A            [ 4]  396 	ld	a,d
   4347 17            [ 4]  397 	rla
   4348 3F            [ 4]  398 	ccf
   4349 1F            [ 4]  399 	rra
   434A DE 80         [ 7]  400 	sbc	a, #0x80
   434C 38 E5         [12]  401 	jr	C,00118$
                            402 ;src/game/depot.c:68: do
   434E                     403 00115$:
                            404 ;src/game/depot.c:70: cpct_scanKeyboard(); 
   434E C5            [11]  405 	push	bc
   434F CD C9 6D      [17]  406 	call	_cpct_scanKeyboard
   4352 21 00 01      [10]  407 	ld	hl,#0x0100
   4355 CD 54 69      [17]  408 	call	_cpct_isKeyPressed
   4358 7D            [ 4]  409 	ld	a,l
   4359 C1            [10]  410 	pop	bc
   435A B7            [ 4]  411 	or	a, a
   435B 28 23         [12]  412 	jr	Z,00111$
                            413 ;src/game/depot.c:74: if (iSelect>0)
   435D 78            [ 4]  414 	ld	a,b
   435E B7            [ 4]  415 	or	a, a
   435F 28 15         [12]  416 	jr	Z,00131$
                            417 ;src/game/depot.c:76: iSelect--;
   4361 05            [ 4]  418 	dec	b
                            419 ;src/game/depot.c:77: drawLocomotive(iSelect, iSelect);
   4362 C5            [11]  420 	push	bc
   4363 C5            [11]  421 	push	bc
   4364 33            [ 6]  422 	inc	sp
   4365 C5            [11]  423 	push	bc
   4366 33            [ 6]  424 	inc	sp
   4367 CD B9 41      [17]  425 	call	_drawLocomotive
   436A F1            [10]  426 	pop	af
   436B C1            [10]  427 	pop	bc
                            428 ;src/game/depot.c:78: drawLocomotive(iSelect+1, iSelect);
   436C 50            [ 4]  429 	ld	d,b
   436D 14            [ 4]  430 	inc	d
   436E C5            [11]  431 	push	bc
   436F 4A            [ 4]  432 	ld	c, d
   4370 C5            [11]  433 	push	bc
   4371 CD B9 41      [17]  434 	call	_drawLocomotive
   4374 F1            [10]  435 	pop	af
   4375 C1            [10]  436 	pop	bc
                            437 ;src/game/depot.c:80: for(i=0; i<14000; i++) {} // wait loop
   4376                     438 00131$:
   4376 11 B0 36      [10]  439 	ld	de,#0x36B0
   4379                     440 00122$:
   4379 1B            [ 6]  441 	dec	de
   437A 7A            [ 4]  442 	ld	a,d
   437B B3            [ 4]  443 	or	a,e
   437C 20 FB         [12]  444 	jr	NZ,00122$
   437E 18 2E         [12]  445 	jr	00112$
   4380                     446 00111$:
                            447 ;src/game/depot.c:82: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4380 C5            [11]  448 	push	bc
   4381 21 00 04      [10]  449 	ld	hl,#0x0400
   4384 CD 54 69      [17]  450 	call	_cpct_isKeyPressed
   4387 7D            [ 4]  451 	ld	a,l
   4388 C1            [10]  452 	pop	bc
   4389 B7            [ 4]  453 	or	a, a
   438A 28 22         [12]  454 	jr	Z,00112$
                            455 ;src/game/depot.c:84: if (iSelect<11)
   438C 78            [ 4]  456 	ld	a,b
   438D D6 0B         [ 7]  457 	sub	a, #0x0B
   438F 30 15         [12]  458 	jr	NC,00135$
                            459 ;src/game/depot.c:86: iSelect++;
   4391 04            [ 4]  460 	inc	b
                            461 ;src/game/depot.c:87: drawLocomotive(iSelect, iSelect);
   4392 C5            [11]  462 	push	bc
   4393 C5            [11]  463 	push	bc
   4394 33            [ 6]  464 	inc	sp
   4395 C5            [11]  465 	push	bc
   4396 33            [ 6]  466 	inc	sp
   4397 CD B9 41      [17]  467 	call	_drawLocomotive
   439A F1            [10]  468 	pop	af
   439B C1            [10]  469 	pop	bc
                            470 ;src/game/depot.c:88: drawLocomotive(iSelect-1, iSelect);
   439C 50            [ 4]  471 	ld	d,b
   439D 15            [ 4]  472 	dec	d
   439E C5            [11]  473 	push	bc
   439F 4A            [ 4]  474 	ld	c, d
   43A0 C5            [11]  475 	push	bc
   43A1 CD B9 41      [17]  476 	call	_drawLocomotive
   43A4 F1            [10]  477 	pop	af
   43A5 C1            [10]  478 	pop	bc
                            479 ;src/game/depot.c:90: for(i=0; i<14000; i++) {} // wait loop
   43A6                     480 00135$:
   43A6 11 B0 36      [10]  481 	ld	de,#0x36B0
   43A9                     482 00125$:
   43A9 1B            [ 6]  483 	dec	de
   43AA 7A            [ 4]  484 	ld	a,d
   43AB B3            [ 4]  485 	or	a,e
   43AC 20 FB         [12]  486 	jr	NZ,00125$
   43AE                     487 00112$:
                            488 ;src/game/depot.c:93: if ( cpct_isKeyPressed(Key_Esc) )
   43AE C5            [11]  489 	push	bc
   43AF 21 08 04      [10]  490 	ld	hl,#0x0408
   43B2 CD 54 69      [17]  491 	call	_cpct_isKeyPressed
   43B5 7D            [ 4]  492 	ld	a,l
   43B6 C1            [10]  493 	pop	bc
   43B7 B7            [ 4]  494 	or	a, a
   43B8 28 0A         [12]  495 	jr	Z,00116$
                            496 ;src/game/depot.c:94: exit=1;
   43BA FD 21 00 00   [14]  497 	ld	iy,#0
   43BE FD 39         [15]  498 	add	iy,sp
   43C0 FD 36 00 01   [19]  499 	ld	0 (iy),#0x01
   43C4                     500 00116$:
                            501 ;src/game/depot.c:96: while(!exit);
   43C4 FD 21 00 00   [14]  502 	ld	iy,#0
   43C8 FD 39         [15]  503 	add	iy,sp
   43CA FD 7E 00      [19]  504 	ld	a,0 (iy)
   43CD B7            [ 4]  505 	or	a, a
   43CE CA 4E 43      [10]  506 	jp	Z,00115$
                            507 ;src/game/depot.c:98: putM2();
   43D1 CD 58 57      [17]  508 	call	_putM2
   43D4 33            [ 6]  509 	inc	sp
   43D5 C9            [10]  510 	ret
                            511 	.area _CODE
                            512 	.area _INITIALIZER
                            513 	.area _CABS (ABS)
