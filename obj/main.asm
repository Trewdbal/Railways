;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Sat Feb  6 18:55:51 2016
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _drawTrain
	.globl _putM0
	.globl _cpct_getScreenPtr
	.globl _cpct_setPALColour
	.globl _cpct_fw2hw
	.globl _cpct_drawSprite
	.globl _cpct_isAnyKeyPressed_f
	.globl _cpct_scanKeyboard_f
	.globl _cpct_scanKeyboard
	.globl _cpct_memset_f64
	.globl _cpct_disableFirmware
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
;src/main.c:15: void drawTrain() 
;	---------------------------------
; Function drawTrain
; ---------------------------------
_drawTrain::
;src/main.c:21: cpct_clearScreen_f64(0);
	ld	hl,#0x4000
	push	hl
	ld	h, #0x00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_memset_f64
;src/main.c:23: pvideo_s1 = cpct_getScreenPtr(SCR_VMEM, 20, 80);
	ld	hl,#0x5014
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:25: cpct_drawSprite(lock, pvideo_s1, 20, 20);
	ex	de,hl
	ld	bc,#_lock+0
	ld	hl,#0x1414
	push	hl
	push	de
	push	bc
	call	_cpct_drawSprite
;src/main.c:27: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/main.c:29: do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed_f() );
00101$:
	call	_cpct_scanKeyboard
	call	_cpct_isAnyKeyPressed_f
	ld	a,l
	or	a, a
	jr	Z,00101$
	ret
;src/main.c:56: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;src/main.c:61: const char *menuMain[] = { 
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
	ld	bc,#___str_1+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	de,#___str_2+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/main.c:67: const char *windowCredit[] = { 
	ld	hl,#0x0006
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_3)
	inc	hl
	ld	(hl),#>(___str_3)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_4+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	de,#___str_5+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/main.c:73: firmware = cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/main.c:75: cpct_fw2hw(paletteTrains, 16);
	ld	hl,#_paletteTrains
	ld	bc,#0x0010
	push	bc
	push	hl
	call	_cpct_fw2hw
;src/main.c:76: cpct_fw2hw(paletteMenusM2, 2);
	ld	hl,#_paletteMenusM2+0
	ld	bc,#0x0002
	push	bc
	push	hl
	call	_cpct_fw2hw
;src/main.c:77: cpct_fw2hw(paletteMenusM1, 4);
	ld	hl,#_paletteMenusM1+0
	ld	bc,#0x0004
	push	bc
	push	hl
	call	_cpct_fw2hw
;src/main.c:79: cpct_setBorder(paletteTrains[12]);
	ld	a, (#_paletteTrains + 12)
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
;src/main.c:81: putM0();
	call	_putM0
;src/main.c:82: drawTrain();
	call	_drawTrain
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
