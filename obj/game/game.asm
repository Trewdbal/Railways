;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module game
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _trainManagement
	.globl _drawTrains
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
	.globl _cpct_waitVSYNC
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
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;src/game/game.c:7: txtWindowInfoTile[1] = "";
	ld	hl, #0x0000
	add	hl, sp
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	ld	de, #___str_0+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/game/game.c:8: txtWindowInfoTile[2] = "Production: Nothing";
	ld	hl, #0x0004
	add	hl,bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	(hl), #<(___str_1)
	inc	hl
	ld	(hl), #>(___str_1)
;src/game/game.c:9: txtWindowInfoTile[3] = "Demand: Nothing";
	ld	hl, #0x0006
	add	hl,bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	(hl), #<(___str_2)
	inc	hl
	ld	(hl), #>(___str_2)
;src/game/game.c:11: switch(p_world[y*WIDTH+x])
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
	ld	e, 4 (ix)
	ld	d, #0x00
	add	hl, de
	ld	de, #_p_world
	add	hl, de
	ld	e, (hl)
	ld	a, #0x09
	sub	a, e
	jp	C, 00111$
	ld	d, #0x00
	ld	hl, #00119$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00119$:
	jp	00102$
	jp	00102$
	jp	00105$
	jp	00105$
	jp	00105$
	jp	00107$
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
;src/game/game.c:14: case GRASS2:
00102$:
;src/game/game.c:15: txtWindowInfoTile[0] = "Grassland";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_3)
	inc	hl
	ld	(hl), #>(___str_3)
;src/game/game.c:16: break;
	jr	00112$
;src/game/game.c:19: case DWELLINGS3:
00105$:
;src/game/game.c:20: txtWindowInfoTile[0] = "City";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_4)
	inc	hl
	ld	(hl), #>(___str_4)
;src/game/game.c:21: txtWindowInfoTile[2] = "Production: Passengers, mail";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #<(___str_5)
	inc	hl
	ld	(hl), #>(___str_5)
;src/game/game.c:22: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #<(___str_6)
	inc	hl
	ld	(hl), #>(___str_6)
;src/game/game.c:23: break;
	jr	00112$
;src/game/game.c:25: case FARM2:
00107$:
;src/game/game.c:26: txtWindowInfoTile[0] = "Farm";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_7)
	inc	hl
	ld	(hl), #>(___str_7)
;src/game/game.c:27: txtWindowInfoTile[2] = "Production: Cereal";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #<(___str_8)
	inc	hl
	ld	(hl), #>(___str_8)
;src/game/game.c:28: break;
	jr	00112$
;src/game/game.c:29: case WATER:
00108$:
;src/game/game.c:30: txtWindowInfoTile[0] = "Water";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_9)
	inc	hl
	ld	(hl), #>(___str_9)
;src/game/game.c:31: break;
	jr	00112$
;src/game/game.c:32: case FOREST:
00109$:
;src/game/game.c:33: txtWindowInfoTile[0] = "Forest";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_10)
	inc	hl
	ld	(hl), #>(___str_10)
;src/game/game.c:34: break;
	jr	00112$
;src/game/game.c:35: case LIVESTOCK:
00110$:
;src/game/game.c:36: txtWindowInfoTile[0] = "Livestock farming";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_11)
	inc	hl
	ld	(hl), #>(___str_11)
;src/game/game.c:37: txtWindowInfoTile[2] = "Production: Livestock, wool";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #<(___str_12)
	inc	hl
	ld	(hl), #>(___str_12)
;src/game/game.c:38: txtWindowInfoTile[3] = "Demand: Cereal";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #<(___str_13)
	inc	hl
	ld	(hl), #>(___str_13)
;src/game/game.c:39: break;
	jr	00112$
;src/game/game.c:40: default:
00111$:
;src/game/game.c:41: txtWindowInfoTile[0] = "Not yet implemented";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_14)
	inc	hl
	ld	(hl), #>(___str_14)
;src/game/game.c:42: }
00112$:
;src/game/game.c:44: drawWindow(txtWindowInfoTile, 4, 0);
	ld	hl, #0x0004
	push	hl
	push	bc
	call	_drawWindow
	ld	sp,ix
	pop	ix
	ret
___str_0:
	.db 0x00
___str_1:
	.ascii "Production: Nothing"
	.db 0x00
___str_2:
	.ascii "Demand: Nothing"
	.db 0x00
___str_3:
	.ascii "Grassland"
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
;src/game/game.c:47: void menuStations()
;	---------------------------------
; Function menuStations
; ---------------------------------
_menuStations::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;src/game/game.c:51: const char *txtMenuSizeStation[] = { 
	ld	hl, #0x0000
	add	hl, sp
	ld	c,l
	ld	b,h
	ld	(hl), #<(___str_15)
	inc	hl
	ld	(hl), #>(___str_15)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	de, #___str_16+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0004
	add	hl, bc
	ld	de, #___str_17+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/game/game.c:57: result = drawMenu(txtMenuSizeStation,3);
	ld	a, #0x03
	push	af
	inc	sp
	push	bc
	call	_drawMenu
	pop	af
	inc	sp
	ld	a, l
;src/game/game.c:59: switch(result)
	or	a, a
	jr	Z,00101$
	cp	a, #0x01
	jr	Z,00102$
	sub	a, #0x02
	jr	Z,00103$
	jr	00105$
;src/game/game.c:61: case 0:
00101$:
;src/game/game.c:62: CURSOR_MODE=T_SSEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x03
;src/game/game.c:63: break;
	jr	00105$
;src/game/game.c:65: case 1:
00102$:
;src/game/game.c:66: CURSOR_MODE=T_SMEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x05
;src/game/game.c:67: break;
	jr	00105$
;src/game/game.c:69: case 2:
00103$:
;src/game/game.c:70: CURSOR_MODE=T_SLEW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x07
;src/game/game.c:72: }
00105$:
	ld	sp, ix
	pop	ix
	ret
___str_15:
	.ascii "Small"
	.db 0x00
___str_16:
	.ascii "Medium"
	.db 0x00
___str_17:
	.ascii "Large"
	.db 0x00
;src/game/game.c:75: void menuTile(u8 x, u8 y)
;	---------------------------------
; Function menuTile
; ---------------------------------
_menuTile::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-26
	add	hl, sp
	ld	sp, hl
;src/game/game.c:79: const char *txtMenuTile[] = { 
	ld	hl, #0x0006
	add	hl, sp
	ld	c,l
	ld	b,h
	ld	(hl), #<(___str_18)
	inc	hl
	ld	(hl), #>(___str_18)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	de, #___str_19+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0004
	add	hl, bc
	ld	de, #___str_20+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0006
	add	hl, bc
	ld	de, #___str_21+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0008
	add	hl, bc
	ld	de, #___str_22+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x000a
	add	hl, bc
	ld	de, #___str_23+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x000c
	add	hl, bc
	ld	de, #___str_24+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/game/game.c:89: const char *txtWindowDestroy[] = { 
	ld	hl, #0x0000
	add	hl, sp
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	(hl), #<(___str_25)
	inc	hl
	ld	(hl), #>(___str_25)
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	inc	hl
	inc	hl
	ld	de, #___str_26+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	a, -6 (ix)
	add	a, #0x04
	ld	l, a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	h, a
	ld	de, #___str_27+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/game/game.c:96: putM2();
	push	bc
	call	_putM2
	pop	bc
;src/game/game.c:98: do{
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
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	-4 (ix), c
	ld	-3 (ix), b
00117$:
;src/game/game.c:99: menuChoice = drawMenu(txtMenuTile,7);
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	ld	a, #0x07
	push	af
	inc	sp
	push	bc
	call	_drawMenu
	pop	af
	inc	sp
	ld	c, l
;src/game/game.c:101: if(menuChoice==0)
	ld	a, c
	or	a, a
	jr	NZ,00115$
;src/game/game.c:102: windowInfoTile(x, y);
	push	bc
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	call	_windowInfoTile
	pop	af
	pop	bc
	jr	00118$
00115$:
;src/game/game.c:103: else if(menuChoice==1)
	ld	a, c
	dec	a
	jr	NZ,00112$
;src/game/game.c:105: CURSOR_MODE=T_REW;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x08
;src/game/game.c:106: menuChoice=6;
	ld	c, #0x06
	jr	00118$
00112$:
;src/game/game.c:108: else if(menuChoice==2)
	ld	a, c
	sub	a, #0x02
	jr	NZ,00109$
;src/game/game.c:110: menuStations();
	call	_menuStations
;src/game/game.c:111: menuChoice=6;
	ld	c, #0x06
	jr	00118$
00109$:
;src/game/game.c:113: else if(menuChoice==3)
	ld	a, c
	sub	a, #0x03
	jr	NZ,00106$
;src/game/game.c:115: if(	drawWindow(txtWindowDestroy,3,1) == 1)
	ld	c,-6 (ix)
	ld	b,-5 (ix)
	ld	hl, #0x0103
	push	hl
	push	bc
	call	_drawWindow
	pop	af
	pop	af
	dec	l
	jr	NZ,00102$
;src/game/game.c:116: p_world[x+y*WIDTH] = GRASS1;
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	add	hl, bc
	ld	de, #_p_world
	add	hl, de
	ld	(hl), #0x00
00102$:
;src/game/game.c:118: menuChoice=6;
	ld	c, #0x06
	jr	00118$
00106$:
;src/game/game.c:120: else if(menuChoice==4)
	ld	a, c
	sub	a, #0x04
	jr	NZ,00118$
;src/game/game.c:122: trainManagement();
	call	_trainManagement
;src/game/game.c:123: menuChoice=6;
	ld	c, #0x06
00118$:
;src/game/game.c:128: while(menuChoice!=6);
	ld	a, c
	sub	a, #0x06
	jr	NZ,00117$
;src/game/game.c:130: putM1();
	call	_putM1
	ld	sp, ix
	pop	ix
	ret
___str_18:
	.ascii "About this tile"
	.db 0x00
___str_19:
	.ascii "Build a railway"
	.db 0x00
___str_20:
	.ascii "Build a station"
	.db 0x00
___str_21:
	.ascii "Destroy"
	.db 0x00
___str_22:
	.ascii "Train management"
	.db 0x00
___str_23:
	.ascii "Accounting"
	.db 0x00
___str_24:
	.ascii "Resume"
	.db 0x00
___str_25:
	.ascii "Destroy this place will cost 100 $"
	.db 0x00
___str_26:
	.db 0x00
___str_27:
	.ascii "Continue ?"
	.db 0x00
;src/game/game.c:134: void game()
;	---------------------------------
; Function game
; ---------------------------------
_game::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-28
	add	hl, sp
	ld	sp, hl
;src/game/game.c:137: int ulx = 0;
	ld	-13 (ix), #0x00
	ld	-12 (ix), #0x00
;src/game/game.c:138: int uly = 0;
	ld	-15 (ix), #0x00
	ld	-14 (ix), #0x00
;src/game/game.c:139: int xCursor = 10;
	ld	-17 (ix), #0x0a
	ld	-16 (ix), #0x00
;src/game/game.c:140: int yCursor = 6;
	ld	-19 (ix), #0x06
	ld	-18 (ix), #0x00
;src/game/game.c:142: u8 exit=0;
	ld	-22 (ix), #0x00
;src/game/game.c:144: nbTrainList=0;
	ld	hl,#_nbTrainList + 0
	ld	(hl), #0x00
;src/game/game.c:146: drawBoxM2(50, 50);
	ld	hl, #0x0032
	push	hl
	ld	l, #0x32
	push	hl
	call	_drawBoxM2
	pop	af
;src/game/game.c:147: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
	ld	hl, #0x5f20
	ex	(sp),hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/game/game.c:148: cpct_drawStringM2 ("Generating world...", p_video, 0);	
	ld	bc, #___str_31+0
	xor	a, a
	push	af
	inc	sp
	push	hl
	push	bc
	call	_cpct_drawStringM2
	pop	af
	pop	af
	inc	sp
;src/game/game.c:150: generateWorld();
	call	_generateWorld
;src/game/game.c:152: putM1();
	call	_putM1
;src/game/game.c:153: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
	ld	hl, #0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	b, l
	ld	hl, #0x4000
	push	hl
	push	bc
	inc	sp
	ld	h, #0xc0
	push	hl
	call	_cpct_memset
;src/game/game.c:154: drawWorld(ulx, uly);
	ld	hl, #0x0000
	push	hl
	call	_drawWorld
;src/game/game.c:155: drawCursor(xCursor, yCursor);
	ld	hl, #0x060a
	ex	(sp),hl
	call	_drawCursor
	pop	af
;src/game/game.c:158: do{
00192$:
;src/game/game.c:159: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/game/game.c:161: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	hl, #0x0100
	call	_cpct_isKeyPressed
	ld	-10 (ix), l
;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -19 (ix)
	ld	-9 (ix), a
	ld	a, -17 (ix)
	ld	-11 (ix), a
	ld	a, -15 (ix)
	ld	-3 (ix), a
	ld	a, -13 (ix)
	ld	-6 (ix), a
;src/game/game.c:161: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	a, -10 (ix)
	or	a, a
	jp	Z, 00190$
;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -9 (ix)
	ld	l, -11 (ix)
	push	hl
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:165: yCursor-=1;
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	dec	hl
	ld	-19 (ix), l
	ld	-18 (ix), h
;src/game/game.c:168: if(yCursor<0)
	bit	7, -18 (ix)
	jr	Z,00104$
;src/game/game.c:170: yCursor=0;
	ld	-19 (ix), #0x00
	ld	-18 (ix), #0x00
;src/game/game.c:173: if(uly>0)
	xor	a, a
	cp	a, -15 (ix)
	sbc	a, -14 (ix)
	jp	PO, 00418$
	xor	a, #0x80
00418$:
	jp	P, 00104$
;src/game/game.c:175: uly-=1;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	dec	hl
	ld	-15 (ix), l
	ld	-14 (ix), h
;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -15 (ix)
;src/game/game.c:176: drawWorld(ulx, uly);
	ld	-3 (ix), a
	push	af
	inc	sp
	ld	a, -6 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/game/game.c:177: drawScrolls(ulx, uly);
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawScrolls
	pop	af
00104$:
;src/game/game.c:181: drawCursor(xCursor, yCursor);
	ld	b, -19 (ix)
	push	bc
	inc	sp
	ld	a, -11 (ix)
	push	af
	inc	sp
	call	_drawCursor
	pop	af
;src/game/game.c:184: for(i=0; i<5000; i++) {}
	ld	-21 (ix), #0x88
	ld	-20 (ix), #0x13
00197$:
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	dec	hl
	ld	-21 (ix), l
	ld	-20 (ix), h
	ld	a, h
	or	a,-21 (ix)
	jr	NZ,00197$
	jp	00191$
00190$:
;src/game/game.c:187: else if ( cpct_isKeyPressed(Key_CursorDown) )
	ld	hl, #0x0400
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00187$
;src/game/game.c:189: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -9 (ix)
	ld	l, -11 (ix)
	push	hl
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:190: yCursor+=1;
	inc	-19 (ix)
	jr	NZ,00419$
	inc	-18 (ix)
00419$:
;src/game/game.c:191: if(yCursor>NBTILE_H-1)
	ld	a, #0x0b
	cp	a, -19 (ix)
	ld	a, #0x00
	sbc	a, -18 (ix)
	jp	PO, 00420$
	xor	a, #0x80
00420$:
	jp	P, 00109$
;src/game/game.c:193: yCursor=NBTILE_H-1;
	ld	-19 (ix), #0x0b
	ld	-18 (ix), #0x00
;src/game/game.c:194: if(uly<HEIGHT-NBTILE_H)
	ld	a, -15 (ix)
	sub	a, #0x24
	ld	a, -14 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00109$
;src/game/game.c:196: uly+=1;
	inc	-15 (ix)
	jr	NZ,00421$
	inc	-14 (ix)
00421$:
;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -15 (ix)
;src/game/game.c:197: drawWorld(ulx, uly);
	ld	-3 (ix), a
	push	af
	inc	sp
	ld	a, -6 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/game/game.c:198: drawScrolls(ulx, uly);
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawScrolls
	pop	af
00109$:
;src/game/game.c:202: drawCursor(xCursor, yCursor);
	ld	b, -19 (ix)
	push	bc
	inc	sp
	ld	a, -11 (ix)
	push	af
	inc	sp
	call	_drawCursor
	pop	af
;src/game/game.c:205: for(i=0; i<5000; i++) {}
	ld	-21 (ix), #0x88
	ld	-20 (ix), #0x13
00200$:
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	dec	hl
	ld	-21 (ix), l
	ld	-20 (ix), h
	ld	a, h
	or	a,-21 (ix)
	jr	NZ,00200$
	jp	00191$
00187$:
;src/game/game.c:208: else if ( cpct_isKeyPressed(Key_CursorLeft) )
	ld	hl, #0x0101
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00184$
;src/game/game.c:210: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -9 (ix)
	ld	l, -11 (ix)
	push	hl
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:211: xCursor-=1;
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	dec	hl
	ld	-17 (ix), l
	ld	-16 (ix), h
;src/game/game.c:212: if(xCursor<0)
	bit	7, -16 (ix)
	jr	Z,00114$
;src/game/game.c:214: xCursor=0;
	ld	-17 (ix), #0x00
	ld	-16 (ix), #0x00
;src/game/game.c:215: if(ulx>0)
	xor	a, a
	cp	a, -13 (ix)
	sbc	a, -12 (ix)
	jp	PO, 00422$
	xor	a, #0x80
00422$:
	jp	P, 00114$
;src/game/game.c:217: ulx-=1;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	dec	hl
	ld	-13 (ix), l
	ld	-12 (ix), h
;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -13 (ix)
	ld	-6 (ix), a
;src/game/game.c:218: drawWorld(ulx, uly);
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawWorld
	pop	af
;src/game/game.c:219: drawScrolls(ulx, uly);
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawScrolls
	pop	af
00114$:
;src/game/game.c:223: drawCursor(xCursor, yCursor);
	ld	b, -17 (ix)
	ld	a, -9 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_drawCursor
	pop	af
;src/game/game.c:226: for(i=0; i<14000; i++) {}
	ld	bc, #0x36b0
00203$:
	dec	bc
	ld	a, b
	or	a,c
	jr	NZ,00203$
	jp	00191$
00184$:
;src/game/game.c:229: else if ( cpct_isKeyPressed(Key_CursorRight) )
	ld	hl, #0x0200
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00181$
;src/game/game.c:231: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -9 (ix)
	ld	l, -11 (ix)
	push	hl
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:232: xCursor+=1;
	inc	-17 (ix)
	jr	NZ,00423$
	inc	-16 (ix)
00423$:
;src/game/game.c:233: if(xCursor>NBTILE_W-1)
	ld	a, #0x13
	cp	a, -17 (ix)
	ld	a, #0x00
	sbc	a, -16 (ix)
	jp	PO, 00424$
	xor	a, #0x80
00424$:
	jp	P, 00119$
;src/game/game.c:235: xCursor=NBTILE_W-1;
	ld	-17 (ix), #0x13
	ld	-16 (ix), #0x00
;src/game/game.c:236: if(ulx<WIDTH-NBTILE_W)
	ld	a, -13 (ix)
	sub	a, #0x3c
	ld	a, -12 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00119$
;src/game/game.c:238: ulx+=1;
	inc	-13 (ix)
	jr	NZ,00425$
	inc	-12 (ix)
00425$:
;src/game/game.c:163: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -13 (ix)
	ld	-6 (ix), a
;src/game/game.c:239: drawWorld(ulx, uly);
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawWorld
	pop	af
;src/game/game.c:240: drawScrolls(ulx, uly);
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawScrolls
	pop	af
00119$:
;src/game/game.c:244: drawCursor(xCursor, yCursor);
	ld	b, -17 (ix)
	ld	a, -9 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_drawCursor
	pop	af
;src/game/game.c:247: for(i=0; i<14000; i++) {}
	ld	bc, #0x36b0
00206$:
	dec	bc
	ld	a, b
	or	a,c
	jr	NZ,00206$
	jp	00191$
00181$:
;src/game/game.c:251: else if ( cpct_isKeyPressed(Key_Space) )
	ld	hl, #0x8005
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00178$
;src/game/game.c:253: if(CURSOR_MODE==T_SSNS)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x02
	jr	NZ,00143$
;src/game/game.c:254: CURSOR_MODE=T_SSEW;
	ld	0 (iy), #0x03
	jp	00144$
00143$:
;src/game/game.c:255: else if(CURSOR_MODE==T_SSEW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x03
	jr	NZ,00140$
;src/game/game.c:256: CURSOR_MODE=T_SSNS;
	ld	0 (iy), #0x02
	jr	00144$
00140$:
;src/game/game.c:257: else if(CURSOR_MODE==T_SMNS)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x04
	jr	NZ,00137$
;src/game/game.c:258: CURSOR_MODE=T_SMEW;
	ld	0 (iy), #0x05
	jr	00144$
00137$:
;src/game/game.c:259: else if(CURSOR_MODE==T_SMEW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x05
	jr	NZ,00134$
;src/game/game.c:260: CURSOR_MODE=T_SMNS;
	ld	0 (iy), #0x04
	jr	00144$
00134$:
;src/game/game.c:261: else if(CURSOR_MODE==T_SLNS)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x06
	jr	NZ,00131$
;src/game/game.c:262: CURSOR_MODE=T_SLEW;
	ld	0 (iy), #0x07
	jr	00144$
00131$:
;src/game/game.c:263: else if(CURSOR_MODE==T_SLEW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x07
	jr	NZ,00128$
;src/game/game.c:264: CURSOR_MODE=T_SLNS;
	ld	0 (iy), #0x06
	jr	00144$
00128$:
;src/game/game.c:265: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x08
	jr	C,00124$
	ld	a, 0 (iy)
	sub	a, #0x11
	jr	NC,00124$
;src/game/game.c:266: CURSOR_MODE+=1;
	inc	0 (iy)
	jr	00144$
00124$:
;src/game/game.c:267: else if(CURSOR_MODE==T_RNSW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x11
	jr	NZ,00144$
;src/game/game.c:268: CURSOR_MODE=T_REW;
	ld	0 (iy), #0x08
00144$:
;src/game/game.c:270: drawCursor(xCursor, yCursor);
	ld	h, -9 (ix)
	ld	l, -11 (ix)
	push	hl
	call	_drawCursor
	pop	af
;src/game/game.c:273: for(i=0; i<14000; i++) {}
	ld	bc, #0x36b0
00209$:
	dec	bc
	ld	a, b
	or	a,c
	jr	NZ,00209$
	jp	00191$
00178$:
;src/game/game.c:276: else if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl, #0x0408
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00175$
;src/game/game.c:279: if(CURSOR_MODE==NONE)
	ld	a,(#_CURSOR_MODE + 0)
	or	a, a
	jp	NZ, 00150$
;src/game/game.c:282: const char *txtWindowQuit[] = { 
	ld	hl, #0x0000
	add	hl, sp
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	(hl), #<(___str_28)
	inc	hl
	ld	(hl), #>(___str_28)
	ld	a, -8 (ix)
	add	a, #0x02
	ld	-2 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #<(___str_29)
	inc	hl
	ld	(hl), #>(___str_29)
	ld	a, -8 (ix)
	add	a, #0x04
	ld	-2 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #<(___str_30)
	inc	hl
	ld	(hl), #>(___str_30)
;src/game/game.c:288: putM2();
	call	_putM2
;src/game/game.c:289: if(	drawWindow(txtWindowQuit,3,1) == 1)
	ld	a, -8 (ix)
	ld	-2 (ix), a
	ld	a, -7 (ix)
	ld	-1 (ix), a
	ld	hl, #0x0103
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_drawWindow
	pop	af
	pop	af
	dec	l
	jr	NZ,00147$
;src/game/game.c:290: exit=1;
	ld	-22 (ix), #0x01
	jr	00151$
00147$:
;src/game/game.c:293: putM1();
	call	_putM1
;src/game/game.c:294: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
	ld	hl, #0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	b, l
	ld	hl, #0x4000
	push	hl
	push	bc
	inc	sp
	ld	h, #0xc0
	push	hl
	call	_cpct_memset
;src/game/game.c:295: drawWorld(ulx, uly);
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawWorld
	pop	af
	jr	00151$
00150$:
;src/game/game.c:300: CURSOR_MODE=NONE;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x00
;src/game/game.c:301: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -9 (ix)
	ld	l, -11 (ix)
	push	hl
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
00151$:
;src/game/game.c:304: drawCursor(xCursor, yCursor);
	ld	h, -9 (ix)
	ld	l, -11 (ix)
	push	hl
	call	_drawCursor
	pop	af
;src/game/game.c:307: for(i=0; i<14000; i++) {}
	ld	bc, #0x36b0
00212$:
	dec	bc
	ld	a, b
	or	a,c
	jr	NZ,00212$
	jp	00191$
00175$:
;src/game/game.c:310: else if ( cpct_isKeyPressed(Key_Return) )
	ld	hl, #0x0402
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00191$
;src/game/game.c:315: menuTile(ulx+xCursor, uly+yCursor);
	ld	c, -15 (ix)
	ld	l, -19 (ix)
	ld	b, -13 (ix)
	ld	e, -17 (ix)
	ld	a, c
	add	a, l
	ld	c, a
	ld	a, b
	add	a, e
	ld	-2 (ix), a
;src/game/game.c:313: if(CURSOR_MODE==NONE)
	ld	a,(#_CURSOR_MODE + 0)
	or	a, a
	jr	NZ,00169$
;src/game/game.c:315: menuTile(ulx+xCursor, uly+yCursor);
	ld	a, c
	push	af
	inc	sp
	ld	a, -2 (ix)
	push	af
	inc	sp
	call	_menuTile
	pop	af
;src/game/game.c:316: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
	ld	hl, #0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	b, l
	ld	hl, #0x4000
	push	hl
	push	bc
	inc	sp
	ld	h, #0xc0
	push	hl
	call	_cpct_memset
;src/game/game.c:317: drawWorld(ulx, uly);
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawWorld
	pop	af
	jp	00170$
00169$:
;src/game/game.c:322: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
	ld	a, -15 (ix)
	add	a, -19 (ix)
	ld	-8 (ix), a
	ld	a, -14 (ix)
	adc	a, -18 (ix)
	ld	-7 (ix), a
	ld	a, -13 (ix)
	add	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -12 (ix)
	adc	a, -16 (ix)
	ld	-4 (ix), a
	ld	e,-8 (ix)
	ld	d,-7 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, -5 (ix)
	add	a, l
	ld	e, a
	ld	a, -4 (ix)
	adc	a, h
	ld	d, a
;src/game/game.c:319: else if(CURSOR_MODE==PUTTRAIN)
	ld	a,(#_CURSOR_MODE + 0)
	dec	a
	jp	NZ,00166$
;src/game/game.c:322: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
	ld	hl, #_p_world
	add	hl, de
	ld	b, (hl)
	ld	a, b
	sub	a, #0x0a
	jp	C, 00170$
	ld	a, #0x0f
	sub	a, b
	jp	C, 00170$
;src/game/game.c:325: trainList[nbTrainList].posX = ulx+xCursor;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	iy, (_trainList)
	add	iy, de
	ld	de, #0x0004
	add	iy, de
	ld	a, -2 (ix)
	ld	0 (iy), a
;src/game/game.c:326: trainList[nbTrainList].posY = uly+yCursor;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	iy, (_trainList)
	add	iy, de
	ld	de, #0x0005
	add	iy, de
	ld	0 (iy), c
;src/game/game.c:328: trainList[nbTrainList].cycles = 1; // Cycle begin at 1 and not 0 because the position is 1 pixel shifted cause of the tail
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x000f
	add	hl, bc
	ld	(hl), #0x01
;src/game/game.c:325: trainList[nbTrainList].posX = ulx+xCursor;
	ld	l, 0 (iy)
	ld	h, #0x00
;src/game/game.c:332: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, c
	ld	e, a
	ld	a, 1 (iy)
	adc	a, b
	ld	d, a
	push	de
	pop	iy
	ld	c, 5 (iy)
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
	ld	c, l
	ld	b, h
	push	de
	pop	iy
	ld	l, 4 (iy)
	ld	h, #0x00
	add	hl, bc
	ld	bc, #_p_world
	add	hl, bc
	ld	c, (hl)
;src/game/game.c:336: trainList[nbTrainList].animX = (int)(ulx+xCursor)*TILESIZE_H+8;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;src/game/game.c:337: trainList[nbTrainList].animY = (int)(uly+yCursor)*TILESIZE_H+1;
	ld	a, -8 (ix)
	ld	-5 (ix), a
	ld	a, -7 (ix)
	ld	-4 (ix), a
	ld	a, #0x04+1
	jr	00445$
00444$:
	sla	-5 (ix)
	rl	-4 (ix)
00445$:
	dec	a
	jr	NZ,00444$
;src/game/game.c:336: trainList[nbTrainList].animX = (int)(ulx+xCursor)*TILESIZE_H+8;
	ld	a, e
	add	a, #0x07
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	d, a
;src/game/game.c:332: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
;src/game/game.c:333: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SMNS ||
	ld	a,c
	cp	a,#0x0a
	jr	Z,00153$
;src/game/game.c:334: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SLNS )
	cp	a,#0x0c
	jr	Z,00153$
	sub	a, #0x0e
	jr	NZ,00154$
00153$:
;src/game/game.c:336: trainList[nbTrainList].animX = (int)(ulx+xCursor)*TILESIZE_H+8;
	ld	bc, #0x0008
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;src/game/game.c:337: trainList[nbTrainList].animY = (int)(uly+yCursor)*TILESIZE_H+1;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0009
	add	hl, bc
	ld	c,-5 (ix)
	ld	b,-4 (ix)
	inc	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/game/game.c:339: trainList[nbTrainList].heading = 2;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0006
	add	hl, bc
	ld	(hl), #0x02
	jr	00155$
00154$:
;src/game/game.c:345: trainList[nbTrainList].animX = (int)(ulx+xCursor)*TILESIZE_H+1;
	inc	hl
	ld	b, l
	ld	c, h
	ld	a, b
	ld	(de), a
	inc	de
	ld	a, c
	ld	(de), a
;src/game/game.c:346: trainList[nbTrainList].animY = (int)(uly+yCursor)*TILESIZE_H+8;
	ld	iy, #_nbTrainList
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0009
	add	hl, bc
	ld	a, -5 (ix)
	add	a, #0x08
	ld	c, a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	b, a
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/game/game.c:348: trainList[nbTrainList].heading = 0;
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0006
	add	hl, bc
	ld	(hl), #0x00
00155$:
;src/game/game.c:353: nbTrainList++;
	ld	hl, #_nbTrainList+0
	inc	(hl)
;src/game/game.c:355: CURSOR_MODE=NONE;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x00
	jr	00170$
00166$:
;src/game/game.c:359: else if(CURSOR_MODE>=T_SSNS)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x02
	jr	C,00170$
;src/game/game.c:361: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+8;
	ld	hl, #_p_world
	add	hl,de
	ld	c, l
	ld	b, h
	ld	a, 0 (iy)
	add	a, #0x08
	ld	(bc), a
;src/game/game.c:364: if(CURSOR_MODE<=T_SLEW)
	ld	a, #0x07
	sub	a, 0 (iy)
	jr	C,00170$
;src/game/game.c:365: CURSOR_MODE=NONE;
	ld	0 (iy), #0x00
00170$:
;src/game/game.c:368: drawCursor(xCursor, yCursor);
	ld	h, -9 (ix)
	ld	l, -11 (ix)
	push	hl
	call	_drawCursor
	pop	af
;src/game/game.c:371: for(i=0; i<14000; i++) {}
	ld	c, #0xb0
	ld	e, #0x36
00215$:
	ld	l, c
	ld	h, e
	dec	hl
	ld	c, l
	ld	e, h
	ld	a, e
	or	a,c
	jr	NZ,00215$
00191$:
;src/game/game.c:375: cpct_waitVSYNC ();
	call	_cpct_waitVSYNC
;src/game/game.c:376: drawTrains(ulx, uly);
	ld	h, -3 (ix)
	ld	l, -6 (ix)
	push	hl
	call	_drawTrains
	pop	af
;src/game/game.c:379: while(!exit);
	ld	a, -22 (ix)
	or	a, a
	jp	Z, 00192$
	ld	sp, ix
	pop	ix
	ret
___str_28:
	.ascii "Really quit ?"
	.db 0x00
___str_29:
	.db 0x00
___str_30:
	.ascii "Press Return to quit or Esc to resume"
	.db 0x00
___str_31:
	.ascii "Generating world..."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
