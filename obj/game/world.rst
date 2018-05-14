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
                             29 	.globl _drawTrains
                             30 ;--------------------------------------------------------
                             31 ; special function registers
                             32 ;--------------------------------------------------------
                             33 ;--------------------------------------------------------
                             34 ; ram data
                             35 ;--------------------------------------------------------
                             36 	.area _DATA
                             37 ;--------------------------------------------------------
                             38 ; ram data
                             39 ;--------------------------------------------------------
                             40 	.area _INITIALIZED
                             41 ;--------------------------------------------------------
                             42 ; absolute external ram data
                             43 ;--------------------------------------------------------
                             44 	.area _DABS (ABS)
                             45 ;--------------------------------------------------------
                             46 ; global & static initialisations
                             47 ;--------------------------------------------------------
                             48 	.area _HOME
                             49 	.area _GSINIT
                             50 	.area _GSFINAL
                             51 	.area _GSINIT
                             52 ;--------------------------------------------------------
                             53 ; Home
                             54 ;--------------------------------------------------------
                             55 	.area _HOME
                             56 	.area _HOME
                             57 ;--------------------------------------------------------
                             58 ; code
                             59 ;--------------------------------------------------------
                             60 	.area _CODE
                             61 ;src/game/world.c:3: cpctm_createTransparentMaskTable(g_masktable, 0x0100, M1, 0);
                             62 ;	---------------------------------
                             63 ; Function dummy_cpct_transparentMaskTable0M1_container
                             64 ; ---------------------------------
   4ED4                      65 _dummy_cpct_transparentMaskTable0M1_container::
                             66 	.area _g_masktable_ (ABS) 
   0100                      67 	.org 0x0100 
   0100                      68 	 _g_masktable::
   0100 FF EE DD CC BB AA    69 	.db 0xFF, 0xEE, 0xDD, 0xCC, 0xBB, 0xAA, 0x99, 0x88 
        99 88
   0108 77 66 55 44 33 22    70 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0110 EE EE CC CC AA AA    71 	.db 0xEE, 0xEE, 0xCC, 0xCC, 0xAA, 0xAA, 0x88, 0x88 
        88 88
   0118 66 66 44 44 22 22    72 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   0120 DD CC DD CC 99 88    73 	.db 0xDD, 0xCC, 0xDD, 0xCC, 0x99, 0x88, 0x99, 0x88 
        99 88
   0128 55 44 55 44 11 00    74 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   0130 CC CC CC CC 88 88    75 	.db 0xCC, 0xCC, 0xCC, 0xCC, 0x88, 0x88, 0x88, 0x88 
        88 88
   0138 44 44 44 44 00 00    76 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   0140 BB AA 99 88 BB AA    77 	.db 0xBB, 0xAA, 0x99, 0x88, 0xBB, 0xAA, 0x99, 0x88 
        99 88
   0148 33 22 11 00 33 22    78 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   0150 AA AA 88 88 AA AA    79 	.db 0xAA, 0xAA, 0x88, 0x88, 0xAA, 0xAA, 0x88, 0x88 
        88 88
   0158 22 22 00 00 22 22    80 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   0160 99 88 99 88 99 88    81 	.db 0x99, 0x88, 0x99, 0x88, 0x99, 0x88, 0x99, 0x88 
        99 88
   0168 11 00 11 00 11 00    82 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   0170 88 88 88 88 88 88    83 	.db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 
        88 88
   0178 00 00 00 00 00 00    84 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0180 77 66 55 44 33 22    85 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0188 77 66 55 44 33 22    86 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0190 66 66 44 44 22 22    87 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   0198 66 66 44 44 22 22    88 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   01A0 55 44 55 44 11 00    89 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   01A8 55 44 55 44 11 00    90 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   01B0 44 44 44 44 00 00    91 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B8 44 44 44 44 00 00    92 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C0 33 22 11 00 33 22    93 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   01C8 33 22 11 00 33 22    94 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   01D0 22 22 00 00 22 22    95 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   01D8 22 22 00 00 22 22    96 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   01E0 11 00 11 00 11 00    97 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   01E8 11 00 11 00 11 00    98 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   01F0 00 00 00 00 00 00    99 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F8 00 00 00 00 00 00   100 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
                            101 	.area _CSEG (REL, CON) 
                            102 ;src/game/world.c:5: void drawCursor(u8 x, u8 y)
                            103 ;	---------------------------------
                            104 ; Function drawCursor
                            105 ; ---------------------------------
   83C0                     106 _drawCursor::
   83C0 DD E5         [15]  107 	push	ix
   83C2 DD 21 00 00   [14]  108 	ld	ix,#0
   83C6 DD 39         [15]  109 	add	ix,sp
   83C8 21 F9 FF      [10]  110 	ld	hl, #-7
   83CB 39            [11]  111 	add	hl, sp
   83CC F9            [ 6]  112 	ld	sp, hl
                            113 ;src/game/world.c:8: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   83CD DD 7E 05      [19]  114 	ld	a, 5 (ix)
   83D0 07            [ 4]  115 	rlca
   83D1 07            [ 4]  116 	rlca
   83D2 07            [ 4]  117 	rlca
   83D3 07            [ 4]  118 	rlca
   83D4 E6 F0         [ 7]  119 	and	a, #0xf0
   83D6 DD 77 FF      [19]  120 	ld	-1 (ix), a
   83D9 DD 7E 04      [19]  121 	ld	a, 4 (ix)
   83DC 87            [ 4]  122 	add	a, a
   83DD 87            [ 4]  123 	add	a, a
   83DE 47            [ 4]  124 	ld	b, a
   83DF DD 7E FF      [19]  125 	ld	a, -1 (ix)
   83E2 F5            [11]  126 	push	af
   83E3 33            [ 6]  127 	inc	sp
   83E4 C5            [11]  128 	push	bc
   83E5 33            [ 6]  129 	inc	sp
   83E6 21 00 C0      [10]  130 	ld	hl, #0xc000
   83E9 E5            [11]  131 	push	hl
   83EA CD BF 67      [17]  132 	call	_cpct_getScreenPtr
   83ED 4D            [ 4]  133 	ld	c, l
   83EE 44            [ 4]  134 	ld	b, h
                            135 ;src/game/world.c:11: switch(CURSOR_MODE)
   83EF 3E 11         [ 7]  136 	ld	a, #0x11
   83F1 FD 21 B9 83   [14]  137 	ld	iy, #_CURSOR_MODE
   83F5 FD 96 00      [19]  138 	sub	a, 0 (iy)
   83F8 DA 22 85      [10]  139 	jp	C, 00118$
   83FB FD 5E 00      [19]  140 	ld	e, 0 (iy)
   83FE 16 00         [ 7]  141 	ld	d, #0x00
   8400 21 07 84      [10]  142 	ld	hl, #00126$
   8403 19            [11]  143 	add	hl, de
   8404 19            [11]  144 	add	hl, de
   8405 19            [11]  145 	add	hl, de
   8406 E9            [ 4]  146 	jp	(hl)
   8407                     147 00126$:
   8407 C3 22 85      [10]  148 	jp	00118$
   840A C3 22 85      [10]  149 	jp	00118$
   840D C3 3D 84      [10]  150 	jp	00102$
   8410 C3 4C 84      [10]  151 	jp	00103$
   8413 C3 5B 84      [10]  152 	jp	00104$
   8416 C3 6A 84      [10]  153 	jp	00105$
   8419 C3 79 84      [10]  154 	jp	00106$
   841C C3 88 84      [10]  155 	jp	00107$
   841F C3 97 84      [10]  156 	jp	00108$
   8422 C3 A6 84      [10]  157 	jp	00109$
   8425 C3 B4 84      [10]  158 	jp	00110$
   8428 C3 C2 84      [10]  159 	jp	00111$
   842B C3 D0 84      [10]  160 	jp	00112$
   842E C3 DE 84      [10]  161 	jp	00113$
   8431 C3 EC 84      [10]  162 	jp	00114$
   8434 C3 FA 84      [10]  163 	jp	00115$
   8437 C3 08 85      [10]  164 	jp	00116$
   843A C3 16 85      [10]  165 	jp	00117$
                            166 ;src/game/world.c:16: case T_SSNS:
   843D                     167 00102$:
                            168 ;src/game/world.c:17: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   843D 21 04 10      [10]  169 	ld	hl, #0x1004
   8440 E5            [11]  170 	push	hl
   8441 C5            [11]  171 	push	bc
   8442 21 54 4A      [10]  172 	ld	hl, #_station_small_ns
   8445 E5            [11]  173 	push	hl
   8446 CD DD 61      [17]  174 	call	_cpct_drawSprite
                            175 ;src/game/world.c:18: break;
   8449 C3 22 85      [10]  176 	jp	00118$
                            177 ;src/game/world.c:19: case T_SSEW:
   844C                     178 00103$:
                            179 ;src/game/world.c:20: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   844C 21 04 10      [10]  180 	ld	hl, #0x1004
   844F E5            [11]  181 	push	hl
   8450 C5            [11]  182 	push	bc
   8451 21 94 4A      [10]  183 	ld	hl, #_station_small_ew
   8454 E5            [11]  184 	push	hl
   8455 CD DD 61      [17]  185 	call	_cpct_drawSprite
                            186 ;src/game/world.c:21: break;
   8458 C3 22 85      [10]  187 	jp	00118$
                            188 ;src/game/world.c:22: case T_SMNS:
   845B                     189 00104$:
                            190 ;src/game/world.c:23: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   845B 21 04 10      [10]  191 	ld	hl, #0x1004
   845E E5            [11]  192 	push	hl
   845F C5            [11]  193 	push	bc
   8460 21 D4 4A      [10]  194 	ld	hl, #_station_medium_ns
   8463 E5            [11]  195 	push	hl
   8464 CD DD 61      [17]  196 	call	_cpct_drawSprite
                            197 ;src/game/world.c:24: break;
   8467 C3 22 85      [10]  198 	jp	00118$
                            199 ;src/game/world.c:25: case T_SMEW:
   846A                     200 00105$:
                            201 ;src/game/world.c:26: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   846A 21 04 10      [10]  202 	ld	hl, #0x1004
   846D E5            [11]  203 	push	hl
   846E C5            [11]  204 	push	bc
   846F 21 14 4B      [10]  205 	ld	hl, #_station_medium_ew
   8472 E5            [11]  206 	push	hl
   8473 CD DD 61      [17]  207 	call	_cpct_drawSprite
                            208 ;src/game/world.c:27: break;
   8476 C3 22 85      [10]  209 	jp	00118$
                            210 ;src/game/world.c:28: case T_SLNS:
   8479                     211 00106$:
                            212 ;src/game/world.c:29: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   8479 21 04 10      [10]  213 	ld	hl, #0x1004
   847C E5            [11]  214 	push	hl
   847D C5            [11]  215 	push	bc
   847E 21 54 4B      [10]  216 	ld	hl, #_station_large_ns
   8481 E5            [11]  217 	push	hl
   8482 CD DD 61      [17]  218 	call	_cpct_drawSprite
                            219 ;src/game/world.c:30: break;
   8485 C3 22 85      [10]  220 	jp	00118$
                            221 ;src/game/world.c:31: case T_SLEW:
   8488                     222 00107$:
                            223 ;src/game/world.c:32: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   8488 21 04 10      [10]  224 	ld	hl, #0x1004
   848B E5            [11]  225 	push	hl
   848C C5            [11]  226 	push	bc
   848D 21 94 4B      [10]  227 	ld	hl, #_station_large_ew
   8490 E5            [11]  228 	push	hl
   8491 CD DD 61      [17]  229 	call	_cpct_drawSprite
                            230 ;src/game/world.c:33: break;
   8494 C3 22 85      [10]  231 	jp	00118$
                            232 ;src/game/world.c:34: case T_REW:
   8497                     233 00108$:
                            234 ;src/game/world.c:35: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   8497 21 04 10      [10]  235 	ld	hl, #0x1004
   849A E5            [11]  236 	push	hl
   849B C5            [11]  237 	push	bc
   849C 21 D4 4B      [10]  238 	ld	hl, #_rail_ew
   849F E5            [11]  239 	push	hl
   84A0 CD DD 61      [17]  240 	call	_cpct_drawSprite
                            241 ;src/game/world.c:36: break;
   84A3 C3 22 85      [10]  242 	jp	00118$
                            243 ;src/game/world.c:37: case T_RNS:
   84A6                     244 00109$:
                            245 ;src/game/world.c:38: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   84A6 21 04 10      [10]  246 	ld	hl, #0x1004
   84A9 E5            [11]  247 	push	hl
   84AA C5            [11]  248 	push	bc
   84AB 21 14 4C      [10]  249 	ld	hl, #_rail_ns
   84AE E5            [11]  250 	push	hl
   84AF CD DD 61      [17]  251 	call	_cpct_drawSprite
                            252 ;src/game/world.c:39: break;
   84B2 18 6E         [12]  253 	jr	00118$
                            254 ;src/game/world.c:40: case T_REN:
   84B4                     255 00110$:
                            256 ;src/game/world.c:41: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   84B4 21 04 10      [10]  257 	ld	hl, #0x1004
   84B7 E5            [11]  258 	push	hl
   84B8 C5            [11]  259 	push	bc
   84B9 21 54 4C      [10]  260 	ld	hl, #_rail_en
   84BC E5            [11]  261 	push	hl
   84BD CD DD 61      [17]  262 	call	_cpct_drawSprite
                            263 ;src/game/world.c:42: break;
   84C0 18 60         [12]  264 	jr	00118$
                            265 ;src/game/world.c:43: case T_RES:
   84C2                     266 00111$:
                            267 ;src/game/world.c:44: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   84C2 21 04 10      [10]  268 	ld	hl, #0x1004
   84C5 E5            [11]  269 	push	hl
   84C6 C5            [11]  270 	push	bc
   84C7 21 94 4C      [10]  271 	ld	hl, #_rail_es
   84CA E5            [11]  272 	push	hl
   84CB CD DD 61      [17]  273 	call	_cpct_drawSprite
                            274 ;src/game/world.c:45: break;
   84CE 18 52         [12]  275 	jr	00118$
                            276 ;src/game/world.c:46: case T_RWN:
   84D0                     277 00112$:
                            278 ;src/game/world.c:47: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   84D0 21 04 10      [10]  279 	ld	hl, #0x1004
   84D3 E5            [11]  280 	push	hl
   84D4 C5            [11]  281 	push	bc
   84D5 21 D4 4C      [10]  282 	ld	hl, #_rail_wn
   84D8 E5            [11]  283 	push	hl
   84D9 CD DD 61      [17]  284 	call	_cpct_drawSprite
                            285 ;src/game/world.c:48: break;
   84DC 18 44         [12]  286 	jr	00118$
                            287 ;src/game/world.c:49: case T_RWS:
   84DE                     288 00113$:
                            289 ;src/game/world.c:50: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   84DE 21 04 10      [10]  290 	ld	hl, #0x1004
   84E1 E5            [11]  291 	push	hl
   84E2 C5            [11]  292 	push	bc
   84E3 21 14 4D      [10]  293 	ld	hl, #_rail_ws
   84E6 E5            [11]  294 	push	hl
   84E7 CD DD 61      [17]  295 	call	_cpct_drawSprite
                            296 ;src/game/world.c:51: break;
   84EA 18 36         [12]  297 	jr	00118$
                            298 ;src/game/world.c:52: case T_REWN:
   84EC                     299 00114$:
                            300 ;src/game/world.c:53: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   84EC 21 04 10      [10]  301 	ld	hl, #0x1004
   84EF E5            [11]  302 	push	hl
   84F0 C5            [11]  303 	push	bc
   84F1 21 54 4D      [10]  304 	ld	hl, #_rail_ew_n
   84F4 E5            [11]  305 	push	hl
   84F5 CD DD 61      [17]  306 	call	_cpct_drawSprite
                            307 ;src/game/world.c:54: break;
   84F8 18 28         [12]  308 	jr	00118$
                            309 ;src/game/world.c:55: case T_REWS:
   84FA                     310 00115$:
                            311 ;src/game/world.c:56: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   84FA 21 04 10      [10]  312 	ld	hl, #0x1004
   84FD E5            [11]  313 	push	hl
   84FE C5            [11]  314 	push	bc
   84FF 21 94 4D      [10]  315 	ld	hl, #_rail_ew_s
   8502 E5            [11]  316 	push	hl
   8503 CD DD 61      [17]  317 	call	_cpct_drawSprite
                            318 ;src/game/world.c:57: break;
   8506 18 1A         [12]  319 	jr	00118$
                            320 ;src/game/world.c:58: case T_RNSE:
   8508                     321 00116$:
                            322 ;src/game/world.c:59: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   8508 21 04 10      [10]  323 	ld	hl, #0x1004
   850B E5            [11]  324 	push	hl
   850C C5            [11]  325 	push	bc
   850D 21 14 4E      [10]  326 	ld	hl, #_rail_ns_e
   8510 E5            [11]  327 	push	hl
   8511 CD DD 61      [17]  328 	call	_cpct_drawSprite
                            329 ;src/game/world.c:60: break;
   8514 18 0C         [12]  330 	jr	00118$
                            331 ;src/game/world.c:61: case T_RNSW:
   8516                     332 00117$:
                            333 ;src/game/world.c:62: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   8516 21 04 10      [10]  334 	ld	hl, #0x1004
   8519 E5            [11]  335 	push	hl
   851A C5            [11]  336 	push	bc
   851B 21 D4 4D      [10]  337 	ld	hl, #_rail_ns_w
   851E E5            [11]  338 	push	hl
   851F CD DD 61      [17]  339 	call	_cpct_drawSprite
                            340 ;src/game/world.c:64: }
   8522                     341 00118$:
                            342 ;src/game/world.c:66: setPixel(x*TILESIZE_H, y*TILESIZE_H, 0);
   8522 DD 6E 04      [19]  343 	ld	l, 4 (ix)
   8525 26 00         [ 7]  344 	ld	h, #0x00
   8527 29            [11]  345 	add	hl, hl
   8528 29            [11]  346 	add	hl, hl
   8529 29            [11]  347 	add	hl, hl
   852A 29            [11]  348 	add	hl, hl
   852B EB            [ 4]  349 	ex	de,hl
   852C D5            [11]  350 	push	de
   852D AF            [ 4]  351 	xor	a, a
   852E F5            [11]  352 	push	af
   852F 33            [ 6]  353 	inc	sp
   8530 DD 7E FF      [19]  354 	ld	a, -1 (ix)
   8533 F5            [11]  355 	push	af
   8534 33            [ 6]  356 	inc	sp
   8535 D5            [11]  357 	push	de
   8536 CD 19 8F      [17]  358 	call	_setPixel
   8539 F1            [10]  359 	pop	af
   853A F1            [10]  360 	pop	af
   853B D1            [10]  361 	pop	de
                            362 ;src/game/world.c:67: setPixel(x*TILESIZE_H+1, y*TILESIZE_H, 0);
   853C 21 01 00      [10]  363 	ld	hl, #0x0001
   853F 19            [11]  364 	add	hl,de
   8540 DD 75 FD      [19]  365 	ld	-3 (ix), l
   8543 DD 74 FE      [19]  366 	ld	-2 (ix), h
   8546 D5            [11]  367 	push	de
   8547 AF            [ 4]  368 	xor	a, a
   8548 F5            [11]  369 	push	af
   8549 33            [ 6]  370 	inc	sp
   854A DD 7E FF      [19]  371 	ld	a, -1 (ix)
   854D F5            [11]  372 	push	af
   854E 33            [ 6]  373 	inc	sp
   854F DD 6E FD      [19]  374 	ld	l,-3 (ix)
   8552 DD 66 FE      [19]  375 	ld	h,-2 (ix)
   8555 E5            [11]  376 	push	hl
   8556 CD 19 8F      [17]  377 	call	_setPixel
   8559 F1            [10]  378 	pop	af
   855A F1            [10]  379 	pop	af
   855B D1            [10]  380 	pop	de
                            381 ;src/game/world.c:68: setPixel(x*TILESIZE_H, y*TILESIZE_H+1, 0);
   855C DD 46 FF      [19]  382 	ld	b, -1 (ix)
   855F 04            [ 4]  383 	inc	b
   8560 C5            [11]  384 	push	bc
   8561 D5            [11]  385 	push	de
   8562 AF            [ 4]  386 	xor	a, a
   8563 F5            [11]  387 	push	af
   8564 33            [ 6]  388 	inc	sp
   8565 C5            [11]  389 	push	bc
   8566 33            [ 6]  390 	inc	sp
   8567 D5            [11]  391 	push	de
   8568 CD 19 8F      [17]  392 	call	_setPixel
   856B F1            [10]  393 	pop	af
   856C F1            [10]  394 	pop	af
   856D D1            [10]  395 	pop	de
   856E C1            [10]  396 	pop	bc
                            397 ;src/game/world.c:69: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+1, 0);
   856F C5            [11]  398 	push	bc
   8570 D5            [11]  399 	push	de
   8571 AF            [ 4]  400 	xor	a, a
   8572 F5            [11]  401 	push	af
   8573 33            [ 6]  402 	inc	sp
   8574 C5            [11]  403 	push	bc
   8575 33            [ 6]  404 	inc	sp
   8576 DD 6E FD      [19]  405 	ld	l,-3 (ix)
   8579 DD 66 FE      [19]  406 	ld	h,-2 (ix)
   857C E5            [11]  407 	push	hl
   857D CD 19 8F      [17]  408 	call	_setPixel
   8580 F1            [10]  409 	pop	af
   8581 F1            [10]  410 	pop	af
   8582 D1            [10]  411 	pop	de
   8583 C1            [10]  412 	pop	bc
                            413 ;src/game/world.c:71: setPixel(x*TILESIZE_H+15, y*TILESIZE_H, 0);
   8584 21 0F 00      [10]  414 	ld	hl, #0x000f
   8587 19            [11]  415 	add	hl,de
   8588 E3            [19]  416 	ex	(sp), hl
   8589 C5            [11]  417 	push	bc
   858A D5            [11]  418 	push	de
   858B AF            [ 4]  419 	xor	a, a
   858C F5            [11]  420 	push	af
   858D 33            [ 6]  421 	inc	sp
   858E DD 7E FF      [19]  422 	ld	a, -1 (ix)
   8591 F5            [11]  423 	push	af
   8592 33            [ 6]  424 	inc	sp
   8593 DD 6E F9      [19]  425 	ld	l,-7 (ix)
   8596 DD 66 FA      [19]  426 	ld	h,-6 (ix)
   8599 E5            [11]  427 	push	hl
   859A CD 19 8F      [17]  428 	call	_setPixel
   859D F1            [10]  429 	pop	af
   859E F1            [10]  430 	pop	af
   859F D1            [10]  431 	pop	de
   85A0 C1            [10]  432 	pop	bc
                            433 ;src/game/world.c:72: setPixel(x*TILESIZE_H+14, y*TILESIZE_H, 0);
   85A1 21 0E 00      [10]  434 	ld	hl, #0x000e
   85A4 19            [11]  435 	add	hl,de
   85A5 DD 75 FB      [19]  436 	ld	-5 (ix), l
   85A8 DD 74 FC      [19]  437 	ld	-4 (ix), h
   85AB C5            [11]  438 	push	bc
   85AC D5            [11]  439 	push	de
   85AD AF            [ 4]  440 	xor	a, a
   85AE F5            [11]  441 	push	af
   85AF 33            [ 6]  442 	inc	sp
   85B0 DD 7E FF      [19]  443 	ld	a, -1 (ix)
   85B3 F5            [11]  444 	push	af
   85B4 33            [ 6]  445 	inc	sp
   85B5 DD 6E FB      [19]  446 	ld	l,-5 (ix)
   85B8 DD 66 FC      [19]  447 	ld	h,-4 (ix)
   85BB E5            [11]  448 	push	hl
   85BC CD 19 8F      [17]  449 	call	_setPixel
   85BF F1            [10]  450 	pop	af
   85C0 F1            [10]  451 	pop	af
   85C1 D1            [10]  452 	pop	de
   85C2 C1            [10]  453 	pop	bc
                            454 ;src/game/world.c:73: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+1, 0);
   85C3 C5            [11]  455 	push	bc
   85C4 D5            [11]  456 	push	de
   85C5 AF            [ 4]  457 	xor	a, a
   85C6 F5            [11]  458 	push	af
   85C7 33            [ 6]  459 	inc	sp
   85C8 C5            [11]  460 	push	bc
   85C9 33            [ 6]  461 	inc	sp
   85CA DD 6E F9      [19]  462 	ld	l,-7 (ix)
   85CD DD 66 FA      [19]  463 	ld	h,-6 (ix)
   85D0 E5            [11]  464 	push	hl
   85D1 CD 19 8F      [17]  465 	call	_setPixel
   85D4 F1            [10]  466 	pop	af
   85D5 F1            [10]  467 	pop	af
   85D6 D1            [10]  468 	pop	de
   85D7 C1            [10]  469 	pop	bc
                            470 ;src/game/world.c:74: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+1, 0);
   85D8 D5            [11]  471 	push	de
   85D9 AF            [ 4]  472 	xor	a, a
   85DA F5            [11]  473 	push	af
   85DB 33            [ 6]  474 	inc	sp
   85DC C5            [11]  475 	push	bc
   85DD 33            [ 6]  476 	inc	sp
   85DE DD 6E FB      [19]  477 	ld	l,-5 (ix)
   85E1 DD 66 FC      [19]  478 	ld	h,-4 (ix)
   85E4 E5            [11]  479 	push	hl
   85E5 CD 19 8F      [17]  480 	call	_setPixel
   85E8 F1            [10]  481 	pop	af
   85E9 F1            [10]  482 	pop	af
   85EA D1            [10]  483 	pop	de
                            484 ;src/game/world.c:76: setPixel(x*TILESIZE_H, y*TILESIZE_H+15, 0);
   85EB DD 7E FF      [19]  485 	ld	a, -1 (ix)
   85EE C6 0F         [ 7]  486 	add	a, #0x0f
   85F0 47            [ 4]  487 	ld	b, a
   85F1 C5            [11]  488 	push	bc
   85F2 D5            [11]  489 	push	de
   85F3 AF            [ 4]  490 	xor	a, a
   85F4 F5            [11]  491 	push	af
   85F5 33            [ 6]  492 	inc	sp
   85F6 C5            [11]  493 	push	bc
   85F7 33            [ 6]  494 	inc	sp
   85F8 D5            [11]  495 	push	de
   85F9 CD 19 8F      [17]  496 	call	_setPixel
   85FC F1            [10]  497 	pop	af
   85FD F1            [10]  498 	pop	af
   85FE D1            [10]  499 	pop	de
   85FF C1            [10]  500 	pop	bc
                            501 ;src/game/world.c:77: setPixel(x*TILESIZE_H, y*TILESIZE_H+14, 0);
   8600 DD 7E FF      [19]  502 	ld	a, -1 (ix)
   8603 C6 0E         [ 7]  503 	add	a, #0x0e
   8605 4F            [ 4]  504 	ld	c, a
   8606 C5            [11]  505 	push	bc
   8607 AF            [ 4]  506 	xor	a, a
   8608 47            [ 4]  507 	ld	b, a
   8609 C5            [11]  508 	push	bc
   860A D5            [11]  509 	push	de
   860B CD 19 8F      [17]  510 	call	_setPixel
   860E F1            [10]  511 	pop	af
   860F F1            [10]  512 	pop	af
   8610 C1            [10]  513 	pop	bc
                            514 ;src/game/world.c:78: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+14, 0);
   8611 C5            [11]  515 	push	bc
   8612 AF            [ 4]  516 	xor	a, a
   8613 47            [ 4]  517 	ld	b, a
   8614 C5            [11]  518 	push	bc
   8615 DD 6E FD      [19]  519 	ld	l,-3 (ix)
   8618 DD 66 FE      [19]  520 	ld	h,-2 (ix)
   861B E5            [11]  521 	push	hl
   861C CD 19 8F      [17]  522 	call	_setPixel
   861F F1            [10]  523 	pop	af
   8620 F1            [10]  524 	pop	af
   8621 C1            [10]  525 	pop	bc
                            526 ;src/game/world.c:79: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+15, 0);
   8622 C5            [11]  527 	push	bc
   8623 AF            [ 4]  528 	xor	a, a
   8624 F5            [11]  529 	push	af
   8625 33            [ 6]  530 	inc	sp
   8626 C5            [11]  531 	push	bc
   8627 33            [ 6]  532 	inc	sp
   8628 DD 6E FD      [19]  533 	ld	l,-3 (ix)
   862B DD 66 FE      [19]  534 	ld	h,-2 (ix)
   862E E5            [11]  535 	push	hl
   862F CD 19 8F      [17]  536 	call	_setPixel
   8632 F1            [10]  537 	pop	af
   8633 F1            [10]  538 	pop	af
   8634 C1            [10]  539 	pop	bc
                            540 ;src/game/world.c:81: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+15, 0);
   8635 C5            [11]  541 	push	bc
   8636 AF            [ 4]  542 	xor	a, a
   8637 F5            [11]  543 	push	af
   8638 33            [ 6]  544 	inc	sp
   8639 C5            [11]  545 	push	bc
   863A 33            [ 6]  546 	inc	sp
   863B DD 6E F9      [19]  547 	ld	l,-7 (ix)
   863E DD 66 FA      [19]  548 	ld	h,-6 (ix)
   8641 E5            [11]  549 	push	hl
   8642 CD 19 8F      [17]  550 	call	_setPixel
   8645 F1            [10]  551 	pop	af
   8646 F1            [10]  552 	pop	af
   8647 C1            [10]  553 	pop	bc
                            554 ;src/game/world.c:82: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+15, 0);
   8648 C5            [11]  555 	push	bc
   8649 AF            [ 4]  556 	xor	a, a
   864A F5            [11]  557 	push	af
   864B 33            [ 6]  558 	inc	sp
   864C C5            [11]  559 	push	bc
   864D 33            [ 6]  560 	inc	sp
   864E DD 6E FB      [19]  561 	ld	l,-5 (ix)
   8651 DD 66 FC      [19]  562 	ld	h,-4 (ix)
   8654 E5            [11]  563 	push	hl
   8655 CD 19 8F      [17]  564 	call	_setPixel
   8658 F1            [10]  565 	pop	af
   8659 F1            [10]  566 	pop	af
   865A C1            [10]  567 	pop	bc
                            568 ;src/game/world.c:83: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+14, 0);
   865B C5            [11]  569 	push	bc
   865C AF            [ 4]  570 	xor	a, a
   865D 47            [ 4]  571 	ld	b, a
   865E C5            [11]  572 	push	bc
   865F DD 6E F9      [19]  573 	ld	l,-7 (ix)
   8662 DD 66 FA      [19]  574 	ld	h,-6 (ix)
   8665 E5            [11]  575 	push	hl
   8666 CD 19 8F      [17]  576 	call	_setPixel
   8669 F1            [10]  577 	pop	af
   866A F1            [10]  578 	pop	af
   866B C1            [10]  579 	pop	bc
                            580 ;src/game/world.c:84: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+14, 0);
   866C AF            [ 4]  581 	xor	a, a
   866D 47            [ 4]  582 	ld	b, a
   866E C5            [11]  583 	push	bc
   866F DD 6E FB      [19]  584 	ld	l,-5 (ix)
   8672 DD 66 FC      [19]  585 	ld	h,-4 (ix)
   8675 E5            [11]  586 	push	hl
   8676 CD 19 8F      [17]  587 	call	_setPixel
   8679 DD F9         [10]  588 	ld	sp,ix
   867B DD E1         [14]  589 	pop	ix
   867D C9            [10]  590 	ret
                            591 ;src/game/world.c:87: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            592 ;	---------------------------------
                            593 ; Function patternTile
                            594 ; ---------------------------------
   867E                     595 _patternTile::
   867E DD E5         [15]  596 	push	ix
   8680 DD 21 00 00   [14]  597 	ld	ix,#0
   8684 DD 39         [15]  598 	add	ix,sp
   8686 21 F7 FF      [10]  599 	ld	hl, #-9
   8689 39            [11]  600 	add	hl, sp
   868A F9            [ 6]  601 	ld	sp, hl
                            602 ;src/game/world.c:92: for(iy=0; iy<nBitsY; iy++)
   868B DD 7E 04      [19]  603 	ld	a, 4 (ix)
   868E D6 08         [ 7]  604 	sub	a, #0x08
   8690 20 04         [12]  605 	jr	NZ,00153$
   8692 3E 01         [ 7]  606 	ld	a,#0x01
   8694 18 01         [12]  607 	jr	00154$
   8696                     608 00153$:
   8696 AF            [ 4]  609 	xor	a,a
   8697                     610 00154$:
   8697 DD 77 FE      [19]  611 	ld	-2 (ix), a
   869A DD 7E 04      [19]  612 	ld	a, 4 (ix)
   869D D6 02         [ 7]  613 	sub	a, #0x02
   869F 20 04         [12]  614 	jr	NZ,00155$
   86A1 3E 01         [ 7]  615 	ld	a,#0x01
   86A3 18 01         [12]  616 	jr	00156$
   86A5                     617 00155$:
   86A5 AF            [ 4]  618 	xor	a,a
   86A6                     619 00156$:
   86A6 DD 77 F7      [19]  620 	ld	-9 (ix), a
   86A9 1E 00         [ 7]  621 	ld	e, #0x00
   86AB                     622 00115$:
   86AB 7B            [ 4]  623 	ld	a, e
   86AC DD 96 08      [19]  624 	sub	a, 8 (ix)
   86AF D2 63 87      [10]  625 	jp	NC, 00117$
                            626 ;src/game/world.c:94: for(ix=0; ix<nBitsX; ix++)
   86B2 D5            [11]  627 	push	de
   86B3 16 00         [ 7]  628 	ld	d,#0x00
   86B5 6B            [ 4]  629 	ld	l, e
   86B6 62            [ 4]  630 	ld	h, d
   86B7 29            [11]  631 	add	hl, hl
   86B8 29            [11]  632 	add	hl, hl
   86B9 19            [11]  633 	add	hl, de
   86BA 29            [11]  634 	add	hl, hl
   86BB 29            [11]  635 	add	hl, hl
   86BC 29            [11]  636 	add	hl, hl
   86BD 29            [11]  637 	add	hl, hl
   86BE D1            [10]  638 	pop	de
   86BF 4D            [ 4]  639 	ld	c, l
   86C0 44            [ 4]  640 	ld	b, h
   86C1 DD 7E 05      [19]  641 	ld	a, 5 (ix)
   86C4 81            [ 4]  642 	add	a, c
   86C5 DD 77 FC      [19]  643 	ld	-4 (ix), a
   86C8 DD 7E 06      [19]  644 	ld	a, 6 (ix)
   86CB 88            [ 4]  645 	adc	a, b
   86CC DD 77 FD      [19]  646 	ld	-3 (ix), a
   86CF D5            [11]  647 	push	de
   86D0 DD 66 07      [19]  648 	ld	h, 7 (ix)
   86D3 2E 00         [ 7]  649 	ld	l, #0x00
   86D5 55            [ 4]  650 	ld	d, l
   86D6 06 08         [ 7]  651 	ld	b, #0x08
   86D8                     652 00157$:
   86D8 29            [11]  653 	add	hl, hl
   86D9 30 01         [12]  654 	jr	NC,00158$
   86DB 19            [11]  655 	add	hl, de
   86DC                     656 00158$:
   86DC 10 FA         [13]  657 	djnz	00157$
   86DE D1            [10]  658 	pop	de
   86DF DD 75 F8      [19]  659 	ld	-8 (ix), l
   86E2 DD 74 F9      [19]  660 	ld	-7 (ix), h
   86E5 16 00         [ 7]  661 	ld	d, #0x00
   86E7                     662 00112$:
   86E7 7A            [ 4]  663 	ld	a, d
   86E8 DD 96 07      [19]  664 	sub	a, 7 (ix)
   86EB 30 72         [12]  665 	jr	NC,00116$
                            666 ;src/game/world.c:96: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   86ED DD 72 FA      [19]  667 	ld	-6 (ix), d
   86F0 DD 36 FB 00   [19]  668 	ld	-5 (ix), #0x00
   86F4 DD 7E FA      [19]  669 	ld	a, -6 (ix)
   86F7 DD 86 F8      [19]  670 	add	a, -8 (ix)
   86FA 4F            [ 4]  671 	ld	c, a
   86FB DD 7E FB      [19]  672 	ld	a, -5 (ix)
   86FE DD 8E F9      [19]  673 	adc	a, -7 (ix)
   8701 47            [ 4]  674 	ld	b, a
   8702 DD 6E 09      [19]  675 	ld	l,9 (ix)
   8705 DD 66 0A      [19]  676 	ld	h,10 (ix)
   8708 D5            [11]  677 	push	de
   8709 C5            [11]  678 	push	bc
   870A E5            [11]  679 	push	hl
   870B CD 7B 61      [17]  680 	call	_cpct_getBit
   870E DD 75 FF      [19]  681 	ld	-1 (ix), l
   8711 D1            [10]  682 	pop	de
   8712 DD 7E FF      [19]  683 	ld	a, -1 (ix)
   8715 B7            [ 4]  684 	or	a, a
   8716 28 44         [12]  685 	jr	Z,00113$
   8718 DD 7E FC      [19]  686 	ld	a, -4 (ix)
   871B DD 86 FA      [19]  687 	add	a, -6 (ix)
   871E 4F            [ 4]  688 	ld	c, a
   871F DD 7E FD      [19]  689 	ld	a, -3 (ix)
   8722 DD 8E FB      [19]  690 	adc	a, -5 (ix)
   8725 47            [ 4]  691 	ld	b,a
   8726 EE 80         [ 7]  692 	xor	a, #0x80
   8728 D6 8F         [ 7]  693 	sub	a, #0x8f
   872A 30 30         [12]  694 	jr	NC,00113$
                            695 ;src/game/world.c:98: if(tileType == FOREST)
   872C DD 7E FE      [19]  696 	ld	a, -2 (ix)
   872F B7            [ 4]  697 	or	a, a
   8730 28 0A         [12]  698 	jr	Z,00104$
                            699 ;src/game/world.c:99: p_world[index+iy*WIDTH+ix] = tileType;
   8732 21 B5 74      [10]  700 	ld	hl, #_p_world
   8735 09            [11]  701 	add	hl, bc
   8736 DD 7E 04      [19]  702 	ld	a, 4 (ix)
   8739 77            [ 7]  703 	ld	(hl), a
   873A 18 20         [12]  704 	jr	00113$
   873C                     705 00104$:
                            706 ;src/game/world.c:100: else if(tileType==DWELLINGS1)
   873C DD 7E F7      [19]  707 	ld	a, -9 (ix)
   873F B7            [ 4]  708 	or	a, a
   8740 28 1A         [12]  709 	jr	Z,00113$
                            710 ;src/game/world.c:101: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandom_mxor_u8 ()%3+2;
   8742 21 B5 74      [10]  711 	ld	hl, #_p_world
   8745 09            [11]  712 	add	hl, bc
   8746 E5            [11]  713 	push	hl
   8747 D5            [11]  714 	push	de
   8748 CD C8 66      [17]  715 	call	_cpct_getRandom_mxor_u8
   874B 45            [ 4]  716 	ld	b, l
   874C 3E 03         [ 7]  717 	ld	a, #0x03
   874E F5            [11]  718 	push	af
   874F 33            [ 6]  719 	inc	sp
   8750 C5            [11]  720 	push	bc
   8751 33            [ 6]  721 	inc	sp
   8752 CD 82 62      [17]  722 	call	__moduchar
   8755 F1            [10]  723 	pop	af
   8756 4D            [ 4]  724 	ld	c, l
   8757 D1            [10]  725 	pop	de
   8758 E1            [10]  726 	pop	hl
   8759 0C            [ 4]  727 	inc	c
   875A 0C            [ 4]  728 	inc	c
   875B 71            [ 7]  729 	ld	(hl), c
   875C                     730 00113$:
                            731 ;src/game/world.c:94: for(ix=0; ix<nBitsX; ix++)
   875C 14            [ 4]  732 	inc	d
   875D 18 88         [12]  733 	jr	00112$
   875F                     734 00116$:
                            735 ;src/game/world.c:92: for(iy=0; iy<nBitsY; iy++)
   875F 1C            [ 4]  736 	inc	e
   8760 C3 AB 86      [10]  737 	jp	00115$
   8763                     738 00117$:
   8763 DD F9         [10]  739 	ld	sp, ix
   8765 DD E1         [14]  740 	pop	ix
   8767 C9            [10]  741 	ret
                            742 ;src/game/world.c:108: void generateWorld()
                            743 ;	---------------------------------
                            744 ; Function generateWorld
                            745 ; ---------------------------------
   8768                     746 _generateWorld::
   8768 DD E5         [15]  747 	push	ix
   876A DD 21 00 00   [14]  748 	ld	ix,#0
   876E DD 39         [15]  749 	add	ix,sp
   8770 21 E4 FF      [10]  750 	ld	hl, #-28
   8773 39            [11]  751 	add	hl, sp
   8774 F9            [ 6]  752 	ld	sp, hl
                            753 ;src/game/world.c:115: CURSOR_MODE = NONE;
   8775 21 B9 83      [10]  754 	ld	hl,#_CURSOR_MODE + 0
   8778 36 00         [10]  755 	ld	(hl), #0x00
                            756 ;src/game/world.c:118: cpct_setSeed_mxor ((u32)cpct_count2VSYNC());
   877A CD 8B 63      [17]  757 	call	_cpct_count2VSYNC
   877D 11 00 00      [10]  758 	ld	de,#0x0000
   8780 CD DA 64      [17]  759 	call	_cpct_setSeed_mxor
                            760 ;src/game/world.c:122: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   8783 01 00 00      [10]  761 	ld	bc, #0x0000
   8786                     762 00119$:
                            763 ;src/game/world.c:124: p_world[iy] =  cpct_getRandom_mxor_u16()%2;
   8786 21 B5 74      [10]  764 	ld	hl, #_p_world
   8789 09            [11]  765 	add	hl, bc
   878A E5            [11]  766 	push	hl
   878B C5            [11]  767 	push	bc
   878C CD C0 65      [17]  768 	call	_cpct_getRandom_mxor_u16
   878F 5D            [ 4]  769 	ld	e, l
   8790 C1            [10]  770 	pop	bc
   8791 E1            [10]  771 	pop	hl
   8792 7B            [ 4]  772 	ld	a, e
   8793 E6 01         [ 7]  773 	and	a, #0x01
   8795 77            [ 7]  774 	ld	(hl), a
                            775 ;src/game/world.c:122: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   8796 03            [ 6]  776 	inc	bc
   8797 78            [ 4]  777 	ld	a, b
   8798 EE 80         [ 7]  778 	xor	a, #0x80
   879A D6 8F         [ 7]  779 	sub	a, #0x8f
   879C 38 E8         [12]  780 	jr	C,00119$
                            781 ;src/game/world.c:129: for(ix=0; ix<NBFOREST; ix++)
   879E 21 00 00      [10]  782 	ld	hl, #0x0000
   87A1 39            [11]  783 	add	hl, sp
   87A2 DD 75 F8      [19]  784 	ld	-8 (ix), l
   87A5 DD 74 F9      [19]  785 	ld	-7 (ix), h
   87A8 01 00 00      [10]  786 	ld	bc, #0x0000
   87AB                     787 00121$:
                            788 ;src/game/world.c:131: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   87AB C5            [11]  789 	push	bc
   87AC CD C0 65      [17]  790 	call	_cpct_getRandom_mxor_u16
   87AF 11 00 0F      [10]  791 	ld	de, #0x0f00
   87B2 D5            [11]  792 	push	de
   87B3 E5            [11]  793 	push	hl
   87B4 CD 8E 62      [17]  794 	call	__moduint
   87B7 F1            [10]  795 	pop	af
   87B8 E3            [19]  796 	ex	(sp),hl
   87B9 CD C0 65      [17]  797 	call	_cpct_getRandom_mxor_u16
   87BC D1            [10]  798 	pop	de
   87BD C1            [10]  799 	pop	bc
   87BE 7D            [ 4]  800 	ld	a, l
   87BF E6 03         [ 7]  801 	and	a, #0x03
   87C1 6F            [ 4]  802 	ld	l, a
   87C2 26 00         [ 7]  803 	ld	h, #0x00
                            804 ;src/game/world.c:137: p_forest[1] = 0b11000111;
   87C4 DD 7E F8      [19]  805 	ld	a, -8 (ix)
   87C7 C6 01         [ 7]  806 	add	a, #0x01
   87C9 DD 77 FE      [19]  807 	ld	-2 (ix), a
   87CC DD 7E F9      [19]  808 	ld	a, -7 (ix)
   87CF CE 00         [ 7]  809 	adc	a, #0x00
   87D1 DD 77 FF      [19]  810 	ld	-1 (ix), a
                            811 ;src/game/world.c:138: p_forest[2] = 0b11011110;
   87D4 DD 7E F8      [19]  812 	ld	a, -8 (ix)
   87D7 C6 02         [ 7]  813 	add	a, #0x02
   87D9 DD 77 F6      [19]  814 	ld	-10 (ix), a
   87DC DD 7E F9      [19]  815 	ld	a, -7 (ix)
   87DF CE 00         [ 7]  816 	adc	a, #0x00
   87E1 DD 77 F7      [19]  817 	ld	-9 (ix), a
                            818 ;src/game/world.c:139: p_forest[3] = 0b01111110;
   87E4 DD 7E F8      [19]  819 	ld	a, -8 (ix)
   87E7 C6 03         [ 7]  820 	add	a, #0x03
   87E9 DD 77 F0      [19]  821 	ld	-16 (ix), a
   87EC DD 7E F9      [19]  822 	ld	a, -7 (ix)
   87EF CE 00         [ 7]  823 	adc	a, #0x00
   87F1 DD 77 F1      [19]  824 	ld	-15 (ix), a
                            825 ;src/game/world.c:140: p_forest[4] = 0b11111110; 
   87F4 DD 7E F8      [19]  826 	ld	a, -8 (ix)
   87F7 C6 04         [ 7]  827 	add	a, #0x04
   87F9 DD 77 F2      [19]  828 	ld	-14 (ix), a
   87FC DD 7E F9      [19]  829 	ld	a, -7 (ix)
   87FF CE 00         [ 7]  830 	adc	a, #0x00
   8801 DD 77 F3      [19]  831 	ld	-13 (ix), a
                            832 ;src/game/world.c:141: p_forest[5] = 0b01111111;
   8804 DD 7E F8      [19]  833 	ld	a, -8 (ix)
   8807 C6 05         [ 7]  834 	add	a, #0x05
   8809 DD 77 FC      [19]  835 	ld	-4 (ix), a
   880C DD 7E F9      [19]  836 	ld	a, -7 (ix)
   880F CE 00         [ 7]  837 	adc	a, #0x00
   8811 DD 77 FD      [19]  838 	ld	-3 (ix), a
                            839 ;src/game/world.c:142: p_forest[6] = 0b11101111;
   8814 DD 7E F8      [19]  840 	ld	a, -8 (ix)
   8817 C6 06         [ 7]  841 	add	a, #0x06
   8819 DD 77 FA      [19]  842 	ld	-6 (ix), a
   881C DD 7E F9      [19]  843 	ld	a, -7 (ix)
   881F CE 00         [ 7]  844 	adc	a, #0x00
   8821 DD 77 FB      [19]  845 	ld	-5 (ix), a
                            846 ;src/game/world.c:143: p_forest[7] = 0b11001111;
   8824 DD 7E F8      [19]  847 	ld	a, -8 (ix)
   8827 C6 07         [ 7]  848 	add	a, #0x07
   8829 DD 77 F4      [19]  849 	ld	-12 (ix), a
   882C DD 7E F9      [19]  850 	ld	a, -7 (ix)
   882F CE 00         [ 7]  851 	adc	a, #0x00
   8831 DD 77 F5      [19]  852 	ld	-11 (ix), a
                            853 ;src/game/world.c:133: switch(cpct_getRandom_mxor_u16()%4)
   8834 7D            [ 4]  854 	ld	a, l
   8835 B7            [ 4]  855 	or	a, a
   8836 B4            [ 4]  856 	or	a, h
   8837 28 16         [12]  857 	jr	Z,00102$
   8839 7D            [ 4]  858 	ld	a, l
   883A 3D            [ 4]  859 	dec	a
   883B B4            [ 4]  860 	or	a, h
   883C 28 54         [12]  861 	jr	Z,00103$
   883E 7D            [ 4]  862 	ld	a, l
   883F D6 02         [ 7]  863 	sub	a, #0x02
   8841 B4            [ 4]  864 	or	a, h
   8842 CA D5 88      [10]  865 	jp	Z,00104$
   8845 7D            [ 4]  866 	ld	a, l
   8846 D6 03         [ 7]  867 	sub	a, #0x03
   8848 B4            [ 4]  868 	or	a, h
   8849 CA 17 89      [10]  869 	jp	Z,00105$
   884C C3 57 89      [10]  870 	jp	00106$
                            871 ;src/game/world.c:135: case 0:
   884F                     872 00102$:
                            873 ;src/game/world.c:136: p_forest[0] = 0b10000100;
   884F DD 6E F8      [19]  874 	ld	l,-8 (ix)
   8852 DD 66 F9      [19]  875 	ld	h,-7 (ix)
   8855 36 84         [10]  876 	ld	(hl), #0x84
                            877 ;src/game/world.c:137: p_forest[1] = 0b11000111;
   8857 DD 6E FE      [19]  878 	ld	l,-2 (ix)
   885A DD 66 FF      [19]  879 	ld	h,-1 (ix)
   885D 36 C7         [10]  880 	ld	(hl), #0xc7
                            881 ;src/game/world.c:138: p_forest[2] = 0b11011110;
   885F DD 6E F6      [19]  882 	ld	l,-10 (ix)
   8862 DD 66 F7      [19]  883 	ld	h,-9 (ix)
   8865 36 DE         [10]  884 	ld	(hl), #0xde
                            885 ;src/game/world.c:139: p_forest[3] = 0b01111110;
   8867 DD 6E F0      [19]  886 	ld	l,-16 (ix)
   886A DD 66 F1      [19]  887 	ld	h,-15 (ix)
   886D 36 7E         [10]  888 	ld	(hl), #0x7e
                            889 ;src/game/world.c:140: p_forest[4] = 0b11111110; 
   886F DD 6E F2      [19]  890 	ld	l,-14 (ix)
   8872 DD 66 F3      [19]  891 	ld	h,-13 (ix)
   8875 36 FE         [10]  892 	ld	(hl), #0xfe
                            893 ;src/game/world.c:141: p_forest[5] = 0b01111111;
   8877 DD 6E FC      [19]  894 	ld	l,-4 (ix)
   887A DD 66 FD      [19]  895 	ld	h,-3 (ix)
   887D 36 7F         [10]  896 	ld	(hl), #0x7f
                            897 ;src/game/world.c:142: p_forest[6] = 0b11101111;
   887F DD 6E FA      [19]  898 	ld	l,-6 (ix)
   8882 DD 66 FB      [19]  899 	ld	h,-5 (ix)
   8885 36 EF         [10]  900 	ld	(hl), #0xef
                            901 ;src/game/world.c:143: p_forest[7] = 0b11001111;
   8887 DD 6E F4      [19]  902 	ld	l,-12 (ix)
   888A DD 66 F5      [19]  903 	ld	h,-11 (ix)
   888D 36 CF         [10]  904 	ld	(hl), #0xcf
                            905 ;src/game/world.c:144: break;
   888F C3 57 89      [10]  906 	jp	00106$
                            907 ;src/game/world.c:145: case 1:
   8892                     908 00103$:
                            909 ;src/game/world.c:146: p_forest[0] = 0b00001100;
   8892 DD 6E F8      [19]  910 	ld	l,-8 (ix)
   8895 DD 66 F9      [19]  911 	ld	h,-7 (ix)
   8898 36 0C         [10]  912 	ld	(hl), #0x0c
                            913 ;src/game/world.c:147: p_forest[1] = 0b11111000;
   889A DD 6E FE      [19]  914 	ld	l,-2 (ix)
   889D DD 66 FF      [19]  915 	ld	h,-1 (ix)
   88A0 36 F8         [10]  916 	ld	(hl), #0xf8
                            917 ;src/game/world.c:148: p_forest[2] = 0b00111111;
   88A2 DD 6E F6      [19]  918 	ld	l,-10 (ix)
   88A5 DD 66 F7      [19]  919 	ld	h,-9 (ix)
   88A8 36 3F         [10]  920 	ld	(hl), #0x3f
                            921 ;src/game/world.c:149: p_forest[3] = 0b01111110;
   88AA DD 6E F0      [19]  922 	ld	l,-16 (ix)
   88AD DD 66 F1      [19]  923 	ld	h,-15 (ix)
   88B0 36 7E         [10]  924 	ld	(hl), #0x7e
                            925 ;src/game/world.c:150: p_forest[4] = 0b11111110; 
   88B2 DD 6E F2      [19]  926 	ld	l,-14 (ix)
   88B5 DD 66 F3      [19]  927 	ld	h,-13 (ix)
   88B8 36 FE         [10]  928 	ld	(hl), #0xfe
                            929 ;src/game/world.c:151: p_forest[5] = 0b01011111;
   88BA DD 6E FC      [19]  930 	ld	l,-4 (ix)
   88BD DD 66 FD      [19]  931 	ld	h,-3 (ix)
   88C0 36 5F         [10]  932 	ld	(hl), #0x5f
                            933 ;src/game/world.c:152: p_forest[6] = 0b11001111;
   88C2 DD 6E FA      [19]  934 	ld	l,-6 (ix)
   88C5 DD 66 FB      [19]  935 	ld	h,-5 (ix)
   88C8 36 CF         [10]  936 	ld	(hl), #0xcf
                            937 ;src/game/world.c:153: p_forest[7] = 0b10001100;
   88CA DD 6E F4      [19]  938 	ld	l,-12 (ix)
   88CD DD 66 F5      [19]  939 	ld	h,-11 (ix)
   88D0 36 8C         [10]  940 	ld	(hl), #0x8c
                            941 ;src/game/world.c:154: break;
   88D2 C3 57 89      [10]  942 	jp	00106$
                            943 ;src/game/world.c:155: case 2:
   88D5                     944 00104$:
                            945 ;src/game/world.c:156: p_forest[0] = 0b00110000;
   88D5 DD 6E F8      [19]  946 	ld	l,-8 (ix)
   88D8 DD 66 F9      [19]  947 	ld	h,-7 (ix)
   88DB 36 30         [10]  948 	ld	(hl), #0x30
                            949 ;src/game/world.c:157: p_forest[1] = 0b11110100;
   88DD DD 6E FE      [19]  950 	ld	l,-2 (ix)
   88E0 DD 66 FF      [19]  951 	ld	h,-1 (ix)
   88E3 36 F4         [10]  952 	ld	(hl), #0xf4
                            953 ;src/game/world.c:158: p_forest[2] = 0b11111111;
   88E5 DD 6E F6      [19]  954 	ld	l,-10 (ix)
   88E8 DD 66 F7      [19]  955 	ld	h,-9 (ix)
   88EB 36 FF         [10]  956 	ld	(hl), #0xff
                            957 ;src/game/world.c:159: p_forest[3] = 0b11111111;
   88ED DD 6E F0      [19]  958 	ld	l,-16 (ix)
   88F0 DD 66 F1      [19]  959 	ld	h,-15 (ix)
   88F3 36 FF         [10]  960 	ld	(hl), #0xff
                            961 ;src/game/world.c:160: p_forest[4] = 0b01111100;
   88F5 DD 6E F2      [19]  962 	ld	l,-14 (ix)
   88F8 DD 66 F3      [19]  963 	ld	h,-13 (ix)
   88FB 36 7C         [10]  964 	ld	(hl), #0x7c
                            965 ;src/game/world.c:161: p_forest[5] = 0b01111110;
   88FD DD 6E FC      [19]  966 	ld	l,-4 (ix)
   8900 DD 66 FD      [19]  967 	ld	h,-3 (ix)
   8903 36 7E         [10]  968 	ld	(hl), #0x7e
                            969 ;src/game/world.c:162: p_forest[6] = 0b00111110;
   8905 DD 6E FA      [19]  970 	ld	l,-6 (ix)
   8908 DD 66 FB      [19]  971 	ld	h,-5 (ix)
   890B 36 3E         [10]  972 	ld	(hl), #0x3e
                            973 ;src/game/world.c:163: p_forest[7] = 0b00011000;
   890D DD 6E F4      [19]  974 	ld	l,-12 (ix)
   8910 DD 66 F5      [19]  975 	ld	h,-11 (ix)
   8913 36 18         [10]  976 	ld	(hl), #0x18
                            977 ;src/game/world.c:164: break;
   8915 18 40         [12]  978 	jr	00106$
                            979 ;src/game/world.c:165: case 3:
   8917                     980 00105$:
                            981 ;src/game/world.c:166: p_forest[0] = 0b11000000; 
   8917 DD 6E F8      [19]  982 	ld	l,-8 (ix)
   891A DD 66 F9      [19]  983 	ld	h,-7 (ix)
   891D 36 C0         [10]  984 	ld	(hl), #0xc0
                            985 ;src/game/world.c:167: p_forest[1] = 0b11100111;
   891F DD 6E FE      [19]  986 	ld	l,-2 (ix)
   8922 DD 66 FF      [19]  987 	ld	h,-1 (ix)
   8925 36 E7         [10]  988 	ld	(hl), #0xe7
                            989 ;src/game/world.c:168: p_forest[2] = 0b01111110;
   8927 DD 6E F6      [19]  990 	ld	l,-10 (ix)
   892A DD 66 F7      [19]  991 	ld	h,-9 (ix)
   892D 36 7E         [10]  992 	ld	(hl), #0x7e
                            993 ;src/game/world.c:169: p_forest[3] = 0b01111110;
   892F DD 6E F0      [19]  994 	ld	l,-16 (ix)
   8932 DD 66 F1      [19]  995 	ld	h,-15 (ix)
   8935 36 7E         [10]  996 	ld	(hl), #0x7e
                            997 ;src/game/world.c:170: p_forest[4] = 0b11111110;
   8937 DD 6E F2      [19]  998 	ld	l,-14 (ix)
   893A DD 66 F3      [19]  999 	ld	h,-13 (ix)
   893D 36 FE         [10] 1000 	ld	(hl), #0xfe
                           1001 ;src/game/world.c:171: p_forest[5] = 0b11111100;
   893F DD 6E FC      [19] 1002 	ld	l,-4 (ix)
   8942 DD 66 FD      [19] 1003 	ld	h,-3 (ix)
   8945 36 FC         [10] 1004 	ld	(hl), #0xfc
                           1005 ;src/game/world.c:172: p_forest[6] = 0b01111000;
   8947 DD 6E FA      [19] 1006 	ld	l,-6 (ix)
   894A DD 66 FB      [19] 1007 	ld	h,-5 (ix)
   894D 36 78         [10] 1008 	ld	(hl), #0x78
                           1009 ;src/game/world.c:173: p_forest[7] = 0b00110000;
   894F DD 6E F4      [19] 1010 	ld	l,-12 (ix)
   8952 DD 66 F5      [19] 1011 	ld	h,-11 (ix)
   8955 36 30         [10] 1012 	ld	(hl), #0x30
                           1013 ;src/game/world.c:175: }
   8957                    1014 00106$:
                           1015 ;src/game/world.c:176: patternTile(FOREST, iy, 8, 8, p_forest);
   8957 DD 6E F8      [19] 1016 	ld	l,-8 (ix)
   895A DD 66 F9      [19] 1017 	ld	h,-7 (ix)
   895D C5            [11] 1018 	push	bc
   895E E5            [11] 1019 	push	hl
   895F 21 08 08      [10] 1020 	ld	hl, #0x0808
   8962 E5            [11] 1021 	push	hl
   8963 D5            [11] 1022 	push	de
   8964 3E 08         [ 7] 1023 	ld	a, #0x08
   8966 F5            [11] 1024 	push	af
   8967 33            [ 6] 1025 	inc	sp
   8968 CD 7E 86      [17] 1026 	call	_patternTile
   896B 21 07 00      [10] 1027 	ld	hl, #7
   896E 39            [11] 1028 	add	hl, sp
   896F F9            [ 6] 1029 	ld	sp, hl
   8970 C1            [10] 1030 	pop	bc
                           1031 ;src/game/world.c:129: for(ix=0; ix<NBFOREST; ix++)
   8971 03            [ 6] 1032 	inc	bc
   8972 79            [ 4] 1033 	ld	a, c
   8973 D6 32         [ 7] 1034 	sub	a, #0x32
   8975 78            [ 4] 1035 	ld	a, b
   8976 17            [ 4] 1036 	rla
   8977 3F            [ 4] 1037 	ccf
   8978 1F            [ 4] 1038 	rra
   8979 DE 80         [ 7] 1039 	sbc	a, #0x80
   897B DA AB 87      [10] 1040 	jp	C, 00121$
                           1041 ;src/game/world.c:182: for(ix=0; ix<NBFARM; ix++)
   897E 01 3C 00      [10] 1042 	ld	bc, #0x003c
   8981                    1043 00125$:
                           1044 ;src/game/world.c:184: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT)%(WIDTH*HEIGHT);
   8981 C5            [11] 1045 	push	bc
   8982 CD C0 65      [17] 1046 	call	_cpct_getRandom_mxor_u16
   8985 11 00 0F      [10] 1047 	ld	de, #0x0f00
   8988 D5            [11] 1048 	push	de
   8989 E5            [11] 1049 	push	hl
   898A CD 8E 62      [17] 1050 	call	__moduint
   898D F1            [10] 1051 	pop	af
   898E F1            [10] 1052 	pop	af
   898F 11 00 0F      [10] 1053 	ld	de, #0x0f00
   8992 D5            [11] 1054 	push	de
   8993 E5            [11] 1055 	push	hl
   8994 CD 8E 62      [17] 1056 	call	__moduint
   8997 F1            [10] 1057 	pop	af
   8998 F1            [10] 1058 	pop	af
   8999 C1            [10] 1059 	pop	bc
                           1060 ;src/game/world.c:185: p_world[iy] = cpct_rand()%2+5;
   899A 11 B5 74      [10] 1061 	ld	de, #_p_world
   899D 19            [11] 1062 	add	hl, de
   899E E5            [11] 1063 	push	hl
   899F C5            [11] 1064 	push	bc
   89A0 CD C8 66      [17] 1065 	call	_cpct_getRandom_mxor_u8
   89A3 7D            [ 4] 1066 	ld	a, l
   89A4 C1            [10] 1067 	pop	bc
   89A5 E1            [10] 1068 	pop	hl
   89A6 E6 01         [ 7] 1069 	and	a, #0x01
   89A8 C6 05         [ 7] 1070 	add	a, #0x05
   89AA 77            [ 7] 1071 	ld	(hl), a
   89AB 0B            [ 6] 1072 	dec	bc
                           1073 ;src/game/world.c:182: for(ix=0; ix<NBFARM; ix++)
   89AC 78            [ 4] 1074 	ld	a, b
   89AD B1            [ 4] 1075 	or	a,c
   89AE 20 D1         [12] 1076 	jr	NZ,00125$
                           1077 ;src/game/world.c:190: for(ix=0; ix<NBURBAN; ix++)
   89B0 01 14 00      [10] 1078 	ld	bc, #0x0014
   89B3                    1079 00128$:
                           1080 ;src/game/world.c:192: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   89B3 C5            [11] 1081 	push	bc
   89B4 CD C0 65      [17] 1082 	call	_cpct_getRandom_mxor_u16
   89B7 11 00 0F      [10] 1083 	ld	de, #0x0f00
   89BA D5            [11] 1084 	push	de
   89BB E5            [11] 1085 	push	hl
   89BC CD 8E 62      [17] 1086 	call	__moduint
   89BF F1            [10] 1087 	pop	af
   89C0 F1            [10] 1088 	pop	af
   89C1 C1            [10] 1089 	pop	bc
                           1090 ;src/game/world.c:193: p_world[iy] = cpct_rand()%3+2;
   89C2 11 B5 74      [10] 1091 	ld	de, #_p_world
   89C5 19            [11] 1092 	add	hl, de
   89C6 E5            [11] 1093 	push	hl
   89C7 C5            [11] 1094 	push	bc
   89C8 CD C8 66      [17] 1095 	call	_cpct_getRandom_mxor_u8
   89CB 55            [ 4] 1096 	ld	d, l
   89CC 3E 03         [ 7] 1097 	ld	a, #0x03
   89CE F5            [11] 1098 	push	af
   89CF 33            [ 6] 1099 	inc	sp
   89D0 D5            [11] 1100 	push	de
   89D1 33            [ 6] 1101 	inc	sp
   89D2 CD 82 62      [17] 1102 	call	__moduchar
   89D5 F1            [10] 1103 	pop	af
   89D6 5D            [ 4] 1104 	ld	e, l
   89D7 C1            [10] 1105 	pop	bc
   89D8 E1            [10] 1106 	pop	hl
   89D9 1C            [ 4] 1107 	inc	e
   89DA 1C            [ 4] 1108 	inc	e
   89DB 73            [ 7] 1109 	ld	(hl), e
   89DC 0B            [ 6] 1110 	dec	bc
                           1111 ;src/game/world.c:190: for(ix=0; ix<NBURBAN; ix++)
   89DD 78            [ 4] 1112 	ld	a, b
   89DE B1            [ 4] 1113 	or	a,c
   89DF 20 D2         [12] 1114 	jr	NZ,00128$
                           1115 ;src/game/world.c:196: for(ix=0; ix<NBURBAN; ix++)
   89E1 21 08 00      [10] 1116 	ld	hl, #0x0008
   89E4 39            [11] 1117 	add	hl, sp
   89E5 4D            [ 4] 1118 	ld	c, l
   89E6 44            [ 4] 1119 	ld	b, h
   89E7 DD 36 EE 00   [19] 1120 	ld	-18 (ix), #0x00
   89EB DD 36 EF 00   [19] 1121 	ld	-17 (ix), #0x00
   89EF                    1122 00129$:
                           1123 ;src/game/world.c:198: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   89EF C5            [11] 1124 	push	bc
   89F0 CD C0 65      [17] 1125 	call	_cpct_getRandom_mxor_u16
   89F3 11 00 0F      [10] 1126 	ld	de, #0x0f00
   89F6 D5            [11] 1127 	push	de
   89F7 E5            [11] 1128 	push	hl
   89F8 CD 8E 62      [17] 1129 	call	__moduint
   89FB F1            [10] 1130 	pop	af
   89FC F1            [10] 1131 	pop	af
   89FD C1            [10] 1132 	pop	bc
   89FE DD 75 F4      [19] 1133 	ld	-12 (ix), l
   8A01 DD 74 F5      [19] 1134 	ld	-11 (ix), h
                           1135 ;src/game/world.c:200: switch(cpct_rand()%6)
   8A04 C5            [11] 1136 	push	bc
   8A05 CD C8 66      [17] 1137 	call	_cpct_getRandom_mxor_u8
   8A08 55            [ 4] 1138 	ld	d, l
   8A09 3E 06         [ 7] 1139 	ld	a, #0x06
   8A0B F5            [11] 1140 	push	af
   8A0C 33            [ 6] 1141 	inc	sp
   8A0D D5            [11] 1142 	push	de
   8A0E 33            [ 6] 1143 	inc	sp
   8A0F CD 82 62      [17] 1144 	call	__moduchar
   8A12 F1            [10] 1145 	pop	af
   8A13 5D            [ 4] 1146 	ld	e, l
   8A14 C1            [10] 1147 	pop	bc
   8A15 3E 05         [ 7] 1148 	ld	a, #0x05
   8A17 93            [ 4] 1149 	sub	a, e
   8A18 38 6A         [12] 1150 	jr	C,00116$
                           1151 ;src/game/world.c:204: p_cities[1] = 0b01000110; // 01100010;
   8A1A 21 01 00      [10] 1152 	ld	hl, #0x0001
   8A1D 09            [11] 1153 	add	hl,bc
   8A1E DD 75 FA      [19] 1154 	ld	-6 (ix), l
   8A21 DD 74 FB      [19] 1155 	ld	-5 (ix), h
                           1156 ;src/game/world.c:200: switch(cpct_rand()%6)
   8A24 16 00         [ 7] 1157 	ld	d, #0x00
   8A26 21 2C 8A      [10] 1158 	ld	hl, #00211$
   8A29 19            [11] 1159 	add	hl, de
   8A2A 19            [11] 1160 	add	hl, de
                           1161 ;src/game/world.c:202: case 0:
   8A2B E9            [ 4] 1162 	jp	(hl)
   8A2C                    1163 00211$:
   8A2C 18 0A         [12] 1164 	jr	00110$
   8A2E 18 15         [12] 1165 	jr	00111$
   8A30 18 20         [12] 1166 	jr	00112$
   8A32 18 2B         [12] 1167 	jr	00113$
   8A34 18 36         [12] 1168 	jr	00114$
   8A36 18 41         [12] 1169 	jr	00115$
   8A38                    1170 00110$:
                           1171 ;src/game/world.c:203: p_cities[0] = 0b01110010; // 01001110;
   8A38 3E 72         [ 7] 1172 	ld	a, #0x72
   8A3A 02            [ 7] 1173 	ld	(bc), a
                           1174 ;src/game/world.c:204: p_cities[1] = 0b01000110; // 01100010;
   8A3B DD 6E FA      [19] 1175 	ld	l,-6 (ix)
   8A3E DD 66 FB      [19] 1176 	ld	h,-5 (ix)
   8A41 36 46         [10] 1177 	ld	(hl), #0x46
                           1178 ;src/game/world.c:205: break;
   8A43 18 3F         [12] 1179 	jr	00116$
                           1180 ;src/game/world.c:207: case 1:
   8A45                    1181 00111$:
                           1182 ;src/game/world.c:208: p_cities[0] = 0b01100000; // 00000110;
   8A45 3E 60         [ 7] 1183 	ld	a, #0x60
   8A47 02            [ 7] 1184 	ld	(bc), a
                           1185 ;src/game/world.c:209: p_cities[1] = 0b00000110; // 01100000;
   8A48 DD 6E FA      [19] 1186 	ld	l,-6 (ix)
   8A4B DD 66 FB      [19] 1187 	ld	h,-5 (ix)
   8A4E 36 06         [10] 1188 	ld	(hl), #0x06
                           1189 ;src/game/world.c:210: break;
   8A50 18 32         [12] 1190 	jr	00116$
                           1191 ;src/game/world.c:212: case 2:
   8A52                    1192 00112$:
                           1193 ;src/game/world.c:213: p_cities[0] = 0b00010000; // 00001000;
   8A52 3E 10         [ 7] 1194 	ld	a, #0x10
   8A54 02            [ 7] 1195 	ld	(bc), a
                           1196 ;src/game/world.c:214: p_cities[1] = 0b00000110; // 01100000;
   8A55 DD 6E FA      [19] 1197 	ld	l,-6 (ix)
   8A58 DD 66 FB      [19] 1198 	ld	h,-5 (ix)
   8A5B 36 06         [10] 1199 	ld	(hl), #0x06
                           1200 ;src/game/world.c:215: break;
   8A5D 18 25         [12] 1201 	jr	00116$
                           1202 ;src/game/world.c:217: case 3:
   8A5F                    1203 00113$:
                           1204 ;src/game/world.c:218: p_cities[0] = 0b11000000; // 00000011;
   8A5F 3E C0         [ 7] 1205 	ld	a, #0xc0
   8A61 02            [ 7] 1206 	ld	(bc), a
                           1207 ;src/game/world.c:219: p_cities[1] = 0b00110001; // 10001100;
   8A62 DD 6E FA      [19] 1208 	ld	l,-6 (ix)
   8A65 DD 66 FB      [19] 1209 	ld	h,-5 (ix)
   8A68 36 31         [10] 1210 	ld	(hl), #0x31
                           1211 ;src/game/world.c:220: break;
   8A6A 18 18         [12] 1212 	jr	00116$
                           1213 ;src/game/world.c:222: case 4:
   8A6C                    1214 00114$:
                           1215 ;src/game/world.c:223: p_cities[0] = 0b11000100; // 00100011;
   8A6C 3E C4         [ 7] 1216 	ld	a, #0xc4
   8A6E 02            [ 7] 1217 	ld	(bc), a
                           1218 ;src/game/world.c:224: p_cities[1] = 0b00001110; // 01110000;
   8A6F DD 6E FA      [19] 1219 	ld	l,-6 (ix)
   8A72 DD 66 FB      [19] 1220 	ld	h,-5 (ix)
   8A75 36 0E         [10] 1221 	ld	(hl), #0x0e
                           1222 ;src/game/world.c:225: break;
   8A77 18 0B         [12] 1223 	jr	00116$
                           1224 ;src/game/world.c:227: case 5:
   8A79                    1225 00115$:
                           1226 ;src/game/world.c:228: p_cities[0] = 0b01000000; // 00000010;
   8A79 3E 40         [ 7] 1227 	ld	a, #0x40
   8A7B 02            [ 7] 1228 	ld	(bc), a
                           1229 ;src/game/world.c:229: p_cities[1] = 0b01001110; // 01110010;
   8A7C DD 6E FA      [19] 1230 	ld	l,-6 (ix)
   8A7F DD 66 FB      [19] 1231 	ld	h,-5 (ix)
   8A82 36 4E         [10] 1232 	ld	(hl), #0x4e
                           1233 ;src/game/world.c:231: }
   8A84                    1234 00116$:
                           1235 ;src/game/world.c:233: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   8A84 59            [ 4] 1236 	ld	e, c
   8A85 50            [ 4] 1237 	ld	d, b
   8A86 C5            [11] 1238 	push	bc
   8A87 D5            [11] 1239 	push	de
   8A88 21 04 04      [10] 1240 	ld	hl, #0x0404
   8A8B E5            [11] 1241 	push	hl
   8A8C DD 6E F4      [19] 1242 	ld	l,-12 (ix)
   8A8F DD 66 F5      [19] 1243 	ld	h,-11 (ix)
   8A92 E5            [11] 1244 	push	hl
   8A93 3E 02         [ 7] 1245 	ld	a, #0x02
   8A95 F5            [11] 1246 	push	af
   8A96 33            [ 6] 1247 	inc	sp
   8A97 CD 7E 86      [17] 1248 	call	_patternTile
   8A9A 21 07 00      [10] 1249 	ld	hl, #7
   8A9D 39            [11] 1250 	add	hl, sp
   8A9E F9            [ 6] 1251 	ld	sp, hl
   8A9F C1            [10] 1252 	pop	bc
                           1253 ;src/game/world.c:196: for(ix=0; ix<NBURBAN; ix++)
   8AA0 DD 34 EE      [23] 1254 	inc	-18 (ix)
   8AA3 20 03         [12] 1255 	jr	NZ,00212$
   8AA5 DD 34 EF      [23] 1256 	inc	-17 (ix)
   8AA8                    1257 00212$:
   8AA8 DD 7E EE      [19] 1258 	ld	a, -18 (ix)
   8AAB D6 14         [ 7] 1259 	sub	a, #0x14
   8AAD DD 7E EF      [19] 1260 	ld	a, -17 (ix)
   8AB0 17            [ 4] 1261 	rla
   8AB1 3F            [ 4] 1262 	ccf
   8AB2 1F            [ 4] 1263 	rra
   8AB3 DE 80         [ 7] 1264 	sbc	a, #0x80
   8AB5 DA EF 89      [10] 1265 	jp	C, 00129$
                           1266 ;src/game/world.c:238: for(ix=0; ix<NBLIVESTOCK; ix++)
   8AB8 01 13 00      [10] 1267 	ld	bc, #0x0013
   8ABB                    1268 00133$:
                           1269 ;src/game/world.c:240: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   8ABB C5            [11] 1270 	push	bc
   8ABC CD C0 65      [17] 1271 	call	_cpct_getRandom_mxor_u16
   8ABF 11 00 0F      [10] 1272 	ld	de, #0x0f00
   8AC2 D5            [11] 1273 	push	de
   8AC3 E5            [11] 1274 	push	hl
   8AC4 CD 8E 62      [17] 1275 	call	__moduint
   8AC7 F1            [10] 1276 	pop	af
   8AC8 F1            [10] 1277 	pop	af
   8AC9 C1            [10] 1278 	pop	bc
                           1279 ;src/game/world.c:241: p_world[iy] = LIVESTOCK;
   8ACA 11 B5 74      [10] 1280 	ld	de, #_p_world
   8ACD 19            [11] 1281 	add	hl, de
   8ACE 36 09         [10] 1282 	ld	(hl), #0x09
   8AD0 0B            [ 6] 1283 	dec	bc
                           1284 ;src/game/world.c:238: for(ix=0; ix<NBLIVESTOCK; ix++)
   8AD1 78            [ 4] 1285 	ld	a, b
   8AD2 B1            [ 4] 1286 	or	a,c
   8AD3 20 E6         [12] 1287 	jr	NZ,00133$
   8AD5 DD F9         [10] 1288 	ld	sp, ix
   8AD7 DD E1         [14] 1289 	pop	ix
   8AD9 C9            [10] 1290 	ret
                           1291 ;src/game/world.c:245: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1292 ;	---------------------------------
                           1293 ; Function drawTile
                           1294 ; ---------------------------------
   8ADA                    1295 _drawTile::
   8ADA DD E5         [15] 1296 	push	ix
   8ADC DD 21 00 00   [14] 1297 	ld	ix,#0
   8AE0 DD 39         [15] 1298 	add	ix,sp
                           1299 ;src/game/world.c:248: int adress = (y_+iy)*WIDTH+x_+ix;
   8AE2 DD 4E 05      [19] 1300 	ld	c, 5 (ix)
   8AE5 06 00         [ 7] 1301 	ld	b, #0x00
   8AE7 DD 6E 07      [19] 1302 	ld	l, 7 (ix)
   8AEA 26 00         [ 7] 1303 	ld	h, #0x00
   8AEC 09            [11] 1304 	add	hl, bc
   8AED 4D            [ 4] 1305 	ld	c, l
   8AEE 44            [ 4] 1306 	ld	b, h
   8AEF 29            [11] 1307 	add	hl, hl
   8AF0 29            [11] 1308 	add	hl, hl
   8AF1 09            [11] 1309 	add	hl, bc
   8AF2 29            [11] 1310 	add	hl, hl
   8AF3 29            [11] 1311 	add	hl, hl
   8AF4 29            [11] 1312 	add	hl, hl
   8AF5 29            [11] 1313 	add	hl, hl
   8AF6 DD 4E 04      [19] 1314 	ld	c, 4 (ix)
   8AF9 06 00         [ 7] 1315 	ld	b, #0x00
   8AFB 09            [11] 1316 	add	hl, bc
   8AFC DD 4E 06      [19] 1317 	ld	c, 6 (ix)
   8AFF 06 00         [ 7] 1318 	ld	b, #0x00
   8B01 09            [11] 1319 	add	hl,bc
   8B02 5D            [ 4] 1320 	ld	e, l
   8B03 54            [ 4] 1321 	ld	d, h
                           1322 ;src/game/world.c:250: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   8B04 DD 7E 07      [19] 1323 	ld	a, 7 (ix)
   8B07 07            [ 4] 1324 	rlca
   8B08 07            [ 4] 1325 	rlca
   8B09 07            [ 4] 1326 	rlca
   8B0A 07            [ 4] 1327 	rlca
   8B0B E6 F0         [ 7] 1328 	and	a, #0xf0
   8B0D 67            [ 4] 1329 	ld	h, a
   8B0E DD 7E 06      [19] 1330 	ld	a, 6 (ix)
   8B11 87            [ 4] 1331 	add	a, a
   8B12 87            [ 4] 1332 	add	a, a
   8B13 47            [ 4] 1333 	ld	b, a
   8B14 D5            [11] 1334 	push	de
   8B15 E5            [11] 1335 	push	hl
   8B16 33            [ 6] 1336 	inc	sp
   8B17 C5            [11] 1337 	push	bc
   8B18 33            [ 6] 1338 	inc	sp
   8B19 21 00 C0      [10] 1339 	ld	hl, #0xc000
   8B1C E5            [11] 1340 	push	hl
   8B1D CD BF 67      [17] 1341 	call	_cpct_getScreenPtr
   8B20 4D            [ 4] 1342 	ld	c, l
   8B21 44            [ 4] 1343 	ld	b, h
   8B22 D1            [10] 1344 	pop	de
                           1345 ;src/game/world.c:252: switch(p_world[adress])
   8B23 21 B5 74      [10] 1346 	ld	hl, #_p_world+0
   8B26 19            [11] 1347 	add	hl, de
   8B27 5E            [ 7] 1348 	ld	e, (hl)
   8B28 3E 19         [ 7] 1349 	ld	a, #0x19
   8B2A 93            [ 4] 1350 	sub	a, e
   8B2B DA 00 8D      [10] 1351 	jp	C, 00128$
   8B2E 16 00         [ 7] 1352 	ld	d, #0x00
   8B30 21 37 8B      [10] 1353 	ld	hl, #00134$
   8B33 19            [11] 1354 	add	hl, de
   8B34 19            [11] 1355 	add	hl, de
   8B35 19            [11] 1356 	add	hl, de
   8B36 E9            [ 4] 1357 	jp	(hl)
   8B37                    1358 00134$:
   8B37 C3 85 8B      [10] 1359 	jp	00101$
   8B3A C3 94 8B      [10] 1360 	jp	00102$
   8B3D C3 A3 8B      [10] 1361 	jp	00103$
   8B40 C3 B2 8B      [10] 1362 	jp	00104$
   8B43 C3 C1 8B      [10] 1363 	jp	00105$
   8B46 C3 D0 8B      [10] 1364 	jp	00106$
   8B49 C3 DF 8B      [10] 1365 	jp	00107$
   8B4C C3 EE 8B      [10] 1366 	jp	00108$
   8B4F C3 FD 8B      [10] 1367 	jp	00109$
   8B52 C3 0C 8C      [10] 1368 	jp	00110$
   8B55 C3 1B 8C      [10] 1369 	jp	00111$
   8B58 C3 2A 8C      [10] 1370 	jp	00112$
   8B5B C3 39 8C      [10] 1371 	jp	00113$
   8B5E C3 48 8C      [10] 1372 	jp	00114$
   8B61 C3 57 8C      [10] 1373 	jp	00115$
   8B64 C3 66 8C      [10] 1374 	jp	00116$
   8B67 C3 75 8C      [10] 1375 	jp	00117$
   8B6A C3 84 8C      [10] 1376 	jp	00118$
   8B6D C3 92 8C      [10] 1377 	jp	00119$
   8B70 C3 A0 8C      [10] 1378 	jp	00120$
   8B73 C3 AE 8C      [10] 1379 	jp	00121$
   8B76 C3 BC 8C      [10] 1380 	jp	00122$
   8B79 C3 CA 8C      [10] 1381 	jp	00123$
   8B7C C3 D8 8C      [10] 1382 	jp	00124$
   8B7F C3 E6 8C      [10] 1383 	jp	00125$
   8B82 C3 F4 8C      [10] 1384 	jp	00126$
                           1385 ;src/game/world.c:254: case GRASS1:
   8B85                    1386 00101$:
                           1387 ;src/game/world.c:255: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   8B85 21 04 10      [10] 1388 	ld	hl, #0x1004
   8B88 E5            [11] 1389 	push	hl
   8B89 C5            [11] 1390 	push	bc
   8B8A 21 D4 47      [10] 1391 	ld	hl, #_grass1
   8B8D E5            [11] 1392 	push	hl
   8B8E CD DD 61      [17] 1393 	call	_cpct_drawSprite
                           1394 ;src/game/world.c:256: break;
   8B91 C3 00 8D      [10] 1395 	jp	00128$
                           1396 ;src/game/world.c:257: case GRASS2:
   8B94                    1397 00102$:
                           1398 ;src/game/world.c:258: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   8B94 21 04 10      [10] 1399 	ld	hl, #0x1004
   8B97 E5            [11] 1400 	push	hl
   8B98 C5            [11] 1401 	push	bc
   8B99 21 14 48      [10] 1402 	ld	hl, #_grass2
   8B9C E5            [11] 1403 	push	hl
   8B9D CD DD 61      [17] 1404 	call	_cpct_drawSprite
                           1405 ;src/game/world.c:259: break;
   8BA0 C3 00 8D      [10] 1406 	jp	00128$
                           1407 ;src/game/world.c:260: case DWELLINGS1:
   8BA3                    1408 00103$:
                           1409 ;src/game/world.c:261: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   8BA3 21 04 10      [10] 1410 	ld	hl, #0x1004
   8BA6 E5            [11] 1411 	push	hl
   8BA7 C5            [11] 1412 	push	bc
   8BA8 21 94 48      [10] 1413 	ld	hl, #_dwellings1
   8BAB E5            [11] 1414 	push	hl
   8BAC CD DD 61      [17] 1415 	call	_cpct_drawSprite
                           1416 ;src/game/world.c:262: break;
   8BAF C3 00 8D      [10] 1417 	jp	00128$
                           1418 ;src/game/world.c:263: case DWELLINGS2:
   8BB2                    1419 00104$:
                           1420 ;src/game/world.c:264: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   8BB2 21 04 10      [10] 1421 	ld	hl, #0x1004
   8BB5 E5            [11] 1422 	push	hl
   8BB6 C5            [11] 1423 	push	bc
   8BB7 21 D4 48      [10] 1424 	ld	hl, #_dwellings2
   8BBA E5            [11] 1425 	push	hl
   8BBB CD DD 61      [17] 1426 	call	_cpct_drawSprite
                           1427 ;src/game/world.c:265: break;
   8BBE C3 00 8D      [10] 1428 	jp	00128$
                           1429 ;src/game/world.c:266: case DWELLINGS3:
   8BC1                    1430 00105$:
                           1431 ;src/game/world.c:267: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   8BC1 21 04 10      [10] 1432 	ld	hl, #0x1004
   8BC4 E5            [11] 1433 	push	hl
   8BC5 C5            [11] 1434 	push	bc
   8BC6 21 14 49      [10] 1435 	ld	hl, #_dwellings3
   8BC9 E5            [11] 1436 	push	hl
   8BCA CD DD 61      [17] 1437 	call	_cpct_drawSprite
                           1438 ;src/game/world.c:268: break;
   8BCD C3 00 8D      [10] 1439 	jp	00128$
                           1440 ;src/game/world.c:269: case FARM1:
   8BD0                    1441 00106$:
                           1442 ;src/game/world.c:270: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   8BD0 21 04 10      [10] 1443 	ld	hl, #0x1004
   8BD3 E5            [11] 1444 	push	hl
   8BD4 C5            [11] 1445 	push	bc
   8BD5 21 94 49      [10] 1446 	ld	hl, #_farm1
   8BD8 E5            [11] 1447 	push	hl
   8BD9 CD DD 61      [17] 1448 	call	_cpct_drawSprite
                           1449 ;src/game/world.c:271: break;
   8BDC C3 00 8D      [10] 1450 	jp	00128$
                           1451 ;src/game/world.c:272: case FARM2:
   8BDF                    1452 00107$:
                           1453 ;src/game/world.c:273: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   8BDF 21 04 10      [10] 1454 	ld	hl, #0x1004
   8BE2 E5            [11] 1455 	push	hl
   8BE3 C5            [11] 1456 	push	bc
   8BE4 21 D4 49      [10] 1457 	ld	hl, #_farm2
   8BE7 E5            [11] 1458 	push	hl
   8BE8 CD DD 61      [17] 1459 	call	_cpct_drawSprite
                           1460 ;src/game/world.c:274: break;
   8BEB C3 00 8D      [10] 1461 	jp	00128$
                           1462 ;src/game/world.c:275: case WATER:
   8BEE                    1463 00108$:
                           1464 ;src/game/world.c:276: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   8BEE 21 04 10      [10] 1465 	ld	hl, #0x1004
   8BF1 E5            [11] 1466 	push	hl
   8BF2 C5            [11] 1467 	push	bc
   8BF3 21 54 49      [10] 1468 	ld	hl, #_water
   8BF6 E5            [11] 1469 	push	hl
   8BF7 CD DD 61      [17] 1470 	call	_cpct_drawSprite
                           1471 ;src/game/world.c:277: break;
   8BFA C3 00 8D      [10] 1472 	jp	00128$
                           1473 ;src/game/world.c:278: case FOREST:
   8BFD                    1474 00109$:
                           1475 ;src/game/world.c:279: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   8BFD 21 04 10      [10] 1476 	ld	hl, #0x1004
   8C00 E5            [11] 1477 	push	hl
   8C01 C5            [11] 1478 	push	bc
   8C02 21 54 48      [10] 1479 	ld	hl, #_forest
   8C05 E5            [11] 1480 	push	hl
   8C06 CD DD 61      [17] 1481 	call	_cpct_drawSprite
                           1482 ;src/game/world.c:280: break;
   8C09 C3 00 8D      [10] 1483 	jp	00128$
                           1484 ;src/game/world.c:281: case LIVESTOCK:
   8C0C                    1485 00110$:
                           1486 ;src/game/world.c:282: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   8C0C 21 04 10      [10] 1487 	ld	hl, #0x1004
   8C0F E5            [11] 1488 	push	hl
   8C10 C5            [11] 1489 	push	bc
   8C11 21 14 4A      [10] 1490 	ld	hl, #_livestock
   8C14 E5            [11] 1491 	push	hl
   8C15 CD DD 61      [17] 1492 	call	_cpct_drawSprite
                           1493 ;src/game/world.c:283: break;
   8C18 C3 00 8D      [10] 1494 	jp	00128$
                           1495 ;src/game/world.c:284: case SSNS:
   8C1B                    1496 00111$:
                           1497 ;src/game/world.c:285: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   8C1B 21 04 10      [10] 1498 	ld	hl, #0x1004
   8C1E E5            [11] 1499 	push	hl
   8C1F C5            [11] 1500 	push	bc
   8C20 21 54 4A      [10] 1501 	ld	hl, #_station_small_ns
   8C23 E5            [11] 1502 	push	hl
   8C24 CD DD 61      [17] 1503 	call	_cpct_drawSprite
                           1504 ;src/game/world.c:286: break;
   8C27 C3 00 8D      [10] 1505 	jp	00128$
                           1506 ;src/game/world.c:287: case SSEW:
   8C2A                    1507 00112$:
                           1508 ;src/game/world.c:288: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   8C2A 21 04 10      [10] 1509 	ld	hl, #0x1004
   8C2D E5            [11] 1510 	push	hl
   8C2E C5            [11] 1511 	push	bc
   8C2F 21 94 4A      [10] 1512 	ld	hl, #_station_small_ew
   8C32 E5            [11] 1513 	push	hl
   8C33 CD DD 61      [17] 1514 	call	_cpct_drawSprite
                           1515 ;src/game/world.c:289: break;
   8C36 C3 00 8D      [10] 1516 	jp	00128$
                           1517 ;src/game/world.c:290: case SMNS:
   8C39                    1518 00113$:
                           1519 ;src/game/world.c:291: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   8C39 21 04 10      [10] 1520 	ld	hl, #0x1004
   8C3C E5            [11] 1521 	push	hl
   8C3D C5            [11] 1522 	push	bc
   8C3E 21 D4 4A      [10] 1523 	ld	hl, #_station_medium_ns
   8C41 E5            [11] 1524 	push	hl
   8C42 CD DD 61      [17] 1525 	call	_cpct_drawSprite
                           1526 ;src/game/world.c:292: break;
   8C45 C3 00 8D      [10] 1527 	jp	00128$
                           1528 ;src/game/world.c:293: case SMEW:
   8C48                    1529 00114$:
                           1530 ;src/game/world.c:294: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   8C48 21 04 10      [10] 1531 	ld	hl, #0x1004
   8C4B E5            [11] 1532 	push	hl
   8C4C C5            [11] 1533 	push	bc
   8C4D 21 14 4B      [10] 1534 	ld	hl, #_station_medium_ew
   8C50 E5            [11] 1535 	push	hl
   8C51 CD DD 61      [17] 1536 	call	_cpct_drawSprite
                           1537 ;src/game/world.c:295: break;
   8C54 C3 00 8D      [10] 1538 	jp	00128$
                           1539 ;src/game/world.c:296: case SLNS:
   8C57                    1540 00115$:
                           1541 ;src/game/world.c:297: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   8C57 21 04 10      [10] 1542 	ld	hl, #0x1004
   8C5A E5            [11] 1543 	push	hl
   8C5B C5            [11] 1544 	push	bc
   8C5C 21 54 4B      [10] 1545 	ld	hl, #_station_large_ns
   8C5F E5            [11] 1546 	push	hl
   8C60 CD DD 61      [17] 1547 	call	_cpct_drawSprite
                           1548 ;src/game/world.c:298: break;
   8C63 C3 00 8D      [10] 1549 	jp	00128$
                           1550 ;src/game/world.c:299: case SLEW:
   8C66                    1551 00116$:
                           1552 ;src/game/world.c:300: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   8C66 21 04 10      [10] 1553 	ld	hl, #0x1004
   8C69 E5            [11] 1554 	push	hl
   8C6A C5            [11] 1555 	push	bc
   8C6B 21 94 4B      [10] 1556 	ld	hl, #_station_large_ew
   8C6E E5            [11] 1557 	push	hl
   8C6F CD DD 61      [17] 1558 	call	_cpct_drawSprite
                           1559 ;src/game/world.c:301: break;
   8C72 C3 00 8D      [10] 1560 	jp	00128$
                           1561 ;src/game/world.c:302: case REW:
   8C75                    1562 00117$:
                           1563 ;src/game/world.c:303: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   8C75 21 04 10      [10] 1564 	ld	hl, #0x1004
   8C78 E5            [11] 1565 	push	hl
   8C79 C5            [11] 1566 	push	bc
   8C7A 21 D4 4B      [10] 1567 	ld	hl, #_rail_ew
   8C7D E5            [11] 1568 	push	hl
   8C7E CD DD 61      [17] 1569 	call	_cpct_drawSprite
                           1570 ;src/game/world.c:304: break;
   8C81 C3 00 8D      [10] 1571 	jp	00128$
                           1572 ;src/game/world.c:305: case RNS:
   8C84                    1573 00118$:
                           1574 ;src/game/world.c:306: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   8C84 21 04 10      [10] 1575 	ld	hl, #0x1004
   8C87 E5            [11] 1576 	push	hl
   8C88 C5            [11] 1577 	push	bc
   8C89 21 14 4C      [10] 1578 	ld	hl, #_rail_ns
   8C8C E5            [11] 1579 	push	hl
   8C8D CD DD 61      [17] 1580 	call	_cpct_drawSprite
                           1581 ;src/game/world.c:307: break;
   8C90 18 6E         [12] 1582 	jr	00128$
                           1583 ;src/game/world.c:308: case REN:
   8C92                    1584 00119$:
                           1585 ;src/game/world.c:309: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   8C92 21 04 10      [10] 1586 	ld	hl, #0x1004
   8C95 E5            [11] 1587 	push	hl
   8C96 C5            [11] 1588 	push	bc
   8C97 21 54 4C      [10] 1589 	ld	hl, #_rail_en
   8C9A E5            [11] 1590 	push	hl
   8C9B CD DD 61      [17] 1591 	call	_cpct_drawSprite
                           1592 ;src/game/world.c:310: break;
   8C9E 18 60         [12] 1593 	jr	00128$
                           1594 ;src/game/world.c:311: case RES:
   8CA0                    1595 00120$:
                           1596 ;src/game/world.c:312: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   8CA0 21 04 10      [10] 1597 	ld	hl, #0x1004
   8CA3 E5            [11] 1598 	push	hl
   8CA4 C5            [11] 1599 	push	bc
   8CA5 21 94 4C      [10] 1600 	ld	hl, #_rail_es
   8CA8 E5            [11] 1601 	push	hl
   8CA9 CD DD 61      [17] 1602 	call	_cpct_drawSprite
                           1603 ;src/game/world.c:313: break;
   8CAC 18 52         [12] 1604 	jr	00128$
                           1605 ;src/game/world.c:314: case RWN:
   8CAE                    1606 00121$:
                           1607 ;src/game/world.c:315: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   8CAE 21 04 10      [10] 1608 	ld	hl, #0x1004
   8CB1 E5            [11] 1609 	push	hl
   8CB2 C5            [11] 1610 	push	bc
   8CB3 21 D4 4C      [10] 1611 	ld	hl, #_rail_wn
   8CB6 E5            [11] 1612 	push	hl
   8CB7 CD DD 61      [17] 1613 	call	_cpct_drawSprite
                           1614 ;src/game/world.c:316: break;
   8CBA 18 44         [12] 1615 	jr	00128$
                           1616 ;src/game/world.c:317: case RWS:
   8CBC                    1617 00122$:
                           1618 ;src/game/world.c:318: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   8CBC 21 04 10      [10] 1619 	ld	hl, #0x1004
   8CBF E5            [11] 1620 	push	hl
   8CC0 C5            [11] 1621 	push	bc
   8CC1 21 14 4D      [10] 1622 	ld	hl, #_rail_ws
   8CC4 E5            [11] 1623 	push	hl
   8CC5 CD DD 61      [17] 1624 	call	_cpct_drawSprite
                           1625 ;src/game/world.c:319: break;
   8CC8 18 36         [12] 1626 	jr	00128$
                           1627 ;src/game/world.c:320: case REWN:
   8CCA                    1628 00123$:
                           1629 ;src/game/world.c:321: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   8CCA 21 04 10      [10] 1630 	ld	hl, #0x1004
   8CCD E5            [11] 1631 	push	hl
   8CCE C5            [11] 1632 	push	bc
   8CCF 21 54 4D      [10] 1633 	ld	hl, #_rail_ew_n
   8CD2 E5            [11] 1634 	push	hl
   8CD3 CD DD 61      [17] 1635 	call	_cpct_drawSprite
                           1636 ;src/game/world.c:322: break;
   8CD6 18 28         [12] 1637 	jr	00128$
                           1638 ;src/game/world.c:323: case REWS:
   8CD8                    1639 00124$:
                           1640 ;src/game/world.c:324: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   8CD8 21 04 10      [10] 1641 	ld	hl, #0x1004
   8CDB E5            [11] 1642 	push	hl
   8CDC C5            [11] 1643 	push	bc
   8CDD 21 94 4D      [10] 1644 	ld	hl, #_rail_ew_s
   8CE0 E5            [11] 1645 	push	hl
   8CE1 CD DD 61      [17] 1646 	call	_cpct_drawSprite
                           1647 ;src/game/world.c:325: break;
   8CE4 18 1A         [12] 1648 	jr	00128$
                           1649 ;src/game/world.c:326: case RNSE:
   8CE6                    1650 00125$:
                           1651 ;src/game/world.c:327: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   8CE6 21 04 10      [10] 1652 	ld	hl, #0x1004
   8CE9 E5            [11] 1653 	push	hl
   8CEA C5            [11] 1654 	push	bc
   8CEB 21 14 4E      [10] 1655 	ld	hl, #_rail_ns_e
   8CEE E5            [11] 1656 	push	hl
   8CEF CD DD 61      [17] 1657 	call	_cpct_drawSprite
                           1658 ;src/game/world.c:328: break;
   8CF2 18 0C         [12] 1659 	jr	00128$
                           1660 ;src/game/world.c:329: case RNSW:
   8CF4                    1661 00126$:
                           1662 ;src/game/world.c:330: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   8CF4 21 04 10      [10] 1663 	ld	hl, #0x1004
   8CF7 E5            [11] 1664 	push	hl
   8CF8 C5            [11] 1665 	push	bc
   8CF9 21 D4 4D      [10] 1666 	ld	hl, #_rail_ns_w
   8CFC E5            [11] 1667 	push	hl
   8CFD CD DD 61      [17] 1668 	call	_cpct_drawSprite
                           1669 ;src/game/world.c:332: }
   8D00                    1670 00128$:
   8D00 DD E1         [14] 1671 	pop	ix
   8D02 C9            [10] 1672 	ret
                           1673 ;src/game/world.c:335: void drawScrolls(u8 x, u8 y)
                           1674 ;	---------------------------------
                           1675 ; Function drawScrolls
                           1676 ; ---------------------------------
   8D03                    1677 _drawScrolls::
   8D03 DD E5         [15] 1678 	push	ix
   8D05 DD 21 00 00   [14] 1679 	ld	ix,#0
   8D09 DD 39         [15] 1680 	add	ix,sp
   8D0B F5            [11] 1681 	push	af
                           1682 ;src/game/world.c:337: int scrollx = x* (WIDTH-TILESIZE_W)*4/(WIDTH-NBTILE_W);
   8D0C DD 4E 04      [19] 1683 	ld	c, 4 (ix)
   8D0F 06 00         [ 7] 1684 	ld	b, #0x00
   8D11 69            [ 4] 1685 	ld	l, c
   8D12 60            [ 4] 1686 	ld	h, b
   8D13 29            [11] 1687 	add	hl, hl
   8D14 29            [11] 1688 	add	hl, hl
   8D15 29            [11] 1689 	add	hl, hl
   8D16 09            [11] 1690 	add	hl, bc
   8D17 29            [11] 1691 	add	hl, hl
   8D18 09            [11] 1692 	add	hl, bc
   8D19 29            [11] 1693 	add	hl, hl
   8D1A 29            [11] 1694 	add	hl, hl
   8D1B 29            [11] 1695 	add	hl, hl
   8D1C 29            [11] 1696 	add	hl, hl
   8D1D 01 3C 00      [10] 1697 	ld	bc, #0x003c
   8D20 C5            [11] 1698 	push	bc
   8D21 E5            [11] 1699 	push	hl
   8D22 CD 10 68      [17] 1700 	call	__divsint
   8D25 F1            [10] 1701 	pop	af
   8D26 F1            [10] 1702 	pop	af
   8D27 4D            [ 4] 1703 	ld	c, l
   8D28 44            [ 4] 1704 	ld	b, h
                           1705 ;src/game/world.c:338: int scrolly = y* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   8D29 DD 5E 05      [19] 1706 	ld	e,5 (ix)
   8D2C 16 00         [ 7] 1707 	ld	d,#0x00
   8D2E 6B            [ 4] 1708 	ld	l, e
   8D2F 62            [ 4] 1709 	ld	h, d
   8D30 29            [11] 1710 	add	hl, hl
   8D31 29            [11] 1711 	add	hl, hl
   8D32 19            [11] 1712 	add	hl, de
   8D33 29            [11] 1713 	add	hl, hl
   8D34 19            [11] 1714 	add	hl, de
   8D35 29            [11] 1715 	add	hl, hl
   8D36 29            [11] 1716 	add	hl, hl
   8D37 29            [11] 1717 	add	hl, hl
   8D38 29            [11] 1718 	add	hl, hl
   8D39 C5            [11] 1719 	push	bc
   8D3A 11 24 00      [10] 1720 	ld	de, #0x0024
   8D3D D5            [11] 1721 	push	de
   8D3E E5            [11] 1722 	push	hl
   8D3F CD 10 68      [17] 1723 	call	__divsint
   8D42 F1            [10] 1724 	pop	af
   8D43 F1            [10] 1725 	pop	af
   8D44 C1            [10] 1726 	pop	bc
   8D45 33            [ 6] 1727 	inc	sp
   8D46 33            [ 6] 1728 	inc	sp
   8D47 E5            [11] 1729 	push	hl
                           1730 ;src/game/world.c:340: setPixel(scrollx, 1, 0);
   8D48 C5            [11] 1731 	push	bc
   8D49 21 01 00      [10] 1732 	ld	hl, #0x0001
   8D4C E5            [11] 1733 	push	hl
   8D4D C5            [11] 1734 	push	bc
   8D4E CD 19 8F      [17] 1735 	call	_setPixel
   8D51 F1            [10] 1736 	pop	af
   8D52 F1            [10] 1737 	pop	af
   8D53 C1            [10] 1738 	pop	bc
                           1739 ;src/game/world.c:341: setPixel(scrollx+1, 0, 0);
   8D54 59            [ 4] 1740 	ld	e, c
   8D55 50            [ 4] 1741 	ld	d, b
   8D56 13            [ 6] 1742 	inc	de
   8D57 C5            [11] 1743 	push	bc
   8D58 D5            [11] 1744 	push	de
   8D59 21 00 00      [10] 1745 	ld	hl, #0x0000
   8D5C E5            [11] 1746 	push	hl
   8D5D D5            [11] 1747 	push	de
   8D5E CD 19 8F      [17] 1748 	call	_setPixel
   8D61 F1            [10] 1749 	pop	af
   8D62 F1            [10] 1750 	pop	af
   8D63 D1            [10] 1751 	pop	de
   8D64 D5            [11] 1752 	push	de
   8D65 21 01 00      [10] 1753 	ld	hl, #0x0001
   8D68 E5            [11] 1754 	push	hl
   8D69 D5            [11] 1755 	push	de
   8D6A CD 19 8F      [17] 1756 	call	_setPixel
   8D6D F1            [10] 1757 	pop	af
   8D6E F1            [10] 1758 	pop	af
   8D6F D1            [10] 1759 	pop	de
   8D70 21 02 00      [10] 1760 	ld	hl, #0x0002
   8D73 E5            [11] 1761 	push	hl
   8D74 D5            [11] 1762 	push	de
   8D75 CD 19 8F      [17] 1763 	call	_setPixel
   8D78 F1            [10] 1764 	pop	af
   8D79 F1            [10] 1765 	pop	af
   8D7A C1            [10] 1766 	pop	bc
                           1767 ;src/game/world.c:345: setPixel(scrollx+15, 1, 0);
   8D7B 21 0F 00      [10] 1768 	ld	hl, #0x000f
   8D7E 09            [11] 1769 	add	hl, bc
   8D7F C5            [11] 1770 	push	bc
   8D80 11 01 00      [10] 1771 	ld	de, #0x0001
   8D83 D5            [11] 1772 	push	de
   8D84 E5            [11] 1773 	push	hl
   8D85 CD 19 8F      [17] 1774 	call	_setPixel
   8D88 F1            [10] 1775 	pop	af
   8D89 F1            [10] 1776 	pop	af
   8D8A C1            [10] 1777 	pop	bc
                           1778 ;src/game/world.c:346: setPixel(scrollx+14, 0, 0);
   8D8B 21 0E 00      [10] 1779 	ld	hl, #0x000e
   8D8E 09            [11] 1780 	add	hl, bc
   8D8F E5            [11] 1781 	push	hl
   8D90 01 00 00      [10] 1782 	ld	bc, #0x0000
   8D93 C5            [11] 1783 	push	bc
   8D94 E5            [11] 1784 	push	hl
   8D95 CD 19 8F      [17] 1785 	call	_setPixel
   8D98 F1            [10] 1786 	pop	af
   8D99 F1            [10] 1787 	pop	af
   8D9A E1            [10] 1788 	pop	hl
                           1789 ;src/game/world.c:347: setPixel(scrollx+14, 1, 0);
   8D9B E5            [11] 1790 	push	hl
   8D9C 01 01 00      [10] 1791 	ld	bc, #0x0001
   8D9F C5            [11] 1792 	push	bc
   8DA0 E5            [11] 1793 	push	hl
   8DA1 CD 19 8F      [17] 1794 	call	_setPixel
   8DA4 F1            [10] 1795 	pop	af
   8DA5 F1            [10] 1796 	pop	af
   8DA6 E1            [10] 1797 	pop	hl
                           1798 ;src/game/world.c:348: setPixel(scrollx+14, 2, 0);
   8DA7 01 02 00      [10] 1799 	ld	bc, #0x0002
   8DAA C5            [11] 1800 	push	bc
   8DAB E5            [11] 1801 	push	hl
   8DAC CD 19 8F      [17] 1802 	call	_setPixel
   8DAF F1            [10] 1803 	pop	af
   8DB0 F1            [10] 1804 	pop	af
                           1805 ;src/game/world.c:350: setPixel(1, scrolly, 0);
   8DB1 DD 46 FE      [19] 1806 	ld	b, -2 (ix)
   8DB4 AF            [ 4] 1807 	xor	a, a
   8DB5 F5            [11] 1808 	push	af
   8DB6 33            [ 6] 1809 	inc	sp
   8DB7 C5            [11] 1810 	push	bc
   8DB8 33            [ 6] 1811 	inc	sp
   8DB9 21 01 00      [10] 1812 	ld	hl, #0x0001
   8DBC E5            [11] 1813 	push	hl
   8DBD CD 19 8F      [17] 1814 	call	_setPixel
   8DC0 F1            [10] 1815 	pop	af
   8DC1 F1            [10] 1816 	pop	af
                           1817 ;src/game/world.c:351: setPixel(0, scrolly+1, 0);
   8DC2 DD 4E FE      [19] 1818 	ld	c, -2 (ix)
   8DC5 41            [ 4] 1819 	ld	b, c
   8DC6 04            [ 4] 1820 	inc	b
   8DC7 C5            [11] 1821 	push	bc
   8DC8 AF            [ 4] 1822 	xor	a, a
   8DC9 F5            [11] 1823 	push	af
   8DCA 33            [ 6] 1824 	inc	sp
   8DCB C5            [11] 1825 	push	bc
   8DCC 33            [ 6] 1826 	inc	sp
   8DCD 21 00 00      [10] 1827 	ld	hl, #0x0000
   8DD0 E5            [11] 1828 	push	hl
   8DD1 CD 19 8F      [17] 1829 	call	_setPixel
   8DD4 F1            [10] 1830 	pop	af
   8DD5 F1            [10] 1831 	pop	af
   8DD6 C1            [10] 1832 	pop	bc
                           1833 ;src/game/world.c:352: setPixel(1, scrolly+1, 0);
   8DD7 C5            [11] 1834 	push	bc
   8DD8 AF            [ 4] 1835 	xor	a, a
   8DD9 F5            [11] 1836 	push	af
   8DDA 33            [ 6] 1837 	inc	sp
   8DDB C5            [11] 1838 	push	bc
   8DDC 33            [ 6] 1839 	inc	sp
   8DDD 21 01 00      [10] 1840 	ld	hl, #0x0001
   8DE0 E5            [11] 1841 	push	hl
   8DE1 CD 19 8F      [17] 1842 	call	_setPixel
   8DE4 F1            [10] 1843 	pop	af
   8DE5 F1            [10] 1844 	pop	af
   8DE6 C1            [10] 1845 	pop	bc
                           1846 ;src/game/world.c:353: setPixel(2, scrolly+1, 0);
   8DE7 C5            [11] 1847 	push	bc
   8DE8 AF            [ 4] 1848 	xor	a, a
   8DE9 F5            [11] 1849 	push	af
   8DEA 33            [ 6] 1850 	inc	sp
   8DEB C5            [11] 1851 	push	bc
   8DEC 33            [ 6] 1852 	inc	sp
   8DED 21 02 00      [10] 1853 	ld	hl, #0x0002
   8DF0 E5            [11] 1854 	push	hl
   8DF1 CD 19 8F      [17] 1855 	call	_setPixel
   8DF4 F1            [10] 1856 	pop	af
   8DF5 F1            [10] 1857 	pop	af
   8DF6 C1            [10] 1858 	pop	bc
                           1859 ;src/game/world.c:355: setPixel(1, scrolly+15, 0);
   8DF7 79            [ 4] 1860 	ld	a, c
   8DF8 C6 0F         [ 7] 1861 	add	a, #0x0f
   8DFA 47            [ 4] 1862 	ld	b, a
   8DFB C5            [11] 1863 	push	bc
   8DFC AF            [ 4] 1864 	xor	a, a
   8DFD F5            [11] 1865 	push	af
   8DFE 33            [ 6] 1866 	inc	sp
   8DFF C5            [11] 1867 	push	bc
   8E00 33            [ 6] 1868 	inc	sp
   8E01 21 01 00      [10] 1869 	ld	hl, #0x0001
   8E04 E5            [11] 1870 	push	hl
   8E05 CD 19 8F      [17] 1871 	call	_setPixel
   8E08 F1            [10] 1872 	pop	af
   8E09 F1            [10] 1873 	pop	af
   8E0A C1            [10] 1874 	pop	bc
                           1875 ;src/game/world.c:356: setPixel(0, scrolly+14, 0);
   8E0B 79            [ 4] 1876 	ld	a, c
   8E0C C6 0E         [ 7] 1877 	add	a, #0x0e
   8E0E 47            [ 4] 1878 	ld	b, a
   8E0F C5            [11] 1879 	push	bc
   8E10 AF            [ 4] 1880 	xor	a, a
   8E11 F5            [11] 1881 	push	af
   8E12 33            [ 6] 1882 	inc	sp
   8E13 C5            [11] 1883 	push	bc
   8E14 33            [ 6] 1884 	inc	sp
   8E15 21 00 00      [10] 1885 	ld	hl, #0x0000
   8E18 E5            [11] 1886 	push	hl
   8E19 CD 19 8F      [17] 1887 	call	_setPixel
   8E1C F1            [10] 1888 	pop	af
   8E1D F1            [10] 1889 	pop	af
   8E1E C1            [10] 1890 	pop	bc
                           1891 ;src/game/world.c:357: setPixel(1, scrolly+14, 0);
   8E1F C5            [11] 1892 	push	bc
   8E20 AF            [ 4] 1893 	xor	a, a
   8E21 F5            [11] 1894 	push	af
   8E22 33            [ 6] 1895 	inc	sp
   8E23 C5            [11] 1896 	push	bc
   8E24 33            [ 6] 1897 	inc	sp
   8E25 21 01 00      [10] 1898 	ld	hl, #0x0001
   8E28 E5            [11] 1899 	push	hl
   8E29 CD 19 8F      [17] 1900 	call	_setPixel
   8E2C F1            [10] 1901 	pop	af
   8E2D F1            [10] 1902 	pop	af
   8E2E C1            [10] 1903 	pop	bc
                           1904 ;src/game/world.c:358: setPixel(2, scrolly+14, 0);
   8E2F AF            [ 4] 1905 	xor	a, a
   8E30 F5            [11] 1906 	push	af
   8E31 33            [ 6] 1907 	inc	sp
   8E32 C5            [11] 1908 	push	bc
   8E33 33            [ 6] 1909 	inc	sp
   8E34 21 02 00      [10] 1910 	ld	hl, #0x0002
   8E37 E5            [11] 1911 	push	hl
   8E38 CD 19 8F      [17] 1912 	call	_setPixel
   8E3B DD F9         [10] 1913 	ld	sp,ix
   8E3D DD E1         [14] 1914 	pop	ix
   8E3F C9            [10] 1915 	ret
                           1916 ;src/game/world.c:375: void drawWorld(u8 x_, u8 y_)
                           1917 ;	---------------------------------
                           1918 ; Function drawWorld
                           1919 ; ---------------------------------
   8E40                    1920 _drawWorld::
                           1921 ;src/game/world.c:380: for(iy=0; iy<NBTILE_H;iy++)
   8E40 0E 00         [ 7] 1922 	ld	c, #0x00
                           1923 ;src/game/world.c:382: for(ix=0; ix<NBTILE_W;ix++)
   8E42                    1924 00109$:
   8E42 06 00         [ 7] 1925 	ld	b, #0x00
   8E44                    1926 00103$:
                           1927 ;src/game/world.c:384: drawTile(x_, y_, ix, iy);
   8E44 C5            [11] 1928 	push	bc
   8E45 79            [ 4] 1929 	ld	a, c
   8E46 F5            [11] 1930 	push	af
   8E47 33            [ 6] 1931 	inc	sp
   8E48 C5            [11] 1932 	push	bc
   8E49 33            [ 6] 1933 	inc	sp
   8E4A 21 07 00      [10] 1934 	ld	hl, #7+0
   8E4D 39            [11] 1935 	add	hl, sp
   8E4E 7E            [ 7] 1936 	ld	a, (hl)
   8E4F F5            [11] 1937 	push	af
   8E50 33            [ 6] 1938 	inc	sp
   8E51 21 07 00      [10] 1939 	ld	hl, #7+0
   8E54 39            [11] 1940 	add	hl, sp
   8E55 7E            [ 7] 1941 	ld	a, (hl)
   8E56 F5            [11] 1942 	push	af
   8E57 33            [ 6] 1943 	inc	sp
   8E58 CD DA 8A      [17] 1944 	call	_drawTile
   8E5B F1            [10] 1945 	pop	af
   8E5C F1            [10] 1946 	pop	af
   8E5D C1            [10] 1947 	pop	bc
                           1948 ;src/game/world.c:382: for(ix=0; ix<NBTILE_W;ix++)
   8E5E 04            [ 4] 1949 	inc	b
   8E5F 78            [ 4] 1950 	ld	a, b
   8E60 D6 14         [ 7] 1951 	sub	a, #0x14
   8E62 38 E0         [12] 1952 	jr	C,00103$
                           1953 ;src/game/world.c:380: for(iy=0; iy<NBTILE_H;iy++)
   8E64 0C            [ 4] 1954 	inc	c
   8E65 79            [ 4] 1955 	ld	a, c
   8E66 D6 0C         [ 7] 1956 	sub	a, #0x0c
   8E68 38 D8         [12] 1957 	jr	C,00109$
                           1958 ;src/game/world.c:388: drawScrolls(x_, y_);
   8E6A 21 03 00      [10] 1959 	ld	hl, #3+0
   8E6D 39            [11] 1960 	add	hl, sp
   8E6E 7E            [ 7] 1961 	ld	a, (hl)
   8E6F F5            [11] 1962 	push	af
   8E70 33            [ 6] 1963 	inc	sp
   8E71 21 03 00      [10] 1964 	ld	hl, #3+0
   8E74 39            [11] 1965 	add	hl, sp
   8E75 7E            [ 7] 1966 	ld	a, (hl)
   8E76 F5            [11] 1967 	push	af
   8E77 33            [ 6] 1968 	inc	sp
   8E78 CD 03 8D      [17] 1969 	call	_drawScrolls
   8E7B F1            [10] 1970 	pop	af
   8E7C C9            [10] 1971 	ret
                           1972 ;src/game/world.c:395: void setTrainHeading(u8 i)
                           1973 ;	---------------------------------
                           1974 ; Function setTrainHeading
                           1975 ; ---------------------------------
   8E7D                    1976 _setTrainHeading::
   8E7D DD E5         [15] 1977 	push	ix
   8E7F DD 21 00 00   [14] 1978 	ld	ix,#0
   8E83 DD 39         [15] 1979 	add	ix,sp
                           1980 ;src/game/world.c:399: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   8E85 DD 6E 04      [19] 1981 	ld	l, 4 (ix)
   8E88 26 00         [ 7] 1982 	ld	h, #0x00
   8E8A 29            [11] 1983 	add	hl, hl
   8E8B 29            [11] 1984 	add	hl, hl
   8E8C 29            [11] 1985 	add	hl, hl
   8E8D 29            [11] 1986 	add	hl, hl
   8E8E 4D            [ 4] 1987 	ld	c, l
   8E8F 44            [ 4] 1988 	ld	b, h
   8E90 FD 21 B5 83   [14] 1989 	ld	iy, #_trainList
   8E94 FD 7E 00      [19] 1990 	ld	a, 0 (iy)
   8E97 81            [ 4] 1991 	add	a, c
   8E98 5F            [ 4] 1992 	ld	e, a
   8E99 FD 7E 01      [19] 1993 	ld	a, 1 (iy)
   8E9C 88            [ 4] 1994 	adc	a, b
   8E9D 57            [ 4] 1995 	ld	d, a
   8E9E 6B            [ 4] 1996 	ld	l, e
   8E9F 62            [ 4] 1997 	ld	h, d
   8EA0 01 05 00      [10] 1998 	ld	bc, #0x0005
   8EA3 09            [11] 1999 	add	hl, bc
   8EA4 4E            [ 7] 2000 	ld	c, (hl)
   8EA5 06 00         [ 7] 2001 	ld	b,#0x00
   8EA7 69            [ 4] 2002 	ld	l, c
   8EA8 60            [ 4] 2003 	ld	h, b
   8EA9 29            [11] 2004 	add	hl, hl
   8EAA 29            [11] 2005 	add	hl, hl
   8EAB 09            [11] 2006 	add	hl, bc
   8EAC 29            [11] 2007 	add	hl, hl
   8EAD 29            [11] 2008 	add	hl, hl
   8EAE 29            [11] 2009 	add	hl, hl
   8EAF 29            [11] 2010 	add	hl, hl
   8EB0 4D            [ 4] 2011 	ld	c, l
   8EB1 44            [ 4] 2012 	ld	b, h
   8EB2 6B            [ 4] 2013 	ld	l, e
   8EB3 62            [ 4] 2014 	ld	h, d
   8EB4 23            [ 6] 2015 	inc	hl
   8EB5 23            [ 6] 2016 	inc	hl
   8EB6 23            [ 6] 2017 	inc	hl
   8EB7 23            [ 6] 2018 	inc	hl
   8EB8 6E            [ 7] 2019 	ld	l, (hl)
   8EB9 26 00         [ 7] 2020 	ld	h, #0x00
   8EBB 09            [11] 2021 	add	hl, bc
   8EBC 01 B5 74      [10] 2022 	ld	bc, #_p_world
   8EBF 09            [11] 2023 	add	hl, bc
   8EC0 4E            [ 7] 2024 	ld	c, (hl)
                           2025 ;src/game/world.c:402: if(trainList[i].heading==1) trainList[i].heading=2;
   8EC1 21 06 00      [10] 2026 	ld	hl, #0x0006
   8EC4 19            [11] 2027 	add	hl, de
                           2028 ;src/game/world.c:399: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   8EC5 79            [ 4] 2029 	ld	a,c
   8EC6 FE 12         [ 7] 2030 	cp	a,#0x12
   8EC8 28 0E         [12] 2031 	jr	Z,00101$
   8ECA FE 13         [ 7] 2032 	cp	a,#0x13
   8ECC 28 1A         [12] 2033 	jr	Z,00107$
   8ECE FE 14         [ 7] 2034 	cp	a,#0x14
   8ED0 28 26         [12] 2035 	jr	Z,00113$
   8ED2 D6 15         [ 7] 2036 	sub	a, #0x15
   8ED4 28 32         [12] 2037 	jr	Z,00119$
   8ED6 18 3E         [12] 2038 	jr	00126$
                           2039 ;src/game/world.c:401: case REN:
   8ED8                    2040 00101$:
                           2041 ;src/game/world.c:402: if(trainList[i].heading==1) trainList[i].heading=2;
   8ED8 7E            [ 7] 2042 	ld	a, (hl)
   8ED9 FE 01         [ 7] 2043 	cp	a, #0x01
   8EDB 20 04         [12] 2044 	jr	NZ,00105$
   8EDD 36 02         [10] 2045 	ld	(hl), #0x02
   8EDF 18 35         [12] 2046 	jr	00126$
   8EE1                    2047 00105$:
                           2048 ;src/game/world.c:403: else if(trainList[i].heading==3) trainList[i].heading=0;
   8EE1 D6 03         [ 7] 2049 	sub	a,#0x03
   8EE3 20 31         [12] 2050 	jr	NZ,00126$
   8EE5 77            [ 7] 2051 	ld	(hl),a
                           2052 ;src/game/world.c:404: break;
   8EE6 18 2E         [12] 2053 	jr	00126$
                           2054 ;src/game/world.c:406: case RES:
   8EE8                    2055 00107$:
                           2056 ;src/game/world.c:407: if(trainList[i].heading==1) trainList[i].heading=3;
   8EE8 7E            [ 7] 2057 	ld	a, (hl)
   8EE9 FE 01         [ 7] 2058 	cp	a, #0x01
   8EEB 20 04         [12] 2059 	jr	NZ,00111$
   8EED 36 03         [10] 2060 	ld	(hl), #0x03
   8EEF 18 25         [12] 2061 	jr	00126$
   8EF1                    2062 00111$:
                           2063 ;src/game/world.c:408: else if(trainList[i].heading==2) trainList[i].heading=0;
   8EF1 D6 02         [ 7] 2064 	sub	a,#0x02
   8EF3 20 21         [12] 2065 	jr	NZ,00126$
   8EF5 77            [ 7] 2066 	ld	(hl),a
                           2067 ;src/game/world.c:409: break;
   8EF6 18 1E         [12] 2068 	jr	00126$
                           2069 ;src/game/world.c:411: case RWN:
   8EF8                    2070 00113$:
                           2071 ;src/game/world.c:412: if(trainList[i].heading==0) trainList[i].heading=2;   
   8EF8 7E            [ 7] 2072 	ld	a, (hl)
   8EF9 B7            [ 4] 2073 	or	a, a
   8EFA 20 04         [12] 2074 	jr	NZ,00117$
   8EFC 36 02         [10] 2075 	ld	(hl), #0x02
   8EFE 18 16         [12] 2076 	jr	00126$
   8F00                    2077 00117$:
                           2078 ;src/game/world.c:413: else if(trainList[i].heading==3) trainList[i].heading=1;
   8F00 D6 03         [ 7] 2079 	sub	a, #0x03
   8F02 20 12         [12] 2080 	jr	NZ,00126$
   8F04 36 01         [10] 2081 	ld	(hl), #0x01
                           2082 ;src/game/world.c:414: break;
   8F06 18 0E         [12] 2083 	jr	00126$
                           2084 ;src/game/world.c:416: case RWS:
   8F08                    2085 00119$:
                           2086 ;src/game/world.c:417: if(trainList[i].heading==0) trainList[i].heading=3;
   8F08 7E            [ 7] 2087 	ld	a, (hl)
   8F09 B7            [ 4] 2088 	or	a, a
   8F0A 20 04         [12] 2089 	jr	NZ,00123$
   8F0C 36 03         [10] 2090 	ld	(hl), #0x03
   8F0E 18 06         [12] 2091 	jr	00126$
   8F10                    2092 00123$:
                           2093 ;src/game/world.c:418: else if(trainList[i].heading==2) trainList[i].heading=1;
   8F10 D6 02         [ 7] 2094 	sub	a, #0x02
   8F12 20 02         [12] 2095 	jr	NZ,00126$
   8F14 36 01         [10] 2096 	ld	(hl), #0x01
                           2097 ;src/game/world.c:420: }
   8F16                    2098 00126$:
   8F16 DD E1         [14] 2099 	pop	ix
   8F18 C9            [10] 2100 	ret
                           2101 ;src/game/world.c:423: void setPixel(int nX, unsigned char nY, unsigned char nColor)
                           2102 ;	---------------------------------
                           2103 ; Function setPixel
                           2104 ; ---------------------------------
   8F19                    2105 _setPixel::
   8F19 DD E5         [15] 2106 	push	ix
   8F1B DD 21 00 00   [14] 2107 	ld	ix,#0
   8F1F DD 39         [15] 2108 	add	ix,sp
   8F21 F5            [11] 2109 	push	af
                           2110 ;src/game/world.c:428: int nPixel = nX % 4;
   8F22 21 04 00      [10] 2111 	ld	hl, #0x0004
   8F25 E5            [11] 2112 	push	hl
   8F26 DD 6E 04      [19] 2113 	ld	l,4 (ix)
   8F29 DD 66 05      [19] 2114 	ld	h,5 (ix)
   8F2C E5            [11] 2115 	push	hl
   8F2D CD B2 67      [17] 2116 	call	__modsint
   8F30 F1            [10] 2117 	pop	af
   8F31 F1            [10] 2118 	pop	af
   8F32 EB            [ 4] 2119 	ex	de,hl
                           2120 ;src/game/world.c:429: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   8F33 DD 7E 06      [19] 2121 	ld	a, 6 (ix)
   8F36 0F            [ 4] 2122 	rrca
   8F37 0F            [ 4] 2123 	rrca
   8F38 0F            [ 4] 2124 	rrca
   8F39 E6 1F         [ 7] 2125 	and	a, #0x1f
   8F3B 4F            [ 4] 2126 	ld	c,a
   8F3C 06 00         [ 7] 2127 	ld	b,#0x00
   8F3E 69            [ 4] 2128 	ld	l, c
   8F3F 60            [ 4] 2129 	ld	h, b
   8F40 29            [11] 2130 	add	hl, hl
   8F41 29            [11] 2131 	add	hl, hl
   8F42 09            [11] 2132 	add	hl, bc
   8F43 29            [11] 2133 	add	hl, hl
   8F44 29            [11] 2134 	add	hl, hl
   8F45 29            [11] 2135 	add	hl, hl
   8F46 29            [11] 2136 	add	hl, hl
   8F47 01 00 C0      [10] 2137 	ld	bc, #0xc000
   8F4A 09            [11] 2138 	add	hl, bc
   8F4B DD 7E 06      [19] 2139 	ld	a, 6 (ix)
   8F4E E6 07         [ 7] 2140 	and	a, #0x07
   8F50 07            [ 4] 2141 	rlca
   8F51 07            [ 4] 2142 	rlca
   8F52 07            [ 4] 2143 	rlca
   8F53 E6 F8         [ 7] 2144 	and	a, #0xf8
   8F55 47            [ 4] 2145 	ld	b, a
   8F56 0E 00         [ 7] 2146 	ld	c, #0x00
   8F58 09            [11] 2147 	add	hl, bc
   8F59 DD 4E 04      [19] 2148 	ld	c,4 (ix)
   8F5C DD 46 05      [19] 2149 	ld	b,5 (ix)
   8F5F CB 78         [ 8] 2150 	bit	7, b
   8F61 28 03         [12] 2151 	jr	Z,00128$
   8F63 03            [ 6] 2152 	inc	bc
   8F64 03            [ 6] 2153 	inc	bc
   8F65 03            [ 6] 2154 	inc	bc
   8F66                    2155 00128$:
   8F66 CB 28         [ 8] 2156 	sra	b
   8F68 CB 19         [ 8] 2157 	rr	c
   8F6A CB 28         [ 8] 2158 	sra	b
   8F6C CB 19         [ 8] 2159 	rr	c
   8F6E 09            [11] 2160 	add	hl, bc
                           2161 ;src/game/world.c:433: *pAddress &= 119;
   8F6F 4E            [ 7] 2162 	ld	c, (hl)
                           2163 ;src/game/world.c:435: if(nColor & 1)
   8F70 DD 7E 07      [19] 2164 	ld	a, 7 (ix)
   8F73 E6 01         [ 7] 2165 	and	a, #0x01
   8F75 DD 77 FE      [19] 2166 	ld	-2 (ix), a
                           2167 ;src/game/world.c:437: if(nColor & 2)
   8F78 DD 7E 07      [19] 2168 	ld	a, 7 (ix)
   8F7B E6 02         [ 7] 2169 	and	a, #0x02
   8F7D DD 77 FF      [19] 2170 	ld	-1 (ix), a
                           2171 ;src/game/world.c:431: if(nPixel == 0)
   8F80 7A            [ 4] 2172 	ld	a, d
   8F81 B3            [ 4] 2173 	or	a,e
   8F82 20 18         [12] 2174 	jr	NZ,00124$
                           2175 ;src/game/world.c:433: *pAddress &= 119;
   8F84 79            [ 4] 2176 	ld	a, c
   8F85 E6 77         [ 7] 2177 	and	a, #0x77
   8F87 77            [ 7] 2178 	ld	(hl), a
                           2179 ;src/game/world.c:435: if(nColor & 1)
   8F88 DD 7E FE      [19] 2180 	ld	a, -2 (ix)
   8F8B B7            [ 4] 2181 	or	a, a
   8F8C 28 03         [12] 2182 	jr	Z,00102$
                           2183 ;src/game/world.c:436: *pAddress |= 128;
   8F8E CB FE         [15] 2184 	set	7, (hl)
   8F90 7E            [ 7] 2185 	ld	a, (hl)
   8F91                    2186 00102$:
                           2187 ;src/game/world.c:437: if(nColor & 2)
   8F91 DD 7E FF      [19] 2188 	ld	a, -1 (ix)
   8F94 B7            [ 4] 2189 	or	a, a
   8F95 28 56         [12] 2190 	jr	Z,00126$
                           2191 ;src/game/world.c:438: *pAddress |= 8;
   8F97 CB DE         [15] 2192 	set	3, (hl)
   8F99 7E            [ 7] 2193 	ld	a, (hl)
   8F9A 18 51         [12] 2194 	jr	00126$
   8F9C                    2195 00124$:
                           2196 ;src/game/world.c:440: else if(nPixel == 1)
   8F9C 7B            [ 4] 2197 	ld	a, e
   8F9D 3D            [ 4] 2198 	dec	a
   8F9E B2            [ 4] 2199 	or	a, d
   8F9F 20 18         [12] 2200 	jr	NZ,00121$
                           2201 ;src/game/world.c:442: *pAddress &= 187;
   8FA1 79            [ 4] 2202 	ld	a, c
   8FA2 E6 BB         [ 7] 2203 	and	a, #0xbb
   8FA4 77            [ 7] 2204 	ld	(hl), a
                           2205 ;src/game/world.c:444: if(nColor & 1)
   8FA5 DD 7E FE      [19] 2206 	ld	a, -2 (ix)
   8FA8 B7            [ 4] 2207 	or	a, a
   8FA9 28 03         [12] 2208 	jr	Z,00106$
                           2209 ;src/game/world.c:445: *pAddress |= 64;
   8FAB CB F6         [15] 2210 	set	6, (hl)
   8FAD 7E            [ 7] 2211 	ld	a, (hl)
   8FAE                    2212 00106$:
                           2213 ;src/game/world.c:446: if(nColor & 2)
   8FAE DD 7E FF      [19] 2214 	ld	a, -1 (ix)
   8FB1 B7            [ 4] 2215 	or	a, a
   8FB2 28 39         [12] 2216 	jr	Z,00126$
                           2217 ;src/game/world.c:447: *pAddress |= 4;
   8FB4 CB D6         [15] 2218 	set	2, (hl)
   8FB6 7E            [ 7] 2219 	ld	a, (hl)
   8FB7 18 34         [12] 2220 	jr	00126$
   8FB9                    2221 00121$:
                           2222 ;src/game/world.c:449: else if(nPixel == 2)
   8FB9 7B            [ 4] 2223 	ld	a, e
   8FBA D6 02         [ 7] 2224 	sub	a, #0x02
   8FBC B2            [ 4] 2225 	or	a, d
   8FBD 20 18         [12] 2226 	jr	NZ,00118$
                           2227 ;src/game/world.c:451: *pAddress &= 221;
   8FBF 79            [ 4] 2228 	ld	a, c
   8FC0 E6 DD         [ 7] 2229 	and	a, #0xdd
   8FC2 77            [ 7] 2230 	ld	(hl), a
                           2231 ;src/game/world.c:453: if(nColor & 1)
   8FC3 DD 7E FE      [19] 2232 	ld	a, -2 (ix)
   8FC6 B7            [ 4] 2233 	or	a, a
   8FC7 28 03         [12] 2234 	jr	Z,00110$
                           2235 ;src/game/world.c:454: *pAddress |= 32;
   8FC9 CB EE         [15] 2236 	set	5, (hl)
   8FCB 7E            [ 7] 2237 	ld	a, (hl)
   8FCC                    2238 00110$:
                           2239 ;src/game/world.c:455: if(nColor & 2)
   8FCC DD 7E FF      [19] 2240 	ld	a, -1 (ix)
   8FCF B7            [ 4] 2241 	or	a, a
   8FD0 28 1B         [12] 2242 	jr	Z,00126$
                           2243 ;src/game/world.c:456: *pAddress |= 2;
   8FD2 CB CE         [15] 2244 	set	1, (hl)
   8FD4 7E            [ 7] 2245 	ld	a, (hl)
   8FD5 18 16         [12] 2246 	jr	00126$
   8FD7                    2247 00118$:
                           2248 ;src/game/world.c:460: *pAddress &= 238;
   8FD7 79            [ 4] 2249 	ld	a, c
   8FD8 E6 EE         [ 7] 2250 	and	a, #0xee
   8FDA 77            [ 7] 2251 	ld	(hl), a
                           2252 ;src/game/world.c:462: if(nColor & 1)
   8FDB DD 7E FE      [19] 2253 	ld	a, -2 (ix)
   8FDE B7            [ 4] 2254 	or	a, a
   8FDF 28 03         [12] 2255 	jr	Z,00114$
                           2256 ;src/game/world.c:463: *pAddress |= 16;
   8FE1 CB E6         [15] 2257 	set	4, (hl)
   8FE3 7E            [ 7] 2258 	ld	a, (hl)
   8FE4                    2259 00114$:
                           2260 ;src/game/world.c:464: if(nColor & 2)
   8FE4 DD 7E FF      [19] 2261 	ld	a, -1 (ix)
   8FE7 B7            [ 4] 2262 	or	a, a
   8FE8 28 03         [12] 2263 	jr	Z,00126$
                           2264 ;src/game/world.c:465: *pAddress |= 1;
   8FEA CB C6         [15] 2265 	set	0, (hl)
   8FEC 7E            [ 7] 2266 	ld	a, (hl)
   8FED                    2267 00126$:
   8FED DD F9         [10] 2268 	ld	sp, ix
   8FEF DD E1         [14] 2269 	pop	ix
   8FF1 C9            [10] 2270 	ret
                           2271 ;src/game/world.c:469: u8 isPixelBlack(int nX, unsigned char nY)
                           2272 ;	---------------------------------
                           2273 ; Function isPixelBlack
                           2274 ; ---------------------------------
   8FF2                    2275 _isPixelBlack::
   8FF2 DD E5         [15] 2276 	push	ix
   8FF4 DD 21 00 00   [14] 2277 	ld	ix,#0
   8FF8 DD 39         [15] 2278 	add	ix,sp
                           2279 ;src/game/world.c:472: int nPixel = nX % 4;
   8FFA 21 04 00      [10] 2280 	ld	hl, #0x0004
   8FFD E5            [11] 2281 	push	hl
   8FFE DD 6E 04      [19] 2282 	ld	l,4 (ix)
   9001 DD 66 05      [19] 2283 	ld	h,5 (ix)
   9004 E5            [11] 2284 	push	hl
   9005 CD B2 67      [17] 2285 	call	__modsint
   9008 F1            [10] 2286 	pop	af
   9009 F1            [10] 2287 	pop	af
   900A 4D            [ 4] 2288 	ld	c, l
   900B 44            [ 4] 2289 	ld	b, h
                           2290 ;src/game/world.c:475: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   900C DD 7E 06      [19] 2291 	ld	a, 6 (ix)
   900F 0F            [ 4] 2292 	rrca
   9010 0F            [ 4] 2293 	rrca
   9011 0F            [ 4] 2294 	rrca
   9012 E6 1F         [ 7] 2295 	and	a, #0x1f
   9014 5F            [ 4] 2296 	ld	e,a
   9015 16 00         [ 7] 2297 	ld	d,#0x00
   9017 6B            [ 4] 2298 	ld	l, e
   9018 62            [ 4] 2299 	ld	h, d
   9019 29            [11] 2300 	add	hl, hl
   901A 29            [11] 2301 	add	hl, hl
   901B 19            [11] 2302 	add	hl, de
   901C 29            [11] 2303 	add	hl, hl
   901D 29            [11] 2304 	add	hl, hl
   901E 29            [11] 2305 	add	hl, hl
   901F 29            [11] 2306 	add	hl, hl
   9020 11 00 C0      [10] 2307 	ld	de, #0xc000
   9023 19            [11] 2308 	add	hl, de
   9024 DD 7E 06      [19] 2309 	ld	a, 6 (ix)
   9027 E6 07         [ 7] 2310 	and	a, #0x07
   9029 07            [ 4] 2311 	rlca
   902A 07            [ 4] 2312 	rlca
   902B 07            [ 4] 2313 	rlca
   902C E6 F8         [ 7] 2314 	and	a, #0xf8
   902E 57            [ 4] 2315 	ld	d, a
   902F 1E 00         [ 7] 2316 	ld	e, #0x00
   9031 19            [11] 2317 	add	hl, de
   9032 DD 5E 04      [19] 2318 	ld	e,4 (ix)
   9035 DD 56 05      [19] 2319 	ld	d,5 (ix)
   9038 CB 7A         [ 8] 2320 	bit	7, d
   903A 28 03         [12] 2321 	jr	Z,00118$
   903C 13            [ 6] 2322 	inc	de
   903D 13            [ 6] 2323 	inc	de
   903E 13            [ 6] 2324 	inc	de
   903F                    2325 00118$:
   903F CB 2A         [ 8] 2326 	sra	d
   9041 CB 1B         [ 8] 2327 	rr	e
   9043 CB 2A         [ 8] 2328 	sra	d
   9045 CB 1B         [ 8] 2329 	rr	e
   9047 19            [11] 2330 	add	hl, de
                           2331 ;src/game/world.c:478: if(nPixel == 0 && !(*pAddress & 136)) 
   9048 78            [ 4] 2332 	ld	a, b
   9049 B1            [ 4] 2333 	or	a,c
   904A 20 09         [12] 2334 	jr	NZ,00113$
   904C 7E            [ 7] 2335 	ld	a, (hl)
   904D E6 88         [ 7] 2336 	and	a, #0x88
   904F 20 04         [12] 2337 	jr	NZ,00113$
                           2338 ;src/game/world.c:479: return 1;
   9051 2E 01         [ 7] 2339 	ld	l, #0x01
   9053 18 2E         [12] 2340 	jr	00116$
   9055                    2341 00113$:
                           2342 ;src/game/world.c:480: else if(nPixel == 1 && !(*pAddress & 68))
   9055 79            [ 4] 2343 	ld	a, c
   9056 3D            [ 4] 2344 	dec	a
   9057 B0            [ 4] 2345 	or	a, b
   9058 20 09         [12] 2346 	jr	NZ,00109$
   905A 7E            [ 7] 2347 	ld	a, (hl)
   905B E6 44         [ 7] 2348 	and	a, #0x44
   905D 20 04         [12] 2349 	jr	NZ,00109$
                           2350 ;src/game/world.c:481: return 1;
   905F 2E 01         [ 7] 2351 	ld	l, #0x01
   9061 18 20         [12] 2352 	jr	00116$
   9063                    2353 00109$:
                           2354 ;src/game/world.c:482: else if(nPixel == 2 && !(*pAddress & 34))
   9063 79            [ 4] 2355 	ld	a, c
   9064 D6 02         [ 7] 2356 	sub	a, #0x02
   9066 B0            [ 4] 2357 	or	a, b
   9067 20 09         [12] 2358 	jr	NZ,00105$
   9069 7E            [ 7] 2359 	ld	a, (hl)
   906A E6 22         [ 7] 2360 	and	a, #0x22
   906C 20 04         [12] 2361 	jr	NZ,00105$
                           2362 ;src/game/world.c:483: return 1;
   906E 2E 01         [ 7] 2363 	ld	l, #0x01
   9070 18 11         [12] 2364 	jr	00116$
   9072                    2365 00105$:
                           2366 ;src/game/world.c:484: else if(nPixel == 3 && !(*pAddress & 17))
   9072 79            [ 4] 2367 	ld	a, c
   9073 D6 03         [ 7] 2368 	sub	a, #0x03
   9075 B0            [ 4] 2369 	or	a, b
   9076 20 09         [12] 2370 	jr	NZ,00110$
   9078 7E            [ 7] 2371 	ld	a, (hl)
   9079 E6 11         [ 7] 2372 	and	a, #0x11
   907B 20 04         [12] 2373 	jr	NZ,00110$
                           2374 ;src/game/world.c:485: return 1;
   907D 2E 01         [ 7] 2375 	ld	l, #0x01
   907F 18 02         [12] 2376 	jr	00116$
   9081                    2377 00110$:
                           2378 ;src/game/world.c:487: return 0;
   9081 2E 00         [ 7] 2379 	ld	l, #0x00
   9083                    2380 00116$:
   9083 DD E1         [14] 2381 	pop	ix
   9085 C9            [10] 2382 	ret
                           2383 ;src/game/world.c:490: void drawTrains(u8 x_, u8 y_)
                           2384 ;	---------------------------------
                           2385 ; Function drawTrains
                           2386 ; ---------------------------------
   9086                    2387 _drawTrains::
   9086 DD E5         [15] 2388 	push	ix
   9088 DD 21 00 00   [14] 2389 	ld	ix,#0
   908C DD 39         [15] 2390 	add	ix,sp
   908E 21 EA FF      [10] 2391 	ld	hl, #-22
   9091 39            [11] 2392 	add	hl, sp
   9092 F9            [ 6] 2393 	ld	sp, hl
                           2394 ;src/game/world.c:497: for(i=0; i<nbTrainList; i++)
   9093 DD 7E 05      [19] 2395 	ld	a, 5 (ix)
   9096 07            [ 4] 2396 	rlca
   9097 07            [ 4] 2397 	rlca
   9098 07            [ 4] 2398 	rlca
   9099 07            [ 4] 2399 	rlca
   909A E6 F0         [ 7] 2400 	and	a, #0xf0
   909C DD 77 FD      [19] 2401 	ld	-3 (ix), a
   909F DD 36 F0 00   [19] 2402 	ld	-16 (ix), #0x00
   90A3                    2403 00133$:
   90A3 21 BA 83      [10] 2404 	ld	hl, #_nbTrainList
   90A6 DD 7E F0      [19] 2405 	ld	a, -16 (ix)
   90A9 96            [ 7] 2406 	sub	a, (hl)
   90AA D2 01 9A      [10] 2407 	jp	NC, 00135$
                           2408 ;src/game/world.c:500: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   90AD DD 7E F0      [19] 2409 	ld	a, -16 (ix)
   90B0 DD 77 F9      [19] 2410 	ld	-7 (ix), a
   90B3 DD 36 FA 00   [19] 2411 	ld	-6 (ix), #0x00
   90B7 3E 05         [ 7] 2412 	ld	a, #0x04+1
   90B9 18 08         [12] 2413 	jr	00209$
   90BB                    2414 00208$:
   90BB DD CB F9 26   [23] 2415 	sla	-7 (ix)
   90BF DD CB FA 16   [23] 2416 	rl	-6 (ix)
   90C3                    2417 00209$:
   90C3 3D            [ 4] 2418 	dec	a
   90C4 20 F5         [12] 2419 	jr	NZ,00208$
   90C6 FD 21 B5 83   [14] 2420 	ld	iy, #_trainList
   90CA FD 7E 00      [19] 2421 	ld	a, 0 (iy)
   90CD DD 86 F9      [19] 2422 	add	a, -7 (ix)
   90D0 DD 77 F1      [19] 2423 	ld	-15 (ix), a
   90D3 FD 7E 01      [19] 2424 	ld	a, 1 (iy)
   90D6 DD 8E FA      [19] 2425 	adc	a, -6 (ix)
   90D9 DD 77 F2      [19] 2426 	ld	-14 (ix), a
   90DC DD 7E F1      [19] 2427 	ld	a, -15 (ix)
   90DF DD 77 FB      [19] 2428 	ld	-5 (ix), a
   90E2 DD 7E F2      [19] 2429 	ld	a, -14 (ix)
   90E5 DD 77 FC      [19] 2430 	ld	-4 (ix), a
   90E8 DD 6E FB      [19] 2431 	ld	l,-5 (ix)
   90EB DD 66 FC      [19] 2432 	ld	h,-4 (ix)
   90EE 11 04 00      [10] 2433 	ld	de, #0x0004
   90F1 19            [11] 2434 	add	hl, de
   90F2 7E            [ 7] 2435 	ld	a, (hl)
   90F3 DD 77 FB      [19] 2436 	ld	-5 (ix), a
   90F6 DD 77 FB      [19] 2437 	ld	-5 (ix), a
   90F9 DD 36 FC 00   [19] 2438 	ld	-4 (ix), #0x00
   90FD DD 7E 04      [19] 2439 	ld	a, 4 (ix)
   9100 DD 77 FE      [19] 2440 	ld	-2 (ix), a
   9103 DD 36 FF 00   [19] 2441 	ld	-1 (ix), #0x00
   9107 DD 7E FB      [19] 2442 	ld	a, -5 (ix)
   910A DD 96 FE      [19] 2443 	sub	a, -2 (ix)
   910D DD 77 FB      [19] 2444 	ld	-5 (ix), a
   9110 DD 7E FC      [19] 2445 	ld	a, -4 (ix)
   9113 DD 9E FF      [19] 2446 	sbc	a, -1 (ix)
   9116 DD 77 FC      [19] 2447 	ld	-4 (ix), a
   9119 DD 7E FB      [19] 2448 	ld	a, -5 (ix)
   911C D6 14         [ 7] 2449 	sub	a, #0x14
   911E DD 7E FC      [19] 2450 	ld	a, -4 (ix)
   9121 17            [ 4] 2451 	rla
   9122 3F            [ 4] 2452 	ccf
   9123 1F            [ 4] 2453 	rra
   9124 DE 80         [ 7] 2454 	sbc	a, #0x80
   9126 D2 FB 99      [10] 2455 	jp	NC, 00134$
   9129 DD 6E F1      [19] 2456 	ld	l,-15 (ix)
   912C DD 66 F2      [19] 2457 	ld	h,-14 (ix)
   912F 11 05 00      [10] 2458 	ld	de, #0x0005
   9132 19            [11] 2459 	add	hl, de
   9133 6E            [ 7] 2460 	ld	l, (hl)
   9134 26 00         [ 7] 2461 	ld	h, #0x00
   9136 DD 4E 05      [19] 2462 	ld	c, 5 (ix)
   9139 06 00         [ 7] 2463 	ld	b, #0x00
   913B BF            [ 4] 2464 	cp	a, a
   913C ED 42         [15] 2465 	sbc	hl, bc
   913E 7D            [ 4] 2466 	ld	a, l
   913F D6 0C         [ 7] 2467 	sub	a, #0x0c
   9141 7C            [ 4] 2468 	ld	a, h
   9142 17            [ 4] 2469 	rla
   9143 3F            [ 4] 2470 	ccf
   9144 1F            [ 4] 2471 	rra
   9145 DE 80         [ 7] 2472 	sbc	a, #0x80
   9147 D2 FB 99      [10] 2473 	jp	NC, 00134$
   914A DD CB FC 7E   [20] 2474 	bit	7, -4 (ix)
   914E C2 FB 99      [10] 2475 	jp	NZ, 00134$
   9151 CB 7C         [ 8] 2476 	bit	7, h
   9153 C2 FB 99      [10] 2477 	jp	NZ, 00134$
                           2478 ;src/game/world.c:503: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   9156 DD 6E F1      [19] 2479 	ld	l,-15 (ix)
   9159 DD 66 F2      [19] 2480 	ld	h,-14 (ix)
   915C 11 09 00      [10] 2481 	ld	de, #0x0009
   915F 19            [11] 2482 	add	hl, de
   9160 4E            [ 7] 2483 	ld	c, (hl)
   9161 23            [ 6] 2484 	inc	hl
   9162 46            [ 7] 2485 	ld	b, (hl)
   9163 DD 7E FD      [19] 2486 	ld	a, -3 (ix)
   9166 DD 77 FB      [19] 2487 	ld	-5 (ix), a
   9169 79            [ 4] 2488 	ld	a, c
   916A DD 96 FB      [19] 2489 	sub	a, -5 (ix)
   916D 57            [ 4] 2490 	ld	d, a
   916E DD 6E F1      [19] 2491 	ld	l,-15 (ix)
   9171 DD 66 F2      [19] 2492 	ld	h,-14 (ix)
   9174 01 07 00      [10] 2493 	ld	bc, #0x0007
   9177 09            [11] 2494 	add	hl, bc
   9178 4E            [ 7] 2495 	ld	c, (hl)
   9179 23            [ 6] 2496 	inc	hl
   917A 46            [ 7] 2497 	ld	b, (hl)
   917B 3E 05         [ 7] 2498 	ld	a, #0x04+1
   917D 18 08         [12] 2499 	jr	00211$
   917F                    2500 00210$:
   917F DD CB FE 26   [23] 2501 	sla	-2 (ix)
   9183 DD CB FF 16   [23] 2502 	rl	-1 (ix)
   9187                    2503 00211$:
   9187 3D            [ 4] 2504 	dec	a
   9188 20 F5         [12] 2505 	jr	NZ,00210$
   918A 79            [ 4] 2506 	ld	a, c
   918B DD 96 FE      [19] 2507 	sub	a, -2 (ix)
   918E 4F            [ 4] 2508 	ld	c, a
   918F 78            [ 4] 2509 	ld	a, b
   9190 DD 9E FF      [19] 2510 	sbc	a, -1 (ix)
   9193 47            [ 4] 2511 	ld	b, a
   9194 3E 03         [ 7] 2512 	ld	a, #0x03
   9196 F5            [11] 2513 	push	af
   9197 33            [ 6] 2514 	inc	sp
   9198 D5            [11] 2515 	push	de
   9199 33            [ 6] 2516 	inc	sp
   919A C5            [11] 2517 	push	bc
   919B CD 19 8F      [17] 2518 	call	_setPixel
   919E F1            [10] 2519 	pop	af
   919F F1            [10] 2520 	pop	af
                           2521 ;src/game/world.c:504: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
   91A0 FD 2A B5 83   [20] 2522 	ld	iy, (_trainList)
   91A4 DD 5E F9      [19] 2523 	ld	e,-7 (ix)
   91A7 DD 56 FA      [19] 2524 	ld	d,-6 (ix)
   91AA FD 19         [15] 2525 	add	iy, de
   91AC FD E5         [15] 2526 	push	iy
   91AE E1            [10] 2527 	pop	hl
   91AF 11 0D 00      [10] 2528 	ld	de, #0x000d
   91B2 19            [11] 2529 	add	hl, de
   91B3 4E            [ 7] 2530 	ld	c, (hl)
   91B4 23            [ 6] 2531 	inc	hl
   91B5 46            [ 7] 2532 	ld	b, (hl)
   91B6 79            [ 4] 2533 	ld	a, c
   91B7 DD 96 FB      [19] 2534 	sub	a, -5 (ix)
   91BA 57            [ 4] 2535 	ld	d, a
   91BB FD E5         [15] 2536 	push	iy
   91BD E1            [10] 2537 	pop	hl
   91BE 01 0B 00      [10] 2538 	ld	bc, #0x000b
   91C1 09            [11] 2539 	add	hl, bc
   91C2 4E            [ 7] 2540 	ld	c, (hl)
   91C3 23            [ 6] 2541 	inc	hl
   91C4 46            [ 7] 2542 	ld	b, (hl)
   91C5 79            [ 4] 2543 	ld	a, c
   91C6 DD 96 FE      [19] 2544 	sub	a, -2 (ix)
   91C9 4F            [ 4] 2545 	ld	c, a
   91CA 78            [ 4] 2546 	ld	a, b
   91CB DD 9E FF      [19] 2547 	sbc	a, -1 (ix)
   91CE 47            [ 4] 2548 	ld	b, a
   91CF 3E 02         [ 7] 2549 	ld	a, #0x02
   91D1 F5            [11] 2550 	push	af
   91D2 33            [ 6] 2551 	inc	sp
   91D3 D5            [11] 2552 	push	de
   91D4 33            [ 6] 2553 	inc	sp
   91D5 C5            [11] 2554 	push	bc
   91D6 CD 19 8F      [17] 2555 	call	_setPixel
   91D9 F1            [10] 2556 	pop	af
   91DA F1            [10] 2557 	pop	af
                           2558 ;src/game/world.c:507: oldTrainX = trainList[i].animOldX;
   91DB FD 21 B5 83   [14] 2559 	ld	iy, #_trainList
   91DF FD 7E 00      [19] 2560 	ld	a, 0 (iy)
   91E2 DD 86 F9      [19] 2561 	add	a, -7 (ix)
   91E5 5F            [ 4] 2562 	ld	e, a
   91E6 FD 7E 01      [19] 2563 	ld	a, 1 (iy)
   91E9 DD 8E FA      [19] 2564 	adc	a, -6 (ix)
   91EC 57            [ 4] 2565 	ld	d, a
   91ED 21 0B 00      [10] 2566 	ld	hl, #0x000b
   91F0 19            [11] 2567 	add	hl,de
   91F1 4D            [ 4] 2568 	ld	c, l
   91F2 44            [ 4] 2569 	ld	b, h
   91F3 0A            [ 7] 2570 	ld	a, (bc)
   91F4 DD 77 EC      [19] 2571 	ld	-20 (ix), a
   91F7 03            [ 6] 2572 	inc	bc
   91F8 0A            [ 7] 2573 	ld	a, (bc)
   91F9 DD 77 ED      [19] 2574 	ld	-19 (ix), a
   91FC 0B            [ 6] 2575 	dec	bc
                           2576 ;src/game/world.c:508: oldTrainY = trainList[i].animOldY;
   91FD D5            [11] 2577 	push	de
   91FE FD E1         [14] 2578 	pop	iy
   9200 FD 7E 0D      [19] 2579 	ld	a, 13 (iy)
   9203 DD 77 EA      [19] 2580 	ld	-22 (ix), a
   9206 FD 7E 0E      [19] 2581 	ld	a, 14 (iy)
   9209 DD 77 EB      [19] 2582 	ld	-21 (ix), a
                           2583 ;src/game/world.c:509: trainList[i].animOldX = trainList[i].animX;
   920C EB            [ 4] 2584 	ex	de,hl
   920D 11 07 00      [10] 2585 	ld	de, #0x0007
   9210 19            [11] 2586 	add	hl, de
   9211 5E            [ 7] 2587 	ld	e, (hl)
   9212 23            [ 6] 2588 	inc	hl
   9213 56            [ 7] 2589 	ld	d, (hl)
   9214 7B            [ 4] 2590 	ld	a, e
   9215 02            [ 7] 2591 	ld	(bc), a
   9216 03            [ 6] 2592 	inc	bc
   9217 7A            [ 4] 2593 	ld	a, d
   9218 02            [ 7] 2594 	ld	(bc), a
                           2595 ;src/game/world.c:510: trainList[i].animOldY = trainList[i].animY;
   9219 FD 21 B5 83   [14] 2596 	ld	iy, #_trainList
   921D FD 7E 00      [19] 2597 	ld	a, 0 (iy)
   9220 DD 86 F9      [19] 2598 	add	a, -7 (ix)
   9223 5F            [ 4] 2599 	ld	e, a
   9224 FD 7E 01      [19] 2600 	ld	a, 1 (iy)
   9227 DD 8E FA      [19] 2601 	adc	a, -6 (ix)
   922A 57            [ 4] 2602 	ld	d, a
   922B 21 0D 00      [10] 2603 	ld	hl, #0x000d
   922E 19            [11] 2604 	add	hl,de
   922F 4D            [ 4] 2605 	ld	c, l
   9230 44            [ 4] 2606 	ld	b, h
   9231 EB            [ 4] 2607 	ex	de,hl
   9232 11 09 00      [10] 2608 	ld	de, #0x0009
   9235 19            [11] 2609 	add	hl, de
   9236 5E            [ 7] 2610 	ld	e, (hl)
   9237 23            [ 6] 2611 	inc	hl
   9238 56            [ 7] 2612 	ld	d, (hl)
   9239 7B            [ 4] 2613 	ld	a, e
   923A 02            [ 7] 2614 	ld	(bc), a
   923B 03            [ 6] 2615 	inc	bc
   923C 7A            [ 4] 2616 	ld	a, d
   923D 02            [ 7] 2617 	ld	(bc), a
                           2618 ;src/game/world.c:513: if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H +1,trainList[i].animY-y_*TILESIZE_H) )
   923E FD 2A B5 83   [20] 2619 	ld	iy, (_trainList)
   9242 DD 5E F9      [19] 2620 	ld	e,-7 (ix)
   9245 DD 56 FA      [19] 2621 	ld	d,-6 (ix)
   9248 FD 19         [15] 2622 	add	iy, de
   924A FD E5         [15] 2623 	push	iy
   924C E1            [10] 2624 	pop	hl
   924D 11 09 00      [10] 2625 	ld	de, #0x0009
   9250 19            [11] 2626 	add	hl, de
   9251 4E            [ 7] 2627 	ld	c, (hl)
   9252 23            [ 6] 2628 	inc	hl
   9253 46            [ 7] 2629 	ld	b, (hl)
   9254 79            [ 4] 2630 	ld	a, c
   9255 DD 96 FB      [19] 2631 	sub	a, -5 (ix)
   9258 57            [ 4] 2632 	ld	d, a
   9259 FD E5         [15] 2633 	push	iy
   925B E1            [10] 2634 	pop	hl
   925C 01 07 00      [10] 2635 	ld	bc, #0x0007
   925F 09            [11] 2636 	add	hl, bc
   9260 4E            [ 7] 2637 	ld	c, (hl)
   9261 23            [ 6] 2638 	inc	hl
   9262 46            [ 7] 2639 	ld	b, (hl)
   9263 79            [ 4] 2640 	ld	a, c
   9264 DD 96 FE      [19] 2641 	sub	a, -2 (ix)
   9267 4F            [ 4] 2642 	ld	c, a
   9268 78            [ 4] 2643 	ld	a, b
   9269 DD 9E FF      [19] 2644 	sbc	a, -1 (ix)
   926C 47            [ 4] 2645 	ld	b, a
   926D 03            [ 6] 2646 	inc	bc
   926E D5            [11] 2647 	push	de
   926F 33            [ 6] 2648 	inc	sp
   9270 C5            [11] 2649 	push	bc
   9271 CD F2 8F      [17] 2650 	call	_isPixelBlack
   9274 F1            [10] 2651 	pop	af
   9275 33            [ 6] 2652 	inc	sp
   9276 DD 75 F1      [19] 2653 	ld	-15 (ix), l
                           2654 ;src/game/world.c:500: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   9279 FD 21 B5 83   [14] 2655 	ld	iy, #_trainList
   927D FD 7E 00      [19] 2656 	ld	a, 0 (iy)
   9280 DD 86 F9      [19] 2657 	add	a, -7 (ix)
   9283 DD 77 F3      [19] 2658 	ld	-13 (ix), a
   9286 FD 7E 01      [19] 2659 	ld	a, 1 (iy)
   9289 DD 8E FA      [19] 2660 	adc	a, -6 (ix)
   928C DD 77 F4      [19] 2661 	ld	-12 (ix), a
                           2662 ;src/game/world.c:514: trainList[i].animX+=1;
   928F DD 7E F3      [19] 2663 	ld	a, -13 (ix)
   9292 C6 07         [ 7] 2664 	add	a, #0x07
   9294 DD 77 F5      [19] 2665 	ld	-11 (ix), a
   9297 DD 7E F4      [19] 2666 	ld	a, -12 (ix)
   929A CE 00         [ 7] 2667 	adc	a, #0x00
   929C DD 77 F6      [19] 2668 	ld	-10 (ix), a
   929F DD 6E F5      [19] 2669 	ld	l,-11 (ix)
   92A2 DD 66 F6      [19] 2670 	ld	h,-10 (ix)
   92A5 7E            [ 7] 2671 	ld	a, (hl)
   92A6 DD 77 F7      [19] 2672 	ld	-9 (ix), a
   92A9 23            [ 6] 2673 	inc	hl
   92AA 7E            [ 7] 2674 	ld	a, (hl)
   92AB DD 77 F8      [19] 2675 	ld	-8 (ix), a
                           2676 ;src/game/world.c:513: if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H +1,trainList[i].animY-y_*TILESIZE_H) )
   92AE DD 7E F1      [19] 2677 	ld	a, -15 (ix)
   92B1 B7            [ 4] 2678 	or	a, a
   92B2 28 13         [12] 2679 	jr	Z,00122$
                           2680 ;src/game/world.c:514: trainList[i].animX+=1;
   92B4 DD 4E F7      [19] 2681 	ld	c,-9 (ix)
   92B7 DD 46 F8      [19] 2682 	ld	b,-8 (ix)
   92BA 03            [ 6] 2683 	inc	bc
   92BB DD 6E F5      [19] 2684 	ld	l,-11 (ix)
   92BE DD 66 F6      [19] 2685 	ld	h,-10 (ix)
   92C1 71            [ 7] 2686 	ld	(hl), c
   92C2 23            [ 6] 2687 	inc	hl
   92C3 70            [ 7] 2688 	ld	(hl), b
   92C4 C3 50 98      [10] 2689 	jp	00123$
   92C7                    2690 00122$:
                           2691 ;src/game/world.c:515: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   92C7 DD 6E F3      [19] 2692 	ld	l,-13 (ix)
   92CA DD 66 F4      [19] 2693 	ld	h,-12 (ix)
   92CD 11 09 00      [10] 2694 	ld	de, #0x0009
   92D0 19            [11] 2695 	add	hl, de
   92D1 4E            [ 7] 2696 	ld	c, (hl)
   92D2 23            [ 6] 2697 	inc	hl
   92D3 46            [ 7] 2698 	ld	b, (hl)
   92D4 79            [ 4] 2699 	ld	a, c
   92D5 DD 96 FB      [19] 2700 	sub	a, -5 (ix)
   92D8 47            [ 4] 2701 	ld	b, a
   92D9 DD 7E F7      [19] 2702 	ld	a, -9 (ix)
   92DC DD 96 FE      [19] 2703 	sub	a, -2 (ix)
   92DF 5F            [ 4] 2704 	ld	e, a
   92E0 DD 7E F8      [19] 2705 	ld	a, -8 (ix)
   92E3 DD 9E FF      [19] 2706 	sbc	a, -1 (ix)
   92E6 57            [ 4] 2707 	ld	d, a
   92E7 1B            [ 6] 2708 	dec	de
   92E8 C5            [11] 2709 	push	bc
   92E9 33            [ 6] 2710 	inc	sp
   92EA D5            [11] 2711 	push	de
   92EB CD F2 8F      [17] 2712 	call	_isPixelBlack
   92EE F1            [10] 2713 	pop	af
   92EF 33            [ 6] 2714 	inc	sp
   92F0 4D            [ 4] 2715 	ld	c, l
                           2716 ;src/game/world.c:500: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   92F1 FD 21 B5 83   [14] 2717 	ld	iy, #_trainList
   92F5 FD 7E 00      [19] 2718 	ld	a, 0 (iy)
   92F8 DD 86 F9      [19] 2719 	add	a, -7 (ix)
   92FB DD 77 F7      [19] 2720 	ld	-9 (ix), a
   92FE FD 7E 01      [19] 2721 	ld	a, 1 (iy)
   9301 DD 8E FA      [19] 2722 	adc	a, -6 (ix)
   9304 DD 77 F8      [19] 2723 	ld	-8 (ix), a
                           2724 ;src/game/world.c:514: trainList[i].animX+=1;
   9307 DD 7E F7      [19] 2725 	ld	a, -9 (ix)
   930A C6 07         [ 7] 2726 	add	a, #0x07
   930C 5F            [ 4] 2727 	ld	e, a
   930D DD 7E F8      [19] 2728 	ld	a, -8 (ix)
   9310 CE 00         [ 7] 2729 	adc	a, #0x00
   9312 57            [ 4] 2730 	ld	d, a
   9313 1A            [ 7] 2731 	ld	a, (de)
   9314 DD 77 F5      [19] 2732 	ld	-11 (ix), a
   9317 13            [ 6] 2733 	inc	de
   9318 1A            [ 7] 2734 	ld	a, (de)
   9319 DD 77 F6      [19] 2735 	ld	-10 (ix), a
   931C 1B            [ 6] 2736 	dec	de
                           2737 ;src/game/world.c:515: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   931D 79            [ 4] 2738 	ld	a, c
   931E B7            [ 4] 2739 	or	a, a
   931F 28 0F         [12] 2740 	jr	Z,00119$
                           2741 ;src/game/world.c:516: trainList[i].animX-=1;
   9321 DD 4E F5      [19] 2742 	ld	c, -11 (ix)
   9324 DD 46 F6      [19] 2743 	ld	b, -10 (ix)
   9327 0B            [ 6] 2744 	dec	bc
   9328 79            [ 4] 2745 	ld	a, c
   9329 12            [ 7] 2746 	ld	(de), a
   932A 13            [ 6] 2747 	inc	de
   932B 78            [ 4] 2748 	ld	a, b
   932C 12            [ 7] 2749 	ld	(de), a
   932D C3 50 98      [10] 2750 	jp	00123$
   9330                    2751 00119$:
                           2752 ;src/game/world.c:517: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H, trainList[i].animY-y_*TILESIZE_H + 1) )
   9330 DD 6E F7      [19] 2753 	ld	l,-9 (ix)
   9333 DD 66 F8      [19] 2754 	ld	h,-8 (ix)
   9336 11 09 00      [10] 2755 	ld	de, #0x0009
   9339 19            [11] 2756 	add	hl, de
   933A 7E            [ 7] 2757 	ld	a, (hl)
   933B DD 77 F7      [19] 2758 	ld	-9 (ix), a
   933E 23            [ 6] 2759 	inc	hl
   933F 7E            [ 7] 2760 	ld	a, (hl)
   9340 DD 77 F8      [19] 2761 	ld	-8 (ix), a
   9343 DD 7E F7      [19] 2762 	ld	a, -9 (ix)
   9346 DD 77 F7      [19] 2763 	ld	-9 (ix), a
   9349 DD 96 FB      [19] 2764 	sub	a, -5 (ix)
   934C DD 77 F7      [19] 2765 	ld	-9 (ix), a
   934F 3C            [ 4] 2766 	inc	a
   9350 DD 77 F7      [19] 2767 	ld	-9 (ix), a
   9353 DD 7E F5      [19] 2768 	ld	a, -11 (ix)
   9356 DD 96 FE      [19] 2769 	sub	a, -2 (ix)
   9359 DD 77 F5      [19] 2770 	ld	-11 (ix), a
   935C DD 7E F6      [19] 2771 	ld	a, -10 (ix)
   935F DD 9E FF      [19] 2772 	sbc	a, -1 (ix)
   9362 DD 77 F6      [19] 2773 	ld	-10 (ix), a
   9365 DD 7E F7      [19] 2774 	ld	a, -9 (ix)
   9368 F5            [11] 2775 	push	af
   9369 33            [ 6] 2776 	inc	sp
   936A DD 6E F5      [19] 2777 	ld	l,-11 (ix)
   936D DD 66 F6      [19] 2778 	ld	h,-10 (ix)
   9370 E5            [11] 2779 	push	hl
   9371 CD F2 8F      [17] 2780 	call	_isPixelBlack
   9374 F1            [10] 2781 	pop	af
   9375 33            [ 6] 2782 	inc	sp
   9376 4D            [ 4] 2783 	ld	c, l
                           2784 ;src/game/world.c:500: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   9377 FD 21 B5 83   [14] 2785 	ld	iy, #_trainList
   937B FD 7E 00      [19] 2786 	ld	a, 0 (iy)
   937E DD 86 F9      [19] 2787 	add	a, -7 (ix)
   9381 DD 77 F7      [19] 2788 	ld	-9 (ix), a
   9384 FD 7E 01      [19] 2789 	ld	a, 1 (iy)
   9387 DD 8E FA      [19] 2790 	adc	a, -6 (ix)
   938A DD 77 F8      [19] 2791 	ld	-8 (ix), a
                           2792 ;src/game/world.c:515: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   938D DD 7E F7      [19] 2793 	ld	a, -9 (ix)
   9390 C6 09         [ 7] 2794 	add	a, #0x09
   9392 DD 77 F5      [19] 2795 	ld	-11 (ix), a
   9395 DD 7E F8      [19] 2796 	ld	a, -8 (ix)
   9398 CE 00         [ 7] 2797 	adc	a, #0x00
   939A DD 77 F6      [19] 2798 	ld	-10 (ix), a
                           2799 ;src/game/world.c:518: trainList[i].animY+=1;
   939D DD 6E F5      [19] 2800 	ld	l,-11 (ix)
   93A0 DD 66 F6      [19] 2801 	ld	h,-10 (ix)
   93A3 7E            [ 7] 2802 	ld	a, (hl)
   93A4 DD 77 F3      [19] 2803 	ld	-13 (ix), a
   93A7 23            [ 6] 2804 	inc	hl
   93A8 7E            [ 7] 2805 	ld	a, (hl)
   93A9 DD 77 F4      [19] 2806 	ld	-12 (ix), a
                           2807 ;src/game/world.c:517: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H, trainList[i].animY-y_*TILESIZE_H + 1) )
   93AC 79            [ 4] 2808 	ld	a, c
   93AD B7            [ 4] 2809 	or	a, a
   93AE 28 22         [12] 2810 	jr	Z,00116$
                           2811 ;src/game/world.c:518: trainList[i].animY+=1;
   93B0 DD 7E F3      [19] 2812 	ld	a, -13 (ix)
   93B3 C6 01         [ 7] 2813 	add	a, #0x01
   93B5 DD 77 F1      [19] 2814 	ld	-15 (ix), a
   93B8 DD 7E F4      [19] 2815 	ld	a, -12 (ix)
   93BB CE 00         [ 7] 2816 	adc	a, #0x00
   93BD DD 77 F2      [19] 2817 	ld	-14 (ix), a
   93C0 DD 6E F5      [19] 2818 	ld	l,-11 (ix)
   93C3 DD 66 F6      [19] 2819 	ld	h,-10 (ix)
   93C6 DD 7E F1      [19] 2820 	ld	a, -15 (ix)
   93C9 77            [ 7] 2821 	ld	(hl), a
   93CA 23            [ 6] 2822 	inc	hl
   93CB DD 7E F2      [19] 2823 	ld	a, -14 (ix)
   93CE 77            [ 7] 2824 	ld	(hl), a
   93CF C3 50 98      [10] 2825 	jp	00123$
   93D2                    2826 00116$:
                           2827 ;src/game/world.c:519: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H - 1) )
   93D2 DD 7E F3      [19] 2828 	ld	a, -13 (ix)
   93D5 DD 77 F5      [19] 2829 	ld	-11 (ix), a
   93D8 DD 96 FB      [19] 2830 	sub	a, -5 (ix)
   93DB DD 77 F5      [19] 2831 	ld	-11 (ix), a
   93DE C6 FF         [ 7] 2832 	add	a, #0xff
   93E0 DD 77 F5      [19] 2833 	ld	-11 (ix), a
   93E3 DD 6E F7      [19] 2834 	ld	l,-9 (ix)
   93E6 DD 66 F8      [19] 2835 	ld	h,-8 (ix)
   93E9 11 07 00      [10] 2836 	ld	de, #0x0007
   93EC 19            [11] 2837 	add	hl, de
   93ED 7E            [ 7] 2838 	ld	a, (hl)
   93EE DD 77 F7      [19] 2839 	ld	-9 (ix), a
   93F1 23            [ 6] 2840 	inc	hl
   93F2 7E            [ 7] 2841 	ld	a, (hl)
   93F3 DD 77 F8      [19] 2842 	ld	-8 (ix), a
   93F6 DD 7E F7      [19] 2843 	ld	a, -9 (ix)
   93F9 DD 96 FE      [19] 2844 	sub	a, -2 (ix)
   93FC DD 77 F7      [19] 2845 	ld	-9 (ix), a
   93FF DD 7E F8      [19] 2846 	ld	a, -8 (ix)
   9402 DD 9E FF      [19] 2847 	sbc	a, -1 (ix)
   9405 DD 77 F8      [19] 2848 	ld	-8 (ix), a
   9408 DD 7E F5      [19] 2849 	ld	a, -11 (ix)
   940B F5            [11] 2850 	push	af
   940C 33            [ 6] 2851 	inc	sp
   940D DD 6E F7      [19] 2852 	ld	l,-9 (ix)
   9410 DD 66 F8      [19] 2853 	ld	h,-8 (ix)
   9413 E5            [11] 2854 	push	hl
   9414 CD F2 8F      [17] 2855 	call	_isPixelBlack
   9417 F1            [10] 2856 	pop	af
   9418 33            [ 6] 2857 	inc	sp
   9419 4D            [ 4] 2858 	ld	c, l
                           2859 ;src/game/world.c:500: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   941A FD 21 B5 83   [14] 2860 	ld	iy, #_trainList
   941E FD 7E 00      [19] 2861 	ld	a, 0 (iy)
   9421 DD 86 F9      [19] 2862 	add	a, -7 (ix)
   9424 DD 77 F7      [19] 2863 	ld	-9 (ix), a
   9427 FD 7E 01      [19] 2864 	ld	a, 1 (iy)
   942A DD 8E FA      [19] 2865 	adc	a, -6 (ix)
   942D DD 77 F8      [19] 2866 	ld	-8 (ix), a
                           2867 ;src/game/world.c:515: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   9430 DD 7E F7      [19] 2868 	ld	a, -9 (ix)
   9433 C6 09         [ 7] 2869 	add	a, #0x09
   9435 DD 77 F5      [19] 2870 	ld	-11 (ix), a
   9438 DD 7E F8      [19] 2871 	ld	a, -8 (ix)
   943B CE 00         [ 7] 2872 	adc	a, #0x00
   943D DD 77 F6      [19] 2873 	ld	-10 (ix), a
                           2874 ;src/game/world.c:518: trainList[i].animY+=1;
   9440 DD 6E F5      [19] 2875 	ld	l,-11 (ix)
   9443 DD 66 F6      [19] 2876 	ld	h,-10 (ix)
   9446 7E            [ 7] 2877 	ld	a, (hl)
   9447 DD 77 F3      [19] 2878 	ld	-13 (ix), a
   944A 23            [ 6] 2879 	inc	hl
   944B 7E            [ 7] 2880 	ld	a, (hl)
   944C DD 77 F4      [19] 2881 	ld	-12 (ix), a
                           2882 ;src/game/world.c:519: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H - 1) )
   944F 79            [ 4] 2883 	ld	a, c
   9450 B7            [ 4] 2884 	or	a, a
   9451 28 22         [12] 2885 	jr	Z,00113$
                           2886 ;src/game/world.c:520: trainList[i].animY-=1;
   9453 DD 7E F3      [19] 2887 	ld	a, -13 (ix)
   9456 C6 FF         [ 7] 2888 	add	a, #0xff
   9458 DD 77 F1      [19] 2889 	ld	-15 (ix), a
   945B DD 7E F4      [19] 2890 	ld	a, -12 (ix)
   945E CE FF         [ 7] 2891 	adc	a, #0xff
   9460 DD 77 F2      [19] 2892 	ld	-14 (ix), a
   9463 DD 6E F5      [19] 2893 	ld	l,-11 (ix)
   9466 DD 66 F6      [19] 2894 	ld	h,-10 (ix)
   9469 DD 7E F1      [19] 2895 	ld	a, -15 (ix)
   946C 77            [ 7] 2896 	ld	(hl), a
   946D 23            [ 6] 2897 	inc	hl
   946E DD 7E F2      [19] 2898 	ld	a, -14 (ix)
   9471 77            [ 7] 2899 	ld	(hl), a
   9472 C3 50 98      [10] 2900 	jp	00123$
   9475                    2901 00113$:
                           2902 ;src/game/world.c:521: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H + 1) )
   9475 DD 7E F3      [19] 2903 	ld	a, -13 (ix)
   9478 DD 77 F5      [19] 2904 	ld	-11 (ix), a
   947B DD 96 FB      [19] 2905 	sub	a, -5 (ix)
   947E DD 77 F5      [19] 2906 	ld	-11 (ix), a
   9481 3C            [ 4] 2907 	inc	a
   9482 DD 77 F5      [19] 2908 	ld	-11 (ix), a
   9485 DD 6E F7      [19] 2909 	ld	l,-9 (ix)
   9488 DD 66 F8      [19] 2910 	ld	h,-8 (ix)
   948B 11 07 00      [10] 2911 	ld	de, #0x0007
   948E 19            [11] 2912 	add	hl, de
   948F 7E            [ 7] 2913 	ld	a, (hl)
   9490 DD 77 F7      [19] 2914 	ld	-9 (ix), a
   9493 23            [ 6] 2915 	inc	hl
   9494 7E            [ 7] 2916 	ld	a, (hl)
   9495 DD 77 F8      [19] 2917 	ld	-8 (ix), a
   9498 DD 7E F7      [19] 2918 	ld	a, -9 (ix)
   949B DD 96 FE      [19] 2919 	sub	a, -2 (ix)
   949E DD 77 F7      [19] 2920 	ld	-9 (ix), a
   94A1 DD 7E F8      [19] 2921 	ld	a, -8 (ix)
   94A4 DD 9E FF      [19] 2922 	sbc	a, -1 (ix)
   94A7 DD 77 F8      [19] 2923 	ld	-8 (ix), a
   94AA DD 34 F7      [23] 2924 	inc	-9 (ix)
   94AD 20 03         [12] 2925 	jr	NZ,00212$
   94AF DD 34 F8      [23] 2926 	inc	-8 (ix)
   94B2                    2927 00212$:
   94B2 DD 7E F5      [19] 2928 	ld	a, -11 (ix)
   94B5 F5            [11] 2929 	push	af
   94B6 33            [ 6] 2930 	inc	sp
   94B7 DD 6E F7      [19] 2931 	ld	l,-9 (ix)
   94BA DD 66 F8      [19] 2932 	ld	h,-8 (ix)
   94BD E5            [11] 2933 	push	hl
   94BE CD F2 8F      [17] 2934 	call	_isPixelBlack
   94C1 F1            [10] 2935 	pop	af
   94C2 33            [ 6] 2936 	inc	sp
   94C3 4D            [ 4] 2937 	ld	c, l
                           2938 ;src/game/world.c:500: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   94C4 FD 21 B5 83   [14] 2939 	ld	iy, #_trainList
   94C8 FD 7E 00      [19] 2940 	ld	a, 0 (iy)
   94CB DD 86 F9      [19] 2941 	add	a, -7 (ix)
   94CE DD 77 F7      [19] 2942 	ld	-9 (ix), a
   94D1 FD 7E 01      [19] 2943 	ld	a, 1 (iy)
   94D4 DD 8E FA      [19] 2944 	adc	a, -6 (ix)
   94D7 DD 77 F8      [19] 2945 	ld	-8 (ix), a
                           2946 ;src/game/world.c:514: trainList[i].animX+=1;
   94DA DD 7E F7      [19] 2947 	ld	a, -9 (ix)
   94DD C6 07         [ 7] 2948 	add	a, #0x07
   94DF DD 77 F5      [19] 2949 	ld	-11 (ix), a
   94E2 DD 7E F8      [19] 2950 	ld	a, -8 (ix)
   94E5 CE 00         [ 7] 2951 	adc	a, #0x00
   94E7 DD 77 F6      [19] 2952 	ld	-10 (ix), a
   94EA DD 6E F5      [19] 2953 	ld	l,-11 (ix)
   94ED DD 66 F6      [19] 2954 	ld	h,-10 (ix)
   94F0 7E            [ 7] 2955 	ld	a, (hl)
   94F1 DD 77 F3      [19] 2956 	ld	-13 (ix), a
   94F4 23            [ 6] 2957 	inc	hl
   94F5 7E            [ 7] 2958 	ld	a, (hl)
   94F6 DD 77 F4      [19] 2959 	ld	-12 (ix), a
                           2960 ;src/game/world.c:521: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H + 1) )
   94F9 79            [ 4] 2961 	ld	a, c
   94FA B7            [ 4] 2962 	or	a, a
   94FB 28 6A         [12] 2963 	jr	Z,00110$
                           2964 ;src/game/world.c:523: trainList[i].animX+=1;
   94FD DD 7E F3      [19] 2965 	ld	a, -13 (ix)
   9500 C6 01         [ 7] 2966 	add	a, #0x01
   9502 DD 77 F1      [19] 2967 	ld	-15 (ix), a
   9505 DD 7E F4      [19] 2968 	ld	a, -12 (ix)
   9508 CE 00         [ 7] 2969 	adc	a, #0x00
   950A DD 77 F2      [19] 2970 	ld	-14 (ix), a
   950D DD 6E F5      [19] 2971 	ld	l,-11 (ix)
   9510 DD 66 F6      [19] 2972 	ld	h,-10 (ix)
   9513 DD 7E F1      [19] 2973 	ld	a, -15 (ix)
   9516 77            [ 7] 2974 	ld	(hl), a
   9517 23            [ 6] 2975 	inc	hl
   9518 DD 7E F2      [19] 2976 	ld	a, -14 (ix)
   951B 77            [ 7] 2977 	ld	(hl), a
                           2978 ;src/game/world.c:524: trainList[i].animY+=1;
   951C FD 7E 00      [19] 2979 	ld	a, 0 (iy)
   951F DD 86 F9      [19] 2980 	add	a, -7 (ix)
   9522 DD 77 F5      [19] 2981 	ld	-11 (ix), a
   9525 FD 7E 01      [19] 2982 	ld	a, 1 (iy)
   9528 DD 8E FA      [19] 2983 	adc	a, -6 (ix)
   952B DD 77 F6      [19] 2984 	ld	-10 (ix), a
   952E DD 7E F5      [19] 2985 	ld	a, -11 (ix)
   9531 C6 09         [ 7] 2986 	add	a, #0x09
   9533 DD 77 F5      [19] 2987 	ld	-11 (ix), a
   9536 DD 7E F6      [19] 2988 	ld	a, -10 (ix)
   9539 CE 00         [ 7] 2989 	adc	a, #0x00
   953B DD 77 F6      [19] 2990 	ld	-10 (ix), a
   953E DD 6E F5      [19] 2991 	ld	l,-11 (ix)
   9541 DD 66 F6      [19] 2992 	ld	h,-10 (ix)
   9544 7E            [ 7] 2993 	ld	a, (hl)
   9545 DD 77 F1      [19] 2994 	ld	-15 (ix), a
   9548 23            [ 6] 2995 	inc	hl
   9549 7E            [ 7] 2996 	ld	a, (hl)
   954A DD 77 F2      [19] 2997 	ld	-14 (ix), a
   954D DD 34 F1      [23] 2998 	inc	-15 (ix)
   9550 20 03         [12] 2999 	jr	NZ,00213$
   9552 DD 34 F2      [23] 3000 	inc	-14 (ix)
   9555                    3001 00213$:
   9555 DD 6E F5      [19] 3002 	ld	l,-11 (ix)
   9558 DD 66 F6      [19] 3003 	ld	h,-10 (ix)
   955B DD 7E F1      [19] 3004 	ld	a, -15 (ix)
   955E 77            [ 7] 3005 	ld	(hl), a
   955F 23            [ 6] 3006 	inc	hl
   9560 DD 7E F2      [19] 3007 	ld	a, -14 (ix)
   9563 77            [ 7] 3008 	ld	(hl), a
   9564 C3 50 98      [10] 3009 	jp	00123$
   9567                    3010 00110$:
                           3011 ;src/game/world.c:526: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H - 1) )
   9567 DD 6E F7      [19] 3012 	ld	l,-9 (ix)
   956A DD 66 F8      [19] 3013 	ld	h,-8 (ix)
   956D 11 09 00      [10] 3014 	ld	de, #0x0009
   9570 19            [11] 3015 	add	hl, de
   9571 7E            [ 7] 3016 	ld	a, (hl)
   9572 DD 77 F7      [19] 3017 	ld	-9 (ix), a
   9575 23            [ 6] 3018 	inc	hl
   9576 7E            [ 7] 3019 	ld	a, (hl)
   9577 DD 77 F8      [19] 3020 	ld	-8 (ix), a
   957A DD 7E F7      [19] 3021 	ld	a, -9 (ix)
   957D DD 77 F7      [19] 3022 	ld	-9 (ix), a
   9580 DD 96 FB      [19] 3023 	sub	a, -5 (ix)
   9583 DD 77 F7      [19] 3024 	ld	-9 (ix), a
   9586 C6 FF         [ 7] 3025 	add	a, #0xff
   9588 DD 77 F7      [19] 3026 	ld	-9 (ix), a
   958B DD 7E F3      [19] 3027 	ld	a, -13 (ix)
   958E DD 96 FE      [19] 3028 	sub	a, -2 (ix)
   9591 DD 77 F5      [19] 3029 	ld	-11 (ix), a
   9594 DD 7E F4      [19] 3030 	ld	a, -12 (ix)
   9597 DD 9E FF      [19] 3031 	sbc	a, -1 (ix)
   959A DD 77 F6      [19] 3032 	ld	-10 (ix), a
   959D DD 34 F5      [23] 3033 	inc	-11 (ix)
   95A0 20 03         [12] 3034 	jr	NZ,00214$
   95A2 DD 34 F6      [23] 3035 	inc	-10 (ix)
   95A5                    3036 00214$:
   95A5 DD 7E F7      [19] 3037 	ld	a, -9 (ix)
   95A8 F5            [11] 3038 	push	af
   95A9 33            [ 6] 3039 	inc	sp
   95AA DD 6E F5      [19] 3040 	ld	l,-11 (ix)
   95AD DD 66 F6      [19] 3041 	ld	h,-10 (ix)
   95B0 E5            [11] 3042 	push	hl
   95B1 CD F2 8F      [17] 3043 	call	_isPixelBlack
   95B4 F1            [10] 3044 	pop	af
   95B5 33            [ 6] 3045 	inc	sp
   95B6 4D            [ 4] 3046 	ld	c, l
                           3047 ;src/game/world.c:500: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   95B7 FD 21 B5 83   [14] 3048 	ld	iy, #_trainList
   95BB FD 7E 00      [19] 3049 	ld	a, 0 (iy)
   95BE DD 86 F9      [19] 3050 	add	a, -7 (ix)
   95C1 DD 77 F7      [19] 3051 	ld	-9 (ix), a
   95C4 FD 7E 01      [19] 3052 	ld	a, 1 (iy)
   95C7 DD 8E FA      [19] 3053 	adc	a, -6 (ix)
   95CA DD 77 F8      [19] 3054 	ld	-8 (ix), a
                           3055 ;src/game/world.c:514: trainList[i].animX+=1;
   95CD DD 7E F7      [19] 3056 	ld	a, -9 (ix)
   95D0 C6 07         [ 7] 3057 	add	a, #0x07
   95D2 DD 77 F5      [19] 3058 	ld	-11 (ix), a
   95D5 DD 7E F8      [19] 3059 	ld	a, -8 (ix)
   95D8 CE 00         [ 7] 3060 	adc	a, #0x00
   95DA DD 77 F6      [19] 3061 	ld	-10 (ix), a
   95DD DD 6E F5      [19] 3062 	ld	l,-11 (ix)
   95E0 DD 66 F6      [19] 3063 	ld	h,-10 (ix)
   95E3 7E            [ 7] 3064 	ld	a, (hl)
   95E4 DD 77 F3      [19] 3065 	ld	-13 (ix), a
   95E7 23            [ 6] 3066 	inc	hl
   95E8 7E            [ 7] 3067 	ld	a, (hl)
   95E9 DD 77 F4      [19] 3068 	ld	-12 (ix), a
                           3069 ;src/game/world.c:526: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H - 1) )
   95EC 79            [ 4] 3070 	ld	a, c
   95ED B7            [ 4] 3071 	or	a, a
   95EE 28 6F         [12] 3072 	jr	Z,00107$
                           3073 ;src/game/world.c:528: trainList[i].animX+=1;
   95F0 DD 7E F3      [19] 3074 	ld	a, -13 (ix)
   95F3 C6 01         [ 7] 3075 	add	a, #0x01
   95F5 DD 77 F1      [19] 3076 	ld	-15 (ix), a
   95F8 DD 7E F4      [19] 3077 	ld	a, -12 (ix)
   95FB CE 00         [ 7] 3078 	adc	a, #0x00
   95FD DD 77 F2      [19] 3079 	ld	-14 (ix), a
   9600 DD 6E F5      [19] 3080 	ld	l,-11 (ix)
   9603 DD 66 F6      [19] 3081 	ld	h,-10 (ix)
   9606 DD 7E F1      [19] 3082 	ld	a, -15 (ix)
   9609 77            [ 7] 3083 	ld	(hl), a
   960A 23            [ 6] 3084 	inc	hl
   960B DD 7E F2      [19] 3085 	ld	a, -14 (ix)
   960E 77            [ 7] 3086 	ld	(hl), a
                           3087 ;src/game/world.c:529: trainList[i].animY-=1;
   960F FD 7E 00      [19] 3088 	ld	a, 0 (iy)
   9612 DD 86 F9      [19] 3089 	add	a, -7 (ix)
   9615 DD 77 F5      [19] 3090 	ld	-11 (ix), a
   9618 FD 7E 01      [19] 3091 	ld	a, 1 (iy)
   961B DD 8E FA      [19] 3092 	adc	a, -6 (ix)
   961E DD 77 F6      [19] 3093 	ld	-10 (ix), a
   9621 DD 7E F5      [19] 3094 	ld	a, -11 (ix)
   9624 C6 09         [ 7] 3095 	add	a, #0x09
   9626 DD 77 F5      [19] 3096 	ld	-11 (ix), a
   9629 DD 7E F6      [19] 3097 	ld	a, -10 (ix)
   962C CE 00         [ 7] 3098 	adc	a, #0x00
   962E DD 77 F6      [19] 3099 	ld	-10 (ix), a
   9631 DD 6E F5      [19] 3100 	ld	l,-11 (ix)
   9634 DD 66 F6      [19] 3101 	ld	h,-10 (ix)
   9637 7E            [ 7] 3102 	ld	a, (hl)
   9638 DD 77 F1      [19] 3103 	ld	-15 (ix), a
   963B 23            [ 6] 3104 	inc	hl
   963C 7E            [ 7] 3105 	ld	a, (hl)
   963D DD 77 F2      [19] 3106 	ld	-14 (ix), a
   9640 DD 6E F1      [19] 3107 	ld	l,-15 (ix)
   9643 DD 66 F2      [19] 3108 	ld	h,-14 (ix)
   9646 2B            [ 6] 3109 	dec	hl
   9647 DD 75 F1      [19] 3110 	ld	-15 (ix), l
   964A DD 74 F2      [19] 3111 	ld	-14 (ix), h
   964D DD 6E F5      [19] 3112 	ld	l,-11 (ix)
   9650 DD 66 F6      [19] 3113 	ld	h,-10 (ix)
   9653 DD 7E F1      [19] 3114 	ld	a, -15 (ix)
   9656 77            [ 7] 3115 	ld	(hl), a
   9657 23            [ 6] 3116 	inc	hl
   9658 DD 7E F2      [19] 3117 	ld	a, -14 (ix)
   965B 77            [ 7] 3118 	ld	(hl), a
   965C C3 50 98      [10] 3119 	jp	00123$
   965F                    3120 00107$:
                           3121 ;src/game/world.c:531: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H-1,trainList[i].animY-y_*TILESIZE_H + 1) )
   965F DD 6E F7      [19] 3122 	ld	l,-9 (ix)
   9662 DD 66 F8      [19] 3123 	ld	h,-8 (ix)
   9665 11 09 00      [10] 3124 	ld	de, #0x0009
   9668 19            [11] 3125 	add	hl, de
   9669 7E            [ 7] 3126 	ld	a, (hl)
   966A DD 77 F7      [19] 3127 	ld	-9 (ix), a
   966D 23            [ 6] 3128 	inc	hl
   966E 7E            [ 7] 3129 	ld	a, (hl)
   966F DD 77 F8      [19] 3130 	ld	-8 (ix), a
   9672 DD 7E F7      [19] 3131 	ld	a, -9 (ix)
   9675 DD 77 F7      [19] 3132 	ld	-9 (ix), a
   9678 DD 96 FB      [19] 3133 	sub	a, -5 (ix)
   967B DD 77 F7      [19] 3134 	ld	-9 (ix), a
   967E 3C            [ 4] 3135 	inc	a
   967F DD 77 F7      [19] 3136 	ld	-9 (ix), a
   9682 DD 7E F3      [19] 3137 	ld	a, -13 (ix)
   9685 DD 96 FE      [19] 3138 	sub	a, -2 (ix)
   9688 DD 77 F5      [19] 3139 	ld	-11 (ix), a
   968B DD 7E F4      [19] 3140 	ld	a, -12 (ix)
   968E DD 9E FF      [19] 3141 	sbc	a, -1 (ix)
   9691 DD 77 F6      [19] 3142 	ld	-10 (ix), a
   9694 DD 6E F5      [19] 3143 	ld	l,-11 (ix)
   9697 DD 66 F6      [19] 3144 	ld	h,-10 (ix)
   969A 2B            [ 6] 3145 	dec	hl
   969B DD 75 F5      [19] 3146 	ld	-11 (ix), l
   969E DD 74 F6      [19] 3147 	ld	-10 (ix), h
   96A1 DD 7E F7      [19] 3148 	ld	a, -9 (ix)
   96A4 F5            [11] 3149 	push	af
   96A5 33            [ 6] 3150 	inc	sp
   96A6 DD 6E F5      [19] 3151 	ld	l,-11 (ix)
   96A9 DD 66 F6      [19] 3152 	ld	h,-10 (ix)
   96AC E5            [11] 3153 	push	hl
   96AD CD F2 8F      [17] 3154 	call	_isPixelBlack
   96B0 F1            [10] 3155 	pop	af
   96B1 33            [ 6] 3156 	inc	sp
   96B2 4D            [ 4] 3157 	ld	c, l
                           3158 ;src/game/world.c:500: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   96B3 FD 21 B5 83   [14] 3159 	ld	iy, #_trainList
   96B7 FD 7E 00      [19] 3160 	ld	a, 0 (iy)
   96BA DD 86 F9      [19] 3161 	add	a, -7 (ix)
   96BD DD 77 F7      [19] 3162 	ld	-9 (ix), a
   96C0 FD 7E 01      [19] 3163 	ld	a, 1 (iy)
   96C3 DD 8E FA      [19] 3164 	adc	a, -6 (ix)
   96C6 DD 77 F8      [19] 3165 	ld	-8 (ix), a
                           3166 ;src/game/world.c:514: trainList[i].animX+=1;
   96C9 DD 7E F7      [19] 3167 	ld	a, -9 (ix)
   96CC C6 07         [ 7] 3168 	add	a, #0x07
   96CE DD 77 F5      [19] 3169 	ld	-11 (ix), a
   96D1 DD 7E F8      [19] 3170 	ld	a, -8 (ix)
   96D4 CE 00         [ 7] 3171 	adc	a, #0x00
   96D6 DD 77 F6      [19] 3172 	ld	-10 (ix), a
   96D9 DD 6E F5      [19] 3173 	ld	l,-11 (ix)
   96DC DD 66 F6      [19] 3174 	ld	h,-10 (ix)
   96DF 7E            [ 7] 3175 	ld	a, (hl)
   96E0 DD 77 F3      [19] 3176 	ld	-13 (ix), a
   96E3 23            [ 6] 3177 	inc	hl
   96E4 7E            [ 7] 3178 	ld	a, (hl)
   96E5 DD 77 F4      [19] 3179 	ld	-12 (ix), a
                           3180 ;src/game/world.c:531: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H-1,trainList[i].animY-y_*TILESIZE_H + 1) )
   96E8 79            [ 4] 3181 	ld	a, c
   96E9 B7            [ 4] 3182 	or	a, a
   96EA 28 6A         [12] 3183 	jr	Z,00104$
                           3184 ;src/game/world.c:533: trainList[i].animX-=1;
   96EC DD 7E F3      [19] 3185 	ld	a, -13 (ix)
   96EF C6 FF         [ 7] 3186 	add	a, #0xff
   96F1 DD 77 F1      [19] 3187 	ld	-15 (ix), a
   96F4 DD 7E F4      [19] 3188 	ld	a, -12 (ix)
   96F7 CE FF         [ 7] 3189 	adc	a, #0xff
   96F9 DD 77 F2      [19] 3190 	ld	-14 (ix), a
   96FC DD 6E F5      [19] 3191 	ld	l,-11 (ix)
   96FF DD 66 F6      [19] 3192 	ld	h,-10 (ix)
   9702 DD 7E F1      [19] 3193 	ld	a, -15 (ix)
   9705 77            [ 7] 3194 	ld	(hl), a
   9706 23            [ 6] 3195 	inc	hl
   9707 DD 7E F2      [19] 3196 	ld	a, -14 (ix)
   970A 77            [ 7] 3197 	ld	(hl), a
                           3198 ;src/game/world.c:534: trainList[i].animY+=1;
   970B FD 7E 00      [19] 3199 	ld	a, 0 (iy)
   970E DD 86 F9      [19] 3200 	add	a, -7 (ix)
   9711 DD 77 F5      [19] 3201 	ld	-11 (ix), a
   9714 FD 7E 01      [19] 3202 	ld	a, 1 (iy)
   9717 DD 8E FA      [19] 3203 	adc	a, -6 (ix)
   971A DD 77 F6      [19] 3204 	ld	-10 (ix), a
   971D DD 7E F5      [19] 3205 	ld	a, -11 (ix)
   9720 C6 09         [ 7] 3206 	add	a, #0x09
   9722 DD 77 F5      [19] 3207 	ld	-11 (ix), a
   9725 DD 7E F6      [19] 3208 	ld	a, -10 (ix)
   9728 CE 00         [ 7] 3209 	adc	a, #0x00
   972A DD 77 F6      [19] 3210 	ld	-10 (ix), a
   972D DD 6E F5      [19] 3211 	ld	l,-11 (ix)
   9730 DD 66 F6      [19] 3212 	ld	h,-10 (ix)
   9733 7E            [ 7] 3213 	ld	a, (hl)
   9734 DD 77 F1      [19] 3214 	ld	-15 (ix), a
   9737 23            [ 6] 3215 	inc	hl
   9738 7E            [ 7] 3216 	ld	a, (hl)
   9739 DD 77 F2      [19] 3217 	ld	-14 (ix), a
   973C DD 34 F1      [23] 3218 	inc	-15 (ix)
   973F 20 03         [12] 3219 	jr	NZ,00215$
   9741 DD 34 F2      [23] 3220 	inc	-14 (ix)
   9744                    3221 00215$:
   9744 DD 6E F5      [19] 3222 	ld	l,-11 (ix)
   9747 DD 66 F6      [19] 3223 	ld	h,-10 (ix)
   974A DD 7E F1      [19] 3224 	ld	a, -15 (ix)
   974D 77            [ 7] 3225 	ld	(hl), a
   974E 23            [ 6] 3226 	inc	hl
   974F DD 7E F2      [19] 3227 	ld	a, -14 (ix)
   9752 77            [ 7] 3228 	ld	(hl), a
   9753 C3 50 98      [10] 3229 	jp	00123$
   9756                    3230 00104$:
                           3231 ;src/game/world.c:536: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H-1,trainList[i].animY-y_*TILESIZE_H - 1) )
   9756 DD 6E F7      [19] 3232 	ld	l,-9 (ix)
   9759 DD 66 F8      [19] 3233 	ld	h,-8 (ix)
   975C 11 09 00      [10] 3234 	ld	de, #0x0009
   975F 19            [11] 3235 	add	hl, de
   9760 7E            [ 7] 3236 	ld	a, (hl)
   9761 DD 77 F7      [19] 3237 	ld	-9 (ix), a
   9764 23            [ 6] 3238 	inc	hl
   9765 7E            [ 7] 3239 	ld	a, (hl)
   9766 DD 77 F8      [19] 3240 	ld	-8 (ix), a
   9769 DD 7E F7      [19] 3241 	ld	a, -9 (ix)
   976C DD 77 F7      [19] 3242 	ld	-9 (ix), a
   976F DD 96 FB      [19] 3243 	sub	a, -5 (ix)
   9772 DD 77 F7      [19] 3244 	ld	-9 (ix), a
   9775 C6 FF         [ 7] 3245 	add	a, #0xff
   9777 DD 77 F7      [19] 3246 	ld	-9 (ix), a
   977A DD 7E F3      [19] 3247 	ld	a, -13 (ix)
   977D DD 96 FE      [19] 3248 	sub	a, -2 (ix)
   9780 DD 77 F5      [19] 3249 	ld	-11 (ix), a
   9783 DD 7E F4      [19] 3250 	ld	a, -12 (ix)
   9786 DD 9E FF      [19] 3251 	sbc	a, -1 (ix)
   9789 DD 77 F6      [19] 3252 	ld	-10 (ix), a
   978C DD 6E F5      [19] 3253 	ld	l,-11 (ix)
   978F DD 66 F6      [19] 3254 	ld	h,-10 (ix)
   9792 2B            [ 6] 3255 	dec	hl
   9793 DD 75 F5      [19] 3256 	ld	-11 (ix), l
   9796 DD 74 F6      [19] 3257 	ld	-10 (ix), h
   9799 DD 7E F7      [19] 3258 	ld	a, -9 (ix)
   979C F5            [11] 3259 	push	af
   979D 33            [ 6] 3260 	inc	sp
   979E DD 6E F5      [19] 3261 	ld	l,-11 (ix)
   97A1 DD 66 F6      [19] 3262 	ld	h,-10 (ix)
   97A4 E5            [11] 3263 	push	hl
   97A5 CD F2 8F      [17] 3264 	call	_isPixelBlack
   97A8 F1            [10] 3265 	pop	af
   97A9 33            [ 6] 3266 	inc	sp
   97AA DD 75 F7      [19] 3267 	ld	-9 (ix), l
   97AD 7D            [ 4] 3268 	ld	a, l
   97AE B7            [ 4] 3269 	or	a, a
   97AF CA 50 98      [10] 3270 	jp	Z, 00123$
                           3271 ;src/game/world.c:538: trainList[i].animX-=1;
   97B2 FD 21 B5 83   [14] 3272 	ld	iy, #_trainList
   97B6 FD 7E 00      [19] 3273 	ld	a, 0 (iy)
   97B9 DD 86 F9      [19] 3274 	add	a, -7 (ix)
   97BC DD 77 F7      [19] 3275 	ld	-9 (ix), a
   97BF FD 7E 01      [19] 3276 	ld	a, 1 (iy)
   97C2 DD 8E FA      [19] 3277 	adc	a, -6 (ix)
   97C5 DD 77 F8      [19] 3278 	ld	-8 (ix), a
   97C8 DD 7E F7      [19] 3279 	ld	a, -9 (ix)
   97CB C6 07         [ 7] 3280 	add	a, #0x07
   97CD DD 77 F7      [19] 3281 	ld	-9 (ix), a
   97D0 DD 7E F8      [19] 3282 	ld	a, -8 (ix)
   97D3 CE 00         [ 7] 3283 	adc	a, #0x00
   97D5 DD 77 F8      [19] 3284 	ld	-8 (ix), a
   97D8 DD 6E F7      [19] 3285 	ld	l,-9 (ix)
   97DB DD 66 F8      [19] 3286 	ld	h,-8 (ix)
   97DE 7E            [ 7] 3287 	ld	a, (hl)
   97DF DD 77 F5      [19] 3288 	ld	-11 (ix), a
   97E2 23            [ 6] 3289 	inc	hl
   97E3 7E            [ 7] 3290 	ld	a, (hl)
   97E4 DD 77 F6      [19] 3291 	ld	-10 (ix), a
   97E7 DD 6E F5      [19] 3292 	ld	l,-11 (ix)
   97EA DD 66 F6      [19] 3293 	ld	h,-10 (ix)
   97ED 2B            [ 6] 3294 	dec	hl
   97EE DD 75 F5      [19] 3295 	ld	-11 (ix), l
   97F1 DD 74 F6      [19] 3296 	ld	-10 (ix), h
   97F4 DD 6E F7      [19] 3297 	ld	l,-9 (ix)
   97F7 DD 66 F8      [19] 3298 	ld	h,-8 (ix)
   97FA DD 7E F5      [19] 3299 	ld	a, -11 (ix)
   97FD 77            [ 7] 3300 	ld	(hl), a
   97FE 23            [ 6] 3301 	inc	hl
   97FF DD 7E F6      [19] 3302 	ld	a, -10 (ix)
   9802 77            [ 7] 3303 	ld	(hl), a
                           3304 ;src/game/world.c:539: trainList[i].animY-=1;
   9803 FD 7E 00      [19] 3305 	ld	a, 0 (iy)
   9806 DD 86 F9      [19] 3306 	add	a, -7 (ix)
   9809 DD 77 F7      [19] 3307 	ld	-9 (ix), a
   980C FD 7E 01      [19] 3308 	ld	a, 1 (iy)
   980F DD 8E FA      [19] 3309 	adc	a, -6 (ix)
   9812 DD 77 F8      [19] 3310 	ld	-8 (ix), a
   9815 DD 7E F7      [19] 3311 	ld	a, -9 (ix)
   9818 C6 09         [ 7] 3312 	add	a, #0x09
   981A DD 77 F7      [19] 3313 	ld	-9 (ix), a
   981D DD 7E F8      [19] 3314 	ld	a, -8 (ix)
   9820 CE 00         [ 7] 3315 	adc	a, #0x00
   9822 DD 77 F8      [19] 3316 	ld	-8 (ix), a
   9825 DD 6E F7      [19] 3317 	ld	l,-9 (ix)
   9828 DD 66 F8      [19] 3318 	ld	h,-8 (ix)
   982B 7E            [ 7] 3319 	ld	a, (hl)
   982C DD 77 F5      [19] 3320 	ld	-11 (ix), a
   982F 23            [ 6] 3321 	inc	hl
   9830 7E            [ 7] 3322 	ld	a, (hl)
   9831 DD 77 F6      [19] 3323 	ld	-10 (ix), a
   9834 DD 6E F5      [19] 3324 	ld	l,-11 (ix)
   9837 DD 66 F6      [19] 3325 	ld	h,-10 (ix)
   983A 2B            [ 6] 3326 	dec	hl
   983B DD 75 F5      [19] 3327 	ld	-11 (ix), l
   983E DD 74 F6      [19] 3328 	ld	-10 (ix), h
   9841 DD 6E F7      [19] 3329 	ld	l,-9 (ix)
   9844 DD 66 F8      [19] 3330 	ld	h,-8 (ix)
   9847 DD 7E F5      [19] 3331 	ld	a, -11 (ix)
   984A 77            [ 7] 3332 	ld	(hl), a
   984B 23            [ 6] 3333 	inc	hl
   984C DD 7E F6      [19] 3334 	ld	a, -10 (ix)
   984F 77            [ 7] 3335 	ld	(hl), a
   9850                    3336 00123$:
                           3337 ;src/game/world.c:543: trainList[i].cycles++; // Update the number of shifts done in pixels
   9850 FD 2A B5 83   [20] 3338 	ld	iy, (_trainList)
   9854 DD 5E F9      [19] 3339 	ld	e,-7 (ix)
   9857 DD 56 FA      [19] 3340 	ld	d,-6 (ix)
   985A FD 19         [15] 3341 	add	iy, de
   985C 11 0F 00      [10] 3342 	ld	de, #0x000f
   985F FD 19         [15] 3343 	add	iy, de
   9861 FD 34 00      [23] 3344 	inc	0 (iy)
                           3345 ;src/game/world.c:546: if(trainList[i].cycles>=TILESIZE_H)
   9864 FD 21 B5 83   [14] 3346 	ld	iy, #_trainList
   9868 FD 7E 00      [19] 3347 	ld	a, 0 (iy)
   986B DD 86 F9      [19] 3348 	add	a, -7 (ix)
   986E 4F            [ 4] 3349 	ld	c, a
   986F FD 7E 01      [19] 3350 	ld	a, 1 (iy)
   9872 DD 8E FA      [19] 3351 	adc	a, -6 (ix)
   9875 47            [ 4] 3352 	ld	b, a
   9876 21 0F 00      [10] 3353 	ld	hl, #0x000f
   9879 09            [11] 3354 	add	hl,bc
   987A DD 75 F7      [19] 3355 	ld	-9 (ix), l
   987D DD 74 F8      [19] 3356 	ld	-8 (ix), h
   9880 7E            [ 7] 3357 	ld	a, (hl)
   9881 D6 10         [ 7] 3358 	sub	a, #0x10
   9883 DA 39 99      [10] 3359 	jp	C, 00125$
                           3360 ;src/game/world.c:548: trainList[i].cycles = 0;	// Reset counter
   9886 DD 6E F7      [19] 3361 	ld	l,-9 (ix)
   9889 DD 66 F8      [19] 3362 	ld	h,-8 (ix)
   988C 36 00         [10] 3363 	ld	(hl), #0x00
                           3364 ;src/game/world.c:549: trainList[i].posX = (int)(trainList[i].animX/TILESIZE_H); // Update position in tiles coordinates
   988E FD 7E 00      [19] 3365 	ld	a, 0 (iy)
   9891 DD 86 F9      [19] 3366 	add	a, -7 (ix)
   9894 4F            [ 4] 3367 	ld	c, a
   9895 FD 7E 01      [19] 3368 	ld	a, 1 (iy)
   9898 DD 8E FA      [19] 3369 	adc	a, -6 (ix)
   989B 47            [ 4] 3370 	ld	b, a
   989C 21 04 00      [10] 3371 	ld	hl, #0x0004
   989F 09            [11] 3372 	add	hl,bc
   98A0 DD 75 F7      [19] 3373 	ld	-9 (ix), l
   98A3 DD 74 F8      [19] 3374 	ld	-8 (ix), h
   98A6 C5            [11] 3375 	push	bc
   98A7 FD E1         [14] 3376 	pop	iy
   98A9 FD 7E 07      [19] 3377 	ld	a, 7 (iy)
   98AC DD 77 F5      [19] 3378 	ld	-11 (ix), a
   98AF FD 7E 08      [19] 3379 	ld	a, 8 (iy)
   98B2 DD 77 F6      [19] 3380 	ld	-10 (ix), a
   98B5 DD 7E F5      [19] 3381 	ld	a, -11 (ix)
   98B8 DD 77 F3      [19] 3382 	ld	-13 (ix), a
   98BB DD 7E F6      [19] 3383 	ld	a, -10 (ix)
   98BE DD 77 F4      [19] 3384 	ld	-12 (ix), a
   98C1 DD CB F6 7E   [20] 3385 	bit	7, -10 (ix)
   98C5 28 10         [12] 3386 	jr	Z,00137$
   98C7 DD 7E F5      [19] 3387 	ld	a, -11 (ix)
   98CA C6 0F         [ 7] 3388 	add	a, #0x0f
   98CC DD 77 F3      [19] 3389 	ld	-13 (ix), a
   98CF DD 7E F6      [19] 3390 	ld	a, -10 (ix)
   98D2 CE 00         [ 7] 3391 	adc	a, #0x00
   98D4 DD 77 F4      [19] 3392 	ld	-12 (ix), a
   98D7                    3393 00137$:
   98D7 DD 4E F3      [19] 3394 	ld	c,-13 (ix)
   98DA DD 46 F4      [19] 3395 	ld	b,-12 (ix)
   98DD CB 28         [ 8] 3396 	sra	b
   98DF CB 19         [ 8] 3397 	rr	c
   98E1 CB 28         [ 8] 3398 	sra	b
   98E3 CB 19         [ 8] 3399 	rr	c
   98E5 CB 28         [ 8] 3400 	sra	b
   98E7 CB 19         [ 8] 3401 	rr	c
   98E9 CB 28         [ 8] 3402 	sra	b
   98EB CB 19         [ 8] 3403 	rr	c
   98ED DD 6E F7      [19] 3404 	ld	l,-9 (ix)
   98F0 DD 66 F8      [19] 3405 	ld	h,-8 (ix)
   98F3 71            [ 7] 3406 	ld	(hl), c
                           3407 ;src/game/world.c:550: trainList[i].posY = (int)(trainList[i].animY/TILESIZE_H); // Update position in tiles coordinates
   98F4 FD 21 B5 83   [14] 3408 	ld	iy, #_trainList
   98F8 FD 7E 00      [19] 3409 	ld	a, 0 (iy)
   98FB DD 86 F9      [19] 3410 	add	a, -7 (ix)
   98FE 5F            [ 4] 3411 	ld	e, a
   98FF FD 7E 01      [19] 3412 	ld	a, 1 (iy)
   9902 DD 8E FA      [19] 3413 	adc	a, -6 (ix)
   9905 57            [ 4] 3414 	ld	d, a
   9906 21 05 00      [10] 3415 	ld	hl, #0x0005
   9909 19            [11] 3416 	add	hl,de
   990A 4D            [ 4] 3417 	ld	c, l
   990B 44            [ 4] 3418 	ld	b, h
   990C EB            [ 4] 3419 	ex	de,hl
   990D 11 09 00      [10] 3420 	ld	de, #0x0009
   9910 19            [11] 3421 	add	hl, de
   9911 5E            [ 7] 3422 	ld	e, (hl)
   9912 23            [ 6] 3423 	inc	hl
   9913 56            [ 7] 3424 	ld	d, (hl)
   9914 6B            [ 4] 3425 	ld	l, e
   9915 62            [ 4] 3426 	ld	h, d
   9916 CB 7A         [ 8] 3427 	bit	7, d
   9918 28 04         [12] 3428 	jr	Z,00138$
   991A 21 0F 00      [10] 3429 	ld	hl, #0x000f
   991D 19            [11] 3430 	add	hl, de
   991E                    3431 00138$:
   991E CB 2C         [ 8] 3432 	sra	h
   9920 CB 1D         [ 8] 3433 	rr	l
   9922 CB 2C         [ 8] 3434 	sra	h
   9924 CB 1D         [ 8] 3435 	rr	l
   9926 CB 2C         [ 8] 3436 	sra	h
   9928 CB 1D         [ 8] 3437 	rr	l
   992A CB 2C         [ 8] 3438 	sra	h
   992C CB 1D         [ 8] 3439 	rr	l
   992E 7D            [ 4] 3440 	ld	a, l
   992F 02            [ 7] 3441 	ld	(bc), a
                           3442 ;src/game/world.c:555: setTrainHeading(i); // Calculate new heading
   9930 DD 7E F0      [19] 3443 	ld	a, -16 (ix)
   9933 F5            [11] 3444 	push	af
   9934 33            [ 6] 3445 	inc	sp
   9935 CD 7D 8E      [17] 3446 	call	_setTrainHeading
   9938 33            [ 6] 3447 	inc	sp
   9939                    3448 00125$:
                           3449 ;src/game/world.c:559: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   9939 FD 2A B5 83   [20] 3450 	ld	iy, (_trainList)
   993D DD 5E F9      [19] 3451 	ld	e,-7 (ix)
   9940 DD 56 FA      [19] 3452 	ld	d,-6 (ix)
   9943 FD 19         [15] 3453 	add	iy, de
   9945 FD E5         [15] 3454 	push	iy
   9947 E1            [10] 3455 	pop	hl
   9948 11 09 00      [10] 3456 	ld	de, #0x0009
   994B 19            [11] 3457 	add	hl, de
   994C 4E            [ 7] 3458 	ld	c, (hl)
   994D 23            [ 6] 3459 	inc	hl
   994E 46            [ 7] 3460 	ld	b, (hl)
   994F 79            [ 4] 3461 	ld	a, c
   9950 DD 96 FB      [19] 3462 	sub	a, -5 (ix)
   9953 4F            [ 4] 3463 	ld	c, a
   9954 FD 7E 07      [19] 3464 	ld	a, 7 (iy)
   9957 FD 56 08      [19] 3465 	ld	d, 8 (iy)
   995A DD 96 FE      [19] 3466 	sub	a, -2 (ix)
   995D 5F            [ 4] 3467 	ld	e, a
   995E 7A            [ 4] 3468 	ld	a, d
   995F DD 9E FF      [19] 3469 	sbc	a, -1 (ix)
   9962 57            [ 4] 3470 	ld	d, a
   9963 06 03         [ 7] 3471 	ld	b, #0x03
   9965 C5            [11] 3472 	push	bc
   9966 D5            [11] 3473 	push	de
   9967 CD 19 8F      [17] 3474 	call	_setPixel
   996A F1            [10] 3475 	pop	af
   996B F1            [10] 3476 	pop	af
                           3477 ;src/game/world.c:560: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
   996C FD 2A B5 83   [20] 3478 	ld	iy, (_trainList)
   9970 DD 5E F9      [19] 3479 	ld	e,-7 (ix)
   9973 DD 56 FA      [19] 3480 	ld	d,-6 (ix)
   9976 FD 19         [15] 3481 	add	iy, de
   9978 FD E5         [15] 3482 	push	iy
   997A E1            [10] 3483 	pop	hl
   997B 11 0D 00      [10] 3484 	ld	de, #0x000d
   997E 19            [11] 3485 	add	hl, de
   997F 4E            [ 7] 3486 	ld	c, (hl)
   9980 23            [ 6] 3487 	inc	hl
   9981 46            [ 7] 3488 	ld	b, (hl)
   9982 79            [ 4] 3489 	ld	a, c
   9983 DD 96 FB      [19] 3490 	sub	a, -5 (ix)
   9986 4F            [ 4] 3491 	ld	c, a
   9987 FD 7E 0B      [19] 3492 	ld	a, 11 (iy)
   998A FD 56 0C      [19] 3493 	ld	d, 12 (iy)
   998D DD 96 FE      [19] 3494 	sub	a, -2 (ix)
   9990 5F            [ 4] 3495 	ld	e, a
   9991 7A            [ 4] 3496 	ld	a, d
   9992 DD 9E FF      [19] 3497 	sbc	a, -1 (ix)
   9995 57            [ 4] 3498 	ld	d, a
   9996 06 02         [ 7] 3499 	ld	b, #0x02
   9998 C5            [11] 3500 	push	bc
   9999 D5            [11] 3501 	push	de
   999A CD 19 8F      [17] 3502 	call	_setPixel
   999D F1            [10] 3503 	pop	af
   999E F1            [10] 3504 	pop	af
                           3505 ;src/game/world.c:561: setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
   999F DD 4E EA      [19] 3506 	ld	c, -22 (ix)
   99A2 79            [ 4] 3507 	ld	a, c
   99A3 DD 96 FB      [19] 3508 	sub	a, -5 (ix)
   99A6 47            [ 4] 3509 	ld	b, a
   99A7 DD 7E EC      [19] 3510 	ld	a, -20 (ix)
   99AA DD 96 FE      [19] 3511 	sub	a, -2 (ix)
   99AD 5F            [ 4] 3512 	ld	e, a
   99AE DD 7E ED      [19] 3513 	ld	a, -19 (ix)
   99B1 DD 9E FF      [19] 3514 	sbc	a, -1 (ix)
   99B4 57            [ 4] 3515 	ld	d, a
   99B5 AF            [ 4] 3516 	xor	a, a
   99B6 F5            [11] 3517 	push	af
   99B7 33            [ 6] 3518 	inc	sp
   99B8 C5            [11] 3519 	push	bc
   99B9 33            [ 6] 3520 	inc	sp
   99BA D5            [11] 3521 	push	de
   99BB CD 19 8F      [17] 3522 	call	_setPixel
   99BE F1            [10] 3523 	pop	af
   99BF F1            [10] 3524 	pop	af
                           3525 ;src/game/world.c:563: sprintf(buff, "%d ", trainList[i].heading );
   99C0 FD 2A B5 83   [20] 3526 	ld	iy, (_trainList)
   99C4 DD 5E F9      [19] 3527 	ld	e,-7 (ix)
   99C7 DD 56 FA      [19] 3528 	ld	d,-6 (ix)
   99CA FD 19         [15] 3529 	add	iy, de
   99CC FD 4E 06      [19] 3530 	ld	c, 6 (iy)
   99CF 06 00         [ 7] 3531 	ld	b, #0x00
   99D1 C5            [11] 3532 	push	bc
   99D2 21 06 9A      [10] 3533 	ld	hl, #___str_0
   99D5 E5            [11] 3534 	push	hl
   99D6 DD 6E EE      [19] 3535 	ld	l,-18 (ix)
   99D9 DD 66 EF      [19] 3536 	ld	h,-17 (ix)
   99DC E5            [11] 3537 	push	hl
   99DD CD 8B 65      [17] 3538 	call	_sprintf
   99E0 21 06 00      [10] 3539 	ld	hl, #6
   99E3 39            [11] 3540 	add	hl, sp
   99E4 F9            [ 6] 3541 	ld	sp, hl
                           3542 ;src/game/world.c:564: cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);
   99E5 DD 4E EE      [19] 3543 	ld	c,-18 (ix)
   99E8 DD 46 EF      [19] 3544 	ld	b,-17 (ix)
   99EB 21 00 01      [10] 3545 	ld	hl, #0x0100
   99EE E5            [11] 3546 	push	hl
   99EF 26 C0         [ 7] 3547 	ld	h, #0xc0
   99F1 E5            [11] 3548 	push	hl
   99F2 C5            [11] 3549 	push	bc
   99F3 CD 9A 61      [17] 3550 	call	_cpct_drawStringM1
   99F6 21 06 00      [10] 3551 	ld	hl, #6
   99F9 39            [11] 3552 	add	hl, sp
   99FA F9            [ 6] 3553 	ld	sp, hl
   99FB                    3554 00134$:
                           3555 ;src/game/world.c:497: for(i=0; i<nbTrainList; i++)
   99FB DD 34 F0      [23] 3556 	inc	-16 (ix)
   99FE C3 A3 90      [10] 3557 	jp	00133$
   9A01                    3558 00135$:
   9A01 DD F9         [10] 3559 	ld	sp, ix
   9A03 DD E1         [14] 3560 	pop	ix
   9A05 C9            [10] 3561 	ret
   9A06                    3562 ___str_0:
   9A06 25 64 20           3563 	.ascii "%d "
   9A09 00                 3564 	.db 0x00
                           3565 	.area _CODE
                           3566 	.area _INITIALIZER
                           3567 	.area _CABS (ABS)
