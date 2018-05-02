;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module train
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _drawWindow
	.globl _drawMenu
	.globl _putM2
	.globl _putM1
	.globl _realloc
	.globl _malloc
	.globl _trainManagement
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
;src/game/train.c:3: void trainManagement()
;	---------------------------------
; Function trainManagement
; ---------------------------------
_trainManagement::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game/train.c:5: const char *txtMenuChoice[] = { 
	ld	hl, #0x0000
	add	hl, sp
	ld	c,l
	ld	b,h
	ld	(hl), #<(___str_0)
	inc	hl
	ld	(hl), #>(___str_0)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	de, #___str_1+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/game/train.c:9: u8 menuChoice = drawMenu(txtMenuChoice,2);
	ld	a, #0x02
	push	af
	inc	sp
	push	bc
	call	_drawMenu
	pop	af
	inc	sp
;src/game/train.c:11: if(menuChoice == 0)
	ld	a, l
	or	a, a
	jr	NZ,00102$
;src/game/train.c:12: buyLocomotive();
	call	_buyLocomotive
00102$:
;src/game/train.c:14: putM1();
	call	_putM1
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "Buy a locomotive"
	.db 0x00
___str_1:
	.ascii "Back to depot"
	.db 0x00
;src/game/train.c:18: u8 confirmBuyLocomotive(u8 iSelect)
;	---------------------------------
; Function confirmBuyLocomotive
; ---------------------------------
_confirmBuyLocomotive::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-19
	add	hl, sp
	ld	sp, hl
;src/game/train.c:25: putM2();
	call	_putM2
;src/game/train.c:27: txtWindowLocomotive[1] = "";	
	ld	hl, #0x0001
	add	hl, sp
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	ld	de, #___str_2+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	hl, #0x0004
	add	hl,bc
	ex	de,hl
;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
	ld	hl, #0x0006
	add	hl,bc
	ld	-4 (ix), l
	ld	-3 (ix), h
;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
	ld	hl, #0x0008
	add	hl,bc
	ld	-2 (ix), l
	ld	-1 (ix), h
;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
	ld	hl, #0x000a
	add	hl,bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;src/game/train.c:29: switch(iSelect)
	ld	a, 4 (ix)
	or	a, a
	jr	Z,00101$
	ld	a, 4 (ix)
	dec	a
	jr	Z,00102$
	ld	a, 4 (ix)
	sub	a, #0x02
	jr	Z,00103$
	ld	a, 4 (ix)
	sub	a, #0x03
	jp	Z,00104$
	jp	00105$
;src/game/train.c:31: case 0:
00101$:
;src/game/train.c:32: txtWindowLocomotive[0] = "130 B";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_3)
	inc	hl
	ld	(hl), #>(___str_3)
;src/game/train.c:33: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	a, #<(___str_4)
	ld	(de), a
	inc	de
	ld	a, #>(___str_4)
	ld	(de), a
;src/game/train.c:34: txtWindowLocomotive[3] = "Entry of service: 1909";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #<(___str_5)
	inc	hl
	ld	(hl), #>(___str_5)
;src/game/train.c:35: txtWindowLocomotive[4] = "Maximum speed: 80 km/h";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #<(___str_6)
	inc	hl
	ld	(hl), #>(___str_6)
;src/game/train.c:36: txtWindowLocomotive[5] = "Price: 1000$";
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #<(___str_7)
	inc	hl
	ld	(hl), #>(___str_7)
;src/game/train.c:37: break;
	jp	00105$
;src/game/train.c:38: case 1:
00102$:
;src/game/train.c:39: txtWindowLocomotive[0] = "141 TA";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_8)
	inc	hl
	ld	(hl), #>(___str_8)
;src/game/train.c:40: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	a, #<(___str_4)
	ld	(de), a
	inc	de
	ld	a, #>(___str_4)
	ld	(de), a
;src/game/train.c:41: txtWindowLocomotive[3] = "Entry of service: 1911";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #<(___str_9)
	inc	hl
	ld	(hl), #>(___str_9)
;src/game/train.c:42: txtWindowLocomotive[4] = "Maximum speed: 70 km/h";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #<(___str_10)
	inc	hl
	ld	(hl), #>(___str_10)
;src/game/train.c:43: txtWindowLocomotive[5] = "Price: 900$";
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #<(___str_11)
	inc	hl
	ld	(hl), #>(___str_11)
;src/game/train.c:44: break;
	jr	00105$
;src/game/train.c:45: case 2:
00103$:
;src/game/train.c:46: txtWindowLocomotive[0] = "242 CT";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_12)
	inc	hl
	ld	(hl), #>(___str_12)
;src/game/train.c:47: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	a, #<(___str_4)
	ld	(de), a
	inc	de
	ld	a, #>(___str_4)
	ld	(de), a
;src/game/train.c:48: txtWindowLocomotive[3] = "Entry of service: 1930";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #<(___str_13)
	inc	hl
	ld	(hl), #>(___str_13)
;src/game/train.c:49: txtWindowLocomotive[4] = "Maximum speed: 85 km/h";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #<(___str_14)
	inc	hl
	ld	(hl), #>(___str_14)
;src/game/train.c:50: txtWindowLocomotive[5] = "Price: 1500$";
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #<(___str_15)
	inc	hl
	ld	(hl), #>(___str_15)
;src/game/train.c:51: break;
	jr	00105$
;src/game/train.c:53: case 3:
00104$:
;src/game/train.c:54: txtWindowLocomotive[0] = "141 P";
	ld	l, c
	ld	h, b
	ld	(hl), #<(___str_16)
	inc	hl
	ld	(hl), #>(___str_16)
;src/game/train.c:55: txtWindowLocomotive[2] = "Propulsion: steam";
	ld	a, #<(___str_4)
	ld	(de), a
	inc	de
	ld	a, #>(___str_4)
	ld	(de), a
;src/game/train.c:56: txtWindowLocomotive[3] = "Entry of service: 1942";
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #<(___str_17)
	inc	hl
	ld	(hl), #>(___str_17)
;src/game/train.c:57: txtWindowLocomotive[4] = "Maximum speed: 105 km/h";
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #<(___str_18)
	inc	hl
	ld	(hl), #>(___str_18)
;src/game/train.c:58: txtWindowLocomotive[5] = "Price: 2000$";
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl), #<(___str_19)
	inc	hl
	ld	(hl), #>(___str_19)
;src/game/train.c:60: }
00105$:
;src/game/train.c:63: returnChoice = drawWindow(txtWindowLocomotive, 6, 1);
	ld	hl, #0x0106
	push	hl
	push	bc
	call	_drawWindow
	pop	af
	pop	af
;src/game/train.c:66: if (returnChoice==1)
	ld	-19 (ix), l
	ld	a, l
	dec	a
	jp	NZ,00110$
;src/game/train.c:68: if(nbTrainList==0)
	ld	a,(#_nbTrainList + 0)
	or	a, a
	jr	NZ,00107$
;src/game/train.c:69: trainList = (Train*)malloc(sizeof(Train));
	ld	hl, #0x0006
	push	hl
	call	_malloc
	pop	af
	ld	(_trainList), hl
	jr	00108$
00107$:
;src/game/train.c:71: realloc(trainList, (nbTrainList+1)*sizeof(Train));
	ld	hl,#_nbTrainList + 0
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	push	bc
	push	hl
	call	_realloc
	pop	af
	pop	af
00108$:
;src/game/train.c:74: trainList[nbTrainList].loco = iSelect;
	ld	bc, (_nbTrainList)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	ld	a, 4 (ix)
	ld	(hl), a
;src/game/train.c:77: trainList[nbTrainList].wagon[0] = 0;
	ld	bc, (_nbTrainList)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	inc	hl
	ld	(hl), #0x00
;src/game/train.c:78: trainList[nbTrainList].wagon[1] = 0;
	ld	bc, (_nbTrainList)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	inc	hl
	inc	hl
	ld	(hl), #0x00
;src/game/train.c:79: trainList[nbTrainList].wagon[2] = 0;
	ld	bc, (_nbTrainList)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_trainList)
	add	hl, bc
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x00
;src/game/train.c:82: nbTrainList++;
	ld	hl, #_nbTrainList+0
	inc	(hl)
;src/game/train.c:83: CURSOR_MODE = PUTTRAIN;
	ld	hl,#_CURSOR_MODE + 0
	ld	(hl), #0x01
00110$:
;src/game/train.c:86: return returnChoice;
	ld	l, -19 (ix)
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
	.ascii "242 CT"
	.db 0x00
___str_13:
	.ascii "Entry of service: 1930"
	.db 0x00
___str_14:
	.ascii "Maximum speed: 85 km/h"
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
;src/game/train.c:89: void buyLocomotive()
;	---------------------------------
; Function buyLocomotive
; ---------------------------------
_buyLocomotive::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;src/game/train.c:91: const char *txtMenuLoco[] = { 
	ld	hl, #0x0000
	add	hl, sp
	ld	c,l
	ld	b,h
	ld	(hl), #<(___str_20)
	inc	hl
	ld	(hl), #>(___str_20)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	de, #___str_21+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0004
	add	hl, bc
	ld	de, #___str_22+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0006
	add	hl, bc
	ld	de, #___str_23+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0008
	add	hl, bc
	ld	de, #___str_24+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x000a
	add	hl, bc
	ld	de, #___str_25+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x000c
	add	hl, bc
	ld	de, #___str_26+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x000e
	add	hl, bc
	ld	de, #___str_27+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0010
	add	hl, bc
	ld	de, #___str_28+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0012
	add	hl, bc
	ld	de, #___str_29+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0014
	add	hl, bc
	ld	de, #___str_30+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	hl, #0x0016
	add	hl, bc
	ld	de, #___str_31+0
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/game/train.c:106: confirmBuyLocomotive( drawMenu(txtMenuLoco,12) );
	ld	a, #0x0c
	push	af
	inc	sp
	push	bc
	call	_drawMenu
	pop	af
	inc	sp
	ld	b, l
	push	bc
	inc	sp
	call	_confirmBuyLocomotive
	ld	sp,ix
	pop	ix
	ret
___str_20:
	.ascii "130 B"
	.db 0x00
___str_21:
	.ascii "141 TA"
	.db 0x00
___str_22:
	.ascii "242 CT"
	.db 0x00
___str_23:
	.ascii "141 P"
	.db 0x00
___str_24:
	.ascii "BB 63000"
	.db 0x00
___str_25:
	.ascii "Re 4/4 II"
	.db 0x00
___str_26:
	.ascii "BB 67000"
	.db 0x00
___str_27:
	.ascii "BB 15000"
	.db 0x00
___str_28:
	.ascii "Re 460"
	.db 0x00
___str_29:
	.ascii "DB Class 101"
	.db 0x00
___str_30:
	.ascii "BB 27000"
	.db 0x00
___str_31:
	.ascii "ES 64F4"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
