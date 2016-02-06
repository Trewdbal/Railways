                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.4 #9329 (Linux)
                              4 ; This file was generated Sat Feb  6 15:06:27 2016
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
                             16 	.globl _menuStations
                             17 	.globl _windowInfoTile
                             18 	.globl _drawWorld
                             19 	.globl _drawScrolls
                             20 	.globl _drawTile
                             21 	.globl _generateWorld
                             22 	.globl _patternTile
                             23 	.globl _drawCursor
                             24 	.globl _drawWindow
                             25 	.globl _drawMenu
                             26 	.globl _drawMenuEntry
                             27 	.globl _EraseMenuEntry
                             28 	.globl _drawBoxM2
                             29 	.globl _drawBoxM0
                             30 	.globl _putM2
                             31 	.globl _putM1
                             32 	.globl _putM0
                             33 	.globl _strlen
                             34 	.globl _cpct_setSeed_mxor
                             35 	.globl _cpct_getRandom_mxor_u8
                             36 	.globl _cpct_getRandomUniform_u8_f
                             37 	.globl _cpct_getScreenPtr
                             38 	.globl _cpct_setPALColour
                             39 	.globl _cpct_setPalette
                             40 	.globl _cpct_fw2hw
                             41 	.globl _cpct_count2VSYNC
                             42 	.globl _cpct_setVideoMode
                             43 	.globl _cpct_drawStringM2
                             44 	.globl _cpct_drawSolidBox
                             45 	.globl _cpct_drawSprite
                             46 	.globl _cpct_px2byteM1
                             47 	.globl _cpct_px2byteM0
                             48 	.globl _cpct_getBit
                             49 	.globl _cpct_isKeyPressed
                             50 	.globl _cpct_scanKeyboard
                             51 	.globl _cpct_memset
                             52 	.globl _cpct_disableFirmware
                             53 	.globl _cpct_reenableFirmware
                             54 	.globl _CURSOR_MODE
                             55 	.globl _p_world
                             56 	.globl _rail_ns_e
                             57 	.globl _rail_ns_w
                             58 	.globl _rail_ew_s
                             59 	.globl _rail_ew_n
                             60 	.globl _rail_ws
                             61 	.globl _rail_wn
                             62 	.globl _rail_es
                             63 	.globl _rail_en
                             64 	.globl _rail_ns
                             65 	.globl _rail_ew
                             66 	.globl _station_large_ew
                             67 	.globl _station_large_ns
                             68 	.globl _station_medium_ew
                             69 	.globl _station_medium_ns
                             70 	.globl _station_small_ew
                             71 	.globl _station_small_ns
                             72 	.globl _livestock
                             73 	.globl _farm2
                             74 	.globl _farm1
                             75 	.globl _water
                             76 	.globl _dwellings3
                             77 	.globl _dwellings2
                             78 	.globl _dwellings1
                             79 	.globl _forest
                             80 	.globl _grass2
                             81 	.globl _grass1
                             82 	.globl _paletteMenusM2
                             83 	.globl _paletteMenusM1
                             84 	.globl _paletteTrains
                             85 ;--------------------------------------------------------
                             86 ; special function registers
                             87 ;--------------------------------------------------------
                             88 ;--------------------------------------------------------
                             89 ; ram data
                             90 ;--------------------------------------------------------
                             91 	.area _DATA
   670C                      92 _p_world::
   670C                      93 	.ds 3840
                             94 ;--------------------------------------------------------
                             95 ; ram data
                             96 ;--------------------------------------------------------
                             97 	.area _INITIALIZED
   760C                      98 _CURSOR_MODE::
   760C                      99 	.ds 1
                            100 ;--------------------------------------------------------
                            101 ; absolute external ram data
                            102 ;--------------------------------------------------------
                            103 	.area _DABS (ABS)
                            104 ;--------------------------------------------------------
                            105 ; global & static initialisations
                            106 ;--------------------------------------------------------
                            107 	.area _HOME
                            108 	.area _GSINIT
                            109 	.area _GSFINAL
                            110 	.area _GSINIT
                            111 ;--------------------------------------------------------
                            112 ; Home
                            113 ;--------------------------------------------------------
                            114 	.area _HOME
                            115 	.area _HOME
                            116 ;--------------------------------------------------------
                            117 ; code
                            118 ;--------------------------------------------------------
                            119 	.area _CODE
                            120 ;src/includes/gui.h:1: void putM0(void)
                            121 ;	---------------------------------
                            122 ; Function putM0
                            123 ; ---------------------------------
   4000                     124 _putM0::
                            125 ;src/includes/gui.h:3: cpct_setVideoMode(0);
   4000 AF            [ 4]  126 	xor	a, a
   4001 F5            [11]  127 	push	af
   4002 33            [ 6]  128 	inc	sp
   4003 CD D6 64      [17]  129 	call	_cpct_setVideoMode
   4006 33            [ 6]  130 	inc	sp
                            131 ;src/includes/gui.h:5: cpct_setPalette(paletteTrains, 16);
   4007 21 13 40      [10]  132 	ld	hl,#_paletteTrains
   400A 01 10 00      [10]  133 	ld	bc,#0x0010
   400D C5            [11]  134 	push	bc
   400E E5            [11]  135 	push	hl
   400F CD BF 62      [17]  136 	call	_cpct_setPalette
   4012 C9            [10]  137 	ret
   4013                     138 _paletteTrains:
   4013 00                  139 	.db #0x00	; 0
   4014 1A                  140 	.db #0x1A	; 26
   4015 0D                  141 	.db #0x0D	; 13
   4016 03                  142 	.db #0x03	; 3
   4017 0F                  143 	.db #0x0F	; 15
   4018 06                  144 	.db #0x06	; 6
   4019 10                  145 	.db #0x10	; 16
   401A 09                  146 	.db #0x09	; 9
   401B 0A                  147 	.db #0x0A	; 10
   401C 14                  148 	.db #0x14	; 20
   401D 02                  149 	.db #0x02	; 2
   401E 01                  150 	.db #0x01	; 1
   401F 13                  151 	.db #0x13	; 19
   4020 18                  152 	.db #0x18	; 24
   4021 0B                  153 	.db #0x0B	; 11
   4022 19                  154 	.db #0x19	; 25
   4023                     155 _paletteMenusM1:
   4023 00                  156 	.db #0x00	; 0
   4024 0F                  157 	.db #0x0F	; 15
   4025 09                  158 	.db #0x09	; 9
   4026 16                  159 	.db #0x16	; 22
   4027                     160 _paletteMenusM2:
   4027 00                  161 	.db #0x00	; 0
   4028 14                  162 	.db #0x14	; 20
   4029                     163 _grass1:
   4029 0F                  164 	.db #0x0F	; 15
   402A 0F                  165 	.db #0x0F	; 15
   402B 0F                  166 	.db #0x0F	; 15
   402C 8F                  167 	.db #0x8F	; 143
   402D 0F                  168 	.db #0x0F	; 15
   402E 0F                  169 	.db #0x0F	; 15
   402F 0F                  170 	.db #0x0F	; 15
   4030 0F                  171 	.db #0x0F	; 15
   4031 1F                  172 	.db #0x1F	; 31
   4032 0F                  173 	.db #0x0F	; 15
   4033 2F                  174 	.db #0x2F	; 47
   4034 0F                  175 	.db #0x0F	; 15
   4035 0F                  176 	.db #0x0F	; 15
   4036 0F                  177 	.db #0x0F	; 15
   4037 0F                  178 	.db #0x0F	; 15
   4038 0F                  179 	.db #0x0F	; 15
   4039 0F                  180 	.db #0x0F	; 15
   403A 0F                  181 	.db #0x0F	; 15
   403B 0F                  182 	.db #0x0F	; 15
   403C 0F                  183 	.db #0x0F	; 15
   403D 0F                  184 	.db #0x0F	; 15
   403E 0F                  185 	.db #0x0F	; 15
   403F 0F                  186 	.db #0x0F	; 15
   4040 0F                  187 	.db #0x0F	; 15
   4041 0F                  188 	.db #0x0F	; 15
   4042 0F                  189 	.db #0x0F	; 15
   4043 0F                  190 	.db #0x0F	; 15
   4044 0F                  191 	.db #0x0F	; 15
   4045 4F                  192 	.db #0x4F	; 79	'O'
   4046 0F                  193 	.db #0x0F	; 15
   4047 0F                  194 	.db #0x0F	; 15
   4048 8F                  195 	.db #0x8F	; 143
   4049 0F                  196 	.db #0x0F	; 15
   404A 4F                  197 	.db #0x4F	; 79	'O'
   404B 0F                  198 	.db #0x0F	; 15
   404C 0F                  199 	.db #0x0F	; 15
   404D 0F                  200 	.db #0x0F	; 15
   404E 0F                  201 	.db #0x0F	; 15
   404F 0F                  202 	.db #0x0F	; 15
   4050 0F                  203 	.db #0x0F	; 15
   4051 0F                  204 	.db #0x0F	; 15
   4052 0F                  205 	.db #0x0F	; 15
   4053 0F                  206 	.db #0x0F	; 15
   4054 0F                  207 	.db #0x0F	; 15
   4055 0F                  208 	.db #0x0F	; 15
   4056 1F                  209 	.db #0x1F	; 31
   4057 0F                  210 	.db #0x0F	; 15
   4058 0F                  211 	.db #0x0F	; 15
   4059 0F                  212 	.db #0x0F	; 15
   405A 0F                  213 	.db #0x0F	; 15
   405B 0F                  214 	.db #0x0F	; 15
   405C 8F                  215 	.db #0x8F	; 143
   405D 0F                  216 	.db #0x0F	; 15
   405E 0F                  217 	.db #0x0F	; 15
   405F 0F                  218 	.db #0x0F	; 15
   4060 0F                  219 	.db #0x0F	; 15
   4061 0F                  220 	.db #0x0F	; 15
   4062 0F                  221 	.db #0x0F	; 15
   4063 0F                  222 	.db #0x0F	; 15
   4064 0F                  223 	.db #0x0F	; 15
   4065 4F                  224 	.db #0x4F	; 79	'O'
   4066 0F                  225 	.db #0x0F	; 15
   4067 8F                  226 	.db #0x8F	; 143
   4068 0F                  227 	.db #0x0F	; 15
   4069                     228 _grass2:
   4069 0F                  229 	.db #0x0F	; 15
   406A 0F                  230 	.db #0x0F	; 15
   406B 0F                  231 	.db #0x0F	; 15
   406C 0F                  232 	.db #0x0F	; 15
   406D 0F                  233 	.db #0x0F	; 15
   406E 0F                  234 	.db #0x0F	; 15
   406F 0F                  235 	.db #0x0F	; 15
   4070 2F                  236 	.db #0x2F	; 47
   4071 0F                  237 	.db #0x0F	; 15
   4072 8F                  238 	.db #0x8F	; 143
   4073 0F                  239 	.db #0x0F	; 15
   4074 0F                  240 	.db #0x0F	; 15
   4075 0F                  241 	.db #0x0F	; 15
   4076 0F                  242 	.db #0x0F	; 15
   4077 0F                  243 	.db #0x0F	; 15
   4078 0F                  244 	.db #0x0F	; 15
   4079 0F                  245 	.db #0x0F	; 15
   407A 0F                  246 	.db #0x0F	; 15
   407B 0F                  247 	.db #0x0F	; 15
   407C 0F                  248 	.db #0x0F	; 15
   407D 4F                  249 	.db #0x4F	; 79	'O'
   407E 0F                  250 	.db #0x0F	; 15
   407F 0F                  251 	.db #0x0F	; 15
   4080 0F                  252 	.db #0x0F	; 15
   4081 0F                  253 	.db #0x0F	; 15
   4082 0F                  254 	.db #0x0F	; 15
   4083 2F                  255 	.db #0x2F	; 47
   4084 0F                  256 	.db #0x0F	; 15
   4085 0F                  257 	.db #0x0F	; 15
   4086 0F                  258 	.db #0x0F	; 15
   4087 0F                  259 	.db #0x0F	; 15
   4088 0F                  260 	.db #0x0F	; 15
   4089 0F                  261 	.db #0x0F	; 15
   408A 4F                  262 	.db #0x4F	; 79	'O'
   408B 0F                  263 	.db #0x0F	; 15
   408C 0F                  264 	.db #0x0F	; 15
   408D 0F                  265 	.db #0x0F	; 15
   408E 0F                  266 	.db #0x0F	; 15
   408F 0F                  267 	.db #0x0F	; 15
   4090 0F                  268 	.db #0x0F	; 15
   4091 0F                  269 	.db #0x0F	; 15
   4092 0F                  270 	.db #0x0F	; 15
   4093 0F                  271 	.db #0x0F	; 15
   4094 0F                  272 	.db #0x0F	; 15
   4095 0F                  273 	.db #0x0F	; 15
   4096 0F                  274 	.db #0x0F	; 15
   4097 0F                  275 	.db #0x0F	; 15
   4098 8F                  276 	.db #0x8F	; 143
   4099 0F                  277 	.db #0x0F	; 15
   409A 0F                  278 	.db #0x0F	; 15
   409B 0F                  279 	.db #0x0F	; 15
   409C 0F                  280 	.db #0x0F	; 15
   409D 2F                  281 	.db #0x2F	; 47
   409E 1F                  282 	.db #0x1F	; 31
   409F 0F                  283 	.db #0x0F	; 15
   40A0 0F                  284 	.db #0x0F	; 15
   40A1 0F                  285 	.db #0x0F	; 15
   40A2 0F                  286 	.db #0x0F	; 15
   40A3 0F                  287 	.db #0x0F	; 15
   40A4 2F                  288 	.db #0x2F	; 47
   40A5 0F                  289 	.db #0x0F	; 15
   40A6 0F                  290 	.db #0x0F	; 15
   40A7 0F                  291 	.db #0x0F	; 15
   40A8 0F                  292 	.db #0x0F	; 15
   40A9                     293 _forest:
   40A9 0F                  294 	.db #0x0F	; 15
   40AA 0F                  295 	.db #0x0F	; 15
   40AB 0E                  296 	.db #0x0E	; 14
   40AC 03                  297 	.db #0x03	; 3
   40AD 0E                  298 	.db #0x0E	; 14
   40AE 03                  299 	.db #0x03	; 3
   40AF 0E                  300 	.db #0x0E	; 14
   40B0 EF                  301 	.db #0xEF	; 239
   40B1 0E                  302 	.db #0x0E	; 14
   40B2 EF                  303 	.db #0xEF	; 239
   40B3 0F                  304 	.db #0x0F	; 15
   40B4 EF                  305 	.db #0xEF	; 239
   40B5 0E                  306 	.db #0x0E	; 14
   40B6 FF                  307 	.db #0xFF	; 255
   40B7 0F                  308 	.db #0x0F	; 15
   40B8 0F                  309 	.db #0x0F	; 15
   40B9 07                  310 	.db #0x07	; 7
   40BA 6F                  311 	.db #0x6F	; 111	'o'
   40BB 0C                  312 	.db #0x0C	; 12
   40BC 0F                  313 	.db #0x0F	; 15
   40BD CF                  314 	.db #0xCF	; 207
   40BE 0F                  315 	.db #0x0F	; 15
   40BF 19                  316 	.db #0x19	; 25
   40C0 8F                  317 	.db #0x8F	; 143
   40C1 CE                  318 	.db #0xCE	; 206
   40C2 03                  319 	.db #0x03	; 3
   40C3 3B                  320 	.db #0x3B	; 59
   40C4 8F                  321 	.db #0x8F	; 143
   40C5 CE                  322 	.db #0xCE	; 206
   40C6 CF                  323 	.db #0xCF	; 207
   40C7 3B                  324 	.db #0x3B	; 59
   40C8 0F                  325 	.db #0x0F	; 15
   40C9 0E                  326 	.db #0x0E	; 14
   40CA EF                  327 	.db #0xEF	; 239
   40CB 3F                  328 	.db #0x3F	; 63
   40CC 0F                  329 	.db #0x0F	; 15
   40CD 0F                  330 	.db #0x0F	; 15
   40CE EF                  331 	.db #0xEF	; 239
   40CF 0F                  332 	.db #0x0F	; 15
   40D0 0F                  333 	.db #0x0F	; 15
   40D1 0E                  334 	.db #0x0E	; 14
   40D2 07                  335 	.db #0x07	; 7
   40D3 03                  336 	.db #0x03	; 3
   40D4 0F                  337 	.db #0x0F	; 15
   40D5 1D                  338 	.db #0x1D	; 29
   40D6 CE                  339 	.db #0xCE	; 206
   40D7 EF                  340 	.db #0xEF	; 239
   40D8 09                  341 	.db #0x09	; 9
   40D9 3B                  342 	.db #0x3B	; 59
   40DA 8F                  343 	.db #0x8F	; 143
   40DB CE                  344 	.db #0xCE	; 206
   40DC 67                  345 	.db #0x67	; 103	'g'
   40DD 3B                  346 	.db #0x3B	; 59
   40DE 8F                  347 	.db #0x8F	; 143
   40DF 1D                  348 	.db #0x1D	; 29
   40E0 EF                  349 	.db #0xEF	; 239
   40E1 2F                  350 	.db #0x2F	; 47
   40E2 0F                  351 	.db #0x0F	; 15
   40E3 1D                  352 	.db #0x1D	; 29
   40E4 EF                  353 	.db #0xEF	; 239
   40E5 0F                  354 	.db #0x0F	; 15
   40E6 0F                  355 	.db #0x0F	; 15
   40E7 0F                  356 	.db #0x0F	; 15
   40E8 CF                  357 	.db #0xCF	; 207
   40E9                     358 _dwellings1:
   40E9 0F                  359 	.db #0x0F	; 15
   40EA 0F                  360 	.db #0x0F	; 15
   40EB 0F                  361 	.db #0x0F	; 15
   40EC 0F                  362 	.db #0x0F	; 15
   40ED 08                  363 	.db #0x08	; 8
   40EE 03                  364 	.db #0x03	; 3
   40EF 0C                  365 	.db #0x0C	; 12
   40F0 07                  366 	.db #0x07	; 7
   40F1 38                  367 	.db #0x38	; 56	'8'
   40F2 E1                  368 	.db #0xE1	; 225
   40F3 1C                  369 	.db #0x1C	; 28
   40F4 C3                  370 	.db #0xC3	; 195
   40F5 3C                  371 	.db #0x3C	; 60
   40F6 E1                  372 	.db #0xE1	; 225
   40F7 1C                  373 	.db #0x1C	; 28
   40F8 C3                  374 	.db #0xC3	; 195
   40F9 0F                  375 	.db #0x0F	; 15
   40FA 0F                  376 	.db #0x0F	; 15
   40FB 1E                  377 	.db #0x1E	; 30
   40FC C3                  378 	.db #0xC3	; 195
   40FD 0F                  379 	.db #0x0F	; 15
   40FE 0F                  380 	.db #0x0F	; 15
   40FF 0F                  381 	.db #0x0F	; 15
   4100 0F                  382 	.db #0x0F	; 15
   4101 0F                  383 	.db #0x0F	; 15
   4102 0F                  384 	.db #0x0F	; 15
   4103 0E                  385 	.db #0x0E	; 14
   4104 03                  386 	.db #0x03	; 3
   4105 0F                  387 	.db #0x0F	; 15
   4106 0E                  388 	.db #0x0E	; 14
   4107 06                  389 	.db #0x06	; 6
   4108 E1                  390 	.db #0xE1	; 225
   4109 0F                  391 	.db #0x0F	; 15
   410A 0E                  392 	.db #0x0E	; 14
   410B C2                  393 	.db #0xC2	; 194
   410C E1                  394 	.db #0xE1	; 225
   410D 0F                  395 	.db #0x0F	; 15
   410E 0E                  396 	.db #0x0E	; 14
   410F C2                  397 	.db #0xC2	; 194
   4110 E1                  398 	.db #0xE1	; 225
   4111 0F                  399 	.db #0x0F	; 15
   4112 0E                  400 	.db #0x0E	; 14
   4113 C3                  401 	.db #0xC3	; 195
   4114 E1                  402 	.db #0xE1	; 225
   4115 0F                  403 	.db #0x0F	; 15
   4116 0E                  404 	.db #0x0E	; 14
   4117 C3                  405 	.db #0xC3	; 195
   4118 0F                  406 	.db #0x0F	; 15
   4119 0F                  407 	.db #0x0F	; 15
   411A 0F                  408 	.db #0x0F	; 15
   411B C3                  409 	.db #0xC3	; 195
   411C 0F                  410 	.db #0x0F	; 15
   411D 08                  411 	.db #0x08	; 8
   411E 07                  412 	.db #0x07	; 7
   411F 0F                  413 	.db #0x0F	; 15
   4120 0F                  414 	.db #0x0F	; 15
   4121 38                  415 	.db #0x38	; 56	'8'
   4122 C3                  416 	.db #0xC3	; 195
   4123 0F                  417 	.db #0x0F	; 15
   4124 0F                  418 	.db #0x0F	; 15
   4125 3C                  419 	.db #0x3C	; 60
   4126 C3                  420 	.db #0xC3	; 195
   4127 0F                  421 	.db #0x0F	; 15
   4128 0F                  422 	.db #0x0F	; 15
   4129                     423 _dwellings2:
   4129 0F                  424 	.db #0x0F	; 15
   412A 0F                  425 	.db #0x0F	; 15
   412B 0F                  426 	.db #0x0F	; 15
   412C 0F                  427 	.db #0x0F	; 15
   412D 0F                  428 	.db #0x0F	; 15
   412E 01                  429 	.db #0x01	; 1
   412F 0F                  430 	.db #0x0F	; 15
   4130 0F                  431 	.db #0x0F	; 15
   4131 0F                  432 	.db #0x0F	; 15
   4132 70                  433 	.db #0x70	; 112	'p'
   4133 0C                  434 	.db #0x0C	; 12
   4134 0F                  435 	.db #0x0F	; 15
   4135 09                  436 	.db #0x09	; 9
   4136 78                  437 	.db #0x78	; 120	'x'
   4137 1C                  438 	.db #0x1C	; 28
   4138 87                  439 	.db #0x87	; 135
   4139 38                  440 	.db #0x38	; 56	'8'
   413A 0F                  441 	.db #0x0F	; 15
   413B 1C                  442 	.db #0x1C	; 28
   413C 87                  443 	.db #0x87	; 135
   413D 38                  444 	.db #0x38	; 56	'8'
   413E 0F                  445 	.db #0x0F	; 15
   413F 1E                  446 	.db #0x1E	; 30
   4140 87                  447 	.db #0x87	; 135
   4141 3C                  448 	.db #0x3C	; 60
   4142 0F                  449 	.db #0x0F	; 15
   4143 0F                  450 	.db #0x0F	; 15
   4144 0F                  451 	.db #0x0F	; 15
   4145 0F                  452 	.db #0x0F	; 15
   4146 0F                  453 	.db #0x0F	; 15
   4147 0F                  454 	.db #0x0F	; 15
   4148 0F                  455 	.db #0x0F	; 15
   4149 0E                  456 	.db #0x0E	; 14
   414A 07                  457 	.db #0x07	; 7
   414B 0F                  458 	.db #0x0F	; 15
   414C 0F                  459 	.db #0x0F	; 15
   414D 0E                  460 	.db #0x0E	; 14
   414E C3                  461 	.db #0xC3	; 195
   414F 00                  462 	.db #0x00	; 0
   4150 07                  463 	.db #0x07	; 7
   4151 0E                  464 	.db #0x0E	; 14
   4152 C3                  465 	.db #0xC3	; 195
   4153 70                  466 	.db #0x70	; 112	'p'
   4154 C3                  467 	.db #0xC3	; 195
   4155 0F                  468 	.db #0x0F	; 15
   4156 C3                  469 	.db #0xC3	; 195
   4157 70                  470 	.db #0x70	; 112	'p'
   4158 C3                  471 	.db #0xC3	; 195
   4159 03                  472 	.db #0x03	; 3
   415A 0F                  473 	.db #0x0F	; 15
   415B 78                  474 	.db #0x78	; 120	'x'
   415C C3                  475 	.db #0xC3	; 195
   415D 61                  476 	.db #0x61	; 97	'a'
   415E 0F                  477 	.db #0x0F	; 15
   415F 0F                  478 	.db #0x0F	; 15
   4160 0F                  479 	.db #0x0F	; 15
   4161 69                  480 	.db #0x69	; 105	'i'
   4162 0F                  481 	.db #0x0F	; 15
   4163 0F                  482 	.db #0x0F	; 15
   4164 0F                  483 	.db #0x0F	; 15
   4165 0F                  484 	.db #0x0F	; 15
   4166 0F                  485 	.db #0x0F	; 15
   4167 0F                  486 	.db #0x0F	; 15
   4168 0F                  487 	.db #0x0F	; 15
   4169                     488 _dwellings3:
   4169 0F                  489 	.db #0x0F	; 15
   416A 0F                  490 	.db #0x0F	; 15
   416B 09                  491 	.db #0x09	; 9
   416C 09                  492 	.db #0x09	; 9
   416D 0F                  493 	.db #0x0F	; 15
   416E 0F                  494 	.db #0x0F	; 15
   416F 38                  495 	.db #0x38	; 56	'8'
   4170 38                  496 	.db #0x38	; 56	'8'
   4171 0E                  497 	.db #0x0E	; 14
   4172 03                  498 	.db #0x03	; 3
   4173 38                  499 	.db #0x38	; 56	'8'
   4174 38                  500 	.db #0x38	; 56	'8'
   4175 0E                  501 	.db #0x0E	; 14
   4176 E1                  502 	.db #0xE1	; 225
   4177 3C                  503 	.db #0x3C	; 60
   4178 3C                  504 	.db #0x3C	; 60
   4179 0E                  505 	.db #0x0E	; 14
   417A E1                  506 	.db #0xE1	; 225
   417B 0F                  507 	.db #0x0F	; 15
   417C 0F                  508 	.db #0x0F	; 15
   417D 0E                  509 	.db #0x0E	; 14
   417E E1                  510 	.db #0xE1	; 225
   417F 08                  511 	.db #0x08	; 8
   4180 07                  512 	.db #0x07	; 7
   4181 0F                  513 	.db #0x0F	; 15
   4182 E1                  514 	.db #0xE1	; 225
   4183 38                  515 	.db #0x38	; 56	'8'
   4184 C3                  516 	.db #0xC3	; 195
   4185 0F                  517 	.db #0x0F	; 15
   4186 0F                  518 	.db #0x0F	; 15
   4187 3C                  519 	.db #0x3C	; 60
   4188 C3                  520 	.db #0xC3	; 195
   4189 0C                  521 	.db #0x0C	; 12
   418A 0F                  522 	.db #0x0F	; 15
   418B 0F                  523 	.db #0x0F	; 15
   418C 0F                  524 	.db #0x0F	; 15
   418D 1C                  525 	.db #0x1C	; 28
   418E 87                  526 	.db #0x87	; 135
   418F 0F                  527 	.db #0x0F	; 15
   4190 0F                  528 	.db #0x0F	; 15
   4191 1E                  529 	.db #0x1E	; 30
   4192 87                  530 	.db #0x87	; 135
   4193 0C                  531 	.db #0x0C	; 12
   4194 07                  532 	.db #0x07	; 7
   4195 0F                  533 	.db #0x0F	; 15
   4196 0F                  534 	.db #0x0F	; 15
   4197 1C                  535 	.db #0x1C	; 28
   4198 C3                  536 	.db #0xC3	; 195
   4199 0F                  537 	.db #0x0F	; 15
   419A 09                  538 	.db #0x09	; 9
   419B 1C                  539 	.db #0x1C	; 28
   419C C3                  540 	.db #0xC3	; 195
   419D 0F                  541 	.db #0x0F	; 15
   419E 38                  542 	.db #0x38	; 56	'8'
   419F 1C                  543 	.db #0x1C	; 28
   41A0 C3                  544 	.db #0xC3	; 195
   41A1 0F                  545 	.db #0x0F	; 15
   41A2 3C                  546 	.db #0x3C	; 60
   41A3 1E                  547 	.db #0x1E	; 30
   41A4 C3                  548 	.db #0xC3	; 195
   41A5 0F                  549 	.db #0x0F	; 15
   41A6 0F                  550 	.db #0x0F	; 15
   41A7 0F                  551 	.db #0x0F	; 15
   41A8 0F                  552 	.db #0x0F	; 15
   41A9                     553 _water:
   41A9 5F                  554 	.db #0x5F	; 95
   41AA 5F                  555 	.db #0x5F	; 95
   41AB 5F                  556 	.db #0x5F	; 95
   41AC 5F                  557 	.db #0x5F	; 95
   41AD AF                  558 	.db #0xAF	; 175
   41AE AF                  559 	.db #0xAF	; 175
   41AF AF                  560 	.db #0xAF	; 175
   41B0 AF                  561 	.db #0xAF	; 175
   41B1 5F                  562 	.db #0x5F	; 95
   41B2 5F                  563 	.db #0x5F	; 95
   41B3 5F                  564 	.db #0x5F	; 95
   41B4 5F                  565 	.db #0x5F	; 95
   41B5 AF                  566 	.db #0xAF	; 175
   41B6 AF                  567 	.db #0xAF	; 175
   41B7 AF                  568 	.db #0xAF	; 175
   41B8 AF                  569 	.db #0xAF	; 175
   41B9 5F                  570 	.db #0x5F	; 95
   41BA 5F                  571 	.db #0x5F	; 95
   41BB 5F                  572 	.db #0x5F	; 95
   41BC 5F                  573 	.db #0x5F	; 95
   41BD AF                  574 	.db #0xAF	; 175
   41BE AF                  575 	.db #0xAF	; 175
   41BF AF                  576 	.db #0xAF	; 175
   41C0 AF                  577 	.db #0xAF	; 175
   41C1 5F                  578 	.db #0x5F	; 95
   41C2 5F                  579 	.db #0x5F	; 95
   41C3 5F                  580 	.db #0x5F	; 95
   41C4 5F                  581 	.db #0x5F	; 95
   41C5 AF                  582 	.db #0xAF	; 175
   41C6 AF                  583 	.db #0xAF	; 175
   41C7 AF                  584 	.db #0xAF	; 175
   41C8 AF                  585 	.db #0xAF	; 175
   41C9 5F                  586 	.db #0x5F	; 95
   41CA 5F                  587 	.db #0x5F	; 95
   41CB 5F                  588 	.db #0x5F	; 95
   41CC 5F                  589 	.db #0x5F	; 95
   41CD AF                  590 	.db #0xAF	; 175
   41CE AF                  591 	.db #0xAF	; 175
   41CF AF                  592 	.db #0xAF	; 175
   41D0 AF                  593 	.db #0xAF	; 175
   41D1 5F                  594 	.db #0x5F	; 95
   41D2 5F                  595 	.db #0x5F	; 95
   41D3 5F                  596 	.db #0x5F	; 95
   41D4 5F                  597 	.db #0x5F	; 95
   41D5 AF                  598 	.db #0xAF	; 175
   41D6 AF                  599 	.db #0xAF	; 175
   41D7 AF                  600 	.db #0xAF	; 175
   41D8 AF                  601 	.db #0xAF	; 175
   41D9 5F                  602 	.db #0x5F	; 95
   41DA 5F                  603 	.db #0x5F	; 95
   41DB 5F                  604 	.db #0x5F	; 95
   41DC 5F                  605 	.db #0x5F	; 95
   41DD AF                  606 	.db #0xAF	; 175
   41DE AF                  607 	.db #0xAF	; 175
   41DF AF                  608 	.db #0xAF	; 175
   41E0 AF                  609 	.db #0xAF	; 175
   41E1 5F                  610 	.db #0x5F	; 95
   41E2 5F                  611 	.db #0x5F	; 95
   41E3 5F                  612 	.db #0x5F	; 95
   41E4 5F                  613 	.db #0x5F	; 95
   41E5 AF                  614 	.db #0xAF	; 175
   41E6 AF                  615 	.db #0xAF	; 175
   41E7 AF                  616 	.db #0xAF	; 175
   41E8 AF                  617 	.db #0xAF	; 175
   41E9                     618 _farm1:
   41E9 03                  619 	.db #0x03	; 3
   41EA 0F                  620 	.db #0x0F	; 15
   41EB 78                  621 	.db #0x78	; 120	'x'
   41EC F0                  622 	.db #0xF0	; 240
   41ED 61                  623 	.db #0x61	; 97	'a'
   41EE 01                  624 	.db #0x01	; 1
   41EF 5F                  625 	.db #0x5F	; 95
   41F0 5F                  626 	.db #0x5F	; 95
   41F1 61                  627 	.db #0x61	; 97	'a'
   41F2 70                  628 	.db #0x70	; 112	'p'
   41F3 78                  629 	.db #0x78	; 120	'x'
   41F4 F0                  630 	.db #0xF0	; 240
   41F5 69                  631 	.db #0x69	; 105	'i'
   41F6 78                  632 	.db #0x78	; 120	'x'
   41F7 2F                  633 	.db #0x2F	; 47
   41F8 AF                  634 	.db #0xAF	; 175
   41F9 0F                  635 	.db #0x0F	; 15
   41FA 0F                  636 	.db #0x0F	; 15
   41FB 78                  637 	.db #0x78	; 120	'x'
   41FC F0                  638 	.db #0xF0	; 240
   41FD 7A                  639 	.db #0x7A	; 122	'z'
   41FE 7A                  640 	.db #0x7A	; 122	'z'
   41FF 5F                  641 	.db #0x5F	; 95
   4200 5F                  642 	.db #0x5F	; 95
   4201 5A                  643 	.db #0x5A	; 90	'Z'
   4202 DA                  644 	.db #0xDA	; 218
   4203 78                  645 	.db #0x78	; 120	'x'
   4204 F0                  646 	.db #0xF0	; 240
   4205 7A                  647 	.db #0x7A	; 122	'z'
   4206 7A                  648 	.db #0x7A	; 122	'z'
   4207 0F                  649 	.db #0x0F	; 15
   4208 0F                  650 	.db #0x0F	; 15
   4209 5A                  651 	.db #0x5A	; 90	'Z'
   420A DA                  652 	.db #0xDA	; 218
   420B 0F                  653 	.db #0x0F	; 15
   420C 0F                  654 	.db #0x0F	; 15
   420D 7A                  655 	.db #0x7A	; 122	'z'
   420E 7A                  656 	.db #0x7A	; 122	'z'
   420F 78                  657 	.db #0x78	; 120	'x'
   4210 F0                  658 	.db #0xF0	; 240
   4211 5A                  659 	.db #0x5A	; 90	'Z'
   4212 DA                  660 	.db #0xDA	; 218
   4213 5F                  661 	.db #0x5F	; 95
   4214 5F                  662 	.db #0x5F	; 95
   4215 7A                  663 	.db #0x7A	; 122	'z'
   4216 7A                  664 	.db #0x7A	; 122	'z'
   4217 78                  665 	.db #0x78	; 120	'x'
   4218 F0                  666 	.db #0xF0	; 240
   4219 5A                  667 	.db #0x5A	; 90	'Z'
   421A DA                  668 	.db #0xDA	; 218
   421B 2F                  669 	.db #0x2F	; 47
   421C AF                  670 	.db #0xAF	; 175
   421D 7A                  671 	.db #0x7A	; 122	'z'
   421E 7A                  672 	.db #0x7A	; 122	'z'
   421F 78                  673 	.db #0x78	; 120	'x'
   4220 F0                  674 	.db #0xF0	; 240
   4221 5A                  675 	.db #0x5A	; 90	'Z'
   4222 DA                  676 	.db #0xDA	; 218
   4223 5F                  677 	.db #0x5F	; 95
   4224 5F                  678 	.db #0x5F	; 95
   4225 7A                  679 	.db #0x7A	; 122	'z'
   4226 7A                  680 	.db #0x7A	; 122	'z'
   4227 78                  681 	.db #0x78	; 120	'x'
   4228 F0                  682 	.db #0xF0	; 240
   4229                     683 _farm2:
   4229 0F                  684 	.db #0x0F	; 15
   422A 0F                  685 	.db #0x0F	; 15
   422B 0F                  686 	.db #0x0F	; 15
   422C 0F                  687 	.db #0x0F	; 15
   422D 7F                  688 	.db #0x7F	; 127
   422E FF                  689 	.db #0xFF	; 255
   422F FF                  690 	.db #0xFF	; 255
   4230 EF                  691 	.db #0xEF	; 239
   4231 2D                  692 	.db #0x2D	; 45
   4232 A5                  693 	.db #0xA5	; 165
   4233 A5                  694 	.db #0xA5	; 165
   4234 A5                  695 	.db #0xA5	; 165
   4235 7F                  696 	.db #0x7F	; 127
   4236 FF                  697 	.db #0xFF	; 255
   4237 FF                  698 	.db #0xFF	; 255
   4238 EF                  699 	.db #0xEF	; 239
   4239 5A                  700 	.db #0x5A	; 90	'Z'
   423A 5A                  701 	.db #0x5A	; 90	'Z'
   423B 5A                  702 	.db #0x5A	; 90	'Z'
   423C 4B                  703 	.db #0x4B	; 75	'K'
   423D 7F                  704 	.db #0x7F	; 127
   423E FF                  705 	.db #0xFF	; 255
   423F FF                  706 	.db #0xFF	; 255
   4240 EF                  707 	.db #0xEF	; 239
   4241 2D                  708 	.db #0x2D	; 45
   4242 A5                  709 	.db #0xA5	; 165
   4243 A5                  710 	.db #0xA5	; 165
   4244 A5                  711 	.db #0xA5	; 165
   4245 7F                  712 	.db #0x7F	; 127
   4246 FF                  713 	.db #0xFF	; 255
   4247 FF                  714 	.db #0xFF	; 255
   4248 EF                  715 	.db #0xEF	; 239
   4249 5A                  716 	.db #0x5A	; 90	'Z'
   424A 5A                  717 	.db #0x5A	; 90	'Z'
   424B 5A                  718 	.db #0x5A	; 90	'Z'
   424C 4B                  719 	.db #0x4B	; 75	'K'
   424D 7F                  720 	.db #0x7F	; 127
   424E FF                  721 	.db #0xFF	; 255
   424F FF                  722 	.db #0xFF	; 255
   4250 EF                  723 	.db #0xEF	; 239
   4251 0F                  724 	.db #0x0F	; 15
   4252 0F                  725 	.db #0x0F	; 15
   4253 0F                  726 	.db #0x0F	; 15
   4254 0F                  727 	.db #0x0F	; 15
   4255 0E                  728 	.db #0x0E	; 14
   4256 07                  729 	.db #0x07	; 7
   4257 AF                  730 	.db #0xAF	; 175
   4258 AF                  731 	.db #0xAF	; 175
   4259 02                  732 	.db #0x02	; 2
   425A C3                  733 	.db #0xC3	; 195
   425B AF                  734 	.db #0xAF	; 175
   425C AF                  735 	.db #0xAF	; 175
   425D 60                  736 	.db #0x60	; 96
   425E C3                  737 	.db #0xC3	; 195
   425F AF                  738 	.db #0xAF	; 175
   4260 AF                  739 	.db #0xAF	; 175
   4261 69                  740 	.db #0x69	; 105	'i'
   4262 C3                  741 	.db #0xC3	; 195
   4263 AF                  742 	.db #0xAF	; 175
   4264 AF                  743 	.db #0xAF	; 175
   4265 0F                  744 	.db #0x0F	; 15
   4266 0F                  745 	.db #0x0F	; 15
   4267 0F                  746 	.db #0x0F	; 15
   4268 0F                  747 	.db #0x0F	; 15
   4269                     748 _livestock:
   4269 03                  749 	.db #0x03	; 3
   426A 0F                  750 	.db #0x0F	; 15
   426B 0F                  751 	.db #0x0F	; 15
   426C 0F                  752 	.db #0x0F	; 15
   426D 61                  753 	.db #0x61	; 97	'a'
   426E F5                  754 	.db #0xF5	; 245
   426F F5                  755 	.db #0xF5	; 245
   4270 E5                  756 	.db #0xE5	; 229
   4271 61                  757 	.db #0x61	; 97	'a'
   4272 8F                  758 	.db #0x8F	; 143
   4273 0F                  759 	.db #0x0F	; 15
   4274 2F                  760 	.db #0x2F	; 47
   4275 69                  761 	.db #0x69	; 105	'i'
   4276 87                  762 	.db #0x87	; 135
   4277 0F                  763 	.db #0x0F	; 15
   4278 AD                  764 	.db #0xAD	; 173
   4279 0F                  765 	.db #0x0F	; 15
   427A 9F                  766 	.db #0x9F	; 159
   427B 0F                  767 	.db #0x0F	; 15
   427C 2F                  768 	.db #0x2F	; 47
   427D 7D                  769 	.db #0x7D	; 125
   427E 87                  770 	.db #0x87	; 135
   427F 0F                  771 	.db #0x0F	; 15
   4280 2D                  772 	.db #0x2D	; 45
   4281 4B                  773 	.db #0x4B	; 75	'K'
   4282 0F                  774 	.db #0x0F	; 15
   4283 2F                  775 	.db #0x2F	; 47
   4284 2F                  776 	.db #0x2F	; 47
   4285 4F                  777 	.db #0x4F	; 79	'O'
   4286 0F                  778 	.db #0x0F	; 15
   4287 0F                  779 	.db #0x0F	; 15
   4288 2D                  780 	.db #0x2D	; 45
   4289 5B                  781 	.db #0x5B	; 91
   428A 1F                  782 	.db #0x1F	; 31
   428B 0F                  783 	.db #0x0F	; 15
   428C 2F                  784 	.db #0x2F	; 47
   428D 4F                  785 	.db #0x4F	; 79	'O'
   428E 0F                  786 	.db #0x0F	; 15
   428F 1F                  787 	.db #0x1F	; 31
   4290 2D                  788 	.db #0x2D	; 45
   4291 4B                  789 	.db #0x4B	; 75	'K'
   4292 0F                  790 	.db #0x0F	; 15
   4293 0F                  791 	.db #0x0F	; 15
   4294 2F                  792 	.db #0x2F	; 47
   4295 4F                  793 	.db #0x4F	; 79	'O'
   4296 4F                  794 	.db #0x4F	; 79	'O'
   4297 0F                  795 	.db #0x0F	; 15
   4298 2D                  796 	.db #0x2D	; 45
   4299 4B                  797 	.db #0x4B	; 75	'K'
   429A 0F                  798 	.db #0x0F	; 15
   429B 2F                  799 	.db #0x2F	; 47
   429C 2F                  800 	.db #0x2F	; 47
   429D 4F                  801 	.db #0x4F	; 79	'O'
   429E 0F                  802 	.db #0x0F	; 15
   429F 0F                  803 	.db #0x0F	; 15
   42A0 2D                  804 	.db #0x2D	; 45
   42A1 7A                  805 	.db #0x7A	; 122	'z'
   42A2 FA                  806 	.db #0xFA	; 250
   42A3 FA                  807 	.db #0xFA	; 250
   42A4 EB                  808 	.db #0xEB	; 235
   42A5 0F                  809 	.db #0x0F	; 15
   42A6 0F                  810 	.db #0x0F	; 15
   42A7 0F                  811 	.db #0x0F	; 15
   42A8 0F                  812 	.db #0x0F	; 15
   42A9                     813 _station_small_ns:
   42A9 0F                  814 	.db #0x0F	; 15
   42AA 1E                  815 	.db #0x1E	; 30
   42AB 43                  816 	.db #0x43	; 67	'C'
   42AC 0F                  817 	.db #0x0F	; 15
   42AD 0F                  818 	.db #0x0F	; 15
   42AE 1E                  819 	.db #0x1E	; 30
   42AF 43                  820 	.db #0x43	; 67	'C'
   42B0 4F                  821 	.db #0x4F	; 79	'O'
   42B1 0F                  822 	.db #0x0F	; 15
   42B2 5E                  823 	.db #0x5E	; 94
   42B3 43                  824 	.db #0x43	; 67	'C'
   42B4 0F                  825 	.db #0x0F	; 15
   42B5 0F                  826 	.db #0x0F	; 15
   42B6 1E                  827 	.db #0x1E	; 30
   42B7 43                  828 	.db #0x43	; 67	'C'
   42B8 0F                  829 	.db #0x0F	; 15
   42B9 4F                  830 	.db #0x4F	; 79	'O'
   42BA 1E                  831 	.db #0x1E	; 30
   42BB 43                  832 	.db #0x43	; 67	'C'
   42BC 8F                  833 	.db #0x8F	; 143
   42BD 0F                  834 	.db #0x0F	; 15
   42BE 1E                  835 	.db #0x1E	; 30
   42BF 43                  836 	.db #0x43	; 67	'C'
   42C0 0F                  837 	.db #0x0F	; 15
   42C1 0F                  838 	.db #0x0F	; 15
   42C2 1E                  839 	.db #0x1E	; 30
   42C3 43                  840 	.db #0x43	; 67	'C'
   42C4 0F                  841 	.db #0x0F	; 15
   42C5 0E                  842 	.db #0x0E	; 14
   42C6 16                  843 	.db #0x16	; 22
   42C7 43                  844 	.db #0x43	; 67	'C'
   42C8 0F                  845 	.db #0x0F	; 15
   42C9 0E                  846 	.db #0x0E	; 14
   42CA D2                  847 	.db #0xD2	; 210
   42CB 43                  848 	.db #0x43	; 67	'C'
   42CC 0F                  849 	.db #0x0F	; 15
   42CD 4F                  850 	.db #0x4F	; 79	'O'
   42CE D2                  851 	.db #0xD2	; 210
   42CF 43                  852 	.db #0x43	; 67	'C'
   42D0 0F                  853 	.db #0x0F	; 15
   42D1 0F                  854 	.db #0x0F	; 15
   42D2 1E                  855 	.db #0x1E	; 30
   42D3 53                  856 	.db #0x53	; 83	'S'
   42D4 0F                  857 	.db #0x0F	; 15
   42D5 0F                  858 	.db #0x0F	; 15
   42D6 1E                  859 	.db #0x1E	; 30
   42D7 43                  860 	.db #0x43	; 67	'C'
   42D8 0F                  861 	.db #0x0F	; 15
   42D9 0F                  862 	.db #0x0F	; 15
   42DA 5E                  863 	.db #0x5E	; 94
   42DB 43                  864 	.db #0x43	; 67	'C'
   42DC 0F                  865 	.db #0x0F	; 15
   42DD 0F                  866 	.db #0x0F	; 15
   42DE 1E                  867 	.db #0x1E	; 30
   42DF 43                  868 	.db #0x43	; 67	'C'
   42E0 1F                  869 	.db #0x1F	; 31
   42E1 4F                  870 	.db #0x4F	; 79	'O'
   42E2 1E                  871 	.db #0x1E	; 30
   42E3 43                  872 	.db #0x43	; 67	'C'
   42E4 0F                  873 	.db #0x0F	; 15
   42E5 0F                  874 	.db #0x0F	; 15
   42E6 1E                  875 	.db #0x1E	; 30
   42E7 43                  876 	.db #0x43	; 67	'C'
   42E8 0F                  877 	.db #0x0F	; 15
   42E9                     878 _station_small_ew:
   42E9 0F                  879 	.db #0x0F	; 15
   42EA 2F                  880 	.db #0x2F	; 47
   42EB 0F                  881 	.db #0x0F	; 15
   42EC 0F                  882 	.db #0x0F	; 15
   42ED 0F                  883 	.db #0x0F	; 15
   42EE 0F                  884 	.db #0x0F	; 15
   42EF 0F                  885 	.db #0x0F	; 15
   42F0 4F                  886 	.db #0x4F	; 79	'O'
   42F1 0F                  887 	.db #0x0F	; 15
   42F2 0F                  888 	.db #0x0F	; 15
   42F3 0F                  889 	.db #0x0F	; 15
   42F4 0F                  890 	.db #0x0F	; 15
   42F5 2F                  891 	.db #0x2F	; 47
   42F6 0C                  892 	.db #0x0C	; 12
   42F7 0F                  893 	.db #0x0F	; 15
   42F8 0F                  894 	.db #0x0F	; 15
   42F9 0F                  895 	.db #0x0F	; 15
   42FA 1C                  896 	.db #0x1C	; 28
   42FB 87                  897 	.db #0x87	; 135
   42FC 8F                  898 	.db #0x8F	; 143
   42FD 0F                  899 	.db #0x0F	; 15
   42FE 1E                  900 	.db #0x1E	; 30
   42FF 87                  901 	.db #0x87	; 135
   4300 0F                  902 	.db #0x0F	; 15
   4301 0F                  903 	.db #0x0F	; 15
   4302 0F                  904 	.db #0x0F	; 15
   4303 0F                  905 	.db #0x0F	; 15
   4304 0F                  906 	.db #0x0F	; 15
   4305 F0                  907 	.db #0xF0	; 240
   4306 F0                  908 	.db #0xF0	; 240
   4307 F0                  909 	.db #0xF0	; 240
   4308 F0                  910 	.db #0xF0	; 240
   4309 00                  911 	.db #0x00	; 0
   430A 00                  912 	.db #0x00	; 0
   430B 00                  913 	.db #0x00	; 0
   430C 00                  914 	.db #0x00	; 0
   430D F0                  915 	.db #0xF0	; 240
   430E F0                  916 	.db #0xF0	; 240
   430F F0                  917 	.db #0xF0	; 240
   4310 F0                  918 	.db #0xF0	; 240
   4311 0F                  919 	.db #0x0F	; 15
   4312 0F                  920 	.db #0x0F	; 15
   4313 0F                  921 	.db #0x0F	; 15
   4314 0F                  922 	.db #0x0F	; 15
   4315 0F                  923 	.db #0x0F	; 15
   4316 8F                  924 	.db #0x8F	; 143
   4317 0F                  925 	.db #0x0F	; 15
   4318 8F                  926 	.db #0x8F	; 143
   4319 0F                  927 	.db #0x0F	; 15
   431A 0F                  928 	.db #0x0F	; 15
   431B 0F                  929 	.db #0x0F	; 15
   431C 0F                  930 	.db #0x0F	; 15
   431D 0F                  931 	.db #0x0F	; 15
   431E 0F                  932 	.db #0x0F	; 15
   431F 8F                  933 	.db #0x8F	; 143
   4320 0F                  934 	.db #0x0F	; 15
   4321 4F                  935 	.db #0x4F	; 79	'O'
   4322 0F                  936 	.db #0x0F	; 15
   4323 1F                  937 	.db #0x1F	; 31
   4324 0F                  938 	.db #0x0F	; 15
   4325 0F                  939 	.db #0x0F	; 15
   4326 0F                  940 	.db #0x0F	; 15
   4327 0F                  941 	.db #0x0F	; 15
   4328 1F                  942 	.db #0x1F	; 31
   4329                     943 _station_medium_ns:
   4329 0F                  944 	.db #0x0F	; 15
   432A 1E                  945 	.db #0x1E	; 30
   432B 70                  946 	.db #0x70	; 112	'p'
   432C 0F                  947 	.db #0x0F	; 15
   432D 2F                  948 	.db #0x2F	; 47
   432E 1E                  949 	.db #0x1E	; 30
   432F 50                  950 	.db #0x50	; 80	'P'
   4330 0F                  951 	.db #0x0F	; 15
   4331 0F                  952 	.db #0x0F	; 15
   4332 1E                  953 	.db #0x1E	; 30
   4333 50                  954 	.db #0x50	; 80	'P'
   4334 2F                  955 	.db #0x2F	; 47
   4335 0F                  956 	.db #0x0F	; 15
   4336 1E                  957 	.db #0x1E	; 30
   4337 50                  958 	.db #0x50	; 80	'P'
   4338 0F                  959 	.db #0x0F	; 15
   4339 0F                  960 	.db #0x0F	; 15
   433A 1E                  961 	.db #0x1E	; 30
   433B 50                  962 	.db #0x50	; 80	'P'
   433C 0F                  963 	.db #0x0F	; 15
   433D 0E                  964 	.db #0x0E	; 14
   433E 16                  965 	.db #0x16	; 22
   433F 50                  966 	.db #0x50	; 80	'P'
   4340 0F                  967 	.db #0x0F	; 15
   4341 0E                  968 	.db #0x0E	; 14
   4342 D2                  969 	.db #0xD2	; 210
   4343 50                  970 	.db #0x50	; 80	'P'
   4344 2F                  971 	.db #0x2F	; 47
   4345 0E                  972 	.db #0x0E	; 14
   4346 D2                  973 	.db #0xD2	; 210
   4347 50                  974 	.db #0x50	; 80	'P'
   4348 0F                  975 	.db #0x0F	; 15
   4349 0E                  976 	.db #0x0E	; 14
   434A D2                  977 	.db #0xD2	; 210
   434B 50                  978 	.db #0x50	; 80	'P'
   434C 0F                  979 	.db #0x0F	; 15
   434D 0E                  980 	.db #0x0E	; 14
   434E D2                  981 	.db #0xD2	; 210
   434F 50                  982 	.db #0x50	; 80	'P'
   4350 0F                  983 	.db #0x0F	; 15
   4351 0F                  984 	.db #0x0F	; 15
   4352 D2                  985 	.db #0xD2	; 210
   4353 50                  986 	.db #0x50	; 80	'P'
   4354 1F                  987 	.db #0x1F	; 31
   4355 4F                  988 	.db #0x4F	; 79	'O'
   4356 1E                  989 	.db #0x1E	; 30
   4357 50                  990 	.db #0x50	; 80	'P'
   4358 0F                  991 	.db #0x0F	; 15
   4359 0F                  992 	.db #0x0F	; 15
   435A 1E                  993 	.db #0x1E	; 30
   435B 50                  994 	.db #0x50	; 80	'P'
   435C 0F                  995 	.db #0x0F	; 15
   435D 0F                  996 	.db #0x0F	; 15
   435E 1E                  997 	.db #0x1E	; 30
   435F 50                  998 	.db #0x50	; 80	'P'
   4360 0F                  999 	.db #0x0F	; 15
   4361 0F                 1000 	.db #0x0F	; 15
   4362 9E                 1001 	.db #0x9E	; 158
   4363 21                 1002 	.db #0x21	; 33
   4364 0F                 1003 	.db #0x0F	; 15
   4365 0F                 1004 	.db #0x0F	; 15
   4366 1E                 1005 	.db #0x1E	; 30
   4367 43                 1006 	.db #0x43	; 67	'C'
   4368 4F                 1007 	.db #0x4F	; 79	'O'
   4369                    1008 _station_medium_ew:
   4369 0F                 1009 	.db #0x0F	; 15
   436A 0F                 1010 	.db #0x0F	; 15
   436B 0F                 1011 	.db #0x0F	; 15
   436C 0F                 1012 	.db #0x0F	; 15
   436D 0F                 1013 	.db #0x0F	; 15
   436E 2F                 1014 	.db #0x2F	; 47
   436F 0F                 1015 	.db #0x0F	; 15
   4370 03                 1016 	.db #0x03	; 3
   4371 0F                 1017 	.db #0x0F	; 15
   4372 0F                 1018 	.db #0x0F	; 15
   4373 0E                 1019 	.db #0x0E	; 14
   4374 67                 1020 	.db #0x67	; 103	'g'
   4375 4F                 1021 	.db #0x4F	; 79	'O'
   4376 00                 1022 	.db #0x00	; 0
   4377 06                 1023 	.db #0x06	; 6
   4378 EF                 1024 	.db #0xEF	; 239
   4379 0F                 1025 	.db #0x0F	; 15
   437A 70                 1026 	.db #0x70	; 112	'p'
   437B C3                 1027 	.db #0xC3	; 195
   437C CF                 1028 	.db #0xCF	; 207
   437D 0F                 1029 	.db #0x0F	; 15
   437E 78                 1030 	.db #0x78	; 120	'x'
   437F C3                 1031 	.db #0xC3	; 195
   4380 0F                 1032 	.db #0x0F	; 15
   4381 0F                 1033 	.db #0x0F	; 15
   4382 0F                 1034 	.db #0x0F	; 15
   4383 0F                 1035 	.db #0x0F	; 15
   4384 0F                 1036 	.db #0x0F	; 15
   4385 F0                 1037 	.db #0xF0	; 240
   4386 F0                 1038 	.db #0xF0	; 240
   4387 F0                 1039 	.db #0xF0	; 240
   4388 F0                 1040 	.db #0xF0	; 240
   4389 00                 1041 	.db #0x00	; 0
   438A 00                 1042 	.db #0x00	; 0
   438B 00                 1043 	.db #0x00	; 0
   438C 00                 1044 	.db #0x00	; 0
   438D B0                 1045 	.db #0xB0	; 176
   438E F0                 1046 	.db #0xF0	; 240
   438F F0                 1047 	.db #0xF0	; 240
   4390 F0                 1048 	.db #0xF0	; 240
   4391 48                 1049 	.db #0x48	; 72	'H'
   4392 00                 1050 	.db #0x00	; 0
   4393 00                 1051 	.db #0x00	; 0
   4394 10                 1052 	.db #0x10	; 16
   4395 3C                 1053 	.db #0x3C	; 60
   4396 F0                 1054 	.db #0xF0	; 240
   4397 F0                 1055 	.db #0xF0	; 240
   4398 F0                 1056 	.db #0xF0	; 240
   4399 0F                 1057 	.db #0x0F	; 15
   439A 4F                 1058 	.db #0x4F	; 79	'O'
   439B 0F                 1059 	.db #0x0F	; 15
   439C 0F                 1060 	.db #0x0F	; 15
   439D 0F                 1061 	.db #0x0F	; 15
   439E 0F                 1062 	.db #0x0F	; 15
   439F 0F                 1063 	.db #0x0F	; 15
   43A0 0F                 1064 	.db #0x0F	; 15
   43A1 2F                 1065 	.db #0x2F	; 47
   43A2 0F                 1066 	.db #0x0F	; 15
   43A3 0F                 1067 	.db #0x0F	; 15
   43A4 4F                 1068 	.db #0x4F	; 79	'O'
   43A5 0F                 1069 	.db #0x0F	; 15
   43A6 0F                 1070 	.db #0x0F	; 15
   43A7 0F                 1071 	.db #0x0F	; 15
   43A8 0F                 1072 	.db #0x0F	; 15
   43A9                    1073 _station_large_ns:
   43A9 0F                 1074 	.db #0x0F	; 15
   43AA 1E                 1075 	.db #0x1E	; 30
   43AB 43                 1076 	.db #0x43	; 67	'C'
   43AC 4F                 1077 	.db #0x4F	; 79	'O'
   43AD 0E                 1078 	.db #0x0E	; 14
   43AE 16                 1079 	.db #0x16	; 22
   43AF 21                 1080 	.db #0x21	; 33
   43B0 0F                 1081 	.db #0x0F	; 15
   43B1 0E                 1082 	.db #0x0E	; 14
   43B2 D2                 1083 	.db #0xD2	; 210
   43B3 50                 1084 	.db #0x50	; 80	'P'
   43B4 0F                 1085 	.db #0x0F	; 15
   43B5 0E                 1086 	.db #0x0E	; 14
   43B6 D2                 1087 	.db #0xD2	; 210
   43B7 40                 1088 	.db #0x40	; 64
   43B8 87                 1089 	.db #0x87	; 135
   43B9 0E                 1090 	.db #0x0E	; 14
   43BA D2                 1091 	.db #0xD2	; 210
   43BB 50                 1092 	.db #0x50	; 80	'P'
   43BC 43                 1093 	.db #0x43	; 67	'C'
   43BD 0C                 1094 	.db #0x0C	; 12
   43BE D2                 1095 	.db #0xD2	; 210
   43BF 50                 1096 	.db #0x50	; 80	'P'
   43C0 21                 1097 	.db #0x21	; 33
   43C1 1C                 1098 	.db #0x1C	; 28
   43C2 D2                 1099 	.db #0xD2	; 210
   43C3 50                 1100 	.db #0x50	; 80	'P'
   43C4 50                 1101 	.db #0x50	; 80	'P'
   43C5 1C                 1102 	.db #0x1C	; 28
   43C6 D2                 1103 	.db #0xD2	; 210
   43C7 50                 1104 	.db #0x50	; 80	'P'
   43C8 50                 1105 	.db #0x50	; 80	'P'
   43C9 1C                 1106 	.db #0x1C	; 28
   43CA D2                 1107 	.db #0xD2	; 210
   43CB 50                 1108 	.db #0x50	; 80	'P'
   43CC 50                 1109 	.db #0x50	; 80	'P'
   43CD 1C                 1110 	.db #0x1C	; 28
   43CE D2                 1111 	.db #0xD2	; 210
   43CF 50                 1112 	.db #0x50	; 80	'P'
   43D0 50                 1113 	.db #0x50	; 80	'P'
   43D1 1C                 1114 	.db #0x1C	; 28
   43D2 D2                 1115 	.db #0xD2	; 210
   43D3 50                 1116 	.db #0x50	; 80	'P'
   43D4 50                 1117 	.db #0x50	; 80	'P'
   43D5 0E                 1118 	.db #0x0E	; 14
   43D6 D2                 1119 	.db #0xD2	; 210
   43D7 50                 1120 	.db #0x50	; 80	'P'
   43D8 50                 1121 	.db #0x50	; 80	'P'
   43D9 0E                 1122 	.db #0x0E	; 14
   43DA D2                 1123 	.db #0xD2	; 210
   43DB 50                 1124 	.db #0x50	; 80	'P'
   43DC 50                 1125 	.db #0x50	; 80	'P'
   43DD 4E                 1126 	.db #0x4E	; 78	'N'
   43DE D2                 1127 	.db #0xD2	; 210
   43DF 50                 1128 	.db #0x50	; 80	'P'
   43E0 50                 1129 	.db #0x50	; 80	'P'
   43E1 0F                 1130 	.db #0x0F	; 15
   43E2 D2                 1131 	.db #0xD2	; 210
   43E3 50                 1132 	.db #0x50	; 80	'P'
   43E4 50                 1133 	.db #0x50	; 80	'P'
   43E5 0F                 1134 	.db #0x0F	; 15
   43E6 1E                 1135 	.db #0x1E	; 30
   43E7 70                 1136 	.db #0x70	; 112	'p'
   43E8 F0                 1137 	.db #0xF0	; 240
   43E9                    1138 _station_large_ew:
   43E9 0F                 1139 	.db #0x0F	; 15
   43EA 0F                 1140 	.db #0x0F	; 15
   43EB 0F                 1141 	.db #0x0F	; 15
   43EC 0F                 1142 	.db #0x0F	; 15
   43ED 0F                 1143 	.db #0x0F	; 15
   43EE 0F                 1144 	.db #0x0F	; 15
   43EF 0F                 1145 	.db #0x0F	; 15
   43F0 0F                 1146 	.db #0x0F	; 15
   43F1 0F                 1147 	.db #0x0F	; 15
   43F2 08                 1148 	.db #0x08	; 8
   43F3 01                 1149 	.db #0x01	; 1
   43F4 0F                 1150 	.db #0x0F	; 15
   43F5 08                 1151 	.db #0x08	; 8
   43F6 30                 1152 	.db #0x30	; 48	'0'
   43F7 E0                 1153 	.db #0xE0	; 224
   43F8 01                 1154 	.db #0x01	; 1
   43F9 38                 1155 	.db #0x38	; 56	'8'
   43FA F0                 1156 	.db #0xF0	; 240
   43FB F0                 1157 	.db #0xF0	; 240
   43FC E1                 1158 	.db #0xE1	; 225
   43FD 3C                 1159 	.db #0x3C	; 60
   43FE F0                 1160 	.db #0xF0	; 240
   43FF F0                 1161 	.db #0xF0	; 240
   4400 E1                 1162 	.db #0xE1	; 225
   4401 0F                 1163 	.db #0x0F	; 15
   4402 0F                 1164 	.db #0x0F	; 15
   4403 0F                 1165 	.db #0x0F	; 15
   4404 0F                 1166 	.db #0x0F	; 15
   4405 F0                 1167 	.db #0xF0	; 240
   4406 F0                 1168 	.db #0xF0	; 240
   4407 F0                 1169 	.db #0xF0	; 240
   4408 F0                 1170 	.db #0xF0	; 240
   4409 00                 1171 	.db #0x00	; 0
   440A 00                 1172 	.db #0x00	; 0
   440B 00                 1173 	.db #0x00	; 0
   440C 00                 1174 	.db #0x00	; 0
   440D F0                 1175 	.db #0xF0	; 240
   440E F0                 1176 	.db #0xF0	; 240
   440F F0                 1177 	.db #0xF0	; 240
   4410 D0                 1178 	.db #0xD0	; 208
   4411 80                 1179 	.db #0x80	; 128
   4412 00                 1180 	.db #0x00	; 0
   4413 00                 1181 	.db #0x00	; 0
   4414 21                 1182 	.db #0x21	; 33
   4415 F0                 1183 	.db #0xF0	; 240
   4416 F0                 1184 	.db #0xF0	; 240
   4417 F0                 1185 	.db #0xF0	; 240
   4418 43                 1186 	.db #0x43	; 67	'C'
   4419 80                 1187 	.db #0x80	; 128
   441A 00                 1188 	.db #0x00	; 0
   441B 00                 1189 	.db #0x00	; 0
   441C 87                 1190 	.db #0x87	; 135
   441D F0                 1191 	.db #0xF0	; 240
   441E F0                 1192 	.db #0xF0	; 240
   441F D0                 1193 	.db #0xD0	; 208
   4420 0F                 1194 	.db #0x0F	; 15
   4421 80                 1195 	.db #0x80	; 128
   4422 00                 1196 	.db #0x00	; 0
   4423 21                 1197 	.db #0x21	; 33
   4424 0F                 1198 	.db #0x0F	; 15
   4425 F0                 1199 	.db #0xF0	; 240
   4426 F0                 1200 	.db #0xF0	; 240
   4427 C3                 1201 	.db #0xC3	; 195
   4428 0F                 1202 	.db #0x0F	; 15
   4429                    1203 _rail_ew:
   4429 0F                 1204 	.db #0x0F	; 15
   442A 0F                 1205 	.db #0x0F	; 15
   442B 0F                 1206 	.db #0x0F	; 15
   442C 0F                 1207 	.db #0x0F	; 15
   442D 2F                 1208 	.db #0x2F	; 47
   442E 0F                 1209 	.db #0x0F	; 15
   442F 2F                 1210 	.db #0x2F	; 47
   4430 2F                 1211 	.db #0x2F	; 47
   4431 0F                 1212 	.db #0x0F	; 15
   4432 0F                 1213 	.db #0x0F	; 15
   4433 0F                 1214 	.db #0x0F	; 15
   4434 0F                 1215 	.db #0x0F	; 15
   4435 0F                 1216 	.db #0x0F	; 15
   4436 0F                 1217 	.db #0x0F	; 15
   4437 0F                 1218 	.db #0x0F	; 15
   4438 0F                 1219 	.db #0x0F	; 15
   4439 0F                 1220 	.db #0x0F	; 15
   443A 2F                 1221 	.db #0x2F	; 47
   443B 0F                 1222 	.db #0x0F	; 15
   443C 0F                 1223 	.db #0x0F	; 15
   443D 4F                 1224 	.db #0x4F	; 79	'O'
   443E 0F                 1225 	.db #0x0F	; 15
   443F 0F                 1226 	.db #0x0F	; 15
   4440 4F                 1227 	.db #0x4F	; 79	'O'
   4441 0F                 1228 	.db #0x0F	; 15
   4442 0F                 1229 	.db #0x0F	; 15
   4443 0F                 1230 	.db #0x0F	; 15
   4444 0F                 1231 	.db #0x0F	; 15
   4445 F0                 1232 	.db #0xF0	; 240
   4446 F0                 1233 	.db #0xF0	; 240
   4447 F0                 1234 	.db #0xF0	; 240
   4448 F0                 1235 	.db #0xF0	; 240
   4449 00                 1236 	.db #0x00	; 0
   444A 00                 1237 	.db #0x00	; 0
   444B 00                 1238 	.db #0x00	; 0
   444C 00                 1239 	.db #0x00	; 0
   444D F0                 1240 	.db #0xF0	; 240
   444E F0                 1241 	.db #0xF0	; 240
   444F F0                 1242 	.db #0xF0	; 240
   4450 F0                 1243 	.db #0xF0	; 240
   4451 0F                 1244 	.db #0x0F	; 15
   4452 0F                 1245 	.db #0x0F	; 15
   4453 0F                 1246 	.db #0x0F	; 15
   4454 0F                 1247 	.db #0x0F	; 15
   4455 0F                 1248 	.db #0x0F	; 15
   4456 0F                 1249 	.db #0x0F	; 15
   4457 8F                 1250 	.db #0x8F	; 143
   4458 0F                 1251 	.db #0x0F	; 15
   4459 0F                 1252 	.db #0x0F	; 15
   445A 8F                 1253 	.db #0x8F	; 143
   445B 0F                 1254 	.db #0x0F	; 15
   445C 4F                 1255 	.db #0x4F	; 79	'O'
   445D 0F                 1256 	.db #0x0F	; 15
   445E 0F                 1257 	.db #0x0F	; 15
   445F 0F                 1258 	.db #0x0F	; 15
   4460 0F                 1259 	.db #0x0F	; 15
   4461 0F                 1260 	.db #0x0F	; 15
   4462 0F                 1261 	.db #0x0F	; 15
   4463 0F                 1262 	.db #0x0F	; 15
   4464 0F                 1263 	.db #0x0F	; 15
   4465 2F                 1264 	.db #0x2F	; 47
   4466 0F                 1265 	.db #0x0F	; 15
   4467 2F                 1266 	.db #0x2F	; 47
   4468 0F                 1267 	.db #0x0F	; 15
   4469                    1268 _rail_ns:
   4469 0F                 1269 	.db #0x0F	; 15
   446A 1E                 1270 	.db #0x1E	; 30
   446B 43                 1271 	.db #0x43	; 67	'C'
   446C 0F                 1272 	.db #0x0F	; 15
   446D 0F                 1273 	.db #0x0F	; 15
   446E 9E                 1274 	.db #0x9E	; 158
   446F 43                 1275 	.db #0x43	; 67	'C'
   4470 8F                 1276 	.db #0x8F	; 143
   4471 0F                 1277 	.db #0x0F	; 15
   4472 1E                 1278 	.db #0x1E	; 30
   4473 43                 1279 	.db #0x43	; 67	'C'
   4474 0F                 1280 	.db #0x0F	; 15
   4475 0F                 1281 	.db #0x0F	; 15
   4476 1E                 1282 	.db #0x1E	; 30
   4477 43                 1283 	.db #0x43	; 67	'C'
   4478 0F                 1284 	.db #0x0F	; 15
   4479 0F                 1285 	.db #0x0F	; 15
   447A 1E                 1286 	.db #0x1E	; 30
   447B 43                 1287 	.db #0x43	; 67	'C'
   447C 0F                 1288 	.db #0x0F	; 15
   447D 0F                 1289 	.db #0x0F	; 15
   447E 1E                 1290 	.db #0x1E	; 30
   447F 43                 1291 	.db #0x43	; 67	'C'
   4480 2F                 1292 	.db #0x2F	; 47
   4481 0F                 1293 	.db #0x0F	; 15
   4482 1E                 1294 	.db #0x1E	; 30
   4483 43                 1295 	.db #0x43	; 67	'C'
   4484 0F                 1296 	.db #0x0F	; 15
   4485 2F                 1297 	.db #0x2F	; 47
   4486 1E                 1298 	.db #0x1E	; 30
   4487 43                 1299 	.db #0x43	; 67	'C'
   4488 0F                 1300 	.db #0x0F	; 15
   4489 0F                 1301 	.db #0x0F	; 15
   448A 1E                 1302 	.db #0x1E	; 30
   448B 43                 1303 	.db #0x43	; 67	'C'
   448C 0F                 1304 	.db #0x0F	; 15
   448D 0F                 1305 	.db #0x0F	; 15
   448E 1E                 1306 	.db #0x1E	; 30
   448F 43                 1307 	.db #0x43	; 67	'C'
   4490 0F                 1308 	.db #0x0F	; 15
   4491 0F                 1309 	.db #0x0F	; 15
   4492 1E                 1310 	.db #0x1E	; 30
   4493 43                 1311 	.db #0x43	; 67	'C'
   4494 0F                 1312 	.db #0x0F	; 15
   4495 0F                 1313 	.db #0x0F	; 15
   4496 1E                 1314 	.db #0x1E	; 30
   4497 53                 1315 	.db #0x53	; 83	'S'
   4498 0F                 1316 	.db #0x0F	; 15
   4499 0F                 1317 	.db #0x0F	; 15
   449A 9E                 1318 	.db #0x9E	; 158
   449B 43                 1319 	.db #0x43	; 67	'C'
   449C 0F                 1320 	.db #0x0F	; 15
   449D 4F                 1321 	.db #0x4F	; 79	'O'
   449E 1E                 1322 	.db #0x1E	; 30
   449F 43                 1323 	.db #0x43	; 67	'C'
   44A0 0F                 1324 	.db #0x0F	; 15
   44A1 0F                 1325 	.db #0x0F	; 15
   44A2 1E                 1326 	.db #0x1E	; 30
   44A3 43                 1327 	.db #0x43	; 67	'C'
   44A4 4F                 1328 	.db #0x4F	; 79	'O'
   44A5 0F                 1329 	.db #0x0F	; 15
   44A6 1E                 1330 	.db #0x1E	; 30
   44A7 43                 1331 	.db #0x43	; 67	'C'
   44A8 0F                 1332 	.db #0x0F	; 15
   44A9                    1333 _rail_en:
   44A9 0F                 1334 	.db #0x0F	; 15
   44AA 1E                 1335 	.db #0x1E	; 30
   44AB 43                 1336 	.db #0x43	; 67	'C'
   44AC 0F                 1337 	.db #0x0F	; 15
   44AD 2F                 1338 	.db #0x2F	; 47
   44AE 1E                 1339 	.db #0x1E	; 30
   44AF 43                 1340 	.db #0x43	; 67	'C'
   44B0 8F                 1341 	.db #0x8F	; 143
   44B1 0F                 1342 	.db #0x0F	; 15
   44B2 0F                 1343 	.db #0x0F	; 15
   44B3 A1                 1344 	.db #0xA1	; 161
   44B4 0F                 1345 	.db #0x0F	; 15
   44B5 0F                 1346 	.db #0x0F	; 15
   44B6 0F                 1347 	.db #0x0F	; 15
   44B7 58                 1348 	.db #0x58	; 88	'X'
   44B8 0F                 1349 	.db #0x0F	; 15
   44B9 0F                 1350 	.db #0x0F	; 15
   44BA 4F                 1351 	.db #0x4F	; 79	'O'
   44BB 2C                 1352 	.db #0x2C	; 44
   44BC 87                 1353 	.db #0x87	; 135
   44BD 0F                 1354 	.db #0x0F	; 15
   44BE 0F                 1355 	.db #0x0F	; 15
   44BF 1E                 1356 	.db #0x1E	; 30
   44C0 43                 1357 	.db #0x43	; 67	'C'
   44C1 0F                 1358 	.db #0x0F	; 15
   44C2 0F                 1359 	.db #0x0F	; 15
   44C3 8F                 1360 	.db #0x8F	; 143
   44C4 A1                 1361 	.db #0xA1	; 161
   44C5 0F                 1362 	.db #0x0F	; 15
   44C6 0F                 1363 	.db #0x0F	; 15
   44C7 0F                 1364 	.db #0x0F	; 15
   44C8 58                 1365 	.db #0x58	; 88	'X'
   44C9 2F                 1366 	.db #0x2F	; 47
   44CA 0F                 1367 	.db #0x0F	; 15
   44CB 0F                 1368 	.db #0x0F	; 15
   44CC 2C                 1369 	.db #0x2C	; 44
   44CD 0F                 1370 	.db #0x0F	; 15
   44CE 0F                 1371 	.db #0x0F	; 15
   44CF 0F                 1372 	.db #0x0F	; 15
   44D0 1E                 1373 	.db #0x1E	; 30
   44D1 0F                 1374 	.db #0x0F	; 15
   44D2 0F                 1375 	.db #0x0F	; 15
   44D3 0F                 1376 	.db #0x0F	; 15
   44D4 4F                 1377 	.db #0x4F	; 79	'O'
   44D5 0F                 1378 	.db #0x0F	; 15
   44D6 0F                 1379 	.db #0x0F	; 15
   44D7 0F                 1380 	.db #0x0F	; 15
   44D8 0F                 1381 	.db #0x0F	; 15
   44D9 2F                 1382 	.db #0x2F	; 47
   44DA 4F                 1383 	.db #0x4F	; 79	'O'
   44DB 2F                 1384 	.db #0x2F	; 47
   44DC 0F                 1385 	.db #0x0F	; 15
   44DD 0F                 1386 	.db #0x0F	; 15
   44DE 0F                 1387 	.db #0x0F	; 15
   44DF 0F                 1388 	.db #0x0F	; 15
   44E0 0F                 1389 	.db #0x0F	; 15
   44E1 0F                 1390 	.db #0x0F	; 15
   44E2 0F                 1391 	.db #0x0F	; 15
   44E3 0F                 1392 	.db #0x0F	; 15
   44E4 2F                 1393 	.db #0x2F	; 47
   44E5 0F                 1394 	.db #0x0F	; 15
   44E6 0F                 1395 	.db #0x0F	; 15
   44E7 0F                 1396 	.db #0x0F	; 15
   44E8 0F                 1397 	.db #0x0F	; 15
   44E9                    1398 _rail_es:
   44E9 0F                 1399 	.db #0x0F	; 15
   44EA 0F                 1400 	.db #0x0F	; 15
   44EB 0F                 1401 	.db #0x0F	; 15
   44EC 0F                 1402 	.db #0x0F	; 15
   44ED 0F                 1403 	.db #0x0F	; 15
   44EE 0F                 1404 	.db #0x0F	; 15
   44EF 0F                 1405 	.db #0x0F	; 15
   44F0 2F                 1406 	.db #0x2F	; 47
   44F1 0F                 1407 	.db #0x0F	; 15
   44F2 2F                 1408 	.db #0x2F	; 47
   44F3 0F                 1409 	.db #0x0F	; 15
   44F4 0F                 1410 	.db #0x0F	; 15
   44F5 1F                 1411 	.db #0x1F	; 31
   44F6 0F                 1412 	.db #0x0F	; 15
   44F7 0F                 1413 	.db #0x0F	; 15
   44F8 0F                 1414 	.db #0x0F	; 15
   44F9 0F                 1415 	.db #0x0F	; 15
   44FA 0F                 1416 	.db #0x0F	; 15
   44FB 0F                 1417 	.db #0x0F	; 15
   44FC 0F                 1418 	.db #0x0F	; 15
   44FD 0F                 1419 	.db #0x0F	; 15
   44FE 0F                 1420 	.db #0x0F	; 15
   44FF 1F                 1421 	.db #0x1F	; 31
   4500 0F                 1422 	.db #0x0F	; 15
   4501 0F                 1423 	.db #0x0F	; 15
   4502 0F                 1424 	.db #0x0F	; 15
   4503 0F                 1425 	.db #0x0F	; 15
   4504 0F                 1426 	.db #0x0F	; 15
   4505 4F                 1427 	.db #0x4F	; 79	'O'
   4506 0F                 1428 	.db #0x0F	; 15
   4507 0F                 1429 	.db #0x0F	; 15
   4508 3C                 1430 	.db #0x3C	; 60
   4509 0F                 1431 	.db #0x0F	; 15
   450A 4F                 1432 	.db #0x4F	; 79	'O'
   450B 0F                 1433 	.db #0x0F	; 15
   450C 48                 1434 	.db #0x48	; 72	'H'
   450D 0F                 1435 	.db #0x0F	; 15
   450E 0F                 1436 	.db #0x0F	; 15
   450F 4F                 1437 	.db #0x4F	; 79	'O'
   4510 B0                 1438 	.db #0xB0	; 176
   4511 0F                 1439 	.db #0x0F	; 15
   4512 0F                 1440 	.db #0x0F	; 15
   4513 1E                 1441 	.db #0x1E	; 30
   4514 43                 1442 	.db #0x43	; 67	'C'
   4515 0F                 1443 	.db #0x0F	; 15
   4516 0F                 1444 	.db #0x0F	; 15
   4517 2C                 1445 	.db #0x2C	; 44
   4518 87                 1446 	.db #0x87	; 135
   4519 0F                 1447 	.db #0x0F	; 15
   451A 0F                 1448 	.db #0x0F	; 15
   451B 58                 1449 	.db #0x58	; 88	'X'
   451C 0F                 1450 	.db #0x0F	; 15
   451D 0F                 1451 	.db #0x0F	; 15
   451E 8F                 1452 	.db #0x8F	; 143
   451F A1                 1453 	.db #0xA1	; 161
   4520 0F                 1454 	.db #0x0F	; 15
   4521 0F                 1455 	.db #0x0F	; 15
   4522 1E                 1456 	.db #0x1E	; 30
   4523 43                 1457 	.db #0x43	; 67	'C'
   4524 8F                 1458 	.db #0x8F	; 143
   4525 0F                 1459 	.db #0x0F	; 15
   4526 1E                 1460 	.db #0x1E	; 30
   4527 43                 1461 	.db #0x43	; 67	'C'
   4528 0F                 1462 	.db #0x0F	; 15
   4529                    1463 _rail_wn:
   4529 0F                 1464 	.db #0x0F	; 15
   452A 1E                 1465 	.db #0x1E	; 30
   452B 43                 1466 	.db #0x43	; 67	'C'
   452C 0F                 1467 	.db #0x0F	; 15
   452D 0F                 1468 	.db #0x0F	; 15
   452E 1E                 1469 	.db #0x1E	; 30
   452F 53                 1470 	.db #0x53	; 83	'S'
   4530 0F                 1471 	.db #0x0F	; 15
   4531 0F                 1472 	.db #0x0F	; 15
   4532 2C                 1473 	.db #0x2C	; 44
   4533 87                 1474 	.db #0x87	; 135
   4534 0F                 1475 	.db #0x0F	; 15
   4535 2F                 1476 	.db #0x2F	; 47
   4536 58                 1477 	.db #0x58	; 88	'X'
   4537 0F                 1478 	.db #0x0F	; 15
   4538 0F                 1479 	.db #0x0F	; 15
   4539 0F                 1480 	.db #0x0F	; 15
   453A A1                 1481 	.db #0xA1	; 161
   453B 0F                 1482 	.db #0x0F	; 15
   453C 0F                 1483 	.db #0x0F	; 15
   453D 1E                 1484 	.db #0x1E	; 30
   453E 43                 1485 	.db #0x43	; 67	'C'
   453F 0F                 1486 	.db #0x0F	; 15
   4540 8F                 1487 	.db #0x8F	; 143
   4541 2C                 1488 	.db #0x2C	; 44
   4542 87                 1489 	.db #0x87	; 135
   4543 0F                 1490 	.db #0x0F	; 15
   4544 0F                 1491 	.db #0x0F	; 15
   4545 D0                 1492 	.db #0xD0	; 208
   4546 1F                 1493 	.db #0x1F	; 31
   4547 0F                 1494 	.db #0x0F	; 15
   4548 0F                 1495 	.db #0x0F	; 15
   4549 21                 1496 	.db #0x21	; 33
   454A 0F                 1497 	.db #0x0F	; 15
   454B 0F                 1498 	.db #0x0F	; 15
   454C 0F                 1499 	.db #0x0F	; 15
   454D C3                 1500 	.db #0xC3	; 195
   454E 0F                 1501 	.db #0x0F	; 15
   454F 0F                 1502 	.db #0x0F	; 15
   4550 0F                 1503 	.db #0x0F	; 15
   4551 0F                 1504 	.db #0x0F	; 15
   4552 0F                 1505 	.db #0x0F	; 15
   4553 0F                 1506 	.db #0x0F	; 15
   4554 0F                 1507 	.db #0x0F	; 15
   4555 1F                 1508 	.db #0x1F	; 31
   4556 0F                 1509 	.db #0x0F	; 15
   4557 4F                 1510 	.db #0x4F	; 79	'O'
   4558 4F                 1511 	.db #0x4F	; 79	'O'
   4559 0F                 1512 	.db #0x0F	; 15
   455A 0F                 1513 	.db #0x0F	; 15
   455B 0F                 1514 	.db #0x0F	; 15
   455C 0F                 1515 	.db #0x0F	; 15
   455D 0F                 1516 	.db #0x0F	; 15
   455E 1F                 1517 	.db #0x1F	; 31
   455F 0F                 1518 	.db #0x0F	; 15
   4560 0F                 1519 	.db #0x0F	; 15
   4561 2F                 1520 	.db #0x2F	; 47
   4562 0F                 1521 	.db #0x0F	; 15
   4563 0F                 1522 	.db #0x0F	; 15
   4564 0F                 1523 	.db #0x0F	; 15
   4565 0F                 1524 	.db #0x0F	; 15
   4566 0F                 1525 	.db #0x0F	; 15
   4567 0F                 1526 	.db #0x0F	; 15
   4568 0F                 1527 	.db #0x0F	; 15
   4569                    1528 _rail_ws:
   4569 0F                 1529 	.db #0x0F	; 15
   456A 0F                 1530 	.db #0x0F	; 15
   456B 0F                 1531 	.db #0x0F	; 15
   456C 0F                 1532 	.db #0x0F	; 15
   456D 0F                 1533 	.db #0x0F	; 15
   456E 0F                 1534 	.db #0x0F	; 15
   456F 0F                 1535 	.db #0x0F	; 15
   4570 0F                 1536 	.db #0x0F	; 15
   4571 2F                 1537 	.db #0x2F	; 47
   4572 0F                 1538 	.db #0x0F	; 15
   4573 4F                 1539 	.db #0x4F	; 79	'O'
   4574 2F                 1540 	.db #0x2F	; 47
   4575 0F                 1541 	.db #0x0F	; 15
   4576 0F                 1542 	.db #0x0F	; 15
   4577 0F                 1543 	.db #0x0F	; 15
   4578 0F                 1544 	.db #0x0F	; 15
   4579 0F                 1545 	.db #0x0F	; 15
   457A 0F                 1546 	.db #0x0F	; 15
   457B 0F                 1547 	.db #0x0F	; 15
   457C 0F                 1548 	.db #0x0F	; 15
   457D 0F                 1549 	.db #0x0F	; 15
   457E 0F                 1550 	.db #0x0F	; 15
   457F 0F                 1551 	.db #0x0F	; 15
   4580 0F                 1552 	.db #0x0F	; 15
   4581 0F                 1553 	.db #0x0F	; 15
   4582 2F                 1554 	.db #0x2F	; 47
   4583 0F                 1555 	.db #0x0F	; 15
   4584 0F                 1556 	.db #0x0F	; 15
   4585 C3                 1557 	.db #0xC3	; 195
   4586 0F                 1558 	.db #0x0F	; 15
   4587 0F                 1559 	.db #0x0F	; 15
   4588 0F                 1560 	.db #0x0F	; 15
   4589 21                 1561 	.db #0x21	; 33
   458A 0F                 1562 	.db #0x0F	; 15
   458B 2F                 1563 	.db #0x2F	; 47
   458C 0F                 1564 	.db #0x0F	; 15
   458D D0                 1565 	.db #0xD0	; 208
   458E 0F                 1566 	.db #0x0F	; 15
   458F 0F                 1567 	.db #0x0F	; 15
   4590 0F                 1568 	.db #0x0F	; 15
   4591 2C                 1569 	.db #0x2C	; 44
   4592 87                 1570 	.db #0x87	; 135
   4593 0F                 1571 	.db #0x0F	; 15
   4594 0F                 1572 	.db #0x0F	; 15
   4595 1E                 1573 	.db #0x1E	; 30
   4596 43                 1574 	.db #0x43	; 67	'C'
   4597 0F                 1575 	.db #0x0F	; 15
   4598 2F                 1576 	.db #0x2F	; 47
   4599 4F                 1577 	.db #0x4F	; 79	'O'
   459A A1                 1578 	.db #0xA1	; 161
   459B 0F                 1579 	.db #0x0F	; 15
   459C 0F                 1580 	.db #0x0F	; 15
   459D 0F                 1581 	.db #0x0F	; 15
   459E 58                 1582 	.db #0x58	; 88	'X'
   459F 4F                 1583 	.db #0x4F	; 79	'O'
   45A0 0F                 1584 	.db #0x0F	; 15
   45A1 0F                 1585 	.db #0x0F	; 15
   45A2 2C                 1586 	.db #0x2C	; 44
   45A3 87                 1587 	.db #0x87	; 135
   45A4 4F                 1588 	.db #0x4F	; 79	'O'
   45A5 0F                 1589 	.db #0x0F	; 15
   45A6 1E                 1590 	.db #0x1E	; 30
   45A7 43                 1591 	.db #0x43	; 67	'C'
   45A8 0F                 1592 	.db #0x0F	; 15
   45A9                    1593 _rail_ew_n:
   45A9 0F                 1594 	.db #0x0F	; 15
   45AA 1E                 1595 	.db #0x1E	; 30
   45AB 43                 1596 	.db #0x43	; 67	'C'
   45AC 0F                 1597 	.db #0x0F	; 15
   45AD 0F                 1598 	.db #0x0F	; 15
   45AE 9E                 1599 	.db #0x9E	; 158
   45AF 43                 1600 	.db #0x43	; 67	'C'
   45B0 0F                 1601 	.db #0x0F	; 15
   45B1 0F                 1602 	.db #0x0F	; 15
   45B2 1E                 1603 	.db #0x1E	; 30
   45B3 53                 1604 	.db #0x53	; 83	'S'
   45B4 0F                 1605 	.db #0x0F	; 15
   45B5 0F                 1606 	.db #0x0F	; 15
   45B6 2C                 1607 	.db #0x2C	; 44
   45B7 87                 1608 	.db #0x87	; 135
   45B8 0F                 1609 	.db #0x0F	; 15
   45B9 4F                 1610 	.db #0x4F	; 79	'O'
   45BA 58                 1611 	.db #0x58	; 88	'X'
   45BB 0F                 1612 	.db #0x0F	; 15
   45BC 0F                 1613 	.db #0x0F	; 15
   45BD 0F                 1614 	.db #0x0F	; 15
   45BE A1                 1615 	.db #0xA1	; 161
   45BF 0F                 1616 	.db #0x0F	; 15
   45C0 8F                 1617 	.db #0x8F	; 143
   45C1 1E                 1618 	.db #0x1E	; 30
   45C2 43                 1619 	.db #0x43	; 67	'C'
   45C3 0F                 1620 	.db #0x0F	; 15
   45C4 0F                 1621 	.db #0x0F	; 15
   45C5 E0                 1622 	.db #0xE0	; 224
   45C6 F0                 1623 	.db #0xF0	; 240
   45C7 F0                 1624 	.db #0xF0	; 240
   45C8 F0                 1625 	.db #0xF0	; 240
   45C9 00                 1626 	.db #0x00	; 0
   45CA 00                 1627 	.db #0x00	; 0
   45CB 00                 1628 	.db #0x00	; 0
   45CC 00                 1629 	.db #0x00	; 0
   45CD F0                 1630 	.db #0xF0	; 240
   45CE F0                 1631 	.db #0xF0	; 240
   45CF F0                 1632 	.db #0xF0	; 240
   45D0 F0                 1633 	.db #0xF0	; 240
   45D1 0F                 1634 	.db #0x0F	; 15
   45D2 0F                 1635 	.db #0x0F	; 15
   45D3 0F                 1636 	.db #0x0F	; 15
   45D4 0F                 1637 	.db #0x0F	; 15
   45D5 2F                 1638 	.db #0x2F	; 47
   45D6 1F                 1639 	.db #0x1F	; 31
   45D7 0F                 1640 	.db #0x0F	; 15
   45D8 4F                 1641 	.db #0x4F	; 79	'O'
   45D9 0F                 1642 	.db #0x0F	; 15
   45DA 0F                 1643 	.db #0x0F	; 15
   45DB 0F                 1644 	.db #0x0F	; 15
   45DC 0F                 1645 	.db #0x0F	; 15
   45DD 0F                 1646 	.db #0x0F	; 15
   45DE 0F                 1647 	.db #0x0F	; 15
   45DF 0F                 1648 	.db #0x0F	; 15
   45E0 0F                 1649 	.db #0x0F	; 15
   45E1 0F                 1650 	.db #0x0F	; 15
   45E2 8F                 1651 	.db #0x8F	; 143
   45E3 4F                 1652 	.db #0x4F	; 79	'O'
   45E4 0F                 1653 	.db #0x0F	; 15
   45E5 0F                 1654 	.db #0x0F	; 15
   45E6 0F                 1655 	.db #0x0F	; 15
   45E7 0F                 1656 	.db #0x0F	; 15
   45E8 0F                 1657 	.db #0x0F	; 15
   45E9                    1658 _rail_ew_s:
   45E9 0F                 1659 	.db #0x0F	; 15
   45EA 0F                 1660 	.db #0x0F	; 15
   45EB 0F                 1661 	.db #0x0F	; 15
   45EC 0F                 1662 	.db #0x0F	; 15
   45ED 0F                 1663 	.db #0x0F	; 15
   45EE 0F                 1664 	.db #0x0F	; 15
   45EF 0F                 1665 	.db #0x0F	; 15
   45F0 8F                 1666 	.db #0x8F	; 143
   45F1 0F                 1667 	.db #0x0F	; 15
   45F2 4F                 1668 	.db #0x4F	; 79	'O'
   45F3 0F                 1669 	.db #0x0F	; 15
   45F4 0F                 1670 	.db #0x0F	; 15
   45F5 0F                 1671 	.db #0x0F	; 15
   45F6 0F                 1672 	.db #0x0F	; 15
   45F7 0F                 1673 	.db #0x0F	; 15
   45F8 0F                 1674 	.db #0x0F	; 15
   45F9 0F                 1675 	.db #0x0F	; 15
   45FA 0F                 1676 	.db #0x0F	; 15
   45FB 4F                 1677 	.db #0x4F	; 79	'O'
   45FC 0F                 1678 	.db #0x0F	; 15
   45FD 4F                 1679 	.db #0x4F	; 79	'O'
   45FE 0F                 1680 	.db #0x0F	; 15
   45FF 0F                 1681 	.db #0x0F	; 15
   4600 2F                 1682 	.db #0x2F	; 47
   4601 0F                 1683 	.db #0x0F	; 15
   4602 0F                 1684 	.db #0x0F	; 15
   4603 0F                 1685 	.db #0x0F	; 15
   4604 0F                 1686 	.db #0x0F	; 15
   4605 F0                 1687 	.db #0xF0	; 240
   4606 F0                 1688 	.db #0xF0	; 240
   4607 F0                 1689 	.db #0xF0	; 240
   4608 F0                 1690 	.db #0xF0	; 240
   4609 00                 1691 	.db #0x00	; 0
   460A 00                 1692 	.db #0x00	; 0
   460B 00                 1693 	.db #0x00	; 0
   460C 00                 1694 	.db #0x00	; 0
   460D E0                 1695 	.db #0xE0	; 224
   460E F0                 1696 	.db #0xF0	; 240
   460F F0                 1697 	.db #0xF0	; 240
   4610 F0                 1698 	.db #0xF0	; 240
   4611 1E                 1699 	.db #0x1E	; 30
   4612 43                 1700 	.db #0x43	; 67	'C'
   4613 0F                 1701 	.db #0x0F	; 15
   4614 0F                 1702 	.db #0x0F	; 15
   4615 0F                 1703 	.db #0x0F	; 15
   4616 A1                 1704 	.db #0xA1	; 161
   4617 4F                 1705 	.db #0x4F	; 79	'O'
   4618 0F                 1706 	.db #0x0F	; 15
   4619 0F                 1707 	.db #0x0F	; 15
   461A 58                 1708 	.db #0x58	; 88	'X'
   461B 0F                 1709 	.db #0x0F	; 15
   461C 0F                 1710 	.db #0x0F	; 15
   461D 0F                 1711 	.db #0x0F	; 15
   461E 2C                 1712 	.db #0x2C	; 44
   461F 87                 1713 	.db #0x87	; 135
   4620 8F                 1714 	.db #0x8F	; 143
   4621 4F                 1715 	.db #0x4F	; 79	'O'
   4622 1E                 1716 	.db #0x1E	; 30
   4623 43                 1717 	.db #0x43	; 67	'C'
   4624 0F                 1718 	.db #0x0F	; 15
   4625 0F                 1719 	.db #0x0F	; 15
   4626 1E                 1720 	.db #0x1E	; 30
   4627 43                 1721 	.db #0x43	; 67	'C'
   4628 0F                 1722 	.db #0x0F	; 15
   4629                    1723 _rail_ns_w:
   4629 0F                 1724 	.db #0x0F	; 15
   462A 1E                 1725 	.db #0x1E	; 30
   462B 43                 1726 	.db #0x43	; 67	'C'
   462C 0F                 1727 	.db #0x0F	; 15
   462D 4F                 1728 	.db #0x4F	; 79	'O'
   462E 1E                 1729 	.db #0x1E	; 30
   462F 43                 1730 	.db #0x43	; 67	'C'
   4630 2F                 1731 	.db #0x2F	; 47
   4631 0F                 1732 	.db #0x0F	; 15
   4632 1E                 1733 	.db #0x1E	; 30
   4633 43                 1734 	.db #0x43	; 67	'C'
   4634 0F                 1735 	.db #0x0F	; 15
   4635 0F                 1736 	.db #0x0F	; 15
   4636 1E                 1737 	.db #0x1E	; 30
   4637 43                 1738 	.db #0x43	; 67	'C'
   4638 0F                 1739 	.db #0x0F	; 15
   4639 0F                 1740 	.db #0x0F	; 15
   463A 5E                 1741 	.db #0x5E	; 94
   463B 43                 1742 	.db #0x43	; 67	'C'
   463C 0F                 1743 	.db #0x0F	; 15
   463D 0F                 1744 	.db #0x0F	; 15
   463E 1E                 1745 	.db #0x1E	; 30
   463F 43                 1746 	.db #0x43	; 67	'C'
   4640 0F                 1747 	.db #0x0F	; 15
   4641 0F                 1748 	.db #0x0F	; 15
   4642 1E                 1749 	.db #0x1E	; 30
   4643 43                 1750 	.db #0x43	; 67	'C'
   4644 0F                 1751 	.db #0x0F	; 15
   4645 E1                 1752 	.db #0xE1	; 225
   4646 1E                 1753 	.db #0x1E	; 30
   4647 43                 1754 	.db #0x43	; 67	'C'
   4648 4F                 1755 	.db #0x4F	; 79	'O'
   4649 10                 1756 	.db #0x10	; 16
   464A 1E                 1757 	.db #0x1E	; 30
   464B 43                 1758 	.db #0x43	; 67	'C'
   464C 0F                 1759 	.db #0x0F	; 15
   464D E0                 1760 	.db #0xE0	; 224
   464E 96                 1761 	.db #0x96	; 150
   464F 43                 1762 	.db #0x43	; 67	'C'
   4650 0F                 1763 	.db #0x0F	; 15
   4651 1E                 1764 	.db #0x1E	; 30
   4652 52                 1765 	.db #0x52	; 82	'R'
   4653 43                 1766 	.db #0x43	; 67	'C'
   4654 0F                 1767 	.db #0x0F	; 15
   4655 0F                 1768 	.db #0x0F	; 15
   4656 B0                 1769 	.db #0xB0	; 176
   4657 53                 1770 	.db #0x53	; 83	'S'
   4658 0F                 1771 	.db #0x0F	; 15
   4659 0F                 1772 	.db #0x0F	; 15
   465A 58                 1773 	.db #0x58	; 88	'X'
   465B 43                 1774 	.db #0x43	; 67	'C'
   465C 0F                 1775 	.db #0x0F	; 15
   465D 2F                 1776 	.db #0x2F	; 47
   465E 2C                 1777 	.db #0x2C	; 44
   465F 43                 1778 	.db #0x43	; 67	'C'
   4660 0F                 1779 	.db #0x0F	; 15
   4661 0F                 1780 	.db #0x0F	; 15
   4662 1E                 1781 	.db #0x1E	; 30
   4663 43                 1782 	.db #0x43	; 67	'C'
   4664 2F                 1783 	.db #0x2F	; 47
   4665 0F                 1784 	.db #0x0F	; 15
   4666 1E                 1785 	.db #0x1E	; 30
   4667 43                 1786 	.db #0x43	; 67	'C'
   4668 0F                 1787 	.db #0x0F	; 15
   4669                    1788 _rail_ns_e:
   4669 0F                 1789 	.db #0x0F	; 15
   466A 1E                 1790 	.db #0x1E	; 30
   466B 43                 1791 	.db #0x43	; 67	'C'
   466C 0F                 1792 	.db #0x0F	; 15
   466D 0F                 1793 	.db #0x0F	; 15
   466E 1E                 1794 	.db #0x1E	; 30
   466F 43                 1795 	.db #0x43	; 67	'C'
   4670 2F                 1796 	.db #0x2F	; 47
   4671 0F                 1797 	.db #0x0F	; 15
   4672 9E                 1798 	.db #0x9E	; 158
   4673 43                 1799 	.db #0x43	; 67	'C'
   4674 0F                 1800 	.db #0x0F	; 15
   4675 0F                 1801 	.db #0x0F	; 15
   4676 1E                 1802 	.db #0x1E	; 30
   4677 43                 1803 	.db #0x43	; 67	'C'
   4678 0F                 1804 	.db #0x0F	; 15
   4679 0F                 1805 	.db #0x0F	; 15
   467A 1E                 1806 	.db #0x1E	; 30
   467B 43                 1807 	.db #0x43	; 67	'C'
   467C 8F                 1808 	.db #0x8F	; 143
   467D 0F                 1809 	.db #0x0F	; 15
   467E 1E                 1810 	.db #0x1E	; 30
   467F 43                 1811 	.db #0x43	; 67	'C'
   4680 0F                 1812 	.db #0x0F	; 15
   4681 0F                 1813 	.db #0x0F	; 15
   4682 5E                 1814 	.db #0x5E	; 94
   4683 43                 1815 	.db #0x43	; 67	'C'
   4684 0F                 1816 	.db #0x0F	; 15
   4685 4F                 1817 	.db #0x4F	; 79	'O'
   4686 1E                 1818 	.db #0x1E	; 30
   4687 43                 1819 	.db #0x43	; 67	'C'
   4688 3C                 1820 	.db #0x3C	; 60
   4689 0F                 1821 	.db #0x0F	; 15
   468A 1E                 1822 	.db #0x1E	; 30
   468B 43                 1823 	.db #0x43	; 67	'C'
   468C 48                 1824 	.db #0x48	; 72	'H'
   468D 0F                 1825 	.db #0x0F	; 15
   468E 1E                 1826 	.db #0x1E	; 30
   468F 43                 1827 	.db #0x43	; 67	'C'
   4690 B0                 1828 	.db #0xB0	; 176
   4691 0F                 1829 	.db #0x0F	; 15
   4692 1E                 1830 	.db #0x1E	; 30
   4693 52                 1831 	.db #0x52	; 82	'R'
   4694 43                 1832 	.db #0x43	; 67	'C'
   4695 0F                 1833 	.db #0x0F	; 15
   4696 5E                 1834 	.db #0x5E	; 94
   4697 60                 1835 	.db #0x60	; 96
   4698 87                 1836 	.db #0x87	; 135
   4699 0F                 1837 	.db #0x0F	; 15
   469A 1E                 1838 	.db #0x1E	; 30
   469B 50                 1839 	.db #0x50	; 80	'P'
   469C 0F                 1840 	.db #0x0F	; 15
   469D 0F                 1841 	.db #0x0F	; 15
   469E 1E                 1842 	.db #0x1E	; 30
   469F 21                 1843 	.db #0x21	; 33
   46A0 0F                 1844 	.db #0x0F	; 15
   46A1 2F                 1845 	.db #0x2F	; 47
   46A2 1E                 1846 	.db #0x1E	; 30
   46A3 43                 1847 	.db #0x43	; 67	'C'
   46A4 8F                 1848 	.db #0x8F	; 143
   46A5 0F                 1849 	.db #0x0F	; 15
   46A6 1E                 1850 	.db #0x1E	; 30
   46A7 43                 1851 	.db #0x43	; 67	'C'
   46A8 0F                 1852 	.db #0x0F	; 15
                           1853 ;src/includes/gui.h:8: void putM1(void)
                           1854 ;	---------------------------------
                           1855 ; Function putM1
                           1856 ; ---------------------------------
   46A9                    1857 _putM1::
                           1858 ;src/includes/gui.h:10: cpct_setVideoMode(1);
   46A9 3E 01         [ 7] 1859 	ld	a,#0x01
   46AB F5            [11] 1860 	push	af
   46AC 33            [ 6] 1861 	inc	sp
   46AD CD D6 64      [17] 1862 	call	_cpct_setVideoMode
   46B0 33            [ 6] 1863 	inc	sp
                           1864 ;src/includes/gui.h:12: cpct_setPalette(paletteMenusM1, 4);
   46B1 21 23 40      [10] 1865 	ld	hl,#_paletteMenusM1
   46B4 01 04 00      [10] 1866 	ld	bc,#0x0004
   46B7 C5            [11] 1867 	push	bc
   46B8 E5            [11] 1868 	push	hl
   46B9 CD BF 62      [17] 1869 	call	_cpct_setPalette
   46BC C9            [10] 1870 	ret
                           1871 ;src/includes/gui.h:15: void putM2(void)
                           1872 ;	---------------------------------
                           1873 ; Function putM2
                           1874 ; ---------------------------------
   46BD                    1875 _putM2::
                           1876 ;src/includes/gui.h:17: cpct_setVideoMode(2);
   46BD 3E 02         [ 7] 1877 	ld	a,#0x02
   46BF F5            [11] 1878 	push	af
   46C0 33            [ 6] 1879 	inc	sp
   46C1 CD D6 64      [17] 1880 	call	_cpct_setVideoMode
   46C4 33            [ 6] 1881 	inc	sp
                           1882 ;src/includes/gui.h:19: cpct_setPalette(paletteMenusM2, 2);
   46C5 21 27 40      [10] 1883 	ld	hl,#_paletteMenusM2
   46C8 01 02 00      [10] 1884 	ld	bc,#0x0002
   46CB C5            [11] 1885 	push	bc
   46CC E5            [11] 1886 	push	hl
   46CD CD BF 62      [17] 1887 	call	_cpct_setPalette
                           1888 ;src/includes/gui.h:20: cpct_clearScreen(0b11111111);
   46D0 21 00 40      [10] 1889 	ld	hl,#0x4000
   46D3 E5            [11] 1890 	push	hl
   46D4 3E FF         [ 7] 1891 	ld	a,#0xFF
   46D6 F5            [11] 1892 	push	af
   46D7 33            [ 6] 1893 	inc	sp
   46D8 26 C0         [ 7] 1894 	ld	h, #0xC0
   46DA E5            [11] 1895 	push	hl
   46DB CD 04 65      [17] 1896 	call	_cpct_memset
   46DE C9            [10] 1897 	ret
                           1898 ;src/includes/gui.h:23: void drawBoxM0(int width_, int height_)
                           1899 ;	---------------------------------
                           1900 ; Function drawBoxM0
                           1901 ; ---------------------------------
   46DF                    1902 _drawBoxM0::
   46DF DD E5         [15] 1903 	push	ix
   46E1 DD 21 00 00   [14] 1904 	ld	ix,#0
   46E5 DD 39         [15] 1905 	add	ix,sp
   46E7 21 F9 FF      [10] 1906 	ld	hl,#-7
   46EA 39            [11] 1907 	add	hl,sp
   46EB F9            [ 6] 1908 	ld	sp,hl
                           1909 ;src/includes/gui.h:28: int left = (80-width_)/2;
   46EC 3E 50         [ 7] 1910 	ld	a,#0x50
   46EE DD 96 04      [19] 1911 	sub	a, 4 (ix)
   46F1 57            [ 4] 1912 	ld	d,a
   46F2 3E 00         [ 7] 1913 	ld	a,#0x00
   46F4 DD 9E 05      [19] 1914 	sbc	a, 5 (ix)
   46F7 5F            [ 4] 1915 	ld	e,a
   46F8 6A            [ 4] 1916 	ld	l, d
   46F9 63            [ 4] 1917 	ld	h, e
   46FA CB 7B         [ 8] 1918 	bit	7, e
   46FC 28 03         [12] 1919 	jr	Z,00103$
   46FE 6A            [ 4] 1920 	ld	l, d
   46FF 63            [ 4] 1921 	ld	h, e
   4700 23            [ 6] 1922 	inc	hl
   4701                    1923 00103$:
   4701 DD 75 F9      [19] 1924 	ld	-7 (ix),l
   4704 DD 74 FA      [19] 1925 	ld	-6 (ix),h
   4707 DD CB FA 2E   [23] 1926 	sra	-6 (ix)
   470B DD CB F9 1E   [23] 1927 	rr	-7 (ix)
                           1928 ;src/includes/gui.h:29: int top = (200-height_)/2;
   470F 3E C8         [ 7] 1929 	ld	a,#0xC8
   4711 DD 96 06      [19] 1930 	sub	a, 6 (ix)
   4714 4F            [ 4] 1931 	ld	c,a
   4715 3E 00         [ 7] 1932 	ld	a,#0x00
   4717 DD 9E 07      [19] 1933 	sbc	a, 7 (ix)
   471A 47            [ 4] 1934 	ld	b,a
   471B 61            [ 4] 1935 	ld	h,c
   471C 50            [ 4] 1936 	ld	d,b
   471D CB 78         [ 8] 1937 	bit	7, b
   471F 28 03         [12] 1938 	jr	Z,00104$
   4721 03            [ 6] 1939 	inc	bc
   4722 61            [ 4] 1940 	ld	h,c
   4723 50            [ 4] 1941 	ld	d,b
   4724                    1942 00104$:
   4724 5C            [ 4] 1943 	ld	e, h
   4725 CB 2A         [ 8] 1944 	sra	d
   4727 CB 1B         [ 8] 1945 	rr	e
                           1946 ;src/includes/gui.h:31: cpct_clearScreen(cpct_px2byteM0(9,9));
   4729 D5            [11] 1947 	push	de
   472A 21 09 09      [10] 1948 	ld	hl,#0x0909
   472D E5            [11] 1949 	push	hl
   472E CD E8 64      [17] 1950 	call	_cpct_px2byteM0
   4731 65            [ 4] 1951 	ld	h,l
   4732 01 00 40      [10] 1952 	ld	bc,#0x4000
   4735 C5            [11] 1953 	push	bc
   4736 E5            [11] 1954 	push	hl
   4737 33            [ 6] 1955 	inc	sp
   4738 21 00 C0      [10] 1956 	ld	hl,#0xC000
   473B E5            [11] 1957 	push	hl
   473C CD 04 65      [17] 1958 	call	_cpct_memset
   473F D1            [10] 1959 	pop	de
                           1960 ;src/includes/gui.h:34: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+4);
   4740 DD 73 FE      [19] 1961 	ld	-2 (ix), e
   4743 63            [ 4] 1962 	ld	h, e
   4744 24            [ 4] 1963 	inc	h
   4745 24            [ 4] 1964 	inc	h
   4746 24            [ 4] 1965 	inc	h
   4747 24            [ 4] 1966 	inc	h
   4748 DD 7E F9      [19] 1967 	ld	a,-7 (ix)
   474B 3C            [ 4] 1968 	inc	a
   474C DD 77 FF      [19] 1969 	ld	-1 (ix),a
   474F D5            [11] 1970 	push	de
   4750 E5            [11] 1971 	push	hl
   4751 33            [ 6] 1972 	inc	sp
   4752 DD 7E FF      [19] 1973 	ld	a,-1 (ix)
   4755 F5            [11] 1974 	push	af
   4756 33            [ 6] 1975 	inc	sp
   4757 21 00 C0      [10] 1976 	ld	hl,#0xC000
   475A E5            [11] 1977 	push	hl
   475B CD 38 66      [17] 1978 	call	_cpct_getScreenPtr
   475E D1            [10] 1979 	pop	de
   475F 4D            [ 4] 1980 	ld	c, l
   4760 44            [ 4] 1981 	ld	b, h
                           1982 ;src/includes/gui.h:35: cpct_drawSolidBox(pvid, cpct_px2byteM0(2,2), width_, height_);
   4761 DD 7E 06      [19] 1983 	ld	a,6 (ix)
   4764 DD 77 FD      [19] 1984 	ld	-3 (ix),a
   4767 DD 7E 04      [19] 1985 	ld	a,4 (ix)
   476A DD 77 FB      [19] 1986 	ld	-5 (ix),a
   476D C5            [11] 1987 	push	bc
   476E D5            [11] 1988 	push	de
   476F 21 02 02      [10] 1989 	ld	hl,#0x0202
   4772 E5            [11] 1990 	push	hl
   4773 CD E8 64      [17] 1991 	call	_cpct_px2byteM0
   4776 DD 75 FC      [19] 1992 	ld	-4 (ix),l
   4779 D1            [10] 1993 	pop	de
   477A C1            [10] 1994 	pop	bc
   477B D5            [11] 1995 	push	de
   477C DD 66 FD      [19] 1996 	ld	h,-3 (ix)
   477F DD 6E FB      [19] 1997 	ld	l,-5 (ix)
   4782 E5            [11] 1998 	push	hl
   4783 DD 7E FC      [19] 1999 	ld	a,-4 (ix)
   4786 F5            [11] 2000 	push	af
   4787 33            [ 6] 2001 	inc	sp
   4788 C5            [11] 2002 	push	bc
   4789 CD 7F 65      [17] 2003 	call	_cpct_drawSolidBox
   478C F1            [10] 2004 	pop	af
   478D F1            [10] 2005 	pop	af
   478E 33            [ 6] 2006 	inc	sp
   478F D1            [10] 2007 	pop	de
                           2008 ;src/includes/gui.h:38: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4790 63            [ 4] 2009 	ld	h,e
   4791 DD 56 F9      [19] 2010 	ld	d,-7 (ix)
   4794 E5            [11] 2011 	push	hl
   4795 33            [ 6] 2012 	inc	sp
   4796 D5            [11] 2013 	push	de
   4797 33            [ 6] 2014 	inc	sp
   4798 21 00 C0      [10] 2015 	ld	hl,#0xC000
   479B E5            [11] 2016 	push	hl
   479C CD 38 66      [17] 2017 	call	_cpct_getScreenPtr
                           2018 ;src/includes/gui.h:39: cpct_drawSolidBox(pvid, cpct_px2byteM0(6,6), width_, height_);
   479F E5            [11] 2019 	push	hl
   47A0 21 06 06      [10] 2020 	ld	hl,#0x0606
   47A3 E5            [11] 2021 	push	hl
   47A4 CD E8 64      [17] 2022 	call	_cpct_px2byteM0
   47A7 45            [ 4] 2023 	ld	b,l
   47A8 D1            [10] 2024 	pop	de
   47A9 DD 66 FD      [19] 2025 	ld	h,-3 (ix)
   47AC DD 6E FB      [19] 2026 	ld	l,-5 (ix)
   47AF E5            [11] 2027 	push	hl
   47B0 C5            [11] 2028 	push	bc
   47B1 33            [ 6] 2029 	inc	sp
   47B2 D5            [11] 2030 	push	de
   47B3 CD 7F 65      [17] 2031 	call	_cpct_drawSolidBox
   47B6 F1            [10] 2032 	pop	af
   47B7 F1            [10] 2033 	pop	af
   47B8 33            [ 6] 2034 	inc	sp
                           2035 ;src/includes/gui.h:42: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+2);
   47B9 DD 66 FE      [19] 2036 	ld	h,-2 (ix)
   47BC 24            [ 4] 2037 	inc	h
   47BD 24            [ 4] 2038 	inc	h
   47BE E5            [11] 2039 	push	hl
   47BF 33            [ 6] 2040 	inc	sp
   47C0 DD 7E FF      [19] 2041 	ld	a,-1 (ix)
   47C3 F5            [11] 2042 	push	af
   47C4 33            [ 6] 2043 	inc	sp
   47C5 21 00 C0      [10] 2044 	ld	hl,#0xC000
   47C8 E5            [11] 2045 	push	hl
   47C9 CD 38 66      [17] 2046 	call	_cpct_getScreenPtr
   47CC EB            [ 4] 2047 	ex	de,hl
                           2048 ;src/includes/gui.h:43: cpct_drawSolidBox(pvid, cpct_px2byteM0(0,0), width_-2, height_-4);
   47CD DD 7E 06      [19] 2049 	ld	a,6 (ix)
   47D0 C6 FC         [ 7] 2050 	add	a,#0xFC
   47D2 4F            [ 4] 2051 	ld	c,a
   47D3 DD 46 04      [19] 2052 	ld	b,4 (ix)
   47D6 05            [ 4] 2053 	dec	b
   47D7 05            [ 4] 2054 	dec	b
   47D8 C5            [11] 2055 	push	bc
   47D9 D5            [11] 2056 	push	de
   47DA 21 00 00      [10] 2057 	ld	hl,#0x0000
   47DD E5            [11] 2058 	push	hl
   47DE CD E8 64      [17] 2059 	call	_cpct_px2byteM0
   47E1 DD 75 FC      [19] 2060 	ld	-4 (ix),l
   47E4 D1            [10] 2061 	pop	de
   47E5 C1            [10] 2062 	pop	bc
   47E6 79            [ 4] 2063 	ld	a,c
   47E7 F5            [11] 2064 	push	af
   47E8 33            [ 6] 2065 	inc	sp
   47E9 C5            [11] 2066 	push	bc
   47EA 33            [ 6] 2067 	inc	sp
   47EB DD 7E FC      [19] 2068 	ld	a,-4 (ix)
   47EE F5            [11] 2069 	push	af
   47EF 33            [ 6] 2070 	inc	sp
   47F0 D5            [11] 2071 	push	de
   47F1 CD 7F 65      [17] 2072 	call	_cpct_drawSolidBox
   47F4 DD F9         [10] 2073 	ld	sp,ix
   47F6 DD E1         [14] 2074 	pop	ix
   47F8 C9            [10] 2075 	ret
                           2076 ;src/includes/gui.h:47: void drawBoxM2(int width_, int height_)
                           2077 ;	---------------------------------
                           2078 ; Function drawBoxM2
                           2079 ; ---------------------------------
   47F9                    2080 _drawBoxM2::
   47F9 DD E5         [15] 2081 	push	ix
   47FB DD 21 00 00   [14] 2082 	ld	ix,#0
   47FF DD 39         [15] 2083 	add	ix,sp
   4801 21 FA FF      [10] 2084 	ld	hl,#-6
   4804 39            [11] 2085 	add	hl,sp
   4805 F9            [ 6] 2086 	ld	sp,hl
                           2087 ;src/includes/gui.h:52: int left = (80-width_)/2;
   4806 3E 50         [ 7] 2088 	ld	a,#0x50
   4808 DD 96 04      [19] 2089 	sub	a, 4 (ix)
   480B 4F            [ 4] 2090 	ld	c,a
   480C 3E 00         [ 7] 2091 	ld	a,#0x00
   480E DD 9E 05      [19] 2092 	sbc	a, 5 (ix)
   4811 47            [ 4] 2093 	ld	b,a
   4812 61            [ 4] 2094 	ld	h,c
   4813 50            [ 4] 2095 	ld	d,b
   4814 CB 78         [ 8] 2096 	bit	7, b
   4816 28 03         [12] 2097 	jr	Z,00103$
   4818 03            [ 6] 2098 	inc	bc
   4819 61            [ 4] 2099 	ld	h,c
   481A 50            [ 4] 2100 	ld	d,b
   481B                    2101 00103$:
   481B 5C            [ 4] 2102 	ld	e, h
   481C CB 2A         [ 8] 2103 	sra	d
   481E CB 1B         [ 8] 2104 	rr	e
                           2105 ;src/includes/gui.h:53: int top = (200-height_)/2;
   4820 3E C8         [ 7] 2106 	ld	a,#0xC8
   4822 DD 96 06      [19] 2107 	sub	a, 6 (ix)
   4825 4F            [ 4] 2108 	ld	c,a
   4826 3E 00         [ 7] 2109 	ld	a,#0x00
   4828 DD 9E 07      [19] 2110 	sbc	a, 7 (ix)
   482B 47            [ 4] 2111 	ld	b,a
   482C 61            [ 4] 2112 	ld	h,c
   482D 68            [ 4] 2113 	ld	l,b
   482E CB 78         [ 8] 2114 	bit	7, b
   4830 28 03         [12] 2115 	jr	Z,00104$
   4832 03            [ 6] 2116 	inc	bc
   4833 61            [ 4] 2117 	ld	h,c
   4834 68            [ 4] 2118 	ld	l,b
   4835                    2119 00104$:
   4835 DD 74 FA      [19] 2120 	ld	-6 (ix),h
   4838 DD 75 FB      [19] 2121 	ld	-5 (ix),l
   483B DD CB FB 2E   [23] 2122 	sra	-5 (ix)
   483F DD CB FA 1E   [23] 2123 	rr	-6 (ix)
                           2124 ;src/includes/gui.h:56: pvid = cpct_getScreenPtr(SCR_VMEM, left+2, top+5);
   4843 DD 7E FA      [19] 2125 	ld	a,-6 (ix)
   4846 DD 77 FF      [19] 2126 	ld	-1 (ix), a
   4849 C6 05         [ 7] 2127 	add	a, #0x05
   484B 4F            [ 4] 2128 	ld	c,a
   484C DD 73 FC      [19] 2129 	ld	-4 (ix), e
   484F 63            [ 4] 2130 	ld	h, e
   4850 24            [ 4] 2131 	inc	h
   4851 24            [ 4] 2132 	inc	h
   4852 D5            [11] 2133 	push	de
   4853 79            [ 4] 2134 	ld	a,c
   4854 F5            [11] 2135 	push	af
   4855 33            [ 6] 2136 	inc	sp
   4856 E5            [11] 2137 	push	hl
   4857 33            [ 6] 2138 	inc	sp
   4858 21 00 C0      [10] 2139 	ld	hl,#0xC000
   485B E5            [11] 2140 	push	hl
   485C CD 38 66      [17] 2141 	call	_cpct_getScreenPtr
   485F D1            [10] 2142 	pop	de
                           2143 ;src/includes/gui.h:57: cpct_drawSolidBox(pvid, 0b00000000, width_-1, height_);
   4860 DD 46 06      [19] 2144 	ld	b,6 (ix)
   4863 DD 4E 04      [19] 2145 	ld	c,4 (ix)
   4866 79            [ 4] 2146 	ld	a,c
   4867 C6 FF         [ 7] 2147 	add	a,#0xFF
   4869 DD 75 FD      [19] 2148 	ld	-3 (ix),l
   486C DD 74 FE      [19] 2149 	ld	-2 (ix),h
   486F C5            [11] 2150 	push	bc
   4870 D5            [11] 2151 	push	de
   4871 C5            [11] 2152 	push	bc
   4872 33            [ 6] 2153 	inc	sp
   4873 F5            [11] 2154 	push	af
   4874 33            [ 6] 2155 	inc	sp
   4875 AF            [ 4] 2156 	xor	a, a
   4876 F5            [11] 2157 	push	af
   4877 33            [ 6] 2158 	inc	sp
   4878 DD 6E FD      [19] 2159 	ld	l,-3 (ix)
   487B DD 66 FE      [19] 2160 	ld	h,-2 (ix)
   487E E5            [11] 2161 	push	hl
   487F CD 7F 65      [17] 2162 	call	_cpct_drawSolidBox
   4882 F1            [10] 2163 	pop	af
   4883 F1            [10] 2164 	pop	af
   4884 33            [ 6] 2165 	inc	sp
   4885 D1            [10] 2166 	pop	de
   4886 C1            [10] 2167 	pop	bc
                           2168 ;src/includes/gui.h:60: pvid = cpct_getScreenPtr(SCR_VMEM, left, top);
   4887 DD 66 FA      [19] 2169 	ld	h,-6 (ix)
   488A 53            [ 4] 2170 	ld	d,e
   488B C5            [11] 2171 	push	bc
   488C E5            [11] 2172 	push	hl
   488D 33            [ 6] 2173 	inc	sp
   488E D5            [11] 2174 	push	de
   488F 33            [ 6] 2175 	inc	sp
   4890 21 00 C0      [10] 2176 	ld	hl,#0xC000
   4893 E5            [11] 2177 	push	hl
   4894 CD 38 66      [17] 2178 	call	_cpct_getScreenPtr
   4897 C1            [10] 2179 	pop	bc
                           2180 ;src/includes/gui.h:61: cpct_drawSolidBox(pvid, 0b11111000, width_, height_);
   4898 DD 7E 04      [19] 2181 	ld	a,4 (ix)
   489B EB            [ 4] 2182 	ex	de,hl
   489C C5            [11] 2183 	push	bc
   489D C5            [11] 2184 	push	bc
   489E 33            [ 6] 2185 	inc	sp
   489F 47            [ 4] 2186 	ld	b,a
   48A0 0E F8         [ 7] 2187 	ld	c,#0xF8
   48A2 C5            [11] 2188 	push	bc
   48A3 D5            [11] 2189 	push	de
   48A4 CD 7F 65      [17] 2190 	call	_cpct_drawSolidBox
   48A7 F1            [10] 2191 	pop	af
   48A8 F1            [10] 2192 	pop	af
   48A9 33            [ 6] 2193 	inc	sp
   48AA C1            [10] 2194 	pop	bc
                           2195 ;src/includes/gui.h:64: pvid = cpct_getScreenPtr(SCR_VMEM, left+1, top+1);
   48AB DD 66 FF      [19] 2196 	ld	h,-1 (ix)
   48AE 24            [ 4] 2197 	inc	h
   48AF DD 56 FC      [19] 2198 	ld	d,-4 (ix)
   48B2 14            [ 4] 2199 	inc	d
   48B3 C5            [11] 2200 	push	bc
   48B4 E5            [11] 2201 	push	hl
   48B5 33            [ 6] 2202 	inc	sp
   48B6 D5            [11] 2203 	push	de
   48B7 33            [ 6] 2204 	inc	sp
   48B8 21 00 C0      [10] 2205 	ld	hl,#0xC000
   48BB E5            [11] 2206 	push	hl
   48BC CD 38 66      [17] 2207 	call	_cpct_getScreenPtr
   48BF C1            [10] 2208 	pop	bc
   48C0 5D            [ 4] 2209 	ld	e, l
   48C1 54            [ 4] 2210 	ld	d, h
                           2211 ;src/includes/gui.h:65: cpct_drawSolidBox(pvid, 0b11111111, width_-2, height_-2);
   48C2 DD 66 06      [19] 2212 	ld	h,6 (ix)
   48C5 25            [ 4] 2213 	dec	h
   48C6 25            [ 4] 2214 	dec	h
   48C7 79            [ 4] 2215 	ld	a,c
   48C8 C6 FE         [ 7] 2216 	add	a,#0xFE
   48CA E5            [11] 2217 	push	hl
   48CB 33            [ 6] 2218 	inc	sp
   48CC 47            [ 4] 2219 	ld	b,a
   48CD 0E FF         [ 7] 2220 	ld	c,#0xFF
   48CF C5            [11] 2221 	push	bc
   48D0 D5            [11] 2222 	push	de
   48D1 CD 7F 65      [17] 2223 	call	_cpct_drawSolidBox
   48D4 DD F9         [10] 2224 	ld	sp,ix
   48D6 DD E1         [14] 2225 	pop	ix
   48D8 C9            [10] 2226 	ret
                           2227 ;src/includes/gui.h:68: void EraseMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           2228 ;	---------------------------------
                           2229 ; Function EraseMenuEntry
                           2230 ; ---------------------------------
   48D9                    2231 _EraseMenuEntry::
   48D9 DD E5         [15] 2232 	push	ix
   48DB DD 21 00 00   [14] 2233 	ld	ix,#0
   48DF DD 39         [15] 2234 	add	ix,sp
   48E1 3B            [ 6] 2235 	dec	sp
                           2236 ;src/includes/gui.h:73: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   48E2 DD 4E 06      [19] 2237 	ld	c,6 (ix)
   48E5 06 00         [ 7] 2238 	ld	b,#0x00
   48E7 69            [ 4] 2239 	ld	l, c
   48E8 60            [ 4] 2240 	ld	h, b
   48E9 29            [11] 2241 	add	hl, hl
   48EA 29            [11] 2242 	add	hl, hl
   48EB 09            [11] 2243 	add	hl, bc
   48EC 29            [11] 2244 	add	hl, hl
   48ED 4D            [ 4] 2245 	ld	c,l
   48EE 44            [ 4] 2246 	ld	b,h
   48EF 3E C9         [ 7] 2247 	ld	a,#0xC9
   48F1 91            [ 4] 2248 	sub	a, c
   48F2 57            [ 4] 2249 	ld	d,a
   48F3 3E 00         [ 7] 2250 	ld	a,#0x00
   48F5 98            [ 4] 2251 	sbc	a, b
   48F6 5F            [ 4] 2252 	ld	e,a
   48F7 6A            [ 4] 2253 	ld	l, d
   48F8 63            [ 4] 2254 	ld	h, e
   48F9 CB 7B         [ 8] 2255 	bit	7, e
   48FB 28 03         [12] 2256 	jr	Z,00103$
   48FD 6A            [ 4] 2257 	ld	l, d
   48FE 63            [ 4] 2258 	ld	h, e
   48FF 23            [ 6] 2259 	inc	hl
   4900                    2260 00103$:
   4900 CB 2C         [ 8] 2261 	sra	h
   4902 CB 1D         [ 8] 2262 	rr	l
   4904 55            [ 4] 2263 	ld	d,l
   4905 DD 7E 07      [19] 2264 	ld	a,7 (ix)
   4908 5F            [ 4] 2265 	ld	e,a
   4909 87            [ 4] 2266 	add	a, a
   490A 87            [ 4] 2267 	add	a, a
   490B 83            [ 4] 2268 	add	a, e
   490C 87            [ 4] 2269 	add	a, a
   490D DD 77 FF      [19] 2270 	ld	-1 (ix),a
   4910 7A            [ 4] 2271 	ld	a,d
   4911 DD 86 FF      [19] 2272 	add	a, -1 (ix)
   4914 C5            [11] 2273 	push	bc
   4915 57            [ 4] 2274 	ld	d,a
   4916 1E 20         [ 7] 2275 	ld	e,#0x20
   4918 D5            [11] 2276 	push	de
   4919 21 00 C0      [10] 2277 	ld	hl,#0xC000
   491C E5            [11] 2278 	push	hl
   491D CD 38 66      [17] 2279 	call	_cpct_getScreenPtr
   4920 C1            [10] 2280 	pop	bc
                           2281 ;src/includes/gui.h:74: cpct_drawSolidBox(p_video, 0b11111111, 17, 10);
   4921 EB            [ 4] 2282 	ex	de,hl
   4922 C5            [11] 2283 	push	bc
   4923 21 11 0A      [10] 2284 	ld	hl,#0x0A11
   4926 E5            [11] 2285 	push	hl
   4927 3E FF         [ 7] 2286 	ld	a,#0xFF
   4929 F5            [11] 2287 	push	af
   492A 33            [ 6] 2288 	inc	sp
   492B D5            [11] 2289 	push	de
   492C CD 7F 65      [17] 2290 	call	_cpct_drawSolidBox
   492F F1            [10] 2291 	pop	af
   4930 F1            [10] 2292 	pop	af
   4931 33            [ 6] 2293 	inc	sp
   4932 C1            [10] 2294 	pop	bc
                           2295 ;src/includes/gui.h:77: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[iSelect]))/2, (202-nbEntry*10)/2+iSelect*10);
   4933 3E CA         [ 7] 2296 	ld	a,#0xCA
   4935 91            [ 4] 2297 	sub	a, c
   4936 57            [ 4] 2298 	ld	d,a
   4937 3E 00         [ 7] 2299 	ld	a,#0x00
   4939 98            [ 4] 2300 	sbc	a, b
   493A 5F            [ 4] 2301 	ld	e,a
   493B 6A            [ 4] 2302 	ld	l, d
   493C 63            [ 4] 2303 	ld	h, e
   493D CB 7B         [ 8] 2304 	bit	7, e
   493F 28 03         [12] 2305 	jr	Z,00104$
   4941 6A            [ 4] 2306 	ld	l, d
   4942 63            [ 4] 2307 	ld	h, e
   4943 23            [ 6] 2308 	inc	hl
   4944                    2309 00104$:
   4944 CB 2C         [ 8] 2310 	sra	h
   4946 CB 1D         [ 8] 2311 	rr	l
   4948 7D            [ 4] 2312 	ld	a,l
   4949 DD 86 FF      [19] 2313 	add	a, -1 (ix)
   494C 4F            [ 4] 2314 	ld	c,a
   494D DD 6E 07      [19] 2315 	ld	l,7 (ix)
   4950 26 00         [ 7] 2316 	ld	h,#0x00
   4952 29            [11] 2317 	add	hl, hl
   4953 EB            [ 4] 2318 	ex	de,hl
   4954 DD 6E 04      [19] 2319 	ld	l,4 (ix)
   4957 DD 66 05      [19] 2320 	ld	h,5 (ix)
   495A 19            [11] 2321 	add	hl,de
   495B E5            [11] 2322 	push	hl
   495C 5E            [ 7] 2323 	ld	e,(hl)
   495D 23            [ 6] 2324 	inc	hl
   495E 56            [ 7] 2325 	ld	d,(hl)
   495F C5            [11] 2326 	push	bc
   4960 D5            [11] 2327 	push	de
   4961 CD 2B 65      [17] 2328 	call	_strlen
   4964 F1            [10] 2329 	pop	af
   4965 EB            [ 4] 2330 	ex	de,hl
   4966 C1            [10] 2331 	pop	bc
   4967 E1            [10] 2332 	pop	hl
   4968 3E 52         [ 7] 2333 	ld	a,#0x52
   496A 93            [ 4] 2334 	sub	a, e
   496B 5F            [ 4] 2335 	ld	e,a
   496C 3E 00         [ 7] 2336 	ld	a,#0x00
   496E 9A            [ 4] 2337 	sbc	a, d
   496F 57            [ 4] 2338 	ld	d,a
   4970 CB 3A         [ 8] 2339 	srl	d
   4972 CB 1B         [ 8] 2340 	rr	e
   4974 E5            [11] 2341 	push	hl
   4975 51            [ 4] 2342 	ld	d, c
   4976 D5            [11] 2343 	push	de
   4977 01 00 C0      [10] 2344 	ld	bc,#0xC000
   497A C5            [11] 2345 	push	bc
   497B CD 38 66      [17] 2346 	call	_cpct_getScreenPtr
   497E 4D            [ 4] 2347 	ld	c,l
   497F 44            [ 4] 2348 	ld	b,h
   4980 E1            [10] 2349 	pop	hl
                           2350 ;src/includes/gui.h:78: cpct_drawStringM2 (menu[iSelect], p_video, 0);
   4981 5E            [ 7] 2351 	ld	e,(hl)
   4982 23            [ 6] 2352 	inc	hl
   4983 56            [ 7] 2353 	ld	d,(hl)
   4984 AF            [ 4] 2354 	xor	a, a
   4985 F5            [11] 2355 	push	af
   4986 33            [ 6] 2356 	inc	sp
   4987 C5            [11] 2357 	push	bc
   4988 D5            [11] 2358 	push	de
   4989 CD 0D 63      [17] 2359 	call	_cpct_drawStringM2
   498C F1            [10] 2360 	pop	af
   498D F1            [10] 2361 	pop	af
   498E 33            [ 6] 2362 	inc	sp
   498F 33            [ 6] 2363 	inc	sp
   4990 DD E1         [14] 2364 	pop	ix
   4992 C9            [10] 2365 	ret
                           2366 ;src/includes/gui.h:81: void drawMenuEntry(char **menu, u8 nbEntry, u8 iSelect)
                           2367 ;	---------------------------------
                           2368 ; Function drawMenuEntry
                           2369 ; ---------------------------------
   4993                    2370 _drawMenuEntry::
   4993 DD E5         [15] 2371 	push	ix
   4995 DD 21 00 00   [14] 2372 	ld	ix,#0
   4999 DD 39         [15] 2373 	add	ix,sp
   499B 21 FA FF      [10] 2374 	ld	hl,#-6
   499E 39            [11] 2375 	add	hl,sp
   499F F9            [ 6] 2376 	ld	sp,hl
                           2377 ;src/includes/gui.h:88: p_video = cpct_getScreenPtr(SCR_VMEM, 32, (201-nbEntry*10)/2+iSelect*10);
   49A0 DD 4E 06      [19] 2378 	ld	c,6 (ix)
   49A3 06 00         [ 7] 2379 	ld	b,#0x00
   49A5 69            [ 4] 2380 	ld	l, c
   49A6 60            [ 4] 2381 	ld	h, b
   49A7 29            [11] 2382 	add	hl, hl
   49A8 29            [11] 2383 	add	hl, hl
   49A9 09            [11] 2384 	add	hl, bc
   49AA 29            [11] 2385 	add	hl, hl
   49AB 4D            [ 4] 2386 	ld	c,l
   49AC 44            [ 4] 2387 	ld	b,h
   49AD 3E C9         [ 7] 2388 	ld	a,#0xC9
   49AF 91            [ 4] 2389 	sub	a, c
   49B0 57            [ 4] 2390 	ld	d,a
   49B1 3E 00         [ 7] 2391 	ld	a,#0x00
   49B3 98            [ 4] 2392 	sbc	a, b
   49B4 5F            [ 4] 2393 	ld	e,a
   49B5 6A            [ 4] 2394 	ld	l, d
   49B6 63            [ 4] 2395 	ld	h, e
   49B7 CB 7B         [ 8] 2396 	bit	7, e
   49B9 28 03         [12] 2397 	jr	Z,00114$
   49BB 6A            [ 4] 2398 	ld	l, d
   49BC 63            [ 4] 2399 	ld	h, e
   49BD 23            [ 6] 2400 	inc	hl
   49BE                    2401 00114$:
   49BE CB 2C         [ 8] 2402 	sra	h
   49C0 CB 1D         [ 8] 2403 	rr	l
   49C2 55            [ 4] 2404 	ld	d,l
   49C3 DD 7E 07      [19] 2405 	ld	a,7 (ix)
   49C6 5F            [ 4] 2406 	ld	e,a
   49C7 87            [ 4] 2407 	add	a, a
   49C8 87            [ 4] 2408 	add	a, a
   49C9 83            [ 4] 2409 	add	a, e
   49CA 87            [ 4] 2410 	add	a, a
   49CB 82            [ 4] 2411 	add	a,d
   49CC C5            [11] 2412 	push	bc
   49CD 57            [ 4] 2413 	ld	d,a
   49CE 1E 20         [ 7] 2414 	ld	e,#0x20
   49D0 D5            [11] 2415 	push	de
   49D1 21 00 C0      [10] 2416 	ld	hl,#0xC000
   49D4 E5            [11] 2417 	push	hl
   49D5 CD 38 66      [17] 2418 	call	_cpct_getScreenPtr
   49D8 C1            [10] 2419 	pop	bc
                           2420 ;src/includes/gui.h:89: cpct_drawSolidBox(p_video, 0b00000000, 17, 10);
   49D9 EB            [ 4] 2421 	ex	de,hl
   49DA C5            [11] 2422 	push	bc
   49DB 21 11 0A      [10] 2423 	ld	hl,#0x0A11
   49DE E5            [11] 2424 	push	hl
   49DF AF            [ 4] 2425 	xor	a, a
   49E0 F5            [11] 2426 	push	af
   49E1 33            [ 6] 2427 	inc	sp
   49E2 D5            [11] 2428 	push	de
   49E3 CD 7F 65      [17] 2429 	call	_cpct_drawSolidBox
   49E6 F1            [10] 2430 	pop	af
   49E7 F1            [10] 2431 	pop	af
   49E8 33            [ 6] 2432 	inc	sp
   49E9 C1            [10] 2433 	pop	bc
                           2434 ;src/includes/gui.h:92: for(i=0; i<14000; i++) {}
   49EA 21 B0 36      [10] 2435 	ld	hl,#0x36B0
   49ED                    2436 00108$:
   49ED 2B            [ 6] 2437 	dec	hl
   49EE 7C            [ 4] 2438 	ld	a,h
   49EF B5            [ 4] 2439 	or	a,l
   49F0 20 FB         [12] 2440 	jr	NZ,00108$
                           2441 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   49F2 3E CA         [ 7] 2442 	ld	a,#0xCA
   49F4 91            [ 4] 2443 	sub	a, c
   49F5 DD 77 FD      [19] 2444 	ld	-3 (ix),a
   49F8 3E 00         [ 7] 2445 	ld	a,#0x00
   49FA 98            [ 4] 2446 	sbc	a, b
   49FB DD 77 FE      [19] 2447 	ld	-2 (ix), a
   49FE 07            [ 4] 2448 	rlca
   49FF E6 01         [ 7] 2449 	and	a,#0x01
   4A01 5F            [ 4] 2450 	ld	e,a
   4A02 21 00 00      [10] 2451 	ld	hl,#0x0000
   4A05 E3            [19] 2452 	ex	(sp), hl
   4A06                    2453 00110$:
   4A06 DD 66 06      [19] 2454 	ld	h,6 (ix)
   4A09 2E 00         [ 7] 2455 	ld	l,#0x00
   4A0B DD 7E FA      [19] 2456 	ld	a,-6 (ix)
   4A0E 94            [ 4] 2457 	sub	a, h
   4A0F DD 7E FB      [19] 2458 	ld	a,-5 (ix)
   4A12 9D            [ 4] 2459 	sbc	a, l
   4A13 E2 18 4A      [10] 2460 	jp	PO, 00146$
   4A16 EE 80         [ 7] 2461 	xor	a, #0x80
   4A18                    2462 00146$:
   4A18 F2 BE 4A      [10] 2463 	jp	P,00112$
                           2464 ;src/includes/gui.h:97: if(i==iSelect)
   4A1B DD 56 07      [19] 2465 	ld	d,7 (ix)
   4A1E 06 00         [ 7] 2466 	ld	b,#0x00
   4A20 DD 7E FA      [19] 2467 	ld	a,-6 (ix)
   4A23 92            [ 4] 2468 	sub	a, d
   4A24 20 0A         [12] 2469 	jr	NZ,00103$
   4A26 DD 7E FB      [19] 2470 	ld	a,-5 (ix)
   4A29 90            [ 4] 2471 	sub	a, b
   4A2A 20 04         [12] 2472 	jr	NZ,00103$
                           2473 ;src/includes/gui.h:98: penSelected = 1;
   4A2C 0E 01         [ 7] 2474 	ld	c,#0x01
   4A2E 18 02         [12] 2475 	jr	00104$
   4A30                    2476 00103$:
                           2477 ;src/includes/gui.h:100: penSelected = 0;
   4A30 0E 00         [ 7] 2478 	ld	c,#0x00
   4A32                    2479 00104$:
                           2480 ;src/includes/gui.h:102: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(menu[i]))/2, (202-nbEntry*10)/2+i*10);
   4A32 DD 6E FD      [19] 2481 	ld	l,-3 (ix)
   4A35 DD 66 FE      [19] 2482 	ld	h,-2 (ix)
   4A38 7B            [ 4] 2483 	ld	a,e
   4A39 B7            [ 4] 2484 	or	a, a
   4A3A 28 07         [12] 2485 	jr	Z,00115$
   4A3C DD 6E FD      [19] 2486 	ld	l,-3 (ix)
   4A3F DD 66 FE      [19] 2487 	ld	h,-2 (ix)
   4A42 23            [ 6] 2488 	inc	hl
   4A43                    2489 00115$:
   4A43 CB 2C         [ 8] 2490 	sra	h
   4A45 CB 1D         [ 8] 2491 	rr	l
   4A47 45            [ 4] 2492 	ld	b,l
   4A48 DD 6E FA      [19] 2493 	ld	l,-6 (ix)
   4A4B D5            [11] 2494 	push	de
   4A4C 5D            [ 4] 2495 	ld	e,l
   4A4D 29            [11] 2496 	add	hl, hl
   4A4E 29            [11] 2497 	add	hl, hl
   4A4F 19            [11] 2498 	add	hl, de
   4A50 29            [11] 2499 	add	hl, hl
   4A51 D1            [10] 2500 	pop	de
   4A52 78            [ 4] 2501 	ld	a,b
   4A53 85            [ 4] 2502 	add	a, l
   4A54 DD 77 FF      [19] 2503 	ld	-1 (ix),a
   4A57 DD 56 FA      [19] 2504 	ld	d,-6 (ix)
   4A5A DD 46 FB      [19] 2505 	ld	b,-5 (ix)
   4A5D CB 22         [ 8] 2506 	sla	d
   4A5F CB 10         [ 8] 2507 	rl	b
   4A61 DD 7E 04      [19] 2508 	ld	a,4 (ix)
   4A64 82            [ 4] 2509 	add	a, d
   4A65 57            [ 4] 2510 	ld	d,a
   4A66 DD 7E 05      [19] 2511 	ld	a,5 (ix)
   4A69 88            [ 4] 2512 	adc	a, b
   4A6A 47            [ 4] 2513 	ld	b,a
   4A6B 6A            [ 4] 2514 	ld	l, d
   4A6C 60            [ 4] 2515 	ld	h, b
   4A6D 7E            [ 7] 2516 	ld	a, (hl)
   4A6E 23            [ 6] 2517 	inc	hl
   4A6F 66            [ 7] 2518 	ld	h,(hl)
   4A70 6F            [ 4] 2519 	ld	l,a
   4A71 C5            [11] 2520 	push	bc
   4A72 D5            [11] 2521 	push	de
   4A73 E5            [11] 2522 	push	hl
   4A74 CD 2B 65      [17] 2523 	call	_strlen
   4A77 F1            [10] 2524 	pop	af
   4A78 D1            [10] 2525 	pop	de
   4A79 C1            [10] 2526 	pop	bc
   4A7A 3E 52         [ 7] 2527 	ld	a,#0x52
   4A7C 95            [ 4] 2528 	sub	a, l
   4A7D 6F            [ 4] 2529 	ld	l,a
   4A7E 3E 00         [ 7] 2530 	ld	a,#0x00
   4A80 9C            [ 4] 2531 	sbc	a, h
   4A81 67            [ 4] 2532 	ld	h,a
   4A82 CB 3C         [ 8] 2533 	srl	h
   4A84 CB 1D         [ 8] 2534 	rr	l
   4A86 DD 75 FC      [19] 2535 	ld	-4 (ix),l
   4A89 C5            [11] 2536 	push	bc
   4A8A D5            [11] 2537 	push	de
   4A8B DD 66 FF      [19] 2538 	ld	h,-1 (ix)
   4A8E DD 6E FC      [19] 2539 	ld	l,-4 (ix)
   4A91 E5            [11] 2540 	push	hl
   4A92 21 00 C0      [10] 2541 	ld	hl,#0xC000
   4A95 E5            [11] 2542 	push	hl
   4A96 CD 38 66      [17] 2543 	call	_cpct_getScreenPtr
   4A99 D1            [10] 2544 	pop	de
   4A9A C1            [10] 2545 	pop	bc
   4A9B E5            [11] 2546 	push	hl
   4A9C FD E1         [14] 2547 	pop	iy
                           2548 ;src/includes/gui.h:103: cpct_drawStringM2 (menu[i], p_video, penSelected);
   4A9E 6A            [ 4] 2549 	ld	l, d
   4A9F 60            [ 4] 2550 	ld	h, b
   4AA0 7E            [ 7] 2551 	ld	a, (hl)
   4AA1 23            [ 6] 2552 	inc	hl
   4AA2 66            [ 7] 2553 	ld	h,(hl)
   4AA3 6F            [ 4] 2554 	ld	l,a
   4AA4 D5            [11] 2555 	push	de
   4AA5 79            [ 4] 2556 	ld	a,c
   4AA6 F5            [11] 2557 	push	af
   4AA7 33            [ 6] 2558 	inc	sp
   4AA8 FD E5         [15] 2559 	push	iy
   4AAA E5            [11] 2560 	push	hl
   4AAB CD 0D 63      [17] 2561 	call	_cpct_drawStringM2
   4AAE F1            [10] 2562 	pop	af
   4AAF F1            [10] 2563 	pop	af
   4AB0 33            [ 6] 2564 	inc	sp
   4AB1 D1            [10] 2565 	pop	de
                           2566 ;src/includes/gui.h:95: for(i=0; i<nbEntry; i++)
   4AB2 DD 34 FA      [23] 2567 	inc	-6 (ix)
   4AB5 C2 06 4A      [10] 2568 	jp	NZ,00110$
   4AB8 DD 34 FB      [23] 2569 	inc	-5 (ix)
   4ABB C3 06 4A      [10] 2570 	jp	00110$
   4ABE                    2571 00112$:
   4ABE DD F9         [10] 2572 	ld	sp, ix
   4AC0 DD E1         [14] 2573 	pop	ix
   4AC2 C9            [10] 2574 	ret
                           2575 ;src/includes/gui.h:107: u8 drawMenu(char **menu, u8 nbEntry)
                           2576 ;	---------------------------------
                           2577 ; Function drawMenu
                           2578 ; ---------------------------------
   4AC3                    2579 _drawMenu::
   4AC3 DD E5         [15] 2580 	push	ix
   4AC5 DD 21 00 00   [14] 2581 	ld	ix,#0
   4AC9 DD 39         [15] 2582 	add	ix,sp
   4ACB F5            [11] 2583 	push	af
                           2584 ;src/includes/gui.h:110: u8 iSelect=0;
   4ACC 06 00         [ 7] 2585 	ld	b,#0x00
                           2586 ;src/includes/gui.h:112: cpct_clearScreen(0b11111111);
   4ACE C5            [11] 2587 	push	bc
   4ACF 21 00 40      [10] 2588 	ld	hl,#0x4000
   4AD2 E5            [11] 2589 	push	hl
   4AD3 3E FF         [ 7] 2590 	ld	a,#0xFF
   4AD5 F5            [11] 2591 	push	af
   4AD6 33            [ 6] 2592 	inc	sp
   4AD7 26 C0         [ 7] 2593 	ld	h, #0xC0
   4AD9 E5            [11] 2594 	push	hl
   4ADA CD 04 65      [17] 2595 	call	_cpct_memset
   4ADD C1            [10] 2596 	pop	bc
                           2597 ;src/includes/gui.h:114: drawBoxM2(30,nbEntry*12);
   4ADE DD 5E 06      [19] 2598 	ld	e,6 (ix)
   4AE1 16 00         [ 7] 2599 	ld	d,#0x00
   4AE3 6B            [ 4] 2600 	ld	l, e
   4AE4 62            [ 4] 2601 	ld	h, d
   4AE5 29            [11] 2602 	add	hl, hl
   4AE6 19            [11] 2603 	add	hl, de
   4AE7 29            [11] 2604 	add	hl, hl
   4AE8 29            [11] 2605 	add	hl, hl
   4AE9 C5            [11] 2606 	push	bc
   4AEA E5            [11] 2607 	push	hl
   4AEB 21 1E 00      [10] 2608 	ld	hl,#0x001E
   4AEE E5            [11] 2609 	push	hl
   4AEF CD F9 47      [17] 2610 	call	_drawBoxM2
   4AF2 F1            [10] 2611 	pop	af
   4AF3 F1            [10] 2612 	pop	af
   4AF4 AF            [ 4] 2613 	xor	a, a
   4AF5 F5            [11] 2614 	push	af
   4AF6 33            [ 6] 2615 	inc	sp
   4AF7 DD 7E 06      [19] 2616 	ld	a,6 (ix)
   4AFA F5            [11] 2617 	push	af
   4AFB 33            [ 6] 2618 	inc	sp
   4AFC DD 6E 04      [19] 2619 	ld	l,4 (ix)
   4AFF DD 66 05      [19] 2620 	ld	h,5 (ix)
   4B02 E5            [11] 2621 	push	hl
   4B03 CD 93 49      [17] 2622 	call	_drawMenuEntry
   4B06 F1            [10] 2623 	pop	af
   4B07 F1            [10] 2624 	pop	af
   4B08 C1            [10] 2625 	pop	bc
                           2626 ;src/includes/gui.h:118: do{
   4B09 DD 4E 06      [19] 2627 	ld	c,6 (ix)
   4B0C 0D            [ 4] 2628 	dec	c
   4B0D                    2629 00111$:
                           2630 ;src/includes/gui.h:119: cpct_scanKeyboard(); 
   4B0D C5            [11] 2631 	push	bc
   4B0E CD 58 66      [17] 2632 	call	_cpct_scanKeyboard
   4B11 21 00 01      [10] 2633 	ld	hl,#0x0100
   4B14 CD D6 62      [17] 2634 	call	_cpct_isKeyPressed
   4B17 7D            [ 4] 2635 	ld	a,l
   4B18 C1            [10] 2636 	pop	bc
   4B19 B7            [ 4] 2637 	or	a, a
   4B1A 28 32         [12] 2638 	jr	Z,00105$
                           2639 ;src/includes/gui.h:123: EraseMenuEntry(menu, nbEntry, iSelect);
   4B1C C5            [11] 2640 	push	bc
   4B1D C5            [11] 2641 	push	bc
   4B1E 33            [ 6] 2642 	inc	sp
   4B1F DD 7E 06      [19] 2643 	ld	a,6 (ix)
   4B22 F5            [11] 2644 	push	af
   4B23 33            [ 6] 2645 	inc	sp
   4B24 DD 6E 04      [19] 2646 	ld	l,4 (ix)
   4B27 DD 66 05      [19] 2647 	ld	h,5 (ix)
   4B2A E5            [11] 2648 	push	hl
   4B2B CD D9 48      [17] 2649 	call	_EraseMenuEntry
   4B2E F1            [10] 2650 	pop	af
   4B2F F1            [10] 2651 	pop	af
   4B30 C1            [10] 2652 	pop	bc
                           2653 ;src/includes/gui.h:125: if(iSelect ==0)
   4B31 78            [ 4] 2654 	ld	a,b
   4B32 B7            [ 4] 2655 	or	a, a
   4B33 20 03         [12] 2656 	jr	NZ,00102$
                           2657 ;src/includes/gui.h:126: iSelect = nbEntry-1;
   4B35 41            [ 4] 2658 	ld	b,c
   4B36 18 01         [12] 2659 	jr	00103$
   4B38                    2660 00102$:
                           2661 ;src/includes/gui.h:128: iSelect--;
   4B38 05            [ 4] 2662 	dec	b
   4B39                    2663 00103$:
                           2664 ;src/includes/gui.h:130: drawMenuEntry(menu, nbEntry, iSelect);
   4B39 C5            [11] 2665 	push	bc
   4B3A C5            [11] 2666 	push	bc
   4B3B 33            [ 6] 2667 	inc	sp
   4B3C DD 7E 06      [19] 2668 	ld	a,6 (ix)
   4B3F F5            [11] 2669 	push	af
   4B40 33            [ 6] 2670 	inc	sp
   4B41 DD 6E 04      [19] 2671 	ld	l,4 (ix)
   4B44 DD 66 05      [19] 2672 	ld	h,5 (ix)
   4B47 E5            [11] 2673 	push	hl
   4B48 CD 93 49      [17] 2674 	call	_drawMenuEntry
   4B4B F1            [10] 2675 	pop	af
   4B4C F1            [10] 2676 	pop	af
   4B4D C1            [10] 2677 	pop	bc
   4B4E                    2678 00105$:
                           2679 ;src/includes/gui.h:133: if ( cpct_isKeyPressed(Key_CursorDown) )
   4B4E C5            [11] 2680 	push	bc
   4B4F 21 00 04      [10] 2681 	ld	hl,#0x0400
   4B52 CD D6 62      [17] 2682 	call	_cpct_isKeyPressed
   4B55 5D            [ 4] 2683 	ld	e,l
   4B56 C1            [10] 2684 	pop	bc
   4B57 7B            [ 4] 2685 	ld	a,e
   4B58 B7            [ 4] 2686 	or	a, a
   4B59 28 48         [12] 2687 	jr	Z,00112$
                           2688 ;src/includes/gui.h:135: EraseMenuEntry(menu, nbEntry, iSelect);
   4B5B C5            [11] 2689 	push	bc
   4B5C C5            [11] 2690 	push	bc
   4B5D 33            [ 6] 2691 	inc	sp
   4B5E DD 7E 06      [19] 2692 	ld	a,6 (ix)
   4B61 F5            [11] 2693 	push	af
   4B62 33            [ 6] 2694 	inc	sp
   4B63 DD 6E 04      [19] 2695 	ld	l,4 (ix)
   4B66 DD 66 05      [19] 2696 	ld	h,5 (ix)
   4B69 E5            [11] 2697 	push	hl
   4B6A CD D9 48      [17] 2698 	call	_EraseMenuEntry
   4B6D F1            [10] 2699 	pop	af
   4B6E F1            [10] 2700 	pop	af
   4B6F C1            [10] 2701 	pop	bc
                           2702 ;src/includes/gui.h:137: if(iSelect == nbEntry-1)
   4B70 DD 5E 06      [19] 2703 	ld	e,6 (ix)
   4B73 16 00         [ 7] 2704 	ld	d,#0x00
   4B75 1B            [ 6] 2705 	dec	de
   4B76 DD 70 FE      [19] 2706 	ld	-2 (ix),b
   4B79 DD 36 FF 00   [19] 2707 	ld	-1 (ix),#0x00
   4B7D 7B            [ 4] 2708 	ld	a,e
   4B7E DD 96 FE      [19] 2709 	sub	a, -2 (ix)
   4B81 20 0A         [12] 2710 	jr	NZ,00107$
   4B83 7A            [ 4] 2711 	ld	a,d
   4B84 DD 96 FF      [19] 2712 	sub	a, -1 (ix)
   4B87 20 04         [12] 2713 	jr	NZ,00107$
                           2714 ;src/includes/gui.h:138: iSelect = 0;
   4B89 06 00         [ 7] 2715 	ld	b,#0x00
   4B8B 18 01         [12] 2716 	jr	00108$
   4B8D                    2717 00107$:
                           2718 ;src/includes/gui.h:140: iSelect++;
   4B8D 04            [ 4] 2719 	inc	b
   4B8E                    2720 00108$:
                           2721 ;src/includes/gui.h:142: drawMenuEntry(menu, nbEntry, iSelect);
   4B8E C5            [11] 2722 	push	bc
   4B8F C5            [11] 2723 	push	bc
   4B90 33            [ 6] 2724 	inc	sp
   4B91 DD 7E 06      [19] 2725 	ld	a,6 (ix)
   4B94 F5            [11] 2726 	push	af
   4B95 33            [ 6] 2727 	inc	sp
   4B96 DD 6E 04      [19] 2728 	ld	l,4 (ix)
   4B99 DD 66 05      [19] 2729 	ld	h,5 (ix)
   4B9C E5            [11] 2730 	push	hl
   4B9D CD 93 49      [17] 2731 	call	_drawMenuEntry
   4BA0 F1            [10] 2732 	pop	af
   4BA1 F1            [10] 2733 	pop	af
   4BA2 C1            [10] 2734 	pop	bc
   4BA3                    2735 00112$:
                           2736 ;src/includes/gui.h:145: while(!cpct_isKeyPressed(Key_Return));
   4BA3 C5            [11] 2737 	push	bc
   4BA4 21 02 04      [10] 2738 	ld	hl,#0x0402
   4BA7 CD D6 62      [17] 2739 	call	_cpct_isKeyPressed
   4BAA 7D            [ 4] 2740 	ld	a,l
   4BAB C1            [10] 2741 	pop	bc
   4BAC B7            [ 4] 2742 	or	a, a
   4BAD CA 0D 4B      [10] 2743 	jp	Z,00111$
                           2744 ;src/includes/gui.h:148: for(i=0; i<14000; i++) {}
   4BB0 21 B0 36      [10] 2745 	ld	hl,#0x36B0
   4BB3                    2746 00117$:
   4BB3 EB            [ 4] 2747 	ex	de,hl
   4BB4 1B            [ 6] 2748 	dec	de
   4BB5 6B            [ 4] 2749 	ld	l, e
   4BB6 7A            [ 4] 2750 	ld	a,d
   4BB7 67            [ 4] 2751 	ld	h,a
   4BB8 B3            [ 4] 2752 	or	a,e
   4BB9 20 F8         [12] 2753 	jr	NZ,00117$
                           2754 ;src/includes/gui.h:150: return iSelect;
   4BBB 68            [ 4] 2755 	ld	l,b
   4BBC DD F9         [10] 2756 	ld	sp, ix
   4BBE DD E1         [14] 2757 	pop	ix
   4BC0 C9            [10] 2758 	ret
                           2759 ;src/includes/gui.h:160: u8 drawWindow(char **text, u8 nbLine, u8 button)
                           2760 ;	---------------------------------
                           2761 ; Function drawWindow
                           2762 ; ---------------------------------
   4BC1                    2763 _drawWindow::
   4BC1 DD E5         [15] 2764 	push	ix
   4BC3 DD 21 00 00   [14] 2765 	ld	ix,#0
   4BC7 DD 39         [15] 2766 	add	ix,sp
   4BC9 21 F5 FF      [10] 2767 	ld	hl,#-11
   4BCC 39            [11] 2768 	add	hl,sp
   4BCD F9            [ 6] 2769 	ld	sp,hl
                           2770 ;src/includes/gui.h:164: u8 valueReturn=0;
   4BCE DD 36 F6 00   [19] 2771 	ld	-10 (ix),#0x00
                           2772 ;src/includes/gui.h:167: if(button == 0)
   4BD2 DD 7E 07      [19] 2773 	ld	a,7 (ix)
   4BD5 B7            [ 4] 2774 	or	a, a
   4BD6 20 05         [12] 2775 	jr	NZ,00102$
                           2776 ;src/includes/gui.h:168: buttonTxt = "<OK>";
   4BD8 11 4A 4D      [10] 2777 	ld	de,#___str_0
   4BDB 18 03         [12] 2778 	jr	00103$
   4BDD                    2779 00102$:
                           2780 ;src/includes/gui.h:170: buttonTxt = "<OK>  <Cancel>";
   4BDD 11 4F 4D      [10] 2781 	ld	de,#___str_1+0
   4BE0                    2782 00103$:
                           2783 ;src/includes/gui.h:172: drawBoxM2(50,(nbLine+2)*12);
   4BE0 DD 4E 06      [19] 2784 	ld	c,6 (ix)
   4BE3 06 00         [ 7] 2785 	ld	b,#0x00
   4BE5 03            [ 6] 2786 	inc	bc
   4BE6 03            [ 6] 2787 	inc	bc
   4BE7 69            [ 4] 2788 	ld	l, c
   4BE8 60            [ 4] 2789 	ld	h, b
   4BE9 29            [11] 2790 	add	hl, hl
   4BEA 09            [11] 2791 	add	hl, bc
   4BEB 29            [11] 2792 	add	hl, hl
   4BEC 29            [11] 2793 	add	hl, hl
   4BED C5            [11] 2794 	push	bc
   4BEE D5            [11] 2795 	push	de
   4BEF E5            [11] 2796 	push	hl
   4BF0 21 32 00      [10] 2797 	ld	hl,#0x0032
   4BF3 E5            [11] 2798 	push	hl
   4BF4 CD F9 47      [17] 2799 	call	_drawBoxM2
   4BF7 F1            [10] 2800 	pop	af
   4BF8 F1            [10] 2801 	pop	af
   4BF9 D1            [10] 2802 	pop	de
   4BFA C1            [10] 2803 	pop	bc
                           2804 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4BFB 69            [ 4] 2805 	ld	l, c
   4BFC 60            [ 4] 2806 	ld	h, b
   4BFD 29            [11] 2807 	add	hl, hl
   4BFE 29            [11] 2808 	add	hl, hl
   4BFF 09            [11] 2809 	add	hl, bc
   4C00 29            [11] 2810 	add	hl, hl
   4C01 3E CA         [ 7] 2811 	ld	a,#0xCA
   4C03 95            [ 4] 2812 	sub	a, l
   4C04 DD 77 FD      [19] 2813 	ld	-3 (ix),a
   4C07 3E 00         [ 7] 2814 	ld	a,#0x00
   4C09 9C            [ 4] 2815 	sbc	a, h
   4C0A DD 77 FE      [19] 2816 	ld	-2 (ix), a
   4C0D 07            [ 4] 2817 	rlca
   4C0E E6 01         [ 7] 2818 	and	a,#0x01
   4C10 DD 77 FF      [19] 2819 	ld	-1 (ix),a
   4C13 DD 36 F5 00   [19] 2820 	ld	-11 (ix),#0x00
   4C17 DD 36 FC 00   [19] 2821 	ld	-4 (ix),#0x00
   4C1B                    2822 00114$:
                           2823 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C1B DD 7E FD      [19] 2824 	ld	a,-3 (ix)
   4C1E C6 01         [ 7] 2825 	add	a, #0x01
   4C20 DD 77 FA      [19] 2826 	ld	-6 (ix),a
   4C23 DD 7E FE      [19] 2827 	ld	a,-2 (ix)
   4C26 CE 00         [ 7] 2828 	adc	a, #0x00
   4C28 DD 77 FB      [19] 2829 	ld	-5 (ix),a
                           2830 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4C2B DD 7E F5      [19] 2831 	ld	a,-11 (ix)
   4C2E DD 96 06      [19] 2832 	sub	a, 6 (ix)
   4C31 D2 BD 4C      [10] 2833 	jp	NC,00104$
                           2834 ;src/includes/gui.h:176: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(text[i]))/2, (202-(nbLine+2)*10)/2+i*10);
   4C34 DD 6E FD      [19] 2835 	ld	l,-3 (ix)
   4C37 DD 66 FE      [19] 2836 	ld	h,-2 (ix)
   4C3A DD 7E FF      [19] 2837 	ld	a,-1 (ix)
   4C3D B7            [ 4] 2838 	or	a, a
   4C3E 28 06         [12] 2839 	jr	Z,00118$
   4C40 DD 6E FA      [19] 2840 	ld	l,-6 (ix)
   4C43 DD 66 FB      [19] 2841 	ld	h,-5 (ix)
   4C46                    2842 00118$:
   4C46 CB 2C         [ 8] 2843 	sra	h
   4C48 CB 1D         [ 8] 2844 	rr	l
   4C4A DD 66 FC      [19] 2845 	ld	h,-4 (ix)
   4C4D 7D            [ 4] 2846 	ld	a,l
   4C4E 84            [ 4] 2847 	add	a, h
   4C4F DD 77 F9      [19] 2848 	ld	-7 (ix),a
   4C52 DD 6E F5      [19] 2849 	ld	l,-11 (ix)
   4C55 26 00         [ 7] 2850 	ld	h,#0x00
   4C57 29            [11] 2851 	add	hl, hl
   4C58 45            [ 4] 2852 	ld	b,l
   4C59 4C            [ 4] 2853 	ld	c,h
   4C5A DD 7E 04      [19] 2854 	ld	a,4 (ix)
   4C5D 80            [ 4] 2855 	add	a, b
   4C5E DD 77 F7      [19] 2856 	ld	-9 (ix),a
   4C61 DD 7E 05      [19] 2857 	ld	a,5 (ix)
   4C64 89            [ 4] 2858 	adc	a, c
   4C65 DD 77 F8      [19] 2859 	ld	-8 (ix),a
   4C68 DD 6E F7      [19] 2860 	ld	l,-9 (ix)
   4C6B DD 66 F8      [19] 2861 	ld	h,-8 (ix)
   4C6E 4E            [ 7] 2862 	ld	c,(hl)
   4C6F 23            [ 6] 2863 	inc	hl
   4C70 46            [ 7] 2864 	ld	b,(hl)
   4C71 D5            [11] 2865 	push	de
   4C72 C5            [11] 2866 	push	bc
   4C73 CD 2B 65      [17] 2867 	call	_strlen
   4C76 F1            [10] 2868 	pop	af
   4C77 D1            [10] 2869 	pop	de
   4C78 3E 52         [ 7] 2870 	ld	a,#0x52
   4C7A 95            [ 4] 2871 	sub	a, l
   4C7B 6F            [ 4] 2872 	ld	l,a
   4C7C 3E 00         [ 7] 2873 	ld	a,#0x00
   4C7E 9C            [ 4] 2874 	sbc	a, h
   4C7F 67            [ 4] 2875 	ld	h,a
   4C80 CB 3C         [ 8] 2876 	srl	h
   4C82 CB 1D         [ 8] 2877 	rr	l
   4C84 45            [ 4] 2878 	ld	b,l
   4C85 D5            [11] 2879 	push	de
   4C86 DD 7E F9      [19] 2880 	ld	a,-7 (ix)
   4C89 F5            [11] 2881 	push	af
   4C8A 33            [ 6] 2882 	inc	sp
   4C8B C5            [11] 2883 	push	bc
   4C8C 33            [ 6] 2884 	inc	sp
   4C8D 21 00 C0      [10] 2885 	ld	hl,#0xC000
   4C90 E5            [11] 2886 	push	hl
   4C91 CD 38 66      [17] 2887 	call	_cpct_getScreenPtr
   4C94 D1            [10] 2888 	pop	de
   4C95 E5            [11] 2889 	push	hl
   4C96 FD E1         [14] 2890 	pop	iy
                           2891 ;src/includes/gui.h:177: cpct_drawStringM2 (text[i], p_video, 0);
   4C98 DD 6E F7      [19] 2892 	ld	l,-9 (ix)
   4C9B DD 66 F8      [19] 2893 	ld	h,-8 (ix)
   4C9E 4E            [ 7] 2894 	ld	c,(hl)
   4C9F 23            [ 6] 2895 	inc	hl
   4CA0 46            [ 7] 2896 	ld	b,(hl)
   4CA1 D5            [11] 2897 	push	de
   4CA2 AF            [ 4] 2898 	xor	a, a
   4CA3 F5            [11] 2899 	push	af
   4CA4 33            [ 6] 2900 	inc	sp
   4CA5 FD E5         [15] 2901 	push	iy
   4CA7 C5            [11] 2902 	push	bc
   4CA8 CD 0D 63      [17] 2903 	call	_cpct_drawStringM2
   4CAB F1            [10] 2904 	pop	af
   4CAC F1            [10] 2905 	pop	af
   4CAD 33            [ 6] 2906 	inc	sp
   4CAE D1            [10] 2907 	pop	de
                           2908 ;src/includes/gui.h:174: for(i=0; i<nbLine; i++)
   4CAF DD 7E FC      [19] 2909 	ld	a,-4 (ix)
   4CB2 C6 0A         [ 7] 2910 	add	a, #0x0A
   4CB4 DD 77 FC      [19] 2911 	ld	-4 (ix),a
   4CB7 DD 34 F5      [23] 2912 	inc	-11 (ix)
   4CBA C3 1B 4C      [10] 2913 	jp	00114$
   4CBD                    2914 00104$:
                           2915 ;src/includes/gui.h:180: p_video = cpct_getScreenPtr(SCR_VMEM, (82-strlen(buttonTxt))/2, (202-(nbLine+2)*10)/2+(nbLine+1)*10);
   4CBD DD 46 FD      [19] 2916 	ld	b,-3 (ix)
   4CC0 DD 66 FE      [19] 2917 	ld	h,-2 (ix)
   4CC3 DD 7E FF      [19] 2918 	ld	a,-1 (ix)
   4CC6 B7            [ 4] 2919 	or	a, a
   4CC7 28 06         [12] 2920 	jr	Z,00119$
   4CC9 DD 46 FA      [19] 2921 	ld	b,-6 (ix)
   4CCC DD 66 FB      [19] 2922 	ld	h,-5 (ix)
   4CCF                    2923 00119$:
   4CCF CB 2C         [ 8] 2924 	sra	h
   4CD1 CB 18         [ 8] 2925 	rr	b
   4CD3 DD 4E 06      [19] 2926 	ld	c,6 (ix)
   4CD6 0C            [ 4] 2927 	inc	c
   4CD7 79            [ 4] 2928 	ld	a,c
   4CD8 87            [ 4] 2929 	add	a, a
   4CD9 87            [ 4] 2930 	add	a, a
   4CDA 81            [ 4] 2931 	add	a, c
   4CDB 87            [ 4] 2932 	add	a, a
   4CDC 67            [ 4] 2933 	ld	h, a
   4CDD 80            [ 4] 2934 	add	a,b
   4CDE 47            [ 4] 2935 	ld	b,a
   4CDF C5            [11] 2936 	push	bc
   4CE0 D5            [11] 2937 	push	de
   4CE1 D5            [11] 2938 	push	de
   4CE2 CD 2B 65      [17] 2939 	call	_strlen
   4CE5 F1            [10] 2940 	pop	af
   4CE6 D1            [10] 2941 	pop	de
   4CE7 C1            [10] 2942 	pop	bc
   4CE8 3E 52         [ 7] 2943 	ld	a,#0x52
   4CEA 95            [ 4] 2944 	sub	a, l
   4CEB 6F            [ 4] 2945 	ld	l,a
   4CEC 3E 00         [ 7] 2946 	ld	a,#0x00
   4CEE 9C            [ 4] 2947 	sbc	a, h
   4CEF 67            [ 4] 2948 	ld	h,a
   4CF0 CB 3C         [ 8] 2949 	srl	h
   4CF2 CB 1D         [ 8] 2950 	rr	l
   4CF4 7D            [ 4] 2951 	ld	a,l
   4CF5 D5            [11] 2952 	push	de
   4CF6 C5            [11] 2953 	push	bc
   4CF7 33            [ 6] 2954 	inc	sp
   4CF8 F5            [11] 2955 	push	af
   4CF9 33            [ 6] 2956 	inc	sp
   4CFA 21 00 C0      [10] 2957 	ld	hl,#0xC000
   4CFD E5            [11] 2958 	push	hl
   4CFE CD 38 66      [17] 2959 	call	_cpct_getScreenPtr
   4D01 D1            [10] 2960 	pop	de
                           2961 ;src/includes/gui.h:181: cpct_drawStringM2 (buttonTxt, p_video, 0);
   4D02 4D            [ 4] 2962 	ld	c, l
   4D03 44            [ 4] 2963 	ld	b, h
   4D04 AF            [ 4] 2964 	xor	a, a
   4D05 F5            [11] 2965 	push	af
   4D06 33            [ 6] 2966 	inc	sp
   4D07 C5            [11] 2967 	push	bc
   4D08 D5            [11] 2968 	push	de
   4D09 CD 0D 63      [17] 2969 	call	_cpct_drawStringM2
   4D0C F1            [10] 2970 	pop	af
   4D0D F1            [10] 2971 	pop	af
   4D0E 33            [ 6] 2972 	inc	sp
                           2973 ;src/includes/gui.h:184: do{
   4D0F                    2974 00110$:
                           2975 ;src/includes/gui.h:185: cpct_scanKeyboard(); 
   4D0F CD 58 66      [17] 2976 	call	_cpct_scanKeyboard
                           2977 ;src/includes/gui.h:187: if ( cpct_isKeyPressed(Key_Return) )
   4D12 21 02 04      [10] 2978 	ld	hl,#0x0402
   4D15 CD D6 62      [17] 2979 	call	_cpct_isKeyPressed
   4D18 7D            [ 4] 2980 	ld	a,l
   4D19 B7            [ 4] 2981 	or	a, a
   4D1A 28 04         [12] 2982 	jr	Z,00106$
                           2983 ;src/includes/gui.h:188: valueReturn=1;
   4D1C DD 36 F6 01   [19] 2984 	ld	-10 (ix),#0x01
   4D20                    2985 00106$:
                           2986 ;src/includes/gui.h:190: if ( cpct_isKeyPressed(Key_Esc) )
   4D20 21 08 04      [10] 2987 	ld	hl,#0x0408
   4D23 CD D6 62      [17] 2988 	call	_cpct_isKeyPressed
   4D26 7D            [ 4] 2989 	ld	a,l
   4D27 B7            [ 4] 2990 	or	a, a
   4D28 28 04         [12] 2991 	jr	Z,00111$
                           2992 ;src/includes/gui.h:191: valueReturn=0;
   4D2A DD 36 F6 00   [19] 2993 	ld	-10 (ix),#0x00
   4D2E                    2994 00111$:
                           2995 ;src/includes/gui.h:193: while(!cpct_isKeyPressed(Key_Return) && !cpct_isKeyPressed(Key_Esc));
   4D2E 21 02 04      [10] 2996 	ld	hl,#0x0402
   4D31 CD D6 62      [17] 2997 	call	_cpct_isKeyPressed
   4D34 7D            [ 4] 2998 	ld	a,l
   4D35 B7            [ 4] 2999 	or	a, a
   4D36 20 0A         [12] 3000 	jr	NZ,00112$
   4D38 21 08 04      [10] 3001 	ld	hl,#0x0408
   4D3B CD D6 62      [17] 3002 	call	_cpct_isKeyPressed
   4D3E 7D            [ 4] 3003 	ld	a,l
   4D3F B7            [ 4] 3004 	or	a, a
   4D40 28 CD         [12] 3005 	jr	Z,00110$
   4D42                    3006 00112$:
                           3007 ;src/includes/gui.h:195: return valueReturn;
   4D42 DD 6E F6      [19] 3008 	ld	l,-10 (ix)
   4D45 DD F9         [10] 3009 	ld	sp, ix
   4D47 DD E1         [14] 3010 	pop	ix
   4D49 C9            [10] 3011 	ret
   4D4A                    3012 ___str_0:
   4D4A 3C 4F 4B 3E        3013 	.ascii "<OK>"
   4D4E 00                 3014 	.db 0x00
   4D4F                    3015 ___str_1:
   4D4F 3C 4F 4B 3E 20 20  3016 	.ascii "<OK>  <Cancel>"
        3C 43 61 6E 63 65
        6C 3E
   4D5D 00                 3017 	.db 0x00
                           3018 ;src/includes/world.h:1: void drawCursor(u8 x, u8 y, u8 color)
                           3019 ;	---------------------------------
                           3020 ; Function drawCursor
                           3021 ; ---------------------------------
   4D5E                    3022 _drawCursor::
   4D5E DD E5         [15] 3023 	push	ix
   4D60 DD 21 00 00   [14] 3024 	ld	ix,#0
   4D64 DD 39         [15] 3025 	add	ix,sp
   4D66 3B            [ 6] 3026 	dec	sp
                           3027 ;src/includes/world.h:4: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H);
   4D67 DD 7E 05      [19] 3028 	ld	a,5 (ix)
   4D6A 07            [ 4] 3029 	rlca
   4D6B 07            [ 4] 3030 	rlca
   4D6C 07            [ 4] 3031 	rlca
   4D6D 07            [ 4] 3032 	rlca
   4D6E E6 F0         [ 7] 3033 	and	a,#0xF0
   4D70 5F            [ 4] 3034 	ld	e,a
   4D71 DD 7E 04      [19] 3035 	ld	a,4 (ix)
   4D74 87            [ 4] 3036 	add	a, a
   4D75 87            [ 4] 3037 	add	a, a
   4D76 57            [ 4] 3038 	ld	d,a
   4D77 D5            [11] 3039 	push	de
   4D78 7B            [ 4] 3040 	ld	a,e
   4D79 F5            [11] 3041 	push	af
   4D7A 33            [ 6] 3042 	inc	sp
   4D7B D5            [11] 3043 	push	de
   4D7C 33            [ 6] 3044 	inc	sp
   4D7D 21 00 C0      [10] 3045 	ld	hl,#0xC000
   4D80 E5            [11] 3046 	push	hl
   4D81 CD 38 66      [17] 3047 	call	_cpct_getScreenPtr
   4D84 D1            [10] 3048 	pop	de
   4D85 4D            [ 4] 3049 	ld	c, l
   4D86 44            [ 4] 3050 	ld	b, h
                           3051 ;src/includes/world.h:6: switch(CURSOR_MODE)
   4D87 3E 10         [ 7] 3052 	ld	a,#0x10
   4D89 FD 21 0C 76   [14] 3053 	ld	iy,#_CURSOR_MODE
   4D8D FD 96 00      [19] 3054 	sub	a, 0 (iy)
   4D90 DA 8F 4F      [10] 3055 	jp	C,00119$
   4D93 D5            [11] 3056 	push	de
   4D94 FD 21 0C 76   [14] 3057 	ld	iy,#_CURSOR_MODE
   4D98 FD 5E 00      [19] 3058 	ld	e,0 (iy)
   4D9B 16 00         [ 7] 3059 	ld	d,#0x00
   4D9D 21 A5 4D      [10] 3060 	ld	hl,#00125$
   4DA0 19            [11] 3061 	add	hl,de
   4DA1 19            [11] 3062 	add	hl,de
   4DA2 19            [11] 3063 	add	hl,de
   4DA3 D1            [10] 3064 	pop	de
   4DA4 E9            [ 4] 3065 	jp	(hl)
   4DA5                    3066 00125$:
   4DA5 C3 D8 4D      [10] 3067 	jp	00101$
   4DA8 C3 AA 4E      [10] 3068 	jp	00102$
   4DAB C3 B9 4E      [10] 3069 	jp	00103$
   4DAE C3 C8 4E      [10] 3070 	jp	00104$
   4DB1 C3 D7 4E      [10] 3071 	jp	00105$
   4DB4 C3 E6 4E      [10] 3072 	jp	00106$
   4DB7 C3 F5 4E      [10] 3073 	jp	00107$
   4DBA C3 04 4F      [10] 3074 	jp	00108$
   4DBD C3 13 4F      [10] 3075 	jp	00109$
   4DC0 C3 21 4F      [10] 3076 	jp	00110$
   4DC3 C3 2F 4F      [10] 3077 	jp	00111$
   4DC6 C3 3D 4F      [10] 3078 	jp	00112$
   4DC9 C3 4B 4F      [10] 3079 	jp	00113$
   4DCC C3 59 4F      [10] 3080 	jp	00114$
   4DCF C3 67 4F      [10] 3081 	jp	00115$
   4DD2 C3 75 4F      [10] 3082 	jp	00116$
   4DD5 C3 83 4F      [10] 3083 	jp	00117$
                           3084 ;src/includes/world.h:8: case NONE:
   4DD8                    3085 00101$:
                           3086 ;src/includes/world.h:9: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4DD8 C5            [11] 3087 	push	bc
   4DD9 D5            [11] 3088 	push	de
   4DDA DD 66 06      [19] 3089 	ld	h,6 (ix)
   4DDD DD 6E 06      [19] 3090 	ld	l,6 (ix)
   4DE0 E5            [11] 3091 	push	hl
   4DE1 DD 66 06      [19] 3092 	ld	h,6 (ix)
   4DE4 DD 6E 06      [19] 3093 	ld	l,6 (ix)
   4DE7 E5            [11] 3094 	push	hl
   4DE8 CD 12 65      [17] 3095 	call	_cpct_px2byteM1
   4DEB F1            [10] 3096 	pop	af
   4DEC F1            [10] 3097 	pop	af
   4DED DD 75 FF      [19] 3098 	ld	-1 (ix),l
   4DF0 D1            [10] 3099 	pop	de
   4DF1 C1            [10] 3100 	pop	bc
   4DF2 D5            [11] 3101 	push	de
   4DF3 21 04 00      [10] 3102 	ld	hl,#0x0004
   4DF6 E5            [11] 3103 	push	hl
   4DF7 DD 7E FF      [19] 3104 	ld	a,-1 (ix)
   4DFA F5            [11] 3105 	push	af
   4DFB 33            [ 6] 3106 	inc	sp
   4DFC C5            [11] 3107 	push	bc
   4DFD CD 04 65      [17] 3108 	call	_cpct_memset
   4E00 D1            [10] 3109 	pop	de
                           3110 ;src/includes/world.h:10: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, y*TILESIZE_H+1);
   4E01 63            [ 4] 3111 	ld	h,e
   4E02 24            [ 4] 3112 	inc	h
   4E03 D5            [11] 3113 	push	de
   4E04 E5            [11] 3114 	push	hl
   4E05 33            [ 6] 3115 	inc	sp
   4E06 D5            [11] 3116 	push	de
   4E07 33            [ 6] 3117 	inc	sp
   4E08 21 00 C0      [10] 3118 	ld	hl,#0xC000
   4E0B E5            [11] 3119 	push	hl
   4E0C CD 38 66      [17] 3120 	call	_cpct_getScreenPtr
   4E0F D1            [10] 3121 	pop	de
                           3122 ;src/includes/world.h:11: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E10 E5            [11] 3123 	push	hl
   4E11 D5            [11] 3124 	push	de
   4E12 DD 66 06      [19] 3125 	ld	h,6 (ix)
   4E15 DD 6E 06      [19] 3126 	ld	l,6 (ix)
   4E18 E5            [11] 3127 	push	hl
   4E19 DD 66 06      [19] 3128 	ld	h,6 (ix)
   4E1C DD 6E 06      [19] 3129 	ld	l,6 (ix)
   4E1F E5            [11] 3130 	push	hl
   4E20 CD 12 65      [17] 3131 	call	_cpct_px2byteM1
   4E23 F1            [10] 3132 	pop	af
   4E24 F1            [10] 3133 	pop	af
   4E25 5D            [ 4] 3134 	ld	e,l
   4E26 F1            [10] 3135 	pop	af
   4E27 57            [ 4] 3136 	ld	d,a
   4E28 C1            [10] 3137 	pop	bc
   4E29 D5            [11] 3138 	push	de
   4E2A 21 04 00      [10] 3139 	ld	hl,#0x0004
   4E2D E5            [11] 3140 	push	hl
   4E2E 7B            [ 4] 3141 	ld	a,e
   4E2F F5            [11] 3142 	push	af
   4E30 33            [ 6] 3143 	inc	sp
   4E31 C5            [11] 3144 	push	bc
   4E32 CD 04 65      [17] 3145 	call	_cpct_memset
   4E35 D1            [10] 3146 	pop	de
                           3147 ;src/includes/world.h:14: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-1);
   4E36 DD 7E 05      [19] 3148 	ld	a,5 (ix)
   4E39 3C            [ 4] 3149 	inc	a
   4E3A 07            [ 4] 3150 	rlca
   4E3B 07            [ 4] 3151 	rlca
   4E3C 07            [ 4] 3152 	rlca
   4E3D 07            [ 4] 3153 	rlca
   4E3E E6 F0         [ 7] 3154 	and	a,#0xF0
   4E40 5F            [ 4] 3155 	ld	e,a
   4E41 63            [ 4] 3156 	ld	h,e
   4E42 25            [ 4] 3157 	dec	h
   4E43 D5            [11] 3158 	push	de
   4E44 E5            [11] 3159 	push	hl
   4E45 33            [ 6] 3160 	inc	sp
   4E46 D5            [11] 3161 	push	de
   4E47 33            [ 6] 3162 	inc	sp
   4E48 21 00 C0      [10] 3163 	ld	hl,#0xC000
   4E4B E5            [11] 3164 	push	hl
   4E4C CD 38 66      [17] 3165 	call	_cpct_getScreenPtr
   4E4F D1            [10] 3166 	pop	de
                           3167 ;src/includes/world.h:15: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E50 E5            [11] 3168 	push	hl
   4E51 D5            [11] 3169 	push	de
   4E52 DD 66 06      [19] 3170 	ld	h,6 (ix)
   4E55 DD 6E 06      [19] 3171 	ld	l,6 (ix)
   4E58 E5            [11] 3172 	push	hl
   4E59 DD 66 06      [19] 3173 	ld	h,6 (ix)
   4E5C DD 6E 06      [19] 3174 	ld	l,6 (ix)
   4E5F E5            [11] 3175 	push	hl
   4E60 CD 12 65      [17] 3176 	call	_cpct_px2byteM1
   4E63 F1            [10] 3177 	pop	af
   4E64 F1            [10] 3178 	pop	af
   4E65 DD 75 FF      [19] 3179 	ld	-1 (ix),l
   4E68 D1            [10] 3180 	pop	de
   4E69 C1            [10] 3181 	pop	bc
   4E6A D5            [11] 3182 	push	de
   4E6B 21 04 00      [10] 3183 	ld	hl,#0x0004
   4E6E E5            [11] 3184 	push	hl
   4E6F DD 7E FF      [19] 3185 	ld	a,-1 (ix)
   4E72 F5            [11] 3186 	push	af
   4E73 33            [ 6] 3187 	inc	sp
   4E74 C5            [11] 3188 	push	bc
   4E75 CD 04 65      [17] 3189 	call	_cpct_memset
   4E78 D1            [10] 3190 	pop	de
                           3191 ;src/includes/world.h:16: p_video = cpct_getScreenPtr(SCR_VMEM, x*TILESIZE_W, (y+1)*TILESIZE_H-2);
   4E79 63            [ 4] 3192 	ld	h,e
   4E7A 25            [ 4] 3193 	dec	h
   4E7B 25            [ 4] 3194 	dec	h
   4E7C E5            [11] 3195 	push	hl
   4E7D 33            [ 6] 3196 	inc	sp
   4E7E D5            [11] 3197 	push	de
   4E7F 33            [ 6] 3198 	inc	sp
   4E80 21 00 C0      [10] 3199 	ld	hl,#0xC000
   4E83 E5            [11] 3200 	push	hl
   4E84 CD 38 66      [17] 3201 	call	_cpct_getScreenPtr
                           3202 ;src/includes/world.h:17: cpct_memset (p_video, cpct_px2byteM1(color,color,color,color), 4);
   4E87 E5            [11] 3203 	push	hl
   4E88 DD 66 06      [19] 3204 	ld	h,6 (ix)
   4E8B DD 6E 06      [19] 3205 	ld	l,6 (ix)
   4E8E E5            [11] 3206 	push	hl
   4E8F DD 66 06      [19] 3207 	ld	h,6 (ix)
   4E92 DD 6E 06      [19] 3208 	ld	l,6 (ix)
   4E95 E5            [11] 3209 	push	hl
   4E96 CD 12 65      [17] 3210 	call	_cpct_px2byteM1
   4E99 F1            [10] 3211 	pop	af
   4E9A F1            [10] 3212 	pop	af
   4E9B 65            [ 4] 3213 	ld	h,l
   4E9C D1            [10] 3214 	pop	de
   4E9D 01 04 00      [10] 3215 	ld	bc,#0x0004
   4EA0 C5            [11] 3216 	push	bc
   4EA1 E5            [11] 3217 	push	hl
   4EA2 33            [ 6] 3218 	inc	sp
   4EA3 D5            [11] 3219 	push	de
   4EA4 CD 04 65      [17] 3220 	call	_cpct_memset
                           3221 ;src/includes/world.h:18: break;
   4EA7 C3 8F 4F      [10] 3222 	jp	00119$
                           3223 ;src/includes/world.h:19: case T_SSNS:
   4EAA                    3224 00102$:
                           3225 ;src/includes/world.h:20: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EAA 11 A9 42      [10] 3226 	ld	de,#_station_small_ns
   4EAD 21 04 10      [10] 3227 	ld	hl,#0x1004
   4EB0 E5            [11] 3228 	push	hl
   4EB1 C5            [11] 3229 	push	bc
   4EB2 D5            [11] 3230 	push	de
   4EB3 CD 2E 63      [17] 3231 	call	_cpct_drawSprite
                           3232 ;src/includes/world.h:21: break;
   4EB6 C3 8F 4F      [10] 3233 	jp	00119$
                           3234 ;src/includes/world.h:22: case T_SSEW:
   4EB9                    3235 00103$:
                           3236 ;src/includes/world.h:23: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EB9 11 E9 42      [10] 3237 	ld	de,#_station_small_ew
   4EBC 21 04 10      [10] 3238 	ld	hl,#0x1004
   4EBF E5            [11] 3239 	push	hl
   4EC0 C5            [11] 3240 	push	bc
   4EC1 D5            [11] 3241 	push	de
   4EC2 CD 2E 63      [17] 3242 	call	_cpct_drawSprite
                           3243 ;src/includes/world.h:24: break;
   4EC5 C3 8F 4F      [10] 3244 	jp	00119$
                           3245 ;src/includes/world.h:25: case T_SMNS:
   4EC8                    3246 00104$:
                           3247 ;src/includes/world.h:26: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EC8 11 29 43      [10] 3248 	ld	de,#_station_medium_ns
   4ECB 21 04 10      [10] 3249 	ld	hl,#0x1004
   4ECE E5            [11] 3250 	push	hl
   4ECF C5            [11] 3251 	push	bc
   4ED0 D5            [11] 3252 	push	de
   4ED1 CD 2E 63      [17] 3253 	call	_cpct_drawSprite
                           3254 ;src/includes/world.h:27: break;
   4ED4 C3 8F 4F      [10] 3255 	jp	00119$
                           3256 ;src/includes/world.h:28: case T_SMEW:
   4ED7                    3257 00105$:
                           3258 ;src/includes/world.h:29: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   4ED7 11 69 43      [10] 3259 	ld	de,#_station_medium_ew
   4EDA 21 04 10      [10] 3260 	ld	hl,#0x1004
   4EDD E5            [11] 3261 	push	hl
   4EDE C5            [11] 3262 	push	bc
   4EDF D5            [11] 3263 	push	de
   4EE0 CD 2E 63      [17] 3264 	call	_cpct_drawSprite
                           3265 ;src/includes/world.h:30: break;
   4EE3 C3 8F 4F      [10] 3266 	jp	00119$
                           3267 ;src/includes/world.h:31: case T_SLNS:
   4EE6                    3268 00106$:
                           3269 ;src/includes/world.h:32: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   4EE6 11 A9 43      [10] 3270 	ld	de,#_station_large_ns
   4EE9 21 04 10      [10] 3271 	ld	hl,#0x1004
   4EEC E5            [11] 3272 	push	hl
   4EED C5            [11] 3273 	push	bc
   4EEE D5            [11] 3274 	push	de
   4EEF CD 2E 63      [17] 3275 	call	_cpct_drawSprite
                           3276 ;src/includes/world.h:33: break;
   4EF2 C3 8F 4F      [10] 3277 	jp	00119$
                           3278 ;src/includes/world.h:34: case T_SLEW:
   4EF5                    3279 00107$:
                           3280 ;src/includes/world.h:35: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   4EF5 11 E9 43      [10] 3281 	ld	de,#_station_large_ew
   4EF8 21 04 10      [10] 3282 	ld	hl,#0x1004
   4EFB E5            [11] 3283 	push	hl
   4EFC C5            [11] 3284 	push	bc
   4EFD D5            [11] 3285 	push	de
   4EFE CD 2E 63      [17] 3286 	call	_cpct_drawSprite
                           3287 ;src/includes/world.h:36: break;
   4F01 C3 8F 4F      [10] 3288 	jp	00119$
                           3289 ;src/includes/world.h:37: case T_REW:
   4F04                    3290 00108$:
                           3291 ;src/includes/world.h:38: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   4F04 11 29 44      [10] 3292 	ld	de,#_rail_ew
   4F07 21 04 10      [10] 3293 	ld	hl,#0x1004
   4F0A E5            [11] 3294 	push	hl
   4F0B C5            [11] 3295 	push	bc
   4F0C D5            [11] 3296 	push	de
   4F0D CD 2E 63      [17] 3297 	call	_cpct_drawSprite
                           3298 ;src/includes/world.h:39: break;
   4F10 C3 8F 4F      [10] 3299 	jp	00119$
                           3300 ;src/includes/world.h:40: case T_RNS:
   4F13                    3301 00109$:
                           3302 ;src/includes/world.h:41: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   4F13 11 69 44      [10] 3303 	ld	de,#_rail_ns
   4F16 21 04 10      [10] 3304 	ld	hl,#0x1004
   4F19 E5            [11] 3305 	push	hl
   4F1A C5            [11] 3306 	push	bc
   4F1B D5            [11] 3307 	push	de
   4F1C CD 2E 63      [17] 3308 	call	_cpct_drawSprite
                           3309 ;src/includes/world.h:42: break;
   4F1F 18 6E         [12] 3310 	jr	00119$
                           3311 ;src/includes/world.h:43: case T_REN:
   4F21                    3312 00110$:
                           3313 ;src/includes/world.h:44: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   4F21 11 A9 44      [10] 3314 	ld	de,#_rail_en
   4F24 21 04 10      [10] 3315 	ld	hl,#0x1004
   4F27 E5            [11] 3316 	push	hl
   4F28 C5            [11] 3317 	push	bc
   4F29 D5            [11] 3318 	push	de
   4F2A CD 2E 63      [17] 3319 	call	_cpct_drawSprite
                           3320 ;src/includes/world.h:45: break;
   4F2D 18 60         [12] 3321 	jr	00119$
                           3322 ;src/includes/world.h:46: case T_RES:
   4F2F                    3323 00111$:
                           3324 ;src/includes/world.h:47: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   4F2F 11 E9 44      [10] 3325 	ld	de,#_rail_es
   4F32 21 04 10      [10] 3326 	ld	hl,#0x1004
   4F35 E5            [11] 3327 	push	hl
   4F36 C5            [11] 3328 	push	bc
   4F37 D5            [11] 3329 	push	de
   4F38 CD 2E 63      [17] 3330 	call	_cpct_drawSprite
                           3331 ;src/includes/world.h:48: break;
   4F3B 18 52         [12] 3332 	jr	00119$
                           3333 ;src/includes/world.h:49: case T_RWN:
   4F3D                    3334 00112$:
                           3335 ;src/includes/world.h:50: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   4F3D 11 29 45      [10] 3336 	ld	de,#_rail_wn
   4F40 21 04 10      [10] 3337 	ld	hl,#0x1004
   4F43 E5            [11] 3338 	push	hl
   4F44 C5            [11] 3339 	push	bc
   4F45 D5            [11] 3340 	push	de
   4F46 CD 2E 63      [17] 3341 	call	_cpct_drawSprite
                           3342 ;src/includes/world.h:51: break;
   4F49 18 44         [12] 3343 	jr	00119$
                           3344 ;src/includes/world.h:52: case T_RWS:
   4F4B                    3345 00113$:
                           3346 ;src/includes/world.h:53: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   4F4B 11 69 45      [10] 3347 	ld	de,#_rail_ws
   4F4E 21 04 10      [10] 3348 	ld	hl,#0x1004
   4F51 E5            [11] 3349 	push	hl
   4F52 C5            [11] 3350 	push	bc
   4F53 D5            [11] 3351 	push	de
   4F54 CD 2E 63      [17] 3352 	call	_cpct_drawSprite
                           3353 ;src/includes/world.h:54: break;
   4F57 18 36         [12] 3354 	jr	00119$
                           3355 ;src/includes/world.h:55: case T_REWN:
   4F59                    3356 00114$:
                           3357 ;src/includes/world.h:56: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   4F59 11 A9 45      [10] 3358 	ld	de,#_rail_ew_n
   4F5C 21 04 10      [10] 3359 	ld	hl,#0x1004
   4F5F E5            [11] 3360 	push	hl
   4F60 C5            [11] 3361 	push	bc
   4F61 D5            [11] 3362 	push	de
   4F62 CD 2E 63      [17] 3363 	call	_cpct_drawSprite
                           3364 ;src/includes/world.h:57: break;
   4F65 18 28         [12] 3365 	jr	00119$
                           3366 ;src/includes/world.h:58: case T_REWS:
   4F67                    3367 00115$:
                           3368 ;src/includes/world.h:59: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   4F67 11 E9 45      [10] 3369 	ld	de,#_rail_ew_s
   4F6A 21 04 10      [10] 3370 	ld	hl,#0x1004
   4F6D E5            [11] 3371 	push	hl
   4F6E C5            [11] 3372 	push	bc
   4F6F D5            [11] 3373 	push	de
   4F70 CD 2E 63      [17] 3374 	call	_cpct_drawSprite
                           3375 ;src/includes/world.h:60: break;
   4F73 18 1A         [12] 3376 	jr	00119$
                           3377 ;src/includes/world.h:61: case T_RNSE:
   4F75                    3378 00116$:
                           3379 ;src/includes/world.h:62: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   4F75 11 69 46      [10] 3380 	ld	de,#_rail_ns_e
   4F78 21 04 10      [10] 3381 	ld	hl,#0x1004
   4F7B E5            [11] 3382 	push	hl
   4F7C C5            [11] 3383 	push	bc
   4F7D D5            [11] 3384 	push	de
   4F7E CD 2E 63      [17] 3385 	call	_cpct_drawSprite
                           3386 ;src/includes/world.h:63: break;
   4F81 18 0C         [12] 3387 	jr	00119$
                           3388 ;src/includes/world.h:64: case T_RNSW:
   4F83                    3389 00117$:
                           3390 ;src/includes/world.h:65: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   4F83 11 29 46      [10] 3391 	ld	de,#_rail_ns_w
   4F86 21 04 10      [10] 3392 	ld	hl,#0x1004
   4F89 E5            [11] 3393 	push	hl
   4F8A C5            [11] 3394 	push	bc
   4F8B D5            [11] 3395 	push	de
   4F8C CD 2E 63      [17] 3396 	call	_cpct_drawSprite
                           3397 ;src/includes/world.h:67: }
   4F8F                    3398 00119$:
   4F8F 33            [ 6] 3399 	inc	sp
   4F90 DD E1         [14] 3400 	pop	ix
   4F92 C9            [10] 3401 	ret
                           3402 ;src/includes/world.h:70: void patternTile(u8 tileType, int index, u8 nBitsX, u8 nBitsY, u8 *pattern)
                           3403 ;	---------------------------------
                           3404 ; Function patternTile
                           3405 ; ---------------------------------
   4F93                    3406 _patternTile::
   4F93 DD E5         [15] 3407 	push	ix
   4F95 DD 21 00 00   [14] 3408 	ld	ix,#0
   4F99 DD 39         [15] 3409 	add	ix,sp
   4F9B 21 F5 FF      [10] 3410 	ld	hl,#-11
   4F9E 39            [11] 3411 	add	hl,sp
   4F9F F9            [ 6] 3412 	ld	sp,hl
                           3413 ;src/includes/world.h:75: for(iy=0; iy<nBitsY; iy++)
   4FA0 DD 7E 04      [19] 3414 	ld	a,4 (ix)
   4FA3 D6 08         [ 7] 3415 	sub	a, #0x08
   4FA5 20 04         [12] 3416 	jr	NZ,00153$
   4FA7 3E 01         [ 7] 3417 	ld	a,#0x01
   4FA9 18 01         [12] 3418 	jr	00154$
   4FAB                    3419 00153$:
   4FAB AF            [ 4] 3420 	xor	a,a
   4FAC                    3421 00154$:
   4FAC DD 77 F8      [19] 3422 	ld	-8 (ix),a
   4FAF DD 7E 04      [19] 3423 	ld	a,4 (ix)
   4FB2 D6 02         [ 7] 3424 	sub	a, #0x02
   4FB4 20 04         [12] 3425 	jr	NZ,00155$
   4FB6 3E 01         [ 7] 3426 	ld	a,#0x01
   4FB8 18 01         [12] 3427 	jr	00156$
   4FBA                    3428 00155$:
   4FBA AF            [ 4] 3429 	xor	a,a
   4FBB                    3430 00156$:
   4FBB DD 77 F9      [19] 3431 	ld	-7 (ix),a
   4FBE DD 36 F5 00   [19] 3432 	ld	-11 (ix),#0x00
   4FC2 11 00 00      [10] 3433 	ld	de,#0x0000
   4FC5                    3434 00115$:
   4FC5 DD 7E F5      [19] 3435 	ld	a,-11 (ix)
   4FC8 DD 96 08      [19] 3436 	sub	a, 8 (ix)
   4FCB D2 8B 50      [10] 3437 	jp	NC,00117$
                           3438 ;src/includes/world.h:77: for(ix=0; ix<nBitsX; ix++)
   4FCE DD 7E 05      [19] 3439 	ld	a,5 (ix)
   4FD1 83            [ 4] 3440 	add	a, e
   4FD2 DD 77 FC      [19] 3441 	ld	-4 (ix),a
   4FD5 DD 7E 06      [19] 3442 	ld	a,6 (ix)
   4FD8 8A            [ 4] 3443 	adc	a, d
   4FD9 DD 77 FD      [19] 3444 	ld	-3 (ix),a
   4FDC D5            [11] 3445 	push	de
   4FDD DD 5E 07      [19] 3446 	ld	e,7 (ix)
   4FE0 DD 66 F5      [19] 3447 	ld	h,-11 (ix)
   4FE3 2E 00         [ 7] 3448 	ld	l, #0x00
   4FE5 55            [ 4] 3449 	ld	d, l
   4FE6 06 08         [ 7] 3450 	ld	b, #0x08
   4FE8                    3451 00157$:
   4FE8 29            [11] 3452 	add	hl,hl
   4FE9 30 01         [12] 3453 	jr	NC,00158$
   4FEB 19            [11] 3454 	add	hl,de
   4FEC                    3455 00158$:
   4FEC 10 FA         [13] 3456 	djnz	00157$
   4FEE D1            [10] 3457 	pop	de
   4FEF DD 75 FA      [19] 3458 	ld	-6 (ix),l
   4FF2 DD 74 FB      [19] 3459 	ld	-5 (ix),h
   4FF5 DD 36 F6 00   [19] 3460 	ld	-10 (ix),#0x00
   4FF9                    3461 00112$:
   4FF9 DD 7E F6      [19] 3462 	ld	a,-10 (ix)
   4FFC DD 96 07      [19] 3463 	sub	a, 7 (ix)
   4FFF D2 80 50      [10] 3464 	jp	NC,00116$
                           3465 ;src/includes/world.h:79: if(cpct_getBit (pattern, iy*nBitsX+ix)!=0 && index+iy*WIDTH+ix < WIDTH*HEIGHT)
   5002 DD 7E F6      [19] 3466 	ld	a,-10 (ix)
   5005 DD 77 FE      [19] 3467 	ld	-2 (ix),a
   5008 DD 36 FF 00   [19] 3468 	ld	-1 (ix),#0x00
   500C DD 7E FA      [19] 3469 	ld	a,-6 (ix)
   500F DD 86 FE      [19] 3470 	add	a, -2 (ix)
   5012 6F            [ 4] 3471 	ld	l,a
   5013 DD 7E FB      [19] 3472 	ld	a,-5 (ix)
   5016 DD 8E FF      [19] 3473 	adc	a, -1 (ix)
   5019 67            [ 4] 3474 	ld	h,a
   501A DD 4E 09      [19] 3475 	ld	c,9 (ix)
   501D DD 46 0A      [19] 3476 	ld	b,10 (ix)
   5020 D5            [11] 3477 	push	de
   5021 E5            [11] 3478 	push	hl
   5022 C5            [11] 3479 	push	bc
   5023 CD EE 62      [17] 3480 	call	_cpct_getBit
   5026 DD 75 F7      [19] 3481 	ld	-9 (ix),l
   5029 D1            [10] 3482 	pop	de
   502A DD 7E F7      [19] 3483 	ld	a,-9 (ix)
   502D B7            [ 4] 3484 	or	a, a
   502E 28 4A         [12] 3485 	jr	Z,00113$
   5030 DD 7E FC      [19] 3486 	ld	a,-4 (ix)
   5033 DD 86 FE      [19] 3487 	add	a, -2 (ix)
   5036 4F            [ 4] 3488 	ld	c,a
   5037 DD 7E FD      [19] 3489 	ld	a,-3 (ix)
   503A DD 8E FF      [19] 3490 	adc	a, -1 (ix)
   503D 47            [ 4] 3491 	ld	b,a
   503E EE 80         [ 7] 3492 	xor	a, #0x80
   5040 D6 8F         [ 7] 3493 	sub	a, #0x8F
   5042 30 36         [12] 3494 	jr	NC,00113$
                           3495 ;src/includes/world.h:82: p_world[index+iy*WIDTH+ix] = tileType;
   5044 21 0C 67      [10] 3496 	ld	hl,#_p_world
   5047 09            [11] 3497 	add	hl,bc
   5048 4D            [ 4] 3498 	ld	c,l
   5049 44            [ 4] 3499 	ld	b,h
                           3500 ;src/includes/world.h:81: if(tileType == FOREST)
   504A DD 7E F8      [19] 3501 	ld	a,-8 (ix)
   504D B7            [ 4] 3502 	or	a, a
   504E 28 06         [12] 3503 	jr	Z,00104$
                           3504 ;src/includes/world.h:82: p_world[index+iy*WIDTH+ix] = tileType;
   5050 DD 7E 04      [19] 3505 	ld	a,4 (ix)
   5053 02            [ 7] 3506 	ld	(bc),a
   5054 18 24         [12] 3507 	jr	00113$
   5056                    3508 00104$:
                           3509 ;src/includes/world.h:83: else if(tileType==DWELLINGS1)
   5056 DD 7E F9      [19] 3510 	ld	a,-7 (ix)
   5059 B7            [ 4] 3511 	or	a, a
   505A 28 1E         [12] 3512 	jr	Z,00113$
                           3513 ;src/includes/world.h:84: p_world[index+iy*WIDTH+ix] = (u8)cpct_getRandomUniform_u8_f(cpct_count2VSYNC ()%256)%3+2;
   505C C5            [11] 3514 	push	bc
   505D D5            [11] 3515 	push	de
   505E CD 49 64      [17] 3516 	call	_cpct_count2VSYNC
   5061 CD 6E 65      [17] 3517 	call	_cpct_getRandomUniform_u8_f
   5064 DD 75 F7      [19] 3518 	ld	-9 (ix),l
   5067 3E 03         [ 7] 3519 	ld	a,#0x03
   5069 F5            [11] 3520 	push	af
   506A 33            [ 6] 3521 	inc	sp
   506B DD 7E F7      [19] 3522 	ld	a,-9 (ix)
   506E F5            [11] 3523 	push	af
   506F 33            [ 6] 3524 	inc	sp
   5070 CD D3 63      [17] 3525 	call	__moduchar
   5073 F1            [10] 3526 	pop	af
   5074 7D            [ 4] 3527 	ld	a,l
   5075 D1            [10] 3528 	pop	de
   5076 C1            [10] 3529 	pop	bc
   5077 C6 02         [ 7] 3530 	add	a, #0x02
   5079 02            [ 7] 3531 	ld	(bc),a
   507A                    3532 00113$:
                           3533 ;src/includes/world.h:77: for(ix=0; ix<nBitsX; ix++)
   507A DD 34 F6      [23] 3534 	inc	-10 (ix)
   507D C3 F9 4F      [10] 3535 	jp	00112$
   5080                    3536 00116$:
                           3537 ;src/includes/world.h:75: for(iy=0; iy<nBitsY; iy++)
   5080 21 50 00      [10] 3538 	ld	hl,#0x0050
   5083 19            [11] 3539 	add	hl,de
   5084 EB            [ 4] 3540 	ex	de,hl
   5085 DD 34 F5      [23] 3541 	inc	-11 (ix)
   5088 C3 C5 4F      [10] 3542 	jp	00115$
   508B                    3543 00117$:
   508B DD F9         [10] 3544 	ld	sp, ix
   508D DD E1         [14] 3545 	pop	ix
   508F C9            [10] 3546 	ret
                           3547 ;src/includes/world.h:91: void generateWorld()
                           3548 ;	---------------------------------
                           3549 ; Function generateWorld
                           3550 ; ---------------------------------
   5090                    3551 _generateWorld::
   5090 DD E5         [15] 3552 	push	ix
   5092 DD 21 00 00   [14] 3553 	ld	ix,#0
   5096 DD 39         [15] 3554 	add	ix,sp
   5098 21 E5 FF      [10] 3555 	ld	hl,#-27
   509B 39            [11] 3556 	add	hl,sp
   509C F9            [ 6] 3557 	ld	sp,hl
                           3558 ;src/includes/world.h:100: cpct_srand((u32)cpct_count2VSYNC());
   509D CD 49 64      [17] 3559 	call	_cpct_count2VSYNC
   50A0 11 00 00      [10] 3560 	ld	de,#0x0000
   50A3 CD 5F 64      [17] 3561 	call	_cpct_setSeed_mxor
                           3562 ;src/includes/world.h:104: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   50A6 11 00 00      [10] 3563 	ld	de,#0x0000
   50A9                    3564 00128$:
                           3565 ;src/includes/world.h:106: p_world[iy] = cpct_rand()%2;
   50A9 21 0C 67      [10] 3566 	ld	hl,#_p_world
   50AC 19            [11] 3567 	add	hl,de
   50AD E5            [11] 3568 	push	hl
   50AE D5            [11] 3569 	push	de
   50AF CD 4A 65      [17] 3570 	call	_cpct_getRandom_mxor_u8
   50B2 7D            [ 4] 3571 	ld	a,l
   50B3 D1            [10] 3572 	pop	de
   50B4 E1            [10] 3573 	pop	hl
   50B5 E6 01         [ 7] 3574 	and	a, #0x01
   50B7 77            [ 7] 3575 	ld	(hl),a
                           3576 ;src/includes/world.h:104: for(iy=0; iy<HEIGHT*WIDTH;iy++)
   50B8 13            [ 6] 3577 	inc	de
   50B9 7A            [ 4] 3578 	ld	a,d
   50BA EE 80         [ 7] 3579 	xor	a, #0x80
   50BC D6 8F         [ 7] 3580 	sub	a, #0x8F
   50BE 38 E9         [12] 3581 	jr	C,00128$
                           3582 ;src/includes/world.h:110: for(ix=0; ix<NBFOREST; ix++)
   50C0 21 02 00      [10] 3583 	ld	hl,#0x0002
   50C3 39            [11] 3584 	add	hl,sp
   50C4 DD 75 F5      [19] 3585 	ld	-11 (ix),l
   50C7 DD 74 F6      [19] 3586 	ld	-10 (ix),h
   50CA 01 00 00      [10] 3587 	ld	bc,#0x0000
   50CD                    3588 00130$:
                           3589 ;src/includes/world.h:112: iy = cpct_rand()*15;
   50CD C5            [11] 3590 	push	bc
   50CE CD 4A 65      [17] 3591 	call	_cpct_getRandom_mxor_u8
   50D1 C1            [10] 3592 	pop	bc
   50D2 5D            [ 4] 3593 	ld	e,l
   50D3 16 00         [ 7] 3594 	ld	d,#0x00
   50D5 6B            [ 4] 3595 	ld	l, e
   50D6 62            [ 4] 3596 	ld	h, d
   50D7 29            [11] 3597 	add	hl, hl
   50D8 19            [11] 3598 	add	hl, de
   50D9 29            [11] 3599 	add	hl, hl
   50DA 19            [11] 3600 	add	hl, de
   50DB 29            [11] 3601 	add	hl, hl
   50DC 19            [11] 3602 	add	hl, de
   50DD DD 75 F3      [19] 3603 	ld	-13 (ix),l
   50E0 DD 74 F4      [19] 3604 	ld	-12 (ix),h
                           3605 ;src/includes/world.h:114: switch(cpct_rand()%4)
   50E3 C5            [11] 3606 	push	bc
   50E4 CD 4A 65      [17] 3607 	call	_cpct_getRandom_mxor_u8
   50E7 7D            [ 4] 3608 	ld	a,l
   50E8 C1            [10] 3609 	pop	bc
   50E9 E6 03         [ 7] 3610 	and	a, #0x03
   50EB DD 77 FB      [19] 3611 	ld	-5 (ix),a
   50EE 3E 03         [ 7] 3612 	ld	a,#0x03
   50F0 DD 96 FB      [19] 3613 	sub	a, -5 (ix)
   50F3 DA 57 52      [10] 3614 	jp	C,00106$
                           3615 ;src/includes/world.h:118: p_forest[1] = 0b11000111;
   50F6 E5            [11] 3616 	push	hl
   50F7 DD 6E F5      [19] 3617 	ld	l,-11 (ix)
   50FA DD 66 F6      [19] 3618 	ld	h,-10 (ix)
   50FD 23            [ 6] 3619 	inc	hl
   50FE E5            [11] 3620 	push	hl
   50FF FD E1         [14] 3621 	pop	iy
   5101 E1            [10] 3622 	pop	hl
                           3623 ;src/includes/world.h:119: p_forest[2] = 0b11011110;
   5102 DD 5E F5      [19] 3624 	ld	e,-11 (ix)
   5105 DD 56 F6      [19] 3625 	ld	d,-10 (ix)
   5108 13            [ 6] 3626 	inc	de
   5109 13            [ 6] 3627 	inc	de
                           3628 ;src/includes/world.h:120: p_forest[3] = 0b01111110;
   510A DD 7E F5      [19] 3629 	ld	a,-11 (ix)
   510D C6 03         [ 7] 3630 	add	a, #0x03
   510F DD 77 F9      [19] 3631 	ld	-7 (ix),a
   5112 DD 7E F6      [19] 3632 	ld	a,-10 (ix)
   5115 CE 00         [ 7] 3633 	adc	a, #0x00
   5117 DD 77 FA      [19] 3634 	ld	-6 (ix),a
                           3635 ;src/includes/world.h:121: p_forest[4] = 0b11111110; 
   511A DD 7E F5      [19] 3636 	ld	a,-11 (ix)
   511D C6 04         [ 7] 3637 	add	a, #0x04
   511F DD 77 F1      [19] 3638 	ld	-15 (ix),a
   5122 DD 7E F6      [19] 3639 	ld	a,-10 (ix)
   5125 CE 00         [ 7] 3640 	adc	a, #0x00
   5127 DD 77 F2      [19] 3641 	ld	-14 (ix),a
                           3642 ;src/includes/world.h:122: p_forest[5] = 0b01111111;
   512A DD 7E F5      [19] 3643 	ld	a,-11 (ix)
   512D C6 05         [ 7] 3644 	add	a, #0x05
   512F DD 77 FC      [19] 3645 	ld	-4 (ix),a
   5132 DD 7E F6      [19] 3646 	ld	a,-10 (ix)
   5135 CE 00         [ 7] 3647 	adc	a, #0x00
   5137 DD 77 FD      [19] 3648 	ld	-3 (ix),a
                           3649 ;src/includes/world.h:123: p_forest[6] = 0b11101111;
   513A DD 7E F5      [19] 3650 	ld	a,-11 (ix)
   513D C6 06         [ 7] 3651 	add	a, #0x06
   513F DD 77 FE      [19] 3652 	ld	-2 (ix),a
   5142 DD 7E F6      [19] 3653 	ld	a,-10 (ix)
   5145 CE 00         [ 7] 3654 	adc	a, #0x00
   5147 DD 77 FF      [19] 3655 	ld	-1 (ix),a
                           3656 ;src/includes/world.h:124: p_forest[7] = 0b11001111;
   514A DD 7E F5      [19] 3657 	ld	a,-11 (ix)
   514D C6 07         [ 7] 3658 	add	a, #0x07
   514F DD 77 F7      [19] 3659 	ld	-9 (ix),a
   5152 DD 7E F6      [19] 3660 	ld	a,-10 (ix)
   5155 CE 00         [ 7] 3661 	adc	a, #0x00
   5157 DD 77 F8      [19] 3662 	ld	-8 (ix),a
                           3663 ;src/includes/world.h:114: switch(cpct_rand()%4)
   515A D5            [11] 3664 	push	de
   515B DD 5E FB      [19] 3665 	ld	e,-5 (ix)
   515E 16 00         [ 7] 3666 	ld	d,#0x00
   5160 21 68 51      [10] 3667 	ld	hl,#00228$
   5163 19            [11] 3668 	add	hl,de
   5164 19            [11] 3669 	add	hl,de
   5165 19            [11] 3670 	add	hl,de
   5166 D1            [10] 3671 	pop	de
   5167 E9            [ 4] 3672 	jp	(hl)
   5168                    3673 00228$:
   5168 C3 74 51      [10] 3674 	jp	00102$
   516B C3 AE 51      [10] 3675 	jp	00103$
   516E C3 E7 51      [10] 3676 	jp	00104$
   5171 C3 20 52      [10] 3677 	jp	00105$
                           3678 ;src/includes/world.h:116: case 0:
   5174                    3679 00102$:
                           3680 ;src/includes/world.h:117: p_forest[0] = 0b10000100;
   5174 DD 6E F5      [19] 3681 	ld	l,-11 (ix)
   5177 DD 66 F6      [19] 3682 	ld	h,-10 (ix)
   517A 36 84         [10] 3683 	ld	(hl),#0x84
                           3684 ;src/includes/world.h:118: p_forest[1] = 0b11000111;
   517C FD 36 00 C7   [19] 3685 	ld	0 (iy), #0xC7
                           3686 ;src/includes/world.h:119: p_forest[2] = 0b11011110;
   5180 3E DE         [ 7] 3687 	ld	a,#0xDE
   5182 12            [ 7] 3688 	ld	(de),a
                           3689 ;src/includes/world.h:120: p_forest[3] = 0b01111110;
   5183 DD 6E F9      [19] 3690 	ld	l,-7 (ix)
   5186 DD 66 FA      [19] 3691 	ld	h,-6 (ix)
   5189 36 7E         [10] 3692 	ld	(hl),#0x7E
                           3693 ;src/includes/world.h:121: p_forest[4] = 0b11111110; 
   518B DD 6E F1      [19] 3694 	ld	l,-15 (ix)
   518E DD 66 F2      [19] 3695 	ld	h,-14 (ix)
   5191 36 FE         [10] 3696 	ld	(hl),#0xFE
                           3697 ;src/includes/world.h:122: p_forest[5] = 0b01111111;
   5193 DD 6E FC      [19] 3698 	ld	l,-4 (ix)
   5196 DD 66 FD      [19] 3699 	ld	h,-3 (ix)
   5199 36 7F         [10] 3700 	ld	(hl),#0x7F
                           3701 ;src/includes/world.h:123: p_forest[6] = 0b11101111;
   519B DD 6E FE      [19] 3702 	ld	l,-2 (ix)
   519E DD 66 FF      [19] 3703 	ld	h,-1 (ix)
   51A1 36 EF         [10] 3704 	ld	(hl),#0xEF
                           3705 ;src/includes/world.h:124: p_forest[7] = 0b11001111;
   51A3 DD 6E F7      [19] 3706 	ld	l,-9 (ix)
   51A6 DD 66 F8      [19] 3707 	ld	h,-8 (ix)
   51A9 36 CF         [10] 3708 	ld	(hl),#0xCF
                           3709 ;src/includes/world.h:125: break;
   51AB C3 57 52      [10] 3710 	jp	00106$
                           3711 ;src/includes/world.h:126: case 1:
   51AE                    3712 00103$:
                           3713 ;src/includes/world.h:127: p_forest[0] = 0b00001100;
   51AE DD 6E F5      [19] 3714 	ld	l,-11 (ix)
   51B1 DD 66 F6      [19] 3715 	ld	h,-10 (ix)
   51B4 36 0C         [10] 3716 	ld	(hl),#0x0C
                           3717 ;src/includes/world.h:128: p_forest[1] = 0b11111000;
   51B6 FD 36 00 F8   [19] 3718 	ld	0 (iy), #0xF8
                           3719 ;src/includes/world.h:129: p_forest[2] = 0b00111111;
   51BA 3E 3F         [ 7] 3720 	ld	a,#0x3F
   51BC 12            [ 7] 3721 	ld	(de),a
                           3722 ;src/includes/world.h:130: p_forest[3] = 0b01111110;
   51BD DD 6E F9      [19] 3723 	ld	l,-7 (ix)
   51C0 DD 66 FA      [19] 3724 	ld	h,-6 (ix)
   51C3 36 7E         [10] 3725 	ld	(hl),#0x7E
                           3726 ;src/includes/world.h:131: p_forest[4] = 0b11111110; 
   51C5 DD 6E F1      [19] 3727 	ld	l,-15 (ix)
   51C8 DD 66 F2      [19] 3728 	ld	h,-14 (ix)
   51CB 36 FE         [10] 3729 	ld	(hl),#0xFE
                           3730 ;src/includes/world.h:132: p_forest[5] = 0b01011111;
   51CD DD 6E FC      [19] 3731 	ld	l,-4 (ix)
   51D0 DD 66 FD      [19] 3732 	ld	h,-3 (ix)
   51D3 36 5F         [10] 3733 	ld	(hl),#0x5F
                           3734 ;src/includes/world.h:133: p_forest[6] = 0b11001111;
   51D5 DD 6E FE      [19] 3735 	ld	l,-2 (ix)
   51D8 DD 66 FF      [19] 3736 	ld	h,-1 (ix)
   51DB 36 CF         [10] 3737 	ld	(hl),#0xCF
                           3738 ;src/includes/world.h:134: p_forest[7] = 0b10001100;
   51DD DD 6E F7      [19] 3739 	ld	l,-9 (ix)
   51E0 DD 66 F8      [19] 3740 	ld	h,-8 (ix)
   51E3 36 8C         [10] 3741 	ld	(hl),#0x8C
                           3742 ;src/includes/world.h:135: break;
   51E5 18 70         [12] 3743 	jr	00106$
                           3744 ;src/includes/world.h:136: case 2:
   51E7                    3745 00104$:
                           3746 ;src/includes/world.h:137: p_forest[0] = 0b00110000;
   51E7 DD 6E F5      [19] 3747 	ld	l,-11 (ix)
   51EA DD 66 F6      [19] 3748 	ld	h,-10 (ix)
   51ED 36 30         [10] 3749 	ld	(hl),#0x30
                           3750 ;src/includes/world.h:138: p_forest[1] = 0b11110100;
   51EF FD 36 00 F4   [19] 3751 	ld	0 (iy), #0xF4
                           3752 ;src/includes/world.h:139: p_forest[2] = 0b11111111;
   51F3 3E FF         [ 7] 3753 	ld	a,#0xFF
   51F5 12            [ 7] 3754 	ld	(de),a
                           3755 ;src/includes/world.h:140: p_forest[3] = 0b11111111;
   51F6 DD 6E F9      [19] 3756 	ld	l,-7 (ix)
   51F9 DD 66 FA      [19] 3757 	ld	h,-6 (ix)
   51FC 36 FF         [10] 3758 	ld	(hl),#0xFF
                           3759 ;src/includes/world.h:141: p_forest[4] = 0b01111100;
   51FE DD 6E F1      [19] 3760 	ld	l,-15 (ix)
   5201 DD 66 F2      [19] 3761 	ld	h,-14 (ix)
   5204 36 7C         [10] 3762 	ld	(hl),#0x7C
                           3763 ;src/includes/world.h:142: p_forest[5] = 0b01111110;
   5206 DD 6E FC      [19] 3764 	ld	l,-4 (ix)
   5209 DD 66 FD      [19] 3765 	ld	h,-3 (ix)
   520C 36 7E         [10] 3766 	ld	(hl),#0x7E
                           3767 ;src/includes/world.h:143: p_forest[6] = 0b00111110;
   520E DD 6E FE      [19] 3768 	ld	l,-2 (ix)
   5211 DD 66 FF      [19] 3769 	ld	h,-1 (ix)
   5214 36 3E         [10] 3770 	ld	(hl),#0x3E
                           3771 ;src/includes/world.h:144: p_forest[7] = 0b00011000;
   5216 DD 6E F7      [19] 3772 	ld	l,-9 (ix)
   5219 DD 66 F8      [19] 3773 	ld	h,-8 (ix)
   521C 36 18         [10] 3774 	ld	(hl),#0x18
                           3775 ;src/includes/world.h:145: break;
   521E 18 37         [12] 3776 	jr	00106$
                           3777 ;src/includes/world.h:146: case 3:
   5220                    3778 00105$:
                           3779 ;src/includes/world.h:147: p_forest[0] = 0b11000000 , 
   5220 DD 6E F5      [19] 3780 	ld	l,-11 (ix)
   5223 DD 66 F6      [19] 3781 	ld	h,-10 (ix)
   5226 36 C0         [10] 3782 	ld	(hl),#0xC0
                           3783 ;src/includes/world.h:148: p_forest[1] = 0b11100111;
   5228 FD 36 00 E7   [19] 3784 	ld	0 (iy), #0xE7
                           3785 ;src/includes/world.h:149: p_forest[2] = 0b01111110;
   522C 3E 7E         [ 7] 3786 	ld	a,#0x7E
   522E 12            [ 7] 3787 	ld	(de),a
                           3788 ;src/includes/world.h:150: p_forest[3] = 0b01111110;
   522F DD 6E F9      [19] 3789 	ld	l,-7 (ix)
   5232 DD 66 FA      [19] 3790 	ld	h,-6 (ix)
   5235 36 7E         [10] 3791 	ld	(hl),#0x7E
                           3792 ;src/includes/world.h:151: p_forest[4] = 0b11111110;
   5237 DD 6E F1      [19] 3793 	ld	l,-15 (ix)
   523A DD 66 F2      [19] 3794 	ld	h,-14 (ix)
   523D 36 FE         [10] 3795 	ld	(hl),#0xFE
                           3796 ;src/includes/world.h:152: p_forest[5] = 0b11111100;
   523F DD 6E FC      [19] 3797 	ld	l,-4 (ix)
   5242 DD 66 FD      [19] 3798 	ld	h,-3 (ix)
   5245 36 FC         [10] 3799 	ld	(hl),#0xFC
                           3800 ;src/includes/world.h:153: p_forest[6] = 0b01111000;
   5247 DD 6E FE      [19] 3801 	ld	l,-2 (ix)
   524A DD 66 FF      [19] 3802 	ld	h,-1 (ix)
   524D 36 78         [10] 3803 	ld	(hl),#0x78
                           3804 ;src/includes/world.h:154: p_forest[7] = 0b00110000;
   524F DD 6E F7      [19] 3805 	ld	l,-9 (ix)
   5252 DD 66 F8      [19] 3806 	ld	h,-8 (ix)
   5255 36 30         [10] 3807 	ld	(hl),#0x30
                           3808 ;src/includes/world.h:156: }
   5257                    3809 00106$:
                           3810 ;src/includes/world.h:157: patternTile(FOREST, iy, 8, 8, p_forest);
   5257 DD 6E F5      [19] 3811 	ld	l,-11 (ix)
   525A DD 66 F6      [19] 3812 	ld	h,-10 (ix)
   525D C5            [11] 3813 	push	bc
   525E E5            [11] 3814 	push	hl
   525F 21 08 08      [10] 3815 	ld	hl,#0x0808
   5262 E5            [11] 3816 	push	hl
   5263 DD 6E F3      [19] 3817 	ld	l,-13 (ix)
   5266 DD 66 F4      [19] 3818 	ld	h,-12 (ix)
   5269 E5            [11] 3819 	push	hl
   526A 3E 08         [ 7] 3820 	ld	a,#0x08
   526C F5            [11] 3821 	push	af
   526D 33            [ 6] 3822 	inc	sp
   526E CD 93 4F      [17] 3823 	call	_patternTile
   5271 21 07 00      [10] 3824 	ld	hl,#7
   5274 39            [11] 3825 	add	hl,sp
   5275 F9            [ 6] 3826 	ld	sp,hl
   5276 C1            [10] 3827 	pop	bc
                           3828 ;src/includes/world.h:110: for(ix=0; ix<NBFOREST; ix++)
   5277 03            [ 6] 3829 	inc	bc
   5278 79            [ 4] 3830 	ld	a,c
   5279 D6 32         [ 7] 3831 	sub	a, #0x32
   527B 78            [ 4] 3832 	ld	a,b
   527C 17            [ 4] 3833 	rla
   527D 3F            [ 4] 3834 	ccf
   527E 1F            [ 4] 3835 	rra
   527F DE 80         [ 7] 3836 	sbc	a, #0x80
   5281 DA CD 50      [10] 3837 	jp	C,00130$
                           3838 ;src/includes/world.h:163: for(ix=0; ix<NBFARM; ix++)
   5284 01 3C 00      [10] 3839 	ld	bc,#0x003C
   5287                    3840 00134$:
                           3841 ;src/includes/world.h:165: iy = cpct_rand()*15; // (WIDTH*HEIGHT)/255;
   5287 C5            [11] 3842 	push	bc
   5288 CD 4A 65      [17] 3843 	call	_cpct_getRandom_mxor_u8
   528B C1            [10] 3844 	pop	bc
   528C 5D            [ 4] 3845 	ld	e,l
   528D 16 00         [ 7] 3846 	ld	d,#0x00
   528F 6B            [ 4] 3847 	ld	l, e
   5290 62            [ 4] 3848 	ld	h, d
   5291 29            [11] 3849 	add	hl, hl
   5292 19            [11] 3850 	add	hl, de
   5293 29            [11] 3851 	add	hl, hl
   5294 19            [11] 3852 	add	hl, de
   5295 29            [11] 3853 	add	hl, hl
   5296 19            [11] 3854 	add	hl, de
   5297 DD 75 F7      [19] 3855 	ld	-9 (ix),l
   529A DD 74 F8      [19] 3856 	ld	-8 (ix),h
                           3857 ;src/includes/world.h:167: shift = cpct_rand()%10;
   529D C5            [11] 3858 	push	bc
   529E CD 4A 65      [17] 3859 	call	_cpct_getRandom_mxor_u8
   52A1 55            [ 4] 3860 	ld	d,l
   52A2 3E 0A         [ 7] 3861 	ld	a,#0x0A
   52A4 F5            [11] 3862 	push	af
   52A5 33            [ 6] 3863 	inc	sp
   52A6 D5            [11] 3864 	push	de
   52A7 33            [ 6] 3865 	inc	sp
   52A8 CD D3 63      [17] 3866 	call	__moduchar
   52AB F1            [10] 3867 	pop	af
   52AC C1            [10] 3868 	pop	bc
   52AD 26 00         [ 7] 3869 	ld	h,#0x00
                           3870 ;src/includes/world.h:168: shift=iy-shift+5;
   52AF DD 7E F7      [19] 3871 	ld	a,-9 (ix)
   52B2 95            [ 4] 3872 	sub	a, l
   52B3 5F            [ 4] 3873 	ld	e,a
   52B4 DD 7E F8      [19] 3874 	ld	a,-8 (ix)
   52B7 9C            [ 4] 3875 	sbc	a, h
   52B8 57            [ 4] 3876 	ld	d,a
   52B9 21 05 00      [10] 3877 	ld	hl,#0x0005
   52BC 19            [11] 3878 	add	hl,de
   52BD DD 75 F7      [19] 3879 	ld	-9 (ix),l
   52C0 DD 74 F8      [19] 3880 	ld	-8 (ix),h
                           3881 ;src/includes/world.h:170: if(shift>0 && shift<WIDTH*HEIGHT)
   52C3 AF            [ 4] 3882 	xor	a, a
   52C4 DD BE F7      [19] 3883 	cp	a, -9 (ix)
   52C7 DD 9E F8      [19] 3884 	sbc	a, -8 (ix)
   52CA E2 CF 52      [10] 3885 	jp	PO, 00229$
   52CD EE 80         [ 7] 3886 	xor	a, #0x80
   52CF                    3887 00229$:
   52CF F2 F4 52      [10] 3888 	jp	P,00109$
   52D2 DD 7E F8      [19] 3889 	ld	a,-8 (ix)
   52D5 EE 80         [ 7] 3890 	xor	a, #0x80
   52D7 D6 8F         [ 7] 3891 	sub	a, #0x8F
   52D9 30 19         [12] 3892 	jr	NC,00109$
                           3893 ;src/includes/world.h:171: p_world[shift] = cpct_rand()%2+5;
   52DB 3E 0C         [ 7] 3894 	ld	a,#<(_p_world)
   52DD DD 86 F7      [19] 3895 	add	a, -9 (ix)
   52E0 6F            [ 4] 3896 	ld	l,a
   52E1 3E 67         [ 7] 3897 	ld	a,#>(_p_world)
   52E3 DD 8E F8      [19] 3898 	adc	a, -8 (ix)
   52E6 67            [ 4] 3899 	ld	h,a
   52E7 E5            [11] 3900 	push	hl
   52E8 C5            [11] 3901 	push	bc
   52E9 CD 4A 65      [17] 3902 	call	_cpct_getRandom_mxor_u8
   52EC 7D            [ 4] 3903 	ld	a,l
   52ED C1            [10] 3904 	pop	bc
   52EE E1            [10] 3905 	pop	hl
   52EF E6 01         [ 7] 3906 	and	a, #0x01
   52F1 C6 05         [ 7] 3907 	add	a, #0x05
   52F3 77            [ 7] 3908 	ld	(hl),a
   52F4                    3909 00109$:
   52F4 0B            [ 6] 3910 	dec	bc
                           3911 ;src/includes/world.h:163: for(ix=0; ix<NBFARM; ix++)
   52F5 78            [ 4] 3912 	ld	a,b
   52F6 B1            [ 4] 3913 	or	a,c
   52F7 20 8E         [12] 3914 	jr	NZ,00134$
                           3915 ;src/includes/world.h:176: for(ix=0; ix<NBURBAN; ix++)
   52F9 01 14 00      [10] 3916 	ld	bc,#0x0014
   52FC                    3917 00137$:
                           3918 ;src/includes/world.h:178: iy = cpct_rand()*15; // (WIDTH*HEIGHT)/255;
   52FC C5            [11] 3919 	push	bc
   52FD CD 4A 65      [17] 3920 	call	_cpct_getRandom_mxor_u8
   5300 C1            [10] 3921 	pop	bc
   5301 5D            [ 4] 3922 	ld	e,l
   5302 16 00         [ 7] 3923 	ld	d,#0x00
   5304 6B            [ 4] 3924 	ld	l, e
   5305 62            [ 4] 3925 	ld	h, d
   5306 29            [11] 3926 	add	hl, hl
   5307 19            [11] 3927 	add	hl, de
   5308 29            [11] 3928 	add	hl, hl
   5309 19            [11] 3929 	add	hl, de
   530A 29            [11] 3930 	add	hl, hl
   530B 19            [11] 3931 	add	hl, de
   530C DD 75 F7      [19] 3932 	ld	-9 (ix),l
   530F DD 74 F8      [19] 3933 	ld	-8 (ix),h
                           3934 ;src/includes/world.h:180: shift = cpct_rand()%10;
   5312 C5            [11] 3935 	push	bc
   5313 CD 4A 65      [17] 3936 	call	_cpct_getRandom_mxor_u8
   5316 55            [ 4] 3937 	ld	d,l
   5317 3E 0A         [ 7] 3938 	ld	a,#0x0A
   5319 F5            [11] 3939 	push	af
   531A 33            [ 6] 3940 	inc	sp
   531B D5            [11] 3941 	push	de
   531C 33            [ 6] 3942 	inc	sp
   531D CD D3 63      [17] 3943 	call	__moduchar
   5320 F1            [10] 3944 	pop	af
   5321 C1            [10] 3945 	pop	bc
   5322 26 00         [ 7] 3946 	ld	h,#0x00
                           3947 ;src/includes/world.h:181: shift=iy-shift+5;
   5324 DD 7E F7      [19] 3948 	ld	a,-9 (ix)
   5327 95            [ 4] 3949 	sub	a, l
   5328 5F            [ 4] 3950 	ld	e,a
   5329 DD 7E F8      [19] 3951 	ld	a,-8 (ix)
   532C 9C            [ 4] 3952 	sbc	a, h
   532D 57            [ 4] 3953 	ld	d,a
   532E 13            [ 6] 3954 	inc	de
   532F 13            [ 6] 3955 	inc	de
   5330 13            [ 6] 3956 	inc	de
   5331 13            [ 6] 3957 	inc	de
   5332 13            [ 6] 3958 	inc	de
                           3959 ;src/includes/world.h:183: if(shift>0 && shift<WIDTH*HEIGHT)
   5333 AF            [ 4] 3960 	xor	a, a
   5334 BB            [ 4] 3961 	cp	a, e
   5335 9A            [ 4] 3962 	sbc	a, d
   5336 E2 3B 53      [10] 3963 	jp	PO, 00230$
   5339 EE 80         [ 7] 3964 	xor	a, #0x80
   533B                    3965 00230$:
   533B F2 69 53      [10] 3966 	jp	P,00113$
   533E 7A            [ 4] 3967 	ld	a,d
   533F EE 80         [ 7] 3968 	xor	a, #0x80
   5341 D6 8F         [ 7] 3969 	sub	a, #0x8F
   5343 30 24         [12] 3970 	jr	NC,00113$
                           3971 ;src/includes/world.h:184: p_world[shift] = cpct_rand()%3+2;
   5345 21 0C 67      [10] 3972 	ld	hl,#_p_world
   5348 19            [11] 3973 	add	hl,de
   5349 DD 75 F7      [19] 3974 	ld	-9 (ix),l
   534C DD 74 F8      [19] 3975 	ld	-8 (ix),h
   534F C5            [11] 3976 	push	bc
   5350 CD 4A 65      [17] 3977 	call	_cpct_getRandom_mxor_u8
   5353 55            [ 4] 3978 	ld	d,l
   5354 3E 03         [ 7] 3979 	ld	a,#0x03
   5356 F5            [11] 3980 	push	af
   5357 33            [ 6] 3981 	inc	sp
   5358 D5            [11] 3982 	push	de
   5359 33            [ 6] 3983 	inc	sp
   535A CD D3 63      [17] 3984 	call	__moduchar
   535D F1            [10] 3985 	pop	af
   535E 7D            [ 4] 3986 	ld	a,l
   535F C1            [10] 3987 	pop	bc
   5360 C6 02         [ 7] 3988 	add	a, #0x02
   5362 DD 6E F7      [19] 3989 	ld	l,-9 (ix)
   5365 DD 66 F8      [19] 3990 	ld	h,-8 (ix)
   5368 77            [ 7] 3991 	ld	(hl),a
   5369                    3992 00113$:
   5369 0B            [ 6] 3993 	dec	bc
                           3994 ;src/includes/world.h:176: for(ix=0; ix<NBURBAN; ix++)
   536A 78            [ 4] 3995 	ld	a,b
   536B B1            [ 4] 3996 	or	a,c
   536C 20 8E         [12] 3997 	jr	NZ,00137$
                           3998 ;src/includes/world.h:187: for(ix=0; ix<NBURBAN; ix++)
   536E 21 0A 00      [10] 3999 	ld	hl,#0x000A
   5371 39            [11] 4000 	add	hl,sp
   5372 DD 75 F7      [19] 4001 	ld	-9 (ix),l
   5375 DD 74 F8      [19] 4002 	ld	-8 (ix),h
   5378 21 00 00      [10] 4003 	ld	hl,#0x0000
   537B E3            [19] 4004 	ex	(sp), hl
   537C                    4005 00138$:
                           4006 ;src/includes/world.h:189: iy = cpct_rand()*15; // (WIDTH*HEIGHT)/255;
   537C CD 4A 65      [17] 4007 	call	_cpct_getRandom_mxor_u8
   537F 4D            [ 4] 4008 	ld	c,l
   5380 06 00         [ 7] 4009 	ld	b,#0x00
   5382 69            [ 4] 4010 	ld	l, c
   5383 60            [ 4] 4011 	ld	h, b
   5384 29            [11] 4012 	add	hl, hl
   5385 09            [11] 4013 	add	hl, bc
   5386 29            [11] 4014 	add	hl, hl
   5387 09            [11] 4015 	add	hl, bc
   5388 29            [11] 4016 	add	hl, hl
   5389 09            [11] 4017 	add	hl, bc
   538A 5D            [ 4] 4018 	ld	e,l
   538B 54            [ 4] 4019 	ld	d,h
                           4020 ;src/includes/world.h:190: shift = cpct_rand()%10;
   538C D5            [11] 4021 	push	de
   538D CD 4A 65      [17] 4022 	call	_cpct_getRandom_mxor_u8
   5390 45            [ 4] 4023 	ld	b,l
   5391 D1            [10] 4024 	pop	de
   5392 D5            [11] 4025 	push	de
   5393 3E 0A         [ 7] 4026 	ld	a,#0x0A
   5395 F5            [11] 4027 	push	af
   5396 33            [ 6] 4028 	inc	sp
   5397 C5            [11] 4029 	push	bc
   5398 33            [ 6] 4030 	inc	sp
   5399 CD D3 63      [17] 4031 	call	__moduchar
   539C F1            [10] 4032 	pop	af
   539D D1            [10] 4033 	pop	de
   539E 26 00         [ 7] 4034 	ld	h,#0x00
                           4035 ;src/includes/world.h:191: iy-=shift+5;
   53A0 01 05 00      [10] 4036 	ld	bc,#0x0005
   53A3 09            [11] 4037 	add	hl,bc
   53A4 7B            [ 4] 4038 	ld	a,e
   53A5 95            [ 4] 4039 	sub	a, l
   53A6 5F            [ 4] 4040 	ld	e,a
   53A7 7A            [ 4] 4041 	ld	a,d
   53A8 9C            [ 4] 4042 	sbc	a, h
   53A9 57            [ 4] 4043 	ld	d,a
                           4044 ;src/includes/world.h:193: switch(cpct_rand()%6)
   53AA D5            [11] 4045 	push	de
   53AB CD 4A 65      [17] 4046 	call	_cpct_getRandom_mxor_u8
   53AE 45            [ 4] 4047 	ld	b,l
   53AF D1            [10] 4048 	pop	de
   53B0 D5            [11] 4049 	push	de
   53B1 3E 06         [ 7] 4050 	ld	a,#0x06
   53B3 F5            [11] 4051 	push	af
   53B4 33            [ 6] 4052 	inc	sp
   53B5 C5            [11] 4053 	push	bc
   53B6 33            [ 6] 4054 	inc	sp
   53B7 CD D3 63      [17] 4055 	call	__moduchar
   53BA F1            [10] 4056 	pop	af
   53BB DD 75 FE      [19] 4057 	ld	-2 (ix),l
   53BE D1            [10] 4058 	pop	de
   53BF 3E 05         [ 7] 4059 	ld	a,#0x05
   53C1 DD 96 FE      [19] 4060 	sub	a, -2 (ix)
   53C4 38 6C         [12] 4061 	jr	C,00122$
                           4062 ;src/includes/world.h:197: p_cities[1] = 0b01000110; // 01100010;
   53C6 DD 4E F7      [19] 4063 	ld	c,-9 (ix)
   53C9 DD 46 F8      [19] 4064 	ld	b,-8 (ix)
   53CC 03            [ 6] 4065 	inc	bc
                           4066 ;src/includes/world.h:193: switch(cpct_rand()%6)
   53CD D5            [11] 4067 	push	de
   53CE DD 5E FE      [19] 4068 	ld	e,-2 (ix)
   53D1 16 00         [ 7] 4069 	ld	d,#0x00
   53D3 21 DA 53      [10] 4070 	ld	hl,#00231$
   53D6 19            [11] 4071 	add	hl,de
   53D7 19            [11] 4072 	add	hl,de
                           4073 ;src/includes/world.h:195: case 0:
   53D8 D1            [10] 4074 	pop	de
   53D9 E9            [ 4] 4075 	jp	(hl)
   53DA                    4076 00231$:
   53DA 18 0A         [12] 4077 	jr	00116$
   53DC 18 15         [12] 4078 	jr	00117$
   53DE 18 20         [12] 4079 	jr	00118$
   53E0 18 2B         [12] 4080 	jr	00119$
   53E2 18 36         [12] 4081 	jr	00120$
   53E4 18 41         [12] 4082 	jr	00121$
   53E6                    4083 00116$:
                           4084 ;src/includes/world.h:196: p_cities[0] = 0b01110010; // 01001110;
   53E6 DD 6E F7      [19] 4085 	ld	l,-9 (ix)
   53E9 DD 66 F8      [19] 4086 	ld	h,-8 (ix)
   53EC 36 72         [10] 4087 	ld	(hl),#0x72
                           4088 ;src/includes/world.h:197: p_cities[1] = 0b01000110; // 01100010;
   53EE 3E 46         [ 7] 4089 	ld	a,#0x46
   53F0 02            [ 7] 4090 	ld	(bc),a
                           4091 ;src/includes/world.h:198: break;
   53F1 18 3F         [12] 4092 	jr	00122$
                           4093 ;src/includes/world.h:200: case 1:
   53F3                    4094 00117$:
                           4095 ;src/includes/world.h:201: p_cities[0] = 0b01100000; // 00000110;
   53F3 DD 6E F7      [19] 4096 	ld	l,-9 (ix)
   53F6 DD 66 F8      [19] 4097 	ld	h,-8 (ix)
   53F9 36 60         [10] 4098 	ld	(hl),#0x60
                           4099 ;src/includes/world.h:202: p_cities[1] = 0b00000110; // 01100000;
   53FB 3E 06         [ 7] 4100 	ld	a,#0x06
   53FD 02            [ 7] 4101 	ld	(bc),a
                           4102 ;src/includes/world.h:203: break;
   53FE 18 32         [12] 4103 	jr	00122$
                           4104 ;src/includes/world.h:205: case 2:
   5400                    4105 00118$:
                           4106 ;src/includes/world.h:206: p_cities[0] = 0b00010000; // 00001000;
   5400 DD 6E F7      [19] 4107 	ld	l,-9 (ix)
   5403 DD 66 F8      [19] 4108 	ld	h,-8 (ix)
   5406 36 10         [10] 4109 	ld	(hl),#0x10
                           4110 ;src/includes/world.h:207: p_cities[1] = 0b00000110; // 01100000;
   5408 3E 06         [ 7] 4111 	ld	a,#0x06
   540A 02            [ 7] 4112 	ld	(bc),a
                           4113 ;src/includes/world.h:208: break;
   540B 18 25         [12] 4114 	jr	00122$
                           4115 ;src/includes/world.h:210: case 3:
   540D                    4116 00119$:
                           4117 ;src/includes/world.h:211: p_cities[0] = 0b11000000; // 00000011;
   540D DD 6E F7      [19] 4118 	ld	l,-9 (ix)
   5410 DD 66 F8      [19] 4119 	ld	h,-8 (ix)
   5413 36 C0         [10] 4120 	ld	(hl),#0xC0
                           4121 ;src/includes/world.h:212: p_cities[1] = 0b00110001; // 10001100;
   5415 3E 31         [ 7] 4122 	ld	a,#0x31
   5417 02            [ 7] 4123 	ld	(bc),a
                           4124 ;src/includes/world.h:213: break;
   5418 18 18         [12] 4125 	jr	00122$
                           4126 ;src/includes/world.h:215: case 4:
   541A                    4127 00120$:
                           4128 ;src/includes/world.h:216: p_cities[0] = 0b11000100; // 00100011;
   541A DD 6E F7      [19] 4129 	ld	l,-9 (ix)
   541D DD 66 F8      [19] 4130 	ld	h,-8 (ix)
   5420 36 C4         [10] 4131 	ld	(hl),#0xC4
                           4132 ;src/includes/world.h:217: p_cities[1] = 0b00001110; // 01110000;
   5422 3E 0E         [ 7] 4133 	ld	a,#0x0E
   5424 02            [ 7] 4134 	ld	(bc),a
                           4135 ;src/includes/world.h:218: break;
   5425 18 0B         [12] 4136 	jr	00122$
                           4137 ;src/includes/world.h:220: case 5:
   5427                    4138 00121$:
                           4139 ;src/includes/world.h:221: p_cities[0] = 0b01000000; // 00000010;
   5427 DD 6E F7      [19] 4140 	ld	l,-9 (ix)
   542A DD 66 F8      [19] 4141 	ld	h,-8 (ix)
   542D 36 40         [10] 4142 	ld	(hl),#0x40
                           4143 ;src/includes/world.h:222: p_cities[1] = 0b01001110; // 01110010;
   542F 3E 4E         [ 7] 4144 	ld	a,#0x4E
   5431 02            [ 7] 4145 	ld	(bc),a
                           4146 ;src/includes/world.h:224: }
   5432                    4147 00122$:
                           4148 ;src/includes/world.h:226: patternTile(DWELLINGS1, iy, 4, 4, p_cities);
   5432 DD 6E F7      [19] 4149 	ld	l,-9 (ix)
   5435 DD 66 F8      [19] 4150 	ld	h,-8 (ix)
   5438 E5            [11] 4151 	push	hl
   5439 21 04 04      [10] 4152 	ld	hl,#0x0404
   543C E5            [11] 4153 	push	hl
   543D D5            [11] 4154 	push	de
   543E 3E 02         [ 7] 4155 	ld	a,#0x02
   5440 F5            [11] 4156 	push	af
   5441 33            [ 6] 4157 	inc	sp
   5442 CD 93 4F      [17] 4158 	call	_patternTile
   5445 21 07 00      [10] 4159 	ld	hl,#7
   5448 39            [11] 4160 	add	hl,sp
   5449 F9            [ 6] 4161 	ld	sp,hl
                           4162 ;src/includes/world.h:187: for(ix=0; ix<NBURBAN; ix++)
   544A DD 34 E5      [23] 4163 	inc	-27 (ix)
   544D 20 03         [12] 4164 	jr	NZ,00232$
   544F DD 34 E6      [23] 4165 	inc	-26 (ix)
   5452                    4166 00232$:
   5452 DD 7E E5      [19] 4167 	ld	a,-27 (ix)
   5455 D6 14         [ 7] 4168 	sub	a, #0x14
   5457 DD 7E E6      [19] 4169 	ld	a,-26 (ix)
   545A 17            [ 4] 4170 	rla
   545B 3F            [ 4] 4171 	ccf
   545C 1F            [ 4] 4172 	rra
   545D DE 80         [ 7] 4173 	sbc	a, #0x80
   545F DA 7C 53      [10] 4174 	jp	C,00138$
                           4175 ;src/includes/world.h:231: for(ix=0; ix<NBLIVESTOCK; ix++)
   5462 21 13 00      [10] 4176 	ld	hl,#0x0013
   5465 E3            [19] 4177 	ex	(sp), hl
   5466                    4178 00142$:
                           4179 ;src/includes/world.h:233: iy = cpct_rand()*15; // (WIDTH*HEIGHT)/255;
   5466 CD 4A 65      [17] 4180 	call	_cpct_getRandom_mxor_u8
   5469 4D            [ 4] 4181 	ld	c,l
   546A 06 00         [ 7] 4182 	ld	b,#0x00
   546C 69            [ 4] 4183 	ld	l, c
   546D 60            [ 4] 4184 	ld	h, b
   546E 29            [11] 4185 	add	hl, hl
   546F 09            [11] 4186 	add	hl, bc
   5470 29            [11] 4187 	add	hl, hl
   5471 09            [11] 4188 	add	hl, bc
   5472 29            [11] 4189 	add	hl, hl
   5473 09            [11] 4190 	add	hl, bc
   5474 5D            [ 4] 4191 	ld	e,l
   5475 54            [ 4] 4192 	ld	d,h
                           4193 ;src/includes/world.h:235: shift = cpct_rand()%10;
   5476 D5            [11] 4194 	push	de
   5477 CD 4A 65      [17] 4195 	call	_cpct_getRandom_mxor_u8
   547A 45            [ 4] 4196 	ld	b,l
   547B D1            [10] 4197 	pop	de
   547C D5            [11] 4198 	push	de
   547D 3E 0A         [ 7] 4199 	ld	a,#0x0A
   547F F5            [11] 4200 	push	af
   5480 33            [ 6] 4201 	inc	sp
   5481 C5            [11] 4202 	push	bc
   5482 33            [ 6] 4203 	inc	sp
   5483 CD D3 63      [17] 4204 	call	__moduchar
   5486 F1            [10] 4205 	pop	af
   5487 D1            [10] 4206 	pop	de
   5488 26 00         [ 7] 4207 	ld	h,#0x00
                           4208 ;src/includes/world.h:236: shift=iy-shift+5;
   548A 7B            [ 4] 4209 	ld	a,e
   548B 95            [ 4] 4210 	sub	a, l
   548C 6F            [ 4] 4211 	ld	l,a
   548D 7A            [ 4] 4212 	ld	a,d
   548E 9C            [ 4] 4213 	sbc	a, h
   548F 67            [ 4] 4214 	ld	h,a
   5490 01 05 00      [10] 4215 	ld	bc,#0x0005
   5493 09            [11] 4216 	add	hl,bc
                           4217 ;src/includes/world.h:238: if(shift>0 && shift<WIDTH*HEIGHT)
   5494 AF            [ 4] 4218 	xor	a, a
   5495 BD            [ 4] 4219 	cp	a, l
   5496 9C            [ 4] 4220 	sbc	a, h
   5497 E2 9C 54      [10] 4221 	jp	PO, 00233$
   549A EE 80         [ 7] 4222 	xor	a, #0x80
   549C                    4223 00233$:
   549C F2 AC 54      [10] 4224 	jp	P,00125$
   549F 7C            [ 4] 4225 	ld	a,h
   54A0 EE 80         [ 7] 4226 	xor	a, #0x80
   54A2 D6 8F         [ 7] 4227 	sub	a, #0x8F
   54A4 30 06         [12] 4228 	jr	NC,00125$
                           4229 ;src/includes/world.h:239: p_world[shift] = LIVESTOCK;
   54A6 11 0C 67      [10] 4230 	ld	de,#_p_world
   54A9 19            [11] 4231 	add	hl,de
   54AA 36 09         [10] 4232 	ld	(hl),#0x09
   54AC                    4233 00125$:
   54AC E1            [10] 4234 	pop	hl
   54AD E5            [11] 4235 	push	hl
   54AE 2B            [ 6] 4236 	dec	hl
   54AF E3            [19] 4237 	ex	(sp), hl
                           4238 ;src/includes/world.h:231: for(ix=0; ix<NBLIVESTOCK; ix++)
   54B0 DD 7E E6      [19] 4239 	ld	a,-26 (ix)
   54B3 DD B6 E5      [19] 4240 	or	a,-27 (ix)
   54B6 20 AE         [12] 4241 	jr	NZ,00142$
   54B8 DD F9         [10] 4242 	ld	sp, ix
   54BA DD E1         [14] 4243 	pop	ix
   54BC C9            [10] 4244 	ret
                           4245 ;src/includes/world.h:243: void drawTile(u8 x_, u8 y_, u8 ix, u8 iy)
                           4246 ;	---------------------------------
                           4247 ; Function drawTile
                           4248 ; ---------------------------------
   54BD                    4249 _drawTile::
   54BD DD E5         [15] 4250 	push	ix
   54BF DD 21 00 00   [14] 4251 	ld	ix,#0
   54C3 DD 39         [15] 4252 	add	ix,sp
                           4253 ;src/includes/world.h:246: int adress = (y_+iy)*WIDTH+x_+ix;
   54C5 DD 6E 05      [19] 4254 	ld	l,5 (ix)
   54C8 26 00         [ 7] 4255 	ld	h,#0x00
   54CA DD 5E 07      [19] 4256 	ld	e,7 (ix)
   54CD 16 00         [ 7] 4257 	ld	d,#0x00
   54CF 19            [11] 4258 	add	hl,de
   54D0 4D            [ 4] 4259 	ld	c, l
   54D1 44            [ 4] 4260 	ld	b, h
   54D2 29            [11] 4261 	add	hl, hl
   54D3 29            [11] 4262 	add	hl, hl
   54D4 09            [11] 4263 	add	hl, bc
   54D5 29            [11] 4264 	add	hl, hl
   54D6 29            [11] 4265 	add	hl, hl
   54D7 29            [11] 4266 	add	hl, hl
   54D8 29            [11] 4267 	add	hl, hl
   54D9 DD 5E 04      [19] 4268 	ld	e,4 (ix)
   54DC 16 00         [ 7] 4269 	ld	d,#0x00
   54DE 19            [11] 4270 	add	hl,de
   54DF DD 5E 06      [19] 4271 	ld	e,6 (ix)
   54E2 16 00         [ 7] 4272 	ld	d,#0x00
   54E4 19            [11] 4273 	add	hl,de
   54E5 5D            [ 4] 4274 	ld	e, l
   54E6 54            [ 4] 4275 	ld	d, h
                           4276 ;src/includes/world.h:248: p_video = cpct_getScreenPtr(SCR_VMEM, ix*TILESIZE_W, iy*TILESIZE_H);
   54E7 DD 7E 07      [19] 4277 	ld	a,7 (ix)
   54EA 07            [ 4] 4278 	rlca
   54EB 07            [ 4] 4279 	rlca
   54EC 07            [ 4] 4280 	rlca
   54ED 07            [ 4] 4281 	rlca
   54EE E6 F0         [ 7] 4282 	and	a,#0xF0
   54F0 67            [ 4] 4283 	ld	h,a
   54F1 DD 7E 06      [19] 4284 	ld	a,6 (ix)
   54F4 87            [ 4] 4285 	add	a, a
   54F5 87            [ 4] 4286 	add	a, a
   54F6 D5            [11] 4287 	push	de
   54F7 E5            [11] 4288 	push	hl
   54F8 33            [ 6] 4289 	inc	sp
   54F9 F5            [11] 4290 	push	af
   54FA 33            [ 6] 4291 	inc	sp
   54FB 21 00 C0      [10] 4292 	ld	hl,#0xC000
   54FE E5            [11] 4293 	push	hl
   54FF CD 38 66      [17] 4294 	call	_cpct_getScreenPtr
   5502 D1            [10] 4295 	pop	de
   5503 4D            [ 4] 4296 	ld	c, l
   5504 44            [ 4] 4297 	ld	b, h
                           4298 ;src/includes/world.h:250: switch(p_world[adress])
   5505 21 0C 67      [10] 4299 	ld	hl,#_p_world
   5508 19            [11] 4300 	add	hl,de
   5509 5E            [ 7] 4301 	ld	e,(hl)
   550A 3E 19         [ 7] 4302 	ld	a,#0x19
   550C 93            [ 4] 4303 	sub	a, e
   550D DA E2 56      [10] 4304 	jp	C,00128$
   5510 16 00         [ 7] 4305 	ld	d,#0x00
   5512 21 19 55      [10] 4306 	ld	hl,#00134$
   5515 19            [11] 4307 	add	hl,de
   5516 19            [11] 4308 	add	hl,de
   5517 19            [11] 4309 	add	hl,de
   5518 E9            [ 4] 4310 	jp	(hl)
   5519                    4311 00134$:
   5519 C3 67 55      [10] 4312 	jp	00101$
   551C C3 76 55      [10] 4313 	jp	00102$
   551F C3 85 55      [10] 4314 	jp	00103$
   5522 C3 94 55      [10] 4315 	jp	00104$
   5525 C3 A3 55      [10] 4316 	jp	00105$
   5528 C3 B2 55      [10] 4317 	jp	00106$
   552B C3 C1 55      [10] 4318 	jp	00107$
   552E C3 D0 55      [10] 4319 	jp	00108$
   5531 C3 DF 55      [10] 4320 	jp	00109$
   5534 C3 EE 55      [10] 4321 	jp	00110$
   5537 C3 FD 55      [10] 4322 	jp	00111$
   553A C3 0C 56      [10] 4323 	jp	00112$
   553D C3 1B 56      [10] 4324 	jp	00113$
   5540 C3 2A 56      [10] 4325 	jp	00114$
   5543 C3 39 56      [10] 4326 	jp	00115$
   5546 C3 48 56      [10] 4327 	jp	00116$
   5549 C3 57 56      [10] 4328 	jp	00117$
   554C C3 66 56      [10] 4329 	jp	00118$
   554F C3 74 56      [10] 4330 	jp	00119$
   5552 C3 82 56      [10] 4331 	jp	00120$
   5555 C3 90 56      [10] 4332 	jp	00121$
   5558 C3 9E 56      [10] 4333 	jp	00122$
   555B C3 AC 56      [10] 4334 	jp	00123$
   555E C3 BA 56      [10] 4335 	jp	00124$
   5561 C3 C8 56      [10] 4336 	jp	00125$
   5564 C3 D6 56      [10] 4337 	jp	00126$
                           4338 ;src/includes/world.h:252: case GRASS1:
   5567                    4339 00101$:
                           4340 ;src/includes/world.h:253: cpct_drawSprite(grass1, p_video, TILESIZE_W, TILESIZE_H);
   5567 11 29 40      [10] 4341 	ld	de,#_grass1
   556A 21 04 10      [10] 4342 	ld	hl,#0x1004
   556D E5            [11] 4343 	push	hl
   556E C5            [11] 4344 	push	bc
   556F D5            [11] 4345 	push	de
   5570 CD 2E 63      [17] 4346 	call	_cpct_drawSprite
                           4347 ;src/includes/world.h:254: break;
   5573 C3 E2 56      [10] 4348 	jp	00128$
                           4349 ;src/includes/world.h:255: case GRASS2:
   5576                    4350 00102$:
                           4351 ;src/includes/world.h:256: cpct_drawSprite(grass2, p_video, TILESIZE_W, TILESIZE_H);
   5576 11 69 40      [10] 4352 	ld	de,#_grass2
   5579 21 04 10      [10] 4353 	ld	hl,#0x1004
   557C E5            [11] 4354 	push	hl
   557D C5            [11] 4355 	push	bc
   557E D5            [11] 4356 	push	de
   557F CD 2E 63      [17] 4357 	call	_cpct_drawSprite
                           4358 ;src/includes/world.h:257: break;
   5582 C3 E2 56      [10] 4359 	jp	00128$
                           4360 ;src/includes/world.h:258: case DWELLINGS1:
   5585                    4361 00103$:
                           4362 ;src/includes/world.h:259: cpct_drawSprite(dwellings1, p_video, TILESIZE_W, TILESIZE_H);
   5585 11 E9 40      [10] 4363 	ld	de,#_dwellings1
   5588 21 04 10      [10] 4364 	ld	hl,#0x1004
   558B E5            [11] 4365 	push	hl
   558C C5            [11] 4366 	push	bc
   558D D5            [11] 4367 	push	de
   558E CD 2E 63      [17] 4368 	call	_cpct_drawSprite
                           4369 ;src/includes/world.h:260: break;
   5591 C3 E2 56      [10] 4370 	jp	00128$
                           4371 ;src/includes/world.h:261: case DWELLINGS2:
   5594                    4372 00104$:
                           4373 ;src/includes/world.h:262: cpct_drawSprite(dwellings2, p_video, TILESIZE_W, TILESIZE_H);
   5594 11 29 41      [10] 4374 	ld	de,#_dwellings2
   5597 21 04 10      [10] 4375 	ld	hl,#0x1004
   559A E5            [11] 4376 	push	hl
   559B C5            [11] 4377 	push	bc
   559C D5            [11] 4378 	push	de
   559D CD 2E 63      [17] 4379 	call	_cpct_drawSprite
                           4380 ;src/includes/world.h:263: break;
   55A0 C3 E2 56      [10] 4381 	jp	00128$
                           4382 ;src/includes/world.h:264: case DWELLINGS3:
   55A3                    4383 00105$:
                           4384 ;src/includes/world.h:265: cpct_drawSprite(dwellings3, p_video, TILESIZE_W, TILESIZE_H);
   55A3 11 69 41      [10] 4385 	ld	de,#_dwellings3
   55A6 21 04 10      [10] 4386 	ld	hl,#0x1004
   55A9 E5            [11] 4387 	push	hl
   55AA C5            [11] 4388 	push	bc
   55AB D5            [11] 4389 	push	de
   55AC CD 2E 63      [17] 4390 	call	_cpct_drawSprite
                           4391 ;src/includes/world.h:266: break;
   55AF C3 E2 56      [10] 4392 	jp	00128$
                           4393 ;src/includes/world.h:267: case FARM1:
   55B2                    4394 00106$:
                           4395 ;src/includes/world.h:268: cpct_drawSprite(farm1, p_video, TILESIZE_W, TILESIZE_H);
   55B2 11 E9 41      [10] 4396 	ld	de,#_farm1
   55B5 21 04 10      [10] 4397 	ld	hl,#0x1004
   55B8 E5            [11] 4398 	push	hl
   55B9 C5            [11] 4399 	push	bc
   55BA D5            [11] 4400 	push	de
   55BB CD 2E 63      [17] 4401 	call	_cpct_drawSprite
                           4402 ;src/includes/world.h:269: break;
   55BE C3 E2 56      [10] 4403 	jp	00128$
                           4404 ;src/includes/world.h:270: case FARM2:
   55C1                    4405 00107$:
                           4406 ;src/includes/world.h:271: cpct_drawSprite(farm2, p_video, TILESIZE_W, TILESIZE_H);
   55C1 11 29 42      [10] 4407 	ld	de,#_farm2
   55C4 21 04 10      [10] 4408 	ld	hl,#0x1004
   55C7 E5            [11] 4409 	push	hl
   55C8 C5            [11] 4410 	push	bc
   55C9 D5            [11] 4411 	push	de
   55CA CD 2E 63      [17] 4412 	call	_cpct_drawSprite
                           4413 ;src/includes/world.h:272: break;
   55CD C3 E2 56      [10] 4414 	jp	00128$
                           4415 ;src/includes/world.h:273: case WATER:
   55D0                    4416 00108$:
                           4417 ;src/includes/world.h:274: cpct_drawSprite(water, p_video, TILESIZE_W, TILESIZE_H);
   55D0 11 A9 41      [10] 4418 	ld	de,#_water
   55D3 21 04 10      [10] 4419 	ld	hl,#0x1004
   55D6 E5            [11] 4420 	push	hl
   55D7 C5            [11] 4421 	push	bc
   55D8 D5            [11] 4422 	push	de
   55D9 CD 2E 63      [17] 4423 	call	_cpct_drawSprite
                           4424 ;src/includes/world.h:275: break;
   55DC C3 E2 56      [10] 4425 	jp	00128$
                           4426 ;src/includes/world.h:276: case FOREST:
   55DF                    4427 00109$:
                           4428 ;src/includes/world.h:277: cpct_drawSprite(forest, p_video, TILESIZE_W, TILESIZE_H);
   55DF 11 A9 40      [10] 4429 	ld	de,#_forest
   55E2 21 04 10      [10] 4430 	ld	hl,#0x1004
   55E5 E5            [11] 4431 	push	hl
   55E6 C5            [11] 4432 	push	bc
   55E7 D5            [11] 4433 	push	de
   55E8 CD 2E 63      [17] 4434 	call	_cpct_drawSprite
                           4435 ;src/includes/world.h:278: break;
   55EB C3 E2 56      [10] 4436 	jp	00128$
                           4437 ;src/includes/world.h:279: case LIVESTOCK:
   55EE                    4438 00110$:
                           4439 ;src/includes/world.h:280: cpct_drawSprite(livestock, p_video, TILESIZE_W, TILESIZE_H);
   55EE 11 69 42      [10] 4440 	ld	de,#_livestock
   55F1 21 04 10      [10] 4441 	ld	hl,#0x1004
   55F4 E5            [11] 4442 	push	hl
   55F5 C5            [11] 4443 	push	bc
   55F6 D5            [11] 4444 	push	de
   55F7 CD 2E 63      [17] 4445 	call	_cpct_drawSprite
                           4446 ;src/includes/world.h:281: break;
   55FA C3 E2 56      [10] 4447 	jp	00128$
                           4448 ;src/includes/world.h:282: case SSNS:
   55FD                    4449 00111$:
                           4450 ;src/includes/world.h:283: cpct_drawSprite(station_small_ns, p_video, TILESIZE_W, TILESIZE_H);
   55FD 11 A9 42      [10] 4451 	ld	de,#_station_small_ns
   5600 21 04 10      [10] 4452 	ld	hl,#0x1004
   5603 E5            [11] 4453 	push	hl
   5604 C5            [11] 4454 	push	bc
   5605 D5            [11] 4455 	push	de
   5606 CD 2E 63      [17] 4456 	call	_cpct_drawSprite
                           4457 ;src/includes/world.h:284: break;
   5609 C3 E2 56      [10] 4458 	jp	00128$
                           4459 ;src/includes/world.h:285: case SSEW:
   560C                    4460 00112$:
                           4461 ;src/includes/world.h:286: cpct_drawSprite(station_small_ew, p_video, TILESIZE_W, TILESIZE_H);
   560C 11 E9 42      [10] 4462 	ld	de,#_station_small_ew
   560F 21 04 10      [10] 4463 	ld	hl,#0x1004
   5612 E5            [11] 4464 	push	hl
   5613 C5            [11] 4465 	push	bc
   5614 D5            [11] 4466 	push	de
   5615 CD 2E 63      [17] 4467 	call	_cpct_drawSprite
                           4468 ;src/includes/world.h:287: break;
   5618 C3 E2 56      [10] 4469 	jp	00128$
                           4470 ;src/includes/world.h:288: case SMNS:
   561B                    4471 00113$:
                           4472 ;src/includes/world.h:289: cpct_drawSprite(station_medium_ns, p_video, TILESIZE_W, TILESIZE_H);
   561B 11 29 43      [10] 4473 	ld	de,#_station_medium_ns
   561E 21 04 10      [10] 4474 	ld	hl,#0x1004
   5621 E5            [11] 4475 	push	hl
   5622 C5            [11] 4476 	push	bc
   5623 D5            [11] 4477 	push	de
   5624 CD 2E 63      [17] 4478 	call	_cpct_drawSprite
                           4479 ;src/includes/world.h:290: break;
   5627 C3 E2 56      [10] 4480 	jp	00128$
                           4481 ;src/includes/world.h:291: case SMEW:
   562A                    4482 00114$:
                           4483 ;src/includes/world.h:292: cpct_drawSprite(station_medium_ew, p_video, TILESIZE_W, TILESIZE_H);
   562A 11 69 43      [10] 4484 	ld	de,#_station_medium_ew
   562D 21 04 10      [10] 4485 	ld	hl,#0x1004
   5630 E5            [11] 4486 	push	hl
   5631 C5            [11] 4487 	push	bc
   5632 D5            [11] 4488 	push	de
   5633 CD 2E 63      [17] 4489 	call	_cpct_drawSprite
                           4490 ;src/includes/world.h:293: break;
   5636 C3 E2 56      [10] 4491 	jp	00128$
                           4492 ;src/includes/world.h:294: case SLNS:
   5639                    4493 00115$:
                           4494 ;src/includes/world.h:295: cpct_drawSprite(station_large_ns, p_video, TILESIZE_W, TILESIZE_H);
   5639 11 A9 43      [10] 4495 	ld	de,#_station_large_ns
   563C 21 04 10      [10] 4496 	ld	hl,#0x1004
   563F E5            [11] 4497 	push	hl
   5640 C5            [11] 4498 	push	bc
   5641 D5            [11] 4499 	push	de
   5642 CD 2E 63      [17] 4500 	call	_cpct_drawSprite
                           4501 ;src/includes/world.h:296: break;
   5645 C3 E2 56      [10] 4502 	jp	00128$
                           4503 ;src/includes/world.h:297: case SLEW:
   5648                    4504 00116$:
                           4505 ;src/includes/world.h:298: cpct_drawSprite(station_large_ew, p_video, TILESIZE_W, TILESIZE_H);
   5648 11 E9 43      [10] 4506 	ld	de,#_station_large_ew
   564B 21 04 10      [10] 4507 	ld	hl,#0x1004
   564E E5            [11] 4508 	push	hl
   564F C5            [11] 4509 	push	bc
   5650 D5            [11] 4510 	push	de
   5651 CD 2E 63      [17] 4511 	call	_cpct_drawSprite
                           4512 ;src/includes/world.h:299: break;
   5654 C3 E2 56      [10] 4513 	jp	00128$
                           4514 ;src/includes/world.h:300: case REW:
   5657                    4515 00117$:
                           4516 ;src/includes/world.h:301: cpct_drawSprite(rail_ew, p_video, TILESIZE_W, TILESIZE_H);	
   5657 11 29 44      [10] 4517 	ld	de,#_rail_ew
   565A 21 04 10      [10] 4518 	ld	hl,#0x1004
   565D E5            [11] 4519 	push	hl
   565E C5            [11] 4520 	push	bc
   565F D5            [11] 4521 	push	de
   5660 CD 2E 63      [17] 4522 	call	_cpct_drawSprite
                           4523 ;src/includes/world.h:302: break;
   5663 C3 E2 56      [10] 4524 	jp	00128$
                           4525 ;src/includes/world.h:303: case RNS:
   5666                    4526 00118$:
                           4527 ;src/includes/world.h:304: cpct_drawSprite(rail_ns, p_video, TILESIZE_W, TILESIZE_H);	
   5666 11 69 44      [10] 4528 	ld	de,#_rail_ns
   5669 21 04 10      [10] 4529 	ld	hl,#0x1004
   566C E5            [11] 4530 	push	hl
   566D C5            [11] 4531 	push	bc
   566E D5            [11] 4532 	push	de
   566F CD 2E 63      [17] 4533 	call	_cpct_drawSprite
                           4534 ;src/includes/world.h:305: break;
   5672 18 6E         [12] 4535 	jr	00128$
                           4536 ;src/includes/world.h:306: case REN:
   5674                    4537 00119$:
                           4538 ;src/includes/world.h:307: cpct_drawSprite(rail_en, p_video, TILESIZE_W, TILESIZE_H);	
   5674 11 A9 44      [10] 4539 	ld	de,#_rail_en
   5677 21 04 10      [10] 4540 	ld	hl,#0x1004
   567A E5            [11] 4541 	push	hl
   567B C5            [11] 4542 	push	bc
   567C D5            [11] 4543 	push	de
   567D CD 2E 63      [17] 4544 	call	_cpct_drawSprite
                           4545 ;src/includes/world.h:308: break;
   5680 18 60         [12] 4546 	jr	00128$
                           4547 ;src/includes/world.h:309: case RES:
   5682                    4548 00120$:
                           4549 ;src/includes/world.h:310: cpct_drawSprite(rail_es, p_video, TILESIZE_W, TILESIZE_H);	
   5682 11 E9 44      [10] 4550 	ld	de,#_rail_es
   5685 21 04 10      [10] 4551 	ld	hl,#0x1004
   5688 E5            [11] 4552 	push	hl
   5689 C5            [11] 4553 	push	bc
   568A D5            [11] 4554 	push	de
   568B CD 2E 63      [17] 4555 	call	_cpct_drawSprite
                           4556 ;src/includes/world.h:311: break;
   568E 18 52         [12] 4557 	jr	00128$
                           4558 ;src/includes/world.h:312: case RWN:
   5690                    4559 00121$:
                           4560 ;src/includes/world.h:313: cpct_drawSprite(rail_wn, p_video, TILESIZE_W, TILESIZE_H);	
   5690 11 29 45      [10] 4561 	ld	de,#_rail_wn
   5693 21 04 10      [10] 4562 	ld	hl,#0x1004
   5696 E5            [11] 4563 	push	hl
   5697 C5            [11] 4564 	push	bc
   5698 D5            [11] 4565 	push	de
   5699 CD 2E 63      [17] 4566 	call	_cpct_drawSprite
                           4567 ;src/includes/world.h:314: break;
   569C 18 44         [12] 4568 	jr	00128$
                           4569 ;src/includes/world.h:315: case RWS:
   569E                    4570 00122$:
                           4571 ;src/includes/world.h:316: cpct_drawSprite(rail_ws, p_video, TILESIZE_W, TILESIZE_H);	
   569E 11 69 45      [10] 4572 	ld	de,#_rail_ws
   56A1 21 04 10      [10] 4573 	ld	hl,#0x1004
   56A4 E5            [11] 4574 	push	hl
   56A5 C5            [11] 4575 	push	bc
   56A6 D5            [11] 4576 	push	de
   56A7 CD 2E 63      [17] 4577 	call	_cpct_drawSprite
                           4578 ;src/includes/world.h:317: break;
   56AA 18 36         [12] 4579 	jr	00128$
                           4580 ;src/includes/world.h:318: case REWN:
   56AC                    4581 00123$:
                           4582 ;src/includes/world.h:319: cpct_drawSprite(rail_ew_n, p_video, TILESIZE_W, TILESIZE_H);	
   56AC 11 A9 45      [10] 4583 	ld	de,#_rail_ew_n
   56AF 21 04 10      [10] 4584 	ld	hl,#0x1004
   56B2 E5            [11] 4585 	push	hl
   56B3 C5            [11] 4586 	push	bc
   56B4 D5            [11] 4587 	push	de
   56B5 CD 2E 63      [17] 4588 	call	_cpct_drawSprite
                           4589 ;src/includes/world.h:320: break;
   56B8 18 28         [12] 4590 	jr	00128$
                           4591 ;src/includes/world.h:321: case REWS:
   56BA                    4592 00124$:
                           4593 ;src/includes/world.h:322: cpct_drawSprite(rail_ew_s, p_video, TILESIZE_W, TILESIZE_H);	
   56BA 11 E9 45      [10] 4594 	ld	de,#_rail_ew_s
   56BD 21 04 10      [10] 4595 	ld	hl,#0x1004
   56C0 E5            [11] 4596 	push	hl
   56C1 C5            [11] 4597 	push	bc
   56C2 D5            [11] 4598 	push	de
   56C3 CD 2E 63      [17] 4599 	call	_cpct_drawSprite
                           4600 ;src/includes/world.h:323: break;
   56C6 18 1A         [12] 4601 	jr	00128$
                           4602 ;src/includes/world.h:324: case RNSE:
   56C8                    4603 00125$:
                           4604 ;src/includes/world.h:325: cpct_drawSprite(rail_ns_e, p_video, TILESIZE_W, TILESIZE_H);	
   56C8 11 69 46      [10] 4605 	ld	de,#_rail_ns_e
   56CB 21 04 10      [10] 4606 	ld	hl,#0x1004
   56CE E5            [11] 4607 	push	hl
   56CF C5            [11] 4608 	push	bc
   56D0 D5            [11] 4609 	push	de
   56D1 CD 2E 63      [17] 4610 	call	_cpct_drawSprite
                           4611 ;src/includes/world.h:326: break;
   56D4 18 0C         [12] 4612 	jr	00128$
                           4613 ;src/includes/world.h:327: case RNSW:
   56D6                    4614 00126$:
                           4615 ;src/includes/world.h:328: cpct_drawSprite(rail_ns_w, p_video, TILESIZE_W, TILESIZE_H);
   56D6 11 29 46      [10] 4616 	ld	de,#_rail_ns_w
   56D9 21 04 10      [10] 4617 	ld	hl,#0x1004
   56DC E5            [11] 4618 	push	hl
   56DD C5            [11] 4619 	push	bc
   56DE D5            [11] 4620 	push	de
   56DF CD 2E 63      [17] 4621 	call	_cpct_drawSprite
                           4622 ;src/includes/world.h:330: }
   56E2                    4623 00128$:
   56E2 DD E1         [14] 4624 	pop	ix
   56E4 C9            [10] 4625 	ret
                           4626 ;src/includes/world.h:333: void drawScrolls(u8 x_, u8 y_)
                           4627 ;	---------------------------------
                           4628 ; Function drawScrolls
                           4629 ; ---------------------------------
   56E5                    4630 _drawScrolls::
   56E5 DD E5         [15] 4631 	push	ix
   56E7 DD 21 00 00   [14] 4632 	ld	ix,#0
   56EB DD 39         [15] 4633 	add	ix,sp
   56ED 3B            [ 6] 4634 	dec	sp
                           4635 ;src/includes/world.h:339: scrollx = x_* (WIDTH-TILESIZE_W)/(WIDTH-NBTILE_W);
   56EE DD 4E 04      [19] 4636 	ld	c,4 (ix)
   56F1 06 00         [ 7] 4637 	ld	b,#0x00
   56F3 69            [ 4] 4638 	ld	l, c
   56F4 60            [ 4] 4639 	ld	h, b
   56F5 29            [11] 4640 	add	hl, hl
   56F6 29            [11] 4641 	add	hl, hl
   56F7 29            [11] 4642 	add	hl, hl
   56F8 09            [11] 4643 	add	hl, bc
   56F9 29            [11] 4644 	add	hl, hl
   56FA 09            [11] 4645 	add	hl, bc
   56FB 29            [11] 4646 	add	hl, hl
   56FC 29            [11] 4647 	add	hl, hl
   56FD 01 3C 00      [10] 4648 	ld	bc,#0x003C
   5700 C5            [11] 4649 	push	bc
   5701 E5            [11] 4650 	push	hl
   5702 CD 89 66      [17] 4651 	call	__divsint
   5705 F1            [10] 4652 	pop	af
   5706 F1            [10] 4653 	pop	af
   5707 55            [ 4] 4654 	ld	d,l
                           4655 ;src/includes/world.h:340: scrolly = y_* (HEIGHT*TILESIZE_W-TILESIZE_H)/(HEIGHT-NBTILE_H);
   5708 DD 4E 05      [19] 4656 	ld	c,5 (ix)
   570B 06 00         [ 7] 4657 	ld	b,#0x00
   570D 69            [ 4] 4658 	ld	l, c
   570E 60            [ 4] 4659 	ld	h, b
   570F 29            [11] 4660 	add	hl, hl
   5710 29            [11] 4661 	add	hl, hl
   5711 09            [11] 4662 	add	hl, bc
   5712 29            [11] 4663 	add	hl, hl
   5713 09            [11] 4664 	add	hl, bc
   5714 29            [11] 4665 	add	hl, hl
   5715 29            [11] 4666 	add	hl, hl
   5716 29            [11] 4667 	add	hl, hl
   5717 29            [11] 4668 	add	hl, hl
   5718 D5            [11] 4669 	push	de
   5719 01 24 00      [10] 4670 	ld	bc,#0x0024
   571C C5            [11] 4671 	push	bc
   571D E5            [11] 4672 	push	hl
   571E CD 89 66      [17] 4673 	call	__divsint
   5721 F1            [10] 4674 	pop	af
   5722 F1            [10] 4675 	pop	af
   5723 D1            [10] 4676 	pop	de
   5724 DD 75 FF      [19] 4677 	ld	-1 (ix),l
                           4678 ;src/includes/world.h:342: p_video = cpct_getScreenPtr(SCR_VMEM, scrollx, 0);
   5727 AF            [ 4] 4679 	xor	a, a
   5728 F5            [11] 4680 	push	af
   5729 33            [ 6] 4681 	inc	sp
   572A D5            [11] 4682 	push	de
   572B 33            [ 6] 4683 	inc	sp
   572C 21 00 C0      [10] 4684 	ld	hl,#0xC000
   572F E5            [11] 4685 	push	hl
   5730 CD 38 66      [17] 4686 	call	_cpct_getScreenPtr
                           4687 ;src/includes/world.h:343: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 4, TILESIZE_W);
   5733 E5            [11] 4688 	push	hl
   5734 21 00 00      [10] 4689 	ld	hl,#0x0000
   5737 E5            [11] 4690 	push	hl
   5738 2E 00         [ 7] 4691 	ld	l, #0x00
   573A E5            [11] 4692 	push	hl
   573B CD 12 65      [17] 4693 	call	_cpct_px2byteM1
   573E F1            [10] 4694 	pop	af
   573F F1            [10] 4695 	pop	af
   5740 45            [ 4] 4696 	ld	b,l
   5741 D1            [10] 4697 	pop	de
   5742 21 04 04      [10] 4698 	ld	hl,#0x0404
   5745 E5            [11] 4699 	push	hl
   5746 C5            [11] 4700 	push	bc
   5747 33            [ 6] 4701 	inc	sp
   5748 D5            [11] 4702 	push	de
   5749 CD 7F 65      [17] 4703 	call	_cpct_drawSolidBox
   574C F1            [10] 4704 	pop	af
   574D F1            [10] 4705 	pop	af
   574E 33            [ 6] 4706 	inc	sp
                           4707 ;src/includes/world.h:345: p_video = cpct_getScreenPtr(SCR_VMEM, 0, scrolly);
   574F DD 7E FF      [19] 4708 	ld	a,-1 (ix)
   5752 F5            [11] 4709 	push	af
   5753 33            [ 6] 4710 	inc	sp
   5754 AF            [ 4] 4711 	xor	a, a
   5755 F5            [11] 4712 	push	af
   5756 33            [ 6] 4713 	inc	sp
   5757 21 00 C0      [10] 4714 	ld	hl,#0xC000
   575A E5            [11] 4715 	push	hl
   575B CD 38 66      [17] 4716 	call	_cpct_getScreenPtr
                           4717 ;src/includes/world.h:346: cpct_drawSolidBox(p_video, cpct_px2byteM1(0,0,0,0), 1, TILESIZE_H);
   575E E5            [11] 4718 	push	hl
   575F 21 00 00      [10] 4719 	ld	hl,#0x0000
   5762 E5            [11] 4720 	push	hl
   5763 2E 00         [ 7] 4721 	ld	l, #0x00
   5765 E5            [11] 4722 	push	hl
   5766 CD 12 65      [17] 4723 	call	_cpct_px2byteM1
   5769 F1            [10] 4724 	pop	af
   576A F1            [10] 4725 	pop	af
   576B 45            [ 4] 4726 	ld	b,l
   576C D1            [10] 4727 	pop	de
   576D 21 01 10      [10] 4728 	ld	hl,#0x1001
   5770 E5            [11] 4729 	push	hl
   5771 C5            [11] 4730 	push	bc
   5772 33            [ 6] 4731 	inc	sp
   5773 D5            [11] 4732 	push	de
   5774 CD 7F 65      [17] 4733 	call	_cpct_drawSolidBox
   5777 F1            [10] 4734 	pop	af
   5778 F1            [10] 4735 	pop	af
   5779 33            [ 6] 4736 	inc	sp
   577A 33            [ 6] 4737 	inc	sp
   577B DD E1         [14] 4738 	pop	ix
   577D C9            [10] 4739 	ret
                           4740 ;src/includes/world.h:349: void drawWorld(u8 x_, u8 y_)
                           4741 ;	---------------------------------
                           4742 ; Function drawWorld
                           4743 ; ---------------------------------
   577E                    4744 _drawWorld::
                           4745 ;src/includes/world.h:354: for(iy=0; iy<NBTILE_H;iy++)
   577E 16 00         [ 7] 4746 	ld	d,#0x00
                           4747 ;src/includes/world.h:356: for(ix=0; ix<NBTILE_W;ix++)
   5780                    4748 00109$:
   5780 1E 00         [ 7] 4749 	ld	e,#0x00
   5782                    4750 00103$:
                           4751 ;src/includes/world.h:358: drawTile(x_, y_, ix, iy);
   5782 D5            [11] 4752 	push	de
   5783 D5            [11] 4753 	push	de
   5784 21 07 00      [10] 4754 	ld	hl, #7+0
   5787 39            [11] 4755 	add	hl, sp
   5788 7E            [ 7] 4756 	ld	a, (hl)
   5789 F5            [11] 4757 	push	af
   578A 33            [ 6] 4758 	inc	sp
   578B 21 07 00      [10] 4759 	ld	hl, #7+0
   578E 39            [11] 4760 	add	hl, sp
   578F 7E            [ 7] 4761 	ld	a, (hl)
   5790 F5            [11] 4762 	push	af
   5791 33            [ 6] 4763 	inc	sp
   5792 CD BD 54      [17] 4764 	call	_drawTile
   5795 F1            [10] 4765 	pop	af
   5796 F1            [10] 4766 	pop	af
   5797 D1            [10] 4767 	pop	de
                           4768 ;src/includes/world.h:356: for(ix=0; ix<NBTILE_W;ix++)
   5798 1C            [ 4] 4769 	inc	e
   5799 7B            [ 4] 4770 	ld	a,e
   579A D6 14         [ 7] 4771 	sub	a, #0x14
   579C 38 E4         [12] 4772 	jr	C,00103$
                           4773 ;src/includes/world.h:354: for(iy=0; iy<NBTILE_H;iy++)
   579E 14            [ 4] 4774 	inc	d
   579F 7A            [ 4] 4775 	ld	a,d
   57A0 D6 0C         [ 7] 4776 	sub	a, #0x0C
   57A2 38 DC         [12] 4777 	jr	C,00109$
                           4778 ;src/includes/world.h:362: drawScrolls(x_, y_);
   57A4 21 03 00      [10] 4779 	ld	hl, #3+0
   57A7 39            [11] 4780 	add	hl, sp
   57A8 7E            [ 7] 4781 	ld	a, (hl)
   57A9 F5            [11] 4782 	push	af
   57AA 33            [ 6] 4783 	inc	sp
   57AB 21 03 00      [10] 4784 	ld	hl, #3+0
   57AE 39            [11] 4785 	add	hl, sp
   57AF 7E            [ 7] 4786 	ld	a, (hl)
   57B0 F5            [11] 4787 	push	af
   57B1 33            [ 6] 4788 	inc	sp
   57B2 CD E5 56      [17] 4789 	call	_drawScrolls
   57B5 F1            [10] 4790 	pop	af
   57B6 C9            [10] 4791 	ret
                           4792 ;src/includes/game.h:1: void windowInfoTile(u8 x, u8 y)
                           4793 ;	---------------------------------
                           4794 ; Function windowInfoTile
                           4795 ; ---------------------------------
   57B7                    4796 _windowInfoTile::
   57B7 DD E5         [15] 4797 	push	ix
   57B9 DD 21 00 00   [14] 4798 	ld	ix,#0
   57BD DD 39         [15] 4799 	add	ix,sp
   57BF 21 F8 FF      [10] 4800 	ld	hl,#-8
   57C2 39            [11] 4801 	add	hl,sp
   57C3 F9            [ 6] 4802 	ld	sp,hl
                           4803 ;src/includes/game.h:5: switch(p_world[y*WIDTH+x])
   57C4 DD 4E 05      [19] 4804 	ld	c,5 (ix)
   57C7 06 00         [ 7] 4805 	ld	b,#0x00
   57C9 69            [ 4] 4806 	ld	l, c
   57CA 60            [ 4] 4807 	ld	h, b
   57CB 29            [11] 4808 	add	hl, hl
   57CC 29            [11] 4809 	add	hl, hl
   57CD 09            [11] 4810 	add	hl, bc
   57CE 29            [11] 4811 	add	hl, hl
   57CF 29            [11] 4812 	add	hl, hl
   57D0 29            [11] 4813 	add	hl, hl
   57D1 29            [11] 4814 	add	hl, hl
   57D2 DD 5E 04      [19] 4815 	ld	e,4 (ix)
   57D5 16 00         [ 7] 4816 	ld	d,#0x00
   57D7 19            [11] 4817 	add	hl,de
   57D8 11 0C 67      [10] 4818 	ld	de,#_p_world
   57DB 19            [11] 4819 	add	hl,de
   57DC 4E            [ 7] 4820 	ld	c,(hl)
   57DD 3E 09         [ 7] 4821 	ld	a,#0x09
   57DF 91            [ 4] 4822 	sub	a, c
   57E0 DA 11 59      [10] 4823 	jp	C,00111$
   57E3 59            [ 4] 4824 	ld	e,c
   57E4 16 00         [ 7] 4825 	ld	d,#0x00
   57E6 21 ED 57      [10] 4826 	ld	hl,#00119$
   57E9 19            [11] 4827 	add	hl,de
   57EA 19            [11] 4828 	add	hl,de
   57EB 19            [11] 4829 	add	hl,de
   57EC E9            [ 4] 4830 	jp	(hl)
   57ED                    4831 00119$:
   57ED C3 0B 58      [10] 4832 	jp	00101$
   57F0 C3 0B 58      [10] 4833 	jp	00102$
   57F3 C3 37 58      [10] 4834 	jp	00103$
   57F6 C3 37 58      [10] 4835 	jp	00104$
   57F9 C3 37 58      [10] 4836 	jp	00105$
   57FC C3 63 58      [10] 4837 	jp	00106$
   57FF C3 63 58      [10] 4838 	jp	00107$
   5802 C3 8F 58      [10] 4839 	jp	00108$
   5805 C3 BB 58      [10] 4840 	jp	00109$
   5808 C3 E6 58      [10] 4841 	jp	00110$
                           4842 ;src/includes/game.h:7: case GRASS1:
   580B                    4843 00101$:
                           4844 ;src/includes/game.h:8: case GRASS2:
   580B                    4845 00102$:
                           4846 ;src/includes/game.h:9: txtWindowInfoTile[0] = "Grassland";
   580B 21 00 00      [10] 4847 	ld	hl,#0x0000
   580E 39            [11] 4848 	add	hl,sp
   580F 5D            [ 4] 4849 	ld	e,l
   5810 54            [ 4] 4850 	ld	d,h
   5811 36 4C         [10] 4851 	ld	(hl),#<(___str_2)
   5813 23            [ 6] 4852 	inc	hl
   5814 36 59         [10] 4853 	ld	(hl),#>(___str_2)
                           4854 ;src/includes/game.h:10: txtWindowInfoTile[1] = "";
   5816 6B            [ 4] 4855 	ld	l, e
   5817 62            [ 4] 4856 	ld	h, d
   5818 23            [ 6] 4857 	inc	hl
   5819 23            [ 6] 4858 	inc	hl
   581A 01 56 59      [10] 4859 	ld	bc,#___str_3+0
   581D 71            [ 7] 4860 	ld	(hl),c
   581E 23            [ 6] 4861 	inc	hl
   581F 70            [ 7] 4862 	ld	(hl),b
                           4863 ;src/includes/game.h:11: txtWindowInfoTile[2] = "Production: nothing";
   5820 21 04 00      [10] 4864 	ld	hl,#0x0004
   5823 19            [11] 4865 	add	hl,de
   5824 01 57 59      [10] 4866 	ld	bc,#___str_4+0
   5827 71            [ 7] 4867 	ld	(hl),c
   5828 23            [ 6] 4868 	inc	hl
   5829 70            [ 7] 4869 	ld	(hl),b
                           4870 ;src/includes/game.h:12: txtWindowInfoTile[3] = "Demand: nothing";
   582A 21 06 00      [10] 4871 	ld	hl,#0x0006
   582D 19            [11] 4872 	add	hl,de
   582E 11 6B 59      [10] 4873 	ld	de,#___str_5+0
   5831 73            [ 7] 4874 	ld	(hl),e
   5832 23            [ 6] 4875 	inc	hl
   5833 72            [ 7] 4876 	ld	(hl),d
                           4877 ;src/includes/game.h:13: break;
   5834 C3 3A 59      [10] 4878 	jp	00112$
                           4879 ;src/includes/game.h:14: case DWELLINGS1:
   5837                    4880 00103$:
                           4881 ;src/includes/game.h:15: case DWELLINGS2:
   5837                    4882 00104$:
                           4883 ;src/includes/game.h:16: case DWELLINGS3:
   5837                    4884 00105$:
                           4885 ;src/includes/game.h:17: txtWindowInfoTile[0] = "City";
   5837 21 00 00      [10] 4886 	ld	hl,#0x0000
   583A 39            [11] 4887 	add	hl,sp
   583B 5D            [ 4] 4888 	ld	e,l
   583C 54            [ 4] 4889 	ld	d,h
   583D 36 7B         [10] 4890 	ld	(hl),#<(___str_6)
   583F 23            [ 6] 4891 	inc	hl
   5840 36 59         [10] 4892 	ld	(hl),#>(___str_6)
                           4893 ;src/includes/game.h:18: txtWindowInfoTile[1] = "";
   5842 6B            [ 4] 4894 	ld	l, e
   5843 62            [ 4] 4895 	ld	h, d
   5844 23            [ 6] 4896 	inc	hl
   5845 23            [ 6] 4897 	inc	hl
   5846 01 56 59      [10] 4898 	ld	bc,#___str_3+0
   5849 71            [ 7] 4899 	ld	(hl),c
   584A 23            [ 6] 4900 	inc	hl
   584B 70            [ 7] 4901 	ld	(hl),b
                           4902 ;src/includes/game.h:19: txtWindowInfoTile[2] = "Production: Passengers, mail";
   584C 21 04 00      [10] 4903 	ld	hl,#0x0004
   584F 19            [11] 4904 	add	hl,de
   5850 01 80 59      [10] 4905 	ld	bc,#___str_7+0
   5853 71            [ 7] 4906 	ld	(hl),c
   5854 23            [ 6] 4907 	inc	hl
   5855 70            [ 7] 4908 	ld	(hl),b
                           4909 ;src/includes/game.h:20: txtWindowInfoTile[3] = "Demand: Passenger, mail, food, goods";
   5856 21 06 00      [10] 4910 	ld	hl,#0x0006
   5859 19            [11] 4911 	add	hl,de
   585A 11 9D 59      [10] 4912 	ld	de,#___str_8+0
   585D 73            [ 7] 4913 	ld	(hl),e
   585E 23            [ 6] 4914 	inc	hl
   585F 72            [ 7] 4915 	ld	(hl),d
                           4916 ;src/includes/game.h:21: break;
   5860 C3 3A 59      [10] 4917 	jp	00112$
                           4918 ;src/includes/game.h:22: case FARM1:
   5863                    4919 00106$:
                           4920 ;src/includes/game.h:23: case FARM2:
   5863                    4921 00107$:
                           4922 ;src/includes/game.h:24: txtWindowInfoTile[0] = "Farm";
   5863 21 00 00      [10] 4923 	ld	hl,#0x0000
   5866 39            [11] 4924 	add	hl,sp
   5867 5D            [ 4] 4925 	ld	e,l
   5868 54            [ 4] 4926 	ld	d,h
   5869 36 C2         [10] 4927 	ld	(hl),#<(___str_9)
   586B 23            [ 6] 4928 	inc	hl
   586C 36 59         [10] 4929 	ld	(hl),#>(___str_9)
                           4930 ;src/includes/game.h:25: txtWindowInfoTile[1] = "";
   586E 6B            [ 4] 4931 	ld	l, e
   586F 62            [ 4] 4932 	ld	h, d
   5870 23            [ 6] 4933 	inc	hl
   5871 23            [ 6] 4934 	inc	hl
   5872 01 56 59      [10] 4935 	ld	bc,#___str_3+0
   5875 71            [ 7] 4936 	ld	(hl),c
   5876 23            [ 6] 4937 	inc	hl
   5877 70            [ 7] 4938 	ld	(hl),b
                           4939 ;src/includes/game.h:26: txtWindowInfoTile[2] = "Production: Cereal";
   5878 21 04 00      [10] 4940 	ld	hl,#0x0004
   587B 19            [11] 4941 	add	hl,de
   587C 01 C7 59      [10] 4942 	ld	bc,#___str_10+0
   587F 71            [ 7] 4943 	ld	(hl),c
   5880 23            [ 6] 4944 	inc	hl
   5881 70            [ 7] 4945 	ld	(hl),b
                           4946 ;src/includes/game.h:27: txtWindowInfoTile[3] = "Demand: Nothing";
   5882 21 06 00      [10] 4947 	ld	hl,#0x0006
   5885 19            [11] 4948 	add	hl,de
   5886 11 DA 59      [10] 4949 	ld	de,#___str_11+0
   5889 73            [ 7] 4950 	ld	(hl),e
   588A 23            [ 6] 4951 	inc	hl
   588B 72            [ 7] 4952 	ld	(hl),d
                           4953 ;src/includes/game.h:28: break;
   588C C3 3A 59      [10] 4954 	jp	00112$
                           4955 ;src/includes/game.h:29: case WATER:
   588F                    4956 00108$:
                           4957 ;src/includes/game.h:30: txtWindowInfoTile[0] = "Water";
   588F 21 00 00      [10] 4958 	ld	hl,#0x0000
   5892 39            [11] 4959 	add	hl,sp
   5893 5D            [ 4] 4960 	ld	e,l
   5894 54            [ 4] 4961 	ld	d,h
   5895 36 EA         [10] 4962 	ld	(hl),#<(___str_12)
   5897 23            [ 6] 4963 	inc	hl
   5898 36 59         [10] 4964 	ld	(hl),#>(___str_12)
                           4965 ;src/includes/game.h:31: txtWindowInfoTile[1] = "";
   589A 6B            [ 4] 4966 	ld	l, e
   589B 62            [ 4] 4967 	ld	h, d
   589C 23            [ 6] 4968 	inc	hl
   589D 23            [ 6] 4969 	inc	hl
   589E 01 56 59      [10] 4970 	ld	bc,#___str_3+0
   58A1 71            [ 7] 4971 	ld	(hl),c
   58A2 23            [ 6] 4972 	inc	hl
   58A3 70            [ 7] 4973 	ld	(hl),b
                           4974 ;src/includes/game.h:32: txtWindowInfoTile[2] = "Production: Nothing";
   58A4 21 04 00      [10] 4975 	ld	hl,#0x0004
   58A7 19            [11] 4976 	add	hl,de
   58A8 01 F0 59      [10] 4977 	ld	bc,#___str_13+0
   58AB 71            [ 7] 4978 	ld	(hl),c
   58AC 23            [ 6] 4979 	inc	hl
   58AD 70            [ 7] 4980 	ld	(hl),b
                           4981 ;src/includes/game.h:33: txtWindowInfoTile[3] = "Demand: Nothing";
   58AE 21 06 00      [10] 4982 	ld	hl,#0x0006
   58B1 19            [11] 4983 	add	hl,de
   58B2 11 DA 59      [10] 4984 	ld	de,#___str_11+0
   58B5 73            [ 7] 4985 	ld	(hl),e
   58B6 23            [ 6] 4986 	inc	hl
   58B7 72            [ 7] 4987 	ld	(hl),d
                           4988 ;src/includes/game.h:34: break;
   58B8 C3 3A 59      [10] 4989 	jp	00112$
                           4990 ;src/includes/game.h:35: case FOREST:
   58BB                    4991 00109$:
                           4992 ;src/includes/game.h:36: txtWindowInfoTile[0] = "Forest";
   58BB 21 00 00      [10] 4993 	ld	hl,#0x0000
   58BE 39            [11] 4994 	add	hl,sp
   58BF 5D            [ 4] 4995 	ld	e,l
   58C0 54            [ 4] 4996 	ld	d,h
   58C1 36 04         [10] 4997 	ld	(hl),#<(___str_14)
   58C3 23            [ 6] 4998 	inc	hl
   58C4 36 5A         [10] 4999 	ld	(hl),#>(___str_14)
                           5000 ;src/includes/game.h:37: txtWindowInfoTile[1] = "";
   58C6 6B            [ 4] 5001 	ld	l, e
   58C7 62            [ 4] 5002 	ld	h, d
   58C8 23            [ 6] 5003 	inc	hl
   58C9 23            [ 6] 5004 	inc	hl
   58CA 01 56 59      [10] 5005 	ld	bc,#___str_3+0
   58CD 71            [ 7] 5006 	ld	(hl),c
   58CE 23            [ 6] 5007 	inc	hl
   58CF 70            [ 7] 5008 	ld	(hl),b
                           5009 ;src/includes/game.h:38: txtWindowInfoTile[2] = "Production: Nothing";
   58D0 21 04 00      [10] 5010 	ld	hl,#0x0004
   58D3 19            [11] 5011 	add	hl,de
   58D4 01 F0 59      [10] 5012 	ld	bc,#___str_13+0
   58D7 71            [ 7] 5013 	ld	(hl),c
   58D8 23            [ 6] 5014 	inc	hl
   58D9 70            [ 7] 5015 	ld	(hl),b
                           5016 ;src/includes/game.h:39: txtWindowInfoTile[3] = "Demand: Nothing";
   58DA 21 06 00      [10] 5017 	ld	hl,#0x0006
   58DD 19            [11] 5018 	add	hl,de
   58DE 11 DA 59      [10] 5019 	ld	de,#___str_11+0
   58E1 73            [ 7] 5020 	ld	(hl),e
   58E2 23            [ 6] 5021 	inc	hl
   58E3 72            [ 7] 5022 	ld	(hl),d
                           5023 ;src/includes/game.h:40: break;
   58E4 18 54         [12] 5024 	jr	00112$
                           5025 ;src/includes/game.h:41: case LIVESTOCK:
   58E6                    5026 00110$:
                           5027 ;src/includes/game.h:42: txtWindowInfoTile[0] = "Livestock farming";
   58E6 21 00 00      [10] 5028 	ld	hl,#0x0000
   58E9 39            [11] 5029 	add	hl,sp
   58EA 5D            [ 4] 5030 	ld	e,l
   58EB 54            [ 4] 5031 	ld	d,h
   58EC 36 0B         [10] 5032 	ld	(hl),#<(___str_15)
   58EE 23            [ 6] 5033 	inc	hl
   58EF 36 5A         [10] 5034 	ld	(hl),#>(___str_15)
                           5035 ;src/includes/game.h:43: txtWindowInfoTile[1] = "";
   58F1 6B            [ 4] 5036 	ld	l, e
   58F2 62            [ 4] 5037 	ld	h, d
   58F3 23            [ 6] 5038 	inc	hl
   58F4 23            [ 6] 5039 	inc	hl
   58F5 01 56 59      [10] 5040 	ld	bc,#___str_3+0
   58F8 71            [ 7] 5041 	ld	(hl),c
   58F9 23            [ 6] 5042 	inc	hl
   58FA 70            [ 7] 5043 	ld	(hl),b
                           5044 ;src/includes/game.h:44: txtWindowInfoTile[2] = "Production: Livestock, wool";
   58FB 21 04 00      [10] 5045 	ld	hl,#0x0004
   58FE 19            [11] 5046 	add	hl,de
   58FF 01 1D 5A      [10] 5047 	ld	bc,#___str_16+0
   5902 71            [ 7] 5048 	ld	(hl),c
   5903 23            [ 6] 5049 	inc	hl
   5904 70            [ 7] 5050 	ld	(hl),b
                           5051 ;src/includes/game.h:45: txtWindowInfoTile[3] = "Demand: Cereal";
   5905 21 06 00      [10] 5052 	ld	hl,#0x0006
   5908 19            [11] 5053 	add	hl,de
   5909 11 39 5A      [10] 5054 	ld	de,#___str_17+0
   590C 73            [ 7] 5055 	ld	(hl),e
   590D 23            [ 6] 5056 	inc	hl
   590E 72            [ 7] 5057 	ld	(hl),d
                           5058 ;src/includes/game.h:46: break;
   590F 18 29         [12] 5059 	jr	00112$
                           5060 ;src/includes/game.h:47: default:
   5911                    5061 00111$:
                           5062 ;src/includes/game.h:48: txtWindowInfoTile[0] = "Not yet implemented";
   5911 21 00 00      [10] 5063 	ld	hl,#0x0000
   5914 39            [11] 5064 	add	hl,sp
   5915 5D            [ 4] 5065 	ld	e,l
   5916 54            [ 4] 5066 	ld	d,h
   5917 36 48         [10] 5067 	ld	(hl),#<(___str_18)
   5919 23            [ 6] 5068 	inc	hl
   591A 36 5A         [10] 5069 	ld	(hl),#>(___str_18)
                           5070 ;src/includes/game.h:49: txtWindowInfoTile[1] = "";
   591C 6B            [ 4] 5071 	ld	l, e
   591D 62            [ 4] 5072 	ld	h, d
   591E 23            [ 6] 5073 	inc	hl
   591F 23            [ 6] 5074 	inc	hl
   5920 01 56 59      [10] 5075 	ld	bc,#___str_3+0
   5923 71            [ 7] 5076 	ld	(hl),c
   5924 23            [ 6] 5077 	inc	hl
   5925 70            [ 7] 5078 	ld	(hl),b
                           5079 ;src/includes/game.h:50: txtWindowInfoTile[2] = "Production: ?";
   5926 21 04 00      [10] 5080 	ld	hl,#0x0004
   5929 19            [11] 5081 	add	hl,de
   592A 01 5C 5A      [10] 5082 	ld	bc,#___str_19+0
   592D 71            [ 7] 5083 	ld	(hl),c
   592E 23            [ 6] 5084 	inc	hl
   592F 70            [ 7] 5085 	ld	(hl),b
                           5086 ;src/includes/game.h:51: txtWindowInfoTile[3] = "Demand: ?";
   5930 21 06 00      [10] 5087 	ld	hl,#0x0006
   5933 19            [11] 5088 	add	hl,de
   5934 11 6A 5A      [10] 5089 	ld	de,#___str_20+0
   5937 73            [ 7] 5090 	ld	(hl),e
   5938 23            [ 6] 5091 	inc	hl
   5939 72            [ 7] 5092 	ld	(hl),d
                           5093 ;src/includes/game.h:53: }
   593A                    5094 00112$:
                           5095 ;src/includes/game.h:55: drawWindow(txtWindowInfoTile, 4, 0);
   593A 21 00 00      [10] 5096 	ld	hl,#0x0000
   593D 39            [11] 5097 	add	hl,sp
   593E EB            [ 4] 5098 	ex	de,hl
   593F 21 04 00      [10] 5099 	ld	hl,#0x0004
   5942 E5            [11] 5100 	push	hl
   5943 D5            [11] 5101 	push	de
   5944 CD C1 4B      [17] 5102 	call	_drawWindow
   5947 DD F9         [10] 5103 	ld	sp,ix
   5949 DD E1         [14] 5104 	pop	ix
   594B C9            [10] 5105 	ret
   594C                    5106 ___str_2:
   594C 47 72 61 73 73 6C  5107 	.ascii "Grassland"
        61 6E 64
   5955 00                 5108 	.db 0x00
   5956                    5109 ___str_3:
   5956 00                 5110 	.db 0x00
   5957                    5111 ___str_4:
   5957 50 72 6F 64 75 63  5112 	.ascii "Production: nothing"
        74 69 6F 6E 3A 20
        6E 6F 74 68 69 6E
        67
   596A 00                 5113 	.db 0x00
   596B                    5114 ___str_5:
   596B 44 65 6D 61 6E 64  5115 	.ascii "Demand: nothing"
        3A 20 6E 6F 74 68
        69 6E 67
   597A 00                 5116 	.db 0x00
   597B                    5117 ___str_6:
   597B 43 69 74 79        5118 	.ascii "City"
   597F 00                 5119 	.db 0x00
   5980                    5120 ___str_7:
   5980 50 72 6F 64 75 63  5121 	.ascii "Production: Passengers, mail"
        74 69 6F 6E 3A 20
        50 61 73 73 65 6E
        67 65 72 73 2C 20
        6D 61 69 6C
   599C 00                 5122 	.db 0x00
   599D                    5123 ___str_8:
   599D 44 65 6D 61 6E 64  5124 	.ascii "Demand: Passenger, mail, food, goods"
        3A 20 50 61 73 73
        65 6E 67 65 72 2C
        20 6D 61 69 6C 2C
        20 66 6F 6F 64 2C
        20 67 6F 6F 64 73
   59C1 00                 5125 	.db 0x00
   59C2                    5126 ___str_9:
   59C2 46 61 72 6D        5127 	.ascii "Farm"
   59C6 00                 5128 	.db 0x00
   59C7                    5129 ___str_10:
   59C7 50 72 6F 64 75 63  5130 	.ascii "Production: Cereal"
        74 69 6F 6E 3A 20
        43 65 72 65 61 6C
   59D9 00                 5131 	.db 0x00
   59DA                    5132 ___str_11:
   59DA 44 65 6D 61 6E 64  5133 	.ascii "Demand: Nothing"
        3A 20 4E 6F 74 68
        69 6E 67
   59E9 00                 5134 	.db 0x00
   59EA                    5135 ___str_12:
   59EA 57 61 74 65 72     5136 	.ascii "Water"
   59EF 00                 5137 	.db 0x00
   59F0                    5138 ___str_13:
   59F0 50 72 6F 64 75 63  5139 	.ascii "Production: Nothing"
        74 69 6F 6E 3A 20
        4E 6F 74 68 69 6E
        67
   5A03 00                 5140 	.db 0x00
   5A04                    5141 ___str_14:
   5A04 46 6F 72 65 73 74  5142 	.ascii "Forest"
   5A0A 00                 5143 	.db 0x00
   5A0B                    5144 ___str_15:
   5A0B 4C 69 76 65 73 74  5145 	.ascii "Livestock farming"
        6F 63 6B 20 66 61
        72 6D 69 6E 67
   5A1C 00                 5146 	.db 0x00
   5A1D                    5147 ___str_16:
   5A1D 50 72 6F 64 75 63  5148 	.ascii "Production: Livestock, wool"
        74 69 6F 6E 3A 20
        4C 69 76 65 73 74
        6F 63 6B 2C 20 77
        6F 6F 6C
   5A38 00                 5149 	.db 0x00
   5A39                    5150 ___str_17:
   5A39 44 65 6D 61 6E 64  5151 	.ascii "Demand: Cereal"
        3A 20 43 65 72 65
        61 6C
   5A47 00                 5152 	.db 0x00
   5A48                    5153 ___str_18:
   5A48 4E 6F 74 20 79 65  5154 	.ascii "Not yet implemented"
        74 20 69 6D 70 6C
        65 6D 65 6E 74 65
        64
   5A5B 00                 5155 	.db 0x00
   5A5C                    5156 ___str_19:
   5A5C 50 72 6F 64 75 63  5157 	.ascii "Production: ?"
        74 69 6F 6E 3A 20
        3F
   5A69 00                 5158 	.db 0x00
   5A6A                    5159 ___str_20:
   5A6A 44 65 6D 61 6E 64  5160 	.ascii "Demand: ?"
        3A 20 3F
   5A73 00                 5161 	.db 0x00
                           5162 ;src/includes/game.h:58: void menuStations()
                           5163 ;	---------------------------------
                           5164 ; Function menuStations
                           5165 ; ---------------------------------
   5A74                    5166 _menuStations::
   5A74 DD E5         [15] 5167 	push	ix
   5A76 DD 21 00 00   [14] 5168 	ld	ix,#0
   5A7A DD 39         [15] 5169 	add	ix,sp
   5A7C 21 FA FF      [10] 5170 	ld	hl,#-6
   5A7F 39            [11] 5171 	add	hl,sp
   5A80 F9            [ 6] 5172 	ld	sp,hl
                           5173 ;src/includes/game.h:62: const char *txtMenuSizeStation[] = { 
   5A81 21 00 00      [10] 5174 	ld	hl,#0x0000
   5A84 39            [11] 5175 	add	hl,sp
   5A85 5D            [ 4] 5176 	ld	e,l
   5A86 54            [ 4] 5177 	ld	d,h
   5A87 36 D6         [10] 5178 	ld	(hl),#<(___str_21)
   5A89 23            [ 6] 5179 	inc	hl
   5A8A 36 5A         [10] 5180 	ld	(hl),#>(___str_21)
   5A8C 6B            [ 4] 5181 	ld	l, e
   5A8D 62            [ 4] 5182 	ld	h, d
   5A8E 23            [ 6] 5183 	inc	hl
   5A8F 23            [ 6] 5184 	inc	hl
   5A90 01 DC 5A      [10] 5185 	ld	bc,#___str_22+0
   5A93 71            [ 7] 5186 	ld	(hl),c
   5A94 23            [ 6] 5187 	inc	hl
   5A95 70            [ 7] 5188 	ld	(hl),b
   5A96 21 04 00      [10] 5189 	ld	hl,#0x0004
   5A99 19            [11] 5190 	add	hl,de
   5A9A 01 E3 5A      [10] 5191 	ld	bc,#___str_23+0
   5A9D 71            [ 7] 5192 	ld	(hl),c
   5A9E 23            [ 6] 5193 	inc	hl
   5A9F 70            [ 7] 5194 	ld	(hl),b
                           5195 ;src/includes/game.h:68: result = drawMenu(txtMenuSizeStation,3);
   5AA0 3E 03         [ 7] 5196 	ld	a,#0x03
   5AA2 F5            [11] 5197 	push	af
   5AA3 33            [ 6] 5198 	inc	sp
   5AA4 D5            [11] 5199 	push	de
   5AA5 CD C3 4A      [17] 5200 	call	_drawMenu
   5AA8 F1            [10] 5201 	pop	af
   5AA9 33            [ 6] 5202 	inc	sp
   5AAA 5D            [ 4] 5203 	ld	e,l
                           5204 ;src/includes/game.h:70: switch(result)
   5AAB 3E 02         [ 7] 5205 	ld	a,#0x02
   5AAD 93            [ 4] 5206 	sub	a, e
   5AAE 38 21         [12] 5207 	jr	C,00105$
   5AB0 16 00         [ 7] 5208 	ld	d,#0x00
   5AB2 21 B8 5A      [10] 5209 	ld	hl,#00111$
   5AB5 19            [11] 5210 	add	hl,de
   5AB6 19            [11] 5211 	add	hl,de
                           5212 ;src/includes/game.h:72: case 0:
   5AB7 E9            [ 4] 5213 	jp	(hl)
   5AB8                    5214 00111$:
   5AB8 18 04         [12] 5215 	jr	00101$
   5ABA 18 09         [12] 5216 	jr	00102$
   5ABC 18 0E         [12] 5217 	jr	00103$
   5ABE                    5218 00101$:
                           5219 ;src/includes/game.h:73: CURSOR_MODE=T_SSEW;
   5ABE 21 0C 76      [10] 5220 	ld	hl,#_CURSOR_MODE + 0
   5AC1 36 02         [10] 5221 	ld	(hl), #0x02
                           5222 ;src/includes/game.h:74: break;
   5AC3 18 0C         [12] 5223 	jr	00105$
                           5224 ;src/includes/game.h:76: case 1:
   5AC5                    5225 00102$:
                           5226 ;src/includes/game.h:77: CURSOR_MODE=T_SMEW;
   5AC5 21 0C 76      [10] 5227 	ld	hl,#_CURSOR_MODE + 0
   5AC8 36 04         [10] 5228 	ld	(hl), #0x04
                           5229 ;src/includes/game.h:78: break;
   5ACA 18 05         [12] 5230 	jr	00105$
                           5231 ;src/includes/game.h:80: case 2:
   5ACC                    5232 00103$:
                           5233 ;src/includes/game.h:81: CURSOR_MODE=T_SLEW;
   5ACC 21 0C 76      [10] 5234 	ld	hl,#_CURSOR_MODE + 0
   5ACF 36 06         [10] 5235 	ld	(hl), #0x06
                           5236 ;src/includes/game.h:83: }
   5AD1                    5237 00105$:
   5AD1 DD F9         [10] 5238 	ld	sp, ix
   5AD3 DD E1         [14] 5239 	pop	ix
   5AD5 C9            [10] 5240 	ret
   5AD6                    5241 ___str_21:
   5AD6 53 6D 61 6C 6C     5242 	.ascii "Small"
   5ADB 00                 5243 	.db 0x00
   5ADC                    5244 ___str_22:
   5ADC 4D 65 64 69 75 6D  5245 	.ascii "Medium"
   5AE2 00                 5246 	.db 0x00
   5AE3                    5247 ___str_23:
   5AE3 4C 61 72 67 65     5248 	.ascii "Large"
   5AE8 00                 5249 	.db 0x00
                           5250 ;src/includes/game.h:86: void menuTile(u8 x, u8 y)
                           5251 ;	---------------------------------
                           5252 ; Function menuTile
                           5253 ; ---------------------------------
   5AE9                    5254 _menuTile::
   5AE9 DD E5         [15] 5255 	push	ix
   5AEB DD 21 00 00   [14] 5256 	ld	ix,#0
   5AEF DD 39         [15] 5257 	add	ix,sp
   5AF1 21 E6 FF      [10] 5258 	ld	hl,#-26
   5AF4 39            [11] 5259 	add	hl,sp
   5AF5 F9            [ 6] 5260 	ld	sp,hl
                           5261 ;src/includes/game.h:90: const char *txtMenuTile[] = { 
   5AF6 21 00 00      [10] 5262 	ld	hl,#0x0000
   5AF9 39            [11] 5263 	add	hl,sp
   5AFA 5D            [ 4] 5264 	ld	e,l
   5AFB 54            [ 4] 5265 	ld	d,h
   5AFC 36 11         [10] 5266 	ld	(hl),#<(___str_24)
   5AFE 23            [ 6] 5267 	inc	hl
   5AFF 36 5C         [10] 5268 	ld	(hl),#>(___str_24)
   5B01 6B            [ 4] 5269 	ld	l, e
   5B02 62            [ 4] 5270 	ld	h, d
   5B03 23            [ 6] 5271 	inc	hl
   5B04 23            [ 6] 5272 	inc	hl
   5B05 01 21 5C      [10] 5273 	ld	bc,#___str_25+0
   5B08 71            [ 7] 5274 	ld	(hl),c
   5B09 23            [ 6] 5275 	inc	hl
   5B0A 70            [ 7] 5276 	ld	(hl),b
   5B0B 21 04 00      [10] 5277 	ld	hl,#0x0004
   5B0E 19            [11] 5278 	add	hl,de
   5B0F 01 31 5C      [10] 5279 	ld	bc,#___str_26+0
   5B12 71            [ 7] 5280 	ld	(hl),c
   5B13 23            [ 6] 5281 	inc	hl
   5B14 70            [ 7] 5282 	ld	(hl),b
   5B15 21 06 00      [10] 5283 	ld	hl,#0x0006
   5B18 19            [11] 5284 	add	hl,de
   5B19 01 41 5C      [10] 5285 	ld	bc,#___str_27+0
   5B1C 71            [ 7] 5286 	ld	(hl),c
   5B1D 23            [ 6] 5287 	inc	hl
   5B1E 70            [ 7] 5288 	ld	(hl),b
   5B1F 21 08 00      [10] 5289 	ld	hl,#0x0008
   5B22 19            [11] 5290 	add	hl,de
   5B23 01 49 5C      [10] 5291 	ld	bc,#___str_28+0
   5B26 71            [ 7] 5292 	ld	(hl),c
   5B27 23            [ 6] 5293 	inc	hl
   5B28 70            [ 7] 5294 	ld	(hl),b
   5B29 21 0A 00      [10] 5295 	ld	hl,#0x000A
   5B2C 19            [11] 5296 	add	hl,de
   5B2D 01 58 5C      [10] 5297 	ld	bc,#___str_29+0
   5B30 71            [ 7] 5298 	ld	(hl),c
   5B31 23            [ 6] 5299 	inc	hl
   5B32 70            [ 7] 5300 	ld	(hl),b
   5B33 21 0C 00      [10] 5301 	ld	hl,#0x000C
   5B36 19            [11] 5302 	add	hl,de
   5B37 01 63 5C      [10] 5303 	ld	bc,#___str_30+0
   5B3A 71            [ 7] 5304 	ld	(hl),c
   5B3B 23            [ 6] 5305 	inc	hl
   5B3C 70            [ 7] 5306 	ld	(hl),b
                           5307 ;src/includes/game.h:100: const char *txtWindowDestroy[] = { 
   5B3D 21 0E 00      [10] 5308 	ld	hl,#0x000E
   5B40 39            [11] 5309 	add	hl,sp
   5B41 4D            [ 4] 5310 	ld	c,l
   5B42 44            [ 4] 5311 	ld	b,h
   5B43 36 6A         [10] 5312 	ld	(hl),#<(___str_31)
   5B45 23            [ 6] 5313 	inc	hl
   5B46 36 5C         [10] 5314 	ld	(hl),#>(___str_31)
   5B48 21 02 00      [10] 5315 	ld	hl,#0x0002
   5B4B 09            [11] 5316 	add	hl,bc
   5B4C DD 75 FE      [19] 5317 	ld	-2 (ix),l
   5B4F DD 74 FF      [19] 5318 	ld	-1 (ix),h
   5B52 DD 6E FE      [19] 5319 	ld	l,-2 (ix)
   5B55 DD 66 FF      [19] 5320 	ld	h,-1 (ix)
   5B58 36 8D         [10] 5321 	ld	(hl),#<(___str_32)
   5B5A 23            [ 6] 5322 	inc	hl
   5B5B 36 5C         [10] 5323 	ld	(hl),#>(___str_32)
   5B5D 21 04 00      [10] 5324 	ld	hl,#0x0004
   5B60 09            [11] 5325 	add	hl,bc
   5B61 DD 75 FE      [19] 5326 	ld	-2 (ix),l
   5B64 DD 74 FF      [19] 5327 	ld	-1 (ix),h
   5B67 DD 6E FE      [19] 5328 	ld	l,-2 (ix)
   5B6A DD 66 FF      [19] 5329 	ld	h,-1 (ix)
   5B6D 36 8E         [10] 5330 	ld	(hl),#<(___str_33)
   5B6F 23            [ 6] 5331 	inc	hl
   5B70 36 5C         [10] 5332 	ld	(hl),#>(___str_33)
                           5333 ;src/includes/game.h:107: putM2();
   5B72 C5            [11] 5334 	push	bc
   5B73 D5            [11] 5335 	push	de
   5B74 CD BD 46      [17] 5336 	call	_putM2
   5B77 D1            [10] 5337 	pop	de
   5B78 C1            [10] 5338 	pop	bc
                           5339 ;src/includes/game.h:109: do{
   5B79 D5            [11] 5340 	push	de
   5B7A DD 5E 05      [19] 5341 	ld	e,5 (ix)
   5B7D 16 00         [ 7] 5342 	ld	d,#0x00
   5B7F 6B            [ 4] 5343 	ld	l, e
   5B80 62            [ 4] 5344 	ld	h, d
   5B81 29            [11] 5345 	add	hl, hl
   5B82 29            [11] 5346 	add	hl, hl
   5B83 19            [11] 5347 	add	hl, de
   5B84 29            [11] 5348 	add	hl, hl
   5B85 29            [11] 5349 	add	hl, hl
   5B86 29            [11] 5350 	add	hl, hl
   5B87 29            [11] 5351 	add	hl, hl
   5B88 D1            [10] 5352 	pop	de
   5B89 DD 75 FE      [19] 5353 	ld	-2 (ix),l
   5B8C DD 74 FF      [19] 5354 	ld	-1 (ix),h
   5B8F DD 71 FC      [19] 5355 	ld	-4 (ix),c
   5B92 DD 70 FD      [19] 5356 	ld	-3 (ix),b
   5B95 DD 73 FA      [19] 5357 	ld	-6 (ix),e
   5B98 DD 72 FB      [19] 5358 	ld	-5 (ix),d
   5B9B                    5359 00114$:
                           5360 ;src/includes/game.h:110: menuChoice = drawMenu(txtMenuTile,7);
   5B9B DD 5E FA      [19] 5361 	ld	e,-6 (ix)
   5B9E DD 56 FB      [19] 5362 	ld	d,-5 (ix)
   5BA1 3E 07         [ 7] 5363 	ld	a,#0x07
   5BA3 F5            [11] 5364 	push	af
   5BA4 33            [ 6] 5365 	inc	sp
   5BA5 D5            [11] 5366 	push	de
   5BA6 CD C3 4A      [17] 5367 	call	_drawMenu
   5BA9 F1            [10] 5368 	pop	af
   5BAA 33            [ 6] 5369 	inc	sp
   5BAB 55            [ 4] 5370 	ld	d,l
                           5371 ;src/includes/game.h:112: if(menuChoice==0)
   5BAC 7A            [ 4] 5372 	ld	a,d
   5BAD B7            [ 4] 5373 	or	a, a
   5BAE 20 0F         [12] 5374 	jr	NZ,00112$
                           5375 ;src/includes/game.h:113: windowInfoTile(x, y);
   5BB0 D5            [11] 5376 	push	de
   5BB1 DD 66 05      [19] 5377 	ld	h,5 (ix)
   5BB4 DD 6E 04      [19] 5378 	ld	l,4 (ix)
   5BB7 E5            [11] 5379 	push	hl
   5BB8 CD B7 57      [17] 5380 	call	_windowInfoTile
   5BBB F1            [10] 5381 	pop	af
   5BBC D1            [10] 5382 	pop	de
   5BBD 18 45         [12] 5383 	jr	00115$
   5BBF                    5384 00112$:
                           5385 ;src/includes/game.h:114: else if(menuChoice==1)
   5BBF 7A            [ 4] 5386 	ld	a,d
   5BC0 3D            [ 4] 5387 	dec	a
   5BC1 20 09         [12] 5388 	jr	NZ,00109$
                           5389 ;src/includes/game.h:116: CURSOR_MODE=T_REW;
   5BC3 21 0C 76      [10] 5390 	ld	hl,#_CURSOR_MODE + 0
   5BC6 36 07         [10] 5391 	ld	(hl), #0x07
                           5392 ;src/includes/game.h:117: menuChoice=6;
   5BC8 16 06         [ 7] 5393 	ld	d,#0x06
   5BCA 18 38         [12] 5394 	jr	00115$
   5BCC                    5395 00109$:
                           5396 ;src/includes/game.h:119: else if(menuChoice==2)
   5BCC 7A            [ 4] 5397 	ld	a,d
   5BCD D6 02         [ 7] 5398 	sub	a, #0x02
   5BCF 20 07         [12] 5399 	jr	NZ,00106$
                           5400 ;src/includes/game.h:121: menuStations();
   5BD1 CD 74 5A      [17] 5401 	call	_menuStations
                           5402 ;src/includes/game.h:122: menuChoice=6;
   5BD4 16 06         [ 7] 5403 	ld	d,#0x06
   5BD6 18 2C         [12] 5404 	jr	00115$
   5BD8                    5405 00106$:
                           5406 ;src/includes/game.h:124: else if(menuChoice==3)
   5BD8 7A            [ 4] 5407 	ld	a,d
   5BD9 D6 03         [ 7] 5408 	sub	a, #0x03
   5BDB 20 27         [12] 5409 	jr	NZ,00115$
                           5410 ;src/includes/game.h:126: if(	drawWindow(txtWindowDestroy,3,1) == 1)
   5BDD DD 5E FC      [19] 5411 	ld	e,-4 (ix)
   5BE0 DD 56 FD      [19] 5412 	ld	d,-3 (ix)
   5BE3 21 03 01      [10] 5413 	ld	hl,#0x0103
   5BE6 E5            [11] 5414 	push	hl
   5BE7 D5            [11] 5415 	push	de
   5BE8 CD C1 4B      [17] 5416 	call	_drawWindow
   5BEB F1            [10] 5417 	pop	af
   5BEC F1            [10] 5418 	pop	af
   5BED 2D            [ 4] 5419 	dec	l
   5BEE 20 12         [12] 5420 	jr	NZ,00102$
                           5421 ;src/includes/game.h:127: p_world[x+y*WIDTH] = GRASS1;
   5BF0 DD 6E 04      [19] 5422 	ld	l,4 (ix)
   5BF3 26 00         [ 7] 5423 	ld	h,#0x00
   5BF5 DD 5E FE      [19] 5424 	ld	e,-2 (ix)
   5BF8 DD 56 FF      [19] 5425 	ld	d,-1 (ix)
   5BFB 19            [11] 5426 	add	hl,de
   5BFC 11 0C 67      [10] 5427 	ld	de,#_p_world
   5BFF 19            [11] 5428 	add	hl,de
   5C00 36 00         [10] 5429 	ld	(hl),#0x00
   5C02                    5430 00102$:
                           5431 ;src/includes/game.h:129: menuChoice=6;
   5C02 16 06         [ 7] 5432 	ld	d,#0x06
   5C04                    5433 00115$:
                           5434 ;src/includes/game.h:133: while(menuChoice!=6);
   5C04 7A            [ 4] 5435 	ld	a,d
   5C05 D6 06         [ 7] 5436 	sub	a, #0x06
   5C07 20 92         [12] 5437 	jr	NZ,00114$
                           5438 ;src/includes/game.h:135: putM1();
   5C09 CD A9 46      [17] 5439 	call	_putM1
   5C0C DD F9         [10] 5440 	ld	sp, ix
   5C0E DD E1         [14] 5441 	pop	ix
   5C10 C9            [10] 5442 	ret
   5C11                    5443 ___str_24:
   5C11 41 62 6F 75 74 20  5444 	.ascii "About this tile"
        74 68 69 73 20 74
        69 6C 65
   5C20 00                 5445 	.db 0x00
   5C21                    5446 ___str_25:
   5C21 42 75 69 6C 64 20  5447 	.ascii "Build a railway"
        61 20 72 61 69 6C
        77 61 79
   5C30 00                 5448 	.db 0x00
   5C31                    5449 ___str_26:
   5C31 42 75 69 6C 64 20  5450 	.ascii "Build a station"
        61 20 73 74 61 74
        69 6F 6E
   5C40 00                 5451 	.db 0x00
   5C41                    5452 ___str_27:
   5C41 44 65 73 74 72 6F  5453 	.ascii "Destroy"
        79
   5C48 00                 5454 	.db 0x00
   5C49                    5455 ___str_28:
   5C49 52 61 69 6C 72 6F  5456 	.ascii "Railroad depot"
        61 64 20 64 65 70
        6F 74
   5C57 00                 5457 	.db 0x00
   5C58                    5458 ___str_29:
   5C58 41 63 63 6F 75 6E  5459 	.ascii "Accounting"
        74 69 6E 67
   5C62 00                 5460 	.db 0x00
   5C63                    5461 ___str_30:
   5C63 52 65 73 75 6D 65  5462 	.ascii "Resume"
   5C69 00                 5463 	.db 0x00
   5C6A                    5464 ___str_31:
   5C6A 44 65 73 74 72 6F  5465 	.ascii "Destroy this place will cost 100 $"
        79 20 74 68 69 73
        20 70 6C 61 63 65
        20 77 69 6C 6C 20
        63 6F 73 74 20 31
        30 30 20 24
   5C8C 00                 5466 	.db 0x00
   5C8D                    5467 ___str_32:
   5C8D 00                 5468 	.db 0x00
   5C8E                    5469 ___str_33:
   5C8E 43 6F 6E 74 69 6E  5470 	.ascii "Continue ?"
        75 65 20 3F
   5C98 00                 5471 	.db 0x00
                           5472 ;src/includes/game.h:139: void game()
                           5473 ;	---------------------------------
                           5474 ; Function game
                           5475 ; ---------------------------------
   5C99                    5476 _game::
   5C99 DD E5         [15] 5477 	push	ix
   5C9B DD 21 00 00   [14] 5478 	ld	ix,#0
   5C9F DD 39         [15] 5479 	add	ix,sp
   5CA1 21 EA FF      [10] 5480 	ld	hl,#-22
   5CA4 39            [11] 5481 	add	hl,sp
   5CA5 F9            [ 6] 5482 	ld	sp,hl
                           5483 ;src/includes/game.h:142: int ulx = 0;
   5CA6 DD 36 F3 00   [19] 5484 	ld	-13 (ix),#0x00
   5CAA DD 36 F4 00   [19] 5485 	ld	-12 (ix),#0x00
                           5486 ;src/includes/game.h:143: int uly = 0;
   5CAE DD 36 F1 00   [19] 5487 	ld	-15 (ix),#0x00
   5CB2 DD 36 F2 00   [19] 5488 	ld	-14 (ix),#0x00
                           5489 ;src/includes/game.h:144: int xCursor = 10;
   5CB6 DD 36 F7 0A   [19] 5490 	ld	-9 (ix),#0x0A
   5CBA DD 36 F8 00   [19] 5491 	ld	-8 (ix),#0x00
                           5492 ;src/includes/game.h:145: int yCursor = 6;
   5CBE DD 36 F9 06   [19] 5493 	ld	-7 (ix),#0x06
   5CC2 DD 36 FA 00   [19] 5494 	ld	-6 (ix),#0x00
                           5495 ;src/includes/game.h:147: u8 exit=0;
   5CC6 DD 36 F0 00   [19] 5496 	ld	-16 (ix),#0x00
                           5497 ;src/includes/game.h:150: drawBoxM2(50, 50);
   5CCA 21 32 00      [10] 5498 	ld	hl,#0x0032
   5CCD E5            [11] 5499 	push	hl
   5CCE 2E 32         [ 7] 5500 	ld	l, #0x32
   5CD0 E5            [11] 5501 	push	hl
   5CD1 CD F9 47      [17] 5502 	call	_drawBoxM2
   5CD4 F1            [10] 5503 	pop	af
                           5504 ;src/includes/game.h:151: p_video = cpct_getScreenPtr(SCR_VMEM, 32, 95);
   5CD5 21 20 5F      [10] 5505 	ld	hl, #0x5F20
   5CD8 E3            [19] 5506 	ex	(sp),hl
   5CD9 21 00 C0      [10] 5507 	ld	hl,#0xC000
   5CDC E5            [11] 5508 	push	hl
   5CDD CD 38 66      [17] 5509 	call	_cpct_getScreenPtr
                           5510 ;src/includes/game.h:152: cpct_drawStringM2 ("Generating world...", p_video, 0);	
   5CE0 4D            [ 4] 5511 	ld	c, l
   5CE1 44            [ 4] 5512 	ld	b, h
   5CE2 11 81 61      [10] 5513 	ld	de,#___str_37
   5CE5 AF            [ 4] 5514 	xor	a, a
   5CE6 F5            [11] 5515 	push	af
   5CE7 33            [ 6] 5516 	inc	sp
   5CE8 C5            [11] 5517 	push	bc
   5CE9 D5            [11] 5518 	push	de
   5CEA CD 0D 63      [17] 5519 	call	_cpct_drawStringM2
   5CED F1            [10] 5520 	pop	af
   5CEE F1            [10] 5521 	pop	af
   5CEF 33            [ 6] 5522 	inc	sp
                           5523 ;src/includes/game.h:154: generateWorld();
   5CF0 CD 90 50      [17] 5524 	call	_generateWorld
                           5525 ;src/includes/game.h:156: putM1();
   5CF3 CD A9 46      [17] 5526 	call	_putM1
                           5527 ;src/includes/game.h:157: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));
   5CF6 21 00 00      [10] 5528 	ld	hl,#0x0000
   5CF9 E5            [11] 5529 	push	hl
   5CFA 2E 00         [ 7] 5530 	ld	l, #0x00
   5CFC E5            [11] 5531 	push	hl
   5CFD CD 12 65      [17] 5532 	call	_cpct_px2byteM1
   5D00 F1            [10] 5533 	pop	af
   5D01 F1            [10] 5534 	pop	af
   5D02 65            [ 4] 5535 	ld	h,l
   5D03 01 00 40      [10] 5536 	ld	bc,#0x4000
   5D06 C5            [11] 5537 	push	bc
   5D07 E5            [11] 5538 	push	hl
   5D08 33            [ 6] 5539 	inc	sp
   5D09 21 00 C0      [10] 5540 	ld	hl,#0xC000
   5D0C E5            [11] 5541 	push	hl
   5D0D CD 04 65      [17] 5542 	call	_cpct_memset
                           5543 ;src/includes/game.h:158: drawWorld(ulx, uly);
   5D10 21 00 00      [10] 5544 	ld	hl,#0x0000
   5D13 E5            [11] 5545 	push	hl
   5D14 CD 7E 57      [17] 5546 	call	_drawWorld
   5D17 F1            [10] 5547 	pop	af
                           5548 ;src/includes/game.h:160: do{
   5D18                    5549 00181$:
                           5550 ;src/includes/game.h:161: cpct_scanKeyboard(); 
   5D18 CD 58 66      [17] 5551 	call	_cpct_scanKeyboard
                           5552 ;src/includes/game.h:163: if ( cpct_isKeyPressed(Key_CursorUp) )
   5D1B 21 00 01      [10] 5553 	ld	hl,#0x0100
   5D1E CD D6 62      [17] 5554 	call	_cpct_isKeyPressed
   5D21 DD 75 FE      [19] 5555 	ld	-2 (ix),l
                           5556 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5D24 DD 7E F9      [19] 5557 	ld	a,-7 (ix)
   5D27 DD 77 FF      [19] 5558 	ld	-1 (ix),a
   5D2A DD 7E F7      [19] 5559 	ld	a,-9 (ix)
   5D2D DD 77 FD      [19] 5560 	ld	-3 (ix),a
   5D30 DD 7E F1      [19] 5561 	ld	a,-15 (ix)
   5D33 DD 77 FC      [19] 5562 	ld	-4 (ix),a
   5D36 DD 7E F3      [19] 5563 	ld	a,-13 (ix)
   5D39 DD 77 FB      [19] 5564 	ld	-5 (ix),a
                           5565 ;src/includes/game.h:163: if ( cpct_isKeyPressed(Key_CursorUp) )
   5D3C DD 7E FE      [19] 5566 	ld	a,-2 (ix)
   5D3F B7            [ 4] 5567 	or	a, a
   5D40 CA C2 5D      [10] 5568 	jp	Z,00179$
                           5569 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5D43 DD 7E FF      [19] 5570 	ld	a,-1 (ix)
   5D46 F5            [11] 5571 	push	af
   5D47 33            [ 6] 5572 	inc	sp
   5D48 DD 7E FD      [19] 5573 	ld	a,-3 (ix)
   5D4B F5            [11] 5574 	push	af
   5D4C 33            [ 6] 5575 	inc	sp
   5D4D DD 7E FC      [19] 5576 	ld	a,-4 (ix)
   5D50 F5            [11] 5577 	push	af
   5D51 33            [ 6] 5578 	inc	sp
   5D52 DD 7E FB      [19] 5579 	ld	a,-5 (ix)
   5D55 F5            [11] 5580 	push	af
   5D56 33            [ 6] 5581 	inc	sp
   5D57 CD BD 54      [17] 5582 	call	_drawTile
   5D5A F1            [10] 5583 	pop	af
   5D5B F1            [10] 5584 	pop	af
                           5585 ;src/includes/game.h:167: yCursor-=1;
   5D5C DD 6E F9      [19] 5586 	ld	l,-7 (ix)
   5D5F DD 66 FA      [19] 5587 	ld	h,-6 (ix)
   5D62 2B            [ 6] 5588 	dec	hl
   5D63 DD 75 F9      [19] 5589 	ld	-7 (ix),l
   5D66 DD 74 FA      [19] 5590 	ld	-6 (ix),h
                           5591 ;src/includes/game.h:170: if(yCursor<0)
   5D69 DD CB FA 7E   [20] 5592 	bit	7, -6 (ix)
   5D6D 28 35         [12] 5593 	jr	Z,00210$
                           5594 ;src/includes/game.h:172: yCursor=0;
   5D6F DD 36 F9 00   [19] 5595 	ld	-7 (ix),#0x00
   5D73 DD 36 FA 00   [19] 5596 	ld	-6 (ix),#0x00
                           5597 ;src/includes/game.h:175: if(uly>0)
   5D77 AF            [ 4] 5598 	xor	a, a
   5D78 DD BE F1      [19] 5599 	cp	a, -15 (ix)
   5D7B DD 9E F2      [19] 5600 	sbc	a, -14 (ix)
   5D7E E2 83 5D      [10] 5601 	jp	PO, 00387$
   5D81 EE 80         [ 7] 5602 	xor	a, #0x80
   5D83                    5603 00387$:
   5D83 F2 A4 5D      [10] 5604 	jp	P,00210$
                           5605 ;src/includes/game.h:177: uly-=1;
   5D86 DD 6E F1      [19] 5606 	ld	l,-15 (ix)
   5D89 DD 66 F2      [19] 5607 	ld	h,-14 (ix)
   5D8C 2B            [ 6] 5608 	dec	hl
   5D8D DD 75 F1      [19] 5609 	ld	-15 (ix),l
   5D90 DD 74 F2      [19] 5610 	ld	-14 (ix),h
                           5611 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5D93 DD 7E F1      [19] 5612 	ld	a,-15 (ix)
                           5613 ;src/includes/game.h:178: drawWorld(ulx, uly);
   5D96 DD 77 FC      [19] 5614 	ld	-4 (ix), a
   5D99 F5            [11] 5615 	push	af
   5D9A 33            [ 6] 5616 	inc	sp
   5D9B DD 7E FB      [19] 5617 	ld	a,-5 (ix)
   5D9E F5            [11] 5618 	push	af
   5D9F 33            [ 6] 5619 	inc	sp
   5DA0 CD 7E 57      [17] 5620 	call	_drawWorld
   5DA3 F1            [10] 5621 	pop	af
                           5622 ;src/includes/game.h:183: for(i=0; i<5000; i++) {}
   5DA4                    5623 00210$:
   5DA4 DD 36 F5 88   [19] 5624 	ld	-11 (ix),#0x88
   5DA8 DD 36 F6 13   [19] 5625 	ld	-10 (ix),#0x13
   5DAC                    5626 00186$:
   5DAC DD 6E F5      [19] 5627 	ld	l,-11 (ix)
   5DAF DD 66 F6      [19] 5628 	ld	h,-10 (ix)
   5DB2 2B            [ 6] 5629 	dec	hl
   5DB3 DD 75 F5      [19] 5630 	ld	-11 (ix),l
   5DB6 DD 74 F6      [19] 5631 	ld	-10 (ix), h
   5DB9 7C            [ 4] 5632 	ld	a, h
   5DBA DD B6 F5      [19] 5633 	or	a,-11 (ix)
   5DBD 20 ED         [12] 5634 	jr	NZ,00186$
   5DBF C3 20 61      [10] 5635 	jp	00180$
   5DC2                    5636 00179$:
                           5637 ;src/includes/game.h:186: else if ( cpct_isKeyPressed(Key_CursorDown) )
   5DC2 21 00 04      [10] 5638 	ld	hl,#0x0400
   5DC5 CD D6 62      [17] 5639 	call	_cpct_isKeyPressed
   5DC8 7D            [ 4] 5640 	ld	a,l
   5DC9 B7            [ 4] 5641 	or	a, a
   5DCA CA 4E 5E      [10] 5642 	jp	Z,00176$
                           5643 ;src/includes/game.h:188: drawTile(ulx, uly, xCursor, yCursor);
   5DCD DD 7E FF      [19] 5644 	ld	a,-1 (ix)
   5DD0 F5            [11] 5645 	push	af
   5DD1 33            [ 6] 5646 	inc	sp
   5DD2 DD 7E FD      [19] 5647 	ld	a,-3 (ix)
   5DD5 F5            [11] 5648 	push	af
   5DD6 33            [ 6] 5649 	inc	sp
   5DD7 DD 7E FC      [19] 5650 	ld	a,-4 (ix)
   5DDA F5            [11] 5651 	push	af
   5DDB 33            [ 6] 5652 	inc	sp
   5DDC DD 7E FB      [19] 5653 	ld	a,-5 (ix)
   5DDF F5            [11] 5654 	push	af
   5DE0 33            [ 6] 5655 	inc	sp
   5DE1 CD BD 54      [17] 5656 	call	_drawTile
   5DE4 F1            [10] 5657 	pop	af
   5DE5 F1            [10] 5658 	pop	af
                           5659 ;src/includes/game.h:189: yCursor+=1;
   5DE6 DD 34 F9      [23] 5660 	inc	-7 (ix)
   5DE9 20 03         [12] 5661 	jr	NZ,00388$
   5DEB DD 34 FA      [23] 5662 	inc	-6 (ix)
   5DEE                    5663 00388$:
                           5664 ;src/includes/game.h:190: if(yCursor>NBTILE_H-1)
   5DEE 3E 0B         [ 7] 5665 	ld	a,#0x0B
   5DF0 DD BE F9      [19] 5666 	cp	a, -7 (ix)
   5DF3 3E 00         [ 7] 5667 	ld	a,#0x00
   5DF5 DD 9E FA      [19] 5668 	sbc	a, -6 (ix)
   5DF8 E2 FD 5D      [10] 5669 	jp	PO, 00389$
   5DFB EE 80         [ 7] 5670 	xor	a, #0x80
   5DFD                    5671 00389$:
   5DFD F2 30 5E      [10] 5672 	jp	P,00215$
                           5673 ;src/includes/game.h:192: yCursor=NBTILE_H-1;
   5E00 DD 36 F9 0B   [19] 5674 	ld	-7 (ix),#0x0B
   5E04 DD 36 FA 00   [19] 5675 	ld	-6 (ix),#0x00
                           5676 ;src/includes/game.h:193: if(uly<HEIGHT-NBTILE_H)
   5E08 DD 7E F1      [19] 5677 	ld	a,-15 (ix)
   5E0B D6 24         [ 7] 5678 	sub	a, #0x24
   5E0D DD 7E F2      [19] 5679 	ld	a,-14 (ix)
   5E10 17            [ 4] 5680 	rla
   5E11 3F            [ 4] 5681 	ccf
   5E12 1F            [ 4] 5682 	rra
   5E13 DE 80         [ 7] 5683 	sbc	a, #0x80
   5E15 30 19         [12] 5684 	jr	NC,00215$
                           5685 ;src/includes/game.h:195: uly+=1;
   5E17 DD 34 F1      [23] 5686 	inc	-15 (ix)
   5E1A 20 03         [12] 5687 	jr	NZ,00390$
   5E1C DD 34 F2      [23] 5688 	inc	-14 (ix)
   5E1F                    5689 00390$:
                           5690 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5E1F DD 7E F1      [19] 5691 	ld	a,-15 (ix)
                           5692 ;src/includes/game.h:196: drawWorld(ulx, uly);
   5E22 DD 77 FC      [19] 5693 	ld	-4 (ix), a
   5E25 F5            [11] 5694 	push	af
   5E26 33            [ 6] 5695 	inc	sp
   5E27 DD 7E FB      [19] 5696 	ld	a,-5 (ix)
   5E2A F5            [11] 5697 	push	af
   5E2B 33            [ 6] 5698 	inc	sp
   5E2C CD 7E 57      [17] 5699 	call	_drawWorld
   5E2F F1            [10] 5700 	pop	af
                           5701 ;src/includes/game.h:201: for(i=0; i<5000; i++) {}
   5E30                    5702 00215$:
   5E30 DD 36 F5 88   [19] 5703 	ld	-11 (ix),#0x88
   5E34 DD 36 F6 13   [19] 5704 	ld	-10 (ix),#0x13
   5E38                    5705 00189$:
   5E38 DD 6E F5      [19] 5706 	ld	l,-11 (ix)
   5E3B DD 66 F6      [19] 5707 	ld	h,-10 (ix)
   5E3E 2B            [ 6] 5708 	dec	hl
   5E3F DD 75 F5      [19] 5709 	ld	-11 (ix),l
   5E42 DD 74 F6      [19] 5710 	ld	-10 (ix), h
   5E45 7C            [ 4] 5711 	ld	a, h
   5E46 DD B6 F5      [19] 5712 	or	a,-11 (ix)
   5E49 20 ED         [12] 5713 	jr	NZ,00189$
   5E4B C3 20 61      [10] 5714 	jp	00180$
   5E4E                    5715 00176$:
                           5716 ;src/includes/game.h:204: else if ( cpct_isKeyPressed(Key_CursorLeft) )
   5E4E 21 01 01      [10] 5717 	ld	hl,#0x0101
   5E51 CD D6 62      [17] 5718 	call	_cpct_isKeyPressed
   5E54 7D            [ 4] 5719 	ld	a,l
   5E55 B7            [ 4] 5720 	or	a, a
   5E56 28 6F         [12] 5721 	jr	Z,00173$
                           5722 ;src/includes/game.h:206: drawTile(ulx, uly, xCursor, yCursor);
   5E58 DD 7E FF      [19] 5723 	ld	a,-1 (ix)
   5E5B F5            [11] 5724 	push	af
   5E5C 33            [ 6] 5725 	inc	sp
   5E5D DD 7E FD      [19] 5726 	ld	a,-3 (ix)
   5E60 F5            [11] 5727 	push	af
   5E61 33            [ 6] 5728 	inc	sp
   5E62 DD 7E FC      [19] 5729 	ld	a,-4 (ix)
   5E65 F5            [11] 5730 	push	af
   5E66 33            [ 6] 5731 	inc	sp
   5E67 DD 7E FB      [19] 5732 	ld	a,-5 (ix)
   5E6A F5            [11] 5733 	push	af
   5E6B 33            [ 6] 5734 	inc	sp
   5E6C CD BD 54      [17] 5735 	call	_drawTile
   5E6F F1            [10] 5736 	pop	af
   5E70 F1            [10] 5737 	pop	af
                           5738 ;src/includes/game.h:207: xCursor-=1;
   5E71 DD 6E F7      [19] 5739 	ld	l,-9 (ix)
   5E74 DD 66 F8      [19] 5740 	ld	h,-8 (ix)
   5E77 2B            [ 6] 5741 	dec	hl
   5E78 DD 75 F7      [19] 5742 	ld	-9 (ix),l
   5E7B DD 74 F8      [19] 5743 	ld	-8 (ix),h
                           5744 ;src/includes/game.h:208: if(xCursor<0)
   5E7E DD CB F8 7E   [20] 5745 	bit	7, -8 (ix)
   5E82 28 38         [12] 5746 	jr	Z,00220$
                           5747 ;src/includes/game.h:210: xCursor=0;
   5E84 DD 36 F7 00   [19] 5748 	ld	-9 (ix),#0x00
   5E88 DD 36 F8 00   [19] 5749 	ld	-8 (ix),#0x00
                           5750 ;src/includes/game.h:211: if(ulx>0)
   5E8C AF            [ 4] 5751 	xor	a, a
   5E8D DD BE F3      [19] 5752 	cp	a, -13 (ix)
   5E90 DD 9E F4      [19] 5753 	sbc	a, -12 (ix)
   5E93 E2 98 5E      [10] 5754 	jp	PO, 00391$
   5E96 EE 80         [ 7] 5755 	xor	a, #0x80
   5E98                    5756 00391$:
   5E98 F2 BC 5E      [10] 5757 	jp	P,00220$
                           5758 ;src/includes/game.h:213: ulx-=1;
   5E9B DD 6E F3      [19] 5759 	ld	l,-13 (ix)
   5E9E DD 66 F4      [19] 5760 	ld	h,-12 (ix)
   5EA1 2B            [ 6] 5761 	dec	hl
   5EA2 DD 75 F3      [19] 5762 	ld	-13 (ix),l
   5EA5 DD 74 F4      [19] 5763 	ld	-12 (ix),h
                           5764 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5EA8 DD 7E F3      [19] 5765 	ld	a,-13 (ix)
   5EAB DD 77 FB      [19] 5766 	ld	-5 (ix),a
                           5767 ;src/includes/game.h:214: drawWorld(ulx, uly);
   5EAE DD 7E FC      [19] 5768 	ld	a,-4 (ix)
   5EB1 F5            [11] 5769 	push	af
   5EB2 33            [ 6] 5770 	inc	sp
   5EB3 DD 7E FB      [19] 5771 	ld	a,-5 (ix)
   5EB6 F5            [11] 5772 	push	af
   5EB7 33            [ 6] 5773 	inc	sp
   5EB8 CD 7E 57      [17] 5774 	call	_drawWorld
   5EBB F1            [10] 5775 	pop	af
                           5776 ;src/includes/game.h:219: for(i=0; i<14000; i++) {}
   5EBC                    5777 00220$:
   5EBC 21 B0 36      [10] 5778 	ld	hl,#0x36B0
   5EBF                    5779 00192$:
   5EBF 2B            [ 6] 5780 	dec	hl
   5EC0 7C            [ 4] 5781 	ld	a,h
   5EC1 B5            [ 4] 5782 	or	a,l
   5EC2 20 FB         [12] 5783 	jr	NZ,00192$
   5EC4 C3 20 61      [10] 5784 	jp	00180$
   5EC7                    5785 00173$:
                           5786 ;src/includes/game.h:222: else if ( cpct_isKeyPressed(Key_CursorRight) )
   5EC7 21 00 02      [10] 5787 	ld	hl,#0x0200
   5ECA CD D6 62      [17] 5788 	call	_cpct_isKeyPressed
   5ECD 7D            [ 4] 5789 	ld	a,l
   5ECE B7            [ 4] 5790 	or	a, a
   5ECF 28 71         [12] 5791 	jr	Z,00170$
                           5792 ;src/includes/game.h:224: drawTile(ulx, uly, xCursor, yCursor);
   5ED1 DD 7E FF      [19] 5793 	ld	a,-1 (ix)
   5ED4 F5            [11] 5794 	push	af
   5ED5 33            [ 6] 5795 	inc	sp
   5ED6 DD 7E FD      [19] 5796 	ld	a,-3 (ix)
   5ED9 F5            [11] 5797 	push	af
   5EDA 33            [ 6] 5798 	inc	sp
   5EDB DD 7E FC      [19] 5799 	ld	a,-4 (ix)
   5EDE F5            [11] 5800 	push	af
   5EDF 33            [ 6] 5801 	inc	sp
   5EE0 DD 7E FB      [19] 5802 	ld	a,-5 (ix)
   5EE3 F5            [11] 5803 	push	af
   5EE4 33            [ 6] 5804 	inc	sp
   5EE5 CD BD 54      [17] 5805 	call	_drawTile
   5EE8 F1            [10] 5806 	pop	af
   5EE9 F1            [10] 5807 	pop	af
                           5808 ;src/includes/game.h:225: xCursor+=1;
   5EEA DD 34 F7      [23] 5809 	inc	-9 (ix)
   5EED 20 03         [12] 5810 	jr	NZ,00392$
   5EEF DD 34 F8      [23] 5811 	inc	-8 (ix)
   5EF2                    5812 00392$:
                           5813 ;src/includes/game.h:226: if(xCursor>NBTILE_W-1)
   5EF2 3E 13         [ 7] 5814 	ld	a,#0x13
   5EF4 DD BE F7      [19] 5815 	cp	a, -9 (ix)
   5EF7 3E 00         [ 7] 5816 	ld	a,#0x00
   5EF9 DD 9E F8      [19] 5817 	sbc	a, -8 (ix)
   5EFC E2 01 5F      [10] 5818 	jp	PO, 00393$
   5EFF EE 80         [ 7] 5819 	xor	a, #0x80
   5F01                    5820 00393$:
   5F01 F2 37 5F      [10] 5821 	jp	P,00225$
                           5822 ;src/includes/game.h:228: xCursor=NBTILE_W-1;
   5F04 DD 36 F7 13   [19] 5823 	ld	-9 (ix),#0x13
   5F08 DD 36 F8 00   [19] 5824 	ld	-8 (ix),#0x00
                           5825 ;src/includes/game.h:229: if(ulx<WIDTH-NBTILE_W)
   5F0C DD 7E F3      [19] 5826 	ld	a,-13 (ix)
   5F0F D6 3C         [ 7] 5827 	sub	a, #0x3C
   5F11 DD 7E F4      [19] 5828 	ld	a,-12 (ix)
   5F14 17            [ 4] 5829 	rla
   5F15 3F            [ 4] 5830 	ccf
   5F16 1F            [ 4] 5831 	rra
   5F17 DE 80         [ 7] 5832 	sbc	a, #0x80
   5F19 30 1C         [12] 5833 	jr	NC,00225$
                           5834 ;src/includes/game.h:231: ulx+=1;
   5F1B DD 34 F3      [23] 5835 	inc	-13 (ix)
   5F1E 20 03         [12] 5836 	jr	NZ,00394$
   5F20 DD 34 F4      [23] 5837 	inc	-12 (ix)
   5F23                    5838 00394$:
                           5839 ;src/includes/game.h:165: drawTile(ulx, uly, xCursor, yCursor);
   5F23 DD 7E F3      [19] 5840 	ld	a,-13 (ix)
   5F26 DD 77 FB      [19] 5841 	ld	-5 (ix),a
                           5842 ;src/includes/game.h:232: drawWorld(ulx, uly);
   5F29 DD 7E FC      [19] 5843 	ld	a,-4 (ix)
   5F2C F5            [11] 5844 	push	af
   5F2D 33            [ 6] 5845 	inc	sp
   5F2E DD 7E FB      [19] 5846 	ld	a,-5 (ix)
   5F31 F5            [11] 5847 	push	af
   5F32 33            [ 6] 5848 	inc	sp
   5F33 CD 7E 57      [17] 5849 	call	_drawWorld
   5F36 F1            [10] 5850 	pop	af
                           5851 ;src/includes/game.h:237: for(i=0; i<14000; i++) {}
   5F37                    5852 00225$:
   5F37 21 B0 36      [10] 5853 	ld	hl,#0x36B0
   5F3A                    5854 00195$:
   5F3A 2B            [ 6] 5855 	dec	hl
   5F3B 7C            [ 4] 5856 	ld	a,h
   5F3C B5            [ 4] 5857 	or	a,l
   5F3D 20 FB         [12] 5858 	jr	NZ,00195$
   5F3F C3 20 61      [10] 5859 	jp	00180$
   5F42                    5860 00170$:
                           5861 ;src/includes/game.h:241: else if ( cpct_isKeyPressed(Key_Space) )
   5F42 21 05 80      [10] 5862 	ld	hl,#0x8005
   5F45 CD D6 62      [17] 5863 	call	_cpct_isKeyPressed
   5F48 7D            [ 4] 5864 	ld	a,l
   5F49 B7            [ 4] 5865 	or	a, a
   5F4A CA C8 5F      [10] 5866 	jp	Z,00167$
                           5867 ;src/includes/game.h:243: if(CURSOR_MODE==T_SSNS)
   5F4D 3A 0C 76      [13] 5868 	ld	a,(#_CURSOR_MODE + 0)
   5F50 3D            [ 4] 5869 	dec	a
   5F51 20 07         [12] 5870 	jr	NZ,00143$
                           5871 ;src/includes/game.h:244: CURSOR_MODE=T_SSEW;
   5F53 21 0C 76      [10] 5872 	ld	hl,#_CURSOR_MODE + 0
   5F56 36 02         [10] 5873 	ld	(hl), #0x02
   5F58 18 63         [12] 5874 	jr	00237$
   5F5A                    5875 00143$:
                           5876 ;src/includes/game.h:245: else if(CURSOR_MODE==T_SSEW)
   5F5A 3A 0C 76      [13] 5877 	ld	a,(#_CURSOR_MODE + 0)
   5F5D D6 02         [ 7] 5878 	sub	a, #0x02
   5F5F 20 07         [12] 5879 	jr	NZ,00140$
                           5880 ;src/includes/game.h:246: CURSOR_MODE=T_SSNS;
   5F61 21 0C 76      [10] 5881 	ld	hl,#_CURSOR_MODE + 0
   5F64 36 01         [10] 5882 	ld	(hl), #0x01
   5F66 18 55         [12] 5883 	jr	00237$
   5F68                    5884 00140$:
                           5885 ;src/includes/game.h:247: else if(CURSOR_MODE==T_SMNS)
   5F68 3A 0C 76      [13] 5886 	ld	a,(#_CURSOR_MODE + 0)
   5F6B D6 03         [ 7] 5887 	sub	a, #0x03
   5F6D 20 07         [12] 5888 	jr	NZ,00137$
                           5889 ;src/includes/game.h:248: CURSOR_MODE=T_SMEW;
   5F6F 21 0C 76      [10] 5890 	ld	hl,#_CURSOR_MODE + 0
   5F72 36 04         [10] 5891 	ld	(hl), #0x04
   5F74 18 47         [12] 5892 	jr	00237$
   5F76                    5893 00137$:
                           5894 ;src/includes/game.h:249: else if(CURSOR_MODE==T_SMEW)
   5F76 3A 0C 76      [13] 5895 	ld	a,(#_CURSOR_MODE + 0)
   5F79 D6 04         [ 7] 5896 	sub	a, #0x04
   5F7B 20 07         [12] 5897 	jr	NZ,00134$
                           5898 ;src/includes/game.h:250: CURSOR_MODE=T_SMNS;
   5F7D 21 0C 76      [10] 5899 	ld	hl,#_CURSOR_MODE + 0
   5F80 36 03         [10] 5900 	ld	(hl), #0x03
   5F82 18 39         [12] 5901 	jr	00237$
   5F84                    5902 00134$:
                           5903 ;src/includes/game.h:251: else if(CURSOR_MODE==T_SLNS)
   5F84 3A 0C 76      [13] 5904 	ld	a,(#_CURSOR_MODE + 0)
   5F87 D6 05         [ 7] 5905 	sub	a, #0x05
   5F89 20 07         [12] 5906 	jr	NZ,00131$
                           5907 ;src/includes/game.h:252: CURSOR_MODE=T_SLEW;
   5F8B 21 0C 76      [10] 5908 	ld	hl,#_CURSOR_MODE + 0
   5F8E 36 06         [10] 5909 	ld	(hl), #0x06
   5F90 18 2B         [12] 5910 	jr	00237$
   5F92                    5911 00131$:
                           5912 ;src/includes/game.h:253: else if(CURSOR_MODE==T_SLEW)
   5F92 3A 0C 76      [13] 5913 	ld	a,(#_CURSOR_MODE + 0)
   5F95 D6 06         [ 7] 5914 	sub	a, #0x06
   5F97 20 07         [12] 5915 	jr	NZ,00128$
                           5916 ;src/includes/game.h:254: CURSOR_MODE=T_SLNS;
   5F99 21 0C 76      [10] 5917 	ld	hl,#_CURSOR_MODE + 0
   5F9C 36 05         [10] 5918 	ld	(hl), #0x05
   5F9E 18 1D         [12] 5919 	jr	00237$
   5FA0                    5920 00128$:
                           5921 ;src/includes/game.h:255: else if(CURSOR_MODE>=T_REW && CURSOR_MODE<T_RNSW)
   5FA0 3A 0C 76      [13] 5922 	ld	a,(#_CURSOR_MODE + 0)
   5FA3 FE 07         [ 7] 5923 	cp	a,#0x07
   5FA5 38 0A         [12] 5924 	jr	C,00124$
   5FA7 D6 10         [ 7] 5925 	sub	a, #0x10
   5FA9 30 06         [12] 5926 	jr	NC,00124$
                           5927 ;src/includes/game.h:256: CURSOR_MODE+=1;
   5FAB 21 0C 76      [10] 5928 	ld	hl, #_CURSOR_MODE+0
   5FAE 34            [11] 5929 	inc	(hl)
   5FAF 18 0C         [12] 5930 	jr	00237$
   5FB1                    5931 00124$:
                           5932 ;src/includes/game.h:257: else if(CURSOR_MODE==T_RNSW)
   5FB1 3A 0C 76      [13] 5933 	ld	a,(#_CURSOR_MODE + 0)
   5FB4 D6 10         [ 7] 5934 	sub	a, #0x10
   5FB6 20 05         [12] 5935 	jr	NZ,00237$
                           5936 ;src/includes/game.h:258: CURSOR_MODE=T_REW;
   5FB8 21 0C 76      [10] 5937 	ld	hl,#_CURSOR_MODE + 0
   5FBB 36 07         [10] 5938 	ld	(hl), #0x07
                           5939 ;src/includes/game.h:260: for(i=0; i<14000; i++) {}
   5FBD                    5940 00237$:
   5FBD 21 B0 36      [10] 5941 	ld	hl,#0x36B0
   5FC0                    5942 00198$:
   5FC0 2B            [ 6] 5943 	dec	hl
   5FC1 7C            [ 4] 5944 	ld	a,h
   5FC2 B5            [ 4] 5945 	or	a,l
   5FC3 20 FB         [12] 5946 	jr	NZ,00198$
   5FC5 C3 20 61      [10] 5947 	jp	00180$
   5FC8                    5948 00167$:
                           5949 ;src/includes/game.h:263: else if ( cpct_isKeyPressed(Key_Esc) )
   5FC8 21 08 04      [10] 5950 	ld	hl,#0x0408
   5FCB CD D6 62      [17] 5951 	call	_cpct_isKeyPressed
   5FCE 7D            [ 4] 5952 	ld	a,l
   5FCF B7            [ 4] 5953 	or	a, a
   5FD0 CA 67 60      [10] 5954 	jp	Z,00164$
                           5955 ;src/includes/game.h:266: if(CURSOR_MODE==NONE)
   5FD3 3A 0C 76      [13] 5956 	ld	a,(#_CURSOR_MODE + 0)
   5FD6 B7            [ 4] 5957 	or	a, a
   5FD7 20 62         [12] 5958 	jr	NZ,00150$
                           5959 ;src/includes/game.h:269: const char *txtWindowQuit[] = { 
   5FD9 21 00 00      [10] 5960 	ld	hl,#0x0000
   5FDC 39            [11] 5961 	add	hl,sp
   5FDD 5D            [ 4] 5962 	ld	e,l
   5FDE 54            [ 4] 5963 	ld	d,h
   5FDF 36 4C         [10] 5964 	ld	(hl),#<(___str_34)
   5FE1 23            [ 6] 5965 	inc	hl
   5FE2 36 61         [10] 5966 	ld	(hl),#>(___str_34)
   5FE4 6B            [ 4] 5967 	ld	l, e
   5FE5 62            [ 4] 5968 	ld	h, d
   5FE6 23            [ 6] 5969 	inc	hl
   5FE7 23            [ 6] 5970 	inc	hl
   5FE8 36 5A         [10] 5971 	ld	(hl),#<(___str_35)
   5FEA 23            [ 6] 5972 	inc	hl
   5FEB 36 61         [10] 5973 	ld	(hl),#>(___str_35)
   5FED 21 04 00      [10] 5974 	ld	hl,#0x0004
   5FF0 19            [11] 5975 	add	hl,de
   5FF1 36 5B         [10] 5976 	ld	(hl),#<(___str_36)
   5FF3 23            [ 6] 5977 	inc	hl
   5FF4 36 61         [10] 5978 	ld	(hl),#>(___str_36)
                           5979 ;src/includes/game.h:275: putM2();
   5FF6 D5            [11] 5980 	push	de
   5FF7 CD BD 46      [17] 5981 	call	_putM2
   5FFA D1            [10] 5982 	pop	de
                           5983 ;src/includes/game.h:276: if(	drawWindow(txtWindowQuit,3,1) == 1)
   5FFB 21 03 01      [10] 5984 	ld	hl,#0x0103
   5FFE E5            [11] 5985 	push	hl
   5FFF D5            [11] 5986 	push	de
   6000 CD C1 4B      [17] 5987 	call	_drawWindow
   6003 F1            [10] 5988 	pop	af
   6004 F1            [10] 5989 	pop	af
   6005 2D            [ 4] 5990 	dec	l
   6006 20 06         [12] 5991 	jr	NZ,00147$
                           5992 ;src/includes/game.h:277: exit=1;
   6008 DD 36 F0 01   [19] 5993 	ld	-16 (ix),#0x01
   600C 18 4E         [12] 5994 	jr	00242$
   600E                    5995 00147$:
                           5996 ;src/includes/game.h:280: putM1();
   600E CD A9 46      [17] 5997 	call	_putM1
                           5998 ;src/includes/game.h:281: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   6011 21 00 00      [10] 5999 	ld	hl,#0x0000
   6014 E5            [11] 6000 	push	hl
   6015 2E 00         [ 7] 6001 	ld	l, #0x00
   6017 E5            [11] 6002 	push	hl
   6018 CD 12 65      [17] 6003 	call	_cpct_px2byteM1
   601B F1            [10] 6004 	pop	af
   601C F1            [10] 6005 	pop	af
   601D 65            [ 4] 6006 	ld	h,l
   601E 01 00 40      [10] 6007 	ld	bc,#0x4000
   6021 C5            [11] 6008 	push	bc
   6022 E5            [11] 6009 	push	hl
   6023 33            [ 6] 6010 	inc	sp
   6024 21 00 C0      [10] 6011 	ld	hl,#0xC000
   6027 E5            [11] 6012 	push	hl
   6028 CD 04 65      [17] 6013 	call	_cpct_memset
                           6014 ;src/includes/game.h:282: drawWorld(ulx, uly);
   602B DD 7E FC      [19] 6015 	ld	a,-4 (ix)
   602E F5            [11] 6016 	push	af
   602F 33            [ 6] 6017 	inc	sp
   6030 DD 7E FB      [19] 6018 	ld	a,-5 (ix)
   6033 F5            [11] 6019 	push	af
   6034 33            [ 6] 6020 	inc	sp
   6035 CD 7E 57      [17] 6021 	call	_drawWorld
   6038 F1            [10] 6022 	pop	af
   6039 18 21         [12] 6023 	jr	00242$
   603B                    6024 00150$:
                           6025 ;src/includes/game.h:287: CURSOR_MODE=NONE;
   603B FD 21 0C 76   [14] 6026 	ld	iy,#_CURSOR_MODE
   603F FD 36 00 00   [19] 6027 	ld	0 (iy),#0x00
                           6028 ;src/includes/game.h:288: drawTile(ulx, uly, xCursor, yCursor);
   6043 DD 7E FF      [19] 6029 	ld	a,-1 (ix)
   6046 F5            [11] 6030 	push	af
   6047 33            [ 6] 6031 	inc	sp
   6048 DD 7E FD      [19] 6032 	ld	a,-3 (ix)
   604B F5            [11] 6033 	push	af
   604C 33            [ 6] 6034 	inc	sp
   604D DD 7E FC      [19] 6035 	ld	a,-4 (ix)
   6050 F5            [11] 6036 	push	af
   6051 33            [ 6] 6037 	inc	sp
   6052 DD 7E FB      [19] 6038 	ld	a,-5 (ix)
   6055 F5            [11] 6039 	push	af
   6056 33            [ 6] 6040 	inc	sp
   6057 CD BD 54      [17] 6041 	call	_drawTile
   605A F1            [10] 6042 	pop	af
   605B F1            [10] 6043 	pop	af
                           6044 ;src/includes/game.h:292: for(i=0; i<14000; i++) {}
   605C                    6045 00242$:
   605C 01 B0 36      [10] 6046 	ld	bc,#0x36B0
   605F                    6047 00201$:
   605F 0B            [ 6] 6048 	dec	bc
   6060 78            [ 4] 6049 	ld	a,b
   6061 B1            [ 4] 6050 	or	a,c
   6062 20 FB         [12] 6051 	jr	NZ,00201$
   6064 C3 20 61      [10] 6052 	jp	00180$
   6067                    6053 00164$:
                           6054 ;src/includes/game.h:295: else if ( cpct_isKeyPressed(Key_Return) )
   6067 21 02 04      [10] 6055 	ld	hl,#0x0402
   606A CD D6 62      [17] 6056 	call	_cpct_isKeyPressed
   606D 7D            [ 4] 6057 	ld	a,l
   606E B7            [ 4] 6058 	or	a, a
   606F CA 20 61      [10] 6059 	jp	Z,00180$
                           6060 ;src/includes/game.h:298: if(CURSOR_MODE==NONE)
   6072 3A 0C 76      [13] 6061 	ld	a,(#_CURSOR_MODE + 0)
   6075 B7            [ 4] 6062 	or	a, a
   6076 20 42         [12] 6063 	jr	NZ,00158$
                           6064 ;src/includes/game.h:300: menuTile(ulx+xCursor, uly+yCursor);
   6078 DD 7E F1      [19] 6065 	ld	a, -15 (ix)
   607B DD 6E F9      [19] 6066 	ld	l, -7 (ix)
   607E 85            [ 4] 6067 	add	a, l
   607F 67            [ 4] 6068 	ld	h,a
   6080 DD 6E F3      [19] 6069 	ld	l,-13 (ix)
   6083 DD 56 F7      [19] 6070 	ld	d,-9 (ix)
   6086 7D            [ 4] 6071 	ld	a,l
   6087 82            [ 4] 6072 	add	a, d
   6088 E5            [11] 6073 	push	hl
   6089 33            [ 6] 6074 	inc	sp
   608A F5            [11] 6075 	push	af
   608B 33            [ 6] 6076 	inc	sp
   608C CD E9 5A      [17] 6077 	call	_menuTile
   608F F1            [10] 6078 	pop	af
                           6079 ;src/includes/game.h:301: cpct_clearScreen(cpct_px2byteM1(0,0,0,0));	
   6090 21 00 00      [10] 6080 	ld	hl,#0x0000
   6093 E5            [11] 6081 	push	hl
   6094 2E 00         [ 7] 6082 	ld	l, #0x00
   6096 E5            [11] 6083 	push	hl
   6097 CD 12 65      [17] 6084 	call	_cpct_px2byteM1
   609A F1            [10] 6085 	pop	af
   609B F1            [10] 6086 	pop	af
   609C 65            [ 4] 6087 	ld	h,l
   609D 01 00 40      [10] 6088 	ld	bc,#0x4000
   60A0 C5            [11] 6089 	push	bc
   60A1 E5            [11] 6090 	push	hl
   60A2 33            [ 6] 6091 	inc	sp
   60A3 21 00 C0      [10] 6092 	ld	hl,#0xC000
   60A6 E5            [11] 6093 	push	hl
   60A7 CD 04 65      [17] 6094 	call	_cpct_memset
                           6095 ;src/includes/game.h:302: drawWorld(ulx, uly);
   60AA DD 7E FC      [19] 6096 	ld	a,-4 (ix)
   60AD F5            [11] 6097 	push	af
   60AE 33            [ 6] 6098 	inc	sp
   60AF DD 7E FB      [19] 6099 	ld	a,-5 (ix)
   60B2 F5            [11] 6100 	push	af
   60B3 33            [ 6] 6101 	inc	sp
   60B4 CD 7E 57      [17] 6102 	call	_drawWorld
   60B7 F1            [10] 6103 	pop	af
   60B8 18 4B         [12] 6104 	jr	00248$
   60BA                    6105 00158$:
                           6106 ;src/includes/game.h:305: else if(CURSOR_MODE>=T_SSNS)
   60BA 3A 0C 76      [13] 6107 	ld	a,(#_CURSOR_MODE + 0)
   60BD D6 01         [ 7] 6108 	sub	a, #0x01
   60BF 38 44         [12] 6109 	jr	C,00248$
                           6110 ;src/includes/game.h:307: p_world[ulx+xCursor+(uly+yCursor)*WIDTH]=CURSOR_MODE+9;
   60C1 DD 7E F3      [19] 6111 	ld	a,-13 (ix)
   60C4 DD 86 F7      [19] 6112 	add	a, -9 (ix)
   60C7 5F            [ 4] 6113 	ld	e,a
   60C8 DD 7E F4      [19] 6114 	ld	a,-12 (ix)
   60CB DD 8E F8      [19] 6115 	adc	a, -8 (ix)
   60CE 57            [ 4] 6116 	ld	d,a
   60CF DD 7E F1      [19] 6117 	ld	a,-15 (ix)
   60D2 DD 86 F9      [19] 6118 	add	a, -7 (ix)
   60D5 6F            [ 4] 6119 	ld	l,a
   60D6 DD 7E F2      [19] 6120 	ld	a,-14 (ix)
   60D9 DD 8E FA      [19] 6121 	adc	a, -6 (ix)
   60DC 67            [ 4] 6122 	ld	h,a
   60DD 4D            [ 4] 6123 	ld	c, l
   60DE 44            [ 4] 6124 	ld	b, h
   60DF 29            [11] 6125 	add	hl, hl
   60E0 29            [11] 6126 	add	hl, hl
   60E1 09            [11] 6127 	add	hl, bc
   60E2 29            [11] 6128 	add	hl, hl
   60E3 29            [11] 6129 	add	hl, hl
   60E4 29            [11] 6130 	add	hl, hl
   60E5 29            [11] 6131 	add	hl, hl
   60E6 19            [11] 6132 	add	hl,de
   60E7 3E 0C         [ 7] 6133 	ld	a,#<(_p_world)
   60E9 85            [ 4] 6134 	add	a, l
   60EA 5F            [ 4] 6135 	ld	e,a
   60EB 3E 67         [ 7] 6136 	ld	a,#>(_p_world)
   60ED 8C            [ 4] 6137 	adc	a, h
   60EE 57            [ 4] 6138 	ld	d,a
   60EF 3A 0C 76      [13] 6139 	ld	a,(#_CURSOR_MODE + 0)
   60F2 C6 09         [ 7] 6140 	add	a, #0x09
   60F4 12            [ 7] 6141 	ld	(de),a
                           6142 ;src/includes/game.h:310: if(CURSOR_MODE<=T_SLEW)
   60F5 3E 06         [ 7] 6143 	ld	a,#0x06
   60F7 FD 21 0C 76   [14] 6144 	ld	iy,#_CURSOR_MODE
   60FB FD 96 00      [19] 6145 	sub	a, 0 (iy)
   60FE 38 05         [12] 6146 	jr	C,00248$
                           6147 ;src/includes/game.h:311: CURSOR_MODE=NONE;
   6100 21 0C 76      [10] 6148 	ld	hl,#_CURSOR_MODE + 0
   6103 36 00         [10] 6149 	ld	(hl), #0x00
                           6150 ;src/includes/game.h:315: for(i=0; i<14000; i++) {}
   6105                    6151 00248$:
   6105 DD 36 F5 B0   [19] 6152 	ld	-11 (ix),#0xB0
   6109 DD 36 F6 36   [19] 6153 	ld	-10 (ix),#0x36
   610D                    6154 00204$:
   610D DD 6E F5      [19] 6155 	ld	l,-11 (ix)
   6110 DD 66 F6      [19] 6156 	ld	h,-10 (ix)
   6113 2B            [ 6] 6157 	dec	hl
   6114 DD 75 F5      [19] 6158 	ld	-11 (ix),l
   6117 DD 74 F6      [19] 6159 	ld	-10 (ix), h
   611A 7C            [ 4] 6160 	ld	a, h
   611B DD B6 F5      [19] 6161 	or	a,-11 (ix)
   611E 20 ED         [12] 6162 	jr	NZ,00204$
   6120                    6163 00180$:
                           6164 ;src/includes/game.h:319: drawCursor(xCursor, yCursor, 0);
   6120 DD 56 F9      [19] 6165 	ld	d,-7 (ix)
   6123 DD 46 F7      [19] 6166 	ld	b,-9 (ix)
   6126 AF            [ 4] 6167 	xor	a, a
   6127 F5            [11] 6168 	push	af
   6128 33            [ 6] 6169 	inc	sp
   6129 D5            [11] 6170 	push	de
   612A 33            [ 6] 6171 	inc	sp
   612B C5            [11] 6172 	push	bc
   612C 33            [ 6] 6173 	inc	sp
   612D CD 5E 4D      [17] 6174 	call	_drawCursor
   6130 F1            [10] 6175 	pop	af
   6131 33            [ 6] 6176 	inc	sp
                           6177 ;src/includes/game.h:320: drawScrolls(ulx, uly);
   6132 DD 7E FC      [19] 6178 	ld	a,-4 (ix)
   6135 F5            [11] 6179 	push	af
   6136 33            [ 6] 6180 	inc	sp
   6137 DD 7E FB      [19] 6181 	ld	a,-5 (ix)
   613A F5            [11] 6182 	push	af
   613B 33            [ 6] 6183 	inc	sp
   613C CD E5 56      [17] 6184 	call	_drawScrolls
   613F F1            [10] 6185 	pop	af
                           6186 ;src/includes/game.h:322: while(!exit);
   6140 DD 7E F0      [19] 6187 	ld	a,-16 (ix)
   6143 B7            [ 4] 6188 	or	a, a
   6144 CA 18 5D      [10] 6189 	jp	Z,00181$
   6147 DD F9         [10] 6190 	ld	sp, ix
   6149 DD E1         [14] 6191 	pop	ix
   614B C9            [10] 6192 	ret
   614C                    6193 ___str_34:
   614C 52 65 61 6C 6C 79  6194 	.ascii "Really quit ?"
        20 71 75 69 74 20
        3F
   6159 00                 6195 	.db 0x00
   615A                    6196 ___str_35:
   615A 00                 6197 	.db 0x00
   615B                    6198 ___str_36:
   615B 50 72 65 73 73 20  6199 	.ascii "Press Return to quit or Esc to resume"
        52 65 74 75 72 6E
        20 74 6F 20 71 75
        69 74 20 6F 72 20
        45 73 63 20 74 6F
        20 72 65 73 75 6D
        65
   6180 00                 6200 	.db 0x00
   6181                    6201 ___str_37:
   6181 47 65 6E 65 72 61  6202 	.ascii "Generating world..."
        74 69 6E 67 20 77
        6F 72 6C 64 2E 2E
        2E
   6194 00                 6203 	.db 0x00
                           6204 ;src/main.c:17: void drawTrain() 
                           6205 ;	---------------------------------
                           6206 ; Function drawTrain
                           6207 ; ---------------------------------
   6195                    6208 _drawTrain::
                           6209 ;src/main.c:55: }
   6195 C9            [10] 6210 	ret
                           6211 ;src/main.c:58: void main(void)
                           6212 ;	---------------------------------
                           6213 ; Function main
                           6214 ; ---------------------------------
   6196                    6215 _main::
   6196 DD E5         [15] 6216 	push	ix
   6198 DD 21 00 00   [14] 6217 	ld	ix,#0
   619C DD 39         [15] 6218 	add	ix,sp
   619E 21 EE FF      [10] 6219 	ld	hl,#-18
   61A1 39            [11] 6220 	add	hl,sp
   61A2 F9            [ 6] 6221 	ld	sp,hl
                           6222 ;src/main.c:63: const char *menuMain[] = { 
   61A3 21 08 00      [10] 6223 	ld	hl,#0x0008
   61A6 39            [11] 6224 	add	hl,sp
   61A7 5D            [ 4] 6225 	ld	e,l
   61A8 54            [ 4] 6226 	ld	d,h
   61A9 36 84         [10] 6227 	ld	(hl),#<(___str_38)
   61AB 23            [ 6] 6228 	inc	hl
   61AC 36 62         [10] 6229 	ld	(hl),#>(___str_38)
   61AE 6B            [ 4] 6230 	ld	l, e
   61AF 62            [ 4] 6231 	ld	h, d
   61B0 23            [ 6] 6232 	inc	hl
   61B1 23            [ 6] 6233 	inc	hl
   61B2 01 8D 62      [10] 6234 	ld	bc,#___str_39+0
   61B5 71            [ 7] 6235 	ld	(hl),c
   61B6 23            [ 6] 6236 	inc	hl
   61B7 70            [ 7] 6237 	ld	(hl),b
   61B8 21 04 00      [10] 6238 	ld	hl,#0x0004
   61BB 19            [11] 6239 	add	hl,de
   61BC 01 95 62      [10] 6240 	ld	bc,#___str_40+0
   61BF 71            [ 7] 6241 	ld	(hl),c
   61C0 23            [ 6] 6242 	inc	hl
   61C1 70            [ 7] 6243 	ld	(hl),b
                           6244 ;src/main.c:69: const char *windowCredit[] = { 
   61C2 21 02 00      [10] 6245 	ld	hl,#0x0002
   61C5 39            [11] 6246 	add	hl,sp
   61C6 DD 75 FC      [19] 6247 	ld	-4 (ix),l
   61C9 DD 74 FD      [19] 6248 	ld	-3 (ix),h
   61CC DD 6E FC      [19] 6249 	ld	l,-4 (ix)
   61CF DD 66 FD      [19] 6250 	ld	h,-3 (ix)
   61D2 36 9A         [10] 6251 	ld	(hl),#<(___str_41)
   61D4 23            [ 6] 6252 	inc	hl
   61D5 36 62         [10] 6253 	ld	(hl),#>(___str_41)
   61D7 DD 6E FC      [19] 6254 	ld	l,-4 (ix)
   61DA DD 66 FD      [19] 6255 	ld	h,-3 (ix)
   61DD 23            [ 6] 6256 	inc	hl
   61DE 23            [ 6] 6257 	inc	hl
   61DF 01 A3 62      [10] 6258 	ld	bc,#___str_42+0
   61E2 71            [ 7] 6259 	ld	(hl),c
   61E3 23            [ 6] 6260 	inc	hl
   61E4 70            [ 7] 6261 	ld	(hl),b
   61E5 DD 7E FC      [19] 6262 	ld	a,-4 (ix)
   61E8 C6 04         [ 7] 6263 	add	a, #0x04
   61EA 6F            [ 4] 6264 	ld	l,a
   61EB DD 7E FD      [19] 6265 	ld	a,-3 (ix)
   61EE CE 00         [ 7] 6266 	adc	a, #0x00
   61F0 67            [ 4] 6267 	ld	h,a
   61F1 01 A4 62      [10] 6268 	ld	bc,#___str_43+0
   61F4 71            [ 7] 6269 	ld	(hl),c
   61F5 23            [ 6] 6270 	inc	hl
   61F6 70            [ 7] 6271 	ld	(hl),b
                           6272 ;src/main.c:75: firmware = cpct_disableFirmware();
   61F7 D5            [11] 6273 	push	de
   61F8 CD 3A 65      [17] 6274 	call	_cpct_disableFirmware
   61FB D1            [10] 6275 	pop	de
   61FC 33            [ 6] 6276 	inc	sp
   61FD 33            [ 6] 6277 	inc	sp
   61FE E5            [11] 6278 	push	hl
                           6279 ;src/main.c:77: cpct_fw2hw(paletteTrains, 16);
   61FF 21 13 40      [10] 6280 	ld	hl,#_paletteTrains
   6202 D5            [11] 6281 	push	de
   6203 01 10 00      [10] 6282 	ld	bc,#0x0010
   6206 C5            [11] 6283 	push	bc
   6207 E5            [11] 6284 	push	hl
   6208 CD 36 64      [17] 6285 	call	_cpct_fw2hw
   620B D1            [10] 6286 	pop	de
                           6287 ;src/main.c:78: cpct_fw2hw(paletteMenusM2, 2);
   620C 21 27 40      [10] 6288 	ld	hl,#_paletteMenusM2
   620F D5            [11] 6289 	push	de
   6210 01 02 00      [10] 6290 	ld	bc,#0x0002
   6213 C5            [11] 6291 	push	bc
   6214 E5            [11] 6292 	push	hl
   6215 CD 36 64      [17] 6293 	call	_cpct_fw2hw
   6218 D1            [10] 6294 	pop	de
                           6295 ;src/main.c:79: cpct_fw2hw(paletteMenusM1, 4);
   6219 21 23 40      [10] 6296 	ld	hl,#_paletteMenusM1
   621C D5            [11] 6297 	push	de
   621D 01 04 00      [10] 6298 	ld	bc,#0x0004
   6220 C5            [11] 6299 	push	bc
   6221 E5            [11] 6300 	push	hl
   6222 CD 36 64      [17] 6301 	call	_cpct_fw2hw
   6225 D1            [10] 6302 	pop	de
                           6303 ;src/main.c:81: cpct_setBorder(paletteTrains[12]);
   6226 3A 1F 40      [13] 6304 	ld	a, (#_paletteTrains + 12)
   6229 D5            [11] 6305 	push	de
   622A 57            [ 4] 6306 	ld	d,a
   622B 1E 10         [ 7] 6307 	ld	e,#0x10
   622D D5            [11] 6308 	push	de
   622E CD E2 62      [17] 6309 	call	_cpct_setPALColour
   6231 CD BD 46      [17] 6310 	call	_putM2
   6234 D1            [10] 6311 	pop	de
                           6312 ;src/main.c:85: do{
   6235 DD 73 FE      [19] 6313 	ld	-2 (ix),e
   6238 DD 72 FF      [19] 6314 	ld	-1 (ix),d
   623B                    6315 00105$:
                           6316 ;src/main.c:86: menuChoice = drawMenu(menuMain,3);
   623B DD 5E FE      [19] 6317 	ld	e,-2 (ix)
   623E DD 56 FF      [19] 6318 	ld	d,-1 (ix)
   6241 3E 03         [ 7] 6319 	ld	a,#0x03
   6243 F5            [11] 6320 	push	af
   6244 33            [ 6] 6321 	inc	sp
   6245 D5            [11] 6322 	push	de
   6246 CD C3 4A      [17] 6323 	call	_drawMenu
   6249 F1            [10] 6324 	pop	af
   624A 33            [ 6] 6325 	inc	sp
   624B 55            [ 4] 6326 	ld	d,l
                           6327 ;src/main.c:88: if(menuChoice==0)
   624C 7A            [ 4] 6328 	ld	a,d
   624D B7            [ 4] 6329 	or	a, a
   624E 20 08         [12] 6330 	jr	NZ,00102$
                           6331 ;src/main.c:90: game();
   6250 D5            [11] 6332 	push	de
   6251 CD 99 5C      [17] 6333 	call	_game
   6254 CD BD 46      [17] 6334 	call	_putM2
   6257 D1            [10] 6335 	pop	de
   6258                    6336 00102$:
                           6337 ;src/main.c:95: if(menuChoice==1)
   6258 7A            [ 4] 6338 	ld	a,d
   6259 3D            [ 4] 6339 	dec	a
   625A 20 12         [12] 6340 	jr	NZ,00106$
                           6341 ;src/main.c:96: drawWindow(windowCredit,3,0);
   625C DD 4E FC      [19] 6342 	ld	c,-4 (ix)
   625F DD 46 FD      [19] 6343 	ld	b,-3 (ix)
   6262 D5            [11] 6344 	push	de
   6263 21 03 00      [10] 6345 	ld	hl,#0x0003
   6266 E5            [11] 6346 	push	hl
   6267 C5            [11] 6347 	push	bc
   6268 CD C1 4B      [17] 6348 	call	_drawWindow
   626B F1            [10] 6349 	pop	af
   626C F1            [10] 6350 	pop	af
   626D D1            [10] 6351 	pop	de
   626E                    6352 00106$:
                           6353 ;src/main.c:98: while(menuChoice!=2);
   626E 7A            [ 4] 6354 	ld	a,d
   626F D6 02         [ 7] 6355 	sub	a, #0x02
   6271 20 C8         [12] 6356 	jr	NZ,00105$
                           6357 ;src/main.c:100: cpct_setVideoMode(0);
   6273 AF            [ 4] 6358 	xor	a, a
   6274 F5            [11] 6359 	push	af
   6275 33            [ 6] 6360 	inc	sp
   6276 CD D6 64      [17] 6361 	call	_cpct_setVideoMode
   6279 33            [ 6] 6362 	inc	sp
                           6363 ;src/main.c:101: cpct_reenableFirmware(firmware);
   627A E1            [10] 6364 	pop	hl
   627B E5            [11] 6365 	push	hl
   627C CD B0 64      [17] 6366 	call	_cpct_reenableFirmware
   627F DD F9         [10] 6367 	ld	sp, ix
   6281 DD E1         [14] 6368 	pop	ix
   6283 C9            [10] 6369 	ret
   6284                    6370 ___str_38:
   6284 4E 65 77 20 67 61  6371 	.ascii "New game"
        6D 65
   628C 00                 6372 	.db 0x00
   628D                    6373 ___str_39:
   628D 43 72 65 64 69 74  6374 	.ascii "Credits"
        73
   6294 00                 6375 	.db 0x00
   6295                    6376 ___str_40:
   6295 51 75 69 74        6377 	.ascii "Quit"
   6299 00                 6378 	.db 0x00
   629A                    6379 ___str_41:
   629A 52 61 69 6C 77 61  6380 	.ascii "Railways"
        79 73
   62A2 00                 6381 	.db 0x00
   62A3                    6382 ___str_42:
   62A3 00                 6383 	.db 0x00
   62A4                    6384 ___str_43:
   62A4 54 72 65 77 64 62  6385 	.ascii "Trewdbal  Productions 2016"
        61 6C 20 20 50 72
        6F 64 75 63 74 69
        6F 6E 73 20 32 30
        31 36
   62BE 00                 6386 	.db 0x00
                           6387 	.area _CODE
                           6388 	.area _INITIALIZER
   760D                    6389 __xinit__CURSOR_MODE:
   760D 00                 6390 	.db #0x00	; 0
                           6391 	.area _CABS (ABS)
