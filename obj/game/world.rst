                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 17:23:06 2016
                              5 ;--------------------------------------------------------
                              6 	.module world
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _cpct_setSeed_mxor
                             13 	.globl _cpct_getRandom_mxor_u16
                             14 	.globl _cpct_getRandom_mxor_u8
                             15 	.globl _cpct_getRandomUniform_u8_f
                             16 	.globl _cpct_getScreenPtr
                             17 	.globl _cpct_count2VSYNC
                             18 	.globl _cpct_drawSolidBox
                             19 	.globl _cpct_drawSprite
                             20 	.globl _cpct_px2byteM1
                             21 	.globl _cpct_getBit
                             22 	.globl _cpct_memset
                             23 	.globl _drawCursor
                             24 	.globl _patternTile
                             25 	.globl _generateWorld
                             26 	.globl _drawTile
                             27 	.globl _drawScrolls
                             28 	.globl _drawWorld
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
                             60 ;src/game/world.c:3: void drawCursor(u8 x, u8 y, u8 color)
                             61 ;	---------------------------------
                             62 ; Function drawCursor
                             63 ; ---------------------------------
   518E                      64 _drawCursor::
   518E DD E5         [15]   65 	push	ix
   5190 DD 21 00 00   [14]   66 	ld	ix,#0
   5194 DD 39         [15]   67 	add	ix,sp
   5196 3B            [ 6]   68 	dec	sp
                             69 ;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   5197 DD 7E 05      [19]   70 	ld	a,5 (ix)
   519A 07            [ 4]   71 	rlca
   519B 07            [ 4]   72 	rlca
   519C 07            [ 4]   73 	rlca
   519D 07            [ 4]   74 	rlca
   519E E6 F0         [ 7]   75 	and	a,#0xF0
   51A0 5F            [ 4]   76 	ld	e,a
   51A1 DD 7E 04      [19]   77 	ld	a,4 (ix)
   51A4 87            [ 4]   78 	add	a, a
   51A5 87            [ 4]   79 	add	a, a
   51A6 57            [ 4]   80 	ld	d,a
   51A7 D5            [11]   81 	push	de
   51A8 7B            [ 4]   82 	ld	a,e
   51A9 F5            [11]   83 	push	af
   51AA 33            [ 6]   84 	inc	sp
   51AB D5            [11]   85 	push	de
   51AC 33            [ 6]   86 	inc	sp
   51AD 21 00 C0      [10]   87 	ld	hl,#0xC000
   51B0 E5            [11]   88 	push	hl
   51B1 CD EA 79      [17]   89 	call	_cpct_getScreenPtr
   51B4 D1            [10]   90 	pop	de
   51B5 4D            [ 4]   91 	ld	c, l
   51B6 44            [ 4]   92 	ld	b, h
                             93 ;src/game/world.c:8: switch(CURSOR_MODE)
   51B7 3E 10         [ 7]   94 	ld	a,#0x10
   51B9 FD 21 DE 89   [14]   95 	ld	iy,#_CURSOR_MODE
   51BD FD 96 00      [19]   96 	sub	a, 0 (iy)
   51C0 DA BF 53      [10]   97 	jp	C,00119$
   51C3 D5            [11]   98 	push	de
   51C4 FD 21 DE 89   [14]   99 	ld	iy,#_CURSOR_MODE
   51C8 FD 5E 00      [19]  100 	ld	e,0 (iy)
   51CB 16 00         [ 7]  101 	ld	d,#0x00
   51CD 21 D5 51      [10]  102 	ld	hl,#00125$
   51D0 19            [11]  103 	add	hl,de
   51D1 19            [11]  104 	add	hl,de
   51D2 19            [11]  105 	add	hl,de
   51D3 D1            [10]  106 	pop	de
   51D4 E9            [ 4]  107 	jp	(hl)
   51D5                     108 00125$:
   51D5 C3 08 52      [10]  109 	jp	00101$
   51D8 C3 DA 52      [10]  110 	jp	00102$
   51DB C3 E9 52      [10]  111 	jp	00103$
   51DE C3 F8 52      [10]  112 	jp	00104$
   51E1 C3 07 53      [10]  113 	jp	00105$
   51E4 C3 16 53      [10]  114 	jp	00106$
   51E7 C3 25 53      [10]  115 	jp	00107$
   51EA C3 34 53      [10]  116 	jp	00108$
   51ED C3 43 53      [10]  117 	jp	00109$
   51F0 C3 51 53      [10]  118 	jp	00110$
   51F3 C3 5F 53      [10]  119 	jp	00111$
   51F6 C3 6D 53      [10]  120 	jp	00112$
   51F9 C3 7B 53      [10]  121 	jp	00113$
   51FC C3 89 53      [10]  122 	jp	00114$
   51FF C3 97 53      [10]  123 	jp	00115$
   5202 C3 A5 53      [10]  124 	jp	00116$
   5205 C3 B3 53      [10]  125 	jp	00117$
                            126 ;src/game/world.c:10: case NONE:
   5208                     127 00101$:
                            128 ;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   5208 C5            [11]  129 	push	bc
   5209 D5            [11]  130 	push	de
   520A DD 66 06      [19]  131 	ld	h,6 (ix)
   520D DD 6E 06      [19]  132 	ld	l,6 (ix)
   5210 E5            [11]  133 	push	hl
   5211 DD 66 06      [19]  134 	ld	h,6 (ix)
   5214 DD 6E 06      [19]  135 	ld	l,6 (ix)
   5217 E5            [11]  136 	push	hl
   5218 CD C4 78      [17]  137 	call	_cpct_px2byteM1
   521B F1            [10]  138 	pop	af
   521C F1            [10]  139 	pop	af
   521D DD 75 FF      [19]  140 	ld	-1 (ix),l
   5220 D1            [10]  141 	pop	de
   5221 C1            [10]  142 	pop	bc
   5222 D5            [11]  143 	push	de
   5223 21 04 00      [10]  144 	ld	hl,#0x0004
   5226 E5            [11]  145 	push	hl
   5227 DD 7E FF      [19]  146 	ld	a,-1 (ix)
   522A F5            [11]  147 	push	af
   522B 33            [ 6]  148 	inc	sp
   522C C5            [11]  149 	push	bc
   522D CD B6 78      [17]  150 	call	_cpct_memset
   5230 D1            [10]  151 	pop	de
                            152 ;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   5231 63            [ 4]  153 	ld	h,e
   5232 24            [ 4]  154 	inc	h
   5233 D5            [11]  155 	push	de
   5234 E5            [11]  156 	push	hl
   5235 33            [ 6]  157 	inc	sp
   5236 D5            [11]  158 	push	de
   5237 33            [ 6]  159 	inc	sp
   5238 21 00 C0      [10]  160 	ld	hl,#0xC000
   523B E5            [11]  161 	push	hl
   523C CD EA 79      [17]  162 	call	_cpct_getScreenPtr
   523F D1            [10]  163 	pop	de
                            164 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   5240 E5            [11]  165 	push	hl
   5241 D5            [11]  166 	push	de
   5242 DD 66 06      [19]  167 	ld	h,6 (ix)
   5245 DD 6E 06      [19]  168 	ld	l,6 (ix)
   5248 E5            [11]  169 	push	hl
   5249 DD 66 06      [19]  170 	ld	h,6 (ix)
   524C DD 6E 06      [19]  171 	ld	l,6 (ix)
   524F E5            [11]  172 	push	hl
   5250 CD C4 78      [17]  173 	call	_cpct_px2byteM1
   5253 F1            [10]  174 	pop	af
   5254 F1            [10]  175 	pop	af
   5255 5D            [ 4]  176 	ld	e,l
   5256 F1            [10]  177 	pop	af
   5257 57            [ 4]  178 	ld	d,a
   5258 C1            [10]  179 	pop	bc
   5259 D5            [11]  180 	push	de
   525A 21 04 00      [10]  181 	ld	hl,#0x0004
   525D E5            [11]  182 	push	hl
   525E 7B            [ 4]  183 	ld	a,e
   525F F5            [11]  184 	push	af
   5260 33            [ 6]  185 	inc	sp
   5261 C5            [11]  186 	push	bc
   5262 CD B6 78      [17]  187 	call	_cpct_memset
   5265 D1            [10]  188 	pop	de
                            189 ;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   5266 DD 7E 05      [19]  190 	ld	a,5 (ix)
   5269 3C            [ 4]  191 	inc	a
   526A 07            [ 4]  192 	rlca
   526B 07            [ 4]  193 	rlca
   526C 07            [ 4]  194 	rlca
   526D 07            [ 4]  195 	rlca
   526E E6 F0         [ 7]  196 	and	a,#0xF0
   5270 5F            [ 4]  197 	ld	e,a
   5271 63            [ 4]  198 	ld	h,e
   5272 25            [ 4]  199 	dec	h
   5273 D5            [11]  200 	push	de
   5274 E5            [11]  201 	push	hl
   5275 33            [ 6]  202 	inc	sp
   5276 D5            [11]  203 	push	de
   5277 33            [ 6]  204 	inc	sp
   5278 21 00 C0      [10]  205 	ld	hl,#0xC000
   527B E5            [11]  206 	push	hl
   527C CD EA 79      [17]  207 	call	_cpct_getScreenPtr
   527F D1            [10]  208 	pop	de
                            209 ;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   5280 E5            [11]  210 	push	hl
   5281 D5            [11]  211 	push	de
   5282 DD 66 06      [19]  212 	ld	h,6 (ix)
   5285 DD 6E 06      [19]  213 	ld	l,6 (ix)
   5288 E5            [11]  214 	push	hl
   5289 DD 66 06      [19]  215 	ld	h,6 (ix)
   528C DD 6E 06      [19]  216 	ld	l,6 (ix)
   528F E5            [11]  217 	push	hl
   5290 CD C4 78      [17]  218 	call	_cpct_px2byteM1
   5293 F1            [10]  219 	pop	af
   5294 F1            [10]  220 	pop	af
   5295 DD 75 FF      [19]  221 	ld	-1 (ix),l
   5298 D1            [10]  222 	pop	de
   5299 C1            [10]  223 	pop	bc
   529A D5            [11]  224 	push	de
   529B 21 04 00      [10]  225 	ld	hl,#0x0004
   529E E5            [11]  226 	push	hl
   529F DD 7E FF      [19]  227 	ld	a,-1 (ix)
   52A2 F5            [11]  228 	push	af
   52A3 33            [ 6]  229 	inc	sp
   52A4 C5            [11]  230 	push	bc
   52A5 CD B6 78      [17]  231 	call	_cpct_memset
   52A8 D1            [10]  232 	pop	de
                            233 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   52A9 63            [ 4]  234 	ld	h,e
   52AA 25            [ 4]  235 	dec	h
   52AB 25            [ 4]  236 	dec	h
   52AC E5            [11]  237 	push	hl
   52AD 33            [ 6]  238 	inc	sp
   52AE D5            [11]  239 	push	de
   52AF 33            [ 6]  240 	inc	sp
   52B0 21 00 C0      [10]  241 	ld	hl,#0xC000
   52B3 E5            [11]  242 	push	hl
   52B4 CD EA 79      [17]  243 	call	_cpct_getScreenPtr
                            244 ;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   52B7 E5            [11]  245 	push	hl
   52B8 DD 66 06      [19]  246 	ld	h,6 (ix)
   52BB DD 6E 06      [19]  247 	ld	l,6 (ix)
   52BE E5            [11]  248 	push	hl
   52BF DD 66 06      [19]  249 	ld	h,6 (ix)
   52C2 DD 6E 06      [19]  250 	ld	l,6 (ix)
   52C5 E5            [11]  251 	push	hl
   52C6 CD C4 78      [17]  252 	call	_cpct_px2byteM1
   52C9 F1            [10]  253 	pop	af
   52CA F1            [10]  254 	pop	af
   52CB 65            [ 4]  255 	ld	h,l
   52CC D1            [10]  256 	pop	de
   52CD 01 04 00      [10]  257 	ld	bc,#0x0004
   52D0 C5            [11]  258 	push	bc
   52D1 E5            [11]  259 	push	hl
   52D2 33            [ 6]  260 	inc	sp
   52D3 D5            [11]  261 	push	de
   52D4 CD B6 78      [17]  262 	call	_cpct_memset
                            263 ;src/game/world.c:20: break;
   52D7 C3 BF 53      [10]  264 	jp	00119$
                            265 ;src/game/world.c:21: case T_SSNS:
   52DA                     266 00102$:
                            267 ;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   52DA 11 79 64      [10]  268 	ld	de,#_station_small_ns
   52DD 21 04 10      [10]  269 	ld	hl,#0x1004
   52E0 E5            [11]  270 	push	hl
   52E1 C5            [11]  271 	push	bc
   52E2 D5            [11]  272 	push	de
   52E3 CD BC 73      [17]  273 	call	_cpct_drawSprite
                            274 ;src/game/world.c:23: break;
   52E6 C3 BF 53      [10]  275 	jp	00119$
                            276 ;src/game/world.c:24: case T_SSEW:
   52E9                     277 00103$:
                            278 ;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   52E9 11 B9 64      [10]  279 	ld	de,#_station_small_ew
   52EC 21 04 10      [10]  280 	ld	hl,#0x1004
   52EF E5            [11]  281 	push	hl
   52F0 C5            [11]  282 	push	bc
   52F1 D5            [11]  283 	push	de
   52F2 CD BC 73      [17]  284 	call	_cpct_drawSprite
                            285 ;src/game/world.c:26: break;
   52F5 C3 BF 53      [10]  286 	jp	00119$
                            287 ;src/game/world.c:27: case T_SMNS:
   52F8                     288 00104$:
                            289 ;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   52F8 11 F9 64      [10]  290 	ld	de,#_station_medium_ns
   52FB 21 04 10      [10]  291 	ld	hl,#0x1004
   52FE E5            [11]  292 	push	hl
   52FF C5            [11]  293 	push	bc
   5300 D5            [11]  294 	push	de
   5301 CD BC 73      [17]  295 	call	_cpct_drawSprite
                            296 ;src/game/world.c:29: break;
   5304 C3 BF 53      [10]  297 	jp	00119$
                            298 ;src/game/world.c:30: case T_SMEW:
   5307                     299 00105$:
                            300 ;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   5307 11 39 65      [10]  301 	ld	de,#_station_medium_ew
   530A 21 04 10      [10]  302 	ld	hl,#0x1004
   530D E5            [11]  303 	push	hl
   530E C5            [11]  304 	push	bc
   530F D5            [11]  305 	push	de
   5310 CD BC 73      [17]  306 	call	_cpct_drawSprite
                            307 ;src/game/world.c:32: break;
   5313 C3 BF 53      [10]  308 	jp	00119$
                            309 ;src/game/world.c:33: case T_SLNS:
   5316                     310 00106$:
                            311 ;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   5316 11 79 65      [10]  312 	ld	de,#_station_large_ns
   5319 21 04 10      [10]  313 	ld	hl,#0x1004
   531C E5            [11]  314 	push	hl
   531D C5            [11]  315 	push	bc
   531E D5            [11]  316 	push	de
   531F CD BC 73      [17]  317 	call	_cpct_drawSprite
                            318 ;src/game/world.c:35: break;
   5322 C3 BF 53      [10]  319 	jp	00119$
                            320 ;src/game/world.c:36: case T_SLEW:
   5325                     321 00107$:
                            322 ;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   5325 11 B9 65      [10]  323 	ld	de,#_station_large_ew
   5328 21 04 10      [10]  324 	ld	hl,#0x1004
   532B E5            [11]  325 	push	hl
   532C C5            [11]  326 	push	bc
   532D D5            [11]  327 	push	de
   532E CD BC 73      [17]  328 	call	_cpct_drawSprite
                            329 ;src/game/world.c:38: break;
   5331 C3 BF 53      [10]  330 	jp	00119$
                            331 ;src/game/world.c:39: case T_REW:
   5334                     332 00108$:
                            333 ;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   5334 11 F9 65      [10]  334 	ld	de,#_rail_ew
   5337 21 04 10      [10]  335 	ld	hl,#0x1004
   533A E5            [11]  336 	push	hl
   533B C5            [11]  337 	push	bc
   533C D5            [11]  338 	push	de
   533D CD BC 73      [17]  339 	call	_cpct_drawSprite
                            340 ;src/game/world.c:41: break;
   5340 C3 BF 53      [10]  341 	jp	00119$
                            342 ;src/game/world.c:42: case T_RNS:
   5343                     343 00109$:
                            344 ;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5343 11 39 66      [10]  345 	ld	de,#_rail_ns
   5346 21 04 10      [10]  346 	ld	hl,#0x1004
   5349 E5            [11]  347 	push	hl
   534A C5            [11]  348 	push	bc
   534B D5            [11]  349 	push	de
   534C CD BC 73      [17]  350 	call	_cpct_drawSprite
                            351 ;src/game/world.c:44: break;
   534F 18 6E         [12]  352 	jr	00119$
                            353 ;src/game/world.c:45: case T_REN:
   5351                     354 00110$:
                            355 ;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   5351 11 79 66      [10]  356 	ld	de,#_rail_en
   5354 21 04 10      [10]  357 	ld	hl,#0x1004
   5357 E5            [11]  358 	push	hl
   5358 C5            [11]  359 	push	bc
   5359 D5            [11]  360 	push	de
   535A CD BC 73      [17]  361 	call	_cpct_drawSprite
                            362 ;src/game/world.c:47: break;
   535D 18 60         [12]  363 	jr	00119$
                            364 ;src/game/world.c:48: case T_RES:
   535F                     365 00111$:
                            366 ;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   535F 11 B9 66      [10]  367 	ld	de,#_rail_es
   5362 21 04 10      [10]  368 	ld	hl,#0x1004
   5365 E5            [11]  369 	push	hl
   5366 C5            [11]  370 	push	bc
   5367 D5            [11]  371 	push	de
   5368 CD BC 73      [17]  372 	call	_cpct_drawSprite
                            373 ;src/game/world.c:50: break;
   536B 18 52         [12]  374 	jr	00119$
                            375 ;src/game/world.c:51: case T_RWN:
   536D                     376 00112$:
                            377 ;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   536D 11 F9 66      [10]  378 	ld	de,#_rail_wn
   5370 21 04 10      [10]  379 	ld	hl,#0x1004
   5373 E5            [11]  380 	push	hl
   5374 C5            [11]  381 	push	bc
   5375 D5            [11]  382 	push	de
   5376 CD BC 73      [17]  383 	call	_cpct_drawSprite
                            384 ;src/game/world.c:53: break;
   5379 18 44         [12]  385 	jr	00119$
                            386 ;src/game/world.c:54: case T_RWS:
   537B                     387 00113$:
                            388 ;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   537B 11 39 67      [10]  389 	ld	de,#_rail_ws
   537E 21 04 10      [10]  390 	ld	hl,#0x1004
   5381 E5            [11]  391 	push	hl
   5382 C5            [11]  392 	push	bc
   5383 D5            [11]  393 	push	de
   5384 CD BC 73      [17]  394 	call	_cpct_drawSprite
                            395 ;src/game/world.c:56: break;
   5387 18 36         [12]  396 	jr	00119$
                            397 ;src/game/world.c:57: case T_REWN:
   5389                     398 00114$:
                            399 ;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5389 11 79 67      [10]  400 	ld	de,#_rail_ew_n
   538C 21 04 10      [10]  401 	ld	hl,#0x1004
   538F E5            [11]  402 	push	hl
   5390 C5            [11]  403 	push	bc
   5391 D5            [11]  404 	push	de
   5392 CD BC 73      [17]  405 	call	_cpct_drawSprite
                            406 ;src/game/world.c:59: break;
   5395 18 28         [12]  407 	jr	00119$
                            408 ;src/game/world.c:60: case T_REWS:
   5397                     409 00115$:
                            410 ;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5397 11 B9 67      [10]  411 	ld	de,#_rail_ew_s
   539A 21 04 10      [10]  412 	ld	hl,#0x1004
   539D E5            [11]  413 	push	hl
   539E C5            [11]  414 	push	bc
   539F D5            [11]  415 	push	de
   53A0 CD BC 73      [17]  416 	call	_cpct_drawSprite
                            417 ;src/game/world.c:62: break;
   53A3 18 1A         [12]  418 	jr	00119$
                            419 ;src/game/world.c:63: case T_RNSE:
   53A5                     420 00116$:
                            421 ;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   53A5 11 39 68      [10]  422 	ld	de,#_rail_ns_e
   53A8 21 04 10      [10]  423 	ld	hl,#0x1004
   53AB E5            [11]  424 	push	hl
   53AC C5            [11]  425 	push	bc
   53AD D5            [11]  426 	push	de
   53AE CD BC 73      [17]  427 	call	_cpct_drawSprite
                            428 ;src/game/world.c:65: break;
   53B1 18 0C         [12]  429 	jr	00119$
                            430 ;src/game/world.c:66: case T_RNSW:
   53B3                     431 00117$:
                            432 ;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   53B3 11 F9 67      [10]  433 	ld	de,#_rail_ns_w
   53B6 21 04 10      [10]  434 	ld	hl,#0x1004
   53B9 E5            [11]  435 	push	hl
   53BA C5            [11]  436 	push	bc
   53BB D5            [11]  437 	push	de
   53BC CD BC 73      [17]  438 	call	_cpct_drawSprite
                            439 ;src/game/world.c:69: }
   53BF                     440 00119$:
   53BF 33            [ 6]  441 	inc	sp
   53C0 DD E1         [14]  442 	pop	ix
   53C2 C9            [10]  443 	ret
                            444 ;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            445 ;	---------------------------------
                            446 ; Function patternTile
                            447 ; ---------------------------------
   53C3                     448 _patternTile::
   53C3 DD E5         [15]  449 	push	ix
   53C5 DD 21 00 00   [14]  450 	ld	ix,#0
   53C9 DD 39         [15]  451 	add	ix,sp
   53CB 21 F5 FF      [10]  452 	ld	hl,#-11
   53CE 39            [11]  453 	add	hl,sp
   53CF F9            [ 6]  454 	ld	sp,hl
                            455 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   53D0 DD 7E 04      [19]  456 	ld	a,4 (ix)
   53D3 D6 08         [ 7]  457 	sub	a, #0x08
   53D5 20 04         [12]  458 	jr	NZ,00153$
   53D7 3E 01         [ 7]  459 	ld	a,#0x01
   53D9 18 01         [12]  460 	jr	00154$
   53DB                     461 00153$:
   53DB AF            [ 4]  462 	xor	a,a
   53DC                     463 00154$:
   53DC DD 77 FF      [19]  464 	ld	-1 (ix),a
   53DF DD 7E 04      [19]  465 	ld	a,4 (ix)
   53E2 D6 02         [ 7]  466 	sub	a, #0x02
   53E4 20 04         [12]  467 	jr	NZ,00155$
   53E6 3E 01         [ 7]  468 	ld	a,#0x01
   53E8 18 01         [12]  469 	jr	00156$
   53EA                     470 00155$:
   53EA AF            [ 4]  471 	xor	a,a
   53EB                     472 00156$:
   53EB DD 77 FC      [19]  473 	ld	-4 (ix),a
   53EE DD 36 F5 00   [19]  474 	ld	-11 (ix),#0x00
   53F2 11 00 00      [10]  475 	ld	de,#0x0000
   53F5                     476 00115$:
   53F5 DD 7E F5      [19]  477 	ld	a,-11 (ix)
   53F8 DD 96 08      [19]  478 	sub	a, 8 (ix)
   53FB D2 BB 54      [10]  479 	jp	NC,00117$
                            480 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   53FE DD 7E 05      [19]  481 	ld	a,5 (ix)
   5401 83            [ 4]  482 	add	a, e
   5402 DD 77 FD      [19]  483 	ld	-3 (ix),a
   5405 DD 7E 06      [19]  484 	ld	a,6 (ix)
   5408 8A            [ 4]  485 	adc	a, d
   5409 DD 77 FE      [19]  486 	ld	-2 (ix),a
   540C D5            [11]  487 	push	de
   540D DD 5E 07      [19]  488 	ld	e,7 (ix)
   5410 DD 66 F5      [19]  489 	ld	h,-11 (ix)
   5413 2E 00         [ 7]  490 	ld	l, #0x00
   5415 55            [ 4]  491 	ld	d, l
   5416 06 08         [ 7]  492 	ld	b, #0x08
   5418                     493 00157$:
   5418 29            [11]  494 	add	hl,hl
   5419 30 01         [12]  495 	jr	NC,00158$
   541B 19            [11]  496 	add	hl,de
   541C                     497 00158$:
   541C 10 FA         [13]  498 	djnz	00157$
   541E D1            [10]  499 	pop	de
   541F DD 75 FA      [19]  500 	ld	-6 (ix),l
   5422 DD 74 FB      [19]  501 	ld	-5 (ix),h
   5425 DD 36 F6 00   [19]  502 	ld	-10 (ix),#0x00
   5429                     503 00112$:
   5429 DD 7E F6      [19]  504 	ld	a,-10 (ix)
   542C DD 96 07      [19]  505 	sub	a, 7 (ix)
   542F D2 B0 54      [10]  506 	jp	NC,00116$
                            507 ;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   5432 DD 7E F6      [19]  508 	ld	a,-10 (ix)
   5435 DD 77 F7      [19]  509 	ld	-9 (ix),a
   5438 DD 36 F8 00   [19]  510 	ld	-8 (ix),#0x00
   543C DD 7E FA      [19]  511 	ld	a,-6 (ix)
   543F DD 86 F7      [19]  512 	add	a, -9 (ix)
   5442 6F            [ 4]  513 	ld	l,a
   5443 DD 7E FB      [19]  514 	ld	a,-5 (ix)
   5446 DD 8E F8      [19]  515 	adc	a, -8 (ix)
   5449 67            [ 4]  516 	ld	h,a
   544A DD 4E 09      [19]  517 	ld	c,9 (ix)
   544D DD 46 0A      [19]  518 	ld	b,10 (ix)
   5450 D5            [11]  519 	push	de
   5451 E5            [11]  520 	push	hl
   5452 C5            [11]  521 	push	bc
   5453 CD 7C 73      [17]  522 	call	_cpct_getBit
   5456 DD 75 F9      [19]  523 	ld	-7 (ix),l
   5459 D1            [10]  524 	pop	de
   545A DD 7E F9      [19]  525 	ld	a,-7 (ix)
   545D B7            [ 4]  526 	or	a, a
   545E 28 4A         [12]  527 	jr	Z,00113$
   5460 DD 7E FD      [19]  528 	ld	a,-3 (ix)
   5463 DD 86 F7      [19]  529 	add	a, -9 (ix)
   5466 4F            [ 4]  530 	ld	c,a
   5467 DD 7E FE      [19]  531 	ld	a,-2 (ix)
   546A DD 8E F8      [19]  532 	adc	a, -8 (ix)
   546D 47            [ 4]  533 	ld	b,a
   546E EE 80         [ 7]  534 	xor	a, #0x80
   5470 D6 8F         [ 7]  535 	sub	a, #0x8F
   5472 30 36         [12]  536 	jr	NC,00113$
                            537 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   5474 21 DA 7A      [10]  538 	ld	hl,#_p_world
   5477 09            [11]  539 	add	hl,bc
   5478 4D            [ 4]  540 	ld	c,l
   5479 44            [ 4]  541 	ld	b,h
                            542 ;src/game/world.c:83: if(tileType == FOREST)
   547A DD 7E FF      [19]  543 	ld	a,-1 (ix)
   547D B7            [ 4]  544 	or	a, a
   547E 28 06         [12]  545 	jr	Z,00104$
                            546 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   5480 DD 7E 04      [19]  547 	ld	a,4 (ix)
   5483 02            [ 7]  548 	ld	(bc),a
   5484 18 24         [12]  549 	jr	00113$
   5486                     550 00104$:
                            551 ;src/game/world.c:85: else if(tileType==DWELLINGS1)
   5486 DD 7E FC      [19]  552 	ld	a,-4 (ix)
   5489 B7            [ 4]  553 	or	a, a
   548A 28 1E         [12]  554 	jr	Z,00113$
                            555 ;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   548C C5            [11]  556 	push	bc
   548D D5            [11]  557 	push	de
   548E CD E3 74      [17]  558 	call	_cpct_count2VSYNC
   5491 CD 20 79      [17]  559 	call	_cpct_getRandomUniform_u8_f
   5494 DD 75 F9      [19]  560 	ld	-7 (ix),l
   5497 3E 03         [ 7]  561 	ld	a,#0x03
   5499 F5            [11]  562 	push	af
   549A 33            [ 6]  563 	inc	sp
   549B DD 7E F9      [19]  564 	ld	a,-7 (ix)
   549E F5            [11]  565 	push	af
   549F 33            [ 6]  566 	inc	sp
   54A0 CD 61 74      [17]  567 	call	__moduchar
   54A3 F1            [10]  568 	pop	af
   54A4 7D            [ 4]  569 	ld	a,l
   54A5 D1            [10]  570 	pop	de
   54A6 C1            [10]  571 	pop	bc
   54A7 C6 02         [ 7]  572 	add	a, #0x02
   54A9 02            [ 7]  573 	ld	(bc),a
   54AA                     574 00113$:
                            575 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   54AA DD 34 F6      [23]  576 	inc	-10 (ix)
   54AD C3 29 54      [10]  577 	jp	00112$
   54B0                     578 00116$:
                            579 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   54B0 21 50 00      [10]  580 	ld	hl,#0x0050
   54B3 19            [11]  581 	add	hl,de
   54B4 EB            [ 4]  582 	ex	de,hl
   54B5 DD 34 F5      [23]  583 	inc	-11 (ix)
   54B8 C3 F5 53      [10]  584 	jp	00115$
   54BB                     585 00117$:
   54BB DD F9         [10]  586 	ld	sp, ix
   54BD DD E1         [14]  587 	pop	ix
   54BF C9            [10]  588 	ret
                            589 ;src/game/world.c:93: void generateWorld()
                            590 ;	---------------------------------
                            591 ; Function generateWorld
                            592 ; ---------------------------------
   54C0                     593 _generateWorld::
   54C0 DD E5         [15]  594 	push	ix
   54C2 DD 21 00 00   [14]  595 	ld	ix,#0
   54C6 DD 39         [15]  596 	add	ix,sp
   54C8 21 E5 FF      [10]  597 	ld	hl,#-27
   54CB 39            [11]  598 	add	hl,sp
   54CC F9            [ 6]  599 	ld	sp,hl
                            600 ;src/game/world.c:100: CURSOR_MODE = NONE;
   54CD FD 21 DE 89   [14]  601 	ld	iy,#_CURSOR_MODE
   54D1 FD 36 00 00   [19]  602 	ld	0 (iy),#0x00
                            603 ;src/game/world.c:103: cpct_srand((u32)cpct_count2VSYNC());
   54D5 CD E3 74      [17]  604 	call	_cpct_count2VSYNC
   54D8 11 00 00      [10]  605 	ld	de,#0x0000
   54DB CD 3F 76      [17]  606 	call	_cpct_setSeed_mxor
                            607 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   54DE 11 00 00      [10]  608 	ld	de,#0x0000
   54E1                     609 00119$:
                            610 ;src/game/world.c:109: p_world[iy] = cpct_rand()%2;
   54E1 21 DA 7A      [10]  611 	ld	hl,#_p_world
   54E4 19            [11]  612 	add	hl,de
   54E5 E5            [11]  613 	push	hl
   54E6 D5            [11]  614 	push	de
   54E7 CD FC 78      [17]  615 	call	_cpct_getRandom_mxor_u8
   54EA 7D            [ 4]  616 	ld	a,l
   54EB D1            [10]  617 	pop	de
   54EC E1            [10]  618 	pop	hl
   54ED E6 01         [ 7]  619 	and	a, #0x01
   54EF 77            [ 7]  620 	ld	(hl),a
                            621 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   54F0 13            [ 6]  622 	inc	de
   54F1 7A            [ 4]  623 	ld	a,d
   54F2 EE 80         [ 7]  624 	xor	a, #0x80
   54F4 D6 8F         [ 7]  625 	sub	a, #0x8F
   54F6 38 E9         [12]  626 	jr	C,00119$
                            627 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   54F8 21 00 00      [10]  628 	ld	hl,#0x0000
   54FB 39            [11]  629 	add	hl,sp
   54FC DD 75 F5      [19]  630 	ld	-11 (ix),l
   54FF DD 74 F6      [19]  631 	ld	-10 (ix),h
   5502 01 00 00      [10]  632 	ld	bc,#0x0000
   5505                     633 00121$:
                            634 ;src/game/world.c:115: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5505 C5            [11]  635 	push	bc
   5506 CD FC 77      [17]  636 	call	_cpct_getRandom_mxor_u16
   5509 11 00 0F      [10]  637 	ld	de,#0x0F00
   550C D5            [11]  638 	push	de
   550D E5            [11]  639 	push	hl
   550E CD 6D 74      [17]  640 	call	__moduint
   5511 F1            [10]  641 	pop	af
   5512 F1            [10]  642 	pop	af
   5513 C1            [10]  643 	pop	bc
   5514 DD 75 FB      [19]  644 	ld	-5 (ix),l
   5517 DD 74 FC      [19]  645 	ld	-4 (ix),h
                            646 ;src/game/world.c:117: switch(cpct_rand()%4)
   551A C5            [11]  647 	push	bc
   551B CD FC 78      [17]  648 	call	_cpct_getRandom_mxor_u8
   551E 7D            [ 4]  649 	ld	a,l
   551F C1            [10]  650 	pop	bc
   5520 E6 03         [ 7]  651 	and	a, #0x03
   5522 DD 77 FD      [19]  652 	ld	-3 (ix),a
   5525 3E 03         [ 7]  653 	ld	a,#0x03
   5527 DD 96 FD      [19]  654 	sub	a, -3 (ix)
   552A DA 8E 56      [10]  655 	jp	C,00106$
                            656 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   552D E5            [11]  657 	push	hl
   552E DD 6E F5      [19]  658 	ld	l,-11 (ix)
   5531 DD 66 F6      [19]  659 	ld	h,-10 (ix)
   5534 23            [ 6]  660 	inc	hl
   5535 E5            [11]  661 	push	hl
   5536 FD E1         [14]  662 	pop	iy
   5538 E1            [10]  663 	pop	hl
                            664 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   5539 DD 5E F5      [19]  665 	ld	e,-11 (ix)
   553C DD 56 F6      [19]  666 	ld	d,-10 (ix)
   553F 13            [ 6]  667 	inc	de
   5540 13            [ 6]  668 	inc	de
                            669 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   5541 DD 7E F5      [19]  670 	ld	a,-11 (ix)
   5544 C6 03         [ 7]  671 	add	a, #0x03
   5546 DD 77 F3      [19]  672 	ld	-13 (ix),a
   5549 DD 7E F6      [19]  673 	ld	a,-10 (ix)
   554C CE 00         [ 7]  674 	adc	a, #0x00
   554E DD 77 F4      [19]  675 	ld	-12 (ix),a
                            676 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   5551 DD 7E F5      [19]  677 	ld	a,-11 (ix)
   5554 C6 04         [ 7]  678 	add	a, #0x04
   5556 DD 77 F9      [19]  679 	ld	-7 (ix),a
   5559 DD 7E F6      [19]  680 	ld	a,-10 (ix)
   555C CE 00         [ 7]  681 	adc	a, #0x00
   555E DD 77 FA      [19]  682 	ld	-6 (ix),a
                            683 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   5561 DD 7E F5      [19]  684 	ld	a,-11 (ix)
   5564 C6 05         [ 7]  685 	add	a, #0x05
   5566 DD 77 F7      [19]  686 	ld	-9 (ix),a
   5569 DD 7E F6      [19]  687 	ld	a,-10 (ix)
   556C CE 00         [ 7]  688 	adc	a, #0x00
   556E DD 77 F8      [19]  689 	ld	-8 (ix),a
                            690 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   5571 DD 7E F5      [19]  691 	ld	a,-11 (ix)
   5574 C6 06         [ 7]  692 	add	a, #0x06
   5576 DD 77 F1      [19]  693 	ld	-15 (ix),a
   5579 DD 7E F6      [19]  694 	ld	a,-10 (ix)
   557C CE 00         [ 7]  695 	adc	a, #0x00
   557E DD 77 F2      [19]  696 	ld	-14 (ix),a
                            697 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   5581 DD 7E F5      [19]  698 	ld	a,-11 (ix)
   5584 C6 07         [ 7]  699 	add	a, #0x07
   5586 DD 77 FE      [19]  700 	ld	-2 (ix),a
   5589 DD 7E F6      [19]  701 	ld	a,-10 (ix)
   558C CE 00         [ 7]  702 	adc	a, #0x00
   558E DD 77 FF      [19]  703 	ld	-1 (ix),a
                            704 ;src/game/world.c:117: switch(cpct_rand()%4)
   5591 D5            [11]  705 	push	de
   5592 DD 5E FD      [19]  706 	ld	e,-3 (ix)
   5595 16 00         [ 7]  707 	ld	d,#0x00
   5597 21 9F 55      [10]  708 	ld	hl,#00195$
   559A 19            [11]  709 	add	hl,de
   559B 19            [11]  710 	add	hl,de
   559C 19            [11]  711 	add	hl,de
   559D D1            [10]  712 	pop	de
   559E E9            [ 4]  713 	jp	(hl)
   559F                     714 00195$:
   559F C3 AB 55      [10]  715 	jp	00102$
   55A2 C3 E5 55      [10]  716 	jp	00103$
   55A5 C3 1E 56      [10]  717 	jp	00104$
   55A8 C3 57 56      [10]  718 	jp	00105$
                            719 ;src/game/world.c:119: case 0:
   55AB                     720 00102$:
                            721 ;src/game/world.c:120: p_forest[0] = 0b10000100;
   55AB DD 6E F5      [19]  722 	ld	l,-11 (ix)
   55AE DD 66 F6      [19]  723 	ld	h,-10 (ix)
   55B1 36 84         [10]  724 	ld	(hl),#0x84
                            725 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   55B3 FD 36 00 C7   [19]  726 	ld	0 (iy), #0xC7
                            727 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   55B7 3E DE         [ 7]  728 	ld	a,#0xDE
   55B9 12            [ 7]  729 	ld	(de),a
                            730 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   55BA DD 6E F3      [19]  731 	ld	l,-13 (ix)
   55BD DD 66 F4      [19]  732 	ld	h,-12 (ix)
   55C0 36 7E         [10]  733 	ld	(hl),#0x7E
                            734 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   55C2 DD 6E F9      [19]  735 	ld	l,-7 (ix)
   55C5 DD 66 FA      [19]  736 	ld	h,-6 (ix)
   55C8 36 FE         [10]  737 	ld	(hl),#0xFE
                            738 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   55CA DD 6E F7      [19]  739 	ld	l,-9 (ix)
   55CD DD 66 F8      [19]  740 	ld	h,-8 (ix)
   55D0 36 7F         [10]  741 	ld	(hl),#0x7F
                            742 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   55D2 DD 6E F1      [19]  743 	ld	l,-15 (ix)
   55D5 DD 66 F2      [19]  744 	ld	h,-14 (ix)
   55D8 36 EF         [10]  745 	ld	(hl),#0xEF
                            746 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   55DA DD 6E FE      [19]  747 	ld	l,-2 (ix)
   55DD DD 66 FF      [19]  748 	ld	h,-1 (ix)
   55E0 36 CF         [10]  749 	ld	(hl),#0xCF
                            750 ;src/game/world.c:128: break;
   55E2 C3 8E 56      [10]  751 	jp	00106$
                            752 ;src/game/world.c:129: case 1:
   55E5                     753 00103$:
                            754 ;src/game/world.c:130: p_forest[0] = 0b00001100;
   55E5 DD 6E F5      [19]  755 	ld	l,-11 (ix)
   55E8 DD 66 F6      [19]  756 	ld	h,-10 (ix)
   55EB 36 0C         [10]  757 	ld	(hl),#0x0C
                            758 ;src/game/world.c:131: p_forest[1] = 0b11111000;
   55ED FD 36 00 F8   [19]  759 	ld	0 (iy), #0xF8
                            760 ;src/game/world.c:132: p_forest[2] = 0b00111111;
   55F1 3E 3F         [ 7]  761 	ld	a,#0x3F
   55F3 12            [ 7]  762 	ld	(de),a
                            763 ;src/game/world.c:133: p_forest[3] = 0b01111110;
   55F4 DD 6E F3      [19]  764 	ld	l,-13 (ix)
   55F7 DD 66 F4      [19]  765 	ld	h,-12 (ix)
   55FA 36 7E         [10]  766 	ld	(hl),#0x7E
                            767 ;src/game/world.c:134: p_forest[4] = 0b11111110; 
   55FC DD 6E F9      [19]  768 	ld	l,-7 (ix)
   55FF DD 66 FA      [19]  769 	ld	h,-6 (ix)
   5602 36 FE         [10]  770 	ld	(hl),#0xFE
                            771 ;src/game/world.c:135: p_forest[5] = 0b01011111;
   5604 DD 6E F7      [19]  772 	ld	l,-9 (ix)
   5607 DD 66 F8      [19]  773 	ld	h,-8 (ix)
   560A 36 5F         [10]  774 	ld	(hl),#0x5F
                            775 ;src/game/world.c:136: p_forest[6] = 0b11001111;
   560C DD 6E F1      [19]  776 	ld	l,-15 (ix)
   560F DD 66 F2      [19]  777 	ld	h,-14 (ix)
   5612 36 CF         [10]  778 	ld	(hl),#0xCF
                            779 ;src/game/world.c:137: p_forest[7] = 0b10001100;
   5614 DD 6E FE      [19]  780 	ld	l,-2 (ix)
   5617 DD 66 FF      [19]  781 	ld	h,-1 (ix)
   561A 36 8C         [10]  782 	ld	(hl),#0x8C
                            783 ;src/game/world.c:138: break;
   561C 18 70         [12]  784 	jr	00106$
                            785 ;src/game/world.c:139: case 2:
   561E                     786 00104$:
                            787 ;src/game/world.c:140: p_forest[0] = 0b00110000;
   561E DD 6E F5      [19]  788 	ld	l,-11 (ix)
   5621 DD 66 F6      [19]  789 	ld	h,-10 (ix)
   5624 36 30         [10]  790 	ld	(hl),#0x30
                            791 ;src/game/world.c:141: p_forest[1] = 0b11110100;
   5626 FD 36 00 F4   [19]  792 	ld	0 (iy), #0xF4
                            793 ;src/game/world.c:142: p_forest[2] = 0b11111111;
   562A 3E FF         [ 7]  794 	ld	a,#0xFF
   562C 12            [ 7]  795 	ld	(de),a
                            796 ;src/game/world.c:143: p_forest[3] = 0b11111111;
   562D DD 6E F3      [19]  797 	ld	l,-13 (ix)
   5630 DD 66 F4      [19]  798 	ld	h,-12 (ix)
   5633 36 FF         [10]  799 	ld	(hl),#0xFF
                            800 ;src/game/world.c:144: p_forest[4] = 0b01111100;
   5635 DD 6E F9      [19]  801 	ld	l,-7 (ix)
   5638 DD 66 FA      [19]  802 	ld	h,-6 (ix)
   563B 36 7C         [10]  803 	ld	(hl),#0x7C
                            804 ;src/game/world.c:145: p_forest[5] = 0b01111110;
   563D DD 6E F7      [19]  805 	ld	l,-9 (ix)
   5640 DD 66 F8      [19]  806 	ld	h,-8 (ix)
   5643 36 7E         [10]  807 	ld	(hl),#0x7E
                            808 ;src/game/world.c:146: p_forest[6] = 0b00111110;
   5645 DD 6E F1      [19]  809 	ld	l,-15 (ix)
   5648 DD 66 F2      [19]  810 	ld	h,-14 (ix)
   564B 36 3E         [10]  811 	ld	(hl),#0x3E
                            812 ;src/game/world.c:147: p_forest[7] = 0b00011000;
   564D DD 6E FE      [19]  813 	ld	l,-2 (ix)
   5650 DD 66 FF      [19]  814 	ld	h,-1 (ix)
   5653 36 18         [10]  815 	ld	(hl),#0x18
                            816 ;src/game/world.c:148: break;
   5655 18 37         [12]  817 	jr	00106$
                            818 ;src/game/world.c:149: case 3:
   5657                     819 00105$:
                            820 ;src/game/world.c:150: p_forest[0] = 0b11000000; 
   5657 DD 6E F5      [19]  821 	ld	l,-11 (ix)
   565A DD 66 F6      [19]  822 	ld	h,-10 (ix)
   565D 36 C0         [10]  823 	ld	(hl),#0xC0
                            824 ;src/game/world.c:151: p_forest[1] = 0b11100111;
   565F FD 36 00 E7   [19]  825 	ld	0 (iy), #0xE7
                            826 ;src/game/world.c:152: p_forest[2] = 0b01111110;
   5663 3E 7E         [ 7]  827 	ld	a,#0x7E
   5665 12            [ 7]  828 	ld	(de),a
                            829 ;src/game/world.c:153: p_forest[3] = 0b01111110;
   5666 DD 6E F3      [19]  830 	ld	l,-13 (ix)
   5669 DD 66 F4      [19]  831 	ld	h,-12 (ix)
   566C 36 7E         [10]  832 	ld	(hl),#0x7E
                            833 ;src/game/world.c:154: p_forest[4] = 0b11111110;
   566E DD 6E F9      [19]  834 	ld	l,-7 (ix)
   5671 DD 66 FA      [19]  835 	ld	h,-6 (ix)
   5674 36 FE         [10]  836 	ld	(hl),#0xFE
                            837 ;src/game/world.c:155: p_forest[5] = 0b11111100;
   5676 DD 6E F7      [19]  838 	ld	l,-9 (ix)
   5679 DD 66 F8      [19]  839 	ld	h,-8 (ix)
   567C 36 FC         [10]  840 	ld	(hl),#0xFC
                            841 ;src/game/world.c:156: p_forest[6] = 0b01111000;
   567E DD 6E F1      [19]  842 	ld	l,-15 (ix)
   5681 DD 66 F2      [19]  843 	ld	h,-14 (ix)
   5684 36 78         [10]  844 	ld	(hl),#0x78
                            845 ;src/game/world.c:157: p_forest[7] = 0b00110000;
   5686 DD 6E FE      [19]  846 	ld	l,-2 (ix)
   5689 DD 66 FF      [19]  847 	ld	h,-1 (ix)
   568C 36 30         [10]  848 	ld	(hl),#0x30
                            849 ;src/game/world.c:159: }
   568E                     850 00106$:
                            851 ;src/game/world.c:160: patternTile(FOREST, iy, 8, 8, p_forest);
   568E DD 6E F5      [19]  852 	ld	l,-11 (ix)
   5691 DD 66 F6      [19]  853 	ld	h,-10 (ix)
   5694 C5            [11]  854 	push	bc
   5695 E5            [11]  855 	push	hl
   5696 21 08 08      [10]  856 	ld	hl,#0x0808
   5699 E5            [11]  857 	push	hl
   569A DD 6E FB      [19]  858 	ld	l,-5 (ix)
   569D DD 66 FC      [19]  859 	ld	h,-4 (ix)
   56A0 E5            [11]  860 	push	hl
   56A1 3E 08         [ 7]  861 	ld	a,#0x08
   56A3 F5            [11]  862 	push	af
   56A4 33            [ 6]  863 	inc	sp
   56A5 CD C3 53      [17]  864 	call	_patternTile
   56A8 21 07 00      [10]  865 	ld	hl,#7
   56AB 39            [11]  866 	add	hl,sp
   56AC F9            [ 6]  867 	ld	sp,hl
   56AD C1            [10]  868 	pop	bc
                            869 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   56AE 03            [ 6]  870 	inc	bc
   56AF 79            [ 4]  871 	ld	a,c
   56B0 D6 32         [ 7]  872 	sub	a, #0x32
   56B2 78            [ 4]  873 	ld	a,b
   56B3 17            [ 4]  874 	rla
   56B4 3F            [ 4]  875 	ccf
   56B5 1F            [ 4]  876 	rra
   56B6 DE 80         [ 7]  877 	sbc	a, #0x80
   56B8 DA 05 55      [10]  878 	jp	C,00121$
                            879 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   56BB 11 3C 00      [10]  880 	ld	de,#0x003C
   56BE                     881 00125$:
                            882 ;src/game/world.c:168: iy = cpct_rand16()%(WIDTH*HEIGHT);
   56BE D5            [11]  883 	push	de
   56BF CD FC 77      [17]  884 	call	_cpct_getRandom_mxor_u16
   56C2 D1            [10]  885 	pop	de
   56C3 D5            [11]  886 	push	de
   56C4 01 00 0F      [10]  887 	ld	bc,#0x0F00
   56C7 C5            [11]  888 	push	bc
   56C8 E5            [11]  889 	push	hl
   56C9 CD 6D 74      [17]  890 	call	__moduint
   56CC F1            [10]  891 	pop	af
   56CD F1            [10]  892 	pop	af
   56CE D1            [10]  893 	pop	de
                            894 ;src/game/world.c:169: p_world[iy] = cpct_rand()%2+5;
   56CF 01 DA 7A      [10]  895 	ld	bc,#_p_world
   56D2 09            [11]  896 	add	hl,bc
   56D3 E5            [11]  897 	push	hl
   56D4 D5            [11]  898 	push	de
   56D5 CD FC 78      [17]  899 	call	_cpct_getRandom_mxor_u8
   56D8 7D            [ 4]  900 	ld	a,l
   56D9 D1            [10]  901 	pop	de
   56DA E1            [10]  902 	pop	hl
   56DB E6 01         [ 7]  903 	and	a, #0x01
   56DD C6 05         [ 7]  904 	add	a, #0x05
   56DF 77            [ 7]  905 	ld	(hl),a
   56E0 1B            [ 6]  906 	dec	de
                            907 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   56E1 7A            [ 4]  908 	ld	a,d
   56E2 B3            [ 4]  909 	or	a,e
   56E3 20 D9         [12]  910 	jr	NZ,00125$
                            911 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   56E5 11 14 00      [10]  912 	ld	de,#0x0014
   56E8                     913 00128$:
                            914 ;src/game/world.c:176: iy = cpct_rand16()%(WIDTH*HEIGHT);
   56E8 D5            [11]  915 	push	de
   56E9 CD FC 77      [17]  916 	call	_cpct_getRandom_mxor_u16
   56EC D1            [10]  917 	pop	de
   56ED D5            [11]  918 	push	de
   56EE 01 00 0F      [10]  919 	ld	bc,#0x0F00
   56F1 C5            [11]  920 	push	bc
   56F2 E5            [11]  921 	push	hl
   56F3 CD 6D 74      [17]  922 	call	__moduint
   56F6 F1            [10]  923 	pop	af
   56F7 F1            [10]  924 	pop	af
   56F8 D1            [10]  925 	pop	de
                            926 ;src/game/world.c:177: p_world[iy] = cpct_rand()%3+2;
   56F9 3E DA         [ 7]  927 	ld	a,#<(_p_world)
   56FB 85            [ 4]  928 	add	a, l
   56FC DD 77 FE      [19]  929 	ld	-2 (ix),a
   56FF 3E 7A         [ 7]  930 	ld	a,#>(_p_world)
   5701 8C            [ 4]  931 	adc	a, h
   5702 DD 77 FF      [19]  932 	ld	-1 (ix),a
   5705 D5            [11]  933 	push	de
   5706 CD FC 78      [17]  934 	call	_cpct_getRandom_mxor_u8
   5709 45            [ 4]  935 	ld	b,l
   570A D1            [10]  936 	pop	de
   570B D5            [11]  937 	push	de
   570C 3E 03         [ 7]  938 	ld	a,#0x03
   570E F5            [11]  939 	push	af
   570F 33            [ 6]  940 	inc	sp
   5710 C5            [11]  941 	push	bc
   5711 33            [ 6]  942 	inc	sp
   5712 CD 61 74      [17]  943 	call	__moduchar
   5715 F1            [10]  944 	pop	af
   5716 7D            [ 4]  945 	ld	a,l
   5717 D1            [10]  946 	pop	de
   5718 C6 02         [ 7]  947 	add	a, #0x02
   571A DD 6E FE      [19]  948 	ld	l,-2 (ix)
   571D DD 66 FF      [19]  949 	ld	h,-1 (ix)
   5720 77            [ 7]  950 	ld	(hl),a
   5721 1B            [ 6]  951 	dec	de
                            952 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   5722 7A            [ 4]  953 	ld	a,d
   5723 B3            [ 4]  954 	or	a,e
   5724 20 C2         [12]  955 	jr	NZ,00128$
                            956 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   5726 21 0A 00      [10]  957 	ld	hl,#0x000A
   5729 39            [11]  958 	add	hl,sp
   572A 4D            [ 4]  959 	ld	c,l
   572B 44            [ 4]  960 	ld	b,h
   572C DD 36 ED 00   [19]  961 	ld	-19 (ix),#0x00
   5730 DD 36 EE 00   [19]  962 	ld	-18 (ix),#0x00
   5734                     963 00129$:
                            964 ;src/game/world.c:182: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5734 C5            [11]  965 	push	bc
   5735 CD FC 77      [17]  966 	call	_cpct_getRandom_mxor_u16
   5738 11 00 0F      [10]  967 	ld	de,#0x0F00
   573B D5            [11]  968 	push	de
   573C E5            [11]  969 	push	hl
   573D CD 6D 74      [17]  970 	call	__moduint
   5740 F1            [10]  971 	pop	af
   5741 F1            [10]  972 	pop	af
   5742 C1            [10]  973 	pop	bc
   5743 DD 75 FE      [19]  974 	ld	-2 (ix),l
   5746 DD 74 FF      [19]  975 	ld	-1 (ix),h
                            976 ;src/game/world.c:184: switch(cpct_rand()%6)
   5749 C5            [11]  977 	push	bc
   574A CD FC 78      [17]  978 	call	_cpct_getRandom_mxor_u8
   574D 55            [ 4]  979 	ld	d,l
   574E 3E 06         [ 7]  980 	ld	a,#0x06
   5750 F5            [11]  981 	push	af
   5751 33            [ 6]  982 	inc	sp
   5752 D5            [11]  983 	push	de
   5753 33            [ 6]  984 	inc	sp
   5754 CD 61 74      [17]  985 	call	__moduchar
   5757 F1            [10]  986 	pop	af
   5758 5D            [ 4]  987 	ld	e,l
   5759 C1            [10]  988 	pop	bc
   575A 3E 05         [ 7]  989 	ld	a,#0x05
   575C 93            [ 4]  990 	sub	a, e
   575D 38 6A         [12]  991 	jr	C,00116$
                            992 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   575F 21 01 00      [10]  993 	ld	hl,#0x0001
   5762 09            [11]  994 	add	hl,bc
   5763 DD 75 F1      [19]  995 	ld	-15 (ix),l
   5766 DD 74 F2      [19]  996 	ld	-14 (ix),h
                            997 ;src/game/world.c:184: switch(cpct_rand()%6)
   5769 16 00         [ 7]  998 	ld	d,#0x00
   576B 21 71 57      [10]  999 	ld	hl,#00196$
   576E 19            [11] 1000 	add	hl,de
   576F 19            [11] 1001 	add	hl,de
                           1002 ;src/game/world.c:186: case 0:
   5770 E9            [ 4] 1003 	jp	(hl)
   5771                    1004 00196$:
   5771 18 0A         [12] 1005 	jr	00110$
   5773 18 15         [12] 1006 	jr	00111$
   5775 18 20         [12] 1007 	jr	00112$
   5777 18 2B         [12] 1008 	jr	00113$
   5779 18 36         [12] 1009 	jr	00114$
   577B 18 41         [12] 1010 	jr	00115$
   577D                    1011 00110$:
                           1012 ;src/game/world.c:187: p_cities[0] = 0b01110010; // 01001110;
   577D 3E 72         [ 7] 1013 	ld	a,#0x72
   577F 02            [ 7] 1014 	ld	(bc),a
                           1015 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   5780 DD 6E F1      [19] 1016 	ld	l,-15 (ix)
   5783 DD 66 F2      [19] 1017 	ld	h,-14 (ix)
   5786 36 46         [10] 1018 	ld	(hl),#0x46
                           1019 ;src/game/world.c:189: break;
   5788 18 3F         [12] 1020 	jr	00116$
                           1021 ;src/game/world.c:191: case 1:
   578A                    1022 00111$:
                           1023 ;src/game/world.c:192: p_cities[0] = 0b01100000; // 00000110;
   578A 3E 60         [ 7] 1024 	ld	a,#0x60
   578C 02            [ 7] 1025 	ld	(bc),a
                           1026 ;src/game/world.c:193: p_cities[1] = 0b00000110; // 01100000;
   578D DD 6E F1      [19] 1027 	ld	l,-15 (ix)
   5790 DD 66 F2      [19] 1028 	ld	h,-14 (ix)
   5793 36 06         [10] 1029 	ld	(hl),#0x06
                           1030 ;src/game/world.c:194: break;
   5795 18 32         [12] 1031 	jr	00116$
                           1032 ;src/game/world.c:196: case 2:
   5797                    1033 00112$:
                           1034 ;src/game/world.c:197: p_cities[0] = 0b00010000; // 00001000;
   5797 3E 10         [ 7] 1035 	ld	a,#0x10
   5799 02            [ 7] 1036 	ld	(bc),a
                           1037 ;src/game/world.c:198: p_cities[1] = 0b00000110; // 01100000;
   579A DD 6E F1      [19] 1038 	ld	l,-15 (ix)
   579D DD 66 F2      [19] 1039 	ld	h,-14 (ix)
   57A0 36 06         [10] 1040 	ld	(hl),#0x06
                           1041 ;src/game/world.c:199: break;
   57A2 18 25         [12] 1042 	jr	00116$
                           1043 ;src/game/world.c:201: case 3:
   57A4                    1044 00113$:
                           1045 ;src/game/world.c:202: p_cities[0] = 0b11000000; // 00000011;
   57A4 3E C0         [ 7] 1046 	ld	a,#0xC0
   57A6 02            [ 7] 1047 	ld	(bc),a
                           1048 ;src/game/world.c:203: p_cities[1] = 0b00110001; // 10001100;
   57A7 DD 6E F1      [19] 1049 	ld	l,-15 (ix)
   57AA DD 66 F2      [19] 1050 	ld	h,-14 (ix)
   57AD 36 31         [10] 1051 	ld	(hl),#0x31
                           1052 ;src/game/world.c:204: break;
   57AF 18 18         [12] 1053 	jr	00116$
                           1054 ;src/game/world.c:206: case 4:
   57B1                    1055 00114$:
                           1056 ;src/game/world.c:207: p_cities[0] = 0b11000100; // 00100011;
   57B1 3E C4         [ 7] 1057 	ld	a,#0xC4
   57B3 02            [ 7] 1058 	ld	(bc),a
                           1059 ;src/game/world.c:208: p_cities[1] = 0b00001110; // 01110000;
   57B4 DD 6E F1      [19] 1060 	ld	l,-15 (ix)
   57B7 DD 66 F2      [19] 1061 	ld	h,-14 (ix)
   57BA 36 0E         [10] 1062 	ld	(hl),#0x0E
                           1063 ;src/game/world.c:209: break;
   57BC 18 0B         [12] 1064 	jr	00116$
                           1065 ;src/game/world.c:211: case 5:
   57BE                    1066 00115$:
                           1067 ;src/game/world.c:212: p_cities[0] = 0b01000000; // 00000010;
   57BE 3E 40         [ 7] 1068 	ld	a,#0x40
   57C0 02            [ 7] 1069 	ld	(bc),a
                           1070 ;src/game/world.c:213: p_cities[1] = 0b01001110; // 01110010;
   57C1 DD 6E F1      [19] 1071 	ld	l,-15 (ix)
   57C4 DD 66 F2      [19] 1072 	ld	h,-14 (ix)
   57C7 36 4E         [10] 1073 	ld	(hl),#0x4E
                           1074 ;src/game/world.c:215: }
   57C9                    1075 00116$:
                           1076 ;src/game/world.c:217: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   57C9 69            [ 4] 1077 	ld	l, c
   57CA 60            [ 4] 1078 	ld	h, b
   57CB C5            [11] 1079 	push	bc
   57CC E5            [11] 1080 	push	hl
   57CD 21 04 04      [10] 1081 	ld	hl,#0x0404
   57D0 E5            [11] 1082 	push	hl
   57D1 DD 6E FE      [19] 1083 	ld	l,-2 (ix)
   57D4 DD 66 FF      [19] 1084 	ld	h,-1 (ix)
   57D7 E5            [11] 1085 	push	hl
   57D8 3E 02         [ 7] 1086 	ld	a,#0x02
   57DA F5            [11] 1087 	push	af
   57DB 33            [ 6] 1088 	inc	sp
   57DC CD C3 53      [17] 1089 	call	_patternTile
   57DF 21 07 00      [10] 1090 	ld	hl,#7
   57E2 39            [11] 1091 	add	hl,sp
   57E3 F9            [ 6] 1092 	ld	sp,hl
   57E4 C1            [10] 1093 	pop	bc
                           1094 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   57E5 DD 34 ED      [23] 1095 	inc	-19 (ix)
   57E8 20 03         [12] 1096 	jr	NZ,00197$
   57EA DD 34 EE      [23] 1097 	inc	-18 (ix)
   57ED                    1098 00197$:
   57ED DD 7E ED      [19] 1099 	ld	a,-19 (ix)
   57F0 D6 14         [ 7] 1100 	sub	a, #0x14
   57F2 DD 7E EE      [19] 1101 	ld	a,-18 (ix)
   57F5 17            [ 4] 1102 	rla
   57F6 3F            [ 4] 1103 	ccf
   57F7 1F            [ 4] 1104 	rra
   57F8 DE 80         [ 7] 1105 	sbc	a, #0x80
   57FA DA 34 57      [10] 1106 	jp	C,00129$
                           1107 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   57FD 11 13 00      [10] 1108 	ld	de,#0x0013
   5800                    1109 00133$:
                           1110 ;src/game/world.c:224: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5800 D5            [11] 1111 	push	de
   5801 CD FC 77      [17] 1112 	call	_cpct_getRandom_mxor_u16
   5804 D1            [10] 1113 	pop	de
   5805 D5            [11] 1114 	push	de
   5806 01 00 0F      [10] 1115 	ld	bc,#0x0F00
   5809 C5            [11] 1116 	push	bc
   580A E5            [11] 1117 	push	hl
   580B CD 6D 74      [17] 1118 	call	__moduint
   580E F1            [10] 1119 	pop	af
   580F F1            [10] 1120 	pop	af
   5810 D1            [10] 1121 	pop	de
                           1122 ;src/game/world.c:225: p_world[iy] = LIVESTOCK;
   5811 01 DA 7A      [10] 1123 	ld	bc,#_p_world
   5814 09            [11] 1124 	add	hl,bc
   5815 36 09         [10] 1125 	ld	(hl),#0x09
   5817 1B            [ 6] 1126 	dec	de
                           1127 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   5818 7A            [ 4] 1128 	ld	a,d
   5819 B3            [ 4] 1129 	or	a,e
   581A 20 E4         [12] 1130 	jr	NZ,00133$
   581C DD F9         [10] 1131 	ld	sp, ix
   581E DD E1         [14] 1132 	pop	ix
   5820 C9            [10] 1133 	ret
                           1134 ;src/game/world.c:229: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1135 ;	---------------------------------
                           1136 ; Function drawTile
                           1137 ; ---------------------------------
   5821                    1138 _drawTile::
   5821 DD E5         [15] 1139 	push	ix
   5823 DD 21 00 00   [14] 1140 	ld	ix,#0
   5827 DD 39         [15] 1141 	add	ix,sp
                           1142 ;src/game/world.c:232: int adress = (y_+iy)*WIDTH+x_+ix;
   5829 DD 6E 05      [19] 1143 	ld	l,5 (ix)
   582C 26 00         [ 7] 1144 	ld	h,#0x00
   582E DD 5E 07      [19] 1145 	ld	e,7 (ix)
   5831 16 00         [ 7] 1146 	ld	d,#0x00
   5833 19            [11] 1147 	add	hl,de
   5834 4D            [ 4] 1148 	ld	c, l
   5835 44            [ 4] 1149 	ld	b, h
   5836 29            [11] 1150 	add	hl, hl
   5837 29            [11] 1151 	add	hl, hl
   5838 09            [11] 1152 	add	hl, bc
   5839 29            [11] 1153 	add	hl, hl
   583A 29            [11] 1154 	add	hl, hl
   583B 29            [11] 1155 	add	hl, hl
   583C 29            [11] 1156 	add	hl, hl
   583D DD 5E 04      [19] 1157 	ld	e,4 (ix)
   5840 16 00         [ 7] 1158 	ld	d,#0x00
   5842 19            [11] 1159 	add	hl,de
   5843 DD 5E 06      [19] 1160 	ld	e,6 (ix)
   5846 16 00         [ 7] 1161 	ld	d,#0x00
   5848 19            [11] 1162 	add	hl,de
   5849 5D            [ 4] 1163 	ld	e, l
   584A 54            [ 4] 1164 	ld	d, h
                           1165 ;src/game/world.c:234: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   584B DD 7E 07      [19] 1166 	ld	a,7 (ix)
   584E 07            [ 4] 1167 	rlca
   584F 07            [ 4] 1168 	rlca
   5850 07            [ 4] 1169 	rlca
   5851 07            [ 4] 1170 	rlca
   5852 E6 F0         [ 7] 1171 	and	a,#0xF0
   5854 67            [ 4] 1172 	ld	h,a
   5855 DD 7E 06      [19] 1173 	ld	a,6 (ix)
   5858 87            [ 4] 1174 	add	a, a
   5859 87            [ 4] 1175 	add	a, a
   585A D5            [11] 1176 	push	de
   585B E5            [11] 1177 	push	hl
   585C 33            [ 6] 1178 	inc	sp
   585D F5            [11] 1179 	push	af
   585E 33            [ 6] 1180 	inc	sp
   585F 21 00 C0      [10] 1181 	ld	hl,#0xC000
   5862 E5            [11] 1182 	push	hl
   5863 CD EA 79      [17] 1183 	call	_cpct_getScreenPtr
   5866 D1            [10] 1184 	pop	de
   5867 4D            [ 4] 1185 	ld	c, l
   5868 44            [ 4] 1186 	ld	b, h
                           1187 ;src/game/world.c:236: switch(p_world[adress])
   5869 21 DA 7A      [10] 1188 	ld	hl,#_p_world
   586C 19            [11] 1189 	add	hl,de
   586D 5E            [ 7] 1190 	ld	e,(hl)
   586E 3E 19         [ 7] 1191 	ld	a,#0x19
   5870 93            [ 4] 1192 	sub	a, e
   5871 DA 46 5A      [10] 1193 	jp	C,00128$
   5874 16 00         [ 7] 1194 	ld	d,#0x00
   5876 21 7D 58      [10] 1195 	ld	hl,#00134$
   5879 19            [11] 1196 	add	hl,de
   587A 19            [11] 1197 	add	hl,de
   587B 19            [11] 1198 	add	hl,de
   587C E9            [ 4] 1199 	jp	(hl)
   587D                    1200 00134$:
   587D C3 CB 58      [10] 1201 	jp	00101$
   5880 C3 DA 58      [10] 1202 	jp	00102$
   5883 C3 E9 58      [10] 1203 	jp	00103$
   5886 C3 F8 58      [10] 1204 	jp	00104$
   5889 C3 07 59      [10] 1205 	jp	00105$
   588C C3 16 59      [10] 1206 	jp	00106$
   588F C3 25 59      [10] 1207 	jp	00107$
   5892 C3 34 59      [10] 1208 	jp	00108$
   5895 C3 43 59      [10] 1209 	jp	00109$
   5898 C3 52 59      [10] 1210 	jp	00110$
   589B C3 61 59      [10] 1211 	jp	00111$
   589E C3 70 59      [10] 1212 	jp	00112$
   58A1 C3 7F 59      [10] 1213 	jp	00113$
   58A4 C3 8E 59      [10] 1214 	jp	00114$
   58A7 C3 9D 59      [10] 1215 	jp	00115$
   58AA C3 AC 59      [10] 1216 	jp	00116$
   58AD C3 BB 59      [10] 1217 	jp	00117$
   58B0 C3 CA 59      [10] 1218 	jp	00118$
   58B3 C3 D8 59      [10] 1219 	jp	00119$
   58B6 C3 E6 59      [10] 1220 	jp	00120$
   58B9 C3 F4 59      [10] 1221 	jp	00121$
   58BC C3 02 5A      [10] 1222 	jp	00122$
   58BF C3 10 5A      [10] 1223 	jp	00123$
   58C2 C3 1E 5A      [10] 1224 	jp	00124$
   58C5 C3 2C 5A      [10] 1225 	jp	00125$
   58C8 C3 3A 5A      [10] 1226 	jp	00126$
                           1227 ;src/game/world.c:238: case GRASS1:
   58CB                    1228 00101$:
                           1229 ;src/game/world.c:239: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   58CB 11 F9 61      [10] 1230 	ld	de,#_grass1
   58CE 21 04 10      [10] 1231 	ld	hl,#0x1004
   58D1 E5            [11] 1232 	push	hl
   58D2 C5            [11] 1233 	push	bc
   58D3 D5            [11] 1234 	push	de
   58D4 CD BC 73      [17] 1235 	call	_cpct_drawSprite
                           1236 ;src/game/world.c:240: break;
   58D7 C3 46 5A      [10] 1237 	jp	00128$
                           1238 ;src/game/world.c:241: case GRASS2:
   58DA                    1239 00102$:
                           1240 ;src/game/world.c:242: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   58DA 11 39 62      [10] 1241 	ld	de,#_grass2
   58DD 21 04 10      [10] 1242 	ld	hl,#0x1004
   58E0 E5            [11] 1243 	push	hl
   58E1 C5            [11] 1244 	push	bc
   58E2 D5            [11] 1245 	push	de
   58E3 CD BC 73      [17] 1246 	call	_cpct_drawSprite
                           1247 ;src/game/world.c:243: break;
   58E6 C3 46 5A      [10] 1248 	jp	00128$
                           1249 ;src/game/world.c:244: case DWELLINGS1:
   58E9                    1250 00103$:
                           1251 ;src/game/world.c:245: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   58E9 11 B9 62      [10] 1252 	ld	de,#_dwellings1
   58EC 21 04 10      [10] 1253 	ld	hl,#0x1004
   58EF E5            [11] 1254 	push	hl
   58F0 C5            [11] 1255 	push	bc
   58F1 D5            [11] 1256 	push	de
   58F2 CD BC 73      [17] 1257 	call	_cpct_drawSprite
                           1258 ;src/game/world.c:246: break;
   58F5 C3 46 5A      [10] 1259 	jp	00128$
                           1260 ;src/game/world.c:247: case DWELLINGS2:
   58F8                    1261 00104$:
                           1262 ;src/game/world.c:248: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   58F8 11 F9 62      [10] 1263 	ld	de,#_dwellings2
   58FB 21 04 10      [10] 1264 	ld	hl,#0x1004
   58FE E5            [11] 1265 	push	hl
   58FF C5            [11] 1266 	push	bc
   5900 D5            [11] 1267 	push	de
   5901 CD BC 73      [17] 1268 	call	_cpct_drawSprite
                           1269 ;src/game/world.c:249: break;
   5904 C3 46 5A      [10] 1270 	jp	00128$
                           1271 ;src/game/world.c:250: case DWELLINGS3:
   5907                    1272 00105$:
                           1273 ;src/game/world.c:251: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   5907 11 39 63      [10] 1274 	ld	de,#_dwellings3
   590A 21 04 10      [10] 1275 	ld	hl,#0x1004
   590D E5            [11] 1276 	push	hl
   590E C5            [11] 1277 	push	bc
   590F D5            [11] 1278 	push	de
   5910 CD BC 73      [17] 1279 	call	_cpct_drawSprite
                           1280 ;src/game/world.c:252: break;
   5913 C3 46 5A      [10] 1281 	jp	00128$
                           1282 ;src/game/world.c:253: case FARM1:
   5916                    1283 00106$:
                           1284 ;src/game/world.c:254: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   5916 11 B9 63      [10] 1285 	ld	de,#_farm1
   5919 21 04 10      [10] 1286 	ld	hl,#0x1004
   591C E5            [11] 1287 	push	hl
   591D C5            [11] 1288 	push	bc
   591E D5            [11] 1289 	push	de
   591F CD BC 73      [17] 1290 	call	_cpct_drawSprite
                           1291 ;src/game/world.c:255: break;
   5922 C3 46 5A      [10] 1292 	jp	00128$
                           1293 ;src/game/world.c:256: case FARM2:
   5925                    1294 00107$:
                           1295 ;src/game/world.c:257: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   5925 11 F9 63      [10] 1296 	ld	de,#_farm2
   5928 21 04 10      [10] 1297 	ld	hl,#0x1004
   592B E5            [11] 1298 	push	hl
   592C C5            [11] 1299 	push	bc
   592D D5            [11] 1300 	push	de
   592E CD BC 73      [17] 1301 	call	_cpct_drawSprite
                           1302 ;src/game/world.c:258: break;
   5931 C3 46 5A      [10] 1303 	jp	00128$
                           1304 ;src/game/world.c:259: case WATER:
   5934                    1305 00108$:
                           1306 ;src/game/world.c:260: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   5934 11 79 63      [10] 1307 	ld	de,#_water
   5937 21 04 10      [10] 1308 	ld	hl,#0x1004
   593A E5            [11] 1309 	push	hl
   593B C5            [11] 1310 	push	bc
   593C D5            [11] 1311 	push	de
   593D CD BC 73      [17] 1312 	call	_cpct_drawSprite
                           1313 ;src/game/world.c:261: break;
   5940 C3 46 5A      [10] 1314 	jp	00128$
                           1315 ;src/game/world.c:262: case FOREST:
   5943                    1316 00109$:
                           1317 ;src/game/world.c:263: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   5943 11 79 62      [10] 1318 	ld	de,#_forest
   5946 21 04 10      [10] 1319 	ld	hl,#0x1004
   5949 E5            [11] 1320 	push	hl
   594A C5            [11] 1321 	push	bc
   594B D5            [11] 1322 	push	de
   594C CD BC 73      [17] 1323 	call	_cpct_drawSprite
                           1324 ;src/game/world.c:264: break;
   594F C3 46 5A      [10] 1325 	jp	00128$
                           1326 ;src/game/world.c:265: case LIVESTOCK:
   5952                    1327 00110$:
                           1328 ;src/game/world.c:266: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   5952 11 39 64      [10] 1329 	ld	de,#_livestock
   5955 21 04 10      [10] 1330 	ld	hl,#0x1004
   5958 E5            [11] 1331 	push	hl
   5959 C5            [11] 1332 	push	bc
   595A D5            [11] 1333 	push	de
   595B CD BC 73      [17] 1334 	call	_cpct_drawSprite
                           1335 ;src/game/world.c:267: break;
   595E C3 46 5A      [10] 1336 	jp	00128$
                           1337 ;src/game/world.c:268: case SSNS:
   5961                    1338 00111$:
                           1339 ;src/game/world.c:269: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5961 11 79 64      [10] 1340 	ld	de,#_station_small_ns
   5964 21 04 10      [10] 1341 	ld	hl,#0x1004
   5967 E5            [11] 1342 	push	hl
   5968 C5            [11] 1343 	push	bc
   5969 D5            [11] 1344 	push	de
   596A CD BC 73      [17] 1345 	call	_cpct_drawSprite
                           1346 ;src/game/world.c:270: break;
   596D C3 46 5A      [10] 1347 	jp	00128$
                           1348 ;src/game/world.c:271: case SSEW:
   5970                    1349 00112$:
                           1350 ;src/game/world.c:272: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   5970 11 B9 64      [10] 1351 	ld	de,#_station_small_ew
   5973 21 04 10      [10] 1352 	ld	hl,#0x1004
   5976 E5            [11] 1353 	push	hl
   5977 C5            [11] 1354 	push	bc
   5978 D5            [11] 1355 	push	de
   5979 CD BC 73      [17] 1356 	call	_cpct_drawSprite
                           1357 ;src/game/world.c:273: break;
   597C C3 46 5A      [10] 1358 	jp	00128$
                           1359 ;src/game/world.c:274: case SMNS:
   597F                    1360 00113$:
                           1361 ;src/game/world.c:275: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   597F 11 F9 64      [10] 1362 	ld	de,#_station_medium_ns
   5982 21 04 10      [10] 1363 	ld	hl,#0x1004
   5985 E5            [11] 1364 	push	hl
   5986 C5            [11] 1365 	push	bc
   5987 D5            [11] 1366 	push	de
   5988 CD BC 73      [17] 1367 	call	_cpct_drawSprite
                           1368 ;src/game/world.c:276: break;
   598B C3 46 5A      [10] 1369 	jp	00128$
                           1370 ;src/game/world.c:277: case SMEW:
   598E                    1371 00114$:
                           1372 ;src/game/world.c:278: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   598E 11 39 65      [10] 1373 	ld	de,#_station_medium_ew
   5991 21 04 10      [10] 1374 	ld	hl,#0x1004
   5994 E5            [11] 1375 	push	hl
   5995 C5            [11] 1376 	push	bc
   5996 D5            [11] 1377 	push	de
   5997 CD BC 73      [17] 1378 	call	_cpct_drawSprite
                           1379 ;src/game/world.c:279: break;
   599A C3 46 5A      [10] 1380 	jp	00128$
                           1381 ;src/game/world.c:280: case SLNS:
   599D                    1382 00115$:
                           1383 ;src/game/world.c:281: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   599D 11 79 65      [10] 1384 	ld	de,#_station_large_ns
   59A0 21 04 10      [10] 1385 	ld	hl,#0x1004
   59A3 E5            [11] 1386 	push	hl
   59A4 C5            [11] 1387 	push	bc
   59A5 D5            [11] 1388 	push	de
   59A6 CD BC 73      [17] 1389 	call	_cpct_drawSprite
                           1390 ;src/game/world.c:282: break;
   59A9 C3 46 5A      [10] 1391 	jp	00128$
                           1392 ;src/game/world.c:283: case SLEW:
   59AC                    1393 00116$:
                           1394 ;src/game/world.c:284: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   59AC 11 B9 65      [10] 1395 	ld	de,#_station_large_ew
   59AF 21 04 10      [10] 1396 	ld	hl,#0x1004
   59B2 E5            [11] 1397 	push	hl
   59B3 C5            [11] 1398 	push	bc
   59B4 D5            [11] 1399 	push	de
   59B5 CD BC 73      [17] 1400 	call	_cpct_drawSprite
                           1401 ;src/game/world.c:285: break;
   59B8 C3 46 5A      [10] 1402 	jp	00128$
                           1403 ;src/game/world.c:286: case REW:
   59BB                    1404 00117$:
                           1405 ;src/game/world.c:287: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   59BB 11 F9 65      [10] 1406 	ld	de,#_rail_ew
   59BE 21 04 10      [10] 1407 	ld	hl,#0x1004
   59C1 E5            [11] 1408 	push	hl
   59C2 C5            [11] 1409 	push	bc
   59C3 D5            [11] 1410 	push	de
   59C4 CD BC 73      [17] 1411 	call	_cpct_drawSprite
                           1412 ;src/game/world.c:288: break;
   59C7 C3 46 5A      [10] 1413 	jp	00128$
                           1414 ;src/game/world.c:289: case RNS:
   59CA                    1415 00118$:
                           1416 ;src/game/world.c:290: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   59CA 11 39 66      [10] 1417 	ld	de,#_rail_ns
   59CD 21 04 10      [10] 1418 	ld	hl,#0x1004
   59D0 E5            [11] 1419 	push	hl
   59D1 C5            [11] 1420 	push	bc
   59D2 D5            [11] 1421 	push	de
   59D3 CD BC 73      [17] 1422 	call	_cpct_drawSprite
                           1423 ;src/game/world.c:291: break;
   59D6 18 6E         [12] 1424 	jr	00128$
                           1425 ;src/game/world.c:292: case REN:
   59D8                    1426 00119$:
                           1427 ;src/game/world.c:293: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   59D8 11 79 66      [10] 1428 	ld	de,#_rail_en
   59DB 21 04 10      [10] 1429 	ld	hl,#0x1004
   59DE E5            [11] 1430 	push	hl
   59DF C5            [11] 1431 	push	bc
   59E0 D5            [11] 1432 	push	de
   59E1 CD BC 73      [17] 1433 	call	_cpct_drawSprite
                           1434 ;src/game/world.c:294: break;
   59E4 18 60         [12] 1435 	jr	00128$
                           1436 ;src/game/world.c:295: case RES:
   59E6                    1437 00120$:
                           1438 ;src/game/world.c:296: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   59E6 11 B9 66      [10] 1439 	ld	de,#_rail_es
   59E9 21 04 10      [10] 1440 	ld	hl,#0x1004
   59EC E5            [11] 1441 	push	hl
   59ED C5            [11] 1442 	push	bc
   59EE D5            [11] 1443 	push	de
   59EF CD BC 73      [17] 1444 	call	_cpct_drawSprite
                           1445 ;src/game/world.c:297: break;
   59F2 18 52         [12] 1446 	jr	00128$
                           1447 ;src/game/world.c:298: case RWN:
   59F4                    1448 00121$:
                           1449 ;src/game/world.c:299: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   59F4 11 F9 66      [10] 1450 	ld	de,#_rail_wn
   59F7 21 04 10      [10] 1451 	ld	hl,#0x1004
   59FA E5            [11] 1452 	push	hl
   59FB C5            [11] 1453 	push	bc
   59FC D5            [11] 1454 	push	de
   59FD CD BC 73      [17] 1455 	call	_cpct_drawSprite
                           1456 ;src/game/world.c:300: break;
   5A00 18 44         [12] 1457 	jr	00128$
                           1458 ;src/game/world.c:301: case RWS:
   5A02                    1459 00122$:
                           1460 ;src/game/world.c:302: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   5A02 11 39 67      [10] 1461 	ld	de,#_rail_ws
   5A05 21 04 10      [10] 1462 	ld	hl,#0x1004
   5A08 E5            [11] 1463 	push	hl
   5A09 C5            [11] 1464 	push	bc
   5A0A D5            [11] 1465 	push	de
   5A0B CD BC 73      [17] 1466 	call	_cpct_drawSprite
                           1467 ;src/game/world.c:303: break;
   5A0E 18 36         [12] 1468 	jr	00128$
                           1469 ;src/game/world.c:304: case REWN:
   5A10                    1470 00123$:
                           1471 ;src/game/world.c:305: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5A10 11 79 67      [10] 1472 	ld	de,#_rail_ew_n
   5A13 21 04 10      [10] 1473 	ld	hl,#0x1004
   5A16 E5            [11] 1474 	push	hl
   5A17 C5            [11] 1475 	push	bc
   5A18 D5            [11] 1476 	push	de
   5A19 CD BC 73      [17] 1477 	call	_cpct_drawSprite
                           1478 ;src/game/world.c:306: break;
   5A1C 18 28         [12] 1479 	jr	00128$
                           1480 ;src/game/world.c:307: case REWS:
   5A1E                    1481 00124$:
                           1482 ;src/game/world.c:308: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5A1E 11 B9 67      [10] 1483 	ld	de,#_rail_ew_s
   5A21 21 04 10      [10] 1484 	ld	hl,#0x1004
   5A24 E5            [11] 1485 	push	hl
   5A25 C5            [11] 1486 	push	bc
   5A26 D5            [11] 1487 	push	de
   5A27 CD BC 73      [17] 1488 	call	_cpct_drawSprite
                           1489 ;src/game/world.c:309: break;
   5A2A 18 1A         [12] 1490 	jr	00128$
                           1491 ;src/game/world.c:310: case RNSE:
   5A2C                    1492 00125$:
                           1493 ;src/game/world.c:311: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5A2C 11 39 68      [10] 1494 	ld	de,#_rail_ns_e
   5A2F 21 04 10      [10] 1495 	ld	hl,#0x1004
   5A32 E5            [11] 1496 	push	hl
   5A33 C5            [11] 1497 	push	bc
   5A34 D5            [11] 1498 	push	de
   5A35 CD BC 73      [17] 1499 	call	_cpct_drawSprite
                           1500 ;src/game/world.c:312: break;
   5A38 18 0C         [12] 1501 	jr	00128$
                           1502 ;src/game/world.c:313: case RNSW:
   5A3A                    1503 00126$:
                           1504 ;src/game/world.c:314: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   5A3A 11 F9 67      [10] 1505 	ld	de,#_rail_ns_w
   5A3D 21 04 10      [10] 1506 	ld	hl,#0x1004
   5A40 E5            [11] 1507 	push	hl
   5A41 C5            [11] 1508 	push	bc
   5A42 D5            [11] 1509 	push	de
   5A43 CD BC 73      [17] 1510 	call	_cpct_drawSprite
                           1511 ;src/game/world.c:316: }
   5A46                    1512 00128$:
   5A46 DD E1         [14] 1513 	pop	ix
   5A48 C9            [10] 1514 	ret
                           1515 ;src/game/world.c:319: void drawScrolls(u8 x_, u8 y_)
                           1516 ;	---------------------------------
                           1517 ; Function drawScrolls
                           1518 ; ---------------------------------
   5A49                    1519 _drawScrolls::
   5A49 DD E5         [15] 1520 	push	ix
   5A4B DD 21 00 00   [14] 1521 	ld	ix,#0
   5A4F DD 39         [15] 1522 	add	ix,sp
   5A51 3B            [ 6] 1523 	dec	sp
                           1524 ;src/game/world.c:325: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   5A52 DD 4E 04      [19] 1525 	ld	c,4 (ix)
   5A55 06 00         [ 7] 1526 	ld	b,#0x00
   5A57 69            [ 4] 1527 	ld	l, c
   5A58 60            [ 4] 1528 	ld	h, b
   5A59 29            [11] 1529 	add	hl, hl
   5A5A 29            [11] 1530 	add	hl, hl
   5A5B 29            [11] 1531 	add	hl, hl
   5A5C 09            [11] 1532 	add	hl, bc
   5A5D 29            [11] 1533 	add	hl, hl
   5A5E 09            [11] 1534 	add	hl, bc
   5A5F 29            [11] 1535 	add	hl, hl
   5A60 29            [11] 1536 	add	hl, hl
   5A61 01 3C 00      [10] 1537 	ld	bc,#0x003C
   5A64 C5            [11] 1538 	push	bc
   5A65 E5            [11] 1539 	push	hl
   5A66 CD 3B 7A      [17] 1540 	call	__divsint
   5A69 F1            [10] 1541 	pop	af
   5A6A F1            [10] 1542 	pop	af
   5A6B 55            [ 4] 1543 	ld	d,l
                           1544 ;src/game/world.c:326: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   5A6C DD 4E 05      [19] 1545 	ld	c,5 (ix)
   5A6F 06 00         [ 7] 1546 	ld	b,#0x00
   5A71 69            [ 4] 1547 	ld	l, c
   5A72 60            [ 4] 1548 	ld	h, b
   5A73 29            [11] 1549 	add	hl, hl
   5A74 29            [11] 1550 	add	hl, hl
   5A75 09            [11] 1551 	add	hl, bc
   5A76 29            [11] 1552 	add	hl, hl
   5A77 09            [11] 1553 	add	hl, bc
   5A78 29            [11] 1554 	add	hl, hl
   5A79 29            [11] 1555 	add	hl, hl
   5A7A 29            [11] 1556 	add	hl, hl
   5A7B 29            [11] 1557 	add	hl, hl
   5A7C D5            [11] 1558 	push	de
   5A7D 01 24 00      [10] 1559 	ld	bc,#0x0024
   5A80 C5            [11] 1560 	push	bc
   5A81 E5            [11] 1561 	push	hl
   5A82 CD 3B 7A      [17] 1562 	call	__divsint
   5A85 F1            [10] 1563 	pop	af
   5A86 F1            [10] 1564 	pop	af
   5A87 D1            [10] 1565 	pop	de
   5A88 DD 75 FF      [19] 1566 	ld	-1 (ix),l
                           1567 ;src/game/world.c:328: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   5A8B AF            [ 4] 1568 	xor	a, a
   5A8C F5            [11] 1569 	push	af
   5A8D 33            [ 6] 1570 	inc	sp
   5A8E D5            [11] 1571 	push	de
   5A8F 33            [ 6] 1572 	inc	sp
   5A90 21 00 C0      [10] 1573 	ld	hl,#0xC000
   5A93 E5            [11] 1574 	push	hl
   5A94 CD EA 79      [17] 1575 	call	_cpct_getScreenPtr
                           1576 ;src/game/world.c:329: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   5A97 E5            [11] 1577 	push	hl
   5A98 21 00 00      [10] 1578 	ld	hl,#0x0000
   5A9B E5            [11] 1579 	push	hl
   5A9C 2E 00         [ 7] 1580 	ld	l, #0x00
   5A9E E5            [11] 1581 	push	hl
   5A9F CD C4 78      [17] 1582 	call	_cpct_px2byteM1
   5AA2 F1            [10] 1583 	pop	af
   5AA3 F1            [10] 1584 	pop	af
   5AA4 45            [ 4] 1585 	ld	b,l
   5AA5 D1            [10] 1586 	pop	de
   5AA6 21 04 04      [10] 1587 	ld	hl,#0x0404
   5AA9 E5            [11] 1588 	push	hl
   5AAA C5            [11] 1589 	push	bc
   5AAB 33            [ 6] 1590 	inc	sp
   5AAC D5            [11] 1591 	push	de
   5AAD CD 31 79      [17] 1592 	call	_cpct_drawSolidBox
   5AB0 F1            [10] 1593 	pop	af
   5AB1 F1            [10] 1594 	pop	af
   5AB2 33            [ 6] 1595 	inc	sp
                           1596 ;src/game/world.c:331: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   5AB3 DD 7E FF      [19] 1597 	ld	a,-1 (ix)
   5AB6 F5            [11] 1598 	push	af
   5AB7 33            [ 6] 1599 	inc	sp
   5AB8 AF            [ 4] 1600 	xor	a, a
   5AB9 F5            [11] 1601 	push	af
   5ABA 33            [ 6] 1602 	inc	sp
   5ABB 21 00 C0      [10] 1603 	ld	hl,#0xC000
   5ABE E5            [11] 1604 	push	hl
   5ABF CD EA 79      [17] 1605 	call	_cpct_getScreenPtr
                           1606 ;src/game/world.c:332: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   5AC2 E5            [11] 1607 	push	hl
   5AC3 21 00 00      [10] 1608 	ld	hl,#0x0000
   5AC6 E5            [11] 1609 	push	hl
   5AC7 2E 00         [ 7] 1610 	ld	l, #0x00
   5AC9 E5            [11] 1611 	push	hl
   5ACA CD C4 78      [17] 1612 	call	_cpct_px2byteM1
   5ACD F1            [10] 1613 	pop	af
   5ACE F1            [10] 1614 	pop	af
   5ACF 45            [ 4] 1615 	ld	b,l
   5AD0 D1            [10] 1616 	pop	de
   5AD1 21 01 10      [10] 1617 	ld	hl,#0x1001
   5AD4 E5            [11] 1618 	push	hl
   5AD5 C5            [11] 1619 	push	bc
   5AD6 33            [ 6] 1620 	inc	sp
   5AD7 D5            [11] 1621 	push	de
   5AD8 CD 31 79      [17] 1622 	call	_cpct_drawSolidBox
   5ADB F1            [10] 1623 	pop	af
   5ADC F1            [10] 1624 	pop	af
   5ADD 33            [ 6] 1625 	inc	sp
   5ADE 33            [ 6] 1626 	inc	sp
   5ADF DD E1         [14] 1627 	pop	ix
   5AE1 C9            [10] 1628 	ret
                           1629 ;src/game/world.c:335: void drawWorld(u8 x_, u8 y_)
                           1630 ;	---------------------------------
                           1631 ; Function drawWorld
                           1632 ; ---------------------------------
   5AE2                    1633 _drawWorld::
                           1634 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   5AE2 16 00         [ 7] 1635 	ld	d,#0x00
                           1636 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   5AE4                    1637 00109$:
   5AE4 1E 00         [ 7] 1638 	ld	e,#0x00
   5AE6                    1639 00103$:
                           1640 ;src/game/world.c:344: drawTile(x_, y_, ix, iy);
   5AE6 D5            [11] 1641 	push	de
   5AE7 D5            [11] 1642 	push	de
   5AE8 21 07 00      [10] 1643 	ld	hl, #7+0
   5AEB 39            [11] 1644 	add	hl, sp
   5AEC 7E            [ 7] 1645 	ld	a, (hl)
   5AED F5            [11] 1646 	push	af
   5AEE 33            [ 6] 1647 	inc	sp
   5AEF 21 07 00      [10] 1648 	ld	hl, #7+0
   5AF2 39            [11] 1649 	add	hl, sp
   5AF3 7E            [ 7] 1650 	ld	a, (hl)
   5AF4 F5            [11] 1651 	push	af
   5AF5 33            [ 6] 1652 	inc	sp
   5AF6 CD 21 58      [17] 1653 	call	_drawTile
   5AF9 F1            [10] 1654 	pop	af
   5AFA F1            [10] 1655 	pop	af
   5AFB D1            [10] 1656 	pop	de
                           1657 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   5AFC 1C            [ 4] 1658 	inc	e
   5AFD 7B            [ 4] 1659 	ld	a,e
   5AFE D6 14         [ 7] 1660 	sub	a, #0x14
   5B00 38 E4         [12] 1661 	jr	C,00103$
                           1662 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   5B02 14            [ 4] 1663 	inc	d
   5B03 7A            [ 4] 1664 	ld	a,d
   5B04 D6 0C         [ 7] 1665 	sub	a, #0x0C
   5B06 38 DC         [12] 1666 	jr	C,00109$
                           1667 ;src/game/world.c:348: drawScrolls(x_, y_);
   5B08 21 03 00      [10] 1668 	ld	hl, #3+0
   5B0B 39            [11] 1669 	add	hl, sp
   5B0C 7E            [ 7] 1670 	ld	a, (hl)
   5B0D F5            [11] 1671 	push	af
   5B0E 33            [ 6] 1672 	inc	sp
   5B0F 21 03 00      [10] 1673 	ld	hl, #3+0
   5B12 39            [11] 1674 	add	hl, sp
   5B13 7E            [ 7] 1675 	ld	a, (hl)
   5B14 F5            [11] 1676 	push	af
   5B15 33            [ 6] 1677 	inc	sp
   5B16 CD 49 5A      [17] 1678 	call	_drawScrolls
   5B19 F1            [10] 1679 	pop	af
   5B1A C9            [10] 1680 	ret
                           1681 	.area _CODE
                           1682 	.area _INITIALIZER
                           1683 	.area _CABS (ABS)
