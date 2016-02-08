;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Mon Feb  8 17:23:00 2016
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _game
	.globl _drawWindow
	.globl _drawMenu
	.globl _putM2
	.globl _cpct_setPALColour
	.globl _cpct_fw2hw
	.globl _cpct_setVideoMode
	.globl _cpct_disableFirmware
	.globl _cpct_reenableFirmware
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
;src/main.c:11: void main(void)
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
;src/main.c:16: const char *menuMain[] = { 
	ld	hl,#0x0006
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
	ld	bc,#___str_1+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_2+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/main.c:22: const char *windowCredit[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#<(___str_3)
	inc	hl
	ld	(hl),#>(___str_3)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	inc	hl
	ld	bc,#___str_4+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,-4 (ix)
	add	a, #0x04
	ld	l,a
	ld	a,-3 (ix)
	adc	a, #0x00
	ld	h,a
	ld	bc,#___str_5+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/main.c:28: firmware = cpct_disableFirmware();
	push	de
	call	_cpct_disableFirmware
	pop	de
	ld	-6 (ix),l
	ld	-5 (ix),h
;src/main.c:30: cpct_fw2hw(paletteTrains, 16);
	ld	hl,#_paletteTrains
	push	de
	ld	bc,#0x0010
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:31: cpct_fw2hw(paletteMenusM2, 2);
	ld	hl,#_paletteMenusM2
	push	de
	ld	bc,#0x0002
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:32: cpct_fw2hw(paletteMenusM1, 4);
	ld	hl,#_paletteMenusM1
	push	de
	ld	bc,#0x0004
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:34: cpct_setBorder(paletteTrains[12]);
	ld	a, (#_paletteTrains + 12)
	push	de
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
	call	_putM2
	pop	de
;src/main.c:38: do{
	ld	-2 (ix),e
	ld	-1 (ix),d
00105$:
;src/main.c:39: menuChoice = drawMenu(menuMain,3);
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
;src/main.c:41: if(menuChoice==0)
	ld	a,d
	or	a, a
	jr	NZ,00102$
;src/main.c:43: game();
	push	de
	call	_game
	call	_putM2
	pop	de
00102$:
;src/main.c:48: if(menuChoice==1)
	ld	a,d
	dec	a
	jr	NZ,00106$
;src/main.c:49: drawWindow(windowCredit,3,0);
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
;src/main.c:51: while(menuChoice!=2);
	ld	a,d
	sub	a, #0x02
	jr	NZ,00105$
;src/main.c:53: cpct_setVideoMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/main.c:54: cpct_reenableFirmware(firmware);
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	call	_cpct_reenableFirmware
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "New game"
	.db 0x00
___str_1:
	.ascii "Credits"
	.db 0x00
___str_2:
	.ascii "Quit"
	.db 0x00
___str_3:
	.ascii "Railways"
	.db 0x00
___str_4:
	.db 0x00
___str_5:
	.ascii "Trewdbal  Productions 2016"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
