;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Mon Feb  8 17:23:03 2016
;--------------------------------------------------------
	.module game
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _railroadDepot
	.globl _drawWorld
	.globl _drawScrolls
	.globl _drawTile
	.globl _generateWorld
	.globl _drawCursor
	.globl _drawWindow
	.globl _drawMenu
	.globl _drawBoxM2
	.globl _putM2
	.globl _putM1
	.globl _cpct_getScreenPtr
	.globl _cpct_drawStringM2
	.globl _cpct_px2byteM1
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _windowInfoTile
	.globl _menuStations
	.globl _menuTile
	.globl _game
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
;src/game/game.c:3: void windowInfoTile(u8 x, u8 y)
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
;src/game/game.c:7: switch(p_world[y*WIDTH+x])
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
;src/game/game.c:9: case GRASS1:
00101$:
;src/game/game.c:10: case GRASS2:
00102$:
;src/game/game.c:11: txtWindowInfoTile[0] = "Grassland";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_0)
	inc	hl
	ld	(hl),#>(___str_0)
;src/game/game.c:12: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_1+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:13: txtWindowInfoTile[2] = "Production: Nothing";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_2+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:14: txtWindowInfoTile[3] = "Demand: Nothing";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_3+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/game.c:15: break;
	jp	00112$
;src/game/game.c:16: case DWELLINGS1:
00103$:
;src/game/game.c:17: case DWELLINGS2:
00104$:
;src/game/game.c:18: case DWELLINGS3:
00105$:
;src/game/game.c:19: txtWindowInfoTile[0] = "City";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_4)
	inc	hl
	ld	(hl),#>(___str_4)
;src/game/game.c:20: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_1+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_5+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_6+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/game.c:23: break;
	jp	00112$
;src/game/game.c:24: case FARM1:
00106$:
;src/game/game.c:25: case FARM2:
00107$:
;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_7)
	inc	hl
	ld	(hl),#>(___str_7)
;src/game/game.c:27: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_1+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:28: txtWindowInfoTile[2] = "Production: Cereal";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_8+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:29: txtWindowInfoTile[3] = "Demand: Nothing";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_3+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/game.c:30: break;
	jp	00112$
;src/game/game.c:31: case WATER:
00108$:
;src/game/game.c:32: txtWindowInfoTile[0] = "Water";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_9)
	inc	hl
	ld	(hl),#>(___str_9)
;src/game/game.c:33: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_1+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:34: txtWindowInfoTile[2] = "Production: Nothing";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_2+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:35: txtWindowInfoTile[3] = "Demand: Nothing";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_3+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/game.c:36: break;
	jp	00112$
;src/game/game.c:37: case FOREST:
00109$:
;src/game/game.c:38: txtWindowInfoTile[0] = "Forest";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_10)
	inc	hl
	ld	(hl),#>(___str_10)
;src/game/game.c:39: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_1+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:40: txtWindowInfoTile[2] = "Production: Nothing";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_2+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:41: txtWindowInfoTile[3] = "Demand: Nothing";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_3+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/game.c:42: break;
	jr	00112$
;src/game/game.c:43: case LIVESTOCK:
00110$:
;src/game/game.c:44: txtWindowInfoTile[0] = "Livestock farming";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_11)
	inc	hl
	ld	(hl),#>(___str_11)
;src/game/game.c:45: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_1+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:46: txtWindowInfoTile[2] = "Production: Livestock, wool";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_12+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:47: txtWindowInfoTile[3] = "Demand: Cereal";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_13+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/game.c:48: break;
	jr	00112$
;src/game/game.c:49: default:
00111$:
;src/game/game.c:50: txtWindowInfoTile[0] = "Not yet implemented";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_14)
	inc	hl
	ld	(hl),#>(___str_14)
;src/game/game.c:51: txtWindowInfoTile[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_1+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:52: txtWindowInfoTile[2] = "Production: ?";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_15+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:53: txtWindowInfoTile[3] = "Demand: ?";
	ld	hl,#0x0006
	add	hl,de
	ld	de,#___str_16+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/game.c:55: }
00112$:
;src/game/game.c:57: drawWindow(txtWindowInfoTile, 4, 0);
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
___str_0:
	.ascii "Grassland"
	.db 0x00
___str_1:
	.db 0x00
___str_2:
	.ascii "Production: Nothing"
	.db 0x00
___str_3:
	.ascii "Demand: Nothing"
	.db 0x00
___str_4:
	.ascii "City"
	.db 0x00
___str_5:
	.ascii "Production: Passengers, mail"
	.db 0x00
___str_6:
	.ascii "Demand: Passenger, mail, food, goods"
	.db 0x00
___str_7:
	.ascii "Farm"
	.db 0x00
___str_8:
	.ascii "Production: Cereal"
	.db 0x00
___str_9:
	.ascii "Water"
	.db 0x00
___str_10:
	.ascii "Forest"
	.db 0x00
___str_11:
	.ascii "Livestock farming"
	.db 0x00
___str_12:
	.ascii "Production: Livestock, wool"
	.db 0x00
___str_13:
	.ascii "Demand: Cereal"
	.db 0x00
___str_14:
	.ascii "Not yet implemented"
	.db 0x00
___str_15:
	.ascii "Production: ?"
	.db 0x00
___str_16:
	.ascii "Demand: ?"
	.db 0x00
;src/game/game.c:60: void menuStations()
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
;src/game/game.c:64: const char *txtMenuSizeStation[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_17)
	inc	hl
	ld	(hl),#>(___str_17)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_18+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_19+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:70: result = drawMenu(txtMenuSizeStation,3);
	ld	a,#0x03
	push	af
	inc	sp
	push	de
	call	_drawMenu
	pop	af
	inc	sp
	ld	e,l
;src/game/game.c:72: switch(result)
	ld	a,#0x02
	sub	a, e
	jr	C,00105$
	ld	d,#0x00
	ld	hl,#00111$
	add	hl,de
	add	hl,de
;src/game/game.c:74: case 0:
	jp	(hl)
00111$:
	jr	00101$
	jr	00102$
	jr	00103$
00101$:
;src/game/game.c:75: CURSOR_MODE=T_SSEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x02
;src/game/game.c:76: break;
	jr	00105$
;src/game/game.c:78: case 1:
00102$:
;src/game/game.c:79: CURSOR_MODE=T_SMEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x04
;src/game/game.c:80: break;
	jr	00105$
;src/game/game.c:82: case 2:
00103$:
;src/game/game.c:83: CURSOR_MODE=T_SLEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x06
;src/game/game.c:85: }
00105$:
	ld	sp, ix
	pop	ix
	ret
___str_17:
	.ascii "Small"
	.db 0x00
___str_18:
	.ascii "Medium"
	.db 0x00
___str_19:
	.ascii "Large"
	.db 0x00
;src/game/game.c:88: void menuTile(u8 x, u8 y)
;	---------------------------------
; Function menuTile
; ---------------------------------
_menuTile::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-26
	add	hl,sp
	ld	sp,hl
;src/game/game.c:92: const char *txtMenuTile[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_20)
	inc	hl
	ld	(hl),#>(___str_20)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_21+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_22+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0006
	add	hl,de
	ld	bc,#___str_23+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x0008
	add	hl,de
	ld	bc,#___str_24+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x000A
	add	hl,de
	ld	bc,#___str_25+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	hl,#0x000C
	add	hl,de
	ld	bc,#___str_26+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/game.c:102: const char *txtWindowDestroy[] = { 
	ld	hl,#0x000E
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	(hl),#<(___str_27)
	inc	hl
	ld	(hl),#>(___str_27)
	ld	hl,#0x0002
	add	hl,bc
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#<(___str_28)
	inc	hl
	ld	(hl),#>(___str_28)
	ld	hl,#0x0004
	add	hl,bc
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#<(___str_29)
	inc	hl
	ld	(hl),#>(___str_29)
;src/game/game.c:109: putM2();
	push	bc
	push	de
	call	_putM2
	pop	de
	pop	bc
;src/game/game.c:111: do{
	push	de
	ld	e,5 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	de
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	-2 (ix),c
	ld	-1 (ix),b
	ld	-4 (ix),e
	ld	-3 (ix),d
00117$:
;src/game/game.c:112: menuChoice = drawMenu(txtMenuTile,7);
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	a,#0x07
	push	af
	inc	sp
	push	de
	call	_drawMenu
	pop	af
	inc	sp
	ld	d,l
;src/game/game.c:114: if(menuChoice==0)
	ld	a,d
	or	a, a
	jr	NZ,00115$
;src/game/game.c:115: windowInfoTile(x, y);
	push	de
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	call	_windowInfoTile
	pop	af
	pop	de
	jr	00118$
00115$:
;src/game/game.c:116: else if(menuChoice==1)
	ld	a,d
	dec	a
	jr	NZ,00112$
;src/game/game.c:118: CURSOR_MODE=T_REW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x07
;src/game/game.c:119: menuChoice=6;
	ld	d,#0x06
	jr	00118$
00112$:
;src/game/game.c:121: else if(menuChoice==2)
	ld	a,d
	sub	a, #0x02
	jr	NZ,00109$
;src/game/game.c:123: menuStations();
	call	_menuStations
;src/game/game.c:124: menuChoice=6;
	ld	d,#0x06
	jr	00118$
00109$:
;src/game/game.c:126: else if(menuChoice==3)
	ld	a,d
	sub	a, #0x03
	jr	NZ,00106$
;src/game/game.c:128: if(	drawWindow(txtWindowDestroy,3,1) == 1)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	ld	hl,#0x0103
	push	hl
	push	de
	call	_drawWindow
	pop	af
	pop	af
	dec	l
	jr	NZ,00102$
;src/game/game.c:129: p_world[x+y*WIDTH] = GRASS1;
	ld	l,4 (ix)
	ld	h,#0x00
	ld	e,-6 (ix)
	ld	d,-5 (ix)
	add	hl,de
	ld	de,#_p_world
	add	hl,de
	ld	(hl),#0x00
00102$:
;src/game/game.c:131: menuChoice=6;
	ld	d,#0x06
	jr	00118$
00106$:
;src/game/game.c:133: else if(menuChoice==4)
	ld	a,d
	sub	a, #0x04
	jr	NZ,00118$
;src/game/game.c:135: railroadDepot();
	call	_railroadDepot
;src/game/game.c:136: menuChoice=6;
	ld	d,#0x06
00118$:
;src/game/game.c:141: while(menuChoice!=6);
	ld	a,d
	sub	a, #0x06
	jr	NZ,00117$
;src/game/game.c:143: putM1();
	call	_putM1
	ld	sp, ix
	pop	ix
	ret
___str_20:
	.ascii "About this tile"
	.db 0x00
___str_21:
	.ascii "Build a railway"
	.db 0x00
___str_22:
	.ascii "Build a station"
	.db 0x00
___str_23:
	.ascii "Destroy"
	.db 0x00
___str_24:
	.ascii "Railroad depot"
	.db 0x00
___str_25:
	.ascii "Accounting"
	.db 0x00
___str_26:
	.ascii "Resume"
	.db 0x00
___str_27:
	.ascii "Destroy this place will cost 100 $"
	.db 0x00
___str_28:
	.db 0x00
___str_29:
	.ascii "Continue ?"
	.db 0x00
;src/game/game.c:147: void game()
;	---------------------------------
; Function game
; ---------------------------------
_game::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-22
	add	hl,sp
	ld	sp,hl
;src/game/game.c:150: int ulx = 0;
	ld	-9 (ix),#0x00
	ld	-8 (ix),#0x00
;src/game/game.c:151: int uly = 0;
	ld	-7 (ix),#0x00
	ld	-6 (ix),#0x00
;src/game/game.c:152: int xCursor = 10;
	ld	-16 (ix),#0x0A
	ld	-15 (ix),#0x00
;src/game/game.c:153: int yCursor = 6;
	ld	-12 (ix),#0x06
	ld	-11 (ix),#0x00
;src/game/game.c:155: u8 exit=0;
	ld	-10 (ix),#0x00
;src/game/game.c:157: locDelocked = 4;
	ld	hl,#_locDelocked + 0
	ld	(hl), #0x04
;src/game/game.c:159: drawBoxM2(50, 50);
	ld	hl,#0x0032
	push	hl
	ld	l, #0x32
	push	hl
	call	_drawBoxM2
	pop	af
;src/game/game.c:160: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
	ld	hl, #0x5F20
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/game.c:161: cpct_drawStringM2 ("Generating world...", p_video, 0);	
	ld	c, l
	ld	b, h
	ld	de,#___str_33
	xor	a, a
	push	af
	inc	sp
	push	bc
	push	de
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
;src/game/game.c:163: generateWorld();
	call	_generateWorld
;src/game/game.c:165: putM1();
	call	_putM1
;src/game/game.c:166: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
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
;src/game/game.c:167: drawWorld(ulx, uly);
	ld	hl,#0x0000
	push	hl
	call	_drawWorld
	pop	af
;src/game/game.c:169: do{
00181$:
;src/game/game.c:170: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/game/game.c:172: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	-3 (ix),l
;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-12 (ix)
	ld	-2 (ix),a
	ld	a,-16 (ix)
	ld	-4 (ix),a
	ld	a,-7 (ix)
	ld	-5 (ix),a
	ld	a,-9 (ix)
	ld	-1 (ix),a
;src/game/game.c:172: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	a,-3 (ix)
	or	a, a
	jp	Z,00179$
;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:176: yCursor-=1;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	dec	hl
	ld	-12 (ix),l
	ld	-11 (ix),h
;src/game/game.c:179: if(yCursor<0)
	bit	7, -11 (ix)
	jr	Z,00210$
;src/game/game.c:181: yCursor=0;
	ld	-12 (ix),#0x00
	ld	-11 (ix),#0x00
;src/game/game.c:184: if(uly>0)
	xor	a, a
	cp	a, -7 (ix)
	sbc	a, -6 (ix)
	jp	PO, 00387$
	xor	a, #0x80
00387$:
	jp	P,00210$
;src/game/game.c:186: uly-=1;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	dec	hl
	ld	-7 (ix),l
	ld	-6 (ix),h
;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-7 (ix)
;src/game/game.c:187: drawWorld(ulx, uly);
	ld	-5 (ix), a
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/game/game.c:192: for(i=0; i<5000; i++) {}
00210$:
	ld	-14 (ix),#0x88
	ld	-13 (ix),#0x13
00186$:
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	dec	hl
	ld	-14 (ix),l
	ld	-13 (ix), h
	ld	a, h
	or	a,-14 (ix)
	jr	NZ,00186$
	jp	00180$
00179$:
;src/game/game.c:195: else if ( cpct_isKeyPressed(Key_CursorDown) )
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00176$
;src/game/game.c:197: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:198: yCursor+=1;
	inc	-12 (ix)
	jr	NZ,00388$
	inc	-11 (ix)
00388$:
;src/game/game.c:199: if(yCursor>NBTILE_H-1)
	ld	a,#0x0B
	cp	a, -12 (ix)
	ld	a,#0x00
	sbc	a, -11 (ix)
	jp	PO, 00389$
	xor	a, #0x80
00389$:
	jp	P,00215$
;src/game/game.c:201: yCursor=NBTILE_H-1;
	ld	-12 (ix),#0x0B
	ld	-11 (ix),#0x00
;src/game/game.c:202: if(uly<HEIGHT-NBTILE_H)
	ld	a,-7 (ix)
	sub	a, #0x24
	ld	a,-6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00215$
;src/game/game.c:204: uly+=1;
	inc	-7 (ix)
	jr	NZ,00390$
	inc	-6 (ix)
00390$:
;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-7 (ix)
;src/game/game.c:205: drawWorld(ulx, uly);
	ld	-5 (ix), a
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/game/game.c:210: for(i=0; i<5000; i++) {}
00215$:
	ld	-14 (ix),#0x88
	ld	-13 (ix),#0x13
00189$:
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	dec	hl
	ld	-14 (ix),l
	ld	-13 (ix), h
	ld	a, h
	or	a,-14 (ix)
	jr	NZ,00189$
	jp	00180$
00176$:
;src/game/game.c:213: else if ( cpct_isKeyPressed(Key_CursorLeft) )
	ld	hl,#0x0101
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00173$
;src/game/game.c:215: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:216: xCursor-=1;
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	dec	hl
	ld	-16 (ix),l
	ld	-15 (ix),h
;src/game/game.c:217: if(xCursor<0)
	bit	7, -15 (ix)
	jr	Z,00220$
;src/game/game.c:219: xCursor=0;
	ld	-16 (ix),#0x00
	ld	-15 (ix),#0x00
;src/game/game.c:220: if(ulx>0)
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	jp	PO, 00391$
	xor	a, #0x80
00391$:
	jp	P,00220$
;src/game/game.c:222: ulx-=1;
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	dec	hl
	ld	-9 (ix),l
	ld	-8 (ix),h
;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-9 (ix)
	ld	-1 (ix),a
;src/game/game.c:223: drawWorld(ulx, uly);
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/game/game.c:228: for(i=0; i<14000; i++) {}
00220$:
	ld	hl,#0x36B0
00192$:
	dec	hl
	ld	a,h
	or	a,l
	jr	NZ,00192$
	jp	00180$
00173$:
;src/game/game.c:231: else if ( cpct_isKeyPressed(Key_CursorRight) )
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00170$
;src/game/game.c:233: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:234: xCursor+=1;
	inc	-16 (ix)
	jr	NZ,00392$
	inc	-15 (ix)
00392$:
;src/game/game.c:235: if(xCursor>NBTILE_W-1)
	ld	a,#0x13
	cp	a, -16 (ix)
	ld	a,#0x00
	sbc	a, -15 (ix)
	jp	PO, 00393$
	xor	a, #0x80
00393$:
	jp	P,00225$
;src/game/game.c:237: xCursor=NBTILE_W-1;
	ld	-16 (ix),#0x13
	ld	-15 (ix),#0x00
;src/game/game.c:238: if(ulx<WIDTH-NBTILE_W)
	ld	a,-9 (ix)
	sub	a, #0x3C
	ld	a,-8 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00225$
;src/game/game.c:240: ulx+=1;
	inc	-9 (ix)
	jr	NZ,00394$
	inc	-8 (ix)
00394$:
;src/game/game.c:174: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-9 (ix)
	ld	-1 (ix),a
;src/game/game.c:241: drawWorld(ulx, uly);
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/game/game.c:246: for(i=0; i<14000; i++) {}
00225$:
	ld	hl,#0x36B0
00195$:
	dec	hl
	ld	a,h
	or	a,l
	jr	NZ,00195$
	jp	00180$
00170$:
;src/game/game.c:250: else if ( cpct_isKeyPressed(Key_Space) )
	ld	hl,#0x8005
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00167$
;src/game/game.c:252: if(CURSOR_MODE==T_SSNS)
	ld	a,(#_CURSOR_MODE + 0)
	dec	a
	jr	NZ,00143$
;src/game/game.c:253: CURSOR_MODE=T_SSEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x02
	jr	00237$
00143$:
;src/game/game.c:254: else if(CURSOR_MODE==T_SSEW)
	ld	a,(#_CURSOR_MODE + 0)
	sub	a, #0x02
	jr	NZ,00140$
;src/game/game.c:255: CURSOR_MODE=T_SSNS;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x01
	jr	00237$
00140$:
;src/game/game.c:256: else if(CURSOR_MODE==T_SMNS)
	ld	a,(#_CURSOR_MODE + 0)
	sub	a, #0x03
	jr	NZ,00137$
;src/game/game.c:257: CURSOR_MODE=T_SMEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x04
	jr	00237$
00137$:
;src/game/game.c:258: else if(CURSOR_MODE==T_SMEW)
	ld	a,(#_CURSOR_MODE + 0)
	sub	a, #0x04
	jr	NZ,00134$
;src/game/game.c:259: CURSOR_MODE=T_SMNS;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x03
	jr	00237$
00134$:
;src/game/game.c:260: else if(CURSOR_MODE==T_SLNS)
	ld	a,(#_CURSOR_MODE + 0)
	sub	a, #0x05
	jr	NZ,00131$
;src/game/game.c:261: CURSOR_MODE=T_SLEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x06
	jr	00237$
00131$:
;src/game/game.c:262: else if(CURSOR_MODE==T_SLEW)
	ld	a,(#_CURSOR_MODE + 0)
	sub	a, #0x06
	jr	NZ,00128$
;src/game/game.c:263: CURSOR_MODE=T_SLNS;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x05
	jr	00237$
00128$:
;src/game/game.c:264: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
	ld	a,(#_CURSOR_MODE + 0)
	cp	a,#0x07
	jr	C,00124$
	sub	a, #0x10
	jr	NC,00124$
;src/game/game.c:265: CURSOR_MODE+=1;
	ld	hl, #_CURSOR_MODE+0
	inc	(hl)
	jr	00237$
00124$:
;src/game/game.c:266: else if(CURSOR_MODE==T_RNSW)
	ld	a,(#_CURSOR_MODE + 0)
	sub	a, #0x10
	jr	NZ,00237$
;src/game/game.c:267: CURSOR_MODE=T_REW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x07
;src/game/game.c:269: for(i=0; i<14000; i++) {}
00237$:
	ld	hl,#0x36B0
00198$:
	dec	hl
	ld	a,h
	or	a,l
	jr	NZ,00198$
	jp	00180$
00167$:
;src/game/game.c:272: else if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00164$
;src/game/game.c:275: if(CURSOR_MODE==NONE)
	ld	a,(#_CURSOR_MODE + 0)
	or	a, a
	jr	NZ,00150$
;src/game/game.c:278: const char *txtWindowQuit[] = { 
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_30)
	inc	hl
	ld	(hl),#>(___str_30)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl),#<(___str_31)
	inc	hl
	ld	(hl),#>(___str_31)
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#<(___str_32)
	inc	hl
	ld	(hl),#>(___str_32)
;src/game/game.c:284: putM2();
	push	de
	call	_putM2
	pop	de
;src/game/game.c:285: if(	drawWindow(txtWindowQuit,3,1) == 1)
	ld	hl,#0x0103
	push	hl
	push	de
	call	_drawWindow
	pop	af
	pop	af
	dec	l
	jr	NZ,00147$
;src/game/game.c:286: exit=1;
	ld	-10 (ix),#0x01
	jr	00242$
00147$:
;src/game/game.c:289: putM1();
	call	_putM1
;src/game/game.c:290: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
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
;src/game/game.c:291: drawWorld(ulx, uly);
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
	jr	00242$
00150$:
;src/game/game.c:296: CURSOR_MODE=NONE;
	ld	iy,#_CURSOR_MODE
	ld	0 (iy),#0x00
;src/game/game.c:297: drawTile(ulx, uly, xCursor, yCursor);
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	a,-4 (ix)
	push	af
	inc	sp
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:301: for(i=0; i<14000; i++) {}
00242$:
	ld	bc,#0x36B0
00201$:
	dec	bc
	ld	a,b
	or	a,c
	jr	NZ,00201$
	jp	00180$
00164$:
;src/game/game.c:304: else if ( cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00180$
;src/game/game.c:307: if(CURSOR_MODE==NONE)
	ld	a,(#_CURSOR_MODE + 0)
	or	a, a
	jr	NZ,00158$
;src/game/game.c:309: menuTile(ulx+xCursor, uly+yCursor);
	ld	a, -7 (ix)
	ld	l, -12 (ix)
	add	a, l
	ld	h,a
	ld	l,-9 (ix)
	ld	d,-16 (ix)
	ld	a,l
	add	a, d
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_menuTile
	pop	af
;src/game/game.c:310: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
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
;src/game/game.c:311: drawWorld(ulx, uly);
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
	jr	00248$
00158$:
;src/game/game.c:314: else if(CURSOR_MODE>=T_SSNS)
	ld	a,(#_CURSOR_MODE + 0)
	sub	a, #0x01
	jr	C,00248$
;src/game/game.c:316: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
	ld	a,-9 (ix)
	add	a, -16 (ix)
	ld	e,a
	ld	a,-8 (ix)
	adc	a, -15 (ix)
	ld	d,a
	ld	a,-7 (ix)
	add	a, -12 (ix)
	ld	l,a
	ld	a,-6 (ix)
	adc	a, -11 (ix)
	ld	h,a
	ld	c, l
	ld	b, h
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
;src/game/game.c:319: if(CURSOR_MODE<=T_SLEW)
	ld	a,#0x06
	ld	iy,#_CURSOR_MODE
	sub	a, 0 (iy)
	jr	C,00248$
;src/game/game.c:320: CURSOR_MODE=NONE;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x00
;src/game/game.c:324: for(i=0; i<14000; i++) {}
00248$:
	ld	-14 (ix),#0xB0
	ld	-13 (ix),#0x36
00204$:
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	dec	hl
	ld	-14 (ix),l
	ld	-13 (ix), h
	ld	a, h
	or	a,-14 (ix)
	jr	NZ,00204$
00180$:
;src/game/game.c:328: drawCursor(xCursor, yCursor, 0);
	ld	d,-12 (ix)
	ld	b,-16 (ix)
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	inc	sp
	call	_drawCursor
	pop	af
	inc	sp
;src/game/game.c:329: drawScrolls(ulx, uly);
	ld	a,-5 (ix)
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	call	_drawScrolls
	pop	af
;src/game/game.c:331: while(!exit);
	ld	a,-10 (ix)
	or	a, a
	jp	Z,00181$
	ld	sp, ix
	pop	ix
	ret
___str_30:
	.ascii "Really quit ?"
	.db 0x00
___str_31:
	.db 0x00
___str_32:
	.ascii "Press Return to quit or Esc to resume"
	.db 0x00
___str_33:
	.ascii "Generating world..."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
