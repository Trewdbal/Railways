                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Feb  7 16:09:17 2016
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
   4D9C                      64 _drawCursor::
   4D9C DD E5         [15]   65 	push	ix
   4D9E DD 21 00 00   [14]   66 	ld	ix,#0
   4DA2 DD 39         [15]   67 	add	ix,sp
   4DA4 3B            [ 6]   68 	dec	sp
                             69 ;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4DA5 DD 7E 05      [19]   70 	ld	a,5 (ix)
   4DA8 07            [ 4]   71 	rlca
   4DA9 07            [ 4]   72 	rlca
   4DAA 07            [ 4]   73 	rlca
   4DAB 07            [ 4]   74 	rlca
   4DAC E6 F0         [ 7]   75 	and	a,#0xF0
   4DAE 5F            [ 4]   76 	ld	e,a
   4DAF DD 7E 04      [19]   77 	ld	a,4 (ix)
   4DB2 87            [ 4]   78 	add	a, a
   4DB3 87            [ 4]   79 	add	a, a
   4DB4 57            [ 4]   80 	ld	d,a
   4DB5 D5            [11]   81 	push	de
   4DB6 7B            [ 4]   82 	ld	a,e
   4DB7 F5            [11]   83 	push	af
   4DB8 33            [ 6]   84 	inc	sp
   4DB9 D5            [11]   85 	push	de
   4DBA 33            [ 6]   86 	inc	sp
   4DBB 21 00 C0      [10]   87 	ld	hl,#0xC000
   4DBE E5            [11]   88 	push	hl
   4DBF CD A9 6D      [17]   89 	call	_cpct_getScreenPtr
   4DC2 D1            [10]   90 	pop	de
   4DC3 4D            [ 4]   91 	ld	c, l
   4DC4 44            [ 4]   92 	ld	b, h
                             93 ;src/game/world.c:8: switch(CURSOR_MODE)
   4DC5 3E 10         [ 7]   94 	ld	a,#0x10
   4DC7 FD 21 99 7D   [14]   95 	ld	iy,#_CURSOR_MODE
   4DCB FD 96 00      [19]   96 	sub	a, 0 (iy)
   4DCE DA CD 4F      [10]   97 	jp	C,00119$
   4DD1 D5            [11]   98 	push	de
   4DD2 FD 21 99 7D   [14]   99 	ld	iy,#_CURSOR_MODE
   4DD6 FD 5E 00      [19]  100 	ld	e,0 (iy)
   4DD9 16 00         [ 7]  101 	ld	d,#0x00
   4DDB 21 E3 4D      [10]  102 	ld	hl,#00125$
   4DDE 19            [11]  103 	add	hl,de
   4DDF 19            [11]  104 	add	hl,de
   4DE0 19            [11]  105 	add	hl,de
   4DE1 D1            [10]  106 	pop	de
   4DE2 E9            [ 4]  107 	jp	(hl)
   4DE3                     108 00125$:
   4DE3 C3 16 4E      [10]  109 	jp	00101$
   4DE6 C3 E8 4E      [10]  110 	jp	00102$
   4DE9 C3 F7 4E      [10]  111 	jp	00103$
   4DEC C3 06 4F      [10]  112 	jp	00104$
   4DEF C3 15 4F      [10]  113 	jp	00105$
   4DF2 C3 24 4F      [10]  114 	jp	00106$
   4DF5 C3 33 4F      [10]  115 	jp	00107$
   4DF8 C3 42 4F      [10]  116 	jp	00108$
   4DFB C3 51 4F      [10]  117 	jp	00109$
   4DFE C3 5F 4F      [10]  118 	jp	00110$
   4E01 C3 6D 4F      [10]  119 	jp	00111$
   4E04 C3 7B 4F      [10]  120 	jp	00112$
   4E07 C3 89 4F      [10]  121 	jp	00113$
   4E0A C3 97 4F      [10]  122 	jp	00114$
   4E0D C3 A5 4F      [10]  123 	jp	00115$
   4E10 C3 B3 4F      [10]  124 	jp	00116$
   4E13 C3 C1 4F      [10]  125 	jp	00117$
                            126 ;src/game/world.c:10: case NONE:
   4E16                     127 00101$:
                            128 ;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E16 C5            [11]  129 	push	bc
   4E17 D5            [11]  130 	push	de
   4E18 DD 66 06      [19]  131 	ld	h,6 (ix)
   4E1B DD 6E 06      [19]  132 	ld	l,6 (ix)
   4E1E E5            [11]  133 	push	hl
   4E1F DD 66 06      [19]  134 	ld	h,6 (ix)
   4E22 DD 6E 06      [19]  135 	ld	l,6 (ix)
   4E25 E5            [11]  136 	push	hl
   4E26 CD 83 6C      [17]  137 	call	_cpct_px2byteM1
   4E29 F1            [10]  138 	pop	af
   4E2A F1            [10]  139 	pop	af
   4E2B DD 75 FF      [19]  140 	ld	-1 (ix),l
   4E2E D1            [10]  141 	pop	de
   4E2F C1            [10]  142 	pop	bc
   4E30 D5            [11]  143 	push	de
   4E31 21 04 00      [10]  144 	ld	hl,#0x0004
   4E34 E5            [11]  145 	push	hl
   4E35 DD 7E FF      [19]  146 	ld	a,-1 (ix)
   4E38 F5            [11]  147 	push	af
   4E39 33            [ 6]  148 	inc	sp
   4E3A C5            [11]  149 	push	bc
   4E3B CD 75 6C      [17]  150 	call	_cpct_memset
   4E3E D1            [10]  151 	pop	de
                            152 ;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4E3F 63            [ 4]  153 	ld	h,e
   4E40 24            [ 4]  154 	inc	h
   4E41 D5            [11]  155 	push	de
   4E42 E5            [11]  156 	push	hl
   4E43 33            [ 6]  157 	inc	sp
   4E44 D5            [11]  158 	push	de
   4E45 33            [ 6]  159 	inc	sp
   4E46 21 00 C0      [10]  160 	ld	hl,#0xC000
   4E49 E5            [11]  161 	push	hl
   4E4A CD A9 6D      [17]  162 	call	_cpct_getScreenPtr
   4E4D D1            [10]  163 	pop	de
                            164 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E4E E5            [11]  165 	push	hl
   4E4F D5            [11]  166 	push	de
   4E50 DD 66 06      [19]  167 	ld	h,6 (ix)
   4E53 DD 6E 06      [19]  168 	ld	l,6 (ix)
   4E56 E5            [11]  169 	push	hl
   4E57 DD 66 06      [19]  170 	ld	h,6 (ix)
   4E5A DD 6E 06      [19]  171 	ld	l,6 (ix)
   4E5D E5            [11]  172 	push	hl
   4E5E CD 83 6C      [17]  173 	call	_cpct_px2byteM1
   4E61 F1            [10]  174 	pop	af
   4E62 F1            [10]  175 	pop	af
   4E63 5D            [ 4]  176 	ld	e,l
   4E64 F1            [10]  177 	pop	af
   4E65 57            [ 4]  178 	ld	d,a
   4E66 C1            [10]  179 	pop	bc
   4E67 D5            [11]  180 	push	de
   4E68 21 04 00      [10]  181 	ld	hl,#0x0004
   4E6B E5            [11]  182 	push	hl
   4E6C 7B            [ 4]  183 	ld	a,e
   4E6D F5            [11]  184 	push	af
   4E6E 33            [ 6]  185 	inc	sp
   4E6F C5            [11]  186 	push	bc
   4E70 CD 75 6C      [17]  187 	call	_cpct_memset
   4E73 D1            [10]  188 	pop	de
                            189 ;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4E74 DD 7E 05      [19]  190 	ld	a,5 (ix)
   4E77 3C            [ 4]  191 	inc	a
   4E78 07            [ 4]  192 	rlca
   4E79 07            [ 4]  193 	rlca
   4E7A 07            [ 4]  194 	rlca
   4E7B 07            [ 4]  195 	rlca
   4E7C E6 F0         [ 7]  196 	and	a,#0xF0
   4E7E 5F            [ 4]  197 	ld	e,a
   4E7F 63            [ 4]  198 	ld	h,e
   4E80 25            [ 4]  199 	dec	h
   4E81 D5            [11]  200 	push	de
   4E82 E5            [11]  201 	push	hl
   4E83 33            [ 6]  202 	inc	sp
   4E84 D5            [11]  203 	push	de
   4E85 33            [ 6]  204 	inc	sp
   4E86 21 00 C0      [10]  205 	ld	hl,#0xC000
   4E89 E5            [11]  206 	push	hl
   4E8A CD A9 6D      [17]  207 	call	_cpct_getScreenPtr
   4E8D D1            [10]  208 	pop	de
                            209 ;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E8E E5            [11]  210 	push	hl
   4E8F D5            [11]  211 	push	de
   4E90 DD 66 06      [19]  212 	ld	h,6 (ix)
   4E93 DD 6E 06      [19]  213 	ld	l,6 (ix)
   4E96 E5            [11]  214 	push	hl
   4E97 DD 66 06      [19]  215 	ld	h,6 (ix)
   4E9A DD 6E 06      [19]  216 	ld	l,6 (ix)
   4E9D E5            [11]  217 	push	hl
   4E9E CD 83 6C      [17]  218 	call	_cpct_px2byteM1
   4EA1 F1            [10]  219 	pop	af
   4EA2 F1            [10]  220 	pop	af
   4EA3 DD 75 FF      [19]  221 	ld	-1 (ix),l
   4EA6 D1            [10]  222 	pop	de
   4EA7 C1            [10]  223 	pop	bc
   4EA8 D5            [11]  224 	push	de
   4EA9 21 04 00      [10]  225 	ld	hl,#0x0004
   4EAC E5            [11]  226 	push	hl
   4EAD DD 7E FF      [19]  227 	ld	a,-1 (ix)
   4EB0 F5            [11]  228 	push	af
   4EB1 33            [ 6]  229 	inc	sp
   4EB2 C5            [11]  230 	push	bc
   4EB3 CD 75 6C      [17]  231 	call	_cpct_memset
   4EB6 D1            [10]  232 	pop	de
                            233 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4EB7 63            [ 4]  234 	ld	h,e
   4EB8 25            [ 4]  235 	dec	h
   4EB9 25            [ 4]  236 	dec	h
   4EBA E5            [11]  237 	push	hl
   4EBB 33            [ 6]  238 	inc	sp
   4EBC D5            [11]  239 	push	de
   4EBD 33            [ 6]  240 	inc	sp
   4EBE 21 00 C0      [10]  241 	ld	hl,#0xC000
   4EC1 E5            [11]  242 	push	hl
   4EC2 CD A9 6D      [17]  243 	call	_cpct_getScreenPtr
                            244 ;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4EC5 E5            [11]  245 	push	hl
   4EC6 DD 66 06      [19]  246 	ld	h,6 (ix)
   4EC9 DD 6E 06      [19]  247 	ld	l,6 (ix)
   4ECC E5            [11]  248 	push	hl
   4ECD DD 66 06      [19]  249 	ld	h,6 (ix)
   4ED0 DD 6E 06      [19]  250 	ld	l,6 (ix)
   4ED3 E5            [11]  251 	push	hl
   4ED4 CD 83 6C      [17]  252 	call	_cpct_px2byteM1
   4ED7 F1            [10]  253 	pop	af
   4ED8 F1            [10]  254 	pop	af
   4ED9 65            [ 4]  255 	ld	h,l
   4EDA D1            [10]  256 	pop	de
   4EDB 01 04 00      [10]  257 	ld	bc,#0x0004
   4EDE C5            [11]  258 	push	bc
   4EDF E5            [11]  259 	push	hl
   4EE0 33            [ 6]  260 	inc	sp
   4EE1 D5            [11]  261 	push	de
   4EE2 CD 75 6C      [17]  262 	call	_cpct_memset
                            263 ;src/game/world.c:20: break;
   4EE5 C3 CD 4F      [10]  264 	jp	00119$
                            265 ;src/game/world.c:21: case T_SSNS:
   4EE8                     266 00102$:
                            267 ;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EE8 11 8D 60      [10]  268 	ld	de,#_station_small_ns
   4EEB 21 04 10      [10]  269 	ld	hl,#0x1004
   4EEE E5            [11]  270 	push	hl
   4EEF C5            [11]  271 	push	bc
   4EF0 D5            [11]  272 	push	de
   4EF1 CD AC 69      [17]  273 	call	_cpct_drawSprite
                            274 ;src/game/world.c:23: break;
   4EF4 C3 CD 4F      [10]  275 	jp	00119$
                            276 ;src/game/world.c:24: case T_SSEW:
   4EF7                     277 00103$:
                            278 ;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EF7 11 CD 60      [10]  279 	ld	de,#_station_small_ew
   4EFA 21 04 10      [10]  280 	ld	hl,#0x1004
   4EFD E5            [11]  281 	push	hl
   4EFE C5            [11]  282 	push	bc
   4EFF D5            [11]  283 	push	de
   4F00 CD AC 69      [17]  284 	call	_cpct_drawSprite
                            285 ;src/game/world.c:26: break;
   4F03 C3 CD 4F      [10]  286 	jp	00119$
                            287 ;src/game/world.c:27: case T_SMNS:
   4F06                     288 00104$:
                            289 ;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4F06 11 0D 61      [10]  290 	ld	de,#_station_medium_ns
   4F09 21 04 10      [10]  291 	ld	hl,#0x1004
   4F0C E5            [11]  292 	push	hl
   4F0D C5            [11]  293 	push	bc
   4F0E D5            [11]  294 	push	de
   4F0F CD AC 69      [17]  295 	call	_cpct_drawSprite
                            296 ;src/game/world.c:29: break;
   4F12 C3 CD 4F      [10]  297 	jp	00119$
                            298 ;src/game/world.c:30: case T_SMEW:
   4F15                     299 00105$:
                            300 ;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4F15 11 4D 61      [10]  301 	ld	de,#_station_medium_ew
   4F18 21 04 10      [10]  302 	ld	hl,#0x1004
   4F1B E5            [11]  303 	push	hl
   4F1C C5            [11]  304 	push	bc
   4F1D D5            [11]  305 	push	de
   4F1E CD AC 69      [17]  306 	call	_cpct_drawSprite
                            307 ;src/game/world.c:32: break;
   4F21 C3 CD 4F      [10]  308 	jp	00119$
                            309 ;src/game/world.c:33: case T_SLNS:
   4F24                     310 00106$:
                            311 ;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4F24 11 8D 61      [10]  312 	ld	de,#_station_large_ns
   4F27 21 04 10      [10]  313 	ld	hl,#0x1004
   4F2A E5            [11]  314 	push	hl
   4F2B C5            [11]  315 	push	bc
   4F2C D5            [11]  316 	push	de
   4F2D CD AC 69      [17]  317 	call	_cpct_drawSprite
                            318 ;src/game/world.c:35: break;
   4F30 C3 CD 4F      [10]  319 	jp	00119$
                            320 ;src/game/world.c:36: case T_SLEW:
   4F33                     321 00107$:
                            322 ;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4F33 11 CD 61      [10]  323 	ld	de,#_station_large_ew
   4F36 21 04 10      [10]  324 	ld	hl,#0x1004
   4F39 E5            [11]  325 	push	hl
   4F3A C5            [11]  326 	push	bc
   4F3B D5            [11]  327 	push	de
   4F3C CD AC 69      [17]  328 	call	_cpct_drawSprite
                            329 ;src/game/world.c:38: break;
   4F3F C3 CD 4F      [10]  330 	jp	00119$
                            331 ;src/game/world.c:39: case T_REW:
   4F42                     332 00108$:
                            333 ;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   4F42 11 0D 62      [10]  334 	ld	de,#_rail_ew
   4F45 21 04 10      [10]  335 	ld	hl,#0x1004
   4F48 E5            [11]  336 	push	hl
   4F49 C5            [11]  337 	push	bc
   4F4A D5            [11]  338 	push	de
   4F4B CD AC 69      [17]  339 	call	_cpct_drawSprite
                            340 ;src/game/world.c:41: break;
   4F4E C3 CD 4F      [10]  341 	jp	00119$
                            342 ;src/game/world.c:42: case T_RNS:
   4F51                     343 00109$:
                            344 ;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   4F51 11 4D 62      [10]  345 	ld	de,#_rail_ns
   4F54 21 04 10      [10]  346 	ld	hl,#0x1004
   4F57 E5            [11]  347 	push	hl
   4F58 C5            [11]  348 	push	bc
   4F59 D5            [11]  349 	push	de
   4F5A CD AC 69      [17]  350 	call	_cpct_drawSprite
                            351 ;src/game/world.c:44: break;
   4F5D 18 6E         [12]  352 	jr	00119$
                            353 ;src/game/world.c:45: case T_REN:
   4F5F                     354 00110$:
                            355 ;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   4F5F 11 8D 62      [10]  356 	ld	de,#_rail_en
   4F62 21 04 10      [10]  357 	ld	hl,#0x1004
   4F65 E5            [11]  358 	push	hl
   4F66 C5            [11]  359 	push	bc
   4F67 D5            [11]  360 	push	de
   4F68 CD AC 69      [17]  361 	call	_cpct_drawSprite
                            362 ;src/game/world.c:47: break;
   4F6B 18 60         [12]  363 	jr	00119$
                            364 ;src/game/world.c:48: case T_RES:
   4F6D                     365 00111$:
                            366 ;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   4F6D 11 CD 62      [10]  367 	ld	de,#_rail_es
   4F70 21 04 10      [10]  368 	ld	hl,#0x1004
   4F73 E5            [11]  369 	push	hl
   4F74 C5            [11]  370 	push	bc
   4F75 D5            [11]  371 	push	de
   4F76 CD AC 69      [17]  372 	call	_cpct_drawSprite
                            373 ;src/game/world.c:50: break;
   4F79 18 52         [12]  374 	jr	00119$
                            375 ;src/game/world.c:51: case T_RWN:
   4F7B                     376 00112$:
                            377 ;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   4F7B 11 0D 63      [10]  378 	ld	de,#_rail_wn
   4F7E 21 04 10      [10]  379 	ld	hl,#0x1004
   4F81 E5            [11]  380 	push	hl
   4F82 C5            [11]  381 	push	bc
   4F83 D5            [11]  382 	push	de
   4F84 CD AC 69      [17]  383 	call	_cpct_drawSprite
                            384 ;src/game/world.c:53: break;
   4F87 18 44         [12]  385 	jr	00119$
                            386 ;src/game/world.c:54: case T_RWS:
   4F89                     387 00113$:
                            388 ;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   4F89 11 4D 63      [10]  389 	ld	de,#_rail_ws
   4F8C 21 04 10      [10]  390 	ld	hl,#0x1004
   4F8F E5            [11]  391 	push	hl
   4F90 C5            [11]  392 	push	bc
   4F91 D5            [11]  393 	push	de
   4F92 CD AC 69      [17]  394 	call	_cpct_drawSprite
                            395 ;src/game/world.c:56: break;
   4F95 18 36         [12]  396 	jr	00119$
                            397 ;src/game/world.c:57: case T_REWN:
   4F97                     398 00114$:
                            399 ;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   4F97 11 8D 63      [10]  400 	ld	de,#_rail_ew_n
   4F9A 21 04 10      [10]  401 	ld	hl,#0x1004
   4F9D E5            [11]  402 	push	hl
   4F9E C5            [11]  403 	push	bc
   4F9F D5            [11]  404 	push	de
   4FA0 CD AC 69      [17]  405 	call	_cpct_drawSprite
                            406 ;src/game/world.c:59: break;
   4FA3 18 28         [12]  407 	jr	00119$
                            408 ;src/game/world.c:60: case T_REWS:
   4FA5                     409 00115$:
                            410 ;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   4FA5 11 CD 63      [10]  411 	ld	de,#_rail_ew_s
   4FA8 21 04 10      [10]  412 	ld	hl,#0x1004
   4FAB E5            [11]  413 	push	hl
   4FAC C5            [11]  414 	push	bc
   4FAD D5            [11]  415 	push	de
   4FAE CD AC 69      [17]  416 	call	_cpct_drawSprite
                            417 ;src/game/world.c:62: break;
   4FB1 18 1A         [12]  418 	jr	00119$
                            419 ;src/game/world.c:63: case T_RNSE:
   4FB3                     420 00116$:
                            421 ;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   4FB3 11 4D 64      [10]  422 	ld	de,#_rail_ns_e
   4FB6 21 04 10      [10]  423 	ld	hl,#0x1004
   4FB9 E5            [11]  424 	push	hl
   4FBA C5            [11]  425 	push	bc
   4FBB D5            [11]  426 	push	de
   4FBC CD AC 69      [17]  427 	call	_cpct_drawSprite
                            428 ;src/game/world.c:65: break;
   4FBF 18 0C         [12]  429 	jr	00119$
                            430 ;src/game/world.c:66: case T_RNSW:
   4FC1                     431 00117$:
                            432 ;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   4FC1 11 0D 64      [10]  433 	ld	de,#_rail_ns_w
   4FC4 21 04 10      [10]  434 	ld	hl,#0x1004
   4FC7 E5            [11]  435 	push	hl
   4FC8 C5            [11]  436 	push	bc
   4FC9 D5            [11]  437 	push	de
   4FCA CD AC 69      [17]  438 	call	_cpct_drawSprite
                            439 ;src/game/world.c:69: }
   4FCD                     440 00119$:
   4FCD 33            [ 6]  441 	inc	sp
   4FCE DD E1         [14]  442 	pop	ix
   4FD0 C9            [10]  443 	ret
                            444 ;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            445 ;	---------------------------------
                            446 ; Function patternTile
                            447 ; ---------------------------------
   4FD1                     448 _patternTile::
   4FD1 DD E5         [15]  449 	push	ix
   4FD3 DD 21 00 00   [14]  450 	ld	ix,#0
   4FD7 DD 39         [15]  451 	add	ix,sp
   4FD9 21 F5 FF      [10]  452 	ld	hl,#-11
   4FDC 39            [11]  453 	add	hl,sp
   4FDD F9            [ 6]  454 	ld	sp,hl
                            455 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   4FDE DD 7E 04      [19]  456 	ld	a,4 (ix)
   4FE1 D6 08         [ 7]  457 	sub	a, #0x08
   4FE3 20 04         [12]  458 	jr	NZ,00153$
   4FE5 3E 01         [ 7]  459 	ld	a,#0x01
   4FE7 18 01         [12]  460 	jr	00154$
   4FE9                     461 00153$:
   4FE9 AF            [ 4]  462 	xor	a,a
   4FEA                     463 00154$:
   4FEA DD 77 FA      [19]  464 	ld	-6 (ix),a
   4FED DD 7E 04      [19]  465 	ld	a,4 (ix)
   4FF0 D6 02         [ 7]  466 	sub	a, #0x02
   4FF2 20 04         [12]  467 	jr	NZ,00155$
   4FF4 3E 01         [ 7]  468 	ld	a,#0x01
   4FF6 18 01         [12]  469 	jr	00156$
   4FF8                     470 00155$:
   4FF8 AF            [ 4]  471 	xor	a,a
   4FF9                     472 00156$:
   4FF9 DD 77 F9      [19]  473 	ld	-7 (ix),a
   4FFC DD 36 F5 00   [19]  474 	ld	-11 (ix),#0x00
   5000 11 00 00      [10]  475 	ld	de,#0x0000
   5003                     476 00115$:
   5003 DD 7E F5      [19]  477 	ld	a,-11 (ix)
   5006 DD 96 08      [19]  478 	sub	a, 8 (ix)
   5009 D2 C9 50      [10]  479 	jp	NC,00117$
                            480 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   500C DD 7E 05      [19]  481 	ld	a,5 (ix)
   500F 83            [ 4]  482 	add	a, e
   5010 DD 77 F7      [19]  483 	ld	-9 (ix),a
   5013 DD 7E 06      [19]  484 	ld	a,6 (ix)
   5016 8A            [ 4]  485 	adc	a, d
   5017 DD 77 F8      [19]  486 	ld	-8 (ix),a
   501A D5            [11]  487 	push	de
   501B DD 5E 07      [19]  488 	ld	e,7 (ix)
   501E DD 66 F5      [19]  489 	ld	h,-11 (ix)
   5021 2E 00         [ 7]  490 	ld	l, #0x00
   5023 55            [ 4]  491 	ld	d, l
   5024 06 08         [ 7]  492 	ld	b, #0x08
   5026                     493 00157$:
   5026 29            [11]  494 	add	hl,hl
   5027 30 01         [12]  495 	jr	NC,00158$
   5029 19            [11]  496 	add	hl,de
   502A                     497 00158$:
   502A 10 FA         [13]  498 	djnz	00157$
   502C D1            [10]  499 	pop	de
   502D DD 75 FE      [19]  500 	ld	-2 (ix),l
   5030 DD 74 FF      [19]  501 	ld	-1 (ix),h
   5033 DD 36 F6 00   [19]  502 	ld	-10 (ix),#0x00
   5037                     503 00112$:
   5037 DD 7E F6      [19]  504 	ld	a,-10 (ix)
   503A DD 96 07      [19]  505 	sub	a, 7 (ix)
   503D D2 BE 50      [10]  506 	jp	NC,00116$
                            507 ;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   5040 DD 7E F6      [19]  508 	ld	a,-10 (ix)
   5043 DD 77 FC      [19]  509 	ld	-4 (ix),a
   5046 DD 36 FD 00   [19]  510 	ld	-3 (ix),#0x00
   504A DD 7E FE      [19]  511 	ld	a,-2 (ix)
   504D DD 86 FC      [19]  512 	add	a, -4 (ix)
   5050 6F            [ 4]  513 	ld	l,a
   5051 DD 7E FF      [19]  514 	ld	a,-1 (ix)
   5054 DD 8E FD      [19]  515 	adc	a, -3 (ix)
   5057 67            [ 4]  516 	ld	h,a
   5058 DD 4E 09      [19]  517 	ld	c,9 (ix)
   505B DD 46 0A      [19]  518 	ld	b,10 (ix)
   505E D5            [11]  519 	push	de
   505F E5            [11]  520 	push	hl
   5060 C5            [11]  521 	push	bc
   5061 CD 6C 69      [17]  522 	call	_cpct_getBit
   5064 DD 75 FB      [19]  523 	ld	-5 (ix),l
   5067 D1            [10]  524 	pop	de
   5068 DD 7E FB      [19]  525 	ld	a,-5 (ix)
   506B B7            [ 4]  526 	or	a, a
   506C 28 4A         [12]  527 	jr	Z,00113$
   506E DD 7E F7      [19]  528 	ld	a,-9 (ix)
   5071 DD 86 FC      [19]  529 	add	a, -4 (ix)
   5074 4F            [ 4]  530 	ld	c,a
   5075 DD 7E F8      [19]  531 	ld	a,-8 (ix)
   5078 DD 8E FD      [19]  532 	adc	a, -3 (ix)
   507B 47            [ 4]  533 	ld	b,a
   507C EE 80         [ 7]  534 	xor	a, #0x80
   507E D6 8F         [ 7]  535 	sub	a, #0x8F
   5080 30 36         [12]  536 	jr	NC,00113$
                            537 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   5082 21 99 6E      [10]  538 	ld	hl,#_p_world
   5085 09            [11]  539 	add	hl,bc
   5086 4D            [ 4]  540 	ld	c,l
   5087 44            [ 4]  541 	ld	b,h
                            542 ;src/game/world.c:83: if(tileType == FOREST)
   5088 DD 7E FA      [19]  543 	ld	a,-6 (ix)
   508B B7            [ 4]  544 	or	a, a
   508C 28 06         [12]  545 	jr	Z,00104$
                            546 ;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
   508E DD 7E 04      [19]  547 	ld	a,4 (ix)
   5091 02            [ 7]  548 	ld	(bc),a
   5092 18 24         [12]  549 	jr	00113$
   5094                     550 00104$:
                            551 ;src/game/world.c:85: else if(tileType==DWELLINGS1)
   5094 DD 7E F9      [19]  552 	ld	a,-7 (ix)
   5097 B7            [ 4]  553 	or	a, a
   5098 28 1E         [12]  554 	jr	Z,00113$
                            555 ;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   509A C5            [11]  556 	push	bc
   509B D5            [11]  557 	push	de
   509C CD B4 6A      [17]  558 	call	_cpct_count2VSYNC
   509F CD DF 6C      [17]  559 	call	_cpct_getRandomUniform_u8_f
   50A2 DD 75 FB      [19]  560 	ld	-5 (ix),l
   50A5 3E 03         [ 7]  561 	ld	a,#0x03
   50A7 F5            [11]  562 	push	af
   50A8 33            [ 6]  563 	inc	sp
   50A9 DD 7E FB      [19]  564 	ld	a,-5 (ix)
   50AC F5            [11]  565 	push	af
   50AD 33            [ 6]  566 	inc	sp
   50AE CD 51 6A      [17]  567 	call	__moduchar
   50B1 F1            [10]  568 	pop	af
   50B2 7D            [ 4]  569 	ld	a,l
   50B3 D1            [10]  570 	pop	de
   50B4 C1            [10]  571 	pop	bc
   50B5 C6 02         [ 7]  572 	add	a, #0x02
   50B7 02            [ 7]  573 	ld	(bc),a
   50B8                     574 00113$:
                            575 ;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
   50B8 DD 34 F6      [23]  576 	inc	-10 (ix)
   50BB C3 37 50      [10]  577 	jp	00112$
   50BE                     578 00116$:
                            579 ;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
   50BE 21 50 00      [10]  580 	ld	hl,#0x0050
   50C1 19            [11]  581 	add	hl,de
   50C2 EB            [ 4]  582 	ex	de,hl
   50C3 DD 34 F5      [23]  583 	inc	-11 (ix)
   50C6 C3 03 50      [10]  584 	jp	00115$
   50C9                     585 00117$:
   50C9 DD F9         [10]  586 	ld	sp, ix
   50CB DD E1         [14]  587 	pop	ix
   50CD C9            [10]  588 	ret
                            589 ;src/game/world.c:93: void generateWorld()
                            590 ;	---------------------------------
                            591 ; Function generateWorld
                            592 ; ---------------------------------
   50CE                     593 _generateWorld::
   50CE DD E5         [15]  594 	push	ix
   50D0 DD 21 00 00   [14]  595 	ld	ix,#0
   50D4 DD 39         [15]  596 	add	ix,sp
   50D6 21 E5 FF      [10]  597 	ld	hl,#-27
   50D9 39            [11]  598 	add	hl,sp
   50DA F9            [ 6]  599 	ld	sp,hl
                            600 ;src/game/world.c:100: locDelocked = 1;
   50DB FD 21 9A 7D   [14]  601 	ld	iy,#_locDelocked
   50DF FD 36 00 01   [19]  602 	ld	0 (iy),#0x01
                            603 ;src/game/world.c:101: CURSOR_MODE = NONE;
   50E3 FD 21 99 7D   [14]  604 	ld	iy,#_CURSOR_MODE
   50E7 FD 36 00 00   [19]  605 	ld	0 (iy),#0x00
                            606 ;src/game/world.c:104: cpct_srand((u32)cpct_count2VSYNC());
   50EB CD B4 6A      [17]  607 	call	_cpct_count2VSYNC
   50EE 11 00 00      [10]  608 	ld	de,#0x0000
   50F1 CD DD 6A      [17]  609 	call	_cpct_setSeed_mxor
                            610 ;src/game/world.c:108: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   50F4 11 00 00      [10]  611 	ld	de,#0x0000
   50F7                     612 00119$:
                            613 ;src/game/world.c:110: p_world[iy] = cpct_rand()%2;
   50F7 21 99 6E      [10]  614 	ld	hl,#_p_world
   50FA 19            [11]  615 	add	hl,de
   50FB E5            [11]  616 	push	hl
   50FC D5            [11]  617 	push	de
   50FD CD BB 6C      [17]  618 	call	_cpct_getRandom_mxor_u8
   5100 7D            [ 4]  619 	ld	a,l
   5101 D1            [10]  620 	pop	de
   5102 E1            [10]  621 	pop	hl
   5103 E6 01         [ 7]  622 	and	a, #0x01
   5105 77            [ 7]  623 	ld	(hl),a
                            624 ;src/game/world.c:108: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   5106 13            [ 6]  625 	inc	de
   5107 7A            [ 4]  626 	ld	a,d
   5108 EE 80         [ 7]  627 	xor	a, #0x80
   510A D6 8F         [ 7]  628 	sub	a, #0x8F
   510C 38 E9         [12]  629 	jr	C,00119$
                            630 ;src/game/world.c:114: for(ix=0; ix<NBFOREST; ix++)
   510E 21 00 00      [10]  631 	ld	hl,#0x0000
   5111 39            [11]  632 	add	hl,sp
   5112 DD 75 F1      [19]  633 	ld	-15 (ix),l
   5115 DD 74 F2      [19]  634 	ld	-14 (ix),h
   5118 01 00 00      [10]  635 	ld	bc,#0x0000
   511B                     636 00121$:
                            637 ;src/game/world.c:116: iy = cpct_rand16()%(WIDTH*HEIGHT);
   511B C5            [11]  638 	push	bc
   511C CD 0A 6C      [17]  639 	call	_cpct_getRandom_mxor_u16
   511F 11 00 0F      [10]  640 	ld	de,#0x0F00
   5122 D5            [11]  641 	push	de
   5123 E5            [11]  642 	push	hl
   5124 CD 5D 6A      [17]  643 	call	__moduint
   5127 F1            [10]  644 	pop	af
   5128 F1            [10]  645 	pop	af
   5129 C1            [10]  646 	pop	bc
   512A DD 75 F8      [19]  647 	ld	-8 (ix),l
   512D DD 74 F9      [19]  648 	ld	-7 (ix),h
                            649 ;src/game/world.c:118: switch(cpct_rand()%4)
   5130 C5            [11]  650 	push	bc
   5131 CD BB 6C      [17]  651 	call	_cpct_getRandom_mxor_u8
   5134 7D            [ 4]  652 	ld	a,l
   5135 C1            [10]  653 	pop	bc
   5136 E6 03         [ 7]  654 	and	a, #0x03
   5138 DD 77 F7      [19]  655 	ld	-9 (ix),a
   513B 3E 03         [ 7]  656 	ld	a,#0x03
   513D DD 96 F7      [19]  657 	sub	a, -9 (ix)
   5140 DA A4 52      [10]  658 	jp	C,00106$
                            659 ;src/game/world.c:122: p_forest[1] = 0b11000111;
   5143 E5            [11]  660 	push	hl
   5144 DD 6E F1      [19]  661 	ld	l,-15 (ix)
   5147 DD 66 F2      [19]  662 	ld	h,-14 (ix)
   514A 23            [ 6]  663 	inc	hl
   514B E5            [11]  664 	push	hl
   514C FD E1         [14]  665 	pop	iy
   514E E1            [10]  666 	pop	hl
                            667 ;src/game/world.c:123: p_forest[2] = 0b11011110;
   514F DD 5E F1      [19]  668 	ld	e,-15 (ix)
   5152 DD 56 F2      [19]  669 	ld	d,-14 (ix)
   5155 13            [ 6]  670 	inc	de
   5156 13            [ 6]  671 	inc	de
                            672 ;src/game/world.c:124: p_forest[3] = 0b01111110;
   5157 DD 7E F1      [19]  673 	ld	a,-15 (ix)
   515A C6 03         [ 7]  674 	add	a, #0x03
   515C DD 77 F5      [19]  675 	ld	-11 (ix),a
   515F DD 7E F2      [19]  676 	ld	a,-14 (ix)
   5162 CE 00         [ 7]  677 	adc	a, #0x00
   5164 DD 77 F6      [19]  678 	ld	-10 (ix),a
                            679 ;src/game/world.c:125: p_forest[4] = 0b11111110; 
   5167 DD 7E F1      [19]  680 	ld	a,-15 (ix)
   516A C6 04         [ 7]  681 	add	a, #0x04
   516C DD 77 F3      [19]  682 	ld	-13 (ix),a
   516F DD 7E F2      [19]  683 	ld	a,-14 (ix)
   5172 CE 00         [ 7]  684 	adc	a, #0x00
   5174 DD 77 F4      [19]  685 	ld	-12 (ix),a
                            686 ;src/game/world.c:126: p_forest[5] = 0b01111111;
   5177 DD 7E F1      [19]  687 	ld	a,-15 (ix)
   517A C6 05         [ 7]  688 	add	a, #0x05
   517C DD 77 FE      [19]  689 	ld	-2 (ix),a
   517F DD 7E F2      [19]  690 	ld	a,-14 (ix)
   5182 CE 00         [ 7]  691 	adc	a, #0x00
   5184 DD 77 FF      [19]  692 	ld	-1 (ix),a
                            693 ;src/game/world.c:127: p_forest[6] = 0b11101111;
   5187 DD 7E F1      [19]  694 	ld	a,-15 (ix)
   518A C6 06         [ 7]  695 	add	a, #0x06
   518C DD 77 FC      [19]  696 	ld	-4 (ix),a
   518F DD 7E F2      [19]  697 	ld	a,-14 (ix)
   5192 CE 00         [ 7]  698 	adc	a, #0x00
   5194 DD 77 FD      [19]  699 	ld	-3 (ix),a
                            700 ;src/game/world.c:128: p_forest[7] = 0b11001111;
   5197 DD 7E F1      [19]  701 	ld	a,-15 (ix)
   519A C6 07         [ 7]  702 	add	a, #0x07
   519C DD 77 FA      [19]  703 	ld	-6 (ix),a
   519F DD 7E F2      [19]  704 	ld	a,-14 (ix)
   51A2 CE 00         [ 7]  705 	adc	a, #0x00
   51A4 DD 77 FB      [19]  706 	ld	-5 (ix),a
                            707 ;src/game/world.c:118: switch(cpct_rand()%4)
   51A7 D5            [11]  708 	push	de
   51A8 DD 5E F7      [19]  709 	ld	e,-9 (ix)
   51AB 16 00         [ 7]  710 	ld	d,#0x00
   51AD 21 B5 51      [10]  711 	ld	hl,#00195$
   51B0 19            [11]  712 	add	hl,de
   51B1 19            [11]  713 	add	hl,de
   51B2 19            [11]  714 	add	hl,de
   51B3 D1            [10]  715 	pop	de
   51B4 E9            [ 4]  716 	jp	(hl)
   51B5                     717 00195$:
   51B5 C3 C1 51      [10]  718 	jp	00102$
   51B8 C3 FB 51      [10]  719 	jp	00103$
   51BB C3 34 52      [10]  720 	jp	00104$
   51BE C3 6D 52      [10]  721 	jp	00105$
                            722 ;src/game/world.c:120: case 0:
   51C1                     723 00102$:
                            724 ;src/game/world.c:121: p_forest[0] = 0b10000100;
   51C1 DD 6E F1      [19]  725 	ld	l,-15 (ix)
   51C4 DD 66 F2      [19]  726 	ld	h,-14 (ix)
   51C7 36 84         [10]  727 	ld	(hl),#0x84
                            728 ;src/game/world.c:122: p_forest[1] = 0b11000111;
   51C9 FD 36 00 C7   [19]  729 	ld	0 (iy), #0xC7
                            730 ;src/game/world.c:123: p_forest[2] = 0b11011110;
   51CD 3E DE         [ 7]  731 	ld	a,#0xDE
   51CF 12            [ 7]  732 	ld	(de),a
                            733 ;src/game/world.c:124: p_forest[3] = 0b01111110;
   51D0 DD 6E F5      [19]  734 	ld	l,-11 (ix)
   51D3 DD 66 F6      [19]  735 	ld	h,-10 (ix)
   51D6 36 7E         [10]  736 	ld	(hl),#0x7E
                            737 ;src/game/world.c:125: p_forest[4] = 0b11111110; 
   51D8 DD 6E F3      [19]  738 	ld	l,-13 (ix)
   51DB DD 66 F4      [19]  739 	ld	h,-12 (ix)
   51DE 36 FE         [10]  740 	ld	(hl),#0xFE
                            741 ;src/game/world.c:126: p_forest[5] = 0b01111111;
   51E0 DD 6E FE      [19]  742 	ld	l,-2 (ix)
   51E3 DD 66 FF      [19]  743 	ld	h,-1 (ix)
   51E6 36 7F         [10]  744 	ld	(hl),#0x7F
                            745 ;src/game/world.c:127: p_forest[6] = 0b11101111;
   51E8 DD 6E FC      [19]  746 	ld	l,-4 (ix)
   51EB DD 66 FD      [19]  747 	ld	h,-3 (ix)
   51EE 36 EF         [10]  748 	ld	(hl),#0xEF
                            749 ;src/game/world.c:128: p_forest[7] = 0b11001111;
   51F0 DD 6E FA      [19]  750 	ld	l,-6 (ix)
   51F3 DD 66 FB      [19]  751 	ld	h,-5 (ix)
   51F6 36 CF         [10]  752 	ld	(hl),#0xCF
                            753 ;src/game/world.c:129: break;
   51F8 C3 A4 52      [10]  754 	jp	00106$
                            755 ;src/game/world.c:130: case 1:
   51FB                     756 00103$:
                            757 ;src/game/world.c:131: p_forest[0] = 0b00001100;
   51FB DD 6E F1      [19]  758 	ld	l,-15 (ix)
   51FE DD 66 F2      [19]  759 	ld	h,-14 (ix)
   5201 36 0C         [10]  760 	ld	(hl),#0x0C
                            761 ;src/game/world.c:132: p_forest[1] = 0b11111000;
   5203 FD 36 00 F8   [19]  762 	ld	0 (iy), #0xF8
                            763 ;src/game/world.c:133: p_forest[2] = 0b00111111;
   5207 3E 3F         [ 7]  764 	ld	a,#0x3F
   5209 12            [ 7]  765 	ld	(de),a
                            766 ;src/game/world.c:134: p_forest[3] = 0b01111110;
   520A DD 6E F5      [19]  767 	ld	l,-11 (ix)
   520D DD 66 F6      [19]  768 	ld	h,-10 (ix)
   5210 36 7E         [10]  769 	ld	(hl),#0x7E
                            770 ;src/game/world.c:135: p_forest[4] = 0b11111110; 
   5212 DD 6E F3      [19]  771 	ld	l,-13 (ix)
   5215 DD 66 F4      [19]  772 	ld	h,-12 (ix)
   5218 36 FE         [10]  773 	ld	(hl),#0xFE
                            774 ;src/game/world.c:136: p_forest[5] = 0b01011111;
   521A DD 6E FE      [19]  775 	ld	l,-2 (ix)
   521D DD 66 FF      [19]  776 	ld	h,-1 (ix)
   5220 36 5F         [10]  777 	ld	(hl),#0x5F
                            778 ;src/game/world.c:137: p_forest[6] = 0b11001111;
   5222 DD 6E FC      [19]  779 	ld	l,-4 (ix)
   5225 DD 66 FD      [19]  780 	ld	h,-3 (ix)
   5228 36 CF         [10]  781 	ld	(hl),#0xCF
                            782 ;src/game/world.c:138: p_forest[7] = 0b10001100;
   522A DD 6E FA      [19]  783 	ld	l,-6 (ix)
   522D DD 66 FB      [19]  784 	ld	h,-5 (ix)
   5230 36 8C         [10]  785 	ld	(hl),#0x8C
                            786 ;src/game/world.c:139: break;
   5232 18 70         [12]  787 	jr	00106$
                            788 ;src/game/world.c:140: case 2:
   5234                     789 00104$:
                            790 ;src/game/world.c:141: p_forest[0] = 0b00110000;
   5234 DD 6E F1      [19]  791 	ld	l,-15 (ix)
   5237 DD 66 F2      [19]  792 	ld	h,-14 (ix)
   523A 36 30         [10]  793 	ld	(hl),#0x30
                            794 ;src/game/world.c:142: p_forest[1] = 0b11110100;
   523C FD 36 00 F4   [19]  795 	ld	0 (iy), #0xF4
                            796 ;src/game/world.c:143: p_forest[2] = 0b11111111;
   5240 3E FF         [ 7]  797 	ld	a,#0xFF
   5242 12            [ 7]  798 	ld	(de),a
                            799 ;src/game/world.c:144: p_forest[3] = 0b11111111;
   5243 DD 6E F5      [19]  800 	ld	l,-11 (ix)
   5246 DD 66 F6      [19]  801 	ld	h,-10 (ix)
   5249 36 FF         [10]  802 	ld	(hl),#0xFF
                            803 ;src/game/world.c:145: p_forest[4] = 0b01111100;
   524B DD 6E F3      [19]  804 	ld	l,-13 (ix)
   524E DD 66 F4      [19]  805 	ld	h,-12 (ix)
   5251 36 7C         [10]  806 	ld	(hl),#0x7C
                            807 ;src/game/world.c:146: p_forest[5] = 0b01111110;
   5253 DD 6E FE      [19]  808 	ld	l,-2 (ix)
   5256 DD 66 FF      [19]  809 	ld	h,-1 (ix)
   5259 36 7E         [10]  810 	ld	(hl),#0x7E
                            811 ;src/game/world.c:147: p_forest[6] = 0b00111110;
   525B DD 6E FC      [19]  812 	ld	l,-4 (ix)
   525E DD 66 FD      [19]  813 	ld	h,-3 (ix)
   5261 36 3E         [10]  814 	ld	(hl),#0x3E
                            815 ;src/game/world.c:148: p_forest[7] = 0b00011000;
   5263 DD 6E FA      [19]  816 	ld	l,-6 (ix)
   5266 DD 66 FB      [19]  817 	ld	h,-5 (ix)
   5269 36 18         [10]  818 	ld	(hl),#0x18
                            819 ;src/game/world.c:149: break;
   526B 18 37         [12]  820 	jr	00106$
                            821 ;src/game/world.c:150: case 3:
   526D                     822 00105$:
                            823 ;src/game/world.c:151: p_forest[0] = 0b11000000; 
   526D DD 6E F1      [19]  824 	ld	l,-15 (ix)
   5270 DD 66 F2      [19]  825 	ld	h,-14 (ix)
   5273 36 C0         [10]  826 	ld	(hl),#0xC0
                            827 ;src/game/world.c:152: p_forest[1] = 0b11100111;
   5275 FD 36 00 E7   [19]  828 	ld	0 (iy), #0xE7
                            829 ;src/game/world.c:153: p_forest[2] = 0b01111110;
   5279 3E 7E         [ 7]  830 	ld	a,#0x7E
   527B 12            [ 7]  831 	ld	(de),a
                            832 ;src/game/world.c:154: p_forest[3] = 0b01111110;
   527C DD 6E F5      [19]  833 	ld	l,-11 (ix)
   527F DD 66 F6      [19]  834 	ld	h,-10 (ix)
   5282 36 7E         [10]  835 	ld	(hl),#0x7E
                            836 ;src/game/world.c:155: p_forest[4] = 0b11111110;
   5284 DD 6E F3      [19]  837 	ld	l,-13 (ix)
   5287 DD 66 F4      [19]  838 	ld	h,-12 (ix)
   528A 36 FE         [10]  839 	ld	(hl),#0xFE
                            840 ;src/game/world.c:156: p_forest[5] = 0b11111100;
   528C DD 6E FE      [19]  841 	ld	l,-2 (ix)
   528F DD 66 FF      [19]  842 	ld	h,-1 (ix)
   5292 36 FC         [10]  843 	ld	(hl),#0xFC
                            844 ;src/game/world.c:157: p_forest[6] = 0b01111000;
   5294 DD 6E FC      [19]  845 	ld	l,-4 (ix)
   5297 DD 66 FD      [19]  846 	ld	h,-3 (ix)
   529A 36 78         [10]  847 	ld	(hl),#0x78
                            848 ;src/game/world.c:158: p_forest[7] = 0b00110000;
   529C DD 6E FA      [19]  849 	ld	l,-6 (ix)
   529F DD 66 FB      [19]  850 	ld	h,-5 (ix)
   52A2 36 30         [10]  851 	ld	(hl),#0x30
                            852 ;src/game/world.c:160: }
   52A4                     853 00106$:
                            854 ;src/game/world.c:161: patternTile(FOREST, iy, 8, 8, p_forest);
   52A4 DD 6E F1      [19]  855 	ld	l,-15 (ix)
   52A7 DD 66 F2      [19]  856 	ld	h,-14 (ix)
   52AA C5            [11]  857 	push	bc
   52AB E5            [11]  858 	push	hl
   52AC 21 08 08      [10]  859 	ld	hl,#0x0808
   52AF E5            [11]  860 	push	hl
   52B0 DD 6E F8      [19]  861 	ld	l,-8 (ix)
   52B3 DD 66 F9      [19]  862 	ld	h,-7 (ix)
   52B6 E5            [11]  863 	push	hl
   52B7 3E 08         [ 7]  864 	ld	a,#0x08
   52B9 F5            [11]  865 	push	af
   52BA 33            [ 6]  866 	inc	sp
   52BB CD D1 4F      [17]  867 	call	_patternTile
   52BE 21 07 00      [10]  868 	ld	hl,#7
   52C1 39            [11]  869 	add	hl,sp
   52C2 F9            [ 6]  870 	ld	sp,hl
   52C3 C1            [10]  871 	pop	bc
                            872 ;src/game/world.c:114: for(ix=0; ix<NBFOREST; ix++)
   52C4 03            [ 6]  873 	inc	bc
   52C5 79            [ 4]  874 	ld	a,c
   52C6 D6 32         [ 7]  875 	sub	a, #0x32
   52C8 78            [ 4]  876 	ld	a,b
   52C9 17            [ 4]  877 	rla
   52CA 3F            [ 4]  878 	ccf
   52CB 1F            [ 4]  879 	rra
   52CC DE 80         [ 7]  880 	sbc	a, #0x80
   52CE DA 1B 51      [10]  881 	jp	C,00121$
                            882 ;src/game/world.c:167: for(ix=0; ix<NBFARM; ix++)
   52D1 11 3C 00      [10]  883 	ld	de,#0x003C
   52D4                     884 00125$:
                            885 ;src/game/world.c:169: iy = cpct_rand16()%(WIDTH*HEIGHT);
   52D4 D5            [11]  886 	push	de
   52D5 CD 0A 6C      [17]  887 	call	_cpct_getRandom_mxor_u16
   52D8 D1            [10]  888 	pop	de
   52D9 D5            [11]  889 	push	de
   52DA 01 00 0F      [10]  890 	ld	bc,#0x0F00
   52DD C5            [11]  891 	push	bc
   52DE E5            [11]  892 	push	hl
   52DF CD 5D 6A      [17]  893 	call	__moduint
   52E2 F1            [10]  894 	pop	af
   52E3 F1            [10]  895 	pop	af
   52E4 D1            [10]  896 	pop	de
                            897 ;src/game/world.c:170: p_world[iy] = cpct_rand()%2+5;
   52E5 01 99 6E      [10]  898 	ld	bc,#_p_world
   52E8 09            [11]  899 	add	hl,bc
   52E9 E5            [11]  900 	push	hl
   52EA D5            [11]  901 	push	de
   52EB CD BB 6C      [17]  902 	call	_cpct_getRandom_mxor_u8
   52EE 7D            [ 4]  903 	ld	a,l
   52EF D1            [10]  904 	pop	de
   52F0 E1            [10]  905 	pop	hl
   52F1 E6 01         [ 7]  906 	and	a, #0x01
   52F3 C6 05         [ 7]  907 	add	a, #0x05
   52F5 77            [ 7]  908 	ld	(hl),a
   52F6 1B            [ 6]  909 	dec	de
                            910 ;src/game/world.c:167: for(ix=0; ix<NBFARM; ix++)
   52F7 7A            [ 4]  911 	ld	a,d
   52F8 B3            [ 4]  912 	or	a,e
   52F9 20 D9         [12]  913 	jr	NZ,00125$
                            914 ;src/game/world.c:175: for(ix=0; ix<NBURBAN; ix++)
   52FB 11 14 00      [10]  915 	ld	de,#0x0014
   52FE                     916 00128$:
                            917 ;src/game/world.c:177: iy = cpct_rand16()%(WIDTH*HEIGHT);
   52FE D5            [11]  918 	push	de
   52FF CD 0A 6C      [17]  919 	call	_cpct_getRandom_mxor_u16
   5302 D1            [10]  920 	pop	de
   5303 D5            [11]  921 	push	de
   5304 01 00 0F      [10]  922 	ld	bc,#0x0F00
   5307 C5            [11]  923 	push	bc
   5308 E5            [11]  924 	push	hl
   5309 CD 5D 6A      [17]  925 	call	__moduint
   530C F1            [10]  926 	pop	af
   530D F1            [10]  927 	pop	af
   530E D1            [10]  928 	pop	de
                            929 ;src/game/world.c:178: p_world[iy] = cpct_rand()%3+2;
   530F 3E 99         [ 7]  930 	ld	a,#<(_p_world)
   5311 85            [ 4]  931 	add	a, l
   5312 DD 77 FA      [19]  932 	ld	-6 (ix),a
   5315 3E 6E         [ 7]  933 	ld	a,#>(_p_world)
   5317 8C            [ 4]  934 	adc	a, h
   5318 DD 77 FB      [19]  935 	ld	-5 (ix),a
   531B D5            [11]  936 	push	de
   531C CD BB 6C      [17]  937 	call	_cpct_getRandom_mxor_u8
   531F 45            [ 4]  938 	ld	b,l
   5320 D1            [10]  939 	pop	de
   5321 D5            [11]  940 	push	de
   5322 3E 03         [ 7]  941 	ld	a,#0x03
   5324 F5            [11]  942 	push	af
   5325 33            [ 6]  943 	inc	sp
   5326 C5            [11]  944 	push	bc
   5327 33            [ 6]  945 	inc	sp
   5328 CD 51 6A      [17]  946 	call	__moduchar
   532B F1            [10]  947 	pop	af
   532C 7D            [ 4]  948 	ld	a,l
   532D D1            [10]  949 	pop	de
   532E C6 02         [ 7]  950 	add	a, #0x02
   5330 DD 6E FA      [19]  951 	ld	l,-6 (ix)
   5333 DD 66 FB      [19]  952 	ld	h,-5 (ix)
   5336 77            [ 7]  953 	ld	(hl),a
   5337 1B            [ 6]  954 	dec	de
                            955 ;src/game/world.c:175: for(ix=0; ix<NBURBAN; ix++)
   5338 7A            [ 4]  956 	ld	a,d
   5339 B3            [ 4]  957 	or	a,e
   533A 20 C2         [12]  958 	jr	NZ,00128$
                            959 ;src/game/world.c:181: for(ix=0; ix<NBURBAN; ix++)
   533C 21 0A 00      [10]  960 	ld	hl,#0x000A
   533F 39            [11]  961 	add	hl,sp
   5340 4D            [ 4]  962 	ld	c,l
   5341 44            [ 4]  963 	ld	b,h
   5342 DD 36 ED 00   [19]  964 	ld	-19 (ix),#0x00
   5346 DD 36 EE 00   [19]  965 	ld	-18 (ix),#0x00
   534A                     966 00129$:
                            967 ;src/game/world.c:183: iy = cpct_rand16()%(WIDTH*HEIGHT);
   534A C5            [11]  968 	push	bc
   534B CD 0A 6C      [17]  969 	call	_cpct_getRandom_mxor_u16
   534E 11 00 0F      [10]  970 	ld	de,#0x0F00
   5351 D5            [11]  971 	push	de
   5352 E5            [11]  972 	push	hl
   5353 CD 5D 6A      [17]  973 	call	__moduint
   5356 F1            [10]  974 	pop	af
   5357 F1            [10]  975 	pop	af
   5358 C1            [10]  976 	pop	bc
   5359 DD 75 FA      [19]  977 	ld	-6 (ix),l
   535C DD 74 FB      [19]  978 	ld	-5 (ix),h
                            979 ;src/game/world.c:185: switch(cpct_rand()%6)
   535F C5            [11]  980 	push	bc
   5360 CD BB 6C      [17]  981 	call	_cpct_getRandom_mxor_u8
   5363 55            [ 4]  982 	ld	d,l
   5364 3E 06         [ 7]  983 	ld	a,#0x06
   5366 F5            [11]  984 	push	af
   5367 33            [ 6]  985 	inc	sp
   5368 D5            [11]  986 	push	de
   5369 33            [ 6]  987 	inc	sp
   536A CD 51 6A      [17]  988 	call	__moduchar
   536D F1            [10]  989 	pop	af
   536E 5D            [ 4]  990 	ld	e,l
   536F C1            [10]  991 	pop	bc
   5370 3E 05         [ 7]  992 	ld	a,#0x05
   5372 93            [ 4]  993 	sub	a, e
   5373 38 6A         [12]  994 	jr	C,00116$
                            995 ;src/game/world.c:189: p_cities[1] = 0b01000110; // 01100010;
   5375 21 01 00      [10]  996 	ld	hl,#0x0001
   5378 09            [11]  997 	add	hl,bc
   5379 DD 75 FC      [19]  998 	ld	-4 (ix),l
   537C DD 74 FD      [19]  999 	ld	-3 (ix),h
                           1000 ;src/game/world.c:185: switch(cpct_rand()%6)
   537F 16 00         [ 7] 1001 	ld	d,#0x00
   5381 21 87 53      [10] 1002 	ld	hl,#00196$
   5384 19            [11] 1003 	add	hl,de
   5385 19            [11] 1004 	add	hl,de
                           1005 ;src/game/world.c:187: case 0:
   5386 E9            [ 4] 1006 	jp	(hl)
   5387                    1007 00196$:
   5387 18 0A         [12] 1008 	jr	00110$
   5389 18 15         [12] 1009 	jr	00111$
   538B 18 20         [12] 1010 	jr	00112$
   538D 18 2B         [12] 1011 	jr	00113$
   538F 18 36         [12] 1012 	jr	00114$
   5391 18 41         [12] 1013 	jr	00115$
   5393                    1014 00110$:
                           1015 ;src/game/world.c:188: p_cities[0] = 0b01110010; // 01001110;
   5393 3E 72         [ 7] 1016 	ld	a,#0x72
   5395 02            [ 7] 1017 	ld	(bc),a
                           1018 ;src/game/world.c:189: p_cities[1] = 0b01000110; // 01100010;
   5396 DD 6E FC      [19] 1019 	ld	l,-4 (ix)
   5399 DD 66 FD      [19] 1020 	ld	h,-3 (ix)
   539C 36 46         [10] 1021 	ld	(hl),#0x46
                           1022 ;src/game/world.c:190: break;
   539E 18 3F         [12] 1023 	jr	00116$
                           1024 ;src/game/world.c:192: case 1:
   53A0                    1025 00111$:
                           1026 ;src/game/world.c:193: p_cities[0] = 0b01100000; // 00000110;
   53A0 3E 60         [ 7] 1027 	ld	a,#0x60
   53A2 02            [ 7] 1028 	ld	(bc),a
                           1029 ;src/game/world.c:194: p_cities[1] = 0b00000110; // 01100000;
   53A3 DD 6E FC      [19] 1030 	ld	l,-4 (ix)
   53A6 DD 66 FD      [19] 1031 	ld	h,-3 (ix)
   53A9 36 06         [10] 1032 	ld	(hl),#0x06
                           1033 ;src/game/world.c:195: break;
   53AB 18 32         [12] 1034 	jr	00116$
                           1035 ;src/game/world.c:197: case 2:
   53AD                    1036 00112$:
                           1037 ;src/game/world.c:198: p_cities[0] = 0b00010000; // 00001000;
   53AD 3E 10         [ 7] 1038 	ld	a,#0x10
   53AF 02            [ 7] 1039 	ld	(bc),a
                           1040 ;src/game/world.c:199: p_cities[1] = 0b00000110; // 01100000;
   53B0 DD 6E FC      [19] 1041 	ld	l,-4 (ix)
   53B3 DD 66 FD      [19] 1042 	ld	h,-3 (ix)
   53B6 36 06         [10] 1043 	ld	(hl),#0x06
                           1044 ;src/game/world.c:200: break;
   53B8 18 25         [12] 1045 	jr	00116$
                           1046 ;src/game/world.c:202: case 3:
   53BA                    1047 00113$:
                           1048 ;src/game/world.c:203: p_cities[0] = 0b11000000; // 00000011;
   53BA 3E C0         [ 7] 1049 	ld	a,#0xC0
   53BC 02            [ 7] 1050 	ld	(bc),a
                           1051 ;src/game/world.c:204: p_cities[1] = 0b00110001; // 10001100;
   53BD DD 6E FC      [19] 1052 	ld	l,-4 (ix)
   53C0 DD 66 FD      [19] 1053 	ld	h,-3 (ix)
   53C3 36 31         [10] 1054 	ld	(hl),#0x31
                           1055 ;src/game/world.c:205: break;
   53C5 18 18         [12] 1056 	jr	00116$
                           1057 ;src/game/world.c:207: case 4:
   53C7                    1058 00114$:
                           1059 ;src/game/world.c:208: p_cities[0] = 0b11000100; // 00100011;
   53C7 3E C4         [ 7] 1060 	ld	a,#0xC4
   53C9 02            [ 7] 1061 	ld	(bc),a
                           1062 ;src/game/world.c:209: p_cities[1] = 0b00001110; // 01110000;
   53CA DD 6E FC      [19] 1063 	ld	l,-4 (ix)
   53CD DD 66 FD      [19] 1064 	ld	h,-3 (ix)
   53D0 36 0E         [10] 1065 	ld	(hl),#0x0E
                           1066 ;src/game/world.c:210: break;
   53D2 18 0B         [12] 1067 	jr	00116$
                           1068 ;src/game/world.c:212: case 5:
   53D4                    1069 00115$:
                           1070 ;src/game/world.c:213: p_cities[0] = 0b01000000; // 00000010;
   53D4 3E 40         [ 7] 1071 	ld	a,#0x40
   53D6 02            [ 7] 1072 	ld	(bc),a
                           1073 ;src/game/world.c:214: p_cities[1] = 0b01001110; // 01110010;
   53D7 DD 6E FC      [19] 1074 	ld	l,-4 (ix)
   53DA DD 66 FD      [19] 1075 	ld	h,-3 (ix)
   53DD 36 4E         [10] 1076 	ld	(hl),#0x4E
                           1077 ;src/game/world.c:216: }
   53DF                    1078 00116$:
                           1079 ;src/game/world.c:218: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   53DF 69            [ 4] 1080 	ld	l, c
   53E0 60            [ 4] 1081 	ld	h, b
   53E1 C5            [11] 1082 	push	bc
   53E2 E5            [11] 1083 	push	hl
   53E3 21 04 04      [10] 1084 	ld	hl,#0x0404
   53E6 E5            [11] 1085 	push	hl
   53E7 DD 6E FA      [19] 1086 	ld	l,-6 (ix)
   53EA DD 66 FB      [19] 1087 	ld	h,-5 (ix)
   53ED E5            [11] 1088 	push	hl
   53EE 3E 02         [ 7] 1089 	ld	a,#0x02
   53F0 F5            [11] 1090 	push	af
   53F1 33            [ 6] 1091 	inc	sp
   53F2 CD D1 4F      [17] 1092 	call	_patternTile
   53F5 21 07 00      [10] 1093 	ld	hl,#7
   53F8 39            [11] 1094 	add	hl,sp
   53F9 F9            [ 6] 1095 	ld	sp,hl
   53FA C1            [10] 1096 	pop	bc
                           1097 ;src/game/world.c:181: for(ix=0; ix<NBURBAN; ix++)
   53FB DD 34 ED      [23] 1098 	inc	-19 (ix)
   53FE 20 03         [12] 1099 	jr	NZ,00197$
   5400 DD 34 EE      [23] 1100 	inc	-18 (ix)
   5403                    1101 00197$:
   5403 DD 7E ED      [19] 1102 	ld	a,-19 (ix)
   5406 D6 14         [ 7] 1103 	sub	a, #0x14
   5408 DD 7E EE      [19] 1104 	ld	a,-18 (ix)
   540B 17            [ 4] 1105 	rla
   540C 3F            [ 4] 1106 	ccf
   540D 1F            [ 4] 1107 	rra
   540E DE 80         [ 7] 1108 	sbc	a, #0x80
   5410 DA 4A 53      [10] 1109 	jp	C,00129$
                           1110 ;src/game/world.c:223: for(ix=0; ix<NBLIVESTOCK; ix++)
   5413 11 13 00      [10] 1111 	ld	de,#0x0013
   5416                    1112 00133$:
                           1113 ;src/game/world.c:225: iy = cpct_rand16()%(WIDTH*HEIGHT);
   5416 D5            [11] 1114 	push	de
   5417 CD 0A 6C      [17] 1115 	call	_cpct_getRandom_mxor_u16
   541A D1            [10] 1116 	pop	de
   541B D5            [11] 1117 	push	de
   541C 01 00 0F      [10] 1118 	ld	bc,#0x0F00
   541F C5            [11] 1119 	push	bc
   5420 E5            [11] 1120 	push	hl
   5421 CD 5D 6A      [17] 1121 	call	__moduint
   5424 F1            [10] 1122 	pop	af
   5425 F1            [10] 1123 	pop	af
   5426 D1            [10] 1124 	pop	de
                           1125 ;src/game/world.c:226: p_world[iy] = LIVESTOCK;
   5427 01 99 6E      [10] 1126 	ld	bc,#_p_world
   542A 09            [11] 1127 	add	hl,bc
   542B 36 09         [10] 1128 	ld	(hl),#0x09
   542D 1B            [ 6] 1129 	dec	de
                           1130 ;src/game/world.c:223: for(ix=0; ix<NBLIVESTOCK; ix++)
   542E 7A            [ 4] 1131 	ld	a,d
   542F B3            [ 4] 1132 	or	a,e
   5430 20 E4         [12] 1133 	jr	NZ,00133$
   5432 DD F9         [10] 1134 	ld	sp, ix
   5434 DD E1         [14] 1135 	pop	ix
   5436 C9            [10] 1136 	ret
                           1137 ;src/game/world.c:230: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1138 ;	---------------------------------
                           1139 ; Function drawTile
                           1140 ; ---------------------------------
   5437                    1141 _drawTile::
   5437 DD E5         [15] 1142 	push	ix
   5439 DD 21 00 00   [14] 1143 	ld	ix,#0
   543D DD 39         [15] 1144 	add	ix,sp
                           1145 ;src/game/world.c:233: int adress = (y_+iy)*WIDTH+x_+ix;
   543F DD 6E 05      [19] 1146 	ld	l,5 (ix)
   5442 26 00         [ 7] 1147 	ld	h,#0x00
   5444 DD 5E 07      [19] 1148 	ld	e,7 (ix)
   5447 16 00         [ 7] 1149 	ld	d,#0x00
   5449 19            [11] 1150 	add	hl,de
   544A 4D            [ 4] 1151 	ld	c, l
   544B 44            [ 4] 1152 	ld	b, h
   544C 29            [11] 1153 	add	hl, hl
   544D 29            [11] 1154 	add	hl, hl
   544E 09            [11] 1155 	add	hl, bc
   544F 29            [11] 1156 	add	hl, hl
   5450 29            [11] 1157 	add	hl, hl
   5451 29            [11] 1158 	add	hl, hl
   5452 29            [11] 1159 	add	hl, hl
   5453 DD 5E 04      [19] 1160 	ld	e,4 (ix)
   5456 16 00         [ 7] 1161 	ld	d,#0x00
   5458 19            [11] 1162 	add	hl,de
   5459 DD 5E 06      [19] 1163 	ld	e,6 (ix)
   545C 16 00         [ 7] 1164 	ld	d,#0x00
   545E 19            [11] 1165 	add	hl,de
   545F 5D            [ 4] 1166 	ld	e, l
   5460 54            [ 4] 1167 	ld	d, h
                           1168 ;src/game/world.c:235: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   5461 DD 7E 07      [19] 1169 	ld	a,7 (ix)
   5464 07            [ 4] 1170 	rlca
   5465 07            [ 4] 1171 	rlca
   5466 07            [ 4] 1172 	rlca
   5467 07            [ 4] 1173 	rlca
   5468 E6 F0         [ 7] 1174 	and	a,#0xF0
   546A 67            [ 4] 1175 	ld	h,a
   546B DD 7E 06      [19] 1176 	ld	a,6 (ix)
   546E 87            [ 4] 1177 	add	a, a
   546F 87            [ 4] 1178 	add	a, a
   5470 D5            [11] 1179 	push	de
   5471 E5            [11] 1180 	push	hl
   5472 33            [ 6] 1181 	inc	sp
   5473 F5            [11] 1182 	push	af
   5474 33            [ 6] 1183 	inc	sp
   5475 21 00 C0      [10] 1184 	ld	hl,#0xC000
   5478 E5            [11] 1185 	push	hl
   5479 CD A9 6D      [17] 1186 	call	_cpct_getScreenPtr
   547C D1            [10] 1187 	pop	de
   547D 4D            [ 4] 1188 	ld	c, l
   547E 44            [ 4] 1189 	ld	b, h
                           1190 ;src/game/world.c:237: switch(p_world[adress])
   547F 21 99 6E      [10] 1191 	ld	hl,#_p_world
   5482 19            [11] 1192 	add	hl,de
   5483 5E            [ 7] 1193 	ld	e,(hl)
   5484 3E 19         [ 7] 1194 	ld	a,#0x19
   5486 93            [ 4] 1195 	sub	a, e
   5487 DA 5C 56      [10] 1196 	jp	C,00128$
   548A 16 00         [ 7] 1197 	ld	d,#0x00
   548C 21 93 54      [10] 1198 	ld	hl,#00134$
   548F 19            [11] 1199 	add	hl,de
   5490 19            [11] 1200 	add	hl,de
   5491 19            [11] 1201 	add	hl,de
   5492 E9            [ 4] 1202 	jp	(hl)
   5493                    1203 00134$:
   5493 C3 E1 54      [10] 1204 	jp	00101$
   5496 C3 F0 54      [10] 1205 	jp	00102$
   5499 C3 FF 54      [10] 1206 	jp	00103$
   549C C3 0E 55      [10] 1207 	jp	00104$
   549F C3 1D 55      [10] 1208 	jp	00105$
   54A2 C3 2C 55      [10] 1209 	jp	00106$
   54A5 C3 3B 55      [10] 1210 	jp	00107$
   54A8 C3 4A 55      [10] 1211 	jp	00108$
   54AB C3 59 55      [10] 1212 	jp	00109$
   54AE C3 68 55      [10] 1213 	jp	00110$
   54B1 C3 77 55      [10] 1214 	jp	00111$
   54B4 C3 86 55      [10] 1215 	jp	00112$
   54B7 C3 95 55      [10] 1216 	jp	00113$
   54BA C3 A4 55      [10] 1217 	jp	00114$
   54BD C3 B3 55      [10] 1218 	jp	00115$
   54C0 C3 C2 55      [10] 1219 	jp	00116$
   54C3 C3 D1 55      [10] 1220 	jp	00117$
   54C6 C3 E0 55      [10] 1221 	jp	00118$
   54C9 C3 EE 55      [10] 1222 	jp	00119$
   54CC C3 FC 55      [10] 1223 	jp	00120$
   54CF C3 0A 56      [10] 1224 	jp	00121$
   54D2 C3 18 56      [10] 1225 	jp	00122$
   54D5 C3 26 56      [10] 1226 	jp	00123$
   54D8 C3 34 56      [10] 1227 	jp	00124$
   54DB C3 42 56      [10] 1228 	jp	00125$
   54DE C3 50 56      [10] 1229 	jp	00126$
                           1230 ;src/game/world.c:239: case GRASS1:
   54E1                    1231 00101$:
                           1232 ;src/game/world.c:240: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   54E1 11 0D 5E      [10] 1233 	ld	de,#_grass1
   54E4 21 04 10      [10] 1234 	ld	hl,#0x1004
   54E7 E5            [11] 1235 	push	hl
   54E8 C5            [11] 1236 	push	bc
   54E9 D5            [11] 1237 	push	de
   54EA CD AC 69      [17] 1238 	call	_cpct_drawSprite
                           1239 ;src/game/world.c:241: break;
   54ED C3 5C 56      [10] 1240 	jp	00128$
                           1241 ;src/game/world.c:242: case GRASS2:
   54F0                    1242 00102$:
                           1243 ;src/game/world.c:243: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   54F0 11 4D 5E      [10] 1244 	ld	de,#_grass2
   54F3 21 04 10      [10] 1245 	ld	hl,#0x1004
   54F6 E5            [11] 1246 	push	hl
   54F7 C5            [11] 1247 	push	bc
   54F8 D5            [11] 1248 	push	de
   54F9 CD AC 69      [17] 1249 	call	_cpct_drawSprite
                           1250 ;src/game/world.c:244: break;
   54FC C3 5C 56      [10] 1251 	jp	00128$
                           1252 ;src/game/world.c:245: case DWELLINGS1:
   54FF                    1253 00103$:
                           1254 ;src/game/world.c:246: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   54FF 11 CD 5E      [10] 1255 	ld	de,#_dwellings1
   5502 21 04 10      [10] 1256 	ld	hl,#0x1004
   5505 E5            [11] 1257 	push	hl
   5506 C5            [11] 1258 	push	bc
   5507 D5            [11] 1259 	push	de
   5508 CD AC 69      [17] 1260 	call	_cpct_drawSprite
                           1261 ;src/game/world.c:247: break;
   550B C3 5C 56      [10] 1262 	jp	00128$
                           1263 ;src/game/world.c:248: case DWELLINGS2:
   550E                    1264 00104$:
                           1265 ;src/game/world.c:249: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   550E 11 0D 5F      [10] 1266 	ld	de,#_dwellings2
   5511 21 04 10      [10] 1267 	ld	hl,#0x1004
   5514 E5            [11] 1268 	push	hl
   5515 C5            [11] 1269 	push	bc
   5516 D5            [11] 1270 	push	de
   5517 CD AC 69      [17] 1271 	call	_cpct_drawSprite
                           1272 ;src/game/world.c:250: break;
   551A C3 5C 56      [10] 1273 	jp	00128$
                           1274 ;src/game/world.c:251: case DWELLINGS3:
   551D                    1275 00105$:
                           1276 ;src/game/world.c:252: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   551D 11 4D 5F      [10] 1277 	ld	de,#_dwellings3
   5520 21 04 10      [10] 1278 	ld	hl,#0x1004
   5523 E5            [11] 1279 	push	hl
   5524 C5            [11] 1280 	push	bc
   5525 D5            [11] 1281 	push	de
   5526 CD AC 69      [17] 1282 	call	_cpct_drawSprite
                           1283 ;src/game/world.c:253: break;
   5529 C3 5C 56      [10] 1284 	jp	00128$
                           1285 ;src/game/world.c:254: case FARM1:
   552C                    1286 00106$:
                           1287 ;src/game/world.c:255: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   552C 11 CD 5F      [10] 1288 	ld	de,#_farm1
   552F 21 04 10      [10] 1289 	ld	hl,#0x1004
   5532 E5            [11] 1290 	push	hl
   5533 C5            [11] 1291 	push	bc
   5534 D5            [11] 1292 	push	de
   5535 CD AC 69      [17] 1293 	call	_cpct_drawSprite
                           1294 ;src/game/world.c:256: break;
   5538 C3 5C 56      [10] 1295 	jp	00128$
                           1296 ;src/game/world.c:257: case FARM2:
   553B                    1297 00107$:
                           1298 ;src/game/world.c:258: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   553B 11 0D 60      [10] 1299 	ld	de,#_farm2
   553E 21 04 10      [10] 1300 	ld	hl,#0x1004
   5541 E5            [11] 1301 	push	hl
   5542 C5            [11] 1302 	push	bc
   5543 D5            [11] 1303 	push	de
   5544 CD AC 69      [17] 1304 	call	_cpct_drawSprite
                           1305 ;src/game/world.c:259: break;
   5547 C3 5C 56      [10] 1306 	jp	00128$
                           1307 ;src/game/world.c:260: case WATER:
   554A                    1308 00108$:
                           1309 ;src/game/world.c:261: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   554A 11 8D 5F      [10] 1310 	ld	de,#_water
   554D 21 04 10      [10] 1311 	ld	hl,#0x1004
   5550 E5            [11] 1312 	push	hl
   5551 C5            [11] 1313 	push	bc
   5552 D5            [11] 1314 	push	de
   5553 CD AC 69      [17] 1315 	call	_cpct_drawSprite
                           1316 ;src/game/world.c:262: break;
   5556 C3 5C 56      [10] 1317 	jp	00128$
                           1318 ;src/game/world.c:263: case FOREST:
   5559                    1319 00109$:
                           1320 ;src/game/world.c:264: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   5559 11 8D 5E      [10] 1321 	ld	de,#_forest
   555C 21 04 10      [10] 1322 	ld	hl,#0x1004
   555F E5            [11] 1323 	push	hl
   5560 C5            [11] 1324 	push	bc
   5561 D5            [11] 1325 	push	de
   5562 CD AC 69      [17] 1326 	call	_cpct_drawSprite
                           1327 ;src/game/world.c:265: break;
   5565 C3 5C 56      [10] 1328 	jp	00128$
                           1329 ;src/game/world.c:266: case LIVESTOCK:
   5568                    1330 00110$:
                           1331 ;src/game/world.c:267: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   5568 11 4D 60      [10] 1332 	ld	de,#_livestock
   556B 21 04 10      [10] 1333 	ld	hl,#0x1004
   556E E5            [11] 1334 	push	hl
   556F C5            [11] 1335 	push	bc
   5570 D5            [11] 1336 	push	de
   5571 CD AC 69      [17] 1337 	call	_cpct_drawSprite
                           1338 ;src/game/world.c:268: break;
   5574 C3 5C 56      [10] 1339 	jp	00128$
                           1340 ;src/game/world.c:269: case SSNS:
   5577                    1341 00111$:
                           1342 ;src/game/world.c:270: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   5577 11 8D 60      [10] 1343 	ld	de,#_station_small_ns
   557A 21 04 10      [10] 1344 	ld	hl,#0x1004
   557D E5            [11] 1345 	push	hl
   557E C5            [11] 1346 	push	bc
   557F D5            [11] 1347 	push	de
   5580 CD AC 69      [17] 1348 	call	_cpct_drawSprite
                           1349 ;src/game/world.c:271: break;
   5583 C3 5C 56      [10] 1350 	jp	00128$
                           1351 ;src/game/world.c:272: case SSEW:
   5586                    1352 00112$:
                           1353 ;src/game/world.c:273: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   5586 11 CD 60      [10] 1354 	ld	de,#_station_small_ew
   5589 21 04 10      [10] 1355 	ld	hl,#0x1004
   558C E5            [11] 1356 	push	hl
   558D C5            [11] 1357 	push	bc
   558E D5            [11] 1358 	push	de
   558F CD AC 69      [17] 1359 	call	_cpct_drawSprite
                           1360 ;src/game/world.c:274: break;
   5592 C3 5C 56      [10] 1361 	jp	00128$
                           1362 ;src/game/world.c:275: case SMNS:
   5595                    1363 00113$:
                           1364 ;src/game/world.c:276: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   5595 11 0D 61      [10] 1365 	ld	de,#_station_medium_ns
   5598 21 04 10      [10] 1366 	ld	hl,#0x1004
   559B E5            [11] 1367 	push	hl
   559C C5            [11] 1368 	push	bc
   559D D5            [11] 1369 	push	de
   559E CD AC 69      [17] 1370 	call	_cpct_drawSprite
                           1371 ;src/game/world.c:277: break;
   55A1 C3 5C 56      [10] 1372 	jp	00128$
                           1373 ;src/game/world.c:278: case SMEW:
   55A4                    1374 00114$:
                           1375 ;src/game/world.c:279: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   55A4 11 4D 61      [10] 1376 	ld	de,#_station_medium_ew
   55A7 21 04 10      [10] 1377 	ld	hl,#0x1004
   55AA E5            [11] 1378 	push	hl
   55AB C5            [11] 1379 	push	bc
   55AC D5            [11] 1380 	push	de
   55AD CD AC 69      [17] 1381 	call	_cpct_drawSprite
                           1382 ;src/game/world.c:280: break;
   55B0 C3 5C 56      [10] 1383 	jp	00128$
                           1384 ;src/game/world.c:281: case SLNS:
   55B3                    1385 00115$:
                           1386 ;src/game/world.c:282: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   55B3 11 8D 61      [10] 1387 	ld	de,#_station_large_ns
   55B6 21 04 10      [10] 1388 	ld	hl,#0x1004
   55B9 E5            [11] 1389 	push	hl
   55BA C5            [11] 1390 	push	bc
   55BB D5            [11] 1391 	push	de
   55BC CD AC 69      [17] 1392 	call	_cpct_drawSprite
                           1393 ;src/game/world.c:283: break;
   55BF C3 5C 56      [10] 1394 	jp	00128$
                           1395 ;src/game/world.c:284: case SLEW:
   55C2                    1396 00116$:
                           1397 ;src/game/world.c:285: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   55C2 11 CD 61      [10] 1398 	ld	de,#_station_large_ew
   55C5 21 04 10      [10] 1399 	ld	hl,#0x1004
   55C8 E5            [11] 1400 	push	hl
   55C9 C5            [11] 1401 	push	bc
   55CA D5            [11] 1402 	push	de
   55CB CD AC 69      [17] 1403 	call	_cpct_drawSprite
                           1404 ;src/game/world.c:286: break;
   55CE C3 5C 56      [10] 1405 	jp	00128$
                           1406 ;src/game/world.c:287: case REW:
   55D1                    1407 00117$:
                           1408 ;src/game/world.c:288: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   55D1 11 0D 62      [10] 1409 	ld	de,#_rail_ew
   55D4 21 04 10      [10] 1410 	ld	hl,#0x1004
   55D7 E5            [11] 1411 	push	hl
   55D8 C5            [11] 1412 	push	bc
   55D9 D5            [11] 1413 	push	de
   55DA CD AC 69      [17] 1414 	call	_cpct_drawSprite
                           1415 ;src/game/world.c:289: break;
   55DD C3 5C 56      [10] 1416 	jp	00128$
                           1417 ;src/game/world.c:290: case RNS:
   55E0                    1418 00118$:
                           1419 ;src/game/world.c:291: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   55E0 11 4D 62      [10] 1420 	ld	de,#_rail_ns
   55E3 21 04 10      [10] 1421 	ld	hl,#0x1004
   55E6 E5            [11] 1422 	push	hl
   55E7 C5            [11] 1423 	push	bc
   55E8 D5            [11] 1424 	push	de
   55E9 CD AC 69      [17] 1425 	call	_cpct_drawSprite
                           1426 ;src/game/world.c:292: break;
   55EC 18 6E         [12] 1427 	jr	00128$
                           1428 ;src/game/world.c:293: case REN:
   55EE                    1429 00119$:
                           1430 ;src/game/world.c:294: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   55EE 11 8D 62      [10] 1431 	ld	de,#_rail_en
   55F1 21 04 10      [10] 1432 	ld	hl,#0x1004
   55F4 E5            [11] 1433 	push	hl
   55F5 C5            [11] 1434 	push	bc
   55F6 D5            [11] 1435 	push	de
   55F7 CD AC 69      [17] 1436 	call	_cpct_drawSprite
                           1437 ;src/game/world.c:295: break;
   55FA 18 60         [12] 1438 	jr	00128$
                           1439 ;src/game/world.c:296: case RES:
   55FC                    1440 00120$:
                           1441 ;src/game/world.c:297: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   55FC 11 CD 62      [10] 1442 	ld	de,#_rail_es
   55FF 21 04 10      [10] 1443 	ld	hl,#0x1004
   5602 E5            [11] 1444 	push	hl
   5603 C5            [11] 1445 	push	bc
   5604 D5            [11] 1446 	push	de
   5605 CD AC 69      [17] 1447 	call	_cpct_drawSprite
                           1448 ;src/game/world.c:298: break;
   5608 18 52         [12] 1449 	jr	00128$
                           1450 ;src/game/world.c:299: case RWN:
   560A                    1451 00121$:
                           1452 ;src/game/world.c:300: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   560A 11 0D 63      [10] 1453 	ld	de,#_rail_wn
   560D 21 04 10      [10] 1454 	ld	hl,#0x1004
   5610 E5            [11] 1455 	push	hl
   5611 C5            [11] 1456 	push	bc
   5612 D5            [11] 1457 	push	de
   5613 CD AC 69      [17] 1458 	call	_cpct_drawSprite
                           1459 ;src/game/world.c:301: break;
   5616 18 44         [12] 1460 	jr	00128$
                           1461 ;src/game/world.c:302: case RWS:
   5618                    1462 00122$:
                           1463 ;src/game/world.c:303: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   5618 11 4D 63      [10] 1464 	ld	de,#_rail_ws
   561B 21 04 10      [10] 1465 	ld	hl,#0x1004
   561E E5            [11] 1466 	push	hl
   561F C5            [11] 1467 	push	bc
   5620 D5            [11] 1468 	push	de
   5621 CD AC 69      [17] 1469 	call	_cpct_drawSprite
                           1470 ;src/game/world.c:304: break;
   5624 18 36         [12] 1471 	jr	00128$
                           1472 ;src/game/world.c:305: case REWN:
   5626                    1473 00123$:
                           1474 ;src/game/world.c:306: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   5626 11 8D 63      [10] 1475 	ld	de,#_rail_ew_n
   5629 21 04 10      [10] 1476 	ld	hl,#0x1004
   562C E5            [11] 1477 	push	hl
   562D C5            [11] 1478 	push	bc
   562E D5            [11] 1479 	push	de
   562F CD AC 69      [17] 1480 	call	_cpct_drawSprite
                           1481 ;src/game/world.c:307: break;
   5632 18 28         [12] 1482 	jr	00128$
                           1483 ;src/game/world.c:308: case REWS:
   5634                    1484 00124$:
                           1485 ;src/game/world.c:309: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   5634 11 CD 63      [10] 1486 	ld	de,#_rail_ew_s
   5637 21 04 10      [10] 1487 	ld	hl,#0x1004
   563A E5            [11] 1488 	push	hl
   563B C5            [11] 1489 	push	bc
   563C D5            [11] 1490 	push	de
   563D CD AC 69      [17] 1491 	call	_cpct_drawSprite
                           1492 ;src/game/world.c:310: break;
   5640 18 1A         [12] 1493 	jr	00128$
                           1494 ;src/game/world.c:311: case RNSE:
   5642                    1495 00125$:
                           1496 ;src/game/world.c:312: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   5642 11 4D 64      [10] 1497 	ld	de,#_rail_ns_e
   5645 21 04 10      [10] 1498 	ld	hl,#0x1004
   5648 E5            [11] 1499 	push	hl
   5649 C5            [11] 1500 	push	bc
   564A D5            [11] 1501 	push	de
   564B CD AC 69      [17] 1502 	call	_cpct_drawSprite
                           1503 ;src/game/world.c:313: break;
   564E 18 0C         [12] 1504 	jr	00128$
                           1505 ;src/game/world.c:314: case RNSW:
   5650                    1506 00126$:
                           1507 ;src/game/world.c:315: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   5650 11 0D 64      [10] 1508 	ld	de,#_rail_ns_w
   5653 21 04 10      [10] 1509 	ld	hl,#0x1004
   5656 E5            [11] 1510 	push	hl
   5657 C5            [11] 1511 	push	bc
   5658 D5            [11] 1512 	push	de
   5659 CD AC 69      [17] 1513 	call	_cpct_drawSprite
                           1514 ;src/game/world.c:317: }
   565C                    1515 00128$:
   565C DD E1         [14] 1516 	pop	ix
   565E C9            [10] 1517 	ret
                           1518 ;src/game/world.c:320: void drawScrolls(u8 x_, u8 y_)
                           1519 ;	---------------------------------
                           1520 ; Function drawScrolls
                           1521 ; ---------------------------------
   565F                    1522 _drawScrolls::
   565F DD E5         [15] 1523 	push	ix
   5661 DD 21 00 00   [14] 1524 	ld	ix,#0
   5665 DD 39         [15] 1525 	add	ix,sp
   5667 3B            [ 6] 1526 	dec	sp
                           1527 ;src/game/world.c:326: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   5668 DD 4E 04      [19] 1528 	ld	c,4 (ix)
   566B 06 00         [ 7] 1529 	ld	b,#0x00
   566D 69            [ 4] 1530 	ld	l, c
   566E 60            [ 4] 1531 	ld	h, b
   566F 29            [11] 1532 	add	hl, hl
   5670 29            [11] 1533 	add	hl, hl
   5671 29            [11] 1534 	add	hl, hl
   5672 09            [11] 1535 	add	hl, bc
   5673 29            [11] 1536 	add	hl, hl
   5674 09            [11] 1537 	add	hl, bc
   5675 29            [11] 1538 	add	hl, hl
   5676 29            [11] 1539 	add	hl, hl
   5677 01 3C 00      [10] 1540 	ld	bc,#0x003C
   567A C5            [11] 1541 	push	bc
   567B E5            [11] 1542 	push	hl
   567C CD FA 6D      [17] 1543 	call	__divsint
   567F F1            [10] 1544 	pop	af
   5680 F1            [10] 1545 	pop	af
   5681 55            [ 4] 1546 	ld	d,l
                           1547 ;src/game/world.c:327: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   5682 DD 4E 05      [19] 1548 	ld	c,5 (ix)
   5685 06 00         [ 7] 1549 	ld	b,#0x00
   5687 69            [ 4] 1550 	ld	l, c
   5688 60            [ 4] 1551 	ld	h, b
   5689 29            [11] 1552 	add	hl, hl
   568A 29            [11] 1553 	add	hl, hl
   568B 09            [11] 1554 	add	hl, bc
   568C 29            [11] 1555 	add	hl, hl
   568D 09            [11] 1556 	add	hl, bc
   568E 29            [11] 1557 	add	hl, hl
   568F 29            [11] 1558 	add	hl, hl
   5690 29            [11] 1559 	add	hl, hl
   5691 29            [11] 1560 	add	hl, hl
   5692 D5            [11] 1561 	push	de
   5693 01 24 00      [10] 1562 	ld	bc,#0x0024
   5696 C5            [11] 1563 	push	bc
   5697 E5            [11] 1564 	push	hl
   5698 CD FA 6D      [17] 1565 	call	__divsint
   569B F1            [10] 1566 	pop	af
   569C F1            [10] 1567 	pop	af
   569D D1            [10] 1568 	pop	de
   569E DD 75 FF      [19] 1569 	ld	-1 (ix),l
                           1570 ;src/game/world.c:329: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   56A1 AF            [ 4] 1571 	xor	a, a
   56A2 F5            [11] 1572 	push	af
   56A3 33            [ 6] 1573 	inc	sp
   56A4 D5            [11] 1574 	push	de
   56A5 33            [ 6] 1575 	inc	sp
   56A6 21 00 C0      [10] 1576 	ld	hl,#0xC000
   56A9 E5            [11] 1577 	push	hl
   56AA CD A9 6D      [17] 1578 	call	_cpct_getScreenPtr
                           1579 ;src/game/world.c:330: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   56AD E5            [11] 1580 	push	hl
   56AE 21 00 00      [10] 1581 	ld	hl,#0x0000
   56B1 E5            [11] 1582 	push	hl
   56B2 2E 00         [ 7] 1583 	ld	l, #0x00
   56B4 E5            [11] 1584 	push	hl
   56B5 CD 83 6C      [17] 1585 	call	_cpct_px2byteM1
   56B8 F1            [10] 1586 	pop	af
   56B9 F1            [10] 1587 	pop	af
   56BA 45            [ 4] 1588 	ld	b,l
   56BB D1            [10] 1589 	pop	de
   56BC 21 04 04      [10] 1590 	ld	hl,#0x0404
   56BF E5            [11] 1591 	push	hl
   56C0 C5            [11] 1592 	push	bc
   56C1 33            [ 6] 1593 	inc	sp
   56C2 D5            [11] 1594 	push	de
   56C3 CD F0 6C      [17] 1595 	call	_cpct_drawSolidBox
   56C6 F1            [10] 1596 	pop	af
   56C7 F1            [10] 1597 	pop	af
   56C8 33            [ 6] 1598 	inc	sp
                           1599 ;src/game/world.c:332: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   56C9 DD 7E FF      [19] 1600 	ld	a,-1 (ix)
   56CC F5            [11] 1601 	push	af
   56CD 33            [ 6] 1602 	inc	sp
   56CE AF            [ 4] 1603 	xor	a, a
   56CF F5            [11] 1604 	push	af
   56D0 33            [ 6] 1605 	inc	sp
   56D1 21 00 C0      [10] 1606 	ld	hl,#0xC000
   56D4 E5            [11] 1607 	push	hl
   56D5 CD A9 6D      [17] 1608 	call	_cpct_getScreenPtr
                           1609 ;src/game/world.c:333: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   56D8 E5            [11] 1610 	push	hl
   56D9 21 00 00      [10] 1611 	ld	hl,#0x0000
   56DC E5            [11] 1612 	push	hl
   56DD 2E 00         [ 7] 1613 	ld	l, #0x00
   56DF E5            [11] 1614 	push	hl
   56E0 CD 83 6C      [17] 1615 	call	_cpct_px2byteM1
   56E3 F1            [10] 1616 	pop	af
   56E4 F1            [10] 1617 	pop	af
   56E5 45            [ 4] 1618 	ld	b,l
   56E6 D1            [10] 1619 	pop	de
   56E7 21 01 10      [10] 1620 	ld	hl,#0x1001
   56EA E5            [11] 1621 	push	hl
   56EB C5            [11] 1622 	push	bc
   56EC 33            [ 6] 1623 	inc	sp
   56ED D5            [11] 1624 	push	de
   56EE CD F0 6C      [17] 1625 	call	_cpct_drawSolidBox
   56F1 F1            [10] 1626 	pop	af
   56F2 F1            [10] 1627 	pop	af
   56F3 33            [ 6] 1628 	inc	sp
   56F4 33            [ 6] 1629 	inc	sp
   56F5 DD E1         [14] 1630 	pop	ix
   56F7 C9            [10] 1631 	ret
                           1632 ;src/game/world.c:336: void drawWorld(u8 x_, u8 y_)
                           1633 ;	---------------------------------
                           1634 ; Function drawWorld
                           1635 ; ---------------------------------
   56F8                    1636 _drawWorld::
                           1637 ;src/game/world.c:341: for(iy=0; iy<NBTILE_H;iy++)
   56F8 16 00         [ 7] 1638 	ld	d,#0x00
                           1639 ;src/game/world.c:343: for(ix=0; ix<NBTILE_W;ix++)
   56FA                    1640 00109$:
   56FA 1E 00         [ 7] 1641 	ld	e,#0x00
   56FC                    1642 00103$:
                           1643 ;src/game/world.c:345: drawTile(x_, y_, ix, iy);
   56FC D5            [11] 1644 	push	de
   56FD D5            [11] 1645 	push	de
   56FE 21 07 00      [10] 1646 	ld	hl, #7+0
   5701 39            [11] 1647 	add	hl, sp
   5702 7E            [ 7] 1648 	ld	a, (hl)
   5703 F5            [11] 1649 	push	af
   5704 33            [ 6] 1650 	inc	sp
   5705 21 07 00      [10] 1651 	ld	hl, #7+0
   5708 39            [11] 1652 	add	hl, sp
   5709 7E            [ 7] 1653 	ld	a, (hl)
   570A F5            [11] 1654 	push	af
   570B 33            [ 6] 1655 	inc	sp
   570C CD 37 54      [17] 1656 	call	_drawTile
   570F F1            [10] 1657 	pop	af
   5710 F1            [10] 1658 	pop	af
   5711 D1            [10] 1659 	pop	de
                           1660 ;src/game/world.c:343: for(ix=0; ix<NBTILE_W;ix++)
   5712 1C            [ 4] 1661 	inc	e
   5713 7B            [ 4] 1662 	ld	a,e
   5714 D6 14         [ 7] 1663 	sub	a, #0x14
   5716 38 E4         [12] 1664 	jr	C,00103$
                           1665 ;src/game/world.c:341: for(iy=0; iy<NBTILE_H;iy++)
   5718 14            [ 4] 1666 	inc	d
   5719 7A            [ 4] 1667 	ld	a,d
   571A D6 0C         [ 7] 1668 	sub	a, #0x0C
   571C 38 DC         [12] 1669 	jr	C,00109$
                           1670 ;src/game/world.c:349: drawScrolls(x_, y_);
   571E 21 03 00      [10] 1671 	ld	hl, #3+0
   5721 39            [11] 1672 	add	hl, sp
   5722 7E            [ 7] 1673 	ld	a, (hl)
   5723 F5            [11] 1674 	push	af
   5724 33            [ 6] 1675 	inc	sp
   5725 21 03 00      [10] 1676 	ld	hl, #3+0
   5728 39            [11] 1677 	add	hl, sp
   5729 7E            [ 7] 1678 	ld	a, (hl)
   572A F5            [11] 1679 	push	af
   572B 33            [ 6] 1680 	inc	sp
   572C CD 5F 56      [17] 1681 	call	_drawScrolls
   572F F1            [10] 1682 	pop	af
   5730 C9            [10] 1683 	ret
                           1684 	.area _CODE
                           1685 	.area _INITIALIZER
                           1686 	.area _CABS (ABS)
