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
                             16 	.globl _cpct_drawSolidBox
                             17 	.globl _cpct_drawSprite
                             18 	.globl _cpct_px2byteM1
                             19 	.globl _cpct_getBit
                             20 	.globl _cpct_memset
                             21 	.globl _drawCursor
                             22 	.globl _patternTile
                             23 	.globl _generateWorld
                             24 	.globl _drawTile
                             25 	.globl _drawScrolls
                             26 	.globl _drawWorld
                             27 	.globl _setTrainHeading
                             28 	.globl _setPixel
                             29 	.globl _isPixelBlack
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
                            103 ;src/game/world.c:5: void drawCursor(u8 x, u8 y, u8 color)
                            104 ;	---------------------------------
                            105 ; Function drawCursor
                            106 ; ---------------------------------
   7718                     107 _drawCursor::
   7718 DD E5         [15]  108 	push	ix
   771A DD 21 00 00   [14]  109 	ld	ix,#0
   771E DD 39         [15]  110 	add	ix,sp
   7720 3B            [ 6]  111 	dec	sp
                            112 ;src/game/world.c:8: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   7721 DD 7E 05      [19]  113 	ld	a, 5 (ix)
   7724 07            [ 4]  114 	rlca
   7725 07            [ 4]  115 	rlca
   7726 07            [ 4]  116 	rlca
   7727 07            [ 4]  117 	rlca
   7728 E6 F0         [ 7]  118 	and	a, #0xf0
   772A 4F            [ 4]  119 	ld	c, a
   772B DD 7E 04      [19]  120 	ld	a, 4 (ix)
   772E 87            [ 4]  121 	add	a, a
   772F 87            [ 4]  122 	add	a, a
   7730 47            [ 4]  123 	ld	b, a
   7731 C5            [11]  124 	push	bc
   7732 79            [ 4]  125 	ld	a, c
   7733 F5            [11]  126 	push	af
   7734 33            [ 6]  127 	inc	sp
   7735 C5            [11]  128 	push	bc
   7736 33            [ 6]  129 	inc	sp
   7737 21 00 C0      [10]  130 	ld	hl, #0xc000
   773A E5            [11]  131 	push	hl
   773B CD 55 66      [17]  132 	call	_cpct_getScreenPtr
   773E EB            [ 4]  133 	ex	de,hl
   773F C1            [10]  134 	pop	bc
                            135 ;src/game/world.c:10: switch(CURSOR_MODE)
   7740 3E 11         [ 7]  136 	ld	a, #0x11
   7742 FD 21 11 77   [14]  137 	ld	iy, #_CURSOR_MODE
   7746 FD 96 00      [19]  138 	sub	a, 0 (iy)
   7749 DA 39 79      [10]  139 	jp	C, 00120$
   774C D5            [11]  140 	push	de
   774D FD 5E 00      [19]  141 	ld	e, 0 (iy)
   7750 16 00         [ 7]  142 	ld	d, #0x00
   7752 21 5A 77      [10]  143 	ld	hl, #00126$
   7755 19            [11]  144 	add	hl, de
   7756 19            [11]  145 	add	hl, de
   7757 19            [11]  146 	add	hl, de
   7758 D1            [10]  147 	pop	de
   7759 E9            [ 4]  148 	jp	(hl)
   775A                     149 00126$:
   775A C3 90 77      [10]  150 	jp	00101$
   775D C3 39 79      [10]  151 	jp	00120$
   7760 C3 54 78      [10]  152 	jp	00103$
   7763 C3 63 78      [10]  153 	jp	00104$
   7766 C3 72 78      [10]  154 	jp	00105$
   7769 C3 81 78      [10]  155 	jp	00106$
   776C C3 90 78      [10]  156 	jp	00107$
   776F C3 9F 78      [10]  157 	jp	00108$
   7772 C3 AE 78      [10]  158 	jp	00109$
   7775 C3 BD 78      [10]  159 	jp	00110$
   7778 C3 CB 78      [10]  160 	jp	00111$
   777B C3 D9 78      [10]  161 	jp	00112$
   777E C3 E7 78      [10]  162 	jp	00113$
   7781 C3 F5 78      [10]  163 	jp	00114$
   7784 C3 03 79      [10]  164 	jp	00115$
   7787 C3 11 79      [10]  165 	jp	00116$
   778A C3 1F 79      [10]  166 	jp	00117$
   778D C3 2D 79      [10]  167 	jp	00118$
                            168 ;src/game/world.c:12: case NONE:
   7790                     169 00101$:
                            170 ;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   7790 C5            [11]  171 	push	bc
   7791 D5            [11]  172 	push	de
   7792 DD 66 06      [19]  173 	ld	h, 6 (ix)
   7795 DD 6E 06      [19]  174 	ld	l, 6 (ix)
   7798 E5            [11]  175 	push	hl
   7799 DD 66 06      [19]  176 	ld	h, 6 (ix)
   779C DD 6E 06      [19]  177 	ld	l, 6 (ix)
   779F E5            [11]  178 	push	hl
   77A0 CD 26 65      [17]  179 	call	_cpct_px2byteM1
   77A3 F1            [10]  180 	pop	af
   77A4 F1            [10]  181 	pop	af
   77A5 DD 75 FF      [19]  182 	ld	-1 (ix), l
   77A8 D1            [10]  183 	pop	de
   77A9 21 04 00      [10]  184 	ld	hl, #0x0004
   77AC E5            [11]  185 	push	hl
   77AD DD 7E FF      [19]  186 	ld	a, -1 (ix)
   77B0 F5            [11]  187 	push	af
   77B1 33            [ 6]  188 	inc	sp
   77B2 D5            [11]  189 	push	de
   77B3 CD 18 65      [17]  190 	call	_cpct_memset
   77B6 C1            [10]  191 	pop	bc
                            192 ;src/game/world.c:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   77B7 51            [ 4]  193 	ld	d, c
   77B8 14            [ 4]  194 	inc	d
   77B9 C5            [11]  195 	push	bc
   77BA 58            [ 4]  196 	ld	e, b
   77BB D5            [11]  197 	push	de
   77BC 21 00 C0      [10]  198 	ld	hl, #0xc000
   77BF E5            [11]  199 	push	hl
   77C0 CD 55 66      [17]  200 	call	_cpct_getScreenPtr
   77C3 E5            [11]  201 	push	hl
   77C4 DD 66 06      [19]  202 	ld	h, 6 (ix)
   77C7 DD 6E 06      [19]  203 	ld	l, 6 (ix)
   77CA E5            [11]  204 	push	hl
   77CB DD 66 06      [19]  205 	ld	h, 6 (ix)
   77CE DD 6E 06      [19]  206 	ld	l, 6 (ix)
   77D1 E5            [11]  207 	push	hl
   77D2 CD 26 65      [17]  208 	call	_cpct_px2byteM1
   77D5 F1            [10]  209 	pop	af
   77D6 F1            [10]  210 	pop	af
   77D7 4D            [ 4]  211 	ld	c, l
   77D8 D1            [10]  212 	pop	de
   77D9 F1            [10]  213 	pop	af
   77DA 47            [ 4]  214 	ld	b, a
   77DB C5            [11]  215 	push	bc
   77DC 21 04 00      [10]  216 	ld	hl, #0x0004
   77DF E5            [11]  217 	push	hl
   77E0 79            [ 4]  218 	ld	a, c
   77E1 F5            [11]  219 	push	af
   77E2 33            [ 6]  220 	inc	sp
   77E3 D5            [11]  221 	push	de
   77E4 CD 18 65      [17]  222 	call	_cpct_memset
   77E7 C1            [10]  223 	pop	bc
                            224 ;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   77E8 DD 7E 05      [19]  225 	ld	a, 5 (ix)
   77EB 3C            [ 4]  226 	inc	a
   77EC 07            [ 4]  227 	rlca
   77ED 07            [ 4]  228 	rlca
   77EE 07            [ 4]  229 	rlca
   77EF 07            [ 4]  230 	rlca
   77F0 E6 F0         [ 7]  231 	and	a, #0xf0
   77F2 4F            [ 4]  232 	ld	c, a
   77F3 51            [ 4]  233 	ld	d, c
   77F4 15            [ 4]  234 	dec	d
   77F5 C5            [11]  235 	push	bc
   77F6 58            [ 4]  236 	ld	e, b
   77F7 D5            [11]  237 	push	de
   77F8 21 00 C0      [10]  238 	ld	hl, #0xc000
   77FB E5            [11]  239 	push	hl
   77FC CD 55 66      [17]  240 	call	_cpct_getScreenPtr
   77FF E5            [11]  241 	push	hl
   7800 DD 66 06      [19]  242 	ld	h, 6 (ix)
   7803 DD 6E 06      [19]  243 	ld	l, 6 (ix)
   7806 E5            [11]  244 	push	hl
   7807 DD 66 06      [19]  245 	ld	h, 6 (ix)
   780A DD 6E 06      [19]  246 	ld	l, 6 (ix)
   780D E5            [11]  247 	push	hl
   780E CD 26 65      [17]  248 	call	_cpct_px2byteM1
   7811 F1            [10]  249 	pop	af
   7812 F1            [10]  250 	pop	af
   7813 DD 75 FF      [19]  251 	ld	-1 (ix), l
   7816 D1            [10]  252 	pop	de
   7817 21 04 00      [10]  253 	ld	hl, #0x0004
   781A E5            [11]  254 	push	hl
   781B DD 7E FF      [19]  255 	ld	a, -1 (ix)
   781E F5            [11]  256 	push	af
   781F 33            [ 6]  257 	inc	sp
   7820 D5            [11]  258 	push	de
   7821 CD 18 65      [17]  259 	call	_cpct_memset
   7824 C1            [10]  260 	pop	bc
                            261 ;src/game/world.c:20: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   7825 51            [ 4]  262 	ld	d, c
   7826 15            [ 4]  263 	dec	d
   7827 15            [ 4]  264 	dec	d
   7828 58            [ 4]  265 	ld	e, b
   7829 D5            [11]  266 	push	de
   782A 21 00 C0      [10]  267 	ld	hl, #0xc000
   782D E5            [11]  268 	push	hl
   782E CD 55 66      [17]  269 	call	_cpct_getScreenPtr
                            270 ;src/game/world.c:21: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   7831 E5            [11]  271 	push	hl
   7832 DD 66 06      [19]  272 	ld	h, 6 (ix)
   7835 DD 6E 06      [19]  273 	ld	l, 6 (ix)
   7838 E5            [11]  274 	push	hl
   7839 DD 66 06      [19]  275 	ld	h, 6 (ix)
   783C DD 6E 06      [19]  276 	ld	l, 6 (ix)
   783F E5            [11]  277 	push	hl
   7840 CD 26 65      [17]  278 	call	_cpct_px2byteM1
   7843 F1            [10]  279 	pop	af
   7844 F1            [10]  280 	pop	af
   7845 55            [ 4]  281 	ld	d, l
   7846 C1            [10]  282 	pop	bc
   7847 21 04 00      [10]  283 	ld	hl, #0x0004
   784A E5            [11]  284 	push	hl
   784B D5            [11]  285 	push	de
   784C 33            [ 6]  286 	inc	sp
   784D C5            [11]  287 	push	bc
   784E CD 18 65      [17]  288 	call	_cpct_memset
                            289 ;src/game/world.c:22: break;
   7851 C3 39 79      [10]  290 	jp	00120$
                            291 ;src/game/world.c:26: case T_SSNS:
   7854                     292 00103$:
                            293 ;src/game/world.c:27: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   7854 21 04 10      [10]  294 	ld	hl, #0x1004
   7857 E5            [11]  295 	push	hl
   7858 D5            [11]  296 	push	de
   7859 21 54 4A      [10]  297 	ld	hl, #_station_small_ns
   785C E5            [11]  298 	push	hl
   785D CD 90 61      [17]  299 	call	_cpct_drawSprite
                            300 ;src/game/world.c:28: break;
   7860 C3 39 79      [10]  301 	jp	00120$
                            302 ;src/game/world.c:29: case T_SSEW:
   7863                     303 00104$:
                            304 ;src/game/world.c:30: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   7863 21 04 10      [10]  305 	ld	hl, #0x1004
   7866 E5            [11]  306 	push	hl
   7867 D5            [11]  307 	push	de
   7868 21 94 4A      [10]  308 	ld	hl, #_station_small_ew
   786B E5            [11]  309 	push	hl
   786C CD 90 61      [17]  310 	call	_cpct_drawSprite
                            311 ;src/game/world.c:31: break;
   786F C3 39 79      [10]  312 	jp	00120$
                            313 ;src/game/world.c:32: case T_SMNS:
   7872                     314 00105$:
                            315 ;src/game/world.c:33: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   7872 21 04 10      [10]  316 	ld	hl, #0x1004
   7875 E5            [11]  317 	push	hl
   7876 D5            [11]  318 	push	de
   7877 21 D4 4A      [10]  319 	ld	hl, #_station_medium_ns
   787A E5            [11]  320 	push	hl
   787B CD 90 61      [17]  321 	call	_cpct_drawSprite
                            322 ;src/game/world.c:34: break;
   787E C3 39 79      [10]  323 	jp	00120$
                            324 ;src/game/world.c:35: case T_SMEW:
   7881                     325 00106$:
                            326 ;src/game/world.c:36: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   7881 21 04 10      [10]  327 	ld	hl, #0x1004
   7884 E5            [11]  328 	push	hl
   7885 D5            [11]  329 	push	de
   7886 21 14 4B      [10]  330 	ld	hl, #_station_medium_ew
   7889 E5            [11]  331 	push	hl
   788A CD 90 61      [17]  332 	call	_cpct_drawSprite
                            333 ;src/game/world.c:37: break;
   788D C3 39 79      [10]  334 	jp	00120$
                            335 ;src/game/world.c:38: case T_SLNS:
   7890                     336 00107$:
                            337 ;src/game/world.c:39: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   7890 21 04 10      [10]  338 	ld	hl, #0x1004
   7893 E5            [11]  339 	push	hl
   7894 D5            [11]  340 	push	de
   7895 21 54 4B      [10]  341 	ld	hl, #_station_large_ns
   7898 E5            [11]  342 	push	hl
   7899 CD 90 61      [17]  343 	call	_cpct_drawSprite
                            344 ;src/game/world.c:40: break;
   789C C3 39 79      [10]  345 	jp	00120$
                            346 ;src/game/world.c:41: case T_SLEW:
   789F                     347 00108$:
                            348 ;src/game/world.c:42: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   789F 21 04 10      [10]  349 	ld	hl, #0x1004
   78A2 E5            [11]  350 	push	hl
   78A3 D5            [11]  351 	push	de
   78A4 21 94 4B      [10]  352 	ld	hl, #_station_large_ew
   78A7 E5            [11]  353 	push	hl
   78A8 CD 90 61      [17]  354 	call	_cpct_drawSprite
                            355 ;src/game/world.c:43: break;
   78AB C3 39 79      [10]  356 	jp	00120$
                            357 ;src/game/world.c:44: case T_REW:
   78AE                     358 00109$:
                            359 ;src/game/world.c:45: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   78AE 21 04 10      [10]  360 	ld	hl, #0x1004
   78B1 E5            [11]  361 	push	hl
   78B2 D5            [11]  362 	push	de
   78B3 21 D4 4B      [10]  363 	ld	hl, #_rail_ew
   78B6 E5            [11]  364 	push	hl
   78B7 CD 90 61      [17]  365 	call	_cpct_drawSprite
                            366 ;src/game/world.c:46: break;
   78BA C3 39 79      [10]  367 	jp	00120$
                            368 ;src/game/world.c:47: case T_RNS:
   78BD                     369 00110$:
                            370 ;src/game/world.c:48: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   78BD 21 04 10      [10]  371 	ld	hl, #0x1004
   78C0 E5            [11]  372 	push	hl
   78C1 D5            [11]  373 	push	de
   78C2 21 14 4C      [10]  374 	ld	hl, #_rail_ns
   78C5 E5            [11]  375 	push	hl
   78C6 CD 90 61      [17]  376 	call	_cpct_drawSprite
                            377 ;src/game/world.c:49: break;
   78C9 18 6E         [12]  378 	jr	00120$
                            379 ;src/game/world.c:50: case T_REN:
   78CB                     380 00111$:
                            381 ;src/game/world.c:51: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   78CB 21 04 10      [10]  382 	ld	hl, #0x1004
   78CE E5            [11]  383 	push	hl
   78CF D5            [11]  384 	push	de
   78D0 21 54 4C      [10]  385 	ld	hl, #_rail_en
   78D3 E5            [11]  386 	push	hl
   78D4 CD 90 61      [17]  387 	call	_cpct_drawSprite
                            388 ;src/game/world.c:52: break;
   78D7 18 60         [12]  389 	jr	00120$
                            390 ;src/game/world.c:53: case T_RES:
   78D9                     391 00112$:
                            392 ;src/game/world.c:54: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   78D9 21 04 10      [10]  393 	ld	hl, #0x1004
   78DC E5            [11]  394 	push	hl
   78DD D5            [11]  395 	push	de
   78DE 21 94 4C      [10]  396 	ld	hl, #_rail_es
   78E1 E5            [11]  397 	push	hl
   78E2 CD 90 61      [17]  398 	call	_cpct_drawSprite
                            399 ;src/game/world.c:55: break;
   78E5 18 52         [12]  400 	jr	00120$
                            401 ;src/game/world.c:56: case T_RWN:
   78E7                     402 00113$:
                            403 ;src/game/world.c:57: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   78E7 21 04 10      [10]  404 	ld	hl, #0x1004
   78EA E5            [11]  405 	push	hl
   78EB D5            [11]  406 	push	de
   78EC 21 D4 4C      [10]  407 	ld	hl, #_rail_wn
   78EF E5            [11]  408 	push	hl
   78F0 CD 90 61      [17]  409 	call	_cpct_drawSprite
                            410 ;src/game/world.c:58: break;
   78F3 18 44         [12]  411 	jr	00120$
                            412 ;src/game/world.c:59: case T_RWS:
   78F5                     413 00114$:
                            414 ;src/game/world.c:60: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   78F5 21 04 10      [10]  415 	ld	hl, #0x1004
   78F8 E5            [11]  416 	push	hl
   78F9 D5            [11]  417 	push	de
   78FA 21 14 4D      [10]  418 	ld	hl, #_rail_ws
   78FD E5            [11]  419 	push	hl
   78FE CD 90 61      [17]  420 	call	_cpct_drawSprite
                            421 ;src/game/world.c:61: break;
   7901 18 36         [12]  422 	jr	00120$
                            423 ;src/game/world.c:62: case T_REWN:
   7903                     424 00115$:
                            425 ;src/game/world.c:63: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   7903 21 04 10      [10]  426 	ld	hl, #0x1004
   7906 E5            [11]  427 	push	hl
   7907 D5            [11]  428 	push	de
   7908 21 54 4D      [10]  429 	ld	hl, #_rail_ew_n
   790B E5            [11]  430 	push	hl
   790C CD 90 61      [17]  431 	call	_cpct_drawSprite
                            432 ;src/game/world.c:64: break;
   790F 18 28         [12]  433 	jr	00120$
                            434 ;src/game/world.c:65: case T_REWS:
   7911                     435 00116$:
                            436 ;src/game/world.c:66: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   7911 21 04 10      [10]  437 	ld	hl, #0x1004
   7914 E5            [11]  438 	push	hl
   7915 D5            [11]  439 	push	de
   7916 21 94 4D      [10]  440 	ld	hl, #_rail_ew_s
   7919 E5            [11]  441 	push	hl
   791A CD 90 61      [17]  442 	call	_cpct_drawSprite
                            443 ;src/game/world.c:67: break;
   791D 18 1A         [12]  444 	jr	00120$
                            445 ;src/game/world.c:68: case T_RNSE:
   791F                     446 00117$:
                            447 ;src/game/world.c:69: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   791F 21 04 10      [10]  448 	ld	hl, #0x1004
   7922 E5            [11]  449 	push	hl
   7923 D5            [11]  450 	push	de
   7924 21 14 4E      [10]  451 	ld	hl, #_rail_ns_e
   7927 E5            [11]  452 	push	hl
   7928 CD 90 61      [17]  453 	call	_cpct_drawSprite
                            454 ;src/game/world.c:70: break;
   792B 18 0C         [12]  455 	jr	00120$
                            456 ;src/game/world.c:71: case T_RNSW:
   792D                     457 00118$:
                            458 ;src/game/world.c:72: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   792D 21 04 10      [10]  459 	ld	hl, #0x1004
   7930 E5            [11]  460 	push	hl
   7931 D5            [11]  461 	push	de
   7932 21 D4 4D      [10]  462 	ld	hl, #_rail_ns_w
   7935 E5            [11]  463 	push	hl
   7936 CD 90 61      [17]  464 	call	_cpct_drawSprite
                            465 ;src/game/world.c:74: }
   7939                     466 00120$:
   7939 33            [ 6]  467 	inc	sp
   793A DD E1         [14]  468 	pop	ix
   793C C9            [10]  469 	ret
                            470 ;src/game/world.c:77: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            471 ;	---------------------------------
                            472 ; Function patternTile
                            473 ; ---------------------------------
   793D                     474 _patternTile::
   793D DD E5         [15]  475 	push	ix
   793F DD 21 00 00   [14]  476 	ld	ix,#0
   7943 DD 39         [15]  477 	add	ix,sp
   7945 21 F7 FF      [10]  478 	ld	hl, #-9
   7948 39            [11]  479 	add	hl, sp
   7949 F9            [ 6]  480 	ld	sp, hl
                            481 ;src/game/world.c:82: for(iy=0; iy<nBitsY; iy++)
   794A DD 7E 04      [19]  482 	ld	a, 4 (ix)
   794D D6 08         [ 7]  483 	sub	a, #0x08
   794F 20 04         [12]  484 	jr	NZ,00153$
   7951 3E 01         [ 7]  485 	ld	a,#0x01
   7953 18 01         [12]  486 	jr	00154$
   7955                     487 00153$:
   7955 AF            [ 4]  488 	xor	a,a
   7956                     489 00154$:
   7956 DD 77 FF      [19]  490 	ld	-1 (ix), a
   7959 DD 7E 04      [19]  491 	ld	a, 4 (ix)
   795C D6 02         [ 7]  492 	sub	a, #0x02
   795E 20 04         [12]  493 	jr	NZ,00155$
   7960 3E 01         [ 7]  494 	ld	a,#0x01
   7962 18 01         [12]  495 	jr	00156$
   7964                     496 00155$:
   7964 AF            [ 4]  497 	xor	a,a
   7965                     498 00156$:
   7965 DD 77 FC      [19]  499 	ld	-4 (ix), a
   7968 1E 00         [ 7]  500 	ld	e, #0x00
   796A                     501 00115$:
   796A 7B            [ 4]  502 	ld	a, e
   796B DD 96 08      [19]  503 	sub	a, 8 (ix)
   796E D2 22 7A      [10]  504 	jp	NC, 00117$
                            505 ;src/game/world.c:84: for(ix=0; ix<nBitsX; ix++)
   7971 D5            [11]  506 	push	de
   7972 16 00         [ 7]  507 	ld	d,#0x00
   7974 6B            [ 4]  508 	ld	l, e
   7975 62            [ 4]  509 	ld	h, d
   7976 29            [11]  510 	add	hl, hl
   7977 29            [11]  511 	add	hl, hl
   7978 19            [11]  512 	add	hl, de
   7979 29            [11]  513 	add	hl, hl
   797A 29            [11]  514 	add	hl, hl
   797B 29            [11]  515 	add	hl, hl
   797C 29            [11]  516 	add	hl, hl
   797D D1            [10]  517 	pop	de
   797E 4D            [ 4]  518 	ld	c, l
   797F 44            [ 4]  519 	ld	b, h
   7980 DD 7E 05      [19]  520 	ld	a, 5 (ix)
   7983 81            [ 4]  521 	add	a, c
   7984 DD 77 F8      [19]  522 	ld	-8 (ix), a
   7987 DD 7E 06      [19]  523 	ld	a, 6 (ix)
   798A 88            [ 4]  524 	adc	a, b
   798B DD 77 F9      [19]  525 	ld	-7 (ix), a
   798E D5            [11]  526 	push	de
   798F DD 66 07      [19]  527 	ld	h, 7 (ix)
   7992 2E 00         [ 7]  528 	ld	l, #0x00
   7994 55            [ 4]  529 	ld	d, l
   7995 06 08         [ 7]  530 	ld	b, #0x08
   7997                     531 00157$:
   7997 29            [11]  532 	add	hl, hl
   7998 30 01         [12]  533 	jr	NC,00158$
   799A 19            [11]  534 	add	hl, de
   799B                     535 00158$:
   799B 10 FA         [13]  536 	djnz	00157$
   799D D1            [10]  537 	pop	de
   799E DD 75 FA      [19]  538 	ld	-6 (ix), l
   79A1 DD 74 FB      [19]  539 	ld	-5 (ix), h
   79A4 16 00         [ 7]  540 	ld	d, #0x00
   79A6                     541 00112$:
   79A6 7A            [ 4]  542 	ld	a, d
   79A7 DD 96 07      [19]  543 	sub	a, 7 (ix)
   79AA 30 72         [12]  544 	jr	NC,00116$
                            545 ;src/game/world.c:86: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   79AC DD 72 FD      [19]  546 	ld	-3 (ix), d
   79AF DD 36 FE 00   [19]  547 	ld	-2 (ix), #0x00
   79B3 DD 7E FD      [19]  548 	ld	a, -3 (ix)
   79B6 DD 86 FA      [19]  549 	add	a, -6 (ix)
   79B9 4F            [ 4]  550 	ld	c, a
   79BA DD 7E FE      [19]  551 	ld	a, -2 (ix)
   79BD DD 8E FB      [19]  552 	adc	a, -5 (ix)
   79C0 47            [ 4]  553 	ld	b, a
   79C1 DD 6E 09      [19]  554 	ld	l,9 (ix)
   79C4 DD 66 0A      [19]  555 	ld	h,10 (ix)
   79C7 D5            [11]  556 	push	de
   79C8 C5            [11]  557 	push	bc
   79C9 E5            [11]  558 	push	hl
   79CA CD 50 61      [17]  559 	call	_cpct_getBit
   79CD DD 75 F7      [19]  560 	ld	-9 (ix), l
   79D0 D1            [10]  561 	pop	de
   79D1 DD 7E F7      [19]  562 	ld	a, -9 (ix)
   79D4 B7            [ 4]  563 	or	a, a
   79D5 28 44         [12]  564 	jr	Z,00113$
   79D7 DD 7E F8      [19]  565 	ld	a, -8 (ix)
   79DA DD 86 FD      [19]  566 	add	a, -3 (ix)
   79DD 4F            [ 4]  567 	ld	c, a
   79DE DD 7E F9      [19]  568 	ld	a, -7 (ix)
   79E1 DD 8E FE      [19]  569 	adc	a, -2 (ix)
   79E4 47            [ 4]  570 	ld	b,a
   79E5 EE 80         [ 7]  571 	xor	a, #0x80
   79E7 D6 8F         [ 7]  572 	sub	a, #0x8f
   79E9 30 30         [12]  573 	jr	NC,00113$
                            574 ;src/game/world.c:88: if(tileType == FOREST)
   79EB DD 7E FF      [19]  575 	ld	a, -1 (ix)
   79EE B7            [ 4]  576 	or	a, a
   79EF 28 0A         [12]  577 	jr	Z,00104$
                            578 ;src/game/world.c:89: p_world[index+iy*WIDTH+ix] = tileType;
   79F1 21 0D 68      [10]  579 	ld	hl, #_p_world
   79F4 09            [11]  580 	add	hl, bc
   79F5 DD 7E 04      [19]  581 	ld	a, 4 (ix)
   79F8 77            [ 7]  582 	ld	(hl), a
   79F9 18 20         [12]  583 	jr	00113$
   79FB                     584 00104$:
                            585 ;src/game/world.c:90: else if(tileType==DWELLINGS1)
   79FB DD 7E FC      [19]  586 	ld	a, -4 (ix)
   79FE B7            [ 4]  587 	or	a, a
   79FF 28 1A         [12]  588 	jr	Z,00113$
                            589 ;src/game/world.c:91: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandom_mxor_u8 ()%3+2;
   7A01 21 0D 68      [10]  590 	ld	hl, #_p_world
   7A04 09            [11]  591 	add	hl, bc
   7A05 E5            [11]  592 	push	hl
   7A06 D5            [11]  593 	push	de
   7A07 CD 5E 65      [17]  594 	call	_cpct_getRandom_mxor_u8
   7A0A 45            [ 4]  595 	ld	b, l
   7A0B 3E 03         [ 7]  596 	ld	a, #0x03
   7A0D F5            [11]  597 	push	af
   7A0E 33            [ 6]  598 	inc	sp
   7A0F C5            [11]  599 	push	bc
   7A10 33            [ 6]  600 	inc	sp
   7A11 CD 35 62      [17]  601 	call	__moduchar
   7A14 F1            [10]  602 	pop	af
   7A15 4D            [ 4]  603 	ld	c, l
   7A16 D1            [10]  604 	pop	de
   7A17 E1            [10]  605 	pop	hl
   7A18 0C            [ 4]  606 	inc	c
   7A19 0C            [ 4]  607 	inc	c
   7A1A 71            [ 7]  608 	ld	(hl), c
   7A1B                     609 00113$:
                            610 ;src/game/world.c:84: for(ix=0; ix<nBitsX; ix++)
   7A1B 14            [ 4]  611 	inc	d
   7A1C 18 88         [12]  612 	jr	00112$
   7A1E                     613 00116$:
                            614 ;src/game/world.c:82: for(iy=0; iy<nBitsY; iy++)
   7A1E 1C            [ 4]  615 	inc	e
   7A1F C3 6A 79      [10]  616 	jp	00115$
   7A22                     617 00117$:
   7A22 DD F9         [10]  618 	ld	sp, ix
   7A24 DD E1         [14]  619 	pop	ix
   7A26 C9            [10]  620 	ret
                            621 ;src/game/world.c:98: void generateWorld()
                            622 ;	---------------------------------
                            623 ; Function generateWorld
                            624 ; ---------------------------------
   7A27                     625 _generateWorld::
   7A27 DD E5         [15]  626 	push	ix
   7A29 DD 21 00 00   [14]  627 	ld	ix,#0
   7A2D DD 39         [15]  628 	add	ix,sp
   7A2F 21 E4 FF      [10]  629 	ld	hl, #-28
   7A32 39            [11]  630 	add	hl, sp
   7A33 F9            [ 6]  631 	ld	sp, hl
                            632 ;src/game/world.c:105: CURSOR_MODE = NONE;
   7A34 21 11 77      [10]  633 	ld	hl,#_CURSOR_MODE + 0
   7A37 36 00         [10]  634 	ld	(hl), #0x00
                            635 ;src/game/world.c:108: cpct_setSeed_mxor ((u32)cpct_count2VSYNC());
   7A39 CD B7 62      [17]  636 	call	_cpct_count2VSYNC
   7A3C 11 00 00      [10]  637 	ld	de,#0x0000
   7A3F CD 06 64      [17]  638 	call	_cpct_setSeed_mxor
                            639 ;src/game/world.c:112: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   7A42 01 00 00      [10]  640 	ld	bc, #0x0000
   7A45                     641 00119$:
                            642 ;src/game/world.c:114: p_world[iy] =  cpct_getRandom_mxor_u16()%2;
   7A45 21 0D 68      [10]  643 	ld	hl, #_p_world
   7A48 09            [11]  644 	add	hl, bc
   7A49 E5            [11]  645 	push	hl
   7A4A C5            [11]  646 	push	bc
   7A4B CD 62 64      [17]  647 	call	_cpct_getRandom_mxor_u16
   7A4E 5D            [ 4]  648 	ld	e, l
   7A4F C1            [10]  649 	pop	bc
   7A50 E1            [10]  650 	pop	hl
   7A51 7B            [ 4]  651 	ld	a, e
   7A52 E6 01         [ 7]  652 	and	a, #0x01
   7A54 77            [ 7]  653 	ld	(hl), a
                            654 ;src/game/world.c:112: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   7A55 03            [ 6]  655 	inc	bc
   7A56 78            [ 4]  656 	ld	a, b
   7A57 EE 80         [ 7]  657 	xor	a, #0x80
   7A59 D6 8F         [ 7]  658 	sub	a, #0x8f
   7A5B 38 E8         [12]  659 	jr	C,00119$
                            660 ;src/game/world.c:119: for(ix=0; ix<NBFOREST; ix++)
   7A5D 21 04 00      [10]  661 	ld	hl, #0x0004
   7A60 39            [11]  662 	add	hl, sp
   7A61 DD 75 F8      [19]  663 	ld	-8 (ix), l
   7A64 DD 74 F9      [19]  664 	ld	-7 (ix), h
   7A67 01 00 00      [10]  665 	ld	bc, #0x0000
   7A6A                     666 00121$:
                            667 ;src/game/world.c:121: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7A6A C5            [11]  668 	push	bc
   7A6B CD 62 64      [17]  669 	call	_cpct_getRandom_mxor_u16
   7A6E 11 00 0F      [10]  670 	ld	de, #0x0f00
   7A71 D5            [11]  671 	push	de
   7A72 E5            [11]  672 	push	hl
   7A73 CD 41 62      [17]  673 	call	__moduint
   7A76 F1            [10]  674 	pop	af
   7A77 E3            [19]  675 	ex	(sp),hl
   7A78 CD 62 64      [17]  676 	call	_cpct_getRandom_mxor_u16
   7A7B D1            [10]  677 	pop	de
   7A7C C1            [10]  678 	pop	bc
   7A7D 7D            [ 4]  679 	ld	a, l
   7A7E E6 03         [ 7]  680 	and	a, #0x03
   7A80 6F            [ 4]  681 	ld	l, a
   7A81 26 00         [ 7]  682 	ld	h, #0x00
                            683 ;src/game/world.c:127: p_forest[1] = 0b11000111;
   7A83 DD 7E F8      [19]  684 	ld	a, -8 (ix)
   7A86 C6 01         [ 7]  685 	add	a, #0x01
   7A88 DD 77 FE      [19]  686 	ld	-2 (ix), a
   7A8B DD 7E F9      [19]  687 	ld	a, -7 (ix)
   7A8E CE 00         [ 7]  688 	adc	a, #0x00
   7A90 DD 77 FF      [19]  689 	ld	-1 (ix), a
                            690 ;src/game/world.c:128: p_forest[2] = 0b11011110;
   7A93 DD 7E F8      [19]  691 	ld	a, -8 (ix)
   7A96 C6 02         [ 7]  692 	add	a, #0x02
   7A98 DD 77 F6      [19]  693 	ld	-10 (ix), a
   7A9B DD 7E F9      [19]  694 	ld	a, -7 (ix)
   7A9E CE 00         [ 7]  695 	adc	a, #0x00
   7AA0 DD 77 F7      [19]  696 	ld	-9 (ix), a
                            697 ;src/game/world.c:129: p_forest[3] = 0b01111110;
   7AA3 DD 7E F8      [19]  698 	ld	a, -8 (ix)
   7AA6 C6 03         [ 7]  699 	add	a, #0x03
   7AA8 DD 77 F0      [19]  700 	ld	-16 (ix), a
   7AAB DD 7E F9      [19]  701 	ld	a, -7 (ix)
   7AAE CE 00         [ 7]  702 	adc	a, #0x00
   7AB0 DD 77 F1      [19]  703 	ld	-15 (ix), a
                            704 ;src/game/world.c:130: p_forest[4] = 0b11111110; 
   7AB3 DD 7E F8      [19]  705 	ld	a, -8 (ix)
   7AB6 C6 04         [ 7]  706 	add	a, #0x04
   7AB8 DD 77 F2      [19]  707 	ld	-14 (ix), a
   7ABB DD 7E F9      [19]  708 	ld	a, -7 (ix)
   7ABE CE 00         [ 7]  709 	adc	a, #0x00
   7AC0 DD 77 F3      [19]  710 	ld	-13 (ix), a
                            711 ;src/game/world.c:131: p_forest[5] = 0b01111111;
   7AC3 DD 7E F8      [19]  712 	ld	a, -8 (ix)
   7AC6 C6 05         [ 7]  713 	add	a, #0x05
   7AC8 DD 77 FC      [19]  714 	ld	-4 (ix), a
   7ACB DD 7E F9      [19]  715 	ld	a, -7 (ix)
   7ACE CE 00         [ 7]  716 	adc	a, #0x00
   7AD0 DD 77 FD      [19]  717 	ld	-3 (ix), a
                            718 ;src/game/world.c:132: p_forest[6] = 0b11101111;
   7AD3 DD 7E F8      [19]  719 	ld	a, -8 (ix)
   7AD6 C6 06         [ 7]  720 	add	a, #0x06
   7AD8 DD 77 FA      [19]  721 	ld	-6 (ix), a
   7ADB DD 7E F9      [19]  722 	ld	a, -7 (ix)
   7ADE CE 00         [ 7]  723 	adc	a, #0x00
   7AE0 DD 77 FB      [19]  724 	ld	-5 (ix), a
                            725 ;src/game/world.c:133: p_forest[7] = 0b11001111;
   7AE3 DD 7E F8      [19]  726 	ld	a, -8 (ix)
   7AE6 C6 07         [ 7]  727 	add	a, #0x07
   7AE8 DD 77 F4      [19]  728 	ld	-12 (ix), a
   7AEB DD 7E F9      [19]  729 	ld	a, -7 (ix)
   7AEE CE 00         [ 7]  730 	adc	a, #0x00
   7AF0 DD 77 F5      [19]  731 	ld	-11 (ix), a
                            732 ;src/game/world.c:123: switch(cpct_getRandom_mxor_u16()%4)
   7AF3 7D            [ 4]  733 	ld	a, l
   7AF4 B7            [ 4]  734 	or	a, a
   7AF5 B4            [ 4]  735 	or	a, h
   7AF6 28 16         [12]  736 	jr	Z,00102$
   7AF8 7D            [ 4]  737 	ld	a, l
   7AF9 3D            [ 4]  738 	dec	a
   7AFA B4            [ 4]  739 	or	a, h
   7AFB 28 54         [12]  740 	jr	Z,00103$
   7AFD 7D            [ 4]  741 	ld	a, l
   7AFE D6 02         [ 7]  742 	sub	a, #0x02
   7B00 B4            [ 4]  743 	or	a, h
   7B01 CA 94 7B      [10]  744 	jp	Z,00104$
   7B04 7D            [ 4]  745 	ld	a, l
   7B05 D6 03         [ 7]  746 	sub	a, #0x03
   7B07 B4            [ 4]  747 	or	a, h
   7B08 CA D6 7B      [10]  748 	jp	Z,00105$
   7B0B C3 16 7C      [10]  749 	jp	00106$
                            750 ;src/game/world.c:125: case 0:
   7B0E                     751 00102$:
                            752 ;src/game/world.c:126: p_forest[0] = 0b10000100;
   7B0E DD 6E F8      [19]  753 	ld	l,-8 (ix)
   7B11 DD 66 F9      [19]  754 	ld	h,-7 (ix)
   7B14 36 84         [10]  755 	ld	(hl), #0x84
                            756 ;src/game/world.c:127: p_forest[1] = 0b11000111;
   7B16 DD 6E FE      [19]  757 	ld	l,-2 (ix)
   7B19 DD 66 FF      [19]  758 	ld	h,-1 (ix)
   7B1C 36 C7         [10]  759 	ld	(hl), #0xc7
                            760 ;src/game/world.c:128: p_forest[2] = 0b11011110;
   7B1E DD 6E F6      [19]  761 	ld	l,-10 (ix)
   7B21 DD 66 F7      [19]  762 	ld	h,-9 (ix)
   7B24 36 DE         [10]  763 	ld	(hl), #0xde
                            764 ;src/game/world.c:129: p_forest[3] = 0b01111110;
   7B26 DD 6E F0      [19]  765 	ld	l,-16 (ix)
   7B29 DD 66 F1      [19]  766 	ld	h,-15 (ix)
   7B2C 36 7E         [10]  767 	ld	(hl), #0x7e
                            768 ;src/game/world.c:130: p_forest[4] = 0b11111110; 
   7B2E DD 6E F2      [19]  769 	ld	l,-14 (ix)
   7B31 DD 66 F3      [19]  770 	ld	h,-13 (ix)
   7B34 36 FE         [10]  771 	ld	(hl), #0xfe
                            772 ;src/game/world.c:131: p_forest[5] = 0b01111111;
   7B36 DD 6E FC      [19]  773 	ld	l,-4 (ix)
   7B39 DD 66 FD      [19]  774 	ld	h,-3 (ix)
   7B3C 36 7F         [10]  775 	ld	(hl), #0x7f
                            776 ;src/game/world.c:132: p_forest[6] = 0b11101111;
   7B3E DD 6E FA      [19]  777 	ld	l,-6 (ix)
   7B41 DD 66 FB      [19]  778 	ld	h,-5 (ix)
   7B44 36 EF         [10]  779 	ld	(hl), #0xef
                            780 ;src/game/world.c:133: p_forest[7] = 0b11001111;
   7B46 DD 6E F4      [19]  781 	ld	l,-12 (ix)
   7B49 DD 66 F5      [19]  782 	ld	h,-11 (ix)
   7B4C 36 CF         [10]  783 	ld	(hl), #0xcf
                            784 ;src/game/world.c:134: break;
   7B4E C3 16 7C      [10]  785 	jp	00106$
                            786 ;src/game/world.c:135: case 1:
   7B51                     787 00103$:
                            788 ;src/game/world.c:136: p_forest[0] = 0b00001100;
   7B51 DD 6E F8      [19]  789 	ld	l,-8 (ix)
   7B54 DD 66 F9      [19]  790 	ld	h,-7 (ix)
   7B57 36 0C         [10]  791 	ld	(hl), #0x0c
                            792 ;src/game/world.c:137: p_forest[1] = 0b11111000;
   7B59 DD 6E FE      [19]  793 	ld	l,-2 (ix)
   7B5C DD 66 FF      [19]  794 	ld	h,-1 (ix)
   7B5F 36 F8         [10]  795 	ld	(hl), #0xf8
                            796 ;src/game/world.c:138: p_forest[2] = 0b00111111;
   7B61 DD 6E F6      [19]  797 	ld	l,-10 (ix)
   7B64 DD 66 F7      [19]  798 	ld	h,-9 (ix)
   7B67 36 3F         [10]  799 	ld	(hl), #0x3f
                            800 ;src/game/world.c:139: p_forest[3] = 0b01111110;
   7B69 DD 6E F0      [19]  801 	ld	l,-16 (ix)
   7B6C DD 66 F1      [19]  802 	ld	h,-15 (ix)
   7B6F 36 7E         [10]  803 	ld	(hl), #0x7e
                            804 ;src/game/world.c:140: p_forest[4] = 0b11111110; 
   7B71 DD 6E F2      [19]  805 	ld	l,-14 (ix)
   7B74 DD 66 F3      [19]  806 	ld	h,-13 (ix)
   7B77 36 FE         [10]  807 	ld	(hl), #0xfe
                            808 ;src/game/world.c:141: p_forest[5] = 0b01011111;
   7B79 DD 6E FC      [19]  809 	ld	l,-4 (ix)
   7B7C DD 66 FD      [19]  810 	ld	h,-3 (ix)
   7B7F 36 5F         [10]  811 	ld	(hl), #0x5f
                            812 ;src/game/world.c:142: p_forest[6] = 0b11001111;
   7B81 DD 6E FA      [19]  813 	ld	l,-6 (ix)
   7B84 DD 66 FB      [19]  814 	ld	h,-5 (ix)
   7B87 36 CF         [10]  815 	ld	(hl), #0xcf
                            816 ;src/game/world.c:143: p_forest[7] = 0b10001100;
   7B89 DD 6E F4      [19]  817 	ld	l,-12 (ix)
   7B8C DD 66 F5      [19]  818 	ld	h,-11 (ix)
   7B8F 36 8C         [10]  819 	ld	(hl), #0x8c
                            820 ;src/game/world.c:144: break;
   7B91 C3 16 7C      [10]  821 	jp	00106$
                            822 ;src/game/world.c:145: case 2:
   7B94                     823 00104$:
                            824 ;src/game/world.c:146: p_forest[0] = 0b00110000;
   7B94 DD 6E F8      [19]  825 	ld	l,-8 (ix)
   7B97 DD 66 F9      [19]  826 	ld	h,-7 (ix)
   7B9A 36 30         [10]  827 	ld	(hl), #0x30
                            828 ;src/game/world.c:147: p_forest[1] = 0b11110100;
   7B9C DD 6E FE      [19]  829 	ld	l,-2 (ix)
   7B9F DD 66 FF      [19]  830 	ld	h,-1 (ix)
   7BA2 36 F4         [10]  831 	ld	(hl), #0xf4
                            832 ;src/game/world.c:148: p_forest[2] = 0b11111111;
   7BA4 DD 6E F6      [19]  833 	ld	l,-10 (ix)
   7BA7 DD 66 F7      [19]  834 	ld	h,-9 (ix)
   7BAA 36 FF         [10]  835 	ld	(hl), #0xff
                            836 ;src/game/world.c:149: p_forest[3] = 0b11111111;
   7BAC DD 6E F0      [19]  837 	ld	l,-16 (ix)
   7BAF DD 66 F1      [19]  838 	ld	h,-15 (ix)
   7BB2 36 FF         [10]  839 	ld	(hl), #0xff
                            840 ;src/game/world.c:150: p_forest[4] = 0b01111100;
   7BB4 DD 6E F2      [19]  841 	ld	l,-14 (ix)
   7BB7 DD 66 F3      [19]  842 	ld	h,-13 (ix)
   7BBA 36 7C         [10]  843 	ld	(hl), #0x7c
                            844 ;src/game/world.c:151: p_forest[5] = 0b01111110;
   7BBC DD 6E FC      [19]  845 	ld	l,-4 (ix)
   7BBF DD 66 FD      [19]  846 	ld	h,-3 (ix)
   7BC2 36 7E         [10]  847 	ld	(hl), #0x7e
                            848 ;src/game/world.c:152: p_forest[6] = 0b00111110;
   7BC4 DD 6E FA      [19]  849 	ld	l,-6 (ix)
   7BC7 DD 66 FB      [19]  850 	ld	h,-5 (ix)
   7BCA 36 3E         [10]  851 	ld	(hl), #0x3e
                            852 ;src/game/world.c:153: p_forest[7] = 0b00011000;
   7BCC DD 6E F4      [19]  853 	ld	l,-12 (ix)
   7BCF DD 66 F5      [19]  854 	ld	h,-11 (ix)
   7BD2 36 18         [10]  855 	ld	(hl), #0x18
                            856 ;src/game/world.c:154: break;
   7BD4 18 40         [12]  857 	jr	00106$
                            858 ;src/game/world.c:155: case 3:
   7BD6                     859 00105$:
                            860 ;src/game/world.c:156: p_forest[0] = 0b11000000; 
   7BD6 DD 6E F8      [19]  861 	ld	l,-8 (ix)
   7BD9 DD 66 F9      [19]  862 	ld	h,-7 (ix)
   7BDC 36 C0         [10]  863 	ld	(hl), #0xc0
                            864 ;src/game/world.c:157: p_forest[1] = 0b11100111;
   7BDE DD 6E FE      [19]  865 	ld	l,-2 (ix)
   7BE1 DD 66 FF      [19]  866 	ld	h,-1 (ix)
   7BE4 36 E7         [10]  867 	ld	(hl), #0xe7
                            868 ;src/game/world.c:158: p_forest[2] = 0b01111110;
   7BE6 DD 6E F6      [19]  869 	ld	l,-10 (ix)
   7BE9 DD 66 F7      [19]  870 	ld	h,-9 (ix)
   7BEC 36 7E         [10]  871 	ld	(hl), #0x7e
                            872 ;src/game/world.c:159: p_forest[3] = 0b01111110;
   7BEE DD 6E F0      [19]  873 	ld	l,-16 (ix)
   7BF1 DD 66 F1      [19]  874 	ld	h,-15 (ix)
   7BF4 36 7E         [10]  875 	ld	(hl), #0x7e
                            876 ;src/game/world.c:160: p_forest[4] = 0b11111110;
   7BF6 DD 6E F2      [19]  877 	ld	l,-14 (ix)
   7BF9 DD 66 F3      [19]  878 	ld	h,-13 (ix)
   7BFC 36 FE         [10]  879 	ld	(hl), #0xfe
                            880 ;src/game/world.c:161: p_forest[5] = 0b11111100;
   7BFE DD 6E FC      [19]  881 	ld	l,-4 (ix)
   7C01 DD 66 FD      [19]  882 	ld	h,-3 (ix)
   7C04 36 FC         [10]  883 	ld	(hl), #0xfc
                            884 ;src/game/world.c:162: p_forest[6] = 0b01111000;
   7C06 DD 6E FA      [19]  885 	ld	l,-6 (ix)
   7C09 DD 66 FB      [19]  886 	ld	h,-5 (ix)
   7C0C 36 78         [10]  887 	ld	(hl), #0x78
                            888 ;src/game/world.c:163: p_forest[7] = 0b00110000;
   7C0E DD 6E F4      [19]  889 	ld	l,-12 (ix)
   7C11 DD 66 F5      [19]  890 	ld	h,-11 (ix)
   7C14 36 30         [10]  891 	ld	(hl), #0x30
                            892 ;src/game/world.c:165: }
   7C16                     893 00106$:
                            894 ;src/game/world.c:166: patternTile(FOREST, iy, 8, 8, p_forest);
   7C16 DD 6E F8      [19]  895 	ld	l,-8 (ix)
   7C19 DD 66 F9      [19]  896 	ld	h,-7 (ix)
   7C1C C5            [11]  897 	push	bc
   7C1D E5            [11]  898 	push	hl
   7C1E 21 08 08      [10]  899 	ld	hl, #0x0808
   7C21 E5            [11]  900 	push	hl
   7C22 D5            [11]  901 	push	de
   7C23 3E 08         [ 7]  902 	ld	a, #0x08
   7C25 F5            [11]  903 	push	af
   7C26 33            [ 6]  904 	inc	sp
   7C27 CD 3D 79      [17]  905 	call	_patternTile
   7C2A 21 07 00      [10]  906 	ld	hl, #7
   7C2D 39            [11]  907 	add	hl, sp
   7C2E F9            [ 6]  908 	ld	sp, hl
   7C2F C1            [10]  909 	pop	bc
                            910 ;src/game/world.c:119: for(ix=0; ix<NBFOREST; ix++)
   7C30 03            [ 6]  911 	inc	bc
   7C31 79            [ 4]  912 	ld	a, c
   7C32 D6 32         [ 7]  913 	sub	a, #0x32
   7C34 78            [ 4]  914 	ld	a, b
   7C35 17            [ 4]  915 	rla
   7C36 3F            [ 4]  916 	ccf
   7C37 1F            [ 4]  917 	rra
   7C38 DE 80         [ 7]  918 	sbc	a, #0x80
   7C3A DA 6A 7A      [10]  919 	jp	C, 00121$
                            920 ;src/game/world.c:172: for(ix=0; ix<NBFARM; ix++)
   7C3D 01 3C 00      [10]  921 	ld	bc, #0x003c
   7C40                     922 00125$:
                            923 ;src/game/world.c:174: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT)%(WIDTH*HEIGHT);
   7C40 C5            [11]  924 	push	bc
   7C41 CD 62 64      [17]  925 	call	_cpct_getRandom_mxor_u16
   7C44 11 00 0F      [10]  926 	ld	de, #0x0f00
   7C47 D5            [11]  927 	push	de
   7C48 E5            [11]  928 	push	hl
   7C49 CD 41 62      [17]  929 	call	__moduint
   7C4C F1            [10]  930 	pop	af
   7C4D F1            [10]  931 	pop	af
   7C4E 11 00 0F      [10]  932 	ld	de, #0x0f00
   7C51 D5            [11]  933 	push	de
   7C52 E5            [11]  934 	push	hl
   7C53 CD 41 62      [17]  935 	call	__moduint
   7C56 F1            [10]  936 	pop	af
   7C57 F1            [10]  937 	pop	af
   7C58 C1            [10]  938 	pop	bc
                            939 ;src/game/world.c:175: p_world[iy] = cpct_rand()%2+5;
   7C59 11 0D 68      [10]  940 	ld	de, #_p_world
   7C5C 19            [11]  941 	add	hl, de
   7C5D E5            [11]  942 	push	hl
   7C5E C5            [11]  943 	push	bc
   7C5F CD 5E 65      [17]  944 	call	_cpct_getRandom_mxor_u8
   7C62 7D            [ 4]  945 	ld	a, l
   7C63 C1            [10]  946 	pop	bc
   7C64 E1            [10]  947 	pop	hl
   7C65 E6 01         [ 7]  948 	and	a, #0x01
   7C67 C6 05         [ 7]  949 	add	a, #0x05
   7C69 77            [ 7]  950 	ld	(hl), a
   7C6A 0B            [ 6]  951 	dec	bc
                            952 ;src/game/world.c:172: for(ix=0; ix<NBFARM; ix++)
   7C6B 78            [ 4]  953 	ld	a, b
   7C6C B1            [ 4]  954 	or	a,c
   7C6D 20 D1         [12]  955 	jr	NZ,00125$
                            956 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   7C6F 01 14 00      [10]  957 	ld	bc, #0x0014
   7C72                     958 00128$:
                            959 ;src/game/world.c:182: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7C72 C5            [11]  960 	push	bc
   7C73 CD 62 64      [17]  961 	call	_cpct_getRandom_mxor_u16
   7C76 11 00 0F      [10]  962 	ld	de, #0x0f00
   7C79 D5            [11]  963 	push	de
   7C7A E5            [11]  964 	push	hl
   7C7B CD 41 62      [17]  965 	call	__moduint
   7C7E F1            [10]  966 	pop	af
   7C7F F1            [10]  967 	pop	af
   7C80 C1            [10]  968 	pop	bc
                            969 ;src/game/world.c:183: p_world[iy] = cpct_rand()%3+2;
   7C81 11 0D 68      [10]  970 	ld	de, #_p_world
   7C84 19            [11]  971 	add	hl, de
   7C85 E5            [11]  972 	push	hl
   7C86 C5            [11]  973 	push	bc
   7C87 CD 5E 65      [17]  974 	call	_cpct_getRandom_mxor_u8
   7C8A 55            [ 4]  975 	ld	d, l
   7C8B 3E 03         [ 7]  976 	ld	a, #0x03
   7C8D F5            [11]  977 	push	af
   7C8E 33            [ 6]  978 	inc	sp
   7C8F D5            [11]  979 	push	de
   7C90 33            [ 6]  980 	inc	sp
   7C91 CD 35 62      [17]  981 	call	__moduchar
   7C94 F1            [10]  982 	pop	af
   7C95 5D            [ 4]  983 	ld	e, l
   7C96 C1            [10]  984 	pop	bc
   7C97 E1            [10]  985 	pop	hl
   7C98 1C            [ 4]  986 	inc	e
   7C99 1C            [ 4]  987 	inc	e
   7C9A 73            [ 7]  988 	ld	(hl), e
   7C9B 0B            [ 6]  989 	dec	bc
                            990 ;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
   7C9C 78            [ 4]  991 	ld	a, b
   7C9D B1            [ 4]  992 	or	a,c
   7C9E 20 D2         [12]  993 	jr	NZ,00128$
                            994 ;src/game/world.c:186: for(ix=0; ix<NBURBAN; ix++)
   7CA0 21 02 00      [10]  995 	ld	hl, #0x0002
   7CA3 39            [11]  996 	add	hl, sp
   7CA4 4D            [ 4]  997 	ld	c, l
   7CA5 44            [ 4]  998 	ld	b, h
   7CA6 21 00 00      [10]  999 	ld	hl, #0x0000
   7CA9 E3            [19] 1000 	ex	(sp), hl
   7CAA                    1001 00129$:
                           1002 ;src/game/world.c:188: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7CAA C5            [11] 1003 	push	bc
   7CAB CD 62 64      [17] 1004 	call	_cpct_getRandom_mxor_u16
   7CAE 11 00 0F      [10] 1005 	ld	de, #0x0f00
   7CB1 D5            [11] 1006 	push	de
   7CB2 E5            [11] 1007 	push	hl
   7CB3 CD 41 62      [17] 1008 	call	__moduint
   7CB6 F1            [10] 1009 	pop	af
   7CB7 F1            [10] 1010 	pop	af
   7CB8 C1            [10] 1011 	pop	bc
   7CB9 DD 75 F4      [19] 1012 	ld	-12 (ix), l
   7CBC DD 74 F5      [19] 1013 	ld	-11 (ix), h
                           1014 ;src/game/world.c:190: switch(cpct_rand()%6)
   7CBF C5            [11] 1015 	push	bc
   7CC0 CD 5E 65      [17] 1016 	call	_cpct_getRandom_mxor_u8
   7CC3 55            [ 4] 1017 	ld	d, l
   7CC4 3E 06         [ 7] 1018 	ld	a, #0x06
   7CC6 F5            [11] 1019 	push	af
   7CC7 33            [ 6] 1020 	inc	sp
   7CC8 D5            [11] 1021 	push	de
   7CC9 33            [ 6] 1022 	inc	sp
   7CCA CD 35 62      [17] 1023 	call	__moduchar
   7CCD F1            [10] 1024 	pop	af
   7CCE 5D            [ 4] 1025 	ld	e, l
   7CCF C1            [10] 1026 	pop	bc
   7CD0 3E 05         [ 7] 1027 	ld	a, #0x05
   7CD2 93            [ 4] 1028 	sub	a, e
   7CD3 38 6A         [12] 1029 	jr	C,00116$
                           1030 ;src/game/world.c:194: p_cities[1] = 0b01000110; // 01100010;
   7CD5 21 01 00      [10] 1031 	ld	hl, #0x0001
   7CD8 09            [11] 1032 	add	hl,bc
   7CD9 DD 75 FA      [19] 1033 	ld	-6 (ix), l
   7CDC DD 74 FB      [19] 1034 	ld	-5 (ix), h
                           1035 ;src/game/world.c:190: switch(cpct_rand()%6)
   7CDF 16 00         [ 7] 1036 	ld	d, #0x00
   7CE1 21 E7 7C      [10] 1037 	ld	hl, #00211$
   7CE4 19            [11] 1038 	add	hl, de
   7CE5 19            [11] 1039 	add	hl, de
                           1040 ;src/game/world.c:192: case 0:
   7CE6 E9            [ 4] 1041 	jp	(hl)
   7CE7                    1042 00211$:
   7CE7 18 0A         [12] 1043 	jr	00110$
   7CE9 18 15         [12] 1044 	jr	00111$
   7CEB 18 20         [12] 1045 	jr	00112$
   7CED 18 2B         [12] 1046 	jr	00113$
   7CEF 18 36         [12] 1047 	jr	00114$
   7CF1 18 41         [12] 1048 	jr	00115$
   7CF3                    1049 00110$:
                           1050 ;src/game/world.c:193: p_cities[0] = 0b01110010; // 01001110;
   7CF3 3E 72         [ 7] 1051 	ld	a, #0x72
   7CF5 02            [ 7] 1052 	ld	(bc), a
                           1053 ;src/game/world.c:194: p_cities[1] = 0b01000110; // 01100010;
   7CF6 DD 6E FA      [19] 1054 	ld	l,-6 (ix)
   7CF9 DD 66 FB      [19] 1055 	ld	h,-5 (ix)
   7CFC 36 46         [10] 1056 	ld	(hl), #0x46
                           1057 ;src/game/world.c:195: break;
   7CFE 18 3F         [12] 1058 	jr	00116$
                           1059 ;src/game/world.c:197: case 1:
   7D00                    1060 00111$:
                           1061 ;src/game/world.c:198: p_cities[0] = 0b01100000; // 00000110;
   7D00 3E 60         [ 7] 1062 	ld	a, #0x60
   7D02 02            [ 7] 1063 	ld	(bc), a
                           1064 ;src/game/world.c:199: p_cities[1] = 0b00000110; // 01100000;
   7D03 DD 6E FA      [19] 1065 	ld	l,-6 (ix)
   7D06 DD 66 FB      [19] 1066 	ld	h,-5 (ix)
   7D09 36 06         [10] 1067 	ld	(hl), #0x06
                           1068 ;src/game/world.c:200: break;
   7D0B 18 32         [12] 1069 	jr	00116$
                           1070 ;src/game/world.c:202: case 2:
   7D0D                    1071 00112$:
                           1072 ;src/game/world.c:203: p_cities[0] = 0b00010000; // 00001000;
   7D0D 3E 10         [ 7] 1073 	ld	a, #0x10
   7D0F 02            [ 7] 1074 	ld	(bc), a
                           1075 ;src/game/world.c:204: p_cities[1] = 0b00000110; // 01100000;
   7D10 DD 6E FA      [19] 1076 	ld	l,-6 (ix)
   7D13 DD 66 FB      [19] 1077 	ld	h,-5 (ix)
   7D16 36 06         [10] 1078 	ld	(hl), #0x06
                           1079 ;src/game/world.c:205: break;
   7D18 18 25         [12] 1080 	jr	00116$
                           1081 ;src/game/world.c:207: case 3:
   7D1A                    1082 00113$:
                           1083 ;src/game/world.c:208: p_cities[0] = 0b11000000; // 00000011;
   7D1A 3E C0         [ 7] 1084 	ld	a, #0xc0
   7D1C 02            [ 7] 1085 	ld	(bc), a
                           1086 ;src/game/world.c:209: p_cities[1] = 0b00110001; // 10001100;
   7D1D DD 6E FA      [19] 1087 	ld	l,-6 (ix)
   7D20 DD 66 FB      [19] 1088 	ld	h,-5 (ix)
   7D23 36 31         [10] 1089 	ld	(hl), #0x31
                           1090 ;src/game/world.c:210: break;
   7D25 18 18         [12] 1091 	jr	00116$
                           1092 ;src/game/world.c:212: case 4:
   7D27                    1093 00114$:
                           1094 ;src/game/world.c:213: p_cities[0] = 0b11000100; // 00100011;
   7D27 3E C4         [ 7] 1095 	ld	a, #0xc4
   7D29 02            [ 7] 1096 	ld	(bc), a
                           1097 ;src/game/world.c:214: p_cities[1] = 0b00001110; // 01110000;
   7D2A DD 6E FA      [19] 1098 	ld	l,-6 (ix)
   7D2D DD 66 FB      [19] 1099 	ld	h,-5 (ix)
   7D30 36 0E         [10] 1100 	ld	(hl), #0x0e
                           1101 ;src/game/world.c:215: break;
   7D32 18 0B         [12] 1102 	jr	00116$
                           1103 ;src/game/world.c:217: case 5:
   7D34                    1104 00115$:
                           1105 ;src/game/world.c:218: p_cities[0] = 0b01000000; // 00000010;
   7D34 3E 40         [ 7] 1106 	ld	a, #0x40
   7D36 02            [ 7] 1107 	ld	(bc), a
                           1108 ;src/game/world.c:219: p_cities[1] = 0b01001110; // 01110010;
   7D37 DD 6E FA      [19] 1109 	ld	l,-6 (ix)
   7D3A DD 66 FB      [19] 1110 	ld	h,-5 (ix)
   7D3D 36 4E         [10] 1111 	ld	(hl), #0x4e
                           1112 ;src/game/world.c:221: }
   7D3F                    1113 00116$:
                           1114 ;src/game/world.c:223: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   7D3F 59            [ 4] 1115 	ld	e, c
   7D40 50            [ 4] 1116 	ld	d, b
   7D41 C5            [11] 1117 	push	bc
   7D42 D5            [11] 1118 	push	de
   7D43 21 04 04      [10] 1119 	ld	hl, #0x0404
   7D46 E5            [11] 1120 	push	hl
   7D47 DD 6E F4      [19] 1121 	ld	l,-12 (ix)
   7D4A DD 66 F5      [19] 1122 	ld	h,-11 (ix)
   7D4D E5            [11] 1123 	push	hl
   7D4E 3E 02         [ 7] 1124 	ld	a, #0x02
   7D50 F5            [11] 1125 	push	af
   7D51 33            [ 6] 1126 	inc	sp
   7D52 CD 3D 79      [17] 1127 	call	_patternTile
   7D55 21 07 00      [10] 1128 	ld	hl, #7
   7D58 39            [11] 1129 	add	hl, sp
   7D59 F9            [ 6] 1130 	ld	sp, hl
   7D5A C1            [10] 1131 	pop	bc
                           1132 ;src/game/world.c:186: for(ix=0; ix<NBURBAN; ix++)
   7D5B DD 34 E4      [23] 1133 	inc	-28 (ix)
   7D5E 20 03         [12] 1134 	jr	NZ,00212$
   7D60 DD 34 E5      [23] 1135 	inc	-27 (ix)
   7D63                    1136 00212$:
   7D63 DD 7E E4      [19] 1137 	ld	a, -28 (ix)
   7D66 D6 14         [ 7] 1138 	sub	a, #0x14
   7D68 DD 7E E5      [19] 1139 	ld	a, -27 (ix)
   7D6B 17            [ 4] 1140 	rla
   7D6C 3F            [ 4] 1141 	ccf
   7D6D 1F            [ 4] 1142 	rra
   7D6E DE 80         [ 7] 1143 	sbc	a, #0x80
   7D70 DA AA 7C      [10] 1144 	jp	C, 00129$
                           1145 ;src/game/world.c:228: for(ix=0; ix<NBLIVESTOCK; ix++)
   7D73 01 13 00      [10] 1146 	ld	bc, #0x0013
   7D76                    1147 00133$:
                           1148 ;src/game/world.c:230: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7D76 C5            [11] 1149 	push	bc
   7D77 CD 62 64      [17] 1150 	call	_cpct_getRandom_mxor_u16
   7D7A 11 00 0F      [10] 1151 	ld	de, #0x0f00
   7D7D D5            [11] 1152 	push	de
   7D7E E5            [11] 1153 	push	hl
   7D7F CD 41 62      [17] 1154 	call	__moduint
   7D82 F1            [10] 1155 	pop	af
   7D83 F1            [10] 1156 	pop	af
   7D84 C1            [10] 1157 	pop	bc
                           1158 ;src/game/world.c:231: p_world[iy] = LIVESTOCK;
   7D85 11 0D 68      [10] 1159 	ld	de, #_p_world
   7D88 19            [11] 1160 	add	hl, de
   7D89 36 09         [10] 1161 	ld	(hl), #0x09
   7D8B 0B            [ 6] 1162 	dec	bc
                           1163 ;src/game/world.c:228: for(ix=0; ix<NBLIVESTOCK; ix++)
   7D8C 78            [ 4] 1164 	ld	a, b
   7D8D B1            [ 4] 1165 	or	a,c
   7D8E 20 E6         [12] 1166 	jr	NZ,00133$
   7D90 DD F9         [10] 1167 	ld	sp, ix
   7D92 DD E1         [14] 1168 	pop	ix
   7D94 C9            [10] 1169 	ret
                           1170 ;src/game/world.c:235: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1171 ;	---------------------------------
                           1172 ; Function drawTile
                           1173 ; ---------------------------------
   7D95                    1174 _drawTile::
   7D95 DD E5         [15] 1175 	push	ix
   7D97 DD 21 00 00   [14] 1176 	ld	ix,#0
   7D9B DD 39         [15] 1177 	add	ix,sp
                           1178 ;src/game/world.c:238: int adress = (y_+iy)*WIDTH+x_+ix;
   7D9D DD 4E 05      [19] 1179 	ld	c, 5 (ix)
   7DA0 06 00         [ 7] 1180 	ld	b, #0x00
   7DA2 DD 6E 07      [19] 1181 	ld	l, 7 (ix)
   7DA5 26 00         [ 7] 1182 	ld	h, #0x00
   7DA7 09            [11] 1183 	add	hl, bc
   7DA8 4D            [ 4] 1184 	ld	c, l
   7DA9 44            [ 4] 1185 	ld	b, h
   7DAA 29            [11] 1186 	add	hl, hl
   7DAB 29            [11] 1187 	add	hl, hl
   7DAC 09            [11] 1188 	add	hl, bc
   7DAD 29            [11] 1189 	add	hl, hl
   7DAE 29            [11] 1190 	add	hl, hl
   7DAF 29            [11] 1191 	add	hl, hl
   7DB0 29            [11] 1192 	add	hl, hl
   7DB1 DD 4E 04      [19] 1193 	ld	c, 4 (ix)
   7DB4 06 00         [ 7] 1194 	ld	b, #0x00
   7DB6 09            [11] 1195 	add	hl, bc
   7DB7 DD 4E 06      [19] 1196 	ld	c, 6 (ix)
   7DBA 06 00         [ 7] 1197 	ld	b, #0x00
   7DBC 09            [11] 1198 	add	hl,bc
   7DBD 5D            [ 4] 1199 	ld	e, l
   7DBE 54            [ 4] 1200 	ld	d, h
                           1201 ;src/game/world.c:240: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   7DBF DD 7E 07      [19] 1202 	ld	a, 7 (ix)
   7DC2 07            [ 4] 1203 	rlca
   7DC3 07            [ 4] 1204 	rlca
   7DC4 07            [ 4] 1205 	rlca
   7DC5 07            [ 4] 1206 	rlca
   7DC6 E6 F0         [ 7] 1207 	and	a, #0xf0
   7DC8 67            [ 4] 1208 	ld	h, a
   7DC9 DD 7E 06      [19] 1209 	ld	a, 6 (ix)
   7DCC 87            [ 4] 1210 	add	a, a
   7DCD 87            [ 4] 1211 	add	a, a
   7DCE 47            [ 4] 1212 	ld	b, a
   7DCF D5            [11] 1213 	push	de
   7DD0 E5            [11] 1214 	push	hl
   7DD1 33            [ 6] 1215 	inc	sp
   7DD2 C5            [11] 1216 	push	bc
   7DD3 33            [ 6] 1217 	inc	sp
   7DD4 21 00 C0      [10] 1218 	ld	hl, #0xc000
   7DD7 E5            [11] 1219 	push	hl
   7DD8 CD 55 66      [17] 1220 	call	_cpct_getScreenPtr
   7DDB 4D            [ 4] 1221 	ld	c, l
   7DDC 44            [ 4] 1222 	ld	b, h
   7DDD D1            [10] 1223 	pop	de
                           1224 ;src/game/world.c:242: switch(p_world[adress])
   7DDE 21 0D 68      [10] 1225 	ld	hl, #_p_world+0
   7DE1 19            [11] 1226 	add	hl, de
   7DE2 5E            [ 7] 1227 	ld	e, (hl)
   7DE3 3E 19         [ 7] 1228 	ld	a, #0x19
   7DE5 93            [ 4] 1229 	sub	a, e
   7DE6 DA BB 7F      [10] 1230 	jp	C, 00128$
   7DE9 16 00         [ 7] 1231 	ld	d, #0x00
   7DEB 21 F2 7D      [10] 1232 	ld	hl, #00134$
   7DEE 19            [11] 1233 	add	hl, de
   7DEF 19            [11] 1234 	add	hl, de
   7DF0 19            [11] 1235 	add	hl, de
   7DF1 E9            [ 4] 1236 	jp	(hl)
   7DF2                    1237 00134$:
   7DF2 C3 40 7E      [10] 1238 	jp	00101$
   7DF5 C3 4F 7E      [10] 1239 	jp	00102$
   7DF8 C3 5E 7E      [10] 1240 	jp	00103$
   7DFB C3 6D 7E      [10] 1241 	jp	00104$
   7DFE C3 7C 7E      [10] 1242 	jp	00105$
   7E01 C3 8B 7E      [10] 1243 	jp	00106$
   7E04 C3 9A 7E      [10] 1244 	jp	00107$
   7E07 C3 A9 7E      [10] 1245 	jp	00108$
   7E0A C3 B8 7E      [10] 1246 	jp	00109$
   7E0D C3 C7 7E      [10] 1247 	jp	00110$
   7E10 C3 D6 7E      [10] 1248 	jp	00111$
   7E13 C3 E5 7E      [10] 1249 	jp	00112$
   7E16 C3 F4 7E      [10] 1250 	jp	00113$
   7E19 C3 03 7F      [10] 1251 	jp	00114$
   7E1C C3 12 7F      [10] 1252 	jp	00115$
   7E1F C3 21 7F      [10] 1253 	jp	00116$
   7E22 C3 30 7F      [10] 1254 	jp	00117$
   7E25 C3 3F 7F      [10] 1255 	jp	00118$
   7E28 C3 4D 7F      [10] 1256 	jp	00119$
   7E2B C3 5B 7F      [10] 1257 	jp	00120$
   7E2E C3 69 7F      [10] 1258 	jp	00121$
   7E31 C3 77 7F      [10] 1259 	jp	00122$
   7E34 C3 85 7F      [10] 1260 	jp	00123$
   7E37 C3 93 7F      [10] 1261 	jp	00124$
   7E3A C3 A1 7F      [10] 1262 	jp	00125$
   7E3D C3 AF 7F      [10] 1263 	jp	00126$
                           1264 ;src/game/world.c:244: case GRASS1:
   7E40                    1265 00101$:
                           1266 ;src/game/world.c:245: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   7E40 21 04 10      [10] 1267 	ld	hl, #0x1004
   7E43 E5            [11] 1268 	push	hl
   7E44 C5            [11] 1269 	push	bc
   7E45 21 D4 47      [10] 1270 	ld	hl, #_grass1
   7E48 E5            [11] 1271 	push	hl
   7E49 CD 90 61      [17] 1272 	call	_cpct_drawSprite
                           1273 ;src/game/world.c:246: break;
   7E4C C3 BB 7F      [10] 1274 	jp	00128$
                           1275 ;src/game/world.c:247: case GRASS2:
   7E4F                    1276 00102$:
                           1277 ;src/game/world.c:248: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   7E4F 21 04 10      [10] 1278 	ld	hl, #0x1004
   7E52 E5            [11] 1279 	push	hl
   7E53 C5            [11] 1280 	push	bc
   7E54 21 14 48      [10] 1281 	ld	hl, #_grass2
   7E57 E5            [11] 1282 	push	hl
   7E58 CD 90 61      [17] 1283 	call	_cpct_drawSprite
                           1284 ;src/game/world.c:249: break;
   7E5B C3 BB 7F      [10] 1285 	jp	00128$
                           1286 ;src/game/world.c:250: case DWELLINGS1:
   7E5E                    1287 00103$:
                           1288 ;src/game/world.c:251: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   7E5E 21 04 10      [10] 1289 	ld	hl, #0x1004
   7E61 E5            [11] 1290 	push	hl
   7E62 C5            [11] 1291 	push	bc
   7E63 21 94 48      [10] 1292 	ld	hl, #_dwellings1
   7E66 E5            [11] 1293 	push	hl
   7E67 CD 90 61      [17] 1294 	call	_cpct_drawSprite
                           1295 ;src/game/world.c:252: break;
   7E6A C3 BB 7F      [10] 1296 	jp	00128$
                           1297 ;src/game/world.c:253: case DWELLINGS2:
   7E6D                    1298 00104$:
                           1299 ;src/game/world.c:254: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   7E6D 21 04 10      [10] 1300 	ld	hl, #0x1004
   7E70 E5            [11] 1301 	push	hl
   7E71 C5            [11] 1302 	push	bc
   7E72 21 D4 48      [10] 1303 	ld	hl, #_dwellings2
   7E75 E5            [11] 1304 	push	hl
   7E76 CD 90 61      [17] 1305 	call	_cpct_drawSprite
                           1306 ;src/game/world.c:255: break;
   7E79 C3 BB 7F      [10] 1307 	jp	00128$
                           1308 ;src/game/world.c:256: case DWELLINGS3:
   7E7C                    1309 00105$:
                           1310 ;src/game/world.c:257: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   7E7C 21 04 10      [10] 1311 	ld	hl, #0x1004
   7E7F E5            [11] 1312 	push	hl
   7E80 C5            [11] 1313 	push	bc
   7E81 21 14 49      [10] 1314 	ld	hl, #_dwellings3
   7E84 E5            [11] 1315 	push	hl
   7E85 CD 90 61      [17] 1316 	call	_cpct_drawSprite
                           1317 ;src/game/world.c:258: break;
   7E88 C3 BB 7F      [10] 1318 	jp	00128$
                           1319 ;src/game/world.c:259: case FARM1:
   7E8B                    1320 00106$:
                           1321 ;src/game/world.c:260: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   7E8B 21 04 10      [10] 1322 	ld	hl, #0x1004
   7E8E E5            [11] 1323 	push	hl
   7E8F C5            [11] 1324 	push	bc
   7E90 21 94 49      [10] 1325 	ld	hl, #_farm1
   7E93 E5            [11] 1326 	push	hl
   7E94 CD 90 61      [17] 1327 	call	_cpct_drawSprite
                           1328 ;src/game/world.c:261: break;
   7E97 C3 BB 7F      [10] 1329 	jp	00128$
                           1330 ;src/game/world.c:262: case FARM2:
   7E9A                    1331 00107$:
                           1332 ;src/game/world.c:263: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   7E9A 21 04 10      [10] 1333 	ld	hl, #0x1004
   7E9D E5            [11] 1334 	push	hl
   7E9E C5            [11] 1335 	push	bc
   7E9F 21 D4 49      [10] 1336 	ld	hl, #_farm2
   7EA2 E5            [11] 1337 	push	hl
   7EA3 CD 90 61      [17] 1338 	call	_cpct_drawSprite
                           1339 ;src/game/world.c:264: break;
   7EA6 C3 BB 7F      [10] 1340 	jp	00128$
                           1341 ;src/game/world.c:265: case WATER:
   7EA9                    1342 00108$:
                           1343 ;src/game/world.c:266: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   7EA9 21 04 10      [10] 1344 	ld	hl, #0x1004
   7EAC E5            [11] 1345 	push	hl
   7EAD C5            [11] 1346 	push	bc
   7EAE 21 54 49      [10] 1347 	ld	hl, #_water
   7EB1 E5            [11] 1348 	push	hl
   7EB2 CD 90 61      [17] 1349 	call	_cpct_drawSprite
                           1350 ;src/game/world.c:267: break;
   7EB5 C3 BB 7F      [10] 1351 	jp	00128$
                           1352 ;src/game/world.c:268: case FOREST:
   7EB8                    1353 00109$:
                           1354 ;src/game/world.c:269: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   7EB8 21 04 10      [10] 1355 	ld	hl, #0x1004
   7EBB E5            [11] 1356 	push	hl
   7EBC C5            [11] 1357 	push	bc
   7EBD 21 54 48      [10] 1358 	ld	hl, #_forest
   7EC0 E5            [11] 1359 	push	hl
   7EC1 CD 90 61      [17] 1360 	call	_cpct_drawSprite
                           1361 ;src/game/world.c:270: break;
   7EC4 C3 BB 7F      [10] 1362 	jp	00128$
                           1363 ;src/game/world.c:271: case LIVESTOCK:
   7EC7                    1364 00110$:
                           1365 ;src/game/world.c:272: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   7EC7 21 04 10      [10] 1366 	ld	hl, #0x1004
   7ECA E5            [11] 1367 	push	hl
   7ECB C5            [11] 1368 	push	bc
   7ECC 21 14 4A      [10] 1369 	ld	hl, #_livestock
   7ECF E5            [11] 1370 	push	hl
   7ED0 CD 90 61      [17] 1371 	call	_cpct_drawSprite
                           1372 ;src/game/world.c:273: break;
   7ED3 C3 BB 7F      [10] 1373 	jp	00128$
                           1374 ;src/game/world.c:274: case SSNS:
   7ED6                    1375 00111$:
                           1376 ;src/game/world.c:275: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   7ED6 21 04 10      [10] 1377 	ld	hl, #0x1004
   7ED9 E5            [11] 1378 	push	hl
   7EDA C5            [11] 1379 	push	bc
   7EDB 21 54 4A      [10] 1380 	ld	hl, #_station_small_ns
   7EDE E5            [11] 1381 	push	hl
   7EDF CD 90 61      [17] 1382 	call	_cpct_drawSprite
                           1383 ;src/game/world.c:276: break;
   7EE2 C3 BB 7F      [10] 1384 	jp	00128$
                           1385 ;src/game/world.c:277: case SSEW:
   7EE5                    1386 00112$:
                           1387 ;src/game/world.c:278: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   7EE5 21 04 10      [10] 1388 	ld	hl, #0x1004
   7EE8 E5            [11] 1389 	push	hl
   7EE9 C5            [11] 1390 	push	bc
   7EEA 21 94 4A      [10] 1391 	ld	hl, #_station_small_ew
   7EED E5            [11] 1392 	push	hl
   7EEE CD 90 61      [17] 1393 	call	_cpct_drawSprite
                           1394 ;src/game/world.c:279: break;
   7EF1 C3 BB 7F      [10] 1395 	jp	00128$
                           1396 ;src/game/world.c:280: case SMNS:
   7EF4                    1397 00113$:
                           1398 ;src/game/world.c:281: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   7EF4 21 04 10      [10] 1399 	ld	hl, #0x1004
   7EF7 E5            [11] 1400 	push	hl
   7EF8 C5            [11] 1401 	push	bc
   7EF9 21 D4 4A      [10] 1402 	ld	hl, #_station_medium_ns
   7EFC E5            [11] 1403 	push	hl
   7EFD CD 90 61      [17] 1404 	call	_cpct_drawSprite
                           1405 ;src/game/world.c:282: break;
   7F00 C3 BB 7F      [10] 1406 	jp	00128$
                           1407 ;src/game/world.c:283: case SMEW:
   7F03                    1408 00114$:
                           1409 ;src/game/world.c:284: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   7F03 21 04 10      [10] 1410 	ld	hl, #0x1004
   7F06 E5            [11] 1411 	push	hl
   7F07 C5            [11] 1412 	push	bc
   7F08 21 14 4B      [10] 1413 	ld	hl, #_station_medium_ew
   7F0B E5            [11] 1414 	push	hl
   7F0C CD 90 61      [17] 1415 	call	_cpct_drawSprite
                           1416 ;src/game/world.c:285: break;
   7F0F C3 BB 7F      [10] 1417 	jp	00128$
                           1418 ;src/game/world.c:286: case SLNS:
   7F12                    1419 00115$:
                           1420 ;src/game/world.c:287: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   7F12 21 04 10      [10] 1421 	ld	hl, #0x1004
   7F15 E5            [11] 1422 	push	hl
   7F16 C5            [11] 1423 	push	bc
   7F17 21 54 4B      [10] 1424 	ld	hl, #_station_large_ns
   7F1A E5            [11] 1425 	push	hl
   7F1B CD 90 61      [17] 1426 	call	_cpct_drawSprite
                           1427 ;src/game/world.c:288: break;
   7F1E C3 BB 7F      [10] 1428 	jp	00128$
                           1429 ;src/game/world.c:289: case SLEW:
   7F21                    1430 00116$:
                           1431 ;src/game/world.c:290: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   7F21 21 04 10      [10] 1432 	ld	hl, #0x1004
   7F24 E5            [11] 1433 	push	hl
   7F25 C5            [11] 1434 	push	bc
   7F26 21 94 4B      [10] 1435 	ld	hl, #_station_large_ew
   7F29 E5            [11] 1436 	push	hl
   7F2A CD 90 61      [17] 1437 	call	_cpct_drawSprite
                           1438 ;src/game/world.c:291: break;
   7F2D C3 BB 7F      [10] 1439 	jp	00128$
                           1440 ;src/game/world.c:292: case REW:
   7F30                    1441 00117$:
                           1442 ;src/game/world.c:293: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   7F30 21 04 10      [10] 1443 	ld	hl, #0x1004
   7F33 E5            [11] 1444 	push	hl
   7F34 C5            [11] 1445 	push	bc
   7F35 21 D4 4B      [10] 1446 	ld	hl, #_rail_ew
   7F38 E5            [11] 1447 	push	hl
   7F39 CD 90 61      [17] 1448 	call	_cpct_drawSprite
                           1449 ;src/game/world.c:294: break;
   7F3C C3 BB 7F      [10] 1450 	jp	00128$
                           1451 ;src/game/world.c:295: case RNS:
   7F3F                    1452 00118$:
                           1453 ;src/game/world.c:296: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   7F3F 21 04 10      [10] 1454 	ld	hl, #0x1004
   7F42 E5            [11] 1455 	push	hl
   7F43 C5            [11] 1456 	push	bc
   7F44 21 14 4C      [10] 1457 	ld	hl, #_rail_ns
   7F47 E5            [11] 1458 	push	hl
   7F48 CD 90 61      [17] 1459 	call	_cpct_drawSprite
                           1460 ;src/game/world.c:297: break;
   7F4B 18 6E         [12] 1461 	jr	00128$
                           1462 ;src/game/world.c:298: case REN:
   7F4D                    1463 00119$:
                           1464 ;src/game/world.c:299: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   7F4D 21 04 10      [10] 1465 	ld	hl, #0x1004
   7F50 E5            [11] 1466 	push	hl
   7F51 C5            [11] 1467 	push	bc
   7F52 21 54 4C      [10] 1468 	ld	hl, #_rail_en
   7F55 E5            [11] 1469 	push	hl
   7F56 CD 90 61      [17] 1470 	call	_cpct_drawSprite
                           1471 ;src/game/world.c:300: break;
   7F59 18 60         [12] 1472 	jr	00128$
                           1473 ;src/game/world.c:301: case RES:
   7F5B                    1474 00120$:
                           1475 ;src/game/world.c:302: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   7F5B 21 04 10      [10] 1476 	ld	hl, #0x1004
   7F5E E5            [11] 1477 	push	hl
   7F5F C5            [11] 1478 	push	bc
   7F60 21 94 4C      [10] 1479 	ld	hl, #_rail_es
   7F63 E5            [11] 1480 	push	hl
   7F64 CD 90 61      [17] 1481 	call	_cpct_drawSprite
                           1482 ;src/game/world.c:303: break;
   7F67 18 52         [12] 1483 	jr	00128$
                           1484 ;src/game/world.c:304: case RWN:
   7F69                    1485 00121$:
                           1486 ;src/game/world.c:305: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   7F69 21 04 10      [10] 1487 	ld	hl, #0x1004
   7F6C E5            [11] 1488 	push	hl
   7F6D C5            [11] 1489 	push	bc
   7F6E 21 D4 4C      [10] 1490 	ld	hl, #_rail_wn
   7F71 E5            [11] 1491 	push	hl
   7F72 CD 90 61      [17] 1492 	call	_cpct_drawSprite
                           1493 ;src/game/world.c:306: break;
   7F75 18 44         [12] 1494 	jr	00128$
                           1495 ;src/game/world.c:307: case RWS:
   7F77                    1496 00122$:
                           1497 ;src/game/world.c:308: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   7F77 21 04 10      [10] 1498 	ld	hl, #0x1004
   7F7A E5            [11] 1499 	push	hl
   7F7B C5            [11] 1500 	push	bc
   7F7C 21 14 4D      [10] 1501 	ld	hl, #_rail_ws
   7F7F E5            [11] 1502 	push	hl
   7F80 CD 90 61      [17] 1503 	call	_cpct_drawSprite
                           1504 ;src/game/world.c:309: break;
   7F83 18 36         [12] 1505 	jr	00128$
                           1506 ;src/game/world.c:310: case REWN:
   7F85                    1507 00123$:
                           1508 ;src/game/world.c:311: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   7F85 21 04 10      [10] 1509 	ld	hl, #0x1004
   7F88 E5            [11] 1510 	push	hl
   7F89 C5            [11] 1511 	push	bc
   7F8A 21 54 4D      [10] 1512 	ld	hl, #_rail_ew_n
   7F8D E5            [11] 1513 	push	hl
   7F8E CD 90 61      [17] 1514 	call	_cpct_drawSprite
                           1515 ;src/game/world.c:312: break;
   7F91 18 28         [12] 1516 	jr	00128$
                           1517 ;src/game/world.c:313: case REWS:
   7F93                    1518 00124$:
                           1519 ;src/game/world.c:314: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   7F93 21 04 10      [10] 1520 	ld	hl, #0x1004
   7F96 E5            [11] 1521 	push	hl
   7F97 C5            [11] 1522 	push	bc
   7F98 21 94 4D      [10] 1523 	ld	hl, #_rail_ew_s
   7F9B E5            [11] 1524 	push	hl
   7F9C CD 90 61      [17] 1525 	call	_cpct_drawSprite
                           1526 ;src/game/world.c:315: break;
   7F9F 18 1A         [12] 1527 	jr	00128$
                           1528 ;src/game/world.c:316: case RNSE:
   7FA1                    1529 00125$:
                           1530 ;src/game/world.c:317: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   7FA1 21 04 10      [10] 1531 	ld	hl, #0x1004
   7FA4 E5            [11] 1532 	push	hl
   7FA5 C5            [11] 1533 	push	bc
   7FA6 21 14 4E      [10] 1534 	ld	hl, #_rail_ns_e
   7FA9 E5            [11] 1535 	push	hl
   7FAA CD 90 61      [17] 1536 	call	_cpct_drawSprite
                           1537 ;src/game/world.c:318: break;
   7FAD 18 0C         [12] 1538 	jr	00128$
                           1539 ;src/game/world.c:319: case RNSW:
   7FAF                    1540 00126$:
                           1541 ;src/game/world.c:320: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   7FAF 21 04 10      [10] 1542 	ld	hl, #0x1004
   7FB2 E5            [11] 1543 	push	hl
   7FB3 C5            [11] 1544 	push	bc
   7FB4 21 D4 4D      [10] 1545 	ld	hl, #_rail_ns_w
   7FB7 E5            [11] 1546 	push	hl
   7FB8 CD 90 61      [17] 1547 	call	_cpct_drawSprite
                           1548 ;src/game/world.c:322: }
   7FBB                    1549 00128$:
   7FBB DD E1         [14] 1550 	pop	ix
   7FBD C9            [10] 1551 	ret
                           1552 ;src/game/world.c:325: void drawScrolls(u8 x_, u8 y_)
                           1553 ;	---------------------------------
                           1554 ; Function drawScrolls
                           1555 ; ---------------------------------
   7FBE                    1556 _drawScrolls::
   7FBE DD E5         [15] 1557 	push	ix
   7FC0 DD 21 00 00   [14] 1558 	ld	ix,#0
   7FC4 DD 39         [15] 1559 	add	ix,sp
                           1560 ;src/game/world.c:331: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   7FC6 DD 4E 04      [19] 1561 	ld	c,4 (ix)
   7FC9 06 00         [ 7] 1562 	ld	b,#0x00
   7FCB 69            [ 4] 1563 	ld	l, c
   7FCC 60            [ 4] 1564 	ld	h, b
   7FCD 29            [11] 1565 	add	hl, hl
   7FCE 29            [11] 1566 	add	hl, hl
   7FCF 29            [11] 1567 	add	hl, hl
   7FD0 09            [11] 1568 	add	hl, bc
   7FD1 29            [11] 1569 	add	hl, hl
   7FD2 09            [11] 1570 	add	hl, bc
   7FD3 29            [11] 1571 	add	hl, hl
   7FD4 29            [11] 1572 	add	hl, hl
   7FD5 01 3C 00      [10] 1573 	ld	bc, #0x003c
   7FD8 C5            [11] 1574 	push	bc
   7FD9 E5            [11] 1575 	push	hl
   7FDA CD A6 66      [17] 1576 	call	__divsint
   7FDD F1            [10] 1577 	pop	af
   7FDE F1            [10] 1578 	pop	af
   7FDF 55            [ 4] 1579 	ld	d, l
                           1580 ;src/game/world.c:332: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   7FE0 DD 4E 05      [19] 1581 	ld	c,5 (ix)
   7FE3 06 00         [ 7] 1582 	ld	b,#0x00
   7FE5 69            [ 4] 1583 	ld	l, c
   7FE6 60            [ 4] 1584 	ld	h, b
   7FE7 29            [11] 1585 	add	hl, hl
   7FE8 29            [11] 1586 	add	hl, hl
   7FE9 09            [11] 1587 	add	hl, bc
   7FEA 29            [11] 1588 	add	hl, hl
   7FEB 09            [11] 1589 	add	hl, bc
   7FEC 29            [11] 1590 	add	hl, hl
   7FED 29            [11] 1591 	add	hl, hl
   7FEE 29            [11] 1592 	add	hl, hl
   7FEF 29            [11] 1593 	add	hl, hl
   7FF0 D5            [11] 1594 	push	de
   7FF1 01 24 00      [10] 1595 	ld	bc, #0x0024
   7FF4 C5            [11] 1596 	push	bc
   7FF5 E5            [11] 1597 	push	hl
   7FF6 CD A6 66      [17] 1598 	call	__divsint
   7FF9 F1            [10] 1599 	pop	af
   7FFA F1            [10] 1600 	pop	af
   7FFB 45            [ 4] 1601 	ld	b, l
   7FFC D1            [10] 1602 	pop	de
                           1603 ;src/game/world.c:334: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   7FFD C5            [11] 1604 	push	bc
   7FFE AF            [ 4] 1605 	xor	a, a
   7FFF F5            [11] 1606 	push	af
   8000 33            [ 6] 1607 	inc	sp
   8001 D5            [11] 1608 	push	de
   8002 33            [ 6] 1609 	inc	sp
   8003 21 00 C0      [10] 1610 	ld	hl, #0xc000
   8006 E5            [11] 1611 	push	hl
   8007 CD 55 66      [17] 1612 	call	_cpct_getScreenPtr
   800A C1            [10] 1613 	pop	bc
                           1614 ;src/game/world.c:335: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   800B E5            [11] 1615 	push	hl
   800C C5            [11] 1616 	push	bc
   800D 11 00 00      [10] 1617 	ld	de, #0x0000
   8010 D5            [11] 1618 	push	de
   8011 11 00 00      [10] 1619 	ld	de, #0x0000
   8014 D5            [11] 1620 	push	de
   8015 CD 26 65      [17] 1621 	call	_cpct_px2byteM1
   8018 F1            [10] 1622 	pop	af
   8019 F1            [10] 1623 	pop	af
   801A 4D            [ 4] 1624 	ld	c, l
   801B F1            [10] 1625 	pop	af
   801C 47            [ 4] 1626 	ld	b, a
   801D E1            [10] 1627 	pop	hl
   801E C5            [11] 1628 	push	bc
   801F 11 04 04      [10] 1629 	ld	de, #0x0404
   8022 D5            [11] 1630 	push	de
   8023 79            [ 4] 1631 	ld	a, c
   8024 F5            [11] 1632 	push	af
   8025 33            [ 6] 1633 	inc	sp
   8026 E5            [11] 1634 	push	hl
   8027 CD 83 65      [17] 1635 	call	_cpct_drawSolidBox
   802A F1            [10] 1636 	pop	af
   802B F1            [10] 1637 	pop	af
   802C 33            [ 6] 1638 	inc	sp
   802D 33            [ 6] 1639 	inc	sp
   802E AF            [ 4] 1640 	xor	a, a
   802F F5            [11] 1641 	push	af
   8030 33            [ 6] 1642 	inc	sp
   8031 21 00 C0      [10] 1643 	ld	hl, #0xc000
   8034 E5            [11] 1644 	push	hl
   8035 CD 55 66      [17] 1645 	call	_cpct_getScreenPtr
                           1646 ;src/game/world.c:338: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   8038 E5            [11] 1647 	push	hl
   8039 21 00 00      [10] 1648 	ld	hl, #0x0000
   803C E5            [11] 1649 	push	hl
   803D 2E 00         [ 7] 1650 	ld	l, #0x00
   803F E5            [11] 1651 	push	hl
   8040 CD 26 65      [17] 1652 	call	_cpct_px2byteM1
   8043 F1            [10] 1653 	pop	af
   8044 F1            [10] 1654 	pop	af
   8045 55            [ 4] 1655 	ld	d, l
   8046 C1            [10] 1656 	pop	bc
   8047 21 01 10      [10] 1657 	ld	hl, #0x1001
   804A E5            [11] 1658 	push	hl
   804B D5            [11] 1659 	push	de
   804C 33            [ 6] 1660 	inc	sp
   804D C5            [11] 1661 	push	bc
   804E CD 83 65      [17] 1662 	call	_cpct_drawSolidBox
   8051 F1            [10] 1663 	pop	af
   8052 F1            [10] 1664 	pop	af
   8053 33            [ 6] 1665 	inc	sp
   8054 DD E1         [14] 1666 	pop	ix
   8056 C9            [10] 1667 	ret
                           1668 ;src/game/world.c:341: void drawWorld(u8 x_, u8 y_)
                           1669 ;	---------------------------------
                           1670 ; Function drawWorld
                           1671 ; ---------------------------------
   8057                    1672 _drawWorld::
                           1673 ;src/game/world.c:346: for(iy=0; iy<NBTILE_H;iy++)
   8057 0E 00         [ 7] 1674 	ld	c, #0x00
                           1675 ;src/game/world.c:348: for(ix=0; ix<NBTILE_W;ix++)
   8059                    1676 00109$:
   8059 06 00         [ 7] 1677 	ld	b, #0x00
   805B                    1678 00103$:
                           1679 ;src/game/world.c:350: drawTile(x_, y_, ix, iy);
   805B C5            [11] 1680 	push	bc
   805C 79            [ 4] 1681 	ld	a, c
   805D F5            [11] 1682 	push	af
   805E 33            [ 6] 1683 	inc	sp
   805F C5            [11] 1684 	push	bc
   8060 33            [ 6] 1685 	inc	sp
   8061 21 07 00      [10] 1686 	ld	hl, #7+0
   8064 39            [11] 1687 	add	hl, sp
   8065 7E            [ 7] 1688 	ld	a, (hl)
   8066 F5            [11] 1689 	push	af
   8067 33            [ 6] 1690 	inc	sp
   8068 21 07 00      [10] 1691 	ld	hl, #7+0
   806B 39            [11] 1692 	add	hl, sp
   806C 7E            [ 7] 1693 	ld	a, (hl)
   806D F5            [11] 1694 	push	af
   806E 33            [ 6] 1695 	inc	sp
   806F CD 95 7D      [17] 1696 	call	_drawTile
   8072 F1            [10] 1697 	pop	af
   8073 F1            [10] 1698 	pop	af
   8074 C1            [10] 1699 	pop	bc
                           1700 ;src/game/world.c:348: for(ix=0; ix<NBTILE_W;ix++)
   8075 04            [ 4] 1701 	inc	b
   8076 78            [ 4] 1702 	ld	a, b
   8077 D6 14         [ 7] 1703 	sub	a, #0x14
   8079 38 E0         [12] 1704 	jr	C,00103$
                           1705 ;src/game/world.c:346: for(iy=0; iy<NBTILE_H;iy++)
   807B 0C            [ 4] 1706 	inc	c
   807C 79            [ 4] 1707 	ld	a, c
   807D D6 0C         [ 7] 1708 	sub	a, #0x0c
   807F 38 D8         [12] 1709 	jr	C,00109$
                           1710 ;src/game/world.c:354: drawScrolls(x_, y_);
   8081 21 03 00      [10] 1711 	ld	hl, #3+0
   8084 39            [11] 1712 	add	hl, sp
   8085 7E            [ 7] 1713 	ld	a, (hl)
   8086 F5            [11] 1714 	push	af
   8087 33            [ 6] 1715 	inc	sp
   8088 21 03 00      [10] 1716 	ld	hl, #3+0
   808B 39            [11] 1717 	add	hl, sp
   808C 7E            [ 7] 1718 	ld	a, (hl)
   808D F5            [11] 1719 	push	af
   808E 33            [ 6] 1720 	inc	sp
   808F CD BE 7F      [17] 1721 	call	_drawScrolls
   8092 F1            [10] 1722 	pop	af
   8093 C9            [10] 1723 	ret
                           1724 ;src/game/world.c:361: void setTrainHeading(u8 i)
                           1725 ;	---------------------------------
                           1726 ; Function setTrainHeading
                           1727 ; ---------------------------------
   8094                    1728 _setTrainHeading::
   8094 DD E5         [15] 1729 	push	ix
   8096 DD 21 00 00   [14] 1730 	ld	ix,#0
   809A DD 39         [15] 1731 	add	ix,sp
                           1732 ;src/game/world.c:365: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   809C DD 4E 04      [19] 1733 	ld	c,4 (ix)
   809F 06 00         [ 7] 1734 	ld	b,#0x00
   80A1 69            [ 4] 1735 	ld	l, c
   80A2 60            [ 4] 1736 	ld	h, b
   80A3 29            [11] 1737 	add	hl, hl
   80A4 29            [11] 1738 	add	hl, hl
   80A5 09            [11] 1739 	add	hl, bc
   80A6 29            [11] 1740 	add	hl, hl
   80A7 09            [11] 1741 	add	hl, bc
   80A8 4D            [ 4] 1742 	ld	c, l
   80A9 44            [ 4] 1743 	ld	b, h
   80AA FD 21 0D 77   [14] 1744 	ld	iy, #_trainList
   80AE FD 7E 00      [19] 1745 	ld	a, 0 (iy)
   80B1 81            [ 4] 1746 	add	a, c
   80B2 5F            [ 4] 1747 	ld	e, a
   80B3 FD 7E 01      [19] 1748 	ld	a, 1 (iy)
   80B6 88            [ 4] 1749 	adc	a, b
   80B7 57            [ 4] 1750 	ld	d, a
   80B8 6B            [ 4] 1751 	ld	l, e
   80B9 62            [ 4] 1752 	ld	h, d
   80BA 01 05 00      [10] 1753 	ld	bc, #0x0005
   80BD 09            [11] 1754 	add	hl, bc
   80BE 4E            [ 7] 1755 	ld	c, (hl)
   80BF 06 00         [ 7] 1756 	ld	b,#0x00
   80C1 69            [ 4] 1757 	ld	l, c
   80C2 60            [ 4] 1758 	ld	h, b
   80C3 29            [11] 1759 	add	hl, hl
   80C4 29            [11] 1760 	add	hl, hl
   80C5 09            [11] 1761 	add	hl, bc
   80C6 29            [11] 1762 	add	hl, hl
   80C7 29            [11] 1763 	add	hl, hl
   80C8 29            [11] 1764 	add	hl, hl
   80C9 29            [11] 1765 	add	hl, hl
   80CA 4D            [ 4] 1766 	ld	c, l
   80CB 44            [ 4] 1767 	ld	b, h
   80CC 6B            [ 4] 1768 	ld	l, e
   80CD 62            [ 4] 1769 	ld	h, d
   80CE 23            [ 6] 1770 	inc	hl
   80CF 23            [ 6] 1771 	inc	hl
   80D0 23            [ 6] 1772 	inc	hl
   80D1 23            [ 6] 1773 	inc	hl
   80D2 6E            [ 7] 1774 	ld	l, (hl)
   80D3 26 00         [ 7] 1775 	ld	h, #0x00
   80D5 09            [11] 1776 	add	hl, bc
   80D6 01 0D 68      [10] 1777 	ld	bc, #_p_world
   80D9 09            [11] 1778 	add	hl, bc
   80DA 4E            [ 7] 1779 	ld	c, (hl)
                           1780 ;src/game/world.c:368: if(trainList[i].heading==1) trainList[i].heading=2;
   80DB 21 06 00      [10] 1781 	ld	hl, #0x0006
   80DE 19            [11] 1782 	add	hl, de
                           1783 ;src/game/world.c:365: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   80DF 79            [ 4] 1784 	ld	a,c
   80E0 FE 12         [ 7] 1785 	cp	a,#0x12
   80E2 28 0E         [12] 1786 	jr	Z,00101$
   80E4 FE 13         [ 7] 1787 	cp	a,#0x13
   80E6 28 1A         [12] 1788 	jr	Z,00107$
   80E8 FE 14         [ 7] 1789 	cp	a,#0x14
   80EA 28 26         [12] 1790 	jr	Z,00113$
   80EC D6 15         [ 7] 1791 	sub	a, #0x15
   80EE 28 32         [12] 1792 	jr	Z,00119$
   80F0 18 3E         [12] 1793 	jr	00126$
                           1794 ;src/game/world.c:367: case REN:
   80F2                    1795 00101$:
                           1796 ;src/game/world.c:368: if(trainList[i].heading==1) trainList[i].heading=2;
   80F2 7E            [ 7] 1797 	ld	a, (hl)
   80F3 FE 01         [ 7] 1798 	cp	a, #0x01
   80F5 20 04         [12] 1799 	jr	NZ,00105$
   80F7 36 02         [10] 1800 	ld	(hl), #0x02
   80F9 18 35         [12] 1801 	jr	00126$
   80FB                    1802 00105$:
                           1803 ;src/game/world.c:369: else if(trainList[i].heading==3) trainList[i].heading=0;
   80FB D6 03         [ 7] 1804 	sub	a,#0x03
   80FD 20 31         [12] 1805 	jr	NZ,00126$
   80FF 77            [ 7] 1806 	ld	(hl),a
                           1807 ;src/game/world.c:370: break;
   8100 18 2E         [12] 1808 	jr	00126$
                           1809 ;src/game/world.c:372: case RES:
   8102                    1810 00107$:
                           1811 ;src/game/world.c:373: if(trainList[i].heading==1) trainList[i].heading=3;
   8102 7E            [ 7] 1812 	ld	a, (hl)
   8103 FE 01         [ 7] 1813 	cp	a, #0x01
   8105 20 04         [12] 1814 	jr	NZ,00111$
   8107 36 03         [10] 1815 	ld	(hl), #0x03
   8109 18 25         [12] 1816 	jr	00126$
   810B                    1817 00111$:
                           1818 ;src/game/world.c:374: else if(trainList[i].heading==2) trainList[i].heading=0;
   810B D6 02         [ 7] 1819 	sub	a,#0x02
   810D 20 21         [12] 1820 	jr	NZ,00126$
   810F 77            [ 7] 1821 	ld	(hl),a
                           1822 ;src/game/world.c:375: break;
   8110 18 1E         [12] 1823 	jr	00126$
                           1824 ;src/game/world.c:377: case RWN:
   8112                    1825 00113$:
                           1826 ;src/game/world.c:378: if(trainList[i].heading==0) trainList[i].heading=2;   
   8112 7E            [ 7] 1827 	ld	a, (hl)
   8113 B7            [ 4] 1828 	or	a, a
   8114 20 04         [12] 1829 	jr	NZ,00117$
   8116 36 02         [10] 1830 	ld	(hl), #0x02
   8118 18 16         [12] 1831 	jr	00126$
   811A                    1832 00117$:
                           1833 ;src/game/world.c:379: else if(trainList[i].heading==3) trainList[i].heading=1;
   811A D6 03         [ 7] 1834 	sub	a, #0x03
   811C 20 12         [12] 1835 	jr	NZ,00126$
   811E 36 01         [10] 1836 	ld	(hl), #0x01
                           1837 ;src/game/world.c:380: break;
   8120 18 0E         [12] 1838 	jr	00126$
                           1839 ;src/game/world.c:382: case RWS:
   8122                    1840 00119$:
                           1841 ;src/game/world.c:383: if(trainList[i].heading==0) trainList[i].heading=3;
   8122 7E            [ 7] 1842 	ld	a, (hl)
   8123 B7            [ 4] 1843 	or	a, a
   8124 20 04         [12] 1844 	jr	NZ,00123$
   8126 36 03         [10] 1845 	ld	(hl), #0x03
   8128 18 06         [12] 1846 	jr	00126$
   812A                    1847 00123$:
                           1848 ;src/game/world.c:384: else if(trainList[i].heading==2) trainList[i].heading=1;
   812A D6 02         [ 7] 1849 	sub	a, #0x02
   812C 20 02         [12] 1850 	jr	NZ,00126$
   812E 36 01         [10] 1851 	ld	(hl), #0x01
                           1852 ;src/game/world.c:386: }
   8130                    1853 00126$:
   8130 DD E1         [14] 1854 	pop	ix
   8132 C9            [10] 1855 	ret
                           1856 ;src/game/world.c:389: void setPixel(int nX, unsigned char nY, unsigned char nColor)
                           1857 ;	---------------------------------
                           1858 ; Function setPixel
                           1859 ; ---------------------------------
   8133                    1860 _setPixel::
   8133 DD E5         [15] 1861 	push	ix
   8135 DD 21 00 00   [14] 1862 	ld	ix,#0
   8139 DD 39         [15] 1863 	add	ix,sp
   813B F5            [11] 1864 	push	af
                           1865 ;src/game/world.c:394: int nPixel = nX % 4;
   813C 21 04 00      [10] 1866 	ld	hl, #0x0004
   813F E5            [11] 1867 	push	hl
   8140 DD 6E 04      [19] 1868 	ld	l,4 (ix)
   8143 DD 66 05      [19] 1869 	ld	h,5 (ix)
   8146 E5            [11] 1870 	push	hl
   8147 CD 48 66      [17] 1871 	call	__modsint
   814A F1            [10] 1872 	pop	af
   814B F1            [10] 1873 	pop	af
   814C EB            [ 4] 1874 	ex	de,hl
                           1875 ;src/game/world.c:395: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   814D DD 7E 06      [19] 1876 	ld	a, 6 (ix)
   8150 0F            [ 4] 1877 	rrca
   8151 0F            [ 4] 1878 	rrca
   8152 0F            [ 4] 1879 	rrca
   8153 E6 1F         [ 7] 1880 	and	a, #0x1f
   8155 4F            [ 4] 1881 	ld	c,a
   8156 06 00         [ 7] 1882 	ld	b,#0x00
   8158 69            [ 4] 1883 	ld	l, c
   8159 60            [ 4] 1884 	ld	h, b
   815A 29            [11] 1885 	add	hl, hl
   815B 29            [11] 1886 	add	hl, hl
   815C 09            [11] 1887 	add	hl, bc
   815D 29            [11] 1888 	add	hl, hl
   815E 29            [11] 1889 	add	hl, hl
   815F 29            [11] 1890 	add	hl, hl
   8160 29            [11] 1891 	add	hl, hl
   8161 01 00 C0      [10] 1892 	ld	bc, #0xc000
   8164 09            [11] 1893 	add	hl, bc
   8165 DD 7E 06      [19] 1894 	ld	a, 6 (ix)
   8168 E6 07         [ 7] 1895 	and	a, #0x07
   816A 07            [ 4] 1896 	rlca
   816B 07            [ 4] 1897 	rlca
   816C 07            [ 4] 1898 	rlca
   816D E6 F8         [ 7] 1899 	and	a, #0xf8
   816F 47            [ 4] 1900 	ld	b, a
   8170 0E 00         [ 7] 1901 	ld	c, #0x00
   8172 09            [11] 1902 	add	hl, bc
   8173 DD 4E 04      [19] 1903 	ld	c,4 (ix)
   8176 DD 46 05      [19] 1904 	ld	b,5 (ix)
   8179 CB 78         [ 8] 1905 	bit	7, b
   817B 28 03         [12] 1906 	jr	Z,00128$
   817D 03            [ 6] 1907 	inc	bc
   817E 03            [ 6] 1908 	inc	bc
   817F 03            [ 6] 1909 	inc	bc
   8180                    1910 00128$:
   8180 CB 28         [ 8] 1911 	sra	b
   8182 CB 19         [ 8] 1912 	rr	c
   8184 CB 28         [ 8] 1913 	sra	b
   8186 CB 19         [ 8] 1914 	rr	c
   8188 09            [11] 1915 	add	hl, bc
                           1916 ;src/game/world.c:399: *pAddress &= 119;
   8189 4E            [ 7] 1917 	ld	c, (hl)
                           1918 ;src/game/world.c:401: if(nColor & 1)
   818A DD 7E 07      [19] 1919 	ld	a, 7 (ix)
   818D E6 01         [ 7] 1920 	and	a, #0x01
   818F DD 77 FE      [19] 1921 	ld	-2 (ix), a
                           1922 ;src/game/world.c:403: if(nColor & 2)
   8192 DD 7E 07      [19] 1923 	ld	a, 7 (ix)
   8195 E6 02         [ 7] 1924 	and	a, #0x02
   8197 DD 77 FF      [19] 1925 	ld	-1 (ix), a
                           1926 ;src/game/world.c:397: if(nPixel == 0)
   819A 7A            [ 4] 1927 	ld	a, d
   819B B3            [ 4] 1928 	or	a,e
   819C 20 18         [12] 1929 	jr	NZ,00124$
                           1930 ;src/game/world.c:399: *pAddress &= 119;
   819E 79            [ 4] 1931 	ld	a, c
   819F E6 77         [ 7] 1932 	and	a, #0x77
   81A1 77            [ 7] 1933 	ld	(hl), a
                           1934 ;src/game/world.c:401: if(nColor & 1)
   81A2 DD 7E FE      [19] 1935 	ld	a, -2 (ix)
   81A5 B7            [ 4] 1936 	or	a, a
   81A6 28 03         [12] 1937 	jr	Z,00102$
                           1938 ;src/game/world.c:402: *pAddress |= 128;
   81A8 CB FE         [15] 1939 	set	7, (hl)
   81AA 7E            [ 7] 1940 	ld	a, (hl)
   81AB                    1941 00102$:
                           1942 ;src/game/world.c:403: if(nColor & 2)
   81AB DD 7E FF      [19] 1943 	ld	a, -1 (ix)
   81AE B7            [ 4] 1944 	or	a, a
   81AF 28 56         [12] 1945 	jr	Z,00126$
                           1946 ;src/game/world.c:404: *pAddress |= 8;
   81B1 CB DE         [15] 1947 	set	3, (hl)
   81B3 7E            [ 7] 1948 	ld	a, (hl)
   81B4 18 51         [12] 1949 	jr	00126$
   81B6                    1950 00124$:
                           1951 ;src/game/world.c:406: else if(nPixel == 1)
   81B6 7B            [ 4] 1952 	ld	a, e
   81B7 3D            [ 4] 1953 	dec	a
   81B8 B2            [ 4] 1954 	or	a, d
   81B9 20 18         [12] 1955 	jr	NZ,00121$
                           1956 ;src/game/world.c:408: *pAddress &= 187;
   81BB 79            [ 4] 1957 	ld	a, c
   81BC E6 BB         [ 7] 1958 	and	a, #0xbb
   81BE 77            [ 7] 1959 	ld	(hl), a
                           1960 ;src/game/world.c:410: if(nColor & 1)
   81BF DD 7E FE      [19] 1961 	ld	a, -2 (ix)
   81C2 B7            [ 4] 1962 	or	a, a
   81C3 28 03         [12] 1963 	jr	Z,00106$
                           1964 ;src/game/world.c:411: *pAddress |= 64;
   81C5 CB F6         [15] 1965 	set	6, (hl)
   81C7 7E            [ 7] 1966 	ld	a, (hl)
   81C8                    1967 00106$:
                           1968 ;src/game/world.c:412: if(nColor & 2)
   81C8 DD 7E FF      [19] 1969 	ld	a, -1 (ix)
   81CB B7            [ 4] 1970 	or	a, a
   81CC 28 39         [12] 1971 	jr	Z,00126$
                           1972 ;src/game/world.c:413: *pAddress |= 4;
   81CE CB D6         [15] 1973 	set	2, (hl)
   81D0 7E            [ 7] 1974 	ld	a, (hl)
   81D1 18 34         [12] 1975 	jr	00126$
   81D3                    1976 00121$:
                           1977 ;src/game/world.c:415: else if(nPixel == 2)
   81D3 7B            [ 4] 1978 	ld	a, e
   81D4 D6 02         [ 7] 1979 	sub	a, #0x02
   81D6 B2            [ 4] 1980 	or	a, d
   81D7 20 18         [12] 1981 	jr	NZ,00118$
                           1982 ;src/game/world.c:417: *pAddress &= 221;
   81D9 79            [ 4] 1983 	ld	a, c
   81DA E6 DD         [ 7] 1984 	and	a, #0xdd
   81DC 77            [ 7] 1985 	ld	(hl), a
                           1986 ;src/game/world.c:419: if(nColor & 1)
   81DD DD 7E FE      [19] 1987 	ld	a, -2 (ix)
   81E0 B7            [ 4] 1988 	or	a, a
   81E1 28 03         [12] 1989 	jr	Z,00110$
                           1990 ;src/game/world.c:420: *pAddress |= 32;
   81E3 CB EE         [15] 1991 	set	5, (hl)
   81E5 7E            [ 7] 1992 	ld	a, (hl)
   81E6                    1993 00110$:
                           1994 ;src/game/world.c:421: if(nColor & 2)
   81E6 DD 7E FF      [19] 1995 	ld	a, -1 (ix)
   81E9 B7            [ 4] 1996 	or	a, a
   81EA 28 1B         [12] 1997 	jr	Z,00126$
                           1998 ;src/game/world.c:422: *pAddress |= 2;
   81EC CB CE         [15] 1999 	set	1, (hl)
   81EE 7E            [ 7] 2000 	ld	a, (hl)
   81EF 18 16         [12] 2001 	jr	00126$
   81F1                    2002 00118$:
                           2003 ;src/game/world.c:426: *pAddress &= 238;
   81F1 79            [ 4] 2004 	ld	a, c
   81F2 E6 EE         [ 7] 2005 	and	a, #0xee
   81F4 77            [ 7] 2006 	ld	(hl), a
                           2007 ;src/game/world.c:428: if(nColor & 1)
   81F5 DD 7E FE      [19] 2008 	ld	a, -2 (ix)
   81F8 B7            [ 4] 2009 	or	a, a
   81F9 28 03         [12] 2010 	jr	Z,00114$
                           2011 ;src/game/world.c:429: *pAddress |= 16;
   81FB CB E6         [15] 2012 	set	4, (hl)
   81FD 7E            [ 7] 2013 	ld	a, (hl)
   81FE                    2014 00114$:
                           2015 ;src/game/world.c:430: if(nColor & 2)
   81FE DD 7E FF      [19] 2016 	ld	a, -1 (ix)
   8201 B7            [ 4] 2017 	or	a, a
   8202 28 03         [12] 2018 	jr	Z,00126$
                           2019 ;src/game/world.c:431: *pAddress |= 1;
   8204 CB C6         [15] 2020 	set	0, (hl)
   8206 7E            [ 7] 2021 	ld	a, (hl)
   8207                    2022 00126$:
   8207 DD F9         [10] 2023 	ld	sp, ix
   8209 DD E1         [14] 2024 	pop	ix
   820B C9            [10] 2025 	ret
                           2026 ;src/game/world.c:435: u8 isPixelBlack(int nX, unsigned char nY)
                           2027 ;	---------------------------------
                           2028 ; Function isPixelBlack
                           2029 ; ---------------------------------
   820C                    2030 _isPixelBlack::
   820C DD E5         [15] 2031 	push	ix
   820E DD 21 00 00   [14] 2032 	ld	ix,#0
   8212 DD 39         [15] 2033 	add	ix,sp
                           2034 ;src/game/world.c:438: int nPixel = nX % 4;
   8214 21 04 00      [10] 2035 	ld	hl, #0x0004
   8217 E5            [11] 2036 	push	hl
   8218 DD 6E 04      [19] 2037 	ld	l,4 (ix)
   821B DD 66 05      [19] 2038 	ld	h,5 (ix)
   821E E5            [11] 2039 	push	hl
   821F CD 48 66      [17] 2040 	call	__modsint
   8222 F1            [10] 2041 	pop	af
   8223 F1            [10] 2042 	pop	af
   8224 4D            [ 4] 2043 	ld	c, l
   8225 44            [ 4] 2044 	ld	b, h
                           2045 ;src/game/world.c:441: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   8226 DD 7E 06      [19] 2046 	ld	a, 6 (ix)
   8229 0F            [ 4] 2047 	rrca
   822A 0F            [ 4] 2048 	rrca
   822B 0F            [ 4] 2049 	rrca
   822C E6 1F         [ 7] 2050 	and	a, #0x1f
   822E 5F            [ 4] 2051 	ld	e,a
   822F 16 00         [ 7] 2052 	ld	d,#0x00
   8231 6B            [ 4] 2053 	ld	l, e
   8232 62            [ 4] 2054 	ld	h, d
   8233 29            [11] 2055 	add	hl, hl
   8234 29            [11] 2056 	add	hl, hl
   8235 19            [11] 2057 	add	hl, de
   8236 29            [11] 2058 	add	hl, hl
   8237 29            [11] 2059 	add	hl, hl
   8238 29            [11] 2060 	add	hl, hl
   8239 29            [11] 2061 	add	hl, hl
   823A 11 00 C0      [10] 2062 	ld	de, #0xc000
   823D 19            [11] 2063 	add	hl, de
   823E DD 7E 06      [19] 2064 	ld	a, 6 (ix)
   8241 E6 07         [ 7] 2065 	and	a, #0x07
   8243 07            [ 4] 2066 	rlca
   8244 07            [ 4] 2067 	rlca
   8245 07            [ 4] 2068 	rlca
   8246 E6 F8         [ 7] 2069 	and	a, #0xf8
   8248 57            [ 4] 2070 	ld	d, a
   8249 1E 00         [ 7] 2071 	ld	e, #0x00
   824B 19            [11] 2072 	add	hl, de
   824C DD 5E 04      [19] 2073 	ld	e,4 (ix)
   824F DD 56 05      [19] 2074 	ld	d,5 (ix)
   8252 CB 7A         [ 8] 2075 	bit	7, d
   8254 28 03         [12] 2076 	jr	Z,00118$
   8256 13            [ 6] 2077 	inc	de
   8257 13            [ 6] 2078 	inc	de
   8258 13            [ 6] 2079 	inc	de
   8259                    2080 00118$:
   8259 CB 2A         [ 8] 2081 	sra	d
   825B CB 1B         [ 8] 2082 	rr	e
   825D CB 2A         [ 8] 2083 	sra	d
   825F CB 1B         [ 8] 2084 	rr	e
   8261 19            [11] 2085 	add	hl, de
                           2086 ;src/game/world.c:444: if(nPixel == 0 && !(*pAddress & 136)) 
   8262 78            [ 4] 2087 	ld	a, b
   8263 B1            [ 4] 2088 	or	a,c
   8264 20 09         [12] 2089 	jr	NZ,00113$
   8266 7E            [ 7] 2090 	ld	a, (hl)
   8267 E6 88         [ 7] 2091 	and	a, #0x88
   8269 20 04         [12] 2092 	jr	NZ,00113$
                           2093 ;src/game/world.c:445: return 1;
   826B 2E 01         [ 7] 2094 	ld	l, #0x01
   826D 18 2E         [12] 2095 	jr	00116$
   826F                    2096 00113$:
                           2097 ;src/game/world.c:446: else if(nPixel == 1 && !(*pAddress & 68))
   826F 79            [ 4] 2098 	ld	a, c
   8270 3D            [ 4] 2099 	dec	a
   8271 B0            [ 4] 2100 	or	a, b
   8272 20 09         [12] 2101 	jr	NZ,00109$
   8274 7E            [ 7] 2102 	ld	a, (hl)
   8275 E6 44         [ 7] 2103 	and	a, #0x44
   8277 20 04         [12] 2104 	jr	NZ,00109$
                           2105 ;src/game/world.c:447: return 1;
   8279 2E 01         [ 7] 2106 	ld	l, #0x01
   827B 18 20         [12] 2107 	jr	00116$
   827D                    2108 00109$:
                           2109 ;src/game/world.c:448: else if(nPixel == 2 && !(*pAddress & 34))
   827D 79            [ 4] 2110 	ld	a, c
   827E D6 02         [ 7] 2111 	sub	a, #0x02
   8280 B0            [ 4] 2112 	or	a, b
   8281 20 09         [12] 2113 	jr	NZ,00105$
   8283 7E            [ 7] 2114 	ld	a, (hl)
   8284 E6 22         [ 7] 2115 	and	a, #0x22
   8286 20 04         [12] 2116 	jr	NZ,00105$
                           2117 ;src/game/world.c:449: return 1;
   8288 2E 01         [ 7] 2118 	ld	l, #0x01
   828A 18 11         [12] 2119 	jr	00116$
   828C                    2120 00105$:
                           2121 ;src/game/world.c:450: else if(nPixel == 3 && !(*pAddress & 17))
   828C 79            [ 4] 2122 	ld	a, c
   828D D6 03         [ 7] 2123 	sub	a, #0x03
   828F B0            [ 4] 2124 	or	a, b
   8290 20 09         [12] 2125 	jr	NZ,00110$
   8292 7E            [ 7] 2126 	ld	a, (hl)
   8293 E6 11         [ 7] 2127 	and	a, #0x11
   8295 20 04         [12] 2128 	jr	NZ,00110$
                           2129 ;src/game/world.c:451: return 1;
   8297 2E 01         [ 7] 2130 	ld	l, #0x01
   8299 18 02         [12] 2131 	jr	00116$
   829B                    2132 00110$:
                           2133 ;src/game/world.c:453: return 0;
   829B 2E 00         [ 7] 2134 	ld	l, #0x00
   829D                    2135 00116$:
   829D DD E1         [14] 2136 	pop	ix
   829F C9            [10] 2137 	ret
                           2138 ;src/game/world.c:456: void drawTrains(u8 x_, u8 y_)
                           2139 ;	---------------------------------
                           2140 ; Function drawTrains
                           2141 ; ---------------------------------
   82A0                    2142 _drawTrains::
   82A0 DD E5         [15] 2143 	push	ix
   82A2 DD 21 00 00   [14] 2144 	ld	ix,#0
   82A6 DD 39         [15] 2145 	add	ix,sp
   82A8 21 F6 FF      [10] 2146 	ld	hl, #-10
   82AB 39            [11] 2147 	add	hl, sp
   82AC F9            [ 6] 2148 	ld	sp, hl
                           2149 ;src/game/world.c:464: for(i=0; i<nbTrainList; i++)
   82AD DD 7E 05      [19] 2150 	ld	a, 5 (ix)
   82B0 07            [ 4] 2151 	rlca
   82B1 07            [ 4] 2152 	rlca
   82B2 07            [ 4] 2153 	rlca
   82B3 07            [ 4] 2154 	rlca
   82B4 E6 F0         [ 7] 2155 	and	a, #0xf0
   82B6 DD 77 FB      [19] 2156 	ld	-5 (ix), a
   82B9 DD 36 F8 00   [19] 2157 	ld	-8 (ix), #0x00
   82BD                    2158 00126$:
   82BD 21 12 77      [10] 2159 	ld	hl, #_nbTrainList
   82C0 DD 7E F8      [19] 2160 	ld	a, -8 (ix)
   82C3 96            [ 7] 2161 	sub	a, (hl)
   82C4 D2 03 87      [10] 2162 	jp	NC, 00128$
                           2163 ;src/game/world.c:473: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   82C7 DD 4E F8      [19] 2164 	ld	c,-8 (ix)
   82CA 06 00         [ 7] 2165 	ld	b,#0x00
   82CC 69            [ 4] 2166 	ld	l, c
   82CD 60            [ 4] 2167 	ld	h, b
   82CE 29            [11] 2168 	add	hl, hl
   82CF 29            [11] 2169 	add	hl, hl
   82D0 09            [11] 2170 	add	hl, bc
   82D1 29            [11] 2171 	add	hl, hl
   82D2 09            [11] 2172 	add	hl, bc
   82D3 DD 75 F9      [19] 2173 	ld	-7 (ix), l
   82D6 DD 74 FA      [19] 2174 	ld	-6 (ix), h
   82D9 FD 2A 0D 77   [20] 2175 	ld	iy, (_trainList)
   82DD DD 5E F9      [19] 2176 	ld	e,-7 (ix)
   82E0 DD 56 FA      [19] 2177 	ld	d,-6 (ix)
   82E3 FD 19         [15] 2178 	add	iy, de
   82E5 FD E5         [15] 2179 	push	iy
   82E7 E1            [10] 2180 	pop	hl
   82E8 11 08 00      [10] 2181 	ld	de, #0x0008
   82EB 19            [11] 2182 	add	hl, de
   82EC 7E            [ 7] 2183 	ld	a, (hl)
   82ED DD 96 FB      [19] 2184 	sub	a, -5 (ix)
   82F0 DD 77 FC      [19] 2185 	ld	-4 (ix), a
   82F3 FD E5         [15] 2186 	push	iy
   82F5 E1            [10] 2187 	pop	hl
   82F6 11 07 00      [10] 2188 	ld	de, #0x0007
   82F9 19            [11] 2189 	add	hl, de
   82FA 4E            [ 7] 2190 	ld	c, (hl)
   82FB 06 00         [ 7] 2191 	ld	b, #0x00
   82FD DD 6E 04      [19] 2192 	ld	l, 4 (ix)
   8300 26 00         [ 7] 2193 	ld	h, #0x00
   8302 29            [11] 2194 	add	hl, hl
   8303 29            [11] 2195 	add	hl, hl
   8304 29            [11] 2196 	add	hl, hl
   8305 29            [11] 2197 	add	hl, hl
   8306 EB            [ 4] 2198 	ex	de,hl
   8307 79            [ 4] 2199 	ld	a, c
   8308 93            [ 4] 2200 	sub	a, e
   8309 4F            [ 4] 2201 	ld	c, a
   830A 78            [ 4] 2202 	ld	a, b
   830B 9A            [ 4] 2203 	sbc	a, d
   830C 47            [ 4] 2204 	ld	b, a
   830D D5            [11] 2205 	push	de
   830E 3E 03         [ 7] 2206 	ld	a, #0x03
   8310 F5            [11] 2207 	push	af
   8311 33            [ 6] 2208 	inc	sp
   8312 DD 7E FC      [19] 2209 	ld	a, -4 (ix)
   8315 F5            [11] 2210 	push	af
   8316 33            [ 6] 2211 	inc	sp
   8317 C5            [11] 2212 	push	bc
   8318 CD 33 81      [17] 2213 	call	_setPixel
   831B F1            [10] 2214 	pop	af
   831C F1            [10] 2215 	pop	af
   831D D1            [10] 2216 	pop	de
                           2217 ;src/game/world.c:474: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
   831E FD 2A 0D 77   [20] 2218 	ld	iy, (_trainList)
   8322 DD 4E F9      [19] 2219 	ld	c,-7 (ix)
   8325 DD 46 FA      [19] 2220 	ld	b,-6 (ix)
   8328 FD 09         [15] 2221 	add	iy, bc
   832A FD E5         [15] 2222 	push	iy
   832C E1            [10] 2223 	pop	hl
   832D 01 0A 00      [10] 2224 	ld	bc, #0x000a
   8330 09            [11] 2225 	add	hl, bc
   8331 7E            [ 7] 2226 	ld	a, (hl)
   8332 DD 96 FB      [19] 2227 	sub	a, -5 (ix)
   8335 4F            [ 4] 2228 	ld	c, a
   8336 FD 6E 09      [19] 2229 	ld	l, 9 (iy)
   8339 26 00         [ 7] 2230 	ld	h, #0x00
   833B BF            [ 4] 2231 	cp	a, a
   833C ED 52         [15] 2232 	sbc	hl, de
   833E D5            [11] 2233 	push	de
   833F 06 02         [ 7] 2234 	ld	b, #0x02
   8341 C5            [11] 2235 	push	bc
   8342 E5            [11] 2236 	push	hl
   8343 CD 33 81      [17] 2237 	call	_setPixel
   8346 F1            [10] 2238 	pop	af
   8347 F1            [10] 2239 	pop	af
   8348 D1            [10] 2240 	pop	de
                           2241 ;src/game/world.c:477: oldTrainX = trainList[i].animOldX;
   8349 FD 21 0D 77   [14] 2242 	ld	iy, #_trainList
   834D FD 7E 00      [19] 2243 	ld	a, 0 (iy)
   8350 DD 86 F9      [19] 2244 	add	a, -7 (ix)
   8353 4F            [ 4] 2245 	ld	c, a
   8354 FD 7E 01      [19] 2246 	ld	a, 1 (iy)
   8357 DD 8E FA      [19] 2247 	adc	a, -6 (ix)
   835A 47            [ 4] 2248 	ld	b, a
   835B FD 21 09 00   [14] 2249 	ld	iy, #0x0009
   835F FD 09         [15] 2250 	add	iy, bc
   8361 FD 7E 00      [19] 2251 	ld	a, 0 (iy)
   8364 DD 77 F7      [19] 2252 	ld	-9 (ix), a
                           2253 ;src/game/world.c:478: oldTrainY = trainList[i].animOldY;
   8367 69            [ 4] 2254 	ld	l, c
   8368 60            [ 4] 2255 	ld	h, b
   8369 C5            [11] 2256 	push	bc
   836A 01 0A 00      [10] 2257 	ld	bc, #0x000a
   836D 09            [11] 2258 	add	hl, bc
   836E C1            [10] 2259 	pop	bc
   836F 7E            [ 7] 2260 	ld	a, (hl)
   8370 DD 77 F6      [19] 2261 	ld	-10 (ix), a
                           2262 ;src/game/world.c:479: trainList[i].animOldX = trainList[i].animX;
   8373 69            [ 4] 2263 	ld	l, c
   8374 60            [ 4] 2264 	ld	h, b
   8375 01 07 00      [10] 2265 	ld	bc, #0x0007
   8378 09            [11] 2266 	add	hl, bc
   8379 4E            [ 7] 2267 	ld	c, (hl)
   837A FD 71 00      [19] 2268 	ld	0 (iy), c
                           2269 ;src/game/world.c:480: trainList[i].animOldY = trainList[i].animY;
   837D FD 21 0D 77   [14] 2270 	ld	iy, #_trainList
   8381 FD 7E 00      [19] 2271 	ld	a, 0 (iy)
   8384 DD 86 F9      [19] 2272 	add	a, -7 (ix)
   8387 6F            [ 4] 2273 	ld	l, a
   8388 FD 7E 01      [19] 2274 	ld	a, 1 (iy)
   838B DD 8E FA      [19] 2275 	adc	a, -6 (ix)
   838E 67            [ 4] 2276 	ld	h, a
   838F 7D            [ 4] 2277 	ld	a, l
   8390 C6 0A         [ 7] 2278 	add	a, #0x0a
   8392 4F            [ 4] 2279 	ld	c, a
   8393 7C            [ 4] 2280 	ld	a, h
   8394 CE 00         [ 7] 2281 	adc	a, #0x00
   8396 47            [ 4] 2282 	ld	b, a
   8397 E5            [11] 2283 	push	hl
   8398 FD E1         [14] 2284 	pop	iy
   839A FD 7E 08      [19] 2285 	ld	a, 8 (iy)
   839D 02            [ 7] 2286 	ld	(bc), a
                           2287 ;src/game/world.c:483: if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H +1,trainList[i].animY-y_*TILESIZE_H) )
   839E FD 2A 0D 77   [20] 2288 	ld	iy, (_trainList)
   83A2 DD 4E F9      [19] 2289 	ld	c,-7 (ix)
   83A5 DD 46 FA      [19] 2290 	ld	b,-6 (ix)
   83A8 FD 09         [15] 2291 	add	iy, bc
   83AA FD E5         [15] 2292 	push	iy
   83AC E1            [10] 2293 	pop	hl
   83AD 01 08 00      [10] 2294 	ld	bc, #0x0008
   83B0 09            [11] 2295 	add	hl, bc
   83B1 7E            [ 7] 2296 	ld	a, (hl)
   83B2 DD 96 FB      [19] 2297 	sub	a, -5 (ix)
   83B5 4F            [ 4] 2298 	ld	c, a
   83B6 FD 6E 07      [19] 2299 	ld	l, 7 (iy)
   83B9 26 00         [ 7] 2300 	ld	h, #0x00
   83BB BF            [ 4] 2301 	cp	a, a
   83BC ED 52         [15] 2302 	sbc	hl, de
   83BE 23            [ 6] 2303 	inc	hl
   83BF D5            [11] 2304 	push	de
   83C0 79            [ 4] 2305 	ld	a, c
   83C1 F5            [11] 2306 	push	af
   83C2 33            [ 6] 2307 	inc	sp
   83C3 E5            [11] 2308 	push	hl
   83C4 CD 0C 82      [17] 2309 	call	_isPixelBlack
   83C7 F1            [10] 2310 	pop	af
   83C8 33            [ 6] 2311 	inc	sp
   83C9 DD 75 FC      [19] 2312 	ld	-4 (ix), l
   83CC D1            [10] 2313 	pop	de
                           2314 ;src/game/world.c:473: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   83CD FD 21 0D 77   [14] 2315 	ld	iy, #_trainList
   83D1 FD 7E 00      [19] 2316 	ld	a, 0 (iy)
   83D4 DD 86 F9      [19] 2317 	add	a, -7 (ix)
   83D7 4F            [ 4] 2318 	ld	c, a
   83D8 FD 7E 01      [19] 2319 	ld	a, 1 (iy)
   83DB DD 8E FA      [19] 2320 	adc	a, -6 (ix)
   83DE 47            [ 4] 2321 	ld	b, a
                           2322 ;src/game/world.c:484: trainList[i].animX+=1;
   83DF 21 07 00      [10] 2323 	ld	hl, #0x0007
   83E2 09            [11] 2324 	add	hl,bc
   83E3 DD 75 FE      [19] 2325 	ld	-2 (ix), l
   83E6 DD 74 FF      [19] 2326 	ld	-1 (ix), h
   83E9 7E            [ 7] 2327 	ld	a, (hl)
   83EA DD 77 FD      [19] 2328 	ld	-3 (ix), a
                           2329 ;src/game/world.c:483: if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H +1,trainList[i].animY-y_*TILESIZE_H) )
   83ED DD 7E FC      [19] 2330 	ld	a, -4 (ix)
   83F0 B7            [ 4] 2331 	or	a, a
   83F1 28 0E         [12] 2332 	jr	Z,00122$
                           2333 ;src/game/world.c:484: trainList[i].animX+=1;
   83F3 DD 4E FD      [19] 2334 	ld	c, -3 (ix)
   83F6 0C            [ 4] 2335 	inc	c
   83F7 DD 6E FE      [19] 2336 	ld	l,-2 (ix)
   83FA DD 66 FF      [19] 2337 	ld	h,-1 (ix)
   83FD 71            [ 7] 2338 	ld	(hl), c
   83FE C3 83 86      [10] 2339 	jp	00123$
   8401                    2340 00122$:
                           2341 ;src/game/world.c:485: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   8401 C5            [11] 2342 	push	bc
   8402 FD E1         [14] 2343 	pop	iy
   8404 FD 7E 08      [19] 2344 	ld	a, 8 (iy)
   8407 DD 96 FB      [19] 2345 	sub	a, -5 (ix)
   840A 4F            [ 4] 2346 	ld	c, a
   840B DD 6E FD      [19] 2347 	ld	l, -3 (ix)
   840E 26 00         [ 7] 2348 	ld	h, #0x00
   8410 BF            [ 4] 2349 	cp	a, a
   8411 ED 52         [15] 2350 	sbc	hl, de
   8413 2B            [ 6] 2351 	dec	hl
   8414 D5            [11] 2352 	push	de
   8415 79            [ 4] 2353 	ld	a, c
   8416 F5            [11] 2354 	push	af
   8417 33            [ 6] 2355 	inc	sp
   8418 E5            [11] 2356 	push	hl
   8419 CD 0C 82      [17] 2357 	call	_isPixelBlack
   841C F1            [10] 2358 	pop	af
   841D 33            [ 6] 2359 	inc	sp
   841E 45            [ 4] 2360 	ld	b, l
   841F D1            [10] 2361 	pop	de
                           2362 ;src/game/world.c:473: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   8420 FD 21 0D 77   [14] 2363 	ld	iy, #_trainList
   8424 FD 7E 00      [19] 2364 	ld	a, 0 (iy)
   8427 DD 86 F9      [19] 2365 	add	a, -7 (ix)
   842A DD 77 FE      [19] 2366 	ld	-2 (ix), a
   842D FD 7E 01      [19] 2367 	ld	a, 1 (iy)
   8430 DD 8E FA      [19] 2368 	adc	a, -6 (ix)
   8433 DD 77 FF      [19] 2369 	ld	-1 (ix), a
                           2370 ;src/game/world.c:484: trainList[i].animX+=1;
   8436 FD 21 07 00   [14] 2371 	ld	iy, #0x0007
   843A C5            [11] 2372 	push	bc
   843B DD 4E FE      [19] 2373 	ld	c,-2 (ix)
   843E DD 46 FF      [19] 2374 	ld	b,-1 (ix)
   8441 FD 09         [15] 2375 	add	iy, bc
   8443 C1            [10] 2376 	pop	bc
   8444 FD 4E 00      [19] 2377 	ld	c, 0 (iy)
                           2378 ;src/game/world.c:485: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   8447 78            [ 4] 2379 	ld	a, b
   8448 B7            [ 4] 2380 	or	a, a
   8449 28 07         [12] 2381 	jr	Z,00119$
                           2382 ;src/game/world.c:486: trainList[i].animX-=1;
   844B 0D            [ 4] 2383 	dec	c
   844C FD 71 00      [19] 2384 	ld	0 (iy), c
   844F C3 83 86      [10] 2385 	jp	00123$
   8452                    2386 00119$:
                           2387 ;src/game/world.c:487: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H, trainList[i].animY-y_*TILESIZE_H + 1) )
   8452 DD 6E FE      [19] 2388 	ld	l,-2 (ix)
   8455 DD 66 FF      [19] 2389 	ld	h,-1 (ix)
   8458 C5            [11] 2390 	push	bc
   8459 01 08 00      [10] 2391 	ld	bc, #0x0008
   845C 09            [11] 2392 	add	hl, bc
   845D C1            [10] 2393 	pop	bc
   845E 6E            [ 7] 2394 	ld	l, (hl)
   845F 7D            [ 4] 2395 	ld	a, l
   8460 DD 96 FB      [19] 2396 	sub	a, -5 (ix)
   8463 67            [ 4] 2397 	ld	h, a
   8464 24            [ 4] 2398 	inc	h
   8465 06 00         [ 7] 2399 	ld	b, #0x00
   8467 79            [ 4] 2400 	ld	a, c
   8468 93            [ 4] 2401 	sub	a, e
   8469 4F            [ 4] 2402 	ld	c, a
   846A 78            [ 4] 2403 	ld	a, b
   846B 9A            [ 4] 2404 	sbc	a, d
   846C 47            [ 4] 2405 	ld	b, a
   846D D5            [11] 2406 	push	de
   846E E5            [11] 2407 	push	hl
   846F 33            [ 6] 2408 	inc	sp
   8470 C5            [11] 2409 	push	bc
   8471 CD 0C 82      [17] 2410 	call	_isPixelBlack
   8474 F1            [10] 2411 	pop	af
   8475 33            [ 6] 2412 	inc	sp
   8476 45            [ 4] 2413 	ld	b, l
   8477 D1            [10] 2414 	pop	de
                           2415 ;src/game/world.c:473: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   8478 FD 21 0D 77   [14] 2416 	ld	iy, #_trainList
   847C FD 7E 00      [19] 2417 	ld	a, 0 (iy)
   847F DD 86 F9      [19] 2418 	add	a, -7 (ix)
   8482 DD 77 FE      [19] 2419 	ld	-2 (ix), a
   8485 FD 7E 01      [19] 2420 	ld	a, 1 (iy)
   8488 DD 8E FA      [19] 2421 	adc	a, -6 (ix)
   848B DD 77 FF      [19] 2422 	ld	-1 (ix), a
                           2423 ;src/game/world.c:485: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   848E DD 7E FE      [19] 2424 	ld	a, -2 (ix)
   8491 C6 08         [ 7] 2425 	add	a, #0x08
   8493 6F            [ 4] 2426 	ld	l, a
   8494 DD 7E FF      [19] 2427 	ld	a, -1 (ix)
   8497 CE 00         [ 7] 2428 	adc	a, #0x00
   8499 67            [ 4] 2429 	ld	h, a
                           2430 ;src/game/world.c:488: trainList[i].animY+=1;
   849A 4E            [ 7] 2431 	ld	c, (hl)
                           2432 ;src/game/world.c:487: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H, trainList[i].animY-y_*TILESIZE_H + 1) )
   849B 78            [ 4] 2433 	ld	a, b
   849C B7            [ 4] 2434 	or	a, a
   849D 28 05         [12] 2435 	jr	Z,00116$
                           2436 ;src/game/world.c:488: trainList[i].animY+=1;
   849F 0C            [ 4] 2437 	inc	c
   84A0 71            [ 7] 2438 	ld	(hl), c
   84A1 C3 83 86      [10] 2439 	jp	00123$
   84A4                    2440 00116$:
                           2441 ;src/game/world.c:489: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H - 1) )
   84A4 79            [ 4] 2442 	ld	a, c
   84A5 DD 96 FB      [19] 2443 	sub	a, -5 (ix)
   84A8 4F            [ 4] 2444 	ld	c, a
   84A9 0D            [ 4] 2445 	dec	c
   84AA DD 6E FE      [19] 2446 	ld	l,-2 (ix)
   84AD DD 66 FF      [19] 2447 	ld	h,-1 (ix)
   84B0 C5            [11] 2448 	push	bc
   84B1 01 07 00      [10] 2449 	ld	bc, #0x0007
   84B4 09            [11] 2450 	add	hl, bc
   84B5 C1            [10] 2451 	pop	bc
   84B6 6E            [ 7] 2452 	ld	l, (hl)
   84B7 26 00         [ 7] 2453 	ld	h, #0x00
   84B9 BF            [ 4] 2454 	cp	a, a
   84BA ED 52         [15] 2455 	sbc	hl, de
   84BC D5            [11] 2456 	push	de
   84BD 79            [ 4] 2457 	ld	a, c
   84BE F5            [11] 2458 	push	af
   84BF 33            [ 6] 2459 	inc	sp
   84C0 E5            [11] 2460 	push	hl
   84C1 CD 0C 82      [17] 2461 	call	_isPixelBlack
   84C4 F1            [10] 2462 	pop	af
   84C5 33            [ 6] 2463 	inc	sp
   84C6 4D            [ 4] 2464 	ld	c, l
   84C7 D1            [10] 2465 	pop	de
                           2466 ;src/game/world.c:473: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   84C8 FD 21 0D 77   [14] 2467 	ld	iy, #_trainList
   84CC FD 7E 00      [19] 2468 	ld	a, 0 (iy)
   84CF DD 86 F9      [19] 2469 	add	a, -7 (ix)
   84D2 DD 77 FE      [19] 2470 	ld	-2 (ix), a
   84D5 FD 7E 01      [19] 2471 	ld	a, 1 (iy)
   84D8 DD 8E FA      [19] 2472 	adc	a, -6 (ix)
   84DB DD 77 FF      [19] 2473 	ld	-1 (ix), a
                           2474 ;src/game/world.c:485: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   84DE FD 21 08 00   [14] 2475 	ld	iy, #0x0008
   84E2 C5            [11] 2476 	push	bc
   84E3 DD 4E FE      [19] 2477 	ld	c,-2 (ix)
   84E6 DD 46 FF      [19] 2478 	ld	b,-1 (ix)
   84E9 FD 09         [15] 2479 	add	iy, bc
   84EB C1            [10] 2480 	pop	bc
                           2481 ;src/game/world.c:488: trainList[i].animY+=1;
   84EC FD 6E 00      [19] 2482 	ld	l, 0 (iy)
                           2483 ;src/game/world.c:489: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H - 1) )
   84EF 79            [ 4] 2484 	ld	a, c
   84F0 B7            [ 4] 2485 	or	a, a
   84F1 28 07         [12] 2486 	jr	Z,00113$
                           2487 ;src/game/world.c:490: trainList[i].animY-=1;
   84F3 2D            [ 4] 2488 	dec	l
   84F4 FD 75 00      [19] 2489 	ld	0 (iy), l
   84F7 C3 83 86      [10] 2490 	jp	00123$
   84FA                    2491 00113$:
                           2492 ;src/game/world.c:491: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H + 1) )
   84FA 7D            [ 4] 2493 	ld	a, l
   84FB DD 96 FB      [19] 2494 	sub	a, -5 (ix)
   84FE 4F            [ 4] 2495 	ld	c, a
   84FF 0C            [ 4] 2496 	inc	c
   8500 DD 6E FE      [19] 2497 	ld	l,-2 (ix)
   8503 DD 66 FF      [19] 2498 	ld	h,-1 (ix)
   8506 C5            [11] 2499 	push	bc
   8507 01 07 00      [10] 2500 	ld	bc, #0x0007
   850A 09            [11] 2501 	add	hl, bc
   850B C1            [10] 2502 	pop	bc
   850C 6E            [ 7] 2503 	ld	l, (hl)
   850D 26 00         [ 7] 2504 	ld	h, #0x00
   850F BF            [ 4] 2505 	cp	a, a
   8510 ED 52         [15] 2506 	sbc	hl, de
   8512 23            [ 6] 2507 	inc	hl
   8513 D5            [11] 2508 	push	de
   8514 79            [ 4] 2509 	ld	a, c
   8515 F5            [11] 2510 	push	af
   8516 33            [ 6] 2511 	inc	sp
   8517 E5            [11] 2512 	push	hl
   8518 CD 0C 82      [17] 2513 	call	_isPixelBlack
   851B F1            [10] 2514 	pop	af
   851C 33            [ 6] 2515 	inc	sp
   851D DD 75 FD      [19] 2516 	ld	-3 (ix), l
   8520 D1            [10] 2517 	pop	de
                           2518 ;src/game/world.c:473: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   8521 FD 21 0D 77   [14] 2519 	ld	iy, #_trainList
   8525 FD 7E 00      [19] 2520 	ld	a, 0 (iy)
   8528 DD 86 F9      [19] 2521 	add	a, -7 (ix)
   852B 4F            [ 4] 2522 	ld	c, a
   852C FD 7E 01      [19] 2523 	ld	a, 1 (iy)
   852F DD 8E FA      [19] 2524 	adc	a, -6 (ix)
   8532 47            [ 4] 2525 	ld	b, a
                           2526 ;src/game/world.c:484: trainList[i].animX+=1;
   8533 21 07 00      [10] 2527 	ld	hl, #0x0007
   8536 09            [11] 2528 	add	hl, bc
   8537 7E            [ 7] 2529 	ld	a, (hl)
   8538 DD 77 FE      [19] 2530 	ld	-2 (ix), a
                           2531 ;src/game/world.c:491: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H + 1) )
   853B DD 7E FD      [19] 2532 	ld	a, -3 (ix)
   853E B7            [ 4] 2533 	or	a, a
   853F 28 1D         [12] 2534 	jr	Z,00110$
                           2535 ;src/game/world.c:493: trainList[i].animX+=1;
   8541 DD 4E FE      [19] 2536 	ld	c, -2 (ix)
   8544 0C            [ 4] 2537 	inc	c
   8545 71            [ 7] 2538 	ld	(hl), c
                           2539 ;src/game/world.c:494: trainList[i].animY+=1;
   8546 FD 7E 00      [19] 2540 	ld	a, 0 (iy)
   8549 DD 86 F9      [19] 2541 	add	a, -7 (ix)
   854C 4F            [ 4] 2542 	ld	c, a
   854D FD 7E 01      [19] 2543 	ld	a, 1 (iy)
   8550 DD 8E FA      [19] 2544 	adc	a, -6 (ix)
   8553 47            [ 4] 2545 	ld	b, a
   8554 21 08 00      [10] 2546 	ld	hl, #0x0008
   8557 09            [11] 2547 	add	hl, bc
   8558 4E            [ 7] 2548 	ld	c, (hl)
   8559 0C            [ 4] 2549 	inc	c
   855A 71            [ 7] 2550 	ld	(hl), c
   855B C3 83 86      [10] 2551 	jp	00123$
   855E                    2552 00110$:
                           2553 ;src/game/world.c:496: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H - 1) )
   855E 69            [ 4] 2554 	ld	l, c
   855F 60            [ 4] 2555 	ld	h, b
   8560 01 08 00      [10] 2556 	ld	bc, #0x0008
   8563 09            [11] 2557 	add	hl, bc
   8564 7E            [ 7] 2558 	ld	a, (hl)
   8565 DD 96 FB      [19] 2559 	sub	a, -5 (ix)
   8568 4F            [ 4] 2560 	ld	c, a
   8569 0D            [ 4] 2561 	dec	c
   856A DD 6E FE      [19] 2562 	ld	l, -2 (ix)
   856D 26 00         [ 7] 2563 	ld	h, #0x00
   856F BF            [ 4] 2564 	cp	a, a
   8570 ED 52         [15] 2565 	sbc	hl, de
   8572 23            [ 6] 2566 	inc	hl
   8573 D5            [11] 2567 	push	de
   8574 79            [ 4] 2568 	ld	a, c
   8575 F5            [11] 2569 	push	af
   8576 33            [ 6] 2570 	inc	sp
   8577 E5            [11] 2571 	push	hl
   8578 CD 0C 82      [17] 2572 	call	_isPixelBlack
   857B F1            [10] 2573 	pop	af
   857C 33            [ 6] 2574 	inc	sp
   857D DD 75 FD      [19] 2575 	ld	-3 (ix), l
   8580 D1            [10] 2576 	pop	de
                           2577 ;src/game/world.c:473: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   8581 FD 21 0D 77   [14] 2578 	ld	iy, #_trainList
   8585 FD 7E 00      [19] 2579 	ld	a, 0 (iy)
   8588 DD 86 F9      [19] 2580 	add	a, -7 (ix)
   858B 4F            [ 4] 2581 	ld	c, a
   858C FD 7E 01      [19] 2582 	ld	a, 1 (iy)
   858F DD 8E FA      [19] 2583 	adc	a, -6 (ix)
   8592 47            [ 4] 2584 	ld	b, a
                           2585 ;src/game/world.c:484: trainList[i].animX+=1;
   8593 FD 21 07 00   [14] 2586 	ld	iy, #0x0007
   8597 FD 09         [15] 2587 	add	iy, bc
   8599 FD 7E 00      [19] 2588 	ld	a, 0 (iy)
   859C DD 77 FE      [19] 2589 	ld	-2 (ix), a
                           2590 ;src/game/world.c:496: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H - 1) )
   859F DD 7E FD      [19] 2591 	ld	a, -3 (ix)
   85A2 B7            [ 4] 2592 	or	a, a
   85A3 28 23         [12] 2593 	jr	Z,00107$
                           2594 ;src/game/world.c:498: trainList[i].animX+=1;
   85A5 DD 4E FE      [19] 2595 	ld	c, -2 (ix)
   85A8 0C            [ 4] 2596 	inc	c
   85A9 FD 71 00      [19] 2597 	ld	0 (iy), c
                           2598 ;src/game/world.c:499: trainList[i].animY-=1;
   85AC FD 21 0D 77   [14] 2599 	ld	iy, #_trainList
   85B0 FD 7E 00      [19] 2600 	ld	a, 0 (iy)
   85B3 DD 86 F9      [19] 2601 	add	a, -7 (ix)
   85B6 4F            [ 4] 2602 	ld	c, a
   85B7 FD 7E 01      [19] 2603 	ld	a, 1 (iy)
   85BA DD 8E FA      [19] 2604 	adc	a, -6 (ix)
   85BD 47            [ 4] 2605 	ld	b, a
   85BE 21 08 00      [10] 2606 	ld	hl, #0x0008
   85C1 09            [11] 2607 	add	hl, bc
   85C2 4E            [ 7] 2608 	ld	c, (hl)
   85C3 0D            [ 4] 2609 	dec	c
   85C4 71            [ 7] 2610 	ld	(hl), c
   85C5 C3 83 86      [10] 2611 	jp	00123$
   85C8                    2612 00107$:
                           2613 ;src/game/world.c:501: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H-1,trainList[i].animY-y_*TILESIZE_H + 1) )
   85C8 69            [ 4] 2614 	ld	l, c
   85C9 60            [ 4] 2615 	ld	h, b
   85CA 01 08 00      [10] 2616 	ld	bc, #0x0008
   85CD 09            [11] 2617 	add	hl, bc
   85CE 7E            [ 7] 2618 	ld	a, (hl)
   85CF DD 96 FB      [19] 2619 	sub	a, -5 (ix)
   85D2 4F            [ 4] 2620 	ld	c, a
   85D3 0C            [ 4] 2621 	inc	c
   85D4 DD 6E FE      [19] 2622 	ld	l, -2 (ix)
   85D7 26 00         [ 7] 2623 	ld	h, #0x00
   85D9 BF            [ 4] 2624 	cp	a, a
   85DA ED 52         [15] 2625 	sbc	hl, de
   85DC 2B            [ 6] 2626 	dec	hl
   85DD D5            [11] 2627 	push	de
   85DE 79            [ 4] 2628 	ld	a, c
   85DF F5            [11] 2629 	push	af
   85E0 33            [ 6] 2630 	inc	sp
   85E1 E5            [11] 2631 	push	hl
   85E2 CD 0C 82      [17] 2632 	call	_isPixelBlack
   85E5 F1            [10] 2633 	pop	af
   85E6 33            [ 6] 2634 	inc	sp
   85E7 DD 75 FD      [19] 2635 	ld	-3 (ix), l
   85EA D1            [10] 2636 	pop	de
                           2637 ;src/game/world.c:473: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   85EB FD 21 0D 77   [14] 2638 	ld	iy, #_trainList
   85EF FD 7E 00      [19] 2639 	ld	a, 0 (iy)
   85F2 DD 86 F9      [19] 2640 	add	a, -7 (ix)
   85F5 4F            [ 4] 2641 	ld	c, a
   85F6 FD 7E 01      [19] 2642 	ld	a, 1 (iy)
   85F9 DD 8E FA      [19] 2643 	adc	a, -6 (ix)
   85FC 47            [ 4] 2644 	ld	b, a
                           2645 ;src/game/world.c:484: trainList[i].animX+=1;
   85FD FD 21 07 00   [14] 2646 	ld	iy, #0x0007
   8601 FD 09         [15] 2647 	add	iy, bc
   8603 FD 7E 00      [19] 2648 	ld	a, 0 (iy)
   8606 DD 77 FE      [19] 2649 	ld	-2 (ix), a
                           2650 ;src/game/world.c:501: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H-1,trainList[i].animY-y_*TILESIZE_H + 1) )
   8609 DD 7E FD      [19] 2651 	ld	a, -3 (ix)
   860C B7            [ 4] 2652 	or	a, a
   860D 28 22         [12] 2653 	jr	Z,00104$
                           2654 ;src/game/world.c:503: trainList[i].animX-=1;
   860F DD 4E FE      [19] 2655 	ld	c, -2 (ix)
   8612 0D            [ 4] 2656 	dec	c
   8613 FD 71 00      [19] 2657 	ld	0 (iy), c
                           2658 ;src/game/world.c:504: trainList[i].animY+=1;
   8616 FD 21 0D 77   [14] 2659 	ld	iy, #_trainList
   861A FD 7E 00      [19] 2660 	ld	a, 0 (iy)
   861D DD 86 F9      [19] 2661 	add	a, -7 (ix)
   8620 4F            [ 4] 2662 	ld	c, a
   8621 FD 7E 01      [19] 2663 	ld	a, 1 (iy)
   8624 DD 8E FA      [19] 2664 	adc	a, -6 (ix)
   8627 47            [ 4] 2665 	ld	b, a
   8628 21 08 00      [10] 2666 	ld	hl, #0x0008
   862B 09            [11] 2667 	add	hl, bc
   862C 4E            [ 7] 2668 	ld	c, (hl)
   862D 0C            [ 4] 2669 	inc	c
   862E 71            [ 7] 2670 	ld	(hl), c
   862F 18 52         [12] 2671 	jr	00123$
   8631                    2672 00104$:
                           2673 ;src/game/world.c:506: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H-1,trainList[i].animY-y_*TILESIZE_H - 1) )
   8631 69            [ 4] 2674 	ld	l, c
   8632 60            [ 4] 2675 	ld	h, b
   8633 01 08 00      [10] 2676 	ld	bc, #0x0008
   8636 09            [11] 2677 	add	hl, bc
   8637 7E            [ 7] 2678 	ld	a, (hl)
   8638 DD 96 FB      [19] 2679 	sub	a, -5 (ix)
   863B 4F            [ 4] 2680 	ld	c, a
   863C 0D            [ 4] 2681 	dec	c
   863D DD 6E FE      [19] 2682 	ld	l, -2 (ix)
   8640 26 00         [ 7] 2683 	ld	h, #0x00
   8642 BF            [ 4] 2684 	cp	a, a
   8643 ED 52         [15] 2685 	sbc	hl, de
   8645 2B            [ 6] 2686 	dec	hl
   8646 D5            [11] 2687 	push	de
   8647 79            [ 4] 2688 	ld	a, c
   8648 F5            [11] 2689 	push	af
   8649 33            [ 6] 2690 	inc	sp
   864A E5            [11] 2691 	push	hl
   864B CD 0C 82      [17] 2692 	call	_isPixelBlack
   864E F1            [10] 2693 	pop	af
   864F 33            [ 6] 2694 	inc	sp
   8650 D1            [10] 2695 	pop	de
   8651 7D            [ 4] 2696 	ld	a, l
   8652 B7            [ 4] 2697 	or	a, a
   8653 28 2E         [12] 2698 	jr	Z,00123$
                           2699 ;src/game/world.c:508: trainList[i].animX-=1;
   8655 FD 21 0D 77   [14] 2700 	ld	iy, #_trainList
   8659 FD 7E 00      [19] 2701 	ld	a, 0 (iy)
   865C DD 86 F9      [19] 2702 	add	a, -7 (ix)
   865F 4F            [ 4] 2703 	ld	c, a
   8660 FD 7E 01      [19] 2704 	ld	a, 1 (iy)
   8663 DD 8E FA      [19] 2705 	adc	a, -6 (ix)
   8666 47            [ 4] 2706 	ld	b, a
   8667 21 07 00      [10] 2707 	ld	hl, #0x0007
   866A 09            [11] 2708 	add	hl, bc
   866B 4E            [ 7] 2709 	ld	c, (hl)
   866C 0D            [ 4] 2710 	dec	c
   866D 71            [ 7] 2711 	ld	(hl), c
                           2712 ;src/game/world.c:509: trainList[i].animY-=1;
   866E FD 7E 00      [19] 2713 	ld	a, 0 (iy)
   8671 DD 86 F9      [19] 2714 	add	a, -7 (ix)
   8674 4F            [ 4] 2715 	ld	c, a
   8675 FD 7E 01      [19] 2716 	ld	a, 1 (iy)
   8678 DD 8E FA      [19] 2717 	adc	a, -6 (ix)
   867B 47            [ 4] 2718 	ld	b, a
   867C 21 08 00      [10] 2719 	ld	hl, #0x0008
   867F 09            [11] 2720 	add	hl, bc
   8680 4E            [ 7] 2721 	ld	c, (hl)
   8681 0D            [ 4] 2722 	dec	c
   8682 71            [ 7] 2723 	ld	(hl), c
   8683                    2724 00123$:
                           2725 ;src/game/world.c:513: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   8683 FD 2A 0D 77   [20] 2726 	ld	iy, (_trainList)
   8687 DD 4E F9      [19] 2727 	ld	c,-7 (ix)
   868A DD 46 FA      [19] 2728 	ld	b,-6 (ix)
   868D FD 09         [15] 2729 	add	iy, bc
   868F FD E5         [15] 2730 	push	iy
   8691 E1            [10] 2731 	pop	hl
   8692 01 08 00      [10] 2732 	ld	bc, #0x0008
   8695 09            [11] 2733 	add	hl, bc
   8696 7E            [ 7] 2734 	ld	a, (hl)
   8697 DD 96 FB      [19] 2735 	sub	a, -5 (ix)
   869A 4F            [ 4] 2736 	ld	c, a
   869B FD 6E 07      [19] 2737 	ld	l, 7 (iy)
   869E 26 00         [ 7] 2738 	ld	h, #0x00
   86A0 BF            [ 4] 2739 	cp	a, a
   86A1 ED 52         [15] 2740 	sbc	hl, de
   86A3 D5            [11] 2741 	push	de
   86A4 06 03         [ 7] 2742 	ld	b, #0x03
   86A6 C5            [11] 2743 	push	bc
   86A7 E5            [11] 2744 	push	hl
   86A8 CD 33 81      [17] 2745 	call	_setPixel
   86AB F1            [10] 2746 	pop	af
   86AC F1            [10] 2747 	pop	af
   86AD D1            [10] 2748 	pop	de
                           2749 ;src/game/world.c:514: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
   86AE E5            [11] 2750 	push	hl
   86AF DD 6E F9      [19] 2751 	ld	l, -7 (ix)
   86B2 DD 66 FA      [19] 2752 	ld	h, -6 (ix)
   86B5 E5            [11] 2753 	push	hl
   86B6 FD E1         [14] 2754 	pop	iy
   86B8 E1            [10] 2755 	pop	hl
   86B9 ED 4B 0D 77   [20] 2756 	ld	bc, (_trainList)
   86BD FD 09         [15] 2757 	add	iy, bc
   86BF FD E5         [15] 2758 	push	iy
   86C1 E1            [10] 2759 	pop	hl
   86C2 01 0A 00      [10] 2760 	ld	bc, #0x000a
   86C5 09            [11] 2761 	add	hl, bc
   86C6 7E            [ 7] 2762 	ld	a, (hl)
   86C7 DD 96 FB      [19] 2763 	sub	a, -5 (ix)
   86CA 4F            [ 4] 2764 	ld	c, a
   86CB FD E5         [15] 2765 	push	iy
   86CD E1            [10] 2766 	pop	hl
   86CE C5            [11] 2767 	push	bc
   86CF 01 09 00      [10] 2768 	ld	bc, #0x0009
   86D2 09            [11] 2769 	add	hl, bc
   86D3 C1            [10] 2770 	pop	bc
   86D4 6E            [ 7] 2771 	ld	l, (hl)
   86D5 26 00         [ 7] 2772 	ld	h, #0x00
   86D7 BF            [ 4] 2773 	cp	a, a
   86D8 ED 52         [15] 2774 	sbc	hl, de
   86DA D5            [11] 2775 	push	de
   86DB 06 02         [ 7] 2776 	ld	b, #0x02
   86DD C5            [11] 2777 	push	bc
   86DE E5            [11] 2778 	push	hl
   86DF CD 33 81      [17] 2779 	call	_setPixel
   86E2 F1            [10] 2780 	pop	af
   86E3 F1            [10] 2781 	pop	af
   86E4 D1            [10] 2782 	pop	de
                           2783 ;src/game/world.c:515: setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
   86E5 DD 7E F6      [19] 2784 	ld	a, -10 (ix)
   86E8 DD 96 FB      [19] 2785 	sub	a, -5 (ix)
   86EB 4F            [ 4] 2786 	ld	c, a
   86EC DD 6E F7      [19] 2787 	ld	l, -9 (ix)
   86EF 26 00         [ 7] 2788 	ld	h, #0x00
   86F1 BF            [ 4] 2789 	cp	a, a
   86F2 ED 52         [15] 2790 	sbc	hl, de
   86F4 AF            [ 4] 2791 	xor	a, a
   86F5 47            [ 4] 2792 	ld	b, a
   86F6 C5            [11] 2793 	push	bc
   86F7 E5            [11] 2794 	push	hl
   86F8 CD 33 81      [17] 2795 	call	_setPixel
   86FB F1            [10] 2796 	pop	af
   86FC F1            [10] 2797 	pop	af
                           2798 ;src/game/world.c:464: for(i=0; i<nbTrainList; i++)
   86FD DD 34 F8      [23] 2799 	inc	-8 (ix)
   8700 C3 BD 82      [10] 2800 	jp	00126$
   8703                    2801 00128$:
   8703 DD F9         [10] 2802 	ld	sp, ix
   8705 DD E1         [14] 2803 	pop	ix
   8707 C9            [10] 2804 	ret
                           2805 	.area _CODE
                           2806 	.area _INITIALIZER
                           2807 	.area _CABS (ABS)
