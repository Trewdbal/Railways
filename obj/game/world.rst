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
   51D9                      64 _drawCursor::
   51D9 DD E5         [15]   65 	push	ix
   51DB DD 21 00 00   [14]   66 	ld	ix,#0
   51DF DD 39         [15]   67 	add	ix,sp
   51E1 3B            [ 6]   68 	dec	sp
                             69 ;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   51E2 DD 7E 05      [19]   70 	ld	a,5 (ix)
   51E5 07            [ 4]   71 	rlca
   51E6 07            [ 4]   72 	rlca
   51E7 07            [ 4]   73 	rlca
   51E8 07            [ 4]   74 	rlca
   51E9 E6 F0         [ 7]   75 	and	a,#0xF0
   51EB 5F            [ 4]   76 	ld	e,a
   51EC DD 7E 04      [19]   77 	ld	a,4 (ix)
   51EF 87            [ 4]   78 	add	a, a
   51F0 87            [ 4]   79 	add	a, a
   51F1 57            [ 4]   80 	ld	d,a
   51F2 D5            [11]   81 	push	de
   51F3 7B            [ 4]   82 	ld	a,e
   51F4 F5            [11]   83 	push	af
   51F5 33            [ 6]   84 	inc	sp
   51F6 D5            [11]   85 	push	de
   51F7 33            [ 6]   86 	inc	sp
   51F8 21 00 C0      [10]   87 	ld	hl,#0xC000
   51FB E5            [11]   88 	push	hl
   51FC CD CB 7A      [17]   89 	call	_cpct_getScreenPtr
   51FF D1            [10]   90 	pop	de
   5200 4D            [ 4]   91 	ld	c, l
   5201 44            [ 4]   92 	ld	b, h
                             93 ;src/game/world.c:8: switch(CURSOR_MODE)
   5202 3E 10         [ 7]   94 	ld	a,#0x10
   5204 FD 21 BF 8A   [14]   95 	ld	iy,#_CURSOR_MODE
   5208 FD 96 00      [19]   96 	sub	a, 0 (iy)
   520B DA 0A 54      [10]   97 	jp	C,00119$
   520E D5            [11]   98 	push	de
   520F FD 21 BF 8A   [14]   99 	ld	iy,#_CURSOR_MODE
   5213 FD 5E 00      [19]  100 	ld	e,0 (iy)
   5216 16 00         [ 7]  101 	ld	d,#0x00
   5218 21 20 52      [10]  102 	ld	hl,#00125$
   521B 19            [11]  103 	add	hl,de
   521C 19            [11]  104 	add	hl,de
   521D 19            [11]  105 	add	hl,de
   521E D1            [10]  106 	pop	de
   521F E9            [ 4]  107 	jp	(hl)
   5220                     108 00125$:
   5220 C3 53 52      [10]  109 	jp	00101$
   5223 C3 25 53      [10]  110 	jp	00102$
   5226 C3 34 53      [10]  111 	jp	00103$
   5229 C3 43 53      [10]  112 	jp	00104$
   522C C3 52 53      [10]  113 	jp	00105$
   522F C3 61 53      [10]  114 	jp	00106$
   5232 C3 70 53      [10]  115 	jp	00107$
   5235 C3 7F 53      [10]  116 	jp	00108$
   5238 C3 8E 53      [10]  117 	jp	00109$
   523B C3 9C 53      [10]  118 	jp	00110$
   523E C3 AA 53      [10]  119 	jp	00111$
   5241 C3 B8 53      [10]  120 	jp	00112$
   5244 C3 C6 53      [10]  121 	jp	00113$
   5247 C3 D4 53      [10]  122 	jp	00114$
   524A C3 E2 53      [10]  123 	jp	00115$
   524D C3 F0 53      [10]  124 	jp	00116$
   5250 C3 FE 53      [10]  125 	jp	00117$
                            126 ;src/game/world.c:10: case NONE:
   5253                     127 00101$:
                            128 ;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   5253 C5            [11]  129 	push	bc
   5254 D5            [11]  130 	push	de
   5255 DD 66 06      [19]  131 	ld	h,6 (ix)
   5258 DD 6E 06      [19]  132 	ld	l,6 (ix)
   525B E5            [11]  133 	push	hl
   525C DD 66 06      [19]  134 	ld	h,6 (ix)
   525F DD 6E 06      [19]  135 	ld	l,6 (ix)
   5262 E5            [11]  136 	push	hl
   5263 CD A5 79      [17]  137 	call	_cpct_px2byteM1
   5266 F1            [10]  138 	pop	af
   5267 F1            [10]  139 	pop	af
   5268 DD 75 FF      [19]  140 	ld	-1 (ix),l
   526B D1            [10]  141 	pop	de
   526C C1            [10]  142 	pop	bc
   526D D5            [11]  143 	push	de
   526E 21 04 00      [10]  144 	ld	hl,#0x0004
   5271 E5            [11]  145 	push	hl
   5272 DD 7E FF      [19]  146 	ld	a,-1 (ix)
   5275 F5            [11]  147 	push	af
   5276 33            [ 6]  148 	inc	sp
   5277 C5            [11]  149 	push	bc
   5278 CD 97 79      [17]  150 	call	_cpct_memset
   527B D1            [10]  151 	pop	de
                            152 ;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   527C 63            [ 4]  153 	ld	h,e
   527D 24            [ 4]  154 	inc	h
   527E D5            [11]  155 	push	de
   527F E5            [11]  156 	push	hl
   5280 33            [ 6]  157 	inc	sp
   5281 D5            [11]  158 	push	de
   5282 33            [ 6]  159 	inc	sp
   5283 21 00 C0      [10]  160 	ld	hl,#0xC000
   5286 E5            [11]  161 	push	hl
   5287 CD CB 7A      [17]  162 	call	_cpct_getScreenPtr
   528A D1            [10]  163 	pop	de
                            164 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   528B E5            [11]  165 	push	hl
   528C D5            [11]  166 	push	de
   528D DD 66 06      [19]  167 	ld	h,6 (ix)
   5290 DD 6E 06      [19]  168 	ld	l,6 (ix)
   5293 E5            [11]  169 	push	hl
   5294 DD 66 06      [19]  170 	ld	h,6 (ix)
   5297 DD 6E 06      [19]  171 	ld	l,6 (ix)
   529A E5            [11]  172 	push	hl
   529B CD A5 79      [17]  173 	call	_cpct_px2byteM1
   529E F1            [10]  174 	pop	af
   529F F1            [10]  175 	pop	af
   52A0 5D            [ 4]  176 	ld	e,l
   52A1 F1            [10]  177 	pop	af
   52A2 57            [ 4]  178 	ld	d,a
   52A3 C1            [10]  179 	pop	bc
   52A4 D5            [11]  180 	push	de
   52A5 21 04 00      [10]  181 	ld	hl,#0x0004
   52A8 E5            [11]  182 	push	hl
   52A9 7B            [ 4]  183 	ld	a,e
   52AA F5            [11]  184 	push	af
   52AB 33            [ 6]  185 	inc	sp
   52AC C5            [11]  186 	push	bc
   52AD CD 97 79      [17]  187 	call	_cpct_memset
   52B0 D1            [10]  188 	pop	de
                            189 ;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   52B1 DD 7E 05      [19]  190 	ld	a,5 (ix)
   52B4 3C            [ 4]  191 	inc	a
   52B5 07            [ 4]  192 	rlca
   52B6 07            [ 4]  193 	rlca
   52B7 07            [ 4]  194 	rlca
   52B8 07            [ 4]  195 	rlca
   52B9 E6 F0         [ 7]  196 	and	a,#0xF0
   52BB 5F            [ 4]  197 	ld	e,a
   52BC 63            [ 4]  198 	ld	h,e
   52BD 25            [ 4]  199 	dec	h
   52BE D5            [11]  200 	push	de
   52BF E5            [11]  201 	push	hl
   52C0 33            [ 6]  202 	inc	sp
   52C1 D5            [11]  203 	push	de
   52C2 33            [ 6]  204 	inc	sp
   52C3 21 00 C0      [10]  205 	ld	hl,#0xC000
   52C6 E5            [11]  206 	push	hl
   52C7 CD CB 7A      [17]  207 	call	_cpct_getScreenPtr
   52CA D1            [10]  208 	pop	de
                            209 ;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   52CB E5            [11]  210 	push	hl
   52CC D5            [11]  211 	push	de
   52CD DD 66 06      [19]  212 	ld	h,6 (ix)
   52D0 DD 6E 06      [19]  213 	ld	l,6 (ix)
   52D3 E5            [11]  214 	push	hl
   52D4 DD 66 06      [19]  215 	ld	h,6 (ix)
   52D7 DD 6E 06      [19]  216 	ld	l,6 (ix)
   52DA E5            [11]  217 	push	hl
   52DB CD A5 79      [17]  218 	call	_cpct_px2byteM1
   52DE F1            [10]  219 	pop	af
   52DF F1            [10]  220 	pop	af
   52E0 DD 75 FF      [19]  221 	ld	-1 (ix),l
   52E3 D1            [10]  222 	pop	de
   52E4 C1            [10]  223 	pop	bc
   52E5 D5            [11]  224 	push	de
   52E6 21 04 00      [10]  225 	ld	hl,#0x0004
   52E9 E5            [11]  226 	push	hl
   52EA DD 7E FF      [19]  227 	ld	a,-1 (ix)
   52ED F5            [11]  228 	push	af
   52EE 33            [ 6]  229 	inc	sp
   52EF C5            [11]  230 	push	bc
   52F0 CD 97 79      [17]  231 	call	_cpct_memset
   52F3 D1            [10]  232 	pop	de
                            233 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   52F4 63            [ 4]  234 	ld	h,e
   52F5 25            [ 4]  235 	dec	h
   52F6 25            [ 4]  236 	dec	h
   52F7 E5            [11]  237 	push	hl
   52F8 33            [ 6]  238 	inc	sp
   52F9 D5            [11]  239 	push	de
   52FA 33            [ 6]  240 	inc	sp
   52FB 21 00 C0      [10]  241 	ld	hl,#0xC000
   52FE E5            [11]  242 	push	hl
   52FF CD CB 7A      [17]  243 	call	_cpct_getScreenPtr
                            244 ;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   5302 E5            [11]  245 	push	hl
   5303 DD 66 06      [19]  246 	ld	h,6 (ix)
   5306 DD 6E 06      [19]  247 	ld	l,6 (ix)
   5309 E5            [11]  248 	push	hl
   530A DD 66 06      [19]  249 	ld	h,6 (ix)
   530D DD 6E 06      [19]  250 	ld	l,6 (ix)
   5310 E5            [11]  251 	push	hl
   5311 CD A5 79      [17]  252 	call	_cpct_px2byteM1
   5314 F1            [10]  253 	pop	af
   5315 F1            [10]  254 	pop	af
   5316 65            [ 4]  255 	ld	h,l
   5317 D1            [10]  256 	pop	de
   5318 01 04 00      [10]  257 	ld	bc,#0x0004
   531B C5            [11]  258 	push	bc
   531C E5            [11]  259 	push	hl
   531D 33            [ 6]  260 	inc	sp
   531E D5            [11]  261 	push	de
   531F CD 97 79      [17]  262 	call	_cpct_memset
                            263 ;src/game/world.c:20: break;
   5322 C3 0A 54      [10]  264 	jp	00119$
                            265 ;src/game/world.c:21: case T_SSNS:
   5325                     266 00102$:
                            267 ;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5325 11 C4 64      [10]  268 	ld	de,#_station_small_ns
   5328 21 04 10      [10]  269 	ld	hl,#0x1004
   532B E5            [11]  270 	push	hl
   532C C5            [11]  271 	push	bc
   532D D5            [11]  272 	push	de
   532E CD 9D 74      [17]  273 	call	_cpct_drawSprite
                            274 ;src/game/world.c:23: break;
   5331 C3 0A 54      [10]  275 	jp	00119$
                            276 ;src/game/world.c:24: case T_SSEW:
   5334                     277 00103$:
                            278 ;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   5334 11 04 65      [10]  279 	ld	de,#_station_small_ew
   5337 21 04 10      [10]  280 	ld	hl,#0x1004
   533A E5            [11]  281 	push	hl
   533B C5            [11]  282 	push	bc
   533C D5            [11]  283 	push	de
   533D CD 9D 74      [17]  284 	call	_cpct_drawSprite
                            285 ;src/game/world.c:26: break;
   5340 C3 0A 54      [10]  286 	jp	00119$
                            287 ;src/game/world.c:27: case T_SMNS:
   5343                     288 00104$:
                            289 ;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   5343 11 44 65      [10]  290 	ld	de,#_station_medium_ns
   5346 21 04 10      [10]  291 	ld	hl,#0x1004
   5349 E5            [11]  292 	push	hl
   534A C5            [11]  293 	push	bc
   534B D5            [11]  294 	push	de
   534C CD 9D 74      [17]  295 	call	_cpct_drawSprite
                            296 ;src/game/world.c:29: break;
   534F C3 0A 54      [10]  297 	jp	00119$
                            298 ;src/game/world.c:30: case T_SMEW:
   5352                     299 00105$:
                            300 ;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   5352 11 84 65      [10]  301 	ld	de,#_station_medium_ew
   5355 21 04 10      [10]  302 	ld	hl,#0x1004
   5358 E5            [11]  303 	push	hl
   5359 C5            [11]  304 	push	bc
   535A D5            [11]  305 	push	de
   535B CD 9D 74      [17]  306 	call	_cpct_drawSprite
                            307 ;src/game/world.c:32: break;
   535E C3 0A 54      [10]  308 	jp	00119$
                            309 ;src/game/world.c:33: case T_SLNS:
   5361                     310 00106$:
                            311 ;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   5361 11 C4 65      [10]  312 	ld	de,#_station_large_ns
   5364 21 04 10      [10]  313 	ld	hl,#0x1004
   5367 E5            [11]  314 	push	hl
   5368 C5            [11]  315 	push	bc
   5369 D5            [11]  316 	push	de
   536A CD 9D 74      [17]  317 	call	_cpct_drawSprite
                            318 ;src/game/world.c:35: break;
   536D C3 0A 54      [10]  319 	jp	00119$
                            320 ;src/game/world.c:36: case T_SLEW:
   5370                     321 00107$:
                            322 ;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   5370 11 04 66      [10]  323 	ld	de,#_station_large_ew
   5373 21 04 10      [10]  324 	ld	hl,#0x1004
   5376 E5            [11]  325 	push	hl
   5377 C5            [11]  326 	push	bc
   5378 D5            [11]  327 	push	de
   5379 CD 9D 74      [17]  328 	call	_cpct_drawSprite
                            329 ;src/game/world.c:38: break;
   537C C3 0A 54      [10]  330 	jp	00119$
                            331 ;src/game/world.c:39: case T_REW:
   537F                     332 00108$:
                            333 ;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   537F 11 44 66      [10]  334 	ld	de,#_rail_ew
   5382 21 04 10      [10]  335 	ld	hl,#0x1004
   5385 E5            [11]  336 	push	hl
   5386 C5            [11]  337 	push	bc
   5387 D5            [11]  338 	push	de
   5388 CD 9D 74      [17]  339 	call	_cpct_drawSprite
                            340 ;src/game/world.c:41: break;
   538B C3 0A 54      [10]  341 	jp	00119$
                            342 ;src/game/world.c:42: case T_RNS:
   538E                     343 00109$:
                            344 ;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   538E 11 84 66      [10]  345 	ld	de,#_rail_ns
   5391 21 04 10      [10]  346 	ld	hl,#0x1004
   5394 E5            [11]  347 	push	hl
   5395 C5            [11]  348 	push	bc
   5396 D5            [11]  349 	push	de
   5397 CD 9D 74      [17]  350 	call	_cpct_drawSprite
                            351 ;src/game/world.c:44: break;
   539A 18 6E         [12]  352 	jr	00119$
                            353 ;src/game/world.c:45: case T_REN:
   539C                     354 00110$:
                            355 ;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   539C 11 C4 66      [10]  356 	ld	de,#_rail_en
   539F 21 04 10      [10]  357 	ld	hl,#0x1004
   53A2 E5            [11]  358 	push	hl
   53A3 C5            [11]  359 	push	bc
   53A4 D5            [11]  360 	push	de
   53A5 CD 9D 74      [17]  361 	call	_cpct_drawSprite
                            362 ;src/game/world.c:47: break;
   53A8 18 60         [12]  363 	jr	00119$
                            364 ;src/game/world.c:48: case T_RES:
   53AA                     365 00111$:
                            366 ;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   53AA 11 04 67      [10]  367 	ld	de,#_rail_es
   53AD 21 04 10      [10]  368 	ld	hl,#0x1004
   53B0 E5            [11]  369 	push	hl
   53B1 C5            [11]  370 	push	bc
   53B2 D5            [11]  371 	push	de
   53B3 CD 9D 74      [17]  372 	call	_cpct_drawSprite
                            373 ;src/game/world.c:50: break;
   53B6 18 52         [12]  374 	jr	00119$
                            375 ;src/game/world.c:51: case T_RWN:
   53B8                     376 00112$:
                            377 ;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   53B8 11 44 67      [10]  378 	ld	de,#_rail_wn
   53BB 21 04 10      [10]  379 	ld	hl,#0x1004
   53BE E5            [11]  380 	push	hl
   53BF C5            [11]  381 	push	bc
   53C0 D5            [11]  382 	push	de
   53C1 CD 9D 74      [17]  383 	call	_cpct_drawSprite
                            384 ;src/game/world.c:53: break;
   53C4 18 44         [12]  385 	jr	00119$
                            386 ;src/game/world.c:54: case T_RWS:
   53C6                     387 00113$:
                            388 ;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   53C6 11 84 67      [10]  389 	ld	de,#_rail_ws
   53C9 21 04 10      [10]  390 	ld	hl,#0x1004
   53CC E5            [11]  391 	push	hl
   53CD C5            [11]  392 	push	bc
   53CE D5            [11]  393 	push	de
   53CF CD 9D 74      [17]  394 	call	_cpct_drawSprite
                            395 ;src/game/world.c:56: break;
   53D2 18 36         [12]  396 	jr	00119$
                            397 ;src/game/world.c:57: case T_REWN:
   53D4                     398 00114$:
                            399 ;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   53D4 11 C4 67      [10]  400 	ld	de,#_rail_ew_n
   53D7 21 04 10      [10]  401 	ld	hl,#0x1004
   53DA E5            [11]  402 	push	hl
   53DB C5            [11]  403 	push	bc
   53DC D5            [11]  404 	push	de
   53DD CD 9D 74      [17]  405 	call	_cpct_drawSprite
                            406 ;src/game/world.c:59: break;
   53E0 18 28         [12]  407 	jr	00119$
                            408 ;src/game/world.c:60: case T_REWS:
   53E2                     409 00115$:
                            410 ;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   53E2 11 04 68      [10]  411 	ld	de,#_rail_ew_s
   53E5 21 04 10      [10]  412 	ld	hl,#0x1004
   53E8 E5            [11]  413 	push	hl
   53E9 C5            [11]  414 	push	bc
   53EA D5            [11]  415 	push	de
   53EB CD 9D 74      [17]  416 	call	_cpct_drawSprite
                            417 ;src/game/world.c:62: break;
   53EE 18 1A         [12]  418 	jr	00119$
                            419 ;src/game/world.c:63: case T_RNSE:
   53F0                     420 00116$:
                            421 ;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   53F0 11 84 68      [10]  422 	ld	de,#_rail_ns_e
   53F3 21 04 10      [10]  423 	ld	hl,#0x1004
   53F6 E5            [11]  424 	push	hl
   53F7 C5            [11]  425 	push	bc
   53F8 D5            [11]  426 	push	de
   53F9 CD 9D 74      [17]  427 	call	_cpct_drawSprite
                            428 ;src/game/world.c:65: break;
   53FC 18 0C         [12]  429 	jr	00119$
                            430 ;src/game/world.c:66: case T_RNSW:
   53FE                     431 00117$:
                            432 ;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   53FE 11 44 68      [10]  433 	ld	de,#_rail_ns_w
   5401 21 04 10      [10]  434 	ld	hl,#0x1004
   5404 E5            [11]  435 	push	hl
   5405 C5            [11]  436 	push	bc
   5406 D5            [11]  437 	push	de
   5407 CD 9D 74      [17]  438 	call	_cpct_drawSprite
                            439 ;src/game/world.c:69: }
   540A                     440 00119$:
   540A 33            [ 6]  441 	inc	sp
   540B DD E1         [14]  442 	pop	ix
   540D C9            [10]  443 	ret
                            444 ;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            445 ;	---------------------------------
                            446 ; Function patternTile
                            447 ; ---------------------------------
   540E                     448 _patternTile::
   540E DD E5         [15]  449 	push	ix
   5410 DD 21 00 00   [14]  450 	ld	ix,#0
   5414 DD 39         [15]  451 	add	ix,sp
   5416 21 F5 FF      [10]  452 	ld	hl,#-11
   5419 39            [11]  453 	add	hl,sp
   541A F9            [ 6]  454 	ld	sp,hl
                            455 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   541B DD 7E 04      [19]  456 	ld	a,4 (ix)
   541E D6 08         [ 7]  457 	sub	a, #0x08
   5420 20 04         [12]  458 	jr	NZ,00153$
   5422 3E 01         [ 7]  459 	ld	a,#0x01
   5424 18 01         [12]  460 	jr	00154$
   5426                     461 00153$:
   5426 AF            [ 4]  462 	xor	a,a
   5427                     463 00154$:
   5427 DD 77 FF      [19]  464 	ld	-1 (ix),a
   542A DD 7E 04      [19]  465 	ld	a,4 (ix)
   542D D6 02         [ 7]  466 	sub	a, #0x02
   542F 20 04         [12]  467 	jr	NZ,00155$
   5431 3E 01         [ 7]  468 	ld	a,#0x01
   5433 18 01         [12]  469 	jr	00156$
   5435                     470 00155$:
   5435 AF            [ 4]  471 	xor	a,a
   5436                     472 00156$:
   5436 DD 77 FC      [19]  473 	ld	-4 (ix),a
   5439 DD 36 F5 00   [19]  474 	ld	-11 (ix),#0x00
   543D 11 00 00      [10]  475 	ld	de,#0x0000
   5440                     476 00115$:
   5440 DD 7E F5      [19]  477 	ld	a,-11 (ix)
   5443 DD 96 08      [19]  478 	sub	a, 8 (ix)
   5446 D2 06 55      [10]  479 	jp	NC,00117$
                            480 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   5449 DD 7E 05      [19]  481 	ld	a,5 (ix)
   544C 83            [ 4]  482 	add	a, e
   544D DD 77 FD      [19]  483 	ld	-3 (ix),a
   5450 DD 7E 06      [19]  484 	ld	a,6 (ix)
   5453 8A            [ 4]  485 	adc	a, d
   5454 DD 77 FE      [19]  486 	ld	-2 (ix),a
   5457 D5            [11]  487 	push	de
   5458 DD 5E 07      [19]  488 	ld	e,7 (ix)
   545B DD 66 F5      [19]  489 	ld	h,-11 (ix)
   545E 2E 00         [ 7]  490 	ld	l, #0x00
   5460 55            [ 4]  491 	ld	d, l
   5461 06 08         [ 7]  492 	ld	b, #0x08
   5463                     493 00157$:
   5463 29            [11]  494 	add	hl,hl
   5464 30 01         [12]  495 	jr	NC,00158$
   5466 19            [11]  496 	add	hl,de
   5467                     497 00158$:
   5467 10 FA         [13]  498 	djnz	00157$
   5469 D1            [10]  499 	pop	de
   546A DD 75 FA      [19]  500 	ld	-6 (ix),l
   546D DD 74 FB      [19]  501 	ld	-5 (ix),h
   5470 DD 36 F6 00   [19]  502 	ld	-10 (ix),#0x00
   5474                     503 00112$:
   5474 DD 7E F6      [19]  504 	ld	a,-10 (ix)
   5477 DD 96 07      [19]  505 	sub	a, 7 (ix)
   547A D2 FB 54      [10]  506 	jp	NC,00116$
                            507 ;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   547D DD 7E F6      [19]  508 	ld	a,-10 (ix)
   5480 DD 77 F7      [19]  509 	ld	-9 (ix),a
   5483 DD 36 F8 00   [19]  510 	ld	-8 (ix),#0x00
   5487 DD 7E FA      [19]  511 	ld	a,-6 (ix)
   548A DD 86 F7      [19]  512 	add	a, -9 (ix)
   548D 6F            [ 4]  513 	ld	l,a
   548E DD 7E FB      [19]  514 	ld	a,-5 (ix)
   5491 DD 8E F8      [19]  515 	adc	a, -8 (ix)
   5494 67            [ 4]  516 	ld	h,a
   5495 DD 4E 09      [19]  517 	ld	c,9 (ix)
   5498 DD 46 0A      [19]  518 	ld	b,10 (ix)
   549B D5            [11]  519 	push	de
   549C E5            [11]  520 	push	hl
   549D C5            [11]  521 	push	bc
   549E CD 5D 74      [17]  522 	call	_cpct_getBit
   54A1 DD 75 F9      [19]  523 	ld	-7 (ix),l
   54A4 D1            [10]  524 	pop	de
   54A5 DD 7E F9      [19]  525 	ld	a,-7 (ix)
   54A8 B7            [ 4]  526 	or	a, a
   54A9 28 4A         [12]  527 	jr	Z,00113$
   54AB DD 7E FD      [19]  528 	ld	a,-3 (ix)
   54AE DD 86 F7      [19]  529 	add	a, -9 (ix)
   54B1 4F            [ 4]  530 	ld	c,a
   54B2 DD 7E FE      [19]  531 	ld	a,-2 (ix)
   54B5 DD 8E F8      [19]  532 	adc	a, -8 (ix)
   54B8 47            [ 4]  533 	ld	b,a
   54B9 EE 80         [ 7]  534 	xor	a, #0x80
   54BB D6 8F         [ 7]  535 	sub	a, #0x8F
   54BD 30 36         [12]  536 	jr	NC,00113$
                            537 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   54BF 21 BB 7B      [10]  538 	ld	hl,#_p_world
   54C2 09            [11]  539 	add	hl,bc
   54C3 4D            [ 4]  540 	ld	c,l
   54C4 44            [ 4]  541 	ld	b,h
                            542 ;src/game/world.c:83: if(tileType == FOREST)
   54C5 DD 7E FF      [19]  543 	ld	a,-1 (ix)
   54C8 B7            [ 4]  544 	or	a, a
   54C9 28 06         [12]  545 	jr	Z,00104$
                            546 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   54CB DD 7E 04      [19]  547 	ld	a,4 (ix)
   54CE 02            [ 7]  548 	ld	(bc),a
   54CF 18 24         [12]  549 	jr	00113$
   54D1                     550 00104$:
                            551 ;src/game/world.c:85: else if(tileType==DWELLINGS1)
   54D1 DD 7E FC      [19]  552 	ld	a,-4 (ix)
   54D4 B7            [ 4]  553 	or	a, a
   54D5 28 1E         [12]  554 	jr	Z,00113$
                            555 ;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   54D7 C5            [11]  556 	push	bc
   54D8 D5            [11]  557 	push	de
   54D9 CD C4 75      [17]  558 	call	_cpct_count2VSYNC
   54DC CD 01 7A      [17]  559 	call	_cpct_getRandomUniform_u8_f
   54DF DD 75 F9      [19]  560 	ld	-7 (ix),l
   54E2 3E 03         [ 7]  561 	ld	a,#0x03
   54E4 F5            [11]  562 	push	af
   54E5 33            [ 6]  563 	inc	sp
   54E6 DD 7E F9      [19]  564 	ld	a,-7 (ix)
   54E9 F5            [11]  565 	push	af
   54EA 33            [ 6]  566 	inc	sp
   54EB CD 42 75      [17]  567 	call	__moduchar
   54EE F1            [10]  568 	pop	af
   54EF 7D            [ 4]  569 	ld	a,l
   54F0 D1            [10]  570 	pop	de
   54F1 C1            [10]  571 	pop	bc
   54F2 C6 02         [ 7]  572 	add	a, #0x02
   54F4 02            [ 7]  573 	ld	(bc),a
   54F5                     574 00113$:
                            575 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   54F5 DD 34 F6      [23]  576 	inc	-10 (ix)
   54F8 C3 74 54      [10]  577 	jp	00112$
   54FB                     578 00116$:
                            579 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   54FB 21 50 00      [10]  580 	ld	hl,#0x0050
   54FE 19            [11]  581 	add	hl,de
   54FF EB            [ 4]  582 	ex	de,hl
   5500 DD 34 F5      [23]  583 	inc	-11 (ix)
   5503 C3 40 54      [10]  584 	jp	00115$
   5506                     585 00117$:
   5506 DD F9         [10]  586 	ld	sp, ix
   5508 DD E1         [14]  587 	pop	ix
   550A C9            [10]  588 	ret
                            589 ;src/game/world.c:93: void generateWorld()
                            590 ;	---------------------------------
                            591 ; Function generateWorld
                            592 ; ---------------------------------
   550B                     593 _generateWorld::
   550B DD E5         [15]  594 	push	ix
   550D DD 21 00 00   [14]  595 	ld	ix,#0
   5511 DD 39         [15]  596 	add	ix,sp
   5513 21 E5 FF      [10]  597 	ld	hl,#-27
   5516 39            [11]  598 	add	hl,sp
   5517 F9            [ 6]  599 	ld	sp,hl
                            600 ;src/game/world.c:100: CURSOR_MODE = NONE;
   5518 FD 21 BF 8A   [14]  601 	ld	iy,#_CURSOR_MODE
   551C FD 36 00 00   [19]  602 	ld	0 (iy),#0x00
                            603 ;src/game/world.c:103: cpct_srand((u32)cpct_count2VSYNC());
   5520 CD C4 75      [17]  604 	call	_cpct_count2VSYNC
   5523 11 00 00      [10]  605 	ld	de,#0x0000
   5526 CD 20 77      [17]  606 	call	_cpct_setSeed_mxor
                            607 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   5529 11 00 00      [10]  608 	ld	de,#0x0000
   552C                     609 00119$:
                            610 ;src/game/world.c:109: p_world[iy] = cpct_rand()%2;
   552C 21 BB 7B      [10]  611 	ld	hl,#_p_world
   552F 19            [11]  612 	add	hl,de
   5530 E5            [11]  613 	push	hl
   5531 D5            [11]  614 	push	de
   5532 CD DD 79      [17]  615 	call	_cpct_getRandom_mxor_u8
   5535 7D            [ 4]  616 	ld	a,l
   5536 D1            [10]  617 	pop	de
   5537 E1            [10]  618 	pop	hl
   5538 E6 01         [ 7]  619 	and	a, #0x01
   553A 77            [ 7]  620 	ld	(hl),a
                            621 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   553B 13            [ 6]  622 	inc	de
   553C 7A            [ 4]  623 	ld	a,d
   553D EE 80         [ 7]  624 	xor	a, #0x80
   553F D6 8F         [ 7]  625 	sub	a, #0x8F
   5541 38 E9         [12]  626 	jr	C,00119$
                            627 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   5543 21 00 00      [10]  628 	ld	hl,#0x0000
   5546 39            [11]  629 	add	hl,sp
   5547 DD 75 F5      [19]  630 	ld	-11 (ix),l
   554A DD 74 F6      [19]  631 	ld	-10 (ix),h
   554D 01 00 00      [10]  632 	ld	bc,#0x0000
   5550                     633 00121$:
                            634 ;src/game/world.c:115: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5550 C5            [11]  635 	push	bc
   5551 CD DD 78      [17]  636 	call	_cpct_getRandom_mxor_u16
   5554 11 00 0F      [10]  637 	ld	de,#0x0F00
   5557 D5            [11]  638 	push	de
   5558 E5            [11]  639 	push	hl
   5559 CD 4E 75      [17]  640 	call	__moduint
   555C F1            [10]  641 	pop	af
   555D F1            [10]  642 	pop	af
   555E C1            [10]  643 	pop	bc
   555F DD 75 FB      [19]  644 	ld	-5 (ix),l
   5562 DD 74 FC      [19]  645 	ld	-4 (ix),h
                            646 ;src/game/world.c:117: switch(cpct_rand()%4)
   5565 C5            [11]  647 	push	bc
   5566 CD DD 79      [17]  648 	call	_cpct_getRandom_mxor_u8
   5569 7D            [ 4]  649 	ld	a,l
   556A C1            [10]  650 	pop	bc
   556B E6 03         [ 7]  651 	and	a, #0x03
   556D DD 77 FD      [19]  652 	ld	-3 (ix),a
   5570 3E 03         [ 7]  653 	ld	a,#0x03
   5572 DD 96 FD      [19]  654 	sub	a, -3 (ix)
   5575 DA D9 56      [10]  655 	jp	C,00106$
                            656 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   5578 E5            [11]  657 	push	hl
   5579 DD 6E F5      [19]  658 	ld	l,-11 (ix)
   557C DD 66 F6      [19]  659 	ld	h,-10 (ix)
   557F 23            [ 6]  660 	inc	hl
   5580 E5            [11]  661 	push	hl
   5581 FD E1         [14]  662 	pop	iy
   5583 E1            [10]  663 	pop	hl
                            664 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   5584 DD 5E F5      [19]  665 	ld	e,-11 (ix)
   5587 DD 56 F6      [19]  666 	ld	d,-10 (ix)
   558A 13            [ 6]  667 	inc	de
   558B 13            [ 6]  668 	inc	de
                            669 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   558C DD 7E F5      [19]  670 	ld	a,-11 (ix)
   558F C6 03         [ 7]  671 	add	a, #0x03
   5591 DD 77 F3      [19]  672 	ld	-13 (ix),a
   5594 DD 7E F6      [19]  673 	ld	a,-10 (ix)
   5597 CE 00         [ 7]  674 	adc	a, #0x00
   5599 DD 77 F4      [19]  675 	ld	-12 (ix),a
                            676 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   559C DD 7E F5      [19]  677 	ld	a,-11 (ix)
   559F C6 04         [ 7]  678 	add	a, #0x04
   55A1 DD 77 F9      [19]  679 	ld	-7 (ix),a
   55A4 DD 7E F6      [19]  680 	ld	a,-10 (ix)
   55A7 CE 00         [ 7]  681 	adc	a, #0x00
   55A9 DD 77 FA      [19]  682 	ld	-6 (ix),a
                            683 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   55AC DD 7E F5      [19]  684 	ld	a,-11 (ix)
   55AF C6 05         [ 7]  685 	add	a, #0x05
   55B1 DD 77 F7      [19]  686 	ld	-9 (ix),a
   55B4 DD 7E F6      [19]  687 	ld	a,-10 (ix)
   55B7 CE 00         [ 7]  688 	adc	a, #0x00
   55B9 DD 77 F8      [19]  689 	ld	-8 (ix),a
                            690 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   55BC DD 7E F5      [19]  691 	ld	a,-11 (ix)
   55BF C6 06         [ 7]  692 	add	a, #0x06
   55C1 DD 77 F1      [19]  693 	ld	-15 (ix),a
   55C4 DD 7E F6      [19]  694 	ld	a,-10 (ix)
   55C7 CE 00         [ 7]  695 	adc	a, #0x00
   55C9 DD 77 F2      [19]  696 	ld	-14 (ix),a
                            697 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   55CC DD 7E F5      [19]  698 	ld	a,-11 (ix)
   55CF C6 07         [ 7]  699 	add	a, #0x07
   55D1 DD 77 FE      [19]  700 	ld	-2 (ix),a
   55D4 DD 7E F6      [19]  701 	ld	a,-10 (ix)
   55D7 CE 00         [ 7]  702 	adc	a, #0x00
   55D9 DD 77 FF      [19]  703 	ld	-1 (ix),a
                            704 ;src/game/world.c:117: switch(cpct_rand()%4)
   55DC D5            [11]  705 	push	de
   55DD DD 5E FD      [19]  706 	ld	e,-3 (ix)
   55E0 16 00         [ 7]  707 	ld	d,#0x00
   55E2 21 EA 55      [10]  708 	ld	hl,#00195$
   55E5 19            [11]  709 	add	hl,de
   55E6 19            [11]  710 	add	hl,de
   55E7 19            [11]  711 	add	hl,de
   55E8 D1            [10]  712 	pop	de
   55E9 E9            [ 4]  713 	jp	(hl)
   55EA                     714 00195$:
   55EA C3 F6 55      [10]  715 	jp	00102$
   55ED C3 30 56      [10]  716 	jp	00103$
   55F0 C3 69 56      [10]  717 	jp	00104$
   55F3 C3 A2 56      [10]  718 	jp	00105$
                            719 ;src/game/world.c:119: case 0:
   55F6                     720 00102$:
                            721 ;src/game/world.c:120: p_forest[0] = 0b10000100;
   55F6 DD 6E F5      [19]  722 	ld	l,-11 (ix)
   55F9 DD 66 F6      [19]  723 	ld	h,-10 (ix)
   55FC 36 84         [10]  724 	ld	(hl),#0x84
                            725 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   55FE FD 36 00 C7   [19]  726 	ld	0 (iy), #0xC7
                            727 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   5602 3E DE         [ 7]  728 	ld	a,#0xDE
   5604 12            [ 7]  729 	ld	(de),a
                            730 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   5605 DD 6E F3      [19]  731 	ld	l,-13 (ix)
   5608 DD 66 F4      [19]  732 	ld	h,-12 (ix)
   560B 36 7E         [10]  733 	ld	(hl),#0x7E
                            734 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   560D DD 6E F9      [19]  735 	ld	l,-7 (ix)
   5610 DD 66 FA      [19]  736 	ld	h,-6 (ix)
   5613 36 FE         [10]  737 	ld	(hl),#0xFE
                            738 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   5615 DD 6E F7      [19]  739 	ld	l,-9 (ix)
   5618 DD 66 F8      [19]  740 	ld	h,-8 (ix)
   561B 36 7F         [10]  741 	ld	(hl),#0x7F
                            742 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   561D DD 6E F1      [19]  743 	ld	l,-15 (ix)
   5620 DD 66 F2      [19]  744 	ld	h,-14 (ix)
   5623 36 EF         [10]  745 	ld	(hl),#0xEF
                            746 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   5625 DD 6E FE      [19]  747 	ld	l,-2 (ix)
   5628 DD 66 FF      [19]  748 	ld	h,-1 (ix)
   562B 36 CF         [10]  749 	ld	(hl),#0xCF
                            750 ;src/game/world.c:128: break;
   562D C3 D9 56      [10]  751 	jp	00106$
                            752 ;src/game/world.c:129: case 1:
   5630                     753 00103$:
                            754 ;src/game/world.c:130: p_forest[0] = 0b00001100;
   5630 DD 6E F5      [19]  755 	ld	l,-11 (ix)
   5633 DD 66 F6      [19]  756 	ld	h,-10 (ix)
   5636 36 0C         [10]  757 	ld	(hl),#0x0C
                            758 ;src/game/world.c:131: p_forest[1] = 0b11111000;
   5638 FD 36 00 F8   [19]  759 	ld	0 (iy), #0xF8
                            760 ;src/game/world.c:132: p_forest[2] = 0b00111111;
   563C 3E 3F         [ 7]  761 	ld	a,#0x3F
   563E 12            [ 7]  762 	ld	(de),a
                            763 ;src/game/world.c:133: p_forest[3] = 0b01111110;
   563F DD 6E F3      [19]  764 	ld	l,-13 (ix)
   5642 DD 66 F4      [19]  765 	ld	h,-12 (ix)
   5645 36 7E         [10]  766 	ld	(hl),#0x7E
                            767 ;src/game/world.c:134: p_forest[4] = 0b11111110; 
   5647 DD 6E F9      [19]  768 	ld	l,-7 (ix)
   564A DD 66 FA      [19]  769 	ld	h,-6 (ix)
   564D 36 FE         [10]  770 	ld	(hl),#0xFE
                            771 ;src/game/world.c:135: p_forest[5] = 0b01011111;
   564F DD 6E F7      [19]  772 	ld	l,-9 (ix)
   5652 DD 66 F8      [19]  773 	ld	h,-8 (ix)
   5655 36 5F         [10]  774 	ld	(hl),#0x5F
                            775 ;src/game/world.c:136: p_forest[6] = 0b11001111;
   5657 DD 6E F1      [19]  776 	ld	l,-15 (ix)
   565A DD 66 F2      [19]  777 	ld	h,-14 (ix)
   565D 36 CF         [10]  778 	ld	(hl),#0xCF
                            779 ;src/game/world.c:137: p_forest[7] = 0b10001100;
   565F DD 6E FE      [19]  780 	ld	l,-2 (ix)
   5662 DD 66 FF      [19]  781 	ld	h,-1 (ix)
   5665 36 8C         [10]  782 	ld	(hl),#0x8C
                            783 ;src/game/world.c:138: break;
   5667 18 70         [12]  784 	jr	00106$
                            785 ;src/game/world.c:139: case 2:
   5669                     786 00104$:
                            787 ;src/game/world.c:140: p_forest[0] = 0b00110000;
   5669 DD 6E F5      [19]  788 	ld	l,-11 (ix)
   566C DD 66 F6      [19]  789 	ld	h,-10 (ix)
   566F 36 30         [10]  790 	ld	(hl),#0x30
                            791 ;src/game/world.c:141: p_forest[1] = 0b11110100;
   5671 FD 36 00 F4   [19]  792 	ld	0 (iy), #0xF4
                            793 ;src/game/world.c:142: p_forest[2] = 0b11111111;
   5675 3E FF         [ 7]  794 	ld	a,#0xFF
   5677 12            [ 7]  795 	ld	(de),a
                            796 ;src/game/world.c:143: p_forest[3] = 0b11111111;
   5678 DD 6E F3      [19]  797 	ld	l,-13 (ix)
   567B DD 66 F4      [19]  798 	ld	h,-12 (ix)
   567E 36 FF         [10]  799 	ld	(hl),#0xFF
                            800 ;src/game/world.c:144: p_forest[4] = 0b01111100;
   5680 DD 6E F9      [19]  801 	ld	l,-7 (ix)
   5683 DD 66 FA      [19]  802 	ld	h,-6 (ix)
   5686 36 7C         [10]  803 	ld	(hl),#0x7C
                            804 ;src/game/world.c:145: p_forest[5] = 0b01111110;
   5688 DD 6E F7      [19]  805 	ld	l,-9 (ix)
   568B DD 66 F8      [19]  806 	ld	h,-8 (ix)
   568E 36 7E         [10]  807 	ld	(hl),#0x7E
                            808 ;src/game/world.c:146: p_forest[6] = 0b00111110;
   5690 DD 6E F1      [19]  809 	ld	l,-15 (ix)
   5693 DD 66 F2      [19]  810 	ld	h,-14 (ix)
   5696 36 3E         [10]  811 	ld	(hl),#0x3E
                            812 ;src/game/world.c:147: p_forest[7] = 0b00011000;
   5698 DD 6E FE      [19]  813 	ld	l,-2 (ix)
   569B DD 66 FF      [19]  814 	ld	h,-1 (ix)
   569E 36 18         [10]  815 	ld	(hl),#0x18
                            816 ;src/game/world.c:148: break;
   56A0 18 37         [12]  817 	jr	00106$
                            818 ;src/game/world.c:149: case 3:
   56A2                     819 00105$:
                            820 ;src/game/world.c:150: p_forest[0] = 0b11000000; 
   56A2 DD 6E F5      [19]  821 	ld	l,-11 (ix)
   56A5 DD 66 F6      [19]  822 	ld	h,-10 (ix)
   56A8 36 C0         [10]  823 	ld	(hl),#0xC0
                            824 ;src/game/world.c:151: p_forest[1] = 0b11100111;
   56AA FD 36 00 E7   [19]  825 	ld	0 (iy), #0xE7
                            826 ;src/game/world.c:152: p_forest[2] = 0b01111110;
   56AE 3E 7E         [ 7]  827 	ld	a,#0x7E
   56B0 12            [ 7]  828 	ld	(de),a
                            829 ;src/game/world.c:153: p_forest[3] = 0b01111110;
   56B1 DD 6E F3      [19]  830 	ld	l,-13 (ix)
   56B4 DD 66 F4      [19]  831 	ld	h,-12 (ix)
   56B7 36 7E         [10]  832 	ld	(hl),#0x7E
                            833 ;src/game/world.c:154: p_forest[4] = 0b11111110;
   56B9 DD 6E F9      [19]  834 	ld	l,-7 (ix)
   56BC DD 66 FA      [19]  835 	ld	h,-6 (ix)
   56BF 36 FE         [10]  836 	ld	(hl),#0xFE
                            837 ;src/game/world.c:155: p_forest[5] = 0b11111100;
   56C1 DD 6E F7      [19]  838 	ld	l,-9 (ix)
   56C4 DD 66 F8      [19]  839 	ld	h,-8 (ix)
   56C7 36 FC         [10]  840 	ld	(hl),#0xFC
                            841 ;src/game/world.c:156: p_forest[6] = 0b01111000;
   56C9 DD 6E F1      [19]  842 	ld	l,-15 (ix)
   56CC DD 66 F2      [19]  843 	ld	h,-14 (ix)
   56CF 36 78         [10]  844 	ld	(hl),#0x78
                            845 ;src/game/world.c:157: p_forest[7] = 0b00110000;
   56D1 DD 6E FE      [19]  846 	ld	l,-2 (ix)
   56D4 DD 66 FF      [19]  847 	ld	h,-1 (ix)
   56D7 36 30         [10]  848 	ld	(hl),#0x30
                            849 ;src/game/world.c:159: }
   56D9                     850 00106$:
                            851 ;src/game/world.c:160: patternTile(FOREST, iy, 8, 8, p_forest);
   56D9 DD 6E F5      [19]  852 	ld	l,-11 (ix)
   56DC DD 66 F6      [19]  853 	ld	h,-10 (ix)
   56DF C5            [11]  854 	push	bc
   56E0 E5            [11]  855 	push	hl
   56E1 21 08 08      [10]  856 	ld	hl,#0x0808
   56E4 E5            [11]  857 	push	hl
   56E5 DD 6E FB      [19]  858 	ld	l,-5 (ix)
   56E8 DD 66 FC      [19]  859 	ld	h,-4 (ix)
   56EB E5            [11]  860 	push	hl
   56EC 3E 08         [ 7]  861 	ld	a,#0x08
   56EE F5            [11]  862 	push	af
   56EF 33            [ 6]  863 	inc	sp
   56F0 CD 0E 54      [17]  864 	call	_patternTile
   56F3 21 07 00      [10]  865 	ld	hl,#7
   56F6 39            [11]  866 	add	hl,sp
   56F7 F9            [ 6]  867 	ld	sp,hl
   56F8 C1            [10]  868 	pop	bc
                            869 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   56F9 03            [ 6]  870 	inc	bc
   56FA 79            [ 4]  871 	ld	a,c
   56FB D6 32         [ 7]  872 	sub	a, #0x32
   56FD 78            [ 4]  873 	ld	a,b
   56FE 17            [ 4]  874 	rla
   56FF 3F            [ 4]  875 	ccf
   5700 1F            [ 4]  876 	rra
   5701 DE 80         [ 7]  877 	sbc	a, #0x80
   5703 DA 50 55      [10]  878 	jp	C,00121$
                            879 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   5706 11 3C 00      [10]  880 	ld	de,#0x003C
   5709                     881 00125$:
                            882 ;src/game/world.c:168: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5709 D5            [11]  883 	push	de
   570A CD DD 78      [17]  884 	call	_cpct_getRandom_mxor_u16
   570D D1            [10]  885 	pop	de
   570E D5            [11]  886 	push	de
   570F 01 00 0F      [10]  887 	ld	bc,#0x0F00
   5712 C5            [11]  888 	push	bc
   5713 E5            [11]  889 	push	hl
   5714 CD 4E 75      [17]  890 	call	__moduint
   5717 F1            [10]  891 	pop	af
   5718 F1            [10]  892 	pop	af
   5719 D1            [10]  893 	pop	de
                            894 ;src/game/world.c:169: p_world[iy] = cpct_rand()%2+5;
   571A 01 BB 7B      [10]  895 	ld	bc,#_p_world
   571D 09            [11]  896 	add	hl,bc
   571E E5            [11]  897 	push	hl
   571F D5            [11]  898 	push	de
   5720 CD DD 79      [17]  899 	call	_cpct_getRandom_mxor_u8
   5723 7D            [ 4]  900 	ld	a,l
   5724 D1            [10]  901 	pop	de
   5725 E1            [10]  902 	pop	hl
   5726 E6 01         [ 7]  903 	and	a, #0x01
   5728 C6 05         [ 7]  904 	add	a, #0x05
   572A 77            [ 7]  905 	ld	(hl),a
   572B 1B            [ 6]  906 	dec	de
                            907 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   572C 7A            [ 4]  908 	ld	a,d
   572D B3            [ 4]  909 	or	a,e
   572E 20 D9         [12]  910 	jr	NZ,00125$
                            911 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   5730 11 14 00      [10]  912 	ld	de,#0x0014
   5733                     913 00128$:
                            914 ;src/game/world.c:176: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5733 D5            [11]  915 	push	de
   5734 CD DD 78      [17]  916 	call	_cpct_getRandom_mxor_u16
   5737 D1            [10]  917 	pop	de
   5738 D5            [11]  918 	push	de
   5739 01 00 0F      [10]  919 	ld	bc,#0x0F00
   573C C5            [11]  920 	push	bc
   573D E5            [11]  921 	push	hl
   573E CD 4E 75      [17]  922 	call	__moduint
   5741 F1            [10]  923 	pop	af
   5742 F1            [10]  924 	pop	af
   5743 D1            [10]  925 	pop	de
                            926 ;src/game/world.c:177: p_world[iy] = cpct_rand()%3+2;
   5744 3E BB         [ 7]  927 	ld	a,#<(_p_world)
   5746 85            [ 4]  928 	add	a, l
   5747 DD 77 FE      [19]  929 	ld	-2 (ix),a
   574A 3E 7B         [ 7]  930 	ld	a,#>(_p_world)
   574C 8C            [ 4]  931 	adc	a, h
   574D DD 77 FF      [19]  932 	ld	-1 (ix),a
   5750 D5            [11]  933 	push	de
   5751 CD DD 79      [17]  934 	call	_cpct_getRandom_mxor_u8
   5754 45            [ 4]  935 	ld	b,l
   5755 D1            [10]  936 	pop	de
   5756 D5            [11]  937 	push	de
   5757 3E 03         [ 7]  938 	ld	a,#0x03
   5759 F5            [11]  939 	push	af
   575A 33            [ 6]  940 	inc	sp
   575B C5            [11]  941 	push	bc
   575C 33            [ 6]  942 	inc	sp
   575D CD 42 75      [17]  943 	call	__moduchar
   5760 F1            [10]  944 	pop	af
   5761 7D            [ 4]  945 	ld	a,l
   5762 D1            [10]  946 	pop	de
   5763 C6 02         [ 7]  947 	add	a, #0x02
   5765 DD 6E FE      [19]  948 	ld	l,-2 (ix)
   5768 DD 66 FF      [19]  949 	ld	h,-1 (ix)
   576B 77            [ 7]  950 	ld	(hl),a
   576C 1B            [ 6]  951 	dec	de
                            952 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   576D 7A            [ 4]  953 	ld	a,d
   576E B3            [ 4]  954 	or	a,e
   576F 20 C2         [12]  955 	jr	NZ,00128$
                            956 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   5771 21 0A 00      [10]  957 	ld	hl,#0x000A
   5774 39            [11]  958 	add	hl,sp
   5775 4D            [ 4]  959 	ld	c,l
   5776 44            [ 4]  960 	ld	b,h
   5777 DD 36 ED 00   [19]  961 	ld	-19 (ix),#0x00
   577B DD 36 EE 00   [19]  962 	ld	-18 (ix),#0x00
   577F                     963 00129$:
                            964 ;src/game/world.c:182: iy = cpct_rand16()%(WIDTH*HEIGHT);
   577F C5            [11]  965 	push	bc
   5780 CD DD 78      [17]  966 	call	_cpct_getRandom_mxor_u16
   5783 11 00 0F      [10]  967 	ld	de,#0x0F00
   5786 D5            [11]  968 	push	de
   5787 E5            [11]  969 	push	hl
   5788 CD 4E 75      [17]  970 	call	__moduint
   578B F1            [10]  971 	pop	af
   578C F1            [10]  972 	pop	af
   578D C1            [10]  973 	pop	bc
   578E DD 75 FE      [19]  974 	ld	-2 (ix),l
   5791 DD 74 FF      [19]  975 	ld	-1 (ix),h
                            976 ;src/game/world.c:184: switch(cpct_rand()%6)
   5794 C5            [11]  977 	push	bc
   5795 CD DD 79      [17]  978 	call	_cpct_getRandom_mxor_u8
   5798 55            [ 4]  979 	ld	d,l
   5799 3E 06         [ 7]  980 	ld	a,#0x06
   579B F5            [11]  981 	push	af
   579C 33            [ 6]  982 	inc	sp
   579D D5            [11]  983 	push	de
   579E 33            [ 6]  984 	inc	sp
   579F CD 42 75      [17]  985 	call	__moduchar
   57A2 F1            [10]  986 	pop	af
   57A3 5D            [ 4]  987 	ld	e,l
   57A4 C1            [10]  988 	pop	bc
   57A5 3E 05         [ 7]  989 	ld	a,#0x05
   57A7 93            [ 4]  990 	sub	a, e
   57A8 38 6A         [12]  991 	jr	C,00116$
                            992 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   57AA 21 01 00      [10]  993 	ld	hl,#0x0001
   57AD 09            [11]  994 	add	hl,bc
   57AE DD 75 F1      [19]  995 	ld	-15 (ix),l
   57B1 DD 74 F2      [19]  996 	ld	-14 (ix),h
                            997 ;src/game/world.c:184: switch(cpct_rand()%6)
   57B4 16 00         [ 7]  998 	ld	d,#0x00
   57B6 21 BC 57      [10]  999 	ld	hl,#00196$
   57B9 19            [11] 1000 	add	hl,de
   57BA 19            [11] 1001 	add	hl,de
                           1002 ;src/game/world.c:186: case 0:
   57BB E9            [ 4] 1003 	jp	(hl)
   57BC                    1004 00196$:
   57BC 18 0A         [12] 1005 	jr	00110$
   57BE 18 15         [12] 1006 	jr	00111$
   57C0 18 20         [12] 1007 	jr	00112$
   57C2 18 2B         [12] 1008 	jr	00113$
   57C4 18 36         [12] 1009 	jr	00114$
   57C6 18 41         [12] 1010 	jr	00115$
   57C8                    1011 00110$:
                           1012 ;src/game/world.c:187: p_cities[0] = 0b01110010; // 01001110;
   57C8 3E 72         [ 7] 1013 	ld	a,#0x72
   57CA 02            [ 7] 1014 	ld	(bc),a
                           1015 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   57CB DD 6E F1      [19] 1016 	ld	l,-15 (ix)
   57CE DD 66 F2      [19] 1017 	ld	h,-14 (ix)
   57D1 36 46         [10] 1018 	ld	(hl),#0x46
                           1019 ;src/game/world.c:189: break;
   57D3 18 3F         [12] 1020 	jr	00116$
                           1021 ;src/game/world.c:191: case 1:
   57D5                    1022 00111$:
                           1023 ;src/game/world.c:192: p_cities[0] = 0b01100000; // 00000110;
   57D5 3E 60         [ 7] 1024 	ld	a,#0x60
   57D7 02            [ 7] 1025 	ld	(bc),a
                           1026 ;src/game/world.c:193: p_cities[1] = 0b00000110; // 01100000;
   57D8 DD 6E F1      [19] 1027 	ld	l,-15 (ix)
   57DB DD 66 F2      [19] 1028 	ld	h,-14 (ix)
   57DE 36 06         [10] 1029 	ld	(hl),#0x06
                           1030 ;src/game/world.c:194: break;
   57E0 18 32         [12] 1031 	jr	00116$
                           1032 ;src/game/world.c:196: case 2:
   57E2                    1033 00112$:
                           1034 ;src/game/world.c:197: p_cities[0] = 0b00010000; // 00001000;
   57E2 3E 10         [ 7] 1035 	ld	a,#0x10
   57E4 02            [ 7] 1036 	ld	(bc),a
                           1037 ;src/game/world.c:198: p_cities[1] = 0b00000110; // 01100000;
   57E5 DD 6E F1      [19] 1038 	ld	l,-15 (ix)
   57E8 DD 66 F2      [19] 1039 	ld	h,-14 (ix)
   57EB 36 06         [10] 1040 	ld	(hl),#0x06
                           1041 ;src/game/world.c:199: break;
   57ED 18 25         [12] 1042 	jr	00116$
                           1043 ;src/game/world.c:201: case 3:
   57EF                    1044 00113$:
                           1045 ;src/game/world.c:202: p_cities[0] = 0b11000000; // 00000011;
   57EF 3E C0         [ 7] 1046 	ld	a,#0xC0
   57F1 02            [ 7] 1047 	ld	(bc),a
                           1048 ;src/game/world.c:203: p_cities[1] = 0b00110001; // 10001100;
   57F2 DD 6E F1      [19] 1049 	ld	l,-15 (ix)
   57F5 DD 66 F2      [19] 1050 	ld	h,-14 (ix)
   57F8 36 31         [10] 1051 	ld	(hl),#0x31
                           1052 ;src/game/world.c:204: break;
   57FA 18 18         [12] 1053 	jr	00116$
                           1054 ;src/game/world.c:206: case 4:
   57FC                    1055 00114$:
                           1056 ;src/game/world.c:207: p_cities[0] = 0b11000100; // 00100011;
   57FC 3E C4         [ 7] 1057 	ld	a,#0xC4
   57FE 02            [ 7] 1058 	ld	(bc),a
                           1059 ;src/game/world.c:208: p_cities[1] = 0b00001110; // 01110000;
   57FF DD 6E F1      [19] 1060 	ld	l,-15 (ix)
   5802 DD 66 F2      [19] 1061 	ld	h,-14 (ix)
   5805 36 0E         [10] 1062 	ld	(hl),#0x0E
                           1063 ;src/game/world.c:209: break;
   5807 18 0B         [12] 1064 	jr	00116$
                           1065 ;src/game/world.c:211: case 5:
   5809                    1066 00115$:
                           1067 ;src/game/world.c:212: p_cities[0] = 0b01000000; // 00000010;
   5809 3E 40         [ 7] 1068 	ld	a,#0x40
   580B 02            [ 7] 1069 	ld	(bc),a
                           1070 ;src/game/world.c:213: p_cities[1] = 0b01001110; // 01110010;
   580C DD 6E F1      [19] 1071 	ld	l,-15 (ix)
   580F DD 66 F2      [19] 1072 	ld	h,-14 (ix)
   5812 36 4E         [10] 1073 	ld	(hl),#0x4E
                           1074 ;src/game/world.c:215: }
   5814                    1075 00116$:
                           1076 ;src/game/world.c:217: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   5814 69            [ 4] 1077 	ld	l, c
   5815 60            [ 4] 1078 	ld	h, b
   5816 C5            [11] 1079 	push	bc
   5817 E5            [11] 1080 	push	hl
   5818 21 04 04      [10] 1081 	ld	hl,#0x0404
   581B E5            [11] 1082 	push	hl
   581C DD 6E FE      [19] 1083 	ld	l,-2 (ix)
   581F DD 66 FF      [19] 1084 	ld	h,-1 (ix)
   5822 E5            [11] 1085 	push	hl
   5823 3E 02         [ 7] 1086 	ld	a,#0x02
   5825 F5            [11] 1087 	push	af
   5826 33            [ 6] 1088 	inc	sp
   5827 CD 0E 54      [17] 1089 	call	_patternTile
   582A 21 07 00      [10] 1090 	ld	hl,#7
   582D 39            [11] 1091 	add	hl,sp
   582E F9            [ 6] 1092 	ld	sp,hl
   582F C1            [10] 1093 	pop	bc
                           1094 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   5830 DD 34 ED      [23] 1095 	inc	-19 (ix)
   5833 20 03         [12] 1096 	jr	NZ,00197$
   5835 DD 34 EE      [23] 1097 	inc	-18 (ix)
   5838                    1098 00197$:
   5838 DD 7E ED      [19] 1099 	ld	a,-19 (ix)
   583B D6 14         [ 7] 1100 	sub	a, #0x14
   583D DD 7E EE      [19] 1101 	ld	a,-18 (ix)
   5840 17            [ 4] 1102 	rla
   5841 3F            [ 4] 1103 	ccf
   5842 1F            [ 4] 1104 	rra
   5843 DE 80         [ 7] 1105 	sbc	a, #0x80
   5845 DA 7F 57      [10] 1106 	jp	C,00129$
                           1107 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   5848 11 13 00      [10] 1108 	ld	de,#0x0013
   584B                    1109 00133$:
                           1110 ;src/game/world.c:224: iy = cpct_rand16()%(WIDTH*HEIGHT);
   584B D5            [11] 1111 	push	de
   584C CD DD 78      [17] 1112 	call	_cpct_getRandom_mxor_u16
   584F D1            [10] 1113 	pop	de
   5850 D5            [11] 1114 	push	de
   5851 01 00 0F      [10] 1115 	ld	bc,#0x0F00
   5854 C5            [11] 1116 	push	bc
   5855 E5            [11] 1117 	push	hl
   5856 CD 4E 75      [17] 1118 	call	__moduint
   5859 F1            [10] 1119 	pop	af
   585A F1            [10] 1120 	pop	af
   585B D1            [10] 1121 	pop	de
                           1122 ;src/game/world.c:225: p_world[iy] = LIVESTOCK;
   585C 01 BB 7B      [10] 1123 	ld	bc,#_p_world
   585F 09            [11] 1124 	add	hl,bc
   5860 36 09         [10] 1125 	ld	(hl),#0x09
   5862 1B            [ 6] 1126 	dec	de
                           1127 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   5863 7A            [ 4] 1128 	ld	a,d
   5864 B3            [ 4] 1129 	or	a,e
   5865 20 E4         [12] 1130 	jr	NZ,00133$
   5867 DD F9         [10] 1131 	ld	sp, ix
   5869 DD E1         [14] 1132 	pop	ix
   586B C9            [10] 1133 	ret
                           1134 ;src/game/world.c:229: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1135 ;	---------------------------------
                           1136 ; Function drawTile
                           1137 ; ---------------------------------
   586C                    1138 _drawTile::
   586C DD E5         [15] 1139 	push	ix
   586E DD 21 00 00   [14] 1140 	ld	ix,#0
   5872 DD 39         [15] 1141 	add	ix,sp
                           1142 ;src/game/world.c:232: int adress = (y_+iy)*WIDTH+x_+ix;
   5874 DD 6E 05      [19] 1143 	ld	l,5 (ix)
   5877 26 00         [ 7] 1144 	ld	h,#0x00
   5879 DD 5E 07      [19] 1145 	ld	e,7 (ix)
   587C 16 00         [ 7] 1146 	ld	d,#0x00
   587E 19            [11] 1147 	add	hl,de
   587F 4D            [ 4] 1148 	ld	c, l
   5880 44            [ 4] 1149 	ld	b, h
   5881 29            [11] 1150 	add	hl, hl
   5882 29            [11] 1151 	add	hl, hl
   5883 09            [11] 1152 	add	hl, bc
   5884 29            [11] 1153 	add	hl, hl
   5885 29            [11] 1154 	add	hl, hl
   5886 29            [11] 1155 	add	hl, hl
   5887 29            [11] 1156 	add	hl, hl
   5888 DD 5E 04      [19] 1157 	ld	e,4 (ix)
   588B 16 00         [ 7] 1158 	ld	d,#0x00
   588D 19            [11] 1159 	add	hl,de
   588E DD 5E 06      [19] 1160 	ld	e,6 (ix)
   5891 16 00         [ 7] 1161 	ld	d,#0x00
   5893 19            [11] 1162 	add	hl,de
   5894 5D            [ 4] 1163 	ld	e, l
   5895 54            [ 4] 1164 	ld	d, h
                           1165 ;src/game/world.c:234: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   5896 DD 7E 07      [19] 1166 	ld	a,7 (ix)
   5899 07            [ 4] 1167 	rlca
   589A 07            [ 4] 1168 	rlca
   589B 07            [ 4] 1169 	rlca
   589C 07            [ 4] 1170 	rlca
   589D E6 F0         [ 7] 1171 	and	a,#0xF0
   589F 67            [ 4] 1172 	ld	h,a
   58A0 DD 7E 06      [19] 1173 	ld	a,6 (ix)
   58A3 87            [ 4] 1174 	add	a, a
   58A4 87            [ 4] 1175 	add	a, a
   58A5 D5            [11] 1176 	push	de
   58A6 E5            [11] 1177 	push	hl
   58A7 33            [ 6] 1178 	inc	sp
   58A8 F5            [11] 1179 	push	af
   58A9 33            [ 6] 1180 	inc	sp
   58AA 21 00 C0      [10] 1181 	ld	hl,#0xC000
   58AD E5            [11] 1182 	push	hl
   58AE CD CB 7A      [17] 1183 	call	_cpct_getScreenPtr
   58B1 D1            [10] 1184 	pop	de
   58B2 4D            [ 4] 1185 	ld	c, l
   58B3 44            [ 4] 1186 	ld	b, h
                           1187 ;src/game/world.c:236: switch(p_world[adress])
   58B4 21 BB 7B      [10] 1188 	ld	hl,#_p_world
   58B7 19            [11] 1189 	add	hl,de
   58B8 5E            [ 7] 1190 	ld	e,(hl)
   58B9 3E 19         [ 7] 1191 	ld	a,#0x19
   58BB 93            [ 4] 1192 	sub	a, e
   58BC DA 91 5A      [10] 1193 	jp	C,00128$
   58BF 16 00         [ 7] 1194 	ld	d,#0x00
   58C1 21 C8 58      [10] 1195 	ld	hl,#00134$
   58C4 19            [11] 1196 	add	hl,de
   58C5 19            [11] 1197 	add	hl,de
   58C6 19            [11] 1198 	add	hl,de
   58C7 E9            [ 4] 1199 	jp	(hl)
   58C8                    1200 00134$:
   58C8 C3 16 59      [10] 1201 	jp	00101$
   58CB C3 25 59      [10] 1202 	jp	00102$
   58CE C3 34 59      [10] 1203 	jp	00103$
   58D1 C3 43 59      [10] 1204 	jp	00104$
   58D4 C3 52 59      [10] 1205 	jp	00105$
   58D7 C3 61 59      [10] 1206 	jp	00106$
   58DA C3 70 59      [10] 1207 	jp	00107$
   58DD C3 7F 59      [10] 1208 	jp	00108$
   58E0 C3 8E 59      [10] 1209 	jp	00109$
   58E3 C3 9D 59      [10] 1210 	jp	00110$
   58E6 C3 AC 59      [10] 1211 	jp	00111$
   58E9 C3 BB 59      [10] 1212 	jp	00112$
   58EC C3 CA 59      [10] 1213 	jp	00113$
   58EF C3 D9 59      [10] 1214 	jp	00114$
   58F2 C3 E8 59      [10] 1215 	jp	00115$
   58F5 C3 F7 59      [10] 1216 	jp	00116$
   58F8 C3 06 5A      [10] 1217 	jp	00117$
   58FB C3 15 5A      [10] 1218 	jp	00118$
   58FE C3 23 5A      [10] 1219 	jp	00119$
   5901 C3 31 5A      [10] 1220 	jp	00120$
   5904 C3 3F 5A      [10] 1221 	jp	00121$
   5907 C3 4D 5A      [10] 1222 	jp	00122$
   590A C3 5B 5A      [10] 1223 	jp	00123$
   590D C3 69 5A      [10] 1224 	jp	00124$
   5910 C3 77 5A      [10] 1225 	jp	00125$
   5913 C3 85 5A      [10] 1226 	jp	00126$
                           1227 ;src/game/world.c:238: case GRASS1:
   5916                    1228 00101$:
                           1229 ;src/game/world.c:239: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   5916 11 44 62      [10] 1230 	ld	de,#_grass1
   5919 21 04 10      [10] 1231 	ld	hl,#0x1004
   591C E5            [11] 1232 	push	hl
   591D C5            [11] 1233 	push	bc
   591E D5            [11] 1234 	push	de
   591F CD 9D 74      [17] 1235 	call	_cpct_drawSprite
                           1236 ;src/game/world.c:240: break;
   5922 C3 91 5A      [10] 1237 	jp	00128$
                           1238 ;src/game/world.c:241: case GRASS2:
   5925                    1239 00102$:
                           1240 ;src/game/world.c:242: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   5925 11 84 62      [10] 1241 	ld	de,#_grass2
   5928 21 04 10      [10] 1242 	ld	hl,#0x1004
   592B E5            [11] 1243 	push	hl
   592C C5            [11] 1244 	push	bc
   592D D5            [11] 1245 	push	de
   592E CD 9D 74      [17] 1246 	call	_cpct_drawSprite
                           1247 ;src/game/world.c:243: break;
   5931 C3 91 5A      [10] 1248 	jp	00128$
                           1249 ;src/game/world.c:244: case DWELLINGS1:
   5934                    1250 00103$:
                           1251 ;src/game/world.c:245: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   5934 11 04 63      [10] 1252 	ld	de,#_dwellings1
   5937 21 04 10      [10] 1253 	ld	hl,#0x1004
   593A E5            [11] 1254 	push	hl
   593B C5            [11] 1255 	push	bc
   593C D5            [11] 1256 	push	de
   593D CD 9D 74      [17] 1257 	call	_cpct_drawSprite
                           1258 ;src/game/world.c:246: break;
   5940 C3 91 5A      [10] 1259 	jp	00128$
                           1260 ;src/game/world.c:247: case DWELLINGS2:
   5943                    1261 00104$:
                           1262 ;src/game/world.c:248: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   5943 11 44 63      [10] 1263 	ld	de,#_dwellings2
   5946 21 04 10      [10] 1264 	ld	hl,#0x1004
   5949 E5            [11] 1265 	push	hl
   594A C5            [11] 1266 	push	bc
   594B D5            [11] 1267 	push	de
   594C CD 9D 74      [17] 1268 	call	_cpct_drawSprite
                           1269 ;src/game/world.c:249: break;
   594F C3 91 5A      [10] 1270 	jp	00128$
                           1271 ;src/game/world.c:250: case DWELLINGS3:
   5952                    1272 00105$:
                           1273 ;src/game/world.c:251: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   5952 11 84 63      [10] 1274 	ld	de,#_dwellings3
   5955 21 04 10      [10] 1275 	ld	hl,#0x1004
   5958 E5            [11] 1276 	push	hl
   5959 C5            [11] 1277 	push	bc
   595A D5            [11] 1278 	push	de
   595B CD 9D 74      [17] 1279 	call	_cpct_drawSprite
                           1280 ;src/game/world.c:252: break;
   595E C3 91 5A      [10] 1281 	jp	00128$
                           1282 ;src/game/world.c:253: case FARM1:
   5961                    1283 00106$:
                           1284 ;src/game/world.c:254: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   5961 11 04 64      [10] 1285 	ld	de,#_farm1
   5964 21 04 10      [10] 1286 	ld	hl,#0x1004
   5967 E5            [11] 1287 	push	hl
   5968 C5            [11] 1288 	push	bc
   5969 D5            [11] 1289 	push	de
   596A CD 9D 74      [17] 1290 	call	_cpct_drawSprite
                           1291 ;src/game/world.c:255: break;
   596D C3 91 5A      [10] 1292 	jp	00128$
                           1293 ;src/game/world.c:256: case FARM2:
   5970                    1294 00107$:
                           1295 ;src/game/world.c:257: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   5970 11 44 64      [10] 1296 	ld	de,#_farm2
   5973 21 04 10      [10] 1297 	ld	hl,#0x1004
   5976 E5            [11] 1298 	push	hl
   5977 C5            [11] 1299 	push	bc
   5978 D5            [11] 1300 	push	de
   5979 CD 9D 74      [17] 1301 	call	_cpct_drawSprite
                           1302 ;src/game/world.c:258: break;
   597C C3 91 5A      [10] 1303 	jp	00128$
                           1304 ;src/game/world.c:259: case WATER:
   597F                    1305 00108$:
                           1306 ;src/game/world.c:260: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   597F 11 C4 63      [10] 1307 	ld	de,#_water
   5982 21 04 10      [10] 1308 	ld	hl,#0x1004
   5985 E5            [11] 1309 	push	hl
   5986 C5            [11] 1310 	push	bc
   5987 D5            [11] 1311 	push	de
   5988 CD 9D 74      [17] 1312 	call	_cpct_drawSprite
                           1313 ;src/game/world.c:261: break;
   598B C3 91 5A      [10] 1314 	jp	00128$
                           1315 ;src/game/world.c:262: case FOREST:
   598E                    1316 00109$:
                           1317 ;src/game/world.c:263: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   598E 11 C4 62      [10] 1318 	ld	de,#_forest
   5991 21 04 10      [10] 1319 	ld	hl,#0x1004
   5994 E5            [11] 1320 	push	hl
   5995 C5            [11] 1321 	push	bc
   5996 D5            [11] 1322 	push	de
   5997 CD 9D 74      [17] 1323 	call	_cpct_drawSprite
                           1324 ;src/game/world.c:264: break;
   599A C3 91 5A      [10] 1325 	jp	00128$
                           1326 ;src/game/world.c:265: case LIVESTOCK:
   599D                    1327 00110$:
                           1328 ;src/game/world.c:266: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   599D 11 84 64      [10] 1329 	ld	de,#_livestock
   59A0 21 04 10      [10] 1330 	ld	hl,#0x1004
   59A3 E5            [11] 1331 	push	hl
   59A4 C5            [11] 1332 	push	bc
   59A5 D5            [11] 1333 	push	de
   59A6 CD 9D 74      [17] 1334 	call	_cpct_drawSprite
                           1335 ;src/game/world.c:267: break;
   59A9 C3 91 5A      [10] 1336 	jp	00128$
                           1337 ;src/game/world.c:268: case SSNS:
   59AC                    1338 00111$:
                           1339 ;src/game/world.c:269: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   59AC 11 C4 64      [10] 1340 	ld	de,#_station_small_ns
   59AF 21 04 10      [10] 1341 	ld	hl,#0x1004
   59B2 E5            [11] 1342 	push	hl
   59B3 C5            [11] 1343 	push	bc
   59B4 D5            [11] 1344 	push	de
   59B5 CD 9D 74      [17] 1345 	call	_cpct_drawSprite
                           1346 ;src/game/world.c:270: break;
   59B8 C3 91 5A      [10] 1347 	jp	00128$
                           1348 ;src/game/world.c:271: case SSEW:
   59BB                    1349 00112$:
                           1350 ;src/game/world.c:272: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   59BB 11 04 65      [10] 1351 	ld	de,#_station_small_ew
   59BE 21 04 10      [10] 1352 	ld	hl,#0x1004
   59C1 E5            [11] 1353 	push	hl
   59C2 C5            [11] 1354 	push	bc
   59C3 D5            [11] 1355 	push	de
   59C4 CD 9D 74      [17] 1356 	call	_cpct_drawSprite
                           1357 ;src/game/world.c:273: break;
   59C7 C3 91 5A      [10] 1358 	jp	00128$
                           1359 ;src/game/world.c:274: case SMNS:
   59CA                    1360 00113$:
                           1361 ;src/game/world.c:275: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   59CA 11 44 65      [10] 1362 	ld	de,#_station_medium_ns
   59CD 21 04 10      [10] 1363 	ld	hl,#0x1004
   59D0 E5            [11] 1364 	push	hl
   59D1 C5            [11] 1365 	push	bc
   59D2 D5            [11] 1366 	push	de
   59D3 CD 9D 74      [17] 1367 	call	_cpct_drawSprite
                           1368 ;src/game/world.c:276: break;
   59D6 C3 91 5A      [10] 1369 	jp	00128$
                           1370 ;src/game/world.c:277: case SMEW:
   59D9                    1371 00114$:
                           1372 ;src/game/world.c:278: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   59D9 11 84 65      [10] 1373 	ld	de,#_station_medium_ew
   59DC 21 04 10      [10] 1374 	ld	hl,#0x1004
   59DF E5            [11] 1375 	push	hl
   59E0 C5            [11] 1376 	push	bc
   59E1 D5            [11] 1377 	push	de
   59E2 CD 9D 74      [17] 1378 	call	_cpct_drawSprite
                           1379 ;src/game/world.c:279: break;
   59E5 C3 91 5A      [10] 1380 	jp	00128$
                           1381 ;src/game/world.c:280: case SLNS:
   59E8                    1382 00115$:
                           1383 ;src/game/world.c:281: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   59E8 11 C4 65      [10] 1384 	ld	de,#_station_large_ns
   59EB 21 04 10      [10] 1385 	ld	hl,#0x1004
   59EE E5            [11] 1386 	push	hl
   59EF C5            [11] 1387 	push	bc
   59F0 D5            [11] 1388 	push	de
   59F1 CD 9D 74      [17] 1389 	call	_cpct_drawSprite
                           1390 ;src/game/world.c:282: break;
   59F4 C3 91 5A      [10] 1391 	jp	00128$
                           1392 ;src/game/world.c:283: case SLEW:
   59F7                    1393 00116$:
                           1394 ;src/game/world.c:284: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   59F7 11 04 66      [10] 1395 	ld	de,#_station_large_ew
   59FA 21 04 10      [10] 1396 	ld	hl,#0x1004
   59FD E5            [11] 1397 	push	hl
   59FE C5            [11] 1398 	push	bc
   59FF D5            [11] 1399 	push	de
   5A00 CD 9D 74      [17] 1400 	call	_cpct_drawSprite
                           1401 ;src/game/world.c:285: break;
   5A03 C3 91 5A      [10] 1402 	jp	00128$
                           1403 ;src/game/world.c:286: case REW:
   5A06                    1404 00117$:
                           1405 ;src/game/world.c:287: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   5A06 11 44 66      [10] 1406 	ld	de,#_rail_ew
   5A09 21 04 10      [10] 1407 	ld	hl,#0x1004
   5A0C E5            [11] 1408 	push	hl
   5A0D C5            [11] 1409 	push	bc
   5A0E D5            [11] 1410 	push	de
   5A0F CD 9D 74      [17] 1411 	call	_cpct_drawSprite
                           1412 ;src/game/world.c:288: break;
   5A12 C3 91 5A      [10] 1413 	jp	00128$
                           1414 ;src/game/world.c:289: case RNS:
   5A15                    1415 00118$:
                           1416 ;src/game/world.c:290: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5A15 11 84 66      [10] 1417 	ld	de,#_rail_ns
   5A18 21 04 10      [10] 1418 	ld	hl,#0x1004
   5A1B E5            [11] 1419 	push	hl
   5A1C C5            [11] 1420 	push	bc
   5A1D D5            [11] 1421 	push	de
   5A1E CD 9D 74      [17] 1422 	call	_cpct_drawSprite
                           1423 ;src/game/world.c:291: break;
   5A21 18 6E         [12] 1424 	jr	00128$
                           1425 ;src/game/world.c:292: case REN:
   5A23                    1426 00119$:
                           1427 ;src/game/world.c:293: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   5A23 11 C4 66      [10] 1428 	ld	de,#_rail_en
   5A26 21 04 10      [10] 1429 	ld	hl,#0x1004
   5A29 E5            [11] 1430 	push	hl
   5A2A C5            [11] 1431 	push	bc
   5A2B D5            [11] 1432 	push	de
   5A2C CD 9D 74      [17] 1433 	call	_cpct_drawSprite
                           1434 ;src/game/world.c:294: break;
   5A2F 18 60         [12] 1435 	jr	00128$
                           1436 ;src/game/world.c:295: case RES:
   5A31                    1437 00120$:
                           1438 ;src/game/world.c:296: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   5A31 11 04 67      [10] 1439 	ld	de,#_rail_es
   5A34 21 04 10      [10] 1440 	ld	hl,#0x1004
   5A37 E5            [11] 1441 	push	hl
   5A38 C5            [11] 1442 	push	bc
   5A39 D5            [11] 1443 	push	de
   5A3A CD 9D 74      [17] 1444 	call	_cpct_drawSprite
                           1445 ;src/game/world.c:297: break;
   5A3D 18 52         [12] 1446 	jr	00128$
                           1447 ;src/game/world.c:298: case RWN:
   5A3F                    1448 00121$:
                           1449 ;src/game/world.c:299: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   5A3F 11 44 67      [10] 1450 	ld	de,#_rail_wn
   5A42 21 04 10      [10] 1451 	ld	hl,#0x1004
   5A45 E5            [11] 1452 	push	hl
   5A46 C5            [11] 1453 	push	bc
   5A47 D5            [11] 1454 	push	de
   5A48 CD 9D 74      [17] 1455 	call	_cpct_drawSprite
                           1456 ;src/game/world.c:300: break;
   5A4B 18 44         [12] 1457 	jr	00128$
                           1458 ;src/game/world.c:301: case RWS:
   5A4D                    1459 00122$:
                           1460 ;src/game/world.c:302: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   5A4D 11 84 67      [10] 1461 	ld	de,#_rail_ws
   5A50 21 04 10      [10] 1462 	ld	hl,#0x1004
   5A53 E5            [11] 1463 	push	hl
   5A54 C5            [11] 1464 	push	bc
   5A55 D5            [11] 1465 	push	de
   5A56 CD 9D 74      [17] 1466 	call	_cpct_drawSprite
                           1467 ;src/game/world.c:303: break;
   5A59 18 36         [12] 1468 	jr	00128$
                           1469 ;src/game/world.c:304: case REWN:
   5A5B                    1470 00123$:
                           1471 ;src/game/world.c:305: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5A5B 11 C4 67      [10] 1472 	ld	de,#_rail_ew_n
   5A5E 21 04 10      [10] 1473 	ld	hl,#0x1004
   5A61 E5            [11] 1474 	push	hl
   5A62 C5            [11] 1475 	push	bc
   5A63 D5            [11] 1476 	push	de
   5A64 CD 9D 74      [17] 1477 	call	_cpct_drawSprite
                           1478 ;src/game/world.c:306: break;
   5A67 18 28         [12] 1479 	jr	00128$
                           1480 ;src/game/world.c:307: case REWS:
   5A69                    1481 00124$:
                           1482 ;src/game/world.c:308: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5A69 11 04 68      [10] 1483 	ld	de,#_rail_ew_s
   5A6C 21 04 10      [10] 1484 	ld	hl,#0x1004
   5A6F E5            [11] 1485 	push	hl
   5A70 C5            [11] 1486 	push	bc
   5A71 D5            [11] 1487 	push	de
   5A72 CD 9D 74      [17] 1488 	call	_cpct_drawSprite
                           1489 ;src/game/world.c:309: break;
   5A75 18 1A         [12] 1490 	jr	00128$
                           1491 ;src/game/world.c:310: case RNSE:
   5A77                    1492 00125$:
                           1493 ;src/game/world.c:311: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5A77 11 84 68      [10] 1494 	ld	de,#_rail_ns_e
   5A7A 21 04 10      [10] 1495 	ld	hl,#0x1004
   5A7D E5            [11] 1496 	push	hl
   5A7E C5            [11] 1497 	push	bc
   5A7F D5            [11] 1498 	push	de
   5A80 CD 9D 74      [17] 1499 	call	_cpct_drawSprite
                           1500 ;src/game/world.c:312: break;
   5A83 18 0C         [12] 1501 	jr	00128$
                           1502 ;src/game/world.c:313: case RNSW:
   5A85                    1503 00126$:
                           1504 ;src/game/world.c:314: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   5A85 11 44 68      [10] 1505 	ld	de,#_rail_ns_w
   5A88 21 04 10      [10] 1506 	ld	hl,#0x1004
   5A8B E5            [11] 1507 	push	hl
   5A8C C5            [11] 1508 	push	bc
   5A8D D5            [11] 1509 	push	de
   5A8E CD 9D 74      [17] 1510 	call	_cpct_drawSprite
                           1511 ;src/game/world.c:316: }
   5A91                    1512 00128$:
   5A91 DD E1         [14] 1513 	pop	ix
   5A93 C9            [10] 1514 	ret
                           1515 ;src/game/world.c:319: void drawScrolls(u8 x_, u8 y_)
                           1516 ;	---------------------------------
                           1517 ; Function drawScrolls
                           1518 ; ---------------------------------
   5A94                    1519 _drawScrolls::
   5A94 DD E5         [15] 1520 	push	ix
   5A96 DD 21 00 00   [14] 1521 	ld	ix,#0
   5A9A DD 39         [15] 1522 	add	ix,sp
   5A9C 3B            [ 6] 1523 	dec	sp
                           1524 ;src/game/world.c:325: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   5A9D DD 4E 04      [19] 1525 	ld	c,4 (ix)
   5AA0 06 00         [ 7] 1526 	ld	b,#0x00
   5AA2 69            [ 4] 1527 	ld	l, c
   5AA3 60            [ 4] 1528 	ld	h, b
   5AA4 29            [11] 1529 	add	hl, hl
   5AA5 29            [11] 1530 	add	hl, hl
   5AA6 29            [11] 1531 	add	hl, hl
   5AA7 09            [11] 1532 	add	hl, bc
   5AA8 29            [11] 1533 	add	hl, hl
   5AA9 09            [11] 1534 	add	hl, bc
   5AAA 29            [11] 1535 	add	hl, hl
   5AAB 29            [11] 1536 	add	hl, hl
   5AAC 01 3C 00      [10] 1537 	ld	bc,#0x003C
   5AAF C5            [11] 1538 	push	bc
   5AB0 E5            [11] 1539 	push	hl
   5AB1 CD 1C 7B      [17] 1540 	call	__divsint
   5AB4 F1            [10] 1541 	pop	af
   5AB5 F1            [10] 1542 	pop	af
   5AB6 55            [ 4] 1543 	ld	d,l
                           1544 ;src/game/world.c:326: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   5AB7 DD 4E 05      [19] 1545 	ld	c,5 (ix)
   5ABA 06 00         [ 7] 1546 	ld	b,#0x00
   5ABC 69            [ 4] 1547 	ld	l, c
   5ABD 60            [ 4] 1548 	ld	h, b
   5ABE 29            [11] 1549 	add	hl, hl
   5ABF 29            [11] 1550 	add	hl, hl
   5AC0 09            [11] 1551 	add	hl, bc
   5AC1 29            [11] 1552 	add	hl, hl
   5AC2 09            [11] 1553 	add	hl, bc
   5AC3 29            [11] 1554 	add	hl, hl
   5AC4 29            [11] 1555 	add	hl, hl
   5AC5 29            [11] 1556 	add	hl, hl
   5AC6 29            [11] 1557 	add	hl, hl
   5AC7 D5            [11] 1558 	push	de
   5AC8 01 24 00      [10] 1559 	ld	bc,#0x0024
   5ACB C5            [11] 1560 	push	bc
   5ACC E5            [11] 1561 	push	hl
   5ACD CD 1C 7B      [17] 1562 	call	__divsint
   5AD0 F1            [10] 1563 	pop	af
   5AD1 F1            [10] 1564 	pop	af
   5AD2 D1            [10] 1565 	pop	de
   5AD3 DD 75 FF      [19] 1566 	ld	-1 (ix),l
                           1567 ;src/game/world.c:328: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   5AD6 AF            [ 4] 1568 	xor	a, a
   5AD7 F5            [11] 1569 	push	af
   5AD8 33            [ 6] 1570 	inc	sp
   5AD9 D5            [11] 1571 	push	de
   5ADA 33            [ 6] 1572 	inc	sp
   5ADB 21 00 C0      [10] 1573 	ld	hl,#0xC000
   5ADE E5            [11] 1574 	push	hl
   5ADF CD CB 7A      [17] 1575 	call	_cpct_getScreenPtr
                           1576 ;src/game/world.c:329: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   5AE2 E5            [11] 1577 	push	hl
   5AE3 21 00 00      [10] 1578 	ld	hl,#0x0000
   5AE6 E5            [11] 1579 	push	hl
   5AE7 2E 00         [ 7] 1580 	ld	l, #0x00
   5AE9 E5            [11] 1581 	push	hl
   5AEA CD A5 79      [17] 1582 	call	_cpct_px2byteM1
   5AED F1            [10] 1583 	pop	af
   5AEE F1            [10] 1584 	pop	af
   5AEF 45            [ 4] 1585 	ld	b,l
   5AF0 D1            [10] 1586 	pop	de
   5AF1 21 04 04      [10] 1587 	ld	hl,#0x0404
   5AF4 E5            [11] 1588 	push	hl
   5AF5 C5            [11] 1589 	push	bc
   5AF6 33            [ 6] 1590 	inc	sp
   5AF7 D5            [11] 1591 	push	de
   5AF8 CD 12 7A      [17] 1592 	call	_cpct_drawSolidBox
   5AFB F1            [10] 1593 	pop	af
   5AFC F1            [10] 1594 	pop	af
   5AFD 33            [ 6] 1595 	inc	sp
                           1596 ;src/game/world.c:331: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   5AFE DD 7E FF      [19] 1597 	ld	a,-1 (ix)
   5B01 F5            [11] 1598 	push	af
   5B02 33            [ 6] 1599 	inc	sp
   5B03 AF            [ 4] 1600 	xor	a, a
   5B04 F5            [11] 1601 	push	af
   5B05 33            [ 6] 1602 	inc	sp
   5B06 21 00 C0      [10] 1603 	ld	hl,#0xC000
   5B09 E5            [11] 1604 	push	hl
   5B0A CD CB 7A      [17] 1605 	call	_cpct_getScreenPtr
                           1606 ;src/game/world.c:332: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   5B0D E5            [11] 1607 	push	hl
   5B0E 21 00 00      [10] 1608 	ld	hl,#0x0000
   5B11 E5            [11] 1609 	push	hl
   5B12 2E 00         [ 7] 1610 	ld	l, #0x00
   5B14 E5            [11] 1611 	push	hl
   5B15 CD A5 79      [17] 1612 	call	_cpct_px2byteM1
   5B18 F1            [10] 1613 	pop	af
   5B19 F1            [10] 1614 	pop	af
   5B1A 45            [ 4] 1615 	ld	b,l
   5B1B D1            [10] 1616 	pop	de
   5B1C 21 01 10      [10] 1617 	ld	hl,#0x1001
   5B1F E5            [11] 1618 	push	hl
   5B20 C5            [11] 1619 	push	bc
   5B21 33            [ 6] 1620 	inc	sp
   5B22 D5            [11] 1621 	push	de
   5B23 CD 12 7A      [17] 1622 	call	_cpct_drawSolidBox
   5B26 F1            [10] 1623 	pop	af
   5B27 F1            [10] 1624 	pop	af
   5B28 33            [ 6] 1625 	inc	sp
   5B29 33            [ 6] 1626 	inc	sp
   5B2A DD E1         [14] 1627 	pop	ix
   5B2C C9            [10] 1628 	ret
                           1629 ;src/game/world.c:335: void drawWorld(u8 x_, u8 y_)
                           1630 ;	---------------------------------
                           1631 ; Function drawWorld
                           1632 ; ---------------------------------
   5B2D                    1633 _drawWorld::
                           1634 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   5B2D 16 00         [ 7] 1635 	ld	d,#0x00
                           1636 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   5B2F                    1637 00109$:
   5B2F 1E 00         [ 7] 1638 	ld	e,#0x00
   5B31                    1639 00103$:
                           1640 ;src/game/world.c:344: drawTile(x_, y_, ix, iy);
   5B31 D5            [11] 1641 	push	de
   5B32 D5            [11] 1642 	push	de
   5B33 21 07 00      [10] 1643 	ld	hl, #7+0
   5B36 39            [11] 1644 	add	hl, sp
   5B37 7E            [ 7] 1645 	ld	a, (hl)
   5B38 F5            [11] 1646 	push	af
   5B39 33            [ 6] 1647 	inc	sp
   5B3A 21 07 00      [10] 1648 	ld	hl, #7+0
   5B3D 39            [11] 1649 	add	hl, sp
   5B3E 7E            [ 7] 1650 	ld	a, (hl)
   5B3F F5            [11] 1651 	push	af
   5B40 33            [ 6] 1652 	inc	sp
   5B41 CD 6C 58      [17] 1653 	call	_drawTile
   5B44 F1            [10] 1654 	pop	af
   5B45 F1            [10] 1655 	pop	af
   5B46 D1            [10] 1656 	pop	de
                           1657 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   5B47 1C            [ 4] 1658 	inc	e
   5B48 7B            [ 4] 1659 	ld	a,e
   5B49 D6 14         [ 7] 1660 	sub	a, #0x14
   5B4B 38 E4         [12] 1661 	jr	C,00103$
                           1662 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   5B4D 14            [ 4] 1663 	inc	d
   5B4E 7A            [ 4] 1664 	ld	a,d
   5B4F D6 0C         [ 7] 1665 	sub	a, #0x0C
   5B51 38 DC         [12] 1666 	jr	C,00109$
                           1667 ;src/game/world.c:348: drawScrolls(x_, y_);
   5B53 21 03 00      [10] 1668 	ld	hl, #3+0
   5B56 39            [11] 1669 	add	hl, sp
   5B57 7E            [ 7] 1670 	ld	a, (hl)
   5B58 F5            [11] 1671 	push	af
   5B59 33            [ 6] 1672 	inc	sp
   5B5A 21 03 00      [10] 1673 	ld	hl, #3+0
   5B5D 39            [11] 1674 	add	hl, sp
   5B5E 7E            [ 7] 1675 	ld	a, (hl)
   5B5F F5            [11] 1676 	push	af
   5B60 33            [ 6] 1677 	inc	sp
   5B61 CD 94 5A      [17] 1678 	call	_drawScrolls
   5B64 F1            [10] 1679 	pop	af
   5B65 C9            [10] 1680 	ret
                           1681 	.area _CODE
                           1682 	.area _INITIALIZER
                           1683 	.area _CABS (ABS)
