;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Sat Feb  6 17:14:19 2016
;--------------------------------------------------------
	.module global
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _paletteMenusM2
	.globl _paletteMenusM1
	.globl _paletteTrains
	.globl _CURSOR_MODE
	.globl _p_world
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_p_world::
	.ds 3840
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_CURSOR_MODE::
	.ds 1
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
	.area _CODE
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
	.area _INITIALIZER
__xinit__CURSOR_MODE:
	.db #0x00	; 0
	.area _CABS (ABS)
