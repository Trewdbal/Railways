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
                             16 	.globl _cpct_drawSprite
                             17 	.globl _cpct_getBit
                             18 	.globl _drawCursor
                             19 	.globl _patternTile
                             20 	.globl _generateWorld
                             21 	.globl _drawTile
                             22 	.globl _drawScrolls
                             23 	.globl _drawWorld
                             24 	.globl _setTrainHeading
                             25 	.globl _setPixel
                             26 	.globl _isPixelBlack
                             27 	.globl _drawTrains
                             28 ;--------------------------------------------------------
                             29 ; special function registers
                             30 ;--------------------------------------------------------
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _DATA
                             35 ;--------------------------------------------------------
                             36 ; ram data
                             37 ;--------------------------------------------------------
                             38 	.area _INITIALIZED
                             39 ;--------------------------------------------------------
                             40 ; absolute external ram data
                             41 ;--------------------------------------------------------
                             42 	.area _DABS (ABS)
                             43 ;--------------------------------------------------------
                             44 ; global & static initialisations
                             45 ;--------------------------------------------------------
                             46 	.area _HOME
                             47 	.area _GSINIT
                             48 	.area _GSFINAL
                             49 	.area _GSINIT
                             50 ;--------------------------------------------------------
                             51 ; Home
                             52 ;--------------------------------------------------------
                             53 	.area _HOME
                             54 	.area _HOME
                             55 ;--------------------------------------------------------
                             56 ; code
                             57 ;--------------------------------------------------------
                             58 	.area _CODE
                             59 ;src/game/world.c:3: cpctm_createTransparentMaskTable(g_masktable, 0x0100, M1, 0);
                             60 ;	---------------------------------
                             61 ; Function dummy_cpct_transparentMaskTable0M1_container
                             62 ; ---------------------------------
   4ED4                      63 _dummy_cpct_transparentMaskTable0M1_container::
                             64 	.area _g_masktable_ (ABS) 
   0100                      65 	.org 0x0100 
   0100                      66 	 _g_masktable::
   0100 FF EE DD CC BB AA    67 	.db 0xFF, 0xEE, 0xDD, 0xCC, 0xBB, 0xAA, 0x99, 0x88 
        99 88
   0108 77 66 55 44 33 22    68 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0110 EE EE CC CC AA AA    69 	.db 0xEE, 0xEE, 0xCC, 0xCC, 0xAA, 0xAA, 0x88, 0x88 
        88 88
   0118 66 66 44 44 22 22    70 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   0120 DD CC DD CC 99 88    71 	.db 0xDD, 0xCC, 0xDD, 0xCC, 0x99, 0x88, 0x99, 0x88 
        99 88
   0128 55 44 55 44 11 00    72 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   0130 CC CC CC CC 88 88    73 	.db 0xCC, 0xCC, 0xCC, 0xCC, 0x88, 0x88, 0x88, 0x88 
        88 88
   0138 44 44 44 44 00 00    74 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   0140 BB AA 99 88 BB AA    75 	.db 0xBB, 0xAA, 0x99, 0x88, 0xBB, 0xAA, 0x99, 0x88 
        99 88
   0148 33 22 11 00 33 22    76 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   0150 AA AA 88 88 AA AA    77 	.db 0xAA, 0xAA, 0x88, 0x88, 0xAA, 0xAA, 0x88, 0x88 
        88 88
   0158 22 22 00 00 22 22    78 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   0160 99 88 99 88 99 88    79 	.db 0x99, 0x88, 0x99, 0x88, 0x99, 0x88, 0x99, 0x88 
        99 88
   0168 11 00 11 00 11 00    80 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   0170 88 88 88 88 88 88    81 	.db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 
        88 88
   0178 00 00 00 00 00 00    82 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0180 77 66 55 44 33 22    83 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0188 77 66 55 44 33 22    84 	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
        11 00
   0190 66 66 44 44 22 22    85 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   0198 66 66 44 44 22 22    86 	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
        00 00
   01A0 55 44 55 44 11 00    87 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   01A8 55 44 55 44 11 00    88 	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
        11 00
   01B0 44 44 44 44 00 00    89 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B8 44 44 44 44 00 00    90 	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C0 33 22 11 00 33 22    91 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   01C8 33 22 11 00 33 22    92 	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
        11 00
   01D0 22 22 00 00 22 22    93 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   01D8 22 22 00 00 22 22    94 	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
        00 00
   01E0 11 00 11 00 11 00    95 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   01E8 11 00 11 00 11 00    96 	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
        11 00
   01F0 00 00 00 00 00 00    97 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F8 00 00 00 00 00 00    98 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
                             99 	.area _CSEG (REL, CON) 
                            100 ;src/game/world.c:5: void drawCursor(u8 x, u8 y)
                            101 ;	---------------------------------
                            102 ; Function drawCursor
                            103 ; ---------------------------------
   7793                     104 _drawCursor::
   7793 DD E5         [15]  105 	push	ix
   7795 DD 21 00 00   [14]  106 	ld	ix,#0
   7799 DD 39         [15]  107 	add	ix,sp
   779B 21 F9 FF      [10]  108 	ld	hl, #-7
   779E 39            [11]  109 	add	hl, sp
   779F F9            [ 6]  110 	ld	sp, hl
                            111 ;src/game/world.c:8: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   77A0 DD 7E 05      [19]  112 	ld	a, 5 (ix)
   77A3 07            [ 4]  113 	rlca
   77A4 07            [ 4]  114 	rlca
   77A5 07            [ 4]  115 	rlca
   77A6 07            [ 4]  116 	rlca
   77A7 E6 F0         [ 7]  117 	and	a, #0xf0
   77A9 DD 77 FF      [19]  118 	ld	-1 (ix), a
   77AC DD 7E 04      [19]  119 	ld	a, 4 (ix)
   77AF 87            [ 4]  120 	add	a, a
   77B0 87            [ 4]  121 	add	a, a
   77B1 47            [ 4]  122 	ld	b, a
   77B2 DD 7E FF      [19]  123 	ld	a, -1 (ix)
   77B5 F5            [11]  124 	push	af
   77B6 33            [ 6]  125 	inc	sp
   77B7 C5            [11]  126 	push	bc
   77B8 33            [ 6]  127 	inc	sp
   77B9 21 00 C0      [10]  128 	ld	hl, #0xc000
   77BC E5            [11]  129 	push	hl
   77BD CD D0 66      [17]  130 	call	_cpct_getScreenPtr
   77C0 4D            [ 4]  131 	ld	c, l
   77C1 44            [ 4]  132 	ld	b, h
                            133 ;src/game/world.c:11: switch(CURSOR_MODE)
   77C2 3E 11         [ 7]  134 	ld	a, #0x11
   77C4 FD 21 8C 77   [14]  135 	ld	iy, #_CURSOR_MODE
   77C8 FD 96 00      [19]  136 	sub	a, 0 (iy)
   77CB DA F5 78      [10]  137 	jp	C, 00118$
   77CE FD 5E 00      [19]  138 	ld	e, 0 (iy)
   77D1 16 00         [ 7]  139 	ld	d, #0x00
   77D3 21 DA 77      [10]  140 	ld	hl, #00126$
   77D6 19            [11]  141 	add	hl, de
   77D7 19            [11]  142 	add	hl, de
   77D8 19            [11]  143 	add	hl, de
   77D9 E9            [ 4]  144 	jp	(hl)
   77DA                     145 00126$:
   77DA C3 F5 78      [10]  146 	jp	00118$
   77DD C3 F5 78      [10]  147 	jp	00118$
   77E0 C3 10 78      [10]  148 	jp	00102$
   77E3 C3 1F 78      [10]  149 	jp	00103$
   77E6 C3 2E 78      [10]  150 	jp	00104$
   77E9 C3 3D 78      [10]  151 	jp	00105$
   77EC C3 4C 78      [10]  152 	jp	00106$
   77EF C3 5B 78      [10]  153 	jp	00107$
   77F2 C3 6A 78      [10]  154 	jp	00108$
   77F5 C3 79 78      [10]  155 	jp	00109$
   77F8 C3 87 78      [10]  156 	jp	00110$
   77FB C3 95 78      [10]  157 	jp	00111$
   77FE C3 A3 78      [10]  158 	jp	00112$
   7801 C3 B1 78      [10]  159 	jp	00113$
   7804 C3 BF 78      [10]  160 	jp	00114$
   7807 C3 CD 78      [10]  161 	jp	00115$
   780A C3 DB 78      [10]  162 	jp	00116$
   780D C3 E9 78      [10]  163 	jp	00117$
                            164 ;src/game/world.c:16: case T_SSNS:
   7810                     165 00102$:
                            166 ;src/game/world.c:17: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   7810 21 04 10      [10]  167 	ld	hl, #0x1004
   7813 E5            [11]  168 	push	hl
   7814 C5            [11]  169 	push	bc
   7815 21 54 4A      [10]  170 	ld	hl, #_station_small_ns
   7818 E5            [11]  171 	push	hl
   7819 CD 0B 62      [17]  172 	call	_cpct_drawSprite
                            173 ;src/game/world.c:18: break;
   781C C3 F5 78      [10]  174 	jp	00118$
                            175 ;src/game/world.c:19: case T_SSEW:
   781F                     176 00103$:
                            177 ;src/game/world.c:20: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   781F 21 04 10      [10]  178 	ld	hl, #0x1004
   7822 E5            [11]  179 	push	hl
   7823 C5            [11]  180 	push	bc
   7824 21 94 4A      [10]  181 	ld	hl, #_station_small_ew
   7827 E5            [11]  182 	push	hl
   7828 CD 0B 62      [17]  183 	call	_cpct_drawSprite
                            184 ;src/game/world.c:21: break;
   782B C3 F5 78      [10]  185 	jp	00118$
                            186 ;src/game/world.c:22: case T_SMNS:
   782E                     187 00104$:
                            188 ;src/game/world.c:23: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   782E 21 04 10      [10]  189 	ld	hl, #0x1004
   7831 E5            [11]  190 	push	hl
   7832 C5            [11]  191 	push	bc
   7833 21 D4 4A      [10]  192 	ld	hl, #_station_medium_ns
   7836 E5            [11]  193 	push	hl
   7837 CD 0B 62      [17]  194 	call	_cpct_drawSprite
                            195 ;src/game/world.c:24: break;
   783A C3 F5 78      [10]  196 	jp	00118$
                            197 ;src/game/world.c:25: case T_SMEW:
   783D                     198 00105$:
                            199 ;src/game/world.c:26: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   783D 21 04 10      [10]  200 	ld	hl, #0x1004
   7840 E5            [11]  201 	push	hl
   7841 C5            [11]  202 	push	bc
   7842 21 14 4B      [10]  203 	ld	hl, #_station_medium_ew
   7845 E5            [11]  204 	push	hl
   7846 CD 0B 62      [17]  205 	call	_cpct_drawSprite
                            206 ;src/game/world.c:27: break;
   7849 C3 F5 78      [10]  207 	jp	00118$
                            208 ;src/game/world.c:28: case T_SLNS:
   784C                     209 00106$:
                            210 ;src/game/world.c:29: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   784C 21 04 10      [10]  211 	ld	hl, #0x1004
   784F E5            [11]  212 	push	hl
   7850 C5            [11]  213 	push	bc
   7851 21 54 4B      [10]  214 	ld	hl, #_station_large_ns
   7854 E5            [11]  215 	push	hl
   7855 CD 0B 62      [17]  216 	call	_cpct_drawSprite
                            217 ;src/game/world.c:30: break;
   7858 C3 F5 78      [10]  218 	jp	00118$
                            219 ;src/game/world.c:31: case T_SLEW:
   785B                     220 00107$:
                            221 ;src/game/world.c:32: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   785B 21 04 10      [10]  222 	ld	hl, #0x1004
   785E E5            [11]  223 	push	hl
   785F C5            [11]  224 	push	bc
   7860 21 94 4B      [10]  225 	ld	hl, #_station_large_ew
   7863 E5            [11]  226 	push	hl
   7864 CD 0B 62      [17]  227 	call	_cpct_drawSprite
                            228 ;src/game/world.c:33: break;
   7867 C3 F5 78      [10]  229 	jp	00118$
                            230 ;src/game/world.c:34: case T_REW:
   786A                     231 00108$:
                            232 ;src/game/world.c:35: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   786A 21 04 10      [10]  233 	ld	hl, #0x1004
   786D E5            [11]  234 	push	hl
   786E C5            [11]  235 	push	bc
   786F 21 D4 4B      [10]  236 	ld	hl, #_rail_ew
   7872 E5            [11]  237 	push	hl
   7873 CD 0B 62      [17]  238 	call	_cpct_drawSprite
                            239 ;src/game/world.c:36: break;
   7876 C3 F5 78      [10]  240 	jp	00118$
                            241 ;src/game/world.c:37: case T_RNS:
   7879                     242 00109$:
                            243 ;src/game/world.c:38: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   7879 21 04 10      [10]  244 	ld	hl, #0x1004
   787C E5            [11]  245 	push	hl
   787D C5            [11]  246 	push	bc
   787E 21 14 4C      [10]  247 	ld	hl, #_rail_ns
   7881 E5            [11]  248 	push	hl
   7882 CD 0B 62      [17]  249 	call	_cpct_drawSprite
                            250 ;src/game/world.c:39: break;
   7885 18 6E         [12]  251 	jr	00118$
                            252 ;src/game/world.c:40: case T_REN:
   7887                     253 00110$:
                            254 ;src/game/world.c:41: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   7887 21 04 10      [10]  255 	ld	hl, #0x1004
   788A E5            [11]  256 	push	hl
   788B C5            [11]  257 	push	bc
   788C 21 54 4C      [10]  258 	ld	hl, #_rail_en
   788F E5            [11]  259 	push	hl
   7890 CD 0B 62      [17]  260 	call	_cpct_drawSprite
                            261 ;src/game/world.c:42: break;
   7893 18 60         [12]  262 	jr	00118$
                            263 ;src/game/world.c:43: case T_RES:
   7895                     264 00111$:
                            265 ;src/game/world.c:44: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   7895 21 04 10      [10]  266 	ld	hl, #0x1004
   7898 E5            [11]  267 	push	hl
   7899 C5            [11]  268 	push	bc
   789A 21 94 4C      [10]  269 	ld	hl, #_rail_es
   789D E5            [11]  270 	push	hl
   789E CD 0B 62      [17]  271 	call	_cpct_drawSprite
                            272 ;src/game/world.c:45: break;
   78A1 18 52         [12]  273 	jr	00118$
                            274 ;src/game/world.c:46: case T_RWN:
   78A3                     275 00112$:
                            276 ;src/game/world.c:47: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   78A3 21 04 10      [10]  277 	ld	hl, #0x1004
   78A6 E5            [11]  278 	push	hl
   78A7 C5            [11]  279 	push	bc
   78A8 21 D4 4C      [10]  280 	ld	hl, #_rail_wn
   78AB E5            [11]  281 	push	hl
   78AC CD 0B 62      [17]  282 	call	_cpct_drawSprite
                            283 ;src/game/world.c:48: break;
   78AF 18 44         [12]  284 	jr	00118$
                            285 ;src/game/world.c:49: case T_RWS:
   78B1                     286 00113$:
                            287 ;src/game/world.c:50: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   78B1 21 04 10      [10]  288 	ld	hl, #0x1004
   78B4 E5            [11]  289 	push	hl
   78B5 C5            [11]  290 	push	bc
   78B6 21 14 4D      [10]  291 	ld	hl, #_rail_ws
   78B9 E5            [11]  292 	push	hl
   78BA CD 0B 62      [17]  293 	call	_cpct_drawSprite
                            294 ;src/game/world.c:51: break;
   78BD 18 36         [12]  295 	jr	00118$
                            296 ;src/game/world.c:52: case T_REWN:
   78BF                     297 00114$:
                            298 ;src/game/world.c:53: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   78BF 21 04 10      [10]  299 	ld	hl, #0x1004
   78C2 E5            [11]  300 	push	hl
   78C3 C5            [11]  301 	push	bc
   78C4 21 54 4D      [10]  302 	ld	hl, #_rail_ew_n
   78C7 E5            [11]  303 	push	hl
   78C8 CD 0B 62      [17]  304 	call	_cpct_drawSprite
                            305 ;src/game/world.c:54: break;
   78CB 18 28         [12]  306 	jr	00118$
                            307 ;src/game/world.c:55: case T_REWS:
   78CD                     308 00115$:
                            309 ;src/game/world.c:56: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   78CD 21 04 10      [10]  310 	ld	hl, #0x1004
   78D0 E5            [11]  311 	push	hl
   78D1 C5            [11]  312 	push	bc
   78D2 21 94 4D      [10]  313 	ld	hl, #_rail_ew_s
   78D5 E5            [11]  314 	push	hl
   78D6 CD 0B 62      [17]  315 	call	_cpct_drawSprite
                            316 ;src/game/world.c:57: break;
   78D9 18 1A         [12]  317 	jr	00118$
                            318 ;src/game/world.c:58: case T_RNSE:
   78DB                     319 00116$:
                            320 ;src/game/world.c:59: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   78DB 21 04 10      [10]  321 	ld	hl, #0x1004
   78DE E5            [11]  322 	push	hl
   78DF C5            [11]  323 	push	bc
   78E0 21 14 4E      [10]  324 	ld	hl, #_rail_ns_e
   78E3 E5            [11]  325 	push	hl
   78E4 CD 0B 62      [17]  326 	call	_cpct_drawSprite
                            327 ;src/game/world.c:60: break;
   78E7 18 0C         [12]  328 	jr	00118$
                            329 ;src/game/world.c:61: case T_RNSW:
   78E9                     330 00117$:
                            331 ;src/game/world.c:62: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   78E9 21 04 10      [10]  332 	ld	hl, #0x1004
   78EC E5            [11]  333 	push	hl
   78ED C5            [11]  334 	push	bc
   78EE 21 D4 4D      [10]  335 	ld	hl, #_rail_ns_w
   78F1 E5            [11]  336 	push	hl
   78F2 CD 0B 62      [17]  337 	call	_cpct_drawSprite
                            338 ;src/game/world.c:64: }
   78F5                     339 00118$:
                            340 ;src/game/world.c:66: setPixel(x*TILESIZE_H, y*TILESIZE_H, 0);
   78F5 DD 6E 04      [19]  341 	ld	l, 4 (ix)
   78F8 26 00         [ 7]  342 	ld	h, #0x00
   78FA 29            [11]  343 	add	hl, hl
   78FB 29            [11]  344 	add	hl, hl
   78FC 29            [11]  345 	add	hl, hl
   78FD 29            [11]  346 	add	hl, hl
   78FE EB            [ 4]  347 	ex	de,hl
   78FF D5            [11]  348 	push	de
   7900 AF            [ 4]  349 	xor	a, a
   7901 F5            [11]  350 	push	af
   7902 33            [ 6]  351 	inc	sp
   7903 DD 7E FF      [19]  352 	ld	a, -1 (ix)
   7906 F5            [11]  353 	push	af
   7907 33            [ 6]  354 	inc	sp
   7908 D5            [11]  355 	push	de
   7909 CD EA 82      [17]  356 	call	_setPixel
   790C F1            [10]  357 	pop	af
   790D F1            [10]  358 	pop	af
   790E D1            [10]  359 	pop	de
                            360 ;src/game/world.c:67: setPixel(x*TILESIZE_H+1, y*TILESIZE_H, 0);
   790F 21 01 00      [10]  361 	ld	hl, #0x0001
   7912 19            [11]  362 	add	hl,de
   7913 DD 75 FB      [19]  363 	ld	-5 (ix), l
   7916 DD 74 FC      [19]  364 	ld	-4 (ix), h
   7919 D5            [11]  365 	push	de
   791A AF            [ 4]  366 	xor	a, a
   791B F5            [11]  367 	push	af
   791C 33            [ 6]  368 	inc	sp
   791D DD 7E FF      [19]  369 	ld	a, -1 (ix)
   7920 F5            [11]  370 	push	af
   7921 33            [ 6]  371 	inc	sp
   7922 DD 6E FB      [19]  372 	ld	l,-5 (ix)
   7925 DD 66 FC      [19]  373 	ld	h,-4 (ix)
   7928 E5            [11]  374 	push	hl
   7929 CD EA 82      [17]  375 	call	_setPixel
   792C F1            [10]  376 	pop	af
   792D F1            [10]  377 	pop	af
   792E D1            [10]  378 	pop	de
                            379 ;src/game/world.c:68: setPixel(x*TILESIZE_H, y*TILESIZE_H+1, 0);
   792F DD 46 FF      [19]  380 	ld	b, -1 (ix)
   7932 04            [ 4]  381 	inc	b
   7933 C5            [11]  382 	push	bc
   7934 D5            [11]  383 	push	de
   7935 AF            [ 4]  384 	xor	a, a
   7936 F5            [11]  385 	push	af
   7937 33            [ 6]  386 	inc	sp
   7938 C5            [11]  387 	push	bc
   7939 33            [ 6]  388 	inc	sp
   793A D5            [11]  389 	push	de
   793B CD EA 82      [17]  390 	call	_setPixel
   793E F1            [10]  391 	pop	af
   793F F1            [10]  392 	pop	af
   7940 D1            [10]  393 	pop	de
   7941 C1            [10]  394 	pop	bc
                            395 ;src/game/world.c:69: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+1, 0);
   7942 C5            [11]  396 	push	bc
   7943 D5            [11]  397 	push	de
   7944 AF            [ 4]  398 	xor	a, a
   7945 F5            [11]  399 	push	af
   7946 33            [ 6]  400 	inc	sp
   7947 C5            [11]  401 	push	bc
   7948 33            [ 6]  402 	inc	sp
   7949 DD 6E FB      [19]  403 	ld	l,-5 (ix)
   794C DD 66 FC      [19]  404 	ld	h,-4 (ix)
   794F E5            [11]  405 	push	hl
   7950 CD EA 82      [17]  406 	call	_setPixel
   7953 F1            [10]  407 	pop	af
   7954 F1            [10]  408 	pop	af
   7955 D1            [10]  409 	pop	de
   7956 C1            [10]  410 	pop	bc
                            411 ;src/game/world.c:71: setPixel(x*TILESIZE_H+15, y*TILESIZE_H, 0);
   7957 21 0F 00      [10]  412 	ld	hl, #0x000f
   795A 19            [11]  413 	add	hl,de
   795B DD 75 FD      [19]  414 	ld	-3 (ix), l
   795E DD 74 FE      [19]  415 	ld	-2 (ix), h
   7961 C5            [11]  416 	push	bc
   7962 D5            [11]  417 	push	de
   7963 AF            [ 4]  418 	xor	a, a
   7964 F5            [11]  419 	push	af
   7965 33            [ 6]  420 	inc	sp
   7966 DD 7E FF      [19]  421 	ld	a, -1 (ix)
   7969 F5            [11]  422 	push	af
   796A 33            [ 6]  423 	inc	sp
   796B DD 6E FD      [19]  424 	ld	l,-3 (ix)
   796E DD 66 FE      [19]  425 	ld	h,-2 (ix)
   7971 E5            [11]  426 	push	hl
   7972 CD EA 82      [17]  427 	call	_setPixel
   7975 F1            [10]  428 	pop	af
   7976 F1            [10]  429 	pop	af
   7977 D1            [10]  430 	pop	de
   7978 C1            [10]  431 	pop	bc
                            432 ;src/game/world.c:72: setPixel(x*TILESIZE_H+14, y*TILESIZE_H, 0);
   7979 21 0E 00      [10]  433 	ld	hl, #0x000e
   797C 19            [11]  434 	add	hl,de
   797D E3            [19]  435 	ex	(sp), hl
   797E C5            [11]  436 	push	bc
   797F D5            [11]  437 	push	de
   7980 AF            [ 4]  438 	xor	a, a
   7981 F5            [11]  439 	push	af
   7982 33            [ 6]  440 	inc	sp
   7983 DD 7E FF      [19]  441 	ld	a, -1 (ix)
   7986 F5            [11]  442 	push	af
   7987 33            [ 6]  443 	inc	sp
   7988 DD 6E F9      [19]  444 	ld	l,-7 (ix)
   798B DD 66 FA      [19]  445 	ld	h,-6 (ix)
   798E E5            [11]  446 	push	hl
   798F CD EA 82      [17]  447 	call	_setPixel
   7992 F1            [10]  448 	pop	af
   7993 F1            [10]  449 	pop	af
   7994 D1            [10]  450 	pop	de
   7995 C1            [10]  451 	pop	bc
                            452 ;src/game/world.c:73: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+1, 0);
   7996 C5            [11]  453 	push	bc
   7997 D5            [11]  454 	push	de
   7998 AF            [ 4]  455 	xor	a, a
   7999 F5            [11]  456 	push	af
   799A 33            [ 6]  457 	inc	sp
   799B C5            [11]  458 	push	bc
   799C 33            [ 6]  459 	inc	sp
   799D DD 6E FD      [19]  460 	ld	l,-3 (ix)
   79A0 DD 66 FE      [19]  461 	ld	h,-2 (ix)
   79A3 E5            [11]  462 	push	hl
   79A4 CD EA 82      [17]  463 	call	_setPixel
   79A7 F1            [10]  464 	pop	af
   79A8 F1            [10]  465 	pop	af
   79A9 D1            [10]  466 	pop	de
   79AA C1            [10]  467 	pop	bc
                            468 ;src/game/world.c:74: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+1, 0);
   79AB D5            [11]  469 	push	de
   79AC AF            [ 4]  470 	xor	a, a
   79AD F5            [11]  471 	push	af
   79AE 33            [ 6]  472 	inc	sp
   79AF C5            [11]  473 	push	bc
   79B0 33            [ 6]  474 	inc	sp
   79B1 DD 6E F9      [19]  475 	ld	l,-7 (ix)
   79B4 DD 66 FA      [19]  476 	ld	h,-6 (ix)
   79B7 E5            [11]  477 	push	hl
   79B8 CD EA 82      [17]  478 	call	_setPixel
   79BB F1            [10]  479 	pop	af
   79BC F1            [10]  480 	pop	af
   79BD D1            [10]  481 	pop	de
                            482 ;src/game/world.c:76: setPixel(x*TILESIZE_H, y*TILESIZE_H+15, 0);
   79BE DD 7E FF      [19]  483 	ld	a, -1 (ix)
   79C1 C6 0F         [ 7]  484 	add	a, #0x0f
   79C3 47            [ 4]  485 	ld	b, a
   79C4 C5            [11]  486 	push	bc
   79C5 D5            [11]  487 	push	de
   79C6 AF            [ 4]  488 	xor	a, a
   79C7 F5            [11]  489 	push	af
   79C8 33            [ 6]  490 	inc	sp
   79C9 C5            [11]  491 	push	bc
   79CA 33            [ 6]  492 	inc	sp
   79CB D5            [11]  493 	push	de
   79CC CD EA 82      [17]  494 	call	_setPixel
   79CF F1            [10]  495 	pop	af
   79D0 F1            [10]  496 	pop	af
   79D1 D1            [10]  497 	pop	de
   79D2 C1            [10]  498 	pop	bc
                            499 ;src/game/world.c:77: setPixel(x*TILESIZE_H, y*TILESIZE_H+14, 0);
   79D3 DD 7E FF      [19]  500 	ld	a, -1 (ix)
   79D6 C6 0E         [ 7]  501 	add	a, #0x0e
   79D8 4F            [ 4]  502 	ld	c, a
   79D9 C5            [11]  503 	push	bc
   79DA AF            [ 4]  504 	xor	a, a
   79DB 47            [ 4]  505 	ld	b, a
   79DC C5            [11]  506 	push	bc
   79DD D5            [11]  507 	push	de
   79DE CD EA 82      [17]  508 	call	_setPixel
   79E1 F1            [10]  509 	pop	af
   79E2 F1            [10]  510 	pop	af
   79E3 C1            [10]  511 	pop	bc
                            512 ;src/game/world.c:78: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+14, 0);
   79E4 C5            [11]  513 	push	bc
   79E5 AF            [ 4]  514 	xor	a, a
   79E6 47            [ 4]  515 	ld	b, a
   79E7 C5            [11]  516 	push	bc
   79E8 DD 6E FB      [19]  517 	ld	l,-5 (ix)
   79EB DD 66 FC      [19]  518 	ld	h,-4 (ix)
   79EE E5            [11]  519 	push	hl
   79EF CD EA 82      [17]  520 	call	_setPixel
   79F2 F1            [10]  521 	pop	af
   79F3 F1            [10]  522 	pop	af
   79F4 C1            [10]  523 	pop	bc
                            524 ;src/game/world.c:79: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+15, 0);
   79F5 C5            [11]  525 	push	bc
   79F6 AF            [ 4]  526 	xor	a, a
   79F7 F5            [11]  527 	push	af
   79F8 33            [ 6]  528 	inc	sp
   79F9 C5            [11]  529 	push	bc
   79FA 33            [ 6]  530 	inc	sp
   79FB DD 6E FB      [19]  531 	ld	l,-5 (ix)
   79FE DD 66 FC      [19]  532 	ld	h,-4 (ix)
   7A01 E5            [11]  533 	push	hl
   7A02 CD EA 82      [17]  534 	call	_setPixel
   7A05 F1            [10]  535 	pop	af
   7A06 F1            [10]  536 	pop	af
   7A07 C1            [10]  537 	pop	bc
                            538 ;src/game/world.c:81: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+15, 0);
   7A08 C5            [11]  539 	push	bc
   7A09 AF            [ 4]  540 	xor	a, a
   7A0A F5            [11]  541 	push	af
   7A0B 33            [ 6]  542 	inc	sp
   7A0C C5            [11]  543 	push	bc
   7A0D 33            [ 6]  544 	inc	sp
   7A0E DD 6E FD      [19]  545 	ld	l,-3 (ix)
   7A11 DD 66 FE      [19]  546 	ld	h,-2 (ix)
   7A14 E5            [11]  547 	push	hl
   7A15 CD EA 82      [17]  548 	call	_setPixel
   7A18 F1            [10]  549 	pop	af
   7A19 F1            [10]  550 	pop	af
   7A1A C1            [10]  551 	pop	bc
                            552 ;src/game/world.c:82: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+15, 0);
   7A1B C5            [11]  553 	push	bc
   7A1C AF            [ 4]  554 	xor	a, a
   7A1D F5            [11]  555 	push	af
   7A1E 33            [ 6]  556 	inc	sp
   7A1F C5            [11]  557 	push	bc
   7A20 33            [ 6]  558 	inc	sp
   7A21 DD 6E F9      [19]  559 	ld	l,-7 (ix)
   7A24 DD 66 FA      [19]  560 	ld	h,-6 (ix)
   7A27 E5            [11]  561 	push	hl
   7A28 CD EA 82      [17]  562 	call	_setPixel
   7A2B F1            [10]  563 	pop	af
   7A2C F1            [10]  564 	pop	af
   7A2D C1            [10]  565 	pop	bc
                            566 ;src/game/world.c:83: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+14, 0);
   7A2E C5            [11]  567 	push	bc
   7A2F AF            [ 4]  568 	xor	a, a
   7A30 47            [ 4]  569 	ld	b, a
   7A31 C5            [11]  570 	push	bc
   7A32 DD 6E FD      [19]  571 	ld	l,-3 (ix)
   7A35 DD 66 FE      [19]  572 	ld	h,-2 (ix)
   7A38 E5            [11]  573 	push	hl
   7A39 CD EA 82      [17]  574 	call	_setPixel
   7A3C F1            [10]  575 	pop	af
   7A3D F1            [10]  576 	pop	af
   7A3E C1            [10]  577 	pop	bc
                            578 ;src/game/world.c:84: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+14, 0);
   7A3F AF            [ 4]  579 	xor	a, a
   7A40 47            [ 4]  580 	ld	b, a
   7A41 C5            [11]  581 	push	bc
   7A42 C1            [10]  582 	pop	bc
   7A43 E1            [10]  583 	pop	hl
   7A44 E5            [11]  584 	push	hl
   7A45 C5            [11]  585 	push	bc
   7A46 E5            [11]  586 	push	hl
   7A47 CD EA 82      [17]  587 	call	_setPixel
   7A4A DD F9         [10]  588 	ld	sp,ix
   7A4C DD E1         [14]  589 	pop	ix
   7A4E C9            [10]  590 	ret
                            591 ;src/game/world.c:87: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                            592 ;	---------------------------------
                            593 ; Function patternTile
                            594 ; ---------------------------------
   7A4F                     595 _patternTile::
   7A4F DD E5         [15]  596 	push	ix
   7A51 DD 21 00 00   [14]  597 	ld	ix,#0
   7A55 DD 39         [15]  598 	add	ix,sp
   7A57 21 F7 FF      [10]  599 	ld	hl, #-9
   7A5A 39            [11]  600 	add	hl, sp
   7A5B F9            [ 6]  601 	ld	sp, hl
                            602 ;src/game/world.c:92: for(iy=0; iy<nBitsY; iy++)
   7A5C DD 7E 04      [19]  603 	ld	a, 4 (ix)
   7A5F D6 08         [ 7]  604 	sub	a, #0x08
   7A61 20 04         [12]  605 	jr	NZ,00153$
   7A63 3E 01         [ 7]  606 	ld	a,#0x01
   7A65 18 01         [12]  607 	jr	00154$
   7A67                     608 00153$:
   7A67 AF            [ 4]  609 	xor	a,a
   7A68                     610 00154$:
   7A68 DD 77 FC      [19]  611 	ld	-4 (ix), a
   7A6B DD 7E 04      [19]  612 	ld	a, 4 (ix)
   7A6E D6 02         [ 7]  613 	sub	a, #0x02
   7A70 20 04         [12]  614 	jr	NZ,00155$
   7A72 3E 01         [ 7]  615 	ld	a,#0x01
   7A74 18 01         [12]  616 	jr	00156$
   7A76                     617 00155$:
   7A76 AF            [ 4]  618 	xor	a,a
   7A77                     619 00156$:
   7A77 DD 77 F9      [19]  620 	ld	-7 (ix), a
   7A7A 1E 00         [ 7]  621 	ld	e, #0x00
   7A7C                     622 00115$:
   7A7C 7B            [ 4]  623 	ld	a, e
   7A7D DD 96 08      [19]  624 	sub	a, 8 (ix)
   7A80 D2 34 7B      [10]  625 	jp	NC, 00117$
                            626 ;src/game/world.c:94: for(ix=0; ix<nBitsX; ix++)
   7A83 D5            [11]  627 	push	de
   7A84 16 00         [ 7]  628 	ld	d,#0x00
   7A86 6B            [ 4]  629 	ld	l, e
   7A87 62            [ 4]  630 	ld	h, d
   7A88 29            [11]  631 	add	hl, hl
   7A89 29            [11]  632 	add	hl, hl
   7A8A 19            [11]  633 	add	hl, de
   7A8B 29            [11]  634 	add	hl, hl
   7A8C 29            [11]  635 	add	hl, hl
   7A8D 29            [11]  636 	add	hl, hl
   7A8E 29            [11]  637 	add	hl, hl
   7A8F D1            [10]  638 	pop	de
   7A90 4D            [ 4]  639 	ld	c, l
   7A91 44            [ 4]  640 	ld	b, h
   7A92 DD 7E 05      [19]  641 	ld	a, 5 (ix)
   7A95 81            [ 4]  642 	add	a, c
   7A96 DD 77 F7      [19]  643 	ld	-9 (ix), a
   7A99 DD 7E 06      [19]  644 	ld	a, 6 (ix)
   7A9C 88            [ 4]  645 	adc	a, b
   7A9D DD 77 F8      [19]  646 	ld	-8 (ix), a
   7AA0 D5            [11]  647 	push	de
   7AA1 DD 66 07      [19]  648 	ld	h, 7 (ix)
   7AA4 2E 00         [ 7]  649 	ld	l, #0x00
   7AA6 55            [ 4]  650 	ld	d, l
   7AA7 06 08         [ 7]  651 	ld	b, #0x08
   7AA9                     652 00157$:
   7AA9 29            [11]  653 	add	hl, hl
   7AAA 30 01         [12]  654 	jr	NC,00158$
   7AAC 19            [11]  655 	add	hl, de
   7AAD                     656 00158$:
   7AAD 10 FA         [13]  657 	djnz	00157$
   7AAF D1            [10]  658 	pop	de
   7AB0 DD 75 FA      [19]  659 	ld	-6 (ix), l
   7AB3 DD 74 FB      [19]  660 	ld	-5 (ix), h
   7AB6 16 00         [ 7]  661 	ld	d, #0x00
   7AB8                     662 00112$:
   7AB8 7A            [ 4]  663 	ld	a, d
   7AB9 DD 96 07      [19]  664 	sub	a, 7 (ix)
   7ABC 30 72         [12]  665 	jr	NC,00116$
                            666 ;src/game/world.c:96: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   7ABE DD 72 FE      [19]  667 	ld	-2 (ix), d
   7AC1 DD 36 FF 00   [19]  668 	ld	-1 (ix), #0x00
   7AC5 DD 7E FE      [19]  669 	ld	a, -2 (ix)
   7AC8 DD 86 FA      [19]  670 	add	a, -6 (ix)
   7ACB 4F            [ 4]  671 	ld	c, a
   7ACC DD 7E FF      [19]  672 	ld	a, -1 (ix)
   7ACF DD 8E FB      [19]  673 	adc	a, -5 (ix)
   7AD2 47            [ 4]  674 	ld	b, a
   7AD3 DD 6E 09      [19]  675 	ld	l,9 (ix)
   7AD6 DD 66 0A      [19]  676 	ld	h,10 (ix)
   7AD9 D5            [11]  677 	push	de
   7ADA C5            [11]  678 	push	bc
   7ADB E5            [11]  679 	push	hl
   7ADC CD CB 61      [17]  680 	call	_cpct_getBit
   7ADF DD 75 FD      [19]  681 	ld	-3 (ix), l
   7AE2 D1            [10]  682 	pop	de
   7AE3 DD 7E FD      [19]  683 	ld	a, -3 (ix)
   7AE6 B7            [ 4]  684 	or	a, a
   7AE7 28 44         [12]  685 	jr	Z,00113$
   7AE9 DD 7E F7      [19]  686 	ld	a, -9 (ix)
   7AEC DD 86 FE      [19]  687 	add	a, -2 (ix)
   7AEF 4F            [ 4]  688 	ld	c, a
   7AF0 DD 7E F8      [19]  689 	ld	a, -8 (ix)
   7AF3 DD 8E FF      [19]  690 	adc	a, -1 (ix)
   7AF6 47            [ 4]  691 	ld	b,a
   7AF7 EE 80         [ 7]  692 	xor	a, #0x80
   7AF9 D6 8F         [ 7]  693 	sub	a, #0x8f
   7AFB 30 30         [12]  694 	jr	NC,00113$
                            695 ;src/game/world.c:98: if(tileType == FOREST)
   7AFD DD 7E FC      [19]  696 	ld	a, -4 (ix)
   7B00 B7            [ 4]  697 	or	a, a
   7B01 28 0A         [12]  698 	jr	Z,00104$
                            699 ;src/game/world.c:99: p_world[index+iy*WIDTH+ix] = tileType;
   7B03 21 88 68      [10]  700 	ld	hl, #_p_world
   7B06 09            [11]  701 	add	hl, bc
   7B07 DD 7E 04      [19]  702 	ld	a, 4 (ix)
   7B0A 77            [ 7]  703 	ld	(hl), a
   7B0B 18 20         [12]  704 	jr	00113$
   7B0D                     705 00104$:
                            706 ;src/game/world.c:100: else if(tileType==DWELLINGS1)
   7B0D DD 7E F9      [19]  707 	ld	a, -7 (ix)
   7B10 B7            [ 4]  708 	or	a, a
   7B11 28 1A         [12]  709 	jr	Z,00113$
                            710 ;src/game/world.c:101: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandom_mxor_u8 ()%3+2;
   7B13 21 88 68      [10]  711 	ld	hl, #_p_world
   7B16 09            [11]  712 	add	hl, bc
   7B17 E5            [11]  713 	push	hl
   7B18 D5            [11]  714 	push	de
   7B19 CD D9 65      [17]  715 	call	_cpct_getRandom_mxor_u8
   7B1C 45            [ 4]  716 	ld	b, l
   7B1D 3E 03         [ 7]  717 	ld	a, #0x03
   7B1F F5            [11]  718 	push	af
   7B20 33            [ 6]  719 	inc	sp
   7B21 C5            [11]  720 	push	bc
   7B22 33            [ 6]  721 	inc	sp
   7B23 CD B0 62      [17]  722 	call	__moduchar
   7B26 F1            [10]  723 	pop	af
   7B27 4D            [ 4]  724 	ld	c, l
   7B28 D1            [10]  725 	pop	de
   7B29 E1            [10]  726 	pop	hl
   7B2A 0C            [ 4]  727 	inc	c
   7B2B 0C            [ 4]  728 	inc	c
   7B2C 71            [ 7]  729 	ld	(hl), c
   7B2D                     730 00113$:
                            731 ;src/game/world.c:94: for(ix=0; ix<nBitsX; ix++)
   7B2D 14            [ 4]  732 	inc	d
   7B2E 18 88         [12]  733 	jr	00112$
   7B30                     734 00116$:
                            735 ;src/game/world.c:92: for(iy=0; iy<nBitsY; iy++)
   7B30 1C            [ 4]  736 	inc	e
   7B31 C3 7C 7A      [10]  737 	jp	00115$
   7B34                     738 00117$:
   7B34 DD F9         [10]  739 	ld	sp, ix
   7B36 DD E1         [14]  740 	pop	ix
   7B38 C9            [10]  741 	ret
                            742 ;src/game/world.c:108: void generateWorld()
                            743 ;	---------------------------------
                            744 ; Function generateWorld
                            745 ; ---------------------------------
   7B39                     746 _generateWorld::
   7B39 DD E5         [15]  747 	push	ix
   7B3B DD 21 00 00   [14]  748 	ld	ix,#0
   7B3F DD 39         [15]  749 	add	ix,sp
   7B41 21 E4 FF      [10]  750 	ld	hl, #-28
   7B44 39            [11]  751 	add	hl, sp
   7B45 F9            [ 6]  752 	ld	sp, hl
                            753 ;src/game/world.c:115: CURSOR_MODE = NONE;
   7B46 21 8C 77      [10]  754 	ld	hl,#_CURSOR_MODE + 0
   7B49 36 00         [10]  755 	ld	(hl), #0x00
                            756 ;src/game/world.c:118: cpct_setSeed_mxor ((u32)cpct_count2VSYNC());
   7B4B CD 32 63      [17]  757 	call	_cpct_count2VSYNC
   7B4E 11 00 00      [10]  758 	ld	de,#0x0000
   7B51 CD 81 64      [17]  759 	call	_cpct_setSeed_mxor
                            760 ;src/game/world.c:122: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   7B54 01 00 00      [10]  761 	ld	bc, #0x0000
   7B57                     762 00119$:
                            763 ;src/game/world.c:124: p_world[iy] =  cpct_getRandom_mxor_u16()%2;
   7B57 21 88 68      [10]  764 	ld	hl, #_p_world
   7B5A 09            [11]  765 	add	hl, bc
   7B5B E5            [11]  766 	push	hl
   7B5C C5            [11]  767 	push	bc
   7B5D CD DD 64      [17]  768 	call	_cpct_getRandom_mxor_u16
   7B60 5D            [ 4]  769 	ld	e, l
   7B61 C1            [10]  770 	pop	bc
   7B62 E1            [10]  771 	pop	hl
   7B63 7B            [ 4]  772 	ld	a, e
   7B64 E6 01         [ 7]  773 	and	a, #0x01
   7B66 77            [ 7]  774 	ld	(hl), a
                            775 ;src/game/world.c:122: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   7B67 03            [ 6]  776 	inc	bc
   7B68 78            [ 4]  777 	ld	a, b
   7B69 EE 80         [ 7]  778 	xor	a, #0x80
   7B6B D6 8F         [ 7]  779 	sub	a, #0x8f
   7B6D 38 E8         [12]  780 	jr	C,00119$
                            781 ;src/game/world.c:129: for(ix=0; ix<NBFOREST; ix++)
   7B6F 21 04 00      [10]  782 	ld	hl, #0x0004
   7B72 39            [11]  783 	add	hl, sp
   7B73 DD 75 F8      [19]  784 	ld	-8 (ix), l
   7B76 DD 74 F9      [19]  785 	ld	-7 (ix), h
   7B79 01 00 00      [10]  786 	ld	bc, #0x0000
   7B7C                     787 00121$:
                            788 ;src/game/world.c:131: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7B7C C5            [11]  789 	push	bc
   7B7D CD DD 64      [17]  790 	call	_cpct_getRandom_mxor_u16
   7B80 11 00 0F      [10]  791 	ld	de, #0x0f00
   7B83 D5            [11]  792 	push	de
   7B84 E5            [11]  793 	push	hl
   7B85 CD BC 62      [17]  794 	call	__moduint
   7B88 F1            [10]  795 	pop	af
   7B89 E3            [19]  796 	ex	(sp),hl
   7B8A CD DD 64      [17]  797 	call	_cpct_getRandom_mxor_u16
   7B8D D1            [10]  798 	pop	de
   7B8E C1            [10]  799 	pop	bc
   7B8F 7D            [ 4]  800 	ld	a, l
   7B90 E6 03         [ 7]  801 	and	a, #0x03
   7B92 6F            [ 4]  802 	ld	l, a
   7B93 26 00         [ 7]  803 	ld	h, #0x00
                            804 ;src/game/world.c:137: p_forest[1] = 0b11000111;
   7B95 DD 7E F8      [19]  805 	ld	a, -8 (ix)
   7B98 C6 01         [ 7]  806 	add	a, #0x01
   7B9A DD 77 FE      [19]  807 	ld	-2 (ix), a
   7B9D DD 7E F9      [19]  808 	ld	a, -7 (ix)
   7BA0 CE 00         [ 7]  809 	adc	a, #0x00
   7BA2 DD 77 FF      [19]  810 	ld	-1 (ix), a
                            811 ;src/game/world.c:138: p_forest[2] = 0b11011110;
   7BA5 DD 7E F8      [19]  812 	ld	a, -8 (ix)
   7BA8 C6 02         [ 7]  813 	add	a, #0x02
   7BAA DD 77 F6      [19]  814 	ld	-10 (ix), a
   7BAD DD 7E F9      [19]  815 	ld	a, -7 (ix)
   7BB0 CE 00         [ 7]  816 	adc	a, #0x00
   7BB2 DD 77 F7      [19]  817 	ld	-9 (ix), a
                            818 ;src/game/world.c:139: p_forest[3] = 0b01111110;
   7BB5 DD 7E F8      [19]  819 	ld	a, -8 (ix)
   7BB8 C6 03         [ 7]  820 	add	a, #0x03
   7BBA DD 77 F0      [19]  821 	ld	-16 (ix), a
   7BBD DD 7E F9      [19]  822 	ld	a, -7 (ix)
   7BC0 CE 00         [ 7]  823 	adc	a, #0x00
   7BC2 DD 77 F1      [19]  824 	ld	-15 (ix), a
                            825 ;src/game/world.c:140: p_forest[4] = 0b11111110; 
   7BC5 DD 7E F8      [19]  826 	ld	a, -8 (ix)
   7BC8 C6 04         [ 7]  827 	add	a, #0x04
   7BCA DD 77 F2      [19]  828 	ld	-14 (ix), a
   7BCD DD 7E F9      [19]  829 	ld	a, -7 (ix)
   7BD0 CE 00         [ 7]  830 	adc	a, #0x00
   7BD2 DD 77 F3      [19]  831 	ld	-13 (ix), a
                            832 ;src/game/world.c:141: p_forest[5] = 0b01111111;
   7BD5 DD 7E F8      [19]  833 	ld	a, -8 (ix)
   7BD8 C6 05         [ 7]  834 	add	a, #0x05
   7BDA DD 77 FA      [19]  835 	ld	-6 (ix), a
   7BDD DD 7E F9      [19]  836 	ld	a, -7 (ix)
   7BE0 CE 00         [ 7]  837 	adc	a, #0x00
   7BE2 DD 77 FB      [19]  838 	ld	-5 (ix), a
                            839 ;src/game/world.c:142: p_forest[6] = 0b11101111;
   7BE5 DD 7E F8      [19]  840 	ld	a, -8 (ix)
   7BE8 C6 06         [ 7]  841 	add	a, #0x06
   7BEA DD 77 FC      [19]  842 	ld	-4 (ix), a
   7BED DD 7E F9      [19]  843 	ld	a, -7 (ix)
   7BF0 CE 00         [ 7]  844 	adc	a, #0x00
   7BF2 DD 77 FD      [19]  845 	ld	-3 (ix), a
                            846 ;src/game/world.c:143: p_forest[7] = 0b11001111;
   7BF5 DD 7E F8      [19]  847 	ld	a, -8 (ix)
   7BF8 C6 07         [ 7]  848 	add	a, #0x07
   7BFA DD 77 F4      [19]  849 	ld	-12 (ix), a
   7BFD DD 7E F9      [19]  850 	ld	a, -7 (ix)
   7C00 CE 00         [ 7]  851 	adc	a, #0x00
   7C02 DD 77 F5      [19]  852 	ld	-11 (ix), a
                            853 ;src/game/world.c:133: switch(cpct_getRandom_mxor_u16()%4)
   7C05 7D            [ 4]  854 	ld	a, l
   7C06 B7            [ 4]  855 	or	a, a
   7C07 B4            [ 4]  856 	or	a, h
   7C08 28 16         [12]  857 	jr	Z,00102$
   7C0A 7D            [ 4]  858 	ld	a, l
   7C0B 3D            [ 4]  859 	dec	a
   7C0C B4            [ 4]  860 	or	a, h
   7C0D 28 54         [12]  861 	jr	Z,00103$
   7C0F 7D            [ 4]  862 	ld	a, l
   7C10 D6 02         [ 7]  863 	sub	a, #0x02
   7C12 B4            [ 4]  864 	or	a, h
   7C13 CA A6 7C      [10]  865 	jp	Z,00104$
   7C16 7D            [ 4]  866 	ld	a, l
   7C17 D6 03         [ 7]  867 	sub	a, #0x03
   7C19 B4            [ 4]  868 	or	a, h
   7C1A CA E8 7C      [10]  869 	jp	Z,00105$
   7C1D C3 28 7D      [10]  870 	jp	00106$
                            871 ;src/game/world.c:135: case 0:
   7C20                     872 00102$:
                            873 ;src/game/world.c:136: p_forest[0] = 0b10000100;
   7C20 DD 6E F8      [19]  874 	ld	l,-8 (ix)
   7C23 DD 66 F9      [19]  875 	ld	h,-7 (ix)
   7C26 36 84         [10]  876 	ld	(hl), #0x84
                            877 ;src/game/world.c:137: p_forest[1] = 0b11000111;
   7C28 DD 6E FE      [19]  878 	ld	l,-2 (ix)
   7C2B DD 66 FF      [19]  879 	ld	h,-1 (ix)
   7C2E 36 C7         [10]  880 	ld	(hl), #0xc7
                            881 ;src/game/world.c:138: p_forest[2] = 0b11011110;
   7C30 DD 6E F6      [19]  882 	ld	l,-10 (ix)
   7C33 DD 66 F7      [19]  883 	ld	h,-9 (ix)
   7C36 36 DE         [10]  884 	ld	(hl), #0xde
                            885 ;src/game/world.c:139: p_forest[3] = 0b01111110;
   7C38 DD 6E F0      [19]  886 	ld	l,-16 (ix)
   7C3B DD 66 F1      [19]  887 	ld	h,-15 (ix)
   7C3E 36 7E         [10]  888 	ld	(hl), #0x7e
                            889 ;src/game/world.c:140: p_forest[4] = 0b11111110; 
   7C40 DD 6E F2      [19]  890 	ld	l,-14 (ix)
   7C43 DD 66 F3      [19]  891 	ld	h,-13 (ix)
   7C46 36 FE         [10]  892 	ld	(hl), #0xfe
                            893 ;src/game/world.c:141: p_forest[5] = 0b01111111;
   7C48 DD 6E FA      [19]  894 	ld	l,-6 (ix)
   7C4B DD 66 FB      [19]  895 	ld	h,-5 (ix)
   7C4E 36 7F         [10]  896 	ld	(hl), #0x7f
                            897 ;src/game/world.c:142: p_forest[6] = 0b11101111;
   7C50 DD 6E FC      [19]  898 	ld	l,-4 (ix)
   7C53 DD 66 FD      [19]  899 	ld	h,-3 (ix)
   7C56 36 EF         [10]  900 	ld	(hl), #0xef
                            901 ;src/game/world.c:143: p_forest[7] = 0b11001111;
   7C58 DD 6E F4      [19]  902 	ld	l,-12 (ix)
   7C5B DD 66 F5      [19]  903 	ld	h,-11 (ix)
   7C5E 36 CF         [10]  904 	ld	(hl), #0xcf
                            905 ;src/game/world.c:144: break;
   7C60 C3 28 7D      [10]  906 	jp	00106$
                            907 ;src/game/world.c:145: case 1:
   7C63                     908 00103$:
                            909 ;src/game/world.c:146: p_forest[0] = 0b00001100;
   7C63 DD 6E F8      [19]  910 	ld	l,-8 (ix)
   7C66 DD 66 F9      [19]  911 	ld	h,-7 (ix)
   7C69 36 0C         [10]  912 	ld	(hl), #0x0c
                            913 ;src/game/world.c:147: p_forest[1] = 0b11111000;
   7C6B DD 6E FE      [19]  914 	ld	l,-2 (ix)
   7C6E DD 66 FF      [19]  915 	ld	h,-1 (ix)
   7C71 36 F8         [10]  916 	ld	(hl), #0xf8
                            917 ;src/game/world.c:148: p_forest[2] = 0b00111111;
   7C73 DD 6E F6      [19]  918 	ld	l,-10 (ix)
   7C76 DD 66 F7      [19]  919 	ld	h,-9 (ix)
   7C79 36 3F         [10]  920 	ld	(hl), #0x3f
                            921 ;src/game/world.c:149: p_forest[3] = 0b01111110;
   7C7B DD 6E F0      [19]  922 	ld	l,-16 (ix)
   7C7E DD 66 F1      [19]  923 	ld	h,-15 (ix)
   7C81 36 7E         [10]  924 	ld	(hl), #0x7e
                            925 ;src/game/world.c:150: p_forest[4] = 0b11111110; 
   7C83 DD 6E F2      [19]  926 	ld	l,-14 (ix)
   7C86 DD 66 F3      [19]  927 	ld	h,-13 (ix)
   7C89 36 FE         [10]  928 	ld	(hl), #0xfe
                            929 ;src/game/world.c:151: p_forest[5] = 0b01011111;
   7C8B DD 6E FA      [19]  930 	ld	l,-6 (ix)
   7C8E DD 66 FB      [19]  931 	ld	h,-5 (ix)
   7C91 36 5F         [10]  932 	ld	(hl), #0x5f
                            933 ;src/game/world.c:152: p_forest[6] = 0b11001111;
   7C93 DD 6E FC      [19]  934 	ld	l,-4 (ix)
   7C96 DD 66 FD      [19]  935 	ld	h,-3 (ix)
   7C99 36 CF         [10]  936 	ld	(hl), #0xcf
                            937 ;src/game/world.c:153: p_forest[7] = 0b10001100;
   7C9B DD 6E F4      [19]  938 	ld	l,-12 (ix)
   7C9E DD 66 F5      [19]  939 	ld	h,-11 (ix)
   7CA1 36 8C         [10]  940 	ld	(hl), #0x8c
                            941 ;src/game/world.c:154: break;
   7CA3 C3 28 7D      [10]  942 	jp	00106$
                            943 ;src/game/world.c:155: case 2:
   7CA6                     944 00104$:
                            945 ;src/game/world.c:156: p_forest[0] = 0b00110000;
   7CA6 DD 6E F8      [19]  946 	ld	l,-8 (ix)
   7CA9 DD 66 F9      [19]  947 	ld	h,-7 (ix)
   7CAC 36 30         [10]  948 	ld	(hl), #0x30
                            949 ;src/game/world.c:157: p_forest[1] = 0b11110100;
   7CAE DD 6E FE      [19]  950 	ld	l,-2 (ix)
   7CB1 DD 66 FF      [19]  951 	ld	h,-1 (ix)
   7CB4 36 F4         [10]  952 	ld	(hl), #0xf4
                            953 ;src/game/world.c:158: p_forest[2] = 0b11111111;
   7CB6 DD 6E F6      [19]  954 	ld	l,-10 (ix)
   7CB9 DD 66 F7      [19]  955 	ld	h,-9 (ix)
   7CBC 36 FF         [10]  956 	ld	(hl), #0xff
                            957 ;src/game/world.c:159: p_forest[3] = 0b11111111;
   7CBE DD 6E F0      [19]  958 	ld	l,-16 (ix)
   7CC1 DD 66 F1      [19]  959 	ld	h,-15 (ix)
   7CC4 36 FF         [10]  960 	ld	(hl), #0xff
                            961 ;src/game/world.c:160: p_forest[4] = 0b01111100;
   7CC6 DD 6E F2      [19]  962 	ld	l,-14 (ix)
   7CC9 DD 66 F3      [19]  963 	ld	h,-13 (ix)
   7CCC 36 7C         [10]  964 	ld	(hl), #0x7c
                            965 ;src/game/world.c:161: p_forest[5] = 0b01111110;
   7CCE DD 6E FA      [19]  966 	ld	l,-6 (ix)
   7CD1 DD 66 FB      [19]  967 	ld	h,-5 (ix)
   7CD4 36 7E         [10]  968 	ld	(hl), #0x7e
                            969 ;src/game/world.c:162: p_forest[6] = 0b00111110;
   7CD6 DD 6E FC      [19]  970 	ld	l,-4 (ix)
   7CD9 DD 66 FD      [19]  971 	ld	h,-3 (ix)
   7CDC 36 3E         [10]  972 	ld	(hl), #0x3e
                            973 ;src/game/world.c:163: p_forest[7] = 0b00011000;
   7CDE DD 6E F4      [19]  974 	ld	l,-12 (ix)
   7CE1 DD 66 F5      [19]  975 	ld	h,-11 (ix)
   7CE4 36 18         [10]  976 	ld	(hl), #0x18
                            977 ;src/game/world.c:164: break;
   7CE6 18 40         [12]  978 	jr	00106$
                            979 ;src/game/world.c:165: case 3:
   7CE8                     980 00105$:
                            981 ;src/game/world.c:166: p_forest[0] = 0b11000000; 
   7CE8 DD 6E F8      [19]  982 	ld	l,-8 (ix)
   7CEB DD 66 F9      [19]  983 	ld	h,-7 (ix)
   7CEE 36 C0         [10]  984 	ld	(hl), #0xc0
                            985 ;src/game/world.c:167: p_forest[1] = 0b11100111;
   7CF0 DD 6E FE      [19]  986 	ld	l,-2 (ix)
   7CF3 DD 66 FF      [19]  987 	ld	h,-1 (ix)
   7CF6 36 E7         [10]  988 	ld	(hl), #0xe7
                            989 ;src/game/world.c:168: p_forest[2] = 0b01111110;
   7CF8 DD 6E F6      [19]  990 	ld	l,-10 (ix)
   7CFB DD 66 F7      [19]  991 	ld	h,-9 (ix)
   7CFE 36 7E         [10]  992 	ld	(hl), #0x7e
                            993 ;src/game/world.c:169: p_forest[3] = 0b01111110;
   7D00 DD 6E F0      [19]  994 	ld	l,-16 (ix)
   7D03 DD 66 F1      [19]  995 	ld	h,-15 (ix)
   7D06 36 7E         [10]  996 	ld	(hl), #0x7e
                            997 ;src/game/world.c:170: p_forest[4] = 0b11111110;
   7D08 DD 6E F2      [19]  998 	ld	l,-14 (ix)
   7D0B DD 66 F3      [19]  999 	ld	h,-13 (ix)
   7D0E 36 FE         [10] 1000 	ld	(hl), #0xfe
                           1001 ;src/game/world.c:171: p_forest[5] = 0b11111100;
   7D10 DD 6E FA      [19] 1002 	ld	l,-6 (ix)
   7D13 DD 66 FB      [19] 1003 	ld	h,-5 (ix)
   7D16 36 FC         [10] 1004 	ld	(hl), #0xfc
                           1005 ;src/game/world.c:172: p_forest[6] = 0b01111000;
   7D18 DD 6E FC      [19] 1006 	ld	l,-4 (ix)
   7D1B DD 66 FD      [19] 1007 	ld	h,-3 (ix)
   7D1E 36 78         [10] 1008 	ld	(hl), #0x78
                           1009 ;src/game/world.c:173: p_forest[7] = 0b00110000;
   7D20 DD 6E F4      [19] 1010 	ld	l,-12 (ix)
   7D23 DD 66 F5      [19] 1011 	ld	h,-11 (ix)
   7D26 36 30         [10] 1012 	ld	(hl), #0x30
                           1013 ;src/game/world.c:175: }
   7D28                    1014 00106$:
                           1015 ;src/game/world.c:176: patternTile(FOREST, iy, 8, 8, p_forest);
   7D28 DD 6E F8      [19] 1016 	ld	l,-8 (ix)
   7D2B DD 66 F9      [19] 1017 	ld	h,-7 (ix)
   7D2E C5            [11] 1018 	push	bc
   7D2F E5            [11] 1019 	push	hl
   7D30 21 08 08      [10] 1020 	ld	hl, #0x0808
   7D33 E5            [11] 1021 	push	hl
   7D34 D5            [11] 1022 	push	de
   7D35 3E 08         [ 7] 1023 	ld	a, #0x08
   7D37 F5            [11] 1024 	push	af
   7D38 33            [ 6] 1025 	inc	sp
   7D39 CD 4F 7A      [17] 1026 	call	_patternTile
   7D3C 21 07 00      [10] 1027 	ld	hl, #7
   7D3F 39            [11] 1028 	add	hl, sp
   7D40 F9            [ 6] 1029 	ld	sp, hl
   7D41 C1            [10] 1030 	pop	bc
                           1031 ;src/game/world.c:129: for(ix=0; ix<NBFOREST; ix++)
   7D42 03            [ 6] 1032 	inc	bc
   7D43 79            [ 4] 1033 	ld	a, c
   7D44 D6 32         [ 7] 1034 	sub	a, #0x32
   7D46 78            [ 4] 1035 	ld	a, b
   7D47 17            [ 4] 1036 	rla
   7D48 3F            [ 4] 1037 	ccf
   7D49 1F            [ 4] 1038 	rra
   7D4A DE 80         [ 7] 1039 	sbc	a, #0x80
   7D4C DA 7C 7B      [10] 1040 	jp	C, 00121$
                           1041 ;src/game/world.c:182: for(ix=0; ix<NBFARM; ix++)
   7D4F 01 3C 00      [10] 1042 	ld	bc, #0x003c
   7D52                    1043 00125$:
                           1044 ;src/game/world.c:184: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT)%(WIDTH*HEIGHT);
   7D52 C5            [11] 1045 	push	bc
   7D53 CD DD 64      [17] 1046 	call	_cpct_getRandom_mxor_u16
   7D56 11 00 0F      [10] 1047 	ld	de, #0x0f00
   7D59 D5            [11] 1048 	push	de
   7D5A E5            [11] 1049 	push	hl
   7D5B CD BC 62      [17] 1050 	call	__moduint
   7D5E F1            [10] 1051 	pop	af
   7D5F F1            [10] 1052 	pop	af
   7D60 11 00 0F      [10] 1053 	ld	de, #0x0f00
   7D63 D5            [11] 1054 	push	de
   7D64 E5            [11] 1055 	push	hl
   7D65 CD BC 62      [17] 1056 	call	__moduint
   7D68 F1            [10] 1057 	pop	af
   7D69 F1            [10] 1058 	pop	af
   7D6A C1            [10] 1059 	pop	bc
                           1060 ;src/game/world.c:185: p_world[iy] = cpct_rand()%2+5;
   7D6B 11 88 68      [10] 1061 	ld	de, #_p_world
   7D6E 19            [11] 1062 	add	hl, de
   7D6F E5            [11] 1063 	push	hl
   7D70 C5            [11] 1064 	push	bc
   7D71 CD D9 65      [17] 1065 	call	_cpct_getRandom_mxor_u8
   7D74 7D            [ 4] 1066 	ld	a, l
   7D75 C1            [10] 1067 	pop	bc
   7D76 E1            [10] 1068 	pop	hl
   7D77 E6 01         [ 7] 1069 	and	a, #0x01
   7D79 C6 05         [ 7] 1070 	add	a, #0x05
   7D7B 77            [ 7] 1071 	ld	(hl), a
   7D7C 0B            [ 6] 1072 	dec	bc
                           1073 ;src/game/world.c:182: for(ix=0; ix<NBFARM; ix++)
   7D7D 78            [ 4] 1074 	ld	a, b
   7D7E B1            [ 4] 1075 	or	a,c
   7D7F 20 D1         [12] 1076 	jr	NZ,00125$
                           1077 ;src/game/world.c:190: for(ix=0; ix<NBURBAN; ix++)
   7D81 01 14 00      [10] 1078 	ld	bc, #0x0014
   7D84                    1079 00128$:
                           1080 ;src/game/world.c:192: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7D84 C5            [11] 1081 	push	bc
   7D85 CD DD 64      [17] 1082 	call	_cpct_getRandom_mxor_u16
   7D88 11 00 0F      [10] 1083 	ld	de, #0x0f00
   7D8B D5            [11] 1084 	push	de
   7D8C E5            [11] 1085 	push	hl
   7D8D CD BC 62      [17] 1086 	call	__moduint
   7D90 F1            [10] 1087 	pop	af
   7D91 F1            [10] 1088 	pop	af
   7D92 C1            [10] 1089 	pop	bc
                           1090 ;src/game/world.c:193: p_world[iy] = cpct_rand()%3+2;
   7D93 11 88 68      [10] 1091 	ld	de, #_p_world
   7D96 19            [11] 1092 	add	hl, de
   7D97 E5            [11] 1093 	push	hl
   7D98 C5            [11] 1094 	push	bc
   7D99 CD D9 65      [17] 1095 	call	_cpct_getRandom_mxor_u8
   7D9C 55            [ 4] 1096 	ld	d, l
   7D9D 3E 03         [ 7] 1097 	ld	a, #0x03
   7D9F F5            [11] 1098 	push	af
   7DA0 33            [ 6] 1099 	inc	sp
   7DA1 D5            [11] 1100 	push	de
   7DA2 33            [ 6] 1101 	inc	sp
   7DA3 CD B0 62      [17] 1102 	call	__moduchar
   7DA6 F1            [10] 1103 	pop	af
   7DA7 5D            [ 4] 1104 	ld	e, l
   7DA8 C1            [10] 1105 	pop	bc
   7DA9 E1            [10] 1106 	pop	hl
   7DAA 1C            [ 4] 1107 	inc	e
   7DAB 1C            [ 4] 1108 	inc	e
   7DAC 73            [ 7] 1109 	ld	(hl), e
   7DAD 0B            [ 6] 1110 	dec	bc
                           1111 ;src/game/world.c:190: for(ix=0; ix<NBURBAN; ix++)
   7DAE 78            [ 4] 1112 	ld	a, b
   7DAF B1            [ 4] 1113 	or	a,c
   7DB0 20 D2         [12] 1114 	jr	NZ,00128$
                           1115 ;src/game/world.c:196: for(ix=0; ix<NBURBAN; ix++)
   7DB2 21 02 00      [10] 1116 	ld	hl, #0x0002
   7DB5 39            [11] 1117 	add	hl, sp
   7DB6 4D            [ 4] 1118 	ld	c, l
   7DB7 44            [ 4] 1119 	ld	b, h
   7DB8 21 00 00      [10] 1120 	ld	hl, #0x0000
   7DBB E3            [19] 1121 	ex	(sp), hl
   7DBC                    1122 00129$:
                           1123 ;src/game/world.c:198: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7DBC C5            [11] 1124 	push	bc
   7DBD CD DD 64      [17] 1125 	call	_cpct_getRandom_mxor_u16
   7DC0 11 00 0F      [10] 1126 	ld	de, #0x0f00
   7DC3 D5            [11] 1127 	push	de
   7DC4 E5            [11] 1128 	push	hl
   7DC5 CD BC 62      [17] 1129 	call	__moduint
   7DC8 F1            [10] 1130 	pop	af
   7DC9 F1            [10] 1131 	pop	af
   7DCA C1            [10] 1132 	pop	bc
   7DCB DD 75 F4      [19] 1133 	ld	-12 (ix), l
   7DCE DD 74 F5      [19] 1134 	ld	-11 (ix), h
                           1135 ;src/game/world.c:200: switch(cpct_rand()%6)
   7DD1 C5            [11] 1136 	push	bc
   7DD2 CD D9 65      [17] 1137 	call	_cpct_getRandom_mxor_u8
   7DD5 55            [ 4] 1138 	ld	d, l
   7DD6 3E 06         [ 7] 1139 	ld	a, #0x06
   7DD8 F5            [11] 1140 	push	af
   7DD9 33            [ 6] 1141 	inc	sp
   7DDA D5            [11] 1142 	push	de
   7DDB 33            [ 6] 1143 	inc	sp
   7DDC CD B0 62      [17] 1144 	call	__moduchar
   7DDF F1            [10] 1145 	pop	af
   7DE0 5D            [ 4] 1146 	ld	e, l
   7DE1 C1            [10] 1147 	pop	bc
   7DE2 3E 05         [ 7] 1148 	ld	a, #0x05
   7DE4 93            [ 4] 1149 	sub	a, e
   7DE5 38 6A         [12] 1150 	jr	C,00116$
                           1151 ;src/game/world.c:204: p_cities[1] = 0b01000110; // 01100010;
   7DE7 21 01 00      [10] 1152 	ld	hl, #0x0001
   7DEA 09            [11] 1153 	add	hl,bc
   7DEB DD 75 FC      [19] 1154 	ld	-4 (ix), l
   7DEE DD 74 FD      [19] 1155 	ld	-3 (ix), h
                           1156 ;src/game/world.c:200: switch(cpct_rand()%6)
   7DF1 16 00         [ 7] 1157 	ld	d, #0x00
   7DF3 21 F9 7D      [10] 1158 	ld	hl, #00211$
   7DF6 19            [11] 1159 	add	hl, de
   7DF7 19            [11] 1160 	add	hl, de
                           1161 ;src/game/world.c:202: case 0:
   7DF8 E9            [ 4] 1162 	jp	(hl)
   7DF9                    1163 00211$:
   7DF9 18 0A         [12] 1164 	jr	00110$
   7DFB 18 15         [12] 1165 	jr	00111$
   7DFD 18 20         [12] 1166 	jr	00112$
   7DFF 18 2B         [12] 1167 	jr	00113$
   7E01 18 36         [12] 1168 	jr	00114$
   7E03 18 41         [12] 1169 	jr	00115$
   7E05                    1170 00110$:
                           1171 ;src/game/world.c:203: p_cities[0] = 0b01110010; // 01001110;
   7E05 3E 72         [ 7] 1172 	ld	a, #0x72
   7E07 02            [ 7] 1173 	ld	(bc), a
                           1174 ;src/game/world.c:204: p_cities[1] = 0b01000110; // 01100010;
   7E08 DD 6E FC      [19] 1175 	ld	l,-4 (ix)
   7E0B DD 66 FD      [19] 1176 	ld	h,-3 (ix)
   7E0E 36 46         [10] 1177 	ld	(hl), #0x46
                           1178 ;src/game/world.c:205: break;
   7E10 18 3F         [12] 1179 	jr	00116$
                           1180 ;src/game/world.c:207: case 1:
   7E12                    1181 00111$:
                           1182 ;src/game/world.c:208: p_cities[0] = 0b01100000; // 00000110;
   7E12 3E 60         [ 7] 1183 	ld	a, #0x60
   7E14 02            [ 7] 1184 	ld	(bc), a
                           1185 ;src/game/world.c:209: p_cities[1] = 0b00000110; // 01100000;
   7E15 DD 6E FC      [19] 1186 	ld	l,-4 (ix)
   7E18 DD 66 FD      [19] 1187 	ld	h,-3 (ix)
   7E1B 36 06         [10] 1188 	ld	(hl), #0x06
                           1189 ;src/game/world.c:210: break;
   7E1D 18 32         [12] 1190 	jr	00116$
                           1191 ;src/game/world.c:212: case 2:
   7E1F                    1192 00112$:
                           1193 ;src/game/world.c:213: p_cities[0] = 0b00010000; // 00001000;
   7E1F 3E 10         [ 7] 1194 	ld	a, #0x10
   7E21 02            [ 7] 1195 	ld	(bc), a
                           1196 ;src/game/world.c:214: p_cities[1] = 0b00000110; // 01100000;
   7E22 DD 6E FC      [19] 1197 	ld	l,-4 (ix)
   7E25 DD 66 FD      [19] 1198 	ld	h,-3 (ix)
   7E28 36 06         [10] 1199 	ld	(hl), #0x06
                           1200 ;src/game/world.c:215: break;
   7E2A 18 25         [12] 1201 	jr	00116$
                           1202 ;src/game/world.c:217: case 3:
   7E2C                    1203 00113$:
                           1204 ;src/game/world.c:218: p_cities[0] = 0b11000000; // 00000011;
   7E2C 3E C0         [ 7] 1205 	ld	a, #0xc0
   7E2E 02            [ 7] 1206 	ld	(bc), a
                           1207 ;src/game/world.c:219: p_cities[1] = 0b00110001; // 10001100;
   7E2F DD 6E FC      [19] 1208 	ld	l,-4 (ix)
   7E32 DD 66 FD      [19] 1209 	ld	h,-3 (ix)
   7E35 36 31         [10] 1210 	ld	(hl), #0x31
                           1211 ;src/game/world.c:220: break;
   7E37 18 18         [12] 1212 	jr	00116$
                           1213 ;src/game/world.c:222: case 4:
   7E39                    1214 00114$:
                           1215 ;src/game/world.c:223: p_cities[0] = 0b11000100; // 00100011;
   7E39 3E C4         [ 7] 1216 	ld	a, #0xc4
   7E3B 02            [ 7] 1217 	ld	(bc), a
                           1218 ;src/game/world.c:224: p_cities[1] = 0b00001110; // 01110000;
   7E3C DD 6E FC      [19] 1219 	ld	l,-4 (ix)
   7E3F DD 66 FD      [19] 1220 	ld	h,-3 (ix)
   7E42 36 0E         [10] 1221 	ld	(hl), #0x0e
                           1222 ;src/game/world.c:225: break;
   7E44 18 0B         [12] 1223 	jr	00116$
                           1224 ;src/game/world.c:227: case 5:
   7E46                    1225 00115$:
                           1226 ;src/game/world.c:228: p_cities[0] = 0b01000000; // 00000010;
   7E46 3E 40         [ 7] 1227 	ld	a, #0x40
   7E48 02            [ 7] 1228 	ld	(bc), a
                           1229 ;src/game/world.c:229: p_cities[1] = 0b01001110; // 01110010;
   7E49 DD 6E FC      [19] 1230 	ld	l,-4 (ix)
   7E4C DD 66 FD      [19] 1231 	ld	h,-3 (ix)
   7E4F 36 4E         [10] 1232 	ld	(hl), #0x4e
                           1233 ;src/game/world.c:231: }
   7E51                    1234 00116$:
                           1235 ;src/game/world.c:233: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   7E51 59            [ 4] 1236 	ld	e, c
   7E52 50            [ 4] 1237 	ld	d, b
   7E53 C5            [11] 1238 	push	bc
   7E54 D5            [11] 1239 	push	de
   7E55 21 04 04      [10] 1240 	ld	hl, #0x0404
   7E58 E5            [11] 1241 	push	hl
   7E59 DD 6E F4      [19] 1242 	ld	l,-12 (ix)
   7E5C DD 66 F5      [19] 1243 	ld	h,-11 (ix)
   7E5F E5            [11] 1244 	push	hl
   7E60 3E 02         [ 7] 1245 	ld	a, #0x02
   7E62 F5            [11] 1246 	push	af
   7E63 33            [ 6] 1247 	inc	sp
   7E64 CD 4F 7A      [17] 1248 	call	_patternTile
   7E67 21 07 00      [10] 1249 	ld	hl, #7
   7E6A 39            [11] 1250 	add	hl, sp
   7E6B F9            [ 6] 1251 	ld	sp, hl
   7E6C C1            [10] 1252 	pop	bc
                           1253 ;src/game/world.c:196: for(ix=0; ix<NBURBAN; ix++)
   7E6D DD 34 E4      [23] 1254 	inc	-28 (ix)
   7E70 20 03         [12] 1255 	jr	NZ,00212$
   7E72 DD 34 E5      [23] 1256 	inc	-27 (ix)
   7E75                    1257 00212$:
   7E75 DD 7E E4      [19] 1258 	ld	a, -28 (ix)
   7E78 D6 14         [ 7] 1259 	sub	a, #0x14
   7E7A DD 7E E5      [19] 1260 	ld	a, -27 (ix)
   7E7D 17            [ 4] 1261 	rla
   7E7E 3F            [ 4] 1262 	ccf
   7E7F 1F            [ 4] 1263 	rra
   7E80 DE 80         [ 7] 1264 	sbc	a, #0x80
   7E82 DA BC 7D      [10] 1265 	jp	C, 00129$
                           1266 ;src/game/world.c:238: for(ix=0; ix<NBLIVESTOCK; ix++)
   7E85 01 13 00      [10] 1267 	ld	bc, #0x0013
   7E88                    1268 00133$:
                           1269 ;src/game/world.c:240: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
   7E88 C5            [11] 1270 	push	bc
   7E89 CD DD 64      [17] 1271 	call	_cpct_getRandom_mxor_u16
   7E8C 11 00 0F      [10] 1272 	ld	de, #0x0f00
   7E8F D5            [11] 1273 	push	de
   7E90 E5            [11] 1274 	push	hl
   7E91 CD BC 62      [17] 1275 	call	__moduint
   7E94 F1            [10] 1276 	pop	af
   7E95 F1            [10] 1277 	pop	af
   7E96 C1            [10] 1278 	pop	bc
                           1279 ;src/game/world.c:241: p_world[iy] = LIVESTOCK;
   7E97 11 88 68      [10] 1280 	ld	de, #_p_world
   7E9A 19            [11] 1281 	add	hl, de
   7E9B 36 09         [10] 1282 	ld	(hl), #0x09
   7E9D 0B            [ 6] 1283 	dec	bc
                           1284 ;src/game/world.c:238: for(ix=0; ix<NBLIVESTOCK; ix++)
   7E9E 78            [ 4] 1285 	ld	a, b
   7E9F B1            [ 4] 1286 	or	a,c
   7EA0 20 E6         [12] 1287 	jr	NZ,00133$
   7EA2 DD F9         [10] 1288 	ld	sp, ix
   7EA4 DD E1         [14] 1289 	pop	ix
   7EA6 C9            [10] 1290 	ret
                           1291 ;src/game/world.c:245: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           1292 ;	---------------------------------
                           1293 ; Function drawTile
                           1294 ; ---------------------------------
   7EA7                    1295 _drawTile::
   7EA7 DD E5         [15] 1296 	push	ix
   7EA9 DD 21 00 00   [14] 1297 	ld	ix,#0
   7EAD DD 39         [15] 1298 	add	ix,sp
                           1299 ;src/game/world.c:248: int adress = (y_+iy)*WIDTH+x_+ix;
   7EAF DD 4E 05      [19] 1300 	ld	c, 5 (ix)
   7EB2 06 00         [ 7] 1301 	ld	b, #0x00
   7EB4 DD 6E 07      [19] 1302 	ld	l, 7 (ix)
   7EB7 26 00         [ 7] 1303 	ld	h, #0x00
   7EB9 09            [11] 1304 	add	hl, bc
   7EBA 4D            [ 4] 1305 	ld	c, l
   7EBB 44            [ 4] 1306 	ld	b, h
   7EBC 29            [11] 1307 	add	hl, hl
   7EBD 29            [11] 1308 	add	hl, hl
   7EBE 09            [11] 1309 	add	hl, bc
   7EBF 29            [11] 1310 	add	hl, hl
   7EC0 29            [11] 1311 	add	hl, hl
   7EC1 29            [11] 1312 	add	hl, hl
   7EC2 29            [11] 1313 	add	hl, hl
   7EC3 DD 4E 04      [19] 1314 	ld	c, 4 (ix)
   7EC6 06 00         [ 7] 1315 	ld	b, #0x00
   7EC8 09            [11] 1316 	add	hl, bc
   7EC9 DD 4E 06      [19] 1317 	ld	c, 6 (ix)
   7ECC 06 00         [ 7] 1318 	ld	b, #0x00
   7ECE 09            [11] 1319 	add	hl,bc
   7ECF 5D            [ 4] 1320 	ld	e, l
   7ED0 54            [ 4] 1321 	ld	d, h
                           1322 ;src/game/world.c:250: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   7ED1 DD 7E 07      [19] 1323 	ld	a, 7 (ix)
   7ED4 07            [ 4] 1324 	rlca
   7ED5 07            [ 4] 1325 	rlca
   7ED6 07            [ 4] 1326 	rlca
   7ED7 07            [ 4] 1327 	rlca
   7ED8 E6 F0         [ 7] 1328 	and	a, #0xf0
   7EDA 67            [ 4] 1329 	ld	h, a
   7EDB DD 7E 06      [19] 1330 	ld	a, 6 (ix)
   7EDE 87            [ 4] 1331 	add	a, a
   7EDF 87            [ 4] 1332 	add	a, a
   7EE0 47            [ 4] 1333 	ld	b, a
   7EE1 D5            [11] 1334 	push	de
   7EE2 E5            [11] 1335 	push	hl
   7EE3 33            [ 6] 1336 	inc	sp
   7EE4 C5            [11] 1337 	push	bc
   7EE5 33            [ 6] 1338 	inc	sp
   7EE6 21 00 C0      [10] 1339 	ld	hl, #0xc000
   7EE9 E5            [11] 1340 	push	hl
   7EEA CD D0 66      [17] 1341 	call	_cpct_getScreenPtr
   7EED 4D            [ 4] 1342 	ld	c, l
   7EEE 44            [ 4] 1343 	ld	b, h
   7EEF D1            [10] 1344 	pop	de
                           1345 ;src/game/world.c:252: switch(p_world[adress])
   7EF0 21 88 68      [10] 1346 	ld	hl, #_p_world+0
   7EF3 19            [11] 1347 	add	hl, de
   7EF4 5E            [ 7] 1348 	ld	e, (hl)
   7EF5 3E 19         [ 7] 1349 	ld	a, #0x19
   7EF7 93            [ 4] 1350 	sub	a, e
   7EF8 DA CD 80      [10] 1351 	jp	C, 00128$
   7EFB 16 00         [ 7] 1352 	ld	d, #0x00
   7EFD 21 04 7F      [10] 1353 	ld	hl, #00134$
   7F00 19            [11] 1354 	add	hl, de
   7F01 19            [11] 1355 	add	hl, de
   7F02 19            [11] 1356 	add	hl, de
   7F03 E9            [ 4] 1357 	jp	(hl)
   7F04                    1358 00134$:
   7F04 C3 52 7F      [10] 1359 	jp	00101$
   7F07 C3 61 7F      [10] 1360 	jp	00102$
   7F0A C3 70 7F      [10] 1361 	jp	00103$
   7F0D C3 7F 7F      [10] 1362 	jp	00104$
   7F10 C3 8E 7F      [10] 1363 	jp	00105$
   7F13 C3 9D 7F      [10] 1364 	jp	00106$
   7F16 C3 AC 7F      [10] 1365 	jp	00107$
   7F19 C3 BB 7F      [10] 1366 	jp	00108$
   7F1C C3 CA 7F      [10] 1367 	jp	00109$
   7F1F C3 D9 7F      [10] 1368 	jp	00110$
   7F22 C3 E8 7F      [10] 1369 	jp	00111$
   7F25 C3 F7 7F      [10] 1370 	jp	00112$
   7F28 C3 06 80      [10] 1371 	jp	00113$
   7F2B C3 15 80      [10] 1372 	jp	00114$
   7F2E C3 24 80      [10] 1373 	jp	00115$
   7F31 C3 33 80      [10] 1374 	jp	00116$
   7F34 C3 42 80      [10] 1375 	jp	00117$
   7F37 C3 51 80      [10] 1376 	jp	00118$
   7F3A C3 5F 80      [10] 1377 	jp	00119$
   7F3D C3 6D 80      [10] 1378 	jp	00120$
   7F40 C3 7B 80      [10] 1379 	jp	00121$
   7F43 C3 89 80      [10] 1380 	jp	00122$
   7F46 C3 97 80      [10] 1381 	jp	00123$
   7F49 C3 A5 80      [10] 1382 	jp	00124$
   7F4C C3 B3 80      [10] 1383 	jp	00125$
   7F4F C3 C1 80      [10] 1384 	jp	00126$
                           1385 ;src/game/world.c:254: case GRASS1:
   7F52                    1386 00101$:
                           1387 ;src/game/world.c:255: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   7F52 21 04 10      [10] 1388 	ld	hl, #0x1004
   7F55 E5            [11] 1389 	push	hl
   7F56 C5            [11] 1390 	push	bc
   7F57 21 D4 47      [10] 1391 	ld	hl, #_grass1
   7F5A E5            [11] 1392 	push	hl
   7F5B CD 0B 62      [17] 1393 	call	_cpct_drawSprite
                           1394 ;src/game/world.c:256: break;
   7F5E C3 CD 80      [10] 1395 	jp	00128$
                           1396 ;src/game/world.c:257: case GRASS2:
   7F61                    1397 00102$:
                           1398 ;src/game/world.c:258: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   7F61 21 04 10      [10] 1399 	ld	hl, #0x1004
   7F64 E5            [11] 1400 	push	hl
   7F65 C5            [11] 1401 	push	bc
   7F66 21 14 48      [10] 1402 	ld	hl, #_grass2
   7F69 E5            [11] 1403 	push	hl
   7F6A CD 0B 62      [17] 1404 	call	_cpct_drawSprite
                           1405 ;src/game/world.c:259: break;
   7F6D C3 CD 80      [10] 1406 	jp	00128$
                           1407 ;src/game/world.c:260: case DWELLINGS1:
   7F70                    1408 00103$:
                           1409 ;src/game/world.c:261: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   7F70 21 04 10      [10] 1410 	ld	hl, #0x1004
   7F73 E5            [11] 1411 	push	hl
   7F74 C5            [11] 1412 	push	bc
   7F75 21 94 48      [10] 1413 	ld	hl, #_dwellings1
   7F78 E5            [11] 1414 	push	hl
   7F79 CD 0B 62      [17] 1415 	call	_cpct_drawSprite
                           1416 ;src/game/world.c:262: break;
   7F7C C3 CD 80      [10] 1417 	jp	00128$
                           1418 ;src/game/world.c:263: case DWELLINGS2:
   7F7F                    1419 00104$:
                           1420 ;src/game/world.c:264: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   7F7F 21 04 10      [10] 1421 	ld	hl, #0x1004
   7F82 E5            [11] 1422 	push	hl
   7F83 C5            [11] 1423 	push	bc
   7F84 21 D4 48      [10] 1424 	ld	hl, #_dwellings2
   7F87 E5            [11] 1425 	push	hl
   7F88 CD 0B 62      [17] 1426 	call	_cpct_drawSprite
                           1427 ;src/game/world.c:265: break;
   7F8B C3 CD 80      [10] 1428 	jp	00128$
                           1429 ;src/game/world.c:266: case DWELLINGS3:
   7F8E                    1430 00105$:
                           1431 ;src/game/world.c:267: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   7F8E 21 04 10      [10] 1432 	ld	hl, #0x1004
   7F91 E5            [11] 1433 	push	hl
   7F92 C5            [11] 1434 	push	bc
   7F93 21 14 49      [10] 1435 	ld	hl, #_dwellings3
   7F96 E5            [11] 1436 	push	hl
   7F97 CD 0B 62      [17] 1437 	call	_cpct_drawSprite
                           1438 ;src/game/world.c:268: break;
   7F9A C3 CD 80      [10] 1439 	jp	00128$
                           1440 ;src/game/world.c:269: case FARM1:
   7F9D                    1441 00106$:
                           1442 ;src/game/world.c:270: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   7F9D 21 04 10      [10] 1443 	ld	hl, #0x1004
   7FA0 E5            [11] 1444 	push	hl
   7FA1 C5            [11] 1445 	push	bc
   7FA2 21 94 49      [10] 1446 	ld	hl, #_farm1
   7FA5 E5            [11] 1447 	push	hl
   7FA6 CD 0B 62      [17] 1448 	call	_cpct_drawSprite
                           1449 ;src/game/world.c:271: break;
   7FA9 C3 CD 80      [10] 1450 	jp	00128$
                           1451 ;src/game/world.c:272: case FARM2:
   7FAC                    1452 00107$:
                           1453 ;src/game/world.c:273: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   7FAC 21 04 10      [10] 1454 	ld	hl, #0x1004
   7FAF E5            [11] 1455 	push	hl
   7FB0 C5            [11] 1456 	push	bc
   7FB1 21 D4 49      [10] 1457 	ld	hl, #_farm2
   7FB4 E5            [11] 1458 	push	hl
   7FB5 CD 0B 62      [17] 1459 	call	_cpct_drawSprite
                           1460 ;src/game/world.c:274: break;
   7FB8 C3 CD 80      [10] 1461 	jp	00128$
                           1462 ;src/game/world.c:275: case WATER:
   7FBB                    1463 00108$:
                           1464 ;src/game/world.c:276: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   7FBB 21 04 10      [10] 1465 	ld	hl, #0x1004
   7FBE E5            [11] 1466 	push	hl
   7FBF C5            [11] 1467 	push	bc
   7FC0 21 54 49      [10] 1468 	ld	hl, #_water
   7FC3 E5            [11] 1469 	push	hl
   7FC4 CD 0B 62      [17] 1470 	call	_cpct_drawSprite
                           1471 ;src/game/world.c:277: break;
   7FC7 C3 CD 80      [10] 1472 	jp	00128$
                           1473 ;src/game/world.c:278: case FOREST:
   7FCA                    1474 00109$:
                           1475 ;src/game/world.c:279: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   7FCA 21 04 10      [10] 1476 	ld	hl, #0x1004
   7FCD E5            [11] 1477 	push	hl
   7FCE C5            [11] 1478 	push	bc
   7FCF 21 54 48      [10] 1479 	ld	hl, #_forest
   7FD2 E5            [11] 1480 	push	hl
   7FD3 CD 0B 62      [17] 1481 	call	_cpct_drawSprite
                           1482 ;src/game/world.c:280: break;
   7FD6 C3 CD 80      [10] 1483 	jp	00128$
                           1484 ;src/game/world.c:281: case LIVESTOCK:
   7FD9                    1485 00110$:
                           1486 ;src/game/world.c:282: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   7FD9 21 04 10      [10] 1487 	ld	hl, #0x1004
   7FDC E5            [11] 1488 	push	hl
   7FDD C5            [11] 1489 	push	bc
   7FDE 21 14 4A      [10] 1490 	ld	hl, #_livestock
   7FE1 E5            [11] 1491 	push	hl
   7FE2 CD 0B 62      [17] 1492 	call	_cpct_drawSprite
                           1493 ;src/game/world.c:283: break;
   7FE5 C3 CD 80      [10] 1494 	jp	00128$
                           1495 ;src/game/world.c:284: case SSNS:
   7FE8                    1496 00111$:
                           1497 ;src/game/world.c:285: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   7FE8 21 04 10      [10] 1498 	ld	hl, #0x1004
   7FEB E5            [11] 1499 	push	hl
   7FEC C5            [11] 1500 	push	bc
   7FED 21 54 4A      [10] 1501 	ld	hl, #_station_small_ns
   7FF0 E5            [11] 1502 	push	hl
   7FF1 CD 0B 62      [17] 1503 	call	_cpct_drawSprite
                           1504 ;src/game/world.c:286: break;
   7FF4 C3 CD 80      [10] 1505 	jp	00128$
                           1506 ;src/game/world.c:287: case SSEW:
   7FF7                    1507 00112$:
                           1508 ;src/game/world.c:288: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   7FF7 21 04 10      [10] 1509 	ld	hl, #0x1004
   7FFA E5            [11] 1510 	push	hl
   7FFB C5            [11] 1511 	push	bc
   7FFC 21 94 4A      [10] 1512 	ld	hl, #_station_small_ew
   7FFF E5            [11] 1513 	push	hl
   8000 CD 0B 62      [17] 1514 	call	_cpct_drawSprite
                           1515 ;src/game/world.c:289: break;
   8003 C3 CD 80      [10] 1516 	jp	00128$
                           1517 ;src/game/world.c:290: case SMNS:
   8006                    1518 00113$:
                           1519 ;src/game/world.c:291: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   8006 21 04 10      [10] 1520 	ld	hl, #0x1004
   8009 E5            [11] 1521 	push	hl
   800A C5            [11] 1522 	push	bc
   800B 21 D4 4A      [10] 1523 	ld	hl, #_station_medium_ns
   800E E5            [11] 1524 	push	hl
   800F CD 0B 62      [17] 1525 	call	_cpct_drawSprite
                           1526 ;src/game/world.c:292: break;
   8012 C3 CD 80      [10] 1527 	jp	00128$
                           1528 ;src/game/world.c:293: case SMEW:
   8015                    1529 00114$:
                           1530 ;src/game/world.c:294: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   8015 21 04 10      [10] 1531 	ld	hl, #0x1004
   8018 E5            [11] 1532 	push	hl
   8019 C5            [11] 1533 	push	bc
   801A 21 14 4B      [10] 1534 	ld	hl, #_station_medium_ew
   801D E5            [11] 1535 	push	hl
   801E CD 0B 62      [17] 1536 	call	_cpct_drawSprite
                           1537 ;src/game/world.c:295: break;
   8021 C3 CD 80      [10] 1538 	jp	00128$
                           1539 ;src/game/world.c:296: case SLNS:
   8024                    1540 00115$:
                           1541 ;src/game/world.c:297: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   8024 21 04 10      [10] 1542 	ld	hl, #0x1004
   8027 E5            [11] 1543 	push	hl
   8028 C5            [11] 1544 	push	bc
   8029 21 54 4B      [10] 1545 	ld	hl, #_station_large_ns
   802C E5            [11] 1546 	push	hl
   802D CD 0B 62      [17] 1547 	call	_cpct_drawSprite
                           1548 ;src/game/world.c:298: break;
   8030 C3 CD 80      [10] 1549 	jp	00128$
                           1550 ;src/game/world.c:299: case SLEW:
   8033                    1551 00116$:
                           1552 ;src/game/world.c:300: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   8033 21 04 10      [10] 1553 	ld	hl, #0x1004
   8036 E5            [11] 1554 	push	hl
   8037 C5            [11] 1555 	push	bc
   8038 21 94 4B      [10] 1556 	ld	hl, #_station_large_ew
   803B E5            [11] 1557 	push	hl
   803C CD 0B 62      [17] 1558 	call	_cpct_drawSprite
                           1559 ;src/game/world.c:301: break;
   803F C3 CD 80      [10] 1560 	jp	00128$
                           1561 ;src/game/world.c:302: case REW:
   8042                    1562 00117$:
                           1563 ;src/game/world.c:303: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   8042 21 04 10      [10] 1564 	ld	hl, #0x1004
   8045 E5            [11] 1565 	push	hl
   8046 C5            [11] 1566 	push	bc
   8047 21 D4 4B      [10] 1567 	ld	hl, #_rail_ew
   804A E5            [11] 1568 	push	hl
   804B CD 0B 62      [17] 1569 	call	_cpct_drawSprite
                           1570 ;src/game/world.c:304: break;
   804E C3 CD 80      [10] 1571 	jp	00128$
                           1572 ;src/game/world.c:305: case RNS:
   8051                    1573 00118$:
                           1574 ;src/game/world.c:306: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   8051 21 04 10      [10] 1575 	ld	hl, #0x1004
   8054 E5            [11] 1576 	push	hl
   8055 C5            [11] 1577 	push	bc
   8056 21 14 4C      [10] 1578 	ld	hl, #_rail_ns
   8059 E5            [11] 1579 	push	hl
   805A CD 0B 62      [17] 1580 	call	_cpct_drawSprite
                           1581 ;src/game/world.c:307: break;
   805D 18 6E         [12] 1582 	jr	00128$
                           1583 ;src/game/world.c:308: case REN:
   805F                    1584 00119$:
                           1585 ;src/game/world.c:309: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   805F 21 04 10      [10] 1586 	ld	hl, #0x1004
   8062 E5            [11] 1587 	push	hl
   8063 C5            [11] 1588 	push	bc
   8064 21 54 4C      [10] 1589 	ld	hl, #_rail_en
   8067 E5            [11] 1590 	push	hl
   8068 CD 0B 62      [17] 1591 	call	_cpct_drawSprite
                           1592 ;src/game/world.c:310: break;
   806B 18 60         [12] 1593 	jr	00128$
                           1594 ;src/game/world.c:311: case RES:
   806D                    1595 00120$:
                           1596 ;src/game/world.c:312: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   806D 21 04 10      [10] 1597 	ld	hl, #0x1004
   8070 E5            [11] 1598 	push	hl
   8071 C5            [11] 1599 	push	bc
   8072 21 94 4C      [10] 1600 	ld	hl, #_rail_es
   8075 E5            [11] 1601 	push	hl
   8076 CD 0B 62      [17] 1602 	call	_cpct_drawSprite
                           1603 ;src/game/world.c:313: break;
   8079 18 52         [12] 1604 	jr	00128$
                           1605 ;src/game/world.c:314: case RWN:
   807B                    1606 00121$:
                           1607 ;src/game/world.c:315: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   807B 21 04 10      [10] 1608 	ld	hl, #0x1004
   807E E5            [11] 1609 	push	hl
   807F C5            [11] 1610 	push	bc
   8080 21 D4 4C      [10] 1611 	ld	hl, #_rail_wn
   8083 E5            [11] 1612 	push	hl
   8084 CD 0B 62      [17] 1613 	call	_cpct_drawSprite
                           1614 ;src/game/world.c:316: break;
   8087 18 44         [12] 1615 	jr	00128$
                           1616 ;src/game/world.c:317: case RWS:
   8089                    1617 00122$:
                           1618 ;src/game/world.c:318: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   8089 21 04 10      [10] 1619 	ld	hl, #0x1004
   808C E5            [11] 1620 	push	hl
   808D C5            [11] 1621 	push	bc
   808E 21 14 4D      [10] 1622 	ld	hl, #_rail_ws
   8091 E5            [11] 1623 	push	hl
   8092 CD 0B 62      [17] 1624 	call	_cpct_drawSprite
                           1625 ;src/game/world.c:319: break;
   8095 18 36         [12] 1626 	jr	00128$
                           1627 ;src/game/world.c:320: case REWN:
   8097                    1628 00123$:
                           1629 ;src/game/world.c:321: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   8097 21 04 10      [10] 1630 	ld	hl, #0x1004
   809A E5            [11] 1631 	push	hl
   809B C5            [11] 1632 	push	bc
   809C 21 54 4D      [10] 1633 	ld	hl, #_rail_ew_n
   809F E5            [11] 1634 	push	hl
   80A0 CD 0B 62      [17] 1635 	call	_cpct_drawSprite
                           1636 ;src/game/world.c:322: break;
   80A3 18 28         [12] 1637 	jr	00128$
                           1638 ;src/game/world.c:323: case REWS:
   80A5                    1639 00124$:
                           1640 ;src/game/world.c:324: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   80A5 21 04 10      [10] 1641 	ld	hl, #0x1004
   80A8 E5            [11] 1642 	push	hl
   80A9 C5            [11] 1643 	push	bc
   80AA 21 94 4D      [10] 1644 	ld	hl, #_rail_ew_s
   80AD E5            [11] 1645 	push	hl
   80AE CD 0B 62      [17] 1646 	call	_cpct_drawSprite
                           1647 ;src/game/world.c:325: break;
   80B1 18 1A         [12] 1648 	jr	00128$
                           1649 ;src/game/world.c:326: case RNSE:
   80B3                    1650 00125$:
                           1651 ;src/game/world.c:327: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   80B3 21 04 10      [10] 1652 	ld	hl, #0x1004
   80B6 E5            [11] 1653 	push	hl
   80B7 C5            [11] 1654 	push	bc
   80B8 21 14 4E      [10] 1655 	ld	hl, #_rail_ns_e
   80BB E5            [11] 1656 	push	hl
   80BC CD 0B 62      [17] 1657 	call	_cpct_drawSprite
                           1658 ;src/game/world.c:328: break;
   80BF 18 0C         [12] 1659 	jr	00128$
                           1660 ;src/game/world.c:329: case RNSW:
   80C1                    1661 00126$:
                           1662 ;src/game/world.c:330: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   80C1 21 04 10      [10] 1663 	ld	hl, #0x1004
   80C4 E5            [11] 1664 	push	hl
   80C5 C5            [11] 1665 	push	bc
   80C6 21 D4 4D      [10] 1666 	ld	hl, #_rail_ns_w
   80C9 E5            [11] 1667 	push	hl
   80CA CD 0B 62      [17] 1668 	call	_cpct_drawSprite
                           1669 ;src/game/world.c:332: }
   80CD                    1670 00128$:
   80CD DD E1         [14] 1671 	pop	ix
   80CF C9            [10] 1672 	ret
                           1673 ;src/game/world.c:335: void drawScrolls(u8 x, u8 y)
                           1674 ;	---------------------------------
                           1675 ; Function drawScrolls
                           1676 ; ---------------------------------
   80D0                    1677 _drawScrolls::
   80D0 DD E5         [15] 1678 	push	ix
   80D2 DD 21 00 00   [14] 1679 	ld	ix,#0
   80D6 DD 39         [15] 1680 	add	ix,sp
   80D8 F5            [11] 1681 	push	af
                           1682 ;src/game/world.c:337: int scrollx = x* (WIDTH-TILESIZE_W)*4/(WIDTH-NBTILE_W);
   80D9 DD 4E 04      [19] 1683 	ld	c, 4 (ix)
   80DC 06 00         [ 7] 1684 	ld	b, #0x00
   80DE 69            [ 4] 1685 	ld	l, c
   80DF 60            [ 4] 1686 	ld	h, b
   80E0 29            [11] 1687 	add	hl, hl
   80E1 29            [11] 1688 	add	hl, hl
   80E2 29            [11] 1689 	add	hl, hl
   80E3 09            [11] 1690 	add	hl, bc
   80E4 29            [11] 1691 	add	hl, hl
   80E5 09            [11] 1692 	add	hl, bc
   80E6 29            [11] 1693 	add	hl, hl
   80E7 29            [11] 1694 	add	hl, hl
   80E8 29            [11] 1695 	add	hl, hl
   80E9 29            [11] 1696 	add	hl, hl
   80EA 01 3C 00      [10] 1697 	ld	bc, #0x003c
   80ED C5            [11] 1698 	push	bc
   80EE E5            [11] 1699 	push	hl
   80EF CD 21 67      [17] 1700 	call	__divsint
   80F2 F1            [10] 1701 	pop	af
   80F3 F1            [10] 1702 	pop	af
   80F4 4D            [ 4] 1703 	ld	c, l
   80F5 44            [ 4] 1704 	ld	b, h
                           1705 ;src/game/world.c:338: int scrolly = y* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   80F6 DD 5E 05      [19] 1706 	ld	e,5 (ix)
   80F9 16 00         [ 7] 1707 	ld	d,#0x00
   80FB 6B            [ 4] 1708 	ld	l, e
   80FC 62            [ 4] 1709 	ld	h, d
   80FD 29            [11] 1710 	add	hl, hl
   80FE 29            [11] 1711 	add	hl, hl
   80FF 19            [11] 1712 	add	hl, de
   8100 29            [11] 1713 	add	hl, hl
   8101 19            [11] 1714 	add	hl, de
   8102 29            [11] 1715 	add	hl, hl
   8103 29            [11] 1716 	add	hl, hl
   8104 29            [11] 1717 	add	hl, hl
   8105 29            [11] 1718 	add	hl, hl
   8106 C5            [11] 1719 	push	bc
   8107 11 24 00      [10] 1720 	ld	de, #0x0024
   810A D5            [11] 1721 	push	de
   810B E5            [11] 1722 	push	hl
   810C CD 21 67      [17] 1723 	call	__divsint
   810F F1            [10] 1724 	pop	af
   8110 F1            [10] 1725 	pop	af
   8111 C1            [10] 1726 	pop	bc
   8112 33            [ 6] 1727 	inc	sp
   8113 33            [ 6] 1728 	inc	sp
   8114 E5            [11] 1729 	push	hl
                           1730 ;src/game/world.c:340: setPixel(scrollx, 1, 0);
   8115 C5            [11] 1731 	push	bc
   8116 21 01 00      [10] 1732 	ld	hl, #0x0001
   8119 E5            [11] 1733 	push	hl
   811A C5            [11] 1734 	push	bc
   811B CD EA 82      [17] 1735 	call	_setPixel
   811E F1            [10] 1736 	pop	af
   811F F1            [10] 1737 	pop	af
   8120 C1            [10] 1738 	pop	bc
                           1739 ;src/game/world.c:341: setPixel(scrollx+1, 0, 0);
   8121 59            [ 4] 1740 	ld	e, c
   8122 50            [ 4] 1741 	ld	d, b
   8123 13            [ 6] 1742 	inc	de
   8124 C5            [11] 1743 	push	bc
   8125 D5            [11] 1744 	push	de
   8126 21 00 00      [10] 1745 	ld	hl, #0x0000
   8129 E5            [11] 1746 	push	hl
   812A D5            [11] 1747 	push	de
   812B CD EA 82      [17] 1748 	call	_setPixel
   812E F1            [10] 1749 	pop	af
   812F F1            [10] 1750 	pop	af
   8130 D1            [10] 1751 	pop	de
   8131 D5            [11] 1752 	push	de
   8132 21 01 00      [10] 1753 	ld	hl, #0x0001
   8135 E5            [11] 1754 	push	hl
   8136 D5            [11] 1755 	push	de
   8137 CD EA 82      [17] 1756 	call	_setPixel
   813A F1            [10] 1757 	pop	af
   813B F1            [10] 1758 	pop	af
   813C D1            [10] 1759 	pop	de
   813D 21 02 00      [10] 1760 	ld	hl, #0x0002
   8140 E5            [11] 1761 	push	hl
   8141 D5            [11] 1762 	push	de
   8142 CD EA 82      [17] 1763 	call	_setPixel
   8145 F1            [10] 1764 	pop	af
   8146 F1            [10] 1765 	pop	af
   8147 C1            [10] 1766 	pop	bc
                           1767 ;src/game/world.c:345: setPixel(scrollx+15, 1, 0);
   8148 21 0F 00      [10] 1768 	ld	hl, #0x000f
   814B 09            [11] 1769 	add	hl, bc
   814C C5            [11] 1770 	push	bc
   814D 11 01 00      [10] 1771 	ld	de, #0x0001
   8150 D5            [11] 1772 	push	de
   8151 E5            [11] 1773 	push	hl
   8152 CD EA 82      [17] 1774 	call	_setPixel
   8155 F1            [10] 1775 	pop	af
   8156 F1            [10] 1776 	pop	af
   8157 C1            [10] 1777 	pop	bc
                           1778 ;src/game/world.c:346: setPixel(scrollx+14, 0, 0);
   8158 21 0E 00      [10] 1779 	ld	hl, #0x000e
   815B 09            [11] 1780 	add	hl, bc
   815C E5            [11] 1781 	push	hl
   815D 01 00 00      [10] 1782 	ld	bc, #0x0000
   8160 C5            [11] 1783 	push	bc
   8161 E5            [11] 1784 	push	hl
   8162 CD EA 82      [17] 1785 	call	_setPixel
   8165 F1            [10] 1786 	pop	af
   8166 F1            [10] 1787 	pop	af
   8167 E1            [10] 1788 	pop	hl
                           1789 ;src/game/world.c:347: setPixel(scrollx+14, 1, 0);
   8168 E5            [11] 1790 	push	hl
   8169 01 01 00      [10] 1791 	ld	bc, #0x0001
   816C C5            [11] 1792 	push	bc
   816D E5            [11] 1793 	push	hl
   816E CD EA 82      [17] 1794 	call	_setPixel
   8171 F1            [10] 1795 	pop	af
   8172 F1            [10] 1796 	pop	af
   8173 E1            [10] 1797 	pop	hl
                           1798 ;src/game/world.c:348: setPixel(scrollx+14, 2, 0);
   8174 01 02 00      [10] 1799 	ld	bc, #0x0002
   8177 C5            [11] 1800 	push	bc
   8178 E5            [11] 1801 	push	hl
   8179 CD EA 82      [17] 1802 	call	_setPixel
   817C F1            [10] 1803 	pop	af
   817D F1            [10] 1804 	pop	af
                           1805 ;src/game/world.c:350: setPixel(1, scrolly, 0);
   817E DD 46 FE      [19] 1806 	ld	b, -2 (ix)
   8181 AF            [ 4] 1807 	xor	a, a
   8182 F5            [11] 1808 	push	af
   8183 33            [ 6] 1809 	inc	sp
   8184 C5            [11] 1810 	push	bc
   8185 33            [ 6] 1811 	inc	sp
   8186 21 01 00      [10] 1812 	ld	hl, #0x0001
   8189 E5            [11] 1813 	push	hl
   818A CD EA 82      [17] 1814 	call	_setPixel
   818D F1            [10] 1815 	pop	af
   818E F1            [10] 1816 	pop	af
                           1817 ;src/game/world.c:351: setPixel(0, scrolly+1, 0);
   818F DD 4E FE      [19] 1818 	ld	c, -2 (ix)
   8192 41            [ 4] 1819 	ld	b, c
   8193 04            [ 4] 1820 	inc	b
   8194 C5            [11] 1821 	push	bc
   8195 AF            [ 4] 1822 	xor	a, a
   8196 F5            [11] 1823 	push	af
   8197 33            [ 6] 1824 	inc	sp
   8198 C5            [11] 1825 	push	bc
   8199 33            [ 6] 1826 	inc	sp
   819A 21 00 00      [10] 1827 	ld	hl, #0x0000
   819D E5            [11] 1828 	push	hl
   819E CD EA 82      [17] 1829 	call	_setPixel
   81A1 F1            [10] 1830 	pop	af
   81A2 F1            [10] 1831 	pop	af
   81A3 C1            [10] 1832 	pop	bc
                           1833 ;src/game/world.c:352: setPixel(1, scrolly+1, 0);
   81A4 C5            [11] 1834 	push	bc
   81A5 AF            [ 4] 1835 	xor	a, a
   81A6 F5            [11] 1836 	push	af
   81A7 33            [ 6] 1837 	inc	sp
   81A8 C5            [11] 1838 	push	bc
   81A9 33            [ 6] 1839 	inc	sp
   81AA 21 01 00      [10] 1840 	ld	hl, #0x0001
   81AD E5            [11] 1841 	push	hl
   81AE CD EA 82      [17] 1842 	call	_setPixel
   81B1 F1            [10] 1843 	pop	af
   81B2 F1            [10] 1844 	pop	af
   81B3 C1            [10] 1845 	pop	bc
                           1846 ;src/game/world.c:353: setPixel(2, scrolly+1, 0);
   81B4 C5            [11] 1847 	push	bc
   81B5 AF            [ 4] 1848 	xor	a, a
   81B6 F5            [11] 1849 	push	af
   81B7 33            [ 6] 1850 	inc	sp
   81B8 C5            [11] 1851 	push	bc
   81B9 33            [ 6] 1852 	inc	sp
   81BA 21 02 00      [10] 1853 	ld	hl, #0x0002
   81BD E5            [11] 1854 	push	hl
   81BE CD EA 82      [17] 1855 	call	_setPixel
   81C1 F1            [10] 1856 	pop	af
   81C2 F1            [10] 1857 	pop	af
   81C3 C1            [10] 1858 	pop	bc
                           1859 ;src/game/world.c:355: setPixel(1, scrolly+15, 0);
   81C4 79            [ 4] 1860 	ld	a, c
   81C5 C6 0F         [ 7] 1861 	add	a, #0x0f
   81C7 47            [ 4] 1862 	ld	b, a
   81C8 C5            [11] 1863 	push	bc
   81C9 AF            [ 4] 1864 	xor	a, a
   81CA F5            [11] 1865 	push	af
   81CB 33            [ 6] 1866 	inc	sp
   81CC C5            [11] 1867 	push	bc
   81CD 33            [ 6] 1868 	inc	sp
   81CE 21 01 00      [10] 1869 	ld	hl, #0x0001
   81D1 E5            [11] 1870 	push	hl
   81D2 CD EA 82      [17] 1871 	call	_setPixel
   81D5 F1            [10] 1872 	pop	af
   81D6 F1            [10] 1873 	pop	af
   81D7 C1            [10] 1874 	pop	bc
                           1875 ;src/game/world.c:356: setPixel(0, scrolly+14, 0);
   81D8 79            [ 4] 1876 	ld	a, c
   81D9 C6 0E         [ 7] 1877 	add	a, #0x0e
   81DB 47            [ 4] 1878 	ld	b, a
   81DC C5            [11] 1879 	push	bc
   81DD AF            [ 4] 1880 	xor	a, a
   81DE F5            [11] 1881 	push	af
   81DF 33            [ 6] 1882 	inc	sp
   81E0 C5            [11] 1883 	push	bc
   81E1 33            [ 6] 1884 	inc	sp
   81E2 21 00 00      [10] 1885 	ld	hl, #0x0000
   81E5 E5            [11] 1886 	push	hl
   81E6 CD EA 82      [17] 1887 	call	_setPixel
   81E9 F1            [10] 1888 	pop	af
   81EA F1            [10] 1889 	pop	af
   81EB C1            [10] 1890 	pop	bc
                           1891 ;src/game/world.c:357: setPixel(1, scrolly+14, 0);
   81EC C5            [11] 1892 	push	bc
   81ED AF            [ 4] 1893 	xor	a, a
   81EE F5            [11] 1894 	push	af
   81EF 33            [ 6] 1895 	inc	sp
   81F0 C5            [11] 1896 	push	bc
   81F1 33            [ 6] 1897 	inc	sp
   81F2 21 01 00      [10] 1898 	ld	hl, #0x0001
   81F5 E5            [11] 1899 	push	hl
   81F6 CD EA 82      [17] 1900 	call	_setPixel
   81F9 F1            [10] 1901 	pop	af
   81FA F1            [10] 1902 	pop	af
   81FB C1            [10] 1903 	pop	bc
                           1904 ;src/game/world.c:358: setPixel(2, scrolly+14, 0);
   81FC AF            [ 4] 1905 	xor	a, a
   81FD F5            [11] 1906 	push	af
   81FE 33            [ 6] 1907 	inc	sp
   81FF C5            [11] 1908 	push	bc
   8200 33            [ 6] 1909 	inc	sp
   8201 21 02 00      [10] 1910 	ld	hl, #0x0002
   8204 E5            [11] 1911 	push	hl
   8205 CD EA 82      [17] 1912 	call	_setPixel
   8208 DD F9         [10] 1913 	ld	sp,ix
   820A DD E1         [14] 1914 	pop	ix
   820C C9            [10] 1915 	ret
                           1916 ;src/game/world.c:375: void drawWorld(u8 x_, u8 y_)
                           1917 ;	---------------------------------
                           1918 ; Function drawWorld
                           1919 ; ---------------------------------
   820D                    1920 _drawWorld::
                           1921 ;src/game/world.c:380: for(iy=0; iy<NBTILE_H;iy++)
   820D 0E 00         [ 7] 1922 	ld	c, #0x00
                           1923 ;src/game/world.c:382: for(ix=0; ix<NBTILE_W;ix++)
   820F                    1924 00109$:
   820F 06 00         [ 7] 1925 	ld	b, #0x00
   8211                    1926 00103$:
                           1927 ;src/game/world.c:384: drawTile(x_, y_, ix, iy);
   8211 C5            [11] 1928 	push	bc
   8212 79            [ 4] 1929 	ld	a, c
   8213 F5            [11] 1930 	push	af
   8214 33            [ 6] 1931 	inc	sp
   8215 C5            [11] 1932 	push	bc
   8216 33            [ 6] 1933 	inc	sp
   8217 21 07 00      [10] 1934 	ld	hl, #7+0
   821A 39            [11] 1935 	add	hl, sp
   821B 7E            [ 7] 1936 	ld	a, (hl)
   821C F5            [11] 1937 	push	af
   821D 33            [ 6] 1938 	inc	sp
   821E 21 07 00      [10] 1939 	ld	hl, #7+0
   8221 39            [11] 1940 	add	hl, sp
   8222 7E            [ 7] 1941 	ld	a, (hl)
   8223 F5            [11] 1942 	push	af
   8224 33            [ 6] 1943 	inc	sp
   8225 CD A7 7E      [17] 1944 	call	_drawTile
   8228 F1            [10] 1945 	pop	af
   8229 F1            [10] 1946 	pop	af
   822A C1            [10] 1947 	pop	bc
                           1948 ;src/game/world.c:382: for(ix=0; ix<NBTILE_W;ix++)
   822B 04            [ 4] 1949 	inc	b
   822C 78            [ 4] 1950 	ld	a, b
   822D D6 14         [ 7] 1951 	sub	a, #0x14
   822F 38 E0         [12] 1952 	jr	C,00103$
                           1953 ;src/game/world.c:380: for(iy=0; iy<NBTILE_H;iy++)
   8231 0C            [ 4] 1954 	inc	c
   8232 79            [ 4] 1955 	ld	a, c
   8233 D6 0C         [ 7] 1956 	sub	a, #0x0c
   8235 38 D8         [12] 1957 	jr	C,00109$
                           1958 ;src/game/world.c:388: drawScrolls(x_, y_);
   8237 21 03 00      [10] 1959 	ld	hl, #3+0
   823A 39            [11] 1960 	add	hl, sp
   823B 7E            [ 7] 1961 	ld	a, (hl)
   823C F5            [11] 1962 	push	af
   823D 33            [ 6] 1963 	inc	sp
   823E 21 03 00      [10] 1964 	ld	hl, #3+0
   8241 39            [11] 1965 	add	hl, sp
   8242 7E            [ 7] 1966 	ld	a, (hl)
   8243 F5            [11] 1967 	push	af
   8244 33            [ 6] 1968 	inc	sp
   8245 CD D0 80      [17] 1969 	call	_drawScrolls
   8248 F1            [10] 1970 	pop	af
   8249 C9            [10] 1971 	ret
                           1972 ;src/game/world.c:395: void setTrainHeading(u8 i)
                           1973 ;	---------------------------------
                           1974 ; Function setTrainHeading
                           1975 ; ---------------------------------
   824A                    1976 _setTrainHeading::
   824A DD E5         [15] 1977 	push	ix
   824C DD 21 00 00   [14] 1978 	ld	ix,#0
   8250 DD 39         [15] 1979 	add	ix,sp
                           1980 ;src/game/world.c:399: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   8252 DD 4E 04      [19] 1981 	ld	c,4 (ix)
   8255 06 00         [ 7] 1982 	ld	b,#0x00
   8257 69            [ 4] 1983 	ld	l, c
   8258 60            [ 4] 1984 	ld	h, b
   8259 29            [11] 1985 	add	hl, hl
   825A 09            [11] 1986 	add	hl, bc
   825B 29            [11] 1987 	add	hl, hl
   825C 09            [11] 1988 	add	hl, bc
   825D 29            [11] 1989 	add	hl, hl
   825E 09            [11] 1990 	add	hl, bc
   825F 4D            [ 4] 1991 	ld	c, l
   8260 44            [ 4] 1992 	ld	b, h
   8261 FD 21 88 77   [14] 1993 	ld	iy, #_trainList
   8265 FD 7E 00      [19] 1994 	ld	a, 0 (iy)
   8268 81            [ 4] 1995 	add	a, c
   8269 5F            [ 4] 1996 	ld	e, a
   826A FD 7E 01      [19] 1997 	ld	a, 1 (iy)
   826D 88            [ 4] 1998 	adc	a, b
   826E 57            [ 4] 1999 	ld	d, a
   826F 6B            [ 4] 2000 	ld	l, e
   8270 62            [ 4] 2001 	ld	h, d
   8271 01 05 00      [10] 2002 	ld	bc, #0x0005
   8274 09            [11] 2003 	add	hl, bc
   8275 4E            [ 7] 2004 	ld	c, (hl)
   8276 06 00         [ 7] 2005 	ld	b,#0x00
   8278 69            [ 4] 2006 	ld	l, c
   8279 60            [ 4] 2007 	ld	h, b
   827A 29            [11] 2008 	add	hl, hl
   827B 29            [11] 2009 	add	hl, hl
   827C 09            [11] 2010 	add	hl, bc
   827D 29            [11] 2011 	add	hl, hl
   827E 29            [11] 2012 	add	hl, hl
   827F 29            [11] 2013 	add	hl, hl
   8280 29            [11] 2014 	add	hl, hl
   8281 4D            [ 4] 2015 	ld	c, l
   8282 44            [ 4] 2016 	ld	b, h
   8283 6B            [ 4] 2017 	ld	l, e
   8284 62            [ 4] 2018 	ld	h, d
   8285 23            [ 6] 2019 	inc	hl
   8286 23            [ 6] 2020 	inc	hl
   8287 23            [ 6] 2021 	inc	hl
   8288 23            [ 6] 2022 	inc	hl
   8289 6E            [ 7] 2023 	ld	l, (hl)
   828A 26 00         [ 7] 2024 	ld	h, #0x00
   828C 09            [11] 2025 	add	hl, bc
   828D 01 88 68      [10] 2026 	ld	bc, #_p_world
   8290 09            [11] 2027 	add	hl, bc
   8291 4E            [ 7] 2028 	ld	c, (hl)
                           2029 ;src/game/world.c:402: if(trainList[i].heading==1) trainList[i].heading=2;
   8292 21 06 00      [10] 2030 	ld	hl, #0x0006
   8295 19            [11] 2031 	add	hl, de
                           2032 ;src/game/world.c:399: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
   8296 79            [ 4] 2033 	ld	a,c
   8297 FE 12         [ 7] 2034 	cp	a,#0x12
   8299 28 0E         [12] 2035 	jr	Z,00101$
   829B FE 13         [ 7] 2036 	cp	a,#0x13
   829D 28 1A         [12] 2037 	jr	Z,00107$
   829F FE 14         [ 7] 2038 	cp	a,#0x14
   82A1 28 26         [12] 2039 	jr	Z,00113$
   82A3 D6 15         [ 7] 2040 	sub	a, #0x15
   82A5 28 32         [12] 2041 	jr	Z,00119$
   82A7 18 3E         [12] 2042 	jr	00126$
                           2043 ;src/game/world.c:401: case REN:
   82A9                    2044 00101$:
                           2045 ;src/game/world.c:402: if(trainList[i].heading==1) trainList[i].heading=2;
   82A9 7E            [ 7] 2046 	ld	a, (hl)
   82AA FE 01         [ 7] 2047 	cp	a, #0x01
   82AC 20 04         [12] 2048 	jr	NZ,00105$
   82AE 36 02         [10] 2049 	ld	(hl), #0x02
   82B0 18 35         [12] 2050 	jr	00126$
   82B2                    2051 00105$:
                           2052 ;src/game/world.c:403: else if(trainList[i].heading==3) trainList[i].heading=0;
   82B2 D6 03         [ 7] 2053 	sub	a,#0x03
   82B4 20 31         [12] 2054 	jr	NZ,00126$
   82B6 77            [ 7] 2055 	ld	(hl),a
                           2056 ;src/game/world.c:404: break;
   82B7 18 2E         [12] 2057 	jr	00126$
                           2058 ;src/game/world.c:406: case RES:
   82B9                    2059 00107$:
                           2060 ;src/game/world.c:407: if(trainList[i].heading==1) trainList[i].heading=3;
   82B9 7E            [ 7] 2061 	ld	a, (hl)
   82BA FE 01         [ 7] 2062 	cp	a, #0x01
   82BC 20 04         [12] 2063 	jr	NZ,00111$
   82BE 36 03         [10] 2064 	ld	(hl), #0x03
   82C0 18 25         [12] 2065 	jr	00126$
   82C2                    2066 00111$:
                           2067 ;src/game/world.c:408: else if(trainList[i].heading==2) trainList[i].heading=0;
   82C2 D6 02         [ 7] 2068 	sub	a,#0x02
   82C4 20 21         [12] 2069 	jr	NZ,00126$
   82C6 77            [ 7] 2070 	ld	(hl),a
                           2071 ;src/game/world.c:409: break;
   82C7 18 1E         [12] 2072 	jr	00126$
                           2073 ;src/game/world.c:411: case RWN:
   82C9                    2074 00113$:
                           2075 ;src/game/world.c:412: if(trainList[i].heading==0) trainList[i].heading=2;   
   82C9 7E            [ 7] 2076 	ld	a, (hl)
   82CA B7            [ 4] 2077 	or	a, a
   82CB 20 04         [12] 2078 	jr	NZ,00117$
   82CD 36 02         [10] 2079 	ld	(hl), #0x02
   82CF 18 16         [12] 2080 	jr	00126$
   82D1                    2081 00117$:
                           2082 ;src/game/world.c:413: else if(trainList[i].heading==3) trainList[i].heading=1;
   82D1 D6 03         [ 7] 2083 	sub	a, #0x03
   82D3 20 12         [12] 2084 	jr	NZ,00126$
   82D5 36 01         [10] 2085 	ld	(hl), #0x01
                           2086 ;src/game/world.c:414: break;
   82D7 18 0E         [12] 2087 	jr	00126$
                           2088 ;src/game/world.c:416: case RWS:
   82D9                    2089 00119$:
                           2090 ;src/game/world.c:417: if(trainList[i].heading==0) trainList[i].heading=3;
   82D9 7E            [ 7] 2091 	ld	a, (hl)
   82DA B7            [ 4] 2092 	or	a, a
   82DB 20 04         [12] 2093 	jr	NZ,00123$
   82DD 36 03         [10] 2094 	ld	(hl), #0x03
   82DF 18 06         [12] 2095 	jr	00126$
   82E1                    2096 00123$:
                           2097 ;src/game/world.c:418: else if(trainList[i].heading==2) trainList[i].heading=1;
   82E1 D6 02         [ 7] 2098 	sub	a, #0x02
   82E3 20 02         [12] 2099 	jr	NZ,00126$
   82E5 36 01         [10] 2100 	ld	(hl), #0x01
                           2101 ;src/game/world.c:420: }
   82E7                    2102 00126$:
   82E7 DD E1         [14] 2103 	pop	ix
   82E9 C9            [10] 2104 	ret
                           2105 ;src/game/world.c:423: void setPixel(int nX, unsigned char nY, unsigned char nColor)
                           2106 ;	---------------------------------
                           2107 ; Function setPixel
                           2108 ; ---------------------------------
   82EA                    2109 _setPixel::
   82EA DD E5         [15] 2110 	push	ix
   82EC DD 21 00 00   [14] 2111 	ld	ix,#0
   82F0 DD 39         [15] 2112 	add	ix,sp
   82F2 F5            [11] 2113 	push	af
                           2114 ;src/game/world.c:428: int nPixel = nX % 4;
   82F3 21 04 00      [10] 2115 	ld	hl, #0x0004
   82F6 E5            [11] 2116 	push	hl
   82F7 DD 6E 04      [19] 2117 	ld	l,4 (ix)
   82FA DD 66 05      [19] 2118 	ld	h,5 (ix)
   82FD E5            [11] 2119 	push	hl
   82FE CD C3 66      [17] 2120 	call	__modsint
   8301 F1            [10] 2121 	pop	af
   8302 F1            [10] 2122 	pop	af
   8303 EB            [ 4] 2123 	ex	de,hl
                           2124 ;src/game/world.c:429: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   8304 DD 7E 06      [19] 2125 	ld	a, 6 (ix)
   8307 0F            [ 4] 2126 	rrca
   8308 0F            [ 4] 2127 	rrca
   8309 0F            [ 4] 2128 	rrca
   830A E6 1F         [ 7] 2129 	and	a, #0x1f
   830C 4F            [ 4] 2130 	ld	c,a
   830D 06 00         [ 7] 2131 	ld	b,#0x00
   830F 69            [ 4] 2132 	ld	l, c
   8310 60            [ 4] 2133 	ld	h, b
   8311 29            [11] 2134 	add	hl, hl
   8312 29            [11] 2135 	add	hl, hl
   8313 09            [11] 2136 	add	hl, bc
   8314 29            [11] 2137 	add	hl, hl
   8315 29            [11] 2138 	add	hl, hl
   8316 29            [11] 2139 	add	hl, hl
   8317 29            [11] 2140 	add	hl, hl
   8318 01 00 C0      [10] 2141 	ld	bc, #0xc000
   831B 09            [11] 2142 	add	hl, bc
   831C DD 7E 06      [19] 2143 	ld	a, 6 (ix)
   831F E6 07         [ 7] 2144 	and	a, #0x07
   8321 07            [ 4] 2145 	rlca
   8322 07            [ 4] 2146 	rlca
   8323 07            [ 4] 2147 	rlca
   8324 E6 F8         [ 7] 2148 	and	a, #0xf8
   8326 47            [ 4] 2149 	ld	b, a
   8327 0E 00         [ 7] 2150 	ld	c, #0x00
   8329 09            [11] 2151 	add	hl, bc
   832A DD 4E 04      [19] 2152 	ld	c,4 (ix)
   832D DD 46 05      [19] 2153 	ld	b,5 (ix)
   8330 CB 78         [ 8] 2154 	bit	7, b
   8332 28 03         [12] 2155 	jr	Z,00128$
   8334 03            [ 6] 2156 	inc	bc
   8335 03            [ 6] 2157 	inc	bc
   8336 03            [ 6] 2158 	inc	bc
   8337                    2159 00128$:
   8337 CB 28         [ 8] 2160 	sra	b
   8339 CB 19         [ 8] 2161 	rr	c
   833B CB 28         [ 8] 2162 	sra	b
   833D CB 19         [ 8] 2163 	rr	c
   833F 09            [11] 2164 	add	hl, bc
                           2165 ;src/game/world.c:433: *pAddress &= 119;
   8340 4E            [ 7] 2166 	ld	c, (hl)
                           2167 ;src/game/world.c:435: if(nColor & 1)
   8341 DD 7E 07      [19] 2168 	ld	a, 7 (ix)
   8344 E6 01         [ 7] 2169 	and	a, #0x01
   8346 DD 77 FF      [19] 2170 	ld	-1 (ix), a
                           2171 ;src/game/world.c:437: if(nColor & 2)
   8349 DD 7E 07      [19] 2172 	ld	a, 7 (ix)
   834C E6 02         [ 7] 2173 	and	a, #0x02
   834E DD 77 FE      [19] 2174 	ld	-2 (ix), a
                           2175 ;src/game/world.c:431: if(nPixel == 0)
   8351 7A            [ 4] 2176 	ld	a, d
   8352 B3            [ 4] 2177 	or	a,e
   8353 20 18         [12] 2178 	jr	NZ,00124$
                           2179 ;src/game/world.c:433: *pAddress &= 119;
   8355 79            [ 4] 2180 	ld	a, c
   8356 E6 77         [ 7] 2181 	and	a, #0x77
   8358 77            [ 7] 2182 	ld	(hl), a
                           2183 ;src/game/world.c:435: if(nColor & 1)
   8359 DD 7E FF      [19] 2184 	ld	a, -1 (ix)
   835C B7            [ 4] 2185 	or	a, a
   835D 28 03         [12] 2186 	jr	Z,00102$
                           2187 ;src/game/world.c:436: *pAddress |= 128;
   835F CB FE         [15] 2188 	set	7, (hl)
   8361 7E            [ 7] 2189 	ld	a, (hl)
   8362                    2190 00102$:
                           2191 ;src/game/world.c:437: if(nColor & 2)
   8362 DD 7E FE      [19] 2192 	ld	a, -2 (ix)
   8365 B7            [ 4] 2193 	or	a, a
   8366 28 56         [12] 2194 	jr	Z,00126$
                           2195 ;src/game/world.c:438: *pAddress |= 8;
   8368 CB DE         [15] 2196 	set	3, (hl)
   836A 7E            [ 7] 2197 	ld	a, (hl)
   836B 18 51         [12] 2198 	jr	00126$
   836D                    2199 00124$:
                           2200 ;src/game/world.c:440: else if(nPixel == 1)
   836D 7B            [ 4] 2201 	ld	a, e
   836E 3D            [ 4] 2202 	dec	a
   836F B2            [ 4] 2203 	or	a, d
   8370 20 18         [12] 2204 	jr	NZ,00121$
                           2205 ;src/game/world.c:442: *pAddress &= 187;
   8372 79            [ 4] 2206 	ld	a, c
   8373 E6 BB         [ 7] 2207 	and	a, #0xbb
   8375 77            [ 7] 2208 	ld	(hl), a
                           2209 ;src/game/world.c:444: if(nColor & 1)
   8376 DD 7E FF      [19] 2210 	ld	a, -1 (ix)
   8379 B7            [ 4] 2211 	or	a, a
   837A 28 03         [12] 2212 	jr	Z,00106$
                           2213 ;src/game/world.c:445: *pAddress |= 64;
   837C CB F6         [15] 2214 	set	6, (hl)
   837E 7E            [ 7] 2215 	ld	a, (hl)
   837F                    2216 00106$:
                           2217 ;src/game/world.c:446: if(nColor & 2)
   837F DD 7E FE      [19] 2218 	ld	a, -2 (ix)
   8382 B7            [ 4] 2219 	or	a, a
   8383 28 39         [12] 2220 	jr	Z,00126$
                           2221 ;src/game/world.c:447: *pAddress |= 4;
   8385 CB D6         [15] 2222 	set	2, (hl)
   8387 7E            [ 7] 2223 	ld	a, (hl)
   8388 18 34         [12] 2224 	jr	00126$
   838A                    2225 00121$:
                           2226 ;src/game/world.c:449: else if(nPixel == 2)
   838A 7B            [ 4] 2227 	ld	a, e
   838B D6 02         [ 7] 2228 	sub	a, #0x02
   838D B2            [ 4] 2229 	or	a, d
   838E 20 18         [12] 2230 	jr	NZ,00118$
                           2231 ;src/game/world.c:451: *pAddress &= 221;
   8390 79            [ 4] 2232 	ld	a, c
   8391 E6 DD         [ 7] 2233 	and	a, #0xdd
   8393 77            [ 7] 2234 	ld	(hl), a
                           2235 ;src/game/world.c:453: if(nColor & 1)
   8394 DD 7E FF      [19] 2236 	ld	a, -1 (ix)
   8397 B7            [ 4] 2237 	or	a, a
   8398 28 03         [12] 2238 	jr	Z,00110$
                           2239 ;src/game/world.c:454: *pAddress |= 32;
   839A CB EE         [15] 2240 	set	5, (hl)
   839C 7E            [ 7] 2241 	ld	a, (hl)
   839D                    2242 00110$:
                           2243 ;src/game/world.c:455: if(nColor & 2)
   839D DD 7E FE      [19] 2244 	ld	a, -2 (ix)
   83A0 B7            [ 4] 2245 	or	a, a
   83A1 28 1B         [12] 2246 	jr	Z,00126$
                           2247 ;src/game/world.c:456: *pAddress |= 2;
   83A3 CB CE         [15] 2248 	set	1, (hl)
   83A5 7E            [ 7] 2249 	ld	a, (hl)
   83A6 18 16         [12] 2250 	jr	00126$
   83A8                    2251 00118$:
                           2252 ;src/game/world.c:460: *pAddress &= 238;
   83A8 79            [ 4] 2253 	ld	a, c
   83A9 E6 EE         [ 7] 2254 	and	a, #0xee
   83AB 77            [ 7] 2255 	ld	(hl), a
                           2256 ;src/game/world.c:462: if(nColor & 1)
   83AC DD 7E FF      [19] 2257 	ld	a, -1 (ix)
   83AF B7            [ 4] 2258 	or	a, a
   83B0 28 03         [12] 2259 	jr	Z,00114$
                           2260 ;src/game/world.c:463: *pAddress |= 16;
   83B2 CB E6         [15] 2261 	set	4, (hl)
   83B4 7E            [ 7] 2262 	ld	a, (hl)
   83B5                    2263 00114$:
                           2264 ;src/game/world.c:464: if(nColor & 2)
   83B5 DD 7E FE      [19] 2265 	ld	a, -2 (ix)
   83B8 B7            [ 4] 2266 	or	a, a
   83B9 28 03         [12] 2267 	jr	Z,00126$
                           2268 ;src/game/world.c:465: *pAddress |= 1;
   83BB CB C6         [15] 2269 	set	0, (hl)
   83BD 7E            [ 7] 2270 	ld	a, (hl)
   83BE                    2271 00126$:
   83BE DD F9         [10] 2272 	ld	sp, ix
   83C0 DD E1         [14] 2273 	pop	ix
   83C2 C9            [10] 2274 	ret
                           2275 ;src/game/world.c:469: u8 isPixelBlack(int nX, unsigned char nY)
                           2276 ;	---------------------------------
                           2277 ; Function isPixelBlack
                           2278 ; ---------------------------------
   83C3                    2279 _isPixelBlack::
   83C3 DD E5         [15] 2280 	push	ix
   83C5 DD 21 00 00   [14] 2281 	ld	ix,#0
   83C9 DD 39         [15] 2282 	add	ix,sp
                           2283 ;src/game/world.c:472: int nPixel = nX % 4;
   83CB 21 04 00      [10] 2284 	ld	hl, #0x0004
   83CE E5            [11] 2285 	push	hl
   83CF DD 6E 04      [19] 2286 	ld	l,4 (ix)
   83D2 DD 66 05      [19] 2287 	ld	h,5 (ix)
   83D5 E5            [11] 2288 	push	hl
   83D6 CD C3 66      [17] 2289 	call	__modsint
   83D9 F1            [10] 2290 	pop	af
   83DA F1            [10] 2291 	pop	af
   83DB 4D            [ 4] 2292 	ld	c, l
   83DC 44            [ 4] 2293 	ld	b, h
                           2294 ;src/game/world.c:475: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
   83DD DD 7E 06      [19] 2295 	ld	a, 6 (ix)
   83E0 0F            [ 4] 2296 	rrca
   83E1 0F            [ 4] 2297 	rrca
   83E2 0F            [ 4] 2298 	rrca
   83E3 E6 1F         [ 7] 2299 	and	a, #0x1f
   83E5 5F            [ 4] 2300 	ld	e,a
   83E6 16 00         [ 7] 2301 	ld	d,#0x00
   83E8 6B            [ 4] 2302 	ld	l, e
   83E9 62            [ 4] 2303 	ld	h, d
   83EA 29            [11] 2304 	add	hl, hl
   83EB 29            [11] 2305 	add	hl, hl
   83EC 19            [11] 2306 	add	hl, de
   83ED 29            [11] 2307 	add	hl, hl
   83EE 29            [11] 2308 	add	hl, hl
   83EF 29            [11] 2309 	add	hl, hl
   83F0 29            [11] 2310 	add	hl, hl
   83F1 11 00 C0      [10] 2311 	ld	de, #0xc000
   83F4 19            [11] 2312 	add	hl, de
   83F5 DD 7E 06      [19] 2313 	ld	a, 6 (ix)
   83F8 E6 07         [ 7] 2314 	and	a, #0x07
   83FA 07            [ 4] 2315 	rlca
   83FB 07            [ 4] 2316 	rlca
   83FC 07            [ 4] 2317 	rlca
   83FD E6 F8         [ 7] 2318 	and	a, #0xf8
   83FF 57            [ 4] 2319 	ld	d, a
   8400 1E 00         [ 7] 2320 	ld	e, #0x00
   8402 19            [11] 2321 	add	hl, de
   8403 DD 5E 04      [19] 2322 	ld	e,4 (ix)
   8406 DD 56 05      [19] 2323 	ld	d,5 (ix)
   8409 CB 7A         [ 8] 2324 	bit	7, d
   840B 28 03         [12] 2325 	jr	Z,00118$
   840D 13            [ 6] 2326 	inc	de
   840E 13            [ 6] 2327 	inc	de
   840F 13            [ 6] 2328 	inc	de
   8410                    2329 00118$:
   8410 CB 2A         [ 8] 2330 	sra	d
   8412 CB 1B         [ 8] 2331 	rr	e
   8414 CB 2A         [ 8] 2332 	sra	d
   8416 CB 1B         [ 8] 2333 	rr	e
   8418 19            [11] 2334 	add	hl, de
                           2335 ;src/game/world.c:478: if(nPixel == 0 && !(*pAddress & 136)) 
   8419 78            [ 4] 2336 	ld	a, b
   841A B1            [ 4] 2337 	or	a,c
   841B 20 09         [12] 2338 	jr	NZ,00113$
   841D 7E            [ 7] 2339 	ld	a, (hl)
   841E E6 88         [ 7] 2340 	and	a, #0x88
   8420 20 04         [12] 2341 	jr	NZ,00113$
                           2342 ;src/game/world.c:479: return 1;
   8422 2E 01         [ 7] 2343 	ld	l, #0x01
   8424 18 2E         [12] 2344 	jr	00116$
   8426                    2345 00113$:
                           2346 ;src/game/world.c:480: else if(nPixel == 1 && !(*pAddress & 68))
   8426 79            [ 4] 2347 	ld	a, c
   8427 3D            [ 4] 2348 	dec	a
   8428 B0            [ 4] 2349 	or	a, b
   8429 20 09         [12] 2350 	jr	NZ,00109$
   842B 7E            [ 7] 2351 	ld	a, (hl)
   842C E6 44         [ 7] 2352 	and	a, #0x44
   842E 20 04         [12] 2353 	jr	NZ,00109$
                           2354 ;src/game/world.c:481: return 1;
   8430 2E 01         [ 7] 2355 	ld	l, #0x01
   8432 18 20         [12] 2356 	jr	00116$
   8434                    2357 00109$:
                           2358 ;src/game/world.c:482: else if(nPixel == 2 && !(*pAddress & 34))
   8434 79            [ 4] 2359 	ld	a, c
   8435 D6 02         [ 7] 2360 	sub	a, #0x02
   8437 B0            [ 4] 2361 	or	a, b
   8438 20 09         [12] 2362 	jr	NZ,00105$
   843A 7E            [ 7] 2363 	ld	a, (hl)
   843B E6 22         [ 7] 2364 	and	a, #0x22
   843D 20 04         [12] 2365 	jr	NZ,00105$
                           2366 ;src/game/world.c:483: return 1;
   843F 2E 01         [ 7] 2367 	ld	l, #0x01
   8441 18 11         [12] 2368 	jr	00116$
   8443                    2369 00105$:
                           2370 ;src/game/world.c:484: else if(nPixel == 3 && !(*pAddress & 17))
   8443 79            [ 4] 2371 	ld	a, c
   8444 D6 03         [ 7] 2372 	sub	a, #0x03
   8446 B0            [ 4] 2373 	or	a, b
   8447 20 09         [12] 2374 	jr	NZ,00110$
   8449 7E            [ 7] 2375 	ld	a, (hl)
   844A E6 11         [ 7] 2376 	and	a, #0x11
   844C 20 04         [12] 2377 	jr	NZ,00110$
                           2378 ;src/game/world.c:485: return 1;
   844E 2E 01         [ 7] 2379 	ld	l, #0x01
   8450 18 02         [12] 2380 	jr	00116$
   8452                    2381 00110$:
                           2382 ;src/game/world.c:487: return 0;
   8452 2E 00         [ 7] 2383 	ld	l, #0x00
   8454                    2384 00116$:
   8454 DD E1         [14] 2385 	pop	ix
   8456 C9            [10] 2386 	ret
                           2387 ;src/game/world.c:490: void drawTrains(u8 x_, u8 y_)
                           2388 ;	---------------------------------
                           2389 ; Function drawTrains
                           2390 ; ---------------------------------
   8457                    2391 _drawTrains::
   8457 DD E5         [15] 2392 	push	ix
   8459 DD 21 00 00   [14] 2393 	ld	ix,#0
   845D DD 39         [15] 2394 	add	ix,sp
   845F 21 EC FF      [10] 2395 	ld	hl, #-20
   8462 39            [11] 2396 	add	hl, sp
   8463 F9            [ 6] 2397 	ld	sp, hl
                           2398 ;src/game/world.c:498: for(i=0; i<nbTrainList; i++)
   8464 DD 7E 05      [19] 2399 	ld	a, 5 (ix)
   8467 07            [ 4] 2400 	rlca
   8468 07            [ 4] 2401 	rlca
   8469 07            [ 4] 2402 	rlca
   846A 07            [ 4] 2403 	rlca
   846B E6 F0         [ 7] 2404 	and	a, #0xf0
   846D DD 77 FF      [19] 2405 	ld	-1 (ix), a
   8470 DD 36 F0 00   [19] 2406 	ld	-16 (ix), #0x00
   8474                    2407 00131$:
   8474 21 8D 77      [10] 2408 	ld	hl, #_nbTrainList
   8477 DD 7E F0      [19] 2409 	ld	a, -16 (ix)
   847A 96            [ 7] 2410 	sub	a, (hl)
   847B D2 63 8A      [10] 2411 	jp	NC, 00133$
                           2412 ;src/game/world.c:501: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   847E DD 4E F0      [19] 2413 	ld	c,-16 (ix)
   8481 06 00         [ 7] 2414 	ld	b,#0x00
   8483 69            [ 4] 2415 	ld	l, c
   8484 60            [ 4] 2416 	ld	h, b
   8485 29            [11] 2417 	add	hl, hl
   8486 09            [11] 2418 	add	hl, bc
   8487 29            [11] 2419 	add	hl, hl
   8488 09            [11] 2420 	add	hl, bc
   8489 29            [11] 2421 	add	hl, hl
   848A 09            [11] 2422 	add	hl, bc
   848B DD 75 FD      [19] 2423 	ld	-3 (ix), l
   848E DD 74 FE      [19] 2424 	ld	-2 (ix), h
   8491 FD 21 88 77   [14] 2425 	ld	iy, #_trainList
   8495 FD 7E 00      [19] 2426 	ld	a, 0 (iy)
   8498 DD 86 FD      [19] 2427 	add	a, -3 (ix)
   849B DD 77 FB      [19] 2428 	ld	-5 (ix), a
   849E FD 7E 01      [19] 2429 	ld	a, 1 (iy)
   84A1 DD 8E FE      [19] 2430 	adc	a, -2 (ix)
   84A4 DD 77 FC      [19] 2431 	ld	-4 (ix), a
   84A7 DD 7E FB      [19] 2432 	ld	a, -5 (ix)
   84AA DD 77 F9      [19] 2433 	ld	-7 (ix), a
   84AD DD 7E FC      [19] 2434 	ld	a, -4 (ix)
   84B0 DD 77 FA      [19] 2435 	ld	-6 (ix), a
   84B3 DD 6E F9      [19] 2436 	ld	l,-7 (ix)
   84B6 DD 66 FA      [19] 2437 	ld	h,-6 (ix)
   84B9 11 04 00      [10] 2438 	ld	de, #0x0004
   84BC 19            [11] 2439 	add	hl, de
   84BD 7E            [ 7] 2440 	ld	a, (hl)
   84BE DD 77 F9      [19] 2441 	ld	-7 (ix), a
   84C1 DD 77 F9      [19] 2442 	ld	-7 (ix), a
   84C4 DD 36 FA 00   [19] 2443 	ld	-6 (ix), #0x00
   84C8 DD 7E 04      [19] 2444 	ld	a, 4 (ix)
   84CB DD 77 F7      [19] 2445 	ld	-9 (ix), a
   84CE DD 36 F8 00   [19] 2446 	ld	-8 (ix), #0x00
   84D2 DD 7E F9      [19] 2447 	ld	a, -7 (ix)
   84D5 DD 96 F7      [19] 2448 	sub	a, -9 (ix)
   84D8 DD 77 F9      [19] 2449 	ld	-7 (ix), a
   84DB DD 7E FA      [19] 2450 	ld	a, -6 (ix)
   84DE DD 9E F8      [19] 2451 	sbc	a, -8 (ix)
   84E1 DD 77 FA      [19] 2452 	ld	-6 (ix), a
   84E4 DD 7E F9      [19] 2453 	ld	a, -7 (ix)
   84E7 D6 14         [ 7] 2454 	sub	a, #0x14
   84E9 DD 7E FA      [19] 2455 	ld	a, -6 (ix)
   84EC 17            [ 4] 2456 	rla
   84ED 3F            [ 4] 2457 	ccf
   84EE 1F            [ 4] 2458 	rra
   84EF DE 80         [ 7] 2459 	sbc	a, #0x80
   84F1 D2 5D 8A      [10] 2460 	jp	NC, 00132$
   84F4 DD 6E FB      [19] 2461 	ld	l,-5 (ix)
   84F7 DD 66 FC      [19] 2462 	ld	h,-4 (ix)
   84FA 11 05 00      [10] 2463 	ld	de, #0x0005
   84FD 19            [11] 2464 	add	hl, de
   84FE 6E            [ 7] 2465 	ld	l, (hl)
   84FF 26 00         [ 7] 2466 	ld	h, #0x00
   8501 DD 4E 05      [19] 2467 	ld	c, 5 (ix)
   8504 06 00         [ 7] 2468 	ld	b, #0x00
   8506 BF            [ 4] 2469 	cp	a, a
   8507 ED 42         [15] 2470 	sbc	hl, bc
   8509 7D            [ 4] 2471 	ld	a, l
   850A D6 0C         [ 7] 2472 	sub	a, #0x0c
   850C 7C            [ 4] 2473 	ld	a, h
   850D 17            [ 4] 2474 	rla
   850E 3F            [ 4] 2475 	ccf
   850F 1F            [ 4] 2476 	rra
   8510 DE 80         [ 7] 2477 	sbc	a, #0x80
   8512 D2 5D 8A      [10] 2478 	jp	NC, 00132$
   8515 DD CB FA 7E   [20] 2479 	bit	7, -6 (ix)
   8519 C2 5D 8A      [10] 2480 	jp	NZ, 00132$
   851C CB 7C         [ 8] 2481 	bit	7, h
   851E C2 5D 8A      [10] 2482 	jp	NZ, 00132$
                           2483 ;src/game/world.c:504: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   8521 DD 6E FB      [19] 2484 	ld	l,-5 (ix)
   8524 DD 66 FC      [19] 2485 	ld	h,-4 (ix)
   8527 11 09 00      [10] 2486 	ld	de, #0x0009
   852A 19            [11] 2487 	add	hl, de
   852B 4E            [ 7] 2488 	ld	c, (hl)
   852C 23            [ 6] 2489 	inc	hl
   852D 46            [ 7] 2490 	ld	b, (hl)
   852E DD 7E FF      [19] 2491 	ld	a, -1 (ix)
   8531 DD 77 F9      [19] 2492 	ld	-7 (ix), a
   8534 79            [ 4] 2493 	ld	a, c
   8535 DD 96 F9      [19] 2494 	sub	a, -7 (ix)
   8538 57            [ 4] 2495 	ld	d, a
   8539 DD 6E FB      [19] 2496 	ld	l,-5 (ix)
   853C DD 66 FC      [19] 2497 	ld	h,-4 (ix)
   853F 01 07 00      [10] 2498 	ld	bc, #0x0007
   8542 09            [11] 2499 	add	hl, bc
   8543 4E            [ 7] 2500 	ld	c, (hl)
   8544 23            [ 6] 2501 	inc	hl
   8545 46            [ 7] 2502 	ld	b, (hl)
   8546 3E 05         [ 7] 2503 	ld	a, #0x04+1
   8548 18 08         [12] 2504 	jr	00193$
   854A                    2505 00192$:
   854A DD CB F7 26   [23] 2506 	sla	-9 (ix)
   854E DD CB F8 16   [23] 2507 	rl	-8 (ix)
   8552                    2508 00193$:
   8552 3D            [ 4] 2509 	dec	a
   8553 20 F5         [12] 2510 	jr	NZ,00192$
   8555 79            [ 4] 2511 	ld	a, c
   8556 DD 96 F7      [19] 2512 	sub	a, -9 (ix)
   8559 4F            [ 4] 2513 	ld	c, a
   855A 78            [ 4] 2514 	ld	a, b
   855B DD 9E F8      [19] 2515 	sbc	a, -8 (ix)
   855E 47            [ 4] 2516 	ld	b, a
   855F 3E 03         [ 7] 2517 	ld	a, #0x03
   8561 F5            [11] 2518 	push	af
   8562 33            [ 6] 2519 	inc	sp
   8563 D5            [11] 2520 	push	de
   8564 33            [ 6] 2521 	inc	sp
   8565 C5            [11] 2522 	push	bc
   8566 CD EA 82      [17] 2523 	call	_setPixel
   8569 F1            [10] 2524 	pop	af
   856A F1            [10] 2525 	pop	af
                           2526 ;src/game/world.c:505: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
   856B FD 2A 88 77   [20] 2527 	ld	iy, (_trainList)
   856F DD 5E FD      [19] 2528 	ld	e,-3 (ix)
   8572 DD 56 FE      [19] 2529 	ld	d,-2 (ix)
   8575 FD 19         [15] 2530 	add	iy, de
   8577 FD E5         [15] 2531 	push	iy
   8579 E1            [10] 2532 	pop	hl
   857A 11 0D 00      [10] 2533 	ld	de, #0x000d
   857D 19            [11] 2534 	add	hl, de
   857E 4E            [ 7] 2535 	ld	c, (hl)
   857F 23            [ 6] 2536 	inc	hl
   8580 46            [ 7] 2537 	ld	b, (hl)
   8581 79            [ 4] 2538 	ld	a, c
   8582 DD 96 F9      [19] 2539 	sub	a, -7 (ix)
   8585 57            [ 4] 2540 	ld	d, a
   8586 FD E5         [15] 2541 	push	iy
   8588 E1            [10] 2542 	pop	hl
   8589 01 0B 00      [10] 2543 	ld	bc, #0x000b
   858C 09            [11] 2544 	add	hl, bc
   858D 4E            [ 7] 2545 	ld	c, (hl)
   858E 23            [ 6] 2546 	inc	hl
   858F 46            [ 7] 2547 	ld	b, (hl)
   8590 79            [ 4] 2548 	ld	a, c
   8591 DD 96 F7      [19] 2549 	sub	a, -9 (ix)
   8594 4F            [ 4] 2550 	ld	c, a
   8595 78            [ 4] 2551 	ld	a, b
   8596 DD 9E F8      [19] 2552 	sbc	a, -8 (ix)
   8599 47            [ 4] 2553 	ld	b, a
   859A 3E 02         [ 7] 2554 	ld	a, #0x02
   859C F5            [11] 2555 	push	af
   859D 33            [ 6] 2556 	inc	sp
   859E D5            [11] 2557 	push	de
   859F 33            [ 6] 2558 	inc	sp
   85A0 C5            [11] 2559 	push	bc
   85A1 CD EA 82      [17] 2560 	call	_setPixel
   85A4 F1            [10] 2561 	pop	af
   85A5 F1            [10] 2562 	pop	af
                           2563 ;src/game/world.c:508: oldTrainX = trainList[i].animOldX;
   85A6 FD 21 88 77   [14] 2564 	ld	iy, #_trainList
   85AA FD 7E 00      [19] 2565 	ld	a, 0 (iy)
   85AD DD 86 FD      [19] 2566 	add	a, -3 (ix)
   85B0 5F            [ 4] 2567 	ld	e, a
   85B1 FD 7E 01      [19] 2568 	ld	a, 1 (iy)
   85B4 DD 8E FE      [19] 2569 	adc	a, -2 (ix)
   85B7 57            [ 4] 2570 	ld	d, a
   85B8 21 0B 00      [10] 2571 	ld	hl, #0x000b
   85BB 19            [11] 2572 	add	hl,de
   85BC 4D            [ 4] 2573 	ld	c, l
   85BD 44            [ 4] 2574 	ld	b, h
   85BE 0A            [ 7] 2575 	ld	a, (bc)
   85BF DD 77 EE      [19] 2576 	ld	-18 (ix), a
   85C2 03            [ 6] 2577 	inc	bc
   85C3 0A            [ 7] 2578 	ld	a, (bc)
   85C4 DD 77 EF      [19] 2579 	ld	-17 (ix), a
   85C7 0B            [ 6] 2580 	dec	bc
                           2581 ;src/game/world.c:509: oldTrainY = trainList[i].animOldY;
   85C8 D5            [11] 2582 	push	de
   85C9 FD E1         [14] 2583 	pop	iy
   85CB FD 7E 0D      [19] 2584 	ld	a, 13 (iy)
   85CE DD 77 EC      [19] 2585 	ld	-20 (ix), a
   85D1 FD 7E 0E      [19] 2586 	ld	a, 14 (iy)
   85D4 DD 77 ED      [19] 2587 	ld	-19 (ix), a
                           2588 ;src/game/world.c:510: trainList[i].animOldX = trainList[i].animX;
   85D7 EB            [ 4] 2589 	ex	de,hl
   85D8 11 07 00      [10] 2590 	ld	de, #0x0007
   85DB 19            [11] 2591 	add	hl, de
   85DC 5E            [ 7] 2592 	ld	e, (hl)
   85DD 23            [ 6] 2593 	inc	hl
   85DE 56            [ 7] 2594 	ld	d, (hl)
   85DF 7B            [ 4] 2595 	ld	a, e
   85E0 02            [ 7] 2596 	ld	(bc), a
   85E1 03            [ 6] 2597 	inc	bc
   85E2 7A            [ 4] 2598 	ld	a, d
   85E3 02            [ 7] 2599 	ld	(bc), a
                           2600 ;src/game/world.c:511: trainList[i].animOldY = trainList[i].animY;
   85E4 FD 21 88 77   [14] 2601 	ld	iy, #_trainList
   85E8 FD 7E 00      [19] 2602 	ld	a, 0 (iy)
   85EB DD 86 FD      [19] 2603 	add	a, -3 (ix)
   85EE 5F            [ 4] 2604 	ld	e, a
   85EF FD 7E 01      [19] 2605 	ld	a, 1 (iy)
   85F2 DD 8E FE      [19] 2606 	adc	a, -2 (ix)
   85F5 57            [ 4] 2607 	ld	d, a
   85F6 21 0D 00      [10] 2608 	ld	hl, #0x000d
   85F9 19            [11] 2609 	add	hl,de
   85FA 4D            [ 4] 2610 	ld	c, l
   85FB 44            [ 4] 2611 	ld	b, h
   85FC EB            [ 4] 2612 	ex	de,hl
   85FD 11 09 00      [10] 2613 	ld	de, #0x0009
   8600 19            [11] 2614 	add	hl, de
   8601 5E            [ 7] 2615 	ld	e, (hl)
   8602 23            [ 6] 2616 	inc	hl
   8603 56            [ 7] 2617 	ld	d, (hl)
   8604 7B            [ 4] 2618 	ld	a, e
   8605 02            [ 7] 2619 	ld	(bc), a
   8606 03            [ 6] 2620 	inc	bc
   8607 7A            [ 4] 2621 	ld	a, d
   8608 02            [ 7] 2622 	ld	(bc), a
                           2623 ;src/game/world.c:514: if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H +1,trainList[i].animY-y_*TILESIZE_H) )
   8609 FD 2A 88 77   [20] 2624 	ld	iy, (_trainList)
   860D DD 5E FD      [19] 2625 	ld	e,-3 (ix)
   8610 DD 56 FE      [19] 2626 	ld	d,-2 (ix)
   8613 FD 19         [15] 2627 	add	iy, de
   8615 FD E5         [15] 2628 	push	iy
   8617 E1            [10] 2629 	pop	hl
   8618 11 09 00      [10] 2630 	ld	de, #0x0009
   861B 19            [11] 2631 	add	hl, de
   861C 4E            [ 7] 2632 	ld	c, (hl)
   861D 23            [ 6] 2633 	inc	hl
   861E 46            [ 7] 2634 	ld	b, (hl)
   861F 79            [ 4] 2635 	ld	a, c
   8620 DD 96 F9      [19] 2636 	sub	a, -7 (ix)
   8623 57            [ 4] 2637 	ld	d, a
   8624 FD E5         [15] 2638 	push	iy
   8626 E1            [10] 2639 	pop	hl
   8627 01 07 00      [10] 2640 	ld	bc, #0x0007
   862A 09            [11] 2641 	add	hl, bc
   862B 4E            [ 7] 2642 	ld	c, (hl)
   862C 23            [ 6] 2643 	inc	hl
   862D 46            [ 7] 2644 	ld	b, (hl)
   862E 79            [ 4] 2645 	ld	a, c
   862F DD 96 F7      [19] 2646 	sub	a, -9 (ix)
   8632 4F            [ 4] 2647 	ld	c, a
   8633 78            [ 4] 2648 	ld	a, b
   8634 DD 9E F8      [19] 2649 	sbc	a, -8 (ix)
   8637 47            [ 4] 2650 	ld	b, a
   8638 03            [ 6] 2651 	inc	bc
   8639 D5            [11] 2652 	push	de
   863A 33            [ 6] 2653 	inc	sp
   863B C5            [11] 2654 	push	bc
   863C CD C3 83      [17] 2655 	call	_isPixelBlack
   863F F1            [10] 2656 	pop	af
   8640 33            [ 6] 2657 	inc	sp
   8641 DD 75 FB      [19] 2658 	ld	-5 (ix), l
                           2659 ;src/game/world.c:501: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   8644 FD 21 88 77   [14] 2660 	ld	iy, #_trainList
   8648 FD 7E 00      [19] 2661 	ld	a, 0 (iy)
   864B DD 86 FD      [19] 2662 	add	a, -3 (ix)
   864E DD 77 F5      [19] 2663 	ld	-11 (ix), a
   8651 FD 7E 01      [19] 2664 	ld	a, 1 (iy)
   8654 DD 8E FE      [19] 2665 	adc	a, -2 (ix)
   8657 DD 77 F6      [19] 2666 	ld	-10 (ix), a
                           2667 ;src/game/world.c:515: trainList[i].animX+=1;
   865A DD 7E F5      [19] 2668 	ld	a, -11 (ix)
   865D C6 07         [ 7] 2669 	add	a, #0x07
   865F DD 77 F3      [19] 2670 	ld	-13 (ix), a
   8662 DD 7E F6      [19] 2671 	ld	a, -10 (ix)
   8665 CE 00         [ 7] 2672 	adc	a, #0x00
   8667 DD 77 F4      [19] 2673 	ld	-12 (ix), a
   866A DD 6E F3      [19] 2674 	ld	l,-13 (ix)
   866D DD 66 F4      [19] 2675 	ld	h,-12 (ix)
   8670 7E            [ 7] 2676 	ld	a, (hl)
   8671 DD 77 F1      [19] 2677 	ld	-15 (ix), a
   8674 23            [ 6] 2678 	inc	hl
   8675 7E            [ 7] 2679 	ld	a, (hl)
   8676 DD 77 F2      [19] 2680 	ld	-14 (ix), a
                           2681 ;src/game/world.c:514: if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H +1,trainList[i].animY-y_*TILESIZE_H) )
   8679 DD 7E FB      [19] 2682 	ld	a, -5 (ix)
   867C B7            [ 4] 2683 	or	a, a
   867D 28 13         [12] 2684 	jr	Z,00122$
                           2685 ;src/game/world.c:515: trainList[i].animX+=1;
   867F DD 4E F1      [19] 2686 	ld	c,-15 (ix)
   8682 DD 46 F2      [19] 2687 	ld	b,-14 (ix)
   8685 03            [ 6] 2688 	inc	bc
   8686 DD 6E F3      [19] 2689 	ld	l,-13 (ix)
   8689 DD 66 F4      [19] 2690 	ld	h,-12 (ix)
   868C 71            [ 7] 2691 	ld	(hl), c
   868D 23            [ 6] 2692 	inc	hl
   868E 70            [ 7] 2693 	ld	(hl), b
   868F C3 35 89      [10] 2694 	jp	00123$
   8692                    2695 00122$:
                           2696 ;src/game/world.c:516: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   8692 DD 6E F5      [19] 2697 	ld	l,-11 (ix)
   8695 DD 66 F6      [19] 2698 	ld	h,-10 (ix)
   8698 11 09 00      [10] 2699 	ld	de, #0x0009
   869B 19            [11] 2700 	add	hl, de
   869C 4E            [ 7] 2701 	ld	c, (hl)
   869D 23            [ 6] 2702 	inc	hl
   869E 46            [ 7] 2703 	ld	b, (hl)
   869F 79            [ 4] 2704 	ld	a, c
   86A0 DD 96 F9      [19] 2705 	sub	a, -7 (ix)
   86A3 47            [ 4] 2706 	ld	b, a
   86A4 DD 7E F1      [19] 2707 	ld	a, -15 (ix)
   86A7 DD 96 F7      [19] 2708 	sub	a, -9 (ix)
   86AA 5F            [ 4] 2709 	ld	e, a
   86AB DD 7E F2      [19] 2710 	ld	a, -14 (ix)
   86AE DD 9E F8      [19] 2711 	sbc	a, -8 (ix)
   86B1 57            [ 4] 2712 	ld	d, a
   86B2 1B            [ 6] 2713 	dec	de
   86B3 C5            [11] 2714 	push	bc
   86B4 33            [ 6] 2715 	inc	sp
   86B5 D5            [11] 2716 	push	de
   86B6 CD C3 83      [17] 2717 	call	_isPixelBlack
   86B9 F1            [10] 2718 	pop	af
   86BA 33            [ 6] 2719 	inc	sp
   86BB DD 75 F1      [19] 2720 	ld	-15 (ix), l
                           2721 ;src/game/world.c:501: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   86BE FD 21 88 77   [14] 2722 	ld	iy, #_trainList
   86C2 FD 7E 00      [19] 2723 	ld	a, 0 (iy)
   86C5 DD 86 FD      [19] 2724 	add	a, -3 (ix)
   86C8 4F            [ 4] 2725 	ld	c, a
   86C9 FD 7E 01      [19] 2726 	ld	a, 1 (iy)
   86CC DD 8E FE      [19] 2727 	adc	a, -2 (ix)
   86CF 47            [ 4] 2728 	ld	b, a
                           2729 ;src/game/world.c:515: trainList[i].animX+=1;
   86D0 FD 21 07 00   [14] 2730 	ld	iy, #0x0007
   86D4 FD 09         [15] 2731 	add	iy, bc
   86D6 FD 5E 00      [19] 2732 	ld	e, 0 (iy)
   86D9 FD 56 01      [19] 2733 	ld	d, 1 (iy)
                           2734 ;src/game/world.c:516: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   86DC DD 7E F1      [19] 2735 	ld	a, -15 (ix)
   86DF B7            [ 4] 2736 	or	a, a
   86E0 28 0A         [12] 2737 	jr	Z,00119$
                           2738 ;src/game/world.c:517: trainList[i].animX-=1;
   86E2 1B            [ 6] 2739 	dec	de
   86E3 FD 73 00      [19] 2740 	ld	0 (iy), e
   86E6 FD 72 01      [19] 2741 	ld	1 (iy), d
   86E9 C3 35 89      [10] 2742 	jp	00123$
   86EC                    2743 00119$:
                           2744 ;src/game/world.c:518: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H, trainList[i].animY-y_*TILESIZE_H + 1) )
   86EC 69            [ 4] 2745 	ld	l, c
   86ED 60            [ 4] 2746 	ld	h, b
   86EE 01 09 00      [10] 2747 	ld	bc, #0x0009
   86F1 09            [11] 2748 	add	hl, bc
   86F2 4E            [ 7] 2749 	ld	c, (hl)
   86F3 23            [ 6] 2750 	inc	hl
   86F4 46            [ 7] 2751 	ld	b, (hl)
   86F5 79            [ 4] 2752 	ld	a, c
   86F6 DD 96 F9      [19] 2753 	sub	a, -7 (ix)
   86F9 47            [ 4] 2754 	ld	b, a
   86FA 04            [ 4] 2755 	inc	b
   86FB 7B            [ 4] 2756 	ld	a, e
   86FC DD 96 F7      [19] 2757 	sub	a, -9 (ix)
   86FF 5F            [ 4] 2758 	ld	e, a
   8700 7A            [ 4] 2759 	ld	a, d
   8701 DD 9E F8      [19] 2760 	sbc	a, -8 (ix)
   8704 57            [ 4] 2761 	ld	d, a
   8705 C5            [11] 2762 	push	bc
   8706 33            [ 6] 2763 	inc	sp
   8707 D5            [11] 2764 	push	de
   8708 CD C3 83      [17] 2765 	call	_isPixelBlack
   870B F1            [10] 2766 	pop	af
   870C 33            [ 6] 2767 	inc	sp
   870D 4D            [ 4] 2768 	ld	c, l
                           2769 ;src/game/world.c:501: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   870E FD 21 88 77   [14] 2770 	ld	iy, #_trainList
   8712 FD 7E 00      [19] 2771 	ld	a, 0 (iy)
   8715 DD 86 FD      [19] 2772 	add	a, -3 (ix)
   8718 5F            [ 4] 2773 	ld	e, a
   8719 FD 7E 01      [19] 2774 	ld	a, 1 (iy)
   871C DD 8E FE      [19] 2775 	adc	a, -2 (ix)
   871F 57            [ 4] 2776 	ld	d, a
                           2777 ;src/game/world.c:516: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   8720 FD 21 09 00   [14] 2778 	ld	iy, #0x0009
   8724 FD 19         [15] 2779 	add	iy, de
                           2780 ;src/game/world.c:519: trainList[i].animY+=1;
   8726 FD 6E 00      [19] 2781 	ld	l, 0 (iy)
   8729 FD 66 01      [19] 2782 	ld	h, 1 (iy)
                           2783 ;src/game/world.c:518: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H, trainList[i].animY-y_*TILESIZE_H + 1) )
   872C 79            [ 4] 2784 	ld	a, c
   872D B7            [ 4] 2785 	or	a, a
   872E 28 0A         [12] 2786 	jr	Z,00116$
                           2787 ;src/game/world.c:519: trainList[i].animY+=1;
   8730 23            [ 6] 2788 	inc	hl
   8731 FD 75 00      [19] 2789 	ld	0 (iy), l
   8734 FD 74 01      [19] 2790 	ld	1 (iy), h
   8737 C3 35 89      [10] 2791 	jp	00123$
   873A                    2792 00116$:
                           2793 ;src/game/world.c:520: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H - 1) )
   873A 7D            [ 4] 2794 	ld	a, l
   873B DD 96 F9      [19] 2795 	sub	a, -7 (ix)
   873E 47            [ 4] 2796 	ld	b, a
   873F 05            [ 4] 2797 	dec	b
   8740 EB            [ 4] 2798 	ex	de,hl
   8741 11 07 00      [10] 2799 	ld	de, #0x0007
   8744 19            [11] 2800 	add	hl, de
   8745 5E            [ 7] 2801 	ld	e, (hl)
   8746 23            [ 6] 2802 	inc	hl
   8747 56            [ 7] 2803 	ld	d, (hl)
   8748 7B            [ 4] 2804 	ld	a, e
   8749 DD 96 F7      [19] 2805 	sub	a, -9 (ix)
   874C 5F            [ 4] 2806 	ld	e, a
   874D 7A            [ 4] 2807 	ld	a, d
   874E DD 9E F8      [19] 2808 	sbc	a, -8 (ix)
   8751 57            [ 4] 2809 	ld	d, a
   8752 C5            [11] 2810 	push	bc
   8753 33            [ 6] 2811 	inc	sp
   8754 D5            [11] 2812 	push	de
   8755 CD C3 83      [17] 2813 	call	_isPixelBlack
   8758 F1            [10] 2814 	pop	af
   8759 33            [ 6] 2815 	inc	sp
   875A DD 75 F1      [19] 2816 	ld	-15 (ix), l
                           2817 ;src/game/world.c:501: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   875D FD 21 88 77   [14] 2818 	ld	iy, #_trainList
   8761 FD 7E 00      [19] 2819 	ld	a, 0 (iy)
   8764 DD 86 FD      [19] 2820 	add	a, -3 (ix)
   8767 4F            [ 4] 2821 	ld	c, a
   8768 FD 7E 01      [19] 2822 	ld	a, 1 (iy)
   876B DD 8E FE      [19] 2823 	adc	a, -2 (ix)
   876E 47            [ 4] 2824 	ld	b, a
                           2825 ;src/game/world.c:516: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H -1,trainList[i].animY-y_*TILESIZE_H) )
   876F 21 09 00      [10] 2826 	ld	hl, #0x0009
   8772 09            [11] 2827 	add	hl, bc
                           2828 ;src/game/world.c:519: trainList[i].animY+=1;
   8773 E5            [11] 2829 	push	hl
   8774 5E            [ 7] 2830 	ld	e, (hl)
   8775 23            [ 6] 2831 	inc	hl
   8776 56            [ 7] 2832 	ld	d, (hl)
   8777 E1            [10] 2833 	pop	hl
                           2834 ;src/game/world.c:520: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H - 1) )
   8778 DD 7E F1      [19] 2835 	ld	a, -15 (ix)
   877B B7            [ 4] 2836 	or	a, a
   877C 28 07         [12] 2837 	jr	Z,00113$
                           2838 ;src/game/world.c:521: trainList[i].animY-=1;
   877E 1B            [ 6] 2839 	dec	de
   877F 73            [ 7] 2840 	ld	(hl), e
   8780 23            [ 6] 2841 	inc	hl
   8781 72            [ 7] 2842 	ld	(hl), d
   8782 C3 35 89      [10] 2843 	jp	00123$
   8785                    2844 00113$:
                           2845 ;src/game/world.c:522: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H + 1) )
   8785 7B            [ 4] 2846 	ld	a, e
   8786 DD 96 F9      [19] 2847 	sub	a, -7 (ix)
   8789 57            [ 4] 2848 	ld	d, a
   878A 14            [ 4] 2849 	inc	d
   878B 69            [ 4] 2850 	ld	l, c
   878C 60            [ 4] 2851 	ld	h, b
   878D 01 07 00      [10] 2852 	ld	bc, #0x0007
   8790 09            [11] 2853 	add	hl, bc
   8791 4E            [ 7] 2854 	ld	c, (hl)
   8792 23            [ 6] 2855 	inc	hl
   8793 46            [ 7] 2856 	ld	b, (hl)
   8794 79            [ 4] 2857 	ld	a, c
   8795 DD 96 F7      [19] 2858 	sub	a, -9 (ix)
   8798 4F            [ 4] 2859 	ld	c, a
   8799 78            [ 4] 2860 	ld	a, b
   879A DD 9E F8      [19] 2861 	sbc	a, -8 (ix)
   879D 47            [ 4] 2862 	ld	b, a
   879E 03            [ 6] 2863 	inc	bc
   879F D5            [11] 2864 	push	de
   87A0 33            [ 6] 2865 	inc	sp
   87A1 C5            [11] 2866 	push	bc
   87A2 CD C3 83      [17] 2867 	call	_isPixelBlack
   87A5 F1            [10] 2868 	pop	af
   87A6 33            [ 6] 2869 	inc	sp
   87A7 DD 75 F1      [19] 2870 	ld	-15 (ix), l
                           2871 ;src/game/world.c:501: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   87AA FD 21 88 77   [14] 2872 	ld	iy, #_trainList
   87AE FD 7E 00      [19] 2873 	ld	a, 0 (iy)
   87B1 DD 86 FD      [19] 2874 	add	a, -3 (ix)
   87B4 4F            [ 4] 2875 	ld	c, a
   87B5 FD 7E 01      [19] 2876 	ld	a, 1 (iy)
   87B8 DD 8E FE      [19] 2877 	adc	a, -2 (ix)
   87BB 47            [ 4] 2878 	ld	b, a
                           2879 ;src/game/world.c:515: trainList[i].animX+=1;
   87BC 21 07 00      [10] 2880 	ld	hl, #0x0007
   87BF 09            [11] 2881 	add	hl,bc
   87C0 DD 75 F3      [19] 2882 	ld	-13 (ix), l
   87C3 DD 74 F4      [19] 2883 	ld	-12 (ix), h
   87C6 5E            [ 7] 2884 	ld	e, (hl)
   87C7 23            [ 6] 2885 	inc	hl
   87C8 56            [ 7] 2886 	ld	d, (hl)
                           2887 ;src/game/world.c:522: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H + 1) )
   87C9 DD 7E F1      [19] 2888 	ld	a, -15 (ix)
   87CC B7            [ 4] 2889 	or	a, a
   87CD 28 29         [12] 2890 	jr	Z,00110$
                           2891 ;src/game/world.c:524: trainList[i].animX+=1;
   87CF 13            [ 6] 2892 	inc	de
   87D0 4B            [ 4] 2893 	ld	c, e
   87D1 DD 6E F3      [19] 2894 	ld	l,-13 (ix)
   87D4 DD 66 F4      [19] 2895 	ld	h,-12 (ix)
   87D7 71            [ 7] 2896 	ld	(hl), c
   87D8 23            [ 6] 2897 	inc	hl
   87D9 72            [ 7] 2898 	ld	(hl), d
                           2899 ;src/game/world.c:525: trainList[i].animY+=1;
   87DA FD 7E 00      [19] 2900 	ld	a, 0 (iy)
   87DD DD 86 FD      [19] 2901 	add	a, -3 (ix)
   87E0 4F            [ 4] 2902 	ld	c, a
   87E1 FD 7E 01      [19] 2903 	ld	a, 1 (iy)
   87E4 DD 8E FE      [19] 2904 	adc	a, -2 (ix)
   87E7 47            [ 4] 2905 	ld	b, a
   87E8 21 09 00      [10] 2906 	ld	hl, #0x0009
   87EB 09            [11] 2907 	add	hl, bc
   87EC E5            [11] 2908 	push	hl
   87ED 4E            [ 7] 2909 	ld	c, (hl)
   87EE 23            [ 6] 2910 	inc	hl
   87EF 46            [ 7] 2911 	ld	b, (hl)
   87F0 E1            [10] 2912 	pop	hl
   87F1 03            [ 6] 2913 	inc	bc
   87F2 71            [ 7] 2914 	ld	(hl), c
   87F3 23            [ 6] 2915 	inc	hl
   87F4 70            [ 7] 2916 	ld	(hl), b
   87F5 C3 35 89      [10] 2917 	jp	00123$
   87F8                    2918 00110$:
                           2919 ;src/game/world.c:527: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H - 1) )
   87F8 69            [ 4] 2920 	ld	l, c
   87F9 60            [ 4] 2921 	ld	h, b
   87FA 01 09 00      [10] 2922 	ld	bc, #0x0009
   87FD 09            [11] 2923 	add	hl, bc
   87FE 4E            [ 7] 2924 	ld	c, (hl)
   87FF 23            [ 6] 2925 	inc	hl
   8800 46            [ 7] 2926 	ld	b, (hl)
   8801 79            [ 4] 2927 	ld	a, c
   8802 DD 96 F9      [19] 2928 	sub	a, -7 (ix)
   8805 47            [ 4] 2929 	ld	b, a
   8806 05            [ 4] 2930 	dec	b
   8807 7B            [ 4] 2931 	ld	a, e
   8808 DD 96 F7      [19] 2932 	sub	a, -9 (ix)
   880B 5F            [ 4] 2933 	ld	e, a
   880C 7A            [ 4] 2934 	ld	a, d
   880D DD 9E F8      [19] 2935 	sbc	a, -8 (ix)
   8810 57            [ 4] 2936 	ld	d, a
   8811 13            [ 6] 2937 	inc	de
   8812 C5            [11] 2938 	push	bc
   8813 33            [ 6] 2939 	inc	sp
   8814 D5            [11] 2940 	push	de
   8815 CD C3 83      [17] 2941 	call	_isPixelBlack
   8818 F1            [10] 2942 	pop	af
   8819 33            [ 6] 2943 	inc	sp
   881A DD 75 F1      [19] 2944 	ld	-15 (ix), l
                           2945 ;src/game/world.c:501: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   881D FD 21 88 77   [14] 2946 	ld	iy, #_trainList
   8821 FD 7E 00      [19] 2947 	ld	a, 0 (iy)
   8824 DD 86 FD      [19] 2948 	add	a, -3 (ix)
   8827 4F            [ 4] 2949 	ld	c, a
   8828 FD 7E 01      [19] 2950 	ld	a, 1 (iy)
   882B DD 8E FE      [19] 2951 	adc	a, -2 (ix)
   882E 47            [ 4] 2952 	ld	b, a
                           2953 ;src/game/world.c:515: trainList[i].animX+=1;
   882F 21 07 00      [10] 2954 	ld	hl, #0x0007
   8832 09            [11] 2955 	add	hl,bc
   8833 DD 75 F3      [19] 2956 	ld	-13 (ix), l
   8836 DD 74 F4      [19] 2957 	ld	-12 (ix), h
   8839 5E            [ 7] 2958 	ld	e, (hl)
   883A 23            [ 6] 2959 	inc	hl
   883B 56            [ 7] 2960 	ld	d, (hl)
                           2961 ;src/game/world.c:527: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H+1,trainList[i].animY-y_*TILESIZE_H - 1) )
   883C DD 7E F1      [19] 2962 	ld	a, -15 (ix)
   883F B7            [ 4] 2963 	or	a, a
   8840 28 29         [12] 2964 	jr	Z,00107$
                           2965 ;src/game/world.c:529: trainList[i].animX+=1;
   8842 13            [ 6] 2966 	inc	de
   8843 4B            [ 4] 2967 	ld	c, e
   8844 DD 6E F3      [19] 2968 	ld	l,-13 (ix)
   8847 DD 66 F4      [19] 2969 	ld	h,-12 (ix)
   884A 71            [ 7] 2970 	ld	(hl), c
   884B 23            [ 6] 2971 	inc	hl
   884C 72            [ 7] 2972 	ld	(hl), d
                           2973 ;src/game/world.c:530: trainList[i].animY-=1;
   884D FD 7E 00      [19] 2974 	ld	a, 0 (iy)
   8850 DD 86 FD      [19] 2975 	add	a, -3 (ix)
   8853 4F            [ 4] 2976 	ld	c, a
   8854 FD 7E 01      [19] 2977 	ld	a, 1 (iy)
   8857 DD 8E FE      [19] 2978 	adc	a, -2 (ix)
   885A 47            [ 4] 2979 	ld	b, a
   885B 21 09 00      [10] 2980 	ld	hl, #0x0009
   885E 09            [11] 2981 	add	hl, bc
   885F E5            [11] 2982 	push	hl
   8860 4E            [ 7] 2983 	ld	c, (hl)
   8861 23            [ 6] 2984 	inc	hl
   8862 46            [ 7] 2985 	ld	b, (hl)
   8863 E1            [10] 2986 	pop	hl
   8864 0B            [ 6] 2987 	dec	bc
   8865 71            [ 7] 2988 	ld	(hl), c
   8866 23            [ 6] 2989 	inc	hl
   8867 70            [ 7] 2990 	ld	(hl), b
   8868 C3 35 89      [10] 2991 	jp	00123$
   886B                    2992 00107$:
                           2993 ;src/game/world.c:532: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H-1,trainList[i].animY-y_*TILESIZE_H + 1) )
   886B 69            [ 4] 2994 	ld	l, c
   886C 60            [ 4] 2995 	ld	h, b
   886D 01 09 00      [10] 2996 	ld	bc, #0x0009
   8870 09            [11] 2997 	add	hl, bc
   8871 4E            [ 7] 2998 	ld	c, (hl)
   8872 23            [ 6] 2999 	inc	hl
   8873 46            [ 7] 3000 	ld	b, (hl)
   8874 79            [ 4] 3001 	ld	a, c
   8875 DD 96 F9      [19] 3002 	sub	a, -7 (ix)
   8878 47            [ 4] 3003 	ld	b, a
   8879 04            [ 4] 3004 	inc	b
   887A 7B            [ 4] 3005 	ld	a, e
   887B DD 96 F7      [19] 3006 	sub	a, -9 (ix)
   887E 5F            [ 4] 3007 	ld	e, a
   887F 7A            [ 4] 3008 	ld	a, d
   8880 DD 9E F8      [19] 3009 	sbc	a, -8 (ix)
   8883 57            [ 4] 3010 	ld	d, a
   8884 1B            [ 6] 3011 	dec	de
   8885 C5            [11] 3012 	push	bc
   8886 33            [ 6] 3013 	inc	sp
   8887 D5            [11] 3014 	push	de
   8888 CD C3 83      [17] 3015 	call	_isPixelBlack
   888B F1            [10] 3016 	pop	af
   888C 33            [ 6] 3017 	inc	sp
   888D DD 75 F1      [19] 3018 	ld	-15 (ix), l
                           3019 ;src/game/world.c:501: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
   8890 FD 21 88 77   [14] 3020 	ld	iy, #_trainList
   8894 FD 7E 00      [19] 3021 	ld	a, 0 (iy)
   8897 DD 86 FD      [19] 3022 	add	a, -3 (ix)
   889A 4F            [ 4] 3023 	ld	c, a
   889B FD 7E 01      [19] 3024 	ld	a, 1 (iy)
   889E DD 8E FE      [19] 3025 	adc	a, -2 (ix)
   88A1 47            [ 4] 3026 	ld	b, a
                           3027 ;src/game/world.c:515: trainList[i].animX+=1;
   88A2 21 07 00      [10] 3028 	ld	hl, #0x0007
   88A5 09            [11] 3029 	add	hl, bc
   88A6 E5            [11] 3030 	push	hl
   88A7 5E            [ 7] 3031 	ld	e, (hl)
   88A8 23            [ 6] 3032 	inc	hl
   88A9 56            [ 7] 3033 	ld	d, (hl)
   88AA E1            [10] 3034 	pop	hl
                           3035 ;src/game/world.c:532: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H-1,trainList[i].animY-y_*TILESIZE_H + 1) )
   88AB DD 7E F1      [19] 3036 	ld	a, -15 (ix)
   88AE B7            [ 4] 3037 	or	a, a
   88AF 28 21         [12] 3038 	jr	Z,00104$
                           3039 ;src/game/world.c:534: trainList[i].animX-=1;
   88B1 1B            [ 6] 3040 	dec	de
   88B2 73            [ 7] 3041 	ld	(hl), e
   88B3 23            [ 6] 3042 	inc	hl
   88B4 72            [ 7] 3043 	ld	(hl), d
                           3044 ;src/game/world.c:535: trainList[i].animY+=1;
   88B5 FD 7E 00      [19] 3045 	ld	a, 0 (iy)
   88B8 DD 86 FD      [19] 3046 	add	a, -3 (ix)
   88BB 4F            [ 4] 3047 	ld	c, a
   88BC FD 7E 01      [19] 3048 	ld	a, 1 (iy)
   88BF DD 8E FE      [19] 3049 	adc	a, -2 (ix)
   88C2 47            [ 4] 3050 	ld	b, a
   88C3 21 09 00      [10] 3051 	ld	hl, #0x0009
   88C6 09            [11] 3052 	add	hl, bc
   88C7 E5            [11] 3053 	push	hl
   88C8 4E            [ 7] 3054 	ld	c, (hl)
   88C9 23            [ 6] 3055 	inc	hl
   88CA 46            [ 7] 3056 	ld	b, (hl)
   88CB E1            [10] 3057 	pop	hl
   88CC 03            [ 6] 3058 	inc	bc
   88CD 71            [ 7] 3059 	ld	(hl), c
   88CE 23            [ 6] 3060 	inc	hl
   88CF 70            [ 7] 3061 	ld	(hl), b
   88D0 18 63         [12] 3062 	jr	00123$
   88D2                    3063 00104$:
                           3064 ;src/game/world.c:537: else if( isPixelBlack(trainList[i].animX-x_*TILESIZE_H-1,trainList[i].animY-y_*TILESIZE_H - 1) )
   88D2 69            [ 4] 3065 	ld	l, c
   88D3 60            [ 4] 3066 	ld	h, b
   88D4 01 09 00      [10] 3067 	ld	bc, #0x0009
   88D7 09            [11] 3068 	add	hl, bc
   88D8 4E            [ 7] 3069 	ld	c, (hl)
   88D9 23            [ 6] 3070 	inc	hl
   88DA 46            [ 7] 3071 	ld	b, (hl)
   88DB 79            [ 4] 3072 	ld	a, c
   88DC DD 96 F9      [19] 3073 	sub	a, -7 (ix)
   88DF 47            [ 4] 3074 	ld	b, a
   88E0 05            [ 4] 3075 	dec	b
   88E1 7B            [ 4] 3076 	ld	a, e
   88E2 DD 96 F7      [19] 3077 	sub	a, -9 (ix)
   88E5 5F            [ 4] 3078 	ld	e, a
   88E6 7A            [ 4] 3079 	ld	a, d
   88E7 DD 9E F8      [19] 3080 	sbc	a, -8 (ix)
   88EA 57            [ 4] 3081 	ld	d, a
   88EB 1B            [ 6] 3082 	dec	de
   88EC C5            [11] 3083 	push	bc
   88ED 33            [ 6] 3084 	inc	sp
   88EE D5            [11] 3085 	push	de
   88EF CD C3 83      [17] 3086 	call	_isPixelBlack
   88F2 F1            [10] 3087 	pop	af
   88F3 33            [ 6] 3088 	inc	sp
   88F4 7D            [ 4] 3089 	ld	a, l
   88F5 B7            [ 4] 3090 	or	a, a
   88F6 28 3D         [12] 3091 	jr	Z,00123$
                           3092 ;src/game/world.c:539: trainList[i].animX-=1;
   88F8 FD 21 88 77   [14] 3093 	ld	iy, #_trainList
   88FC FD 7E 00      [19] 3094 	ld	a, 0 (iy)
   88FF DD 86 FD      [19] 3095 	add	a, -3 (ix)
   8902 4F            [ 4] 3096 	ld	c, a
   8903 FD 7E 01      [19] 3097 	ld	a, 1 (iy)
   8906 DD 8E FE      [19] 3098 	adc	a, -2 (ix)
   8909 47            [ 4] 3099 	ld	b, a
   890A 21 07 00      [10] 3100 	ld	hl, #0x0007
   890D 09            [11] 3101 	add	hl, bc
   890E E5            [11] 3102 	push	hl
   890F 4E            [ 7] 3103 	ld	c, (hl)
   8910 23            [ 6] 3104 	inc	hl
   8911 46            [ 7] 3105 	ld	b, (hl)
   8912 E1            [10] 3106 	pop	hl
   8913 0B            [ 6] 3107 	dec	bc
   8914 71            [ 7] 3108 	ld	(hl), c
   8915 23            [ 6] 3109 	inc	hl
   8916 70            [ 7] 3110 	ld	(hl), b
                           3111 ;src/game/world.c:540: trainList[i].animY-=1;
   8917 FD 2A 88 77   [20] 3112 	ld	iy, (_trainList)
   891B DD 5E FD      [19] 3113 	ld	e,-3 (ix)
   891E DD 56 FE      [19] 3114 	ld	d,-2 (ix)
   8921 FD 19         [15] 3115 	add	iy, de
   8923 11 09 00      [10] 3116 	ld	de, #0x0009
   8926 FD 19         [15] 3117 	add	iy, de
   8928 FD 4E 00      [19] 3118 	ld	c, 0 (iy)
   892B FD 46 01      [19] 3119 	ld	b, 1 (iy)
   892E 0B            [ 6] 3120 	dec	bc
   892F FD 71 00      [19] 3121 	ld	0 (iy), c
   8932 FD 70 01      [19] 3122 	ld	1 (iy), b
   8935                    3123 00123$:
                           3124 ;src/game/world.c:546: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
   8935 FD 21 88 77   [14] 3125 	ld	iy, #_trainList
   8939 FD 7E 00      [19] 3126 	ld	a, 0 (iy)
   893C DD 86 FD      [19] 3127 	add	a, -3 (ix)
   893F DD 77 F1      [19] 3128 	ld	-15 (ix), a
   8942 FD 7E 01      [19] 3129 	ld	a, 1 (iy)
   8945 DD 8E FE      [19] 3130 	adc	a, -2 (ix)
   8948 DD 77 F2      [19] 3131 	ld	-14 (ix), a
   894B DD 7E F1      [19] 3132 	ld	a, -15 (ix)
   894E DD 77 F3      [19] 3133 	ld	-13 (ix), a
   8951 DD 7E F2      [19] 3134 	ld	a, -14 (ix)
   8954 DD 77 F4      [19] 3135 	ld	-12 (ix), a
   8957 DD 6E F3      [19] 3136 	ld	l,-13 (ix)
   895A DD 66 F4      [19] 3137 	ld	h,-12 (ix)
   895D 11 09 00      [10] 3138 	ld	de, #0x0009
   8960 19            [11] 3139 	add	hl, de
   8961 7E            [ 7] 3140 	ld	a, (hl)
   8962 DD 77 F3      [19] 3141 	ld	-13 (ix), a
   8965 23            [ 6] 3142 	inc	hl
   8966 7E            [ 7] 3143 	ld	a, (hl)
   8967 DD 77 F4      [19] 3144 	ld	-12 (ix), a
   896A DD 7E F3      [19] 3145 	ld	a, -13 (ix)
   896D DD 77 F3      [19] 3146 	ld	-13 (ix), a
   8970 DD 96 F9      [19] 3147 	sub	a, -7 (ix)
   8973 DD 77 F3      [19] 3148 	ld	-13 (ix), a
   8976 DD 6E F1      [19] 3149 	ld	l,-15 (ix)
   8979 DD 66 F2      [19] 3150 	ld	h,-14 (ix)
   897C 11 07 00      [10] 3151 	ld	de, #0x0007
   897F 19            [11] 3152 	add	hl, de
   8980 7E            [ 7] 3153 	ld	a, (hl)
   8981 DD 77 F1      [19] 3154 	ld	-15 (ix), a
   8984 23            [ 6] 3155 	inc	hl
   8985 7E            [ 7] 3156 	ld	a, (hl)
   8986 DD 77 F2      [19] 3157 	ld	-14 (ix), a
   8989 DD 7E F1      [19] 3158 	ld	a, -15 (ix)
   898C DD 96 F7      [19] 3159 	sub	a, -9 (ix)
   898F DD 77 F1      [19] 3160 	ld	-15 (ix), a
   8992 DD 7E F2      [19] 3161 	ld	a, -14 (ix)
   8995 DD 9E F8      [19] 3162 	sbc	a, -8 (ix)
   8998 DD 77 F2      [19] 3163 	ld	-14 (ix), a
   899B 3E 03         [ 7] 3164 	ld	a, #0x03
   899D F5            [11] 3165 	push	af
   899E 33            [ 6] 3166 	inc	sp
   899F DD 7E F3      [19] 3167 	ld	a, -13 (ix)
   89A2 F5            [11] 3168 	push	af
   89A3 33            [ 6] 3169 	inc	sp
   89A4 DD 6E F1      [19] 3170 	ld	l,-15 (ix)
   89A7 DD 66 F2      [19] 3171 	ld	h,-14 (ix)
   89AA E5            [11] 3172 	push	hl
   89AB CD EA 82      [17] 3173 	call	_setPixel
   89AE F1            [10] 3174 	pop	af
   89AF F1            [10] 3175 	pop	af
                           3176 ;src/game/world.c:547: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
   89B0 FD 21 88 77   [14] 3177 	ld	iy, #_trainList
   89B4 FD 7E 00      [19] 3178 	ld	a, 0 (iy)
   89B7 DD 86 FD      [19] 3179 	add	a, -3 (ix)
   89BA DD 77 F1      [19] 3180 	ld	-15 (ix), a
   89BD FD 7E 01      [19] 3181 	ld	a, 1 (iy)
   89C0 DD 8E FE      [19] 3182 	adc	a, -2 (ix)
   89C3 DD 77 F2      [19] 3183 	ld	-14 (ix), a
   89C6 DD 7E F1      [19] 3184 	ld	a, -15 (ix)
   89C9 DD 77 F3      [19] 3185 	ld	-13 (ix), a
   89CC DD 7E F2      [19] 3186 	ld	a, -14 (ix)
   89CF DD 77 F4      [19] 3187 	ld	-12 (ix), a
   89D2 DD 6E F3      [19] 3188 	ld	l,-13 (ix)
   89D5 DD 66 F4      [19] 3189 	ld	h,-12 (ix)
   89D8 11 0D 00      [10] 3190 	ld	de, #0x000d
   89DB 19            [11] 3191 	add	hl, de
   89DC 7E            [ 7] 3192 	ld	a, (hl)
   89DD DD 77 F3      [19] 3193 	ld	-13 (ix), a
   89E0 23            [ 6] 3194 	inc	hl
   89E1 7E            [ 7] 3195 	ld	a, (hl)
   89E2 DD 77 F4      [19] 3196 	ld	-12 (ix), a
   89E5 DD 7E F3      [19] 3197 	ld	a, -13 (ix)
   89E8 DD 77 F3      [19] 3198 	ld	-13 (ix), a
   89EB DD 96 F9      [19] 3199 	sub	a, -7 (ix)
   89EE DD 77 F3      [19] 3200 	ld	-13 (ix), a
   89F1 DD 6E F1      [19] 3201 	ld	l,-15 (ix)
   89F4 DD 66 F2      [19] 3202 	ld	h,-14 (ix)
   89F7 11 0B 00      [10] 3203 	ld	de, #0x000b
   89FA 19            [11] 3204 	add	hl, de
   89FB 7E            [ 7] 3205 	ld	a, (hl)
   89FC DD 77 F1      [19] 3206 	ld	-15 (ix), a
   89FF 23            [ 6] 3207 	inc	hl
   8A00 7E            [ 7] 3208 	ld	a, (hl)
   8A01 DD 77 F2      [19] 3209 	ld	-14 (ix), a
   8A04 DD 7E F1      [19] 3210 	ld	a, -15 (ix)
   8A07 DD 96 F7      [19] 3211 	sub	a, -9 (ix)
   8A0A DD 77 F1      [19] 3212 	ld	-15 (ix), a
   8A0D DD 7E F2      [19] 3213 	ld	a, -14 (ix)
   8A10 DD 9E F8      [19] 3214 	sbc	a, -8 (ix)
   8A13 DD 77 F2      [19] 3215 	ld	-14 (ix), a
   8A16 3E 02         [ 7] 3216 	ld	a, #0x02
   8A18 F5            [11] 3217 	push	af
   8A19 33            [ 6] 3218 	inc	sp
   8A1A DD 7E F3      [19] 3219 	ld	a, -13 (ix)
   8A1D F5            [11] 3220 	push	af
   8A1E 33            [ 6] 3221 	inc	sp
   8A1F DD 6E F1      [19] 3222 	ld	l,-15 (ix)
   8A22 DD 66 F2      [19] 3223 	ld	h,-14 (ix)
   8A25 E5            [11] 3224 	push	hl
   8A26 CD EA 82      [17] 3225 	call	_setPixel
   8A29 F1            [10] 3226 	pop	af
   8A2A F1            [10] 3227 	pop	af
                           3228 ;src/game/world.c:548: setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
   8A2B DD 7E EC      [19] 3229 	ld	a, -20 (ix)
   8A2E DD 77 F1      [19] 3230 	ld	-15 (ix), a
   8A31 DD 96 F9      [19] 3231 	sub	a, -7 (ix)
   8A34 DD 77 F1      [19] 3232 	ld	-15 (ix), a
   8A37 DD 7E EE      [19] 3233 	ld	a, -18 (ix)
   8A3A DD 96 F7      [19] 3234 	sub	a, -9 (ix)
   8A3D DD 77 F3      [19] 3235 	ld	-13 (ix), a
   8A40 DD 7E EF      [19] 3236 	ld	a, -17 (ix)
   8A43 DD 9E F8      [19] 3237 	sbc	a, -8 (ix)
   8A46 DD 77 F4      [19] 3238 	ld	-12 (ix), a
   8A49 AF            [ 4] 3239 	xor	a, a
   8A4A F5            [11] 3240 	push	af
   8A4B 33            [ 6] 3241 	inc	sp
   8A4C DD 7E F1      [19] 3242 	ld	a, -15 (ix)
   8A4F F5            [11] 3243 	push	af
   8A50 33            [ 6] 3244 	inc	sp
   8A51 DD 6E F3      [19] 3245 	ld	l,-13 (ix)
   8A54 DD 66 F4      [19] 3246 	ld	h,-12 (ix)
   8A57 E5            [11] 3247 	push	hl
   8A58 CD EA 82      [17] 3248 	call	_setPixel
   8A5B F1            [10] 3249 	pop	af
   8A5C F1            [10] 3250 	pop	af
   8A5D                    3251 00132$:
                           3252 ;src/game/world.c:498: for(i=0; i<nbTrainList; i++)
   8A5D DD 34 F0      [23] 3253 	inc	-16 (ix)
   8A60 C3 74 84      [10] 3254 	jp	00131$
   8A63                    3255 00133$:
   8A63 DD F9         [10] 3256 	ld	sp, ix
   8A65 DD E1         [14] 3257 	pop	ix
   8A67 C9            [10] 3258 	ret
                           3259 	.area _CODE
                           3260 	.area _INITIALIZER
                           3261 	.area _CABS (ABS)
