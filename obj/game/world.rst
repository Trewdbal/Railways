                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module world
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _sprintf
                             12 	.globl _cpct_setSeed_mxor
                             13 	.globl _cpct_getRandom_mxor_u16
                             14 	.globl _cpct_getRandom_mxor_u8
                             15 	.globl _cpct_getScreenPtr
                             16 	.globl _cpct_count2VSYNC
                             17 	.globl _cpct_drawStringM1
                             18 	.globl _cpct_drawSprite
                             19 	.globl _cpct_getBit
                             20 	.globl _drawCursor
                             21 	.globl _patternTile
                             22 	.globl _generateWorld
                             23 	.globl _drawTile
                             24 	.globl _drawScrolls
                             25 	.globl _drawWorld
                             26 	.globl _setTrainHeading
                             27 	.globl _setPixel
                             28 	.globl _isPixelBlack
                             29 	.globl _drawNewTrain
                             30 	.globl _drawTrains
                             31 ;--------------------------------------------------------
                             32 ; special function registers
                             33 ;--------------------------------------------------------
                             34 ;--------------------------------------------------------
                             35 ; ram data
                             36 ;--------------------------------------------------------
                             37 	.area _DATA
                             38 ;--------------------------------------------------------
                             39 ; ram data
                             40 ;--------------------------------------------------------
                             41 	.area _INITIALIZED
                             42 ;--------------------------------------------------------
                             43 ; absolute external ram data
                             44 ;--------------------------------------------------------
                             45 	.area _DABS (ABS)
                             46 ;--------------------------------------------------------
                             47 ; global & static initialisations
                             48 ;--------------------------------------------------------
                             49 	.area _HOME
                             50 	.area _GSINIT
                             51 	.area _GSFINAL
                             52 	.area _GSINIT
                             53 ;--------------------------------------------------------
                             54 ; Home
                             55 ;--------------------------------------------------------
                             56 	.area _HOME
                             57 	.area _HOME
                             58 ;--------------------------------------------------------
                             59 ; code
                             60 ;--------------------------------------------------------
                             61 	.area _CODE
                             62 ;src/game/world.c:3: cpctm_createTransparentMaskTable(g_masktable, 0x0100, M1, 0);
                             63 ;	---------------------------------
                             64 ; Function dummy_cpct_transparentMaskTable0M1_container
                             65 ; ---------------------------------
   4ED4                      66 _dummy_cpct_transparentMaskTable0M1_container::
                             67 	.area _g_masktable_ (ABS) 
   0100                      68 	.org 0x0100 
   0100                      69 	 _g_masktable::
   0100 FF EE DD CC BB AA    70 	.db 0xFF, 0xEE, 0xDD, 0xCC, 0xBB, 0xAA, 0x99, 0x88 
        99 88
   0108 77 66 55 44 33 22    71 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0110 EE EE CC CC AA AA    72 	.db 0xEE, 0xEE, 0xCC, 0xCC, 0xAA, 0xAA, 0x88, 0x88 
        88 88
   0118 66 66 44 44 22 22    73 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   0120 DD CC DD CC 99 88    74 	.db 0xDD, 0xCC, 0xDD, 0xCC, 0x99, 0x88, 0x99, 0x88 
        99 88
   0128 55 44 55 44 11 00    75 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   0130 CC CC CC CC 88 88    76 	.db 0xCC, 0xCC, 0xCC, 0xCC, 0x88, 0x88, 0x88, 0x88 
        88 88
   0138 44 44 44 44 00 00    77 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   0140 BB AA 99 88 BB AA    78 	.db 0xBB, 0xAA, 0x99, 0x88, 0xBB, 0xAA, 0x99, 0x88 
        99 88
   0148 33 22 11 00 33 22    79 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   0150 AA AA 88 88 AA AA    80 	.db 0xAA, 0xAA, 0x88, 0x88, 0xAA, 0xAA, 0x88, 0x88 
        88 88
   0158 22 22 00 00 22 22    81 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   0160 99 88 99 88 99 88    82 	.db 0x99, 0x88, 0x99, 0x88, 0x99, 0x88, 0x99, 0x88 
        99 88
   0168 11 00 11 00 11 00    83 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   0170 88 88 88 88 88 88    84 	.db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 
        88 88
   0178 00 00 00 00 00 00    85 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0180 77 66 55 44 33 22    86 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0188 77 66 55 44 33 22    87 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0190 66 66 44 44 22 22    88 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   0198 66 66 44 44 22 22    89 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   01A0 55 44 55 44 11 00    90 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   01A8 55 44 55 44 11 00    91 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   01B0 44 44 44 44 00 00    92 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B8 44 44 44 44 00 00    93 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C0 33 22 11 00 33 22    94 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   01C8 33 22 11 00 33 22    95 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   01D0 22 22 00 00 22 22    96 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   01D8 22 22 00 00 22 22    97 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   01E0 11 00 11 00 11 00    98 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   01E8 11 00 11 00 11 00    99 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   01F0 00 00 00 00 00 00   100 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F8 00 00 00 00 00 00   101 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
                            102 	.area _CSEG (REL, CON) 
                            103 ;src/game/world.c:5: void drawCursor(u8 x, u8 y)
                            104 ;	---------------------------------
                            105 ; Function drawCursor
                            106 ; ---------------------------------
   8328                     107 _drawCursor::
   8328 DD E5         [15]  108 	push	ix
   832A DD 21 00 00   [14]  109 	ld	ix,#0
   832E DD 39         [15]  110 	add	ix,sp
   8330 21 F9 FF      [10]  111 	ld	hl, #-7
   8333 39            [11]  112 	add	hl, sp
   8334 F9            [ 6]  113 	ld	sp, hl
                            114 ;src/game/world.c:8: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   8335 DD 7E 05      [19]  115 	ld	a, 5 (ix)
   8338 07            [ 4]  116 	rlca
   8339 07            [ 4]  117 	rlca
   833A 07            [ 4]  118 	rlca
   833B 07            [ 4]  119 	rlca
   833C E6 F0         [ 7]  120 	and	a, #0xf0
   833E DD 77 FB      [19]  121 	ld	-5 (ix), a
   8341 DD 7E 04      [19]  122 	ld	a, 4 (ix)
   8344 87            [ 4]  123 	add	a, a
   8345 87            [ 4]  124 	add	a, a
   8346 47            [ 4]  125 	ld	b, a
   8347 DD 7E FB      [19]  126 	ld	a, -5 (ix)
   834A F5            [11]  127 	push	af
   834B 33            [ 6]  128 	inc	sp
   834C C5            [11]  129 	push	bc
   834D 33            [ 6]  130 	inc	sp
   834E 21 00 C0      [10]  131 	ld	hl, #0xc000
   8351 E5            [11]  132 	push	hl
   8352 CD 27 67      [17]  133 	call	_cpct_getScreenPtr
   8355 4D            [ 4]  134 	ld	c, l
   8356 44            [ 4]  135 	ld	b, h
                            136 ;src/game/world.c:11: switch(CURSOR_MODE)
   8357 3E 11         [ 7]  137 	ld	a, #0x11
   8359 FD 21 21 83   [14]  138 	ld	iy, #_CURSOR_MODE
   835D FD 96 00      [19]  139 	sub	a, 0 (iy)
   8360 DA 8A 84      [10]  140 	jp	C, 00118$
   8363 FD 5E 00      [19]  141 	ld	e, 0 (iy)
   8366 16 00         [ 7]  142 	ld	d, #0x00
   8368 21 6F 83      [10]  143 	ld	hl, #00126$
   836B 19            [11]  144 	add	hl, de
   836C 19            [11]  145 	add	hl, de
   836D 19            [11]  146 	add	hl, de
   836E E9            [ 4]  147 	jp	(hl)
   836F                     148 00126$:
   836F C3 8A 84      [10]  149 	jp	00118$
   8372 C3 8A 84      [10]  150 	jp	00118$
   8375 C3 A5 83      [10]  151 	jp	00102$
   8378 C3 B4 83      [10]  152 	jp	00103$
   837B C3 C3 83      [10]  153 	jp	00104$
   837E C3 D2 83      [10]  154 	jp	00105$
   8381 C3 E1 83      [10]  155 	jp	00106$
   8384 C3 F0 83      [10]  156 	jp	00107$
   8387 C3 FF 83      [10]  157 	jp	00108$
   838A C3 0E 84      [10]  158 	jp	00109$
   838D C3 1C 84      [10]  159 	jp	00110$
   8390 C3 2A 84      [10]  160 	jp	00111$
   8393 C3 38 84      [10]  161 	jp	00112$
   8396 C3 46 84      [10]  162 	jp	00113$
   8399 C3 54 84      [10]  163 	jp	00114$
   839C C3 62 84      [10]  164 	jp	00115$
   839F C3 70 84      [10]  165 	jp	00116$
   83A2 C3 7E 84      [10]  166 	jp	00117$
                            167 ;src/game/world.c:16: case T_SSNS:
   83A5                     168 00102$:
                            169 ;src/game/world.c:17: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   83A5 21 04 10      [10]  170 	ld	hl, #0x1004
   83A8 E5            [11]  171 	push	hl
   83A9 C5            [11]  172 	push	bc
   83AA 21 54 4A      [10]  173 	ld	hl, #_station_small_ns
   83AD E5            [11]  174 	push	hl
   83AE CD 45 61      [17]  175 	call	_cpct_drawSprite
                            176 ;src/game/world.c:18: break;
   83B1 C3 8A 84      [10]  177 	jp	00118$
                            178 ;src/game/world.c:19: case T_SSEW:
   83B4                     179 00103$:
                            180 ;src/game/world.c:20: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   83B4 21 04 10      [10]  181 	ld	hl, #0x1004
   83B7 E5            [11]  182 	push	hl
   83B8 C5            [11]  183 	push	bc
   83B9 21 94 4A      [10]  184 	ld	hl, #_station_small_ew
   83BC E5            [11]  185 	push	hl
   83BD CD 45 61      [17]  186 	call	_cpct_drawSprite
                            187 ;src/game/world.c:21: break;
   83C0 C3 8A 84      [10]  188 	jp	00118$
                            189 ;src/game/world.c:22: case T_SMNS:
   83C3                     190 00104$:
                            191 ;src/game/world.c:23: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   83C3 21 04 10      [10]  192 	ld	hl, #0x1004
   83C6 E5            [11]  193 	push	hl
   83C7 C5            [11]  194 	push	bc
   83C8 21 D4 4A      [10]  195 	ld	hl, #_station_medium_ns
   83CB E5            [11]  196 	push	hl
   83CC CD 45 61      [17]  197 	call	_cpct_drawSprite
                            198 ;src/game/world.c:24: break;
   83CF C3 8A 84      [10]  199 	jp	00118$
                            200 ;src/game/world.c:25: case T_SMEW:
   83D2                     201 00105$:
                            202 ;src/game/world.c:26: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   83D2 21 04 10      [10]  203 	ld	hl, #0x1004
   83D5 E5            [11]  204 	push	hl
   83D6 C5            [11]  205 	push	bc
   83D7 21 14 4B      [10]  206 	ld	hl, #_station_medium_ew
   83DA E5            [11]  207 	push	hl
   83DB CD 45 61      [17]  208 	call	_cpct_drawSprite
                            209 ;src/game/world.c:27: break;
   83DE C3 8A 84      [10]  210 	jp	00118$
                            211 ;src/game/world.c:28: case T_SLNS:
   83E1                     212 00106$:
                            213 ;src/game/world.c:29: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   83E1 21 04 10      [10]  214 	ld	hl, #0x1004
   83E4 E5            [11]  215 	push	hl
   83E5 C5            [11]  216 	push	bc
   83E6 21 54 4B      [10]  217 	ld	hl, #_station_large_ns
   83E9 E5            [11]  218 	push	hl
   83EA CD 45 61      [17]  219 	call	_cpct_drawSprite
                            220 ;src/game/world.c:30: break;
   83ED C3 8A 84      [10]  221 	jp	00118$
                            222 ;src/game/world.c:31: case T_SLEW:
   83F0                     223 00107$:
                            224 ;src/game/world.c:32: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   83F0 21 04 10      [10]  225 	ld	hl, #0x1004
   83F3 E5            [11]  226 	push	hl
   83F4 C5            [11]  227 	push	bc
   83F5 21 94 4B      [10]  228 	ld	hl, #_station_large_ew
   83F8 E5            [11]  229 	push	hl
   83F9 CD 45 61      [17]  230 	call	_cpct_drawSprite
                            231 ;src/game/world.c:33: break;
   83FC C3 8A 84      [10]  232 	jp	00118$
                            233 ;src/game/world.c:34: case T_REW:
   83FF                     234 00108$:
                            235 ;src/game/world.c:35: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   83FF 21 04 10      [10]  236 	ld	hl, #0x1004
   8402 E5            [11]  237 	push	hl
   8403 C5            [11]  238 	push	bc
   8404 21 D4 4B      [10]  239 	ld	hl, #_rail_ew
   8407 E5            [11]  240 	push	hl
   8408 CD 45 61      [17]  241 	call	_cpct_drawSprite
                            242 ;src/game/world.c:36: break;
   840B C3 8A 84      [10]  243 	jp	00118$
                            244 ;src/game/world.c:37: case T_RNS:
   840E                     245 00109$:
                            246 ;src/game/world.c:38: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   840E 21 04 10      [10]  247 	ld	hl, #0x1004
   8411 E5            [11]  248 	push	hl
   8412 C5            [11]  249 	push	bc
   8413 21 14 4C      [10]  250 	ld	hl, #_rail_ns
   8416 E5            [11]  251 	push	hl
   8417 CD 45 61      [17]  252 	call	_cpct_drawSprite
                            253 ;src/game/world.c:39: break;
   841A 18 6E         [12]  254 	jr	00118$
                            255 ;src/game/world.c:40: case T_REN:
   841C                     256 00110$:
                            257 ;src/game/world.c:41: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   841C 21 04 10      [10]  258 	ld	hl, #0x1004
   841F E5            [11]  259 	push	hl
   8420 C5            [11]  260 	push	bc
   8421 21 54 4C      [10]  261 	ld	hl, #_rail_en
   8424 E5            [11]  262 	push	hl
   8425 CD 45 61      [17]  263 	call	_cpct_drawSprite
                            264 ;src/game/world.c:42: break;
   8428 18 60         [12]  265 	jr	00118$
                            266 ;src/game/world.c:43: case T_RES:
   842A                     267 00111$:
                            268 ;src/game/world.c:44: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   842A 21 04 10      [10]  269 	ld	hl, #0x1004
   842D E5            [11]  270 	push	hl
   842E C5            [11]  271 	push	bc
   842F 21 94 4C      [10]  272 	ld	hl, #_rail_es
   8432 E5            [11]  273 	push	hl
   8433 CD 45 61      [17]  274 	call	_cpct_drawSprite
                            275 ;src/game/world.c:45: break;
   8436 18 52         [12]  276 	jr	00118$
                            277 ;src/game/world.c:46: case T_RWN:
   8438                     278 00112$:
                            279 ;src/game/world.c:47: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   8438 21 04 10      [10]  280 	ld	hl, #0x1004
   843B E5            [11]  281 	push	hl
   843C C5            [11]  282 	push	bc
   843D 21 D4 4C      [10]  283 	ld	hl, #_rail_wn
   8440 E5            [11]  284 	push	hl
   8441 CD 45 61      [17]  285 	call	_cpct_drawSprite
                            286 ;src/game/world.c:48: break;
   8444 18 44         [12]  287 	jr	00118$
                            288 ;src/game/world.c:49: case T_RWS:
   8446                     289 00113$:
                            290 ;src/game/world.c:50: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   8446 21 04 10      [10]  291 	ld	hl, #0x1004
   8449 E5            [11]  292 	push	hl
   844A C5            [11]  293 	push	bc
   844B 21 14 4D      [10]  294 	ld	hl, #_rail_ws
   844E E5            [11]  295 	push	hl
   844F CD 45 61      [17]  296 	call	_cpct_drawSprite
                            297 ;src/game/world.c:51: break;
   8452 18 36         [12]  298 	jr	00118$
                            299 ;src/game/world.c:52: case T_REWN:
   8454                     300 00114$:
                            301 ;src/game/world.c:53: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   8454 21 04 10      [10]  302 	ld	hl, #0x1004
   8457 E5            [11]  303 	push	hl
   8458 C5            [11]  304 	push	bc
   8459 21 54 4D      [10]  305 	ld	hl, #_rail_ew_n
   845C E5            [11]  306 	push	hl
   845D CD 45 61      [17]  307 	call	_cpct_drawSprite
                            308 ;src/game/world.c:54: break;
   8460 18 28         [12]  309 	jr	00118$
                            310 ;src/game/world.c:55: case T_REWS:
   8462                     311 00115$:
                            312 ;src/game/world.c:56: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   8462 21 04 10      [10]  313 	ld	hl, #0x1004
   8465 E5            [11]  314 	push	hl
   8466 C5            [11]  315 	push	bc
   8467 21 94 4D      [10]  316 	ld	hl, #_rail_ew_s
   846A E5            [11]  317 	push	hl
   846B CD 45 61      [17]  318 	call	_cpct_drawSprite
                            319 ;src/game/world.c:57: break;
   846E 18 1A         [12]  320 	jr	00118$
                            321 ;src/game/world.c:58: case T_RNSE:
   8470                     322 00116$:
                            323 ;src/game/world.c:59: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   8470 21 04 10      [10]  324 	ld	hl, #0x1004
   8473 E5            [11]  325 	push	hl
   8474 C5            [11]  326 	push	bc
   8475 21 14 4E      [10]  327 	ld	hl, #_rail_ns_e
   8478 E5            [11]  328 	push	hl
   8479 CD 45 61      [17]  329 	call	_cpct_drawSprite
                            330 ;src/game/world.c:60: break;
   847C 18 0C         [12]  331 	jr	00118$
                            332 ;src/game/world.c:61: case T_RNSW:
   847E                     333 00117$:
                            334 ;src/game/world.c:62: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   847E 21 04 10      [10]  335 	ld	hl, #0x1004
   8481 E5            [11]  336 	push	hl
   8482 C5            [11]  337 	push	bc
   8483 21 D4 4D      [10]  338 	ld	hl, #_rail_ns_w
   8486 E5            [11]  339 	push	hl
   8487 CD 45 61      [17]  340 	call	_cpct_drawSprite
                            341 ;src/game/world.c:64: }
   848A                     342 00118$:
                            343 ;src/game/world.c:66: setPixel(x*TILESIZE_H, y*TILESIZE_H, 0);
   848A DD 6E 04      [19]  344 	ld	l, 4 (ix)
   848D 26 00         [ 7]  345 	ld	h, #0x00
   848F 29            [11]  346 	add	hl, hl
   8490 29            [11]  347 	add	hl, hl
   8491 29            [11]  348 	add	hl, hl
   8492 29            [11]  349 	add	hl, hl
   8493 EB            [ 4]  350 	ex	de,hl
   8494 D5            [11]  351 	push	de
   8495 AF            [ 4]  352 	xor	a, a
   8496 F5            [11]  353 	push	af
   8497 33            [ 6]  354 	inc	sp
   8498 DD 7E FB      [19]  355 	ld	a, -5 (ix)
   849B F5            [11]  356 	push	af
   849C 33            [ 6]  357 	inc	sp
   849D D5            [11]  358 	push	de
   849E CD 7F 8E      [17]  359 	call	_setPixel
   84A1 F1            [10]  360 	pop	af
   84A2 F1            [10]  361 	pop	af
   84A3 D1            [10]  362 	pop	de
                            363 ;src/game/world.c:67: setPixel(x*TILESIZE_H+1, y*TILESIZE_H, 0);
   84A4 21 01 00      [10]  364 	ld	hl, #0x0001
   84A7 19            [11]  365 	add	hl,de
   84A8 DD 75 FC      [19]  366 	ld	-4 (ix), l
   84AB DD 74 FD      [19]  367 	ld	-3 (ix), h
   84AE D5            [11]  368 	push	de
   84AF AF            [ 4]  369 	xor	a, a
   84B0 F5            [11]  370 	push	af
   84B1 33            [ 6]  371 	inc	sp
   84B2 DD 7E FB      [19]  372 	ld	a, -5 (ix)
   84B5 F5            [11]  373 	push	af
   84B6 33            [ 6]  374 	inc	sp
   84B7 DD 6E FC      [19]  375 	ld	l,-4 (ix)
   84BA DD 66 FD      [19]  376 	ld	h,-3 (ix)
   84BD E5            [11]  377 	push	hl
   84BE CD 7F 8E      [17]  378 	call	_setPixel
   84C1 F1            [10]  379 	pop	af
   84C2 F1            [10]  380 	pop	af
   84C3 D1            [10]  381 	pop	de
                            382 ;src/game/world.c:68: setPixel(x*TILESIZE_H, y*TILESIZE_H+1, 0);
   84C4 DD 46 FB      [19]  383 	ld	b, -5 (ix)
   84C7 04            [ 4]  384 	inc	b
   84C8 C5            [11]  385 	push	bc
   84C9 D5            [11]  386 	push	de
   84CA AF            [ 4]  387 	xor	a, a
   84CB F5            [11]  388 	push	af
   84CC 33            [ 6]  389 	inc	sp
   84CD C5            [11]  390 	push	bc
   84CE 33            [ 6]  391 	inc	sp
   84CF D5            [11]  392 	push	de
   84D0 CD 7F 8E      [17]  393 	call	_setPixel
   84D3 F1            [10]  394 	pop	af
   84D4 F1            [10]  395 	pop	af
   84D5 D1            [10]  396 	pop	de
   84D6 C1            [10]  397 	pop	bc
                            398 ;src/game/world.c:69: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+1, 0);
   84D7 C5            [11]  399 	push	bc
   84D8 D5            [11]  400 	push	de
   84D9 AF            [ 4]  401 	xor	a, a
   84DA F5            [11]  402 	push	af
   84DB 33            [ 6]  403 	inc	sp
   84DC C5            [11]  404 	push	bc
   84DD 33            [ 6]  405 	inc	sp
   84DE DD 6E FC      [19]  406 	ld	l,-4 (ix)
   84E1 DD 66 FD      [19]  407 	ld	h,-3 (ix)
   84E4 E5            [11]  408 	push	hl
   84E5 CD 7F 8E      [17]  409 	call	_setPixel
   84E8 F1            [10]  410 	pop	af
   84E9 F1            [10]  411 	pop	af
   84EA D1            [10]  412 	pop	de
   84EB C1            [10]  413 	pop	bc
                            414 ;src/game/world.c:71: setPixel(x*TILESIZE_H+15, y*TILESIZE_H, 0);
   84EC 21 0F 00      [10]  415 	ld	hl, #0x000f
   84EF 19            [11]  416 	add	hl,de
   84F0 DD 75 FE      [19]  417 	ld	-2 (ix), l
   84F3 DD 74 FF      [19]  418 	ld	-1 (ix), h
   84F6 C5            [11]  419 	push	bc
   84F7 D5            [11]  420 	push	de
   84F8 AF            [ 4]  421 	xor	a, a
   84F9 F5            [11]  422 	push	af
   84FA 33            [ 6]  423 	inc	sp
   84FB DD 7E FB      [19]  424 	ld	a, -5 (ix)
   84FE F5            [11]  425 	push	af
   84FF 33            [ 6]  426 	inc	sp
   8500 DD 6E FE      [19]  427 	ld	l,-2 (ix)
   8503 DD 66 FF      [19]  428 	ld	h,-1 (ix)
   8506 E5            [11]  429 	push	hl
   8507 CD 7F 8E      [17]  430 	call	_setPixel
   850A F1            [10]  431 	pop	af
   850B F1            [10]  432 	pop	af
   850C D1            [10]  433 	pop	de
   850D C1            [10]  434 	pop	bc
                            435 ;src/game/world.c:72: setPixel(x*TILESIZE_H+14, y*TILESIZE_H, 0);
   850E 21 0E 00      [10]  436 	ld	hl, #0x000e
   8511 19            [11]  437 	add	hl,de
   8512 E3            [19]  438 	ex	(sp), hl
   8513 C5            [11]  439 	push	bc
   8514 D5            [11]  440 	push	de
   8515 AF            [ 4]  441 	xor	a, a
   8516 F5            [11]  442 	push	af
   8517 33            [ 6]  443 	inc	sp
   8518 DD 7E FB      [19]  444 	ld	a, -5 (ix)
   851B F5            [11]  445 	push	af
   851C 33            [ 6]  446 	inc	sp
   851D DD 6E F9      [19]  447 	ld	l,-7 (ix)
   8520 DD 66 FA      [19]  448 	ld	h,-6 (ix)
   8523 E5            [11]  449 	push	hl
   8524 CD 7F 8E      [17]  450 	call	_setPixel
   8527 F1            [10]  451 	pop	af
   8528 F1            [10]  452 	pop	af
   8529 D1            [10]  453 	pop	de
   852A C1            [10]  454 	pop	bc
                            455 ;src/game/world.c:73: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+1, 0);
   852B C5            [11]  456 	push	bc
   852C D5            [11]  457 	push	de
   852D AF            [ 4]  458 	xor	a, a
   852E F5            [11]  459 	push	af
   852F 33            [ 6]  460 	inc	sp
   8530 C5            [11]  461 	push	bc
   8531 33            [ 6]  462 	inc	sp
   8532 DD 6E FE      [19]  463 	ld	l,-2 (ix)
   8535 DD 66 FF      [19]  464 	ld	h,-1 (ix)
   8538 E5            [11]  465 	push	hl
   8539 CD 7F 8E      [17]  466 	call	_setPixel
   853C F1            [10]  467 	pop	af
   853D F1            [10]  468 	pop	af
   853E D1            [10]  469 	pop	de
   853F C1            [10]  470 	pop	bc
                            471 ;src/game/world.c:74: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+1, 0);
   8540 D5            [11]  472 	push	de
   8541 AF            [ 4]  473 	xor	a, a
   8542 F5            [11]  474 	push	af
   8543 33            [ 6]  475 	inc	sp
   8544 C5            [11]  476 	push	bc
   8545 33            [ 6]  477 	inc	sp
   8546 DD 6E F9      [19]  478 	ld	l,-7 (ix)
   8549 DD 66 FA      [19]  479 	ld	h,-6 (ix)
   854C E5            [11]  480 	push	hl
   854D CD 7F 8E      [17]  481 	call	_setPixel
   8550 F1            [10]  482 	pop	af
   8551 F1            [10]  483 	pop	af
   8552 D1            [10]  484 	pop	de
                            485 ;src/game/world.c:76: setPixel(x*TILESIZE_H, y*TILESIZE_H+15, 0);
   8553 DD 7E FB      [19]  486 	ld	a, -5 (ix)
   8556 C6 0F         [ 7]  487 	add	a, #0x0f
   8558 47            [ 4]  488 	ld	b, a
   8559 C5            [11]  489 	push	bc
   855A D5            [11]  490 	push	de
   855B AF            [ 4]  491 	xor	a, a
   855C F5            [11]  492 	push	af
   855D 33            [ 6]  493 	inc	sp
   855E C5            [11]  494 	push	bc
   855F 33            [ 6]  495 	inc	sp
   8560 D5            [11]  496 	push	de
   8561 CD 7F 8E      [17]  497 	call	_setPixel
   8564 F1            [10]  498 	pop	af
   8565 F1            [10]  499 	pop	af
   8566 D1            [10]  500 	pop	de
   8567 C1            [10]  501 	pop	bc
                            502 ;src/game/world.c:77: setPixel(x*TILESIZE_H, y*TILESIZE_H+14, 0);
   8568 DD 7E FB      [19]  503 	ld	a, -5 (ix)
   856B C6 0E         [ 7]  504 	add	a, #0x0e
   856D 4F            [ 4]  505 	ld	c, a
   856E C5            [11]  506 	push	bc
   856F AF            [ 4]  507 	xor	a, a
   8570 47            [ 4]  508 	ld	b, a
   8571 C5            [11]  509 	push	bc
   8572 D5            [11]  510 	push	de
   8573 CD 7F 8E      [17]  511 	call	_setPixel
   8576 F1            [10]  512 	pop	af
   8577 F1            [10]  513 	pop	af
   8578 C1            [10]  514 	pop	bc
                            515 ;src/game/world.c:78: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+14, 0);
   8579 C5            [11]  516 	push	bc
   857A AF            [ 4]  517 	xor	a, a
   857B 47            [ 4]  518 	ld	b, a
   857C C5            [11]  519 	push	bc
   857D DD 6E FC      [19]  520 	ld	l,-4 (ix)
   8580 DD 66 FD      [19]  521 	ld	h,-3 (ix)
   8583 E5            [11]  522 	push	hl
   8584 CD 7F 8E      [17]  523 	call	_setPixel
   8587 F1            [10]  524 	pop	af
   8588 F1            [10]  525 	pop	af
   8589 C1            [10]  526 	pop	bc
                            527 ;src/game/world.c:79: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+15, 0);
   858A C5            [11]  528 	push	bc
   858B AF            [ 4]  529 	xor	a, a
   858C F5            [11]  530 	push	af
   858D 33            [ 6]  531 	inc	sp
   858E C5            [11]  532 	push	bc
   858F 33            [ 6]  533 	inc	sp
   8590 DD 6E FC      [19]  534 	ld	l,-4 (ix)
   8593 DD 66 FD      [19]  535 	ld	h,-3 (ix)
   8596 E5            [11]  536 	push	hl
   8597 CD 7F 8E      [17]  537 	call	_setPixel
   859A F1            [10]  538 	pop	af
   859B F1            [10]  539 	pop	af
   859C C1            [10]  540 	pop	bc
                            541 ;src/game/world.c:81: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+15, 0);
   859D C5            [11]  542 	push	bc
   859E AF            [ 4]  543 	xor	a, a
   859F F5            [11]  544 	push	af
   85A0 33            [ 6]  545 	inc	sp
   85A1 C5            [11]  546 	push	bc
   85A2 33            [ 6]  547 	inc	sp
   85A3 DD 6E FE      [19]  548 	ld	l,-2 (ix)
   85A6 DD 66 FF      [19]  549 	ld	h,-1 (ix)
   85A9 E5            [11]  550 	push	hl
   85AA CD 7F 8E      [17]  551 	call	_setPixel
   85AD F1            [10]  552 	pop	af
   85AE F1            [10]  553 	pop	af
   85AF C1            [10]  554 	pop	bc
                            555 ;src/game/world.c:82: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+15, 0);
   85B0 C5            [11]  556 	push	bc
   85B1 AF            [ 4]  557 	xor	a, a
   85B2 F5            [11]  558 	push	af
   85B3 33            [ 6]  559 	inc	sp
   85B4 C5            [11]  560 	push	bc
   85B5 33            [ 6]  561 	inc	sp
   85B6 DD 6E F9      [19]  562 	ld	l,-7 (ix)
   85B9 DD 66 FA      [19]  563 	ld	h,-6 (ix)
   85BC E5            [11]  564 	push	hl
   85BD CD 7F 8E      [17]  565 	call	_setPixel
   85C0 F1            [10]  566 	pop	af
   85C1 F1            [10]  567 	pop	af
   85C2 C1            [10]  568 	pop	bc
                            569 ;src/game/world.c:83: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+14, 0);
   85C3 C5            [11]  570 	push	bc
   85C4 AF            [ 4]  571 	xor	a, a
   85C5 47            [ 4]  572 	ld	b, a
   85C6 C5            [11]  573 	push	bc
   85C7 DD 6E FE      [19]  574 	ld	l,-2 (ix)
   85CA DD 66 FF      [19]  575 	ld	h,-1 (ix)
   85CD E5            [11]  576 	push	hl
   85CE CD 7F 8E      [17]  577 	call	_setPixel
   85D1 F1            [10]  578 	pop	af
   85D2 F1            [10]  579 	pop	af
   85D3 C1            [10]  580 	pop	bc
                            581 ;src/game/world.c:84: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+14, 0);
   85D4 AF            [ 4]  582 	xor	a, a
   85D5 47            [ 4]  583 	ld	b, a
   85D6 C5            [11]  584 	push	bc
   85D7 C1            [10]  585 	pop	bc
   85D8 E1            [10]  586 	pop	hl
   85D9 E5            [11]  587 	push	hl
   85DA C5            [11]  588 	push	bc
   85DB E5            [11]  589 	push	hl
   85DC CD 7F 8E      [17]  590 	call	_setPixel
   85DF DD F9         [10]  591 	ld	sp,ix
   85E1 DD E1         [14]  592 	pop	ix
   85E3 C9            [10]  593 	ret
                            594 ;src/game/world.c:87: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            595 ;	---------------------------------
                            596 ; Function patternTile
                            597 ; ---------------------------------
   85E4                     598 _patternTile::
   85E4 DD E5         [15]  599 	push	ix
   85E6 DD 21 00 00   [14]  600 	ld	ix,#0
   85EA DD 39         [15]  601 	add	ix,sp
   85EC 21 F7 FF      [10]  602 	ld	hl, #-9
   85EF 39            [11]  603 	add	hl, sp
   85F0 F9            [ 6]  604 	ld	sp, hl
                            605 ;src/game/world.c:92: for(iy=0; iy<nBitsY; iy++)
   85F1 DD 7E 04      [19]  606 	ld	a, 4 (ix)
   85F4 D6 08         [ 7]  607 	sub	a, #0x08
   85F6 20 04         [12]  608 	jr	NZ,00153$
   85F8 3E 01         [ 7]  609 	ld	a,#0x01
   85FA 18 01         [12]  610 	jr	00154$
   85FC                     611 00153$:
   85FC AF            [ 4]  612 	xor	a,a
   85FD                     613 00154$:
   85FD DD 77 F7      [19]  614 	ld	-9 (ix), a
   8600 DD 7E 04      [19]  615 	ld	a, 4 (ix)
   8603 D6 02         [ 7]  616 	sub	a, #0x02
   8605 20 04         [12]  617 	jr	NZ,00155$
   8607 3E 01         [ 7]  618 	ld	a,#0x01
   8609 18 01         [12]  619 	jr	00156$
   860B                     620 00155$:
   860B AF            [ 4]  621 	xor	a,a
   860C                     622 00156$:
   860C DD 77 F8      [19]  623 	ld	-8 (ix), a
   860F 1E 00         [ 7]  624 	ld	e, #0x00
   8611                     625 00115$:
   8611 7B            [ 4]  626 	ld	a, e
   8612 DD 96 08      [19]  627 	sub	a, 8 (ix)
   8615 D2 C9 86      [10]  628 	jp	NC, 00117$
                            629 ;src/game/world.c:94: for(ix=0; ix<nBitsX; ix++)
   8618 D5            [11]  630 	push	de
   8619 16 00         [ 7]  631 	ld	d,#0x00
   861B 6B            [ 4]  632 	ld	l, e
   861C 62            [ 4]  633 	ld	h, d
   861D 29            [11]  634 	add	hl, hl
   861E 29            [11]  635 	add	hl, hl
   861F 19            [11]  636 	add	hl, de
   8620 29            [11]  637 	add	hl, hl
   8621 29            [11]  638 	add	hl, hl
   8622 29            [11]  639 	add	hl, hl
   8623 29            [11]  640 	add	hl, hl
   8624 D1            [10]  641 	pop	de
   8625 4D            [ 4]  642 	ld	c, l
   8626 44            [ 4]  643 	ld	b, h
   8627 DD 7E 05      [19]  644 	ld	a, 5 (ix)
   862A 81            [ 4]  645 	add	a, c
   862B DD 77 F9      [19]  646 	ld	-7 (ix), a
   862E DD 7E 06      [19]  647 	ld	a, 6 (ix)
   8631 88            [ 4]  648 	adc	a, b
   8632 DD 77 FA      [19]  649 	ld	-6 (ix), a
   8635 D5            [11]  650 	push	de
   8636 DD 66 07      [19]  651 	ld	h, 7 (ix)
   8639 2E 00         [ 7]  652 	ld	l, #0x00
   863B 55            [ 4]  653 	ld	d, l
   863C 06 08         [ 7]  654 	ld	b, #0x08
   863E                     655 00157$:
   863E 29            [11]  656 	add	hl, hl
   863F 30 01         [12]  657 	jr	NC,00158$
   8641 19            [11]  658 	add	hl, de
   8642                     659 00158$:
   8642 10 FA         [13]  660 	djnz	00157$
   8644 D1            [10]  661 	pop	de
   8645 DD 75 FB      [19]  662 	ld	-5 (ix), l
   8648 DD 74 FC      [19]  663 	ld	-4 (ix), h
   864B 16 00         [ 7]  664 	ld	d, #0x00
   864D                     665 00112$:
   864D 7A            [ 4]  666 	ld	a, d
   864E DD 96 07      [19]  667 	sub	a, 7 (ix)
   8651 30 72         [12]  668 	jr	NC,00116$
                            669 ;src/game/world.c:96: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   8653 DD 72 FD      [19]  670 	ld	-3 (ix), d
   8656 DD 36 FE 00   [19]  671 	ld	-2 (ix), #0x00
   865A DD 7E FD      [19]  672 	ld	a, -3 (ix)
   865D DD 86 FB      [19]  673 	add	a, -5 (ix)
   8660 4F            [ 4]  674 	ld	c, a
   8661 DD 7E FE      [19]  675 	ld	a, -2 (ix)
   8664 DD 8E FC      [19]  676 	adc	a, -4 (ix)
   8667 47            [ 4]  677 	ld	b, a
   8668 DD 6E 09      [19]  678 	ld	l,9 (ix)
   866B DD 66 0A      [19]  679 	ld	h,10 (ix)
   866E D5            [11]  680 	push	de
   866F C5            [11]  681 	push	bc
   8670 E5            [11]  682 	push	hl
   8671 CD E3 60      [17]  683 	call	_cpct_getBit
   8674 DD 75 FF      [19]  684 	ld	-1 (ix), l
   8677 D1            [10]  685 	pop	de
   8678 DD 7E FF      [19]  686 	ld	a, -1 (ix)
   867B B7            [ 4]  687 	or	a, a
   867C 28 44         [12]  688 	jr	Z,00113$
   867E DD 7E F9      [19]  689 	ld	a, -7 (ix)
   8681 DD 86 FD      [19]  690 	add	a, -3 (ix)
   8684 4F            [ 4]  691 	ld	c, a
   8685 DD 7E FA      [19]  692 	ld	a, -6 (ix)
   8688 DD 8E FE      [19]  693 	adc	a, -2 (ix)
   868B 47            [ 4]  694 	ld	b,a
   868C EE 80         [ 7]  695 	xor	a, #0x80
   868E D6 8F         [ 7]  696 	sub	a, #0x8f
   8690 30 30         [12]  697 	jr	NC,00113$
                            698 ;src/game/world.c:98: if(tileType == FOREST)
   8692 DD 7E F7      [19]  699 	ld	a, -9 (ix)
   8695 B7            [ 4]  700 	or	a, a
   8696 28 0A         [12]  701 	jr	Z,00104$
                            702 ;src/game/world.c:99: p_world[index+iy*WIDTH+ix] = tileType;
   8698 21 1D 74      [10]  703 	ld	hl, #_p_world
   869B 09            [11]  704 	add	hl, bc
   869C DD 7E 04      [19]  705 	ld	a, 4 (ix)
   869F 77            [ 7]  706 	ld	(hl), a
   86A0 18 20         [12]  707 	jr	00113$
   86A2                     708 00104$:
                            709 ;src/game/world.c:100: else if(tileType==DWELLINGS1)
   86A2 DD 7E F8      [19]  710 	ld	a, -8 (ix)
   86A5 B7            [ 4]  711 	or	a, a
   86A6 28 1A         [12]  712 	jr	Z,00113$
                            713 ;src/game/world.c:101: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandom_mxor_u8 ()%3+2;
   86A8 21 1D 74      [10]  714 	ld	hl, #_p_world
   86AB 09            [11]  715 	add	hl, bc
   86AC E5            [11]  716 	push	hl
   86AD D5            [11]  717 	push	de
   86AE CD 30 66      [17]  718 	call	_cpct_getRandom_mxor_u8
   86B1 45            [ 4]  719 	ld	b, l
   86B2 3E 03         [ 7]  720 	ld	a, #0x03
   86B4 F5            [11]  721 	push	af
   86B5 33            [ 6]  722 	inc	sp
   86B6 C5            [11]  723 	push	bc
   86B7 33            [ 6]  724 	inc	sp
   86B8 CD EA 61      [17]  725 	call	__moduchar
   86BB F1            [10]  726 	pop	af
   86BC 4D            [ 4]  727 	ld	c, l
   86BD D1            [10]  728 	pop	de
   86BE E1            [10]  729 	pop	hl
   86BF 0C            [ 4]  730 	inc	c
   86C0 0C            [ 4]  731 	inc	c
   86C1 71            [ 7]  732 	ld	(hl), c
   86C2                     733 00113$:
                            734 ;src/game/world.c:94: for(ix=0; ix<nBitsX; ix++)
   86C2 14            [ 4]  735 	inc	d
   86C3 18 88         [12]  736 	jr	00112$
   86C5                     737 00116$:
                            738 ;src/game/world.c:92: for(iy=0; iy<nBitsY; iy++)
   86C5 1C            [ 4]  739 	inc	e
   86C6 C3 11 86      [10]  740 	jp	00115$
   86C9                     741 00117$:
   86C9 DD F9         [10]  742 	ld	sp, ix
   86CB DD E1         [14]  743 	pop	ix
   86CD C9            [10]  744 	ret
                            745 ;src/game/world.c:108: void generateWorld()
                            746 ;	---------------------------------
                            747 ; Function generateWorld
                            748 ; ---------------------------------
   86CE                     749 _generateWorld::
   86CE DD E5         [15]  750 	push	ix
   86D0 DD 21 00 00   [14]  751 	ld	ix,#0
   86D4 DD 39         [15]  752 	add	ix,sp
   86D6 21 E4 FF      [10]  753 	ld	hl, #-28
   86D9 39            [11]  754 	add	hl, sp
   86DA F9            [ 6]  755 	ld	sp, hl
                            756 ;src/game/world.c:115: CURSOR_MODE = NONE;
   86DB 21 21 83      [10]  757 	ld	hl,#_CURSOR_MODE + 0
   86DE 36 00         [10]  758 	ld	(hl), #0x00
                            759 ;src/game/world.c:118: cpct_setSeed_mxor ((u32)cpct_count2VSYNC());
   86E0 CD F3 62      [17]  760 	call	_cpct_count2VSYNC
   86E3 11 00 00      [10]  761 	ld	de,#0x0000
   86E6 CD 42 64      [17]  762 	call	_cpct_setSeed_mxor
                            763 ;src/game/world.c:122: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   86E9 01 00 00      [10]  764 	ld	bc, #0x0000
   86EC                     765 00119$:
                            766 ;src/game/world.c:124: p_world[iy] =  cpct_getRandom_mxor_u16()%2;
   86EC 21 1D 74      [10]  767 	ld	hl, #_p_world
   86EF 09            [11]  768 	add	hl, bc
   86F0 E5            [11]  769 	push	hl
   86F1 C5            [11]  770 	push	bc
   86F2 CD 28 65      [17]  771 	call	_cpct_getRandom_mxor_u16
   86F5 5D            [ 4]  772 	ld	e, l
   86F6 C1            [10]  773 	pop	bc
   86F7 E1            [10]  774 	pop	hl
   86F8 7B            [ 4]  775 	ld	a, e
   86F9 E6 01         [ 7]  776 	and	a, #0x01
   86FB 77            [ 7]  777 	ld	(hl), a
                            778 ;src/game/world.c:122: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   86FC 03            [ 6]  779 	inc	bc
   86FD 78            [ 4]  780 	ld	a, b
   86FE EE 80         [ 7]  781 	xor	a, #0x80
   8700 D6 8F         [ 7]  782 	sub	a, #0x8f
   8702 38 E8         [12]  783 	jr	C,00119$
                            784 ;src/game/world.c:129: for(ix=0; ix<NBFOREST; ix++)
   8704 21 02 00      [10]  785 	ld	hl, #0x0002
   8707 39            [11]  786 	add	hl, sp
   8708 DD 75 F8      [19]  787 	ld	-8 (ix), l
   870B DD 74 F9      [19]  788 	ld	-7 (ix), h
   870E 01 00 00      [10]  789 	ld	bc, #0x0000
   8711                     790 00121$:
                            791 ;src/game/world.c:131: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   8711 C5            [11]  792 	push	bc
   8712 CD 28 65      [17]  793 	call	_cpct_getRandom_mxor_u16
   8715 11 00 0F      [10]  794 	ld	de, #0x0f00
   8718 D5            [11]  795 	push	de
   8719 E5            [11]  796 	push	hl
   871A CD F6 61      [17]  797 	call	__moduint
   871D F1            [10]  798 	pop	af
   871E E3            [19]  799 	ex	(sp),hl
   871F CD 28 65      [17]  800 	call	_cpct_getRandom_mxor_u16
   8722 D1            [10]  801 	pop	de
   8723 C1            [10]  802 	pop	bc
   8724 7D            [ 4]  803 	ld	a, l
   8725 E6 03         [ 7]  804 	and	a, #0x03
   8727 6F            [ 4]  805 	ld	l, a
   8728 26 00         [ 7]  806 	ld	h, #0x00
                            807 ;src/game/world.c:137: p_forest[1] = 0b11000111;
   872A DD 7E F8      [19]  808 	ld	a, -8 (ix)
   872D C6 01         [ 7]  809 	add	a, #0x01
   872F DD 77 FE      [19]  810 	ld	-2 (ix), a
   8732 DD 7E F9      [19]  811 	ld	a, -7 (ix)
   8735 CE 00         [ 7]  812 	adc	a, #0x00
   8737 DD 77 FF      [19]  813 	ld	-1 (ix), a
                            814 ;src/game/world.c:138: p_forest[2] = 0b11011110;
   873A DD 7E F8      [19]  815 	ld	a, -8 (ix)
   873D C6 02         [ 7]  816 	add	a, #0x02
   873F DD 77 F6      [19]  817 	ld	-10 (ix), a
   8742 DD 7E F9      [19]  818 	ld	a, -7 (ix)
   8745 CE 00         [ 7]  819 	adc	a, #0x00
   8747 DD 77 F7      [19]  820 	ld	-9 (ix), a
                            821 ;src/game/world.c:139: p_forest[3] = 0b01111110;
   874A DD 7E F8      [19]  822 	ld	a, -8 (ix)
   874D C6 03         [ 7]  823 	add	a, #0x03
   874F DD 77 F0      [19]  824 	ld	-16 (ix), a
   8752 DD 7E F9      [19]  825 	ld	a, -7 (ix)
   8755 CE 00         [ 7]  826 	adc	a, #0x00
   8757 DD 77 F1      [19]  827 	ld	-15 (ix), a
                            828 ;src/game/world.c:140: p_forest[4] = 0b11111110; 
   875A DD 7E F8      [19]  829 	ld	a, -8 (ix)
   875D C6 04         [ 7]  830 	add	a, #0x04
   875F DD 77 F2      [19]  831 	ld	-14 (ix), a
   8762 DD 7E F9      [19]  832 	ld	a, -7 (ix)
   8765 CE 00         [ 7]  833 	adc	a, #0x00
   8767 DD 77 F3      [19]  834 	ld	-13 (ix), a
                            835 ;src/game/world.c:141: p_forest[5] = 0b01111111;
   876A DD 7E F8      [19]  836 	ld	a, -8 (ix)
   876D C6 05         [ 7]  837 	add	a, #0x05
   876F DD 77 FC      [19]  838 	ld	-4 (ix), a
   8772 DD 7E F9      [19]  839 	ld	a, -7 (ix)
   8775 CE 00         [ 7]  840 	adc	a, #0x00
   8777 DD 77 FD      [19]  841 	ld	-3 (ix), a
                            842 ;src/game/world.c:142: p_forest[6] = 0b11101111;
   877A DD 7E F8      [19]  843 	ld	a, -8 (ix)
   877D C6 06         [ 7]  844 	add	a, #0x06
   877F DD 77 FA      [19]  845 	ld	-6 (ix), a
   8782 DD 7E F9      [19]  846 	ld	a, -7 (ix)
   8785 CE 00         [ 7]  847 	adc	a, #0x00
   8787 DD 77 FB      [19]  848 	ld	-5 (ix), a
                            849 ;src/game/world.c:143: p_forest[7] = 0b11001111;
   878A DD 7E F8      [19]  850 	ld	a, -8 (ix)
   878D C6 07         [ 7]  851 	add	a, #0x07
   878F DD 77 F4      [19]  852 	ld	-12 (ix), a
   8792 DD 7E F9      [19]  853 	ld	a, -7 (ix)
   8795 CE 00         [ 7]  854 	adc	a, #0x00
   8797 DD 77 F5      [19]  855 	ld	-11 (ix), a
                            856 ;src/game/world.c:133: switch(cpct_getRandom_mxor_u16()%4)
   879A 7D            [ 4]  857 	ld	a, l
   879B B7            [ 4]  858 	or	a, a
   879C B4            [ 4]  859 	or	a, h
   879D 28 16         [12]  860 	jr	Z,00102$
   879F 7D            [ 4]  861 	ld	a, l
   87A0 3D            [ 4]  862 	dec	a
   87A1 B4            [ 4]  863 	or	a, h
   87A2 28 54         [12]  864 	jr	Z,00103$
   87A4 7D            [ 4]  865 	ld	a, l
   87A5 D6 02         [ 7]  866 	sub	a, #0x02
   87A7 B4            [ 4]  867 	or	a, h
   87A8 CA 3B 88      [10]  868 	jp	Z,00104$
   87AB 7D            [ 4]  869 	ld	a, l
   87AC D6 03         [ 7]  870 	sub	a, #0x03
   87AE B4            [ 4]  871 	or	a, h
   87AF CA 7D 88      [10]  872 	jp	Z,00105$
   87B2 C3 BD 88      [10]  873 	jp	00106$
                            874 ;src/game/world.c:135: case 0:
   87B5                     875 00102$:
                            876 ;src/game/world.c:136: p_forest[0] = 0b10000100;
   87B5 DD 6E F8      [19]  877 	ld	l,-8 (ix)
   87B8 DD 66 F9      [19]  878 	ld	h,-7 (ix)
   87BB 36 84         [10]  879 	ld	(hl), #0x84
                            880 ;src/game/world.c:137: p_forest[1] = 0b11000111;
   87BD DD 6E FE      [19]  881 	ld	l,-2 (ix)
   87C0 DD 66 FF      [19]  882 	ld	h,-1 (ix)
   87C3 36 C7         [10]  883 	ld	(hl), #0xc7
                            884 ;src/game/world.c:138: p_forest[2] = 0b11011110;
   87C5 DD 6E F6      [19]  885 	ld	l,-10 (ix)
   87C8 DD 66 F7      [19]  886 	ld	h,-9 (ix)
   87CB 36 DE         [10]  887 	ld	(hl), #0xde
                            888 ;src/game/world.c:139: p_forest[3] = 0b01111110;
   87CD DD 6E F0      [19]  889 	ld	l,-16 (ix)
   87D0 DD 66 F1      [19]  890 	ld	h,-15 (ix)
   87D3 36 7E         [10]  891 	ld	(hl), #0x7e
                            892 ;src/game/world.c:140: p_forest[4] = 0b11111110; 
   87D5 DD 6E F2      [19]  893 	ld	l,-14 (ix)
   87D8 DD 66 F3      [19]  894 	ld	h,-13 (ix)
   87DB 36 FE         [10]  895 	ld	(hl), #0xfe
                            896 ;src/game/world.c:141: p_forest[5] = 0b01111111;
   87DD DD 6E FC      [19]  897 	ld	l,-4 (ix)
   87E0 DD 66 FD      [19]  898 	ld	h,-3 (ix)
   87E3 36 7F         [10]  899 	ld	(hl), #0x7f
                            900 ;src/game/world.c:142: p_forest[6] = 0b11101111;
   87E5 DD 6E FA      [19]  901 	ld	l,-6 (ix)
   87E8 DD 66 FB      [19]  902 	ld	h,-5 (ix)
   87EB 36 EF         [10]  903 	ld	(hl), #0xef
                            904 ;src/game/world.c:143: p_forest[7] = 0b11001111;
   87ED DD 6E F4      [19]  905 	ld	l,-12 (ix)
   87F0 DD 66 F5      [19]  906 	ld	h,-11 (ix)
   87F3 36 CF         [10]  907 	ld	(hl), #0xcf
                            908 ;src/game/world.c:144: break;
   87F5 C3 BD 88      [10]  909 	jp	00106$
                            910 ;src/game/world.c:145: case 1:
   87F8                     911 00103$:
                            912 ;src/game/world.c:146: p_forest[0] = 0b00001100;
   87F8 DD 6E F8      [19]  913 	ld	l,-8 (ix)
   87FB DD 66 F9      [19]  914 	ld	h,-7 (ix)
   87FE 36 0C         [10]  915 	ld	(hl), #0x0c
                            916 ;src/game/world.c:147: p_forest[1] = 0b11111000;
   8800 DD 6E FE      [19]  917 	ld	l,-2 (ix)
   8803 DD 66 FF      [19]  918 	ld	h,-1 (ix)
   8806 36 F8         [10]  919 	ld	(hl), #0xf8
                            920 ;src/game/world.c:148: p_forest[2] = 0b00111111;
   8808 DD 6E F6      [19]  921 	ld	l,-10 (ix)
   880B DD 66 F7      [19]  922 	ld	h,-9 (ix)
   880E 36 3F         [10]  923 	ld	(hl), #0x3f
                            924 ;src/game/world.c:149: p_forest[3] = 0b01111110;
   8810 DD 6E F0      [19]  925 	ld	l,-16 (ix)
   8813 DD 66 F1      [19]  926 	ld	h,-15 (ix)
   8816 36 7E         [10]  927 	ld	(hl), #0x7e
                            928 ;src/game/world.c:150: p_forest[4] = 0b11111110; 
   8818 DD 6E F2      [19]  929 	ld	l,-14 (ix)
   881B DD 66 F3      [19]  930 	ld	h,-13 (ix)
   881E 36 FE         [10]  931 	ld	(hl), #0xfe
                            932 ;src/game/world.c:151: p_forest[5] = 0b01011111;
   8820 DD 6E FC      [19]  933 	ld	l,-4 (ix)
   8823 DD 66 FD      [19]  934 	ld	h,-3 (ix)
   8826 36 5F         [10]  935 	ld	(hl), #0x5f
                            936 ;src/game/world.c:152: p_forest[6] = 0b11001111;
   8828 DD 6E FA      [19]  937 	ld	l,-6 (ix)
   882B DD 66 FB      [19]  938 	ld	h,-5 (ix)
   882E 36 CF         [10]  939 	ld	(hl), #0xcf
                            940 ;src/game/world.c:153: p_forest[7] = 0b10001100;
   8830 DD 6E F4      [19]  941 	ld	l,-12 (ix)
   8833 DD 66 F5      [19]  942 	ld	h,-11 (ix)
   8836 36 8C         [10]  943 	ld	(hl), #0x8c
                            944 ;src/game/world.c:154: break;
   8838 C3 BD 88      [10]  945 	jp	00106$
                            946 ;src/game/world.c:155: case 2:
   883B                     947 00104$:
                            948 ;src/game/world.c:156: p_forest[0] = 0b00110000;
   883B DD 6E F8      [19]  949 	ld	l,-8 (ix)
   883E DD 66 F9      [19]  950 	ld	h,-7 (ix)
   8841 36 30         [10]  951 	ld	(hl), #0x30
                            952 ;src/game/world.c:157: p_forest[1] = 0b11110100;
   8843 DD 6E FE      [19]  953 	ld	l,-2 (ix)
   8846 DD 66 FF      [19]  954 	ld	h,-1 (ix)
   8849 36 F4         [10]  955 	ld	(hl), #0xf4
                            956 ;src/game/world.c:158: p_forest[2] = 0b11111111;
   884B DD 6E F6      [19]  957 	ld	l,-10 (ix)
   884E DD 66 F7      [19]  958 	ld	h,-9 (ix)
   8851 36 FF         [10]  959 	ld	(hl), #0xff
                            960 ;src/game/world.c:159: p_forest[3] = 0b11111111;
   8853 DD 6E F0      [19]  961 	ld	l,-16 (ix)
   8856 DD 66 F1      [19]  962 	ld	h,-15 (ix)
   8859 36 FF         [10]  963 	ld	(hl), #0xff
                            964 ;src/game/world.c:160: p_forest[4] = 0b01111100;
   885B DD 6E F2      [19]  965 	ld	l,-14 (ix)
   885E DD 66 F3      [19]  966 	ld	h,-13 (ix)
   8861 36 7C         [10]  967 	ld	(hl), #0x7c
                            968 ;src/game/world.c:161: p_forest[5] = 0b01111110;
   8863 DD 6E FC      [19]  969 	ld	l,-4 (ix)
   8866 DD 66 FD      [19]  970 	ld	h,-3 (ix)
   8869 36 7E         [10]  971 	ld	(hl), #0x7e
                            972 ;src/game/world.c:162: p_forest[6] = 0b00111110;
   886B DD 6E FA      [19]  973 	ld	l,-6 (ix)
   886E DD 66 FB      [19]  974 	ld	h,-5 (ix)
   8871 36 3E         [10]  975 	ld	(hl), #0x3e
                            976 ;src/game/world.c:163: p_forest[7] = 0b00011000;
   8873 DD 6E F4      [19]  977 	ld	l,-12 (ix)
   8876 DD 66 F5      [19]  978 	ld	h,-11 (ix)
   8879 36 18         [10]  979 	ld	(hl), #0x18
                            980 ;src/game/world.c:164: break;
   887B 18 40         [12]  981 	jr	00106$
                            982 ;src/game/world.c:165: case 3:
   887D                     983 00105$:
                            984 ;src/game/world.c:166: p_forest[0] = 0b11000000; 
   887D DD 6E F8      [19]  985 	ld	l,-8 (ix)
   8880 DD 66 F9      [19]  986 	ld	h,-7 (ix)
   8883 36 C0         [10]  987 	ld	(hl), #0xc0
                            988 ;src/game/world.c:167: p_forest[1] = 0b11100111;
   8885 DD 6E FE      [19]  989 	ld	l,-2 (ix)
   8888 DD 66 FF      [19]  990 	ld	h,-1 (ix)
   888B 36 E7         [10]  991 	ld	(hl), #0xe7
                            992 ;src/game/world.c:168: p_forest[2] = 0b01111110;
   888D DD 6E F6      [19]  993 	ld	l,-10 (ix)
   8890 DD 66 F7      [19]  994 	ld	h,-9 (ix)
   8893 36 7E         [10]  995 	ld	(hl), #0x7e
                            996 ;src/game/world.c:169: p_forest[3] = 0b01111110;
   8895 DD 6E F0      [19]  997 	ld	l,-16 (ix)
   8898 DD 66 F1      [19]  998 	ld	h,-15 (ix)
   889B 36 7E         [10]  999 	ld	(hl), #0x7e
                           1000 ;src/game/world.c:170: p_forest[4] = 0b11111110;
   889D DD 6E F2      [19] 1001 	ld	l,-14 (ix)
   88A0 DD 66 F3      [19] 1002 	ld	h,-13 (ix)
   88A3 36 FE         [10] 1003 	ld	(hl), #0xfe
                           1004 ;src/game/world.c:171: p_forest[5] = 0b11111100;
   88A5 DD 6E FC      [19] 1005 	ld	l,-4 (ix)
   88A8 DD 66 FD      [19] 1006 	ld	h,-3 (ix)
   88AB 36 FC         [10] 1007 	ld	(hl), #0xfc
                           1008 ;src/game/world.c:172: p_forest[6] = 0b01111000;
   88AD DD 6E FA      [19] 1009 	ld	l,-6 (ix)
   88B0 DD 66 FB      [19] 1010 	ld	h,-5 (ix)
   88B3 36 78         [10] 1011 	ld	(hl), #0x78
                           1012 ;src/game/world.c:173: p_forest[7] = 0b00110000;
   88B5 DD 6E F4      [19] 1013 	ld	l,-12 (ix)
   88B8 DD 66 F5      [19] 1014 	ld	h,-11 (ix)
   88BB 36 30         [10] 1015 	ld	(hl), #0x30
                           1016 ;src/game/world.c:175: }
   88BD                    1017 00106$:
                           1018 ;src/game/world.c:176: patternTile(FOREST, iy, 8, 8, p_forest);
   88BD DD 6E F8      [19] 1019 	ld	l,-8 (ix)
   88C0 DD 66 F9      [19] 1020 	ld	h,-7 (ix)
   88C3 C5            [11] 1021 	push	bc
   88C4 E5            [11] 1022 	push	hl
   88C5 21 08 08      [10] 1023 	ld	hl, #0x0808
   88C8 E5            [11] 1024 	push	hl
   88C9 D5            [11] 1025 	push	de
   88CA 3E 08         [ 7] 1026 	ld	a, #0x08
   88CC F5            [11] 1027 	push	af
   88CD 33            [ 6] 1028 	inc	sp
   88CE CD E4 85      [17] 1029 	call	_patternTile
   88D1 21 07 00      [10] 1030 	ld	hl, #7
   88D4 39            [11] 1031 	add	hl, sp
   88D5 F9            [ 6] 1032 	ld	sp, hl
   88D6 C1            [10] 1033 	pop	bc
                           1034 ;src/game/world.c:129: for(ix=0; ix<NBFOREST; ix++)
   88D7 03            [ 6] 1035 	inc	bc
   88D8 79            [ 4] 1036 	ld	a, c
   88D9 D6 32         [ 7] 1037 	sub	a, #0x32
   88DB 78            [ 4] 1038 	ld	a, b
   88DC 17            [ 4] 1039 	rla
   88DD 3F            [ 4] 1040 	ccf
   88DE 1F            [ 4] 1041 	rra
   88DF DE 80         [ 7] 1042 	sbc	a, #0x80
   88E1 DA 11 87      [10] 1043 	jp	C, 00121$
                           1044 ;src/game/world.c:182: for(ix=0; ix<NBFARM; ix++)
   88E4 01 3C 00      [10] 1045 	ld	bc, #0x003c
   88E7                    1046 00125$:
                           1047 ;src/game/world.c:184: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT)%(WIDTH*HEIGHT);
   88E7 C5            [11] 1048 	push	bc
   88E8 CD 28 65      [17] 1049 	call	_cpct_getRandom_mxor_u16
   88EB 11 00 0F      [10] 1050 	ld	de, #0x0f00
   88EE D5            [11] 1051 	push	de
   88EF E5            [11] 1052 	push	hl
   88F0 CD F6 61      [17] 1053 	call	__moduint
   88F3 F1            [10] 1054 	pop	af
   88F4 F1            [10] 1055 	pop	af
   88F5 11 00 0F      [10] 1056 	ld	de, #0x0f00
   88F8 D5            [11] 1057 	push	de
   88F9 E5            [11] 1058 	push	hl
   88FA CD F6 61      [17] 1059 	call	__moduint
   88FD F1            [10] 1060 	pop	af
   88FE F1            [10] 1061 	pop	af
   88FF C1            [10] 1062 	pop	bc
                           1063 ;src/game/world.c:185: p_world[iy] = cpct_rand()%2+5;
   8900 11 1D 74      [10] 1064 	ld	de, #_p_world
   8903 19            [11] 1065 	add	hl, de
   8904 E5            [11] 1066 	push	hl
   8905 C5            [11] 1067 	push	bc
   8906 CD 30 66      [17] 1068 	call	_cpct_getRandom_mxor_u8
   8909 7D            [ 4] 1069 	ld	a, l
   890A C1            [10] 1070 	pop	bc
   890B E1            [10] 1071 	pop	hl
   890C E6 01         [ 7] 1072 	and	a, #0x01
   890E C6 05         [ 7] 1073 	add	a, #0x05
   8910 77            [ 7] 1074 	ld	(hl), a
   8911 0B            [ 6] 1075 	dec	bc
                           1076 ;src/game/world.c:182: for(ix=0; ix<NBFARM; ix++)
   8912 78            [ 4] 1077 	ld	a, b
   8913 B1            [ 4] 1078 	or	a,c
   8914 20 D1         [12] 1079 	jr	NZ,00125$
                           1080 ;src/game/world.c:190: for(ix=0; ix<NBURBAN; ix++)
   8916 01 14 00      [10] 1081 	ld	bc, #0x0014
   8919                    1082 00128$:
                           1083 ;src/game/world.c:192: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   8919 C5            [11] 1084 	push	bc
   891A CD 28 65      [17] 1085 	call	_cpct_getRandom_mxor_u16
   891D 11 00 0F      [10] 1086 	ld	de, #0x0f00
   8920 D5            [11] 1087 	push	de
   8921 E5            [11] 1088 	push	hl
   8922 CD F6 61      [17] 1089 	call	__moduint
   8925 F1            [10] 1090 	pop	af
   8926 F1            [10] 1091 	pop	af
   8927 C1            [10] 1092 	pop	bc
                           1093 ;src/game/world.c:193: p_world[iy] = cpct_rand()%3+2;
   8928 11 1D 74      [10] 1094 	ld	de, #_p_world
   892B 19            [11] 1095 	add	hl, de
   892C E5            [11] 1096 	push	hl
   892D C5            [11] 1097 	push	bc
   892E CD 30 66      [17] 1098 	call	_cpct_getRandom_mxor_u8
   8931 55            [ 4] 1099 	ld	d, l
   8932 3E 03         [ 7] 1100 	ld	a, #0x03
   8934 F5            [11] 1101 	push	af
   8935 33            [ 6] 1102 	inc	sp
   8936 D5            [11] 1103 	push	de
   8937 33            [ 6] 1104 	inc	sp
   8938 CD EA 61      [17] 1105 	call	__moduchar
   893B F1            [10] 1106 	pop	af
   893C 5D            [ 4] 1107 	ld	e, l
   893D C1            [10] 1108 	pop	bc
   893E E1            [10] 1109 	pop	hl
   893F 1C            [ 4] 1110 	inc	e
   8940 1C            [ 4] 1111 	inc	e
   8941 73            [ 7] 1112 	ld	(hl), e
   8942 0B            [ 6] 1113 	dec	bc
                           1114 ;src/game/world.c:190: for(ix=0; ix<NBURBAN; ix++)
   8943 78            [ 4] 1115 	ld	a, b
   8944 B1            [ 4] 1116 	or	a,c
   8945 20 D2         [12] 1117 	jr	NZ,00128$
                           1118 ;src/game/world.c:196: for(ix=0; ix<NBURBAN; ix++)
   8947 21 00 00      [10] 1119 	ld	hl, #0x0000
   894A 39            [11] 1120 	add	hl, sp
   894B 4D            [ 4] 1121 	ld	c, l
   894C 44            [ 4] 1122 	ld	b, h
   894D DD 36 EE 00   [19] 1123 	ld	-18 (ix), #0x00
   8951 DD 36 EF 00   [19] 1124 	ld	-17 (ix), #0x00
   8955                    1125 00129$:
                           1126 ;src/game/world.c:198: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   8955 C5            [11] 1127 	push	bc
   8956 CD 28 65      [17] 1128 	call	_cpct_getRandom_mxor_u16
   8959 11 00 0F      [10] 1129 	ld	de, #0x0f00
   895C D5            [11] 1130 	push	de
   895D E5            [11] 1131 	push	hl
   895E CD F6 61      [17] 1132 	call	__moduint
   8961 F1            [10] 1133 	pop	af
   8962 F1            [10] 1134 	pop	af
   8963 C1            [10] 1135 	pop	bc
   8964 DD 75 F4      [19] 1136 	ld	-12 (ix), l
   8967 DD 74 F5      [19] 1137 	ld	-11 (ix), h
                           1138 ;src/game/world.c:200: switch(cpct_rand()%6)
   896A C5            [11] 1139 	push	bc
   896B CD 30 66      [17] 1140 	call	_cpct_getRandom_mxor_u8
   896E 55            [ 4] 1141 	ld	d, l
   896F 3E 06         [ 7] 1142 	ld	a, #0x06
   8971 F5            [11] 1143 	push	af
   8972 33            [ 6] 1144 	inc	sp
   8973 D5            [11] 1145 	push	de
   8974 33            [ 6] 1146 	inc	sp
   8975 CD EA 61      [17] 1147 	call	__moduchar
   8978 F1            [10] 1148 	pop	af
   8979 5D            [ 4] 1149 	ld	e, l
   897A C1            [10] 1150 	pop	bc
   897B 3E 05         [ 7] 1151 	ld	a, #0x05
   897D 93            [ 4] 1152 	sub	a, e
   897E 38 6A         [12] 1153 	jr	C,00116$
                           1154 ;src/game/world.c:204: p_cities[1] = 0b01000110; // 01100010;
   8980 21 01 00      [10] 1155 	ld	hl, #0x0001
   8983 09            [11] 1156 	add	hl,bc
   8984 DD 75 FA      [19] 1157 	ld	-6 (ix), l
   8987 DD 74 FB      [19] 1158 	ld	-5 (ix), h
                           1159 ;src/game/world.c:200: switch(cpct_rand()%6)
   898A 16 00         [ 7] 1160 	ld	d, #0x00
   898C 21 92 89      [10] 1161 	ld	hl, #00211$
   898F 19            [11] 1162 	add	hl, de
   8990 19            [11] 1163 	add	hl, de
                           1164 ;src/game/world.c:202: case 0:
   8991 E9            [ 4] 1165 	jp	(hl)
   8992                    1166 00211$:
   8992 18 0A         [12] 1167 	jr	00110$
   8994 18 15         [12] 1168 	jr	00111$
   8996 18 20         [12] 1169 	jr	00112$
   8998 18 2B         [12] 1170 	jr	00113$
   899A 18 36         [12] 1171 	jr	00114$
   899C 18 41         [12] 1172 	jr	00115$
   899E                    1173 00110$:
                           1174 ;src/game/world.c:203: p_cities[0] = 0b01110010; // 01001110;
   899E 3E 72         [ 7] 1175 	ld	a, #0x72
   89A0 02            [ 7] 1176 	ld	(bc), a
                           1177 ;src/game/world.c:204: p_cities[1] = 0b01000110; // 01100010;
   89A1 DD 6E FA      [19] 1178 	ld	l,-6 (ix)
   89A4 DD 66 FB      [19] 1179 	ld	h,-5 (ix)
   89A7 36 46         [10] 1180 	ld	(hl), #0x46
                           1181 ;src/game/world.c:205: break;
   89A9 18 3F         [12] 1182 	jr	00116$
                           1183 ;src/game/world.c:207: case 1:
   89AB                    1184 00111$:
                           1185 ;src/game/world.c:208: p_cities[0] = 0b01100000; // 00000110;
   89AB 3E 60         [ 7] 1186 	ld	a, #0x60
   89AD 02            [ 7] 1187 	ld	(bc), a
                           1188 ;src/game/world.c:209: p_cities[1] = 0b00000110; // 01100000;
   89AE DD 6E FA      [19] 1189 	ld	l,-6 (ix)
   89B1 DD 66 FB      [19] 1190 	ld	h,-5 (ix)
   89B4 36 06         [10] 1191 	ld	(hl), #0x06
                           1192 ;src/game/world.c:210: break;
   89B6 18 32         [12] 1193 	jr	00116$
                           1194 ;src/game/world.c:212: case 2:
   89B8                    1195 00112$:
                           1196 ;src/game/world.c:213: p_cities[0] = 0b00010000; // 00001000;
   89B8 3E 10         [ 7] 1197 	ld	a, #0x10
   89BA 02            [ 7] 1198 	ld	(bc), a
                           1199 ;src/game/world.c:214: p_cities[1] = 0b00000110; // 01100000;
   89BB DD 6E FA      [19] 1200 	ld	l,-6 (ix)
   89BE DD 66 FB      [19] 1201 	ld	h,-5 (ix)
   89C1 36 06         [10] 1202 	ld	(hl), #0x06
                           1203 ;src/game/world.c:215: break;
   89C3 18 25         [12] 1204 	jr	00116$
                           1205 ;src/game/world.c:217: case 3:
   89C5                    1206 00113$:
                           1207 ;src/game/world.c:218: p_cities[0] = 0b11000000; // 00000011;
   89C5 3E C0         [ 7] 1208 	ld	a, #0xc0
   89C7 02            [ 7] 1209 	ld	(bc), a
                           1210 ;src/game/world.c:219: p_cities[1] = 0b00110001; // 10001100;
   89C8 DD 6E FA      [19] 1211 	ld	l,-6 (ix)
   89CB DD 66 FB      [19] 1212 	ld	h,-5 (ix)
   89CE 36 31         [10] 1213 	ld	(hl), #0x31
                           1214 ;src/game/world.c:220: break;
   89D0 18 18         [12] 1215 	jr	00116$
                           1216 ;src/game/world.c:222: case 4:
   89D2                    1217 00114$:
                           1218 ;src/game/world.c:223: p_cities[0] = 0b11000100; // 00100011;
   89D2 3E C4         [ 7] 1219 	ld	a, #0xc4
   89D4 02            [ 7] 1220 	ld	(bc), a
                           1221 ;src/game/world.c:224: p_cities[1] = 0b00001110; // 01110000;
   89D5 DD 6E FA      [19] 1222 	ld	l,-6 (ix)
   89D8 DD 66 FB      [19] 1223 	ld	h,-5 (ix)
   89DB 36 0E         [10] 1224 	ld	(hl), #0x0e
                           1225 ;src/game/world.c:225: break;
   89DD 18 0B         [12] 1226 	jr	00116$
                           1227 ;src/game/world.c:227: case 5:
   89DF                    1228 00115$:
                           1229 ;src/game/world.c:228: p_cities[0] = 0b01000000; // 00000010;
   89DF 3E 40         [ 7] 1230 	ld	a, #0x40
   89E1 02            [ 7] 1231 	ld	(bc), a
                           1232 ;src/game/world.c:229: p_cities[1] = 0b01001110; // 01110010;
   89E2 DD 6E FA      [19] 1233 	ld	l,-6 (ix)
   89E5 DD 66 FB      [19] 1234 	ld	h,-5 (ix)
   89E8 36 4E         [10] 1235 	ld	(hl), #0x4e
                           1236 ;src/game/world.c:231: }
   89EA                    1237 00116$:
                           1238 ;src/game/world.c:233: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   89EA 59            [ 4] 1239 	ld	e, c
   89EB 50            [ 4] 1240 	ld	d, b
   89EC C5            [11] 1241 	push	bc
   89ED D5            [11] 1242 	push	de
   89EE 21 04 04      [10] 1243 	ld	hl, #0x0404
   89F1 E5            [11] 1244 	push	hl
   89F2 DD 6E F4      [19] 1245 	ld	l,-12 (ix)
   89F5 DD 66 F5      [19] 1246 	ld	h,-11 (ix)
   89F8 E5            [11] 1247 	push	hl
   89F9 3E 02         [ 7] 1248 	ld	a, #0x02
   89FB F5            [11] 1249 	push	af
   89FC 33            [ 6] 1250 	inc	sp
   89FD CD E4 85      [17] 1251 	call	_patternTile
   8A00 21 07 00      [10] 1252 	ld	hl, #7
   8A03 39            [11] 1253 	add	hl, sp
   8A04 F9            [ 6] 1254 	ld	sp, hl
   8A05 C1            [10] 1255 	pop	bc
                           1256 ;src/game/world.c:196: for(ix=0; ix<NBURBAN; ix++)
   8A06 DD 34 EE      [23] 1257 	inc	-18 (ix)
   8A09 20 03         [12] 1258 	jr	NZ,00212$
   8A0B DD 34 EF      [23] 1259 	inc	-17 (ix)
   8A0E                    1260 00212$:
   8A0E DD 7E EE      [19] 1261 	ld	a, -18 (ix)
   8A11 D6 14         [ 7] 1262 	sub	a, #0x14
   8A13 DD 7E EF      [19] 1263 	ld	a, -17 (ix)
   8A16 17            [ 4] 1264 	rla
   8A17 3F            [ 4] 1265 	ccf
   8A18 1F            [ 4] 1266 	rra
   8A19 DE 80         [ 7] 1267 	sbc	a, #0x80
   8A1B DA 55 89      [10] 1268 	jp	C, 00129$
                           1269 ;src/game/world.c:238: for(ix=0; ix<NBLIVESTOCK; ix++)
   8A1E 01 13 00      [10] 1270 	ld	bc, #0x0013
   8A21                    1271 00133$:
                           1272 ;src/game/world.c:240: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   8A21 C5            [11] 1273 	push	bc
   8A22 CD 28 65      [17] 1274 	call	_cpct_getRandom_mxor_u16
   8A25 11 00 0F      [10] 1275 	ld	de, #0x0f00
   8A28 D5            [11] 1276 	push	de
   8A29 E5            [11] 1277 	push	hl
   8A2A CD F6 61      [17] 1278 	call	__moduint
   8A2D F1            [10] 1279 	pop	af
   8A2E F1            [10] 1280 	pop	af
   8A2F C1            [10] 1281 	pop	bc
                           1282 ;src/game/world.c:241: p_world[iy] = LIVESTOCK;
   8A30 11 1D 74      [10] 1283 	ld	de, #_p_world
   8A33 19            [11] 1284 	add	hl, de
   8A34 36 09         [10] 1285 	ld	(hl), #0x09
   8A36 0B            [ 6] 1286 	dec	bc
                           1287 ;src/game/world.c:238: for(ix=0; ix<NBLIVESTOCK; ix++)
   8A37 78            [ 4] 1288 	ld	a, b
   8A38 B1            [ 4] 1289 	or	a,c
   8A39 20 E6         [12] 1290 	jr	NZ,00133$
   8A3B DD F9         [10] 1291 	ld	sp, ix
   8A3D DD E1         [14] 1292 	pop	ix
   8A3F C9            [10] 1293 	ret
                           1294 ;src/game/world.c:245: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1295 ;	---------------------------------
                           1296 ; Function drawTile
                           1297 ; ---------------------------------
   8A40                    1298 _drawTile::
   8A40 DD E5         [15] 1299 	push	ix
   8A42 DD 21 00 00   [14] 1300 	ld	ix,#0
   8A46 DD 39         [15] 1301 	add	ix,sp
                           1302 ;src/game/world.c:248: int adress = (y_+iy)*WIDTH+x_+ix;
   8A48 DD 4E 05      [19] 1303 	ld	c, 5 (ix)
   8A4B 06 00         [ 7] 1304 	ld	b, #0x00
   8A4D DD 6E 07      [19] 1305 	ld	l, 7 (ix)
   8A50 26 00         [ 7] 1306 	ld	h, #0x00
   8A52 09            [11] 1307 	add	hl, bc
   8A53 4D            [ 4] 1308 	ld	c, l
   8A54 44            [ 4] 1309 	ld	b, h
   8A55 29            [11] 1310 	add	hl, hl
   8A56 29            [11] 1311 	add	hl, hl
   8A57 09            [11] 1312 	add	hl, bc
   8A58 29            [11] 1313 	add	hl, hl
   8A59 29            [11] 1314 	add	hl, hl
   8A5A 29            [11] 1315 	add	hl, hl
   8A5B 29            [11] 1316 	add	hl, hl
   8A5C DD 4E 04      [19] 1317 	ld	c, 4 (ix)
   8A5F 06 00         [ 7] 1318 	ld	b, #0x00
   8A61 09            [11] 1319 	add	hl, bc
   8A62 DD 4E 06      [19] 1320 	ld	c, 6 (ix)
   8A65 06 00         [ 7] 1321 	ld	b, #0x00
   8A67 09            [11] 1322 	add	hl,bc
   8A68 5D            [ 4] 1323 	ld	e, l
   8A69 54            [ 4] 1324 	ld	d, h
                           1325 ;src/game/world.c:250: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   8A6A DD 7E 07      [19] 1326 	ld	a, 7 (ix)
   8A6D 07            [ 4] 1327 	rlca
   8A6E 07            [ 4] 1328 	rlca
   8A6F 07            [ 4] 1329 	rlca
   8A70 07            [ 4] 1330 	rlca
   8A71 E6 F0         [ 7] 1331 	and	a, #0xf0
   8A73 67            [ 4] 1332 	ld	h, a
   8A74 DD 7E 06      [19] 1333 	ld	a, 6 (ix)
   8A77 87            [ 4] 1334 	add	a, a
   8A78 87            [ 4] 1335 	add	a, a
   8A79 47            [ 4] 1336 	ld	b, a
   8A7A D5            [11] 1337 	push	de
   8A7B E5            [11] 1338 	push	hl
   8A7C 33            [ 6] 1339 	inc	sp
   8A7D C5            [11] 1340 	push	bc
   8A7E 33            [ 6] 1341 	inc	sp
   8A7F 21 00 C0      [10] 1342 	ld	hl, #0xc000
   8A82 E5            [11] 1343 	push	hl
   8A83 CD 27 67      [17] 1344 	call	_cpct_getScreenPtr
   8A86 4D            [ 4] 1345 	ld	c, l
   8A87 44            [ 4] 1346 	ld	b, h
   8A88 D1            [10] 1347 	pop	de
                           1348 ;src/game/world.c:252: switch(p_world[adress])
   8A89 21 1D 74      [10] 1349 	ld	hl, #_p_world+0
   8A8C 19            [11] 1350 	add	hl, de
   8A8D 5E            [ 7] 1351 	ld	e, (hl)
   8A8E 3E 19         [ 7] 1352 	ld	a, #0x19
   8A90 93            [ 4] 1353 	sub	a, e
   8A91 DA 66 8C      [10] 1354 	jp	C, 00128$
   8A94 16 00         [ 7] 1355 	ld	d, #0x00
   8A96 21 9D 8A      [10] 1356 	ld	hl, #00134$
   8A99 19            [11] 1357 	add	hl, de
   8A9A 19            [11] 1358 	add	hl, de
   8A9B 19            [11] 1359 	add	hl, de
   8A9C E9            [ 4] 1360 	jp	(hl)
   8A9D                    1361 00134$:
   8A9D C3 EB 8A      [10] 1362 	jp	00101$
   8AA0 C3 FA 8A      [10] 1363 	jp	00102$
   8AA3 C3 09 8B      [10] 1364 	jp	00103$
   8AA6 C3 18 8B      [10] 1365 	jp	00104$
   8AA9 C3 27 8B      [10] 1366 	jp	00105$
   8AAC C3 36 8B      [10] 1367 	jp	00106$
   8AAF C3 45 8B      [10] 1368 	jp	00107$
   8AB2 C3 54 8B      [10] 1369 	jp	00108$
   8AB5 C3 63 8B      [10] 1370 	jp	00109$
   8AB8 C3 72 8B      [10] 1371 	jp	00110$
   8ABB C3 81 8B      [10] 1372 	jp	00111$
   8ABE C3 90 8B      [10] 1373 	jp	00112$
   8AC1 C3 9F 8B      [10] 1374 	jp	00113$
   8AC4 C3 AE 8B      [10] 1375 	jp	00114$
   8AC7 C3 BD 8B      [10] 1376 	jp	00115$
   8ACA C3 CC 8B      [10] 1377 	jp	00116$
   8ACD C3 DB 8B      [10] 1378 	jp	00117$
   8AD0 C3 EA 8B      [10] 1379 	jp	00118$
   8AD3 C3 F8 8B      [10] 1380 	jp	00119$
   8AD6 C3 06 8C      [10] 1381 	jp	00120$
   8AD9 C3 14 8C      [10] 1382 	jp	00121$
   8ADC C3 22 8C      [10] 1383 	jp	00122$
   8ADF C3 30 8C      [10] 1384 	jp	00123$
   8AE2 C3 3E 8C      [10] 1385 	jp	00124$
   8AE5 C3 4C 8C      [10] 1386 	jp	00125$
   8AE8 C3 5A 8C      [10] 1387 	jp	00126$
                           1388 ;src/game/world.c:254: case GRASS1:
   8AEB                    1389 00101$:
                           1390 ;src/game/world.c:255: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   8AEB 21 04 10      [10] 1391 	ld	hl, #0x1004
   8AEE E5            [11] 1392 	push	hl
   8AEF C5            [11] 1393 	push	bc
   8AF0 21 D4 47      [10] 1394 	ld	hl, #_grass1
   8AF3 E5            [11] 1395 	push	hl
   8AF4 CD 45 61      [17] 1396 	call	_cpct_drawSprite
                           1397 ;src/game/world.c:256: break;
   8AF7 C3 66 8C      [10] 1398 	jp	00128$
                           1399 ;src/game/world.c:257: case GRASS2:
   8AFA                    1400 00102$:
                           1401 ;src/game/world.c:258: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   8AFA 21 04 10      [10] 1402 	ld	hl, #0x1004
   8AFD E5            [11] 1403 	push	hl
   8AFE C5            [11] 1404 	push	bc
   8AFF 21 14 48      [10] 1405 	ld	hl, #_grass2
   8B02 E5            [11] 1406 	push	hl
   8B03 CD 45 61      [17] 1407 	call	_cpct_drawSprite
                           1408 ;src/game/world.c:259: break;
   8B06 C3 66 8C      [10] 1409 	jp	00128$
                           1410 ;src/game/world.c:260: case DWELLINGS1:
   8B09                    1411 00103$:
                           1412 ;src/game/world.c:261: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   8B09 21 04 10      [10] 1413 	ld	hl, #0x1004
   8B0C E5            [11] 1414 	push	hl
   8B0D C5            [11] 1415 	push	bc
   8B0E 21 94 48      [10] 1416 	ld	hl, #_dwellings1
   8B11 E5            [11] 1417 	push	hl
   8B12 CD 45 61      [17] 1418 	call	_cpct_drawSprite
                           1419 ;src/game/world.c:262: break;
   8B15 C3 66 8C      [10] 1420 	jp	00128$
                           1421 ;src/game/world.c:263: case DWELLINGS2:
   8B18                    1422 00104$:
                           1423 ;src/game/world.c:264: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   8B18 21 04 10      [10] 1424 	ld	hl, #0x1004
   8B1B E5            [11] 1425 	push	hl
   8B1C C5            [11] 1426 	push	bc
   8B1D 21 D4 48      [10] 1427 	ld	hl, #_dwellings2
   8B20 E5            [11] 1428 	push	hl
   8B21 CD 45 61      [17] 1429 	call	_cpct_drawSprite
                           1430 ;src/game/world.c:265: break;
   8B24 C3 66 8C      [10] 1431 	jp	00128$
                           1432 ;src/game/world.c:266: case DWELLINGS3:
   8B27                    1433 00105$:
                           1434 ;src/game/world.c:267: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   8B27 21 04 10      [10] 1435 	ld	hl, #0x1004
   8B2A E5            [11] 1436 	push	hl
   8B2B C5            [11] 1437 	push	bc
   8B2C 21 14 49      [10] 1438 	ld	hl, #_dwellings3
   8B2F E5            [11] 1439 	push	hl
   8B30 CD 45 61      [17] 1440 	call	_cpct_drawSprite
                           1441 ;src/game/world.c:268: break;
   8B33 C3 66 8C      [10] 1442 	jp	00128$
                           1443 ;src/game/world.c:269: case FARM1:
   8B36                    1444 00106$:
                           1445 ;src/game/world.c:270: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   8B36 21 04 10      [10] 1446 	ld	hl, #0x1004
   8B39 E5            [11] 1447 	push	hl
   8B3A C5            [11] 1448 	push	bc
   8B3B 21 94 49      [10] 1449 	ld	hl, #_farm1
   8B3E E5            [11] 1450 	push	hl
   8B3F CD 45 61      [17] 1451 	call	_cpct_drawSprite
                           1452 ;src/game/world.c:271: break;
   8B42 C3 66 8C      [10] 1453 	jp	00128$
                           1454 ;src/game/world.c:272: case FARM2:
   8B45                    1455 00107$:
                           1456 ;src/game/world.c:273: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   8B45 21 04 10      [10] 1457 	ld	hl, #0x1004
   8B48 E5            [11] 1458 	push	hl
   8B49 C5            [11] 1459 	push	bc
   8B4A 21 D4 49      [10] 1460 	ld	hl, #_farm2
   8B4D E5            [11] 1461 	push	hl
   8B4E CD 45 61      [17] 1462 	call	_cpct_drawSprite
                           1463 ;src/game/world.c:274: break;
   8B51 C3 66 8C      [10] 1464 	jp	00128$
                           1465 ;src/game/world.c:275: case WATER:
   8B54                    1466 00108$:
                           1467 ;src/game/world.c:276: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   8B54 21 04 10      [10] 1468 	ld	hl, #0x1004
   8B57 E5            [11] 1469 	push	hl
   8B58 C5            [11] 1470 	push	bc
   8B59 21 54 49      [10] 1471 	ld	hl, #_water
   8B5C E5            [11] 1472 	push	hl
   8B5D CD 45 61      [17] 1473 	call	_cpct_drawSprite
                           1474 ;src/game/world.c:277: break;
   8B60 C3 66 8C      [10] 1475 	jp	00128$
                           1476 ;src/game/world.c:278: case FOREST:
   8B63                    1477 00109$:
                           1478 ;src/game/world.c:279: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   8B63 21 04 10      [10] 1479 	ld	hl, #0x1004
   8B66 E5            [11] 1480 	push	hl
   8B67 C5            [11] 1481 	push	bc
   8B68 21 54 48      [10] 1482 	ld	hl, #_forest
   8B6B E5            [11] 1483 	push	hl
   8B6C CD 45 61      [17] 1484 	call	_cpct_drawSprite
                           1485 ;src/game/world.c:280: break;
   8B6F C3 66 8C      [10] 1486 	jp	00128$
                           1487 ;src/game/world.c:281: case LIVESTOCK:
   8B72                    1488 00110$:
                           1489 ;src/game/world.c:282: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   8B72 21 04 10      [10] 1490 	ld	hl, #0x1004
   8B75 E5            [11] 1491 	push	hl
   8B76 C5            [11] 1492 	push	bc
   8B77 21 14 4A      [10] 1493 	ld	hl, #_livestock
   8B7A E5            [11] 1494 	push	hl
   8B7B CD 45 61      [17] 1495 	call	_cpct_drawSprite
                           1496 ;src/game/world.c:283: break;
   8B7E C3 66 8C      [10] 1497 	jp	00128$
                           1498 ;src/game/world.c:284: case SSNS:
   8B81                    1499 00111$:
                           1500 ;src/game/world.c:285: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   8B81 21 04 10      [10] 1501 	ld	hl, #0x1004
   8B84 E5            [11] 1502 	push	hl
   8B85 C5            [11] 1503 	push	bc
   8B86 21 54 4A      [10] 1504 	ld	hl, #_station_small_ns
   8B89 E5            [11] 1505 	push	hl
   8B8A CD 45 61      [17] 1506 	call	_cpct_drawSprite
                           1507 ;src/game/world.c:286: break;
   8B8D C3 66 8C      [10] 1508 	jp	00128$
                           1509 ;src/game/world.c:287: case SSEW:
   8B90                    1510 00112$:
                           1511 ;src/game/world.c:288: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   8B90 21 04 10      [10] 1512 	ld	hl, #0x1004
   8B93 E5            [11] 1513 	push	hl
   8B94 C5            [11] 1514 	push	bc
   8B95 21 94 4A      [10] 1515 	ld	hl, #_station_small_ew
   8B98 E5            [11] 1516 	push	hl
   8B99 CD 45 61      [17] 1517 	call	_cpct_drawSprite
                           1518 ;src/game/world.c:289: break;
   8B9C C3 66 8C      [10] 1519 	jp	00128$
                           1520 ;src/game/world.c:290: case SMNS:
   8B9F                    1521 00113$:
                           1522 ;src/game/world.c:291: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   8B9F 21 04 10      [10] 1523 	ld	hl, #0x1004
   8BA2 E5            [11] 1524 	push	hl
   8BA3 C5            [11] 1525 	push	bc
   8BA4 21 D4 4A      [10] 1526 	ld	hl, #_station_medium_ns
   8BA7 E5            [11] 1527 	push	hl
   8BA8 CD 45 61      [17] 1528 	call	_cpct_drawSprite
                           1529 ;src/game/world.c:292: break;
   8BAB C3 66 8C      [10] 1530 	jp	00128$
                           1531 ;src/game/world.c:293: case SMEW:
   8BAE                    1532 00114$:
                           1533 ;src/game/world.c:294: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   8BAE 21 04 10      [10] 1534 	ld	hl, #0x1004
   8BB1 E5            [11] 1535 	push	hl
   8BB2 C5            [11] 1536 	push	bc
   8BB3 21 14 4B      [10] 1537 	ld	hl, #_station_medium_ew
   8BB6 E5            [11] 1538 	push	hl
   8BB7 CD 45 61      [17] 1539 	call	_cpct_drawSprite
                           1540 ;src/game/world.c:295: break;
   8BBA C3 66 8C      [10] 1541 	jp	00128$
                           1542 ;src/game/world.c:296: case SLNS:
   8BBD                    1543 00115$:
                           1544 ;src/game/world.c:297: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   8BBD 21 04 10      [10] 1545 	ld	hl, #0x1004
   8BC0 E5            [11] 1546 	push	hl
   8BC1 C5            [11] 1547 	push	bc
   8BC2 21 54 4B      [10] 1548 	ld	hl, #_station_large_ns
   8BC5 E5            [11] 1549 	push	hl
   8BC6 CD 45 61      [17] 1550 	call	_cpct_drawSprite
                           1551 ;src/game/world.c:298: break;
   8BC9 C3 66 8C      [10] 1552 	jp	00128$
                           1553 ;src/game/world.c:299: case SLEW:
   8BCC                    1554 00116$:
                           1555 ;src/game/world.c:300: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   8BCC 21 04 10      [10] 1556 	ld	hl, #0x1004
   8BCF E5            [11] 1557 	push	hl
   8BD0 C5            [11] 1558 	push	bc
   8BD1 21 94 4B      [10] 1559 	ld	hl, #_station_large_ew
   8BD4 E5            [11] 1560 	push	hl
   8BD5 CD 45 61      [17] 1561 	call	_cpct_drawSprite
                           1562 ;src/game/world.c:301: break;
   8BD8 C3 66 8C      [10] 1563 	jp	00128$
                           1564 ;src/game/world.c:302: case REW:
   8BDB                    1565 00117$:
                           1566 ;src/game/world.c:303: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   8BDB 21 04 10      [10] 1567 	ld	hl, #0x1004
   8BDE E5            [11] 1568 	push	hl
   8BDF C5            [11] 1569 	push	bc
   8BE0 21 D4 4B      [10] 1570 	ld	hl, #_rail_ew
   8BE3 E5            [11] 1571 	push	hl
   8BE4 CD 45 61      [17] 1572 	call	_cpct_drawSprite
                           1573 ;src/game/world.c:304: break;
   8BE7 C3 66 8C      [10] 1574 	jp	00128$
                           1575 ;src/game/world.c:305: case RNS:
   8BEA                    1576 00118$:
                           1577 ;src/game/world.c:306: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   8BEA 21 04 10      [10] 1578 	ld	hl, #0x1004
   8BED E5            [11] 1579 	push	hl
   8BEE C5            [11] 1580 	push	bc
   8BEF 21 14 4C      [10] 1581 	ld	hl, #_rail_ns
   8BF2 E5            [11] 1582 	push	hl
   8BF3 CD 45 61      [17] 1583 	call	_cpct_drawSprite
                           1584 ;src/game/world.c:307: break;
   8BF6 18 6E         [12] 1585 	jr	00128$
                           1586 ;src/game/world.c:308: case REN:
   8BF8                    1587 00119$:
                           1588 ;src/game/world.c:309: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   8BF8 21 04 10      [10] 1589 	ld	hl, #0x1004
   8BFB E5            [11] 1590 	push	hl
   8BFC C5            [11] 1591 	push	bc
   8BFD 21 54 4C      [10] 1592 	ld	hl, #_rail_en
   8C00 E5            [11] 1593 	push	hl
   8C01 CD 45 61      [17] 1594 	call	_cpct_drawSprite
                           1595 ;src/game/world.c:310: break;
   8C04 18 60         [12] 1596 	jr	00128$
                           1597 ;src/game/world.c:311: case RES:
   8C06                    1598 00120$:
                           1599 ;src/game/world.c:312: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   8C06 21 04 10      [10] 1600 	ld	hl, #0x1004
   8C09 E5            [11] 1601 	push	hl
   8C0A C5            [11] 1602 	push	bc
   8C0B 21 94 4C      [10] 1603 	ld	hl, #_rail_es
   8C0E E5            [11] 1604 	push	hl
   8C0F CD 45 61      [17] 1605 	call	_cpct_drawSprite
                           1606 ;src/game/world.c:313: break;
   8C12 18 52         [12] 1607 	jr	00128$
                           1608 ;src/game/world.c:314: case RWN:
   8C14                    1609 00121$:
                           1610 ;src/game/world.c:315: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   8C14 21 04 10      [10] 1611 	ld	hl, #0x1004
   8C17 E5            [11] 1612 	push	hl
   8C18 C5            [11] 1613 	push	bc
   8C19 21 D4 4C      [10] 1614 	ld	hl, #_rail_wn
   8C1C E5            [11] 1615 	push	hl
   8C1D CD 45 61      [17] 1616 	call	_cpct_drawSprite
                           1617 ;src/game/world.c:316: break;
   8C20 18 44         [12] 1618 	jr	00128$
                           1619 ;src/game/world.c:317: case RWS:
   8C22                    1620 00122$:
                           1621 ;src/game/world.c:318: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   8C22 21 04 10      [10] 1622 	ld	hl, #0x1004
   8C25 E5            [11] 1623 	push	hl
   8C26 C5            [11] 1624 	push	bc
   8C27 21 14 4D      [10] 1625 	ld	hl, #_rail_ws
   8C2A E5            [11] 1626 	push	hl
   8C2B CD 45 61      [17] 1627 	call	_cpct_drawSprite
                           1628 ;src/game/world.c:319: break;
   8C2E 18 36         [12] 1629 	jr	00128$
                           1630 ;src/game/world.c:320: case REWN:
   8C30                    1631 00123$:
                           1632 ;src/game/world.c:321: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   8C30 21 04 10      [10] 1633 	ld	hl, #0x1004
   8C33 E5            [11] 1634 	push	hl
   8C34 C5            [11] 1635 	push	bc
   8C35 21 54 4D      [10] 1636 	ld	hl, #_rail_ew_n
   8C38 E5            [11] 1637 	push	hl
   8C39 CD 45 61      [17] 1638 	call	_cpct_drawSprite
                           1639 ;src/game/world.c:322: break;
   8C3C 18 28         [12] 1640 	jr	00128$
                           1641 ;src/game/world.c:323: case REWS:
   8C3E                    1642 00124$:
                           1643 ;src/game/world.c:324: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   8C3E 21 04 10      [10] 1644 	ld	hl, #0x1004
   8C41 E5            [11] 1645 	push	hl
   8C42 C5            [11] 1646 	push	bc
   8C43 21 94 4D      [10] 1647 	ld	hl, #_rail_ew_s
   8C46 E5            [11] 1648 	push	hl
   8C47 CD 45 61      [17] 1649 	call	_cpct_drawSprite
                           1650 ;src/game/world.c:325: break;
   8C4A 18 1A         [12] 1651 	jr	00128$
                           1652 ;src/game/world.c:326: case RNSE:
   8C4C                    1653 00125$:
                           1654 ;src/game/world.c:327: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   8C4C 21 04 10      [10] 1655 	ld	hl, #0x1004
   8C4F E5            [11] 1656 	push	hl
   8C50 C5            [11] 1657 	push	bc
   8C51 21 14 4E      [10] 1658 	ld	hl, #_rail_ns_e
   8C54 E5            [11] 1659 	push	hl
   8C55 CD 45 61      [17] 1660 	call	_cpct_drawSprite
                           1661 ;src/game/world.c:328: break;
   8C58 18 0C         [12] 1662 	jr	00128$
                           1663 ;src/game/world.c:329: case RNSW:
   8C5A                    1664 00126$:
                           1665 ;src/game/world.c:330: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   8C5A 21 04 10      [10] 1666 	ld	hl, #0x1004
   8C5D E5            [11] 1667 	push	hl
   8C5E C5            [11] 1668 	push	bc
   8C5F 21 D4 4D      [10] 1669 	ld	hl, #_rail_ns_w
   8C62 E5            [11] 1670 	push	hl
   8C63 CD 45 61      [17] 1671 	call	_cpct_drawSprite
                           1672 ;src/game/world.c:332: }
   8C66                    1673 00128$:
   8C66 DD E1         [14] 1674 	pop	ix
   8C68 C9            [10] 1675 	ret
                           1676 ;src/game/world.c:335: void drawScrolls(u8 x, u8 y)
                           1677 ;	---------------------------------
                           1678 ; Function drawScrolls
                           1679 ; ---------------------------------
   8C69                    1680 _drawScrolls::
   8C69 DD E5         [15] 1681 	push	ix
   8C6B DD 21 00 00   [14] 1682 	ld	ix,#0
   8C6F DD 39         [15] 1683 	add	ix,sp
   8C71 F5            [11] 1684 	push	af
                           1685 ;src/game/world.c:337: int scrollx = x* (WIDTH-TILESIZE_W)*4/(WIDTH-NBTILE_W);
   8C72 DD 4E 04      [19] 1686 	ld	c, 4 (ix)
   8C75 06 00         [ 7] 1687 	ld	b, #0x00
   8C77 69            [ 4] 1688 	ld	l, c
   8C78 60            [ 4] 1689 	ld	h, b
   8C79 29            [11] 1690 	add	hl, hl
   8C7A 29            [11] 1691 	add	hl, hl
   8C7B 29            [11] 1692 	add	hl, hl
   8C7C 09            [11] 1693 	add	hl, bc
   8C7D 29            [11] 1694 	add	hl, hl
   8C7E 09            [11] 1695 	add	hl, bc
   8C7F 29            [11] 1696 	add	hl, hl
   8C80 29            [11] 1697 	add	hl, hl
   8C81 29            [11] 1698 	add	hl, hl
   8C82 29            [11] 1699 	add	hl, hl
   8C83 01 3C 00      [10] 1700 	ld	bc, #0x003c
   8C86 C5            [11] 1701 	push	bc
   8C87 E5            [11] 1702 	push	hl
   8C88 CD 78 67      [17] 1703 	call	__divsint
   8C8B F1            [10] 1704 	pop	af
   8C8C F1            [10] 1705 	pop	af
   8C8D 4D            [ 4] 1706 	ld	c, l
   8C8E 44            [ 4] 1707 	ld	b, h
                           1708 ;src/game/world.c:338: int scrolly = y* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   8C8F DD 5E 05      [19] 1709 	ld	e,5 (ix)
   8C92 16 00         [ 7] 1710 	ld	d,#0x00
   8C94 6B            [ 4] 1711 	ld	l, e
   8C95 62            [ 4] 1712 	ld	h, d
   8C96 29            [11] 1713 	add	hl, hl
   8C97 29            [11] 1714 	add	hl, hl
   8C98 19            [11] 1715 	add	hl, de
   8C99 29            [11] 1716 	add	hl, hl
   8C9A 19            [11] 1717 	add	hl, de
   8C9B 29            [11] 1718 	add	hl, hl
   8C9C 29            [11] 1719 	add	hl, hl
   8C9D 29            [11] 1720 	add	hl, hl
   8C9E 29            [11] 1721 	add	hl, hl
   8C9F C5            [11] 1722 	push	bc
   8CA0 11 24 00      [10] 1723 	ld	de, #0x0024
   8CA3 D5            [11] 1724 	push	de
   8CA4 E5            [11] 1725 	push	hl
   8CA5 CD 78 67      [17] 1726 	call	__divsint
   8CA8 F1            [10] 1727 	pop	af
   8CA9 F1            [10] 1728 	pop	af
   8CAA C1            [10] 1729 	pop	bc
   8CAB 33            [ 6] 1730 	inc	sp
   8CAC 33            [ 6] 1731 	inc	sp
   8CAD E5            [11] 1732 	push	hl
                           1733 ;src/game/world.c:340: setPixel(scrollx, 1, 0);
   8CAE C5            [11] 1734 	push	bc
   8CAF 21 01 00      [10] 1735 	ld	hl, #0x0001
   8CB2 E5            [11] 1736 	push	hl
   8CB3 C5            [11] 1737 	push	bc
   8CB4 CD 7F 8E      [17] 1738 	call	_setPixel
   8CB7 F1            [10] 1739 	pop	af
   8CB8 F1            [10] 1740 	pop	af
   8CB9 C1            [10] 1741 	pop	bc
                           1742 ;src/game/world.c:341: setPixel(scrollx+1, 0, 0);
   8CBA 59            [ 4] 1743 	ld	e, c
   8CBB 50            [ 4] 1744 	ld	d, b
   8CBC 13            [ 6] 1745 	inc	de
   8CBD C5            [11] 1746 	push	bc
   8CBE D5            [11] 1747 	push	de
   8CBF 21 00 00      [10] 1748 	ld	hl, #0x0000
   8CC2 E5            [11] 1749 	push	hl
   8CC3 D5            [11] 1750 	push	de
   8CC4 CD 7F 8E      [17] 1751 	call	_setPixel
   8CC7 F1            [10] 1752 	pop	af
   8CC8 F1            [10] 1753 	pop	af
   8CC9 D1            [10] 1754 	pop	de
   8CCA D5            [11] 1755 	push	de
   8CCB 21 01 00      [10] 1756 	ld	hl, #0x0001
   8CCE E5            [11] 1757 	push	hl
   8CCF D5            [11] 1758 	push	de
   8CD0 CD 7F 8E      [17] 1759 	call	_setPixel
   8CD3 F1            [10] 1760 	pop	af
   8CD4 F1            [10] 1761 	pop	af
   8CD5 D1            [10] 1762 	pop	de
   8CD6 21 02 00      [10] 1763 	ld	hl, #0x0002
   8CD9 E5            [11] 1764 	push	hl
   8CDA D5            [11] 1765 	push	de
   8CDB CD 7F 8E      [17] 1766 	call	_setPixel
   8CDE F1            [10] 1767 	pop	af
   8CDF F1            [10] 1768 	pop	af
   8CE0 C1            [10] 1769 	pop	bc
                           1770 ;src/game/world.c:345: setPixel(scrollx+15, 1, 0);
   8CE1 21 0F 00      [10] 1771 	ld	hl, #0x000f
   8CE4 09            [11] 1772 	add	hl, bc
   8CE5 C5            [11] 1773 	push	bc
   8CE6 11 01 00      [10] 1774 	ld	de, #0x0001
   8CE9 D5            [11] 1775 	push	de
   8CEA E5            [11] 1776 	push	hl
   8CEB CD 7F 8E      [17] 1777 	call	_setPixel
   8CEE F1            [10] 1778 	pop	af
   8CEF F1            [10] 1779 	pop	af
   8CF0 C1            [10] 1780 	pop	bc
                           1781 ;src/game/world.c:346: setPixel(scrollx+14, 0, 0);
   8CF1 21 0E 00      [10] 1782 	ld	hl, #0x000e
   8CF4 09            [11] 1783 	add	hl, bc
   8CF5 E5            [11] 1784 	push	hl
   8CF6 01 00 00      [10] 1785 	ld	bc, #0x0000
   8CF9 C5            [11] 1786 	push	bc
   8CFA E5            [11] 1787 	push	hl
   8CFB CD 7F 8E      [17] 1788 	call	_setPixel
   8CFE F1            [10] 1789 	pop	af
   8CFF F1            [10] 1790 	pop	af
   8D00 E1            [10] 1791 	pop	hl
                           1792 ;src/game/world.c:347: setPixel(scrollx+14, 1, 0);
   8D01 E5            [11] 1793 	push	hl
   8D02 01 01 00      [10] 1794 	ld	bc, #0x0001
   8D05 C5            [11] 1795 	push	bc
   8D06 E5            [11] 1796 	push	hl
   8D07 CD 7F 8E      [17] 1797 	call	_setPixel
   8D0A F1            [10] 1798 	pop	af
   8D0B F1            [10] 1799 	pop	af
   8D0C E1            [10] 1800 	pop	hl
                           1801 ;src/game/world.c:348: setPixel(scrollx+14, 2, 0);
   8D0D 01 02 00      [10] 1802 	ld	bc, #0x0002
   8D10 C5            [11] 1803 	push	bc
   8D11 E5            [11] 1804 	push	hl
   8D12 CD 7F 8E      [17] 1805 	call	_setPixel
   8D15 F1            [10] 1806 	pop	af
   8D16 F1            [10] 1807 	pop	af
                           1808 ;src/game/world.c:350: setPixel(1, scrolly, 0);
   8D17 DD 46 FE      [19] 1809 	ld	b, -2 (ix)
   8D1A AF            [ 4] 1810 	xor	a, a
   8D1B F5            [11] 1811 	push	af
   8D1C 33            [ 6] 1812 	inc	sp
   8D1D C5            [11] 1813 	push	bc
   8D1E 33            [ 6] 1814 	inc	sp
   8D1F 21 01 00      [10] 1815 	ld	hl, #0x0001
   8D22 E5            [11] 1816 	push	hl
   8D23 CD 7F 8E      [17] 1817 	call	_setPixel
   8D26 F1            [10] 1818 	pop	af
   8D27 F1            [10] 1819 	pop	af
                           1820 ;src/game/world.c:351: setPixel(0, scrolly+1, 0);
   8D28 DD 4E FE      [19] 1821 	ld	c, -2 (ix)
   8D2B 41            [ 4] 1822 	ld	b, c
   8D2C 04            [ 4] 1823 	inc	b
   8D2D C5            [11] 1824 	push	bc
   8D2E AF            [ 4] 1825 	xor	a, a
   8D2F F5            [11] 1826 	push	af
   8D30 33            [ 6] 1827 	inc	sp
   8D31 C5            [11] 1828 	push	bc
   8D32 33            [ 6] 1829 	inc	sp
   8D33 21 00 00      [10] 1830 	ld	hl, #0x0000
   8D36 E5            [11] 1831 	push	hl
   8D37 CD 7F 8E      [17] 1832 	call	_setPixel
   8D3A F1            [10] 1833 	pop	af
   8D3B F1            [10] 1834 	pop	af
   8D3C C1            [10] 1835 	pop	bc
                           1836 ;src/game/world.c:352: setPixel(1, scrolly+1, 0);
   8D3D C5            [11] 1837 	push	bc
   8D3E AF            [ 4] 1838 	xor	a, a
   8D3F F5            [11] 1839 	push	af
   8D40 33            [ 6] 1840 	inc	sp
   8D41 C5            [11] 1841 	push	bc
   8D42 33            [ 6] 1842 	inc	sp
   8D43 21 01 00      [10] 1843 	ld	hl, #0x0001
   8D46 E5            [11] 1844 	push	hl
   8D47 CD 7F 8E      [17] 1845 	call	_setPixel
   8D4A F1            [10] 1846 	pop	af
   8D4B F1            [10] 1847 	pop	af
   8D4C C1            [10] 1848 	pop	bc
                           1849 ;src/game/world.c:353: setPixel(2, scrolly+1, 0);
   8D4D C5            [11] 1850 	push	bc
   8D4E AF            [ 4] 1851 	xor	a, a
   8D4F F5            [11] 1852 	push	af
   8D50 33            [ 6] 1853 	inc	sp
   8D51 C5            [11] 1854 	push	bc
   8D52 33            [ 6] 1855 	inc	sp
   8D53 21 02 00      [10] 1856 	ld	hl, #0x0002
   8D56 E5            [11] 1857 	push	hl
   8D57 CD 7F 8E      [17] 1858 	call	_setPixel
   8D5A F1            [10] 1859 	pop	af
   8D5B F1            [10] 1860 	pop	af
   8D5C C1            [10] 1861 	pop	bc
                           1862 ;src/game/world.c:355: setPixel(1, scrolly+15, 0);
   8D5D 79            [ 4] 1863 	ld	a, c
   8D5E C6 0F         [ 7] 1864 	add	a, #0x0f
   8D60 47            [ 4] 1865 	ld	b, a
   8D61 C5            [11] 1866 	push	bc
   8D62 AF            [ 4] 1867 	xor	a, a
   8D63 F5            [11] 1868 	push	af
   8D64 33            [ 6] 1869 	inc	sp
   8D65 C5            [11] 1870 	push	bc
   8D66 33            [ 6] 1871 	inc	sp
   8D67 21 01 00      [10] 1872 	ld	hl, #0x0001
   8D6A E5            [11] 1873 	push	hl
   8D6B CD 7F 8E      [17] 1874 	call	_setPixel
   8D6E F1            [10] 1875 	pop	af
   8D6F F1            [10] 1876 	pop	af
   8D70 C1            [10] 1877 	pop	bc
                           1878 ;src/game/world.c:356: setPixel(0, scrolly+14, 0);
   8D71 79            [ 4] 1879 	ld	a, c
   8D72 C6 0E         [ 7] 1880 	add	a, #0x0e
   8D74 47            [ 4] 1881 	ld	b, a
   8D75 C5            [11] 1882 	push	bc
   8D76 AF            [ 4] 1883 	xor	a, a
   8D77 F5            [11] 1884 	push	af
   8D78 33            [ 6] 1885 	inc	sp
   8D79 C5            [11] 1886 	push	bc
   8D7A 33            [ 6] 1887 	inc	sp
   8D7B 21 00 00      [10] 1888 	ld	hl, #0x0000
   8D7E E5            [11] 1889 	push	hl
   8D7F CD 7F 8E      [17] 1890 	call	_setPixel
   8D82 F1            [10] 1891 	pop	af
   8D83 F1            [10] 1892 	pop	af
   8D84 C1            [10] 1893 	pop	bc
                           1894 ;src/game/world.c:357: setPixel(1, scrolly+14, 0);
   8D85 C5            [11] 1895 	push	bc
   8D86 AF            [ 4] 1896 	xor	a, a
   8D87 F5            [11] 1897 	push	af
   8D88 33            [ 6] 1898 	inc	sp
   8D89 C5            [11] 1899 	push	bc
   8D8A 33            [ 6] 1900 	inc	sp
   8D8B 21 01 00      [10] 1901 	ld	hl, #0x0001
   8D8E E5            [11] 1902 	push	hl
   8D8F CD 7F 8E      [17] 1903 	call	_setPixel
   8D92 F1            [10] 1904 	pop	af
   8D93 F1            [10] 1905 	pop	af
   8D94 C1            [10] 1906 	pop	bc
                           1907 ;src/game/world.c:358: setPixel(2, scrolly+14, 0);
   8D95 AF            [ 4] 1908 	xor	a, a
   8D96 F5            [11] 1909 	push	af
   8D97 33            [ 6] 1910 	inc	sp
   8D98 C5            [11] 1911 	push	bc
   8D99 33            [ 6] 1912 	inc	sp
   8D9A 21 02 00      [10] 1913 	ld	hl, #0x0002
   8D9D E5            [11] 1914 	push	hl
   8D9E CD 7F 8E      [17] 1915 	call	_setPixel
   8DA1 DD F9         [10] 1916 	ld	sp,ix
   8DA3 DD E1         [14] 1917 	pop	ix
   8DA5 C9            [10] 1918 	ret
                           1919 ;src/game/world.c:375: void drawWorld(u8 x_, u8 y_)
                           1920 ;	---------------------------------
                           1921 ; Function drawWorld
                           1922 ; ---------------------------------
   8DA6                    1923 _drawWorld::
                           1924 ;src/game/world.c:380: for(iy=0; iy<NBTILE_H;iy++)
   8DA6 0E 00         [ 7] 1925 	ld	c, #0x00
                           1926 ;src/game/world.c:382: for(ix=0; ix<NBTILE_W;ix++)
   8DA8                    1927 00109$:
   8DA8 06 00         [ 7] 1928 	ld	b, #0x00
   8DAA                    1929 00103$:
                           1930 ;src/game/world.c:384: drawTile(x_, y_, ix, iy);
   8DAA C5            [11] 1931 	push	bc
   8DAB 79            [ 4] 1932 	ld	a, c
   8DAC F5            [11] 1933 	push	af
   8DAD 33            [ 6] 1934 	inc	sp
   8DAE C5            [11] 1935 	push	bc
   8DAF 33            [ 6] 1936 	inc	sp
   8DB0 21 07 00      [10] 1937 	ld	hl, #7+0
   8DB3 39            [11] 1938 	add	hl, sp
   8DB4 7E            [ 7] 1939 	ld	a, (hl)
   8DB5 F5            [11] 1940 	push	af
   8DB6 33            [ 6] 1941 	inc	sp
   8DB7 21 07 00      [10] 1942 	ld	hl, #7+0
   8DBA 39            [11] 1943 	add	hl, sp
   8DBB 7E            [ 7] 1944 	ld	a, (hl)
   8DBC F5            [11] 1945 	push	af
   8DBD 33            [ 6] 1946 	inc	sp
   8DBE CD 40 8A      [17] 1947 	call	_drawTile
   8DC1 F1            [10] 1948 	pop	af
   8DC2 F1            [10] 1949 	pop	af
   8DC3 C1            [10] 1950 	pop	bc
                           1951 ;src/game/world.c:382: for(ix=0; ix<NBTILE_W;ix++)
   8DC4 04            [ 4] 1952 	inc	b
   8DC5 78            [ 4] 1953 	ld	a, b
   8DC6 D6 14         [ 7] 1954 	sub	a, #0x14
   8DC8 38 E0         [12] 1955 	jr	C,00103$
                           1956 ;src/game/world.c:380: for(iy=0; iy<NBTILE_H;iy++)
   8DCA 0C            [ 4] 1957 	inc	c
   8DCB 79            [ 4] 1958 	ld	a, c
   8DCC D6 0C         [ 7] 1959 	sub	a, #0x0c
   8DCE 38 D8         [12] 1960 	jr	C,00109$
                           1961 ;src/game/world.c:388: drawScrolls(x_, y_);
   8DD0 21 03 00      [10] 1962 	ld	hl, #3+0
   8DD3 39            [11] 1963 	add	hl, sp
   8DD4 7E            [ 7] 1964 	ld	a, (hl)
   8DD5 F5            [11] 1965 	push	af
   8DD6 33            [ 6] 1966 	inc	sp
   8DD7 21 03 00      [10] 1967 	ld	hl, #3+0
   8DDA 39            [11] 1968 	add	hl, sp
   8DDB 7E            [ 7] 1969 	ld	a, (hl)
   8DDC F5            [11] 1970 	push	af
   8DDD 33            [ 6] 1971 	inc	sp
   8DDE CD 69 8C      [17] 1972 	call	_drawScrolls
   8DE1 F1            [10] 1973 	pop	af
   8DE2 C9            [10] 1974 	ret
                           1975 ;src/game/world.c:394: void setTrainHeading(u8 i)
                           1976 ;	---------------------------------
                           1977 ; Function setTrainHeading
                           1978 ; ---------------------------------
   8DE3                    1979 _setTrainHeading::
   8DE3 DD E5         [15] 1980 	push	ix
   8DE5 DD 21 00 00   [14] 1981 	ld	ix,#0
   8DE9 DD 39         [15] 1982 	add	ix,sp
                           1983 ;src/game/world.c:398: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   8DEB DD 6E 04      [19] 1984 	ld	l, 4 (ix)
   8DEE 26 00         [ 7] 1985 	ld	h, #0x00
   8DF0 29            [11] 1986 	add	hl, hl
   8DF1 29            [11] 1987 	add	hl, hl
   8DF2 29            [11] 1988 	add	hl, hl
   8DF3 29            [11] 1989 	add	hl, hl
   8DF4 4D            [ 4] 1990 	ld	c, l
   8DF5 44            [ 4] 1991 	ld	b, h
   8DF6 FD 21 1D 83   [14] 1992 	ld	iy, #_trainList
   8DFA FD 7E 00      [19] 1993 	ld	a, 0 (iy)
   8DFD 81            [ 4] 1994 	add	a, c
   8DFE 5F            [ 4] 1995 	ld	e, a
   8DFF FD 7E 01      [19] 1996 	ld	a, 1 (iy)
   8E02 88            [ 4] 1997 	adc	a, b
   8E03 57            [ 4] 1998 	ld	d, a
   8E04 6B            [ 4] 1999 	ld	l, e
   8E05 62            [ 4] 2000 	ld	h, d
   8E06 01 05 00      [10] 2001 	ld	bc, #0x0005
   8E09 09            [11] 2002 	add	hl, bc
   8E0A 4E            [ 7] 2003 	ld	c, (hl)
   8E0B 06 00         [ 7] 2004 	ld	b,#0x00
   8E0D 69            [ 4] 2005 	ld	l, c
   8E0E 60            [ 4] 2006 	ld	h, b
   8E0F 29            [11] 2007 	add	hl, hl
   8E10 29            [11] 2008 	add	hl, hl
   8E11 09            [11] 2009 	add	hl, bc
   8E12 29            [11] 2010 	add	hl, hl
   8E13 29            [11] 2011 	add	hl, hl
   8E14 29            [11] 2012 	add	hl, hl
   8E15 29            [11] 2013 	add	hl, hl
   8E16 4D            [ 4] 2014 	ld	c, l
   8E17 44            [ 4] 2015 	ld	b, h
   8E18 6B            [ 4] 2016 	ld	l, e
   8E19 62            [ 4] 2017 	ld	h, d
   8E1A 23            [ 6] 2018 	inc	hl
   8E1B 23            [ 6] 2019 	inc	hl
   8E1C 23            [ 6] 2020 	inc	hl
   8E1D 23            [ 6] 2021 	inc	hl
   8E1E 6E            [ 7] 2022 	ld	l, (hl)
   8E1F 26 00         [ 7] 2023 	ld	h, #0x00
   8E21 09            [11] 2024 	add	hl, bc
   8E22 01 1D 74      [10] 2025 	ld	bc, #_p_world
   8E25 09            [11] 2026 	add	hl, bc
   8E26 4E            [ 7] 2027 	ld	c, (hl)
                           2028 ;src/game/world.c:401: if(trainList[i].heading==1) trainList[i].heading=2;
   8E27 21 06 00      [10] 2029 	ld	hl, #0x0006
   8E2A 19            [11] 2030 	add	hl, de
                           2031 ;src/game/world.c:398: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   8E2B 79            [ 4] 2032 	ld	a,c
   8E2C FE 12         [ 7] 2033 	cp	a,#0x12
   8E2E 28 0E         [12] 2034 	jr	Z,00101$
   8E30 FE 13         [ 7] 2035 	cp	a,#0x13
   8E32 28 1A         [12] 2036 	jr	Z,00107$
   8E34 FE 14         [ 7] 2037 	cp	a,#0x14
   8E36 28 26         [12] 2038 	jr	Z,00113$
   8E38 D6 15         [ 7] 2039 	sub	a, #0x15
   8E3A 28 32         [12] 2040 	jr	Z,00119$
   8E3C 18 3E         [12] 2041 	jr	00126$
                           2042 ;src/game/world.c:400: case REN:
   8E3E                    2043 00101$:
                           2044 ;src/game/world.c:401: if(trainList[i].heading==1) trainList[i].heading=2;
   8E3E 7E            [ 7] 2045 	ld	a, (hl)
   8E3F FE 01         [ 7] 2046 	cp	a, #0x01
   8E41 20 04         [12] 2047 	jr	NZ,00105$
   8E43 36 02         [10] 2048 	ld	(hl), #0x02
   8E45 18 35         [12] 2049 	jr	00126$
   8E47                    2050 00105$:
                           2051 ;src/game/world.c:402: else if(trainList[i].heading==3) trainList[i].heading=0;
   8E47 D6 03         [ 7] 2052 	sub	a,#0x03
   8E49 20 31         [12] 2053 	jr	NZ,00126$
   8E4B 77            [ 7] 2054 	ld	(hl),a
                           2055 ;src/game/world.c:403: break;
   8E4C 18 2E         [12] 2056 	jr	00126$
                           2057 ;src/game/world.c:405: case RES:
   8E4E                    2058 00107$:
                           2059 ;src/game/world.c:406: if(trainList[i].heading==1) trainList[i].heading=3;
   8E4E 7E            [ 7] 2060 	ld	a, (hl)
   8E4F FE 01         [ 7] 2061 	cp	a, #0x01
   8E51 20 04         [12] 2062 	jr	NZ,00111$
   8E53 36 03         [10] 2063 	ld	(hl), #0x03
   8E55 18 25         [12] 2064 	jr	00126$
   8E57                    2065 00111$:
                           2066 ;src/game/world.c:407: else if(trainList[i].heading==2) trainList[i].heading=0;
   8E57 D6 02         [ 7] 2067 	sub	a,#0x02
   8E59 20 21         [12] 2068 	jr	NZ,00126$
   8E5B 77            [ 7] 2069 	ld	(hl),a
                           2070 ;src/game/world.c:408: break;
   8E5C 18 1E         [12] 2071 	jr	00126$
                           2072 ;src/game/world.c:410: case RWN:
   8E5E                    2073 00113$:
                           2074 ;src/game/world.c:411: if(trainList[i].heading==0) trainList[i].heading=2;   
   8E5E 7E            [ 7] 2075 	ld	a, (hl)
   8E5F B7            [ 4] 2076 	or	a, a
   8E60 20 04         [12] 2077 	jr	NZ,00117$
   8E62 36 02         [10] 2078 	ld	(hl), #0x02
   8E64 18 16         [12] 2079 	jr	00126$
   8E66                    2080 00117$:
                           2081 ;src/game/world.c:412: else if(trainList[i].heading==3) trainList[i].heading=1;
   8E66 D6 03         [ 7] 2082 	sub	a, #0x03
   8E68 20 12         [12] 2083 	jr	NZ,00126$
   8E6A 36 01         [10] 2084 	ld	(hl), #0x01
                           2085 ;src/game/world.c:413: break;
   8E6C 18 0E         [12] 2086 	jr	00126$
                           2087 ;src/game/world.c:415: case RWS:
   8E6E                    2088 00119$:
                           2089 ;src/game/world.c:416: if(trainList[i].heading==0) trainList[i].heading=3;
   8E6E 7E            [ 7] 2090 	ld	a, (hl)
   8E6F B7            [ 4] 2091 	or	a, a
   8E70 20 04         [12] 2092 	jr	NZ,00123$
   8E72 36 03         [10] 2093 	ld	(hl), #0x03
   8E74 18 06         [12] 2094 	jr	00126$
   8E76                    2095 00123$:
                           2096 ;src/game/world.c:417: else if(trainList[i].heading==2) trainList[i].heading=1;
   8E76 D6 02         [ 7] 2097 	sub	a, #0x02
   8E78 20 02         [12] 2098 	jr	NZ,00126$
   8E7A 36 01         [10] 2099 	ld	(hl), #0x01
                           2100 ;src/game/world.c:419: }
   8E7C                    2101 00126$:
   8E7C DD E1         [14] 2102 	pop	ix
   8E7E C9            [10] 2103 	ret
                           2104 ;src/game/world.c:422: void setPixel(int nX, unsigned char nY, unsigned char nColor)
                           2105 ;	---------------------------------
                           2106 ; Function setPixel
                           2107 ; ---------------------------------
   8E7F                    2108 _setPixel::
   8E7F DD E5         [15] 2109 	push	ix
   8E81 DD 21 00 00   [14] 2110 	ld	ix,#0
   8E85 DD 39         [15] 2111 	add	ix,sp
   8E87 F5            [11] 2112 	push	af
                           2113 ;src/game/world.c:427: int nPixel = nX % 4;
   8E88 21 04 00      [10] 2114 	ld	hl, #0x0004
   8E8B E5            [11] 2115 	push	hl
   8E8C DD 6E 04      [19] 2116 	ld	l,4 (ix)
   8E8F DD 66 05      [19] 2117 	ld	h,5 (ix)
   8E92 E5            [11] 2118 	push	hl
   8E93 CD 1A 67      [17] 2119 	call	__modsint
   8E96 F1            [10] 2120 	pop	af
   8E97 F1            [10] 2121 	pop	af
   8E98 EB            [ 4] 2122 	ex	de,hl
                           2123 ;src/game/world.c:428: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   8E99 DD 7E 06      [19] 2124 	ld	a, 6 (ix)
   8E9C 0F            [ 4] 2125 	rrca
   8E9D 0F            [ 4] 2126 	rrca
   8E9E 0F            [ 4] 2127 	rrca
   8E9F E6 1F         [ 7] 2128 	and	a, #0x1f
   8EA1 4F            [ 4] 2129 	ld	c,a
   8EA2 06 00         [ 7] 2130 	ld	b,#0x00
   8EA4 69            [ 4] 2131 	ld	l, c
   8EA5 60            [ 4] 2132 	ld	h, b
   8EA6 29            [11] 2133 	add	hl, hl
   8EA7 29            [11] 2134 	add	hl, hl
   8EA8 09            [11] 2135 	add	hl, bc
   8EA9 29            [11] 2136 	add	hl, hl
   8EAA 29            [11] 2137 	add	hl, hl
   8EAB 29            [11] 2138 	add	hl, hl
   8EAC 29            [11] 2139 	add	hl, hl
   8EAD 01 00 C0      [10] 2140 	ld	bc, #0xc000
   8EB0 09            [11] 2141 	add	hl, bc
   8EB1 DD 7E 06      [19] 2142 	ld	a, 6 (ix)
   8EB4 E6 07         [ 7] 2143 	and	a, #0x07
   8EB6 07            [ 4] 2144 	rlca
   8EB7 07            [ 4] 2145 	rlca
   8EB8 07            [ 4] 2146 	rlca
   8EB9 E6 F8         [ 7] 2147 	and	a, #0xf8
   8EBB 47            [ 4] 2148 	ld	b, a
   8EBC 0E 00         [ 7] 2149 	ld	c, #0x00
   8EBE 09            [11] 2150 	add	hl, bc
   8EBF DD 4E 04      [19] 2151 	ld	c,4 (ix)
   8EC2 DD 46 05      [19] 2152 	ld	b,5 (ix)
   8EC5 CB 78         [ 8] 2153 	bit	7, b
   8EC7 28 03         [12] 2154 	jr	Z,00128$
   8EC9 03            [ 6] 2155 	inc	bc
   8ECA 03            [ 6] 2156 	inc	bc
   8ECB 03            [ 6] 2157 	inc	bc
   8ECC                    2158 00128$:
   8ECC CB 28         [ 8] 2159 	sra	b
   8ECE CB 19         [ 8] 2160 	rr	c
   8ED0 CB 28         [ 8] 2161 	sra	b
   8ED2 CB 19         [ 8] 2162 	rr	c
   8ED4 09            [11] 2163 	add	hl, bc
                           2164 ;src/game/world.c:432: *pAddress &= 119;
   8ED5 4E            [ 7] 2165 	ld	c, (hl)
                           2166 ;src/game/world.c:434: if(nColor & 1)
   8ED6 DD 7E 07      [19] 2167 	ld	a, 7 (ix)
   8ED9 E6 01         [ 7] 2168 	and	a, #0x01
   8EDB DD 77 FE      [19] 2169 	ld	-2 (ix), a
                           2170 ;src/game/world.c:436: if(nColor & 2)
   8EDE DD 7E 07      [19] 2171 	ld	a, 7 (ix)
   8EE1 E6 02         [ 7] 2172 	and	a, #0x02
   8EE3 DD 77 FF      [19] 2173 	ld	-1 (ix), a
                           2174 ;src/game/world.c:430: if(nPixel == 0)
   8EE6 7A            [ 4] 2175 	ld	a, d
   8EE7 B3            [ 4] 2176 	or	a,e
   8EE8 20 18         [12] 2177 	jr	NZ,00124$
                           2178 ;src/game/world.c:432: *pAddress &= 119;
   8EEA 79            [ 4] 2179 	ld	a, c
   8EEB E6 77         [ 7] 2180 	and	a, #0x77
   8EED 77            [ 7] 2181 	ld	(hl), a
                           2182 ;src/game/world.c:434: if(nColor & 1)
   8EEE DD 7E FE      [19] 2183 	ld	a, -2 (ix)
   8EF1 B7            [ 4] 2184 	or	a, a
   8EF2 28 03         [12] 2185 	jr	Z,00102$
                           2186 ;src/game/world.c:435: *pAddress |= 128;
   8EF4 CB FE         [15] 2187 	set	7, (hl)
   8EF6 7E            [ 7] 2188 	ld	a, (hl)
   8EF7                    2189 00102$:
                           2190 ;src/game/world.c:436: if(nColor & 2)
   8EF7 DD 7E FF      [19] 2191 	ld	a, -1 (ix)
   8EFA B7            [ 4] 2192 	or	a, a
   8EFB 28 56         [12] 2193 	jr	Z,00126$
                           2194 ;src/game/world.c:437: *pAddress |= 8;
   8EFD CB DE         [15] 2195 	set	3, (hl)
   8EFF 7E            [ 7] 2196 	ld	a, (hl)
   8F00 18 51         [12] 2197 	jr	00126$
   8F02                    2198 00124$:
                           2199 ;src/game/world.c:439: else if(nPixel == 1)
   8F02 7B            [ 4] 2200 	ld	a, e
   8F03 3D            [ 4] 2201 	dec	a
   8F04 B2            [ 4] 2202 	or	a, d
   8F05 20 18         [12] 2203 	jr	NZ,00121$
                           2204 ;src/game/world.c:441: *pAddress &= 187;
   8F07 79            [ 4] 2205 	ld	a, c
   8F08 E6 BB         [ 7] 2206 	and	a, #0xbb
   8F0A 77            [ 7] 2207 	ld	(hl), a
                           2208 ;src/game/world.c:443: if(nColor & 1)
   8F0B DD 7E FE      [19] 2209 	ld	a, -2 (ix)
   8F0E B7            [ 4] 2210 	or	a, a
   8F0F 28 03         [12] 2211 	jr	Z,00106$
                           2212 ;src/game/world.c:444: *pAddress |= 64;
   8F11 CB F6         [15] 2213 	set	6, (hl)
   8F13 7E            [ 7] 2214 	ld	a, (hl)
   8F14                    2215 00106$:
                           2216 ;src/game/world.c:445: if(nColor & 2)
   8F14 DD 7E FF      [19] 2217 	ld	a, -1 (ix)
   8F17 B7            [ 4] 2218 	or	a, a
   8F18 28 39         [12] 2219 	jr	Z,00126$
                           2220 ;src/game/world.c:446: *pAddress |= 4;
   8F1A CB D6         [15] 2221 	set	2, (hl)
   8F1C 7E            [ 7] 2222 	ld	a, (hl)
   8F1D 18 34         [12] 2223 	jr	00126$
   8F1F                    2224 00121$:
                           2225 ;src/game/world.c:448: else if(nPixel == 2)
   8F1F 7B            [ 4] 2226 	ld	a, e
   8F20 D6 02         [ 7] 2227 	sub	a, #0x02
   8F22 B2            [ 4] 2228 	or	a, d
   8F23 20 18         [12] 2229 	jr	NZ,00118$
                           2230 ;src/game/world.c:450: *pAddress &= 221;
   8F25 79            [ 4] 2231 	ld	a, c
   8F26 E6 DD         [ 7] 2232 	and	a, #0xdd
   8F28 77            [ 7] 2233 	ld	(hl), a
                           2234 ;src/game/world.c:452: if(nColor & 1)
   8F29 DD 7E FE      [19] 2235 	ld	a, -2 (ix)
   8F2C B7            [ 4] 2236 	or	a, a
   8F2D 28 03         [12] 2237 	jr	Z,00110$
                           2238 ;src/game/world.c:453: *pAddress |= 32;
   8F2F CB EE         [15] 2239 	set	5, (hl)
   8F31 7E            [ 7] 2240 	ld	a, (hl)
   8F32                    2241 00110$:
                           2242 ;src/game/world.c:454: if(nColor & 2)
   8F32 DD 7E FF      [19] 2243 	ld	a, -1 (ix)
   8F35 B7            [ 4] 2244 	or	a, a
   8F36 28 1B         [12] 2245 	jr	Z,00126$
                           2246 ;src/game/world.c:455: *pAddress |= 2;
   8F38 CB CE         [15] 2247 	set	1, (hl)
   8F3A 7E            [ 7] 2248 	ld	a, (hl)
   8F3B 18 16         [12] 2249 	jr	00126$
   8F3D                    2250 00118$:
                           2251 ;src/game/world.c:459: *pAddress &= 238;
   8F3D 79            [ 4] 2252 	ld	a, c
   8F3E E6 EE         [ 7] 2253 	and	a, #0xee
   8F40 77            [ 7] 2254 	ld	(hl), a
                           2255 ;src/game/world.c:461: if(nColor & 1)
   8F41 DD 7E FE      [19] 2256 	ld	a, -2 (ix)
   8F44 B7            [ 4] 2257 	or	a, a
   8F45 28 03         [12] 2258 	jr	Z,00114$
                           2259 ;src/game/world.c:462: *pAddress |= 16;
   8F47 CB E6         [15] 2260 	set	4, (hl)
   8F49 7E            [ 7] 2261 	ld	a, (hl)
   8F4A                    2262 00114$:
                           2263 ;src/game/world.c:463: if(nColor & 2)
   8F4A DD 7E FF      [19] 2264 	ld	a, -1 (ix)
   8F4D B7            [ 4] 2265 	or	a, a
   8F4E 28 03         [12] 2266 	jr	Z,00126$
                           2267 ;src/game/world.c:464: *pAddress |= 1;
   8F50 CB C6         [15] 2268 	set	0, (hl)
   8F52 7E            [ 7] 2269 	ld	a, (hl)
   8F53                    2270 00126$:
   8F53 DD F9         [10] 2271 	ld	sp, ix
   8F55 DD E1         [14] 2272 	pop	ix
   8F57 C9            [10] 2273 	ret
                           2274 ;src/game/world.c:468: u8 isPixelBlack(int nX, unsigned char nY)
                           2275 ;	---------------------------------
                           2276 ; Function isPixelBlack
                           2277 ; ---------------------------------
   8F58                    2278 _isPixelBlack::
   8F58 DD E5         [15] 2279 	push	ix
   8F5A DD 21 00 00   [14] 2280 	ld	ix,#0
   8F5E DD 39         [15] 2281 	add	ix,sp
                           2282 ;src/game/world.c:471: int nPixel = nX % 4;
   8F60 21 04 00      [10] 2283 	ld	hl, #0x0004
   8F63 E5            [11] 2284 	push	hl
   8F64 DD 6E 04      [19] 2285 	ld	l,4 (ix)
   8F67 DD 66 05      [19] 2286 	ld	h,5 (ix)
   8F6A E5            [11] 2287 	push	hl
   8F6B CD 1A 67      [17] 2288 	call	__modsint
   8F6E F1            [10] 2289 	pop	af
   8F6F F1            [10] 2290 	pop	af
   8F70 4D            [ 4] 2291 	ld	c, l
   8F71 44            [ 4] 2292 	ld	b, h
                           2293 ;src/game/world.c:474: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   8F72 DD 7E 06      [19] 2294 	ld	a, 6 (ix)
   8F75 0F            [ 4] 2295 	rrca
   8F76 0F            [ 4] 2296 	rrca
   8F77 0F            [ 4] 2297 	rrca
   8F78 E6 1F         [ 7] 2298 	and	a, #0x1f
   8F7A 5F            [ 4] 2299 	ld	e,a
   8F7B 16 00         [ 7] 2300 	ld	d,#0x00
   8F7D 6B            [ 4] 2301 	ld	l, e
   8F7E 62            [ 4] 2302 	ld	h, d
   8F7F 29            [11] 2303 	add	hl, hl
   8F80 29            [11] 2304 	add	hl, hl
   8F81 19            [11] 2305 	add	hl, de
   8F82 29            [11] 2306 	add	hl, hl
   8F83 29            [11] 2307 	add	hl, hl
   8F84 29            [11] 2308 	add	hl, hl
   8F85 29            [11] 2309 	add	hl, hl
   8F86 11 00 C0      [10] 2310 	ld	de, #0xc000
   8F89 19            [11] 2311 	add	hl, de
   8F8A DD 7E 06      [19] 2312 	ld	a, 6 (ix)
   8F8D E6 07         [ 7] 2313 	and	a, #0x07
   8F8F 07            [ 4] 2314 	rlca
   8F90 07            [ 4] 2315 	rlca
   8F91 07            [ 4] 2316 	rlca
   8F92 E6 F8         [ 7] 2317 	and	a, #0xf8
   8F94 57            [ 4] 2318 	ld	d, a
   8F95 1E 00         [ 7] 2319 	ld	e, #0x00
   8F97 19            [11] 2320 	add	hl, de
   8F98 DD 5E 04      [19] 2321 	ld	e,4 (ix)
   8F9B DD 56 05      [19] 2322 	ld	d,5 (ix)
   8F9E CB 7A         [ 8] 2323 	bit	7, d
   8FA0 28 03         [12] 2324 	jr	Z,00118$
   8FA2 13            [ 6] 2325 	inc	de
   8FA3 13            [ 6] 2326 	inc	de
   8FA4 13            [ 6] 2327 	inc	de
   8FA5                    2328 00118$:
   8FA5 CB 2A         [ 8] 2329 	sra	d
   8FA7 CB 1B         [ 8] 2330 	rr	e
   8FA9 CB 2A         [ 8] 2331 	sra	d
   8FAB CB 1B         [ 8] 2332 	rr	e
   8FAD 19            [11] 2333 	add	hl, de
                           2334 ;src/game/world.c:477: if(nPixel == 0 && !(*pAddress & 136)) 
   8FAE 78            [ 4] 2335 	ld	a, b
   8FAF B1            [ 4] 2336 	or	a,c
   8FB0 20 09         [12] 2337 	jr	NZ,00113$
   8FB2 7E            [ 7] 2338 	ld	a, (hl)
   8FB3 E6 88         [ 7] 2339 	and	a, #0x88
   8FB5 20 04         [12] 2340 	jr	NZ,00113$
                           2341 ;src/game/world.c:478: return 1;
   8FB7 2E 01         [ 7] 2342 	ld	l, #0x01
   8FB9 18 2E         [12] 2343 	jr	00116$
   8FBB                    2344 00113$:
                           2345 ;src/game/world.c:479: else if(nPixel == 1 && !(*pAddress & 68))
   8FBB 79            [ 4] 2346 	ld	a, c
   8FBC 3D            [ 4] 2347 	dec	a
   8FBD B0            [ 4] 2348 	or	a, b
   8FBE 20 09         [12] 2349 	jr	NZ,00109$
   8FC0 7E            [ 7] 2350 	ld	a, (hl)
   8FC1 E6 44         [ 7] 2351 	and	a, #0x44
   8FC3 20 04         [12] 2352 	jr	NZ,00109$
                           2353 ;src/game/world.c:480: return 1;
   8FC5 2E 01         [ 7] 2354 	ld	l, #0x01
   8FC7 18 20         [12] 2355 	jr	00116$
   8FC9                    2356 00109$:
                           2357 ;src/game/world.c:481: else if(nPixel == 2 && !(*pAddress & 34))
   8FC9 79            [ 4] 2358 	ld	a, c
   8FCA D6 02         [ 7] 2359 	sub	a, #0x02
   8FCC B0            [ 4] 2360 	or	a, b
   8FCD 20 09         [12] 2361 	jr	NZ,00105$
   8FCF 7E            [ 7] 2362 	ld	a, (hl)
   8FD0 E6 22         [ 7] 2363 	and	a, #0x22
   8FD2 20 04         [12] 2364 	jr	NZ,00105$
                           2365 ;src/game/world.c:482: return 1;
   8FD4 2E 01         [ 7] 2366 	ld	l, #0x01
   8FD6 18 11         [12] 2367 	jr	00116$
   8FD8                    2368 00105$:
                           2369 ;src/game/world.c:483: else if(nPixel == 3 && !(*pAddress & 17))
   8FD8 79            [ 4] 2370 	ld	a, c
   8FD9 D6 03         [ 7] 2371 	sub	a, #0x03
   8FDB B0            [ 4] 2372 	or	a, b
   8FDC 20 09         [12] 2373 	jr	NZ,00110$
   8FDE 7E            [ 7] 2374 	ld	a, (hl)
   8FDF E6 11         [ 7] 2375 	and	a, #0x11
   8FE1 20 04         [12] 2376 	jr	NZ,00110$
                           2377 ;src/game/world.c:484: return 1;
   8FE3 2E 01         [ 7] 2378 	ld	l, #0x01
   8FE5 18 02         [12] 2379 	jr	00116$
   8FE7                    2380 00110$:
                           2381 ;src/game/world.c:486: return 0;
   8FE7 2E 00         [ 7] 2382 	ld	l, #0x00
   8FE9                    2383 00116$:
   8FE9 DD E1         [14] 2384 	pop	ix
   8FEB C9            [10] 2385 	ret
                           2386 ;src/game/world.c:489: void drawNewTrain(u8 i, u8 x_, u8 y_)
                           2387 ;	---------------------------------
                           2388 ; Function drawNewTrain
                           2389 ; ---------------------------------
   8FEC                    2390 _drawNewTrain::
   8FEC DD E5         [15] 2391 	push	ix
   8FEE DD 21 00 00   [14] 2392 	ld	ix,#0
   8FF2 DD 39         [15] 2393 	add	ix,sp
   8FF4 F5            [11] 2394 	push	af
   8FF5 F5            [11] 2395 	push	af
   8FF6 3B            [ 6] 2396 	dec	sp
                           2397 ;src/game/world.c:491: switch(trainList[i].heading)
   8FF7 DD 6E 04      [19] 2398 	ld	l, 4 (ix)
   8FFA 26 00         [ 7] 2399 	ld	h, #0x00
   8FFC 29            [11] 2400 	add	hl, hl
   8FFD 29            [11] 2401 	add	hl, hl
   8FFE 29            [11] 2402 	add	hl, hl
   8FFF 29            [11] 2403 	add	hl, hl
   9000 DD 75 FD      [19] 2404 	ld	-3 (ix), l
   9003 DD 74 FE      [19] 2405 	ld	-2 (ix), h
   9006 FD 21 1D 83   [14] 2406 	ld	iy, #_trainList
   900A FD 7E 00      [19] 2407 	ld	a, 0 (iy)
   900D DD 86 FD      [19] 2408 	add	a, -3 (ix)
   9010 5F            [ 4] 2409 	ld	e, a
   9011 FD 7E 01      [19] 2410 	ld	a, 1 (iy)
   9014 DD 8E FE      [19] 2411 	adc	a, -2 (ix)
   9017 57            [ 4] 2412 	ld	d, a
   9018 6B            [ 4] 2413 	ld	l, e
   9019 62            [ 4] 2414 	ld	h, d
   901A 01 06 00      [10] 2415 	ld	bc, #0x0006
   901D 09            [11] 2416 	add	hl, bc
   901E 7E            [ 7] 2417 	ld	a, (hl)
   901F DD 77 FF      [19] 2418 	ld	-1 (ix), a
                           2419 ;src/game/world.c:495: trainList[i].animX = (int)(trainList[i].posX)*TILESIZE_H+1;
   9022 21 07 00      [10] 2420 	ld	hl, #0x0007
   9025 19            [11] 2421 	add	hl,de
   9026 4D            [ 4] 2422 	ld	c, l
   9027 44            [ 4] 2423 	ld	b, h
   9028 21 04 00      [10] 2424 	ld	hl, #0x0004
   902B 19            [11] 2425 	add	hl,de
   902C E3            [19] 2426 	ex	(sp), hl
                           2427 ;src/game/world.c:491: switch(trainList[i].heading)
   902D DD 7E FF      [19] 2428 	ld	a, -1 (ix)
   9030 B7            [ 4] 2429 	or	a, a
   9031 28 33         [12] 2430 	jr	Z,00101$
   9033 DD 7E FF      [19] 2431 	ld	a, -1 (ix)
   9036 3D            [ 4] 2432 	dec	a
   9037 CA 02 91      [10] 2433 	jp	Z,00102$
                           2434 ;src/game/world.c:511: trainList[nbTrainList].animX = (int)(trainList[i].posX)*TILESIZE_H+8;
   903A FD 21 22 83   [14] 2435 	ld	iy, #_nbTrainList
   903E FD 6E 00      [19] 2436 	ld	l, 0 (iy)
   9041 26 00         [ 7] 2437 	ld	h, #0x00
   9043 29            [11] 2438 	add	hl, hl
   9044 29            [11] 2439 	add	hl, hl
   9045 29            [11] 2440 	add	hl, hl
   9046 29            [11] 2441 	add	hl, hl
   9047 4D            [ 4] 2442 	ld	c, l
   9048 44            [ 4] 2443 	ld	b, h
   9049 2A 1D 83      [16] 2444 	ld	hl, (_trainList)
   904C 09            [11] 2445 	add	hl, bc
   904D 01 07 00      [10] 2446 	ld	bc, #0x0007
   9050 09            [11] 2447 	add	hl,bc
   9051 4D            [ 4] 2448 	ld	c, l
   9052 44            [ 4] 2449 	ld	b, h
                           2450 ;src/game/world.c:491: switch(trainList[i].heading)
   9053 DD 7E FF      [19] 2451 	ld	a, -1 (ix)
   9056 D6 02         [ 7] 2452 	sub	a, #0x02
   9058 CA A6 91      [10] 2453 	jp	Z,00103$
   905B DD 7E FF      [19] 2454 	ld	a, -1 (ix)
   905E D6 03         [ 7] 2455 	sub	a, #0x03
   9060 CA 68 92      [10] 2456 	jp	Z,00104$
   9063 C3 1E 93      [10] 2457 	jp	00105$
                           2458 ;src/game/world.c:494: case 0:
   9066                    2459 00101$:
                           2460 ;src/game/world.c:495: trainList[i].animX = (int)(trainList[i].posX)*TILESIZE_H+1;
   9066 E1            [10] 2461 	pop	hl
   9067 E5            [11] 2462 	push	hl
   9068 6E            [ 7] 2463 	ld	l, (hl)
   9069 26 00         [ 7] 2464 	ld	h, #0x00
   906B 29            [11] 2465 	add	hl, hl
   906C 29            [11] 2466 	add	hl, hl
   906D 29            [11] 2467 	add	hl, hl
   906E 29            [11] 2468 	add	hl, hl
   906F 23            [ 6] 2469 	inc	hl
   9070 55            [ 4] 2470 	ld	d, l
   9071 5C            [ 4] 2471 	ld	e, h
   9072 7A            [ 4] 2472 	ld	a, d
   9073 02            [ 7] 2473 	ld	(bc), a
   9074 03            [ 6] 2474 	inc	bc
   9075 7B            [ 4] 2475 	ld	a, e
   9076 02            [ 7] 2476 	ld	(bc), a
                           2477 ;src/game/world.c:496: trainList[i].animY = (int)(trainList[i].posY)*TILESIZE_H+8;
   9077 FD 21 1D 83   [14] 2478 	ld	iy, #_trainList
   907B FD 7E 00      [19] 2479 	ld	a, 0 (iy)
   907E DD 86 FD      [19] 2480 	add	a, -3 (ix)
   9081 4F            [ 4] 2481 	ld	c, a
   9082 FD 7E 01      [19] 2482 	ld	a, 1 (iy)
   9085 DD 8E FE      [19] 2483 	adc	a, -2 (ix)
   9088 47            [ 4] 2484 	ld	b, a
   9089 FD 21 09 00   [14] 2485 	ld	iy, #0x0009
   908D FD 09         [15] 2486 	add	iy, bc
   908F 69            [ 4] 2487 	ld	l, c
   9090 60            [ 4] 2488 	ld	h, b
   9091 11 05 00      [10] 2489 	ld	de, #0x0005
   9094 19            [11] 2490 	add	hl, de
   9095 6E            [ 7] 2491 	ld	l, (hl)
   9096 26 00         [ 7] 2492 	ld	h, #0x00
   9098 29            [11] 2493 	add	hl, hl
   9099 29            [11] 2494 	add	hl, hl
   909A 29            [11] 2495 	add	hl, hl
   909B 29            [11] 2496 	add	hl, hl
   909C 01 08 00      [10] 2497 	ld	bc, #0x0008
   909F 09            [11] 2498 	add	hl, bc
   90A0 FD 75 00      [19] 2499 	ld	0 (iy), l
   90A3 FD 74 01      [19] 2500 	ld	1 (iy), h
                           2501 ;src/game/world.c:497: trainList[i].animOldX = (int)(trainList[i].posX)*TILESIZE_H;
   90A6 FD 21 1D 83   [14] 2502 	ld	iy, #_trainList
   90AA FD 7E 00      [19] 2503 	ld	a, 0 (iy)
   90AD DD 86 FD      [19] 2504 	add	a, -3 (ix)
   90B0 4F            [ 4] 2505 	ld	c, a
   90B1 FD 7E 01      [19] 2506 	ld	a, 1 (iy)
   90B4 DD 8E FE      [19] 2507 	adc	a, -2 (ix)
   90B7 47            [ 4] 2508 	ld	b, a
   90B8 21 0B 00      [10] 2509 	ld	hl, #0x000b
   90BB 09            [11] 2510 	add	hl,bc
   90BC EB            [ 4] 2511 	ex	de,hl
   90BD C5            [11] 2512 	push	bc
   90BE FD E1         [14] 2513 	pop	iy
   90C0 FD 6E 04      [19] 2514 	ld	l, 4 (iy)
   90C3 26 00         [ 7] 2515 	ld	h, #0x00
   90C5 29            [11] 2516 	add	hl, hl
   90C6 29            [11] 2517 	add	hl, hl
   90C7 29            [11] 2518 	add	hl, hl
   90C8 29            [11] 2519 	add	hl, hl
   90C9 4D            [ 4] 2520 	ld	c, l
   90CA 44            [ 4] 2521 	ld	b, h
   90CB 79            [ 4] 2522 	ld	a, c
   90CC 12            [ 7] 2523 	ld	(de), a
   90CD 13            [ 6] 2524 	inc	de
   90CE 78            [ 4] 2525 	ld	a, b
   90CF 12            [ 7] 2526 	ld	(de), a
                           2527 ;src/game/world.c:498: trainList[i].animOldY = (int)(trainList[i].posY)*TILESIZE_H+8;
   90D0 FD 21 1D 83   [14] 2528 	ld	iy, #_trainList
   90D4 FD 7E 00      [19] 2529 	ld	a, 0 (iy)
   90D7 DD 86 FD      [19] 2530 	add	a, -3 (ix)
   90DA 4F            [ 4] 2531 	ld	c, a
   90DB FD 7E 01      [19] 2532 	ld	a, 1 (iy)
   90DE DD 8E FE      [19] 2533 	adc	a, -2 (ix)
   90E1 47            [ 4] 2534 	ld	b, a
   90E2 FD 21 0D 00   [14] 2535 	ld	iy, #0x000d
   90E6 FD 09         [15] 2536 	add	iy, bc
   90E8 69            [ 4] 2537 	ld	l, c
   90E9 60            [ 4] 2538 	ld	h, b
   90EA 11 05 00      [10] 2539 	ld	de, #0x0005
   90ED 19            [11] 2540 	add	hl, de
   90EE 6E            [ 7] 2541 	ld	l, (hl)
   90EF 26 00         [ 7] 2542 	ld	h, #0x00
   90F1 29            [11] 2543 	add	hl, hl
   90F2 29            [11] 2544 	add	hl, hl
   90F3 29            [11] 2545 	add	hl, hl
   90F4 29            [11] 2546 	add	hl, hl
   90F5 01 08 00      [10] 2547 	ld	bc, #0x0008
   90F8 09            [11] 2548 	add	hl, bc
   90F9 FD 75 00      [19] 2549 	ld	0 (iy), l
   90FC FD 74 01      [19] 2550 	ld	1 (iy), h
                           2551 ;src/game/world.c:499: break;
   90FF C3 1E 93      [10] 2552 	jp	00105$
                           2553 ;src/game/world.c:502: case 1:
   9102                    2554 00102$:
                           2555 ;src/game/world.c:503: trainList[i].animX = (int)(trainList[i].posX)*TILESIZE_H+14;
   9102 E1            [10] 2556 	pop	hl
   9103 E5            [11] 2557 	push	hl
   9104 6E            [ 7] 2558 	ld	l, (hl)
   9105 26 00         [ 7] 2559 	ld	h, #0x00
   9107 29            [11] 2560 	add	hl, hl
   9108 29            [11] 2561 	add	hl, hl
   9109 29            [11] 2562 	add	hl, hl
   910A 29            [11] 2563 	add	hl, hl
   910B EB            [ 4] 2564 	ex	de,hl
   910C 21 0E 00      [10] 2565 	ld	hl, #0x000e
   910F 19            [11] 2566 	add	hl,de
   9110 EB            [ 4] 2567 	ex	de,hl
   9111 7B            [ 4] 2568 	ld	a, e
   9112 02            [ 7] 2569 	ld	(bc), a
   9113 03            [ 6] 2570 	inc	bc
   9114 7A            [ 4] 2571 	ld	a, d
   9115 02            [ 7] 2572 	ld	(bc), a
                           2573 ;src/game/world.c:504: trainList[i].animY = (int)(trainList[i].posY)*TILESIZE_H+8;
   9116 FD 21 1D 83   [14] 2574 	ld	iy, #_trainList
   911A FD 7E 00      [19] 2575 	ld	a, 0 (iy)
   911D DD 86 FD      [19] 2576 	add	a, -3 (ix)
   9120 4F            [ 4] 2577 	ld	c, a
   9121 FD 7E 01      [19] 2578 	ld	a, 1 (iy)
   9124 DD 8E FE      [19] 2579 	adc	a, -2 (ix)
   9127 47            [ 4] 2580 	ld	b, a
   9128 FD 21 09 00   [14] 2581 	ld	iy, #0x0009
   912C FD 09         [15] 2582 	add	iy, bc
   912E 69            [ 4] 2583 	ld	l, c
   912F 60            [ 4] 2584 	ld	h, b
   9130 11 05 00      [10] 2585 	ld	de, #0x0005
   9133 19            [11] 2586 	add	hl, de
   9134 6E            [ 7] 2587 	ld	l, (hl)
   9135 26 00         [ 7] 2588 	ld	h, #0x00
   9137 29            [11] 2589 	add	hl, hl
   9138 29            [11] 2590 	add	hl, hl
   9139 29            [11] 2591 	add	hl, hl
   913A 29            [11] 2592 	add	hl, hl
   913B 01 08 00      [10] 2593 	ld	bc, #0x0008
   913E 09            [11] 2594 	add	hl, bc
   913F FD 75 00      [19] 2595 	ld	0 (iy), l
   9142 FD 74 01      [19] 2596 	ld	1 (iy), h
                           2597 ;src/game/world.c:505: trainList[i].animOldX = (int)(trainList[i].posX)*TILESIZE_H+15;
   9145 FD 21 1D 83   [14] 2598 	ld	iy, #_trainList
   9149 FD 7E 00      [19] 2599 	ld	a, 0 (iy)
   914C DD 86 FD      [19] 2600 	add	a, -3 (ix)
   914F 4F            [ 4] 2601 	ld	c, a
   9150 FD 7E 01      [19] 2602 	ld	a, 1 (iy)
   9153 DD 8E FE      [19] 2603 	adc	a, -2 (ix)
   9156 47            [ 4] 2604 	ld	b, a
   9157 FD 21 0B 00   [14] 2605 	ld	iy, #0x000b
   915B FD 09         [15] 2606 	add	iy, bc
   915D 69            [ 4] 2607 	ld	l, c
   915E 60            [ 4] 2608 	ld	h, b
   915F 11 04 00      [10] 2609 	ld	de, #0x0004
   9162 19            [11] 2610 	add	hl, de
   9163 6E            [ 7] 2611 	ld	l, (hl)
   9164 26 00         [ 7] 2612 	ld	h, #0x00
   9166 29            [11] 2613 	add	hl, hl
   9167 29            [11] 2614 	add	hl, hl
   9168 29            [11] 2615 	add	hl, hl
   9169 29            [11] 2616 	add	hl, hl
   916A 01 0F 00      [10] 2617 	ld	bc, #0x000f
   916D 09            [11] 2618 	add	hl, bc
   916E FD 75 00      [19] 2619 	ld	0 (iy), l
   9171 FD 74 01      [19] 2620 	ld	1 (iy), h
                           2621 ;src/game/world.c:506: trainList[i].animOldY = (int)(trainList[i].posY)*TILESIZE_H+8;
   9174 FD 21 1D 83   [14] 2622 	ld	iy, #_trainList
   9178 FD 7E 00      [19] 2623 	ld	a, 0 (iy)
   917B DD 86 FD      [19] 2624 	add	a, -3 (ix)
   917E 4F            [ 4] 2625 	ld	c, a
   917F FD 7E 01      [19] 2626 	ld	a, 1 (iy)
   9182 DD 8E FE      [19] 2627 	adc	a, -2 (ix)
   9185 47            [ 4] 2628 	ld	b, a
   9186 FD 21 0D 00   [14] 2629 	ld	iy, #0x000d
   918A FD 09         [15] 2630 	add	iy, bc
   918C 69            [ 4] 2631 	ld	l, c
   918D 60            [ 4] 2632 	ld	h, b
   918E 11 05 00      [10] 2633 	ld	de, #0x0005
   9191 19            [11] 2634 	add	hl, de
   9192 6E            [ 7] 2635 	ld	l, (hl)
   9193 26 00         [ 7] 2636 	ld	h, #0x00
   9195 29            [11] 2637 	add	hl, hl
   9196 29            [11] 2638 	add	hl, hl
   9197 29            [11] 2639 	add	hl, hl
   9198 29            [11] 2640 	add	hl, hl
   9199 01 08 00      [10] 2641 	ld	bc, #0x0008
   919C 09            [11] 2642 	add	hl, bc
   919D FD 75 00      [19] 2643 	ld	0 (iy), l
   91A0 FD 74 01      [19] 2644 	ld	1 (iy), h
                           2645 ;src/game/world.c:507: break;
   91A3 C3 1E 93      [10] 2646 	jp	00105$
                           2647 ;src/game/world.c:510: case 2:
   91A6                    2648 00103$:
                           2649 ;src/game/world.c:511: trainList[nbTrainList].animX = (int)(trainList[i].posX)*TILESIZE_H+8;
   91A6 E1            [10] 2650 	pop	hl
   91A7 E5            [11] 2651 	push	hl
   91A8 6E            [ 7] 2652 	ld	l, (hl)
   91A9 26 00         [ 7] 2653 	ld	h, #0x00
   91AB 29            [11] 2654 	add	hl, hl
   91AC 29            [11] 2655 	add	hl, hl
   91AD 29            [11] 2656 	add	hl, hl
   91AE 29            [11] 2657 	add	hl, hl
   91AF EB            [ 4] 2658 	ex	de,hl
   91B0 21 08 00      [10] 2659 	ld	hl, #0x0008
   91B3 19            [11] 2660 	add	hl,de
   91B4 EB            [ 4] 2661 	ex	de,hl
   91B5 7B            [ 4] 2662 	ld	a, e
   91B6 02            [ 7] 2663 	ld	(bc), a
   91B7 03            [ 6] 2664 	inc	bc
   91B8 7A            [ 4] 2665 	ld	a, d
   91B9 02            [ 7] 2666 	ld	(bc), a
                           2667 ;src/game/world.c:512: trainList[nbTrainList].animY = (int)(trainList[i].posY)*TILESIZE_H+14;
   91BA FD 21 22 83   [14] 2668 	ld	iy, #_nbTrainList
   91BE FD 6E 00      [19] 2669 	ld	l, 0 (iy)
   91C1 26 00         [ 7] 2670 	ld	h, #0x00
   91C3 29            [11] 2671 	add	hl, hl
   91C4 29            [11] 2672 	add	hl, hl
   91C5 29            [11] 2673 	add	hl, hl
   91C6 29            [11] 2674 	add	hl, hl
   91C7 4D            [ 4] 2675 	ld	c, l
   91C8 44            [ 4] 2676 	ld	b, h
   91C9 2A 1D 83      [16] 2677 	ld	hl, (_trainList)
   91CC 09            [11] 2678 	add	hl, bc
   91CD 01 09 00      [10] 2679 	ld	bc, #0x0009
   91D0 09            [11] 2680 	add	hl,bc
   91D1 4D            [ 4] 2681 	ld	c, l
   91D2 44            [ 4] 2682 	ld	b, h
   91D3 FD 2A 1D 83   [20] 2683 	ld	iy, (_trainList)
   91D7 DD 5E FD      [19] 2684 	ld	e,-3 (ix)
   91DA DD 56 FE      [19] 2685 	ld	d,-2 (ix)
   91DD FD 19         [15] 2686 	add	iy, de
   91DF FD 6E 05      [19] 2687 	ld	l, 5 (iy)
   91E2 26 00         [ 7] 2688 	ld	h, #0x00
   91E4 29            [11] 2689 	add	hl, hl
   91E5 29            [11] 2690 	add	hl, hl
   91E6 29            [11] 2691 	add	hl, hl
   91E7 29            [11] 2692 	add	hl, hl
   91E8 EB            [ 4] 2693 	ex	de,hl
   91E9 21 0E 00      [10] 2694 	ld	hl, #0x000e
   91EC 19            [11] 2695 	add	hl,de
   91ED EB            [ 4] 2696 	ex	de,hl
   91EE 7B            [ 4] 2697 	ld	a, e
   91EF 02            [ 7] 2698 	ld	(bc), a
   91F0 03            [ 6] 2699 	inc	bc
   91F1 7A            [ 4] 2700 	ld	a, d
   91F2 02            [ 7] 2701 	ld	(bc), a
                           2702 ;src/game/world.c:513: trainList[nbTrainList].animOldX = (int)(trainList[i].posX)*TILESIZE_H+8;
   91F3 FD 21 22 83   [14] 2703 	ld	iy, #_nbTrainList
   91F7 FD 6E 00      [19] 2704 	ld	l, 0 (iy)
   91FA 26 00         [ 7] 2705 	ld	h, #0x00
   91FC 29            [11] 2706 	add	hl, hl
   91FD 29            [11] 2707 	add	hl, hl
   91FE 29            [11] 2708 	add	hl, hl
   91FF 29            [11] 2709 	add	hl, hl
   9200 4D            [ 4] 2710 	ld	c, l
   9201 44            [ 4] 2711 	ld	b, h
   9202 2A 1D 83      [16] 2712 	ld	hl, (_trainList)
   9205 09            [11] 2713 	add	hl, bc
   9206 01 0B 00      [10] 2714 	ld	bc, #0x000b
   9209 09            [11] 2715 	add	hl,bc
   920A 4D            [ 4] 2716 	ld	c, l
   920B 44            [ 4] 2717 	ld	b, h
   920C FD 2A 1D 83   [20] 2718 	ld	iy, (_trainList)
   9210 DD 5E FD      [19] 2719 	ld	e,-3 (ix)
   9213 DD 56 FE      [19] 2720 	ld	d,-2 (ix)
   9216 FD 19         [15] 2721 	add	iy, de
   9218 FD 6E 04      [19] 2722 	ld	l, 4 (iy)
   921B 26 00         [ 7] 2723 	ld	h, #0x00
   921D 29            [11] 2724 	add	hl, hl
   921E 29            [11] 2725 	add	hl, hl
   921F 29            [11] 2726 	add	hl, hl
   9220 29            [11] 2727 	add	hl, hl
   9221 EB            [ 4] 2728 	ex	de,hl
   9222 21 08 00      [10] 2729 	ld	hl, #0x0008
   9225 19            [11] 2730 	add	hl,de
   9226 EB            [ 4] 2731 	ex	de,hl
   9227 7B            [ 4] 2732 	ld	a, e
   9228 02            [ 7] 2733 	ld	(bc), a
   9229 03            [ 6] 2734 	inc	bc
   922A 7A            [ 4] 2735 	ld	a, d
   922B 02            [ 7] 2736 	ld	(bc), a
                           2737 ;src/game/world.c:514: trainList[nbTrainList].animOldY = (int)(trainList[i].posY)*TILESIZE_H+15;
   922C FD 21 22 83   [14] 2738 	ld	iy, #_nbTrainList
   9230 FD 6E 00      [19] 2739 	ld	l, 0 (iy)
   9233 26 00         [ 7] 2740 	ld	h, #0x00
   9235 29            [11] 2741 	add	hl, hl
   9236 29            [11] 2742 	add	hl, hl
   9237 29            [11] 2743 	add	hl, hl
   9238 29            [11] 2744 	add	hl, hl
   9239 4D            [ 4] 2745 	ld	c, l
   923A 44            [ 4] 2746 	ld	b, h
   923B 2A 1D 83      [16] 2747 	ld	hl, (_trainList)
   923E 09            [11] 2748 	add	hl, bc
   923F 01 0D 00      [10] 2749 	ld	bc, #0x000d
   9242 09            [11] 2750 	add	hl,bc
   9243 4D            [ 4] 2751 	ld	c, l
   9244 44            [ 4] 2752 	ld	b, h
   9245 FD 2A 1D 83   [20] 2753 	ld	iy, (_trainList)
   9249 DD 5E FD      [19] 2754 	ld	e,-3 (ix)
   924C DD 56 FE      [19] 2755 	ld	d,-2 (ix)
   924F FD 19         [15] 2756 	add	iy, de
   9251 FD 6E 05      [19] 2757 	ld	l, 5 (iy)
   9254 26 00         [ 7] 2758 	ld	h, #0x00
   9256 29            [11] 2759 	add	hl, hl
   9257 29            [11] 2760 	add	hl, hl
   9258 29            [11] 2761 	add	hl, hl
   9259 29            [11] 2762 	add	hl, hl
   925A EB            [ 4] 2763 	ex	de,hl
   925B 21 0F 00      [10] 2764 	ld	hl, #0x000f
   925E 19            [11] 2765 	add	hl,de
   925F EB            [ 4] 2766 	ex	de,hl
   9260 7B            [ 4] 2767 	ld	a, e
   9261 02            [ 7] 2768 	ld	(bc), a
   9262 03            [ 6] 2769 	inc	bc
   9263 7A            [ 4] 2770 	ld	a, d
   9264 02            [ 7] 2771 	ld	(bc), a
                           2772 ;src/game/world.c:515: break;
   9265 C3 1E 93      [10] 2773 	jp	00105$
                           2774 ;src/game/world.c:518: case 3:
   9268                    2775 00104$:
                           2776 ;src/game/world.c:519: trainList[nbTrainList].animX = (int)(trainList[i].posX)*TILESIZE_H+8;
   9268 E1            [10] 2777 	pop	hl
   9269 E5            [11] 2778 	push	hl
   926A 6E            [ 7] 2779 	ld	l, (hl)
   926B 26 00         [ 7] 2780 	ld	h, #0x00
   926D 29            [11] 2781 	add	hl, hl
   926E 29            [11] 2782 	add	hl, hl
   926F 29            [11] 2783 	add	hl, hl
   9270 29            [11] 2784 	add	hl, hl
   9271 EB            [ 4] 2785 	ex	de,hl
   9272 21 08 00      [10] 2786 	ld	hl, #0x0008
   9275 19            [11] 2787 	add	hl,de
   9276 EB            [ 4] 2788 	ex	de,hl
   9277 7B            [ 4] 2789 	ld	a, e
   9278 02            [ 7] 2790 	ld	(bc), a
   9279 03            [ 6] 2791 	inc	bc
   927A 7A            [ 4] 2792 	ld	a, d
   927B 02            [ 7] 2793 	ld	(bc), a
                           2794 ;src/game/world.c:520: trainList[nbTrainList].animY = (int)(trainList[i].posY)*TILESIZE_H+1;
   927C FD 21 22 83   [14] 2795 	ld	iy, #_nbTrainList
   9280 FD 6E 00      [19] 2796 	ld	l, 0 (iy)
   9283 26 00         [ 7] 2797 	ld	h, #0x00
   9285 29            [11] 2798 	add	hl, hl
   9286 29            [11] 2799 	add	hl, hl
   9287 29            [11] 2800 	add	hl, hl
   9288 29            [11] 2801 	add	hl, hl
   9289 4D            [ 4] 2802 	ld	c, l
   928A 44            [ 4] 2803 	ld	b, h
   928B 2A 1D 83      [16] 2804 	ld	hl, (_trainList)
   928E 09            [11] 2805 	add	hl, bc
   928F 01 09 00      [10] 2806 	ld	bc, #0x0009
   9292 09            [11] 2807 	add	hl,bc
   9293 4D            [ 4] 2808 	ld	c, l
   9294 44            [ 4] 2809 	ld	b, h
   9295 FD 2A 1D 83   [20] 2810 	ld	iy, (_trainList)
   9299 DD 5E FD      [19] 2811 	ld	e,-3 (ix)
   929C DD 56 FE      [19] 2812 	ld	d,-2 (ix)
   929F FD 19         [15] 2813 	add	iy, de
   92A1 FD 6E 05      [19] 2814 	ld	l, 5 (iy)
   92A4 26 00         [ 7] 2815 	ld	h, #0x00
   92A6 29            [11] 2816 	add	hl, hl
   92A7 29            [11] 2817 	add	hl, hl
   92A8 29            [11] 2818 	add	hl, hl
   92A9 29            [11] 2819 	add	hl, hl
   92AA EB            [ 4] 2820 	ex	de,hl
   92AB 13            [ 6] 2821 	inc	de
   92AC 7B            [ 4] 2822 	ld	a, e
   92AD 02            [ 7] 2823 	ld	(bc), a
   92AE 03            [ 6] 2824 	inc	bc
   92AF 7A            [ 4] 2825 	ld	a, d
   92B0 02            [ 7] 2826 	ld	(bc), a
                           2827 ;src/game/world.c:521: trainList[nbTrainList].animOldX = (int)(trainList[i].posX)*TILESIZE_H+8;
   92B1 FD 21 22 83   [14] 2828 	ld	iy, #_nbTrainList
   92B5 FD 6E 00      [19] 2829 	ld	l, 0 (iy)
   92B8 26 00         [ 7] 2830 	ld	h, #0x00
   92BA 29            [11] 2831 	add	hl, hl
   92BB 29            [11] 2832 	add	hl, hl
   92BC 29            [11] 2833 	add	hl, hl
   92BD 29            [11] 2834 	add	hl, hl
   92BE 4D            [ 4] 2835 	ld	c, l
   92BF 44            [ 4] 2836 	ld	b, h
   92C0 2A 1D 83      [16] 2837 	ld	hl, (_trainList)
   92C3 09            [11] 2838 	add	hl, bc
   92C4 01 0B 00      [10] 2839 	ld	bc, #0x000b
   92C7 09            [11] 2840 	add	hl,bc
   92C8 4D            [ 4] 2841 	ld	c, l
   92C9 44            [ 4] 2842 	ld	b, h
   92CA FD 2A 1D 83   [20] 2843 	ld	iy, (_trainList)
   92CE DD 5E FD      [19] 2844 	ld	e,-3 (ix)
   92D1 DD 56 FE      [19] 2845 	ld	d,-2 (ix)
   92D4 FD 19         [15] 2846 	add	iy, de
   92D6 FD 6E 04      [19] 2847 	ld	l, 4 (iy)
   92D9 26 00         [ 7] 2848 	ld	h, #0x00
   92DB 29            [11] 2849 	add	hl, hl
   92DC 29            [11] 2850 	add	hl, hl
   92DD 29            [11] 2851 	add	hl, hl
   92DE 29            [11] 2852 	add	hl, hl
   92DF EB            [ 4] 2853 	ex	de,hl
   92E0 21 08 00      [10] 2854 	ld	hl, #0x0008
   92E3 19            [11] 2855 	add	hl,de
   92E4 EB            [ 4] 2856 	ex	de,hl
   92E5 7B            [ 4] 2857 	ld	a, e
   92E6 02            [ 7] 2858 	ld	(bc), a
   92E7 03            [ 6] 2859 	inc	bc
   92E8 7A            [ 4] 2860 	ld	a, d
   92E9 02            [ 7] 2861 	ld	(bc), a
                           2862 ;src/game/world.c:522: trainList[nbTrainList].animOldY = (int)(trainList[i].posY)*TILESIZE_H;
   92EA FD 21 22 83   [14] 2863 	ld	iy, #_nbTrainList
   92EE FD 6E 00      [19] 2864 	ld	l, 0 (iy)
   92F1 26 00         [ 7] 2865 	ld	h, #0x00
   92F3 29            [11] 2866 	add	hl, hl
   92F4 29            [11] 2867 	add	hl, hl
   92F5 29            [11] 2868 	add	hl, hl
   92F6 29            [11] 2869 	add	hl, hl
   92F7 4D            [ 4] 2870 	ld	c, l
   92F8 44            [ 4] 2871 	ld	b, h
   92F9 2A 1D 83      [16] 2872 	ld	hl, (_trainList)
   92FC 09            [11] 2873 	add	hl, bc
   92FD 01 0D 00      [10] 2874 	ld	bc, #0x000d
   9300 09            [11] 2875 	add	hl,bc
   9301 4D            [ 4] 2876 	ld	c, l
   9302 44            [ 4] 2877 	ld	b, h
   9303 FD 2A 1D 83   [20] 2878 	ld	iy, (_trainList)
   9307 DD 5E FD      [19] 2879 	ld	e,-3 (ix)
   930A DD 56 FE      [19] 2880 	ld	d,-2 (ix)
   930D FD 19         [15] 2881 	add	iy, de
   930F FD 6E 05      [19] 2882 	ld	l, 5 (iy)
   9312 26 00         [ 7] 2883 	ld	h, #0x00
   9314 29            [11] 2884 	add	hl, hl
   9315 29            [11] 2885 	add	hl, hl
   9316 29            [11] 2886 	add	hl, hl
   9317 29            [11] 2887 	add	hl, hl
   9318 EB            [ 4] 2888 	ex	de,hl
   9319 7B            [ 4] 2889 	ld	a, e
   931A 02            [ 7] 2890 	ld	(bc), a
   931B 03            [ 6] 2891 	inc	bc
   931C 7A            [ 4] 2892 	ld	a, d
   931D 02            [ 7] 2893 	ld	(bc), a
                           2894 ;src/game/world.c:524: }
   931E                    2895 00105$:
                           2896 ;src/game/world.c:526: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   931E FD 21 1D 83   [14] 2897 	ld	iy, #_trainList
   9322 FD 7E 00      [19] 2898 	ld	a, 0 (iy)
   9325 DD 86 FD      [19] 2899 	add	a, -3 (ix)
   9328 4F            [ 4] 2900 	ld	c, a
   9329 FD 7E 01      [19] 2901 	ld	a, 1 (iy)
   932C DD 8E FE      [19] 2902 	adc	a, -2 (ix)
   932F 47            [ 4] 2903 	ld	b, a
   9330 C5            [11] 2904 	push	bc
   9331 FD E1         [14] 2905 	pop	iy
   9333 FD 6E 09      [19] 2906 	ld	l, 9 (iy)
   9336 DD 7E 06      [19] 2907 	ld	a, 6 (ix)
   9339 07            [ 4] 2908 	rlca
   933A 07            [ 4] 2909 	rlca
   933B 07            [ 4] 2910 	rlca
   933C 07            [ 4] 2911 	rlca
   933D E6 F0         [ 7] 2912 	and	a, #0xf0
   933F 5F            [ 4] 2913 	ld	e, a
   9340 7D            [ 4] 2914 	ld	a, l
   9341 93            [ 4] 2915 	sub	a, e
   9342 57            [ 4] 2916 	ld	d, a
   9343 69            [ 4] 2917 	ld	l, c
   9344 60            [ 4] 2918 	ld	h, b
   9345 01 07 00      [10] 2919 	ld	bc, #0x0007
   9348 09            [11] 2920 	add	hl, bc
   9349 4E            [ 7] 2921 	ld	c, (hl)
   934A 23            [ 6] 2922 	inc	hl
   934B 46            [ 7] 2923 	ld	b, (hl)
   934C DD 6E 05      [19] 2924 	ld	l, 5 (ix)
   934F 26 00         [ 7] 2925 	ld	h, #0x00
   9351 29            [11] 2926 	add	hl, hl
   9352 29            [11] 2927 	add	hl, hl
   9353 29            [11] 2928 	add	hl, hl
   9354 29            [11] 2929 	add	hl, hl
   9355 E3            [19] 2930 	ex	(sp), hl
   9356 79            [ 4] 2931 	ld	a, c
   9357 DD 96 FB      [19] 2932 	sub	a, -5 (ix)
   935A 4F            [ 4] 2933 	ld	c, a
   935B 78            [ 4] 2934 	ld	a, b
   935C DD 9E FC      [19] 2935 	sbc	a, -4 (ix)
   935F 47            [ 4] 2936 	ld	b, a
   9360 D5            [11] 2937 	push	de
   9361 3E 03         [ 7] 2938 	ld	a, #0x03
   9363 F5            [11] 2939 	push	af
   9364 33            [ 6] 2940 	inc	sp
   9365 D5            [11] 2941 	push	de
   9366 33            [ 6] 2942 	inc	sp
   9367 C5            [11] 2943 	push	bc
   9368 CD 7F 8E      [17] 2944 	call	_setPixel
   936B F1            [10] 2945 	pop	af
   936C F1            [10] 2946 	pop	af
   936D D1            [10] 2947 	pop	de
                           2948 ;src/game/world.c:527: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
   936E FD 21 1D 83   [14] 2949 	ld	iy, #_trainList
   9372 FD 7E 00      [19] 2950 	ld	a, 0 (iy)
   9375 DD 86 FD      [19] 2951 	add	a, -3 (ix)
   9378 4F            [ 4] 2952 	ld	c, a
   9379 FD 7E 01      [19] 2953 	ld	a, 1 (iy)
   937C DD 8E FE      [19] 2954 	adc	a, -2 (ix)
   937F 47            [ 4] 2955 	ld	b, a
   9380 C5            [11] 2956 	push	bc
   9381 FD E1         [14] 2957 	pop	iy
   9383 FD 7E 0D      [19] 2958 	ld	a, 13 (iy)
   9386 93            [ 4] 2959 	sub	a, e
   9387 57            [ 4] 2960 	ld	d, a
   9388 69            [ 4] 2961 	ld	l, c
   9389 60            [ 4] 2962 	ld	h, b
   938A 01 0B 00      [10] 2963 	ld	bc, #0x000b
   938D 09            [11] 2964 	add	hl, bc
   938E 4E            [ 7] 2965 	ld	c, (hl)
   938F 23            [ 6] 2966 	inc	hl
   9390 46            [ 7] 2967 	ld	b, (hl)
   9391 79            [ 4] 2968 	ld	a, c
   9392 DD 96 FB      [19] 2969 	sub	a, -5 (ix)
   9395 4F            [ 4] 2970 	ld	c, a
   9396 78            [ 4] 2971 	ld	a, b
   9397 DD 9E FC      [19] 2972 	sbc	a, -4 (ix)
   939A 47            [ 4] 2973 	ld	b, a
   939B 3E 02         [ 7] 2974 	ld	a, #0x02
   939D F5            [11] 2975 	push	af
   939E 33            [ 6] 2976 	inc	sp
   939F D5            [11] 2977 	push	de
   93A0 33            [ 6] 2978 	inc	sp
   93A1 C5            [11] 2979 	push	bc
   93A2 CD 7F 8E      [17] 2980 	call	_setPixel
   93A5 DD F9         [10] 2981 	ld	sp,ix
   93A7 DD E1         [14] 2982 	pop	ix
   93A9 C9            [10] 2983 	ret
                           2984 ;src/game/world.c:530: void drawTrains(u8 x_, u8 y_)
                           2985 ;	---------------------------------
                           2986 ; Function drawTrains
                           2987 ; ---------------------------------
   93AA                    2988 _drawTrains::
   93AA DD E5         [15] 2989 	push	ix
   93AC DD 21 00 00   [14] 2990 	ld	ix,#0
   93B0 DD 39         [15] 2991 	add	ix,sp
   93B2 21 D8 FF      [10] 2992 	ld	hl, #-40
   93B5 39            [11] 2993 	add	hl, sp
   93B6 F9            [ 6] 2994 	ld	sp, hl
                           2995 ;src/game/world.c:539: for(i=0; i<nbTrainList; i++)
   93B7 DD 7E 05      [19] 2996 	ld	a, 5 (ix)
   93BA 07            [ 4] 2997 	rlca
   93BB 07            [ 4] 2998 	rlca
   93BC 07            [ 4] 2999 	rlca
   93BD 07            [ 4] 3000 	rlca
   93BE E6 F0         [ 7] 3001 	and	a, #0xf0
   93C0 DD 77 E7      [19] 3002 	ld	-25 (ix), a
   93C3 DD 36 E6 00   [19] 3003 	ld	-26 (ix), #0x00
   93C7                    3004 00163$:
   93C7 21 22 83      [10] 3005 	ld	hl, #_nbTrainList
   93CA DD 7E E6      [19] 3006 	ld	a, -26 (ix)
   93CD 96            [ 7] 3007 	sub	a, (hl)
   93CE D2 1F 9D      [10] 3008 	jp	NC, 00165$
                           3009 ;src/game/world.c:542: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   93D1 DD 7E E6      [19] 3010 	ld	a, -26 (ix)
   93D4 DD 77 E8      [19] 3011 	ld	-24 (ix), a
   93D7 DD 36 E9 00   [19] 3012 	ld	-23 (ix), #0x00
   93DB 3E 05         [ 7] 3013 	ld	a, #0x04+1
   93DD 18 08         [12] 3014 	jr	00319$
   93DF                    3015 00318$:
   93DF DD CB E8 26   [23] 3016 	sla	-24 (ix)
   93E3 DD CB E9 16   [23] 3017 	rl	-23 (ix)
   93E7                    3018 00319$:
   93E7 3D            [ 4] 3019 	dec	a
   93E8 20 F5         [12] 3020 	jr	NZ,00318$
   93EA FD 21 1D 83   [14] 3021 	ld	iy, #_trainList
   93EE FD 7E 00      [19] 3022 	ld	a, 0 (iy)
   93F1 DD 86 E8      [19] 3023 	add	a, -24 (ix)
   93F4 DD 77 EA      [19] 3024 	ld	-22 (ix), a
   93F7 FD 7E 01      [19] 3025 	ld	a, 1 (iy)
   93FA DD 8E E9      [19] 3026 	adc	a, -23 (ix)
   93FD DD 77 EB      [19] 3027 	ld	-21 (ix), a
   9400 DD 7E EA      [19] 3028 	ld	a, -22 (ix)
   9403 DD 77 EC      [19] 3029 	ld	-20 (ix), a
   9406 DD 7E EB      [19] 3030 	ld	a, -21 (ix)
   9409 DD 77 ED      [19] 3031 	ld	-19 (ix), a
   940C DD 6E EC      [19] 3032 	ld	l,-20 (ix)
   940F DD 66 ED      [19] 3033 	ld	h,-19 (ix)
   9412 11 04 00      [10] 3034 	ld	de, #0x0004
   9415 19            [11] 3035 	add	hl, de
   9416 7E            [ 7] 3036 	ld	a, (hl)
   9417 DD 77 EC      [19] 3037 	ld	-20 (ix), a
   941A DD 77 EC      [19] 3038 	ld	-20 (ix), a
   941D DD 36 ED 00   [19] 3039 	ld	-19 (ix), #0x00
   9421 DD 7E 04      [19] 3040 	ld	a, 4 (ix)
   9424 DD 77 EE      [19] 3041 	ld	-18 (ix), a
   9427 DD 36 EF 00   [19] 3042 	ld	-17 (ix), #0x00
   942B DD 7E EC      [19] 3043 	ld	a, -20 (ix)
   942E DD 96 EE      [19] 3044 	sub	a, -18 (ix)
   9431 DD 77 EC      [19] 3045 	ld	-20 (ix), a
   9434 DD 7E ED      [19] 3046 	ld	a, -19 (ix)
   9437 DD 9E EF      [19] 3047 	sbc	a, -17 (ix)
   943A DD 77 ED      [19] 3048 	ld	-19 (ix), a
   943D DD 7E 05      [19] 3049 	ld	a, 5 (ix)
   9440 DD 77 F0      [19] 3050 	ld	-16 (ix), a
   9443 DD 36 F1 00   [19] 3051 	ld	-15 (ix), #0x00
                           3052 ;src/game/world.c:627: cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);
   9447 DD 7E E4      [19] 3053 	ld	a, -28 (ix)
   944A DD 77 F2      [19] 3054 	ld	-14 (ix), a
   944D DD 7E E5      [19] 3055 	ld	a, -27 (ix)
   9450 DD 77 F3      [19] 3056 	ld	-13 (ix), a
                           3057 ;src/game/world.c:542: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   9453 DD 7E EC      [19] 3058 	ld	a, -20 (ix)
   9456 D6 14         [ 7] 3059 	sub	a, #0x14
   9458 DD 7E ED      [19] 3060 	ld	a, -19 (ix)
   945B 17            [ 4] 3061 	rla
   945C 3F            [ 4] 3062 	ccf
   945D 1F            [ 4] 3063 	rra
   945E DE 80         [ 7] 3064 	sbc	a, #0x80
   9460 D2 30 9B      [10] 3065 	jp	NC, 00156$
   9463 DD 6E EA      [19] 3066 	ld	l,-22 (ix)
   9466 DD 66 EB      [19] 3067 	ld	h,-21 (ix)
   9469 11 05 00      [10] 3068 	ld	de, #0x0005
   946C 19            [11] 3069 	add	hl, de
   946D 4E            [ 7] 3070 	ld	c, (hl)
   946E 06 00         [ 7] 3071 	ld	b, #0x00
   9470 79            [ 4] 3072 	ld	a, c
   9471 DD 96 F0      [19] 3073 	sub	a, -16 (ix)
   9474 4F            [ 4] 3074 	ld	c, a
   9475 78            [ 4] 3075 	ld	a, b
   9476 DD 9E F1      [19] 3076 	sbc	a, -15 (ix)
   9479 47            [ 4] 3077 	ld	b, a
   947A 79            [ 4] 3078 	ld	a, c
   947B D6 0C         [ 7] 3079 	sub	a, #0x0c
   947D 78            [ 4] 3080 	ld	a, b
   947E 17            [ 4] 3081 	rla
   947F 3F            [ 4] 3082 	ccf
   9480 1F            [ 4] 3083 	rra
   9481 DE 80         [ 7] 3084 	sbc	a, #0x80
   9483 D2 30 9B      [10] 3085 	jp	NC, 00156$
   9486 DD CB ED 7E   [20] 3086 	bit	7, -19 (ix)
   948A C2 30 9B      [10] 3087 	jp	NZ, 00156$
   948D CB 78         [ 8] 3088 	bit	7, b
   948F C2 30 9B      [10] 3089 	jp	NZ, 00156$
                           3090 ;src/game/world.c:545: animPixX = trainList[i].animX-x_*TILESIZE_H;
   9492 DD 6E EA      [19] 3091 	ld	l,-22 (ix)
   9495 DD 66 EB      [19] 3092 	ld	h,-21 (ix)
   9498 11 07 00      [10] 3093 	ld	de, #0x0007
   949B 19            [11] 3094 	add	hl, de
   949C 4E            [ 7] 3095 	ld	c, (hl)
   949D 23            [ 6] 3096 	inc	hl
   949E 46            [ 7] 3097 	ld	b, (hl)
   949F DD 7E EE      [19] 3098 	ld	a, -18 (ix)
   94A2 DD 77 EC      [19] 3099 	ld	-20 (ix), a
   94A5 DD 7E EF      [19] 3100 	ld	a, -17 (ix)
   94A8 DD 77 ED      [19] 3101 	ld	-19 (ix), a
   94AB 3E 05         [ 7] 3102 	ld	a, #0x04+1
   94AD 18 08         [12] 3103 	jr	00321$
   94AF                    3104 00320$:
   94AF DD CB EC 26   [23] 3105 	sla	-20 (ix)
   94B3 DD CB ED 16   [23] 3106 	rl	-19 (ix)
   94B7                    3107 00321$:
   94B7 3D            [ 4] 3108 	dec	a
   94B8 20 F5         [12] 3109 	jr	NZ,00320$
   94BA 79            [ 4] 3110 	ld	a, c
   94BB DD 96 EC      [19] 3111 	sub	a, -20 (ix)
   94BE DD 77 F4      [19] 3112 	ld	-12 (ix), a
   94C1 78            [ 4] 3113 	ld	a, b
   94C2 DD 9E ED      [19] 3114 	sbc	a, -19 (ix)
   94C5 DD 77 F5      [19] 3115 	ld	-11 (ix), a
                           3116 ;src/game/world.c:546: animPixY = trainList[i].animY-y_*TILESIZE_H;
   94C8 DD 6E EA      [19] 3117 	ld	l,-22 (ix)
   94CB DD 66 EB      [19] 3118 	ld	h,-21 (ix)
   94CE 11 09 00      [10] 3119 	ld	de, #0x0009
   94D1 19            [11] 3120 	add	hl, de
   94D2 4E            [ 7] 3121 	ld	c, (hl)
   94D3 23            [ 6] 3122 	inc	hl
   94D4 46            [ 7] 3123 	ld	b, (hl)
   94D5 DD 7E F0      [19] 3124 	ld	a, -16 (ix)
   94D8 DD 77 F7      [19] 3125 	ld	-9 (ix), a
   94DB DD 7E F1      [19] 3126 	ld	a, -15 (ix)
   94DE DD 77 F8      [19] 3127 	ld	-8 (ix), a
   94E1 3E 05         [ 7] 3128 	ld	a, #0x04+1
   94E3 18 08         [12] 3129 	jr	00323$
   94E5                    3130 00322$:
   94E5 DD CB F7 26   [23] 3131 	sla	-9 (ix)
   94E9 DD CB F8 16   [23] 3132 	rl	-8 (ix)
   94ED                    3133 00323$:
   94ED 3D            [ 4] 3134 	dec	a
   94EE 20 F5         [12] 3135 	jr	NZ,00322$
   94F0 79            [ 4] 3136 	ld	a, c
   94F1 DD 96 F7      [19] 3137 	sub	a, -9 (ix)
   94F4 DD 77 FD      [19] 3138 	ld	-3 (ix), a
   94F7 78            [ 4] 3139 	ld	a, b
   94F8 DD 9E F8      [19] 3140 	sbc	a, -8 (ix)
   94FB DD 77 FE      [19] 3141 	ld	-2 (ix), a
                           3142 ;src/game/world.c:548: setPixel(animPixX, animPixY, 3);
   94FE DD 7E FD      [19] 3143 	ld	a, -3 (ix)
   9501 DD 77 FF      [19] 3144 	ld	-1 (ix), a
   9504 3E 03         [ 7] 3145 	ld	a, #0x03
   9506 F5            [11] 3146 	push	af
   9507 33            [ 6] 3147 	inc	sp
   9508 DD 7E FF      [19] 3148 	ld	a, -1 (ix)
   950B F5            [11] 3149 	push	af
   950C 33            [ 6] 3150 	inc	sp
   950D DD 6E F4      [19] 3151 	ld	l,-12 (ix)
   9510 DD 66 F5      [19] 3152 	ld	h,-11 (ix)
   9513 E5            [11] 3153 	push	hl
   9514 CD 7F 8E      [17] 3154 	call	_setPixel
   9517 F1            [10] 3155 	pop	af
   9518 F1            [10] 3156 	pop	af
                           3157 ;src/game/world.c:549: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
   9519 FD 2A 1D 83   [20] 3158 	ld	iy, (_trainList)
   951D DD 5E E8      [19] 3159 	ld	e,-24 (ix)
   9520 DD 56 E9      [19] 3160 	ld	d,-23 (ix)
   9523 FD 19         [15] 3161 	add	iy, de
   9525 FD E5         [15] 3162 	push	iy
   9527 E1            [10] 3163 	pop	hl
   9528 11 0D 00      [10] 3164 	ld	de, #0x000d
   952B 19            [11] 3165 	add	hl, de
   952C 4E            [ 7] 3166 	ld	c, (hl)
   952D 23            [ 6] 3167 	inc	hl
   952E 46            [ 7] 3168 	ld	b, (hl)
   952F DD 7E E7      [19] 3169 	ld	a, -25 (ix)
   9532 DD 77 F6      [19] 3170 	ld	-10 (ix), a
   9535 79            [ 4] 3171 	ld	a, c
   9536 DD 96 F6      [19] 3172 	sub	a, -10 (ix)
   9539 57            [ 4] 3173 	ld	d, a
   953A FD E5         [15] 3174 	push	iy
   953C E1            [10] 3175 	pop	hl
   953D 01 0B 00      [10] 3176 	ld	bc, #0x000b
   9540 09            [11] 3177 	add	hl, bc
   9541 4E            [ 7] 3178 	ld	c, (hl)
   9542 23            [ 6] 3179 	inc	hl
   9543 46            [ 7] 3180 	ld	b, (hl)
   9544 79            [ 4] 3181 	ld	a, c
   9545 DD 96 EC      [19] 3182 	sub	a, -20 (ix)
   9548 4F            [ 4] 3183 	ld	c, a
   9549 78            [ 4] 3184 	ld	a, b
   954A DD 9E ED      [19] 3185 	sbc	a, -19 (ix)
   954D 47            [ 4] 3186 	ld	b, a
   954E 3E 02         [ 7] 3187 	ld	a, #0x02
   9550 F5            [11] 3188 	push	af
   9551 33            [ 6] 3189 	inc	sp
   9552 D5            [11] 3190 	push	de
   9553 33            [ 6] 3191 	inc	sp
   9554 C5            [11] 3192 	push	bc
   9555 CD 7F 8E      [17] 3193 	call	_setPixel
   9558 F1            [10] 3194 	pop	af
   9559 F1            [10] 3195 	pop	af
                           3196 ;src/game/world.c:552: oldTrainX = trainList[i].animOldX;
   955A FD 21 1D 83   [14] 3197 	ld	iy, #_trainList
   955E FD 7E 00      [19] 3198 	ld	a, 0 (iy)
   9561 DD 86 E8      [19] 3199 	add	a, -24 (ix)
   9564 5F            [ 4] 3200 	ld	e, a
   9565 FD 7E 01      [19] 3201 	ld	a, 1 (iy)
   9568 DD 8E E9      [19] 3202 	adc	a, -23 (ix)
   956B 57            [ 4] 3203 	ld	d, a
   956C 21 0B 00      [10] 3204 	ld	hl, #0x000b
   956F 19            [11] 3205 	add	hl,de
   9570 4D            [ 4] 3206 	ld	c, l
   9571 44            [ 4] 3207 	ld	b, h
   9572 0A            [ 7] 3208 	ld	a, (bc)
   9573 DD 77 E2      [19] 3209 	ld	-30 (ix), a
   9576 03            [ 6] 3210 	inc	bc
   9577 0A            [ 7] 3211 	ld	a, (bc)
   9578 DD 77 E3      [19] 3212 	ld	-29 (ix), a
   957B 0B            [ 6] 3213 	dec	bc
                           3214 ;src/game/world.c:553: oldTrainY = trainList[i].animOldY;
   957C D5            [11] 3215 	push	de
   957D FD E1         [14] 3216 	pop	iy
   957F FD 7E 0D      [19] 3217 	ld	a, 13 (iy)
   9582 DD 77 E0      [19] 3218 	ld	-32 (ix), a
   9585 FD 7E 0E      [19] 3219 	ld	a, 14 (iy)
   9588 DD 77 E1      [19] 3220 	ld	-31 (ix), a
                           3221 ;src/game/world.c:554: trainList[i].animOldX = trainList[i].animX;
   958B EB            [ 4] 3222 	ex	de,hl
   958C 11 07 00      [10] 3223 	ld	de, #0x0007
   958F 19            [11] 3224 	add	hl, de
   9590 5E            [ 7] 3225 	ld	e, (hl)
   9591 23            [ 6] 3226 	inc	hl
   9592 56            [ 7] 3227 	ld	d, (hl)
   9593 7B            [ 4] 3228 	ld	a, e
   9594 02            [ 7] 3229 	ld	(bc), a
   9595 03            [ 6] 3230 	inc	bc
   9596 7A            [ 4] 3231 	ld	a, d
   9597 02            [ 7] 3232 	ld	(bc), a
                           3233 ;src/game/world.c:555: trainList[i].animOldY = trainList[i].animY;
   9598 FD 21 1D 83   [14] 3234 	ld	iy, #_trainList
   959C FD 7E 00      [19] 3235 	ld	a, 0 (iy)
   959F DD 86 E8      [19] 3236 	add	a, -24 (ix)
   95A2 5F            [ 4] 3237 	ld	e, a
   95A3 FD 7E 01      [19] 3238 	ld	a, 1 (iy)
   95A6 DD 8E E9      [19] 3239 	adc	a, -23 (ix)
   95A9 57            [ 4] 3240 	ld	d, a
   95AA 21 0D 00      [10] 3241 	ld	hl, #0x000d
   95AD 19            [11] 3242 	add	hl,de
   95AE 4D            [ 4] 3243 	ld	c, l
   95AF 44            [ 4] 3244 	ld	b, h
   95B0 EB            [ 4] 3245 	ex	de,hl
   95B1 11 09 00      [10] 3246 	ld	de, #0x0009
   95B4 19            [11] 3247 	add	hl, de
   95B5 5E            [ 7] 3248 	ld	e, (hl)
   95B6 23            [ 6] 3249 	inc	hl
   95B7 56            [ 7] 3250 	ld	d, (hl)
   95B8 7B            [ 4] 3251 	ld	a, e
   95B9 02            [ 7] 3252 	ld	(bc), a
   95BA 03            [ 6] 3253 	inc	bc
   95BB 7A            [ 4] 3254 	ld	a, d
   95BC 02            [ 7] 3255 	ld	(bc), a
                           3256 ;src/game/world.c:558: if( isPixelBlack(animPixX +1, animPixY) )
   95BD DD 7E F4      [19] 3257 	ld	a, -12 (ix)
   95C0 C6 01         [ 7] 3258 	add	a, #0x01
   95C2 DD 77 F9      [19] 3259 	ld	-7 (ix), a
   95C5 DD 7E F5      [19] 3260 	ld	a, -11 (ix)
   95C8 CE 00         [ 7] 3261 	adc	a, #0x00
   95CA DD 77 FA      [19] 3262 	ld	-6 (ix), a
   95CD DD 7E FF      [19] 3263 	ld	a, -1 (ix)
   95D0 F5            [11] 3264 	push	af
   95D1 33            [ 6] 3265 	inc	sp
   95D2 DD 6E F9      [19] 3266 	ld	l,-7 (ix)
   95D5 DD 66 FA      [19] 3267 	ld	h,-6 (ix)
   95D8 E5            [11] 3268 	push	hl
   95D9 CD 58 8F      [17] 3269 	call	_isPixelBlack
   95DC F1            [10] 3270 	pop	af
   95DD 33            [ 6] 3271 	inc	sp
   95DE 7D            [ 4] 3272 	ld	a, l
   95DF B7            [ 4] 3273 	or	a, a
   95E0 28 22         [12] 3274 	jr	Z,00122$
                           3275 ;src/game/world.c:559: trainList[i].animX+=1;
   95E2 FD 21 1D 83   [14] 3276 	ld	iy, #_trainList
   95E6 FD 7E 00      [19] 3277 	ld	a, 0 (iy)
   95E9 DD 86 E8      [19] 3278 	add	a, -24 (ix)
   95EC 4F            [ 4] 3279 	ld	c, a
   95ED FD 7E 01      [19] 3280 	ld	a, 1 (iy)
   95F0 DD 8E E9      [19] 3281 	adc	a, -23 (ix)
   95F3 47            [ 4] 3282 	ld	b, a
   95F4 21 07 00      [10] 3283 	ld	hl, #0x0007
   95F7 09            [11] 3284 	add	hl, bc
   95F8 E5            [11] 3285 	push	hl
   95F9 4E            [ 7] 3286 	ld	c, (hl)
   95FA 23            [ 6] 3287 	inc	hl
   95FB 46            [ 7] 3288 	ld	b, (hl)
   95FC E1            [10] 3289 	pop	hl
   95FD 03            [ 6] 3290 	inc	bc
   95FE 71            [ 7] 3291 	ld	(hl), c
   95FF 23            [ 6] 3292 	inc	hl
   9600 70            [ 7] 3293 	ld	(hl), b
   9601 C3 00 98      [10] 3294 	jp	00123$
   9604                    3295 00122$:
                           3296 ;src/game/world.c:560: else if( isPixelBlack(animPixX -1, animPixY) )
   9604 DD 7E F4      [19] 3297 	ld	a, -12 (ix)
   9607 C6 FF         [ 7] 3298 	add	a, #0xff
   9609 DD 77 FB      [19] 3299 	ld	-5 (ix), a
   960C DD 7E F5      [19] 3300 	ld	a, -11 (ix)
   960F CE FF         [ 7] 3301 	adc	a, #0xff
   9611 DD 77 FC      [19] 3302 	ld	-4 (ix), a
   9614 DD 7E FF      [19] 3303 	ld	a, -1 (ix)
   9617 F5            [11] 3304 	push	af
   9618 33            [ 6] 3305 	inc	sp
   9619 DD 6E FB      [19] 3306 	ld	l,-5 (ix)
   961C DD 66 FC      [19] 3307 	ld	h,-4 (ix)
   961F E5            [11] 3308 	push	hl
   9620 CD 58 8F      [17] 3309 	call	_isPixelBlack
   9623 F1            [10] 3310 	pop	af
   9624 33            [ 6] 3311 	inc	sp
   9625 7D            [ 4] 3312 	ld	a, l
   9626 B7            [ 4] 3313 	or	a, a
   9627 28 22         [12] 3314 	jr	Z,00119$
                           3315 ;src/game/world.c:561: trainList[i].animX-=1;
   9629 FD 21 1D 83   [14] 3316 	ld	iy, #_trainList
   962D FD 7E 00      [19] 3317 	ld	a, 0 (iy)
   9630 DD 86 E8      [19] 3318 	add	a, -24 (ix)
   9633 4F            [ 4] 3319 	ld	c, a
   9634 FD 7E 01      [19] 3320 	ld	a, 1 (iy)
   9637 DD 8E E9      [19] 3321 	adc	a, -23 (ix)
   963A 47            [ 4] 3322 	ld	b, a
   963B 21 07 00      [10] 3323 	ld	hl, #0x0007
   963E 09            [11] 3324 	add	hl, bc
   963F E5            [11] 3325 	push	hl
   9640 4E            [ 7] 3326 	ld	c, (hl)
   9641 23            [ 6] 3327 	inc	hl
   9642 46            [ 7] 3328 	ld	b, (hl)
   9643 E1            [10] 3329 	pop	hl
   9644 0B            [ 6] 3330 	dec	bc
   9645 71            [ 7] 3331 	ld	(hl), c
   9646 23            [ 6] 3332 	inc	hl
   9647 70            [ 7] 3333 	ld	(hl), b
   9648 C3 00 98      [10] 3334 	jp	00123$
   964B                    3335 00119$:
                           3336 ;src/game/world.c:562: else if( isPixelBlack(animPixX, animPixY + 1) )
   964B DD 4E FD      [19] 3337 	ld	c, -3 (ix)
   964E 41            [ 4] 3338 	ld	b, c
   964F 04            [ 4] 3339 	inc	b
   9650 C5            [11] 3340 	push	bc
   9651 C5            [11] 3341 	push	bc
   9652 33            [ 6] 3342 	inc	sp
   9653 DD 6E F4      [19] 3343 	ld	l,-12 (ix)
   9656 DD 66 F5      [19] 3344 	ld	h,-11 (ix)
   9659 E5            [11] 3345 	push	hl
   965A CD 58 8F      [17] 3346 	call	_isPixelBlack
   965D F1            [10] 3347 	pop	af
   965E 33            [ 6] 3348 	inc	sp
   965F C1            [10] 3349 	pop	bc
   9660 7D            [ 4] 3350 	ld	a, l
   9661 B7            [ 4] 3351 	or	a, a
   9662 28 22         [12] 3352 	jr	Z,00116$
                           3353 ;src/game/world.c:563: trainList[i].animY+=1;
   9664 FD 21 1D 83   [14] 3354 	ld	iy, #_trainList
   9668 FD 7E 00      [19] 3355 	ld	a, 0 (iy)
   966B DD 86 E8      [19] 3356 	add	a, -24 (ix)
   966E 4F            [ 4] 3357 	ld	c, a
   966F FD 7E 01      [19] 3358 	ld	a, 1 (iy)
   9672 DD 8E E9      [19] 3359 	adc	a, -23 (ix)
   9675 47            [ 4] 3360 	ld	b, a
   9676 21 09 00      [10] 3361 	ld	hl, #0x0009
   9679 09            [11] 3362 	add	hl, bc
   967A E5            [11] 3363 	push	hl
   967B 4E            [ 7] 3364 	ld	c, (hl)
   967C 23            [ 6] 3365 	inc	hl
   967D 46            [ 7] 3366 	ld	b, (hl)
   967E E1            [10] 3367 	pop	hl
   967F 03            [ 6] 3368 	inc	bc
   9680 71            [ 7] 3369 	ld	(hl), c
   9681 23            [ 6] 3370 	inc	hl
   9682 70            [ 7] 3371 	ld	(hl), b
   9683 C3 00 98      [10] 3372 	jp	00123$
   9686                    3373 00116$:
                           3374 ;src/game/world.c:564: else if( isPixelBlack(animPixX, animPixY - 1) )
   9686 0D            [ 4] 3375 	dec	c
   9687 C5            [11] 3376 	push	bc
   9688 79            [ 4] 3377 	ld	a, c
   9689 F5            [11] 3378 	push	af
   968A 33            [ 6] 3379 	inc	sp
   968B DD 6E F4      [19] 3380 	ld	l,-12 (ix)
   968E DD 66 F5      [19] 3381 	ld	h,-11 (ix)
   9691 E5            [11] 3382 	push	hl
   9692 CD 58 8F      [17] 3383 	call	_isPixelBlack
   9695 F1            [10] 3384 	pop	af
   9696 33            [ 6] 3385 	inc	sp
   9697 C1            [10] 3386 	pop	bc
   9698 7D            [ 4] 3387 	ld	a, l
   9699 B7            [ 4] 3388 	or	a, a
   969A 28 22         [12] 3389 	jr	Z,00113$
                           3390 ;src/game/world.c:565: trainList[i].animY-=1;
   969C FD 21 1D 83   [14] 3391 	ld	iy, #_trainList
   96A0 FD 7E 00      [19] 3392 	ld	a, 0 (iy)
   96A3 DD 86 E8      [19] 3393 	add	a, -24 (ix)
   96A6 4F            [ 4] 3394 	ld	c, a
   96A7 FD 7E 01      [19] 3395 	ld	a, 1 (iy)
   96AA DD 8E E9      [19] 3396 	adc	a, -23 (ix)
   96AD 47            [ 4] 3397 	ld	b, a
   96AE 21 09 00      [10] 3398 	ld	hl, #0x0009
   96B1 09            [11] 3399 	add	hl, bc
   96B2 E5            [11] 3400 	push	hl
   96B3 4E            [ 7] 3401 	ld	c, (hl)
   96B4 23            [ 6] 3402 	inc	hl
   96B5 46            [ 7] 3403 	ld	b, (hl)
   96B6 E1            [10] 3404 	pop	hl
   96B7 0B            [ 6] 3405 	dec	bc
   96B8 71            [ 7] 3406 	ld	(hl), c
   96B9 23            [ 6] 3407 	inc	hl
   96BA 70            [ 7] 3408 	ld	(hl), b
   96BB C3 00 98      [10] 3409 	jp	00123$
   96BE                    3410 00113$:
                           3411 ;src/game/world.c:566: else if( isPixelBlack(animPixX+1,animPixY+ 1) )
   96BE C5            [11] 3412 	push	bc
   96BF C5            [11] 3413 	push	bc
   96C0 33            [ 6] 3414 	inc	sp
   96C1 DD 6E F9      [19] 3415 	ld	l,-7 (ix)
   96C4 DD 66 FA      [19] 3416 	ld	h,-6 (ix)
   96C7 E5            [11] 3417 	push	hl
   96C8 CD 58 8F      [17] 3418 	call	_isPixelBlack
   96CB F1            [10] 3419 	pop	af
   96CC 33            [ 6] 3420 	inc	sp
   96CD C1            [10] 3421 	pop	bc
   96CE 7D            [ 4] 3422 	ld	a, l
   96CF B7            [ 4] 3423 	or	a, a
   96D0 28 3D         [12] 3424 	jr	Z,00110$
                           3425 ;src/game/world.c:568: trainList[i].animX+=1;
   96D2 FD 21 1D 83   [14] 3426 	ld	iy, #_trainList
   96D6 FD 7E 00      [19] 3427 	ld	a, 0 (iy)
   96D9 DD 86 E8      [19] 3428 	add	a, -24 (ix)
   96DC 4F            [ 4] 3429 	ld	c, a
   96DD FD 7E 01      [19] 3430 	ld	a, 1 (iy)
   96E0 DD 8E E9      [19] 3431 	adc	a, -23 (ix)
   96E3 47            [ 4] 3432 	ld	b, a
   96E4 21 07 00      [10] 3433 	ld	hl, #0x0007
   96E7 09            [11] 3434 	add	hl, bc
   96E8 E5            [11] 3435 	push	hl
   96E9 4E            [ 7] 3436 	ld	c, (hl)
   96EA 23            [ 6] 3437 	inc	hl
   96EB 46            [ 7] 3438 	ld	b, (hl)
   96EC E1            [10] 3439 	pop	hl
   96ED 03            [ 6] 3440 	inc	bc
   96EE 71            [ 7] 3441 	ld	(hl), c
   96EF 23            [ 6] 3442 	inc	hl
   96F0 70            [ 7] 3443 	ld	(hl), b
                           3444 ;src/game/world.c:569: trainList[i].animY+=1;
   96F1 FD 7E 00      [19] 3445 	ld	a, 0 (iy)
   96F4 DD 86 E8      [19] 3446 	add	a, -24 (ix)
   96F7 4F            [ 4] 3447 	ld	c, a
   96F8 FD 7E 01      [19] 3448 	ld	a, 1 (iy)
   96FB DD 8E E9      [19] 3449 	adc	a, -23 (ix)
   96FE 47            [ 4] 3450 	ld	b, a
   96FF 21 09 00      [10] 3451 	ld	hl, #0x0009
   9702 09            [11] 3452 	add	hl, bc
   9703 E5            [11] 3453 	push	hl
   9704 4E            [ 7] 3454 	ld	c, (hl)
   9705 23            [ 6] 3455 	inc	hl
   9706 46            [ 7] 3456 	ld	b, (hl)
   9707 E1            [10] 3457 	pop	hl
   9708 03            [ 6] 3458 	inc	bc
   9709 71            [ 7] 3459 	ld	(hl), c
   970A 23            [ 6] 3460 	inc	hl
   970B 70            [ 7] 3461 	ld	(hl), b
   970C C3 00 98      [10] 3462 	jp	00123$
   970F                    3463 00110$:
                           3464 ;src/game/world.c:571: else if( isPixelBlack(animPixX+1, animPixY - 1) )
   970F C5            [11] 3465 	push	bc
   9710 79            [ 4] 3466 	ld	a, c
   9711 F5            [11] 3467 	push	af
   9712 33            [ 6] 3468 	inc	sp
   9713 DD 6E F9      [19] 3469 	ld	l,-7 (ix)
   9716 DD 66 FA      [19] 3470 	ld	h,-6 (ix)
   9719 E5            [11] 3471 	push	hl
   971A CD 58 8F      [17] 3472 	call	_isPixelBlack
   971D F1            [10] 3473 	pop	af
   971E 33            [ 6] 3474 	inc	sp
   971F C1            [10] 3475 	pop	bc
   9720 7D            [ 4] 3476 	ld	a, l
   9721 B7            [ 4] 3477 	or	a, a
   9722 28 3D         [12] 3478 	jr	Z,00107$
                           3479 ;src/game/world.c:573: trainList[i].animX+=1;
   9724 FD 21 1D 83   [14] 3480 	ld	iy, #_trainList
   9728 FD 7E 00      [19] 3481 	ld	a, 0 (iy)
   972B DD 86 E8      [19] 3482 	add	a, -24 (ix)
   972E 4F            [ 4] 3483 	ld	c, a
   972F FD 7E 01      [19] 3484 	ld	a, 1 (iy)
   9732 DD 8E E9      [19] 3485 	adc	a, -23 (ix)
   9735 47            [ 4] 3486 	ld	b, a
   9736 21 07 00      [10] 3487 	ld	hl, #0x0007
   9739 09            [11] 3488 	add	hl, bc
   973A E5            [11] 3489 	push	hl
   973B 4E            [ 7] 3490 	ld	c, (hl)
   973C 23            [ 6] 3491 	inc	hl
   973D 46            [ 7] 3492 	ld	b, (hl)
   973E E1            [10] 3493 	pop	hl
   973F 03            [ 6] 3494 	inc	bc
   9740 71            [ 7] 3495 	ld	(hl), c
   9741 23            [ 6] 3496 	inc	hl
   9742 70            [ 7] 3497 	ld	(hl), b
                           3498 ;src/game/world.c:574: trainList[i].animY-=1;
   9743 FD 7E 00      [19] 3499 	ld	a, 0 (iy)
   9746 DD 86 E8      [19] 3500 	add	a, -24 (ix)
   9749 4F            [ 4] 3501 	ld	c, a
   974A FD 7E 01      [19] 3502 	ld	a, 1 (iy)
   974D DD 8E E9      [19] 3503 	adc	a, -23 (ix)
   9750 47            [ 4] 3504 	ld	b, a
   9751 21 09 00      [10] 3505 	ld	hl, #0x0009
   9754 09            [11] 3506 	add	hl, bc
   9755 E5            [11] 3507 	push	hl
   9756 4E            [ 7] 3508 	ld	c, (hl)
   9757 23            [ 6] 3509 	inc	hl
   9758 46            [ 7] 3510 	ld	b, (hl)
   9759 E1            [10] 3511 	pop	hl
   975A 0B            [ 6] 3512 	dec	bc
   975B 71            [ 7] 3513 	ld	(hl), c
   975C 23            [ 6] 3514 	inc	hl
   975D 70            [ 7] 3515 	ld	(hl), b
   975E C3 00 98      [10] 3516 	jp	00123$
   9761                    3517 00107$:
                           3518 ;src/game/world.c:576: else if( isPixelBlack(animPixX-1, animPixY+ 1) )
   9761 C5            [11] 3519 	push	bc
   9762 C5            [11] 3520 	push	bc
   9763 33            [ 6] 3521 	inc	sp
   9764 DD 6E FB      [19] 3522 	ld	l,-5 (ix)
   9767 DD 66 FC      [19] 3523 	ld	h,-4 (ix)
   976A E5            [11] 3524 	push	hl
   976B CD 58 8F      [17] 3525 	call	_isPixelBlack
   976E F1            [10] 3526 	pop	af
   976F 33            [ 6] 3527 	inc	sp
   9770 C1            [10] 3528 	pop	bc
   9771 7D            [ 4] 3529 	ld	a, l
   9772 B7            [ 4] 3530 	or	a, a
   9773 28 3C         [12] 3531 	jr	Z,00104$
                           3532 ;src/game/world.c:578: trainList[i].animX-=1;
   9775 FD 21 1D 83   [14] 3533 	ld	iy, #_trainList
   9779 FD 7E 00      [19] 3534 	ld	a, 0 (iy)
   977C DD 86 E8      [19] 3535 	add	a, -24 (ix)
   977F 4F            [ 4] 3536 	ld	c, a
   9780 FD 7E 01      [19] 3537 	ld	a, 1 (iy)
   9783 DD 8E E9      [19] 3538 	adc	a, -23 (ix)
   9786 47            [ 4] 3539 	ld	b, a
   9787 21 07 00      [10] 3540 	ld	hl, #0x0007
   978A 09            [11] 3541 	add	hl, bc
   978B E5            [11] 3542 	push	hl
   978C 4E            [ 7] 3543 	ld	c, (hl)
   978D 23            [ 6] 3544 	inc	hl
   978E 46            [ 7] 3545 	ld	b, (hl)
   978F E1            [10] 3546 	pop	hl
   9790 0B            [ 6] 3547 	dec	bc
   9791 71            [ 7] 3548 	ld	(hl), c
   9792 23            [ 6] 3549 	inc	hl
   9793 70            [ 7] 3550 	ld	(hl), b
                           3551 ;src/game/world.c:579: trainList[i].animY+=1;
   9794 FD 7E 00      [19] 3552 	ld	a, 0 (iy)
   9797 DD 86 E8      [19] 3553 	add	a, -24 (ix)
   979A 4F            [ 4] 3554 	ld	c, a
   979B FD 7E 01      [19] 3555 	ld	a, 1 (iy)
   979E DD 8E E9      [19] 3556 	adc	a, -23 (ix)
   97A1 47            [ 4] 3557 	ld	b, a
   97A2 21 09 00      [10] 3558 	ld	hl, #0x0009
   97A5 09            [11] 3559 	add	hl, bc
   97A6 E5            [11] 3560 	push	hl
   97A7 4E            [ 7] 3561 	ld	c, (hl)
   97A8 23            [ 6] 3562 	inc	hl
   97A9 46            [ 7] 3563 	ld	b, (hl)
   97AA E1            [10] 3564 	pop	hl
   97AB 03            [ 6] 3565 	inc	bc
   97AC 71            [ 7] 3566 	ld	(hl), c
   97AD 23            [ 6] 3567 	inc	hl
   97AE 70            [ 7] 3568 	ld	(hl), b
   97AF 18 4F         [12] 3569 	jr	00123$
   97B1                    3570 00104$:
                           3571 ;src/game/world.c:581: else if( isPixelBlack(animPixX-1, animPixY- 1) )
   97B1 79            [ 4] 3572 	ld	a, c
   97B2 F5            [11] 3573 	push	af
   97B3 33            [ 6] 3574 	inc	sp
   97B4 DD 6E FB      [19] 3575 	ld	l,-5 (ix)
   97B7 DD 66 FC      [19] 3576 	ld	h,-4 (ix)
   97BA E5            [11] 3577 	push	hl
   97BB CD 58 8F      [17] 3578 	call	_isPixelBlack
   97BE F1            [10] 3579 	pop	af
   97BF 33            [ 6] 3580 	inc	sp
   97C0 7D            [ 4] 3581 	ld	a, l
   97C1 B7            [ 4] 3582 	or	a, a
   97C2 28 3C         [12] 3583 	jr	Z,00123$
                           3584 ;src/game/world.c:583: trainList[i].animX-=1;
   97C4 FD 2A 1D 83   [20] 3585 	ld	iy, (_trainList)
   97C8 DD 5E E8      [19] 3586 	ld	e,-24 (ix)
   97CB DD 56 E9      [19] 3587 	ld	d,-23 (ix)
   97CE FD 19         [15] 3588 	add	iy, de
   97D0 11 07 00      [10] 3589 	ld	de, #0x0007
   97D3 FD 19         [15] 3590 	add	iy, de
   97D5 FD 4E 00      [19] 3591 	ld	c, 0 (iy)
   97D8 FD 46 01      [19] 3592 	ld	b, 1 (iy)
   97DB 0B            [ 6] 3593 	dec	bc
   97DC FD 71 00      [19] 3594 	ld	0 (iy), c
   97DF FD 70 01      [19] 3595 	ld	1 (iy), b
                           3596 ;src/game/world.c:584: trainList[i].animY-=1;
   97E2 FD 2A 1D 83   [20] 3597 	ld	iy, (_trainList)
   97E6 DD 5E E8      [19] 3598 	ld	e,-24 (ix)
   97E9 DD 56 E9      [19] 3599 	ld	d,-23 (ix)
   97EC FD 19         [15] 3600 	add	iy, de
   97EE 11 09 00      [10] 3601 	ld	de, #0x0009
   97F1 FD 19         [15] 3602 	add	iy, de
   97F3 FD 4E 00      [19] 3603 	ld	c, 0 (iy)
   97F6 FD 46 01      [19] 3604 	ld	b, 1 (iy)
   97F9 0B            [ 6] 3605 	dec	bc
   97FA FD 71 00      [19] 3606 	ld	0 (iy), c
   97FD FD 70 01      [19] 3607 	ld	1 (iy), b
   9800                    3608 00123$:
                           3609 ;src/game/world.c:588: actualPosX = (int)(trainList[i].animX/TILESIZE_H); // Update position in tiles coordinates
   9800 FD 21 1D 83   [14] 3610 	ld	iy, #_trainList
   9804 FD 7E 00      [19] 3611 	ld	a, 0 (iy)
   9807 DD 86 E8      [19] 3612 	add	a, -24 (ix)
   980A DD 77 FB      [19] 3613 	ld	-5 (ix), a
   980D FD 7E 01      [19] 3614 	ld	a, 1 (iy)
   9810 DD 8E E9      [19] 3615 	adc	a, -23 (ix)
   9813 DD 77 FC      [19] 3616 	ld	-4 (ix), a
   9816 DD 6E FB      [19] 3617 	ld	l,-5 (ix)
   9819 DD 66 FC      [19] 3618 	ld	h,-4 (ix)
   981C 11 07 00      [10] 3619 	ld	de, #0x0007
   981F 19            [11] 3620 	add	hl, de
   9820 4E            [ 7] 3621 	ld	c, (hl)
   9821 23            [ 6] 3622 	inc	hl
   9822 46            [ 7] 3623 	ld	b, (hl)
   9823 69            [ 4] 3624 	ld	l, c
   9824 60            [ 4] 3625 	ld	h, b
   9825 CB 78         [ 8] 3626 	bit	7, b
   9827 28 04         [12] 3627 	jr	Z,00167$
   9829 21 0F 00      [10] 3628 	ld	hl, #0x000f
   982C 09            [11] 3629 	add	hl, bc
   982D                    3630 00167$:
   982D DD 75 DE      [19] 3631 	ld	-34 (ix), l
   9830 DD 74 DF      [19] 3632 	ld	-33 (ix), h
   9833 DD CB DF 2E   [23] 3633 	sra	-33 (ix)
   9837 DD CB DE 1E   [23] 3634 	rr	-34 (ix)
   983B DD CB DF 2E   [23] 3635 	sra	-33 (ix)
   983F DD CB DE 1E   [23] 3636 	rr	-34 (ix)
   9843 DD CB DF 2E   [23] 3637 	sra	-33 (ix)
   9847 DD CB DE 1E   [23] 3638 	rr	-34 (ix)
   984B DD CB DF 2E   [23] 3639 	sra	-33 (ix)
   984F DD CB DE 1E   [23] 3640 	rr	-34 (ix)
                           3641 ;src/game/world.c:589: actualPosY = (int)(trainList[i].animY/TILESIZE_H); 
   9853 DD 6E FB      [19] 3642 	ld	l,-5 (ix)
   9856 DD 66 FC      [19] 3643 	ld	h,-4 (ix)
   9859 11 09 00      [10] 3644 	ld	de, #0x0009
   985C 19            [11] 3645 	add	hl, de
   985D 4E            [ 7] 3646 	ld	c, (hl)
   985E 23            [ 6] 3647 	inc	hl
   985F 46            [ 7] 3648 	ld	b, (hl)
   9860 69            [ 4] 3649 	ld	l, c
   9861 60            [ 4] 3650 	ld	h, b
   9862 CB 78         [ 8] 3651 	bit	7, b
   9864 28 04         [12] 3652 	jr	Z,00168$
   9866 21 0F 00      [10] 3653 	ld	hl, #0x000f
   9869 09            [11] 3654 	add	hl, bc
   986A                    3655 00168$:
   986A DD 75 DC      [19] 3656 	ld	-36 (ix), l
   986D DD 74 DD      [19] 3657 	ld	-35 (ix), h
   9870 DD CB DD 2E   [23] 3658 	sra	-35 (ix)
   9874 DD CB DC 1E   [23] 3659 	rr	-36 (ix)
   9878 DD CB DD 2E   [23] 3660 	sra	-35 (ix)
   987C DD CB DC 1E   [23] 3661 	rr	-36 (ix)
   9880 DD CB DD 2E   [23] 3662 	sra	-35 (ix)
   9884 DD CB DC 1E   [23] 3663 	rr	-36 (ix)
   9888 DD CB DD 2E   [23] 3664 	sra	-35 (ix)
   988C DD CB DC 1E   [23] 3665 	rr	-36 (ix)
                           3666 ;src/game/world.c:590: if( actualPosX != trainList[i].posX || actualPosY != trainList[i].posY )
   9890 DD 7E FB      [19] 3667 	ld	a, -5 (ix)
   9893 C6 04         [ 7] 3668 	add	a, #0x04
   9895 DD 77 F9      [19] 3669 	ld	-7 (ix), a
   9898 DD 7E FC      [19] 3670 	ld	a, -4 (ix)
   989B CE 00         [ 7] 3671 	adc	a, #0x00
   989D DD 77 FA      [19] 3672 	ld	-6 (ix), a
   98A0 DD 6E F9      [19] 3673 	ld	l,-7 (ix)
   98A3 DD 66 FA      [19] 3674 	ld	h,-6 (ix)
   98A6 4E            [ 7] 3675 	ld	c, (hl)
   98A7 06 00         [ 7] 3676 	ld	b, #0x00
   98A9 DD 7E DE      [19] 3677 	ld	a, -34 (ix)
   98AC 91            [ 4] 3678 	sub	a, c
   98AD 20 1F         [12] 3679 	jr	NZ,00124$
   98AF DD 7E DF      [19] 3680 	ld	a, -33 (ix)
   98B2 90            [ 4] 3681 	sub	a, b
   98B3 20 19         [12] 3682 	jr	NZ,00124$
   98B5 DD 6E FB      [19] 3683 	ld	l,-5 (ix)
   98B8 DD 66 FC      [19] 3684 	ld	h,-4 (ix)
   98BB 11 05 00      [10] 3685 	ld	de, #0x0005
   98BE 19            [11] 3686 	add	hl, de
   98BF 4E            [ 7] 3687 	ld	c, (hl)
   98C0 06 00         [ 7] 3688 	ld	b, #0x00
   98C2 DD 7E DC      [19] 3689 	ld	a, -36 (ix)
   98C5 91            [ 4] 3690 	sub	a, c
   98C6 20 06         [12] 3691 	jr	NZ,00326$
   98C8 DD 7E DD      [19] 3692 	ld	a, -35 (ix)
   98CB 90            [ 4] 3693 	sub	a, b
   98CC 28 2A         [12] 3694 	jr	Z,00125$
   98CE                    3695 00326$:
   98CE                    3696 00124$:
                           3697 ;src/game/world.c:592: trainList[i].posX = actualPosX; // Update position in tiles coordinates
   98CE DD 4E DE      [19] 3698 	ld	c, -34 (ix)
   98D1 DD 6E F9      [19] 3699 	ld	l,-7 (ix)
   98D4 DD 66 FA      [19] 3700 	ld	h,-6 (ix)
   98D7 71            [ 7] 3701 	ld	(hl), c
                           3702 ;src/game/world.c:593: trainList[i].posY = actualPosY; // Update position in tiles coordinates
   98D8 FD 2A 1D 83   [20] 3703 	ld	iy, (_trainList)
   98DC DD 5E E8      [19] 3704 	ld	e,-24 (ix)
   98DF DD 56 E9      [19] 3705 	ld	d,-23 (ix)
   98E2 FD 19         [15] 3706 	add	iy, de
   98E4 11 05 00      [10] 3707 	ld	de, #0x0005
   98E7 FD 19         [15] 3708 	add	iy, de
   98E9 DD 4E DC      [19] 3709 	ld	c, -36 (ix)
   98EC FD 71 00      [19] 3710 	ld	0 (iy), c
                           3711 ;src/game/world.c:595: setTrainHeading(i); // Calculate new heading
   98EF DD 7E E6      [19] 3712 	ld	a, -26 (ix)
   98F2 F5            [11] 3713 	push	af
   98F3 33            [ 6] 3714 	inc	sp
   98F4 CD E3 8D      [17] 3715 	call	_setTrainHeading
   98F7 33            [ 6] 3716 	inc	sp
   98F8                    3717 00125$:
                           3718 ;src/game/world.c:600: animPixX = trainList[i].animX-x_*TILESIZE_H;
   98F8 FD 21 1D 83   [14] 3719 	ld	iy, #_trainList
   98FC FD 7E 00      [19] 3720 	ld	a, 0 (iy)
   98FF DD 86 E8      [19] 3721 	add	a, -24 (ix)
   9902 4F            [ 4] 3722 	ld	c, a
   9903 FD 7E 01      [19] 3723 	ld	a, 1 (iy)
   9906 DD 8E E9      [19] 3724 	adc	a, -23 (ix)
   9909 47            [ 4] 3725 	ld	b, a
   990A 69            [ 4] 3726 	ld	l, c
   990B 60            [ 4] 3727 	ld	h, b
   990C 11 07 00      [10] 3728 	ld	de, #0x0007
   990F 19            [11] 3729 	add	hl, de
   9910 5E            [ 7] 3730 	ld	e, (hl)
   9911 23            [ 6] 3731 	inc	hl
   9912 56            [ 7] 3732 	ld	d, (hl)
   9913 7B            [ 4] 3733 	ld	a, e
   9914 DD 96 EC      [19] 3734 	sub	a, -20 (ix)
   9917 5F            [ 4] 3735 	ld	e, a
   9918 7A            [ 4] 3736 	ld	a, d
   9919 DD 9E ED      [19] 3737 	sbc	a, -19 (ix)
   991C DD 73 DA      [19] 3738 	ld	-38 (ix), e
   991F DD 77 DB      [19] 3739 	ld	-37 (ix), a
                           3740 ;src/game/world.c:601: animPixY = trainList[i].animY-y_*TILESIZE_H;
   9922 69            [ 4] 3741 	ld	l, c
   9923 60            [ 4] 3742 	ld	h, b
   9924 11 09 00      [10] 3743 	ld	de, #0x0009
   9927 19            [11] 3744 	add	hl, de
   9928 7E            [ 7] 3745 	ld	a, (hl)
   9929 DD 77 FB      [19] 3746 	ld	-5 (ix), a
   992C 23            [ 6] 3747 	inc	hl
   992D 7E            [ 7] 3748 	ld	a, (hl)
   992E DD 77 FC      [19] 3749 	ld	-4 (ix), a
   9931 DD 7E FB      [19] 3750 	ld	a, -5 (ix)
   9934 DD 96 F7      [19] 3751 	sub	a, -9 (ix)
   9937 4F            [ 4] 3752 	ld	c, a
   9938 DD 7E FC      [19] 3753 	ld	a, -4 (ix)
   993B DD 9E F8      [19] 3754 	sbc	a, -8 (ix)
   993E 47            [ 4] 3755 	ld	b, a
   993F 33            [ 6] 3756 	inc	sp
   9940 33            [ 6] 3757 	inc	sp
   9941 C5            [11] 3758 	push	bc
                           3759 ;src/game/world.c:548: setPixel(animPixX, animPixY, 3);
   9942 DD 7E D8      [19] 3760 	ld	a, -40 (ix)
   9945 DD 77 FB      [19] 3761 	ld	-5 (ix), a
                           3762 ;src/game/world.c:607: setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
   9948 DD 4E E0      [19] 3763 	ld	c, -32 (ix)
   994B DD 7E E2      [19] 3764 	ld	a, -30 (ix)
   994E DD 96 EC      [19] 3765 	sub	a, -20 (ix)
   9951 DD 77 F9      [19] 3766 	ld	-7 (ix), a
   9954 DD 7E E3      [19] 3767 	ld	a, -29 (ix)
   9957 DD 9E ED      [19] 3768 	sbc	a, -19 (ix)
   995A DD 77 FA      [19] 3769 	ld	-6 (ix), a
   995D 79            [ 4] 3770 	ld	a, c
   995E DD 96 F6      [19] 3771 	sub	a, -10 (ix)
   9961 DD 77 FF      [19] 3772 	ld	-1 (ix), a
                           3773 ;src/game/world.c:603: if(animPixX>0 && animPixY>0 && animPixX<319 && animPixY<192)
   9964 AF            [ 4] 3774 	xor	a, a
   9965 DD BE DA      [19] 3775 	cp	a, -38 (ix)
   9968 DD 9E DB      [19] 3776 	sbc	a, -37 (ix)
   996B E2 70 99      [10] 3777 	jp	PO, 00327$
   996E EE 80         [ 7] 3778 	xor	a, #0x80
   9970                    3779 00327$:
   9970 F2 07 9A      [10] 3780 	jp	P, 00128$
   9973 AF            [ 4] 3781 	xor	a, a
   9974 DD BE D8      [19] 3782 	cp	a, -40 (ix)
   9977 DD 9E D9      [19] 3783 	sbc	a, -39 (ix)
   997A E2 7F 99      [10] 3784 	jp	PO, 00328$
   997D EE 80         [ 7] 3785 	xor	a, #0x80
   997F                    3786 00328$:
   997F F2 07 9A      [10] 3787 	jp	P, 00128$
   9982 DD 7E DA      [19] 3788 	ld	a, -38 (ix)
   9985 D6 3F         [ 7] 3789 	sub	a, #0x3f
   9987 DD 7E DB      [19] 3790 	ld	a, -37 (ix)
   998A 17            [ 4] 3791 	rla
   998B 3F            [ 4] 3792 	ccf
   998C 1F            [ 4] 3793 	rra
   998D DE 81         [ 7] 3794 	sbc	a, #0x81
   998F 30 76         [12] 3795 	jr	NC,00128$
   9991 DD 7E D8      [19] 3796 	ld	a, -40 (ix)
   9994 D6 C0         [ 7] 3797 	sub	a, #0xc0
   9996 DD 7E D9      [19] 3798 	ld	a, -39 (ix)
   9999 17            [ 4] 3799 	rla
   999A 3F            [ 4] 3800 	ccf
   999B 1F            [ 4] 3801 	rra
   999C DE 80         [ 7] 3802 	sbc	a, #0x80
   999E 30 67         [12] 3803 	jr	NC,00128$
                           3804 ;src/game/world.c:605: setPixel(animPixX,animPixY, 3);
   99A0 3E 03         [ 7] 3805 	ld	a, #0x03
   99A2 F5            [11] 3806 	push	af
   99A3 33            [ 6] 3807 	inc	sp
   99A4 DD 7E FB      [19] 3808 	ld	a, -5 (ix)
   99A7 F5            [11] 3809 	push	af
   99A8 33            [ 6] 3810 	inc	sp
   99A9 DD 6E DA      [19] 3811 	ld	l,-38 (ix)
   99AC DD 66 DB      [19] 3812 	ld	h,-37 (ix)
   99AF E5            [11] 3813 	push	hl
   99B0 CD 7F 8E      [17] 3814 	call	_setPixel
   99B3 F1            [10] 3815 	pop	af
   99B4 F1            [10] 3816 	pop	af
                           3817 ;src/game/world.c:606: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
   99B5 FD 2A 1D 83   [20] 3818 	ld	iy, (_trainList)
   99B9 DD 5E E8      [19] 3819 	ld	e,-24 (ix)
   99BC DD 56 E9      [19] 3820 	ld	d,-23 (ix)
   99BF FD 19         [15] 3821 	add	iy, de
   99C1 FD E5         [15] 3822 	push	iy
   99C3 E1            [10] 3823 	pop	hl
   99C4 11 0D 00      [10] 3824 	ld	de, #0x000d
   99C7 19            [11] 3825 	add	hl, de
   99C8 4E            [ 7] 3826 	ld	c, (hl)
   99C9 23            [ 6] 3827 	inc	hl
   99CA 46            [ 7] 3828 	ld	b, (hl)
   99CB 79            [ 4] 3829 	ld	a, c
   99CC DD 96 F6      [19] 3830 	sub	a, -10 (ix)
   99CF 57            [ 4] 3831 	ld	d, a
   99D0 FD E5         [15] 3832 	push	iy
   99D2 E1            [10] 3833 	pop	hl
   99D3 01 0B 00      [10] 3834 	ld	bc, #0x000b
   99D6 09            [11] 3835 	add	hl, bc
   99D7 4E            [ 7] 3836 	ld	c, (hl)
   99D8 23            [ 6] 3837 	inc	hl
   99D9 46            [ 7] 3838 	ld	b, (hl)
   99DA 79            [ 4] 3839 	ld	a, c
   99DB DD 96 EC      [19] 3840 	sub	a, -20 (ix)
   99DE 4F            [ 4] 3841 	ld	c, a
   99DF 78            [ 4] 3842 	ld	a, b
   99E0 DD 9E ED      [19] 3843 	sbc	a, -19 (ix)
   99E3 47            [ 4] 3844 	ld	b, a
   99E4 3E 02         [ 7] 3845 	ld	a, #0x02
   99E6 F5            [11] 3846 	push	af
   99E7 33            [ 6] 3847 	inc	sp
   99E8 D5            [11] 3848 	push	de
   99E9 33            [ 6] 3849 	inc	sp
   99EA C5            [11] 3850 	push	bc
   99EB CD 7F 8E      [17] 3851 	call	_setPixel
   99EE F1            [10] 3852 	pop	af
   99EF F1            [10] 3853 	pop	af
                           3854 ;src/game/world.c:607: setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
   99F0 AF            [ 4] 3855 	xor	a, a
   99F1 F5            [11] 3856 	push	af
   99F2 33            [ 6] 3857 	inc	sp
   99F3 DD 7E FF      [19] 3858 	ld	a, -1 (ix)
   99F6 F5            [11] 3859 	push	af
   99F7 33            [ 6] 3860 	inc	sp
   99F8 DD 6E F9      [19] 3861 	ld	l,-7 (ix)
   99FB DD 66 FA      [19] 3862 	ld	h,-6 (ix)
   99FE E5            [11] 3863 	push	hl
   99FF CD 7F 8E      [17] 3864 	call	_setPixel
   9A02 F1            [10] 3865 	pop	af
   9A03 F1            [10] 3866 	pop	af
   9A04 C3 E2 9A      [10] 3867 	jp	00129$
   9A07                    3868 00128$:
                           3869 ;src/game/world.c:613: setPixel(animPixX,animPixY, 0);
   9A07 AF            [ 4] 3870 	xor	a, a
   9A08 F5            [11] 3871 	push	af
   9A09 33            [ 6] 3872 	inc	sp
   9A0A DD 7E FB      [19] 3873 	ld	a, -5 (ix)
   9A0D F5            [11] 3874 	push	af
   9A0E 33            [ 6] 3875 	inc	sp
   9A0F DD 6E DA      [19] 3876 	ld	l,-38 (ix)
   9A12 DD 66 DB      [19] 3877 	ld	h,-37 (ix)
   9A15 E5            [11] 3878 	push	hl
   9A16 CD 7F 8E      [17] 3879 	call	_setPixel
   9A19 F1            [10] 3880 	pop	af
   9A1A F1            [10] 3881 	pop	af
                           3882 ;src/game/world.c:614: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 0);
   9A1B FD 2A 1D 83   [20] 3883 	ld	iy, (_trainList)
   9A1F DD 5E E8      [19] 3884 	ld	e,-24 (ix)
   9A22 DD 56 E9      [19] 3885 	ld	d,-23 (ix)
   9A25 FD 19         [15] 3886 	add	iy, de
   9A27 FD E5         [15] 3887 	push	iy
   9A29 E1            [10] 3888 	pop	hl
   9A2A 11 0D 00      [10] 3889 	ld	de, #0x000d
   9A2D 19            [11] 3890 	add	hl, de
   9A2E 4E            [ 7] 3891 	ld	c, (hl)
   9A2F 23            [ 6] 3892 	inc	hl
   9A30 46            [ 7] 3893 	ld	b, (hl)
   9A31 79            [ 4] 3894 	ld	a, c
   9A32 DD 96 F6      [19] 3895 	sub	a, -10 (ix)
   9A35 57            [ 4] 3896 	ld	d, a
   9A36 FD E5         [15] 3897 	push	iy
   9A38 E1            [10] 3898 	pop	hl
   9A39 01 0B 00      [10] 3899 	ld	bc, #0x000b
   9A3C 09            [11] 3900 	add	hl, bc
   9A3D 4E            [ 7] 3901 	ld	c, (hl)
   9A3E 23            [ 6] 3902 	inc	hl
   9A3F 46            [ 7] 3903 	ld	b, (hl)
   9A40 79            [ 4] 3904 	ld	a, c
   9A41 DD 96 EC      [19] 3905 	sub	a, -20 (ix)
   9A44 4F            [ 4] 3906 	ld	c, a
   9A45 78            [ 4] 3907 	ld	a, b
   9A46 DD 9E ED      [19] 3908 	sbc	a, -19 (ix)
   9A49 47            [ 4] 3909 	ld	b, a
   9A4A AF            [ 4] 3910 	xor	a, a
   9A4B F5            [11] 3911 	push	af
   9A4C 33            [ 6] 3912 	inc	sp
   9A4D D5            [11] 3913 	push	de
   9A4E 33            [ 6] 3914 	inc	sp
   9A4F C5            [11] 3915 	push	bc
   9A50 CD 7F 8E      [17] 3916 	call	_setPixel
   9A53 F1            [10] 3917 	pop	af
   9A54 F1            [10] 3918 	pop	af
                           3919 ;src/game/world.c:615: setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
   9A55 AF            [ 4] 3920 	xor	a, a
   9A56 F5            [11] 3921 	push	af
   9A57 33            [ 6] 3922 	inc	sp
   9A58 DD 7E FF      [19] 3923 	ld	a, -1 (ix)
   9A5B F5            [11] 3924 	push	af
   9A5C 33            [ 6] 3925 	inc	sp
   9A5D DD 6E F9      [19] 3926 	ld	l,-7 (ix)
   9A60 DD 66 FA      [19] 3927 	ld	h,-6 (ix)
   9A63 E5            [11] 3928 	push	hl
   9A64 CD 7F 8E      [17] 3929 	call	_setPixel
   9A67 F1            [10] 3930 	pop	af
   9A68 F1            [10] 3931 	pop	af
                           3932 ;src/game/world.c:617: trainList[i].animOldX = 0;
   9A69 FD 2A 1D 83   [20] 3933 	ld	iy, (_trainList)
   9A6D DD 5E E8      [19] 3934 	ld	e,-24 (ix)
   9A70 DD 56 E9      [19] 3935 	ld	d,-23 (ix)
   9A73 FD 19         [15] 3936 	add	iy, de
   9A75 11 0B 00      [10] 3937 	ld	de, #0x000b
   9A78 FD 19         [15] 3938 	add	iy, de
   9A7A FD 36 00 00   [19] 3939 	ld	0 (iy), #0x00
   9A7E FD 36 01 00   [19] 3940 	ld	1 (iy), #0x00
                           3941 ;src/game/world.c:618: trainList[i].animOldY = 0;
   9A82 FD 2A 1D 83   [20] 3942 	ld	iy, (_trainList)
   9A86 DD 5E E8      [19] 3943 	ld	e,-24 (ix)
   9A89 DD 56 E9      [19] 3944 	ld	d,-23 (ix)
   9A8C FD 19         [15] 3945 	add	iy, de
   9A8E 11 0D 00      [10] 3946 	ld	de, #0x000d
   9A91 FD 19         [15] 3947 	add	iy, de
   9A93 FD 36 00 00   [19] 3948 	ld	0 (iy), #0x00
   9A97 FD 36 01 00   [19] 3949 	ld	1 (iy), #0x00
                           3950 ;src/game/world.c:619: trainList[i].animX = 0;
   9A9B FD 2A 1D 83   [20] 3951 	ld	iy, (_trainList)
   9A9F DD 5E E8      [19] 3952 	ld	e,-24 (ix)
   9AA2 DD 56 E9      [19] 3953 	ld	d,-23 (ix)
   9AA5 FD 19         [15] 3954 	add	iy, de
   9AA7 11 07 00      [10] 3955 	ld	de, #0x0007
   9AAA FD 19         [15] 3956 	add	iy, de
   9AAC FD 36 00 00   [19] 3957 	ld	0 (iy), #0x00
   9AB0 FD 36 01 00   [19] 3958 	ld	1 (iy), #0x00
                           3959 ;src/game/world.c:620: trainList[i].animY = 0;
   9AB4 FD 2A 1D 83   [20] 3960 	ld	iy, (_trainList)
   9AB8 DD 5E E8      [19] 3961 	ld	e,-24 (ix)
   9ABB DD 56 E9      [19] 3962 	ld	d,-23 (ix)
   9ABE FD 19         [15] 3963 	add	iy, de
   9AC0 11 09 00      [10] 3964 	ld	de, #0x0009
   9AC3 FD 19         [15] 3965 	add	iy, de
   9AC5 FD 36 00 00   [19] 3966 	ld	0 (iy), #0x00
   9AC9 FD 36 01 00   [19] 3967 	ld	1 (iy), #0x00
                           3968 ;src/game/world.c:622: trainList[i].cycles = 0;
   9ACD FD 2A 1D 83   [20] 3969 	ld	iy, (_trainList)
   9AD1 DD 5E E8      [19] 3970 	ld	e,-24 (ix)
   9AD4 DD 56 E9      [19] 3971 	ld	d,-23 (ix)
   9AD7 FD 19         [15] 3972 	add	iy, de
   9AD9 11 0F 00      [10] 3973 	ld	de, #0x000f
   9ADC FD 19         [15] 3974 	add	iy, de
   9ADE FD 36 00 00   [19] 3975 	ld	0 (iy), #0x00
   9AE2                    3976 00129$:
                           3977 ;src/game/world.c:626: sprintf(buff, "%d %d", trainList[i].posX, trainList[i].posY);
   9AE2 FD 2A 1D 83   [20] 3978 	ld	iy, (_trainList)
   9AE6 DD 5E E8      [19] 3979 	ld	e,-24 (ix)
   9AE9 DD 56 E9      [19] 3980 	ld	d,-23 (ix)
   9AEC FD 19         [15] 3981 	add	iy, de
   9AEE FD E5         [15] 3982 	push	iy
   9AF0 E1            [10] 3983 	pop	hl
   9AF1 11 05 00      [10] 3984 	ld	de, #0x0005
   9AF4 19            [11] 3985 	add	hl, de
   9AF5 4E            [ 7] 3986 	ld	c, (hl)
   9AF6 06 00         [ 7] 3987 	ld	b, #0x00
   9AF8 FD E5         [15] 3988 	push	iy
   9AFA E1            [10] 3989 	pop	hl
   9AFB 11 04 00      [10] 3990 	ld	de, #0x0004
   9AFE 19            [11] 3991 	add	hl, de
   9AFF 5E            [ 7] 3992 	ld	e, (hl)
   9B00 16 00         [ 7] 3993 	ld	d, #0x00
   9B02 C5            [11] 3994 	push	bc
   9B03 D5            [11] 3995 	push	de
   9B04 21 24 9D      [10] 3996 	ld	hl, #___str_0
   9B07 E5            [11] 3997 	push	hl
   9B08 DD 6E E4      [19] 3998 	ld	l,-28 (ix)
   9B0B DD 66 E5      [19] 3999 	ld	h,-27 (ix)
   9B0E E5            [11] 4000 	push	hl
   9B0F CD F3 64      [17] 4001 	call	_sprintf
   9B12 21 08 00      [10] 4002 	ld	hl, #8
   9B15 39            [11] 4003 	add	hl, sp
   9B16 F9            [ 6] 4004 	ld	sp, hl
                           4005 ;src/game/world.c:627: cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);
   9B17 21 00 01      [10] 4006 	ld	hl, #0x0100
   9B1A E5            [11] 4007 	push	hl
   9B1B 26 C0         [ 7] 4008 	ld	h, #0xc0
   9B1D E5            [11] 4009 	push	hl
   9B1E DD 6E F2      [19] 4010 	ld	l,-14 (ix)
   9B21 DD 66 F3      [19] 4011 	ld	h,-13 (ix)
   9B24 E5            [11] 4012 	push	hl
   9B25 CD 02 61      [17] 4013 	call	_cpct_drawStringM1
   9B28 21 06 00      [10] 4014 	ld	hl, #6
   9B2B 39            [11] 4015 	add	hl, sp
   9B2C F9            [ 6] 4016 	ld	sp, hl
   9B2D C3 19 9D      [10] 4017 	jp	00164$
   9B30                    4018 00156$:
                           4019 ;src/game/world.c:641: trainList[i].cycles=0;
   9B30 DD 7E EA      [19] 4020 	ld	a, -22 (ix)
   9B33 C6 0F         [ 7] 4021 	add	a, #0x0f
   9B35 4F            [ 4] 4022 	ld	c, a
   9B36 DD 7E EB      [19] 4023 	ld	a, -21 (ix)
   9B39 CE 00         [ 7] 4024 	adc	a, #0x00
   9B3B 47            [ 4] 4025 	ld	b, a
   9B3C AF            [ 4] 4026 	xor	a, a
   9B3D 02            [ 7] 4027 	ld	(bc), a
                           4028 ;src/game/world.c:644: switch(trainList[i].heading)
   9B3E FD 21 1D 83   [14] 4029 	ld	iy, #_trainList
   9B42 FD 7E 00      [19] 4030 	ld	a, 0 (iy)
   9B45 DD 86 E8      [19] 4031 	add	a, -24 (ix)
   9B48 4F            [ 4] 4032 	ld	c, a
   9B49 FD 7E 01      [19] 4033 	ld	a, 1 (iy)
   9B4C DD 8E E9      [19] 4034 	adc	a, -23 (ix)
   9B4F 47            [ 4] 4035 	ld	b, a
   9B50 C5            [11] 4036 	push	bc
   9B51 FD E1         [14] 4037 	pop	iy
   9B53 FD 5E 06      [19] 4038 	ld	e, 6 (iy)
                           4039 ;src/game/world.c:647: if(trainList[i].posX < WIDTH && p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS )
   9B56 21 04 00      [10] 4040 	ld	hl, #0x0004
   9B59 09            [11] 4041 	add	hl,bc
   9B5A DD 75 FB      [19] 4042 	ld	-5 (ix), l
   9B5D DD 74 FC      [19] 4043 	ld	-4 (ix), h
   9B60 21 05 00      [10] 4044 	ld	hl, #0x0005
   9B63 09            [11] 4045 	add	hl,bc
   9B64 DD 75 F9      [19] 4046 	ld	-7 (ix), l
   9B67 DD 74 FA      [19] 4047 	ld	-6 (ix), h
                           4048 ;src/game/world.c:644: switch(trainList[i].heading)
   9B6A 7B            [ 4] 4049 	ld	a, e
   9B6B B7            [ 4] 4050 	or	a, a
   9B6C 28 11         [12] 4051 	jr	Z,00133$
   9B6E 7B            [ 4] 4052 	ld	a, e
   9B6F 3D            [ 4] 4053 	dec	a
   9B70 28 45         [12] 4054 	jr	Z,00137$
   9B72 7B            [ 4] 4055 	ld	a,e
   9B73 FE 02         [ 7] 4056 	cp	a,#0x02
   9B75 28 75         [12] 4057 	jr	Z,00141$
   9B77 D6 03         [ 7] 4058 	sub	a, #0x03
   9B79 CA 22 9C      [10] 4059 	jp	Z,00145$
   9B7C C3 57 9C      [10] 4060 	jp	00149$
                           4061 ;src/game/world.c:646: case 0: // Right
   9B7F                    4062 00133$:
                           4063 ;src/game/world.c:647: if(trainList[i].posX < WIDTH && p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS )
   9B7F DD 6E FB      [19] 4064 	ld	l,-5 (ix)
   9B82 DD 66 FC      [19] 4065 	ld	h,-4 (ix)
   9B85 4E            [ 7] 4066 	ld	c, (hl)
   9B86 79            [ 4] 4067 	ld	a, c
   9B87 D6 50         [ 7] 4068 	sub	a, #0x50
   9B89 D2 57 9C      [10] 4069 	jp	NC, 00149$
   9B8C DD 6E F9      [19] 4070 	ld	l,-7 (ix)
   9B8F DD 66 FA      [19] 4071 	ld	h,-6 (ix)
   9B92 5E            [ 7] 4072 	ld	e, (hl)
   9B93 16 00         [ 7] 4073 	ld	d,#0x00
   9B95 6B            [ 4] 4074 	ld	l, e
   9B96 62            [ 4] 4075 	ld	h, d
   9B97 29            [11] 4076 	add	hl, hl
   9B98 29            [11] 4077 	add	hl, hl
   9B99 19            [11] 4078 	add	hl, de
   9B9A 29            [11] 4079 	add	hl, hl
   9B9B 29            [11] 4080 	add	hl, hl
   9B9C 29            [11] 4081 	add	hl, hl
   9B9D 29            [11] 4082 	add	hl, hl
   9B9E 59            [ 4] 4083 	ld	e, c
   9B9F 16 00         [ 7] 4084 	ld	d, #0x00
   9BA1 19            [11] 4085 	add	hl, de
   9BA2 11 1E 74      [10] 4086 	ld	de,#_p_world+1
   9BA5 19            [11] 4087 	add	hl,de
   9BA6 7E            [ 7] 4088 	ld	a, (hl)
   9BA7 D6 0A         [ 7] 4089 	sub	a, #0x0a
   9BA9 DA 57 9C      [10] 4090 	jp	C, 00149$
                           4091 ;src/game/world.c:648: trainList[i].posX++;
   9BAC 0C            [ 4] 4092 	inc	c
   9BAD DD 6E FB      [19] 4093 	ld	l,-5 (ix)
   9BB0 DD 66 FC      [19] 4094 	ld	h,-4 (ix)
   9BB3 71            [ 7] 4095 	ld	(hl), c
                           4096 ;src/game/world.c:649: break;
   9BB4 C3 57 9C      [10] 4097 	jp	00149$
                           4098 ;src/game/world.c:650: case 1: // Left
   9BB7                    4099 00137$:
                           4100 ;src/game/world.c:651: if(trainList[i].posX >0 && p_world[trainList[i].posY*WIDTH+trainList[i].posX-1] >= SSNS )
   9BB7 DD 6E FB      [19] 4101 	ld	l,-5 (ix)
   9BBA DD 66 FC      [19] 4102 	ld	h,-4 (ix)
   9BBD 4E            [ 7] 4103 	ld	c, (hl)
   9BBE 79            [ 4] 4104 	ld	a, c
   9BBF B7            [ 4] 4105 	or	a, a
   9BC0 CA 57 9C      [10] 4106 	jp	Z, 00149$
   9BC3 DD 6E F9      [19] 4107 	ld	l,-7 (ix)
   9BC6 DD 66 FA      [19] 4108 	ld	h,-6 (ix)
   9BC9 5E            [ 7] 4109 	ld	e, (hl)
   9BCA 16 00         [ 7] 4110 	ld	d,#0x00
   9BCC 6B            [ 4] 4111 	ld	l, e
   9BCD 62            [ 4] 4112 	ld	h, d
   9BCE 29            [11] 4113 	add	hl, hl
   9BCF 29            [11] 4114 	add	hl, hl
   9BD0 19            [11] 4115 	add	hl, de
   9BD1 29            [11] 4116 	add	hl, hl
   9BD2 29            [11] 4117 	add	hl, hl
   9BD3 29            [11] 4118 	add	hl, hl
   9BD4 29            [11] 4119 	add	hl, hl
   9BD5 59            [ 4] 4120 	ld	e, c
   9BD6 16 00         [ 7] 4121 	ld	d, #0x00
   9BD8 19            [11] 4122 	add	hl, de
   9BD9 11 1C 74      [10] 4123 	ld	de,#_p_world-1
   9BDC 19            [11] 4124 	add	hl,de
   9BDD 7E            [ 7] 4125 	ld	a, (hl)
   9BDE D6 0A         [ 7] 4126 	sub	a, #0x0a
   9BE0 38 75         [12] 4127 	jr	C,00149$
                           4128 ;src/game/world.c:652: trainList[i].posX--;
   9BE2 0D            [ 4] 4129 	dec	c
   9BE3 DD 6E FB      [19] 4130 	ld	l,-5 (ix)
   9BE6 DD 66 FC      [19] 4131 	ld	h,-4 (ix)
   9BE9 71            [ 7] 4132 	ld	(hl), c
                           4133 ;src/game/world.c:653: break;
   9BEA 18 6B         [12] 4134 	jr	00149$
                           4135 ;src/game/world.c:654: case 2: // Up
   9BEC                    4136 00141$:
                           4137 ;src/game/world.c:655: if(trainList[i].posY > 0 && p_world[(trainList[i].posY-1)*WIDTH+trainList[i].posX] >= SSNS )
   9BEC DD 6E F9      [19] 4138 	ld	l,-7 (ix)
   9BEF DD 66 FA      [19] 4139 	ld	h,-6 (ix)
   9BF2 4E            [ 7] 4140 	ld	c, (hl)
   9BF3 79            [ 4] 4141 	ld	a, c
   9BF4 B7            [ 4] 4142 	or	a, a
   9BF5 28 60         [12] 4143 	jr	Z,00149$
   9BF7 59            [ 4] 4144 	ld	e, c
   9BF8 16 00         [ 7] 4145 	ld	d, #0x00
   9BFA 1B            [ 6] 4146 	dec	de
   9BFB 6B            [ 4] 4147 	ld	l, e
   9BFC 62            [ 4] 4148 	ld	h, d
   9BFD 29            [11] 4149 	add	hl, hl
   9BFE 29            [11] 4150 	add	hl, hl
   9BFF 19            [11] 4151 	add	hl, de
   9C00 29            [11] 4152 	add	hl, hl
   9C01 29            [11] 4153 	add	hl, hl
   9C02 29            [11] 4154 	add	hl, hl
   9C03 29            [11] 4155 	add	hl, hl
   9C04 EB            [ 4] 4156 	ex	de,hl
   9C05 DD 6E FB      [19] 4157 	ld	l,-5 (ix)
   9C08 DD 66 FC      [19] 4158 	ld	h,-4 (ix)
   9C0B 6E            [ 7] 4159 	ld	l, (hl)
   9C0C 26 00         [ 7] 4160 	ld	h, #0x00
   9C0E 19            [11] 4161 	add	hl, de
   9C0F 11 1D 74      [10] 4162 	ld	de, #_p_world
   9C12 19            [11] 4163 	add	hl, de
   9C13 7E            [ 7] 4164 	ld	a, (hl)
   9C14 D6 0A         [ 7] 4165 	sub	a, #0x0a
   9C16 38 3F         [12] 4166 	jr	C,00149$
                           4167 ;src/game/world.c:656: trainList[i].posY--;
   9C18 0D            [ 4] 4168 	dec	c
   9C19 DD 6E F9      [19] 4169 	ld	l,-7 (ix)
   9C1C DD 66 FA      [19] 4170 	ld	h,-6 (ix)
   9C1F 71            [ 7] 4171 	ld	(hl), c
                           4172 ;src/game/world.c:657: break;
   9C20 18 35         [12] 4173 	jr	00149$
                           4174 ;src/game/world.c:658: case 3: // Down
   9C22                    4175 00145$:
                           4176 ;src/game/world.c:659: if(trainList[i].posY < HEIGHT && p_world[(trainList[i].posY+1)*WIDTH+trainList[i].posX] >= SSNS)
   9C22 DD 6E F9      [19] 4177 	ld	l,-7 (ix)
   9C25 DD 66 FA      [19] 4178 	ld	h,-6 (ix)
   9C28 4E            [ 7] 4179 	ld	c, (hl)
   9C29 79            [ 4] 4180 	ld	a, c
   9C2A D6 30         [ 7] 4181 	sub	a, #0x30
   9C2C 30 29         [12] 4182 	jr	NC,00149$
   9C2E 59            [ 4] 4183 	ld	e, c
   9C2F 16 00         [ 7] 4184 	ld	d, #0x00
   9C31 13            [ 6] 4185 	inc	de
   9C32 6B            [ 4] 4186 	ld	l, e
   9C33 62            [ 4] 4187 	ld	h, d
   9C34 29            [11] 4188 	add	hl, hl
   9C35 29            [11] 4189 	add	hl, hl
   9C36 19            [11] 4190 	add	hl, de
   9C37 29            [11] 4191 	add	hl, hl
   9C38 29            [11] 4192 	add	hl, hl
   9C39 29            [11] 4193 	add	hl, hl
   9C3A 29            [11] 4194 	add	hl, hl
   9C3B EB            [ 4] 4195 	ex	de,hl
   9C3C DD 6E FB      [19] 4196 	ld	l,-5 (ix)
   9C3F DD 66 FC      [19] 4197 	ld	h,-4 (ix)
   9C42 6E            [ 7] 4198 	ld	l, (hl)
   9C43 26 00         [ 7] 4199 	ld	h, #0x00
   9C45 19            [11] 4200 	add	hl, de
   9C46 11 1D 74      [10] 4201 	ld	de, #_p_world
   9C49 19            [11] 4202 	add	hl, de
   9C4A 7E            [ 7] 4203 	ld	a, (hl)
   9C4B D6 0A         [ 7] 4204 	sub	a, #0x0a
   9C4D 38 08         [12] 4205 	jr	C,00149$
                           4206 ;src/game/world.c:660: trainList[i].posY++;
   9C4F 0C            [ 4] 4207 	inc	c
   9C50 DD 6E F9      [19] 4208 	ld	l,-7 (ix)
   9C53 DD 66 FA      [19] 4209 	ld	h,-6 (ix)
   9C56 71            [ 7] 4210 	ld	(hl), c
                           4211 ;src/game/world.c:662: }
   9C57                    4212 00149$:
                           4213 ;src/game/world.c:664: sprintf(buff, "%d %d %d", trainList[i].posX, trainList[i].posY, trainList[i].heading );
   9C57 FD 2A 1D 83   [20] 4214 	ld	iy, (_trainList)
   9C5B DD 5E E8      [19] 4215 	ld	e,-24 (ix)
   9C5E DD 56 E9      [19] 4216 	ld	d,-23 (ix)
   9C61 FD 19         [15] 4217 	add	iy, de
   9C63 FD E5         [15] 4218 	push	iy
   9C65 E1            [10] 4219 	pop	hl
   9C66 11 06 00      [10] 4220 	ld	de, #0x0006
   9C69 19            [11] 4221 	add	hl, de
   9C6A 4E            [ 7] 4222 	ld	c, (hl)
   9C6B 06 00         [ 7] 4223 	ld	b, #0x00
   9C6D FD E5         [15] 4224 	push	iy
   9C6F E1            [10] 4225 	pop	hl
   9C70 11 05 00      [10] 4226 	ld	de, #0x0005
   9C73 19            [11] 4227 	add	hl, de
   9C74 5E            [ 7] 4228 	ld	e, (hl)
   9C75 16 00         [ 7] 4229 	ld	d, #0x00
   9C77 FD E5         [15] 4230 	push	iy
   9C79 E1            [10] 4231 	pop	hl
   9C7A 23            [ 6] 4232 	inc	hl
   9C7B 23            [ 6] 4233 	inc	hl
   9C7C 23            [ 6] 4234 	inc	hl
   9C7D 23            [ 6] 4235 	inc	hl
   9C7E 6E            [ 7] 4236 	ld	l, (hl)
   9C7F 26 00         [ 7] 4237 	ld	h, #0x00
   9C81 C5            [11] 4238 	push	bc
   9C82 D5            [11] 4239 	push	de
   9C83 E5            [11] 4240 	push	hl
   9C84 21 2A 9D      [10] 4241 	ld	hl, #___str_1
   9C87 E5            [11] 4242 	push	hl
   9C88 DD 6E E4      [19] 4243 	ld	l,-28 (ix)
   9C8B DD 66 E5      [19] 4244 	ld	h,-27 (ix)
   9C8E E5            [11] 4245 	push	hl
   9C8F CD F3 64      [17] 4246 	call	_sprintf
   9C92 21 0A 00      [10] 4247 	ld	hl, #10
   9C95 39            [11] 4248 	add	hl, sp
   9C96 F9            [ 6] 4249 	ld	sp, hl
                           4250 ;src/game/world.c:665: cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);
   9C97 21 00 01      [10] 4251 	ld	hl, #0x0100
   9C9A E5            [11] 4252 	push	hl
   9C9B 26 C0         [ 7] 4253 	ld	h, #0xc0
   9C9D E5            [11] 4254 	push	hl
   9C9E DD 6E F2      [19] 4255 	ld	l,-14 (ix)
   9CA1 DD 66 F3      [19] 4256 	ld	h,-13 (ix)
   9CA4 E5            [11] 4257 	push	hl
   9CA5 CD 02 61      [17] 4258 	call	_cpct_drawStringM1
   9CA8 21 06 00      [10] 4259 	ld	hl, #6
   9CAB 39            [11] 4260 	add	hl, sp
   9CAC F9            [ 6] 4261 	ld	sp, hl
                           4262 ;src/game/world.c:668: setTrainHeading(i);
   9CAD DD 7E E6      [19] 4263 	ld	a, -26 (ix)
   9CB0 F5            [11] 4264 	push	af
   9CB1 33            [ 6] 4265 	inc	sp
   9CB2 CD E3 8D      [17] 4266 	call	_setTrainHeading
   9CB5 33            [ 6] 4267 	inc	sp
                           4268 ;src/game/world.c:671: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   9CB6 FD 21 1D 83   [14] 4269 	ld	iy, #_trainList
   9CBA FD 7E 00      [19] 4270 	ld	a, 0 (iy)
   9CBD DD 86 E8      [19] 4271 	add	a, -24 (ix)
   9CC0 4F            [ 4] 4272 	ld	c, a
   9CC1 FD 7E 01      [19] 4273 	ld	a, 1 (iy)
   9CC4 DD 8E E9      [19] 4274 	adc	a, -23 (ix)
   9CC7 47            [ 4] 4275 	ld	b, a
   9CC8 C5            [11] 4276 	push	bc
   9CC9 FD E1         [14] 4277 	pop	iy
   9CCB FD 7E 04      [19] 4278 	ld	a, 4 (iy)
   9CCE 16 00         [ 7] 4279 	ld	d, #0x00
   9CD0 DD 96 EE      [19] 4280 	sub	a, -18 (ix)
   9CD3 5F            [ 4] 4281 	ld	e, a
   9CD4 7A            [ 4] 4282 	ld	a, d
   9CD5 DD 9E EF      [19] 4283 	sbc	a, -17 (ix)
   9CD8 57            [ 4] 4284 	ld	d, a
   9CD9 7B            [ 4] 4285 	ld	a, e
   9CDA D6 14         [ 7] 4286 	sub	a, #0x14
   9CDC 7A            [ 4] 4287 	ld	a, d
   9CDD 17            [ 4] 4288 	rla
   9CDE 3F            [ 4] 4289 	ccf
   9CDF 1F            [ 4] 4290 	rra
   9CE0 DE 80         [ 7] 4291 	sbc	a, #0x80
   9CE2 30 35         [12] 4292 	jr	NC,00164$
   9CE4 C5            [11] 4293 	push	bc
   9CE5 FD E1         [14] 4294 	pop	iy
   9CE7 FD 7E 05      [19] 4295 	ld	a, 5 (iy)
   9CEA 06 00         [ 7] 4296 	ld	b, #0x00
   9CEC DD 96 F0      [19] 4297 	sub	a, -16 (ix)
   9CEF 4F            [ 4] 4298 	ld	c, a
   9CF0 78            [ 4] 4299 	ld	a, b
   9CF1 DD 9E F1      [19] 4300 	sbc	a, -15 (ix)
   9CF4 47            [ 4] 4301 	ld	b, a
   9CF5 79            [ 4] 4302 	ld	a, c
   9CF6 D6 0C         [ 7] 4303 	sub	a, #0x0c
   9CF8 78            [ 4] 4304 	ld	a, b
   9CF9 17            [ 4] 4305 	rla
   9CFA 3F            [ 4] 4306 	ccf
   9CFB 1F            [ 4] 4307 	rra
   9CFC DE 80         [ 7] 4308 	sbc	a, #0x80
   9CFE 30 19         [12] 4309 	jr	NC,00164$
   9D00 CB 7A         [ 8] 4310 	bit	7, d
   9D02 20 15         [12] 4311 	jr	NZ,00164$
   9D04 CB 78         [ 8] 4312 	bit	7, b
   9D06 20 11         [12] 4313 	jr	NZ,00164$
                           4314 ;src/game/world.c:673: drawNewTrain(i, x_, y_);
   9D08 DD 66 05      [19] 4315 	ld	h, 5 (ix)
   9D0B DD 6E 04      [19] 4316 	ld	l, 4 (ix)
   9D0E E5            [11] 4317 	push	hl
   9D0F DD 7E E6      [19] 4318 	ld	a, -26 (ix)
   9D12 F5            [11] 4319 	push	af
   9D13 33            [ 6] 4320 	inc	sp
   9D14 CD EC 8F      [17] 4321 	call	_drawNewTrain
   9D17 F1            [10] 4322 	pop	af
   9D18 33            [ 6] 4323 	inc	sp
   9D19                    4324 00164$:
                           4325 ;src/game/world.c:539: for(i=0; i<nbTrainList; i++)
   9D19 DD 34 E6      [23] 4326 	inc	-26 (ix)
   9D1C C3 C7 93      [10] 4327 	jp	00163$
   9D1F                    4328 00165$:
   9D1F DD F9         [10] 4329 	ld	sp, ix
   9D21 DD E1         [14] 4330 	pop	ix
   9D23 C9            [10] 4331 	ret
   9D24                    4332 ___str_0:
   9D24 25 64 20 25 64     4333 	.ascii "%d %d"
   9D29 00                 4334 	.db 0x00
   9D2A                    4335 ___str_1:
   9D2A 25 64 20 25 64 20  4336 	.ascii "%d %d %d"
        25 64
   9D32 00                 4337 	.db 0x00
                           4338 	.area _CODE
                           4339 	.area _INITIALIZER
                           4340 	.area _CABS (ABS)
