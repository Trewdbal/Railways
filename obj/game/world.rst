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
   5119                      64 _drawCursor::
   5119 DD E5         [15]   65 	push	ix
   511B DD 21 00 00   [14]   66 	ld	ix,#0
   511F DD 39         [15]   67 	add	ix,sp
   5121 3B            [ 6]   68 	dec	sp
                             69 ;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   5122 DD 7E 05      [19]   70 	ld	a,5 (ix)
   5125 07            [ 4]   71 	rlca
   5126 07            [ 4]   72 	rlca
   5127 07            [ 4]   73 	rlca
   5128 07            [ 4]   74 	rlca
   5129 E6 F0         [ 7]   75 	and	a,#0xF0
   512B 5F            [ 4]   76 	ld	e,a
   512C DD 7E 04      [19]   77 	ld	a,4 (ix)
   512F 87            [ 4]   78 	add	a, a
   5130 87            [ 4]   79 	add	a, a
   5131 57            [ 4]   80 	ld	d,a
   5132 D5            [11]   81 	push	de
   5133 7B            [ 4]   82 	ld	a,e
   5134 F5            [11]   83 	push	af
   5135 33            [ 6]   84 	inc	sp
   5136 D5            [11]   85 	push	de
   5137 33            [ 6]   86 	inc	sp
   5138 21 00 C0      [10]   87 	ld	hl,#0xC000
   513B E5            [11]   88 	push	hl
   513C CD 0B 7A      [17]   89 	call	_cpct_getScreenPtr
   513F D1            [10]   90 	pop	de
   5140 4D            [ 4]   91 	ld	c, l
   5141 44            [ 4]   92 	ld	b, h
                             93 ;src/game/world.c:8: switch(CURSOR_MODE)
   5142 3E 10         [ 7]   94 	ld	a,#0x10
   5144 FD 21 FF 89   [14]   95 	ld	iy,#_CURSOR_MODE
   5148 FD 96 00      [19]   96 	sub	a, 0 (iy)
   514B DA 4A 53      [10]   97 	jp	C,00119$
   514E D5            [11]   98 	push	de
   514F FD 21 FF 89   [14]   99 	ld	iy,#_CURSOR_MODE
   5153 FD 5E 00      [19]  100 	ld	e,0 (iy)
   5156 16 00         [ 7]  101 	ld	d,#0x00
   5158 21 60 51      [10]  102 	ld	hl,#00125$
   515B 19            [11]  103 	add	hl,de
   515C 19            [11]  104 	add	hl,de
   515D 19            [11]  105 	add	hl,de
   515E D1            [10]  106 	pop	de
   515F E9            [ 4]  107 	jp	(hl)
   5160                     108 00125$:
   5160 C3 93 51      [10]  109 	jp	00101$
   5163 C3 65 52      [10]  110 	jp	00102$
   5166 C3 74 52      [10]  111 	jp	00103$
   5169 C3 83 52      [10]  112 	jp	00104$
   516C C3 92 52      [10]  113 	jp	00105$
   516F C3 A1 52      [10]  114 	jp	00106$
   5172 C3 B0 52      [10]  115 	jp	00107$
   5175 C3 BF 52      [10]  116 	jp	00108$
   5178 C3 CE 52      [10]  117 	jp	00109$
   517B C3 DC 52      [10]  118 	jp	00110$
   517E C3 EA 52      [10]  119 	jp	00111$
   5181 C3 F8 52      [10]  120 	jp	00112$
   5184 C3 06 53      [10]  121 	jp	00113$
   5187 C3 14 53      [10]  122 	jp	00114$
   518A C3 22 53      [10]  123 	jp	00115$
   518D C3 30 53      [10]  124 	jp	00116$
   5190 C3 3E 53      [10]  125 	jp	00117$
                            126 ;src/game/world.c:10: case NONE:
   5193                     127 00101$:
                            128 ;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   5193 C5            [11]  129 	push	bc
   5194 D5            [11]  130 	push	de
   5195 DD 66 06      [19]  131 	ld	h,6 (ix)
   5198 DD 6E 06      [19]  132 	ld	l,6 (ix)
   519B E5            [11]  133 	push	hl
   519C DD 66 06      [19]  134 	ld	h,6 (ix)
   519F DD 6E 06      [19]  135 	ld	l,6 (ix)
   51A2 E5            [11]  136 	push	hl
   51A3 CD E5 78      [17]  137 	call	_cpct_px2byteM1
   51A6 F1            [10]  138 	pop	af
   51A7 F1            [10]  139 	pop	af
   51A8 DD 75 FF      [19]  140 	ld	-1 (ix),l
   51AB D1            [10]  141 	pop	de
   51AC C1            [10]  142 	pop	bc
   51AD D5            [11]  143 	push	de
   51AE 21 04 00      [10]  144 	ld	hl,#0x0004
   51B1 E5            [11]  145 	push	hl
   51B2 DD 7E FF      [19]  146 	ld	a,-1 (ix)
   51B5 F5            [11]  147 	push	af
   51B6 33            [ 6]  148 	inc	sp
   51B7 C5            [11]  149 	push	bc
   51B8 CD D7 78      [17]  150 	call	_cpct_memset
   51BB D1            [10]  151 	pop	de
                            152 ;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   51BC 63            [ 4]  153 	ld	h,e
   51BD 24            [ 4]  154 	inc	h
   51BE D5            [11]  155 	push	de
   51BF E5            [11]  156 	push	hl
   51C0 33            [ 6]  157 	inc	sp
   51C1 D5            [11]  158 	push	de
   51C2 33            [ 6]  159 	inc	sp
   51C3 21 00 C0      [10]  160 	ld	hl,#0xC000
   51C6 E5            [11]  161 	push	hl
   51C7 CD 0B 7A      [17]  162 	call	_cpct_getScreenPtr
   51CA D1            [10]  163 	pop	de
                            164 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   51CB E5            [11]  165 	push	hl
   51CC D5            [11]  166 	push	de
   51CD DD 66 06      [19]  167 	ld	h,6 (ix)
   51D0 DD 6E 06      [19]  168 	ld	l,6 (ix)
   51D3 E5            [11]  169 	push	hl
   51D4 DD 66 06      [19]  170 	ld	h,6 (ix)
   51D7 DD 6E 06      [19]  171 	ld	l,6 (ix)
   51DA E5            [11]  172 	push	hl
   51DB CD E5 78      [17]  173 	call	_cpct_px2byteM1
   51DE F1            [10]  174 	pop	af
   51DF F1            [10]  175 	pop	af
   51E0 5D            [ 4]  176 	ld	e,l
   51E1 F1            [10]  177 	pop	af
   51E2 57            [ 4]  178 	ld	d,a
   51E3 C1            [10]  179 	pop	bc
   51E4 D5            [11]  180 	push	de
   51E5 21 04 00      [10]  181 	ld	hl,#0x0004
   51E8 E5            [11]  182 	push	hl
   51E9 7B            [ 4]  183 	ld	a,e
   51EA F5            [11]  184 	push	af
   51EB 33            [ 6]  185 	inc	sp
   51EC C5            [11]  186 	push	bc
   51ED CD D7 78      [17]  187 	call	_cpct_memset
   51F0 D1            [10]  188 	pop	de
                            189 ;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   51F1 DD 7E 05      [19]  190 	ld	a,5 (ix)
   51F4 3C            [ 4]  191 	inc	a
   51F5 07            [ 4]  192 	rlca
   51F6 07            [ 4]  193 	rlca
   51F7 07            [ 4]  194 	rlca
   51F8 07            [ 4]  195 	rlca
   51F9 E6 F0         [ 7]  196 	and	a,#0xF0
   51FB 5F            [ 4]  197 	ld	e,a
   51FC 63            [ 4]  198 	ld	h,e
   51FD 25            [ 4]  199 	dec	h
   51FE D5            [11]  200 	push	de
   51FF E5            [11]  201 	push	hl
   5200 33            [ 6]  202 	inc	sp
   5201 D5            [11]  203 	push	de
   5202 33            [ 6]  204 	inc	sp
   5203 21 00 C0      [10]  205 	ld	hl,#0xC000
   5206 E5            [11]  206 	push	hl
   5207 CD 0B 7A      [17]  207 	call	_cpct_getScreenPtr
   520A D1            [10]  208 	pop	de
                            209 ;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   520B E5            [11]  210 	push	hl
   520C D5            [11]  211 	push	de
   520D DD 66 06      [19]  212 	ld	h,6 (ix)
   5210 DD 6E 06      [19]  213 	ld	l,6 (ix)
   5213 E5            [11]  214 	push	hl
   5214 DD 66 06      [19]  215 	ld	h,6 (ix)
   5217 DD 6E 06      [19]  216 	ld	l,6 (ix)
   521A E5            [11]  217 	push	hl
   521B CD E5 78      [17]  218 	call	_cpct_px2byteM1
   521E F1            [10]  219 	pop	af
   521F F1            [10]  220 	pop	af
   5220 DD 75 FF      [19]  221 	ld	-1 (ix),l
   5223 D1            [10]  222 	pop	de
   5224 C1            [10]  223 	pop	bc
   5225 D5            [11]  224 	push	de
   5226 21 04 00      [10]  225 	ld	hl,#0x0004
   5229 E5            [11]  226 	push	hl
   522A DD 7E FF      [19]  227 	ld	a,-1 (ix)
   522D F5            [11]  228 	push	af
   522E 33            [ 6]  229 	inc	sp
   522F C5            [11]  230 	push	bc
   5230 CD D7 78      [17]  231 	call	_cpct_memset
   5233 D1            [10]  232 	pop	de
                            233 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   5234 63            [ 4]  234 	ld	h,e
   5235 25            [ 4]  235 	dec	h
   5236 25            [ 4]  236 	dec	h
   5237 E5            [11]  237 	push	hl
   5238 33            [ 6]  238 	inc	sp
   5239 D5            [11]  239 	push	de
   523A 33            [ 6]  240 	inc	sp
   523B 21 00 C0      [10]  241 	ld	hl,#0xC000
   523E E5            [11]  242 	push	hl
   523F CD 0B 7A      [17]  243 	call	_cpct_getScreenPtr
                            244 ;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   5242 E5            [11]  245 	push	hl
   5243 DD 66 06      [19]  246 	ld	h,6 (ix)
   5246 DD 6E 06      [19]  247 	ld	l,6 (ix)
   5249 E5            [11]  248 	push	hl
   524A DD 66 06      [19]  249 	ld	h,6 (ix)
   524D DD 6E 06      [19]  250 	ld	l,6 (ix)
   5250 E5            [11]  251 	push	hl
   5251 CD E5 78      [17]  252 	call	_cpct_px2byteM1
   5254 F1            [10]  253 	pop	af
   5255 F1            [10]  254 	pop	af
   5256 65            [ 4]  255 	ld	h,l
   5257 D1            [10]  256 	pop	de
   5258 01 04 00      [10]  257 	ld	bc,#0x0004
   525B C5            [11]  258 	push	bc
   525C E5            [11]  259 	push	hl
   525D 33            [ 6]  260 	inc	sp
   525E D5            [11]  261 	push	de
   525F CD D7 78      [17]  262 	call	_cpct_memset
                            263 ;src/game/world.c:20: break;
   5262 C3 4A 53      [10]  264 	jp	00119$
                            265 ;src/game/world.c:21: case T_SSNS:
   5265                     266 00102$:
                            267 ;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5265 11 04 64      [10]  268 	ld	de,#_station_small_ns
   5268 21 04 10      [10]  269 	ld	hl,#0x1004
   526B E5            [11]  270 	push	hl
   526C C5            [11]  271 	push	bc
   526D D5            [11]  272 	push	de
   526E CD DD 73      [17]  273 	call	_cpct_drawSprite
                            274 ;src/game/world.c:23: break;
   5271 C3 4A 53      [10]  275 	jp	00119$
                            276 ;src/game/world.c:24: case T_SSEW:
   5274                     277 00103$:
                            278 ;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   5274 11 44 64      [10]  279 	ld	de,#_station_small_ew
   5277 21 04 10      [10]  280 	ld	hl,#0x1004
   527A E5            [11]  281 	push	hl
   527B C5            [11]  282 	push	bc
   527C D5            [11]  283 	push	de
   527D CD DD 73      [17]  284 	call	_cpct_drawSprite
                            285 ;src/game/world.c:26: break;
   5280 C3 4A 53      [10]  286 	jp	00119$
                            287 ;src/game/world.c:27: case T_SMNS:
   5283                     288 00104$:
                            289 ;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   5283 11 84 64      [10]  290 	ld	de,#_station_medium_ns
   5286 21 04 10      [10]  291 	ld	hl,#0x1004
   5289 E5            [11]  292 	push	hl
   528A C5            [11]  293 	push	bc
   528B D5            [11]  294 	push	de
   528C CD DD 73      [17]  295 	call	_cpct_drawSprite
                            296 ;src/game/world.c:29: break;
   528F C3 4A 53      [10]  297 	jp	00119$
                            298 ;src/game/world.c:30: case T_SMEW:
   5292                     299 00105$:
                            300 ;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   5292 11 C4 64      [10]  301 	ld	de,#_station_medium_ew
   5295 21 04 10      [10]  302 	ld	hl,#0x1004
   5298 E5            [11]  303 	push	hl
   5299 C5            [11]  304 	push	bc
   529A D5            [11]  305 	push	de
   529B CD DD 73      [17]  306 	call	_cpct_drawSprite
                            307 ;src/game/world.c:32: break;
   529E C3 4A 53      [10]  308 	jp	00119$
                            309 ;src/game/world.c:33: case T_SLNS:
   52A1                     310 00106$:
                            311 ;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   52A1 11 04 65      [10]  312 	ld	de,#_station_large_ns
   52A4 21 04 10      [10]  313 	ld	hl,#0x1004
   52A7 E5            [11]  314 	push	hl
   52A8 C5            [11]  315 	push	bc
   52A9 D5            [11]  316 	push	de
   52AA CD DD 73      [17]  317 	call	_cpct_drawSprite
                            318 ;src/game/world.c:35: break;
   52AD C3 4A 53      [10]  319 	jp	00119$
                            320 ;src/game/world.c:36: case T_SLEW:
   52B0                     321 00107$:
                            322 ;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   52B0 11 44 65      [10]  323 	ld	de,#_station_large_ew
   52B3 21 04 10      [10]  324 	ld	hl,#0x1004
   52B6 E5            [11]  325 	push	hl
   52B7 C5            [11]  326 	push	bc
   52B8 D5            [11]  327 	push	de
   52B9 CD DD 73      [17]  328 	call	_cpct_drawSprite
                            329 ;src/game/world.c:38: break;
   52BC C3 4A 53      [10]  330 	jp	00119$
                            331 ;src/game/world.c:39: case T_REW:
   52BF                     332 00108$:
                            333 ;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   52BF 11 84 65      [10]  334 	ld	de,#_rail_ew
   52C2 21 04 10      [10]  335 	ld	hl,#0x1004
   52C5 E5            [11]  336 	push	hl
   52C6 C5            [11]  337 	push	bc
   52C7 D5            [11]  338 	push	de
   52C8 CD DD 73      [17]  339 	call	_cpct_drawSprite
                            340 ;src/game/world.c:41: break;
   52CB C3 4A 53      [10]  341 	jp	00119$
                            342 ;src/game/world.c:42: case T_RNS:
   52CE                     343 00109$:
                            344 ;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   52CE 11 C4 65      [10]  345 	ld	de,#_rail_ns
   52D1 21 04 10      [10]  346 	ld	hl,#0x1004
   52D4 E5            [11]  347 	push	hl
   52D5 C5            [11]  348 	push	bc
   52D6 D5            [11]  349 	push	de
   52D7 CD DD 73      [17]  350 	call	_cpct_drawSprite
                            351 ;src/game/world.c:44: break;
   52DA 18 6E         [12]  352 	jr	00119$
                            353 ;src/game/world.c:45: case T_REN:
   52DC                     354 00110$:
                            355 ;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   52DC 11 04 66      [10]  356 	ld	de,#_rail_en
   52DF 21 04 10      [10]  357 	ld	hl,#0x1004
   52E2 E5            [11]  358 	push	hl
   52E3 C5            [11]  359 	push	bc
   52E4 D5            [11]  360 	push	de
   52E5 CD DD 73      [17]  361 	call	_cpct_drawSprite
                            362 ;src/game/world.c:47: break;
   52E8 18 60         [12]  363 	jr	00119$
                            364 ;src/game/world.c:48: case T_RES:
   52EA                     365 00111$:
                            366 ;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   52EA 11 44 66      [10]  367 	ld	de,#_rail_es
   52ED 21 04 10      [10]  368 	ld	hl,#0x1004
   52F0 E5            [11]  369 	push	hl
   52F1 C5            [11]  370 	push	bc
   52F2 D5            [11]  371 	push	de
   52F3 CD DD 73      [17]  372 	call	_cpct_drawSprite
                            373 ;src/game/world.c:50: break;
   52F6 18 52         [12]  374 	jr	00119$
                            375 ;src/game/world.c:51: case T_RWN:
   52F8                     376 00112$:
                            377 ;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   52F8 11 84 66      [10]  378 	ld	de,#_rail_wn
   52FB 21 04 10      [10]  379 	ld	hl,#0x1004
   52FE E5            [11]  380 	push	hl
   52FF C5            [11]  381 	push	bc
   5300 D5            [11]  382 	push	de
   5301 CD DD 73      [17]  383 	call	_cpct_drawSprite
                            384 ;src/game/world.c:53: break;
   5304 18 44         [12]  385 	jr	00119$
                            386 ;src/game/world.c:54: case T_RWS:
   5306                     387 00113$:
                            388 ;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   5306 11 C4 66      [10]  389 	ld	de,#_rail_ws
   5309 21 04 10      [10]  390 	ld	hl,#0x1004
   530C E5            [11]  391 	push	hl
   530D C5            [11]  392 	push	bc
   530E D5            [11]  393 	push	de
   530F CD DD 73      [17]  394 	call	_cpct_drawSprite
                            395 ;src/game/world.c:56: break;
   5312 18 36         [12]  396 	jr	00119$
                            397 ;src/game/world.c:57: case T_REWN:
   5314                     398 00114$:
                            399 ;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5314 11 04 67      [10]  400 	ld	de,#_rail_ew_n
   5317 21 04 10      [10]  401 	ld	hl,#0x1004
   531A E5            [11]  402 	push	hl
   531B C5            [11]  403 	push	bc
   531C D5            [11]  404 	push	de
   531D CD DD 73      [17]  405 	call	_cpct_drawSprite
                            406 ;src/game/world.c:59: break;
   5320 18 28         [12]  407 	jr	00119$
                            408 ;src/game/world.c:60: case T_REWS:
   5322                     409 00115$:
                            410 ;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5322 11 44 67      [10]  411 	ld	de,#_rail_ew_s
   5325 21 04 10      [10]  412 	ld	hl,#0x1004
   5328 E5            [11]  413 	push	hl
   5329 C5            [11]  414 	push	bc
   532A D5            [11]  415 	push	de
   532B CD DD 73      [17]  416 	call	_cpct_drawSprite
                            417 ;src/game/world.c:62: break;
   532E 18 1A         [12]  418 	jr	00119$
                            419 ;src/game/world.c:63: case T_RNSE:
   5330                     420 00116$:
                            421 ;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5330 11 C4 67      [10]  422 	ld	de,#_rail_ns_e
   5333 21 04 10      [10]  423 	ld	hl,#0x1004
   5336 E5            [11]  424 	push	hl
   5337 C5            [11]  425 	push	bc
   5338 D5            [11]  426 	push	de
   5339 CD DD 73      [17]  427 	call	_cpct_drawSprite
                            428 ;src/game/world.c:65: break;
   533C 18 0C         [12]  429 	jr	00119$
                            430 ;src/game/world.c:66: case T_RNSW:
   533E                     431 00117$:
                            432 ;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   533E 11 84 67      [10]  433 	ld	de,#_rail_ns_w
   5341 21 04 10      [10]  434 	ld	hl,#0x1004
   5344 E5            [11]  435 	push	hl
   5345 C5            [11]  436 	push	bc
   5346 D5            [11]  437 	push	de
   5347 CD DD 73      [17]  438 	call	_cpct_drawSprite
                            439 ;src/game/world.c:69: }
   534A                     440 00119$:
   534A 33            [ 6]  441 	inc	sp
   534B DD E1         [14]  442 	pop	ix
   534D C9            [10]  443 	ret
                            444 ;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            445 ;	---------------------------------
                            446 ; Function patternTile
                            447 ; ---------------------------------
   534E                     448 _patternTile::
   534E DD E5         [15]  449 	push	ix
   5350 DD 21 00 00   [14]  450 	ld	ix,#0
   5354 DD 39         [15]  451 	add	ix,sp
   5356 21 F5 FF      [10]  452 	ld	hl,#-11
   5359 39            [11]  453 	add	hl,sp
   535A F9            [ 6]  454 	ld	sp,hl
                            455 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   535B DD 7E 04      [19]  456 	ld	a,4 (ix)
   535E D6 08         [ 7]  457 	sub	a, #0x08
   5360 20 04         [12]  458 	jr	NZ,00153$
   5362 3E 01         [ 7]  459 	ld	a,#0x01
   5364 18 01         [12]  460 	jr	00154$
   5366                     461 00153$:
   5366 AF            [ 4]  462 	xor	a,a
   5367                     463 00154$:
   5367 DD 77 FF      [19]  464 	ld	-1 (ix),a
   536A DD 7E 04      [19]  465 	ld	a,4 (ix)
   536D D6 02         [ 7]  466 	sub	a, #0x02
   536F 20 04         [12]  467 	jr	NZ,00155$
   5371 3E 01         [ 7]  468 	ld	a,#0x01
   5373 18 01         [12]  469 	jr	00156$
   5375                     470 00155$:
   5375 AF            [ 4]  471 	xor	a,a
   5376                     472 00156$:
   5376 DD 77 FC      [19]  473 	ld	-4 (ix),a
   5379 DD 36 F5 00   [19]  474 	ld	-11 (ix),#0x00
   537D 11 00 00      [10]  475 	ld	de,#0x0000
   5380                     476 00115$:
   5380 DD 7E F5      [19]  477 	ld	a,-11 (ix)
   5383 DD 96 08      [19]  478 	sub	a, 8 (ix)
   5386 D2 46 54      [10]  479 	jp	NC,00117$
                            480 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   5389 DD 7E 05      [19]  481 	ld	a,5 (ix)
   538C 83            [ 4]  482 	add	a, e
   538D DD 77 FD      [19]  483 	ld	-3 (ix),a
   5390 DD 7E 06      [19]  484 	ld	a,6 (ix)
   5393 8A            [ 4]  485 	adc	a, d
   5394 DD 77 FE      [19]  486 	ld	-2 (ix),a
   5397 D5            [11]  487 	push	de
   5398 DD 5E 07      [19]  488 	ld	e,7 (ix)
   539B DD 66 F5      [19]  489 	ld	h,-11 (ix)
   539E 2E 00         [ 7]  490 	ld	l, #0x00
   53A0 55            [ 4]  491 	ld	d, l
   53A1 06 08         [ 7]  492 	ld	b, #0x08
   53A3                     493 00157$:
   53A3 29            [11]  494 	add	hl,hl
   53A4 30 01         [12]  495 	jr	NC,00158$
   53A6 19            [11]  496 	add	hl,de
   53A7                     497 00158$:
   53A7 10 FA         [13]  498 	djnz	00157$
   53A9 D1            [10]  499 	pop	de
   53AA DD 75 FA      [19]  500 	ld	-6 (ix),l
   53AD DD 74 FB      [19]  501 	ld	-5 (ix),h
   53B0 DD 36 F6 00   [19]  502 	ld	-10 (ix),#0x00
   53B4                     503 00112$:
   53B4 DD 7E F6      [19]  504 	ld	a,-10 (ix)
   53B7 DD 96 07      [19]  505 	sub	a, 7 (ix)
   53BA D2 3B 54      [10]  506 	jp	NC,00116$
                            507 ;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   53BD DD 7E F6      [19]  508 	ld	a,-10 (ix)
   53C0 DD 77 F7      [19]  509 	ld	-9 (ix),a
   53C3 DD 36 F8 00   [19]  510 	ld	-8 (ix),#0x00
   53C7 DD 7E FA      [19]  511 	ld	a,-6 (ix)
   53CA DD 86 F7      [19]  512 	add	a, -9 (ix)
   53CD 6F            [ 4]  513 	ld	l,a
   53CE DD 7E FB      [19]  514 	ld	a,-5 (ix)
   53D1 DD 8E F8      [19]  515 	adc	a, -8 (ix)
   53D4 67            [ 4]  516 	ld	h,a
   53D5 DD 4E 09      [19]  517 	ld	c,9 (ix)
   53D8 DD 46 0A      [19]  518 	ld	b,10 (ix)
   53DB D5            [11]  519 	push	de
   53DC E5            [11]  520 	push	hl
   53DD C5            [11]  521 	push	bc
   53DE CD 9D 73      [17]  522 	call	_cpct_getBit
   53E1 DD 75 F9      [19]  523 	ld	-7 (ix),l
   53E4 D1            [10]  524 	pop	de
   53E5 DD 7E F9      [19]  525 	ld	a,-7 (ix)
   53E8 B7            [ 4]  526 	or	a, a
   53E9 28 4A         [12]  527 	jr	Z,00113$
   53EB DD 7E FD      [19]  528 	ld	a,-3 (ix)
   53EE DD 86 F7      [19]  529 	add	a, -9 (ix)
   53F1 4F            [ 4]  530 	ld	c,a
   53F2 DD 7E FE      [19]  531 	ld	a,-2 (ix)
   53F5 DD 8E F8      [19]  532 	adc	a, -8 (ix)
   53F8 47            [ 4]  533 	ld	b,a
   53F9 EE 80         [ 7]  534 	xor	a, #0x80
   53FB D6 8F         [ 7]  535 	sub	a, #0x8F
   53FD 30 36         [12]  536 	jr	NC,00113$
                            537 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   53FF 21 FB 7A      [10]  538 	ld	hl,#_p_world
   5402 09            [11]  539 	add	hl,bc
   5403 4D            [ 4]  540 	ld	c,l
   5404 44            [ 4]  541 	ld	b,h
                            542 ;src/game/world.c:83: if(tileType == FOREST)
   5405 DD 7E FF      [19]  543 	ld	a,-1 (ix)
   5408 B7            [ 4]  544 	or	a, a
   5409 28 06         [12]  545 	jr	Z,00104$
                            546 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   540B DD 7E 04      [19]  547 	ld	a,4 (ix)
   540E 02            [ 7]  548 	ld	(bc),a
   540F 18 24         [12]  549 	jr	00113$
   5411                     550 00104$:
                            551 ;src/game/world.c:85: else if(tileType==DWELLINGS1)
   5411 DD 7E FC      [19]  552 	ld	a,-4 (ix)
   5414 B7            [ 4]  553 	or	a, a
   5415 28 1E         [12]  554 	jr	Z,00113$
                            555 ;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   5417 C5            [11]  556 	push	bc
   5418 D5            [11]  557 	push	de
   5419 CD 04 75      [17]  558 	call	_cpct_count2VSYNC
   541C CD 41 79      [17]  559 	call	_cpct_getRandomUniform_u8_f
   541F DD 75 F9      [19]  560 	ld	-7 (ix),l
   5422 3E 03         [ 7]  561 	ld	a,#0x03
   5424 F5            [11]  562 	push	af
   5425 33            [ 6]  563 	inc	sp
   5426 DD 7E F9      [19]  564 	ld	a,-7 (ix)
   5429 F5            [11]  565 	push	af
   542A 33            [ 6]  566 	inc	sp
   542B CD 82 74      [17]  567 	call	__moduchar
   542E F1            [10]  568 	pop	af
   542F 7D            [ 4]  569 	ld	a,l
   5430 D1            [10]  570 	pop	de
   5431 C1            [10]  571 	pop	bc
   5432 C6 02         [ 7]  572 	add	a, #0x02
   5434 02            [ 7]  573 	ld	(bc),a
   5435                     574 00113$:
                            575 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   5435 DD 34 F6      [23]  576 	inc	-10 (ix)
   5438 C3 B4 53      [10]  577 	jp	00112$
   543B                     578 00116$:
                            579 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   543B 21 50 00      [10]  580 	ld	hl,#0x0050
   543E 19            [11]  581 	add	hl,de
   543F EB            [ 4]  582 	ex	de,hl
   5440 DD 34 F5      [23]  583 	inc	-11 (ix)
   5443 C3 80 53      [10]  584 	jp	00115$
   5446                     585 00117$:
   5446 DD F9         [10]  586 	ld	sp, ix
   5448 DD E1         [14]  587 	pop	ix
   544A C9            [10]  588 	ret
                            589 ;src/game/world.c:93: void generateWorld()
                            590 ;	---------------------------------
                            591 ; Function generateWorld
                            592 ; ---------------------------------
   544B                     593 _generateWorld::
   544B DD E5         [15]  594 	push	ix
   544D DD 21 00 00   [14]  595 	ld	ix,#0
   5451 DD 39         [15]  596 	add	ix,sp
   5453 21 E5 FF      [10]  597 	ld	hl,#-27
   5456 39            [11]  598 	add	hl,sp
   5457 F9            [ 6]  599 	ld	sp,hl
                            600 ;src/game/world.c:100: CURSOR_MODE = NONE;
   5458 FD 21 FF 89   [14]  601 	ld	iy,#_CURSOR_MODE
   545C FD 36 00 00   [19]  602 	ld	0 (iy),#0x00
                            603 ;src/game/world.c:103: cpct_srand((u32)cpct_count2VSYNC());
   5460 CD 04 75      [17]  604 	call	_cpct_count2VSYNC
   5463 11 00 00      [10]  605 	ld	de,#0x0000
   5466 CD 60 76      [17]  606 	call	_cpct_setSeed_mxor
                            607 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   5469 11 00 00      [10]  608 	ld	de,#0x0000
   546C                     609 00119$:
                            610 ;src/game/world.c:109: p_world[iy] = cpct_rand()%2;
   546C 21 FB 7A      [10]  611 	ld	hl,#_p_world
   546F 19            [11]  612 	add	hl,de
   5470 E5            [11]  613 	push	hl
   5471 D5            [11]  614 	push	de
   5472 CD 1D 79      [17]  615 	call	_cpct_getRandom_mxor_u8
   5475 7D            [ 4]  616 	ld	a,l
   5476 D1            [10]  617 	pop	de
   5477 E1            [10]  618 	pop	hl
   5478 E6 01         [ 7]  619 	and	a, #0x01
   547A 77            [ 7]  620 	ld	(hl),a
                            621 ;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   547B 13            [ 6]  622 	inc	de
   547C 7A            [ 4]  623 	ld	a,d
   547D EE 80         [ 7]  624 	xor	a, #0x80
   547F D6 8F         [ 7]  625 	sub	a, #0x8F
   5481 38 E9         [12]  626 	jr	C,00119$
                            627 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   5483 21 00 00      [10]  628 	ld	hl,#0x0000
   5486 39            [11]  629 	add	hl,sp
   5487 DD 75 F5      [19]  630 	ld	-11 (ix),l
   548A DD 74 F6      [19]  631 	ld	-10 (ix),h
   548D 01 00 00      [10]  632 	ld	bc,#0x0000
   5490                     633 00121$:
                            634 ;src/game/world.c:115: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5490 C5            [11]  635 	push	bc
   5491 CD 1D 78      [17]  636 	call	_cpct_getRandom_mxor_u16
   5494 11 00 0F      [10]  637 	ld	de,#0x0F00
   5497 D5            [11]  638 	push	de
   5498 E5            [11]  639 	push	hl
   5499 CD 8E 74      [17]  640 	call	__moduint
   549C F1            [10]  641 	pop	af
   549D F1            [10]  642 	pop	af
   549E C1            [10]  643 	pop	bc
   549F DD 75 FB      [19]  644 	ld	-5 (ix),l
   54A2 DD 74 FC      [19]  645 	ld	-4 (ix),h
                            646 ;src/game/world.c:117: switch(cpct_rand()%4)
   54A5 C5            [11]  647 	push	bc
   54A6 CD 1D 79      [17]  648 	call	_cpct_getRandom_mxor_u8
   54A9 7D            [ 4]  649 	ld	a,l
   54AA C1            [10]  650 	pop	bc
   54AB E6 03         [ 7]  651 	and	a, #0x03
   54AD DD 77 FD      [19]  652 	ld	-3 (ix),a
   54B0 3E 03         [ 7]  653 	ld	a,#0x03
   54B2 DD 96 FD      [19]  654 	sub	a, -3 (ix)
   54B5 DA 19 56      [10]  655 	jp	C,00106$
                            656 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   54B8 E5            [11]  657 	push	hl
   54B9 DD 6E F5      [19]  658 	ld	l,-11 (ix)
   54BC DD 66 F6      [19]  659 	ld	h,-10 (ix)
   54BF 23            [ 6]  660 	inc	hl
   54C0 E5            [11]  661 	push	hl
   54C1 FD E1         [14]  662 	pop	iy
   54C3 E1            [10]  663 	pop	hl
                            664 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   54C4 DD 5E F5      [19]  665 	ld	e,-11 (ix)
   54C7 DD 56 F6      [19]  666 	ld	d,-10 (ix)
   54CA 13            [ 6]  667 	inc	de
   54CB 13            [ 6]  668 	inc	de
                            669 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   54CC DD 7E F5      [19]  670 	ld	a,-11 (ix)
   54CF C6 03         [ 7]  671 	add	a, #0x03
   54D1 DD 77 F3      [19]  672 	ld	-13 (ix),a
   54D4 DD 7E F6      [19]  673 	ld	a,-10 (ix)
   54D7 CE 00         [ 7]  674 	adc	a, #0x00
   54D9 DD 77 F4      [19]  675 	ld	-12 (ix),a
                            676 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   54DC DD 7E F5      [19]  677 	ld	a,-11 (ix)
   54DF C6 04         [ 7]  678 	add	a, #0x04
   54E1 DD 77 F9      [19]  679 	ld	-7 (ix),a
   54E4 DD 7E F6      [19]  680 	ld	a,-10 (ix)
   54E7 CE 00         [ 7]  681 	adc	a, #0x00
   54E9 DD 77 FA      [19]  682 	ld	-6 (ix),a
                            683 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   54EC DD 7E F5      [19]  684 	ld	a,-11 (ix)
   54EF C6 05         [ 7]  685 	add	a, #0x05
   54F1 DD 77 F7      [19]  686 	ld	-9 (ix),a
   54F4 DD 7E F6      [19]  687 	ld	a,-10 (ix)
   54F7 CE 00         [ 7]  688 	adc	a, #0x00
   54F9 DD 77 F8      [19]  689 	ld	-8 (ix),a
                            690 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   54FC DD 7E F5      [19]  691 	ld	a,-11 (ix)
   54FF C6 06         [ 7]  692 	add	a, #0x06
   5501 DD 77 F1      [19]  693 	ld	-15 (ix),a
   5504 DD 7E F6      [19]  694 	ld	a,-10 (ix)
   5507 CE 00         [ 7]  695 	adc	a, #0x00
   5509 DD 77 F2      [19]  696 	ld	-14 (ix),a
                            697 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   550C DD 7E F5      [19]  698 	ld	a,-11 (ix)
   550F C6 07         [ 7]  699 	add	a, #0x07
   5511 DD 77 FE      [19]  700 	ld	-2 (ix),a
   5514 DD 7E F6      [19]  701 	ld	a,-10 (ix)
   5517 CE 00         [ 7]  702 	adc	a, #0x00
   5519 DD 77 FF      [19]  703 	ld	-1 (ix),a
                            704 ;src/game/world.c:117: switch(cpct_rand()%4)
   551C D5            [11]  705 	push	de
   551D DD 5E FD      [19]  706 	ld	e,-3 (ix)
   5520 16 00         [ 7]  707 	ld	d,#0x00
   5522 21 2A 55      [10]  708 	ld	hl,#00195$
   5525 19            [11]  709 	add	hl,de
   5526 19            [11]  710 	add	hl,de
   5527 19            [11]  711 	add	hl,de
   5528 D1            [10]  712 	pop	de
   5529 E9            [ 4]  713 	jp	(hl)
   552A                     714 00195$:
   552A C3 36 55      [10]  715 	jp	00102$
   552D C3 70 55      [10]  716 	jp	00103$
   5530 C3 A9 55      [10]  717 	jp	00104$
   5533 C3 E2 55      [10]  718 	jp	00105$
                            719 ;src/game/world.c:119: case 0:
   5536                     720 00102$:
                            721 ;src/game/world.c:120: p_forest[0] = 0b10000100;
   5536 DD 6E F5      [19]  722 	ld	l,-11 (ix)
   5539 DD 66 F6      [19]  723 	ld	h,-10 (ix)
   553C 36 84         [10]  724 	ld	(hl),#0x84
                            725 ;src/game/world.c:121: p_forest[1] = 0b11000111;
   553E FD 36 00 C7   [19]  726 	ld	0 (iy), #0xC7
                            727 ;src/game/world.c:122: p_forest[2] = 0b11011110;
   5542 3E DE         [ 7]  728 	ld	a,#0xDE
   5544 12            [ 7]  729 	ld	(de),a
                            730 ;src/game/world.c:123: p_forest[3] = 0b01111110;
   5545 DD 6E F3      [19]  731 	ld	l,-13 (ix)
   5548 DD 66 F4      [19]  732 	ld	h,-12 (ix)
   554B 36 7E         [10]  733 	ld	(hl),#0x7E
                            734 ;src/game/world.c:124: p_forest[4] = 0b11111110; 
   554D DD 6E F9      [19]  735 	ld	l,-7 (ix)
   5550 DD 66 FA      [19]  736 	ld	h,-6 (ix)
   5553 36 FE         [10]  737 	ld	(hl),#0xFE
                            738 ;src/game/world.c:125: p_forest[5] = 0b01111111;
   5555 DD 6E F7      [19]  739 	ld	l,-9 (ix)
   5558 DD 66 F8      [19]  740 	ld	h,-8 (ix)
   555B 36 7F         [10]  741 	ld	(hl),#0x7F
                            742 ;src/game/world.c:126: p_forest[6] = 0b11101111;
   555D DD 6E F1      [19]  743 	ld	l,-15 (ix)
   5560 DD 66 F2      [19]  744 	ld	h,-14 (ix)
   5563 36 EF         [10]  745 	ld	(hl),#0xEF
                            746 ;src/game/world.c:127: p_forest[7] = 0b11001111;
   5565 DD 6E FE      [19]  747 	ld	l,-2 (ix)
   5568 DD 66 FF      [19]  748 	ld	h,-1 (ix)
   556B 36 CF         [10]  749 	ld	(hl),#0xCF
                            750 ;src/game/world.c:128: break;
   556D C3 19 56      [10]  751 	jp	00106$
                            752 ;src/game/world.c:129: case 1:
   5570                     753 00103$:
                            754 ;src/game/world.c:130: p_forest[0] = 0b00001100;
   5570 DD 6E F5      [19]  755 	ld	l,-11 (ix)
   5573 DD 66 F6      [19]  756 	ld	h,-10 (ix)
   5576 36 0C         [10]  757 	ld	(hl),#0x0C
                            758 ;src/game/world.c:131: p_forest[1] = 0b11111000;
   5578 FD 36 00 F8   [19]  759 	ld	0 (iy), #0xF8
                            760 ;src/game/world.c:132: p_forest[2] = 0b00111111;
   557C 3E 3F         [ 7]  761 	ld	a,#0x3F
   557E 12            [ 7]  762 	ld	(de),a
                            763 ;src/game/world.c:133: p_forest[3] = 0b01111110;
   557F DD 6E F3      [19]  764 	ld	l,-13 (ix)
   5582 DD 66 F4      [19]  765 	ld	h,-12 (ix)
   5585 36 7E         [10]  766 	ld	(hl),#0x7E
                            767 ;src/game/world.c:134: p_forest[4] = 0b11111110; 
   5587 DD 6E F9      [19]  768 	ld	l,-7 (ix)
   558A DD 66 FA      [19]  769 	ld	h,-6 (ix)
   558D 36 FE         [10]  770 	ld	(hl),#0xFE
                            771 ;src/game/world.c:135: p_forest[5] = 0b01011111;
   558F DD 6E F7      [19]  772 	ld	l,-9 (ix)
   5592 DD 66 F8      [19]  773 	ld	h,-8 (ix)
   5595 36 5F         [10]  774 	ld	(hl),#0x5F
                            775 ;src/game/world.c:136: p_forest[6] = 0b11001111;
   5597 DD 6E F1      [19]  776 	ld	l,-15 (ix)
   559A DD 66 F2      [19]  777 	ld	h,-14 (ix)
   559D 36 CF         [10]  778 	ld	(hl),#0xCF
                            779 ;src/game/world.c:137: p_forest[7] = 0b10001100;
   559F DD 6E FE      [19]  780 	ld	l,-2 (ix)
   55A2 DD 66 FF      [19]  781 	ld	h,-1 (ix)
   55A5 36 8C         [10]  782 	ld	(hl),#0x8C
                            783 ;src/game/world.c:138: break;
   55A7 18 70         [12]  784 	jr	00106$
                            785 ;src/game/world.c:139: case 2:
   55A9                     786 00104$:
                            787 ;src/game/world.c:140: p_forest[0] = 0b00110000;
   55A9 DD 6E F5      [19]  788 	ld	l,-11 (ix)
   55AC DD 66 F6      [19]  789 	ld	h,-10 (ix)
   55AF 36 30         [10]  790 	ld	(hl),#0x30
                            791 ;src/game/world.c:141: p_forest[1] = 0b11110100;
   55B1 FD 36 00 F4   [19]  792 	ld	0 (iy), #0xF4
                            793 ;src/game/world.c:142: p_forest[2] = 0b11111111;
   55B5 3E FF         [ 7]  794 	ld	a,#0xFF
   55B7 12            [ 7]  795 	ld	(de),a
                            796 ;src/game/world.c:143: p_forest[3] = 0b11111111;
   55B8 DD 6E F3      [19]  797 	ld	l,-13 (ix)
   55BB DD 66 F4      [19]  798 	ld	h,-12 (ix)
   55BE 36 FF         [10]  799 	ld	(hl),#0xFF
                            800 ;src/game/world.c:144: p_forest[4] = 0b01111100;
   55C0 DD 6E F9      [19]  801 	ld	l,-7 (ix)
   55C3 DD 66 FA      [19]  802 	ld	h,-6 (ix)
   55C6 36 7C         [10]  803 	ld	(hl),#0x7C
                            804 ;src/game/world.c:145: p_forest[5] = 0b01111110;
   55C8 DD 6E F7      [19]  805 	ld	l,-9 (ix)
   55CB DD 66 F8      [19]  806 	ld	h,-8 (ix)
   55CE 36 7E         [10]  807 	ld	(hl),#0x7E
                            808 ;src/game/world.c:146: p_forest[6] = 0b00111110;
   55D0 DD 6E F1      [19]  809 	ld	l,-15 (ix)
   55D3 DD 66 F2      [19]  810 	ld	h,-14 (ix)
   55D6 36 3E         [10]  811 	ld	(hl),#0x3E
                            812 ;src/game/world.c:147: p_forest[7] = 0b00011000;
   55D8 DD 6E FE      [19]  813 	ld	l,-2 (ix)
   55DB DD 66 FF      [19]  814 	ld	h,-1 (ix)
   55DE 36 18         [10]  815 	ld	(hl),#0x18
                            816 ;src/game/world.c:148: break;
   55E0 18 37         [12]  817 	jr	00106$
                            818 ;src/game/world.c:149: case 3:
   55E2                     819 00105$:
                            820 ;src/game/world.c:150: p_forest[0] = 0b11000000; 
   55E2 DD 6E F5      [19]  821 	ld	l,-11 (ix)
   55E5 DD 66 F6      [19]  822 	ld	h,-10 (ix)
   55E8 36 C0         [10]  823 	ld	(hl),#0xC0
                            824 ;src/game/world.c:151: p_forest[1] = 0b11100111;
   55EA FD 36 00 E7   [19]  825 	ld	0 (iy), #0xE7
                            826 ;src/game/world.c:152: p_forest[2] = 0b01111110;
   55EE 3E 7E         [ 7]  827 	ld	a,#0x7E
   55F0 12            [ 7]  828 	ld	(de),a
                            829 ;src/game/world.c:153: p_forest[3] = 0b01111110;
   55F1 DD 6E F3      [19]  830 	ld	l,-13 (ix)
   55F4 DD 66 F4      [19]  831 	ld	h,-12 (ix)
   55F7 36 7E         [10]  832 	ld	(hl),#0x7E
                            833 ;src/game/world.c:154: p_forest[4] = 0b11111110;
   55F9 DD 6E F9      [19]  834 	ld	l,-7 (ix)
   55FC DD 66 FA      [19]  835 	ld	h,-6 (ix)
   55FF 36 FE         [10]  836 	ld	(hl),#0xFE
                            837 ;src/game/world.c:155: p_forest[5] = 0b11111100;
   5601 DD 6E F7      [19]  838 	ld	l,-9 (ix)
   5604 DD 66 F8      [19]  839 	ld	h,-8 (ix)
   5607 36 FC         [10]  840 	ld	(hl),#0xFC
                            841 ;src/game/world.c:156: p_forest[6] = 0b01111000;
   5609 DD 6E F1      [19]  842 	ld	l,-15 (ix)
   560C DD 66 F2      [19]  843 	ld	h,-14 (ix)
   560F 36 78         [10]  844 	ld	(hl),#0x78
                            845 ;src/game/world.c:157: p_forest[7] = 0b00110000;
   5611 DD 6E FE      [19]  846 	ld	l,-2 (ix)
   5614 DD 66 FF      [19]  847 	ld	h,-1 (ix)
   5617 36 30         [10]  848 	ld	(hl),#0x30
                            849 ;src/game/world.c:159: }
   5619                     850 00106$:
                            851 ;src/game/world.c:160: patternTile(FOREST, iy, 8, 8, p_forest);
   5619 DD 6E F5      [19]  852 	ld	l,-11 (ix)
   561C DD 66 F6      [19]  853 	ld	h,-10 (ix)
   561F C5            [11]  854 	push	bc
   5620 E5            [11]  855 	push	hl
   5621 21 08 08      [10]  856 	ld	hl,#0x0808
   5624 E5            [11]  857 	push	hl
   5625 DD 6E FB      [19]  858 	ld	l,-5 (ix)
   5628 DD 66 FC      [19]  859 	ld	h,-4 (ix)
   562B E5            [11]  860 	push	hl
   562C 3E 08         [ 7]  861 	ld	a,#0x08
   562E F5            [11]  862 	push	af
   562F 33            [ 6]  863 	inc	sp
   5630 CD 4E 53      [17]  864 	call	_patternTile
   5633 21 07 00      [10]  865 	ld	hl,#7
   5636 39            [11]  866 	add	hl,sp
   5637 F9            [ 6]  867 	ld	sp,hl
   5638 C1            [10]  868 	pop	bc
                            869 ;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
   5639 03            [ 6]  870 	inc	bc
   563A 79            [ 4]  871 	ld	a,c
   563B D6 32         [ 7]  872 	sub	a, #0x32
   563D 78            [ 4]  873 	ld	a,b
   563E 17            [ 4]  874 	rla
   563F 3F            [ 4]  875 	ccf
   5640 1F            [ 4]  876 	rra
   5641 DE 80         [ 7]  877 	sbc	a, #0x80
   5643 DA 90 54      [10]  878 	jp	C,00121$
                            879 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   5646 11 3C 00      [10]  880 	ld	de,#0x003C
   5649                     881 00125$:
                            882 ;src/game/world.c:168: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5649 D5            [11]  883 	push	de
   564A CD 1D 78      [17]  884 	call	_cpct_getRandom_mxor_u16
   564D D1            [10]  885 	pop	de
   564E D5            [11]  886 	push	de
   564F 01 00 0F      [10]  887 	ld	bc,#0x0F00
   5652 C5            [11]  888 	push	bc
   5653 E5            [11]  889 	push	hl
   5654 CD 8E 74      [17]  890 	call	__moduint
   5657 F1            [10]  891 	pop	af
   5658 F1            [10]  892 	pop	af
   5659 D1            [10]  893 	pop	de
                            894 ;src/game/world.c:169: p_world[iy] = cpct_rand()%2+5;
   565A 01 FB 7A      [10]  895 	ld	bc,#_p_world
   565D 09            [11]  896 	add	hl,bc
   565E E5            [11]  897 	push	hl
   565F D5            [11]  898 	push	de
   5660 CD 1D 79      [17]  899 	call	_cpct_getRandom_mxor_u8
   5663 7D            [ 4]  900 	ld	a,l
   5664 D1            [10]  901 	pop	de
   5665 E1            [10]  902 	pop	hl
   5666 E6 01         [ 7]  903 	and	a, #0x01
   5668 C6 05         [ 7]  904 	add	a, #0x05
   566A 77            [ 7]  905 	ld	(hl),a
   566B 1B            [ 6]  906 	dec	de
                            907 ;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
   566C 7A            [ 4]  908 	ld	a,d
   566D B3            [ 4]  909 	or	a,e
   566E 20 D9         [12]  910 	jr	NZ,00125$
                            911 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   5670 11 14 00      [10]  912 	ld	de,#0x0014
   5673                     913 00128$:
                            914 ;src/game/world.c:176: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5673 D5            [11]  915 	push	de
   5674 CD 1D 78      [17]  916 	call	_cpct_getRandom_mxor_u16
   5677 D1            [10]  917 	pop	de
   5678 D5            [11]  918 	push	de
   5679 01 00 0F      [10]  919 	ld	bc,#0x0F00
   567C C5            [11]  920 	push	bc
   567D E5            [11]  921 	push	hl
   567E CD 8E 74      [17]  922 	call	__moduint
   5681 F1            [10]  923 	pop	af
   5682 F1            [10]  924 	pop	af
   5683 D1            [10]  925 	pop	de
                            926 ;src/game/world.c:177: p_world[iy] = cpct_rand()%3+2;
   5684 3E FB         [ 7]  927 	ld	a,#<(_p_world)
   5686 85            [ 4]  928 	add	a, l
   5687 DD 77 FE      [19]  929 	ld	-2 (ix),a
   568A 3E 7A         [ 7]  930 	ld	a,#>(_p_world)
   568C 8C            [ 4]  931 	adc	a, h
   568D DD 77 FF      [19]  932 	ld	-1 (ix),a
   5690 D5            [11]  933 	push	de
   5691 CD 1D 79      [17]  934 	call	_cpct_getRandom_mxor_u8
   5694 45            [ 4]  935 	ld	b,l
   5695 D1            [10]  936 	pop	de
   5696 D5            [11]  937 	push	de
   5697 3E 03         [ 7]  938 	ld	a,#0x03
   5699 F5            [11]  939 	push	af
   569A 33            [ 6]  940 	inc	sp
   569B C5            [11]  941 	push	bc
   569C 33            [ 6]  942 	inc	sp
   569D CD 82 74      [17]  943 	call	__moduchar
   56A0 F1            [10]  944 	pop	af
   56A1 7D            [ 4]  945 	ld	a,l
   56A2 D1            [10]  946 	pop	de
   56A3 C6 02         [ 7]  947 	add	a, #0x02
   56A5 DD 6E FE      [19]  948 	ld	l,-2 (ix)
   56A8 DD 66 FF      [19]  949 	ld	h,-1 (ix)
   56AB 77            [ 7]  950 	ld	(hl),a
   56AC 1B            [ 6]  951 	dec	de
                            952 ;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
   56AD 7A            [ 4]  953 	ld	a,d
   56AE B3            [ 4]  954 	or	a,e
   56AF 20 C2         [12]  955 	jr	NZ,00128$
                            956 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   56B1 21 0A 00      [10]  957 	ld	hl,#0x000A
   56B4 39            [11]  958 	add	hl,sp
   56B5 4D            [ 4]  959 	ld	c,l
   56B6 44            [ 4]  960 	ld	b,h
   56B7 DD 36 ED 00   [19]  961 	ld	-19 (ix),#0x00
   56BB DD 36 EE 00   [19]  962 	ld	-18 (ix),#0x00
   56BF                     963 00129$:
                            964 ;src/game/world.c:182: iy = cpct_rand16()%(WIDTH*HEIGHT);
   56BF C5            [11]  965 	push	bc
   56C0 CD 1D 78      [17]  966 	call	_cpct_getRandom_mxor_u16
   56C3 11 00 0F      [10]  967 	ld	de,#0x0F00
   56C6 D5            [11]  968 	push	de
   56C7 E5            [11]  969 	push	hl
   56C8 CD 8E 74      [17]  970 	call	__moduint
   56CB F1            [10]  971 	pop	af
   56CC F1            [10]  972 	pop	af
   56CD C1            [10]  973 	pop	bc
   56CE DD 75 FE      [19]  974 	ld	-2 (ix),l
   56D1 DD 74 FF      [19]  975 	ld	-1 (ix),h
                            976 ;src/game/world.c:184: switch(cpct_rand()%6)
   56D4 C5            [11]  977 	push	bc
   56D5 CD 1D 79      [17]  978 	call	_cpct_getRandom_mxor_u8
   56D8 55            [ 4]  979 	ld	d,l
   56D9 3E 06         [ 7]  980 	ld	a,#0x06
   56DB F5            [11]  981 	push	af
   56DC 33            [ 6]  982 	inc	sp
   56DD D5            [11]  983 	push	de
   56DE 33            [ 6]  984 	inc	sp
   56DF CD 82 74      [17]  985 	call	__moduchar
   56E2 F1            [10]  986 	pop	af
   56E3 5D            [ 4]  987 	ld	e,l
   56E4 C1            [10]  988 	pop	bc
   56E5 3E 05         [ 7]  989 	ld	a,#0x05
   56E7 93            [ 4]  990 	sub	a, e
   56E8 38 6A         [12]  991 	jr	C,00116$
                            992 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   56EA 21 01 00      [10]  993 	ld	hl,#0x0001
   56ED 09            [11]  994 	add	hl,bc
   56EE DD 75 F1      [19]  995 	ld	-15 (ix),l
   56F1 DD 74 F2      [19]  996 	ld	-14 (ix),h
                            997 ;src/game/world.c:184: switch(cpct_rand()%6)
   56F4 16 00         [ 7]  998 	ld	d,#0x00
   56F6 21 FC 56      [10]  999 	ld	hl,#00196$
   56F9 19            [11] 1000 	add	hl,de
   56FA 19            [11] 1001 	add	hl,de
                           1002 ;src/game/world.c:186: case 0:
   56FB E9            [ 4] 1003 	jp	(hl)
   56FC                    1004 00196$:
   56FC 18 0A         [12] 1005 	jr	00110$
   56FE 18 15         [12] 1006 	jr	00111$
   5700 18 20         [12] 1007 	jr	00112$
   5702 18 2B         [12] 1008 	jr	00113$
   5704 18 36         [12] 1009 	jr	00114$
   5706 18 41         [12] 1010 	jr	00115$
   5708                    1011 00110$:
                           1012 ;src/game/world.c:187: p_cities[0] = 0b01110010; // 01001110;
   5708 3E 72         [ 7] 1013 	ld	a,#0x72
   570A 02            [ 7] 1014 	ld	(bc),a
                           1015 ;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
   570B DD 6E F1      [19] 1016 	ld	l,-15 (ix)
   570E DD 66 F2      [19] 1017 	ld	h,-14 (ix)
   5711 36 46         [10] 1018 	ld	(hl),#0x46
                           1019 ;src/game/world.c:189: break;
   5713 18 3F         [12] 1020 	jr	00116$
                           1021 ;src/game/world.c:191: case 1:
   5715                    1022 00111$:
                           1023 ;src/game/world.c:192: p_cities[0] = 0b01100000; // 00000110;
   5715 3E 60         [ 7] 1024 	ld	a,#0x60
   5717 02            [ 7] 1025 	ld	(bc),a
                           1026 ;src/game/world.c:193: p_cities[1] = 0b00000110; // 01100000;
   5718 DD 6E F1      [19] 1027 	ld	l,-15 (ix)
   571B DD 66 F2      [19] 1028 	ld	h,-14 (ix)
   571E 36 06         [10] 1029 	ld	(hl),#0x06
                           1030 ;src/game/world.c:194: break;
   5720 18 32         [12] 1031 	jr	00116$
                           1032 ;src/game/world.c:196: case 2:
   5722                    1033 00112$:
                           1034 ;src/game/world.c:197: p_cities[0] = 0b00010000; // 00001000;
   5722 3E 10         [ 7] 1035 	ld	a,#0x10
   5724 02            [ 7] 1036 	ld	(bc),a
                           1037 ;src/game/world.c:198: p_cities[1] = 0b00000110; // 01100000;
   5725 DD 6E F1      [19] 1038 	ld	l,-15 (ix)
   5728 DD 66 F2      [19] 1039 	ld	h,-14 (ix)
   572B 36 06         [10] 1040 	ld	(hl),#0x06
                           1041 ;src/game/world.c:199: break;
   572D 18 25         [12] 1042 	jr	00116$
                           1043 ;src/game/world.c:201: case 3:
   572F                    1044 00113$:
                           1045 ;src/game/world.c:202: p_cities[0] = 0b11000000; // 00000011;
   572F 3E C0         [ 7] 1046 	ld	a,#0xC0
   5731 02            [ 7] 1047 	ld	(bc),a
                           1048 ;src/game/world.c:203: p_cities[1] = 0b00110001; // 10001100;
   5732 DD 6E F1      [19] 1049 	ld	l,-15 (ix)
   5735 DD 66 F2      [19] 1050 	ld	h,-14 (ix)
   5738 36 31         [10] 1051 	ld	(hl),#0x31
                           1052 ;src/game/world.c:204: break;
   573A 18 18         [12] 1053 	jr	00116$
                           1054 ;src/game/world.c:206: case 4:
   573C                    1055 00114$:
                           1056 ;src/game/world.c:207: p_cities[0] = 0b11000100; // 00100011;
   573C 3E C4         [ 7] 1057 	ld	a,#0xC4
   573E 02            [ 7] 1058 	ld	(bc),a
                           1059 ;src/game/world.c:208: p_cities[1] = 0b00001110; // 01110000;
   573F DD 6E F1      [19] 1060 	ld	l,-15 (ix)
   5742 DD 66 F2      [19] 1061 	ld	h,-14 (ix)
   5745 36 0E         [10] 1062 	ld	(hl),#0x0E
                           1063 ;src/game/world.c:209: break;
   5747 18 0B         [12] 1064 	jr	00116$
                           1065 ;src/game/world.c:211: case 5:
   5749                    1066 00115$:
                           1067 ;src/game/world.c:212: p_cities[0] = 0b01000000; // 00000010;
   5749 3E 40         [ 7] 1068 	ld	a,#0x40
   574B 02            [ 7] 1069 	ld	(bc),a
                           1070 ;src/game/world.c:213: p_cities[1] = 0b01001110; // 01110010;
   574C DD 6E F1      [19] 1071 	ld	l,-15 (ix)
   574F DD 66 F2      [19] 1072 	ld	h,-14 (ix)
   5752 36 4E         [10] 1073 	ld	(hl),#0x4E
                           1074 ;src/game/world.c:215: }
   5754                    1075 00116$:
                           1076 ;src/game/world.c:217: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   5754 69            [ 4] 1077 	ld	l, c
   5755 60            [ 4] 1078 	ld	h, b
   5756 C5            [11] 1079 	push	bc
   5757 E5            [11] 1080 	push	hl
   5758 21 04 04      [10] 1081 	ld	hl,#0x0404
   575B E5            [11] 1082 	push	hl
   575C DD 6E FE      [19] 1083 	ld	l,-2 (ix)
   575F DD 66 FF      [19] 1084 	ld	h,-1 (ix)
   5762 E5            [11] 1085 	push	hl
   5763 3E 02         [ 7] 1086 	ld	a,#0x02
   5765 F5            [11] 1087 	push	af
   5766 33            [ 6] 1088 	inc	sp
   5767 CD 4E 53      [17] 1089 	call	_patternTile
   576A 21 07 00      [10] 1090 	ld	hl,#7
   576D 39            [11] 1091 	add	hl,sp
   576E F9            [ 6] 1092 	ld	sp,hl
   576F C1            [10] 1093 	pop	bc
                           1094 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   5770 DD 34 ED      [23] 1095 	inc	-19 (ix)
   5773 20 03         [12] 1096 	jr	NZ,00197$
   5775 DD 34 EE      [23] 1097 	inc	-18 (ix)
   5778                    1098 00197$:
   5778 DD 7E ED      [19] 1099 	ld	a,-19 (ix)
   577B D6 14         [ 7] 1100 	sub	a, #0x14
   577D DD 7E EE      [19] 1101 	ld	a,-18 (ix)
   5780 17            [ 4] 1102 	rla
   5781 3F            [ 4] 1103 	ccf
   5782 1F            [ 4] 1104 	rra
   5783 DE 80         [ 7] 1105 	sbc	a, #0x80
   5785 DA BF 56      [10] 1106 	jp	C,00129$
                           1107 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   5788 11 13 00      [10] 1108 	ld	de,#0x0013
   578B                    1109 00133$:
                           1110 ;src/game/world.c:224: iy = cpct_rand16()%(WIDTH*HEIGHT);
   578B D5            [11] 1111 	push	de
   578C CD 1D 78      [17] 1112 	call	_cpct_getRandom_mxor_u16
   578F D1            [10] 1113 	pop	de
   5790 D5            [11] 1114 	push	de
   5791 01 00 0F      [10] 1115 	ld	bc,#0x0F00
   5794 C5            [11] 1116 	push	bc
   5795 E5            [11] 1117 	push	hl
   5796 CD 8E 74      [17] 1118 	call	__moduint
   5799 F1            [10] 1119 	pop	af
   579A F1            [10] 1120 	pop	af
   579B D1            [10] 1121 	pop	de
                           1122 ;src/game/world.c:225: p_world[iy] = LIVESTOCK;
   579C 01 FB 7A      [10] 1123 	ld	bc,#_p_world
   579F 09            [11] 1124 	add	hl,bc
   57A0 36 09         [10] 1125 	ld	(hl),#0x09
   57A2 1B            [ 6] 1126 	dec	de
                           1127 ;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
   57A3 7A            [ 4] 1128 	ld	a,d
   57A4 B3            [ 4] 1129 	or	a,e
   57A5 20 E4         [12] 1130 	jr	NZ,00133$
   57A7 DD F9         [10] 1131 	ld	sp, ix
   57A9 DD E1         [14] 1132 	pop	ix
   57AB C9            [10] 1133 	ret
                           1134 ;src/game/world.c:229: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1135 ;	---------------------------------
                           1136 ; Function drawTile
                           1137 ; ---------------------------------
   57AC                    1138 _drawTile::
   57AC DD E5         [15] 1139 	push	ix
   57AE DD 21 00 00   [14] 1140 	ld	ix,#0
   57B2 DD 39         [15] 1141 	add	ix,sp
                           1142 ;src/game/world.c:232: int adress = (y_+iy)*WIDTH+x_+ix;
   57B4 DD 6E 05      [19] 1143 	ld	l,5 (ix)
   57B7 26 00         [ 7] 1144 	ld	h,#0x00
   57B9 DD 5E 07      [19] 1145 	ld	e,7 (ix)
   57BC 16 00         [ 7] 1146 	ld	d,#0x00
   57BE 19            [11] 1147 	add	hl,de
   57BF 4D            [ 4] 1148 	ld	c, l
   57C0 44            [ 4] 1149 	ld	b, h
   57C1 29            [11] 1150 	add	hl, hl
   57C2 29            [11] 1151 	add	hl, hl
   57C3 09            [11] 1152 	add	hl, bc
   57C4 29            [11] 1153 	add	hl, hl
   57C5 29            [11] 1154 	add	hl, hl
   57C6 29            [11] 1155 	add	hl, hl
   57C7 29            [11] 1156 	add	hl, hl
   57C8 DD 5E 04      [19] 1157 	ld	e,4 (ix)
   57CB 16 00         [ 7] 1158 	ld	d,#0x00
   57CD 19            [11] 1159 	add	hl,de
   57CE DD 5E 06      [19] 1160 	ld	e,6 (ix)
   57D1 16 00         [ 7] 1161 	ld	d,#0x00
   57D3 19            [11] 1162 	add	hl,de
   57D4 5D            [ 4] 1163 	ld	e, l
   57D5 54            [ 4] 1164 	ld	d, h
                           1165 ;src/game/world.c:234: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   57D6 DD 7E 07      [19] 1166 	ld	a,7 (ix)
   57D9 07            [ 4] 1167 	rlca
   57DA 07            [ 4] 1168 	rlca
   57DB 07            [ 4] 1169 	rlca
   57DC 07            [ 4] 1170 	rlca
   57DD E6 F0         [ 7] 1171 	and	a,#0xF0
   57DF 67            [ 4] 1172 	ld	h,a
   57E0 DD 7E 06      [19] 1173 	ld	a,6 (ix)
   57E3 87            [ 4] 1174 	add	a, a
   57E4 87            [ 4] 1175 	add	a, a
   57E5 D5            [11] 1176 	push	de
   57E6 E5            [11] 1177 	push	hl
   57E7 33            [ 6] 1178 	inc	sp
   57E8 F5            [11] 1179 	push	af
   57E9 33            [ 6] 1180 	inc	sp
   57EA 21 00 C0      [10] 1181 	ld	hl,#0xC000
   57ED E5            [11] 1182 	push	hl
   57EE CD 0B 7A      [17] 1183 	call	_cpct_getScreenPtr
   57F1 D1            [10] 1184 	pop	de
   57F2 4D            [ 4] 1185 	ld	c, l
   57F3 44            [ 4] 1186 	ld	b, h
                           1187 ;src/game/world.c:236: switch(p_world[adress])
   57F4 21 FB 7A      [10] 1188 	ld	hl,#_p_world
   57F7 19            [11] 1189 	add	hl,de
   57F8 5E            [ 7] 1190 	ld	e,(hl)
   57F9 3E 19         [ 7] 1191 	ld	a,#0x19
   57FB 93            [ 4] 1192 	sub	a, e
   57FC DA D1 59      [10] 1193 	jp	C,00128$
   57FF 16 00         [ 7] 1194 	ld	d,#0x00
   5801 21 08 58      [10] 1195 	ld	hl,#00134$
   5804 19            [11] 1196 	add	hl,de
   5805 19            [11] 1197 	add	hl,de
   5806 19            [11] 1198 	add	hl,de
   5807 E9            [ 4] 1199 	jp	(hl)
   5808                    1200 00134$:
   5808 C3 56 58      [10] 1201 	jp	00101$
   580B C3 65 58      [10] 1202 	jp	00102$
   580E C3 74 58      [10] 1203 	jp	00103$
   5811 C3 83 58      [10] 1204 	jp	00104$
   5814 C3 92 58      [10] 1205 	jp	00105$
   5817 C3 A1 58      [10] 1206 	jp	00106$
   581A C3 B0 58      [10] 1207 	jp	00107$
   581D C3 BF 58      [10] 1208 	jp	00108$
   5820 C3 CE 58      [10] 1209 	jp	00109$
   5823 C3 DD 58      [10] 1210 	jp	00110$
   5826 C3 EC 58      [10] 1211 	jp	00111$
   5829 C3 FB 58      [10] 1212 	jp	00112$
   582C C3 0A 59      [10] 1213 	jp	00113$
   582F C3 19 59      [10] 1214 	jp	00114$
   5832 C3 28 59      [10] 1215 	jp	00115$
   5835 C3 37 59      [10] 1216 	jp	00116$
   5838 C3 46 59      [10] 1217 	jp	00117$
   583B C3 55 59      [10] 1218 	jp	00118$
   583E C3 63 59      [10] 1219 	jp	00119$
   5841 C3 71 59      [10] 1220 	jp	00120$
   5844 C3 7F 59      [10] 1221 	jp	00121$
   5847 C3 8D 59      [10] 1222 	jp	00122$
   584A C3 9B 59      [10] 1223 	jp	00123$
   584D C3 A9 59      [10] 1224 	jp	00124$
   5850 C3 B7 59      [10] 1225 	jp	00125$
   5853 C3 C5 59      [10] 1226 	jp	00126$
                           1227 ;src/game/world.c:238: case GRASS1:
   5856                    1228 00101$:
                           1229 ;src/game/world.c:239: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   5856 11 84 61      [10] 1230 	ld	de,#_grass1
   5859 21 04 10      [10] 1231 	ld	hl,#0x1004
   585C E5            [11] 1232 	push	hl
   585D C5            [11] 1233 	push	bc
   585E D5            [11] 1234 	push	de
   585F CD DD 73      [17] 1235 	call	_cpct_drawSprite
                           1236 ;src/game/world.c:240: break;
   5862 C3 D1 59      [10] 1237 	jp	00128$
                           1238 ;src/game/world.c:241: case GRASS2:
   5865                    1239 00102$:
                           1240 ;src/game/world.c:242: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   5865 11 C4 61      [10] 1241 	ld	de,#_grass2
   5868 21 04 10      [10] 1242 	ld	hl,#0x1004
   586B E5            [11] 1243 	push	hl
   586C C5            [11] 1244 	push	bc
   586D D5            [11] 1245 	push	de
   586E CD DD 73      [17] 1246 	call	_cpct_drawSprite
                           1247 ;src/game/world.c:243: break;
   5871 C3 D1 59      [10] 1248 	jp	00128$
                           1249 ;src/game/world.c:244: case DWELLINGS1:
   5874                    1250 00103$:
                           1251 ;src/game/world.c:245: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   5874 11 44 62      [10] 1252 	ld	de,#_dwellings1
   5877 21 04 10      [10] 1253 	ld	hl,#0x1004
   587A E5            [11] 1254 	push	hl
   587B C5            [11] 1255 	push	bc
   587C D5            [11] 1256 	push	de
   587D CD DD 73      [17] 1257 	call	_cpct_drawSprite
                           1258 ;src/game/world.c:246: break;
   5880 C3 D1 59      [10] 1259 	jp	00128$
                           1260 ;src/game/world.c:247: case DWELLINGS2:
   5883                    1261 00104$:
                           1262 ;src/game/world.c:248: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   5883 11 84 62      [10] 1263 	ld	de,#_dwellings2
   5886 21 04 10      [10] 1264 	ld	hl,#0x1004
   5889 E5            [11] 1265 	push	hl
   588A C5            [11] 1266 	push	bc
   588B D5            [11] 1267 	push	de
   588C CD DD 73      [17] 1268 	call	_cpct_drawSprite
                           1269 ;src/game/world.c:249: break;
   588F C3 D1 59      [10] 1270 	jp	00128$
                           1271 ;src/game/world.c:250: case DWELLINGS3:
   5892                    1272 00105$:
                           1273 ;src/game/world.c:251: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   5892 11 C4 62      [10] 1274 	ld	de,#_dwellings3
   5895 21 04 10      [10] 1275 	ld	hl,#0x1004
   5898 E5            [11] 1276 	push	hl
   5899 C5            [11] 1277 	push	bc
   589A D5            [11] 1278 	push	de
   589B CD DD 73      [17] 1279 	call	_cpct_drawSprite
                           1280 ;src/game/world.c:252: break;
   589E C3 D1 59      [10] 1281 	jp	00128$
                           1282 ;src/game/world.c:253: case FARM1:
   58A1                    1283 00106$:
                           1284 ;src/game/world.c:254: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   58A1 11 44 63      [10] 1285 	ld	de,#_farm1
   58A4 21 04 10      [10] 1286 	ld	hl,#0x1004
   58A7 E5            [11] 1287 	push	hl
   58A8 C5            [11] 1288 	push	bc
   58A9 D5            [11] 1289 	push	de
   58AA CD DD 73      [17] 1290 	call	_cpct_drawSprite
                           1291 ;src/game/world.c:255: break;
   58AD C3 D1 59      [10] 1292 	jp	00128$
                           1293 ;src/game/world.c:256: case FARM2:
   58B0                    1294 00107$:
                           1295 ;src/game/world.c:257: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   58B0 11 84 63      [10] 1296 	ld	de,#_farm2
   58B3 21 04 10      [10] 1297 	ld	hl,#0x1004
   58B6 E5            [11] 1298 	push	hl
   58B7 C5            [11] 1299 	push	bc
   58B8 D5            [11] 1300 	push	de
   58B9 CD DD 73      [17] 1301 	call	_cpct_drawSprite
                           1302 ;src/game/world.c:258: break;
   58BC C3 D1 59      [10] 1303 	jp	00128$
                           1304 ;src/game/world.c:259: case WATER:
   58BF                    1305 00108$:
                           1306 ;src/game/world.c:260: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   58BF 11 04 63      [10] 1307 	ld	de,#_water
   58C2 21 04 10      [10] 1308 	ld	hl,#0x1004
   58C5 E5            [11] 1309 	push	hl
   58C6 C5            [11] 1310 	push	bc
   58C7 D5            [11] 1311 	push	de
   58C8 CD DD 73      [17] 1312 	call	_cpct_drawSprite
                           1313 ;src/game/world.c:261: break;
   58CB C3 D1 59      [10] 1314 	jp	00128$
                           1315 ;src/game/world.c:262: case FOREST:
   58CE                    1316 00109$:
                           1317 ;src/game/world.c:263: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   58CE 11 04 62      [10] 1318 	ld	de,#_forest
   58D1 21 04 10      [10] 1319 	ld	hl,#0x1004
   58D4 E5            [11] 1320 	push	hl
   58D5 C5            [11] 1321 	push	bc
   58D6 D5            [11] 1322 	push	de
   58D7 CD DD 73      [17] 1323 	call	_cpct_drawSprite
                           1324 ;src/game/world.c:264: break;
   58DA C3 D1 59      [10] 1325 	jp	00128$
                           1326 ;src/game/world.c:265: case LIVESTOCK:
   58DD                    1327 00110$:
                           1328 ;src/game/world.c:266: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   58DD 11 C4 63      [10] 1329 	ld	de,#_livestock
   58E0 21 04 10      [10] 1330 	ld	hl,#0x1004
   58E3 E5            [11] 1331 	push	hl
   58E4 C5            [11] 1332 	push	bc
   58E5 D5            [11] 1333 	push	de
   58E6 CD DD 73      [17] 1334 	call	_cpct_drawSprite
                           1335 ;src/game/world.c:267: break;
   58E9 C3 D1 59      [10] 1336 	jp	00128$
                           1337 ;src/game/world.c:268: case SSNS:
   58EC                    1338 00111$:
                           1339 ;src/game/world.c:269: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   58EC 11 04 64      [10] 1340 	ld	de,#_station_small_ns
   58EF 21 04 10      [10] 1341 	ld	hl,#0x1004
   58F2 E5            [11] 1342 	push	hl
   58F3 C5            [11] 1343 	push	bc
   58F4 D5            [11] 1344 	push	de
   58F5 CD DD 73      [17] 1345 	call	_cpct_drawSprite
                           1346 ;src/game/world.c:270: break;
   58F8 C3 D1 59      [10] 1347 	jp	00128$
                           1348 ;src/game/world.c:271: case SSEW:
   58FB                    1349 00112$:
                           1350 ;src/game/world.c:272: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   58FB 11 44 64      [10] 1351 	ld	de,#_station_small_ew
   58FE 21 04 10      [10] 1352 	ld	hl,#0x1004
   5901 E5            [11] 1353 	push	hl
   5902 C5            [11] 1354 	push	bc
   5903 D5            [11] 1355 	push	de
   5904 CD DD 73      [17] 1356 	call	_cpct_drawSprite
                           1357 ;src/game/world.c:273: break;
   5907 C3 D1 59      [10] 1358 	jp	00128$
                           1359 ;src/game/world.c:274: case SMNS:
   590A                    1360 00113$:
                           1361 ;src/game/world.c:275: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   590A 11 84 64      [10] 1362 	ld	de,#_station_medium_ns
   590D 21 04 10      [10] 1363 	ld	hl,#0x1004
   5910 E5            [11] 1364 	push	hl
   5911 C5            [11] 1365 	push	bc
   5912 D5            [11] 1366 	push	de
   5913 CD DD 73      [17] 1367 	call	_cpct_drawSprite
                           1368 ;src/game/world.c:276: break;
   5916 C3 D1 59      [10] 1369 	jp	00128$
                           1370 ;src/game/world.c:277: case SMEW:
   5919                    1371 00114$:
                           1372 ;src/game/world.c:278: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   5919 11 C4 64      [10] 1373 	ld	de,#_station_medium_ew
   591C 21 04 10      [10] 1374 	ld	hl,#0x1004
   591F E5            [11] 1375 	push	hl
   5920 C5            [11] 1376 	push	bc
   5921 D5            [11] 1377 	push	de
   5922 CD DD 73      [17] 1378 	call	_cpct_drawSprite
                           1379 ;src/game/world.c:279: break;
   5925 C3 D1 59      [10] 1380 	jp	00128$
                           1381 ;src/game/world.c:280: case SLNS:
   5928                    1382 00115$:
                           1383 ;src/game/world.c:281: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   5928 11 04 65      [10] 1384 	ld	de,#_station_large_ns
   592B 21 04 10      [10] 1385 	ld	hl,#0x1004
   592E E5            [11] 1386 	push	hl
   592F C5            [11] 1387 	push	bc
   5930 D5            [11] 1388 	push	de
   5931 CD DD 73      [17] 1389 	call	_cpct_drawSprite
                           1390 ;src/game/world.c:282: break;
   5934 C3 D1 59      [10] 1391 	jp	00128$
                           1392 ;src/game/world.c:283: case SLEW:
   5937                    1393 00116$:
                           1394 ;src/game/world.c:284: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   5937 11 44 65      [10] 1395 	ld	de,#_station_large_ew
   593A 21 04 10      [10] 1396 	ld	hl,#0x1004
   593D E5            [11] 1397 	push	hl
   593E C5            [11] 1398 	push	bc
   593F D5            [11] 1399 	push	de
   5940 CD DD 73      [17] 1400 	call	_cpct_drawSprite
                           1401 ;src/game/world.c:285: break;
   5943 C3 D1 59      [10] 1402 	jp	00128$
                           1403 ;src/game/world.c:286: case REW:
   5946                    1404 00117$:
                           1405 ;src/game/world.c:287: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   5946 11 84 65      [10] 1406 	ld	de,#_rail_ew
   5949 21 04 10      [10] 1407 	ld	hl,#0x1004
   594C E5            [11] 1408 	push	hl
   594D C5            [11] 1409 	push	bc
   594E D5            [11] 1410 	push	de
   594F CD DD 73      [17] 1411 	call	_cpct_drawSprite
                           1412 ;src/game/world.c:288: break;
   5952 C3 D1 59      [10] 1413 	jp	00128$
                           1414 ;src/game/world.c:289: case RNS:
   5955                    1415 00118$:
                           1416 ;src/game/world.c:290: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5955 11 C4 65      [10] 1417 	ld	de,#_rail_ns
   5958 21 04 10      [10] 1418 	ld	hl,#0x1004
   595B E5            [11] 1419 	push	hl
   595C C5            [11] 1420 	push	bc
   595D D5            [11] 1421 	push	de
   595E CD DD 73      [17] 1422 	call	_cpct_drawSprite
                           1423 ;src/game/world.c:291: break;
   5961 18 6E         [12] 1424 	jr	00128$
                           1425 ;src/game/world.c:292: case REN:
   5963                    1426 00119$:
                           1427 ;src/game/world.c:293: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   5963 11 04 66      [10] 1428 	ld	de,#_rail_en
   5966 21 04 10      [10] 1429 	ld	hl,#0x1004
   5969 E5            [11] 1430 	push	hl
   596A C5            [11] 1431 	push	bc
   596B D5            [11] 1432 	push	de
   596C CD DD 73      [17] 1433 	call	_cpct_drawSprite
                           1434 ;src/game/world.c:294: break;
   596F 18 60         [12] 1435 	jr	00128$
                           1436 ;src/game/world.c:295: case RES:
   5971                    1437 00120$:
                           1438 ;src/game/world.c:296: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   5971 11 44 66      [10] 1439 	ld	de,#_rail_es
   5974 21 04 10      [10] 1440 	ld	hl,#0x1004
   5977 E5            [11] 1441 	push	hl
   5978 C5            [11] 1442 	push	bc
   5979 D5            [11] 1443 	push	de
   597A CD DD 73      [17] 1444 	call	_cpct_drawSprite
                           1445 ;src/game/world.c:297: break;
   597D 18 52         [12] 1446 	jr	00128$
                           1447 ;src/game/world.c:298: case RWN:
   597F                    1448 00121$:
                           1449 ;src/game/world.c:299: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   597F 11 84 66      [10] 1450 	ld	de,#_rail_wn
   5982 21 04 10      [10] 1451 	ld	hl,#0x1004
   5985 E5            [11] 1452 	push	hl
   5986 C5            [11] 1453 	push	bc
   5987 D5            [11] 1454 	push	de
   5988 CD DD 73      [17] 1455 	call	_cpct_drawSprite
                           1456 ;src/game/world.c:300: break;
   598B 18 44         [12] 1457 	jr	00128$
                           1458 ;src/game/world.c:301: case RWS:
   598D                    1459 00122$:
                           1460 ;src/game/world.c:302: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   598D 11 C4 66      [10] 1461 	ld	de,#_rail_ws
   5990 21 04 10      [10] 1462 	ld	hl,#0x1004
   5993 E5            [11] 1463 	push	hl
   5994 C5            [11] 1464 	push	bc
   5995 D5            [11] 1465 	push	de
   5996 CD DD 73      [17] 1466 	call	_cpct_drawSprite
                           1467 ;src/game/world.c:303: break;
   5999 18 36         [12] 1468 	jr	00128$
                           1469 ;src/game/world.c:304: case REWN:
   599B                    1470 00123$:
                           1471 ;src/game/world.c:305: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   599B 11 04 67      [10] 1472 	ld	de,#_rail_ew_n
   599E 21 04 10      [10] 1473 	ld	hl,#0x1004
   59A1 E5            [11] 1474 	push	hl
   59A2 C5            [11] 1475 	push	bc
   59A3 D5            [11] 1476 	push	de
   59A4 CD DD 73      [17] 1477 	call	_cpct_drawSprite
                           1478 ;src/game/world.c:306: break;
   59A7 18 28         [12] 1479 	jr	00128$
                           1480 ;src/game/world.c:307: case REWS:
   59A9                    1481 00124$:
                           1482 ;src/game/world.c:308: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   59A9 11 44 67      [10] 1483 	ld	de,#_rail_ew_s
   59AC 21 04 10      [10] 1484 	ld	hl,#0x1004
   59AF E5            [11] 1485 	push	hl
   59B0 C5            [11] 1486 	push	bc
   59B1 D5            [11] 1487 	push	de
   59B2 CD DD 73      [17] 1488 	call	_cpct_drawSprite
                           1489 ;src/game/world.c:309: break;
   59B5 18 1A         [12] 1490 	jr	00128$
                           1491 ;src/game/world.c:310: case RNSE:
   59B7                    1492 00125$:
                           1493 ;src/game/world.c:311: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   59B7 11 C4 67      [10] 1494 	ld	de,#_rail_ns_e
   59BA 21 04 10      [10] 1495 	ld	hl,#0x1004
   59BD E5            [11] 1496 	push	hl
   59BE C5            [11] 1497 	push	bc
   59BF D5            [11] 1498 	push	de
   59C0 CD DD 73      [17] 1499 	call	_cpct_drawSprite
                           1500 ;src/game/world.c:312: break;
   59C3 18 0C         [12] 1501 	jr	00128$
                           1502 ;src/game/world.c:313: case RNSW:
   59C5                    1503 00126$:
                           1504 ;src/game/world.c:314: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   59C5 11 84 67      [10] 1505 	ld	de,#_rail_ns_w
   59C8 21 04 10      [10] 1506 	ld	hl,#0x1004
   59CB E5            [11] 1507 	push	hl
   59CC C5            [11] 1508 	push	bc
   59CD D5            [11] 1509 	push	de
   59CE CD DD 73      [17] 1510 	call	_cpct_drawSprite
                           1511 ;src/game/world.c:316: }
   59D1                    1512 00128$:
   59D1 DD E1         [14] 1513 	pop	ix
   59D3 C9            [10] 1514 	ret
                           1515 ;src/game/world.c:319: void drawScrolls(u8 x_, u8 y_)
                           1516 ;	---------------------------------
                           1517 ; Function drawScrolls
                           1518 ; ---------------------------------
   59D4                    1519 _drawScrolls::
   59D4 DD E5         [15] 1520 	push	ix
   59D6 DD 21 00 00   [14] 1521 	ld	ix,#0
   59DA DD 39         [15] 1522 	add	ix,sp
   59DC 3B            [ 6] 1523 	dec	sp
                           1524 ;src/game/world.c:325: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   59DD DD 4E 04      [19] 1525 	ld	c,4 (ix)
   59E0 06 00         [ 7] 1526 	ld	b,#0x00
   59E2 69            [ 4] 1527 	ld	l, c
   59E3 60            [ 4] 1528 	ld	h, b
   59E4 29            [11] 1529 	add	hl, hl
   59E5 29            [11] 1530 	add	hl, hl
   59E6 29            [11] 1531 	add	hl, hl
   59E7 09            [11] 1532 	add	hl, bc
   59E8 29            [11] 1533 	add	hl, hl
   59E9 09            [11] 1534 	add	hl, bc
   59EA 29            [11] 1535 	add	hl, hl
   59EB 29            [11] 1536 	add	hl, hl
   59EC 01 3C 00      [10] 1537 	ld	bc,#0x003C
   59EF C5            [11] 1538 	push	bc
   59F0 E5            [11] 1539 	push	hl
   59F1 CD 5C 7A      [17] 1540 	call	__divsint
   59F4 F1            [10] 1541 	pop	af
   59F5 F1            [10] 1542 	pop	af
   59F6 55            [ 4] 1543 	ld	d,l
                           1544 ;src/game/world.c:326: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   59F7 DD 4E 05      [19] 1545 	ld	c,5 (ix)
   59FA 06 00         [ 7] 1546 	ld	b,#0x00
   59FC 69            [ 4] 1547 	ld	l, c
   59FD 60            [ 4] 1548 	ld	h, b
   59FE 29            [11] 1549 	add	hl, hl
   59FF 29            [11] 1550 	add	hl, hl
   5A00 09            [11] 1551 	add	hl, bc
   5A01 29            [11] 1552 	add	hl, hl
   5A02 09            [11] 1553 	add	hl, bc
   5A03 29            [11] 1554 	add	hl, hl
   5A04 29            [11] 1555 	add	hl, hl
   5A05 29            [11] 1556 	add	hl, hl
   5A06 29            [11] 1557 	add	hl, hl
   5A07 D5            [11] 1558 	push	de
   5A08 01 24 00      [10] 1559 	ld	bc,#0x0024
   5A0B C5            [11] 1560 	push	bc
   5A0C E5            [11] 1561 	push	hl
   5A0D CD 5C 7A      [17] 1562 	call	__divsint
   5A10 F1            [10] 1563 	pop	af
   5A11 F1            [10] 1564 	pop	af
   5A12 D1            [10] 1565 	pop	de
   5A13 DD 75 FF      [19] 1566 	ld	-1 (ix),l
                           1567 ;src/game/world.c:328: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   5A16 AF            [ 4] 1568 	xor	a, a
   5A17 F5            [11] 1569 	push	af
   5A18 33            [ 6] 1570 	inc	sp
   5A19 D5            [11] 1571 	push	de
   5A1A 33            [ 6] 1572 	inc	sp
   5A1B 21 00 C0      [10] 1573 	ld	hl,#0xC000
   5A1E E5            [11] 1574 	push	hl
   5A1F CD 0B 7A      [17] 1575 	call	_cpct_getScreenPtr
                           1576 ;src/game/world.c:329: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   5A22 E5            [11] 1577 	push	hl
   5A23 21 00 00      [10] 1578 	ld	hl,#0x0000
   5A26 E5            [11] 1579 	push	hl
   5A27 2E 00         [ 7] 1580 	ld	l, #0x00
   5A29 E5            [11] 1581 	push	hl
   5A2A CD E5 78      [17] 1582 	call	_cpct_px2byteM1
   5A2D F1            [10] 1583 	pop	af
   5A2E F1            [10] 1584 	pop	af
   5A2F 45            [ 4] 1585 	ld	b,l
   5A30 D1            [10] 1586 	pop	de
   5A31 21 04 04      [10] 1587 	ld	hl,#0x0404
   5A34 E5            [11] 1588 	push	hl
   5A35 C5            [11] 1589 	push	bc
   5A36 33            [ 6] 1590 	inc	sp
   5A37 D5            [11] 1591 	push	de
   5A38 CD 52 79      [17] 1592 	call	_cpct_drawSolidBox
   5A3B F1            [10] 1593 	pop	af
   5A3C F1            [10] 1594 	pop	af
   5A3D 33            [ 6] 1595 	inc	sp
                           1596 ;src/game/world.c:331: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   5A3E DD 7E FF      [19] 1597 	ld	a,-1 (ix)
   5A41 F5            [11] 1598 	push	af
   5A42 33            [ 6] 1599 	inc	sp
   5A43 AF            [ 4] 1600 	xor	a, a
   5A44 F5            [11] 1601 	push	af
   5A45 33            [ 6] 1602 	inc	sp
   5A46 21 00 C0      [10] 1603 	ld	hl,#0xC000
   5A49 E5            [11] 1604 	push	hl
   5A4A CD 0B 7A      [17] 1605 	call	_cpct_getScreenPtr
                           1606 ;src/game/world.c:332: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   5A4D E5            [11] 1607 	push	hl
   5A4E 21 00 00      [10] 1608 	ld	hl,#0x0000
   5A51 E5            [11] 1609 	push	hl
   5A52 2E 00         [ 7] 1610 	ld	l, #0x00
   5A54 E5            [11] 1611 	push	hl
   5A55 CD E5 78      [17] 1612 	call	_cpct_px2byteM1
   5A58 F1            [10] 1613 	pop	af
   5A59 F1            [10] 1614 	pop	af
   5A5A 45            [ 4] 1615 	ld	b,l
   5A5B D1            [10] 1616 	pop	de
   5A5C 21 01 10      [10] 1617 	ld	hl,#0x1001
   5A5F E5            [11] 1618 	push	hl
   5A60 C5            [11] 1619 	push	bc
   5A61 33            [ 6] 1620 	inc	sp
   5A62 D5            [11] 1621 	push	de
   5A63 CD 52 79      [17] 1622 	call	_cpct_drawSolidBox
   5A66 F1            [10] 1623 	pop	af
   5A67 F1            [10] 1624 	pop	af
   5A68 33            [ 6] 1625 	inc	sp
   5A69 33            [ 6] 1626 	inc	sp
   5A6A DD E1         [14] 1627 	pop	ix
   5A6C C9            [10] 1628 	ret
                           1629 ;src/game/world.c:335: void drawWorld(u8 x_, u8 y_)
                           1630 ;	---------------------------------
                           1631 ; Function drawWorld
                           1632 ; ---------------------------------
   5A6D                    1633 _drawWorld::
                           1634 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   5A6D 16 00         [ 7] 1635 	ld	d,#0x00
                           1636 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   5A6F                    1637 00109$:
   5A6F 1E 00         [ 7] 1638 	ld	e,#0x00
   5A71                    1639 00103$:
                           1640 ;src/game/world.c:344: drawTile(x_, y_, ix, iy);
   5A71 D5            [11] 1641 	push	de
   5A72 D5            [11] 1642 	push	de
   5A73 21 07 00      [10] 1643 	ld	hl, #7+0
   5A76 39            [11] 1644 	add	hl, sp
   5A77 7E            [ 7] 1645 	ld	a, (hl)
   5A78 F5            [11] 1646 	push	af
   5A79 33            [ 6] 1647 	inc	sp
   5A7A 21 07 00      [10] 1648 	ld	hl, #7+0
   5A7D 39            [11] 1649 	add	hl, sp
   5A7E 7E            [ 7] 1650 	ld	a, (hl)
   5A7F F5            [11] 1651 	push	af
   5A80 33            [ 6] 1652 	inc	sp
   5A81 CD AC 57      [17] 1653 	call	_drawTile
   5A84 F1            [10] 1654 	pop	af
   5A85 F1            [10] 1655 	pop	af
   5A86 D1            [10] 1656 	pop	de
                           1657 ;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
   5A87 1C            [ 4] 1658 	inc	e
   5A88 7B            [ 4] 1659 	ld	a,e
   5A89 D6 14         [ 7] 1660 	sub	a, #0x14
   5A8B 38 E4         [12] 1661 	jr	C,00103$
                           1662 ;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
   5A8D 14            [ 4] 1663 	inc	d
   5A8E 7A            [ 4] 1664 	ld	a,d
   5A8F D6 0C         [ 7] 1665 	sub	a, #0x0C
   5A91 38 DC         [12] 1666 	jr	C,00109$
                           1667 ;src/game/world.c:348: drawScrolls(x_, y_);
   5A93 21 03 00      [10] 1668 	ld	hl, #3+0
   5A96 39            [11] 1669 	add	hl, sp
   5A97 7E            [ 7] 1670 	ld	a, (hl)
   5A98 F5            [11] 1671 	push	af
   5A99 33            [ 6] 1672 	inc	sp
   5A9A 21 03 00      [10] 1673 	ld	hl, #3+0
   5A9D 39            [11] 1674 	add	hl, sp
   5A9E 7E            [ 7] 1675 	ld	a, (hl)
   5A9F F5            [11] 1676 	push	af
   5AA0 33            [ 6] 1677 	inc	sp
   5AA1 CD D4 59      [17] 1678 	call	_drawScrolls
   5AA4 F1            [10] 1679 	pop	af
   5AA5 C9            [10] 1680 	ret
                           1681 	.area _CODE
                           1682 	.area _INITIALIZER
                           1683 	.area _CABS (ABS)
