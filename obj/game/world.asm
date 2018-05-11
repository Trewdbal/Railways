;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module world
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_setSeed_mxor
	.globl _cpct_getRandom_mxor_u16
	.globl _cpct_getRandom_mxor_u8
	.globl _cpct_getScreenPtr
	.globl _cpct_count2VSYNC
	.globl _cpct_drawSpriteMaskedAlignedTable
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM1
	.globl _cpct_getBit
	.globl _cpct_memset
	.globl _drawCursor
	.globl _patternTile
	.globl _generateWorld
	.globl _drawTile
	.globl _drawScrolls
	.globl _drawWorld
	.globl _setTrainHeading
	.globl _setPixel
	.globl _isPixelBlack
	.globl _drawTrains
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/game/world.c:3: cpctm_createTransparentMaskTable(g_masktable, 0x0100, M1, 0);
;	---------------------------------
; Function dummy_cpct_transparentMaskTable0M1_container
; ---------------------------------
_dummy_cpct_transparentMaskTable0M1_container::
	.area _g_masktable_ (ABS) 
	.org 0x0100 
	 _g_masktable::
	.db 0xFF, 0xEE, 0xDD, 0xCC, 0xBB, 0xAA, 0x99, 0x88 
	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
	.db 0xEE, 0xEE, 0xCC, 0xCC, 0xAA, 0xAA, 0x88, 0x88 
	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
	.db 0xDD, 0xCC, 0xDD, 0xCC, 0x99, 0x88, 0x99, 0x88 
	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
	.db 0xCC, 0xCC, 0xCC, 0xCC, 0x88, 0x88, 0x88, 0x88 
	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
	.db 0xBB, 0xAA, 0x99, 0x88, 0xBB, 0xAA, 0x99, 0x88 
	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
	.db 0xAA, 0xAA, 0x88, 0x88, 0xAA, 0xAA, 0x88, 0x88 
	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
	.db 0x99, 0x88, 0x99, 0x88, 0x99, 0x88, 0x99, 0x88 
	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
	.db 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
	.db 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00 
	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
	.db 0x66, 0x66, 0x44, 0x44, 0x22, 0x22, 0x00, 0x00 
	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
	.db 0x55, 0x44, 0x55, 0x44, 0x11, 0x00, 0x11, 0x00 
	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
	.db 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00 
	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
	.db 0x33, 0x22, 0x11, 0x00, 0x33, 0x22, 0x11, 0x00 
	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
	.db 0x22, 0x22, 0x00, 0x00, 0x22, 0x22, 0x00, 0x00 
	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
	.db 0x11, 0x00, 0x11, 0x00, 0x11, 0x00, 0x11, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.area _CSEG (REL, CON) 
;src/game/world.c:5: void drawCursor(u8 x, u8 y, u8 color)
;	---------------------------------
; Function drawCursor
; ---------------------------------
_drawCursor::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/game/world.c:8: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
	ld	a, 5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	ld	c, a
	ld	a, 4 (ix)
	add	a, a
	add	a, a
	ld	b, a
	push	bc
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	bc
;src/game/world.c:10: switch(CURSOR_MODE)
	ld	a, #0x11
	ld	iy, #_CURSOR_MODE
	sub	a, 0 (iy)
	jp	C, 00120$
	push	de
	ld	e, 0 (iy)
	ld	d, #0x00
	ld	hl, #00126$
	add	hl, de
	add	hl, de
	add	hl, de
	pop	de
	jp	(hl)
00126$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
	jp	00111$
	jp	00112$
	jp	00113$
	jp	00114$
	jp	00115$
	jp	00116$
	jp	00117$
	jp	00118$
;src/game/world.c:12: case NONE:
00101$:
;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
	push	bc
	push	de
	ld	h, 6 (ix)
	ld	l, 6 (ix)
	push	hl
	ld	h, 6 (ix)
	ld	l, 6 (ix)
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	-1 (ix), l
	pop	de
	ld	hl, #0x0004
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	push	de
	call	_cpct_memset
	pop	bc
;src/game/world.c:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
	ld	d, c
	inc	d
	push	bc
	ld	e, b
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	push	hl
	ld	h, 6 (ix)
	ld	l, 6 (ix)
	push	hl
	ld	h, 6 (ix)
	ld	l, 6 (ix)
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	c, l
	pop	de
	pop	af
	ld	b, a
	push	bc
	ld	hl, #0x0004
	push	hl
	ld	a, c
	push	af
	inc	sp
	push	de
	call	_cpct_memset
	pop	bc
;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
	ld	a, 5 (ix)
	inc	a
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	ld	c, a
	ld	d, c
	dec	d
	push	bc
	ld	e, b
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	push	hl
	ld	h, 6 (ix)
	ld	l, 6 (ix)
	push	hl
	ld	h, 6 (ix)
	ld	l, 6 (ix)
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	-1 (ix), l
	pop	de
	ld	hl, #0x0004
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	push	de
	call	_cpct_memset
	pop	bc
;src/game/world.c:20: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
	ld	d, c
	dec	d
	dec	d
	ld	e, b
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/game/world.c:21: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
	push	hl
	ld	h, 6 (ix)
	ld	l, 6 (ix)
	push	hl
	ld	h, 6 (ix)
	ld	l, 6 (ix)
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	d, l
	pop	bc
	ld	hl, #0x0004
	push	hl
	push	de
	inc	sp
	push	bc
	call	_cpct_memset
;src/game/world.c:22: break;
	jp	00120$
;src/game/world.c:23: case PUTTRAIN:
00102$:
;src/game/world.c:24: cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
	ld	bc, #_g_masktable+0
	push	bc
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_train_h
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/game/world.c:25: break;
	jp	00120$
;src/game/world.c:26: case T_SSNS:
00103$:
;src/game/world.c:27: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_station_small_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:28: break;
	jp	00120$
;src/game/world.c:29: case T_SSEW:
00104$:
;src/game/world.c:30: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_station_small_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:31: break;
	jp	00120$
;src/game/world.c:32: case T_SMNS:
00105$:
;src/game/world.c:33: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_station_medium_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:34: break;
	jp	00120$
;src/game/world.c:35: case T_SMEW:
00106$:
;src/game/world.c:36: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_station_medium_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:37: break;
	jp	00120$
;src/game/world.c:38: case T_SLNS:
00107$:
;src/game/world.c:39: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_station_large_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:40: break;
	jp	00120$
;src/game/world.c:41: case T_SLEW:
00108$:
;src/game/world.c:42: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_station_large_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:43: break;
	jp	00120$
;src/game/world.c:44: case T_REW:
00109$:
;src/game/world.c:45: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:46: break;
	jp	00120$
;src/game/world.c:47: case T_RNS:
00110$:
;src/game/world.c:48: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:49: break;
	jr	00120$
;src/game/world.c:50: case T_REN:
00111$:
;src/game/world.c:51: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_en
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:52: break;
	jr	00120$
;src/game/world.c:53: case T_RES:
00112$:
;src/game/world.c:54: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_es
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:55: break;
	jr	00120$
;src/game/world.c:56: case T_RWN:
00113$:
;src/game/world.c:57: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_wn
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:58: break;
	jr	00120$
;src/game/world.c:59: case T_RWS:
00114$:
;src/game/world.c:60: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_ws
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:61: break;
	jr	00120$
;src/game/world.c:62: case T_REWN:
00115$:
;src/game/world.c:63: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_ew_n
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:64: break;
	jr	00120$
;src/game/world.c:65: case T_REWS:
00116$:
;src/game/world.c:66: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_ew_s
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:67: break;
	jr	00120$
;src/game/world.c:68: case T_RNSE:
00117$:
;src/game/world.c:69: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_ns_e
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:70: break;
	jr	00120$
;src/game/world.c:71: case T_RNSW:
00118$:
;src/game/world.c:72: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	de
	ld	hl, #_rail_ns_w
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:74: }
00120$:
	inc	sp
	pop	ix
	ret
;src/game/world.c:77: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
;	---------------------------------
; Function patternTile
; ---------------------------------
_patternTile::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
;src/game/world.c:82: for(iy=0; iy<nBitsY; iy++)
	ld	a, 4 (ix)
	sub	a, #0x08
	jr	NZ,00153$
	ld	a,#0x01
	jr	00154$
00153$:
	xor	a,a
00154$:
	ld	-2 (ix), a
	ld	a, 4 (ix)
	sub	a, #0x02
	jr	NZ,00155$
	ld	a,#0x01
	jr	00156$
00155$:
	xor	a,a
00156$:
	ld	-5 (ix), a
	ld	e, #0x00
00115$:
	ld	a, e
	sub	a, 8 (ix)
	jp	NC, 00117$
;src/game/world.c:84: for(ix=0; ix<nBitsX; ix++)
	push	de
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	de
	ld	c, l
	ld	b, h
	ld	a, 5 (ix)
	add	a, c
	ld	-7 (ix), a
	ld	a, 6 (ix)
	adc	a, b
	ld	-6 (ix), a
	push	de
	ld	h, 7 (ix)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00157$:
	add	hl, hl
	jr	NC,00158$
	add	hl, de
00158$:
	djnz	00157$
	pop	de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	d, #0x00
00112$:
	ld	a, d
	sub	a, 7 (ix)
	jr	NC,00116$
;src/game/world.c:86: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
	ld	-9 (ix), d
	ld	-8 (ix), #0x00
	ld	a, -9 (ix)
	add	a, -4 (ix)
	ld	c, a
	ld	a, -8 (ix)
	adc	a, -3 (ix)
	ld	b, a
	ld	l,9 (ix)
	ld	h,10 (ix)
	push	de
	push	bc
	push	hl
	call	_cpct_getBit
	ld	-1 (ix), l
	pop	de
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00113$
	ld	a, -7 (ix)
	add	a, -9 (ix)
	ld	c, a
	ld	a, -6 (ix)
	adc	a, -8 (ix)
	ld	b,a
	xor	a, #0x80
	sub	a, #0x8f
	jr	NC,00113$
;src/game/world.c:88: if(tileType == FOREST)
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00104$
;src/game/world.c:89: p_world[index+iy*WIDTH+ix] = tileType;
	ld	hl, #_p_world
	add	hl, bc
	ld	a, 4 (ix)
	ld	(hl), a
	jr	00113$
00104$:
;src/game/world.c:90: else if(tileType==DWELLINGS1)
	ld	a, -5 (ix)
	or	a, a
	jr	Z,00113$
;src/game/world.c:91: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandom_mxor_u8 ()%3+2;
	ld	hl, #_p_world
	add	hl, bc
	push	hl
	push	de
	call	_cpct_getRandom_mxor_u8
	ld	b, l
	ld	a, #0x03
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar
	pop	af
	ld	c, l
	pop	de
	pop	hl
	inc	c
	inc	c
	ld	(hl), c
00113$:
;src/game/world.c:84: for(ix=0; ix<nBitsX; ix++)
	inc	d
	jr	00112$
00116$:
;src/game/world.c:82: for(iy=0; iy<nBitsY; iy++)
	inc	e
	jp	00115$
00117$:
	ld	sp, ix
	pop	ix
	ret
;src/game/world.c:98: void generateWorld()
;	---------------------------------
; Function generateWorld
; ---------------------------------
_generateWorld::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-28
	add	hl, sp
	ld	sp, hl
;src/game/world.c:105: CURSOR_MODE = NONE;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x00
;src/game/world.c:108: cpct_setSeed_mxor ((u32)cpct_count2VSYNC());
	call	_cpct_count2VSYNC
	ld	de,#0x0000
	call	_cpct_setSeed_mxor
;src/game/world.c:112: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	ld	bc, #0x0000
00119$:
;src/game/world.c:114: p_world[iy] =  cpct_getRandom_mxor_u16()%2;
	ld	hl, #_p_world
	add	hl, bc
	push	hl
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	e, l
	pop	bc
	pop	hl
	ld	a, e
	and	a, #0x01
	ld	(hl), a
;src/game/world.c:112: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	inc	bc
	ld	a, b
	xor	a, #0x80
	sub	a, #0x8f
	jr	C,00119$
;src/game/world.c:119: for(ix=0; ix<NBFOREST; ix++)
	ld	hl, #0x0002
	add	hl, sp
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	bc, #0x0000
00121$:
;src/game/world.c:121: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	de, #0x0f00
	push	de
	push	hl
	call	__moduint
	pop	af
	ex	(sp),hl
	call	_cpct_getRandom_mxor_u16
	pop	de
	pop	bc
	ld	a, l
	and	a, #0x03
	ld	l, a
	ld	h, #0x00
;src/game/world.c:127: p_forest[1] = 0b11000111;
	ld	a, -8 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
;src/game/world.c:128: p_forest[2] = 0b11011110;
	ld	a, -8 (ix)
	add	a, #0x02
	ld	-10 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
;src/game/world.c:129: p_forest[3] = 0b01111110;
	ld	a, -8 (ix)
	add	a, #0x03
	ld	-16 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
;src/game/world.c:130: p_forest[4] = 0b11111110; 
	ld	a, -8 (ix)
	add	a, #0x04
	ld	-14 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
;src/game/world.c:131: p_forest[5] = 0b01111111;
	ld	a, -8 (ix)
	add	a, #0x05
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;src/game/world.c:132: p_forest[6] = 0b11101111;
	ld	a, -8 (ix)
	add	a, #0x06
	ld	-4 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;src/game/world.c:133: p_forest[7] = 0b11001111;
	ld	a, -8 (ix)
	add	a, #0x07
	ld	-12 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
;src/game/world.c:123: switch(cpct_getRandom_mxor_u16()%4)
	ld	a, l
	or	a, a
	or	a, h
	jr	Z,00102$
	ld	a, l
	dec	a
	or	a, h
	jr	Z,00103$
	ld	a, l
	sub	a, #0x02
	or	a, h
	jp	Z,00104$
	ld	a, l
	sub	a, #0x03
	or	a, h
	jp	Z,00105$
	jp	00106$
;src/game/world.c:125: case 0:
00102$:
;src/game/world.c:126: p_forest[0] = 0b10000100;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0x84
;src/game/world.c:127: p_forest[1] = 0b11000111;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0xc7
;src/game/world.c:128: p_forest[2] = 0b11011110;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0xde
;src/game/world.c:129: p_forest[3] = 0b01111110;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl), #0x7e
;src/game/world.c:130: p_forest[4] = 0b11111110; 
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl), #0xfe
;src/game/world.c:131: p_forest[5] = 0b01111111;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x7f
;src/game/world.c:132: p_forest[6] = 0b11101111;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0xef
;src/game/world.c:133: p_forest[7] = 0b11001111;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), #0xcf
;src/game/world.c:134: break;
	jp	00106$
;src/game/world.c:135: case 1:
00103$:
;src/game/world.c:136: p_forest[0] = 0b00001100;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0x0c
;src/game/world.c:137: p_forest[1] = 0b11111000;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0xf8
;src/game/world.c:138: p_forest[2] = 0b00111111;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x3f
;src/game/world.c:139: p_forest[3] = 0b01111110;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl), #0x7e
;src/game/world.c:140: p_forest[4] = 0b11111110; 
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl), #0xfe
;src/game/world.c:141: p_forest[5] = 0b01011111;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x5f
;src/game/world.c:142: p_forest[6] = 0b11001111;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0xcf
;src/game/world.c:143: p_forest[7] = 0b10001100;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), #0x8c
;src/game/world.c:144: break;
	jp	00106$
;src/game/world.c:145: case 2:
00104$:
;src/game/world.c:146: p_forest[0] = 0b00110000;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0x30
;src/game/world.c:147: p_forest[1] = 0b11110100;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0xf4
;src/game/world.c:148: p_forest[2] = 0b11111111;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0xff
;src/game/world.c:149: p_forest[3] = 0b11111111;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl), #0xff
;src/game/world.c:150: p_forest[4] = 0b01111100;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl), #0x7c
;src/game/world.c:151: p_forest[5] = 0b01111110;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x7e
;src/game/world.c:152: p_forest[6] = 0b00111110;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x3e
;src/game/world.c:153: p_forest[7] = 0b00011000;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), #0x18
;src/game/world.c:154: break;
	jr	00106$
;src/game/world.c:155: case 3:
00105$:
;src/game/world.c:156: p_forest[0] = 0b11000000; 
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0xc0
;src/game/world.c:157: p_forest[1] = 0b11100111;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0xe7
;src/game/world.c:158: p_forest[2] = 0b01111110;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x7e
;src/game/world.c:159: p_forest[3] = 0b01111110;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl), #0x7e
;src/game/world.c:160: p_forest[4] = 0b11111110;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl), #0xfe
;src/game/world.c:161: p_forest[5] = 0b11111100;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0xfc
;src/game/world.c:162: p_forest[6] = 0b01111000;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x78
;src/game/world.c:163: p_forest[7] = 0b00110000;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), #0x30
;src/game/world.c:165: }
00106$:
;src/game/world.c:166: patternTile(FOREST, iy, 8, 8, p_forest);
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	bc
	push	hl
	ld	hl, #0x0808
	push	hl
	push	de
	ld	a, #0x08
	push	af
	inc	sp
	call	_patternTile
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
	pop	bc
;src/game/world.c:119: for(ix=0; ix<NBFOREST; ix++)
	inc	bc
	ld	a, c
	sub	a, #0x32
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00121$
;src/game/world.c:172: for(ix=0; ix<NBFARM; ix++)
	ld	bc, #0x003c
00125$:
;src/game/world.c:174: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT)%(WIDTH*HEIGHT);
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	de, #0x0f00
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	ld	de, #0x0f00
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
;src/game/world.c:175: p_world[iy] = cpct_rand()%2+5;
	ld	de, #_p_world
	add	hl, de
	push	hl
	push	bc
	call	_cpct_getRandom_mxor_u8
	ld	a, l
	pop	bc
	pop	hl
	and	a, #0x01
	add	a, #0x05
	ld	(hl), a
	dec	bc
;src/game/world.c:172: for(ix=0; ix<NBFARM; ix++)
	ld	a, b
	or	a,c
	jr	NZ,00125$
;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
	ld	bc, #0x0014
00128$:
;src/game/world.c:182: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	de, #0x0f00
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
;src/game/world.c:183: p_world[iy] = cpct_rand()%3+2;
	ld	de, #_p_world
	add	hl, de
	push	hl
	push	bc
	call	_cpct_getRandom_mxor_u8
	ld	d, l
	ld	a, #0x03
	push	af
	inc	sp
	push	de
	inc	sp
	call	__moduchar
	pop	af
	ld	e, l
	pop	bc
	pop	hl
	inc	e
	inc	e
	ld	(hl), e
	dec	bc
;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
	ld	a, b
	or	a,c
	jr	NZ,00128$
;src/game/world.c:186: for(ix=0; ix<NBURBAN; ix++)
	ld	hl, #0x0000
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	-18 (ix), #0x00
	ld	-17 (ix), #0x00
00129$:
;src/game/world.c:188: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	de, #0x0f00
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
	ld	-12 (ix), l
	ld	-11 (ix), h
;src/game/world.c:190: switch(cpct_rand()%6)
	push	bc
	call	_cpct_getRandom_mxor_u8
	ld	d, l
	ld	a, #0x06
	push	af
	inc	sp
	push	de
	inc	sp
	call	__moduchar
	pop	af
	ld	e, l
	pop	bc
	ld	a, #0x05
	sub	a, e
	jr	C,00116$
;src/game/world.c:194: p_cities[1] = 0b01000110; // 01100010;
	ld	hl, #0x0001
	add	hl,bc
	ld	-4 (ix), l
	ld	-3 (ix), h
;src/game/world.c:190: switch(cpct_rand()%6)
	ld	d, #0x00
	ld	hl, #00211$
	add	hl, de
	add	hl, de
;src/game/world.c:192: case 0:
	jp	(hl)
00211$:
	jr	00110$
	jr	00111$
	jr	00112$
	jr	00113$
	jr	00114$
	jr	00115$
00110$:
;src/game/world.c:193: p_cities[0] = 0b01110010; // 01001110;
	ld	a, #0x72
	ld	(bc), a
;src/game/world.c:194: p_cities[1] = 0b01000110; // 01100010;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x46
;src/game/world.c:195: break;
	jr	00116$
;src/game/world.c:197: case 1:
00111$:
;src/game/world.c:198: p_cities[0] = 0b01100000; // 00000110;
	ld	a, #0x60
	ld	(bc), a
;src/game/world.c:199: p_cities[1] = 0b00000110; // 01100000;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x06
;src/game/world.c:200: break;
	jr	00116$
;src/game/world.c:202: case 2:
00112$:
;src/game/world.c:203: p_cities[0] = 0b00010000; // 00001000;
	ld	a, #0x10
	ld	(bc), a
;src/game/world.c:204: p_cities[1] = 0b00000110; // 01100000;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x06
;src/game/world.c:205: break;
	jr	00116$
;src/game/world.c:207: case 3:
00113$:
;src/game/world.c:208: p_cities[0] = 0b11000000; // 00000011;
	ld	a, #0xc0
	ld	(bc), a
;src/game/world.c:209: p_cities[1] = 0b00110001; // 10001100;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x31
;src/game/world.c:210: break;
	jr	00116$
;src/game/world.c:212: case 4:
00114$:
;src/game/world.c:213: p_cities[0] = 0b11000100; // 00100011;
	ld	a, #0xc4
	ld	(bc), a
;src/game/world.c:214: p_cities[1] = 0b00001110; // 01110000;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x0e
;src/game/world.c:215: break;
	jr	00116$
;src/game/world.c:217: case 5:
00115$:
;src/game/world.c:218: p_cities[0] = 0b01000000; // 00000010;
	ld	a, #0x40
	ld	(bc), a
;src/game/world.c:219: p_cities[1] = 0b01001110; // 01110010;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x4e
;src/game/world.c:221: }
00116$:
;src/game/world.c:223: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
	ld	e, c
	ld	d, b
	push	bc
	push	de
	ld	hl, #0x0404
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_patternTile
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
	pop	bc
;src/game/world.c:186: for(ix=0; ix<NBURBAN; ix++)
	inc	-18 (ix)
	jr	NZ,00212$
	inc	-17 (ix)
00212$:
	ld	a, -18 (ix)
	sub	a, #0x14
	ld	a, -17 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00129$
;src/game/world.c:228: for(ix=0; ix<NBLIVESTOCK; ix++)
	ld	bc, #0x0013
00133$:
;src/game/world.c:230: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	de, #0x0f00
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
;src/game/world.c:231: p_world[iy] = LIVESTOCK;
	ld	de, #_p_world
	add	hl, de
	ld	(hl), #0x09
	dec	bc
;src/game/world.c:228: for(ix=0; ix<NBLIVESTOCK; ix++)
	ld	a, b
	or	a,c
	jr	NZ,00133$
	ld	sp, ix
	pop	ix
	ret
;src/game/world.c:235: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
;	---------------------------------
; Function drawTile
; ---------------------------------
_drawTile::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game/world.c:238: int adress = (y_+iy)*WIDTH+x_+ix;
	ld	c, 5 (ix)
	ld	b, #0x00
	ld	l, 7 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, 4 (ix)
	ld	b, #0x00
	add	hl, bc
	ld	c, 6 (ix)
	ld	b, #0x00
	add	hl,bc
	ld	e, l
	ld	d, h
;src/game/world.c:240: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
	ld	a, 7 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	ld	h, a
	ld	a, 6 (ix)
	add	a, a
	add	a, a
	ld	b, a
	push	de
	push	hl
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
	pop	de
;src/game/world.c:242: switch(p_world[adress])
	ld	hl, #_p_world+0
	add	hl, de
	ld	e, (hl)
	ld	a, #0x19
	sub	a, e
	jp	C, 00128$
	ld	d, #0x00
	ld	hl, #00134$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00134$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
	jp	00111$
	jp	00112$
	jp	00113$
	jp	00114$
	jp	00115$
	jp	00116$
	jp	00117$
	jp	00118$
	jp	00119$
	jp	00120$
	jp	00121$
	jp	00122$
	jp	00123$
	jp	00124$
	jp	00125$
	jp	00126$
;src/game/world.c:244: case GRASS1:
00101$:
;src/game/world.c:245: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_grass1
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:246: break;
	jp	00128$
;src/game/world.c:247: case GRASS2:
00102$:
;src/game/world.c:248: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_grass2
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:249: break;
	jp	00128$
;src/game/world.c:250: case DWELLINGS1:
00103$:
;src/game/world.c:251: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_dwellings1
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:252: break;
	jp	00128$
;src/game/world.c:253: case DWELLINGS2:
00104$:
;src/game/world.c:254: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_dwellings2
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:255: break;
	jp	00128$
;src/game/world.c:256: case DWELLINGS3:
00105$:
;src/game/world.c:257: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_dwellings3
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:258: break;
	jp	00128$
;src/game/world.c:259: case FARM1:
00106$:
;src/game/world.c:260: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_farm1
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:261: break;
	jp	00128$
;src/game/world.c:262: case FARM2:
00107$:
;src/game/world.c:263: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_farm2
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:264: break;
	jp	00128$
;src/game/world.c:265: case WATER:
00108$:
;src/game/world.c:266: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_water
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:267: break;
	jp	00128$
;src/game/world.c:268: case FOREST:
00109$:
;src/game/world.c:269: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_forest
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:270: break;
	jp	00128$
;src/game/world.c:271: case LIVESTOCK:
00110$:
;src/game/world.c:272: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_livestock
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:273: break;
	jp	00128$
;src/game/world.c:274: case SSNS:
00111$:
;src/game/world.c:275: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_small_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:276: break;
	jp	00128$
;src/game/world.c:277: case SSEW:
00112$:
;src/game/world.c:278: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_small_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:279: break;
	jp	00128$
;src/game/world.c:280: case SMNS:
00113$:
;src/game/world.c:281: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_medium_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:282: break;
	jp	00128$
;src/game/world.c:283: case SMEW:
00114$:
;src/game/world.c:284: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_medium_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:285: break;
	jp	00128$
;src/game/world.c:286: case SLNS:
00115$:
;src/game/world.c:287: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_large_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:288: break;
	jp	00128$
;src/game/world.c:289: case SLEW:
00116$:
;src/game/world.c:290: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_large_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:291: break;
	jp	00128$
;src/game/world.c:292: case REW:
00117$:
;src/game/world.c:293: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:294: break;
	jp	00128$
;src/game/world.c:295: case RNS:
00118$:
;src/game/world.c:296: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:297: break;
	jr	00128$
;src/game/world.c:298: case REN:
00119$:
;src/game/world.c:299: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_en
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:300: break;
	jr	00128$
;src/game/world.c:301: case RES:
00120$:
;src/game/world.c:302: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_es
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:303: break;
	jr	00128$
;src/game/world.c:304: case RWN:
00121$:
;src/game/world.c:305: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_wn
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:306: break;
	jr	00128$
;src/game/world.c:307: case RWS:
00122$:
;src/game/world.c:308: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ws
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:309: break;
	jr	00128$
;src/game/world.c:310: case REWN:
00123$:
;src/game/world.c:311: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ew_n
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:312: break;
	jr	00128$
;src/game/world.c:313: case REWS:
00124$:
;src/game/world.c:314: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ew_s
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:315: break;
	jr	00128$
;src/game/world.c:316: case RNSE:
00125$:
;src/game/world.c:317: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ns_e
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:318: break;
	jr	00128$
;src/game/world.c:319: case RNSW:
00126$:
;src/game/world.c:320: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ns_w
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:322: }
00128$:
	pop	ix
	ret
;src/game/world.c:325: void drawScrolls(u8 x_, u8 y_)
;	---------------------------------
; Function drawScrolls
; ---------------------------------
_drawScrolls::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game/world.c:331: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
	ld	c,4 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	bc, #0x003c
	push	bc
	push	hl
	call	__divsint
	pop	af
	pop	af
	ld	d, l
;src/game/world.c:332: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
	ld	c,5 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	bc, #0x0024
	push	bc
	push	hl
	call	__divsint
	pop	af
	pop	af
	ld	b, l
	pop	de
;src/game/world.c:334: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/game/world.c:335: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
	push	hl
	push	bc
	ld	de, #0x0000
	push	de
	ld	de, #0x0000
	push	de
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	c, l
	pop	af
	ld	b, a
	pop	hl
	push	bc
	ld	de, #0x0404
	push	de
	ld	a, c
	push	af
	inc	sp
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/game/world.c:338: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
	push	hl
	ld	hl, #0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	d, l
	pop	bc
	ld	hl, #0x1001
	push	hl
	push	de
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	ix
	ret
;src/game/world.c:341: void drawWorld(u8 x_, u8 y_)
;	---------------------------------
; Function drawWorld
; ---------------------------------
_drawWorld::
;src/game/world.c:346: for(iy=0; iy<NBTILE_H;iy++)
	ld	c, #0x00
;src/game/world.c:348: for(ix=0; ix<NBTILE_W;ix++)
00109$:
	ld	b, #0x00
00103$:
;src/game/world.c:350: drawTile(x_, y_, ix, iy);
	push	bc
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #7+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #7+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
	pop	bc
;src/game/world.c:348: for(ix=0; ix<NBTILE_W;ix++)
	inc	b
	ld	a, b
	sub	a, #0x14
	jr	C,00103$
;src/game/world.c:346: for(iy=0; iy<NBTILE_H;iy++)
	inc	c
	ld	a, c
	sub	a, #0x0c
	jr	C,00109$
;src/game/world.c:354: drawScrolls(x_, y_);
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_drawScrolls
	pop	af
	ret
;src/game/world.c:361: void setTrainHeading(u8 i)
;	---------------------------------
; Function setTrainHeading
; ---------------------------------
_setTrainHeading::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game/world.c:365: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
	ld	c,4 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, c
	ld	e, a
	ld	a, 1 (iy)
	adc	a, b
	ld	d, a
	ld	l, e
	ld	h, d
	ld	bc, #0x0005
	add	hl, bc
	ld	c, (hl)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	bc, #_p_world
	add	hl, bc
	ld	c, (hl)
;src/game/world.c:368: if(trainList[i].heading==1) trainList[i].heading=2;
	ld	hl, #0x0006
	add	hl, de
;src/game/world.c:365: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
	ld	a,c
	cp	a,#0x12
	jr	Z,00101$
	cp	a,#0x13
	jr	Z,00107$
	cp	a,#0x14
	jr	Z,00113$
	sub	a, #0x15
	jr	Z,00119$
	jr	00126$
;src/game/world.c:367: case REN:
00101$:
;src/game/world.c:368: if(trainList[i].heading==1) trainList[i].heading=2;
	ld	a, (hl)
	cp	a, #0x01
	jr	NZ,00105$
	ld	(hl), #0x02
	jr	00126$
00105$:
;src/game/world.c:369: else if(trainList[i].heading==3) trainList[i].heading=0;
	sub	a,#0x03
	jr	NZ,00126$
	ld	(hl),a
;src/game/world.c:370: break;
	jr	00126$
;src/game/world.c:372: case RES:
00107$:
;src/game/world.c:373: if(trainList[i].heading==1) trainList[i].heading=3;
	ld	a, (hl)
	cp	a, #0x01
	jr	NZ,00111$
	ld	(hl), #0x03
	jr	00126$
00111$:
;src/game/world.c:374: else if(trainList[i].heading==2) trainList[i].heading=0;
	sub	a,#0x02
	jr	NZ,00126$
	ld	(hl),a
;src/game/world.c:375: break;
	jr	00126$
;src/game/world.c:377: case RWN:
00113$:
;src/game/world.c:378: if(trainList[i].heading==0) trainList[i].heading=2;   
	ld	a, (hl)
	or	a, a
	jr	NZ,00117$
	ld	(hl), #0x02
	jr	00126$
00117$:
;src/game/world.c:379: else if(trainList[i].heading==3) trainList[i].heading=1;
	sub	a, #0x03
	jr	NZ,00126$
	ld	(hl), #0x01
;src/game/world.c:380: break;
	jr	00126$
;src/game/world.c:382: case RWS:
00119$:
;src/game/world.c:383: if(trainList[i].heading==0) trainList[i].heading=3;
	ld	a, (hl)
	or	a, a
	jr	NZ,00123$
	ld	(hl), #0x03
	jr	00126$
00123$:
;src/game/world.c:384: else if(trainList[i].heading==2) trainList[i].heading=1;
	sub	a, #0x02
	jr	NZ,00126$
	ld	(hl), #0x01
;src/game/world.c:386: }
00126$:
	pop	ix
	ret
;src/game/world.c:389: void setPixel(int nX, unsigned char nY, unsigned char nColor)
;	---------------------------------
; Function setPixel
; ---------------------------------
_setPixel::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/game/world.c:394: int nPixel = nX % 4;
	ld	hl, #0x0004
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__modsint
	pop	af
	pop	af
	ex	de,hl
;src/game/world.c:395: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
	ld	a, 6 (ix)
	rrca
	rrca
	rrca
	and	a, #0x1f
	ld	c,a
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0xc000
	add	hl, bc
	ld	a, 6 (ix)
	and	a, #0x07
	rlca
	rlca
	rlca
	and	a, #0xf8
	ld	b, a
	ld	c, #0x00
	add	hl, bc
	ld	c,4 (ix)
	ld	b,5 (ix)
	bit	7, b
	jr	Z,00128$
	inc	bc
	inc	bc
	inc	bc
00128$:
	sra	b
	rr	c
	sra	b
	rr	c
	add	hl, bc
;src/game/world.c:399: *pAddress &= 119;
	ld	c, (hl)
;src/game/world.c:401: if(nColor & 1)
	ld	a, 7 (ix)
	and	a, #0x01
	ld	-2 (ix), a
;src/game/world.c:403: if(nColor & 2)
	ld	a, 7 (ix)
	and	a, #0x02
	ld	-1 (ix), a
;src/game/world.c:397: if(nPixel == 0)
	ld	a, d
	or	a,e
	jr	NZ,00124$
;src/game/world.c:399: *pAddress &= 119;
	ld	a, c
	and	a, #0x77
	ld	(hl), a
;src/game/world.c:401: if(nColor & 1)
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00102$
;src/game/world.c:402: *pAddress |= 128;
	set	7, (hl)
	ld	a, (hl)
00102$:
;src/game/world.c:403: if(nColor & 2)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00126$
;src/game/world.c:404: *pAddress |= 8;
	set	3, (hl)
	ld	a, (hl)
	jr	00126$
00124$:
;src/game/world.c:406: else if(nPixel == 1)
	ld	a, e
	dec	a
	or	a, d
	jr	NZ,00121$
;src/game/world.c:408: *pAddress &= 187;
	ld	a, c
	and	a, #0xbb
	ld	(hl), a
;src/game/world.c:410: if(nColor & 1)
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00106$
;src/game/world.c:411: *pAddress |= 64;
	set	6, (hl)
	ld	a, (hl)
00106$:
;src/game/world.c:412: if(nColor & 2)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00126$
;src/game/world.c:413: *pAddress |= 4;
	set	2, (hl)
	ld	a, (hl)
	jr	00126$
00121$:
;src/game/world.c:415: else if(nPixel == 2)
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	NZ,00118$
;src/game/world.c:417: *pAddress &= 221;
	ld	a, c
	and	a, #0xdd
	ld	(hl), a
;src/game/world.c:419: if(nColor & 1)
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00110$
;src/game/world.c:420: *pAddress |= 32;
	set	5, (hl)
	ld	a, (hl)
00110$:
;src/game/world.c:421: if(nColor & 2)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00126$
;src/game/world.c:422: *pAddress |= 2;
	set	1, (hl)
	ld	a, (hl)
	jr	00126$
00118$:
;src/game/world.c:426: *pAddress &= 238;
	ld	a, c
	and	a, #0xee
	ld	(hl), a
;src/game/world.c:428: if(nColor & 1)
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00114$
;src/game/world.c:429: *pAddress |= 16;
	set	4, (hl)
	ld	a, (hl)
00114$:
;src/game/world.c:430: if(nColor & 2)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00126$
;src/game/world.c:431: *pAddress |= 1;
	set	0, (hl)
	ld	a, (hl)
00126$:
	ld	sp, ix
	pop	ix
	ret
;src/game/world.c:435: u8 isPixelBlack(int nX, unsigned char nY)
;	---------------------------------
; Function isPixelBlack
; ---------------------------------
_isPixelBlack::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game/world.c:438: int nPixel = nX % 4;
	ld	hl, #0x0004
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__modsint
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;src/game/world.c:441: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
	ld	a, 6 (ix)
	rrca
	rrca
	rrca
	and	a, #0x1f
	ld	e,a
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #0xc000
	add	hl, de
	ld	a, 6 (ix)
	and	a, #0x07
	rlca
	rlca
	rlca
	and	a, #0xf8
	ld	d, a
	ld	e, #0x00
	add	hl, de
	ld	e,4 (ix)
	ld	d,5 (ix)
	bit	7, d
	jr	Z,00118$
	inc	de
	inc	de
	inc	de
00118$:
	sra	d
	rr	e
	sra	d
	rr	e
	add	hl, de
;src/game/world.c:444: if(nPixel == 0 && !(*pAddress & 136)) 
	ld	a, b
	or	a,c
	jr	NZ,00113$
	ld	a, (hl)
	and	a, #0x88
	jr	NZ,00113$
;src/game/world.c:445: return 1;
	ld	l, #0x01
	jr	00116$
00113$:
;src/game/world.c:446: else if(nPixel == 1 && !(*pAddress & 68))
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00109$
	ld	a, (hl)
	and	a, #0x44
	jr	NZ,00109$
;src/game/world.c:447: return 1;
	ld	l, #0x01
	jr	00116$
00109$:
;src/game/world.c:448: else if(nPixel == 2 && !(*pAddress & 34))
	ld	a, c
	sub	a, #0x02
	or	a, b
	jr	NZ,00105$
	ld	a, (hl)
	and	a, #0x22
	jr	NZ,00105$
;src/game/world.c:449: return 1;
	ld	l, #0x01
	jr	00116$
00105$:
;src/game/world.c:450: else if(nPixel == 3 && !(*pAddress & 17))
	ld	a, c
	sub	a, #0x03
	or	a, b
	jr	NZ,00110$
	ld	a, (hl)
	and	a, #0x11
	jr	NZ,00110$
;src/game/world.c:451: return 1;
	ld	l, #0x01
	jr	00116$
00110$:
;src/game/world.c:453: return 0;
	ld	l, #0x00
00116$:
	pop	ix
	ret
;src/game/world.c:456: void drawTrains(u8 x_, u8 y_)
;	---------------------------------
; Function drawTrains
; ---------------------------------
_drawTrains::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-13
	add	hl, sp
	ld	sp, hl
;src/game/world.c:461: setPixel(50, 50, 0);
	ld	hl, #0x0032
	push	hl
	ld	l, #0x32
	push	hl
	call	_setPixel
	pop	af
;src/game/world.c:462: isPixelBlack(50,50);
	ld	h,#0x32
	ex	(sp),hl
	inc	sp
	ld	hl, #0x0032
	push	hl
	call	_isPixelBlack
	pop	af
	inc	sp
;src/game/world.c:465: for(i=0; i<nbTrainList; i++)
	ld	-13 (ix), #0x00
00138$:
	ld	hl, #_nbTrainList
	ld	a, -13 (ix)
	sub	a, (hl)
	jp	NC, 00140$
;src/game/world.c:468: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
	ld	c,-13 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -10 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -9 (ix)
	ld	b, a
	push	bc
	pop	iy
	ld	e, 4 (iy)
	ld	d, e
	ld	l, #0x00
	ld	a, 4 (ix)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, d
	sub	a, -8 (ix)
	ld	-2 (ix), a
	ld	a, l
	sbc	a, -7 (ix)
	ld	-1 (ix), a
	ld	a, 5 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -2 (ix)
	sub	a, #0x14
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00102$
	ld	l, c
	ld	h, b
	ld	bc, #0x0005
	add	hl, bc
	ld	c, (hl)
	ld	l, c
	ld	h, #0x00
	ld	a, l
	sub	a, -4 (ix)
	ld	l, a
	ld	a, h
	sbc	a, -3 (ix)
	ld	b, a
	ld	a, l
	sub	a, #0x0c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00102$
	bit	7, -1 (ix)
	jr	NZ,00102$
	bit	7, b
	jr	NZ,00102$
;src/game/world.c:470: drawTile(x_,y_,trainList[i].posX-x_,trainList[i].posY-y_);
	ld	a, c
	sub	a, 5 (ix)
	ld	d, a
	ld	a, e
	sub	a, 4 (ix)
	ld	e,a
	push	de
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
00102$:
;src/game/world.c:473: switch(trainList[i].heading)
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -10 (ix)
	ld	e, a
	ld	a, 1 (iy)
	adc	a, -9 (ix)
	ld	d, a
	push	de
	pop	iy
	ld	c, 6 (iy)
;src/game/world.c:476: drawTile(x_,y_,trainList[i].posX-x_+1,trainList[i].posY-y_);
	ld	hl, #0x0005
	add	hl,de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	hl, #0x0004
	add	hl,de
	ld	-6 (ix), l
	ld	-5 (ix), h
;src/game/world.c:473: switch(trainList[i].heading)
	ld	a, c
	or	a, a
	jr	Z,00106$
	ld	a, c
	dec	a
	jr	Z,00107$
	ld	a,c
	cp	a,#0x02
	jr	Z,00108$
	sub	a, #0x03
	jr	Z,00109$
	jp	00110$
;src/game/world.c:475: case 0:
00106$:
;src/game/world.c:476: drawTile(x_,y_,trainList[i].posX-x_+1,trainList[i].posY-y_);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	sub	a, 5 (ix)
	ld	c, a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	sub	a, 4 (ix)
	ld	b, a
	inc	b
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/world.c:477: break;
	jr	00110$
;src/game/world.c:478: case 1:
00107$:
;src/game/world.c:479: drawTile(x_,y_,trainList[i].posX-x_-1,trainList[i].posY-y_);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	sub	a, 5 (ix)
	ld	d, a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	sub	a, 4 (ix)
	ld	b, a
	dec	b
	ld	e, b
	push	de
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/world.c:480: break;
	jr	00110$
;src/game/world.c:481: case 2:
00108$:
;src/game/world.c:482: drawTile(x_,y_,trainList[i].posX-x_,trainList[i].posY-y_-1);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	sub	a, 5 (ix)
	ld	d, a
	dec	d
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	sub	a, 4 (ix)
	ld	e,a
	push	de
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/world.c:483: break;
	jr	00110$
;src/game/world.c:484: case 3:
00109$:
;src/game/world.c:485: drawTile(x_,y_,trainList[i].posX-x_,trainList[i].posY-y_+1);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	sub	a, 5 (ix)
	ld	d, a
	inc	d
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	sub	a, 4 (ix)
	ld	e,a
	push	de
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/world.c:488: }
00110$:
;src/game/world.c:492: switch(trainList[i].heading)
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -10 (ix)
	ld	e, a
	ld	a, 1 (iy)
	adc	a, -9 (ix)
	ld	d, a
	push	de
	pop	iy
	ld	c, 6 (iy)
;src/game/world.c:495: if(trainList[i].posX < WIDTH && p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS )
	ld	hl, #0x0004
	add	hl,de
	ld	-6 (ix), l
	ld	-5 (ix), h
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
;src/game/world.c:492: switch(trainList[i].heading)
	ld	a, c
	or	a, a
	jr	Z,00111$
	ld	a, c
	dec	a
	jr	Z,00115$
	ld	a,c
	cp	a,#0x02
	jr	Z,00119$
	sub	a, #0x03
	jp	Z,00123$
	jp	00127$
;src/game/world.c:494: case 0: // Right
00111$:
;src/game/world.c:495: if(trainList[i].posX < WIDTH && p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS )
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c, (hl)
	ld	a, c
	sub	a, #0x50
	jp	NC, 00127$
	ld	a, (de)
	ld	e,a
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, c
	ld	d, #0x00
	add	hl, de
	ld	de,#_p_world+1
	add	hl,de
	ld	a, (hl)
	sub	a, #0x0a
	jp	C, 00127$
;src/game/world.c:496: trainList[i].posX++;
	inc	c
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), c
;src/game/world.c:497: break;
	jp	00127$
;src/game/world.c:498: case 1: // Left
00115$:
;src/game/world.c:499: if(trainList[i].posX >0 && p_world[trainList[i].posY*WIDTH+trainList[i].posX-1] >= SSNS )
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jp	Z, 00127$
	ld	a, (de)
	ld	e,a
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, c
	ld	d, #0x00
	add	hl, de
	ld	de,#_p_world-1
	add	hl,de
	ld	a, (hl)
	sub	a, #0x0a
	jr	C,00127$
;src/game/world.c:500: trainList[i].posX--;
	dec	c
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), c
;src/game/world.c:501: break;
	jr	00127$
;src/game/world.c:502: case 2: // Up
00119$:
;src/game/world.c:503: if(trainList[i].posY > 0 && p_world[(trainList[i].posY-1)*WIDTH+trainList[i].posX] >= SSNS )
	ld	a, (de)
	ld	-2 (ix), a
	or	a, a
	jr	Z,00127$
	ld	c, -2 (ix)
	ld	b, #0x00
	dec	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	bc, #_p_world
	add	hl, bc
	ld	a, (hl)
	sub	a, #0x0a
	jr	C,00127$
;src/game/world.c:504: trainList[i].posY--;
	ld	c, -2 (ix)
	dec	c
	ld	a, c
	ld	(de), a
;src/game/world.c:505: break;
	jr	00127$
;src/game/world.c:506: case 3: // Down
00123$:
;src/game/world.c:507: if(trainList[i].posY < HEIGHT && p_world[(trainList[i].posY+1)*WIDTH+trainList[i].posX] >= SSNS)
	ld	a, (de)
	ld	-2 (ix), a
	sub	a, #0x30
	jr	NC,00127$
	ld	c, -2 (ix)
	ld	b, #0x00
	inc	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	bc, #_p_world
	add	hl, bc
	ld	a, (hl)
	sub	a, #0x0a
	jr	C,00127$
;src/game/world.c:508: trainList[i].posY++;
	ld	a, -2 (ix)
	inc	a
	ld	(de), a
;src/game/world.c:510: }
00127$:
;src/game/world.c:512: setTrainHeading(i);
	ld	a, -13 (ix)
	push	af
	inc	sp
	call	_setTrainHeading
	inc	sp
;src/game/world.c:515: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 ) 
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, 1 (iy)
	adc	a, -9 (ix)
	ld	-5 (ix), a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-2 (ix), a
	ld	b, #0x00
	sub	a, -8 (ix)
	ld	-8 (ix), a
	ld	a, b
	sbc	a, -7 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sub	a, #0x14
	ld	a, -7 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00139$
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	c, (hl)
	ld	a, c
	ld	e, #0x00
	sub	a, -4 (ix)
	ld	l, a
	ld	a, e
	sbc	a, -3 (ix)
	ld	h, a
	ld	a, l
	sub	a, #0x0c
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00139$
	bit	7, -7 (ix)
	jp	NZ, 00139$
	bit	7, h
	jp	NZ, 00139$
;src/game/world.c:518: p_video = cpct_getScreenPtr(SCR_VMEM, (trainList[i].posX-x_)*TILESIZE_W+trainList[i].shiftX, (trainList[i].posY-y_)*TILESIZE_H+trainList[i].shiftY);
	ld	a, c
	sub	a, 5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	ld	c, a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	e, (hl)
	ld	a, c
	add	a, e
	ld	-4 (ix), a
	ld	a, -2 (ix)
	sub	a, 4 (ix)
	add	a, a
	add	a, a
	ld	-2 (ix), a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	de, #0x0007
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -2 (ix)
	add	a, -6 (ix)
	ld	-6 (ix), a
	ld	h, -4 (ix)
	ld	l, -6 (ix)
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	-11 (ix), h
	ld	-12 (ix), l
;src/game/world.c:520: if(trainList[i].heading <= 1) 
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, 1 (iy)
	adc	a, -9 (ix)
	ld	-5 (ix), a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	de, #0x0006
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
;src/game/world.c:521: cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
;src/game/world.c:520: if(trainList[i].heading <= 1) 
	ld	a, #0x01
	sub	a, -6 (ix)
	jr	C,00129$
;src/game/world.c:521: cpct_drawSpriteMaskedAlignedTable(train_h, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
	ld	hl, #_g_masktable
	push	hl
	ld	hl, #0x1004
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	hl, #_train_h
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
	jr	00139$
00129$:
;src/game/world.c:523: cpct_drawSpriteMaskedAlignedTable(train_v, p_video, TILESIZE_W, TILESIZE_H, g_masktable);
	ld	hl, #_g_masktable
	push	hl
	ld	hl, #0x1004
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	hl, #_train_v
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
00139$:
;src/game/world.c:465: for(i=0; i<nbTrainList; i++)
	inc	-13 (ix)
	jp	00138$
00140$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
