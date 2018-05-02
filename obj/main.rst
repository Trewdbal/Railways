                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module main
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _main
                             12 	.globl _game
                             13 	.globl _drawWindow
                             14 	.globl _drawMenu
                             15 	.globl _putM2
                             16 	.globl _cpct_setPALColour
                             17 	.globl _cpct_fw2hw
                             18 	.globl _cpct_setVideoMode
                             19 	.globl _cpct_disableFirmware
                             20 	.globl _cpct_reenableFirmware
                             21 ;--------------------------------------------------------
                             22 ; special function registers
                             23 ;--------------------------------------------------------
                             24 ;--------------------------------------------------------
                             25 ; ram data
                             26 ;--------------------------------------------------------
                             27 	.area _DATA
                             28 ;--------------------------------------------------------
                             29 ; ram data
                             30 ;--------------------------------------------------------
                             31 	.area _INITIALIZED
                             32 ;--------------------------------------------------------
                             33 ; absolute external ram data
                             34 ;--------------------------------------------------------
                             35 	.area _DABS (ABS)
                             36 ;--------------------------------------------------------
                             37 ; global & static initialisations
                             38 ;--------------------------------------------------------
                             39 	.area _HOME
                             40 	.area _GSINIT
                             41 	.area _GSFINAL
                             42 	.area _GSINIT
                             43 ;--------------------------------------------------------
                             44 ; Home
                             45 ;--------------------------------------------------------
                             46 	.area _HOME
                             47 	.area _HOME
                             48 ;--------------------------------------------------------
                             49 ; code
                             50 ;--------------------------------------------------------
                             51 	.area _CODE
                             52 ;src/main.c:11: void main(void)
                             53 ;	---------------------------------
                             54 ; Function main
                             55 ; ---------------------------------
   4000                      56 _main::
   4000 DD E5         [15]   57 	push	ix
   4002 DD 21 00 00   [14]   58 	ld	ix,#0
   4006 DD 39         [15]   59 	add	ix,sp
   4008 21 EE FF      [10]   60 	ld	hl, #-18
   400B 39            [11]   61 	add	hl, sp
   400C F9            [ 6]   62 	ld	sp, hl
                             63 ;src/main.c:16: const char *menuMain[] = { 
   400D 21 06 00      [10]   64 	ld	hl, #0x0006
   4010 39            [11]   65 	add	hl, sp
   4011 DD 75 FC      [19]   66 	ld	-4 (ix), l
   4014 DD 74 FD      [19]   67 	ld	-3 (ix), h
   4017 36 E7         [10]   68 	ld	(hl), #<(___str_0)
   4019 23            [ 6]   69 	inc	hl
   401A 36 40         [10]   70 	ld	(hl), #>(___str_0)
   401C DD 6E FC      [19]   71 	ld	l,-4 (ix)
   401F DD 66 FD      [19]   72 	ld	h,-3 (ix)
   4022 23            [ 6]   73 	inc	hl
   4023 23            [ 6]   74 	inc	hl
   4024 01 F0 40      [10]   75 	ld	bc, #___str_1+0
   4027 71            [ 7]   76 	ld	(hl), c
   4028 23            [ 6]   77 	inc	hl
   4029 70            [ 7]   78 	ld	(hl), b
   402A DD 7E FC      [19]   79 	ld	a, -4 (ix)
   402D C6 04         [ 7]   80 	add	a, #0x04
   402F 6F            [ 4]   81 	ld	l, a
   4030 DD 7E FD      [19]   82 	ld	a, -3 (ix)
   4033 CE 00         [ 7]   83 	adc	a, #0x00
   4035 67            [ 4]   84 	ld	h, a
   4036 01 F8 40      [10]   85 	ld	bc, #___str_2+0
   4039 71            [ 7]   86 	ld	(hl), c
   403A 23            [ 6]   87 	inc	hl
   403B 70            [ 7]   88 	ld	(hl), b
                             89 ;src/main.c:22: const char *windowCredit[] = { 
   403C 21 00 00      [10]   90 	ld	hl, #0x0000
   403F 39            [11]   91 	add	hl, sp
   4040 4D            [ 4]   92 	ld	c,l
   4041 44            [ 4]   93 	ld	b,h
   4042 36 FD         [10]   94 	ld	(hl), #<(___str_3)
   4044 23            [ 6]   95 	inc	hl
   4045 36 40         [10]   96 	ld	(hl), #>(___str_3)
   4047 69            [ 4]   97 	ld	l, c
   4048 60            [ 4]   98 	ld	h, b
   4049 23            [ 6]   99 	inc	hl
   404A 23            [ 6]  100 	inc	hl
   404B 11 06 41      [10]  101 	ld	de, #___str_4+0
   404E 73            [ 7]  102 	ld	(hl), e
   404F 23            [ 6]  103 	inc	hl
   4050 72            [ 7]  104 	ld	(hl), d
   4051 21 04 00      [10]  105 	ld	hl, #0x0004
   4054 09            [11]  106 	add	hl, bc
   4055 11 07 41      [10]  107 	ld	de, #___str_5+0
   4058 73            [ 7]  108 	ld	(hl), e
   4059 23            [ 6]  109 	inc	hl
   405A 72            [ 7]  110 	ld	(hl), d
                            111 ;src/main.c:28: firmware = cpct_disableFirmware();
   405B C5            [11]  112 	push	bc
   405C CD 44 64      [17]  113 	call	_cpct_disableFirmware
   405F C1            [10]  114 	pop	bc
   4060 DD 75 FA      [19]  115 	ld	-6 (ix), l
   4063 DD 74 FB      [19]  116 	ld	-5 (ix), h
                            117 ;src/main.c:30: cpct_fw2hw(paletteTrains, 16);
   4066 C5            [11]  118 	push	bc
   4067 21 10 00      [10]  119 	ld	hl, #0x0010
   406A E5            [11]  120 	push	hl
   406B 21 BE 47      [10]  121 	ld	hl, #_paletteTrains
   406E E5            [11]  122 	push	hl
   406F CD B9 61      [17]  123 	call	_cpct_fw2hw
   4072 21 02 00      [10]  124 	ld	hl, #0x0002
   4075 E5            [11]  125 	push	hl
   4076 21 D2 47      [10]  126 	ld	hl, #_paletteMenusM2
   4079 E5            [11]  127 	push	hl
   407A CD B9 61      [17]  128 	call	_cpct_fw2hw
   407D 21 04 00      [10]  129 	ld	hl, #0x0004
   4080 E5            [11]  130 	push	hl
   4081 21 CE 47      [10]  131 	ld	hl, #_paletteMenusM1
   4084 E5            [11]  132 	push	hl
   4085 CD B9 61      [17]  133 	call	_cpct_fw2hw
   4088 C1            [10]  134 	pop	bc
                            135 ;src/main.c:34: cpct_setBorder(paletteTrains[12]);
   4089 21 CA 47      [10]  136 	ld	hl, #_paletteTrains + 12
   408C 56            [ 7]  137 	ld	d, (hl)
   408D C5            [11]  138 	push	bc
   408E 1E 10         [ 7]  139 	ld	e, #0x10
   4090 D5            [11]  140 	push	de
   4091 CD 3A 60      [17]  141 	call	_cpct_setPALColour
   4094 CD 44 41      [17]  142 	call	_putM2
   4097 C1            [10]  143 	pop	bc
                            144 ;src/main.c:38: do{
   4098 DD 71 FE      [19]  145 	ld	-2 (ix), c
   409B DD 70 FF      [19]  146 	ld	-1 (ix), b
   409E                     147 00105$:
                            148 ;src/main.c:39: menuChoice = drawMenu(menuMain,3);
   409E DD 4E FC      [19]  149 	ld	c,-4 (ix)
   40A1 DD 46 FD      [19]  150 	ld	b,-3 (ix)
   40A4 3E 03         [ 7]  151 	ld	a, #0x03
   40A6 F5            [11]  152 	push	af
   40A7 33            [ 6]  153 	inc	sp
   40A8 C5            [11]  154 	push	bc
   40A9 CD 2F 45      [17]  155 	call	_drawMenu
   40AC F1            [10]  156 	pop	af
   40AD 33            [ 6]  157 	inc	sp
                            158 ;src/main.c:41: if(menuChoice==0)
   40AE 7D            [ 4]  159 	ld	a, l
   40AF B7            [ 4]  160 	or	a, a
   40B0 20 08         [12]  161 	jr	NZ,00102$
                            162 ;src/main.c:43: game();
   40B2 E5            [11]  163 	push	hl
   40B3 CD DD 52      [17]  164 	call	_game
   40B6 CD 44 41      [17]  165 	call	_putM2
   40B9 E1            [10]  166 	pop	hl
   40BA                     167 00102$:
                            168 ;src/main.c:48: if(menuChoice==1)
   40BA 7D            [ 4]  169 	ld	a, l
   40BB 3D            [ 4]  170 	dec	a
   40BC 20 12         [12]  171 	jr	NZ,00106$
                            172 ;src/main.c:49: drawWindow(windowCredit,3,0);
   40BE DD 4E FE      [19]  173 	ld	c,-2 (ix)
   40C1 DD 46 FF      [19]  174 	ld	b,-1 (ix)
   40C4 E5            [11]  175 	push	hl
   40C5 11 03 00      [10]  176 	ld	de, #0x0003
   40C8 D5            [11]  177 	push	de
   40C9 C5            [11]  178 	push	bc
   40CA CD 2D 46      [17]  179 	call	_drawWindow
   40CD F1            [10]  180 	pop	af
   40CE F1            [10]  181 	pop	af
   40CF E1            [10]  182 	pop	hl
   40D0                     183 00106$:
                            184 ;src/main.c:51: while(menuChoice!=2);
   40D0 7D            [ 4]  185 	ld	a, l
                            186 ;src/main.c:53: cpct_setVideoMode(0);
   40D1 D6 02         [ 7]  187 	sub	a,#0x02
   40D3 20 C9         [12]  188 	jr	NZ,00105$
   40D5 6F            [ 4]  189 	ld	l,a
   40D6 CD E4 63      [17]  190 	call	_cpct_setVideoMode
                            191 ;src/main.c:54: cpct_reenableFirmware(firmware);
   40D9 DD 6E FA      [19]  192 	ld	l,-6 (ix)
   40DC DD 66 FB      [19]  193 	ld	h,-5 (ix)
   40DF CD 4D 63      [17]  194 	call	_cpct_reenableFirmware
   40E2 DD F9         [10]  195 	ld	sp, ix
   40E4 DD E1         [14]  196 	pop	ix
   40E6 C9            [10]  197 	ret
   40E7                     198 ___str_0:
   40E7 4E 65 77 20 67 61   199 	.ascii "New game"
        6D 65
   40EF 00                  200 	.db 0x00
   40F0                     201 ___str_1:
   40F0 43 72 65 64 69 74   202 	.ascii "Credits"
        73
   40F7 00                  203 	.db 0x00
   40F8                     204 ___str_2:
   40F8 51 75 69 74         205 	.ascii "Quit"
   40FC 00                  206 	.db 0x00
   40FD                     207 ___str_3:
   40FD 52 61 69 6C 77 61   208 	.ascii "Railways"
        79 73
   4105 00                  209 	.db 0x00
   4106                     210 ___str_4:
   4106 00                  211 	.db 0x00
   4107                     212 ___str_5:
   4107 54 72 65 77 64 62   213 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   4121 00                  214 	.db 0x00
                            215 	.area _CODE
                            216 	.area _INITIALIZER
                            217 	.area _CABS (ABS)
