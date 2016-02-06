                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 22:37:07 2016
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
                             15 	.globl _cpct_getScreenPtr
                             16 	.globl _cpct_drawSolidBox
                             17 	.globl _cpct_drawSprite
                             18 	.globl _cpct_px2byteM0
                             19 	.globl _cpct_isKeyPressed
                             20 	.globl _cpct_scanKeyboard
                             21 	.globl _cpct_memset
                             22 	.globl _railroadDepot
                             23 	.globl _buyLocomotive
                             24 ;--------------------------------------------------------
                             25 ; special function registers
                             26 ;--------------------------------------------------------
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _DATA
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _INITIALIZED
                             35 ;--------------------------------------------------------
                             36 ; absolute external ram data
                             37 ;--------------------------------------------------------
                             38 	.area _DABS (ABS)
                             39 ;--------------------------------------------------------
                             40 ; global & static initialisations
                             41 ;--------------------------------------------------------
                             42 	.area _HOME
                             43 	.area _GSINIT
                             44 	.area _GSFINAL
                             45 	.area _GSINIT
                             46 ;--------------------------------------------------------
                             47 ; Home
                             48 ;--------------------------------------------------------
                             49 	.area _HOME
                             50 	.area _HOME
                             51 ;--------------------------------------------------------
                             52 ; code
                             53 ;--------------------------------------------------------
                             54 	.area _CODE
                             55 ;src/game/depot.c:3: void railroadDepot()
                             56 ;	---------------------------------
                             57 ; Function railroadDepot
                             58 ; ---------------------------------
   4130                      59 _railroadDepot::
   4130 DD E5         [15]   60 	push	ix
   4132 DD 21 00 00   [14]   61 	ld	ix,#0
   4136 DD 39         [15]   62 	add	ix,sp
   4138 F5            [11]   63 	push	af
   4139 F5            [11]   64 	push	af
   413A 3B            [ 6]   65 	dec	sp
                             66 ;src/game/depot.c:5: u8 exit=0;
   413B DD 36 FF 00   [19]   67 	ld	-1 (ix),#0x00
                             68 ;src/game/depot.c:7: cpct_clearScreen(0b11111111);
   413F 21 00 40      [10]   69 	ld	hl,#0x4000
   4142 E5            [11]   70 	push	hl
   4143 3E FF         [ 7]   71 	ld	a,#0xFF
   4145 F5            [11]   72 	push	af
   4146 33            [ 6]   73 	inc	sp
   4147 26 C0         [ 7]   74 	ld	h, #0xC0
   4149 E5            [11]   75 	push	hl
   414A CD 74 6A      [17]   76 	call	_cpct_memset
                             77 ;src/game/depot.c:9: do
   414D                      78 00108$:
                             79 ;src/game/depot.c:11: cpct_scanKeyboard(); 
   414D CD C8 6B      [17]   80 	call	_cpct_scanKeyboard
                             81 ;src/game/depot.c:13: if ( cpct_isKeyPressed(Key_Esc) )
   4150 21 08 04      [10]   82 	ld	hl,#0x0408
   4153 CD 24 68      [17]   83 	call	_cpct_isKeyPressed
   4156 7D            [ 4]   84 	ld	a,l
   4157 B7            [ 4]   85 	or	a, a
   4158 28 06         [12]   86 	jr	Z,00106$
                             87 ;src/game/depot.c:14: exit=1;
   415A DD 36 FF 01   [19]   88 	ld	-1 (ix),#0x01
   415E 18 2F         [12]   89 	jr	00109$
   4160                      90 00106$:
                             91 ;src/game/depot.c:15: else if(cpct_isKeyPressed(Key_Return) )
   4160 21 02 04      [10]   92 	ld	hl,#0x0402
   4163 CD 24 68      [17]   93 	call	_cpct_isKeyPressed
   4166 7D            [ 4]   94 	ld	a,l
   4167 B7            [ 4]   95 	or	a, a
   4168 28 25         [12]   96 	jr	Z,00109$
                             97 ;src/game/depot.c:17: const char *txtMenuChoice[] = { 
   416A 21 00 00      [10]   98 	ld	hl,#0x0000
   416D 39            [11]   99 	add	hl,sp
   416E 5D            [ 4]  100 	ld	e,l
   416F 54            [ 4]  101 	ld	d,h
   4170 36 9A         [10]  102 	ld	(hl),#<(___str_0)
   4172 23            [ 6]  103 	inc	hl
   4173 36 41         [10]  104 	ld	(hl),#>(___str_0)
   4175 6B            [ 4]  105 	ld	l, e
   4176 62            [ 4]  106 	ld	h, d
   4177 23            [ 6]  107 	inc	hl
   4178 23            [ 6]  108 	inc	hl
   4179 36 AB         [10]  109 	ld	(hl),#<(___str_1)
   417B 23            [ 6]  110 	inc	hl
   417C 36 41         [10]  111 	ld	(hl),#>(___str_1)
                            112 ;src/game/depot.c:21: u8 menuChoice = drawMenu(txtMenuChoice,2);
   417E 3E 02         [ 7]  113 	ld	a,#0x02
   4180 F5            [11]  114 	push	af
   4181 33            [ 6]  115 	inc	sp
   4182 D5            [11]  116 	push	de
   4183 CD 2E 5A      [17]  117 	call	_drawMenu
   4186 F1            [10]  118 	pop	af
   4187 33            [ 6]  119 	inc	sp
   4188 7D            [ 4]  120 	ld	a,l
                            121 ;src/game/depot.c:23: if(menuChoice == 0)
   4189 B7            [ 4]  122 	or	a, a
   418A 20 03         [12]  123 	jr	NZ,00109$
                            124 ;src/game/depot.c:24: buyLocomotive();
   418C CD B9 41      [17]  125 	call	_buyLocomotive
   418F                     126 00109$:
                            127 ;src/game/depot.c:28: while(!exit);
   418F DD 7E FF      [19]  128 	ld	a,-1 (ix)
   4192 B7            [ 4]  129 	or	a, a
   4193 28 B8         [12]  130 	jr	Z,00108$
   4195 DD F9         [10]  131 	ld	sp, ix
   4197 DD E1         [14]  132 	pop	ix
   4199 C9            [10]  133 	ret
   419A                     134 ___str_0:
   419A 42 75 79 20 61 20   135 	.ascii "Buy a locomotive"
        6C 6F 63 6F 6D 6F
        74 69 76 65
   41AA 00                  136 	.db 0x00
   41AB                     137 ___str_1:
   41AB 42 61 63 6B 20 74   138 	.ascii "Back to depot"
        6F 20 64 65 70 6F
        74
   41B8 00                  139 	.db 0x00
                            140 ;src/game/depot.c:31: void buyLocomotive()
                            141 ;	---------------------------------
                            142 ; Function buyLocomotive
                            143 ; ---------------------------------
   41B9                     144 _buyLocomotive::
   41B9 DD E5         [15]  145 	push	ix
   41BB DD 21 00 00   [14]  146 	ld	ix,#0
   41BF DD 39         [15]  147 	add	ix,sp
   41C1 F5            [11]  148 	push	af
   41C2 F5            [11]  149 	push	af
   41C3 3B            [ 6]  150 	dec	sp
                            151 ;src/game/depot.c:33: u8 exit=0;
   41C4 DD 36 FB 00   [19]  152 	ld	-5 (ix),#0x00
                            153 ;src/game/depot.c:37: putM0();
   41C8 CD 01 56      [17]  154 	call	_putM0
                            155 ;src/game/depot.c:39: cpct_clearScreen(cpct_px2byteM0(14,15));
   41CB 21 0E 0F      [10]  156 	ld	hl,#0x0F0E
   41CE E5            [11]  157 	push	hl
   41CF CD 58 6A      [17]  158 	call	_cpct_px2byteM0
   41D2 65            [ 4]  159 	ld	h,l
   41D3 01 00 40      [10]  160 	ld	bc,#0x4000
   41D6 C5            [11]  161 	push	bc
   41D7 E5            [11]  162 	push	hl
   41D8 33            [ 6]  163 	inc	sp
   41D9 21 00 C0      [10]  164 	ld	hl,#0xC000
   41DC E5            [11]  165 	push	hl
   41DD CD 74 6A      [17]  166 	call	_cpct_memset
                            167 ;src/game/depot.c:41: for(i=0; i<12; i++)
   41E0 1E 00         [ 7]  168 	ld	e,#0x00
   41E2                     169 00110$:
                            170 ;src/game/depot.c:43: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*(i%3), 30+40*(i%4));
   41E2 7B            [ 4]  171 	ld	a,e
   41E3 E6 03         [ 7]  172 	and	a, #0x03
   41E5 4F            [ 4]  173 	ld	c,a
   41E6 87            [ 4]  174 	add	a, a
   41E7 87            [ 4]  175 	add	a, a
   41E8 81            [ 4]  176 	add	a, c
   41E9 87            [ 4]  177 	add	a, a
   41EA 87            [ 4]  178 	add	a, a
   41EB 87            [ 4]  179 	add	a, a
   41EC DD 77 FF      [19]  180 	ld	-1 (ix), a
   41EF C6 1E         [ 7]  181 	add	a, #0x1E
   41F1 57            [ 4]  182 	ld	d,a
   41F2 D5            [11]  183 	push	de
   41F3 16 03         [ 7]  184 	ld	d,#0x03
   41F5 D5            [11]  185 	push	de
   41F6 CD 21 69      [17]  186 	call	__moduchar
   41F9 F1            [10]  187 	pop	af
   41FA 7D            [ 4]  188 	ld	a,l
   41FB D1            [10]  189 	pop	de
   41FC 4F            [ 4]  190 	ld	c,a
   41FD 87            [ 4]  191 	add	a, a
   41FE 81            [ 4]  192 	add	a, c
   41FF 87            [ 4]  193 	add	a, a
   4200 87            [ 4]  194 	add	a, a
   4201 87            [ 4]  195 	add	a, a
   4202 81            [ 4]  196 	add	a, c
   4203 DD 77 FE      [19]  197 	ld	-2 (ix), a
   4206 C6 05         [ 7]  198 	add	a, #0x05
   4208 D5            [11]  199 	push	de
   4209 D5            [11]  200 	push	de
   420A 33            [ 6]  201 	inc	sp
   420B F5            [11]  202 	push	af
   420C 33            [ 6]  203 	inc	sp
   420D 21 00 C0      [10]  204 	ld	hl,#0xC000
   4210 E5            [11]  205 	push	hl
   4211 CD A8 6B      [17]  206 	call	_cpct_getScreenPtr
   4214 D1            [10]  207 	pop	de
                            208 ;src/game/depot.c:46: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
   4215 E5            [11]  209 	push	hl
   4216 D5            [11]  210 	push	de
   4217 21 0B 0B      [10]  211 	ld	hl,#0x0B0B
   421A E5            [11]  212 	push	hl
   421B CD 58 6A      [17]  213 	call	_cpct_px2byteM0
   421E 7D            [ 4]  214 	ld	a, l
   421F D1            [10]  215 	pop	de
   4220 57            [ 4]  216 	ld	d,a
   4221 C1            [10]  217 	pop	bc
   4222 D5            [11]  218 	push	de
   4223 21 16 16      [10]  219 	ld	hl,#0x1616
   4226 E5            [11]  220 	push	hl
   4227 D5            [11]  221 	push	de
   4228 33            [ 6]  222 	inc	sp
   4229 C5            [11]  223 	push	bc
   422A CD EF 6A      [17]  224 	call	_cpct_drawSolidBox
   422D F1            [10]  225 	pop	af
   422E F1            [10]  226 	pop	af
   422F 33            [ 6]  227 	inc	sp
   4230 D1            [10]  228 	pop	de
                            229 ;src/game/depot.c:48: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*(i%3)+1, 30+40*(i%4)+1);
   4231 DD 7E FF      [19]  230 	ld	a,-1 (ix)
   4234 C6 1F         [ 7]  231 	add	a, #0x1F
   4236 67            [ 4]  232 	ld	h,a
   4237 DD 7E FE      [19]  233 	ld	a,-2 (ix)
   423A C6 06         [ 7]  234 	add	a, #0x06
   423C D5            [11]  235 	push	de
   423D E5            [11]  236 	push	hl
   423E 33            [ 6]  237 	inc	sp
   423F F5            [11]  238 	push	af
   4240 33            [ 6]  239 	inc	sp
   4241 21 00 C0      [10]  240 	ld	hl,#0xC000
   4244 E5            [11]  241 	push	hl
   4245 CD A8 6B      [17]  242 	call	_cpct_getScreenPtr
   4248 D1            [10]  243 	pop	de
                            244 ;src/game/depot.c:46: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
   4249 DD 75 FC      [19]  245 	ld	-4 (ix),l
   424C DD 74 FD      [19]  246 	ld	-3 (ix),h
                            247 ;src/game/depot.c:50: if(i<locDelocked)
   424F 21 7D 7B      [10]  248 	ld	hl,#_locDelocked
   4252 7B            [ 4]  249 	ld	a,e
   4253 96            [ 7]  250 	sub	a, (hl)
   4254 30 16         [12]  251 	jr	NC,00102$
                            252 ;src/game/depot.c:52: cpct_drawSprite(l141P, p_video, 20, 20);
   4256 01 ED 64      [10]  253 	ld	bc,#_l141P
   4259 D5            [11]  254 	push	de
   425A 21 14 14      [10]  255 	ld	hl,#0x1414
   425D E5            [11]  256 	push	hl
   425E DD 6E FC      [19]  257 	ld	l,-4 (ix)
   4261 DD 66 FD      [19]  258 	ld	h,-3 (ix)
   4264 E5            [11]  259 	push	hl
   4265 C5            [11]  260 	push	bc
   4266 CD 7C 68      [17]  261 	call	_cpct_drawSprite
   4269 D1            [10]  262 	pop	de
   426A 18 14         [12]  263 	jr	00111$
   426C                     264 00102$:
                            265 ;src/game/depot.c:56: cpct_drawSprite(lock, p_video, 20, 20);
   426C 01 5D 63      [10]  266 	ld	bc,#_lock
   426F D5            [11]  267 	push	de
   4270 21 14 14      [10]  268 	ld	hl,#0x1414
   4273 E5            [11]  269 	push	hl
   4274 DD 6E FC      [19]  270 	ld	l,-4 (ix)
   4277 DD 66 FD      [19]  271 	ld	h,-3 (ix)
   427A E5            [11]  272 	push	hl
   427B C5            [11]  273 	push	bc
   427C CD 7C 68      [17]  274 	call	_cpct_drawSprite
   427F D1            [10]  275 	pop	de
   4280                     276 00111$:
                            277 ;src/game/depot.c:41: for(i=0; i<12; i++)
   4280 1C            [ 4]  278 	inc	e
   4281 7B            [ 4]  279 	ld	a,e
   4282 D6 0C         [ 7]  280 	sub	a, #0x0C
   4284 DA E2 41      [10]  281 	jp	C,00110$
                            282 ;src/game/depot.c:61: do
   4287                     283 00107$:
                            284 ;src/game/depot.c:63: cpct_scanKeyboard(); 
   4287 CD C8 6B      [17]  285 	call	_cpct_scanKeyboard
                            286 ;src/game/depot.c:65: if ( cpct_isKeyPressed(Key_Esc) )
   428A 21 08 04      [10]  287 	ld	hl,#0x0408
   428D CD 24 68      [17]  288 	call	_cpct_isKeyPressed
   4290 7D            [ 4]  289 	ld	a,l
   4291 B7            [ 4]  290 	or	a, a
   4292 28 04         [12]  291 	jr	Z,00108$
                            292 ;src/game/depot.c:66: exit=1;
   4294 DD 36 FB 01   [19]  293 	ld	-5 (ix),#0x01
   4298                     294 00108$:
                            295 ;src/game/depot.c:68: while(!exit);
   4298 DD 7E FB      [19]  296 	ld	a,-5 (ix)
   429B B7            [ 4]  297 	or	a, a
   429C 28 E9         [12]  298 	jr	Z,00107$
                            299 ;src/game/depot.c:70: putM2();
   429E CD 28 56      [17]  300 	call	_putM2
   42A1 DD F9         [10]  301 	ld	sp, ix
   42A3 DD E1         [14]  302 	pop	ix
   42A5 C9            [10]  303 	ret
                            304 	.area _CODE
                            305 	.area _INITIALIZER
                            306 	.area _CABS (ABS)
