;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Sat Feb  6 22:37:07 2016
;--------------------------------------------------------
	.module depot
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _drawMenu
	.globl _putM2
	.globl _putM0
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM0
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _railroadDepot
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
;src/game/depot.c:31: void buyLocomotive()
;	---------------------------------
; Function buyLocomotive
; ---------------------------------
_buyLocomotive::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/game/depot.c:33: u8 exit=0;
	ld	-5 (ix),#0x00
;src/game/depot.c:37: putM0();
	call	_putM0
;src/game/depot.c:39: cpct_clearScreen(cpct_px2byteM0(14,15));
	ld	hl,#0x0F0E
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
;src/game/depot.c:41: for(i=0; i<12; i++)
	ld	e,#0x00
00110$:
;src/game/depot.c:43: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*(i%3), 30+40*(i%4));
	ld	a,e
	and	a, #0x03
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	ld	-1 (ix), a
	add	a, #0x1E
	ld	d,a
	push	de
	ld	d,#0x03
	push	de
	call	__moduchar
	pop	af
	ld	a,l
	pop	de
	ld	c,a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, c
	ld	-2 (ix), a
	add	a, #0x05
	push	de
	push	de
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
;src/game/depot.c:46: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
	push	hl
	push	de
	ld	hl,#0x0B0B
	push	hl
	call	_cpct_px2byteM0
	ld	a, l
	pop	de
	ld	d,a
	pop	bc
	push	de
	ld	hl,#0x1616
	push	hl
	push	de
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	de
;src/game/depot.c:48: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*(i%3)+1, 30+40*(i%4)+1);
	ld	a,-1 (ix)
	add	a, #0x1F
	ld	h,a
	ld	a,-2 (ix)
	add	a, #0x06
	push	de
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
;src/game/depot.c:46: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
	ld	-4 (ix),l
	ld	-3 (ix),h
;src/game/depot.c:50: if(i<locDelocked)
	ld	hl,#_locDelocked
	ld	a,e
	sub	a, (hl)
	jr	NC,00102$
;src/game/depot.c:52: cpct_drawSprite(l141P, p_video, 20, 20);
	ld	bc,#_l141P
	push	de
	ld	hl,#0x1414
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	bc
	call	_cpct_drawSprite
	pop	de
	jr	00111$
00102$:
;src/game/depot.c:56: cpct_drawSprite(lock, p_video, 20, 20);
	ld	bc,#_lock
	push	de
	ld	hl,#0x1414
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	bc
	call	_cpct_drawSprite
	pop	de
00111$:
;src/game/depot.c:41: for(i=0; i<12; i++)
	inc	e
	ld	a,e
	sub	a, #0x0C
	jp	C,00110$
;src/game/depot.c:61: do
00107$:
;src/game/depot.c:63: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/game/depot.c:65: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00108$
;src/game/depot.c:66: exit=1;
	ld	-5 (ix),#0x01
00108$:
;src/game/depot.c:68: while(!exit);
	ld	a,-5 (ix)
	or	a, a
	jr	Z,00107$
;src/game/depot.c:70: putM2();
	call	_putM2
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
