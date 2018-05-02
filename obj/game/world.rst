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
                             11 	.globl _cpct_setSeed_mxor
                             12 	.globl _cpct_getRandom_mxor_u16
                             13 	.globl _cpct_getRandom_mxor_u8
                             14 	.globl _cpct_getScreenPtr
                             15 	.globl _cpct_count2VSYNC
                             16 	.globl _cpct_drawSpriteMaskedAlignedTable
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
                             28 	.globl _setTrainHeading
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
                            102 ;src/game/world.c:5: void drawCursor(u8 x, u8 y, u8 color)
                            103 ;	---------------------------------
                            104 ; Function drawCursor
                            105 ; ---------------------------------
   7630                     106 _drawCursor::
   7630 DD E5         [15]  107 	push	ix
   7632 DD 21 00 00   [14]  108 	ld	ix,#0
   7636 DD 39         [15]  109 	add	ix,sp
   7638 3B            [ 6]  110 	dec	sp
                            111 ;src/game/world.c:8: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   7639 DD 7E 05      [19]  112 	ld	a, 5 (ix)
   763C 07            [ 4]  113 	rlca
   763D 07            [ 4]  114 	rlca
   763E 07            [ 4]  115 	rlca
   763F 07            [ 4]  116 	rlca
   7640 E6 F0         [ 7]  117 	and	a, #0xf0
   7642 4F            [ 4]  118 	ld	c, a
   7643 DD 7E 04      [19]  119 	ld	a, 4 (ix)
   7646 87            [ 4]  120 	add	a, a
   7647 87            [ 4]  121 	add	a, a
   7648 47            [ 4]  122 	ld	b, a
   7649 C5            [11]  123 	push	bc
   764A 79            [ 4]  124 	ld	a, c
   764B F5            [11]  125 	push	af
   764C 33            [ 6]  126 	inc	sp
   764D C5            [11]  127 	push	bc
   764E 33            [ 6]  128 	inc	sp
   764F 21 00 C0      [10]  129 	ld	hl, #0xc000
   7652 E5            [11]  130 	push	hl
   7653 CD 6D 65      [17]  131 	call	_cpct_getScreenPtr
   7656 EB            [ 4]  132 	ex	de,hl
   7657 C1            [10]  133 	pop	bc
                            134 ;src/game/world.c:10: switch(CURSOR_MODE)
   7658 3E 11         [ 7]  135 	ld	a, #0x11
   765A FD 21 29 76   [14]  136 	ld	iy, #_CURSOR_MODE
   765E FD 96 00      [19]  137 	sub	a, 0 (iy)
   7661 DA 64 78      [10]  138 	jp	C, 00120$
   7664 D5            [11]  139 	push	de
   7665 FD 5E 00      [19]  140 	ld	e, 0 (iy)
   7668 16 00         [ 7]  141 	ld	d, #0x00
   766A 21 72 76      [10]  142 	ld	hl, #00126$
   766D 19            [11]  143 	add	hl, de
   766E 19            [11]  144 	add	hl, de
   766F 19            [11]  145 	add	hl, de
   7670 D1            [10]  146 	pop	de
   7671 E9            [ 4]  147 	jp	(hl)
   7672                     148 00126$:
   7672 C3 A8 76      [10]  149 	jp	00101$
   7675 C3 6C 77      [10]  150 	jp	00102$
   7678 C3 7F 77      [10]  151 	jp	00103$
   767B C3 8E 77      [10]  152 	jp	00104$
   767E C3 9D 77      [10]  153 	jp	00105$
   7681 C3 AC 77      [10]  154 	jp	00106$
   7684 C3 BB 77      [10]  155 	jp	00107$
   7687 C3 CA 77      [10]  156 	jp	00108$
   768A C3 D9 77      [10]  157 	jp	00109$
   768D C3 E8 77      [10]  158 	jp	00110$
   7690 C3 F6 77      [10]  159 	jp	00111$
   7693 C3 04 78      [10]  160 	jp	00112$
   7696 C3 12 78      [10]  161 	jp	00113$
   7699 C3 20 78      [10]  162 	jp	00114$
   769C C3 2E 78      [10]  163 	jp	00115$
   769F C3 3C 78      [10]  164 	jp	00116$
   76A2 C3 4A 78      [10]  165 	jp	00117$
   76A5 C3 58 78      [10]  166 	jp	00118$
                            167 ;src/game/world.c:12: case NONE:
   76A8                     168 00101$:
                            169 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   76A8 C5            [11]  170 	push	bc
   76A9 D5            [11]  171 	push	de
   76AA DD 66 06      [19]  172 	ld	h, 6 (ix)
   76AD DD 6E 06      [19]  173 	ld	l, 6 (ix)
   76B0 E5            [11]  174 	push	hl
   76B1 DD 66 06      [19]  175 	ld	h, 6 (ix)
   76B4 DD 6E 06      [19]  176 	ld	l, 6 (ix)
   76B7 E5            [11]  177 	push	hl
   76B8 CD 1C 64      [17]  178 	call	_cpct_px2byteM1
   76BB F1            [10]  179 	pop	af
   76BC F1            [10]  180 	pop	af
   76BD DD 75 FF      [19]  181 	ld	-1 (ix), l
   76C0 D1            [10]  182 	pop	de
   76C1 21 04 00      [10]  183 	ld	hl, #0x0004
   76C4 E5            [11]  184 	push	hl
   76C5 DD 7E FF      [19]  185 	ld	a, -1 (ix)
   76C8 F5            [11]  186 	push	af
   76C9 33            [ 6]  187 	inc	sp
   76CA D5            [11]  188 	push	de
   76CB CD 0E 64      [17]  189 	call	_cpct_memset
   76CE C1            [10]  190 	pop	bc
                            191 ;src/game/world.c:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   76CF 51            [ 4]  192 	ld	d, c
   76D0 14            [ 4]  193 	inc	d
   76D1 C5            [11]  194 	push	bc
   76D2 58            [ 4]  195 	ld	e, b
   76D3 D5            [11]  196 	push	de
   76D4 21 00 C0      [10]  197 	ld	hl, #0xc000
   76D7 E5            [11]  198 	push	hl
   76D8 CD 6D 65      [17]  199 	call	_cpct_getScreenPtr
   76DB E5            [11]  200 	push	hl
   76DC DD 66 06      [19]  201 	ld	h, 6 (ix)
   76DF DD 6E 06      [19]  202 	ld	l, 6 (ix)
   76E2 E5            [11]  203 	push	hl
   76E3 DD 66 06      [19]  204 	ld	h, 6 (ix)
   76E6 DD 6E 06      [19]  205 	ld	l, 6 (ix)
   76E9 E5            [11]  206 	push	hl
   76EA CD 1C 64      [17]  207 	call	_cpct_px2byteM1
   76ED F1            [10]  208 	pop	af
   76EE F1            [10]  209 	pop	af
   76EF 4D            [ 4]  210 	ld	c, l
   76F0 D1            [10]  211 	pop	de
   76F1 F1            [10]  212 	pop	af
   76F2 47            [ 4]  213 	ld	b, a
   76F3 C5            [11]  214 	push	bc
   76F4 21 04 00      [10]  215 	ld	hl, #0x0004
   76F7 E5            [11]  216 	push	hl
   76F8 79            [ 4]  217 	ld	a, c
   76F9 F5            [11]  218 	push	af
   76FA 33            [ 6]  219 	inc	sp
   76FB D5            [11]  220 	push	de
   76FC CD 0E 64      [17]  221 	call	_cpct_memset
   76FF C1            [10]  222 	pop	bc
                            223 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   7700 DD 7E 05      [19]  224 	ld	a, 5 (ix)
   7703 3C            [ 4]  225 	inc	a
   7704 07            [ 4]  226 	rlca
   7705 07            [ 4]  227 	rlca
   7706 07            [ 4]  228 	rlca
   7707 07            [ 4]  229 	rlca
   7708 E6 F0         [ 7]  230 	and	a, #0xf0
   770A 4F            [ 4]  231 	ld	c, a
   770B 51            [ 4]  232 	ld	d, c
   770C 15            [ 4]  233 	dec	d
   770D C5            [11]  234 	push	bc
   770E 58            [ 4]  235 	ld	e, b
   770F D5            [11]  236 	push	de
   7710 21 00 C0      [10]  237 	ld	hl, #0xc000
   7713 E5            [11]  238 	push	hl
   7714 CD 6D 65      [17]  239 	call	_cpct_getScreenPtr
   7717 E5            [11]  240 	push	hl
   7718 DD 66 06      [19]  241 	ld	h, 6 (ix)
   771B DD 6E 06      [19]  242 	ld	l, 6 (ix)
   771E E5            [11]  243 	push	hl
   771F DD 66 06      [19]  244 	ld	h, 6 (ix)
   7722 DD 6E 06      [19]  245 	ld	l, 6 (ix)
   7725 E5            [11]  246 	push	hl
   7726 CD 1C 64      [17]  247 	call	_cpct_px2byteM1
   7729 F1            [10]  248 	pop	af
   772A F1            [10]  249 	pop	af
   772B DD 75 FF      [19]  250 	ld	-1 (ix), l
   772E D1            [10]  251 	pop	de
   772F 21 04 00      [10]  252 	ld	hl, #0x0004
   7732 E5            [11]  253 	push	hl
   7733 DD 7E FF      [19]  254 	ld	a, -1 (ix)
   7736 F5            [11]  255 	push	af
   7737 33            [ 6]  256 	inc	sp
   7738 D5            [11]  257 	push	de
   7739 CD 0E 64      [17]  258 	call	_cpct_memset
   773C C1            [10]  259 	pop	bc
                            260 ;src/game/world.c:20: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   773D 51            [ 4]  261 	ld	d, c
   773E 15            [ 4]  262 	dec	d
   773F 15            [ 4]  263 	dec	d
   7740 58            [ 4]  264 	ld	e, b
   7741 D5            [11]  265 	push	de
   7742 21 00 C0      [10]  266 	ld	hl, #0xc000
   7745 E5            [11]  267 	push	hl
   7746 CD 6D 65      [17]  268 	call	_cpct_getScreenPtr
                            269 ;src/game/world.c:21: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   7749 E5            [11]  270 	push	hl
   774A DD 66 06      [19]  271 	ld	h, 6 (ix)
   774D DD 6E 06      [19]  272 	ld	l, 6 (ix)
   7750 E5            [11]  273 	push	hl
   7751 DD 66 06      [19]  274 	ld	h, 6 (ix)
   7754 DD 6E 06      [19]  275 	ld	l, 6 (ix)
   7757 E5            [11]  276 	push	hl
   7758 CD 1C 64      [17]  277 	call	_cpct_px2byteM1
   775B F1            [10]  278 	pop	af
   775C F1            [10]  279 	pop	af
   775D 55            [ 4]  280 	ld	d, l
   775E C1            [10]  281 	pop	bc
   775F 21 04 00      [10]  282 	ld	hl, #0x0004
   7762 E5            [11]  283 	push	hl
   7763 D5            [11]  284 	push	de
   7764 33            [ 6]  285 	inc	sp
   7765 C5            [11]  286 	push	bc
   7766 CD 0E 64      [17]  287 	call	_cpct_memset
                            288 ;src/game/world.c:22: break;
   7769 C3 64 78      [10]  289 	jp	00120$
                            290 ;src/game/world.c:23: case PUTTRAIN:
   776C                     291 00102$:
                            292 ;src/game/world.c:24: cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
   776C 01 00 01      [10]  293 	ld	bc, #_g_masktable+0
   776F C5            [11]  294 	push	bc
   7770 21 04 10      [10]  295 	ld	hl, #0x1004
   7773 E5            [11]  296 	push	hl
   7774 D5            [11]  297 	push	de
   7775 21 54 4E      [10]  298 	ld	hl, #_train_h
   7778 E5            [11]  299 	push	hl
   7779 CD 32 65      [17]  300 	call	_cpct_drawSpriteMaskedAlignedTable
                            301 ;src/game/world.c:25: break;
   777C C3 64 78      [10]  302 	jp	00120$
                            303 ;src/game/world.c:26: case T_SSNS:
   777F                     304 00103$:
                            305 ;src/game/world.c:27: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   777F 21 04 10      [10]  306 	ld	hl, #0x1004
   7782 E5            [11]  307 	push	hl
   7783 D5            [11]  308 	push	de
   7784 21 54 4A      [10]  309 	ld	hl, #_station_small_ns
   7787 E5            [11]  310 	push	hl
   7788 CD 86 60      [17]  311 	call	_cpct_drawSprite
                            312 ;src/game/world.c:28: break;
   778B C3 64 78      [10]  313 	jp	00120$
                            314 ;src/game/world.c:29: case T_SSEW:
   778E                     315 00104$:
                            316 ;src/game/world.c:30: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   778E 21 04 10      [10]  317 	ld	hl, #0x1004
   7791 E5            [11]  318 	push	hl
   7792 D5            [11]  319 	push	de
   7793 21 94 4A      [10]  320 	ld	hl, #_station_small_ew
   7796 E5            [11]  321 	push	hl
   7797 CD 86 60      [17]  322 	call	_cpct_drawSprite
                            323 ;src/game/world.c:31: break;
   779A C3 64 78      [10]  324 	jp	00120$
                            325 ;src/game/world.c:32: case T_SMNS:
   779D                     326 00105$:
                            327 ;src/game/world.c:33: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   779D 21 04 10      [10]  328 	ld	hl, #0x1004
   77A0 E5            [11]  329 	push	hl
   77A1 D5            [11]  330 	push	de
   77A2 21 D4 4A      [10]  331 	ld	hl, #_station_medium_ns
   77A5 E5            [11]  332 	push	hl
   77A6 CD 86 60      [17]  333 	call	_cpct_drawSprite
                            334 ;src/game/world.c:34: break;
   77A9 C3 64 78      [10]  335 	jp	00120$
                            336 ;src/game/world.c:35: case T_SMEW:
   77AC                     337 00106$:
                            338 ;src/game/world.c:36: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   77AC 21 04 10      [10]  339 	ld	hl, #0x1004
   77AF E5            [11]  340 	push	hl
   77B0 D5            [11]  341 	push	de
   77B1 21 14 4B      [10]  342 	ld	hl, #_station_medium_ew
   77B4 E5            [11]  343 	push	hl
   77B5 CD 86 60      [17]  344 	call	_cpct_drawSprite
                            345 ;src/game/world.c:37: break;
   77B8 C3 64 78      [10]  346 	jp	00120$
                            347 ;src/game/world.c:38: case T_SLNS:
   77BB                     348 00107$:
                            349 ;src/game/world.c:39: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   77BB 21 04 10      [10]  350 	ld	hl, #0x1004
   77BE E5            [11]  351 	push	hl
   77BF D5            [11]  352 	push	de
   77C0 21 54 4B      [10]  353 	ld	hl, #_station_large_ns
   77C3 E5            [11]  354 	push	hl
   77C4 CD 86 60      [17]  355 	call	_cpct_drawSprite
                            356 ;src/game/world.c:40: break;
   77C7 C3 64 78      [10]  357 	jp	00120$
                            358 ;src/game/world.c:41: case T_SLEW:
   77CA                     359 00108$:
                            360 ;src/game/world.c:42: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   77CA 21 04 10      [10]  361 	ld	hl, #0x1004
   77CD E5            [11]  362 	push	hl
   77CE D5            [11]  363 	push	de
   77CF 21 94 4B      [10]  364 	ld	hl, #_station_large_ew
   77D2 E5            [11]  365 	push	hl
   77D3 CD 86 60      [17]  366 	call	_cpct_drawSprite
                            367 ;src/game/world.c:43: break;
   77D6 C3 64 78      [10]  368 	jp	00120$
                            369 ;src/game/world.c:44: case T_REW:
   77D9                     370 00109$:
                            371 ;src/game/world.c:45: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   77D9 21 04 10      [10]  372 	ld	hl, #0x1004
   77DC E5            [11]  373 	push	hl
   77DD D5            [11]  374 	push	de
   77DE 21 D4 4B      [10]  375 	ld	hl, #_rail_ew
   77E1 E5            [11]  376 	push	hl
   77E2 CD 86 60      [17]  377 	call	_cpct_drawSprite
                            378 ;src/game/world.c:46: break;
   77E5 C3 64 78      [10]  379 	jp	00120$
                            380 ;src/game/world.c:47: case T_RNS:
   77E8                     381 00110$:
                            382 ;src/game/world.c:48: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   77E8 21 04 10      [10]  383 	ld	hl, #0x1004
   77EB E5            [11]  384 	push	hl
   77EC D5            [11]  385 	push	de
   77ED 21 14 4C      [10]  386 	ld	hl, #_rail_ns
   77F0 E5            [11]  387 	push	hl
   77F1 CD 86 60      [17]  388 	call	_cpct_drawSprite
                            389 ;src/game/world.c:49: break;
   77F4 18 6E         [12]  390 	jr	00120$
                            391 ;src/game/world.c:50: case T_REN:
   77F6                     392 00111$:
                            393 ;src/game/world.c:51: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   77F6 21 04 10      [10]  394 	ld	hl, #0x1004
   77F9 E5            [11]  395 	push	hl
   77FA D5            [11]  396 	push	de
   77FB 21 54 4C      [10]  397 	ld	hl, #_rail_en
   77FE E5            [11]  398 	push	hl
   77FF CD 86 60      [17]  399 	call	_cpct_drawSprite
                            400 ;src/game/world.c:52: break;
   7802 18 60         [12]  401 	jr	00120$
                            402 ;src/game/world.c:53: case T_RES:
   7804                     403 00112$:
                            404 ;src/game/world.c:54: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   7804 21 04 10      [10]  405 	ld	hl, #0x1004
   7807 E5            [11]  406 	push	hl
   7808 D5            [11]  407 	push	de
   7809 21 94 4C      [10]  408 	ld	hl, #_rail_es
   780C E5            [11]  409 	push	hl
   780D CD 86 60      [17]  410 	call	_cpct_drawSprite
                            411 ;src/game/world.c:55: break;
   7810 18 52         [12]  412 	jr	00120$
                            413 ;src/game/world.c:56: case T_RWN:
   7812                     414 00113$:
                            415 ;src/game/world.c:57: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   7812 21 04 10      [10]  416 	ld	hl, #0x1004
   7815 E5            [11]  417 	push	hl
   7816 D5            [11]  418 	push	de
   7817 21 D4 4C      [10]  419 	ld	hl, #_rail_wn
   781A E5            [11]  420 	push	hl
   781B CD 86 60      [17]  421 	call	_cpct_drawSprite
                            422 ;src/game/world.c:58: break;
   781E 18 44         [12]  423 	jr	00120$
                            424 ;src/game/world.c:59: case T_RWS:
   7820                     425 00114$:
                            426 ;src/game/world.c:60: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   7820 21 04 10      [10]  427 	ld	hl, #0x1004
   7823 E5            [11]  428 	push	hl
   7824 D5            [11]  429 	push	de
   7825 21 14 4D      [10]  430 	ld	hl, #_rail_ws
   7828 E5            [11]  431 	push	hl
   7829 CD 86 60      [17]  432 	call	_cpct_drawSprite
                            433 ;src/game/world.c:61: break;
   782C 18 36         [12]  434 	jr	00120$
                            435 ;src/game/world.c:62: case T_REWN:
   782E                     436 00115$:
                            437 ;src/game/world.c:63: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   782E 21 04 10      [10]  438 	ld	hl, #0x1004
   7831 E5            [11]  439 	push	hl
   7832 D5            [11]  440 	push	de
   7833 21 54 4D      [10]  441 	ld	hl, #_rail_ew_n
   7836 E5            [11]  442 	push	hl
   7837 CD 86 60      [17]  443 	call	_cpct_drawSprite
                            444 ;src/game/world.c:64: break;
   783A 18 28         [12]  445 	jr	00120$
                            446 ;src/game/world.c:65: case T_REWS:
   783C                     447 00116$:
                            448 ;src/game/world.c:66: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   783C 21 04 10      [10]  449 	ld	hl, #0x1004
   783F E5            [11]  450 	push	hl
   7840 D5            [11]  451 	push	de
   7841 21 94 4D      [10]  452 	ld	hl, #_rail_ew_s
   7844 E5            [11]  453 	push	hl
   7845 CD 86 60      [17]  454 	call	_cpct_drawSprite
                            455 ;src/game/world.c:67: break;
   7848 18 1A         [12]  456 	jr	00120$
                            457 ;src/game/world.c:68: case T_RNSE:
   784A                     458 00117$:
                            459 ;src/game/world.c:69: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   784A 21 04 10      [10]  460 	ld	hl, #0x1004
   784D E5            [11]  461 	push	hl
   784E D5            [11]  462 	push	de
   784F 21 14 4E      [10]  463 	ld	hl, #_rail_ns_e
   7852 E5            [11]  464 	push	hl
   7853 CD 86 60      [17]  465 	call	_cpct_drawSprite
                            466 ;src/game/world.c:70: break;
   7856 18 0C         [12]  467 	jr	00120$
                            468 ;src/game/world.c:71: case T_RNSW:
   7858                     469 00118$:
                            470 ;src/game/world.c:72: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   7858 21 04 10      [10]  471 	ld	hl, #0x1004
   785B E5            [11]  472 	push	hl
   785C D5            [11]  473 	push	de
   785D 21 D4 4D      [10]  474 	ld	hl, #_rail_ns_w
   7860 E5            [11]  475 	push	hl
   7861 CD 86 60      [17]  476 	call	_cpct_drawSprite
                            477 ;src/game/world.c:74: }
   7864                     478 00120$:
   7864 33            [ 6]  479 	inc	sp
   7865 DD E1         [14]  480 	pop	ix
   7867 C9            [10]  481 	ret
                            482 ;src/game/world.c:77: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            483 ;	---------------------------------
                            484 ; Function patternTile
                            485 ; ---------------------------------
   7868                     486 _patternTile::
   7868 DD E5         [15]  487 	push	ix
   786A DD 21 00 00   [14]  488 	ld	ix,#0
   786E DD 39         [15]  489 	add	ix,sp
   7870 21 F7 FF      [10]  490 	ld	hl, #-9
   7873 39            [11]  491 	add	hl, sp
   7874 F9            [ 6]  492 	ld	sp, hl
                            493 ;src/game/world.c:82: for(iy=0; iy<nBitsY; iy++)
   7875 DD 7E 04      [19]  494 	ld	a, 4 (ix)
   7878 D6 08         [ 7]  495 	sub	a, #0x08
   787A 20 04         [12]  496 	jr	NZ,00153$
   787C 3E 01         [ 7]  497 	ld	a,#0x01
   787E 18 01         [12]  498 	jr	00154$
   7880                     499 00153$:
   7880 AF            [ 4]  500 	xor	a,a
   7881                     501 00154$:
   7881 DD 77 FA      [19]  502 	ld	-6 (ix), a
   7884 DD 7E 04      [19]  503 	ld	a, 4 (ix)
   7887 D6 02         [ 7]  504 	sub	a, #0x02
   7889 20 04         [12]  505 	jr	NZ,00155$
   788B 3E 01         [ 7]  506 	ld	a,#0x01
   788D 18 01         [12]  507 	jr	00156$
   788F                     508 00155$:
   788F AF            [ 4]  509 	xor	a,a
   7890                     510 00156$:
   7890 DD 77 F9      [19]  511 	ld	-7 (ix), a
   7893 1E 00         [ 7]  512 	ld	e, #0x00
   7895                     513 00115$:
   7895 7B            [ 4]  514 	ld	a, e
   7896 DD 96 08      [19]  515 	sub	a, 8 (ix)
   7899 D2 4D 79      [10]  516 	jp	NC, 00117$
                            517 ;src/game/world.c:84: for(ix=0; ix<nBitsX; ix++)
   789C D5            [11]  518 	push	de
   789D 16 00         [ 7]  519 	ld	d,#0x00
   789F 6B            [ 4]  520 	ld	l, e
   78A0 62            [ 4]  521 	ld	h, d
   78A1 29            [11]  522 	add	hl, hl
   78A2 29            [11]  523 	add	hl, hl
   78A3 19            [11]  524 	add	hl, de
   78A4 29            [11]  525 	add	hl, hl
   78A5 29            [11]  526 	add	hl, hl
   78A6 29            [11]  527 	add	hl, hl
   78A7 29            [11]  528 	add	hl, hl
   78A8 D1            [10]  529 	pop	de
   78A9 4D            [ 4]  530 	ld	c, l
   78AA 44            [ 4]  531 	ld	b, h
   78AB DD 7E 05      [19]  532 	ld	a, 5 (ix)
   78AE 81            [ 4]  533 	add	a, c
   78AF DD 77 F7      [19]  534 	ld	-9 (ix), a
   78B2 DD 7E 06      [19]  535 	ld	a, 6 (ix)
   78B5 88            [ 4]  536 	adc	a, b
   78B6 DD 77 F8      [19]  537 	ld	-8 (ix), a
   78B9 D5            [11]  538 	push	de
   78BA DD 66 07      [19]  539 	ld	h, 7 (ix)
   78BD 2E 00         [ 7]  540 	ld	l, #0x00
   78BF 55            [ 4]  541 	ld	d, l
   78C0 06 08         [ 7]  542 	ld	b, #0x08
   78C2                     543 00157$:
   78C2 29            [11]  544 	add	hl, hl
   78C3 30 01         [12]  545 	jr	NC,00158$
   78C5 19            [11]  546 	add	hl, de
   78C6                     547 00158$:
   78C6 10 FA         [13]  548 	djnz	00157$
   78C8 D1            [10]  549 	pop	de
   78C9 DD 75 FB      [19]  550 	ld	-5 (ix), l
   78CC DD 74 FC      [19]  551 	ld	-4 (ix), h
   78CF 16 00         [ 7]  552 	ld	d, #0x00
   78D1                     553 00112$:
   78D1 7A            [ 4]  554 	ld	a, d
   78D2 DD 96 07      [19]  555 	sub	a, 7 (ix)
   78D5 30 72         [12]  556 	jr	NC,00116$
                            557 ;src/game/world.c:86: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   78D7 DD 72 FE      [19]  558 	ld	-2 (ix), d
   78DA DD 36 FF 00   [19]  559 	ld	-1 (ix), #0x00
   78DE DD 7E FE      [19]  560 	ld	a, -2 (ix)
   78E1 DD 86 FB      [19]  561 	add	a, -5 (ix)
   78E4 4F            [ 4]  562 	ld	c, a
   78E5 DD 7E FF      [19]  563 	ld	a, -1 (ix)
   78E8 DD 8E FC      [19]  564 	adc	a, -4 (ix)
   78EB 47            [ 4]  565 	ld	b, a
   78EC DD 6E 09      [19]  566 	ld	l,9 (ix)
   78EF DD 66 0A      [19]  567 	ld	h,10 (ix)
   78F2 D5            [11]  568 	push	de
   78F3 C5            [11]  569 	push	bc
   78F4 E5            [11]  570 	push	hl
   78F5 CD 46 60      [17]  571 	call	_cpct_getBit
   78F8 DD 75 FD      [19]  572 	ld	-3 (ix), l
   78FB D1            [10]  573 	pop	de
   78FC DD 7E FD      [19]  574 	ld	a, -3 (ix)
   78FF B7            [ 4]  575 	or	a, a
   7900 28 44         [12]  576 	jr	Z,00113$
   7902 DD 7E F7      [19]  577 	ld	a, -9 (ix)
   7905 DD 86 FE      [19]  578 	add	a, -2 (ix)
   7908 4F            [ 4]  579 	ld	c, a
   7909 DD 7E F8      [19]  580 	ld	a, -8 (ix)
   790C DD 8E FF      [19]  581 	adc	a, -1 (ix)
   790F 47            [ 4]  582 	ld	b,a
   7910 EE 80         [ 7]  583 	xor	a, #0x80
   7912 D6 8F         [ 7]  584 	sub	a, #0x8f
   7914 30 30         [12]  585 	jr	NC,00113$
                            586 ;src/game/world.c:88: if(tileType == FOREST)
   7916 DD 7E FA      [19]  587 	ld	a, -6 (ix)
   7919 B7            [ 4]  588 	or	a, a
   791A 28 0A         [12]  589 	jr	Z,00104$
                            590 ;src/game/world.c:89: p_world[index+iy*WIDTH+ix] = tileType;
   791C 21 25 67      [10]  591 	ld	hl, #_p_world
   791F 09            [11]  592 	add	hl, bc
   7920 DD 7E 04      [19]  593 	ld	a, 4 (ix)
   7923 77            [ 7]  594 	ld	(hl), a
   7924 18 20         [12]  595 	jr	00113$
   7926                     596 00104$:
                            597 ;src/game/world.c:90: else if(tileType==DWELLINGS1)
   7926 DD 7E F9      [19]  598 	ld	a, -7 (ix)
   7929 B7            [ 4]  599 	or	a, a
   792A 28 1A         [12]  600 	jr	Z,00113$
                            601 ;src/game/world.c:91: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandom_mxor_u8 ()%3+2;
   792C 21 25 67      [10]  602 	ld	hl, #_p_world
   792F 09            [11]  603 	add	hl, bc
   7930 E5            [11]  604 	push	hl
   7931 D5            [11]  605 	push	de
   7932 CD 54 64      [17]  606 	call	_cpct_getRandom_mxor_u8
   7935 45            [ 4]  607 	ld	b, l
   7936 3E 03         [ 7]  608 	ld	a, #0x03
   7938 F5            [11]  609 	push	af
   7939 33            [ 6]  610 	inc	sp
   793A C5            [11]  611 	push	bc
   793B 33            [ 6]  612 	inc	sp
   793C CD 2B 61      [17]  613 	call	__moduchar
   793F F1            [10]  614 	pop	af
   7940 4D            [ 4]  615 	ld	c, l
   7941 D1            [10]  616 	pop	de
   7942 E1            [10]  617 	pop	hl
   7943 0C            [ 4]  618 	inc	c
   7944 0C            [ 4]  619 	inc	c
   7945 71            [ 7]  620 	ld	(hl), c
   7946                     621 00113$:
                            622 ;src/game/world.c:84: for(ix=0; ix<nBitsX; ix++)
   7946 14            [ 4]  623 	inc	d
   7947 18 88         [12]  624 	jr	00112$
   7949                     625 00116$:
                            626 ;src/game/world.c:82: for(iy=0; iy<nBitsY; iy++)
   7949 1C            [ 4]  627 	inc	e
   794A C3 95 78      [10]  628 	jp	00115$
   794D                     629 00117$:
   794D DD F9         [10]  630 	ld	sp, ix
   794F DD E1         [14]  631 	pop	ix
   7951 C9            [10]  632 	ret
                            633 ;src/game/world.c:98: void generateWorld()
                            634 ;	---------------------------------
                            635 ; Function generateWorld
                            636 ; ---------------------------------
   7952                     637 _generateWorld::
   7952 DD E5         [15]  638 	push	ix
   7954 DD 21 00 00   [14]  639 	ld	ix,#0
   7958 DD 39         [15]  640 	add	ix,sp
   795A 21 E4 FF      [10]  641 	ld	hl, #-28
   795D 39            [11]  642 	add	hl, sp
   795E F9            [ 6]  643 	ld	sp, hl
                            644 ;src/game/world.c:105: CURSOR_MODE = NONE;
   795F 21 29 76      [10]  645 	ld	hl,#_CURSOR_MODE + 0
   7962 36 00         [10]  646 	ld	(hl), #0x00
                            647 ;src/game/world.c:108: cpct_setSeed_mxor ((u32)cpct_count2VSYNC());
   7964 CD AD 61      [17]  648 	call	_cpct_count2VSYNC
   7967 11 00 00      [10]  649 	ld	de,#0x0000
   796A CD FC 62      [17]  650 	call	_cpct_setSeed_mxor
                            651 ;src/game/world.c:112: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   796D 01 00 00      [10]  652 	ld	bc, #0x0000
   7970                     653 00119$:
                            654 ;src/game/world.c:114: p_world[iy] =  cpct_getRandom_mxor_u16()%2;
   7970 21 25 67      [10]  655 	ld	hl, #_p_world
   7973 09            [11]  656 	add	hl, bc
   7974 E5            [11]  657 	push	hl
   7975 C5            [11]  658 	push	bc
   7976 CD 58 63      [17]  659 	call	_cpct_getRandom_mxor_u16
   7979 5D            [ 4]  660 	ld	e, l
   797A C1            [10]  661 	pop	bc
   797B E1            [10]  662 	pop	hl
   797C 7B            [ 4]  663 	ld	a, e
   797D E6 01         [ 7]  664 	and	a, #0x01
   797F 77            [ 7]  665 	ld	(hl), a
                            666 ;src/game/world.c:112: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   7980 03            [ 6]  667 	inc	bc
   7981 78            [ 4]  668 	ld	a, b
   7982 EE 80         [ 7]  669 	xor	a, #0x80
   7984 D6 8F         [ 7]  670 	sub	a, #0x8f
   7986 38 E8         [12]  671 	jr	C,00119$
                            672 ;src/game/world.c:119: for(ix=0; ix<NBFOREST; ix++)
   7988 21 04 00      [10]  673 	ld	hl, #0x0004
   798B 39            [11]  674 	add	hl, sp
   798C DD 75 F8      [19]  675 	ld	-8 (ix), l
   798F DD 74 F9      [19]  676 	ld	-7 (ix), h
   7992 01 00 00      [10]  677 	ld	bc, #0x0000
   7995                     678 00121$:
                            679 ;src/game/world.c:121: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7995 C5            [11]  680 	push	bc
   7996 CD 58 63      [17]  681 	call	_cpct_getRandom_mxor_u16
   7999 11 00 0F      [10]  682 	ld	de, #0x0f00
   799C D5            [11]  683 	push	de
   799D E5            [11]  684 	push	hl
   799E CD 37 61      [17]  685 	call	__moduint
   79A1 F1            [10]  686 	pop	af
   79A2 E3            [19]  687 	ex	(sp),hl
   79A3 CD 58 63      [17]  688 	call	_cpct_getRandom_mxor_u16
   79A6 D1            [10]  689 	pop	de
   79A7 C1            [10]  690 	pop	bc
   79A8 7D            [ 4]  691 	ld	a, l
   79A9 E6 03         [ 7]  692 	and	a, #0x03
   79AB 6F            [ 4]  693 	ld	l, a
   79AC 26 00         [ 7]  694 	ld	h, #0x00
                            695 ;src/game/world.c:127: p_forest[1] = 0b11000111;
   79AE DD 7E F8      [19]  696 	ld	a, -8 (ix)
   79B1 C6 01         [ 7]  697 	add	a, #0x01
   79B3 DD 77 FE      [19]  698 	ld	-2 (ix), a
   79B6 DD 7E F9      [19]  699 	ld	a, -7 (ix)
   79B9 CE 00         [ 7]  700 	adc	a, #0x00
   79BB DD 77 FF      [19]  701 	ld	-1 (ix), a
                            702 ;src/game/world.c:128: p_forest[2] = 0b11011110;
   79BE DD 7E F8      [19]  703 	ld	a, -8 (ix)
   79C1 C6 02         [ 7]  704 	add	a, #0x02
   79C3 DD 77 F6      [19]  705 	ld	-10 (ix), a
   79C6 DD 7E F9      [19]  706 	ld	a, -7 (ix)
   79C9 CE 00         [ 7]  707 	adc	a, #0x00
   79CB DD 77 F7      [19]  708 	ld	-9 (ix), a
                            709 ;src/game/world.c:129: p_forest[3] = 0b01111110;
   79CE DD 7E F8      [19]  710 	ld	a, -8 (ix)
   79D1 C6 03         [ 7]  711 	add	a, #0x03
   79D3 DD 77 F0      [19]  712 	ld	-16 (ix), a
   79D6 DD 7E F9      [19]  713 	ld	a, -7 (ix)
   79D9 CE 00         [ 7]  714 	adc	a, #0x00
   79DB DD 77 F1      [19]  715 	ld	-15 (ix), a
                            716 ;src/game/world.c:130: p_forest[4] = 0b11111110; 
   79DE DD 7E F8      [19]  717 	ld	a, -8 (ix)
   79E1 C6 04         [ 7]  718 	add	a, #0x04
   79E3 DD 77 F2      [19]  719 	ld	-14 (ix), a
   79E6 DD 7E F9      [19]  720 	ld	a, -7 (ix)
   79E9 CE 00         [ 7]  721 	adc	a, #0x00
   79EB DD 77 F3      [19]  722 	ld	-13 (ix), a
                            723 ;src/game/world.c:131: p_forest[5] = 0b01111111;
   79EE DD 7E F8      [19]  724 	ld	a, -8 (ix)
   79F1 C6 05         [ 7]  725 	add	a, #0x05
   79F3 DD 77 FC      [19]  726 	ld	-4 (ix), a
   79F6 DD 7E F9      [19]  727 	ld	a, -7 (ix)
   79F9 CE 00         [ 7]  728 	adc	a, #0x00
   79FB DD 77 FD      [19]  729 	ld	-3 (ix), a
                            730 ;src/game/world.c:132: p_forest[6] = 0b11101111;
   79FE DD 7E F8      [19]  731 	ld	a, -8 (ix)
   7A01 C6 06         [ 7]  732 	add	a, #0x06
   7A03 DD 77 FA      [19]  733 	ld	-6 (ix), a
   7A06 DD 7E F9      [19]  734 	ld	a, -7 (ix)
   7A09 CE 00         [ 7]  735 	adc	a, #0x00
   7A0B DD 77 FB      [19]  736 	ld	-5 (ix), a
                            737 ;src/game/world.c:133: p_forest[7] = 0b11001111;
   7A0E DD 7E F8      [19]  738 	ld	a, -8 (ix)
   7A11 C6 07         [ 7]  739 	add	a, #0x07
   7A13 DD 77 F4      [19]  740 	ld	-12 (ix), a
   7A16 DD 7E F9      [19]  741 	ld	a, -7 (ix)
   7A19 CE 00         [ 7]  742 	adc	a, #0x00
   7A1B DD 77 F5      [19]  743 	ld	-11 (ix), a
                            744 ;src/game/world.c:123: switch(cpct_getRandom_mxor_u16()%4)
   7A1E 7D            [ 4]  745 	ld	a, l
   7A1F B7            [ 4]  746 	or	a, a
   7A20 B4            [ 4]  747 	or	a, h
   7A21 28 16         [12]  748 	jr	Z,00102$
   7A23 7D            [ 4]  749 	ld	a, l
   7A24 3D            [ 4]  750 	dec	a
   7A25 B4            [ 4]  751 	or	a, h
   7A26 28 54         [12]  752 	jr	Z,00103$
   7A28 7D            [ 4]  753 	ld	a, l
   7A29 D6 02         [ 7]  754 	sub	a, #0x02
   7A2B B4            [ 4]  755 	or	a, h
   7A2C CA BF 7A      [10]  756 	jp	Z,00104$
   7A2F 7D            [ 4]  757 	ld	a, l
   7A30 D6 03         [ 7]  758 	sub	a, #0x03
   7A32 B4            [ 4]  759 	or	a, h
   7A33 CA 01 7B      [10]  760 	jp	Z,00105$
   7A36 C3 41 7B      [10]  761 	jp	00106$
                            762 ;src/game/world.c:125: case 0:
   7A39                     763 00102$:
                            764 ;src/game/world.c:126: p_forest[0] = 0b10000100;
   7A39 DD 6E F8      [19]  765 	ld	l,-8 (ix)
   7A3C DD 66 F9      [19]  766 	ld	h,-7 (ix)
   7A3F 36 84         [10]  767 	ld	(hl), #0x84
                            768 ;src/game/world.c:127: p_forest[1] = 0b11000111;
   7A41 DD 6E FE      [19]  769 	ld	l,-2 (ix)
   7A44 DD 66 FF      [19]  770 	ld	h,-1 (ix)
   7A47 36 C7         [10]  771 	ld	(hl), #0xc7
                            772 ;src/game/world.c:128: p_forest[2] = 0b11011110;
   7A49 DD 6E F6      [19]  773 	ld	l,-10 (ix)
   7A4C DD 66 F7      [19]  774 	ld	h,-9 (ix)
   7A4F 36 DE         [10]  775 	ld	(hl), #0xde
                            776 ;src/game/world.c:129: p_forest[3] = 0b01111110;
   7A51 DD 6E F0      [19]  777 	ld	l,-16 (ix)
   7A54 DD 66 F1      [19]  778 	ld	h,-15 (ix)
   7A57 36 7E         [10]  779 	ld	(hl), #0x7e
                            780 ;src/game/world.c:130: p_forest[4] = 0b11111110; 
   7A59 DD 6E F2      [19]  781 	ld	l,-14 (ix)
   7A5C DD 66 F3      [19]  782 	ld	h,-13 (ix)
   7A5F 36 FE         [10]  783 	ld	(hl), #0xfe
                            784 ;src/game/world.c:131: p_forest[5] = 0b01111111;
   7A61 DD 6E FC      [19]  785 	ld	l,-4 (ix)
   7A64 DD 66 FD      [19]  786 	ld	h,-3 (ix)
   7A67 36 7F         [10]  787 	ld	(hl), #0x7f
                            788 ;src/game/world.c:132: p_forest[6] = 0b11101111;
   7A69 DD 6E FA      [19]  789 	ld	l,-6 (ix)
   7A6C DD 66 FB      [19]  790 	ld	h,-5 (ix)
   7A6F 36 EF         [10]  791 	ld	(hl), #0xef
                            792 ;src/game/world.c:133: p_forest[7] = 0b11001111;
   7A71 DD 6E F4      [19]  793 	ld	l,-12 (ix)
   7A74 DD 66 F5      [19]  794 	ld	h,-11 (ix)
   7A77 36 CF         [10]  795 	ld	(hl), #0xcf
                            796 ;src/game/world.c:134: break;
   7A79 C3 41 7B      [10]  797 	jp	00106$
                            798 ;src/game/world.c:135: case 1:
   7A7C                     799 00103$:
                            800 ;src/game/world.c:136: p_forest[0] = 0b00001100;
   7A7C DD 6E F8      [19]  801 	ld	l,-8 (ix)
   7A7F DD 66 F9      [19]  802 	ld	h,-7 (ix)
   7A82 36 0C         [10]  803 	ld	(hl), #0x0c
                            804 ;src/game/world.c:137: p_forest[1] = 0b11111000;
   7A84 DD 6E FE      [19]  805 	ld	l,-2 (ix)
   7A87 DD 66 FF      [19]  806 	ld	h,-1 (ix)
   7A8A 36 F8         [10]  807 	ld	(hl), #0xf8
                            808 ;src/game/world.c:138: p_forest[2] = 0b00111111;
   7A8C DD 6E F6      [19]  809 	ld	l,-10 (ix)
   7A8F DD 66 F7      [19]  810 	ld	h,-9 (ix)
   7A92 36 3F         [10]  811 	ld	(hl), #0x3f
                            812 ;src/game/world.c:139: p_forest[3] = 0b01111110;
   7A94 DD 6E F0      [19]  813 	ld	l,-16 (ix)
   7A97 DD 66 F1      [19]  814 	ld	h,-15 (ix)
   7A9A 36 7E         [10]  815 	ld	(hl), #0x7e
                            816 ;src/game/world.c:140: p_forest[4] = 0b11111110; 
   7A9C DD 6E F2      [19]  817 	ld	l,-14 (ix)
   7A9F DD 66 F3      [19]  818 	ld	h,-13 (ix)
   7AA2 36 FE         [10]  819 	ld	(hl), #0xfe
                            820 ;src/game/world.c:141: p_forest[5] = 0b01011111;
   7AA4 DD 6E FC      [19]  821 	ld	l,-4 (ix)
   7AA7 DD 66 FD      [19]  822 	ld	h,-3 (ix)
   7AAA 36 5F         [10]  823 	ld	(hl), #0x5f
                            824 ;src/game/world.c:142: p_forest[6] = 0b11001111;
   7AAC DD 6E FA      [19]  825 	ld	l,-6 (ix)
   7AAF DD 66 FB      [19]  826 	ld	h,-5 (ix)
   7AB2 36 CF         [10]  827 	ld	(hl), #0xcf
                            828 ;src/game/world.c:143: p_forest[7] = 0b10001100;
   7AB4 DD 6E F4      [19]  829 	ld	l,-12 (ix)
   7AB7 DD 66 F5      [19]  830 	ld	h,-11 (ix)
   7ABA 36 8C         [10]  831 	ld	(hl), #0x8c
                            832 ;src/game/world.c:144: break;
   7ABC C3 41 7B      [10]  833 	jp	00106$
                            834 ;src/game/world.c:145: case 2:
   7ABF                     835 00104$:
                            836 ;src/game/world.c:146: p_forest[0] = 0b00110000;
   7ABF DD 6E F8      [19]  837 	ld	l,-8 (ix)
   7AC2 DD 66 F9      [19]  838 	ld	h,-7 (ix)
   7AC5 36 30         [10]  839 	ld	(hl), #0x30
                            840 ;src/game/world.c:147: p_forest[1] = 0b11110100;
   7AC7 DD 6E FE      [19]  841 	ld	l,-2 (ix)
   7ACA DD 66 FF      [19]  842 	ld	h,-1 (ix)
   7ACD 36 F4         [10]  843 	ld	(hl), #0xf4
                            844 ;src/game/world.c:148: p_forest[2] = 0b11111111;
   7ACF DD 6E F6      [19]  845 	ld	l,-10 (ix)
   7AD2 DD 66 F7      [19]  846 	ld	h,-9 (ix)
   7AD5 36 FF         [10]  847 	ld	(hl), #0xff
                            848 ;src/game/world.c:149: p_forest[3] = 0b11111111;
   7AD7 DD 6E F0      [19]  849 	ld	l,-16 (ix)
   7ADA DD 66 F1      [19]  850 	ld	h,-15 (ix)
   7ADD 36 FF         [10]  851 	ld	(hl), #0xff
                            852 ;src/game/world.c:150: p_forest[4] = 0b01111100;
   7ADF DD 6E F2      [19]  853 	ld	l,-14 (ix)
   7AE2 DD 66 F3      [19]  854 	ld	h,-13 (ix)
   7AE5 36 7C         [10]  855 	ld	(hl), #0x7c
                            856 ;src/game/world.c:151: p_forest[5] = 0b01111110;
   7AE7 DD 6E FC      [19]  857 	ld	l,-4 (ix)
   7AEA DD 66 FD      [19]  858 	ld	h,-3 (ix)
   7AED 36 7E         [10]  859 	ld	(hl), #0x7e
                            860 ;src/game/world.c:152: p_forest[6] = 0b00111110;
   7AEF DD 6E FA      [19]  861 	ld	l,-6 (ix)
   7AF2 DD 66 FB      [19]  862 	ld	h,-5 (ix)
   7AF5 36 3E         [10]  863 	ld	(hl), #0x3e
                            864 ;src/game/world.c:153: p_forest[7] = 0b00011000;
   7AF7 DD 6E F4      [19]  865 	ld	l,-12 (ix)
   7AFA DD 66 F5      [19]  866 	ld	h,-11 (ix)
   7AFD 36 18         [10]  867 	ld	(hl), #0x18
                            868 ;src/game/world.c:154: break;
   7AFF 18 40         [12]  869 	jr	00106$
                            870 ;src/game/world.c:155: case 3:
   7B01                     871 00105$:
                            872 ;src/game/world.c:156: p_forest[0] = 0b11000000; 
   7B01 DD 6E F8      [19]  873 	ld	l,-8 (ix)
   7B04 DD 66 F9      [19]  874 	ld	h,-7 (ix)
   7B07 36 C0         [10]  875 	ld	(hl), #0xc0
                            876 ;src/game/world.c:157: p_forest[1] = 0b11100111;
   7B09 DD 6E FE      [19]  877 	ld	l,-2 (ix)
   7B0C DD 66 FF      [19]  878 	ld	h,-1 (ix)
   7B0F 36 E7         [10]  879 	ld	(hl), #0xe7
                            880 ;src/game/world.c:158: p_forest[2] = 0b01111110;
   7B11 DD 6E F6      [19]  881 	ld	l,-10 (ix)
   7B14 DD 66 F7      [19]  882 	ld	h,-9 (ix)
   7B17 36 7E         [10]  883 	ld	(hl), #0x7e
                            884 ;src/game/world.c:159: p_forest[3] = 0b01111110;
   7B19 DD 6E F0      [19]  885 	ld	l,-16 (ix)
   7B1C DD 66 F1      [19]  886 	ld	h,-15 (ix)
   7B1F 36 7E         [10]  887 	ld	(hl), #0x7e
                            888 ;src/game/world.c:160: p_forest[4] = 0b11111110;
   7B21 DD 6E F2      [19]  889 	ld	l,-14 (ix)
   7B24 DD 66 F3      [19]  890 	ld	h,-13 (ix)
   7B27 36 FE         [10]  891 	ld	(hl), #0xfe
                            892 ;src/game/world.c:161: p_forest[5] = 0b11111100;
   7B29 DD 6E FC      [19]  893 	ld	l,-4 (ix)
   7B2C DD 66 FD      [19]  894 	ld	h,-3 (ix)
   7B2F 36 FC         [10]  895 	ld	(hl), #0xfc
                            896 ;src/game/world.c:162: p_forest[6] = 0b01111000;
   7B31 DD 6E FA      [19]  897 	ld	l,-6 (ix)
   7B34 DD 66 FB      [19]  898 	ld	h,-5 (ix)
   7B37 36 78         [10]  899 	ld	(hl), #0x78
                            900 ;src/game/world.c:163: p_forest[7] = 0b00110000;
   7B39 DD 6E F4      [19]  901 	ld	l,-12 (ix)
   7B3C DD 66 F5      [19]  902 	ld	h,-11 (ix)
   7B3F 36 30         [10]  903 	ld	(hl), #0x30
                            904 ;src/game/world.c:165: }
   7B41                     905 00106$:
                            906 ;src/game/world.c:166: patternTile(FOREST, iy, 8, 8, p_forest);
   7B41 DD 6E F8      [19]  907 	ld	l,-8 (ix)
   7B44 DD 66 F9      [19]  908 	ld	h,-7 (ix)
   7B47 C5            [11]  909 	push	bc
   7B48 E5            [11]  910 	push	hl
   7B49 21 08 08      [10]  911 	ld	hl, #0x0808
   7B4C E5            [11]  912 	push	hl
   7B4D D5            [11]  913 	push	de
   7B4E 3E 08         [ 7]  914 	ld	a, #0x08
   7B50 F5            [11]  915 	push	af
   7B51 33            [ 6]  916 	inc	sp
   7B52 CD 68 78      [17]  917 	call	_patternTile
   7B55 21 07 00      [10]  918 	ld	hl, #7
   7B58 39            [11]  919 	add	hl, sp
   7B59 F9            [ 6]  920 	ld	sp, hl
   7B5A C1            [10]  921 	pop	bc
                            922 ;src/game/world.c:119: for(ix=0; ix<NBFOREST; ix++)
   7B5B 03            [ 6]  923 	inc	bc
   7B5C 79            [ 4]  924 	ld	a, c
   7B5D D6 32         [ 7]  925 	sub	a, #0x32
   7B5F 78            [ 4]  926 	ld	a, b
   7B60 17            [ 4]  927 	rla
   7B61 3F            [ 4]  928 	ccf
   7B62 1F            [ 4]  929 	rra
   7B63 DE 80         [ 7]  930 	sbc	a, #0x80
   7B65 DA 95 79      [10]  931 	jp	C, 00121$
                            932 ;src/game/world.c:172: for(ix=0; ix<NBFARM; ix++)
   7B68 01 3C 00      [10]  933 	ld	bc, #0x003c
   7B6B                     934 00125$:
                            935 ;src/game/world.c:174: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT)%(WIDTH*HEIGHT);
   7B6B C5            [11]  936 	push	bc
   7B6C CD 58 63      [17]  937 	call	_cpct_getRandom_mxor_u16
   7B6F 11 00 0F      [10]  938 	ld	de, #0x0f00
   7B72 D5            [11]  939 	push	de
   7B73 E5            [11]  940 	push	hl
   7B74 CD 37 61      [17]  941 	call	__moduint
   7B77 F1            [10]  942 	pop	af
   7B78 F1            [10]  943 	pop	af
   7B79 11 00 0F      [10]  944 	ld	de, #0x0f00
   7B7C D5            [11]  945 	push	de
   7B7D E5            [11]  946 	push	hl
   7B7E CD 37 61      [17]  947 	call	__moduint
   7B81 F1            [10]  948 	pop	af
   7B82 F1            [10]  949 	pop	af
   7B83 C1            [10]  950 	pop	bc
                            951 ;src/game/world.c:175: p_world[iy] = cpct_rand()%2+5;
   7B84 11 25 67      [10]  952 	ld	de, #_p_world
   7B87 19            [11]  953 	add	hl, de
   7B88 E5            [11]  954 	push	hl
   7B89 C5            [11]  955 	push	bc
   7B8A CD 54 64      [17]  956 	call	_cpct_getRandom_mxor_u8
   7B8D 7D            [ 4]  957 	ld	a, l
   7B8E C1            [10]  958 	pop	bc
   7B8F E1            [10]  959 	pop	hl
   7B90 E6 01         [ 7]  960 	and	a, #0x01
   7B92 C6 05         [ 7]  961 	add	a, #0x05
   7B94 77            [ 7]  962 	ld	(hl), a
   7B95 0B            [ 6]  963 	dec	bc
                            964 ;src/game/world.c:172: for(ix=0; ix<NBFARM; ix++)
   7B96 78            [ 4]  965 	ld	a, b
   7B97 B1            [ 4]  966 	or	a,c
   7B98 20 D1         [12]  967 	jr	NZ,00125$
                            968 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   7B9A 01 14 00      [10]  969 	ld	bc, #0x0014
   7B9D                     970 00128$:
                            971 ;src/game/world.c:182: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7B9D C5            [11]  972 	push	bc
   7B9E CD 58 63      [17]  973 	call	_cpct_getRandom_mxor_u16
   7BA1 11 00 0F      [10]  974 	ld	de, #0x0f00
   7BA4 D5            [11]  975 	push	de
   7BA5 E5            [11]  976 	push	hl
   7BA6 CD 37 61      [17]  977 	call	__moduint
   7BA9 F1            [10]  978 	pop	af
   7BAA F1            [10]  979 	pop	af
   7BAB C1            [10]  980 	pop	bc
                            981 ;src/game/world.c:183: p_world[iy] = cpct_rand()%3+2;
   7BAC 11 25 67      [10]  982 	ld	de, #_p_world
   7BAF 19            [11]  983 	add	hl, de
   7BB0 E5            [11]  984 	push	hl
   7BB1 C5            [11]  985 	push	bc
   7BB2 CD 54 64      [17]  986 	call	_cpct_getRandom_mxor_u8
   7BB5 55            [ 4]  987 	ld	d, l
   7BB6 3E 03         [ 7]  988 	ld	a, #0x03
   7BB8 F5            [11]  989 	push	af
   7BB9 33            [ 6]  990 	inc	sp
   7BBA D5            [11]  991 	push	de
   7BBB 33            [ 6]  992 	inc	sp
   7BBC CD 2B 61      [17]  993 	call	__moduchar
   7BBF F1            [10]  994 	pop	af
   7BC0 5D            [ 4]  995 	ld	e, l
   7BC1 C1            [10]  996 	pop	bc
   7BC2 E1            [10]  997 	pop	hl
   7BC3 1C            [ 4]  998 	inc	e
   7BC4 1C            [ 4]  999 	inc	e
   7BC5 73            [ 7] 1000 	ld	(hl), e
   7BC6 0B            [ 6] 1001 	dec	bc
                           1002 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   7BC7 78            [ 4] 1003 	ld	a, b
   7BC8 B1            [ 4] 1004 	or	a,c
   7BC9 20 D2         [12] 1005 	jr	NZ,00128$
                           1006 ;src/game/world.c:186: for(ix=0; ix<NBURBAN; ix++)
   7BCB 21 02 00      [10] 1007 	ld	hl, #0x0002
   7BCE 39            [11] 1008 	add	hl, sp
   7BCF 4D            [ 4] 1009 	ld	c, l
   7BD0 44            [ 4] 1010 	ld	b, h
   7BD1 21 00 00      [10] 1011 	ld	hl, #0x0000
   7BD4 E3            [19] 1012 	ex	(sp), hl
   7BD5                    1013 00129$:
                           1014 ;src/game/world.c:188: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7BD5 C5            [11] 1015 	push	bc
   7BD6 CD 58 63      [17] 1016 	call	_cpct_getRandom_mxor_u16
   7BD9 11 00 0F      [10] 1017 	ld	de, #0x0f00
   7BDC D5            [11] 1018 	push	de
   7BDD E5            [11] 1019 	push	hl
   7BDE CD 37 61      [17] 1020 	call	__moduint
   7BE1 F1            [10] 1021 	pop	af
   7BE2 F1            [10] 1022 	pop	af
   7BE3 C1            [10] 1023 	pop	bc
   7BE4 DD 75 F4      [19] 1024 	ld	-12 (ix), l
   7BE7 DD 74 F5      [19] 1025 	ld	-11 (ix), h
                           1026 ;src/game/world.c:190: switch(cpct_rand()%6)
   7BEA C5            [11] 1027 	push	bc
   7BEB CD 54 64      [17] 1028 	call	_cpct_getRandom_mxor_u8
   7BEE 55            [ 4] 1029 	ld	d, l
   7BEF 3E 06         [ 7] 1030 	ld	a, #0x06
   7BF1 F5            [11] 1031 	push	af
   7BF2 33            [ 6] 1032 	inc	sp
   7BF3 D5            [11] 1033 	push	de
   7BF4 33            [ 6] 1034 	inc	sp
   7BF5 CD 2B 61      [17] 1035 	call	__moduchar
   7BF8 F1            [10] 1036 	pop	af
   7BF9 5D            [ 4] 1037 	ld	e, l
   7BFA C1            [10] 1038 	pop	bc
   7BFB 3E 05         [ 7] 1039 	ld	a, #0x05
   7BFD 93            [ 4] 1040 	sub	a, e
   7BFE 38 6A         [12] 1041 	jr	C,00116$
                           1042 ;src/game/world.c:194: p_cities[1] = 0b01000110; // 01100010;
   7C00 21 01 00      [10] 1043 	ld	hl, #0x0001
   7C03 09            [11] 1044 	add	hl,bc
   7C04 DD 75 FA      [19] 1045 	ld	-6 (ix), l
   7C07 DD 74 FB      [19] 1046 	ld	-5 (ix), h
                           1047 ;src/game/world.c:190: switch(cpct_rand()%6)
   7C0A 16 00         [ 7] 1048 	ld	d, #0x00
   7C0C 21 12 7C      [10] 1049 	ld	hl, #00211$
   7C0F 19            [11] 1050 	add	hl, de
   7C10 19            [11] 1051 	add	hl, de
                           1052 ;src/game/world.c:192: case 0:
   7C11 E9            [ 4] 1053 	jp	(hl)
   7C12                    1054 00211$:
   7C12 18 0A         [12] 1055 	jr	00110$
   7C14 18 15         [12] 1056 	jr	00111$
   7C16 18 20         [12] 1057 	jr	00112$
   7C18 18 2B         [12] 1058 	jr	00113$
   7C1A 18 36         [12] 1059 	jr	00114$
   7C1C 18 41         [12] 1060 	jr	00115$
   7C1E                    1061 00110$:
                           1062 ;src/game/world.c:193: p_cities[0] = 0b01110010; // 01001110;
   7C1E 3E 72         [ 7] 1063 	ld	a, #0x72
   7C20 02            [ 7] 1064 	ld	(bc), a
                           1065 ;src/game/world.c:194: p_cities[1] = 0b01000110; // 01100010;
   7C21 DD 6E FA      [19] 1066 	ld	l,-6 (ix)
   7C24 DD 66 FB      [19] 1067 	ld	h,-5 (ix)
   7C27 36 46         [10] 1068 	ld	(hl), #0x46
                           1069 ;src/game/world.c:195: break;
   7C29 18 3F         [12] 1070 	jr	00116$
                           1071 ;src/game/world.c:197: case 1:
   7C2B                    1072 00111$:
                           1073 ;src/game/world.c:198: p_cities[0] = 0b01100000; // 00000110;
   7C2B 3E 60         [ 7] 1074 	ld	a, #0x60
   7C2D 02            [ 7] 1075 	ld	(bc), a
                           1076 ;src/game/world.c:199: p_cities[1] = 0b00000110; // 01100000;
   7C2E DD 6E FA      [19] 1077 	ld	l,-6 (ix)
   7C31 DD 66 FB      [19] 1078 	ld	h,-5 (ix)
   7C34 36 06         [10] 1079 	ld	(hl), #0x06
                           1080 ;src/game/world.c:200: break;
   7C36 18 32         [12] 1081 	jr	00116$
                           1082 ;src/game/world.c:202: case 2:
   7C38                    1083 00112$:
                           1084 ;src/game/world.c:203: p_cities[0] = 0b00010000; // 00001000;
   7C38 3E 10         [ 7] 1085 	ld	a, #0x10
   7C3A 02            [ 7] 1086 	ld	(bc), a
                           1087 ;src/game/world.c:204: p_cities[1] = 0b00000110; // 01100000;
   7C3B DD 6E FA      [19] 1088 	ld	l,-6 (ix)
   7C3E DD 66 FB      [19] 1089 	ld	h,-5 (ix)
   7C41 36 06         [10] 1090 	ld	(hl), #0x06
                           1091 ;src/game/world.c:205: break;
   7C43 18 25         [12] 1092 	jr	00116$
                           1093 ;src/game/world.c:207: case 3:
   7C45                    1094 00113$:
                           1095 ;src/game/world.c:208: p_cities[0] = 0b11000000; // 00000011;
   7C45 3E C0         [ 7] 1096 	ld	a, #0xc0
   7C47 02            [ 7] 1097 	ld	(bc), a
                           1098 ;src/game/world.c:209: p_cities[1] = 0b00110001; // 10001100;
   7C48 DD 6E FA      [19] 1099 	ld	l,-6 (ix)
   7C4B DD 66 FB      [19] 1100 	ld	h,-5 (ix)
   7C4E 36 31         [10] 1101 	ld	(hl), #0x31
                           1102 ;src/game/world.c:210: break;
   7C50 18 18         [12] 1103 	jr	00116$
                           1104 ;src/game/world.c:212: case 4:
   7C52                    1105 00114$:
                           1106 ;src/game/world.c:213: p_cities[0] = 0b11000100; // 00100011;
   7C52 3E C4         [ 7] 1107 	ld	a, #0xc4
   7C54 02            [ 7] 1108 	ld	(bc), a
                           1109 ;src/game/world.c:214: p_cities[1] = 0b00001110; // 01110000;
   7C55 DD 6E FA      [19] 1110 	ld	l,-6 (ix)
   7C58 DD 66 FB      [19] 1111 	ld	h,-5 (ix)
   7C5B 36 0E         [10] 1112 	ld	(hl), #0x0e
                           1113 ;src/game/world.c:215: break;
   7C5D 18 0B         [12] 1114 	jr	00116$
                           1115 ;src/game/world.c:217: case 5:
   7C5F                    1116 00115$:
                           1117 ;src/game/world.c:218: p_cities[0] = 0b01000000; // 00000010;
   7C5F 3E 40         [ 7] 1118 	ld	a, #0x40
   7C61 02            [ 7] 1119 	ld	(bc), a
                           1120 ;src/game/world.c:219: p_cities[1] = 0b01001110; // 01110010;
   7C62 DD 6E FA      [19] 1121 	ld	l,-6 (ix)
   7C65 DD 66 FB      [19] 1122 	ld	h,-5 (ix)
   7C68 36 4E         [10] 1123 	ld	(hl), #0x4e
                           1124 ;src/game/world.c:221: }
   7C6A                    1125 00116$:
                           1126 ;src/game/world.c:223: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   7C6A 59            [ 4] 1127 	ld	e, c
   7C6B 50            [ 4] 1128 	ld	d, b
   7C6C C5            [11] 1129 	push	bc
   7C6D D5            [11] 1130 	push	de
   7C6E 21 04 04      [10] 1131 	ld	hl, #0x0404
   7C71 E5            [11] 1132 	push	hl
   7C72 DD 6E F4      [19] 1133 	ld	l,-12 (ix)
   7C75 DD 66 F5      [19] 1134 	ld	h,-11 (ix)
   7C78 E5            [11] 1135 	push	hl
   7C79 3E 02         [ 7] 1136 	ld	a, #0x02
   7C7B F5            [11] 1137 	push	af
   7C7C 33            [ 6] 1138 	inc	sp
   7C7D CD 68 78      [17] 1139 	call	_patternTile
   7C80 21 07 00      [10] 1140 	ld	hl, #7
   7C83 39            [11] 1141 	add	hl, sp
   7C84 F9            [ 6] 1142 	ld	sp, hl
   7C85 C1            [10] 1143 	pop	bc
                           1144 ;src/game/world.c:186: for(ix=0; ix<NBURBAN; ix++)
   7C86 DD 34 E4      [23] 1145 	inc	-28 (ix)
   7C89 20 03         [12] 1146 	jr	NZ,00212$
   7C8B DD 34 E5      [23] 1147 	inc	-27 (ix)
   7C8E                    1148 00212$:
   7C8E DD 7E E4      [19] 1149 	ld	a, -28 (ix)
   7C91 D6 14         [ 7] 1150 	sub	a, #0x14
   7C93 DD 7E E5      [19] 1151 	ld	a, -27 (ix)
   7C96 17            [ 4] 1152 	rla
   7C97 3F            [ 4] 1153 	ccf
   7C98 1F            [ 4] 1154 	rra
   7C99 DE 80         [ 7] 1155 	sbc	a, #0x80
   7C9B DA D5 7B      [10] 1156 	jp	C, 00129$
                           1157 ;src/game/world.c:228: for(ix=0; ix<NBLIVESTOCK; ix++)
   7C9E 01 13 00      [10] 1158 	ld	bc, #0x0013
   7CA1                    1159 00133$:
                           1160 ;src/game/world.c:230: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7CA1 C5            [11] 1161 	push	bc
   7CA2 CD 58 63      [17] 1162 	call	_cpct_getRandom_mxor_u16
   7CA5 11 00 0F      [10] 1163 	ld	de, #0x0f00
   7CA8 D5            [11] 1164 	push	de
   7CA9 E5            [11] 1165 	push	hl
   7CAA CD 37 61      [17] 1166 	call	__moduint
   7CAD F1            [10] 1167 	pop	af
   7CAE F1            [10] 1168 	pop	af
   7CAF C1            [10] 1169 	pop	bc
                           1170 ;src/game/world.c:231: p_world[iy] = LIVESTOCK;
   7CB0 11 25 67      [10] 1171 	ld	de, #_p_world
   7CB3 19            [11] 1172 	add	hl, de
   7CB4 36 09         [10] 1173 	ld	(hl), #0x09
   7CB6 0B            [ 6] 1174 	dec	bc
                           1175 ;src/game/world.c:228: for(ix=0; ix<NBLIVESTOCK; ix++)
   7CB7 78            [ 4] 1176 	ld	a, b
   7CB8 B1            [ 4] 1177 	or	a,c
   7CB9 20 E6         [12] 1178 	jr	NZ,00133$
   7CBB DD F9         [10] 1179 	ld	sp, ix
   7CBD DD E1         [14] 1180 	pop	ix
   7CBF C9            [10] 1181 	ret
                           1182 ;src/game/world.c:235: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1183 ;	---------------------------------
                           1184 ; Function drawTile
                           1185 ; ---------------------------------
   7CC0                    1186 _drawTile::
   7CC0 DD E5         [15] 1187 	push	ix
   7CC2 DD 21 00 00   [14] 1188 	ld	ix,#0
   7CC6 DD 39         [15] 1189 	add	ix,sp
                           1190 ;src/game/world.c:238: int adress = (y_+iy)*WIDTH+x_+ix;
   7CC8 DD 4E 05      [19] 1191 	ld	c, 5 (ix)
   7CCB 06 00         [ 7] 1192 	ld	b, #0x00
   7CCD DD 6E 07      [19] 1193 	ld	l, 7 (ix)
   7CD0 26 00         [ 7] 1194 	ld	h, #0x00
   7CD2 09            [11] 1195 	add	hl, bc
   7CD3 4D            [ 4] 1196 	ld	c, l
   7CD4 44            [ 4] 1197 	ld	b, h
   7CD5 29            [11] 1198 	add	hl, hl
   7CD6 29            [11] 1199 	add	hl, hl
   7CD7 09            [11] 1200 	add	hl, bc
   7CD8 29            [11] 1201 	add	hl, hl
   7CD9 29            [11] 1202 	add	hl, hl
   7CDA 29            [11] 1203 	add	hl, hl
   7CDB 29            [11] 1204 	add	hl, hl
   7CDC DD 4E 04      [19] 1205 	ld	c, 4 (ix)
   7CDF 06 00         [ 7] 1206 	ld	b, #0x00
   7CE1 09            [11] 1207 	add	hl, bc
   7CE2 DD 4E 06      [19] 1208 	ld	c, 6 (ix)
   7CE5 06 00         [ 7] 1209 	ld	b, #0x00
   7CE7 09            [11] 1210 	add	hl,bc
   7CE8 5D            [ 4] 1211 	ld	e, l
   7CE9 54            [ 4] 1212 	ld	d, h
                           1213 ;src/game/world.c:240: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   7CEA DD 7E 07      [19] 1214 	ld	a, 7 (ix)
   7CED 07            [ 4] 1215 	rlca
   7CEE 07            [ 4] 1216 	rlca
   7CEF 07            [ 4] 1217 	rlca
   7CF0 07            [ 4] 1218 	rlca
   7CF1 E6 F0         [ 7] 1219 	and	a, #0xf0
   7CF3 67            [ 4] 1220 	ld	h, a
   7CF4 DD 7E 06      [19] 1221 	ld	a, 6 (ix)
   7CF7 87            [ 4] 1222 	add	a, a
   7CF8 87            [ 4] 1223 	add	a, a
   7CF9 47            [ 4] 1224 	ld	b, a
   7CFA D5            [11] 1225 	push	de
   7CFB E5            [11] 1226 	push	hl
   7CFC 33            [ 6] 1227 	inc	sp
   7CFD C5            [11] 1228 	push	bc
   7CFE 33            [ 6] 1229 	inc	sp
   7CFF 21 00 C0      [10] 1230 	ld	hl, #0xc000
   7D02 E5            [11] 1231 	push	hl
   7D03 CD 6D 65      [17] 1232 	call	_cpct_getScreenPtr
   7D06 4D            [ 4] 1233 	ld	c, l
   7D07 44            [ 4] 1234 	ld	b, h
   7D08 D1            [10] 1235 	pop	de
                           1236 ;src/game/world.c:242: switch(p_world[adress])
   7D09 21 25 67      [10] 1237 	ld	hl, #_p_world+0
   7D0C 19            [11] 1238 	add	hl, de
   7D0D 5E            [ 7] 1239 	ld	e, (hl)
   7D0E 3E 19         [ 7] 1240 	ld	a, #0x19
   7D10 93            [ 4] 1241 	sub	a, e
   7D11 DA E6 7E      [10] 1242 	jp	C, 00128$
   7D14 16 00         [ 7] 1243 	ld	d, #0x00
   7D16 21 1D 7D      [10] 1244 	ld	hl, #00134$
   7D19 19            [11] 1245 	add	hl, de
   7D1A 19            [11] 1246 	add	hl, de
   7D1B 19            [11] 1247 	add	hl, de
   7D1C E9            [ 4] 1248 	jp	(hl)
   7D1D                    1249 00134$:
   7D1D C3 6B 7D      [10] 1250 	jp	00101$
   7D20 C3 7A 7D      [10] 1251 	jp	00102$
   7D23 C3 89 7D      [10] 1252 	jp	00103$
   7D26 C3 98 7D      [10] 1253 	jp	00104$
   7D29 C3 A7 7D      [10] 1254 	jp	00105$
   7D2C C3 B6 7D      [10] 1255 	jp	00106$
   7D2F C3 C5 7D      [10] 1256 	jp	00107$
   7D32 C3 D4 7D      [10] 1257 	jp	00108$
   7D35 C3 E3 7D      [10] 1258 	jp	00109$
   7D38 C3 F2 7D      [10] 1259 	jp	00110$
   7D3B C3 01 7E      [10] 1260 	jp	00111$
   7D3E C3 10 7E      [10] 1261 	jp	00112$
   7D41 C3 1F 7E      [10] 1262 	jp	00113$
   7D44 C3 2E 7E      [10] 1263 	jp	00114$
   7D47 C3 3D 7E      [10] 1264 	jp	00115$
   7D4A C3 4C 7E      [10] 1265 	jp	00116$
   7D4D C3 5B 7E      [10] 1266 	jp	00117$
   7D50 C3 6A 7E      [10] 1267 	jp	00118$
   7D53 C3 78 7E      [10] 1268 	jp	00119$
   7D56 C3 86 7E      [10] 1269 	jp	00120$
   7D59 C3 94 7E      [10] 1270 	jp	00121$
   7D5C C3 A2 7E      [10] 1271 	jp	00122$
   7D5F C3 B0 7E      [10] 1272 	jp	00123$
   7D62 C3 BE 7E      [10] 1273 	jp	00124$
   7D65 C3 CC 7E      [10] 1274 	jp	00125$
   7D68 C3 DA 7E      [10] 1275 	jp	00126$
                           1276 ;src/game/world.c:244: case GRASS1:
   7D6B                    1277 00101$:
                           1278 ;src/game/world.c:245: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   7D6B 21 04 10      [10] 1279 	ld	hl, #0x1004
   7D6E E5            [11] 1280 	push	hl
   7D6F C5            [11] 1281 	push	bc
   7D70 21 D4 47      [10] 1282 	ld	hl, #_grass1
   7D73 E5            [11] 1283 	push	hl
   7D74 CD 86 60      [17] 1284 	call	_cpct_drawSprite
                           1285 ;src/game/world.c:246: break;
   7D77 C3 E6 7E      [10] 1286 	jp	00128$
                           1287 ;src/game/world.c:247: case GRASS2:
   7D7A                    1288 00102$:
                           1289 ;src/game/world.c:248: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   7D7A 21 04 10      [10] 1290 	ld	hl, #0x1004
   7D7D E5            [11] 1291 	push	hl
   7D7E C5            [11] 1292 	push	bc
   7D7F 21 14 48      [10] 1293 	ld	hl, #_grass2
   7D82 E5            [11] 1294 	push	hl
   7D83 CD 86 60      [17] 1295 	call	_cpct_drawSprite
                           1296 ;src/game/world.c:249: break;
   7D86 C3 E6 7E      [10] 1297 	jp	00128$
                           1298 ;src/game/world.c:250: case DWELLINGS1:
   7D89                    1299 00103$:
                           1300 ;src/game/world.c:251: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   7D89 21 04 10      [10] 1301 	ld	hl, #0x1004
   7D8C E5            [11] 1302 	push	hl
   7D8D C5            [11] 1303 	push	bc
   7D8E 21 94 48      [10] 1304 	ld	hl, #_dwellings1
   7D91 E5            [11] 1305 	push	hl
   7D92 CD 86 60      [17] 1306 	call	_cpct_drawSprite
                           1307 ;src/game/world.c:252: break;
   7D95 C3 E6 7E      [10] 1308 	jp	00128$
                           1309 ;src/game/world.c:253: case DWELLINGS2:
   7D98                    1310 00104$:
                           1311 ;src/game/world.c:254: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   7D98 21 04 10      [10] 1312 	ld	hl, #0x1004
   7D9B E5            [11] 1313 	push	hl
   7D9C C5            [11] 1314 	push	bc
   7D9D 21 D4 48      [10] 1315 	ld	hl, #_dwellings2
   7DA0 E5            [11] 1316 	push	hl
   7DA1 CD 86 60      [17] 1317 	call	_cpct_drawSprite
                           1318 ;src/game/world.c:255: break;
   7DA4 C3 E6 7E      [10] 1319 	jp	00128$
                           1320 ;src/game/world.c:256: case DWELLINGS3:
   7DA7                    1321 00105$:
                           1322 ;src/game/world.c:257: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   7DA7 21 04 10      [10] 1323 	ld	hl, #0x1004
   7DAA E5            [11] 1324 	push	hl
   7DAB C5            [11] 1325 	push	bc
   7DAC 21 14 49      [10] 1326 	ld	hl, #_dwellings3
   7DAF E5            [11] 1327 	push	hl
   7DB0 CD 86 60      [17] 1328 	call	_cpct_drawSprite
                           1329 ;src/game/world.c:258: break;
   7DB3 C3 E6 7E      [10] 1330 	jp	00128$
                           1331 ;src/game/world.c:259: case FARM1:
   7DB6                    1332 00106$:
                           1333 ;src/game/world.c:260: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   7DB6 21 04 10      [10] 1334 	ld	hl, #0x1004
   7DB9 E5            [11] 1335 	push	hl
   7DBA C5            [11] 1336 	push	bc
   7DBB 21 94 49      [10] 1337 	ld	hl, #_farm1
   7DBE E5            [11] 1338 	push	hl
   7DBF CD 86 60      [17] 1339 	call	_cpct_drawSprite
                           1340 ;src/game/world.c:261: break;
   7DC2 C3 E6 7E      [10] 1341 	jp	00128$
                           1342 ;src/game/world.c:262: case FARM2:
   7DC5                    1343 00107$:
                           1344 ;src/game/world.c:263: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   7DC5 21 04 10      [10] 1345 	ld	hl, #0x1004
   7DC8 E5            [11] 1346 	push	hl
   7DC9 C5            [11] 1347 	push	bc
   7DCA 21 D4 49      [10] 1348 	ld	hl, #_farm2
   7DCD E5            [11] 1349 	push	hl
   7DCE CD 86 60      [17] 1350 	call	_cpct_drawSprite
                           1351 ;src/game/world.c:264: break;
   7DD1 C3 E6 7E      [10] 1352 	jp	00128$
                           1353 ;src/game/world.c:265: case WATER:
   7DD4                    1354 00108$:
                           1355 ;src/game/world.c:266: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   7DD4 21 04 10      [10] 1356 	ld	hl, #0x1004
   7DD7 E5            [11] 1357 	push	hl
   7DD8 C5            [11] 1358 	push	bc
   7DD9 21 54 49      [10] 1359 	ld	hl, #_water
   7DDC E5            [11] 1360 	push	hl
   7DDD CD 86 60      [17] 1361 	call	_cpct_drawSprite
                           1362 ;src/game/world.c:267: break;
   7DE0 C3 E6 7E      [10] 1363 	jp	00128$
                           1364 ;src/game/world.c:268: case FOREST:
   7DE3                    1365 00109$:
                           1366 ;src/game/world.c:269: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   7DE3 21 04 10      [10] 1367 	ld	hl, #0x1004
   7DE6 E5            [11] 1368 	push	hl
   7DE7 C5            [11] 1369 	push	bc
   7DE8 21 54 48      [10] 1370 	ld	hl, #_forest
   7DEB E5            [11] 1371 	push	hl
   7DEC CD 86 60      [17] 1372 	call	_cpct_drawSprite
                           1373 ;src/game/world.c:270: break;
   7DEF C3 E6 7E      [10] 1374 	jp	00128$
                           1375 ;src/game/world.c:271: case LIVESTOCK:
   7DF2                    1376 00110$:
                           1377 ;src/game/world.c:272: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   7DF2 21 04 10      [10] 1378 	ld	hl, #0x1004
   7DF5 E5            [11] 1379 	push	hl
   7DF6 C5            [11] 1380 	push	bc
   7DF7 21 14 4A      [10] 1381 	ld	hl, #_livestock
   7DFA E5            [11] 1382 	push	hl
   7DFB CD 86 60      [17] 1383 	call	_cpct_drawSprite
                           1384 ;src/game/world.c:273: break;
   7DFE C3 E6 7E      [10] 1385 	jp	00128$
                           1386 ;src/game/world.c:274: case SSNS:
   7E01                    1387 00111$:
                           1388 ;src/game/world.c:275: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   7E01 21 04 10      [10] 1389 	ld	hl, #0x1004
   7E04 E5            [11] 1390 	push	hl
   7E05 C5            [11] 1391 	push	bc
   7E06 21 54 4A      [10] 1392 	ld	hl, #_station_small_ns
   7E09 E5            [11] 1393 	push	hl
   7E0A CD 86 60      [17] 1394 	call	_cpct_drawSprite
                           1395 ;src/game/world.c:276: break;
   7E0D C3 E6 7E      [10] 1396 	jp	00128$
                           1397 ;src/game/world.c:277: case SSEW:
   7E10                    1398 00112$:
                           1399 ;src/game/world.c:278: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   7E10 21 04 10      [10] 1400 	ld	hl, #0x1004
   7E13 E5            [11] 1401 	push	hl
   7E14 C5            [11] 1402 	push	bc
   7E15 21 94 4A      [10] 1403 	ld	hl, #_station_small_ew
   7E18 E5            [11] 1404 	push	hl
   7E19 CD 86 60      [17] 1405 	call	_cpct_drawSprite
                           1406 ;src/game/world.c:279: break;
   7E1C C3 E6 7E      [10] 1407 	jp	00128$
                           1408 ;src/game/world.c:280: case SMNS:
   7E1F                    1409 00113$:
                           1410 ;src/game/world.c:281: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   7E1F 21 04 10      [10] 1411 	ld	hl, #0x1004
   7E22 E5            [11] 1412 	push	hl
   7E23 C5            [11] 1413 	push	bc
   7E24 21 D4 4A      [10] 1414 	ld	hl, #_station_medium_ns
   7E27 E5            [11] 1415 	push	hl
   7E28 CD 86 60      [17] 1416 	call	_cpct_drawSprite
                           1417 ;src/game/world.c:282: break;
   7E2B C3 E6 7E      [10] 1418 	jp	00128$
                           1419 ;src/game/world.c:283: case SMEW:
   7E2E                    1420 00114$:
                           1421 ;src/game/world.c:284: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   7E2E 21 04 10      [10] 1422 	ld	hl, #0x1004
   7E31 E5            [11] 1423 	push	hl
   7E32 C5            [11] 1424 	push	bc
   7E33 21 14 4B      [10] 1425 	ld	hl, #_station_medium_ew
   7E36 E5            [11] 1426 	push	hl
   7E37 CD 86 60      [17] 1427 	call	_cpct_drawSprite
                           1428 ;src/game/world.c:285: break;
   7E3A C3 E6 7E      [10] 1429 	jp	00128$
                           1430 ;src/game/world.c:286: case SLNS:
   7E3D                    1431 00115$:
                           1432 ;src/game/world.c:287: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   7E3D 21 04 10      [10] 1433 	ld	hl, #0x1004
   7E40 E5            [11] 1434 	push	hl
   7E41 C5            [11] 1435 	push	bc
   7E42 21 54 4B      [10] 1436 	ld	hl, #_station_large_ns
   7E45 E5            [11] 1437 	push	hl
   7E46 CD 86 60      [17] 1438 	call	_cpct_drawSprite
                           1439 ;src/game/world.c:288: break;
   7E49 C3 E6 7E      [10] 1440 	jp	00128$
                           1441 ;src/game/world.c:289: case SLEW:
   7E4C                    1442 00116$:
                           1443 ;src/game/world.c:290: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   7E4C 21 04 10      [10] 1444 	ld	hl, #0x1004
   7E4F E5            [11] 1445 	push	hl
   7E50 C5            [11] 1446 	push	bc
   7E51 21 94 4B      [10] 1447 	ld	hl, #_station_large_ew
   7E54 E5            [11] 1448 	push	hl
   7E55 CD 86 60      [17] 1449 	call	_cpct_drawSprite
                           1450 ;src/game/world.c:291: break;
   7E58 C3 E6 7E      [10] 1451 	jp	00128$
                           1452 ;src/game/world.c:292: case REW:
   7E5B                    1453 00117$:
                           1454 ;src/game/world.c:293: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   7E5B 21 04 10      [10] 1455 	ld	hl, #0x1004
   7E5E E5            [11] 1456 	push	hl
   7E5F C5            [11] 1457 	push	bc
   7E60 21 D4 4B      [10] 1458 	ld	hl, #_rail_ew
   7E63 E5            [11] 1459 	push	hl
   7E64 CD 86 60      [17] 1460 	call	_cpct_drawSprite
                           1461 ;src/game/world.c:294: break;
   7E67 C3 E6 7E      [10] 1462 	jp	00128$
                           1463 ;src/game/world.c:295: case RNS:
   7E6A                    1464 00118$:
                           1465 ;src/game/world.c:296: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   7E6A 21 04 10      [10] 1466 	ld	hl, #0x1004
   7E6D E5            [11] 1467 	push	hl
   7E6E C5            [11] 1468 	push	bc
   7E6F 21 14 4C      [10] 1469 	ld	hl, #_rail_ns
   7E72 E5            [11] 1470 	push	hl
   7E73 CD 86 60      [17] 1471 	call	_cpct_drawSprite
                           1472 ;src/game/world.c:297: break;
   7E76 18 6E         [12] 1473 	jr	00128$
                           1474 ;src/game/world.c:298: case REN:
   7E78                    1475 00119$:
                           1476 ;src/game/world.c:299: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   7E78 21 04 10      [10] 1477 	ld	hl, #0x1004
   7E7B E5            [11] 1478 	push	hl
   7E7C C5            [11] 1479 	push	bc
   7E7D 21 54 4C      [10] 1480 	ld	hl, #_rail_en
   7E80 E5            [11] 1481 	push	hl
   7E81 CD 86 60      [17] 1482 	call	_cpct_drawSprite
                           1483 ;src/game/world.c:300: break;
   7E84 18 60         [12] 1484 	jr	00128$
                           1485 ;src/game/world.c:301: case RES:
   7E86                    1486 00120$:
                           1487 ;src/game/world.c:302: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   7E86 21 04 10      [10] 1488 	ld	hl, #0x1004
   7E89 E5            [11] 1489 	push	hl
   7E8A C5            [11] 1490 	push	bc
   7E8B 21 94 4C      [10] 1491 	ld	hl, #_rail_es
   7E8E E5            [11] 1492 	push	hl
   7E8F CD 86 60      [17] 1493 	call	_cpct_drawSprite
                           1494 ;src/game/world.c:303: break;
   7E92 18 52         [12] 1495 	jr	00128$
                           1496 ;src/game/world.c:304: case RWN:
   7E94                    1497 00121$:
                           1498 ;src/game/world.c:305: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   7E94 21 04 10      [10] 1499 	ld	hl, #0x1004
   7E97 E5            [11] 1500 	push	hl
   7E98 C5            [11] 1501 	push	bc
   7E99 21 D4 4C      [10] 1502 	ld	hl, #_rail_wn
   7E9C E5            [11] 1503 	push	hl
   7E9D CD 86 60      [17] 1504 	call	_cpct_drawSprite
                           1505 ;src/game/world.c:306: break;
   7EA0 18 44         [12] 1506 	jr	00128$
                           1507 ;src/game/world.c:307: case RWS:
   7EA2                    1508 00122$:
                           1509 ;src/game/world.c:308: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   7EA2 21 04 10      [10] 1510 	ld	hl, #0x1004
   7EA5 E5            [11] 1511 	push	hl
   7EA6 C5            [11] 1512 	push	bc
   7EA7 21 14 4D      [10] 1513 	ld	hl, #_rail_ws
   7EAA E5            [11] 1514 	push	hl
   7EAB CD 86 60      [17] 1515 	call	_cpct_drawSprite
                           1516 ;src/game/world.c:309: break;
   7EAE 18 36         [12] 1517 	jr	00128$
                           1518 ;src/game/world.c:310: case REWN:
   7EB0                    1519 00123$:
                           1520 ;src/game/world.c:311: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   7EB0 21 04 10      [10] 1521 	ld	hl, #0x1004
   7EB3 E5            [11] 1522 	push	hl
   7EB4 C5            [11] 1523 	push	bc
   7EB5 21 54 4D      [10] 1524 	ld	hl, #_rail_ew_n
   7EB8 E5            [11] 1525 	push	hl
   7EB9 CD 86 60      [17] 1526 	call	_cpct_drawSprite
                           1527 ;src/game/world.c:312: break;
   7EBC 18 28         [12] 1528 	jr	00128$
                           1529 ;src/game/world.c:313: case REWS:
   7EBE                    1530 00124$:
                           1531 ;src/game/world.c:314: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   7EBE 21 04 10      [10] 1532 	ld	hl, #0x1004
   7EC1 E5            [11] 1533 	push	hl
   7EC2 C5            [11] 1534 	push	bc
   7EC3 21 94 4D      [10] 1535 	ld	hl, #_rail_ew_s
   7EC6 E5            [11] 1536 	push	hl
   7EC7 CD 86 60      [17] 1537 	call	_cpct_drawSprite
                           1538 ;src/game/world.c:315: break;
   7ECA 18 1A         [12] 1539 	jr	00128$
                           1540 ;src/game/world.c:316: case RNSE:
   7ECC                    1541 00125$:
                           1542 ;src/game/world.c:317: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   7ECC 21 04 10      [10] 1543 	ld	hl, #0x1004
   7ECF E5            [11] 1544 	push	hl
   7ED0 C5            [11] 1545 	push	bc
   7ED1 21 14 4E      [10] 1546 	ld	hl, #_rail_ns_e
   7ED4 E5            [11] 1547 	push	hl
   7ED5 CD 86 60      [17] 1548 	call	_cpct_drawSprite
                           1549 ;src/game/world.c:318: break;
   7ED8 18 0C         [12] 1550 	jr	00128$
                           1551 ;src/game/world.c:319: case RNSW:
   7EDA                    1552 00126$:
                           1553 ;src/game/world.c:320: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   7EDA 21 04 10      [10] 1554 	ld	hl, #0x1004
   7EDD E5            [11] 1555 	push	hl
   7EDE C5            [11] 1556 	push	bc
   7EDF 21 D4 4D      [10] 1557 	ld	hl, #_rail_ns_w
   7EE2 E5            [11] 1558 	push	hl
   7EE3 CD 86 60      [17] 1559 	call	_cpct_drawSprite
                           1560 ;src/game/world.c:322: }
   7EE6                    1561 00128$:
   7EE6 DD E1         [14] 1562 	pop	ix
   7EE8 C9            [10] 1563 	ret
                           1564 ;src/game/world.c:325: void drawScrolls(u8 x_, u8 y_)
                           1565 ;	---------------------------------
                           1566 ; Function drawScrolls
                           1567 ; ---------------------------------
   7EE9                    1568 _drawScrolls::
   7EE9 DD E5         [15] 1569 	push	ix
   7EEB DD 21 00 00   [14] 1570 	ld	ix,#0
   7EEF DD 39         [15] 1571 	add	ix,sp
                           1572 ;src/game/world.c:331: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   7EF1 DD 4E 04      [19] 1573 	ld	c,4 (ix)
   7EF4 06 00         [ 7] 1574 	ld	b,#0x00
   7EF6 69            [ 4] 1575 	ld	l, c
   7EF7 60            [ 4] 1576 	ld	h, b
   7EF8 29            [11] 1577 	add	hl, hl
   7EF9 29            [11] 1578 	add	hl, hl
   7EFA 29            [11] 1579 	add	hl, hl
   7EFB 09            [11] 1580 	add	hl, bc
   7EFC 29            [11] 1581 	add	hl, hl
   7EFD 09            [11] 1582 	add	hl, bc
   7EFE 29            [11] 1583 	add	hl, hl
   7EFF 29            [11] 1584 	add	hl, hl
   7F00 01 3C 00      [10] 1585 	ld	bc, #0x003c
   7F03 C5            [11] 1586 	push	bc
   7F04 E5            [11] 1587 	push	hl
   7F05 CD BE 65      [17] 1588 	call	__divsint
   7F08 F1            [10] 1589 	pop	af
   7F09 F1            [10] 1590 	pop	af
   7F0A 55            [ 4] 1591 	ld	d, l
                           1592 ;src/game/world.c:332: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   7F0B DD 4E 05      [19] 1593 	ld	c,5 (ix)
   7F0E 06 00         [ 7] 1594 	ld	b,#0x00
   7F10 69            [ 4] 1595 	ld	l, c
   7F11 60            [ 4] 1596 	ld	h, b
   7F12 29            [11] 1597 	add	hl, hl
   7F13 29            [11] 1598 	add	hl, hl
   7F14 09            [11] 1599 	add	hl, bc
   7F15 29            [11] 1600 	add	hl, hl
   7F16 09            [11] 1601 	add	hl, bc
   7F17 29            [11] 1602 	add	hl, hl
   7F18 29            [11] 1603 	add	hl, hl
   7F19 29            [11] 1604 	add	hl, hl
   7F1A 29            [11] 1605 	add	hl, hl
   7F1B D5            [11] 1606 	push	de
   7F1C 01 24 00      [10] 1607 	ld	bc, #0x0024
   7F1F C5            [11] 1608 	push	bc
   7F20 E5            [11] 1609 	push	hl
   7F21 CD BE 65      [17] 1610 	call	__divsint
   7F24 F1            [10] 1611 	pop	af
   7F25 F1            [10] 1612 	pop	af
   7F26 45            [ 4] 1613 	ld	b, l
   7F27 D1            [10] 1614 	pop	de
                           1615 ;src/game/world.c:334: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   7F28 C5            [11] 1616 	push	bc
   7F29 AF            [ 4] 1617 	xor	a, a
   7F2A F5            [11] 1618 	push	af
   7F2B 33            [ 6] 1619 	inc	sp
   7F2C D5            [11] 1620 	push	de
   7F2D 33            [ 6] 1621 	inc	sp
   7F2E 21 00 C0      [10] 1622 	ld	hl, #0xc000
   7F31 E5            [11] 1623 	push	hl
   7F32 CD 6D 65      [17] 1624 	call	_cpct_getScreenPtr
   7F35 C1            [10] 1625 	pop	bc
                           1626 ;src/game/world.c:335: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   7F36 E5            [11] 1627 	push	hl
   7F37 C5            [11] 1628 	push	bc
   7F38 11 00 00      [10] 1629 	ld	de, #0x0000
   7F3B D5            [11] 1630 	push	de
   7F3C 11 00 00      [10] 1631 	ld	de, #0x0000
   7F3F D5            [11] 1632 	push	de
   7F40 CD 1C 64      [17] 1633 	call	_cpct_px2byteM1
   7F43 F1            [10] 1634 	pop	af
   7F44 F1            [10] 1635 	pop	af
   7F45 4D            [ 4] 1636 	ld	c, l
   7F46 F1            [10] 1637 	pop	af
   7F47 47            [ 4] 1638 	ld	b, a
   7F48 E1            [10] 1639 	pop	hl
   7F49 C5            [11] 1640 	push	bc
   7F4A 11 04 04      [10] 1641 	ld	de, #0x0404
   7F4D D5            [11] 1642 	push	de
   7F4E 79            [ 4] 1643 	ld	a, c
   7F4F F5            [11] 1644 	push	af
   7F50 33            [ 6] 1645 	inc	sp
   7F51 E5            [11] 1646 	push	hl
   7F52 CD 79 64      [17] 1647 	call	_cpct_drawSolidBox
   7F55 F1            [10] 1648 	pop	af
   7F56 F1            [10] 1649 	pop	af
   7F57 33            [ 6] 1650 	inc	sp
   7F58 33            [ 6] 1651 	inc	sp
   7F59 AF            [ 4] 1652 	xor	a, a
   7F5A F5            [11] 1653 	push	af
   7F5B 33            [ 6] 1654 	inc	sp
   7F5C 21 00 C0      [10] 1655 	ld	hl, #0xc000
   7F5F E5            [11] 1656 	push	hl
   7F60 CD 6D 65      [17] 1657 	call	_cpct_getScreenPtr
                           1658 ;src/game/world.c:338: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   7F63 E5            [11] 1659 	push	hl
   7F64 21 00 00      [10] 1660 	ld	hl, #0x0000
   7F67 E5            [11] 1661 	push	hl
   7F68 2E 00         [ 7] 1662 	ld	l, #0x00
   7F6A E5            [11] 1663 	push	hl
   7F6B CD 1C 64      [17] 1664 	call	_cpct_px2byteM1
   7F6E F1            [10] 1665 	pop	af
   7F6F F1            [10] 1666 	pop	af
   7F70 55            [ 4] 1667 	ld	d, l
   7F71 C1            [10] 1668 	pop	bc
   7F72 21 01 10      [10] 1669 	ld	hl, #0x1001
   7F75 E5            [11] 1670 	push	hl
   7F76 D5            [11] 1671 	push	de
   7F77 33            [ 6] 1672 	inc	sp
   7F78 C5            [11] 1673 	push	bc
   7F79 CD 79 64      [17] 1674 	call	_cpct_drawSolidBox
   7F7C F1            [10] 1675 	pop	af
   7F7D F1            [10] 1676 	pop	af
   7F7E 33            [ 6] 1677 	inc	sp
   7F7F DD E1         [14] 1678 	pop	ix
   7F81 C9            [10] 1679 	ret
                           1680 ;src/game/world.c:341: void drawWorld(u8 x_, u8 y_)
                           1681 ;	---------------------------------
                           1682 ; Function drawWorld
                           1683 ; ---------------------------------
   7F82                    1684 _drawWorld::
                           1685 ;src/game/world.c:346: for(iy=0; iy<NBTILE_H;iy++)
   7F82 0E 00         [ 7] 1686 	ld	c, #0x00
                           1687 ;src/game/world.c:348: for(ix=0; ix<NBTILE_W;ix++)
   7F84                    1688 00109$:
   7F84 06 00         [ 7] 1689 	ld	b, #0x00
   7F86                    1690 00103$:
                           1691 ;src/game/world.c:350: drawTile(x_, y_, ix, iy);
   7F86 C5            [11] 1692 	push	bc
   7F87 79            [ 4] 1693 	ld	a, c
   7F88 F5            [11] 1694 	push	af
   7F89 33            [ 6] 1695 	inc	sp
   7F8A C5            [11] 1696 	push	bc
   7F8B 33            [ 6] 1697 	inc	sp
   7F8C 21 07 00      [10] 1698 	ld	hl, #7+0
   7F8F 39            [11] 1699 	add	hl, sp
   7F90 7E            [ 7] 1700 	ld	a, (hl)
   7F91 F5            [11] 1701 	push	af
   7F92 33            [ 6] 1702 	inc	sp
   7F93 21 07 00      [10] 1703 	ld	hl, #7+0
   7F96 39            [11] 1704 	add	hl, sp
   7F97 7E            [ 7] 1705 	ld	a, (hl)
   7F98 F5            [11] 1706 	push	af
   7F99 33            [ 6] 1707 	inc	sp
   7F9A CD C0 7C      [17] 1708 	call	_drawTile
   7F9D F1            [10] 1709 	pop	af
   7F9E F1            [10] 1710 	pop	af
   7F9F C1            [10] 1711 	pop	bc
                           1712 ;src/game/world.c:348: for(ix=0; ix<NBTILE_W;ix++)
   7FA0 04            [ 4] 1713 	inc	b
   7FA1 78            [ 4] 1714 	ld	a, b
   7FA2 D6 14         [ 7] 1715 	sub	a, #0x14
   7FA4 38 E0         [12] 1716 	jr	C,00103$
                           1717 ;src/game/world.c:346: for(iy=0; iy<NBTILE_H;iy++)
   7FA6 0C            [ 4] 1718 	inc	c
   7FA7 79            [ 4] 1719 	ld	a, c
   7FA8 D6 0C         [ 7] 1720 	sub	a, #0x0c
   7FAA 38 D8         [12] 1721 	jr	C,00109$
                           1722 ;src/game/world.c:354: drawScrolls(x_, y_);
   7FAC 21 03 00      [10] 1723 	ld	hl, #3+0
   7FAF 39            [11] 1724 	add	hl, sp
   7FB0 7E            [ 7] 1725 	ld	a, (hl)
   7FB1 F5            [11] 1726 	push	af
   7FB2 33            [ 6] 1727 	inc	sp
   7FB3 21 03 00      [10] 1728 	ld	hl, #3+0
   7FB6 39            [11] 1729 	add	hl, sp
   7FB7 7E            [ 7] 1730 	ld	a, (hl)
   7FB8 F5            [11] 1731 	push	af
   7FB9 33            [ 6] 1732 	inc	sp
   7FBA CD E9 7E      [17] 1733 	call	_drawScrolls
   7FBD F1            [10] 1734 	pop	af
   7FBE C9            [10] 1735 	ret
                           1736 ;src/game/world.c:361: void setTrainHeading(u8 i)
                           1737 ;	---------------------------------
                           1738 ; Function setTrainHeading
                           1739 ; ---------------------------------
   7FBF                    1740 _setTrainHeading::
   7FBF DD E5         [15] 1741 	push	ix
   7FC1 DD 21 00 00   [14] 1742 	ld	ix,#0
   7FC5 DD 39         [15] 1743 	add	ix,sp
                           1744 ;src/game/world.c:365: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   7FC7 DD 4E 04      [19] 1745 	ld	c,4 (ix)
   7FCA 06 00         [ 7] 1746 	ld	b,#0x00
   7FCC 69            [ 4] 1747 	ld	l, c
   7FCD 60            [ 4] 1748 	ld	h, b
   7FCE 29            [11] 1749 	add	hl, hl
   7FCF 09            [11] 1750 	add	hl, bc
   7FD0 29            [11] 1751 	add	hl, hl
   7FD1 09            [11] 1752 	add	hl, bc
   7FD2 4D            [ 4] 1753 	ld	c, l
   7FD3 44            [ 4] 1754 	ld	b, h
   7FD4 FD 21 25 76   [14] 1755 	ld	iy, #_trainList
   7FD8 FD 7E 00      [19] 1756 	ld	a, 0 (iy)
   7FDB 81            [ 4] 1757 	add	a, c
   7FDC 5F            [ 4] 1758 	ld	e, a
   7FDD FD 7E 01      [19] 1759 	ld	a, 1 (iy)
   7FE0 88            [ 4] 1760 	adc	a, b
   7FE1 57            [ 4] 1761 	ld	d, a
   7FE2 6B            [ 4] 1762 	ld	l, e
   7FE3 62            [ 4] 1763 	ld	h, d
   7FE4 01 05 00      [10] 1764 	ld	bc, #0x0005
   7FE7 09            [11] 1765 	add	hl, bc
   7FE8 4E            [ 7] 1766 	ld	c, (hl)
   7FE9 06 00         [ 7] 1767 	ld	b,#0x00
   7FEB 69            [ 4] 1768 	ld	l, c
   7FEC 60            [ 4] 1769 	ld	h, b
   7FED 29            [11] 1770 	add	hl, hl
   7FEE 29            [11] 1771 	add	hl, hl
   7FEF 09            [11] 1772 	add	hl, bc
   7FF0 29            [11] 1773 	add	hl, hl
   7FF1 29            [11] 1774 	add	hl, hl
   7FF2 29            [11] 1775 	add	hl, hl
   7FF3 29            [11] 1776 	add	hl, hl
   7FF4 4D            [ 4] 1777 	ld	c, l
   7FF5 44            [ 4] 1778 	ld	b, h
   7FF6 6B            [ 4] 1779 	ld	l, e
   7FF7 62            [ 4] 1780 	ld	h, d
   7FF8 23            [ 6] 1781 	inc	hl
   7FF9 23            [ 6] 1782 	inc	hl
   7FFA 23            [ 6] 1783 	inc	hl
   7FFB 23            [ 6] 1784 	inc	hl
   7FFC 6E            [ 7] 1785 	ld	l, (hl)
   7FFD 26 00         [ 7] 1786 	ld	h, #0x00
   7FFF 09            [11] 1787 	add	hl, bc
   8000 01 25 67      [10] 1788 	ld	bc, #_p_world
   8003 09            [11] 1789 	add	hl, bc
   8004 4E            [ 7] 1790 	ld	c, (hl)
                           1791 ;src/game/world.c:368: if(trainList[i].heading==1) trainList[i].heading=2;
   8005 21 06 00      [10] 1792 	ld	hl, #0x0006
   8008 19            [11] 1793 	add	hl, de
                           1794 ;src/game/world.c:365: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   8009 79            [ 4] 1795 	ld	a,c
   800A FE 0A         [ 7] 1796 	cp	a,#0x0a
   800C 28 0E         [12] 1797 	jr	Z,00101$
   800E FE 0B         [ 7] 1798 	cp	a,#0x0b
   8010 28 1A         [12] 1799 	jr	Z,00107$
   8012 FE 0C         [ 7] 1800 	cp	a,#0x0c
   8014 28 26         [12] 1801 	jr	Z,00113$
   8016 D6 0D         [ 7] 1802 	sub	a, #0x0d
   8018 28 32         [12] 1803 	jr	Z,00119$
   801A 18 3E         [12] 1804 	jr	00126$
                           1805 ;src/game/world.c:367: case T_REN:
   801C                    1806 00101$:
                           1807 ;src/game/world.c:368: if(trainList[i].heading==1) trainList[i].heading=2;
   801C 7E            [ 7] 1808 	ld	a, (hl)
   801D FE 01         [ 7] 1809 	cp	a, #0x01
   801F 20 04         [12] 1810 	jr	NZ,00105$
   8021 36 02         [10] 1811 	ld	(hl), #0x02
   8023 18 35         [12] 1812 	jr	00126$
   8025                    1813 00105$:
                           1814 ;src/game/world.c:369: else if(trainList[i].heading==3) trainList[i].heading=0;
   8025 D6 03         [ 7] 1815 	sub	a,#0x03
   8027 20 31         [12] 1816 	jr	NZ,00126$
   8029 77            [ 7] 1817 	ld	(hl),a
                           1818 ;src/game/world.c:370: break;
   802A 18 2E         [12] 1819 	jr	00126$
                           1820 ;src/game/world.c:372: case T_RES:
   802C                    1821 00107$:
                           1822 ;src/game/world.c:373: if(trainList[i].heading==1) trainList[i].heading=3;
   802C 7E            [ 7] 1823 	ld	a, (hl)
   802D FE 01         [ 7] 1824 	cp	a, #0x01
   802F 20 04         [12] 1825 	jr	NZ,00111$
   8031 36 03         [10] 1826 	ld	(hl), #0x03
   8033 18 25         [12] 1827 	jr	00126$
   8035                    1828 00111$:
                           1829 ;src/game/world.c:374: else if(trainList[i].heading==2) trainList[i].heading=0;
   8035 D6 02         [ 7] 1830 	sub	a,#0x02
   8037 20 21         [12] 1831 	jr	NZ,00126$
   8039 77            [ 7] 1832 	ld	(hl),a
                           1833 ;src/game/world.c:375: break;
   803A 18 1E         [12] 1834 	jr	00126$
                           1835 ;src/game/world.c:377: case T_RWN:
   803C                    1836 00113$:
                           1837 ;src/game/world.c:378: if(trainList[i].heading==0) trainList[i].heading=2;
   803C 7E            [ 7] 1838 	ld	a, (hl)
   803D B7            [ 4] 1839 	or	a, a
   803E 20 04         [12] 1840 	jr	NZ,00117$
   8040 36 02         [10] 1841 	ld	(hl), #0x02
   8042 18 16         [12] 1842 	jr	00126$
   8044                    1843 00117$:
                           1844 ;src/game/world.c:379: else if(trainList[i].heading==3) trainList[i].heading=1;
   8044 D6 03         [ 7] 1845 	sub	a, #0x03
   8046 20 12         [12] 1846 	jr	NZ,00126$
   8048 36 01         [10] 1847 	ld	(hl), #0x01
                           1848 ;src/game/world.c:380: break;
   804A 18 0E         [12] 1849 	jr	00126$
                           1850 ;src/game/world.c:382: case T_RWS:
   804C                    1851 00119$:
                           1852 ;src/game/world.c:383: if(trainList[i].heading==0) trainList[i].heading=3;
   804C 7E            [ 7] 1853 	ld	a, (hl)
   804D B7            [ 4] 1854 	or	a, a
   804E 20 04         [12] 1855 	jr	NZ,00123$
   8050 36 03         [10] 1856 	ld	(hl), #0x03
   8052 18 06         [12] 1857 	jr	00126$
   8054                    1858 00123$:
                           1859 ;src/game/world.c:384: else if(trainList[i].heading==2) trainList[i].heading=1;
   8054 D6 02         [ 7] 1860 	sub	a, #0x02
   8056 20 02         [12] 1861 	jr	NZ,00126$
   8058 36 01         [10] 1862 	ld	(hl), #0x01
                           1863 ;src/game/world.c:386: }
   805A                    1864 00126$:
   805A DD E1         [14] 1865 	pop	ix
   805C C9            [10] 1866 	ret
                           1867 ;src/game/world.c:389: void drawTrains(u8 x_, u8 y_)
                           1868 ;	---------------------------------
                           1869 ; Function drawTrains
                           1870 ; ---------------------------------
   805D                    1871 _drawTrains::
   805D DD E5         [15] 1872 	push	ix
   805F DD 21 00 00   [14] 1873 	ld	ix,#0
   8063 DD 39         [15] 1874 	add	ix,sp
   8065 21 F5 FF      [10] 1875 	ld	hl, #-11
   8068 39            [11] 1876 	add	hl, sp
   8069 F9            [ 6] 1877 	ld	sp, hl
                           1878 ;src/game/world.c:395: for(i=0; i<nbTrainList; i++)
   806A DD 36 F5 00   [19] 1879 	ld	-11 (ix), #0x00
   806E                    1880 00137$:
   806E 21 2A 76      [10] 1881 	ld	hl, #_nbTrainList
   8071 DD 7E F5      [19] 1882 	ld	a, -11 (ix)
   8074 96            [ 7] 1883 	sub	a, (hl)
   8075 D2 21 83      [10] 1884 	jp	NC, 00139$
                           1885 ;src/game/world.c:398: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ > 0 && trainList[i].posY-y_ > 0 )
   8078 DD 4E F5      [19] 1886 	ld	c,-11 (ix)
   807B 06 00         [ 7] 1887 	ld	b,#0x00
   807D 69            [ 4] 1888 	ld	l, c
   807E 60            [ 4] 1889 	ld	h, b
   807F 29            [11] 1890 	add	hl, hl
   8080 09            [11] 1891 	add	hl, bc
   8081 29            [11] 1892 	add	hl, hl
   8082 09            [11] 1893 	add	hl, bc
   8083 DD 75 F8      [19] 1894 	ld	-8 (ix), l
   8086 DD 74 F9      [19] 1895 	ld	-7 (ix), h
   8089 FD 21 25 76   [14] 1896 	ld	iy, #_trainList
   808D FD 7E 00      [19] 1897 	ld	a, 0 (iy)
   8090 DD 86 F8      [19] 1898 	add	a, -8 (ix)
   8093 DD 77 F6      [19] 1899 	ld	-10 (ix), a
   8096 FD 7E 01      [19] 1900 	ld	a, 1 (iy)
   8099 DD 8E F9      [19] 1901 	adc	a, -7 (ix)
   809C DD 77 F7      [19] 1902 	ld	-9 (ix), a
   809F DD 6E F6      [19] 1903 	ld	l,-10 (ix)
   80A2 DD 66 F7      [19] 1904 	ld	h,-9 (ix)
   80A5 11 04 00      [10] 1905 	ld	de, #0x0004
   80A8 19            [11] 1906 	add	hl, de
   80A9 4E            [ 7] 1907 	ld	c, (hl)
   80AA 59            [ 4] 1908 	ld	e, c
   80AB 06 00         [ 7] 1909 	ld	b, #0x00
   80AD DD 7E 04      [19] 1910 	ld	a, 4 (ix)
   80B0 DD 77 FC      [19] 1911 	ld	-4 (ix), a
   80B3 DD 36 FD 00   [19] 1912 	ld	-3 (ix), #0x00
   80B7 7B            [ 4] 1913 	ld	a, e
   80B8 DD 96 FC      [19] 1914 	sub	a, -4 (ix)
   80BB DD 77 FA      [19] 1915 	ld	-6 (ix), a
   80BE 78            [ 4] 1916 	ld	a, b
   80BF DD 9E FD      [19] 1917 	sbc	a, -3 (ix)
   80C2 DD 77 FB      [19] 1918 	ld	-5 (ix), a
   80C5 DD 7E 05      [19] 1919 	ld	a, 5 (ix)
   80C8 DD 77 FE      [19] 1920 	ld	-2 (ix), a
   80CB DD 36 FF 00   [19] 1921 	ld	-1 (ix), #0x00
   80CF DD 7E FA      [19] 1922 	ld	a, -6 (ix)
   80D2 D6 14         [ 7] 1923 	sub	a, #0x14
   80D4 DD 7E FB      [19] 1924 	ld	a, -5 (ix)
   80D7 17            [ 4] 1925 	rla
   80D8 3F            [ 4] 1926 	ccf
   80D9 1F            [ 4] 1927 	rra
   80DA DE 80         [ 7] 1928 	sbc	a, #0x80
   80DC 30 47         [12] 1929 	jr	NC,00102$
   80DE DD 6E F6      [19] 1930 	ld	l,-10 (ix)
   80E1 DD 66 F7      [19] 1931 	ld	h,-9 (ix)
   80E4 11 05 00      [10] 1932 	ld	de, #0x0005
   80E7 19            [11] 1933 	add	hl, de
   80E8 46            [ 7] 1934 	ld	b, (hl)
   80E9 58            [ 4] 1935 	ld	e, b
   80EA 16 00         [ 7] 1936 	ld	d, #0x00
   80EC 7B            [ 4] 1937 	ld	a, e
   80ED DD 96 FE      [19] 1938 	sub	a, -2 (ix)
   80F0 5F            [ 4] 1939 	ld	e, a
   80F1 7A            [ 4] 1940 	ld	a, d
   80F2 DD 9E FF      [19] 1941 	sbc	a, -1 (ix)
   80F5 57            [ 4] 1942 	ld	d, a
   80F6 7B            [ 4] 1943 	ld	a, e
   80F7 D6 0C         [ 7] 1944 	sub	a, #0x0c
   80F9 7A            [ 4] 1945 	ld	a, d
   80FA 17            [ 4] 1946 	rla
   80FB 3F            [ 4] 1947 	ccf
   80FC 1F            [ 4] 1948 	rra
   80FD DE 80         [ 7] 1949 	sbc	a, #0x80
   80FF 30 24         [12] 1950 	jr	NC,00102$
   8101 AF            [ 4] 1951 	xor	a, a
   8102 DD BE FA      [19] 1952 	cp	a, -6 (ix)
   8105 DD 9E FB      [19] 1953 	sbc	a, -5 (ix)
   8108 E2 0D 81      [10] 1954 	jp	PO, 00234$
   810B EE 80         [ 7] 1955 	xor	a, #0x80
   810D                    1956 00234$:
   810D F2 25 81      [10] 1957 	jp	P, 00102$
   8110 AF            [ 4] 1958 	xor	a, a
   8111 BB            [ 4] 1959 	cp	a, e
   8112 9A            [ 4] 1960 	sbc	a, d
   8113 E2 18 81      [10] 1961 	jp	PO, 00235$
   8116 EE 80         [ 7] 1962 	xor	a, #0x80
   8118                    1963 00235$:
   8118 F2 25 81      [10] 1964 	jp	P, 00102$
                           1965 ;src/game/world.c:400: drawTile(0,0,trainList[i].posX,trainList[i].posY);
   811B C5            [11] 1966 	push	bc
   811C 21 00 00      [10] 1967 	ld	hl, #0x0000
   811F E5            [11] 1968 	push	hl
   8120 CD C0 7C      [17] 1969 	call	_drawTile
   8123 F1            [10] 1970 	pop	af
   8124 F1            [10] 1971 	pop	af
   8125                    1972 00102$:
                           1973 ;src/game/world.c:405: switch(trainList[i].heading)
   8125 FD 21 25 76   [14] 1974 	ld	iy, #_trainList
   8129 FD 7E 00      [19] 1975 	ld	a, 0 (iy)
   812C DD 86 F8      [19] 1976 	add	a, -8 (ix)
   812F 4F            [ 4] 1977 	ld	c, a
   8130 FD 7E 01      [19] 1978 	ld	a, 1 (iy)
   8133 DD 8E F9      [19] 1979 	adc	a, -7 (ix)
   8136 47            [ 4] 1980 	ld	b, a
   8137 C5            [11] 1981 	push	bc
   8138 FD E1         [14] 1982 	pop	iy
   813A FD 5E 06      [19] 1983 	ld	e, 6 (iy)
                           1984 ;src/game/world.c:408: if(trainList[i].posX < WIDTH)
   813D 21 04 00      [10] 1985 	ld	hl, #0x0004
   8140 09            [11] 1986 	add	hl,bc
   8141 DD 75 FA      [19] 1987 	ld	-6 (ix), l
   8144 DD 74 FB      [19] 1988 	ld	-5 (ix), h
                           1989 ;src/game/world.c:410: if(p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS)
   8147 21 05 00      [10] 1990 	ld	hl, #0x0005
   814A 09            [11] 1991 	add	hl,bc
   814B DD 75 F6      [19] 1992 	ld	-10 (ix), l
   814E DD 74 F7      [19] 1993 	ld	-9 (ix), h
                           1994 ;src/game/world.c:405: switch(trainList[i].heading)
   8151 7B            [ 4] 1995 	ld	a, e
   8152 B7            [ 4] 1996 	or	a, a
   8153 28 11         [12] 1997 	jr	Z,00106$
   8155 7B            [ 4] 1998 	ld	a, e
   8156 3D            [ 4] 1999 	dec	a
   8157 28 45         [12] 2000 	jr	Z,00111$
   8159 7B            [ 4] 2001 	ld	a,e
   815A FE 02         [ 7] 2002 	cp	a,#0x02
   815C 28 75         [12] 2003 	jr	Z,00116$
   815E D6 03         [ 7] 2004 	sub	a, #0x03
   8160 CA 09 82      [10] 2005 	jp	Z,00121$
   8163 C3 3E 82      [10] 2006 	jp	00126$
                           2007 ;src/game/world.c:407: case 0: // Right
   8166                    2008 00106$:
                           2009 ;src/game/world.c:408: if(trainList[i].posX < WIDTH)
   8166 DD 6E FA      [19] 2010 	ld	l,-6 (ix)
   8169 DD 66 FB      [19] 2011 	ld	h,-5 (ix)
   816C 4E            [ 7] 2012 	ld	c, (hl)
   816D 79            [ 4] 2013 	ld	a, c
   816E D6 50         [ 7] 2014 	sub	a, #0x50
   8170 D2 3E 82      [10] 2015 	jp	NC, 00126$
                           2016 ;src/game/world.c:410: if(p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS)
   8173 DD 6E F6      [19] 2017 	ld	l,-10 (ix)
   8176 DD 66 F7      [19] 2018 	ld	h,-9 (ix)
   8179 5E            [ 7] 2019 	ld	e, (hl)
   817A 16 00         [ 7] 2020 	ld	d,#0x00
   817C 6B            [ 4] 2021 	ld	l, e
   817D 62            [ 4] 2022 	ld	h, d
   817E 29            [11] 2023 	add	hl, hl
   817F 29            [11] 2024 	add	hl, hl
   8180 19            [11] 2025 	add	hl, de
   8181 29            [11] 2026 	add	hl, hl
   8182 29            [11] 2027 	add	hl, hl
   8183 29            [11] 2028 	add	hl, hl
   8184 29            [11] 2029 	add	hl, hl
   8185 59            [ 4] 2030 	ld	e, c
   8186 16 00         [ 7] 2031 	ld	d, #0x00
   8188 19            [11] 2032 	add	hl, de
   8189 11 26 67      [10] 2033 	ld	de,#_p_world+1
   818C 19            [11] 2034 	add	hl,de
   818D 7E            [ 7] 2035 	ld	a, (hl)
   818E D6 0A         [ 7] 2036 	sub	a, #0x0a
   8190 DA 3E 82      [10] 2037 	jp	C, 00126$
                           2038 ;src/game/world.c:411: trainList[i].posX++;
   8193 0C            [ 4] 2039 	inc	c
   8194 DD 6E FA      [19] 2040 	ld	l,-6 (ix)
   8197 DD 66 FB      [19] 2041 	ld	h,-5 (ix)
   819A 71            [ 7] 2042 	ld	(hl), c
                           2043 ;src/game/world.c:413: break;
   819B C3 3E 82      [10] 2044 	jp	00126$
                           2045 ;src/game/world.c:414: case 1: // Left
   819E                    2046 00111$:
                           2047 ;src/game/world.c:415: if(trainList[i].posX >0 )
   819E DD 6E FA      [19] 2048 	ld	l,-6 (ix)
   81A1 DD 66 FB      [19] 2049 	ld	h,-5 (ix)
   81A4 4E            [ 7] 2050 	ld	c, (hl)
   81A5 79            [ 4] 2051 	ld	a, c
   81A6 B7            [ 4] 2052 	or	a, a
   81A7 CA 3E 82      [10] 2053 	jp	Z, 00126$
                           2054 ;src/game/world.c:417: if(p_world[trainList[i].posY*WIDTH+trainList[i].posX-1] >= SSNS)
   81AA DD 6E F6      [19] 2055 	ld	l,-10 (ix)
   81AD DD 66 F7      [19] 2056 	ld	h,-9 (ix)
   81B0 5E            [ 7] 2057 	ld	e, (hl)
   81B1 16 00         [ 7] 2058 	ld	d,#0x00
   81B3 6B            [ 4] 2059 	ld	l, e
   81B4 62            [ 4] 2060 	ld	h, d
   81B5 29            [11] 2061 	add	hl, hl
   81B6 29            [11] 2062 	add	hl, hl
   81B7 19            [11] 2063 	add	hl, de
   81B8 29            [11] 2064 	add	hl, hl
   81B9 29            [11] 2065 	add	hl, hl
   81BA 29            [11] 2066 	add	hl, hl
   81BB 29            [11] 2067 	add	hl, hl
   81BC 59            [ 4] 2068 	ld	e, c
   81BD 16 00         [ 7] 2069 	ld	d, #0x00
   81BF 19            [11] 2070 	add	hl, de
   81C0 11 24 67      [10] 2071 	ld	de,#_p_world-1
   81C3 19            [11] 2072 	add	hl,de
   81C4 7E            [ 7] 2073 	ld	a, (hl)
   81C5 D6 0A         [ 7] 2074 	sub	a, #0x0a
   81C7 38 75         [12] 2075 	jr	C,00126$
                           2076 ;src/game/world.c:418: trainList[i].posX--;
   81C9 0D            [ 4] 2077 	dec	c
   81CA DD 6E FA      [19] 2078 	ld	l,-6 (ix)
   81CD DD 66 FB      [19] 2079 	ld	h,-5 (ix)
   81D0 71            [ 7] 2080 	ld	(hl), c
                           2081 ;src/game/world.c:420: break;
   81D1 18 6B         [12] 2082 	jr	00126$
                           2083 ;src/game/world.c:421: case 2: // Up
   81D3                    2084 00116$:
                           2085 ;src/game/world.c:422: if(trainList[i].posY > 0)
   81D3 DD 6E F6      [19] 2086 	ld	l,-10 (ix)
   81D6 DD 66 F7      [19] 2087 	ld	h,-9 (ix)
   81D9 4E            [ 7] 2088 	ld	c, (hl)
   81DA 79            [ 4] 2089 	ld	a, c
   81DB B7            [ 4] 2090 	or	a, a
   81DC 28 60         [12] 2091 	jr	Z,00126$
                           2092 ;src/game/world.c:424: if(p_world[(trainList[i].posY-1)*WIDTH+trainList[i].posX] >= SSNS)
   81DE 59            [ 4] 2093 	ld	e, c
   81DF 16 00         [ 7] 2094 	ld	d, #0x00
   81E1 1B            [ 6] 2095 	dec	de
   81E2 6B            [ 4] 2096 	ld	l, e
   81E3 62            [ 4] 2097 	ld	h, d
   81E4 29            [11] 2098 	add	hl, hl
   81E5 29            [11] 2099 	add	hl, hl
   81E6 19            [11] 2100 	add	hl, de
   81E7 29            [11] 2101 	add	hl, hl
   81E8 29            [11] 2102 	add	hl, hl
   81E9 29            [11] 2103 	add	hl, hl
   81EA 29            [11] 2104 	add	hl, hl
   81EB EB            [ 4] 2105 	ex	de,hl
   81EC DD 6E FA      [19] 2106 	ld	l,-6 (ix)
   81EF DD 66 FB      [19] 2107 	ld	h,-5 (ix)
   81F2 6E            [ 7] 2108 	ld	l, (hl)
   81F3 26 00         [ 7] 2109 	ld	h, #0x00
   81F5 19            [11] 2110 	add	hl, de
   81F6 11 25 67      [10] 2111 	ld	de, #_p_world
   81F9 19            [11] 2112 	add	hl, de
   81FA 7E            [ 7] 2113 	ld	a, (hl)
   81FB D6 0A         [ 7] 2114 	sub	a, #0x0a
   81FD 38 3F         [12] 2115 	jr	C,00126$
                           2116 ;src/game/world.c:425: trainList[i].posY--;
   81FF 0D            [ 4] 2117 	dec	c
   8200 DD 6E F6      [19] 2118 	ld	l,-10 (ix)
   8203 DD 66 F7      [19] 2119 	ld	h,-9 (ix)
   8206 71            [ 7] 2120 	ld	(hl), c
                           2121 ;src/game/world.c:427: break;
   8207 18 35         [12] 2122 	jr	00126$
                           2123 ;src/game/world.c:428: case 3: // Down
   8209                    2124 00121$:
                           2125 ;src/game/world.c:429: if(trainList[i].posY < HEIGHT)
   8209 DD 6E F6      [19] 2126 	ld	l,-10 (ix)
   820C DD 66 F7      [19] 2127 	ld	h,-9 (ix)
   820F 4E            [ 7] 2128 	ld	c, (hl)
   8210 79            [ 4] 2129 	ld	a, c
   8211 D6 30         [ 7] 2130 	sub	a, #0x30
   8213 30 29         [12] 2131 	jr	NC,00126$
                           2132 ;src/game/world.c:431: if(p_world[(trainList[i].posY+1)*WIDTH+trainList[i].posX] >= SSNS)
   8215 59            [ 4] 2133 	ld	e, c
   8216 16 00         [ 7] 2134 	ld	d, #0x00
   8218 13            [ 6] 2135 	inc	de
   8219 6B            [ 4] 2136 	ld	l, e
   821A 62            [ 4] 2137 	ld	h, d
   821B 29            [11] 2138 	add	hl, hl
   821C 29            [11] 2139 	add	hl, hl
   821D 19            [11] 2140 	add	hl, de
   821E 29            [11] 2141 	add	hl, hl
   821F 29            [11] 2142 	add	hl, hl
   8220 29            [11] 2143 	add	hl, hl
   8221 29            [11] 2144 	add	hl, hl
   8222 EB            [ 4] 2145 	ex	de,hl
   8223 DD 6E FA      [19] 2146 	ld	l,-6 (ix)
   8226 DD 66 FB      [19] 2147 	ld	h,-5 (ix)
   8229 6E            [ 7] 2148 	ld	l, (hl)
   822A 26 00         [ 7] 2149 	ld	h, #0x00
   822C 19            [11] 2150 	add	hl, de
   822D 11 25 67      [10] 2151 	ld	de, #_p_world
   8230 19            [11] 2152 	add	hl, de
   8231 7E            [ 7] 2153 	ld	a, (hl)
   8232 D6 0A         [ 7] 2154 	sub	a, #0x0a
   8234 38 08         [12] 2155 	jr	C,00126$
                           2156 ;src/game/world.c:432: trainList[i].posY++;
   8236 0C            [ 4] 2157 	inc	c
   8237 DD 6E F6      [19] 2158 	ld	l,-10 (ix)
   823A DD 66 F7      [19] 2159 	ld	h,-9 (ix)
   823D 71            [ 7] 2160 	ld	(hl), c
                           2161 ;src/game/world.c:435: }
   823E                    2162 00126$:
                           2163 ;src/game/world.c:437: setTrainHeading(i);
   823E DD 7E F5      [19] 2164 	ld	a, -11 (ix)
   8241 F5            [11] 2165 	push	af
   8242 33            [ 6] 2166 	inc	sp
   8243 CD BF 7F      [17] 2167 	call	_setTrainHeading
   8246 33            [ 6] 2168 	inc	sp
                           2169 ;src/game/world.c:440: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ > 0 && trainList[i].posY-y_ > 0 ) // Potentiellement eerreur with WIIDTH and HEIGHT
   8247 FD 21 25 76   [14] 2170 	ld	iy, #_trainList
   824B FD 7E 00      [19] 2171 	ld	a, 0 (iy)
   824E DD 86 F8      [19] 2172 	add	a, -8 (ix)
   8251 DD 77 FA      [19] 2173 	ld	-6 (ix), a
   8254 FD 7E 01      [19] 2174 	ld	a, 1 (iy)
   8257 DD 8E F9      [19] 2175 	adc	a, -7 (ix)
   825A DD 77 FB      [19] 2176 	ld	-5 (ix), a
   825D DD 6E FA      [19] 2177 	ld	l,-6 (ix)
   8260 DD 66 FB      [19] 2178 	ld	h,-5 (ix)
   8263 11 04 00      [10] 2179 	ld	de, #0x0004
   8266 19            [11] 2180 	add	hl, de
   8267 7E            [ 7] 2181 	ld	a, (hl)
   8268 DD 77 F6      [19] 2182 	ld	-10 (ix), a
   826B 06 00         [ 7] 2183 	ld	b, #0x00
   826D DD 96 FC      [19] 2184 	sub	a, -4 (ix)
   8270 DD 77 FC      [19] 2185 	ld	-4 (ix), a
   8273 78            [ 4] 2186 	ld	a, b
   8274 DD 9E FD      [19] 2187 	sbc	a, -3 (ix)
   8277 DD 77 FD      [19] 2188 	ld	-3 (ix), a
   827A DD 7E FC      [19] 2189 	ld	a, -4 (ix)
   827D D6 14         [ 7] 2190 	sub	a, #0x14
   827F DD 7E FD      [19] 2191 	ld	a, -3 (ix)
   8282 17            [ 4] 2192 	rla
   8283 3F            [ 4] 2193 	ccf
   8284 1F            [ 4] 2194 	rra
   8285 DE 80         [ 7] 2195 	sbc	a, #0x80
   8287 D2 1B 83      [10] 2196 	jp	NC, 00138$
   828A DD 6E FA      [19] 2197 	ld	l,-6 (ix)
   828D DD 66 FB      [19] 2198 	ld	h,-5 (ix)
   8290 11 05 00      [10] 2199 	ld	de, #0x0005
   8293 19            [11] 2200 	add	hl, de
   8294 4E            [ 7] 2201 	ld	c, (hl)
   8295 59            [ 4] 2202 	ld	e, c
   8296 16 00         [ 7] 2203 	ld	d, #0x00
   8298 7B            [ 4] 2204 	ld	a, e
   8299 DD 96 FE      [19] 2205 	sub	a, -2 (ix)
   829C 47            [ 4] 2206 	ld	b, a
   829D 7A            [ 4] 2207 	ld	a, d
   829E DD 9E FF      [19] 2208 	sbc	a, -1 (ix)
   82A1 5F            [ 4] 2209 	ld	e, a
   82A2 78            [ 4] 2210 	ld	a, b
   82A3 D6 0C         [ 7] 2211 	sub	a, #0x0c
   82A5 7B            [ 4] 2212 	ld	a, e
   82A6 17            [ 4] 2213 	rla
   82A7 3F            [ 4] 2214 	ccf
   82A8 1F            [ 4] 2215 	rra
   82A9 DE 80         [ 7] 2216 	sbc	a, #0x80
   82AB 30 6E         [12] 2217 	jr	NC,00138$
   82AD AF            [ 4] 2218 	xor	a, a
   82AE DD BE FC      [19] 2219 	cp	a, -4 (ix)
   82B1 DD 9E FD      [19] 2220 	sbc	a, -3 (ix)
   82B4 E2 B9 82      [10] 2221 	jp	PO, 00240$
   82B7 EE 80         [ 7] 2222 	xor	a, #0x80
   82B9                    2223 00240$:
   82B9 F2 1B 83      [10] 2224 	jp	P, 00138$
   82BC AF            [ 4] 2225 	xor	a, a
   82BD B8            [ 4] 2226 	cp	a, b
   82BE 9B            [ 4] 2227 	sbc	a, e
   82BF E2 C4 82      [10] 2228 	jp	PO, 00241$
   82C2 EE 80         [ 7] 2229 	xor	a, #0x80
   82C4                    2230 00241$:
   82C4 F2 1B 83      [10] 2231 	jp	P, 00138$
                           2232 ;src/game/world.c:443: p_video = cpct_getScreenPtr(SCR_VMEM, (trainList[i].posX-x_)*TILESIZE_W, (trainList[i].posY-y_)*TILESIZE_H);
   82C7 79            [ 4] 2233 	ld	a, c
   82C8 DD 96 05      [19] 2234 	sub	a, 5 (ix)
   82CB 07            [ 4] 2235 	rlca
   82CC 07            [ 4] 2236 	rlca
   82CD 07            [ 4] 2237 	rlca
   82CE 07            [ 4] 2238 	rlca
   82CF E6 F0         [ 7] 2239 	and	a, #0xf0
   82D1 57            [ 4] 2240 	ld	d, a
   82D2 DD 7E F6      [19] 2241 	ld	a, -10 (ix)
   82D5 DD 96 04      [19] 2242 	sub	a, 4 (ix)
   82D8 87            [ 4] 2243 	add	a, a
   82D9 87            [ 4] 2244 	add	a, a
   82DA 5F            [ 4] 2245 	ld	e,a
   82DB D5            [11] 2246 	push	de
   82DC 21 00 C0      [10] 2247 	ld	hl, #0xc000
   82DF E5            [11] 2248 	push	hl
   82E0 CD 6D 65      [17] 2249 	call	_cpct_getScreenPtr
   82E3 4D            [ 4] 2250 	ld	c, l
   82E4 44            [ 4] 2251 	ld	b, h
                           2252 ;src/game/world.c:445: if(trainList[i].heading <= 1) 
   82E5 FD 2A 25 76   [20] 2253 	ld	iy, (_trainList)
   82E9 DD 5E F8      [19] 2254 	ld	e,-8 (ix)
   82EC DD 56 F9      [19] 2255 	ld	d,-7 (ix)
   82EF FD 19         [15] 2256 	add	iy, de
   82F1 FD 5E 06      [19] 2257 	ld	e, 6 (iy)
                           2258 ;src/game/world.c:446: cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
                           2259 ;src/game/world.c:445: if(trainList[i].heading <= 1) 
   82F4 3E 01         [ 7] 2260 	ld	a, #0x01
   82F6 93            [ 4] 2261 	sub	a, e
   82F7 38 12         [12] 2262 	jr	C,00128$
                           2263 ;src/game/world.c:446: cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
   82F9 21 00 01      [10] 2264 	ld	hl, #_g_masktable
   82FC E5            [11] 2265 	push	hl
   82FD 21 04 10      [10] 2266 	ld	hl, #0x1004
   8300 E5            [11] 2267 	push	hl
   8301 C5            [11] 2268 	push	bc
   8302 21 54 4E      [10] 2269 	ld	hl, #_train_h
   8305 E5            [11] 2270 	push	hl
   8306 CD 32 65      [17] 2271 	call	_cpct_drawSpriteMaskedAlignedTable
   8309 18 10         [12] 2272 	jr	00138$
   830B                    2273 00128$:
                           2274 ;src/game/world.c:448: cpct_drawSpriteMaskedAlignedTable(train_v, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
   830B 21 00 01      [10] 2275 	ld	hl, #_g_masktable
   830E E5            [11] 2276 	push	hl
   830F 21 04 10      [10] 2277 	ld	hl, #0x1004
   8312 E5            [11] 2278 	push	hl
   8313 C5            [11] 2279 	push	bc
   8314 21 94 4E      [10] 2280 	ld	hl, #_train_v
   8317 E5            [11] 2281 	push	hl
   8318 CD 32 65      [17] 2282 	call	_cpct_drawSpriteMaskedAlignedTable
   831B                    2283 00138$:
                           2284 ;src/game/world.c:395: for(i=0; i<nbTrainList; i++)
   831B DD 34 F5      [23] 2285 	inc	-11 (ix)
   831E C3 6E 80      [10] 2286 	jp	00137$
   8321                    2287 00139$:
   8321 DD F9         [10] 2288 	ld	sp, ix
   8323 DD E1         [14] 2289 	pop	ix
   8325 C9            [10] 2290 	ret
                           2291 	.area _CODE
                           2292 	.area _INITIALIZER
                           2293 	.area _CABS (ABS)
