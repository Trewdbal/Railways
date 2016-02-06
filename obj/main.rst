                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 17:14:12 2016
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _drawTrain
                             14 	.globl _game
                             15 	.globl _drawWindow
                             16 	.globl _drawMenu
                             17 	.globl _putM2
                             18 	.globl _cpct_setPALColour
                             19 	.globl _cpct_fw2hw
                             20 	.globl _cpct_setVideoMode
                             21 	.globl _cpct_disableFirmware
                             22 	.globl _cpct_reenableFirmware
                             23 ;--------------------------------------------------------
                             24 ; special function registers
                             25 ;--------------------------------------------------------
                             26 ;--------------------------------------------------------
                             27 ; ram data
                             28 ;--------------------------------------------------------
                             29 	.area _DATA
                             30 ;--------------------------------------------------------
                             31 ; ram data
                             32 ;--------------------------------------------------------
                             33 	.area _INITIALIZED
                             34 ;--------------------------------------------------------
                             35 ; absolute external ram data
                             36 ;--------------------------------------------------------
                             37 	.area _DABS (ABS)
                             38 ;--------------------------------------------------------
                             39 ; global & static initialisations
                             40 ;--------------------------------------------------------
                             41 	.area _HOME
                             42 	.area _GSINIT
                             43 	.area _GSFINAL
                             44 	.area _GSINIT
                             45 ;--------------------------------------------------------
                             46 ; Home
                             47 ;--------------------------------------------------------
                             48 	.area _HOME
                             49 	.area _HOME
                             50 ;--------------------------------------------------------
                             51 ; code
                             52 ;--------------------------------------------------------
                             53 	.area _CODE
                             54 ;src/main.c:11: void drawTrain() 
                             55 ;	---------------------------------
                             56 ; Function drawTrain
                             57 ; ---------------------------------
   4000                      58 _drawTrain::
                             59 ;src/main.c:49: }
   4000 C9            [10]   60 	ret
                             61 ;src/main.c:52: void main(void)
                             62 ;	---------------------------------
                             63 ; Function main
                             64 ; ---------------------------------
   4001                      65 _main::
   4001 DD E5         [15]   66 	push	ix
   4003 DD 21 00 00   [14]   67 	ld	ix,#0
   4007 DD 39         [15]   68 	add	ix,sp
   4009 21 EE FF      [10]   69 	ld	hl,#-18
   400C 39            [11]   70 	add	hl,sp
   400D F9            [ 6]   71 	ld	sp,hl
                             72 ;src/main.c:57: const char *menuMain[] = { 
   400E 21 00 00      [10]   73 	ld	hl,#0x0000
   4011 39            [11]   74 	add	hl,sp
   4012 5D            [ 4]   75 	ld	e,l
   4013 54            [ 4]   76 	ld	d,h
   4014 36 F6         [10]   77 	ld	(hl),#<(___str_0)
   4016 23            [ 6]   78 	inc	hl
   4017 36 40         [10]   79 	ld	(hl),#>(___str_0)
   4019 6B            [ 4]   80 	ld	l, e
   401A 62            [ 4]   81 	ld	h, d
   401B 23            [ 6]   82 	inc	hl
   401C 23            [ 6]   83 	inc	hl
   401D 01 FF 40      [10]   84 	ld	bc,#___str_1+0
   4020 71            [ 7]   85 	ld	(hl),c
   4021 23            [ 6]   86 	inc	hl
   4022 70            [ 7]   87 	ld	(hl),b
   4023 21 04 00      [10]   88 	ld	hl,#0x0004
   4026 19            [11]   89 	add	hl,de
   4027 01 07 41      [10]   90 	ld	bc,#___str_2+0
   402A 71            [ 7]   91 	ld	(hl),c
   402B 23            [ 6]   92 	inc	hl
   402C 70            [ 7]   93 	ld	(hl),b
                             94 ;src/main.c:63: const char *windowCredit[] = { 
   402D 21 08 00      [10]   95 	ld	hl,#0x0008
   4030 39            [11]   96 	add	hl,sp
   4031 DD 75 FC      [19]   97 	ld	-4 (ix),l
   4034 DD 74 FD      [19]   98 	ld	-3 (ix),h
   4037 DD 6E FC      [19]   99 	ld	l,-4 (ix)
   403A DD 66 FD      [19]  100 	ld	h,-3 (ix)
   403D 36 0C         [10]  101 	ld	(hl),#<(___str_3)
   403F 23            [ 6]  102 	inc	hl
   4040 36 41         [10]  103 	ld	(hl),#>(___str_3)
   4042 DD 6E FC      [19]  104 	ld	l,-4 (ix)
   4045 DD 66 FD      [19]  105 	ld	h,-3 (ix)
   4048 23            [ 6]  106 	inc	hl
   4049 23            [ 6]  107 	inc	hl
   404A 01 15 41      [10]  108 	ld	bc,#___str_4+0
   404D 71            [ 7]  109 	ld	(hl),c
   404E 23            [ 6]  110 	inc	hl
   404F 70            [ 7]  111 	ld	(hl),b
   4050 DD 7E FC      [19]  112 	ld	a,-4 (ix)
   4053 C6 04         [ 7]  113 	add	a, #0x04
   4055 6F            [ 4]  114 	ld	l,a
   4056 DD 7E FD      [19]  115 	ld	a,-3 (ix)
   4059 CE 00         [ 7]  116 	adc	a, #0x00
   405B 67            [ 4]  117 	ld	h,a
   405C 01 16 41      [10]  118 	ld	bc,#___str_5+0
   405F 71            [ 7]  119 	ld	(hl),c
   4060 23            [ 6]  120 	inc	hl
   4061 70            [ 7]  121 	ld	(hl),b
                            122 ;src/main.c:69: firmware = cpct_disableFirmware();
   4062 D5            [11]  123 	push	de
   4063 CD 4E 65      [17]  124 	call	_cpct_disableFirmware
   4066 D1            [10]  125 	pop	de
   4067 DD 75 F4      [19]  126 	ld	-12 (ix),l
   406A DD 74 F5      [19]  127 	ld	-11 (ix),h
                            128 ;src/main.c:71: cpct_fw2hw(paletteTrains, 16);
   406D 21 3D 5C      [10]  129 	ld	hl,#_paletteTrains
   4070 D5            [11]  130 	push	de
   4071 01 10 00      [10]  131 	ld	bc,#0x0010
   4074 C5            [11]  132 	push	bc
   4075 E5            [11]  133 	push	hl
   4076 CD 56 64      [17]  134 	call	_cpct_fw2hw
   4079 D1            [10]  135 	pop	de
                            136 ;src/main.c:72: cpct_fw2hw(paletteMenusM2, 2);
   407A 21 51 5C      [10]  137 	ld	hl,#_paletteMenusM2
   407D D5            [11]  138 	push	de
   407E 01 02 00      [10]  139 	ld	bc,#0x0002
   4081 C5            [11]  140 	push	bc
   4082 E5            [11]  141 	push	hl
   4083 CD 56 64      [17]  142 	call	_cpct_fw2hw
   4086 D1            [10]  143 	pop	de
                            144 ;src/main.c:73: cpct_fw2hw(paletteMenusM1, 4);
   4087 21 4D 5C      [10]  145 	ld	hl,#_paletteMenusM1
   408A D5            [11]  146 	push	de
   408B 01 04 00      [10]  147 	ld	bc,#0x0004
   408E C5            [11]  148 	push	bc
   408F E5            [11]  149 	push	hl
   4090 CD 56 64      [17]  150 	call	_cpct_fw2hw
   4093 D1            [10]  151 	pop	de
                            152 ;src/main.c:75: cpct_setBorder(paletteTrains[12]);
   4094 3A 49 5C      [13]  153 	ld	a, (#_paletteTrains + 12)
   4097 D5            [11]  154 	push	de
   4098 57            [ 4]  155 	ld	d,a
   4099 1E 10         [ 7]  156 	ld	e,#0x10
   409B D5            [11]  157 	push	de
   409C CD F6 62      [17]  158 	call	_cpct_setPALColour
   409F CD 9E 55      [17]  159 	call	_putM2
   40A2 D1            [10]  160 	pop	de
                            161 ;src/main.c:79: do{
   40A3 DD 73 FE      [19]  162 	ld	-2 (ix),e
   40A6 DD 72 FF      [19]  163 	ld	-1 (ix),d
   40A9                     164 00105$:
                            165 ;src/main.c:80: menuChoice = drawMenu(menuMain,3);
   40A9 DD 5E FE      [19]  166 	ld	e,-2 (ix)
   40AC DD 56 FF      [19]  167 	ld	d,-1 (ix)
   40AF 3E 03         [ 7]  168 	ld	a,#0x03
   40B1 F5            [11]  169 	push	af
   40B2 33            [ 6]  170 	inc	sp
   40B3 D5            [11]  171 	push	de
   40B4 CD A4 59      [17]  172 	call	_drawMenu
   40B7 F1            [10]  173 	pop	af
   40B8 33            [ 6]  174 	inc	sp
   40B9 55            [ 4]  175 	ld	d,l
                            176 ;src/main.c:82: if(menuChoice==0)
   40BA 7A            [ 4]  177 	ld	a,d
   40BB B7            [ 4]  178 	or	a, a
   40BC 20 08         [12]  179 	jr	NZ,00102$
                            180 ;src/main.c:84: game();
   40BE D5            [11]  181 	push	de
   40BF CD 13 46      [17]  182 	call	_game
   40C2 CD 9E 55      [17]  183 	call	_putM2
   40C5 D1            [10]  184 	pop	de
   40C6                     185 00102$:
                            186 ;src/main.c:89: if(menuChoice==1)
   40C6 7A            [ 4]  187 	ld	a,d
   40C7 3D            [ 4]  188 	dec	a
   40C8 20 12         [12]  189 	jr	NZ,00106$
                            190 ;src/main.c:90: drawWindow(windowCredit,3,0);
   40CA DD 4E FC      [19]  191 	ld	c,-4 (ix)
   40CD DD 46 FD      [19]  192 	ld	b,-3 (ix)
   40D0 D5            [11]  193 	push	de
   40D1 21 03 00      [10]  194 	ld	hl,#0x0003
   40D4 E5            [11]  195 	push	hl
   40D5 C5            [11]  196 	push	bc
   40D6 CD A2 5A      [17]  197 	call	_drawWindow
   40D9 F1            [10]  198 	pop	af
   40DA F1            [10]  199 	pop	af
   40DB D1            [10]  200 	pop	de
   40DC                     201 00106$:
                            202 ;src/main.c:92: while(menuChoice!=2);
   40DC 7A            [ 4]  203 	ld	a,d
   40DD D6 02         [ 7]  204 	sub	a, #0x02
   40DF 20 C8         [12]  205 	jr	NZ,00105$
                            206 ;src/main.c:94: cpct_setVideoMode(0);
   40E1 AF            [ 4]  207 	xor	a, a
   40E2 F5            [11]  208 	push	af
   40E3 33            [ 6]  209 	inc	sp
   40E4 CD EA 64      [17]  210 	call	_cpct_setVideoMode
   40E7 33            [ 6]  211 	inc	sp
                            212 ;src/main.c:95: cpct_reenableFirmware(firmware);
   40E8 DD 6E F4      [19]  213 	ld	l,-12 (ix)
   40EB DD 66 F5      [19]  214 	ld	h,-11 (ix)
   40EE CD C4 64      [17]  215 	call	_cpct_reenableFirmware
   40F1 DD F9         [10]  216 	ld	sp, ix
   40F3 DD E1         [14]  217 	pop	ix
   40F5 C9            [10]  218 	ret
   40F6                     219 ___str_0:
   40F6 4E 65 77 20 67 61   220 	.ascii "New game"
        6D 65
   40FE 00                  221 	.db 0x00
   40FF                     222 ___str_1:
   40FF 43 72 65 64 69 74   223 	.ascii "Credits"
        73
   4106 00                  224 	.db 0x00
   4107                     225 ___str_2:
   4107 51 75 69 74         226 	.ascii "Quit"
   410B 00                  227 	.db 0x00
   410C                     228 ___str_3:
   410C 52 61 69 6C 77 61   229 	.ascii "Railways"
        79 73
   4114 00                  230 	.db 0x00
   4115                     231 ___str_4:
   4115 00                  232 	.db 0x00
   4116                     233 ___str_5:
   4116 54 72 65 77 64 62   234 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   4130 00                  235 	.db 0x00
                            236 	.area _CODE
                            237 	.area _INITIALIZER
                            238 	.area _CABS (ABS)
