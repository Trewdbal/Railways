;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Mon Feb  8 21:24:02 2016
;--------------------------------------------------------
	.module depot
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _drawDepot
	.globl _drawWindow
	.globl _drawMenu
	.globl _putM2
	.globl _putM0
	.globl _realloc
	.globl _malloc
	.globl _floorf
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM0
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _railroadDepot
	.globl _drawLocomotive
	.globl _drawAllLocomotives
	.globl _confirmBuyLocomotive
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
;src/game/depot.c:3: void drawDepot()
;	---------------------------------
; Function drawDepot
; ---------------------------------
_drawDepot::
;src/game/depot.c:8: cpct_clearScreen(0b11111111);
	ld	hl,#0x4000
	push	hl
	ld	a,#0xFF
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/game/depot.c:10: for(i=0; i<nbTrainList; i++)
	ld	de,#0x0000
00103$:
	ld	hl,#_nbTrainList
	ld	a,d
	sub	a, (hl)
	ret	NC
;src/game/depot.c:12: p_video = cpct_getScreenPtr(SCR_VMEM, 50, 10+i*20);
	ld	a,e
	add	a, #0x0A
	push	de
	ld	d,a
	ld	e,#0x32
	push	de
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
;src/game/depot.c:13: cpct_drawSprite(l130B_M2, p_video, 10, 10);
	ld	c, l
	ld	b, h
	push	de
	ld	hl,#0x0A0A
	push	hl
	push	bc
	ld	hl,#_l130B_M2
	push	hl
	call	_cpct_drawSprite
	pop	de
;src/game/depot.c:10: for(i=0; i<nbTrainList; i++)
	ld	a,e
	add	a, #0x14
	ld	e,a
	inc	d
	jr	00103$
;src/game/depot.c:17: void railroadDepot()
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
;src/game/depot.c:19: u8 exit=0;
	ld	-1 (ix),#0x00
;src/game/depot.c:21: drawDepot();
	call	_drawDepot
;src/game/depot.c:23: do
00108$:
;src/game/depot.c:25: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/game/depot.c:27: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00106$
;src/game/depot.c:28: exit=1;
	ld	-1 (ix),#0x01
	jr	00109$
00106$:
;src/game/depot.c:29: else if(cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00109$
;src/game/depot.c:31: const char *txtMenuChoice[] = { 
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
;src/game/depot.c:35: u8 menuChoice = drawMenu(txtMenuChoice,2);
	ld	a,#0x02
	push	af
	inc	sp
	push	de
	call	_drawMenu
	pop	af
	inc	sp
	ld	a,l
;src/game/depot.c:37: if(menuChoice == 0)
	or	a, a
	jr	NZ,00102$
;src/game/depot.c:38: buyLocomotive();
	call	_buyLocomotive
00102$:
;src/game/depot.c:40: drawDepot();
	call	_drawDepot
00109$:
;src/game/depot.c:44: while(!exit);
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
;src/game/depot.c:47: void drawLocomotive(u8 i, u8 iSelect)
;	---------------------------------
; Function drawLocomotive
; ---------------------------------
_drawLocomotive::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;src/game/depot.c:50: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4), 30+40*(i%4));
	ld	a,4 (ix)
	and	a, #0x03
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	ld	-5 (ix), a
	add	a, #0x1E
	ld	-9 (ix),a
	ld	a,4 (ix)
	rrca
	rrca
	and	a,#0x3F
	ld	-6 (ix), a
	push	af
	inc	sp
	call	___uchar2fs
	inc	sp
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_floorf
	pop	af
	pop	af
	ex	de, hl
	push	hl
	push	de
	ld	hl,#0x41C8
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	hl,#0x40A0
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	push	de
	push	hl
	call	___fs2uchar
	pop	af
	pop	af
	ld	d,l
	ld	a,-9 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/depot.c:54: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	ld	-8 (ix),l
	ld	-7 (ix),h
;src/game/depot.c:53: if(i==iSelect)
	ld	a,4 (ix)
	sub	a, 5 (ix)
	jr	NZ,00102$
;src/game/depot.c:54: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	ld	hl,#0x0505
	push	hl
	call	_cpct_px2byteM0
	ld	d,l
	ld	hl,#0x1616
	push	hl
	push	de
	inc	sp
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	jr	00103$
00102$:
;src/game/depot.c:56: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
	ld	hl,#0x0B0B
	push	hl
	call	_cpct_px2byteM0
	ld	d,l
	ld	hl,#0x1616
	push	hl
	push	de
	inc	sp
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
00103$:
;src/game/depot.c:58: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4)+1, 30+40*(i%4)+1);
	ld	a,-5 (ix)
	add	a, #0x1F
	ld	-8 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	_floorf
	pop	af
	pop	af
	ex	de, hl
	push	hl
	push	de
	ld	hl,#0x41C8
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	hl,#0x40C0
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	push	de
	push	hl
	call	___fs2uchar
	pop	af
	pop	af
	ld	d,l
	ld	a,-8 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/depot.c:54: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	ld	c, l
	ld	b, h
;src/game/depot.c:60: if(i<locDelocked)
	ld	hl,#_locDelocked
	ld	a,4 (ix)
	sub	a, (hl)
	jr	NC,00110$
;src/game/depot.c:62: switch(i)
	ld	a,#0x03
	sub	a, 4 (ix)
	jr	C,00112$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00128$
	add	hl,de
	add	hl,de
;src/game/depot.c:64: case 0:
	jp	(hl)
00128$:
	jr	00104$
	jr	00105$
	jr	00106$
	jr	00107$
00104$:
;src/game/depot.c:65: cpct_drawSprite(l130B, p_video, 20, 20);
	ld	de,#_l130B+0
	ld	hl,#0x1414
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/depot.c:66: break;
	jr	00112$
;src/game/depot.c:67: case 1:
00105$:
;src/game/depot.c:68: cpct_drawSprite(l141TA, p_video, 20, 20);
	ld	de,#_l141TA+0
	ld	hl,#0x1414
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/depot.c:69: break;
	jr	00112$
;src/game/depot.c:70: case 2:
00106$:
;src/game/depot.c:71: cpct_drawSprite(l142AT, p_video, 20, 20);
	ld	de,#_l142AT+0
	ld	hl,#0x1414
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/depot.c:72: break;
	jr	00112$
;src/game/depot.c:73: case 3:
00107$:
;src/game/depot.c:74: cpct_drawSprite(l141P, p_video, 20, 20);
	ld	de,#_l141P+0
	ld	hl,#0x1414
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/depot.c:76: }
	jr	00112$
00110$:
;src/game/depot.c:82: cpct_drawSprite(lock, p_video, 20, 20);
	ld	de,#_lock
	ld	hl,#0x1414
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
00112$:
	ld	sp, ix
	pop	ix
	ret
;src/game/depot.c:86: void drawAllLocomotives(u8 iSelect)
;	---------------------------------
; Function drawAllLocomotives
; ---------------------------------
_drawAllLocomotives::
;src/game/depot.c:90: putM0();
	call	_putM0
;src/game/depot.c:92: cpct_clearScreen(cpct_px2byteM0(9,9));
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
;src/game/depot.c:93: for(i=0; i<12; i++)
	ld	d,#0x00
00102$:
;src/game/depot.c:94: drawLocomotive(i, iSelect);
	push	de
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_drawLocomotive
	pop	af
	pop	de
;src/game/depot.c:93: for(i=0; i<12; i++)
	inc	d
	ld	a,d
	sub	a, #0x0C
	jr	C,00102$
	ret
;src/game/depot.c:97: u8 confirmBuyLocomotive(u8 iSelect)
;	---------------------------------
; Function confirmBuyLocomotive
; ---------------------------------
_confirmBuyLocomotive::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-18
	add	hl,sp
	ld	sp,hl
;src/game/depot.c:104: putM2();
	call	_putM2
;src/game/depot.c:106: txtWindowLocomotive[1] = "";	
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	inc	hl
	inc	hl
	ld	bc,#___str_2+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:108: switch(iSelect)
	ld	a,#0x03
	sub	a, 4 (ix)
	jp	C,00105$
;src/game/depot.c:112: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	hl,#0x0004
	add	hl,de
	ld	-4 (ix),l
	ld	-3 (ix),h
;src/game/depot.c:113: txtWindowLocomotive[3] = "Entry of service: 1909";
	ld	hl,#0x0006
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/game/depot.c:114: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
	ld	hl,#0x0008
	add	hl,de
	ld	-6 (ix),l
	ld	-5 (ix),h
;src/game/depot.c:115: txtWindowLocomotive[5] = "Price: 1000$";
	ld	hl,#0x000A
	add	hl,de
	ld	c,l
	ld	b,h
;src/game/depot.c:108: switch(iSelect)
	push	de
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00125$
	add	hl,de
	add	hl,de
	add	hl,de
	pop	de
	jp	(hl)
00125$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
;src/game/depot.c:110: case 0:
00101$:
;src/game/depot.c:111: txtWindowLocomotive[0] = "130 B";
	ld	l, e
	ld	h, d
	ld	(hl),#<(___str_3)
	inc	hl
	ld	(hl),#>(___str_3)
;src/game/depot.c:112: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#<(___str_4)
	inc	hl
	ld	(hl),#>(___str_4)
;src/game/depot.c:113: txtWindowLocomotive[3] = "Entry of service: 1909";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#<(___str_5)
	inc	hl
	ld	(hl),#>(___str_5)
;src/game/depot.c:114: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#<(___str_6)
	inc	hl
	ld	(hl),#>(___str_6)
;src/game/depot.c:115: txtWindowLocomotive[5] = "Price: 1000$";
	ld	a,#<(___str_7)
	ld	(bc),a
	inc	bc
	ld	a,#>(___str_7)
	ld	(bc),a
;src/game/depot.c:116: break;
	jp	00105$
;src/game/depot.c:117: case 1:
00102$:
;src/game/depot.c:118: txtWindowLocomotive[0] = "141 TA";
	ld	l, e
	ld	h, d
	ld	(hl),#<(___str_8)
	inc	hl
	ld	(hl),#>(___str_8)
;src/game/depot.c:119: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#<(___str_4)
	inc	hl
	ld	(hl),#>(___str_4)
;src/game/depot.c:120: txtWindowLocomotive[3] = "Entry of service: 1911";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#<(___str_9)
	inc	hl
	ld	(hl),#>(___str_9)
;src/game/depot.c:121: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#<(___str_10)
	inc	hl
	ld	(hl),#>(___str_10)
;src/game/depot.c:122: txtWindowLocomotive[5] = "Price: 900$";
	ld	a,#<(___str_11)
	ld	(bc),a
	inc	bc
	ld	a,#>(___str_11)
	ld	(bc),a
;src/game/depot.c:123: break;
	jr	00105$
;src/game/depot.c:124: case 2:
00103$:
;src/game/depot.c:125: txtWindowLocomotive[0] = "142 AT";
	ld	l, e
	ld	h, d
	ld	(hl),#<(___str_12)
	inc	hl
	ld	(hl),#>(___str_12)
;src/game/depot.c:126: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#<(___str_4)
	inc	hl
	ld	(hl),#>(___str_4)
;src/game/depot.c:127: txtWindowLocomotive[3] = "Entry of service: 1926";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#<(___str_13)
	inc	hl
	ld	(hl),#>(___str_13)
;src/game/depot.c:128: txtWindowLocomotive[4] = "Maximum speed: 95 km/h";
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#<(___str_14)
	inc	hl
	ld	(hl),#>(___str_14)
;src/game/depot.c:129: txtWindowLocomotive[5] = "Price: 1500$";
	ld	a,#<(___str_15)
	ld	(bc),a
	inc	bc
	ld	a,#>(___str_15)
	ld	(bc),a
;src/game/depot.c:130: break;
	jr	00105$
;src/game/depot.c:132: case 3:
00104$:
;src/game/depot.c:133: txtWindowLocomotive[0] = "141 P";
	ld	l, e
	ld	h, d
	ld	(hl),#<(___str_16)
	inc	hl
	ld	(hl),#>(___str_16)
;src/game/depot.c:134: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#<(___str_4)
	inc	hl
	ld	(hl),#>(___str_4)
;src/game/depot.c:135: txtWindowLocomotive[3] = "Entry of service: 1942";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#<(___str_17)
	inc	hl
	ld	(hl),#>(___str_17)
;src/game/depot.c:136: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#<(___str_18)
	inc	hl
	ld	(hl),#>(___str_18)
;src/game/depot.c:137: txtWindowLocomotive[5] = "Price: 2000$";
	ld	a,#<(___str_19)
	ld	(bc),a
	inc	bc
	ld	a,#>(___str_19)
	ld	(bc),a
;src/game/depot.c:139: }
00105$:
;src/game/depot.c:142: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
	ld	hl,#0x0106
	push	hl
	push	de
	call	_drawWindow
	pop	af
	pop	af
	ld	c,l
;src/game/depot.c:145: if (returnChoice==1)
	ld	a,c
	dec	a
	jp	NZ,00110$
;src/game/depot.c:147: if(nbTrainList==0)
	ld	a,(#_nbTrainList + 0)
	or	a, a
	jr	NZ,00107$
;src/game/depot.c:148: trainList = (Train*)malloc(sizeof(Train));
	push	bc
	ld	hl,#0x0009
	push	hl
	call	_malloc
	pop	af
	pop	bc
	ld	(_trainList),hl
	jr	00108$
00107$:
;src/game/depot.c:150: realloc(trainList, (nbTrainList+1)*sizeof(Train));
	ld	iy,#_nbTrainList
	ld	l,0 (iy)
	ld	h,#0x00
	inc	hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	hl,(_trainList)
	push	bc
	push	de
	push	hl
	call	_realloc
	pop	af
	pop	af
	pop	bc
00108$:
;src/game/depot.c:153: trainList[nbTrainList].loco = iSelect;
	ld	de,(_nbTrainList)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	iy,(_trainList)
	add	iy, de
	ld	a,4 (ix)
	ld	0 (iy), a
;src/game/depot.c:156: trainList[nbTrainList].wagon[0] = 0;
	ld	de,(_nbTrainList)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	iy,(_trainList)
	add	iy, de
	inc	iy
	ld	0 (iy), #0x00
;src/game/depot.c:157: trainList[nbTrainList].wagon[1] = 0;
	ld	de,(_nbTrainList)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	iy,(_trainList)
	add	iy, de
	inc	iy
	inc	iy
	ld	0 (iy), #0x00
;src/game/depot.c:158: trainList[nbTrainList].wagon[2] = 0;
	ld	de,(_nbTrainList)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	iy,(_trainList)
	add	iy, de
	inc	iy
	inc	iy
	inc	iy
	ld	0 (iy), #0x00
;src/game/depot.c:159: trainList[nbTrainList].wagon[3] = 0;
	ld	de,(_nbTrainList)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	iy,(_trainList)
	add	iy, de
	ld	de,#0x0004
	add	iy, de
	ld	0 (iy), #0x00
;src/game/depot.c:160: trainList[nbTrainList].wagon[4] = 0;
	ld	de,(_nbTrainList)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	iy,(_trainList)
	add	iy, de
	ld	de,#0x0005
	add	iy, de
	ld	0 (iy), #0x00
;src/game/depot.c:161: trainList[nbTrainList].wagon[5] = 0;
	ld	de,(_nbTrainList)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	iy,(_trainList)
	add	iy, de
	ld	de,#0x0006
	add	iy, de
	ld	0 (iy), #0x00
;src/game/depot.c:162: trainList[nbTrainList].wagon[6] = 0;
	ld	de,(_nbTrainList)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	iy,(_trainList)
	add	iy, de
	ld	de,#0x0007
	add	iy, de
	ld	0 (iy), #0x00
;src/game/depot.c:163: trainList[nbTrainList].wagon[7] = 0;
	ld	de,(_nbTrainList)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	iy,(_trainList)
	add	iy, de
	ld	de,#0x0008
	add	iy, de
	ld	0 (iy), #0x00
;src/game/depot.c:166: nbTrainList++;
	ld	hl, #_nbTrainList+0
	inc	(hl)
00110$:
;src/game/depot.c:169: return returnChoice;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.db 0x00
___str_3:
	.ascii "130 B"
	.db 0x00
___str_4:
	.ascii "Propulsion: steam"
	.db 0x00
___str_5:
	.ascii "Entry of service: 1909"
	.db 0x00
___str_6:
	.ascii "Maximum speed: 80 km/h"
	.db 0x00
___str_7:
	.ascii "Price: 1000$"
	.db 0x00
___str_8:
	.ascii "141 TA"
	.db 0x00
___str_9:
	.ascii "Entry of service: 1911"
	.db 0x00
___str_10:
	.ascii "Maximum speed: 70 km/h"
	.db 0x00
___str_11:
	.ascii "Price: 900$"
	.db 0x00
___str_12:
	.ascii "142 AT"
	.db 0x00
___str_13:
	.ascii "Entry of service: 1926"
	.db 0x00
___str_14:
	.ascii "Maximum speed: 95 km/h"
	.db 0x00
___str_15:
	.ascii "Price: 1500$"
	.db 0x00
___str_16:
	.ascii "141 P"
	.db 0x00
___str_17:
	.ascii "Entry of service: 1942"
	.db 0x00
___str_18:
	.ascii "Maximum speed: 105 km/h"
	.db 0x00
___str_19:
	.ascii "Price: 2000$"
	.db 0x00
;src/game/depot.c:172: void buyLocomotive()
;	---------------------------------
; Function buyLocomotive
; ---------------------------------
_buyLocomotive::
;src/game/depot.c:174: u8 exit=0;
;src/game/depot.c:176: u8 iSelect=0;
	ld	bc,#0x0000
;src/game/depot.c:178: drawAllLocomotives(iSelect);
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_drawAllLocomotives
	inc	sp
	pop	bc
;src/game/depot.c:180: do
00124$:
;src/game/depot.c:182: cpct_scanKeyboard(); 
	push	bc
	call	_cpct_scanKeyboard
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00122$
;src/game/depot.c:186: if (iSelect>0)
	ld	a,b
	or	a, a
	jr	Z,00140$
;src/game/depot.c:188: iSelect--;
	dec	b
;src/game/depot.c:189: drawLocomotive(iSelect, iSelect);
	push	bc
	push	bc
	inc	sp
	push	bc
	inc	sp
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:190: drawLocomotive(iSelect+1, iSelect);
	ld	d,b
	inc	d
	push	bc
	ld	c, d
	push	bc
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:192: for(i=0; i<14000; i++) {} // wait loop
00140$:
	ld	de,#0x36B0
00129$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00129$
	jp	00125$
00122$:
;src/game/depot.c:194: else if ( cpct_isKeyPressed(Key_CursorDown) )
	push	bc
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00119$
;src/game/depot.c:196: if (iSelect<11)
	ld	a,b
	sub	a, #0x0B
	jr	NC,00144$
;src/game/depot.c:198: iSelect++;
	inc	b
;src/game/depot.c:199: drawLocomotive(iSelect, iSelect);
	push	bc
	push	bc
	inc	sp
	push	bc
	inc	sp
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:200: drawLocomotive(iSelect-1, iSelect);
	ld	d,b
	dec	d
	push	bc
	ld	c, d
	push	bc
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:202: for(i=0; i<14000; i++) {} // wait loop
00144$:
	ld	de,#0x36B0
00132$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00132$
	jr	00125$
00119$:
;src/game/depot.c:204: else if ( cpct_isKeyPressed(Key_Return) )
	push	bc
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00116$
;src/game/depot.c:206: if(iSelect<locDelocked)
	ld	hl,#_locDelocked
	ld	a,b
	sub	a, (hl)
	jr	NC,00149$
;src/game/depot.c:208: if(confirmBuyLocomotive(iSelect) == 1)
	push	bc
	push	bc
	inc	sp
	call	_confirmBuyLocomotive
	inc	sp
	pop	bc
	dec	l
	jr	NZ,00108$
;src/game/depot.c:209: exit=1;
	ld	c,#0x01
	jr	00149$
00108$:
;src/game/depot.c:211: drawAllLocomotives(iSelect);
	push	bc
	push	bc
	inc	sp
	call	_drawAllLocomotives
	inc	sp
	pop	bc
;src/game/depot.c:214: for(i=0; i<14000; i++) {} // wait loop
00149$:
	ld	de,#0x36B0
00135$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00135$
	jr	00125$
00116$:
;src/game/depot.c:216: else if ( cpct_isKeyPressed(Key_Esc) )
	push	bc
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00125$
;src/game/depot.c:217: exit=1;
	ld	c,#0x01
00125$:
;src/game/depot.c:219: while(!exit);
	ld	a,c
	or	a, a
	jp	Z,00124$
;src/game/depot.c:221: putM2();
	jp  _putM2
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
