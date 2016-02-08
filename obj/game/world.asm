;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Mon Feb  8 17:23:06 2016
;--------------------------------------------------------
	.module world
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_setSeed_mxor
	.globl _cpct_getRandom_mxor_u16
	.globl _cpct_getRandom_mxor_u8
	.globl _cpct_getRandomUniform_u8_f
	.globl _cpct_getScreenPtr
	.globl _cpct_count2VSYNC
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
;src/game/world.c:3: void drawCursor(u8 x, u8 y, u8 color)
;	---------------------------------
; Function drawCursor
; ---------------------------------
_drawCursor::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/game/world.c:6: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
	ld	a,5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	e,a
	ld	a,4 (ix)
	add	a, a
	add	a, a
	ld	d,a
	push	de
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	ld	c, l
	ld	b, h
;src/game/world.c:8: switch(CURSOR_MODE)
	ld	a,#0x10
	ld	iy,#_CURSOR_MODE
	sub	a, 0 (iy)
	jp	C,00119$
	push	de
	ld	iy,#_CURSOR_MODE
	ld	e,0 (iy)
	ld	d,#0x00
	ld	hl,#00125$
	add	hl,de
	add	hl,de
	add	hl,de
	pop	de
	jp	(hl)
00125$:
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
;src/game/world.c:10: case NONE:
00101$:
;src/game/world.c:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
	push	bc
	push	de
	ld	h,6 (ix)
	ld	l,6 (ix)
	push	hl
	ld	h,6 (ix)
	ld	l,6 (ix)
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	-1 (ix),l
	pop	de
	pop	bc
	push	de
	ld	hl,#0x0004
	push	hl
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	bc
	call	_cpct_memset
	pop	de
;src/game/world.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
	ld	h,e
	inc	h
	push	de
	push	hl
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
;src/game/world.c:13: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
	push	hl
	push	de
	ld	h,6 (ix)
	ld	l,6 (ix)
	push	hl
	ld	h,6 (ix)
	ld	l,6 (ix)
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	e,l
	pop	af
	ld	d,a
	pop	bc
	push	de
	ld	hl,#0x0004
	push	hl
	ld	a,e
	push	af
	inc	sp
	push	bc
	call	_cpct_memset
	pop	de
;src/game/world.c:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
	ld	a,5 (ix)
	inc	a
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	e,a
	ld	h,e
	dec	h
	push	de
	push	hl
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
;src/game/world.c:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
	push	hl
	push	de
	ld	h,6 (ix)
	ld	l,6 (ix)
	push	hl
	ld	h,6 (ix)
	ld	l,6 (ix)
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	-1 (ix),l
	pop	de
	pop	bc
	push	de
	ld	hl,#0x0004
	push	hl
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	bc
	call	_cpct_memset
	pop	de
;src/game/world.c:18: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
	ld	h,e
	dec	h
	dec	h
	push	hl
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/world.c:19: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
	push	hl
	ld	h,6 (ix)
	ld	l,6 (ix)
	push	hl
	ld	h,6 (ix)
	ld	l,6 (ix)
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	h,l
	pop	de
	ld	bc,#0x0004
	push	bc
	push	hl
	inc	sp
	push	de
	call	_cpct_memset
;src/game/world.c:20: break;
	jp	00119$
;src/game/world.c:21: case T_SSNS:
00102$:
;src/game/world.c:22: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_small_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:23: break;
	jp	00119$
;src/game/world.c:24: case T_SSEW:
00103$:
;src/game/world.c:25: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_small_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:26: break;
	jp	00119$
;src/game/world.c:27: case T_SMNS:
00104$:
;src/game/world.c:28: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_medium_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:29: break;
	jp	00119$
;src/game/world.c:30: case T_SMEW:
00105$:
;src/game/world.c:31: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_medium_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:32: break;
	jp	00119$
;src/game/world.c:33: case T_SLNS:
00106$:
;src/game/world.c:34: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_large_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:35: break;
	jp	00119$
;src/game/world.c:36: case T_SLEW:
00107$:
;src/game/world.c:37: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_large_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:38: break;
	jp	00119$
;src/game/world.c:39: case T_REW:
00108$:
;src/game/world.c:40: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:41: break;
	jp	00119$
;src/game/world.c:42: case T_RNS:
00109$:
;src/game/world.c:43: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:44: break;
	jr	00119$
;src/game/world.c:45: case T_REN:
00110$:
;src/game/world.c:46: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_en
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:47: break;
	jr	00119$
;src/game/world.c:48: case T_RES:
00111$:
;src/game/world.c:49: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_es
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:50: break;
	jr	00119$
;src/game/world.c:51: case T_RWN:
00112$:
;src/game/world.c:52: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_wn
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:53: break;
	jr	00119$
;src/game/world.c:54: case T_RWS:
00113$:
;src/game/world.c:55: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ws
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:56: break;
	jr	00119$
;src/game/world.c:57: case T_REWN:
00114$:
;src/game/world.c:58: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ew_n
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:59: break;
	jr	00119$
;src/game/world.c:60: case T_REWS:
00115$:
;src/game/world.c:61: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ew_s
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:62: break;
	jr	00119$
;src/game/world.c:63: case T_RNSE:
00116$:
;src/game/world.c:64: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ns_e
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:65: break;
	jr	00119$
;src/game/world.c:66: case T_RNSW:
00117$:
;src/game/world.c:67: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_rail_ns_w
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:69: }
00119$:
	inc	sp
	pop	ix
	ret
;src/game/world.c:72: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
;	---------------------------------
; Function patternTile
; ---------------------------------
_patternTile::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
	ld	a,4 (ix)
	sub	a, #0x08
	jr	NZ,00153$
	ld	a,#0x01
	jr	00154$
00153$:
	xor	a,a
00154$:
	ld	-1 (ix),a
	ld	a,4 (ix)
	sub	a, #0x02
	jr	NZ,00155$
	ld	a,#0x01
	jr	00156$
00155$:
	xor	a,a
00156$:
	ld	-4 (ix),a
	ld	-11 (ix),#0x00
	ld	de,#0x0000
00115$:
	ld	a,-11 (ix)
	sub	a, 8 (ix)
	jp	NC,00117$
;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
	ld	a,5 (ix)
	add	a, e
	ld	-3 (ix),a
	ld	a,6 (ix)
	adc	a, d
	ld	-2 (ix),a
	push	de
	ld	e,7 (ix)
	ld	h,-11 (ix)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00157$:
	add	hl,hl
	jr	NC,00158$
	add	hl,de
00158$:
	djnz	00157$
	pop	de
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	-10 (ix),#0x00
00112$:
	ld	a,-10 (ix)
	sub	a, 7 (ix)
	jp	NC,00116$
;src/game/world.c:81: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
	ld	a,-10 (ix)
	ld	-9 (ix),a
	ld	-8 (ix),#0x00
	ld	a,-6 (ix)
	add	a, -9 (ix)
	ld	l,a
	ld	a,-5 (ix)
	adc	a, -8 (ix)
	ld	h,a
	ld	c,9 (ix)
	ld	b,10 (ix)
	push	de
	push	hl
	push	bc
	call	_cpct_getBit
	ld	-7 (ix),l
	pop	de
	ld	a,-7 (ix)
	or	a, a
	jr	Z,00113$
	ld	a,-3 (ix)
	add	a, -9 (ix)
	ld	c,a
	ld	a,-2 (ix)
	adc	a, -8 (ix)
	ld	b,a
	xor	a, #0x80
	sub	a, #0x8F
	jr	NC,00113$
;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
	ld	hl,#_p_world
	add	hl,bc
	ld	c,l
	ld	b,h
;src/game/world.c:83: if(tileType == FOREST)
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00104$
;src/game/world.c:84: p_world[index+iy*WIDTH+ix] = tileType;
	ld	a,4 (ix)
	ld	(bc),a
	jr	00113$
00104$:
;src/game/world.c:85: else if(tileType==DWELLINGS1)
	ld	a,-4 (ix)
	or	a, a
	jr	Z,00113$
;src/game/world.c:86: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
	push	bc
	push	de
	call	_cpct_count2VSYNC
	call	_cpct_getRandomUniform_u8_f
	ld	-7 (ix),l
	ld	a,#0x03
	push	af
	inc	sp
	ld	a,-7 (ix)
	push	af
	inc	sp
	call	__moduchar
	pop	af
	ld	a,l
	pop	de
	pop	bc
	add	a, #0x02
	ld	(bc),a
00113$:
;src/game/world.c:79: for(ix=0; ix<nBitsX; ix++)
	inc	-10 (ix)
	jp	00112$
00116$:
;src/game/world.c:77: for(iy=0; iy<nBitsY; iy++)
	ld	hl,#0x0050
	add	hl,de
	ex	de,hl
	inc	-11 (ix)
	jp	00115$
00117$:
	ld	sp, ix
	pop	ix
	ret
;src/game/world.c:93: void generateWorld()
;	---------------------------------
; Function generateWorld
; ---------------------------------
_generateWorld::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-27
	add	hl,sp
	ld	sp,hl
;src/game/world.c:100: CURSOR_MODE = NONE;
	ld	iy,#_CURSOR_MODE
	ld	0 (iy),#0x00
;src/game/world.c:103: cpct_srand((u32)cpct_count2VSYNC());
	call	_cpct_count2VSYNC
	ld	de,#0x0000
	call	_cpct_setSeed_mxor
;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	ld	de,#0x0000
00119$:
;src/game/world.c:109: p_world[iy] = cpct_rand()%2;
	ld	hl,#_p_world
	add	hl,de
	push	hl
	push	de
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	pop	de
	pop	hl
	and	a, #0x01
	ld	(hl),a
;src/game/world.c:107: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	inc	de
	ld	a,d
	xor	a, #0x80
	sub	a, #0x8F
	jr	C,00119$
;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
	ld	hl,#0x0000
	add	hl,sp
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	bc,#0x0000
00121$:
;src/game/world.c:115: iy = cpct_rand16()%(WIDTH*HEIGHT);
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	de,#0x0F00
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
	ld	-5 (ix),l
	ld	-4 (ix),h
;src/game/world.c:117: switch(cpct_rand()%4)
	push	bc
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	pop	bc
	and	a, #0x03
	ld	-3 (ix),a
	ld	a,#0x03
	sub	a, -3 (ix)
	jp	C,00106$
;src/game/world.c:121: p_forest[1] = 0b11000111;
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	inc	hl
	push	hl
	pop	iy
	pop	hl
;src/game/world.c:122: p_forest[2] = 0b11011110;
	ld	e,-11 (ix)
	ld	d,-10 (ix)
	inc	de
	inc	de
;src/game/world.c:123: p_forest[3] = 0b01111110;
	ld	a,-11 (ix)
	add	a, #0x03
	ld	-13 (ix),a
	ld	a,-10 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
;src/game/world.c:124: p_forest[4] = 0b11111110; 
	ld	a,-11 (ix)
	add	a, #0x04
	ld	-7 (ix),a
	ld	a,-10 (ix)
	adc	a, #0x00
	ld	-6 (ix),a
;src/game/world.c:125: p_forest[5] = 0b01111111;
	ld	a,-11 (ix)
	add	a, #0x05
	ld	-9 (ix),a
	ld	a,-10 (ix)
	adc	a, #0x00
	ld	-8 (ix),a
;src/game/world.c:126: p_forest[6] = 0b11101111;
	ld	a,-11 (ix)
	add	a, #0x06
	ld	-15 (ix),a
	ld	a,-10 (ix)
	adc	a, #0x00
	ld	-14 (ix),a
;src/game/world.c:127: p_forest[7] = 0b11001111;
	ld	a,-11 (ix)
	add	a, #0x07
	ld	-2 (ix),a
	ld	a,-10 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
;src/game/world.c:117: switch(cpct_rand()%4)
	push	de
	ld	e,-3 (ix)
	ld	d,#0x00
	ld	hl,#00195$
	add	hl,de
	add	hl,de
	add	hl,de
	pop	de
	jp	(hl)
00195$:
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
;src/game/world.c:119: case 0:
00102$:
;src/game/world.c:120: p_forest[0] = 0b10000100;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),#0x84
;src/game/world.c:121: p_forest[1] = 0b11000111;
	ld	0 (iy), #0xC7
;src/game/world.c:122: p_forest[2] = 0b11011110;
	ld	a,#0xDE
	ld	(de),a
;src/game/world.c:123: p_forest[3] = 0b01111110;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	(hl),#0x7E
;src/game/world.c:124: p_forest[4] = 0b11111110; 
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),#0xFE
;src/game/world.c:125: p_forest[5] = 0b01111111;
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),#0x7F
;src/game/world.c:126: p_forest[6] = 0b11101111;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0xEF
;src/game/world.c:127: p_forest[7] = 0b11001111;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0xCF
;src/game/world.c:128: break;
	jp	00106$
;src/game/world.c:129: case 1:
00103$:
;src/game/world.c:130: p_forest[0] = 0b00001100;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),#0x0C
;src/game/world.c:131: p_forest[1] = 0b11111000;
	ld	0 (iy), #0xF8
;src/game/world.c:132: p_forest[2] = 0b00111111;
	ld	a,#0x3F
	ld	(de),a
;src/game/world.c:133: p_forest[3] = 0b01111110;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	(hl),#0x7E
;src/game/world.c:134: p_forest[4] = 0b11111110; 
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),#0xFE
;src/game/world.c:135: p_forest[5] = 0b01011111;
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),#0x5F
;src/game/world.c:136: p_forest[6] = 0b11001111;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0xCF
;src/game/world.c:137: p_forest[7] = 0b10001100;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x8C
;src/game/world.c:138: break;
	jr	00106$
;src/game/world.c:139: case 2:
00104$:
;src/game/world.c:140: p_forest[0] = 0b00110000;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),#0x30
;src/game/world.c:141: p_forest[1] = 0b11110100;
	ld	0 (iy), #0xF4
;src/game/world.c:142: p_forest[2] = 0b11111111;
	ld	a,#0xFF
	ld	(de),a
;src/game/world.c:143: p_forest[3] = 0b11111111;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	(hl),#0xFF
;src/game/world.c:144: p_forest[4] = 0b01111100;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),#0x7C
;src/game/world.c:145: p_forest[5] = 0b01111110;
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),#0x7E
;src/game/world.c:146: p_forest[6] = 0b00111110;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x3E
;src/game/world.c:147: p_forest[7] = 0b00011000;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x18
;src/game/world.c:148: break;
	jr	00106$
;src/game/world.c:149: case 3:
00105$:
;src/game/world.c:150: p_forest[0] = 0b11000000; 
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),#0xC0
;src/game/world.c:151: p_forest[1] = 0b11100111;
	ld	0 (iy), #0xE7
;src/game/world.c:152: p_forest[2] = 0b01111110;
	ld	a,#0x7E
	ld	(de),a
;src/game/world.c:153: p_forest[3] = 0b01111110;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	(hl),#0x7E
;src/game/world.c:154: p_forest[4] = 0b11111110;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl),#0xFE
;src/game/world.c:155: p_forest[5] = 0b11111100;
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),#0xFC
;src/game/world.c:156: p_forest[6] = 0b01111000;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x78
;src/game/world.c:157: p_forest[7] = 0b00110000;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x30
;src/game/world.c:159: }
00106$:
;src/game/world.c:160: patternTile(FOREST, iy, 8, 8, p_forest);
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	bc
	push	hl
	ld	hl,#0x0808
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	a,#0x08
	push	af
	inc	sp
	call	_patternTile
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	pop	bc
;src/game/world.c:113: for(ix=0; ix<NBFOREST; ix++)
	inc	bc
	ld	a,c
	sub	a, #0x32
	ld	a,b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C,00121$
;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
	ld	de,#0x003C
00125$:
;src/game/world.c:168: iy = cpct_rand16()%(WIDTH*HEIGHT);
	push	de
	call	_cpct_getRandom_mxor_u16
	pop	de
	push	de
	ld	bc,#0x0F00
	push	bc
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	de
;src/game/world.c:169: p_world[iy] = cpct_rand()%2+5;
	ld	bc,#_p_world
	add	hl,bc
	push	hl
	push	de
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	pop	de
	pop	hl
	and	a, #0x01
	add	a, #0x05
	ld	(hl),a
	dec	de
;src/game/world.c:166: for(ix=0; ix<NBFARM; ix++)
	ld	a,d
	or	a,e
	jr	NZ,00125$
;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
	ld	de,#0x0014
00128$:
;src/game/world.c:176: iy = cpct_rand16()%(WIDTH*HEIGHT);
	push	de
	call	_cpct_getRandom_mxor_u16
	pop	de
	push	de
	ld	bc,#0x0F00
	push	bc
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	de
;src/game/world.c:177: p_world[iy] = cpct_rand()%3+2;
	ld	a,#<(_p_world)
	add	a, l
	ld	-2 (ix),a
	ld	a,#>(_p_world)
	adc	a, h
	ld	-1 (ix),a
	push	de
	call	_cpct_getRandom_mxor_u8
	ld	b,l
	pop	de
	push	de
	ld	a,#0x03
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar
	pop	af
	ld	a,l
	pop	de
	add	a, #0x02
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
	dec	de
;src/game/world.c:174: for(ix=0; ix<NBURBAN; ix++)
	ld	a,d
	or	a,e
	jr	NZ,00128$
;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
	ld	hl,#0x000A
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	-19 (ix),#0x00
	ld	-18 (ix),#0x00
00129$:
;src/game/world.c:182: iy = cpct_rand16()%(WIDTH*HEIGHT);
	push	bc
	call	_cpct_getRandom_mxor_u16
	ld	de,#0x0F00
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/game/world.c:184: switch(cpct_rand()%6)
	push	bc
	call	_cpct_getRandom_mxor_u8
	ld	d,l
	ld	a,#0x06
	push	af
	inc	sp
	push	de
	inc	sp
	call	__moduchar
	pop	af
	ld	e,l
	pop	bc
	ld	a,#0x05
	sub	a, e
	jr	C,00116$
;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
	ld	hl,#0x0001
	add	hl,bc
	ld	-15 (ix),l
	ld	-14 (ix),h
;src/game/world.c:184: switch(cpct_rand()%6)
	ld	d,#0x00
	ld	hl,#00196$
	add	hl,de
	add	hl,de
;src/game/world.c:186: case 0:
	jp	(hl)
00196$:
	jr	00110$
	jr	00111$
	jr	00112$
	jr	00113$
	jr	00114$
	jr	00115$
00110$:
;src/game/world.c:187: p_cities[0] = 0b01110010; // 01001110;
	ld	a,#0x72
	ld	(bc),a
;src/game/world.c:188: p_cities[1] = 0b01000110; // 01100010;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x46
;src/game/world.c:189: break;
	jr	00116$
;src/game/world.c:191: case 1:
00111$:
;src/game/world.c:192: p_cities[0] = 0b01100000; // 00000110;
	ld	a,#0x60
	ld	(bc),a
;src/game/world.c:193: p_cities[1] = 0b00000110; // 01100000;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x06
;src/game/world.c:194: break;
	jr	00116$
;src/game/world.c:196: case 2:
00112$:
;src/game/world.c:197: p_cities[0] = 0b00010000; // 00001000;
	ld	a,#0x10
	ld	(bc),a
;src/game/world.c:198: p_cities[1] = 0b00000110; // 01100000;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x06
;src/game/world.c:199: break;
	jr	00116$
;src/game/world.c:201: case 3:
00113$:
;src/game/world.c:202: p_cities[0] = 0b11000000; // 00000011;
	ld	a,#0xC0
	ld	(bc),a
;src/game/world.c:203: p_cities[1] = 0b00110001; // 10001100;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x31
;src/game/world.c:204: break;
	jr	00116$
;src/game/world.c:206: case 4:
00114$:
;src/game/world.c:207: p_cities[0] = 0b11000100; // 00100011;
	ld	a,#0xC4
	ld	(bc),a
;src/game/world.c:208: p_cities[1] = 0b00001110; // 01110000;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x0E
;src/game/world.c:209: break;
	jr	00116$
;src/game/world.c:211: case 5:
00115$:
;src/game/world.c:212: p_cities[0] = 0b01000000; // 00000010;
	ld	a,#0x40
	ld	(bc),a
;src/game/world.c:213: p_cities[1] = 0b01001110; // 01110010;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),#0x4E
;src/game/world.c:215: }
00116$:
;src/game/world.c:217: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
	ld	l, c
	ld	h, b
	push	bc
	push	hl
	ld	hl,#0x0404
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_patternTile
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	pop	bc
;src/game/world.c:180: for(ix=0; ix<NBURBAN; ix++)
	inc	-19 (ix)
	jr	NZ,00197$
	inc	-18 (ix)
00197$:
	ld	a,-19 (ix)
	sub	a, #0x14
	ld	a,-18 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C,00129$
;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
	ld	de,#0x0013
00133$:
;src/game/world.c:224: iy = cpct_rand16()%(WIDTH*HEIGHT);
	push	de
	call	_cpct_getRandom_mxor_u16
	pop	de
	push	de
	ld	bc,#0x0F00
	push	bc
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	de
;src/game/world.c:225: p_world[iy] = LIVESTOCK;
	ld	bc,#_p_world
	add	hl,bc
	ld	(hl),#0x09
	dec	de
;src/game/world.c:222: for(ix=0; ix<NBLIVESTOCK; ix++)
	ld	a,d
	or	a,e
	jr	NZ,00133$
	ld	sp, ix
	pop	ix
	ret
;src/game/world.c:229: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
;	---------------------------------
; Function drawTile
; ---------------------------------
_drawTile::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game/world.c:232: int adress = (y_+iy)*WIDTH+x_+ix;
	ld	l,5 (ix)
	ld	h,#0x00
	ld	e,7 (ix)
	ld	d,#0x00
	add	hl,de
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e,4 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,6 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e, l
	ld	d, h
;src/game/world.c:234: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
	ld	a,7 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	h,a
	ld	a,6 (ix)
	add	a, a
	add	a, a
	push	de
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	ld	c, l
	ld	b, h
;src/game/world.c:236: switch(p_world[adress])
	ld	hl,#_p_world
	add	hl,de
	ld	e,(hl)
	ld	a,#0x19
	sub	a, e
	jp	C,00128$
	ld	d,#0x00
	ld	hl,#00134$
	add	hl,de
	add	hl,de
	add	hl,de
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
;src/game/world.c:238: case GRASS1:
00101$:
;src/game/world.c:239: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_grass1
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:240: break;
	jp	00128$
;src/game/world.c:241: case GRASS2:
00102$:
;src/game/world.c:242: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_grass2
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:243: break;
	jp	00128$
;src/game/world.c:244: case DWELLINGS1:
00103$:
;src/game/world.c:245: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_dwellings1
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:246: break;
	jp	00128$
;src/game/world.c:247: case DWELLINGS2:
00104$:
;src/game/world.c:248: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_dwellings2
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:249: break;
	jp	00128$
;src/game/world.c:250: case DWELLINGS3:
00105$:
;src/game/world.c:251: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_dwellings3
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:252: break;
	jp	00128$
;src/game/world.c:253: case FARM1:
00106$:
;src/game/world.c:254: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_farm1
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:255: break;
	jp	00128$
;src/game/world.c:256: case FARM2:
00107$:
;src/game/world.c:257: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_farm2
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:258: break;
	jp	00128$
;src/game/world.c:259: case WATER:
00108$:
;src/game/world.c:260: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_water
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:261: break;
	jp	00128$
;src/game/world.c:262: case FOREST:
00109$:
;src/game/world.c:263: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_forest
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:264: break;
	jp	00128$
;src/game/world.c:265: case LIVESTOCK:
00110$:
;src/game/world.c:266: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_livestock
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:267: break;
	jp	00128$
;src/game/world.c:268: case SSNS:
00111$:
;src/game/world.c:269: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_small_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:270: break;
	jp	00128$
;src/game/world.c:271: case SSEW:
00112$:
;src/game/world.c:272: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_small_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:273: break;
	jp	00128$
;src/game/world.c:274: case SMNS:
00113$:
;src/game/world.c:275: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_medium_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:276: break;
	jp	00128$
;src/game/world.c:277: case SMEW:
00114$:
;src/game/world.c:278: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_medium_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:279: break;
	jp	00128$
;src/game/world.c:280: case SLNS:
00115$:
;src/game/world.c:281: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_large_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:282: break;
	jp	00128$
;src/game/world.c:283: case SLEW:
00116$:
;src/game/world.c:284: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_large_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:285: break;
	jp	00128$
;src/game/world.c:286: case REW:
00117$:
;src/game/world.c:287: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:288: break;
	jp	00128$
;src/game/world.c:289: case RNS:
00118$:
;src/game/world.c:290: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:291: break;
	jr	00128$
;src/game/world.c:292: case REN:
00119$:
;src/game/world.c:293: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_en
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:294: break;
	jr	00128$
;src/game/world.c:295: case RES:
00120$:
;src/game/world.c:296: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_es
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:297: break;
	jr	00128$
;src/game/world.c:298: case RWN:
00121$:
;src/game/world.c:299: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_wn
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:300: break;
	jr	00128$
;src/game/world.c:301: case RWS:
00122$:
;src/game/world.c:302: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ws
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:303: break;
	jr	00128$
;src/game/world.c:304: case REWN:
00123$:
;src/game/world.c:305: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ew_n
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:306: break;
	jr	00128$
;src/game/world.c:307: case REWS:
00124$:
;src/game/world.c:308: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ew_s
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:309: break;
	jr	00128$
;src/game/world.c:310: case RNSE:
00125$:
;src/game/world.c:311: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ns_e
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:312: break;
	jr	00128$
;src/game/world.c:313: case RNSW:
00126$:
;src/game/world.c:314: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_rail_ns_w
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/world.c:316: }
00128$:
	pop	ix
	ret
;src/game/world.c:319: void drawScrolls(u8 x_, u8 y_)
;	---------------------------------
; Function drawScrolls
; ---------------------------------
_drawScrolls::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/game/world.c:325: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
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
	ld	bc,#0x003C
	push	bc
	push	hl
	call	__divsint
	pop	af
	pop	af
	ld	d,l
;src/game/world.c:326: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
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
	ld	bc,#0x0024
	push	bc
	push	hl
	call	__divsint
	pop	af
	pop	af
	pop	de
	ld	-1 (ix),l
;src/game/world.c:328: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/world.c:329: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	b,l
	pop	de
	ld	hl,#0x0404
	push	hl
	push	bc
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
;src/game/world.c:331: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
	ld	a,-1 (ix)
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/world.c:332: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	b,l
	pop	de
	ld	hl,#0x1001
	push	hl
	push	bc
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	inc	sp
	pop	ix
	ret
;src/game/world.c:335: void drawWorld(u8 x_, u8 y_)
;	---------------------------------
; Function drawWorld
; ---------------------------------
_drawWorld::
;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
	ld	d,#0x00
;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
00109$:
	ld	e,#0x00
00103$:
;src/game/world.c:344: drawTile(x_, y_, ix, iy);
	push	de
	push	de
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
	pop	de
;src/game/world.c:342: for(ix=0; ix<NBTILE_W;ix++)
	inc	e
	ld	a,e
	sub	a, #0x14
	jr	C,00103$
;src/game/world.c:340: for(iy=0; iy<NBTILE_H;iy++)
	inc	d
	ld	a,d
	sub	a, #0x0C
	jr	C,00109$
;src/game/world.c:348: drawScrolls(x_, y_);
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
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
