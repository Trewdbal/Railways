                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Feb  7 18:25:47 2016
                              5 ;--------------------------------------------------------
                              6 	.module depot
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _drawWindow
                             13 	.globl _drawMenu
                             14 	.globl _putM2
                             15 	.globl _putM0
                             16 	.globl _floorf
                             17 	.globl _cpct_getScreenPtr
                             18 	.globl _cpct_drawSolidBox
                             19 	.globl _cpct_drawSprite
                             20 	.globl _cpct_px2byteM0
                             21 	.globl _cpct_isKeyPressed
                             22 	.globl _cpct_scanKeyboard
                             23 	.globl _cpct_memset
                             24 	.globl _railroadDepot
                             25 	.globl _drawLocomotive
                             26 	.globl _drawAllLocomotives
                             27 	.globl _confirmBuyLocomotive
                             28 	.globl _buyLocomotive
                             29 ;--------------------------------------------------------
                             30 ; special function registers
                             31 ;--------------------------------------------------------
                             32 ;--------------------------------------------------------
                             33 ; ram data
                             34 ;--------------------------------------------------------
                             35 	.area _DATA
                             36 ;--------------------------------------------------------
                             37 ; ram data
                             38 ;--------------------------------------------------------
                             39 	.area _INITIALIZED
                             40 ;--------------------------------------------------------
                             41 ; absolute external ram data
                             42 ;--------------------------------------------------------
                             43 	.area _DABS (ABS)
                             44 ;--------------------------------------------------------
                             45 ; global & static initialisations
                             46 ;--------------------------------------------------------
                             47 	.area _HOME
                             48 	.area _GSINIT
                             49 	.area _GSFINAL
                             50 	.area _GSINIT
                             51 ;--------------------------------------------------------
                             52 ; Home
                             53 ;--------------------------------------------------------
                             54 	.area _HOME
                             55 	.area _HOME
                             56 ;--------------------------------------------------------
                             57 ; code
                             58 ;--------------------------------------------------------
                             59 	.area _CODE
                             60 ;src/game/depot.c:3: void railroadDepot()
                             61 ;	---------------------------------
                             62 ; Function railroadDepot
                             63 ; ---------------------------------
   4130                      64 _railroadDepot::
   4130 DD E5         [15]   65 	push	ix
   4132 DD 21 00 00   [14]   66 	ld	ix,#0
   4136 DD 39         [15]   67 	add	ix,sp
   4138 F5            [11]   68 	push	af
   4139 F5            [11]   69 	push	af
   413A 3B            [ 6]   70 	dec	sp
                             71 ;src/game/depot.c:5: u8 exit=0;
   413B DD 36 FF 00   [19]   72 	ld	-1 (ix),#0x00
                             73 ;src/game/depot.c:7: cpct_clearScreen(0b11111111);
   413F 21 00 40      [10]   74 	ld	hl,#0x4000
   4142 E5            [11]   75 	push	hl
   4143 3E FF         [ 7]   76 	ld	a,#0xFF
   4145 F5            [11]   77 	push	af
   4146 33            [ 6]   78 	inc	sp
   4147 26 C0         [ 7]   79 	ld	h, #0xC0
   4149 E5            [11]   80 	push	hl
   414A CD D6 73      [17]   81 	call	_cpct_memset
                             82 ;src/game/depot.c:9: do
   414D                      83 00108$:
                             84 ;src/game/depot.c:11: cpct_scanKeyboard(); 
   414D CD 2A 75      [17]   85 	call	_cpct_scanKeyboard
                             86 ;src/game/depot.c:13: if ( cpct_isKeyPressed(Key_Esc) )
   4150 21 08 04      [10]   87 	ld	hl,#0x0408
   4153 CD B5 70      [17]   88 	call	_cpct_isKeyPressed
   4156 7D            [ 4]   89 	ld	a,l
   4157 B7            [ 4]   90 	or	a, a
   4158 28 06         [12]   91 	jr	Z,00106$
                             92 ;src/game/depot.c:14: exit=1;
   415A DD 36 FF 01   [19]   93 	ld	-1 (ix),#0x01
   415E 18 2F         [12]   94 	jr	00109$
   4160                      95 00106$:
                             96 ;src/game/depot.c:15: else if(cpct_isKeyPressed(Key_Return) )
   4160 21 02 04      [10]   97 	ld	hl,#0x0402
   4163 CD B5 70      [17]   98 	call	_cpct_isKeyPressed
   4166 7D            [ 4]   99 	ld	a,l
   4167 B7            [ 4]  100 	or	a, a
   4168 28 25         [12]  101 	jr	Z,00109$
                            102 ;src/game/depot.c:17: const char *txtMenuChoice[] = { 
   416A 21 00 00      [10]  103 	ld	hl,#0x0000
   416D 39            [11]  104 	add	hl,sp
   416E 5D            [ 4]  105 	ld	e,l
   416F 54            [ 4]  106 	ld	d,h
   4170 36 9A         [10]  107 	ld	(hl),#<(___str_0)
   4172 23            [ 6]  108 	inc	hl
   4173 36 41         [10]  109 	ld	(hl),#>(___str_0)
   4175 6B            [ 4]  110 	ld	l, e
   4176 62            [ 4]  111 	ld	h, d
   4177 23            [ 6]  112 	inc	hl
   4178 23            [ 6]  113 	inc	hl
   4179 36 AB         [10]  114 	ld	(hl),#<(___str_1)
   417B 23            [ 6]  115 	inc	hl
   417C 36 41         [10]  116 	ld	(hl),#>(___str_1)
                            117 ;src/game/depot.c:21: u8 menuChoice = drawMenu(txtMenuChoice,2);
   417E 3E 02         [ 7]  118 	ld	a,#0x02
   4180 F5            [11]  119 	push	af
   4181 33            [ 6]  120 	inc	sp
   4182 D5            [11]  121 	push	de
   4183 CD 0F 5E      [17]  122 	call	_drawMenu
   4186 F1            [10]  123 	pop	af
   4187 33            [ 6]  124 	inc	sp
   4188 7D            [ 4]  125 	ld	a,l
                            126 ;src/game/depot.c:23: if(menuChoice == 0)
   4189 B7            [ 4]  127 	or	a, a
   418A 20 03         [12]  128 	jr	NZ,00109$
                            129 ;src/game/depot.c:24: buyLocomotive();
   418C CD D5 45      [17]  130 	call	_buyLocomotive
   418F                     131 00109$:
                            132 ;src/game/depot.c:28: while(!exit);
   418F DD 7E FF      [19]  133 	ld	a,-1 (ix)
   4192 B7            [ 4]  134 	or	a, a
   4193 28 B8         [12]  135 	jr	Z,00108$
   4195 DD F9         [10]  136 	ld	sp, ix
   4197 DD E1         [14]  137 	pop	ix
   4199 C9            [10]  138 	ret
   419A                     139 ___str_0:
   419A 42 75 79 20 61 20   140 	.ascii "Buy a locomotive"
        6C 6F 63 6F 6D 6F
        74 69 76 65
   41AA 00                  141 	.db 0x00
   41AB                     142 ___str_1:
   41AB 42 61 63 6B 20 74   143 	.ascii "Back to depot"
        6F 20 64 65 70 6F
        74
   41B8 00                  144 	.db 0x00
                            145 ;src/game/depot.c:31: void drawLocomotive(u8 i, u8 iSelect)
                            146 ;	---------------------------------
                            147 ; Function drawLocomotive
                            148 ; ---------------------------------
   41B9                     149 _drawLocomotive::
   41B9 DD E5         [15]  150 	push	ix
   41BB DD 21 00 00   [14]  151 	ld	ix,#0
   41BF DD 39         [15]  152 	add	ix,sp
   41C1 21 F7 FF      [10]  153 	ld	hl,#-9
   41C4 39            [11]  154 	add	hl,sp
   41C5 F9            [ 6]  155 	ld	sp,hl
                            156 ;src/game/depot.c:34: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4), 30+40*(i%4));
   41C6 DD 7E 04      [19]  157 	ld	a,4 (ix)
   41C9 E6 03         [ 7]  158 	and	a, #0x03
   41CB 4F            [ 4]  159 	ld	c,a
   41CC 87            [ 4]  160 	add	a, a
   41CD 87            [ 4]  161 	add	a, a
   41CE 81            [ 4]  162 	add	a, c
   41CF 87            [ 4]  163 	add	a, a
   41D0 87            [ 4]  164 	add	a, a
   41D1 87            [ 4]  165 	add	a, a
   41D2 DD 77 F8      [19]  166 	ld	-8 (ix), a
   41D5 C6 1E         [ 7]  167 	add	a, #0x1E
   41D7 DD 77 F9      [19]  168 	ld	-7 (ix),a
   41DA DD 7E 04      [19]  169 	ld	a,4 (ix)
   41DD 0F            [ 4]  170 	rrca
   41DE 0F            [ 4]  171 	rrca
   41DF E6 3F         [ 7]  172 	and	a,#0x3F
   41E1 DD 77 F7      [19]  173 	ld	-9 (ix), a
   41E4 F5            [11]  174 	push	af
   41E5 33            [ 6]  175 	inc	sp
   41E6 CD 3F 8D      [17]  176 	call	___uchar2fs
   41E9 33            [ 6]  177 	inc	sp
   41EA DD 72 FF      [19]  178 	ld	-1 (ix),d
   41ED DD 73 FE      [19]  179 	ld	-2 (ix),e
   41F0 DD 74 FD      [19]  180 	ld	-3 (ix),h
   41F3 DD 75 FC      [19]  181 	ld	-4 (ix),l
   41F6 DD 6E FE      [19]  182 	ld	l,-2 (ix)
   41F9 DD 66 FF      [19]  183 	ld	h,-1 (ix)
   41FC E5            [11]  184 	push	hl
   41FD DD 6E FC      [19]  185 	ld	l,-4 (ix)
   4200 DD 66 FD      [19]  186 	ld	h,-3 (ix)
   4203 E5            [11]  187 	push	hl
   4204 CD 9A 72      [17]  188 	call	_floorf
   4207 F1            [10]  189 	pop	af
   4208 F1            [10]  190 	pop	af
   4209 EB            [ 4]  191 	ex	de, hl
   420A E5            [11]  192 	push	hl
   420B D5            [11]  193 	push	de
   420C 21 C8 41      [10]  194 	ld	hl,#0x41C8
   420F E5            [11]  195 	push	hl
   4210 21 00 00      [10]  196 	ld	hl,#0x0000
   4213 E5            [11]  197 	push	hl
   4214 CD FC 84      [17]  198 	call	___fsmul
   4217 F1            [10]  199 	pop	af
   4218 F1            [10]  200 	pop	af
   4219 F1            [10]  201 	pop	af
   421A F1            [10]  202 	pop	af
   421B 4D            [ 4]  203 	ld	c,l
   421C 44            [ 4]  204 	ld	b,h
   421D 21 A0 40      [10]  205 	ld	hl,#0x40A0
   4220 E5            [11]  206 	push	hl
   4221 21 00 00      [10]  207 	ld	hl,#0x0000
   4224 E5            [11]  208 	push	hl
   4225 D5            [11]  209 	push	de
   4226 C5            [11]  210 	push	bc
   4227 CD EA 88      [17]  211 	call	___fsadd
   422A F1            [10]  212 	pop	af
   422B F1            [10]  213 	pop	af
   422C F1            [10]  214 	pop	af
   422D F1            [10]  215 	pop	af
   422E D5            [11]  216 	push	de
   422F E5            [11]  217 	push	hl
   4230 CD 55 8D      [17]  218 	call	___fs2uchar
   4233 F1            [10]  219 	pop	af
   4234 F1            [10]  220 	pop	af
   4235 55            [ 4]  221 	ld	d,l
   4236 DD 7E F9      [19]  222 	ld	a,-7 (ix)
   4239 F5            [11]  223 	push	af
   423A 33            [ 6]  224 	inc	sp
   423B D5            [11]  225 	push	de
   423C 33            [ 6]  226 	inc	sp
   423D 21 00 C0      [10]  227 	ld	hl,#0xC000
   4240 E5            [11]  228 	push	hl
   4241 CD 0A 75      [17]  229 	call	_cpct_getScreenPtr
                            230 ;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4244 DD 75 FA      [19]  231 	ld	-6 (ix),l
   4247 DD 74 FB      [19]  232 	ld	-5 (ix),h
                            233 ;src/game/depot.c:37: if(i==iSelect)
   424A DD 7E 04      [19]  234 	ld	a,4 (ix)
   424D DD 96 05      [19]  235 	sub	a, 5 (ix)
   4250 20 1D         [12]  236 	jr	NZ,00102$
                            237 ;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4252 21 05 05      [10]  238 	ld	hl,#0x0505
   4255 E5            [11]  239 	push	hl
   4256 CD BA 73      [17]  240 	call	_cpct_px2byteM0
   4259 55            [ 4]  241 	ld	d,l
   425A 21 16 16      [10]  242 	ld	hl,#0x1616
   425D E5            [11]  243 	push	hl
   425E D5            [11]  244 	push	de
   425F 33            [ 6]  245 	inc	sp
   4260 DD 6E FA      [19]  246 	ld	l,-6 (ix)
   4263 DD 66 FB      [19]  247 	ld	h,-5 (ix)
   4266 E5            [11]  248 	push	hl
   4267 CD 51 74      [17]  249 	call	_cpct_drawSolidBox
   426A F1            [10]  250 	pop	af
   426B F1            [10]  251 	pop	af
   426C 33            [ 6]  252 	inc	sp
   426D 18 1B         [12]  253 	jr	00103$
   426F                     254 00102$:
                            255 ;src/game/depot.c:40: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
   426F 21 0B 0B      [10]  256 	ld	hl,#0x0B0B
   4272 E5            [11]  257 	push	hl
   4273 CD BA 73      [17]  258 	call	_cpct_px2byteM0
   4276 55            [ 4]  259 	ld	d,l
   4277 21 16 16      [10]  260 	ld	hl,#0x1616
   427A E5            [11]  261 	push	hl
   427B D5            [11]  262 	push	de
   427C 33            [ 6]  263 	inc	sp
   427D DD 6E FA      [19]  264 	ld	l,-6 (ix)
   4280 DD 66 FB      [19]  265 	ld	h,-5 (ix)
   4283 E5            [11]  266 	push	hl
   4284 CD 51 74      [17]  267 	call	_cpct_drawSolidBox
   4287 F1            [10]  268 	pop	af
   4288 F1            [10]  269 	pop	af
   4289 33            [ 6]  270 	inc	sp
   428A                     271 00103$:
                            272 ;src/game/depot.c:42: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4)+1, 30+40*(i%4)+1);
   428A DD 7E F8      [19]  273 	ld	a,-8 (ix)
   428D C6 1F         [ 7]  274 	add	a, #0x1F
   428F DD 77 FA      [19]  275 	ld	-6 (ix),a
   4292 DD 6E FE      [19]  276 	ld	l,-2 (ix)
   4295 DD 66 FF      [19]  277 	ld	h,-1 (ix)
   4298 E5            [11]  278 	push	hl
   4299 DD 6E FC      [19]  279 	ld	l,-4 (ix)
   429C DD 66 FD      [19]  280 	ld	h,-3 (ix)
   429F E5            [11]  281 	push	hl
   42A0 CD 9A 72      [17]  282 	call	_floorf
   42A3 F1            [10]  283 	pop	af
   42A4 F1            [10]  284 	pop	af
   42A5 EB            [ 4]  285 	ex	de, hl
   42A6 E5            [11]  286 	push	hl
   42A7 D5            [11]  287 	push	de
   42A8 21 C8 41      [10]  288 	ld	hl,#0x41C8
   42AB E5            [11]  289 	push	hl
   42AC 21 00 00      [10]  290 	ld	hl,#0x0000
   42AF E5            [11]  291 	push	hl
   42B0 CD FC 84      [17]  292 	call	___fsmul
   42B3 F1            [10]  293 	pop	af
   42B4 F1            [10]  294 	pop	af
   42B5 F1            [10]  295 	pop	af
   42B6 F1            [10]  296 	pop	af
   42B7 4D            [ 4]  297 	ld	c,l
   42B8 44            [ 4]  298 	ld	b,h
   42B9 21 C0 40      [10]  299 	ld	hl,#0x40C0
   42BC E5            [11]  300 	push	hl
   42BD 21 00 00      [10]  301 	ld	hl,#0x0000
   42C0 E5            [11]  302 	push	hl
   42C1 D5            [11]  303 	push	de
   42C2 C5            [11]  304 	push	bc
   42C3 CD EA 88      [17]  305 	call	___fsadd
   42C6 F1            [10]  306 	pop	af
   42C7 F1            [10]  307 	pop	af
   42C8 F1            [10]  308 	pop	af
   42C9 F1            [10]  309 	pop	af
   42CA D5            [11]  310 	push	de
   42CB E5            [11]  311 	push	hl
   42CC CD 55 8D      [17]  312 	call	___fs2uchar
   42CF F1            [10]  313 	pop	af
   42D0 F1            [10]  314 	pop	af
   42D1 55            [ 4]  315 	ld	d,l
   42D2 DD 7E FA      [19]  316 	ld	a,-6 (ix)
   42D5 F5            [11]  317 	push	af
   42D6 33            [ 6]  318 	inc	sp
   42D7 D5            [11]  319 	push	de
   42D8 33            [ 6]  320 	inc	sp
   42D9 21 00 C0      [10]  321 	ld	hl,#0xC000
   42DC E5            [11]  322 	push	hl
   42DD CD 0A 75      [17]  323 	call	_cpct_getScreenPtr
                            324 ;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   42E0 4D            [ 4]  325 	ld	c, l
   42E1 44            [ 4]  326 	ld	b, h
                            327 ;src/game/depot.c:44: if(i<locDelocked)
   42E2 21 FB 84      [10]  328 	ld	hl,#_locDelocked
   42E5 DD 7E 04      [19]  329 	ld	a,4 (ix)
   42E8 96            [ 7]  330 	sub	a, (hl)
   42E9 30 52         [12]  331 	jr	NC,00110$
                            332 ;src/game/depot.c:46: switch(i)
   42EB 3E 03         [ 7]  333 	ld	a,#0x03
   42ED DD 96 04      [19]  334 	sub	a, 4 (ix)
   42F0 38 57         [12]  335 	jr	C,00112$
   42F2 DD 5E 04      [19]  336 	ld	e,4 (ix)
   42F5 16 00         [ 7]  337 	ld	d,#0x00
   42F7 21 FD 42      [10]  338 	ld	hl,#00128$
   42FA 19            [11]  339 	add	hl,de
   42FB 19            [11]  340 	add	hl,de
                            341 ;src/game/depot.c:48: case 0:
   42FC E9            [ 4]  342 	jp	(hl)
   42FD                     343 00128$:
   42FD 18 06         [12]  344 	jr	00104$
   42FF 18 12         [12]  345 	jr	00105$
   4301 18 1E         [12]  346 	jr	00106$
   4303 18 2A         [12]  347 	jr	00107$
   4305                     348 00104$:
                            349 ;src/game/depot.c:49: cpct_drawSprite(l130B, p_video, 20, 20);
   4305 11 CE 68      [10]  350 	ld	de,#_l130B+0
   4308 21 14 14      [10]  351 	ld	hl,#0x1414
   430B E5            [11]  352 	push	hl
   430C C5            [11]  353 	push	bc
   430D D5            [11]  354 	push	de
   430E CD 0D 71      [17]  355 	call	_cpct_drawSprite
                            356 ;src/game/depot.c:50: break;
   4311 18 36         [12]  357 	jr	00112$
                            358 ;src/game/depot.c:51: case 1:
   4313                     359 00105$:
                            360 ;src/game/depot.c:52: cpct_drawSprite(l141TA, p_video, 20, 20);
   4313 11 5E 6A      [10]  361 	ld	de,#_l141TA+0
   4316 21 14 14      [10]  362 	ld	hl,#0x1414
   4319 E5            [11]  363 	push	hl
   431A C5            [11]  364 	push	bc
   431B D5            [11]  365 	push	de
   431C CD 0D 71      [17]  366 	call	_cpct_drawSprite
                            367 ;src/game/depot.c:53: break;
   431F 18 28         [12]  368 	jr	00112$
                            369 ;src/game/depot.c:54: case 2:
   4321                     370 00106$:
                            371 ;src/game/depot.c:55: cpct_drawSprite(l142AT, p_video, 20, 20);
   4321 11 EE 6B      [10]  372 	ld	de,#_l142AT+0
   4324 21 14 14      [10]  373 	ld	hl,#0x1414
   4327 E5            [11]  374 	push	hl
   4328 C5            [11]  375 	push	bc
   4329 D5            [11]  376 	push	de
   432A CD 0D 71      [17]  377 	call	_cpct_drawSprite
                            378 ;src/game/depot.c:56: break;
   432D 18 1A         [12]  379 	jr	00112$
                            380 ;src/game/depot.c:57: case 3:
   432F                     381 00107$:
                            382 ;src/game/depot.c:58: cpct_drawSprite(l141P, p_video, 20, 20);
   432F 11 7E 6D      [10]  383 	ld	de,#_l141P+0
   4332 21 14 14      [10]  384 	ld	hl,#0x1414
   4335 E5            [11]  385 	push	hl
   4336 C5            [11]  386 	push	bc
   4337 D5            [11]  387 	push	de
   4338 CD 0D 71      [17]  388 	call	_cpct_drawSprite
                            389 ;src/game/depot.c:60: }
   433B 18 0C         [12]  390 	jr	00112$
   433D                     391 00110$:
                            392 ;src/game/depot.c:66: cpct_drawSprite(lock, p_video, 20, 20);
   433D 11 3E 67      [10]  393 	ld	de,#_lock
   4340 21 14 14      [10]  394 	ld	hl,#0x1414
   4343 E5            [11]  395 	push	hl
   4344 C5            [11]  396 	push	bc
   4345 D5            [11]  397 	push	de
   4346 CD 0D 71      [17]  398 	call	_cpct_drawSprite
   4349                     399 00112$:
   4349 DD F9         [10]  400 	ld	sp, ix
   434B DD E1         [14]  401 	pop	ix
   434D C9            [10]  402 	ret
                            403 ;src/game/depot.c:70: void drawAllLocomotives(u8 iSelect)
                            404 ;	---------------------------------
                            405 ; Function drawAllLocomotives
                            406 ; ---------------------------------
   434E                     407 _drawAllLocomotives::
                            408 ;src/game/depot.c:74: putM0();
   434E CD E2 59      [17]  409 	call	_putM0
                            410 ;src/game/depot.c:76: cpct_clearScreen(cpct_px2byteM0(9,9));
   4351 21 09 09      [10]  411 	ld	hl,#0x0909
   4354 E5            [11]  412 	push	hl
   4355 CD BA 73      [17]  413 	call	_cpct_px2byteM0
   4358 65            [ 4]  414 	ld	h,l
   4359 01 00 40      [10]  415 	ld	bc,#0x4000
   435C C5            [11]  416 	push	bc
   435D E5            [11]  417 	push	hl
   435E 33            [ 6]  418 	inc	sp
   435F 21 00 C0      [10]  419 	ld	hl,#0xC000
   4362 E5            [11]  420 	push	hl
   4363 CD D6 73      [17]  421 	call	_cpct_memset
                            422 ;src/game/depot.c:77: for(i=0; i<12; i++)
   4366 16 00         [ 7]  423 	ld	d,#0x00
   4368                     424 00102$:
                            425 ;src/game/depot.c:78: drawLocomotive(i, iSelect);
   4368 D5            [11]  426 	push	de
   4369 21 04 00      [10]  427 	ld	hl, #4+0
   436C 39            [11]  428 	add	hl, sp
   436D 7E            [ 7]  429 	ld	a, (hl)
   436E F5            [11]  430 	push	af
   436F 33            [ 6]  431 	inc	sp
   4370 D5            [11]  432 	push	de
   4371 33            [ 6]  433 	inc	sp
   4372 CD B9 41      [17]  434 	call	_drawLocomotive
   4375 F1            [10]  435 	pop	af
   4376 D1            [10]  436 	pop	de
                            437 ;src/game/depot.c:77: for(i=0; i<12; i++)
   4377 14            [ 4]  438 	inc	d
   4378 7A            [ 4]  439 	ld	a,d
   4379 D6 0C         [ 7]  440 	sub	a, #0x0C
   437B 38 EB         [12]  441 	jr	C,00102$
   437D C9            [10]  442 	ret
                            443 ;src/game/depot.c:81: u8 confirmBuyLocomotive(u8 iSelect)
                            444 ;	---------------------------------
                            445 ; Function confirmBuyLocomotive
                            446 ; ---------------------------------
   437E                     447 _confirmBuyLocomotive::
   437E DD E5         [15]  448 	push	ix
   4380 DD 21 00 00   [14]  449 	ld	ix,#0
   4384 DD 39         [15]  450 	add	ix,sp
   4386 21 F4 FF      [10]  451 	ld	hl,#-12
   4389 39            [11]  452 	add	hl,sp
   438A F9            [ 6]  453 	ld	sp,hl
                            454 ;src/game/depot.c:85: putM2();
   438B CD 09 5A      [17]  455 	call	_putM2
                            456 ;src/game/depot.c:87: switch(iSelect)
   438E 3E 03         [ 7]  457 	ld	a,#0x03
   4390 DD 96 04      [19]  458 	sub	a, 4 (ix)
   4393 DA AA 44      [10]  459 	jp	C,00105$
   4396 DD 5E 04      [19]  460 	ld	e,4 (ix)
   4399 16 00         [ 7]  461 	ld	d,#0x00
   439B 21 A2 43      [10]  462 	ld	hl,#00112$
   439E 19            [11]  463 	add	hl,de
   439F 19            [11]  464 	add	hl,de
   43A0 19            [11]  465 	add	hl,de
   43A1 E9            [ 4]  466 	jp	(hl)
   43A2                     467 00112$:
   43A2 C3 AE 43      [10]  468 	jp	00101$
   43A5 C3 EE 43      [10]  469 	jp	00102$
   43A8 C3 2E 44      [10]  470 	jp	00103$
   43AB C3 6D 44      [10]  471 	jp	00104$
                            472 ;src/game/depot.c:89: case 0:
   43AE                     473 00101$:
                            474 ;src/game/depot.c:90: txtWindowLocomotive[0] = "130 B";
   43AE 21 00 00      [10]  475 	ld	hl,#0x0000
   43B1 39            [11]  476 	add	hl,sp
   43B2 5D            [ 4]  477 	ld	e,l
   43B3 54            [ 4]  478 	ld	d,h
   43B4 36 BC         [10]  479 	ld	(hl),#<(___str_2)
   43B6 23            [ 6]  480 	inc	hl
   43B7 36 44         [10]  481 	ld	(hl),#>(___str_2)
                            482 ;src/game/depot.c:91: txtWindowLocomotive[1] = "";
   43B9 6B            [ 4]  483 	ld	l, e
   43BA 62            [ 4]  484 	ld	h, d
   43BB 23            [ 6]  485 	inc	hl
   43BC 23            [ 6]  486 	inc	hl
   43BD 01 C2 44      [10]  487 	ld	bc,#___str_3+0
   43C0 71            [ 7]  488 	ld	(hl),c
   43C1 23            [ 6]  489 	inc	hl
   43C2 70            [ 7]  490 	ld	(hl),b
                            491 ;src/game/depot.c:92: txtWindowLocomotive[2] = "Propulsion: steam";
   43C3 21 04 00      [10]  492 	ld	hl,#0x0004
   43C6 19            [11]  493 	add	hl,de
   43C7 01 C3 44      [10]  494 	ld	bc,#___str_4+0
   43CA 71            [ 7]  495 	ld	(hl),c
   43CB 23            [ 6]  496 	inc	hl
   43CC 70            [ 7]  497 	ld	(hl),b
                            498 ;src/game/depot.c:93: txtWindowLocomotive[3] = "Entry of service: 1909";
   43CD 21 06 00      [10]  499 	ld	hl,#0x0006
   43D0 19            [11]  500 	add	hl,de
   43D1 01 D5 44      [10]  501 	ld	bc,#___str_5+0
   43D4 71            [ 7]  502 	ld	(hl),c
   43D5 23            [ 6]  503 	inc	hl
   43D6 70            [ 7]  504 	ld	(hl),b
                            505 ;src/game/depot.c:94: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   43D7 21 08 00      [10]  506 	ld	hl,#0x0008
   43DA 19            [11]  507 	add	hl,de
   43DB 01 EC 44      [10]  508 	ld	bc,#___str_6+0
   43DE 71            [ 7]  509 	ld	(hl),c
   43DF 23            [ 6]  510 	inc	hl
   43E0 70            [ 7]  511 	ld	(hl),b
                            512 ;src/game/depot.c:95: txtWindowLocomotive[5] = "Price: 1000$";
   43E1 21 0A 00      [10]  513 	ld	hl,#0x000A
   43E4 19            [11]  514 	add	hl,de
   43E5 11 03 45      [10]  515 	ld	de,#___str_7+0
   43E8 73            [ 7]  516 	ld	(hl),e
   43E9 23            [ 6]  517 	inc	hl
   43EA 72            [ 7]  518 	ld	(hl),d
                            519 ;src/game/depot.c:96: break;
   43EB C3 AA 44      [10]  520 	jp	00105$
                            521 ;src/game/depot.c:97: case 1:
   43EE                     522 00102$:
                            523 ;src/game/depot.c:98: txtWindowLocomotive[0] = "141 TA";
   43EE 21 00 00      [10]  524 	ld	hl,#0x0000
   43F1 39            [11]  525 	add	hl,sp
   43F2 5D            [ 4]  526 	ld	e,l
   43F3 54            [ 4]  527 	ld	d,h
   43F4 36 10         [10]  528 	ld	(hl),#<(___str_8)
   43F6 23            [ 6]  529 	inc	hl
   43F7 36 45         [10]  530 	ld	(hl),#>(___str_8)
                            531 ;src/game/depot.c:99: txtWindowLocomotive[1] = "";
   43F9 6B            [ 4]  532 	ld	l, e
   43FA 62            [ 4]  533 	ld	h, d
   43FB 23            [ 6]  534 	inc	hl
   43FC 23            [ 6]  535 	inc	hl
   43FD 01 C2 44      [10]  536 	ld	bc,#___str_3+0
   4400 71            [ 7]  537 	ld	(hl),c
   4401 23            [ 6]  538 	inc	hl
   4402 70            [ 7]  539 	ld	(hl),b
                            540 ;src/game/depot.c:100: txtWindowLocomotive[2] = "Propulsion: steam";
   4403 21 04 00      [10]  541 	ld	hl,#0x0004
   4406 19            [11]  542 	add	hl,de
   4407 01 C3 44      [10]  543 	ld	bc,#___str_4+0
   440A 71            [ 7]  544 	ld	(hl),c
   440B 23            [ 6]  545 	inc	hl
   440C 70            [ 7]  546 	ld	(hl),b
                            547 ;src/game/depot.c:101: txtWindowLocomotive[3] = "Entry of service: 1911";
   440D 21 06 00      [10]  548 	ld	hl,#0x0006
   4410 19            [11]  549 	add	hl,de
   4411 01 17 45      [10]  550 	ld	bc,#___str_9+0
   4414 71            [ 7]  551 	ld	(hl),c
   4415 23            [ 6]  552 	inc	hl
   4416 70            [ 7]  553 	ld	(hl),b
                            554 ;src/game/depot.c:102: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   4417 21 08 00      [10]  555 	ld	hl,#0x0008
   441A 19            [11]  556 	add	hl,de
   441B 01 2E 45      [10]  557 	ld	bc,#___str_10+0
   441E 71            [ 7]  558 	ld	(hl),c
   441F 23            [ 6]  559 	inc	hl
   4420 70            [ 7]  560 	ld	(hl),b
                            561 ;src/game/depot.c:103: txtWindowLocomotive[5] = "Price: 900$";
   4421 21 0A 00      [10]  562 	ld	hl,#0x000A
   4424 19            [11]  563 	add	hl,de
   4425 11 45 45      [10]  564 	ld	de,#___str_11+0
   4428 73            [ 7]  565 	ld	(hl),e
   4429 23            [ 6]  566 	inc	hl
   442A 72            [ 7]  567 	ld	(hl),d
                            568 ;src/game/depot.c:104: break;
   442B C3 AA 44      [10]  569 	jp	00105$
                            570 ;src/game/depot.c:105: case 2:
   442E                     571 00103$:
                            572 ;src/game/depot.c:106: txtWindowLocomotive[0] = "142 AT";
   442E 21 00 00      [10]  573 	ld	hl,#0x0000
   4431 39            [11]  574 	add	hl,sp
   4432 5D            [ 4]  575 	ld	e,l
   4433 54            [ 4]  576 	ld	d,h
   4434 36 51         [10]  577 	ld	(hl),#<(___str_12)
   4436 23            [ 6]  578 	inc	hl
   4437 36 45         [10]  579 	ld	(hl),#>(___str_12)
                            580 ;src/game/depot.c:107: txtWindowLocomotive[1] = "";
   4439 6B            [ 4]  581 	ld	l, e
   443A 62            [ 4]  582 	ld	h, d
   443B 23            [ 6]  583 	inc	hl
   443C 23            [ 6]  584 	inc	hl
   443D 01 C2 44      [10]  585 	ld	bc,#___str_3+0
   4440 71            [ 7]  586 	ld	(hl),c
   4441 23            [ 6]  587 	inc	hl
   4442 70            [ 7]  588 	ld	(hl),b
                            589 ;src/game/depot.c:108: txtWindowLocomotive[2] = "Propulsion: steam";
   4443 21 04 00      [10]  590 	ld	hl,#0x0004
   4446 19            [11]  591 	add	hl,de
   4447 01 C3 44      [10]  592 	ld	bc,#___str_4+0
   444A 71            [ 7]  593 	ld	(hl),c
   444B 23            [ 6]  594 	inc	hl
   444C 70            [ 7]  595 	ld	(hl),b
                            596 ;src/game/depot.c:109: txtWindowLocomotive[3] = "Entry of service: 1926";
   444D 21 06 00      [10]  597 	ld	hl,#0x0006
   4450 19            [11]  598 	add	hl,de
   4451 01 58 45      [10]  599 	ld	bc,#___str_13+0
   4454 71            [ 7]  600 	ld	(hl),c
   4455 23            [ 6]  601 	inc	hl
   4456 70            [ 7]  602 	ld	(hl),b
                            603 ;src/game/depot.c:110: txtWindowLocomotive[4] = "Maximum speed: 95 km/h";
   4457 21 08 00      [10]  604 	ld	hl,#0x0008
   445A 19            [11]  605 	add	hl,de
   445B 01 6F 45      [10]  606 	ld	bc,#___str_14+0
   445E 71            [ 7]  607 	ld	(hl),c
   445F 23            [ 6]  608 	inc	hl
   4460 70            [ 7]  609 	ld	(hl),b
                            610 ;src/game/depot.c:111: txtWindowLocomotive[5] = "Price: 1500$";
   4461 21 0A 00      [10]  611 	ld	hl,#0x000A
   4464 19            [11]  612 	add	hl,de
   4465 11 86 45      [10]  613 	ld	de,#___str_15+0
   4468 73            [ 7]  614 	ld	(hl),e
   4469 23            [ 6]  615 	inc	hl
   446A 72            [ 7]  616 	ld	(hl),d
                            617 ;src/game/depot.c:112: break;
   446B 18 3D         [12]  618 	jr	00105$
                            619 ;src/game/depot.c:114: case 3:
   446D                     620 00104$:
                            621 ;src/game/depot.c:115: txtWindowLocomotive[0] = "141 P";
   446D 21 00 00      [10]  622 	ld	hl,#0x0000
   4470 39            [11]  623 	add	hl,sp
   4471 5D            [ 4]  624 	ld	e,l
   4472 54            [ 4]  625 	ld	d,h
   4473 36 93         [10]  626 	ld	(hl),#<(___str_16)
   4475 23            [ 6]  627 	inc	hl
   4476 36 45         [10]  628 	ld	(hl),#>(___str_16)
                            629 ;src/game/depot.c:116: txtWindowLocomotive[1] = "";
   4478 6B            [ 4]  630 	ld	l, e
   4479 62            [ 4]  631 	ld	h, d
   447A 23            [ 6]  632 	inc	hl
   447B 23            [ 6]  633 	inc	hl
   447C 01 C2 44      [10]  634 	ld	bc,#___str_3+0
   447F 71            [ 7]  635 	ld	(hl),c
   4480 23            [ 6]  636 	inc	hl
   4481 70            [ 7]  637 	ld	(hl),b
                            638 ;src/game/depot.c:117: txtWindowLocomotive[2] = "Propulsion: steam";
   4482 21 04 00      [10]  639 	ld	hl,#0x0004
   4485 19            [11]  640 	add	hl,de
   4486 01 C3 44      [10]  641 	ld	bc,#___str_4+0
   4489 71            [ 7]  642 	ld	(hl),c
   448A 23            [ 6]  643 	inc	hl
   448B 70            [ 7]  644 	ld	(hl),b
                            645 ;src/game/depot.c:118: txtWindowLocomotive[3] = "Entry of service: 1942";
   448C 21 06 00      [10]  646 	ld	hl,#0x0006
   448F 19            [11]  647 	add	hl,de
   4490 01 99 45      [10]  648 	ld	bc,#___str_17+0
   4493 71            [ 7]  649 	ld	(hl),c
   4494 23            [ 6]  650 	inc	hl
   4495 70            [ 7]  651 	ld	(hl),b
                            652 ;src/game/depot.c:119: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   4496 21 08 00      [10]  653 	ld	hl,#0x0008
   4499 19            [11]  654 	add	hl,de
   449A 01 B0 45      [10]  655 	ld	bc,#___str_18+0
   449D 71            [ 7]  656 	ld	(hl),c
   449E 23            [ 6]  657 	inc	hl
   449F 70            [ 7]  658 	ld	(hl),b
                            659 ;src/game/depot.c:120: txtWindowLocomotive[5] = "Price: 2000$";
   44A0 21 0A 00      [10]  660 	ld	hl,#0x000A
   44A3 19            [11]  661 	add	hl,de
   44A4 11 C8 45      [10]  662 	ld	de,#___str_19+0
   44A7 73            [ 7]  663 	ld	(hl),e
   44A8 23            [ 6]  664 	inc	hl
   44A9 72            [ 7]  665 	ld	(hl),d
                            666 ;src/game/depot.c:122: }
   44AA                     667 00105$:
                            668 ;src/game/depot.c:124: return drawWindow(txtWindowLocomotive, 6, 1);
   44AA 21 00 00      [10]  669 	ld	hl,#0x0000
   44AD 39            [11]  670 	add	hl,sp
   44AE EB            [ 4]  671 	ex	de,hl
   44AF 21 06 01      [10]  672 	ld	hl,#0x0106
   44B2 E5            [11]  673 	push	hl
   44B3 D5            [11]  674 	push	de
   44B4 CD 0D 5F      [17]  675 	call	_drawWindow
   44B7 DD F9         [10]  676 	ld	sp,ix
   44B9 DD E1         [14]  677 	pop	ix
   44BB C9            [10]  678 	ret
   44BC                     679 ___str_2:
   44BC 31 33 30 20 42      680 	.ascii "130 B"
   44C1 00                  681 	.db 0x00
   44C2                     682 ___str_3:
   44C2 00                  683 	.db 0x00
   44C3                     684 ___str_4:
   44C3 50 72 6F 70 75 6C   685 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   44D4 00                  686 	.db 0x00
   44D5                     687 ___str_5:
   44D5 45 6E 74 72 79 20   688 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   44EB 00                  689 	.db 0x00
   44EC                     690 ___str_6:
   44EC 4D 61 78 69 6D 75   691 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   4502 00                  692 	.db 0x00
   4503                     693 ___str_7:
   4503 50 72 69 63 65 3A   694 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   450F 00                  695 	.db 0x00
   4510                     696 ___str_8:
   4510 31 34 31 20 54 41   697 	.ascii "141 TA"
   4516 00                  698 	.db 0x00
   4517                     699 ___str_9:
   4517 45 6E 74 72 79 20   700 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   452D 00                  701 	.db 0x00
   452E                     702 ___str_10:
   452E 4D 61 78 69 6D 75   703 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   4544 00                  704 	.db 0x00
   4545                     705 ___str_11:
   4545 50 72 69 63 65 3A   706 	.ascii "Price: 900$"
        20 39 30 30 24
   4550 00                  707 	.db 0x00
   4551                     708 ___str_12:
   4551 31 34 32 20 41 54   709 	.ascii "142 AT"
   4557 00                  710 	.db 0x00
   4558                     711 ___str_13:
   4558 45 6E 74 72 79 20   712 	.ascii "Entry of service: 1926"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 32 36
   456E 00                  713 	.db 0x00
   456F                     714 ___str_14:
   456F 4D 61 78 69 6D 75   715 	.ascii "Maximum speed: 95 km/h"
        6D 20 73 70 65 65
        64 3A 20 39 35 20
        6B 6D 2F 68
   4585 00                  716 	.db 0x00
   4586                     717 ___str_15:
   4586 50 72 69 63 65 3A   718 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   4592 00                  719 	.db 0x00
   4593                     720 ___str_16:
   4593 31 34 31 20 50      721 	.ascii "141 P"
   4598 00                  722 	.db 0x00
   4599                     723 ___str_17:
   4599 45 6E 74 72 79 20   724 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   45AF 00                  725 	.db 0x00
   45B0                     726 ___str_18:
   45B0 4D 61 78 69 6D 75   727 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   45C7 00                  728 	.db 0x00
   45C8                     729 ___str_19:
   45C8 50 72 69 63 65 3A   730 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   45D4 00                  731 	.db 0x00
                            732 ;src/game/depot.c:127: void buyLocomotive()
                            733 ;	---------------------------------
                            734 ; Function buyLocomotive
                            735 ; ---------------------------------
   45D5                     736 _buyLocomotive::
                            737 ;src/game/depot.c:129: u8 exit=0;
                            738 ;src/game/depot.c:131: u8 iSelect=0;
   45D5 01 00 00      [10]  739 	ld	bc,#0x0000
                            740 ;src/game/depot.c:133: drawAllLocomotives(iSelect);
   45D8 C5            [11]  741 	push	bc
   45D9 AF            [ 4]  742 	xor	a, a
   45DA F5            [11]  743 	push	af
   45DB 33            [ 6]  744 	inc	sp
   45DC CD 4E 43      [17]  745 	call	_drawAllLocomotives
   45DF 33            [ 6]  746 	inc	sp
   45E0 C1            [10]  747 	pop	bc
                            748 ;src/game/depot.c:135: do
   45E1                     749 00124$:
                            750 ;src/game/depot.c:137: cpct_scanKeyboard(); 
   45E1 C5            [11]  751 	push	bc
   45E2 CD 2A 75      [17]  752 	call	_cpct_scanKeyboard
   45E5 21 00 01      [10]  753 	ld	hl,#0x0100
   45E8 CD B5 70      [17]  754 	call	_cpct_isKeyPressed
   45EB 7D            [ 4]  755 	ld	a,l
   45EC C1            [10]  756 	pop	bc
   45ED B7            [ 4]  757 	or	a, a
   45EE 28 24         [12]  758 	jr	Z,00122$
                            759 ;src/game/depot.c:141: if (iSelect>0)
   45F0 78            [ 4]  760 	ld	a,b
   45F1 B7            [ 4]  761 	or	a, a
   45F2 28 15         [12]  762 	jr	Z,00140$
                            763 ;src/game/depot.c:143: iSelect--;
   45F4 05            [ 4]  764 	dec	b
                            765 ;src/game/depot.c:144: drawLocomotive(iSelect, iSelect);
   45F5 C5            [11]  766 	push	bc
   45F6 C5            [11]  767 	push	bc
   45F7 33            [ 6]  768 	inc	sp
   45F8 C5            [11]  769 	push	bc
   45F9 33            [ 6]  770 	inc	sp
   45FA CD B9 41      [17]  771 	call	_drawLocomotive
   45FD F1            [10]  772 	pop	af
   45FE C1            [10]  773 	pop	bc
                            774 ;src/game/depot.c:145: drawLocomotive(iSelect+1, iSelect);
   45FF 50            [ 4]  775 	ld	d,b
   4600 14            [ 4]  776 	inc	d
   4601 C5            [11]  777 	push	bc
   4602 4A            [ 4]  778 	ld	c, d
   4603 C5            [11]  779 	push	bc
   4604 CD B9 41      [17]  780 	call	_drawLocomotive
   4607 F1            [10]  781 	pop	af
   4608 C1            [10]  782 	pop	bc
                            783 ;src/game/depot.c:147: for(i=0; i<14000; i++) {} // wait loop
   4609                     784 00140$:
   4609 11 B0 36      [10]  785 	ld	de,#0x36B0
   460C                     786 00129$:
   460C 1B            [ 6]  787 	dec	de
   460D 7A            [ 4]  788 	ld	a,d
   460E B3            [ 4]  789 	or	a,e
   460F 20 FB         [12]  790 	jr	NZ,00129$
   4611 C3 86 46      [10]  791 	jp	00125$
   4614                     792 00122$:
                            793 ;src/game/depot.c:149: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4614 C5            [11]  794 	push	bc
   4615 21 00 04      [10]  795 	ld	hl,#0x0400
   4618 CD B5 70      [17]  796 	call	_cpct_isKeyPressed
   461B 7D            [ 4]  797 	ld	a,l
   461C C1            [10]  798 	pop	bc
   461D B7            [ 4]  799 	or	a, a
   461E 28 24         [12]  800 	jr	Z,00119$
                            801 ;src/game/depot.c:151: if (iSelect<11)
   4620 78            [ 4]  802 	ld	a,b
   4621 D6 0B         [ 7]  803 	sub	a, #0x0B
   4623 30 15         [12]  804 	jr	NC,00144$
                            805 ;src/game/depot.c:153: iSelect++;
   4625 04            [ 4]  806 	inc	b
                            807 ;src/game/depot.c:154: drawLocomotive(iSelect, iSelect);
   4626 C5            [11]  808 	push	bc
   4627 C5            [11]  809 	push	bc
   4628 33            [ 6]  810 	inc	sp
   4629 C5            [11]  811 	push	bc
   462A 33            [ 6]  812 	inc	sp
   462B CD B9 41      [17]  813 	call	_drawLocomotive
   462E F1            [10]  814 	pop	af
   462F C1            [10]  815 	pop	bc
                            816 ;src/game/depot.c:155: drawLocomotive(iSelect-1, iSelect);
   4630 50            [ 4]  817 	ld	d,b
   4631 15            [ 4]  818 	dec	d
   4632 C5            [11]  819 	push	bc
   4633 4A            [ 4]  820 	ld	c, d
   4634 C5            [11]  821 	push	bc
   4635 CD B9 41      [17]  822 	call	_drawLocomotive
   4638 F1            [10]  823 	pop	af
   4639 C1            [10]  824 	pop	bc
                            825 ;src/game/depot.c:157: for(i=0; i<14000; i++) {} // wait loop
   463A                     826 00144$:
   463A 11 B0 36      [10]  827 	ld	de,#0x36B0
   463D                     828 00132$:
   463D 1B            [ 6]  829 	dec	de
   463E 7A            [ 4]  830 	ld	a,d
   463F B3            [ 4]  831 	or	a,e
   4640 20 FB         [12]  832 	jr	NZ,00132$
   4642 18 42         [12]  833 	jr	00125$
   4644                     834 00119$:
                            835 ;src/game/depot.c:159: else if ( cpct_isKeyPressed(Key_Return) )
   4644 C5            [11]  836 	push	bc
   4645 21 02 04      [10]  837 	ld	hl,#0x0402
   4648 CD B5 70      [17]  838 	call	_cpct_isKeyPressed
   464B 7D            [ 4]  839 	ld	a,l
   464C C1            [10]  840 	pop	bc
   464D B7            [ 4]  841 	or	a, a
   464E 28 28         [12]  842 	jr	Z,00116$
                            843 ;src/game/depot.c:161: if(iSelect<locDelocked)
   4650 21 FB 84      [10]  844 	ld	hl,#_locDelocked
   4653 78            [ 4]  845 	ld	a,b
   4654 96            [ 7]  846 	sub	a, (hl)
   4655 30 17         [12]  847 	jr	NC,00149$
                            848 ;src/game/depot.c:163: if(confirmBuyLocomotive(iSelect) == 1)
   4657 C5            [11]  849 	push	bc
   4658 C5            [11]  850 	push	bc
   4659 33            [ 6]  851 	inc	sp
   465A CD 7E 43      [17]  852 	call	_confirmBuyLocomotive
   465D 33            [ 6]  853 	inc	sp
   465E C1            [10]  854 	pop	bc
   465F 2D            [ 4]  855 	dec	l
   4660 20 04         [12]  856 	jr	NZ,00108$
                            857 ;src/game/depot.c:164: exit=1;
   4662 0E 01         [ 7]  858 	ld	c,#0x01
   4664 18 08         [12]  859 	jr	00149$
   4666                     860 00108$:
                            861 ;src/game/depot.c:166: drawAllLocomotives(iSelect);
   4666 C5            [11]  862 	push	bc
   4667 C5            [11]  863 	push	bc
   4668 33            [ 6]  864 	inc	sp
   4669 CD 4E 43      [17]  865 	call	_drawAllLocomotives
   466C 33            [ 6]  866 	inc	sp
   466D C1            [10]  867 	pop	bc
                            868 ;src/game/depot.c:169: for(i=0; i<14000; i++) {} // wait loop
   466E                     869 00149$:
   466E 11 B0 36      [10]  870 	ld	de,#0x36B0
   4671                     871 00135$:
   4671 1B            [ 6]  872 	dec	de
   4672 7A            [ 4]  873 	ld	a,d
   4673 B3            [ 4]  874 	or	a,e
   4674 20 FB         [12]  875 	jr	NZ,00135$
   4676 18 0E         [12]  876 	jr	00125$
   4678                     877 00116$:
                            878 ;src/game/depot.c:171: else if ( cpct_isKeyPressed(Key_Esc) )
   4678 C5            [11]  879 	push	bc
   4679 21 08 04      [10]  880 	ld	hl,#0x0408
   467C CD B5 70      [17]  881 	call	_cpct_isKeyPressed
   467F 7D            [ 4]  882 	ld	a,l
   4680 C1            [10]  883 	pop	bc
   4681 B7            [ 4]  884 	or	a, a
   4682 28 02         [12]  885 	jr	Z,00125$
                            886 ;src/game/depot.c:172: exit=1;
   4684 0E 01         [ 7]  887 	ld	c,#0x01
   4686                     888 00125$:
                            889 ;src/game/depot.c:174: while(!exit);
   4686 79            [ 4]  890 	ld	a,c
   4687 B7            [ 4]  891 	or	a, a
   4688 CA E1 45      [10]  892 	jp	Z,00124$
                            893 ;src/game/depot.c:176: putM2();
   468B C3 09 5A      [10]  894 	jp  _putM2
                            895 	.area _CODE
                            896 	.area _INITIALIZER
                            897 	.area _CABS (ABS)
