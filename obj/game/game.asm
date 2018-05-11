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
	ld	hl, #-26
	add	hl, sp
	ld	sp, hl
;src/game/game.c:137: int ulx = 0;
	ld	-11 (ix), #0x00
	ld	-10 (ix), #0x00
;src/game/game.c:138: int uly = 0;
	ld	-13 (ix), #0x00
	ld	-12 (ix), #0x00
;src/game/game.c:139: int xCursor = 10;
	ld	-20 (ix), #0x0a
	ld	-19 (ix), #0x00
;src/game/game.c:140: int yCursor = 6;
	ld	-15 (ix), #0x06
	ld	-14 (ix), #0x00
;src/game/game.c:142: u8 exit=0;
	ld	-18 (ix), #0x00
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
	pop	af
;src/game/game.c:157: do{
00192$:
;src/game/game.c:158: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/game/game.c:160: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	hl, #0x0100
	call	_cpct_isKeyPressed
	ld	-9 (ix), l
;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -15 (ix)
	ld	-8 (ix), a
	ld	a, -20 (ix)
	ld	-1 (ix), a
	ld	a, -13 (ix)
	ld	-2 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
;src/game/game.c:160: if ( cpct_isKeyPressed(Key_CursorUp) )
	ld	a, -9 (ix)
	or	a, a
	jr	Z,00190$
;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -8 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:164: yCursor-=1;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	dec	hl
	ld	-15 (ix), l
	ld	-14 (ix), h
;src/game/game.c:167: if(yCursor<0)
	bit	7, -14 (ix)
	jr	Z,00221$
;src/game/game.c:169: yCursor=0;
	ld	-15 (ix), #0x00
	ld	-14 (ix), #0x00
;src/game/game.c:172: if(uly>0)
	xor	a, a
	cp	a, -13 (ix)
	sbc	a, -12 (ix)
	jp	PO, 00418$
	xor	a, #0x80
00418$:
	jp	P, 00221$
;src/game/game.c:174: uly-=1;
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	dec	hl
	ld	-13 (ix), l
	ld	-12 (ix), h
;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -13 (ix)
;src/game/game.c:175: drawWorld(ulx, uly);
	ld	-2 (ix), a
	push	af
	inc	sp
	ld	a, -3 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/game/game.c:180: for(i=0; i<5000; i++) {}
00221$:
	ld	-17 (ix), #0x88
	ld	-16 (ix), #0x13
00197$:
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	dec	hl
	ld	-17 (ix), l
	ld	-16 (ix), h
	ld	a, h
	or	a,-17 (ix)
	jr	NZ,00197$
	jp	00191$
00190$:
;src/game/game.c:183: else if ( cpct_isKeyPressed(Key_CursorDown) )
	ld	hl, #0x0400
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00187$
;src/game/game.c:185: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -8 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:186: yCursor+=1;
	inc	-15 (ix)
	jr	NZ,00419$
	inc	-14 (ix)
00419$:
;src/game/game.c:187: if(yCursor>NBTILE_H-1)
	ld	a, #0x0b
	cp	a, -15 (ix)
	ld	a, #0x00
	sbc	a, -14 (ix)
	jp	PO, 00420$
	xor	a, #0x80
00420$:
	jp	P, 00226$
;src/game/game.c:189: yCursor=NBTILE_H-1;
	ld	-15 (ix), #0x0b
	ld	-14 (ix), #0x00
;src/game/game.c:190: if(uly<HEIGHT-NBTILE_H)
	ld	a, -13 (ix)
	sub	a, #0x24
	ld	a, -12 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00226$
;src/game/game.c:192: uly+=1;
	inc	-13 (ix)
	jr	NZ,00421$
	inc	-12 (ix)
00421$:
;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -13 (ix)
;src/game/game.c:193: drawWorld(ulx, uly);
	ld	-2 (ix), a
	push	af
	inc	sp
	ld	a, -3 (ix)
	push	af
	inc	sp
	call	_drawWorld
	pop	af
;src/game/game.c:198: for(i=0; i<5000; i++) {}
00226$:
	ld	-17 (ix), #0x88
	ld	-16 (ix), #0x13
00200$:
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	dec	hl
	ld	-17 (ix), l
	ld	-16 (ix), h
	ld	a, h
	or	a,-17 (ix)
	jr	NZ,00200$
	jp	00191$
00187$:
;src/game/game.c:201: else if ( cpct_isKeyPressed(Key_CursorLeft) )
	ld	hl, #0x0101
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00184$
;src/game/game.c:203: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -8 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:204: xCursor-=1;
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	dec	hl
	ld	-20 (ix), l
	ld	-19 (ix), h
;src/game/game.c:205: if(xCursor<0)
	bit	7, -19 (ix)
	jr	Z,00231$
;src/game/game.c:207: xCursor=0;
	ld	-20 (ix), #0x00
	ld	-19 (ix), #0x00
;src/game/game.c:208: if(ulx>0)
	xor	a, a
	cp	a, -11 (ix)
	sbc	a, -10 (ix)
	jp	PO, 00422$
	xor	a, #0x80
00422$:
	jp	P, 00231$
;src/game/game.c:210: ulx-=1;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	dec	hl
	ld	-11 (ix), l
	ld	-10 (ix), h
;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -11 (ix)
	ld	-3 (ix), a
;src/game/game.c:211: drawWorld(ulx, uly);
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawWorld
	pop	af
;src/game/game.c:216: for(i=0; i<14000; i++) {}
00231$:
	ld	bc, #0x36b0
00203$:
	dec	bc
	ld	a, b
	or	a,c
	jr	NZ,00203$
	jp	00191$
00184$:
;src/game/game.c:219: else if ( cpct_isKeyPressed(Key_CursorRight) )
	ld	hl, #0x0200
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00181$
;src/game/game.c:221: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -8 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:222: xCursor+=1;
	inc	-20 (ix)
	jr	NZ,00423$
	inc	-19 (ix)
00423$:
;src/game/game.c:223: if(xCursor>NBTILE_W-1)
	ld	a, #0x13
	cp	a, -20 (ix)
	ld	a, #0x00
	sbc	a, -19 (ix)
	jp	PO, 00424$
	xor	a, #0x80
00424$:
	jp	P, 00236$
;src/game/game.c:225: xCursor=NBTILE_W-1;
	ld	-20 (ix), #0x13
	ld	-19 (ix), #0x00
;src/game/game.c:226: if(ulx<WIDTH-NBTILE_W)
	ld	a, -11 (ix)
	sub	a, #0x3c
	ld	a, -10 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00236$
;src/game/game.c:228: ulx+=1;
	inc	-11 (ix)
	jr	NZ,00425$
	inc	-10 (ix)
00425$:
;src/game/game.c:162: drawTile(ulx, uly, xCursor, yCursor);
	ld	a, -11 (ix)
	ld	-3 (ix), a
;src/game/game.c:229: drawWorld(ulx, uly);
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawWorld
	pop	af
;src/game/game.c:234: for(i=0; i<14000; i++) {}
00236$:
	ld	bc, #0x36b0
00206$:
	dec	bc
	ld	a, b
	or	a,c
	jr	NZ,00206$
	jp	00191$
00181$:
;src/game/game.c:238: else if ( cpct_isKeyPressed(Key_Space) )
	ld	hl, #0x8005
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00178$
;src/game/game.c:240: if(CURSOR_MODE==T_SSNS)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x02
	jr	NZ,00143$
;src/game/game.c:241: CURSOR_MODE=T_SSEW;
	ld	0 (iy), #0x03
	jp	00248$
00143$:
;src/game/game.c:242: else if(CURSOR_MODE==T_SSEW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x03
	jr	NZ,00140$
;src/game/game.c:243: CURSOR_MODE=T_SSNS;
	ld	0 (iy), #0x02
	jr	00248$
00140$:
;src/game/game.c:244: else if(CURSOR_MODE==T_SMNS)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x04
	jr	NZ,00137$
;src/game/game.c:245: CURSOR_MODE=T_SMEW;
	ld	0 (iy), #0x05
	jr	00248$
00137$:
;src/game/game.c:246: else if(CURSOR_MODE==T_SMEW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x05
	jr	NZ,00134$
;src/game/game.c:247: CURSOR_MODE=T_SMNS;
	ld	0 (iy), #0x04
	jr	00248$
00134$:
;src/game/game.c:248: else if(CURSOR_MODE==T_SLNS)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x06
	jr	NZ,00131$
;src/game/game.c:249: CURSOR_MODE=T_SLEW;
	ld	0 (iy), #0x07
	jr	00248$
00131$:
;src/game/game.c:250: else if(CURSOR_MODE==T_SLEW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x07
	jr	NZ,00128$
;src/game/game.c:251: CURSOR_MODE=T_SLNS;
	ld	0 (iy), #0x06
	jr	00248$
00128$:
;src/game/game.c:252: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x08
	jr	C,00124$
	ld	a, 0 (iy)
	sub	a, #0x11
	jr	NC,00124$
;src/game/game.c:253: CURSOR_MODE+=1;
	inc	0 (iy)
	jr	00248$
00124$:
;src/game/game.c:254: else if(CURSOR_MODE==T_RNSW)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x11
	jr	NZ,00248$
;src/game/game.c:255: CURSOR_MODE=T_REW;
	ld	0 (iy), #0x08
;src/game/game.c:257: for(i=0; i<14000; i++) {}
00248$:
	ld	bc, #0x36b0
00209$:
	dec	bc
	ld	a, b
	or	a,c
	jr	NZ,00209$
	jp	00191$
00178$:
;src/game/game.c:260: else if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl, #0x0408
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00175$
;src/game/game.c:263: if(CURSOR_MODE==NONE)
	ld	a,(#_CURSOR_MODE + 0)
	or	a, a
	jp	NZ, 00150$
;src/game/game.c:266: const char *txtWindowQuit[] = { 
	ld	hl, #0x0000
	add	hl, sp
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	(hl), #<(___str_28)
	inc	hl
	ld	(hl), #>(___str_28)
	ld	a, -5 (ix)
	add	a, #0x02
	ld	-7 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl), #<(___str_29)
	inc	hl
	ld	(hl), #>(___str_29)
	ld	a, -5 (ix)
	add	a, #0x04
	ld	-7 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	(hl), #<(___str_30)
	inc	hl
	ld	(hl), #>(___str_30)
;src/game/game.c:272: putM2();
	call	_putM2
;src/game/game.c:273: if(	drawWindow(txtWindowQuit,3,1) == 1)
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	hl, #0x0103
	push	hl
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	_drawWindow
	pop	af
	pop	af
	dec	l
	jr	NZ,00147$
;src/game/game.c:274: exit=1;
	ld	-18 (ix), #0x01
	jr	00253$
00147$:
;src/game/game.c:277: putM1();
	call	_putM1
;src/game/game.c:278: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
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
;src/game/game.c:279: drawWorld(ulx, uly);
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawWorld
	pop	af
	jr	00253$
00150$:
;src/game/game.c:284: CURSOR_MODE=NONE;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x00
;src/game/game.c:285: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -8 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
;src/game/game.c:289: for(i=0; i<14000; i++) {}
00253$:
	ld	bc, #0x36b0
00212$:
	dec	bc
	ld	a, b
	or	a,c
	jr	NZ,00212$
	jp	00191$
00175$:
;src/game/game.c:292: else if ( cpct_isKeyPressed(Key_Return) )
	ld	hl, #0x0402
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00191$
;src/game/game.c:297: menuTile(ulx+xCursor, uly+yCursor);
	ld	e, -13 (ix)
	ld	l, -15 (ix)
	ld	c, -11 (ix)
	ld	a, -20 (ix)
	ld	-7 (ix), a
	ld	a, e
	add	a, l
	ld	-5 (ix), a
	ld	a, c
	add	a, -7 (ix)
	ld	-7 (ix), a
;src/game/game.c:295: if(CURSOR_MODE==NONE)
	ld	a,(#_CURSOR_MODE + 0)
	or	a, a
	jr	NZ,00169$
;src/game/game.c:297: menuTile(ulx+xCursor, uly+yCursor);
	ld	h, -5 (ix)
	ld	l, -7 (ix)
	push	hl
	call	_menuTile
	pop	af
;src/game/game.c:298: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
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
;src/game/game.c:299: drawWorld(ulx, uly);
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawWorld
	pop	af
	jp	00264$
00169$:
;src/game/game.c:304: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
	ld	a, -13 (ix)
	add	a, -15 (ix)
	ld	c, a
	ld	a, -12 (ix)
	adc	a, -14 (ix)
	ld	b, a
	ld	a, -11 (ix)
	add	a, -20 (ix)
	ld	e, a
	ld	a, -10 (ix)
	adc	a, -19 (ix)
	ld	d, a
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
	ex	de,hl
;src/game/game.c:301: else if(CURSOR_MODE==PUTTRAIN)
	ld	a,(#_CURSOR_MODE + 0)
	dec	a
	jp	NZ,00166$
;src/game/game.c:304: if(p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] >= SSNS && p_world[(uly+yCursor)*WIDTH+(ulx+xCursor)] <= SLEW )
	ld	hl, #_p_world
	add	hl, de
	ld	c, (hl)
	ld	a, c
	sub	a, #0x0a
	jp	C, 00264$
	ld	a, #0x0f
	sub	a, c
	jp	C, 00264$
;src/game/game.c:307: trainList[nbTrainList].posX = ulx+xCursor;
	ld	bc, (_nbTrainList)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0004
	add	hl, bc
	ld	a, -7 (ix)
	ld	(hl), a
;src/game/game.c:308: trainList[nbTrainList].posY = uly+yCursor;
	ld	bc, (_nbTrainList)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0005
	add	hl, bc
	ld	a, -5 (ix)
	ld	(hl), a
;src/game/game.c:310: trainList[nbTrainList].shiftX = 0;
	ld	bc, (_nbTrainList)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0007
	add	hl, bc
	ld	(hl), #0x00
;src/game/game.c:311: trainList[nbTrainList].shiftY = 0;
	ld	bc, (_nbTrainList)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	bc, #0x0008
	add	hl, bc
	ld	(hl), #0x00
;src/game/game.c:307: trainList[nbTrainList].posX = ulx+xCursor;
	ld	bc, (_nbTrainList)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
;src/game/game.c:316: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
	ld	iy, #_trainList
	ld	a, 0 (iy)
	add	a, c
	ld	c, a
	ld	a, 1 (iy)
	adc	a, b
	ld	b, a
	push	bc
	pop	iy
	ld	e, 5 (iy)
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
	ex	de,hl
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	de, #_p_world
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
;src/game/game.c:320: trainList[nbTrainList].heading = 2;
	ld	hl, #0x0006
	add	hl, bc
;src/game/game.c:316: if( p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SSNS ||
	ld	a, -7 (ix)
	sub	a, #0x0a
	jr	Z,00153$
;src/game/game.c:317: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SMNS ||
	ld	a, -7 (ix)
	sub	a, #0x0c
	jr	Z,00153$
;src/game/game.c:318: p_world[trainList[nbTrainList].posY*WIDTH+trainList[nbTrainList].posX] == SLNS )
	ld	a, -7 (ix)
	sub	a, #0x0e
	jr	NZ,00154$
00153$:
;src/game/game.c:320: trainList[nbTrainList].heading = 2;
	ld	(hl), #0x02
	jr	00155$
00154$:
;src/game/game.c:326: trainList[nbTrainList].heading = 0;
	ld	(hl), #0x00
00155$:
;src/game/game.c:332: nbTrainList++;
	ld	hl, #_nbTrainList+0
	inc	(hl)
;src/game/game.c:334: CURSOR_MODE=NONE;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x00
;src/game/game.c:335: drawTile(ulx, uly, xCursor, yCursor);
	ld	h, -8 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawTile
	pop	af
	pop	af
	jr	00264$
00166$:
;src/game/game.c:340: else if(CURSOR_MODE>=T_SSNS)
	ld	iy, #_CURSOR_MODE
	ld	a, 0 (iy)
	sub	a, #0x02
	jr	C,00264$
;src/game/game.c:342: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+8;
	ld	hl, #_p_world
	add	hl,de
	ld	c, l
	ld	b, h
	ld	a, 0 (iy)
	add	a, #0x08
	ld	(bc), a
;src/game/game.c:345: if(CURSOR_MODE<=T_SLEW)
	ld	a, #0x07
	sub	a, 0 (iy)
	jr	C,00264$
;src/game/game.c:346: CURSOR_MODE=NONE;
	ld	0 (iy), #0x00
;src/game/game.c:350: for(i=0; i<14000; i++) {}
00264$:
	ld	bc, #0x36b0
00215$:
	dec	bc
	ld	a, b
	or	a,c
	jr	NZ,00215$
00191$:
;src/game/game.c:354: drawTrains(ulx, uly);
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	push	hl
	call	_drawTrains
	pop	af
;src/game/game.c:355: drawCursor(xCursor, yCursor, 0);
	ld	b, -15 (ix)
	ld	d, -20 (ix)
	xor	a, a
	push	af
	inc	sp
	ld	c, d
	push	bc
	call	_drawCursor
;src/game/game.c:356: drawScrolls(ulx, uly);
	inc	sp
	ld	h, -2 (ix)
	ld	l, -3 (ix)
	ex	(sp),hl
	call	_drawScrolls
	pop	af
;src/game/game.c:359: while(!exit);
	ld	a, -18 (ix)
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
