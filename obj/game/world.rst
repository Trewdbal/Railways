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
                             29 	.globl _setPixel
                             30 	.globl _isPixelBlack
                             31 	.globl _drawTrains
                             32 ;--------------------------------------------------------
                             33 ; special function registers
                             34 ;--------------------------------------------------------
                             35 ;--------------------------------------------------------
                             36 ; ram data
                             37 ;--------------------------------------------------------
                             38 	.area _DATA
                             39 ;--------------------------------------------------------
                             40 ; ram data
                             41 ;--------------------------------------------------------
                             42 	.area _INITIALIZED
                             43 ;--------------------------------------------------------
                             44 ; absolute external ram data
                             45 ;--------------------------------------------------------
                             46 	.area _DABS (ABS)
                             47 ;--------------------------------------------------------
                             48 ; global & static initialisations
                             49 ;--------------------------------------------------------
                             50 	.area _HOME
                             51 	.area _GSINIT
                             52 	.area _GSFINAL
                             53 	.area _GSINIT
                             54 ;--------------------------------------------------------
                             55 ; Home
                             56 ;--------------------------------------------------------
                             57 	.area _HOME
                             58 	.area _HOME
                             59 ;--------------------------------------------------------
                             60 ; code
                             61 ;--------------------------------------------------------
                             62 	.area _CODE
                             63 ;src/game/world.c:3: cpctm_createTransparentMaskTable(g_masktable, 0x0100, M1, 0);
                             64 ;	---------------------------------
                             65 ; Function dummy_cpct_transparentMaskTable0M1_container
                             66 ; ---------------------------------
   4ED4                      67 _dummy_cpct_transparentMaskTable0M1_container::
                             68 	.area _g_masktable_ (ABS) 
   0100                      69 	.org 0x0100 
   0100                      70 	 _g_masktable::
   0100 FF EE DD CC BB AA    71 	.db 0xFF, 0xEE, 0xDD, 0xCC, 0xBB, 0xAA, 0x99, 0x88 
        99 88
   0108 77 66 55 44 33 22    72 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0110 EE EE CC CC AA AA    73 	.db 0xEE, 0xEE, 0xCC, 0xCC, 0xAA, 0xAA, 0x88, 0x88 
        88 88
   0118 66 66 44 44 22 22    74 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   0120 DD CC DD CC 99 88    75 	.db 0xDD, 0xCC, 0xDD, 0xCC, 0x99, 0x88, 0x99, 0x88 
        99 88
   0128 55 44 55 44 11 00    76 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   0130 CC CC CC CC 88 88    77 	.db 0xCC, 0xCC, 0xCC, 0xCC, 0x88, 0x88, 0x88, 0x88 
        88 88
   0138 44 44 44 44 00 00    78 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   0140 BB AA 99 88 BB AA    79 	.db 0xBB, 0xAA, 0x99, 0x88, 0xBB, 0xAA, 0x99, 0x88 
        99 88
   0148 33 22 11 00 33 22    80 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   0150 AA AA 88 88 AA AA    81 	.db 0xAA, 0xAA, 0x88, 0x88, 0xAA, 0xAA, 0x88, 0x88 
        88 88
   0158 22 22 00 00 22 22    82 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   0160 99 88 99 88 99 88    83 	.db 0x99, 0x88, 0x99, 0x88, 0x99, 0x88, 0x99, 0x88 
        99 88
   0168 11 00 11 00 11 00    84 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   0170 88 88 88 88 88 88    85 	.db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 
        88 88
   0178 00 00 00 00 00 00    86 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0180 77 66 55 44 33 22    87 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0188 77 66 55 44 33 22    88 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0190 66 66 44 44 22 22    89 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   0198 66 66 44 44 22 22    90 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   01A0 55 44 55 44 11 00    91 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   01A8 55 44 55 44 11 00    92 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   01B0 44 44 44 44 00 00    93 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B8 44 44 44 44 00 00    94 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C0 33 22 11 00 33 22    95 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   01C8 33 22 11 00 33 22    96 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   01D0 22 22 00 00 22 22    97 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   01D8 22 22 00 00 22 22    98 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   01E0 11 00 11 00 11 00    99 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   01E8 11 00 11 00 11 00   100 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   01F0 00 00 00 00 00 00   101 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F8 00 00 00 00 00 00   102 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
                            103 	.area _CSEG (REL, CON) 
                            104 ;src/game/world.c:5: void drawCursor(u8 x, u8 y, u8 color)
                            105 ;	---------------------------------
                            106 ; Function drawCursor
                            107 ; ---------------------------------
   7679                     108 _drawCursor::
   7679 DD E5         [15]  109 	push	ix
   767B DD 21 00 00   [14]  110 	ld	ix,#0
   767F DD 39         [15]  111 	add	ix,sp
   7681 3B            [ 6]  112 	dec	sp
                            113 ;src/game/world.c:8: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   7682 DD 7E 05      [19]  114 	ld	a, 5 (ix)
   7685 07            [ 4]  115 	rlca
   7686 07            [ 4]  116 	rlca
   7687 07            [ 4]  117 	rlca
   7688 07            [ 4]  118 	rlca
   7689 E6 F0         [ 7]  119 	and	a, #0xf0
   768B 4F            [ 4]  120 	ld	c, a
   768C DD 7E 04      [19]  121 	ld	a, 4 (ix)
   768F 87            [ 4]  122 	add	a, a
   7690 87            [ 4]  123 	add	a, a
   7691 47            [ 4]  124 	ld	b, a
   7692 C5            [11]  125 	push	bc
   7693 79            [ 4]  126 	ld	a, c
   7694 F5            [11]  127 	push	af
   7695 33            [ 6]  128 	inc	sp
   7696 C5            [11]  129 	push	bc
   7697 33            [ 6]  130 	inc	sp
   7698 21 00 C0      [10]  131 	ld	hl, #0xc000
   769B E5            [11]  132 	push	hl
   769C CD B6 65      [17]  133 	call	_cpct_getScreenPtr
   769F EB            [ 4]  134 	ex	de,hl
   76A0 C1            [10]  135 	pop	bc
                            136 ;src/game/world.c:10: switch(CURSOR_MODE)
   76A1 3E 11         [ 7]  137 	ld	a, #0x11
   76A3 FD 21 72 76   [14]  138 	ld	iy, #_CURSOR_MODE
   76A7 FD 96 00      [19]  139 	sub	a, 0 (iy)
   76AA DA AD 78      [10]  140 	jp	C, 00120$
   76AD D5            [11]  141 	push	de
   76AE FD 5E 00      [19]  142 	ld	e, 0 (iy)
   76B1 16 00         [ 7]  143 	ld	d, #0x00
   76B3 21 BB 76      [10]  144 	ld	hl, #00126$
   76B6 19            [11]  145 	add	hl, de
   76B7 19            [11]  146 	add	hl, de
   76B8 19            [11]  147 	add	hl, de
   76B9 D1            [10]  148 	pop	de
   76BA E9            [ 4]  149 	jp	(hl)
   76BB                     150 00126$:
   76BB C3 F1 76      [10]  151 	jp	00101$
   76BE C3 B5 77      [10]  152 	jp	00102$
   76C1 C3 C8 77      [10]  153 	jp	00103$
   76C4 C3 D7 77      [10]  154 	jp	00104$
   76C7 C3 E6 77      [10]  155 	jp	00105$
   76CA C3 F5 77      [10]  156 	jp	00106$
   76CD C3 04 78      [10]  157 	jp	00107$
   76D0 C3 13 78      [10]  158 	jp	00108$
   76D3 C3 22 78      [10]  159 	jp	00109$
   76D6 C3 31 78      [10]  160 	jp	00110$
   76D9 C3 3F 78      [10]  161 	jp	00111$
   76DC C3 4D 78      [10]  162 	jp	00112$
   76DF C3 5B 78      [10]  163 	jp	00113$
   76E2 C3 69 78      [10]  164 	jp	00114$
   76E5 C3 77 78      [10]  165 	jp	00115$
   76E8 C3 85 78      [10]  166 	jp	00116$
   76EB C3 93 78      [10]  167 	jp	00117$
   76EE C3 A1 78      [10]  168 	jp	00118$
                            169 ;src/game/world.c:12: case NONE:
   76F1                     170 00101$:
                            171 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   76F1 C5            [11]  172 	push	bc
   76F2 D5            [11]  173 	push	de
   76F3 DD 66 06      [19]  174 	ld	h, 6 (ix)
   76F6 DD 6E 06      [19]  175 	ld	l, 6 (ix)
   76F9 E5            [11]  176 	push	hl
   76FA DD 66 06      [19]  177 	ld	h, 6 (ix)
   76FD DD 6E 06      [19]  178 	ld	l, 6 (ix)
   7700 E5            [11]  179 	push	hl
   7701 CD 4C 64      [17]  180 	call	_cpct_px2byteM1
   7704 F1            [10]  181 	pop	af
   7705 F1            [10]  182 	pop	af
   7706 DD 75 FF      [19]  183 	ld	-1 (ix), l
   7709 D1            [10]  184 	pop	de
   770A 21 04 00      [10]  185 	ld	hl, #0x0004
   770D E5            [11]  186 	push	hl
   770E DD 7E FF      [19]  187 	ld	a, -1 (ix)
   7711 F5            [11]  188 	push	af
   7712 33            [ 6]  189 	inc	sp
   7713 D5            [11]  190 	push	de
   7714 CD 3E 64      [17]  191 	call	_cpct_memset
   7717 C1            [10]  192 	pop	bc
                            193 ;src/game/world.c:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   7718 51            [ 4]  194 	ld	d, c
   7719 14            [ 4]  195 	inc	d
   771A C5            [11]  196 	push	bc
   771B 58            [ 4]  197 	ld	e, b
   771C D5            [11]  198 	push	de
   771D 21 00 C0      [10]  199 	ld	hl, #0xc000
   7720 E5            [11]  200 	push	hl
   7721 CD B6 65      [17]  201 	call	_cpct_getScreenPtr
   7724 E5            [11]  202 	push	hl
   7725 DD 66 06      [19]  203 	ld	h, 6 (ix)
   7728 DD 6E 06      [19]  204 	ld	l, 6 (ix)
   772B E5            [11]  205 	push	hl
   772C DD 66 06      [19]  206 	ld	h, 6 (ix)
   772F DD 6E 06      [19]  207 	ld	l, 6 (ix)
   7732 E5            [11]  208 	push	hl
   7733 CD 4C 64      [17]  209 	call	_cpct_px2byteM1
   7736 F1            [10]  210 	pop	af
   7737 F1            [10]  211 	pop	af
   7738 4D            [ 4]  212 	ld	c, l
   7739 D1            [10]  213 	pop	de
   773A F1            [10]  214 	pop	af
   773B 47            [ 4]  215 	ld	b, a
   773C C5            [11]  216 	push	bc
   773D 21 04 00      [10]  217 	ld	hl, #0x0004
   7740 E5            [11]  218 	push	hl
   7741 79            [ 4]  219 	ld	a, c
   7742 F5            [11]  220 	push	af
   7743 33            [ 6]  221 	inc	sp
   7744 D5            [11]  222 	push	de
   7745 CD 3E 64      [17]  223 	call	_cpct_memset
   7748 C1            [10]  224 	pop	bc
                            225 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   7749 DD 7E 05      [19]  226 	ld	a, 5 (ix)
   774C 3C            [ 4]  227 	inc	a
   774D 07            [ 4]  228 	rlca
   774E 07            [ 4]  229 	rlca
   774F 07            [ 4]  230 	rlca
   7750 07            [ 4]  231 	rlca
   7751 E6 F0         [ 7]  232 	and	a, #0xf0
   7753 4F            [ 4]  233 	ld	c, a
   7754 51            [ 4]  234 	ld	d, c
   7755 15            [ 4]  235 	dec	d
   7756 C5            [11]  236 	push	bc
   7757 58            [ 4]  237 	ld	e, b
   7758 D5            [11]  238 	push	de
   7759 21 00 C0      [10]  239 	ld	hl, #0xc000
   775C E5            [11]  240 	push	hl
   775D CD B6 65      [17]  241 	call	_cpct_getScreenPtr
   7760 E5            [11]  242 	push	hl
   7761 DD 66 06      [19]  243 	ld	h, 6 (ix)
   7764 DD 6E 06      [19]  244 	ld	l, 6 (ix)
   7767 E5            [11]  245 	push	hl
   7768 DD 66 06      [19]  246 	ld	h, 6 (ix)
   776B DD 6E 06      [19]  247 	ld	l, 6 (ix)
   776E E5            [11]  248 	push	hl
   776F CD 4C 64      [17]  249 	call	_cpct_px2byteM1
   7772 F1            [10]  250 	pop	af
   7773 F1            [10]  251 	pop	af
   7774 DD 75 FF      [19]  252 	ld	-1 (ix), l
   7777 D1            [10]  253 	pop	de
   7778 21 04 00      [10]  254 	ld	hl, #0x0004
   777B E5            [11]  255 	push	hl
   777C DD 7E FF      [19]  256 	ld	a, -1 (ix)
   777F F5            [11]  257 	push	af
   7780 33            [ 6]  258 	inc	sp
   7781 D5            [11]  259 	push	de
   7782 CD 3E 64      [17]  260 	call	_cpct_memset
   7785 C1            [10]  261 	pop	bc
                            262 ;src/game/world.c:20: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   7786 51            [ 4]  263 	ld	d, c
   7787 15            [ 4]  264 	dec	d
   7788 15            [ 4]  265 	dec	d
   7789 58            [ 4]  266 	ld	e, b
   778A D5            [11]  267 	push	de
   778B 21 00 C0      [10]  268 	ld	hl, #0xc000
   778E E5            [11]  269 	push	hl
   778F CD B6 65      [17]  270 	call	_cpct_getScreenPtr
                            271 ;src/game/world.c:21: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   7792 E5            [11]  272 	push	hl
   7793 DD 66 06      [19]  273 	ld	h, 6 (ix)
   7796 DD 6E 06      [19]  274 	ld	l, 6 (ix)
   7799 E5            [11]  275 	push	hl
   779A DD 66 06      [19]  276 	ld	h, 6 (ix)
   779D DD 6E 06      [19]  277 	ld	l, 6 (ix)
   77A0 E5            [11]  278 	push	hl
   77A1 CD 4C 64      [17]  279 	call	_cpct_px2byteM1
   77A4 F1            [10]  280 	pop	af
   77A5 F1            [10]  281 	pop	af
   77A6 55            [ 4]  282 	ld	d, l
   77A7 C1            [10]  283 	pop	bc
   77A8 21 04 00      [10]  284 	ld	hl, #0x0004
   77AB E5            [11]  285 	push	hl
   77AC D5            [11]  286 	push	de
   77AD 33            [ 6]  287 	inc	sp
   77AE C5            [11]  288 	push	bc
   77AF CD 3E 64      [17]  289 	call	_cpct_memset
                            290 ;src/game/world.c:22: break;
   77B2 C3 AD 78      [10]  291 	jp	00120$
                            292 ;src/game/world.c:23: case PUTTRAIN:
   77B5                     293 00102$:
                            294 ;src/game/world.c:24: cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
   77B5 01 00 01      [10]  295 	ld	bc, #_g_masktable+0
   77B8 C5            [11]  296 	push	bc
   77B9 21 04 10      [10]  297 	ld	hl, #0x1004
   77BC E5            [11]  298 	push	hl
   77BD D5            [11]  299 	push	de
   77BE 21 54 4E      [10]  300 	ld	hl, #_train_h
   77C1 E5            [11]  301 	push	hl
   77C2 CD 7B 65      [17]  302 	call	_cpct_drawSpriteMaskedAlignedTable
                            303 ;src/game/world.c:25: break;
   77C5 C3 AD 78      [10]  304 	jp	00120$
                            305 ;src/game/world.c:26: case T_SSNS:
   77C8                     306 00103$:
                            307 ;src/game/world.c:27: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   77C8 21 04 10      [10]  308 	ld	hl, #0x1004
   77CB E5            [11]  309 	push	hl
   77CC D5            [11]  310 	push	de
   77CD 21 54 4A      [10]  311 	ld	hl, #_station_small_ns
   77D0 E5            [11]  312 	push	hl
   77D1 CD B6 60      [17]  313 	call	_cpct_drawSprite
                            314 ;src/game/world.c:28: break;
   77D4 C3 AD 78      [10]  315 	jp	00120$
                            316 ;src/game/world.c:29: case T_SSEW:
   77D7                     317 00104$:
                            318 ;src/game/world.c:30: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   77D7 21 04 10      [10]  319 	ld	hl, #0x1004
   77DA E5            [11]  320 	push	hl
   77DB D5            [11]  321 	push	de
   77DC 21 94 4A      [10]  322 	ld	hl, #_station_small_ew
   77DF E5            [11]  323 	push	hl
   77E0 CD B6 60      [17]  324 	call	_cpct_drawSprite
                            325 ;src/game/world.c:31: break;
   77E3 C3 AD 78      [10]  326 	jp	00120$
                            327 ;src/game/world.c:32: case T_SMNS:
   77E6                     328 00105$:
                            329 ;src/game/world.c:33: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   77E6 21 04 10      [10]  330 	ld	hl, #0x1004
   77E9 E5            [11]  331 	push	hl
   77EA D5            [11]  332 	push	de
   77EB 21 D4 4A      [10]  333 	ld	hl, #_station_medium_ns
   77EE E5            [11]  334 	push	hl
   77EF CD B6 60      [17]  335 	call	_cpct_drawSprite
                            336 ;src/game/world.c:34: break;
   77F2 C3 AD 78      [10]  337 	jp	00120$
                            338 ;src/game/world.c:35: case T_SMEW:
   77F5                     339 00106$:
                            340 ;src/game/world.c:36: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   77F5 21 04 10      [10]  341 	ld	hl, #0x1004
   77F8 E5            [11]  342 	push	hl
   77F9 D5            [11]  343 	push	de
   77FA 21 14 4B      [10]  344 	ld	hl, #_station_medium_ew
   77FD E5            [11]  345 	push	hl
   77FE CD B6 60      [17]  346 	call	_cpct_drawSprite
                            347 ;src/game/world.c:37: break;
   7801 C3 AD 78      [10]  348 	jp	00120$
                            349 ;src/game/world.c:38: case T_SLNS:
   7804                     350 00107$:
                            351 ;src/game/world.c:39: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   7804 21 04 10      [10]  352 	ld	hl, #0x1004
   7807 E5            [11]  353 	push	hl
   7808 D5            [11]  354 	push	de
   7809 21 54 4B      [10]  355 	ld	hl, #_station_large_ns
   780C E5            [11]  356 	push	hl
   780D CD B6 60      [17]  357 	call	_cpct_drawSprite
                            358 ;src/game/world.c:40: break;
   7810 C3 AD 78      [10]  359 	jp	00120$
                            360 ;src/game/world.c:41: case T_SLEW:
   7813                     361 00108$:
                            362 ;src/game/world.c:42: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   7813 21 04 10      [10]  363 	ld	hl, #0x1004
   7816 E5            [11]  364 	push	hl
   7817 D5            [11]  365 	push	de
   7818 21 94 4B      [10]  366 	ld	hl, #_station_large_ew
   781B E5            [11]  367 	push	hl
   781C CD B6 60      [17]  368 	call	_cpct_drawSprite
                            369 ;src/game/world.c:43: break;
   781F C3 AD 78      [10]  370 	jp	00120$
                            371 ;src/game/world.c:44: case T_REW:
   7822                     372 00109$:
                            373 ;src/game/world.c:45: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   7822 21 04 10      [10]  374 	ld	hl, #0x1004
   7825 E5            [11]  375 	push	hl
   7826 D5            [11]  376 	push	de
   7827 21 D4 4B      [10]  377 	ld	hl, #_rail_ew
   782A E5            [11]  378 	push	hl
   782B CD B6 60      [17]  379 	call	_cpct_drawSprite
                            380 ;src/game/world.c:46: break;
   782E C3 AD 78      [10]  381 	jp	00120$
                            382 ;src/game/world.c:47: case T_RNS:
   7831                     383 00110$:
                            384 ;src/game/world.c:48: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   7831 21 04 10      [10]  385 	ld	hl, #0x1004
   7834 E5            [11]  386 	push	hl
   7835 D5            [11]  387 	push	de
   7836 21 14 4C      [10]  388 	ld	hl, #_rail_ns
   7839 E5            [11]  389 	push	hl
   783A CD B6 60      [17]  390 	call	_cpct_drawSprite
                            391 ;src/game/world.c:49: break;
   783D 18 6E         [12]  392 	jr	00120$
                            393 ;src/game/world.c:50: case T_REN:
   783F                     394 00111$:
                            395 ;src/game/world.c:51: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   783F 21 04 10      [10]  396 	ld	hl, #0x1004
   7842 E5            [11]  397 	push	hl
   7843 D5            [11]  398 	push	de
   7844 21 54 4C      [10]  399 	ld	hl, #_rail_en
   7847 E5            [11]  400 	push	hl
   7848 CD B6 60      [17]  401 	call	_cpct_drawSprite
                            402 ;src/game/world.c:52: break;
   784B 18 60         [12]  403 	jr	00120$
                            404 ;src/game/world.c:53: case T_RES:
   784D                     405 00112$:
                            406 ;src/game/world.c:54: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   784D 21 04 10      [10]  407 	ld	hl, #0x1004
   7850 E5            [11]  408 	push	hl
   7851 D5            [11]  409 	push	de
   7852 21 94 4C      [10]  410 	ld	hl, #_rail_es
   7855 E5            [11]  411 	push	hl
   7856 CD B6 60      [17]  412 	call	_cpct_drawSprite
                            413 ;src/game/world.c:55: break;
   7859 18 52         [12]  414 	jr	00120$
                            415 ;src/game/world.c:56: case T_RWN:
   785B                     416 00113$:
                            417 ;src/game/world.c:57: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   785B 21 04 10      [10]  418 	ld	hl, #0x1004
   785E E5            [11]  419 	push	hl
   785F D5            [11]  420 	push	de
   7860 21 D4 4C      [10]  421 	ld	hl, #_rail_wn
   7863 E5            [11]  422 	push	hl
   7864 CD B6 60      [17]  423 	call	_cpct_drawSprite
                            424 ;src/game/world.c:58: break;
   7867 18 44         [12]  425 	jr	00120$
                            426 ;src/game/world.c:59: case T_RWS:
   7869                     427 00114$:
                            428 ;src/game/world.c:60: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   7869 21 04 10      [10]  429 	ld	hl, #0x1004
   786C E5            [11]  430 	push	hl
   786D D5            [11]  431 	push	de
   786E 21 14 4D      [10]  432 	ld	hl, #_rail_ws
   7871 E5            [11]  433 	push	hl
   7872 CD B6 60      [17]  434 	call	_cpct_drawSprite
                            435 ;src/game/world.c:61: break;
   7875 18 36         [12]  436 	jr	00120$
                            437 ;src/game/world.c:62: case T_REWN:
   7877                     438 00115$:
                            439 ;src/game/world.c:63: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   7877 21 04 10      [10]  440 	ld	hl, #0x1004
   787A E5            [11]  441 	push	hl
   787B D5            [11]  442 	push	de
   787C 21 54 4D      [10]  443 	ld	hl, #_rail_ew_n
   787F E5            [11]  444 	push	hl
   7880 CD B6 60      [17]  445 	call	_cpct_drawSprite
                            446 ;src/game/world.c:64: break;
   7883 18 28         [12]  447 	jr	00120$
                            448 ;src/game/world.c:65: case T_REWS:
   7885                     449 00116$:
                            450 ;src/game/world.c:66: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   7885 21 04 10      [10]  451 	ld	hl, #0x1004
   7888 E5            [11]  452 	push	hl
   7889 D5            [11]  453 	push	de
   788A 21 94 4D      [10]  454 	ld	hl, #_rail_ew_s
   788D E5            [11]  455 	push	hl
   788E CD B6 60      [17]  456 	call	_cpct_drawSprite
                            457 ;src/game/world.c:67: break;
   7891 18 1A         [12]  458 	jr	00120$
                            459 ;src/game/world.c:68: case T_RNSE:
   7893                     460 00117$:
                            461 ;src/game/world.c:69: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   7893 21 04 10      [10]  462 	ld	hl, #0x1004
   7896 E5            [11]  463 	push	hl
   7897 D5            [11]  464 	push	de
   7898 21 14 4E      [10]  465 	ld	hl, #_rail_ns_e
   789B E5            [11]  466 	push	hl
   789C CD B6 60      [17]  467 	call	_cpct_drawSprite
                            468 ;src/game/world.c:70: break;
   789F 18 0C         [12]  469 	jr	00120$
                            470 ;src/game/world.c:71: case T_RNSW:
   78A1                     471 00118$:
                            472 ;src/game/world.c:72: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   78A1 21 04 10      [10]  473 	ld	hl, #0x1004
   78A4 E5            [11]  474 	push	hl
   78A5 D5            [11]  475 	push	de
   78A6 21 D4 4D      [10]  476 	ld	hl, #_rail_ns_w
   78A9 E5            [11]  477 	push	hl
   78AA CD B6 60      [17]  478 	call	_cpct_drawSprite
                            479 ;src/game/world.c:74: }
   78AD                     480 00120$:
   78AD 33            [ 6]  481 	inc	sp
   78AE DD E1         [14]  482 	pop	ix
   78B0 C9            [10]  483 	ret
                            484 ;src/game/world.c:77: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            485 ;	---------------------------------
                            486 ; Function patternTile
                            487 ; ---------------------------------
   78B1                     488 _patternTile::
   78B1 DD E5         [15]  489 	push	ix
   78B3 DD 21 00 00   [14]  490 	ld	ix,#0
   78B7 DD 39         [15]  491 	add	ix,sp
   78B9 21 F7 FF      [10]  492 	ld	hl, #-9
   78BC 39            [11]  493 	add	hl, sp
   78BD F9            [ 6]  494 	ld	sp, hl
                            495 ;src/game/world.c:82: for(iy=0; iy<nBitsY; iy++)
   78BE DD 7E 04      [19]  496 	ld	a, 4 (ix)
   78C1 D6 08         [ 7]  497 	sub	a, #0x08
   78C3 20 04         [12]  498 	jr	NZ,00153$
   78C5 3E 01         [ 7]  499 	ld	a,#0x01
   78C7 18 01         [12]  500 	jr	00154$
   78C9                     501 00153$:
   78C9 AF            [ 4]  502 	xor	a,a
   78CA                     503 00154$:
   78CA DD 77 FE      [19]  504 	ld	-2 (ix), a
   78CD DD 7E 04      [19]  505 	ld	a, 4 (ix)
   78D0 D6 02         [ 7]  506 	sub	a, #0x02
   78D2 20 04         [12]  507 	jr	NZ,00155$
   78D4 3E 01         [ 7]  508 	ld	a,#0x01
   78D6 18 01         [12]  509 	jr	00156$
   78D8                     510 00155$:
   78D8 AF            [ 4]  511 	xor	a,a
   78D9                     512 00156$:
   78D9 DD 77 FB      [19]  513 	ld	-5 (ix), a
   78DC 1E 00         [ 7]  514 	ld	e, #0x00
   78DE                     515 00115$:
   78DE 7B            [ 4]  516 	ld	a, e
   78DF DD 96 08      [19]  517 	sub	a, 8 (ix)
   78E2 D2 96 79      [10]  518 	jp	NC, 00117$
                            519 ;src/game/world.c:84: for(ix=0; ix<nBitsX; ix++)
   78E5 D5            [11]  520 	push	de
   78E6 16 00         [ 7]  521 	ld	d,#0x00
   78E8 6B            [ 4]  522 	ld	l, e
   78E9 62            [ 4]  523 	ld	h, d
   78EA 29            [11]  524 	add	hl, hl
   78EB 29            [11]  525 	add	hl, hl
   78EC 19            [11]  526 	add	hl, de
   78ED 29            [11]  527 	add	hl, hl
   78EE 29            [11]  528 	add	hl, hl
   78EF 29            [11]  529 	add	hl, hl
   78F0 29            [11]  530 	add	hl, hl
   78F1 D1            [10]  531 	pop	de
   78F2 4D            [ 4]  532 	ld	c, l
   78F3 44            [ 4]  533 	ld	b, h
   78F4 DD 7E 05      [19]  534 	ld	a, 5 (ix)
   78F7 81            [ 4]  535 	add	a, c
   78F8 DD 77 F9      [19]  536 	ld	-7 (ix), a
   78FB DD 7E 06      [19]  537 	ld	a, 6 (ix)
   78FE 88            [ 4]  538 	adc	a, b
   78FF DD 77 FA      [19]  539 	ld	-6 (ix), a
   7902 D5            [11]  540 	push	de
   7903 DD 66 07      [19]  541 	ld	h, 7 (ix)
   7906 2E 00         [ 7]  542 	ld	l, #0x00
   7908 55            [ 4]  543 	ld	d, l
   7909 06 08         [ 7]  544 	ld	b, #0x08
   790B                     545 00157$:
   790B 29            [11]  546 	add	hl, hl
   790C 30 01         [12]  547 	jr	NC,00158$
   790E 19            [11]  548 	add	hl, de
   790F                     549 00158$:
   790F 10 FA         [13]  550 	djnz	00157$
   7911 D1            [10]  551 	pop	de
   7912 DD 75 FC      [19]  552 	ld	-4 (ix), l
   7915 DD 74 FD      [19]  553 	ld	-3 (ix), h
   7918 16 00         [ 7]  554 	ld	d, #0x00
   791A                     555 00112$:
   791A 7A            [ 4]  556 	ld	a, d
   791B DD 96 07      [19]  557 	sub	a, 7 (ix)
   791E 30 72         [12]  558 	jr	NC,00116$
                            559 ;src/game/world.c:86: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   7920 DD 72 F7      [19]  560 	ld	-9 (ix), d
   7923 DD 36 F8 00   [19]  561 	ld	-8 (ix), #0x00
   7927 DD 7E F7      [19]  562 	ld	a, -9 (ix)
   792A DD 86 FC      [19]  563 	add	a, -4 (ix)
   792D 4F            [ 4]  564 	ld	c, a
   792E DD 7E F8      [19]  565 	ld	a, -8 (ix)
   7931 DD 8E FD      [19]  566 	adc	a, -3 (ix)
   7934 47            [ 4]  567 	ld	b, a
   7935 DD 6E 09      [19]  568 	ld	l,9 (ix)
   7938 DD 66 0A      [19]  569 	ld	h,10 (ix)
   793B D5            [11]  570 	push	de
   793C C5            [11]  571 	push	bc
   793D E5            [11]  572 	push	hl
   793E CD 76 60      [17]  573 	call	_cpct_getBit
   7941 DD 75 FF      [19]  574 	ld	-1 (ix), l
   7944 D1            [10]  575 	pop	de
   7945 DD 7E FF      [19]  576 	ld	a, -1 (ix)
   7948 B7            [ 4]  577 	or	a, a
   7949 28 44         [12]  578 	jr	Z,00113$
   794B DD 7E F9      [19]  579 	ld	a, -7 (ix)
   794E DD 86 F7      [19]  580 	add	a, -9 (ix)
   7951 4F            [ 4]  581 	ld	c, a
   7952 DD 7E FA      [19]  582 	ld	a, -6 (ix)
   7955 DD 8E F8      [19]  583 	adc	a, -8 (ix)
   7958 47            [ 4]  584 	ld	b,a
   7959 EE 80         [ 7]  585 	xor	a, #0x80
   795B D6 8F         [ 7]  586 	sub	a, #0x8f
   795D 30 30         [12]  587 	jr	NC,00113$
                            588 ;src/game/world.c:88: if(tileType == FOREST)
   795F DD 7E FE      [19]  589 	ld	a, -2 (ix)
   7962 B7            [ 4]  590 	or	a, a
   7963 28 0A         [12]  591 	jr	Z,00104$
                            592 ;src/game/world.c:89: p_world[index+iy*WIDTH+ix] = tileType;
   7965 21 6E 67      [10]  593 	ld	hl, #_p_world
   7968 09            [11]  594 	add	hl, bc
   7969 DD 7E 04      [19]  595 	ld	a, 4 (ix)
   796C 77            [ 7]  596 	ld	(hl), a
   796D 18 20         [12]  597 	jr	00113$
   796F                     598 00104$:
                            599 ;src/game/world.c:90: else if(tileType==DWELLINGS1)
   796F DD 7E FB      [19]  600 	ld	a, -5 (ix)
   7972 B7            [ 4]  601 	or	a, a
   7973 28 1A         [12]  602 	jr	Z,00113$
                            603 ;src/game/world.c:91: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandom_mxor_u8 ()%3+2;
   7975 21 6E 67      [10]  604 	ld	hl, #_p_world
   7978 09            [11]  605 	add	hl, bc
   7979 E5            [11]  606 	push	hl
   797A D5            [11]  607 	push	de
   797B CD 84 64      [17]  608 	call	_cpct_getRandom_mxor_u8
   797E 45            [ 4]  609 	ld	b, l
   797F 3E 03         [ 7]  610 	ld	a, #0x03
   7981 F5            [11]  611 	push	af
   7982 33            [ 6]  612 	inc	sp
   7983 C5            [11]  613 	push	bc
   7984 33            [ 6]  614 	inc	sp
   7985 CD 5B 61      [17]  615 	call	__moduchar
   7988 F1            [10]  616 	pop	af
   7989 4D            [ 4]  617 	ld	c, l
   798A D1            [10]  618 	pop	de
   798B E1            [10]  619 	pop	hl
   798C 0C            [ 4]  620 	inc	c
   798D 0C            [ 4]  621 	inc	c
   798E 71            [ 7]  622 	ld	(hl), c
   798F                     623 00113$:
                            624 ;src/game/world.c:84: for(ix=0; ix<nBitsX; ix++)
   798F 14            [ 4]  625 	inc	d
   7990 18 88         [12]  626 	jr	00112$
   7992                     627 00116$:
                            628 ;src/game/world.c:82: for(iy=0; iy<nBitsY; iy++)
   7992 1C            [ 4]  629 	inc	e
   7993 C3 DE 78      [10]  630 	jp	00115$
   7996                     631 00117$:
   7996 DD F9         [10]  632 	ld	sp, ix
   7998 DD E1         [14]  633 	pop	ix
   799A C9            [10]  634 	ret
                            635 ;src/game/world.c:98: void generateWorld()
                            636 ;	---------------------------------
                            637 ; Function generateWorld
                            638 ; ---------------------------------
   799B                     639 _generateWorld::
   799B DD E5         [15]  640 	push	ix
   799D DD 21 00 00   [14]  641 	ld	ix,#0
   79A1 DD 39         [15]  642 	add	ix,sp
   79A3 21 E4 FF      [10]  643 	ld	hl, #-28
   79A6 39            [11]  644 	add	hl, sp
   79A7 F9            [ 6]  645 	ld	sp, hl
                            646 ;src/game/world.c:105: CURSOR_MODE = NONE;
   79A8 21 72 76      [10]  647 	ld	hl,#_CURSOR_MODE + 0
   79AB 36 00         [10]  648 	ld	(hl), #0x00
                            649 ;src/game/world.c:108: cpct_setSeed_mxor ((u32)cpct_count2VSYNC());
   79AD CD DD 61      [17]  650 	call	_cpct_count2VSYNC
   79B0 11 00 00      [10]  651 	ld	de,#0x0000
   79B3 CD 2C 63      [17]  652 	call	_cpct_setSeed_mxor
                            653 ;src/game/world.c:112: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   79B6 01 00 00      [10]  654 	ld	bc, #0x0000
   79B9                     655 00119$:
                            656 ;src/game/world.c:114: p_world[iy] =  cpct_getRandom_mxor_u16()%2;
   79B9 21 6E 67      [10]  657 	ld	hl, #_p_world
   79BC 09            [11]  658 	add	hl, bc
   79BD E5            [11]  659 	push	hl
   79BE C5            [11]  660 	push	bc
   79BF CD 88 63      [17]  661 	call	_cpct_getRandom_mxor_u16
   79C2 5D            [ 4]  662 	ld	e, l
   79C3 C1            [10]  663 	pop	bc
   79C4 E1            [10]  664 	pop	hl
   79C5 7B            [ 4]  665 	ld	a, e
   79C6 E6 01         [ 7]  666 	and	a, #0x01
   79C8 77            [ 7]  667 	ld	(hl), a
                            668 ;src/game/world.c:112: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   79C9 03            [ 6]  669 	inc	bc
   79CA 78            [ 4]  670 	ld	a, b
   79CB EE 80         [ 7]  671 	xor	a, #0x80
   79CD D6 8F         [ 7]  672 	sub	a, #0x8f
   79CF 38 E8         [12]  673 	jr	C,00119$
                            674 ;src/game/world.c:119: for(ix=0; ix<NBFOREST; ix++)
   79D1 21 02 00      [10]  675 	ld	hl, #0x0002
   79D4 39            [11]  676 	add	hl, sp
   79D5 DD 75 F8      [19]  677 	ld	-8 (ix), l
   79D8 DD 74 F9      [19]  678 	ld	-7 (ix), h
   79DB 01 00 00      [10]  679 	ld	bc, #0x0000
   79DE                     680 00121$:
                            681 ;src/game/world.c:121: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   79DE C5            [11]  682 	push	bc
   79DF CD 88 63      [17]  683 	call	_cpct_getRandom_mxor_u16
   79E2 11 00 0F      [10]  684 	ld	de, #0x0f00
   79E5 D5            [11]  685 	push	de
   79E6 E5            [11]  686 	push	hl
   79E7 CD 67 61      [17]  687 	call	__moduint
   79EA F1            [10]  688 	pop	af
   79EB E3            [19]  689 	ex	(sp),hl
   79EC CD 88 63      [17]  690 	call	_cpct_getRandom_mxor_u16
   79EF D1            [10]  691 	pop	de
   79F0 C1            [10]  692 	pop	bc
   79F1 7D            [ 4]  693 	ld	a, l
   79F2 E6 03         [ 7]  694 	and	a, #0x03
   79F4 6F            [ 4]  695 	ld	l, a
   79F5 26 00         [ 7]  696 	ld	h, #0x00
                            697 ;src/game/world.c:127: p_forest[1] = 0b11000111;
   79F7 DD 7E F8      [19]  698 	ld	a, -8 (ix)
   79FA C6 01         [ 7]  699 	add	a, #0x01
   79FC DD 77 FE      [19]  700 	ld	-2 (ix), a
   79FF DD 7E F9      [19]  701 	ld	a, -7 (ix)
   7A02 CE 00         [ 7]  702 	adc	a, #0x00
   7A04 DD 77 FF      [19]  703 	ld	-1 (ix), a
                            704 ;src/game/world.c:128: p_forest[2] = 0b11011110;
   7A07 DD 7E F8      [19]  705 	ld	a, -8 (ix)
   7A0A C6 02         [ 7]  706 	add	a, #0x02
   7A0C DD 77 F6      [19]  707 	ld	-10 (ix), a
   7A0F DD 7E F9      [19]  708 	ld	a, -7 (ix)
   7A12 CE 00         [ 7]  709 	adc	a, #0x00
   7A14 DD 77 F7      [19]  710 	ld	-9 (ix), a
                            711 ;src/game/world.c:129: p_forest[3] = 0b01111110;
   7A17 DD 7E F8      [19]  712 	ld	a, -8 (ix)
   7A1A C6 03         [ 7]  713 	add	a, #0x03
   7A1C DD 77 F0      [19]  714 	ld	-16 (ix), a
   7A1F DD 7E F9      [19]  715 	ld	a, -7 (ix)
   7A22 CE 00         [ 7]  716 	adc	a, #0x00
   7A24 DD 77 F1      [19]  717 	ld	-15 (ix), a
                            718 ;src/game/world.c:130: p_forest[4] = 0b11111110; 
   7A27 DD 7E F8      [19]  719 	ld	a, -8 (ix)
   7A2A C6 04         [ 7]  720 	add	a, #0x04
   7A2C DD 77 F2      [19]  721 	ld	-14 (ix), a
   7A2F DD 7E F9      [19]  722 	ld	a, -7 (ix)
   7A32 CE 00         [ 7]  723 	adc	a, #0x00
   7A34 DD 77 F3      [19]  724 	ld	-13 (ix), a
                            725 ;src/game/world.c:131: p_forest[5] = 0b01111111;
   7A37 DD 7E F8      [19]  726 	ld	a, -8 (ix)
   7A3A C6 05         [ 7]  727 	add	a, #0x05
   7A3C DD 77 FA      [19]  728 	ld	-6 (ix), a
   7A3F DD 7E F9      [19]  729 	ld	a, -7 (ix)
   7A42 CE 00         [ 7]  730 	adc	a, #0x00
   7A44 DD 77 FB      [19]  731 	ld	-5 (ix), a
                            732 ;src/game/world.c:132: p_forest[6] = 0b11101111;
   7A47 DD 7E F8      [19]  733 	ld	a, -8 (ix)
   7A4A C6 06         [ 7]  734 	add	a, #0x06
   7A4C DD 77 FC      [19]  735 	ld	-4 (ix), a
   7A4F DD 7E F9      [19]  736 	ld	a, -7 (ix)
   7A52 CE 00         [ 7]  737 	adc	a, #0x00
   7A54 DD 77 FD      [19]  738 	ld	-3 (ix), a
                            739 ;src/game/world.c:133: p_forest[7] = 0b11001111;
   7A57 DD 7E F8      [19]  740 	ld	a, -8 (ix)
   7A5A C6 07         [ 7]  741 	add	a, #0x07
   7A5C DD 77 F4      [19]  742 	ld	-12 (ix), a
   7A5F DD 7E F9      [19]  743 	ld	a, -7 (ix)
   7A62 CE 00         [ 7]  744 	adc	a, #0x00
   7A64 DD 77 F5      [19]  745 	ld	-11 (ix), a
                            746 ;src/game/world.c:123: switch(cpct_getRandom_mxor_u16()%4)
   7A67 7D            [ 4]  747 	ld	a, l
   7A68 B7            [ 4]  748 	or	a, a
   7A69 B4            [ 4]  749 	or	a, h
   7A6A 28 16         [12]  750 	jr	Z,00102$
   7A6C 7D            [ 4]  751 	ld	a, l
   7A6D 3D            [ 4]  752 	dec	a
   7A6E B4            [ 4]  753 	or	a, h
   7A6F 28 54         [12]  754 	jr	Z,00103$
   7A71 7D            [ 4]  755 	ld	a, l
   7A72 D6 02         [ 7]  756 	sub	a, #0x02
   7A74 B4            [ 4]  757 	or	a, h
   7A75 CA 08 7B      [10]  758 	jp	Z,00104$
   7A78 7D            [ 4]  759 	ld	a, l
   7A79 D6 03         [ 7]  760 	sub	a, #0x03
   7A7B B4            [ 4]  761 	or	a, h
   7A7C CA 4A 7B      [10]  762 	jp	Z,00105$
   7A7F C3 8A 7B      [10]  763 	jp	00106$
                            764 ;src/game/world.c:125: case 0:
   7A82                     765 00102$:
                            766 ;src/game/world.c:126: p_forest[0] = 0b10000100;
   7A82 DD 6E F8      [19]  767 	ld	l,-8 (ix)
   7A85 DD 66 F9      [19]  768 	ld	h,-7 (ix)
   7A88 36 84         [10]  769 	ld	(hl), #0x84
                            770 ;src/game/world.c:127: p_forest[1] = 0b11000111;
   7A8A DD 6E FE      [19]  771 	ld	l,-2 (ix)
   7A8D DD 66 FF      [19]  772 	ld	h,-1 (ix)
   7A90 36 C7         [10]  773 	ld	(hl), #0xc7
                            774 ;src/game/world.c:128: p_forest[2] = 0b11011110;
   7A92 DD 6E F6      [19]  775 	ld	l,-10 (ix)
   7A95 DD 66 F7      [19]  776 	ld	h,-9 (ix)
   7A98 36 DE         [10]  777 	ld	(hl), #0xde
                            778 ;src/game/world.c:129: p_forest[3] = 0b01111110;
   7A9A DD 6E F0      [19]  779 	ld	l,-16 (ix)
   7A9D DD 66 F1      [19]  780 	ld	h,-15 (ix)
   7AA0 36 7E         [10]  781 	ld	(hl), #0x7e
                            782 ;src/game/world.c:130: p_forest[4] = 0b11111110; 
   7AA2 DD 6E F2      [19]  783 	ld	l,-14 (ix)
   7AA5 DD 66 F3      [19]  784 	ld	h,-13 (ix)
   7AA8 36 FE         [10]  785 	ld	(hl), #0xfe
                            786 ;src/game/world.c:131: p_forest[5] = 0b01111111;
   7AAA DD 6E FA      [19]  787 	ld	l,-6 (ix)
   7AAD DD 66 FB      [19]  788 	ld	h,-5 (ix)
   7AB0 36 7F         [10]  789 	ld	(hl), #0x7f
                            790 ;src/game/world.c:132: p_forest[6] = 0b11101111;
   7AB2 DD 6E FC      [19]  791 	ld	l,-4 (ix)
   7AB5 DD 66 FD      [19]  792 	ld	h,-3 (ix)
   7AB8 36 EF         [10]  793 	ld	(hl), #0xef
                            794 ;src/game/world.c:133: p_forest[7] = 0b11001111;
   7ABA DD 6E F4      [19]  795 	ld	l,-12 (ix)
   7ABD DD 66 F5      [19]  796 	ld	h,-11 (ix)
   7AC0 36 CF         [10]  797 	ld	(hl), #0xcf
                            798 ;src/game/world.c:134: break;
   7AC2 C3 8A 7B      [10]  799 	jp	00106$
                            800 ;src/game/world.c:135: case 1:
   7AC5                     801 00103$:
                            802 ;src/game/world.c:136: p_forest[0] = 0b00001100;
   7AC5 DD 6E F8      [19]  803 	ld	l,-8 (ix)
   7AC8 DD 66 F9      [19]  804 	ld	h,-7 (ix)
   7ACB 36 0C         [10]  805 	ld	(hl), #0x0c
                            806 ;src/game/world.c:137: p_forest[1] = 0b11111000;
   7ACD DD 6E FE      [19]  807 	ld	l,-2 (ix)
   7AD0 DD 66 FF      [19]  808 	ld	h,-1 (ix)
   7AD3 36 F8         [10]  809 	ld	(hl), #0xf8
                            810 ;src/game/world.c:138: p_forest[2] = 0b00111111;
   7AD5 DD 6E F6      [19]  811 	ld	l,-10 (ix)
   7AD8 DD 66 F7      [19]  812 	ld	h,-9 (ix)
   7ADB 36 3F         [10]  813 	ld	(hl), #0x3f
                            814 ;src/game/world.c:139: p_forest[3] = 0b01111110;
   7ADD DD 6E F0      [19]  815 	ld	l,-16 (ix)
   7AE0 DD 66 F1      [19]  816 	ld	h,-15 (ix)
   7AE3 36 7E         [10]  817 	ld	(hl), #0x7e
                            818 ;src/game/world.c:140: p_forest[4] = 0b11111110; 
   7AE5 DD 6E F2      [19]  819 	ld	l,-14 (ix)
   7AE8 DD 66 F3      [19]  820 	ld	h,-13 (ix)
   7AEB 36 FE         [10]  821 	ld	(hl), #0xfe
                            822 ;src/game/world.c:141: p_forest[5] = 0b01011111;
   7AED DD 6E FA      [19]  823 	ld	l,-6 (ix)
   7AF0 DD 66 FB      [19]  824 	ld	h,-5 (ix)
   7AF3 36 5F         [10]  825 	ld	(hl), #0x5f
                            826 ;src/game/world.c:142: p_forest[6] = 0b11001111;
   7AF5 DD 6E FC      [19]  827 	ld	l,-4 (ix)
   7AF8 DD 66 FD      [19]  828 	ld	h,-3 (ix)
   7AFB 36 CF         [10]  829 	ld	(hl), #0xcf
                            830 ;src/game/world.c:143: p_forest[7] = 0b10001100;
   7AFD DD 6E F4      [19]  831 	ld	l,-12 (ix)
   7B00 DD 66 F5      [19]  832 	ld	h,-11 (ix)
   7B03 36 8C         [10]  833 	ld	(hl), #0x8c
                            834 ;src/game/world.c:144: break;
   7B05 C3 8A 7B      [10]  835 	jp	00106$
                            836 ;src/game/world.c:145: case 2:
   7B08                     837 00104$:
                            838 ;src/game/world.c:146: p_forest[0] = 0b00110000;
   7B08 DD 6E F8      [19]  839 	ld	l,-8 (ix)
   7B0B DD 66 F9      [19]  840 	ld	h,-7 (ix)
   7B0E 36 30         [10]  841 	ld	(hl), #0x30
                            842 ;src/game/world.c:147: p_forest[1] = 0b11110100;
   7B10 DD 6E FE      [19]  843 	ld	l,-2 (ix)
   7B13 DD 66 FF      [19]  844 	ld	h,-1 (ix)
   7B16 36 F4         [10]  845 	ld	(hl), #0xf4
                            846 ;src/game/world.c:148: p_forest[2] = 0b11111111;
   7B18 DD 6E F6      [19]  847 	ld	l,-10 (ix)
   7B1B DD 66 F7      [19]  848 	ld	h,-9 (ix)
   7B1E 36 FF         [10]  849 	ld	(hl), #0xff
                            850 ;src/game/world.c:149: p_forest[3] = 0b11111111;
   7B20 DD 6E F0      [19]  851 	ld	l,-16 (ix)
   7B23 DD 66 F1      [19]  852 	ld	h,-15 (ix)
   7B26 36 FF         [10]  853 	ld	(hl), #0xff
                            854 ;src/game/world.c:150: p_forest[4] = 0b01111100;
   7B28 DD 6E F2      [19]  855 	ld	l,-14 (ix)
   7B2B DD 66 F3      [19]  856 	ld	h,-13 (ix)
   7B2E 36 7C         [10]  857 	ld	(hl), #0x7c
                            858 ;src/game/world.c:151: p_forest[5] = 0b01111110;
   7B30 DD 6E FA      [19]  859 	ld	l,-6 (ix)
   7B33 DD 66 FB      [19]  860 	ld	h,-5 (ix)
   7B36 36 7E         [10]  861 	ld	(hl), #0x7e
                            862 ;src/game/world.c:152: p_forest[6] = 0b00111110;
   7B38 DD 6E FC      [19]  863 	ld	l,-4 (ix)
   7B3B DD 66 FD      [19]  864 	ld	h,-3 (ix)
   7B3E 36 3E         [10]  865 	ld	(hl), #0x3e
                            866 ;src/game/world.c:153: p_forest[7] = 0b00011000;
   7B40 DD 6E F4      [19]  867 	ld	l,-12 (ix)
   7B43 DD 66 F5      [19]  868 	ld	h,-11 (ix)
   7B46 36 18         [10]  869 	ld	(hl), #0x18
                            870 ;src/game/world.c:154: break;
   7B48 18 40         [12]  871 	jr	00106$
                            872 ;src/game/world.c:155: case 3:
   7B4A                     873 00105$:
                            874 ;src/game/world.c:156: p_forest[0] = 0b11000000; 
   7B4A DD 6E F8      [19]  875 	ld	l,-8 (ix)
   7B4D DD 66 F9      [19]  876 	ld	h,-7 (ix)
   7B50 36 C0         [10]  877 	ld	(hl), #0xc0
                            878 ;src/game/world.c:157: p_forest[1] = 0b11100111;
   7B52 DD 6E FE      [19]  879 	ld	l,-2 (ix)
   7B55 DD 66 FF      [19]  880 	ld	h,-1 (ix)
   7B58 36 E7         [10]  881 	ld	(hl), #0xe7
                            882 ;src/game/world.c:158: p_forest[2] = 0b01111110;
   7B5A DD 6E F6      [19]  883 	ld	l,-10 (ix)
   7B5D DD 66 F7      [19]  884 	ld	h,-9 (ix)
   7B60 36 7E         [10]  885 	ld	(hl), #0x7e
                            886 ;src/game/world.c:159: p_forest[3] = 0b01111110;
   7B62 DD 6E F0      [19]  887 	ld	l,-16 (ix)
   7B65 DD 66 F1      [19]  888 	ld	h,-15 (ix)
   7B68 36 7E         [10]  889 	ld	(hl), #0x7e
                            890 ;src/game/world.c:160: p_forest[4] = 0b11111110;
   7B6A DD 6E F2      [19]  891 	ld	l,-14 (ix)
   7B6D DD 66 F3      [19]  892 	ld	h,-13 (ix)
   7B70 36 FE         [10]  893 	ld	(hl), #0xfe
                            894 ;src/game/world.c:161: p_forest[5] = 0b11111100;
   7B72 DD 6E FA      [19]  895 	ld	l,-6 (ix)
   7B75 DD 66 FB      [19]  896 	ld	h,-5 (ix)
   7B78 36 FC         [10]  897 	ld	(hl), #0xfc
                            898 ;src/game/world.c:162: p_forest[6] = 0b01111000;
   7B7A DD 6E FC      [19]  899 	ld	l,-4 (ix)
   7B7D DD 66 FD      [19]  900 	ld	h,-3 (ix)
   7B80 36 78         [10]  901 	ld	(hl), #0x78
                            902 ;src/game/world.c:163: p_forest[7] = 0b00110000;
   7B82 DD 6E F4      [19]  903 	ld	l,-12 (ix)
   7B85 DD 66 F5      [19]  904 	ld	h,-11 (ix)
   7B88 36 30         [10]  905 	ld	(hl), #0x30
                            906 ;src/game/world.c:165: }
   7B8A                     907 00106$:
                            908 ;src/game/world.c:166: patternTile(FOREST, iy, 8, 8, p_forest);
   7B8A DD 6E F8      [19]  909 	ld	l,-8 (ix)
   7B8D DD 66 F9      [19]  910 	ld	h,-7 (ix)
   7B90 C5            [11]  911 	push	bc
   7B91 E5            [11]  912 	push	hl
   7B92 21 08 08      [10]  913 	ld	hl, #0x0808
   7B95 E5            [11]  914 	push	hl
   7B96 D5            [11]  915 	push	de
   7B97 3E 08         [ 7]  916 	ld	a, #0x08
   7B99 F5            [11]  917 	push	af
   7B9A 33            [ 6]  918 	inc	sp
   7B9B CD B1 78      [17]  919 	call	_patternTile
   7B9E 21 07 00      [10]  920 	ld	hl, #7
   7BA1 39            [11]  921 	add	hl, sp
   7BA2 F9            [ 6]  922 	ld	sp, hl
   7BA3 C1            [10]  923 	pop	bc
                            924 ;src/game/world.c:119: for(ix=0; ix<NBFOREST; ix++)
   7BA4 03            [ 6]  925 	inc	bc
   7BA5 79            [ 4]  926 	ld	a, c
   7BA6 D6 32         [ 7]  927 	sub	a, #0x32
   7BA8 78            [ 4]  928 	ld	a, b
   7BA9 17            [ 4]  929 	rla
   7BAA 3F            [ 4]  930 	ccf
   7BAB 1F            [ 4]  931 	rra
   7BAC DE 80         [ 7]  932 	sbc	a, #0x80
   7BAE DA DE 79      [10]  933 	jp	C, 00121$
                            934 ;src/game/world.c:172: for(ix=0; ix<NBFARM; ix++)
   7BB1 01 3C 00      [10]  935 	ld	bc, #0x003c
   7BB4                     936 00125$:
                            937 ;src/game/world.c:174: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT)%(WIDTH*HEIGHT);
   7BB4 C5            [11]  938 	push	bc
   7BB5 CD 88 63      [17]  939 	call	_cpct_getRandom_mxor_u16
   7BB8 11 00 0F      [10]  940 	ld	de, #0x0f00
   7BBB D5            [11]  941 	push	de
   7BBC E5            [11]  942 	push	hl
   7BBD CD 67 61      [17]  943 	call	__moduint
   7BC0 F1            [10]  944 	pop	af
   7BC1 F1            [10]  945 	pop	af
   7BC2 11 00 0F      [10]  946 	ld	de, #0x0f00
   7BC5 D5            [11]  947 	push	de
   7BC6 E5            [11]  948 	push	hl
   7BC7 CD 67 61      [17]  949 	call	__moduint
   7BCA F1            [10]  950 	pop	af
   7BCB F1            [10]  951 	pop	af
   7BCC C1            [10]  952 	pop	bc
                            953 ;src/game/world.c:175: p_world[iy] = cpct_rand()%2+5;
   7BCD 11 6E 67      [10]  954 	ld	de, #_p_world
   7BD0 19            [11]  955 	add	hl, de
   7BD1 E5            [11]  956 	push	hl
   7BD2 C5            [11]  957 	push	bc
   7BD3 CD 84 64      [17]  958 	call	_cpct_getRandom_mxor_u8
   7BD6 7D            [ 4]  959 	ld	a, l
   7BD7 C1            [10]  960 	pop	bc
   7BD8 E1            [10]  961 	pop	hl
   7BD9 E6 01         [ 7]  962 	and	a, #0x01
   7BDB C6 05         [ 7]  963 	add	a, #0x05
   7BDD 77            [ 7]  964 	ld	(hl), a
   7BDE 0B            [ 6]  965 	dec	bc
                            966 ;src/game/world.c:172: for(ix=0; ix<NBFARM; ix++)
   7BDF 78            [ 4]  967 	ld	a, b
   7BE0 B1            [ 4]  968 	or	a,c
   7BE1 20 D1         [12]  969 	jr	NZ,00125$
                            970 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   7BE3 01 14 00      [10]  971 	ld	bc, #0x0014
   7BE6                     972 00128$:
                            973 ;src/game/world.c:182: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7BE6 C5            [11]  974 	push	bc
   7BE7 CD 88 63      [17]  975 	call	_cpct_getRandom_mxor_u16
   7BEA 11 00 0F      [10]  976 	ld	de, #0x0f00
   7BED D5            [11]  977 	push	de
   7BEE E5            [11]  978 	push	hl
   7BEF CD 67 61      [17]  979 	call	__moduint
   7BF2 F1            [10]  980 	pop	af
   7BF3 F1            [10]  981 	pop	af
   7BF4 C1            [10]  982 	pop	bc
                            983 ;src/game/world.c:183: p_world[iy] = cpct_rand()%3+2;
   7BF5 11 6E 67      [10]  984 	ld	de, #_p_world
   7BF8 19            [11]  985 	add	hl, de
   7BF9 E5            [11]  986 	push	hl
   7BFA C5            [11]  987 	push	bc
   7BFB CD 84 64      [17]  988 	call	_cpct_getRandom_mxor_u8
   7BFE 55            [ 4]  989 	ld	d, l
   7BFF 3E 03         [ 7]  990 	ld	a, #0x03
   7C01 F5            [11]  991 	push	af
   7C02 33            [ 6]  992 	inc	sp
   7C03 D5            [11]  993 	push	de
   7C04 33            [ 6]  994 	inc	sp
   7C05 CD 5B 61      [17]  995 	call	__moduchar
   7C08 F1            [10]  996 	pop	af
   7C09 5D            [ 4]  997 	ld	e, l
   7C0A C1            [10]  998 	pop	bc
   7C0B E1            [10]  999 	pop	hl
   7C0C 1C            [ 4] 1000 	inc	e
   7C0D 1C            [ 4] 1001 	inc	e
   7C0E 73            [ 7] 1002 	ld	(hl), e
   7C0F 0B            [ 6] 1003 	dec	bc
                           1004 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   7C10 78            [ 4] 1005 	ld	a, b
   7C11 B1            [ 4] 1006 	or	a,c
   7C12 20 D2         [12] 1007 	jr	NZ,00128$
                           1008 ;src/game/world.c:186: for(ix=0; ix<NBURBAN; ix++)
   7C14 21 00 00      [10] 1009 	ld	hl, #0x0000
   7C17 39            [11] 1010 	add	hl, sp
   7C18 4D            [ 4] 1011 	ld	c, l
   7C19 44            [ 4] 1012 	ld	b, h
   7C1A DD 36 EE 00   [19] 1013 	ld	-18 (ix), #0x00
   7C1E DD 36 EF 00   [19] 1014 	ld	-17 (ix), #0x00
   7C22                    1015 00129$:
                           1016 ;src/game/world.c:188: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7C22 C5            [11] 1017 	push	bc
   7C23 CD 88 63      [17] 1018 	call	_cpct_getRandom_mxor_u16
   7C26 11 00 0F      [10] 1019 	ld	de, #0x0f00
   7C29 D5            [11] 1020 	push	de
   7C2A E5            [11] 1021 	push	hl
   7C2B CD 67 61      [17] 1022 	call	__moduint
   7C2E F1            [10] 1023 	pop	af
   7C2F F1            [10] 1024 	pop	af
   7C30 C1            [10] 1025 	pop	bc
   7C31 DD 75 F4      [19] 1026 	ld	-12 (ix), l
   7C34 DD 74 F5      [19] 1027 	ld	-11 (ix), h
                           1028 ;src/game/world.c:190: switch(cpct_rand()%6)
   7C37 C5            [11] 1029 	push	bc
   7C38 CD 84 64      [17] 1030 	call	_cpct_getRandom_mxor_u8
   7C3B 55            [ 4] 1031 	ld	d, l
   7C3C 3E 06         [ 7] 1032 	ld	a, #0x06
   7C3E F5            [11] 1033 	push	af
   7C3F 33            [ 6] 1034 	inc	sp
   7C40 D5            [11] 1035 	push	de
   7C41 33            [ 6] 1036 	inc	sp
   7C42 CD 5B 61      [17] 1037 	call	__moduchar
   7C45 F1            [10] 1038 	pop	af
   7C46 5D            [ 4] 1039 	ld	e, l
   7C47 C1            [10] 1040 	pop	bc
   7C48 3E 05         [ 7] 1041 	ld	a, #0x05
   7C4A 93            [ 4] 1042 	sub	a, e
   7C4B 38 6A         [12] 1043 	jr	C,00116$
                           1044 ;src/game/world.c:194: p_cities[1] = 0b01000110; // 01100010;
   7C4D 21 01 00      [10] 1045 	ld	hl, #0x0001
   7C50 09            [11] 1046 	add	hl,bc
   7C51 DD 75 FC      [19] 1047 	ld	-4 (ix), l
   7C54 DD 74 FD      [19] 1048 	ld	-3 (ix), h
                           1049 ;src/game/world.c:190: switch(cpct_rand()%6)
   7C57 16 00         [ 7] 1050 	ld	d, #0x00
   7C59 21 5F 7C      [10] 1051 	ld	hl, #00211$
   7C5C 19            [11] 1052 	add	hl, de
   7C5D 19            [11] 1053 	add	hl, de
                           1054 ;src/game/world.c:192: case 0:
   7C5E E9            [ 4] 1055 	jp	(hl)
   7C5F                    1056 00211$:
   7C5F 18 0A         [12] 1057 	jr	00110$
   7C61 18 15         [12] 1058 	jr	00111$
   7C63 18 20         [12] 1059 	jr	00112$
   7C65 18 2B         [12] 1060 	jr	00113$
   7C67 18 36         [12] 1061 	jr	00114$
   7C69 18 41         [12] 1062 	jr	00115$
   7C6B                    1063 00110$:
                           1064 ;src/game/world.c:193: p_cities[0] = 0b01110010; // 01001110;
   7C6B 3E 72         [ 7] 1065 	ld	a, #0x72
   7C6D 02            [ 7] 1066 	ld	(bc), a
                           1067 ;src/game/world.c:194: p_cities[1] = 0b01000110; // 01100010;
   7C6E DD 6E FC      [19] 1068 	ld	l,-4 (ix)
   7C71 DD 66 FD      [19] 1069 	ld	h,-3 (ix)
   7C74 36 46         [10] 1070 	ld	(hl), #0x46
                           1071 ;src/game/world.c:195: break;
   7C76 18 3F         [12] 1072 	jr	00116$
                           1073 ;src/game/world.c:197: case 1:
   7C78                    1074 00111$:
                           1075 ;src/game/world.c:198: p_cities[0] = 0b01100000; // 00000110;
   7C78 3E 60         [ 7] 1076 	ld	a, #0x60
   7C7A 02            [ 7] 1077 	ld	(bc), a
                           1078 ;src/game/world.c:199: p_cities[1] = 0b00000110; // 01100000;
   7C7B DD 6E FC      [19] 1079 	ld	l,-4 (ix)
   7C7E DD 66 FD      [19] 1080 	ld	h,-3 (ix)
   7C81 36 06         [10] 1081 	ld	(hl), #0x06
                           1082 ;src/game/world.c:200: break;
   7C83 18 32         [12] 1083 	jr	00116$
                           1084 ;src/game/world.c:202: case 2:
   7C85                    1085 00112$:
                           1086 ;src/game/world.c:203: p_cities[0] = 0b00010000; // 00001000;
   7C85 3E 10         [ 7] 1087 	ld	a, #0x10
   7C87 02            [ 7] 1088 	ld	(bc), a
                           1089 ;src/game/world.c:204: p_cities[1] = 0b00000110; // 01100000;
   7C88 DD 6E FC      [19] 1090 	ld	l,-4 (ix)
   7C8B DD 66 FD      [19] 1091 	ld	h,-3 (ix)
   7C8E 36 06         [10] 1092 	ld	(hl), #0x06
                           1093 ;src/game/world.c:205: break;
   7C90 18 25         [12] 1094 	jr	00116$
                           1095 ;src/game/world.c:207: case 3:
   7C92                    1096 00113$:
                           1097 ;src/game/world.c:208: p_cities[0] = 0b11000000; // 00000011;
   7C92 3E C0         [ 7] 1098 	ld	a, #0xc0
   7C94 02            [ 7] 1099 	ld	(bc), a
                           1100 ;src/game/world.c:209: p_cities[1] = 0b00110001; // 10001100;
   7C95 DD 6E FC      [19] 1101 	ld	l,-4 (ix)
   7C98 DD 66 FD      [19] 1102 	ld	h,-3 (ix)
   7C9B 36 31         [10] 1103 	ld	(hl), #0x31
                           1104 ;src/game/world.c:210: break;
   7C9D 18 18         [12] 1105 	jr	00116$
                           1106 ;src/game/world.c:212: case 4:
   7C9F                    1107 00114$:
                           1108 ;src/game/world.c:213: p_cities[0] = 0b11000100; // 00100011;
   7C9F 3E C4         [ 7] 1109 	ld	a, #0xc4
   7CA1 02            [ 7] 1110 	ld	(bc), a
                           1111 ;src/game/world.c:214: p_cities[1] = 0b00001110; // 01110000;
   7CA2 DD 6E FC      [19] 1112 	ld	l,-4 (ix)
   7CA5 DD 66 FD      [19] 1113 	ld	h,-3 (ix)
   7CA8 36 0E         [10] 1114 	ld	(hl), #0x0e
                           1115 ;src/game/world.c:215: break;
   7CAA 18 0B         [12] 1116 	jr	00116$
                           1117 ;src/game/world.c:217: case 5:
   7CAC                    1118 00115$:
                           1119 ;src/game/world.c:218: p_cities[0] = 0b01000000; // 00000010;
   7CAC 3E 40         [ 7] 1120 	ld	a, #0x40
   7CAE 02            [ 7] 1121 	ld	(bc), a
                           1122 ;src/game/world.c:219: p_cities[1] = 0b01001110; // 01110010;
   7CAF DD 6E FC      [19] 1123 	ld	l,-4 (ix)
   7CB2 DD 66 FD      [19] 1124 	ld	h,-3 (ix)
   7CB5 36 4E         [10] 1125 	ld	(hl), #0x4e
                           1126 ;src/game/world.c:221: }
   7CB7                    1127 00116$:
                           1128 ;src/game/world.c:223: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   7CB7 59            [ 4] 1129 	ld	e, c
   7CB8 50            [ 4] 1130 	ld	d, b
   7CB9 C5            [11] 1131 	push	bc
   7CBA D5            [11] 1132 	push	de
   7CBB 21 04 04      [10] 1133 	ld	hl, #0x0404
   7CBE E5            [11] 1134 	push	hl
   7CBF DD 6E F4      [19] 1135 	ld	l,-12 (ix)
   7CC2 DD 66 F5      [19] 1136 	ld	h,-11 (ix)
   7CC5 E5            [11] 1137 	push	hl
   7CC6 3E 02         [ 7] 1138 	ld	a, #0x02
   7CC8 F5            [11] 1139 	push	af
   7CC9 33            [ 6] 1140 	inc	sp
   7CCA CD B1 78      [17] 1141 	call	_patternTile
   7CCD 21 07 00      [10] 1142 	ld	hl, #7
   7CD0 39            [11] 1143 	add	hl, sp
   7CD1 F9            [ 6] 1144 	ld	sp, hl
   7CD2 C1            [10] 1145 	pop	bc
                           1146 ;src/game/world.c:186: for(ix=0; ix<NBURBAN; ix++)
   7CD3 DD 34 EE      [23] 1147 	inc	-18 (ix)
   7CD6 20 03         [12] 1148 	jr	NZ,00212$
   7CD8 DD 34 EF      [23] 1149 	inc	-17 (ix)
   7CDB                    1150 00212$:
   7CDB DD 7E EE      [19] 1151 	ld	a, -18 (ix)
   7CDE D6 14         [ 7] 1152 	sub	a, #0x14
   7CE0 DD 7E EF      [19] 1153 	ld	a, -17 (ix)
   7CE3 17            [ 4] 1154 	rla
   7CE4 3F            [ 4] 1155 	ccf
   7CE5 1F            [ 4] 1156 	rra
   7CE6 DE 80         [ 7] 1157 	sbc	a, #0x80
   7CE8 DA 22 7C      [10] 1158 	jp	C, 00129$
                           1159 ;src/game/world.c:228: for(ix=0; ix<NBLIVESTOCK; ix++)
   7CEB 01 13 00      [10] 1160 	ld	bc, #0x0013
   7CEE                    1161 00133$:
                           1162 ;src/game/world.c:230: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7CEE C5            [11] 1163 	push	bc
   7CEF CD 88 63      [17] 1164 	call	_cpct_getRandom_mxor_u16
   7CF2 11 00 0F      [10] 1165 	ld	de, #0x0f00
   7CF5 D5            [11] 1166 	push	de
   7CF6 E5            [11] 1167 	push	hl
   7CF7 CD 67 61      [17] 1168 	call	__moduint
   7CFA F1            [10] 1169 	pop	af
   7CFB F1            [10] 1170 	pop	af
   7CFC C1            [10] 1171 	pop	bc
                           1172 ;src/game/world.c:231: p_world[iy] = LIVESTOCK;
   7CFD 11 6E 67      [10] 1173 	ld	de, #_p_world
   7D00 19            [11] 1174 	add	hl, de
   7D01 36 09         [10] 1175 	ld	(hl), #0x09
   7D03 0B            [ 6] 1176 	dec	bc
                           1177 ;src/game/world.c:228: for(ix=0; ix<NBLIVESTOCK; ix++)
   7D04 78            [ 4] 1178 	ld	a, b
   7D05 B1            [ 4] 1179 	or	a,c
   7D06 20 E6         [12] 1180 	jr	NZ,00133$
   7D08 DD F9         [10] 1181 	ld	sp, ix
   7D0A DD E1         [14] 1182 	pop	ix
   7D0C C9            [10] 1183 	ret
                           1184 ;src/game/world.c:235: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1185 ;	---------------------------------
                           1186 ; Function drawTile
                           1187 ; ---------------------------------
   7D0D                    1188 _drawTile::
   7D0D DD E5         [15] 1189 	push	ix
   7D0F DD 21 00 00   [14] 1190 	ld	ix,#0
   7D13 DD 39         [15] 1191 	add	ix,sp
                           1192 ;src/game/world.c:238: int adress = (y_+iy)*WIDTH+x_+ix;
   7D15 DD 4E 05      [19] 1193 	ld	c, 5 (ix)
   7D18 06 00         [ 7] 1194 	ld	b, #0x00
   7D1A DD 6E 07      [19] 1195 	ld	l, 7 (ix)
   7D1D 26 00         [ 7] 1196 	ld	h, #0x00
   7D1F 09            [11] 1197 	add	hl, bc
   7D20 4D            [ 4] 1198 	ld	c, l
   7D21 44            [ 4] 1199 	ld	b, h
   7D22 29            [11] 1200 	add	hl, hl
   7D23 29            [11] 1201 	add	hl, hl
   7D24 09            [11] 1202 	add	hl, bc
   7D25 29            [11] 1203 	add	hl, hl
   7D26 29            [11] 1204 	add	hl, hl
   7D27 29            [11] 1205 	add	hl, hl
   7D28 29            [11] 1206 	add	hl, hl
   7D29 DD 4E 04      [19] 1207 	ld	c, 4 (ix)
   7D2C 06 00         [ 7] 1208 	ld	b, #0x00
   7D2E 09            [11] 1209 	add	hl, bc
   7D2F DD 4E 06      [19] 1210 	ld	c, 6 (ix)
   7D32 06 00         [ 7] 1211 	ld	b, #0x00
   7D34 09            [11] 1212 	add	hl,bc
   7D35 5D            [ 4] 1213 	ld	e, l
   7D36 54            [ 4] 1214 	ld	d, h
                           1215 ;src/game/world.c:240: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   7D37 DD 7E 07      [19] 1216 	ld	a, 7 (ix)
   7D3A 07            [ 4] 1217 	rlca
   7D3B 07            [ 4] 1218 	rlca
   7D3C 07            [ 4] 1219 	rlca
   7D3D 07            [ 4] 1220 	rlca
   7D3E E6 F0         [ 7] 1221 	and	a, #0xf0
   7D40 67            [ 4] 1222 	ld	h, a
   7D41 DD 7E 06      [19] 1223 	ld	a, 6 (ix)
   7D44 87            [ 4] 1224 	add	a, a
   7D45 87            [ 4] 1225 	add	a, a
   7D46 47            [ 4] 1226 	ld	b, a
   7D47 D5            [11] 1227 	push	de
   7D48 E5            [11] 1228 	push	hl
   7D49 33            [ 6] 1229 	inc	sp
   7D4A C5            [11] 1230 	push	bc
   7D4B 33            [ 6] 1231 	inc	sp
   7D4C 21 00 C0      [10] 1232 	ld	hl, #0xc000
   7D4F E5            [11] 1233 	push	hl
   7D50 CD B6 65      [17] 1234 	call	_cpct_getScreenPtr
   7D53 4D            [ 4] 1235 	ld	c, l
   7D54 44            [ 4] 1236 	ld	b, h
   7D55 D1            [10] 1237 	pop	de
                           1238 ;src/game/world.c:242: switch(p_world[adress])
   7D56 21 6E 67      [10] 1239 	ld	hl, #_p_world+0
   7D59 19            [11] 1240 	add	hl, de
   7D5A 5E            [ 7] 1241 	ld	e, (hl)
   7D5B 3E 19         [ 7] 1242 	ld	a, #0x19
   7D5D 93            [ 4] 1243 	sub	a, e
   7D5E DA 33 7F      [10] 1244 	jp	C, 00128$
   7D61 16 00         [ 7] 1245 	ld	d, #0x00
   7D63 21 6A 7D      [10] 1246 	ld	hl, #00134$
   7D66 19            [11] 1247 	add	hl, de
   7D67 19            [11] 1248 	add	hl, de
   7D68 19            [11] 1249 	add	hl, de
   7D69 E9            [ 4] 1250 	jp	(hl)
   7D6A                    1251 00134$:
   7D6A C3 B8 7D      [10] 1252 	jp	00101$
   7D6D C3 C7 7D      [10] 1253 	jp	00102$
   7D70 C3 D6 7D      [10] 1254 	jp	00103$
   7D73 C3 E5 7D      [10] 1255 	jp	00104$
   7D76 C3 F4 7D      [10] 1256 	jp	00105$
   7D79 C3 03 7E      [10] 1257 	jp	00106$
   7D7C C3 12 7E      [10] 1258 	jp	00107$
   7D7F C3 21 7E      [10] 1259 	jp	00108$
   7D82 C3 30 7E      [10] 1260 	jp	00109$
   7D85 C3 3F 7E      [10] 1261 	jp	00110$
   7D88 C3 4E 7E      [10] 1262 	jp	00111$
   7D8B C3 5D 7E      [10] 1263 	jp	00112$
   7D8E C3 6C 7E      [10] 1264 	jp	00113$
   7D91 C3 7B 7E      [10] 1265 	jp	00114$
   7D94 C3 8A 7E      [10] 1266 	jp	00115$
   7D97 C3 99 7E      [10] 1267 	jp	00116$
   7D9A C3 A8 7E      [10] 1268 	jp	00117$
   7D9D C3 B7 7E      [10] 1269 	jp	00118$
   7DA0 C3 C5 7E      [10] 1270 	jp	00119$
   7DA3 C3 D3 7E      [10] 1271 	jp	00120$
   7DA6 C3 E1 7E      [10] 1272 	jp	00121$
   7DA9 C3 EF 7E      [10] 1273 	jp	00122$
   7DAC C3 FD 7E      [10] 1274 	jp	00123$
   7DAF C3 0B 7F      [10] 1275 	jp	00124$
   7DB2 C3 19 7F      [10] 1276 	jp	00125$
   7DB5 C3 27 7F      [10] 1277 	jp	00126$
                           1278 ;src/game/world.c:244: case GRASS1:
   7DB8                    1279 00101$:
                           1280 ;src/game/world.c:245: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   7DB8 21 04 10      [10] 1281 	ld	hl, #0x1004
   7DBB E5            [11] 1282 	push	hl
   7DBC C5            [11] 1283 	push	bc
   7DBD 21 D4 47      [10] 1284 	ld	hl, #_grass1
   7DC0 E5            [11] 1285 	push	hl
   7DC1 CD B6 60      [17] 1286 	call	_cpct_drawSprite
                           1287 ;src/game/world.c:246: break;
   7DC4 C3 33 7F      [10] 1288 	jp	00128$
                           1289 ;src/game/world.c:247: case GRASS2:
   7DC7                    1290 00102$:
                           1291 ;src/game/world.c:248: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   7DC7 21 04 10      [10] 1292 	ld	hl, #0x1004
   7DCA E5            [11] 1293 	push	hl
   7DCB C5            [11] 1294 	push	bc
   7DCC 21 14 48      [10] 1295 	ld	hl, #_grass2
   7DCF E5            [11] 1296 	push	hl
   7DD0 CD B6 60      [17] 1297 	call	_cpct_drawSprite
                           1298 ;src/game/world.c:249: break;
   7DD3 C3 33 7F      [10] 1299 	jp	00128$
                           1300 ;src/game/world.c:250: case DWELLINGS1:
   7DD6                    1301 00103$:
                           1302 ;src/game/world.c:251: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   7DD6 21 04 10      [10] 1303 	ld	hl, #0x1004
   7DD9 E5            [11] 1304 	push	hl
   7DDA C5            [11] 1305 	push	bc
   7DDB 21 94 48      [10] 1306 	ld	hl, #_dwellings1
   7DDE E5            [11] 1307 	push	hl
   7DDF CD B6 60      [17] 1308 	call	_cpct_drawSprite
                           1309 ;src/game/world.c:252: break;
   7DE2 C3 33 7F      [10] 1310 	jp	00128$
                           1311 ;src/game/world.c:253: case DWELLINGS2:
   7DE5                    1312 00104$:
                           1313 ;src/game/world.c:254: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   7DE5 21 04 10      [10] 1314 	ld	hl, #0x1004
   7DE8 E5            [11] 1315 	push	hl
   7DE9 C5            [11] 1316 	push	bc
   7DEA 21 D4 48      [10] 1317 	ld	hl, #_dwellings2
   7DED E5            [11] 1318 	push	hl
   7DEE CD B6 60      [17] 1319 	call	_cpct_drawSprite
                           1320 ;src/game/world.c:255: break;
   7DF1 C3 33 7F      [10] 1321 	jp	00128$
                           1322 ;src/game/world.c:256: case DWELLINGS3:
   7DF4                    1323 00105$:
                           1324 ;src/game/world.c:257: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   7DF4 21 04 10      [10] 1325 	ld	hl, #0x1004
   7DF7 E5            [11] 1326 	push	hl
   7DF8 C5            [11] 1327 	push	bc
   7DF9 21 14 49      [10] 1328 	ld	hl, #_dwellings3
   7DFC E5            [11] 1329 	push	hl
   7DFD CD B6 60      [17] 1330 	call	_cpct_drawSprite
                           1331 ;src/game/world.c:258: break;
   7E00 C3 33 7F      [10] 1332 	jp	00128$
                           1333 ;src/game/world.c:259: case FARM1:
   7E03                    1334 00106$:
                           1335 ;src/game/world.c:260: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   7E03 21 04 10      [10] 1336 	ld	hl, #0x1004
   7E06 E5            [11] 1337 	push	hl
   7E07 C5            [11] 1338 	push	bc
   7E08 21 94 49      [10] 1339 	ld	hl, #_farm1
   7E0B E5            [11] 1340 	push	hl
   7E0C CD B6 60      [17] 1341 	call	_cpct_drawSprite
                           1342 ;src/game/world.c:261: break;
   7E0F C3 33 7F      [10] 1343 	jp	00128$
                           1344 ;src/game/world.c:262: case FARM2:
   7E12                    1345 00107$:
                           1346 ;src/game/world.c:263: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   7E12 21 04 10      [10] 1347 	ld	hl, #0x1004
   7E15 E5            [11] 1348 	push	hl
   7E16 C5            [11] 1349 	push	bc
   7E17 21 D4 49      [10] 1350 	ld	hl, #_farm2
   7E1A E5            [11] 1351 	push	hl
   7E1B CD B6 60      [17] 1352 	call	_cpct_drawSprite
                           1353 ;src/game/world.c:264: break;
   7E1E C3 33 7F      [10] 1354 	jp	00128$
                           1355 ;src/game/world.c:265: case WATER:
   7E21                    1356 00108$:
                           1357 ;src/game/world.c:266: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   7E21 21 04 10      [10] 1358 	ld	hl, #0x1004
   7E24 E5            [11] 1359 	push	hl
   7E25 C5            [11] 1360 	push	bc
   7E26 21 54 49      [10] 1361 	ld	hl, #_water
   7E29 E5            [11] 1362 	push	hl
   7E2A CD B6 60      [17] 1363 	call	_cpct_drawSprite
                           1364 ;src/game/world.c:267: break;
   7E2D C3 33 7F      [10] 1365 	jp	00128$
                           1366 ;src/game/world.c:268: case FOREST:
   7E30                    1367 00109$:
                           1368 ;src/game/world.c:269: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   7E30 21 04 10      [10] 1369 	ld	hl, #0x1004
   7E33 E5            [11] 1370 	push	hl
   7E34 C5            [11] 1371 	push	bc
   7E35 21 54 48      [10] 1372 	ld	hl, #_forest
   7E38 E5            [11] 1373 	push	hl
   7E39 CD B6 60      [17] 1374 	call	_cpct_drawSprite
                           1375 ;src/game/world.c:270: break;
   7E3C C3 33 7F      [10] 1376 	jp	00128$
                           1377 ;src/game/world.c:271: case LIVESTOCK:
   7E3F                    1378 00110$:
                           1379 ;src/game/world.c:272: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   7E3F 21 04 10      [10] 1380 	ld	hl, #0x1004
   7E42 E5            [11] 1381 	push	hl
   7E43 C5            [11] 1382 	push	bc
   7E44 21 14 4A      [10] 1383 	ld	hl, #_livestock
   7E47 E5            [11] 1384 	push	hl
   7E48 CD B6 60      [17] 1385 	call	_cpct_drawSprite
                           1386 ;src/game/world.c:273: break;
   7E4B C3 33 7F      [10] 1387 	jp	00128$
                           1388 ;src/game/world.c:274: case SSNS:
   7E4E                    1389 00111$:
                           1390 ;src/game/world.c:275: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   7E4E 21 04 10      [10] 1391 	ld	hl, #0x1004
   7E51 E5            [11] 1392 	push	hl
   7E52 C5            [11] 1393 	push	bc
   7E53 21 54 4A      [10] 1394 	ld	hl, #_station_small_ns
   7E56 E5            [11] 1395 	push	hl
   7E57 CD B6 60      [17] 1396 	call	_cpct_drawSprite
                           1397 ;src/game/world.c:276: break;
   7E5A C3 33 7F      [10] 1398 	jp	00128$
                           1399 ;src/game/world.c:277: case SSEW:
   7E5D                    1400 00112$:
                           1401 ;src/game/world.c:278: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   7E5D 21 04 10      [10] 1402 	ld	hl, #0x1004
   7E60 E5            [11] 1403 	push	hl
   7E61 C5            [11] 1404 	push	bc
   7E62 21 94 4A      [10] 1405 	ld	hl, #_station_small_ew
   7E65 E5            [11] 1406 	push	hl
   7E66 CD B6 60      [17] 1407 	call	_cpct_drawSprite
                           1408 ;src/game/world.c:279: break;
   7E69 C3 33 7F      [10] 1409 	jp	00128$
                           1410 ;src/game/world.c:280: case SMNS:
   7E6C                    1411 00113$:
                           1412 ;src/game/world.c:281: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   7E6C 21 04 10      [10] 1413 	ld	hl, #0x1004
   7E6F E5            [11] 1414 	push	hl
   7E70 C5            [11] 1415 	push	bc
   7E71 21 D4 4A      [10] 1416 	ld	hl, #_station_medium_ns
   7E74 E5            [11] 1417 	push	hl
   7E75 CD B6 60      [17] 1418 	call	_cpct_drawSprite
                           1419 ;src/game/world.c:282: break;
   7E78 C3 33 7F      [10] 1420 	jp	00128$
                           1421 ;src/game/world.c:283: case SMEW:
   7E7B                    1422 00114$:
                           1423 ;src/game/world.c:284: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   7E7B 21 04 10      [10] 1424 	ld	hl, #0x1004
   7E7E E5            [11] 1425 	push	hl
   7E7F C5            [11] 1426 	push	bc
   7E80 21 14 4B      [10] 1427 	ld	hl, #_station_medium_ew
   7E83 E5            [11] 1428 	push	hl
   7E84 CD B6 60      [17] 1429 	call	_cpct_drawSprite
                           1430 ;src/game/world.c:285: break;
   7E87 C3 33 7F      [10] 1431 	jp	00128$
                           1432 ;src/game/world.c:286: case SLNS:
   7E8A                    1433 00115$:
                           1434 ;src/game/world.c:287: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   7E8A 21 04 10      [10] 1435 	ld	hl, #0x1004
   7E8D E5            [11] 1436 	push	hl
   7E8E C5            [11] 1437 	push	bc
   7E8F 21 54 4B      [10] 1438 	ld	hl, #_station_large_ns
   7E92 E5            [11] 1439 	push	hl
   7E93 CD B6 60      [17] 1440 	call	_cpct_drawSprite
                           1441 ;src/game/world.c:288: break;
   7E96 C3 33 7F      [10] 1442 	jp	00128$
                           1443 ;src/game/world.c:289: case SLEW:
   7E99                    1444 00116$:
                           1445 ;src/game/world.c:290: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   7E99 21 04 10      [10] 1446 	ld	hl, #0x1004
   7E9C E5            [11] 1447 	push	hl
   7E9D C5            [11] 1448 	push	bc
   7E9E 21 94 4B      [10] 1449 	ld	hl, #_station_large_ew
   7EA1 E5            [11] 1450 	push	hl
   7EA2 CD B6 60      [17] 1451 	call	_cpct_drawSprite
                           1452 ;src/game/world.c:291: break;
   7EA5 C3 33 7F      [10] 1453 	jp	00128$
                           1454 ;src/game/world.c:292: case REW:
   7EA8                    1455 00117$:
                           1456 ;src/game/world.c:293: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   7EA8 21 04 10      [10] 1457 	ld	hl, #0x1004
   7EAB E5            [11] 1458 	push	hl
   7EAC C5            [11] 1459 	push	bc
   7EAD 21 D4 4B      [10] 1460 	ld	hl, #_rail_ew
   7EB0 E5            [11] 1461 	push	hl
   7EB1 CD B6 60      [17] 1462 	call	_cpct_drawSprite
                           1463 ;src/game/world.c:294: break;
   7EB4 C3 33 7F      [10] 1464 	jp	00128$
                           1465 ;src/game/world.c:295: case RNS:
   7EB7                    1466 00118$:
                           1467 ;src/game/world.c:296: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   7EB7 21 04 10      [10] 1468 	ld	hl, #0x1004
   7EBA E5            [11] 1469 	push	hl
   7EBB C5            [11] 1470 	push	bc
   7EBC 21 14 4C      [10] 1471 	ld	hl, #_rail_ns
   7EBF E5            [11] 1472 	push	hl
   7EC0 CD B6 60      [17] 1473 	call	_cpct_drawSprite
                           1474 ;src/game/world.c:297: break;
   7EC3 18 6E         [12] 1475 	jr	00128$
                           1476 ;src/game/world.c:298: case REN:
   7EC5                    1477 00119$:
                           1478 ;src/game/world.c:299: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   7EC5 21 04 10      [10] 1479 	ld	hl, #0x1004
   7EC8 E5            [11] 1480 	push	hl
   7EC9 C5            [11] 1481 	push	bc
   7ECA 21 54 4C      [10] 1482 	ld	hl, #_rail_en
   7ECD E5            [11] 1483 	push	hl
   7ECE CD B6 60      [17] 1484 	call	_cpct_drawSprite
                           1485 ;src/game/world.c:300: break;
   7ED1 18 60         [12] 1486 	jr	00128$
                           1487 ;src/game/world.c:301: case RES:
   7ED3                    1488 00120$:
                           1489 ;src/game/world.c:302: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   7ED3 21 04 10      [10] 1490 	ld	hl, #0x1004
   7ED6 E5            [11] 1491 	push	hl
   7ED7 C5            [11] 1492 	push	bc
   7ED8 21 94 4C      [10] 1493 	ld	hl, #_rail_es
   7EDB E5            [11] 1494 	push	hl
   7EDC CD B6 60      [17] 1495 	call	_cpct_drawSprite
                           1496 ;src/game/world.c:303: break;
   7EDF 18 52         [12] 1497 	jr	00128$
                           1498 ;src/game/world.c:304: case RWN:
   7EE1                    1499 00121$:
                           1500 ;src/game/world.c:305: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   7EE1 21 04 10      [10] 1501 	ld	hl, #0x1004
   7EE4 E5            [11] 1502 	push	hl
   7EE5 C5            [11] 1503 	push	bc
   7EE6 21 D4 4C      [10] 1504 	ld	hl, #_rail_wn
   7EE9 E5            [11] 1505 	push	hl
   7EEA CD B6 60      [17] 1506 	call	_cpct_drawSprite
                           1507 ;src/game/world.c:306: break;
   7EED 18 44         [12] 1508 	jr	00128$
                           1509 ;src/game/world.c:307: case RWS:
   7EEF                    1510 00122$:
                           1511 ;src/game/world.c:308: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   7EEF 21 04 10      [10] 1512 	ld	hl, #0x1004
   7EF2 E5            [11] 1513 	push	hl
   7EF3 C5            [11] 1514 	push	bc
   7EF4 21 14 4D      [10] 1515 	ld	hl, #_rail_ws
   7EF7 E5            [11] 1516 	push	hl
   7EF8 CD B6 60      [17] 1517 	call	_cpct_drawSprite
                           1518 ;src/game/world.c:309: break;
   7EFB 18 36         [12] 1519 	jr	00128$
                           1520 ;src/game/world.c:310: case REWN:
   7EFD                    1521 00123$:
                           1522 ;src/game/world.c:311: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   7EFD 21 04 10      [10] 1523 	ld	hl, #0x1004
   7F00 E5            [11] 1524 	push	hl
   7F01 C5            [11] 1525 	push	bc
   7F02 21 54 4D      [10] 1526 	ld	hl, #_rail_ew_n
   7F05 E5            [11] 1527 	push	hl
   7F06 CD B6 60      [17] 1528 	call	_cpct_drawSprite
                           1529 ;src/game/world.c:312: break;
   7F09 18 28         [12] 1530 	jr	00128$
                           1531 ;src/game/world.c:313: case REWS:
   7F0B                    1532 00124$:
                           1533 ;src/game/world.c:314: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   7F0B 21 04 10      [10] 1534 	ld	hl, #0x1004
   7F0E E5            [11] 1535 	push	hl
   7F0F C5            [11] 1536 	push	bc
   7F10 21 94 4D      [10] 1537 	ld	hl, #_rail_ew_s
   7F13 E5            [11] 1538 	push	hl
   7F14 CD B6 60      [17] 1539 	call	_cpct_drawSprite
                           1540 ;src/game/world.c:315: break;
   7F17 18 1A         [12] 1541 	jr	00128$
                           1542 ;src/game/world.c:316: case RNSE:
   7F19                    1543 00125$:
                           1544 ;src/game/world.c:317: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   7F19 21 04 10      [10] 1545 	ld	hl, #0x1004
   7F1C E5            [11] 1546 	push	hl
   7F1D C5            [11] 1547 	push	bc
   7F1E 21 14 4E      [10] 1548 	ld	hl, #_rail_ns_e
   7F21 E5            [11] 1549 	push	hl
   7F22 CD B6 60      [17] 1550 	call	_cpct_drawSprite
                           1551 ;src/game/world.c:318: break;
   7F25 18 0C         [12] 1552 	jr	00128$
                           1553 ;src/game/world.c:319: case RNSW:
   7F27                    1554 00126$:
                           1555 ;src/game/world.c:320: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   7F27 21 04 10      [10] 1556 	ld	hl, #0x1004
   7F2A E5            [11] 1557 	push	hl
   7F2B C5            [11] 1558 	push	bc
   7F2C 21 D4 4D      [10] 1559 	ld	hl, #_rail_ns_w
   7F2F E5            [11] 1560 	push	hl
   7F30 CD B6 60      [17] 1561 	call	_cpct_drawSprite
                           1562 ;src/game/world.c:322: }
   7F33                    1563 00128$:
   7F33 DD E1         [14] 1564 	pop	ix
   7F35 C9            [10] 1565 	ret
                           1566 ;src/game/world.c:325: void drawScrolls(u8 x_, u8 y_)
                           1567 ;	---------------------------------
                           1568 ; Function drawScrolls
                           1569 ; ---------------------------------
   7F36                    1570 _drawScrolls::
   7F36 DD E5         [15] 1571 	push	ix
   7F38 DD 21 00 00   [14] 1572 	ld	ix,#0
   7F3C DD 39         [15] 1573 	add	ix,sp
                           1574 ;src/game/world.c:331: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   7F3E DD 4E 04      [19] 1575 	ld	c,4 (ix)
   7F41 06 00         [ 7] 1576 	ld	b,#0x00
   7F43 69            [ 4] 1577 	ld	l, c
   7F44 60            [ 4] 1578 	ld	h, b
   7F45 29            [11] 1579 	add	hl, hl
   7F46 29            [11] 1580 	add	hl, hl
   7F47 29            [11] 1581 	add	hl, hl
   7F48 09            [11] 1582 	add	hl, bc
   7F49 29            [11] 1583 	add	hl, hl
   7F4A 09            [11] 1584 	add	hl, bc
   7F4B 29            [11] 1585 	add	hl, hl
   7F4C 29            [11] 1586 	add	hl, hl
   7F4D 01 3C 00      [10] 1587 	ld	bc, #0x003c
   7F50 C5            [11] 1588 	push	bc
   7F51 E5            [11] 1589 	push	hl
   7F52 CD 07 66      [17] 1590 	call	__divsint
   7F55 F1            [10] 1591 	pop	af
   7F56 F1            [10] 1592 	pop	af
   7F57 55            [ 4] 1593 	ld	d, l
                           1594 ;src/game/world.c:332: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   7F58 DD 4E 05      [19] 1595 	ld	c,5 (ix)
   7F5B 06 00         [ 7] 1596 	ld	b,#0x00
   7F5D 69            [ 4] 1597 	ld	l, c
   7F5E 60            [ 4] 1598 	ld	h, b
   7F5F 29            [11] 1599 	add	hl, hl
   7F60 29            [11] 1600 	add	hl, hl
   7F61 09            [11] 1601 	add	hl, bc
   7F62 29            [11] 1602 	add	hl, hl
   7F63 09            [11] 1603 	add	hl, bc
   7F64 29            [11] 1604 	add	hl, hl
   7F65 29            [11] 1605 	add	hl, hl
   7F66 29            [11] 1606 	add	hl, hl
   7F67 29            [11] 1607 	add	hl, hl
   7F68 D5            [11] 1608 	push	de
   7F69 01 24 00      [10] 1609 	ld	bc, #0x0024
   7F6C C5            [11] 1610 	push	bc
   7F6D E5            [11] 1611 	push	hl
   7F6E CD 07 66      [17] 1612 	call	__divsint
   7F71 F1            [10] 1613 	pop	af
   7F72 F1            [10] 1614 	pop	af
   7F73 45            [ 4] 1615 	ld	b, l
   7F74 D1            [10] 1616 	pop	de
                           1617 ;src/game/world.c:334: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   7F75 C5            [11] 1618 	push	bc
   7F76 AF            [ 4] 1619 	xor	a, a
   7F77 F5            [11] 1620 	push	af
   7F78 33            [ 6] 1621 	inc	sp
   7F79 D5            [11] 1622 	push	de
   7F7A 33            [ 6] 1623 	inc	sp
   7F7B 21 00 C0      [10] 1624 	ld	hl, #0xc000
   7F7E E5            [11] 1625 	push	hl
   7F7F CD B6 65      [17] 1626 	call	_cpct_getScreenPtr
   7F82 C1            [10] 1627 	pop	bc
                           1628 ;src/game/world.c:335: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   7F83 E5            [11] 1629 	push	hl
   7F84 C5            [11] 1630 	push	bc
   7F85 11 00 00      [10] 1631 	ld	de, #0x0000
   7F88 D5            [11] 1632 	push	de
   7F89 11 00 00      [10] 1633 	ld	de, #0x0000
   7F8C D5            [11] 1634 	push	de
   7F8D CD 4C 64      [17] 1635 	call	_cpct_px2byteM1
   7F90 F1            [10] 1636 	pop	af
   7F91 F1            [10] 1637 	pop	af
   7F92 4D            [ 4] 1638 	ld	c, l
   7F93 F1            [10] 1639 	pop	af
   7F94 47            [ 4] 1640 	ld	b, a
   7F95 E1            [10] 1641 	pop	hl
   7F96 C5            [11] 1642 	push	bc
   7F97 11 04 04      [10] 1643 	ld	de, #0x0404
   7F9A D5            [11] 1644 	push	de
   7F9B 79            [ 4] 1645 	ld	a, c
   7F9C F5            [11] 1646 	push	af
   7F9D 33            [ 6] 1647 	inc	sp
   7F9E E5            [11] 1648 	push	hl
   7F9F CD A9 64      [17] 1649 	call	_cpct_drawSolidBox
   7FA2 F1            [10] 1650 	pop	af
   7FA3 F1            [10] 1651 	pop	af
   7FA4 33            [ 6] 1652 	inc	sp
   7FA5 33            [ 6] 1653 	inc	sp
   7FA6 AF            [ 4] 1654 	xor	a, a
   7FA7 F5            [11] 1655 	push	af
   7FA8 33            [ 6] 1656 	inc	sp
   7FA9 21 00 C0      [10] 1657 	ld	hl, #0xc000
   7FAC E5            [11] 1658 	push	hl
   7FAD CD B6 65      [17] 1659 	call	_cpct_getScreenPtr
                           1660 ;src/game/world.c:338: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   7FB0 E5            [11] 1661 	push	hl
   7FB1 21 00 00      [10] 1662 	ld	hl, #0x0000
   7FB4 E5            [11] 1663 	push	hl
   7FB5 2E 00         [ 7] 1664 	ld	l, #0x00
   7FB7 E5            [11] 1665 	push	hl
   7FB8 CD 4C 64      [17] 1666 	call	_cpct_px2byteM1
   7FBB F1            [10] 1667 	pop	af
   7FBC F1            [10] 1668 	pop	af
   7FBD 55            [ 4] 1669 	ld	d, l
   7FBE C1            [10] 1670 	pop	bc
   7FBF 21 01 10      [10] 1671 	ld	hl, #0x1001
   7FC2 E5            [11] 1672 	push	hl
   7FC3 D5            [11] 1673 	push	de
   7FC4 33            [ 6] 1674 	inc	sp
   7FC5 C5            [11] 1675 	push	bc
   7FC6 CD A9 64      [17] 1676 	call	_cpct_drawSolidBox
   7FC9 F1            [10] 1677 	pop	af
   7FCA F1            [10] 1678 	pop	af
   7FCB 33            [ 6] 1679 	inc	sp
   7FCC DD E1         [14] 1680 	pop	ix
   7FCE C9            [10] 1681 	ret
                           1682 ;src/game/world.c:341: void drawWorld(u8 x_, u8 y_)
                           1683 ;	---------------------------------
                           1684 ; Function drawWorld
                           1685 ; ---------------------------------
   7FCF                    1686 _drawWorld::
                           1687 ;src/game/world.c:346: for(iy=0; iy<NBTILE_H;iy++)
   7FCF 0E 00         [ 7] 1688 	ld	c, #0x00
                           1689 ;src/game/world.c:348: for(ix=0; ix<NBTILE_W;ix++)
   7FD1                    1690 00109$:
   7FD1 06 00         [ 7] 1691 	ld	b, #0x00
   7FD3                    1692 00103$:
                           1693 ;src/game/world.c:350: drawTile(x_, y_, ix, iy);
   7FD3 C5            [11] 1694 	push	bc
   7FD4 79            [ 4] 1695 	ld	a, c
   7FD5 F5            [11] 1696 	push	af
   7FD6 33            [ 6] 1697 	inc	sp
   7FD7 C5            [11] 1698 	push	bc
   7FD8 33            [ 6] 1699 	inc	sp
   7FD9 21 07 00      [10] 1700 	ld	hl, #7+0
   7FDC 39            [11] 1701 	add	hl, sp
   7FDD 7E            [ 7] 1702 	ld	a, (hl)
   7FDE F5            [11] 1703 	push	af
   7FDF 33            [ 6] 1704 	inc	sp
   7FE0 21 07 00      [10] 1705 	ld	hl, #7+0
   7FE3 39            [11] 1706 	add	hl, sp
   7FE4 7E            [ 7] 1707 	ld	a, (hl)
   7FE5 F5            [11] 1708 	push	af
   7FE6 33            [ 6] 1709 	inc	sp
   7FE7 CD 0D 7D      [17] 1710 	call	_drawTile
   7FEA F1            [10] 1711 	pop	af
   7FEB F1            [10] 1712 	pop	af
   7FEC C1            [10] 1713 	pop	bc
                           1714 ;src/game/world.c:348: for(ix=0; ix<NBTILE_W;ix++)
   7FED 04            [ 4] 1715 	inc	b
   7FEE 78            [ 4] 1716 	ld	a, b
   7FEF D6 14         [ 7] 1717 	sub	a, #0x14
   7FF1 38 E0         [12] 1718 	jr	C,00103$
                           1719 ;src/game/world.c:346: for(iy=0; iy<NBTILE_H;iy++)
   7FF3 0C            [ 4] 1720 	inc	c
   7FF4 79            [ 4] 1721 	ld	a, c
   7FF5 D6 0C         [ 7] 1722 	sub	a, #0x0c
   7FF7 38 D8         [12] 1723 	jr	C,00109$
                           1724 ;src/game/world.c:354: drawScrolls(x_, y_);
   7FF9 21 03 00      [10] 1725 	ld	hl, #3+0
   7FFC 39            [11] 1726 	add	hl, sp
   7FFD 7E            [ 7] 1727 	ld	a, (hl)
   7FFE F5            [11] 1728 	push	af
   7FFF 33            [ 6] 1729 	inc	sp
   8000 21 03 00      [10] 1730 	ld	hl, #3+0
   8003 39            [11] 1731 	add	hl, sp
   8004 7E            [ 7] 1732 	ld	a, (hl)
   8005 F5            [11] 1733 	push	af
   8006 33            [ 6] 1734 	inc	sp
   8007 CD 36 7F      [17] 1735 	call	_drawScrolls
   800A F1            [10] 1736 	pop	af
   800B C9            [10] 1737 	ret
                           1738 ;src/game/world.c:361: void setTrainHeading(u8 i)
                           1739 ;	---------------------------------
                           1740 ; Function setTrainHeading
                           1741 ; ---------------------------------
   800C                    1742 _setTrainHeading::
   800C DD E5         [15] 1743 	push	ix
   800E DD 21 00 00   [14] 1744 	ld	ix,#0
   8012 DD 39         [15] 1745 	add	ix,sp
                           1746 ;src/game/world.c:365: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   8014 DD 4E 04      [19] 1747 	ld	c,4 (ix)
   8017 06 00         [ 7] 1748 	ld	b,#0x00
   8019 69            [ 4] 1749 	ld	l, c
   801A 60            [ 4] 1750 	ld	h, b
   801B 29            [11] 1751 	add	hl, hl
   801C 29            [11] 1752 	add	hl, hl
   801D 29            [11] 1753 	add	hl, hl
   801E 09            [11] 1754 	add	hl, bc
   801F 4D            [ 4] 1755 	ld	c, l
   8020 44            [ 4] 1756 	ld	b, h
   8021 FD 21 6E 76   [14] 1757 	ld	iy, #_trainList
   8025 FD 7E 00      [19] 1758 	ld	a, 0 (iy)
   8028 81            [ 4] 1759 	add	a, c
   8029 5F            [ 4] 1760 	ld	e, a
   802A FD 7E 01      [19] 1761 	ld	a, 1 (iy)
   802D 88            [ 4] 1762 	adc	a, b
   802E 57            [ 4] 1763 	ld	d, a
   802F 6B            [ 4] 1764 	ld	l, e
   8030 62            [ 4] 1765 	ld	h, d
   8031 01 05 00      [10] 1766 	ld	bc, #0x0005
   8034 09            [11] 1767 	add	hl, bc
   8035 4E            [ 7] 1768 	ld	c, (hl)
   8036 06 00         [ 7] 1769 	ld	b,#0x00
   8038 69            [ 4] 1770 	ld	l, c
   8039 60            [ 4] 1771 	ld	h, b
   803A 29            [11] 1772 	add	hl, hl
   803B 29            [11] 1773 	add	hl, hl
   803C 09            [11] 1774 	add	hl, bc
   803D 29            [11] 1775 	add	hl, hl
   803E 29            [11] 1776 	add	hl, hl
   803F 29            [11] 1777 	add	hl, hl
   8040 29            [11] 1778 	add	hl, hl
   8041 4D            [ 4] 1779 	ld	c, l
   8042 44            [ 4] 1780 	ld	b, h
   8043 6B            [ 4] 1781 	ld	l, e
   8044 62            [ 4] 1782 	ld	h, d
   8045 23            [ 6] 1783 	inc	hl
   8046 23            [ 6] 1784 	inc	hl
   8047 23            [ 6] 1785 	inc	hl
   8048 23            [ 6] 1786 	inc	hl
   8049 6E            [ 7] 1787 	ld	l, (hl)
   804A 26 00         [ 7] 1788 	ld	h, #0x00
   804C 09            [11] 1789 	add	hl, bc
   804D 01 6E 67      [10] 1790 	ld	bc, #_p_world
   8050 09            [11] 1791 	add	hl, bc
   8051 4E            [ 7] 1792 	ld	c, (hl)
                           1793 ;src/game/world.c:368: if(trainList[i].heading==1) trainList[i].heading=2;
   8052 21 06 00      [10] 1794 	ld	hl, #0x0006
   8055 19            [11] 1795 	add	hl, de
                           1796 ;src/game/world.c:365: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   8056 79            [ 4] 1797 	ld	a,c
   8057 FE 12         [ 7] 1798 	cp	a,#0x12
   8059 28 0E         [12] 1799 	jr	Z,00101$
   805B FE 13         [ 7] 1800 	cp	a,#0x13
   805D 28 1A         [12] 1801 	jr	Z,00107$
   805F FE 14         [ 7] 1802 	cp	a,#0x14
   8061 28 26         [12] 1803 	jr	Z,00113$
   8063 D6 15         [ 7] 1804 	sub	a, #0x15
   8065 28 32         [12] 1805 	jr	Z,00119$
   8067 18 3E         [12] 1806 	jr	00126$
                           1807 ;src/game/world.c:367: case REN:
   8069                    1808 00101$:
                           1809 ;src/game/world.c:368: if(trainList[i].heading==1) trainList[i].heading=2;
   8069 7E            [ 7] 1810 	ld	a, (hl)
   806A FE 01         [ 7] 1811 	cp	a, #0x01
   806C 20 04         [12] 1812 	jr	NZ,00105$
   806E 36 02         [10] 1813 	ld	(hl), #0x02
   8070 18 35         [12] 1814 	jr	00126$
   8072                    1815 00105$:
                           1816 ;src/game/world.c:369: else if(trainList[i].heading==3) trainList[i].heading=0;
   8072 D6 03         [ 7] 1817 	sub	a,#0x03
   8074 20 31         [12] 1818 	jr	NZ,00126$
   8076 77            [ 7] 1819 	ld	(hl),a
                           1820 ;src/game/world.c:370: break;
   8077 18 2E         [12] 1821 	jr	00126$
                           1822 ;src/game/world.c:372: case RES:
   8079                    1823 00107$:
                           1824 ;src/game/world.c:373: if(trainList[i].heading==1) trainList[i].heading=3;
   8079 7E            [ 7] 1825 	ld	a, (hl)
   807A FE 01         [ 7] 1826 	cp	a, #0x01
   807C 20 04         [12] 1827 	jr	NZ,00111$
   807E 36 03         [10] 1828 	ld	(hl), #0x03
   8080 18 25         [12] 1829 	jr	00126$
   8082                    1830 00111$:
                           1831 ;src/game/world.c:374: else if(trainList[i].heading==2) trainList[i].heading=0;
   8082 D6 02         [ 7] 1832 	sub	a,#0x02
   8084 20 21         [12] 1833 	jr	NZ,00126$
   8086 77            [ 7] 1834 	ld	(hl),a
                           1835 ;src/game/world.c:375: break;
   8087 18 1E         [12] 1836 	jr	00126$
                           1837 ;src/game/world.c:377: case RWN:
   8089                    1838 00113$:
                           1839 ;src/game/world.c:378: if(trainList[i].heading==0) trainList[i].heading=2;   
   8089 7E            [ 7] 1840 	ld	a, (hl)
   808A B7            [ 4] 1841 	or	a, a
   808B 20 04         [12] 1842 	jr	NZ,00117$
   808D 36 02         [10] 1843 	ld	(hl), #0x02
   808F 18 16         [12] 1844 	jr	00126$
   8091                    1845 00117$:
                           1846 ;src/game/world.c:379: else if(trainList[i].heading==3) trainList[i].heading=1;
   8091 D6 03         [ 7] 1847 	sub	a, #0x03
   8093 20 12         [12] 1848 	jr	NZ,00126$
   8095 36 01         [10] 1849 	ld	(hl), #0x01
                           1850 ;src/game/world.c:380: break;
   8097 18 0E         [12] 1851 	jr	00126$
                           1852 ;src/game/world.c:382: case RWS:
   8099                    1853 00119$:
                           1854 ;src/game/world.c:383: if(trainList[i].heading==0) trainList[i].heading=3;
   8099 7E            [ 7] 1855 	ld	a, (hl)
   809A B7            [ 4] 1856 	or	a, a
   809B 20 04         [12] 1857 	jr	NZ,00123$
   809D 36 03         [10] 1858 	ld	(hl), #0x03
   809F 18 06         [12] 1859 	jr	00126$
   80A1                    1860 00123$:
                           1861 ;src/game/world.c:384: else if(trainList[i].heading==2) trainList[i].heading=1;
   80A1 D6 02         [ 7] 1862 	sub	a, #0x02
   80A3 20 02         [12] 1863 	jr	NZ,00126$
   80A5 36 01         [10] 1864 	ld	(hl), #0x01
                           1865 ;src/game/world.c:386: }
   80A7                    1866 00126$:
   80A7 DD E1         [14] 1867 	pop	ix
   80A9 C9            [10] 1868 	ret
                           1869 ;src/game/world.c:389: void setPixel(int nX, unsigned char nY, unsigned char nColor)
                           1870 ;	---------------------------------
                           1871 ; Function setPixel
                           1872 ; ---------------------------------
   80AA                    1873 _setPixel::
   80AA DD E5         [15] 1874 	push	ix
   80AC DD 21 00 00   [14] 1875 	ld	ix,#0
   80B0 DD 39         [15] 1876 	add	ix,sp
   80B2 F5            [11] 1877 	push	af
                           1878 ;src/game/world.c:394: int nPixel = nX % 4;
   80B3 21 04 00      [10] 1879 	ld	hl, #0x0004
   80B6 E5            [11] 1880 	push	hl
   80B7 DD 6E 04      [19] 1881 	ld	l,4 (ix)
   80BA DD 66 05      [19] 1882 	ld	h,5 (ix)
   80BD E5            [11] 1883 	push	hl
   80BE CD 6E 65      [17] 1884 	call	__modsint
   80C1 F1            [10] 1885 	pop	af
   80C2 F1            [10] 1886 	pop	af
   80C3 EB            [ 4] 1887 	ex	de,hl
                           1888 ;src/game/world.c:395: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   80C4 DD 7E 06      [19] 1889 	ld	a, 6 (ix)
   80C7 0F            [ 4] 1890 	rrca
   80C8 0F            [ 4] 1891 	rrca
   80C9 0F            [ 4] 1892 	rrca
   80CA E6 1F         [ 7] 1893 	and	a, #0x1f
   80CC 4F            [ 4] 1894 	ld	c,a
   80CD 06 00         [ 7] 1895 	ld	b,#0x00
   80CF 69            [ 4] 1896 	ld	l, c
   80D0 60            [ 4] 1897 	ld	h, b
   80D1 29            [11] 1898 	add	hl, hl
   80D2 29            [11] 1899 	add	hl, hl
   80D3 09            [11] 1900 	add	hl, bc
   80D4 29            [11] 1901 	add	hl, hl
   80D5 29            [11] 1902 	add	hl, hl
   80D6 29            [11] 1903 	add	hl, hl
   80D7 29            [11] 1904 	add	hl, hl
   80D8 01 00 C0      [10] 1905 	ld	bc, #0xc000
   80DB 09            [11] 1906 	add	hl, bc
   80DC DD 7E 06      [19] 1907 	ld	a, 6 (ix)
   80DF E6 07         [ 7] 1908 	and	a, #0x07
   80E1 07            [ 4] 1909 	rlca
   80E2 07            [ 4] 1910 	rlca
   80E3 07            [ 4] 1911 	rlca
   80E4 E6 F8         [ 7] 1912 	and	a, #0xf8
   80E6 47            [ 4] 1913 	ld	b, a
   80E7 0E 00         [ 7] 1914 	ld	c, #0x00
   80E9 09            [11] 1915 	add	hl, bc
   80EA DD 4E 04      [19] 1916 	ld	c,4 (ix)
   80ED DD 46 05      [19] 1917 	ld	b,5 (ix)
   80F0 CB 78         [ 8] 1918 	bit	7, b
   80F2 28 03         [12] 1919 	jr	Z,00128$
   80F4 03            [ 6] 1920 	inc	bc
   80F5 03            [ 6] 1921 	inc	bc
   80F6 03            [ 6] 1922 	inc	bc
   80F7                    1923 00128$:
   80F7 CB 28         [ 8] 1924 	sra	b
   80F9 CB 19         [ 8] 1925 	rr	c
   80FB CB 28         [ 8] 1926 	sra	b
   80FD CB 19         [ 8] 1927 	rr	c
   80FF 09            [11] 1928 	add	hl, bc
                           1929 ;src/game/world.c:399: *pAddress &= 119;
   8100 4E            [ 7] 1930 	ld	c, (hl)
                           1931 ;src/game/world.c:401: if(nColor & 1)
   8101 DD 7E 07      [19] 1932 	ld	a, 7 (ix)
   8104 E6 01         [ 7] 1933 	and	a, #0x01
   8106 DD 77 FE      [19] 1934 	ld	-2 (ix), a
                           1935 ;src/game/world.c:403: if(nColor & 2)
   8109 DD 7E 07      [19] 1936 	ld	a, 7 (ix)
   810C E6 02         [ 7] 1937 	and	a, #0x02
   810E DD 77 FF      [19] 1938 	ld	-1 (ix), a
                           1939 ;src/game/world.c:397: if(nPixel == 0)
   8111 7A            [ 4] 1940 	ld	a, d
   8112 B3            [ 4] 1941 	or	a,e
   8113 20 18         [12] 1942 	jr	NZ,00124$
                           1943 ;src/game/world.c:399: *pAddress &= 119;
   8115 79            [ 4] 1944 	ld	a, c
   8116 E6 77         [ 7] 1945 	and	a, #0x77
   8118 77            [ 7] 1946 	ld	(hl), a
                           1947 ;src/game/world.c:401: if(nColor & 1)
   8119 DD 7E FE      [19] 1948 	ld	a, -2 (ix)
   811C B7            [ 4] 1949 	or	a, a
   811D 28 03         [12] 1950 	jr	Z,00102$
                           1951 ;src/game/world.c:402: *pAddress |= 128;
   811F CB FE         [15] 1952 	set	7, (hl)
   8121 7E            [ 7] 1953 	ld	a, (hl)
   8122                    1954 00102$:
                           1955 ;src/game/world.c:403: if(nColor & 2)
   8122 DD 7E FF      [19] 1956 	ld	a, -1 (ix)
   8125 B7            [ 4] 1957 	or	a, a
   8126 28 56         [12] 1958 	jr	Z,00126$
                           1959 ;src/game/world.c:404: *pAddress |= 8;
   8128 CB DE         [15] 1960 	set	3, (hl)
   812A 7E            [ 7] 1961 	ld	a, (hl)
   812B 18 51         [12] 1962 	jr	00126$
   812D                    1963 00124$:
                           1964 ;src/game/world.c:406: else if(nPixel == 1)
   812D 7B            [ 4] 1965 	ld	a, e
   812E 3D            [ 4] 1966 	dec	a
   812F B2            [ 4] 1967 	or	a, d
   8130 20 18         [12] 1968 	jr	NZ,00121$
                           1969 ;src/game/world.c:408: *pAddress &= 187;
   8132 79            [ 4] 1970 	ld	a, c
   8133 E6 BB         [ 7] 1971 	and	a, #0xbb
   8135 77            [ 7] 1972 	ld	(hl), a
                           1973 ;src/game/world.c:410: if(nColor & 1)
   8136 DD 7E FE      [19] 1974 	ld	a, -2 (ix)
   8139 B7            [ 4] 1975 	or	a, a
   813A 28 03         [12] 1976 	jr	Z,00106$
                           1977 ;src/game/world.c:411: *pAddress |= 64;
   813C CB F6         [15] 1978 	set	6, (hl)
   813E 7E            [ 7] 1979 	ld	a, (hl)
   813F                    1980 00106$:
                           1981 ;src/game/world.c:412: if(nColor & 2)
   813F DD 7E FF      [19] 1982 	ld	a, -1 (ix)
   8142 B7            [ 4] 1983 	or	a, a
   8143 28 39         [12] 1984 	jr	Z,00126$
                           1985 ;src/game/world.c:413: *pAddress |= 4;
   8145 CB D6         [15] 1986 	set	2, (hl)
   8147 7E            [ 7] 1987 	ld	a, (hl)
   8148 18 34         [12] 1988 	jr	00126$
   814A                    1989 00121$:
                           1990 ;src/game/world.c:415: else if(nPixel == 2)
   814A 7B            [ 4] 1991 	ld	a, e
   814B D6 02         [ 7] 1992 	sub	a, #0x02
   814D B2            [ 4] 1993 	or	a, d
   814E 20 18         [12] 1994 	jr	NZ,00118$
                           1995 ;src/game/world.c:417: *pAddress &= 221;
   8150 79            [ 4] 1996 	ld	a, c
   8151 E6 DD         [ 7] 1997 	and	a, #0xdd
   8153 77            [ 7] 1998 	ld	(hl), a
                           1999 ;src/game/world.c:419: if(nColor & 1)
   8154 DD 7E FE      [19] 2000 	ld	a, -2 (ix)
   8157 B7            [ 4] 2001 	or	a, a
   8158 28 03         [12] 2002 	jr	Z,00110$
                           2003 ;src/game/world.c:420: *pAddress |= 32;
   815A CB EE         [15] 2004 	set	5, (hl)
   815C 7E            [ 7] 2005 	ld	a, (hl)
   815D                    2006 00110$:
                           2007 ;src/game/world.c:421: if(nColor & 2)
   815D DD 7E FF      [19] 2008 	ld	a, -1 (ix)
   8160 B7            [ 4] 2009 	or	a, a
   8161 28 1B         [12] 2010 	jr	Z,00126$
                           2011 ;src/game/world.c:422: *pAddress |= 2;
   8163 CB CE         [15] 2012 	set	1, (hl)
   8165 7E            [ 7] 2013 	ld	a, (hl)
   8166 18 16         [12] 2014 	jr	00126$
   8168                    2015 00118$:
                           2016 ;src/game/world.c:426: *pAddress &= 238;
   8168 79            [ 4] 2017 	ld	a, c
   8169 E6 EE         [ 7] 2018 	and	a, #0xee
   816B 77            [ 7] 2019 	ld	(hl), a
                           2020 ;src/game/world.c:428: if(nColor & 1)
   816C DD 7E FE      [19] 2021 	ld	a, -2 (ix)
   816F B7            [ 4] 2022 	or	a, a
   8170 28 03         [12] 2023 	jr	Z,00114$
                           2024 ;src/game/world.c:429: *pAddress |= 16;
   8172 CB E6         [15] 2025 	set	4, (hl)
   8174 7E            [ 7] 2026 	ld	a, (hl)
   8175                    2027 00114$:
                           2028 ;src/game/world.c:430: if(nColor & 2)
   8175 DD 7E FF      [19] 2029 	ld	a, -1 (ix)
   8178 B7            [ 4] 2030 	or	a, a
   8179 28 03         [12] 2031 	jr	Z,00126$
                           2032 ;src/game/world.c:431: *pAddress |= 1;
   817B CB C6         [15] 2033 	set	0, (hl)
   817D 7E            [ 7] 2034 	ld	a, (hl)
   817E                    2035 00126$:
   817E DD F9         [10] 2036 	ld	sp, ix
   8180 DD E1         [14] 2037 	pop	ix
   8182 C9            [10] 2038 	ret
                           2039 ;src/game/world.c:435: u8 isPixelBlack(int nX, unsigned char nY)
                           2040 ;	---------------------------------
                           2041 ; Function isPixelBlack
                           2042 ; ---------------------------------
   8183                    2043 _isPixelBlack::
   8183 DD E5         [15] 2044 	push	ix
   8185 DD 21 00 00   [14] 2045 	ld	ix,#0
   8189 DD 39         [15] 2046 	add	ix,sp
                           2047 ;src/game/world.c:438: int nPixel = nX % 4;
   818B 21 04 00      [10] 2048 	ld	hl, #0x0004
   818E E5            [11] 2049 	push	hl
   818F DD 6E 04      [19] 2050 	ld	l,4 (ix)
   8192 DD 66 05      [19] 2051 	ld	h,5 (ix)
   8195 E5            [11] 2052 	push	hl
   8196 CD 6E 65      [17] 2053 	call	__modsint
   8199 F1            [10] 2054 	pop	af
   819A F1            [10] 2055 	pop	af
   819B 4D            [ 4] 2056 	ld	c, l
   819C 44            [ 4] 2057 	ld	b, h
                           2058 ;src/game/world.c:441: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   819D DD 7E 06      [19] 2059 	ld	a, 6 (ix)
   81A0 0F            [ 4] 2060 	rrca
   81A1 0F            [ 4] 2061 	rrca
   81A2 0F            [ 4] 2062 	rrca
   81A3 E6 1F         [ 7] 2063 	and	a, #0x1f
   81A5 5F            [ 4] 2064 	ld	e,a
   81A6 16 00         [ 7] 2065 	ld	d,#0x00
   81A8 6B            [ 4] 2066 	ld	l, e
   81A9 62            [ 4] 2067 	ld	h, d
   81AA 29            [11] 2068 	add	hl, hl
   81AB 29            [11] 2069 	add	hl, hl
   81AC 19            [11] 2070 	add	hl, de
   81AD 29            [11] 2071 	add	hl, hl
   81AE 29            [11] 2072 	add	hl, hl
   81AF 29            [11] 2073 	add	hl, hl
   81B0 29            [11] 2074 	add	hl, hl
   81B1 11 00 C0      [10] 2075 	ld	de, #0xc000
   81B4 19            [11] 2076 	add	hl, de
   81B5 DD 7E 06      [19] 2077 	ld	a, 6 (ix)
   81B8 E6 07         [ 7] 2078 	and	a, #0x07
   81BA 07            [ 4] 2079 	rlca
   81BB 07            [ 4] 2080 	rlca
   81BC 07            [ 4] 2081 	rlca
   81BD E6 F8         [ 7] 2082 	and	a, #0xf8
   81BF 57            [ 4] 2083 	ld	d, a
   81C0 1E 00         [ 7] 2084 	ld	e, #0x00
   81C2 19            [11] 2085 	add	hl, de
   81C3 DD 5E 04      [19] 2086 	ld	e,4 (ix)
   81C6 DD 56 05      [19] 2087 	ld	d,5 (ix)
   81C9 CB 7A         [ 8] 2088 	bit	7, d
   81CB 28 03         [12] 2089 	jr	Z,00118$
   81CD 13            [ 6] 2090 	inc	de
   81CE 13            [ 6] 2091 	inc	de
   81CF 13            [ 6] 2092 	inc	de
   81D0                    2093 00118$:
   81D0 CB 2A         [ 8] 2094 	sra	d
   81D2 CB 1B         [ 8] 2095 	rr	e
   81D4 CB 2A         [ 8] 2096 	sra	d
   81D6 CB 1B         [ 8] 2097 	rr	e
   81D8 19            [11] 2098 	add	hl, de
                           2099 ;src/game/world.c:444: if(nPixel == 0 && !(*pAddress & 136)) 
   81D9 78            [ 4] 2100 	ld	a, b
   81DA B1            [ 4] 2101 	or	a,c
   81DB 20 09         [12] 2102 	jr	NZ,00113$
   81DD 7E            [ 7] 2103 	ld	a, (hl)
   81DE E6 88         [ 7] 2104 	and	a, #0x88
   81E0 20 04         [12] 2105 	jr	NZ,00113$
                           2106 ;src/game/world.c:445: return 1;
   81E2 2E 01         [ 7] 2107 	ld	l, #0x01
   81E4 18 2E         [12] 2108 	jr	00116$
   81E6                    2109 00113$:
                           2110 ;src/game/world.c:446: else if(nPixel == 1 && !(*pAddress & 68))
   81E6 79            [ 4] 2111 	ld	a, c
   81E7 3D            [ 4] 2112 	dec	a
   81E8 B0            [ 4] 2113 	or	a, b
   81E9 20 09         [12] 2114 	jr	NZ,00109$
   81EB 7E            [ 7] 2115 	ld	a, (hl)
   81EC E6 44         [ 7] 2116 	and	a, #0x44
   81EE 20 04         [12] 2117 	jr	NZ,00109$
                           2118 ;src/game/world.c:447: return 1;
   81F0 2E 01         [ 7] 2119 	ld	l, #0x01
   81F2 18 20         [12] 2120 	jr	00116$
   81F4                    2121 00109$:
                           2122 ;src/game/world.c:448: else if(nPixel == 2 && !(*pAddress & 34))
   81F4 79            [ 4] 2123 	ld	a, c
   81F5 D6 02         [ 7] 2124 	sub	a, #0x02
   81F7 B0            [ 4] 2125 	or	a, b
   81F8 20 09         [12] 2126 	jr	NZ,00105$
   81FA 7E            [ 7] 2127 	ld	a, (hl)
   81FB E6 22         [ 7] 2128 	and	a, #0x22
   81FD 20 04         [12] 2129 	jr	NZ,00105$
                           2130 ;src/game/world.c:449: return 1;
   81FF 2E 01         [ 7] 2131 	ld	l, #0x01
   8201 18 11         [12] 2132 	jr	00116$
   8203                    2133 00105$:
                           2134 ;src/game/world.c:450: else if(nPixel == 3 && !(*pAddress & 17))
   8203 79            [ 4] 2135 	ld	a, c
   8204 D6 03         [ 7] 2136 	sub	a, #0x03
   8206 B0            [ 4] 2137 	or	a, b
   8207 20 09         [12] 2138 	jr	NZ,00110$
   8209 7E            [ 7] 2139 	ld	a, (hl)
   820A E6 11         [ 7] 2140 	and	a, #0x11
   820C 20 04         [12] 2141 	jr	NZ,00110$
                           2142 ;src/game/world.c:451: return 1;
   820E 2E 01         [ 7] 2143 	ld	l, #0x01
   8210 18 02         [12] 2144 	jr	00116$
   8212                    2145 00110$:
                           2146 ;src/game/world.c:453: return 0;
   8212 2E 00         [ 7] 2147 	ld	l, #0x00
   8214                    2148 00116$:
   8214 DD E1         [14] 2149 	pop	ix
   8216 C9            [10] 2150 	ret
                           2151 ;src/game/world.c:456: void drawTrains(u8 x_, u8 y_)
                           2152 ;	---------------------------------
                           2153 ; Function drawTrains
                           2154 ; ---------------------------------
   8217                    2155 _drawTrains::
   8217 DD E5         [15] 2156 	push	ix
   8219 DD 21 00 00   [14] 2157 	ld	ix,#0
   821D DD 39         [15] 2158 	add	ix,sp
   821F 21 F3 FF      [10] 2159 	ld	hl, #-13
   8222 39            [11] 2160 	add	hl, sp
   8223 F9            [ 6] 2161 	ld	sp, hl
                           2162 ;src/game/world.c:461: setPixel(8, 8, 3);
   8224 21 08 03      [10] 2163 	ld	hl, #0x0308
   8227 E5            [11] 2164 	push	hl
   8228 26 00         [ 7] 2165 	ld	h, #0x00
   822A E5            [11] 2166 	push	hl
   822B CD AA 80      [17] 2167 	call	_setPixel
   822E F1            [10] 2168 	pop	af
   822F F1            [10] 2169 	pop	af
                           2170 ;src/game/world.c:464: for(i=0; i<nbTrainList; i++)
   8230 DD 36 F3 00   [19] 2171 	ld	-13 (ix), #0x00
   8234                    2172 00138$:
   8234 21 73 76      [10] 2173 	ld	hl, #_nbTrainList
   8237 DD 7E F3      [19] 2174 	ld	a, -13 (ix)
   823A 96            [ 7] 2175 	sub	a, (hl)
   823B D2 F0 85      [10] 2176 	jp	NC, 00140$
                           2177 ;src/game/world.c:467: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   823E DD 4E F3      [19] 2178 	ld	c,-13 (ix)
   8241 06 00         [ 7] 2179 	ld	b,#0x00
   8243 69            [ 4] 2180 	ld	l, c
   8244 60            [ 4] 2181 	ld	h, b
   8245 29            [11] 2182 	add	hl, hl
   8246 29            [11] 2183 	add	hl, hl
   8247 29            [11] 2184 	add	hl, hl
   8248 09            [11] 2185 	add	hl, bc
   8249 DD 75 FA      [19] 2186 	ld	-6 (ix), l
   824C DD 74 FB      [19] 2187 	ld	-5 (ix), h
   824F FD 21 6E 76   [14] 2188 	ld	iy, #_trainList
   8253 FD 7E 00      [19] 2189 	ld	a, 0 (iy)
   8256 DD 86 FA      [19] 2190 	add	a, -6 (ix)
   8259 4F            [ 4] 2191 	ld	c, a
   825A FD 7E 01      [19] 2192 	ld	a, 1 (iy)
   825D DD 8E FB      [19] 2193 	adc	a, -5 (ix)
   8260 47            [ 4] 2194 	ld	b, a
   8261 C5            [11] 2195 	push	bc
   8262 FD E1         [14] 2196 	pop	iy
   8264 FD 5E 04      [19] 2197 	ld	e, 4 (iy)
   8267 53            [ 4] 2198 	ld	d, e
   8268 2E 00         [ 7] 2199 	ld	l, #0x00
   826A DD 7E 04      [19] 2200 	ld	a, 4 (ix)
   826D DD 77 F8      [19] 2201 	ld	-8 (ix), a
   8270 DD 36 F9 00   [19] 2202 	ld	-7 (ix), #0x00
   8274 7A            [ 4] 2203 	ld	a, d
   8275 DD 96 F8      [19] 2204 	sub	a, -8 (ix)
   8278 DD 77 FE      [19] 2205 	ld	-2 (ix), a
   827B 7D            [ 4] 2206 	ld	a, l
   827C DD 9E F9      [19] 2207 	sbc	a, -7 (ix)
   827F DD 77 FF      [19] 2208 	ld	-1 (ix), a
   8282 DD 7E 05      [19] 2209 	ld	a, 5 (ix)
   8285 DD 77 FC      [19] 2210 	ld	-4 (ix), a
   8288 DD 36 FD 00   [19] 2211 	ld	-3 (ix), #0x00
   828C DD 7E FE      [19] 2212 	ld	a, -2 (ix)
   828F D6 14         [ 7] 2213 	sub	a, #0x14
   8291 DD 7E FF      [19] 2214 	ld	a, -1 (ix)
   8294 17            [ 4] 2215 	rla
   8295 3F            [ 4] 2216 	ccf
   8296 1F            [ 4] 2217 	rra
   8297 DE 80         [ 7] 2218 	sbc	a, #0x80
   8299 30 40         [12] 2219 	jr	NC,00102$
   829B 69            [ 4] 2220 	ld	l, c
   829C 60            [ 4] 2221 	ld	h, b
   829D 01 05 00      [10] 2222 	ld	bc, #0x0005
   82A0 09            [11] 2223 	add	hl, bc
   82A1 4E            [ 7] 2224 	ld	c, (hl)
   82A2 69            [ 4] 2225 	ld	l, c
   82A3 26 00         [ 7] 2226 	ld	h, #0x00
   82A5 7D            [ 4] 2227 	ld	a, l
   82A6 DD 96 FC      [19] 2228 	sub	a, -4 (ix)
   82A9 6F            [ 4] 2229 	ld	l, a
   82AA 7C            [ 4] 2230 	ld	a, h
   82AB DD 9E FD      [19] 2231 	sbc	a, -3 (ix)
   82AE 47            [ 4] 2232 	ld	b, a
   82AF 7D            [ 4] 2233 	ld	a, l
   82B0 D6 0C         [ 7] 2234 	sub	a, #0x0c
   82B2 78            [ 4] 2235 	ld	a, b
   82B3 17            [ 4] 2236 	rla
   82B4 3F            [ 4] 2237 	ccf
   82B5 1F            [ 4] 2238 	rra
   82B6 DE 80         [ 7] 2239 	sbc	a, #0x80
   82B8 30 21         [12] 2240 	jr	NC,00102$
   82BA DD CB FF 7E   [20] 2241 	bit	7, -1 (ix)
   82BE 20 1B         [12] 2242 	jr	NZ,00102$
   82C0 CB 78         [ 8] 2243 	bit	7, b
   82C2 20 17         [12] 2244 	jr	NZ,00102$
                           2245 ;src/game/world.c:469: drawTile(x_,y_,trainList[i].posX-x_,trainList[i].posY-y_);
   82C4 79            [ 4] 2246 	ld	a, c
   82C5 DD 96 05      [19] 2247 	sub	a, 5 (ix)
   82C8 57            [ 4] 2248 	ld	d, a
   82C9 7B            [ 4] 2249 	ld	a, e
   82CA DD 96 04      [19] 2250 	sub	a, 4 (ix)
   82CD 5F            [ 4] 2251 	ld	e,a
   82CE D5            [11] 2252 	push	de
   82CF DD 66 05      [19] 2253 	ld	h, 5 (ix)
   82D2 DD 6E 04      [19] 2254 	ld	l, 4 (ix)
   82D5 E5            [11] 2255 	push	hl
   82D6 CD 0D 7D      [17] 2256 	call	_drawTile
   82D9 F1            [10] 2257 	pop	af
   82DA F1            [10] 2258 	pop	af
   82DB                    2259 00102$:
                           2260 ;src/game/world.c:472: switch(trainList[i].heading)
   82DB FD 21 6E 76   [14] 2261 	ld	iy, #_trainList
   82DF FD 7E 00      [19] 2262 	ld	a, 0 (iy)
   82E2 DD 86 FA      [19] 2263 	add	a, -6 (ix)
   82E5 5F            [ 4] 2264 	ld	e, a
   82E6 FD 7E 01      [19] 2265 	ld	a, 1 (iy)
   82E9 DD 8E FB      [19] 2266 	adc	a, -5 (ix)
   82EC 57            [ 4] 2267 	ld	d, a
   82ED D5            [11] 2268 	push	de
   82EE FD E1         [14] 2269 	pop	iy
   82F0 FD 4E 06      [19] 2270 	ld	c, 6 (iy)
                           2271 ;src/game/world.c:475: drawTile(x_,y_,trainList[i].posX-x_+1,trainList[i].posY-y_);
   82F3 21 05 00      [10] 2272 	ld	hl, #0x0005
   82F6 19            [11] 2273 	add	hl,de
   82F7 DD 75 FE      [19] 2274 	ld	-2 (ix), l
   82FA DD 74 FF      [19] 2275 	ld	-1 (ix), h
   82FD 21 04 00      [10] 2276 	ld	hl, #0x0004
   8300 19            [11] 2277 	add	hl,de
   8301 DD 75 F6      [19] 2278 	ld	-10 (ix), l
   8304 DD 74 F7      [19] 2279 	ld	-9 (ix), h
                           2280 ;src/game/world.c:472: switch(trainList[i].heading)
   8307 79            [ 4] 2281 	ld	a, c
   8308 B7            [ 4] 2282 	or	a, a
   8309 28 10         [12] 2283 	jr	Z,00106$
   830B 79            [ 4] 2284 	ld	a, c
   830C 3D            [ 4] 2285 	dec	a
   830D 28 36         [12] 2286 	jr	Z,00107$
   830F 79            [ 4] 2287 	ld	a,c
   8310 FE 02         [ 7] 2288 	cp	a,#0x02
   8312 28 58         [12] 2289 	jr	Z,00108$
   8314 D6 03         [ 7] 2290 	sub	a, #0x03
   8316 28 7A         [12] 2291 	jr	Z,00109$
   8318 C3 B6 83      [10] 2292 	jp	00110$
                           2293 ;src/game/world.c:474: case 0:
   831B                    2294 00106$:
                           2295 ;src/game/world.c:475: drawTile(x_,y_,trainList[i].posX-x_+1,trainList[i].posY-y_);
   831B DD 6E FE      [19] 2296 	ld	l,-2 (ix)
   831E DD 66 FF      [19] 2297 	ld	h,-1 (ix)
   8321 7E            [ 7] 2298 	ld	a, (hl)
   8322 DD 96 05      [19] 2299 	sub	a, 5 (ix)
   8325 4F            [ 4] 2300 	ld	c, a
   8326 DD 6E F6      [19] 2301 	ld	l,-10 (ix)
   8329 DD 66 F7      [19] 2302 	ld	h,-9 (ix)
   832C 7E            [ 7] 2303 	ld	a, (hl)
   832D DD 96 04      [19] 2304 	sub	a, 4 (ix)
   8330 47            [ 4] 2305 	ld	b, a
   8331 04            [ 4] 2306 	inc	b
   8332 79            [ 4] 2307 	ld	a, c
   8333 F5            [11] 2308 	push	af
   8334 33            [ 6] 2309 	inc	sp
   8335 C5            [11] 2310 	push	bc
   8336 33            [ 6] 2311 	inc	sp
   8337 DD 66 05      [19] 2312 	ld	h, 5 (ix)
   833A DD 6E 04      [19] 2313 	ld	l, 4 (ix)
   833D E5            [11] 2314 	push	hl
   833E CD 0D 7D      [17] 2315 	call	_drawTile
   8341 F1            [10] 2316 	pop	af
   8342 F1            [10] 2317 	pop	af
                           2318 ;src/game/world.c:476: break;
   8343 18 71         [12] 2319 	jr	00110$
                           2320 ;src/game/world.c:477: case 1:
   8345                    2321 00107$:
                           2322 ;src/game/world.c:478: drawTile(x_,y_,trainList[i].posX-x_-1,trainList[i].posY-y_);
   8345 DD 6E FE      [19] 2323 	ld	l,-2 (ix)
   8348 DD 66 FF      [19] 2324 	ld	h,-1 (ix)
   834B 7E            [ 7] 2325 	ld	a, (hl)
   834C DD 96 05      [19] 2326 	sub	a, 5 (ix)
   834F 57            [ 4] 2327 	ld	d, a
   8350 DD 6E F6      [19] 2328 	ld	l,-10 (ix)
   8353 DD 66 F7      [19] 2329 	ld	h,-9 (ix)
   8356 7E            [ 7] 2330 	ld	a, (hl)
   8357 DD 96 04      [19] 2331 	sub	a, 4 (ix)
   835A 47            [ 4] 2332 	ld	b, a
   835B 05            [ 4] 2333 	dec	b
   835C 58            [ 4] 2334 	ld	e, b
   835D D5            [11] 2335 	push	de
   835E DD 66 05      [19] 2336 	ld	h, 5 (ix)
   8361 DD 6E 04      [19] 2337 	ld	l, 4 (ix)
   8364 E5            [11] 2338 	push	hl
   8365 CD 0D 7D      [17] 2339 	call	_drawTile
   8368 F1            [10] 2340 	pop	af
   8369 F1            [10] 2341 	pop	af
                           2342 ;src/game/world.c:479: break;
   836A 18 4A         [12] 2343 	jr	00110$
                           2344 ;src/game/world.c:480: case 2:
   836C                    2345 00108$:
                           2346 ;src/game/world.c:481: drawTile(x_,y_,trainList[i].posX-x_,trainList[i].posY-y_-1);
   836C DD 6E FE      [19] 2347 	ld	l,-2 (ix)
   836F DD 66 FF      [19] 2348 	ld	h,-1 (ix)
   8372 7E            [ 7] 2349 	ld	a, (hl)
   8373 DD 96 05      [19] 2350 	sub	a, 5 (ix)
   8376 57            [ 4] 2351 	ld	d, a
   8377 15            [ 4] 2352 	dec	d
   8378 DD 6E F6      [19] 2353 	ld	l,-10 (ix)
   837B DD 66 F7      [19] 2354 	ld	h,-9 (ix)
   837E 7E            [ 7] 2355 	ld	a, (hl)
   837F DD 96 04      [19] 2356 	sub	a, 4 (ix)
   8382 5F            [ 4] 2357 	ld	e,a
   8383 D5            [11] 2358 	push	de
   8384 DD 66 05      [19] 2359 	ld	h, 5 (ix)
   8387 DD 6E 04      [19] 2360 	ld	l, 4 (ix)
   838A E5            [11] 2361 	push	hl
   838B CD 0D 7D      [17] 2362 	call	_drawTile
   838E F1            [10] 2363 	pop	af
   838F F1            [10] 2364 	pop	af
                           2365 ;src/game/world.c:482: break;
   8390 18 24         [12] 2366 	jr	00110$
                           2367 ;src/game/world.c:483: case 3:
   8392                    2368 00109$:
                           2369 ;src/game/world.c:484: drawTile(x_,y_,trainList[i].posX-x_,trainList[i].posY-y_+1);
   8392 DD 6E FE      [19] 2370 	ld	l,-2 (ix)
   8395 DD 66 FF      [19] 2371 	ld	h,-1 (ix)
   8398 7E            [ 7] 2372 	ld	a, (hl)
   8399 DD 96 05      [19] 2373 	sub	a, 5 (ix)
   839C 57            [ 4] 2374 	ld	d, a
   839D 14            [ 4] 2375 	inc	d
   839E DD 6E F6      [19] 2376 	ld	l,-10 (ix)
   83A1 DD 66 F7      [19] 2377 	ld	h,-9 (ix)
   83A4 7E            [ 7] 2378 	ld	a, (hl)
   83A5 DD 96 04      [19] 2379 	sub	a, 4 (ix)
   83A8 5F            [ 4] 2380 	ld	e,a
   83A9 D5            [11] 2381 	push	de
   83AA DD 66 05      [19] 2382 	ld	h, 5 (ix)
   83AD DD 6E 04      [19] 2383 	ld	l, 4 (ix)
   83B0 E5            [11] 2384 	push	hl
   83B1 CD 0D 7D      [17] 2385 	call	_drawTile
   83B4 F1            [10] 2386 	pop	af
   83B5 F1            [10] 2387 	pop	af
                           2388 ;src/game/world.c:487: }
   83B6                    2389 00110$:
                           2390 ;src/game/world.c:491: switch(trainList[i].heading)
   83B6 FD 21 6E 76   [14] 2391 	ld	iy, #_trainList
   83BA FD 7E 00      [19] 2392 	ld	a, 0 (iy)
   83BD DD 86 FA      [19] 2393 	add	a, -6 (ix)
   83C0 5F            [ 4] 2394 	ld	e, a
   83C1 FD 7E 01      [19] 2395 	ld	a, 1 (iy)
   83C4 DD 8E FB      [19] 2396 	adc	a, -5 (ix)
   83C7 57            [ 4] 2397 	ld	d, a
   83C8 D5            [11] 2398 	push	de
   83C9 FD E1         [14] 2399 	pop	iy
   83CB FD 4E 06      [19] 2400 	ld	c, 6 (iy)
                           2401 ;src/game/world.c:494: if(trainList[i].posX < WIDTH && p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS )
   83CE 21 04 00      [10] 2402 	ld	hl, #0x0004
   83D1 19            [11] 2403 	add	hl,de
   83D2 DD 75 F6      [19] 2404 	ld	-10 (ix), l
   83D5 DD 74 F7      [19] 2405 	ld	-9 (ix), h
   83D8 13            [ 6] 2406 	inc	de
   83D9 13            [ 6] 2407 	inc	de
   83DA 13            [ 6] 2408 	inc	de
   83DB 13            [ 6] 2409 	inc	de
   83DC 13            [ 6] 2410 	inc	de
                           2411 ;src/game/world.c:491: switch(trainList[i].heading)
   83DD 79            [ 4] 2412 	ld	a, c
   83DE B7            [ 4] 2413 	or	a, a
   83DF 28 11         [12] 2414 	jr	Z,00111$
   83E1 79            [ 4] 2415 	ld	a, c
   83E2 3D            [ 4] 2416 	dec	a
   83E3 28 40         [12] 2417 	jr	Z,00115$
   83E5 79            [ 4] 2418 	ld	a,c
   83E6 FE 02         [ 7] 2419 	cp	a,#0x02
   83E8 28 6B         [12] 2420 	jr	Z,00119$
   83EA D6 03         [ 7] 2421 	sub	a, #0x03
   83EC CA 88 84      [10] 2422 	jp	Z,00123$
   83EF C3 B9 84      [10] 2423 	jp	00127$
                           2424 ;src/game/world.c:493: case 0: // Right
   83F2                    2425 00111$:
                           2426 ;src/game/world.c:494: if(trainList[i].posX < WIDTH && p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS )
   83F2 DD 6E F6      [19] 2427 	ld	l,-10 (ix)
   83F5 DD 66 F7      [19] 2428 	ld	h,-9 (ix)
   83F8 4E            [ 7] 2429 	ld	c, (hl)
   83F9 79            [ 4] 2430 	ld	a, c
   83FA D6 50         [ 7] 2431 	sub	a, #0x50
   83FC D2 B9 84      [10] 2432 	jp	NC, 00127$
   83FF 1A            [ 7] 2433 	ld	a, (de)
   8400 5F            [ 4] 2434 	ld	e,a
   8401 16 00         [ 7] 2435 	ld	d,#0x00
   8403 6B            [ 4] 2436 	ld	l, e
   8404 62            [ 4] 2437 	ld	h, d
   8405 29            [11] 2438 	add	hl, hl
   8406 29            [11] 2439 	add	hl, hl
   8407 19            [11] 2440 	add	hl, de
   8408 29            [11] 2441 	add	hl, hl
   8409 29            [11] 2442 	add	hl, hl
   840A 29            [11] 2443 	add	hl, hl
   840B 29            [11] 2444 	add	hl, hl
   840C 59            [ 4] 2445 	ld	e, c
   840D 16 00         [ 7] 2446 	ld	d, #0x00
   840F 19            [11] 2447 	add	hl, de
   8410 11 6F 67      [10] 2448 	ld	de,#_p_world+1
   8413 19            [11] 2449 	add	hl,de
   8414 7E            [ 7] 2450 	ld	a, (hl)
   8415 D6 0A         [ 7] 2451 	sub	a, #0x0a
   8417 DA B9 84      [10] 2452 	jp	C, 00127$
                           2453 ;src/game/world.c:495: trainList[i].posX++;
   841A 0C            [ 4] 2454 	inc	c
   841B DD 6E F6      [19] 2455 	ld	l,-10 (ix)
   841E DD 66 F7      [19] 2456 	ld	h,-9 (ix)
   8421 71            [ 7] 2457 	ld	(hl), c
                           2458 ;src/game/world.c:496: break;
   8422 C3 B9 84      [10] 2459 	jp	00127$
                           2460 ;src/game/world.c:497: case 1: // Left
   8425                    2461 00115$:
                           2462 ;src/game/world.c:498: if(trainList[i].posX >0 && p_world[trainList[i].posY*WIDTH+trainList[i].posX-1] >= SSNS )
   8425 DD 6E F6      [19] 2463 	ld	l,-10 (ix)
   8428 DD 66 F7      [19] 2464 	ld	h,-9 (ix)
   842B 4E            [ 7] 2465 	ld	c, (hl)
   842C 79            [ 4] 2466 	ld	a, c
   842D B7            [ 4] 2467 	or	a, a
   842E CA B9 84      [10] 2468 	jp	Z, 00127$
   8431 1A            [ 7] 2469 	ld	a, (de)
   8432 5F            [ 4] 2470 	ld	e,a
   8433 16 00         [ 7] 2471 	ld	d,#0x00
   8435 6B            [ 4] 2472 	ld	l, e
   8436 62            [ 4] 2473 	ld	h, d
   8437 29            [11] 2474 	add	hl, hl
   8438 29            [11] 2475 	add	hl, hl
   8439 19            [11] 2476 	add	hl, de
   843A 29            [11] 2477 	add	hl, hl
   843B 29            [11] 2478 	add	hl, hl
   843C 29            [11] 2479 	add	hl, hl
   843D 29            [11] 2480 	add	hl, hl
   843E 59            [ 4] 2481 	ld	e, c
   843F 16 00         [ 7] 2482 	ld	d, #0x00
   8441 19            [11] 2483 	add	hl, de
   8442 11 6D 67      [10] 2484 	ld	de,#_p_world-1
   8445 19            [11] 2485 	add	hl,de
   8446 7E            [ 7] 2486 	ld	a, (hl)
   8447 D6 0A         [ 7] 2487 	sub	a, #0x0a
   8449 38 6E         [12] 2488 	jr	C,00127$
                           2489 ;src/game/world.c:499: trainList[i].posX--;
   844B 0D            [ 4] 2490 	dec	c
   844C DD 6E F6      [19] 2491 	ld	l,-10 (ix)
   844F DD 66 F7      [19] 2492 	ld	h,-9 (ix)
   8452 71            [ 7] 2493 	ld	(hl), c
                           2494 ;src/game/world.c:500: break;
   8453 18 64         [12] 2495 	jr	00127$
                           2496 ;src/game/world.c:501: case 2: // Up
   8455                    2497 00119$:
                           2498 ;src/game/world.c:502: if(trainList[i].posY > 0 && p_world[(trainList[i].posY-1)*WIDTH+trainList[i].posX] >= SSNS )
   8455 1A            [ 7] 2499 	ld	a, (de)
   8456 DD 77 FE      [19] 2500 	ld	-2 (ix), a
   8459 B7            [ 4] 2501 	or	a, a
   845A 28 5D         [12] 2502 	jr	Z,00127$
   845C DD 4E FE      [19] 2503 	ld	c, -2 (ix)
   845F 06 00         [ 7] 2504 	ld	b, #0x00
   8461 0B            [ 6] 2505 	dec	bc
   8462 69            [ 4] 2506 	ld	l, c
   8463 60            [ 4] 2507 	ld	h, b
   8464 29            [11] 2508 	add	hl, hl
   8465 29            [11] 2509 	add	hl, hl
   8466 09            [11] 2510 	add	hl, bc
   8467 29            [11] 2511 	add	hl, hl
   8468 29            [11] 2512 	add	hl, hl
   8469 29            [11] 2513 	add	hl, hl
   846A 29            [11] 2514 	add	hl, hl
   846B 4D            [ 4] 2515 	ld	c, l
   846C 44            [ 4] 2516 	ld	b, h
   846D DD 6E F6      [19] 2517 	ld	l,-10 (ix)
   8470 DD 66 F7      [19] 2518 	ld	h,-9 (ix)
   8473 6E            [ 7] 2519 	ld	l, (hl)
   8474 26 00         [ 7] 2520 	ld	h, #0x00
   8476 09            [11] 2521 	add	hl, bc
   8477 01 6E 67      [10] 2522 	ld	bc, #_p_world
   847A 09            [11] 2523 	add	hl, bc
   847B 7E            [ 7] 2524 	ld	a, (hl)
   847C D6 0A         [ 7] 2525 	sub	a, #0x0a
   847E 38 39         [12] 2526 	jr	C,00127$
                           2527 ;src/game/world.c:503: trainList[i].posY--;
   8480 DD 4E FE      [19] 2528 	ld	c, -2 (ix)
   8483 0D            [ 4] 2529 	dec	c
   8484 79            [ 4] 2530 	ld	a, c
   8485 12            [ 7] 2531 	ld	(de), a
                           2532 ;src/game/world.c:504: break;
   8486 18 31         [12] 2533 	jr	00127$
                           2534 ;src/game/world.c:505: case 3: // Down
   8488                    2535 00123$:
                           2536 ;src/game/world.c:506: if(trainList[i].posY < HEIGHT && p_world[(trainList[i].posY+1)*WIDTH+trainList[i].posX] >= SSNS)
   8488 1A            [ 7] 2537 	ld	a, (de)
   8489 DD 77 FE      [19] 2538 	ld	-2 (ix), a
   848C D6 30         [ 7] 2539 	sub	a, #0x30
   848E 30 29         [12] 2540 	jr	NC,00127$
   8490 DD 4E FE      [19] 2541 	ld	c, -2 (ix)
   8493 06 00         [ 7] 2542 	ld	b, #0x00
   8495 03            [ 6] 2543 	inc	bc
   8496 69            [ 4] 2544 	ld	l, c
   8497 60            [ 4] 2545 	ld	h, b
   8498 29            [11] 2546 	add	hl, hl
   8499 29            [11] 2547 	add	hl, hl
   849A 09            [11] 2548 	add	hl, bc
   849B 29            [11] 2549 	add	hl, hl
   849C 29            [11] 2550 	add	hl, hl
   849D 29            [11] 2551 	add	hl, hl
   849E 29            [11] 2552 	add	hl, hl
   849F 4D            [ 4] 2553 	ld	c, l
   84A0 44            [ 4] 2554 	ld	b, h
   84A1 DD 6E F6      [19] 2555 	ld	l,-10 (ix)
   84A4 DD 66 F7      [19] 2556 	ld	h,-9 (ix)
   84A7 6E            [ 7] 2557 	ld	l, (hl)
   84A8 26 00         [ 7] 2558 	ld	h, #0x00
   84AA 09            [11] 2559 	add	hl, bc
   84AB 01 6E 67      [10] 2560 	ld	bc, #_p_world
   84AE 09            [11] 2561 	add	hl, bc
   84AF 7E            [ 7] 2562 	ld	a, (hl)
   84B0 D6 0A         [ 7] 2563 	sub	a, #0x0a
   84B2 38 05         [12] 2564 	jr	C,00127$
                           2565 ;src/game/world.c:507: trainList[i].posY++;
   84B4 DD 7E FE      [19] 2566 	ld	a, -2 (ix)
   84B7 3C            [ 4] 2567 	inc	a
   84B8 12            [ 7] 2568 	ld	(de), a
                           2569 ;src/game/world.c:509: }
   84B9                    2570 00127$:
                           2571 ;src/game/world.c:511: setTrainHeading(i);
   84B9 DD 7E F3      [19] 2572 	ld	a, -13 (ix)
   84BC F5            [11] 2573 	push	af
   84BD 33            [ 6] 2574 	inc	sp
   84BE CD 0C 80      [17] 2575 	call	_setTrainHeading
   84C1 33            [ 6] 2576 	inc	sp
                           2577 ;src/game/world.c:514: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 ) 
   84C2 FD 21 6E 76   [14] 2578 	ld	iy, #_trainList
   84C6 FD 7E 00      [19] 2579 	ld	a, 0 (iy)
   84C9 DD 86 FA      [19] 2580 	add	a, -6 (ix)
   84CC DD 77 F6      [19] 2581 	ld	-10 (ix), a
   84CF FD 7E 01      [19] 2582 	ld	a, 1 (iy)
   84D2 DD 8E FB      [19] 2583 	adc	a, -5 (ix)
   84D5 DD 77 F7      [19] 2584 	ld	-9 (ix), a
   84D8 DD 6E F6      [19] 2585 	ld	l,-10 (ix)
   84DB DD 66 F7      [19] 2586 	ld	h,-9 (ix)
   84DE 11 04 00      [10] 2587 	ld	de, #0x0004
   84E1 19            [11] 2588 	add	hl, de
   84E2 7E            [ 7] 2589 	ld	a, (hl)
   84E3 DD 77 FE      [19] 2590 	ld	-2 (ix), a
   84E6 06 00         [ 7] 2591 	ld	b, #0x00
   84E8 DD 96 F8      [19] 2592 	sub	a, -8 (ix)
   84EB DD 77 F8      [19] 2593 	ld	-8 (ix), a
   84EE 78            [ 4] 2594 	ld	a, b
   84EF DD 9E F9      [19] 2595 	sbc	a, -7 (ix)
   84F2 DD 77 F9      [19] 2596 	ld	-7 (ix), a
   84F5 DD 7E F8      [19] 2597 	ld	a, -8 (ix)
   84F8 D6 14         [ 7] 2598 	sub	a, #0x14
   84FA DD 7E F9      [19] 2599 	ld	a, -7 (ix)
   84FD 17            [ 4] 2600 	rla
   84FE 3F            [ 4] 2601 	ccf
   84FF 1F            [ 4] 2602 	rra
   8500 DE 80         [ 7] 2603 	sbc	a, #0x80
   8502 D2 EA 85      [10] 2604 	jp	NC, 00139$
   8505 DD 6E F6      [19] 2605 	ld	l,-10 (ix)
   8508 DD 66 F7      [19] 2606 	ld	h,-9 (ix)
   850B 11 05 00      [10] 2607 	ld	de, #0x0005
   850E 19            [11] 2608 	add	hl, de
   850F 4E            [ 7] 2609 	ld	c, (hl)
   8510 79            [ 4] 2610 	ld	a, c
   8511 1E 00         [ 7] 2611 	ld	e, #0x00
   8513 DD 96 FC      [19] 2612 	sub	a, -4 (ix)
   8516 6F            [ 4] 2613 	ld	l, a
   8517 7B            [ 4] 2614 	ld	a, e
   8518 DD 9E FD      [19] 2615 	sbc	a, -3 (ix)
   851B 67            [ 4] 2616 	ld	h, a
   851C 7D            [ 4] 2617 	ld	a, l
   851D D6 0C         [ 7] 2618 	sub	a, #0x0c
   851F 7C            [ 4] 2619 	ld	a, h
   8520 17            [ 4] 2620 	rla
   8521 3F            [ 4] 2621 	ccf
   8522 1F            [ 4] 2622 	rra
   8523 DE 80         [ 7] 2623 	sbc	a, #0x80
   8525 D2 EA 85      [10] 2624 	jp	NC, 00139$
   8528 DD CB F9 7E   [20] 2625 	bit	7, -7 (ix)
   852C C2 EA 85      [10] 2626 	jp	NZ, 00139$
   852F CB 7C         [ 8] 2627 	bit	7, h
   8531 C2 EA 85      [10] 2628 	jp	NZ, 00139$
                           2629 ;src/game/world.c:517: p_video = cpct_getScreenPtr(SCR_VMEM, (trainList[i].posX-x_)*TILESIZE_W+trainList[i].shiftX, (trainList[i].posY-y_)*TILESIZE_H+trainList[i].shiftY);
   8534 79            [ 4] 2630 	ld	a, c
   8535 DD 96 05      [19] 2631 	sub	a, 5 (ix)
   8538 07            [ 4] 2632 	rlca
   8539 07            [ 4] 2633 	rlca
   853A 07            [ 4] 2634 	rlca
   853B 07            [ 4] 2635 	rlca
   853C E6 F0         [ 7] 2636 	and	a, #0xf0
   853E 4F            [ 4] 2637 	ld	c, a
   853F DD 6E F6      [19] 2638 	ld	l,-10 (ix)
   8542 DD 66 F7      [19] 2639 	ld	h,-9 (ix)
   8545 11 08 00      [10] 2640 	ld	de, #0x0008
   8548 19            [11] 2641 	add	hl, de
   8549 5E            [ 7] 2642 	ld	e, (hl)
   854A 79            [ 4] 2643 	ld	a, c
   854B 83            [ 4] 2644 	add	a, e
   854C DD 77 FC      [19] 2645 	ld	-4 (ix), a
   854F DD 7E FE      [19] 2646 	ld	a, -2 (ix)
   8552 DD 96 04      [19] 2647 	sub	a, 4 (ix)
   8555 87            [ 4] 2648 	add	a, a
   8556 87            [ 4] 2649 	add	a, a
   8557 DD 77 FE      [19] 2650 	ld	-2 (ix), a
   855A DD 6E F6      [19] 2651 	ld	l,-10 (ix)
   855D DD 66 F7      [19] 2652 	ld	h,-9 (ix)
   8560 11 07 00      [10] 2653 	ld	de, #0x0007
   8563 19            [11] 2654 	add	hl, de
   8564 7E            [ 7] 2655 	ld	a, (hl)
   8565 DD 77 F6      [19] 2656 	ld	-10 (ix), a
   8568 DD 7E FE      [19] 2657 	ld	a, -2 (ix)
   856B DD 86 F6      [19] 2658 	add	a, -10 (ix)
   856E DD 77 F6      [19] 2659 	ld	-10 (ix), a
   8571 DD 66 FC      [19] 2660 	ld	h, -4 (ix)
   8574 DD 6E F6      [19] 2661 	ld	l, -10 (ix)
   8577 E5            [11] 2662 	push	hl
   8578 21 00 C0      [10] 2663 	ld	hl, #0xc000
   857B E5            [11] 2664 	push	hl
   857C CD B6 65      [17] 2665 	call	_cpct_getScreenPtr
   857F DD 74 F5      [19] 2666 	ld	-11 (ix), h
   8582 DD 75 F4      [19] 2667 	ld	-12 (ix), l
                           2668 ;src/game/world.c:519: if(trainList[i].heading <= 1) 
   8585 FD 21 6E 76   [14] 2669 	ld	iy, #_trainList
   8589 FD 7E 00      [19] 2670 	ld	a, 0 (iy)
   858C DD 86 FA      [19] 2671 	add	a, -6 (ix)
   858F DD 77 F6      [19] 2672 	ld	-10 (ix), a
   8592 FD 7E 01      [19] 2673 	ld	a, 1 (iy)
   8595 DD 8E FB      [19] 2674 	adc	a, -5 (ix)
   8598 DD 77 F7      [19] 2675 	ld	-9 (ix), a
   859B DD 6E F6      [19] 2676 	ld	l,-10 (ix)
   859E DD 66 F7      [19] 2677 	ld	h,-9 (ix)
   85A1 11 06 00      [10] 2678 	ld	de, #0x0006
   85A4 19            [11] 2679 	add	hl, de
   85A5 7E            [ 7] 2680 	ld	a, (hl)
   85A6 DD 77 F6      [19] 2681 	ld	-10 (ix), a
                           2682 ;src/game/world.c:520: cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
   85A9 DD 7E F4      [19] 2683 	ld	a, -12 (ix)
   85AC DD 77 FC      [19] 2684 	ld	-4 (ix), a
   85AF DD 7E F5      [19] 2685 	ld	a, -11 (ix)
   85B2 DD 77 FD      [19] 2686 	ld	-3 (ix), a
                           2687 ;src/game/world.c:519: if(trainList[i].heading <= 1) 
   85B5 3E 01         [ 7] 2688 	ld	a, #0x01
   85B7 DD 96 F6      [19] 2689 	sub	a, -10 (ix)
   85BA 38 18         [12] 2690 	jr	C,00129$
                           2691 ;src/game/world.c:520: cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
   85BC 21 00 01      [10] 2692 	ld	hl, #_g_masktable
   85BF E5            [11] 2693 	push	hl
   85C0 21 04 10      [10] 2694 	ld	hl, #0x1004
   85C3 E5            [11] 2695 	push	hl
   85C4 DD 6E FC      [19] 2696 	ld	l,-4 (ix)
   85C7 DD 66 FD      [19] 2697 	ld	h,-3 (ix)
   85CA E5            [11] 2698 	push	hl
   85CB 21 54 4E      [10] 2699 	ld	hl, #_train_h
   85CE E5            [11] 2700 	push	hl
   85CF CD 7B 65      [17] 2701 	call	_cpct_drawSpriteMaskedAlignedTable
   85D2 18 16         [12] 2702 	jr	00139$
   85D4                    2703 00129$:
                           2704 ;src/game/world.c:522: cpct_drawSpriteMaskedAlignedTable(train_v, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
   85D4 21 00 01      [10] 2705 	ld	hl, #_g_masktable
   85D7 E5            [11] 2706 	push	hl
   85D8 21 04 10      [10] 2707 	ld	hl, #0x1004
   85DB E5            [11] 2708 	push	hl
   85DC DD 6E FC      [19] 2709 	ld	l,-4 (ix)
   85DF DD 66 FD      [19] 2710 	ld	h,-3 (ix)
   85E2 E5            [11] 2711 	push	hl
   85E3 21 94 4E      [10] 2712 	ld	hl, #_train_v
   85E6 E5            [11] 2713 	push	hl
   85E7 CD 7B 65      [17] 2714 	call	_cpct_drawSpriteMaskedAlignedTable
   85EA                    2715 00139$:
                           2716 ;src/game/world.c:464: for(i=0; i<nbTrainList; i++)
   85EA DD 34 F3      [23] 2717 	inc	-13 (ix)
   85ED C3 34 82      [10] 2718 	jp	00138$
   85F0                    2719 00140$:
   85F0 DD F9         [10] 2720 	ld	sp, ix
   85F2 DD E1         [14] 2721 	pop	ix
   85F4 C9            [10] 2722 	ret
                           2723 	.area _CODE
                           2724 	.area _INITIALIZER
                           2725 	.area _CABS (ABS)
