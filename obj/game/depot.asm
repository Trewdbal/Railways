;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.4 #9329 (Linux)
; This file was generated Mon Feb  8 17:38:58 2016
;--------------------------------------------------------
	.module depot
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;src/game/depot.c:3: void railroadDepot()
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
;src/game/depot.c:5: u8 exit=0;
	ld	-1 (ix),#0x00
;src/game/depot.c:7: cpct_clearScreen(0b11111111);
	ld	hl,#0x4000
	push	hl
	ld	a,#0xFF
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/game/depot.c:9: do
00108$:
;src/game/depot.c:11: cpct_scanKeyboard(); 
	call	_cpct_scanKeyboard
;src/game/depot.c:13: if ( cpct_isKeyPressed(Key_Esc) )
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00106$
;src/game/depot.c:14: exit=1;
	ld	-1 (ix),#0x01
	jr	00109$
00106$:
;src/game/depot.c:15: else if(cpct_isKeyPressed(Key_Return) )
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00109$
;src/game/depot.c:17: const char *txtMenuChoice[] = { 
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
;src/game/depot.c:21: u8 menuChoice = drawMenu(txtMenuChoice,2);
	ld	a,#0x02
	push	af
	inc	sp
	push	de
	call	_drawMenu
	pop	af
	inc	sp
	ld	a,l
;src/game/depot.c:23: if(menuChoice == 0)
	or	a, a
	jr	NZ,00109$
;src/game/depot.c:24: buyLocomotive();
	call	_buyLocomotive
00109$:
;src/game/depot.c:28: while(!exit);
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
;src/game/depot.c:31: void drawLocomotive(u8 i, u8 iSelect)
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
;src/game/depot.c:34: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4), 30+40*(i%4));
	ld	a,4 (ix)
	and	a, #0x03
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	ld	-9 (ix), a
	add	a, #0x1E
	ld	-4 (ix),a
	ld	a,4 (ix)
	rrca
	rrca
	and	a,#0x3F
	ld	-1 (ix), a
	push	af
	inc	sp
	call	___uchar2fs
	inc	sp
	ld	-5 (ix),d
	ld	-6 (ix),e
	ld	-7 (ix),h
	ld	-8 (ix),l
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
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
	ld	a,-4 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	ld	-3 (ix),l
	ld	-2 (ix),h
;src/game/depot.c:37: if(i==iSelect)
	ld	a,4 (ix)
	sub	a, 5 (ix)
	jr	NZ,00102$
;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	ld	hl,#0x0505
	push	hl
	call	_cpct_px2byteM0
	ld	d,l
	ld	hl,#0x1616
	push	hl
	push	de
	inc	sp
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	jr	00103$
00102$:
;src/game/depot.c:40: cpct_drawSolidBox(p_video, cpct_px2byteM0(11,11), 22, 22);
	ld	hl,#0x0B0B
	push	hl
	call	_cpct_px2byteM0
	ld	d,l
	ld	hl,#0x1616
	push	hl
	push	de
	inc	sp
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
00103$:
;src/game/depot.c:42: p_video = cpct_getScreenPtr(SCR_VMEM, 5+25*floorf(i/4)+1, 30+40*(i%4)+1);
	ld	a,-9 (ix)
	add	a, #0x1F
	ld	-3 (ix),a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
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
	ld	a,-3 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game/depot.c:38: cpct_drawSolidBox(p_video, cpct_px2byteM0(5,5), 22, 22);
	ld	c, l
	ld	b, h
;src/game/depot.c:44: if(i<locDelocked)
	ld	hl,#_locDelocked
	ld	a,4 (ix)
	sub	a, (hl)
	jr	NC,00110$
;src/game/depot.c:46: switch(i)
	ld	a,#0x03
	sub	a, 4 (ix)
	jr	C,00112$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00128$
	add	hl,de
	add	hl,de
;src/game/depot.c:48: case 0:
	jp	(hl)
00128$:
	jr	00104$
	jr	00105$
	jr	00106$
	jr	00107$
00104$:
;src/game/depot.c:49: cpct_drawSprite(l130B, p_video, 20, 20);
	ld	de,#_l130B+0
	ld	hl,#0x1414
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/depot.c:50: break;
	jr	00112$
;src/game/depot.c:51: case 1:
00105$:
;src/game/depot.c:52: cpct_drawSprite(l141TA, p_video, 20, 20);
	ld	de,#_l141TA+0
	ld	hl,#0x1414
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/depot.c:53: break;
	jr	00112$
;src/game/depot.c:54: case 2:
00106$:
;src/game/depot.c:55: cpct_drawSprite(l142AT, p_video, 20, 20);
	ld	de,#_l142AT+0
	ld	hl,#0x1414
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/depot.c:56: break;
	jr	00112$
;src/game/depot.c:57: case 3:
00107$:
;src/game/depot.c:58: cpct_drawSprite(l141P, p_video, 20, 20);
	ld	de,#_l141P+0
	ld	hl,#0x1414
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
;src/game/depot.c:60: }
	jr	00112$
00110$:
;src/game/depot.c:66: cpct_drawSprite(lock, p_video, 20, 20);
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
;src/game/depot.c:70: void drawAllLocomotives(u8 iSelect)
;	---------------------------------
; Function drawAllLocomotives
; ---------------------------------
_drawAllLocomotives::
;src/game/depot.c:74: putM0();
	call	_putM0
;src/game/depot.c:76: cpct_clearScreen(cpct_px2byteM0(9,9));
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
;src/game/depot.c:77: for(i=0; i<12; i++)
	ld	d,#0x00
00102$:
;src/game/depot.c:78: drawLocomotive(i, iSelect);
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
;src/game/depot.c:77: for(i=0; i<12; i++)
	inc	d
	ld	a,d
	sub	a, #0x0C
	jr	C,00102$
	ret
;src/game/depot.c:81: u8 confirmBuyLocomotive(u8 iSelect)
;	---------------------------------
; Function confirmBuyLocomotive
; ---------------------------------
_confirmBuyLocomotive::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;src/game/depot.c:88: putM2();
	call	_putM2
;src/game/depot.c:90: switch(iSelect)
	ld	a,#0x03
	sub	a, 4 (ix)
	jp	C,00105$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00125$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00125$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
;src/game/depot.c:92: case 0:
00101$:
;src/game/depot.c:93: txtWindowLocomotive[0] = "130 B";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_2)
	inc	hl
	ld	(hl),#>(___str_2)
;src/game/depot.c:94: txtWindowLocomotive[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:95: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_4+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:96: txtWindowLocomotive[3] = "Entry of service: 1909";
	ld	hl,#0x0006
	add	hl,de
	ld	bc,#___str_5+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:97: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
	ld	hl,#0x0008
	add	hl,de
	ld	bc,#___str_6+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:98: txtWindowLocomotive[5] = "Price: 1000$";
	ld	hl,#0x000A
	add	hl,de
	ld	de,#___str_7+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/depot.c:99: break;
	jp	00105$
;src/game/depot.c:100: case 1:
00102$:
;src/game/depot.c:101: txtWindowLocomotive[0] = "141 TA";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_8)
	inc	hl
	ld	(hl),#>(___str_8)
;src/game/depot.c:102: txtWindowLocomotive[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:103: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_4+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:104: txtWindowLocomotive[3] = "Entry of service: 1911";
	ld	hl,#0x0006
	add	hl,de
	ld	bc,#___str_9+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:105: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
	ld	hl,#0x0008
	add	hl,de
	ld	bc,#___str_10+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:106: txtWindowLocomotive[5] = "Price: 900$";
	ld	hl,#0x000A
	add	hl,de
	ld	de,#___str_11+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/depot.c:107: break;
	jp	00105$
;src/game/depot.c:108: case 2:
00103$:
;src/game/depot.c:109: txtWindowLocomotive[0] = "142 AT";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_12)
	inc	hl
	ld	(hl),#>(___str_12)
;src/game/depot.c:110: txtWindowLocomotive[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:111: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_4+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:112: txtWindowLocomotive[3] = "Entry of service: 1926";
	ld	hl,#0x0006
	add	hl,de
	ld	bc,#___str_13+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:113: txtWindowLocomotive[4] = "Maximum speed: 95 km/h";
	ld	hl,#0x0008
	add	hl,de
	ld	bc,#___str_14+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:114: txtWindowLocomotive[5] = "Price: 1500$";
	ld	hl,#0x000A
	add	hl,de
	ld	de,#___str_15+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/depot.c:115: break;
	jr	00105$
;src/game/depot.c:117: case 3:
00104$:
;src/game/depot.c:118: txtWindowLocomotive[0] = "141 P";
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_16)
	inc	hl
	ld	(hl),#>(___str_16)
;src/game/depot.c:119: txtWindowLocomotive[1] = "";
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	bc,#___str_3+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:120: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	hl,#0x0004
	add	hl,de
	ld	bc,#___str_4+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:121: txtWindowLocomotive[3] = "Entry of service: 1942";
	ld	hl,#0x0006
	add	hl,de
	ld	bc,#___str_17+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:122: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
	ld	hl,#0x0008
	add	hl,de
	ld	bc,#___str_18+0
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/game/depot.c:123: txtWindowLocomotive[5] = "Price: 2000$";
	ld	hl,#0x000A
	add	hl,de
	ld	de,#___str_19+0
	ld	(hl),e
	inc	hl
	ld	(hl),d
;src/game/depot.c:125: }
00105$:
;src/game/depot.c:128: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl,#0x0106
	push	hl
	push	de
	call	_drawWindow
	pop	af
	pop	af
	ld	c,l
;src/game/depot.c:131: if (returnChoice==1)
	ld	a,c
	dec	a
	jp	NZ,00110$
;src/game/depot.c:133: if(nbTrainList==0)
	ld	a,(#_nbTrainList + 0)
	or	a, a
	jr	NZ,00107$
;src/game/depot.c:134: trainList = (Train*)malloc(sizeof(Train));
	push	bc
	ld	hl,#0x0009
	push	hl
	call	_malloc
	pop	af
	pop	bc
	ld	(_trainList),hl
	jr	00108$
00107$:
;src/game/depot.c:136: realloc(trainList, (nbTrainList+1)*sizeof(Train));
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
;src/game/depot.c:139: trainList[nbTrainList].loco = iSelect;
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
;src/game/depot.c:142: trainList[nbTrainList].wagon[0] = 0;
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
;src/game/depot.c:143: trainList[nbTrainList].wagon[1] = 0;
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
;src/game/depot.c:144: trainList[nbTrainList].wagon[2] = 0;
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
;src/game/depot.c:145: trainList[nbTrainList].wagon[3] = 0;
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
;src/game/depot.c:146: trainList[nbTrainList].wagon[4] = 0;
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
;src/game/depot.c:147: trainList[nbTrainList].wagon[5] = 0;
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
;src/game/depot.c:148: trainList[nbTrainList].wagon[6] = 0;
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
;src/game/depot.c:149: trainList[nbTrainList].wagon[7] = 0;
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
;src/game/depot.c:152: nbTrainList++;
	ld	hl, #_nbTrainList+0
	inc	(hl)
00110$:
;src/game/depot.c:155: return returnChoice;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "130 B"
	.db 0x00
___str_3:
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
;src/game/depot.c:158: void buyLocomotive()
;	---------------------------------
; Function buyLocomotive
; ---------------------------------
_buyLocomotive::
;src/game/depot.c:160: u8 exit=0;
;src/game/depot.c:162: u8 iSelect=0;
	ld	bc,#0x0000
;src/game/depot.c:164: drawAllLocomotives(iSelect);
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_drawAllLocomotives
	inc	sp
	pop	bc
;src/game/depot.c:166: do
00124$:
;src/game/depot.c:168: cpct_scanKeyboard(); 
	push	bc
	call	_cpct_scanKeyboard
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00122$
;src/game/depot.c:172: if (iSelect>0)
	ld	a,b
	or	a, a
	jr	Z,00140$
;src/game/depot.c:174: iSelect--;
	dec	b
;src/game/depot.c:175: drawLocomotive(iSelect, iSelect);
	push	bc
	push	bc
	inc	sp
	push	bc
	inc	sp
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:176: drawLocomotive(iSelect+1, iSelect);
	ld	d,b
	inc	d
	push	bc
	ld	c, d
	push	bc
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:178: for(i=0; i<14000; i++) {} // wait loop
00140$:
	ld	de,#0x36B0
00129$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00129$
	jp	00125$
00122$:
;src/game/depot.c:180: else if ( cpct_isKeyPressed(Key_CursorDown) )
	push	bc
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00119$
;src/game/depot.c:182: if (iSelect<11)
	ld	a,b
	sub	a, #0x0B
	jr	NC,00144$
;src/game/depot.c:184: iSelect++;
	inc	b
;src/game/depot.c:185: drawLocomotive(iSelect, iSelect);
	push	bc
	push	bc
	inc	sp
	push	bc
	inc	sp
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:186: drawLocomotive(iSelect-1, iSelect);
	ld	d,b
	dec	d
	push	bc
	ld	c, d
	push	bc
	call	_drawLocomotive
	pop	af
	pop	bc
;src/game/depot.c:188: for(i=0; i<14000; i++) {} // wait loop
00144$:
	ld	de,#0x36B0
00132$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00132$
	jr	00125$
00119$:
;src/game/depot.c:190: else if ( cpct_isKeyPressed(Key_Return) )
	push	bc
	ld	hl,#0x0402
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00116$
;src/game/depot.c:192: if(iSelect<locDelocked)
	ld	hl,#_locDelocked
	ld	a,b
	sub	a, (hl)
	jr	NC,00149$
;src/game/depot.c:194: if(confirmBuyLocomotive(iSelect) == 1)
	push	bc
	push	bc
	inc	sp
	call	_confirmBuyLocomotive
	inc	sp
	pop	bc
	dec	l
	jr	NZ,00108$
;src/game/depot.c:195: exit=1;
	ld	c,#0x01
	jr	00149$
00108$:
;src/game/depot.c:197: drawAllLocomotives(iSelect);
	push	bc
	push	bc
	inc	sp
	call	_drawAllLocomotives
	inc	sp
	pop	bc
;src/game/depot.c:200: for(i=0; i<14000; i++) {} // wait loop
00149$:
	ld	de,#0x36B0
00135$:
	dec	de
	ld	a,d
	or	a,e
	jr	NZ,00135$
	jr	00125$
00116$:
;src/game/depot.c:202: else if ( cpct_isKeyPressed(Key_Esc) )
	push	bc
	ld	hl,#0x0408
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	or	a, a
	jr	Z,00125$
;src/game/depot.c:203: exit=1;
	ld	c,#0x01
00125$:
;src/game/depot.c:205: while(!exit);
	ld	a,c
	or	a, a
	jp	Z,00124$
;src/game/depot.c:207: putM2();
	jp  _putM2
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
