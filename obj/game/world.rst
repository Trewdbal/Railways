                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 17:26:34 2016
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
   4AD0                      64 _drawCursor::
   4AD0 DD E5         [15]   65 	push	ix
   4AD2 DD 21 00 00   [14]   66 	ld	ix,#0
   4AD6 DD 39         [15]   67 	add	ix,sp
   4AD8 3B            [ 6]   68 	dec	sp
                             69 ;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4AD9 DD 7E 05      [19]   70 	ld	a,5 (ix)
   4ADC 07            [ 4]   71 	rlca
   4ADD 07            [ 4]   72 	rlca
   4ADE 07            [ 4]   73 	rlca
   4ADF 07            [ 4]   74 	rlca
   4AE0 E6 F0         [ 7]   75 	and	a,#0xF0
   4AE2 5F            [ 4]   76 	ld	e,a
   4AE3 DD 7E 04      [19]   77 	ld	a,4 (ix)
   4AE6 87            [ 4]   78 	add	a, a
   4AE7 87            [ 4]   79 	add	a, a
   4AE8 57            [ 4]   80 	ld	d,a
   4AE9 D5            [11]   81 	push	de
   4AEA 7B            [ 4]   82 	ld	a,e
   4AEB F5            [11]   83 	push	af
   4AEC 33            [ 6]   84 	inc	sp
   4AED D5            [11]   85 	push	de
   4AEE 33            [ 6]   86 	inc	sp
   4AEF 21 00 C0      [10]   87 	ld	hl,#0xC000
   4AF2 E5            [11]   88 	push	hl
   4AF3 CD BA 6A      [17]   89 	call	_cpct_getScreenPtr
   4AF6 D1            [10]   90 	pop	de
   4AF7 4D            [ 4]   91 	ld	c, l
   4AF8 44            [ 4]   92 	ld	b, h
                             93 ;src/game/world.c:8: switch(CURSOR_MODE)
   4AF9 3E 10         [ 7]   94 	ld	a,#0x10
   4AFB FD 21 8E 7A   [14]   95 	ld	iy,#_CURSOR_MODE
   4AFF FD 96 00      [19]   96 	sub	a, 0 (iy)
   4B02 DA 01 4D      [10]   97 	jp	C,00119$
   4B05 D5            [11]   98 	push	de
   4B06 FD 21 8E 7A   [14]   99 	ld	iy,#_CURSOR_MODE
   4B0A FD 5E 00      [19]  100 	ld	e,0 (iy)
   4B0D 16 00         [ 7]  101 	ld	d,#0x00
   4B0F 21 17 4B      [10]  102 	ld	hl,#00125$
   4B12 19            [11]  103 	add	hl,de
   4B13 19            [11]  104 	add	hl,de
   4B14 19            [11]  105 	add	hl,de
   4B15 D1            [10]  106 	pop	de
   4B16 E9            [ 4]  107 	jp	(hl)
   4B17                     108 00125$:
   4B17 C3 4A 4B      [10]  109 	jp	00101$
   4B1A C3 1C 4C      [10]  110 	jp	00102$
   4B1D C3 2B 4C      [10]  111 	jp	00103$
   4B20 C3 3A 4C      [10]  112 	jp	00104$
   4B23 C3 49 4C      [10]  113 	jp	00105$
   4B26 C3 58 4C      [10]  114 	jp	00106$
   4B29 C3 67 4C      [10]  115 	jp	00107$
   4B2C C3 76 4C      [10]  116 	jp	00108$
   4B2F C3 85 4C      [10]  117 	jp	00109$
   4B32 C3 93 4C      [10]  118 	jp	00110$
   4B35 C3 A1 4C      [10]  119 	jp	00111$
   4B38 C3 AF 4C      [10]  120 	jp	00112$
   4B3B C3 BD 4C      [10]  121 	jp	00113$
   4B3E C3 CB 4C      [10]  122 	jp	00114$
   4B41 C3 D9 4C      [10]  123 	jp	00115$
   4B44 C3 E7 4C      [10]  124 	jp	00116$
   4B47 C3 F5 4C      [10]  125 	jp	00117$
                            126 ;src/game/world.c:10: case NONE:
   4B4A                     127 00101$:
                            128 ;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4B4A C5            [11]  129 	push	bc
   4B4B D5            [11]  130 	push	de
   4B4C DD 66 06      [19]  131 	ld	h,6 (ix)
   4B4F DD 6E 06      [19]  132 	ld	l,6 (ix)
   4B52 E5            [11]  133 	push	hl
   4B53 DD 66 06      [19]  134 	ld	h,6 (ix)
   4B56 DD 6E 06      [19]  135 	ld	l,6 (ix)
   4B59 E5            [11]  136 	push	hl
   4B5A CD 94 69      [17]  137 	call	_cpct_px2byteM1
   4B5D F1            [10]  138 	pop	af
   4B5E F1            [10]  139 	pop	af
   4B5F DD 75 FF      [19]  140 	ld	-1 (ix),l
   4B62 D1            [10]  141 	pop	de
   4B63 C1            [10]  142 	pop	bc
   4B64 D5            [11]  143 	push	de
   4B65 21 04 00      [10]  144 	ld	hl,#0x0004
   4B68 E5            [11]  145 	push	hl
   4B69 DD 7E FF      [19]  146 	ld	a,-1 (ix)
   4B6C F5            [11]  147 	push	af
   4B6D 33            [ 6]  148 	inc	sp
   4B6E C5            [11]  149 	push	bc
   4B6F CD 86 69      [17]  150 	call	_cpct_memset
   4B72 D1            [10]  151 	pop	de
                            152 ;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4B73 63            [ 4]  153 	ld	h,e
   4B74 24            [ 4]  154 	inc	h
   4B75 D5            [11]  155 	push	de
   4B76 E5            [11]  156 	push	hl
   4B77 33            [ 6]  157 	inc	sp
   4B78 D5            [11]  158 	push	de
   4B79 33            [ 6]  159 	inc	sp
   4B7A 21 00 C0      [10]  160 	ld	hl,#0xC000
   4B7D E5            [11]  161 	push	hl
   4B7E CD BA 6A      [17]  162 	call	_cpct_getScreenPtr
   4B81 D1            [10]  163 	pop	de
                            164 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4B82 E5            [11]  165 	push	hl
   4B83 D5            [11]  166 	push	de
   4B84 DD 66 06      [19]  167 	ld	h,6 (ix)
   4B87 DD 6E 06      [19]  168 	ld	l,6 (ix)
   4B8A E5            [11]  169 	push	hl
   4B8B DD 66 06      [19]  170 	ld	h,6 (ix)
   4B8E DD 6E 06      [19]  171 	ld	l,6 (ix)
   4B91 E5            [11]  172 	push	hl
   4B92 CD 94 69      [17]  173 	call	_cpct_px2byteM1
   4B95 F1            [10]  174 	pop	af
   4B96 F1            [10]  175 	pop	af
   4B97 5D            [ 4]  176 	ld	e,l
   4B98 F1            [10]  177 	pop	af
   4B99 57            [ 4]  178 	ld	d,a
   4B9A C1            [10]  179 	pop	bc
   4B9B D5            [11]  180 	push	de
   4B9C 21 04 00      [10]  181 	ld	hl,#0x0004
   4B9F E5            [11]  182 	push	hl
   4BA0 7B            [ 4]  183 	ld	a,e
   4BA1 F5            [11]  184 	push	af
   4BA2 33            [ 6]  185 	inc	sp
   4BA3 C5            [11]  186 	push	bc
   4BA4 CD 86 69      [17]  187 	call	_cpct_memset
   4BA7 D1            [10]  188 	pop	de
                            189 ;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4BA8 DD 7E 05      [19]  190 	ld	a,5 (ix)
   4BAB 3C            [ 4]  191 	inc	a
   4BAC 07            [ 4]  192 	rlca
   4BAD 07            [ 4]  193 	rlca
   4BAE 07            [ 4]  194 	rlca
   4BAF 07            [ 4]  195 	rlca
   4BB0 E6 F0         [ 7]  196 	and	a,#0xF0
   4BB2 5F            [ 4]  197 	ld	e,a
   4BB3 63            [ 4]  198 	ld	h,e
   4BB4 25            [ 4]  199 	dec	h
   4BB5 D5            [11]  200 	push	de
   4BB6 E5            [11]  201 	push	hl
   4BB7 33            [ 6]  202 	inc	sp
   4BB8 D5            [11]  203 	push	de
   4BB9 33            [ 6]  204 	inc	sp
   4BBA 21 00 C0      [10]  205 	ld	hl,#0xC000
   4BBD E5            [11]  206 	push	hl
   4BBE CD BA 6A      [17]  207 	call	_cpct_getScreenPtr
   4BC1 D1            [10]  208 	pop	de
                            209 ;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4BC2 E5            [11]  210 	push	hl
   4BC3 D5            [11]  211 	push	de
   4BC4 DD 66 06      [19]  212 	ld	h,6 (ix)
   4BC7 DD 6E 06      [19]  213 	ld	l,6 (ix)
   4BCA E5            [11]  214 	push	hl
   4BCB DD 66 06      [19]  215 	ld	h,6 (ix)
   4BCE DD 6E 06      [19]  216 	ld	l,6 (ix)
   4BD1 E5            [11]  217 	push	hl
   4BD2 CD 94 69      [17]  218 	call	_cpct_px2byteM1
   4BD5 F1            [10]  219 	pop	af
   4BD6 F1            [10]  220 	pop	af
   4BD7 DD 75 FF      [19]  221 	ld	-1 (ix),l
   4BDA D1            [10]  222 	pop	de
   4BDB C1            [10]  223 	pop	bc
   4BDC D5            [11]  224 	push	de
   4BDD 21 04 00      [10]  225 	ld	hl,#0x0004
   4BE0 E5            [11]  226 	push	hl
   4BE1 DD 7E FF      [19]  227 	ld	a,-1 (ix)
   4BE4 F5            [11]  228 	push	af
   4BE5 33            [ 6]  229 	inc	sp
   4BE6 C5            [11]  230 	push	bc
   4BE7 CD 86 69      [17]  231 	call	_cpct_memset
   4BEA D1            [10]  232 	pop	de
                            233 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4BEB 63            [ 4]  234 	ld	h,e
   4BEC 25            [ 4]  235 	dec	h
   4BED 25            [ 4]  236 	dec	h
   4BEE E5            [11]  237 	push	hl
   4BEF 33            [ 6]  238 	inc	sp
   4BF0 D5            [11]  239 	push	de
   4BF1 33            [ 6]  240 	inc	sp
   4BF2 21 00 C0      [10]  241 	ld	hl,#0xC000
   4BF5 E5            [11]  242 	push	hl
   4BF6 CD BA 6A      [17]  243 	call	_cpct_getScreenPtr
                            244 ;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4BF9 E5            [11]  245 	push	hl
   4BFA DD 66 06      [19]  246 	ld	h,6 (ix)
   4BFD DD 6E 06      [19]  247 	ld	l,6 (ix)
   4C00 E5            [11]  248 	push	hl
   4C01 DD 66 06      [19]  249 	ld	h,6 (ix)
   4C04 DD 6E 06      [19]  250 	ld	l,6 (ix)
   4C07 E5            [11]  251 	push	hl
   4C08 CD 94 69      [17]  252 	call	_cpct_px2byteM1
   4C0B F1            [10]  253 	pop	af
   4C0C F1            [10]  254 	pop	af
   4C0D 65            [ 4]  255 	ld	h,l
   4C0E D1            [10]  256 	pop	de
   4C0F 01 04 00      [10]  257 	ld	bc,#0x0004
   4C12 C5            [11]  258 	push	bc
   4C13 E5            [11]  259 	push	hl
   4C14 33            [ 6]  260 	inc	sp
   4C15 D5            [11]  261 	push	de
   4C16 CD 86 69      [17]  262 	call	_cpct_memset
                            263 ;src/game/world.c:20: break;
   4C19 C3 01 4D      [10]  264 	jp	00119$
                            265 ;src/game/world.c:21: case T_SSNS:
   4C1C                     266 00102$:
                            267 ;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4C1C 11 AD 5D      [10]  268 	ld	de,#_station_small_ns
   4C1F 21 04 10      [10]  269 	ld	hl,#0x1004
   4C22 E5            [11]  270 	push	hl
   4C23 C5            [11]  271 	push	bc
   4C24 D5            [11]  272 	push	de
   4C25 CD 36 67      [17]  273 	call	_cpct_drawSprite
                            274 ;src/game/world.c:23: break;
   4C28 C3 01 4D      [10]  275 	jp	00119$
                            276 ;src/game/world.c:24: case T_SSEW:
   4C2B                     277 00103$:
                            278 ;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4C2B 11 ED 5D      [10]  279 	ld	de,#_station_small_ew
   4C2E 21 04 10      [10]  280 	ld	hl,#0x1004
   4C31 E5            [11]  281 	push	hl
   4C32 C5            [11]  282 	push	bc
   4C33 D5            [11]  283 	push	de
   4C34 CD 36 67      [17]  284 	call	_cpct_drawSprite
                            285 ;src/game/world.c:26: break;
   4C37 C3 01 4D      [10]  286 	jp	00119$
                            287 ;src/game/world.c:27: case T_SMNS:
   4C3A                     288 00104$:
                            289 ;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4C3A 11 2D 5E      [10]  290 	ld	de,#_station_medium_ns
   4C3D 21 04 10      [10]  291 	ld	hl,#0x1004
   4C40 E5            [11]  292 	push	hl
   4C41 C5            [11]  293 	push	bc
   4C42 D5            [11]  294 	push	de
   4C43 CD 36 67      [17]  295 	call	_cpct_drawSprite
                            296 ;src/game/world.c:29: break;
   4C46 C3 01 4D      [10]  297 	jp	00119$
                            298 ;src/game/world.c:30: case T_SMEW:
   4C49                     299 00105$:
                            300 ;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4C49 11 6D 5E      [10]  301 	ld	de,#_station_medium_ew
   4C4C 21 04 10      [10]  302 	ld	hl,#0x1004
   4C4F E5            [11]  303 	push	hl
   4C50 C5            [11]  304 	push	bc
   4C51 D5            [11]  305 	push	de
   4C52 CD 36 67      [17]  306 	call	_cpct_drawSprite
                            307 ;src/game/world.c:32: break;
   4C55 C3 01 4D      [10]  308 	jp	00119$
                            309 ;src/game/world.c:33: case T_SLNS:
   4C58                     310 00106$:
                            311 ;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4C58 11 AD 5E      [10]  312 	ld	de,#_station_large_ns
   4C5B 21 04 10      [10]  313 	ld	hl,#0x1004
   4C5E E5            [11]  314 	push	hl
   4C5F C5            [11]  315 	push	bc
   4C60 D5            [11]  316 	push	de
   4C61 CD 36 67      [17]  317 	call	_cpct_drawSprite
                            318 ;src/game/world.c:35: break;
   4C64 C3 01 4D      [10]  319 	jp	00119$
                            320 ;src/game/world.c:36: case T_SLEW:
   4C67                     321 00107$:
                            322 ;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4C67 11 ED 5E      [10]  323 	ld	de,#_station_large_ew
   4C6A 21 04 10      [10]  324 	ld	hl,#0x1004
   4C6D E5            [11]  325 	push	hl
   4C6E C5            [11]  326 	push	bc
   4C6F D5            [11]  327 	push	de
   4C70 CD 36 67      [17]  328 	call	_cpct_drawSprite
                            329 ;src/game/world.c:38: break;
   4C73 C3 01 4D      [10]  330 	jp	00119$
                            331 ;src/game/world.c:39: case T_REW:
   4C76                     332 00108$:
                            333 ;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   4C76 11 2D 5F      [10]  334 	ld	de,#_rail_ew
   4C79 21 04 10      [10]  335 	ld	hl,#0x1004
   4C7C E5            [11]  336 	push	hl
   4C7D C5            [11]  337 	push	bc
   4C7E D5            [11]  338 	push	de
   4C7F CD 36 67      [17]  339 	call	_cpct_drawSprite
                            340 ;src/game/world.c:41: break;
   4C82 C3 01 4D      [10]  341 	jp	00119$
                            342 ;src/game/world.c:42: case T_RNS:
   4C85                     343 00109$:
                            344 ;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   4C85 11 6D 5F      [10]  345 	ld	de,#_rail_ns
   4C88 21 04 10      [10]  346 	ld	hl,#0x1004
   4C8B E5            [11]  347 	push	hl
   4C8C C5            [11]  348 	push	bc
   4C8D D5            [11]  349 	push	de
   4C8E CD 36 67      [17]  350 	call	_cpct_drawSprite
                            351 ;src/game/world.c:44: break;
   4C91 18 6E         [12]  352 	jr	00119$
                            353 ;src/game/world.c:45: case T_REN:
   4C93                     354 00110$:
                            355 ;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   4C93 11 AD 5F      [10]  356 	ld	de,#_rail_en
   4C96 21 04 10      [10]  357 	ld	hl,#0x1004
   4C99 E5            [11]  358 	push	hl
   4C9A C5            [11]  359 	push	bc
   4C9B D5            [11]  360 	push	de
   4C9C CD 36 67      [17]  361 	call	_cpct_drawSprite
                            362 ;src/game/world.c:47: break;
   4C9F 18 60         [12]  363 	jr	00119$
                            364 ;src/game/world.c:48: case T_RES:
   4CA1                     365 00111$:
                            366 ;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   4CA1 11 ED 5F      [10]  367 	ld	de,#_rail_es
   4CA4 21 04 10      [10]  368 	ld	hl,#0x1004
   4CA7 E5            [11]  369 	push	hl
   4CA8 C5            [11]  370 	push	bc
   4CA9 D5            [11]  371 	push	de
   4CAA CD 36 67      [17]  372 	call	_cpct_drawSprite
                            373 ;src/game/world.c:50: break;
   4CAD 18 52         [12]  374 	jr	00119$
                            375 ;src/game/world.c:51: case T_RWN:
   4CAF                     376 00112$:
                            377 ;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   4CAF 11 2D 60      [10]  378 	ld	de,#_rail_wn
   4CB2 21 04 10      [10]  379 	ld	hl,#0x1004
   4CB5 E5            [11]  380 	push	hl
   4CB6 C5            [11]  381 	push	bc
   4CB7 D5            [11]  382 	push	de
   4CB8 CD 36 67      [17]  383 	call	_cpct_drawSprite
                            384 ;src/game/world.c:53: break;
   4CBB 18 44         [12]  385 	jr	00119$
                            386 ;src/game/world.c:54: case T_RWS:
   4CBD                     387 00113$:
                            388 ;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   4CBD 11 6D 60      [10]  389 	ld	de,#_rail_ws
   4CC0 21 04 10      [10]  390 	ld	hl,#0x1004
   4CC3 E5            [11]  391 	push	hl
   4CC4 C5            [11]  392 	push	bc
   4CC5 D5            [11]  393 	push	de
   4CC6 CD 36 67      [17]  394 	call	_cpct_drawSprite
                            395 ;src/game/world.c:56: break;
   4CC9 18 36         [12]  396 	jr	00119$
                            397 ;src/game/world.c:57: case T_REWN:
   4CCB                     398 00114$:
                            399 ;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   4CCB 11 AD 60      [10]  400 	ld	de,#_rail_ew_n
   4CCE 21 04 10      [10]  401 	ld	hl,#0x1004
   4CD1 E5            [11]  402 	push	hl
   4CD2 C5            [11]  403 	push	bc
   4CD3 D5            [11]  404 	push	de
   4CD4 CD 36 67      [17]  405 	call	_cpct_drawSprite
                            406 ;src/game/world.c:59: break;
   4CD7 18 28         [12]  407 	jr	00119$
                            408 ;src/game/world.c:60: case T_REWS:
   4CD9                     409 00115$:
                            410 ;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   4CD9 11 ED 60      [10]  411 	ld	de,#_rail_ew_s
   4CDC 21 04 10      [10]  412 	ld	hl,#0x1004
   4CDF E5            [11]  413 	push	hl
   4CE0 C5            [11]  414 	push	bc
   4CE1 D5            [11]  415 	push	de
   4CE2 CD 36 67      [17]  416 	call	_cpct_drawSprite
                            417 ;src/game/world.c:62: break;
   4CE5 18 1A         [12]  418 	jr	00119$
                            419 ;src/game/world.c:63: case T_RNSE:
   4CE7                     420 00116$:
                            421 ;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   4CE7 11 6D 61      [10]  422 	ld	de,#_rail_ns_e
   4CEA 21 04 10      [10]  423 	ld	hl,#0x1004
   4CED E5            [11]  424 	push	hl
   4CEE C5            [11]  425 	push	bc
   4CEF D5            [11]  426 	push	de
   4CF0 CD 36 67      [17]  427 	call	_cpct_drawSprite
                            428 ;src/game/world.c:65: break;
   4CF3 18 0C         [12]  429 	jr	00119$
                            430 ;src/game/world.c:66: case T_RNSW:
   4CF5                     431 00117$:
                            432 ;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   4CF5 11 2D 61      [10]  433 	ld	de,#_rail_ns_w
   4CF8 21 04 10      [10]  434 	ld	hl,#0x1004
   4CFB E5            [11]  435 	push	hl
   4CFC C5            [11]  436 	push	bc
   4CFD D5            [11]  437 	push	de
   4CFE CD 36 67      [17]  438 	call	_cpct_drawSprite
                            439 ;src/game/world.c:69: }
   4D01                     440 00119$:
   4D01 33            [ 6]  441 	inc	sp
   4D02 DD E1         [14]  442 	pop	ix
   4D04 C9            [10]  443 	ret
                            444 ;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            445 ;	---------------------------------
                            446 ; Function patternTile
                            447 ; ---------------------------------
   4D05                     448 _patternTile::
   4D05 DD E5         [15]  449 	push	ix
   4D07 DD 21 00 00   [14]  450 	ld	ix,#0
   4D0B DD 39         [15]  451 	add	ix,sp
   4D0D 21 F5 FF      [10]  452 	ld	hl,#-11
   4D10 39            [11]  453 	add	hl,sp
   4D11 F9            [ 6]  454 	ld	sp,hl
                            455 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   4D12 DD 7E 04      [19]  456 	ld	a,4 (ix)
   4D15 D6 08         [ 7]  457 	sub	a, #0x08
   4D17 20 04         [12]  458 	jr	NZ,00153$
   4D19 3E 01         [ 7]  459 	ld	a,#0x01
   4D1B 18 01         [12]  460 	jr	00154$
   4D1D                     461 00153$:
   4D1D AF            [ 4]  462 	xor	a,a
   4D1E                     463 00154$:
   4D1E DD 77 FA      [19]  464 	ld	-6 (ix),a
   4D21 DD 7E 04      [19]  465 	ld	a,4 (ix)
   4D24 D6 02         [ 7]  466 	sub	a, #0x02
   4D26 20 04         [12]  467 	jr	NZ,00155$
   4D28 3E 01         [ 7]  468 	ld	a,#0x01
   4D2A 18 01         [12]  469 	jr	00156$
   4D2C                     470 00155$:
   4D2C AF            [ 4]  471 	xor	a,a
   4D2D                     472 00156$:
   4D2D DD 77 F9      [19]  473 	ld	-7 (ix),a
   4D30 DD 36 F5 00   [19]  474 	ld	-11 (ix),#0x00
   4D34 11 00 00      [10]  475 	ld	de,#0x0000
   4D37                     476 00115$:
   4D37 DD 7E F5      [19]  477 	ld	a,-11 (ix)
   4D3A DD 96 08      [19]  478 	sub	a, 8 (ix)
   4D3D D2 FD 4D      [10]  479 	jp	NC,00117$
                            480 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   4D40 DD 7E 05      [19]  481 	ld	a,5 (ix)
   4D43 83            [ 4]  482 	add	a, e
   4D44 DD 77 F7      [19]  483 	ld	-9 (ix),a
   4D47 DD 7E 06      [19]  484 	ld	a,6 (ix)
   4D4A 8A            [ 4]  485 	adc	a, d
   4D4B DD 77 F8      [19]  486 	ld	-8 (ix),a
   4D4E D5            [11]  487 	push	de
   4D4F DD 5E 07      [19]  488 	ld	e,7 (ix)
   4D52 DD 66 F5      [19]  489 	ld	h,-11 (ix)
   4D55 2E 00         [ 7]  490 	ld	l, #0x00
   4D57 55            [ 4]  491 	ld	d, l
   4D58 06 08         [ 7]  492 	ld	b, #0x08
   4D5A                     493 00157$:
   4D5A 29            [11]  494 	add	hl,hl
   4D5B 30 01         [12]  495 	jr	NC,00158$
   4D5D 19            [11]  496 	add	hl,de
   4D5E                     497 00158$:
   4D5E 10 FA         [13]  498 	djnz	00157$
   4D60 D1            [10]  499 	pop	de
   4D61 DD 75 FE      [19]  500 	ld	-2 (ix),l
   4D64 DD 74 FF      [19]  501 	ld	-1 (ix),h
   4D67 DD 36 F6 00   [19]  502 	ld	-10 (ix),#0x00
   4D6B                     503 00112$:
   4D6B DD 7E F6      [19]  504 	ld	a,-10 (ix)
   4D6E DD 96 07      [19]  505 	sub	a, 7 (ix)
   4D71 D2 F2 4D      [10]  506 	jp	NC,00116$
                            507 ;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   4D74 DD 7E F6      [19]  508 	ld	a,-10 (ix)
   4D77 DD 77 FC      [19]  509 	ld	-4 (ix),a
   4D7A DD 36 FD 00   [19]  510 	ld	-3 (ix),#0x00
   4D7E DD 7E FE      [19]  511 	ld	a,-2 (ix)
   4D81 DD 86 FC      [19]  512 	add	a, -4 (ix)
   4D84 6F            [ 4]  513 	ld	l,a
   4D85 DD 7E FF      [19]  514 	ld	a,-1 (ix)
   4D88 DD 8E FD      [19]  515 	adc	a, -3 (ix)
   4D8B 67            [ 4]  516 	ld	h,a
   4D8C DD 4E 09      [19]  517 	ld	c,9 (ix)
   4D8F DD 46 0A      [19]  518 	ld	b,10 (ix)
   4D92 D5            [11]  519 	push	de
   4D93 E5            [11]  520 	push	hl
   4D94 C5            [11]  521 	push	bc
   4D95 CD F6 66      [17]  522 	call	_cpct_getBit
   4D98 DD 75 FB      [19]  523 	ld	-5 (ix),l
   4D9B D1            [10]  524 	pop	de
   4D9C DD 7E FB      [19]  525 	ld	a,-5 (ix)
   4D9F B7            [ 4]  526 	or	a, a
   4DA0 28 4A         [12]  527 	jr	Z,00113$
   4DA2 DD 7E F7      [19]  528 	ld	a,-9 (ix)
   4DA5 DD 86 FC      [19]  529 	add	a, -4 (ix)
   4DA8 4F            [ 4]  530 	ld	c,a
   4DA9 DD 7E F8      [19]  531 	ld	a,-8 (ix)
   4DAC DD 8E FD      [19]  532 	adc	a, -3 (ix)
   4DAF 47            [ 4]  533 	ld	b,a
   4DB0 EE 80         [ 7]  534 	xor	a, #0x80
   4DB2 D6 8F         [ 7]  535 	sub	a, #0x8F
   4DB4 30 36         [12]  536 	jr	NC,00113$
                            537 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   4DB6 21 8E 6B      [10]  538 	ld	hl,#_p_world
   4DB9 09            [11]  539 	add	hl,bc
   4DBA 4D            [ 4]  540 	ld	c,l
   4DBB 44            [ 4]  541 	ld	b,h
                            542 ;src/game/world.c:83: if(tileType == FOREST)
   4DBC DD 7E FA      [19]  543 	ld	a,-6 (ix)
   4DBF B7            [ 4]  544 	or	a, a
   4DC0 28 06         [12]  545 	jr	Z,00104$
                            546 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   4DC2 DD 7E 04      [19]  547 	ld	a,4 (ix)
   4DC5 02            [ 7]  548 	ld	(bc),a
   4DC6 18 24         [12]  549 	jr	00113$
   4DC8                     550 00104$:
                            551 ;src/game/world.c:85: else if(tileType==DWELLINGS1)
   4DC8 DD 7E F9      [19]  552 	ld	a,-7 (ix)
   4DCB B7            [ 4]  553 	or	a, a
   4DCC 28 1E         [12]  554 	jr	Z,00113$
                            555 ;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   4DCE C5            [11]  556 	push	bc
   4DCF D5            [11]  557 	push	de
   4DD0 CD 3E 68      [17]  558 	call	_cpct_count2VSYNC
   4DD3 CD F0 69      [17]  559 	call	_cpct_getRandomUniform_u8_f
   4DD6 DD 75 FB      [19]  560 	ld	-5 (ix),l
   4DD9 3E 03         [ 7]  561 	ld	a,#0x03
   4DDB F5            [11]  562 	push	af
   4DDC 33            [ 6]  563 	inc	sp
   4DDD DD 7E FB      [19]  564 	ld	a,-5 (ix)
   4DE0 F5            [11]  565 	push	af
   4DE1 33            [ 6]  566 	inc	sp
   4DE2 CD DB 67      [17]  567 	call	__moduchar
   4DE5 F1            [10]  568 	pop	af
   4DE6 7D            [ 4]  569 	ld	a,l
   4DE7 D1            [10]  570 	pop	de
   4DE8 C1            [10]  571 	pop	bc
   4DE9 C6 02         [ 7]  572 	add	a, #0x02
   4DEB 02            [ 7]  573 	ld	(bc),a
   4DEC                     574 00113$:
                            575 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   4DEC DD 34 F6      [23]  576 	inc	-10 (ix)
   4DEF C3 6B 4D      [10]  577 	jp	00112$
   4DF2                     578 00116$:
                            579 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   4DF2 21 50 00      [10]  580 	ld	hl,#0x0050
   4DF5 19            [11]  581 	add	hl,de
   4DF6 EB            [ 4]  582 	ex	de,hl
   4DF7 DD 34 F5      [23]  583 	inc	-11 (ix)
   4DFA C3 37 4D      [10]  584 	jp	00115$
   4DFD                     585 00117$:
   4DFD DD F9         [10]  586 	ld	sp, ix
   4DFF DD E1         [14]  587 	pop	ix
   4E01 C9            [10]  588 	ret
                            589 ;src/game/world.c:93: void generateWorld()
                            590 ;	---------------------------------
                            591 ; Function generateWorld
                            592 ; ---------------------------------
   4E02                     593 _generateWorld::
   4E02 DD E5         [15]  594 	push	ix
   4E04 DD 21 00 00   [14]  595 	ld	ix,#0
   4E08 DD 39         [15]  596 	add	ix,sp
   4E0A 21 E5 FF      [10]  597 	ld	hl,#-27
   4E0D 39            [11]  598 	add	hl,sp
   4E0E F9            [ 6]  599 	ld	sp,hl
                            600 ;src/game/world.c:101: cpct_srand((u32)cpct_count2VSYNC());
   4E0F CD 3E 68      [17]  601 	call	_cpct_count2VSYNC
   4E12 11 00 00      [10]  602 	ld	de,#0x0000
   4E15 CD 67 68      [17]  603 	call	_cpct_setSeed_mxor
                            604 ;src/game/world.c:105: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4E18 11 00 00      [10]  605 	ld	de,#0x0000
   4E1B                     606 00119$:
                            607 ;src/game/world.c:107: p_world[iy] = cpct_rand()%2;
   4E1B 21 8E 6B      [10]  608 	ld	hl,#_p_world
   4E1E 19            [11]  609 	add	hl,de
   4E1F E5            [11]  610 	push	hl
   4E20 D5            [11]  611 	push	de
   4E21 CD CC 69      [17]  612 	call	_cpct_getRandom_mxor_u8
   4E24 7D            [ 4]  613 	ld	a,l
   4E25 D1            [10]  614 	pop	de
   4E26 E1            [10]  615 	pop	hl
   4E27 E6 01         [ 7]  616 	and	a, #0x01
   4E29 77            [ 7]  617 	ld	(hl),a
                            618 ;src/game/world.c:105: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4E2A 13            [ 6]  619 	inc	de
   4E2B 7A            [ 4]  620 	ld	a,d
   4E2C EE 80         [ 7]  621 	xor	a, #0x80
   4E2E D6 8F         [ 7]  622 	sub	a, #0x8F
   4E30 38 E9         [12]  623 	jr	C,00119$
                            624 ;src/game/world.c:111: for(ix=0; ix<NBFOREST; ix++)
   4E32 21 04 00      [10]  625 	ld	hl,#0x0004
   4E35 39            [11]  626 	add	hl,sp
   4E36 DD 75 F1      [19]  627 	ld	-15 (ix),l
   4E39 DD 74 F2      [19]  628 	ld	-14 (ix),h
   4E3C 01 00 00      [10]  629 	ld	bc,#0x0000
   4E3F                     630 00121$:
                            631 ;src/game/world.c:113: iy = cpct_rand16()%(WIDTH*HEIGHT);
   4E3F C5            [11]  632 	push	bc
   4E40 CD 00 69      [17]  633 	call	_cpct_getRandom_mxor_u16
   4E43 11 00 0F      [10]  634 	ld	de,#0x0F00
   4E46 D5            [11]  635 	push	de
   4E47 E5            [11]  636 	push	hl
   4E48 CD E7 67      [17]  637 	call	__moduint
   4E4B F1            [10]  638 	pop	af
   4E4C F1            [10]  639 	pop	af
   4E4D C1            [10]  640 	pop	bc
   4E4E DD 75 F3      [19]  641 	ld	-13 (ix),l
   4E51 DD 74 F4      [19]  642 	ld	-12 (ix),h
                            643 ;src/game/world.c:115: switch(cpct_rand()%4)
   4E54 C5            [11]  644 	push	bc
   4E55 CD CC 69      [17]  645 	call	_cpct_getRandom_mxor_u8
   4E58 7D            [ 4]  646 	ld	a,l
   4E59 C1            [10]  647 	pop	bc
   4E5A E6 03         [ 7]  648 	and	a, #0x03
   4E5C DD 77 F9      [19]  649 	ld	-7 (ix),a
   4E5F 3E 03         [ 7]  650 	ld	a,#0x03
   4E61 DD 96 F9      [19]  651 	sub	a, -7 (ix)
   4E64 DA C8 4F      [10]  652 	jp	C,00106$
                            653 ;src/game/world.c:119: p_forest[1] = 0b11000111;
   4E67 E5            [11]  654 	push	hl
   4E68 DD 6E F1      [19]  655 	ld	l,-15 (ix)
   4E6B DD 66 F2      [19]  656 	ld	h,-14 (ix)
   4E6E 23            [ 6]  657 	inc	hl
   4E6F E5            [11]  658 	push	hl
   4E70 FD E1         [14]  659 	pop	iy
   4E72 E1            [10]  660 	pop	hl
                            661 ;src/game/world.c:120: p_forest[2] = 0b11011110;
   4E73 DD 5E F1      [19]  662 	ld	e,-15 (ix)
   4E76 DD 56 F2      [19]  663 	ld	d,-14 (ix)
   4E79 13            [ 6]  664 	inc	de
   4E7A 13            [ 6]  665 	inc	de
                            666 ;src/game/world.c:121: p_forest[3] = 0b01111110;
   4E7B DD 7E F1      [19]  667 	ld	a,-15 (ix)
   4E7E C6 03         [ 7]  668 	add	a, #0x03
   4E80 DD 77 F7      [19]  669 	ld	-9 (ix),a
   4E83 DD 7E F2      [19]  670 	ld	a,-14 (ix)
   4E86 CE 00         [ 7]  671 	adc	a, #0x00
   4E88 DD 77 F8      [19]  672 	ld	-8 (ix),a
                            673 ;src/game/world.c:122: p_forest[4] = 0b11111110; 
   4E8B DD 7E F1      [19]  674 	ld	a,-15 (ix)
   4E8E C6 04         [ 7]  675 	add	a, #0x04
   4E90 DD 77 FA      [19]  676 	ld	-6 (ix),a
   4E93 DD 7E F2      [19]  677 	ld	a,-14 (ix)
   4E96 CE 00         [ 7]  678 	adc	a, #0x00
   4E98 DD 77 FB      [19]  679 	ld	-5 (ix),a
                            680 ;src/game/world.c:123: p_forest[5] = 0b01111111;
   4E9B DD 7E F1      [19]  681 	ld	a,-15 (ix)
   4E9E C6 05         [ 7]  682 	add	a, #0x05
   4EA0 DD 77 F5      [19]  683 	ld	-11 (ix),a
   4EA3 DD 7E F2      [19]  684 	ld	a,-14 (ix)
   4EA6 CE 00         [ 7]  685 	adc	a, #0x00
   4EA8 DD 77 F6      [19]  686 	ld	-10 (ix),a
                            687 ;src/game/world.c:124: p_forest[6] = 0b11101111;
   4EAB DD 7E F1      [19]  688 	ld	a,-15 (ix)
   4EAE C6 06         [ 7]  689 	add	a, #0x06
   4EB0 DD 77 FE      [19]  690 	ld	-2 (ix),a
   4EB3 DD 7E F2      [19]  691 	ld	a,-14 (ix)
   4EB6 CE 00         [ 7]  692 	adc	a, #0x00
   4EB8 DD 77 FF      [19]  693 	ld	-1 (ix),a
                            694 ;src/game/world.c:125: p_forest[7] = 0b11001111;
   4EBB DD 7E F1      [19]  695 	ld	a,-15 (ix)
   4EBE C6 07         [ 7]  696 	add	a, #0x07
   4EC0 DD 77 FC      [19]  697 	ld	-4 (ix),a
   4EC3 DD 7E F2      [19]  698 	ld	a,-14 (ix)
   4EC6 CE 00         [ 7]  699 	adc	a, #0x00
   4EC8 DD 77 FD      [19]  700 	ld	-3 (ix),a
                            701 ;src/game/world.c:115: switch(cpct_rand()%4)
   4ECB D5            [11]  702 	push	de
   4ECC DD 5E F9      [19]  703 	ld	e,-7 (ix)
   4ECF 16 00         [ 7]  704 	ld	d,#0x00
   4ED1 21 D9 4E      [10]  705 	ld	hl,#00195$
   4ED4 19            [11]  706 	add	hl,de
   4ED5 19            [11]  707 	add	hl,de
   4ED6 19            [11]  708 	add	hl,de
   4ED7 D1            [10]  709 	pop	de
   4ED8 E9            [ 4]  710 	jp	(hl)
   4ED9                     711 00195$:
   4ED9 C3 E5 4E      [10]  712 	jp	00102$
   4EDC C3 1F 4F      [10]  713 	jp	00103$
   4EDF C3 58 4F      [10]  714 	jp	00104$
   4EE2 C3 91 4F      [10]  715 	jp	00105$
                            716 ;src/game/world.c:117: case 0:
   4EE5                     717 00102$:
                            718 ;src/game/world.c:118: p_forest[0] = 0b10000100;
   4EE5 DD 6E F1      [19]  719 	ld	l,-15 (ix)
   4EE8 DD 66 F2      [19]  720 	ld	h,-14 (ix)
   4EEB 36 84         [10]  721 	ld	(hl),#0x84
                            722 ;src/game/world.c:119: p_forest[1] = 0b11000111;
   4EED FD 36 00 C7   [19]  723 	ld	0 (iy), #0xC7
                            724 ;src/game/world.c:120: p_forest[2] = 0b11011110;
   4EF1 3E DE         [ 7]  725 	ld	a,#0xDE
   4EF3 12            [ 7]  726 	ld	(de),a
                            727 ;src/game/world.c:121: p_forest[3] = 0b01111110;
   4EF4 DD 6E F7      [19]  728 	ld	l,-9 (ix)
   4EF7 DD 66 F8      [19]  729 	ld	h,-8 (ix)
   4EFA 36 7E         [10]  730 	ld	(hl),#0x7E
                            731 ;src/game/world.c:122: p_forest[4] = 0b11111110; 
   4EFC DD 6E FA      [19]  732 	ld	l,-6 (ix)
   4EFF DD 66 FB      [19]  733 	ld	h,-5 (ix)
   4F02 36 FE         [10]  734 	ld	(hl),#0xFE
                            735 ;src/game/world.c:123: p_forest[5] = 0b01111111;
   4F04 DD 6E F5      [19]  736 	ld	l,-11 (ix)
   4F07 DD 66 F6      [19]  737 	ld	h,-10 (ix)
   4F0A 36 7F         [10]  738 	ld	(hl),#0x7F
                            739 ;src/game/world.c:124: p_forest[6] = 0b11101111;
   4F0C DD 6E FE      [19]  740 	ld	l,-2 (ix)
   4F0F DD 66 FF      [19]  741 	ld	h,-1 (ix)
   4F12 36 EF         [10]  742 	ld	(hl),#0xEF
                            743 ;src/game/world.c:125: p_forest[7] = 0b11001111;
   4F14 DD 6E FC      [19]  744 	ld	l,-4 (ix)
   4F17 DD 66 FD      [19]  745 	ld	h,-3 (ix)
   4F1A 36 CF         [10]  746 	ld	(hl),#0xCF
                            747 ;src/game/world.c:126: break;
   4F1C C3 C8 4F      [10]  748 	jp	00106$
                            749 ;src/game/world.c:127: case 1:
   4F1F                     750 00103$:
                            751 ;src/game/world.c:128: p_forest[0] = 0b00001100;
   4F1F DD 6E F1      [19]  752 	ld	l,-15 (ix)
   4F22 DD 66 F2      [19]  753 	ld	h,-14 (ix)
   4F25 36 0C         [10]  754 	ld	(hl),#0x0C
                            755 ;src/game/world.c:129: p_forest[1] = 0b11111000;
   4F27 FD 36 00 F8   [19]  756 	ld	0 (iy), #0xF8
                            757 ;src/game/world.c:130: p_forest[2] = 0b00111111;
   4F2B 3E 3F         [ 7]  758 	ld	a,#0x3F
   4F2D 12            [ 7]  759 	ld	(de),a
                            760 ;src/game/world.c:131: p_forest[3] = 0b01111110;
   4F2E DD 6E F7      [19]  761 	ld	l,-9 (ix)
   4F31 DD 66 F8      [19]  762 	ld	h,-8 (ix)
   4F34 36 7E         [10]  763 	ld	(hl),#0x7E
                            764 ;src/game/world.c:132: p_forest[4] = 0b11111110; 
   4F36 DD 6E FA      [19]  765 	ld	l,-6 (ix)
   4F39 DD 66 FB      [19]  766 	ld	h,-5 (ix)
   4F3C 36 FE         [10]  767 	ld	(hl),#0xFE
                            768 ;src/game/world.c:133: p_forest[5] = 0b01011111;
   4F3E DD 6E F5      [19]  769 	ld	l,-11 (ix)
   4F41 DD 66 F6      [19]  770 	ld	h,-10 (ix)
   4F44 36 5F         [10]  771 	ld	(hl),#0x5F
                            772 ;src/game/world.c:134: p_forest[6] = 0b11001111;
   4F46 DD 6E FE      [19]  773 	ld	l,-2 (ix)
   4F49 DD 66 FF      [19]  774 	ld	h,-1 (ix)
   4F4C 36 CF         [10]  775 	ld	(hl),#0xCF
                            776 ;src/game/world.c:135: p_forest[7] = 0b10001100;
   4F4E DD 6E FC      [19]  777 	ld	l,-4 (ix)
   4F51 DD 66 FD      [19]  778 	ld	h,-3 (ix)
   4F54 36 8C         [10]  779 	ld	(hl),#0x8C
                            780 ;src/game/world.c:136: break;
   4F56 18 70         [12]  781 	jr	00106$
                            782 ;src/game/world.c:137: case 2:
   4F58                     783 00104$:
                            784 ;src/game/world.c:138: p_forest[0] = 0b00110000;
   4F58 DD 6E F1      [19]  785 	ld	l,-15 (ix)
   4F5B DD 66 F2      [19]  786 	ld	h,-14 (ix)
   4F5E 36 30         [10]  787 	ld	(hl),#0x30
                            788 ;src/game/world.c:139: p_forest[1] = 0b11110100;
   4F60 FD 36 00 F4   [19]  789 	ld	0 (iy), #0xF4
                            790 ;src/game/world.c:140: p_forest[2] = 0b11111111;
   4F64 3E FF         [ 7]  791 	ld	a,#0xFF
   4F66 12            [ 7]  792 	ld	(de),a
                            793 ;src/game/world.c:141: p_forest[3] = 0b11111111;
   4F67 DD 6E F7      [19]  794 	ld	l,-9 (ix)
   4F6A DD 66 F8      [19]  795 	ld	h,-8 (ix)
   4F6D 36 FF         [10]  796 	ld	(hl),#0xFF
                            797 ;src/game/world.c:142: p_forest[4] = 0b01111100;
   4F6F DD 6E FA      [19]  798 	ld	l,-6 (ix)
   4F72 DD 66 FB      [19]  799 	ld	h,-5 (ix)
   4F75 36 7C         [10]  800 	ld	(hl),#0x7C
                            801 ;src/game/world.c:143: p_forest[5] = 0b01111110;
   4F77 DD 6E F5      [19]  802 	ld	l,-11 (ix)
   4F7A DD 66 F6      [19]  803 	ld	h,-10 (ix)
   4F7D 36 7E         [10]  804 	ld	(hl),#0x7E
                            805 ;src/game/world.c:144: p_forest[6] = 0b00111110;
   4F7F DD 6E FE      [19]  806 	ld	l,-2 (ix)
   4F82 DD 66 FF      [19]  807 	ld	h,-1 (ix)
   4F85 36 3E         [10]  808 	ld	(hl),#0x3E
                            809 ;src/game/world.c:145: p_forest[7] = 0b00011000;
   4F87 DD 6E FC      [19]  810 	ld	l,-4 (ix)
   4F8A DD 66 FD      [19]  811 	ld	h,-3 (ix)
   4F8D 36 18         [10]  812 	ld	(hl),#0x18
                            813 ;src/game/world.c:146: break;
   4F8F 18 37         [12]  814 	jr	00106$
                            815 ;src/game/world.c:147: case 3:
   4F91                     816 00105$:
                            817 ;src/game/world.c:148: p_forest[0] = 0b11000000 , 
   4F91 DD 6E F1      [19]  818 	ld	l,-15 (ix)
   4F94 DD 66 F2      [19]  819 	ld	h,-14 (ix)
   4F97 36 C0         [10]  820 	ld	(hl),#0xC0
                            821 ;src/game/world.c:149: p_forest[1] = 0b11100111;
   4F99 FD 36 00 E7   [19]  822 	ld	0 (iy), #0xE7
                            823 ;src/game/world.c:150: p_forest[2] = 0b01111110;
   4F9D 3E 7E         [ 7]  824 	ld	a,#0x7E
   4F9F 12            [ 7]  825 	ld	(de),a
                            826 ;src/game/world.c:151: p_forest[3] = 0b01111110;
   4FA0 DD 6E F7      [19]  827 	ld	l,-9 (ix)
   4FA3 DD 66 F8      [19]  828 	ld	h,-8 (ix)
   4FA6 36 7E         [10]  829 	ld	(hl),#0x7E
                            830 ;src/game/world.c:152: p_forest[4] = 0b11111110;
   4FA8 DD 6E FA      [19]  831 	ld	l,-6 (ix)
   4FAB DD 66 FB      [19]  832 	ld	h,-5 (ix)
   4FAE 36 FE         [10]  833 	ld	(hl),#0xFE
                            834 ;src/game/world.c:153: p_forest[5] = 0b11111100;
   4FB0 DD 6E F5      [19]  835 	ld	l,-11 (ix)
   4FB3 DD 66 F6      [19]  836 	ld	h,-10 (ix)
   4FB6 36 FC         [10]  837 	ld	(hl),#0xFC
                            838 ;src/game/world.c:154: p_forest[6] = 0b01111000;
   4FB8 DD 6E FE      [19]  839 	ld	l,-2 (ix)
   4FBB DD 66 FF      [19]  840 	ld	h,-1 (ix)
   4FBE 36 78         [10]  841 	ld	(hl),#0x78
                            842 ;src/game/world.c:155: p_forest[7] = 0b00110000;
   4FC0 DD 6E FC      [19]  843 	ld	l,-4 (ix)
   4FC3 DD 66 FD      [19]  844 	ld	h,-3 (ix)
   4FC6 36 30         [10]  845 	ld	(hl),#0x30
                            846 ;src/game/world.c:157: }
   4FC8                     847 00106$:
                            848 ;src/game/world.c:158: patternTile(FOREST, iy, 8, 8, p_forest);
   4FC8 DD 6E F1      [19]  849 	ld	l,-15 (ix)
   4FCB DD 66 F2      [19]  850 	ld	h,-14 (ix)
   4FCE C5            [11]  851 	push	bc
   4FCF E5            [11]  852 	push	hl
   4FD0 21 08 08      [10]  853 	ld	hl,#0x0808
   4FD3 E5            [11]  854 	push	hl
   4FD4 DD 6E F3      [19]  855 	ld	l,-13 (ix)
   4FD7 DD 66 F4      [19]  856 	ld	h,-12 (ix)
   4FDA E5            [11]  857 	push	hl
   4FDB 3E 08         [ 7]  858 	ld	a,#0x08
   4FDD F5            [11]  859 	push	af
   4FDE 33            [ 6]  860 	inc	sp
   4FDF CD 05 4D      [17]  861 	call	_patternTile
   4FE2 21 07 00      [10]  862 	ld	hl,#7
   4FE5 39            [11]  863 	add	hl,sp
   4FE6 F9            [ 6]  864 	ld	sp,hl
   4FE7 C1            [10]  865 	pop	bc
                            866 ;src/game/world.c:111: for(ix=0; ix<NBFOREST; ix++)
   4FE8 03            [ 6]  867 	inc	bc
   4FE9 79            [ 4]  868 	ld	a,c
   4FEA D6 32         [ 7]  869 	sub	a, #0x32
   4FEC 78            [ 4]  870 	ld	a,b
   4FED 17            [ 4]  871 	rla
   4FEE 3F            [ 4]  872 	ccf
   4FEF 1F            [ 4]  873 	rra
   4FF0 DE 80         [ 7]  874 	sbc	a, #0x80
   4FF2 DA 3F 4E      [10]  875 	jp	C,00121$
                            876 ;src/game/world.c:164: for(ix=0; ix<NBFARM; ix++)
   4FF5 11 3C 00      [10]  877 	ld	de,#0x003C
   4FF8                     878 00125$:
                            879 ;src/game/world.c:166: iy = cpct_rand16()%(WIDTH*HEIGHT);
   4FF8 D5            [11]  880 	push	de
   4FF9 CD 00 69      [17]  881 	call	_cpct_getRandom_mxor_u16
   4FFC D1            [10]  882 	pop	de
   4FFD D5            [11]  883 	push	de
   4FFE 01 00 0F      [10]  884 	ld	bc,#0x0F00
   5001 C5            [11]  885 	push	bc
   5002 E5            [11]  886 	push	hl
   5003 CD E7 67      [17]  887 	call	__moduint
   5006 F1            [10]  888 	pop	af
   5007 F1            [10]  889 	pop	af
   5008 D1            [10]  890 	pop	de
                            891 ;src/game/world.c:167: p_world[iy] = cpct_rand()%2+5;
   5009 01 8E 6B      [10]  892 	ld	bc,#_p_world
   500C 09            [11]  893 	add	hl,bc
   500D E5            [11]  894 	push	hl
   500E D5            [11]  895 	push	de
   500F CD CC 69      [17]  896 	call	_cpct_getRandom_mxor_u8
   5012 7D            [ 4]  897 	ld	a,l
   5013 D1            [10]  898 	pop	de
   5014 E1            [10]  899 	pop	hl
   5015 E6 01         [ 7]  900 	and	a, #0x01
   5017 C6 05         [ 7]  901 	add	a, #0x05
   5019 77            [ 7]  902 	ld	(hl),a
   501A 1B            [ 6]  903 	dec	de
                            904 ;src/game/world.c:164: for(ix=0; ix<NBFARM; ix++)
   501B 7A            [ 4]  905 	ld	a,d
   501C B3            [ 4]  906 	or	a,e
   501D 20 D9         [12]  907 	jr	NZ,00125$
                            908 ;src/game/world.c:172: for(ix=0; ix<NBURBAN; ix++)
   501F 11 14 00      [10]  909 	ld	de,#0x0014
   5022                     910 00128$:
                            911 ;src/game/world.c:174: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5022 D5            [11]  912 	push	de
   5023 CD 00 69      [17]  913 	call	_cpct_getRandom_mxor_u16
   5026 D1            [10]  914 	pop	de
   5027 D5            [11]  915 	push	de
   5028 01 00 0F      [10]  916 	ld	bc,#0x0F00
   502B C5            [11]  917 	push	bc
   502C E5            [11]  918 	push	hl
   502D CD E7 67      [17]  919 	call	__moduint
   5030 F1            [10]  920 	pop	af
   5031 F1            [10]  921 	pop	af
   5032 D1            [10]  922 	pop	de
                            923 ;src/game/world.c:175: p_world[iy] = cpct_rand()%3+2;
   5033 3E 8E         [ 7]  924 	ld	a,#<(_p_world)
   5035 85            [ 4]  925 	add	a, l
   5036 DD 77 FC      [19]  926 	ld	-4 (ix),a
   5039 3E 6B         [ 7]  927 	ld	a,#>(_p_world)
   503B 8C            [ 4]  928 	adc	a, h
   503C DD 77 FD      [19]  929 	ld	-3 (ix),a
   503F D5            [11]  930 	push	de
   5040 CD CC 69      [17]  931 	call	_cpct_getRandom_mxor_u8
   5043 45            [ 4]  932 	ld	b,l
   5044 D1            [10]  933 	pop	de
   5045 D5            [11]  934 	push	de
   5046 3E 03         [ 7]  935 	ld	a,#0x03
   5048 F5            [11]  936 	push	af
   5049 33            [ 6]  937 	inc	sp
   504A C5            [11]  938 	push	bc
   504B 33            [ 6]  939 	inc	sp
   504C CD DB 67      [17]  940 	call	__moduchar
   504F F1            [10]  941 	pop	af
   5050 7D            [ 4]  942 	ld	a,l
   5051 D1            [10]  943 	pop	de
   5052 C6 02         [ 7]  944 	add	a, #0x02
   5054 DD 6E FC      [19]  945 	ld	l,-4 (ix)
   5057 DD 66 FD      [19]  946 	ld	h,-3 (ix)
   505A 77            [ 7]  947 	ld	(hl),a
   505B 1B            [ 6]  948 	dec	de
                            949 ;src/game/world.c:172: for(ix=0; ix<NBURBAN; ix++)
   505C 7A            [ 4]  950 	ld	a,d
   505D B3            [ 4]  951 	or	a,e
   505E 20 C2         [12]  952 	jr	NZ,00128$
                            953 ;src/game/world.c:178: for(ix=0; ix<NBURBAN; ix++)
   5060 21 02 00      [10]  954 	ld	hl,#0x0002
   5063 39            [11]  955 	add	hl,sp
   5064 4D            [ 4]  956 	ld	c,l
   5065 44            [ 4]  957 	ld	b,h
   5066 21 00 00      [10]  958 	ld	hl,#0x0000
   5069 E3            [19]  959 	ex	(sp), hl
   506A                     960 00129$:
                            961 ;src/game/world.c:180: iy = cpct_rand16()%(WIDTH*HEIGHT);
   506A C5            [11]  962 	push	bc
   506B CD 00 69      [17]  963 	call	_cpct_getRandom_mxor_u16
   506E 11 00 0F      [10]  964 	ld	de,#0x0F00
   5071 D5            [11]  965 	push	de
   5072 E5            [11]  966 	push	hl
   5073 CD E7 67      [17]  967 	call	__moduint
   5076 F1            [10]  968 	pop	af
   5077 F1            [10]  969 	pop	af
   5078 C1            [10]  970 	pop	bc
   5079 DD 75 FC      [19]  971 	ld	-4 (ix),l
   507C DD 74 FD      [19]  972 	ld	-3 (ix),h
                            973 ;src/game/world.c:182: switch(cpct_rand()%6)
   507F C5            [11]  974 	push	bc
   5080 CD CC 69      [17]  975 	call	_cpct_getRandom_mxor_u8
   5083 55            [ 4]  976 	ld	d,l
   5084 3E 06         [ 7]  977 	ld	a,#0x06
   5086 F5            [11]  978 	push	af
   5087 33            [ 6]  979 	inc	sp
   5088 D5            [11]  980 	push	de
   5089 33            [ 6]  981 	inc	sp
   508A CD DB 67      [17]  982 	call	__moduchar
   508D F1            [10]  983 	pop	af
   508E 5D            [ 4]  984 	ld	e,l
   508F C1            [10]  985 	pop	bc
   5090 3E 05         [ 7]  986 	ld	a,#0x05
   5092 93            [ 4]  987 	sub	a, e
   5093 38 6A         [12]  988 	jr	C,00116$
                            989 ;src/game/world.c:186: p_cities[1] = 0b01000110; // 01100010;
   5095 21 01 00      [10]  990 	ld	hl,#0x0001
   5098 09            [11]  991 	add	hl,bc
   5099 DD 75 FE      [19]  992 	ld	-2 (ix),l
   509C DD 74 FF      [19]  993 	ld	-1 (ix),h
                            994 ;src/game/world.c:182: switch(cpct_rand()%6)
   509F 16 00         [ 7]  995 	ld	d,#0x00
   50A1 21 A7 50      [10]  996 	ld	hl,#00196$
   50A4 19            [11]  997 	add	hl,de
   50A5 19            [11]  998 	add	hl,de
                            999 ;src/game/world.c:184: case 0:
   50A6 E9            [ 4] 1000 	jp	(hl)
   50A7                    1001 00196$:
   50A7 18 0A         [12] 1002 	jr	00110$
   50A9 18 15         [12] 1003 	jr	00111$
   50AB 18 20         [12] 1004 	jr	00112$
   50AD 18 2B         [12] 1005 	jr	00113$
   50AF 18 36         [12] 1006 	jr	00114$
   50B1 18 41         [12] 1007 	jr	00115$
   50B3                    1008 00110$:
                           1009 ;src/game/world.c:185: p_cities[0] = 0b01110010; // 01001110;
   50B3 3E 72         [ 7] 1010 	ld	a,#0x72
   50B5 02            [ 7] 1011 	ld	(bc),a
                           1012 ;src/game/world.c:186: p_cities[1] = 0b01000110; // 01100010;
   50B6 DD 6E FE      [19] 1013 	ld	l,-2 (ix)
   50B9 DD 66 FF      [19] 1014 	ld	h,-1 (ix)
   50BC 36 46         [10] 1015 	ld	(hl),#0x46
                           1016 ;src/game/world.c:187: break;
   50BE 18 3F         [12] 1017 	jr	00116$
                           1018 ;src/game/world.c:189: case 1:
   50C0                    1019 00111$:
                           1020 ;src/game/world.c:190: p_cities[0] = 0b01100000; // 00000110;
   50C0 3E 60         [ 7] 1021 	ld	a,#0x60
   50C2 02            [ 7] 1022 	ld	(bc),a
                           1023 ;src/game/world.c:191: p_cities[1] = 0b00000110; // 01100000;
   50C3 DD 6E FE      [19] 1024 	ld	l,-2 (ix)
   50C6 DD 66 FF      [19] 1025 	ld	h,-1 (ix)
   50C9 36 06         [10] 1026 	ld	(hl),#0x06
                           1027 ;src/game/world.c:192: break;
   50CB 18 32         [12] 1028 	jr	00116$
                           1029 ;src/game/world.c:194: case 2:
   50CD                    1030 00112$:
                           1031 ;src/game/world.c:195: p_cities[0] = 0b00010000; // 00001000;
   50CD 3E 10         [ 7] 1032 	ld	a,#0x10
   50CF 02            [ 7] 1033 	ld	(bc),a
                           1034 ;src/game/world.c:196: p_cities[1] = 0b00000110; // 01100000;
   50D0 DD 6E FE      [19] 1035 	ld	l,-2 (ix)
   50D3 DD 66 FF      [19] 1036 	ld	h,-1 (ix)
   50D6 36 06         [10] 1037 	ld	(hl),#0x06
                           1038 ;src/game/world.c:197: break;
   50D8 18 25         [12] 1039 	jr	00116$
                           1040 ;src/game/world.c:199: case 3:
   50DA                    1041 00113$:
                           1042 ;src/game/world.c:200: p_cities[0] = 0b11000000; // 00000011;
   50DA 3E C0         [ 7] 1043 	ld	a,#0xC0
   50DC 02            [ 7] 1044 	ld	(bc),a
                           1045 ;src/game/world.c:201: p_cities[1] = 0b00110001; // 10001100;
   50DD DD 6E FE      [19] 1046 	ld	l,-2 (ix)
   50E0 DD 66 FF      [19] 1047 	ld	h,-1 (ix)
   50E3 36 31         [10] 1048 	ld	(hl),#0x31
                           1049 ;src/game/world.c:202: break;
   50E5 18 18         [12] 1050 	jr	00116$
                           1051 ;src/game/world.c:204: case 4:
   50E7                    1052 00114$:
                           1053 ;src/game/world.c:205: p_cities[0] = 0b11000100; // 00100011;
   50E7 3E C4         [ 7] 1054 	ld	a,#0xC4
   50E9 02            [ 7] 1055 	ld	(bc),a
                           1056 ;src/game/world.c:206: p_cities[1] = 0b00001110; // 01110000;
   50EA DD 6E FE      [19] 1057 	ld	l,-2 (ix)
   50ED DD 66 FF      [19] 1058 	ld	h,-1 (ix)
   50F0 36 0E         [10] 1059 	ld	(hl),#0x0E
                           1060 ;src/game/world.c:207: break;
   50F2 18 0B         [12] 1061 	jr	00116$
                           1062 ;src/game/world.c:209: case 5:
   50F4                    1063 00115$:
                           1064 ;src/game/world.c:210: p_cities[0] = 0b01000000; // 00000010;
   50F4 3E 40         [ 7] 1065 	ld	a,#0x40
   50F6 02            [ 7] 1066 	ld	(bc),a
                           1067 ;src/game/world.c:211: p_cities[1] = 0b01001110; // 01110010;
   50F7 DD 6E FE      [19] 1068 	ld	l,-2 (ix)
   50FA DD 66 FF      [19] 1069 	ld	h,-1 (ix)
   50FD 36 4E         [10] 1070 	ld	(hl),#0x4E
                           1071 ;src/game/world.c:213: }
   50FF                    1072 00116$:
                           1073 ;src/game/world.c:215: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   50FF 69            [ 4] 1074 	ld	l, c
   5100 60            [ 4] 1075 	ld	h, b
   5101 C5            [11] 1076 	push	bc
   5102 E5            [11] 1077 	push	hl
   5103 21 04 04      [10] 1078 	ld	hl,#0x0404
   5106 E5            [11] 1079 	push	hl
   5107 DD 6E FC      [19] 1080 	ld	l,-4 (ix)
   510A DD 66 FD      [19] 1081 	ld	h,-3 (ix)
   510D E5            [11] 1082 	push	hl
   510E 3E 02         [ 7] 1083 	ld	a,#0x02
   5110 F5            [11] 1084 	push	af
   5111 33            [ 6] 1085 	inc	sp
   5112 CD 05 4D      [17] 1086 	call	_patternTile
   5115 21 07 00      [10] 1087 	ld	hl,#7
   5118 39            [11] 1088 	add	hl,sp
   5119 F9            [ 6] 1089 	ld	sp,hl
   511A C1            [10] 1090 	pop	bc
                           1091 ;src/game/world.c:178: for(ix=0; ix<NBURBAN; ix++)
   511B DD 34 E5      [23] 1092 	inc	-27 (ix)
   511E 20 03         [12] 1093 	jr	NZ,00197$
   5120 DD 34 E6      [23] 1094 	inc	-26 (ix)
   5123                    1095 00197$:
   5123 DD 7E E5      [19] 1096 	ld	a,-27 (ix)
   5126 D6 14         [ 7] 1097 	sub	a, #0x14
   5128 DD 7E E6      [19] 1098 	ld	a,-26 (ix)
   512B 17            [ 4] 1099 	rla
   512C 3F            [ 4] 1100 	ccf
   512D 1F            [ 4] 1101 	rra
   512E DE 80         [ 7] 1102 	sbc	a, #0x80
   5130 DA 6A 50      [10] 1103 	jp	C,00129$
                           1104 ;src/game/world.c:220: for(ix=0; ix<NBLIVESTOCK; ix++)
   5133 11 13 00      [10] 1105 	ld	de,#0x0013
   5136                    1106 00133$:
                           1107 ;src/game/world.c:222: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5136 D5            [11] 1108 	push	de
   5137 CD 00 69      [17] 1109 	call	_cpct_getRandom_mxor_u16
   513A D1            [10] 1110 	pop	de
   513B D5            [11] 1111 	push	de
   513C 01 00 0F      [10] 1112 	ld	bc,#0x0F00
   513F C5            [11] 1113 	push	bc
   5140 E5            [11] 1114 	push	hl
   5141 CD E7 67      [17] 1115 	call	__moduint
   5144 F1            [10] 1116 	pop	af
   5145 F1            [10] 1117 	pop	af
   5146 D1            [10] 1118 	pop	de
                           1119 ;src/game/world.c:223: p_world[iy] = LIVESTOCK;
   5147 01 8E 6B      [10] 1120 	ld	bc,#_p_world
   514A 09            [11] 1121 	add	hl,bc
   514B 36 09         [10] 1122 	ld	(hl),#0x09
   514D 1B            [ 6] 1123 	dec	de
                           1124 ;src/game/world.c:220: for(ix=0; ix<NBLIVESTOCK; ix++)
   514E 7A            [ 4] 1125 	ld	a,d
   514F B3            [ 4] 1126 	or	a,e
   5150 20 E4         [12] 1127 	jr	NZ,00133$
   5152 DD F9         [10] 1128 	ld	sp, ix
   5154 DD E1         [14] 1129 	pop	ix
   5156 C9            [10] 1130 	ret
                           1131 ;src/game/world.c:227: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1132 ;	---------------------------------
                           1133 ; Function drawTile
                           1134 ; ---------------------------------
   5157                    1135 _drawTile::
   5157 DD E5         [15] 1136 	push	ix
   5159 DD 21 00 00   [14] 1137 	ld	ix,#0
   515D DD 39         [15] 1138 	add	ix,sp
                           1139 ;src/game/world.c:230: int adress = (y_+iy)*WIDTH+x_+ix;
   515F DD 6E 05      [19] 1140 	ld	l,5 (ix)
   5162 26 00         [ 7] 1141 	ld	h,#0x00
   5164 DD 5E 07      [19] 1142 	ld	e,7 (ix)
   5167 16 00         [ 7] 1143 	ld	d,#0x00
   5169 19            [11] 1144 	add	hl,de
   516A 4D            [ 4] 1145 	ld	c, l
   516B 44            [ 4] 1146 	ld	b, h
   516C 29            [11] 1147 	add	hl, hl
   516D 29            [11] 1148 	add	hl, hl
   516E 09            [11] 1149 	add	hl, bc
   516F 29            [11] 1150 	add	hl, hl
   5170 29            [11] 1151 	add	hl, hl
   5171 29            [11] 1152 	add	hl, hl
   5172 29            [11] 1153 	add	hl, hl
   5173 DD 5E 04      [19] 1154 	ld	e,4 (ix)
   5176 16 00         [ 7] 1155 	ld	d,#0x00
   5178 19            [11] 1156 	add	hl,de
   5179 DD 5E 06      [19] 1157 	ld	e,6 (ix)
   517C 16 00         [ 7] 1158 	ld	d,#0x00
   517E 19            [11] 1159 	add	hl,de
   517F 5D            [ 4] 1160 	ld	e, l
   5180 54            [ 4] 1161 	ld	d, h
                           1162 ;src/game/world.c:232: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   5181 DD 7E 07      [19] 1163 	ld	a,7 (ix)
   5184 07            [ 4] 1164 	rlca
   5185 07            [ 4] 1165 	rlca
   5186 07            [ 4] 1166 	rlca
   5187 07            [ 4] 1167 	rlca
   5188 E6 F0         [ 7] 1168 	and	a,#0xF0
   518A 67            [ 4] 1169 	ld	h,a
   518B DD 7E 06      [19] 1170 	ld	a,6 (ix)
   518E 87            [ 4] 1171 	add	a, a
   518F 87            [ 4] 1172 	add	a, a
   5190 D5            [11] 1173 	push	de
   5191 E5            [11] 1174 	push	hl
   5192 33            [ 6] 1175 	inc	sp
   5193 F5            [11] 1176 	push	af
   5194 33            [ 6] 1177 	inc	sp
   5195 21 00 C0      [10] 1178 	ld	hl,#0xC000
   5198 E5            [11] 1179 	push	hl
   5199 CD BA 6A      [17] 1180 	call	_cpct_getScreenPtr
   519C D1            [10] 1181 	pop	de
   519D 4D            [ 4] 1182 	ld	c, l
   519E 44            [ 4] 1183 	ld	b, h
                           1184 ;src/game/world.c:234: switch(p_world[adress])
   519F 21 8E 6B      [10] 1185 	ld	hl,#_p_world
   51A2 19            [11] 1186 	add	hl,de
   51A3 5E            [ 7] 1187 	ld	e,(hl)
   51A4 3E 19         [ 7] 1188 	ld	a,#0x19
   51A6 93            [ 4] 1189 	sub	a, e
   51A7 DA 7C 53      [10] 1190 	jp	C,00128$
   51AA 16 00         [ 7] 1191 	ld	d,#0x00
   51AC 21 B3 51      [10] 1192 	ld	hl,#00134$
   51AF 19            [11] 1193 	add	hl,de
   51B0 19            [11] 1194 	add	hl,de
   51B1 19            [11] 1195 	add	hl,de
   51B2 E9            [ 4] 1196 	jp	(hl)
   51B3                    1197 00134$:
   51B3 C3 01 52      [10] 1198 	jp	00101$
   51B6 C3 10 52      [10] 1199 	jp	00102$
   51B9 C3 1F 52      [10] 1200 	jp	00103$
   51BC C3 2E 52      [10] 1201 	jp	00104$
   51BF C3 3D 52      [10] 1202 	jp	00105$
   51C2 C3 4C 52      [10] 1203 	jp	00106$
   51C5 C3 5B 52      [10] 1204 	jp	00107$
   51C8 C3 6A 52      [10] 1205 	jp	00108$
   51CB C3 79 52      [10] 1206 	jp	00109$
   51CE C3 88 52      [10] 1207 	jp	00110$
   51D1 C3 97 52      [10] 1208 	jp	00111$
   51D4 C3 A6 52      [10] 1209 	jp	00112$
   51D7 C3 B5 52      [10] 1210 	jp	00113$
   51DA C3 C4 52      [10] 1211 	jp	00114$
   51DD C3 D3 52      [10] 1212 	jp	00115$
   51E0 C3 E2 52      [10] 1213 	jp	00116$
   51E3 C3 F1 52      [10] 1214 	jp	00117$
   51E6 C3 00 53      [10] 1215 	jp	00118$
   51E9 C3 0E 53      [10] 1216 	jp	00119$
   51EC C3 1C 53      [10] 1217 	jp	00120$
   51EF C3 2A 53      [10] 1218 	jp	00121$
   51F2 C3 38 53      [10] 1219 	jp	00122$
   51F5 C3 46 53      [10] 1220 	jp	00123$
   51F8 C3 54 53      [10] 1221 	jp	00124$
   51FB C3 62 53      [10] 1222 	jp	00125$
   51FE C3 70 53      [10] 1223 	jp	00126$
                           1224 ;src/game/world.c:236: case GRASS1:
   5201                    1225 00101$:
                           1226 ;src/game/world.c:237: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   5201 11 2D 5B      [10] 1227 	ld	de,#_grass1
   5204 21 04 10      [10] 1228 	ld	hl,#0x1004
   5207 E5            [11] 1229 	push	hl
   5208 C5            [11] 1230 	push	bc
   5209 D5            [11] 1231 	push	de
   520A CD 36 67      [17] 1232 	call	_cpct_drawSprite
                           1233 ;src/game/world.c:238: break;
   520D C3 7C 53      [10] 1234 	jp	00128$
                           1235 ;src/game/world.c:239: case GRASS2:
   5210                    1236 00102$:
                           1237 ;src/game/world.c:240: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   5210 11 6D 5B      [10] 1238 	ld	de,#_grass2
   5213 21 04 10      [10] 1239 	ld	hl,#0x1004
   5216 E5            [11] 1240 	push	hl
   5217 C5            [11] 1241 	push	bc
   5218 D5            [11] 1242 	push	de
   5219 CD 36 67      [17] 1243 	call	_cpct_drawSprite
                           1244 ;src/game/world.c:241: break;
   521C C3 7C 53      [10] 1245 	jp	00128$
                           1246 ;src/game/world.c:242: case DWELLINGS1:
   521F                    1247 00103$:
                           1248 ;src/game/world.c:243: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   521F 11 ED 5B      [10] 1249 	ld	de,#_dwellings1
   5222 21 04 10      [10] 1250 	ld	hl,#0x1004
   5225 E5            [11] 1251 	push	hl
   5226 C5            [11] 1252 	push	bc
   5227 D5            [11] 1253 	push	de
   5228 CD 36 67      [17] 1254 	call	_cpct_drawSprite
                           1255 ;src/game/world.c:244: break;
   522B C3 7C 53      [10] 1256 	jp	00128$
                           1257 ;src/game/world.c:245: case DWELLINGS2:
   522E                    1258 00104$:
                           1259 ;src/game/world.c:246: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   522E 11 2D 5C      [10] 1260 	ld	de,#_dwellings2
   5231 21 04 10      [10] 1261 	ld	hl,#0x1004
   5234 E5            [11] 1262 	push	hl
   5235 C5            [11] 1263 	push	bc
   5236 D5            [11] 1264 	push	de
   5237 CD 36 67      [17] 1265 	call	_cpct_drawSprite
                           1266 ;src/game/world.c:247: break;
   523A C3 7C 53      [10] 1267 	jp	00128$
                           1268 ;src/game/world.c:248: case DWELLINGS3:
   523D                    1269 00105$:
                           1270 ;src/game/world.c:249: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   523D 11 6D 5C      [10] 1271 	ld	de,#_dwellings3
   5240 21 04 10      [10] 1272 	ld	hl,#0x1004
   5243 E5            [11] 1273 	push	hl
   5244 C5            [11] 1274 	push	bc
   5245 D5            [11] 1275 	push	de
   5246 CD 36 67      [17] 1276 	call	_cpct_drawSprite
                           1277 ;src/game/world.c:250: break;
   5249 C3 7C 53      [10] 1278 	jp	00128$
                           1279 ;src/game/world.c:251: case FARM1:
   524C                    1280 00106$:
                           1281 ;src/game/world.c:252: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   524C 11 ED 5C      [10] 1282 	ld	de,#_farm1
   524F 21 04 10      [10] 1283 	ld	hl,#0x1004
   5252 E5            [11] 1284 	push	hl
   5253 C5            [11] 1285 	push	bc
   5254 D5            [11] 1286 	push	de
   5255 CD 36 67      [17] 1287 	call	_cpct_drawSprite
                           1288 ;src/game/world.c:253: break;
   5258 C3 7C 53      [10] 1289 	jp	00128$
                           1290 ;src/game/world.c:254: case FARM2:
   525B                    1291 00107$:
                           1292 ;src/game/world.c:255: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   525B 11 2D 5D      [10] 1293 	ld	de,#_farm2
   525E 21 04 10      [10] 1294 	ld	hl,#0x1004
   5261 E5            [11] 1295 	push	hl
   5262 C5            [11] 1296 	push	bc
   5263 D5            [11] 1297 	push	de
   5264 CD 36 67      [17] 1298 	call	_cpct_drawSprite
                           1299 ;src/game/world.c:256: break;
   5267 C3 7C 53      [10] 1300 	jp	00128$
                           1301 ;src/game/world.c:257: case WATER:
   526A                    1302 00108$:
                           1303 ;src/game/world.c:258: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   526A 11 AD 5C      [10] 1304 	ld	de,#_water
   526D 21 04 10      [10] 1305 	ld	hl,#0x1004
   5270 E5            [11] 1306 	push	hl
   5271 C5            [11] 1307 	push	bc
   5272 D5            [11] 1308 	push	de
   5273 CD 36 67      [17] 1309 	call	_cpct_drawSprite
                           1310 ;src/game/world.c:259: break;
   5276 C3 7C 53      [10] 1311 	jp	00128$
                           1312 ;src/game/world.c:260: case FOREST:
   5279                    1313 00109$:
                           1314 ;src/game/world.c:261: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   5279 11 AD 5B      [10] 1315 	ld	de,#_forest
   527C 21 04 10      [10] 1316 	ld	hl,#0x1004
   527F E5            [11] 1317 	push	hl
   5280 C5            [11] 1318 	push	bc
   5281 D5            [11] 1319 	push	de
   5282 CD 36 67      [17] 1320 	call	_cpct_drawSprite
                           1321 ;src/game/world.c:262: break;
   5285 C3 7C 53      [10] 1322 	jp	00128$
                           1323 ;src/game/world.c:263: case LIVESTOCK:
   5288                    1324 00110$:
                           1325 ;src/game/world.c:264: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   5288 11 6D 5D      [10] 1326 	ld	de,#_livestock
   528B 21 04 10      [10] 1327 	ld	hl,#0x1004
   528E E5            [11] 1328 	push	hl
   528F C5            [11] 1329 	push	bc
   5290 D5            [11] 1330 	push	de
   5291 CD 36 67      [17] 1331 	call	_cpct_drawSprite
                           1332 ;src/game/world.c:265: break;
   5294 C3 7C 53      [10] 1333 	jp	00128$
                           1334 ;src/game/world.c:266: case SSNS:
   5297                    1335 00111$:
                           1336 ;src/game/world.c:267: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5297 11 AD 5D      [10] 1337 	ld	de,#_station_small_ns
   529A 21 04 10      [10] 1338 	ld	hl,#0x1004
   529D E5            [11] 1339 	push	hl
   529E C5            [11] 1340 	push	bc
   529F D5            [11] 1341 	push	de
   52A0 CD 36 67      [17] 1342 	call	_cpct_drawSprite
                           1343 ;src/game/world.c:268: break;
   52A3 C3 7C 53      [10] 1344 	jp	00128$
                           1345 ;src/game/world.c:269: case SSEW:
   52A6                    1346 00112$:
                           1347 ;src/game/world.c:270: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   52A6 11 ED 5D      [10] 1348 	ld	de,#_station_small_ew
   52A9 21 04 10      [10] 1349 	ld	hl,#0x1004
   52AC E5            [11] 1350 	push	hl
   52AD C5            [11] 1351 	push	bc
   52AE D5            [11] 1352 	push	de
   52AF CD 36 67      [17] 1353 	call	_cpct_drawSprite
                           1354 ;src/game/world.c:271: break;
   52B2 C3 7C 53      [10] 1355 	jp	00128$
                           1356 ;src/game/world.c:272: case SMNS:
   52B5                    1357 00113$:
                           1358 ;src/game/world.c:273: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   52B5 11 2D 5E      [10] 1359 	ld	de,#_station_medium_ns
   52B8 21 04 10      [10] 1360 	ld	hl,#0x1004
   52BB E5            [11] 1361 	push	hl
   52BC C5            [11] 1362 	push	bc
   52BD D5            [11] 1363 	push	de
   52BE CD 36 67      [17] 1364 	call	_cpct_drawSprite
                           1365 ;src/game/world.c:274: break;
   52C1 C3 7C 53      [10] 1366 	jp	00128$
                           1367 ;src/game/world.c:275: case SMEW:
   52C4                    1368 00114$:
                           1369 ;src/game/world.c:276: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   52C4 11 6D 5E      [10] 1370 	ld	de,#_station_medium_ew
   52C7 21 04 10      [10] 1371 	ld	hl,#0x1004
   52CA E5            [11] 1372 	push	hl
   52CB C5            [11] 1373 	push	bc
   52CC D5            [11] 1374 	push	de
   52CD CD 36 67      [17] 1375 	call	_cpct_drawSprite
                           1376 ;src/game/world.c:277: break;
   52D0 C3 7C 53      [10] 1377 	jp	00128$
                           1378 ;src/game/world.c:278: case SLNS:
   52D3                    1379 00115$:
                           1380 ;src/game/world.c:279: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   52D3 11 AD 5E      [10] 1381 	ld	de,#_station_large_ns
   52D6 21 04 10      [10] 1382 	ld	hl,#0x1004
   52D9 E5            [11] 1383 	push	hl
   52DA C5            [11] 1384 	push	bc
   52DB D5            [11] 1385 	push	de
   52DC CD 36 67      [17] 1386 	call	_cpct_drawSprite
                           1387 ;src/game/world.c:280: break;
   52DF C3 7C 53      [10] 1388 	jp	00128$
                           1389 ;src/game/world.c:281: case SLEW:
   52E2                    1390 00116$:
                           1391 ;src/game/world.c:282: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   52E2 11 ED 5E      [10] 1392 	ld	de,#_station_large_ew
   52E5 21 04 10      [10] 1393 	ld	hl,#0x1004
   52E8 E5            [11] 1394 	push	hl
   52E9 C5            [11] 1395 	push	bc
   52EA D5            [11] 1396 	push	de
   52EB CD 36 67      [17] 1397 	call	_cpct_drawSprite
                           1398 ;src/game/world.c:283: break;
   52EE C3 7C 53      [10] 1399 	jp	00128$
                           1400 ;src/game/world.c:284: case REW:
   52F1                    1401 00117$:
                           1402 ;src/game/world.c:285: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   52F1 11 2D 5F      [10] 1403 	ld	de,#_rail_ew
   52F4 21 04 10      [10] 1404 	ld	hl,#0x1004
   52F7 E5            [11] 1405 	push	hl
   52F8 C5            [11] 1406 	push	bc
   52F9 D5            [11] 1407 	push	de
   52FA CD 36 67      [17] 1408 	call	_cpct_drawSprite
                           1409 ;src/game/world.c:286: break;
   52FD C3 7C 53      [10] 1410 	jp	00128$
                           1411 ;src/game/world.c:287: case RNS:
   5300                    1412 00118$:
                           1413 ;src/game/world.c:288: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5300 11 6D 5F      [10] 1414 	ld	de,#_rail_ns
   5303 21 04 10      [10] 1415 	ld	hl,#0x1004
   5306 E5            [11] 1416 	push	hl
   5307 C5            [11] 1417 	push	bc
   5308 D5            [11] 1418 	push	de
   5309 CD 36 67      [17] 1419 	call	_cpct_drawSprite
                           1420 ;src/game/world.c:289: break;
   530C 18 6E         [12] 1421 	jr	00128$
                           1422 ;src/game/world.c:290: case REN:
   530E                    1423 00119$:
                           1424 ;src/game/world.c:291: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   530E 11 AD 5F      [10] 1425 	ld	de,#_rail_en
   5311 21 04 10      [10] 1426 	ld	hl,#0x1004
   5314 E5            [11] 1427 	push	hl
   5315 C5            [11] 1428 	push	bc
   5316 D5            [11] 1429 	push	de
   5317 CD 36 67      [17] 1430 	call	_cpct_drawSprite
                           1431 ;src/game/world.c:292: break;
   531A 18 60         [12] 1432 	jr	00128$
                           1433 ;src/game/world.c:293: case RES:
   531C                    1434 00120$:
                           1435 ;src/game/world.c:294: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   531C 11 ED 5F      [10] 1436 	ld	de,#_rail_es
   531F 21 04 10      [10] 1437 	ld	hl,#0x1004
   5322 E5            [11] 1438 	push	hl
   5323 C5            [11] 1439 	push	bc
   5324 D5            [11] 1440 	push	de
   5325 CD 36 67      [17] 1441 	call	_cpct_drawSprite
                           1442 ;src/game/world.c:295: break;
   5328 18 52         [12] 1443 	jr	00128$
                           1444 ;src/game/world.c:296: case RWN:
   532A                    1445 00121$:
                           1446 ;src/game/world.c:297: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   532A 11 2D 60      [10] 1447 	ld	de,#_rail_wn
   532D 21 04 10      [10] 1448 	ld	hl,#0x1004
   5330 E5            [11] 1449 	push	hl
   5331 C5            [11] 1450 	push	bc
   5332 D5            [11] 1451 	push	de
   5333 CD 36 67      [17] 1452 	call	_cpct_drawSprite
                           1453 ;src/game/world.c:298: break;
   5336 18 44         [12] 1454 	jr	00128$
                           1455 ;src/game/world.c:299: case RWS:
   5338                    1456 00122$:
                           1457 ;src/game/world.c:300: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   5338 11 6D 60      [10] 1458 	ld	de,#_rail_ws
   533B 21 04 10      [10] 1459 	ld	hl,#0x1004
   533E E5            [11] 1460 	push	hl
   533F C5            [11] 1461 	push	bc
   5340 D5            [11] 1462 	push	de
   5341 CD 36 67      [17] 1463 	call	_cpct_drawSprite
                           1464 ;src/game/world.c:301: break;
   5344 18 36         [12] 1465 	jr	00128$
                           1466 ;src/game/world.c:302: case REWN:
   5346                    1467 00123$:
                           1468 ;src/game/world.c:303: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5346 11 AD 60      [10] 1469 	ld	de,#_rail_ew_n
   5349 21 04 10      [10] 1470 	ld	hl,#0x1004
   534C E5            [11] 1471 	push	hl
   534D C5            [11] 1472 	push	bc
   534E D5            [11] 1473 	push	de
   534F CD 36 67      [17] 1474 	call	_cpct_drawSprite
                           1475 ;src/game/world.c:304: break;
   5352 18 28         [12] 1476 	jr	00128$
                           1477 ;src/game/world.c:305: case REWS:
   5354                    1478 00124$:
                           1479 ;src/game/world.c:306: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5354 11 ED 60      [10] 1480 	ld	de,#_rail_ew_s
   5357 21 04 10      [10] 1481 	ld	hl,#0x1004
   535A E5            [11] 1482 	push	hl
   535B C5            [11] 1483 	push	bc
   535C D5            [11] 1484 	push	de
   535D CD 36 67      [17] 1485 	call	_cpct_drawSprite
                           1486 ;src/game/world.c:307: break;
   5360 18 1A         [12] 1487 	jr	00128$
                           1488 ;src/game/world.c:308: case RNSE:
   5362                    1489 00125$:
                           1490 ;src/game/world.c:309: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5362 11 6D 61      [10] 1491 	ld	de,#_rail_ns_e
   5365 21 04 10      [10] 1492 	ld	hl,#0x1004
   5368 E5            [11] 1493 	push	hl
   5369 C5            [11] 1494 	push	bc
   536A D5            [11] 1495 	push	de
   536B CD 36 67      [17] 1496 	call	_cpct_drawSprite
                           1497 ;src/game/world.c:310: break;
   536E 18 0C         [12] 1498 	jr	00128$
                           1499 ;src/game/world.c:311: case RNSW:
   5370                    1500 00126$:
                           1501 ;src/game/world.c:312: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   5370 11 2D 61      [10] 1502 	ld	de,#_rail_ns_w
   5373 21 04 10      [10] 1503 	ld	hl,#0x1004
   5376 E5            [11] 1504 	push	hl
   5377 C5            [11] 1505 	push	bc
   5378 D5            [11] 1506 	push	de
   5379 CD 36 67      [17] 1507 	call	_cpct_drawSprite
                           1508 ;src/game/world.c:314: }
   537C                    1509 00128$:
   537C DD E1         [14] 1510 	pop	ix
   537E C9            [10] 1511 	ret
                           1512 ;src/game/world.c:317: void drawScrolls(u8 x_, u8 y_)
                           1513 ;	---------------------------------
                           1514 ; Function drawScrolls
                           1515 ; ---------------------------------
   537F                    1516 _drawScrolls::
   537F DD E5         [15] 1517 	push	ix
   5381 DD 21 00 00   [14] 1518 	ld	ix,#0
   5385 DD 39         [15] 1519 	add	ix,sp
   5387 3B            [ 6] 1520 	dec	sp
                           1521 ;src/game/world.c:323: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   5388 DD 4E 04      [19] 1522 	ld	c,4 (ix)
   538B 06 00         [ 7] 1523 	ld	b,#0x00
   538D 69            [ 4] 1524 	ld	l, c
   538E 60            [ 4] 1525 	ld	h, b
   538F 29            [11] 1526 	add	hl, hl
   5390 29            [11] 1527 	add	hl, hl
   5391 29            [11] 1528 	add	hl, hl
   5392 09            [11] 1529 	add	hl, bc
   5393 29            [11] 1530 	add	hl, hl
   5394 09            [11] 1531 	add	hl, bc
   5395 29            [11] 1532 	add	hl, hl
   5396 29            [11] 1533 	add	hl, hl
   5397 01 3C 00      [10] 1534 	ld	bc,#0x003C
   539A C5            [11] 1535 	push	bc
   539B E5            [11] 1536 	push	hl
   539C CD 0B 6B      [17] 1537 	call	__divsint
   539F F1            [10] 1538 	pop	af
   53A0 F1            [10] 1539 	pop	af
   53A1 55            [ 4] 1540 	ld	d,l
                           1541 ;src/game/world.c:324: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   53A2 DD 4E 05      [19] 1542 	ld	c,5 (ix)
   53A5 06 00         [ 7] 1543 	ld	b,#0x00
   53A7 69            [ 4] 1544 	ld	l, c
   53A8 60            [ 4] 1545 	ld	h, b
   53A9 29            [11] 1546 	add	hl, hl
   53AA 29            [11] 1547 	add	hl, hl
   53AB 09            [11] 1548 	add	hl, bc
   53AC 29            [11] 1549 	add	hl, hl
   53AD 09            [11] 1550 	add	hl, bc
   53AE 29            [11] 1551 	add	hl, hl
   53AF 29            [11] 1552 	add	hl, hl
   53B0 29            [11] 1553 	add	hl, hl
   53B1 29            [11] 1554 	add	hl, hl
   53B2 D5            [11] 1555 	push	de
   53B3 01 24 00      [10] 1556 	ld	bc,#0x0024
   53B6 C5            [11] 1557 	push	bc
   53B7 E5            [11] 1558 	push	hl
   53B8 CD 0B 6B      [17] 1559 	call	__divsint
   53BB F1            [10] 1560 	pop	af
   53BC F1            [10] 1561 	pop	af
   53BD D1            [10] 1562 	pop	de
   53BE DD 75 FF      [19] 1563 	ld	-1 (ix),l
                           1564 ;src/game/world.c:326: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   53C1 AF            [ 4] 1565 	xor	a, a
   53C2 F5            [11] 1566 	push	af
   53C3 33            [ 6] 1567 	inc	sp
   53C4 D5            [11] 1568 	push	de
   53C5 33            [ 6] 1569 	inc	sp
   53C6 21 00 C0      [10] 1570 	ld	hl,#0xC000
   53C9 E5            [11] 1571 	push	hl
   53CA CD BA 6A      [17] 1572 	call	_cpct_getScreenPtr
                           1573 ;src/game/world.c:327: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   53CD E5            [11] 1574 	push	hl
   53CE 21 00 00      [10] 1575 	ld	hl,#0x0000
   53D1 E5            [11] 1576 	push	hl
   53D2 2E 00         [ 7] 1577 	ld	l, #0x00
   53D4 E5            [11] 1578 	push	hl
   53D5 CD 94 69      [17] 1579 	call	_cpct_px2byteM1
   53D8 F1            [10] 1580 	pop	af
   53D9 F1            [10] 1581 	pop	af
   53DA 45            [ 4] 1582 	ld	b,l
   53DB D1            [10] 1583 	pop	de
   53DC 21 04 04      [10] 1584 	ld	hl,#0x0404
   53DF E5            [11] 1585 	push	hl
   53E0 C5            [11] 1586 	push	bc
   53E1 33            [ 6] 1587 	inc	sp
   53E2 D5            [11] 1588 	push	de
   53E3 CD 01 6A      [17] 1589 	call	_cpct_drawSolidBox
   53E6 F1            [10] 1590 	pop	af
   53E7 F1            [10] 1591 	pop	af
   53E8 33            [ 6] 1592 	inc	sp
                           1593 ;src/game/world.c:329: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   53E9 DD 7E FF      [19] 1594 	ld	a,-1 (ix)
   53EC F5            [11] 1595 	push	af
   53ED 33            [ 6] 1596 	inc	sp
   53EE AF            [ 4] 1597 	xor	a, a
   53EF F5            [11] 1598 	push	af
   53F0 33            [ 6] 1599 	inc	sp
   53F1 21 00 C0      [10] 1600 	ld	hl,#0xC000
   53F4 E5            [11] 1601 	push	hl
   53F5 CD BA 6A      [17] 1602 	call	_cpct_getScreenPtr
                           1603 ;src/game/world.c:330: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   53F8 E5            [11] 1604 	push	hl
   53F9 21 00 00      [10] 1605 	ld	hl,#0x0000
   53FC E5            [11] 1606 	push	hl
   53FD 2E 00         [ 7] 1607 	ld	l, #0x00
   53FF E5            [11] 1608 	push	hl
   5400 CD 94 69      [17] 1609 	call	_cpct_px2byteM1
   5403 F1            [10] 1610 	pop	af
   5404 F1            [10] 1611 	pop	af
   5405 45            [ 4] 1612 	ld	b,l
   5406 D1            [10] 1613 	pop	de
   5407 21 01 10      [10] 1614 	ld	hl,#0x1001
   540A E5            [11] 1615 	push	hl
   540B C5            [11] 1616 	push	bc
   540C 33            [ 6] 1617 	inc	sp
   540D D5            [11] 1618 	push	de
   540E CD 01 6A      [17] 1619 	call	_cpct_drawSolidBox
   5411 F1            [10] 1620 	pop	af
   5412 F1            [10] 1621 	pop	af
   5413 33            [ 6] 1622 	inc	sp
   5414 33            [ 6] 1623 	inc	sp
   5415 DD E1         [14] 1624 	pop	ix
   5417 C9            [10] 1625 	ret
                           1626 ;src/game/world.c:333: void drawWorld(u8 x_, u8 y_)
                           1627 ;	---------------------------------
                           1628 ; Function drawWorld
                           1629 ; ---------------------------------
   5418                    1630 _drawWorld::
                           1631 ;src/game/world.c:338: for(iy=0; iy<NBTILE_H;iy++)
   5418 16 00         [ 7] 1632 	ld	d,#0x00
                           1633 ;src/game/world.c:340: for(ix=0; ix<NBTILE_W;ix++)
   541A                    1634 00109$:
   541A 1E 00         [ 7] 1635 	ld	e,#0x00
   541C                    1636 00103$:
                           1637 ;src/game/world.c:342: drawTile(x_, y_, ix, iy);
   541C D5            [11] 1638 	push	de
   541D D5            [11] 1639 	push	de
   541E 21 07 00      [10] 1640 	ld	hl, #7+0
   5421 39            [11] 1641 	add	hl, sp
   5422 7E            [ 7] 1642 	ld	a, (hl)
   5423 F5            [11] 1643 	push	af
   5424 33            [ 6] 1644 	inc	sp
   5425 21 07 00      [10] 1645 	ld	hl, #7+0
   5428 39            [11] 1646 	add	hl, sp
   5429 7E            [ 7] 1647 	ld	a, (hl)
   542A F5            [11] 1648 	push	af
   542B 33            [ 6] 1649 	inc	sp
   542C CD 57 51      [17] 1650 	call	_drawTile
   542F F1            [10] 1651 	pop	af
   5430 F1            [10] 1652 	pop	af
   5431 D1            [10] 1653 	pop	de
                           1654 ;src/game/world.c:340: for(ix=0; ix<NBTILE_W;ix++)
   5432 1C            [ 4] 1655 	inc	e
   5433 7B            [ 4] 1656 	ld	a,e
   5434 D6 14         [ 7] 1657 	sub	a, #0x14
   5436 38 E4         [12] 1658 	jr	C,00103$
                           1659 ;src/game/world.c:338: for(iy=0; iy<NBTILE_H;iy++)
   5438 14            [ 4] 1660 	inc	d
   5439 7A            [ 4] 1661 	ld	a,d
   543A D6 0C         [ 7] 1662 	sub	a, #0x0C
   543C 38 DC         [12] 1663 	jr	C,00109$
                           1664 ;src/game/world.c:346: drawScrolls(x_, y_);
   543E 21 03 00      [10] 1665 	ld	hl, #3+0
   5441 39            [11] 1666 	add	hl, sp
   5442 7E            [ 7] 1667 	ld	a, (hl)
   5443 F5            [11] 1668 	push	af
   5444 33            [ 6] 1669 	inc	sp
   5445 21 03 00      [10] 1670 	ld	hl, #3+0
   5448 39            [11] 1671 	add	hl, sp
   5449 7E            [ 7] 1672 	ld	a, (hl)
   544A F5            [11] 1673 	push	af
   544B 33            [ 6] 1674 	inc	sp
   544C CD 7F 53      [17] 1675 	call	_drawScrolls
   544F F1            [10] 1676 	pop	af
   5450 C9            [10] 1677 	ret
                           1678 	.area _CODE
                           1679 	.area _INITIALIZER
                           1680 	.area _CABS (ABS)
