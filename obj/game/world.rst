                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Feb  7 17:44:07 2016
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
   5059                      64 _drawCursor::
   5059 DD E5         [15]   65 	push	ix
   505B DD 21 00 00   [14]   66 	ld	ix,#0
   505F DD 39         [15]   67 	add	ix,sp
   5061 3B            [ 6]   68 	dec	sp
                             69 ;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   5062 DD 7E 05      [19]   70 	ld	a,5 (ix)
   5065 07            [ 4]   71 	rlca
   5066 07            [ 4]   72 	rlca
   5067 07            [ 4]   73 	rlca
   5068 07            [ 4]   74 	rlca
   5069 E6 F0         [ 7]   75 	and	a,#0xF0
   506B 5F            [ 4]   76 	ld	e,a
   506C DD 7E 04      [19]   77 	ld	a,4 (ix)
   506F 87            [ 4]   78 	add	a, a
   5070 87            [ 4]   79 	add	a, a
   5071 57            [ 4]   80 	ld	d,a
   5072 D5            [11]   81 	push	de
   5073 7B            [ 4]   82 	ld	a,e
   5074 F5            [11]   83 	push	af
   5075 33            [ 6]   84 	inc	sp
   5076 D5            [11]   85 	push	de
   5077 33            [ 6]   86 	inc	sp
   5078 21 00 C0      [10]   87 	ld	hl,#0xC000
   507B E5            [11]   88 	push	hl
   507C CD 0A 75      [17]   89 	call	_cpct_getScreenPtr
   507F D1            [10]   90 	pop	de
   5080 4D            [ 4]   91 	ld	c, l
   5081 44            [ 4]   92 	ld	b, h
                             93 ;src/game/world.c:8: switch(CURSOR_MODE)
   5082 3E 10         [ 7]   94 	ld	a,#0x10
   5084 FD 21 FA 84   [14]   95 	ld	iy,#_CURSOR_MODE
   5088 FD 96 00      [19]   96 	sub	a, 0 (iy)
   508B DA 8A 52      [10]   97 	jp	C,00119$
   508E D5            [11]   98 	push	de
   508F FD 21 FA 84   [14]   99 	ld	iy,#_CURSOR_MODE
   5093 FD 5E 00      [19]  100 	ld	e,0 (iy)
   5096 16 00         [ 7]  101 	ld	d,#0x00
   5098 21 A0 50      [10]  102 	ld	hl,#00125$
   509B 19            [11]  103 	add	hl,de
   509C 19            [11]  104 	add	hl,de
   509D 19            [11]  105 	add	hl,de
   509E D1            [10]  106 	pop	de
   509F E9            [ 4]  107 	jp	(hl)
   50A0                     108 00125$:
   50A0 C3 D3 50      [10]  109 	jp	00101$
   50A3 C3 A5 51      [10]  110 	jp	00102$
   50A6 C3 B4 51      [10]  111 	jp	00103$
   50A9 C3 C3 51      [10]  112 	jp	00104$
   50AC C3 D2 51      [10]  113 	jp	00105$
   50AF C3 E1 51      [10]  114 	jp	00106$
   50B2 C3 F0 51      [10]  115 	jp	00107$
   50B5 C3 FF 51      [10]  116 	jp	00108$
   50B8 C3 0E 52      [10]  117 	jp	00109$
   50BB C3 1C 52      [10]  118 	jp	00110$
   50BE C3 2A 52      [10]  119 	jp	00111$
   50C1 C3 38 52      [10]  120 	jp	00112$
   50C4 C3 46 52      [10]  121 	jp	00113$
   50C7 C3 54 52      [10]  122 	jp	00114$
   50CA C3 62 52      [10]  123 	jp	00115$
   50CD C3 70 52      [10]  124 	jp	00116$
   50D0 C3 7E 52      [10]  125 	jp	00117$
                            126 ;src/game/world.c:10: case NONE:
   50D3                     127 00101$:
                            128 ;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   50D3 C5            [11]  129 	push	bc
   50D4 D5            [11]  130 	push	de
   50D5 DD 66 06      [19]  131 	ld	h,6 (ix)
   50D8 DD 6E 06      [19]  132 	ld	l,6 (ix)
   50DB E5            [11]  133 	push	hl
   50DC DD 66 06      [19]  134 	ld	h,6 (ix)
   50DF DD 6E 06      [19]  135 	ld	l,6 (ix)
   50E2 E5            [11]  136 	push	hl
   50E3 CD E4 73      [17]  137 	call	_cpct_px2byteM1
   50E6 F1            [10]  138 	pop	af
   50E7 F1            [10]  139 	pop	af
   50E8 DD 75 FF      [19]  140 	ld	-1 (ix),l
   50EB D1            [10]  141 	pop	de
   50EC C1            [10]  142 	pop	bc
   50ED D5            [11]  143 	push	de
   50EE 21 04 00      [10]  144 	ld	hl,#0x0004
   50F1 E5            [11]  145 	push	hl
   50F2 DD 7E FF      [19]  146 	ld	a,-1 (ix)
   50F5 F5            [11]  147 	push	af
   50F6 33            [ 6]  148 	inc	sp
   50F7 C5            [11]  149 	push	bc
   50F8 CD D6 73      [17]  150 	call	_cpct_memset
   50FB D1            [10]  151 	pop	de
                            152 ;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   50FC 63            [ 4]  153 	ld	h,e
   50FD 24            [ 4]  154 	inc	h
   50FE D5            [11]  155 	push	de
   50FF E5            [11]  156 	push	hl
   5100 33            [ 6]  157 	inc	sp
   5101 D5            [11]  158 	push	de
   5102 33            [ 6]  159 	inc	sp
   5103 21 00 C0      [10]  160 	ld	hl,#0xC000
   5106 E5            [11]  161 	push	hl
   5107 CD 0A 75      [17]  162 	call	_cpct_getScreenPtr
   510A D1            [10]  163 	pop	de
                            164 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   510B E5            [11]  165 	push	hl
   510C D5            [11]  166 	push	de
   510D DD 66 06      [19]  167 	ld	h,6 (ix)
   5110 DD 6E 06      [19]  168 	ld	l,6 (ix)
   5113 E5            [11]  169 	push	hl
   5114 DD 66 06      [19]  170 	ld	h,6 (ix)
   5117 DD 6E 06      [19]  171 	ld	l,6 (ix)
   511A E5            [11]  172 	push	hl
   511B CD E4 73      [17]  173 	call	_cpct_px2byteM1
   511E F1            [10]  174 	pop	af
   511F F1            [10]  175 	pop	af
   5120 5D            [ 4]  176 	ld	e,l
   5121 F1            [10]  177 	pop	af
   5122 57            [ 4]  178 	ld	d,a
   5123 C1            [10]  179 	pop	bc
   5124 D5            [11]  180 	push	de
   5125 21 04 00      [10]  181 	ld	hl,#0x0004
   5128 E5            [11]  182 	push	hl
   5129 7B            [ 4]  183 	ld	a,e
   512A F5            [11]  184 	push	af
   512B 33            [ 6]  185 	inc	sp
   512C C5            [11]  186 	push	bc
   512D CD D6 73      [17]  187 	call	_cpct_memset
   5130 D1            [10]  188 	pop	de
                            189 ;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   5131 DD 7E 05      [19]  190 	ld	a,5 (ix)
   5134 3C            [ 4]  191 	inc	a
   5135 07            [ 4]  192 	rlca
   5136 07            [ 4]  193 	rlca
   5137 07            [ 4]  194 	rlca
   5138 07            [ 4]  195 	rlca
   5139 E6 F0         [ 7]  196 	and	a,#0xF0
   513B 5F            [ 4]  197 	ld	e,a
   513C 63            [ 4]  198 	ld	h,e
   513D 25            [ 4]  199 	dec	h
   513E D5            [11]  200 	push	de
   513F E5            [11]  201 	push	hl
   5140 33            [ 6]  202 	inc	sp
   5141 D5            [11]  203 	push	de
   5142 33            [ 6]  204 	inc	sp
   5143 21 00 C0      [10]  205 	ld	hl,#0xC000
   5146 E5            [11]  206 	push	hl
   5147 CD 0A 75      [17]  207 	call	_cpct_getScreenPtr
   514A D1            [10]  208 	pop	de
                            209 ;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   514B E5            [11]  210 	push	hl
   514C D5            [11]  211 	push	de
   514D DD 66 06      [19]  212 	ld	h,6 (ix)
   5150 DD 6E 06      [19]  213 	ld	l,6 (ix)
   5153 E5            [11]  214 	push	hl
   5154 DD 66 06      [19]  215 	ld	h,6 (ix)
   5157 DD 6E 06      [19]  216 	ld	l,6 (ix)
   515A E5            [11]  217 	push	hl
   515B CD E4 73      [17]  218 	call	_cpct_px2byteM1
   515E F1            [10]  219 	pop	af
   515F F1            [10]  220 	pop	af
   5160 DD 75 FF      [19]  221 	ld	-1 (ix),l
   5163 D1            [10]  222 	pop	de
   5164 C1            [10]  223 	pop	bc
   5165 D5            [11]  224 	push	de
   5166 21 04 00      [10]  225 	ld	hl,#0x0004
   5169 E5            [11]  226 	push	hl
   516A DD 7E FF      [19]  227 	ld	a,-1 (ix)
   516D F5            [11]  228 	push	af
   516E 33            [ 6]  229 	inc	sp
   516F C5            [11]  230 	push	bc
   5170 CD D6 73      [17]  231 	call	_cpct_memset
   5173 D1            [10]  232 	pop	de
                            233 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   5174 63            [ 4]  234 	ld	h,e
   5175 25            [ 4]  235 	dec	h
   5176 25            [ 4]  236 	dec	h
   5177 E5            [11]  237 	push	hl
   5178 33            [ 6]  238 	inc	sp
   5179 D5            [11]  239 	push	de
   517A 33            [ 6]  240 	inc	sp
   517B 21 00 C0      [10]  241 	ld	hl,#0xC000
   517E E5            [11]  242 	push	hl
   517F CD 0A 75      [17]  243 	call	_cpct_getScreenPtr
                            244 ;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   5182 E5            [11]  245 	push	hl
   5183 DD 66 06      [19]  246 	ld	h,6 (ix)
   5186 DD 6E 06      [19]  247 	ld	l,6 (ix)
   5189 E5            [11]  248 	push	hl
   518A DD 66 06      [19]  249 	ld	h,6 (ix)
   518D DD 6E 06      [19]  250 	ld	l,6 (ix)
   5190 E5            [11]  251 	push	hl
   5191 CD E4 73      [17]  252 	call	_cpct_px2byteM1
   5194 F1            [10]  253 	pop	af
   5195 F1            [10]  254 	pop	af
   5196 65            [ 4]  255 	ld	h,l
   5197 D1            [10]  256 	pop	de
   5198 01 04 00      [10]  257 	ld	bc,#0x0004
   519B C5            [11]  258 	push	bc
   519C E5            [11]  259 	push	hl
   519D 33            [ 6]  260 	inc	sp
   519E D5            [11]  261 	push	de
   519F CD D6 73      [17]  262 	call	_cpct_memset
                            263 ;src/game/world.c:20: break;
   51A2 C3 8A 52      [10]  264 	jp	00119$
                            265 ;src/game/world.c:21: case T_SSNS:
   51A5                     266 00102$:
                            267 ;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   51A5 11 3E 63      [10]  268 	ld	de,#_station_small_ns
   51A8 21 04 10      [10]  269 	ld	hl,#0x1004
   51AB E5            [11]  270 	push	hl
   51AC C5            [11]  271 	push	bc
   51AD D5            [11]  272 	push	de
   51AE CD 0D 71      [17]  273 	call	_cpct_drawSprite
                            274 ;src/game/world.c:23: break;
   51B1 C3 8A 52      [10]  275 	jp	00119$
                            276 ;src/game/world.c:24: case T_SSEW:
   51B4                     277 00103$:
                            278 ;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   51B4 11 7E 63      [10]  279 	ld	de,#_station_small_ew
   51B7 21 04 10      [10]  280 	ld	hl,#0x1004
   51BA E5            [11]  281 	push	hl
   51BB C5            [11]  282 	push	bc
   51BC D5            [11]  283 	push	de
   51BD CD 0D 71      [17]  284 	call	_cpct_drawSprite
                            285 ;src/game/world.c:26: break;
   51C0 C3 8A 52      [10]  286 	jp	00119$
                            287 ;src/game/world.c:27: case T_SMNS:
   51C3                     288 00104$:
                            289 ;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   51C3 11 BE 63      [10]  290 	ld	de,#_station_medium_ns
   51C6 21 04 10      [10]  291 	ld	hl,#0x1004
   51C9 E5            [11]  292 	push	hl
   51CA C5            [11]  293 	push	bc
   51CB D5            [11]  294 	push	de
   51CC CD 0D 71      [17]  295 	call	_cpct_drawSprite
                            296 ;src/game/world.c:29: break;
   51CF C3 8A 52      [10]  297 	jp	00119$
                            298 ;src/game/world.c:30: case T_SMEW:
   51D2                     299 00105$:
                            300 ;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   51D2 11 FE 63      [10]  301 	ld	de,#_station_medium_ew
   51D5 21 04 10      [10]  302 	ld	hl,#0x1004
   51D8 E5            [11]  303 	push	hl
   51D9 C5            [11]  304 	push	bc
   51DA D5            [11]  305 	push	de
   51DB CD 0D 71      [17]  306 	call	_cpct_drawSprite
                            307 ;src/game/world.c:32: break;
   51DE C3 8A 52      [10]  308 	jp	00119$
                            309 ;src/game/world.c:33: case T_SLNS:
   51E1                     310 00106$:
                            311 ;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   51E1 11 3E 64      [10]  312 	ld	de,#_station_large_ns
   51E4 21 04 10      [10]  313 	ld	hl,#0x1004
   51E7 E5            [11]  314 	push	hl
   51E8 C5            [11]  315 	push	bc
   51E9 D5            [11]  316 	push	de
   51EA CD 0D 71      [17]  317 	call	_cpct_drawSprite
                            318 ;src/game/world.c:35: break;
   51ED C3 8A 52      [10]  319 	jp	00119$
                            320 ;src/game/world.c:36: case T_SLEW:
   51F0                     321 00107$:
                            322 ;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   51F0 11 7E 64      [10]  323 	ld	de,#_station_large_ew
   51F3 21 04 10      [10]  324 	ld	hl,#0x1004
   51F6 E5            [11]  325 	push	hl
   51F7 C5            [11]  326 	push	bc
   51F8 D5            [11]  327 	push	de
   51F9 CD 0D 71      [17]  328 	call	_cpct_drawSprite
                            329 ;src/game/world.c:38: break;
   51FC C3 8A 52      [10]  330 	jp	00119$
                            331 ;src/game/world.c:39: case T_REW:
   51FF                     332 00108$:
                            333 ;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   51FF 11 BE 64      [10]  334 	ld	de,#_rail_ew
   5202 21 04 10      [10]  335 	ld	hl,#0x1004
   5205 E5            [11]  336 	push	hl
   5206 C5            [11]  337 	push	bc
   5207 D5            [11]  338 	push	de
   5208 CD 0D 71      [17]  339 	call	_cpct_drawSprite
                            340 ;src/game/world.c:41: break;
   520B C3 8A 52      [10]  341 	jp	00119$
                            342 ;src/game/world.c:42: case T_RNS:
   520E                     343 00109$:
                            344 ;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   520E 11 FE 64      [10]  345 	ld	de,#_rail_ns
   5211 21 04 10      [10]  346 	ld	hl,#0x1004
   5214 E5            [11]  347 	push	hl
   5215 C5            [11]  348 	push	bc
   5216 D5            [11]  349 	push	de
   5217 CD 0D 71      [17]  350 	call	_cpct_drawSprite
                            351 ;src/game/world.c:44: break;
   521A 18 6E         [12]  352 	jr	00119$
                            353 ;src/game/world.c:45: case T_REN:
   521C                     354 00110$:
                            355 ;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   521C 11 3E 65      [10]  356 	ld	de,#_rail_en
   521F 21 04 10      [10]  357 	ld	hl,#0x1004
   5222 E5            [11]  358 	push	hl
   5223 C5            [11]  359 	push	bc
   5224 D5            [11]  360 	push	de
   5225 CD 0D 71      [17]  361 	call	_cpct_drawSprite
                            362 ;src/game/world.c:47: break;
   5228 18 60         [12]  363 	jr	00119$
                            364 ;src/game/world.c:48: case T_RES:
   522A                     365 00111$:
                            366 ;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   522A 11 7E 65      [10]  367 	ld	de,#_rail_es
   522D 21 04 10      [10]  368 	ld	hl,#0x1004
   5230 E5            [11]  369 	push	hl
   5231 C5            [11]  370 	push	bc
   5232 D5            [11]  371 	push	de
   5233 CD 0D 71      [17]  372 	call	_cpct_drawSprite
                            373 ;src/game/world.c:50: break;
   5236 18 52         [12]  374 	jr	00119$
                            375 ;src/game/world.c:51: case T_RWN:
   5238                     376 00112$:
                            377 ;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   5238 11 BE 65      [10]  378 	ld	de,#_rail_wn
   523B 21 04 10      [10]  379 	ld	hl,#0x1004
   523E E5            [11]  380 	push	hl
   523F C5            [11]  381 	push	bc
   5240 D5            [11]  382 	push	de
   5241 CD 0D 71      [17]  383 	call	_cpct_drawSprite
                            384 ;src/game/world.c:53: break;
   5244 18 44         [12]  385 	jr	00119$
                            386 ;src/game/world.c:54: case T_RWS:
   5246                     387 00113$:
                            388 ;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   5246 11 FE 65      [10]  389 	ld	de,#_rail_ws
   5249 21 04 10      [10]  390 	ld	hl,#0x1004
   524C E5            [11]  391 	push	hl
   524D C5            [11]  392 	push	bc
   524E D5            [11]  393 	push	de
   524F CD 0D 71      [17]  394 	call	_cpct_drawSprite
                            395 ;src/game/world.c:56: break;
   5252 18 36         [12]  396 	jr	00119$
                            397 ;src/game/world.c:57: case T_REWN:
   5254                     398 00114$:
                            399 ;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5254 11 3E 66      [10]  400 	ld	de,#_rail_ew_n
   5257 21 04 10      [10]  401 	ld	hl,#0x1004
   525A E5            [11]  402 	push	hl
   525B C5            [11]  403 	push	bc
   525C D5            [11]  404 	push	de
   525D CD 0D 71      [17]  405 	call	_cpct_drawSprite
                            406 ;src/game/world.c:59: break;
   5260 18 28         [12]  407 	jr	00119$
                            408 ;src/game/world.c:60: case T_REWS:
   5262                     409 00115$:
                            410 ;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5262 11 7E 66      [10]  411 	ld	de,#_rail_ew_s
   5265 21 04 10      [10]  412 	ld	hl,#0x1004
   5268 E5            [11]  413 	push	hl
   5269 C5            [11]  414 	push	bc
   526A D5            [11]  415 	push	de
   526B CD 0D 71      [17]  416 	call	_cpct_drawSprite
                            417 ;src/game/world.c:62: break;
   526E 18 1A         [12]  418 	jr	00119$
                            419 ;src/game/world.c:63: case T_RNSE:
   5270                     420 00116$:
                            421 ;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5270 11 FE 66      [10]  422 	ld	de,#_rail_ns_e
   5273 21 04 10      [10]  423 	ld	hl,#0x1004
   5276 E5            [11]  424 	push	hl
   5277 C5            [11]  425 	push	bc
   5278 D5            [11]  426 	push	de
   5279 CD 0D 71      [17]  427 	call	_cpct_drawSprite
                            428 ;src/game/world.c:65: break;
   527C 18 0C         [12]  429 	jr	00119$
                            430 ;src/game/world.c:66: case T_RNSW:
   527E                     431 00117$:
                            432 ;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   527E 11 BE 66      [10]  433 	ld	de,#_rail_ns_w
   5281 21 04 10      [10]  434 	ld	hl,#0x1004
   5284 E5            [11]  435 	push	hl
   5285 C5            [11]  436 	push	bc
   5286 D5            [11]  437 	push	de
   5287 CD 0D 71      [17]  438 	call	_cpct_drawSprite
                            439 ;src/game/world.c:69: }
   528A                     440 00119$:
   528A 33            [ 6]  441 	inc	sp
   528B DD E1         [14]  442 	pop	ix
   528D C9            [10]  443 	ret
                            444 ;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            445 ;	---------------------------------
                            446 ; Function patternTile
                            447 ; ---------------------------------
   528E                     448 _patternTile::
   528E DD E5         [15]  449 	push	ix
   5290 DD 21 00 00   [14]  450 	ld	ix,#0
   5294 DD 39         [15]  451 	add	ix,sp
   5296 21 F5 FF      [10]  452 	ld	hl,#-11
   5299 39            [11]  453 	add	hl,sp
   529A F9            [ 6]  454 	ld	sp,hl
                            455 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   529B DD 7E 04      [19]  456 	ld	a,4 (ix)
   529E D6 08         [ 7]  457 	sub	a, #0x08
   52A0 20 04         [12]  458 	jr	NZ,00153$
   52A2 3E 01         [ 7]  459 	ld	a,#0x01
   52A4 18 01         [12]  460 	jr	00154$
   52A6                     461 00153$:
   52A6 AF            [ 4]  462 	xor	a,a
   52A7                     463 00154$:
   52A7 DD 77 F7      [19]  464 	ld	-9 (ix),a
   52AA DD 7E 04      [19]  465 	ld	a,4 (ix)
   52AD D6 02         [ 7]  466 	sub	a, #0x02
   52AF 20 04         [12]  467 	jr	NZ,00155$
   52B1 3E 01         [ 7]  468 	ld	a,#0x01
   52B3 18 01         [12]  469 	jr	00156$
   52B5                     470 00155$:
   52B5 AF            [ 4]  471 	xor	a,a
   52B6                     472 00156$:
   52B6 DD 77 FF      [19]  473 	ld	-1 (ix),a
   52B9 DD 36 F5 00   [19]  474 	ld	-11 (ix),#0x00
   52BD 11 00 00      [10]  475 	ld	de,#0x0000
   52C0                     476 00115$:
   52C0 DD 7E F5      [19]  477 	ld	a,-11 (ix)
   52C3 DD 96 08      [19]  478 	sub	a, 8 (ix)
   52C6 D2 86 53      [10]  479 	jp	NC,00117$
                            480 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   52C9 DD 7E 05      [19]  481 	ld	a,5 (ix)
   52CC 83            [ 4]  482 	add	a, e
   52CD DD 77 FD      [19]  483 	ld	-3 (ix),a
   52D0 DD 7E 06      [19]  484 	ld	a,6 (ix)
   52D3 8A            [ 4]  485 	adc	a, d
   52D4 DD 77 FE      [19]  486 	ld	-2 (ix),a
   52D7 D5            [11]  487 	push	de
   52D8 DD 5E 07      [19]  488 	ld	e,7 (ix)
   52DB DD 66 F5      [19]  489 	ld	h,-11 (ix)
   52DE 2E 00         [ 7]  490 	ld	l, #0x00
   52E0 55            [ 4]  491 	ld	d, l
   52E1 06 08         [ 7]  492 	ld	b, #0x08
   52E3                     493 00157$:
   52E3 29            [11]  494 	add	hl,hl
   52E4 30 01         [12]  495 	jr	NC,00158$
   52E6 19            [11]  496 	add	hl,de
   52E7                     497 00158$:
   52E7 10 FA         [13]  498 	djnz	00157$
   52E9 D1            [10]  499 	pop	de
   52EA DD 75 FB      [19]  500 	ld	-5 (ix),l
   52ED DD 74 FC      [19]  501 	ld	-4 (ix),h
   52F0 DD 36 F6 00   [19]  502 	ld	-10 (ix),#0x00
   52F4                     503 00112$:
   52F4 DD 7E F6      [19]  504 	ld	a,-10 (ix)
   52F7 DD 96 07      [19]  505 	sub	a, 7 (ix)
   52FA D2 7B 53      [10]  506 	jp	NC,00116$
                            507 ;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   52FD DD 7E F6      [19]  508 	ld	a,-10 (ix)
   5300 DD 77 F9      [19]  509 	ld	-7 (ix),a
   5303 DD 36 FA 00   [19]  510 	ld	-6 (ix),#0x00
   5307 DD 7E FB      [19]  511 	ld	a,-5 (ix)
   530A DD 86 F9      [19]  512 	add	a, -7 (ix)
   530D 6F            [ 4]  513 	ld	l,a
   530E DD 7E FC      [19]  514 	ld	a,-4 (ix)
   5311 DD 8E FA      [19]  515 	adc	a, -6 (ix)
   5314 67            [ 4]  516 	ld	h,a
   5315 DD 4E 09      [19]  517 	ld	c,9 (ix)
   5318 DD 46 0A      [19]  518 	ld	b,10 (ix)
   531B D5            [11]  519 	push	de
   531C E5            [11]  520 	push	hl
   531D C5            [11]  521 	push	bc
   531E CD CD 70      [17]  522 	call	_cpct_getBit
   5321 DD 75 F8      [19]  523 	ld	-8 (ix),l
   5324 D1            [10]  524 	pop	de
   5325 DD 7E F8      [19]  525 	ld	a,-8 (ix)
   5328 B7            [ 4]  526 	or	a, a
   5329 28 4A         [12]  527 	jr	Z,00113$
   532B DD 7E FD      [19]  528 	ld	a,-3 (ix)
   532E DD 86 F9      [19]  529 	add	a, -7 (ix)
   5331 4F            [ 4]  530 	ld	c,a
   5332 DD 7E FE      [19]  531 	ld	a,-2 (ix)
   5335 DD 8E FA      [19]  532 	adc	a, -6 (ix)
   5338 47            [ 4]  533 	ld	b,a
   5339 EE 80         [ 7]  534 	xor	a, #0x80
   533B D6 8F         [ 7]  535 	sub	a, #0x8F
   533D 30 36         [12]  536 	jr	NC,00113$
                            537 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   533F 21 FA 75      [10]  538 	ld	hl,#_p_world
   5342 09            [11]  539 	add	hl,bc
   5343 4D            [ 4]  540 	ld	c,l
   5344 44            [ 4]  541 	ld	b,h
                            542 ;src/game/world.c:83: if(tileType == FOREST)
   5345 DD 7E F7      [19]  543 	ld	a,-9 (ix)
   5348 B7            [ 4]  544 	or	a, a
   5349 28 06         [12]  545 	jr	Z,00104$
                            546 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   534B DD 7E 04      [19]  547 	ld	a,4 (ix)
   534E 02            [ 7]  548 	ld	(bc),a
   534F 18 24         [12]  549 	jr	00113$
   5351                     550 00104$:
                            551 ;src/game/world.c:85: else if(tileType==DWELLINGS1)
   5351 DD 7E FF      [19]  552 	ld	a,-1 (ix)
   5354 B7            [ 4]  553 	or	a, a
   5355 28 1E         [12]  554 	jr	Z,00113$
                            555 ;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   5357 C5            [11]  556 	push	bc
   5358 D5            [11]  557 	push	de
   5359 CD 15 72      [17]  558 	call	_cpct_count2VSYNC
   535C CD 40 74      [17]  559 	call	_cpct_getRandomUniform_u8_f
   535F DD 75 F8      [19]  560 	ld	-8 (ix),l
   5362 3E 03         [ 7]  561 	ld	a,#0x03
   5364 F5            [11]  562 	push	af
   5365 33            [ 6]  563 	inc	sp
   5366 DD 7E F8      [19]  564 	ld	a,-8 (ix)
   5369 F5            [11]  565 	push	af
   536A 33            [ 6]  566 	inc	sp
   536B CD B2 71      [17]  567 	call	__moduchar
   536E F1            [10]  568 	pop	af
   536F 7D            [ 4]  569 	ld	a,l
   5370 D1            [10]  570 	pop	de
   5371 C1            [10]  571 	pop	bc
   5372 C6 02         [ 7]  572 	add	a, #0x02
   5374 02            [ 7]  573 	ld	(bc),a
   5375                     574 00113$:
                            575 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   5375 DD 34 F6      [23]  576 	inc	-10 (ix)
   5378 C3 F4 52      [10]  577 	jp	00112$
   537B                     578 00116$:
                            579 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   537B 21 50 00      [10]  580 	ld	hl,#0x0050
   537E 19            [11]  581 	add	hl,de
   537F EB            [ 4]  582 	ex	de,hl
   5380 DD 34 F5      [23]  583 	inc	-11 (ix)
   5383 C3 C0 52      [10]  584 	jp	00115$
   5386                     585 00117$:
   5386 DD F9         [10]  586 	ld	sp, ix
   5388 DD E1         [14]  587 	pop	ix
   538A C9            [10]  588 	ret
                            589 ;src/game/world.c:93: void generateWorld()
                            590 ;	---------------------------------
                            591 ; Function generateWorld
                            592 ; ---------------------------------
   538B                     593 _generateWorld::
   538B DD E5         [15]  594 	push	ix
   538D DD 21 00 00   [14]  595 	ld	ix,#0
   5391 DD 39         [15]  596 	add	ix,sp
   5393 21 E5 FF      [10]  597 	ld	hl,#-27
   5396 39            [11]  598 	add	hl,sp
   5397 F9            [ 6]  599 	ld	sp,hl
                            600 ;src/game/world.c:100: CURSOR_MODE = NONE;
   5398 FD 21 FA 84   [14]  601 	ld	iy,#_CURSOR_MODE
   539C FD 36 00 00   [19]  602 	ld	0 (iy),#0x00
                            603 ;src/game/world.c:103: cpct_srand((u32)cpct_count2VSYNC());
   53A0 CD 15 72      [17]  604 	call	_cpct_count2VSYNC
   53A3 11 00 00      [10]  605 	ld	de,#0x0000
   53A6 CD 3E 72      [17]  606 	call	_cpct_setSeed_mxor
                            607 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   53A9 11 00 00      [10]  608 	ld	de,#0x0000
   53AC                     609 00119$:
                            610 ;src/game/world.c:109: p_world[iy] = cpct_rand()%2;
   53AC 21 FA 75      [10]  611 	ld	hl,#_p_world
   53AF 19            [11]  612 	add	hl,de
   53B0 E5            [11]  613 	push	hl
   53B1 D5            [11]  614 	push	de
   53B2 CD 1C 74      [17]  615 	call	_cpct_getRandom_mxor_u8
   53B5 7D            [ 4]  616 	ld	a,l
   53B6 D1            [10]  617 	pop	de
   53B7 E1            [10]  618 	pop	hl
   53B8 E6 01         [ 7]  619 	and	a, #0x01
   53BA 77            [ 7]  620 	ld	(hl),a
                            621 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   53BB 13            [ 6]  622 	inc	de
   53BC 7A            [ 4]  623 	ld	a,d
   53BD EE 80         [ 7]  624 	xor	a, #0x80
   53BF D6 8F         [ 7]  625 	sub	a, #0x8F
   53C1 38 E9         [12]  626 	jr	C,00119$
                            627 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   53C3 21 04 00      [10]  628 	ld	hl,#0x0004
   53C6 39            [11]  629 	add	hl,sp
   53C7 DD 75 F1      [19]  630 	ld	-15 (ix),l
   53CA DD 74 F2      [19]  631 	ld	-14 (ix),h
   53CD 01 00 00      [10]  632 	ld	bc,#0x0000
   53D0                     633 00121$:
                            634 ;src/game/world.c:115: iy = cpct_rand16()%(WIDTH*HEIGHT);
   53D0 C5            [11]  635 	push	bc
   53D1 CD 6B 73      [17]  636 	call	_cpct_getRandom_mxor_u16
   53D4 11 00 0F      [10]  637 	ld	de,#0x0F00
   53D7 D5            [11]  638 	push	de
   53D8 E5            [11]  639 	push	hl
   53D9 CD BE 71      [17]  640 	call	__moduint
   53DC F1            [10]  641 	pop	af
   53DD F1            [10]  642 	pop	af
   53DE C1            [10]  643 	pop	bc
   53DF DD 75 FE      [19]  644 	ld	-2 (ix),l
   53E2 DD 74 FF      [19]  645 	ld	-1 (ix),h
                            646 ;src/game/world.c:117: switch(cpct_rand()%4)
   53E5 C5            [11]  647 	push	bc
   53E6 CD 1C 74      [17]  648 	call	_cpct_getRandom_mxor_u8
   53E9 7D            [ 4]  649 	ld	a,l
   53EA C1            [10]  650 	pop	bc
   53EB E6 03         [ 7]  651 	and	a, #0x03
   53ED DD 77 F7      [19]  652 	ld	-9 (ix),a
   53F0 3E 03         [ 7]  653 	ld	a,#0x03
   53F2 DD 96 F7      [19]  654 	sub	a, -9 (ix)
   53F5 DA 59 55      [10]  655 	jp	C,00106$
                            656 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   53F8 E5            [11]  657 	push	hl
   53F9 DD 6E F1      [19]  658 	ld	l,-15 (ix)
   53FC DD 66 F2      [19]  659 	ld	h,-14 (ix)
   53FF 23            [ 6]  660 	inc	hl
   5400 E5            [11]  661 	push	hl
   5401 FD E1         [14]  662 	pop	iy
   5403 E1            [10]  663 	pop	hl
                            664 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   5404 DD 5E F1      [19]  665 	ld	e,-15 (ix)
   5407 DD 56 F2      [19]  666 	ld	d,-14 (ix)
   540A 13            [ 6]  667 	inc	de
   540B 13            [ 6]  668 	inc	de
                            669 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   540C DD 7E F1      [19]  670 	ld	a,-15 (ix)
   540F C6 03         [ 7]  671 	add	a, #0x03
   5411 DD 77 F8      [19]  672 	ld	-8 (ix),a
   5414 DD 7E F2      [19]  673 	ld	a,-14 (ix)
   5417 CE 00         [ 7]  674 	adc	a, #0x00
   5419 DD 77 F9      [19]  675 	ld	-7 (ix),a
                            676 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   541C DD 7E F1      [19]  677 	ld	a,-15 (ix)
   541F C6 04         [ 7]  678 	add	a, #0x04
   5421 DD 77 FC      [19]  679 	ld	-4 (ix),a
   5424 DD 7E F2      [19]  680 	ld	a,-14 (ix)
   5427 CE 00         [ 7]  681 	adc	a, #0x00
   5429 DD 77 FD      [19]  682 	ld	-3 (ix),a
                            683 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   542C DD 7E F1      [19]  684 	ld	a,-15 (ix)
   542F C6 05         [ 7]  685 	add	a, #0x05
   5431 DD 77 F3      [19]  686 	ld	-13 (ix),a
   5434 DD 7E F2      [19]  687 	ld	a,-14 (ix)
   5437 CE 00         [ 7]  688 	adc	a, #0x00
   5439 DD 77 F4      [19]  689 	ld	-12 (ix),a
                            690 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   543C DD 7E F1      [19]  691 	ld	a,-15 (ix)
   543F C6 06         [ 7]  692 	add	a, #0x06
   5441 DD 77 FA      [19]  693 	ld	-6 (ix),a
   5444 DD 7E F2      [19]  694 	ld	a,-14 (ix)
   5447 CE 00         [ 7]  695 	adc	a, #0x00
   5449 DD 77 FB      [19]  696 	ld	-5 (ix),a
                            697 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   544C DD 7E F1      [19]  698 	ld	a,-15 (ix)
   544F C6 07         [ 7]  699 	add	a, #0x07
   5451 DD 77 F5      [19]  700 	ld	-11 (ix),a
   5454 DD 7E F2      [19]  701 	ld	a,-14 (ix)
   5457 CE 00         [ 7]  702 	adc	a, #0x00
   5459 DD 77 F6      [19]  703 	ld	-10 (ix),a
                            704 ;src/game/world.c:117: switch(cpct_rand()%4)
   545C D5            [11]  705 	push	de
   545D DD 5E F7      [19]  706 	ld	e,-9 (ix)
   5460 16 00         [ 7]  707 	ld	d,#0x00
   5462 21 6A 54      [10]  708 	ld	hl,#00195$
   5465 19            [11]  709 	add	hl,de
   5466 19            [11]  710 	add	hl,de
   5467 19            [11]  711 	add	hl,de
   5468 D1            [10]  712 	pop	de
   5469 E9            [ 4]  713 	jp	(hl)
   546A                     714 00195$:
   546A C3 76 54      [10]  715 	jp	00102$
   546D C3 B0 54      [10]  716 	jp	00103$
   5470 C3 E9 54      [10]  717 	jp	00104$
   5473 C3 22 55      [10]  718 	jp	00105$
                            719 ;src/game/world.c:119: case 0:
   5476                     720 00102$:
                            721 ;src/game/world.c:120: p_forest[0] = 0b10000100;
   5476 DD 6E F1      [19]  722 	ld	l,-15 (ix)
   5479 DD 66 F2      [19]  723 	ld	h,-14 (ix)
   547C 36 84         [10]  724 	ld	(hl),#0x84
                            725 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   547E FD 36 00 C7   [19]  726 	ld	0 (iy), #0xC7
                            727 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   5482 3E DE         [ 7]  728 	ld	a,#0xDE
   5484 12            [ 7]  729 	ld	(de),a
                            730 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   5485 DD 6E F8      [19]  731 	ld	l,-8 (ix)
   5488 DD 66 F9      [19]  732 	ld	h,-7 (ix)
   548B 36 7E         [10]  733 	ld	(hl),#0x7E
                            734 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   548D DD 6E FC      [19]  735 	ld	l,-4 (ix)
   5490 DD 66 FD      [19]  736 	ld	h,-3 (ix)
   5493 36 FE         [10]  737 	ld	(hl),#0xFE
                            738 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   5495 DD 6E F3      [19]  739 	ld	l,-13 (ix)
   5498 DD 66 F4      [19]  740 	ld	h,-12 (ix)
   549B 36 7F         [10]  741 	ld	(hl),#0x7F
                            742 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   549D DD 6E FA      [19]  743 	ld	l,-6 (ix)
   54A0 DD 66 FB      [19]  744 	ld	h,-5 (ix)
   54A3 36 EF         [10]  745 	ld	(hl),#0xEF
                            746 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   54A5 DD 6E F5      [19]  747 	ld	l,-11 (ix)
   54A8 DD 66 F6      [19]  748 	ld	h,-10 (ix)
   54AB 36 CF         [10]  749 	ld	(hl),#0xCF
                            750 ;src/game/world.c:128: break;
   54AD C3 59 55      [10]  751 	jp	00106$
                            752 ;src/game/world.c:129: case 1:
   54B0                     753 00103$:
                            754 ;src/game/world.c:130: p_forest[0] = 0b00001100;
   54B0 DD 6E F1      [19]  755 	ld	l,-15 (ix)
   54B3 DD 66 F2      [19]  756 	ld	h,-14 (ix)
   54B6 36 0C         [10]  757 	ld	(hl),#0x0C
                            758 ;src/game/world.c:131: p_forest[1] = 0b11111000;
   54B8 FD 36 00 F8   [19]  759 	ld	0 (iy), #0xF8
                            760 ;src/game/world.c:132: p_forest[2] = 0b00111111;
   54BC 3E 3F         [ 7]  761 	ld	a,#0x3F
   54BE 12            [ 7]  762 	ld	(de),a
                            763 ;src/game/world.c:133: p_forest[3] = 0b01111110;
   54BF DD 6E F8      [19]  764 	ld	l,-8 (ix)
   54C2 DD 66 F9      [19]  765 	ld	h,-7 (ix)
   54C5 36 7E         [10]  766 	ld	(hl),#0x7E
                            767 ;src/game/world.c:134: p_forest[4] = 0b11111110; 
   54C7 DD 6E FC      [19]  768 	ld	l,-4 (ix)
   54CA DD 66 FD      [19]  769 	ld	h,-3 (ix)
   54CD 36 FE         [10]  770 	ld	(hl),#0xFE
                            771 ;src/game/world.c:135: p_forest[5] = 0b01011111;
   54CF DD 6E F3      [19]  772 	ld	l,-13 (ix)
   54D2 DD 66 F4      [19]  773 	ld	h,-12 (ix)
   54D5 36 5F         [10]  774 	ld	(hl),#0x5F
                            775 ;src/game/world.c:136: p_forest[6] = 0b11001111;
   54D7 DD 6E FA      [19]  776 	ld	l,-6 (ix)
   54DA DD 66 FB      [19]  777 	ld	h,-5 (ix)
   54DD 36 CF         [10]  778 	ld	(hl),#0xCF
                            779 ;src/game/world.c:137: p_forest[7] = 0b10001100;
   54DF DD 6E F5      [19]  780 	ld	l,-11 (ix)
   54E2 DD 66 F6      [19]  781 	ld	h,-10 (ix)
   54E5 36 8C         [10]  782 	ld	(hl),#0x8C
                            783 ;src/game/world.c:138: break;
   54E7 18 70         [12]  784 	jr	00106$
                            785 ;src/game/world.c:139: case 2:
   54E9                     786 00104$:
                            787 ;src/game/world.c:140: p_forest[0] = 0b00110000;
   54E9 DD 6E F1      [19]  788 	ld	l,-15 (ix)
   54EC DD 66 F2      [19]  789 	ld	h,-14 (ix)
   54EF 36 30         [10]  790 	ld	(hl),#0x30
                            791 ;src/game/world.c:141: p_forest[1] = 0b11110100;
   54F1 FD 36 00 F4   [19]  792 	ld	0 (iy), #0xF4
                            793 ;src/game/world.c:142: p_forest[2] = 0b11111111;
   54F5 3E FF         [ 7]  794 	ld	a,#0xFF
   54F7 12            [ 7]  795 	ld	(de),a
                            796 ;src/game/world.c:143: p_forest[3] = 0b11111111;
   54F8 DD 6E F8      [19]  797 	ld	l,-8 (ix)
   54FB DD 66 F9      [19]  798 	ld	h,-7 (ix)
   54FE 36 FF         [10]  799 	ld	(hl),#0xFF
                            800 ;src/game/world.c:144: p_forest[4] = 0b01111100;
   5500 DD 6E FC      [19]  801 	ld	l,-4 (ix)
   5503 DD 66 FD      [19]  802 	ld	h,-3 (ix)
   5506 36 7C         [10]  803 	ld	(hl),#0x7C
                            804 ;src/game/world.c:145: p_forest[5] = 0b01111110;
   5508 DD 6E F3      [19]  805 	ld	l,-13 (ix)
   550B DD 66 F4      [19]  806 	ld	h,-12 (ix)
   550E 36 7E         [10]  807 	ld	(hl),#0x7E
                            808 ;src/game/world.c:146: p_forest[6] = 0b00111110;
   5510 DD 6E FA      [19]  809 	ld	l,-6 (ix)
   5513 DD 66 FB      [19]  810 	ld	h,-5 (ix)
   5516 36 3E         [10]  811 	ld	(hl),#0x3E
                            812 ;src/game/world.c:147: p_forest[7] = 0b00011000;
   5518 DD 6E F5      [19]  813 	ld	l,-11 (ix)
   551B DD 66 F6      [19]  814 	ld	h,-10 (ix)
   551E 36 18         [10]  815 	ld	(hl),#0x18
                            816 ;src/game/world.c:148: break;
   5520 18 37         [12]  817 	jr	00106$
                            818 ;src/game/world.c:149: case 3:
   5522                     819 00105$:
                            820 ;src/game/world.c:150: p_forest[0] = 0b11000000; 
   5522 DD 6E F1      [19]  821 	ld	l,-15 (ix)
   5525 DD 66 F2      [19]  822 	ld	h,-14 (ix)
   5528 36 C0         [10]  823 	ld	(hl),#0xC0
                            824 ;src/game/world.c:151: p_forest[1] = 0b11100111;
   552A FD 36 00 E7   [19]  825 	ld	0 (iy), #0xE7
                            826 ;src/game/world.c:152: p_forest[2] = 0b01111110;
   552E 3E 7E         [ 7]  827 	ld	a,#0x7E
   5530 12            [ 7]  828 	ld	(de),a
                            829 ;src/game/world.c:153: p_forest[3] = 0b01111110;
   5531 DD 6E F8      [19]  830 	ld	l,-8 (ix)
   5534 DD 66 F9      [19]  831 	ld	h,-7 (ix)
   5537 36 7E         [10]  832 	ld	(hl),#0x7E
                            833 ;src/game/world.c:154: p_forest[4] = 0b11111110;
   5539 DD 6E FC      [19]  834 	ld	l,-4 (ix)
   553C DD 66 FD      [19]  835 	ld	h,-3 (ix)
   553F 36 FE         [10]  836 	ld	(hl),#0xFE
                            837 ;src/game/world.c:155: p_forest[5] = 0b11111100;
   5541 DD 6E F3      [19]  838 	ld	l,-13 (ix)
   5544 DD 66 F4      [19]  839 	ld	h,-12 (ix)
   5547 36 FC         [10]  840 	ld	(hl),#0xFC
                            841 ;src/game/world.c:156: p_forest[6] = 0b01111000;
   5549 DD 6E FA      [19]  842 	ld	l,-6 (ix)
   554C DD 66 FB      [19]  843 	ld	h,-5 (ix)
   554F 36 78         [10]  844 	ld	(hl),#0x78
                            845 ;src/game/world.c:157: p_forest[7] = 0b00110000;
   5551 DD 6E F5      [19]  846 	ld	l,-11 (ix)
   5554 DD 66 F6      [19]  847 	ld	h,-10 (ix)
   5557 36 30         [10]  848 	ld	(hl),#0x30
                            849 ;src/game/world.c:159: }
   5559                     850 00106$:
                            851 ;src/game/world.c:160: patternTile(FOREST, iy, 8, 8, p_forest);
   5559 DD 6E F1      [19]  852 	ld	l,-15 (ix)
   555C DD 66 F2      [19]  853 	ld	h,-14 (ix)
   555F C5            [11]  854 	push	bc
   5560 E5            [11]  855 	push	hl
   5561 21 08 08      [10]  856 	ld	hl,#0x0808
   5564 E5            [11]  857 	push	hl
   5565 DD 6E FE      [19]  858 	ld	l,-2 (ix)
   5568 DD 66 FF      [19]  859 	ld	h,-1 (ix)
   556B E5            [11]  860 	push	hl
   556C 3E 08         [ 7]  861 	ld	a,#0x08
   556E F5            [11]  862 	push	af
   556F 33            [ 6]  863 	inc	sp
   5570 CD 8E 52      [17]  864 	call	_patternTile
   5573 21 07 00      [10]  865 	ld	hl,#7
   5576 39            [11]  866 	add	hl,sp
   5577 F9            [ 6]  867 	ld	sp,hl
   5578 C1            [10]  868 	pop	bc
                            869 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   5579 03            [ 6]  870 	inc	bc
   557A 79            [ 4]  871 	ld	a,c
   557B D6 32         [ 7]  872 	sub	a, #0x32
   557D 78            [ 4]  873 	ld	a,b
   557E 17            [ 4]  874 	rla
   557F 3F            [ 4]  875 	ccf
   5580 1F            [ 4]  876 	rra
   5581 DE 80         [ 7]  877 	sbc	a, #0x80
   5583 DA D0 53      [10]  878 	jp	C,00121$
                            879 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   5586 11 3C 00      [10]  880 	ld	de,#0x003C
   5589                     881 00125$:
                            882 ;src/game/world.c:168: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5589 D5            [11]  883 	push	de
   558A CD 6B 73      [17]  884 	call	_cpct_getRandom_mxor_u16
   558D D1            [10]  885 	pop	de
   558E D5            [11]  886 	push	de
   558F 01 00 0F      [10]  887 	ld	bc,#0x0F00
   5592 C5            [11]  888 	push	bc
   5593 E5            [11]  889 	push	hl
   5594 CD BE 71      [17]  890 	call	__moduint
   5597 F1            [10]  891 	pop	af
   5598 F1            [10]  892 	pop	af
   5599 D1            [10]  893 	pop	de
                            894 ;src/game/world.c:169: p_world[iy] = cpct_rand()%2+5;
   559A 01 FA 75      [10]  895 	ld	bc,#_p_world
   559D 09            [11]  896 	add	hl,bc
   559E E5            [11]  897 	push	hl
   559F D5            [11]  898 	push	de
   55A0 CD 1C 74      [17]  899 	call	_cpct_getRandom_mxor_u8
   55A3 7D            [ 4]  900 	ld	a,l
   55A4 D1            [10]  901 	pop	de
   55A5 E1            [10]  902 	pop	hl
   55A6 E6 01         [ 7]  903 	and	a, #0x01
   55A8 C6 05         [ 7]  904 	add	a, #0x05
   55AA 77            [ 7]  905 	ld	(hl),a
   55AB 1B            [ 6]  906 	dec	de
                            907 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   55AC 7A            [ 4]  908 	ld	a,d
   55AD B3            [ 4]  909 	or	a,e
   55AE 20 D9         [12]  910 	jr	NZ,00125$
                            911 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   55B0 11 14 00      [10]  912 	ld	de,#0x0014
   55B3                     913 00128$:
                            914 ;src/game/world.c:176: iy = cpct_rand16()%(WIDTH*HEIGHT);
   55B3 D5            [11]  915 	push	de
   55B4 CD 6B 73      [17]  916 	call	_cpct_getRandom_mxor_u16
   55B7 D1            [10]  917 	pop	de
   55B8 D5            [11]  918 	push	de
   55B9 01 00 0F      [10]  919 	ld	bc,#0x0F00
   55BC C5            [11]  920 	push	bc
   55BD E5            [11]  921 	push	hl
   55BE CD BE 71      [17]  922 	call	__moduint
   55C1 F1            [10]  923 	pop	af
   55C2 F1            [10]  924 	pop	af
   55C3 D1            [10]  925 	pop	de
                            926 ;src/game/world.c:177: p_world[iy] = cpct_rand()%3+2;
   55C4 3E FA         [ 7]  927 	ld	a,#<(_p_world)
   55C6 85            [ 4]  928 	add	a, l
   55C7 DD 77 F5      [19]  929 	ld	-11 (ix),a
   55CA 3E 75         [ 7]  930 	ld	a,#>(_p_world)
   55CC 8C            [ 4]  931 	adc	a, h
   55CD DD 77 F6      [19]  932 	ld	-10 (ix),a
   55D0 D5            [11]  933 	push	de
   55D1 CD 1C 74      [17]  934 	call	_cpct_getRandom_mxor_u8
   55D4 45            [ 4]  935 	ld	b,l
   55D5 D1            [10]  936 	pop	de
   55D6 D5            [11]  937 	push	de
   55D7 3E 03         [ 7]  938 	ld	a,#0x03
   55D9 F5            [11]  939 	push	af
   55DA 33            [ 6]  940 	inc	sp
   55DB C5            [11]  941 	push	bc
   55DC 33            [ 6]  942 	inc	sp
   55DD CD B2 71      [17]  943 	call	__moduchar
   55E0 F1            [10]  944 	pop	af
   55E1 7D            [ 4]  945 	ld	a,l
   55E2 D1            [10]  946 	pop	de
   55E3 C6 02         [ 7]  947 	add	a, #0x02
   55E5 DD 6E F5      [19]  948 	ld	l,-11 (ix)
   55E8 DD 66 F6      [19]  949 	ld	h,-10 (ix)
   55EB 77            [ 7]  950 	ld	(hl),a
   55EC 1B            [ 6]  951 	dec	de
                            952 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   55ED 7A            [ 4]  953 	ld	a,d
   55EE B3            [ 4]  954 	or	a,e
   55EF 20 C2         [12]  955 	jr	NZ,00128$
                            956 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   55F1 21 02 00      [10]  957 	ld	hl,#0x0002
   55F4 39            [11]  958 	add	hl,sp
   55F5 4D            [ 4]  959 	ld	c,l
   55F6 44            [ 4]  960 	ld	b,h
   55F7 21 00 00      [10]  961 	ld	hl,#0x0000
   55FA E3            [19]  962 	ex	(sp), hl
   55FB                     963 00129$:
                            964 ;src/game/world.c:182: iy = cpct_rand16()%(WIDTH*HEIGHT);
   55FB C5            [11]  965 	push	bc
   55FC CD 6B 73      [17]  966 	call	_cpct_getRandom_mxor_u16
   55FF 11 00 0F      [10]  967 	ld	de,#0x0F00
   5602 D5            [11]  968 	push	de
   5603 E5            [11]  969 	push	hl
   5604 CD BE 71      [17]  970 	call	__moduint
   5607 F1            [10]  971 	pop	af
   5608 F1            [10]  972 	pop	af
   5609 C1            [10]  973 	pop	bc
   560A DD 75 F5      [19]  974 	ld	-11 (ix),l
   560D DD 74 F6      [19]  975 	ld	-10 (ix),h
                            976 ;src/game/world.c:184: switch(cpct_rand()%6)
   5610 C5            [11]  977 	push	bc
   5611 CD 1C 74      [17]  978 	call	_cpct_getRandom_mxor_u8
   5614 55            [ 4]  979 	ld	d,l
   5615 3E 06         [ 7]  980 	ld	a,#0x06
   5617 F5            [11]  981 	push	af
   5618 33            [ 6]  982 	inc	sp
   5619 D5            [11]  983 	push	de
   561A 33            [ 6]  984 	inc	sp
   561B CD B2 71      [17]  985 	call	__moduchar
   561E F1            [10]  986 	pop	af
   561F 5D            [ 4]  987 	ld	e,l
   5620 C1            [10]  988 	pop	bc
   5621 3E 05         [ 7]  989 	ld	a,#0x05
   5623 93            [ 4]  990 	sub	a, e
   5624 38 6A         [12]  991 	jr	C,00116$
                            992 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   5626 21 01 00      [10]  993 	ld	hl,#0x0001
   5629 09            [11]  994 	add	hl,bc
   562A DD 75 FA      [19]  995 	ld	-6 (ix),l
   562D DD 74 FB      [19]  996 	ld	-5 (ix),h
                            997 ;src/game/world.c:184: switch(cpct_rand()%6)
   5630 16 00         [ 7]  998 	ld	d,#0x00
   5632 21 38 56      [10]  999 	ld	hl,#00196$
   5635 19            [11] 1000 	add	hl,de
   5636 19            [11] 1001 	add	hl,de
                           1002 ;src/game/world.c:186: case 0:
   5637 E9            [ 4] 1003 	jp	(hl)
   5638                    1004 00196$:
   5638 18 0A         [12] 1005 	jr	00110$
   563A 18 15         [12] 1006 	jr	00111$
   563C 18 20         [12] 1007 	jr	00112$
   563E 18 2B         [12] 1008 	jr	00113$
   5640 18 36         [12] 1009 	jr	00114$
   5642 18 41         [12] 1010 	jr	00115$
   5644                    1011 00110$:
                           1012 ;src/game/world.c:187: p_cities[0] = 0b01110010; // 01001110;
   5644 3E 72         [ 7] 1013 	ld	a,#0x72
   5646 02            [ 7] 1014 	ld	(bc),a
                           1015 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   5647 DD 6E FA      [19] 1016 	ld	l,-6 (ix)
   564A DD 66 FB      [19] 1017 	ld	h,-5 (ix)
   564D 36 46         [10] 1018 	ld	(hl),#0x46
                           1019 ;src/game/world.c:189: break;
   564F 18 3F         [12] 1020 	jr	00116$
                           1021 ;src/game/world.c:191: case 1:
   5651                    1022 00111$:
                           1023 ;src/game/world.c:192: p_cities[0] = 0b01100000; // 00000110;
   5651 3E 60         [ 7] 1024 	ld	a,#0x60
   5653 02            [ 7] 1025 	ld	(bc),a
                           1026 ;src/game/world.c:193: p_cities[1] = 0b00000110; // 01100000;
   5654 DD 6E FA      [19] 1027 	ld	l,-6 (ix)
   5657 DD 66 FB      [19] 1028 	ld	h,-5 (ix)
   565A 36 06         [10] 1029 	ld	(hl),#0x06
                           1030 ;src/game/world.c:194: break;
   565C 18 32         [12] 1031 	jr	00116$
                           1032 ;src/game/world.c:196: case 2:
   565E                    1033 00112$:
                           1034 ;src/game/world.c:197: p_cities[0] = 0b00010000; // 00001000;
   565E 3E 10         [ 7] 1035 	ld	a,#0x10
   5660 02            [ 7] 1036 	ld	(bc),a
                           1037 ;src/game/world.c:198: p_cities[1] = 0b00000110; // 01100000;
   5661 DD 6E FA      [19] 1038 	ld	l,-6 (ix)
   5664 DD 66 FB      [19] 1039 	ld	h,-5 (ix)
   5667 36 06         [10] 1040 	ld	(hl),#0x06
                           1041 ;src/game/world.c:199: break;
   5669 18 25         [12] 1042 	jr	00116$
                           1043 ;src/game/world.c:201: case 3:
   566B                    1044 00113$:
                           1045 ;src/game/world.c:202: p_cities[0] = 0b11000000; // 00000011;
   566B 3E C0         [ 7] 1046 	ld	a,#0xC0
   566D 02            [ 7] 1047 	ld	(bc),a
                           1048 ;src/game/world.c:203: p_cities[1] = 0b00110001; // 10001100;
   566E DD 6E FA      [19] 1049 	ld	l,-6 (ix)
   5671 DD 66 FB      [19] 1050 	ld	h,-5 (ix)
   5674 36 31         [10] 1051 	ld	(hl),#0x31
                           1052 ;src/game/world.c:204: break;
   5676 18 18         [12] 1053 	jr	00116$
                           1054 ;src/game/world.c:206: case 4:
   5678                    1055 00114$:
                           1056 ;src/game/world.c:207: p_cities[0] = 0b11000100; // 00100011;
   5678 3E C4         [ 7] 1057 	ld	a,#0xC4
   567A 02            [ 7] 1058 	ld	(bc),a
                           1059 ;src/game/world.c:208: p_cities[1] = 0b00001110; // 01110000;
   567B DD 6E FA      [19] 1060 	ld	l,-6 (ix)
   567E DD 66 FB      [19] 1061 	ld	h,-5 (ix)
   5681 36 0E         [10] 1062 	ld	(hl),#0x0E
                           1063 ;src/game/world.c:209: break;
   5683 18 0B         [12] 1064 	jr	00116$
                           1065 ;src/game/world.c:211: case 5:
   5685                    1066 00115$:
                           1067 ;src/game/world.c:212: p_cities[0] = 0b01000000; // 00000010;
   5685 3E 40         [ 7] 1068 	ld	a,#0x40
   5687 02            [ 7] 1069 	ld	(bc),a
                           1070 ;src/game/world.c:213: p_cities[1] = 0b01001110; // 01110010;
   5688 DD 6E FA      [19] 1071 	ld	l,-6 (ix)
   568B DD 66 FB      [19] 1072 	ld	h,-5 (ix)
   568E 36 4E         [10] 1073 	ld	(hl),#0x4E
                           1074 ;src/game/world.c:215: }
   5690                    1075 00116$:
                           1076 ;src/game/world.c:217: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   5690 69            [ 4] 1077 	ld	l, c
   5691 60            [ 4] 1078 	ld	h, b
   5692 C5            [11] 1079 	push	bc
   5693 E5            [11] 1080 	push	hl
   5694 21 04 04      [10] 1081 	ld	hl,#0x0404
   5697 E5            [11] 1082 	push	hl
   5698 DD 6E F5      [19] 1083 	ld	l,-11 (ix)
   569B DD 66 F6      [19] 1084 	ld	h,-10 (ix)
   569E E5            [11] 1085 	push	hl
   569F 3E 02         [ 7] 1086 	ld	a,#0x02
   56A1 F5            [11] 1087 	push	af
   56A2 33            [ 6] 1088 	inc	sp
   56A3 CD 8E 52      [17] 1089 	call	_patternTile
   56A6 21 07 00      [10] 1090 	ld	hl,#7
   56A9 39            [11] 1091 	add	hl,sp
   56AA F9            [ 6] 1092 	ld	sp,hl
   56AB C1            [10] 1093 	pop	bc
                           1094 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   56AC DD 34 E5      [23] 1095 	inc	-27 (ix)
   56AF 20 03         [12] 1096 	jr	NZ,00197$
   56B1 DD 34 E6      [23] 1097 	inc	-26 (ix)
   56B4                    1098 00197$:
   56B4 DD 7E E5      [19] 1099 	ld	a,-27 (ix)
   56B7 D6 14         [ 7] 1100 	sub	a, #0x14
   56B9 DD 7E E6      [19] 1101 	ld	a,-26 (ix)
   56BC 17            [ 4] 1102 	rla
   56BD 3F            [ 4] 1103 	ccf
   56BE 1F            [ 4] 1104 	rra
   56BF DE 80         [ 7] 1105 	sbc	a, #0x80
   56C1 DA FB 55      [10] 1106 	jp	C,00129$
                           1107 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   56C4 11 13 00      [10] 1108 	ld	de,#0x0013
   56C7                    1109 00133$:
                           1110 ;src/game/world.c:224: iy = cpct_rand16()%(WIDTH*HEIGHT);
   56C7 D5            [11] 1111 	push	de
   56C8 CD 6B 73      [17] 1112 	call	_cpct_getRandom_mxor_u16
   56CB D1            [10] 1113 	pop	de
   56CC D5            [11] 1114 	push	de
   56CD 01 00 0F      [10] 1115 	ld	bc,#0x0F00
   56D0 C5            [11] 1116 	push	bc
   56D1 E5            [11] 1117 	push	hl
   56D2 CD BE 71      [17] 1118 	call	__moduint
   56D5 F1            [10] 1119 	pop	af
   56D6 F1            [10] 1120 	pop	af
   56D7 D1            [10] 1121 	pop	de
                           1122 ;src/game/world.c:225: p_world[iy] = LIVESTOCK;
   56D8 01 FA 75      [10] 1123 	ld	bc,#_p_world
   56DB 09            [11] 1124 	add	hl,bc
   56DC 36 09         [10] 1125 	ld	(hl),#0x09
   56DE 1B            [ 6] 1126 	dec	de
                           1127 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   56DF 7A            [ 4] 1128 	ld	a,d
   56E0 B3            [ 4] 1129 	or	a,e
   56E1 20 E4         [12] 1130 	jr	NZ,00133$
   56E3 DD F9         [10] 1131 	ld	sp, ix
   56E5 DD E1         [14] 1132 	pop	ix
   56E7 C9            [10] 1133 	ret
                           1134 ;src/game/world.c:229: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1135 ;	---------------------------------
                           1136 ; Function drawTile
                           1137 ; ---------------------------------
   56E8                    1138 _drawTile::
   56E8 DD E5         [15] 1139 	push	ix
   56EA DD 21 00 00   [14] 1140 	ld	ix,#0
   56EE DD 39         [15] 1141 	add	ix,sp
                           1142 ;src/game/world.c:232: int adress = (y_+iy)*WIDTH+x_+ix;
   56F0 DD 6E 05      [19] 1143 	ld	l,5 (ix)
   56F3 26 00         [ 7] 1144 	ld	h,#0x00
   56F5 DD 5E 07      [19] 1145 	ld	e,7 (ix)
   56F8 16 00         [ 7] 1146 	ld	d,#0x00
   56FA 19            [11] 1147 	add	hl,de
   56FB 4D            [ 4] 1148 	ld	c, l
   56FC 44            [ 4] 1149 	ld	b, h
   56FD 29            [11] 1150 	add	hl, hl
   56FE 29            [11] 1151 	add	hl, hl
   56FF 09            [11] 1152 	add	hl, bc
   5700 29            [11] 1153 	add	hl, hl
   5701 29            [11] 1154 	add	hl, hl
   5702 29            [11] 1155 	add	hl, hl
   5703 29            [11] 1156 	add	hl, hl
   5704 DD 5E 04      [19] 1157 	ld	e,4 (ix)
   5707 16 00         [ 7] 1158 	ld	d,#0x00
   5709 19            [11] 1159 	add	hl,de
   570A DD 5E 06      [19] 1160 	ld	e,6 (ix)
   570D 16 00         [ 7] 1161 	ld	d,#0x00
   570F 19            [11] 1162 	add	hl,de
   5710 5D            [ 4] 1163 	ld	e, l
   5711 54            [ 4] 1164 	ld	d, h
                           1165 ;src/game/world.c:234: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   5712 DD 7E 07      [19] 1166 	ld	a,7 (ix)
   5715 07            [ 4] 1167 	rlca
   5716 07            [ 4] 1168 	rlca
   5717 07            [ 4] 1169 	rlca
   5718 07            [ 4] 1170 	rlca
   5719 E6 F0         [ 7] 1171 	and	a,#0xF0
   571B 67            [ 4] 1172 	ld	h,a
   571C DD 7E 06      [19] 1173 	ld	a,6 (ix)
   571F 87            [ 4] 1174 	add	a, a
   5720 87            [ 4] 1175 	add	a, a
   5721 D5            [11] 1176 	push	de
   5722 E5            [11] 1177 	push	hl
   5723 33            [ 6] 1178 	inc	sp
   5724 F5            [11] 1179 	push	af
   5725 33            [ 6] 1180 	inc	sp
   5726 21 00 C0      [10] 1181 	ld	hl,#0xC000
   5729 E5            [11] 1182 	push	hl
   572A CD 0A 75      [17] 1183 	call	_cpct_getScreenPtr
   572D D1            [10] 1184 	pop	de
   572E 4D            [ 4] 1185 	ld	c, l
   572F 44            [ 4] 1186 	ld	b, h
                           1187 ;src/game/world.c:236: switch(p_world[adress])
   5730 21 FA 75      [10] 1188 	ld	hl,#_p_world
   5733 19            [11] 1189 	add	hl,de
   5734 5E            [ 7] 1190 	ld	e,(hl)
   5735 3E 19         [ 7] 1191 	ld	a,#0x19
   5737 93            [ 4] 1192 	sub	a, e
   5738 DA 0D 59      [10] 1193 	jp	C,00128$
   573B 16 00         [ 7] 1194 	ld	d,#0x00
   573D 21 44 57      [10] 1195 	ld	hl,#00134$
   5740 19            [11] 1196 	add	hl,de
   5741 19            [11] 1197 	add	hl,de
   5742 19            [11] 1198 	add	hl,de
   5743 E9            [ 4] 1199 	jp	(hl)
   5744                    1200 00134$:
   5744 C3 92 57      [10] 1201 	jp	00101$
   5747 C3 A1 57      [10] 1202 	jp	00102$
   574A C3 B0 57      [10] 1203 	jp	00103$
   574D C3 BF 57      [10] 1204 	jp	00104$
   5750 C3 CE 57      [10] 1205 	jp	00105$
   5753 C3 DD 57      [10] 1206 	jp	00106$
   5756 C3 EC 57      [10] 1207 	jp	00107$
   5759 C3 FB 57      [10] 1208 	jp	00108$
   575C C3 0A 58      [10] 1209 	jp	00109$
   575F C3 19 58      [10] 1210 	jp	00110$
   5762 C3 28 58      [10] 1211 	jp	00111$
   5765 C3 37 58      [10] 1212 	jp	00112$
   5768 C3 46 58      [10] 1213 	jp	00113$
   576B C3 55 58      [10] 1214 	jp	00114$
   576E C3 64 58      [10] 1215 	jp	00115$
   5771 C3 73 58      [10] 1216 	jp	00116$
   5774 C3 82 58      [10] 1217 	jp	00117$
   5777 C3 91 58      [10] 1218 	jp	00118$
   577A C3 9F 58      [10] 1219 	jp	00119$
   577D C3 AD 58      [10] 1220 	jp	00120$
   5780 C3 BB 58      [10] 1221 	jp	00121$
   5783 C3 C9 58      [10] 1222 	jp	00122$
   5786 C3 D7 58      [10] 1223 	jp	00123$
   5789 C3 E5 58      [10] 1224 	jp	00124$
   578C C3 F3 58      [10] 1225 	jp	00125$
   578F C3 01 59      [10] 1226 	jp	00126$
                           1227 ;src/game/world.c:238: case GRASS1:
   5792                    1228 00101$:
                           1229 ;src/game/world.c:239: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   5792 11 BE 60      [10] 1230 	ld	de,#_grass1
   5795 21 04 10      [10] 1231 	ld	hl,#0x1004
   5798 E5            [11] 1232 	push	hl
   5799 C5            [11] 1233 	push	bc
   579A D5            [11] 1234 	push	de
   579B CD 0D 71      [17] 1235 	call	_cpct_drawSprite
                           1236 ;src/game/world.c:240: break;
   579E C3 0D 59      [10] 1237 	jp	00128$
                           1238 ;src/game/world.c:241: case GRASS2:
   57A1                    1239 00102$:
                           1240 ;src/game/world.c:242: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   57A1 11 FE 60      [10] 1241 	ld	de,#_grass2
   57A4 21 04 10      [10] 1242 	ld	hl,#0x1004
   57A7 E5            [11] 1243 	push	hl
   57A8 C5            [11] 1244 	push	bc
   57A9 D5            [11] 1245 	push	de
   57AA CD 0D 71      [17] 1246 	call	_cpct_drawSprite
                           1247 ;src/game/world.c:243: break;
   57AD C3 0D 59      [10] 1248 	jp	00128$
                           1249 ;src/game/world.c:244: case DWELLINGS1:
   57B0                    1250 00103$:
                           1251 ;src/game/world.c:245: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   57B0 11 7E 61      [10] 1252 	ld	de,#_dwellings1
   57B3 21 04 10      [10] 1253 	ld	hl,#0x1004
   57B6 E5            [11] 1254 	push	hl
   57B7 C5            [11] 1255 	push	bc
   57B8 D5            [11] 1256 	push	de
   57B9 CD 0D 71      [17] 1257 	call	_cpct_drawSprite
                           1258 ;src/game/world.c:246: break;
   57BC C3 0D 59      [10] 1259 	jp	00128$
                           1260 ;src/game/world.c:247: case DWELLINGS2:
   57BF                    1261 00104$:
                           1262 ;src/game/world.c:248: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   57BF 11 BE 61      [10] 1263 	ld	de,#_dwellings2
   57C2 21 04 10      [10] 1264 	ld	hl,#0x1004
   57C5 E5            [11] 1265 	push	hl
   57C6 C5            [11] 1266 	push	bc
   57C7 D5            [11] 1267 	push	de
   57C8 CD 0D 71      [17] 1268 	call	_cpct_drawSprite
                           1269 ;src/game/world.c:249: break;
   57CB C3 0D 59      [10] 1270 	jp	00128$
                           1271 ;src/game/world.c:250: case DWELLINGS3:
   57CE                    1272 00105$:
                           1273 ;src/game/world.c:251: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   57CE 11 FE 61      [10] 1274 	ld	de,#_dwellings3
   57D1 21 04 10      [10] 1275 	ld	hl,#0x1004
   57D4 E5            [11] 1276 	push	hl
   57D5 C5            [11] 1277 	push	bc
   57D6 D5            [11] 1278 	push	de
   57D7 CD 0D 71      [17] 1279 	call	_cpct_drawSprite
                           1280 ;src/game/world.c:252: break;
   57DA C3 0D 59      [10] 1281 	jp	00128$
                           1282 ;src/game/world.c:253: case FARM1:
   57DD                    1283 00106$:
                           1284 ;src/game/world.c:254: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   57DD 11 7E 62      [10] 1285 	ld	de,#_farm1
   57E0 21 04 10      [10] 1286 	ld	hl,#0x1004
   57E3 E5            [11] 1287 	push	hl
   57E4 C5            [11] 1288 	push	bc
   57E5 D5            [11] 1289 	push	de
   57E6 CD 0D 71      [17] 1290 	call	_cpct_drawSprite
                           1291 ;src/game/world.c:255: break;
   57E9 C3 0D 59      [10] 1292 	jp	00128$
                           1293 ;src/game/world.c:256: case FARM2:
   57EC                    1294 00107$:
                           1295 ;src/game/world.c:257: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   57EC 11 BE 62      [10] 1296 	ld	de,#_farm2
   57EF 21 04 10      [10] 1297 	ld	hl,#0x1004
   57F2 E5            [11] 1298 	push	hl
   57F3 C5            [11] 1299 	push	bc
   57F4 D5            [11] 1300 	push	de
   57F5 CD 0D 71      [17] 1301 	call	_cpct_drawSprite
                           1302 ;src/game/world.c:258: break;
   57F8 C3 0D 59      [10] 1303 	jp	00128$
                           1304 ;src/game/world.c:259: case WATER:
   57FB                    1305 00108$:
                           1306 ;src/game/world.c:260: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   57FB 11 3E 62      [10] 1307 	ld	de,#_water
   57FE 21 04 10      [10] 1308 	ld	hl,#0x1004
   5801 E5            [11] 1309 	push	hl
   5802 C5            [11] 1310 	push	bc
   5803 D5            [11] 1311 	push	de
   5804 CD 0D 71      [17] 1312 	call	_cpct_drawSprite
                           1313 ;src/game/world.c:261: break;
   5807 C3 0D 59      [10] 1314 	jp	00128$
                           1315 ;src/game/world.c:262: case FOREST:
   580A                    1316 00109$:
                           1317 ;src/game/world.c:263: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   580A 11 3E 61      [10] 1318 	ld	de,#_forest
   580D 21 04 10      [10] 1319 	ld	hl,#0x1004
   5810 E5            [11] 1320 	push	hl
   5811 C5            [11] 1321 	push	bc
   5812 D5            [11] 1322 	push	de
   5813 CD 0D 71      [17] 1323 	call	_cpct_drawSprite
                           1324 ;src/game/world.c:264: break;
   5816 C3 0D 59      [10] 1325 	jp	00128$
                           1326 ;src/game/world.c:265: case LIVESTOCK:
   5819                    1327 00110$:
                           1328 ;src/game/world.c:266: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   5819 11 FE 62      [10] 1329 	ld	de,#_livestock
   581C 21 04 10      [10] 1330 	ld	hl,#0x1004
   581F E5            [11] 1331 	push	hl
   5820 C5            [11] 1332 	push	bc
   5821 D5            [11] 1333 	push	de
   5822 CD 0D 71      [17] 1334 	call	_cpct_drawSprite
                           1335 ;src/game/world.c:267: break;
   5825 C3 0D 59      [10] 1336 	jp	00128$
                           1337 ;src/game/world.c:268: case SSNS:
   5828                    1338 00111$:
                           1339 ;src/game/world.c:269: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5828 11 3E 63      [10] 1340 	ld	de,#_station_small_ns
   582B 21 04 10      [10] 1341 	ld	hl,#0x1004
   582E E5            [11] 1342 	push	hl
   582F C5            [11] 1343 	push	bc
   5830 D5            [11] 1344 	push	de
   5831 CD 0D 71      [17] 1345 	call	_cpct_drawSprite
                           1346 ;src/game/world.c:270: break;
   5834 C3 0D 59      [10] 1347 	jp	00128$
                           1348 ;src/game/world.c:271: case SSEW:
   5837                    1349 00112$:
                           1350 ;src/game/world.c:272: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   5837 11 7E 63      [10] 1351 	ld	de,#_station_small_ew
   583A 21 04 10      [10] 1352 	ld	hl,#0x1004
   583D E5            [11] 1353 	push	hl
   583E C5            [11] 1354 	push	bc
   583F D5            [11] 1355 	push	de
   5840 CD 0D 71      [17] 1356 	call	_cpct_drawSprite
                           1357 ;src/game/world.c:273: break;
   5843 C3 0D 59      [10] 1358 	jp	00128$
                           1359 ;src/game/world.c:274: case SMNS:
   5846                    1360 00113$:
                           1361 ;src/game/world.c:275: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   5846 11 BE 63      [10] 1362 	ld	de,#_station_medium_ns
   5849 21 04 10      [10] 1363 	ld	hl,#0x1004
   584C E5            [11] 1364 	push	hl
   584D C5            [11] 1365 	push	bc
   584E D5            [11] 1366 	push	de
   584F CD 0D 71      [17] 1367 	call	_cpct_drawSprite
                           1368 ;src/game/world.c:276: break;
   5852 C3 0D 59      [10] 1369 	jp	00128$
                           1370 ;src/game/world.c:277: case SMEW:
   5855                    1371 00114$:
                           1372 ;src/game/world.c:278: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   5855 11 FE 63      [10] 1373 	ld	de,#_station_medium_ew
   5858 21 04 10      [10] 1374 	ld	hl,#0x1004
   585B E5            [11] 1375 	push	hl
   585C C5            [11] 1376 	push	bc
   585D D5            [11] 1377 	push	de
   585E CD 0D 71      [17] 1378 	call	_cpct_drawSprite
                           1379 ;src/game/world.c:279: break;
   5861 C3 0D 59      [10] 1380 	jp	00128$
                           1381 ;src/game/world.c:280: case SLNS:
   5864                    1382 00115$:
                           1383 ;src/game/world.c:281: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   5864 11 3E 64      [10] 1384 	ld	de,#_station_large_ns
   5867 21 04 10      [10] 1385 	ld	hl,#0x1004
   586A E5            [11] 1386 	push	hl
   586B C5            [11] 1387 	push	bc
   586C D5            [11] 1388 	push	de
   586D CD 0D 71      [17] 1389 	call	_cpct_drawSprite
                           1390 ;src/game/world.c:282: break;
   5870 C3 0D 59      [10] 1391 	jp	00128$
                           1392 ;src/game/world.c:283: case SLEW:
   5873                    1393 00116$:
                           1394 ;src/game/world.c:284: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   5873 11 7E 64      [10] 1395 	ld	de,#_station_large_ew
   5876 21 04 10      [10] 1396 	ld	hl,#0x1004
   5879 E5            [11] 1397 	push	hl
   587A C5            [11] 1398 	push	bc
   587B D5            [11] 1399 	push	de
   587C CD 0D 71      [17] 1400 	call	_cpct_drawSprite
                           1401 ;src/game/world.c:285: break;
   587F C3 0D 59      [10] 1402 	jp	00128$
                           1403 ;src/game/world.c:286: case REW:
   5882                    1404 00117$:
                           1405 ;src/game/world.c:287: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   5882 11 BE 64      [10] 1406 	ld	de,#_rail_ew
   5885 21 04 10      [10] 1407 	ld	hl,#0x1004
   5888 E5            [11] 1408 	push	hl
   5889 C5            [11] 1409 	push	bc
   588A D5            [11] 1410 	push	de
   588B CD 0D 71      [17] 1411 	call	_cpct_drawSprite
                           1412 ;src/game/world.c:288: break;
   588E C3 0D 59      [10] 1413 	jp	00128$
                           1414 ;src/game/world.c:289: case RNS:
   5891                    1415 00118$:
                           1416 ;src/game/world.c:290: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5891 11 FE 64      [10] 1417 	ld	de,#_rail_ns
   5894 21 04 10      [10] 1418 	ld	hl,#0x1004
   5897 E5            [11] 1419 	push	hl
   5898 C5            [11] 1420 	push	bc
   5899 D5            [11] 1421 	push	de
   589A CD 0D 71      [17] 1422 	call	_cpct_drawSprite
                           1423 ;src/game/world.c:291: break;
   589D 18 6E         [12] 1424 	jr	00128$
                           1425 ;src/game/world.c:292: case REN:
   589F                    1426 00119$:
                           1427 ;src/game/world.c:293: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   589F 11 3E 65      [10] 1428 	ld	de,#_rail_en
   58A2 21 04 10      [10] 1429 	ld	hl,#0x1004
   58A5 E5            [11] 1430 	push	hl
   58A6 C5            [11] 1431 	push	bc
   58A7 D5            [11] 1432 	push	de
   58A8 CD 0D 71      [17] 1433 	call	_cpct_drawSprite
                           1434 ;src/game/world.c:294: break;
   58AB 18 60         [12] 1435 	jr	00128$
                           1436 ;src/game/world.c:295: case RES:
   58AD                    1437 00120$:
                           1438 ;src/game/world.c:296: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   58AD 11 7E 65      [10] 1439 	ld	de,#_rail_es
   58B0 21 04 10      [10] 1440 	ld	hl,#0x1004
   58B3 E5            [11] 1441 	push	hl
   58B4 C5            [11] 1442 	push	bc
   58B5 D5            [11] 1443 	push	de
   58B6 CD 0D 71      [17] 1444 	call	_cpct_drawSprite
                           1445 ;src/game/world.c:297: break;
   58B9 18 52         [12] 1446 	jr	00128$
                           1447 ;src/game/world.c:298: case RWN:
   58BB                    1448 00121$:
                           1449 ;src/game/world.c:299: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   58BB 11 BE 65      [10] 1450 	ld	de,#_rail_wn
   58BE 21 04 10      [10] 1451 	ld	hl,#0x1004
   58C1 E5            [11] 1452 	push	hl
   58C2 C5            [11] 1453 	push	bc
   58C3 D5            [11] 1454 	push	de
   58C4 CD 0D 71      [17] 1455 	call	_cpct_drawSprite
                           1456 ;src/game/world.c:300: break;
   58C7 18 44         [12] 1457 	jr	00128$
                           1458 ;src/game/world.c:301: case RWS:
   58C9                    1459 00122$:
                           1460 ;src/game/world.c:302: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   58C9 11 FE 65      [10] 1461 	ld	de,#_rail_ws
   58CC 21 04 10      [10] 1462 	ld	hl,#0x1004
   58CF E5            [11] 1463 	push	hl
   58D0 C5            [11] 1464 	push	bc
   58D1 D5            [11] 1465 	push	de
   58D2 CD 0D 71      [17] 1466 	call	_cpct_drawSprite
                           1467 ;src/game/world.c:303: break;
   58D5 18 36         [12] 1468 	jr	00128$
                           1469 ;src/game/world.c:304: case REWN:
   58D7                    1470 00123$:
                           1471 ;src/game/world.c:305: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   58D7 11 3E 66      [10] 1472 	ld	de,#_rail_ew_n
   58DA 21 04 10      [10] 1473 	ld	hl,#0x1004
   58DD E5            [11] 1474 	push	hl
   58DE C5            [11] 1475 	push	bc
   58DF D5            [11] 1476 	push	de
   58E0 CD 0D 71      [17] 1477 	call	_cpct_drawSprite
                           1478 ;src/game/world.c:306: break;
   58E3 18 28         [12] 1479 	jr	00128$
                           1480 ;src/game/world.c:307: case REWS:
   58E5                    1481 00124$:
                           1482 ;src/game/world.c:308: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   58E5 11 7E 66      [10] 1483 	ld	de,#_rail_ew_s
   58E8 21 04 10      [10] 1484 	ld	hl,#0x1004
   58EB E5            [11] 1485 	push	hl
   58EC C5            [11] 1486 	push	bc
   58ED D5            [11] 1487 	push	de
   58EE CD 0D 71      [17] 1488 	call	_cpct_drawSprite
                           1489 ;src/game/world.c:309: break;
   58F1 18 1A         [12] 1490 	jr	00128$
                           1491 ;src/game/world.c:310: case RNSE:
   58F3                    1492 00125$:
                           1493 ;src/game/world.c:311: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   58F3 11 FE 66      [10] 1494 	ld	de,#_rail_ns_e
   58F6 21 04 10      [10] 1495 	ld	hl,#0x1004
   58F9 E5            [11] 1496 	push	hl
   58FA C5            [11] 1497 	push	bc
   58FB D5            [11] 1498 	push	de
   58FC CD 0D 71      [17] 1499 	call	_cpct_drawSprite
                           1500 ;src/game/world.c:312: break;
   58FF 18 0C         [12] 1501 	jr	00128$
                           1502 ;src/game/world.c:313: case RNSW:
   5901                    1503 00126$:
                           1504 ;src/game/world.c:314: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   5901 11 BE 66      [10] 1505 	ld	de,#_rail_ns_w
   5904 21 04 10      [10] 1506 	ld	hl,#0x1004
   5907 E5            [11] 1507 	push	hl
   5908 C5            [11] 1508 	push	bc
   5909 D5            [11] 1509 	push	de
   590A CD 0D 71      [17] 1510 	call	_cpct_drawSprite
                           1511 ;src/game/world.c:316: }
   590D                    1512 00128$:
   590D DD E1         [14] 1513 	pop	ix
   590F C9            [10] 1514 	ret
                           1515 ;src/game/world.c:319: void drawScrolls(u8 x_, u8 y_)
                           1516 ;	---------------------------------
                           1517 ; Function drawScrolls
                           1518 ; ---------------------------------
   5910                    1519 _drawScrolls::
   5910 DD E5         [15] 1520 	push	ix
   5912 DD 21 00 00   [14] 1521 	ld	ix,#0
   5916 DD 39         [15] 1522 	add	ix,sp
   5918 3B            [ 6] 1523 	dec	sp
                           1524 ;src/game/world.c:325: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   5919 DD 4E 04      [19] 1525 	ld	c,4 (ix)
   591C 06 00         [ 7] 1526 	ld	b,#0x00
   591E 69            [ 4] 1527 	ld	l, c
   591F 60            [ 4] 1528 	ld	h, b
   5920 29            [11] 1529 	add	hl, hl
   5921 29            [11] 1530 	add	hl, hl
   5922 29            [11] 1531 	add	hl, hl
   5923 09            [11] 1532 	add	hl, bc
   5924 29            [11] 1533 	add	hl, hl
   5925 09            [11] 1534 	add	hl, bc
   5926 29            [11] 1535 	add	hl, hl
   5927 29            [11] 1536 	add	hl, hl
   5928 01 3C 00      [10] 1537 	ld	bc,#0x003C
   592B C5            [11] 1538 	push	bc
   592C E5            [11] 1539 	push	hl
   592D CD 5B 75      [17] 1540 	call	__divsint
   5930 F1            [10] 1541 	pop	af
   5931 F1            [10] 1542 	pop	af
   5932 55            [ 4] 1543 	ld	d,l
                           1544 ;src/game/world.c:326: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   5933 DD 4E 05      [19] 1545 	ld	c,5 (ix)
   5936 06 00         [ 7] 1546 	ld	b,#0x00
   5938 69            [ 4] 1547 	ld	l, c
   5939 60            [ 4] 1548 	ld	h, b
   593A 29            [11] 1549 	add	hl, hl
   593B 29            [11] 1550 	add	hl, hl
   593C 09            [11] 1551 	add	hl, bc
   593D 29            [11] 1552 	add	hl, hl
   593E 09            [11] 1553 	add	hl, bc
   593F 29            [11] 1554 	add	hl, hl
   5940 29            [11] 1555 	add	hl, hl
   5941 29            [11] 1556 	add	hl, hl
   5942 29            [11] 1557 	add	hl, hl
   5943 D5            [11] 1558 	push	de
   5944 01 24 00      [10] 1559 	ld	bc,#0x0024
   5947 C5            [11] 1560 	push	bc
   5948 E5            [11] 1561 	push	hl
   5949 CD 5B 75      [17] 1562 	call	__divsint
   594C F1            [10] 1563 	pop	af
   594D F1            [10] 1564 	pop	af
   594E D1            [10] 1565 	pop	de
   594F DD 75 FF      [19] 1566 	ld	-1 (ix),l
                           1567 ;src/game/world.c:328: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   5952 AF            [ 4] 1568 	xor	a, a
   5953 F5            [11] 1569 	push	af
   5954 33            [ 6] 1570 	inc	sp
   5955 D5            [11] 1571 	push	de
   5956 33            [ 6] 1572 	inc	sp
   5957 21 00 C0      [10] 1573 	ld	hl,#0xC000
   595A E5            [11] 1574 	push	hl
   595B CD 0A 75      [17] 1575 	call	_cpct_getScreenPtr
                           1576 ;src/game/world.c:329: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   595E E5            [11] 1577 	push	hl
   595F 21 00 00      [10] 1578 	ld	hl,#0x0000
   5962 E5            [11] 1579 	push	hl
   5963 2E 00         [ 7] 1580 	ld	l, #0x00
   5965 E5            [11] 1581 	push	hl
   5966 CD E4 73      [17] 1582 	call	_cpct_px2byteM1
   5969 F1            [10] 1583 	pop	af
   596A F1            [10] 1584 	pop	af
   596B 45            [ 4] 1585 	ld	b,l
   596C D1            [10] 1586 	pop	de
   596D 21 04 04      [10] 1587 	ld	hl,#0x0404
   5970 E5            [11] 1588 	push	hl
   5971 C5            [11] 1589 	push	bc
   5972 33            [ 6] 1590 	inc	sp
   5973 D5            [11] 1591 	push	de
   5974 CD 51 74      [17] 1592 	call	_cpct_drawSolidBox
   5977 F1            [10] 1593 	pop	af
   5978 F1            [10] 1594 	pop	af
   5979 33            [ 6] 1595 	inc	sp
                           1596 ;src/game/world.c:331: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   597A DD 7E FF      [19] 1597 	ld	a,-1 (ix)
   597D F5            [11] 1598 	push	af
   597E 33            [ 6] 1599 	inc	sp
   597F AF            [ 4] 1600 	xor	a, a
   5980 F5            [11] 1601 	push	af
   5981 33            [ 6] 1602 	inc	sp
   5982 21 00 C0      [10] 1603 	ld	hl,#0xC000
   5985 E5            [11] 1604 	push	hl
   5986 CD 0A 75      [17] 1605 	call	_cpct_getScreenPtr
                           1606 ;src/game/world.c:332: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   5989 E5            [11] 1607 	push	hl
   598A 21 00 00      [10] 1608 	ld	hl,#0x0000
   598D E5            [11] 1609 	push	hl
   598E 2E 00         [ 7] 1610 	ld	l, #0x00
   5990 E5            [11] 1611 	push	hl
   5991 CD E4 73      [17] 1612 	call	_cpct_px2byteM1
   5994 F1            [10] 1613 	pop	af
   5995 F1            [10] 1614 	pop	af
   5996 45            [ 4] 1615 	ld	b,l
   5997 D1            [10] 1616 	pop	de
   5998 21 01 10      [10] 1617 	ld	hl,#0x1001
   599B E5            [11] 1618 	push	hl
   599C C5            [11] 1619 	push	bc
   599D 33            [ 6] 1620 	inc	sp
   599E D5            [11] 1621 	push	de
   599F CD 51 74      [17] 1622 	call	_cpct_drawSolidBox
   59A2 F1            [10] 1623 	pop	af
   59A3 F1            [10] 1624 	pop	af
   59A4 33            [ 6] 1625 	inc	sp
   59A5 33            [ 6] 1626 	inc	sp
   59A6 DD E1         [14] 1627 	pop	ix
   59A8 C9            [10] 1628 	ret
                           1629 ;src/game/world.c:335: void drawWorld(u8 x_, u8 y_)
                           1630 ;	---------------------------------
                           1631 ; Function drawWorld
                           1632 ; ---------------------------------
   59A9                    1633 _drawWorld::
                           1634 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   59A9 16 00         [ 7] 1635 	ld	d,#0x00
                           1636 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   59AB                    1637 00109$:
   59AB 1E 00         [ 7] 1638 	ld	e,#0x00
   59AD                    1639 00103$:
                           1640 ;src/game/world.c:344: drawTile(x_, y_, ix, iy);
   59AD D5            [11] 1641 	push	de
   59AE D5            [11] 1642 	push	de
   59AF 21 07 00      [10] 1643 	ld	hl, #7+0
   59B2 39            [11] 1644 	add	hl, sp
   59B3 7E            [ 7] 1645 	ld	a, (hl)
   59B4 F5            [11] 1646 	push	af
   59B5 33            [ 6] 1647 	inc	sp
   59B6 21 07 00      [10] 1648 	ld	hl, #7+0
   59B9 39            [11] 1649 	add	hl, sp
   59BA 7E            [ 7] 1650 	ld	a, (hl)
   59BB F5            [11] 1651 	push	af
   59BC 33            [ 6] 1652 	inc	sp
   59BD CD E8 56      [17] 1653 	call	_drawTile
   59C0 F1            [10] 1654 	pop	af
   59C1 F1            [10] 1655 	pop	af
   59C2 D1            [10] 1656 	pop	de
                           1657 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   59C3 1C            [ 4] 1658 	inc	e
   59C4 7B            [ 4] 1659 	ld	a,e
   59C5 D6 14         [ 7] 1660 	sub	a, #0x14
   59C7 38 E4         [12] 1661 	jr	C,00103$
                           1662 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   59C9 14            [ 4] 1663 	inc	d
   59CA 7A            [ 4] 1664 	ld	a,d
   59CB D6 0C         [ 7] 1665 	sub	a, #0x0C
   59CD 38 DC         [12] 1666 	jr	C,00109$
                           1667 ;src/game/world.c:348: drawScrolls(x_, y_);
   59CF 21 03 00      [10] 1668 	ld	hl, #3+0
   59D2 39            [11] 1669 	add	hl, sp
   59D3 7E            [ 7] 1670 	ld	a, (hl)
   59D4 F5            [11] 1671 	push	af
   59D5 33            [ 6] 1672 	inc	sp
   59D6 21 03 00      [10] 1673 	ld	hl, #3+0
   59D9 39            [11] 1674 	add	hl, sp
   59DA 7E            [ 7] 1675 	ld	a, (hl)
   59DB F5            [11] 1676 	push	af
   59DC 33            [ 6] 1677 	inc	sp
   59DD CD 10 59      [17] 1678 	call	_drawScrolls
   59E0 F1            [10] 1679 	pop	af
   59E1 C9            [10] 1680 	ret
                           1681 	.area _CODE
                           1682 	.area _INITIALIZER
                           1683 	.area _CABS (ABS)
