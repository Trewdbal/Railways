                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 17:14:17 2016
                              5 ;--------------------------------------------------------
                              6 	.module world
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _cpct_setSeed_mxor
                             13 	.globl _cpct_getRandom_mxor_u8
                             14 	.globl _cpct_getRandomUniform_u8_f
                             15 	.globl _cpct_getScreenPtr
                             16 	.globl _cpct_count2VSYNC
                             17 	.globl _cpct_drawSolidBox
                             18 	.globl _cpct_drawSprite
                             19 	.globl _cpct_px2byteM1
                             20 	.globl _cpct_getBit
                             21 	.globl _cpct_memset
                             22 	.globl _drawCursor
                             23 	.globl _patternTile
                             24 	.globl _generateWorld
                             25 	.globl _drawTile
                             26 	.globl _drawScrolls
                             27 	.globl _drawWorld
                             28 ;--------------------------------------------------------
                             29 ; special function registers
                             30 ;--------------------------------------------------------
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _DATA
                             35 ;--------------------------------------------------------
                             36 ; ram data
                             37 ;--------------------------------------------------------
                             38 	.area _INITIALIZED
                             39 ;--------------------------------------------------------
                             40 ; absolute external ram data
                             41 ;--------------------------------------------------------
                             42 	.area _DABS (ABS)
                             43 ;--------------------------------------------------------
                             44 ; global & static initialisations
                             45 ;--------------------------------------------------------
                             46 	.area _HOME
                             47 	.area _GSINIT
                             48 	.area _GSFINAL
                             49 	.area _GSINIT
                             50 ;--------------------------------------------------------
                             51 ; Home
                             52 ;--------------------------------------------------------
                             53 	.area _HOME
                             54 	.area _HOME
                             55 ;--------------------------------------------------------
                             56 ; code
                             57 ;--------------------------------------------------------
                             58 	.area _CODE
                             59 ;src/game/world.c:3: void drawCursor(u8 x, u8 y, u8 color)
                             60 ;	---------------------------------
                             61 ; Function drawCursor
                             62 ; ---------------------------------
   4B0F                      63 _drawCursor::
   4B0F DD E5         [15]   64 	push	ix
   4B11 DD 21 00 00   [14]   65 	ld	ix,#0
   4B15 DD 39         [15]   66 	add	ix,sp
   4B17 3B            [ 6]   67 	dec	sp
                             68 ;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4B18 DD 7E 05      [19]   69 	ld	a,5 (ix)
   4B1B 07            [ 4]   70 	rlca
   4B1C 07            [ 4]   71 	rlca
   4B1D 07            [ 4]   72 	rlca
   4B1E 07            [ 4]   73 	rlca
   4B1F E6 F0         [ 7]   74 	and	a,#0xF0
   4B21 5F            [ 4]   75 	ld	e,a
   4B22 DD 7E 04      [19]   76 	ld	a,4 (ix)
   4B25 87            [ 4]   77 	add	a, a
   4B26 87            [ 4]   78 	add	a, a
   4B27 57            [ 4]   79 	ld	d,a
   4B28 D5            [11]   80 	push	de
   4B29 7B            [ 4]   81 	ld	a,e
   4B2A F5            [11]   82 	push	af
   4B2B 33            [ 6]   83 	inc	sp
   4B2C D5            [11]   84 	push	de
   4B2D 33            [ 6]   85 	inc	sp
   4B2E 21 00 C0      [10]   86 	ld	hl,#0xC000
   4B31 E5            [11]   87 	push	hl
   4B32 CD 4C 66      [17]   88 	call	_cpct_getScreenPtr
   4B35 D1            [10]   89 	pop	de
   4B36 4D            [ 4]   90 	ld	c, l
   4B37 44            [ 4]   91 	ld	b, h
                             92 ;src/game/world.c:8: switch(CURSOR_MODE)
   4B38 3E 10         [ 7]   93 	ld	a,#0x10
   4B3A FD 21 20 76   [14]   94 	ld	iy,#_CURSOR_MODE
   4B3E FD 96 00      [19]   95 	sub	a, 0 (iy)
   4B41 DA 40 4D      [10]   96 	jp	C,00119$
   4B44 D5            [11]   97 	push	de
   4B45 FD 21 20 76   [14]   98 	ld	iy,#_CURSOR_MODE
   4B49 FD 5E 00      [19]   99 	ld	e,0 (iy)
   4B4C 16 00         [ 7]  100 	ld	d,#0x00
   4B4E 21 56 4B      [10]  101 	ld	hl,#00125$
   4B51 19            [11]  102 	add	hl,de
   4B52 19            [11]  103 	add	hl,de
   4B53 19            [11]  104 	add	hl,de
   4B54 D1            [10]  105 	pop	de
   4B55 E9            [ 4]  106 	jp	(hl)
   4B56                     107 00125$:
   4B56 C3 89 4B      [10]  108 	jp	00101$
   4B59 C3 5B 4C      [10]  109 	jp	00102$
   4B5C C3 6A 4C      [10]  110 	jp	00103$
   4B5F C3 79 4C      [10]  111 	jp	00104$
   4B62 C3 88 4C      [10]  112 	jp	00105$
   4B65 C3 97 4C      [10]  113 	jp	00106$
   4B68 C3 A6 4C      [10]  114 	jp	00107$
   4B6B C3 B5 4C      [10]  115 	jp	00108$
   4B6E C3 C4 4C      [10]  116 	jp	00109$
   4B71 C3 D2 4C      [10]  117 	jp	00110$
   4B74 C3 E0 4C      [10]  118 	jp	00111$
   4B77 C3 EE 4C      [10]  119 	jp	00112$
   4B7A C3 FC 4C      [10]  120 	jp	00113$
   4B7D C3 0A 4D      [10]  121 	jp	00114$
   4B80 C3 18 4D      [10]  122 	jp	00115$
   4B83 C3 26 4D      [10]  123 	jp	00116$
   4B86 C3 34 4D      [10]  124 	jp	00117$
                            125 ;src/game/world.c:10: case NONE:
   4B89                     126 00101$:
                            127 ;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4B89 C5            [11]  128 	push	bc
   4B8A D5            [11]  129 	push	de
   4B8B DD 66 06      [19]  130 	ld	h,6 (ix)
   4B8E DD 6E 06      [19]  131 	ld	l,6 (ix)
   4B91 E5            [11]  132 	push	hl
   4B92 DD 66 06      [19]  133 	ld	h,6 (ix)
   4B95 DD 6E 06      [19]  134 	ld	l,6 (ix)
   4B98 E5            [11]  135 	push	hl
   4B99 CD 26 65      [17]  136 	call	_cpct_px2byteM1
   4B9C F1            [10]  137 	pop	af
   4B9D F1            [10]  138 	pop	af
   4B9E DD 75 FF      [19]  139 	ld	-1 (ix),l
   4BA1 D1            [10]  140 	pop	de
   4BA2 C1            [10]  141 	pop	bc
   4BA3 D5            [11]  142 	push	de
   4BA4 21 04 00      [10]  143 	ld	hl,#0x0004
   4BA7 E5            [11]  144 	push	hl
   4BA8 DD 7E FF      [19]  145 	ld	a,-1 (ix)
   4BAB F5            [11]  146 	push	af
   4BAC 33            [ 6]  147 	inc	sp
   4BAD C5            [11]  148 	push	bc
   4BAE CD 18 65      [17]  149 	call	_cpct_memset
   4BB1 D1            [10]  150 	pop	de
                            151 ;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4BB2 63            [ 4]  152 	ld	h,e
   4BB3 24            [ 4]  153 	inc	h
   4BB4 D5            [11]  154 	push	de
   4BB5 E5            [11]  155 	push	hl
   4BB6 33            [ 6]  156 	inc	sp
   4BB7 D5            [11]  157 	push	de
   4BB8 33            [ 6]  158 	inc	sp
   4BB9 21 00 C0      [10]  159 	ld	hl,#0xC000
   4BBC E5            [11]  160 	push	hl
   4BBD CD 4C 66      [17]  161 	call	_cpct_getScreenPtr
   4BC0 D1            [10]  162 	pop	de
                            163 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4BC1 E5            [11]  164 	push	hl
   4BC2 D5            [11]  165 	push	de
   4BC3 DD 66 06      [19]  166 	ld	h,6 (ix)
   4BC6 DD 6E 06      [19]  167 	ld	l,6 (ix)
   4BC9 E5            [11]  168 	push	hl
   4BCA DD 66 06      [19]  169 	ld	h,6 (ix)
   4BCD DD 6E 06      [19]  170 	ld	l,6 (ix)
   4BD0 E5            [11]  171 	push	hl
   4BD1 CD 26 65      [17]  172 	call	_cpct_px2byteM1
   4BD4 F1            [10]  173 	pop	af
   4BD5 F1            [10]  174 	pop	af
   4BD6 5D            [ 4]  175 	ld	e,l
   4BD7 F1            [10]  176 	pop	af
   4BD8 57            [ 4]  177 	ld	d,a
   4BD9 C1            [10]  178 	pop	bc
   4BDA D5            [11]  179 	push	de
   4BDB 21 04 00      [10]  180 	ld	hl,#0x0004
   4BDE E5            [11]  181 	push	hl
   4BDF 7B            [ 4]  182 	ld	a,e
   4BE0 F5            [11]  183 	push	af
   4BE1 33            [ 6]  184 	inc	sp
   4BE2 C5            [11]  185 	push	bc
   4BE3 CD 18 65      [17]  186 	call	_cpct_memset
   4BE6 D1            [10]  187 	pop	de
                            188 ;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4BE7 DD 7E 05      [19]  189 	ld	a,5 (ix)
   4BEA 3C            [ 4]  190 	inc	a
   4BEB 07            [ 4]  191 	rlca
   4BEC 07            [ 4]  192 	rlca
   4BED 07            [ 4]  193 	rlca
   4BEE 07            [ 4]  194 	rlca
   4BEF E6 F0         [ 7]  195 	and	a,#0xF0
   4BF1 5F            [ 4]  196 	ld	e,a
   4BF2 63            [ 4]  197 	ld	h,e
   4BF3 25            [ 4]  198 	dec	h
   4BF4 D5            [11]  199 	push	de
   4BF5 E5            [11]  200 	push	hl
   4BF6 33            [ 6]  201 	inc	sp
   4BF7 D5            [11]  202 	push	de
   4BF8 33            [ 6]  203 	inc	sp
   4BF9 21 00 C0      [10]  204 	ld	hl,#0xC000
   4BFC E5            [11]  205 	push	hl
   4BFD CD 4C 66      [17]  206 	call	_cpct_getScreenPtr
   4C00 D1            [10]  207 	pop	de
                            208 ;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4C01 E5            [11]  209 	push	hl
   4C02 D5            [11]  210 	push	de
   4C03 DD 66 06      [19]  211 	ld	h,6 (ix)
   4C06 DD 6E 06      [19]  212 	ld	l,6 (ix)
   4C09 E5            [11]  213 	push	hl
   4C0A DD 66 06      [19]  214 	ld	h,6 (ix)
   4C0D DD 6E 06      [19]  215 	ld	l,6 (ix)
   4C10 E5            [11]  216 	push	hl
   4C11 CD 26 65      [17]  217 	call	_cpct_px2byteM1
   4C14 F1            [10]  218 	pop	af
   4C15 F1            [10]  219 	pop	af
   4C16 DD 75 FF      [19]  220 	ld	-1 (ix),l
   4C19 D1            [10]  221 	pop	de
   4C1A C1            [10]  222 	pop	bc
   4C1B D5            [11]  223 	push	de
   4C1C 21 04 00      [10]  224 	ld	hl,#0x0004
   4C1F E5            [11]  225 	push	hl
   4C20 DD 7E FF      [19]  226 	ld	a,-1 (ix)
   4C23 F5            [11]  227 	push	af
   4C24 33            [ 6]  228 	inc	sp
   4C25 C5            [11]  229 	push	bc
   4C26 CD 18 65      [17]  230 	call	_cpct_memset
   4C29 D1            [10]  231 	pop	de
                            232 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4C2A 63            [ 4]  233 	ld	h,e
   4C2B 25            [ 4]  234 	dec	h
   4C2C 25            [ 4]  235 	dec	h
   4C2D E5            [11]  236 	push	hl
   4C2E 33            [ 6]  237 	inc	sp
   4C2F D5            [11]  238 	push	de
   4C30 33            [ 6]  239 	inc	sp
   4C31 21 00 C0      [10]  240 	ld	hl,#0xC000
   4C34 E5            [11]  241 	push	hl
   4C35 CD 4C 66      [17]  242 	call	_cpct_getScreenPtr
                            243 ;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4C38 E5            [11]  244 	push	hl
   4C39 DD 66 06      [19]  245 	ld	h,6 (ix)
   4C3C DD 6E 06      [19]  246 	ld	l,6 (ix)
   4C3F E5            [11]  247 	push	hl
   4C40 DD 66 06      [19]  248 	ld	h,6 (ix)
   4C43 DD 6E 06      [19]  249 	ld	l,6 (ix)
   4C46 E5            [11]  250 	push	hl
   4C47 CD 26 65      [17]  251 	call	_cpct_px2byteM1
   4C4A F1            [10]  252 	pop	af
   4C4B F1            [10]  253 	pop	af
   4C4C 65            [ 4]  254 	ld	h,l
   4C4D D1            [10]  255 	pop	de
   4C4E 01 04 00      [10]  256 	ld	bc,#0x0004
   4C51 C5            [11]  257 	push	bc
   4C52 E5            [11]  258 	push	hl
   4C53 33            [ 6]  259 	inc	sp
   4C54 D5            [11]  260 	push	de
   4C55 CD 18 65      [17]  261 	call	_cpct_memset
                            262 ;src/game/world.c:20: break;
   4C58 C3 40 4D      [10]  263 	jp	00119$
                            264 ;src/game/world.c:21: case T_SSNS:
   4C5B                     265 00102$:
                            266 ;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4C5B 11 D3 5E      [10]  267 	ld	de,#_station_small_ns
   4C5E 21 04 10      [10]  268 	ld	hl,#0x1004
   4C61 E5            [11]  269 	push	hl
   4C62 C5            [11]  270 	push	bc
   4C63 D5            [11]  271 	push	de
   4C64 CD 42 63      [17]  272 	call	_cpct_drawSprite
                            273 ;src/game/world.c:23: break;
   4C67 C3 40 4D      [10]  274 	jp	00119$
                            275 ;src/game/world.c:24: case T_SSEW:
   4C6A                     276 00103$:
                            277 ;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4C6A 11 13 5F      [10]  278 	ld	de,#_station_small_ew
   4C6D 21 04 10      [10]  279 	ld	hl,#0x1004
   4C70 E5            [11]  280 	push	hl
   4C71 C5            [11]  281 	push	bc
   4C72 D5            [11]  282 	push	de
   4C73 CD 42 63      [17]  283 	call	_cpct_drawSprite
                            284 ;src/game/world.c:26: break;
   4C76 C3 40 4D      [10]  285 	jp	00119$
                            286 ;src/game/world.c:27: case T_SMNS:
   4C79                     287 00104$:
                            288 ;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4C79 11 53 5F      [10]  289 	ld	de,#_station_medium_ns
   4C7C 21 04 10      [10]  290 	ld	hl,#0x1004
   4C7F E5            [11]  291 	push	hl
   4C80 C5            [11]  292 	push	bc
   4C81 D5            [11]  293 	push	de
   4C82 CD 42 63      [17]  294 	call	_cpct_drawSprite
                            295 ;src/game/world.c:29: break;
   4C85 C3 40 4D      [10]  296 	jp	00119$
                            297 ;src/game/world.c:30: case T_SMEW:
   4C88                     298 00105$:
                            299 ;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4C88 11 93 5F      [10]  300 	ld	de,#_station_medium_ew
   4C8B 21 04 10      [10]  301 	ld	hl,#0x1004
   4C8E E5            [11]  302 	push	hl
   4C8F C5            [11]  303 	push	bc
   4C90 D5            [11]  304 	push	de
   4C91 CD 42 63      [17]  305 	call	_cpct_drawSprite
                            306 ;src/game/world.c:32: break;
   4C94 C3 40 4D      [10]  307 	jp	00119$
                            308 ;src/game/world.c:33: case T_SLNS:
   4C97                     309 00106$:
                            310 ;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4C97 11 D3 5F      [10]  311 	ld	de,#_station_large_ns
   4C9A 21 04 10      [10]  312 	ld	hl,#0x1004
   4C9D E5            [11]  313 	push	hl
   4C9E C5            [11]  314 	push	bc
   4C9F D5            [11]  315 	push	de
   4CA0 CD 42 63      [17]  316 	call	_cpct_drawSprite
                            317 ;src/game/world.c:35: break;
   4CA3 C3 40 4D      [10]  318 	jp	00119$
                            319 ;src/game/world.c:36: case T_SLEW:
   4CA6                     320 00107$:
                            321 ;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4CA6 11 13 60      [10]  322 	ld	de,#_station_large_ew
   4CA9 21 04 10      [10]  323 	ld	hl,#0x1004
   4CAC E5            [11]  324 	push	hl
   4CAD C5            [11]  325 	push	bc
   4CAE D5            [11]  326 	push	de
   4CAF CD 42 63      [17]  327 	call	_cpct_drawSprite
                            328 ;src/game/world.c:38: break;
   4CB2 C3 40 4D      [10]  329 	jp	00119$
                            330 ;src/game/world.c:39: case T_REW:
   4CB5                     331 00108$:
                            332 ;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   4CB5 11 53 60      [10]  333 	ld	de,#_rail_ew
   4CB8 21 04 10      [10]  334 	ld	hl,#0x1004
   4CBB E5            [11]  335 	push	hl
   4CBC C5            [11]  336 	push	bc
   4CBD D5            [11]  337 	push	de
   4CBE CD 42 63      [17]  338 	call	_cpct_drawSprite
                            339 ;src/game/world.c:41: break;
   4CC1 C3 40 4D      [10]  340 	jp	00119$
                            341 ;src/game/world.c:42: case T_RNS:
   4CC4                     342 00109$:
                            343 ;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   4CC4 11 93 60      [10]  344 	ld	de,#_rail_ns
   4CC7 21 04 10      [10]  345 	ld	hl,#0x1004
   4CCA E5            [11]  346 	push	hl
   4CCB C5            [11]  347 	push	bc
   4CCC D5            [11]  348 	push	de
   4CCD CD 42 63      [17]  349 	call	_cpct_drawSprite
                            350 ;src/game/world.c:44: break;
   4CD0 18 6E         [12]  351 	jr	00119$
                            352 ;src/game/world.c:45: case T_REN:
   4CD2                     353 00110$:
                            354 ;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   4CD2 11 D3 60      [10]  355 	ld	de,#_rail_en
   4CD5 21 04 10      [10]  356 	ld	hl,#0x1004
   4CD8 E5            [11]  357 	push	hl
   4CD9 C5            [11]  358 	push	bc
   4CDA D5            [11]  359 	push	de
   4CDB CD 42 63      [17]  360 	call	_cpct_drawSprite
                            361 ;src/game/world.c:47: break;
   4CDE 18 60         [12]  362 	jr	00119$
                            363 ;src/game/world.c:48: case T_RES:
   4CE0                     364 00111$:
                            365 ;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   4CE0 11 13 61      [10]  366 	ld	de,#_rail_es
   4CE3 21 04 10      [10]  367 	ld	hl,#0x1004
   4CE6 E5            [11]  368 	push	hl
   4CE7 C5            [11]  369 	push	bc
   4CE8 D5            [11]  370 	push	de
   4CE9 CD 42 63      [17]  371 	call	_cpct_drawSprite
                            372 ;src/game/world.c:50: break;
   4CEC 18 52         [12]  373 	jr	00119$
                            374 ;src/game/world.c:51: case T_RWN:
   4CEE                     375 00112$:
                            376 ;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   4CEE 11 53 61      [10]  377 	ld	de,#_rail_wn
   4CF1 21 04 10      [10]  378 	ld	hl,#0x1004
   4CF4 E5            [11]  379 	push	hl
   4CF5 C5            [11]  380 	push	bc
   4CF6 D5            [11]  381 	push	de
   4CF7 CD 42 63      [17]  382 	call	_cpct_drawSprite
                            383 ;src/game/world.c:53: break;
   4CFA 18 44         [12]  384 	jr	00119$
                            385 ;src/game/world.c:54: case T_RWS:
   4CFC                     386 00113$:
                            387 ;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   4CFC 11 93 61      [10]  388 	ld	de,#_rail_ws
   4CFF 21 04 10      [10]  389 	ld	hl,#0x1004
   4D02 E5            [11]  390 	push	hl
   4D03 C5            [11]  391 	push	bc
   4D04 D5            [11]  392 	push	de
   4D05 CD 42 63      [17]  393 	call	_cpct_drawSprite
                            394 ;src/game/world.c:56: break;
   4D08 18 36         [12]  395 	jr	00119$
                            396 ;src/game/world.c:57: case T_REWN:
   4D0A                     397 00114$:
                            398 ;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   4D0A 11 D3 61      [10]  399 	ld	de,#_rail_ew_n
   4D0D 21 04 10      [10]  400 	ld	hl,#0x1004
   4D10 E5            [11]  401 	push	hl
   4D11 C5            [11]  402 	push	bc
   4D12 D5            [11]  403 	push	de
   4D13 CD 42 63      [17]  404 	call	_cpct_drawSprite
                            405 ;src/game/world.c:59: break;
   4D16 18 28         [12]  406 	jr	00119$
                            407 ;src/game/world.c:60: case T_REWS:
   4D18                     408 00115$:
                            409 ;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   4D18 11 13 62      [10]  410 	ld	de,#_rail_ew_s
   4D1B 21 04 10      [10]  411 	ld	hl,#0x1004
   4D1E E5            [11]  412 	push	hl
   4D1F C5            [11]  413 	push	bc
   4D20 D5            [11]  414 	push	de
   4D21 CD 42 63      [17]  415 	call	_cpct_drawSprite
                            416 ;src/game/world.c:62: break;
   4D24 18 1A         [12]  417 	jr	00119$
                            418 ;src/game/world.c:63: case T_RNSE:
   4D26                     419 00116$:
                            420 ;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   4D26 11 93 62      [10]  421 	ld	de,#_rail_ns_e
   4D29 21 04 10      [10]  422 	ld	hl,#0x1004
   4D2C E5            [11]  423 	push	hl
   4D2D C5            [11]  424 	push	bc
   4D2E D5            [11]  425 	push	de
   4D2F CD 42 63      [17]  426 	call	_cpct_drawSprite
                            427 ;src/game/world.c:65: break;
   4D32 18 0C         [12]  428 	jr	00119$
                            429 ;src/game/world.c:66: case T_RNSW:
   4D34                     430 00117$:
                            431 ;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   4D34 11 53 62      [10]  432 	ld	de,#_rail_ns_w
   4D37 21 04 10      [10]  433 	ld	hl,#0x1004
   4D3A E5            [11]  434 	push	hl
   4D3B C5            [11]  435 	push	bc
   4D3C D5            [11]  436 	push	de
   4D3D CD 42 63      [17]  437 	call	_cpct_drawSprite
                            438 ;src/game/world.c:69: }
   4D40                     439 00119$:
   4D40 33            [ 6]  440 	inc	sp
   4D41 DD E1         [14]  441 	pop	ix
   4D43 C9            [10]  442 	ret
                            443 ;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            444 ;	---------------------------------
                            445 ; Function patternTile
                            446 ; ---------------------------------
   4D44                     447 _patternTile::
   4D44 DD E5         [15]  448 	push	ix
   4D46 DD 21 00 00   [14]  449 	ld	ix,#0
   4D4A DD 39         [15]  450 	add	ix,sp
   4D4C 21 F5 FF      [10]  451 	ld	hl,#-11
   4D4F 39            [11]  452 	add	hl,sp
   4D50 F9            [ 6]  453 	ld	sp,hl
                            454 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   4D51 DD 7E 04      [19]  455 	ld	a,4 (ix)
   4D54 D6 08         [ 7]  456 	sub	a, #0x08
   4D56 20 04         [12]  457 	jr	NZ,00153$
   4D58 3E 01         [ 7]  458 	ld	a,#0x01
   4D5A 18 01         [12]  459 	jr	00154$
   4D5C                     460 00153$:
   4D5C AF            [ 4]  461 	xor	a,a
   4D5D                     462 00154$:
   4D5D DD 77 FA      [19]  463 	ld	-6 (ix),a
   4D60 DD 7E 04      [19]  464 	ld	a,4 (ix)
   4D63 D6 02         [ 7]  465 	sub	a, #0x02
   4D65 20 04         [12]  466 	jr	NZ,00155$
   4D67 3E 01         [ 7]  467 	ld	a,#0x01
   4D69 18 01         [12]  468 	jr	00156$
   4D6B                     469 00155$:
   4D6B AF            [ 4]  470 	xor	a,a
   4D6C                     471 00156$:
   4D6C DD 77 F9      [19]  472 	ld	-7 (ix),a
   4D6F DD 36 F5 00   [19]  473 	ld	-11 (ix),#0x00
   4D73 11 00 00      [10]  474 	ld	de,#0x0000
   4D76                     475 00115$:
   4D76 DD 7E F5      [19]  476 	ld	a,-11 (ix)
   4D79 DD 96 08      [19]  477 	sub	a, 8 (ix)
   4D7C D2 3C 4E      [10]  478 	jp	NC,00117$
                            479 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   4D7F DD 7E 05      [19]  480 	ld	a,5 (ix)
   4D82 83            [ 4]  481 	add	a, e
   4D83 DD 77 F7      [19]  482 	ld	-9 (ix),a
   4D86 DD 7E 06      [19]  483 	ld	a,6 (ix)
   4D89 8A            [ 4]  484 	adc	a, d
   4D8A DD 77 F8      [19]  485 	ld	-8 (ix),a
   4D8D D5            [11]  486 	push	de
   4D8E DD 5E 07      [19]  487 	ld	e,7 (ix)
   4D91 DD 66 F5      [19]  488 	ld	h,-11 (ix)
   4D94 2E 00         [ 7]  489 	ld	l, #0x00
   4D96 55            [ 4]  490 	ld	d, l
   4D97 06 08         [ 7]  491 	ld	b, #0x08
   4D99                     492 00157$:
   4D99 29            [11]  493 	add	hl,hl
   4D9A 30 01         [12]  494 	jr	NC,00158$
   4D9C 19            [11]  495 	add	hl,de
   4D9D                     496 00158$:
   4D9D 10 FA         [13]  497 	djnz	00157$
   4D9F D1            [10]  498 	pop	de
   4DA0 DD 75 FE      [19]  499 	ld	-2 (ix),l
   4DA3 DD 74 FF      [19]  500 	ld	-1 (ix),h
   4DA6 DD 36 F6 00   [19]  501 	ld	-10 (ix),#0x00
   4DAA                     502 00112$:
   4DAA DD 7E F6      [19]  503 	ld	a,-10 (ix)
   4DAD DD 96 07      [19]  504 	sub	a, 7 (ix)
   4DB0 D2 31 4E      [10]  505 	jp	NC,00116$
                            506 ;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   4DB3 DD 7E F6      [19]  507 	ld	a,-10 (ix)
   4DB6 DD 77 FC      [19]  508 	ld	-4 (ix),a
   4DB9 DD 36 FD 00   [19]  509 	ld	-3 (ix),#0x00
   4DBD DD 7E FE      [19]  510 	ld	a,-2 (ix)
   4DC0 DD 86 FC      [19]  511 	add	a, -4 (ix)
   4DC3 6F            [ 4]  512 	ld	l,a
   4DC4 DD 7E FF      [19]  513 	ld	a,-1 (ix)
   4DC7 DD 8E FD      [19]  514 	adc	a, -3 (ix)
   4DCA 67            [ 4]  515 	ld	h,a
   4DCB DD 4E 09      [19]  516 	ld	c,9 (ix)
   4DCE DD 46 0A      [19]  517 	ld	b,10 (ix)
   4DD1 D5            [11]  518 	push	de
   4DD2 E5            [11]  519 	push	hl
   4DD3 C5            [11]  520 	push	bc
   4DD4 CD 02 63      [17]  521 	call	_cpct_getBit
   4DD7 DD 75 FB      [19]  522 	ld	-5 (ix),l
   4DDA D1            [10]  523 	pop	de
   4DDB DD 7E FB      [19]  524 	ld	a,-5 (ix)
   4DDE B7            [ 4]  525 	or	a, a
   4DDF 28 4A         [12]  526 	jr	Z,00113$
   4DE1 DD 7E F7      [19]  527 	ld	a,-9 (ix)
   4DE4 DD 86 FC      [19]  528 	add	a, -4 (ix)
   4DE7 4F            [ 4]  529 	ld	c,a
   4DE8 DD 7E F8      [19]  530 	ld	a,-8 (ix)
   4DEB DD 8E FD      [19]  531 	adc	a, -3 (ix)
   4DEE 47            [ 4]  532 	ld	b,a
   4DEF EE 80         [ 7]  533 	xor	a, #0x80
   4DF1 D6 8F         [ 7]  534 	sub	a, #0x8F
   4DF3 30 36         [12]  535 	jr	NC,00113$
                            536 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   4DF5 21 20 67      [10]  537 	ld	hl,#_p_world
   4DF8 09            [11]  538 	add	hl,bc
   4DF9 4D            [ 4]  539 	ld	c,l
   4DFA 44            [ 4]  540 	ld	b,h
                            541 ;src/game/world.c:83: if(tileType == FOREST)
   4DFB DD 7E FA      [19]  542 	ld	a,-6 (ix)
   4DFE B7            [ 4]  543 	or	a, a
   4DFF 28 06         [12]  544 	jr	Z,00104$
                            545 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   4E01 DD 7E 04      [19]  546 	ld	a,4 (ix)
   4E04 02            [ 7]  547 	ld	(bc),a
   4E05 18 24         [12]  548 	jr	00113$
   4E07                     549 00104$:
                            550 ;src/game/world.c:85: else if(tileType==DWELLINGS1)
   4E07 DD 7E F9      [19]  551 	ld	a,-7 (ix)
   4E0A B7            [ 4]  552 	or	a, a
   4E0B 28 1E         [12]  553 	jr	Z,00113$
                            554 ;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   4E0D C5            [11]  555 	push	bc
   4E0E D5            [11]  556 	push	de
   4E0F CD 4A 64      [17]  557 	call	_cpct_count2VSYNC
   4E12 CD 82 65      [17]  558 	call	_cpct_getRandomUniform_u8_f
   4E15 DD 75 FB      [19]  559 	ld	-5 (ix),l
   4E18 3E 03         [ 7]  560 	ld	a,#0x03
   4E1A F5            [11]  561 	push	af
   4E1B 33            [ 6]  562 	inc	sp
   4E1C DD 7E FB      [19]  563 	ld	a,-5 (ix)
   4E1F F5            [11]  564 	push	af
   4E20 33            [ 6]  565 	inc	sp
   4E21 CD E7 63      [17]  566 	call	__moduchar
   4E24 F1            [10]  567 	pop	af
   4E25 7D            [ 4]  568 	ld	a,l
   4E26 D1            [10]  569 	pop	de
   4E27 C1            [10]  570 	pop	bc
   4E28 C6 02         [ 7]  571 	add	a, #0x02
   4E2A 02            [ 7]  572 	ld	(bc),a
   4E2B                     573 00113$:
                            574 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   4E2B DD 34 F6      [23]  575 	inc	-10 (ix)
   4E2E C3 AA 4D      [10]  576 	jp	00112$
   4E31                     577 00116$:
                            578 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   4E31 21 50 00      [10]  579 	ld	hl,#0x0050
   4E34 19            [11]  580 	add	hl,de
   4E35 EB            [ 4]  581 	ex	de,hl
   4E36 DD 34 F5      [23]  582 	inc	-11 (ix)
   4E39 C3 76 4D      [10]  583 	jp	00115$
   4E3C                     584 00117$:
   4E3C DD F9         [10]  585 	ld	sp, ix
   4E3E DD E1         [14]  586 	pop	ix
   4E40 C9            [10]  587 	ret
                            588 ;src/game/world.c:93: void generateWorld()
                            589 ;	---------------------------------
                            590 ; Function generateWorld
                            591 ; ---------------------------------
   4E41                     592 _generateWorld::
   4E41 DD E5         [15]  593 	push	ix
   4E43 DD 21 00 00   [14]  594 	ld	ix,#0
   4E47 DD 39         [15]  595 	add	ix,sp
   4E49 21 E5 FF      [10]  596 	ld	hl,#-27
   4E4C 39            [11]  597 	add	hl,sp
   4E4D F9            [ 6]  598 	ld	sp,hl
                            599 ;src/game/world.c:102: cpct_srand((u32)cpct_count2VSYNC());
   4E4E CD 4A 64      [17]  600 	call	_cpct_count2VSYNC
   4E51 11 00 00      [10]  601 	ld	de,#0x0000
   4E54 CD 73 64      [17]  602 	call	_cpct_setSeed_mxor
                            603 ;src/game/world.c:106: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4E57 11 00 00      [10]  604 	ld	de,#0x0000
   4E5A                     605 00128$:
                            606 ;src/game/world.c:108: p_world[iy] = cpct_rand()%2;
   4E5A 21 20 67      [10]  607 	ld	hl,#_p_world
   4E5D 19            [11]  608 	add	hl,de
   4E5E E5            [11]  609 	push	hl
   4E5F D5            [11]  610 	push	de
   4E60 CD 5E 65      [17]  611 	call	_cpct_getRandom_mxor_u8
   4E63 7D            [ 4]  612 	ld	a,l
   4E64 D1            [10]  613 	pop	de
   4E65 E1            [10]  614 	pop	hl
   4E66 E6 01         [ 7]  615 	and	a, #0x01
   4E68 77            [ 7]  616 	ld	(hl),a
                            617 ;src/game/world.c:106: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4E69 13            [ 6]  618 	inc	de
   4E6A 7A            [ 4]  619 	ld	a,d
   4E6B EE 80         [ 7]  620 	xor	a, #0x80
   4E6D D6 8F         [ 7]  621 	sub	a, #0x8F
   4E6F 38 E9         [12]  622 	jr	C,00128$
                            623 ;src/game/world.c:112: for(ix=0; ix<NBFOREST; ix++)
   4E71 21 04 00      [10]  624 	ld	hl,#0x0004
   4E74 39            [11]  625 	add	hl,sp
   4E75 DD 75 F3      [19]  626 	ld	-13 (ix),l
   4E78 DD 74 F4      [19]  627 	ld	-12 (ix),h
   4E7B 01 00 00      [10]  628 	ld	bc,#0x0000
   4E7E                     629 00130$:
                            630 ;src/game/world.c:114: iy = cpct_rand()*15;
   4E7E C5            [11]  631 	push	bc
   4E7F CD 5E 65      [17]  632 	call	_cpct_getRandom_mxor_u8
   4E82 C1            [10]  633 	pop	bc
   4E83 5D            [ 4]  634 	ld	e,l
   4E84 16 00         [ 7]  635 	ld	d,#0x00
   4E86 6B            [ 4]  636 	ld	l, e
   4E87 62            [ 4]  637 	ld	h, d
   4E88 29            [11]  638 	add	hl, hl
   4E89 19            [11]  639 	add	hl, de
   4E8A 29            [11]  640 	add	hl, hl
   4E8B 19            [11]  641 	add	hl, de
   4E8C 29            [11]  642 	add	hl, hl
   4E8D 19            [11]  643 	add	hl, de
   4E8E DD 75 F8      [19]  644 	ld	-8 (ix),l
   4E91 DD 74 F9      [19]  645 	ld	-7 (ix),h
                            646 ;src/game/world.c:116: switch(cpct_rand()%4)
   4E94 C5            [11]  647 	push	bc
   4E95 CD 5E 65      [17]  648 	call	_cpct_getRandom_mxor_u8
   4E98 7D            [ 4]  649 	ld	a,l
   4E99 C1            [10]  650 	pop	bc
   4E9A E6 03         [ 7]  651 	and	a, #0x03
   4E9C DD 77 F7      [19]  652 	ld	-9 (ix),a
   4E9F 3E 03         [ 7]  653 	ld	a,#0x03
   4EA1 DD 96 F7      [19]  654 	sub	a, -9 (ix)
   4EA4 DA 08 50      [10]  655 	jp	C,00106$
                            656 ;src/game/world.c:120: p_forest[1] = 0b11000111;
   4EA7 E5            [11]  657 	push	hl
   4EA8 DD 6E F3      [19]  658 	ld	l,-13 (ix)
   4EAB DD 66 F4      [19]  659 	ld	h,-12 (ix)
   4EAE 23            [ 6]  660 	inc	hl
   4EAF E5            [11]  661 	push	hl
   4EB0 FD E1         [14]  662 	pop	iy
   4EB2 E1            [10]  663 	pop	hl
                            664 ;src/game/world.c:121: p_forest[2] = 0b11011110;
   4EB3 DD 5E F3      [19]  665 	ld	e,-13 (ix)
   4EB6 DD 56 F4      [19]  666 	ld	d,-12 (ix)
   4EB9 13            [ 6]  667 	inc	de
   4EBA 13            [ 6]  668 	inc	de
                            669 ;src/game/world.c:122: p_forest[3] = 0b01111110;
   4EBB DD 7E F3      [19]  670 	ld	a,-13 (ix)
   4EBE C6 03         [ 7]  671 	add	a, #0x03
   4EC0 DD 77 F1      [19]  672 	ld	-15 (ix),a
   4EC3 DD 7E F4      [19]  673 	ld	a,-12 (ix)
   4EC6 CE 00         [ 7]  674 	adc	a, #0x00
   4EC8 DD 77 F2      [19]  675 	ld	-14 (ix),a
                            676 ;src/game/world.c:123: p_forest[4] = 0b11111110; 
   4ECB DD 7E F3      [19]  677 	ld	a,-13 (ix)
   4ECE C6 04         [ 7]  678 	add	a, #0x04
   4ED0 DD 77 FA      [19]  679 	ld	-6 (ix),a
   4ED3 DD 7E F4      [19]  680 	ld	a,-12 (ix)
   4ED6 CE 00         [ 7]  681 	adc	a, #0x00
   4ED8 DD 77 FB      [19]  682 	ld	-5 (ix),a
                            683 ;src/game/world.c:124: p_forest[5] = 0b01111111;
   4EDB DD 7E F3      [19]  684 	ld	a,-13 (ix)
   4EDE C6 05         [ 7]  685 	add	a, #0x05
   4EE0 DD 77 FC      [19]  686 	ld	-4 (ix),a
   4EE3 DD 7E F4      [19]  687 	ld	a,-12 (ix)
   4EE6 CE 00         [ 7]  688 	adc	a, #0x00
   4EE8 DD 77 FD      [19]  689 	ld	-3 (ix),a
                            690 ;src/game/world.c:125: p_forest[6] = 0b11101111;
   4EEB DD 7E F3      [19]  691 	ld	a,-13 (ix)
   4EEE C6 06         [ 7]  692 	add	a, #0x06
   4EF0 DD 77 F5      [19]  693 	ld	-11 (ix),a
   4EF3 DD 7E F4      [19]  694 	ld	a,-12 (ix)
   4EF6 CE 00         [ 7]  695 	adc	a, #0x00
   4EF8 DD 77 F6      [19]  696 	ld	-10 (ix),a
                            697 ;src/game/world.c:126: p_forest[7] = 0b11001111;
   4EFB DD 7E F3      [19]  698 	ld	a,-13 (ix)
   4EFE C6 07         [ 7]  699 	add	a, #0x07
   4F00 DD 77 FE      [19]  700 	ld	-2 (ix),a
   4F03 DD 7E F4      [19]  701 	ld	a,-12 (ix)
   4F06 CE 00         [ 7]  702 	adc	a, #0x00
   4F08 DD 77 FF      [19]  703 	ld	-1 (ix),a
                            704 ;src/game/world.c:116: switch(cpct_rand()%4)
   4F0B D5            [11]  705 	push	de
   4F0C DD 5E F7      [19]  706 	ld	e,-9 (ix)
   4F0F 16 00         [ 7]  707 	ld	d,#0x00
   4F11 21 19 4F      [10]  708 	ld	hl,#00228$
   4F14 19            [11]  709 	add	hl,de
   4F15 19            [11]  710 	add	hl,de
   4F16 19            [11]  711 	add	hl,de
   4F17 D1            [10]  712 	pop	de
   4F18 E9            [ 4]  713 	jp	(hl)
   4F19                     714 00228$:
   4F19 C3 25 4F      [10]  715 	jp	00102$
   4F1C C3 5F 4F      [10]  716 	jp	00103$
   4F1F C3 98 4F      [10]  717 	jp	00104$
   4F22 C3 D1 4F      [10]  718 	jp	00105$
                            719 ;src/game/world.c:118: case 0:
   4F25                     720 00102$:
                            721 ;src/game/world.c:119: p_forest[0] = 0b10000100;
   4F25 DD 6E F3      [19]  722 	ld	l,-13 (ix)
   4F28 DD 66 F4      [19]  723 	ld	h,-12 (ix)
   4F2B 36 84         [10]  724 	ld	(hl),#0x84
                            725 ;src/game/world.c:120: p_forest[1] = 0b11000111;
   4F2D FD 36 00 C7   [19]  726 	ld	0 (iy), #0xC7
                            727 ;src/game/world.c:121: p_forest[2] = 0b11011110;
   4F31 3E DE         [ 7]  728 	ld	a,#0xDE
   4F33 12            [ 7]  729 	ld	(de),a
                            730 ;src/game/world.c:122: p_forest[3] = 0b01111110;
   4F34 DD 6E F1      [19]  731 	ld	l,-15 (ix)
   4F37 DD 66 F2      [19]  732 	ld	h,-14 (ix)
   4F3A 36 7E         [10]  733 	ld	(hl),#0x7E
                            734 ;src/game/world.c:123: p_forest[4] = 0b11111110; 
   4F3C DD 6E FA      [19]  735 	ld	l,-6 (ix)
   4F3F DD 66 FB      [19]  736 	ld	h,-5 (ix)
   4F42 36 FE         [10]  737 	ld	(hl),#0xFE
                            738 ;src/game/world.c:124: p_forest[5] = 0b01111111;
   4F44 DD 6E FC      [19]  739 	ld	l,-4 (ix)
   4F47 DD 66 FD      [19]  740 	ld	h,-3 (ix)
   4F4A 36 7F         [10]  741 	ld	(hl),#0x7F
                            742 ;src/game/world.c:125: p_forest[6] = 0b11101111;
   4F4C DD 6E F5      [19]  743 	ld	l,-11 (ix)
   4F4F DD 66 F6      [19]  744 	ld	h,-10 (ix)
   4F52 36 EF         [10]  745 	ld	(hl),#0xEF
                            746 ;src/game/world.c:126: p_forest[7] = 0b11001111;
   4F54 DD 6E FE      [19]  747 	ld	l,-2 (ix)
   4F57 DD 66 FF      [19]  748 	ld	h,-1 (ix)
   4F5A 36 CF         [10]  749 	ld	(hl),#0xCF
                            750 ;src/game/world.c:127: break;
   4F5C C3 08 50      [10]  751 	jp	00106$
                            752 ;src/game/world.c:128: case 1:
   4F5F                     753 00103$:
                            754 ;src/game/world.c:129: p_forest[0] = 0b00001100;
   4F5F DD 6E F3      [19]  755 	ld	l,-13 (ix)
   4F62 DD 66 F4      [19]  756 	ld	h,-12 (ix)
   4F65 36 0C         [10]  757 	ld	(hl),#0x0C
                            758 ;src/game/world.c:130: p_forest[1] = 0b11111000;
   4F67 FD 36 00 F8   [19]  759 	ld	0 (iy), #0xF8
                            760 ;src/game/world.c:131: p_forest[2] = 0b00111111;
   4F6B 3E 3F         [ 7]  761 	ld	a,#0x3F
   4F6D 12            [ 7]  762 	ld	(de),a
                            763 ;src/game/world.c:132: p_forest[3] = 0b01111110;
   4F6E DD 6E F1      [19]  764 	ld	l,-15 (ix)
   4F71 DD 66 F2      [19]  765 	ld	h,-14 (ix)
   4F74 36 7E         [10]  766 	ld	(hl),#0x7E
                            767 ;src/game/world.c:133: p_forest[4] = 0b11111110; 
   4F76 DD 6E FA      [19]  768 	ld	l,-6 (ix)
   4F79 DD 66 FB      [19]  769 	ld	h,-5 (ix)
   4F7C 36 FE         [10]  770 	ld	(hl),#0xFE
                            771 ;src/game/world.c:134: p_forest[5] = 0b01011111;
   4F7E DD 6E FC      [19]  772 	ld	l,-4 (ix)
   4F81 DD 66 FD      [19]  773 	ld	h,-3 (ix)
   4F84 36 5F         [10]  774 	ld	(hl),#0x5F
                            775 ;src/game/world.c:135: p_forest[6] = 0b11001111;
   4F86 DD 6E F5      [19]  776 	ld	l,-11 (ix)
   4F89 DD 66 F6      [19]  777 	ld	h,-10 (ix)
   4F8C 36 CF         [10]  778 	ld	(hl),#0xCF
                            779 ;src/game/world.c:136: p_forest[7] = 0b10001100;
   4F8E DD 6E FE      [19]  780 	ld	l,-2 (ix)
   4F91 DD 66 FF      [19]  781 	ld	h,-1 (ix)
   4F94 36 8C         [10]  782 	ld	(hl),#0x8C
                            783 ;src/game/world.c:137: break;
   4F96 18 70         [12]  784 	jr	00106$
                            785 ;src/game/world.c:138: case 2:
   4F98                     786 00104$:
                            787 ;src/game/world.c:139: p_forest[0] = 0b00110000;
   4F98 DD 6E F3      [19]  788 	ld	l,-13 (ix)
   4F9B DD 66 F4      [19]  789 	ld	h,-12 (ix)
   4F9E 36 30         [10]  790 	ld	(hl),#0x30
                            791 ;src/game/world.c:140: p_forest[1] = 0b11110100;
   4FA0 FD 36 00 F4   [19]  792 	ld	0 (iy), #0xF4
                            793 ;src/game/world.c:141: p_forest[2] = 0b11111111;
   4FA4 3E FF         [ 7]  794 	ld	a,#0xFF
   4FA6 12            [ 7]  795 	ld	(de),a
                            796 ;src/game/world.c:142: p_forest[3] = 0b11111111;
   4FA7 DD 6E F1      [19]  797 	ld	l,-15 (ix)
   4FAA DD 66 F2      [19]  798 	ld	h,-14 (ix)
   4FAD 36 FF         [10]  799 	ld	(hl),#0xFF
                            800 ;src/game/world.c:143: p_forest[4] = 0b01111100;
   4FAF DD 6E FA      [19]  801 	ld	l,-6 (ix)
   4FB2 DD 66 FB      [19]  802 	ld	h,-5 (ix)
   4FB5 36 7C         [10]  803 	ld	(hl),#0x7C
                            804 ;src/game/world.c:144: p_forest[5] = 0b01111110;
   4FB7 DD 6E FC      [19]  805 	ld	l,-4 (ix)
   4FBA DD 66 FD      [19]  806 	ld	h,-3 (ix)
   4FBD 36 7E         [10]  807 	ld	(hl),#0x7E
                            808 ;src/game/world.c:145: p_forest[6] = 0b00111110;
   4FBF DD 6E F5      [19]  809 	ld	l,-11 (ix)
   4FC2 DD 66 F6      [19]  810 	ld	h,-10 (ix)
   4FC5 36 3E         [10]  811 	ld	(hl),#0x3E
                            812 ;src/game/world.c:146: p_forest[7] = 0b00011000;
   4FC7 DD 6E FE      [19]  813 	ld	l,-2 (ix)
   4FCA DD 66 FF      [19]  814 	ld	h,-1 (ix)
   4FCD 36 18         [10]  815 	ld	(hl),#0x18
                            816 ;src/game/world.c:147: break;
   4FCF 18 37         [12]  817 	jr	00106$
                            818 ;src/game/world.c:148: case 3:
   4FD1                     819 00105$:
                            820 ;src/game/world.c:149: p_forest[0] = 0b11000000 , 
   4FD1 DD 6E F3      [19]  821 	ld	l,-13 (ix)
   4FD4 DD 66 F4      [19]  822 	ld	h,-12 (ix)
   4FD7 36 C0         [10]  823 	ld	(hl),#0xC0
                            824 ;src/game/world.c:150: p_forest[1] = 0b11100111;
   4FD9 FD 36 00 E7   [19]  825 	ld	0 (iy), #0xE7
                            826 ;src/game/world.c:151: p_forest[2] = 0b01111110;
   4FDD 3E 7E         [ 7]  827 	ld	a,#0x7E
   4FDF 12            [ 7]  828 	ld	(de),a
                            829 ;src/game/world.c:152: p_forest[3] = 0b01111110;
   4FE0 DD 6E F1      [19]  830 	ld	l,-15 (ix)
   4FE3 DD 66 F2      [19]  831 	ld	h,-14 (ix)
   4FE6 36 7E         [10]  832 	ld	(hl),#0x7E
                            833 ;src/game/world.c:153: p_forest[4] = 0b11111110;
   4FE8 DD 6E FA      [19]  834 	ld	l,-6 (ix)
   4FEB DD 66 FB      [19]  835 	ld	h,-5 (ix)
   4FEE 36 FE         [10]  836 	ld	(hl),#0xFE
                            837 ;src/game/world.c:154: p_forest[5] = 0b11111100;
   4FF0 DD 6E FC      [19]  838 	ld	l,-4 (ix)
   4FF3 DD 66 FD      [19]  839 	ld	h,-3 (ix)
   4FF6 36 FC         [10]  840 	ld	(hl),#0xFC
                            841 ;src/game/world.c:155: p_forest[6] = 0b01111000;
   4FF8 DD 6E F5      [19]  842 	ld	l,-11 (ix)
   4FFB DD 66 F6      [19]  843 	ld	h,-10 (ix)
   4FFE 36 78         [10]  844 	ld	(hl),#0x78
                            845 ;src/game/world.c:156: p_forest[7] = 0b00110000;
   5000 DD 6E FE      [19]  846 	ld	l,-2 (ix)
   5003 DD 66 FF      [19]  847 	ld	h,-1 (ix)
   5006 36 30         [10]  848 	ld	(hl),#0x30
                            849 ;src/game/world.c:158: }
   5008                     850 00106$:
                            851 ;src/game/world.c:159: patternTile(FOREST, iy, 8, 8, p_forest);
   5008 DD 6E F3      [19]  852 	ld	l,-13 (ix)
   500B DD 66 F4      [19]  853 	ld	h,-12 (ix)
   500E C5            [11]  854 	push	bc
   500F E5            [11]  855 	push	hl
   5010 21 08 08      [10]  856 	ld	hl,#0x0808
   5013 E5            [11]  857 	push	hl
   5014 DD 6E F8      [19]  858 	ld	l,-8 (ix)
   5017 DD 66 F9      [19]  859 	ld	h,-7 (ix)
   501A E5            [11]  860 	push	hl
   501B 3E 08         [ 7]  861 	ld	a,#0x08
   501D F5            [11]  862 	push	af
   501E 33            [ 6]  863 	inc	sp
   501F CD 44 4D      [17]  864 	call	_patternTile
   5022 21 07 00      [10]  865 	ld	hl,#7
   5025 39            [11]  866 	add	hl,sp
   5026 F9            [ 6]  867 	ld	sp,hl
   5027 C1            [10]  868 	pop	bc
                            869 ;src/game/world.c:112: for(ix=0; ix<NBFOREST; ix++)
   5028 03            [ 6]  870 	inc	bc
   5029 79            [ 4]  871 	ld	a,c
   502A D6 32         [ 7]  872 	sub	a, #0x32
   502C 78            [ 4]  873 	ld	a,b
   502D 17            [ 4]  874 	rla
   502E 3F            [ 4]  875 	ccf
   502F 1F            [ 4]  876 	rra
   5030 DE 80         [ 7]  877 	sbc	a, #0x80
   5032 DA 7E 4E      [10]  878 	jp	C,00130$
                            879 ;src/game/world.c:165: for(ix=0; ix<NBFARM; ix++)
   5035 01 3C 00      [10]  880 	ld	bc,#0x003C
   5038                     881 00134$:
                            882 ;src/game/world.c:167: iy = cpct_rand()*15; // (WIDTH*HEIGHT)/255;
   5038 C5            [11]  883 	push	bc
   5039 CD 5E 65      [17]  884 	call	_cpct_getRandom_mxor_u8
   503C C1            [10]  885 	pop	bc
   503D 5D            [ 4]  886 	ld	e,l
   503E 16 00         [ 7]  887 	ld	d,#0x00
   5040 6B            [ 4]  888 	ld	l, e
   5041 62            [ 4]  889 	ld	h, d
   5042 29            [11]  890 	add	hl, hl
   5043 19            [11]  891 	add	hl, de
   5044 29            [11]  892 	add	hl, hl
   5045 19            [11]  893 	add	hl, de
   5046 29            [11]  894 	add	hl, hl
   5047 19            [11]  895 	add	hl, de
   5048 DD 75 FE      [19]  896 	ld	-2 (ix),l
   504B DD 74 FF      [19]  897 	ld	-1 (ix),h
                            898 ;src/game/world.c:169: shift = cpct_rand()%10;
   504E C5            [11]  899 	push	bc
   504F CD 5E 65      [17]  900 	call	_cpct_getRandom_mxor_u8
   5052 55            [ 4]  901 	ld	d,l
   5053 3E 0A         [ 7]  902 	ld	a,#0x0A
   5055 F5            [11]  903 	push	af
   5056 33            [ 6]  904 	inc	sp
   5057 D5            [11]  905 	push	de
   5058 33            [ 6]  906 	inc	sp
   5059 CD E7 63      [17]  907 	call	__moduchar
   505C F1            [10]  908 	pop	af
   505D C1            [10]  909 	pop	bc
   505E 26 00         [ 7]  910 	ld	h,#0x00
                            911 ;src/game/world.c:170: shift=iy-shift+5;
   5060 DD 7E FE      [19]  912 	ld	a,-2 (ix)
   5063 95            [ 4]  913 	sub	a, l
   5064 5F            [ 4]  914 	ld	e,a
   5065 DD 7E FF      [19]  915 	ld	a,-1 (ix)
   5068 9C            [ 4]  916 	sbc	a, h
   5069 57            [ 4]  917 	ld	d,a
   506A 21 05 00      [10]  918 	ld	hl,#0x0005
   506D 19            [11]  919 	add	hl,de
   506E DD 75 FE      [19]  920 	ld	-2 (ix),l
   5071 DD 74 FF      [19]  921 	ld	-1 (ix),h
                            922 ;src/game/world.c:172: if(shift>0 && shift<WIDTH*HEIGHT)
   5074 AF            [ 4]  923 	xor	a, a
   5075 DD BE FE      [19]  924 	cp	a, -2 (ix)
   5078 DD 9E FF      [19]  925 	sbc	a, -1 (ix)
   507B E2 80 50      [10]  926 	jp	PO, 00229$
   507E EE 80         [ 7]  927 	xor	a, #0x80
   5080                     928 00229$:
   5080 F2 A5 50      [10]  929 	jp	P,00109$
   5083 DD 7E FF      [19]  930 	ld	a,-1 (ix)
   5086 EE 80         [ 7]  931 	xor	a, #0x80
   5088 D6 8F         [ 7]  932 	sub	a, #0x8F
   508A 30 19         [12]  933 	jr	NC,00109$
                            934 ;src/game/world.c:173: p_world[shift] = cpct_rand()%2+5;
   508C 3E 20         [ 7]  935 	ld	a,#<(_p_world)
   508E DD 86 FE      [19]  936 	add	a, -2 (ix)
   5091 6F            [ 4]  937 	ld	l,a
   5092 3E 67         [ 7]  938 	ld	a,#>(_p_world)
   5094 DD 8E FF      [19]  939 	adc	a, -1 (ix)
   5097 67            [ 4]  940 	ld	h,a
   5098 E5            [11]  941 	push	hl
   5099 C5            [11]  942 	push	bc
   509A CD 5E 65      [17]  943 	call	_cpct_getRandom_mxor_u8
   509D 7D            [ 4]  944 	ld	a,l
   509E C1            [10]  945 	pop	bc
   509F E1            [10]  946 	pop	hl
   50A0 E6 01         [ 7]  947 	and	a, #0x01
   50A2 C6 05         [ 7]  948 	add	a, #0x05
   50A4 77            [ 7]  949 	ld	(hl),a
   50A5                     950 00109$:
   50A5 0B            [ 6]  951 	dec	bc
                            952 ;src/game/world.c:165: for(ix=0; ix<NBFARM; ix++)
   50A6 78            [ 4]  953 	ld	a,b
   50A7 B1            [ 4]  954 	or	a,c
   50A8 20 8E         [12]  955 	jr	NZ,00134$
                            956 ;src/game/world.c:178: for(ix=0; ix<NBURBAN; ix++)
   50AA 01 14 00      [10]  957 	ld	bc,#0x0014
   50AD                     958 00137$:
                            959 ;src/game/world.c:180: iy = cpct_rand()*15; // (WIDTH*HEIGHT)/255;
   50AD C5            [11]  960 	push	bc
   50AE CD 5E 65      [17]  961 	call	_cpct_getRandom_mxor_u8
   50B1 C1            [10]  962 	pop	bc
   50B2 5D            [ 4]  963 	ld	e,l
   50B3 16 00         [ 7]  964 	ld	d,#0x00
   50B5 6B            [ 4]  965 	ld	l, e
   50B6 62            [ 4]  966 	ld	h, d
   50B7 29            [11]  967 	add	hl, hl
   50B8 19            [11]  968 	add	hl, de
   50B9 29            [11]  969 	add	hl, hl
   50BA 19            [11]  970 	add	hl, de
   50BB 29            [11]  971 	add	hl, hl
   50BC 19            [11]  972 	add	hl, de
   50BD DD 75 FE      [19]  973 	ld	-2 (ix),l
   50C0 DD 74 FF      [19]  974 	ld	-1 (ix),h
                            975 ;src/game/world.c:182: shift = cpct_rand()%10;
   50C3 C5            [11]  976 	push	bc
   50C4 CD 5E 65      [17]  977 	call	_cpct_getRandom_mxor_u8
   50C7 55            [ 4]  978 	ld	d,l
   50C8 3E 0A         [ 7]  979 	ld	a,#0x0A
   50CA F5            [11]  980 	push	af
   50CB 33            [ 6]  981 	inc	sp
   50CC D5            [11]  982 	push	de
   50CD 33            [ 6]  983 	inc	sp
   50CE CD E7 63      [17]  984 	call	__moduchar
   50D1 F1            [10]  985 	pop	af
   50D2 C1            [10]  986 	pop	bc
   50D3 26 00         [ 7]  987 	ld	h,#0x00
                            988 ;src/game/world.c:183: shift=iy-shift+5;
   50D5 DD 7E FE      [19]  989 	ld	a,-2 (ix)
   50D8 95            [ 4]  990 	sub	a, l
   50D9 5F            [ 4]  991 	ld	e,a
   50DA DD 7E FF      [19]  992 	ld	a,-1 (ix)
   50DD 9C            [ 4]  993 	sbc	a, h
   50DE 57            [ 4]  994 	ld	d,a
   50DF 13            [ 6]  995 	inc	de
   50E0 13            [ 6]  996 	inc	de
   50E1 13            [ 6]  997 	inc	de
   50E2 13            [ 6]  998 	inc	de
   50E3 13            [ 6]  999 	inc	de
                           1000 ;src/game/world.c:185: if(shift>0 && shift<WIDTH*HEIGHT)
   50E4 AF            [ 4] 1001 	xor	a, a
   50E5 BB            [ 4] 1002 	cp	a, e
   50E6 9A            [ 4] 1003 	sbc	a, d
   50E7 E2 EC 50      [10] 1004 	jp	PO, 00230$
   50EA EE 80         [ 7] 1005 	xor	a, #0x80
   50EC                    1006 00230$:
   50EC F2 1A 51      [10] 1007 	jp	P,00113$
   50EF 7A            [ 4] 1008 	ld	a,d
   50F0 EE 80         [ 7] 1009 	xor	a, #0x80
   50F2 D6 8F         [ 7] 1010 	sub	a, #0x8F
   50F4 30 24         [12] 1011 	jr	NC,00113$
                           1012 ;src/game/world.c:186: p_world[shift] = cpct_rand()%3+2;
   50F6 21 20 67      [10] 1013 	ld	hl,#_p_world
   50F9 19            [11] 1014 	add	hl,de
   50FA DD 75 FE      [19] 1015 	ld	-2 (ix),l
   50FD DD 74 FF      [19] 1016 	ld	-1 (ix),h
   5100 C5            [11] 1017 	push	bc
   5101 CD 5E 65      [17] 1018 	call	_cpct_getRandom_mxor_u8
   5104 55            [ 4] 1019 	ld	d,l
   5105 3E 03         [ 7] 1020 	ld	a,#0x03
   5107 F5            [11] 1021 	push	af
   5108 33            [ 6] 1022 	inc	sp
   5109 D5            [11] 1023 	push	de
   510A 33            [ 6] 1024 	inc	sp
   510B CD E7 63      [17] 1025 	call	__moduchar
   510E F1            [10] 1026 	pop	af
   510F 7D            [ 4] 1027 	ld	a,l
   5110 C1            [10] 1028 	pop	bc
   5111 C6 02         [ 7] 1029 	add	a, #0x02
   5113 DD 6E FE      [19] 1030 	ld	l,-2 (ix)
   5116 DD 66 FF      [19] 1031 	ld	h,-1 (ix)
   5119 77            [ 7] 1032 	ld	(hl),a
   511A                    1033 00113$:
   511A 0B            [ 6] 1034 	dec	bc
                           1035 ;src/game/world.c:178: for(ix=0; ix<NBURBAN; ix++)
   511B 78            [ 4] 1036 	ld	a,b
   511C B1            [ 4] 1037 	or	a,c
   511D 20 8E         [12] 1038 	jr	NZ,00137$
                           1039 ;src/game/world.c:189: for(ix=0; ix<NBURBAN; ix++)
   511F 21 00 00      [10] 1040 	ld	hl,#0x0000
   5122 39            [11] 1041 	add	hl,sp
   5123 DD 75 FE      [19] 1042 	ld	-2 (ix),l
   5126 DD 74 FF      [19] 1043 	ld	-1 (ix),h
   5129 DD 36 E7 00   [19] 1044 	ld	-25 (ix),#0x00
   512D DD 36 E8 00   [19] 1045 	ld	-24 (ix),#0x00
   5131                    1046 00138$:
                           1047 ;src/game/world.c:191: iy = cpct_rand()*15; // (WIDTH*HEIGHT)/255;
   5131 CD 5E 65      [17] 1048 	call	_cpct_getRandom_mxor_u8
   5134 4D            [ 4] 1049 	ld	c,l
   5135 06 00         [ 7] 1050 	ld	b,#0x00
   5137 69            [ 4] 1051 	ld	l, c
   5138 60            [ 4] 1052 	ld	h, b
   5139 29            [11] 1053 	add	hl, hl
   513A 09            [11] 1054 	add	hl, bc
   513B 29            [11] 1055 	add	hl, hl
   513C 09            [11] 1056 	add	hl, bc
   513D 29            [11] 1057 	add	hl, hl
   513E 09            [11] 1058 	add	hl, bc
   513F 5D            [ 4] 1059 	ld	e,l
   5140 54            [ 4] 1060 	ld	d,h
                           1061 ;src/game/world.c:192: shift = cpct_rand()%10;
   5141 D5            [11] 1062 	push	de
   5142 CD 5E 65      [17] 1063 	call	_cpct_getRandom_mxor_u8
   5145 45            [ 4] 1064 	ld	b,l
   5146 D1            [10] 1065 	pop	de
   5147 D5            [11] 1066 	push	de
   5148 3E 0A         [ 7] 1067 	ld	a,#0x0A
   514A F5            [11] 1068 	push	af
   514B 33            [ 6] 1069 	inc	sp
   514C C5            [11] 1070 	push	bc
   514D 33            [ 6] 1071 	inc	sp
   514E CD E7 63      [17] 1072 	call	__moduchar
   5151 F1            [10] 1073 	pop	af
   5152 D1            [10] 1074 	pop	de
   5153 26 00         [ 7] 1075 	ld	h,#0x00
                           1076 ;src/game/world.c:193: iy-=shift+5;
   5155 01 05 00      [10] 1077 	ld	bc,#0x0005
   5158 09            [11] 1078 	add	hl,bc
   5159 7B            [ 4] 1079 	ld	a,e
   515A 95            [ 4] 1080 	sub	a, l
   515B 5F            [ 4] 1081 	ld	e,a
   515C 7A            [ 4] 1082 	ld	a,d
   515D 9C            [ 4] 1083 	sbc	a, h
   515E 57            [ 4] 1084 	ld	d,a
                           1085 ;src/game/world.c:195: switch(cpct_rand()%6)
   515F D5            [11] 1086 	push	de
   5160 CD 5E 65      [17] 1087 	call	_cpct_getRandom_mxor_u8
   5163 45            [ 4] 1088 	ld	b,l
   5164 D1            [10] 1089 	pop	de
   5165 D5            [11] 1090 	push	de
   5166 3E 06         [ 7] 1091 	ld	a,#0x06
   5168 F5            [11] 1092 	push	af
   5169 33            [ 6] 1093 	inc	sp
   516A C5            [11] 1094 	push	bc
   516B 33            [ 6] 1095 	inc	sp
   516C CD E7 63      [17] 1096 	call	__moduchar
   516F F1            [10] 1097 	pop	af
   5170 DD 75 F5      [19] 1098 	ld	-11 (ix),l
   5173 D1            [10] 1099 	pop	de
   5174 3E 05         [ 7] 1100 	ld	a,#0x05
   5176 DD 96 F5      [19] 1101 	sub	a, -11 (ix)
   5179 38 6C         [12] 1102 	jr	C,00122$
                           1103 ;src/game/world.c:199: p_cities[1] = 0b01000110; // 01100010;
   517B DD 4E FE      [19] 1104 	ld	c,-2 (ix)
   517E DD 46 FF      [19] 1105 	ld	b,-1 (ix)
   5181 03            [ 6] 1106 	inc	bc
                           1107 ;src/game/world.c:195: switch(cpct_rand()%6)
   5182 D5            [11] 1108 	push	de
   5183 DD 5E F5      [19] 1109 	ld	e,-11 (ix)
   5186 16 00         [ 7] 1110 	ld	d,#0x00
   5188 21 8F 51      [10] 1111 	ld	hl,#00231$
   518B 19            [11] 1112 	add	hl,de
   518C 19            [11] 1113 	add	hl,de
                           1114 ;src/game/world.c:197: case 0:
   518D D1            [10] 1115 	pop	de
   518E E9            [ 4] 1116 	jp	(hl)
   518F                    1117 00231$:
   518F 18 0A         [12] 1118 	jr	00116$
   5191 18 15         [12] 1119 	jr	00117$
   5193 18 20         [12] 1120 	jr	00118$
   5195 18 2B         [12] 1121 	jr	00119$
   5197 18 36         [12] 1122 	jr	00120$
   5199 18 41         [12] 1123 	jr	00121$
   519B                    1124 00116$:
                           1125 ;src/game/world.c:198: p_cities[0] = 0b01110010; // 01001110;
   519B DD 6E FE      [19] 1126 	ld	l,-2 (ix)
   519E DD 66 FF      [19] 1127 	ld	h,-1 (ix)
   51A1 36 72         [10] 1128 	ld	(hl),#0x72
                           1129 ;src/game/world.c:199: p_cities[1] = 0b01000110; // 01100010;
   51A3 3E 46         [ 7] 1130 	ld	a,#0x46
   51A5 02            [ 7] 1131 	ld	(bc),a
                           1132 ;src/game/world.c:200: break;
   51A6 18 3F         [12] 1133 	jr	00122$
                           1134 ;src/game/world.c:202: case 1:
   51A8                    1135 00117$:
                           1136 ;src/game/world.c:203: p_cities[0] = 0b01100000; // 00000110;
   51A8 DD 6E FE      [19] 1137 	ld	l,-2 (ix)
   51AB DD 66 FF      [19] 1138 	ld	h,-1 (ix)
   51AE 36 60         [10] 1139 	ld	(hl),#0x60
                           1140 ;src/game/world.c:204: p_cities[1] = 0b00000110; // 01100000;
   51B0 3E 06         [ 7] 1141 	ld	a,#0x06
   51B2 02            [ 7] 1142 	ld	(bc),a
                           1143 ;src/game/world.c:205: break;
   51B3 18 32         [12] 1144 	jr	00122$
                           1145 ;src/game/world.c:207: case 2:
   51B5                    1146 00118$:
                           1147 ;src/game/world.c:208: p_cities[0] = 0b00010000; // 00001000;
   51B5 DD 6E FE      [19] 1148 	ld	l,-2 (ix)
   51B8 DD 66 FF      [19] 1149 	ld	h,-1 (ix)
   51BB 36 10         [10] 1150 	ld	(hl),#0x10
                           1151 ;src/game/world.c:209: p_cities[1] = 0b00000110; // 01100000;
   51BD 3E 06         [ 7] 1152 	ld	a,#0x06
   51BF 02            [ 7] 1153 	ld	(bc),a
                           1154 ;src/game/world.c:210: break;
   51C0 18 25         [12] 1155 	jr	00122$
                           1156 ;src/game/world.c:212: case 3:
   51C2                    1157 00119$:
                           1158 ;src/game/world.c:213: p_cities[0] = 0b11000000; // 00000011;
   51C2 DD 6E FE      [19] 1159 	ld	l,-2 (ix)
   51C5 DD 66 FF      [19] 1160 	ld	h,-1 (ix)
   51C8 36 C0         [10] 1161 	ld	(hl),#0xC0
                           1162 ;src/game/world.c:214: p_cities[1] = 0b00110001; // 10001100;
   51CA 3E 31         [ 7] 1163 	ld	a,#0x31
   51CC 02            [ 7] 1164 	ld	(bc),a
                           1165 ;src/game/world.c:215: break;
   51CD 18 18         [12] 1166 	jr	00122$
                           1167 ;src/game/world.c:217: case 4:
   51CF                    1168 00120$:
                           1169 ;src/game/world.c:218: p_cities[0] = 0b11000100; // 00100011;
   51CF DD 6E FE      [19] 1170 	ld	l,-2 (ix)
   51D2 DD 66 FF      [19] 1171 	ld	h,-1 (ix)
   51D5 36 C4         [10] 1172 	ld	(hl),#0xC4
                           1173 ;src/game/world.c:219: p_cities[1] = 0b00001110; // 01110000;
   51D7 3E 0E         [ 7] 1174 	ld	a,#0x0E
   51D9 02            [ 7] 1175 	ld	(bc),a
                           1176 ;src/game/world.c:220: break;
   51DA 18 0B         [12] 1177 	jr	00122$
                           1178 ;src/game/world.c:222: case 5:
   51DC                    1179 00121$:
                           1180 ;src/game/world.c:223: p_cities[0] = 0b01000000; // 00000010;
   51DC DD 6E FE      [19] 1181 	ld	l,-2 (ix)
   51DF DD 66 FF      [19] 1182 	ld	h,-1 (ix)
   51E2 36 40         [10] 1183 	ld	(hl),#0x40
                           1184 ;src/game/world.c:224: p_cities[1] = 0b01001110; // 01110010;
   51E4 3E 4E         [ 7] 1185 	ld	a,#0x4E
   51E6 02            [ 7] 1186 	ld	(bc),a
                           1187 ;src/game/world.c:226: }
   51E7                    1188 00122$:
                           1189 ;src/game/world.c:228: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   51E7 DD 6E FE      [19] 1190 	ld	l,-2 (ix)
   51EA DD 66 FF      [19] 1191 	ld	h,-1 (ix)
   51ED E5            [11] 1192 	push	hl
   51EE 21 04 04      [10] 1193 	ld	hl,#0x0404
   51F1 E5            [11] 1194 	push	hl
   51F2 D5            [11] 1195 	push	de
   51F3 3E 02         [ 7] 1196 	ld	a,#0x02
   51F5 F5            [11] 1197 	push	af
   51F6 33            [ 6] 1198 	inc	sp
   51F7 CD 44 4D      [17] 1199 	call	_patternTile
   51FA 21 07 00      [10] 1200 	ld	hl,#7
   51FD 39            [11] 1201 	add	hl,sp
   51FE F9            [ 6] 1202 	ld	sp,hl
                           1203 ;src/game/world.c:189: for(ix=0; ix<NBURBAN; ix++)
   51FF DD 34 E7      [23] 1204 	inc	-25 (ix)
   5202 20 03         [12] 1205 	jr	NZ,00232$
   5204 DD 34 E8      [23] 1206 	inc	-24 (ix)
   5207                    1207 00232$:
   5207 DD 7E E7      [19] 1208 	ld	a,-25 (ix)
   520A D6 14         [ 7] 1209 	sub	a, #0x14
   520C DD 7E E8      [19] 1210 	ld	a,-24 (ix)
   520F 17            [ 4] 1211 	rla
   5210 3F            [ 4] 1212 	ccf
   5211 1F            [ 4] 1213 	rra
   5212 DE 80         [ 7] 1214 	sbc	a, #0x80
   5214 DA 31 51      [10] 1215 	jp	C,00138$
                           1216 ;src/game/world.c:233: for(ix=0; ix<NBLIVESTOCK; ix++)
   5217 DD 36 E7 13   [19] 1217 	ld	-25 (ix),#0x13
   521B DD 36 E8 00   [19] 1218 	ld	-24 (ix),#0x00
   521F                    1219 00142$:
                           1220 ;src/game/world.c:235: iy = cpct_rand()*15; // (WIDTH*HEIGHT)/255;
   521F CD 5E 65      [17] 1221 	call	_cpct_getRandom_mxor_u8
   5222 4D            [ 4] 1222 	ld	c,l
   5223 06 00         [ 7] 1223 	ld	b,#0x00
   5225 69            [ 4] 1224 	ld	l, c
   5226 60            [ 4] 1225 	ld	h, b
   5227 29            [11] 1226 	add	hl, hl
   5228 09            [11] 1227 	add	hl, bc
   5229 29            [11] 1228 	add	hl, hl
   522A 09            [11] 1229 	add	hl, bc
   522B 29            [11] 1230 	add	hl, hl
   522C 09            [11] 1231 	add	hl, bc
   522D 5D            [ 4] 1232 	ld	e,l
   522E 54            [ 4] 1233 	ld	d,h
                           1234 ;src/game/world.c:237: shift = cpct_rand()%10;
   522F D5            [11] 1235 	push	de
   5230 CD 5E 65      [17] 1236 	call	_cpct_getRandom_mxor_u8
   5233 45            [ 4] 1237 	ld	b,l
   5234 D1            [10] 1238 	pop	de
   5235 D5            [11] 1239 	push	de
   5236 3E 0A         [ 7] 1240 	ld	a,#0x0A
   5238 F5            [11] 1241 	push	af
   5239 33            [ 6] 1242 	inc	sp
   523A C5            [11] 1243 	push	bc
   523B 33            [ 6] 1244 	inc	sp
   523C CD E7 63      [17] 1245 	call	__moduchar
   523F F1            [10] 1246 	pop	af
   5240 D1            [10] 1247 	pop	de
   5241 26 00         [ 7] 1248 	ld	h,#0x00
                           1249 ;src/game/world.c:238: shift=iy-shift+5;
   5243 7B            [ 4] 1250 	ld	a,e
   5244 95            [ 4] 1251 	sub	a, l
   5245 6F            [ 4] 1252 	ld	l,a
   5246 7A            [ 4] 1253 	ld	a,d
   5247 9C            [ 4] 1254 	sbc	a, h
   5248 67            [ 4] 1255 	ld	h,a
   5249 01 05 00      [10] 1256 	ld	bc,#0x0005
   524C 09            [11] 1257 	add	hl,bc
                           1258 ;src/game/world.c:240: if(shift>0 && shift<WIDTH*HEIGHT)
   524D AF            [ 4] 1259 	xor	a, a
   524E BD            [ 4] 1260 	cp	a, l
   524F 9C            [ 4] 1261 	sbc	a, h
   5250 E2 55 52      [10] 1262 	jp	PO, 00233$
   5253 EE 80         [ 7] 1263 	xor	a, #0x80
   5255                    1264 00233$:
   5255 F2 65 52      [10] 1265 	jp	P,00125$
   5258 7C            [ 4] 1266 	ld	a,h
   5259 EE 80         [ 7] 1267 	xor	a, #0x80
   525B D6 8F         [ 7] 1268 	sub	a, #0x8F
   525D 30 06         [12] 1269 	jr	NC,00125$
                           1270 ;src/game/world.c:241: p_world[shift] = LIVESTOCK;
   525F 11 20 67      [10] 1271 	ld	de,#_p_world
   5262 19            [11] 1272 	add	hl,de
   5263 36 09         [10] 1273 	ld	(hl),#0x09
   5265                    1274 00125$:
   5265 DD 6E E7      [19] 1275 	ld	l,-25 (ix)
   5268 DD 66 E8      [19] 1276 	ld	h,-24 (ix)
   526B 2B            [ 6] 1277 	dec	hl
   526C DD 75 E7      [19] 1278 	ld	-25 (ix),l
                           1279 ;src/game/world.c:233: for(ix=0; ix<NBLIVESTOCK; ix++)
   526F DD 74 E8      [19] 1280 	ld	-24 (ix), h
   5272 7C            [ 4] 1281 	ld	a, h
   5273 DD B6 E7      [19] 1282 	or	a,-25 (ix)
   5276 20 A7         [12] 1283 	jr	NZ,00142$
   5278 DD F9         [10] 1284 	ld	sp, ix
   527A DD E1         [14] 1285 	pop	ix
   527C C9            [10] 1286 	ret
                           1287 ;src/game/world.c:245: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1288 ;	---------------------------------
                           1289 ; Function drawTile
                           1290 ; ---------------------------------
   527D                    1291 _drawTile::
   527D DD E5         [15] 1292 	push	ix
   527F DD 21 00 00   [14] 1293 	ld	ix,#0
   5283 DD 39         [15] 1294 	add	ix,sp
                           1295 ;src/game/world.c:248: int adress = (y_+iy)*WIDTH+x_+ix;
   5285 DD 6E 05      [19] 1296 	ld	l,5 (ix)
   5288 26 00         [ 7] 1297 	ld	h,#0x00
   528A DD 5E 07      [19] 1298 	ld	e,7 (ix)
   528D 16 00         [ 7] 1299 	ld	d,#0x00
   528F 19            [11] 1300 	add	hl,de
   5290 4D            [ 4] 1301 	ld	c, l
   5291 44            [ 4] 1302 	ld	b, h
   5292 29            [11] 1303 	add	hl, hl
   5293 29            [11] 1304 	add	hl, hl
   5294 09            [11] 1305 	add	hl, bc
   5295 29            [11] 1306 	add	hl, hl
   5296 29            [11] 1307 	add	hl, hl
   5297 29            [11] 1308 	add	hl, hl
   5298 29            [11] 1309 	add	hl, hl
   5299 DD 5E 04      [19] 1310 	ld	e,4 (ix)
   529C 16 00         [ 7] 1311 	ld	d,#0x00
   529E 19            [11] 1312 	add	hl,de
   529F DD 5E 06      [19] 1313 	ld	e,6 (ix)
   52A2 16 00         [ 7] 1314 	ld	d,#0x00
   52A4 19            [11] 1315 	add	hl,de
   52A5 5D            [ 4] 1316 	ld	e, l
   52A6 54            [ 4] 1317 	ld	d, h
                           1318 ;src/game/world.c:250: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   52A7 DD 7E 07      [19] 1319 	ld	a,7 (ix)
   52AA 07            [ 4] 1320 	rlca
   52AB 07            [ 4] 1321 	rlca
   52AC 07            [ 4] 1322 	rlca
   52AD 07            [ 4] 1323 	rlca
   52AE E6 F0         [ 7] 1324 	and	a,#0xF0
   52B0 67            [ 4] 1325 	ld	h,a
   52B1 DD 7E 06      [19] 1326 	ld	a,6 (ix)
   52B4 87            [ 4] 1327 	add	a, a
   52B5 87            [ 4] 1328 	add	a, a
   52B6 D5            [11] 1329 	push	de
   52B7 E5            [11] 1330 	push	hl
   52B8 33            [ 6] 1331 	inc	sp
   52B9 F5            [11] 1332 	push	af
   52BA 33            [ 6] 1333 	inc	sp
   52BB 21 00 C0      [10] 1334 	ld	hl,#0xC000
   52BE E5            [11] 1335 	push	hl
   52BF CD 4C 66      [17] 1336 	call	_cpct_getScreenPtr
   52C2 D1            [10] 1337 	pop	de
   52C3 4D            [ 4] 1338 	ld	c, l
   52C4 44            [ 4] 1339 	ld	b, h
                           1340 ;src/game/world.c:252: switch(p_world[adress])
   52C5 21 20 67      [10] 1341 	ld	hl,#_p_world
   52C8 19            [11] 1342 	add	hl,de
   52C9 5E            [ 7] 1343 	ld	e,(hl)
   52CA 3E 19         [ 7] 1344 	ld	a,#0x19
   52CC 93            [ 4] 1345 	sub	a, e
   52CD DA A2 54      [10] 1346 	jp	C,00128$
   52D0 16 00         [ 7] 1347 	ld	d,#0x00
   52D2 21 D9 52      [10] 1348 	ld	hl,#00134$
   52D5 19            [11] 1349 	add	hl,de
   52D6 19            [11] 1350 	add	hl,de
   52D7 19            [11] 1351 	add	hl,de
   52D8 E9            [ 4] 1352 	jp	(hl)
   52D9                    1353 00134$:
   52D9 C3 27 53      [10] 1354 	jp	00101$
   52DC C3 36 53      [10] 1355 	jp	00102$
   52DF C3 45 53      [10] 1356 	jp	00103$
   52E2 C3 54 53      [10] 1357 	jp	00104$
   52E5 C3 63 53      [10] 1358 	jp	00105$
   52E8 C3 72 53      [10] 1359 	jp	00106$
   52EB C3 81 53      [10] 1360 	jp	00107$
   52EE C3 90 53      [10] 1361 	jp	00108$
   52F1 C3 9F 53      [10] 1362 	jp	00109$
   52F4 C3 AE 53      [10] 1363 	jp	00110$
   52F7 C3 BD 53      [10] 1364 	jp	00111$
   52FA C3 CC 53      [10] 1365 	jp	00112$
   52FD C3 DB 53      [10] 1366 	jp	00113$
   5300 C3 EA 53      [10] 1367 	jp	00114$
   5303 C3 F9 53      [10] 1368 	jp	00115$
   5306 C3 08 54      [10] 1369 	jp	00116$
   5309 C3 17 54      [10] 1370 	jp	00117$
   530C C3 26 54      [10] 1371 	jp	00118$
   530F C3 34 54      [10] 1372 	jp	00119$
   5312 C3 42 54      [10] 1373 	jp	00120$
   5315 C3 50 54      [10] 1374 	jp	00121$
   5318 C3 5E 54      [10] 1375 	jp	00122$
   531B C3 6C 54      [10] 1376 	jp	00123$
   531E C3 7A 54      [10] 1377 	jp	00124$
   5321 C3 88 54      [10] 1378 	jp	00125$
   5324 C3 96 54      [10] 1379 	jp	00126$
                           1380 ;src/game/world.c:254: case GRASS1:
   5327                    1381 00101$:
                           1382 ;src/game/world.c:255: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   5327 11 53 5C      [10] 1383 	ld	de,#_grass1
   532A 21 04 10      [10] 1384 	ld	hl,#0x1004
   532D E5            [11] 1385 	push	hl
   532E C5            [11] 1386 	push	bc
   532F D5            [11] 1387 	push	de
   5330 CD 42 63      [17] 1388 	call	_cpct_drawSprite
                           1389 ;src/game/world.c:256: break;
   5333 C3 A2 54      [10] 1390 	jp	00128$
                           1391 ;src/game/world.c:257: case GRASS2:
   5336                    1392 00102$:
                           1393 ;src/game/world.c:258: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   5336 11 93 5C      [10] 1394 	ld	de,#_grass2
   5339 21 04 10      [10] 1395 	ld	hl,#0x1004
   533C E5            [11] 1396 	push	hl
   533D C5            [11] 1397 	push	bc
   533E D5            [11] 1398 	push	de
   533F CD 42 63      [17] 1399 	call	_cpct_drawSprite
                           1400 ;src/game/world.c:259: break;
   5342 C3 A2 54      [10] 1401 	jp	00128$
                           1402 ;src/game/world.c:260: case DWELLINGS1:
   5345                    1403 00103$:
                           1404 ;src/game/world.c:261: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   5345 11 13 5D      [10] 1405 	ld	de,#_dwellings1
   5348 21 04 10      [10] 1406 	ld	hl,#0x1004
   534B E5            [11] 1407 	push	hl
   534C C5            [11] 1408 	push	bc
   534D D5            [11] 1409 	push	de
   534E CD 42 63      [17] 1410 	call	_cpct_drawSprite
                           1411 ;src/game/world.c:262: break;
   5351 C3 A2 54      [10] 1412 	jp	00128$
                           1413 ;src/game/world.c:263: case DWELLINGS2:
   5354                    1414 00104$:
                           1415 ;src/game/world.c:264: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   5354 11 53 5D      [10] 1416 	ld	de,#_dwellings2
   5357 21 04 10      [10] 1417 	ld	hl,#0x1004
   535A E5            [11] 1418 	push	hl
   535B C5            [11] 1419 	push	bc
   535C D5            [11] 1420 	push	de
   535D CD 42 63      [17] 1421 	call	_cpct_drawSprite
                           1422 ;src/game/world.c:265: break;
   5360 C3 A2 54      [10] 1423 	jp	00128$
                           1424 ;src/game/world.c:266: case DWELLINGS3:
   5363                    1425 00105$:
                           1426 ;src/game/world.c:267: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   5363 11 93 5D      [10] 1427 	ld	de,#_dwellings3
   5366 21 04 10      [10] 1428 	ld	hl,#0x1004
   5369 E5            [11] 1429 	push	hl
   536A C5            [11] 1430 	push	bc
   536B D5            [11] 1431 	push	de
   536C CD 42 63      [17] 1432 	call	_cpct_drawSprite
                           1433 ;src/game/world.c:268: break;
   536F C3 A2 54      [10] 1434 	jp	00128$
                           1435 ;src/game/world.c:269: case FARM1:
   5372                    1436 00106$:
                           1437 ;src/game/world.c:270: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   5372 11 13 5E      [10] 1438 	ld	de,#_farm1
   5375 21 04 10      [10] 1439 	ld	hl,#0x1004
   5378 E5            [11] 1440 	push	hl
   5379 C5            [11] 1441 	push	bc
   537A D5            [11] 1442 	push	de
   537B CD 42 63      [17] 1443 	call	_cpct_drawSprite
                           1444 ;src/game/world.c:271: break;
   537E C3 A2 54      [10] 1445 	jp	00128$
                           1446 ;src/game/world.c:272: case FARM2:
   5381                    1447 00107$:
                           1448 ;src/game/world.c:273: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   5381 11 53 5E      [10] 1449 	ld	de,#_farm2
   5384 21 04 10      [10] 1450 	ld	hl,#0x1004
   5387 E5            [11] 1451 	push	hl
   5388 C5            [11] 1452 	push	bc
   5389 D5            [11] 1453 	push	de
   538A CD 42 63      [17] 1454 	call	_cpct_drawSprite
                           1455 ;src/game/world.c:274: break;
   538D C3 A2 54      [10] 1456 	jp	00128$
                           1457 ;src/game/world.c:275: case WATER:
   5390                    1458 00108$:
                           1459 ;src/game/world.c:276: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   5390 11 D3 5D      [10] 1460 	ld	de,#_water
   5393 21 04 10      [10] 1461 	ld	hl,#0x1004
   5396 E5            [11] 1462 	push	hl
   5397 C5            [11] 1463 	push	bc
   5398 D5            [11] 1464 	push	de
   5399 CD 42 63      [17] 1465 	call	_cpct_drawSprite
                           1466 ;src/game/world.c:277: break;
   539C C3 A2 54      [10] 1467 	jp	00128$
                           1468 ;src/game/world.c:278: case FOREST:
   539F                    1469 00109$:
                           1470 ;src/game/world.c:279: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   539F 11 D3 5C      [10] 1471 	ld	de,#_forest
   53A2 21 04 10      [10] 1472 	ld	hl,#0x1004
   53A5 E5            [11] 1473 	push	hl
   53A6 C5            [11] 1474 	push	bc
   53A7 D5            [11] 1475 	push	de
   53A8 CD 42 63      [17] 1476 	call	_cpct_drawSprite
                           1477 ;src/game/world.c:280: break;
   53AB C3 A2 54      [10] 1478 	jp	00128$
                           1479 ;src/game/world.c:281: case LIVESTOCK:
   53AE                    1480 00110$:
                           1481 ;src/game/world.c:282: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   53AE 11 93 5E      [10] 1482 	ld	de,#_livestock
   53B1 21 04 10      [10] 1483 	ld	hl,#0x1004
   53B4 E5            [11] 1484 	push	hl
   53B5 C5            [11] 1485 	push	bc
   53B6 D5            [11] 1486 	push	de
   53B7 CD 42 63      [17] 1487 	call	_cpct_drawSprite
                           1488 ;src/game/world.c:283: break;
   53BA C3 A2 54      [10] 1489 	jp	00128$
                           1490 ;src/game/world.c:284: case SSNS:
   53BD                    1491 00111$:
                           1492 ;src/game/world.c:285: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   53BD 11 D3 5E      [10] 1493 	ld	de,#_station_small_ns
   53C0 21 04 10      [10] 1494 	ld	hl,#0x1004
   53C3 E5            [11] 1495 	push	hl
   53C4 C5            [11] 1496 	push	bc
   53C5 D5            [11] 1497 	push	de
   53C6 CD 42 63      [17] 1498 	call	_cpct_drawSprite
                           1499 ;src/game/world.c:286: break;
   53C9 C3 A2 54      [10] 1500 	jp	00128$
                           1501 ;src/game/world.c:287: case SSEW:
   53CC                    1502 00112$:
                           1503 ;src/game/world.c:288: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   53CC 11 13 5F      [10] 1504 	ld	de,#_station_small_ew
   53CF 21 04 10      [10] 1505 	ld	hl,#0x1004
   53D2 E5            [11] 1506 	push	hl
   53D3 C5            [11] 1507 	push	bc
   53D4 D5            [11] 1508 	push	de
   53D5 CD 42 63      [17] 1509 	call	_cpct_drawSprite
                           1510 ;src/game/world.c:289: break;
   53D8 C3 A2 54      [10] 1511 	jp	00128$
                           1512 ;src/game/world.c:290: case SMNS:
   53DB                    1513 00113$:
                           1514 ;src/game/world.c:291: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   53DB 11 53 5F      [10] 1515 	ld	de,#_station_medium_ns
   53DE 21 04 10      [10] 1516 	ld	hl,#0x1004
   53E1 E5            [11] 1517 	push	hl
   53E2 C5            [11] 1518 	push	bc
   53E3 D5            [11] 1519 	push	de
   53E4 CD 42 63      [17] 1520 	call	_cpct_drawSprite
                           1521 ;src/game/world.c:292: break;
   53E7 C3 A2 54      [10] 1522 	jp	00128$
                           1523 ;src/game/world.c:293: case SMEW:
   53EA                    1524 00114$:
                           1525 ;src/game/world.c:294: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   53EA 11 93 5F      [10] 1526 	ld	de,#_station_medium_ew
   53ED 21 04 10      [10] 1527 	ld	hl,#0x1004
   53F0 E5            [11] 1528 	push	hl
   53F1 C5            [11] 1529 	push	bc
   53F2 D5            [11] 1530 	push	de
   53F3 CD 42 63      [17] 1531 	call	_cpct_drawSprite
                           1532 ;src/game/world.c:295: break;
   53F6 C3 A2 54      [10] 1533 	jp	00128$
                           1534 ;src/game/world.c:296: case SLNS:
   53F9                    1535 00115$:
                           1536 ;src/game/world.c:297: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   53F9 11 D3 5F      [10] 1537 	ld	de,#_station_large_ns
   53FC 21 04 10      [10] 1538 	ld	hl,#0x1004
   53FF E5            [11] 1539 	push	hl
   5400 C5            [11] 1540 	push	bc
   5401 D5            [11] 1541 	push	de
   5402 CD 42 63      [17] 1542 	call	_cpct_drawSprite
                           1543 ;src/game/world.c:298: break;
   5405 C3 A2 54      [10] 1544 	jp	00128$
                           1545 ;src/game/world.c:299: case SLEW:
   5408                    1546 00116$:
                           1547 ;src/game/world.c:300: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   5408 11 13 60      [10] 1548 	ld	de,#_station_large_ew
   540B 21 04 10      [10] 1549 	ld	hl,#0x1004
   540E E5            [11] 1550 	push	hl
   540F C5            [11] 1551 	push	bc
   5410 D5            [11] 1552 	push	de
   5411 CD 42 63      [17] 1553 	call	_cpct_drawSprite
                           1554 ;src/game/world.c:301: break;
   5414 C3 A2 54      [10] 1555 	jp	00128$
                           1556 ;src/game/world.c:302: case REW:
   5417                    1557 00117$:
                           1558 ;src/game/world.c:303: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   5417 11 53 60      [10] 1559 	ld	de,#_rail_ew
   541A 21 04 10      [10] 1560 	ld	hl,#0x1004
   541D E5            [11] 1561 	push	hl
   541E C5            [11] 1562 	push	bc
   541F D5            [11] 1563 	push	de
   5420 CD 42 63      [17] 1564 	call	_cpct_drawSprite
                           1565 ;src/game/world.c:304: break;
   5423 C3 A2 54      [10] 1566 	jp	00128$
                           1567 ;src/game/world.c:305: case RNS:
   5426                    1568 00118$:
                           1569 ;src/game/world.c:306: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5426 11 93 60      [10] 1570 	ld	de,#_rail_ns
   5429 21 04 10      [10] 1571 	ld	hl,#0x1004
   542C E5            [11] 1572 	push	hl
   542D C5            [11] 1573 	push	bc
   542E D5            [11] 1574 	push	de
   542F CD 42 63      [17] 1575 	call	_cpct_drawSprite
                           1576 ;src/game/world.c:307: break;
   5432 18 6E         [12] 1577 	jr	00128$
                           1578 ;src/game/world.c:308: case REN:
   5434                    1579 00119$:
                           1580 ;src/game/world.c:309: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   5434 11 D3 60      [10] 1581 	ld	de,#_rail_en
   5437 21 04 10      [10] 1582 	ld	hl,#0x1004
   543A E5            [11] 1583 	push	hl
   543B C5            [11] 1584 	push	bc
   543C D5            [11] 1585 	push	de
   543D CD 42 63      [17] 1586 	call	_cpct_drawSprite
                           1587 ;src/game/world.c:310: break;
   5440 18 60         [12] 1588 	jr	00128$
                           1589 ;src/game/world.c:311: case RES:
   5442                    1590 00120$:
                           1591 ;src/game/world.c:312: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   5442 11 13 61      [10] 1592 	ld	de,#_rail_es
   5445 21 04 10      [10] 1593 	ld	hl,#0x1004
   5448 E5            [11] 1594 	push	hl
   5449 C5            [11] 1595 	push	bc
   544A D5            [11] 1596 	push	de
   544B CD 42 63      [17] 1597 	call	_cpct_drawSprite
                           1598 ;src/game/world.c:313: break;
   544E 18 52         [12] 1599 	jr	00128$
                           1600 ;src/game/world.c:314: case RWN:
   5450                    1601 00121$:
                           1602 ;src/game/world.c:315: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   5450 11 53 61      [10] 1603 	ld	de,#_rail_wn
   5453 21 04 10      [10] 1604 	ld	hl,#0x1004
   5456 E5            [11] 1605 	push	hl
   5457 C5            [11] 1606 	push	bc
   5458 D5            [11] 1607 	push	de
   5459 CD 42 63      [17] 1608 	call	_cpct_drawSprite
                           1609 ;src/game/world.c:316: break;
   545C 18 44         [12] 1610 	jr	00128$
                           1611 ;src/game/world.c:317: case RWS:
   545E                    1612 00122$:
                           1613 ;src/game/world.c:318: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   545E 11 93 61      [10] 1614 	ld	de,#_rail_ws
   5461 21 04 10      [10] 1615 	ld	hl,#0x1004
   5464 E5            [11] 1616 	push	hl
   5465 C5            [11] 1617 	push	bc
   5466 D5            [11] 1618 	push	de
   5467 CD 42 63      [17] 1619 	call	_cpct_drawSprite
                           1620 ;src/game/world.c:319: break;
   546A 18 36         [12] 1621 	jr	00128$
                           1622 ;src/game/world.c:320: case REWN:
   546C                    1623 00123$:
                           1624 ;src/game/world.c:321: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   546C 11 D3 61      [10] 1625 	ld	de,#_rail_ew_n
   546F 21 04 10      [10] 1626 	ld	hl,#0x1004
   5472 E5            [11] 1627 	push	hl
   5473 C5            [11] 1628 	push	bc
   5474 D5            [11] 1629 	push	de
   5475 CD 42 63      [17] 1630 	call	_cpct_drawSprite
                           1631 ;src/game/world.c:322: break;
   5478 18 28         [12] 1632 	jr	00128$
                           1633 ;src/game/world.c:323: case REWS:
   547A                    1634 00124$:
                           1635 ;src/game/world.c:324: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   547A 11 13 62      [10] 1636 	ld	de,#_rail_ew_s
   547D 21 04 10      [10] 1637 	ld	hl,#0x1004
   5480 E5            [11] 1638 	push	hl
   5481 C5            [11] 1639 	push	bc
   5482 D5            [11] 1640 	push	de
   5483 CD 42 63      [17] 1641 	call	_cpct_drawSprite
                           1642 ;src/game/world.c:325: break;
   5486 18 1A         [12] 1643 	jr	00128$
                           1644 ;src/game/world.c:326: case RNSE:
   5488                    1645 00125$:
                           1646 ;src/game/world.c:327: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5488 11 93 62      [10] 1647 	ld	de,#_rail_ns_e
   548B 21 04 10      [10] 1648 	ld	hl,#0x1004
   548E E5            [11] 1649 	push	hl
   548F C5            [11] 1650 	push	bc
   5490 D5            [11] 1651 	push	de
   5491 CD 42 63      [17] 1652 	call	_cpct_drawSprite
                           1653 ;src/game/world.c:328: break;
   5494 18 0C         [12] 1654 	jr	00128$
                           1655 ;src/game/world.c:329: case RNSW:
   5496                    1656 00126$:
                           1657 ;src/game/world.c:330: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   5496 11 53 62      [10] 1658 	ld	de,#_rail_ns_w
   5499 21 04 10      [10] 1659 	ld	hl,#0x1004
   549C E5            [11] 1660 	push	hl
   549D C5            [11] 1661 	push	bc
   549E D5            [11] 1662 	push	de
   549F CD 42 63      [17] 1663 	call	_cpct_drawSprite
                           1664 ;src/game/world.c:332: }
   54A2                    1665 00128$:
   54A2 DD E1         [14] 1666 	pop	ix
   54A4 C9            [10] 1667 	ret
                           1668 ;src/game/world.c:335: void drawScrolls(u8 x_, u8 y_)
                           1669 ;	---------------------------------
                           1670 ; Function drawScrolls
                           1671 ; ---------------------------------
   54A5                    1672 _drawScrolls::
   54A5 DD E5         [15] 1673 	push	ix
   54A7 DD 21 00 00   [14] 1674 	ld	ix,#0
   54AB DD 39         [15] 1675 	add	ix,sp
   54AD 3B            [ 6] 1676 	dec	sp
                           1677 ;src/game/world.c:341: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   54AE DD 4E 04      [19] 1678 	ld	c,4 (ix)
   54B1 06 00         [ 7] 1679 	ld	b,#0x00
   54B3 69            [ 4] 1680 	ld	l, c
   54B4 60            [ 4] 1681 	ld	h, b
   54B5 29            [11] 1682 	add	hl, hl
   54B6 29            [11] 1683 	add	hl, hl
   54B7 29            [11] 1684 	add	hl, hl
   54B8 09            [11] 1685 	add	hl, bc
   54B9 29            [11] 1686 	add	hl, hl
   54BA 09            [11] 1687 	add	hl, bc
   54BB 29            [11] 1688 	add	hl, hl
   54BC 29            [11] 1689 	add	hl, hl
   54BD 01 3C 00      [10] 1690 	ld	bc,#0x003C
   54C0 C5            [11] 1691 	push	bc
   54C1 E5            [11] 1692 	push	hl
   54C2 CD 9D 66      [17] 1693 	call	__divsint
   54C5 F1            [10] 1694 	pop	af
   54C6 F1            [10] 1695 	pop	af
   54C7 55            [ 4] 1696 	ld	d,l
                           1697 ;src/game/world.c:342: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   54C8 DD 4E 05      [19] 1698 	ld	c,5 (ix)
   54CB 06 00         [ 7] 1699 	ld	b,#0x00
   54CD 69            [ 4] 1700 	ld	l, c
   54CE 60            [ 4] 1701 	ld	h, b
   54CF 29            [11] 1702 	add	hl, hl
   54D0 29            [11] 1703 	add	hl, hl
   54D1 09            [11] 1704 	add	hl, bc
   54D2 29            [11] 1705 	add	hl, hl
   54D3 09            [11] 1706 	add	hl, bc
   54D4 29            [11] 1707 	add	hl, hl
   54D5 29            [11] 1708 	add	hl, hl
   54D6 29            [11] 1709 	add	hl, hl
   54D7 29            [11] 1710 	add	hl, hl
   54D8 D5            [11] 1711 	push	de
   54D9 01 24 00      [10] 1712 	ld	bc,#0x0024
   54DC C5            [11] 1713 	push	bc
   54DD E5            [11] 1714 	push	hl
   54DE CD 9D 66      [17] 1715 	call	__divsint
   54E1 F1            [10] 1716 	pop	af
   54E2 F1            [10] 1717 	pop	af
   54E3 D1            [10] 1718 	pop	de
   54E4 DD 75 FF      [19] 1719 	ld	-1 (ix),l
                           1720 ;src/game/world.c:344: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   54E7 AF            [ 4] 1721 	xor	a, a
   54E8 F5            [11] 1722 	push	af
   54E9 33            [ 6] 1723 	inc	sp
   54EA D5            [11] 1724 	push	de
   54EB 33            [ 6] 1725 	inc	sp
   54EC 21 00 C0      [10] 1726 	ld	hl,#0xC000
   54EF E5            [11] 1727 	push	hl
   54F0 CD 4C 66      [17] 1728 	call	_cpct_getScreenPtr
                           1729 ;src/game/world.c:345: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   54F3 E5            [11] 1730 	push	hl
   54F4 21 00 00      [10] 1731 	ld	hl,#0x0000
   54F7 E5            [11] 1732 	push	hl
   54F8 2E 00         [ 7] 1733 	ld	l, #0x00
   54FA E5            [11] 1734 	push	hl
   54FB CD 26 65      [17] 1735 	call	_cpct_px2byteM1
   54FE F1            [10] 1736 	pop	af
   54FF F1            [10] 1737 	pop	af
   5500 45            [ 4] 1738 	ld	b,l
   5501 D1            [10] 1739 	pop	de
   5502 21 04 04      [10] 1740 	ld	hl,#0x0404
   5505 E5            [11] 1741 	push	hl
   5506 C5            [11] 1742 	push	bc
   5507 33            [ 6] 1743 	inc	sp
   5508 D5            [11] 1744 	push	de
   5509 CD 93 65      [17] 1745 	call	_cpct_drawSolidBox
   550C F1            [10] 1746 	pop	af
   550D F1            [10] 1747 	pop	af
   550E 33            [ 6] 1748 	inc	sp
                           1749 ;src/game/world.c:347: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   550F DD 7E FF      [19] 1750 	ld	a,-1 (ix)
   5512 F5            [11] 1751 	push	af
   5513 33            [ 6] 1752 	inc	sp
   5514 AF            [ 4] 1753 	xor	a, a
   5515 F5            [11] 1754 	push	af
   5516 33            [ 6] 1755 	inc	sp
   5517 21 00 C0      [10] 1756 	ld	hl,#0xC000
   551A E5            [11] 1757 	push	hl
   551B CD 4C 66      [17] 1758 	call	_cpct_getScreenPtr
                           1759 ;src/game/world.c:348: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   551E E5            [11] 1760 	push	hl
   551F 21 00 00      [10] 1761 	ld	hl,#0x0000
   5522 E5            [11] 1762 	push	hl
   5523 2E 00         [ 7] 1763 	ld	l, #0x00
   5525 E5            [11] 1764 	push	hl
   5526 CD 26 65      [17] 1765 	call	_cpct_px2byteM1
   5529 F1            [10] 1766 	pop	af
   552A F1            [10] 1767 	pop	af
   552B 45            [ 4] 1768 	ld	b,l
   552C D1            [10] 1769 	pop	de
   552D 21 01 10      [10] 1770 	ld	hl,#0x1001
   5530 E5            [11] 1771 	push	hl
   5531 C5            [11] 1772 	push	bc
   5532 33            [ 6] 1773 	inc	sp
   5533 D5            [11] 1774 	push	de
   5534 CD 93 65      [17] 1775 	call	_cpct_drawSolidBox
   5537 F1            [10] 1776 	pop	af
   5538 F1            [10] 1777 	pop	af
   5539 33            [ 6] 1778 	inc	sp
   553A 33            [ 6] 1779 	inc	sp
   553B DD E1         [14] 1780 	pop	ix
   553D C9            [10] 1781 	ret
                           1782 ;src/game/world.c:351: void drawWorld(u8 x_, u8 y_)
                           1783 ;	---------------------------------
                           1784 ; Function drawWorld
                           1785 ; ---------------------------------
   553E                    1786 _drawWorld::
                           1787 ;src/game/world.c:356: for(iy=0; iy<NBTILE_H;iy++)
   553E 16 00         [ 7] 1788 	ld	d,#0x00
                           1789 ;src/game/world.c:358: for(ix=0; ix<NBTILE_W;ix++)
   5540                    1790 00109$:
   5540 1E 00         [ 7] 1791 	ld	e,#0x00
   5542                    1792 00103$:
                           1793 ;src/game/world.c:360: drawTile(x_, y_, ix, iy);
   5542 D5            [11] 1794 	push	de
   5543 D5            [11] 1795 	push	de
   5544 21 07 00      [10] 1796 	ld	hl, #7+0
   5547 39            [11] 1797 	add	hl, sp
   5548 7E            [ 7] 1798 	ld	a, (hl)
   5549 F5            [11] 1799 	push	af
   554A 33            [ 6] 1800 	inc	sp
   554B 21 07 00      [10] 1801 	ld	hl, #7+0
   554E 39            [11] 1802 	add	hl, sp
   554F 7E            [ 7] 1803 	ld	a, (hl)
   5550 F5            [11] 1804 	push	af
   5551 33            [ 6] 1805 	inc	sp
   5552 CD 7D 52      [17] 1806 	call	_drawTile
   5555 F1            [10] 1807 	pop	af
   5556 F1            [10] 1808 	pop	af
   5557 D1            [10] 1809 	pop	de
                           1810 ;src/game/world.c:358: for(ix=0; ix<NBTILE_W;ix++)
   5558 1C            [ 4] 1811 	inc	e
   5559 7B            [ 4] 1812 	ld	a,e
   555A D6 14         [ 7] 1813 	sub	a, #0x14
   555C 38 E4         [12] 1814 	jr	C,00103$
                           1815 ;src/game/world.c:356: for(iy=0; iy<NBTILE_H;iy++)
   555E 14            [ 4] 1816 	inc	d
   555F 7A            [ 4] 1817 	ld	a,d
   5560 D6 0C         [ 7] 1818 	sub	a, #0x0C
   5562 38 DC         [12] 1819 	jr	C,00109$
                           1820 ;src/game/world.c:364: drawScrolls(x_, y_);
   5564 21 03 00      [10] 1821 	ld	hl, #3+0
   5567 39            [11] 1822 	add	hl, sp
   5568 7E            [ 7] 1823 	ld	a, (hl)
   5569 F5            [11] 1824 	push	af
   556A 33            [ 6] 1825 	inc	sp
   556B 21 03 00      [10] 1826 	ld	hl, #3+0
   556E 39            [11] 1827 	add	hl, sp
   556F 7E            [ 7] 1828 	ld	a, (hl)
   5570 F5            [11] 1829 	push	af
   5571 33            [ 6] 1830 	inc	sp
   5572 CD A5 54      [17] 1831 	call	_drawScrolls
   5575 F1            [10] 1832 	pop	af
   5576 C9            [10] 1833 	ret
                           1834 	.area _CODE
                           1835 	.area _INITIALIZER
                           1836 	.area _CABS (ABS)
