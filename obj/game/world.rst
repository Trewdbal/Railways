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
   51C4                      64 _drawCursor::
   51C4 DD E5         [15]   65 	push	ix
   51C6 DD 21 00 00   [14]   66 	ld	ix,#0
   51CA DD 39         [15]   67 	add	ix,sp
   51CC 3B            [ 6]   68 	dec	sp
                             69 ;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   51CD DD 7E 05      [19]   70 	ld	a,5 (ix)
   51D0 07            [ 4]   71 	rlca
   51D1 07            [ 4]   72 	rlca
   51D2 07            [ 4]   73 	rlca
   51D3 07            [ 4]   74 	rlca
   51D4 E6 F0         [ 7]   75 	and	a,#0xF0
   51D6 5F            [ 4]   76 	ld	e,a
   51D7 DD 7E 04      [19]   77 	ld	a,4 (ix)
   51DA 87            [ 4]   78 	add	a, a
   51DB 87            [ 4]   79 	add	a, a
   51DC 57            [ 4]   80 	ld	d,a
   51DD D5            [11]   81 	push	de
   51DE 7B            [ 4]   82 	ld	a,e
   51DF F5            [11]   83 	push	af
   51E0 33            [ 6]   84 	inc	sp
   51E1 D5            [11]   85 	push	de
   51E2 33            [ 6]   86 	inc	sp
   51E3 21 00 C0      [10]   87 	ld	hl,#0xC000
   51E6 E5            [11]   88 	push	hl
   51E7 CD B6 7A      [17]   89 	call	_cpct_getScreenPtr
   51EA D1            [10]   90 	pop	de
   51EB 4D            [ 4]   91 	ld	c, l
   51EC 44            [ 4]   92 	ld	b, h
                             93 ;src/game/world.c:8: switch(CURSOR_MODE)
   51ED 3E 10         [ 7]   94 	ld	a,#0x10
   51EF FD 21 AA 8A   [14]   95 	ld	iy,#_CURSOR_MODE
   51F3 FD 96 00      [19]   96 	sub	a, 0 (iy)
   51F6 DA F5 53      [10]   97 	jp	C,00119$
   51F9 D5            [11]   98 	push	de
   51FA FD 21 AA 8A   [14]   99 	ld	iy,#_CURSOR_MODE
   51FE FD 5E 00      [19]  100 	ld	e,0 (iy)
   5201 16 00         [ 7]  101 	ld	d,#0x00
   5203 21 0B 52      [10]  102 	ld	hl,#00125$
   5206 19            [11]  103 	add	hl,de
   5207 19            [11]  104 	add	hl,de
   5208 19            [11]  105 	add	hl,de
   5209 D1            [10]  106 	pop	de
   520A E9            [ 4]  107 	jp	(hl)
   520B                     108 00125$:
   520B C3 3E 52      [10]  109 	jp	00101$
   520E C3 10 53      [10]  110 	jp	00102$
   5211 C3 1F 53      [10]  111 	jp	00103$
   5214 C3 2E 53      [10]  112 	jp	00104$
   5217 C3 3D 53      [10]  113 	jp	00105$
   521A C3 4C 53      [10]  114 	jp	00106$
   521D C3 5B 53      [10]  115 	jp	00107$
   5220 C3 6A 53      [10]  116 	jp	00108$
   5223 C3 79 53      [10]  117 	jp	00109$
   5226 C3 87 53      [10]  118 	jp	00110$
   5229 C3 95 53      [10]  119 	jp	00111$
   522C C3 A3 53      [10]  120 	jp	00112$
   522F C3 B1 53      [10]  121 	jp	00113$
   5232 C3 BF 53      [10]  122 	jp	00114$
   5235 C3 CD 53      [10]  123 	jp	00115$
   5238 C3 DB 53      [10]  124 	jp	00116$
   523B C3 E9 53      [10]  125 	jp	00117$
                            126 ;src/game/world.c:10: case NONE:
   523E                     127 00101$:
                            128 ;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   523E C5            [11]  129 	push	bc
   523F D5            [11]  130 	push	de
   5240 DD 66 06      [19]  131 	ld	h,6 (ix)
   5243 DD 6E 06      [19]  132 	ld	l,6 (ix)
   5246 E5            [11]  133 	push	hl
   5247 DD 66 06      [19]  134 	ld	h,6 (ix)
   524A DD 6E 06      [19]  135 	ld	l,6 (ix)
   524D E5            [11]  136 	push	hl
   524E CD 90 79      [17]  137 	call	_cpct_px2byteM1
   5251 F1            [10]  138 	pop	af
   5252 F1            [10]  139 	pop	af
   5253 DD 75 FF      [19]  140 	ld	-1 (ix),l
   5256 D1            [10]  141 	pop	de
   5257 C1            [10]  142 	pop	bc
   5258 D5            [11]  143 	push	de
   5259 21 04 00      [10]  144 	ld	hl,#0x0004
   525C E5            [11]  145 	push	hl
   525D DD 7E FF      [19]  146 	ld	a,-1 (ix)
   5260 F5            [11]  147 	push	af
   5261 33            [ 6]  148 	inc	sp
   5262 C5            [11]  149 	push	bc
   5263 CD 82 79      [17]  150 	call	_cpct_memset
   5266 D1            [10]  151 	pop	de
                            152 ;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   5267 63            [ 4]  153 	ld	h,e
   5268 24            [ 4]  154 	inc	h
   5269 D5            [11]  155 	push	de
   526A E5            [11]  156 	push	hl
   526B 33            [ 6]  157 	inc	sp
   526C D5            [11]  158 	push	de
   526D 33            [ 6]  159 	inc	sp
   526E 21 00 C0      [10]  160 	ld	hl,#0xC000
   5271 E5            [11]  161 	push	hl
   5272 CD B6 7A      [17]  162 	call	_cpct_getScreenPtr
   5275 D1            [10]  163 	pop	de
                            164 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   5276 E5            [11]  165 	push	hl
   5277 D5            [11]  166 	push	de
   5278 DD 66 06      [19]  167 	ld	h,6 (ix)
   527B DD 6E 06      [19]  168 	ld	l,6 (ix)
   527E E5            [11]  169 	push	hl
   527F DD 66 06      [19]  170 	ld	h,6 (ix)
   5282 DD 6E 06      [19]  171 	ld	l,6 (ix)
   5285 E5            [11]  172 	push	hl
   5286 CD 90 79      [17]  173 	call	_cpct_px2byteM1
   5289 F1            [10]  174 	pop	af
   528A F1            [10]  175 	pop	af
   528B 5D            [ 4]  176 	ld	e,l
   528C F1            [10]  177 	pop	af
   528D 57            [ 4]  178 	ld	d,a
   528E C1            [10]  179 	pop	bc
   528F D5            [11]  180 	push	de
   5290 21 04 00      [10]  181 	ld	hl,#0x0004
   5293 E5            [11]  182 	push	hl
   5294 7B            [ 4]  183 	ld	a,e
   5295 F5            [11]  184 	push	af
   5296 33            [ 6]  185 	inc	sp
   5297 C5            [11]  186 	push	bc
   5298 CD 82 79      [17]  187 	call	_cpct_memset
   529B D1            [10]  188 	pop	de
                            189 ;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   529C DD 7E 05      [19]  190 	ld	a,5 (ix)
   529F 3C            [ 4]  191 	inc	a
   52A0 07            [ 4]  192 	rlca
   52A1 07            [ 4]  193 	rlca
   52A2 07            [ 4]  194 	rlca
   52A3 07            [ 4]  195 	rlca
   52A4 E6 F0         [ 7]  196 	and	a,#0xF0
   52A6 5F            [ 4]  197 	ld	e,a
   52A7 63            [ 4]  198 	ld	h,e
   52A8 25            [ 4]  199 	dec	h
   52A9 D5            [11]  200 	push	de
   52AA E5            [11]  201 	push	hl
   52AB 33            [ 6]  202 	inc	sp
   52AC D5            [11]  203 	push	de
   52AD 33            [ 6]  204 	inc	sp
   52AE 21 00 C0      [10]  205 	ld	hl,#0xC000
   52B1 E5            [11]  206 	push	hl
   52B2 CD B6 7A      [17]  207 	call	_cpct_getScreenPtr
   52B5 D1            [10]  208 	pop	de
                            209 ;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   52B6 E5            [11]  210 	push	hl
   52B7 D5            [11]  211 	push	de
   52B8 DD 66 06      [19]  212 	ld	h,6 (ix)
   52BB DD 6E 06      [19]  213 	ld	l,6 (ix)
   52BE E5            [11]  214 	push	hl
   52BF DD 66 06      [19]  215 	ld	h,6 (ix)
   52C2 DD 6E 06      [19]  216 	ld	l,6 (ix)
   52C5 E5            [11]  217 	push	hl
   52C6 CD 90 79      [17]  218 	call	_cpct_px2byteM1
   52C9 F1            [10]  219 	pop	af
   52CA F1            [10]  220 	pop	af
   52CB DD 75 FF      [19]  221 	ld	-1 (ix),l
   52CE D1            [10]  222 	pop	de
   52CF C1            [10]  223 	pop	bc
   52D0 D5            [11]  224 	push	de
   52D1 21 04 00      [10]  225 	ld	hl,#0x0004
   52D4 E5            [11]  226 	push	hl
   52D5 DD 7E FF      [19]  227 	ld	a,-1 (ix)
   52D8 F5            [11]  228 	push	af
   52D9 33            [ 6]  229 	inc	sp
   52DA C5            [11]  230 	push	bc
   52DB CD 82 79      [17]  231 	call	_cpct_memset
   52DE D1            [10]  232 	pop	de
                            233 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   52DF 63            [ 4]  234 	ld	h,e
   52E0 25            [ 4]  235 	dec	h
   52E1 25            [ 4]  236 	dec	h
   52E2 E5            [11]  237 	push	hl
   52E3 33            [ 6]  238 	inc	sp
   52E4 D5            [11]  239 	push	de
   52E5 33            [ 6]  240 	inc	sp
   52E6 21 00 C0      [10]  241 	ld	hl,#0xC000
   52E9 E5            [11]  242 	push	hl
   52EA CD B6 7A      [17]  243 	call	_cpct_getScreenPtr
                            244 ;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   52ED E5            [11]  245 	push	hl
   52EE DD 66 06      [19]  246 	ld	h,6 (ix)
   52F1 DD 6E 06      [19]  247 	ld	l,6 (ix)
   52F4 E5            [11]  248 	push	hl
   52F5 DD 66 06      [19]  249 	ld	h,6 (ix)
   52F8 DD 6E 06      [19]  250 	ld	l,6 (ix)
   52FB E5            [11]  251 	push	hl
   52FC CD 90 79      [17]  252 	call	_cpct_px2byteM1
   52FF F1            [10]  253 	pop	af
   5300 F1            [10]  254 	pop	af
   5301 65            [ 4]  255 	ld	h,l
   5302 D1            [10]  256 	pop	de
   5303 01 04 00      [10]  257 	ld	bc,#0x0004
   5306 C5            [11]  258 	push	bc
   5307 E5            [11]  259 	push	hl
   5308 33            [ 6]  260 	inc	sp
   5309 D5            [11]  261 	push	de
   530A CD 82 79      [17]  262 	call	_cpct_memset
                            263 ;src/game/world.c:20: break;
   530D C3 F5 53      [10]  264 	jp	00119$
                            265 ;src/game/world.c:21: case T_SSNS:
   5310                     266 00102$:
                            267 ;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5310 11 AF 64      [10]  268 	ld	de,#_station_small_ns
   5313 21 04 10      [10]  269 	ld	hl,#0x1004
   5316 E5            [11]  270 	push	hl
   5317 C5            [11]  271 	push	bc
   5318 D5            [11]  272 	push	de
   5319 CD 88 74      [17]  273 	call	_cpct_drawSprite
                            274 ;src/game/world.c:23: break;
   531C C3 F5 53      [10]  275 	jp	00119$
                            276 ;src/game/world.c:24: case T_SSEW:
   531F                     277 00103$:
                            278 ;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   531F 11 EF 64      [10]  279 	ld	de,#_station_small_ew
   5322 21 04 10      [10]  280 	ld	hl,#0x1004
   5325 E5            [11]  281 	push	hl
   5326 C5            [11]  282 	push	bc
   5327 D5            [11]  283 	push	de
   5328 CD 88 74      [17]  284 	call	_cpct_drawSprite
                            285 ;src/game/world.c:26: break;
   532B C3 F5 53      [10]  286 	jp	00119$
                            287 ;src/game/world.c:27: case T_SMNS:
   532E                     288 00104$:
                            289 ;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   532E 11 2F 65      [10]  290 	ld	de,#_station_medium_ns
   5331 21 04 10      [10]  291 	ld	hl,#0x1004
   5334 E5            [11]  292 	push	hl
   5335 C5            [11]  293 	push	bc
   5336 D5            [11]  294 	push	de
   5337 CD 88 74      [17]  295 	call	_cpct_drawSprite
                            296 ;src/game/world.c:29: break;
   533A C3 F5 53      [10]  297 	jp	00119$
                            298 ;src/game/world.c:30: case T_SMEW:
   533D                     299 00105$:
                            300 ;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   533D 11 6F 65      [10]  301 	ld	de,#_station_medium_ew
   5340 21 04 10      [10]  302 	ld	hl,#0x1004
   5343 E5            [11]  303 	push	hl
   5344 C5            [11]  304 	push	bc
   5345 D5            [11]  305 	push	de
   5346 CD 88 74      [17]  306 	call	_cpct_drawSprite
                            307 ;src/game/world.c:32: break;
   5349 C3 F5 53      [10]  308 	jp	00119$
                            309 ;src/game/world.c:33: case T_SLNS:
   534C                     310 00106$:
                            311 ;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   534C 11 AF 65      [10]  312 	ld	de,#_station_large_ns
   534F 21 04 10      [10]  313 	ld	hl,#0x1004
   5352 E5            [11]  314 	push	hl
   5353 C5            [11]  315 	push	bc
   5354 D5            [11]  316 	push	de
   5355 CD 88 74      [17]  317 	call	_cpct_drawSprite
                            318 ;src/game/world.c:35: break;
   5358 C3 F5 53      [10]  319 	jp	00119$
                            320 ;src/game/world.c:36: case T_SLEW:
   535B                     321 00107$:
                            322 ;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   535B 11 EF 65      [10]  323 	ld	de,#_station_large_ew
   535E 21 04 10      [10]  324 	ld	hl,#0x1004
   5361 E5            [11]  325 	push	hl
   5362 C5            [11]  326 	push	bc
   5363 D5            [11]  327 	push	de
   5364 CD 88 74      [17]  328 	call	_cpct_drawSprite
                            329 ;src/game/world.c:38: break;
   5367 C3 F5 53      [10]  330 	jp	00119$
                            331 ;src/game/world.c:39: case T_REW:
   536A                     332 00108$:
                            333 ;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   536A 11 2F 66      [10]  334 	ld	de,#_rail_ew
   536D 21 04 10      [10]  335 	ld	hl,#0x1004
   5370 E5            [11]  336 	push	hl
   5371 C5            [11]  337 	push	bc
   5372 D5            [11]  338 	push	de
   5373 CD 88 74      [17]  339 	call	_cpct_drawSprite
                            340 ;src/game/world.c:41: break;
   5376 C3 F5 53      [10]  341 	jp	00119$
                            342 ;src/game/world.c:42: case T_RNS:
   5379                     343 00109$:
                            344 ;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5379 11 6F 66      [10]  345 	ld	de,#_rail_ns
   537C 21 04 10      [10]  346 	ld	hl,#0x1004
   537F E5            [11]  347 	push	hl
   5380 C5            [11]  348 	push	bc
   5381 D5            [11]  349 	push	de
   5382 CD 88 74      [17]  350 	call	_cpct_drawSprite
                            351 ;src/game/world.c:44: break;
   5385 18 6E         [12]  352 	jr	00119$
                            353 ;src/game/world.c:45: case T_REN:
   5387                     354 00110$:
                            355 ;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   5387 11 AF 66      [10]  356 	ld	de,#_rail_en
   538A 21 04 10      [10]  357 	ld	hl,#0x1004
   538D E5            [11]  358 	push	hl
   538E C5            [11]  359 	push	bc
   538F D5            [11]  360 	push	de
   5390 CD 88 74      [17]  361 	call	_cpct_drawSprite
                            362 ;src/game/world.c:47: break;
   5393 18 60         [12]  363 	jr	00119$
                            364 ;src/game/world.c:48: case T_RES:
   5395                     365 00111$:
                            366 ;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   5395 11 EF 66      [10]  367 	ld	de,#_rail_es
   5398 21 04 10      [10]  368 	ld	hl,#0x1004
   539B E5            [11]  369 	push	hl
   539C C5            [11]  370 	push	bc
   539D D5            [11]  371 	push	de
   539E CD 88 74      [17]  372 	call	_cpct_drawSprite
                            373 ;src/game/world.c:50: break;
   53A1 18 52         [12]  374 	jr	00119$
                            375 ;src/game/world.c:51: case T_RWN:
   53A3                     376 00112$:
                            377 ;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   53A3 11 2F 67      [10]  378 	ld	de,#_rail_wn
   53A6 21 04 10      [10]  379 	ld	hl,#0x1004
   53A9 E5            [11]  380 	push	hl
   53AA C5            [11]  381 	push	bc
   53AB D5            [11]  382 	push	de
   53AC CD 88 74      [17]  383 	call	_cpct_drawSprite
                            384 ;src/game/world.c:53: break;
   53AF 18 44         [12]  385 	jr	00119$
                            386 ;src/game/world.c:54: case T_RWS:
   53B1                     387 00113$:
                            388 ;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   53B1 11 6F 67      [10]  389 	ld	de,#_rail_ws
   53B4 21 04 10      [10]  390 	ld	hl,#0x1004
   53B7 E5            [11]  391 	push	hl
   53B8 C5            [11]  392 	push	bc
   53B9 D5            [11]  393 	push	de
   53BA CD 88 74      [17]  394 	call	_cpct_drawSprite
                            395 ;src/game/world.c:56: break;
   53BD 18 36         [12]  396 	jr	00119$
                            397 ;src/game/world.c:57: case T_REWN:
   53BF                     398 00114$:
                            399 ;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   53BF 11 AF 67      [10]  400 	ld	de,#_rail_ew_n
   53C2 21 04 10      [10]  401 	ld	hl,#0x1004
   53C5 E5            [11]  402 	push	hl
   53C6 C5            [11]  403 	push	bc
   53C7 D5            [11]  404 	push	de
   53C8 CD 88 74      [17]  405 	call	_cpct_drawSprite
                            406 ;src/game/world.c:59: break;
   53CB 18 28         [12]  407 	jr	00119$
                            408 ;src/game/world.c:60: case T_REWS:
   53CD                     409 00115$:
                            410 ;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   53CD 11 EF 67      [10]  411 	ld	de,#_rail_ew_s
   53D0 21 04 10      [10]  412 	ld	hl,#0x1004
   53D3 E5            [11]  413 	push	hl
   53D4 C5            [11]  414 	push	bc
   53D5 D5            [11]  415 	push	de
   53D6 CD 88 74      [17]  416 	call	_cpct_drawSprite
                            417 ;src/game/world.c:62: break;
   53D9 18 1A         [12]  418 	jr	00119$
                            419 ;src/game/world.c:63: case T_RNSE:
   53DB                     420 00116$:
                            421 ;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   53DB 11 6F 68      [10]  422 	ld	de,#_rail_ns_e
   53DE 21 04 10      [10]  423 	ld	hl,#0x1004
   53E1 E5            [11]  424 	push	hl
   53E2 C5            [11]  425 	push	bc
   53E3 D5            [11]  426 	push	de
   53E4 CD 88 74      [17]  427 	call	_cpct_drawSprite
                            428 ;src/game/world.c:65: break;
   53E7 18 0C         [12]  429 	jr	00119$
                            430 ;src/game/world.c:66: case T_RNSW:
   53E9                     431 00117$:
                            432 ;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   53E9 11 2F 68      [10]  433 	ld	de,#_rail_ns_w
   53EC 21 04 10      [10]  434 	ld	hl,#0x1004
   53EF E5            [11]  435 	push	hl
   53F0 C5            [11]  436 	push	bc
   53F1 D5            [11]  437 	push	de
   53F2 CD 88 74      [17]  438 	call	_cpct_drawSprite
                            439 ;src/game/world.c:69: }
   53F5                     440 00119$:
   53F5 33            [ 6]  441 	inc	sp
   53F6 DD E1         [14]  442 	pop	ix
   53F8 C9            [10]  443 	ret
                            444 ;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            445 ;	---------------------------------
                            446 ; Function patternTile
                            447 ; ---------------------------------
   53F9                     448 _patternTile::
   53F9 DD E5         [15]  449 	push	ix
   53FB DD 21 00 00   [14]  450 	ld	ix,#0
   53FF DD 39         [15]  451 	add	ix,sp
   5401 21 F5 FF      [10]  452 	ld	hl,#-11
   5404 39            [11]  453 	add	hl,sp
   5405 F9            [ 6]  454 	ld	sp,hl
                            455 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   5406 DD 7E 04      [19]  456 	ld	a,4 (ix)
   5409 D6 08         [ 7]  457 	sub	a, #0x08
   540B 20 04         [12]  458 	jr	NZ,00153$
   540D 3E 01         [ 7]  459 	ld	a,#0x01
   540F 18 01         [12]  460 	jr	00154$
   5411                     461 00153$:
   5411 AF            [ 4]  462 	xor	a,a
   5412                     463 00154$:
   5412 DD 77 FF      [19]  464 	ld	-1 (ix),a
   5415 DD 7E 04      [19]  465 	ld	a,4 (ix)
   5418 D6 02         [ 7]  466 	sub	a, #0x02
   541A 20 04         [12]  467 	jr	NZ,00155$
   541C 3E 01         [ 7]  468 	ld	a,#0x01
   541E 18 01         [12]  469 	jr	00156$
   5420                     470 00155$:
   5420 AF            [ 4]  471 	xor	a,a
   5421                     472 00156$:
   5421 DD 77 FC      [19]  473 	ld	-4 (ix),a
   5424 DD 36 F5 00   [19]  474 	ld	-11 (ix),#0x00
   5428 11 00 00      [10]  475 	ld	de,#0x0000
   542B                     476 00115$:
   542B DD 7E F5      [19]  477 	ld	a,-11 (ix)
   542E DD 96 08      [19]  478 	sub	a, 8 (ix)
   5431 D2 F1 54      [10]  479 	jp	NC,00117$
                            480 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   5434 DD 7E 05      [19]  481 	ld	a,5 (ix)
   5437 83            [ 4]  482 	add	a, e
   5438 DD 77 FD      [19]  483 	ld	-3 (ix),a
   543B DD 7E 06      [19]  484 	ld	a,6 (ix)
   543E 8A            [ 4]  485 	adc	a, d
   543F DD 77 FE      [19]  486 	ld	-2 (ix),a
   5442 D5            [11]  487 	push	de
   5443 DD 5E 07      [19]  488 	ld	e,7 (ix)
   5446 DD 66 F5      [19]  489 	ld	h,-11 (ix)
   5449 2E 00         [ 7]  490 	ld	l, #0x00
   544B 55            [ 4]  491 	ld	d, l
   544C 06 08         [ 7]  492 	ld	b, #0x08
   544E                     493 00157$:
   544E 29            [11]  494 	add	hl,hl
   544F 30 01         [12]  495 	jr	NC,00158$
   5451 19            [11]  496 	add	hl,de
   5452                     497 00158$:
   5452 10 FA         [13]  498 	djnz	00157$
   5454 D1            [10]  499 	pop	de
   5455 DD 75 FA      [19]  500 	ld	-6 (ix),l
   5458 DD 74 FB      [19]  501 	ld	-5 (ix),h
   545B DD 36 F6 00   [19]  502 	ld	-10 (ix),#0x00
   545F                     503 00112$:
   545F DD 7E F6      [19]  504 	ld	a,-10 (ix)
   5462 DD 96 07      [19]  505 	sub	a, 7 (ix)
   5465 D2 E6 54      [10]  506 	jp	NC,00116$
                            507 ;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   5468 DD 7E F6      [19]  508 	ld	a,-10 (ix)
   546B DD 77 F7      [19]  509 	ld	-9 (ix),a
   546E DD 36 F8 00   [19]  510 	ld	-8 (ix),#0x00
   5472 DD 7E FA      [19]  511 	ld	a,-6 (ix)
   5475 DD 86 F7      [19]  512 	add	a, -9 (ix)
   5478 6F            [ 4]  513 	ld	l,a
   5479 DD 7E FB      [19]  514 	ld	a,-5 (ix)
   547C DD 8E F8      [19]  515 	adc	a, -8 (ix)
   547F 67            [ 4]  516 	ld	h,a
   5480 DD 4E 09      [19]  517 	ld	c,9 (ix)
   5483 DD 46 0A      [19]  518 	ld	b,10 (ix)
   5486 D5            [11]  519 	push	de
   5487 E5            [11]  520 	push	hl
   5488 C5            [11]  521 	push	bc
   5489 CD 48 74      [17]  522 	call	_cpct_getBit
   548C DD 75 F9      [19]  523 	ld	-7 (ix),l
   548F D1            [10]  524 	pop	de
   5490 DD 7E F9      [19]  525 	ld	a,-7 (ix)
   5493 B7            [ 4]  526 	or	a, a
   5494 28 4A         [12]  527 	jr	Z,00113$
   5496 DD 7E FD      [19]  528 	ld	a,-3 (ix)
   5499 DD 86 F7      [19]  529 	add	a, -9 (ix)
   549C 4F            [ 4]  530 	ld	c,a
   549D DD 7E FE      [19]  531 	ld	a,-2 (ix)
   54A0 DD 8E F8      [19]  532 	adc	a, -8 (ix)
   54A3 47            [ 4]  533 	ld	b,a
   54A4 EE 80         [ 7]  534 	xor	a, #0x80
   54A6 D6 8F         [ 7]  535 	sub	a, #0x8F
   54A8 30 36         [12]  536 	jr	NC,00113$
                            537 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   54AA 21 A6 7B      [10]  538 	ld	hl,#_p_world
   54AD 09            [11]  539 	add	hl,bc
   54AE 4D            [ 4]  540 	ld	c,l
   54AF 44            [ 4]  541 	ld	b,h
                            542 ;src/game/world.c:83: if(tileType == FOREST)
   54B0 DD 7E FF      [19]  543 	ld	a,-1 (ix)
   54B3 B7            [ 4]  544 	or	a, a
   54B4 28 06         [12]  545 	jr	Z,00104$
                            546 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   54B6 DD 7E 04      [19]  547 	ld	a,4 (ix)
   54B9 02            [ 7]  548 	ld	(bc),a
   54BA 18 24         [12]  549 	jr	00113$
   54BC                     550 00104$:
                            551 ;src/game/world.c:85: else if(tileType==DWELLINGS1)
   54BC DD 7E FC      [19]  552 	ld	a,-4 (ix)
   54BF B7            [ 4]  553 	or	a, a
   54C0 28 1E         [12]  554 	jr	Z,00113$
                            555 ;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   54C2 C5            [11]  556 	push	bc
   54C3 D5            [11]  557 	push	de
   54C4 CD AF 75      [17]  558 	call	_cpct_count2VSYNC
   54C7 CD EC 79      [17]  559 	call	_cpct_getRandomUniform_u8_f
   54CA DD 75 F9      [19]  560 	ld	-7 (ix),l
   54CD 3E 03         [ 7]  561 	ld	a,#0x03
   54CF F5            [11]  562 	push	af
   54D0 33            [ 6]  563 	inc	sp
   54D1 DD 7E F9      [19]  564 	ld	a,-7 (ix)
   54D4 F5            [11]  565 	push	af
   54D5 33            [ 6]  566 	inc	sp
   54D6 CD 2D 75      [17]  567 	call	__moduchar
   54D9 F1            [10]  568 	pop	af
   54DA 7D            [ 4]  569 	ld	a,l
   54DB D1            [10]  570 	pop	de
   54DC C1            [10]  571 	pop	bc
   54DD C6 02         [ 7]  572 	add	a, #0x02
   54DF 02            [ 7]  573 	ld	(bc),a
   54E0                     574 00113$:
                            575 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   54E0 DD 34 F6      [23]  576 	inc	-10 (ix)
   54E3 C3 5F 54      [10]  577 	jp	00112$
   54E6                     578 00116$:
                            579 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   54E6 21 50 00      [10]  580 	ld	hl,#0x0050
   54E9 19            [11]  581 	add	hl,de
   54EA EB            [ 4]  582 	ex	de,hl
   54EB DD 34 F5      [23]  583 	inc	-11 (ix)
   54EE C3 2B 54      [10]  584 	jp	00115$
   54F1                     585 00117$:
   54F1 DD F9         [10]  586 	ld	sp, ix
   54F3 DD E1         [14]  587 	pop	ix
   54F5 C9            [10]  588 	ret
                            589 ;src/game/world.c:93: void generateWorld()
                            590 ;	---------------------------------
                            591 ; Function generateWorld
                            592 ; ---------------------------------
   54F6                     593 _generateWorld::
   54F6 DD E5         [15]  594 	push	ix
   54F8 DD 21 00 00   [14]  595 	ld	ix,#0
   54FC DD 39         [15]  596 	add	ix,sp
   54FE 21 E5 FF      [10]  597 	ld	hl,#-27
   5501 39            [11]  598 	add	hl,sp
   5502 F9            [ 6]  599 	ld	sp,hl
                            600 ;src/game/world.c:100: CURSOR_MODE = NONE;
   5503 FD 21 AA 8A   [14]  601 	ld	iy,#_CURSOR_MODE
   5507 FD 36 00 00   [19]  602 	ld	0 (iy),#0x00
                            603 ;src/game/world.c:103: cpct_srand((u32)cpct_count2VSYNC());
   550B CD AF 75      [17]  604 	call	_cpct_count2VSYNC
   550E 11 00 00      [10]  605 	ld	de,#0x0000
   5511 CD 0B 77      [17]  606 	call	_cpct_setSeed_mxor
                            607 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   5514 11 00 00      [10]  608 	ld	de,#0x0000
   5517                     609 00119$:
                            610 ;src/game/world.c:109: p_world[iy] = cpct_rand()%2;
   5517 21 A6 7B      [10]  611 	ld	hl,#_p_world
   551A 19            [11]  612 	add	hl,de
   551B E5            [11]  613 	push	hl
   551C D5            [11]  614 	push	de
   551D CD C8 79      [17]  615 	call	_cpct_getRandom_mxor_u8
   5520 7D            [ 4]  616 	ld	a,l
   5521 D1            [10]  617 	pop	de
   5522 E1            [10]  618 	pop	hl
   5523 E6 01         [ 7]  619 	and	a, #0x01
   5525 77            [ 7]  620 	ld	(hl),a
                            621 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   5526 13            [ 6]  622 	inc	de
   5527 7A            [ 4]  623 	ld	a,d
   5528 EE 80         [ 7]  624 	xor	a, #0x80
   552A D6 8F         [ 7]  625 	sub	a, #0x8F
   552C 38 E9         [12]  626 	jr	C,00119$
                            627 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   552E 21 00 00      [10]  628 	ld	hl,#0x0000
   5531 39            [11]  629 	add	hl,sp
   5532 DD 75 F5      [19]  630 	ld	-11 (ix),l
   5535 DD 74 F6      [19]  631 	ld	-10 (ix),h
   5538 01 00 00      [10]  632 	ld	bc,#0x0000
   553B                     633 00121$:
                            634 ;src/game/world.c:115: iy = cpct_rand16()%(WIDTH*HEIGHT);
   553B C5            [11]  635 	push	bc
   553C CD C8 78      [17]  636 	call	_cpct_getRandom_mxor_u16
   553F 11 00 0F      [10]  637 	ld	de,#0x0F00
   5542 D5            [11]  638 	push	de
   5543 E5            [11]  639 	push	hl
   5544 CD 39 75      [17]  640 	call	__moduint
   5547 F1            [10]  641 	pop	af
   5548 F1            [10]  642 	pop	af
   5549 C1            [10]  643 	pop	bc
   554A DD 75 FB      [19]  644 	ld	-5 (ix),l
   554D DD 74 FC      [19]  645 	ld	-4 (ix),h
                            646 ;src/game/world.c:117: switch(cpct_rand()%4)
   5550 C5            [11]  647 	push	bc
   5551 CD C8 79      [17]  648 	call	_cpct_getRandom_mxor_u8
   5554 7D            [ 4]  649 	ld	a,l
   5555 C1            [10]  650 	pop	bc
   5556 E6 03         [ 7]  651 	and	a, #0x03
   5558 DD 77 FD      [19]  652 	ld	-3 (ix),a
   555B 3E 03         [ 7]  653 	ld	a,#0x03
   555D DD 96 FD      [19]  654 	sub	a, -3 (ix)
   5560 DA C4 56      [10]  655 	jp	C,00106$
                            656 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   5563 E5            [11]  657 	push	hl
   5564 DD 6E F5      [19]  658 	ld	l,-11 (ix)
   5567 DD 66 F6      [19]  659 	ld	h,-10 (ix)
   556A 23            [ 6]  660 	inc	hl
   556B E5            [11]  661 	push	hl
   556C FD E1         [14]  662 	pop	iy
   556E E1            [10]  663 	pop	hl
                            664 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   556F DD 5E F5      [19]  665 	ld	e,-11 (ix)
   5572 DD 56 F6      [19]  666 	ld	d,-10 (ix)
   5575 13            [ 6]  667 	inc	de
   5576 13            [ 6]  668 	inc	de
                            669 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   5577 DD 7E F5      [19]  670 	ld	a,-11 (ix)
   557A C6 03         [ 7]  671 	add	a, #0x03
   557C DD 77 F3      [19]  672 	ld	-13 (ix),a
   557F DD 7E F6      [19]  673 	ld	a,-10 (ix)
   5582 CE 00         [ 7]  674 	adc	a, #0x00
   5584 DD 77 F4      [19]  675 	ld	-12 (ix),a
                            676 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   5587 DD 7E F5      [19]  677 	ld	a,-11 (ix)
   558A C6 04         [ 7]  678 	add	a, #0x04
   558C DD 77 F9      [19]  679 	ld	-7 (ix),a
   558F DD 7E F6      [19]  680 	ld	a,-10 (ix)
   5592 CE 00         [ 7]  681 	adc	a, #0x00
   5594 DD 77 FA      [19]  682 	ld	-6 (ix),a
                            683 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   5597 DD 7E F5      [19]  684 	ld	a,-11 (ix)
   559A C6 05         [ 7]  685 	add	a, #0x05
   559C DD 77 F7      [19]  686 	ld	-9 (ix),a
   559F DD 7E F6      [19]  687 	ld	a,-10 (ix)
   55A2 CE 00         [ 7]  688 	adc	a, #0x00
   55A4 DD 77 F8      [19]  689 	ld	-8 (ix),a
                            690 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   55A7 DD 7E F5      [19]  691 	ld	a,-11 (ix)
   55AA C6 06         [ 7]  692 	add	a, #0x06
   55AC DD 77 F1      [19]  693 	ld	-15 (ix),a
   55AF DD 7E F6      [19]  694 	ld	a,-10 (ix)
   55B2 CE 00         [ 7]  695 	adc	a, #0x00
   55B4 DD 77 F2      [19]  696 	ld	-14 (ix),a
                            697 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   55B7 DD 7E F5      [19]  698 	ld	a,-11 (ix)
   55BA C6 07         [ 7]  699 	add	a, #0x07
   55BC DD 77 FE      [19]  700 	ld	-2 (ix),a
   55BF DD 7E F6      [19]  701 	ld	a,-10 (ix)
   55C2 CE 00         [ 7]  702 	adc	a, #0x00
   55C4 DD 77 FF      [19]  703 	ld	-1 (ix),a
                            704 ;src/game/world.c:117: switch(cpct_rand()%4)
   55C7 D5            [11]  705 	push	de
   55C8 DD 5E FD      [19]  706 	ld	e,-3 (ix)
   55CB 16 00         [ 7]  707 	ld	d,#0x00
   55CD 21 D5 55      [10]  708 	ld	hl,#00195$
   55D0 19            [11]  709 	add	hl,de
   55D1 19            [11]  710 	add	hl,de
   55D2 19            [11]  711 	add	hl,de
   55D3 D1            [10]  712 	pop	de
   55D4 E9            [ 4]  713 	jp	(hl)
   55D5                     714 00195$:
   55D5 C3 E1 55      [10]  715 	jp	00102$
   55D8 C3 1B 56      [10]  716 	jp	00103$
   55DB C3 54 56      [10]  717 	jp	00104$
   55DE C3 8D 56      [10]  718 	jp	00105$
                            719 ;src/game/world.c:119: case 0:
   55E1                     720 00102$:
                            721 ;src/game/world.c:120: p_forest[0] = 0b10000100;
   55E1 DD 6E F5      [19]  722 	ld	l,-11 (ix)
   55E4 DD 66 F6      [19]  723 	ld	h,-10 (ix)
   55E7 36 84         [10]  724 	ld	(hl),#0x84
                            725 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   55E9 FD 36 00 C7   [19]  726 	ld	0 (iy), #0xC7
                            727 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   55ED 3E DE         [ 7]  728 	ld	a,#0xDE
   55EF 12            [ 7]  729 	ld	(de),a
                            730 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   55F0 DD 6E F3      [19]  731 	ld	l,-13 (ix)
   55F3 DD 66 F4      [19]  732 	ld	h,-12 (ix)
   55F6 36 7E         [10]  733 	ld	(hl),#0x7E
                            734 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   55F8 DD 6E F9      [19]  735 	ld	l,-7 (ix)
   55FB DD 66 FA      [19]  736 	ld	h,-6 (ix)
   55FE 36 FE         [10]  737 	ld	(hl),#0xFE
                            738 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   5600 DD 6E F7      [19]  739 	ld	l,-9 (ix)
   5603 DD 66 F8      [19]  740 	ld	h,-8 (ix)
   5606 36 7F         [10]  741 	ld	(hl),#0x7F
                            742 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   5608 DD 6E F1      [19]  743 	ld	l,-15 (ix)
   560B DD 66 F2      [19]  744 	ld	h,-14 (ix)
   560E 36 EF         [10]  745 	ld	(hl),#0xEF
                            746 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   5610 DD 6E FE      [19]  747 	ld	l,-2 (ix)
   5613 DD 66 FF      [19]  748 	ld	h,-1 (ix)
   5616 36 CF         [10]  749 	ld	(hl),#0xCF
                            750 ;src/game/world.c:128: break;
   5618 C3 C4 56      [10]  751 	jp	00106$
                            752 ;src/game/world.c:129: case 1:
   561B                     753 00103$:
                            754 ;src/game/world.c:130: p_forest[0] = 0b00001100;
   561B DD 6E F5      [19]  755 	ld	l,-11 (ix)
   561E DD 66 F6      [19]  756 	ld	h,-10 (ix)
   5621 36 0C         [10]  757 	ld	(hl),#0x0C
                            758 ;src/game/world.c:131: p_forest[1] = 0b11111000;
   5623 FD 36 00 F8   [19]  759 	ld	0 (iy), #0xF8
                            760 ;src/game/world.c:132: p_forest[2] = 0b00111111;
   5627 3E 3F         [ 7]  761 	ld	a,#0x3F
   5629 12            [ 7]  762 	ld	(de),a
                            763 ;src/game/world.c:133: p_forest[3] = 0b01111110;
   562A DD 6E F3      [19]  764 	ld	l,-13 (ix)
   562D DD 66 F4      [19]  765 	ld	h,-12 (ix)
   5630 36 7E         [10]  766 	ld	(hl),#0x7E
                            767 ;src/game/world.c:134: p_forest[4] = 0b11111110; 
   5632 DD 6E F9      [19]  768 	ld	l,-7 (ix)
   5635 DD 66 FA      [19]  769 	ld	h,-6 (ix)
   5638 36 FE         [10]  770 	ld	(hl),#0xFE
                            771 ;src/game/world.c:135: p_forest[5] = 0b01011111;
   563A DD 6E F7      [19]  772 	ld	l,-9 (ix)
   563D DD 66 F8      [19]  773 	ld	h,-8 (ix)
   5640 36 5F         [10]  774 	ld	(hl),#0x5F
                            775 ;src/game/world.c:136: p_forest[6] = 0b11001111;
   5642 DD 6E F1      [19]  776 	ld	l,-15 (ix)
   5645 DD 66 F2      [19]  777 	ld	h,-14 (ix)
   5648 36 CF         [10]  778 	ld	(hl),#0xCF
                            779 ;src/game/world.c:137: p_forest[7] = 0b10001100;
   564A DD 6E FE      [19]  780 	ld	l,-2 (ix)
   564D DD 66 FF      [19]  781 	ld	h,-1 (ix)
   5650 36 8C         [10]  782 	ld	(hl),#0x8C
                            783 ;src/game/world.c:138: break;
   5652 18 70         [12]  784 	jr	00106$
                            785 ;src/game/world.c:139: case 2:
   5654                     786 00104$:
                            787 ;src/game/world.c:140: p_forest[0] = 0b00110000;
   5654 DD 6E F5      [19]  788 	ld	l,-11 (ix)
   5657 DD 66 F6      [19]  789 	ld	h,-10 (ix)
   565A 36 30         [10]  790 	ld	(hl),#0x30
                            791 ;src/game/world.c:141: p_forest[1] = 0b11110100;
   565C FD 36 00 F4   [19]  792 	ld	0 (iy), #0xF4
                            793 ;src/game/world.c:142: p_forest[2] = 0b11111111;
   5660 3E FF         [ 7]  794 	ld	a,#0xFF
   5662 12            [ 7]  795 	ld	(de),a
                            796 ;src/game/world.c:143: p_forest[3] = 0b11111111;
   5663 DD 6E F3      [19]  797 	ld	l,-13 (ix)
   5666 DD 66 F4      [19]  798 	ld	h,-12 (ix)
   5669 36 FF         [10]  799 	ld	(hl),#0xFF
                            800 ;src/game/world.c:144: p_forest[4] = 0b01111100;
   566B DD 6E F9      [19]  801 	ld	l,-7 (ix)
   566E DD 66 FA      [19]  802 	ld	h,-6 (ix)
   5671 36 7C         [10]  803 	ld	(hl),#0x7C
                            804 ;src/game/world.c:145: p_forest[5] = 0b01111110;
   5673 DD 6E F7      [19]  805 	ld	l,-9 (ix)
   5676 DD 66 F8      [19]  806 	ld	h,-8 (ix)
   5679 36 7E         [10]  807 	ld	(hl),#0x7E
                            808 ;src/game/world.c:146: p_forest[6] = 0b00111110;
   567B DD 6E F1      [19]  809 	ld	l,-15 (ix)
   567E DD 66 F2      [19]  810 	ld	h,-14 (ix)
   5681 36 3E         [10]  811 	ld	(hl),#0x3E
                            812 ;src/game/world.c:147: p_forest[7] = 0b00011000;
   5683 DD 6E FE      [19]  813 	ld	l,-2 (ix)
   5686 DD 66 FF      [19]  814 	ld	h,-1 (ix)
   5689 36 18         [10]  815 	ld	(hl),#0x18
                            816 ;src/game/world.c:148: break;
   568B 18 37         [12]  817 	jr	00106$
                            818 ;src/game/world.c:149: case 3:
   568D                     819 00105$:
                            820 ;src/game/world.c:150: p_forest[0] = 0b11000000; 
   568D DD 6E F5      [19]  821 	ld	l,-11 (ix)
   5690 DD 66 F6      [19]  822 	ld	h,-10 (ix)
   5693 36 C0         [10]  823 	ld	(hl),#0xC0
                            824 ;src/game/world.c:151: p_forest[1] = 0b11100111;
   5695 FD 36 00 E7   [19]  825 	ld	0 (iy), #0xE7
                            826 ;src/game/world.c:152: p_forest[2] = 0b01111110;
   5699 3E 7E         [ 7]  827 	ld	a,#0x7E
   569B 12            [ 7]  828 	ld	(de),a
                            829 ;src/game/world.c:153: p_forest[3] = 0b01111110;
   569C DD 6E F3      [19]  830 	ld	l,-13 (ix)
   569F DD 66 F4      [19]  831 	ld	h,-12 (ix)
   56A2 36 7E         [10]  832 	ld	(hl),#0x7E
                            833 ;src/game/world.c:154: p_forest[4] = 0b11111110;
   56A4 DD 6E F9      [19]  834 	ld	l,-7 (ix)
   56A7 DD 66 FA      [19]  835 	ld	h,-6 (ix)
   56AA 36 FE         [10]  836 	ld	(hl),#0xFE
                            837 ;src/game/world.c:155: p_forest[5] = 0b11111100;
   56AC DD 6E F7      [19]  838 	ld	l,-9 (ix)
   56AF DD 66 F8      [19]  839 	ld	h,-8 (ix)
   56B2 36 FC         [10]  840 	ld	(hl),#0xFC
                            841 ;src/game/world.c:156: p_forest[6] = 0b01111000;
   56B4 DD 6E F1      [19]  842 	ld	l,-15 (ix)
   56B7 DD 66 F2      [19]  843 	ld	h,-14 (ix)
   56BA 36 78         [10]  844 	ld	(hl),#0x78
                            845 ;src/game/world.c:157: p_forest[7] = 0b00110000;
   56BC DD 6E FE      [19]  846 	ld	l,-2 (ix)
   56BF DD 66 FF      [19]  847 	ld	h,-1 (ix)
   56C2 36 30         [10]  848 	ld	(hl),#0x30
                            849 ;src/game/world.c:159: }
   56C4                     850 00106$:
                            851 ;src/game/world.c:160: patternTile(FOREST, iy, 8, 8, p_forest);
   56C4 DD 6E F5      [19]  852 	ld	l,-11 (ix)
   56C7 DD 66 F6      [19]  853 	ld	h,-10 (ix)
   56CA C5            [11]  854 	push	bc
   56CB E5            [11]  855 	push	hl
   56CC 21 08 08      [10]  856 	ld	hl,#0x0808
   56CF E5            [11]  857 	push	hl
   56D0 DD 6E FB      [19]  858 	ld	l,-5 (ix)
   56D3 DD 66 FC      [19]  859 	ld	h,-4 (ix)
   56D6 E5            [11]  860 	push	hl
   56D7 3E 08         [ 7]  861 	ld	a,#0x08
   56D9 F5            [11]  862 	push	af
   56DA 33            [ 6]  863 	inc	sp
   56DB CD F9 53      [17]  864 	call	_patternTile
   56DE 21 07 00      [10]  865 	ld	hl,#7
   56E1 39            [11]  866 	add	hl,sp
   56E2 F9            [ 6]  867 	ld	sp,hl
   56E3 C1            [10]  868 	pop	bc
                            869 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   56E4 03            [ 6]  870 	inc	bc
   56E5 79            [ 4]  871 	ld	a,c
   56E6 D6 32         [ 7]  872 	sub	a, #0x32
   56E8 78            [ 4]  873 	ld	a,b
   56E9 17            [ 4]  874 	rla
   56EA 3F            [ 4]  875 	ccf
   56EB 1F            [ 4]  876 	rra
   56EC DE 80         [ 7]  877 	sbc	a, #0x80
   56EE DA 3B 55      [10]  878 	jp	C,00121$
                            879 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   56F1 11 3C 00      [10]  880 	ld	de,#0x003C
   56F4                     881 00125$:
                            882 ;src/game/world.c:168: iy = cpct_rand16()%(WIDTH*HEIGHT);
   56F4 D5            [11]  883 	push	de
   56F5 CD C8 78      [17]  884 	call	_cpct_getRandom_mxor_u16
   56F8 D1            [10]  885 	pop	de
   56F9 D5            [11]  886 	push	de
   56FA 01 00 0F      [10]  887 	ld	bc,#0x0F00
   56FD C5            [11]  888 	push	bc
   56FE E5            [11]  889 	push	hl
   56FF CD 39 75      [17]  890 	call	__moduint
   5702 F1            [10]  891 	pop	af
   5703 F1            [10]  892 	pop	af
   5704 D1            [10]  893 	pop	de
                            894 ;src/game/world.c:169: p_world[iy] = cpct_rand()%2+5;
   5705 01 A6 7B      [10]  895 	ld	bc,#_p_world
   5708 09            [11]  896 	add	hl,bc
   5709 E5            [11]  897 	push	hl
   570A D5            [11]  898 	push	de
   570B CD C8 79      [17]  899 	call	_cpct_getRandom_mxor_u8
   570E 7D            [ 4]  900 	ld	a,l
   570F D1            [10]  901 	pop	de
   5710 E1            [10]  902 	pop	hl
   5711 E6 01         [ 7]  903 	and	a, #0x01
   5713 C6 05         [ 7]  904 	add	a, #0x05
   5715 77            [ 7]  905 	ld	(hl),a
   5716 1B            [ 6]  906 	dec	de
                            907 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   5717 7A            [ 4]  908 	ld	a,d
   5718 B3            [ 4]  909 	or	a,e
   5719 20 D9         [12]  910 	jr	NZ,00125$
                            911 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   571B 11 14 00      [10]  912 	ld	de,#0x0014
   571E                     913 00128$:
                            914 ;src/game/world.c:176: iy = cpct_rand16()%(WIDTH*HEIGHT);
   571E D5            [11]  915 	push	de
   571F CD C8 78      [17]  916 	call	_cpct_getRandom_mxor_u16
   5722 D1            [10]  917 	pop	de
   5723 D5            [11]  918 	push	de
   5724 01 00 0F      [10]  919 	ld	bc,#0x0F00
   5727 C5            [11]  920 	push	bc
   5728 E5            [11]  921 	push	hl
   5729 CD 39 75      [17]  922 	call	__moduint
   572C F1            [10]  923 	pop	af
   572D F1            [10]  924 	pop	af
   572E D1            [10]  925 	pop	de
                            926 ;src/game/world.c:177: p_world[iy] = cpct_rand()%3+2;
   572F 3E A6         [ 7]  927 	ld	a,#<(_p_world)
   5731 85            [ 4]  928 	add	a, l
   5732 DD 77 FE      [19]  929 	ld	-2 (ix),a
   5735 3E 7B         [ 7]  930 	ld	a,#>(_p_world)
   5737 8C            [ 4]  931 	adc	a, h
   5738 DD 77 FF      [19]  932 	ld	-1 (ix),a
   573B D5            [11]  933 	push	de
   573C CD C8 79      [17]  934 	call	_cpct_getRandom_mxor_u8
   573F 45            [ 4]  935 	ld	b,l
   5740 D1            [10]  936 	pop	de
   5741 D5            [11]  937 	push	de
   5742 3E 03         [ 7]  938 	ld	a,#0x03
   5744 F5            [11]  939 	push	af
   5745 33            [ 6]  940 	inc	sp
   5746 C5            [11]  941 	push	bc
   5747 33            [ 6]  942 	inc	sp
   5748 CD 2D 75      [17]  943 	call	__moduchar
   574B F1            [10]  944 	pop	af
   574C 7D            [ 4]  945 	ld	a,l
   574D D1            [10]  946 	pop	de
   574E C6 02         [ 7]  947 	add	a, #0x02
   5750 DD 6E FE      [19]  948 	ld	l,-2 (ix)
   5753 DD 66 FF      [19]  949 	ld	h,-1 (ix)
   5756 77            [ 7]  950 	ld	(hl),a
   5757 1B            [ 6]  951 	dec	de
                            952 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   5758 7A            [ 4]  953 	ld	a,d
   5759 B3            [ 4]  954 	or	a,e
   575A 20 C2         [12]  955 	jr	NZ,00128$
                            956 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   575C 21 0A 00      [10]  957 	ld	hl,#0x000A
   575F 39            [11]  958 	add	hl,sp
   5760 4D            [ 4]  959 	ld	c,l
   5761 44            [ 4]  960 	ld	b,h
   5762 DD 36 ED 00   [19]  961 	ld	-19 (ix),#0x00
   5766 DD 36 EE 00   [19]  962 	ld	-18 (ix),#0x00
   576A                     963 00129$:
                            964 ;src/game/world.c:182: iy = cpct_rand16()%(WIDTH*HEIGHT);
   576A C5            [11]  965 	push	bc
   576B CD C8 78      [17]  966 	call	_cpct_getRandom_mxor_u16
   576E 11 00 0F      [10]  967 	ld	de,#0x0F00
   5771 D5            [11]  968 	push	de
   5772 E5            [11]  969 	push	hl
   5773 CD 39 75      [17]  970 	call	__moduint
   5776 F1            [10]  971 	pop	af
   5777 F1            [10]  972 	pop	af
   5778 C1            [10]  973 	pop	bc
   5779 DD 75 FE      [19]  974 	ld	-2 (ix),l
   577C DD 74 FF      [19]  975 	ld	-1 (ix),h
                            976 ;src/game/world.c:184: switch(cpct_rand()%6)
   577F C5            [11]  977 	push	bc
   5780 CD C8 79      [17]  978 	call	_cpct_getRandom_mxor_u8
   5783 55            [ 4]  979 	ld	d,l
   5784 3E 06         [ 7]  980 	ld	a,#0x06
   5786 F5            [11]  981 	push	af
   5787 33            [ 6]  982 	inc	sp
   5788 D5            [11]  983 	push	de
   5789 33            [ 6]  984 	inc	sp
   578A CD 2D 75      [17]  985 	call	__moduchar
   578D F1            [10]  986 	pop	af
   578E 5D            [ 4]  987 	ld	e,l
   578F C1            [10]  988 	pop	bc
   5790 3E 05         [ 7]  989 	ld	a,#0x05
   5792 93            [ 4]  990 	sub	a, e
   5793 38 6A         [12]  991 	jr	C,00116$
                            992 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   5795 21 01 00      [10]  993 	ld	hl,#0x0001
   5798 09            [11]  994 	add	hl,bc
   5799 DD 75 F1      [19]  995 	ld	-15 (ix),l
   579C DD 74 F2      [19]  996 	ld	-14 (ix),h
                            997 ;src/game/world.c:184: switch(cpct_rand()%6)
   579F 16 00         [ 7]  998 	ld	d,#0x00
   57A1 21 A7 57      [10]  999 	ld	hl,#00196$
   57A4 19            [11] 1000 	add	hl,de
   57A5 19            [11] 1001 	add	hl,de
                           1002 ;src/game/world.c:186: case 0:
   57A6 E9            [ 4] 1003 	jp	(hl)
   57A7                    1004 00196$:
   57A7 18 0A         [12] 1005 	jr	00110$
   57A9 18 15         [12] 1006 	jr	00111$
   57AB 18 20         [12] 1007 	jr	00112$
   57AD 18 2B         [12] 1008 	jr	00113$
   57AF 18 36         [12] 1009 	jr	00114$
   57B1 18 41         [12] 1010 	jr	00115$
   57B3                    1011 00110$:
                           1012 ;src/game/world.c:187: p_cities[0] = 0b01110010; // 01001110;
   57B3 3E 72         [ 7] 1013 	ld	a,#0x72
   57B5 02            [ 7] 1014 	ld	(bc),a
                           1015 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   57B6 DD 6E F1      [19] 1016 	ld	l,-15 (ix)
   57B9 DD 66 F2      [19] 1017 	ld	h,-14 (ix)
   57BC 36 46         [10] 1018 	ld	(hl),#0x46
                           1019 ;src/game/world.c:189: break;
   57BE 18 3F         [12] 1020 	jr	00116$
                           1021 ;src/game/world.c:191: case 1:
   57C0                    1022 00111$:
                           1023 ;src/game/world.c:192: p_cities[0] = 0b01100000; // 00000110;
   57C0 3E 60         [ 7] 1024 	ld	a,#0x60
   57C2 02            [ 7] 1025 	ld	(bc),a
                           1026 ;src/game/world.c:193: p_cities[1] = 0b00000110; // 01100000;
   57C3 DD 6E F1      [19] 1027 	ld	l,-15 (ix)
   57C6 DD 66 F2      [19] 1028 	ld	h,-14 (ix)
   57C9 36 06         [10] 1029 	ld	(hl),#0x06
                           1030 ;src/game/world.c:194: break;
   57CB 18 32         [12] 1031 	jr	00116$
                           1032 ;src/game/world.c:196: case 2:
   57CD                    1033 00112$:
                           1034 ;src/game/world.c:197: p_cities[0] = 0b00010000; // 00001000;
   57CD 3E 10         [ 7] 1035 	ld	a,#0x10
   57CF 02            [ 7] 1036 	ld	(bc),a
                           1037 ;src/game/world.c:198: p_cities[1] = 0b00000110; // 01100000;
   57D0 DD 6E F1      [19] 1038 	ld	l,-15 (ix)
   57D3 DD 66 F2      [19] 1039 	ld	h,-14 (ix)
   57D6 36 06         [10] 1040 	ld	(hl),#0x06
                           1041 ;src/game/world.c:199: break;
   57D8 18 25         [12] 1042 	jr	00116$
                           1043 ;src/game/world.c:201: case 3:
   57DA                    1044 00113$:
                           1045 ;src/game/world.c:202: p_cities[0] = 0b11000000; // 00000011;
   57DA 3E C0         [ 7] 1046 	ld	a,#0xC0
   57DC 02            [ 7] 1047 	ld	(bc),a
                           1048 ;src/game/world.c:203: p_cities[1] = 0b00110001; // 10001100;
   57DD DD 6E F1      [19] 1049 	ld	l,-15 (ix)
   57E0 DD 66 F2      [19] 1050 	ld	h,-14 (ix)
   57E3 36 31         [10] 1051 	ld	(hl),#0x31
                           1052 ;src/game/world.c:204: break;
   57E5 18 18         [12] 1053 	jr	00116$
                           1054 ;src/game/world.c:206: case 4:
   57E7                    1055 00114$:
                           1056 ;src/game/world.c:207: p_cities[0] = 0b11000100; // 00100011;
   57E7 3E C4         [ 7] 1057 	ld	a,#0xC4
   57E9 02            [ 7] 1058 	ld	(bc),a
                           1059 ;src/game/world.c:208: p_cities[1] = 0b00001110; // 01110000;
   57EA DD 6E F1      [19] 1060 	ld	l,-15 (ix)
   57ED DD 66 F2      [19] 1061 	ld	h,-14 (ix)
   57F0 36 0E         [10] 1062 	ld	(hl),#0x0E
                           1063 ;src/game/world.c:209: break;
   57F2 18 0B         [12] 1064 	jr	00116$
                           1065 ;src/game/world.c:211: case 5:
   57F4                    1066 00115$:
                           1067 ;src/game/world.c:212: p_cities[0] = 0b01000000; // 00000010;
   57F4 3E 40         [ 7] 1068 	ld	a,#0x40
   57F6 02            [ 7] 1069 	ld	(bc),a
                           1070 ;src/game/world.c:213: p_cities[1] = 0b01001110; // 01110010;
   57F7 DD 6E F1      [19] 1071 	ld	l,-15 (ix)
   57FA DD 66 F2      [19] 1072 	ld	h,-14 (ix)
   57FD 36 4E         [10] 1073 	ld	(hl),#0x4E
                           1074 ;src/game/world.c:215: }
   57FF                    1075 00116$:
                           1076 ;src/game/world.c:217: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   57FF 69            [ 4] 1077 	ld	l, c
   5800 60            [ 4] 1078 	ld	h, b
   5801 C5            [11] 1079 	push	bc
   5802 E5            [11] 1080 	push	hl
   5803 21 04 04      [10] 1081 	ld	hl,#0x0404
   5806 E5            [11] 1082 	push	hl
   5807 DD 6E FE      [19] 1083 	ld	l,-2 (ix)
   580A DD 66 FF      [19] 1084 	ld	h,-1 (ix)
   580D E5            [11] 1085 	push	hl
   580E 3E 02         [ 7] 1086 	ld	a,#0x02
   5810 F5            [11] 1087 	push	af
   5811 33            [ 6] 1088 	inc	sp
   5812 CD F9 53      [17] 1089 	call	_patternTile
   5815 21 07 00      [10] 1090 	ld	hl,#7
   5818 39            [11] 1091 	add	hl,sp
   5819 F9            [ 6] 1092 	ld	sp,hl
   581A C1            [10] 1093 	pop	bc
                           1094 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   581B DD 34 ED      [23] 1095 	inc	-19 (ix)
   581E 20 03         [12] 1096 	jr	NZ,00197$
   5820 DD 34 EE      [23] 1097 	inc	-18 (ix)
   5823                    1098 00197$:
   5823 DD 7E ED      [19] 1099 	ld	a,-19 (ix)
   5826 D6 14         [ 7] 1100 	sub	a, #0x14
   5828 DD 7E EE      [19] 1101 	ld	a,-18 (ix)
   582B 17            [ 4] 1102 	rla
   582C 3F            [ 4] 1103 	ccf
   582D 1F            [ 4] 1104 	rra
   582E DE 80         [ 7] 1105 	sbc	a, #0x80
   5830 DA 6A 57      [10] 1106 	jp	C,00129$
                           1107 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   5833 11 13 00      [10] 1108 	ld	de,#0x0013
   5836                    1109 00133$:
                           1110 ;src/game/world.c:224: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5836 D5            [11] 1111 	push	de
   5837 CD C8 78      [17] 1112 	call	_cpct_getRandom_mxor_u16
   583A D1            [10] 1113 	pop	de
   583B D5            [11] 1114 	push	de
   583C 01 00 0F      [10] 1115 	ld	bc,#0x0F00
   583F C5            [11] 1116 	push	bc
   5840 E5            [11] 1117 	push	hl
   5841 CD 39 75      [17] 1118 	call	__moduint
   5844 F1            [10] 1119 	pop	af
   5845 F1            [10] 1120 	pop	af
   5846 D1            [10] 1121 	pop	de
                           1122 ;src/game/world.c:225: p_world[iy] = LIVESTOCK;
   5847 01 A6 7B      [10] 1123 	ld	bc,#_p_world
   584A 09            [11] 1124 	add	hl,bc
   584B 36 09         [10] 1125 	ld	(hl),#0x09
   584D 1B            [ 6] 1126 	dec	de
                           1127 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   584E 7A            [ 4] 1128 	ld	a,d
   584F B3            [ 4] 1129 	or	a,e
   5850 20 E4         [12] 1130 	jr	NZ,00133$
   5852 DD F9         [10] 1131 	ld	sp, ix
   5854 DD E1         [14] 1132 	pop	ix
   5856 C9            [10] 1133 	ret
                           1134 ;src/game/world.c:229: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1135 ;	---------------------------------
                           1136 ; Function drawTile
                           1137 ; ---------------------------------
   5857                    1138 _drawTile::
   5857 DD E5         [15] 1139 	push	ix
   5859 DD 21 00 00   [14] 1140 	ld	ix,#0
   585D DD 39         [15] 1141 	add	ix,sp
                           1142 ;src/game/world.c:232: int adress = (y_+iy)*WIDTH+x_+ix;
   585F DD 6E 05      [19] 1143 	ld	l,5 (ix)
   5862 26 00         [ 7] 1144 	ld	h,#0x00
   5864 DD 5E 07      [19] 1145 	ld	e,7 (ix)
   5867 16 00         [ 7] 1146 	ld	d,#0x00
   5869 19            [11] 1147 	add	hl,de
   586A 4D            [ 4] 1148 	ld	c, l
   586B 44            [ 4] 1149 	ld	b, h
   586C 29            [11] 1150 	add	hl, hl
   586D 29            [11] 1151 	add	hl, hl
   586E 09            [11] 1152 	add	hl, bc
   586F 29            [11] 1153 	add	hl, hl
   5870 29            [11] 1154 	add	hl, hl
   5871 29            [11] 1155 	add	hl, hl
   5872 29            [11] 1156 	add	hl, hl
   5873 DD 5E 04      [19] 1157 	ld	e,4 (ix)
   5876 16 00         [ 7] 1158 	ld	d,#0x00
   5878 19            [11] 1159 	add	hl,de
   5879 DD 5E 06      [19] 1160 	ld	e,6 (ix)
   587C 16 00         [ 7] 1161 	ld	d,#0x00
   587E 19            [11] 1162 	add	hl,de
   587F 5D            [ 4] 1163 	ld	e, l
   5880 54            [ 4] 1164 	ld	d, h
                           1165 ;src/game/world.c:234: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   5881 DD 7E 07      [19] 1166 	ld	a,7 (ix)
   5884 07            [ 4] 1167 	rlca
   5885 07            [ 4] 1168 	rlca
   5886 07            [ 4] 1169 	rlca
   5887 07            [ 4] 1170 	rlca
   5888 E6 F0         [ 7] 1171 	and	a,#0xF0
   588A 67            [ 4] 1172 	ld	h,a
   588B DD 7E 06      [19] 1173 	ld	a,6 (ix)
   588E 87            [ 4] 1174 	add	a, a
   588F 87            [ 4] 1175 	add	a, a
   5890 D5            [11] 1176 	push	de
   5891 E5            [11] 1177 	push	hl
   5892 33            [ 6] 1178 	inc	sp
   5893 F5            [11] 1179 	push	af
   5894 33            [ 6] 1180 	inc	sp
   5895 21 00 C0      [10] 1181 	ld	hl,#0xC000
   5898 E5            [11] 1182 	push	hl
   5899 CD B6 7A      [17] 1183 	call	_cpct_getScreenPtr
   589C D1            [10] 1184 	pop	de
   589D 4D            [ 4] 1185 	ld	c, l
   589E 44            [ 4] 1186 	ld	b, h
                           1187 ;src/game/world.c:236: switch(p_world[adress])
   589F 21 A6 7B      [10] 1188 	ld	hl,#_p_world
   58A2 19            [11] 1189 	add	hl,de
   58A3 5E            [ 7] 1190 	ld	e,(hl)
   58A4 3E 19         [ 7] 1191 	ld	a,#0x19
   58A6 93            [ 4] 1192 	sub	a, e
   58A7 DA 7C 5A      [10] 1193 	jp	C,00128$
   58AA 16 00         [ 7] 1194 	ld	d,#0x00
   58AC 21 B3 58      [10] 1195 	ld	hl,#00134$
   58AF 19            [11] 1196 	add	hl,de
   58B0 19            [11] 1197 	add	hl,de
   58B1 19            [11] 1198 	add	hl,de
   58B2 E9            [ 4] 1199 	jp	(hl)
   58B3                    1200 00134$:
   58B3 C3 01 59      [10] 1201 	jp	00101$
   58B6 C3 10 59      [10] 1202 	jp	00102$
   58B9 C3 1F 59      [10] 1203 	jp	00103$
   58BC C3 2E 59      [10] 1204 	jp	00104$
   58BF C3 3D 59      [10] 1205 	jp	00105$
   58C2 C3 4C 59      [10] 1206 	jp	00106$
   58C5 C3 5B 59      [10] 1207 	jp	00107$
   58C8 C3 6A 59      [10] 1208 	jp	00108$
   58CB C3 79 59      [10] 1209 	jp	00109$
   58CE C3 88 59      [10] 1210 	jp	00110$
   58D1 C3 97 59      [10] 1211 	jp	00111$
   58D4 C3 A6 59      [10] 1212 	jp	00112$
   58D7 C3 B5 59      [10] 1213 	jp	00113$
   58DA C3 C4 59      [10] 1214 	jp	00114$
   58DD C3 D3 59      [10] 1215 	jp	00115$
   58E0 C3 E2 59      [10] 1216 	jp	00116$
   58E3 C3 F1 59      [10] 1217 	jp	00117$
   58E6 C3 00 5A      [10] 1218 	jp	00118$
   58E9 C3 0E 5A      [10] 1219 	jp	00119$
   58EC C3 1C 5A      [10] 1220 	jp	00120$
   58EF C3 2A 5A      [10] 1221 	jp	00121$
   58F2 C3 38 5A      [10] 1222 	jp	00122$
   58F5 C3 46 5A      [10] 1223 	jp	00123$
   58F8 C3 54 5A      [10] 1224 	jp	00124$
   58FB C3 62 5A      [10] 1225 	jp	00125$
   58FE C3 70 5A      [10] 1226 	jp	00126$
                           1227 ;src/game/world.c:238: case GRASS1:
   5901                    1228 00101$:
                           1229 ;src/game/world.c:239: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   5901 11 2F 62      [10] 1230 	ld	de,#_grass1
   5904 21 04 10      [10] 1231 	ld	hl,#0x1004
   5907 E5            [11] 1232 	push	hl
   5908 C5            [11] 1233 	push	bc
   5909 D5            [11] 1234 	push	de
   590A CD 88 74      [17] 1235 	call	_cpct_drawSprite
                           1236 ;src/game/world.c:240: break;
   590D C3 7C 5A      [10] 1237 	jp	00128$
                           1238 ;src/game/world.c:241: case GRASS2:
   5910                    1239 00102$:
                           1240 ;src/game/world.c:242: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   5910 11 6F 62      [10] 1241 	ld	de,#_grass2
   5913 21 04 10      [10] 1242 	ld	hl,#0x1004
   5916 E5            [11] 1243 	push	hl
   5917 C5            [11] 1244 	push	bc
   5918 D5            [11] 1245 	push	de
   5919 CD 88 74      [17] 1246 	call	_cpct_drawSprite
                           1247 ;src/game/world.c:243: break;
   591C C3 7C 5A      [10] 1248 	jp	00128$
                           1249 ;src/game/world.c:244: case DWELLINGS1:
   591F                    1250 00103$:
                           1251 ;src/game/world.c:245: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   591F 11 EF 62      [10] 1252 	ld	de,#_dwellings1
   5922 21 04 10      [10] 1253 	ld	hl,#0x1004
   5925 E5            [11] 1254 	push	hl
   5926 C5            [11] 1255 	push	bc
   5927 D5            [11] 1256 	push	de
   5928 CD 88 74      [17] 1257 	call	_cpct_drawSprite
                           1258 ;src/game/world.c:246: break;
   592B C3 7C 5A      [10] 1259 	jp	00128$
                           1260 ;src/game/world.c:247: case DWELLINGS2:
   592E                    1261 00104$:
                           1262 ;src/game/world.c:248: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   592E 11 2F 63      [10] 1263 	ld	de,#_dwellings2
   5931 21 04 10      [10] 1264 	ld	hl,#0x1004
   5934 E5            [11] 1265 	push	hl
   5935 C5            [11] 1266 	push	bc
   5936 D5            [11] 1267 	push	de
   5937 CD 88 74      [17] 1268 	call	_cpct_drawSprite
                           1269 ;src/game/world.c:249: break;
   593A C3 7C 5A      [10] 1270 	jp	00128$
                           1271 ;src/game/world.c:250: case DWELLINGS3:
   593D                    1272 00105$:
                           1273 ;src/game/world.c:251: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   593D 11 6F 63      [10] 1274 	ld	de,#_dwellings3
   5940 21 04 10      [10] 1275 	ld	hl,#0x1004
   5943 E5            [11] 1276 	push	hl
   5944 C5            [11] 1277 	push	bc
   5945 D5            [11] 1278 	push	de
   5946 CD 88 74      [17] 1279 	call	_cpct_drawSprite
                           1280 ;src/game/world.c:252: break;
   5949 C3 7C 5A      [10] 1281 	jp	00128$
                           1282 ;src/game/world.c:253: case FARM1:
   594C                    1283 00106$:
                           1284 ;src/game/world.c:254: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   594C 11 EF 63      [10] 1285 	ld	de,#_farm1
   594F 21 04 10      [10] 1286 	ld	hl,#0x1004
   5952 E5            [11] 1287 	push	hl
   5953 C5            [11] 1288 	push	bc
   5954 D5            [11] 1289 	push	de
   5955 CD 88 74      [17] 1290 	call	_cpct_drawSprite
                           1291 ;src/game/world.c:255: break;
   5958 C3 7C 5A      [10] 1292 	jp	00128$
                           1293 ;src/game/world.c:256: case FARM2:
   595B                    1294 00107$:
                           1295 ;src/game/world.c:257: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   595B 11 2F 64      [10] 1296 	ld	de,#_farm2
   595E 21 04 10      [10] 1297 	ld	hl,#0x1004
   5961 E5            [11] 1298 	push	hl
   5962 C5            [11] 1299 	push	bc
   5963 D5            [11] 1300 	push	de
   5964 CD 88 74      [17] 1301 	call	_cpct_drawSprite
                           1302 ;src/game/world.c:258: break;
   5967 C3 7C 5A      [10] 1303 	jp	00128$
                           1304 ;src/game/world.c:259: case WATER:
   596A                    1305 00108$:
                           1306 ;src/game/world.c:260: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   596A 11 AF 63      [10] 1307 	ld	de,#_water
   596D 21 04 10      [10] 1308 	ld	hl,#0x1004
   5970 E5            [11] 1309 	push	hl
   5971 C5            [11] 1310 	push	bc
   5972 D5            [11] 1311 	push	de
   5973 CD 88 74      [17] 1312 	call	_cpct_drawSprite
                           1313 ;src/game/world.c:261: break;
   5976 C3 7C 5A      [10] 1314 	jp	00128$
                           1315 ;src/game/world.c:262: case FOREST:
   5979                    1316 00109$:
                           1317 ;src/game/world.c:263: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   5979 11 AF 62      [10] 1318 	ld	de,#_forest
   597C 21 04 10      [10] 1319 	ld	hl,#0x1004
   597F E5            [11] 1320 	push	hl
   5980 C5            [11] 1321 	push	bc
   5981 D5            [11] 1322 	push	de
   5982 CD 88 74      [17] 1323 	call	_cpct_drawSprite
                           1324 ;src/game/world.c:264: break;
   5985 C3 7C 5A      [10] 1325 	jp	00128$
                           1326 ;src/game/world.c:265: case LIVESTOCK:
   5988                    1327 00110$:
                           1328 ;src/game/world.c:266: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   5988 11 6F 64      [10] 1329 	ld	de,#_livestock
   598B 21 04 10      [10] 1330 	ld	hl,#0x1004
   598E E5            [11] 1331 	push	hl
   598F C5            [11] 1332 	push	bc
   5990 D5            [11] 1333 	push	de
   5991 CD 88 74      [17] 1334 	call	_cpct_drawSprite
                           1335 ;src/game/world.c:267: break;
   5994 C3 7C 5A      [10] 1336 	jp	00128$
                           1337 ;src/game/world.c:268: case SSNS:
   5997                    1338 00111$:
                           1339 ;src/game/world.c:269: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5997 11 AF 64      [10] 1340 	ld	de,#_station_small_ns
   599A 21 04 10      [10] 1341 	ld	hl,#0x1004
   599D E5            [11] 1342 	push	hl
   599E C5            [11] 1343 	push	bc
   599F D5            [11] 1344 	push	de
   59A0 CD 88 74      [17] 1345 	call	_cpct_drawSprite
                           1346 ;src/game/world.c:270: break;
   59A3 C3 7C 5A      [10] 1347 	jp	00128$
                           1348 ;src/game/world.c:271: case SSEW:
   59A6                    1349 00112$:
                           1350 ;src/game/world.c:272: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   59A6 11 EF 64      [10] 1351 	ld	de,#_station_small_ew
   59A9 21 04 10      [10] 1352 	ld	hl,#0x1004
   59AC E5            [11] 1353 	push	hl
   59AD C5            [11] 1354 	push	bc
   59AE D5            [11] 1355 	push	de
   59AF CD 88 74      [17] 1356 	call	_cpct_drawSprite
                           1357 ;src/game/world.c:273: break;
   59B2 C3 7C 5A      [10] 1358 	jp	00128$
                           1359 ;src/game/world.c:274: case SMNS:
   59B5                    1360 00113$:
                           1361 ;src/game/world.c:275: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   59B5 11 2F 65      [10] 1362 	ld	de,#_station_medium_ns
   59B8 21 04 10      [10] 1363 	ld	hl,#0x1004
   59BB E5            [11] 1364 	push	hl
   59BC C5            [11] 1365 	push	bc
   59BD D5            [11] 1366 	push	de
   59BE CD 88 74      [17] 1367 	call	_cpct_drawSprite
                           1368 ;src/game/world.c:276: break;
   59C1 C3 7C 5A      [10] 1369 	jp	00128$
                           1370 ;src/game/world.c:277: case SMEW:
   59C4                    1371 00114$:
                           1372 ;src/game/world.c:278: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   59C4 11 6F 65      [10] 1373 	ld	de,#_station_medium_ew
   59C7 21 04 10      [10] 1374 	ld	hl,#0x1004
   59CA E5            [11] 1375 	push	hl
   59CB C5            [11] 1376 	push	bc
   59CC D5            [11] 1377 	push	de
   59CD CD 88 74      [17] 1378 	call	_cpct_drawSprite
                           1379 ;src/game/world.c:279: break;
   59D0 C3 7C 5A      [10] 1380 	jp	00128$
                           1381 ;src/game/world.c:280: case SLNS:
   59D3                    1382 00115$:
                           1383 ;src/game/world.c:281: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   59D3 11 AF 65      [10] 1384 	ld	de,#_station_large_ns
   59D6 21 04 10      [10] 1385 	ld	hl,#0x1004
   59D9 E5            [11] 1386 	push	hl
   59DA C5            [11] 1387 	push	bc
   59DB D5            [11] 1388 	push	de
   59DC CD 88 74      [17] 1389 	call	_cpct_drawSprite
                           1390 ;src/game/world.c:282: break;
   59DF C3 7C 5A      [10] 1391 	jp	00128$
                           1392 ;src/game/world.c:283: case SLEW:
   59E2                    1393 00116$:
                           1394 ;src/game/world.c:284: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   59E2 11 EF 65      [10] 1395 	ld	de,#_station_large_ew
   59E5 21 04 10      [10] 1396 	ld	hl,#0x1004
   59E8 E5            [11] 1397 	push	hl
   59E9 C5            [11] 1398 	push	bc
   59EA D5            [11] 1399 	push	de
   59EB CD 88 74      [17] 1400 	call	_cpct_drawSprite
                           1401 ;src/game/world.c:285: break;
   59EE C3 7C 5A      [10] 1402 	jp	00128$
                           1403 ;src/game/world.c:286: case REW:
   59F1                    1404 00117$:
                           1405 ;src/game/world.c:287: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   59F1 11 2F 66      [10] 1406 	ld	de,#_rail_ew
   59F4 21 04 10      [10] 1407 	ld	hl,#0x1004
   59F7 E5            [11] 1408 	push	hl
   59F8 C5            [11] 1409 	push	bc
   59F9 D5            [11] 1410 	push	de
   59FA CD 88 74      [17] 1411 	call	_cpct_drawSprite
                           1412 ;src/game/world.c:288: break;
   59FD C3 7C 5A      [10] 1413 	jp	00128$
                           1414 ;src/game/world.c:289: case RNS:
   5A00                    1415 00118$:
                           1416 ;src/game/world.c:290: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5A00 11 6F 66      [10] 1417 	ld	de,#_rail_ns
   5A03 21 04 10      [10] 1418 	ld	hl,#0x1004
   5A06 E5            [11] 1419 	push	hl
   5A07 C5            [11] 1420 	push	bc
   5A08 D5            [11] 1421 	push	de
   5A09 CD 88 74      [17] 1422 	call	_cpct_drawSprite
                           1423 ;src/game/world.c:291: break;
   5A0C 18 6E         [12] 1424 	jr	00128$
                           1425 ;src/game/world.c:292: case REN:
   5A0E                    1426 00119$:
                           1427 ;src/game/world.c:293: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   5A0E 11 AF 66      [10] 1428 	ld	de,#_rail_en
   5A11 21 04 10      [10] 1429 	ld	hl,#0x1004
   5A14 E5            [11] 1430 	push	hl
   5A15 C5            [11] 1431 	push	bc
   5A16 D5            [11] 1432 	push	de
   5A17 CD 88 74      [17] 1433 	call	_cpct_drawSprite
                           1434 ;src/game/world.c:294: break;
   5A1A 18 60         [12] 1435 	jr	00128$
                           1436 ;src/game/world.c:295: case RES:
   5A1C                    1437 00120$:
                           1438 ;src/game/world.c:296: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   5A1C 11 EF 66      [10] 1439 	ld	de,#_rail_es
   5A1F 21 04 10      [10] 1440 	ld	hl,#0x1004
   5A22 E5            [11] 1441 	push	hl
   5A23 C5            [11] 1442 	push	bc
   5A24 D5            [11] 1443 	push	de
   5A25 CD 88 74      [17] 1444 	call	_cpct_drawSprite
                           1445 ;src/game/world.c:297: break;
   5A28 18 52         [12] 1446 	jr	00128$
                           1447 ;src/game/world.c:298: case RWN:
   5A2A                    1448 00121$:
                           1449 ;src/game/world.c:299: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   5A2A 11 2F 67      [10] 1450 	ld	de,#_rail_wn
   5A2D 21 04 10      [10] 1451 	ld	hl,#0x1004
   5A30 E5            [11] 1452 	push	hl
   5A31 C5            [11] 1453 	push	bc
   5A32 D5            [11] 1454 	push	de
   5A33 CD 88 74      [17] 1455 	call	_cpct_drawSprite
                           1456 ;src/game/world.c:300: break;
   5A36 18 44         [12] 1457 	jr	00128$
                           1458 ;src/game/world.c:301: case RWS:
   5A38                    1459 00122$:
                           1460 ;src/game/world.c:302: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   5A38 11 6F 67      [10] 1461 	ld	de,#_rail_ws
   5A3B 21 04 10      [10] 1462 	ld	hl,#0x1004
   5A3E E5            [11] 1463 	push	hl
   5A3F C5            [11] 1464 	push	bc
   5A40 D5            [11] 1465 	push	de
   5A41 CD 88 74      [17] 1466 	call	_cpct_drawSprite
                           1467 ;src/game/world.c:303: break;
   5A44 18 36         [12] 1468 	jr	00128$
                           1469 ;src/game/world.c:304: case REWN:
   5A46                    1470 00123$:
                           1471 ;src/game/world.c:305: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5A46 11 AF 67      [10] 1472 	ld	de,#_rail_ew_n
   5A49 21 04 10      [10] 1473 	ld	hl,#0x1004
   5A4C E5            [11] 1474 	push	hl
   5A4D C5            [11] 1475 	push	bc
   5A4E D5            [11] 1476 	push	de
   5A4F CD 88 74      [17] 1477 	call	_cpct_drawSprite
                           1478 ;src/game/world.c:306: break;
   5A52 18 28         [12] 1479 	jr	00128$
                           1480 ;src/game/world.c:307: case REWS:
   5A54                    1481 00124$:
                           1482 ;src/game/world.c:308: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5A54 11 EF 67      [10] 1483 	ld	de,#_rail_ew_s
   5A57 21 04 10      [10] 1484 	ld	hl,#0x1004
   5A5A E5            [11] 1485 	push	hl
   5A5B C5            [11] 1486 	push	bc
   5A5C D5            [11] 1487 	push	de
   5A5D CD 88 74      [17] 1488 	call	_cpct_drawSprite
                           1489 ;src/game/world.c:309: break;
   5A60 18 1A         [12] 1490 	jr	00128$
                           1491 ;src/game/world.c:310: case RNSE:
   5A62                    1492 00125$:
                           1493 ;src/game/world.c:311: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5A62 11 6F 68      [10] 1494 	ld	de,#_rail_ns_e
   5A65 21 04 10      [10] 1495 	ld	hl,#0x1004
   5A68 E5            [11] 1496 	push	hl
   5A69 C5            [11] 1497 	push	bc
   5A6A D5            [11] 1498 	push	de
   5A6B CD 88 74      [17] 1499 	call	_cpct_drawSprite
                           1500 ;src/game/world.c:312: break;
   5A6E 18 0C         [12] 1501 	jr	00128$
                           1502 ;src/game/world.c:313: case RNSW:
   5A70                    1503 00126$:
                           1504 ;src/game/world.c:314: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   5A70 11 2F 68      [10] 1505 	ld	de,#_rail_ns_w
   5A73 21 04 10      [10] 1506 	ld	hl,#0x1004
   5A76 E5            [11] 1507 	push	hl
   5A77 C5            [11] 1508 	push	bc
   5A78 D5            [11] 1509 	push	de
   5A79 CD 88 74      [17] 1510 	call	_cpct_drawSprite
                           1511 ;src/game/world.c:316: }
   5A7C                    1512 00128$:
   5A7C DD E1         [14] 1513 	pop	ix
   5A7E C9            [10] 1514 	ret
                           1515 ;src/game/world.c:319: void drawScrolls(u8 x_, u8 y_)
                           1516 ;	---------------------------------
                           1517 ; Function drawScrolls
                           1518 ; ---------------------------------
   5A7F                    1519 _drawScrolls::
   5A7F DD E5         [15] 1520 	push	ix
   5A81 DD 21 00 00   [14] 1521 	ld	ix,#0
   5A85 DD 39         [15] 1522 	add	ix,sp
   5A87 3B            [ 6] 1523 	dec	sp
                           1524 ;src/game/world.c:325: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   5A88 DD 4E 04      [19] 1525 	ld	c,4 (ix)
   5A8B 06 00         [ 7] 1526 	ld	b,#0x00
   5A8D 69            [ 4] 1527 	ld	l, c
   5A8E 60            [ 4] 1528 	ld	h, b
   5A8F 29            [11] 1529 	add	hl, hl
   5A90 29            [11] 1530 	add	hl, hl
   5A91 29            [11] 1531 	add	hl, hl
   5A92 09            [11] 1532 	add	hl, bc
   5A93 29            [11] 1533 	add	hl, hl
   5A94 09            [11] 1534 	add	hl, bc
   5A95 29            [11] 1535 	add	hl, hl
   5A96 29            [11] 1536 	add	hl, hl
   5A97 01 3C 00      [10] 1537 	ld	bc,#0x003C
   5A9A C5            [11] 1538 	push	bc
   5A9B E5            [11] 1539 	push	hl
   5A9C CD 07 7B      [17] 1540 	call	__divsint
   5A9F F1            [10] 1541 	pop	af
   5AA0 F1            [10] 1542 	pop	af
   5AA1 55            [ 4] 1543 	ld	d,l
                           1544 ;src/game/world.c:326: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   5AA2 DD 4E 05      [19] 1545 	ld	c,5 (ix)
   5AA5 06 00         [ 7] 1546 	ld	b,#0x00
   5AA7 69            [ 4] 1547 	ld	l, c
   5AA8 60            [ 4] 1548 	ld	h, b
   5AA9 29            [11] 1549 	add	hl, hl
   5AAA 29            [11] 1550 	add	hl, hl
   5AAB 09            [11] 1551 	add	hl, bc
   5AAC 29            [11] 1552 	add	hl, hl
   5AAD 09            [11] 1553 	add	hl, bc
   5AAE 29            [11] 1554 	add	hl, hl
   5AAF 29            [11] 1555 	add	hl, hl
   5AB0 29            [11] 1556 	add	hl, hl
   5AB1 29            [11] 1557 	add	hl, hl
   5AB2 D5            [11] 1558 	push	de
   5AB3 01 24 00      [10] 1559 	ld	bc,#0x0024
   5AB6 C5            [11] 1560 	push	bc
   5AB7 E5            [11] 1561 	push	hl
   5AB8 CD 07 7B      [17] 1562 	call	__divsint
   5ABB F1            [10] 1563 	pop	af
   5ABC F1            [10] 1564 	pop	af
   5ABD D1            [10] 1565 	pop	de
   5ABE DD 75 FF      [19] 1566 	ld	-1 (ix),l
                           1567 ;src/game/world.c:328: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   5AC1 AF            [ 4] 1568 	xor	a, a
   5AC2 F5            [11] 1569 	push	af
   5AC3 33            [ 6] 1570 	inc	sp
   5AC4 D5            [11] 1571 	push	de
   5AC5 33            [ 6] 1572 	inc	sp
   5AC6 21 00 C0      [10] 1573 	ld	hl,#0xC000
   5AC9 E5            [11] 1574 	push	hl
   5ACA CD B6 7A      [17] 1575 	call	_cpct_getScreenPtr
                           1576 ;src/game/world.c:329: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   5ACD E5            [11] 1577 	push	hl
   5ACE 21 00 00      [10] 1578 	ld	hl,#0x0000
   5AD1 E5            [11] 1579 	push	hl
   5AD2 2E 00         [ 7] 1580 	ld	l, #0x00
   5AD4 E5            [11] 1581 	push	hl
   5AD5 CD 90 79      [17] 1582 	call	_cpct_px2byteM1
   5AD8 F1            [10] 1583 	pop	af
   5AD9 F1            [10] 1584 	pop	af
   5ADA 45            [ 4] 1585 	ld	b,l
   5ADB D1            [10] 1586 	pop	de
   5ADC 21 04 04      [10] 1587 	ld	hl,#0x0404
   5ADF E5            [11] 1588 	push	hl
   5AE0 C5            [11] 1589 	push	bc
   5AE1 33            [ 6] 1590 	inc	sp
   5AE2 D5            [11] 1591 	push	de
   5AE3 CD FD 79      [17] 1592 	call	_cpct_drawSolidBox
   5AE6 F1            [10] 1593 	pop	af
   5AE7 F1            [10] 1594 	pop	af
   5AE8 33            [ 6] 1595 	inc	sp
                           1596 ;src/game/world.c:331: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   5AE9 DD 7E FF      [19] 1597 	ld	a,-1 (ix)
   5AEC F5            [11] 1598 	push	af
   5AED 33            [ 6] 1599 	inc	sp
   5AEE AF            [ 4] 1600 	xor	a, a
   5AEF F5            [11] 1601 	push	af
   5AF0 33            [ 6] 1602 	inc	sp
   5AF1 21 00 C0      [10] 1603 	ld	hl,#0xC000
   5AF4 E5            [11] 1604 	push	hl
   5AF5 CD B6 7A      [17] 1605 	call	_cpct_getScreenPtr
                           1606 ;src/game/world.c:332: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   5AF8 E5            [11] 1607 	push	hl
   5AF9 21 00 00      [10] 1608 	ld	hl,#0x0000
   5AFC E5            [11] 1609 	push	hl
   5AFD 2E 00         [ 7] 1610 	ld	l, #0x00
   5AFF E5            [11] 1611 	push	hl
   5B00 CD 90 79      [17] 1612 	call	_cpct_px2byteM1
   5B03 F1            [10] 1613 	pop	af
   5B04 F1            [10] 1614 	pop	af
   5B05 45            [ 4] 1615 	ld	b,l
   5B06 D1            [10] 1616 	pop	de
   5B07 21 01 10      [10] 1617 	ld	hl,#0x1001
   5B0A E5            [11] 1618 	push	hl
   5B0B C5            [11] 1619 	push	bc
   5B0C 33            [ 6] 1620 	inc	sp
   5B0D D5            [11] 1621 	push	de
   5B0E CD FD 79      [17] 1622 	call	_cpct_drawSolidBox
   5B11 F1            [10] 1623 	pop	af
   5B12 F1            [10] 1624 	pop	af
   5B13 33            [ 6] 1625 	inc	sp
   5B14 33            [ 6] 1626 	inc	sp
   5B15 DD E1         [14] 1627 	pop	ix
   5B17 C9            [10] 1628 	ret
                           1629 ;src/game/world.c:335: void drawWorld(u8 x_, u8 y_)
                           1630 ;	---------------------------------
                           1631 ; Function drawWorld
                           1632 ; ---------------------------------
   5B18                    1633 _drawWorld::
                           1634 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   5B18 16 00         [ 7] 1635 	ld	d,#0x00
                           1636 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   5B1A                    1637 00109$:
   5B1A 1E 00         [ 7] 1638 	ld	e,#0x00
   5B1C                    1639 00103$:
                           1640 ;src/game/world.c:344: drawTile(x_, y_, ix, iy);
   5B1C D5            [11] 1641 	push	de
   5B1D D5            [11] 1642 	push	de
   5B1E 21 07 00      [10] 1643 	ld	hl, #7+0
   5B21 39            [11] 1644 	add	hl, sp
   5B22 7E            [ 7] 1645 	ld	a, (hl)
   5B23 F5            [11] 1646 	push	af
   5B24 33            [ 6] 1647 	inc	sp
   5B25 21 07 00      [10] 1648 	ld	hl, #7+0
   5B28 39            [11] 1649 	add	hl, sp
   5B29 7E            [ 7] 1650 	ld	a, (hl)
   5B2A F5            [11] 1651 	push	af
   5B2B 33            [ 6] 1652 	inc	sp
   5B2C CD 57 58      [17] 1653 	call	_drawTile
   5B2F F1            [10] 1654 	pop	af
   5B30 F1            [10] 1655 	pop	af
   5B31 D1            [10] 1656 	pop	de
                           1657 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   5B32 1C            [ 4] 1658 	inc	e
   5B33 7B            [ 4] 1659 	ld	a,e
   5B34 D6 14         [ 7] 1660 	sub	a, #0x14
   5B36 38 E4         [12] 1661 	jr	C,00103$
                           1662 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   5B38 14            [ 4] 1663 	inc	d
   5B39 7A            [ 4] 1664 	ld	a,d
   5B3A D6 0C         [ 7] 1665 	sub	a, #0x0C
   5B3C 38 DC         [12] 1666 	jr	C,00109$
                           1667 ;src/game/world.c:348: drawScrolls(x_, y_);
   5B3E 21 03 00      [10] 1668 	ld	hl, #3+0
   5B41 39            [11] 1669 	add	hl, sp
   5B42 7E            [ 7] 1670 	ld	a, (hl)
   5B43 F5            [11] 1671 	push	af
   5B44 33            [ 6] 1672 	inc	sp
   5B45 21 03 00      [10] 1673 	ld	hl, #3+0
   5B48 39            [11] 1674 	add	hl, sp
   5B49 7E            [ 7] 1675 	ld	a, (hl)
   5B4A F5            [11] 1676 	push	af
   5B4B 33            [ 6] 1677 	inc	sp
   5B4C CD 7F 5A      [17] 1678 	call	_drawScrolls
   5B4F F1            [10] 1679 	pop	af
   5B50 C9            [10] 1680 	ret
                           1681 	.area _CODE
                           1682 	.area _INITIALIZER
                           1683 	.area _CABS (ABS)
