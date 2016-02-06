                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 18:55:51 2016
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _drawTrain
                             14 	.globl _putM0
                             15 	.globl _cpct_getScreenPtr
                             16 	.globl _cpct_setPALColour
                             17 	.globl _cpct_fw2hw
                             18 	.globl _cpct_drawSprite
                             19 	.globl _cpct_isAnyKeyPressed_f
                             20 	.globl _cpct_scanKeyboard_f
                             21 	.globl _cpct_scanKeyboard
                             22 	.globl _cpct_memset_f64
                             23 	.globl _cpct_disableFirmware
                             24 ;--------------------------------------------------------
                             25 ; special function registers
                             26 ;--------------------------------------------------------
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _DATA
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _INITIALIZED
                             35 ;--------------------------------------------------------
                             36 ; absolute external ram data
                             37 ;--------------------------------------------------------
                             38 	.area _DABS (ABS)
                             39 ;--------------------------------------------------------
                             40 ; global & static initialisations
                             41 ;--------------------------------------------------------
                             42 	.area _HOME
                             43 	.area _GSINIT
                             44 	.area _GSFINAL
                             45 	.area _GSINIT
                             46 ;--------------------------------------------------------
                             47 ; Home
                             48 ;--------------------------------------------------------
                             49 	.area _HOME
                             50 	.area _HOME
                             51 ;--------------------------------------------------------
                             52 ; code
                             53 ;--------------------------------------------------------
                             54 	.area _CODE
                             55 ;src/main.c:15: void drawTrain() 
                             56 ;	---------------------------------
                             57 ; Function drawTrain
                             58 ; ---------------------------------
   4000                      59 _drawTrain::
                             60 ;src/main.c:21: cpct_clearScreen_f64(0);
   4000 21 00 40      [10]   61 	ld	hl,#0x4000
   4003 E5            [11]   62 	push	hl
   4004 26 00         [ 7]   63 	ld	h, #0x00
   4006 E5            [11]   64 	push	hl
   4007 26 C0         [ 7]   65 	ld	h, #0xC0
   4009 E5            [11]   66 	push	hl
   400A CD B0 68      [17]   67 	call	_cpct_memset_f64
                             68 ;src/main.c:23: pvideo_s1 = cpct_getScreenPtr(SCR_VMEM, 20, 80);
   400D 21 14 50      [10]   69 	ld	hl,#0x5014
   4010 E5            [11]   70 	push	hl
   4011 21 00 C0      [10]   71 	ld	hl,#0xC000
   4014 E5            [11]   72 	push	hl
   4015 CD BA 6A      [17]   73 	call	_cpct_getScreenPtr
                             74 ;src/main.c:25: cpct_drawSprite(lock, pvideo_s1, 20, 20);
   4018 EB            [ 4]   75 	ex	de,hl
   4019 01 AD 61      [10]   76 	ld	bc,#_lock+0
   401C 21 14 14      [10]   77 	ld	hl,#0x1414
   401F E5            [11]   78 	push	hl
   4020 D5            [11]   79 	push	de
   4021 C5            [11]   80 	push	bc
   4022 CD 36 67      [17]   81 	call	_cpct_drawSprite
                             82 ;src/main.c:27: cpct_scanKeyboard_f();
   4025 CD 80 66      [17]   83 	call	_cpct_scanKeyboard_f
                             84 ;src/main.c:29: do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed_f() );
   4028                      85 00101$:
   4028 CD DA 6A      [17]   86 	call	_cpct_scanKeyboard
   402B CD 4F 69      [17]   87 	call	_cpct_isAnyKeyPressed_f
   402E 7D            [ 4]   88 	ld	a,l
   402F B7            [ 4]   89 	or	a, a
   4030 28 F6         [12]   90 	jr	Z,00101$
   4032 C9            [10]   91 	ret
                             92 ;src/main.c:56: void main(void)
                             93 ;	---------------------------------
                             94 ; Function main
                             95 ; ---------------------------------
   4033                      96 _main::
   4033 DD E5         [15]   97 	push	ix
   4035 DD 21 00 00   [14]   98 	ld	ix,#0
   4039 DD 39         [15]   99 	add	ix,sp
   403B 21 F4 FF      [10]  100 	ld	hl,#-12
   403E 39            [11]  101 	add	hl,sp
   403F F9            [ 6]  102 	ld	sp,hl
                            103 ;src/main.c:61: const char *menuMain[] = { 
   4040 21 00 00      [10]  104 	ld	hl,#0x0000
   4043 39            [11]  105 	add	hl,sp
   4044 5D            [ 4]  106 	ld	e,l
   4045 54            [ 4]  107 	ld	d,h
   4046 36 B7         [10]  108 	ld	(hl),#<(___str_0)
   4048 23            [ 6]  109 	inc	hl
   4049 36 40         [10]  110 	ld	(hl),#>(___str_0)
   404B 6B            [ 4]  111 	ld	l, e
   404C 62            [ 4]  112 	ld	h, d
   404D 23            [ 6]  113 	inc	hl
   404E 23            [ 6]  114 	inc	hl
   404F 01 C0 40      [10]  115 	ld	bc,#___str_1+0
   4052 71            [ 7]  116 	ld	(hl),c
   4053 23            [ 6]  117 	inc	hl
   4054 70            [ 7]  118 	ld	(hl),b
   4055 21 04 00      [10]  119 	ld	hl,#0x0004
   4058 19            [11]  120 	add	hl,de
   4059 11 C8 40      [10]  121 	ld	de,#___str_2+0
   405C 73            [ 7]  122 	ld	(hl),e
   405D 23            [ 6]  123 	inc	hl
   405E 72            [ 7]  124 	ld	(hl),d
                            125 ;src/main.c:67: const char *windowCredit[] = { 
   405F 21 06 00      [10]  126 	ld	hl,#0x0006
   4062 39            [11]  127 	add	hl,sp
   4063 5D            [ 4]  128 	ld	e,l
   4064 54            [ 4]  129 	ld	d,h
   4065 36 CD         [10]  130 	ld	(hl),#<(___str_3)
   4067 23            [ 6]  131 	inc	hl
   4068 36 40         [10]  132 	ld	(hl),#>(___str_3)
   406A 6B            [ 4]  133 	ld	l, e
   406B 62            [ 4]  134 	ld	h, d
   406C 23            [ 6]  135 	inc	hl
   406D 23            [ 6]  136 	inc	hl
   406E 01 D6 40      [10]  137 	ld	bc,#___str_4+0
   4071 71            [ 7]  138 	ld	(hl),c
   4072 23            [ 6]  139 	inc	hl
   4073 70            [ 7]  140 	ld	(hl),b
   4074 21 04 00      [10]  141 	ld	hl,#0x0004
   4077 19            [11]  142 	add	hl,de
   4078 11 D7 40      [10]  143 	ld	de,#___str_5+0
   407B 73            [ 7]  144 	ld	(hl),e
   407C 23            [ 6]  145 	inc	hl
   407D 72            [ 7]  146 	ld	(hl),d
                            147 ;src/main.c:73: firmware = cpct_disableFirmware();
   407E CD BC 69      [17]  148 	call	_cpct_disableFirmware
                            149 ;src/main.c:75: cpct_fw2hw(paletteTrains, 16);
   4081 21 17 5B      [10]  150 	ld	hl,#_paletteTrains
   4084 01 10 00      [10]  151 	ld	bc,#0x0010
   4087 C5            [11]  152 	push	bc
   4088 E5            [11]  153 	push	hl
   4089 CD 4A 68      [17]  154 	call	_cpct_fw2hw
                            155 ;src/main.c:76: cpct_fw2hw(paletteMenusM2, 2);
   408C 21 2B 5B      [10]  156 	ld	hl,#_paletteMenusM2+0
   408F 01 02 00      [10]  157 	ld	bc,#0x0002
   4092 C5            [11]  158 	push	bc
   4093 E5            [11]  159 	push	hl
   4094 CD 4A 68      [17]  160 	call	_cpct_fw2hw
                            161 ;src/main.c:77: cpct_fw2hw(paletteMenusM1, 4);
   4097 21 27 5B      [10]  162 	ld	hl,#_paletteMenusM1+0
   409A 01 04 00      [10]  163 	ld	bc,#0x0004
   409D C5            [11]  164 	push	bc
   409E E5            [11]  165 	push	hl
   409F CD 4A 68      [17]  166 	call	_cpct_fw2hw
                            167 ;src/main.c:79: cpct_setBorder(paletteTrains[12]);
   40A2 3A 23 5B      [13]  168 	ld	a, (#_paletteTrains + 12)
   40A5 57            [ 4]  169 	ld	d,a
   40A6 1E 10         [ 7]  170 	ld	e,#0x10
   40A8 D5            [11]  171 	push	de
   40A9 CD EA 66      [17]  172 	call	_cpct_setPALColour
                            173 ;src/main.c:81: putM0();
   40AC CD 51 54      [17]  174 	call	_putM0
                            175 ;src/main.c:82: drawTrain();
   40AF CD 00 40      [17]  176 	call	_drawTrain
   40B2 DD F9         [10]  177 	ld	sp, ix
   40B4 DD E1         [14]  178 	pop	ix
   40B6 C9            [10]  179 	ret
   40B7                     180 ___str_0:
   40B7 4E 65 77 20 67 61   181 	.ascii "New game"
        6D 65
   40BF 00                  182 	.db 0x00
   40C0                     183 ___str_1:
   40C0 43 72 65 64 69 74   184 	.ascii "Credits"
        73
   40C7 00                  185 	.db 0x00
   40C8                     186 ___str_2:
   40C8 51 75 69 74         187 	.ascii "Quit"
   40CC 00                  188 	.db 0x00
   40CD                     189 ___str_3:
   40CD 52 61 69 6C 77 61   190 	.ascii "Railways"
        79 73
   40D5 00                  191 	.db 0x00
   40D6                     192 ___str_4:
   40D6 00                  193 	.db 0x00
   40D7                     194 ___str_5:
   40D7 54 72 65 77 64 62   195 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   40F1 00                  196 	.db 0x00
                            197 	.area _CODE
                            198 	.area _INITIALIZER
                            199 	.area _CABS (ABS)
