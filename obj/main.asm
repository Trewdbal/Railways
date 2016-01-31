;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Sun Jan 31 17:17:31 2016
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _drawTrain
	.globl _game
	.globl _menuTile
	.globl _drawWorld
	.globl _drawTile
	.globl _generateWorld
	.globl _drawCursor
	.globl _drawWindow
	.globl _drawMenu
	.globl _drawMenuEntry
	.globl _EraseMenuEntry
	.globl _drawBoxM2
	.globl _drawBoxM0
	.globl _putM2
	.globl _putM1
	.globl _putM0
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
;src/includes/gui.h:1: void putM0(void)
;	---------------------------------
; Function putM0
; ---------------------------------
_putM0::
;src/includes/gui.h:3: cpct_setVideoMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/includes/gui.h:5: cpct_setPalette(paletteTrains, 16);
	ld	hl,#_paletteTrains
	ld	bc,#0x0010
	push	bc
	push	hl
	call	_cpct_setPalette
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
;src/includes/gui.h:8: void putM1(void)
;	---------------------------------
; Function putM1
; ---------------------------------
_putM1::
;src/includes/gui.h:10: cpct_setVideoMode(1);
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/includes/gui.h:12: cpct_setPalette(paletteMenusM1, 4);
	ld	hl,#_paletteMenusM1
	ld	bc,#0x0004
	push	bc
	push	hl
	call	_cpct_setPalette
	ret
;src/includes/gui.h:15: void putM2(void)
;	---------------------------------
; Function putM2
; ---------------------------------
_putM2::
;src/includes/gui.h:17: cpct_setVideoMode(2);
	ld	a,#0x02
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/includes/gui.h:19: cpct_setPalette(paletteMenusM2, 2);
	ld	hl,#_paletteMenusM2
	ld	bc,#0x0002
	push	bc
	push	hl
	call	_cpct_setPalette
;src/includes/gui.h:20: cpct_clearScreen(0b11111111);
	ld	hl,#0x4000
	push	hl
	ld	a,#0xFF
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
	ret
;src/includes/gui.h:23: void drawBoxM0(int width_, int height_)
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
;src/includes/gui.h:28: int left = (80-width_)/2;
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
;src/includes/gui.h:29: int top = (200-height_)/2;
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
;src/includes/gui.h:31: cpct_clearScreen(cpct_px2byteM0(9,9));
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
;src/includes/gui.h:34: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
	ld	-5 (ix), e
	ld	h, e
	inc	h
	inc	h
	inc	h
	inc	h
	ld	a,-7 (ix)
	inc	a
	ld	-2 (ix),a
	push	de
	push	hl
	inc	sp
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	ld	c, l
	ld	b, h
;src/includes/gui.h:35: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
	ld	a,6 (ix)
	ld	-4 (ix),a
	ld	a,4 (ix)
	ld	-3 (ix),a
	push	bc
	push	de
	ld	hl,#0x0202
	push	hl
	call	_cpct_px2byteM0
	ld	-1 (ix),l
	pop	de
	pop	bc
	push	de
	ld	h,-4 (ix)
	ld	l,-3 (ix)
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
;src/includes/gui.h:38: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
	ld	h,e
	ld	d,-7 (ix)
	push	hl
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/includes/gui.h:39: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
	push	hl
	ld	hl,#0x0606
	push	hl
	call	_cpct_px2byteM0
	ld	b,l
	pop	de
	ld	h,-4 (ix)
	ld	l,-3 (ix)
	push	hl
	push	bc
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
;src/includes/gui.h:42: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
	ld	h,-5 (ix)
	inc	h
	inc	h
	push	hl
	inc	sp
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/includes/gui.h:43: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
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
;src/includes/gui.h:47: void drawBoxM2(int width_, int height_)
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
;src/includes/gui.h:52: int left = (80-width_)/2;
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
;src/includes/gui.h:53: int top = (200-height_)/2;
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
;src/includes/gui.h:56: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
	ld	a,-6 (ix)
	ld	-2 (ix), a
	add	a, #0x05
	ld	c,a
	ld	-1 (ix), e
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
;src/includes/gui.h:57: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
	ld	b,6 (ix)
	ld	c,4 (ix)
	ld	a,c
	add	a,#0xFF
	ld	-4 (ix),l
	ld	-3 (ix),h
	push	bc
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	de
	pop	bc
;src/includes/gui.h:60: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
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
;src/includes/gui.h:61: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
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
;src/includes/gui.h:64: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
	ld	h,-2 (ix)
	inc	h
	ld	d,-1 (ix)
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
;src/includes/gui.h:65: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
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
;src/includes/gui.h:68: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
;	---------------------------------
; Function EraseMenuEntry
; ---------------------------------
_EraseMenuEntry::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/includes/gui.h:73: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
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
	jr	Z,00103$
	ld	l, d
	ld	h, e
	inc	hl
00103$:
	sra	h
	rr	l
	ld	d,l
	ld	a,7 (ix)
	ld	e,a
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	ld	-1 (ix),a
	ld	a,d
	add	a, -1 (ix)
	push	bc
	ld	d,a
	ld	e,#0x20
	push	de
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/includes/gui.h:74: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
	ex	de,hl
	push	bc
	ld	hl,#0x0A11
	push	hl
	ld	a,#0xFF
	push	af
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/includes/gui.h:77: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
	ld	a,#0xCA
	sub	a, c
	ld	d,a
	ld	a,#0x00
	sbc	a, b
	ld	e,a
	ld	l, d
	ld	h, e
	bit	7, e
	jr	Z,00104$
	ld	l, d
	ld	h, e
	inc	hl
00104$:
	sra	h
	rr	l
	ld	a,l
	add	a, -1 (ix)
	ld	c,a
	ld	l,7 (ix)
	ld	h,#0x00
	add	hl, hl
	ex	de,hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,de
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	call	_strlen
	pop	af
	ex	de,hl
	pop	bc
	pop	hl
	ld	a,#0x52
	sub	a, e
	ld	e,a
	ld	a,#0x00
	sbc	a, d
	ld	d,a
	srl	d
	rr	e
	push	hl
	ld	d, c
	push	de
	ld	bc,#0xC000
	push	bc
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	pop	hl
;src/includes/gui.h:78: cpct_drawStringM2 (menu[iSelect], p_video, 0);
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	xor	a, a
	push	af
	inc	sp
	push	bc
	push	de
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
	inc	sp
	pop	ix
	ret
;src/includes/gui.h:81: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
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
;src/includes/gui.h:89: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
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
;src/includes/gui.h:90: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
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
;src/includes/gui.h:93: for(i=0; i<14000; i++) {}
	ld	hl,#0x36B0
00108$:
	dec	hl
	ld	a,h
	or	a,l
	jr	NZ,00108$
;src/includes/gui.h:96: for(i=0; i<nbEntry; i++)
	ld	a,#0xCA
	sub	a, c
	ld	-4 (ix),a
	ld	a,#0x00
	sbc	a, b
	ld	-3 (ix), a
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
;src/includes/gui.h:98: if(i==iSelect)
	ld	d,7 (ix)
	ld	b,#0x00
	ld	a,-6 (ix)
	sub	a, d
	jr	NZ,00103$
	ld	a,-5 (ix)
	sub	a, b
	jr	NZ,00103$
;src/includes/gui.h:99: penSelected = 1;
	ld	c,#0x01
	jr	00104$
00103$:
;src/includes/gui.h:101: penSelected = 0;
	ld	c,#0x00
00104$:
;src/includes/gui.h:103: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,e
	or	a, a
	jr	Z,00115$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
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
	ld	-1 (ix),a
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
	ld	-2 (ix),l
	push	bc
	push	de
	ld	h,-1 (ix)
	ld	l,-2 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
	push	hl
	pop	iy
;src/includes/gui.h:104: cpct_drawStringM2 (menu[i], p_video, penSelected);
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
;src/includes/gui.h:96: for(i=0; i<nbEntry; i++)
	inc	-6 (ix)
	jp	NZ,00110$
	inc	-5 (ix)
	jp	00110$
00112$:
	ld	sp, ix
	pop	ix
	ret
;src/includes/gui.h:108: u8 drawMenu(char **menu, u8 nbEntry)
;	---------------------------------
; Function drawMenu
; ---------------------------------
_drawMenu::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/includes/gui.h:111: u8 iSelect=0;
	ld	b,#0x00
;src/includes/gui.h:113: drawBoxM2(30,nbEntry*12);
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
	ld	hl,#0x001E
	push	hl
	call	_drawBoxM2
	pop	af
	pop	af
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
	pop	bc
;src/includes/gui.h:117: do{
	ld	c,6 (ix)
	dec	c
00111$:
;src/includes/gui.h:118: cpct_scanKeyboard(); 
	push	bc
	call	_cpct_scanKeyboard
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00105$
;src/includes/gui.h:122: EraseMenuEntry(menu, nbEntry, iSelect);
	push	bc
	push	bc
	inc	sp
	ld	a,6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_EraseMenuEntry
	pop	af
	pop	af
	pop	bc
;src/includes/gui.h:124: if(iSelect ==0)
	ld	a,b
	or	a, a
	jr	NZ,00102$
;src/includes/gui.h:125: iSelect = nbEntry-1;
	ld	b,c
	jr	00103$
00102$:
;src/includes/gui.h:127: iSelect--;
	dec	b
00103$:
;src/includes/gui.h:129: drawMenuEntry(menu, nbEntry, iSelect);
	push	bc
	push	bc
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
	pop	bc
00105$:
;src/includes/gui.h:132: if ( cpct_isKeyPressed(Key_CursorDown) )
	push	bc
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	e,l
	pop	bc
	ld	a,e
	or	a, a
	jr	Z,00112$
;src/includes/gui.h:134: EraseMenuEntry(menu, nbEntry, iSelect);
	push	bc
	push	bc
	inc	sp
	ld	a,6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_EraseMenuEntry
	pop	af
	pop	af
	pop	bc
;src/includes/gui.h:136: if(iSelect == nbEntry-1)
	ld	e,6 (ix)
	ld	d,#0x00
	dec	de
	ld	-2 (ix),b
	ld	-1 (ix),#0x00
	ld	a,e
	sub	a, -2 (ix)
	jr	NZ,00107$
	ld	a,d
	sub	a, -1 (ix)
	jr	NZ,00107$
;src/includes/gui.h:137: iSelect = 0;
	ld	b,#0x00
	jr	00108$
00107$:
;src/includes/gui.h:139: iSelect++;
	inc	b
00108$:
;src/includes/gui.h:141: drawMenuEntry(menu, nbEntry, iSelect);
	push	bc
	push	bc
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
	pop	bc
00112$:
;src/includes/gui.h:144: while(!cpct_isKeyPressed(Key_Return));
	push	bc
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jp	Z,00111$
;src/includes/gui.h:147: for(i=0; i<14000; i++) {}
	ld	hl,#0x36B0
00117$:
	ex	de,hl
	dec	de
	ld	l, e
	ld	a,d
	ld	h,a
	or	a,e
	jr	NZ,00117$
;src/includes/gui.h:149: return iSelect;
	ld	l,b
	ld	sp, ix
	pop	ix
	ret
;src/includes/gui.h:159: u8 drawWindow(char **text, u8 nbLine, u8 button)
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
;src/includes/gui.h:163: u8 valueReturn=0;
	ld	-11 (ix),#0x00
;src/includes/gui.h:166: if(button == 0)
	ld	a,7 (ix)
	or	a, a
	jr	NZ,00102$
;src/includes/gui.h:167: buttonTxt = "<OK>";
	ld	de,#___str_0
	jr	00103$
00102$:
;src/includes/gui.h:169: buttonTxt = "<OK>  <Cancel>";
	ld	de,#___str_1+0
00103$:
;src/includes/gui.h:171: drawBoxM2(30,(nbLine+2)*12);
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
;src/includes/gui.h:173: for(i=0; i<nbLine; i++)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a,#0xCA
	sub	a, l
	ld	-8 (ix),a
	ld	a,#0x00
	sbc	a, h
	ld	-7 (ix), a
	rlca
	and	a,#0x01
	ld	-1 (ix),a
	ld	-10 (ix),#0x00
	ld	-4 (ix),#0x00
00114$:
;src/includes/gui.h:175: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
	ld	a,-8 (ix)
	add	a, #0x01
	ld	-6 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-5 (ix),a
;src/includes/gui.h:173: for(i=0; i<nbLine; i++)
	ld	a,-10 (ix)
	sub	a, 6 (ix)
	jp	NC,00104$
;src/includes/gui.h:175: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00118$
	ld	l,-6 (ix)
	ld	h,-5 (ix)
00118$:
	sra	h
	rr	l
	ld	h,-4 (ix)
	ld	a,l
	add	a, h
	ld	-9 (ix),a
	ld	l,-10 (ix)
	ld	h,#0x00
	add	hl, hl
	ld	b,l
	ld	c,h
	ld	a,4 (ix)
	add	a, b
	ld	-3 (ix),a
	ld	a,5 (ix)
	adc	a, c
	ld	-2 (ix),a
	ld	l,-3 (ix)
	ld	h,-2 (ix)
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
	ld	a,-9 (ix)
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
;src/includes/gui.h:176: cpct_drawStringM2 (text[i], p_video, 0);
	ld	l,-3 (ix)
	ld	h,-2 (ix)
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
;src/includes/gui.h:173: for(i=0; i<nbLine; i++)
	ld	a,-4 (ix)
	add	a, #0x0A
	ld	-4 (ix),a
	inc	-10 (ix)
	jp	00114$
00104$:
;src/includes/gui.h:179: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
	ld	b,-8 (ix)
	ld	h,-7 (ix)
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00119$
	ld	b,-6 (ix)
	ld	h,-5 (ix)
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
;src/includes/gui.h:180: cpct_drawStringM2 (buttonTxt, p_video, 0);
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
;src/includes/gui.h:183: do{
00110$:
;src/includes/gui.h:184: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/includes/gui.h:186: if ( cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00106$
;src/includes/gui.h:187: valueReturn=1;
	ld	-11 (ix),#0x01
00106$:
;src/includes/gui.h:189: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00111$
;src/includes/gui.h:190: valueReturn=0;
	ld	-11 (ix),#0x00
00111$:
;src/includes/gui.h:192: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
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
;src/includes/gui.h:194: return valueReturn;
	ld	l,-11 (ix)
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
;src/includes/game.h:1: void menuTile(u8* p_world, u8 x, u8 y)
;	---------------------------------
; Function menuTile
; ---------------------------------
_menuTile::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:5: const char *txtMenuTile[] = { 
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
	ld	hl,#0x0006
	add	hl,de
	ld	bc,#___str_5+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0008
	add	hl,de
	ld	bc,#___str_6+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:13: putM2();
	push	de
	call	_putM2
	pop	de
;src/includes/game.h:16: do{
00101$:
;src/includes/game.h:17: menuChoice = drawMenu(txtMenuTile,5);
	ld	c, e
	ld	b, d
	push	de
	ld	a,#0x05
	push	af
	inc	sp
	push	bc
	call	_drawMenu
	pop	af
	inc	sp
	ld	a,l
	pop	de
;src/includes/game.h:26: while(menuChoice!=4);
	sub	a, #0x04
	jr	NZ,00101$
;src/includes/game.h:28: putM1();
	call	_putM1
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "About this tile"
	.db 0x00
___str_3:
	.ascii "Begin a railway"
	.db 0x00
___str_4:
	.ascii "Railroad depot"
	.db 0x00
___str_5:
	.ascii "Accounting"
	.db 0x00
___str_6:
	.ascii "Resume"
	.db 0x00
;src/includes/game.h:32: void game()
;	---------------------------------
; Function game
; ---------------------------------
_game::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-3869
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:35: u8 ulx = 0;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
;src/includes/game.h:36: u8 uly = 0;
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),#0x00
;src/includes/game.h:37: int xCursor = 10;
	ld	-24 (ix),#0x0A
	ld	-23 (ix),#0x00
;src/includes/game.h:38: int yCursor = 6;
	ld	hl, #3
	add	hl, sp
	ld	(hl), #0x06
	inc	hl
	ld	(hl), #0x00
;src/includes/game.h:40: u8 exit=0;
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),#0x00
;src/includes/game.h:42: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
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
;src/includes/game.h:44: generateWorld(p_world);
	ld	hl,#0x0005
	add	hl,sp
	ld	-7 (ix),l
	ld	-6 (ix),h
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_generateWorld
	pop	af
;src/includes/game.h:46: drawWorld(p_world, ulx, uly);
	ld	a,-7 (ix)
	ld	-9 (ix),a
	ld	a,-6 (ix)
	ld	-8 (ix),a
	ld	hl,#0x0000
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:48: do{
	ld	a,-7 (ix)
	ld	-9 (ix),a
	ld	a,-6 (ix)
	ld	-8 (ix),a
	ld	a,-7 (ix)
	ld	-11 (ix),a
	ld	a,-6 (ix)
	ld	-10 (ix),a
	ld	a,-7 (ix)
	ld	-20 (ix),a
	ld	a,-6 (ix)
	ld	-19 (ix),a
	ld	a,-7 (ix)
	ld	-18 (ix),a
	ld	a,-6 (ix)
	ld	-17 (ix),a
	ld	a,-7 (ix)
	ld	-5 (ix),a
	ld	a,-6 (ix)
	ld	-4 (ix),a
	ld	a,-7 (ix)
	ld	-22 (ix),a
	ld	a,-6 (ix)
	ld	-21 (ix),a
	ld	a,-7 (ix)
	ld	-2 (ix),a
	ld	a,-6 (ix)
	ld	-1 (ix),a
	ld	a,-7 (ix)
	ld	-14 (ix),a
	ld	a,-6 (ix)
	ld	-13 (ix),a
	ld	a,-7 (ix)
	ld	-16 (ix),a
	ld	a,-6 (ix)
	ld	-15 (ix),a
00133$:
;src/includes/game.h:49: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/includes/game.h:51: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	d,l
;src/includes/game.h:53: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	a,-24 (ix)
	ld	-3 (ix),a
;src/includes/game.h:51: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	a,d
	or	a, a
	jp	Z,00107$
;src/includes/game.h:53: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	iy,#3
	add	iy,sp
	ld	h,0 (iy)
	ld	e,-11 (ix)
	ld	d,-10 (ix)
	push	hl
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	push	de
	call	_drawTile
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:55: yCursor-=1;
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	dec	hl
	ld	0 (iy),l
	ld	1 (iy),h
;src/includes/game.h:58: if(yCursor<0)
	bit	7,1 (iy)
	jr	Z,00153$
;src/includes/game.h:60: yCursor=0;
	ld	0 (iy),#0x00
	ld	1 (iy),#0x00
;src/includes/game.h:63: if(uly>0)
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	or	a, a
	jr	Z,00153$
;src/includes/game.h:65: uly-=1;
	dec	0 (iy)
;src/includes/game.h:66: drawWorld(p_world, ulx, uly);
	ld	e,-9 (ix)
	ld	d,-8 (ix)
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	push	de
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:71: for(i=0; i<14000; i++) {}
00153$:
	ld	de,#0x36B0
00138$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00138$
00107$:
;src/includes/game.h:74: if ( cpct_isKeyPressed(Key_CursorDown) )
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00114$
;src/includes/game.h:76: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	iy,#3
	add	iy,sp
	ld	h,0 (iy)
	ld	e,-18 (ix)
	ld	d,-17 (ix)
	push	hl
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	push	de
	call	_drawTile
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:77: yCursor+=1;
	ld	iy,#3
	add	iy,sp
	inc	0 (iy)
	jr	NZ,00234$
	inc	1 (iy)
00234$:
;src/includes/game.h:78: if(yCursor>NBTILE_H-1)
	ld	a,#0x0B
	cp	a, 0 (iy)
	ld	a,#0x00
	sbc	a, 1 (iy)
	jp	PO, 00235$
	xor	a, #0x80
00235$:
	jp	P,00158$
;src/includes/game.h:80: yCursor=NBTILE_H-1;
	ld	iy,#3
	add	iy,sp
	ld	0 (iy),#0x0B
	ld	1 (iy),#0x00
;src/includes/game.h:81: if(uly<HEIGHT-NBTILE_H)
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x24
	jr	NC,00158$
;src/includes/game.h:83: uly+=1;
	inc	0 (iy)
;src/includes/game.h:84: drawWorld(p_world, ulx, uly);
	ld	e,-20 (ix)
	ld	d,-19 (ix)
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	push	de
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:89: for(i=0; i<5000; i++) {}
00158$:
	ld	de,#0x1388
00141$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00141$
00114$:
;src/includes/game.h:92: if ( cpct_isKeyPressed(Key_CursorLeft) )
	ld	hl,#0x0101
	call	_cpct_isKeyPressed
	ld	d,l
;src/includes/game.h:53: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	ld	-12 (ix),a
;src/includes/game.h:92: if ( cpct_isKeyPressed(Key_CursorLeft) )
	ld	a,d
	or	a, a
	jp	Z,00121$
;src/includes/game.h:94: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	e,-22 (ix)
	ld	d,-21 (ix)
	ld	a,-12 (ix)
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	push	de
	call	_drawTile
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:95: xCursor-=1;
	ld	l,-24 (ix)
	ld	h,-23 (ix)
	dec	hl
	ld	-24 (ix),l
	ld	-23 (ix),h
;src/includes/game.h:96: if(xCursor<0)
	bit	7, -23 (ix)
	jr	Z,00163$
;src/includes/game.h:98: xCursor=0;
	ld	-24 (ix),#0x00
	ld	-23 (ix),#0x00
;src/includes/game.h:99: if(ulx>0)
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	or	a, a
	jr	Z,00163$
;src/includes/game.h:101: ulx-=1;
	dec	0 (iy)
;src/includes/game.h:102: drawWorld(p_world, ulx, uly);
	ld	e,-5 (ix)
	ld	d,-4 (ix)
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	push	de
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:107: for(i=0; i<14000; i++) {}
00163$:
	ld	de,#0x36B0
00144$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00144$
00121$:
;src/includes/game.h:110: if ( cpct_isKeyPressed(Key_CursorRight) )
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00128$
;src/includes/game.h:112: drawTile(p_world, ulx, uly, xCursor, yCursor);
	ld	d,-24 (ix)
	ld	c,-14 (ix)
	ld	b,-13 (ix)
	ld	a,-12 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	iy,#3
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	push	bc
	call	_drawTile
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:113: xCursor+=1;
	inc	-24 (ix)
	jr	NZ,00236$
	inc	-23 (ix)
00236$:
;src/includes/game.h:114: if(xCursor>NBTILE_W-1)
	ld	a,#0x13
	cp	a, -24 (ix)
	ld	a,#0x00
	sbc	a, -23 (ix)
	jp	PO, 00237$
	xor	a, #0x80
00237$:
	jp	P,00168$
;src/includes/game.h:116: xCursor=NBTILE_W-1;
	ld	-24 (ix),#0x13
	ld	-23 (ix),#0x00
;src/includes/game.h:117: if(ulx<WIDTH-NBTILE_W)
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x3C
	jr	NC,00168$
;src/includes/game.h:119: ulx+=1;
	inc	0 (iy)
;src/includes/game.h:120: drawWorld(p_world, ulx, uly);
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	push	de
	call	_drawWorld
	pop	af
	pop	af
;src/includes/game.h:125: for(i=0; i<14000; i++) {}
00168$:
	ld	de,#0x36B0
00147$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00147$
00128$:
;src/includes/game.h:128: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00130$
;src/includes/game.h:130: exit=1;
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),#0x01
00130$:
;src/includes/game.h:133: if ( cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00132$
;src/includes/game.h:135: menuTile(p_world, ulx+xCursor, uly+yCursor);
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	iy,#1
	add	iy,sp
	ld	a, 0 (iy)
	add	a, l
	ld	c,a
	ld	l,-24 (ix)
	ld	iy,#0
	add	iy,sp
	ld	a, 0 (iy)
	add	a, l
	ld	e,a
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	d, c
	push	de
	push	hl
	call	_menuTile
	pop	af
	pop	af
;src/includes/game.h:136: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
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
;src/includes/game.h:137: drawWorld(p_world, ulx, uly);
	ld	e,-7 (ix)
	ld	d,-6 (ix)
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	push	af
	inc	sp
	push	de
	call	_drawWorld
	pop	af
	pop	af
00132$:
;src/includes/game.h:140: drawCursor(xCursor, yCursor, 0);
	ld	d,-24 (ix)
	xor	a, a
	push	af
	inc	sp
	ld	a,-12 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_drawCursor
	pop	af
	inc	sp
;src/includes/game.h:142: while(!exit);
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
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
;src/main.c:57: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-19
	add	hl,sp
	ld	sp,hl
;src/main.c:62: const char *menuMain[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_7)
	inc	hl
	ld	(hl),#>(___str_7)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_8+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_9+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/main.c:68: const char *windowCredit[] = { 
	ld	hl,#0x0009
	add	hl,sp
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#<(___str_10)
	inc	hl
	ld	(hl),#>(___str_10)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	inc	hl
	ld	bc,#___str_11+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,-4 (ix)
	add	a, #0x04
	ld	l,a
	ld	a,-3 (ix)
	adc	a, #0x00
	ld	h,a
	ld	bc,#___str_12+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/main.c:74: firmware = cpct_disableFirmware();
	push	de
	call	_cpct_disableFirmware
	pop	de
	ld	-13 (ix),l
	ld	-12 (ix),h
;src/main.c:76: cpct_fw2hw(paletteTrains, 16);
	ld	hl,#_paletteTrains
	push	de
	ld	bc,#0x0010
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:77: cpct_fw2hw(paletteMenusM2, 2);
	ld	hl,#_paletteMenusM2
	push	de
	ld	bc,#0x0002
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:78: cpct_fw2hw(paletteMenusM1, 4);
	ld	hl,#_paletteMenusM1
	push	de
	ld	bc,#0x0004
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:80: cpct_setBorder(paletteTrains[12]);
	ld	a, (#_paletteTrains + 12)
	push	de
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
	call	_putM2
	pop	de
;src/main.c:84: do{
	ld	-2 (ix),e
	ld	-1 (ix),d
00105$:
;src/main.c:85: menuChoice = drawMenu(menuMain,3);
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	ld	a,#0x03
	push	af
	inc	sp
	push	de
	call	_drawMenu
	pop	af
	inc	sp
;src/main.c:87: if(menuChoice==0)
	ld	-11 (ix), l
	ld	a, l
	or	a, a
	jr	NZ,00102$
;src/main.c:89: putM1();
	call	_putM1
;src/main.c:91: game();
	call	_game
;src/main.c:93: putM2();
	call	_putM2
00102$:
;src/main.c:96: if(menuChoice==1)
	ld	a,-11 (ix)
	dec	a
	jr	NZ,00106$
;src/main.c:97: drawWindow(windowCredit,3,0);
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	hl,#0x0003
	push	hl
	push	de
	call	_drawWindow
	pop	af
	pop	af
00106$:
;src/main.c:99: while(menuChoice!=2);
	ld	a,-11 (ix)
	sub	a, #0x02
	jr	NZ,00105$
;src/main.c:101: cpct_setVideoMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/main.c:102: cpct_reenableFirmware(firmware);
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	call	_cpct_reenableFirmware
	ld	sp, ix
	pop	ix
	ret
___str_7:
	.ascii "New game"
	.db 0x00
___str_8:
	.ascii "Credits"
	.db 0x00
___str_9:
	.ascii "Quit"
	.db 0x00
___str_10:
	.ascii "Railways"
	.db 0x00
___str_11:
	.db 0x00
___str_12:
	.ascii "Trewdbal  Productions 2016"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
