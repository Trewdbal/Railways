                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Mon Feb  8 17:23:00 2016
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _game
                             14 	.globl _drawWindow
                             15 	.globl _drawMenu
                             16 	.globl _putM2
                             17 	.globl _cpct_setPALColour
                             18 	.globl _cpct_fw2hw
                             19 	.globl _cpct_setVideoMode
                             20 	.globl _cpct_disableFirmware
                             21 	.globl _cpct_reenableFirmware
                             22 ;--------------------------------------------------------
                             23 ; special function registers
                             24 ;--------------------------------------------------------
                             25 ;--------------------------------------------------------
                             26 ; ram data
                             27 ;--------------------------------------------------------
                             28 	.area _DATA
                             29 ;--------------------------------------------------------
                             30 ; ram data
                             31 ;--------------------------------------------------------
                             32 	.area _INITIALIZED
                             33 ;--------------------------------------------------------
                             34 ; absolute external ram data
                             35 ;--------------------------------------------------------
                             36 	.area _DABS (ABS)
                             37 ;--------------------------------------------------------
                             38 ; global & static initialisations
                             39 ;--------------------------------------------------------
                             40 	.area _HOME
                             41 	.area _GSINIT
                             42 	.area _GSFINAL
                             43 	.area _GSINIT
                             44 ;--------------------------------------------------------
                             45 ; Home
                             46 ;--------------------------------------------------------
                             47 	.area _HOME
                             48 	.area _HOME
                             49 ;--------------------------------------------------------
                             50 ; code
                             51 ;--------------------------------------------------------
                             52 	.area _CODE
                             53 ;src/main.c:11: void main(void)
                             54 ;	---------------------------------
                             55 ; Function main
                             56 ; ---------------------------------
   4000                      57 _main::
   4000 DD E5         [15]   58 	push	ix
   4002 DD 21 00 00   [14]   59 	ld	ix,#0
   4006 DD 39         [15]   60 	add	ix,sp
   4008 21 EE FF      [10]   61 	ld	hl,#-18
   400B 39            [11]   62 	add	hl,sp
   400C F9            [ 6]   63 	ld	sp,hl
                             64 ;src/main.c:16: const char *menuMain[] = { 
   400D 21 06 00      [10]   65 	ld	hl,#0x0006
   4010 39            [11]   66 	add	hl,sp
   4011 5D            [ 4]   67 	ld	e,l
   4012 54            [ 4]   68 	ld	d,h
   4013 36 F5         [10]   69 	ld	(hl),#<(___str_0)
   4015 23            [ 6]   70 	inc	hl
   4016 36 40         [10]   71 	ld	(hl),#>(___str_0)
   4018 6B            [ 4]   72 	ld	l, e
   4019 62            [ 4]   73 	ld	h, d
   401A 23            [ 6]   74 	inc	hl
   401B 23            [ 6]   75 	inc	hl
   401C 01 FE 40      [10]   76 	ld	bc,#___str_1+0
   401F 71            [ 7]   77 	ld	(hl),c
   4020 23            [ 6]   78 	inc	hl
   4021 70            [ 7]   79 	ld	(hl),b
   4022 21 04 00      [10]   80 	ld	hl,#0x0004
   4025 19            [11]   81 	add	hl,de
   4026 01 06 41      [10]   82 	ld	bc,#___str_2+0
   4029 71            [ 7]   83 	ld	(hl),c
   402A 23            [ 6]   84 	inc	hl
   402B 70            [ 7]   85 	ld	(hl),b
                             86 ;src/main.c:22: const char *windowCredit[] = { 
   402C 21 00 00      [10]   87 	ld	hl,#0x0000
   402F 39            [11]   88 	add	hl,sp
   4030 DD 75 FC      [19]   89 	ld	-4 (ix),l
   4033 DD 74 FD      [19]   90 	ld	-3 (ix),h
   4036 DD 6E FC      [19]   91 	ld	l,-4 (ix)
   4039 DD 66 FD      [19]   92 	ld	h,-3 (ix)
   403C 36 0B         [10]   93 	ld	(hl),#<(___str_3)
   403E 23            [ 6]   94 	inc	hl
   403F 36 41         [10]   95 	ld	(hl),#>(___str_3)
   4041 DD 6E FC      [19]   96 	ld	l,-4 (ix)
   4044 DD 66 FD      [19]   97 	ld	h,-3 (ix)
   4047 23            [ 6]   98 	inc	hl
   4048 23            [ 6]   99 	inc	hl
   4049 01 14 41      [10]  100 	ld	bc,#___str_4+0
   404C 71            [ 7]  101 	ld	(hl),c
   404D 23            [ 6]  102 	inc	hl
   404E 70            [ 7]  103 	ld	(hl),b
   404F DD 7E FC      [19]  104 	ld	a,-4 (ix)
   4052 C6 04         [ 7]  105 	add	a, #0x04
   4054 6F            [ 4]  106 	ld	l,a
   4055 DD 7E FD      [19]  107 	ld	a,-3 (ix)
   4058 CE 00         [ 7]  108 	adc	a, #0x00
   405A 67            [ 4]  109 	ld	h,a
   405B 01 15 41      [10]  110 	ld	bc,#___str_5+0
   405E 71            [ 7]  111 	ld	(hl),c
   405F 23            [ 6]  112 	inc	hl
   4060 70            [ 7]  113 	ld	(hl),b
                            114 ;src/main.c:28: firmware = cpct_disableFirmware();
   4061 D5            [11]  115 	push	de
   4062 CD EC 78      [17]  116 	call	_cpct_disableFirmware
   4065 D1            [10]  117 	pop	de
   4066 DD 75 FA      [19]  118 	ld	-6 (ix),l
   4069 DD 74 FB      [19]  119 	ld	-5 (ix),h
                            120 ;src/main.c:30: cpct_fw2hw(paletteTrains, 16);
   406C 21 E3 61      [10]  121 	ld	hl,#_paletteTrains
   406F D5            [11]  122 	push	de
   4070 01 10 00      [10]  123 	ld	bc,#0x0010
   4073 C5            [11]  124 	push	bc
   4074 E5            [11]  125 	push	hl
   4075 CD EF 74      [17]  126 	call	_cpct_fw2hw
   4078 D1            [10]  127 	pop	de
                            128 ;src/main.c:31: cpct_fw2hw(paletteMenusM2, 2);
   4079 21 F7 61      [10]  129 	ld	hl,#_paletteMenusM2
   407C D5            [11]  130 	push	de
   407D 01 02 00      [10]  131 	ld	bc,#0x0002
   4080 C5            [11]  132 	push	bc
   4081 E5            [11]  133 	push	hl
   4082 CD EF 74      [17]  134 	call	_cpct_fw2hw
   4085 D1            [10]  135 	pop	de
                            136 ;src/main.c:32: cpct_fw2hw(paletteMenusM1, 4);
   4086 21 F3 61      [10]  137 	ld	hl,#_paletteMenusM1
   4089 D5            [11]  138 	push	de
   408A 01 04 00      [10]  139 	ld	bc,#0x0004
   408D C5            [11]  140 	push	bc
   408E E5            [11]  141 	push	hl
   408F CD EF 74      [17]  142 	call	_cpct_fw2hw
   4092 D1            [10]  143 	pop	de
                            144 ;src/main.c:34: cpct_setBorder(paletteTrains[12]);
   4093 3A EF 61      [13]  145 	ld	a, (#_paletteTrains + 12)
   4096 D5            [11]  146 	push	de
   4097 57            [ 4]  147 	ld	d,a
   4098 1E 10         [ 7]  148 	ld	e,#0x10
   409A D5            [11]  149 	push	de
   409B CD 70 73      [17]  150 	call	_cpct_setPALColour
   409E CD 42 5B      [17]  151 	call	_putM2
   40A1 D1            [10]  152 	pop	de
                            153 ;src/main.c:38: do{
   40A2 DD 73 FE      [19]  154 	ld	-2 (ix),e
   40A5 DD 72 FF      [19]  155 	ld	-1 (ix),d
   40A8                     156 00105$:
                            157 ;src/main.c:39: menuChoice = drawMenu(menuMain,3);
   40A8 DD 5E FE      [19]  158 	ld	e,-2 (ix)
   40AB DD 56 FF      [19]  159 	ld	d,-1 (ix)
   40AE 3E 03         [ 7]  160 	ld	a,#0x03
   40B0 F5            [11]  161 	push	af
   40B1 33            [ 6]  162 	inc	sp
   40B2 D5            [11]  163 	push	de
   40B3 CD 48 5F      [17]  164 	call	_drawMenu
   40B6 F1            [10]  165 	pop	af
   40B7 33            [ 6]  166 	inc	sp
   40B8 55            [ 4]  167 	ld	d,l
                            168 ;src/main.c:41: if(menuChoice==0)
   40B9 7A            [ 4]  169 	ld	a,d
   40BA B7            [ 4]  170 	or	a, a
   40BB 20 08         [12]  171 	jr	NZ,00102$
                            172 ;src/main.c:43: game();
   40BD D5            [11]  173 	push	de
   40BE CD 8D 4C      [17]  174 	call	_game
   40C1 CD 42 5B      [17]  175 	call	_putM2
   40C4 D1            [10]  176 	pop	de
   40C5                     177 00102$:
                            178 ;src/main.c:48: if(menuChoice==1)
   40C5 7A            [ 4]  179 	ld	a,d
   40C6 3D            [ 4]  180 	dec	a
   40C7 20 12         [12]  181 	jr	NZ,00106$
                            182 ;src/main.c:49: drawWindow(windowCredit,3,0);
   40C9 DD 4E FC      [19]  183 	ld	c,-4 (ix)
   40CC DD 46 FD      [19]  184 	ld	b,-3 (ix)
   40CF D5            [11]  185 	push	de
   40D0 21 03 00      [10]  186 	ld	hl,#0x0003
   40D3 E5            [11]  187 	push	hl
   40D4 C5            [11]  188 	push	bc
   40D5 CD 46 60      [17]  189 	call	_drawWindow
   40D8 F1            [10]  190 	pop	af
   40D9 F1            [10]  191 	pop	af
   40DA D1            [10]  192 	pop	de
   40DB                     193 00106$:
                            194 ;src/main.c:51: while(menuChoice!=2);
   40DB 7A            [ 4]  195 	ld	a,d
   40DC D6 02         [ 7]  196 	sub	a, #0x02
   40DE 20 C8         [12]  197 	jr	NZ,00105$
                            198 ;src/main.c:53: cpct_setVideoMode(0);
   40E0 AF            [ 4]  199 	xor	a, a
   40E1 F5            [11]  200 	push	af
   40E2 33            [ 6]  201 	inc	sp
   40E3 CD 88 78      [17]  202 	call	_cpct_setVideoMode
   40E6 33            [ 6]  203 	inc	sp
                            204 ;src/main.c:54: cpct_reenableFirmware(firmware);
   40E7 DD 6E FA      [19]  205 	ld	l,-6 (ix)
   40EA DD 66 FB      [19]  206 	ld	h,-5 (ix)
   40ED CD 20 77      [17]  207 	call	_cpct_reenableFirmware
   40F0 DD F9         [10]  208 	ld	sp, ix
   40F2 DD E1         [14]  209 	pop	ix
   40F4 C9            [10]  210 	ret
   40F5                     211 ___str_0:
   40F5 4E 65 77 20 67 61   212 	.ascii "New game"
        6D 65
   40FD 00                  213 	.db 0x00
   40FE                     214 ___str_1:
   40FE 43 72 65 64 69 74   215 	.ascii "Credits"
        73
   4105 00                  216 	.db 0x00
   4106                     217 ___str_2:
   4106 51 75 69 74         218 	.ascii "Quit"
   410A 00                  219 	.db 0x00
   410B                     220 ___str_3:
   410B 52 61 69 6C 77 61   221 	.ascii "Railways"
        79 73
   4113 00                  222 	.db 0x00
   4114                     223 ___str_4:
   4114 00                  224 	.db 0x00
   4115                     225 ___str_5:
   4115 54 72 65 77 64 62   226 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   412F 00                  227 	.db 0x00
                            228 	.area _CODE
                            229 	.area _INITIALIZER
                            230 	.area _CABS (ABS)
