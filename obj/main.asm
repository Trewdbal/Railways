;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
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
	ld	hl, #-18
	add	hl, sp
	ld	sp, hl
;src/main.c:16: const char *menuMain[] = { 
	ld	hl, #0x0006
	add	hl, sp
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	(hl), #<(___str_0)
	inc	hl
	ld	(hl), #>(___str_0)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	inc	hl
	ld	bc, #___str_1+0
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	a, -4 (ix)
	add	a, #0x04
	ld	l, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	h, a
	ld	bc, #___str_2+0
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/main.c:22: const char *windowCredit[] = { 
	ld	hl, #0x0000
	add	hl, sp
	ld	c,l
	ld	b,h
	ld	(hl), #<(___str_3)
	inc	hl
	ld	(hl), #>(___str_3)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	de, #___str_4+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0004
	add	hl, bc
	ld	de, #___str_5+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/main.c:28: firmware = cpct_disableFirmware();
	push	bc
	call	_cpct_disableFirmware
	pop	bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;src/main.c:30: cpct_fw2hw(paletteTrains, 16);
	push	bc
	ld	hl, #0x0010
	push	hl
	ld	hl, #_paletteTrains
	push	hl
	call	_cpct_fw2hw
	ld	hl, #0x0002
	push	hl
	ld	hl, #_paletteMenusM2
	push	hl
	call	_cpct_fw2hw
	ld	hl, #0x0004
	push	hl
	ld	hl, #_paletteMenusM1
	push	hl
	call	_cpct_fw2hw
	pop	bc
;src/main.c:34: cpct_setBorder(paletteTrains[12]);
	ld	hl, #_paletteTrains + 12
	ld	d, (hl)
	push	bc
	ld	e, #0x10
	push	de
	call	_cpct_setPALColour
	call	_putM2
	pop	bc
;src/main.c:38: do{
	ld	-2 (ix), c
	ld	-1 (ix), b
00105$:
;src/main.c:39: menuChoice = drawMenu(menuMain,3);
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	ld	a, #0x03
	push	af
	inc	sp
	push	bc
	call	_drawMenu
	pop	af
	inc	sp
;src/main.c:41: if(menuChoice==0)
	ld	a, l
	or	a, a
	jr	NZ,00102$
;src/main.c:43: game();
	push	hl
	call	_game
	call	_putM2
	pop	hl
00102$:
;src/main.c:48: if(menuChoice==1)
	ld	a, l
	dec	a
	jr	NZ,00106$
;src/main.c:49: drawWindow(windowCredit,3,0);
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	push	hl
	ld	de, #0x0003
	push	de
	push	bc
	call	_drawWindow
	pop	af
	pop	af
	pop	hl
00106$:
;src/main.c:51: while(menuChoice!=2);
	ld	a, l
;src/main.c:53: cpct_setVideoMode(0);
	sub	a,#0x02
	jr	NZ,00105$
	ld	l,a
	call	_cpct_setVideoMode
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
