;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module world
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprintf
	.globl _cpct_setSeed_mxor
	.globl _cpct_getRandom_mxor_u16
	.globl _cpct_getRandom_mxor_u8
	.globl _cpct_getScreenPtr
	.globl _cpct_count2VSYNC
	.globl _cpct_drawStringM1
	.globl _cpct_drawSprite
	.globl _cpct_getBit
	.globl _drawCursor
	.globl _patternTile
	.globl _generateWorld
	.globl _drawTile
	.globl _drawScrolls
	.globl _drawWorld
	.globl _setTrainHeading
	.globl _setPixel
	.globl _isPixelBlack
	.globl _drawNewTrain
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
;src/game/world.c:5: void drawCursor(u8 x, u8 y)
;	---------------------------------
; Function drawCursor
; ---------------------------------
_drawCursor::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;src/game/world.c:8: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
	ld	a, 5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	ld	-5 (ix), a
	ld	a, 4 (ix)
	add	a, a
	add	a, a
	ld	b, a
	ld	a, -5 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
;src/game/world.c:11: switch(CURSOR_MODE)
	ld	a, #0x11
	ld	iy, #_CURSOR_MODE
	sub	a, 0 (iy)
	jp	C, 00118$
	ld	e, 0 (iy)
	ld	d, #0x00
	ld	hl, #00126$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00126$:
	jp	00118$
	jp	00118$
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
;src/game/world.c:16: case T_SSNS:
00102$:
;src/game/world.c:17: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_small_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:18: break;
	jp	00118$
;src/game/world.c:19: case T_SSEW:
00103$:
;src/game/world.c:20: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_small_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:21: break;
	jp	00118$
;src/game/world.c:22: case T_SMNS:
00104$:
;src/game/world.c:23: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_medium_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:24: break;
	jp	00118$
;src/game/world.c:25: case T_SMEW:
00105$:
;src/game/world.c:26: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_medium_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:27: break;
	jp	00118$
;src/game/world.c:28: case T_SLNS:
00106$:
;src/game/world.c:29: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_large_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:30: break;
	jp	00118$
;src/game/world.c:31: case T_SLEW:
00107$:
;src/game/world.c:32: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_large_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:33: break;
	jp	00118$
;src/game/world.c:34: case T_REW:
00108$:
;src/game/world.c:35: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:36: break;
	jp	00118$
;src/game/world.c:37: case T_RNS:
00109$:
;src/game/world.c:38: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:39: break;
	jr	00118$
;src/game/world.c:40: case T_REN:
00110$:
;src/game/world.c:41: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_en
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:42: break;
	jr	00118$
;src/game/world.c:43: case T_RES:
00111$:
;src/game/world.c:44: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_es
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:45: break;
	jr	00118$
;src/game/world.c:46: case T_RWN:
00112$:
;src/game/world.c:47: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_wn
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:48: break;
	jr	00118$
;src/game/world.c:49: case T_RWS:
00113$:
;src/game/world.c:50: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ws
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:51: break;
	jr	00118$
;src/game/world.c:52: case T_REWN:
00114$:
;src/game/world.c:53: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ew_n
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:54: break;
	jr	00118$
;src/game/world.c:55: case T_REWS:
00115$:
;src/game/world.c:56: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ew_s
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:57: break;
	jr	00118$
;src/game/world.c:58: case T_RNSE:
00116$:
;src/game/world.c:59: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ns_e
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:60: break;
	jr	00118$
;src/game/world.c:61: case T_RNSW:
00117$:
;src/game/world.c:62: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ns_w
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:64: }
00118$:
;src/game/world.c:66: setPixel(x*TILESIZE_H, y*TILESIZE_H, 0);
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	a, -5 (ix)
	push	af
	inc	sp
	push	de
	call	_setPixel
	pop	af
	pop	af
	pop	de
;src/game/world.c:67: setPixel(x*TILESIZE_H+1, y*TILESIZE_H, 0);
	ld	hl, #0x0001
	add	hl,de
	ld	-4 (ix), l
	ld	-3 (ix), h
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	de
;src/game/world.c:68: setPixel(x*TILESIZE_H, y*TILESIZE_H+1, 0);
	ld	b, -5 (ix)
	inc	b
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_setPixel
	pop	af
	pop	af
	pop	de
	pop	bc
;src/game/world.c:69: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+1, 0);
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	de
	pop	bc
;src/game/world.c:71: setPixel(x*TILESIZE_H+15, y*TILESIZE_H, 0);
	ld	hl, #0x000f
	add	hl,de
	ld	-2 (ix), l
	ld	-1 (ix), h
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	de
	pop	bc
;src/game/world.c:72: setPixel(x*TILESIZE_H+14, y*TILESIZE_H, 0);
	ld	hl, #0x000e
	add	hl,de
	ex	(sp), hl
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	de
	pop	bc
;src/game/world.c:73: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+1, 0);
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	de
	pop	bc
;src/game/world.c:74: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+1, 0);
	push	de
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	de
;src/game/world.c:76: setPixel(x*TILESIZE_H, y*TILESIZE_H+15, 0);
	ld	a, -5 (ix)
	add	a, #0x0f
	ld	b, a
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_setPixel
	pop	af
	pop	af
	pop	de
	pop	bc
;src/game/world.c:77: setPixel(x*TILESIZE_H, y*TILESIZE_H+14, 0);
	ld	a, -5 (ix)
	add	a, #0x0e
	ld	c, a
	push	bc
	xor	a, a
	ld	b, a
	push	bc
	push	de
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:78: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+14, 0);
	push	bc
	xor	a, a
	ld	b, a
	push	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:79: setPixel(x*TILESIZE_H+1, y*TILESIZE_H+15, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:81: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+15, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:82: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+15, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:83: setPixel(x*TILESIZE_H+15, y*TILESIZE_H+14, 0);
	push	bc
	xor	a, a
	ld	b, a
	push	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:84: setPixel(x*TILESIZE_H+14, y*TILESIZE_H+14, 0);
	xor	a, a
	ld	b, a
	push	bc
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_setPixel
	ld	sp,ix
	pop	ix
	ret
;src/game/world.c:87: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
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
;src/game/world.c:92: for(iy=0; iy<nBitsY; iy++)
	ld	a, 4 (ix)
	sub	a, #0x08
	jr	NZ,00153$
	ld	a,#0x01
	jr	00154$
00153$:
	xor	a,a
00154$:
	ld	-9 (ix), a
	ld	a, 4 (ix)
	sub	a, #0x02
	jr	NZ,00155$
	ld	a,#0x01
	jr	00156$
00155$:
	xor	a,a
00156$:
	ld	-8 (ix), a
	ld	e, #0x00
00115$:
	ld	a, e
	sub	a, 8 (ix)
	jp	NC, 00117$
;src/game/world.c:94: for(ix=0; ix<nBitsX; ix++)
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
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	d, #0x00
00112$:
	ld	a, d
	sub	a, 7 (ix)
	jr	NC,00116$
;src/game/world.c:96: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
	ld	-3 (ix), d
	ld	-2 (ix), #0x00
	ld	a, -3 (ix)
	add	a, -5 (ix)
	ld	c, a
	ld	a, -2 (ix)
	adc	a, -4 (ix)
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
	add	a, -3 (ix)
	ld	c, a
	ld	a, -6 (ix)
	adc	a, -2 (ix)
	ld	b,a
	xor	a, #0x80
	sub	a, #0x8f
	jr	NC,00113$
;src/game/world.c:98: if(tileType == FOREST)
	ld	a, -9 (ix)
	or	a, a
	jr	Z,00104$
;src/game/world.c:99: p_world[index+iy*WIDTH+ix] = tileType;
	ld	hl, #_p_world
	add	hl, bc
	ld	a, 4 (ix)
	ld	(hl), a
	jr	00113$
00104$:
;src/game/world.c:100: else if(tileType==DWELLINGS1)
	ld	a, -8 (ix)
	or	a, a
	jr	Z,00113$
;src/game/world.c:101: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandom_mxor_u8 ()%3+2;
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
;src/game/world.c:94: for(ix=0; ix<nBitsX; ix++)
	inc	d
	jr	00112$
00116$:
;src/game/world.c:92: for(iy=0; iy<nBitsY; iy++)
	inc	e
	jp	00115$
00117$:
	ld	sp, ix
	pop	ix
	ret
;src/game/world.c:108: void generateWorld()
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
;src/game/world.c:115: CURSOR_MODE = NONE;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x00
;src/game/world.c:118: cpct_setSeed_mxor ((u32)cpct_count2VSYNC());
	call	_cpct_count2VSYNC
	ld	de,#0x0000
	call	_cpct_setSeed_mxor
;src/game/world.c:122: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	ld	bc, #0x0000
00119$:
;src/game/world.c:124: p_world[iy] =  cpct_getRandom_mxor_u16()%2;
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
;src/game/world.c:122: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	inc	bc
	ld	a, b
	xor	a, #0x80
	sub	a, #0x8f
	jr	C,00119$
;src/game/world.c:129: for(ix=0; ix<NBFOREST; ix++)
	ld	hl, #0x0002
	add	hl, sp
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	bc, #0x0000
00121$:
;src/game/world.c:131: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
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
;src/game/world.c:137: p_forest[1] = 0b11000111;
	ld	a, -8 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
;src/game/world.c:138: p_forest[2] = 0b11011110;
	ld	a, -8 (ix)
	add	a, #0x02
	ld	-10 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
;src/game/world.c:139: p_forest[3] = 0b01111110;
	ld	a, -8 (ix)
	add	a, #0x03
	ld	-16 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
;src/game/world.c:140: p_forest[4] = 0b11111110; 
	ld	a, -8 (ix)
	add	a, #0x04
	ld	-14 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
;src/game/world.c:141: p_forest[5] = 0b01111111;
	ld	a, -8 (ix)
	add	a, #0x05
	ld	-4 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;src/game/world.c:142: p_forest[6] = 0b11101111;
	ld	a, -8 (ix)
	add	a, #0x06
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;src/game/world.c:143: p_forest[7] = 0b11001111;
	ld	a, -8 (ix)
	add	a, #0x07
	ld	-12 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
;src/game/world.c:133: switch(cpct_getRandom_mxor_u16()%4)
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
;src/game/world.c:135: case 0:
00102$:
;src/game/world.c:136: p_forest[0] = 0b10000100;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0x84
;src/game/world.c:137: p_forest[1] = 0b11000111;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0xc7
;src/game/world.c:138: p_forest[2] = 0b11011110;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0xde
;src/game/world.c:139: p_forest[3] = 0b01111110;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl), #0x7e
;src/game/world.c:140: p_forest[4] = 0b11111110; 
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl), #0xfe
;src/game/world.c:141: p_forest[5] = 0b01111111;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x7f
;src/game/world.c:142: p_forest[6] = 0b11101111;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0xef
;src/game/world.c:143: p_forest[7] = 0b11001111;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), #0xcf
;src/game/world.c:144: break;
	jp	00106$
;src/game/world.c:145: case 1:
00103$:
;src/game/world.c:146: p_forest[0] = 0b00001100;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0x0c
;src/game/world.c:147: p_forest[1] = 0b11111000;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0xf8
;src/game/world.c:148: p_forest[2] = 0b00111111;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x3f
;src/game/world.c:149: p_forest[3] = 0b01111110;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl), #0x7e
;src/game/world.c:150: p_forest[4] = 0b11111110; 
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl), #0xfe
;src/game/world.c:151: p_forest[5] = 0b01011111;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x5f
;src/game/world.c:152: p_forest[6] = 0b11001111;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0xcf
;src/game/world.c:153: p_forest[7] = 0b10001100;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), #0x8c
;src/game/world.c:154: break;
	jp	00106$
;src/game/world.c:155: case 2:
00104$:
;src/game/world.c:156: p_forest[0] = 0b00110000;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0x30
;src/game/world.c:157: p_forest[1] = 0b11110100;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0xf4
;src/game/world.c:158: p_forest[2] = 0b11111111;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0xff
;src/game/world.c:159: p_forest[3] = 0b11111111;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl), #0xff
;src/game/world.c:160: p_forest[4] = 0b01111100;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl), #0x7c
;src/game/world.c:161: p_forest[5] = 0b01111110;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x7e
;src/game/world.c:162: p_forest[6] = 0b00111110;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x3e
;src/game/world.c:163: p_forest[7] = 0b00011000;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), #0x18
;src/game/world.c:164: break;
	jr	00106$
;src/game/world.c:165: case 3:
00105$:
;src/game/world.c:166: p_forest[0] = 0b11000000; 
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl), #0xc0
;src/game/world.c:167: p_forest[1] = 0b11100111;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0xe7
;src/game/world.c:168: p_forest[2] = 0b01111110;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x7e
;src/game/world.c:169: p_forest[3] = 0b01111110;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl), #0x7e
;src/game/world.c:170: p_forest[4] = 0b11111110;
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl), #0xfe
;src/game/world.c:171: p_forest[5] = 0b11111100;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0xfc
;src/game/world.c:172: p_forest[6] = 0b01111000;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x78
;src/game/world.c:173: p_forest[7] = 0b00110000;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), #0x30
;src/game/world.c:175: }
00106$:
;src/game/world.c:176: patternTile(FOREST, iy, 8, 8, p_forest);
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
;src/game/world.c:129: for(ix=0; ix<NBFOREST; ix++)
	inc	bc
	ld	a, c
	sub	a, #0x32
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00121$
;src/game/world.c:182: for(ix=0; ix<NBFARM; ix++)
	ld	bc, #0x003c
00125$:
;src/game/world.c:184: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT)%(WIDTH*HEIGHT);
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
;src/game/world.c:185: p_world[iy] = cpct_rand()%2+5;
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
;src/game/world.c:182: for(ix=0; ix<NBFARM; ix++)
	ld	a, b
	or	a,c
	jr	NZ,00125$
;src/game/world.c:190: for(ix=0; ix<NBURBAN; ix++)
	ld	bc, #0x0014
00128$:
;src/game/world.c:192: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	de, #0x0f00
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
;src/game/world.c:193: p_world[iy] = cpct_rand()%3+2;
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
;src/game/world.c:190: for(ix=0; ix<NBURBAN; ix++)
	ld	a, b
	or	a,c
	jr	NZ,00128$
;src/game/world.c:196: for(ix=0; ix<NBURBAN; ix++)
	ld	hl, #0x0000
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	-18 (ix), #0x00
	ld	-17 (ix), #0x00
00129$:
;src/game/world.c:198: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
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
;src/game/world.c:200: switch(cpct_rand()%6)
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
;src/game/world.c:204: p_cities[1] = 0b01000110; // 01100010;
	ld	hl, #0x0001
	add	hl,bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;src/game/world.c:200: switch(cpct_rand()%6)
	ld	d, #0x00
	ld	hl, #00211$
	add	hl, de
	add	hl, de
;src/game/world.c:202: case 0:
	jp	(hl)
00211$:
	jr	00110$
	jr	00111$
	jr	00112$
	jr	00113$
	jr	00114$
	jr	00115$
00110$:
;src/game/world.c:203: p_cities[0] = 0b01110010; // 01001110;
	ld	a, #0x72
	ld	(bc), a
;src/game/world.c:204: p_cities[1] = 0b01000110; // 01100010;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x46
;src/game/world.c:205: break;
	jr	00116$
;src/game/world.c:207: case 1:
00111$:
;src/game/world.c:208: p_cities[0] = 0b01100000; // 00000110;
	ld	a, #0x60
	ld	(bc), a
;src/game/world.c:209: p_cities[1] = 0b00000110; // 01100000;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x06
;src/game/world.c:210: break;
	jr	00116$
;src/game/world.c:212: case 2:
00112$:
;src/game/world.c:213: p_cities[0] = 0b00010000; // 00001000;
	ld	a, #0x10
	ld	(bc), a
;src/game/world.c:214: p_cities[1] = 0b00000110; // 01100000;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x06
;src/game/world.c:215: break;
	jr	00116$
;src/game/world.c:217: case 3:
00113$:
;src/game/world.c:218: p_cities[0] = 0b11000000; // 00000011;
	ld	a, #0xc0
	ld	(bc), a
;src/game/world.c:219: p_cities[1] = 0b00110001; // 10001100;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x31
;src/game/world.c:220: break;
	jr	00116$
;src/game/world.c:222: case 4:
00114$:
;src/game/world.c:223: p_cities[0] = 0b11000100; // 00100011;
	ld	a, #0xc4
	ld	(bc), a
;src/game/world.c:224: p_cities[1] = 0b00001110; // 01110000;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x0e
;src/game/world.c:225: break;
	jr	00116$
;src/game/world.c:227: case 5:
00115$:
;src/game/world.c:228: p_cities[0] = 0b01000000; // 00000010;
	ld	a, #0x40
	ld	(bc), a
;src/game/world.c:229: p_cities[1] = 0b01001110; // 01110010;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #0x4e
;src/game/world.c:231: }
00116$:
;src/game/world.c:233: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
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
;src/game/world.c:196: for(ix=0; ix<NBURBAN; ix++)
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
;src/game/world.c:238: for(ix=0; ix<NBLIVESTOCK; ix++)
	ld	bc, #0x0013
00133$:
;src/game/world.c:240: iy = cpct_getRandom_mxor_u16()%(WIDTH*HEIGHT);
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	de, #0x0f00
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
;src/game/world.c:241: p_world[iy] = LIVESTOCK;
	ld	de, #_p_world
	add	hl, de
	ld	(hl), #0x09
	dec	bc
;src/game/world.c:238: for(ix=0; ix<NBLIVESTOCK; ix++)
	ld	a, b
	or	a,c
	jr	NZ,00133$
	ld	sp, ix
	pop	ix
	ret
;src/game/world.c:245: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
;	---------------------------------
; Function drawTile
; ---------------------------------
_drawTile::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game/world.c:248: int adress = (y_+iy)*WIDTH+x_+ix;
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
;src/game/world.c:250: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
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
;src/game/world.c:252: switch(p_world[adress])
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
;src/game/world.c:254: case GRASS1:
00101$:
;src/game/world.c:255: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_grass1
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:256: break;
	jp	00128$
;src/game/world.c:257: case GRASS2:
00102$:
;src/game/world.c:258: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_grass2
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:259: break;
	jp	00128$
;src/game/world.c:260: case DWELLINGS1:
00103$:
;src/game/world.c:261: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_dwellings1
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:262: break;
	jp	00128$
;src/game/world.c:263: case DWELLINGS2:
00104$:
;src/game/world.c:264: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_dwellings2
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:265: break;
	jp	00128$
;src/game/world.c:266: case DWELLINGS3:
00105$:
;src/game/world.c:267: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_dwellings3
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:268: break;
	jp	00128$
;src/game/world.c:269: case FARM1:
00106$:
;src/game/world.c:270: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_farm1
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:271: break;
	jp	00128$
;src/game/world.c:272: case FARM2:
00107$:
;src/game/world.c:273: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_farm2
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:274: break;
	jp	00128$
;src/game/world.c:275: case WATER:
00108$:
;src/game/world.c:276: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_water
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:277: break;
	jp	00128$
;src/game/world.c:278: case FOREST:
00109$:
;src/game/world.c:279: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_forest
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:280: break;
	jp	00128$
;src/game/world.c:281: case LIVESTOCK:
00110$:
;src/game/world.c:282: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_livestock
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:283: break;
	jp	00128$
;src/game/world.c:284: case SSNS:
00111$:
;src/game/world.c:285: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_small_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:286: break;
	jp	00128$
;src/game/world.c:287: case SSEW:
00112$:
;src/game/world.c:288: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_small_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:289: break;
	jp	00128$
;src/game/world.c:290: case SMNS:
00113$:
;src/game/world.c:291: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_medium_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:292: break;
	jp	00128$
;src/game/world.c:293: case SMEW:
00114$:
;src/game/world.c:294: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_medium_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:295: break;
	jp	00128$
;src/game/world.c:296: case SLNS:
00115$:
;src/game/world.c:297: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_large_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:298: break;
	jp	00128$
;src/game/world.c:299: case SLEW:
00116$:
;src/game/world.c:300: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_station_large_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:301: break;
	jp	00128$
;src/game/world.c:302: case REW:
00117$:
;src/game/world.c:303: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ew
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:304: break;
	jp	00128$
;src/game/world.c:305: case RNS:
00118$:
;src/game/world.c:306: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ns
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:307: break;
	jr	00128$
;src/game/world.c:308: case REN:
00119$:
;src/game/world.c:309: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_en
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:310: break;
	jr	00128$
;src/game/world.c:311: case RES:
00120$:
;src/game/world.c:312: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_es
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:313: break;
	jr	00128$
;src/game/world.c:314: case RWN:
00121$:
;src/game/world.c:315: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_wn
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:316: break;
	jr	00128$
;src/game/world.c:317: case RWS:
00122$:
;src/game/world.c:318: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ws
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:319: break;
	jr	00128$
;src/game/world.c:320: case REWN:
00123$:
;src/game/world.c:321: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ew_n
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:322: break;
	jr	00128$
;src/game/world.c:323: case REWS:
00124$:
;src/game/world.c:324: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ew_s
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:325: break;
	jr	00128$
;src/game/world.c:326: case RNSE:
00125$:
;src/game/world.c:327: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ns_e
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:328: break;
	jr	00128$
;src/game/world.c:329: case RNSW:
00126$:
;src/game/world.c:330: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
	ld	hl, #0x1004
	push	hl
	push	bc
	ld	hl, #_rail_ns_w
	push	hl
	call	_cpct_drawSprite
;src/game/world.c:332: }
00128$:
	pop	ix
	ret
;src/game/world.c:335: void drawScrolls(u8 x, u8 y)
;	---------------------------------
; Function drawScrolls
; ---------------------------------
_drawScrolls::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/game/world.c:337: int scrollx = x* (WIDTH-TILESIZE_W)*4/(WIDTH-NBTILE_W);
	ld	c, 4 (ix)
	ld	b, #0x00
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
	add	hl, hl
	add	hl, hl
	ld	bc, #0x003c
	push	bc
	push	hl
	call	__divsint
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;src/game/world.c:338: int scrolly = y* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
	ld	e,5 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	ld	de, #0x0024
	push	de
	push	hl
	call	__divsint
	pop	af
	pop	af
	pop	bc
	inc	sp
	inc	sp
	push	hl
;src/game/world.c:340: setPixel(scrollx, 1, 0);
	push	bc
	ld	hl, #0x0001
	push	hl
	push	bc
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:341: setPixel(scrollx+1, 0, 0);
	ld	e, c
	ld	d, b
	inc	de
	push	bc
	push	de
	ld	hl, #0x0000
	push	hl
	push	de
	call	_setPixel
	pop	af
	pop	af
	pop	de
	push	de
	ld	hl, #0x0001
	push	hl
	push	de
	call	_setPixel
	pop	af
	pop	af
	pop	de
	ld	hl, #0x0002
	push	hl
	push	de
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:345: setPixel(scrollx+15, 1, 0);
	ld	hl, #0x000f
	add	hl, bc
	push	bc
	ld	de, #0x0001
	push	de
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:346: setPixel(scrollx+14, 0, 0);
	ld	hl, #0x000e
	add	hl, bc
	push	hl
	ld	bc, #0x0000
	push	bc
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	hl
;src/game/world.c:347: setPixel(scrollx+14, 1, 0);
	push	hl
	ld	bc, #0x0001
	push	bc
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	hl
;src/game/world.c:348: setPixel(scrollx+14, 2, 0);
	ld	bc, #0x0002
	push	bc
	push	hl
	call	_setPixel
	pop	af
	pop	af
;src/game/world.c:350: setPixel(1, scrolly, 0);
	ld	b, -2 (ix)
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0x0001
	push	hl
	call	_setPixel
	pop	af
	pop	af
;src/game/world.c:351: setPixel(0, scrolly+1, 0);
	ld	c, -2 (ix)
	ld	b, c
	inc	b
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0x0000
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:352: setPixel(1, scrolly+1, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0x0001
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:353: setPixel(2, scrolly+1, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0x0002
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:355: setPixel(1, scrolly+15, 0);
	ld	a, c
	add	a, #0x0f
	ld	b, a
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0x0001
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:356: setPixel(0, scrolly+14, 0);
	ld	a, c
	add	a, #0x0e
	ld	b, a
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0x0000
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:357: setPixel(1, scrolly+14, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0x0001
	push	hl
	call	_setPixel
	pop	af
	pop	af
	pop	bc
;src/game/world.c:358: setPixel(2, scrolly+14, 0);
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0x0002
	push	hl
	call	_setPixel
	ld	sp,ix
	pop	ix
	ret
;src/game/world.c:375: void drawWorld(u8 x_, u8 y_)
;	---------------------------------
; Function drawWorld
; ---------------------------------
_drawWorld::
;src/game/world.c:380: for(iy=0; iy<NBTILE_H;iy++)
	ld	c, #0x00
;src/game/world.c:382: for(ix=0; ix<NBTILE_W;ix++)
00109$:
	ld	b, #0x00
00103$:
;src/game/world.c:384: drawTile(x_, y_, ix, iy);
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
;src/game/world.c:382: for(ix=0; ix<NBTILE_W;ix++)
	inc	b
	ld	a, b
	sub	a, #0x14
	jr	C,00103$
;src/game/world.c:380: for(iy=0; iy<NBTILE_H;iy++)
	inc	c
	ld	a, c
	sub	a, #0x0c
	jr	C,00109$
;src/game/world.c:388: drawScrolls(x_, y_);
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
;src/game/world.c:394: void setTrainHeading(u8 i)
;	---------------------------------
; Function setTrainHeading
; ---------------------------------
_setTrainHeading::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game/world.c:398: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
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
;src/game/world.c:401: if(trainList[i].heading==1) trainList[i].heading=2;
	ld	hl, #0x0006
	add	hl, de
;src/game/world.c:398: switch(p_world[trainList[i].posY*WIDTH+trainList[i].posX])
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
;src/game/world.c:400: case REN:
00101$:
;src/game/world.c:401: if(trainList[i].heading==1) trainList[i].heading=2;
	ld	a, (hl)
	cp	a, #0x01
	jr	NZ,00105$
	ld	(hl), #0x02
	jr	00126$
00105$:
;src/game/world.c:402: else if(trainList[i].heading==3) trainList[i].heading=0;
	sub	a,#0x03
	jr	NZ,00126$
	ld	(hl),a
;src/game/world.c:403: break;
	jr	00126$
;src/game/world.c:405: case RES:
00107$:
;src/game/world.c:406: if(trainList[i].heading==1) trainList[i].heading=3;
	ld	a, (hl)
	cp	a, #0x01
	jr	NZ,00111$
	ld	(hl), #0x03
	jr	00126$
00111$:
;src/game/world.c:407: else if(trainList[i].heading==2) trainList[i].heading=0;
	sub	a,#0x02
	jr	NZ,00126$
	ld	(hl),a
;src/game/world.c:408: break;
	jr	00126$
;src/game/world.c:410: case RWN:
00113$:
;src/game/world.c:411: if(trainList[i].heading==0) trainList[i].heading=2;   
	ld	a, (hl)
	or	a, a
	jr	NZ,00117$
	ld	(hl), #0x02
	jr	00126$
00117$:
;src/game/world.c:412: else if(trainList[i].heading==3) trainList[i].heading=1;
	sub	a, #0x03
	jr	NZ,00126$
	ld	(hl), #0x01
;src/game/world.c:413: break;
	jr	00126$
;src/game/world.c:415: case RWS:
00119$:
;src/game/world.c:416: if(trainList[i].heading==0) trainList[i].heading=3;
	ld	a, (hl)
	or	a, a
	jr	NZ,00123$
	ld	(hl), #0x03
	jr	00126$
00123$:
;src/game/world.c:417: else if(trainList[i].heading==2) trainList[i].heading=1;
	sub	a, #0x02
	jr	NZ,00126$
	ld	(hl), #0x01
;src/game/world.c:419: }
00126$:
	pop	ix
	ret
;src/game/world.c:422: void setPixel(int nX, unsigned char nY, unsigned char nColor)
;	---------------------------------
; Function setPixel
; ---------------------------------
_setPixel::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/game/world.c:427: int nPixel = nX % 4;
	ld	hl, #0x0004
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__modsint
	pop	af
	pop	af
	ex	de,hl
;src/game/world.c:428: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
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
;src/game/world.c:432: *pAddress &= 119;
	ld	c, (hl)
;src/game/world.c:434: if(nColor & 1)
	ld	a, 7 (ix)
	and	a, #0x01
	ld	-2 (ix), a
;src/game/world.c:436: if(nColor & 2)
	ld	a, 7 (ix)
	and	a, #0x02
	ld	-1 (ix), a
;src/game/world.c:430: if(nPixel == 0)
	ld	a, d
	or	a,e
	jr	NZ,00124$
;src/game/world.c:432: *pAddress &= 119;
	ld	a, c
	and	a, #0x77
	ld	(hl), a
;src/game/world.c:434: if(nColor & 1)
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00102$
;src/game/world.c:435: *pAddress |= 128;
	set	7, (hl)
	ld	a, (hl)
00102$:
;src/game/world.c:436: if(nColor & 2)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00126$
;src/game/world.c:437: *pAddress |= 8;
	set	3, (hl)
	ld	a, (hl)
	jr	00126$
00124$:
;src/game/world.c:439: else if(nPixel == 1)
	ld	a, e
	dec	a
	or	a, d
	jr	NZ,00121$
;src/game/world.c:441: *pAddress &= 187;
	ld	a, c
	and	a, #0xbb
	ld	(hl), a
;src/game/world.c:443: if(nColor & 1)
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00106$
;src/game/world.c:444: *pAddress |= 64;
	set	6, (hl)
	ld	a, (hl)
00106$:
;src/game/world.c:445: if(nColor & 2)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00126$
;src/game/world.c:446: *pAddress |= 4;
	set	2, (hl)
	ld	a, (hl)
	jr	00126$
00121$:
;src/game/world.c:448: else if(nPixel == 2)
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	NZ,00118$
;src/game/world.c:450: *pAddress &= 221;
	ld	a, c
	and	a, #0xdd
	ld	(hl), a
;src/game/world.c:452: if(nColor & 1)
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00110$
;src/game/world.c:453: *pAddress |= 32;
	set	5, (hl)
	ld	a, (hl)
00110$:
;src/game/world.c:454: if(nColor & 2)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00126$
;src/game/world.c:455: *pAddress |= 2;
	set	1, (hl)
	ld	a, (hl)
	jr	00126$
00118$:
;src/game/world.c:459: *pAddress &= 238;
	ld	a, c
	and	a, #0xee
	ld	(hl), a
;src/game/world.c:461: if(nColor & 1)
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00114$
;src/game/world.c:462: *pAddress |= 16;
	set	4, (hl)
	ld	a, (hl)
00114$:
;src/game/world.c:463: if(nColor & 2)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00126$
;src/game/world.c:464: *pAddress |= 1;
	set	0, (hl)
	ld	a, (hl)
00126$:
	ld	sp, ix
	pop	ix
	ret
;src/game/world.c:468: u8 isPixelBlack(int nX, unsigned char nY)
;	---------------------------------
; Function isPixelBlack
; ---------------------------------
_isPixelBlack::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game/world.c:471: int nPixel = nX % 4;
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
;src/game/world.c:474: unsigned char *pAddress = (unsigned char *)((unsigned int)(0xC000 + ((nY / 8) * 80) + ((nY % 8) * 2048) + (nX / 4)));
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
;src/game/world.c:477: if(nPixel == 0 && !(*pAddress & 136)) 
	ld	a, b
	or	a,c
	jr	NZ,00113$
	ld	a, (hl)
	and	a, #0x88
	jr	NZ,00113$
;src/game/world.c:478: return 1;
	ld	l, #0x01
	jr	00116$
00113$:
;src/game/world.c:479: else if(nPixel == 1 && !(*pAddress & 68))
	ld	a, c
	dec	a
	or	a, b
	jr	NZ,00109$
	ld	a, (hl)
	and	a, #0x44
	jr	NZ,00109$
;src/game/world.c:480: return 1;
	ld	l, #0x01
	jr	00116$
00109$:
;src/game/world.c:481: else if(nPixel == 2 && !(*pAddress & 34))
	ld	a, c
	sub	a, #0x02
	or	a, b
	jr	NZ,00105$
	ld	a, (hl)
	and	a, #0x22
	jr	NZ,00105$
;src/game/world.c:482: return 1;
	ld	l, #0x01
	jr	00116$
00105$:
;src/game/world.c:483: else if(nPixel == 3 && !(*pAddress & 17))
	ld	a, c
	sub	a, #0x03
	or	a, b
	jr	NZ,00110$
	ld	a, (hl)
	and	a, #0x11
	jr	NZ,00110$
;src/game/world.c:484: return 1;
	ld	l, #0x01
	jr	00116$
00110$:
;src/game/world.c:486: return 0;
	ld	l, #0x00
00116$:
	pop	ix
	ret
;src/game/world.c:489: void drawNewTrain(u8 i, u8 x_, u8 y_)
;	---------------------------------
; Function drawNewTrain
; ---------------------------------
_drawNewTrain::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/game/world.c:491: switch(trainList[i].heading)
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	e, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	d, a
	ld	l, e
	ld	h, d
	ld	bc, #0x0006
	add	hl, bc
	ld	a, (hl)
	ld	-1 (ix), a
;src/game/world.c:495: trainList[i].animX = (int)(trainList[i].posX)*TILESIZE_H+1;
	ld	hl, #0x0007
	add	hl,de
	ld	c, l
	ld	b, h
	ld	hl, #0x0004
	add	hl,de
	ex	(sp), hl
;src/game/world.c:491: switch(trainList[i].heading)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00101$
	ld	a, -1 (ix)
	dec	a
	jp	Z,00102$
;src/game/world.c:511: trainList[nbTrainList].animX = (int)(trainList[i].posX)*TILESIZE_H+8;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0007
	add	hl,bc
	ld	c, l
	ld	b, h
;src/game/world.c:491: switch(trainList[i].heading)
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	Z,00103$
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	Z,00104$
	jp	00105$
;src/game/world.c:494: case 0:
00101$:
;src/game/world.c:495: trainList[i].animX = (int)(trainList[i].posX)*TILESIZE_H+1;
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	inc	hl
	ld	d, l
	ld	e, h
	ld	a, d
	ld	(bc), a
	inc	bc
	ld	a, e
	ld	(bc), a
;src/game/world.c:496: trainList[i].animY = (int)(trainList[i].posY)*TILESIZE_H+8;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	b, a
	ld	iy, #0x0009
	add	iy, bc
	ld	l, c
	ld	h, b
	ld	de, #0x0005
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0008
	add	hl, bc
	ld	0 (iy), l
	ld	1 (iy), h
;src/game/world.c:497: trainList[i].animOldX = (int)(trainList[i].posX)*TILESIZE_H;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	b, a
	ld	hl, #0x000b
	add	hl,bc
	ex	de,hl
	push	bc
	pop	iy
	ld	l, 4 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;src/game/world.c:498: trainList[i].animOldY = (int)(trainList[i].posY)*TILESIZE_H+8;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	b, a
	ld	iy, #0x000d
	add	iy, bc
	ld	l, c
	ld	h, b
	ld	de, #0x0005
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0008
	add	hl, bc
	ld	0 (iy), l
	ld	1 (iy), h
;src/game/world.c:499: break;
	jp	00105$
;src/game/world.c:502: case 1:
00102$:
;src/game/world.c:503: trainList[i].animX = (int)(trainList[i].posX)*TILESIZE_H+14;
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #0x000e
	add	hl,de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:504: trainList[i].animY = (int)(trainList[i].posY)*TILESIZE_H+8;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	b, a
	ld	iy, #0x0009
	add	iy, bc
	ld	l, c
	ld	h, b
	ld	de, #0x0005
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0008
	add	hl, bc
	ld	0 (iy), l
	ld	1 (iy), h
;src/game/world.c:505: trainList[i].animOldX = (int)(trainList[i].posX)*TILESIZE_H+15;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	b, a
	ld	iy, #0x000b
	add	iy, bc
	ld	l, c
	ld	h, b
	ld	de, #0x0004
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x000f
	add	hl, bc
	ld	0 (iy), l
	ld	1 (iy), h
;src/game/world.c:506: trainList[i].animOldY = (int)(trainList[i].posY)*TILESIZE_H+8;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	b, a
	ld	iy, #0x000d
	add	iy, bc
	ld	l, c
	ld	h, b
	ld	de, #0x0005
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0008
	add	hl, bc
	ld	0 (iy), l
	ld	1 (iy), h
;src/game/world.c:507: break;
	jp	00105$
;src/game/world.c:510: case 2:
00103$:
;src/game/world.c:511: trainList[nbTrainList].animX = (int)(trainList[i].posX)*TILESIZE_H+8;
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #0x0008
	add	hl,de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:512: trainList[nbTrainList].animY = (int)(trainList[i].posY)*TILESIZE_H+14;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0009
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	iy, (_trainList)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	add	iy, de
	ld	l, 5 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #0x000e
	add	hl,de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:513: trainList[nbTrainList].animOldX = (int)(trainList[i].posX)*TILESIZE_H+8;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x000b
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	iy, (_trainList)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	add	iy, de
	ld	l, 4 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #0x0008
	add	hl,de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:514: trainList[nbTrainList].animOldY = (int)(trainList[i].posY)*TILESIZE_H+15;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x000d
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	iy, (_trainList)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	add	iy, de
	ld	l, 5 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #0x000f
	add	hl,de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:515: break;
	jp	00105$
;src/game/world.c:518: case 3:
00104$:
;src/game/world.c:519: trainList[nbTrainList].animX = (int)(trainList[i].posX)*TILESIZE_H+8;
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #0x0008
	add	hl,de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:520: trainList[nbTrainList].animY = (int)(trainList[i].posY)*TILESIZE_H+1;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0009
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	iy, (_trainList)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	add	iy, de
	ld	l, 5 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	inc	de
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:521: trainList[nbTrainList].animOldX = (int)(trainList[i].posX)*TILESIZE_H+8;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x000b
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	iy, (_trainList)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	add	iy, de
	ld	l, 4 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #0x0008
	add	hl,de
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:522: trainList[nbTrainList].animOldY = (int)(trainList[i].posY)*TILESIZE_H;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x000d
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	iy, (_trainList)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	add	iy, de
	ld	l, 5 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:524: }
00105$:
;src/game/world.c:526: setPixel(trainList[i].animX-x_*TILESIZE_H,trainList[i].animY-y_*TILESIZE_H, 3);
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	b, a
	push	bc
	pop	iy
	ld	l, 9 (iy)
	ld	a, 6 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	ld	e, a
	ld	a, l
	sub	a, e
	ld	d, a
	ld	l, c
	ld	h, b
	ld	bc, #0x0007
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	(sp), hl
	ld	a, c
	sub	a, -5 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -4 (ix)
	ld	b, a
	push	de
	ld	a, #0x03
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_setPixel
	pop	af
	pop	af
	pop	de
;src/game/world.c:527: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	b, a
	push	bc
	pop	iy
	ld	a, 13 (iy)
	sub	a, e
	ld	d, a
	ld	l, c
	ld	h, b
	ld	bc, #0x000b
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -5 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -4 (ix)
	ld	b, a
	ld	a, #0x02
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_setPixel
	ld	sp,ix
	pop	ix
	ret
;src/game/world.c:530: void drawTrains(u8 x_, u8 y_)
;	---------------------------------
; Function drawTrains
; ---------------------------------
_drawTrains::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-40
	add	hl, sp
	ld	sp, hl
;src/game/world.c:539: for(i=0; i<nbTrainList; i++)
	ld	a, 5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	ld	-25 (ix), a
	ld	-26 (ix), #0x00
00163$:
	ld	hl, #_nbTrainList
	ld	a, -26 (ix)
	sub	a, (hl)
	jp	NC, 00165$
;src/game/world.c:542: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
	ld	a, -26 (ix)
	ld	-24 (ix), a
	ld	-23 (ix), #0x00
	ld	a, #0x04+1
	jr	00319$
00318$:
	sla	-24 (ix)
	rl	-23 (ix)
00319$:
	dec	a
	jr	NZ,00318$
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	-22 (ix), a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	-21 (ix), a
	ld	a, -22 (ix)
	ld	-20 (ix), a
	ld	a, -21 (ix)
	ld	-19 (ix), a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-20 (ix), a
	ld	-20 (ix), a
	ld	-19 (ix), #0x00
	ld	a, 4 (ix)
	ld	-18 (ix), a
	ld	-17 (ix), #0x00
	ld	a, -20 (ix)
	sub	a, -18 (ix)
	ld	-20 (ix), a
	ld	a, -19 (ix)
	sbc	a, -17 (ix)
	ld	-19 (ix), a
	ld	a, 5 (ix)
	ld	-16 (ix), a
	ld	-15 (ix), #0x00
;src/game/world.c:627: cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);
	ld	a, -28 (ix)
	ld	-14 (ix), a
	ld	a, -27 (ix)
	ld	-13 (ix), a
;src/game/world.c:542: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
	ld	a, -20 (ix)
	sub	a, #0x14
	ld	a, -19 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00156$
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	c, (hl)
	ld	b, #0x00
	ld	a, c
	sub	a, -16 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -15 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x0c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00156$
	bit	7, -19 (ix)
	jp	NZ, 00156$
	bit	7, b
	jp	NZ, 00156$
;src/game/world.c:545: animPixX = trainList[i].animX-x_*TILESIZE_H;
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	de, #0x0007
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -18 (ix)
	ld	-20 (ix), a
	ld	a, -17 (ix)
	ld	-19 (ix), a
	ld	a, #0x04+1
	jr	00321$
00320$:
	sla	-20 (ix)
	rl	-19 (ix)
00321$:
	dec	a
	jr	NZ,00320$
	ld	a, c
	sub	a, -20 (ix)
	ld	-12 (ix), a
	ld	a, b
	sbc	a, -19 (ix)
	ld	-11 (ix), a
;src/game/world.c:546: animPixY = trainList[i].animY-y_*TILESIZE_H;
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -16 (ix)
	ld	-9 (ix), a
	ld	a, -15 (ix)
	ld	-8 (ix), a
	ld	a, #0x04+1
	jr	00323$
00322$:
	sla	-9 (ix)
	rl	-8 (ix)
00323$:
	dec	a
	jr	NZ,00322$
	ld	a, c
	sub	a, -9 (ix)
	ld	-3 (ix), a
	ld	a, b
	sbc	a, -8 (ix)
	ld	-2 (ix), a
;src/game/world.c:548: setPixel(animPixX, animPixY, 3);
	ld	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, #0x03
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
;src/game/world.c:549: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	push	iy
	pop	hl
	ld	de, #0x000d
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -25 (ix)
	ld	-10 (ix), a
	ld	a, c
	sub	a, -10 (ix)
	ld	d, a
	push	iy
	pop	hl
	ld	bc, #0x000b
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -20 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -19 (ix)
	ld	b, a
	ld	a, #0x02
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_setPixel
	pop	af
	pop	af
;src/game/world.c:552: oldTrainX = trainList[i].animOldX;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	e, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	d, a
	ld	hl, #0x000b
	add	hl,de
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	-30 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-29 (ix), a
	dec	bc
;src/game/world.c:553: oldTrainY = trainList[i].animOldY;
	push	de
	pop	iy
	ld	a, 13 (iy)
	ld	-32 (ix), a
	ld	a, 14 (iy)
	ld	-31 (ix), a
;src/game/world.c:554: trainList[i].animOldX = trainList[i].animX;
	ex	de,hl
	ld	de, #0x0007
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:555: trainList[i].animOldY = trainList[i].animY;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	e, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	d, a
	ld	hl, #0x000d
	add	hl,de
	ld	c, l
	ld	b, h
	ex	de,hl
	ld	de, #0x0009
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src/game/world.c:558: if( isPixelBlack(animPixX +1, animPixY) )
	ld	a, -12 (ix)
	add	a, #0x01
	ld	-7 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_isPixelBlack
	pop	af
	inc	sp
	ld	a, l
	or	a, a
	jr	Z,00122$
;src/game/world.c:559: trainList[i].animX+=1;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0007
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	inc	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00123$
00122$:
;src/game/world.c:560: else if( isPixelBlack(animPixX -1, animPixY) )
	ld	a, -12 (ix)
	add	a, #0xff
	ld	-5 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
	ld	-4 (ix), a
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_isPixelBlack
	pop	af
	inc	sp
	ld	a, l
	or	a, a
	jr	Z,00119$
;src/game/world.c:561: trainList[i].animX-=1;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0007
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00123$
00119$:
;src/game/world.c:562: else if( isPixelBlack(animPixX, animPixY + 1) )
	ld	c, -3 (ix)
	ld	b, c
	inc	b
	push	bc
	push	bc
	inc	sp
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	call	_isPixelBlack
	pop	af
	inc	sp
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00116$
;src/game/world.c:563: trainList[i].animY+=1;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0009
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	inc	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00123$
00116$:
;src/game/world.c:564: else if( isPixelBlack(animPixX, animPixY - 1) )
	dec	c
	push	bc
	ld	a, c
	push	af
	inc	sp
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	call	_isPixelBlack
	pop	af
	inc	sp
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00113$
;src/game/world.c:565: trainList[i].animY-=1;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0009
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00123$
00113$:
;src/game/world.c:566: else if( isPixelBlack(animPixX+1,animPixY+ 1) )
	push	bc
	push	bc
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_isPixelBlack
	pop	af
	inc	sp
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00110$
;src/game/world.c:568: trainList[i].animX+=1;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0007
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	inc	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/game/world.c:569: trainList[i].animY+=1;
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0009
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	inc	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00123$
00110$:
;src/game/world.c:571: else if( isPixelBlack(animPixX+1, animPixY - 1) )
	push	bc
	ld	a, c
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_isPixelBlack
	pop	af
	inc	sp
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00107$
;src/game/world.c:573: trainList[i].animX+=1;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0007
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	inc	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/game/world.c:574: trainList[i].animY-=1;
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0009
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00123$
00107$:
;src/game/world.c:576: else if( isPixelBlack(animPixX-1, animPixY+ 1) )
	push	bc
	push	bc
	inc	sp
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_isPixelBlack
	pop	af
	inc	sp
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00104$
;src/game/world.c:578: trainList[i].animX-=1;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0007
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/game/world.c:579: trainList[i].animY+=1;
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	hl, #0x0009
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	inc	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jr	00123$
00104$:
;src/game/world.c:581: else if( isPixelBlack(animPixX-1, animPixY- 1) )
	ld	a, c
	push	af
	inc	sp
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	_isPixelBlack
	pop	af
	inc	sp
	ld	a, l
	or	a, a
	jr	Z,00123$
;src/game/world.c:583: trainList[i].animX-=1;
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	ld	de, #0x0007
	add	iy, de
	ld	c, 0 (iy)
	ld	b, 1 (iy)
	dec	bc
	ld	0 (iy), c
	ld	1 (iy), b
;src/game/world.c:584: trainList[i].animY-=1;
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	ld	de, #0x0009
	add	iy, de
	ld	c, 0 (iy)
	ld	b, 1 (iy)
	dec	bc
	ld	0 (iy), c
	ld	1 (iy), b
00123$:
;src/game/world.c:588: actualPosX = (int)(trainList[i].animX/TILESIZE_H); // Update position in tiles coordinates
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	-5 (ix), a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	-4 (ix), a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	de, #0x0007
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z,00167$
	ld	hl, #0x000f
	add	hl, bc
00167$:
	ld	-34 (ix), l
	ld	-33 (ix), h
	sra	-33 (ix)
	rr	-34 (ix)
	sra	-33 (ix)
	rr	-34 (ix)
	sra	-33 (ix)
	rr	-34 (ix)
	sra	-33 (ix)
	rr	-34 (ix)
;src/game/world.c:589: actualPosY = (int)(trainList[i].animY/TILESIZE_H); 
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z,00168$
	ld	hl, #0x000f
	add	hl, bc
00168$:
	ld	-36 (ix), l
	ld	-35 (ix), h
	sra	-35 (ix)
	rr	-36 (ix)
	sra	-35 (ix)
	rr	-36 (ix)
	sra	-35 (ix)
	rr	-36 (ix)
	sra	-35 (ix)
	rr	-36 (ix)
;src/game/world.c:590: if( actualPosX != trainList[i].posX || actualPosY != trainList[i].posY )
	ld	a, -5 (ix)
	add	a, #0x04
	ld	-7 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c, (hl)
	ld	b, #0x00
	ld	a, -34 (ix)
	sub	a, c
	jr	NZ,00124$
	ld	a, -33 (ix)
	sub	a, b
	jr	NZ,00124$
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	c, (hl)
	ld	b, #0x00
	ld	a, -36 (ix)
	sub	a, c
	jr	NZ,00326$
	ld	a, -35 (ix)
	sub	a, b
	jr	Z,00125$
00326$:
00124$:
;src/game/world.c:592: trainList[i].posX = actualPosX; // Update position in tiles coordinates
	ld	c, -34 (ix)
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl), c
;src/game/world.c:593: trainList[i].posY = actualPosY; // Update position in tiles coordinates
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	ld	de, #0x0005
	add	iy, de
	ld	c, -36 (ix)
	ld	0 (iy), c
;src/game/world.c:595: setTrainHeading(i); // Calculate new heading
	ld	a, -26 (ix)
	push	af
	inc	sp
	call	_setTrainHeading
	inc	sp
00125$:
;src/game/world.c:600: animPixX = trainList[i].animX-x_*TILESIZE_H;
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	ld	l, c
	ld	h, b
	ld	de, #0x0007
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, -20 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -19 (ix)
	ld	-38 (ix), e
	ld	-37 (ix), a
;src/game/world.c:601: animPixY = trainList[i].animY-y_*TILESIZE_H;
	ld	l, c
	ld	h, b
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sub	a, -9 (ix)
	ld	c, a
	ld	a, -4 (ix)
	sbc	a, -8 (ix)
	ld	b, a
	inc	sp
	inc	sp
	push	bc
;src/game/world.c:548: setPixel(animPixX, animPixY, 3);
	ld	a, -40 (ix)
	ld	-5 (ix), a
;src/game/world.c:607: setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
	ld	c, -32 (ix)
	ld	a, -30 (ix)
	sub	a, -20 (ix)
	ld	-7 (ix), a
	ld	a, -29 (ix)
	sbc	a, -19 (ix)
	ld	-6 (ix), a
	ld	a, c
	sub	a, -10 (ix)
	ld	-1 (ix), a
;src/game/world.c:603: if(animPixX>0 && animPixY>0 && animPixX<319 && animPixY<192)
	xor	a, a
	cp	a, -38 (ix)
	sbc	a, -37 (ix)
	jp	PO, 00327$
	xor	a, #0x80
00327$:
	jp	P, 00128$
	xor	a, a
	cp	a, -40 (ix)
	sbc	a, -39 (ix)
	jp	PO, 00328$
	xor	a, #0x80
00328$:
	jp	P, 00128$
	ld	a, -38 (ix)
	sub	a, #0x3f
	ld	a, -37 (ix)
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	NC,00128$
	ld	a, -40 (ix)
	sub	a, #0xc0
	ld	a, -39 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00128$
;src/game/world.c:605: setPixel(animPixX,animPixY, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	l,-38 (ix)
	ld	h,-37 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
;src/game/world.c:606: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 2);
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	push	iy
	pop	hl
	ld	de, #0x000d
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -10 (ix)
	ld	d, a
	push	iy
	pop	hl
	ld	bc, #0x000b
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -20 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -19 (ix)
	ld	b, a
	ld	a, #0x02
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_setPixel
	pop	af
	pop	af
;src/game/world.c:607: setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
	xor	a, a
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
	jp	00129$
00128$:
;src/game/world.c:613: setPixel(animPixX,animPixY, 0);
	xor	a, a
	push	af
	inc	sp
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	l,-38 (ix)
	ld	h,-37 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
;src/game/world.c:614: setPixel(trainList[i].animOldX-x_*TILESIZE_H,trainList[i].animOldY-y_*TILESIZE_H, 0);
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	push	iy
	pop	hl
	ld	de, #0x000d
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -10 (ix)
	ld	d, a
	push	iy
	pop	hl
	ld	bc, #0x000b
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -20 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -19 (ix)
	ld	b, a
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_setPixel
	pop	af
	pop	af
;src/game/world.c:615: setPixel(oldTrainX-x_*TILESIZE_H,oldTrainY-y_*TILESIZE_H, 0);
	xor	a, a
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_setPixel
	pop	af
	pop	af
;src/game/world.c:617: trainList[i].animOldX = 0;
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	ld	de, #0x000b
	add	iy, de
	ld	0 (iy), #0x00
	ld	1 (iy), #0x00
;src/game/world.c:618: trainList[i].animOldY = 0;
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	ld	de, #0x000d
	add	iy, de
	ld	0 (iy), #0x00
	ld	1 (iy), #0x00
;src/game/world.c:619: trainList[i].animX = 0;
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	ld	de, #0x0007
	add	iy, de
	ld	0 (iy), #0x00
	ld	1 (iy), #0x00
;src/game/world.c:620: trainList[i].animY = 0;
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	ld	de, #0x0009
	add	iy, de
	ld	0 (iy), #0x00
	ld	1 (iy), #0x00
;src/game/world.c:622: trainList[i].cycles = 0;
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	ld	de, #0x000f
	add	iy, de
	ld	0 (iy), #0x00
00129$:
;src/game/world.c:626: sprintf(buff, "%d %d", trainList[i].posX, trainList[i].posY);
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	push	iy
	pop	hl
	ld	de, #0x0005
	add	hl, de
	ld	c, (hl)
	ld	b, #0x00
	push	iy
	pop	hl
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	ld	d, #0x00
	push	bc
	push	de
	ld	hl, #___str_0
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	call	_sprintf
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
;src/game/world.c:627: cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);
	ld	hl, #0x0100
	push	hl
	ld	h, #0xc0
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	call	_cpct_drawStringM1
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	jp	00164$
00156$:
;src/game/world.c:641: trainList[i].cycles=0;
	ld	a, -22 (ix)
	add	a, #0x0f
	ld	c, a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
;src/game/world.c:644: switch(trainList[i].heading)
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	push	bc
	pop	iy
	ld	e, 6 (iy)
;src/game/world.c:647: if(trainList[i].posX < WIDTH && p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS )
	ld	hl, #0x0004
	add	hl,bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	hl, #0x0005
	add	hl,bc
	ld	-7 (ix), l
	ld	-6 (ix), h
;src/game/world.c:644: switch(trainList[i].heading)
	ld	a, e
	or	a, a
	jr	Z,00133$
	ld	a, e
	dec	a
	jr	Z,00137$
	ld	a,e
	cp	a,#0x02
	jr	Z,00141$
	sub	a, #0x03
	jp	Z,00145$
	jp	00149$
;src/game/world.c:646: case 0: // Right
00133$:
;src/game/world.c:647: if(trainList[i].posX < WIDTH && p_world[trainList[i].posY*WIDTH+trainList[i].posX+1] >= SSNS )
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	c, (hl)
	ld	a, c
	sub	a, #0x50
	jp	NC, 00149$
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	e, (hl)
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
	jp	C, 00149$
;src/game/world.c:648: trainList[i].posX++;
	inc	c
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl), c
;src/game/world.c:649: break;
	jp	00149$
;src/game/world.c:650: case 1: // Left
00137$:
;src/game/world.c:651: if(trainList[i].posX >0 && p_world[trainList[i].posY*WIDTH+trainList[i].posX-1] >= SSNS )
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jp	Z, 00149$
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	e, (hl)
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
	jr	C,00149$
;src/game/world.c:652: trainList[i].posX--;
	dec	c
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl), c
;src/game/world.c:653: break;
	jr	00149$
;src/game/world.c:654: case 2: // Up
00141$:
;src/game/world.c:655: if(trainList[i].posY > 0 && p_world[(trainList[i].posY-1)*WIDTH+trainList[i].posX] >= SSNS )
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z,00149$
	ld	e, c
	ld	d, #0x00
	dec	de
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	de, #_p_world
	add	hl, de
	ld	a, (hl)
	sub	a, #0x0a
	jr	C,00149$
;src/game/world.c:656: trainList[i].posY--;
	dec	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl), c
;src/game/world.c:657: break;
	jr	00149$
;src/game/world.c:658: case 3: // Down
00145$:
;src/game/world.c:659: if(trainList[i].posY < HEIGHT && p_world[(trainList[i].posY+1)*WIDTH+trainList[i].posX] >= SSNS)
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	c, (hl)
	ld	a, c
	sub	a, #0x30
	jr	NC,00149$
	ld	e, c
	ld	d, #0x00
	inc	de
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	de, #_p_world
	add	hl, de
	ld	a, (hl)
	sub	a, #0x0a
	jr	C,00149$
;src/game/world.c:660: trainList[i].posY++;
	inc	c
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl), c
;src/game/world.c:662: }
00149$:
;src/game/world.c:664: sprintf(buff, "%d %d %d", trainList[i].posX, trainList[i].posY, trainList[i].heading );
	ld	iy, (_trainList)
	ld	e,-24 (ix)
	ld	d,-23 (ix)
	add	iy, de
	push	iy
	pop	hl
	ld	de, #0x0006
	add	hl, de
	ld	c, (hl)
	ld	b, #0x00
	push	iy
	pop	hl
	ld	de, #0x0005
	add	hl, de
	ld	e, (hl)
	ld	d, #0x00
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	push	bc
	push	de
	push	hl
	ld	hl, #___str_1
	push	hl
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	push	hl
	call	_sprintf
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;src/game/world.c:665: cpct_drawStringM1 (buff, SCR_VMEM, 0, 1);
	ld	hl, #0x0100
	push	hl
	ld	h, #0xc0
	push	hl
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	push	hl
	call	_cpct_drawStringM1
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/game/world.c:668: setTrainHeading(i);
	ld	a, -26 (ix)
	push	af
	inc	sp
	call	_setTrainHeading
	inc	sp
;src/game/world.c:671: if(trainList[i].posX-x_ < NBTILE_W && trainList[i].posY-y_ < NBTILE_H && trainList[i].posX-x_ >= 0 && trainList[i].posY-y_ >= 0 )
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, -24 (ix)
	ld	c, a
	ld	a, 1 (iy)
	adc	a, -23 (ix)
	ld	b, a
	push	bc
	pop	iy
	ld	a, 4 (iy)
	ld	d, #0x00
	sub	a, -18 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -17 (ix)
	ld	d, a
	ld	a, e
	sub	a, #0x14
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00164$
	push	bc
	pop	iy
	ld	a, 5 (iy)
	ld	b, #0x00
	sub	a, -16 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -15 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x0c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00164$
	bit	7, d
	jr	NZ,00164$
	bit	7, b
	jr	NZ,00164$
;src/game/world.c:673: drawNewTrain(i, x_, y_);
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	ld	a, -26 (ix)
	push	af
	inc	sp
	call	_drawNewTrain
	pop	af
	inc	sp
00164$:
;src/game/world.c:539: for(i=0; i<nbTrainList; i++)
	inc	-26 (ix)
	jp	00163$
00165$:
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "%d %d"
	.db 0x00
___str_1:
	.ascii "%d %d %d"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
