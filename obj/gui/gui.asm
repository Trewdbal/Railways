;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module gui
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl _cpct_getScreenPtr
	.globl _cpct_setPalette
	.globl _cpct_setVideoMode
	.globl _cpct_drawStringM2
	.globl _cpct_drawSolidBox
	.globl _cpct_px2byteM0
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _putM0
	.globl _putM1
	.globl _putM2
	.globl _drawBoxM0
	.globl _drawBoxM2
	.globl _EraseMenuEntry
	.globl _drawMenuEntry
	.globl _drawMenu
	.globl _drawWindow
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
;src/gui/gui.c:3: void putM0(void)
;	---------------------------------
; Function putM0
; ---------------------------------
_putM0::
;src/gui/gui.c:5: cpct_setVideoMode(0);
	ld	l, #0x00
	call	_cpct_setVideoMode
;src/gui/gui.c:7: cpct_setPalette(paletteTrains, 16);
	ld	hl, #0x0010
	push	hl
	ld	hl, #_paletteTrains
	push	hl
	call	_cpct_setPalette
	ret
;src/gui/gui.c:10: void putM1(void)
;	---------------------------------
; Function putM1
; ---------------------------------
_putM1::
;src/gui/gui.c:12: cpct_setVideoMode(1);
	ld	l, #0x01
	call	_cpct_setVideoMode
;src/gui/gui.c:14: cpct_setPalette(paletteMenusM1, 4);
	ld	hl, #0x0004
	push	hl
	ld	hl, #_paletteMenusM1
	push	hl
	call	_cpct_setPalette
	ret
;src/gui/gui.c:17: void putM2(void)
;	---------------------------------
; Function putM2
; ---------------------------------
_putM2::
;src/gui/gui.c:19: cpct_setVideoMode(2);
	ld	l, #0x02
	call	_cpct_setVideoMode
;src/gui/gui.c:21: cpct_setPalette(paletteMenusM2, 2);
	ld	hl, #0x0002
	push	hl
	ld	hl, #_paletteMenusM2
	push	hl
	call	_cpct_setPalette
;src/gui/gui.c:22: cpct_clearScreen(0b11111111);
	ld	hl, #0x4000
	push	hl
	ld	a, #0xff
	push	af
	inc	sp
	ld	h, #0xc0
	push	hl
	call	_cpct_memset
	ret
;src/gui/gui.c:25: void drawBoxM0(int width_, int height_)
;	---------------------------------
; Function drawBoxM0
; ---------------------------------
_drawBoxM0::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;src/gui/gui.c:30: int left = (80-width_)/2;
	ld	a, #0x50
	sub	a, 4 (ix)
	ld	e, a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	d, a
	ld	c, e
	ld	b, d
	bit	7, d
	jr	Z,00103$
	ld	c, e
	ld	b, d
	inc	bc
00103$:
	sra	b
	rr	c
;src/gui/gui.c:31: int top = (200-height_)/2;
	ld	a, #0xc8
	sub	a, 6 (ix)
	ld	l, a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	h, a
	ld	d, l
	ld	e, h
	bit	7, h
	jr	Z,00104$
	inc	hl
	ld	d, l
	ld	e, h
00104$:
	ld	-7 (ix), d
	ld	-6 (ix), e
	sra	-6 (ix)
	rr	-7 (ix)
;src/gui/gui.c:33: cpct_clearScreen(cpct_px2byteM0(9,9));
	push	bc
	ld	hl, #0x0909
	push	hl
	call	_cpct_px2byteM0
	ld	d, l
	ld	hl, #0x4000
	push	hl
	push	de
	inc	sp
	ld	h, #0xc0
	push	hl
	call	_cpct_memset
	pop	bc
;src/gui/gui.c:36: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
	ld	a, -7 (ix)
	ld	-4 (ix), a
	ld	e, a
	inc	e
	inc	e
	inc	e
	inc	e
	ld	a, c
	inc	a
	ld	-2 (ix), a
	push	bc
	ld	d, e
	ld	e, -2 (ix)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/gui/gui.c:37: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
	ld	a, 6 (ix)
	ld	-5 (ix), a
	ld	a, 4 (ix)
	ld	-1 (ix), a
	push	hl
	push	bc
	ld	de, #0x0202
	push	de
	call	_cpct_px2byteM0
	ld	-3 (ix), l
	pop	bc
	pop	hl
	ex	de,hl
	push	bc
	ld	h, -5 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	a, -3 (ix)
	push	af
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/gui/gui.c:40: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
	ld	d, -7 (ix)
	ld	e, c
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/gui/gui.c:41: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
	push	hl
	ld	hl, #0x0606
	push	hl
	call	_cpct_px2byteM0
	ld	d, l
	pop	bc
	ld	h, -5 (ix)
	ld	l, -1 (ix)
	push	hl
	push	de
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
;src/gui/gui.c:44: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
	ld	b, -4 (ix)
	inc	b
	inc	b
	push	bc
	inc	sp
	ld	a, -2 (ix)
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/gui/gui.c:45: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
	ld	a, 6 (ix)
	add	a, #0xfc
	ld	b, a
	ld	c, 4 (ix)
	dec	c
	dec	c
	push	hl
	push	bc
	ld	de, #0x0000
	push	de
	call	_cpct_px2byteM0
	ld	-3 (ix), l
	pop	bc
	pop	hl
	ex	de,hl
	push	bc
	ld	a, -3 (ix)
	push	af
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	ld	sp,ix
	pop	ix
	ret
;src/gui/gui.c:49: void drawBoxM2(int width_, int height_)
;	---------------------------------
; Function drawBoxM2
; ---------------------------------
_drawBoxM2::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;src/gui/gui.c:54: int left = (80-width_)/2;
	ld	a, #0x50
	sub	a, 4 (ix)
	ld	e, a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	d, a
	ld	c, e
	ld	b, d
	bit	7, d
	jr	Z,00103$
	ld	c, e
	ld	b, d
	inc	bc
00103$:
	sra	b
	rr	c
;src/gui/gui.c:55: int top = (200-height_)/2;
	ld	a, #0xc8
	sub	a, 6 (ix)
	ld	l, a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	h, a
	ld	d, l
	ld	e, h
	bit	7, h
	jr	Z,00104$
	inc	hl
	ld	d, l
	ld	e, h
00104$:
	ld	-6 (ix), d
	ld	-5 (ix), e
	sra	-5 (ix)
	rr	-6 (ix)
;src/gui/gui.c:58: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
	ld	a, -6 (ix)
	ld	-4 (ix), a
	add	a, #0x05
	ld	e, a
	ld	-1 (ix), c
	ld	d, c
	inc	d
	inc	d
	push	bc
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/gui/gui.c:59: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
	ld	d, 6 (ix)
	ld	e, 4 (ix)
	ld	a, e
	add	a, #0xff
	ld	-3 (ix), l
	ld	-2 (ix), h
	push	bc
	push	de
	ld	e, a
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	de
	pop	bc
;src/gui/gui.c:62: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
	ld	h, -6 (ix)
	ld	b, c
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
;src/gui/gui.c:63: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
	ld	a, 4 (ix)
	push	de
	ld	e, a
	push	de
	ld	a, #0xf8
	push	af
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	de
;src/gui/gui.c:66: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
	ld	d, -4 (ix)
	inc	d
	ld	b, -1 (ix)
	inc	b
	push	de
	ld	e, b
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
	pop	de
;src/gui/gui.c:67: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
	ld	d, 6 (ix)
	dec	d
	dec	d
	dec	e
	dec	e
	push	de
	inc	sp
	ld	d, e
	ld	e,#0xff
	push	de
	push	bc
	call	_cpct_drawSolidBox
	ld	sp,ix
	pop	ix
	ret
;src/gui/gui.c:70: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
;	---------------------------------
; Function EraseMenuEntry
; ---------------------------------
_EraseMenuEntry::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/gui/gui.c:75: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
	ld	c,6 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	a, #0xc9
	sub	a, c
	ld	l, a
	ld	a, #0x00
	sbc	a, b
	ld	h, a
	ld	e, l
	ld	d, h
	bit	7, h
	jr	Z,00103$
	ld	e, l
	ld	d, h
	inc	de
00103$:
	sra	d
	rr	e
	ld	d, e
	ld	l, 7 (ix)
	ld	e, l
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	-1 (ix), l
	ld	a, d
	add	a, -1 (ix)
	ld	d, a
	push	bc
	ld	e, #0x20
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	de, #0x0a11
	push	de
	ld	a, #0xff
	push	af
	inc	sp
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/gui/gui.c:79: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
	ld	a, #0xca
	sub	a, c
	ld	e, a
	ld	a, #0x00
	sbc	a, b
	ld	d, a
	ld	c, e
	ld	b, d
	bit	7, d
	jr	Z,00104$
	ld	c, e
	ld	b, d
	inc	bc
00104$:
	sra	b
	rr	c
	ld	a, c
	add	a, -1 (ix)
	ld	e, a
	ld	l, 7 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_strlen
	pop	af
	ld	c, l
	ld	b, h
	pop	hl
	ld	a, #0x52
	sub	a, c
	ld	c, a
	ld	a, #0x00
	sbc	a, b
	ld	b, a
	srl	b
	rr	c
	push	hl
	ld	b, e
	push	bc
	ld	bc, #0xc000
	push	bc
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	hl
;src/gui/gui.c:80: cpct_drawStringM2 (menu[iSelect], p_video, 0);
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	push	de
	push	bc
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
	inc	sp
	pop	ix
	ret
;src/gui/gui.c:83: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
;	---------------------------------
; Function drawMenuEntry
; ---------------------------------
_drawMenuEntry::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;src/gui/gui.c:90: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
	ld	c,6 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	a, #0xc9
	sub	a, c
	ld	l, a
	ld	a, #0x00
	sbc	a, b
	ld	h, a
	ld	e, l
	ld	d, h
	bit	7, h
	jr	Z,00114$
	ld	e, l
	ld	d, h
	inc	de
00114$:
	sra	d
	rr	e
	ld	d, e
	ld	l, 7 (ix)
	ld	e, l
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	a, d
	add	a, l
	ld	d, a
	push	bc
	ld	e, #0x20
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	de, #0x0a11
	push	de
	xor	a, a
	push	af
	inc	sp
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/gui/gui.c:94: for(i=0; i<14000; i++) {}
	ld	de, #0x36b0
00108$:
	dec	de
	ld	a, d
	or	a,e
	jr	NZ,00108$
;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
	ld	a, #0xca
	sub	a, c
	ld	-3 (ix), a
	ld	a, #0x00
	sbc	a, b
	ld	-2 (ix), a
	rlca
	and	a,#0x01
	ld	e, a
	ld	hl, #0x0000
	ex	(sp), hl
00110$:
	ld	c, 6 (ix)
	ld	b, #0x00
	ld	a, -6 (ix)
	sub	a, c
	ld	a, -5 (ix)
	sbc	a, b
	jp	PO, 00146$
	xor	a, #0x80
00146$:
	jp	P, 00112$
;src/gui/gui.c:99: if(i==iSelect)
	ld	c, 7 (ix)
	ld	b, #0x00
	ld	a, -6 (ix)
	sub	a, c
	jr	NZ,00103$
	ld	a, -5 (ix)
	sub	a, b
	jr	NZ,00103$
;src/gui/gui.c:100: penSelected = 1;
	ld	c, #0x01
	jr	00104$
00103$:
;src/gui/gui.c:102: penSelected = 0;
	ld	c, #0x00
00104$:
;src/gui/gui.c:104: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a, e
	or	a, a
	jr	Z,00115$
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	inc	hl
00115$:
	ld	b, l
	sra	h
	rr	b
	ld	l, -6 (ix)
	push	de
	ld	e, l
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	ld	a, b
	add	a, l
	ld	-4 (ix), a
	ld	b, -6 (ix)
	ld	d, -5 (ix)
	sla	b
	rl	d
	ld	a, 4 (ix)
	add	a, b
	ld	b, a
	ld	a, 5 (ix)
	adc	a, d
	ld	d, a
	ld	l, b
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	push	hl
	call	_strlen
	pop	af
	pop	bc
	ld	a, #0x52
	sub	a, l
	ld	l, a
	ld	a, #0x00
	sbc	a, h
	ld	h, a
	srl	h
	rr	l
	ld	-1 (ix), l
	push	bc
	push	de
	ld	h, -4 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
;src/gui/gui.c:105: cpct_drawStringM2 (menu[i], p_video, penSelected);
	push	hl
	pop	iy
	ld	l, b
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	de
	ld	a, c
	push	af
	inc	sp
	push	iy
	push	hl
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
	pop	de
;src/gui/gui.c:97: for(i=0; i<nbEntry; i++)
	inc	-6 (ix)
	jp	NZ,00110$
	inc	-5 (ix)
	jp	00110$
00112$:
	ld	sp, ix
	pop	ix
	ret
;src/gui/gui.c:109: u8 drawMenu(char **menu, u8 nbEntry)
;	---------------------------------
; Function drawMenu
; ---------------------------------
_drawMenu::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/gui/gui.c:112: u8 iSelect=0;
	ld	b, #0x00
;src/gui/gui.c:114: cpct_clearScreen(0b11111111);
	push	bc
	ld	hl, #0x4000
	push	hl
	ld	a, #0xff
	push	af
	inc	sp
	ld	h, #0xc0
	push	hl
	call	_cpct_memset
	pop	bc
;src/gui/gui.c:116: drawBoxM2(30,nbEntry*12);
	ld	e,6 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	push	bc
	push	hl
	ld	hl, #0x001e
	push	hl
	call	_drawBoxM2
	pop	af
	pop	af
	xor	a, a
	push	af
	inc	sp
	ld	a, 6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_drawMenuEntry
	pop	af
	pop	af
	pop	bc
;src/gui/gui.c:120: do{
	ld	c, 6 (ix)
	dec	c
00111$:
;src/gui/gui.c:121: cpct_scanKeyboard(); 
	push	bc
	call	_cpct_scanKeyboard
	ld	hl, #0x0100
	call	_cpct_isKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00105$
;src/gui/gui.c:125: EraseMenuEntry(menu, nbEntry, iSelect);
	push	bc
	push	bc
	inc	sp
	ld	a, 6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_EraseMenuEntry
	pop	af
	pop	af
	pop	bc
;src/gui/gui.c:127: if(iSelect ==0)
	ld	a, b
	or	a, a
	jr	NZ,00102$
;src/gui/gui.c:128: iSelect = nbEntry-1;
	ld	b, c
	jr	00103$
00102$:
;src/gui/gui.c:130: iSelect--;
	dec	b
00103$:
;src/gui/gui.c:132: drawMenuEntry(menu, nbEntry, iSelect);
	push	bc
	push	bc
	inc	sp
	ld	a, 6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_drawMenuEntry
	pop	af
	pop	af
	pop	bc
00105$:
;src/gui/gui.c:135: if ( cpct_isKeyPressed(Key_CursorDown) )
	push	bc
	ld	hl, #0x0400
	call	_cpct_isKeyPressed
	ld	e, l
	pop	bc
	ld	a, e
	or	a, a
	jr	Z,00112$
;src/gui/gui.c:137: EraseMenuEntry(menu, nbEntry, iSelect);
	push	bc
	push	bc
	inc	sp
	ld	a, 6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_EraseMenuEntry
	pop	af
	pop	af
	pop	bc
;src/gui/gui.c:139: if(iSelect == nbEntry-1)
	ld	e, 6 (ix)
	ld	d, #0x00
	dec	de
	ld	-2 (ix), b
	ld	-1 (ix), #0x00
	ld	a, e
	sub	a, -2 (ix)
	jr	NZ,00107$
	ld	a, d
	sub	a, -1 (ix)
	jr	NZ,00107$
;src/gui/gui.c:140: iSelect = 0;
	ld	b, #0x00
	jr	00108$
00107$:
;src/gui/gui.c:142: iSelect++;
	inc	b
00108$:
;src/gui/gui.c:144: drawMenuEntry(menu, nbEntry, iSelect);
	push	bc
	push	bc
	inc	sp
	ld	a, 6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_drawMenuEntry
	pop	af
	pop	af
	pop	bc
00112$:
;src/gui/gui.c:147: while(!cpct_isKeyPressed(Key_Return));
	push	bc
	ld	hl, #0x0402
	call	_cpct_isKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jp	Z, 00111$
;src/gui/gui.c:150: for(i=0; i<14000; i++) {}
	ld	de, #0x36b0
00117$:
	ex	de,hl
	dec	hl
	ld	e, l
	ld	a,h
	ld	d,a
	or	a,l
	jr	NZ,00117$
;src/gui/gui.c:152: return iSelect;
	ld	l, b
	ld	sp, ix
	pop	ix
	ret
;src/gui/gui.c:162: u8 drawWindow(char **text, u8 nbLine, u8 button)
;	---------------------------------
; Function drawWindow
; ---------------------------------
_drawWindow::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;src/gui/gui.c:166: u8 valueReturn=0;
	ld	-8 (ix), #0x00
;src/gui/gui.c:169: if(button == 0)
	ld	a, 7 (ix)
	or	a, a
	jr	NZ,00102$
;src/gui/gui.c:170: buttonTxt = "<OK>";
	ld	de, #___str_0+0
	jr	00103$
00102$:
;src/gui/gui.c:172: buttonTxt = "<OK>  <Cancel>";
	ld	de, #___str_1
00103$:
;src/gui/gui.c:174: drawBoxM2(50,(nbLine+2)*12);
	ld	c, 6 (ix)
	ld	b, #0x00
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
	ld	hl, #0x0032
	push	hl
	call	_drawBoxM2
	pop	af
	pop	af
	pop	de
	pop	bc
;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a, #0xca
	sub	a, l
	ld	-7 (ix), a
	ld	a, #0x00
	sbc	a, h
	ld	-6 (ix), a
	rlca
	and	a,#0x01
	ld	-3 (ix), a
	ld	c, #0x00
00114$:
;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
	ld	a, -7 (ix)
	add	a, #0x01
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
	ld	a, c
	sub	a, 6 (ix)
	jp	NC, 00104$
;src/gui/gui.c:178: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
	ld	l, -7 (ix)
	ld	b, -6 (ix)
	ld	a, -3 (ix)
	or	a, a
	jr	Z,00118$
	ld	l, -5 (ix)
	ld	b, -4 (ix)
00118$:
	sra	b
	rr	l
	ld	b, l
	ld	l, c
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a, b
	add	a, l
	ld	b, a
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, 4 (ix)
	add	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	adc	a, -1 (ix)
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	push	hl
	call	_strlen
	pop	af
	pop	bc
	ld	a, #0x52
	sub	a, l
	ld	l, a
	ld	a, #0x00
	sbc	a, h
	ld	h, a
	srl	h
	rr	l
	ld	a, l
	push	bc
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
;src/gui/gui.c:179: cpct_drawStringM2 (text[i], p_video, 0);
	push	hl
	pop	iy
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	push	iy
	push	hl
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
	pop	de
	pop	bc
;src/gui/gui.c:176: for(i=0; i<nbLine; i++)
	inc	c
	jp	00114$
00104$:
;src/gui/gui.c:182: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
	ld	b, -7 (ix)
	ld	c, -6 (ix)
	ld	a, -3 (ix)
	or	a, a
	jr	Z,00119$
	ld	b, -5 (ix)
	ld	c, -4 (ix)
00119$:
	sra	c
	rr	b
	ld	c, 6 (ix)
	inc	c
	ld	l, c
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a, b
	add	a, l
	ld	b, a
	push	bc
	push	de
	call	_strlen
	pop	af
	pop	bc
	ld	a, #0x52
	sub	a, l
	ld	l, a
	ld	a, #0x00
	sbc	a, h
	ld	h, a
	srl	h
	rr	l
	ld	a, l
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
;src/gui/gui.c:183: cpct_drawStringM2 (buttonTxt, p_video, 0);
	xor	a, a
	push	af
	inc	sp
	push	hl
	push	de
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
;src/gui/gui.c:186: do{
00110$:
;src/gui/gui.c:187: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/gui/gui.c:189: if ( cpct_isKeyPressed(Key_Return) )
	ld	hl, #0x0402
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00106$
;src/gui/gui.c:190: valueReturn=1;
	ld	-8 (ix), #0x01
00106$:
;src/gui/gui.c:192: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl, #0x0408
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00111$
;src/gui/gui.c:193: valueReturn=0;
	ld	-8 (ix), #0x00
00111$:
;src/gui/gui.c:195: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
	ld	hl, #0x0402
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	NZ,00112$
	ld	hl, #0x0408
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00110$
00112$:
;src/gui/gui.c:197: return valueReturn;
	ld	l, -8 (ix)
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "<OK>"
	.db 0x00
___str_1:
	.ascii "<OK>  <Cancel>"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
