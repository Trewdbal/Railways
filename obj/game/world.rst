                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 22:30:35 2016
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
   4C6C                      64 _drawCursor::
   4C6C DD E5         [15]   65 	push	ix
   4C6E DD 21 00 00   [14]   66 	ld	ix,#0
   4C72 DD 39         [15]   67 	add	ix,sp
   4C74 3B            [ 6]   68 	dec	sp
                             69 ;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4C75 DD 7E 05      [19]   70 	ld	a,5 (ix)
   4C78 07            [ 4]   71 	rlca
   4C79 07            [ 4]   72 	rlca
   4C7A 07            [ 4]   73 	rlca
   4C7B 07            [ 4]   74 	rlca
   4C7C E6 F0         [ 7]   75 	and	a,#0xF0
   4C7E 5F            [ 4]   76 	ld	e,a
   4C7F DD 7E 04      [19]   77 	ld	a,4 (ix)
   4C82 87            [ 4]   78 	add	a, a
   4C83 87            [ 4]   79 	add	a, a
   4C84 57            [ 4]   80 	ld	d,a
   4C85 D5            [11]   81 	push	de
   4C86 7B            [ 4]   82 	ld	a,e
   4C87 F5            [11]   83 	push	af
   4C88 33            [ 6]   84 	inc	sp
   4C89 D5            [11]   85 	push	de
   4C8A 33            [ 6]   86 	inc	sp
   4C8B 21 00 C0      [10]   87 	ld	hl,#0xC000
   4C8E E5            [11]   88 	push	hl
   4C8F CD A8 6B      [17]   89 	call	_cpct_getScreenPtr
   4C92 D1            [10]   90 	pop	de
   4C93 4D            [ 4]   91 	ld	c, l
   4C94 44            [ 4]   92 	ld	b, h
                             93 ;src/game/world.c:8: switch(CURSOR_MODE)
   4C95 3E 10         [ 7]   94 	ld	a,#0x10
   4C97 FD 21 7C 7B   [14]   95 	ld	iy,#_CURSOR_MODE
   4C9B FD 96 00      [19]   96 	sub	a, 0 (iy)
   4C9E DA 9D 4E      [10]   97 	jp	C,00119$
   4CA1 D5            [11]   98 	push	de
   4CA2 FD 21 7C 7B   [14]   99 	ld	iy,#_CURSOR_MODE
   4CA6 FD 5E 00      [19]  100 	ld	e,0 (iy)
   4CA9 16 00         [ 7]  101 	ld	d,#0x00
   4CAB 21 B3 4C      [10]  102 	ld	hl,#00125$
   4CAE 19            [11]  103 	add	hl,de
   4CAF 19            [11]  104 	add	hl,de
   4CB0 19            [11]  105 	add	hl,de
   4CB1 D1            [10]  106 	pop	de
   4CB2 E9            [ 4]  107 	jp	(hl)
   4CB3                     108 00125$:
   4CB3 C3 E6 4C      [10]  109 	jp	00101$
   4CB6 C3 B8 4D      [10]  110 	jp	00102$
   4CB9 C3 C7 4D      [10]  111 	jp	00103$
   4CBC C3 D6 4D      [10]  112 	jp	00104$
   4CBF C3 E5 4D      [10]  113 	jp	00105$
   4CC2 C3 F4 4D      [10]  114 	jp	00106$
   4CC5 C3 03 4E      [10]  115 	jp	00107$
   4CC8 C3 12 4E      [10]  116 	jp	00108$
   4CCB C3 21 4E      [10]  117 	jp	00109$
   4CCE C3 2F 4E      [10]  118 	jp	00110$
   4CD1 C3 3D 4E      [10]  119 	jp	00111$
   4CD4 C3 4B 4E      [10]  120 	jp	00112$
   4CD7 C3 59 4E      [10]  121 	jp	00113$
   4CDA C3 67 4E      [10]  122 	jp	00114$
   4CDD C3 75 4E      [10]  123 	jp	00115$
   4CE0 C3 83 4E      [10]  124 	jp	00116$
   4CE3 C3 91 4E      [10]  125 	jp	00117$
                            126 ;src/game/world.c:10: case NONE:
   4CE6                     127 00101$:
                            128 ;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4CE6 C5            [11]  129 	push	bc
   4CE7 D5            [11]  130 	push	de
   4CE8 DD 66 06      [19]  131 	ld	h,6 (ix)
   4CEB DD 6E 06      [19]  132 	ld	l,6 (ix)
   4CEE E5            [11]  133 	push	hl
   4CEF DD 66 06      [19]  134 	ld	h,6 (ix)
   4CF2 DD 6E 06      [19]  135 	ld	l,6 (ix)
   4CF5 E5            [11]  136 	push	hl
   4CF6 CD 82 6A      [17]  137 	call	_cpct_px2byteM1
   4CF9 F1            [10]  138 	pop	af
   4CFA F1            [10]  139 	pop	af
   4CFB DD 75 FF      [19]  140 	ld	-1 (ix),l
   4CFE D1            [10]  141 	pop	de
   4CFF C1            [10]  142 	pop	bc
   4D00 D5            [11]  143 	push	de
   4D01 21 04 00      [10]  144 	ld	hl,#0x0004
   4D04 E5            [11]  145 	push	hl
   4D05 DD 7E FF      [19]  146 	ld	a,-1 (ix)
   4D08 F5            [11]  147 	push	af
   4D09 33            [ 6]  148 	inc	sp
   4D0A C5            [11]  149 	push	bc
   4D0B CD 74 6A      [17]  150 	call	_cpct_memset
   4D0E D1            [10]  151 	pop	de
                            152 ;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4D0F 63            [ 4]  153 	ld	h,e
   4D10 24            [ 4]  154 	inc	h
   4D11 D5            [11]  155 	push	de
   4D12 E5            [11]  156 	push	hl
   4D13 33            [ 6]  157 	inc	sp
   4D14 D5            [11]  158 	push	de
   4D15 33            [ 6]  159 	inc	sp
   4D16 21 00 C0      [10]  160 	ld	hl,#0xC000
   4D19 E5            [11]  161 	push	hl
   4D1A CD A8 6B      [17]  162 	call	_cpct_getScreenPtr
   4D1D D1            [10]  163 	pop	de
                            164 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4D1E E5            [11]  165 	push	hl
   4D1F D5            [11]  166 	push	de
   4D20 DD 66 06      [19]  167 	ld	h,6 (ix)
   4D23 DD 6E 06      [19]  168 	ld	l,6 (ix)
   4D26 E5            [11]  169 	push	hl
   4D27 DD 66 06      [19]  170 	ld	h,6 (ix)
   4D2A DD 6E 06      [19]  171 	ld	l,6 (ix)
   4D2D E5            [11]  172 	push	hl
   4D2E CD 82 6A      [17]  173 	call	_cpct_px2byteM1
   4D31 F1            [10]  174 	pop	af
   4D32 F1            [10]  175 	pop	af
   4D33 5D            [ 4]  176 	ld	e,l
   4D34 F1            [10]  177 	pop	af
   4D35 57            [ 4]  178 	ld	d,a
   4D36 C1            [10]  179 	pop	bc
   4D37 D5            [11]  180 	push	de
   4D38 21 04 00      [10]  181 	ld	hl,#0x0004
   4D3B E5            [11]  182 	push	hl
   4D3C 7B            [ 4]  183 	ld	a,e
   4D3D F5            [11]  184 	push	af
   4D3E 33            [ 6]  185 	inc	sp
   4D3F C5            [11]  186 	push	bc
   4D40 CD 74 6A      [17]  187 	call	_cpct_memset
   4D43 D1            [10]  188 	pop	de
                            189 ;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4D44 DD 7E 05      [19]  190 	ld	a,5 (ix)
   4D47 3C            [ 4]  191 	inc	a
   4D48 07            [ 4]  192 	rlca
   4D49 07            [ 4]  193 	rlca
   4D4A 07            [ 4]  194 	rlca
   4D4B 07            [ 4]  195 	rlca
   4D4C E6 F0         [ 7]  196 	and	a,#0xF0
   4D4E 5F            [ 4]  197 	ld	e,a
   4D4F 63            [ 4]  198 	ld	h,e
   4D50 25            [ 4]  199 	dec	h
   4D51 D5            [11]  200 	push	de
   4D52 E5            [11]  201 	push	hl
   4D53 33            [ 6]  202 	inc	sp
   4D54 D5            [11]  203 	push	de
   4D55 33            [ 6]  204 	inc	sp
   4D56 21 00 C0      [10]  205 	ld	hl,#0xC000
   4D59 E5            [11]  206 	push	hl
   4D5A CD A8 6B      [17]  207 	call	_cpct_getScreenPtr
   4D5D D1            [10]  208 	pop	de
                            209 ;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4D5E E5            [11]  210 	push	hl
   4D5F D5            [11]  211 	push	de
   4D60 DD 66 06      [19]  212 	ld	h,6 (ix)
   4D63 DD 6E 06      [19]  213 	ld	l,6 (ix)
   4D66 E5            [11]  214 	push	hl
   4D67 DD 66 06      [19]  215 	ld	h,6 (ix)
   4D6A DD 6E 06      [19]  216 	ld	l,6 (ix)
   4D6D E5            [11]  217 	push	hl
   4D6E CD 82 6A      [17]  218 	call	_cpct_px2byteM1
   4D71 F1            [10]  219 	pop	af
   4D72 F1            [10]  220 	pop	af
   4D73 DD 75 FF      [19]  221 	ld	-1 (ix),l
   4D76 D1            [10]  222 	pop	de
   4D77 C1            [10]  223 	pop	bc
   4D78 D5            [11]  224 	push	de
   4D79 21 04 00      [10]  225 	ld	hl,#0x0004
   4D7C E5            [11]  226 	push	hl
   4D7D DD 7E FF      [19]  227 	ld	a,-1 (ix)
   4D80 F5            [11]  228 	push	af
   4D81 33            [ 6]  229 	inc	sp
   4D82 C5            [11]  230 	push	bc
   4D83 CD 74 6A      [17]  231 	call	_cpct_memset
   4D86 D1            [10]  232 	pop	de
                            233 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4D87 63            [ 4]  234 	ld	h,e
   4D88 25            [ 4]  235 	dec	h
   4D89 25            [ 4]  236 	dec	h
   4D8A E5            [11]  237 	push	hl
   4D8B 33            [ 6]  238 	inc	sp
   4D8C D5            [11]  239 	push	de
   4D8D 33            [ 6]  240 	inc	sp
   4D8E 21 00 C0      [10]  241 	ld	hl,#0xC000
   4D91 E5            [11]  242 	push	hl
   4D92 CD A8 6B      [17]  243 	call	_cpct_getScreenPtr
                            244 ;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4D95 E5            [11]  245 	push	hl
   4D96 DD 66 06      [19]  246 	ld	h,6 (ix)
   4D99 DD 6E 06      [19]  247 	ld	l,6 (ix)
   4D9C E5            [11]  248 	push	hl
   4D9D DD 66 06      [19]  249 	ld	h,6 (ix)
   4DA0 DD 6E 06      [19]  250 	ld	l,6 (ix)
   4DA3 E5            [11]  251 	push	hl
   4DA4 CD 82 6A      [17]  252 	call	_cpct_px2byteM1
   4DA7 F1            [10]  253 	pop	af
   4DA8 F1            [10]  254 	pop	af
   4DA9 65            [ 4]  255 	ld	h,l
   4DAA D1            [10]  256 	pop	de
   4DAB 01 04 00      [10]  257 	ld	bc,#0x0004
   4DAE C5            [11]  258 	push	bc
   4DAF E5            [11]  259 	push	hl
   4DB0 33            [ 6]  260 	inc	sp
   4DB1 D5            [11]  261 	push	de
   4DB2 CD 74 6A      [17]  262 	call	_cpct_memset
                            263 ;src/game/world.c:20: break;
   4DB5 C3 9D 4E      [10]  264 	jp	00119$
                            265 ;src/game/world.c:21: case T_SSNS:
   4DB8                     266 00102$:
                            267 ;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4DB8 11 5D 5F      [10]  268 	ld	de,#_station_small_ns
   4DBB 21 04 10      [10]  269 	ld	hl,#0x1004
   4DBE E5            [11]  270 	push	hl
   4DBF C5            [11]  271 	push	bc
   4DC0 D5            [11]  272 	push	de
   4DC1 CD 7C 68      [17]  273 	call	_cpct_drawSprite
                            274 ;src/game/world.c:23: break;
   4DC4 C3 9D 4E      [10]  275 	jp	00119$
                            276 ;src/game/world.c:24: case T_SSEW:
   4DC7                     277 00103$:
                            278 ;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4DC7 11 9D 5F      [10]  279 	ld	de,#_station_small_ew
   4DCA 21 04 10      [10]  280 	ld	hl,#0x1004
   4DCD E5            [11]  281 	push	hl
   4DCE C5            [11]  282 	push	bc
   4DCF D5            [11]  283 	push	de
   4DD0 CD 7C 68      [17]  284 	call	_cpct_drawSprite
                            285 ;src/game/world.c:26: break;
   4DD3 C3 9D 4E      [10]  286 	jp	00119$
                            287 ;src/game/world.c:27: case T_SMNS:
   4DD6                     288 00104$:
                            289 ;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4DD6 11 DD 5F      [10]  290 	ld	de,#_station_medium_ns
   4DD9 21 04 10      [10]  291 	ld	hl,#0x1004
   4DDC E5            [11]  292 	push	hl
   4DDD C5            [11]  293 	push	bc
   4DDE D5            [11]  294 	push	de
   4DDF CD 7C 68      [17]  295 	call	_cpct_drawSprite
                            296 ;src/game/world.c:29: break;
   4DE2 C3 9D 4E      [10]  297 	jp	00119$
                            298 ;src/game/world.c:30: case T_SMEW:
   4DE5                     299 00105$:
                            300 ;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4DE5 11 1D 60      [10]  301 	ld	de,#_station_medium_ew
   4DE8 21 04 10      [10]  302 	ld	hl,#0x1004
   4DEB E5            [11]  303 	push	hl
   4DEC C5            [11]  304 	push	bc
   4DED D5            [11]  305 	push	de
   4DEE CD 7C 68      [17]  306 	call	_cpct_drawSprite
                            307 ;src/game/world.c:32: break;
   4DF1 C3 9D 4E      [10]  308 	jp	00119$
                            309 ;src/game/world.c:33: case T_SLNS:
   4DF4                     310 00106$:
                            311 ;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4DF4 11 5D 60      [10]  312 	ld	de,#_station_large_ns
   4DF7 21 04 10      [10]  313 	ld	hl,#0x1004
   4DFA E5            [11]  314 	push	hl
   4DFB C5            [11]  315 	push	bc
   4DFC D5            [11]  316 	push	de
   4DFD CD 7C 68      [17]  317 	call	_cpct_drawSprite
                            318 ;src/game/world.c:35: break;
   4E00 C3 9D 4E      [10]  319 	jp	00119$
                            320 ;src/game/world.c:36: case T_SLEW:
   4E03                     321 00107$:
                            322 ;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4E03 11 9D 60      [10]  323 	ld	de,#_station_large_ew
   4E06 21 04 10      [10]  324 	ld	hl,#0x1004
   4E09 E5            [11]  325 	push	hl
   4E0A C5            [11]  326 	push	bc
   4E0B D5            [11]  327 	push	de
   4E0C CD 7C 68      [17]  328 	call	_cpct_drawSprite
                            329 ;src/game/world.c:38: break;
   4E0F C3 9D 4E      [10]  330 	jp	00119$
                            331 ;src/game/world.c:39: case T_REW:
   4E12                     332 00108$:
                            333 ;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   4E12 11 DD 60      [10]  334 	ld	de,#_rail_ew
   4E15 21 04 10      [10]  335 	ld	hl,#0x1004
   4E18 E5            [11]  336 	push	hl
   4E19 C5            [11]  337 	push	bc
   4E1A D5            [11]  338 	push	de
   4E1B CD 7C 68      [17]  339 	call	_cpct_drawSprite
                            340 ;src/game/world.c:41: break;
   4E1E C3 9D 4E      [10]  341 	jp	00119$
                            342 ;src/game/world.c:42: case T_RNS:
   4E21                     343 00109$:
                            344 ;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   4E21 11 1D 61      [10]  345 	ld	de,#_rail_ns
   4E24 21 04 10      [10]  346 	ld	hl,#0x1004
   4E27 E5            [11]  347 	push	hl
   4E28 C5            [11]  348 	push	bc
   4E29 D5            [11]  349 	push	de
   4E2A CD 7C 68      [17]  350 	call	_cpct_drawSprite
                            351 ;src/game/world.c:44: break;
   4E2D 18 6E         [12]  352 	jr	00119$
                            353 ;src/game/world.c:45: case T_REN:
   4E2F                     354 00110$:
                            355 ;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   4E2F 11 5D 61      [10]  356 	ld	de,#_rail_en
   4E32 21 04 10      [10]  357 	ld	hl,#0x1004
   4E35 E5            [11]  358 	push	hl
   4E36 C5            [11]  359 	push	bc
   4E37 D5            [11]  360 	push	de
   4E38 CD 7C 68      [17]  361 	call	_cpct_drawSprite
                            362 ;src/game/world.c:47: break;
   4E3B 18 60         [12]  363 	jr	00119$
                            364 ;src/game/world.c:48: case T_RES:
   4E3D                     365 00111$:
                            366 ;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   4E3D 11 9D 61      [10]  367 	ld	de,#_rail_es
   4E40 21 04 10      [10]  368 	ld	hl,#0x1004
   4E43 E5            [11]  369 	push	hl
   4E44 C5            [11]  370 	push	bc
   4E45 D5            [11]  371 	push	de
   4E46 CD 7C 68      [17]  372 	call	_cpct_drawSprite
                            373 ;src/game/world.c:50: break;
   4E49 18 52         [12]  374 	jr	00119$
                            375 ;src/game/world.c:51: case T_RWN:
   4E4B                     376 00112$:
                            377 ;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   4E4B 11 DD 61      [10]  378 	ld	de,#_rail_wn
   4E4E 21 04 10      [10]  379 	ld	hl,#0x1004
   4E51 E5            [11]  380 	push	hl
   4E52 C5            [11]  381 	push	bc
   4E53 D5            [11]  382 	push	de
   4E54 CD 7C 68      [17]  383 	call	_cpct_drawSprite
                            384 ;src/game/world.c:53: break;
   4E57 18 44         [12]  385 	jr	00119$
                            386 ;src/game/world.c:54: case T_RWS:
   4E59                     387 00113$:
                            388 ;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   4E59 11 1D 62      [10]  389 	ld	de,#_rail_ws
   4E5C 21 04 10      [10]  390 	ld	hl,#0x1004
   4E5F E5            [11]  391 	push	hl
   4E60 C5            [11]  392 	push	bc
   4E61 D5            [11]  393 	push	de
   4E62 CD 7C 68      [17]  394 	call	_cpct_drawSprite
                            395 ;src/game/world.c:56: break;
   4E65 18 36         [12]  396 	jr	00119$
                            397 ;src/game/world.c:57: case T_REWN:
   4E67                     398 00114$:
                            399 ;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   4E67 11 5D 62      [10]  400 	ld	de,#_rail_ew_n
   4E6A 21 04 10      [10]  401 	ld	hl,#0x1004
   4E6D E5            [11]  402 	push	hl
   4E6E C5            [11]  403 	push	bc
   4E6F D5            [11]  404 	push	de
   4E70 CD 7C 68      [17]  405 	call	_cpct_drawSprite
                            406 ;src/game/world.c:59: break;
   4E73 18 28         [12]  407 	jr	00119$
                            408 ;src/game/world.c:60: case T_REWS:
   4E75                     409 00115$:
                            410 ;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   4E75 11 9D 62      [10]  411 	ld	de,#_rail_ew_s
   4E78 21 04 10      [10]  412 	ld	hl,#0x1004
   4E7B E5            [11]  413 	push	hl
   4E7C C5            [11]  414 	push	bc
   4E7D D5            [11]  415 	push	de
   4E7E CD 7C 68      [17]  416 	call	_cpct_drawSprite
                            417 ;src/game/world.c:62: break;
   4E81 18 1A         [12]  418 	jr	00119$
                            419 ;src/game/world.c:63: case T_RNSE:
   4E83                     420 00116$:
                            421 ;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   4E83 11 1D 63      [10]  422 	ld	de,#_rail_ns_e
   4E86 21 04 10      [10]  423 	ld	hl,#0x1004
   4E89 E5            [11]  424 	push	hl
   4E8A C5            [11]  425 	push	bc
   4E8B D5            [11]  426 	push	de
   4E8C CD 7C 68      [17]  427 	call	_cpct_drawSprite
                            428 ;src/game/world.c:65: break;
   4E8F 18 0C         [12]  429 	jr	00119$
                            430 ;src/game/world.c:66: case T_RNSW:
   4E91                     431 00117$:
                            432 ;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   4E91 11 DD 62      [10]  433 	ld	de,#_rail_ns_w
   4E94 21 04 10      [10]  434 	ld	hl,#0x1004
   4E97 E5            [11]  435 	push	hl
   4E98 C5            [11]  436 	push	bc
   4E99 D5            [11]  437 	push	de
   4E9A CD 7C 68      [17]  438 	call	_cpct_drawSprite
                            439 ;src/game/world.c:69: }
   4E9D                     440 00119$:
   4E9D 33            [ 6]  441 	inc	sp
   4E9E DD E1         [14]  442 	pop	ix
   4EA0 C9            [10]  443 	ret
                            444 ;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            445 ;	---------------------------------
                            446 ; Function patternTile
                            447 ; ---------------------------------
   4EA1                     448 _patternTile::
   4EA1 DD E5         [15]  449 	push	ix
   4EA3 DD 21 00 00   [14]  450 	ld	ix,#0
   4EA7 DD 39         [15]  451 	add	ix,sp
   4EA9 21 F5 FF      [10]  452 	ld	hl,#-11
   4EAC 39            [11]  453 	add	hl,sp
   4EAD F9            [ 6]  454 	ld	sp,hl
                            455 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   4EAE DD 7E 04      [19]  456 	ld	a,4 (ix)
   4EB1 D6 08         [ 7]  457 	sub	a, #0x08
   4EB3 20 04         [12]  458 	jr	NZ,00153$
   4EB5 3E 01         [ 7]  459 	ld	a,#0x01
   4EB7 18 01         [12]  460 	jr	00154$
   4EB9                     461 00153$:
   4EB9 AF            [ 4]  462 	xor	a,a
   4EBA                     463 00154$:
   4EBA DD 77 F9      [19]  464 	ld	-7 (ix),a
   4EBD DD 7E 04      [19]  465 	ld	a,4 (ix)
   4EC0 D6 02         [ 7]  466 	sub	a, #0x02
   4EC2 20 04         [12]  467 	jr	NZ,00155$
   4EC4 3E 01         [ 7]  468 	ld	a,#0x01
   4EC6 18 01         [12]  469 	jr	00156$
   4EC8                     470 00155$:
   4EC8 AF            [ 4]  471 	xor	a,a
   4EC9                     472 00156$:
   4EC9 DD 77 FD      [19]  473 	ld	-3 (ix),a
   4ECC DD 36 F5 00   [19]  474 	ld	-11 (ix),#0x00
   4ED0 11 00 00      [10]  475 	ld	de,#0x0000
   4ED3                     476 00115$:
   4ED3 DD 7E F5      [19]  477 	ld	a,-11 (ix)
   4ED6 DD 96 08      [19]  478 	sub	a, 8 (ix)
   4ED9 D2 99 4F      [10]  479 	jp	NC,00117$
                            480 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   4EDC DD 7E 05      [19]  481 	ld	a,5 (ix)
   4EDF 83            [ 4]  482 	add	a, e
   4EE0 DD 77 F7      [19]  483 	ld	-9 (ix),a
   4EE3 DD 7E 06      [19]  484 	ld	a,6 (ix)
   4EE6 8A            [ 4]  485 	adc	a, d
   4EE7 DD 77 F8      [19]  486 	ld	-8 (ix),a
   4EEA D5            [11]  487 	push	de
   4EEB DD 5E 07      [19]  488 	ld	e,7 (ix)
   4EEE DD 66 F5      [19]  489 	ld	h,-11 (ix)
   4EF1 2E 00         [ 7]  490 	ld	l, #0x00
   4EF3 55            [ 4]  491 	ld	d, l
   4EF4 06 08         [ 7]  492 	ld	b, #0x08
   4EF6                     493 00157$:
   4EF6 29            [11]  494 	add	hl,hl
   4EF7 30 01         [12]  495 	jr	NC,00158$
   4EF9 19            [11]  496 	add	hl,de
   4EFA                     497 00158$:
   4EFA 10 FA         [13]  498 	djnz	00157$
   4EFC D1            [10]  499 	pop	de
   4EFD DD 75 FE      [19]  500 	ld	-2 (ix),l
   4F00 DD 74 FF      [19]  501 	ld	-1 (ix),h
   4F03 DD 36 F6 00   [19]  502 	ld	-10 (ix),#0x00
   4F07                     503 00112$:
   4F07 DD 7E F6      [19]  504 	ld	a,-10 (ix)
   4F0A DD 96 07      [19]  505 	sub	a, 7 (ix)
   4F0D D2 8E 4F      [10]  506 	jp	NC,00116$
                            507 ;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   4F10 DD 7E F6      [19]  508 	ld	a,-10 (ix)
   4F13 DD 77 FA      [19]  509 	ld	-6 (ix),a
   4F16 DD 36 FB 00   [19]  510 	ld	-5 (ix),#0x00
   4F1A DD 7E FE      [19]  511 	ld	a,-2 (ix)
   4F1D DD 86 FA      [19]  512 	add	a, -6 (ix)
   4F20 6F            [ 4]  513 	ld	l,a
   4F21 DD 7E FF      [19]  514 	ld	a,-1 (ix)
   4F24 DD 8E FB      [19]  515 	adc	a, -5 (ix)
   4F27 67            [ 4]  516 	ld	h,a
   4F28 DD 4E 09      [19]  517 	ld	c,9 (ix)
   4F2B DD 46 0A      [19]  518 	ld	b,10 (ix)
   4F2E D5            [11]  519 	push	de
   4F2F E5            [11]  520 	push	hl
   4F30 C5            [11]  521 	push	bc
   4F31 CD 3C 68      [17]  522 	call	_cpct_getBit
   4F34 DD 75 FC      [19]  523 	ld	-4 (ix),l
   4F37 D1            [10]  524 	pop	de
   4F38 DD 7E FC      [19]  525 	ld	a,-4 (ix)
   4F3B B7            [ 4]  526 	or	a, a
   4F3C 28 4A         [12]  527 	jr	Z,00113$
   4F3E DD 7E F7      [19]  528 	ld	a,-9 (ix)
   4F41 DD 86 FA      [19]  529 	add	a, -6 (ix)
   4F44 4F            [ 4]  530 	ld	c,a
   4F45 DD 7E F8      [19]  531 	ld	a,-8 (ix)
   4F48 DD 8E FB      [19]  532 	adc	a, -5 (ix)
   4F4B 47            [ 4]  533 	ld	b,a
   4F4C EE 80         [ 7]  534 	xor	a, #0x80
   4F4E D6 8F         [ 7]  535 	sub	a, #0x8F
   4F50 30 36         [12]  536 	jr	NC,00113$
                            537 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   4F52 21 7C 6C      [10]  538 	ld	hl,#_p_world
   4F55 09            [11]  539 	add	hl,bc
   4F56 4D            [ 4]  540 	ld	c,l
   4F57 44            [ 4]  541 	ld	b,h
                            542 ;src/game/world.c:83: if(tileType == FOREST)
   4F58 DD 7E F9      [19]  543 	ld	a,-7 (ix)
   4F5B B7            [ 4]  544 	or	a, a
   4F5C 28 06         [12]  545 	jr	Z,00104$
                            546 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   4F5E DD 7E 04      [19]  547 	ld	a,4 (ix)
   4F61 02            [ 7]  548 	ld	(bc),a
   4F62 18 24         [12]  549 	jr	00113$
   4F64                     550 00104$:
                            551 ;src/game/world.c:85: else if(tileType==DWELLINGS1)
   4F64 DD 7E FD      [19]  552 	ld	a,-3 (ix)
   4F67 B7            [ 4]  553 	or	a, a
   4F68 28 1E         [12]  554 	jr	Z,00113$
                            555 ;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   4F6A C5            [11]  556 	push	bc
   4F6B D5            [11]  557 	push	de
   4F6C CD 84 69      [17]  558 	call	_cpct_count2VSYNC
   4F6F CD DE 6A      [17]  559 	call	_cpct_getRandomUniform_u8_f
   4F72 DD 75 FC      [19]  560 	ld	-4 (ix),l
   4F75 3E 03         [ 7]  561 	ld	a,#0x03
   4F77 F5            [11]  562 	push	af
   4F78 33            [ 6]  563 	inc	sp
   4F79 DD 7E FC      [19]  564 	ld	a,-4 (ix)
   4F7C F5            [11]  565 	push	af
   4F7D 33            [ 6]  566 	inc	sp
   4F7E CD 21 69      [17]  567 	call	__moduchar
   4F81 F1            [10]  568 	pop	af
   4F82 7D            [ 4]  569 	ld	a,l
   4F83 D1            [10]  570 	pop	de
   4F84 C1            [10]  571 	pop	bc
   4F85 C6 02         [ 7]  572 	add	a, #0x02
   4F87 02            [ 7]  573 	ld	(bc),a
   4F88                     574 00113$:
                            575 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   4F88 DD 34 F6      [23]  576 	inc	-10 (ix)
   4F8B C3 07 4F      [10]  577 	jp	00112$
   4F8E                     578 00116$:
                            579 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   4F8E 21 50 00      [10]  580 	ld	hl,#0x0050
   4F91 19            [11]  581 	add	hl,de
   4F92 EB            [ 4]  582 	ex	de,hl
   4F93 DD 34 F5      [23]  583 	inc	-11 (ix)
   4F96 C3 D3 4E      [10]  584 	jp	00115$
   4F99                     585 00117$:
   4F99 DD F9         [10]  586 	ld	sp, ix
   4F9B DD E1         [14]  587 	pop	ix
   4F9D C9            [10]  588 	ret
                            589 ;src/game/world.c:93: void generateWorld()
                            590 ;	---------------------------------
                            591 ; Function generateWorld
                            592 ; ---------------------------------
   4F9E                     593 _generateWorld::
   4F9E DD E5         [15]  594 	push	ix
   4FA0 DD 21 00 00   [14]  595 	ld	ix,#0
   4FA4 DD 39         [15]  596 	add	ix,sp
   4FA6 21 E5 FF      [10]  597 	ld	hl,#-27
   4FA9 39            [11]  598 	add	hl,sp
   4FAA F9            [ 6]  599 	ld	sp,hl
                            600 ;src/game/world.c:100: locDelocked = 1;
   4FAB FD 21 7D 7B   [14]  601 	ld	iy,#_locDelocked
   4FAF FD 36 00 01   [19]  602 	ld	0 (iy),#0x01
                            603 ;src/game/world.c:101: CURSOR_MODE = NONE;
   4FB3 FD 21 7C 7B   [14]  604 	ld	iy,#_CURSOR_MODE
   4FB7 FD 36 00 00   [19]  605 	ld	0 (iy),#0x00
                            606 ;src/game/world.c:104: cpct_srand((u32)cpct_count2VSYNC());
   4FBB CD 84 69      [17]  607 	call	_cpct_count2VSYNC
   4FBE 11 00 00      [10]  608 	ld	de,#0x0000
   4FC1 CD AD 69      [17]  609 	call	_cpct_setSeed_mxor
                            610 ;src/game/world.c:108: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4FC4 11 00 00      [10]  611 	ld	de,#0x0000
   4FC7                     612 00119$:
                            613 ;src/game/world.c:110: p_world[iy] = cpct_rand()%2;
   4FC7 21 7C 6C      [10]  614 	ld	hl,#_p_world
   4FCA 19            [11]  615 	add	hl,de
   4FCB E5            [11]  616 	push	hl
   4FCC D5            [11]  617 	push	de
   4FCD CD BA 6A      [17]  618 	call	_cpct_getRandom_mxor_u8
   4FD0 7D            [ 4]  619 	ld	a,l
   4FD1 D1            [10]  620 	pop	de
   4FD2 E1            [10]  621 	pop	hl
   4FD3 E6 01         [ 7]  622 	and	a, #0x01
   4FD5 77            [ 7]  623 	ld	(hl),a
                            624 ;src/game/world.c:108: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4FD6 13            [ 6]  625 	inc	de
   4FD7 7A            [ 4]  626 	ld	a,d
   4FD8 EE 80         [ 7]  627 	xor	a, #0x80
   4FDA D6 8F         [ 7]  628 	sub	a, #0x8F
   4FDC 38 E9         [12]  629 	jr	C,00119$
                            630 ;src/game/world.c:114: for(ix=0; ix<NBFOREST; ix++)
   4FDE 21 00 00      [10]  631 	ld	hl,#0x0000
   4FE1 39            [11]  632 	add	hl,sp
   4FE2 DD 75 FA      [19]  633 	ld	-6 (ix),l
   4FE5 DD 74 FB      [19]  634 	ld	-5 (ix),h
   4FE8 01 00 00      [10]  635 	ld	bc,#0x0000
   4FEB                     636 00121$:
                            637 ;src/game/world.c:116: iy = cpct_rand16()%(WIDTH*HEIGHT);
   4FEB C5            [11]  638 	push	bc
   4FEC CD 09 6A      [17]  639 	call	_cpct_getRandom_mxor_u16
   4FEF 11 00 0F      [10]  640 	ld	de,#0x0F00
   4FF2 D5            [11]  641 	push	de
   4FF3 E5            [11]  642 	push	hl
   4FF4 CD 2D 69      [17]  643 	call	__moduint
   4FF7 F1            [10]  644 	pop	af
   4FF8 F1            [10]  645 	pop	af
   4FF9 C1            [10]  646 	pop	bc
   4FFA DD 75 FC      [19]  647 	ld	-4 (ix),l
   4FFD DD 74 FD      [19]  648 	ld	-3 (ix),h
                            649 ;src/game/world.c:118: switch(cpct_rand()%4)
   5000 C5            [11]  650 	push	bc
   5001 CD BA 6A      [17]  651 	call	_cpct_getRandom_mxor_u8
   5004 7D            [ 4]  652 	ld	a,l
   5005 C1            [10]  653 	pop	bc
   5006 E6 03         [ 7]  654 	and	a, #0x03
   5008 DD 77 F3      [19]  655 	ld	-13 (ix),a
   500B 3E 03         [ 7]  656 	ld	a,#0x03
   500D DD 96 F3      [19]  657 	sub	a, -13 (ix)
   5010 DA 74 51      [10]  658 	jp	C,00106$
                            659 ;src/game/world.c:122: p_forest[1] = 0b11000111;
   5013 E5            [11]  660 	push	hl
   5014 DD 6E FA      [19]  661 	ld	l,-6 (ix)
   5017 DD 66 FB      [19]  662 	ld	h,-5 (ix)
   501A 23            [ 6]  663 	inc	hl
   501B E5            [11]  664 	push	hl
   501C FD E1         [14]  665 	pop	iy
   501E E1            [10]  666 	pop	hl
                            667 ;src/game/world.c:123: p_forest[2] = 0b11011110;
   501F DD 5E FA      [19]  668 	ld	e,-6 (ix)
   5022 DD 56 FB      [19]  669 	ld	d,-5 (ix)
   5025 13            [ 6]  670 	inc	de
   5026 13            [ 6]  671 	inc	de
                            672 ;src/game/world.c:124: p_forest[3] = 0b01111110;
   5027 DD 7E FA      [19]  673 	ld	a,-6 (ix)
   502A C6 03         [ 7]  674 	add	a, #0x03
   502C DD 77 FE      [19]  675 	ld	-2 (ix),a
   502F DD 7E FB      [19]  676 	ld	a,-5 (ix)
   5032 CE 00         [ 7]  677 	adc	a, #0x00
   5034 DD 77 FF      [19]  678 	ld	-1 (ix),a
                            679 ;src/game/world.c:125: p_forest[4] = 0b11111110; 
   5037 DD 7E FA      [19]  680 	ld	a,-6 (ix)
   503A C6 04         [ 7]  681 	add	a, #0x04
   503C DD 77 F6      [19]  682 	ld	-10 (ix),a
   503F DD 7E FB      [19]  683 	ld	a,-5 (ix)
   5042 CE 00         [ 7]  684 	adc	a, #0x00
   5044 DD 77 F7      [19]  685 	ld	-9 (ix),a
                            686 ;src/game/world.c:126: p_forest[5] = 0b01111111;
   5047 DD 7E FA      [19]  687 	ld	a,-6 (ix)
   504A C6 05         [ 7]  688 	add	a, #0x05
   504C DD 77 F4      [19]  689 	ld	-12 (ix),a
   504F DD 7E FB      [19]  690 	ld	a,-5 (ix)
   5052 CE 00         [ 7]  691 	adc	a, #0x00
   5054 DD 77 F5      [19]  692 	ld	-11 (ix),a
                            693 ;src/game/world.c:127: p_forest[6] = 0b11101111;
   5057 DD 7E FA      [19]  694 	ld	a,-6 (ix)
   505A C6 06         [ 7]  695 	add	a, #0x06
   505C DD 77 F8      [19]  696 	ld	-8 (ix),a
   505F DD 7E FB      [19]  697 	ld	a,-5 (ix)
   5062 CE 00         [ 7]  698 	adc	a, #0x00
   5064 DD 77 F9      [19]  699 	ld	-7 (ix),a
                            700 ;src/game/world.c:128: p_forest[7] = 0b11001111;
   5067 DD 7E FA      [19]  701 	ld	a,-6 (ix)
   506A C6 07         [ 7]  702 	add	a, #0x07
   506C DD 77 F1      [19]  703 	ld	-15 (ix),a
   506F DD 7E FB      [19]  704 	ld	a,-5 (ix)
   5072 CE 00         [ 7]  705 	adc	a, #0x00
   5074 DD 77 F2      [19]  706 	ld	-14 (ix),a
                            707 ;src/game/world.c:118: switch(cpct_rand()%4)
   5077 D5            [11]  708 	push	de
   5078 DD 5E F3      [19]  709 	ld	e,-13 (ix)
   507B 16 00         [ 7]  710 	ld	d,#0x00
   507D 21 85 50      [10]  711 	ld	hl,#00195$
   5080 19            [11]  712 	add	hl,de
   5081 19            [11]  713 	add	hl,de
   5082 19            [11]  714 	add	hl,de
   5083 D1            [10]  715 	pop	de
   5084 E9            [ 4]  716 	jp	(hl)
   5085                     717 00195$:
   5085 C3 91 50      [10]  718 	jp	00102$
   5088 C3 CB 50      [10]  719 	jp	00103$
   508B C3 04 51      [10]  720 	jp	00104$
   508E C3 3D 51      [10]  721 	jp	00105$
                            722 ;src/game/world.c:120: case 0:
   5091                     723 00102$:
                            724 ;src/game/world.c:121: p_forest[0] = 0b10000100;
   5091 DD 6E FA      [19]  725 	ld	l,-6 (ix)
   5094 DD 66 FB      [19]  726 	ld	h,-5 (ix)
   5097 36 84         [10]  727 	ld	(hl),#0x84
                            728 ;src/game/world.c:122: p_forest[1] = 0b11000111;
   5099 FD 36 00 C7   [19]  729 	ld	0 (iy), #0xC7
                            730 ;src/game/world.c:123: p_forest[2] = 0b11011110;
   509D 3E DE         [ 7]  731 	ld	a,#0xDE
   509F 12            [ 7]  732 	ld	(de),a
                            733 ;src/game/world.c:124: p_forest[3] = 0b01111110;
   50A0 DD 6E FE      [19]  734 	ld	l,-2 (ix)
   50A3 DD 66 FF      [19]  735 	ld	h,-1 (ix)
   50A6 36 7E         [10]  736 	ld	(hl),#0x7E
                            737 ;src/game/world.c:125: p_forest[4] = 0b11111110; 
   50A8 DD 6E F6      [19]  738 	ld	l,-10 (ix)
   50AB DD 66 F7      [19]  739 	ld	h,-9 (ix)
   50AE 36 FE         [10]  740 	ld	(hl),#0xFE
                            741 ;src/game/world.c:126: p_forest[5] = 0b01111111;
   50B0 DD 6E F4      [19]  742 	ld	l,-12 (ix)
   50B3 DD 66 F5      [19]  743 	ld	h,-11 (ix)
   50B6 36 7F         [10]  744 	ld	(hl),#0x7F
                            745 ;src/game/world.c:127: p_forest[6] = 0b11101111;
   50B8 DD 6E F8      [19]  746 	ld	l,-8 (ix)
   50BB DD 66 F9      [19]  747 	ld	h,-7 (ix)
   50BE 36 EF         [10]  748 	ld	(hl),#0xEF
                            749 ;src/game/world.c:128: p_forest[7] = 0b11001111;
   50C0 DD 6E F1      [19]  750 	ld	l,-15 (ix)
   50C3 DD 66 F2      [19]  751 	ld	h,-14 (ix)
   50C6 36 CF         [10]  752 	ld	(hl),#0xCF
                            753 ;src/game/world.c:129: break;
   50C8 C3 74 51      [10]  754 	jp	00106$
                            755 ;src/game/world.c:130: case 1:
   50CB                     756 00103$:
                            757 ;src/game/world.c:131: p_forest[0] = 0b00001100;
   50CB DD 6E FA      [19]  758 	ld	l,-6 (ix)
   50CE DD 66 FB      [19]  759 	ld	h,-5 (ix)
   50D1 36 0C         [10]  760 	ld	(hl),#0x0C
                            761 ;src/game/world.c:132: p_forest[1] = 0b11111000;
   50D3 FD 36 00 F8   [19]  762 	ld	0 (iy), #0xF8
                            763 ;src/game/world.c:133: p_forest[2] = 0b00111111;
   50D7 3E 3F         [ 7]  764 	ld	a,#0x3F
   50D9 12            [ 7]  765 	ld	(de),a
                            766 ;src/game/world.c:134: p_forest[3] = 0b01111110;
   50DA DD 6E FE      [19]  767 	ld	l,-2 (ix)
   50DD DD 66 FF      [19]  768 	ld	h,-1 (ix)
   50E0 36 7E         [10]  769 	ld	(hl),#0x7E
                            770 ;src/game/world.c:135: p_forest[4] = 0b11111110; 
   50E2 DD 6E F6      [19]  771 	ld	l,-10 (ix)
   50E5 DD 66 F7      [19]  772 	ld	h,-9 (ix)
   50E8 36 FE         [10]  773 	ld	(hl),#0xFE
                            774 ;src/game/world.c:136: p_forest[5] = 0b01011111;
   50EA DD 6E F4      [19]  775 	ld	l,-12 (ix)
   50ED DD 66 F5      [19]  776 	ld	h,-11 (ix)
   50F0 36 5F         [10]  777 	ld	(hl),#0x5F
                            778 ;src/game/world.c:137: p_forest[6] = 0b11001111;
   50F2 DD 6E F8      [19]  779 	ld	l,-8 (ix)
   50F5 DD 66 F9      [19]  780 	ld	h,-7 (ix)
   50F8 36 CF         [10]  781 	ld	(hl),#0xCF
                            782 ;src/game/world.c:138: p_forest[7] = 0b10001100;
   50FA DD 6E F1      [19]  783 	ld	l,-15 (ix)
   50FD DD 66 F2      [19]  784 	ld	h,-14 (ix)
   5100 36 8C         [10]  785 	ld	(hl),#0x8C
                            786 ;src/game/world.c:139: break;
   5102 18 70         [12]  787 	jr	00106$
                            788 ;src/game/world.c:140: case 2:
   5104                     789 00104$:
                            790 ;src/game/world.c:141: p_forest[0] = 0b00110000;
   5104 DD 6E FA      [19]  791 	ld	l,-6 (ix)
   5107 DD 66 FB      [19]  792 	ld	h,-5 (ix)
   510A 36 30         [10]  793 	ld	(hl),#0x30
                            794 ;src/game/world.c:142: p_forest[1] = 0b11110100;
   510C FD 36 00 F4   [19]  795 	ld	0 (iy), #0xF4
                            796 ;src/game/world.c:143: p_forest[2] = 0b11111111;
   5110 3E FF         [ 7]  797 	ld	a,#0xFF
   5112 12            [ 7]  798 	ld	(de),a
                            799 ;src/game/world.c:144: p_forest[3] = 0b11111111;
   5113 DD 6E FE      [19]  800 	ld	l,-2 (ix)
   5116 DD 66 FF      [19]  801 	ld	h,-1 (ix)
   5119 36 FF         [10]  802 	ld	(hl),#0xFF
                            803 ;src/game/world.c:145: p_forest[4] = 0b01111100;
   511B DD 6E F6      [19]  804 	ld	l,-10 (ix)
   511E DD 66 F7      [19]  805 	ld	h,-9 (ix)
   5121 36 7C         [10]  806 	ld	(hl),#0x7C
                            807 ;src/game/world.c:146: p_forest[5] = 0b01111110;
   5123 DD 6E F4      [19]  808 	ld	l,-12 (ix)
   5126 DD 66 F5      [19]  809 	ld	h,-11 (ix)
   5129 36 7E         [10]  810 	ld	(hl),#0x7E
                            811 ;src/game/world.c:147: p_forest[6] = 0b00111110;
   512B DD 6E F8      [19]  812 	ld	l,-8 (ix)
   512E DD 66 F9      [19]  813 	ld	h,-7 (ix)
   5131 36 3E         [10]  814 	ld	(hl),#0x3E
                            815 ;src/game/world.c:148: p_forest[7] = 0b00011000;
   5133 DD 6E F1      [19]  816 	ld	l,-15 (ix)
   5136 DD 66 F2      [19]  817 	ld	h,-14 (ix)
   5139 36 18         [10]  818 	ld	(hl),#0x18
                            819 ;src/game/world.c:149: break;
   513B 18 37         [12]  820 	jr	00106$
                            821 ;src/game/world.c:150: case 3:
   513D                     822 00105$:
                            823 ;src/game/world.c:151: p_forest[0] = 0b11000000; 
   513D DD 6E FA      [19]  824 	ld	l,-6 (ix)
   5140 DD 66 FB      [19]  825 	ld	h,-5 (ix)
   5143 36 C0         [10]  826 	ld	(hl),#0xC0
                            827 ;src/game/world.c:152: p_forest[1] = 0b11100111;
   5145 FD 36 00 E7   [19]  828 	ld	0 (iy), #0xE7
                            829 ;src/game/world.c:153: p_forest[2] = 0b01111110;
   5149 3E 7E         [ 7]  830 	ld	a,#0x7E
   514B 12            [ 7]  831 	ld	(de),a
                            832 ;src/game/world.c:154: p_forest[3] = 0b01111110;
   514C DD 6E FE      [19]  833 	ld	l,-2 (ix)
   514F DD 66 FF      [19]  834 	ld	h,-1 (ix)
   5152 36 7E         [10]  835 	ld	(hl),#0x7E
                            836 ;src/game/world.c:155: p_forest[4] = 0b11111110;
   5154 DD 6E F6      [19]  837 	ld	l,-10 (ix)
   5157 DD 66 F7      [19]  838 	ld	h,-9 (ix)
   515A 36 FE         [10]  839 	ld	(hl),#0xFE
                            840 ;src/game/world.c:156: p_forest[5] = 0b11111100;
   515C DD 6E F4      [19]  841 	ld	l,-12 (ix)
   515F DD 66 F5      [19]  842 	ld	h,-11 (ix)
   5162 36 FC         [10]  843 	ld	(hl),#0xFC
                            844 ;src/game/world.c:157: p_forest[6] = 0b01111000;
   5164 DD 6E F8      [19]  845 	ld	l,-8 (ix)
   5167 DD 66 F9      [19]  846 	ld	h,-7 (ix)
   516A 36 78         [10]  847 	ld	(hl),#0x78
                            848 ;src/game/world.c:158: p_forest[7] = 0b00110000;
   516C DD 6E F1      [19]  849 	ld	l,-15 (ix)
   516F DD 66 F2      [19]  850 	ld	h,-14 (ix)
   5172 36 30         [10]  851 	ld	(hl),#0x30
                            852 ;src/game/world.c:160: }
   5174                     853 00106$:
                            854 ;src/game/world.c:161: patternTile(FOREST, iy, 8, 8, p_forest);
   5174 DD 6E FA      [19]  855 	ld	l,-6 (ix)
   5177 DD 66 FB      [19]  856 	ld	h,-5 (ix)
   517A C5            [11]  857 	push	bc
   517B E5            [11]  858 	push	hl
   517C 21 08 08      [10]  859 	ld	hl,#0x0808
   517F E5            [11]  860 	push	hl
   5180 DD 6E FC      [19]  861 	ld	l,-4 (ix)
   5183 DD 66 FD      [19]  862 	ld	h,-3 (ix)
   5186 E5            [11]  863 	push	hl
   5187 3E 08         [ 7]  864 	ld	a,#0x08
   5189 F5            [11]  865 	push	af
   518A 33            [ 6]  866 	inc	sp
   518B CD A1 4E      [17]  867 	call	_patternTile
   518E 21 07 00      [10]  868 	ld	hl,#7
   5191 39            [11]  869 	add	hl,sp
   5192 F9            [ 6]  870 	ld	sp,hl
   5193 C1            [10]  871 	pop	bc
                            872 ;src/game/world.c:114: for(ix=0; ix<NBFOREST; ix++)
   5194 03            [ 6]  873 	inc	bc
   5195 79            [ 4]  874 	ld	a,c
   5196 D6 32         [ 7]  875 	sub	a, #0x32
   5198 78            [ 4]  876 	ld	a,b
   5199 17            [ 4]  877 	rla
   519A 3F            [ 4]  878 	ccf
   519B 1F            [ 4]  879 	rra
   519C DE 80         [ 7]  880 	sbc	a, #0x80
   519E DA EB 4F      [10]  881 	jp	C,00121$
                            882 ;src/game/world.c:167: for(ix=0; ix<NBFARM; ix++)
   51A1 11 3C 00      [10]  883 	ld	de,#0x003C
   51A4                     884 00125$:
                            885 ;src/game/world.c:169: iy = cpct_rand16()%(WIDTH*HEIGHT);
   51A4 D5            [11]  886 	push	de
   51A5 CD 09 6A      [17]  887 	call	_cpct_getRandom_mxor_u16
   51A8 D1            [10]  888 	pop	de
   51A9 D5            [11]  889 	push	de
   51AA 01 00 0F      [10]  890 	ld	bc,#0x0F00
   51AD C5            [11]  891 	push	bc
   51AE E5            [11]  892 	push	hl
   51AF CD 2D 69      [17]  893 	call	__moduint
   51B2 F1            [10]  894 	pop	af
   51B3 F1            [10]  895 	pop	af
   51B4 D1            [10]  896 	pop	de
                            897 ;src/game/world.c:170: p_world[iy] = cpct_rand()%2+5;
   51B5 01 7C 6C      [10]  898 	ld	bc,#_p_world
   51B8 09            [11]  899 	add	hl,bc
   51B9 E5            [11]  900 	push	hl
   51BA D5            [11]  901 	push	de
   51BB CD BA 6A      [17]  902 	call	_cpct_getRandom_mxor_u8
   51BE 7D            [ 4]  903 	ld	a,l
   51BF D1            [10]  904 	pop	de
   51C0 E1            [10]  905 	pop	hl
   51C1 E6 01         [ 7]  906 	and	a, #0x01
   51C3 C6 05         [ 7]  907 	add	a, #0x05
   51C5 77            [ 7]  908 	ld	(hl),a
   51C6 1B            [ 6]  909 	dec	de
                            910 ;src/game/world.c:167: for(ix=0; ix<NBFARM; ix++)
   51C7 7A            [ 4]  911 	ld	a,d
   51C8 B3            [ 4]  912 	or	a,e
   51C9 20 D9         [12]  913 	jr	NZ,00125$
                            914 ;src/game/world.c:175: for(ix=0; ix<NBURBAN; ix++)
   51CB 11 14 00      [10]  915 	ld	de,#0x0014
   51CE                     916 00128$:
                            917 ;src/game/world.c:177: iy = cpct_rand16()%(WIDTH*HEIGHT);
   51CE D5            [11]  918 	push	de
   51CF CD 09 6A      [17]  919 	call	_cpct_getRandom_mxor_u16
   51D2 D1            [10]  920 	pop	de
   51D3 D5            [11]  921 	push	de
   51D4 01 00 0F      [10]  922 	ld	bc,#0x0F00
   51D7 C5            [11]  923 	push	bc
   51D8 E5            [11]  924 	push	hl
   51D9 CD 2D 69      [17]  925 	call	__moduint
   51DC F1            [10]  926 	pop	af
   51DD F1            [10]  927 	pop	af
   51DE D1            [10]  928 	pop	de
                            929 ;src/game/world.c:178: p_world[iy] = cpct_rand()%3+2;
   51DF 3E 7C         [ 7]  930 	ld	a,#<(_p_world)
   51E1 85            [ 4]  931 	add	a, l
   51E2 DD 77 F1      [19]  932 	ld	-15 (ix),a
   51E5 3E 6C         [ 7]  933 	ld	a,#>(_p_world)
   51E7 8C            [ 4]  934 	adc	a, h
   51E8 DD 77 F2      [19]  935 	ld	-14 (ix),a
   51EB D5            [11]  936 	push	de
   51EC CD BA 6A      [17]  937 	call	_cpct_getRandom_mxor_u8
   51EF 45            [ 4]  938 	ld	b,l
   51F0 D1            [10]  939 	pop	de
   51F1 D5            [11]  940 	push	de
   51F2 3E 03         [ 7]  941 	ld	a,#0x03
   51F4 F5            [11]  942 	push	af
   51F5 33            [ 6]  943 	inc	sp
   51F6 C5            [11]  944 	push	bc
   51F7 33            [ 6]  945 	inc	sp
   51F8 CD 21 69      [17]  946 	call	__moduchar
   51FB F1            [10]  947 	pop	af
   51FC 7D            [ 4]  948 	ld	a,l
   51FD D1            [10]  949 	pop	de
   51FE C6 02         [ 7]  950 	add	a, #0x02
   5200 DD 6E F1      [19]  951 	ld	l,-15 (ix)
   5203 DD 66 F2      [19]  952 	ld	h,-14 (ix)
   5206 77            [ 7]  953 	ld	(hl),a
   5207 1B            [ 6]  954 	dec	de
                            955 ;src/game/world.c:175: for(ix=0; ix<NBURBAN; ix++)
   5208 7A            [ 4]  956 	ld	a,d
   5209 B3            [ 4]  957 	or	a,e
   520A 20 C2         [12]  958 	jr	NZ,00128$
                            959 ;src/game/world.c:181: for(ix=0; ix<NBURBAN; ix++)
   520C 21 08 00      [10]  960 	ld	hl,#0x0008
   520F 39            [11]  961 	add	hl,sp
   5210 4D            [ 4]  962 	ld	c,l
   5211 44            [ 4]  963 	ld	b,h
   5212 DD 36 EF 00   [19]  964 	ld	-17 (ix),#0x00
   5216 DD 36 F0 00   [19]  965 	ld	-16 (ix),#0x00
   521A                     966 00129$:
                            967 ;src/game/world.c:183: iy = cpct_rand16()%(WIDTH*HEIGHT);
   521A C5            [11]  968 	push	bc
   521B CD 09 6A      [17]  969 	call	_cpct_getRandom_mxor_u16
   521E 11 00 0F      [10]  970 	ld	de,#0x0F00
   5221 D5            [11]  971 	push	de
   5222 E5            [11]  972 	push	hl
   5223 CD 2D 69      [17]  973 	call	__moduint
   5226 F1            [10]  974 	pop	af
   5227 F1            [10]  975 	pop	af
   5228 C1            [10]  976 	pop	bc
   5229 DD 75 F1      [19]  977 	ld	-15 (ix),l
   522C DD 74 F2      [19]  978 	ld	-14 (ix),h
                            979 ;src/game/world.c:185: switch(cpct_rand()%6)
   522F C5            [11]  980 	push	bc
   5230 CD BA 6A      [17]  981 	call	_cpct_getRandom_mxor_u8
   5233 55            [ 4]  982 	ld	d,l
   5234 3E 06         [ 7]  983 	ld	a,#0x06
   5236 F5            [11]  984 	push	af
   5237 33            [ 6]  985 	inc	sp
   5238 D5            [11]  986 	push	de
   5239 33            [ 6]  987 	inc	sp
   523A CD 21 69      [17]  988 	call	__moduchar
   523D F1            [10]  989 	pop	af
   523E 5D            [ 4]  990 	ld	e,l
   523F C1            [10]  991 	pop	bc
   5240 3E 05         [ 7]  992 	ld	a,#0x05
   5242 93            [ 4]  993 	sub	a, e
   5243 38 6A         [12]  994 	jr	C,00116$
                            995 ;src/game/world.c:189: p_cities[1] = 0b01000110; // 01100010;
   5245 21 01 00      [10]  996 	ld	hl,#0x0001
   5248 09            [11]  997 	add	hl,bc
   5249 DD 75 F8      [19]  998 	ld	-8 (ix),l
   524C DD 74 F9      [19]  999 	ld	-7 (ix),h
                           1000 ;src/game/world.c:185: switch(cpct_rand()%6)
   524F 16 00         [ 7] 1001 	ld	d,#0x00
   5251 21 57 52      [10] 1002 	ld	hl,#00196$
   5254 19            [11] 1003 	add	hl,de
   5255 19            [11] 1004 	add	hl,de
                           1005 ;src/game/world.c:187: case 0:
   5256 E9            [ 4] 1006 	jp	(hl)
   5257                    1007 00196$:
   5257 18 0A         [12] 1008 	jr	00110$
   5259 18 15         [12] 1009 	jr	00111$
   525B 18 20         [12] 1010 	jr	00112$
   525D 18 2B         [12] 1011 	jr	00113$
   525F 18 36         [12] 1012 	jr	00114$
   5261 18 41         [12] 1013 	jr	00115$
   5263                    1014 00110$:
                           1015 ;src/game/world.c:188: p_cities[0] = 0b01110010; // 01001110;
   5263 3E 72         [ 7] 1016 	ld	a,#0x72
   5265 02            [ 7] 1017 	ld	(bc),a
                           1018 ;src/game/world.c:189: p_cities[1] = 0b01000110; // 01100010;
   5266 DD 6E F8      [19] 1019 	ld	l,-8 (ix)
   5269 DD 66 F9      [19] 1020 	ld	h,-7 (ix)
   526C 36 46         [10] 1021 	ld	(hl),#0x46
                           1022 ;src/game/world.c:190: break;
   526E 18 3F         [12] 1023 	jr	00116$
                           1024 ;src/game/world.c:192: case 1:
   5270                    1025 00111$:
                           1026 ;src/game/world.c:193: p_cities[0] = 0b01100000; // 00000110;
   5270 3E 60         [ 7] 1027 	ld	a,#0x60
   5272 02            [ 7] 1028 	ld	(bc),a
                           1029 ;src/game/world.c:194: p_cities[1] = 0b00000110; // 01100000;
   5273 DD 6E F8      [19] 1030 	ld	l,-8 (ix)
   5276 DD 66 F9      [19] 1031 	ld	h,-7 (ix)
   5279 36 06         [10] 1032 	ld	(hl),#0x06
                           1033 ;src/game/world.c:195: break;
   527B 18 32         [12] 1034 	jr	00116$
                           1035 ;src/game/world.c:197: case 2:
   527D                    1036 00112$:
                           1037 ;src/game/world.c:198: p_cities[0] = 0b00010000; // 00001000;
   527D 3E 10         [ 7] 1038 	ld	a,#0x10
   527F 02            [ 7] 1039 	ld	(bc),a
                           1040 ;src/game/world.c:199: p_cities[1] = 0b00000110; // 01100000;
   5280 DD 6E F8      [19] 1041 	ld	l,-8 (ix)
   5283 DD 66 F9      [19] 1042 	ld	h,-7 (ix)
   5286 36 06         [10] 1043 	ld	(hl),#0x06
                           1044 ;src/game/world.c:200: break;
   5288 18 25         [12] 1045 	jr	00116$
                           1046 ;src/game/world.c:202: case 3:
   528A                    1047 00113$:
                           1048 ;src/game/world.c:203: p_cities[0] = 0b11000000; // 00000011;
   528A 3E C0         [ 7] 1049 	ld	a,#0xC0
   528C 02            [ 7] 1050 	ld	(bc),a
                           1051 ;src/game/world.c:204: p_cities[1] = 0b00110001; // 10001100;
   528D DD 6E F8      [19] 1052 	ld	l,-8 (ix)
   5290 DD 66 F9      [19] 1053 	ld	h,-7 (ix)
   5293 36 31         [10] 1054 	ld	(hl),#0x31
                           1055 ;src/game/world.c:205: break;
   5295 18 18         [12] 1056 	jr	00116$
                           1057 ;src/game/world.c:207: case 4:
   5297                    1058 00114$:
                           1059 ;src/game/world.c:208: p_cities[0] = 0b11000100; // 00100011;
   5297 3E C4         [ 7] 1060 	ld	a,#0xC4
   5299 02            [ 7] 1061 	ld	(bc),a
                           1062 ;src/game/world.c:209: p_cities[1] = 0b00001110; // 01110000;
   529A DD 6E F8      [19] 1063 	ld	l,-8 (ix)
   529D DD 66 F9      [19] 1064 	ld	h,-7 (ix)
   52A0 36 0E         [10] 1065 	ld	(hl),#0x0E
                           1066 ;src/game/world.c:210: break;
   52A2 18 0B         [12] 1067 	jr	00116$
                           1068 ;src/game/world.c:212: case 5:
   52A4                    1069 00115$:
                           1070 ;src/game/world.c:213: p_cities[0] = 0b01000000; // 00000010;
   52A4 3E 40         [ 7] 1071 	ld	a,#0x40
   52A6 02            [ 7] 1072 	ld	(bc),a
                           1073 ;src/game/world.c:214: p_cities[1] = 0b01001110; // 01110010;
   52A7 DD 6E F8      [19] 1074 	ld	l,-8 (ix)
   52AA DD 66 F9      [19] 1075 	ld	h,-7 (ix)
   52AD 36 4E         [10] 1076 	ld	(hl),#0x4E
                           1077 ;src/game/world.c:216: }
   52AF                    1078 00116$:
                           1079 ;src/game/world.c:218: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   52AF 69            [ 4] 1080 	ld	l, c
   52B0 60            [ 4] 1081 	ld	h, b
   52B1 C5            [11] 1082 	push	bc
   52B2 E5            [11] 1083 	push	hl
   52B3 21 04 04      [10] 1084 	ld	hl,#0x0404
   52B6 E5            [11] 1085 	push	hl
   52B7 DD 6E F1      [19] 1086 	ld	l,-15 (ix)
   52BA DD 66 F2      [19] 1087 	ld	h,-14 (ix)
   52BD E5            [11] 1088 	push	hl
   52BE 3E 02         [ 7] 1089 	ld	a,#0x02
   52C0 F5            [11] 1090 	push	af
   52C1 33            [ 6] 1091 	inc	sp
   52C2 CD A1 4E      [17] 1092 	call	_patternTile
   52C5 21 07 00      [10] 1093 	ld	hl,#7
   52C8 39            [11] 1094 	add	hl,sp
   52C9 F9            [ 6] 1095 	ld	sp,hl
   52CA C1            [10] 1096 	pop	bc
                           1097 ;src/game/world.c:181: for(ix=0; ix<NBURBAN; ix++)
   52CB DD 34 EF      [23] 1098 	inc	-17 (ix)
   52CE 20 03         [12] 1099 	jr	NZ,00197$
   52D0 DD 34 F0      [23] 1100 	inc	-16 (ix)
   52D3                    1101 00197$:
   52D3 DD 7E EF      [19] 1102 	ld	a,-17 (ix)
   52D6 D6 14         [ 7] 1103 	sub	a, #0x14
   52D8 DD 7E F0      [19] 1104 	ld	a,-16 (ix)
   52DB 17            [ 4] 1105 	rla
   52DC 3F            [ 4] 1106 	ccf
   52DD 1F            [ 4] 1107 	rra
   52DE DE 80         [ 7] 1108 	sbc	a, #0x80
   52E0 DA 1A 52      [10] 1109 	jp	C,00129$
                           1110 ;src/game/world.c:223: for(ix=0; ix<NBLIVESTOCK; ix++)
   52E3 11 13 00      [10] 1111 	ld	de,#0x0013
   52E6                    1112 00133$:
                           1113 ;src/game/world.c:225: iy = cpct_rand16()%(WIDTH*HEIGHT);
   52E6 D5            [11] 1114 	push	de
   52E7 CD 09 6A      [17] 1115 	call	_cpct_getRandom_mxor_u16
   52EA D1            [10] 1116 	pop	de
   52EB D5            [11] 1117 	push	de
   52EC 01 00 0F      [10] 1118 	ld	bc,#0x0F00
   52EF C5            [11] 1119 	push	bc
   52F0 E5            [11] 1120 	push	hl
   52F1 CD 2D 69      [17] 1121 	call	__moduint
   52F4 F1            [10] 1122 	pop	af
   52F5 F1            [10] 1123 	pop	af
   52F6 D1            [10] 1124 	pop	de
                           1125 ;src/game/world.c:226: p_world[iy] = LIVESTOCK;
   52F7 01 7C 6C      [10] 1126 	ld	bc,#_p_world
   52FA 09            [11] 1127 	add	hl,bc
   52FB 36 09         [10] 1128 	ld	(hl),#0x09
   52FD 1B            [ 6] 1129 	dec	de
                           1130 ;src/game/world.c:223: for(ix=0; ix<NBLIVESTOCK; ix++)
   52FE 7A            [ 4] 1131 	ld	a,d
   52FF B3            [ 4] 1132 	or	a,e
   5300 20 E4         [12] 1133 	jr	NZ,00133$
   5302 DD F9         [10] 1134 	ld	sp, ix
   5304 DD E1         [14] 1135 	pop	ix
   5306 C9            [10] 1136 	ret
                           1137 ;src/game/world.c:230: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1138 ;	---------------------------------
                           1139 ; Function drawTile
                           1140 ; ---------------------------------
   5307                    1141 _drawTile::
   5307 DD E5         [15] 1142 	push	ix
   5309 DD 21 00 00   [14] 1143 	ld	ix,#0
   530D DD 39         [15] 1144 	add	ix,sp
                           1145 ;src/game/world.c:233: int adress = (y_+iy)*WIDTH+x_+ix;
   530F DD 6E 05      [19] 1146 	ld	l,5 (ix)
   5312 26 00         [ 7] 1147 	ld	h,#0x00
   5314 DD 5E 07      [19] 1148 	ld	e,7 (ix)
   5317 16 00         [ 7] 1149 	ld	d,#0x00
   5319 19            [11] 1150 	add	hl,de
   531A 4D            [ 4] 1151 	ld	c, l
   531B 44            [ 4] 1152 	ld	b, h
   531C 29            [11] 1153 	add	hl, hl
   531D 29            [11] 1154 	add	hl, hl
   531E 09            [11] 1155 	add	hl, bc
   531F 29            [11] 1156 	add	hl, hl
   5320 29            [11] 1157 	add	hl, hl
   5321 29            [11] 1158 	add	hl, hl
   5322 29            [11] 1159 	add	hl, hl
   5323 DD 5E 04      [19] 1160 	ld	e,4 (ix)
   5326 16 00         [ 7] 1161 	ld	d,#0x00
   5328 19            [11] 1162 	add	hl,de
   5329 DD 5E 06      [19] 1163 	ld	e,6 (ix)
   532C 16 00         [ 7] 1164 	ld	d,#0x00
   532E 19            [11] 1165 	add	hl,de
   532F 5D            [ 4] 1166 	ld	e, l
   5330 54            [ 4] 1167 	ld	d, h
                           1168 ;src/game/world.c:235: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   5331 DD 7E 07      [19] 1169 	ld	a,7 (ix)
   5334 07            [ 4] 1170 	rlca
   5335 07            [ 4] 1171 	rlca
   5336 07            [ 4] 1172 	rlca
   5337 07            [ 4] 1173 	rlca
   5338 E6 F0         [ 7] 1174 	and	a,#0xF0
   533A 67            [ 4] 1175 	ld	h,a
   533B DD 7E 06      [19] 1176 	ld	a,6 (ix)
   533E 87            [ 4] 1177 	add	a, a
   533F 87            [ 4] 1178 	add	a, a
   5340 D5            [11] 1179 	push	de
   5341 E5            [11] 1180 	push	hl
   5342 33            [ 6] 1181 	inc	sp
   5343 F5            [11] 1182 	push	af
   5344 33            [ 6] 1183 	inc	sp
   5345 21 00 C0      [10] 1184 	ld	hl,#0xC000
   5348 E5            [11] 1185 	push	hl
   5349 CD A8 6B      [17] 1186 	call	_cpct_getScreenPtr
   534C D1            [10] 1187 	pop	de
   534D 4D            [ 4] 1188 	ld	c, l
   534E 44            [ 4] 1189 	ld	b, h
                           1190 ;src/game/world.c:237: switch(p_world[adress])
   534F 21 7C 6C      [10] 1191 	ld	hl,#_p_world
   5352 19            [11] 1192 	add	hl,de
   5353 5E            [ 7] 1193 	ld	e,(hl)
   5354 3E 19         [ 7] 1194 	ld	a,#0x19
   5356 93            [ 4] 1195 	sub	a, e
   5357 DA 2C 55      [10] 1196 	jp	C,00128$
   535A 16 00         [ 7] 1197 	ld	d,#0x00
   535C 21 63 53      [10] 1198 	ld	hl,#00134$
   535F 19            [11] 1199 	add	hl,de
   5360 19            [11] 1200 	add	hl,de
   5361 19            [11] 1201 	add	hl,de
   5362 E9            [ 4] 1202 	jp	(hl)
   5363                    1203 00134$:
   5363 C3 B1 53      [10] 1204 	jp	00101$
   5366 C3 C0 53      [10] 1205 	jp	00102$
   5369 C3 CF 53      [10] 1206 	jp	00103$
   536C C3 DE 53      [10] 1207 	jp	00104$
   536F C3 ED 53      [10] 1208 	jp	00105$
   5372 C3 FC 53      [10] 1209 	jp	00106$
   5375 C3 0B 54      [10] 1210 	jp	00107$
   5378 C3 1A 54      [10] 1211 	jp	00108$
   537B C3 29 54      [10] 1212 	jp	00109$
   537E C3 38 54      [10] 1213 	jp	00110$
   5381 C3 47 54      [10] 1214 	jp	00111$
   5384 C3 56 54      [10] 1215 	jp	00112$
   5387 C3 65 54      [10] 1216 	jp	00113$
   538A C3 74 54      [10] 1217 	jp	00114$
   538D C3 83 54      [10] 1218 	jp	00115$
   5390 C3 92 54      [10] 1219 	jp	00116$
   5393 C3 A1 54      [10] 1220 	jp	00117$
   5396 C3 B0 54      [10] 1221 	jp	00118$
   5399 C3 BE 54      [10] 1222 	jp	00119$
   539C C3 CC 54      [10] 1223 	jp	00120$
   539F C3 DA 54      [10] 1224 	jp	00121$
   53A2 C3 E8 54      [10] 1225 	jp	00122$
   53A5 C3 F6 54      [10] 1226 	jp	00123$
   53A8 C3 04 55      [10] 1227 	jp	00124$
   53AB C3 12 55      [10] 1228 	jp	00125$
   53AE C3 20 55      [10] 1229 	jp	00126$
                           1230 ;src/game/world.c:239: case GRASS1:
   53B1                    1231 00101$:
                           1232 ;src/game/world.c:240: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   53B1 11 DD 5C      [10] 1233 	ld	de,#_grass1
   53B4 21 04 10      [10] 1234 	ld	hl,#0x1004
   53B7 E5            [11] 1235 	push	hl
   53B8 C5            [11] 1236 	push	bc
   53B9 D5            [11] 1237 	push	de
   53BA CD 7C 68      [17] 1238 	call	_cpct_drawSprite
                           1239 ;src/game/world.c:241: break;
   53BD C3 2C 55      [10] 1240 	jp	00128$
                           1241 ;src/game/world.c:242: case GRASS2:
   53C0                    1242 00102$:
                           1243 ;src/game/world.c:243: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   53C0 11 1D 5D      [10] 1244 	ld	de,#_grass2
   53C3 21 04 10      [10] 1245 	ld	hl,#0x1004
   53C6 E5            [11] 1246 	push	hl
   53C7 C5            [11] 1247 	push	bc
   53C8 D5            [11] 1248 	push	de
   53C9 CD 7C 68      [17] 1249 	call	_cpct_drawSprite
                           1250 ;src/game/world.c:244: break;
   53CC C3 2C 55      [10] 1251 	jp	00128$
                           1252 ;src/game/world.c:245: case DWELLINGS1:
   53CF                    1253 00103$:
                           1254 ;src/game/world.c:246: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   53CF 11 9D 5D      [10] 1255 	ld	de,#_dwellings1
   53D2 21 04 10      [10] 1256 	ld	hl,#0x1004
   53D5 E5            [11] 1257 	push	hl
   53D6 C5            [11] 1258 	push	bc
   53D7 D5            [11] 1259 	push	de
   53D8 CD 7C 68      [17] 1260 	call	_cpct_drawSprite
                           1261 ;src/game/world.c:247: break;
   53DB C3 2C 55      [10] 1262 	jp	00128$
                           1263 ;src/game/world.c:248: case DWELLINGS2:
   53DE                    1264 00104$:
                           1265 ;src/game/world.c:249: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   53DE 11 DD 5D      [10] 1266 	ld	de,#_dwellings2
   53E1 21 04 10      [10] 1267 	ld	hl,#0x1004
   53E4 E5            [11] 1268 	push	hl
   53E5 C5            [11] 1269 	push	bc
   53E6 D5            [11] 1270 	push	de
   53E7 CD 7C 68      [17] 1271 	call	_cpct_drawSprite
                           1272 ;src/game/world.c:250: break;
   53EA C3 2C 55      [10] 1273 	jp	00128$
                           1274 ;src/game/world.c:251: case DWELLINGS3:
   53ED                    1275 00105$:
                           1276 ;src/game/world.c:252: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   53ED 11 1D 5E      [10] 1277 	ld	de,#_dwellings3
   53F0 21 04 10      [10] 1278 	ld	hl,#0x1004
   53F3 E5            [11] 1279 	push	hl
   53F4 C5            [11] 1280 	push	bc
   53F5 D5            [11] 1281 	push	de
   53F6 CD 7C 68      [17] 1282 	call	_cpct_drawSprite
                           1283 ;src/game/world.c:253: break;
   53F9 C3 2C 55      [10] 1284 	jp	00128$
                           1285 ;src/game/world.c:254: case FARM1:
   53FC                    1286 00106$:
                           1287 ;src/game/world.c:255: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   53FC 11 9D 5E      [10] 1288 	ld	de,#_farm1
   53FF 21 04 10      [10] 1289 	ld	hl,#0x1004
   5402 E5            [11] 1290 	push	hl
   5403 C5            [11] 1291 	push	bc
   5404 D5            [11] 1292 	push	de
   5405 CD 7C 68      [17] 1293 	call	_cpct_drawSprite
                           1294 ;src/game/world.c:256: break;
   5408 C3 2C 55      [10] 1295 	jp	00128$
                           1296 ;src/game/world.c:257: case FARM2:
   540B                    1297 00107$:
                           1298 ;src/game/world.c:258: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   540B 11 DD 5E      [10] 1299 	ld	de,#_farm2
   540E 21 04 10      [10] 1300 	ld	hl,#0x1004
   5411 E5            [11] 1301 	push	hl
   5412 C5            [11] 1302 	push	bc
   5413 D5            [11] 1303 	push	de
   5414 CD 7C 68      [17] 1304 	call	_cpct_drawSprite
                           1305 ;src/game/world.c:259: break;
   5417 C3 2C 55      [10] 1306 	jp	00128$
                           1307 ;src/game/world.c:260: case WATER:
   541A                    1308 00108$:
                           1309 ;src/game/world.c:261: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   541A 11 5D 5E      [10] 1310 	ld	de,#_water
   541D 21 04 10      [10] 1311 	ld	hl,#0x1004
   5420 E5            [11] 1312 	push	hl
   5421 C5            [11] 1313 	push	bc
   5422 D5            [11] 1314 	push	de
   5423 CD 7C 68      [17] 1315 	call	_cpct_drawSprite
                           1316 ;src/game/world.c:262: break;
   5426 C3 2C 55      [10] 1317 	jp	00128$
                           1318 ;src/game/world.c:263: case FOREST:
   5429                    1319 00109$:
                           1320 ;src/game/world.c:264: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   5429 11 5D 5D      [10] 1321 	ld	de,#_forest
   542C 21 04 10      [10] 1322 	ld	hl,#0x1004
   542F E5            [11] 1323 	push	hl
   5430 C5            [11] 1324 	push	bc
   5431 D5            [11] 1325 	push	de
   5432 CD 7C 68      [17] 1326 	call	_cpct_drawSprite
                           1327 ;src/game/world.c:265: break;
   5435 C3 2C 55      [10] 1328 	jp	00128$
                           1329 ;src/game/world.c:266: case LIVESTOCK:
   5438                    1330 00110$:
                           1331 ;src/game/world.c:267: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   5438 11 1D 5F      [10] 1332 	ld	de,#_livestock
   543B 21 04 10      [10] 1333 	ld	hl,#0x1004
   543E E5            [11] 1334 	push	hl
   543F C5            [11] 1335 	push	bc
   5440 D5            [11] 1336 	push	de
   5441 CD 7C 68      [17] 1337 	call	_cpct_drawSprite
                           1338 ;src/game/world.c:268: break;
   5444 C3 2C 55      [10] 1339 	jp	00128$
                           1340 ;src/game/world.c:269: case SSNS:
   5447                    1341 00111$:
                           1342 ;src/game/world.c:270: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5447 11 5D 5F      [10] 1343 	ld	de,#_station_small_ns
   544A 21 04 10      [10] 1344 	ld	hl,#0x1004
   544D E5            [11] 1345 	push	hl
   544E C5            [11] 1346 	push	bc
   544F D5            [11] 1347 	push	de
   5450 CD 7C 68      [17] 1348 	call	_cpct_drawSprite
                           1349 ;src/game/world.c:271: break;
   5453 C3 2C 55      [10] 1350 	jp	00128$
                           1351 ;src/game/world.c:272: case SSEW:
   5456                    1352 00112$:
                           1353 ;src/game/world.c:273: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   5456 11 9D 5F      [10] 1354 	ld	de,#_station_small_ew
   5459 21 04 10      [10] 1355 	ld	hl,#0x1004
   545C E5            [11] 1356 	push	hl
   545D C5            [11] 1357 	push	bc
   545E D5            [11] 1358 	push	de
   545F CD 7C 68      [17] 1359 	call	_cpct_drawSprite
                           1360 ;src/game/world.c:274: break;
   5462 C3 2C 55      [10] 1361 	jp	00128$
                           1362 ;src/game/world.c:275: case SMNS:
   5465                    1363 00113$:
                           1364 ;src/game/world.c:276: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   5465 11 DD 5F      [10] 1365 	ld	de,#_station_medium_ns
   5468 21 04 10      [10] 1366 	ld	hl,#0x1004
   546B E5            [11] 1367 	push	hl
   546C C5            [11] 1368 	push	bc
   546D D5            [11] 1369 	push	de
   546E CD 7C 68      [17] 1370 	call	_cpct_drawSprite
                           1371 ;src/game/world.c:277: break;
   5471 C3 2C 55      [10] 1372 	jp	00128$
                           1373 ;src/game/world.c:278: case SMEW:
   5474                    1374 00114$:
                           1375 ;src/game/world.c:279: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   5474 11 1D 60      [10] 1376 	ld	de,#_station_medium_ew
   5477 21 04 10      [10] 1377 	ld	hl,#0x1004
   547A E5            [11] 1378 	push	hl
   547B C5            [11] 1379 	push	bc
   547C D5            [11] 1380 	push	de
   547D CD 7C 68      [17] 1381 	call	_cpct_drawSprite
                           1382 ;src/game/world.c:280: break;
   5480 C3 2C 55      [10] 1383 	jp	00128$
                           1384 ;src/game/world.c:281: case SLNS:
   5483                    1385 00115$:
                           1386 ;src/game/world.c:282: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   5483 11 5D 60      [10] 1387 	ld	de,#_station_large_ns
   5486 21 04 10      [10] 1388 	ld	hl,#0x1004
   5489 E5            [11] 1389 	push	hl
   548A C5            [11] 1390 	push	bc
   548B D5            [11] 1391 	push	de
   548C CD 7C 68      [17] 1392 	call	_cpct_drawSprite
                           1393 ;src/game/world.c:283: break;
   548F C3 2C 55      [10] 1394 	jp	00128$
                           1395 ;src/game/world.c:284: case SLEW:
   5492                    1396 00116$:
                           1397 ;src/game/world.c:285: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   5492 11 9D 60      [10] 1398 	ld	de,#_station_large_ew
   5495 21 04 10      [10] 1399 	ld	hl,#0x1004
   5498 E5            [11] 1400 	push	hl
   5499 C5            [11] 1401 	push	bc
   549A D5            [11] 1402 	push	de
   549B CD 7C 68      [17] 1403 	call	_cpct_drawSprite
                           1404 ;src/game/world.c:286: break;
   549E C3 2C 55      [10] 1405 	jp	00128$
                           1406 ;src/game/world.c:287: case REW:
   54A1                    1407 00117$:
                           1408 ;src/game/world.c:288: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   54A1 11 DD 60      [10] 1409 	ld	de,#_rail_ew
   54A4 21 04 10      [10] 1410 	ld	hl,#0x1004
   54A7 E5            [11] 1411 	push	hl
   54A8 C5            [11] 1412 	push	bc
   54A9 D5            [11] 1413 	push	de
   54AA CD 7C 68      [17] 1414 	call	_cpct_drawSprite
                           1415 ;src/game/world.c:289: break;
   54AD C3 2C 55      [10] 1416 	jp	00128$
                           1417 ;src/game/world.c:290: case RNS:
   54B0                    1418 00118$:
                           1419 ;src/game/world.c:291: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   54B0 11 1D 61      [10] 1420 	ld	de,#_rail_ns
   54B3 21 04 10      [10] 1421 	ld	hl,#0x1004
   54B6 E5            [11] 1422 	push	hl
   54B7 C5            [11] 1423 	push	bc
   54B8 D5            [11] 1424 	push	de
   54B9 CD 7C 68      [17] 1425 	call	_cpct_drawSprite
                           1426 ;src/game/world.c:292: break;
   54BC 18 6E         [12] 1427 	jr	00128$
                           1428 ;src/game/world.c:293: case REN:
   54BE                    1429 00119$:
                           1430 ;src/game/world.c:294: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   54BE 11 5D 61      [10] 1431 	ld	de,#_rail_en
   54C1 21 04 10      [10] 1432 	ld	hl,#0x1004
   54C4 E5            [11] 1433 	push	hl
   54C5 C5            [11] 1434 	push	bc
   54C6 D5            [11] 1435 	push	de
   54C7 CD 7C 68      [17] 1436 	call	_cpct_drawSprite
                           1437 ;src/game/world.c:295: break;
   54CA 18 60         [12] 1438 	jr	00128$
                           1439 ;src/game/world.c:296: case RES:
   54CC                    1440 00120$:
                           1441 ;src/game/world.c:297: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   54CC 11 9D 61      [10] 1442 	ld	de,#_rail_es
   54CF 21 04 10      [10] 1443 	ld	hl,#0x1004
   54D2 E5            [11] 1444 	push	hl
   54D3 C5            [11] 1445 	push	bc
   54D4 D5            [11] 1446 	push	de
   54D5 CD 7C 68      [17] 1447 	call	_cpct_drawSprite
                           1448 ;src/game/world.c:298: break;
   54D8 18 52         [12] 1449 	jr	00128$
                           1450 ;src/game/world.c:299: case RWN:
   54DA                    1451 00121$:
                           1452 ;src/game/world.c:300: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   54DA 11 DD 61      [10] 1453 	ld	de,#_rail_wn
   54DD 21 04 10      [10] 1454 	ld	hl,#0x1004
   54E0 E5            [11] 1455 	push	hl
   54E1 C5            [11] 1456 	push	bc
   54E2 D5            [11] 1457 	push	de
   54E3 CD 7C 68      [17] 1458 	call	_cpct_drawSprite
                           1459 ;src/game/world.c:301: break;
   54E6 18 44         [12] 1460 	jr	00128$
                           1461 ;src/game/world.c:302: case RWS:
   54E8                    1462 00122$:
                           1463 ;src/game/world.c:303: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   54E8 11 1D 62      [10] 1464 	ld	de,#_rail_ws
   54EB 21 04 10      [10] 1465 	ld	hl,#0x1004
   54EE E5            [11] 1466 	push	hl
   54EF C5            [11] 1467 	push	bc
   54F0 D5            [11] 1468 	push	de
   54F1 CD 7C 68      [17] 1469 	call	_cpct_drawSprite
                           1470 ;src/game/world.c:304: break;
   54F4 18 36         [12] 1471 	jr	00128$
                           1472 ;src/game/world.c:305: case REWN:
   54F6                    1473 00123$:
                           1474 ;src/game/world.c:306: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   54F6 11 5D 62      [10] 1475 	ld	de,#_rail_ew_n
   54F9 21 04 10      [10] 1476 	ld	hl,#0x1004
   54FC E5            [11] 1477 	push	hl
   54FD C5            [11] 1478 	push	bc
   54FE D5            [11] 1479 	push	de
   54FF CD 7C 68      [17] 1480 	call	_cpct_drawSprite
                           1481 ;src/game/world.c:307: break;
   5502 18 28         [12] 1482 	jr	00128$
                           1483 ;src/game/world.c:308: case REWS:
   5504                    1484 00124$:
                           1485 ;src/game/world.c:309: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5504 11 9D 62      [10] 1486 	ld	de,#_rail_ew_s
   5507 21 04 10      [10] 1487 	ld	hl,#0x1004
   550A E5            [11] 1488 	push	hl
   550B C5            [11] 1489 	push	bc
   550C D5            [11] 1490 	push	de
   550D CD 7C 68      [17] 1491 	call	_cpct_drawSprite
                           1492 ;src/game/world.c:310: break;
   5510 18 1A         [12] 1493 	jr	00128$
                           1494 ;src/game/world.c:311: case RNSE:
   5512                    1495 00125$:
                           1496 ;src/game/world.c:312: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5512 11 1D 63      [10] 1497 	ld	de,#_rail_ns_e
   5515 21 04 10      [10] 1498 	ld	hl,#0x1004
   5518 E5            [11] 1499 	push	hl
   5519 C5            [11] 1500 	push	bc
   551A D5            [11] 1501 	push	de
   551B CD 7C 68      [17] 1502 	call	_cpct_drawSprite
                           1503 ;src/game/world.c:313: break;
   551E 18 0C         [12] 1504 	jr	00128$
                           1505 ;src/game/world.c:314: case RNSW:
   5520                    1506 00126$:
                           1507 ;src/game/world.c:315: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   5520 11 DD 62      [10] 1508 	ld	de,#_rail_ns_w
   5523 21 04 10      [10] 1509 	ld	hl,#0x1004
   5526 E5            [11] 1510 	push	hl
   5527 C5            [11] 1511 	push	bc
   5528 D5            [11] 1512 	push	de
   5529 CD 7C 68      [17] 1513 	call	_cpct_drawSprite
                           1514 ;src/game/world.c:317: }
   552C                    1515 00128$:
   552C DD E1         [14] 1516 	pop	ix
   552E C9            [10] 1517 	ret
                           1518 ;src/game/world.c:320: void drawScrolls(u8 x_, u8 y_)
                           1519 ;	---------------------------------
                           1520 ; Function drawScrolls
                           1521 ; ---------------------------------
   552F                    1522 _drawScrolls::
   552F DD E5         [15] 1523 	push	ix
   5531 DD 21 00 00   [14] 1524 	ld	ix,#0
   5535 DD 39         [15] 1525 	add	ix,sp
   5537 3B            [ 6] 1526 	dec	sp
                           1527 ;src/game/world.c:326: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   5538 DD 4E 04      [19] 1528 	ld	c,4 (ix)
   553B 06 00         [ 7] 1529 	ld	b,#0x00
   553D 69            [ 4] 1530 	ld	l, c
   553E 60            [ 4] 1531 	ld	h, b
   553F 29            [11] 1532 	add	hl, hl
   5540 29            [11] 1533 	add	hl, hl
   5541 29            [11] 1534 	add	hl, hl
   5542 09            [11] 1535 	add	hl, bc
   5543 29            [11] 1536 	add	hl, hl
   5544 09            [11] 1537 	add	hl, bc
   5545 29            [11] 1538 	add	hl, hl
   5546 29            [11] 1539 	add	hl, hl
   5547 01 3C 00      [10] 1540 	ld	bc,#0x003C
   554A C5            [11] 1541 	push	bc
   554B E5            [11] 1542 	push	hl
   554C CD F9 6B      [17] 1543 	call	__divsint
   554F F1            [10] 1544 	pop	af
   5550 F1            [10] 1545 	pop	af
   5551 55            [ 4] 1546 	ld	d,l
                           1547 ;src/game/world.c:327: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   5552 DD 4E 05      [19] 1548 	ld	c,5 (ix)
   5555 06 00         [ 7] 1549 	ld	b,#0x00
   5557 69            [ 4] 1550 	ld	l, c
   5558 60            [ 4] 1551 	ld	h, b
   5559 29            [11] 1552 	add	hl, hl
   555A 29            [11] 1553 	add	hl, hl
   555B 09            [11] 1554 	add	hl, bc
   555C 29            [11] 1555 	add	hl, hl
   555D 09            [11] 1556 	add	hl, bc
   555E 29            [11] 1557 	add	hl, hl
   555F 29            [11] 1558 	add	hl, hl
   5560 29            [11] 1559 	add	hl, hl
   5561 29            [11] 1560 	add	hl, hl
   5562 D5            [11] 1561 	push	de
   5563 01 24 00      [10] 1562 	ld	bc,#0x0024
   5566 C5            [11] 1563 	push	bc
   5567 E5            [11] 1564 	push	hl
   5568 CD F9 6B      [17] 1565 	call	__divsint
   556B F1            [10] 1566 	pop	af
   556C F1            [10] 1567 	pop	af
   556D D1            [10] 1568 	pop	de
   556E DD 75 FF      [19] 1569 	ld	-1 (ix),l
                           1570 ;src/game/world.c:329: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   5571 AF            [ 4] 1571 	xor	a, a
   5572 F5            [11] 1572 	push	af
   5573 33            [ 6] 1573 	inc	sp
   5574 D5            [11] 1574 	push	de
   5575 33            [ 6] 1575 	inc	sp
   5576 21 00 C0      [10] 1576 	ld	hl,#0xC000
   5579 E5            [11] 1577 	push	hl
   557A CD A8 6B      [17] 1578 	call	_cpct_getScreenPtr
                           1579 ;src/game/world.c:330: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   557D E5            [11] 1580 	push	hl
   557E 21 00 00      [10] 1581 	ld	hl,#0x0000
   5581 E5            [11] 1582 	push	hl
   5582 2E 00         [ 7] 1583 	ld	l, #0x00
   5584 E5            [11] 1584 	push	hl
   5585 CD 82 6A      [17] 1585 	call	_cpct_px2byteM1
   5588 F1            [10] 1586 	pop	af
   5589 F1            [10] 1587 	pop	af
   558A 45            [ 4] 1588 	ld	b,l
   558B D1            [10] 1589 	pop	de
   558C 21 04 04      [10] 1590 	ld	hl,#0x0404
   558F E5            [11] 1591 	push	hl
   5590 C5            [11] 1592 	push	bc
   5591 33            [ 6] 1593 	inc	sp
   5592 D5            [11] 1594 	push	de
   5593 CD EF 6A      [17] 1595 	call	_cpct_drawSolidBox
   5596 F1            [10] 1596 	pop	af
   5597 F1            [10] 1597 	pop	af
   5598 33            [ 6] 1598 	inc	sp
                           1599 ;src/game/world.c:332: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   5599 DD 7E FF      [19] 1600 	ld	a,-1 (ix)
   559C F5            [11] 1601 	push	af
   559D 33            [ 6] 1602 	inc	sp
   559E AF            [ 4] 1603 	xor	a, a
   559F F5            [11] 1604 	push	af
   55A0 33            [ 6] 1605 	inc	sp
   55A1 21 00 C0      [10] 1606 	ld	hl,#0xC000
   55A4 E5            [11] 1607 	push	hl
   55A5 CD A8 6B      [17] 1608 	call	_cpct_getScreenPtr
                           1609 ;src/game/world.c:333: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   55A8 E5            [11] 1610 	push	hl
   55A9 21 00 00      [10] 1611 	ld	hl,#0x0000
   55AC E5            [11] 1612 	push	hl
   55AD 2E 00         [ 7] 1613 	ld	l, #0x00
   55AF E5            [11] 1614 	push	hl
   55B0 CD 82 6A      [17] 1615 	call	_cpct_px2byteM1
   55B3 F1            [10] 1616 	pop	af
   55B4 F1            [10] 1617 	pop	af
   55B5 45            [ 4] 1618 	ld	b,l
   55B6 D1            [10] 1619 	pop	de
   55B7 21 01 10      [10] 1620 	ld	hl,#0x1001
   55BA E5            [11] 1621 	push	hl
   55BB C5            [11] 1622 	push	bc
   55BC 33            [ 6] 1623 	inc	sp
   55BD D5            [11] 1624 	push	de
   55BE CD EF 6A      [17] 1625 	call	_cpct_drawSolidBox
   55C1 F1            [10] 1626 	pop	af
   55C2 F1            [10] 1627 	pop	af
   55C3 33            [ 6] 1628 	inc	sp
   55C4 33            [ 6] 1629 	inc	sp
   55C5 DD E1         [14] 1630 	pop	ix
   55C7 C9            [10] 1631 	ret
                           1632 ;src/game/world.c:336: void drawWorld(u8 x_, u8 y_)
                           1633 ;	---------------------------------
                           1634 ; Function drawWorld
                           1635 ; ---------------------------------
   55C8                    1636 _drawWorld::
                           1637 ;src/game/world.c:341: for(iy=0; iy<NBTILE_H;iy++)
   55C8 16 00         [ 7] 1638 	ld	d,#0x00
                           1639 ;src/game/world.c:343: for(ix=0; ix<NBTILE_W;ix++)
   55CA                    1640 00109$:
   55CA 1E 00         [ 7] 1641 	ld	e,#0x00
   55CC                    1642 00103$:
                           1643 ;src/game/world.c:345: drawTile(x_, y_, ix, iy);
   55CC D5            [11] 1644 	push	de
   55CD D5            [11] 1645 	push	de
   55CE 21 07 00      [10] 1646 	ld	hl, #7+0
   55D1 39            [11] 1647 	add	hl, sp
   55D2 7E            [ 7] 1648 	ld	a, (hl)
   55D3 F5            [11] 1649 	push	af
   55D4 33            [ 6] 1650 	inc	sp
   55D5 21 07 00      [10] 1651 	ld	hl, #7+0
   55D8 39            [11] 1652 	add	hl, sp
   55D9 7E            [ 7] 1653 	ld	a, (hl)
   55DA F5            [11] 1654 	push	af
   55DB 33            [ 6] 1655 	inc	sp
   55DC CD 07 53      [17] 1656 	call	_drawTile
   55DF F1            [10] 1657 	pop	af
   55E0 F1            [10] 1658 	pop	af
   55E1 D1            [10] 1659 	pop	de
                           1660 ;src/game/world.c:343: for(ix=0; ix<NBTILE_W;ix++)
   55E2 1C            [ 4] 1661 	inc	e
   55E3 7B            [ 4] 1662 	ld	a,e
   55E4 D6 14         [ 7] 1663 	sub	a, #0x14
   55E6 38 E4         [12] 1664 	jr	C,00103$
                           1665 ;src/game/world.c:341: for(iy=0; iy<NBTILE_H;iy++)
   55E8 14            [ 4] 1666 	inc	d
   55E9 7A            [ 4] 1667 	ld	a,d
   55EA D6 0C         [ 7] 1668 	sub	a, #0x0C
   55EC 38 DC         [12] 1669 	jr	C,00109$
                           1670 ;src/game/world.c:349: drawScrolls(x_, y_);
   55EE 21 03 00      [10] 1671 	ld	hl, #3+0
   55F1 39            [11] 1672 	add	hl, sp
   55F2 7E            [ 7] 1673 	ld	a, (hl)
   55F3 F5            [11] 1674 	push	af
   55F4 33            [ 6] 1675 	inc	sp
   55F5 21 03 00      [10] 1676 	ld	hl, #3+0
   55F8 39            [11] 1677 	add	hl, sp
   55F9 7E            [ 7] 1678 	ld	a, (hl)
   55FA F5            [11] 1679 	push	af
   55FB 33            [ 6] 1680 	inc	sp
   55FC CD 2F 55      [17] 1681 	call	_drawScrolls
   55FF F1            [10] 1682 	pop	af
   5600 C9            [10] 1683 	ret
                           1684 	.area _CODE
                           1685 	.area _INITIALIZER
                           1686 	.area _CABS (ABS)
