;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Sun Feb  7 16:12:11 2016
;--------------------------------------------------------
	.module depot
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _drawMenu
	.globl _putM2
	.globl _putM0
	.globl _floorf
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM0
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _railroadDepot
	.globl _drawLocomotive
	.globl _buyLocomotive
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
;src/game/depot.c:3: void railroadDepot()
;	---------------------------------
; Function railroadDepot
; ---------------------------------
_railroadDepot::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/game/depot.c:5: u8 exit=0;
	ld	-1 (ix),#0x00
;src/game/depot.c:7: cpct_clearScreen(0b11111111);
	ld	hl,#0x4000
	push	hl
	ld	a,#0xFF
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/game/depot.c:9: do
00108$:
;src/game/depot.c:11: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/game/depot.c:13: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00106$
;src/game/depot.c:14: exit=1;
	ld	-1 (ix),#0x01
	jr	00109$
00106$:
;src/game/depot.c:15: else if(cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00109$
;src/game/depot.c:17: const char *txtMenuChoice[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_0)
	inc	hl
	ld	(hl),#>(___str_0)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl),#<(___str_1)
	inc	hl
	ld	(hl),#>(___str_1)
;src/game/depot.c:21: u8 menuChoice = drawMenu(txtMenuChoice,2);
	ld	a,#0x02
	push	af
	inc	sp
	push	de
	call	_drawMenu
	pop	af
	inc	sp
	ld	a,l
;src/game/depot.c:23: if(menuChoice == 0)
	or	a, a
	jr	NZ,00109$
;src/game/depot.c:24: buyLocomotive();
	call	_buyLocomotive
00109$:
;src/game/depot.c:28: while(!exit);
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00108$
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "Buy a locomotive"
	.db 0x00
___str_1:
	.ascii "Back to depot"
	.db 0x00
;src/game/depot.c:31: void drawLocomotive(u8 i, u8 iSelect)
;	---------------------------------
; Function drawLocomotive
; ---------------------------------
_drawLocomotive::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;src/game/depot.c:34: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4), 30+40*(i%4));
	ld	a,4 (ix)
	and	a, #0x03
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	ld	-9 (ix), a
	add	a, #0x1E
	ld	-1 (ix),a
	ld	a,4 (ix)
	rrca
	rrca
	and	a,#0x3F
	ld	-2 (ix), a
	push	af
	inc	sp
	call	___uchar2fs
	inc	sp
	ld	-3 (ix),d
	ld	-4 (ix),e
	ld	-5 (ix),h
	ld	-6 (ix),l
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	call	_floorf
	pop	af
	pop	af
	ex	de, hl
	push	hl
	push	de
	ld	hl,#0x41C8
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	hl,#0x40A0
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	push	de
	push	hl
	call	___fs2uchar
	pop	af
	pop	af
	ld	d,l
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	ld	-8 (ix),l
	ld	-7 (ix),h
;src/game/depot.c:37: if(i==iSelect)
	ld	a,4 (ix)
	sub	a, 5 (ix)
	jr	NZ,00102$
;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	ld	hl,#0x0505
	push	hl
	call	_cpct_px2byteM0
	ld	d,l
	ld	hl,#0x1616
	push	hl
	push	de
	inc	sp
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	jr	00103$
00102$:
;src/game/depot.c:40: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
	ld	hl,#0x0B0B
	push	hl
	call	_cpct_px2byteM0
	ld	d,l
	ld	hl,#0x1616
	push	hl
	push	de
	inc	sp
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
00103$:
;src/game/depot.c:42: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4)+1, 30+40*(i%4)+1);
	ld	a,-9 (ix)
	add	a, #0x1F
	ld	-8 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	call	_floorf
	pop	af
	pop	af
	ex	de, hl
	push	hl
	push	de
	ld	hl,#0x41C8
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	hl,#0x40C0
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	push	de
	push	hl
	call	___fs2uchar
	pop	af
	pop	af
	ld	d,l
	ld	a,-8 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	ex	de,hl
;src/game/depot.c:44: if(i<locDelocked)
	ld	hl,#_locDelocked
	ld	a,4 (ix)
	sub	a, (hl)
	jr	NC,00105$
;src/game/depot.c:46: cpct_drawSprite(l141P, p_video, 20, 20);
	ld	bc,#_l141P
	ld	hl,#0x1414
	push	hl
	push	de
	push	bc
	call	_cpct_drawSprite
	jr	00107$
00105$:
;src/game/depot.c:50: cpct_drawSprite(lock, p_video, 20, 20);
	ld	bc,#_lock
	ld	hl,#0x1414
	push	hl
	push	de
	push	bc
	call	_cpct_drawSprite
00107$:
	ld	sp, ix
	pop	ix
	ret
;src/game/depot.c:55: void buyLocomotive()
;	---------------------------------
; Function buyLocomotive
; ---------------------------------
_buyLocomotive::
	dec	sp
;src/game/depot.c:57: u8 exit=0;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
;src/game/depot.c:59: u8 iSelect=0;
	ld	b,#0x00
;src/game/depot.c:61: putM0();
	push	bc
	call	_putM0
	ld	hl,#0x0909
	push	hl
	call	_cpct_px2byteM0
	ld	h,l
	ld	de,#0x4000
	push	de
	push	hl
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_memset
	pop	bc
;src/game/depot.c:65: for(i=0; i<12; i++)
	ld	de,#0x0000
00118$:
;src/game/depot.c:66: drawLocomotive(i, iSelect);
	ld	c,e
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_drawLocomotive
	pop	af
	pop	de
	pop	bc
;src/game/depot.c:65: for(i=0; i<12; i++)
	inc	de
	ld	a,e
	sub	a, #0x0C
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00118$
;src/game/depot.c:68: do
00115$:
;src/game/depot.c:70: cpct_scanKeyboard(); 
	push	bc
	call	_cpct_scanKeyboard
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00111$
;src/game/depot.c:74: if (iSelect>0)
	ld	a,b
	or	a, a
	jr	Z,00131$
;src/game/depot.c:76: iSelect--;
	dec	b
;src/game/depot.c:77: drawLocomotive(iSelect, iSelect);
	push	bc
	push	bc
	inc	sp
	push	bc
	inc	sp
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:78: drawLocomotive(iSelect+1, iSelect);
	ld	d,b
	inc	d
	push	bc
	ld	c, d
	push	bc
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:80: for(i=0; i<14000; i++) {} // wait loop
00131$:
	ld	de,#0x36B0
00122$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00122$
	jr	00112$
00111$:
;src/game/depot.c:82: else if ( cpct_isKeyPressed(Key_CursorDown) )
	push	bc
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00112$
;src/game/depot.c:84: if (iSelect<11)
	ld	a,b
	sub	a, #0x0B
	jr	NC,00135$
;src/game/depot.c:86: iSelect++;
	inc	b
;src/game/depot.c:87: drawLocomotive(iSelect, iSelect);
	push	bc
	push	bc
	inc	sp
	push	bc
	inc	sp
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:88: drawLocomotive(iSelect-1, iSelect);
	ld	d,b
	dec	d
	push	bc
	ld	c, d
	push	bc
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:90: for(i=0; i<14000; i++) {} // wait loop
00135$:
	ld	de,#0x36B0
00125$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00125$
00112$:
;src/game/depot.c:93: if ( cpct_isKeyPressed(Key_Esc) )
	push	bc
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00116$
;src/game/depot.c:94: exit=1;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x01
00116$:
;src/game/depot.c:96: while(!exit);
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	or	a, a
	jp	Z,00115$
;src/game/depot.c:98: putM2();
	call	_putM2
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)