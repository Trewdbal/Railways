;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Mon Feb  1 21:50:09 2016
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
	.globl _menuStations
	.globl _windowInfoTile
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
	.globl _CURSOR_MODE
	.globl _p_world
	.globl _rail_ns_e
	.globl _rail_ns_w
	.globl _rail_ew_s
	.globl _rail_ew_n
	.globl _rail_ws
	.globl _rail_wn
	.globl _rail_es
	.globl _rail_en
	.globl _rail_ns
	.globl _rail_ew
	.globl _station_large_ew
	.globl _station_large_ns
	.globl _station_medium_ew
	.globl _station_medium_ns
	.globl _station_small_ew
	.globl _station_small_ns
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
_station_small_ns:
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x5E	; 94
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x16	; 22
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0xD2	; 210
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x53	; 83	'S'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x5E	; 94
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x1F	; 31
	.db #0x4F	; 79	'O'
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
_station_small_ew:
	.db #0x0F	; 15
	.db #0x2F	; 47
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
	.db #0x2F	; 47
	.db #0x0C	; 12
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1C	; 28
	.db #0x87	; 135
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1F	; 31
_station_medium_ns:
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x70	; 112	'p'
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x1E	; 30
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x16	; 22
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x2F	; 47
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x1F	; 31
	.db #0x4F	; 79	'O'
	.db #0x1E	; 30
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x9E	; 158
	.db #0x21	; 33
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x4F	; 79	'O'
_station_medium_ew:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0x67	; 103	'g'
	.db #0x4F	; 79	'O'
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0xEF	; 239
	.db #0x0F	; 15
	.db #0x70	; 112	'p'
	.db #0xC3	; 195
	.db #0xCF	; 207
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xB0	; 176
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x3C	; 60
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
_station_large_ns:
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x4F	; 79	'O'
	.db #0x0E	; 14
	.db #0x16	; 22
	.db #0x21	; 33
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x40	; 64
	.db #0x87	; 135
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x43	; 67	'C'
	.db #0x0C	; 12
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x21	; 33
	.db #0x1C	; 28
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x1C	; 28
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x1C	; 28
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x1C	; 28
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x1C	; 28
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x0E	; 14
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x4E	; 78	'N'
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0xD2	; 210
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x70	; 112	'p'
	.db #0xF0	; 240
_station_large_ew:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x0F	; 15
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0xE0	; 224
	.db #0x01	; 1
	.db #0x38	; 56	'8'
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xE1	; 225
	.db #0x3C	; 60
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD0	; 208
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x43	; 67	'C'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x87	; 135
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD0	; 208
	.db #0x0F	; 15
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xC3	; 195
	.db #0x0F	; 15
_rail_ew:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x2F	; 47
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
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x8F	; 143
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
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
_rail_ns:
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x9E	; 158
	.db #0x43	; 67	'C'
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x53	; 83	'S'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x9E	; 158
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
_rail_en:
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xA1	; 161
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x58	; 88	'X'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x2C	; 44
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0xA1	; 161
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x58	; 88	'X'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2C	; 44
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x4F	; 79	'O'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
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
_rail_es:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1F	; 31
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
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x48	; 72	'H'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0xB0	; 176
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2C	; 44
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x58	; 88	'X'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0xA1	; 161
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
_rail_wn:
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x53	; 83	'S'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2C	; 44
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x58	; 88	'X'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xA1	; 161
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x2C	; 44
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xD0	; 208
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x21	; 33
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1F	; 31
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
_rail_ws:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
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
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x21	; 33
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0xD0	; 208
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2C	; 44
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x4F	; 79	'O'
	.db #0xA1	; 161
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x58	; 88	'X'
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2C	; 44
	.db #0x87	; 135
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
_rail_ew_n:
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x9E	; 158
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x53	; 83	'S'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2C	; 44
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x58	; 88	'X'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xA1	; 161
	.db #0x0F	; 15
	.db #0x8F	; 143
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x1F	; 31
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
	.db #0x8F	; 143
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
_rail_ew_s:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
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
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xE0	; 224
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xA1	; 161
	.db #0x4F	; 79	'O'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x58	; 88	'X'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x2C	; 44
	.db #0x87	; 135
	.db #0x8F	; 143
	.db #0x4F	; 79	'O'
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
_rail_ns_w:
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x5E	; 94
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0xE1	; 225
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x4F	; 79	'O'
	.db #0x10	; 16
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0xE0	; 224
	.db #0x96	; 150
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x52	; 82	'R'
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xB0	; 176
	.db #0x53	; 83	'S'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x58	; 88	'X'
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x2C	; 44
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
_rail_ns_e:
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x2F	; 47
	.db #0x0F	; 15
	.db #0x9E	; 158
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x5E	; 94
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x4F	; 79	'O'
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x3C	; 60
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x48	; 72	'H'
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0xB0	; 176
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x52	; 82	'R'
	.db #0x43	; 67	'C'
	.db #0x0F	; 15
	.db #0x5E	; 94
	.db #0x60	; 96
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x50	; 80	'P'
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x21	; 33
	.db #0x0F	; 15
	.db #0x2F	; 47
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
	.db #0x8F	; 143
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0x43	; 67	'C'
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
	ld	-1 (ix), e
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
;src/includes/gui.h:35: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
	ld	a,6 (ix)
	ld	-5 (ix),a
	ld	a,4 (ix)
	ld	-3 (ix),a
	push	bc
	push	de
	ld	hl,#0x0202
	push	hl
	call	_cpct_px2byteM0
	ld	-2 (ix),l
	pop	de
	pop	bc
	push	de
	ld	h,-5 (ix)
	ld	l,-3 (ix)
	push	hl
	ld	a,-2 (ix)
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
	ld	h,-5 (ix)
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
	ld	h,-1 (ix)
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
	ld	-2 (ix),l
	pop	de
	pop	bc
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,-2 (ix)
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
	ld	-3 (ix), a
	add	a, #0x05
	ld	c,a
	ld	-4 (ix), e
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
	ld	h,-3 (ix)
	inc	h
	ld	d,-4 (ix)
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
;src/includes/gui.h:88: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
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
;src/includes/gui.h:89: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
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
;src/includes/gui.h:92: for(i=0; i<14000; i++) {}
	ld	hl,#0x36B0
00108$:
	dec	hl
	ld	a,h
	or	a,l
	jr	NZ,00108$
;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
	ld	a,#0xCA
	sub	a, c
	ld	-3 (ix),a
	ld	a,#0x00
	sbc	a, b
	ld	-2 (ix), a
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
;src/includes/gui.h:97: if(i==iSelect)
	ld	d,7 (ix)
	ld	b,#0x00
	ld	a,-6 (ix)
	sub	a, d
	jr	NZ,00103$
	ld	a,-5 (ix)
	sub	a, b
	jr	NZ,00103$
;src/includes/gui.h:98: penSelected = 1;
	ld	c,#0x01
	jr	00104$
00103$:
;src/includes/gui.h:100: penSelected = 0;
	ld	c,#0x00
00104$:
;src/includes/gui.h:102: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,e
	or	a, a
	jr	Z,00115$
	ld	l,-3 (ix)
	ld	h,-2 (ix)
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
	ld	-4 (ix),l
	push	bc
	push	de
	ld	h,-1 (ix)
	ld	l,-4 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
	push	hl
	pop	iy
;src/includes/gui.h:103: cpct_drawStringM2 (menu[i], p_video, penSelected);
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
;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
	inc	-6 (ix)
	jp	NZ,00110$
	inc	-5 (ix)
	jp	00110$
00112$:
	ld	sp, ix
	pop	ix
	ret
;src/includes/gui.h:107: u8 drawMenu(char **menu, u8 nbEntry)
;	---------------------------------
; Function drawMenu
; ---------------------------------
_drawMenu::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/includes/gui.h:110: u8 iSelect=0;
	ld	b,#0x00
;src/includes/gui.h:112: cpct_clearScreen(0b11111111);
	push	bc
	ld	hl,#0x4000
	push	hl
	ld	a,#0xFF
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
	pop	bc
;src/includes/gui.h:114: drawBoxM2(30,nbEntry*12);
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
;src/includes/gui.h:118: do{
	ld	c,6 (ix)
	dec	c
00111$:
;src/includes/gui.h:119: cpct_scanKeyboard(); 
	push	bc
	call	_cpct_scanKeyboard
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00105$
;src/includes/gui.h:123: EraseMenuEntry(menu, nbEntry, iSelect);
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
;src/includes/gui.h:125: if(iSelect ==0)
	ld	a,b
	or	a, a
	jr	NZ,00102$
;src/includes/gui.h:126: iSelect = nbEntry-1;
	ld	b,c
	jr	00103$
00102$:
;src/includes/gui.h:128: iSelect--;
	dec	b
00103$:
;src/includes/gui.h:130: drawMenuEntry(menu, nbEntry, iSelect);
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
;src/includes/gui.h:133: if ( cpct_isKeyPressed(Key_CursorDown) )
	push	bc
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	e,l
	pop	bc
	ld	a,e
	or	a, a
	jr	Z,00112$
;src/includes/gui.h:135: EraseMenuEntry(menu, nbEntry, iSelect);
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
;src/includes/gui.h:137: if(iSelect == nbEntry-1)
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
;src/includes/gui.h:138: iSelect = 0;
	ld	b,#0x00
	jr	00108$
00107$:
;src/includes/gui.h:140: iSelect++;
	inc	b
00108$:
;src/includes/gui.h:142: drawMenuEntry(menu, nbEntry, iSelect);
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
;src/includes/gui.h:145: while(!cpct_isKeyPressed(Key_Return));
	push	bc
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jp	Z,00111$
;src/includes/gui.h:148: for(i=0; i<14000; i++) {}
	ld	hl,#0x36B0
00117$:
	ex	de,hl
	dec	de
	ld	l, e
	ld	a,d
	ld	h,a
	or	a,e
	jr	NZ,00117$
;src/includes/gui.h:150: return iSelect;
	ld	l,b
	ld	sp, ix
	pop	ix
	ret
;src/includes/gui.h:160: u8 drawWindow(char **text, u8 nbLine, u8 button)
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
;src/includes/gui.h:164: u8 valueReturn=0;
	ld	-11 (ix),#0x00
;src/includes/gui.h:167: if(button == 0)
	ld	a,7 (ix)
	or	a, a
	jr	NZ,00102$
;src/includes/gui.h:168: buttonTxt = "<OK>";
	ld	de,#___str_0
	jr	00103$
00102$:
;src/includes/gui.h:170: buttonTxt = "<OK>  <Cancel>";
	ld	de,#___str_1+0
00103$:
;src/includes/gui.h:172: drawBoxM2(50,(nbLine+2)*12);
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
	ld	hl,#0x0032
	push	hl
	call	_drawBoxM2
	pop	af
	pop	af
	pop	de
	pop	bc
;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
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
	ld	-10 (ix),#0x00
	ld	-9 (ix),#0x00
00114$:
;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
	ld	a,-2 (ix)
	add	a, #0x01
	ld	-4 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
	ld	a,-10 (ix)
	sub	a, 6 (ix)
	jp	NC,00104$
;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
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
	ld	l,-10 (ix)
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
;src/includes/gui.h:177: cpct_drawStringM2 (text[i], p_video, 0);
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
;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
	ld	a,-9 (ix)
	add	a, #0x0A
	ld	-9 (ix),a
	inc	-10 (ix)
	jp	00114$
00104$:
;src/includes/gui.h:180: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
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
;src/includes/gui.h:181: cpct_drawStringM2 (buttonTxt, p_video, 0);
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
;src/includes/gui.h:184: do{
00110$:
;src/includes/gui.h:185: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/includes/gui.h:187: if ( cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00106$
;src/includes/gui.h:188: valueReturn=1;
	ld	-11 (ix),#0x01
00106$:
;src/includes/gui.h:190: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00111$
;src/includes/gui.h:191: valueReturn=0;
	ld	-11 (ix),#0x00
00111$:
;src/includes/gui.h:193: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
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
;src/includes/gui.h:195: return valueReturn;
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
;src/includes/world.h:1: void drawCursor(u8 x, u8 y, u8 color)
;	---------------------------------
; Function drawCursor
; ---------------------------------
_drawCursor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/includes/world.h:4: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
	ld	a,5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	-2 (ix),a
	ld	a,4 (ix)
	add	a, a
	add	a, a
	ld	-1 (ix),a
	ld	h,-2 (ix)
	ld	l,-1 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
;src/includes/world.h:6: switch(CURSOR_MODE)
	ld	a,#0x06
	ld	iy,#_CURSOR_MODE
	sub	a, 0 (iy)
	jp	C,00109$
;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
;src/includes/world.h:6: switch(CURSOR_MODE)
	ld	iy,#_CURSOR_MODE
	ld	e,0 (iy)
	ld	d,#0x00
	ld	hl,#00115$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00115$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
;src/includes/world.h:8: case NONE:
00101$:
;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
	push	bc
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
	pop	bc
	ld	de,#0x0004
	push	de
	push	hl
	inc	sp
	push	bc
	call	_cpct_memset
;src/includes/world.h:10: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
	ld	h,-2 (ix)
	inc	h
	push	hl
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/includes/world.h:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
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
	ld	c,l
	pop	de
	ld	hl,#0x0004
	push	hl
	ld	a,c
	push	af
	inc	sp
	push	de
	call	_cpct_memset
;src/includes/world.h:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
	ld	a,5 (ix)
	inc	a
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	-2 (ix), a
	ld	h, a
	dec	h
	push	hl
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/includes/world.h:15: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
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
	ld	c,l
	pop	de
	ld	hl,#0x0004
	push	hl
	ld	a,c
	push	af
	inc	sp
	push	de
	call	_cpct_memset
;src/includes/world.h:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
	ld	h,-2 (ix)
	dec	h
	dec	h
	push	hl
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/includes/world.h:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
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
;src/includes/world.h:18: break;
	jr	00109$
;src/includes/world.h:19: case T_SSNS:
00102$:
;src/includes/world.h:20: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_small_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:21: break;
	jr	00109$
;src/includes/world.h:23: case T_SSEW:
00103$:
;src/includes/world.h:24: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_small_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:25: break;
	jr	00109$
;src/includes/world.h:26: case T_SMNS:
00104$:
;src/includes/world.h:27: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_medium_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:28: break;
	jr	00109$
;src/includes/world.h:29: case T_SMEW:
00105$:
;src/includes/world.h:30: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_medium_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:31: break;
	jr	00109$
;src/includes/world.h:32: case T_SLNS:
00106$:
;src/includes/world.h:33: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_large_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:34: break;
	jr	00109$
;src/includes/world.h:35: case T_SLEW:
00107$:
;src/includes/world.h:36: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_large_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:38: }
00109$:
	ld	sp, ix
	pop	ix
	ret
;src/includes/world.h:41: void generateWorld()
;	---------------------------------
; Function generateWorld
; ---------------------------------
_generateWorld::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/includes/world.h:49: cpct_setRandomSeedUniform_u8(0);
	ld	l,#0x00
	call	_cpct_setRandomSeedUniform_u8
;src/includes/world.h:51: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	ld	de,#0x0000
00114$:
;src/includes/world.h:53: p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
	ld	hl,#_p_world
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
;src/includes/world.h:51: for(iy=0; iy<HEIGHT*WIDTH;iy++)
	inc	de
	ld	a,d
	xor	a, #0x80
	sub	a, #0x8F
	jr	C,00114$
;src/includes/world.h:80: cpct_setRandomSeedUniform_u8(1);
	ld	l,#0x01
	call	_cpct_setRandomSeedUniform_u8
;src/includes/world.h:82: for(ix=0; ix<NBFARM; ix++)
	ld	hl,#0x0000
	ex	(sp), hl
00116$:
;src/includes/world.h:84: iy = cpct_getRandomUniform_u8_f(1)*15; // (WIDTH*HEIGHT)/255;
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
;src/includes/world.h:86: shift = cpct_getRandomUniform_u8_f(1)%10;
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
;src/includes/world.h:87: shift=iy-shift+5;
	ld	a,e
	sub	a, l
	ld	l,a
	ld	a,d
	sbc	a, h
	ld	h,a
	ld	bc,#0x0005
	add	hl,bc
;src/includes/world.h:89: if(shift>0 && shift<WIDTH*HEIGHT)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	PO, 00180$
	xor	a, #0x80
00180$:
	jp	P,00117$
	ld	a,h
	xor	a, #0x80
	sub	a, #0x8F
	jr	NC,00117$
;src/includes/world.h:90: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(1)%2+5;
	ld	de,#_p_world
	add	hl,de
	push	hl
	ld	l,#0x01
	call	_cpct_getRandomUniform_u8_f
	ld	a,l
	pop	hl
	and	a, #0x01
	add	a, #0x05
	ld	(hl),a
00117$:
;src/includes/world.h:82: for(ix=0; ix<NBFARM; ix++)
	inc	-4 (ix)
	jr	NZ,00181$
	inc	-3 (ix)
00181$:
	ld	a,-4 (ix)
	sub	a, #0x3C
	ld	a,-3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00116$
;src/includes/world.h:95: cpct_setRandomSeedUniform_u8(2);
	ld	l,#0x02
	call	_cpct_setRandomSeedUniform_u8
;src/includes/world.h:97: for(ix=0; ix<NBURBAN; ix++)
	ld	hl,#0x0000
	ex	(sp), hl
00118$:
;src/includes/world.h:99: iy = cpct_getRandomUniform_u8_f(2)*15; // (WIDTH*HEIGHT)/255;
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
;src/includes/world.h:101: shift = cpct_getRandomUniform_u8_f(2)%10;
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
;src/includes/world.h:102: shift=iy-shift+5;
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
;src/includes/world.h:104: if(shift>0 && shift<WIDTH*HEIGHT)
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00182$
	xor	a, #0x80
00182$:
	jp	P,00119$
	ld	a,b
	xor	a, #0x80
	sub	a, #0x8F
	jr	NC,00119$
;src/includes/world.h:105: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(2)%3+2;
	ld	hl,#_p_world
	add	hl,bc
	push	hl
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
00119$:
;src/includes/world.h:97: for(ix=0; ix<NBURBAN; ix++)
	inc	-4 (ix)
	jr	NZ,00183$
	inc	-3 (ix)
00183$:
	ld	a,-4 (ix)
	sub	a, #0x1E
	ld	a,-3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00118$
;src/includes/world.h:110: cpct_setRandomSeedUniform_u8(3);
	ld	l,#0x03
	call	_cpct_setRandomSeedUniform_u8
;src/includes/world.h:112: for(ix=0; ix<NBLIVESTOCK; ix++)
	ld	de,#0x0000
00120$:
;src/includes/world.h:114: iy = cpct_getRandomUniform_u8_f(3)*15; // (WIDTH*HEIGHT)/255;
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
;src/includes/world.h:116: shift = cpct_getRandomUniform_u8_f(3)%10;
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
;src/includes/world.h:117: shift=iy-shift+5;
	ld	a,-2 (ix)
	sub	a, l
	ld	l,a
	ld	a,-1 (ix)
	sbc	a, h
	ld	h,a
	ld	bc,#0x0005
	add	hl,bc
;src/includes/world.h:119: if(shift>0 && shift<WIDTH*HEIGHT)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	PO, 00184$
	xor	a, #0x80
00184$:
	jp	P,00121$
	ld	a,h
	xor	a, #0x80
	sub	a, #0x8F
	jr	NC,00121$
;src/includes/world.h:120: p_world[shift] = LIVESTOCK;
	ld	bc,#_p_world
	add	hl,bc
	ld	(hl),#0x09
00121$:
;src/includes/world.h:112: for(ix=0; ix<NBLIVESTOCK; ix++)
	inc	de
	ld	a,e
	sub	a, #0x13
	ld	a,d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00120$
	ld	sp, ix
	pop	ix
	ret
;src/includes/world.h:124: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
;	---------------------------------
; Function drawTile
; ---------------------------------
_drawTile::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/includes/world.h:127: int adress = (y_+iy)*WIDTH+x_+ix;
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
;src/includes/world.h:129: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
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
;src/includes/world.h:131: switch(p_world[adress])
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
;src/includes/world.h:133: case GRASS1:
00101$:
;src/includes/world.h:134: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_grass1
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:135: break;
	jp	00128$
;src/includes/world.h:136: case GRASS2:
00102$:
;src/includes/world.h:137: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_grass2
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:138: break;
	jp	00128$
;src/includes/world.h:139: case DWELLINGS1:
00103$:
;src/includes/world.h:140: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_dwellings1
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:141: break;
	jp	00128$
;src/includes/world.h:142: case DWELLINGS2:
00104$:
;src/includes/world.h:143: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_dwellings2
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:144: break;
	jp	00128$
;src/includes/world.h:145: case DWELLINGS3:
00105$:
;src/includes/world.h:146: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_dwellings3
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:147: break;
	jp	00128$
;src/includes/world.h:148: case FARM1:
00106$:
;src/includes/world.h:149: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_farm1
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:150: break;
	jp	00128$
;src/includes/world.h:151: case FARM2:
00107$:
;src/includes/world.h:152: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_farm2
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:153: break;
	jp	00128$
;src/includes/world.h:154: case WATER:
00108$:
;src/includes/world.h:155: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_water
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:156: break;
	jp	00128$
;src/includes/world.h:157: case FOREST:
00109$:
;src/includes/world.h:158: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_forest
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:159: break;
	jp	00128$
;src/includes/world.h:160: case LIVESTOCK:
00110$:
;src/includes/world.h:161: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_livestock
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:162: break;
	jp	00128$
;src/includes/world.h:163: case SSNS:
00111$:
;src/includes/world.h:164: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_small_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:165: break;
	jp	00128$
;src/includes/world.h:166: case SSEW:
00112$:
;src/includes/world.h:167: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_small_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:168: break;
	jp	00128$
;src/includes/world.h:169: case SMNS:
00113$:
;src/includes/world.h:170: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_medium_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:171: break;
	jp	00128$
;src/includes/world.h:172: case SMEW:
00114$:
;src/includes/world.h:173: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_medium_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:174: break;
	jp	00128$
;src/includes/world.h:175: case SLNS:
00115$:
;src/includes/world.h:176: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_large_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:177: break;
	jp	00128$
;src/includes/world.h:178: case SLEW:
00116$:
;src/includes/world.h:179: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_station_large_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:180: break;
	jp	00128$
;src/includes/world.h:181: case REW:
00117$:
;src/includes/world.h:182: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ew
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:183: break;
	jp	00128$
;src/includes/world.h:184: case RNS:
00118$:
;src/includes/world.h:185: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ns
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:186: break;
	jr	00128$
;src/includes/world.h:187: case REN:
00119$:
;src/includes/world.h:188: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_en
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:189: break;
	jr	00128$
;src/includes/world.h:190: case RES:
00120$:
;src/includes/world.h:191: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_es
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:192: break;
	jr	00128$
;src/includes/world.h:193: case RWN:
00121$:
;src/includes/world.h:194: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_wn
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:195: break;
	jr	00128$
;src/includes/world.h:196: case RWS:
00122$:
;src/includes/world.h:197: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ws
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:198: break;
	jr	00128$
;src/includes/world.h:199: case REWN:
00123$:
;src/includes/world.h:200: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ew_n
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:201: break;
	jr	00128$
;src/includes/world.h:202: case REWS:
00124$:
;src/includes/world.h:203: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ew_s
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:204: break;
	jr	00128$
;src/includes/world.h:205: case RNSE:
00125$:
;src/includes/world.h:206: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
	ld	de,#_rail_ns_e
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:207: break;
	jr	00128$
;src/includes/world.h:208: case RNSW:
00126$:
;src/includes/world.h:209: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
	ld	de,#_rail_ns_w
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/includes/world.h:211: }
00128$:
	pop	ix
	ret
;src/includes/world.h:214: void drawWorld(u8 x_, u8 y_)
;	---------------------------------
; Function drawWorld
; ---------------------------------
_drawWorld::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/includes/world.h:222: for(iy=0; iy<NBTILE_H;iy++)
	ld	d,#0x00
;src/includes/world.h:224: for(ix=0; ix<NBTILE_W;ix++)
00109$:
	ld	e,#0x00
00103$:
;src/includes/world.h:226: drawTile(x_, y_, ix, iy);
	push	de
	push	de
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
	pop	de
;src/includes/world.h:224: for(ix=0; ix<NBTILE_W;ix++)
	inc	e
	ld	a,e
	sub	a, #0x14
	jr	C,00103$
;src/includes/world.h:222: for(iy=0; iy<NBTILE_H;iy++)
	inc	d
	ld	a,d
	sub	a, #0x0C
	jr	C,00109$
;src/includes/world.h:232: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
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
;src/includes/world.h:233: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
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
;src/includes/world.h:235: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/includes/world.h:236: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
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
;src/includes/world.h:238: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
	ld	a,-1 (ix)
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/includes/world.h:239: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
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
;src/includes/game.h:1: void windowInfoTile(u8 x, u8 y)
;	---------------------------------
; Function windowInfoTile
; ---------------------------------
_windowInfoTile::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:5: switch(p_world[y*WIDTH+x])
	ld	c,5 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
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
	ld	de,#_p_world
	add	hl,de
	ld	c,(hl)
	ld	a,#0x09
	sub	a, c
	jp	C,00111$
	ld	e,c
	ld	d,#0x00
	ld	hl,#00119$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00119$:
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
;src/includes/game.h:7: case GRASS1:
00101$:
;src/includes/game.h:8: case GRASS2:
00102$:
;src/includes/game.h:9: txtWindowInfoTile[0] = "Grassland";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_2)
	inc	hl
	ld	(hl),#>(___str_2)
;src/includes/game.h:10: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:11: txtWindowInfoTile[2] = "Production: nothing";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_4+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:12: txtWindowInfoTile[3] = "Demand: nothing";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_5+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/includes/game.h:13: break;
	jp	00112$
;src/includes/game.h:14: case DWELLINGS1:
00103$:
;src/includes/game.h:15: case DWELLINGS2:
00104$:
;src/includes/game.h:16: case DWELLINGS3:
00105$:
;src/includes/game.h:17: txtWindowInfoTile[0] = "City";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_6)
	inc	hl
	ld	(hl),#>(___str_6)
;src/includes/game.h:18: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:19: txtWindowInfoTile[2] = "Production: Passengers, mail";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_7+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:20: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_8+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/includes/game.h:21: break;
	jp	00112$
;src/includes/game.h:22: case FARM1:
00106$:
;src/includes/game.h:23: case FARM2:
00107$:
;src/includes/game.h:24: txtWindowInfoTile[0] = "Farm";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_9)
	inc	hl
	ld	(hl),#>(___str_9)
;src/includes/game.h:25: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:26: txtWindowInfoTile[2] = "Production: Cereal";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_10+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:27: txtWindowInfoTile[3] = "Demand: Nothing";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_11+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/includes/game.h:28: break;
	jp	00112$
;src/includes/game.h:29: case WATER:
00108$:
;src/includes/game.h:30: txtWindowInfoTile[0] = "Water";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_12)
	inc	hl
	ld	(hl),#>(___str_12)
;src/includes/game.h:31: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:32: txtWindowInfoTile[2] = "Production: Nothing";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_13+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:33: txtWindowInfoTile[3] = "Demand: Nothing";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_11+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/includes/game.h:34: break;
	jp	00112$
;src/includes/game.h:35: case FOREST:
00109$:
;src/includes/game.h:36: txtWindowInfoTile[0] = "Forest";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_14)
	inc	hl
	ld	(hl),#>(___str_14)
;src/includes/game.h:37: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:38: txtWindowInfoTile[2] = "Production: Nothing";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_13+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:39: txtWindowInfoTile[3] = "Demand: Nothing";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_11+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/includes/game.h:40: break;
	jr	00112$
;src/includes/game.h:41: case LIVESTOCK:
00110$:
;src/includes/game.h:42: txtWindowInfoTile[0] = "Livestock farming";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_15)
	inc	hl
	ld	(hl),#>(___str_15)
;src/includes/game.h:43: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:44: txtWindowInfoTile[2] = "Production: Livestock, wool";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_16+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:45: txtWindowInfoTile[3] = "Demand: Cereal";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_17+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/includes/game.h:46: break;
	jr	00112$
;src/includes/game.h:47: default:
00111$:
;src/includes/game.h:48: txtWindowInfoTile[0] = "Not yet implemented";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_18)
	inc	hl
	ld	(hl),#>(___str_18)
;src/includes/game.h:49: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:50: txtWindowInfoTile[2] = "Production: ?";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_19+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:51: txtWindowInfoTile[3] = "Demand: ?";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_20+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/includes/game.h:53: }
00112$:
;src/includes/game.h:55: drawWindow(txtWindowInfoTile, 4, 0);
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl,#0x0004
	push	hl
	push	de
	call	_drawWindow
	ld	sp,ix
	pop	ix
	ret
___str_2:
	.ascii "Grassland"
	.db 0x00
___str_3:
	.db 0x00
___str_4:
	.ascii "Production: nothing"
	.db 0x00
___str_5:
	.ascii "Demand: nothing"
	.db 0x00
___str_6:
	.ascii "City"
	.db 0x00
___str_7:
	.ascii "Production: Passengers, mail"
	.db 0x00
___str_8:
	.ascii "Demand: Passenger, mail, food, goods"
	.db 0x00
___str_9:
	.ascii "Farm"
	.db 0x00
___str_10:
	.ascii "Production: Cereal"
	.db 0x00
___str_11:
	.ascii "Demand: Nothing"
	.db 0x00
___str_12:
	.ascii "Water"
	.db 0x00
___str_13:
	.ascii "Production: Nothing"
	.db 0x00
___str_14:
	.ascii "Forest"
	.db 0x00
___str_15:
	.ascii "Livestock farming"
	.db 0x00
___str_16:
	.ascii "Production: Livestock, wool"
	.db 0x00
___str_17:
	.ascii "Demand: Cereal"
	.db 0x00
___str_18:
	.ascii "Not yet implemented"
	.db 0x00
___str_19:
	.ascii "Production: ?"
	.db 0x00
___str_20:
	.ascii "Demand: ?"
	.db 0x00
;src/includes/game.h:58: void menuStations()
;	---------------------------------
; Function menuStations
; ---------------------------------
_menuStations::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:62: const char *txtMenuSizeStation[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_21)
	inc	hl
	ld	(hl),#>(___str_21)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_22+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_23+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:68: result = drawMenu(txtMenuSizeStation,3);
	ld	a,#0x03
	push	af
	inc	sp
	push	de
	call	_drawMenu
	pop	af
	inc	sp
	ld	e,l
;src/includes/game.h:70: switch(result)
	ld	a,#0x02
	sub	a, e
	jr	C,00105$
	ld	d,#0x00
	ld	hl,#00111$
	add	hl,de
	add	hl,de
;src/includes/game.h:72: case 0:
	jp	(hl)
00111$:
	jr	00101$
	jr	00102$
	jr	00103$
00101$:
;src/includes/game.h:73: CURSOR_MODE=T_SSEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x02
;src/includes/game.h:74: break;
	jr	00105$
;src/includes/game.h:76: case 1:
00102$:
;src/includes/game.h:77: CURSOR_MODE=T_SMEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x04
;src/includes/game.h:78: break;
	jr	00105$
;src/includes/game.h:80: case 2:
00103$:
;src/includes/game.h:81: CURSOR_MODE=T_SLEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x06
;src/includes/game.h:83: }
00105$:
	ld	sp, ix
	pop	ix
	ret
___str_21:
	.ascii "Small"
	.db 0x00
___str_22:
	.ascii "Medium"
	.db 0x00
___str_23:
	.ascii "Large"
	.db 0x00
;src/includes/game.h:87: void menuTile(u8 x, u8 y)
;	---------------------------------
; Function menuTile
; ---------------------------------
_menuTile::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:91: const char *txtMenuTile[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_24)
	inc	hl
	ld	(hl),#>(___str_24)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_25+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_26+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0006
	add	hl,de
	ld	bc,#___str_27+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0008
	add	hl,de
	ld	bc,#___str_28+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x000A
	add	hl,de
	ld	bc,#___str_29+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x000C
	add	hl,de
	ld	bc,#___str_30+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/includes/game.h:101: putM2();
	push	de
	call	_putM2
	pop	de
;src/includes/game.h:103: do{
00106$:
;src/includes/game.h:104: menuChoice = drawMenu(txtMenuTile,7);
	ld	c, e
	ld	b, d
	push	de
	ld	a,#0x07
	push	af
	inc	sp
	push	bc
	call	_drawMenu
	pop	af
	inc	sp
	pop	de
	ld	b,l
;src/includes/game.h:106: if(menuChoice==0)
	ld	a,b
	or	a, a
	jr	NZ,00104$
;src/includes/game.h:107: windowInfoTile(x, y);
	push	bc
	push	de
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	call	_windowInfoTile
	pop	af
	pop	de
	pop	bc
	jr	00107$
00104$:
;src/includes/game.h:108: else if(menuChoice==2)
	ld	a,b
	sub	a, #0x02
	jr	NZ,00107$
;src/includes/game.h:110: menuStations();
	push	de
	call	_menuStations
	pop	de
;src/includes/game.h:111: menuChoice=6;
	ld	b,#0x06
00107$:
;src/includes/game.h:115: while(menuChoice!=6);
	ld	a,b
	sub	a, #0x06
	jr	NZ,00106$
;src/includes/game.h:117: putM1();
	call	_putM1
	ld	sp, ix
	pop	ix
	ret
___str_24:
	.ascii "About this tile"
	.db 0x00
___str_25:
	.ascii "Build a railway"
	.db 0x00
___str_26:
	.ascii "Build a station"
	.db 0x00
___str_27:
	.ascii "Destroy"
	.db 0x00
___str_28:
	.ascii "Railroad depot"
	.db 0x00
___str_29:
	.ascii "Accounting"
	.db 0x00
___str_30:
	.ascii "Resume"
	.db 0x00
;src/includes/game.h:121: void game()
;	---------------------------------
; Function game
; ---------------------------------
_game::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-15
	add	hl,sp
	ld	sp,hl
;src/includes/game.h:124: int ulx = 0;
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
;src/includes/game.h:125: int uly = 0;
	ld	hl,#0x0000
	ex	(sp), hl
;src/includes/game.h:126: int xCursor = 10;
	ld	-8 (ix),#0x0A
	ld	-7 (ix),#0x00
;src/includes/game.h:127: int yCursor = 6;
	ld	-13 (ix),#0x06
	ld	-12 (ix),#0x00
;src/includes/game.h:129: u8 exit=0;
	ld	-11 (ix),#0x00
;src/includes/game.h:131: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
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
;src/includes/game.h:133: generateWorld();
	call	_generateWorld
;src/includes/game.h:135: drawWorld(ulx, uly);
	ld	hl,#0x0000
	push	hl
	call	_drawWorld
	pop	af
;src/includes/game.h:137: do{
00150$:
;src/includes/game.h:138: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/includes/game.h:140: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
;src/includes/game.h:142: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-8 (ix)
	ld	-1 (ix),a
	ld	a,-15 (ix)
	ld	-2 (ix),a
	ld	a,-6 (ix)
	ld	-3 (ix),a
;src/includes/game.h:140: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	a,l
	or	a, a
	jr	Z,00107$
;src/includes/game.h:142: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-13 (ix)
	ld	-4 (ix), a
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
;src/includes/game.h:144: yCursor-=1;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	dec	hl
	ld	-13 (ix),l
	ld	-12 (ix),h
;src/includes/game.h:147: if(yCursor<0)
	bit	7, -12 (ix)
	jr	Z,00176$
;src/includes/game.h:149: yCursor=0;
	ld	-13 (ix),#0x00
	ld	-12 (ix),#0x00
;src/includes/game.h:152: if(uly>0)
	xor	a, a
	cp	a, -15 (ix)
	sbc	a, -14 (ix)
	jp	PO, 00293$
	xor	a, #0x80
00293$:
	jp	P,00176$
;src/includes/game.h:154: uly-=1;
	pop	hl
	push	hl
	dec	hl
	ex	(sp), hl
;src/includes/game.h:142: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-15 (ix)
;src/includes/game.h:155: drawWorld(ulx, uly);
	ld	-2 (ix), a
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/includes/game.h:160: for(i=0; i<14000; i++) {}
00176$:
	ld	de,#0x36B0
00155$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00155$
00107$:
;src/includes/game.h:163: if ( cpct_isKeyPressed(Key_CursorDown) )
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00114$
;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
	ld	h,-13 (ix)
	push	hl
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
;src/includes/game.h:166: yCursor+=1;
	inc	-13 (ix)
	jr	NZ,00294$
	inc	-12 (ix)
00294$:
;src/includes/game.h:167: if(yCursor>NBTILE_H-1)
	ld	a,#0x0B
	cp	a, -13 (ix)
	ld	a,#0x00
	sbc	a, -12 (ix)
	jp	PO, 00295$
	xor	a, #0x80
00295$:
	jp	P,00181$
;src/includes/game.h:169: yCursor=NBTILE_H-1;
	ld	-13 (ix),#0x0B
	ld	-12 (ix),#0x00
;src/includes/game.h:170: if(uly<HEIGHT-NBTILE_H)
	ld	a,-15 (ix)
	sub	a, #0x24
	ld	a,-14 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00181$
;src/includes/game.h:172: uly+=1;
	inc	-15 (ix)
	jr	NZ,00296$
	inc	-14 (ix)
00296$:
;src/includes/game.h:142: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-15 (ix)
;src/includes/game.h:173: drawWorld(ulx, uly);
	ld	-2 (ix), a
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/includes/game.h:178: for(i=0; i<14000; i++) {}
00181$:
	ld	-10 (ix),#0xB0
	ld	-9 (ix),#0x36
00158$:
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	dec	hl
	ld	-10 (ix),l
	ld	-9 (ix), h
	ld	a, h
	or	a,-10 (ix)
	jr	NZ,00158$
00114$:
;src/includes/game.h:181: if ( cpct_isKeyPressed(Key_CursorLeft) )
	ld	hl,#0x0101
	call	_cpct_isKeyPressed
;src/includes/game.h:142: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-13 (ix)
	ld	-4 (ix),a
;src/includes/game.h:181: if ( cpct_isKeyPressed(Key_CursorLeft) )
	ld	a,l
	or	a, a
	jr	Z,00121$
;src/includes/game.h:183: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
;src/includes/game.h:184: xCursor-=1;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	dec	hl
	ld	-8 (ix),l
	ld	-7 (ix),h
;src/includes/game.h:185: if(xCursor<0)
	bit	7, -7 (ix)
	jr	Z,00186$
;src/includes/game.h:187: xCursor=0;
	ld	-8 (ix),#0x00
	ld	-7 (ix),#0x00
;src/includes/game.h:188: if(ulx>0)
	xor	a, a
	cp	a, -6 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00297$
	xor	a, #0x80
00297$:
	jp	P,00186$
;src/includes/game.h:190: ulx-=1;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	dec	hl
	ld	-6 (ix),l
	ld	-5 (ix),h
;src/includes/game.h:142: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-6 (ix)
	ld	-3 (ix),a
;src/includes/game.h:191: drawWorld(ulx, uly);
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/includes/game.h:196: for(i=0; i<14000; i++) {}
00186$:
	ld	de,#0x36B0
00161$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00161$
00121$:
;src/includes/game.h:199: if ( cpct_isKeyPressed(Key_CursorRight) )
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00128$
;src/includes/game.h:201: drawTile(ulx, uly, xCursor, yCursor);
	ld	d,-8 (ix)
	ld	a,-4 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
;src/includes/game.h:202: xCursor+=1;
	inc	-8 (ix)
	jr	NZ,00298$
	inc	-7 (ix)
00298$:
;src/includes/game.h:203: if(xCursor>NBTILE_W-1)
	ld	a,#0x13
	cp	a, -8 (ix)
	ld	a,#0x00
	sbc	a, -7 (ix)
	jp	PO, 00299$
	xor	a, #0x80
00299$:
	jp	P,00191$
;src/includes/game.h:205: xCursor=NBTILE_W-1;
	ld	-8 (ix),#0x13
	ld	-7 (ix),#0x00
;src/includes/game.h:206: if(ulx<WIDTH-NBTILE_W)
	ld	a,-6 (ix)
	sub	a, #0x3C
	ld	a,-5 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00191$
;src/includes/game.h:208: ulx+=1;
	inc	-6 (ix)
	jr	NZ,00300$
	inc	-5 (ix)
00300$:
;src/includes/game.h:142: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-6 (ix)
	ld	-3 (ix),a
;src/includes/game.h:209: drawWorld(ulx, uly);
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/includes/game.h:214: for(i=0; i<14000; i++) {}
00191$:
	ld	de,#0x36B0
00164$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00164$
00128$:
;src/includes/game.h:218: if ( cpct_isKeyPressed(Key_Space) )
	ld	hl,#0x8005
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00138$
;src/includes/game.h:220: switch(CURSOR_MODE)
	ld	a,(#_CURSOR_MODE + 0)
	sub	a, #0x01
	jr	C,00196$
	ld	a,#0x06
	ld	iy,#_CURSOR_MODE
	sub	a, 0 (iy)
	jr	C,00196$
	ld	iy,#_CURSOR_MODE
	ld	e,0 (iy)
	dec	e
	ld	d,#0x00
	ld	hl,#00301$
	add	hl,de
	add	hl,de
;src/includes/game.h:222: case T_SSNS:
	jp	(hl)
00301$:
	jr	00129$
	jr	00130$
	jr	00131$
	jr	00132$
	jr	00133$
	jr	00134$
00129$:
;src/includes/game.h:223: CURSOR_MODE=T_SSEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x02
;src/includes/game.h:224: break;
	jr	00196$
;src/includes/game.h:225: case T_SSEW:
00130$:
;src/includes/game.h:226: CURSOR_MODE=T_SSNS;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x01
;src/includes/game.h:227: break;
	jr	00196$
;src/includes/game.h:228: case T_SMNS:
00131$:
;src/includes/game.h:229: CURSOR_MODE=T_SMEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x04
;src/includes/game.h:230: break;
	jr	00196$
;src/includes/game.h:231: case T_SMEW:
00132$:
;src/includes/game.h:232: CURSOR_MODE=T_SMNS;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x03
;src/includes/game.h:233: break;
	jr	00196$
;src/includes/game.h:234: case T_SLNS:
00133$:
;src/includes/game.h:235: CURSOR_MODE=T_SLEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x06
;src/includes/game.h:236: break;
	jr	00196$
;src/includes/game.h:237: case T_SLEW:
00134$:
;src/includes/game.h:238: CURSOR_MODE=T_SLNS;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x05
;src/includes/game.h:242: for(i=0; i<14000; i++) {}
00196$:
	ld	hl,#0x36B0
00167$:
	dec	hl
	ld	a,h
	or	a,l
	jr	NZ,00167$
00138$:
;src/includes/game.h:245: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00140$
;src/includes/game.h:247: exit=1;
	ld	-11 (ix),#0x01
00140$:
;src/includes/game.h:250: if ( cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00149$
;src/includes/game.h:253: if(CURSOR_MODE==NONE)
	ld	a,(#_CURSOR_MODE + 0)
	or	a, a
	jr	NZ,00145$
;src/includes/game.h:255: menuTile(ulx+xCursor, uly+yCursor);
	ld	a, -15 (ix)
	ld	l, -13 (ix)
	add	a, l
	ld	h,a
	ld	l,-6 (ix)
	ld	d,-8 (ix)
	ld	a,l
	add	a, d
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_menuTile
	pop	af
;src/includes/game.h:256: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
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
;src/includes/game.h:257: drawWorld(ulx, uly);
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-3 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
	jr	00203$
00145$:
;src/includes/game.h:260: else if(CURSOR_MODE>=T_SSNS && CURSOR_MODE<=T_SLEW)
	ld	a,(#_CURSOR_MODE + 0)
	sub	a, #0x01
	jr	C,00203$
	ld	a,#0x06
	ld	iy,#_CURSOR_MODE
	sub	a, 0 (iy)
	jr	C,00203$
;src/includes/game.h:262: p_world[ulx+xCursor+uly+yCursor*WIDTH]=CURSOR_MODE+9;
	ld	a,-6 (ix)
	add	a, -8 (ix)
	ld	h,a
	ld	a,-5 (ix)
	adc	a, -7 (ix)
	ld	l,a
	ld	a,h
	add	a, -15 (ix)
	ld	e,a
	ld	a,l
	adc	a, -14 (ix)
	ld	d,a
	ld	c,-13 (ix)
	ld	b,-12 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl,de
	ld	a,#<(_p_world)
	add	a, l
	ld	e,a
	ld	a,#>(_p_world)
	adc	a, h
	ld	d,a
	ld	a,(#_CURSOR_MODE + 0)
	add	a, #0x09
	ld	(de),a
;src/includes/game.h:263: CURSOR_MODE=NONE;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x00
;src/includes/game.h:267: for(i=0; i<14000; i++) {}
00203$:
	ld	hl,#0x36B0
00170$:
	dec	hl
	ld	a,h
	or	a,l
	jr	NZ,00170$
00149$:
;src/includes/game.h:271: drawCursor(xCursor, yCursor, 0);
	ld	d,-8 (ix)
	xor	a, a
	push	af
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_drawCursor
	pop	af
	inc	sp
;src/includes/game.h:273: while(!exit);
	ld	a,-11 (ix)
	or	a, a
	jp	Z,00150$
	ld	sp, ix
	pop	ix
	ret
;src/main.c:17: void drawTrain() 
;	---------------------------------
; Function drawTrain
; ---------------------------------
_drawTrain::
;src/main.c:55: }
	ret
;src/main.c:58: void main(void)
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
;src/main.c:63: const char *menuMain[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_31)
	inc	hl
	ld	(hl),#>(___str_31)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_32+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_33+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/main.c:69: const char *windowCredit[] = { 
	ld	hl,#0x0007
	add	hl,sp
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#<(___str_34)
	inc	hl
	ld	(hl),#>(___str_34)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	bc,#___str_35+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,-2 (ix)
	add	a, #0x04
	ld	l,a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	h,a
	ld	bc,#___str_36+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/main.c:75: firmware = cpct_disableFirmware();
	push	de
	call	_cpct_disableFirmware
	pop	de
	ld	-6 (ix),l
	ld	-5 (ix),h
;src/main.c:77: cpct_fw2hw(paletteTrains, 16);
	ld	hl,#_paletteTrains
	push	de
	ld	bc,#0x0010
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:78: cpct_fw2hw(paletteMenusM2, 2);
	ld	hl,#_paletteMenusM2
	push	de
	ld	bc,#0x0002
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:79: cpct_fw2hw(paletteMenusM1, 4);
	ld	hl,#_paletteMenusM1
	push	de
	ld	bc,#0x0004
	push	bc
	push	hl
	call	_cpct_fw2hw
	pop	de
;src/main.c:81: cpct_setBorder(paletteTrains[12]);
	ld	a, (#_paletteTrains + 12)
	push	de
	ld	d,a
	ld	e,#0x10
	push	de
	call	_cpct_setPALColour
	call	_putM2
	pop	de
;src/main.c:85: do{
	ld	-4 (ix),e
	ld	-3 (ix),d
00105$:
;src/main.c:86: menuChoice = drawMenu(menuMain,3);
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	a,#0x03
	push	af
	inc	sp
	push	de
	call	_drawMenu
	pop	af
	inc	sp
;src/main.c:88: if(menuChoice==0)
	ld	-13 (ix), l
	ld	a, l
	or	a, a
	jr	NZ,00102$
;src/main.c:90: putM1();
	call	_putM1
;src/main.c:92: game();
	call	_game
;src/main.c:94: putM2();
	call	_putM2
00102$:
;src/main.c:97: if(menuChoice==1)
	ld	a,-13 (ix)
	dec	a
	jr	NZ,00106$
;src/main.c:98: drawWindow(windowCredit,3,0);
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	ld	hl,#0x0003
	push	hl
	push	de
	call	_drawWindow
	pop	af
	pop	af
00106$:
;src/main.c:100: while(menuChoice!=2);
	ld	a,-13 (ix)
	sub	a, #0x02
	jr	NZ,00105$
;src/main.c:102: cpct_setVideoMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
;src/main.c:103: cpct_reenableFirmware(firmware);
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	call	_cpct_reenableFirmware
	ld	sp, ix
	pop	ix
	ret
___str_31:
	.ascii "New game"
	.db 0x00
___str_32:
	.ascii "Credits"
	.db 0x00
___str_33:
	.ascii "Quit"
	.db 0x00
___str_34:
	.ascii "Railways"
	.db 0x00
___str_35:
	.db 0x00
___str_36:
	.ascii "Trewdbal  Productions 2016"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
__xinit__CURSOR_MODE:
	.db #0x00	; 0
	.area _CABS (ABS)
