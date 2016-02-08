                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 17:38:58 2016
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
                             16 	.globl _realloc
                             17 	.globl _malloc
                             18 	.globl _floorf
                             19 	.globl _cpct_getScreenPtr
                             20 	.globl _cpct_drawSolidBox
                             21 	.globl _cpct_drawSprite
                             22 	.globl _cpct_px2byteM0
                             23 	.globl _cpct_isKeyPressed
                             24 	.globl _cpct_scanKeyboard
                             25 	.globl _cpct_memset
                             26 	.globl _railroadDepot
                             27 	.globl _drawLocomotive
                             28 	.globl _drawAllLocomotives
                             29 	.globl _confirmBuyLocomotive
                             30 	.globl _buyLocomotive
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
                             62 ;src/game/depot.c:3: void railroadDepot()
                             63 ;	---------------------------------
                             64 ; Function railroadDepot
                             65 ; ---------------------------------
   4130                      66 _railroadDepot::
   4130 DD E5         [15]   67 	push	ix
   4132 DD 21 00 00   [14]   68 	ld	ix,#0
   4136 DD 39         [15]   69 	add	ix,sp
   4138 F5            [11]   70 	push	af
   4139 F5            [11]   71 	push	af
   413A 3B            [ 6]   72 	dec	sp
                             73 ;src/game/depot.c:5: u8 exit=0;
   413B DD 36 FF 00   [19]   74 	ld	-1 (ix),#0x00
                             75 ;src/game/depot.c:7: cpct_clearScreen(0b11111111);
   413F 21 00 40      [10]   76 	ld	hl,#0x4000
   4142 E5            [11]   77 	push	hl
   4143 3E FF         [ 7]   78 	ld	a,#0xFF
   4145 F5            [11]   79 	push	af
   4146 33            [ 6]   80 	inc	sp
   4147 26 C0         [ 7]   81 	ld	h, #0xC0
   4149 E5            [11]   82 	push	hl
   414A CD B6 78      [17]   83 	call	_cpct_memset
                             84 ;src/game/depot.c:9: do
   414D                      85 00108$:
                             86 ;src/game/depot.c:11: cpct_scanKeyboard(); 
   414D CD 0A 7A      [17]   87 	call	_cpct_scanKeyboard
                             88 ;src/game/depot.c:13: if ( cpct_isKeyPressed(Key_Esc) )
   4150 21 08 04      [10]   89 	ld	hl,#0x0408
   4153 CD 64 73      [17]   90 	call	_cpct_isKeyPressed
   4156 7D            [ 4]   91 	ld	a,l
   4157 B7            [ 4]   92 	or	a, a
   4158 28 06         [12]   93 	jr	Z,00106$
                             94 ;src/game/depot.c:14: exit=1;
   415A DD 36 FF 01   [19]   95 	ld	-1 (ix),#0x01
   415E 18 2F         [12]   96 	jr	00109$
   4160                      97 00106$:
                             98 ;src/game/depot.c:15: else if(cpct_isKeyPressed(Key_Return) )
   4160 21 02 04      [10]   99 	ld	hl,#0x0402
   4163 CD 64 73      [17]  100 	call	_cpct_isKeyPressed
   4166 7D            [ 4]  101 	ld	a,l
   4167 B7            [ 4]  102 	or	a, a
   4168 28 25         [12]  103 	jr	Z,00109$
                            104 ;src/game/depot.c:17: const char *txtMenuChoice[] = { 
   416A 21 00 00      [10]  105 	ld	hl,#0x0000
   416D 39            [11]  106 	add	hl,sp
   416E 5D            [ 4]  107 	ld	e,l
   416F 54            [ 4]  108 	ld	d,h
   4170 36 9A         [10]  109 	ld	(hl),#<(___str_0)
   4172 23            [ 6]  110 	inc	hl
   4173 36 41         [10]  111 	ld	(hl),#>(___str_0)
   4175 6B            [ 4]  112 	ld	l, e
   4176 62            [ 4]  113 	ld	h, d
   4177 23            [ 6]  114 	inc	hl
   4178 23            [ 6]  115 	inc	hl
   4179 36 AB         [10]  116 	ld	(hl),#<(___str_1)
   417B 23            [ 6]  117 	inc	hl
   417C 36 41         [10]  118 	ld	(hl),#>(___str_1)
                            119 ;src/game/depot.c:21: u8 menuChoice = drawMenu(txtMenuChoice,2);
   417E 3E 02         [ 7]  120 	ld	a,#0x02
   4180 F5            [11]  121 	push	af
   4181 33            [ 6]  122 	inc	sp
   4182 D5            [11]  123 	push	de
   4183 CD 48 5F      [17]  124 	call	_drawMenu
   4186 F1            [10]  125 	pop	af
   4187 33            [ 6]  126 	inc	sp
   4188 7D            [ 4]  127 	ld	a,l
                            128 ;src/game/depot.c:23: if(menuChoice == 0)
   4189 B7            [ 4]  129 	or	a, a
   418A 20 03         [12]  130 	jr	NZ,00109$
                            131 ;src/game/depot.c:24: buyLocomotive();
   418C CD 0A 47      [17]  132 	call	_buyLocomotive
   418F                     133 00109$:
                            134 ;src/game/depot.c:28: while(!exit);
   418F DD 7E FF      [19]  135 	ld	a,-1 (ix)
   4192 B7            [ 4]  136 	or	a, a
   4193 28 B8         [12]  137 	jr	Z,00108$
   4195 DD F9         [10]  138 	ld	sp, ix
   4197 DD E1         [14]  139 	pop	ix
   4199 C9            [10]  140 	ret
   419A                     141 ___str_0:
   419A 42 75 79 20 61 20   142 	.ascii "Buy a locomotive"
        6C 6F 63 6F 6D 6F
        74 69 76 65
   41AA 00                  143 	.db 0x00
   41AB                     144 ___str_1:
   41AB 42 61 63 6B 20 74   145 	.ascii "Back to depot"
        6F 20 64 65 70 6F
        74
   41B8 00                  146 	.db 0x00
                            147 ;src/game/depot.c:31: void drawLocomotive(u8 i, u8 iSelect)
                            148 ;	---------------------------------
                            149 ; Function drawLocomotive
                            150 ; ---------------------------------
   41B9                     151 _drawLocomotive::
   41B9 DD E5         [15]  152 	push	ix
   41BB DD 21 00 00   [14]  153 	ld	ix,#0
   41BF DD 39         [15]  154 	add	ix,sp
   41C1 21 F7 FF      [10]  155 	ld	hl,#-9
   41C4 39            [11]  156 	add	hl,sp
   41C5 F9            [ 6]  157 	ld	sp,hl
                            158 ;src/game/depot.c:34: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4), 30+40*(i%4));
   41C6 DD 7E 04      [19]  159 	ld	a,4 (ix)
   41C9 E6 03         [ 7]  160 	and	a, #0x03
   41CB 4F            [ 4]  161 	ld	c,a
   41CC 87            [ 4]  162 	add	a, a
   41CD 87            [ 4]  163 	add	a, a
   41CE 81            [ 4]  164 	add	a, c
   41CF 87            [ 4]  165 	add	a, a
   41D0 87            [ 4]  166 	add	a, a
   41D1 87            [ 4]  167 	add	a, a
   41D2 DD 77 F7      [19]  168 	ld	-9 (ix), a
   41D5 C6 1E         [ 7]  169 	add	a, #0x1E
   41D7 DD 77 FC      [19]  170 	ld	-4 (ix),a
   41DA DD 7E 04      [19]  171 	ld	a,4 (ix)
   41DD 0F            [ 4]  172 	rrca
   41DE 0F            [ 4]  173 	rrca
   41DF E6 3F         [ 7]  174 	and	a,#0x3F
   41E1 DD 77 FF      [19]  175 	ld	-1 (ix), a
   41E4 F5            [11]  176 	push	af
   41E5 33            [ 6]  177 	inc	sp
   41E6 CD 24 92      [17]  178 	call	___uchar2fs
   41E9 33            [ 6]  179 	inc	sp
   41EA DD 72 FB      [19]  180 	ld	-5 (ix),d
   41ED DD 73 FA      [19]  181 	ld	-6 (ix),e
   41F0 DD 74 F9      [19]  182 	ld	-7 (ix),h
   41F3 DD 75 F8      [19]  183 	ld	-8 (ix),l
   41F6 DD 6E FA      [19]  184 	ld	l,-6 (ix)
   41F9 DD 66 FB      [19]  185 	ld	h,-5 (ix)
   41FC E5            [11]  186 	push	hl
   41FD DD 6E F8      [19]  187 	ld	l,-8 (ix)
   4200 DD 66 F9      [19]  188 	ld	h,-7 (ix)
   4203 E5            [11]  189 	push	hl
   4204 CD 2B 77      [17]  190 	call	_floorf
   4207 F1            [10]  191 	pop	af
   4208 F1            [10]  192 	pop	af
   4209 EB            [ 4]  193 	ex	de, hl
   420A E5            [11]  194 	push	hl
   420B D5            [11]  195 	push	de
   420C 21 C8 41      [10]  196 	ld	hl,#0x41C8
   420F E5            [11]  197 	push	hl
   4210 21 00 00      [10]  198 	ld	hl,#0x0000
   4213 E5            [11]  199 	push	hl
   4214 CD E1 89      [17]  200 	call	___fsmul
   4217 F1            [10]  201 	pop	af
   4218 F1            [10]  202 	pop	af
   4219 F1            [10]  203 	pop	af
   421A F1            [10]  204 	pop	af
   421B 4D            [ 4]  205 	ld	c,l
   421C 44            [ 4]  206 	ld	b,h
   421D 21 A0 40      [10]  207 	ld	hl,#0x40A0
   4220 E5            [11]  208 	push	hl
   4221 21 00 00      [10]  209 	ld	hl,#0x0000
   4224 E5            [11]  210 	push	hl
   4225 D5            [11]  211 	push	de
   4226 C5            [11]  212 	push	bc
   4227 CD CF 8D      [17]  213 	call	___fsadd
   422A F1            [10]  214 	pop	af
   422B F1            [10]  215 	pop	af
   422C F1            [10]  216 	pop	af
   422D F1            [10]  217 	pop	af
   422E D5            [11]  218 	push	de
   422F E5            [11]  219 	push	hl
   4230 CD 3A 92      [17]  220 	call	___fs2uchar
   4233 F1            [10]  221 	pop	af
   4234 F1            [10]  222 	pop	af
   4235 55            [ 4]  223 	ld	d,l
   4236 DD 7E FC      [19]  224 	ld	a,-4 (ix)
   4239 F5            [11]  225 	push	af
   423A 33            [ 6]  226 	inc	sp
   423B D5            [11]  227 	push	de
   423C 33            [ 6]  228 	inc	sp
   423D 21 00 C0      [10]  229 	ld	hl,#0xC000
   4240 E5            [11]  230 	push	hl
   4241 CD EA 79      [17]  231 	call	_cpct_getScreenPtr
                            232 ;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4244 DD 75 FD      [19]  233 	ld	-3 (ix),l
   4247 DD 74 FE      [19]  234 	ld	-2 (ix),h
                            235 ;src/game/depot.c:37: if(i==iSelect)
   424A DD 7E 04      [19]  236 	ld	a,4 (ix)
   424D DD 96 05      [19]  237 	sub	a, 5 (ix)
   4250 20 1D         [12]  238 	jr	NZ,00102$
                            239 ;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   4252 21 05 05      [10]  240 	ld	hl,#0x0505
   4255 E5            [11]  241 	push	hl
   4256 CD 9A 78      [17]  242 	call	_cpct_px2byteM0
   4259 55            [ 4]  243 	ld	d,l
   425A 21 16 16      [10]  244 	ld	hl,#0x1616
   425D E5            [11]  245 	push	hl
   425E D5            [11]  246 	push	de
   425F 33            [ 6]  247 	inc	sp
   4260 DD 6E FD      [19]  248 	ld	l,-3 (ix)
   4263 DD 66 FE      [19]  249 	ld	h,-2 (ix)
   4266 E5            [11]  250 	push	hl
   4267 CD 31 79      [17]  251 	call	_cpct_drawSolidBox
   426A F1            [10]  252 	pop	af
   426B F1            [10]  253 	pop	af
   426C 33            [ 6]  254 	inc	sp
   426D 18 1B         [12]  255 	jr	00103$
   426F                     256 00102$:
                            257 ;src/game/depot.c:40: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
   426F 21 0B 0B      [10]  258 	ld	hl,#0x0B0B
   4272 E5            [11]  259 	push	hl
   4273 CD 9A 78      [17]  260 	call	_cpct_px2byteM0
   4276 55            [ 4]  261 	ld	d,l
   4277 21 16 16      [10]  262 	ld	hl,#0x1616
   427A E5            [11]  263 	push	hl
   427B D5            [11]  264 	push	de
   427C 33            [ 6]  265 	inc	sp
   427D DD 6E FD      [19]  266 	ld	l,-3 (ix)
   4280 DD 66 FE      [19]  267 	ld	h,-2 (ix)
   4283 E5            [11]  268 	push	hl
   4284 CD 31 79      [17]  269 	call	_cpct_drawSolidBox
   4287 F1            [10]  270 	pop	af
   4288 F1            [10]  271 	pop	af
   4289 33            [ 6]  272 	inc	sp
   428A                     273 00103$:
                            274 ;src/game/depot.c:42: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4)+1, 30+40*(i%4)+1);
   428A DD 7E F7      [19]  275 	ld	a,-9 (ix)
   428D C6 1F         [ 7]  276 	add	a, #0x1F
   428F DD 77 FD      [19]  277 	ld	-3 (ix),a
   4292 DD 6E FA      [19]  278 	ld	l,-6 (ix)
   4295 DD 66 FB      [19]  279 	ld	h,-5 (ix)
   4298 E5            [11]  280 	push	hl
   4299 DD 6E F8      [19]  281 	ld	l,-8 (ix)
   429C DD 66 F9      [19]  282 	ld	h,-7 (ix)
   429F E5            [11]  283 	push	hl
   42A0 CD 2B 77      [17]  284 	call	_floorf
   42A3 F1            [10]  285 	pop	af
   42A4 F1            [10]  286 	pop	af
   42A5 EB            [ 4]  287 	ex	de, hl
   42A6 E5            [11]  288 	push	hl
   42A7 D5            [11]  289 	push	de
   42A8 21 C8 41      [10]  290 	ld	hl,#0x41C8
   42AB E5            [11]  291 	push	hl
   42AC 21 00 00      [10]  292 	ld	hl,#0x0000
   42AF E5            [11]  293 	push	hl
   42B0 CD E1 89      [17]  294 	call	___fsmul
   42B3 F1            [10]  295 	pop	af
   42B4 F1            [10]  296 	pop	af
   42B5 F1            [10]  297 	pop	af
   42B6 F1            [10]  298 	pop	af
   42B7 4D            [ 4]  299 	ld	c,l
   42B8 44            [ 4]  300 	ld	b,h
   42B9 21 C0 40      [10]  301 	ld	hl,#0x40C0
   42BC E5            [11]  302 	push	hl
   42BD 21 00 00      [10]  303 	ld	hl,#0x0000
   42C0 E5            [11]  304 	push	hl
   42C1 D5            [11]  305 	push	de
   42C2 C5            [11]  306 	push	bc
   42C3 CD CF 8D      [17]  307 	call	___fsadd
   42C6 F1            [10]  308 	pop	af
   42C7 F1            [10]  309 	pop	af
   42C8 F1            [10]  310 	pop	af
   42C9 F1            [10]  311 	pop	af
   42CA D5            [11]  312 	push	de
   42CB E5            [11]  313 	push	hl
   42CC CD 3A 92      [17]  314 	call	___fs2uchar
   42CF F1            [10]  315 	pop	af
   42D0 F1            [10]  316 	pop	af
   42D1 55            [ 4]  317 	ld	d,l
   42D2 DD 7E FD      [19]  318 	ld	a,-3 (ix)
   42D5 F5            [11]  319 	push	af
   42D6 33            [ 6]  320 	inc	sp
   42D7 D5            [11]  321 	push	de
   42D8 33            [ 6]  322 	inc	sp
   42D9 21 00 C0      [10]  323 	ld	hl,#0xC000
   42DC E5            [11]  324 	push	hl
   42DD CD EA 79      [17]  325 	call	_cpct_getScreenPtr
                            326 ;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
   42E0 4D            [ 4]  327 	ld	c, l
   42E1 44            [ 4]  328 	ld	b, h
                            329 ;src/game/depot.c:44: if(i<locDelocked)
   42E2 21 DF 89      [10]  330 	ld	hl,#_locDelocked
   42E5 DD 7E 04      [19]  331 	ld	a,4 (ix)
   42E8 96            [ 7]  332 	sub	a, (hl)
   42E9 30 52         [12]  333 	jr	NC,00110$
                            334 ;src/game/depot.c:46: switch(i)
   42EB 3E 03         [ 7]  335 	ld	a,#0x03
   42ED DD 96 04      [19]  336 	sub	a, 4 (ix)
   42F0 38 57         [12]  337 	jr	C,00112$
   42F2 DD 5E 04      [19]  338 	ld	e,4 (ix)
   42F5 16 00         [ 7]  339 	ld	d,#0x00
   42F7 21 FD 42      [10]  340 	ld	hl,#00128$
   42FA 19            [11]  341 	add	hl,de
   42FB 19            [11]  342 	add	hl,de
                            343 ;src/game/depot.c:48: case 0:
   42FC E9            [ 4]  344 	jp	(hl)
   42FD                     345 00128$:
   42FD 18 06         [12]  346 	jr	00104$
   42FF 18 12         [12]  347 	jr	00105$
   4301 18 1E         [12]  348 	jr	00106$
   4303 18 2A         [12]  349 	jr	00107$
   4305                     350 00104$:
                            351 ;src/game/depot.c:49: cpct_drawSprite(l130B, p_video, 20, 20);
   4305 11 09 6A      [10]  352 	ld	de,#_l130B+0
   4308 21 14 14      [10]  353 	ld	hl,#0x1414
   430B E5            [11]  354 	push	hl
   430C C5            [11]  355 	push	bc
   430D D5            [11]  356 	push	de
   430E CD BC 73      [17]  357 	call	_cpct_drawSprite
                            358 ;src/game/depot.c:50: break;
   4311 18 36         [12]  359 	jr	00112$
                            360 ;src/game/depot.c:51: case 1:
   4313                     361 00105$:
                            362 ;src/game/depot.c:52: cpct_drawSprite(l141TA, p_video, 20, 20);
   4313 11 99 6B      [10]  363 	ld	de,#_l141TA+0
   4316 21 14 14      [10]  364 	ld	hl,#0x1414
   4319 E5            [11]  365 	push	hl
   431A C5            [11]  366 	push	bc
   431B D5            [11]  367 	push	de
   431C CD BC 73      [17]  368 	call	_cpct_drawSprite
                            369 ;src/game/depot.c:53: break;
   431F 18 28         [12]  370 	jr	00112$
                            371 ;src/game/depot.c:54: case 2:
   4321                     372 00106$:
                            373 ;src/game/depot.c:55: cpct_drawSprite(l142AT, p_video, 20, 20);
   4321 11 29 6D      [10]  374 	ld	de,#_l142AT+0
   4324 21 14 14      [10]  375 	ld	hl,#0x1414
   4327 E5            [11]  376 	push	hl
   4328 C5            [11]  377 	push	bc
   4329 D5            [11]  378 	push	de
   432A CD BC 73      [17]  379 	call	_cpct_drawSprite
                            380 ;src/game/depot.c:56: break;
   432D 18 1A         [12]  381 	jr	00112$
                            382 ;src/game/depot.c:57: case 3:
   432F                     383 00107$:
                            384 ;src/game/depot.c:58: cpct_drawSprite(l141P, p_video, 20, 20);
   432F 11 B9 6E      [10]  385 	ld	de,#_l141P+0
   4332 21 14 14      [10]  386 	ld	hl,#0x1414
   4335 E5            [11]  387 	push	hl
   4336 C5            [11]  388 	push	bc
   4337 D5            [11]  389 	push	de
   4338 CD BC 73      [17]  390 	call	_cpct_drawSprite
                            391 ;src/game/depot.c:60: }
   433B 18 0C         [12]  392 	jr	00112$
   433D                     393 00110$:
                            394 ;src/game/depot.c:66: cpct_drawSprite(lock, p_video, 20, 20);
   433D 11 79 68      [10]  395 	ld	de,#_lock
   4340 21 14 14      [10]  396 	ld	hl,#0x1414
   4343 E5            [11]  397 	push	hl
   4344 C5            [11]  398 	push	bc
   4345 D5            [11]  399 	push	de
   4346 CD BC 73      [17]  400 	call	_cpct_drawSprite
   4349                     401 00112$:
   4349 DD F9         [10]  402 	ld	sp, ix
   434B DD E1         [14]  403 	pop	ix
   434D C9            [10]  404 	ret
                            405 ;src/game/depot.c:70: void drawAllLocomotives(u8 iSelect)
                            406 ;	---------------------------------
                            407 ; Function drawAllLocomotives
                            408 ; ---------------------------------
   434E                     409 _drawAllLocomotives::
                            410 ;src/game/depot.c:74: putM0();
   434E CD 1B 5B      [17]  411 	call	_putM0
                            412 ;src/game/depot.c:76: cpct_clearScreen(cpct_px2byteM0(9,9));
   4351 21 09 09      [10]  413 	ld	hl,#0x0909
   4354 E5            [11]  414 	push	hl
   4355 CD 9A 78      [17]  415 	call	_cpct_px2byteM0
   4358 65            [ 4]  416 	ld	h,l
   4359 01 00 40      [10]  417 	ld	bc,#0x4000
   435C C5            [11]  418 	push	bc
   435D E5            [11]  419 	push	hl
   435E 33            [ 6]  420 	inc	sp
   435F 21 00 C0      [10]  421 	ld	hl,#0xC000
   4362 E5            [11]  422 	push	hl
   4363 CD B6 78      [17]  423 	call	_cpct_memset
                            424 ;src/game/depot.c:77: for(i=0; i<12; i++)
   4366 16 00         [ 7]  425 	ld	d,#0x00
   4368                     426 00102$:
                            427 ;src/game/depot.c:78: drawLocomotive(i, iSelect);
   4368 D5            [11]  428 	push	de
   4369 21 04 00      [10]  429 	ld	hl, #4+0
   436C 39            [11]  430 	add	hl, sp
   436D 7E            [ 7]  431 	ld	a, (hl)
   436E F5            [11]  432 	push	af
   436F 33            [ 6]  433 	inc	sp
   4370 D5            [11]  434 	push	de
   4371 33            [ 6]  435 	inc	sp
   4372 CD B9 41      [17]  436 	call	_drawLocomotive
   4375 F1            [10]  437 	pop	af
   4376 D1            [10]  438 	pop	de
                            439 ;src/game/depot.c:77: for(i=0; i<12; i++)
   4377 14            [ 4]  440 	inc	d
   4378 7A            [ 4]  441 	ld	a,d
   4379 D6 0C         [ 7]  442 	sub	a, #0x0C
   437B 38 EB         [12]  443 	jr	C,00102$
   437D C9            [10]  444 	ret
                            445 ;src/game/depot.c:81: u8 confirmBuyLocomotive(u8 iSelect)
                            446 ;	---------------------------------
                            447 ; Function confirmBuyLocomotive
                            448 ; ---------------------------------
   437E                     449 _confirmBuyLocomotive::
   437E DD E5         [15]  450 	push	ix
   4380 DD 21 00 00   [14]  451 	ld	ix,#0
   4384 DD 39         [15]  452 	add	ix,sp
   4386 21 F4 FF      [10]  453 	ld	hl,#-12
   4389 39            [11]  454 	add	hl,sp
   438A F9            [ 6]  455 	ld	sp,hl
                            456 ;src/game/depot.c:88: putM2();
   438B CD 42 5B      [17]  457 	call	_putM2
                            458 ;src/game/depot.c:90: switch(iSelect)
   438E 3E 03         [ 7]  459 	ld	a,#0x03
   4390 DD 96 04      [19]  460 	sub	a, 4 (ix)
   4393 DA AA 44      [10]  461 	jp	C,00105$
   4396 DD 5E 04      [19]  462 	ld	e,4 (ix)
   4399 16 00         [ 7]  463 	ld	d,#0x00
   439B 21 A2 43      [10]  464 	ld	hl,#00125$
   439E 19            [11]  465 	add	hl,de
   439F 19            [11]  466 	add	hl,de
   43A0 19            [11]  467 	add	hl,de
   43A1 E9            [ 4]  468 	jp	(hl)
   43A2                     469 00125$:
   43A2 C3 AE 43      [10]  470 	jp	00101$
   43A5 C3 EE 43      [10]  471 	jp	00102$
   43A8 C3 2E 44      [10]  472 	jp	00103$
   43AB C3 6D 44      [10]  473 	jp	00104$
                            474 ;src/game/depot.c:92: case 0:
   43AE                     475 00101$:
                            476 ;src/game/depot.c:93: txtWindowLocomotive[0] = "130 B";
   43AE 21 00 00      [10]  477 	ld	hl,#0x0000
   43B1 39            [11]  478 	add	hl,sp
   43B2 5D            [ 4]  479 	ld	e,l
   43B3 54            [ 4]  480 	ld	d,h
   43B4 36 F1         [10]  481 	ld	(hl),#<(___str_2)
   43B6 23            [ 6]  482 	inc	hl
   43B7 36 45         [10]  483 	ld	(hl),#>(___str_2)
                            484 ;src/game/depot.c:94: txtWindowLocomotive[1] = "";
   43B9 6B            [ 4]  485 	ld	l, e
   43BA 62            [ 4]  486 	ld	h, d
   43BB 23            [ 6]  487 	inc	hl
   43BC 23            [ 6]  488 	inc	hl
   43BD 01 F7 45      [10]  489 	ld	bc,#___str_3+0
   43C0 71            [ 7]  490 	ld	(hl),c
   43C1 23            [ 6]  491 	inc	hl
   43C2 70            [ 7]  492 	ld	(hl),b
                            493 ;src/game/depot.c:95: txtWindowLocomotive[2] = "Propulsion: steam";
   43C3 21 04 00      [10]  494 	ld	hl,#0x0004
   43C6 19            [11]  495 	add	hl,de
   43C7 01 F8 45      [10]  496 	ld	bc,#___str_4+0
   43CA 71            [ 7]  497 	ld	(hl),c
   43CB 23            [ 6]  498 	inc	hl
   43CC 70            [ 7]  499 	ld	(hl),b
                            500 ;src/game/depot.c:96: txtWindowLocomotive[3] = "Entry of service: 1909";
   43CD 21 06 00      [10]  501 	ld	hl,#0x0006
   43D0 19            [11]  502 	add	hl,de
   43D1 01 0A 46      [10]  503 	ld	bc,#___str_5+0
   43D4 71            [ 7]  504 	ld	(hl),c
   43D5 23            [ 6]  505 	inc	hl
   43D6 70            [ 7]  506 	ld	(hl),b
                            507 ;src/game/depot.c:97: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
   43D7 21 08 00      [10]  508 	ld	hl,#0x0008
   43DA 19            [11]  509 	add	hl,de
   43DB 01 21 46      [10]  510 	ld	bc,#___str_6+0
   43DE 71            [ 7]  511 	ld	(hl),c
   43DF 23            [ 6]  512 	inc	hl
   43E0 70            [ 7]  513 	ld	(hl),b
                            514 ;src/game/depot.c:98: txtWindowLocomotive[5] = "Price: 1000$";
   43E1 21 0A 00      [10]  515 	ld	hl,#0x000A
   43E4 19            [11]  516 	add	hl,de
   43E5 11 38 46      [10]  517 	ld	de,#___str_7+0
   43E8 73            [ 7]  518 	ld	(hl),e
   43E9 23            [ 6]  519 	inc	hl
   43EA 72            [ 7]  520 	ld	(hl),d
                            521 ;src/game/depot.c:99: break;
   43EB C3 AA 44      [10]  522 	jp	00105$
                            523 ;src/game/depot.c:100: case 1:
   43EE                     524 00102$:
                            525 ;src/game/depot.c:101: txtWindowLocomotive[0] = "141 TA";
   43EE 21 00 00      [10]  526 	ld	hl,#0x0000
   43F1 39            [11]  527 	add	hl,sp
   43F2 5D            [ 4]  528 	ld	e,l
   43F3 54            [ 4]  529 	ld	d,h
   43F4 36 45         [10]  530 	ld	(hl),#<(___str_8)
   43F6 23            [ 6]  531 	inc	hl
   43F7 36 46         [10]  532 	ld	(hl),#>(___str_8)
                            533 ;src/game/depot.c:102: txtWindowLocomotive[1] = "";
   43F9 6B            [ 4]  534 	ld	l, e
   43FA 62            [ 4]  535 	ld	h, d
   43FB 23            [ 6]  536 	inc	hl
   43FC 23            [ 6]  537 	inc	hl
   43FD 01 F7 45      [10]  538 	ld	bc,#___str_3+0
   4400 71            [ 7]  539 	ld	(hl),c
   4401 23            [ 6]  540 	inc	hl
   4402 70            [ 7]  541 	ld	(hl),b
                            542 ;src/game/depot.c:103: txtWindowLocomotive[2] = "Propulsion: steam";
   4403 21 04 00      [10]  543 	ld	hl,#0x0004
   4406 19            [11]  544 	add	hl,de
   4407 01 F8 45      [10]  545 	ld	bc,#___str_4+0
   440A 71            [ 7]  546 	ld	(hl),c
   440B 23            [ 6]  547 	inc	hl
   440C 70            [ 7]  548 	ld	(hl),b
                            549 ;src/game/depot.c:104: txtWindowLocomotive[3] = "Entry of service: 1911";
   440D 21 06 00      [10]  550 	ld	hl,#0x0006
   4410 19            [11]  551 	add	hl,de
   4411 01 4C 46      [10]  552 	ld	bc,#___str_9+0
   4414 71            [ 7]  553 	ld	(hl),c
   4415 23            [ 6]  554 	inc	hl
   4416 70            [ 7]  555 	ld	(hl),b
                            556 ;src/game/depot.c:105: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
   4417 21 08 00      [10]  557 	ld	hl,#0x0008
   441A 19            [11]  558 	add	hl,de
   441B 01 63 46      [10]  559 	ld	bc,#___str_10+0
   441E 71            [ 7]  560 	ld	(hl),c
   441F 23            [ 6]  561 	inc	hl
   4420 70            [ 7]  562 	ld	(hl),b
                            563 ;src/game/depot.c:106: txtWindowLocomotive[5] = "Price: 900$";
   4421 21 0A 00      [10]  564 	ld	hl,#0x000A
   4424 19            [11]  565 	add	hl,de
   4425 11 7A 46      [10]  566 	ld	de,#___str_11+0
   4428 73            [ 7]  567 	ld	(hl),e
   4429 23            [ 6]  568 	inc	hl
   442A 72            [ 7]  569 	ld	(hl),d
                            570 ;src/game/depot.c:107: break;
   442B C3 AA 44      [10]  571 	jp	00105$
                            572 ;src/game/depot.c:108: case 2:
   442E                     573 00103$:
                            574 ;src/game/depot.c:109: txtWindowLocomotive[0] = "142 AT";
   442E 21 00 00      [10]  575 	ld	hl,#0x0000
   4431 39            [11]  576 	add	hl,sp
   4432 5D            [ 4]  577 	ld	e,l
   4433 54            [ 4]  578 	ld	d,h
   4434 36 86         [10]  579 	ld	(hl),#<(___str_12)
   4436 23            [ 6]  580 	inc	hl
   4437 36 46         [10]  581 	ld	(hl),#>(___str_12)
                            582 ;src/game/depot.c:110: txtWindowLocomotive[1] = "";
   4439 6B            [ 4]  583 	ld	l, e
   443A 62            [ 4]  584 	ld	h, d
   443B 23            [ 6]  585 	inc	hl
   443C 23            [ 6]  586 	inc	hl
   443D 01 F7 45      [10]  587 	ld	bc,#___str_3+0
   4440 71            [ 7]  588 	ld	(hl),c
   4441 23            [ 6]  589 	inc	hl
   4442 70            [ 7]  590 	ld	(hl),b
                            591 ;src/game/depot.c:111: txtWindowLocomotive[2] = "Propulsion: steam";
   4443 21 04 00      [10]  592 	ld	hl,#0x0004
   4446 19            [11]  593 	add	hl,de
   4447 01 F8 45      [10]  594 	ld	bc,#___str_4+0
   444A 71            [ 7]  595 	ld	(hl),c
   444B 23            [ 6]  596 	inc	hl
   444C 70            [ 7]  597 	ld	(hl),b
                            598 ;src/game/depot.c:112: txtWindowLocomotive[3] = "Entry of service: 1926";
   444D 21 06 00      [10]  599 	ld	hl,#0x0006
   4450 19            [11]  600 	add	hl,de
   4451 01 8D 46      [10]  601 	ld	bc,#___str_13+0
   4454 71            [ 7]  602 	ld	(hl),c
   4455 23            [ 6]  603 	inc	hl
   4456 70            [ 7]  604 	ld	(hl),b
                            605 ;src/game/depot.c:113: txtWindowLocomotive[4] = "Maximum speed: 95 km/h";
   4457 21 08 00      [10]  606 	ld	hl,#0x0008
   445A 19            [11]  607 	add	hl,de
   445B 01 A4 46      [10]  608 	ld	bc,#___str_14+0
   445E 71            [ 7]  609 	ld	(hl),c
   445F 23            [ 6]  610 	inc	hl
   4460 70            [ 7]  611 	ld	(hl),b
                            612 ;src/game/depot.c:114: txtWindowLocomotive[5] = "Price: 1500$";
   4461 21 0A 00      [10]  613 	ld	hl,#0x000A
   4464 19            [11]  614 	add	hl,de
   4465 11 BB 46      [10]  615 	ld	de,#___str_15+0
   4468 73            [ 7]  616 	ld	(hl),e
   4469 23            [ 6]  617 	inc	hl
   446A 72            [ 7]  618 	ld	(hl),d
                            619 ;src/game/depot.c:115: break;
   446B 18 3D         [12]  620 	jr	00105$
                            621 ;src/game/depot.c:117: case 3:
   446D                     622 00104$:
                            623 ;src/game/depot.c:118: txtWindowLocomotive[0] = "141 P";
   446D 21 00 00      [10]  624 	ld	hl,#0x0000
   4470 39            [11]  625 	add	hl,sp
   4471 5D            [ 4]  626 	ld	e,l
   4472 54            [ 4]  627 	ld	d,h
   4473 36 C8         [10]  628 	ld	(hl),#<(___str_16)
   4475 23            [ 6]  629 	inc	hl
   4476 36 46         [10]  630 	ld	(hl),#>(___str_16)
                            631 ;src/game/depot.c:119: txtWindowLocomotive[1] = "";
   4478 6B            [ 4]  632 	ld	l, e
   4479 62            [ 4]  633 	ld	h, d
   447A 23            [ 6]  634 	inc	hl
   447B 23            [ 6]  635 	inc	hl
   447C 01 F7 45      [10]  636 	ld	bc,#___str_3+0
   447F 71            [ 7]  637 	ld	(hl),c
   4480 23            [ 6]  638 	inc	hl
   4481 70            [ 7]  639 	ld	(hl),b
                            640 ;src/game/depot.c:120: txtWindowLocomotive[2] = "Propulsion: steam";
   4482 21 04 00      [10]  641 	ld	hl,#0x0004
   4485 19            [11]  642 	add	hl,de
   4486 01 F8 45      [10]  643 	ld	bc,#___str_4+0
   4489 71            [ 7]  644 	ld	(hl),c
   448A 23            [ 6]  645 	inc	hl
   448B 70            [ 7]  646 	ld	(hl),b
                            647 ;src/game/depot.c:121: txtWindowLocomotive[3] = "Entry of service: 1942";
   448C 21 06 00      [10]  648 	ld	hl,#0x0006
   448F 19            [11]  649 	add	hl,de
   4490 01 CE 46      [10]  650 	ld	bc,#___str_17+0
   4493 71            [ 7]  651 	ld	(hl),c
   4494 23            [ 6]  652 	inc	hl
   4495 70            [ 7]  653 	ld	(hl),b
                            654 ;src/game/depot.c:122: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
   4496 21 08 00      [10]  655 	ld	hl,#0x0008
   4499 19            [11]  656 	add	hl,de
   449A 01 E5 46      [10]  657 	ld	bc,#___str_18+0
   449D 71            [ 7]  658 	ld	(hl),c
   449E 23            [ 6]  659 	inc	hl
   449F 70            [ 7]  660 	ld	(hl),b
                            661 ;src/game/depot.c:123: txtWindowLocomotive[5] = "Price: 2000$";
   44A0 21 0A 00      [10]  662 	ld	hl,#0x000A
   44A3 19            [11]  663 	add	hl,de
   44A4 11 FD 46      [10]  664 	ld	de,#___str_19+0
   44A7 73            [ 7]  665 	ld	(hl),e
   44A8 23            [ 6]  666 	inc	hl
   44A9 72            [ 7]  667 	ld	(hl),d
                            668 ;src/game/depot.c:125: }
   44AA                     669 00105$:
                            670 ;src/game/depot.c:128: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
   44AA 21 00 00      [10]  671 	ld	hl,#0x0000
   44AD 39            [11]  672 	add	hl,sp
   44AE EB            [ 4]  673 	ex	de,hl
   44AF 21 06 01      [10]  674 	ld	hl,#0x0106
   44B2 E5            [11]  675 	push	hl
   44B3 D5            [11]  676 	push	de
   44B4 CD 46 60      [17]  677 	call	_drawWindow
   44B7 F1            [10]  678 	pop	af
   44B8 F1            [10]  679 	pop	af
   44B9 4D            [ 4]  680 	ld	c,l
                            681 ;src/game/depot.c:131: if (returnChoice==1)
   44BA 79            [ 4]  682 	ld	a,c
   44BB 3D            [ 4]  683 	dec	a
   44BC C2 EB 45      [10]  684 	jp	NZ,00110$
                            685 ;src/game/depot.c:133: if(nbTrainList==0)
   44BF 3A E0 89      [13]  686 	ld	a,(#_nbTrainList + 0)
   44C2 B7            [ 4]  687 	or	a, a
   44C3 20 0F         [12]  688 	jr	NZ,00107$
                            689 ;src/game/depot.c:134: trainList = (Train*)malloc(sizeof(Train));
   44C5 C5            [11]  690 	push	bc
   44C6 21 09 00      [10]  691 	ld	hl,#0x0009
   44C9 E5            [11]  692 	push	hl
   44CA CD 35 75      [17]  693 	call	_malloc
   44CD F1            [10]  694 	pop	af
   44CE C1            [10]  695 	pop	bc
   44CF 22 DA 89      [16]  696 	ld	(_trainList),hl
   44D2 18 1D         [12]  697 	jr	00108$
   44D4                     698 00107$:
                            699 ;src/game/depot.c:136: realloc(trainList, (nbTrainList+1)*sizeof(Train));
   44D4 FD 21 E0 89   [14]  700 	ld	iy,#_nbTrainList
   44D8 FD 6E 00      [19]  701 	ld	l,0 (iy)
   44DB 26 00         [ 7]  702 	ld	h,#0x00
   44DD 23            [ 6]  703 	inc	hl
   44DE 5D            [ 4]  704 	ld	e, l
   44DF 54            [ 4]  705 	ld	d, h
   44E0 29            [11]  706 	add	hl, hl
   44E1 29            [11]  707 	add	hl, hl
   44E2 29            [11]  708 	add	hl, hl
   44E3 19            [11]  709 	add	hl, de
   44E4 EB            [ 4]  710 	ex	de,hl
   44E5 2A DA 89      [16]  711 	ld	hl,(_trainList)
   44E8 C5            [11]  712 	push	bc
   44E9 D5            [11]  713 	push	de
   44EA E5            [11]  714 	push	hl
   44EB CD D9 71      [17]  715 	call	_realloc
   44EE F1            [10]  716 	pop	af
   44EF F1            [10]  717 	pop	af
   44F0 C1            [10]  718 	pop	bc
   44F1                     719 00108$:
                            720 ;src/game/depot.c:139: trainList[nbTrainList].loco = iSelect;
   44F1 ED 5B E0 89   [20]  721 	ld	de,(_nbTrainList)
   44F5 16 00         [ 7]  722 	ld	d,#0x00
   44F7 6B            [ 4]  723 	ld	l, e
   44F8 62            [ 4]  724 	ld	h, d
   44F9 29            [11]  725 	add	hl, hl
   44FA 29            [11]  726 	add	hl, hl
   44FB 29            [11]  727 	add	hl, hl
   44FC 19            [11]  728 	add	hl, de
   44FD EB            [ 4]  729 	ex	de,hl
   44FE FD 2A DA 89   [20]  730 	ld	iy,(_trainList)
   4502 FD 19         [15]  731 	add	iy, de
   4504 DD 7E 04      [19]  732 	ld	a,4 (ix)
   4507 FD 77 00      [19]  733 	ld	0 (iy), a
                            734 ;src/game/depot.c:142: trainList[nbTrainList].wagon[0] = 0;
   450A ED 5B E0 89   [20]  735 	ld	de,(_nbTrainList)
   450E 16 00         [ 7]  736 	ld	d,#0x00
   4510 6B            [ 4]  737 	ld	l, e
   4511 62            [ 4]  738 	ld	h, d
   4512 29            [11]  739 	add	hl, hl
   4513 29            [11]  740 	add	hl, hl
   4514 29            [11]  741 	add	hl, hl
   4515 19            [11]  742 	add	hl, de
   4516 EB            [ 4]  743 	ex	de,hl
   4517 FD 2A DA 89   [20]  744 	ld	iy,(_trainList)
   451B FD 19         [15]  745 	add	iy, de
   451D FD 23         [10]  746 	inc	iy
   451F FD 36 00 00   [19]  747 	ld	0 (iy), #0x00
                            748 ;src/game/depot.c:143: trainList[nbTrainList].wagon[1] = 0;
   4523 ED 5B E0 89   [20]  749 	ld	de,(_nbTrainList)
   4527 16 00         [ 7]  750 	ld	d,#0x00
   4529 6B            [ 4]  751 	ld	l, e
   452A 62            [ 4]  752 	ld	h, d
   452B 29            [11]  753 	add	hl, hl
   452C 29            [11]  754 	add	hl, hl
   452D 29            [11]  755 	add	hl, hl
   452E 19            [11]  756 	add	hl, de
   452F EB            [ 4]  757 	ex	de,hl
   4530 FD 2A DA 89   [20]  758 	ld	iy,(_trainList)
   4534 FD 19         [15]  759 	add	iy, de
   4536 FD 23         [10]  760 	inc	iy
   4538 FD 23         [10]  761 	inc	iy
   453A FD 36 00 00   [19]  762 	ld	0 (iy), #0x00
                            763 ;src/game/depot.c:144: trainList[nbTrainList].wagon[2] = 0;
   453E ED 5B E0 89   [20]  764 	ld	de,(_nbTrainList)
   4542 16 00         [ 7]  765 	ld	d,#0x00
   4544 6B            [ 4]  766 	ld	l, e
   4545 62            [ 4]  767 	ld	h, d
   4546 29            [11]  768 	add	hl, hl
   4547 29            [11]  769 	add	hl, hl
   4548 29            [11]  770 	add	hl, hl
   4549 19            [11]  771 	add	hl, de
   454A EB            [ 4]  772 	ex	de,hl
   454B FD 2A DA 89   [20]  773 	ld	iy,(_trainList)
   454F FD 19         [15]  774 	add	iy, de
   4551 FD 23         [10]  775 	inc	iy
   4553 FD 23         [10]  776 	inc	iy
   4555 FD 23         [10]  777 	inc	iy
   4557 FD 36 00 00   [19]  778 	ld	0 (iy), #0x00
                            779 ;src/game/depot.c:145: trainList[nbTrainList].wagon[3] = 0;
   455B ED 5B E0 89   [20]  780 	ld	de,(_nbTrainList)
   455F 16 00         [ 7]  781 	ld	d,#0x00
   4561 6B            [ 4]  782 	ld	l, e
   4562 62            [ 4]  783 	ld	h, d
   4563 29            [11]  784 	add	hl, hl
   4564 29            [11]  785 	add	hl, hl
   4565 29            [11]  786 	add	hl, hl
   4566 19            [11]  787 	add	hl, de
   4567 EB            [ 4]  788 	ex	de,hl
   4568 FD 2A DA 89   [20]  789 	ld	iy,(_trainList)
   456C FD 19         [15]  790 	add	iy, de
   456E 11 04 00      [10]  791 	ld	de,#0x0004
   4571 FD 19         [15]  792 	add	iy, de
   4573 FD 36 00 00   [19]  793 	ld	0 (iy), #0x00
                            794 ;src/game/depot.c:146: trainList[nbTrainList].wagon[4] = 0;
   4577 ED 5B E0 89   [20]  795 	ld	de,(_nbTrainList)
   457B 16 00         [ 7]  796 	ld	d,#0x00
   457D 6B            [ 4]  797 	ld	l, e
   457E 62            [ 4]  798 	ld	h, d
   457F 29            [11]  799 	add	hl, hl
   4580 29            [11]  800 	add	hl, hl
   4581 29            [11]  801 	add	hl, hl
   4582 19            [11]  802 	add	hl, de
   4583 EB            [ 4]  803 	ex	de,hl
   4584 FD 2A DA 89   [20]  804 	ld	iy,(_trainList)
   4588 FD 19         [15]  805 	add	iy, de
   458A 11 05 00      [10]  806 	ld	de,#0x0005
   458D FD 19         [15]  807 	add	iy, de
   458F FD 36 00 00   [19]  808 	ld	0 (iy), #0x00
                            809 ;src/game/depot.c:147: trainList[nbTrainList].wagon[5] = 0;
   4593 ED 5B E0 89   [20]  810 	ld	de,(_nbTrainList)
   4597 16 00         [ 7]  811 	ld	d,#0x00
   4599 6B            [ 4]  812 	ld	l, e
   459A 62            [ 4]  813 	ld	h, d
   459B 29            [11]  814 	add	hl, hl
   459C 29            [11]  815 	add	hl, hl
   459D 29            [11]  816 	add	hl, hl
   459E 19            [11]  817 	add	hl, de
   459F EB            [ 4]  818 	ex	de,hl
   45A0 FD 2A DA 89   [20]  819 	ld	iy,(_trainList)
   45A4 FD 19         [15]  820 	add	iy, de
   45A6 11 06 00      [10]  821 	ld	de,#0x0006
   45A9 FD 19         [15]  822 	add	iy, de
   45AB FD 36 00 00   [19]  823 	ld	0 (iy), #0x00
                            824 ;src/game/depot.c:148: trainList[nbTrainList].wagon[6] = 0;
   45AF ED 5B E0 89   [20]  825 	ld	de,(_nbTrainList)
   45B3 16 00         [ 7]  826 	ld	d,#0x00
   45B5 6B            [ 4]  827 	ld	l, e
   45B6 62            [ 4]  828 	ld	h, d
   45B7 29            [11]  829 	add	hl, hl
   45B8 29            [11]  830 	add	hl, hl
   45B9 29            [11]  831 	add	hl, hl
   45BA 19            [11]  832 	add	hl, de
   45BB EB            [ 4]  833 	ex	de,hl
   45BC FD 2A DA 89   [20]  834 	ld	iy,(_trainList)
   45C0 FD 19         [15]  835 	add	iy, de
   45C2 11 07 00      [10]  836 	ld	de,#0x0007
   45C5 FD 19         [15]  837 	add	iy, de
   45C7 FD 36 00 00   [19]  838 	ld	0 (iy), #0x00
                            839 ;src/game/depot.c:149: trainList[nbTrainList].wagon[7] = 0;
   45CB ED 5B E0 89   [20]  840 	ld	de,(_nbTrainList)
   45CF 16 00         [ 7]  841 	ld	d,#0x00
   45D1 6B            [ 4]  842 	ld	l, e
   45D2 62            [ 4]  843 	ld	h, d
   45D3 29            [11]  844 	add	hl, hl
   45D4 29            [11]  845 	add	hl, hl
   45D5 29            [11]  846 	add	hl, hl
   45D6 19            [11]  847 	add	hl, de
   45D7 EB            [ 4]  848 	ex	de,hl
   45D8 FD 2A DA 89   [20]  849 	ld	iy,(_trainList)
   45DC FD 19         [15]  850 	add	iy, de
   45DE 11 08 00      [10]  851 	ld	de,#0x0008
   45E1 FD 19         [15]  852 	add	iy, de
   45E3 FD 36 00 00   [19]  853 	ld	0 (iy), #0x00
                            854 ;src/game/depot.c:152: nbTrainList++;
   45E7 21 E0 89      [10]  855 	ld	hl, #_nbTrainList+0
   45EA 34            [11]  856 	inc	(hl)
   45EB                     857 00110$:
                            858 ;src/game/depot.c:155: return returnChoice;
   45EB 69            [ 4]  859 	ld	l,c
   45EC DD F9         [10]  860 	ld	sp, ix
   45EE DD E1         [14]  861 	pop	ix
   45F0 C9            [10]  862 	ret
   45F1                     863 ___str_2:
   45F1 31 33 30 20 42      864 	.ascii "130 B"
   45F6 00                  865 	.db 0x00
   45F7                     866 ___str_3:
   45F7 00                  867 	.db 0x00
   45F8                     868 ___str_4:
   45F8 50 72 6F 70 75 6C   869 	.ascii "Propulsion: steam"
        73 69 6F 6E 3A 20
        73 74 65 61 6D
   4609 00                  870 	.db 0x00
   460A                     871 ___str_5:
   460A 45 6E 74 72 79 20   872 	.ascii "Entry of service: 1909"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 30 39
   4620 00                  873 	.db 0x00
   4621                     874 ___str_6:
   4621 4D 61 78 69 6D 75   875 	.ascii "Maximum speed: 80 km/h"
        6D 20 73 70 65 65
        64 3A 20 38 30 20
        6B 6D 2F 68
   4637 00                  876 	.db 0x00
   4638                     877 ___str_7:
   4638 50 72 69 63 65 3A   878 	.ascii "Price: 1000$"
        20 31 30 30 30 24
   4644 00                  879 	.db 0x00
   4645                     880 ___str_8:
   4645 31 34 31 20 54 41   881 	.ascii "141 TA"
   464B 00                  882 	.db 0x00
   464C                     883 ___str_9:
   464C 45 6E 74 72 79 20   884 	.ascii "Entry of service: 1911"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 31 31
   4662 00                  885 	.db 0x00
   4663                     886 ___str_10:
   4663 4D 61 78 69 6D 75   887 	.ascii "Maximum speed: 70 km/h"
        6D 20 73 70 65 65
        64 3A 20 37 30 20
        6B 6D 2F 68
   4679 00                  888 	.db 0x00
   467A                     889 ___str_11:
   467A 50 72 69 63 65 3A   890 	.ascii "Price: 900$"
        20 39 30 30 24
   4685 00                  891 	.db 0x00
   4686                     892 ___str_12:
   4686 31 34 32 20 41 54   893 	.ascii "142 AT"
   468C 00                  894 	.db 0x00
   468D                     895 ___str_13:
   468D 45 6E 74 72 79 20   896 	.ascii "Entry of service: 1926"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 32 36
   46A3 00                  897 	.db 0x00
   46A4                     898 ___str_14:
   46A4 4D 61 78 69 6D 75   899 	.ascii "Maximum speed: 95 km/h"
        6D 20 73 70 65 65
        64 3A 20 39 35 20
        6B 6D 2F 68
   46BA 00                  900 	.db 0x00
   46BB                     901 ___str_15:
   46BB 50 72 69 63 65 3A   902 	.ascii "Price: 1500$"
        20 31 35 30 30 24
   46C7 00                  903 	.db 0x00
   46C8                     904 ___str_16:
   46C8 31 34 31 20 50      905 	.ascii "141 P"
   46CD 00                  906 	.db 0x00
   46CE                     907 ___str_17:
   46CE 45 6E 74 72 79 20   908 	.ascii "Entry of service: 1942"
        6F 66 20 73 65 72
        76 69 63 65 3A 20
        31 39 34 32
   46E4 00                  909 	.db 0x00
   46E5                     910 ___str_18:
   46E5 4D 61 78 69 6D 75   911 	.ascii "Maximum speed: 105 km/h"
        6D 20 73 70 65 65
        64 3A 20 31 30 35
        20 6B 6D 2F 68
   46FC 00                  912 	.db 0x00
   46FD                     913 ___str_19:
   46FD 50 72 69 63 65 3A   914 	.ascii "Price: 2000$"
        20 32 30 30 30 24
   4709 00                  915 	.db 0x00
                            916 ;src/game/depot.c:158: void buyLocomotive()
                            917 ;	---------------------------------
                            918 ; Function buyLocomotive
                            919 ; ---------------------------------
   470A                     920 _buyLocomotive::
                            921 ;src/game/depot.c:160: u8 exit=0;
                            922 ;src/game/depot.c:162: u8 iSelect=0;
   470A 01 00 00      [10]  923 	ld	bc,#0x0000
                            924 ;src/game/depot.c:164: drawAllLocomotives(iSelect);
   470D C5            [11]  925 	push	bc
   470E AF            [ 4]  926 	xor	a, a
   470F F5            [11]  927 	push	af
   4710 33            [ 6]  928 	inc	sp
   4711 CD 4E 43      [17]  929 	call	_drawAllLocomotives
   4714 33            [ 6]  930 	inc	sp
   4715 C1            [10]  931 	pop	bc
                            932 ;src/game/depot.c:166: do
   4716                     933 00124$:
                            934 ;src/game/depot.c:168: cpct_scanKeyboard(); 
   4716 C5            [11]  935 	push	bc
   4717 CD 0A 7A      [17]  936 	call	_cpct_scanKeyboard
   471A 21 00 01      [10]  937 	ld	hl,#0x0100
   471D CD 64 73      [17]  938 	call	_cpct_isKeyPressed
   4720 7D            [ 4]  939 	ld	a,l
   4721 C1            [10]  940 	pop	bc
   4722 B7            [ 4]  941 	or	a, a
   4723 28 24         [12]  942 	jr	Z,00122$
                            943 ;src/game/depot.c:172: if (iSelect>0)
   4725 78            [ 4]  944 	ld	a,b
   4726 B7            [ 4]  945 	or	a, a
   4727 28 15         [12]  946 	jr	Z,00140$
                            947 ;src/game/depot.c:174: iSelect--;
   4729 05            [ 4]  948 	dec	b
                            949 ;src/game/depot.c:175: drawLocomotive(iSelect, iSelect);
   472A C5            [11]  950 	push	bc
   472B C5            [11]  951 	push	bc
   472C 33            [ 6]  952 	inc	sp
   472D C5            [11]  953 	push	bc
   472E 33            [ 6]  954 	inc	sp
   472F CD B9 41      [17]  955 	call	_drawLocomotive
   4732 F1            [10]  956 	pop	af
   4733 C1            [10]  957 	pop	bc
                            958 ;src/game/depot.c:176: drawLocomotive(iSelect+1, iSelect);
   4734 50            [ 4]  959 	ld	d,b
   4735 14            [ 4]  960 	inc	d
   4736 C5            [11]  961 	push	bc
   4737 4A            [ 4]  962 	ld	c, d
   4738 C5            [11]  963 	push	bc
   4739 CD B9 41      [17]  964 	call	_drawLocomotive
   473C F1            [10]  965 	pop	af
   473D C1            [10]  966 	pop	bc
                            967 ;src/game/depot.c:178: for(i=0; i<14000; i++) {} // wait loop
   473E                     968 00140$:
   473E 11 B0 36      [10]  969 	ld	de,#0x36B0
   4741                     970 00129$:
   4741 1B            [ 6]  971 	dec	de
   4742 7A            [ 4]  972 	ld	a,d
   4743 B3            [ 4]  973 	or	a,e
   4744 20 FB         [12]  974 	jr	NZ,00129$
   4746 C3 BB 47      [10]  975 	jp	00125$
   4749                     976 00122$:
                            977 ;src/game/depot.c:180: else if ( cpct_isKeyPressed(Key_CursorDown) )
   4749 C5            [11]  978 	push	bc
   474A 21 00 04      [10]  979 	ld	hl,#0x0400
   474D CD 64 73      [17]  980 	call	_cpct_isKeyPressed
   4750 7D            [ 4]  981 	ld	a,l
   4751 C1            [10]  982 	pop	bc
   4752 B7            [ 4]  983 	or	a, a
   4753 28 24         [12]  984 	jr	Z,00119$
                            985 ;src/game/depot.c:182: if (iSelect<11)
   4755 78            [ 4]  986 	ld	a,b
   4756 D6 0B         [ 7]  987 	sub	a, #0x0B
   4758 30 15         [12]  988 	jr	NC,00144$
                            989 ;src/game/depot.c:184: iSelect++;
   475A 04            [ 4]  990 	inc	b
                            991 ;src/game/depot.c:185: drawLocomotive(iSelect, iSelect);
   475B C5            [11]  992 	push	bc
   475C C5            [11]  993 	push	bc
   475D 33            [ 6]  994 	inc	sp
   475E C5            [11]  995 	push	bc
   475F 33            [ 6]  996 	inc	sp
   4760 CD B9 41      [17]  997 	call	_drawLocomotive
   4763 F1            [10]  998 	pop	af
   4764 C1            [10]  999 	pop	bc
                           1000 ;src/game/depot.c:186: drawLocomotive(iSelect-1, iSelect);
   4765 50            [ 4] 1001 	ld	d,b
   4766 15            [ 4] 1002 	dec	d
   4767 C5            [11] 1003 	push	bc
   4768 4A            [ 4] 1004 	ld	c, d
   4769 C5            [11] 1005 	push	bc
   476A CD B9 41      [17] 1006 	call	_drawLocomotive
   476D F1            [10] 1007 	pop	af
   476E C1            [10] 1008 	pop	bc
                           1009 ;src/game/depot.c:188: for(i=0; i<14000; i++) {} // wait loop
   476F                    1010 00144$:
   476F 11 B0 36      [10] 1011 	ld	de,#0x36B0
   4772                    1012 00132$:
   4772 1B            [ 6] 1013 	dec	de
   4773 7A            [ 4] 1014 	ld	a,d
   4774 B3            [ 4] 1015 	or	a,e
   4775 20 FB         [12] 1016 	jr	NZ,00132$
   4777 18 42         [12] 1017 	jr	00125$
   4779                    1018 00119$:
                           1019 ;src/game/depot.c:190: else if ( cpct_isKeyPressed(Key_Return) )
   4779 C5            [11] 1020 	push	bc
   477A 21 02 04      [10] 1021 	ld	hl,#0x0402
   477D CD 64 73      [17] 1022 	call	_cpct_isKeyPressed
   4780 7D            [ 4] 1023 	ld	a,l
   4781 C1            [10] 1024 	pop	bc
   4782 B7            [ 4] 1025 	or	a, a
   4783 28 28         [12] 1026 	jr	Z,00116$
                           1027 ;src/game/depot.c:192: if(iSelect<locDelocked)
   4785 21 DF 89      [10] 1028 	ld	hl,#_locDelocked
   4788 78            [ 4] 1029 	ld	a,b
   4789 96            [ 7] 1030 	sub	a, (hl)
   478A 30 17         [12] 1031 	jr	NC,00149$
                           1032 ;src/game/depot.c:194: if(confirmBuyLocomotive(iSelect) == 1)
   478C C5            [11] 1033 	push	bc
   478D C5            [11] 1034 	push	bc
   478E 33            [ 6] 1035 	inc	sp
   478F CD 7E 43      [17] 1036 	call	_confirmBuyLocomotive
   4792 33            [ 6] 1037 	inc	sp
   4793 C1            [10] 1038 	pop	bc
   4794 2D            [ 4] 1039 	dec	l
   4795 20 04         [12] 1040 	jr	NZ,00108$
                           1041 ;src/game/depot.c:195: exit=1;
   4797 0E 01         [ 7] 1042 	ld	c,#0x01
   4799 18 08         [12] 1043 	jr	00149$
   479B                    1044 00108$:
                           1045 ;src/game/depot.c:197: drawAllLocomotives(iSelect);
   479B C5            [11] 1046 	push	bc
   479C C5            [11] 1047 	push	bc
   479D 33            [ 6] 1048 	inc	sp
   479E CD 4E 43      [17] 1049 	call	_drawAllLocomotives
   47A1 33            [ 6] 1050 	inc	sp
   47A2 C1            [10] 1051 	pop	bc
                           1052 ;src/game/depot.c:200: for(i=0; i<14000; i++) {} // wait loop
   47A3                    1053 00149$:
   47A3 11 B0 36      [10] 1054 	ld	de,#0x36B0
   47A6                    1055 00135$:
   47A6 1B            [ 6] 1056 	dec	de
   47A7 7A            [ 4] 1057 	ld	a,d
   47A8 B3            [ 4] 1058 	or	a,e
   47A9 20 FB         [12] 1059 	jr	NZ,00135$
   47AB 18 0E         [12] 1060 	jr	00125$
   47AD                    1061 00116$:
                           1062 ;src/game/depot.c:202: else if ( cpct_isKeyPressed(Key_Esc) )
   47AD C5            [11] 1063 	push	bc
   47AE 21 08 04      [10] 1064 	ld	hl,#0x0408
   47B1 CD 64 73      [17] 1065 	call	_cpct_isKeyPressed
   47B4 7D            [ 4] 1066 	ld	a,l
   47B5 C1            [10] 1067 	pop	bc
   47B6 B7            [ 4] 1068 	or	a, a
   47B7 28 02         [12] 1069 	jr	Z,00125$
                           1070 ;src/game/depot.c:203: exit=1;
   47B9 0E 01         [ 7] 1071 	ld	c,#0x01
   47BB                    1072 00125$:
                           1073 ;src/game/depot.c:205: while(!exit);
   47BB 79            [ 4] 1074 	ld	a,c
   47BC B7            [ 4] 1075 	or	a, a
   47BD CA 16 47      [10] 1076 	jp	Z,00124$
                           1077 ;src/game/depot.c:207: putM2();
   47C0 C3 42 5B      [10] 1078 	jp  _putM2
                           1079 	.area _CODE
                           1080 	.area _INITIALIZER
                           1081 	.area _CABS (ABS)
