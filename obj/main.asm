;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Sun Jan 31 15:56:36 2016
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _putM2
	.globl _putM0
	.globl _drawTrain
	.globl _game
	.globl _drawWorld
	.globl _drawTile
	.globl _generateWorld
	.globl _drawCursor
	.globl _drawWindow
	.globl _drawMenu
	.globl _drawMenuEntry
	.globl _drawBoxM2
	.globl _drawBoxM0
	.globl _strlen
	.globl _cpct_setRandomSeedUniform_u8
	.globl _cpct_getRandomUniform_u8_f
	.globl _cpct_getScreenPtr
	.globl _cpct_setPALColour
	.globl _cpct_setPalette
	.globl _cpct_fw2hw
	.globl _cpct_setVideoMode
	.globl _cpct_drawStringM2
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM1
	.globl _cpct_px2byteM0
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _cpct_disableFirmware
	.globl _cpct_reenableFirmware
	.globl _livestock
	.globl _farm2
	.globl _farm1
	.globl _water
	.globl _dwellings3
	.globl _dwellings2
	.globl _dwellings1
	.globl _forest
	.globl _grass2
	.globl _grass1
	.globl _paletteMenusM2
	.globl _paletteMenusM1
	.globl _paletteTrains
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
;src/includes/gui.h:2: void drawBoxM0(int width_, int height_)
;	---------------------------------
; Function drawBoxM0
; ---------------------------------
_drawBoxM0::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;src/includes/gui.h:7: int left = (80-width_)/2;
	ld	a,#0x50
	sub	a, 4 (ix)
	ld	d,a
	ld	a,#0x00
	sbc	a, 5 (ix)
	ld	e,a
	ld	l, d
	ld	h, e
	bit	7, e
	jr	Z,00103$
	ld	l, d
	ld	h, e
	inc	hl
00103$:
	ld	-7 (ix),l
	ld	-6 (ix),h
	sra	-6 (ix)
	rr	-7 (ix)
;src/includes/gui.h:8: int top = (200-height_)/2;
	ld	a,#0xC8
	sub	a, 6 (ix)
	ld	c,a
	ld	a,#0x00
	sbc	a, 7 (ix)
	ld	b,a
	ld	h,c
	ld	d,b
	bit	7, b
	jr	Z,00104$
	inc	bc
	ld	h,c
	ld	d,b
00104$:
	ld	e, h
	sra	d
	rr	e
;src/includes/gui.h:10: cpct_clearScreen(cpct_px2byteM0(9,9));
	push	de
	ld	hl,#0x0909
	push	hl
	call	_cpct_px2byteM0
	ld	h,l
	ld	bc,#0x4000
	push	bc
	push	hl
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_memset
	pop	de
;src/includes/gui.h:13: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
	ld	-3 (ix), e
	ld	h, e
	inc	h
	inc	h
	inc	h
	inc	h
	ld	a,-7 (ix)
	inc	a
	ld	-4 (ix),a
	push	de
	push	hl
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	ld	c, l
	ld	b, h
;src/includes/gui.h:14: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
	ld	a,6 (ix)
	ld	-5 (ix),a
	ld	a,4 (ix)
	ld	-2 (ix),a
	push	bc
	push	de
	ld	hl,#0x0202
	push	hl
	call	_cpct_px2byteM0
	ld	-1 (ix),l
	pop	de
	pop	bc
	push	de
	ld	h,-5 (ix)
	ld	l,-2 (ix)
	push	hl
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	de
;src/includes/gui.h:17: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
	ld	h,e
	ld	d,-7 (ix)
	push	hl
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/includes/gui.h:18: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
	push	hl
	ld	hl,#0x0606
	push	hl
	call	_cpct_px2byteM0
	ld	b,l
	pop	de
	ld	h,-5 (ix)
	ld	l,-2 (ix)
	push	hl
	push	bc
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
;src/includes/gui.h:21: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
	ld	h,-3 (ix)
	inc	h
	inc	h
	push	hl
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/includes/gui.h:22: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
	ld	a,6 (ix)
	add	a,#0xFC
	ld	c,a
	ld	b,4 (ix)
	dec	b
	dec	b
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	call	_cpct_px2byteM0
	ld	-1 (ix),l
	pop	de
	pop	bc
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	ld	sp,ix
	pop	ix
	ret
_paletteTrains:
	.db #0x00	; 0
	.db #0x1A	; 26
	.db #0x0D	; 13
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x06	; 6
	.db #0x10	; 16
	.db #0x09	; 9
	.db #0x0A	; 10
	.db #0x14	; 20
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x18	; 24
	.db #0x0B	; 11
	.db #0x19	; 25
_paletteMenusM1:
	.db #0x00	; 0
	.db #0x0F	; 15
	.db #0x09	; 9
	.db #0x16	; 22
_paletteMenusM2:
	.db #0x00	; 0
	.db #0x14	; 20
_grass1:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x0F	; 15
_grass2:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
_forest:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x03	; 3
	.db #0x0E	; 14
	.db #0x03	; 3
	.db #0x0E	; 14
	.db #0xEF	; 239
	.db #0x0E	; 14
	.db #0xEF	; 239
	.db #0x0F	; 15
	.db #0xEF	; 239
	.db #0x0E	; 14
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x07	; 7
	.db #0x6F	; 111	'o'
	.db #0x0C	; 12
	.db #0x0F	; 15
	.db #0xCF	; 207
	.db #0x0F	; 15
	.db #0x19	; 25
	.db #0x8F	; 143
	.db #0xCE	; 206
	.db #0x03	; 3
	.db #0x3B	; 59
	.db #0x8F	; 143
	.db #0xCE	; 206
	.db #0xCF	; 207
	.db #0x3B	; 59
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xEF	; 239
	.db #0x3F	; 63
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xEF	; 239
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x1D	; 29
	.db #0xCE	; 206
	.db #0xEF	; 239
	.db #0x09	; 9
	.db #0x3B	; 59
	.db #0x8F	; 143
	.db #0xCE	; 206
	.db #0x67	; 103	'g'
	.db #0x3B	; 59
	.db #0x8F	; 143
	.db #0x1D	; 29
	.db #0xEF	; 239
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x1D	; 29
	.db #0xEF	; 239
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xCF	; 207
_dwellings1:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x0C	; 12
	.db #0x07	; 7
	.db #0x38	; 56	'8'
	.db #0xE1	; 225
	.db #0x1C	; 28
	.db #0xC3	; 195
	.db #0x3C	; 60
	.db #0xE1	; 225
	.db #0x1C	; 28
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x06	; 6
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xC2	; 194
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xC2	; 194
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xC3	; 195
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x38	; 56	'8'
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
_dwellings2:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x01	; 1
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x70	; 112	'p'
	.db #0x0C	; 12
	.db #0x0F	; 15
	.db #0x09	; 9
	.db #0x78	; 120	'x'
	.db #0x1C	; 28
	.db #0x87	; 135
	.db #0x38	; 56	'8'
	.db #0x0F	; 15
	.db #0x1C	; 28
	.db #0x87	; 135
	.db #0x38	; 56	'8'
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0x3C	; 60
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xC3	; 195
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0E	; 14
	.db #0xC3	; 195
	.db #0x70	; 112	'p'
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0xC3	; 195
	.db #0x70	; 112	'p'
	.db #0xC3	; 195
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xC3	; 195
	.db #0x61	; 97	'a'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x69	; 105	'i'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
_dwellings3:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x0E	; 14
	.db #0x03	; 3
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x0E	; 14
	.db #0xE1	; 225
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x0E	; 14
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xE1	; 225
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0xE1	; 225
	.db #0x38	; 56	'8'
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0xC3	; 195
	.db #0x0C	; 12
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1C	; 28
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0x0C	; 12
	.db #0x07	; 7
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1C	; 28
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x09	; 9
	.db #0x1C	; 28
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x38	; 56	'8'
	.db #0x1C	; 28
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0x1E	; 30
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
_water:
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0xAF	; 175
_farm1:
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x61	; 97	'a'
	.db #0x01	; 1
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x61	; 97	'a'
	.db #0x70	; 112	'p'
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x69	; 105	'i'
	.db #0x78	; 120	'x'
	.db #0x2F	; 47
	.db #0xAF	; 175
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x7A	; 122	'z'
	.db #0x7A	; 122	'z'
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x5A	; 90	'Z'
	.db #0xDA	; 218
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x7A	; 122	'z'
	.db #0x7A	; 122	'z'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x5A	; 90	'Z'
	.db #0xDA	; 218
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x7A	; 122	'z'
	.db #0x7A	; 122	'z'
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x5A	; 90	'Z'
	.db #0xDA	; 218
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x7A	; 122	'z'
	.db #0x7A	; 122	'z'
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x5A	; 90	'Z'
	.db #0xDA	; 218
	.db #0x2F	; 47
	.db #0xAF	; 175
	.db #0x7A	; 122	'z'
	.db #0x7A	; 122	'z'
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x5A	; 90	'Z'
	.db #0xDA	; 218
	.db #0x5F	; 95
	.db #0x5F	; 95
	.db #0x7A	; 122	'z'
	.db #0x7A	; 122	'z'
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
_farm2:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0x2D	; 45
	.db #0xA5	; 165
	.db #0xA5	; 165
	.db #0xA5	; 165
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x4B	; 75	'K'
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0x2D	; 45
	.db #0xA5	; 165
	.db #0xA5	; 165
	.db #0xA5	; 165
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x4B	; 75	'K'
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xEF	; 239
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x07	; 7
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x02	; 2
	.db #0xC3	; 195
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x60	; 96
	.db #0xC3	; 195
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x69	; 105	'i'
	.db #0xC3	; 195
	.db #0xAF	; 175
	.db #0xAF	; 175
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
_livestock:
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x61	; 97	'a'
	.db #0xF5	; 245
	.db #0xF5	; 245
	.db #0xE5	; 229
	.db #0x61	; 97	'a'
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x69	; 105	'i'
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0xAD	; 173
	.db #0x0F	; 15
	.db #0x9F	; 159
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x7D	; 125
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x2D	; 45
	.db #0x4B	; 75	'K'
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x2F	; 47
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2D	; 45
	.db #0x5B	; 91
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x2D	; 45
	.db #0x4B	; 75	'K'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x4F	; 79	'O'
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x2D	; 45
	.db #0x4B	; 75	'K'
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x2F	; 47
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2D	; 45
	.db #0x7A	; 122	'z'
	.db #0xFA	; 250
	.db #0xFA	; 250
	.db #0xEB	; 235
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
;src/includes/gui.h:26: void drawBoxM2(int width_, int height_)
;	---------------------------------
; Function drawBoxM2
; ---------------------------------
_drawBoxM2::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;src/includes/gui.h:31: int left = (80-width_)/2;
	ld	a,#0x50
	sub	a, 4 (ix)
	ld	c,a
	ld	a,#0x00
	sbc	a, 5 (ix)
	ld	b,a
	ld	h,c
	ld	d,b
	bit	7, b
	jr	Z,00103$
	inc	bc
	ld	h,c
	ld	d,b
00103$:
	ld	e, h
	sra	d
	rr	e
;src/includes/gui.h:32: int top = (200-height_)/2;
	ld	a,#0xC8
	sub	a, 6 (ix)
	ld	c,a
	ld	a,#0x00
	sbc	a, 7 (ix)
	ld	b,a
	ld	h,c
	ld	l,b
	bit	7, b
	jr	Z,00104$
	inc	bc
	ld	h,c
	ld	l,b
00104$:
	ld	-6 (ix),h
	ld	-5 (ix),l
	sra	-5 (ix)
	rr	-6 (ix)
;src/includes/gui.h:35: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
	ld	a,-6 (ix)
	ld	-4 (ix), a
	add	a, #0x05
	ld	c,a
	ld	-3 (ix), e
	ld	h, e
	inc	h
	inc	h
	push	de
	ld	a,c
	push	af
	inc	sp
	push	hl
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
;src/includes/gui.h:36: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
	ld	b,6 (ix)
	ld	c,4 (ix)
	ld	a,c
	add	a,#0xFF
	ld	-2 (ix),l
	ld	-1 (ix),h
	push	bc
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	de
	pop	bc
;src/includes/gui.h:39: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
	ld	h,-6 (ix)
	ld	d,e
	push	bc
	push	hl
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/includes/gui.h:40: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
	ld	a,4 (ix)
	ex	de,hl
	push	bc
	push	bc
	inc	sp
	ld	b,a
	ld	c,#0xF8
	push	bc
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/includes/gui.h:43: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
	ld	h,-4 (ix)
	inc	h
	ld	d,-3 (ix)
	inc	d
	push	bc
	push	hl
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
	ld	e, l
	ld	d, h
;src/includes/gui.h:44: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
	ld	h,6 (ix)
	dec	h
	dec	h
	ld	a,c
	add	a,#0xFE
	push	hl
	inc	sp
	ld	b,a
	ld	c,#0xFF
	push	bc
	push	de
	call	_cpct_drawSolidBox
	ld	sp,ix
	pop	ix
	ret
;src/includes/gui.h:47: void drawMenuEntry(char **menu , u8 nbEntry, u8 iSelect)
;	---------------------------------
; Function drawMenuEntry
; ---------------------------------
_drawMenuEntry::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;src/includes/gui.h:52: drawBoxM2(30,nbEntry*12);
	ld	c,6 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	push	hl
	ld	hl,#0x001E
	push	hl
	call	_drawBoxM2
	pop	af
	pop	af
;src/includes/gui.h:55: pvideo = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
	ld	c,6 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c,l
	ld	b,h
	ld	a,#0xC9
	sub	a, c
	ld	d,a
	ld	a,#0x00
	sbc	a, b
	ld	e,a
	ld	l, d
	ld	h, e
	bit	7, e
	jr	Z,00114$
	ld	l, d
	ld	h, e
	inc	hl
00114$:
	sra	h
	rr	l
	ld	d,l
	ld	a,7 (ix)
	ld	e,a
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a,d
	push	bc
	ld	d,a
	ld	e,#0x20
	push	de
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/includes/gui.h:56: cpct_drawSolidBox(pvideo, 0b00000000, 17, 10);
	ex	de,hl
	push	bc
	ld	hl,#0x0A11
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/includes/gui.h:59: for(i=0; i<14000; i++) {}
	ld	hl,#0x36B0
00108$:
	dec	hl
	ld	a,h
	or	a,l
	jr	NZ,00108$
;src/includes/gui.h:62: for(i=0; i<nbEntry; i++)
	ld	a,#0xCA
	sub	a, c
	ld	-2 (ix),a
	ld	a,#0x00
	sbc	a, b
	ld	-1 (ix), a
	rlca
	and	a,#0x01
	ld	e,a
	ld	hl,#0x0000
	ex	(sp), hl
00110$:
	ld	h,6 (ix)
	ld	l,#0x00
	ld	a,-6 (ix)
	sub	a, h
	ld	a,-5 (ix)
	sbc	a, l
	jp	PO, 00146$
	xor	a, #0x80
00146$:
	jp	P,00112$
;src/includes/gui.h:64: if(i==iSelect)
	ld	d,7 (ix)
	ld	b,#0x00
	ld	a,-6 (ix)
	sub	a, d
	jr	NZ,00103$
	ld	a,-5 (ix)
	sub	a, b
	jr	NZ,00103$
;src/includes/gui.h:65: penSelected = 1;
	ld	c,#0x01
	jr	00104$
00103$:
;src/includes/gui.h:67: penSelected = 0;
	ld	c,#0x00
00104$:
;src/includes/gui.h:69: pvideo = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,e
	or	a, a
	jr	Z,00115$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
00115$:
	sra	h
	rr	l
	ld	b,l
	ld	l,-6 (ix)
	push	de
	ld	e,l
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	ld	a,b
	add	a, l
	ld	-3 (ix),a
	ld	d,-6 (ix)
	ld	b,-5 (ix)
	sla	d
	rl	b
	ld	a,4 (ix)
	add	a, d
	ld	d,a
	ld	a,5 (ix)
	adc	a, b
	ld	b,a
	ld	l, d
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	bc
	push	de
	push	hl
	call	_strlen
	pop	af
	pop	de
	pop	bc
	ld	a,#0x52
	sub	a, l
	ld	l,a
	ld	a,#0x00
	sbc	a, h
	ld	h,a
	srl	h
	rr	l
	ld	-4 (ix),l
	push	bc
	push	de
	ld	h,-3 (ix)
	ld	l,-4 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
	push	hl
	pop	iy
;src/includes/gui.h:70: cpct_drawStringM2 (menu[i], pvideo, penSelected);
	ld	l, d
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	de
	ld	a,c
	push	af
	inc	sp
	push	iy
	push	hl
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
	pop	de
;src/includes/gui.h:62: for(i=0; i<nbEntry; i++)
	inc	-6 (ix)
	jp	NZ,00110$
	inc	-5 (ix)
	jp	00110$
00112$:
	ld	sp, ix
	pop	ix
	ret
;src/includes/gui.h:74: u8 drawMenu(char **menu, u8 nbEntry)
;	---------------------------------
; Function drawMenu
; ---------------------------------
_drawMenu::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/includes/gui.h:77: u8 iSelect=0;
	ld	d,#0x00
;src/includes/gui.h:79: drawMenuEntry(menu, nbEntry, iSelect);
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	a,6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_drawMenuEntry
	pop	af
	pop	af
	pop	de
;src/includes/gui.h:81: do{
	ld	e,6 (ix)
	dec	e
00111$:
;src/includes/gui.h:82: cpct_scanKeyboard(); 
	push	de
	call	_cpct_scanKeyboard
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	pop	de
	or	a, a
	jr	Z,00105$
;src/includes/gui.h:86: if(iSelect ==0)
	ld	a,d
	or	a, a
	jr	NZ,00102$
;src/includes/gui.h:87: iSelect = nbEntry-1;
	ld	d,e
	jr	00103$
00102$:
;src/includes/gui.h:89: iSelect--;
	dec	d
00103$:
;src/includes/gui.h:91: drawMenuEntry(menu, nbEntry, iSelect);
	push	de
	push	de
	inc	sp
	ld	a,6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_drawMenuEntry
	pop	af
	pop	af
	pop	de
00105$:
;src/includes/gui.h:94: if ( cpct_isKeyPressed(Key_CursorDown) )
	push	de
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	pop	de
	or	a, a
	jr	Z,00112$
;src/includes/gui.h:96: if(iSelect == nbEntry-1)
	ld	c,6 (ix)
	ld	b,#0x00
	dec	bc
	ld	-2 (ix),d
	ld	-1 (ix),#0x00
	ld	a,c
	sub	a, -2 (ix)
	jr	NZ,00107$
	ld	a,b
	sub	a, -1 (ix)
	jr	NZ,00107$
;src/includes/gui.h:97: iSelect = 0;
	ld	d,#0x00
	jr	00108$
00107$:
;src/includes/gui.h:99: iSelect++;
	inc	d
00108$:
;src/includes/gui.h:101: drawMenuEntry(menu, nbEntry, iSelect);
	push	de
	push	de
	inc	sp
	ld	a,6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_drawMenuEntry
	pop	af
	pop	af
	pop	de
00112$:
;src/includes/gui.h:104: while(!cpct_isKeyPressed(Key_Return));
	push	de
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	pop	de
	or	a, a
	jr	Z,00111$
;src/includes/gui.h:107: for(i=0; i<14000; i++) {}
	ld	hl,#0x36B0
00117$:
	ld	c,l
	ld	b,h
	dec	bc
	ld	l, c
	ld	a,b
	ld	h,a
	or	a,c
	jr	NZ,00117$
;src/includes/gui.h:109: return iSelect;
	ld	l,d
	ld	sp, ix
	pop	ix
	ret
;src/includes/gui.h:119: u8 drawWindow(char **text, u8 nbLine, u8 button)
;	---------------------------------
; Function drawWindow
; ---------------------------------
_drawWindow::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;src/includes/gui.h:123: u8 valueReturn=0;
	ld	-10 (ix),#0x00
;src/includes/gui.h:126: if(button == 0)
	ld	a,7 (ix)
	or	a, a
	jr	NZ,00102$
;src/includes/gui.h:127: buttonTxt = "<OK>";
	ld	de,#___str_0
	jr	00103$
00102$:
;src/includes/gui.h:129: buttonTxt = "<OK>  <Cancel>";
	ld	de,#___str_1+0
00103$:
;src/includes/gui.h:131: drawBoxM2(30,(nbLine+2)*12);
	ld	c,6 (ix)
	ld	b,#0x00
	inc	bc
	inc	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	push	bc
	push	de
	push	hl
	ld	hl,#0x001E
	push	hl
	call	_drawBoxM2
	pop	af
	pop	af
	pop	de
	pop	bc
;src/includes/gui.h:133: for(i=0; i<nbLine; i++)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a,#0xCA
	sub	a, l
	ld	-2 (ix),a
	ld	a,#0x00
	sbc	a, h
	ld	-1 (ix), a
	rlca
	and	a,#0x01
	ld	-7 (ix),a
	ld	-11 (ix),#0x00
	ld	-9 (ix),#0x00
00114$:
;src/includes/gui.h:135: pvideo = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
	ld	a,-2 (ix)
	add	a, #0x01
	ld	-4 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
;src/includes/gui.h:133: for(i=0; i<nbLine; i++)
	ld	a,-11 (ix)
	sub	a, 6 (ix)
	jp	NC,00104$
;src/includes/gui.h:135: pvideo = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,-7 (ix)
	or	a, a
	jr	Z,00118$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
00118$:
	sra	h
	rr	l
	ld	h,-9 (ix)
	ld	a,l
	add	a, h
	ld	-8 (ix),a
	ld	l,-11 (ix)
	ld	h,#0x00
	add	hl, hl
	ld	b,l
	ld	c,h
	ld	a,4 (ix)
	add	a, b
	ld	-6 (ix),a
	ld	a,5 (ix)
	adc	a, c
	ld	-5 (ix),a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	push	bc
	call	_strlen
	pop	af
	pop	de
	ld	a,#0x52
	sub	a, l
	ld	l,a
	ld	a,#0x00
	sbc	a, h
	ld	h,a
	srl	h
	rr	l
	ld	b,l
	push	de
	ld	a,-8 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	push	hl
	pop	iy
;src/includes/gui.h:136: cpct_drawStringM2 (text[i], pvideo, 0);
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	xor	a, a
	push	af
	inc	sp
	push	iy
	push	bc
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
	pop	de
;src/includes/gui.h:133: for(i=0; i<nbLine; i++)
	ld	a,-9 (ix)
	add	a, #0x0A
	ld	-9 (ix),a
	inc	-11 (ix)
	jp	00114$
00104$:
;src/includes/gui.h:139: pvideo = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
	ld	b,-2 (ix)
	ld	h,-1 (ix)
	ld	a,-7 (ix)
	or	a, a
	jr	Z,00119$
	ld	b,-4 (ix)
	ld	h,-3 (ix)
00119$:
	sra	h
	rr	b
	ld	c,6 (ix)
	inc	c
	ld	a,c
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	h, a
	add	a,b
	ld	b,a
	push	bc
	push	de
	push	de
	call	_strlen
	pop	af
	pop	de
	pop	bc
	ld	a,#0x52
	sub	a, l
	ld	l,a
	ld	a,#0x00
	sbc	a, h
	ld	h,a
	srl	h
	rr	l
	ld	a,l
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
;src/includes/gui.h:140: cpct_drawStringM2 (buttonTxt, pvideo, 0);
	ld	c, l
	ld	b, h
	xor	a, a
	push	af
	inc	sp
	push	bc
	push	de
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
;src/includes/gui.h:143: do{
00110$:
;src/includes/gui.h:144: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/includes/gui.h:146: if ( cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00106$
;src/includes/gui.h:147: valueReturn=1;
	ld	-10 (ix),#0x01
00106$:
;src/includes/gui.h:149: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00111$
;src/includes/gui.h:150: valueReturn=0;
	ld	-10 (ix),#0x00
00111$:
;src/includes/gui.h:152: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	NZ,00112$
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00110$
00112$:
;src/includes/gui.h:154: return valueReturn;
	ld	l,-10 (ix)
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "<OK>"
	.db 0x00
___str_1:
	.ascii "<OK>  <Cancel>"
	.db 0x00
;src/includes/world.h:16: void drawCursor(u8 x, u8 y, u8 color)
;	---------------------------------
; Function drawCursor
; ---------------------------------
_drawCursor::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/includes/world.h:20: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
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
;src/includes/world.h:21: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
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
;src/includes/world.h:22: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
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
;src/includes/world.h:23: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
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
	ld	h,l
	pop	de
	pop	bc
	ld	l,c
	ld	e,b
	push	de
	ld	bc,#0x0004
	push	bc
	push	hl
	inc	sp
	ld	h, e
	push	hl
	call	_cpct_memset
	pop	de
;src/includes/world.h:26: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
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
;src/includes/world.h:27: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
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
;src/includes/world.h:28: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
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
;src/includes/world.h:29: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
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
	inc	sp
	pop	ix
	ret
;src/includes/world.h:33: void generateWorld(u8 *p_world)
;	---------------------------------
; Function generateWorld
; ---------------------------------
_generateWorld::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/includes/world.h:39: cpct_setRandomSeedUniform_u8(0);
	ld	l,#0x00
	call	_cpct_setRandomSeedUniform_u8
;src/includes/world.h:41: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	ld	de,#0x0000
00115$:
;src/includes/world.h:43: p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,de
	push	hl
	push	de
	ld	l,#0x00
	call	_cpct_getRandomUniform_u8_f
	ld	a,l
	pop	de
	pop	hl
	and	a, #0x01
	ld	(hl),a
;src/includes/world.h:41: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	inc	de
	ld	a,d
	xor	a, #0x80
	sub	a, #0x8F
	jr	C,00115$
;src/includes/world.h:47: for(ix=0; ix<NBFOREST; ix++)
	ld	de,#0x0000
00117$:
;src/includes/world.h:49: iy = cpct_getRandomUniform_u8_f(0)*15; // (WIDTH*HEIGHT)/255;
	push	de
	ld	l,#0x00
	call	_cpct_getRandomUniform_u8_f
	pop	de
	ld	c,l
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	c,l
	ld	b,h
;src/includes/world.h:50: p_world[iy] = FOREST;
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,bc
	ld	(hl),#0x08
;src/includes/world.h:47: for(ix=0; ix<NBFOREST; ix++)
	inc	de
	ld	a,e
	sub	a, #0x64
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00117$
;src/includes/world.h:54: cpct_setRandomSeedUniform_u8(1);
	ld	l,#0x01
	call	_cpct_setRandomSeedUniform_u8
;src/includes/world.h:56: for(ix=0; ix<NBFARM; ix++)
	ld	hl,#0x0000
	ex	(sp), hl
00119$:
;src/includes/world.h:58: iy = cpct_getRandomUniform_u8_f(1)*15; // (WIDTH*HEIGHT)/255;
	ld	l,#0x01
	call	_cpct_getRandomUniform_u8_f
	ld	c,l
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
;src/includes/world.h:60: shift = cpct_getRandomUniform_u8_f(1)%10;
	push	hl
	ld	l,#0x01
	call	_cpct_getRandomUniform_u8_f
	ld	b,l
	ld	a,#0x0A
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar
	pop	af
	pop	de
	ld	h,#0x00
;src/includes/world.h:61: shift=iy-shift+5;
	ld	a,e
	sub	a, l
	ld	e,a
	ld	a,d
	sbc	a, h
	ld	d,a
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
;src/includes/world.h:63: if(shift>0 && shift<WIDTH*HEIGHT)
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00192$
	xor	a, #0x80
00192$:
	jp	P,00120$
	ld	a,d
	xor	a, #0x80
	sub	a, #0x8F
	jr	NC,00120$
;src/includes/world.h:64: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(1)%2+5;
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,de
	push	hl
	ld	l,#0x01
	call	_cpct_getRandomUniform_u8_f
	ld	a,l
	pop	hl
	and	a, #0x01
	add	a, #0x05
	ld	(hl),a
00120$:
;src/includes/world.h:56: for(ix=0; ix<NBFARM; ix++)
	inc	-4 (ix)
	jr	NZ,00193$
	inc	-3 (ix)
00193$:
	ld	a,-4 (ix)
	sub	a, #0x3C
	ld	a,-3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00119$
;src/includes/world.h:69: cpct_setRandomSeedUniform_u8(2);
	ld	l,#0x02
	call	_cpct_setRandomSeedUniform_u8
;src/includes/world.h:71: for(ix=0; ix<NBURBAN; ix++)
	ld	hl,#0x0000
	ex	(sp), hl
00121$:
;src/includes/world.h:73: iy = cpct_getRandomUniform_u8_f(2)*15; // (WIDTH*HEIGHT)/255;
	ld	l,#0x02
	call	_cpct_getRandomUniform_u8_f
	ld	c,l
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
;src/includes/world.h:75: shift = cpct_getRandomUniform_u8_f(2)%10;
	push	hl
	ld	l,#0x02
	call	_cpct_getRandomUniform_u8_f
	ld	b,l
	ld	a,#0x0A
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar
	pop	af
	pop	de
	ld	h,#0x00
;src/includes/world.h:76: shift=iy-shift+5;
	ld	a,e
	sub	a, l
	ld	c,a
	ld	a,d
	sbc	a, h
	ld	b,a
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;src/includes/world.h:78: if(shift>0 && shift<WIDTH*HEIGHT)
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00194$
	xor	a, #0x80
00194$:
	jp	P,00122$
	ld	a,b
	xor	a, #0x80
	sub	a, #0x8F
	jr	NC,00122$
;src/includes/world.h:79: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(2)%3+2;
	ld	a,4 (ix)
	add	a, c
	ld	e,a
	ld	a,5 (ix)
	adc	a, b
	ld	d,a
	push	de
	ld	l,#0x02
	call	_cpct_getRandomUniform_u8_f
	ld	b,l
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
	ld	(de),a
00122$:
;src/includes/world.h:71: for(ix=0; ix<NBURBAN; ix++)
	inc	-4 (ix)
	jr	NZ,00195$
	inc	-3 (ix)
00195$:
	ld	a,-4 (ix)
	sub	a, #0x1E
	ld	a,-3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00121$
;src/includes/world.h:84: cpct_setRandomSeedUniform_u8(3);
	ld	l,#0x03
	call	_cpct_setRandomSeedUniform_u8
;src/includes/world.h:86: for(ix=0; ix<NBLIVESTOCK; ix++)
	ld	de,#0x0000
00123$:
;src/includes/world.h:88: iy = cpct_getRandomUniform_u8_f(3)*15; // (WIDTH*HEIGHT)/255;
	push	de
	ld	l,#0x03
	call	_cpct_getRandomUniform_u8_f
	pop	de
	ld	c,l
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/includes/world.h:90: shift = cpct_getRandomUniform_u8_f(3)%10;
	push	de
	ld	l,#0x03
	call	_cpct_getRandomUniform_u8_f
	ld	b,l
	ld	a,#0x0A
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar
	pop	af
	pop	de
	ld	h,#0x00
;src/includes/world.h:91: shift=iy-shift+5;
	ld	a,-2 (ix)
	sub	a, l
	ld	c,a
	ld	a,-1 (ix)
	sbc	a, h
	ld	b,a
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;src/includes/world.h:93: if(shift>0 && shift<WIDTH*HEIGHT)
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00196$
	xor	a, #0x80
00196$:
	jp	P,00124$
	ld	a,b
	xor	a, #0x80
	sub	a, #0x8F
	jr	NC,00124$
;src/includes/world.h:94: p_world[shift] = LIVESTOCK;
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,bc
	ld	(hl),#0x09
00124$:
;src/includes/world.h:86: for(ix=0; ix<NBLIVESTOCK; ix++)
	inc	de
	ld	a,e
	sub	a, #0x14
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00123$
	ld	sp, ix
	pop	ix
	ret
;src/includes/world.h:98: void drawTile(u8 *p_world, u8 x_, u8 y_, u8 ix, u8 iy)
;	---------------------------------
; Function drawTile
; ---------------------------------
_drawTile::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/includes/world.h:101: int adress = (y_+iy)*WIDTH+x_+ix;
	ld	l,7 (ix)
	ld	h,#0x00
	ld	e,9 (ix)
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
	ld	e,6 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,8 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e, l
	ld	d, h
;src/includes/world.h:103: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
	ld	a,9 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	h,a
	ld	a,8 (ix)
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
;src/includes/world.h:105: switch(p_world[adress])
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,de
	ld	e,(hl)
	ld	a,#0x09
	sub	a, e
	jp	C,00112$
	ld	d,#0x00
	ld	hl,#00118$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00118$:
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
;src/includes/world.h:107: case GRASS1:
00101$:
;src/includes/world.h:108: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_grass1
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:109: break;
	jp	00112$
;src/includes/world.h:110: case GRASS2:
00102$:
;src/includes/world.h:111: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_grass2
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:112: break;
	jr	00112$
;src/includes/world.h:113: case DWELLINGS1:
00103$:
;src/includes/world.h:114: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_dwellings1
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:115: break;
	jr	00112$
;src/includes/world.h:116: case DWELLINGS2:
00104$:
;src/includes/world.h:117: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_dwellings2
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:118: break;
	jr	00112$
;src/includes/world.h:119: case DWELLINGS3:
00105$:
;src/includes/world.h:120: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_dwellings3
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:121: break;
	jr	00112$
;src/includes/world.h:122: case FARM1:
00106$:
;src/includes/world.h:123: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_farm1
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:124: break;
	jr	00112$
;src/includes/world.h:125: case FARM2:
00107$:
;src/includes/world.h:126: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_farm2
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:127: break;
	jr	00112$
;src/includes/world.h:128: case WATER:
00108$:
;src/includes/world.h:129: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_water
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:130: break;
	jr	00112$
;src/includes/world.h:131: case FOREST:
00109$:
;src/includes/world.h:132: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_forest
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:133: break;
	jr	00112$
;src/includes/world.h:134: case LIVESTOCK:
00110$:
;src/includes/world.h:135: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_livestock
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:137: }
00112$:
	pop	ix
	ret
;src/includes/world.h:140: void drawWorld(u8 *p_world, u8 x_, u8 y_)
;	---------------------------------
; Function drawWorld
; ---------------------------------
_drawWorld::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/includes/world.h:148: for(iy=0; iy<NBTILE_H;iy++)
	ld	d,#0x00
;src/includes/world.h:150: for(ix=0; ix<NBTILE_W;ix++)
00109$:
	ld	e,#0x00
00103$:
;src/includes/world.h:152: drawTile(p_world, x_, y_, ix, iy);
	push	de
	push	de
	ld	h,7 (ix)
	ld	l,6 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_drawTile
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;src/includes/world.h:150: for(ix=0; ix<NBTILE_W;ix++)
	inc	e
	ld	a,e
	sub	a, #0x14
	jr	C,00103$
;src/includes/world.h:148: for(iy=0; iy<NBTILE_H;iy++)
	inc	d
	ld	a,d
	sub	a, #0x0C
	jr	C,00109$
;src/includes/world.h:158: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
	ld	c,6 (ix)
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
;src/includes/world.h:159: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
	ld	c,7 (ix)
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
;src/includes/world.h:161: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/includes/world.h:162: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
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
;src/includes/world.h:164: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
	ld	a,-1 (ix)
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/includes/world.h:165: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
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
;src/includes/game.h:1: void game()
;	---------------------------------
; Function game
; ---------------------------------
_game::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-3875
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:4: int ulx = 0;
	ld	-28 (ix),#0x00
	ld	-27 (ix),#0x00
;src/includes/game.h:5: int uly = 0;
	ld	-26 (ix),#0x00
	ld	-25 (ix),#0x00
;src/includes/game.h:6: int xCursor = 10;
	ld	-33 (ix),#0x0A
	ld	-32 (ix),#0x00
;src/includes/game.h:7: int yCursor = 6;
	ld	-35 (ix),#0x06
	ld	-34 (ix),#0x00
;src/includes/game.h:9: u8 exit=0;
	ld	-29 (ix),#0x00
;src/includes/game.h:11: cpct_setVideoMode(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/includes/game.h:12: cpct_setPalette(paletteMenusM1, 4);
	ld	hl,#0x0004
	push	hl
	ld	hl,#_paletteMenusM1
	push	hl
	call	_cpct_setPalette
;src/includes/game.h:13: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	h,l
	ld	bc,#0x4000
	push	bc
	push	hl
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_memset
;src/includes/game.h:15: generateWorld(p_world);
	ld	hl,#0x0000
	add	hl,sp
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	call	_generateWorld
	pop	af
;src/includes/game.h:17: drawWorld(p_world, ulx, uly);
	ld	a,-6 (ix)
	ld	-20 (ix),a
	ld	a,-5 (ix)
	ld	-19 (ix),a
	ld	hl,#0x0000
	push	hl
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	push	hl
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:19: do{
	ld	a,-6 (ix)
	ld	-20 (ix),a
	ld	a,-5 (ix)
	ld	-19 (ix),a
	ld	a,-6 (ix)
	ld	-14 (ix),a
	ld	a,-5 (ix)
	ld	-13 (ix),a
	ld	a,-6 (ix)
	ld	-22 (ix),a
	ld	a,-5 (ix)
	ld	-21 (ix),a
	ld	a,-6 (ix)
	ld	-12 (ix),a
	ld	a,-5 (ix)
	ld	-11 (ix),a
	ld	a,-6 (ix)
	ld	-10 (ix),a
	ld	a,-5 (ix)
	ld	-9 (ix),a
	ld	a,-6 (ix)
	ld	-18 (ix),a
	ld	a,-5 (ix)
	ld	-17 (ix),a
	ld	a,-6 (ix)
	ld	-16 (ix),a
	ld	a,-5 (ix)
	ld	-15 (ix),a
00133$:
;src/includes/game.h:20: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/includes/game.h:22: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	d,l
;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	a,-33 (ix)
	ld	-4 (ix),a
	ld	a,-26 (ix)
	ld	-1 (ix),a
	ld	a,-28 (ix)
	ld	-23 (ix),a
;src/includes/game.h:22: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	a,d
	or	a, a
	jp	Z,00107$
;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	a,-35 (ix)
	ld	-24 (ix),a
	ld	a,-14 (ix)
	ld	-8 (ix),a
	ld	a,-13 (ix)
	ld	-7 (ix),a
	ld	h,-24 (ix)
	ld	l,-4 (ix)
	push	hl
	ld	h,-1 (ix)
	ld	l,-23 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_drawTile
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:26: yCursor-=1;
	ld	l,-35 (ix)
	ld	h,-34 (ix)
	dec	hl
	ld	-35 (ix),l
	ld	-34 (ix),h
;src/includes/game.h:29: if(yCursor<0)
	bit	7, -34 (ix)
	jr	Z,00153$
;src/includes/game.h:31: yCursor=0;
	ld	-35 (ix),#0x00
	ld	-34 (ix),#0x00
;src/includes/game.h:34: if(uly>0)
	xor	a, a
	cp	a, -26 (ix)
	sbc	a, -25 (ix)
	jp	PO, 00230$
	xor	a, #0x80
00230$:
	jp	P,00153$
;src/includes/game.h:36: uly-=1;
	ld	l,-26 (ix)
	ld	h,-25 (ix)
	dec	hl
	ld	-26 (ix),l
	ld	-25 (ix),h
;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	a,-26 (ix)
	ld	-1 (ix),a
;src/includes/game.h:37: drawWorld(p_world, ulx, uly);
	ld	e,-20 (ix)
	ld	d,-19 (ix)
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	a,-23 (ix)
	push	af
	inc	sp
	push	de
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:42: for(i=0; i<14000; i++) {}
00153$:
	ld	de,#0x36B0
00138$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00138$
00107$:
;src/includes/game.h:45: if ( cpct_isKeyPressed(Key_CursorDown) )
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00114$
;src/includes/game.h:47: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	a,-35 (ix)
	ld	-8 (ix),a
	ld	a,-12 (ix)
	ld	-3 (ix),a
	ld	a,-11 (ix)
	ld	-2 (ix),a
	ld	h,-8 (ix)
	ld	l,-4 (ix)
	push	hl
	ld	h,-1 (ix)
	ld	l,-23 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	call	_drawTile
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:48: yCursor+=1;
	inc	-35 (ix)
	jr	NZ,00231$
	inc	-34 (ix)
00231$:
;src/includes/game.h:49: if(yCursor>NBTILE_H-1)
	ld	a,#0x0B
	cp	a, -35 (ix)
	ld	a,#0x00
	sbc	a, -34 (ix)
	jp	PO, 00232$
	xor	a, #0x80
00232$:
	jp	P,00158$
;src/includes/game.h:51: yCursor=NBTILE_H-1;
	ld	-35 (ix),#0x0B
	ld	-34 (ix),#0x00
;src/includes/game.h:52: if(uly<HEIGHT-NBTILE_H)
	ld	a,-26 (ix)
	sub	a, #0x24
	ld	a,-25 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00158$
;src/includes/game.h:54: uly+=1;
	inc	-26 (ix)
	jr	NZ,00233$
	inc	-25 (ix)
00233$:
;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	a,-26 (ix)
	ld	-1 (ix),a
;src/includes/game.h:55: drawWorld(p_world, ulx, uly);
	ld	a,-22 (ix)
	ld	-3 (ix),a
	ld	a,-21 (ix)
	ld	-2 (ix),a
	ld	h,-1 (ix)
	ld	l,-23 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:60: for(i=0; i<5000; i++) {}
00158$:
	ld	-31 (ix),#0x88
	ld	-30 (ix),#0x13
00141$:
	ld	l,-31 (ix)
	ld	h,-30 (ix)
	dec	hl
	ld	-31 (ix),l
	ld	-30 (ix), h
	ld	a, h
	or	a,-31 (ix)
	jr	NZ,00141$
00114$:
;src/includes/game.h:63: if ( cpct_isKeyPressed(Key_CursorLeft) )
	ld	hl,#0x0101
	call	_cpct_isKeyPressed
	ld	d,l
;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	a,-35 (ix)
	ld	-3 (ix),a
;src/includes/game.h:63: if ( cpct_isKeyPressed(Key_CursorLeft) )
	ld	a,d
	or	a, a
	jp	Z,00121$
;src/includes/game.h:65: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	e,-18 (ix)
	ld	d,-17 (ix)
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	a,-23 (ix)
	push	af
	inc	sp
	push	de
	call	_drawTile
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:66: xCursor-=1;
	ld	l,-33 (ix)
	ld	h,-32 (ix)
	dec	hl
	ld	-33 (ix),l
	ld	-32 (ix),h
;src/includes/game.h:67: if(xCursor<0)
	bit	7, -32 (ix)
	jr	Z,00163$
;src/includes/game.h:69: xCursor=0;
	ld	-33 (ix),#0x00
	ld	-32 (ix),#0x00
;src/includes/game.h:70: if(ulx>0)
	xor	a, a
	cp	a, -28 (ix)
	sbc	a, -27 (ix)
	jp	PO, 00234$
	xor	a, #0x80
00234$:
	jp	P,00163$
;src/includes/game.h:72: ulx-=1;
	ld	l,-28 (ix)
	ld	h,-27 (ix)
	dec	hl
	ld	-28 (ix),l
	ld	-27 (ix),h
;src/includes/game.h:24: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	a,-28 (ix)
	ld	-23 (ix),a
;src/includes/game.h:73: drawWorld(p_world, ulx, uly);
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	a,-23 (ix)
	push	af
	inc	sp
	push	de
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:78: for(i=0; i<14000; i++) {}
00163$:
	ld	de,#0x36B0
00144$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00144$
00121$:
;src/includes/game.h:81: if ( cpct_isKeyPressed(Key_CursorRight) )
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00128$
;src/includes/game.h:83: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	d,-33 (ix)
	ld	c,-6 (ix)
	ld	b,-5 (ix)
	ld	a,-3 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	a,-23 (ix)
	push	af
	inc	sp
	push	bc
	call	_drawTile
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:84: xCursor+=1;
	inc	-33 (ix)
	jr	NZ,00235$
	inc	-32 (ix)
00235$:
;src/includes/game.h:85: if(xCursor>NBTILE_W-1)
	ld	a,#0x13
	cp	a, -33 (ix)
	ld	a,#0x00
	sbc	a, -32 (ix)
	jp	PO, 00236$
	xor	a, #0x80
00236$:
	jp	P,00168$
;src/includes/game.h:87: xCursor=NBTILE_W-1;
	ld	-33 (ix),#0x13
	ld	-32 (ix),#0x00
;src/includes/game.h:88: if(ulx<WIDTH-NBTILE_W)
	ld	a,-28 (ix)
	sub	a, #0x3C
	ld	a,-27 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00168$
;src/includes/game.h:90: ulx+=1;
	inc	-28 (ix)
	jr	NZ,00237$
	inc	-27 (ix)
00237$:
;src/includes/game.h:91: drawWorld(p_world, ulx, uly);
	ld	b,-28 (ix)
	ld	e,-16 (ix)
	ld	d,-15 (ix)
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:96: for(i=0; i<14000; i++) {}
00168$:
	ld	de,#0x36B0
00147$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00147$
00128$:
;src/includes/game.h:99: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00130$
;src/includes/game.h:101: exit=1;
	ld	-29 (ix),#0x01
00130$:
;src/includes/game.h:104: if ( cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
;src/includes/game.h:110: drawCursor(xCursor, yCursor, 0);
	ld	d,-33 (ix)
	xor	a, a
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_drawCursor
	pop	af
	inc	sp
;src/includes/game.h:112: while(!exit);
	ld	a,-29 (ix)
	or	a, a
	jp	Z,00133$
	ld	sp, ix
	pop	ix
	ret
;src/main.c:16: void drawTrain() 
;	---------------------------------
; Function drawTrain
; ---------------------------------
_drawTrain::
;src/main.c:54: }
	ret
;src/main.c:56: void putM0(void)
;	---------------------------------
; Function putM0
; ---------------------------------
_putM0::
;src/main.c:58: cpct_setVideoMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/main.c:60: cpct_setPalette(paletteTrains, 16);
	ld	hl,#_paletteTrains
	ld	bc,#0x0010
	push	bc
	push	hl
	call	_cpct_setPalette
	ret
;src/main.c:63: void putM2(void)
;	---------------------------------
; Function putM2
; ---------------------------------
_putM2::
;src/main.c:65: cpct_setVideoMode(2);
	ld	a,#0x02
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/main.c:67: cpct_setPalette(paletteMenusM2, 2);
	ld	hl,#_paletteMenusM2
	ld	bc,#0x0002
	push	bc
	push	hl
	call	_cpct_setPalette
	ret
;src/main.c:70: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-18
	add	hl,sp
	ld	sp,hl
;src/main.c:75: const char *menuMain[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_2)
	inc	hl
	ld	(hl),#>(___str_2)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_4+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/main.c:81: const char *windowCredit[] = { 
	ld	hl,#0x0006
	add	hl,sp
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#<(___str_5)
	inc	hl
	ld	(hl),#>(___str_5)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	inc	hl
	ld	bc,#___str_6+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,-4 (ix)
	add	a, #0x04
	ld	l,a
	ld	a,-3 (ix)
	adc	a, #0x00
	ld	h,a
	ld	bc,#___str_7+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/main.c:87: firmware = cpct_disableFirmware();
	push	de
	call	_cpct_disableFirmware
	pop	de
	ld	-6 (ix),l
	ld	-5 (ix),h
;src/main.c:89: cpct_fw2hw(paletteTrains, 16);
	ld	hl,#_paletteTrains
	push	de
	ld	bc,#0x0010
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:90: cpct_fw2hw(paletteMenusM2, 2);
	ld	hl,#_paletteMenusM2
	push	de
	ld	bc,#0x0002
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:91: cpct_fw2hw(paletteMenusM1, 4);
	ld	hl,#_paletteMenusM1
	push	de
	ld	bc,#0x0004
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:93: cpct_setBorder(paletteTrains[12]);
	ld	a, (#_paletteTrains + 12)
	push	de
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
	call	_putM2
	pop	de
;src/main.c:97: do{
	ld	-2 (ix),e
	ld	-1 (ix),d
00105$:
;src/main.c:98: cpct_clearScreen(0b11111111);
	ld	hl,#0x4000
	push	hl
	ld	a,#0xFF
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:100: menuChoice = drawMenu(menuMain,3);
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	ld	a,#0x03
	push	af
	inc	sp
	push	de
	call	_drawMenu
	pop	af
	inc	sp
	ld	d,l
;src/main.c:102: if(menuChoice==0)
	ld	a,d
	or	a, a
	jr	NZ,00102$
;src/main.c:104: game();
	push	de
	call	_game
	call	_putM2
	pop	de
00102$:
;src/main.c:109: if(menuChoice==1)
	ld	a,d
	dec	a
	jr	NZ,00106$
;src/main.c:110: drawWindow(windowCredit,3,0);
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	push	de
	ld	hl,#0x0003
	push	hl
	push	bc
	call	_drawWindow
	pop	af
	pop	af
	pop	de
00106$:
;src/main.c:112: while(menuChoice!=2);
	ld	a,d
	sub	a, #0x02
	jr	NZ,00105$
;src/main.c:114: cpct_setVideoMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/main.c:115: cpct_reenableFirmware(firmware);
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	call	_cpct_reenableFirmware
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "New game"
	.db 0x00
___str_3:
	.ascii "Credits"
	.db 0x00
___str_4:
	.ascii "Quit"
	.db 0x00
___str_5:
	.ascii "Railwayz"
	.db 0x00
___str_6:
	.db 0x00
___str_7:
	.ascii "Trewdbal  Productions 2016"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
