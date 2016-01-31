                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sun Jan 31 17:17:31 2016
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
                             15 	.globl _menuTile
                             16 	.globl _drawWorld
                             17 	.globl _drawTile
                             18 	.globl _generateWorld
                             19 	.globl _drawCursor
                             20 	.globl _drawWindow
                             21 	.globl _drawMenu
                             22 	.globl _drawMenuEntry
                             23 	.globl _EraseMenuEntry
                             24 	.globl _drawBoxM2
                             25 	.globl _drawBoxM0
                             26 	.globl _putM2
                             27 	.globl _putM1
                             28 	.globl _putM0
                             29 	.globl _strlen
                             30 	.globl _cpct_setRandomSeedUniform_u8
                             31 	.globl _cpct_getRandomUniform_u8_f
                             32 	.globl _cpct_getScreenPtr
                             33 	.globl _cpct_setPALColour
                             34 	.globl _cpct_setPalette
                             35 	.globl _cpct_fw2hw
                             36 	.globl _cpct_setVideoMode
                             37 	.globl _cpct_drawStringM2
                             38 	.globl _cpct_drawSolidBox
                             39 	.globl _cpct_drawSprite
                             40 	.globl _cpct_px2byteM1
                             41 	.globl _cpct_px2byteM0
                             42 	.globl _cpct_isKeyPressed
                             43 	.globl _cpct_scanKeyboard
                             44 	.globl _cpct_memset
                             45 	.globl _cpct_disableFirmware
                             46 	.globl _cpct_reenableFirmware
                             47 	.globl _livestock
                             48 	.globl _farm2
                             49 	.globl _farm1
                             50 	.globl _water
                             51 	.globl _dwellings3
                             52 	.globl _dwellings2
                             53 	.globl _dwellings1
                             54 	.globl _forest
                             55 	.globl _grass2
                             56 	.globl _grass1
                             57 	.globl _paletteMenusM2
                             58 	.globl _paletteMenusM1
                             59 	.globl _paletteTrains
                             60 ;--------------------------------------------------------
                             61 ; special function registers
                             62 ;--------------------------------------------------------
                             63 ;--------------------------------------------------------
                             64 ; ram data
                             65 ;--------------------------------------------------------
                             66 	.area _DATA
                             67 ;--------------------------------------------------------
                             68 ; ram data
                             69 ;--------------------------------------------------------
                             70 	.area _INITIALIZED
                             71 ;--------------------------------------------------------
                             72 ; absolute external ram data
                             73 ;--------------------------------------------------------
                             74 	.area _DABS (ABS)
                             75 ;--------------------------------------------------------
                             76 ; global & static initialisations
                             77 ;--------------------------------------------------------
                             78 	.area _HOME
                             79 	.area _GSINIT
                             80 	.area _GSFINAL
                             81 	.area _GSINIT
                             82 ;--------------------------------------------------------
                             83 ; Home
                             84 ;--------------------------------------------------------
                             85 	.area _HOME
                             86 	.area _HOME
                             87 ;--------------------------------------------------------
                             88 ; code
                             89 ;--------------------------------------------------------
                             90 	.area _CODE
                             91 ;src/includes/gui.h:1: void putM0(void)
                             92 ;	---------------------------------
                             93 ; Function putM0
                             94 ; ---------------------------------
   4000                      95 _putM0::
                             96 ;src/includes/gui.h:3: cpct_setVideoMode(0);
   4000 AF            [ 4]   97 	xor	a, a
   4001 F5            [11]   98 	push	af
   4002 33            [ 6]   99 	inc	sp
   4003 CD AB 55      [17]  100 	call	_cpct_setVideoMode
   4006 33            [ 6]  101 	inc	sp
                            102 ;src/includes/gui.h:5: cpct_setPalette(paletteTrains, 16);
   4007 21 13 40      [10]  103 	ld	hl,#_paletteTrains
   400A 01 10 00      [10]  104 	ld	bc,#0x0010
   400D C5            [11]  105 	push	bc
   400E E5            [11]  106 	push	hl
   400F CD C3 53      [17]  107 	call	_cpct_setPalette
   4012 C9            [10]  108 	ret
   4013                     109 _paletteTrains:
   4013 00                  110 	.db #0x00	; 0
   4014 1A                  111 	.db #0x1A	; 26
   4015 0D                  112 	.db #0x0D	; 13
   4016 03                  113 	.db #0x03	; 3
   4017 0F                  114 	.db #0x0F	; 15
   4018 06                  115 	.db #0x06	; 6
   4019 10                  116 	.db #0x10	; 16
   401A 09                  117 	.db #0x09	; 9
   401B 0A                  118 	.db #0x0A	; 10
   401C 14                  119 	.db #0x14	; 20
   401D 02                  120 	.db #0x02	; 2
   401E 01                  121 	.db #0x01	; 1
   401F 13                  122 	.db #0x13	; 19
   4020 18                  123 	.db #0x18	; 24
   4021 0B                  124 	.db #0x0B	; 11
   4022 19                  125 	.db #0x19	; 25
   4023                     126 _paletteMenusM1:
   4023 00                  127 	.db #0x00	; 0
   4024 0F                  128 	.db #0x0F	; 15
   4025 09                  129 	.db #0x09	; 9
   4026 16                  130 	.db #0x16	; 22
   4027                     131 _paletteMenusM2:
   4027 00                  132 	.db #0x00	; 0
   4028 14                  133 	.db #0x14	; 20
   4029                     134 _grass1:
   4029 0F                  135 	.db #0x0F	; 15
   402A 0F                  136 	.db #0x0F	; 15
   402B 0F                  137 	.db #0x0F	; 15
   402C 8F                  138 	.db #0x8F	; 143
   402D 0F                  139 	.db #0x0F	; 15
   402E 0F                  140 	.db #0x0F	; 15
   402F 0F                  141 	.db #0x0F	; 15
   4030 0F                  142 	.db #0x0F	; 15
   4031 1F                  143 	.db #0x1F	; 31
   4032 0F                  144 	.db #0x0F	; 15
   4033 2F                  145 	.db #0x2F	; 47
   4034 0F                  146 	.db #0x0F	; 15
   4035 0F                  147 	.db #0x0F	; 15
   4036 0F                  148 	.db #0x0F	; 15
   4037 0F                  149 	.db #0x0F	; 15
   4038 0F                  150 	.db #0x0F	; 15
   4039 0F                  151 	.db #0x0F	; 15
   403A 0F                  152 	.db #0x0F	; 15
   403B 0F                  153 	.db #0x0F	; 15
   403C 0F                  154 	.db #0x0F	; 15
   403D 0F                  155 	.db #0x0F	; 15
   403E 0F                  156 	.db #0x0F	; 15
   403F 0F                  157 	.db #0x0F	; 15
   4040 0F                  158 	.db #0x0F	; 15
   4041 0F                  159 	.db #0x0F	; 15
   4042 0F                  160 	.db #0x0F	; 15
   4043 0F                  161 	.db #0x0F	; 15
   4044 0F                  162 	.db #0x0F	; 15
   4045 4F                  163 	.db #0x4F	; 79	'O'
   4046 0F                  164 	.db #0x0F	; 15
   4047 0F                  165 	.db #0x0F	; 15
   4048 8F                  166 	.db #0x8F	; 143
   4049 0F                  167 	.db #0x0F	; 15
   404A 4F                  168 	.db #0x4F	; 79	'O'
   404B 0F                  169 	.db #0x0F	; 15
   404C 0F                  170 	.db #0x0F	; 15
   404D 0F                  171 	.db #0x0F	; 15
   404E 0F                  172 	.db #0x0F	; 15
   404F 0F                  173 	.db #0x0F	; 15
   4050 0F                  174 	.db #0x0F	; 15
   4051 0F                  175 	.db #0x0F	; 15
   4052 0F                  176 	.db #0x0F	; 15
   4053 0F                  177 	.db #0x0F	; 15
   4054 0F                  178 	.db #0x0F	; 15
   4055 0F                  179 	.db #0x0F	; 15
   4056 1F                  180 	.db #0x1F	; 31
   4057 0F                  181 	.db #0x0F	; 15
   4058 0F                  182 	.db #0x0F	; 15
   4059 0F                  183 	.db #0x0F	; 15
   405A 0F                  184 	.db #0x0F	; 15
   405B 0F                  185 	.db #0x0F	; 15
   405C 8F                  186 	.db #0x8F	; 143
   405D 0F                  187 	.db #0x0F	; 15
   405E 0F                  188 	.db #0x0F	; 15
   405F 0F                  189 	.db #0x0F	; 15
   4060 0F                  190 	.db #0x0F	; 15
   4061 0F                  191 	.db #0x0F	; 15
   4062 0F                  192 	.db #0x0F	; 15
   4063 0F                  193 	.db #0x0F	; 15
   4064 0F                  194 	.db #0x0F	; 15
   4065 4F                  195 	.db #0x4F	; 79	'O'
   4066 0F                  196 	.db #0x0F	; 15
   4067 8F                  197 	.db #0x8F	; 143
   4068 0F                  198 	.db #0x0F	; 15
   4069                     199 _grass2:
   4069 0F                  200 	.db #0x0F	; 15
   406A 0F                  201 	.db #0x0F	; 15
   406B 0F                  202 	.db #0x0F	; 15
   406C 0F                  203 	.db #0x0F	; 15
   406D 0F                  204 	.db #0x0F	; 15
   406E 0F                  205 	.db #0x0F	; 15
   406F 0F                  206 	.db #0x0F	; 15
   4070 2F                  207 	.db #0x2F	; 47
   4071 0F                  208 	.db #0x0F	; 15
   4072 8F                  209 	.db #0x8F	; 143
   4073 0F                  210 	.db #0x0F	; 15
   4074 0F                  211 	.db #0x0F	; 15
   4075 0F                  212 	.db #0x0F	; 15
   4076 0F                  213 	.db #0x0F	; 15
   4077 0F                  214 	.db #0x0F	; 15
   4078 0F                  215 	.db #0x0F	; 15
   4079 0F                  216 	.db #0x0F	; 15
   407A 0F                  217 	.db #0x0F	; 15
   407B 0F                  218 	.db #0x0F	; 15
   407C 0F                  219 	.db #0x0F	; 15
   407D 4F                  220 	.db #0x4F	; 79	'O'
   407E 0F                  221 	.db #0x0F	; 15
   407F 0F                  222 	.db #0x0F	; 15
   4080 0F                  223 	.db #0x0F	; 15
   4081 0F                  224 	.db #0x0F	; 15
   4082 0F                  225 	.db #0x0F	; 15
   4083 2F                  226 	.db #0x2F	; 47
   4084 0F                  227 	.db #0x0F	; 15
   4085 0F                  228 	.db #0x0F	; 15
   4086 0F                  229 	.db #0x0F	; 15
   4087 0F                  230 	.db #0x0F	; 15
   4088 0F                  231 	.db #0x0F	; 15
   4089 0F                  232 	.db #0x0F	; 15
   408A 4F                  233 	.db #0x4F	; 79	'O'
   408B 0F                  234 	.db #0x0F	; 15
   408C 0F                  235 	.db #0x0F	; 15
   408D 0F                  236 	.db #0x0F	; 15
   408E 0F                  237 	.db #0x0F	; 15
   408F 0F                  238 	.db #0x0F	; 15
   4090 0F                  239 	.db #0x0F	; 15
   4091 0F                  240 	.db #0x0F	; 15
   4092 0F                  241 	.db #0x0F	; 15
   4093 0F                  242 	.db #0x0F	; 15
   4094 0F                  243 	.db #0x0F	; 15
   4095 0F                  244 	.db #0x0F	; 15
   4096 0F                  245 	.db #0x0F	; 15
   4097 0F                  246 	.db #0x0F	; 15
   4098 8F                  247 	.db #0x8F	; 143
   4099 0F                  248 	.db #0x0F	; 15
   409A 0F                  249 	.db #0x0F	; 15
   409B 0F                  250 	.db #0x0F	; 15
   409C 0F                  251 	.db #0x0F	; 15
   409D 2F                  252 	.db #0x2F	; 47
   409E 1F                  253 	.db #0x1F	; 31
   409F 0F                  254 	.db #0x0F	; 15
   40A0 0F                  255 	.db #0x0F	; 15
   40A1 0F                  256 	.db #0x0F	; 15
   40A2 0F                  257 	.db #0x0F	; 15
   40A3 0F                  258 	.db #0x0F	; 15
   40A4 2F                  259 	.db #0x2F	; 47
   40A5 0F                  260 	.db #0x0F	; 15
   40A6 0F                  261 	.db #0x0F	; 15
   40A7 0F                  262 	.db #0x0F	; 15
   40A8 0F                  263 	.db #0x0F	; 15
   40A9                     264 _forest:
   40A9 0F                  265 	.db #0x0F	; 15
   40AA 0F                  266 	.db #0x0F	; 15
   40AB 0E                  267 	.db #0x0E	; 14
   40AC 03                  268 	.db #0x03	; 3
   40AD 0E                  269 	.db #0x0E	; 14
   40AE 03                  270 	.db #0x03	; 3
   40AF 0E                  271 	.db #0x0E	; 14
   40B0 EF                  272 	.db #0xEF	; 239
   40B1 0E                  273 	.db #0x0E	; 14
   40B2 EF                  274 	.db #0xEF	; 239
   40B3 0F                  275 	.db #0x0F	; 15
   40B4 EF                  276 	.db #0xEF	; 239
   40B5 0E                  277 	.db #0x0E	; 14
   40B6 FF                  278 	.db #0xFF	; 255
   40B7 0F                  279 	.db #0x0F	; 15
   40B8 0F                  280 	.db #0x0F	; 15
   40B9 07                  281 	.db #0x07	; 7
   40BA 6F                  282 	.db #0x6F	; 111	'o'
   40BB 0C                  283 	.db #0x0C	; 12
   40BC 0F                  284 	.db #0x0F	; 15
   40BD CF                  285 	.db #0xCF	; 207
   40BE 0F                  286 	.db #0x0F	; 15
   40BF 19                  287 	.db #0x19	; 25
   40C0 8F                  288 	.db #0x8F	; 143
   40C1 CE                  289 	.db #0xCE	; 206
   40C2 03                  290 	.db #0x03	; 3
   40C3 3B                  291 	.db #0x3B	; 59
   40C4 8F                  292 	.db #0x8F	; 143
   40C5 CE                  293 	.db #0xCE	; 206
   40C6 CF                  294 	.db #0xCF	; 207
   40C7 3B                  295 	.db #0x3B	; 59
   40C8 0F                  296 	.db #0x0F	; 15
   40C9 0E                  297 	.db #0x0E	; 14
   40CA EF                  298 	.db #0xEF	; 239
   40CB 3F                  299 	.db #0x3F	; 63
   40CC 0F                  300 	.db #0x0F	; 15
   40CD 0F                  301 	.db #0x0F	; 15
   40CE EF                  302 	.db #0xEF	; 239
   40CF 0F                  303 	.db #0x0F	; 15
   40D0 0F                  304 	.db #0x0F	; 15
   40D1 0E                  305 	.db #0x0E	; 14
   40D2 07                  306 	.db #0x07	; 7
   40D3 03                  307 	.db #0x03	; 3
   40D4 0F                  308 	.db #0x0F	; 15
   40D5 1D                  309 	.db #0x1D	; 29
   40D6 CE                  310 	.db #0xCE	; 206
   40D7 EF                  311 	.db #0xEF	; 239
   40D8 09                  312 	.db #0x09	; 9
   40D9 3B                  313 	.db #0x3B	; 59
   40DA 8F                  314 	.db #0x8F	; 143
   40DB CE                  315 	.db #0xCE	; 206
   40DC 67                  316 	.db #0x67	; 103	'g'
   40DD 3B                  317 	.db #0x3B	; 59
   40DE 8F                  318 	.db #0x8F	; 143
   40DF 1D                  319 	.db #0x1D	; 29
   40E0 EF                  320 	.db #0xEF	; 239
   40E1 2F                  321 	.db #0x2F	; 47
   40E2 0F                  322 	.db #0x0F	; 15
   40E3 1D                  323 	.db #0x1D	; 29
   40E4 EF                  324 	.db #0xEF	; 239
   40E5 0F                  325 	.db #0x0F	; 15
   40E6 0F                  326 	.db #0x0F	; 15
   40E7 0F                  327 	.db #0x0F	; 15
   40E8 CF                  328 	.db #0xCF	; 207
   40E9                     329 _dwellings1:
   40E9 0F                  330 	.db #0x0F	; 15
   40EA 0F                  331 	.db #0x0F	; 15
   40EB 0F                  332 	.db #0x0F	; 15
   40EC 0F                  333 	.db #0x0F	; 15
   40ED 08                  334 	.db #0x08	; 8
   40EE 03                  335 	.db #0x03	; 3
   40EF 0C                  336 	.db #0x0C	; 12
   40F0 07                  337 	.db #0x07	; 7
   40F1 38                  338 	.db #0x38	; 56	'8'
   40F2 E1                  339 	.db #0xE1	; 225
   40F3 1C                  340 	.db #0x1C	; 28
   40F4 C3                  341 	.db #0xC3	; 195
   40F5 3C                  342 	.db #0x3C	; 60
   40F6 E1                  343 	.db #0xE1	; 225
   40F7 1C                  344 	.db #0x1C	; 28
   40F8 C3                  345 	.db #0xC3	; 195
   40F9 0F                  346 	.db #0x0F	; 15
   40FA 0F                  347 	.db #0x0F	; 15
   40FB 1E                  348 	.db #0x1E	; 30
   40FC C3                  349 	.db #0xC3	; 195
   40FD 0F                  350 	.db #0x0F	; 15
   40FE 0F                  351 	.db #0x0F	; 15
   40FF 0F                  352 	.db #0x0F	; 15
   4100 0F                  353 	.db #0x0F	; 15
   4101 0F                  354 	.db #0x0F	; 15
   4102 0F                  355 	.db #0x0F	; 15
   4103 0E                  356 	.db #0x0E	; 14
   4104 03                  357 	.db #0x03	; 3
   4105 0F                  358 	.db #0x0F	; 15
   4106 0E                  359 	.db #0x0E	; 14
   4107 06                  360 	.db #0x06	; 6
   4108 E1                  361 	.db #0xE1	; 225
   4109 0F                  362 	.db #0x0F	; 15
   410A 0E                  363 	.db #0x0E	; 14
   410B C2                  364 	.db #0xC2	; 194
   410C E1                  365 	.db #0xE1	; 225
   410D 0F                  366 	.db #0x0F	; 15
   410E 0E                  367 	.db #0x0E	; 14
   410F C2                  368 	.db #0xC2	; 194
   4110 E1                  369 	.db #0xE1	; 225
   4111 0F                  370 	.db #0x0F	; 15
   4112 0E                  371 	.db #0x0E	; 14
   4113 C3                  372 	.db #0xC3	; 195
   4114 E1                  373 	.db #0xE1	; 225
   4115 0F                  374 	.db #0x0F	; 15
   4116 0E                  375 	.db #0x0E	; 14
   4117 C3                  376 	.db #0xC3	; 195
   4118 0F                  377 	.db #0x0F	; 15
   4119 0F                  378 	.db #0x0F	; 15
   411A 0F                  379 	.db #0x0F	; 15
   411B C3                  380 	.db #0xC3	; 195
   411C 0F                  381 	.db #0x0F	; 15
   411D 08                  382 	.db #0x08	; 8
   411E 07                  383 	.db #0x07	; 7
   411F 0F                  384 	.db #0x0F	; 15
   4120 0F                  385 	.db #0x0F	; 15
   4121 38                  386 	.db #0x38	; 56	'8'
   4122 C3                  387 	.db #0xC3	; 195
   4123 0F                  388 	.db #0x0F	; 15
   4124 0F                  389 	.db #0x0F	; 15
   4125 3C                  390 	.db #0x3C	; 60
   4126 C3                  391 	.db #0xC3	; 195
   4127 0F                  392 	.db #0x0F	; 15
   4128 0F                  393 	.db #0x0F	; 15
   4129                     394 _dwellings2:
   4129 0F                  395 	.db #0x0F	; 15
   412A 0F                  396 	.db #0x0F	; 15
   412B 0F                  397 	.db #0x0F	; 15
   412C 0F                  398 	.db #0x0F	; 15
   412D 0F                  399 	.db #0x0F	; 15
   412E 01                  400 	.db #0x01	; 1
   412F 0F                  401 	.db #0x0F	; 15
   4130 0F                  402 	.db #0x0F	; 15
   4131 0F                  403 	.db #0x0F	; 15
   4132 70                  404 	.db #0x70	; 112	'p'
   4133 0C                  405 	.db #0x0C	; 12
   4134 0F                  406 	.db #0x0F	; 15
   4135 09                  407 	.db #0x09	; 9
   4136 78                  408 	.db #0x78	; 120	'x'
   4137 1C                  409 	.db #0x1C	; 28
   4138 87                  410 	.db #0x87	; 135
   4139 38                  411 	.db #0x38	; 56	'8'
   413A 0F                  412 	.db #0x0F	; 15
   413B 1C                  413 	.db #0x1C	; 28
   413C 87                  414 	.db #0x87	; 135
   413D 38                  415 	.db #0x38	; 56	'8'
   413E 0F                  416 	.db #0x0F	; 15
   413F 1E                  417 	.db #0x1E	; 30
   4140 87                  418 	.db #0x87	; 135
   4141 3C                  419 	.db #0x3C	; 60
   4142 0F                  420 	.db #0x0F	; 15
   4143 0F                  421 	.db #0x0F	; 15
   4144 0F                  422 	.db #0x0F	; 15
   4145 0F                  423 	.db #0x0F	; 15
   4146 0F                  424 	.db #0x0F	; 15
   4147 0F                  425 	.db #0x0F	; 15
   4148 0F                  426 	.db #0x0F	; 15
   4149 0E                  427 	.db #0x0E	; 14
   414A 07                  428 	.db #0x07	; 7
   414B 0F                  429 	.db #0x0F	; 15
   414C 0F                  430 	.db #0x0F	; 15
   414D 0E                  431 	.db #0x0E	; 14
   414E C3                  432 	.db #0xC3	; 195
   414F 00                  433 	.db #0x00	; 0
   4150 07                  434 	.db #0x07	; 7
   4151 0E                  435 	.db #0x0E	; 14
   4152 C3                  436 	.db #0xC3	; 195
   4153 70                  437 	.db #0x70	; 112	'p'
   4154 C3                  438 	.db #0xC3	; 195
   4155 0F                  439 	.db #0x0F	; 15
   4156 C3                  440 	.db #0xC3	; 195
   4157 70                  441 	.db #0x70	; 112	'p'
   4158 C3                  442 	.db #0xC3	; 195
   4159 03                  443 	.db #0x03	; 3
   415A 0F                  444 	.db #0x0F	; 15
   415B 78                  445 	.db #0x78	; 120	'x'
   415C C3                  446 	.db #0xC3	; 195
   415D 61                  447 	.db #0x61	; 97	'a'
   415E 0F                  448 	.db #0x0F	; 15
   415F 0F                  449 	.db #0x0F	; 15
   4160 0F                  450 	.db #0x0F	; 15
   4161 69                  451 	.db #0x69	; 105	'i'
   4162 0F                  452 	.db #0x0F	; 15
   4163 0F                  453 	.db #0x0F	; 15
   4164 0F                  454 	.db #0x0F	; 15
   4165 0F                  455 	.db #0x0F	; 15
   4166 0F                  456 	.db #0x0F	; 15
   4167 0F                  457 	.db #0x0F	; 15
   4168 0F                  458 	.db #0x0F	; 15
   4169                     459 _dwellings3:
   4169 0F                  460 	.db #0x0F	; 15
   416A 0F                  461 	.db #0x0F	; 15
   416B 09                  462 	.db #0x09	; 9
   416C 09                  463 	.db #0x09	; 9
   416D 0F                  464 	.db #0x0F	; 15
   416E 0F                  465 	.db #0x0F	; 15
   416F 38                  466 	.db #0x38	; 56	'8'
   4170 38                  467 	.db #0x38	; 56	'8'
   4171 0E                  468 	.db #0x0E	; 14
   4172 03                  469 	.db #0x03	; 3
   4173 38                  470 	.db #0x38	; 56	'8'
   4174 38                  471 	.db #0x38	; 56	'8'
   4175 0E                  472 	.db #0x0E	; 14
   4176 E1                  473 	.db #0xE1	; 225
   4177 3C                  474 	.db #0x3C	; 60
   4178 3C                  475 	.db #0x3C	; 60
   4179 0E                  476 	.db #0x0E	; 14
   417A E1                  477 	.db #0xE1	; 225
   417B 0F                  478 	.db #0x0F	; 15
   417C 0F                  479 	.db #0x0F	; 15
   417D 0E                  480 	.db #0x0E	; 14
   417E E1                  481 	.db #0xE1	; 225
   417F 08                  482 	.db #0x08	; 8
   4180 07                  483 	.db #0x07	; 7
   4181 0F                  484 	.db #0x0F	; 15
   4182 E1                  485 	.db #0xE1	; 225
   4183 38                  486 	.db #0x38	; 56	'8'
   4184 C3                  487 	.db #0xC3	; 195
   4185 0F                  488 	.db #0x0F	; 15
   4186 0F                  489 	.db #0x0F	; 15
   4187 3C                  490 	.db #0x3C	; 60
   4188 C3                  491 	.db #0xC3	; 195
   4189 0C                  492 	.db #0x0C	; 12
   418A 0F                  493 	.db #0x0F	; 15
   418B 0F                  494 	.db #0x0F	; 15
   418C 0F                  495 	.db #0x0F	; 15
   418D 1C                  496 	.db #0x1C	; 28
   418E 87                  497 	.db #0x87	; 135
   418F 0F                  498 	.db #0x0F	; 15
   4190 0F                  499 	.db #0x0F	; 15
   4191 1E                  500 	.db #0x1E	; 30
   4192 87                  501 	.db #0x87	; 135
   4193 0C                  502 	.db #0x0C	; 12
   4194 07                  503 	.db #0x07	; 7
   4195 0F                  504 	.db #0x0F	; 15
   4196 0F                  505 	.db #0x0F	; 15
   4197 1C                  506 	.db #0x1C	; 28
   4198 C3                  507 	.db #0xC3	; 195
   4199 0F                  508 	.db #0x0F	; 15
   419A 09                  509 	.db #0x09	; 9
   419B 1C                  510 	.db #0x1C	; 28
   419C C3                  511 	.db #0xC3	; 195
   419D 0F                  512 	.db #0x0F	; 15
   419E 38                  513 	.db #0x38	; 56	'8'
   419F 1C                  514 	.db #0x1C	; 28
   41A0 C3                  515 	.db #0xC3	; 195
   41A1 0F                  516 	.db #0x0F	; 15
   41A2 3C                  517 	.db #0x3C	; 60
   41A3 1E                  518 	.db #0x1E	; 30
   41A4 C3                  519 	.db #0xC3	; 195
   41A5 0F                  520 	.db #0x0F	; 15
   41A6 0F                  521 	.db #0x0F	; 15
   41A7 0F                  522 	.db #0x0F	; 15
   41A8 0F                  523 	.db #0x0F	; 15
   41A9                     524 _water:
   41A9 5F                  525 	.db #0x5F	; 95
   41AA 5F                  526 	.db #0x5F	; 95
   41AB 5F                  527 	.db #0x5F	; 95
   41AC 5F                  528 	.db #0x5F	; 95
   41AD AF                  529 	.db #0xAF	; 175
   41AE AF                  530 	.db #0xAF	; 175
   41AF AF                  531 	.db #0xAF	; 175
   41B0 AF                  532 	.db #0xAF	; 175
   41B1 5F                  533 	.db #0x5F	; 95
   41B2 5F                  534 	.db #0x5F	; 95
   41B3 5F                  535 	.db #0x5F	; 95
   41B4 5F                  536 	.db #0x5F	; 95
   41B5 AF                  537 	.db #0xAF	; 175
   41B6 AF                  538 	.db #0xAF	; 175
   41B7 AF                  539 	.db #0xAF	; 175
   41B8 AF                  540 	.db #0xAF	; 175
   41B9 5F                  541 	.db #0x5F	; 95
   41BA 5F                  542 	.db #0x5F	; 95
   41BB 5F                  543 	.db #0x5F	; 95
   41BC 5F                  544 	.db #0x5F	; 95
   41BD AF                  545 	.db #0xAF	; 175
   41BE AF                  546 	.db #0xAF	; 175
   41BF AF                  547 	.db #0xAF	; 175
   41C0 AF                  548 	.db #0xAF	; 175
   41C1 5F                  549 	.db #0x5F	; 95
   41C2 5F                  550 	.db #0x5F	; 95
   41C3 5F                  551 	.db #0x5F	; 95
   41C4 5F                  552 	.db #0x5F	; 95
   41C5 AF                  553 	.db #0xAF	; 175
   41C6 AF                  554 	.db #0xAF	; 175
   41C7 AF                  555 	.db #0xAF	; 175
   41C8 AF                  556 	.db #0xAF	; 175
   41C9 5F                  557 	.db #0x5F	; 95
   41CA 5F                  558 	.db #0x5F	; 95
   41CB 5F                  559 	.db #0x5F	; 95
   41CC 5F                  560 	.db #0x5F	; 95
   41CD AF                  561 	.db #0xAF	; 175
   41CE AF                  562 	.db #0xAF	; 175
   41CF AF                  563 	.db #0xAF	; 175
   41D0 AF                  564 	.db #0xAF	; 175
   41D1 5F                  565 	.db #0x5F	; 95
   41D2 5F                  566 	.db #0x5F	; 95
   41D3 5F                  567 	.db #0x5F	; 95
   41D4 5F                  568 	.db #0x5F	; 95
   41D5 AF                  569 	.db #0xAF	; 175
   41D6 AF                  570 	.db #0xAF	; 175
   41D7 AF                  571 	.db #0xAF	; 175
   41D8 AF                  572 	.db #0xAF	; 175
   41D9 5F                  573 	.db #0x5F	; 95
   41DA 5F                  574 	.db #0x5F	; 95
   41DB 5F                  575 	.db #0x5F	; 95
   41DC 5F                  576 	.db #0x5F	; 95
   41DD AF                  577 	.db #0xAF	; 175
   41DE AF                  578 	.db #0xAF	; 175
   41DF AF                  579 	.db #0xAF	; 175
   41E0 AF                  580 	.db #0xAF	; 175
   41E1 5F                  581 	.db #0x5F	; 95
   41E2 5F                  582 	.db #0x5F	; 95
   41E3 5F                  583 	.db #0x5F	; 95
   41E4 5F                  584 	.db #0x5F	; 95
   41E5 AF                  585 	.db #0xAF	; 175
   41E6 AF                  586 	.db #0xAF	; 175
   41E7 AF                  587 	.db #0xAF	; 175
   41E8 AF                  588 	.db #0xAF	; 175
   41E9                     589 _farm1:
   41E9 03                  590 	.db #0x03	; 3
   41EA 0F                  591 	.db #0x0F	; 15
   41EB 78                  592 	.db #0x78	; 120	'x'
   41EC F0                  593 	.db #0xF0	; 240
   41ED 61                  594 	.db #0x61	; 97	'a'
   41EE 01                  595 	.db #0x01	; 1
   41EF 5F                  596 	.db #0x5F	; 95
   41F0 5F                  597 	.db #0x5F	; 95
   41F1 61                  598 	.db #0x61	; 97	'a'
   41F2 70                  599 	.db #0x70	; 112	'p'
   41F3 78                  600 	.db #0x78	; 120	'x'
   41F4 F0                  601 	.db #0xF0	; 240
   41F5 69                  602 	.db #0x69	; 105	'i'
   41F6 78                  603 	.db #0x78	; 120	'x'
   41F7 2F                  604 	.db #0x2F	; 47
   41F8 AF                  605 	.db #0xAF	; 175
   41F9 0F                  606 	.db #0x0F	; 15
   41FA 0F                  607 	.db #0x0F	; 15
   41FB 78                  608 	.db #0x78	; 120	'x'
   41FC F0                  609 	.db #0xF0	; 240
   41FD 7A                  610 	.db #0x7A	; 122	'z'
   41FE 7A                  611 	.db #0x7A	; 122	'z'
   41FF 5F                  612 	.db #0x5F	; 95
   4200 5F                  613 	.db #0x5F	; 95
   4201 5A                  614 	.db #0x5A	; 90	'Z'
   4202 DA                  615 	.db #0xDA	; 218
   4203 78                  616 	.db #0x78	; 120	'x'
   4204 F0                  617 	.db #0xF0	; 240
   4205 7A                  618 	.db #0x7A	; 122	'z'
   4206 7A                  619 	.db #0x7A	; 122	'z'
   4207 0F                  620 	.db #0x0F	; 15
   4208 0F                  621 	.db #0x0F	; 15
   4209 5A                  622 	.db #0x5A	; 90	'Z'
   420A DA                  623 	.db #0xDA	; 218
   420B 0F                  624 	.db #0x0F	; 15
   420C 0F                  625 	.db #0x0F	; 15
   420D 7A                  626 	.db #0x7A	; 122	'z'
   420E 7A                  627 	.db #0x7A	; 122	'z'
   420F 78                  628 	.db #0x78	; 120	'x'
   4210 F0                  629 	.db #0xF0	; 240
   4211 5A                  630 	.db #0x5A	; 90	'Z'
   4212 DA                  631 	.db #0xDA	; 218
   4213 5F                  632 	.db #0x5F	; 95
   4214 5F                  633 	.db #0x5F	; 95
   4215 7A                  634 	.db #0x7A	; 122	'z'
   4216 7A                  635 	.db #0x7A	; 122	'z'
   4217 78                  636 	.db #0x78	; 120	'x'
   4218 F0                  637 	.db #0xF0	; 240
   4219 5A                  638 	.db #0x5A	; 90	'Z'
   421A DA                  639 	.db #0xDA	; 218
   421B 2F                  640 	.db #0x2F	; 47
   421C AF                  641 	.db #0xAF	; 175
   421D 7A                  642 	.db #0x7A	; 122	'z'
   421E 7A                  643 	.db #0x7A	; 122	'z'
   421F 78                  644 	.db #0x78	; 120	'x'
   4220 F0                  645 	.db #0xF0	; 240
   4221 5A                  646 	.db #0x5A	; 90	'Z'
   4222 DA                  647 	.db #0xDA	; 218
   4223 5F                  648 	.db #0x5F	; 95
   4224 5F                  649 	.db #0x5F	; 95
   4225 7A                  650 	.db #0x7A	; 122	'z'
   4226 7A                  651 	.db #0x7A	; 122	'z'
   4227 78                  652 	.db #0x78	; 120	'x'
   4228 F0                  653 	.db #0xF0	; 240
   4229                     654 _farm2:
   4229 0F                  655 	.db #0x0F	; 15
   422A 0F                  656 	.db #0x0F	; 15
   422B 0F                  657 	.db #0x0F	; 15
   422C 0F                  658 	.db #0x0F	; 15
   422D 7F                  659 	.db #0x7F	; 127
   422E FF                  660 	.db #0xFF	; 255
   422F FF                  661 	.db #0xFF	; 255
   4230 EF                  662 	.db #0xEF	; 239
   4231 2D                  663 	.db #0x2D	; 45
   4232 A5                  664 	.db #0xA5	; 165
   4233 A5                  665 	.db #0xA5	; 165
   4234 A5                  666 	.db #0xA5	; 165
   4235 7F                  667 	.db #0x7F	; 127
   4236 FF                  668 	.db #0xFF	; 255
   4237 FF                  669 	.db #0xFF	; 255
   4238 EF                  670 	.db #0xEF	; 239
   4239 5A                  671 	.db #0x5A	; 90	'Z'
   423A 5A                  672 	.db #0x5A	; 90	'Z'
   423B 5A                  673 	.db #0x5A	; 90	'Z'
   423C 4B                  674 	.db #0x4B	; 75	'K'
   423D 7F                  675 	.db #0x7F	; 127
   423E FF                  676 	.db #0xFF	; 255
   423F FF                  677 	.db #0xFF	; 255
   4240 EF                  678 	.db #0xEF	; 239
   4241 2D                  679 	.db #0x2D	; 45
   4242 A5                  680 	.db #0xA5	; 165
   4243 A5                  681 	.db #0xA5	; 165
   4244 A5                  682 	.db #0xA5	; 165
   4245 7F                  683 	.db #0x7F	; 127
   4246 FF                  684 	.db #0xFF	; 255
   4247 FF                  685 	.db #0xFF	; 255
   4248 EF                  686 	.db #0xEF	; 239
   4249 5A                  687 	.db #0x5A	; 90	'Z'
   424A 5A                  688 	.db #0x5A	; 90	'Z'
   424B 5A                  689 	.db #0x5A	; 90	'Z'
   424C 4B                  690 	.db #0x4B	; 75	'K'
   424D 7F                  691 	.db #0x7F	; 127
   424E FF                  692 	.db #0xFF	; 255
   424F FF                  693 	.db #0xFF	; 255
   4250 EF                  694 	.db #0xEF	; 239
   4251 0F                  695 	.db #0x0F	; 15
   4252 0F                  696 	.db #0x0F	; 15
   4253 0F                  697 	.db #0x0F	; 15
   4254 0F                  698 	.db #0x0F	; 15
   4255 0E                  699 	.db #0x0E	; 14
   4256 07                  700 	.db #0x07	; 7
   4257 AF                  701 	.db #0xAF	; 175
   4258 AF                  702 	.db #0xAF	; 175
   4259 02                  703 	.db #0x02	; 2
   425A C3                  704 	.db #0xC3	; 195
   425B AF                  705 	.db #0xAF	; 175
   425C AF                  706 	.db #0xAF	; 175
   425D 60                  707 	.db #0x60	; 96
   425E C3                  708 	.db #0xC3	; 195
   425F AF                  709 	.db #0xAF	; 175
   4260 AF                  710 	.db #0xAF	; 175
   4261 69                  711 	.db #0x69	; 105	'i'
   4262 C3                  712 	.db #0xC3	; 195
   4263 AF                  713 	.db #0xAF	; 175
   4264 AF                  714 	.db #0xAF	; 175
   4265 0F                  715 	.db #0x0F	; 15
   4266 0F                  716 	.db #0x0F	; 15
   4267 0F                  717 	.db #0x0F	; 15
   4268 0F                  718 	.db #0x0F	; 15
   4269                     719 _livestock:
   4269 03                  720 	.db #0x03	; 3
   426A 0F                  721 	.db #0x0F	; 15
   426B 0F                  722 	.db #0x0F	; 15
   426C 0F                  723 	.db #0x0F	; 15
   426D 61                  724 	.db #0x61	; 97	'a'
   426E F5                  725 	.db #0xF5	; 245
   426F F5                  726 	.db #0xF5	; 245
   4270 E5                  727 	.db #0xE5	; 229
   4271 61                  728 	.db #0x61	; 97	'a'
   4272 8F                  729 	.db #0x8F	; 143
   4273 0F                  730 	.db #0x0F	; 15
   4274 2F                  731 	.db #0x2F	; 47
   4275 69                  732 	.db #0x69	; 105	'i'
   4276 87                  733 	.db #0x87	; 135
   4277 0F                  734 	.db #0x0F	; 15
   4278 AD                  735 	.db #0xAD	; 173
   4279 0F                  736 	.db #0x0F	; 15
   427A 9F                  737 	.db #0x9F	; 159
   427B 0F                  738 	.db #0x0F	; 15
   427C 2F                  739 	.db #0x2F	; 47
   427D 7D                  740 	.db #0x7D	; 125
   427E 87                  741 	.db #0x87	; 135
   427F 0F                  742 	.db #0x0F	; 15
   4280 2D                  743 	.db #0x2D	; 45
   4281 4B                  744 	.db #0x4B	; 75	'K'
   4282 0F                  745 	.db #0x0F	; 15
   4283 2F                  746 	.db #0x2F	; 47
   4284 2F                  747 	.db #0x2F	; 47
   4285 4F                  748 	.db #0x4F	; 79	'O'
   4286 0F                  749 	.db #0x0F	; 15
   4287 0F                  750 	.db #0x0F	; 15
   4288 2D                  751 	.db #0x2D	; 45
   4289 5B                  752 	.db #0x5B	; 91
   428A 1F                  753 	.db #0x1F	; 31
   428B 0F                  754 	.db #0x0F	; 15
   428C 2F                  755 	.db #0x2F	; 47
   428D 4F                  756 	.db #0x4F	; 79	'O'
   428E 0F                  757 	.db #0x0F	; 15
   428F 1F                  758 	.db #0x1F	; 31
   4290 2D                  759 	.db #0x2D	; 45
   4291 4B                  760 	.db #0x4B	; 75	'K'
   4292 0F                  761 	.db #0x0F	; 15
   4293 0F                  762 	.db #0x0F	; 15
   4294 2F                  763 	.db #0x2F	; 47
   4295 4F                  764 	.db #0x4F	; 79	'O'
   4296 4F                  765 	.db #0x4F	; 79	'O'
   4297 0F                  766 	.db #0x0F	; 15
   4298 2D                  767 	.db #0x2D	; 45
   4299 4B                  768 	.db #0x4B	; 75	'K'
   429A 0F                  769 	.db #0x0F	; 15
   429B 2F                  770 	.db #0x2F	; 47
   429C 2F                  771 	.db #0x2F	; 47
   429D 4F                  772 	.db #0x4F	; 79	'O'
   429E 0F                  773 	.db #0x0F	; 15
   429F 0F                  774 	.db #0x0F	; 15
   42A0 2D                  775 	.db #0x2D	; 45
   42A1 7A                  776 	.db #0x7A	; 122	'z'
   42A2 FA                  777 	.db #0xFA	; 250
   42A3 FA                  778 	.db #0xFA	; 250
   42A4 EB                  779 	.db #0xEB	; 235
   42A5 0F                  780 	.db #0x0F	; 15
   42A6 0F                  781 	.db #0x0F	; 15
   42A7 0F                  782 	.db #0x0F	; 15
   42A8 0F                  783 	.db #0x0F	; 15
                            784 ;src/includes/gui.h:8: void putM1(void)
                            785 ;	---------------------------------
                            786 ; Function putM1
                            787 ; ---------------------------------
   42A9                     788 _putM1::
                            789 ;src/includes/gui.h:10: cpct_setVideoMode(1);
   42A9 3E 01         [ 7]  790 	ld	a,#0x01
   42AB F5            [11]  791 	push	af
   42AC 33            [ 6]  792 	inc	sp
   42AD CD AB 55      [17]  793 	call	_cpct_setVideoMode
   42B0 33            [ 6]  794 	inc	sp
                            795 ;src/includes/gui.h:12: cpct_setPalette(paletteMenusM1, 4);
   42B1 21 23 40      [10]  796 	ld	hl,#_paletteMenusM1
   42B4 01 04 00      [10]  797 	ld	bc,#0x0004
   42B7 C5            [11]  798 	push	bc
   42B8 E5            [11]  799 	push	hl
   42B9 CD C3 53      [17]  800 	call	_cpct_setPalette
   42BC C9            [10]  801 	ret
                            802 ;src/includes/gui.h:15: void putM2(void)
                            803 ;	---------------------------------
                            804 ; Function putM2
                            805 ; ---------------------------------
   42BD                     806 _putM2::
                            807 ;src/includes/gui.h:17: cpct_setVideoMode(2);
   42BD 3E 02         [ 7]  808 	ld	a,#0x02
   42BF F5            [11]  809 	push	af
   42C0 33            [ 6]  810 	inc	sp
   42C1 CD AB 55      [17]  811 	call	_cpct_setVideoMode
   42C4 33            [ 6]  812 	inc	sp
                            813 ;src/includes/gui.h:19: cpct_setPalette(paletteMenusM2, 2);
   42C5 21 27 40      [10]  814 	ld	hl,#_paletteMenusM2
   42C8 01 02 00      [10]  815 	ld	bc,#0x0002
   42CB C5            [11]  816 	push	bc
   42CC E5            [11]  817 	push	hl
   42CD CD C3 53      [17]  818 	call	_cpct_setPalette
                            819 ;src/includes/gui.h:20: cpct_clearScreen(0b11111111);
   42D0 21 00 40      [10]  820 	ld	hl,#0x4000
   42D3 E5            [11]  821 	push	hl
   42D4 3E FF         [ 7]  822 	ld	a,#0xFF
   42D6 F5            [11]  823 	push	af
   42D7 33            [ 6]  824 	inc	sp
   42D8 26 C0         [ 7]  825 	ld	h, #0xC0
   42DA E5            [11]  826 	push	hl
   42DB CD D9 55      [17]  827 	call	_cpct_memset
   42DE C9            [10]  828 	ret
                            829 ;src/includes/gui.h:23: void drawBoxM0(int width_, int height_)
                            830 ;	---------------------------------
                            831 ; Function drawBoxM0
                            832 ; ---------------------------------
   42DF                     833 _drawBoxM0::
   42DF DD E5         [15]  834 	push	ix
   42E1 DD 21 00 00   [14]  835 	ld	ix,#0
   42E5 DD 39         [15]  836 	add	ix,sp
   42E7 21 F9 FF      [10]  837 	ld	hl,#-7
   42EA 39            [11]  838 	add	hl,sp
   42EB F9            [ 6]  839 	ld	sp,hl
                            840 ;src/includes/gui.h:28: int left = (80-width_)/2;
   42EC 3E 50         [ 7]  841 	ld	a,#0x50
   42EE DD 96 04      [19]  842 	sub	a, 4 (ix)
   42F1 57            [ 4]  843 	ld	d,a
   42F2 3E 00         [ 7]  844 	ld	a,#0x00
   42F4 DD 9E 05      [19]  845 	sbc	a, 5 (ix)
   42F7 5F            [ 4]  846 	ld	e,a
   42F8 6A            [ 4]  847 	ld	l, d
   42F9 63            [ 4]  848 	ld	h, e
   42FA CB 7B         [ 8]  849 	bit	7, e
   42FC 28 03         [12]  850 	jr	Z,00103$
   42FE 6A            [ 4]  851 	ld	l, d
   42FF 63            [ 4]  852 	ld	h, e
   4300 23            [ 6]  853 	inc	hl
   4301                     854 00103$:
   4301 DD 75 F9      [19]  855 	ld	-7 (ix),l
   4304 DD 74 FA      [19]  856 	ld	-6 (ix),h
   4307 DD CB FA 2E   [23]  857 	sra	-6 (ix)
   430B DD CB F9 1E   [23]  858 	rr	-7 (ix)
                            859 ;src/includes/gui.h:29: int top = (200-height_)/2;
   430F 3E C8         [ 7]  860 	ld	a,#0xC8
   4311 DD 96 06      [19]  861 	sub	a, 6 (ix)
   4314 4F            [ 4]  862 	ld	c,a
   4315 3E 00         [ 7]  863 	ld	a,#0x00
   4317 DD 9E 07      [19]  864 	sbc	a, 7 (ix)
   431A 47            [ 4]  865 	ld	b,a
   431B 61            [ 4]  866 	ld	h,c
   431C 50            [ 4]  867 	ld	d,b
   431D CB 78         [ 8]  868 	bit	7, b
   431F 28 03         [12]  869 	jr	Z,00104$
   4321 03            [ 6]  870 	inc	bc
   4322 61            [ 4]  871 	ld	h,c
   4323 50            [ 4]  872 	ld	d,b
   4324                     873 00104$:
   4324 5C            [ 4]  874 	ld	e, h
   4325 CB 2A         [ 8]  875 	sra	d
   4327 CB 1B         [ 8]  876 	rr	e
                            877 ;src/includes/gui.h:31: cpct_clearScreen(cpct_px2byteM0(9,9));
   4329 D5            [11]  878 	push	de
   432A 21 09 09      [10]  879 	ld	hl,#0x0909
   432D E5            [11]  880 	push	hl
   432E CD BD 55      [17]  881 	call	_cpct_px2byteM0
   4331 65            [ 4]  882 	ld	h,l
   4332 01 00 40      [10]  883 	ld	bc,#0x4000
   4335 C5            [11]  884 	push	bc
   4336 E5            [11]  885 	push	hl
   4337 33            [ 6]  886 	inc	sp
   4338 21 00 C0      [10]  887 	ld	hl,#0xC000
   433B E5            [11]  888 	push	hl
   433C CD D9 55      [17]  889 	call	_cpct_memset
   433F D1            [10]  890 	pop	de
                            891 ;src/includes/gui.h:34: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   4340 DD 73 FB      [19]  892 	ld	-5 (ix), e
   4343 63            [ 4]  893 	ld	h, e
   4344 24            [ 4]  894 	inc	h
   4345 24            [ 4]  895 	inc	h
   4346 24            [ 4]  896 	inc	h
   4347 24            [ 4]  897 	inc	h
   4348 DD 7E F9      [19]  898 	ld	a,-7 (ix)
   434B 3C            [ 4]  899 	inc	a
   434C DD 77 FE      [19]  900 	ld	-2 (ix),a
   434F D5            [11]  901 	push	de
   4350 E5            [11]  902 	push	hl
   4351 33            [ 6]  903 	inc	sp
   4352 DD 7E FE      [19]  904 	ld	a,-2 (ix)
   4355 F5            [11]  905 	push	af
   4356 33            [ 6]  906 	inc	sp
   4357 21 00 C0      [10]  907 	ld	hl,#0xC000
   435A E5            [11]  908 	push	hl
   435B CD D8 56      [17]  909 	call	_cpct_getScreenPtr
   435E D1            [10]  910 	pop	de
   435F 4D            [ 4]  911 	ld	c, l
   4360 44            [ 4]  912 	ld	b, h
                            913 ;src/includes/gui.h:35: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   4361 DD 7E 06      [19]  914 	ld	a,6 (ix)
   4364 DD 77 FC      [19]  915 	ld	-4 (ix),a
   4367 DD 7E 04      [19]  916 	ld	a,4 (ix)
   436A DD 77 FD      [19]  917 	ld	-3 (ix),a
   436D C5            [11]  918 	push	bc
   436E D5            [11]  919 	push	de
   436F 21 02 02      [10]  920 	ld	hl,#0x0202
   4372 E5            [11]  921 	push	hl
   4373 CD BD 55      [17]  922 	call	_cpct_px2byteM0
   4376 DD 75 FF      [19]  923 	ld	-1 (ix),l
   4379 D1            [10]  924 	pop	de
   437A C1            [10]  925 	pop	bc
   437B D5            [11]  926 	push	de
   437C DD 66 FC      [19]  927 	ld	h,-4 (ix)
   437F DD 6E FD      [19]  928 	ld	l,-3 (ix)
   4382 E5            [11]  929 	push	hl
   4383 DD 7E FF      [19]  930 	ld	a,-1 (ix)
   4386 F5            [11]  931 	push	af
   4387 33            [ 6]  932 	inc	sp
   4388 C5            [11]  933 	push	bc
   4389 CD 1F 56      [17]  934 	call	_cpct_drawSolidBox
   438C F1            [10]  935 	pop	af
   438D F1            [10]  936 	pop	af
   438E 33            [ 6]  937 	inc	sp
   438F D1            [10]  938 	pop	de
                            939 ;src/includes/gui.h:38: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4390 63            [ 4]  940 	ld	h,e
   4391 DD 56 F9      [19]  941 	ld	d,-7 (ix)
   4394 E5            [11]  942 	push	hl
   4395 33            [ 6]  943 	inc	sp
   4396 D5            [11]  944 	push	de
   4397 33            [ 6]  945 	inc	sp
   4398 21 00 C0      [10]  946 	ld	hl,#0xC000
   439B E5            [11]  947 	push	hl
   439C CD D8 56      [17]  948 	call	_cpct_getScreenPtr
                            949 ;src/includes/gui.h:39: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   439F E5            [11]  950 	push	hl
   43A0 21 06 06      [10]  951 	ld	hl,#0x0606
   43A3 E5            [11]  952 	push	hl
   43A4 CD BD 55      [17]  953 	call	_cpct_px2byteM0
   43A7 45            [ 4]  954 	ld	b,l
   43A8 D1            [10]  955 	pop	de
   43A9 DD 66 FC      [19]  956 	ld	h,-4 (ix)
   43AC DD 6E FD      [19]  957 	ld	l,-3 (ix)
   43AF E5            [11]  958 	push	hl
   43B0 C5            [11]  959 	push	bc
   43B1 33            [ 6]  960 	inc	sp
   43B2 D5            [11]  961 	push	de
   43B3 CD 1F 56      [17]  962 	call	_cpct_drawSolidBox
   43B6 F1            [10]  963 	pop	af
   43B7 F1            [10]  964 	pop	af
   43B8 33            [ 6]  965 	inc	sp
                            966 ;src/includes/gui.h:42: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   43B9 DD 66 FB      [19]  967 	ld	h,-5 (ix)
   43BC 24            [ 4]  968 	inc	h
   43BD 24            [ 4]  969 	inc	h
   43BE E5            [11]  970 	push	hl
   43BF 33            [ 6]  971 	inc	sp
   43C0 DD 7E FE      [19]  972 	ld	a,-2 (ix)
   43C3 F5            [11]  973 	push	af
   43C4 33            [ 6]  974 	inc	sp
   43C5 21 00 C0      [10]  975 	ld	hl,#0xC000
   43C8 E5            [11]  976 	push	hl
   43C9 CD D8 56      [17]  977 	call	_cpct_getScreenPtr
   43CC EB            [ 4]  978 	ex	de,hl
                            979 ;src/includes/gui.h:43: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   43CD DD 7E 06      [19]  980 	ld	a,6 (ix)
   43D0 C6 FC         [ 7]  981 	add	a,#0xFC
   43D2 4F            [ 4]  982 	ld	c,a
   43D3 DD 46 04      [19]  983 	ld	b,4 (ix)
   43D6 05            [ 4]  984 	dec	b
   43D7 05            [ 4]  985 	dec	b
   43D8 C5            [11]  986 	push	bc
   43D9 D5            [11]  987 	push	de
   43DA 21 00 00      [10]  988 	ld	hl,#0x0000
   43DD E5            [11]  989 	push	hl
   43DE CD BD 55      [17]  990 	call	_cpct_px2byteM0
   43E1 DD 75 FF      [19]  991 	ld	-1 (ix),l
   43E4 D1            [10]  992 	pop	de
   43E5 C1            [10]  993 	pop	bc
   43E6 79            [ 4]  994 	ld	a,c
   43E7 F5            [11]  995 	push	af
   43E8 33            [ 6]  996 	inc	sp
   43E9 C5            [11]  997 	push	bc
   43EA 33            [ 6]  998 	inc	sp
   43EB DD 7E FF      [19]  999 	ld	a,-1 (ix)
   43EE F5            [11] 1000 	push	af
   43EF 33            [ 6] 1001 	inc	sp
   43F0 D5            [11] 1002 	push	de
   43F1 CD 1F 56      [17] 1003 	call	_cpct_drawSolidBox
   43F4 DD F9         [10] 1004 	ld	sp,ix
   43F6 DD E1         [14] 1005 	pop	ix
   43F8 C9            [10] 1006 	ret
                           1007 ;src/includes/gui.h:47: void drawBoxM2(int width_, int height_)
                           1008 ;	---------------------------------
                           1009 ; Function drawBoxM2
                           1010 ; ---------------------------------
   43F9                    1011 _drawBoxM2::
   43F9 DD E5         [15] 1012 	push	ix
   43FB DD 21 00 00   [14] 1013 	ld	ix,#0
   43FF DD 39         [15] 1014 	add	ix,sp
   4401 21 FA FF      [10] 1015 	ld	hl,#-6
   4404 39            [11] 1016 	add	hl,sp
   4405 F9            [ 6] 1017 	ld	sp,hl
                           1018 ;src/includes/gui.h:52: int left = (80-width_)/2;
   4406 3E 50         [ 7] 1019 	ld	a,#0x50
   4408 DD 96 04      [19] 1020 	sub	a, 4 (ix)
   440B 4F            [ 4] 1021 	ld	c,a
   440C 3E 00         [ 7] 1022 	ld	a,#0x00
   440E DD 9E 05      [19] 1023 	sbc	a, 5 (ix)
   4411 47            [ 4] 1024 	ld	b,a
   4412 61            [ 4] 1025 	ld	h,c
   4413 50            [ 4] 1026 	ld	d,b
   4414 CB 78         [ 8] 1027 	bit	7, b
   4416 28 03         [12] 1028 	jr	Z,00103$
   4418 03            [ 6] 1029 	inc	bc
   4419 61            [ 4] 1030 	ld	h,c
   441A 50            [ 4] 1031 	ld	d,b
   441B                    1032 00103$:
   441B 5C            [ 4] 1033 	ld	e, h
   441C CB 2A         [ 8] 1034 	sra	d
   441E CB 1B         [ 8] 1035 	rr	e
                           1036 ;src/includes/gui.h:53: int top = (200-height_)/2;
   4420 3E C8         [ 7] 1037 	ld	a,#0xC8
   4422 DD 96 06      [19] 1038 	sub	a, 6 (ix)
   4425 4F            [ 4] 1039 	ld	c,a
   4426 3E 00         [ 7] 1040 	ld	a,#0x00
   4428 DD 9E 07      [19] 1041 	sbc	a, 7 (ix)
   442B 47            [ 4] 1042 	ld	b,a
   442C 61            [ 4] 1043 	ld	h,c
   442D 68            [ 4] 1044 	ld	l,b
   442E CB 78         [ 8] 1045 	bit	7, b
   4430 28 03         [12] 1046 	jr	Z,00104$
   4432 03            [ 6] 1047 	inc	bc
   4433 61            [ 4] 1048 	ld	h,c
   4434 68            [ 4] 1049 	ld	l,b
   4435                    1050 00104$:
   4435 DD 74 FA      [19] 1051 	ld	-6 (ix),h
   4438 DD 75 FB      [19] 1052 	ld	-5 (ix),l
   443B DD CB FB 2E   [23] 1053 	sra	-5 (ix)
   443F DD CB FA 1E   [23] 1054 	rr	-6 (ix)
                           1055 ;src/includes/gui.h:56: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   4443 DD 7E FA      [19] 1056 	ld	a,-6 (ix)
   4446 DD 77 FE      [19] 1057 	ld	-2 (ix), a
   4449 C6 05         [ 7] 1058 	add	a, #0x05
   444B 4F            [ 4] 1059 	ld	c,a
   444C DD 73 FF      [19] 1060 	ld	-1 (ix), e
   444F 63            [ 4] 1061 	ld	h, e
   4450 24            [ 4] 1062 	inc	h
   4451 24            [ 4] 1063 	inc	h
   4452 D5            [11] 1064 	push	de
   4453 79            [ 4] 1065 	ld	a,c
   4454 F5            [11] 1066 	push	af
   4455 33            [ 6] 1067 	inc	sp
   4456 E5            [11] 1068 	push	hl
   4457 33            [ 6] 1069 	inc	sp
   4458 21 00 C0      [10] 1070 	ld	hl,#0xC000
   445B E5            [11] 1071 	push	hl
   445C CD D8 56      [17] 1072 	call	_cpct_getScreenPtr
   445F D1            [10] 1073 	pop	de
                           1074 ;src/includes/gui.h:57: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   4460 DD 46 06      [19] 1075 	ld	b,6 (ix)
   4463 DD 4E 04      [19] 1076 	ld	c,4 (ix)
   4466 79            [ 4] 1077 	ld	a,c
   4467 C6 FF         [ 7] 1078 	add	a,#0xFF
   4469 DD 75 FC      [19] 1079 	ld	-4 (ix),l
   446C DD 74 FD      [19] 1080 	ld	-3 (ix),h
   446F C5            [11] 1081 	push	bc
   4470 D5            [11] 1082 	push	de
   4471 C5            [11] 1083 	push	bc
   4472 33            [ 6] 1084 	inc	sp
   4473 F5            [11] 1085 	push	af
   4474 33            [ 6] 1086 	inc	sp
   4475 AF            [ 4] 1087 	xor	a, a
   4476 F5            [11] 1088 	push	af
   4477 33            [ 6] 1089 	inc	sp
   4478 DD 6E FC      [19] 1090 	ld	l,-4 (ix)
   447B DD 66 FD      [19] 1091 	ld	h,-3 (ix)
   447E E5            [11] 1092 	push	hl
   447F CD 1F 56      [17] 1093 	call	_cpct_drawSolidBox
   4482 F1            [10] 1094 	pop	af
   4483 F1            [10] 1095 	pop	af
   4484 33            [ 6] 1096 	inc	sp
   4485 D1            [10] 1097 	pop	de
   4486 C1            [10] 1098 	pop	bc
                           1099 ;src/includes/gui.h:60: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4487 DD 66 FA      [19] 1100 	ld	h,-6 (ix)
   448A 53            [ 4] 1101 	ld	d,e
   448B C5            [11] 1102 	push	bc
   448C E5            [11] 1103 	push	hl
   448D 33            [ 6] 1104 	inc	sp
   448E D5            [11] 1105 	push	de
   448F 33            [ 6] 1106 	inc	sp
   4490 21 00 C0      [10] 1107 	ld	hl,#0xC000
   4493 E5            [11] 1108 	push	hl
   4494 CD D8 56      [17] 1109 	call	_cpct_getScreenPtr
   4497 C1            [10] 1110 	pop	bc
                           1111 ;src/includes/gui.h:61: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   4498 DD 7E 04      [19] 1112 	ld	a,4 (ix)
   449B EB            [ 4] 1113 	ex	de,hl
   449C C5            [11] 1114 	push	bc
   449D C5            [11] 1115 	push	bc
   449E 33            [ 6] 1116 	inc	sp
   449F 47            [ 4] 1117 	ld	b,a
   44A0 0E F8         [ 7] 1118 	ld	c,#0xF8
   44A2 C5            [11] 1119 	push	bc
   44A3 D5            [11] 1120 	push	de
   44A4 CD 1F 56      [17] 1121 	call	_cpct_drawSolidBox
   44A7 F1            [10] 1122 	pop	af
   44A8 F1            [10] 1123 	pop	af
   44A9 33            [ 6] 1124 	inc	sp
   44AA C1            [10] 1125 	pop	bc
                           1126 ;src/includes/gui.h:64: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   44AB DD 66 FE      [19] 1127 	ld	h,-2 (ix)
   44AE 24            [ 4] 1128 	inc	h
   44AF DD 56 FF      [19] 1129 	ld	d,-1 (ix)
   44B2 14            [ 4] 1130 	inc	d
   44B3 C5            [11] 1131 	push	bc
   44B4 E5            [11] 1132 	push	hl
   44B5 33            [ 6] 1133 	inc	sp
   44B6 D5            [11] 1134 	push	de
   44B7 33            [ 6] 1135 	inc	sp
   44B8 21 00 C0      [10] 1136 	ld	hl,#0xC000
   44BB E5            [11] 1137 	push	hl
   44BC CD D8 56      [17] 1138 	call	_cpct_getScreenPtr
   44BF C1            [10] 1139 	pop	bc
   44C0 5D            [ 4] 1140 	ld	e, l
   44C1 54            [ 4] 1141 	ld	d, h
                           1142 ;src/includes/gui.h:65: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   44C2 DD 66 06      [19] 1143 	ld	h,6 (ix)
   44C5 25            [ 4] 1144 	dec	h
   44C6 25            [ 4] 1145 	dec	h
   44C7 79            [ 4] 1146 	ld	a,c
   44C8 C6 FE         [ 7] 1147 	add	a,#0xFE
   44CA E5            [11] 1148 	push	hl
   44CB 33            [ 6] 1149 	inc	sp
   44CC 47            [ 4] 1150 	ld	b,a
   44CD 0E FF         [ 7] 1151 	ld	c,#0xFF
   44CF C5            [11] 1152 	push	bc
   44D0 D5            [11] 1153 	push	de
   44D1 CD 1F 56      [17] 1154 	call	_cpct_drawSolidBox
   44D4 DD F9         [10] 1155 	ld	sp,ix
   44D6 DD E1         [14] 1156 	pop	ix
   44D8 C9            [10] 1157 	ret
                           1158 ;src/includes/gui.h:68: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           1159 ;	---------------------------------
                           1160 ; Function EraseMenuEntry
                           1161 ; ---------------------------------
   44D9                    1162 _EraseMenuEntry::
   44D9 DD E5         [15] 1163 	push	ix
   44DB DD 21 00 00   [14] 1164 	ld	ix,#0
   44DF DD 39         [15] 1165 	add	ix,sp
   44E1 3B            [ 6] 1166 	dec	sp
                           1167 ;src/includes/gui.h:73: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   44E2 DD 4E 06      [19] 1168 	ld	c,6 (ix)
   44E5 06 00         [ 7] 1169 	ld	b,#0x00
   44E7 69            [ 4] 1170 	ld	l, c
   44E8 60            [ 4] 1171 	ld	h, b
   44E9 29            [11] 1172 	add	hl, hl
   44EA 29            [11] 1173 	add	hl, hl
   44EB 09            [11] 1174 	add	hl, bc
   44EC 29            [11] 1175 	add	hl, hl
   44ED 4D            [ 4] 1176 	ld	c,l
   44EE 44            [ 4] 1177 	ld	b,h
   44EF 3E C9         [ 7] 1178 	ld	a,#0xC9
   44F1 91            [ 4] 1179 	sub	a, c
   44F2 57            [ 4] 1180 	ld	d,a
   44F3 3E 00         [ 7] 1181 	ld	a,#0x00
   44F5 98            [ 4] 1182 	sbc	a, b
   44F6 5F            [ 4] 1183 	ld	e,a
   44F7 6A            [ 4] 1184 	ld	l, d
   44F8 63            [ 4] 1185 	ld	h, e
   44F9 CB 7B         [ 8] 1186 	bit	7, e
   44FB 28 03         [12] 1187 	jr	Z,00103$
   44FD 6A            [ 4] 1188 	ld	l, d
   44FE 63            [ 4] 1189 	ld	h, e
   44FF 23            [ 6] 1190 	inc	hl
   4500                    1191 00103$:
   4500 CB 2C         [ 8] 1192 	sra	h
   4502 CB 1D         [ 8] 1193 	rr	l
   4504 55            [ 4] 1194 	ld	d,l
   4505 DD 7E 07      [19] 1195 	ld	a,7 (ix)
   4508 5F            [ 4] 1196 	ld	e,a
   4509 87            [ 4] 1197 	add	a, a
   450A 87            [ 4] 1198 	add	a, a
   450B 83            [ 4] 1199 	add	a, e
   450C 87            [ 4] 1200 	add	a, a
   450D DD 77 FF      [19] 1201 	ld	-1 (ix),a
   4510 7A            [ 4] 1202 	ld	a,d
   4511 DD 86 FF      [19] 1203 	add	a, -1 (ix)
   4514 C5            [11] 1204 	push	bc
   4515 57            [ 4] 1205 	ld	d,a
   4516 1E 20         [ 7] 1206 	ld	e,#0x20
   4518 D5            [11] 1207 	push	de
   4519 21 00 C0      [10] 1208 	ld	hl,#0xC000
   451C E5            [11] 1209 	push	hl
   451D CD D8 56      [17] 1210 	call	_cpct_getScreenPtr
   4520 C1            [10] 1211 	pop	bc
                           1212 ;src/includes/gui.h:74: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   4521 EB            [ 4] 1213 	ex	de,hl
   4522 C5            [11] 1214 	push	bc
   4523 21 11 0A      [10] 1215 	ld	hl,#0x0A11
   4526 E5            [11] 1216 	push	hl
   4527 3E FF         [ 7] 1217 	ld	a,#0xFF
   4529 F5            [11] 1218 	push	af
   452A 33            [ 6] 1219 	inc	sp
   452B D5            [11] 1220 	push	de
   452C CD 1F 56      [17] 1221 	call	_cpct_drawSolidBox
   452F F1            [10] 1222 	pop	af
   4530 F1            [10] 1223 	pop	af
   4531 33            [ 6] 1224 	inc	sp
   4532 C1            [10] 1225 	pop	bc
                           1226 ;src/includes/gui.h:77: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   4533 3E CA         [ 7] 1227 	ld	a,#0xCA
   4535 91            [ 4] 1228 	sub	a, c
   4536 57            [ 4] 1229 	ld	d,a
   4537 3E 00         [ 7] 1230 	ld	a,#0x00
   4539 98            [ 4] 1231 	sbc	a, b
   453A 5F            [ 4] 1232 	ld	e,a
   453B 6A            [ 4] 1233 	ld	l, d
   453C 63            [ 4] 1234 	ld	h, e
   453D CB 7B         [ 8] 1235 	bit	7, e
   453F 28 03         [12] 1236 	jr	Z,00104$
   4541 6A            [ 4] 1237 	ld	l, d
   4542 63            [ 4] 1238 	ld	h, e
   4543 23            [ 6] 1239 	inc	hl
   4544                    1240 00104$:
   4544 CB 2C         [ 8] 1241 	sra	h
   4546 CB 1D         [ 8] 1242 	rr	l
   4548 7D            [ 4] 1243 	ld	a,l
   4549 DD 86 FF      [19] 1244 	add	a, -1 (ix)
   454C 4F            [ 4] 1245 	ld	c,a
   454D DD 6E 07      [19] 1246 	ld	l,7 (ix)
   4550 26 00         [ 7] 1247 	ld	h,#0x00
   4552 29            [11] 1248 	add	hl, hl
   4553 EB            [ 4] 1249 	ex	de,hl
   4554 DD 6E 04      [19] 1250 	ld	l,4 (ix)
   4557 DD 66 05      [19] 1251 	ld	h,5 (ix)
   455A 19            [11] 1252 	add	hl,de
   455B E5            [11] 1253 	push	hl
   455C 5E            [ 7] 1254 	ld	e,(hl)
   455D 23            [ 6] 1255 	inc	hl
   455E 56            [ 7] 1256 	ld	d,(hl)
   455F C5            [11] 1257 	push	bc
   4560 D5            [11] 1258 	push	de
   4561 CD 00 56      [17] 1259 	call	_strlen
   4564 F1            [10] 1260 	pop	af
   4565 EB            [ 4] 1261 	ex	de,hl
   4566 C1            [10] 1262 	pop	bc
   4567 E1            [10] 1263 	pop	hl
   4568 3E 52         [ 7] 1264 	ld	a,#0x52
   456A 93            [ 4] 1265 	sub	a, e
   456B 5F            [ 4] 1266 	ld	e,a
   456C 3E 00         [ 7] 1267 	ld	a,#0x00
   456E 9A            [ 4] 1268 	sbc	a, d
   456F 57            [ 4] 1269 	ld	d,a
   4570 CB 3A         [ 8] 1270 	srl	d
   4572 CB 1B         [ 8] 1271 	rr	e
   4574 E5            [11] 1272 	push	hl
   4575 51            [ 4] 1273 	ld	d, c
   4576 D5            [11] 1274 	push	de
   4577 01 00 C0      [10] 1275 	ld	bc,#0xC000
   457A C5            [11] 1276 	push	bc
   457B CD D8 56      [17] 1277 	call	_cpct_getScreenPtr
   457E 4D            [ 4] 1278 	ld	c,l
   457F 44            [ 4] 1279 	ld	b,h
   4580 E1            [10] 1280 	pop	hl
                           1281 ;src/includes/gui.h:78: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   4581 5E            [ 7] 1282 	ld	e,(hl)
   4582 23            [ 6] 1283 	inc	hl
   4583 56            [ 7] 1284 	ld	d,(hl)
   4584 AF            [ 4] 1285 	xor	a, a
   4585 F5            [11] 1286 	push	af
   4586 33            [ 6] 1287 	inc	sp
   4587 C5            [11] 1288 	push	bc
   4588 D5            [11] 1289 	push	de
   4589 CD F2 53      [17] 1290 	call	_cpct_drawStringM2
   458C F1            [10] 1291 	pop	af
   458D F1            [10] 1292 	pop	af
   458E 33            [ 6] 1293 	inc	sp
   458F 33            [ 6] 1294 	inc	sp
   4590 DD E1         [14] 1295 	pop	ix
   4592 C9            [10] 1296 	ret
                           1297 ;src/includes/gui.h:81: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           1298 ;	---------------------------------
                           1299 ; Function drawMenuEntry
                           1300 ; ---------------------------------
   4593                    1301 _drawMenuEntry::
   4593 DD E5         [15] 1302 	push	ix
   4595 DD 21 00 00   [14] 1303 	ld	ix,#0
   4599 DD 39         [15] 1304 	add	ix,sp
   459B 21 FA FF      [10] 1305 	ld	hl,#-6
   459E 39            [11] 1306 	add	hl,sp
   459F F9            [ 6] 1307 	ld	sp,hl
                           1308 ;src/includes/gui.h:89: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   45A0 DD 4E 06      [19] 1309 	ld	c,6 (ix)
   45A3 06 00         [ 7] 1310 	ld	b,#0x00
   45A5 69            [ 4] 1311 	ld	l, c
   45A6 60            [ 4] 1312 	ld	h, b
   45A7 29            [11] 1313 	add	hl, hl
   45A8 29            [11] 1314 	add	hl, hl
   45A9 09            [11] 1315 	add	hl, bc
   45AA 29            [11] 1316 	add	hl, hl
   45AB 4D            [ 4] 1317 	ld	c,l
   45AC 44            [ 4] 1318 	ld	b,h
   45AD 3E C9         [ 7] 1319 	ld	a,#0xC9
   45AF 91            [ 4] 1320 	sub	a, c
   45B0 57            [ 4] 1321 	ld	d,a
   45B1 3E 00         [ 7] 1322 	ld	a,#0x00
   45B3 98            [ 4] 1323 	sbc	a, b
   45B4 5F            [ 4] 1324 	ld	e,a
   45B5 6A            [ 4] 1325 	ld	l, d
   45B6 63            [ 4] 1326 	ld	h, e
   45B7 CB 7B         [ 8] 1327 	bit	7, e
   45B9 28 03         [12] 1328 	jr	Z,00114$
   45BB 6A            [ 4] 1329 	ld	l, d
   45BC 63            [ 4] 1330 	ld	h, e
   45BD 23            [ 6] 1331 	inc	hl
   45BE                    1332 00114$:
   45BE CB 2C         [ 8] 1333 	sra	h
   45C0 CB 1D         [ 8] 1334 	rr	l
   45C2 55            [ 4] 1335 	ld	d,l
   45C3 DD 7E 07      [19] 1336 	ld	a,7 (ix)
   45C6 5F            [ 4] 1337 	ld	e,a
   45C7 87            [ 4] 1338 	add	a, a
   45C8 87            [ 4] 1339 	add	a, a
   45C9 83            [ 4] 1340 	add	a, e
   45CA 87            [ 4] 1341 	add	a, a
   45CB 82            [ 4] 1342 	add	a,d
   45CC C5            [11] 1343 	push	bc
   45CD 57            [ 4] 1344 	ld	d,a
   45CE 1E 20         [ 7] 1345 	ld	e,#0x20
   45D0 D5            [11] 1346 	push	de
   45D1 21 00 C0      [10] 1347 	ld	hl,#0xC000
   45D4 E5            [11] 1348 	push	hl
   45D5 CD D8 56      [17] 1349 	call	_cpct_getScreenPtr
   45D8 C1            [10] 1350 	pop	bc
                           1351 ;src/includes/gui.h:90: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   45D9 EB            [ 4] 1352 	ex	de,hl
   45DA C5            [11] 1353 	push	bc
   45DB 21 11 0A      [10] 1354 	ld	hl,#0x0A11
   45DE E5            [11] 1355 	push	hl
   45DF AF            [ 4] 1356 	xor	a, a
   45E0 F5            [11] 1357 	push	af
   45E1 33            [ 6] 1358 	inc	sp
   45E2 D5            [11] 1359 	push	de
   45E3 CD 1F 56      [17] 1360 	call	_cpct_drawSolidBox
   45E6 F1            [10] 1361 	pop	af
   45E7 F1            [10] 1362 	pop	af
   45E8 33            [ 6] 1363 	inc	sp
   45E9 C1            [10] 1364 	pop	bc
                           1365 ;src/includes/gui.h:93: for(i=0; i<14000; i++) {}
   45EA 21 B0 36      [10] 1366 	ld	hl,#0x36B0
   45ED                    1367 00108$:
   45ED 2B            [ 6] 1368 	dec	hl
   45EE 7C            [ 4] 1369 	ld	a,h
   45EF B5            [ 4] 1370 	or	a,l
   45F0 20 FB         [12] 1371 	jr	NZ,00108$
                           1372 ;src/includes/gui.h:96: for(i=0; i<nbEntry; i++)
   45F2 3E CA         [ 7] 1373 	ld	a,#0xCA
   45F4 91            [ 4] 1374 	sub	a, c
   45F5 DD 77 FC      [19] 1375 	ld	-4 (ix),a
   45F8 3E 00         [ 7] 1376 	ld	a,#0x00
   45FA 98            [ 4] 1377 	sbc	a, b
   45FB DD 77 FD      [19] 1378 	ld	-3 (ix), a
   45FE 07            [ 4] 1379 	rlca
   45FF E6 01         [ 7] 1380 	and	a,#0x01
   4601 5F            [ 4] 1381 	ld	e,a
   4602 21 00 00      [10] 1382 	ld	hl,#0x0000
   4605 E3            [19] 1383 	ex	(sp), hl
   4606                    1384 00110$:
   4606 DD 66 06      [19] 1385 	ld	h,6 (ix)
   4609 2E 00         [ 7] 1386 	ld	l,#0x00
   460B DD 7E FA      [19] 1387 	ld	a,-6 (ix)
   460E 94            [ 4] 1388 	sub	a, h
   460F DD 7E FB      [19] 1389 	ld	a,-5 (ix)
   4612 9D            [ 4] 1390 	sbc	a, l
   4613 E2 18 46      [10] 1391 	jp	PO, 00146$
   4616 EE 80         [ 7] 1392 	xor	a, #0x80
   4618                    1393 00146$:
   4618 F2 BE 46      [10] 1394 	jp	P,00112$
                           1395 ;src/includes/gui.h:98: if(i==iSelect)
   461B DD 56 07      [19] 1396 	ld	d,7 (ix)
   461E 06 00         [ 7] 1397 	ld	b,#0x00
   4620 DD 7E FA      [19] 1398 	ld	a,-6 (ix)
   4623 92            [ 4] 1399 	sub	a, d
   4624 20 0A         [12] 1400 	jr	NZ,00103$
   4626 DD 7E FB      [19] 1401 	ld	a,-5 (ix)
   4629 90            [ 4] 1402 	sub	a, b
   462A 20 04         [12] 1403 	jr	NZ,00103$
                           1404 ;src/includes/gui.h:99: penSelected = 1;
   462C 0E 01         [ 7] 1405 	ld	c,#0x01
   462E 18 02         [12] 1406 	jr	00104$
   4630                    1407 00103$:
                           1408 ;src/includes/gui.h:101: penSelected = 0;
   4630 0E 00         [ 7] 1409 	ld	c,#0x00
   4632                    1410 00104$:
                           1411 ;src/includes/gui.h:103: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   4632 DD 6E FC      [19] 1412 	ld	l,-4 (ix)
   4635 DD 66 FD      [19] 1413 	ld	h,-3 (ix)
   4638 7B            [ 4] 1414 	ld	a,e
   4639 B7            [ 4] 1415 	or	a, a
   463A 28 07         [12] 1416 	jr	Z,00115$
   463C DD 6E FC      [19] 1417 	ld	l,-4 (ix)
   463F DD 66 FD      [19] 1418 	ld	h,-3 (ix)
   4642 23            [ 6] 1419 	inc	hl
   4643                    1420 00115$:
   4643 CB 2C         [ 8] 1421 	sra	h
   4645 CB 1D         [ 8] 1422 	rr	l
   4647 45            [ 4] 1423 	ld	b,l
   4648 DD 6E FA      [19] 1424 	ld	l,-6 (ix)
   464B D5            [11] 1425 	push	de
   464C 5D            [ 4] 1426 	ld	e,l
   464D 29            [11] 1427 	add	hl, hl
   464E 29            [11] 1428 	add	hl, hl
   464F 19            [11] 1429 	add	hl, de
   4650 29            [11] 1430 	add	hl, hl
   4651 D1            [10] 1431 	pop	de
   4652 78            [ 4] 1432 	ld	a,b
   4653 85            [ 4] 1433 	add	a, l
   4654 DD 77 FF      [19] 1434 	ld	-1 (ix),a
   4657 DD 56 FA      [19] 1435 	ld	d,-6 (ix)
   465A DD 46 FB      [19] 1436 	ld	b,-5 (ix)
   465D CB 22         [ 8] 1437 	sla	d
   465F CB 10         [ 8] 1438 	rl	b
   4661 DD 7E 04      [19] 1439 	ld	a,4 (ix)
   4664 82            [ 4] 1440 	add	a, d
   4665 57            [ 4] 1441 	ld	d,a
   4666 DD 7E 05      [19] 1442 	ld	a,5 (ix)
   4669 88            [ 4] 1443 	adc	a, b
   466A 47            [ 4] 1444 	ld	b,a
   466B 6A            [ 4] 1445 	ld	l, d
   466C 60            [ 4] 1446 	ld	h, b
   466D 7E            [ 7] 1447 	ld	a, (hl)
   466E 23            [ 6] 1448 	inc	hl
   466F 66            [ 7] 1449 	ld	h,(hl)
   4670 6F            [ 4] 1450 	ld	l,a
   4671 C5            [11] 1451 	push	bc
   4672 D5            [11] 1452 	push	de
   4673 E5            [11] 1453 	push	hl
   4674 CD 00 56      [17] 1454 	call	_strlen
   4677 F1            [10] 1455 	pop	af
   4678 D1            [10] 1456 	pop	de
   4679 C1            [10] 1457 	pop	bc
   467A 3E 52         [ 7] 1458 	ld	a,#0x52
   467C 95            [ 4] 1459 	sub	a, l
   467D 6F            [ 4] 1460 	ld	l,a
   467E 3E 00         [ 7] 1461 	ld	a,#0x00
   4680 9C            [ 4] 1462 	sbc	a, h
   4681 67            [ 4] 1463 	ld	h,a
   4682 CB 3C         [ 8] 1464 	srl	h
   4684 CB 1D         [ 8] 1465 	rr	l
   4686 DD 75 FE      [19] 1466 	ld	-2 (ix),l
   4689 C5            [11] 1467 	push	bc
   468A D5            [11] 1468 	push	de
   468B DD 66 FF      [19] 1469 	ld	h,-1 (ix)
   468E DD 6E FE      [19] 1470 	ld	l,-2 (ix)
   4691 E5            [11] 1471 	push	hl
   4692 21 00 C0      [10] 1472 	ld	hl,#0xC000
   4695 E5            [11] 1473 	push	hl
   4696 CD D8 56      [17] 1474 	call	_cpct_getScreenPtr
   4699 D1            [10] 1475 	pop	de
   469A C1            [10] 1476 	pop	bc
   469B E5            [11] 1477 	push	hl
   469C FD E1         [14] 1478 	pop	iy
                           1479 ;src/includes/gui.h:104: cpct_drawStringM2 (menu[i], p_video, penSelected);
   469E 6A            [ 4] 1480 	ld	l, d
   469F 60            [ 4] 1481 	ld	h, b
   46A0 7E            [ 7] 1482 	ld	a, (hl)
   46A1 23            [ 6] 1483 	inc	hl
   46A2 66            [ 7] 1484 	ld	h,(hl)
   46A3 6F            [ 4] 1485 	ld	l,a
   46A4 D5            [11] 1486 	push	de
   46A5 79            [ 4] 1487 	ld	a,c
   46A6 F5            [11] 1488 	push	af
   46A7 33            [ 6] 1489 	inc	sp
   46A8 FD E5         [15] 1490 	push	iy
   46AA E5            [11] 1491 	push	hl
   46AB CD F2 53      [17] 1492 	call	_cpct_drawStringM2
   46AE F1            [10] 1493 	pop	af
   46AF F1            [10] 1494 	pop	af
   46B0 33            [ 6] 1495 	inc	sp
   46B1 D1            [10] 1496 	pop	de
                           1497 ;src/includes/gui.h:96: for(i=0; i<nbEntry; i++)
   46B2 DD 34 FA      [23] 1498 	inc	-6 (ix)
   46B5 C2 06 46      [10] 1499 	jp	NZ,00110$
   46B8 DD 34 FB      [23] 1500 	inc	-5 (ix)
   46BB C3 06 46      [10] 1501 	jp	00110$
   46BE                    1502 00112$:
   46BE DD F9         [10] 1503 	ld	sp, ix
   46C0 DD E1         [14] 1504 	pop	ix
   46C2 C9            [10] 1505 	ret
                           1506 ;src/includes/gui.h:108: u8 drawMenu(char **menu, u8 nbEntry)
                           1507 ;	---------------------------------
                           1508 ; Function drawMenu
                           1509 ; ---------------------------------
   46C3                    1510 _drawMenu::
   46C3 DD E5         [15] 1511 	push	ix
   46C5 DD 21 00 00   [14] 1512 	ld	ix,#0
   46C9 DD 39         [15] 1513 	add	ix,sp
   46CB F5            [11] 1514 	push	af
                           1515 ;src/includes/gui.h:111: u8 iSelect=0;
   46CC 06 00         [ 7] 1516 	ld	b,#0x00
                           1517 ;src/includes/gui.h:113: drawBoxM2(30,nbEntry*12);
   46CE DD 5E 06      [19] 1518 	ld	e,6 (ix)
   46D1 16 00         [ 7] 1519 	ld	d,#0x00
   46D3 6B            [ 4] 1520 	ld	l, e
   46D4 62            [ 4] 1521 	ld	h, d
   46D5 29            [11] 1522 	add	hl, hl
   46D6 19            [11] 1523 	add	hl, de
   46D7 29            [11] 1524 	add	hl, hl
   46D8 29            [11] 1525 	add	hl, hl
   46D9 C5            [11] 1526 	push	bc
   46DA E5            [11] 1527 	push	hl
   46DB 21 1E 00      [10] 1528 	ld	hl,#0x001E
   46DE E5            [11] 1529 	push	hl
   46DF CD F9 43      [17] 1530 	call	_drawBoxM2
   46E2 F1            [10] 1531 	pop	af
   46E3 F1            [10] 1532 	pop	af
   46E4 AF            [ 4] 1533 	xor	a, a
   46E5 F5            [11] 1534 	push	af
   46E6 33            [ 6] 1535 	inc	sp
   46E7 DD 7E 06      [19] 1536 	ld	a,6 (ix)
   46EA F5            [11] 1537 	push	af
   46EB 33            [ 6] 1538 	inc	sp
   46EC DD 6E 04      [19] 1539 	ld	l,4 (ix)
   46EF DD 66 05      [19] 1540 	ld	h,5 (ix)
   46F2 E5            [11] 1541 	push	hl
   46F3 CD 93 45      [17] 1542 	call	_drawMenuEntry
   46F6 F1            [10] 1543 	pop	af
   46F7 F1            [10] 1544 	pop	af
   46F8 C1            [10] 1545 	pop	bc
                           1546 ;src/includes/gui.h:117: do{
   46F9 DD 4E 06      [19] 1547 	ld	c,6 (ix)
   46FC 0D            [ 4] 1548 	dec	c
   46FD                    1549 00111$:
                           1550 ;src/includes/gui.h:118: cpct_scanKeyboard(); 
   46FD C5            [11] 1551 	push	bc
   46FE CD F8 56      [17] 1552 	call	_cpct_scanKeyboard
   4701 21 00 01      [10] 1553 	ld	hl,#0x0100
   4704 CD DA 53      [17] 1554 	call	_cpct_isKeyPressed
   4707 7D            [ 4] 1555 	ld	a,l
   4708 C1            [10] 1556 	pop	bc
   4709 B7            [ 4] 1557 	or	a, a
   470A 28 32         [12] 1558 	jr	Z,00105$
                           1559 ;src/includes/gui.h:122: EraseMenuEntry(menu, nbEntry, iSelect);
   470C C5            [11] 1560 	push	bc
   470D C5            [11] 1561 	push	bc
   470E 33            [ 6] 1562 	inc	sp
   470F DD 7E 06      [19] 1563 	ld	a,6 (ix)
   4712 F5            [11] 1564 	push	af
   4713 33            [ 6] 1565 	inc	sp
   4714 DD 6E 04      [19] 1566 	ld	l,4 (ix)
   4717 DD 66 05      [19] 1567 	ld	h,5 (ix)
   471A E5            [11] 1568 	push	hl
   471B CD D9 44      [17] 1569 	call	_EraseMenuEntry
   471E F1            [10] 1570 	pop	af
   471F F1            [10] 1571 	pop	af
   4720 C1            [10] 1572 	pop	bc
                           1573 ;src/includes/gui.h:124: if(iSelect ==0)
   4721 78            [ 4] 1574 	ld	a,b
   4722 B7            [ 4] 1575 	or	a, a
   4723 20 03         [12] 1576 	jr	NZ,00102$
                           1577 ;src/includes/gui.h:125: iSelect = nbEntry-1;
   4725 41            [ 4] 1578 	ld	b,c
   4726 18 01         [12] 1579 	jr	00103$
   4728                    1580 00102$:
                           1581 ;src/includes/gui.h:127: iSelect--;
   4728 05            [ 4] 1582 	dec	b
   4729                    1583 00103$:
                           1584 ;src/includes/gui.h:129: drawMenuEntry(menu, nbEntry, iSelect);
   4729 C5            [11] 1585 	push	bc
   472A C5            [11] 1586 	push	bc
   472B 33            [ 6] 1587 	inc	sp
   472C DD 7E 06      [19] 1588 	ld	a,6 (ix)
   472F F5            [11] 1589 	push	af
   4730 33            [ 6] 1590 	inc	sp
   4731 DD 6E 04      [19] 1591 	ld	l,4 (ix)
   4734 DD 66 05      [19] 1592 	ld	h,5 (ix)
   4737 E5            [11] 1593 	push	hl
   4738 CD 93 45      [17] 1594 	call	_drawMenuEntry
   473B F1            [10] 1595 	pop	af
   473C F1            [10] 1596 	pop	af
   473D C1            [10] 1597 	pop	bc
   473E                    1598 00105$:
                           1599 ;src/includes/gui.h:132: if ( cpct_isKeyPressed(Key_CursorDown) )
   473E C5            [11] 1600 	push	bc
   473F 21 00 04      [10] 1601 	ld	hl,#0x0400
   4742 CD DA 53      [17] 1602 	call	_cpct_isKeyPressed
   4745 5D            [ 4] 1603 	ld	e,l
   4746 C1            [10] 1604 	pop	bc
   4747 7B            [ 4] 1605 	ld	a,e
   4748 B7            [ 4] 1606 	or	a, a
   4749 28 48         [12] 1607 	jr	Z,00112$
                           1608 ;src/includes/gui.h:134: EraseMenuEntry(menu, nbEntry, iSelect);
   474B C5            [11] 1609 	push	bc
   474C C5            [11] 1610 	push	bc
   474D 33            [ 6] 1611 	inc	sp
   474E DD 7E 06      [19] 1612 	ld	a,6 (ix)
   4751 F5            [11] 1613 	push	af
   4752 33            [ 6] 1614 	inc	sp
   4753 DD 6E 04      [19] 1615 	ld	l,4 (ix)
   4756 DD 66 05      [19] 1616 	ld	h,5 (ix)
   4759 E5            [11] 1617 	push	hl
   475A CD D9 44      [17] 1618 	call	_EraseMenuEntry
   475D F1            [10] 1619 	pop	af
   475E F1            [10] 1620 	pop	af
   475F C1            [10] 1621 	pop	bc
                           1622 ;src/includes/gui.h:136: if(iSelect == nbEntry-1)
   4760 DD 5E 06      [19] 1623 	ld	e,6 (ix)
   4763 16 00         [ 7] 1624 	ld	d,#0x00
   4765 1B            [ 6] 1625 	dec	de
   4766 DD 70 FE      [19] 1626 	ld	-2 (ix),b
   4769 DD 36 FF 00   [19] 1627 	ld	-1 (ix),#0x00
   476D 7B            [ 4] 1628 	ld	a,e
   476E DD 96 FE      [19] 1629 	sub	a, -2 (ix)
   4771 20 0A         [12] 1630 	jr	NZ,00107$
   4773 7A            [ 4] 1631 	ld	a,d
   4774 DD 96 FF      [19] 1632 	sub	a, -1 (ix)
   4777 20 04         [12] 1633 	jr	NZ,00107$
                           1634 ;src/includes/gui.h:137: iSelect = 0;
   4779 06 00         [ 7] 1635 	ld	b,#0x00
   477B 18 01         [12] 1636 	jr	00108$
   477D                    1637 00107$:
                           1638 ;src/includes/gui.h:139: iSelect++;
   477D 04            [ 4] 1639 	inc	b
   477E                    1640 00108$:
                           1641 ;src/includes/gui.h:141: drawMenuEntry(menu, nbEntry, iSelect);
   477E C5            [11] 1642 	push	bc
   477F C5            [11] 1643 	push	bc
   4780 33            [ 6] 1644 	inc	sp
   4781 DD 7E 06      [19] 1645 	ld	a,6 (ix)
   4784 F5            [11] 1646 	push	af
   4785 33            [ 6] 1647 	inc	sp
   4786 DD 6E 04      [19] 1648 	ld	l,4 (ix)
   4789 DD 66 05      [19] 1649 	ld	h,5 (ix)
   478C E5            [11] 1650 	push	hl
   478D CD 93 45      [17] 1651 	call	_drawMenuEntry
   4790 F1            [10] 1652 	pop	af
   4791 F1            [10] 1653 	pop	af
   4792 C1            [10] 1654 	pop	bc
   4793                    1655 00112$:
                           1656 ;src/includes/gui.h:144: while(!cpct_isKeyPressed(Key_Return));
   4793 C5            [11] 1657 	push	bc
   4794 21 02 04      [10] 1658 	ld	hl,#0x0402
   4797 CD DA 53      [17] 1659 	call	_cpct_isKeyPressed
   479A 7D            [ 4] 1660 	ld	a,l
   479B C1            [10] 1661 	pop	bc
   479C B7            [ 4] 1662 	or	a, a
   479D CA FD 46      [10] 1663 	jp	Z,00111$
                           1664 ;src/includes/gui.h:147: for(i=0; i<14000; i++) {}
   47A0 21 B0 36      [10] 1665 	ld	hl,#0x36B0
   47A3                    1666 00117$:
   47A3 EB            [ 4] 1667 	ex	de,hl
   47A4 1B            [ 6] 1668 	dec	de
   47A5 6B            [ 4] 1669 	ld	l, e
   47A6 7A            [ 4] 1670 	ld	a,d
   47A7 67            [ 4] 1671 	ld	h,a
   47A8 B3            [ 4] 1672 	or	a,e
   47A9 20 F8         [12] 1673 	jr	NZ,00117$
                           1674 ;src/includes/gui.h:149: return iSelect;
   47AB 68            [ 4] 1675 	ld	l,b
   47AC DD F9         [10] 1676 	ld	sp, ix
   47AE DD E1         [14] 1677 	pop	ix
   47B0 C9            [10] 1678 	ret
                           1679 ;src/includes/gui.h:159: u8 drawWindow(char **text, u8 nbLine, u8 button)
                           1680 ;	---------------------------------
                           1681 ; Function drawWindow
                           1682 ; ---------------------------------
   47B1                    1683 _drawWindow::
   47B1 DD E5         [15] 1684 	push	ix
   47B3 DD 21 00 00   [14] 1685 	ld	ix,#0
   47B7 DD 39         [15] 1686 	add	ix,sp
   47B9 21 F5 FF      [10] 1687 	ld	hl,#-11
   47BC 39            [11] 1688 	add	hl,sp
   47BD F9            [ 6] 1689 	ld	sp,hl
                           1690 ;src/includes/gui.h:163: u8 valueReturn=0;
   47BE DD 36 F5 00   [19] 1691 	ld	-11 (ix),#0x00
                           1692 ;src/includes/gui.h:166: if(button == 0)
   47C2 DD 7E 07      [19] 1693 	ld	a,7 (ix)
   47C5 B7            [ 4] 1694 	or	a, a
   47C6 20 05         [12] 1695 	jr	NZ,00102$
                           1696 ;src/includes/gui.h:167: buttonTxt = "<OK>";
   47C8 11 3A 49      [10] 1697 	ld	de,#___str_0
   47CB 18 03         [12] 1698 	jr	00103$
   47CD                    1699 00102$:
                           1700 ;src/includes/gui.h:169: buttonTxt = "<OK>  <Cancel>";
   47CD 11 3F 49      [10] 1701 	ld	de,#___str_1+0
   47D0                    1702 00103$:
                           1703 ;src/includes/gui.h:171: drawBoxM2(30,(nbLine+2)*12);
   47D0 DD 4E 06      [19] 1704 	ld	c,6 (ix)
   47D3 06 00         [ 7] 1705 	ld	b,#0x00
   47D5 03            [ 6] 1706 	inc	bc
   47D6 03            [ 6] 1707 	inc	bc
   47D7 69            [ 4] 1708 	ld	l, c
   47D8 60            [ 4] 1709 	ld	h, b
   47D9 29            [11] 1710 	add	hl, hl
   47DA 09            [11] 1711 	add	hl, bc
   47DB 29            [11] 1712 	add	hl, hl
   47DC 29            [11] 1713 	add	hl, hl
   47DD C5            [11] 1714 	push	bc
   47DE D5            [11] 1715 	push	de
   47DF E5            [11] 1716 	push	hl
   47E0 21 1E 00      [10] 1717 	ld	hl,#0x001E
   47E3 E5            [11] 1718 	push	hl
   47E4 CD F9 43      [17] 1719 	call	_drawBoxM2
   47E7 F1            [10] 1720 	pop	af
   47E8 F1            [10] 1721 	pop	af
   47E9 D1            [10] 1722 	pop	de
   47EA C1            [10] 1723 	pop	bc
                           1724 ;src/includes/gui.h:173: for(i=0; i<nbLine; i++)
   47EB 69            [ 4] 1725 	ld	l, c
   47EC 60            [ 4] 1726 	ld	h, b
   47ED 29            [11] 1727 	add	hl, hl
   47EE 29            [11] 1728 	add	hl, hl
   47EF 09            [11] 1729 	add	hl, bc
   47F0 29            [11] 1730 	add	hl, hl
   47F1 3E CA         [ 7] 1731 	ld	a,#0xCA
   47F3 95            [ 4] 1732 	sub	a, l
   47F4 DD 77 F8      [19] 1733 	ld	-8 (ix),a
   47F7 3E 00         [ 7] 1734 	ld	a,#0x00
   47F9 9C            [ 4] 1735 	sbc	a, h
   47FA DD 77 F9      [19] 1736 	ld	-7 (ix), a
   47FD 07            [ 4] 1737 	rlca
   47FE E6 01         [ 7] 1738 	and	a,#0x01
   4800 DD 77 FF      [19] 1739 	ld	-1 (ix),a
   4803 DD 36 F6 00   [19] 1740 	ld	-10 (ix),#0x00
   4807 DD 36 FC 00   [19] 1741 	ld	-4 (ix),#0x00
   480B                    1742 00114$:
                           1743 ;src/includes/gui.h:175: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   480B DD 7E F8      [19] 1744 	ld	a,-8 (ix)
   480E C6 01         [ 7] 1745 	add	a, #0x01
   4810 DD 77 FA      [19] 1746 	ld	-6 (ix),a
   4813 DD 7E F9      [19] 1747 	ld	a,-7 (ix)
   4816 CE 00         [ 7] 1748 	adc	a, #0x00
   4818 DD 77 FB      [19] 1749 	ld	-5 (ix),a
                           1750 ;src/includes/gui.h:173: for(i=0; i<nbLine; i++)
   481B DD 7E F6      [19] 1751 	ld	a,-10 (ix)
   481E DD 96 06      [19] 1752 	sub	a, 6 (ix)
   4821 D2 AD 48      [10] 1753 	jp	NC,00104$
                           1754 ;src/includes/gui.h:175: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4824 DD 6E F8      [19] 1755 	ld	l,-8 (ix)
   4827 DD 66 F9      [19] 1756 	ld	h,-7 (ix)
   482A DD 7E FF      [19] 1757 	ld	a,-1 (ix)
   482D B7            [ 4] 1758 	or	a, a
   482E 28 06         [12] 1759 	jr	Z,00118$
   4830 DD 6E FA      [19] 1760 	ld	l,-6 (ix)
   4833 DD 66 FB      [19] 1761 	ld	h,-5 (ix)
   4836                    1762 00118$:
   4836 CB 2C         [ 8] 1763 	sra	h
   4838 CB 1D         [ 8] 1764 	rr	l
   483A DD 66 FC      [19] 1765 	ld	h,-4 (ix)
   483D 7D            [ 4] 1766 	ld	a,l
   483E 84            [ 4] 1767 	add	a, h
   483F DD 77 F7      [19] 1768 	ld	-9 (ix),a
   4842 DD 6E F6      [19] 1769 	ld	l,-10 (ix)
   4845 26 00         [ 7] 1770 	ld	h,#0x00
   4847 29            [11] 1771 	add	hl, hl
   4848 45            [ 4] 1772 	ld	b,l
   4849 4C            [ 4] 1773 	ld	c,h
   484A DD 7E 04      [19] 1774 	ld	a,4 (ix)
   484D 80            [ 4] 1775 	add	a, b
   484E DD 77 FD      [19] 1776 	ld	-3 (ix),a
   4851 DD 7E 05      [19] 1777 	ld	a,5 (ix)
   4854 89            [ 4] 1778 	adc	a, c
   4855 DD 77 FE      [19] 1779 	ld	-2 (ix),a
   4858 DD 6E FD      [19] 1780 	ld	l,-3 (ix)
   485B DD 66 FE      [19] 1781 	ld	h,-2 (ix)
   485E 4E            [ 7] 1782 	ld	c,(hl)
   485F 23            [ 6] 1783 	inc	hl
   4860 46            [ 7] 1784 	ld	b,(hl)
   4861 D5            [11] 1785 	push	de
   4862 C5            [11] 1786 	push	bc
   4863 CD 00 56      [17] 1787 	call	_strlen
   4866 F1            [10] 1788 	pop	af
   4867 D1            [10] 1789 	pop	de
   4868 3E 52         [ 7] 1790 	ld	a,#0x52
   486A 95            [ 4] 1791 	sub	a, l
   486B 6F            [ 4] 1792 	ld	l,a
   486C 3E 00         [ 7] 1793 	ld	a,#0x00
   486E 9C            [ 4] 1794 	sbc	a, h
   486F 67            [ 4] 1795 	ld	h,a
   4870 CB 3C         [ 8] 1796 	srl	h
   4872 CB 1D         [ 8] 1797 	rr	l
   4874 45            [ 4] 1798 	ld	b,l
   4875 D5            [11] 1799 	push	de
   4876 DD 7E F7      [19] 1800 	ld	a,-9 (ix)
   4879 F5            [11] 1801 	push	af
   487A 33            [ 6] 1802 	inc	sp
   487B C5            [11] 1803 	push	bc
   487C 33            [ 6] 1804 	inc	sp
   487D 21 00 C0      [10] 1805 	ld	hl,#0xC000
   4880 E5            [11] 1806 	push	hl
   4881 CD D8 56      [17] 1807 	call	_cpct_getScreenPtr
   4884 D1            [10] 1808 	pop	de
   4885 E5            [11] 1809 	push	hl
   4886 FD E1         [14] 1810 	pop	iy
                           1811 ;src/includes/gui.h:176: cpct_drawStringM2 (text[i], p_video, 0);
   4888 DD 6E FD      [19] 1812 	ld	l,-3 (ix)
   488B DD 66 FE      [19] 1813 	ld	h,-2 (ix)
   488E 4E            [ 7] 1814 	ld	c,(hl)
   488F 23            [ 6] 1815 	inc	hl
   4890 46            [ 7] 1816 	ld	b,(hl)
   4891 D5            [11] 1817 	push	de
   4892 AF            [ 4] 1818 	xor	a, a
   4893 F5            [11] 1819 	push	af
   4894 33            [ 6] 1820 	inc	sp
   4895 FD E5         [15] 1821 	push	iy
   4897 C5            [11] 1822 	push	bc
   4898 CD F2 53      [17] 1823 	call	_cpct_drawStringM2
   489B F1            [10] 1824 	pop	af
   489C F1            [10] 1825 	pop	af
   489D 33            [ 6] 1826 	inc	sp
   489E D1            [10] 1827 	pop	de
                           1828 ;src/includes/gui.h:173: for(i=0; i<nbLine; i++)
   489F DD 7E FC      [19] 1829 	ld	a,-4 (ix)
   48A2 C6 0A         [ 7] 1830 	add	a, #0x0A
   48A4 DD 77 FC      [19] 1831 	ld	-4 (ix),a
   48A7 DD 34 F6      [23] 1832 	inc	-10 (ix)
   48AA C3 0B 48      [10] 1833 	jp	00114$
   48AD                    1834 00104$:
                           1835 ;src/includes/gui.h:179: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   48AD DD 46 F8      [19] 1836 	ld	b,-8 (ix)
   48B0 DD 66 F9      [19] 1837 	ld	h,-7 (ix)
   48B3 DD 7E FF      [19] 1838 	ld	a,-1 (ix)
   48B6 B7            [ 4] 1839 	or	a, a
   48B7 28 06         [12] 1840 	jr	Z,00119$
   48B9 DD 46 FA      [19] 1841 	ld	b,-6 (ix)
   48BC DD 66 FB      [19] 1842 	ld	h,-5 (ix)
   48BF                    1843 00119$:
   48BF CB 2C         [ 8] 1844 	sra	h
   48C1 CB 18         [ 8] 1845 	rr	b
   48C3 DD 4E 06      [19] 1846 	ld	c,6 (ix)
   48C6 0C            [ 4] 1847 	inc	c
   48C7 79            [ 4] 1848 	ld	a,c
   48C8 87            [ 4] 1849 	add	a, a
   48C9 87            [ 4] 1850 	add	a, a
   48CA 81            [ 4] 1851 	add	a, c
   48CB 87            [ 4] 1852 	add	a, a
   48CC 67            [ 4] 1853 	ld	h, a
   48CD 80            [ 4] 1854 	add	a,b
   48CE 47            [ 4] 1855 	ld	b,a
   48CF C5            [11] 1856 	push	bc
   48D0 D5            [11] 1857 	push	de
   48D1 D5            [11] 1858 	push	de
   48D2 CD 00 56      [17] 1859 	call	_strlen
   48D5 F1            [10] 1860 	pop	af
   48D6 D1            [10] 1861 	pop	de
   48D7 C1            [10] 1862 	pop	bc
   48D8 3E 52         [ 7] 1863 	ld	a,#0x52
   48DA 95            [ 4] 1864 	sub	a, l
   48DB 6F            [ 4] 1865 	ld	l,a
   48DC 3E 00         [ 7] 1866 	ld	a,#0x00
   48DE 9C            [ 4] 1867 	sbc	a, h
   48DF 67            [ 4] 1868 	ld	h,a
   48E0 CB 3C         [ 8] 1869 	srl	h
   48E2 CB 1D         [ 8] 1870 	rr	l
   48E4 7D            [ 4] 1871 	ld	a,l
   48E5 D5            [11] 1872 	push	de
   48E6 C5            [11] 1873 	push	bc
   48E7 33            [ 6] 1874 	inc	sp
   48E8 F5            [11] 1875 	push	af
   48E9 33            [ 6] 1876 	inc	sp
   48EA 21 00 C0      [10] 1877 	ld	hl,#0xC000
   48ED E5            [11] 1878 	push	hl
   48EE CD D8 56      [17] 1879 	call	_cpct_getScreenPtr
   48F1 D1            [10] 1880 	pop	de
                           1881 ;src/includes/gui.h:180: cpct_drawStringM2 (buttonTxt, p_video, 0);
   48F2 4D            [ 4] 1882 	ld	c, l
   48F3 44            [ 4] 1883 	ld	b, h
   48F4 AF            [ 4] 1884 	xor	a, a
   48F5 F5            [11] 1885 	push	af
   48F6 33            [ 6] 1886 	inc	sp
   48F7 C5            [11] 1887 	push	bc
   48F8 D5            [11] 1888 	push	de
   48F9 CD F2 53      [17] 1889 	call	_cpct_drawStringM2
   48FC F1            [10] 1890 	pop	af
   48FD F1            [10] 1891 	pop	af
   48FE 33            [ 6] 1892 	inc	sp
                           1893 ;src/includes/gui.h:183: do{
   48FF                    1894 00110$:
                           1895 ;src/includes/gui.h:184: cpct_scanKeyboard(); 
   48FF CD F8 56      [17] 1896 	call	_cpct_scanKeyboard
                           1897 ;src/includes/gui.h:186: if ( cpct_isKeyPressed(Key_Return) )
   4902 21 02 04      [10] 1898 	ld	hl,#0x0402
   4905 CD DA 53      [17] 1899 	call	_cpct_isKeyPressed
   4908 7D            [ 4] 1900 	ld	a,l
   4909 B7            [ 4] 1901 	or	a, a
   490A 28 04         [12] 1902 	jr	Z,00106$
                           1903 ;src/includes/gui.h:187: valueReturn=1;
   490C DD 36 F5 01   [19] 1904 	ld	-11 (ix),#0x01
   4910                    1905 00106$:
                           1906 ;src/includes/gui.h:189: if ( cpct_isKeyPressed(Key_Esc) )
   4910 21 08 04      [10] 1907 	ld	hl,#0x0408
   4913 CD DA 53      [17] 1908 	call	_cpct_isKeyPressed
   4916 7D            [ 4] 1909 	ld	a,l
   4917 B7            [ 4] 1910 	or	a, a
   4918 28 04         [12] 1911 	jr	Z,00111$
                           1912 ;src/includes/gui.h:190: valueReturn=0;
   491A DD 36 F5 00   [19] 1913 	ld	-11 (ix),#0x00
   491E                    1914 00111$:
                           1915 ;src/includes/gui.h:192: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   491E 21 02 04      [10] 1916 	ld	hl,#0x0402
   4921 CD DA 53      [17] 1917 	call	_cpct_isKeyPressed
   4924 7D            [ 4] 1918 	ld	a,l
   4925 B7            [ 4] 1919 	or	a, a
   4926 20 0A         [12] 1920 	jr	NZ,00112$
   4928 21 08 04      [10] 1921 	ld	hl,#0x0408
   492B CD DA 53      [17] 1922 	call	_cpct_isKeyPressed
   492E 7D            [ 4] 1923 	ld	a,l
   492F B7            [ 4] 1924 	or	a, a
   4930 28 CD         [12] 1925 	jr	Z,00110$
   4932                    1926 00112$:
                           1927 ;src/includes/gui.h:194: return valueReturn;
   4932 DD 6E F5      [19] 1928 	ld	l,-11 (ix)
   4935 DD F9         [10] 1929 	ld	sp, ix
   4937 DD E1         [14] 1930 	pop	ix
   4939 C9            [10] 1931 	ret
   493A                    1932 ___str_0:
   493A 3C 4F 4B 3E        1933 	.ascii "<OK>"
   493E 00                 1934 	.db 0x00
   493F                    1935 ___str_1:
   493F 3C 4F 4B 3E 20 20  1936 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   494D 00                 1937 	.db 0x00
                           1938 ;src/includes/world.h:16: void drawCursor(u8 x, u8 y, u8 color)
                           1939 ;	---------------------------------
                           1940 ; Function drawCursor
                           1941 ; ---------------------------------
   494E                    1942 _drawCursor::
   494E DD E5         [15] 1943 	push	ix
   4950 DD 21 00 00   [14] 1944 	ld	ix,#0
   4954 DD 39         [15] 1945 	add	ix,sp
   4956 3B            [ 6] 1946 	dec	sp
                           1947 ;src/includes/world.h:20: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4957 DD 7E 05      [19] 1948 	ld	a,5 (ix)
   495A 07            [ 4] 1949 	rlca
   495B 07            [ 4] 1950 	rlca
   495C 07            [ 4] 1951 	rlca
   495D 07            [ 4] 1952 	rlca
   495E E6 F0         [ 7] 1953 	and	a,#0xF0
   4960 5F            [ 4] 1954 	ld	e,a
   4961 DD 7E 04      [19] 1955 	ld	a,4 (ix)
   4964 87            [ 4] 1956 	add	a, a
   4965 87            [ 4] 1957 	add	a, a
   4966 57            [ 4] 1958 	ld	d,a
   4967 D5            [11] 1959 	push	de
   4968 7B            [ 4] 1960 	ld	a,e
   4969 F5            [11] 1961 	push	af
   496A 33            [ 6] 1962 	inc	sp
   496B D5            [11] 1963 	push	de
   496C 33            [ 6] 1964 	inc	sp
   496D 21 00 C0      [10] 1965 	ld	hl,#0xC000
   4970 E5            [11] 1966 	push	hl
   4971 CD D8 56      [17] 1967 	call	_cpct_getScreenPtr
   4974 D1            [10] 1968 	pop	de
                           1969 ;src/includes/world.h:21: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4975 E5            [11] 1970 	push	hl
   4976 D5            [11] 1971 	push	de
   4977 DD 66 06      [19] 1972 	ld	h,6 (ix)
   497A DD 6E 06      [19] 1973 	ld	l,6 (ix)
   497D E5            [11] 1974 	push	hl
   497E DD 66 06      [19] 1975 	ld	h,6 (ix)
   4981 DD 6E 06      [19] 1976 	ld	l,6 (ix)
   4984 E5            [11] 1977 	push	hl
   4985 CD E7 55      [17] 1978 	call	_cpct_px2byteM1
   4988 F1            [10] 1979 	pop	af
   4989 F1            [10] 1980 	pop	af
   498A DD 75 FF      [19] 1981 	ld	-1 (ix),l
   498D D1            [10] 1982 	pop	de
   498E C1            [10] 1983 	pop	bc
   498F D5            [11] 1984 	push	de
   4990 21 04 00      [10] 1985 	ld	hl,#0x0004
   4993 E5            [11] 1986 	push	hl
   4994 DD 7E FF      [19] 1987 	ld	a,-1 (ix)
   4997 F5            [11] 1988 	push	af
   4998 33            [ 6] 1989 	inc	sp
   4999 C5            [11] 1990 	push	bc
   499A CD D9 55      [17] 1991 	call	_cpct_memset
   499D D1            [10] 1992 	pop	de
                           1993 ;src/includes/world.h:22: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   499E 63            [ 4] 1994 	ld	h,e
   499F 24            [ 4] 1995 	inc	h
   49A0 D5            [11] 1996 	push	de
   49A1 E5            [11] 1997 	push	hl
   49A2 33            [ 6] 1998 	inc	sp
   49A3 D5            [11] 1999 	push	de
   49A4 33            [ 6] 2000 	inc	sp
   49A5 21 00 C0      [10] 2001 	ld	hl,#0xC000
   49A8 E5            [11] 2002 	push	hl
   49A9 CD D8 56      [17] 2003 	call	_cpct_getScreenPtr
   49AC D1            [10] 2004 	pop	de
                           2005 ;src/includes/world.h:23: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   49AD E5            [11] 2006 	push	hl
   49AE D5            [11] 2007 	push	de
   49AF DD 66 06      [19] 2008 	ld	h,6 (ix)
   49B2 DD 6E 06      [19] 2009 	ld	l,6 (ix)
   49B5 E5            [11] 2010 	push	hl
   49B6 DD 66 06      [19] 2011 	ld	h,6 (ix)
   49B9 DD 6E 06      [19] 2012 	ld	l,6 (ix)
   49BC E5            [11] 2013 	push	hl
   49BD CD E7 55      [17] 2014 	call	_cpct_px2byteM1
   49C0 F1            [10] 2015 	pop	af
   49C1 F1            [10] 2016 	pop	af
   49C2 65            [ 4] 2017 	ld	h,l
   49C3 D1            [10] 2018 	pop	de
   49C4 C1            [10] 2019 	pop	bc
   49C5 69            [ 4] 2020 	ld	l,c
   49C6 58            [ 4] 2021 	ld	e,b
   49C7 D5            [11] 2022 	push	de
   49C8 01 04 00      [10] 2023 	ld	bc,#0x0004
   49CB C5            [11] 2024 	push	bc
   49CC E5            [11] 2025 	push	hl
   49CD 33            [ 6] 2026 	inc	sp
   49CE 63            [ 4] 2027 	ld	h, e
   49CF E5            [11] 2028 	push	hl
   49D0 CD D9 55      [17] 2029 	call	_cpct_memset
   49D3 D1            [10] 2030 	pop	de
                           2031 ;src/includes/world.h:26: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   49D4 DD 7E 05      [19] 2032 	ld	a,5 (ix)
   49D7 3C            [ 4] 2033 	inc	a
   49D8 07            [ 4] 2034 	rlca
   49D9 07            [ 4] 2035 	rlca
   49DA 07            [ 4] 2036 	rlca
   49DB 07            [ 4] 2037 	rlca
   49DC E6 F0         [ 7] 2038 	and	a,#0xF0
   49DE 5F            [ 4] 2039 	ld	e,a
   49DF 63            [ 4] 2040 	ld	h,e
   49E0 25            [ 4] 2041 	dec	h
   49E1 D5            [11] 2042 	push	de
   49E2 E5            [11] 2043 	push	hl
   49E3 33            [ 6] 2044 	inc	sp
   49E4 D5            [11] 2045 	push	de
   49E5 33            [ 6] 2046 	inc	sp
   49E6 21 00 C0      [10] 2047 	ld	hl,#0xC000
   49E9 E5            [11] 2048 	push	hl
   49EA CD D8 56      [17] 2049 	call	_cpct_getScreenPtr
   49ED D1            [10] 2050 	pop	de
                           2051 ;src/includes/world.h:27: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   49EE E5            [11] 2052 	push	hl
   49EF D5            [11] 2053 	push	de
   49F0 DD 66 06      [19] 2054 	ld	h,6 (ix)
   49F3 DD 6E 06      [19] 2055 	ld	l,6 (ix)
   49F6 E5            [11] 2056 	push	hl
   49F7 DD 66 06      [19] 2057 	ld	h,6 (ix)
   49FA DD 6E 06      [19] 2058 	ld	l,6 (ix)
   49FD E5            [11] 2059 	push	hl
   49FE CD E7 55      [17] 2060 	call	_cpct_px2byteM1
   4A01 F1            [10] 2061 	pop	af
   4A02 F1            [10] 2062 	pop	af
   4A03 DD 75 FF      [19] 2063 	ld	-1 (ix),l
   4A06 D1            [10] 2064 	pop	de
   4A07 C1            [10] 2065 	pop	bc
   4A08 D5            [11] 2066 	push	de
   4A09 21 04 00      [10] 2067 	ld	hl,#0x0004
   4A0C E5            [11] 2068 	push	hl
   4A0D DD 7E FF      [19] 2069 	ld	a,-1 (ix)
   4A10 F5            [11] 2070 	push	af
   4A11 33            [ 6] 2071 	inc	sp
   4A12 C5            [11] 2072 	push	bc
   4A13 CD D9 55      [17] 2073 	call	_cpct_memset
   4A16 D1            [10] 2074 	pop	de
                           2075 ;src/includes/world.h:28: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4A17 63            [ 4] 2076 	ld	h,e
   4A18 25            [ 4] 2077 	dec	h
   4A19 25            [ 4] 2078 	dec	h
   4A1A E5            [11] 2079 	push	hl
   4A1B 33            [ 6] 2080 	inc	sp
   4A1C D5            [11] 2081 	push	de
   4A1D 33            [ 6] 2082 	inc	sp
   4A1E 21 00 C0      [10] 2083 	ld	hl,#0xC000
   4A21 E5            [11] 2084 	push	hl
   4A22 CD D8 56      [17] 2085 	call	_cpct_getScreenPtr
                           2086 ;src/includes/world.h:29: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4A25 E5            [11] 2087 	push	hl
   4A26 DD 66 06      [19] 2088 	ld	h,6 (ix)
   4A29 DD 6E 06      [19] 2089 	ld	l,6 (ix)
   4A2C E5            [11] 2090 	push	hl
   4A2D DD 66 06      [19] 2091 	ld	h,6 (ix)
   4A30 DD 6E 06      [19] 2092 	ld	l,6 (ix)
   4A33 E5            [11] 2093 	push	hl
   4A34 CD E7 55      [17] 2094 	call	_cpct_px2byteM1
   4A37 F1            [10] 2095 	pop	af
   4A38 F1            [10] 2096 	pop	af
   4A39 65            [ 4] 2097 	ld	h,l
   4A3A D1            [10] 2098 	pop	de
   4A3B 01 04 00      [10] 2099 	ld	bc,#0x0004
   4A3E C5            [11] 2100 	push	bc
   4A3F E5            [11] 2101 	push	hl
   4A40 33            [ 6] 2102 	inc	sp
   4A41 D5            [11] 2103 	push	de
   4A42 CD D9 55      [17] 2104 	call	_cpct_memset
   4A45 33            [ 6] 2105 	inc	sp
   4A46 DD E1         [14] 2106 	pop	ix
   4A48 C9            [10] 2107 	ret
                           2108 ;src/includes/world.h:33: void generateWorld(u8 *p_world)
                           2109 ;	---------------------------------
                           2110 ; Function generateWorld
                           2111 ; ---------------------------------
   4A49                    2112 _generateWorld::
   4A49 DD E5         [15] 2113 	push	ix
   4A4B DD 21 00 00   [14] 2114 	ld	ix,#0
   4A4F DD 39         [15] 2115 	add	ix,sp
   4A51 F5            [11] 2116 	push	af
   4A52 F5            [11] 2117 	push	af
                           2118 ;src/includes/world.h:39: cpct_setRandomSeedUniform_u8(0);
   4A53 2E 00         [ 7] 2119 	ld	l,#0x00
   4A55 CD BE 53      [17] 2120 	call	_cpct_setRandomSeedUniform_u8
                           2121 ;src/includes/world.h:41: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4A58 11 00 00      [10] 2122 	ld	de,#0x0000
   4A5B                    2123 00115$:
                           2124 ;src/includes/world.h:43: p_world[iy] = cpct_getRandomUniform_u8_f(0)%2;
   4A5B DD 6E 04      [19] 2125 	ld	l,4 (ix)
   4A5E DD 66 05      [19] 2126 	ld	h,5 (ix)
   4A61 19            [11] 2127 	add	hl,de
   4A62 E5            [11] 2128 	push	hl
   4A63 D5            [11] 2129 	push	de
   4A64 2E 00         [ 7] 2130 	ld	l,#0x00
   4A66 CD 9A 55      [17] 2131 	call	_cpct_getRandomUniform_u8_f
   4A69 7D            [ 4] 2132 	ld	a,l
   4A6A D1            [10] 2133 	pop	de
   4A6B E1            [10] 2134 	pop	hl
   4A6C E6 01         [ 7] 2135 	and	a, #0x01
   4A6E 77            [ 7] 2136 	ld	(hl),a
                           2137 ;src/includes/world.h:41: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   4A6F 13            [ 6] 2138 	inc	de
   4A70 7A            [ 4] 2139 	ld	a,d
   4A71 EE 80         [ 7] 2140 	xor	a, #0x80
   4A73 D6 8F         [ 7] 2141 	sub	a, #0x8F
   4A75 38 E4         [12] 2142 	jr	C,00115$
                           2143 ;src/includes/world.h:47: for(ix=0; ix<NBFOREST; ix++)
   4A77 11 00 00      [10] 2144 	ld	de,#0x0000
   4A7A                    2145 00117$:
                           2146 ;src/includes/world.h:49: iy = cpct_getRandomUniform_u8_f(0)*15; // (WIDTH*HEIGHT)/255;
   4A7A D5            [11] 2147 	push	de
   4A7B 2E 00         [ 7] 2148 	ld	l,#0x00
   4A7D CD 9A 55      [17] 2149 	call	_cpct_getRandomUniform_u8_f
   4A80 D1            [10] 2150 	pop	de
   4A81 4D            [ 4] 2151 	ld	c,l
   4A82 06 00         [ 7] 2152 	ld	b,#0x00
   4A84 69            [ 4] 2153 	ld	l, c
   4A85 60            [ 4] 2154 	ld	h, b
   4A86 29            [11] 2155 	add	hl, hl
   4A87 09            [11] 2156 	add	hl, bc
   4A88 29            [11] 2157 	add	hl, hl
   4A89 09            [11] 2158 	add	hl, bc
   4A8A 29            [11] 2159 	add	hl, hl
   4A8B 09            [11] 2160 	add	hl, bc
   4A8C 4D            [ 4] 2161 	ld	c,l
   4A8D 44            [ 4] 2162 	ld	b,h
                           2163 ;src/includes/world.h:50: p_world[iy] = FOREST;
   4A8E DD 6E 04      [19] 2164 	ld	l,4 (ix)
   4A91 DD 66 05      [19] 2165 	ld	h,5 (ix)
   4A94 09            [11] 2166 	add	hl,bc
   4A95 36 08         [10] 2167 	ld	(hl),#0x08
                           2168 ;src/includes/world.h:47: for(ix=0; ix<NBFOREST; ix++)
   4A97 13            [ 6] 2169 	inc	de
   4A98 7B            [ 4] 2170 	ld	a,e
   4A99 D6 64         [ 7] 2171 	sub	a, #0x64
   4A9B 7A            [ 4] 2172 	ld	a,d
   4A9C 17            [ 4] 2173 	rla
   4A9D 3F            [ 4] 2174 	ccf
   4A9E 1F            [ 4] 2175 	rra
   4A9F DE 80         [ 7] 2176 	sbc	a, #0x80
   4AA1 38 D7         [12] 2177 	jr	C,00117$
                           2178 ;src/includes/world.h:54: cpct_setRandomSeedUniform_u8(1);
   4AA3 2E 01         [ 7] 2179 	ld	l,#0x01
   4AA5 CD BE 53      [17] 2180 	call	_cpct_setRandomSeedUniform_u8
                           2181 ;src/includes/world.h:56: for(ix=0; ix<NBFARM; ix++)
   4AA8 21 00 00      [10] 2182 	ld	hl,#0x0000
   4AAB E3            [19] 2183 	ex	(sp), hl
   4AAC                    2184 00119$:
                           2185 ;src/includes/world.h:58: iy = cpct_getRandomUniform_u8_f(1)*15; // (WIDTH*HEIGHT)/255;
   4AAC 2E 01         [ 7] 2186 	ld	l,#0x01
   4AAE CD 9A 55      [17] 2187 	call	_cpct_getRandomUniform_u8_f
   4AB1 4D            [ 4] 2188 	ld	c,l
   4AB2 06 00         [ 7] 2189 	ld	b,#0x00
   4AB4 69            [ 4] 2190 	ld	l, c
   4AB5 60            [ 4] 2191 	ld	h, b
   4AB6 29            [11] 2192 	add	hl, hl
   4AB7 09            [11] 2193 	add	hl, bc
   4AB8 29            [11] 2194 	add	hl, hl
   4AB9 09            [11] 2195 	add	hl, bc
   4ABA 29            [11] 2196 	add	hl, hl
   4ABB 09            [11] 2197 	add	hl, bc
                           2198 ;src/includes/world.h:60: shift = cpct_getRandomUniform_u8_f(1)%10;
   4ABC E5            [11] 2199 	push	hl
   4ABD 2E 01         [ 7] 2200 	ld	l,#0x01
   4ABF CD 9A 55      [17] 2201 	call	_cpct_getRandomUniform_u8_f
   4AC2 45            [ 4] 2202 	ld	b,l
   4AC3 3E 0A         [ 7] 2203 	ld	a,#0x0A
   4AC5 F5            [11] 2204 	push	af
   4AC6 33            [ 6] 2205 	inc	sp
   4AC7 C5            [11] 2206 	push	bc
   4AC8 33            [ 6] 2207 	inc	sp
   4AC9 CD B8 54      [17] 2208 	call	__moduchar
   4ACC F1            [10] 2209 	pop	af
   4ACD D1            [10] 2210 	pop	de
   4ACE 26 00         [ 7] 2211 	ld	h,#0x00
                           2212 ;src/includes/world.h:61: shift=iy-shift+5;
   4AD0 7B            [ 4] 2213 	ld	a,e
   4AD1 95            [ 4] 2214 	sub	a, l
   4AD2 5F            [ 4] 2215 	ld	e,a
   4AD3 7A            [ 4] 2216 	ld	a,d
   4AD4 9C            [ 4] 2217 	sbc	a, h
   4AD5 57            [ 4] 2218 	ld	d,a
   4AD6 13            [ 6] 2219 	inc	de
   4AD7 13            [ 6] 2220 	inc	de
   4AD8 13            [ 6] 2221 	inc	de
   4AD9 13            [ 6] 2222 	inc	de
   4ADA 13            [ 6] 2223 	inc	de
                           2224 ;src/includes/world.h:63: if(shift>0 && shift<WIDTH*HEIGHT)
   4ADB AF            [ 4] 2225 	xor	a, a
   4ADC BB            [ 4] 2226 	cp	a, e
   4ADD 9A            [ 4] 2227 	sbc	a, d
   4ADE E2 E3 4A      [10] 2228 	jp	PO, 00192$
   4AE1 EE 80         [ 7] 2229 	xor	a, #0x80
   4AE3                    2230 00192$:
   4AE3 F2 01 4B      [10] 2231 	jp	P,00120$
   4AE6 7A            [ 4] 2232 	ld	a,d
   4AE7 EE 80         [ 7] 2233 	xor	a, #0x80
   4AE9 D6 8F         [ 7] 2234 	sub	a, #0x8F
   4AEB 30 14         [12] 2235 	jr	NC,00120$
                           2236 ;src/includes/world.h:64: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(1)%2+5;
   4AED DD 6E 04      [19] 2237 	ld	l,4 (ix)
   4AF0 DD 66 05      [19] 2238 	ld	h,5 (ix)
   4AF3 19            [11] 2239 	add	hl,de
   4AF4 E5            [11] 2240 	push	hl
   4AF5 2E 01         [ 7] 2241 	ld	l,#0x01
   4AF7 CD 9A 55      [17] 2242 	call	_cpct_getRandomUniform_u8_f
   4AFA 7D            [ 4] 2243 	ld	a,l
   4AFB E1            [10] 2244 	pop	hl
   4AFC E6 01         [ 7] 2245 	and	a, #0x01
   4AFE C6 05         [ 7] 2246 	add	a, #0x05
   4B00 77            [ 7] 2247 	ld	(hl),a
   4B01                    2248 00120$:
                           2249 ;src/includes/world.h:56: for(ix=0; ix<NBFARM; ix++)
   4B01 DD 34 FC      [23] 2250 	inc	-4 (ix)
   4B04 20 03         [12] 2251 	jr	NZ,00193$
   4B06 DD 34 FD      [23] 2252 	inc	-3 (ix)
   4B09                    2253 00193$:
   4B09 DD 7E FC      [19] 2254 	ld	a,-4 (ix)
   4B0C D6 3C         [ 7] 2255 	sub	a, #0x3C
   4B0E DD 7E FD      [19] 2256 	ld	a,-3 (ix)
   4B11 17            [ 4] 2257 	rla
   4B12 3F            [ 4] 2258 	ccf
   4B13 1F            [ 4] 2259 	rra
   4B14 DE 80         [ 7] 2260 	sbc	a, #0x80
   4B16 38 94         [12] 2261 	jr	C,00119$
                           2262 ;src/includes/world.h:69: cpct_setRandomSeedUniform_u8(2);
   4B18 2E 02         [ 7] 2263 	ld	l,#0x02
   4B1A CD BE 53      [17] 2264 	call	_cpct_setRandomSeedUniform_u8
                           2265 ;src/includes/world.h:71: for(ix=0; ix<NBURBAN; ix++)
   4B1D 21 00 00      [10] 2266 	ld	hl,#0x0000
   4B20 E3            [19] 2267 	ex	(sp), hl
   4B21                    2268 00121$:
                           2269 ;src/includes/world.h:73: iy = cpct_getRandomUniform_u8_f(2)*15; // (WIDTH*HEIGHT)/255;
   4B21 2E 02         [ 7] 2270 	ld	l,#0x02
   4B23 CD 9A 55      [17] 2271 	call	_cpct_getRandomUniform_u8_f
   4B26 4D            [ 4] 2272 	ld	c,l
   4B27 06 00         [ 7] 2273 	ld	b,#0x00
   4B29 69            [ 4] 2274 	ld	l, c
   4B2A 60            [ 4] 2275 	ld	h, b
   4B2B 29            [11] 2276 	add	hl, hl
   4B2C 09            [11] 2277 	add	hl, bc
   4B2D 29            [11] 2278 	add	hl, hl
   4B2E 09            [11] 2279 	add	hl, bc
   4B2F 29            [11] 2280 	add	hl, hl
   4B30 09            [11] 2281 	add	hl, bc
                           2282 ;src/includes/world.h:75: shift = cpct_getRandomUniform_u8_f(2)%10;
   4B31 E5            [11] 2283 	push	hl
   4B32 2E 02         [ 7] 2284 	ld	l,#0x02
   4B34 CD 9A 55      [17] 2285 	call	_cpct_getRandomUniform_u8_f
   4B37 45            [ 4] 2286 	ld	b,l
   4B38 3E 0A         [ 7] 2287 	ld	a,#0x0A
   4B3A F5            [11] 2288 	push	af
   4B3B 33            [ 6] 2289 	inc	sp
   4B3C C5            [11] 2290 	push	bc
   4B3D 33            [ 6] 2291 	inc	sp
   4B3E CD B8 54      [17] 2292 	call	__moduchar
   4B41 F1            [10] 2293 	pop	af
   4B42 D1            [10] 2294 	pop	de
   4B43 26 00         [ 7] 2295 	ld	h,#0x00
                           2296 ;src/includes/world.h:76: shift=iy-shift+5;
   4B45 7B            [ 4] 2297 	ld	a,e
   4B46 95            [ 4] 2298 	sub	a, l
   4B47 4F            [ 4] 2299 	ld	c,a
   4B48 7A            [ 4] 2300 	ld	a,d
   4B49 9C            [ 4] 2301 	sbc	a, h
   4B4A 47            [ 4] 2302 	ld	b,a
   4B4B 03            [ 6] 2303 	inc	bc
   4B4C 03            [ 6] 2304 	inc	bc
   4B4D 03            [ 6] 2305 	inc	bc
   4B4E 03            [ 6] 2306 	inc	bc
   4B4F 03            [ 6] 2307 	inc	bc
                           2308 ;src/includes/world.h:78: if(shift>0 && shift<WIDTH*HEIGHT)
   4B50 AF            [ 4] 2309 	xor	a, a
   4B51 B9            [ 4] 2310 	cp	a, c
   4B52 98            [ 4] 2311 	sbc	a, b
   4B53 E2 58 4B      [10] 2312 	jp	PO, 00194$
   4B56 EE 80         [ 7] 2313 	xor	a, #0x80
   4B58                    2314 00194$:
   4B58 F2 82 4B      [10] 2315 	jp	P,00122$
   4B5B 78            [ 4] 2316 	ld	a,b
   4B5C EE 80         [ 7] 2317 	xor	a, #0x80
   4B5E D6 8F         [ 7] 2318 	sub	a, #0x8F
   4B60 30 20         [12] 2319 	jr	NC,00122$
                           2320 ;src/includes/world.h:79: p_world[shift] = (u8)cpct_getRandomUniform_u8_f(2)%3+2;
   4B62 DD 7E 04      [19] 2321 	ld	a,4 (ix)
   4B65 81            [ 4] 2322 	add	a, c
   4B66 5F            [ 4] 2323 	ld	e,a
   4B67 DD 7E 05      [19] 2324 	ld	a,5 (ix)
   4B6A 88            [ 4] 2325 	adc	a, b
   4B6B 57            [ 4] 2326 	ld	d,a
   4B6C D5            [11] 2327 	push	de
   4B6D 2E 02         [ 7] 2328 	ld	l,#0x02
   4B6F CD 9A 55      [17] 2329 	call	_cpct_getRandomUniform_u8_f
   4B72 45            [ 4] 2330 	ld	b,l
   4B73 3E 03         [ 7] 2331 	ld	a,#0x03
   4B75 F5            [11] 2332 	push	af
   4B76 33            [ 6] 2333 	inc	sp
   4B77 C5            [11] 2334 	push	bc
   4B78 33            [ 6] 2335 	inc	sp
   4B79 CD B8 54      [17] 2336 	call	__moduchar
   4B7C F1            [10] 2337 	pop	af
   4B7D 7D            [ 4] 2338 	ld	a,l
   4B7E D1            [10] 2339 	pop	de
   4B7F C6 02         [ 7] 2340 	add	a, #0x02
   4B81 12            [ 7] 2341 	ld	(de),a
   4B82                    2342 00122$:
                           2343 ;src/includes/world.h:71: for(ix=0; ix<NBURBAN; ix++)
   4B82 DD 34 FC      [23] 2344 	inc	-4 (ix)
   4B85 20 03         [12] 2345 	jr	NZ,00195$
   4B87 DD 34 FD      [23] 2346 	inc	-3 (ix)
   4B8A                    2347 00195$:
   4B8A DD 7E FC      [19] 2348 	ld	a,-4 (ix)
   4B8D D6 1E         [ 7] 2349 	sub	a, #0x1E
   4B8F DD 7E FD      [19] 2350 	ld	a,-3 (ix)
   4B92 17            [ 4] 2351 	rla
   4B93 3F            [ 4] 2352 	ccf
   4B94 1F            [ 4] 2353 	rra
   4B95 DE 80         [ 7] 2354 	sbc	a, #0x80
   4B97 38 88         [12] 2355 	jr	C,00121$
                           2356 ;src/includes/world.h:84: cpct_setRandomSeedUniform_u8(3);
   4B99 2E 03         [ 7] 2357 	ld	l,#0x03
   4B9B CD BE 53      [17] 2358 	call	_cpct_setRandomSeedUniform_u8
                           2359 ;src/includes/world.h:86: for(ix=0; ix<NBLIVESTOCK; ix++)
   4B9E 11 00 00      [10] 2360 	ld	de,#0x0000
   4BA1                    2361 00123$:
                           2362 ;src/includes/world.h:88: iy = cpct_getRandomUniform_u8_f(3)*15; // (WIDTH*HEIGHT)/255;
   4BA1 D5            [11] 2363 	push	de
   4BA2 2E 03         [ 7] 2364 	ld	l,#0x03
   4BA4 CD 9A 55      [17] 2365 	call	_cpct_getRandomUniform_u8_f
   4BA7 D1            [10] 2366 	pop	de
   4BA8 4D            [ 4] 2367 	ld	c,l
   4BA9 06 00         [ 7] 2368 	ld	b,#0x00
   4BAB 69            [ 4] 2369 	ld	l, c
   4BAC 60            [ 4] 2370 	ld	h, b
   4BAD 29            [11] 2371 	add	hl, hl
   4BAE 09            [11] 2372 	add	hl, bc
   4BAF 29            [11] 2373 	add	hl, hl
   4BB0 09            [11] 2374 	add	hl, bc
   4BB1 29            [11] 2375 	add	hl, hl
   4BB2 09            [11] 2376 	add	hl, bc
   4BB3 DD 75 FE      [19] 2377 	ld	-2 (ix),l
   4BB6 DD 74 FF      [19] 2378 	ld	-1 (ix),h
                           2379 ;src/includes/world.h:90: shift = cpct_getRandomUniform_u8_f(3)%10;
   4BB9 D5            [11] 2380 	push	de
   4BBA 2E 03         [ 7] 2381 	ld	l,#0x03
   4BBC CD 9A 55      [17] 2382 	call	_cpct_getRandomUniform_u8_f
   4BBF 45            [ 4] 2383 	ld	b,l
   4BC0 3E 0A         [ 7] 2384 	ld	a,#0x0A
   4BC2 F5            [11] 2385 	push	af
   4BC3 33            [ 6] 2386 	inc	sp
   4BC4 C5            [11] 2387 	push	bc
   4BC5 33            [ 6] 2388 	inc	sp
   4BC6 CD B8 54      [17] 2389 	call	__moduchar
   4BC9 F1            [10] 2390 	pop	af
   4BCA D1            [10] 2391 	pop	de
   4BCB 26 00         [ 7] 2392 	ld	h,#0x00
                           2393 ;src/includes/world.h:91: shift=iy-shift+5;
   4BCD DD 7E FE      [19] 2394 	ld	a,-2 (ix)
   4BD0 95            [ 4] 2395 	sub	a, l
   4BD1 4F            [ 4] 2396 	ld	c,a
   4BD2 DD 7E FF      [19] 2397 	ld	a,-1 (ix)
   4BD5 9C            [ 4] 2398 	sbc	a, h
   4BD6 47            [ 4] 2399 	ld	b,a
   4BD7 03            [ 6] 2400 	inc	bc
   4BD8 03            [ 6] 2401 	inc	bc
   4BD9 03            [ 6] 2402 	inc	bc
   4BDA 03            [ 6] 2403 	inc	bc
   4BDB 03            [ 6] 2404 	inc	bc
                           2405 ;src/includes/world.h:93: if(shift>0 && shift<WIDTH*HEIGHT)
   4BDC AF            [ 4] 2406 	xor	a, a
   4BDD B9            [ 4] 2407 	cp	a, c
   4BDE 98            [ 4] 2408 	sbc	a, b
   4BDF E2 E4 4B      [10] 2409 	jp	PO, 00196$
   4BE2 EE 80         [ 7] 2410 	xor	a, #0x80
   4BE4                    2411 00196$:
   4BE4 F2 F7 4B      [10] 2412 	jp	P,00124$
   4BE7 78            [ 4] 2413 	ld	a,b
   4BE8 EE 80         [ 7] 2414 	xor	a, #0x80
   4BEA D6 8F         [ 7] 2415 	sub	a, #0x8F
   4BEC 30 09         [12] 2416 	jr	NC,00124$
                           2417 ;src/includes/world.h:94: p_world[shift] = LIVESTOCK;
   4BEE DD 6E 04      [19] 2418 	ld	l,4 (ix)
   4BF1 DD 66 05      [19] 2419 	ld	h,5 (ix)
   4BF4 09            [11] 2420 	add	hl,bc
   4BF5 36 09         [10] 2421 	ld	(hl),#0x09
   4BF7                    2422 00124$:
                           2423 ;src/includes/world.h:86: for(ix=0; ix<NBLIVESTOCK; ix++)
   4BF7 13            [ 6] 2424 	inc	de
   4BF8 7B            [ 4] 2425 	ld	a,e
   4BF9 D6 14         [ 7] 2426 	sub	a, #0x14
   4BFB 7A            [ 4] 2427 	ld	a,d
   4BFC 17            [ 4] 2428 	rla
   4BFD 3F            [ 4] 2429 	ccf
   4BFE 1F            [ 4] 2430 	rra
   4BFF DE 80         [ 7] 2431 	sbc	a, #0x80
   4C01 38 9E         [12] 2432 	jr	C,00123$
   4C03 DD F9         [10] 2433 	ld	sp, ix
   4C05 DD E1         [14] 2434 	pop	ix
   4C07 C9            [10] 2435 	ret
                           2436 ;src/includes/world.h:98: void drawTile(u8 *p_world, u8 x_, u8 y_, u8 ix, u8 iy)
                           2437 ;	---------------------------------
                           2438 ; Function drawTile
                           2439 ; ---------------------------------
   4C08                    2440 _drawTile::
   4C08 DD E5         [15] 2441 	push	ix
   4C0A DD 21 00 00   [14] 2442 	ld	ix,#0
   4C0E DD 39         [15] 2443 	add	ix,sp
                           2444 ;src/includes/world.h:101: int adress = (y_+iy)*WIDTH+x_+ix;
   4C10 DD 6E 07      [19] 2445 	ld	l,7 (ix)
   4C13 26 00         [ 7] 2446 	ld	h,#0x00
   4C15 DD 5E 09      [19] 2447 	ld	e,9 (ix)
   4C18 16 00         [ 7] 2448 	ld	d,#0x00
   4C1A 19            [11] 2449 	add	hl,de
   4C1B 4D            [ 4] 2450 	ld	c, l
   4C1C 44            [ 4] 2451 	ld	b, h
   4C1D 29            [11] 2452 	add	hl, hl
   4C1E 29            [11] 2453 	add	hl, hl
   4C1F 09            [11] 2454 	add	hl, bc
   4C20 29            [11] 2455 	add	hl, hl
   4C21 29            [11] 2456 	add	hl, hl
   4C22 29            [11] 2457 	add	hl, hl
   4C23 29            [11] 2458 	add	hl, hl
   4C24 DD 5E 06      [19] 2459 	ld	e,6 (ix)
   4C27 16 00         [ 7] 2460 	ld	d,#0x00
   4C29 19            [11] 2461 	add	hl,de
   4C2A DD 5E 08      [19] 2462 	ld	e,8 (ix)
   4C2D 16 00         [ 7] 2463 	ld	d,#0x00
   4C2F 19            [11] 2464 	add	hl,de
   4C30 5D            [ 4] 2465 	ld	e, l
   4C31 54            [ 4] 2466 	ld	d, h
                           2467 ;src/includes/world.h:103: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   4C32 DD 7E 09      [19] 2468 	ld	a,9 (ix)
   4C35 07            [ 4] 2469 	rlca
   4C36 07            [ 4] 2470 	rlca
   4C37 07            [ 4] 2471 	rlca
   4C38 07            [ 4] 2472 	rlca
   4C39 E6 F0         [ 7] 2473 	and	a,#0xF0
   4C3B 67            [ 4] 2474 	ld	h,a
   4C3C DD 7E 08      [19] 2475 	ld	a,8 (ix)
   4C3F 87            [ 4] 2476 	add	a, a
   4C40 87            [ 4] 2477 	add	a, a
   4C41 D5            [11] 2478 	push	de
   4C42 E5            [11] 2479 	push	hl
   4C43 33            [ 6] 2480 	inc	sp
   4C44 F5            [11] 2481 	push	af
   4C45 33            [ 6] 2482 	inc	sp
   4C46 21 00 C0      [10] 2483 	ld	hl,#0xC000
   4C49 E5            [11] 2484 	push	hl
   4C4A CD D8 56      [17] 2485 	call	_cpct_getScreenPtr
   4C4D D1            [10] 2486 	pop	de
   4C4E 4D            [ 4] 2487 	ld	c, l
   4C4F 44            [ 4] 2488 	ld	b, h
                           2489 ;src/includes/world.h:105: switch(p_world[adress])
   4C50 DD 6E 04      [19] 2490 	ld	l,4 (ix)
   4C53 DD 66 05      [19] 2491 	ld	h,5 (ix)
   4C56 19            [11] 2492 	add	hl,de
   4C57 5E            [ 7] 2493 	ld	e,(hl)
   4C58 3E 09         [ 7] 2494 	ld	a,#0x09
   4C5A 93            [ 4] 2495 	sub	a, e
   4C5B DA 10 4D      [10] 2496 	jp	C,00112$
   4C5E 16 00         [ 7] 2497 	ld	d,#0x00
   4C60 21 67 4C      [10] 2498 	ld	hl,#00118$
   4C63 19            [11] 2499 	add	hl,de
   4C64 19            [11] 2500 	add	hl,de
   4C65 19            [11] 2501 	add	hl,de
   4C66 E9            [ 4] 2502 	jp	(hl)
   4C67                    2503 00118$:
   4C67 C3 85 4C      [10] 2504 	jp	00101$
   4C6A C3 94 4C      [10] 2505 	jp	00102$
   4C6D C3 A2 4C      [10] 2506 	jp	00103$
   4C70 C3 B0 4C      [10] 2507 	jp	00104$
   4C73 C3 BE 4C      [10] 2508 	jp	00105$
   4C76 C3 CC 4C      [10] 2509 	jp	00106$
   4C79 C3 DA 4C      [10] 2510 	jp	00107$
   4C7C C3 E8 4C      [10] 2511 	jp	00108$
   4C7F C3 F6 4C      [10] 2512 	jp	00109$
   4C82 C3 04 4D      [10] 2513 	jp	00110$
                           2514 ;src/includes/world.h:107: case GRASS1:
   4C85                    2515 00101$:
                           2516 ;src/includes/world.h:108: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   4C85 11 29 40      [10] 2517 	ld	de,#_grass1
   4C88 21 04 10      [10] 2518 	ld	hl,#0x1004
   4C8B E5            [11] 2519 	push	hl
   4C8C C5            [11] 2520 	push	bc
   4C8D D5            [11] 2521 	push	de
   4C8E CD 13 54      [17] 2522 	call	_cpct_drawSprite
                           2523 ;src/includes/world.h:109: break;
   4C91 C3 10 4D      [10] 2524 	jp	00112$
                           2525 ;src/includes/world.h:110: case GRASS2:
   4C94                    2526 00102$:
                           2527 ;src/includes/world.h:111: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   4C94 11 69 40      [10] 2528 	ld	de,#_grass2
   4C97 21 04 10      [10] 2529 	ld	hl,#0x1004
   4C9A E5            [11] 2530 	push	hl
   4C9B C5            [11] 2531 	push	bc
   4C9C D5            [11] 2532 	push	de
   4C9D CD 13 54      [17] 2533 	call	_cpct_drawSprite
                           2534 ;src/includes/world.h:112: break;
   4CA0 18 6E         [12] 2535 	jr	00112$
                           2536 ;src/includes/world.h:113: case DWELLINGS1:
   4CA2                    2537 00103$:
                           2538 ;src/includes/world.h:114: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   4CA2 11 E9 40      [10] 2539 	ld	de,#_dwellings1
   4CA5 21 04 10      [10] 2540 	ld	hl,#0x1004
   4CA8 E5            [11] 2541 	push	hl
   4CA9 C5            [11] 2542 	push	bc
   4CAA D5            [11] 2543 	push	de
   4CAB CD 13 54      [17] 2544 	call	_cpct_drawSprite
                           2545 ;src/includes/world.h:115: break;
   4CAE 18 60         [12] 2546 	jr	00112$
                           2547 ;src/includes/world.h:116: case DWELLINGS2:
   4CB0                    2548 00104$:
                           2549 ;src/includes/world.h:117: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   4CB0 11 29 41      [10] 2550 	ld	de,#_dwellings2
   4CB3 21 04 10      [10] 2551 	ld	hl,#0x1004
   4CB6 E5            [11] 2552 	push	hl
   4CB7 C5            [11] 2553 	push	bc
   4CB8 D5            [11] 2554 	push	de
   4CB9 CD 13 54      [17] 2555 	call	_cpct_drawSprite
                           2556 ;src/includes/world.h:118: break;
   4CBC 18 52         [12] 2557 	jr	00112$
                           2558 ;src/includes/world.h:119: case DWELLINGS3:
   4CBE                    2559 00105$:
                           2560 ;src/includes/world.h:120: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   4CBE 11 69 41      [10] 2561 	ld	de,#_dwellings3
   4CC1 21 04 10      [10] 2562 	ld	hl,#0x1004
   4CC4 E5            [11] 2563 	push	hl
   4CC5 C5            [11] 2564 	push	bc
   4CC6 D5            [11] 2565 	push	de
   4CC7 CD 13 54      [17] 2566 	call	_cpct_drawSprite
                           2567 ;src/includes/world.h:121: break;
   4CCA 18 44         [12] 2568 	jr	00112$
                           2569 ;src/includes/world.h:122: case FARM1:
   4CCC                    2570 00106$:
                           2571 ;src/includes/world.h:123: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   4CCC 11 E9 41      [10] 2572 	ld	de,#_farm1
   4CCF 21 04 10      [10] 2573 	ld	hl,#0x1004
   4CD2 E5            [11] 2574 	push	hl
   4CD3 C5            [11] 2575 	push	bc
   4CD4 D5            [11] 2576 	push	de
   4CD5 CD 13 54      [17] 2577 	call	_cpct_drawSprite
                           2578 ;src/includes/world.h:124: break;
   4CD8 18 36         [12] 2579 	jr	00112$
                           2580 ;src/includes/world.h:125: case FARM2:
   4CDA                    2581 00107$:
                           2582 ;src/includes/world.h:126: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   4CDA 11 29 42      [10] 2583 	ld	de,#_farm2
   4CDD 21 04 10      [10] 2584 	ld	hl,#0x1004
   4CE0 E5            [11] 2585 	push	hl
   4CE1 C5            [11] 2586 	push	bc
   4CE2 D5            [11] 2587 	push	de
   4CE3 CD 13 54      [17] 2588 	call	_cpct_drawSprite
                           2589 ;src/includes/world.h:127: break;
   4CE6 18 28         [12] 2590 	jr	00112$
                           2591 ;src/includes/world.h:128: case WATER:
   4CE8                    2592 00108$:
                           2593 ;src/includes/world.h:129: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   4CE8 11 A9 41      [10] 2594 	ld	de,#_water
   4CEB 21 04 10      [10] 2595 	ld	hl,#0x1004
   4CEE E5            [11] 2596 	push	hl
   4CEF C5            [11] 2597 	push	bc
   4CF0 D5            [11] 2598 	push	de
   4CF1 CD 13 54      [17] 2599 	call	_cpct_drawSprite
                           2600 ;src/includes/world.h:130: break;
   4CF4 18 1A         [12] 2601 	jr	00112$
                           2602 ;src/includes/world.h:131: case FOREST:
   4CF6                    2603 00109$:
                           2604 ;src/includes/world.h:132: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   4CF6 11 A9 40      [10] 2605 	ld	de,#_forest
   4CF9 21 04 10      [10] 2606 	ld	hl,#0x1004
   4CFC E5            [11] 2607 	push	hl
   4CFD C5            [11] 2608 	push	bc
   4CFE D5            [11] 2609 	push	de
   4CFF CD 13 54      [17] 2610 	call	_cpct_drawSprite
                           2611 ;src/includes/world.h:133: break;
   4D02 18 0C         [12] 2612 	jr	00112$
                           2613 ;src/includes/world.h:134: case LIVESTOCK:
   4D04                    2614 00110$:
                           2615 ;src/includes/world.h:135: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   4D04 11 69 42      [10] 2616 	ld	de,#_livestock
   4D07 21 04 10      [10] 2617 	ld	hl,#0x1004
   4D0A E5            [11] 2618 	push	hl
   4D0B C5            [11] 2619 	push	bc
   4D0C D5            [11] 2620 	push	de
   4D0D CD 13 54      [17] 2621 	call	_cpct_drawSprite
                           2622 ;src/includes/world.h:137: }
   4D10                    2623 00112$:
   4D10 DD E1         [14] 2624 	pop	ix
   4D12 C9            [10] 2625 	ret
                           2626 ;src/includes/world.h:140: void drawWorld(u8 *p_world, u8 x_, u8 y_)
                           2627 ;	---------------------------------
                           2628 ; Function drawWorld
                           2629 ; ---------------------------------
   4D13                    2630 _drawWorld::
   4D13 DD E5         [15] 2631 	push	ix
   4D15 DD 21 00 00   [14] 2632 	ld	ix,#0
   4D19 DD 39         [15] 2633 	add	ix,sp
   4D1B 3B            [ 6] 2634 	dec	sp
                           2635 ;src/includes/world.h:148: for(iy=0; iy<NBTILE_H;iy++)
   4D1C 16 00         [ 7] 2636 	ld	d,#0x00
                           2637 ;src/includes/world.h:150: for(ix=0; ix<NBTILE_W;ix++)
   4D1E                    2638 00109$:
   4D1E 1E 00         [ 7] 2639 	ld	e,#0x00
   4D20                    2640 00103$:
                           2641 ;src/includes/world.h:152: drawTile(p_world, x_, y_, ix, iy);
   4D20 D5            [11] 2642 	push	de
   4D21 D5            [11] 2643 	push	de
   4D22 DD 66 07      [19] 2644 	ld	h,7 (ix)
   4D25 DD 6E 06      [19] 2645 	ld	l,6 (ix)
   4D28 E5            [11] 2646 	push	hl
   4D29 DD 6E 04      [19] 2647 	ld	l,4 (ix)
   4D2C DD 66 05      [19] 2648 	ld	h,5 (ix)
   4D2F E5            [11] 2649 	push	hl
   4D30 CD 08 4C      [17] 2650 	call	_drawTile
   4D33 21 06 00      [10] 2651 	ld	hl,#6
   4D36 39            [11] 2652 	add	hl,sp
   4D37 F9            [ 6] 2653 	ld	sp,hl
   4D38 D1            [10] 2654 	pop	de
                           2655 ;src/includes/world.h:150: for(ix=0; ix<NBTILE_W;ix++)
   4D39 1C            [ 4] 2656 	inc	e
   4D3A 7B            [ 4] 2657 	ld	a,e
   4D3B D6 14         [ 7] 2658 	sub	a, #0x14
   4D3D 38 E1         [12] 2659 	jr	C,00103$
                           2660 ;src/includes/world.h:148: for(iy=0; iy<NBTILE_H;iy++)
   4D3F 14            [ 4] 2661 	inc	d
   4D40 7A            [ 4] 2662 	ld	a,d
   4D41 D6 0C         [ 7] 2663 	sub	a, #0x0C
   4D43 38 D9         [12] 2664 	jr	C,00109$
                           2665 ;src/includes/world.h:158: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   4D45 DD 4E 06      [19] 2666 	ld	c,6 (ix)
   4D48 06 00         [ 7] 2667 	ld	b,#0x00
   4D4A 69            [ 4] 2668 	ld	l, c
   4D4B 60            [ 4] 2669 	ld	h, b
   4D4C 29            [11] 2670 	add	hl, hl
   4D4D 29            [11] 2671 	add	hl, hl
   4D4E 29            [11] 2672 	add	hl, hl
   4D4F 09            [11] 2673 	add	hl, bc
   4D50 29            [11] 2674 	add	hl, hl
   4D51 09            [11] 2675 	add	hl, bc
   4D52 29            [11] 2676 	add	hl, hl
   4D53 29            [11] 2677 	add	hl, hl
   4D54 01 3C 00      [10] 2678 	ld	bc,#0x003C
   4D57 C5            [11] 2679 	push	bc
   4D58 E5            [11] 2680 	push	hl
   4D59 CD 29 57      [17] 2681 	call	__divsint
   4D5C F1            [10] 2682 	pop	af
   4D5D F1            [10] 2683 	pop	af
   4D5E 55            [ 4] 2684 	ld	d,l
                           2685 ;src/includes/world.h:159: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   4D5F DD 4E 07      [19] 2686 	ld	c,7 (ix)
   4D62 06 00         [ 7] 2687 	ld	b,#0x00
   4D64 69            [ 4] 2688 	ld	l, c
   4D65 60            [ 4] 2689 	ld	h, b
   4D66 29            [11] 2690 	add	hl, hl
   4D67 29            [11] 2691 	add	hl, hl
   4D68 09            [11] 2692 	add	hl, bc
   4D69 29            [11] 2693 	add	hl, hl
   4D6A 09            [11] 2694 	add	hl, bc
   4D6B 29            [11] 2695 	add	hl, hl
   4D6C 29            [11] 2696 	add	hl, hl
   4D6D 29            [11] 2697 	add	hl, hl
   4D6E 29            [11] 2698 	add	hl, hl
   4D6F D5            [11] 2699 	push	de
   4D70 01 24 00      [10] 2700 	ld	bc,#0x0024
   4D73 C5            [11] 2701 	push	bc
   4D74 E5            [11] 2702 	push	hl
   4D75 CD 29 57      [17] 2703 	call	__divsint
   4D78 F1            [10] 2704 	pop	af
   4D79 F1            [10] 2705 	pop	af
   4D7A D1            [10] 2706 	pop	de
   4D7B DD 75 FF      [19] 2707 	ld	-1 (ix),l
                           2708 ;src/includes/world.h:161: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   4D7E AF            [ 4] 2709 	xor	a, a
   4D7F F5            [11] 2710 	push	af
   4D80 33            [ 6] 2711 	inc	sp
   4D81 D5            [11] 2712 	push	de
   4D82 33            [ 6] 2713 	inc	sp
   4D83 21 00 C0      [10] 2714 	ld	hl,#0xC000
   4D86 E5            [11] 2715 	push	hl
   4D87 CD D8 56      [17] 2716 	call	_cpct_getScreenPtr
                           2717 ;src/includes/world.h:162: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   4D8A E5            [11] 2718 	push	hl
   4D8B 21 00 00      [10] 2719 	ld	hl,#0x0000
   4D8E E5            [11] 2720 	push	hl
   4D8F 2E 00         [ 7] 2721 	ld	l, #0x00
   4D91 E5            [11] 2722 	push	hl
   4D92 CD E7 55      [17] 2723 	call	_cpct_px2byteM1
   4D95 F1            [10] 2724 	pop	af
   4D96 F1            [10] 2725 	pop	af
   4D97 45            [ 4] 2726 	ld	b,l
   4D98 D1            [10] 2727 	pop	de
   4D99 21 04 04      [10] 2728 	ld	hl,#0x0404
   4D9C E5            [11] 2729 	push	hl
   4D9D C5            [11] 2730 	push	bc
   4D9E 33            [ 6] 2731 	inc	sp
   4D9F D5            [11] 2732 	push	de
   4DA0 CD 1F 56      [17] 2733 	call	_cpct_drawSolidBox
   4DA3 F1            [10] 2734 	pop	af
   4DA4 F1            [10] 2735 	pop	af
   4DA5 33            [ 6] 2736 	inc	sp
                           2737 ;src/includes/world.h:164: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   4DA6 DD 7E FF      [19] 2738 	ld	a,-1 (ix)
   4DA9 F5            [11] 2739 	push	af
   4DAA 33            [ 6] 2740 	inc	sp
   4DAB AF            [ 4] 2741 	xor	a, a
   4DAC F5            [11] 2742 	push	af
   4DAD 33            [ 6] 2743 	inc	sp
   4DAE 21 00 C0      [10] 2744 	ld	hl,#0xC000
   4DB1 E5            [11] 2745 	push	hl
   4DB2 CD D8 56      [17] 2746 	call	_cpct_getScreenPtr
                           2747 ;src/includes/world.h:165: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   4DB5 E5            [11] 2748 	push	hl
   4DB6 21 00 00      [10] 2749 	ld	hl,#0x0000
   4DB9 E5            [11] 2750 	push	hl
   4DBA 2E 00         [ 7] 2751 	ld	l, #0x00
   4DBC E5            [11] 2752 	push	hl
   4DBD CD E7 55      [17] 2753 	call	_cpct_px2byteM1
   4DC0 F1            [10] 2754 	pop	af
   4DC1 F1            [10] 2755 	pop	af
   4DC2 45            [ 4] 2756 	ld	b,l
   4DC3 D1            [10] 2757 	pop	de
   4DC4 21 01 10      [10] 2758 	ld	hl,#0x1001
   4DC7 E5            [11] 2759 	push	hl
   4DC8 C5            [11] 2760 	push	bc
   4DC9 33            [ 6] 2761 	inc	sp
   4DCA D5            [11] 2762 	push	de
   4DCB CD 1F 56      [17] 2763 	call	_cpct_drawSolidBox
   4DCE F1            [10] 2764 	pop	af
   4DCF F1            [10] 2765 	pop	af
   4DD0 33            [ 6] 2766 	inc	sp
   4DD1 33            [ 6] 2767 	inc	sp
   4DD2 DD E1         [14] 2768 	pop	ix
   4DD4 C9            [10] 2769 	ret
                           2770 ;src/includes/game.h:1: void menuTile(u8* p_world, u8 x, u8 y)
                           2771 ;	---------------------------------
                           2772 ; Function menuTile
                           2773 ; ---------------------------------
   4DD5                    2774 _menuTile::
   4DD5 DD E5         [15] 2775 	push	ix
   4DD7 DD 21 00 00   [14] 2776 	ld	ix,#0
   4DDB DD 39         [15] 2777 	add	ix,sp
   4DDD 21 F6 FF      [10] 2778 	ld	hl,#-10
   4DE0 39            [11] 2779 	add	hl,sp
   4DE1 F9            [ 6] 2780 	ld	sp,hl
                           2781 ;src/includes/game.h:5: const char *txtMenuTile[] = { 
   4DE2 21 00 00      [10] 2782 	ld	hl,#0x0000
   4DE5 39            [11] 2783 	add	hl,sp
   4DE6 5D            [ 4] 2784 	ld	e,l
   4DE7 54            [ 4] 2785 	ld	d,h
   4DE8 36 35         [10] 2786 	ld	(hl),#<(___str_2)
   4DEA 23            [ 6] 2787 	inc	hl
   4DEB 36 4E         [10] 2788 	ld	(hl),#>(___str_2)
   4DED 6B            [ 4] 2789 	ld	l, e
   4DEE 62            [ 4] 2790 	ld	h, d
   4DEF 23            [ 6] 2791 	inc	hl
   4DF0 23            [ 6] 2792 	inc	hl
   4DF1 01 45 4E      [10] 2793 	ld	bc,#___str_3+0
   4DF4 71            [ 7] 2794 	ld	(hl),c
   4DF5 23            [ 6] 2795 	inc	hl
   4DF6 70            [ 7] 2796 	ld	(hl),b
   4DF7 21 04 00      [10] 2797 	ld	hl,#0x0004
   4DFA 19            [11] 2798 	add	hl,de
   4DFB 01 55 4E      [10] 2799 	ld	bc,#___str_4+0
   4DFE 71            [ 7] 2800 	ld	(hl),c
   4DFF 23            [ 6] 2801 	inc	hl
   4E00 70            [ 7] 2802 	ld	(hl),b
   4E01 21 06 00      [10] 2803 	ld	hl,#0x0006
   4E04 19            [11] 2804 	add	hl,de
   4E05 01 64 4E      [10] 2805 	ld	bc,#___str_5+0
   4E08 71            [ 7] 2806 	ld	(hl),c
   4E09 23            [ 6] 2807 	inc	hl
   4E0A 70            [ 7] 2808 	ld	(hl),b
   4E0B 21 08 00      [10] 2809 	ld	hl,#0x0008
   4E0E 19            [11] 2810 	add	hl,de
   4E0F 01 6F 4E      [10] 2811 	ld	bc,#___str_6+0
   4E12 71            [ 7] 2812 	ld	(hl),c
   4E13 23            [ 6] 2813 	inc	hl
   4E14 70            [ 7] 2814 	ld	(hl),b
                           2815 ;src/includes/game.h:13: putM2();
   4E15 D5            [11] 2816 	push	de
   4E16 CD BD 42      [17] 2817 	call	_putM2
   4E19 D1            [10] 2818 	pop	de
                           2819 ;src/includes/game.h:16: do{
   4E1A                    2820 00101$:
                           2821 ;src/includes/game.h:17: menuChoice = drawMenu(txtMenuTile,5);
   4E1A 4B            [ 4] 2822 	ld	c, e
   4E1B 42            [ 4] 2823 	ld	b, d
   4E1C D5            [11] 2824 	push	de
   4E1D 3E 05         [ 7] 2825 	ld	a,#0x05
   4E1F F5            [11] 2826 	push	af
   4E20 33            [ 6] 2827 	inc	sp
   4E21 C5            [11] 2828 	push	bc
   4E22 CD C3 46      [17] 2829 	call	_drawMenu
   4E25 F1            [10] 2830 	pop	af
   4E26 33            [ 6] 2831 	inc	sp
   4E27 7D            [ 4] 2832 	ld	a,l
   4E28 D1            [10] 2833 	pop	de
                           2834 ;src/includes/game.h:26: while(menuChoice!=4);
   4E29 D6 04         [ 7] 2835 	sub	a, #0x04
   4E2B 20 ED         [12] 2836 	jr	NZ,00101$
                           2837 ;src/includes/game.h:28: putM1();
   4E2D CD A9 42      [17] 2838 	call	_putM1
   4E30 DD F9         [10] 2839 	ld	sp, ix
   4E32 DD E1         [14] 2840 	pop	ix
   4E34 C9            [10] 2841 	ret
   4E35                    2842 ___str_2:
   4E35 41 62 6F 75 74 20  2843 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   4E44 00                 2844 	.db 0x00
   4E45                    2845 ___str_3:
   4E45 42 65 67 69 6E 20  2846 	.ascii "Begin a railway"
        61 20 72 61 69 6C
        77 61 79
   4E54 00                 2847 	.db 0x00
   4E55                    2848 ___str_4:
   4E55 52 61 69 6C 72 6F  2849 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   4E63 00                 2850 	.db 0x00
   4E64                    2851 ___str_5:
   4E64 41 63 63 6F 75 6E  2852 	.ascii "Accounting"
        74 69 6E 67
   4E6E 00                 2853 	.db 0x00
   4E6F                    2854 ___str_6:
   4E6F 52 65 73 75 6D 65  2855 	.ascii "Resume"
   4E75 00                 2856 	.db 0x00
                           2857 ;src/includes/game.h:32: void game()
                           2858 ;	---------------------------------
                           2859 ; Function game
                           2860 ; ---------------------------------
   4E76                    2861 _game::
   4E76 DD E5         [15] 2862 	push	ix
   4E78 DD 21 00 00   [14] 2863 	ld	ix,#0
   4E7C DD 39         [15] 2864 	add	ix,sp
   4E7E 21 E3 F0      [10] 2865 	ld	hl,#-3869
   4E81 39            [11] 2866 	add	hl,sp
   4E82 F9            [ 6] 2867 	ld	sp,hl
                           2868 ;src/includes/game.h:35: u8 ulx = 0;
   4E83 FD 21 00 00   [14] 2869 	ld	iy,#0
   4E87 FD 39         [15] 2870 	add	iy,sp
   4E89 FD 36 00 00   [19] 2871 	ld	0 (iy),#0x00
                           2872 ;src/includes/game.h:36: u8 uly = 0;
   4E8D FD 21 01 00   [14] 2873 	ld	iy,#1
   4E91 FD 39         [15] 2874 	add	iy,sp
   4E93 FD 36 00 00   [19] 2875 	ld	0 (iy),#0x00
                           2876 ;src/includes/game.h:37: int xCursor = 10;
   4E97 DD 36 E8 0A   [19] 2877 	ld	-24 (ix),#0x0A
   4E9B DD 36 E9 00   [19] 2878 	ld	-23 (ix),#0x00
                           2879 ;src/includes/game.h:38: int yCursor = 6;
   4E9F 21 03 00      [10] 2880 	ld	hl, #3
   4EA2 39            [11] 2881 	add	hl, sp
   4EA3 36 06         [10] 2882 	ld	(hl), #0x06
   4EA5 23            [ 6] 2883 	inc	hl
   4EA6 36 00         [10] 2884 	ld	(hl), #0x00
                           2885 ;src/includes/game.h:40: u8 exit=0;
   4EA8 FD 21 02 00   [14] 2886 	ld	iy,#2
   4EAC FD 39         [15] 2887 	add	iy,sp
   4EAE FD 36 00 00   [19] 2888 	ld	0 (iy),#0x00
                           2889 ;src/includes/game.h:42: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   4EB2 21 00 00      [10] 2890 	ld	hl,#0x0000
   4EB5 E5            [11] 2891 	push	hl
   4EB6 2E 00         [ 7] 2892 	ld	l, #0x00
   4EB8 E5            [11] 2893 	push	hl
   4EB9 CD E7 55      [17] 2894 	call	_cpct_px2byteM1
   4EBC F1            [10] 2895 	pop	af
   4EBD F1            [10] 2896 	pop	af
   4EBE 65            [ 4] 2897 	ld	h,l
   4EBF 01 00 40      [10] 2898 	ld	bc,#0x4000
   4EC2 C5            [11] 2899 	push	bc
   4EC3 E5            [11] 2900 	push	hl
   4EC4 33            [ 6] 2901 	inc	sp
   4EC5 21 00 C0      [10] 2902 	ld	hl,#0xC000
   4EC8 E5            [11] 2903 	push	hl
   4EC9 CD D9 55      [17] 2904 	call	_cpct_memset
                           2905 ;src/includes/game.h:44: generateWorld(p_world);
   4ECC 21 05 00      [10] 2906 	ld	hl,#0x0005
   4ECF 39            [11] 2907 	add	hl,sp
   4ED0 DD 75 F9      [19] 2908 	ld	-7 (ix),l
   4ED3 DD 74 FA      [19] 2909 	ld	-6 (ix),h
   4ED6 DD 6E F9      [19] 2910 	ld	l,-7 (ix)
   4ED9 DD 66 FA      [19] 2911 	ld	h,-6 (ix)
   4EDC E5            [11] 2912 	push	hl
   4EDD CD 49 4A      [17] 2913 	call	_generateWorld
   4EE0 F1            [10] 2914 	pop	af
                           2915 ;src/includes/game.h:46: drawWorld(p_world, ulx, uly);
   4EE1 DD 7E F9      [19] 2916 	ld	a,-7 (ix)
   4EE4 DD 77 F7      [19] 2917 	ld	-9 (ix),a
   4EE7 DD 7E FA      [19] 2918 	ld	a,-6 (ix)
   4EEA DD 77 F8      [19] 2919 	ld	-8 (ix),a
   4EED 21 00 00      [10] 2920 	ld	hl,#0x0000
   4EF0 E5            [11] 2921 	push	hl
   4EF1 DD 6E F7      [19] 2922 	ld	l,-9 (ix)
   4EF4 DD 66 F8      [19] 2923 	ld	h,-8 (ix)
   4EF7 E5            [11] 2924 	push	hl
   4EF8 CD 13 4D      [17] 2925 	call	_drawWorld
   4EFB F1            [10] 2926 	pop	af
   4EFC F1            [10] 2927 	pop	af
                           2928 ;src/includes/game.h:48: do{
   4EFD DD 7E F9      [19] 2929 	ld	a,-7 (ix)
   4F00 DD 77 F7      [19] 2930 	ld	-9 (ix),a
   4F03 DD 7E FA      [19] 2931 	ld	a,-6 (ix)
   4F06 DD 77 F8      [19] 2932 	ld	-8 (ix),a
   4F09 DD 7E F9      [19] 2933 	ld	a,-7 (ix)
   4F0C DD 77 F5      [19] 2934 	ld	-11 (ix),a
   4F0F DD 7E FA      [19] 2935 	ld	a,-6 (ix)
   4F12 DD 77 F6      [19] 2936 	ld	-10 (ix),a
   4F15 DD 7E F9      [19] 2937 	ld	a,-7 (ix)
   4F18 DD 77 EC      [19] 2938 	ld	-20 (ix),a
   4F1B DD 7E FA      [19] 2939 	ld	a,-6 (ix)
   4F1E DD 77 ED      [19] 2940 	ld	-19 (ix),a
   4F21 DD 7E F9      [19] 2941 	ld	a,-7 (ix)
   4F24 DD 77 EE      [19] 2942 	ld	-18 (ix),a
   4F27 DD 7E FA      [19] 2943 	ld	a,-6 (ix)
   4F2A DD 77 EF      [19] 2944 	ld	-17 (ix),a
   4F2D DD 7E F9      [19] 2945 	ld	a,-7 (ix)
   4F30 DD 77 FB      [19] 2946 	ld	-5 (ix),a
   4F33 DD 7E FA      [19] 2947 	ld	a,-6 (ix)
   4F36 DD 77 FC      [19] 2948 	ld	-4 (ix),a
   4F39 DD 7E F9      [19] 2949 	ld	a,-7 (ix)
   4F3C DD 77 EA      [19] 2950 	ld	-22 (ix),a
   4F3F DD 7E FA      [19] 2951 	ld	a,-6 (ix)
   4F42 DD 77 EB      [19] 2952 	ld	-21 (ix),a
   4F45 DD 7E F9      [19] 2953 	ld	a,-7 (ix)
   4F48 DD 77 FE      [19] 2954 	ld	-2 (ix),a
   4F4B DD 7E FA      [19] 2955 	ld	a,-6 (ix)
   4F4E DD 77 FF      [19] 2956 	ld	-1 (ix),a
   4F51 DD 7E F9      [19] 2957 	ld	a,-7 (ix)
   4F54 DD 77 F2      [19] 2958 	ld	-14 (ix),a
   4F57 DD 7E FA      [19] 2959 	ld	a,-6 (ix)
   4F5A DD 77 F3      [19] 2960 	ld	-13 (ix),a
   4F5D DD 7E F9      [19] 2961 	ld	a,-7 (ix)
   4F60 DD 77 F0      [19] 2962 	ld	-16 (ix),a
   4F63 DD 7E FA      [19] 2963 	ld	a,-6 (ix)
   4F66 DD 77 F1      [19] 2964 	ld	-15 (ix),a
   4F69                    2965 00133$:
                           2966 ;src/includes/game.h:49: cpct_scanKeyboard(); 
   4F69 CD F8 56      [17] 2967 	call	_cpct_scanKeyboard
                           2968 ;src/includes/game.h:51: if ( cpct_isKeyPressed(Key_CursorUp) )
   4F6C 21 00 01      [10] 2969 	ld	hl,#0x0100
   4F6F CD DA 53      [17] 2970 	call	_cpct_isKeyPressed
   4F72 55            [ 4] 2971 	ld	d,l
                           2972 ;src/includes/game.h:53: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4F73 DD 7E E8      [19] 2973 	ld	a,-24 (ix)
   4F76 DD 77 FD      [19] 2974 	ld	-3 (ix),a
                           2975 ;src/includes/game.h:51: if ( cpct_isKeyPressed(Key_CursorUp) )
   4F79 7A            [ 4] 2976 	ld	a,d
   4F7A B7            [ 4] 2977 	or	a, a
   4F7B CA 07 50      [10] 2978 	jp	Z,00107$
                           2979 ;src/includes/game.h:53: drawTile(p_world, ulx, uly, xCursor, yCursor);
   4F7E FD 21 03 00   [14] 2980 	ld	iy,#3
   4F82 FD 39         [15] 2981 	add	iy,sp
   4F84 FD 66 00      [19] 2982 	ld	h,0 (iy)
   4F87 DD 5E F5      [19] 2983 	ld	e,-11 (ix)
   4F8A DD 56 F6      [19] 2984 	ld	d,-10 (ix)
   4F8D E5            [11] 2985 	push	hl
   4F8E 33            [ 6] 2986 	inc	sp
   4F8F DD 7E FD      [19] 2987 	ld	a,-3 (ix)
   4F92 F5            [11] 2988 	push	af
   4F93 33            [ 6] 2989 	inc	sp
   4F94 FD 21 03 00   [14] 2990 	ld	iy,#3
   4F98 FD 39         [15] 2991 	add	iy,sp
   4F9A FD 7E 00      [19] 2992 	ld	a,0 (iy)
   4F9D F5            [11] 2993 	push	af
   4F9E 33            [ 6] 2994 	inc	sp
   4F9F FD 21 03 00   [14] 2995 	ld	iy,#3
   4FA3 FD 39         [15] 2996 	add	iy,sp
   4FA5 FD 7E 00      [19] 2997 	ld	a,0 (iy)
   4FA8 F5            [11] 2998 	push	af
   4FA9 33            [ 6] 2999 	inc	sp
   4FAA D5            [11] 3000 	push	de
   4FAB CD 08 4C      [17] 3001 	call	_drawTile
   4FAE 21 06 00      [10] 3002 	ld	hl,#6
   4FB1 39            [11] 3003 	add	hl,sp
   4FB2 F9            [ 6] 3004 	ld	sp,hl
                           3005 ;src/includes/game.h:55: yCursor-=1;
   4FB3 FD 21 03 00   [14] 3006 	ld	iy,#3
   4FB7 FD 39         [15] 3007 	add	iy,sp
   4FB9 FD 6E 00      [19] 3008 	ld	l,0 (iy)
   4FBC FD 66 01      [19] 3009 	ld	h,1 (iy)
   4FBF 2B            [ 6] 3010 	dec	hl
   4FC0 FD 75 00      [19] 3011 	ld	0 (iy),l
   4FC3 FD 74 01      [19] 3012 	ld	1 (iy),h
                           3013 ;src/includes/game.h:58: if(yCursor<0)
   4FC6 FD CB 01 7E   [20] 3014 	bit	7,1 (iy)
   4FCA 28 33         [12] 3015 	jr	Z,00153$
                           3016 ;src/includes/game.h:60: yCursor=0;
   4FCC FD 36 00 00   [19] 3017 	ld	0 (iy),#0x00
   4FD0 FD 36 01 00   [19] 3018 	ld	1 (iy),#0x00
                           3019 ;src/includes/game.h:63: if(uly>0)
   4FD4 FD 21 01 00   [14] 3020 	ld	iy,#1
   4FD8 FD 39         [15] 3021 	add	iy,sp
   4FDA FD 7E 00      [19] 3022 	ld	a,0 (iy)
   4FDD B7            [ 4] 3023 	or	a, a
   4FDE 28 1F         [12] 3024 	jr	Z,00153$
                           3025 ;src/includes/game.h:65: uly-=1;
   4FE0 FD 35 00      [23] 3026 	dec	0 (iy)
                           3027 ;src/includes/game.h:66: drawWorld(p_world, ulx, uly);
   4FE3 DD 5E F7      [19] 3028 	ld	e,-9 (ix)
   4FE6 DD 56 F8      [19] 3029 	ld	d,-8 (ix)
   4FE9 FD 7E 00      [19] 3030 	ld	a,0 (iy)
   4FEC F5            [11] 3031 	push	af
   4FED 33            [ 6] 3032 	inc	sp
   4FEE FD 21 01 00   [14] 3033 	ld	iy,#1
   4FF2 FD 39         [15] 3034 	add	iy,sp
   4FF4 FD 7E 00      [19] 3035 	ld	a,0 (iy)
   4FF7 F5            [11] 3036 	push	af
   4FF8 33            [ 6] 3037 	inc	sp
   4FF9 D5            [11] 3038 	push	de
   4FFA CD 13 4D      [17] 3039 	call	_drawWorld
   4FFD F1            [10] 3040 	pop	af
   4FFE F1            [10] 3041 	pop	af
                           3042 ;src/includes/game.h:71: for(i=0; i<14000; i++) {}
   4FFF                    3043 00153$:
   4FFF 11 B0 36      [10] 3044 	ld	de,#0x36B0
   5002                    3045 00138$:
   5002 1B            [ 6] 3046 	dec	de
   5003 7A            [ 4] 3047 	ld	a,d
   5004 B3            [ 4] 3048 	or	a,e
   5005 20 FB         [12] 3049 	jr	NZ,00138$
   5007                    3050 00107$:
                           3051 ;src/includes/game.h:74: if ( cpct_isKeyPressed(Key_CursorDown) )
   5007 21 00 04      [10] 3052 	ld	hl,#0x0400
   500A CD DA 53      [17] 3053 	call	_cpct_isKeyPressed
   500D 7D            [ 4] 3054 	ld	a,l
   500E B7            [ 4] 3055 	or	a, a
   500F CA A9 50      [10] 3056 	jp	Z,00114$
                           3057 ;src/includes/game.h:76: drawTile(p_world, ulx, uly, xCursor, yCursor);
   5012 FD 21 03 00   [14] 3058 	ld	iy,#3
   5016 FD 39         [15] 3059 	add	iy,sp
   5018 FD 66 00      [19] 3060 	ld	h,0 (iy)
   501B DD 5E EE      [19] 3061 	ld	e,-18 (ix)
   501E DD 56 EF      [19] 3062 	ld	d,-17 (ix)
   5021 E5            [11] 3063 	push	hl
   5022 33            [ 6] 3064 	inc	sp
   5023 DD 7E FD      [19] 3065 	ld	a,-3 (ix)
   5026 F5            [11] 3066 	push	af
   5027 33            [ 6] 3067 	inc	sp
   5028 FD 21 03 00   [14] 3068 	ld	iy,#3
   502C FD 39         [15] 3069 	add	iy,sp
   502E FD 7E 00      [19] 3070 	ld	a,0 (iy)
   5031 F5            [11] 3071 	push	af
   5032 33            [ 6] 3072 	inc	sp
   5033 FD 21 03 00   [14] 3073 	ld	iy,#3
   5037 FD 39         [15] 3074 	add	iy,sp
   5039 FD 7E 00      [19] 3075 	ld	a,0 (iy)
   503C F5            [11] 3076 	push	af
   503D 33            [ 6] 3077 	inc	sp
   503E D5            [11] 3078 	push	de
   503F CD 08 4C      [17] 3079 	call	_drawTile
   5042 21 06 00      [10] 3080 	ld	hl,#6
   5045 39            [11] 3081 	add	hl,sp
   5046 F9            [ 6] 3082 	ld	sp,hl
                           3083 ;src/includes/game.h:77: yCursor+=1;
   5047 FD 21 03 00   [14] 3084 	ld	iy,#3
   504B FD 39         [15] 3085 	add	iy,sp
   504D FD 34 00      [23] 3086 	inc	0 (iy)
   5050 20 03         [12] 3087 	jr	NZ,00234$
   5052 FD 34 01      [23] 3088 	inc	1 (iy)
   5055                    3089 00234$:
                           3090 ;src/includes/game.h:78: if(yCursor>NBTILE_H-1)
   5055 3E 0B         [ 7] 3091 	ld	a,#0x0B
   5057 FD BE 00      [19] 3092 	cp	a, 0 (iy)
   505A 3E 00         [ 7] 3093 	ld	a,#0x00
   505C FD 9E 01      [19] 3094 	sbc	a, 1 (iy)
   505F E2 64 50      [10] 3095 	jp	PO, 00235$
   5062 EE 80         [ 7] 3096 	xor	a, #0x80
   5064                    3097 00235$:
   5064 F2 A1 50      [10] 3098 	jp	P,00158$
                           3099 ;src/includes/game.h:80: yCursor=NBTILE_H-1;
   5067 FD 21 03 00   [14] 3100 	ld	iy,#3
   506B FD 39         [15] 3101 	add	iy,sp
   506D FD 36 00 0B   [19] 3102 	ld	0 (iy),#0x0B
   5071 FD 36 01 00   [19] 3103 	ld	1 (iy),#0x00
                           3104 ;src/includes/game.h:81: if(uly<HEIGHT-NBTILE_H)
   5075 FD 21 01 00   [14] 3105 	ld	iy,#1
   5079 FD 39         [15] 3106 	add	iy,sp
   507B FD 7E 00      [19] 3107 	ld	a,0 (iy)
   507E D6 24         [ 7] 3108 	sub	a, #0x24
   5080 30 1F         [12] 3109 	jr	NC,00158$
                           3110 ;src/includes/game.h:83: uly+=1;
   5082 FD 34 00      [23] 3111 	inc	0 (iy)
                           3112 ;src/includes/game.h:84: drawWorld(p_world, ulx, uly);
   5085 DD 5E EC      [19] 3113 	ld	e,-20 (ix)
   5088 DD 56 ED      [19] 3114 	ld	d,-19 (ix)
   508B FD 7E 00      [19] 3115 	ld	a,0 (iy)
   508E F5            [11] 3116 	push	af
   508F 33            [ 6] 3117 	inc	sp
   5090 FD 21 01 00   [14] 3118 	ld	iy,#1
   5094 FD 39         [15] 3119 	add	iy,sp
   5096 FD 7E 00      [19] 3120 	ld	a,0 (iy)
   5099 F5            [11] 3121 	push	af
   509A 33            [ 6] 3122 	inc	sp
   509B D5            [11] 3123 	push	de
   509C CD 13 4D      [17] 3124 	call	_drawWorld
   509F F1            [10] 3125 	pop	af
   50A0 F1            [10] 3126 	pop	af
                           3127 ;src/includes/game.h:89: for(i=0; i<5000; i++) {}
   50A1                    3128 00158$:
   50A1 11 88 13      [10] 3129 	ld	de,#0x1388
   50A4                    3130 00141$:
   50A4 1B            [ 6] 3131 	dec	de
   50A5 7A            [ 4] 3132 	ld	a,d
   50A6 B3            [ 4] 3133 	or	a,e
   50A7 20 FB         [12] 3134 	jr	NZ,00141$
   50A9                    3135 00114$:
                           3136 ;src/includes/game.h:92: if ( cpct_isKeyPressed(Key_CursorLeft) )
   50A9 21 01 01      [10] 3137 	ld	hl,#0x0101
   50AC CD DA 53      [17] 3138 	call	_cpct_isKeyPressed
   50AF 55            [ 4] 3139 	ld	d,l
                           3140 ;src/includes/game.h:53: drawTile(p_world, ulx, uly, xCursor, yCursor);
   50B0 FD 21 03 00   [14] 3141 	ld	iy,#3
   50B4 FD 39         [15] 3142 	add	iy,sp
   50B6 FD 7E 00      [19] 3143 	ld	a,0 (iy)
   50B9 DD 77 F4      [19] 3144 	ld	-12 (ix),a
                           3145 ;src/includes/game.h:92: if ( cpct_isKeyPressed(Key_CursorLeft) )
   50BC 7A            [ 4] 3146 	ld	a,d
   50BD B7            [ 4] 3147 	or	a, a
   50BE CA 44 51      [10] 3148 	jp	Z,00121$
                           3149 ;src/includes/game.h:94: drawTile(p_world, ulx, uly, xCursor, yCursor);
   50C1 DD 5E EA      [19] 3150 	ld	e,-22 (ix)
   50C4 DD 56 EB      [19] 3151 	ld	d,-21 (ix)
   50C7 DD 7E F4      [19] 3152 	ld	a,-12 (ix)
   50CA F5            [11] 3153 	push	af
   50CB 33            [ 6] 3154 	inc	sp
   50CC DD 7E FD      [19] 3155 	ld	a,-3 (ix)
   50CF F5            [11] 3156 	push	af
   50D0 33            [ 6] 3157 	inc	sp
   50D1 FD 21 03 00   [14] 3158 	ld	iy,#3
   50D5 FD 39         [15] 3159 	add	iy,sp
   50D7 FD 7E 00      [19] 3160 	ld	a,0 (iy)
   50DA F5            [11] 3161 	push	af
   50DB 33            [ 6] 3162 	inc	sp
   50DC FD 21 03 00   [14] 3163 	ld	iy,#3
   50E0 FD 39         [15] 3164 	add	iy,sp
   50E2 FD 7E 00      [19] 3165 	ld	a,0 (iy)
   50E5 F5            [11] 3166 	push	af
   50E6 33            [ 6] 3167 	inc	sp
   50E7 D5            [11] 3168 	push	de
   50E8 CD 08 4C      [17] 3169 	call	_drawTile
   50EB 21 06 00      [10] 3170 	ld	hl,#6
   50EE 39            [11] 3171 	add	hl,sp
   50EF F9            [ 6] 3172 	ld	sp,hl
                           3173 ;src/includes/game.h:95: xCursor-=1;
   50F0 DD 6E E8      [19] 3174 	ld	l,-24 (ix)
   50F3 DD 66 E9      [19] 3175 	ld	h,-23 (ix)
   50F6 2B            [ 6] 3176 	dec	hl
   50F7 DD 75 E8      [19] 3177 	ld	-24 (ix),l
   50FA DD 74 E9      [19] 3178 	ld	-23 (ix),h
                           3179 ;src/includes/game.h:96: if(xCursor<0)
   50FD DD CB E9 7E   [20] 3180 	bit	7, -23 (ix)
   5101 28 39         [12] 3181 	jr	Z,00163$
                           3182 ;src/includes/game.h:98: xCursor=0;
   5103 DD 36 E8 00   [19] 3183 	ld	-24 (ix),#0x00
   5107 DD 36 E9 00   [19] 3184 	ld	-23 (ix),#0x00
                           3185 ;src/includes/game.h:99: if(ulx>0)
   510B FD 21 00 00   [14] 3186 	ld	iy,#0
   510F FD 39         [15] 3187 	add	iy,sp
   5111 FD 7E 00      [19] 3188 	ld	a,0 (iy)
   5114 B7            [ 4] 3189 	or	a, a
   5115 28 25         [12] 3190 	jr	Z,00163$
                           3191 ;src/includes/game.h:101: ulx-=1;
   5117 FD 35 00      [23] 3192 	dec	0 (iy)
                           3193 ;src/includes/game.h:102: drawWorld(p_world, ulx, uly);
   511A DD 5E FB      [19] 3194 	ld	e,-5 (ix)
   511D DD 56 FC      [19] 3195 	ld	d,-4 (ix)
   5120 FD 21 01 00   [14] 3196 	ld	iy,#1
   5124 FD 39         [15] 3197 	add	iy,sp
   5126 FD 7E 00      [19] 3198 	ld	a,0 (iy)
   5129 F5            [11] 3199 	push	af
   512A 33            [ 6] 3200 	inc	sp
   512B FD 21 01 00   [14] 3201 	ld	iy,#1
   512F FD 39         [15] 3202 	add	iy,sp
   5131 FD 7E 00      [19] 3203 	ld	a,0 (iy)
   5134 F5            [11] 3204 	push	af
   5135 33            [ 6] 3205 	inc	sp
   5136 D5            [11] 3206 	push	de
   5137 CD 13 4D      [17] 3207 	call	_drawWorld
   513A F1            [10] 3208 	pop	af
   513B F1            [10] 3209 	pop	af
                           3210 ;src/includes/game.h:107: for(i=0; i<14000; i++) {}
   513C                    3211 00163$:
   513C 11 B0 36      [10] 3212 	ld	de,#0x36B0
   513F                    3213 00144$:
   513F 1B            [ 6] 3214 	dec	de
   5140 7A            [ 4] 3215 	ld	a,d
   5141 B3            [ 4] 3216 	or	a,e
   5142 20 FB         [12] 3217 	jr	NZ,00144$
   5144                    3218 00121$:
                           3219 ;src/includes/game.h:110: if ( cpct_isKeyPressed(Key_CursorRight) )
   5144 21 00 02      [10] 3220 	ld	hl,#0x0200
   5147 CD DA 53      [17] 3221 	call	_cpct_isKeyPressed
   514A 7D            [ 4] 3222 	ld	a,l
   514B B7            [ 4] 3223 	or	a, a
   514C CA DA 51      [10] 3224 	jp	Z,00128$
                           3225 ;src/includes/game.h:112: drawTile(p_world, ulx, uly, xCursor, yCursor);
   514F DD 56 E8      [19] 3226 	ld	d,-24 (ix)
   5152 DD 4E F2      [19] 3227 	ld	c,-14 (ix)
   5155 DD 46 F3      [19] 3228 	ld	b,-13 (ix)
   5158 DD 7E F4      [19] 3229 	ld	a,-12 (ix)
   515B F5            [11] 3230 	push	af
   515C 33            [ 6] 3231 	inc	sp
   515D D5            [11] 3232 	push	de
   515E 33            [ 6] 3233 	inc	sp
   515F FD 21 03 00   [14] 3234 	ld	iy,#3
   5163 FD 39         [15] 3235 	add	iy,sp
   5165 FD 7E 00      [19] 3236 	ld	a,0 (iy)
   5168 F5            [11] 3237 	push	af
   5169 33            [ 6] 3238 	inc	sp
   516A FD 21 03 00   [14] 3239 	ld	iy,#3
   516E FD 39         [15] 3240 	add	iy,sp
   5170 FD 7E 00      [19] 3241 	ld	a,0 (iy)
   5173 F5            [11] 3242 	push	af
   5174 33            [ 6] 3243 	inc	sp
   5175 C5            [11] 3244 	push	bc
   5176 CD 08 4C      [17] 3245 	call	_drawTile
   5179 21 06 00      [10] 3246 	ld	hl,#6
   517C 39            [11] 3247 	add	hl,sp
   517D F9            [ 6] 3248 	ld	sp,hl
                           3249 ;src/includes/game.h:113: xCursor+=1;
   517E DD 34 E8      [23] 3250 	inc	-24 (ix)
   5181 20 03         [12] 3251 	jr	NZ,00236$
   5183 DD 34 E9      [23] 3252 	inc	-23 (ix)
   5186                    3253 00236$:
                           3254 ;src/includes/game.h:114: if(xCursor>NBTILE_W-1)
   5186 3E 13         [ 7] 3255 	ld	a,#0x13
   5188 DD BE E8      [19] 3256 	cp	a, -24 (ix)
   518B 3E 00         [ 7] 3257 	ld	a,#0x00
   518D DD 9E E9      [19] 3258 	sbc	a, -23 (ix)
   5190 E2 95 51      [10] 3259 	jp	PO, 00237$
   5193 EE 80         [ 7] 3260 	xor	a, #0x80
   5195                    3261 00237$:
   5195 F2 D2 51      [10] 3262 	jp	P,00168$
                           3263 ;src/includes/game.h:116: xCursor=NBTILE_W-1;
   5198 DD 36 E8 13   [19] 3264 	ld	-24 (ix),#0x13
   519C DD 36 E9 00   [19] 3265 	ld	-23 (ix),#0x00
                           3266 ;src/includes/game.h:117: if(ulx<WIDTH-NBTILE_W)
   51A0 FD 21 00 00   [14] 3267 	ld	iy,#0
   51A4 FD 39         [15] 3268 	add	iy,sp
   51A6 FD 7E 00      [19] 3269 	ld	a,0 (iy)
   51A9 D6 3C         [ 7] 3270 	sub	a, #0x3C
   51AB 30 25         [12] 3271 	jr	NC,00168$
                           3272 ;src/includes/game.h:119: ulx+=1;
   51AD FD 34 00      [23] 3273 	inc	0 (iy)
                           3274 ;src/includes/game.h:120: drawWorld(p_world, ulx, uly);
   51B0 DD 5E FE      [19] 3275 	ld	e,-2 (ix)
   51B3 DD 56 FF      [19] 3276 	ld	d,-1 (ix)
   51B6 FD 21 01 00   [14] 3277 	ld	iy,#1
   51BA FD 39         [15] 3278 	add	iy,sp
   51BC FD 7E 00      [19] 3279 	ld	a,0 (iy)
   51BF F5            [11] 3280 	push	af
   51C0 33            [ 6] 3281 	inc	sp
   51C1 FD 21 01 00   [14] 3282 	ld	iy,#1
   51C5 FD 39         [15] 3283 	add	iy,sp
   51C7 FD 7E 00      [19] 3284 	ld	a,0 (iy)
   51CA F5            [11] 3285 	push	af
   51CB 33            [ 6] 3286 	inc	sp
   51CC D5            [11] 3287 	push	de
   51CD CD 13 4D      [17] 3288 	call	_drawWorld
   51D0 F1            [10] 3289 	pop	af
   51D1 F1            [10] 3290 	pop	af
                           3291 ;src/includes/game.h:125: for(i=0; i<14000; i++) {}
   51D2                    3292 00168$:
   51D2 11 B0 36      [10] 3293 	ld	de,#0x36B0
   51D5                    3294 00147$:
   51D5 1B            [ 6] 3295 	dec	de
   51D6 7A            [ 4] 3296 	ld	a,d
   51D7 B3            [ 4] 3297 	or	a,e
   51D8 20 FB         [12] 3298 	jr	NZ,00147$
   51DA                    3299 00128$:
                           3300 ;src/includes/game.h:128: if ( cpct_isKeyPressed(Key_Esc) )
   51DA 21 08 04      [10] 3301 	ld	hl,#0x0408
   51DD CD DA 53      [17] 3302 	call	_cpct_isKeyPressed
   51E0 7D            [ 4] 3303 	ld	a,l
   51E1 B7            [ 4] 3304 	or	a, a
   51E2 28 0A         [12] 3305 	jr	Z,00130$
                           3306 ;src/includes/game.h:130: exit=1;
   51E4 FD 21 02 00   [14] 3307 	ld	iy,#2
   51E8 FD 39         [15] 3308 	add	iy,sp
   51EA FD 36 00 01   [19] 3309 	ld	0 (iy),#0x01
   51EE                    3310 00130$:
                           3311 ;src/includes/game.h:133: if ( cpct_isKeyPressed(Key_Return) )
   51EE 21 02 04      [10] 3312 	ld	hl,#0x0402
   51F1 CD DA 53      [17] 3313 	call	_cpct_isKeyPressed
   51F4 7D            [ 4] 3314 	ld	a,l
   51F5 B7            [ 4] 3315 	or	a, a
   51F6 28 6C         [12] 3316 	jr	Z,00132$
                           3317 ;src/includes/game.h:135: menuTile(p_world, ulx+xCursor, uly+yCursor);
   51F8 FD 21 03 00   [14] 3318 	ld	iy,#3
   51FC FD 39         [15] 3319 	add	iy,sp
   51FE FD 6E 00      [19] 3320 	ld	l,0 (iy)
   5201 FD 21 01 00   [14] 3321 	ld	iy,#1
   5205 FD 39         [15] 3322 	add	iy,sp
   5207 FD 7E 00      [19] 3323 	ld	a, 0 (iy)
   520A 85            [ 4] 3324 	add	a, l
   520B 4F            [ 4] 3325 	ld	c,a
   520C DD 6E E8      [19] 3326 	ld	l,-24 (ix)
   520F FD 21 00 00   [14] 3327 	ld	iy,#0
   5213 FD 39         [15] 3328 	add	iy,sp
   5215 FD 7E 00      [19] 3329 	ld	a, 0 (iy)
   5218 85            [ 4] 3330 	add	a, l
   5219 5F            [ 4] 3331 	ld	e,a
   521A DD 6E F0      [19] 3332 	ld	l,-16 (ix)
   521D DD 66 F1      [19] 3333 	ld	h,-15 (ix)
   5220 51            [ 4] 3334 	ld	d, c
   5221 D5            [11] 3335 	push	de
   5222 E5            [11] 3336 	push	hl
   5223 CD D5 4D      [17] 3337 	call	_menuTile
   5226 F1            [10] 3338 	pop	af
   5227 F1            [10] 3339 	pop	af
                           3340 ;src/includes/game.h:136: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   5228 21 00 00      [10] 3341 	ld	hl,#0x0000
   522B E5            [11] 3342 	push	hl
   522C 2E 00         [ 7] 3343 	ld	l, #0x00
   522E E5            [11] 3344 	push	hl
   522F CD E7 55      [17] 3345 	call	_cpct_px2byteM1
   5232 F1            [10] 3346 	pop	af
   5233 F1            [10] 3347 	pop	af
   5234 65            [ 4] 3348 	ld	h,l
   5235 01 00 40      [10] 3349 	ld	bc,#0x4000
   5238 C5            [11] 3350 	push	bc
   5239 E5            [11] 3351 	push	hl
   523A 33            [ 6] 3352 	inc	sp
   523B 21 00 C0      [10] 3353 	ld	hl,#0xC000
   523E E5            [11] 3354 	push	hl
   523F CD D9 55      [17] 3355 	call	_cpct_memset
                           3356 ;src/includes/game.h:137: drawWorld(p_world, ulx, uly);
   5242 DD 5E F9      [19] 3357 	ld	e,-7 (ix)
   5245 DD 56 FA      [19] 3358 	ld	d,-6 (ix)
   5248 FD 21 01 00   [14] 3359 	ld	iy,#1
   524C FD 39         [15] 3360 	add	iy,sp
   524E FD 7E 00      [19] 3361 	ld	a,0 (iy)
   5251 F5            [11] 3362 	push	af
   5252 33            [ 6] 3363 	inc	sp
   5253 FD 21 01 00   [14] 3364 	ld	iy,#1
   5257 FD 39         [15] 3365 	add	iy,sp
   5259 FD 7E 00      [19] 3366 	ld	a,0 (iy)
   525C F5            [11] 3367 	push	af
   525D 33            [ 6] 3368 	inc	sp
   525E D5            [11] 3369 	push	de
   525F CD 13 4D      [17] 3370 	call	_drawWorld
   5262 F1            [10] 3371 	pop	af
   5263 F1            [10] 3372 	pop	af
   5264                    3373 00132$:
                           3374 ;src/includes/game.h:140: drawCursor(xCursor, yCursor, 0);
   5264 DD 56 E8      [19] 3375 	ld	d,-24 (ix)
   5267 AF            [ 4] 3376 	xor	a, a
   5268 F5            [11] 3377 	push	af
   5269 33            [ 6] 3378 	inc	sp
   526A DD 7E F4      [19] 3379 	ld	a,-12 (ix)
   526D F5            [11] 3380 	push	af
   526E 33            [ 6] 3381 	inc	sp
   526F D5            [11] 3382 	push	de
   5270 33            [ 6] 3383 	inc	sp
   5271 CD 4E 49      [17] 3384 	call	_drawCursor
   5274 F1            [10] 3385 	pop	af
   5275 33            [ 6] 3386 	inc	sp
                           3387 ;src/includes/game.h:142: while(!exit);
   5276 FD 21 02 00   [14] 3388 	ld	iy,#2
   527A FD 39         [15] 3389 	add	iy,sp
   527C FD 7E 00      [19] 3390 	ld	a,0 (iy)
   527F B7            [ 4] 3391 	or	a, a
   5280 CA 69 4F      [10] 3392 	jp	Z,00133$
   5283 DD F9         [10] 3393 	ld	sp, ix
   5285 DD E1         [14] 3394 	pop	ix
   5287 C9            [10] 3395 	ret
                           3396 ;src/main.c:16: void drawTrain() 
                           3397 ;	---------------------------------
                           3398 ; Function drawTrain
                           3399 ; ---------------------------------
   5288                    3400 _drawTrain::
                           3401 ;src/main.c:54: }
   5288 C9            [10] 3402 	ret
                           3403 ;src/main.c:57: void main(void)
                           3404 ;	---------------------------------
                           3405 ; Function main
                           3406 ; ---------------------------------
   5289                    3407 _main::
   5289 DD E5         [15] 3408 	push	ix
   528B DD 21 00 00   [14] 3409 	ld	ix,#0
   528F DD 39         [15] 3410 	add	ix,sp
   5291 21 ED FF      [10] 3411 	ld	hl,#-19
   5294 39            [11] 3412 	add	hl,sp
   5295 F9            [ 6] 3413 	ld	sp,hl
                           3414 ;src/main.c:62: const char *menuMain[] = { 
   5296 21 00 00      [10] 3415 	ld	hl,#0x0000
   5299 39            [11] 3416 	add	hl,sp
   529A 5D            [ 4] 3417 	ld	e,l
   529B 54            [ 4] 3418 	ld	d,h
   529C 36 83         [10] 3419 	ld	(hl),#<(___str_7)
   529E 23            [ 6] 3420 	inc	hl
   529F 36 53         [10] 3421 	ld	(hl),#>(___str_7)
   52A1 6B            [ 4] 3422 	ld	l, e
   52A2 62            [ 4] 3423 	ld	h, d
   52A3 23            [ 6] 3424 	inc	hl
   52A4 23            [ 6] 3425 	inc	hl
   52A5 01 8C 53      [10] 3426 	ld	bc,#___str_8+0
   52A8 71            [ 7] 3427 	ld	(hl),c
   52A9 23            [ 6] 3428 	inc	hl
   52AA 70            [ 7] 3429 	ld	(hl),b
   52AB 21 04 00      [10] 3430 	ld	hl,#0x0004
   52AE 19            [11] 3431 	add	hl,de
   52AF 01 94 53      [10] 3432 	ld	bc,#___str_9+0
   52B2 71            [ 7] 3433 	ld	(hl),c
   52B3 23            [ 6] 3434 	inc	hl
   52B4 70            [ 7] 3435 	ld	(hl),b
                           3436 ;src/main.c:68: const char *windowCredit[] = { 
   52B5 21 09 00      [10] 3437 	ld	hl,#0x0009
   52B8 39            [11] 3438 	add	hl,sp
   52B9 DD 75 FC      [19] 3439 	ld	-4 (ix),l
   52BC DD 74 FD      [19] 3440 	ld	-3 (ix),h
   52BF DD 6E FC      [19] 3441 	ld	l,-4 (ix)
   52C2 DD 66 FD      [19] 3442 	ld	h,-3 (ix)
   52C5 36 99         [10] 3443 	ld	(hl),#<(___str_10)
   52C7 23            [ 6] 3444 	inc	hl
   52C8 36 53         [10] 3445 	ld	(hl),#>(___str_10)
   52CA DD 6E FC      [19] 3446 	ld	l,-4 (ix)
   52CD DD 66 FD      [19] 3447 	ld	h,-3 (ix)
   52D0 23            [ 6] 3448 	inc	hl
   52D1 23            [ 6] 3449 	inc	hl
   52D2 01 A2 53      [10] 3450 	ld	bc,#___str_11+0
   52D5 71            [ 7] 3451 	ld	(hl),c
   52D6 23            [ 6] 3452 	inc	hl
   52D7 70            [ 7] 3453 	ld	(hl),b
   52D8 DD 7E FC      [19] 3454 	ld	a,-4 (ix)
   52DB C6 04         [ 7] 3455 	add	a, #0x04
   52DD 6F            [ 4] 3456 	ld	l,a
   52DE DD 7E FD      [19] 3457 	ld	a,-3 (ix)
   52E1 CE 00         [ 7] 3458 	adc	a, #0x00
   52E3 67            [ 4] 3459 	ld	h,a
   52E4 01 A3 53      [10] 3460 	ld	bc,#___str_12+0
   52E7 71            [ 7] 3461 	ld	(hl),c
   52E8 23            [ 6] 3462 	inc	hl
   52E9 70            [ 7] 3463 	ld	(hl),b
                           3464 ;src/main.c:74: firmware = cpct_disableFirmware();
   52EA D5            [11] 3465 	push	de
   52EB CD 0F 56      [17] 3466 	call	_cpct_disableFirmware
   52EE D1            [10] 3467 	pop	de
   52EF DD 75 F3      [19] 3468 	ld	-13 (ix),l
   52F2 DD 74 F4      [19] 3469 	ld	-12 (ix),h
                           3470 ;src/main.c:76: cpct_fw2hw(paletteTrains, 16);
   52F5 21 13 40      [10] 3471 	ld	hl,#_paletteTrains
   52F8 D5            [11] 3472 	push	de
   52F9 01 10 00      [10] 3473 	ld	bc,#0x0010
   52FC C5            [11] 3474 	push	bc
   52FD E5            [11] 3475 	push	hl
   52FE CD 1B 55      [17] 3476 	call	_cpct_fw2hw
   5301 D1            [10] 3477 	pop	de
                           3478 ;src/main.c:77: cpct_fw2hw(paletteMenusM2, 2);
   5302 21 27 40      [10] 3479 	ld	hl,#_paletteMenusM2
   5305 D5            [11] 3480 	push	de
   5306 01 02 00      [10] 3481 	ld	bc,#0x0002
   5309 C5            [11] 3482 	push	bc
   530A E5            [11] 3483 	push	hl
   530B CD 1B 55      [17] 3484 	call	_cpct_fw2hw
   530E D1            [10] 3485 	pop	de
                           3486 ;src/main.c:78: cpct_fw2hw(paletteMenusM1, 4);
   530F 21 23 40      [10] 3487 	ld	hl,#_paletteMenusM1
   5312 D5            [11] 3488 	push	de
   5313 01 04 00      [10] 3489 	ld	bc,#0x0004
   5316 C5            [11] 3490 	push	bc
   5317 E5            [11] 3491 	push	hl
   5318 CD 1B 55      [17] 3492 	call	_cpct_fw2hw
   531B D1            [10] 3493 	pop	de
                           3494 ;src/main.c:80: cpct_setBorder(paletteTrains[12]);
   531C 3A 1F 40      [13] 3495 	ld	a, (#_paletteTrains + 12)
   531F D5            [11] 3496 	push	de
   5320 57            [ 4] 3497 	ld	d,a
   5321 1E 10         [ 7] 3498 	ld	e,#0x10
   5323 D5            [11] 3499 	push	de
   5324 CD E6 53      [17] 3500 	call	_cpct_setPALColour
   5327 CD BD 42      [17] 3501 	call	_putM2
   532A D1            [10] 3502 	pop	de
                           3503 ;src/main.c:84: do{
   532B DD 73 FE      [19] 3504 	ld	-2 (ix),e
   532E DD 72 FF      [19] 3505 	ld	-1 (ix),d
   5331                    3506 00105$:
                           3507 ;src/main.c:85: menuChoice = drawMenu(menuMain,3);
   5331 DD 5E FE      [19] 3508 	ld	e,-2 (ix)
   5334 DD 56 FF      [19] 3509 	ld	d,-1 (ix)
   5337 3E 03         [ 7] 3510 	ld	a,#0x03
   5339 F5            [11] 3511 	push	af
   533A 33            [ 6] 3512 	inc	sp
   533B D5            [11] 3513 	push	de
   533C CD C3 46      [17] 3514 	call	_drawMenu
   533F F1            [10] 3515 	pop	af
   5340 33            [ 6] 3516 	inc	sp
                           3517 ;src/main.c:87: if(menuChoice==0)
   5341 DD 75 F5      [19] 3518 	ld	-11 (ix), l
   5344 7D            [ 4] 3519 	ld	a, l
   5345 B7            [ 4] 3520 	or	a, a
   5346 20 09         [12] 3521 	jr	NZ,00102$
                           3522 ;src/main.c:89: putM1();
   5348 CD A9 42      [17] 3523 	call	_putM1
                           3524 ;src/main.c:91: game();
   534B CD 76 4E      [17] 3525 	call	_game
                           3526 ;src/main.c:93: putM2();
   534E CD BD 42      [17] 3527 	call	_putM2
   5351                    3528 00102$:
                           3529 ;src/main.c:96: if(menuChoice==1)
   5351 DD 7E F5      [19] 3530 	ld	a,-11 (ix)
   5354 3D            [ 4] 3531 	dec	a
   5355 20 10         [12] 3532 	jr	NZ,00106$
                           3533 ;src/main.c:97: drawWindow(windowCredit,3,0);
   5357 DD 5E FC      [19] 3534 	ld	e,-4 (ix)
   535A DD 56 FD      [19] 3535 	ld	d,-3 (ix)
   535D 21 03 00      [10] 3536 	ld	hl,#0x0003
   5360 E5            [11] 3537 	push	hl
   5361 D5            [11] 3538 	push	de
   5362 CD B1 47      [17] 3539 	call	_drawWindow
   5365 F1            [10] 3540 	pop	af
   5366 F1            [10] 3541 	pop	af
   5367                    3542 00106$:
                           3543 ;src/main.c:99: while(menuChoice!=2);
   5367 DD 7E F5      [19] 3544 	ld	a,-11 (ix)
   536A D6 02         [ 7] 3545 	sub	a, #0x02
   536C 20 C3         [12] 3546 	jr	NZ,00105$
                           3547 ;src/main.c:101: cpct_setVideoMode(0);
   536E AF            [ 4] 3548 	xor	a, a
   536F F5            [11] 3549 	push	af
   5370 33            [ 6] 3550 	inc	sp
   5371 CD AB 55      [17] 3551 	call	_cpct_setVideoMode
   5374 33            [ 6] 3552 	inc	sp
                           3553 ;src/main.c:102: cpct_reenableFirmware(firmware);
   5375 DD 6E F3      [19] 3554 	ld	l,-13 (ix)
   5378 DD 66 F4      [19] 3555 	ld	h,-12 (ix)
   537B CD 79 55      [17] 3556 	call	_cpct_reenableFirmware
   537E DD F9         [10] 3557 	ld	sp, ix
   5380 DD E1         [14] 3558 	pop	ix
   5382 C9            [10] 3559 	ret
   5383                    3560 ___str_7:
   5383 4E 65 77 20 67 61  3561 	.ascii "New game"
        6D 65
   538B 00                 3562 	.db 0x00
   538C                    3563 ___str_8:
   538C 43 72 65 64 69 74  3564 	.ascii "Credits"
        73
   5393 00                 3565 	.db 0x00
   5394                    3566 ___str_9:
   5394 51 75 69 74        3567 	.ascii "Quit"
   5398 00                 3568 	.db 0x00
   5399                    3569 ___str_10:
   5399 52 61 69 6C 77 61  3570 	.ascii "Railways"
        79 73
   53A1 00                 3571 	.db 0x00
   53A2                    3572 ___str_11:
   53A2 00                 3573 	.db 0x00
   53A3                    3574 ___str_12:
   53A3 54 72 65 77 64 62  3575 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   53BD 00                 3576 	.db 0x00
                           3577 	.area _CODE
                           3578 	.area _INITIALIZER
                           3579 	.area _CABS (ABS)
